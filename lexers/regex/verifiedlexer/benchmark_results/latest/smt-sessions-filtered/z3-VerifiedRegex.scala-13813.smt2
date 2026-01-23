; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735332 () Bool)

(assert start!735332)

(declare-fun b!7637640 () Bool)

(assert (=> b!7637640 true))

(assert (=> b!7637640 true))

(declare-fun bs!1944466 () Bool)

(declare-fun b!7637648 () Bool)

(assert (= bs!1944466 (and b!7637648 b!7637640)))

(declare-fun lambda!469497 () Int)

(declare-fun lambda!469496 () Int)

(assert (=> bs!1944466 (not (= lambda!469497 lambda!469496))))

(assert (=> b!7637648 true))

(assert (=> b!7637648 true))

(declare-fun b!7637639 () Bool)

(declare-fun e!4540160 () Bool)

(declare-fun tp_is_empty!51197 () Bool)

(assert (=> b!7637639 (= e!4540160 tp_is_empty!51197)))

(declare-fun e!4540162 () Bool)

(declare-fun e!4540165 () Bool)

(assert (=> b!7637640 (= e!4540162 (not e!4540165))))

(declare-fun res!3059180 () Bool)

(assert (=> b!7637640 (=> res!3059180 e!4540165)))

(declare-fun lt!2660191 () Bool)

(assert (=> b!7637640 (= res!3059180 (not lt!2660191))))

(declare-fun Exists!4575 (Int) Bool)

(assert (=> b!7637640 (= lt!2660191 (Exists!4575 lambda!469496))))

(declare-datatypes ((C!41168 0))(
  ( (C!41169 (val!31024 Int)) )
))
(declare-datatypes ((List!73272 0))(
  ( (Nil!73148) (Cons!73148 (h!79596 C!41168) (t!388007 List!73272)) )
))
(declare-datatypes ((tuple2!69400 0))(
  ( (tuple2!69401 (_1!38003 List!73272) (_2!38003 List!73272)) )
))
(declare-datatypes ((Option!17494 0))(
  ( (None!17493) (Some!17493 (v!54628 tuple2!69400)) )
))
(declare-fun lt!2660195 () Option!17494)

(declare-fun isDefined!14110 (Option!17494) Bool)

(assert (=> b!7637640 (= lt!2660191 (isDefined!14110 lt!2660195))))

(declare-datatypes ((Regex!20421 0))(
  ( (ElementMatch!20421 (c!1406884 C!41168)) (Concat!29266 (regOne!41354 Regex!20421) (regTwo!41354 Regex!20421)) (EmptyExpr!20421) (Star!20421 (reg!20750 Regex!20421)) (EmptyLang!20421) (Union!20421 (regOne!41355 Regex!20421) (regTwo!41355 Regex!20421)) )
))
(declare-fun r!14126 () Regex!20421)

(declare-fun s!9605 () List!73272)

(declare-fun findConcatSeparation!3524 (Regex!20421 Regex!20421 List!73272 List!73272 List!73272) Option!17494)

(assert (=> b!7637640 (= lt!2660195 (findConcatSeparation!3524 (reg!20750 r!14126) r!14126 Nil!73148 s!9605 s!9605))))

(declare-datatypes ((Unit!167832 0))(
  ( (Unit!167833) )
))
(declare-fun lt!2660190 () Unit!167832)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3282 (Regex!20421 Regex!20421 List!73272) Unit!167832)

(assert (=> b!7637640 (= lt!2660190 (lemmaFindConcatSeparationEquivalentToExists!3282 (reg!20750 r!14126) r!14126 s!9605))))

(declare-fun b!7637641 () Bool)

(declare-fun e!4540161 () Unit!167832)

(declare-fun Unit!167834 () Unit!167832)

(assert (=> b!7637641 (= e!4540161 Unit!167834)))

(declare-fun lt!2660185 () Unit!167832)

(declare-fun lt!2660192 () tuple2!69400)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!178 (Regex!20421 Regex!20421 List!73272 List!73272 List!73272) Unit!167832)

(assert (=> b!7637641 (= lt!2660185 (lemmaFindSeparationIsDefinedThenConcatMatches!178 (reg!20750 r!14126) r!14126 (_1!38003 lt!2660192) (_2!38003 lt!2660192) s!9605))))

(declare-fun lt!2660189 () List!73272)

(declare-fun ++!17701 (List!73272 List!73272) List!73272)

(assert (=> b!7637641 (= lt!2660189 (++!17701 (_1!38003 lt!2660192) (_2!38003 lt!2660192)))))

(declare-fun matchR!9924 (Regex!20421 List!73272) Bool)

(assert (=> b!7637641 (matchR!9924 (Concat!29266 (reg!20750 r!14126) r!14126) lt!2660189)))

(declare-fun lt!2660198 () Unit!167832)

(declare-fun lemmaStarApp!208 (Regex!20421 List!73272 List!73272) Unit!167832)

(assert (=> b!7637641 (= lt!2660198 (lemmaStarApp!208 (reg!20750 r!14126) (_1!38003 lt!2660192) (_2!38003 lt!2660192)))))

(declare-fun res!3059185 () Bool)

(assert (=> b!7637641 (= res!3059185 (matchR!9924 r!14126 lt!2660189))))

(declare-fun e!4540164 () Bool)

(assert (=> b!7637641 (=> (not res!3059185) (not e!4540164))))

(assert (=> b!7637641 e!4540164))

(declare-fun b!7637642 () Bool)

(declare-fun res!3059183 () Bool)

(assert (=> b!7637642 (=> (not res!3059183) (not e!4540162))))

(declare-fun isEmpty!41781 (List!73272) Bool)

(assert (=> b!7637642 (= res!3059183 (not (isEmpty!41781 s!9605)))))

(declare-fun res!3059181 () Bool)

(assert (=> start!735332 (=> (not res!3059181) (not e!4540162))))

(declare-fun validRegex!10839 (Regex!20421) Bool)

(assert (=> start!735332 (= res!3059181 (validRegex!10839 r!14126))))

(assert (=> start!735332 e!4540162))

(assert (=> start!735332 e!4540160))

(declare-fun e!4540166 () Bool)

(assert (=> start!735332 e!4540166))

(declare-fun b!7637643 () Bool)

(declare-fun Unit!167835 () Unit!167832)

(assert (=> b!7637643 (= e!4540161 Unit!167835)))

(declare-fun b!7637644 () Bool)

(declare-fun res!3059182 () Bool)

(declare-fun e!4540167 () Bool)

(assert (=> b!7637644 (=> res!3059182 e!4540167)))

(declare-fun lt!2660197 () tuple2!69400)

(assert (=> b!7637644 (= res!3059182 (isEmpty!41781 (_1!38003 lt!2660197)))))

(declare-fun b!7637645 () Bool)

(declare-fun tp!2229449 () Bool)

(declare-fun tp!2229445 () Bool)

(assert (=> b!7637645 (= e!4540160 (and tp!2229449 tp!2229445))))

(declare-fun b!7637646 () Bool)

(declare-fun e!4540163 () Bool)

(assert (=> b!7637646 (= e!4540163 e!4540167)))

(declare-fun res!3059184 () Bool)

(assert (=> b!7637646 (=> res!3059184 e!4540167)))

(declare-fun nullable!8934 (Regex!20421) Bool)

(assert (=> b!7637646 (= res!3059184 (nullable!8934 (reg!20750 r!14126)))))

(declare-fun matchRSpec!4560 (Regex!20421 List!73272) Bool)

(assert (=> b!7637646 (= (matchR!9924 r!14126 (_2!38003 lt!2660197)) (matchRSpec!4560 r!14126 (_2!38003 lt!2660197)))))

(declare-fun lt!2660187 () Unit!167832)

(declare-fun mainMatchTheorem!4546 (Regex!20421 List!73272) Unit!167832)

(assert (=> b!7637646 (= lt!2660187 (mainMatchTheorem!4546 r!14126 (_2!38003 lt!2660197)))))

(assert (=> b!7637646 (= (matchR!9924 (reg!20750 r!14126) (_1!38003 lt!2660197)) (matchRSpec!4560 (reg!20750 r!14126) (_1!38003 lt!2660197)))))

(declare-fun lt!2660186 () Unit!167832)

(assert (=> b!7637646 (= lt!2660186 (mainMatchTheorem!4546 (reg!20750 r!14126) (_1!38003 lt!2660197)))))

(declare-fun pickWitness!486 (Int) tuple2!69400)

(assert (=> b!7637646 (= lt!2660197 (pickWitness!486 lambda!469496))))

(declare-fun b!7637647 () Bool)

(declare-fun res!3059186 () Bool)

(assert (=> b!7637647 (=> (not res!3059186) (not e!4540162))))

(get-info :version)

(assert (=> b!7637647 (= res!3059186 (and (not ((_ is EmptyExpr!20421) r!14126)) (not ((_ is EmptyLang!20421) r!14126)) (not ((_ is ElementMatch!20421) r!14126)) (not ((_ is Union!20421) r!14126)) ((_ is Star!20421) r!14126)))))

(assert (=> b!7637648 (= e!4540167 (Exists!4575 lambda!469497))))

(declare-fun lt!2660188 () Unit!167832)

(declare-fun ExistsThe!54 (tuple2!69400 Int) Unit!167832)

(assert (=> b!7637648 (= lt!2660188 (ExistsThe!54 lt!2660197 lambda!469497))))

(declare-fun b!7637649 () Bool)

(declare-fun tp!2229448 () Bool)

(assert (=> b!7637649 (= e!4540160 tp!2229448)))

(declare-fun b!7637650 () Bool)

(assert (=> b!7637650 (= e!4540164 false)))

(declare-fun b!7637651 () Bool)

(declare-fun tp!2229446 () Bool)

(declare-fun tp!2229447 () Bool)

(assert (=> b!7637651 (= e!4540160 (and tp!2229446 tp!2229447))))

(declare-fun b!7637652 () Bool)

(assert (=> b!7637652 (= e!4540165 e!4540163)))

(declare-fun res!3059179 () Bool)

(assert (=> b!7637652 (=> res!3059179 e!4540163)))

(assert (=> b!7637652 (= res!3059179 (not (Exists!4575 lambda!469496)))))

(declare-fun lt!2660196 () Unit!167832)

(assert (=> b!7637652 (= lt!2660196 e!4540161)))

(declare-fun c!1406883 () Bool)

(assert (=> b!7637652 (= c!1406883 (not (matchR!9924 r!14126 s!9605)))))

(assert (=> b!7637652 (= (matchR!9924 r!14126 (_2!38003 lt!2660192)) (matchRSpec!4560 r!14126 (_2!38003 lt!2660192)))))

(declare-fun lt!2660193 () Unit!167832)

(assert (=> b!7637652 (= lt!2660193 (mainMatchTheorem!4546 r!14126 (_2!38003 lt!2660192)))))

(assert (=> b!7637652 (= (matchR!9924 (reg!20750 r!14126) (_1!38003 lt!2660192)) (matchRSpec!4560 (reg!20750 r!14126) (_1!38003 lt!2660192)))))

(declare-fun lt!2660194 () Unit!167832)

(assert (=> b!7637652 (= lt!2660194 (mainMatchTheorem!4546 (reg!20750 r!14126) (_1!38003 lt!2660192)))))

(declare-fun get!25896 (Option!17494) tuple2!69400)

(assert (=> b!7637652 (= lt!2660192 (get!25896 lt!2660195))))

(declare-fun b!7637653 () Bool)

(declare-fun tp!2229444 () Bool)

(assert (=> b!7637653 (= e!4540166 (and tp_is_empty!51197 tp!2229444))))

(assert (= (and start!735332 res!3059181) b!7637647))

(assert (= (and b!7637647 res!3059186) b!7637642))

(assert (= (and b!7637642 res!3059183) b!7637640))

(assert (= (and b!7637640 (not res!3059180)) b!7637652))

(assert (= (and b!7637652 c!1406883) b!7637641))

(assert (= (and b!7637652 (not c!1406883)) b!7637643))

(assert (= (and b!7637641 res!3059185) b!7637650))

(assert (= (and b!7637652 (not res!3059179)) b!7637646))

(assert (= (and b!7637646 (not res!3059184)) b!7637644))

(assert (= (and b!7637644 (not res!3059182)) b!7637648))

(assert (= (and start!735332 ((_ is ElementMatch!20421) r!14126)) b!7637639))

(assert (= (and start!735332 ((_ is Concat!29266) r!14126)) b!7637651))

(assert (= (and start!735332 ((_ is Star!20421) r!14126)) b!7637649))

(assert (= (and start!735332 ((_ is Union!20421) r!14126)) b!7637645))

(assert (= (and start!735332 ((_ is Cons!73148) s!9605)) b!7637653))

(declare-fun m!8161698 () Bool)

(assert (=> b!7637642 m!8161698))

(declare-fun m!8161700 () Bool)

(assert (=> b!7637640 m!8161700))

(declare-fun m!8161702 () Bool)

(assert (=> b!7637640 m!8161702))

(declare-fun m!8161704 () Bool)

(assert (=> b!7637640 m!8161704))

(declare-fun m!8161706 () Bool)

(assert (=> b!7637640 m!8161706))

(declare-fun m!8161708 () Bool)

(assert (=> b!7637646 m!8161708))

(declare-fun m!8161710 () Bool)

(assert (=> b!7637646 m!8161710))

(declare-fun m!8161712 () Bool)

(assert (=> b!7637646 m!8161712))

(declare-fun m!8161714 () Bool)

(assert (=> b!7637646 m!8161714))

(declare-fun m!8161716 () Bool)

(assert (=> b!7637646 m!8161716))

(declare-fun m!8161718 () Bool)

(assert (=> b!7637646 m!8161718))

(declare-fun m!8161720 () Bool)

(assert (=> b!7637646 m!8161720))

(declare-fun m!8161722 () Bool)

(assert (=> b!7637646 m!8161722))

(declare-fun m!8161724 () Bool)

(assert (=> b!7637648 m!8161724))

(declare-fun m!8161726 () Bool)

(assert (=> b!7637648 m!8161726))

(declare-fun m!8161728 () Bool)

(assert (=> b!7637644 m!8161728))

(declare-fun m!8161730 () Bool)

(assert (=> b!7637641 m!8161730))

(declare-fun m!8161732 () Bool)

(assert (=> b!7637641 m!8161732))

(declare-fun m!8161734 () Bool)

(assert (=> b!7637641 m!8161734))

(declare-fun m!8161736 () Bool)

(assert (=> b!7637641 m!8161736))

(declare-fun m!8161738 () Bool)

(assert (=> b!7637641 m!8161738))

(declare-fun m!8161740 () Bool)

(assert (=> start!735332 m!8161740))

(declare-fun m!8161742 () Bool)

(assert (=> b!7637652 m!8161742))

(declare-fun m!8161744 () Bool)

(assert (=> b!7637652 m!8161744))

(declare-fun m!8161746 () Bool)

(assert (=> b!7637652 m!8161746))

(declare-fun m!8161748 () Bool)

(assert (=> b!7637652 m!8161748))

(declare-fun m!8161750 () Bool)

(assert (=> b!7637652 m!8161750))

(declare-fun m!8161752 () Bool)

(assert (=> b!7637652 m!8161752))

(declare-fun m!8161754 () Bool)

(assert (=> b!7637652 m!8161754))

(declare-fun m!8161756 () Bool)

(assert (=> b!7637652 m!8161756))

(assert (=> b!7637652 m!8161700))

(check-sat (not b!7637645) (not b!7637641) (not b!7637652) (not b!7637648) (not b!7637649) tp_is_empty!51197 (not b!7637651) (not b!7637642) (not b!7637653) (not b!7637646) (not b!7637644) (not start!735332) (not b!7637640))
(check-sat)
(get-model)

(declare-fun b!7637676 () Bool)

(declare-fun res!3059198 () Bool)

(declare-fun e!4540185 () Bool)

(assert (=> b!7637676 (=> res!3059198 e!4540185)))

(assert (=> b!7637676 (= res!3059198 (not ((_ is Concat!29266) r!14126)))))

(declare-fun e!4540184 () Bool)

(assert (=> b!7637676 (= e!4540184 e!4540185)))

(declare-fun b!7637677 () Bool)

(declare-fun e!4540186 () Bool)

(declare-fun call!700995 () Bool)

(assert (=> b!7637677 (= e!4540186 call!700995)))

(declare-fun b!7637678 () Bool)

(declare-fun e!4540183 () Bool)

(declare-fun call!700993 () Bool)

(assert (=> b!7637678 (= e!4540183 call!700993)))

(declare-fun bm!700988 () Bool)

(declare-fun c!1406890 () Bool)

(assert (=> bm!700988 (= call!700993 (validRegex!10839 (ite c!1406890 (regTwo!41355 r!14126) (regTwo!41354 r!14126))))))

(declare-fun b!7637679 () Bool)

(declare-fun res!3059199 () Bool)

(assert (=> b!7637679 (=> (not res!3059199) (not e!4540183))))

(declare-fun call!700994 () Bool)

(assert (=> b!7637679 (= res!3059199 call!700994)))

(assert (=> b!7637679 (= e!4540184 e!4540183)))

(declare-fun d!2324852 () Bool)

(declare-fun res!3059201 () Bool)

(declare-fun e!4540182 () Bool)

(assert (=> d!2324852 (=> res!3059201 e!4540182)))

(assert (=> d!2324852 (= res!3059201 ((_ is ElementMatch!20421) r!14126))))

(assert (=> d!2324852 (= (validRegex!10839 r!14126) e!4540182)))

(declare-fun b!7637680 () Bool)

(declare-fun e!4540188 () Bool)

(assert (=> b!7637680 (= e!4540182 e!4540188)))

(declare-fun c!1406889 () Bool)

(assert (=> b!7637680 (= c!1406889 ((_ is Star!20421) r!14126))))

(declare-fun bm!700989 () Bool)

(assert (=> bm!700989 (= call!700994 call!700995)))

(declare-fun b!7637681 () Bool)

(declare-fun e!4540187 () Bool)

(assert (=> b!7637681 (= e!4540185 e!4540187)))

(declare-fun res!3059200 () Bool)

(assert (=> b!7637681 (=> (not res!3059200) (not e!4540187))))

(assert (=> b!7637681 (= res!3059200 call!700994)))

(declare-fun b!7637682 () Bool)

(assert (=> b!7637682 (= e!4540187 call!700993)))

(declare-fun b!7637683 () Bool)

(assert (=> b!7637683 (= e!4540188 e!4540184)))

(assert (=> b!7637683 (= c!1406890 ((_ is Union!20421) r!14126))))

(declare-fun b!7637684 () Bool)

(assert (=> b!7637684 (= e!4540188 e!4540186)))

(declare-fun res!3059197 () Bool)

(assert (=> b!7637684 (= res!3059197 (not (nullable!8934 (reg!20750 r!14126))))))

(assert (=> b!7637684 (=> (not res!3059197) (not e!4540186))))

(declare-fun bm!700990 () Bool)

(assert (=> bm!700990 (= call!700995 (validRegex!10839 (ite c!1406889 (reg!20750 r!14126) (ite c!1406890 (regOne!41355 r!14126) (regOne!41354 r!14126)))))))

(assert (= (and d!2324852 (not res!3059201)) b!7637680))

(assert (= (and b!7637680 c!1406889) b!7637684))

(assert (= (and b!7637680 (not c!1406889)) b!7637683))

(assert (= (and b!7637684 res!3059197) b!7637677))

(assert (= (and b!7637683 c!1406890) b!7637679))

(assert (= (and b!7637683 (not c!1406890)) b!7637676))

(assert (= (and b!7637679 res!3059199) b!7637678))

(assert (= (and b!7637676 (not res!3059198)) b!7637681))

(assert (= (and b!7637681 res!3059200) b!7637682))

(assert (= (or b!7637679 b!7637681) bm!700989))

(assert (= (or b!7637678 b!7637682) bm!700988))

(assert (= (or b!7637677 bm!700989) bm!700990))

(declare-fun m!8161764 () Bool)

(assert (=> bm!700988 m!8161764))

(assert (=> b!7637684 m!8161712))

(declare-fun m!8161766 () Bool)

(assert (=> bm!700990 m!8161766))

(assert (=> start!735332 d!2324852))

(declare-fun d!2324856 () Bool)

(assert (=> d!2324856 (= (isEmpty!41781 (_1!38003 lt!2660197)) ((_ is Nil!73148) (_1!38003 lt!2660197)))))

(assert (=> b!7637644 d!2324856))

(declare-fun d!2324858 () Bool)

(declare-fun choose!58982 (Int) Bool)

(assert (=> d!2324858 (= (Exists!4575 lambda!469496) (choose!58982 lambda!469496))))

(declare-fun bs!1944468 () Bool)

(assert (= bs!1944468 d!2324858))

(declare-fun m!8161768 () Bool)

(assert (=> bs!1944468 m!8161768))

(assert (=> b!7637640 d!2324858))

(declare-fun d!2324860 () Bool)

(declare-fun isEmpty!41782 (Option!17494) Bool)

(assert (=> d!2324860 (= (isDefined!14110 lt!2660195) (not (isEmpty!41782 lt!2660195)))))

(declare-fun bs!1944469 () Bool)

(assert (= bs!1944469 d!2324860))

(declare-fun m!8161770 () Bool)

(assert (=> bs!1944469 m!8161770))

(assert (=> b!7637640 d!2324860))

(declare-fun b!7637771 () Bool)

(declare-fun res!3059252 () Bool)

(declare-fun e!4540237 () Bool)

(assert (=> b!7637771 (=> (not res!3059252) (not e!4540237))))

(declare-fun lt!2660219 () Option!17494)

(assert (=> b!7637771 (= res!3059252 (matchR!9924 r!14126 (_2!38003 (get!25896 lt!2660219))))))

(declare-fun d!2324862 () Bool)

(declare-fun e!4540233 () Bool)

(assert (=> d!2324862 e!4540233))

(declare-fun res!3059253 () Bool)

(assert (=> d!2324862 (=> res!3059253 e!4540233)))

(assert (=> d!2324862 (= res!3059253 e!4540237)))

(declare-fun res!3059251 () Bool)

(assert (=> d!2324862 (=> (not res!3059251) (not e!4540237))))

(assert (=> d!2324862 (= res!3059251 (isDefined!14110 lt!2660219))))

(declare-fun e!4540236 () Option!17494)

(assert (=> d!2324862 (= lt!2660219 e!4540236)))

(declare-fun c!1406911 () Bool)

(declare-fun e!4540234 () Bool)

(assert (=> d!2324862 (= c!1406911 e!4540234)))

(declare-fun res!3059254 () Bool)

(assert (=> d!2324862 (=> (not res!3059254) (not e!4540234))))

(assert (=> d!2324862 (= res!3059254 (matchR!9924 (reg!20750 r!14126) Nil!73148))))

(assert (=> d!2324862 (validRegex!10839 (reg!20750 r!14126))))

(assert (=> d!2324862 (= (findConcatSeparation!3524 (reg!20750 r!14126) r!14126 Nil!73148 s!9605 s!9605) lt!2660219)))

(declare-fun b!7637772 () Bool)

(declare-fun e!4540235 () Option!17494)

(assert (=> b!7637772 (= e!4540236 e!4540235)))

(declare-fun c!1406910 () Bool)

(assert (=> b!7637772 (= c!1406910 ((_ is Nil!73148) s!9605))))

(declare-fun b!7637773 () Bool)

(assert (=> b!7637773 (= e!4540233 (not (isDefined!14110 lt!2660219)))))

(declare-fun b!7637774 () Bool)

(assert (=> b!7637774 (= e!4540237 (= (++!17701 (_1!38003 (get!25896 lt!2660219)) (_2!38003 (get!25896 lt!2660219))) s!9605))))

(declare-fun b!7637775 () Bool)

(assert (=> b!7637775 (= e!4540234 (matchR!9924 r!14126 s!9605))))

(declare-fun b!7637776 () Bool)

(assert (=> b!7637776 (= e!4540236 (Some!17493 (tuple2!69401 Nil!73148 s!9605)))))

(declare-fun b!7637777 () Bool)

(declare-fun res!3059250 () Bool)

(assert (=> b!7637777 (=> (not res!3059250) (not e!4540237))))

(assert (=> b!7637777 (= res!3059250 (matchR!9924 (reg!20750 r!14126) (_1!38003 (get!25896 lt!2660219))))))

(declare-fun b!7637778 () Bool)

(declare-fun lt!2660218 () Unit!167832)

(declare-fun lt!2660220 () Unit!167832)

(assert (=> b!7637778 (= lt!2660218 lt!2660220)))

(assert (=> b!7637778 (= (++!17701 (++!17701 Nil!73148 (Cons!73148 (h!79596 s!9605) Nil!73148)) (t!388007 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3260 (List!73272 C!41168 List!73272 List!73272) Unit!167832)

(assert (=> b!7637778 (= lt!2660220 (lemmaMoveElementToOtherListKeepsConcatEq!3260 Nil!73148 (h!79596 s!9605) (t!388007 s!9605) s!9605))))

(assert (=> b!7637778 (= e!4540235 (findConcatSeparation!3524 (reg!20750 r!14126) r!14126 (++!17701 Nil!73148 (Cons!73148 (h!79596 s!9605) Nil!73148)) (t!388007 s!9605) s!9605))))

(declare-fun b!7637779 () Bool)

(assert (=> b!7637779 (= e!4540235 None!17493)))

(assert (= (and d!2324862 res!3059254) b!7637775))

(assert (= (and d!2324862 c!1406911) b!7637776))

(assert (= (and d!2324862 (not c!1406911)) b!7637772))

(assert (= (and b!7637772 c!1406910) b!7637779))

(assert (= (and b!7637772 (not c!1406910)) b!7637778))

(assert (= (and d!2324862 res!3059251) b!7637777))

(assert (= (and b!7637777 res!3059250) b!7637771))

(assert (= (and b!7637771 res!3059252) b!7637774))

(assert (= (and d!2324862 (not res!3059253)) b!7637773))

(declare-fun m!8161824 () Bool)

(assert (=> b!7637777 m!8161824))

(declare-fun m!8161826 () Bool)

(assert (=> b!7637777 m!8161826))

(declare-fun m!8161828 () Bool)

(assert (=> b!7637778 m!8161828))

(assert (=> b!7637778 m!8161828))

(declare-fun m!8161830 () Bool)

(assert (=> b!7637778 m!8161830))

(declare-fun m!8161832 () Bool)

(assert (=> b!7637778 m!8161832))

(assert (=> b!7637778 m!8161828))

(declare-fun m!8161834 () Bool)

(assert (=> b!7637778 m!8161834))

(declare-fun m!8161836 () Bool)

(assert (=> b!7637773 m!8161836))

(assert (=> b!7637775 m!8161746))

(assert (=> d!2324862 m!8161836))

(declare-fun m!8161838 () Bool)

(assert (=> d!2324862 m!8161838))

(declare-fun m!8161840 () Bool)

(assert (=> d!2324862 m!8161840))

(assert (=> b!7637774 m!8161824))

(declare-fun m!8161842 () Bool)

(assert (=> b!7637774 m!8161842))

(assert (=> b!7637771 m!8161824))

(declare-fun m!8161844 () Bool)

(assert (=> b!7637771 m!8161844))

(assert (=> b!7637640 d!2324862))

(declare-fun bs!1944472 () Bool)

(declare-fun d!2324874 () Bool)

(assert (= bs!1944472 (and d!2324874 b!7637640)))

(declare-fun lambda!469500 () Int)

(assert (=> bs!1944472 (= lambda!469500 lambda!469496)))

(declare-fun bs!1944473 () Bool)

(assert (= bs!1944473 (and d!2324874 b!7637648)))

(assert (=> bs!1944473 (not (= lambda!469500 lambda!469497))))

(assert (=> d!2324874 true))

(assert (=> d!2324874 true))

(assert (=> d!2324874 true))

(assert (=> d!2324874 (= (isDefined!14110 (findConcatSeparation!3524 (reg!20750 r!14126) r!14126 Nil!73148 s!9605 s!9605)) (Exists!4575 lambda!469500))))

(declare-fun lt!2660225 () Unit!167832)

(declare-fun choose!58984 (Regex!20421 Regex!20421 List!73272) Unit!167832)

(assert (=> d!2324874 (= lt!2660225 (choose!58984 (reg!20750 r!14126) r!14126 s!9605))))

(assert (=> d!2324874 (validRegex!10839 (reg!20750 r!14126))))

(assert (=> d!2324874 (= (lemmaFindConcatSeparationEquivalentToExists!3282 (reg!20750 r!14126) r!14126 s!9605) lt!2660225)))

(declare-fun bs!1944474 () Bool)

(assert (= bs!1944474 d!2324874))

(assert (=> bs!1944474 m!8161704))

(assert (=> bs!1944474 m!8161840))

(declare-fun m!8161860 () Bool)

(assert (=> bs!1944474 m!8161860))

(assert (=> bs!1944474 m!8161704))

(declare-fun m!8161862 () Bool)

(assert (=> bs!1944474 m!8161862))

(declare-fun m!8161864 () Bool)

(assert (=> bs!1944474 m!8161864))

(assert (=> b!7637640 d!2324874))

(declare-fun b!7637883 () Bool)

(declare-fun e!4540296 () Bool)

(declare-fun e!4540294 () Bool)

(assert (=> b!7637883 (= e!4540296 e!4540294)))

(declare-fun res!3059314 () Bool)

(assert (=> b!7637883 (=> (not res!3059314) (not e!4540294))))

(declare-fun lt!2660228 () Bool)

(assert (=> b!7637883 (= res!3059314 (not lt!2660228))))

(declare-fun b!7637884 () Bool)

(declare-fun res!3059312 () Bool)

(assert (=> b!7637884 (=> res!3059312 e!4540296)))

(declare-fun e!4540295 () Bool)

(assert (=> b!7637884 (= res!3059312 e!4540295)))

(declare-fun res!3059316 () Bool)

(assert (=> b!7637884 (=> (not res!3059316) (not e!4540295))))

(assert (=> b!7637884 (= res!3059316 lt!2660228)))

(declare-fun b!7637885 () Bool)

(declare-fun e!4540293 () Bool)

(declare-fun e!4540297 () Bool)

(assert (=> b!7637885 (= e!4540293 e!4540297)))

(declare-fun c!1406937 () Bool)

(assert (=> b!7637885 (= c!1406937 ((_ is EmptyLang!20421) r!14126))))

(declare-fun b!7637886 () Bool)

(declare-fun head!15707 (List!73272) C!41168)

(assert (=> b!7637886 (= e!4540295 (= (head!15707 (_2!38003 lt!2660197)) (c!1406884 r!14126)))))

(declare-fun b!7637887 () Bool)

(declare-fun e!4540299 () Bool)

(assert (=> b!7637887 (= e!4540299 (not (= (head!15707 (_2!38003 lt!2660197)) (c!1406884 r!14126))))))

(declare-fun b!7637888 () Bool)

(assert (=> b!7637888 (= e!4540297 (not lt!2660228))))

(declare-fun b!7637889 () Bool)

(declare-fun res!3059313 () Bool)

(assert (=> b!7637889 (=> (not res!3059313) (not e!4540295))))

(declare-fun tail!15247 (List!73272) List!73272)

(assert (=> b!7637889 (= res!3059313 (isEmpty!41781 (tail!15247 (_2!38003 lt!2660197))))))

(declare-fun b!7637890 () Bool)

(declare-fun res!3059311 () Bool)

(assert (=> b!7637890 (=> (not res!3059311) (not e!4540295))))

(declare-fun call!701010 () Bool)

(assert (=> b!7637890 (= res!3059311 (not call!701010))))

(declare-fun b!7637891 () Bool)

(declare-fun res!3059310 () Bool)

(assert (=> b!7637891 (=> res!3059310 e!4540299)))

(assert (=> b!7637891 (= res!3059310 (not (isEmpty!41781 (tail!15247 (_2!38003 lt!2660197)))))))

(declare-fun b!7637893 () Bool)

(declare-fun res!3059317 () Bool)

(assert (=> b!7637893 (=> res!3059317 e!4540296)))

(assert (=> b!7637893 (= res!3059317 (not ((_ is ElementMatch!20421) r!14126)))))

(assert (=> b!7637893 (= e!4540297 e!4540296)))

(declare-fun b!7637894 () Bool)

(declare-fun e!4540298 () Bool)

(assert (=> b!7637894 (= e!4540298 (nullable!8934 r!14126))))

(declare-fun b!7637895 () Bool)

(assert (=> b!7637895 (= e!4540294 e!4540299)))

(declare-fun res!3059315 () Bool)

(assert (=> b!7637895 (=> res!3059315 e!4540299)))

(assert (=> b!7637895 (= res!3059315 call!701010)))

(declare-fun b!7637896 () Bool)

(declare-fun derivativeStep!5907 (Regex!20421 C!41168) Regex!20421)

(assert (=> b!7637896 (= e!4540298 (matchR!9924 (derivativeStep!5907 r!14126 (head!15707 (_2!38003 lt!2660197))) (tail!15247 (_2!38003 lt!2660197))))))

(declare-fun bm!701005 () Bool)

(assert (=> bm!701005 (= call!701010 (isEmpty!41781 (_2!38003 lt!2660197)))))

(declare-fun d!2324880 () Bool)

(assert (=> d!2324880 e!4540293))

(declare-fun c!1406938 () Bool)

(assert (=> d!2324880 (= c!1406938 ((_ is EmptyExpr!20421) r!14126))))

(assert (=> d!2324880 (= lt!2660228 e!4540298)))

(declare-fun c!1406936 () Bool)

(assert (=> d!2324880 (= c!1406936 (isEmpty!41781 (_2!38003 lt!2660197)))))

(assert (=> d!2324880 (validRegex!10839 r!14126)))

(assert (=> d!2324880 (= (matchR!9924 r!14126 (_2!38003 lt!2660197)) lt!2660228)))

(declare-fun b!7637892 () Bool)

(assert (=> b!7637892 (= e!4540293 (= lt!2660228 call!701010))))

(assert (= (and d!2324880 c!1406936) b!7637894))

(assert (= (and d!2324880 (not c!1406936)) b!7637896))

(assert (= (and d!2324880 c!1406938) b!7637892))

(assert (= (and d!2324880 (not c!1406938)) b!7637885))

(assert (= (and b!7637885 c!1406937) b!7637888))

(assert (= (and b!7637885 (not c!1406937)) b!7637893))

(assert (= (and b!7637893 (not res!3059317)) b!7637884))

(assert (= (and b!7637884 res!3059316) b!7637890))

(assert (= (and b!7637890 res!3059311) b!7637889))

(assert (= (and b!7637889 res!3059313) b!7637886))

(assert (= (and b!7637884 (not res!3059312)) b!7637883))

(assert (= (and b!7637883 res!3059314) b!7637895))

(assert (= (and b!7637895 (not res!3059315)) b!7637891))

(assert (= (and b!7637891 (not res!3059310)) b!7637887))

(assert (= (or b!7637892 b!7637895 b!7637890) bm!701005))

(declare-fun m!8161872 () Bool)

(assert (=> b!7637894 m!8161872))

(declare-fun m!8161874 () Bool)

(assert (=> b!7637896 m!8161874))

(assert (=> b!7637896 m!8161874))

(declare-fun m!8161876 () Bool)

(assert (=> b!7637896 m!8161876))

(declare-fun m!8161878 () Bool)

(assert (=> b!7637896 m!8161878))

(assert (=> b!7637896 m!8161876))

(assert (=> b!7637896 m!8161878))

(declare-fun m!8161880 () Bool)

(assert (=> b!7637896 m!8161880))

(assert (=> b!7637887 m!8161874))

(declare-fun m!8161882 () Bool)

(assert (=> d!2324880 m!8161882))

(assert (=> d!2324880 m!8161740))

(assert (=> bm!701005 m!8161882))

(assert (=> b!7637889 m!8161878))

(assert (=> b!7637889 m!8161878))

(declare-fun m!8161884 () Bool)

(assert (=> b!7637889 m!8161884))

(assert (=> b!7637891 m!8161878))

(assert (=> b!7637891 m!8161878))

(assert (=> b!7637891 m!8161884))

(assert (=> b!7637886 m!8161874))

(assert (=> b!7637646 d!2324880))

(declare-fun bs!1944507 () Bool)

(declare-fun b!7637999 () Bool)

(assert (= bs!1944507 (and b!7637999 b!7637640)))

(declare-fun lambda!469515 () Int)

(assert (=> bs!1944507 (not (= lambda!469515 lambda!469496))))

(declare-fun bs!1944508 () Bool)

(assert (= bs!1944508 (and b!7637999 b!7637648)))

(assert (=> bs!1944508 (= (= (_2!38003 lt!2660197) s!9605) (= lambda!469515 lambda!469497))))

(declare-fun bs!1944509 () Bool)

(assert (= bs!1944509 (and b!7637999 d!2324874)))

(assert (=> bs!1944509 (not (= lambda!469515 lambda!469500))))

(assert (=> b!7637999 true))

(assert (=> b!7637999 true))

(declare-fun bs!1944511 () Bool)

(declare-fun b!7638000 () Bool)

(assert (= bs!1944511 (and b!7638000 b!7637640)))

(declare-fun lambda!469516 () Int)

(assert (=> bs!1944511 (not (= lambda!469516 lambda!469496))))

(declare-fun bs!1944512 () Bool)

(assert (= bs!1944512 (and b!7638000 b!7637648)))

(assert (=> bs!1944512 (not (= lambda!469516 lambda!469497))))

(declare-fun bs!1944513 () Bool)

(assert (= bs!1944513 (and b!7638000 d!2324874)))

(assert (=> bs!1944513 (not (= lambda!469516 lambda!469500))))

(declare-fun bs!1944515 () Bool)

(assert (= bs!1944515 (and b!7638000 b!7637999)))

(assert (=> bs!1944515 (not (= lambda!469516 lambda!469515))))

(assert (=> b!7638000 true))

(assert (=> b!7638000 true))

(declare-fun b!7637993 () Bool)

(declare-fun res!3059364 () Bool)

(declare-fun e!4540359 () Bool)

(assert (=> b!7637993 (=> res!3059364 e!4540359)))

(declare-fun call!701023 () Bool)

(assert (=> b!7637993 (= res!3059364 call!701023)))

(declare-fun e!4540358 () Bool)

(assert (=> b!7637993 (= e!4540358 e!4540359)))

(declare-fun d!2324884 () Bool)

(declare-fun c!1406964 () Bool)

(assert (=> d!2324884 (= c!1406964 ((_ is EmptyExpr!20421) r!14126))))

(declare-fun e!4540355 () Bool)

(assert (=> d!2324884 (= (matchRSpec!4560 r!14126 (_2!38003 lt!2660197)) e!4540355)))

(declare-fun b!7637994 () Bool)

(declare-fun e!4540354 () Bool)

(assert (=> b!7637994 (= e!4540354 e!4540358)))

(declare-fun c!1406967 () Bool)

(assert (=> b!7637994 (= c!1406967 ((_ is Star!20421) r!14126))))

(declare-fun b!7637995 () Bool)

(declare-fun e!4540353 () Bool)

(assert (=> b!7637995 (= e!4540355 e!4540353)))

(declare-fun res!3059365 () Bool)

(assert (=> b!7637995 (= res!3059365 (not ((_ is EmptyLang!20421) r!14126)))))

(assert (=> b!7637995 (=> (not res!3059365) (not e!4540353))))

(declare-fun b!7637996 () Bool)

(declare-fun c!1406966 () Bool)

(assert (=> b!7637996 (= c!1406966 ((_ is ElementMatch!20421) r!14126))))

(declare-fun e!4540356 () Bool)

(assert (=> b!7637996 (= e!4540353 e!4540356)))

(declare-fun b!7637997 () Bool)

(declare-fun c!1406965 () Bool)

(assert (=> b!7637997 (= c!1406965 ((_ is Union!20421) r!14126))))

(assert (=> b!7637997 (= e!4540356 e!4540354)))

(declare-fun b!7637998 () Bool)

(assert (=> b!7637998 (= e!4540355 call!701023)))

(declare-fun call!701022 () Bool)

(assert (=> b!7637999 (= e!4540359 call!701022)))

(assert (=> b!7638000 (= e!4540358 call!701022)))

(declare-fun b!7638001 () Bool)

(declare-fun e!4540357 () Bool)

(assert (=> b!7638001 (= e!4540354 e!4540357)))

(declare-fun res!3059366 () Bool)

(assert (=> b!7638001 (= res!3059366 (matchRSpec!4560 (regOne!41355 r!14126) (_2!38003 lt!2660197)))))

(assert (=> b!7638001 (=> res!3059366 e!4540357)))

(declare-fun bm!701017 () Bool)

(assert (=> bm!701017 (= call!701022 (Exists!4575 (ite c!1406967 lambda!469515 lambda!469516)))))

(declare-fun b!7638002 () Bool)

(assert (=> b!7638002 (= e!4540357 (matchRSpec!4560 (regTwo!41355 r!14126) (_2!38003 lt!2660197)))))

(declare-fun bm!701018 () Bool)

(assert (=> bm!701018 (= call!701023 (isEmpty!41781 (_2!38003 lt!2660197)))))

(declare-fun b!7638003 () Bool)

(assert (=> b!7638003 (= e!4540356 (= (_2!38003 lt!2660197) (Cons!73148 (c!1406884 r!14126) Nil!73148)))))

(assert (= (and d!2324884 c!1406964) b!7637998))

(assert (= (and d!2324884 (not c!1406964)) b!7637995))

(assert (= (and b!7637995 res!3059365) b!7637996))

(assert (= (and b!7637996 c!1406966) b!7638003))

(assert (= (and b!7637996 (not c!1406966)) b!7637997))

(assert (= (and b!7637997 c!1406965) b!7638001))

(assert (= (and b!7637997 (not c!1406965)) b!7637994))

(assert (= (and b!7638001 (not res!3059366)) b!7638002))

(assert (= (and b!7637994 c!1406967) b!7637993))

(assert (= (and b!7637994 (not c!1406967)) b!7638000))

(assert (= (and b!7637993 (not res!3059364)) b!7637999))

(assert (= (or b!7637999 b!7638000) bm!701017))

(assert (= (or b!7637998 b!7637993) bm!701018))

(declare-fun m!8161946 () Bool)

(assert (=> b!7638001 m!8161946))

(declare-fun m!8161948 () Bool)

(assert (=> bm!701017 m!8161948))

(declare-fun m!8161950 () Bool)

(assert (=> b!7638002 m!8161950))

(assert (=> bm!701018 m!8161882))

(assert (=> b!7637646 d!2324884))

(declare-fun bs!1944523 () Bool)

(declare-fun b!7638021 () Bool)

(assert (= bs!1944523 (and b!7638021 b!7637648)))

(declare-fun lambda!469518 () Int)

(assert (=> bs!1944523 (= (and (= (_1!38003 lt!2660197) s!9605) (= (reg!20750 (reg!20750 r!14126)) (reg!20750 r!14126)) (= (reg!20750 r!14126) r!14126)) (= lambda!469518 lambda!469497))))

(declare-fun bs!1944526 () Bool)

(assert (= bs!1944526 (and b!7638021 d!2324874)))

(assert (=> bs!1944526 (not (= lambda!469518 lambda!469500))))

(declare-fun bs!1944528 () Bool)

(assert (= bs!1944528 (and b!7638021 b!7637640)))

(assert (=> bs!1944528 (not (= lambda!469518 lambda!469496))))

(declare-fun bs!1944530 () Bool)

(assert (= bs!1944530 (and b!7638021 b!7637999)))

(assert (=> bs!1944530 (= (and (= (_1!38003 lt!2660197) (_2!38003 lt!2660197)) (= (reg!20750 (reg!20750 r!14126)) (reg!20750 r!14126)) (= (reg!20750 r!14126) r!14126)) (= lambda!469518 lambda!469515))))

(declare-fun bs!1944532 () Bool)

(assert (= bs!1944532 (and b!7638021 b!7638000)))

(assert (=> bs!1944532 (not (= lambda!469518 lambda!469516))))

(assert (=> b!7638021 true))

(assert (=> b!7638021 true))

(declare-fun bs!1944537 () Bool)

(declare-fun b!7638022 () Bool)

(assert (= bs!1944537 (and b!7638022 b!7637648)))

(declare-fun lambda!469520 () Int)

(assert (=> bs!1944537 (not (= lambda!469520 lambda!469497))))

(declare-fun bs!1944538 () Bool)

(assert (= bs!1944538 (and b!7638022 b!7638021)))

(assert (=> bs!1944538 (not (= lambda!469520 lambda!469518))))

(declare-fun bs!1944539 () Bool)

(assert (= bs!1944539 (and b!7638022 d!2324874)))

(assert (=> bs!1944539 (not (= lambda!469520 lambda!469500))))

(declare-fun bs!1944540 () Bool)

(assert (= bs!1944540 (and b!7638022 b!7637640)))

(assert (=> bs!1944540 (not (= lambda!469520 lambda!469496))))

(declare-fun bs!1944541 () Bool)

(assert (= bs!1944541 (and b!7638022 b!7637999)))

(assert (=> bs!1944541 (not (= lambda!469520 lambda!469515))))

(declare-fun bs!1944542 () Bool)

(assert (= bs!1944542 (and b!7638022 b!7638000)))

(assert (=> bs!1944542 (= (and (= (_1!38003 lt!2660197) (_2!38003 lt!2660197)) (= (regOne!41354 (reg!20750 r!14126)) (regOne!41354 r!14126)) (= (regTwo!41354 (reg!20750 r!14126)) (regTwo!41354 r!14126))) (= lambda!469520 lambda!469516))))

(assert (=> b!7638022 true))

(assert (=> b!7638022 true))

(declare-fun b!7638015 () Bool)

(declare-fun res!3059370 () Bool)

(declare-fun e!4540373 () Bool)

(assert (=> b!7638015 (=> res!3059370 e!4540373)))

(declare-fun call!701027 () Bool)

(assert (=> b!7638015 (= res!3059370 call!701027)))

(declare-fun e!4540372 () Bool)

(assert (=> b!7638015 (= e!4540372 e!4540373)))

(declare-fun d!2324910 () Bool)

(declare-fun c!1406972 () Bool)

(assert (=> d!2324910 (= c!1406972 ((_ is EmptyExpr!20421) (reg!20750 r!14126)))))

(declare-fun e!4540369 () Bool)

(assert (=> d!2324910 (= (matchRSpec!4560 (reg!20750 r!14126) (_1!38003 lt!2660197)) e!4540369)))

(declare-fun b!7638016 () Bool)

(declare-fun e!4540368 () Bool)

(assert (=> b!7638016 (= e!4540368 e!4540372)))

(declare-fun c!1406975 () Bool)

(assert (=> b!7638016 (= c!1406975 ((_ is Star!20421) (reg!20750 r!14126)))))

(declare-fun b!7638017 () Bool)

(declare-fun e!4540367 () Bool)

(assert (=> b!7638017 (= e!4540369 e!4540367)))

(declare-fun res!3059371 () Bool)

(assert (=> b!7638017 (= res!3059371 (not ((_ is EmptyLang!20421) (reg!20750 r!14126))))))

(assert (=> b!7638017 (=> (not res!3059371) (not e!4540367))))

(declare-fun b!7638018 () Bool)

(declare-fun c!1406974 () Bool)

(assert (=> b!7638018 (= c!1406974 ((_ is ElementMatch!20421) (reg!20750 r!14126)))))

(declare-fun e!4540370 () Bool)

(assert (=> b!7638018 (= e!4540367 e!4540370)))

(declare-fun b!7638019 () Bool)

(declare-fun c!1406973 () Bool)

(assert (=> b!7638019 (= c!1406973 ((_ is Union!20421) (reg!20750 r!14126)))))

(assert (=> b!7638019 (= e!4540370 e!4540368)))

(declare-fun b!7638020 () Bool)

(assert (=> b!7638020 (= e!4540369 call!701027)))

(declare-fun call!701026 () Bool)

(assert (=> b!7638021 (= e!4540373 call!701026)))

(assert (=> b!7638022 (= e!4540372 call!701026)))

(declare-fun b!7638023 () Bool)

(declare-fun e!4540371 () Bool)

(assert (=> b!7638023 (= e!4540368 e!4540371)))

(declare-fun res!3059372 () Bool)

(assert (=> b!7638023 (= res!3059372 (matchRSpec!4560 (regOne!41355 (reg!20750 r!14126)) (_1!38003 lt!2660197)))))

(assert (=> b!7638023 (=> res!3059372 e!4540371)))

(declare-fun bm!701021 () Bool)

(assert (=> bm!701021 (= call!701026 (Exists!4575 (ite c!1406975 lambda!469518 lambda!469520)))))

(declare-fun b!7638024 () Bool)

(assert (=> b!7638024 (= e!4540371 (matchRSpec!4560 (regTwo!41355 (reg!20750 r!14126)) (_1!38003 lt!2660197)))))

(declare-fun bm!701022 () Bool)

(assert (=> bm!701022 (= call!701027 (isEmpty!41781 (_1!38003 lt!2660197)))))

(declare-fun b!7638025 () Bool)

(assert (=> b!7638025 (= e!4540370 (= (_1!38003 lt!2660197) (Cons!73148 (c!1406884 (reg!20750 r!14126)) Nil!73148)))))

(assert (= (and d!2324910 c!1406972) b!7638020))

(assert (= (and d!2324910 (not c!1406972)) b!7638017))

(assert (= (and b!7638017 res!3059371) b!7638018))

(assert (= (and b!7638018 c!1406974) b!7638025))

(assert (= (and b!7638018 (not c!1406974)) b!7638019))

(assert (= (and b!7638019 c!1406973) b!7638023))

(assert (= (and b!7638019 (not c!1406973)) b!7638016))

(assert (= (and b!7638023 (not res!3059372)) b!7638024))

(assert (= (and b!7638016 c!1406975) b!7638015))

(assert (= (and b!7638016 (not c!1406975)) b!7638022))

(assert (= (and b!7638015 (not res!3059370)) b!7638021))

(assert (= (or b!7638021 b!7638022) bm!701021))

(assert (= (or b!7638020 b!7638015) bm!701022))

(declare-fun m!8161960 () Bool)

(assert (=> b!7638023 m!8161960))

(declare-fun m!8161962 () Bool)

(assert (=> bm!701021 m!8161962))

(declare-fun m!8161964 () Bool)

(assert (=> b!7638024 m!8161964))

(assert (=> bm!701022 m!8161728))

(assert (=> b!7637646 d!2324910))

(declare-fun b!7638026 () Bool)

(declare-fun e!4540377 () Bool)

(declare-fun e!4540375 () Bool)

(assert (=> b!7638026 (= e!4540377 e!4540375)))

(declare-fun res!3059377 () Bool)

(assert (=> b!7638026 (=> (not res!3059377) (not e!4540375))))

(declare-fun lt!2660241 () Bool)

(assert (=> b!7638026 (= res!3059377 (not lt!2660241))))

(declare-fun b!7638027 () Bool)

(declare-fun res!3059375 () Bool)

(assert (=> b!7638027 (=> res!3059375 e!4540377)))

(declare-fun e!4540376 () Bool)

(assert (=> b!7638027 (= res!3059375 e!4540376)))

(declare-fun res!3059379 () Bool)

(assert (=> b!7638027 (=> (not res!3059379) (not e!4540376))))

(assert (=> b!7638027 (= res!3059379 lt!2660241)))

(declare-fun b!7638028 () Bool)

(declare-fun e!4540374 () Bool)

(declare-fun e!4540378 () Bool)

(assert (=> b!7638028 (= e!4540374 e!4540378)))

(declare-fun c!1406977 () Bool)

(assert (=> b!7638028 (= c!1406977 ((_ is EmptyLang!20421) (reg!20750 r!14126)))))

(declare-fun b!7638029 () Bool)

(assert (=> b!7638029 (= e!4540376 (= (head!15707 (_1!38003 lt!2660197)) (c!1406884 (reg!20750 r!14126))))))

(declare-fun b!7638030 () Bool)

(declare-fun e!4540380 () Bool)

(assert (=> b!7638030 (= e!4540380 (not (= (head!15707 (_1!38003 lt!2660197)) (c!1406884 (reg!20750 r!14126)))))))

(declare-fun b!7638031 () Bool)

(assert (=> b!7638031 (= e!4540378 (not lt!2660241))))

(declare-fun b!7638032 () Bool)

(declare-fun res!3059376 () Bool)

(assert (=> b!7638032 (=> (not res!3059376) (not e!4540376))))

(assert (=> b!7638032 (= res!3059376 (isEmpty!41781 (tail!15247 (_1!38003 lt!2660197))))))

(declare-fun b!7638033 () Bool)

(declare-fun res!3059374 () Bool)

(assert (=> b!7638033 (=> (not res!3059374) (not e!4540376))))

(declare-fun call!701028 () Bool)

(assert (=> b!7638033 (= res!3059374 (not call!701028))))

(declare-fun b!7638034 () Bool)

(declare-fun res!3059373 () Bool)

(assert (=> b!7638034 (=> res!3059373 e!4540380)))

(assert (=> b!7638034 (= res!3059373 (not (isEmpty!41781 (tail!15247 (_1!38003 lt!2660197)))))))

(declare-fun b!7638036 () Bool)

(declare-fun res!3059380 () Bool)

(assert (=> b!7638036 (=> res!3059380 e!4540377)))

(assert (=> b!7638036 (= res!3059380 (not ((_ is ElementMatch!20421) (reg!20750 r!14126))))))

(assert (=> b!7638036 (= e!4540378 e!4540377)))

(declare-fun b!7638037 () Bool)

(declare-fun e!4540379 () Bool)

(assert (=> b!7638037 (= e!4540379 (nullable!8934 (reg!20750 r!14126)))))

(declare-fun b!7638038 () Bool)

(assert (=> b!7638038 (= e!4540375 e!4540380)))

(declare-fun res!3059378 () Bool)

(assert (=> b!7638038 (=> res!3059378 e!4540380)))

(assert (=> b!7638038 (= res!3059378 call!701028)))

(declare-fun b!7638039 () Bool)

(assert (=> b!7638039 (= e!4540379 (matchR!9924 (derivativeStep!5907 (reg!20750 r!14126) (head!15707 (_1!38003 lt!2660197))) (tail!15247 (_1!38003 lt!2660197))))))

(declare-fun bm!701023 () Bool)

(assert (=> bm!701023 (= call!701028 (isEmpty!41781 (_1!38003 lt!2660197)))))

(declare-fun d!2324918 () Bool)

(assert (=> d!2324918 e!4540374))

(declare-fun c!1406978 () Bool)

(assert (=> d!2324918 (= c!1406978 ((_ is EmptyExpr!20421) (reg!20750 r!14126)))))

(assert (=> d!2324918 (= lt!2660241 e!4540379)))

(declare-fun c!1406976 () Bool)

(assert (=> d!2324918 (= c!1406976 (isEmpty!41781 (_1!38003 lt!2660197)))))

(assert (=> d!2324918 (validRegex!10839 (reg!20750 r!14126))))

(assert (=> d!2324918 (= (matchR!9924 (reg!20750 r!14126) (_1!38003 lt!2660197)) lt!2660241)))

(declare-fun b!7638035 () Bool)

(assert (=> b!7638035 (= e!4540374 (= lt!2660241 call!701028))))

(assert (= (and d!2324918 c!1406976) b!7638037))

(assert (= (and d!2324918 (not c!1406976)) b!7638039))

(assert (= (and d!2324918 c!1406978) b!7638035))

(assert (= (and d!2324918 (not c!1406978)) b!7638028))

(assert (= (and b!7638028 c!1406977) b!7638031))

(assert (= (and b!7638028 (not c!1406977)) b!7638036))

(assert (= (and b!7638036 (not res!3059380)) b!7638027))

(assert (= (and b!7638027 res!3059379) b!7638033))

(assert (= (and b!7638033 res!3059374) b!7638032))

(assert (= (and b!7638032 res!3059376) b!7638029))

(assert (= (and b!7638027 (not res!3059375)) b!7638026))

(assert (= (and b!7638026 res!3059377) b!7638038))

(assert (= (and b!7638038 (not res!3059378)) b!7638034))

(assert (= (and b!7638034 (not res!3059373)) b!7638030))

(assert (= (or b!7638035 b!7638038 b!7638033) bm!701023))

(assert (=> b!7638037 m!8161712))

(declare-fun m!8161966 () Bool)

(assert (=> b!7638039 m!8161966))

(assert (=> b!7638039 m!8161966))

(declare-fun m!8161968 () Bool)

(assert (=> b!7638039 m!8161968))

(declare-fun m!8161970 () Bool)

(assert (=> b!7638039 m!8161970))

(assert (=> b!7638039 m!8161968))

(assert (=> b!7638039 m!8161970))

(declare-fun m!8161972 () Bool)

(assert (=> b!7638039 m!8161972))

(assert (=> b!7638030 m!8161966))

(assert (=> d!2324918 m!8161728))

(assert (=> d!2324918 m!8161840))

(assert (=> bm!701023 m!8161728))

(assert (=> b!7638032 m!8161970))

(assert (=> b!7638032 m!8161970))

(declare-fun m!8161974 () Bool)

(assert (=> b!7638032 m!8161974))

(assert (=> b!7638034 m!8161970))

(assert (=> b!7638034 m!8161970))

(assert (=> b!7638034 m!8161974))

(assert (=> b!7638029 m!8161966))

(assert (=> b!7637646 d!2324918))

(declare-fun d!2324920 () Bool)

(declare-fun nullableFct!3552 (Regex!20421) Bool)

(assert (=> d!2324920 (= (nullable!8934 (reg!20750 r!14126)) (nullableFct!3552 (reg!20750 r!14126)))))

(declare-fun bs!1944545 () Bool)

(assert (= bs!1944545 d!2324920))

(declare-fun m!8161980 () Bool)

(assert (=> bs!1944545 m!8161980))

(assert (=> b!7637646 d!2324920))

(declare-fun d!2324924 () Bool)

(assert (=> d!2324924 (= (matchR!9924 (reg!20750 r!14126) (_1!38003 lt!2660197)) (matchRSpec!4560 (reg!20750 r!14126) (_1!38003 lt!2660197)))))

(declare-fun lt!2660247 () Unit!167832)

(declare-fun choose!58987 (Regex!20421 List!73272) Unit!167832)

(assert (=> d!2324924 (= lt!2660247 (choose!58987 (reg!20750 r!14126) (_1!38003 lt!2660197)))))

(assert (=> d!2324924 (validRegex!10839 (reg!20750 r!14126))))

(assert (=> d!2324924 (= (mainMatchTheorem!4546 (reg!20750 r!14126) (_1!38003 lt!2660197)) lt!2660247)))

(declare-fun bs!1944547 () Bool)

(assert (= bs!1944547 d!2324924))

(assert (=> bs!1944547 m!8161722))

(assert (=> bs!1944547 m!8161714))

(declare-fun m!8161984 () Bool)

(assert (=> bs!1944547 m!8161984))

(assert (=> bs!1944547 m!8161840))

(assert (=> b!7637646 d!2324924))

(declare-fun d!2324928 () Bool)

(declare-fun lt!2660250 () tuple2!69400)

(declare-fun dynLambda!29931 (Int tuple2!69400) Bool)

(assert (=> d!2324928 (dynLambda!29931 lambda!469496 lt!2660250)))

(declare-fun choose!58988 (Int) tuple2!69400)

(assert (=> d!2324928 (= lt!2660250 (choose!58988 lambda!469496))))

(assert (=> d!2324928 (Exists!4575 lambda!469496)))

(assert (=> d!2324928 (= (pickWitness!486 lambda!469496) lt!2660250)))

(declare-fun b_lambda!289095 () Bool)

(assert (=> (not b_lambda!289095) (not d!2324928)))

(declare-fun bs!1944548 () Bool)

(assert (= bs!1944548 d!2324928))

(declare-fun m!8161986 () Bool)

(assert (=> bs!1944548 m!8161986))

(declare-fun m!8161988 () Bool)

(assert (=> bs!1944548 m!8161988))

(assert (=> bs!1944548 m!8161700))

(assert (=> b!7637646 d!2324928))

(declare-fun d!2324930 () Bool)

(assert (=> d!2324930 (= (matchR!9924 r!14126 (_2!38003 lt!2660197)) (matchRSpec!4560 r!14126 (_2!38003 lt!2660197)))))

(declare-fun lt!2660251 () Unit!167832)

(assert (=> d!2324930 (= lt!2660251 (choose!58987 r!14126 (_2!38003 lt!2660197)))))

(assert (=> d!2324930 (validRegex!10839 r!14126)))

(assert (=> d!2324930 (= (mainMatchTheorem!4546 r!14126 (_2!38003 lt!2660197)) lt!2660251)))

(declare-fun bs!1944549 () Bool)

(assert (= bs!1944549 d!2324930))

(assert (=> bs!1944549 m!8161718))

(assert (=> bs!1944549 m!8161720))

(declare-fun m!8161990 () Bool)

(assert (=> bs!1944549 m!8161990))

(assert (=> bs!1944549 m!8161740))

(assert (=> b!7637646 d!2324930))

(declare-fun d!2324932 () Bool)

(assert (=> d!2324932 (matchR!9924 (Concat!29266 (reg!20750 r!14126) r!14126) (++!17701 (_1!38003 lt!2660192) (_2!38003 lt!2660192)))))

(declare-fun lt!2660254 () Unit!167832)

(declare-fun choose!58989 (Regex!20421 Regex!20421 List!73272 List!73272 List!73272) Unit!167832)

(assert (=> d!2324932 (= lt!2660254 (choose!58989 (reg!20750 r!14126) r!14126 (_1!38003 lt!2660192) (_2!38003 lt!2660192) s!9605))))

(assert (=> d!2324932 (validRegex!10839 (reg!20750 r!14126))))

(assert (=> d!2324932 (= (lemmaFindSeparationIsDefinedThenConcatMatches!178 (reg!20750 r!14126) r!14126 (_1!38003 lt!2660192) (_2!38003 lt!2660192) s!9605) lt!2660254)))

(declare-fun bs!1944550 () Bool)

(assert (= bs!1944550 d!2324932))

(assert (=> bs!1944550 m!8161738))

(assert (=> bs!1944550 m!8161738))

(declare-fun m!8161992 () Bool)

(assert (=> bs!1944550 m!8161992))

(declare-fun m!8161994 () Bool)

(assert (=> bs!1944550 m!8161994))

(assert (=> bs!1944550 m!8161840))

(assert (=> b!7637641 d!2324932))

(declare-fun b!7638040 () Bool)

(declare-fun e!4540384 () Bool)

(declare-fun e!4540382 () Bool)

(assert (=> b!7638040 (= e!4540384 e!4540382)))

(declare-fun res!3059385 () Bool)

(assert (=> b!7638040 (=> (not res!3059385) (not e!4540382))))

(declare-fun lt!2660255 () Bool)

(assert (=> b!7638040 (= res!3059385 (not lt!2660255))))

(declare-fun b!7638041 () Bool)

(declare-fun res!3059383 () Bool)

(assert (=> b!7638041 (=> res!3059383 e!4540384)))

(declare-fun e!4540383 () Bool)

(assert (=> b!7638041 (= res!3059383 e!4540383)))

(declare-fun res!3059387 () Bool)

(assert (=> b!7638041 (=> (not res!3059387) (not e!4540383))))

(assert (=> b!7638041 (= res!3059387 lt!2660255)))

(declare-fun b!7638042 () Bool)

(declare-fun e!4540381 () Bool)

(declare-fun e!4540385 () Bool)

(assert (=> b!7638042 (= e!4540381 e!4540385)))

(declare-fun c!1406980 () Bool)

(assert (=> b!7638042 (= c!1406980 ((_ is EmptyLang!20421) r!14126))))

(declare-fun b!7638043 () Bool)

(assert (=> b!7638043 (= e!4540383 (= (head!15707 lt!2660189) (c!1406884 r!14126)))))

(declare-fun b!7638044 () Bool)

(declare-fun e!4540387 () Bool)

(assert (=> b!7638044 (= e!4540387 (not (= (head!15707 lt!2660189) (c!1406884 r!14126))))))

(declare-fun b!7638045 () Bool)

(assert (=> b!7638045 (= e!4540385 (not lt!2660255))))

(declare-fun b!7638046 () Bool)

(declare-fun res!3059384 () Bool)

(assert (=> b!7638046 (=> (not res!3059384) (not e!4540383))))

(assert (=> b!7638046 (= res!3059384 (isEmpty!41781 (tail!15247 lt!2660189)))))

(declare-fun b!7638047 () Bool)

(declare-fun res!3059382 () Bool)

(assert (=> b!7638047 (=> (not res!3059382) (not e!4540383))))

(declare-fun call!701029 () Bool)

(assert (=> b!7638047 (= res!3059382 (not call!701029))))

(declare-fun b!7638048 () Bool)

(declare-fun res!3059381 () Bool)

(assert (=> b!7638048 (=> res!3059381 e!4540387)))

(assert (=> b!7638048 (= res!3059381 (not (isEmpty!41781 (tail!15247 lt!2660189))))))

(declare-fun b!7638050 () Bool)

(declare-fun res!3059388 () Bool)

(assert (=> b!7638050 (=> res!3059388 e!4540384)))

(assert (=> b!7638050 (= res!3059388 (not ((_ is ElementMatch!20421) r!14126)))))

(assert (=> b!7638050 (= e!4540385 e!4540384)))

(declare-fun b!7638051 () Bool)

(declare-fun e!4540386 () Bool)

(assert (=> b!7638051 (= e!4540386 (nullable!8934 r!14126))))

(declare-fun b!7638052 () Bool)

(assert (=> b!7638052 (= e!4540382 e!4540387)))

(declare-fun res!3059386 () Bool)

(assert (=> b!7638052 (=> res!3059386 e!4540387)))

(assert (=> b!7638052 (= res!3059386 call!701029)))

(declare-fun b!7638053 () Bool)

(assert (=> b!7638053 (= e!4540386 (matchR!9924 (derivativeStep!5907 r!14126 (head!15707 lt!2660189)) (tail!15247 lt!2660189)))))

(declare-fun bm!701024 () Bool)

(assert (=> bm!701024 (= call!701029 (isEmpty!41781 lt!2660189))))

(declare-fun d!2324934 () Bool)

(assert (=> d!2324934 e!4540381))

(declare-fun c!1406981 () Bool)

(assert (=> d!2324934 (= c!1406981 ((_ is EmptyExpr!20421) r!14126))))

(assert (=> d!2324934 (= lt!2660255 e!4540386)))

(declare-fun c!1406979 () Bool)

(assert (=> d!2324934 (= c!1406979 (isEmpty!41781 lt!2660189))))

(assert (=> d!2324934 (validRegex!10839 r!14126)))

(assert (=> d!2324934 (= (matchR!9924 r!14126 lt!2660189) lt!2660255)))

(declare-fun b!7638049 () Bool)

(assert (=> b!7638049 (= e!4540381 (= lt!2660255 call!701029))))

(assert (= (and d!2324934 c!1406979) b!7638051))

(assert (= (and d!2324934 (not c!1406979)) b!7638053))

(assert (= (and d!2324934 c!1406981) b!7638049))

(assert (= (and d!2324934 (not c!1406981)) b!7638042))

(assert (= (and b!7638042 c!1406980) b!7638045))

(assert (= (and b!7638042 (not c!1406980)) b!7638050))

(assert (= (and b!7638050 (not res!3059388)) b!7638041))

(assert (= (and b!7638041 res!3059387) b!7638047))

(assert (= (and b!7638047 res!3059382) b!7638046))

(assert (= (and b!7638046 res!3059384) b!7638043))

(assert (= (and b!7638041 (not res!3059383)) b!7638040))

(assert (= (and b!7638040 res!3059385) b!7638052))

(assert (= (and b!7638052 (not res!3059386)) b!7638048))

(assert (= (and b!7638048 (not res!3059381)) b!7638044))

(assert (= (or b!7638049 b!7638052 b!7638047) bm!701024))

(assert (=> b!7638051 m!8161872))

(declare-fun m!8161996 () Bool)

(assert (=> b!7638053 m!8161996))

(assert (=> b!7638053 m!8161996))

(declare-fun m!8161998 () Bool)

(assert (=> b!7638053 m!8161998))

(declare-fun m!8162000 () Bool)

(assert (=> b!7638053 m!8162000))

(assert (=> b!7638053 m!8161998))

(assert (=> b!7638053 m!8162000))

(declare-fun m!8162002 () Bool)

(assert (=> b!7638053 m!8162002))

(assert (=> b!7638044 m!8161996))

(declare-fun m!8162004 () Bool)

(assert (=> d!2324934 m!8162004))

(assert (=> d!2324934 m!8161740))

(assert (=> bm!701024 m!8162004))

(assert (=> b!7638046 m!8162000))

(assert (=> b!7638046 m!8162000))

(declare-fun m!8162006 () Bool)

(assert (=> b!7638046 m!8162006))

(assert (=> b!7638048 m!8162000))

(assert (=> b!7638048 m!8162000))

(assert (=> b!7638048 m!8162006))

(assert (=> b!7638043 m!8161996))

(assert (=> b!7637641 d!2324934))

(declare-fun b!7638081 () Bool)

(declare-fun e!4540403 () List!73272)

(assert (=> b!7638081 (= e!4540403 (Cons!73148 (h!79596 (_1!38003 lt!2660192)) (++!17701 (t!388007 (_1!38003 lt!2660192)) (_2!38003 lt!2660192))))))

(declare-fun b!7638083 () Bool)

(declare-fun e!4540402 () Bool)

(declare-fun lt!2660264 () List!73272)

(assert (=> b!7638083 (= e!4540402 (or (not (= (_2!38003 lt!2660192) Nil!73148)) (= lt!2660264 (_1!38003 lt!2660192))))))

(declare-fun b!7638080 () Bool)

(assert (=> b!7638080 (= e!4540403 (_2!38003 lt!2660192))))

(declare-fun b!7638082 () Bool)

(declare-fun res!3059403 () Bool)

(assert (=> b!7638082 (=> (not res!3059403) (not e!4540402))))

(declare-fun size!42583 (List!73272) Int)

(assert (=> b!7638082 (= res!3059403 (= (size!42583 lt!2660264) (+ (size!42583 (_1!38003 lt!2660192)) (size!42583 (_2!38003 lt!2660192)))))))

(declare-fun d!2324936 () Bool)

(assert (=> d!2324936 e!4540402))

(declare-fun res!3059404 () Bool)

(assert (=> d!2324936 (=> (not res!3059404) (not e!4540402))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15490 (List!73272) (InoxSet C!41168))

(assert (=> d!2324936 (= res!3059404 (= (content!15490 lt!2660264) ((_ map or) (content!15490 (_1!38003 lt!2660192)) (content!15490 (_2!38003 lt!2660192)))))))

(assert (=> d!2324936 (= lt!2660264 e!4540403)))

(declare-fun c!1406988 () Bool)

(assert (=> d!2324936 (= c!1406988 ((_ is Nil!73148) (_1!38003 lt!2660192)))))

(assert (=> d!2324936 (= (++!17701 (_1!38003 lt!2660192) (_2!38003 lt!2660192)) lt!2660264)))

(assert (= (and d!2324936 c!1406988) b!7638080))

(assert (= (and d!2324936 (not c!1406988)) b!7638081))

(assert (= (and d!2324936 res!3059404) b!7638082))

(assert (= (and b!7638082 res!3059403) b!7638083))

(declare-fun m!8162008 () Bool)

(assert (=> b!7638081 m!8162008))

(declare-fun m!8162010 () Bool)

(assert (=> b!7638082 m!8162010))

(declare-fun m!8162012 () Bool)

(assert (=> b!7638082 m!8162012))

(declare-fun m!8162014 () Bool)

(assert (=> b!7638082 m!8162014))

(declare-fun m!8162016 () Bool)

(assert (=> d!2324936 m!8162016))

(declare-fun m!8162018 () Bool)

(assert (=> d!2324936 m!8162018))

(declare-fun m!8162020 () Bool)

(assert (=> d!2324936 m!8162020))

(assert (=> b!7637641 d!2324936))

(declare-fun d!2324938 () Bool)

(assert (=> d!2324938 (matchR!9924 (Star!20421 (reg!20750 r!14126)) (++!17701 (_1!38003 lt!2660192) (_2!38003 lt!2660192)))))

(declare-fun lt!2660270 () Unit!167832)

(declare-fun choose!58990 (Regex!20421 List!73272 List!73272) Unit!167832)

(assert (=> d!2324938 (= lt!2660270 (choose!58990 (reg!20750 r!14126) (_1!38003 lt!2660192) (_2!38003 lt!2660192)))))

(assert (=> d!2324938 (validRegex!10839 (Star!20421 (reg!20750 r!14126)))))

(assert (=> d!2324938 (= (lemmaStarApp!208 (reg!20750 r!14126) (_1!38003 lt!2660192) (_2!38003 lt!2660192)) lt!2660270)))

(declare-fun bs!1944551 () Bool)

(assert (= bs!1944551 d!2324938))

(assert (=> bs!1944551 m!8161738))

(assert (=> bs!1944551 m!8161738))

(declare-fun m!8162042 () Bool)

(assert (=> bs!1944551 m!8162042))

(declare-fun m!8162044 () Bool)

(assert (=> bs!1944551 m!8162044))

(declare-fun m!8162046 () Bool)

(assert (=> bs!1944551 m!8162046))

(assert (=> b!7637641 d!2324938))

(declare-fun b!7638093 () Bool)

(declare-fun e!4540412 () Bool)

(declare-fun e!4540410 () Bool)

(assert (=> b!7638093 (= e!4540412 e!4540410)))

(declare-fun res!3059414 () Bool)

(assert (=> b!7638093 (=> (not res!3059414) (not e!4540410))))

(declare-fun lt!2660271 () Bool)

(assert (=> b!7638093 (= res!3059414 (not lt!2660271))))

(declare-fun b!7638094 () Bool)

(declare-fun res!3059412 () Bool)

(assert (=> b!7638094 (=> res!3059412 e!4540412)))

(declare-fun e!4540411 () Bool)

(assert (=> b!7638094 (= res!3059412 e!4540411)))

(declare-fun res!3059416 () Bool)

(assert (=> b!7638094 (=> (not res!3059416) (not e!4540411))))

(assert (=> b!7638094 (= res!3059416 lt!2660271)))

(declare-fun b!7638095 () Bool)

(declare-fun e!4540409 () Bool)

(declare-fun e!4540413 () Bool)

(assert (=> b!7638095 (= e!4540409 e!4540413)))

(declare-fun c!1406992 () Bool)

(assert (=> b!7638095 (= c!1406992 ((_ is EmptyLang!20421) (Concat!29266 (reg!20750 r!14126) r!14126)))))

(declare-fun b!7638096 () Bool)

(assert (=> b!7638096 (= e!4540411 (= (head!15707 lt!2660189) (c!1406884 (Concat!29266 (reg!20750 r!14126) r!14126))))))

(declare-fun b!7638097 () Bool)

(declare-fun e!4540415 () Bool)

(assert (=> b!7638097 (= e!4540415 (not (= (head!15707 lt!2660189) (c!1406884 (Concat!29266 (reg!20750 r!14126) r!14126)))))))

(declare-fun b!7638098 () Bool)

(assert (=> b!7638098 (= e!4540413 (not lt!2660271))))

(declare-fun b!7638099 () Bool)

(declare-fun res!3059413 () Bool)

(assert (=> b!7638099 (=> (not res!3059413) (not e!4540411))))

(assert (=> b!7638099 (= res!3059413 (isEmpty!41781 (tail!15247 lt!2660189)))))

(declare-fun b!7638100 () Bool)

(declare-fun res!3059411 () Bool)

(assert (=> b!7638100 (=> (not res!3059411) (not e!4540411))))

(declare-fun call!701030 () Bool)

(assert (=> b!7638100 (= res!3059411 (not call!701030))))

(declare-fun b!7638101 () Bool)

(declare-fun res!3059410 () Bool)

(assert (=> b!7638101 (=> res!3059410 e!4540415)))

(assert (=> b!7638101 (= res!3059410 (not (isEmpty!41781 (tail!15247 lt!2660189))))))

(declare-fun b!7638103 () Bool)

(declare-fun res!3059417 () Bool)

(assert (=> b!7638103 (=> res!3059417 e!4540412)))

(assert (=> b!7638103 (= res!3059417 (not ((_ is ElementMatch!20421) (Concat!29266 (reg!20750 r!14126) r!14126))))))

(assert (=> b!7638103 (= e!4540413 e!4540412)))

(declare-fun b!7638104 () Bool)

(declare-fun e!4540414 () Bool)

(assert (=> b!7638104 (= e!4540414 (nullable!8934 (Concat!29266 (reg!20750 r!14126) r!14126)))))

(declare-fun b!7638105 () Bool)

(assert (=> b!7638105 (= e!4540410 e!4540415)))

(declare-fun res!3059415 () Bool)

(assert (=> b!7638105 (=> res!3059415 e!4540415)))

(assert (=> b!7638105 (= res!3059415 call!701030)))

(declare-fun b!7638106 () Bool)

(assert (=> b!7638106 (= e!4540414 (matchR!9924 (derivativeStep!5907 (Concat!29266 (reg!20750 r!14126) r!14126) (head!15707 lt!2660189)) (tail!15247 lt!2660189)))))

(declare-fun bm!701025 () Bool)

(assert (=> bm!701025 (= call!701030 (isEmpty!41781 lt!2660189))))

(declare-fun d!2324942 () Bool)

(assert (=> d!2324942 e!4540409))

(declare-fun c!1406993 () Bool)

(assert (=> d!2324942 (= c!1406993 ((_ is EmptyExpr!20421) (Concat!29266 (reg!20750 r!14126) r!14126)))))

(assert (=> d!2324942 (= lt!2660271 e!4540414)))

(declare-fun c!1406991 () Bool)

(assert (=> d!2324942 (= c!1406991 (isEmpty!41781 lt!2660189))))

(assert (=> d!2324942 (validRegex!10839 (Concat!29266 (reg!20750 r!14126) r!14126))))

(assert (=> d!2324942 (= (matchR!9924 (Concat!29266 (reg!20750 r!14126) r!14126) lt!2660189) lt!2660271)))

(declare-fun b!7638102 () Bool)

(assert (=> b!7638102 (= e!4540409 (= lt!2660271 call!701030))))

(assert (= (and d!2324942 c!1406991) b!7638104))

(assert (= (and d!2324942 (not c!1406991)) b!7638106))

(assert (= (and d!2324942 c!1406993) b!7638102))

(assert (= (and d!2324942 (not c!1406993)) b!7638095))

(assert (= (and b!7638095 c!1406992) b!7638098))

(assert (= (and b!7638095 (not c!1406992)) b!7638103))

(assert (= (and b!7638103 (not res!3059417)) b!7638094))

(assert (= (and b!7638094 res!3059416) b!7638100))

(assert (= (and b!7638100 res!3059411) b!7638099))

(assert (= (and b!7638099 res!3059413) b!7638096))

(assert (= (and b!7638094 (not res!3059412)) b!7638093))

(assert (= (and b!7638093 res!3059414) b!7638105))

(assert (= (and b!7638105 (not res!3059415)) b!7638101))

(assert (= (and b!7638101 (not res!3059410)) b!7638097))

(assert (= (or b!7638102 b!7638105 b!7638100) bm!701025))

(declare-fun m!8162048 () Bool)

(assert (=> b!7638104 m!8162048))

(assert (=> b!7638106 m!8161996))

(assert (=> b!7638106 m!8161996))

(declare-fun m!8162050 () Bool)

(assert (=> b!7638106 m!8162050))

(assert (=> b!7638106 m!8162000))

(assert (=> b!7638106 m!8162050))

(assert (=> b!7638106 m!8162000))

(declare-fun m!8162052 () Bool)

(assert (=> b!7638106 m!8162052))

(assert (=> b!7638097 m!8161996))

(assert (=> d!2324942 m!8162004))

(declare-fun m!8162054 () Bool)

(assert (=> d!2324942 m!8162054))

(assert (=> bm!701025 m!8162004))

(assert (=> b!7638099 m!8162000))

(assert (=> b!7638099 m!8162000))

(assert (=> b!7638099 m!8162006))

(assert (=> b!7638101 m!8162000))

(assert (=> b!7638101 m!8162000))

(assert (=> b!7638101 m!8162006))

(assert (=> b!7638096 m!8161996))

(assert (=> b!7637641 d!2324942))

(declare-fun b!7638107 () Bool)

(declare-fun e!4540419 () Bool)

(declare-fun e!4540417 () Bool)

(assert (=> b!7638107 (= e!4540419 e!4540417)))

(declare-fun res!3059422 () Bool)

(assert (=> b!7638107 (=> (not res!3059422) (not e!4540417))))

(declare-fun lt!2660272 () Bool)

(assert (=> b!7638107 (= res!3059422 (not lt!2660272))))

(declare-fun b!7638108 () Bool)

(declare-fun res!3059420 () Bool)

(assert (=> b!7638108 (=> res!3059420 e!4540419)))

(declare-fun e!4540418 () Bool)

(assert (=> b!7638108 (= res!3059420 e!4540418)))

(declare-fun res!3059424 () Bool)

(assert (=> b!7638108 (=> (not res!3059424) (not e!4540418))))

(assert (=> b!7638108 (= res!3059424 lt!2660272)))

(declare-fun b!7638109 () Bool)

(declare-fun e!4540416 () Bool)

(declare-fun e!4540420 () Bool)

(assert (=> b!7638109 (= e!4540416 e!4540420)))

(declare-fun c!1406995 () Bool)

(assert (=> b!7638109 (= c!1406995 ((_ is EmptyLang!20421) r!14126))))

(declare-fun b!7638110 () Bool)

(assert (=> b!7638110 (= e!4540418 (= (head!15707 s!9605) (c!1406884 r!14126)))))

(declare-fun b!7638111 () Bool)

(declare-fun e!4540422 () Bool)

(assert (=> b!7638111 (= e!4540422 (not (= (head!15707 s!9605) (c!1406884 r!14126))))))

(declare-fun b!7638112 () Bool)

(assert (=> b!7638112 (= e!4540420 (not lt!2660272))))

(declare-fun b!7638113 () Bool)

(declare-fun res!3059421 () Bool)

(assert (=> b!7638113 (=> (not res!3059421) (not e!4540418))))

(assert (=> b!7638113 (= res!3059421 (isEmpty!41781 (tail!15247 s!9605)))))

(declare-fun b!7638114 () Bool)

(declare-fun res!3059419 () Bool)

(assert (=> b!7638114 (=> (not res!3059419) (not e!4540418))))

(declare-fun call!701031 () Bool)

(assert (=> b!7638114 (= res!3059419 (not call!701031))))

(declare-fun b!7638115 () Bool)

(declare-fun res!3059418 () Bool)

(assert (=> b!7638115 (=> res!3059418 e!4540422)))

(assert (=> b!7638115 (= res!3059418 (not (isEmpty!41781 (tail!15247 s!9605))))))

(declare-fun b!7638117 () Bool)

(declare-fun res!3059425 () Bool)

(assert (=> b!7638117 (=> res!3059425 e!4540419)))

(assert (=> b!7638117 (= res!3059425 (not ((_ is ElementMatch!20421) r!14126)))))

(assert (=> b!7638117 (= e!4540420 e!4540419)))

(declare-fun b!7638118 () Bool)

(declare-fun e!4540421 () Bool)

(assert (=> b!7638118 (= e!4540421 (nullable!8934 r!14126))))

(declare-fun b!7638119 () Bool)

(assert (=> b!7638119 (= e!4540417 e!4540422)))

(declare-fun res!3059423 () Bool)

(assert (=> b!7638119 (=> res!3059423 e!4540422)))

(assert (=> b!7638119 (= res!3059423 call!701031)))

(declare-fun b!7638120 () Bool)

(assert (=> b!7638120 (= e!4540421 (matchR!9924 (derivativeStep!5907 r!14126 (head!15707 s!9605)) (tail!15247 s!9605)))))

(declare-fun bm!701026 () Bool)

(assert (=> bm!701026 (= call!701031 (isEmpty!41781 s!9605))))

(declare-fun d!2324944 () Bool)

(assert (=> d!2324944 e!4540416))

(declare-fun c!1406996 () Bool)

(assert (=> d!2324944 (= c!1406996 ((_ is EmptyExpr!20421) r!14126))))

(assert (=> d!2324944 (= lt!2660272 e!4540421)))

(declare-fun c!1406994 () Bool)

(assert (=> d!2324944 (= c!1406994 (isEmpty!41781 s!9605))))

(assert (=> d!2324944 (validRegex!10839 r!14126)))

(assert (=> d!2324944 (= (matchR!9924 r!14126 s!9605) lt!2660272)))

(declare-fun b!7638116 () Bool)

(assert (=> b!7638116 (= e!4540416 (= lt!2660272 call!701031))))

(assert (= (and d!2324944 c!1406994) b!7638118))

(assert (= (and d!2324944 (not c!1406994)) b!7638120))

(assert (= (and d!2324944 c!1406996) b!7638116))

(assert (= (and d!2324944 (not c!1406996)) b!7638109))

(assert (= (and b!7638109 c!1406995) b!7638112))

(assert (= (and b!7638109 (not c!1406995)) b!7638117))

(assert (= (and b!7638117 (not res!3059425)) b!7638108))

(assert (= (and b!7638108 res!3059424) b!7638114))

(assert (= (and b!7638114 res!3059419) b!7638113))

(assert (= (and b!7638113 res!3059421) b!7638110))

(assert (= (and b!7638108 (not res!3059420)) b!7638107))

(assert (= (and b!7638107 res!3059422) b!7638119))

(assert (= (and b!7638119 (not res!3059423)) b!7638115))

(assert (= (and b!7638115 (not res!3059418)) b!7638111))

(assert (= (or b!7638116 b!7638119 b!7638114) bm!701026))

(assert (=> b!7638118 m!8161872))

(declare-fun m!8162056 () Bool)

(assert (=> b!7638120 m!8162056))

(assert (=> b!7638120 m!8162056))

(declare-fun m!8162058 () Bool)

(assert (=> b!7638120 m!8162058))

(declare-fun m!8162060 () Bool)

(assert (=> b!7638120 m!8162060))

(assert (=> b!7638120 m!8162058))

(assert (=> b!7638120 m!8162060))

(declare-fun m!8162062 () Bool)

(assert (=> b!7638120 m!8162062))

(assert (=> b!7638111 m!8162056))

(assert (=> d!2324944 m!8161698))

(assert (=> d!2324944 m!8161740))

(assert (=> bm!701026 m!8161698))

(assert (=> b!7638113 m!8162060))

(assert (=> b!7638113 m!8162060))

(declare-fun m!8162064 () Bool)

(assert (=> b!7638113 m!8162064))

(assert (=> b!7638115 m!8162060))

(assert (=> b!7638115 m!8162060))

(assert (=> b!7638115 m!8162064))

(assert (=> b!7638110 m!8162056))

(assert (=> b!7637652 d!2324944))

(assert (=> b!7637652 d!2324858))

(declare-fun bs!1944552 () Bool)

(declare-fun b!7638127 () Bool)

(assert (= bs!1944552 (and b!7638127 b!7637648)))

(declare-fun lambda!469521 () Int)

(assert (=> bs!1944552 (= (and (= (_1!38003 lt!2660192) s!9605) (= (reg!20750 (reg!20750 r!14126)) (reg!20750 r!14126)) (= (reg!20750 r!14126) r!14126)) (= lambda!469521 lambda!469497))))

(declare-fun bs!1944553 () Bool)

(assert (= bs!1944553 (and b!7638127 b!7638021)))

(assert (=> bs!1944553 (= (= (_1!38003 lt!2660192) (_1!38003 lt!2660197)) (= lambda!469521 lambda!469518))))

(declare-fun bs!1944554 () Bool)

(assert (= bs!1944554 (and b!7638127 b!7638022)))

(assert (=> bs!1944554 (not (= lambda!469521 lambda!469520))))

(declare-fun bs!1944555 () Bool)

(assert (= bs!1944555 (and b!7638127 d!2324874)))

(assert (=> bs!1944555 (not (= lambda!469521 lambda!469500))))

(declare-fun bs!1944556 () Bool)

(assert (= bs!1944556 (and b!7638127 b!7637640)))

(assert (=> bs!1944556 (not (= lambda!469521 lambda!469496))))

(declare-fun bs!1944557 () Bool)

(assert (= bs!1944557 (and b!7638127 b!7637999)))

(assert (=> bs!1944557 (= (and (= (_1!38003 lt!2660192) (_2!38003 lt!2660197)) (= (reg!20750 (reg!20750 r!14126)) (reg!20750 r!14126)) (= (reg!20750 r!14126) r!14126)) (= lambda!469521 lambda!469515))))

(declare-fun bs!1944558 () Bool)

(assert (= bs!1944558 (and b!7638127 b!7638000)))

(assert (=> bs!1944558 (not (= lambda!469521 lambda!469516))))

(assert (=> b!7638127 true))

(assert (=> b!7638127 true))

(declare-fun bs!1944559 () Bool)

(declare-fun b!7638128 () Bool)

(assert (= bs!1944559 (and b!7638128 b!7637648)))

(declare-fun lambda!469524 () Int)

(assert (=> bs!1944559 (not (= lambda!469524 lambda!469497))))

(declare-fun bs!1944560 () Bool)

(assert (= bs!1944560 (and b!7638128 b!7638021)))

(assert (=> bs!1944560 (not (= lambda!469524 lambda!469518))))

(declare-fun bs!1944561 () Bool)

(assert (= bs!1944561 (and b!7638128 b!7638022)))

(assert (=> bs!1944561 (= (= (_1!38003 lt!2660192) (_1!38003 lt!2660197)) (= lambda!469524 lambda!469520))))

(declare-fun bs!1944562 () Bool)

(assert (= bs!1944562 (and b!7638128 d!2324874)))

(assert (=> bs!1944562 (not (= lambda!469524 lambda!469500))))

(declare-fun bs!1944563 () Bool)

(assert (= bs!1944563 (and b!7638128 b!7637640)))

(assert (=> bs!1944563 (not (= lambda!469524 lambda!469496))))

(declare-fun bs!1944564 () Bool)

(assert (= bs!1944564 (and b!7638128 b!7638127)))

(assert (=> bs!1944564 (not (= lambda!469524 lambda!469521))))

(declare-fun bs!1944565 () Bool)

(assert (= bs!1944565 (and b!7638128 b!7637999)))

(assert (=> bs!1944565 (not (= lambda!469524 lambda!469515))))

(declare-fun bs!1944566 () Bool)

(assert (= bs!1944566 (and b!7638128 b!7638000)))

(assert (=> bs!1944566 (= (and (= (_1!38003 lt!2660192) (_2!38003 lt!2660197)) (= (regOne!41354 (reg!20750 r!14126)) (regOne!41354 r!14126)) (= (regTwo!41354 (reg!20750 r!14126)) (regTwo!41354 r!14126))) (= lambda!469524 lambda!469516))))

(assert (=> b!7638128 true))

(assert (=> b!7638128 true))

(declare-fun b!7638121 () Bool)

(declare-fun res!3059426 () Bool)

(declare-fun e!4540429 () Bool)

(assert (=> b!7638121 (=> res!3059426 e!4540429)))

(declare-fun call!701033 () Bool)

(assert (=> b!7638121 (= res!3059426 call!701033)))

(declare-fun e!4540428 () Bool)

(assert (=> b!7638121 (= e!4540428 e!4540429)))

(declare-fun d!2324946 () Bool)

(declare-fun c!1406997 () Bool)

(assert (=> d!2324946 (= c!1406997 ((_ is EmptyExpr!20421) (reg!20750 r!14126)))))

(declare-fun e!4540425 () Bool)

(assert (=> d!2324946 (= (matchRSpec!4560 (reg!20750 r!14126) (_1!38003 lt!2660192)) e!4540425)))

(declare-fun b!7638122 () Bool)

(declare-fun e!4540424 () Bool)

(assert (=> b!7638122 (= e!4540424 e!4540428)))

(declare-fun c!1407000 () Bool)

(assert (=> b!7638122 (= c!1407000 ((_ is Star!20421) (reg!20750 r!14126)))))

(declare-fun b!7638123 () Bool)

(declare-fun e!4540423 () Bool)

(assert (=> b!7638123 (= e!4540425 e!4540423)))

(declare-fun res!3059427 () Bool)

(assert (=> b!7638123 (= res!3059427 (not ((_ is EmptyLang!20421) (reg!20750 r!14126))))))

(assert (=> b!7638123 (=> (not res!3059427) (not e!4540423))))

(declare-fun b!7638124 () Bool)

(declare-fun c!1406999 () Bool)

(assert (=> b!7638124 (= c!1406999 ((_ is ElementMatch!20421) (reg!20750 r!14126)))))

(declare-fun e!4540426 () Bool)

(assert (=> b!7638124 (= e!4540423 e!4540426)))

(declare-fun b!7638125 () Bool)

(declare-fun c!1406998 () Bool)

(assert (=> b!7638125 (= c!1406998 ((_ is Union!20421) (reg!20750 r!14126)))))

(assert (=> b!7638125 (= e!4540426 e!4540424)))

(declare-fun b!7638126 () Bool)

(assert (=> b!7638126 (= e!4540425 call!701033)))

(declare-fun call!701032 () Bool)

(assert (=> b!7638127 (= e!4540429 call!701032)))

(assert (=> b!7638128 (= e!4540428 call!701032)))

(declare-fun b!7638129 () Bool)

(declare-fun e!4540427 () Bool)

(assert (=> b!7638129 (= e!4540424 e!4540427)))

(declare-fun res!3059428 () Bool)

(assert (=> b!7638129 (= res!3059428 (matchRSpec!4560 (regOne!41355 (reg!20750 r!14126)) (_1!38003 lt!2660192)))))

(assert (=> b!7638129 (=> res!3059428 e!4540427)))

(declare-fun bm!701027 () Bool)

(assert (=> bm!701027 (= call!701032 (Exists!4575 (ite c!1407000 lambda!469521 lambda!469524)))))

(declare-fun b!7638130 () Bool)

(assert (=> b!7638130 (= e!4540427 (matchRSpec!4560 (regTwo!41355 (reg!20750 r!14126)) (_1!38003 lt!2660192)))))

(declare-fun bm!701028 () Bool)

(assert (=> bm!701028 (= call!701033 (isEmpty!41781 (_1!38003 lt!2660192)))))

(declare-fun b!7638131 () Bool)

(assert (=> b!7638131 (= e!4540426 (= (_1!38003 lt!2660192) (Cons!73148 (c!1406884 (reg!20750 r!14126)) Nil!73148)))))

(assert (= (and d!2324946 c!1406997) b!7638126))

(assert (= (and d!2324946 (not c!1406997)) b!7638123))

(assert (= (and b!7638123 res!3059427) b!7638124))

(assert (= (and b!7638124 c!1406999) b!7638131))

(assert (= (and b!7638124 (not c!1406999)) b!7638125))

(assert (= (and b!7638125 c!1406998) b!7638129))

(assert (= (and b!7638125 (not c!1406998)) b!7638122))

(assert (= (and b!7638129 (not res!3059428)) b!7638130))

(assert (= (and b!7638122 c!1407000) b!7638121))

(assert (= (and b!7638122 (not c!1407000)) b!7638128))

(assert (= (and b!7638121 (not res!3059426)) b!7638127))

(assert (= (or b!7638127 b!7638128) bm!701027))

(assert (= (or b!7638126 b!7638121) bm!701028))

(declare-fun m!8162066 () Bool)

(assert (=> b!7638129 m!8162066))

(declare-fun m!8162068 () Bool)

(assert (=> bm!701027 m!8162068))

(declare-fun m!8162070 () Bool)

(assert (=> b!7638130 m!8162070))

(declare-fun m!8162072 () Bool)

(assert (=> bm!701028 m!8162072))

(assert (=> b!7637652 d!2324946))

(declare-fun bs!1944574 () Bool)

(declare-fun b!7638142 () Bool)

(assert (= bs!1944574 (and b!7638142 b!7637648)))

(declare-fun lambda!469526 () Int)

(assert (=> bs!1944574 (= (= (_2!38003 lt!2660192) s!9605) (= lambda!469526 lambda!469497))))

(declare-fun bs!1944576 () Bool)

(assert (= bs!1944576 (and b!7638142 b!7638021)))

(assert (=> bs!1944576 (= (and (= (_2!38003 lt!2660192) (_1!38003 lt!2660197)) (= (reg!20750 r!14126) (reg!20750 (reg!20750 r!14126))) (= r!14126 (reg!20750 r!14126))) (= lambda!469526 lambda!469518))))

(declare-fun bs!1944578 () Bool)

(assert (= bs!1944578 (and b!7638142 b!7638022)))

(assert (=> bs!1944578 (not (= lambda!469526 lambda!469520))))

(declare-fun bs!1944580 () Bool)

(assert (= bs!1944580 (and b!7638142 d!2324874)))

(assert (=> bs!1944580 (not (= lambda!469526 lambda!469500))))

(declare-fun bs!1944581 () Bool)

(assert (= bs!1944581 (and b!7638142 b!7637640)))

(assert (=> bs!1944581 (not (= lambda!469526 lambda!469496))))

(declare-fun bs!1944582 () Bool)

(assert (= bs!1944582 (and b!7638142 b!7638127)))

(assert (=> bs!1944582 (= (and (= (_2!38003 lt!2660192) (_1!38003 lt!2660192)) (= (reg!20750 r!14126) (reg!20750 (reg!20750 r!14126))) (= r!14126 (reg!20750 r!14126))) (= lambda!469526 lambda!469521))))

(declare-fun bs!1944584 () Bool)

(assert (= bs!1944584 (and b!7638142 b!7638128)))

(assert (=> bs!1944584 (not (= lambda!469526 lambda!469524))))

(declare-fun bs!1944585 () Bool)

(assert (= bs!1944585 (and b!7638142 b!7637999)))

(assert (=> bs!1944585 (= (= (_2!38003 lt!2660192) (_2!38003 lt!2660197)) (= lambda!469526 lambda!469515))))

(declare-fun bs!1944586 () Bool)

(assert (= bs!1944586 (and b!7638142 b!7638000)))

(assert (=> bs!1944586 (not (= lambda!469526 lambda!469516))))

(assert (=> b!7638142 true))

(assert (=> b!7638142 true))

(declare-fun bs!1944587 () Bool)

(declare-fun b!7638143 () Bool)

(assert (= bs!1944587 (and b!7638143 b!7637648)))

(declare-fun lambda!469527 () Int)

(assert (=> bs!1944587 (not (= lambda!469527 lambda!469497))))

(declare-fun bs!1944588 () Bool)

(assert (= bs!1944588 (and b!7638143 b!7638021)))

(assert (=> bs!1944588 (not (= lambda!469527 lambda!469518))))

(declare-fun bs!1944589 () Bool)

(assert (= bs!1944589 (and b!7638143 b!7638022)))

(assert (=> bs!1944589 (= (and (= (_2!38003 lt!2660192) (_1!38003 lt!2660197)) (= (regOne!41354 r!14126) (regOne!41354 (reg!20750 r!14126))) (= (regTwo!41354 r!14126) (regTwo!41354 (reg!20750 r!14126)))) (= lambda!469527 lambda!469520))))

(declare-fun bs!1944590 () Bool)

(assert (= bs!1944590 (and b!7638143 b!7638142)))

(assert (=> bs!1944590 (not (= lambda!469527 lambda!469526))))

(declare-fun bs!1944591 () Bool)

(assert (= bs!1944591 (and b!7638143 d!2324874)))

(assert (=> bs!1944591 (not (= lambda!469527 lambda!469500))))

(declare-fun bs!1944592 () Bool)

(assert (= bs!1944592 (and b!7638143 b!7637640)))

(assert (=> bs!1944592 (not (= lambda!469527 lambda!469496))))

(declare-fun bs!1944593 () Bool)

(assert (= bs!1944593 (and b!7638143 b!7638127)))

(assert (=> bs!1944593 (not (= lambda!469527 lambda!469521))))

(declare-fun bs!1944594 () Bool)

(assert (= bs!1944594 (and b!7638143 b!7638128)))

(assert (=> bs!1944594 (= (and (= (_2!38003 lt!2660192) (_1!38003 lt!2660192)) (= (regOne!41354 r!14126) (regOne!41354 (reg!20750 r!14126))) (= (regTwo!41354 r!14126) (regTwo!41354 (reg!20750 r!14126)))) (= lambda!469527 lambda!469524))))

(declare-fun bs!1944595 () Bool)

(assert (= bs!1944595 (and b!7638143 b!7637999)))

(assert (=> bs!1944595 (not (= lambda!469527 lambda!469515))))

(declare-fun bs!1944596 () Bool)

(assert (= bs!1944596 (and b!7638143 b!7638000)))

(assert (=> bs!1944596 (= (= (_2!38003 lt!2660192) (_2!38003 lt!2660197)) (= lambda!469527 lambda!469516))))

(assert (=> b!7638143 true))

(assert (=> b!7638143 true))

(declare-fun b!7638136 () Bool)

(declare-fun res!3059433 () Bool)

(declare-fun e!4540438 () Bool)

(assert (=> b!7638136 (=> res!3059433 e!4540438)))

(declare-fun call!701035 () Bool)

(assert (=> b!7638136 (= res!3059433 call!701035)))

(declare-fun e!4540437 () Bool)

(assert (=> b!7638136 (= e!4540437 e!4540438)))

(declare-fun d!2324948 () Bool)

(declare-fun c!1407001 () Bool)

(assert (=> d!2324948 (= c!1407001 ((_ is EmptyExpr!20421) r!14126))))

(declare-fun e!4540434 () Bool)

(assert (=> d!2324948 (= (matchRSpec!4560 r!14126 (_2!38003 lt!2660192)) e!4540434)))

(declare-fun b!7638137 () Bool)

(declare-fun e!4540433 () Bool)

(assert (=> b!7638137 (= e!4540433 e!4540437)))

(declare-fun c!1407004 () Bool)

(assert (=> b!7638137 (= c!1407004 ((_ is Star!20421) r!14126))))

(declare-fun b!7638138 () Bool)

(declare-fun e!4540432 () Bool)

(assert (=> b!7638138 (= e!4540434 e!4540432)))

(declare-fun res!3059434 () Bool)

(assert (=> b!7638138 (= res!3059434 (not ((_ is EmptyLang!20421) r!14126)))))

(assert (=> b!7638138 (=> (not res!3059434) (not e!4540432))))

(declare-fun b!7638139 () Bool)

(declare-fun c!1407003 () Bool)

(assert (=> b!7638139 (= c!1407003 ((_ is ElementMatch!20421) r!14126))))

(declare-fun e!4540435 () Bool)

(assert (=> b!7638139 (= e!4540432 e!4540435)))

(declare-fun b!7638140 () Bool)

(declare-fun c!1407002 () Bool)

(assert (=> b!7638140 (= c!1407002 ((_ is Union!20421) r!14126))))

(assert (=> b!7638140 (= e!4540435 e!4540433)))

(declare-fun b!7638141 () Bool)

(assert (=> b!7638141 (= e!4540434 call!701035)))

(declare-fun call!701034 () Bool)

(assert (=> b!7638142 (= e!4540438 call!701034)))

(assert (=> b!7638143 (= e!4540437 call!701034)))

(declare-fun b!7638144 () Bool)

(declare-fun e!4540436 () Bool)

(assert (=> b!7638144 (= e!4540433 e!4540436)))

(declare-fun res!3059435 () Bool)

(assert (=> b!7638144 (= res!3059435 (matchRSpec!4560 (regOne!41355 r!14126) (_2!38003 lt!2660192)))))

(assert (=> b!7638144 (=> res!3059435 e!4540436)))

(declare-fun bm!701029 () Bool)

(assert (=> bm!701029 (= call!701034 (Exists!4575 (ite c!1407004 lambda!469526 lambda!469527)))))

(declare-fun b!7638145 () Bool)

(assert (=> b!7638145 (= e!4540436 (matchRSpec!4560 (regTwo!41355 r!14126) (_2!38003 lt!2660192)))))

(declare-fun bm!701030 () Bool)

(assert (=> bm!701030 (= call!701035 (isEmpty!41781 (_2!38003 lt!2660192)))))

(declare-fun b!7638146 () Bool)

(assert (=> b!7638146 (= e!4540435 (= (_2!38003 lt!2660192) (Cons!73148 (c!1406884 r!14126) Nil!73148)))))

(assert (= (and d!2324948 c!1407001) b!7638141))

(assert (= (and d!2324948 (not c!1407001)) b!7638138))

(assert (= (and b!7638138 res!3059434) b!7638139))

(assert (= (and b!7638139 c!1407003) b!7638146))

(assert (= (and b!7638139 (not c!1407003)) b!7638140))

(assert (= (and b!7638140 c!1407002) b!7638144))

(assert (= (and b!7638140 (not c!1407002)) b!7638137))

(assert (= (and b!7638144 (not res!3059435)) b!7638145))

(assert (= (and b!7638137 c!1407004) b!7638136))

(assert (= (and b!7638137 (not c!1407004)) b!7638143))

(assert (= (and b!7638136 (not res!3059433)) b!7638142))

(assert (= (or b!7638142 b!7638143) bm!701029))

(assert (= (or b!7638141 b!7638136) bm!701030))

(declare-fun m!8162080 () Bool)

(assert (=> b!7638144 m!8162080))

(declare-fun m!8162082 () Bool)

(assert (=> bm!701029 m!8162082))

(declare-fun m!8162084 () Bool)

(assert (=> b!7638145 m!8162084))

(declare-fun m!8162086 () Bool)

(assert (=> bm!701030 m!8162086))

(assert (=> b!7637652 d!2324948))

(declare-fun d!2324954 () Bool)

(assert (=> d!2324954 (= (get!25896 lt!2660195) (v!54628 lt!2660195))))

(assert (=> b!7637652 d!2324954))

(declare-fun b!7638165 () Bool)

(declare-fun e!4540456 () Bool)

(declare-fun e!4540454 () Bool)

(assert (=> b!7638165 (= e!4540456 e!4540454)))

(declare-fun res!3059450 () Bool)

(assert (=> b!7638165 (=> (not res!3059450) (not e!4540454))))

(declare-fun lt!2660276 () Bool)

(assert (=> b!7638165 (= res!3059450 (not lt!2660276))))

(declare-fun b!7638166 () Bool)

(declare-fun res!3059448 () Bool)

(assert (=> b!7638166 (=> res!3059448 e!4540456)))

(declare-fun e!4540455 () Bool)

(assert (=> b!7638166 (= res!3059448 e!4540455)))

(declare-fun res!3059452 () Bool)

(assert (=> b!7638166 (=> (not res!3059452) (not e!4540455))))

(assert (=> b!7638166 (= res!3059452 lt!2660276)))

(declare-fun b!7638167 () Bool)

(declare-fun e!4540453 () Bool)

(declare-fun e!4540457 () Bool)

(assert (=> b!7638167 (= e!4540453 e!4540457)))

(declare-fun c!1407010 () Bool)

(assert (=> b!7638167 (= c!1407010 ((_ is EmptyLang!20421) (reg!20750 r!14126)))))

(declare-fun b!7638168 () Bool)

(assert (=> b!7638168 (= e!4540455 (= (head!15707 (_1!38003 lt!2660192)) (c!1406884 (reg!20750 r!14126))))))

(declare-fun b!7638169 () Bool)

(declare-fun e!4540459 () Bool)

(assert (=> b!7638169 (= e!4540459 (not (= (head!15707 (_1!38003 lt!2660192)) (c!1406884 (reg!20750 r!14126)))))))

(declare-fun b!7638170 () Bool)

(assert (=> b!7638170 (= e!4540457 (not lt!2660276))))

(declare-fun b!7638171 () Bool)

(declare-fun res!3059449 () Bool)

(assert (=> b!7638171 (=> (not res!3059449) (not e!4540455))))

(assert (=> b!7638171 (= res!3059449 (isEmpty!41781 (tail!15247 (_1!38003 lt!2660192))))))

(declare-fun b!7638172 () Bool)

(declare-fun res!3059447 () Bool)

(assert (=> b!7638172 (=> (not res!3059447) (not e!4540455))))

(declare-fun call!701040 () Bool)

(assert (=> b!7638172 (= res!3059447 (not call!701040))))

(declare-fun b!7638173 () Bool)

(declare-fun res!3059446 () Bool)

(assert (=> b!7638173 (=> res!3059446 e!4540459)))

(assert (=> b!7638173 (= res!3059446 (not (isEmpty!41781 (tail!15247 (_1!38003 lt!2660192)))))))

(declare-fun b!7638175 () Bool)

(declare-fun res!3059453 () Bool)

(assert (=> b!7638175 (=> res!3059453 e!4540456)))

(assert (=> b!7638175 (= res!3059453 (not ((_ is ElementMatch!20421) (reg!20750 r!14126))))))

(assert (=> b!7638175 (= e!4540457 e!4540456)))

(declare-fun b!7638176 () Bool)

(declare-fun e!4540458 () Bool)

(assert (=> b!7638176 (= e!4540458 (nullable!8934 (reg!20750 r!14126)))))

(declare-fun b!7638177 () Bool)

(assert (=> b!7638177 (= e!4540454 e!4540459)))

(declare-fun res!3059451 () Bool)

(assert (=> b!7638177 (=> res!3059451 e!4540459)))

(assert (=> b!7638177 (= res!3059451 call!701040)))

(declare-fun b!7638178 () Bool)

(assert (=> b!7638178 (= e!4540458 (matchR!9924 (derivativeStep!5907 (reg!20750 r!14126) (head!15707 (_1!38003 lt!2660192))) (tail!15247 (_1!38003 lt!2660192))))))

(declare-fun bm!701035 () Bool)

(assert (=> bm!701035 (= call!701040 (isEmpty!41781 (_1!38003 lt!2660192)))))

(declare-fun d!2324956 () Bool)

(assert (=> d!2324956 e!4540453))

(declare-fun c!1407011 () Bool)

(assert (=> d!2324956 (= c!1407011 ((_ is EmptyExpr!20421) (reg!20750 r!14126)))))

(assert (=> d!2324956 (= lt!2660276 e!4540458)))

(declare-fun c!1407009 () Bool)

(assert (=> d!2324956 (= c!1407009 (isEmpty!41781 (_1!38003 lt!2660192)))))

(assert (=> d!2324956 (validRegex!10839 (reg!20750 r!14126))))

(assert (=> d!2324956 (= (matchR!9924 (reg!20750 r!14126) (_1!38003 lt!2660192)) lt!2660276)))

(declare-fun b!7638174 () Bool)

(assert (=> b!7638174 (= e!4540453 (= lt!2660276 call!701040))))

(assert (= (and d!2324956 c!1407009) b!7638176))

(assert (= (and d!2324956 (not c!1407009)) b!7638178))

(assert (= (and d!2324956 c!1407011) b!7638174))

(assert (= (and d!2324956 (not c!1407011)) b!7638167))

(assert (= (and b!7638167 c!1407010) b!7638170))

(assert (= (and b!7638167 (not c!1407010)) b!7638175))

(assert (= (and b!7638175 (not res!3059453)) b!7638166))

(assert (= (and b!7638166 res!3059452) b!7638172))

(assert (= (and b!7638172 res!3059447) b!7638171))

(assert (= (and b!7638171 res!3059449) b!7638168))

(assert (= (and b!7638166 (not res!3059448)) b!7638165))

(assert (= (and b!7638165 res!3059450) b!7638177))

(assert (= (and b!7638177 (not res!3059451)) b!7638173))

(assert (= (and b!7638173 (not res!3059446)) b!7638169))

(assert (= (or b!7638174 b!7638177 b!7638172) bm!701035))

(assert (=> b!7638176 m!8161712))

(declare-fun m!8162088 () Bool)

(assert (=> b!7638178 m!8162088))

(assert (=> b!7638178 m!8162088))

(declare-fun m!8162090 () Bool)

(assert (=> b!7638178 m!8162090))

(declare-fun m!8162092 () Bool)

(assert (=> b!7638178 m!8162092))

(assert (=> b!7638178 m!8162090))

(assert (=> b!7638178 m!8162092))

(declare-fun m!8162094 () Bool)

(assert (=> b!7638178 m!8162094))

(assert (=> b!7638169 m!8162088))

(assert (=> d!2324956 m!8162072))

(assert (=> d!2324956 m!8161840))

(assert (=> bm!701035 m!8162072))

(assert (=> b!7638171 m!8162092))

(assert (=> b!7638171 m!8162092))

(declare-fun m!8162096 () Bool)

(assert (=> b!7638171 m!8162096))

(assert (=> b!7638173 m!8162092))

(assert (=> b!7638173 m!8162092))

(assert (=> b!7638173 m!8162096))

(assert (=> b!7638168 m!8162088))

(assert (=> b!7637652 d!2324956))

(declare-fun d!2324958 () Bool)

(assert (=> d!2324958 (= (matchR!9924 r!14126 (_2!38003 lt!2660192)) (matchRSpec!4560 r!14126 (_2!38003 lt!2660192)))))

(declare-fun lt!2660277 () Unit!167832)

(assert (=> d!2324958 (= lt!2660277 (choose!58987 r!14126 (_2!38003 lt!2660192)))))

(assert (=> d!2324958 (validRegex!10839 r!14126)))

(assert (=> d!2324958 (= (mainMatchTheorem!4546 r!14126 (_2!38003 lt!2660192)) lt!2660277)))

(declare-fun bs!1944597 () Bool)

(assert (= bs!1944597 d!2324958))

(assert (=> bs!1944597 m!8161754))

(assert (=> bs!1944597 m!8161742))

(declare-fun m!8162098 () Bool)

(assert (=> bs!1944597 m!8162098))

(assert (=> bs!1944597 m!8161740))

(assert (=> b!7637652 d!2324958))

(declare-fun b!7638179 () Bool)

(declare-fun e!4540463 () Bool)

(declare-fun e!4540461 () Bool)

(assert (=> b!7638179 (= e!4540463 e!4540461)))

(declare-fun res!3059458 () Bool)

(assert (=> b!7638179 (=> (not res!3059458) (not e!4540461))))

(declare-fun lt!2660278 () Bool)

(assert (=> b!7638179 (= res!3059458 (not lt!2660278))))

(declare-fun b!7638180 () Bool)

(declare-fun res!3059456 () Bool)

(assert (=> b!7638180 (=> res!3059456 e!4540463)))

(declare-fun e!4540462 () Bool)

(assert (=> b!7638180 (= res!3059456 e!4540462)))

(declare-fun res!3059460 () Bool)

(assert (=> b!7638180 (=> (not res!3059460) (not e!4540462))))

(assert (=> b!7638180 (= res!3059460 lt!2660278)))

(declare-fun b!7638181 () Bool)

(declare-fun e!4540460 () Bool)

(declare-fun e!4540464 () Bool)

(assert (=> b!7638181 (= e!4540460 e!4540464)))

(declare-fun c!1407013 () Bool)

(assert (=> b!7638181 (= c!1407013 ((_ is EmptyLang!20421) r!14126))))

(declare-fun b!7638182 () Bool)

(assert (=> b!7638182 (= e!4540462 (= (head!15707 (_2!38003 lt!2660192)) (c!1406884 r!14126)))))

(declare-fun b!7638183 () Bool)

(declare-fun e!4540466 () Bool)

(assert (=> b!7638183 (= e!4540466 (not (= (head!15707 (_2!38003 lt!2660192)) (c!1406884 r!14126))))))

(declare-fun b!7638184 () Bool)

(assert (=> b!7638184 (= e!4540464 (not lt!2660278))))

(declare-fun b!7638185 () Bool)

(declare-fun res!3059457 () Bool)

(assert (=> b!7638185 (=> (not res!3059457) (not e!4540462))))

(assert (=> b!7638185 (= res!3059457 (isEmpty!41781 (tail!15247 (_2!38003 lt!2660192))))))

(declare-fun b!7638186 () Bool)

(declare-fun res!3059455 () Bool)

(assert (=> b!7638186 (=> (not res!3059455) (not e!4540462))))

(declare-fun call!701043 () Bool)

(assert (=> b!7638186 (= res!3059455 (not call!701043))))

(declare-fun b!7638187 () Bool)

(declare-fun res!3059454 () Bool)

(assert (=> b!7638187 (=> res!3059454 e!4540466)))

(assert (=> b!7638187 (= res!3059454 (not (isEmpty!41781 (tail!15247 (_2!38003 lt!2660192)))))))

(declare-fun b!7638189 () Bool)

(declare-fun res!3059461 () Bool)

(assert (=> b!7638189 (=> res!3059461 e!4540463)))

(assert (=> b!7638189 (= res!3059461 (not ((_ is ElementMatch!20421) r!14126)))))

(assert (=> b!7638189 (= e!4540464 e!4540463)))

(declare-fun b!7638190 () Bool)

(declare-fun e!4540465 () Bool)

(assert (=> b!7638190 (= e!4540465 (nullable!8934 r!14126))))

(declare-fun b!7638191 () Bool)

(assert (=> b!7638191 (= e!4540461 e!4540466)))

(declare-fun res!3059459 () Bool)

(assert (=> b!7638191 (=> res!3059459 e!4540466)))

(assert (=> b!7638191 (= res!3059459 call!701043)))

(declare-fun b!7638192 () Bool)

(assert (=> b!7638192 (= e!4540465 (matchR!9924 (derivativeStep!5907 r!14126 (head!15707 (_2!38003 lt!2660192))) (tail!15247 (_2!38003 lt!2660192))))))

(declare-fun bm!701038 () Bool)

(assert (=> bm!701038 (= call!701043 (isEmpty!41781 (_2!38003 lt!2660192)))))

(declare-fun d!2324960 () Bool)

(assert (=> d!2324960 e!4540460))

(declare-fun c!1407014 () Bool)

(assert (=> d!2324960 (= c!1407014 ((_ is EmptyExpr!20421) r!14126))))

(assert (=> d!2324960 (= lt!2660278 e!4540465)))

(declare-fun c!1407012 () Bool)

(assert (=> d!2324960 (= c!1407012 (isEmpty!41781 (_2!38003 lt!2660192)))))

(assert (=> d!2324960 (validRegex!10839 r!14126)))

(assert (=> d!2324960 (= (matchR!9924 r!14126 (_2!38003 lt!2660192)) lt!2660278)))

(declare-fun b!7638188 () Bool)

(assert (=> b!7638188 (= e!4540460 (= lt!2660278 call!701043))))

(assert (= (and d!2324960 c!1407012) b!7638190))

(assert (= (and d!2324960 (not c!1407012)) b!7638192))

(assert (= (and d!2324960 c!1407014) b!7638188))

(assert (= (and d!2324960 (not c!1407014)) b!7638181))

(assert (= (and b!7638181 c!1407013) b!7638184))

(assert (= (and b!7638181 (not c!1407013)) b!7638189))

(assert (= (and b!7638189 (not res!3059461)) b!7638180))

(assert (= (and b!7638180 res!3059460) b!7638186))

(assert (= (and b!7638186 res!3059455) b!7638185))

(assert (= (and b!7638185 res!3059457) b!7638182))

(assert (= (and b!7638180 (not res!3059456)) b!7638179))

(assert (= (and b!7638179 res!3059458) b!7638191))

(assert (= (and b!7638191 (not res!3059459)) b!7638187))

(assert (= (and b!7638187 (not res!3059454)) b!7638183))

(assert (= (or b!7638188 b!7638191 b!7638186) bm!701038))

(assert (=> b!7638190 m!8161872))

(declare-fun m!8162100 () Bool)

(assert (=> b!7638192 m!8162100))

(assert (=> b!7638192 m!8162100))

(declare-fun m!8162102 () Bool)

(assert (=> b!7638192 m!8162102))

(declare-fun m!8162104 () Bool)

(assert (=> b!7638192 m!8162104))

(assert (=> b!7638192 m!8162102))

(assert (=> b!7638192 m!8162104))

(declare-fun m!8162106 () Bool)

(assert (=> b!7638192 m!8162106))

(assert (=> b!7638183 m!8162100))

(assert (=> d!2324960 m!8162086))

(assert (=> d!2324960 m!8161740))

(assert (=> bm!701038 m!8162086))

(assert (=> b!7638185 m!8162104))

(assert (=> b!7638185 m!8162104))

(declare-fun m!8162108 () Bool)

(assert (=> b!7638185 m!8162108))

(assert (=> b!7638187 m!8162104))

(assert (=> b!7638187 m!8162104))

(assert (=> b!7638187 m!8162108))

(assert (=> b!7638182 m!8162100))

(assert (=> b!7637652 d!2324960))

(declare-fun d!2324962 () Bool)

(assert (=> d!2324962 (= (matchR!9924 (reg!20750 r!14126) (_1!38003 lt!2660192)) (matchRSpec!4560 (reg!20750 r!14126) (_1!38003 lt!2660192)))))

(declare-fun lt!2660279 () Unit!167832)

(assert (=> d!2324962 (= lt!2660279 (choose!58987 (reg!20750 r!14126) (_1!38003 lt!2660192)))))

(assert (=> d!2324962 (validRegex!10839 (reg!20750 r!14126))))

(assert (=> d!2324962 (= (mainMatchTheorem!4546 (reg!20750 r!14126) (_1!38003 lt!2660192)) lt!2660279)))

(declare-fun bs!1944598 () Bool)

(assert (= bs!1944598 d!2324962))

(assert (=> bs!1944598 m!8161752))

(assert (=> bs!1944598 m!8161750))

(declare-fun m!8162110 () Bool)

(assert (=> bs!1944598 m!8162110))

(assert (=> bs!1944598 m!8161840))

(assert (=> b!7637652 d!2324962))

(declare-fun d!2324964 () Bool)

(assert (=> d!2324964 (= (isEmpty!41781 s!9605) ((_ is Nil!73148) s!9605))))

(assert (=> b!7637642 d!2324964))

(declare-fun d!2324966 () Bool)

(assert (=> d!2324966 (= (Exists!4575 lambda!469497) (choose!58982 lambda!469497))))

(declare-fun bs!1944599 () Bool)

(assert (= bs!1944599 d!2324966))

(declare-fun m!8162112 () Bool)

(assert (=> bs!1944599 m!8162112))

(assert (=> b!7637648 d!2324966))

(declare-fun d!2324968 () Bool)

(assert (=> d!2324968 (Exists!4575 lambda!469497)))

(declare-fun lt!2660282 () Unit!167832)

(declare-fun choose!58993 (tuple2!69400 Int) Unit!167832)

(assert (=> d!2324968 (= lt!2660282 (choose!58993 lt!2660197 lambda!469497))))

(assert (=> d!2324968 (dynLambda!29931 lambda!469497 lt!2660197)))

(assert (=> d!2324968 (= (ExistsThe!54 lt!2660197 lambda!469497) lt!2660282)))

(declare-fun b_lambda!289097 () Bool)

(assert (=> (not b_lambda!289097) (not d!2324968)))

(declare-fun bs!1944600 () Bool)

(assert (= bs!1944600 d!2324968))

(assert (=> bs!1944600 m!8161724))

(declare-fun m!8162118 () Bool)

(assert (=> bs!1944600 m!8162118))

(declare-fun m!8162120 () Bool)

(assert (=> bs!1944600 m!8162120))

(assert (=> b!7637648 d!2324968))

(declare-fun b!7638250 () Bool)

(declare-fun e!4540486 () Bool)

(declare-fun tp!2229500 () Bool)

(declare-fun tp!2229501 () Bool)

(assert (=> b!7638250 (= e!4540486 (and tp!2229500 tp!2229501))))

(declare-fun b!7638249 () Bool)

(declare-fun tp!2229498 () Bool)

(assert (=> b!7638249 (= e!4540486 tp!2229498)))

(assert (=> b!7637649 (= tp!2229448 e!4540486)))

(declare-fun b!7638248 () Bool)

(declare-fun tp!2229499 () Bool)

(declare-fun tp!2229502 () Bool)

(assert (=> b!7638248 (= e!4540486 (and tp!2229499 tp!2229502))))

(declare-fun b!7638247 () Bool)

(assert (=> b!7638247 (= e!4540486 tp_is_empty!51197)))

(assert (= (and b!7637649 ((_ is ElementMatch!20421) (reg!20750 r!14126))) b!7638247))

(assert (= (and b!7637649 ((_ is Concat!29266) (reg!20750 r!14126))) b!7638248))

(assert (= (and b!7637649 ((_ is Star!20421) (reg!20750 r!14126))) b!7638249))

(assert (= (and b!7637649 ((_ is Union!20421) (reg!20750 r!14126))) b!7638250))

(declare-fun b!7638256 () Bool)

(declare-fun e!4540488 () Bool)

(declare-fun tp!2229505 () Bool)

(declare-fun tp!2229506 () Bool)

(assert (=> b!7638256 (= e!4540488 (and tp!2229505 tp!2229506))))

(declare-fun b!7638255 () Bool)

(declare-fun tp!2229503 () Bool)

(assert (=> b!7638255 (= e!4540488 tp!2229503)))

(assert (=> b!7637645 (= tp!2229449 e!4540488)))

(declare-fun b!7638254 () Bool)

(declare-fun tp!2229504 () Bool)

(declare-fun tp!2229507 () Bool)

(assert (=> b!7638254 (= e!4540488 (and tp!2229504 tp!2229507))))

(declare-fun b!7638253 () Bool)

(assert (=> b!7638253 (= e!4540488 tp_is_empty!51197)))

(assert (= (and b!7637645 ((_ is ElementMatch!20421) (regOne!41355 r!14126))) b!7638253))

(assert (= (and b!7637645 ((_ is Concat!29266) (regOne!41355 r!14126))) b!7638254))

(assert (= (and b!7637645 ((_ is Star!20421) (regOne!41355 r!14126))) b!7638255))

(assert (= (and b!7637645 ((_ is Union!20421) (regOne!41355 r!14126))) b!7638256))

(declare-fun b!7638260 () Bool)

(declare-fun e!4540489 () Bool)

(declare-fun tp!2229510 () Bool)

(declare-fun tp!2229511 () Bool)

(assert (=> b!7638260 (= e!4540489 (and tp!2229510 tp!2229511))))

(declare-fun b!7638259 () Bool)

(declare-fun tp!2229508 () Bool)

(assert (=> b!7638259 (= e!4540489 tp!2229508)))

(assert (=> b!7637645 (= tp!2229445 e!4540489)))

(declare-fun b!7638258 () Bool)

(declare-fun tp!2229509 () Bool)

(declare-fun tp!2229512 () Bool)

(assert (=> b!7638258 (= e!4540489 (and tp!2229509 tp!2229512))))

(declare-fun b!7638257 () Bool)

(assert (=> b!7638257 (= e!4540489 tp_is_empty!51197)))

(assert (= (and b!7637645 ((_ is ElementMatch!20421) (regTwo!41355 r!14126))) b!7638257))

(assert (= (and b!7637645 ((_ is Concat!29266) (regTwo!41355 r!14126))) b!7638258))

(assert (= (and b!7637645 ((_ is Star!20421) (regTwo!41355 r!14126))) b!7638259))

(assert (= (and b!7637645 ((_ is Union!20421) (regTwo!41355 r!14126))) b!7638260))

(declare-fun b!7638267 () Bool)

(declare-fun e!4540491 () Bool)

(declare-fun tp!2229515 () Bool)

(declare-fun tp!2229516 () Bool)

(assert (=> b!7638267 (= e!4540491 (and tp!2229515 tp!2229516))))

(declare-fun b!7638266 () Bool)

(declare-fun tp!2229513 () Bool)

(assert (=> b!7638266 (= e!4540491 tp!2229513)))

(assert (=> b!7637651 (= tp!2229446 e!4540491)))

(declare-fun b!7638265 () Bool)

(declare-fun tp!2229514 () Bool)

(declare-fun tp!2229517 () Bool)

(assert (=> b!7638265 (= e!4540491 (and tp!2229514 tp!2229517))))

(declare-fun b!7638264 () Bool)

(assert (=> b!7638264 (= e!4540491 tp_is_empty!51197)))

(assert (= (and b!7637651 ((_ is ElementMatch!20421) (regOne!41354 r!14126))) b!7638264))

(assert (= (and b!7637651 ((_ is Concat!29266) (regOne!41354 r!14126))) b!7638265))

(assert (= (and b!7637651 ((_ is Star!20421) (regOne!41354 r!14126))) b!7638266))

(assert (= (and b!7637651 ((_ is Union!20421) (regOne!41354 r!14126))) b!7638267))

(declare-fun b!7638271 () Bool)

(declare-fun e!4540492 () Bool)

(declare-fun tp!2229520 () Bool)

(declare-fun tp!2229521 () Bool)

(assert (=> b!7638271 (= e!4540492 (and tp!2229520 tp!2229521))))

(declare-fun b!7638270 () Bool)

(declare-fun tp!2229518 () Bool)

(assert (=> b!7638270 (= e!4540492 tp!2229518)))

(assert (=> b!7637651 (= tp!2229447 e!4540492)))

(declare-fun b!7638269 () Bool)

(declare-fun tp!2229519 () Bool)

(declare-fun tp!2229522 () Bool)

(assert (=> b!7638269 (= e!4540492 (and tp!2229519 tp!2229522))))

(declare-fun b!7638268 () Bool)

(assert (=> b!7638268 (= e!4540492 tp_is_empty!51197)))

(assert (= (and b!7637651 ((_ is ElementMatch!20421) (regTwo!41354 r!14126))) b!7638268))

(assert (= (and b!7637651 ((_ is Concat!29266) (regTwo!41354 r!14126))) b!7638269))

(assert (= (and b!7637651 ((_ is Star!20421) (regTwo!41354 r!14126))) b!7638270))

(assert (= (and b!7637651 ((_ is Union!20421) (regTwo!41354 r!14126))) b!7638271))

(declare-fun b!7638276 () Bool)

(declare-fun e!4540495 () Bool)

(declare-fun tp!2229525 () Bool)

(assert (=> b!7638276 (= e!4540495 (and tp_is_empty!51197 tp!2229525))))

(assert (=> b!7637653 (= tp!2229444 e!4540495)))

(assert (= (and b!7637653 ((_ is Cons!73148) (t!388007 s!9605))) b!7638276))

(declare-fun b_lambda!289103 () Bool)

(assert (= b_lambda!289095 (or b!7637640 b_lambda!289103)))

(declare-fun bs!1944603 () Bool)

(declare-fun d!2324974 () Bool)

(assert (= bs!1944603 (and d!2324974 b!7637640)))

(declare-fun res!3059472 () Bool)

(declare-fun e!4540496 () Bool)

(assert (=> bs!1944603 (=> (not res!3059472) (not e!4540496))))

(assert (=> bs!1944603 (= res!3059472 (= (++!17701 (_1!38003 lt!2660250) (_2!38003 lt!2660250)) s!9605))))

(assert (=> bs!1944603 (= (dynLambda!29931 lambda!469496 lt!2660250) e!4540496)))

(declare-fun b!7638277 () Bool)

(declare-fun res!3059473 () Bool)

(assert (=> b!7638277 (=> (not res!3059473) (not e!4540496))))

(assert (=> b!7638277 (= res!3059473 (matchR!9924 (reg!20750 r!14126) (_1!38003 lt!2660250)))))

(declare-fun b!7638278 () Bool)

(assert (=> b!7638278 (= e!4540496 (matchR!9924 r!14126 (_2!38003 lt!2660250)))))

(assert (= (and bs!1944603 res!3059472) b!7638277))

(assert (= (and b!7638277 res!3059473) b!7638278))

(declare-fun m!8162130 () Bool)

(assert (=> bs!1944603 m!8162130))

(declare-fun m!8162132 () Bool)

(assert (=> b!7638277 m!8162132))

(declare-fun m!8162134 () Bool)

(assert (=> b!7638278 m!8162134))

(assert (=> d!2324928 d!2324974))

(declare-fun b_lambda!289105 () Bool)

(assert (= b_lambda!289097 (or b!7637648 b_lambda!289105)))

(declare-fun bs!1944604 () Bool)

(declare-fun d!2324976 () Bool)

(assert (= bs!1944604 (and d!2324976 b!7637648)))

(declare-fun res!3059474 () Bool)

(declare-fun e!4540497 () Bool)

(assert (=> bs!1944604 (=> (not res!3059474) (not e!4540497))))

(assert (=> bs!1944604 (= res!3059474 (= (++!17701 (_1!38003 lt!2660197) (_2!38003 lt!2660197)) s!9605))))

(assert (=> bs!1944604 (= (dynLambda!29931 lambda!469497 lt!2660197) e!4540497)))

(declare-fun b!7638279 () Bool)

(declare-fun res!3059475 () Bool)

(assert (=> b!7638279 (=> (not res!3059475) (not e!4540497))))

(assert (=> b!7638279 (= res!3059475 (not (isEmpty!41781 (_1!38003 lt!2660197))))))

(declare-fun b!7638280 () Bool)

(declare-fun res!3059476 () Bool)

(assert (=> b!7638280 (=> (not res!3059476) (not e!4540497))))

(assert (=> b!7638280 (= res!3059476 (matchRSpec!4560 (reg!20750 r!14126) (_1!38003 lt!2660197)))))

(declare-fun b!7638281 () Bool)

(assert (=> b!7638281 (= e!4540497 (matchRSpec!4560 r!14126 (_2!38003 lt!2660197)))))

(assert (= (and bs!1944604 res!3059474) b!7638279))

(assert (= (and b!7638279 res!3059475) b!7638280))

(assert (= (and b!7638280 res!3059476) b!7638281))

(declare-fun m!8162136 () Bool)

(assert (=> bs!1944604 m!8162136))

(assert (=> b!7638279 m!8161728))

(assert (=> b!7638280 m!8161714))

(assert (=> b!7638281 m!8161720))

(assert (=> d!2324968 d!2324976))

(check-sat (not d!2324956) (not b!7638082) (not b!7638053) (not b!7638115) (not b!7638266) (not b!7638281) (not b!7638002) (not b!7638276) (not b!7638280) (not bs!1944603) (not d!2324930) (not b!7637773) (not d!2324938) (not b!7638111) (not d!2324960) (not bm!701024) (not b!7638113) (not bm!700990) (not b!7638183) (not b!7638023) (not b!7637777) (not b!7638248) (not b!7638110) (not b!7638001) (not b!7638187) (not bm!701022) (not b!7638254) (not bm!701030) (not d!2324918) (not b!7638190) (not b!7638267) (not b!7638037) (not b!7638024) (not b!7638130) (not b_lambda!289103) (not b!7638260) (not b!7638255) (not b!7638169) (not b!7638250) (not d!2324944) (not b!7638101) (not b!7638032) (not b!7637774) (not d!2324958) (not b!7638044) (not d!2324928) (not d!2324942) (not b!7637889) (not b!7638182) (not bm!701017) (not d!2324968) (not b!7638043) (not b!7638277) (not b!7638129) (not b!7637886) (not b!7638106) (not b!7638145) (not b!7638030) tp_is_empty!51197 (not b!7638104) (not b!7637778) (not b!7638029) (not b!7638046) (not d!2324880) (not bm!701025) (not b!7638097) (not bm!700988) (not b!7638144) (not b!7638051) (not b!7638120) (not b_lambda!289105) (not b!7638171) (not b!7638118) (not b!7638259) (not bm!701021) (not b!7638096) (not b!7638249) (not b!7638278) (not b!7638173) (not bs!1944604) (not d!2324858) (not d!2324874) (not b!7638265) (not b!7638176) (not b!7638039) (not b!7637891) (not bm!701023) (not b!7638178) (not d!2324932) (not d!2324966) (not d!2324934) (not d!2324924) (not b!7638034) (not bm!701035) (not b!7638099) (not bm!701005) (not b!7637894) (not d!2324936) (not bm!701038) (not b!7638269) (not b!7638081) (not bm!701027) (not b!7638279) (not bm!701028) (not d!2324862) (not b!7637887) (not bm!701018) (not b!7638270) (not b!7638258) (not b!7637775) (not b!7637896) (not d!2324920) (not b!7638048) (not d!2324860) (not b!7637684) (not d!2324962) (not b!7637771) (not b!7638192) (not b!7638168) (not b!7638271) (not bm!701029) (not b!7638256) (not bm!701026) (not b!7638185))
(check-sat)
