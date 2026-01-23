; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235810 () Bool)

(assert start!235810)

(declare-fun b!2405163 () Bool)

(declare-fun e!1531850 () Bool)

(declare-datatypes ((C!14262 0))(
  ( (C!14263 (val!8373 Int)) )
))
(declare-datatypes ((Regex!7052 0))(
  ( (ElementMatch!7052 (c!383084 C!14262)) (Concat!11688 (regOne!14616 Regex!7052) (regTwo!14616 Regex!7052)) (EmptyExpr!7052) (Star!7052 (reg!7381 Regex!7052)) (EmptyLang!7052) (Union!7052 (regOne!14617 Regex!7052) (regTwo!14617 Regex!7052)) )
))
(declare-datatypes ((List!28342 0))(
  ( (Nil!28244) (Cons!28244 (h!33645 Regex!7052) (t!208319 List!28342)) )
))
(declare-fun l!9164 () List!28342)

(assert (=> b!2405163 (= e!1531850 (not (= l!9164 Nil!28244)))))

(declare-fun res!1021643 () Bool)

(declare-fun e!1531849 () Bool)

(assert (=> start!235810 (=> (not res!1021643) (not e!1531849))))

(declare-fun lambda!90450 () Int)

(declare-fun forall!5686 (List!28342 Int) Bool)

(assert (=> start!235810 (= res!1021643 (forall!5686 l!9164 lambda!90450))))

(assert (=> start!235810 e!1531849))

(declare-fun e!1531851 () Bool)

(assert (=> start!235810 e!1531851))

(declare-fun e!1531847 () Bool)

(assert (=> start!235810 e!1531847))

(declare-fun e!1531848 () Bool)

(assert (=> start!235810 e!1531848))

(declare-fun b!2405164 () Bool)

(declare-fun res!1021644 () Bool)

(assert (=> b!2405164 (=> (not res!1021644) (not e!1531849))))

(declare-fun r!13927 () Regex!7052)

(declare-fun generalisedConcat!153 (List!28342) Regex!7052)

(assert (=> b!2405164 (= res!1021644 (= r!13927 (generalisedConcat!153 l!9164)))))

(declare-fun b!2405165 () Bool)

(declare-fun tp!765282 () Bool)

(declare-fun tp!765276 () Bool)

(assert (=> b!2405165 (= e!1531851 (and tp!765282 tp!765276))))

(declare-fun b!2405166 () Bool)

(declare-fun tp!765277 () Bool)

(assert (=> b!2405166 (= e!1531847 tp!765277)))

(declare-fun b!2405167 () Bool)

(assert (=> b!2405167 (= e!1531849 (not e!1531850))))

(declare-fun res!1021642 () Bool)

(assert (=> b!2405167 (=> res!1021642 e!1531850)))

(assert (=> b!2405167 (= res!1021642 (or (is-Concat!11688 r!13927) (is-EmptyExpr!7052 r!13927)))))

(declare-datatypes ((List!28343 0))(
  ( (Nil!28245) (Cons!28245 (h!33646 C!14262) (t!208320 List!28343)) )
))
(declare-fun s!9460 () List!28343)

(declare-fun matchR!3169 (Regex!7052 List!28343) Bool)

(declare-fun matchRSpec!901 (Regex!7052 List!28343) Bool)

(assert (=> b!2405167 (= (matchR!3169 r!13927 s!9460) (matchRSpec!901 r!13927 s!9460))))

(declare-datatypes ((Unit!41375 0))(
  ( (Unit!41376) )
))
(declare-fun lt!872929 () Unit!41375)

(declare-fun mainMatchTheorem!901 (Regex!7052 List!28343) Unit!41375)

(assert (=> b!2405167 (= lt!872929 (mainMatchTheorem!901 r!13927 s!9460))))

(declare-fun b!2405168 () Bool)

(declare-fun tp!765280 () Bool)

(declare-fun tp!765283 () Bool)

(assert (=> b!2405168 (= e!1531847 (and tp!765280 tp!765283))))

(declare-fun b!2405169 () Bool)

(declare-fun res!1021641 () Bool)

(assert (=> b!2405169 (=> res!1021641 e!1531850)))

(declare-fun isEmpty!16250 (List!28342) Bool)

(assert (=> b!2405169 (= res!1021641 (isEmpty!16250 l!9164))))

(declare-fun b!2405170 () Bool)

(declare-fun tp!765279 () Bool)

(declare-fun tp!765278 () Bool)

(assert (=> b!2405170 (= e!1531847 (and tp!765279 tp!765278))))

(declare-fun b!2405171 () Bool)

(declare-fun tp_is_empty!11517 () Bool)

(declare-fun tp!765281 () Bool)

(assert (=> b!2405171 (= e!1531848 (and tp_is_empty!11517 tp!765281))))

(declare-fun b!2405172 () Bool)

(assert (=> b!2405172 (= e!1531847 tp_is_empty!11517)))

(assert (= (and start!235810 res!1021643) b!2405164))

(assert (= (and b!2405164 res!1021644) b!2405167))

(assert (= (and b!2405167 (not res!1021642)) b!2405169))

(assert (= (and b!2405169 (not res!1021641)) b!2405163))

(assert (= (and start!235810 (is-Cons!28244 l!9164)) b!2405165))

(assert (= (and start!235810 (is-ElementMatch!7052 r!13927)) b!2405172))

(assert (= (and start!235810 (is-Concat!11688 r!13927)) b!2405170))

(assert (= (and start!235810 (is-Star!7052 r!13927)) b!2405166))

(assert (= (and start!235810 (is-Union!7052 r!13927)) b!2405168))

(assert (= (and start!235810 (is-Cons!28245 s!9460)) b!2405171))

(declare-fun m!2799647 () Bool)

(assert (=> start!235810 m!2799647))

(declare-fun m!2799649 () Bool)

(assert (=> b!2405164 m!2799649))

(declare-fun m!2799651 () Bool)

(assert (=> b!2405167 m!2799651))

(declare-fun m!2799653 () Bool)

(assert (=> b!2405167 m!2799653))

(declare-fun m!2799655 () Bool)

(assert (=> b!2405167 m!2799655))

(declare-fun m!2799657 () Bool)

(assert (=> b!2405169 m!2799657))

(push 1)

(assert (not b!2405165))

(assert (not b!2405170))

(assert (not b!2405171))

(assert (not b!2405164))

(assert (not b!2405168))

(assert (not b!2405166))

(assert (not b!2405167))

(assert (not start!235810))

(assert tp_is_empty!11517)

(assert (not b!2405169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!700011 () Bool)

(declare-fun res!1021661 () Bool)

(declare-fun e!1531871 () Bool)

(assert (=> d!700011 (=> res!1021661 e!1531871)))

(assert (=> d!700011 (= res!1021661 (is-Nil!28244 l!9164))))

(assert (=> d!700011 (= (forall!5686 l!9164 lambda!90450) e!1531871)))

(declare-fun b!2405207 () Bool)

(declare-fun e!1531872 () Bool)

(assert (=> b!2405207 (= e!1531871 e!1531872)))

(declare-fun res!1021662 () Bool)

(assert (=> b!2405207 (=> (not res!1021662) (not e!1531872))))

(declare-fun dynLambda!12164 (Int Regex!7052) Bool)

(assert (=> b!2405207 (= res!1021662 (dynLambda!12164 lambda!90450 (h!33645 l!9164)))))

(declare-fun b!2405208 () Bool)

(assert (=> b!2405208 (= e!1531872 (forall!5686 (t!208319 l!9164) lambda!90450))))

(assert (= (and d!700011 (not res!1021661)) b!2405207))

(assert (= (and b!2405207 res!1021662) b!2405208))

(declare-fun b_lambda!74395 () Bool)

(assert (=> (not b_lambda!74395) (not b!2405207)))

(declare-fun m!2799671 () Bool)

(assert (=> b!2405207 m!2799671))

(declare-fun m!2799673 () Bool)

(assert (=> b!2405208 m!2799673))

(assert (=> start!235810 d!700011))

(declare-fun bs!463273 () Bool)

(declare-fun d!700015 () Bool)

(assert (= bs!463273 (and d!700015 start!235810)))

(declare-fun lambda!90456 () Int)

(assert (=> bs!463273 (= lambda!90456 lambda!90450)))

(declare-fun b!2405229 () Bool)

(declare-fun e!1531889 () Regex!7052)

(assert (=> b!2405229 (= e!1531889 (Concat!11688 (h!33645 l!9164) (generalisedConcat!153 (t!208319 l!9164))))))

(declare-fun b!2405230 () Bool)

(declare-fun e!1531887 () Regex!7052)

(assert (=> b!2405230 (= e!1531887 e!1531889)))

(declare-fun c!383097 () Bool)

(assert (=> b!2405230 (= c!383097 (is-Cons!28244 l!9164))))

(declare-fun b!2405231 () Bool)

(assert (=> b!2405231 (= e!1531889 EmptyExpr!7052)))

(declare-fun b!2405232 () Bool)

(declare-fun e!1531890 () Bool)

(declare-fun e!1531886 () Bool)

(assert (=> b!2405232 (= e!1531890 e!1531886)))

(declare-fun c!383094 () Bool)

(declare-fun tail!3601 (List!28342) List!28342)

(assert (=> b!2405232 (= c!383094 (isEmpty!16250 (tail!3601 l!9164)))))

(declare-fun b!2405233 () Bool)

(declare-fun lt!872935 () Regex!7052)

(declare-fun isConcat!120 (Regex!7052) Bool)

(assert (=> b!2405233 (= e!1531886 (isConcat!120 lt!872935))))

(declare-fun b!2405234 () Bool)

(declare-fun e!1531888 () Bool)

(assert (=> b!2405234 (= e!1531888 e!1531890)))

(declare-fun c!383095 () Bool)

(assert (=> b!2405234 (= c!383095 (isEmpty!16250 l!9164))))

(declare-fun b!2405235 () Bool)

(declare-fun isEmptyExpr!120 (Regex!7052) Bool)

(assert (=> b!2405235 (= e!1531890 (isEmptyExpr!120 lt!872935))))

(assert (=> d!700015 e!1531888))

(declare-fun res!1021667 () Bool)

(assert (=> d!700015 (=> (not res!1021667) (not e!1531888))))

(declare-fun validRegex!2777 (Regex!7052) Bool)

(assert (=> d!700015 (= res!1021667 (validRegex!2777 lt!872935))))

(assert (=> d!700015 (= lt!872935 e!1531887)))

(declare-fun c!383096 () Bool)

(declare-fun e!1531885 () Bool)

(assert (=> d!700015 (= c!383096 e!1531885)))

(declare-fun res!1021668 () Bool)

(assert (=> d!700015 (=> (not res!1021668) (not e!1531885))))

(assert (=> d!700015 (= res!1021668 (is-Cons!28244 l!9164))))

(assert (=> d!700015 (forall!5686 l!9164 lambda!90456)))

(assert (=> d!700015 (= (generalisedConcat!153 l!9164) lt!872935)))

(declare-fun b!2405236 () Bool)

(assert (=> b!2405236 (= e!1531887 (h!33645 l!9164))))

(declare-fun b!2405237 () Bool)

(assert (=> b!2405237 (= e!1531885 (isEmpty!16250 (t!208319 l!9164)))))

(declare-fun b!2405238 () Bool)

(declare-fun head!5331 (List!28342) Regex!7052)

(assert (=> b!2405238 (= e!1531886 (= lt!872935 (head!5331 l!9164)))))

(assert (= (and d!700015 res!1021668) b!2405237))

(assert (= (and d!700015 c!383096) b!2405236))

(assert (= (and d!700015 (not c!383096)) b!2405230))

(assert (= (and b!2405230 c!383097) b!2405229))

(assert (= (and b!2405230 (not c!383097)) b!2405231))

(assert (= (and d!700015 res!1021667) b!2405234))

(assert (= (and b!2405234 c!383095) b!2405235))

(assert (= (and b!2405234 (not c!383095)) b!2405232))

(assert (= (and b!2405232 c!383094) b!2405238))

(assert (= (and b!2405232 (not c!383094)) b!2405233))

(declare-fun m!2799675 () Bool)

(assert (=> b!2405235 m!2799675))

(declare-fun m!2799677 () Bool)

(assert (=> b!2405237 m!2799677))

(assert (=> b!2405234 m!2799657))

(declare-fun m!2799679 () Bool)

(assert (=> d!700015 m!2799679))

(declare-fun m!2799681 () Bool)

(assert (=> d!700015 m!2799681))

(declare-fun m!2799683 () Bool)

(assert (=> b!2405232 m!2799683))

(assert (=> b!2405232 m!2799683))

(declare-fun m!2799685 () Bool)

(assert (=> b!2405232 m!2799685))

(declare-fun m!2799687 () Bool)

(assert (=> b!2405229 m!2799687))

(declare-fun m!2799689 () Bool)

(assert (=> b!2405233 m!2799689))

(declare-fun m!2799691 () Bool)

(assert (=> b!2405238 m!2799691))

(assert (=> b!2405164 d!700015))

(declare-fun d!700019 () Bool)

(assert (=> d!700019 (= (isEmpty!16250 l!9164) (is-Nil!28244 l!9164))))

(assert (=> b!2405169 d!700019))

(declare-fun b!2405295 () Bool)

(declare-fun res!1021706 () Bool)

(declare-fun e!1531923 () Bool)

(assert (=> b!2405295 (=> res!1021706 e!1531923)))

(assert (=> b!2405295 (= res!1021706 (not (is-ElementMatch!7052 r!13927)))))

(declare-fun e!1531920 () Bool)

(assert (=> b!2405295 (= e!1531920 e!1531923)))

(declare-fun b!2405296 () Bool)

(declare-fun res!1021703 () Bool)

(declare-fun e!1531925 () Bool)

(assert (=> b!2405296 (=> (not res!1021703) (not e!1531925))))

(declare-fun isEmpty!16252 (List!28343) Bool)

(declare-fun tail!3602 (List!28343) List!28343)

(assert (=> b!2405296 (= res!1021703 (isEmpty!16252 (tail!3602 s!9460)))))

(declare-fun b!2405297 () Bool)

(declare-fun lt!872940 () Bool)

(assert (=> b!2405297 (= e!1531920 (not lt!872940))))

(declare-fun b!2405298 () Bool)

(declare-fun res!1021707 () Bool)

(assert (=> b!2405298 (=> res!1021707 e!1531923)))

(assert (=> b!2405298 (= res!1021707 e!1531925)))

(declare-fun res!1021701 () Bool)

(assert (=> b!2405298 (=> (not res!1021701) (not e!1531925))))

(assert (=> b!2405298 (= res!1021701 lt!872940)))

(declare-fun b!2405299 () Bool)

(declare-fun head!5332 (List!28343) C!14262)

(assert (=> b!2405299 (= e!1531925 (= (head!5332 s!9460) (c!383084 r!13927)))))

(declare-fun bm!146954 () Bool)

(declare-fun call!146959 () Bool)

(assert (=> bm!146954 (= call!146959 (isEmpty!16252 s!9460))))

(declare-fun b!2405300 () Bool)

(declare-fun e!1531924 () Bool)

(assert (=> b!2405300 (= e!1531924 (not (= (head!5332 s!9460) (c!383084 r!13927))))))

(declare-fun d!700021 () Bool)

(declare-fun e!1531919 () Bool)

(assert (=> d!700021 e!1531919))

(declare-fun c!383110 () Bool)

(assert (=> d!700021 (= c!383110 (is-EmptyExpr!7052 r!13927))))

(declare-fun e!1531921 () Bool)

(assert (=> d!700021 (= lt!872940 e!1531921)))

(declare-fun c!383112 () Bool)

(assert (=> d!700021 (= c!383112 (isEmpty!16252 s!9460))))

(assert (=> d!700021 (validRegex!2777 r!13927)))

(assert (=> d!700021 (= (matchR!3169 r!13927 s!9460) lt!872940)))

(declare-fun b!2405301 () Bool)

(declare-fun e!1531922 () Bool)

(assert (=> b!2405301 (= e!1531923 e!1531922)))

(declare-fun res!1021705 () Bool)

(assert (=> b!2405301 (=> (not res!1021705) (not e!1531922))))

(assert (=> b!2405301 (= res!1021705 (not lt!872940))))

(declare-fun b!2405302 () Bool)

(declare-fun nullable!2100 (Regex!7052) Bool)

(assert (=> b!2405302 (= e!1531921 (nullable!2100 r!13927))))

(declare-fun b!2405303 () Bool)

(declare-fun derivativeStep!1756 (Regex!7052 C!14262) Regex!7052)

(assert (=> b!2405303 (= e!1531921 (matchR!3169 (derivativeStep!1756 r!13927 (head!5332 s!9460)) (tail!3602 s!9460)))))

(declare-fun b!2405304 () Bool)

(declare-fun res!1021704 () Bool)

(assert (=> b!2405304 (=> res!1021704 e!1531924)))

(assert (=> b!2405304 (= res!1021704 (not (isEmpty!16252 (tail!3602 s!9460))))))

(declare-fun b!2405305 () Bool)

(assert (=> b!2405305 (= e!1531922 e!1531924)))

(declare-fun res!1021702 () Bool)

(assert (=> b!2405305 (=> res!1021702 e!1531924)))

(assert (=> b!2405305 (= res!1021702 call!146959)))

(declare-fun b!2405306 () Bool)

(assert (=> b!2405306 (= e!1531919 e!1531920)))

(declare-fun c!383111 () Bool)

(assert (=> b!2405306 (= c!383111 (is-EmptyLang!7052 r!13927))))

(declare-fun b!2405307 () Bool)

(assert (=> b!2405307 (= e!1531919 (= lt!872940 call!146959))))

(declare-fun b!2405308 () Bool)

(declare-fun res!1021708 () Bool)

(assert (=> b!2405308 (=> (not res!1021708) (not e!1531925))))

(assert (=> b!2405308 (= res!1021708 (not call!146959))))

(assert (= (and d!700021 c!383112) b!2405302))

(assert (= (and d!700021 (not c!383112)) b!2405303))

(assert (= (and d!700021 c!383110) b!2405307))

(assert (= (and d!700021 (not c!383110)) b!2405306))

(assert (= (and b!2405306 c!383111) b!2405297))

(assert (= (and b!2405306 (not c!383111)) b!2405295))

(assert (= (and b!2405295 (not res!1021706)) b!2405298))

(assert (= (and b!2405298 res!1021701) b!2405308))

(assert (= (and b!2405308 res!1021708) b!2405296))

(assert (= (and b!2405296 res!1021703) b!2405299))

(assert (= (and b!2405298 (not res!1021707)) b!2405301))

(assert (= (and b!2405301 res!1021705) b!2405305))

(assert (= (and b!2405305 (not res!1021702)) b!2405304))

(assert (= (and b!2405304 (not res!1021704)) b!2405300))

(assert (= (or b!2405307 b!2405308 b!2405305) bm!146954))

(declare-fun m!2799693 () Bool)

(assert (=> d!700021 m!2799693))

(declare-fun m!2799695 () Bool)

(assert (=> d!700021 m!2799695))

(declare-fun m!2799697 () Bool)

(assert (=> b!2405300 m!2799697))

(declare-fun m!2799699 () Bool)

(assert (=> b!2405296 m!2799699))

(assert (=> b!2405296 m!2799699))

(declare-fun m!2799701 () Bool)

(assert (=> b!2405296 m!2799701))

(assert (=> bm!146954 m!2799693))

(assert (=> b!2405299 m!2799697))

(declare-fun m!2799703 () Bool)

(assert (=> b!2405302 m!2799703))

(assert (=> b!2405303 m!2799697))

(assert (=> b!2405303 m!2799697))

(declare-fun m!2799705 () Bool)

(assert (=> b!2405303 m!2799705))

(assert (=> b!2405303 m!2799699))

(assert (=> b!2405303 m!2799705))

(assert (=> b!2405303 m!2799699))

(declare-fun m!2799707 () Bool)

(assert (=> b!2405303 m!2799707))

(assert (=> b!2405304 m!2799699))

(assert (=> b!2405304 m!2799699))

(assert (=> b!2405304 m!2799701))

(assert (=> b!2405167 d!700021))

(declare-fun b!2405361 () Bool)

(assert (=> b!2405361 true))

(assert (=> b!2405361 true))

(declare-fun bs!463274 () Bool)

(declare-fun b!2405359 () Bool)

(assert (= bs!463274 (and b!2405359 b!2405361)))

(declare-fun lambda!90462 () Int)

(declare-fun lambda!90461 () Int)

(assert (=> bs!463274 (not (= lambda!90462 lambda!90461))))

(assert (=> b!2405359 true))

(assert (=> b!2405359 true))

(declare-fun b!2405355 () Bool)

(declare-fun e!1531956 () Bool)

(assert (=> b!2405355 (= e!1531956 (= s!9460 (Cons!28245 (c!383084 r!13927) Nil!28245)))))

(declare-fun call!146965 () Bool)

(declare-fun c!383126 () Bool)

(declare-fun bm!146960 () Bool)

(declare-fun Exists!1109 (Int) Bool)

(assert (=> bm!146960 (= call!146965 (Exists!1109 (ite c!383126 lambda!90461 lambda!90462)))))

(declare-fun b!2405356 () Bool)

(declare-fun c!383124 () Bool)

(assert (=> b!2405356 (= c!383124 (is-ElementMatch!7052 r!13927))))

(declare-fun e!1531957 () Bool)

(assert (=> b!2405356 (= e!1531957 e!1531956)))

(declare-fun b!2405357 () Bool)

(declare-fun e!1531951 () Bool)

(assert (=> b!2405357 (= e!1531951 e!1531957)))

(declare-fun res!1021733 () Bool)

(assert (=> b!2405357 (= res!1021733 (not (is-EmptyLang!7052 r!13927)))))

(assert (=> b!2405357 (=> (not res!1021733) (not e!1531957))))

(declare-fun b!2405358 () Bool)

(declare-fun e!1531952 () Bool)

(declare-fun e!1531955 () Bool)

(assert (=> b!2405358 (= e!1531952 e!1531955)))

(assert (=> b!2405358 (= c!383126 (is-Star!7052 r!13927))))

(declare-fun bm!146961 () Bool)

(declare-fun call!146966 () Bool)

(assert (=> bm!146961 (= call!146966 (isEmpty!16252 s!9460))))

(assert (=> b!2405359 (= e!1531955 call!146965)))

(declare-fun d!700023 () Bool)

(declare-fun c!383125 () Bool)

(assert (=> d!700023 (= c!383125 (is-EmptyExpr!7052 r!13927))))

(assert (=> d!700023 (= (matchRSpec!901 r!13927 s!9460) e!1531951)))

(declare-fun b!2405360 () Bool)

(declare-fun e!1531953 () Bool)

(assert (=> b!2405360 (= e!1531953 (matchRSpec!901 (regTwo!14617 r!13927) s!9460))))

(declare-fun e!1531954 () Bool)

(assert (=> b!2405361 (= e!1531954 call!146965)))

(declare-fun b!2405362 () Bool)

(declare-fun c!383127 () Bool)

(assert (=> b!2405362 (= c!383127 (is-Union!7052 r!13927))))

(assert (=> b!2405362 (= e!1531956 e!1531952)))

(declare-fun b!2405363 () Bool)

(declare-fun res!1021734 () Bool)

(assert (=> b!2405363 (=> res!1021734 e!1531954)))

(assert (=> b!2405363 (= res!1021734 call!146966)))

(assert (=> b!2405363 (= e!1531955 e!1531954)))

(declare-fun b!2405364 () Bool)

(assert (=> b!2405364 (= e!1531951 call!146966)))

(declare-fun b!2405365 () Bool)

(assert (=> b!2405365 (= e!1531952 e!1531953)))

(declare-fun res!1021735 () Bool)

(assert (=> b!2405365 (= res!1021735 (matchRSpec!901 (regOne!14617 r!13927) s!9460))))

(assert (=> b!2405365 (=> res!1021735 e!1531953)))

(assert (= (and d!700023 c!383125) b!2405364))

(assert (= (and d!700023 (not c!383125)) b!2405357))

(assert (= (and b!2405357 res!1021733) b!2405356))

(assert (= (and b!2405356 c!383124) b!2405355))

(assert (= (and b!2405356 (not c!383124)) b!2405362))

(assert (= (and b!2405362 c!383127) b!2405365))

(assert (= (and b!2405362 (not c!383127)) b!2405358))

(assert (= (and b!2405365 (not res!1021735)) b!2405360))

(assert (= (and b!2405358 c!383126) b!2405363))

(assert (= (and b!2405358 (not c!383126)) b!2405359))

(assert (= (and b!2405363 (not res!1021734)) b!2405361))

(assert (= (or b!2405361 b!2405359) bm!146960))

(assert (= (or b!2405364 b!2405363) bm!146961))

(declare-fun m!2799725 () Bool)

(assert (=> bm!146960 m!2799725))

(assert (=> bm!146961 m!2799693))

(declare-fun m!2799727 () Bool)

(assert (=> b!2405360 m!2799727))

(declare-fun m!2799729 () Bool)

(assert (=> b!2405365 m!2799729))

(assert (=> b!2405167 d!700023))

(declare-fun d!700027 () Bool)

(assert (=> d!700027 (= (matchR!3169 r!13927 s!9460) (matchRSpec!901 r!13927 s!9460))))

(declare-fun lt!872944 () Unit!41375)

(declare-fun choose!14226 (Regex!7052 List!28343) Unit!41375)

(assert (=> d!700027 (= lt!872944 (choose!14226 r!13927 s!9460))))

(assert (=> d!700027 (validRegex!2777 r!13927)))

(assert (=> d!700027 (= (mainMatchTheorem!901 r!13927 s!9460) lt!872944)))

(declare-fun bs!463275 () Bool)

(assert (= bs!463275 d!700027))

(assert (=> bs!463275 m!2799651))

(assert (=> bs!463275 m!2799653))

(declare-fun m!2799731 () Bool)

(assert (=> bs!463275 m!2799731))

(assert (=> bs!463275 m!2799695))

(assert (=> b!2405167 d!700027))

(declare-fun e!1531976 () Bool)

(assert (=> b!2405170 (= tp!765279 e!1531976)))

(declare-fun b!2405409 () Bool)

(declare-fun tp!765321 () Bool)

(declare-fun tp!765318 () Bool)

(assert (=> b!2405409 (= e!1531976 (and tp!765321 tp!765318))))

(declare-fun b!2405408 () Bool)

(assert (=> b!2405408 (= e!1531976 tp_is_empty!11517)))

(declare-fun b!2405411 () Bool)

(declare-fun tp!765322 () Bool)

(declare-fun tp!765320 () Bool)

(assert (=> b!2405411 (= e!1531976 (and tp!765322 tp!765320))))

(declare-fun b!2405410 () Bool)

(declare-fun tp!765319 () Bool)

(assert (=> b!2405410 (= e!1531976 tp!765319)))

(assert (= (and b!2405170 (is-ElementMatch!7052 (regOne!14616 r!13927))) b!2405408))

(assert (= (and b!2405170 (is-Concat!11688 (regOne!14616 r!13927))) b!2405409))

(assert (= (and b!2405170 (is-Star!7052 (regOne!14616 r!13927))) b!2405410))

(assert (= (and b!2405170 (is-Union!7052 (regOne!14616 r!13927))) b!2405411))

(declare-fun e!1531977 () Bool)

(assert (=> b!2405170 (= tp!765278 e!1531977)))

(declare-fun b!2405413 () Bool)

(declare-fun tp!765326 () Bool)

(declare-fun tp!765323 () Bool)

(assert (=> b!2405413 (= e!1531977 (and tp!765326 tp!765323))))

(declare-fun b!2405412 () Bool)

(assert (=> b!2405412 (= e!1531977 tp_is_empty!11517)))

(declare-fun b!2405415 () Bool)

(declare-fun tp!765327 () Bool)

(declare-fun tp!765325 () Bool)

(assert (=> b!2405415 (= e!1531977 (and tp!765327 tp!765325))))

(declare-fun b!2405414 () Bool)

(declare-fun tp!765324 () Bool)

(assert (=> b!2405414 (= e!1531977 tp!765324)))

(assert (= (and b!2405170 (is-ElementMatch!7052 (regTwo!14616 r!13927))) b!2405412))

(assert (= (and b!2405170 (is-Concat!11688 (regTwo!14616 r!13927))) b!2405413))

(assert (= (and b!2405170 (is-Star!7052 (regTwo!14616 r!13927))) b!2405414))

(assert (= (and b!2405170 (is-Union!7052 (regTwo!14616 r!13927))) b!2405415))

(declare-fun e!1531978 () Bool)

(assert (=> b!2405165 (= tp!765282 e!1531978)))

(declare-fun b!2405417 () Bool)

(declare-fun tp!765331 () Bool)

(declare-fun tp!765328 () Bool)

(assert (=> b!2405417 (= e!1531978 (and tp!765331 tp!765328))))

(declare-fun b!2405416 () Bool)

(assert (=> b!2405416 (= e!1531978 tp_is_empty!11517)))

(declare-fun b!2405419 () Bool)

(declare-fun tp!765332 () Bool)

(declare-fun tp!765330 () Bool)

(assert (=> b!2405419 (= e!1531978 (and tp!765332 tp!765330))))

(declare-fun b!2405418 () Bool)

(declare-fun tp!765329 () Bool)

(assert (=> b!2405418 (= e!1531978 tp!765329)))

(assert (= (and b!2405165 (is-ElementMatch!7052 (h!33645 l!9164))) b!2405416))

(assert (= (and b!2405165 (is-Concat!11688 (h!33645 l!9164))) b!2405417))

(assert (= (and b!2405165 (is-Star!7052 (h!33645 l!9164))) b!2405418))

(assert (= (and b!2405165 (is-Union!7052 (h!33645 l!9164))) b!2405419))

(declare-fun b!2405424 () Bool)

(declare-fun e!1531981 () Bool)

(declare-fun tp!765337 () Bool)

(declare-fun tp!765338 () Bool)

(assert (=> b!2405424 (= e!1531981 (and tp!765337 tp!765338))))

(assert (=> b!2405165 (= tp!765276 e!1531981)))

(assert (= (and b!2405165 (is-Cons!28244 (t!208319 l!9164))) b!2405424))

(declare-fun e!1531982 () Bool)

(assert (=> b!2405166 (= tp!765277 e!1531982)))

(declare-fun b!2405426 () Bool)

(declare-fun tp!765342 () Bool)

(declare-fun tp!765339 () Bool)

(assert (=> b!2405426 (= e!1531982 (and tp!765342 tp!765339))))

(declare-fun b!2405425 () Bool)

(assert (=> b!2405425 (= e!1531982 tp_is_empty!11517)))

(declare-fun b!2405428 () Bool)

(declare-fun tp!765343 () Bool)

(declare-fun tp!765341 () Bool)

(assert (=> b!2405428 (= e!1531982 (and tp!765343 tp!765341))))

(declare-fun b!2405427 () Bool)

(declare-fun tp!765340 () Bool)

(assert (=> b!2405427 (= e!1531982 tp!765340)))

(assert (= (and b!2405166 (is-ElementMatch!7052 (reg!7381 r!13927))) b!2405425))

(assert (= (and b!2405166 (is-Concat!11688 (reg!7381 r!13927))) b!2405426))

(assert (= (and b!2405166 (is-Star!7052 (reg!7381 r!13927))) b!2405427))

(assert (= (and b!2405166 (is-Union!7052 (reg!7381 r!13927))) b!2405428))

(declare-fun b!2405433 () Bool)

(declare-fun e!1531985 () Bool)

(declare-fun tp!765346 () Bool)

(assert (=> b!2405433 (= e!1531985 (and tp_is_empty!11517 tp!765346))))

(assert (=> b!2405171 (= tp!765281 e!1531985)))

(assert (= (and b!2405171 (is-Cons!28245 (t!208320 s!9460))) b!2405433))

(declare-fun e!1531986 () Bool)

(assert (=> b!2405168 (= tp!765280 e!1531986)))

(declare-fun b!2405435 () Bool)

(declare-fun tp!765350 () Bool)

(declare-fun tp!765347 () Bool)

(assert (=> b!2405435 (= e!1531986 (and tp!765350 tp!765347))))

(declare-fun b!2405434 () Bool)

(assert (=> b!2405434 (= e!1531986 tp_is_empty!11517)))

(declare-fun b!2405437 () Bool)

(declare-fun tp!765351 () Bool)

(declare-fun tp!765349 () Bool)

(assert (=> b!2405437 (= e!1531986 (and tp!765351 tp!765349))))

(declare-fun b!2405436 () Bool)

(declare-fun tp!765348 () Bool)

(assert (=> b!2405436 (= e!1531986 tp!765348)))

(assert (= (and b!2405168 (is-ElementMatch!7052 (regOne!14617 r!13927))) b!2405434))

(assert (= (and b!2405168 (is-Concat!11688 (regOne!14617 r!13927))) b!2405435))

(assert (= (and b!2405168 (is-Star!7052 (regOne!14617 r!13927))) b!2405436))

(assert (= (and b!2405168 (is-Union!7052 (regOne!14617 r!13927))) b!2405437))

(declare-fun e!1531987 () Bool)

(assert (=> b!2405168 (= tp!765283 e!1531987)))

(declare-fun b!2405439 () Bool)

(declare-fun tp!765355 () Bool)

(declare-fun tp!765352 () Bool)

(assert (=> b!2405439 (= e!1531987 (and tp!765355 tp!765352))))

(declare-fun b!2405438 () Bool)

(assert (=> b!2405438 (= e!1531987 tp_is_empty!11517)))

(declare-fun b!2405441 () Bool)

(declare-fun tp!765356 () Bool)

(declare-fun tp!765354 () Bool)

(assert (=> b!2405441 (= e!1531987 (and tp!765356 tp!765354))))

(declare-fun b!2405440 () Bool)

(declare-fun tp!765353 () Bool)

(assert (=> b!2405440 (= e!1531987 tp!765353)))

(assert (= (and b!2405168 (is-ElementMatch!7052 (regTwo!14617 r!13927))) b!2405438))

(assert (= (and b!2405168 (is-Concat!11688 (regTwo!14617 r!13927))) b!2405439))

(assert (= (and b!2405168 (is-Star!7052 (regTwo!14617 r!13927))) b!2405440))

(assert (= (and b!2405168 (is-Union!7052 (regTwo!14617 r!13927))) b!2405441))

(declare-fun b_lambda!74397 () Bool)

(assert (= b_lambda!74395 (or start!235810 b_lambda!74397)))

(declare-fun bs!463276 () Bool)

(declare-fun d!700029 () Bool)

(assert (= bs!463276 (and d!700029 start!235810)))

(assert (=> bs!463276 (= (dynLambda!12164 lambda!90450 (h!33645 l!9164)) (validRegex!2777 (h!33645 l!9164)))))

(declare-fun m!2799733 () Bool)

(assert (=> bs!463276 m!2799733))

(assert (=> b!2405207 d!700029))

(push 1)

(assert (not b!2405435))

(assert (not b!2405238))

(assert (not b!2405428))

(assert (not b!2405437))

(assert (not b!2405426))

(assert (not b!2405303))

(assert (not b!2405417))

(assert (not b!2405433))

(assert (not b!2405208))

(assert (not b!2405439))

(assert (not b!2405234))

(assert (not b!2405415))

(assert (not b!2405436))

(assert (not d!700027))

(assert (not b!2405424))

(assert (not b!2405441))

(assert (not b!2405365))

(assert (not b!2405299))

(assert (not bs!463276))

(assert (not b!2405233))

(assert (not b!2405237))

(assert (not b!2405300))

(assert (not bm!146961))

(assert (not b_lambda!74397))

(assert (not b!2405296))

(assert (not bm!146954))

(assert (not b!2405302))

(assert (not b!2405414))

(assert (not b!2405419))

(assert (not b!2405360))

(assert (not b!2405235))

(assert (not b!2405410))

(assert (not b!2405411))

(assert (not d!700021))

(assert (not b!2405232))

(assert (not b!2405427))

(assert (not bm!146960))

(assert (not b!2405413))

(assert (not b!2405440))

(assert (not b!2405229))

(assert tp_is_empty!11517)

(assert (not d!700015))

(assert (not b!2405409))

(assert (not b!2405418))

(assert (not b!2405304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

