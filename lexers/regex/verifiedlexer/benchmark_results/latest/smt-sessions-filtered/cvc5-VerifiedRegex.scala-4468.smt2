; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237602 () Bool)

(assert start!237602)

(declare-fun b!2425885 () Bool)

(declare-fun e!1543016 () Bool)

(declare-fun call!148425 () Bool)

(assert (=> b!2425885 (= e!1543016 (not call!148425))))

(declare-fun b!2425886 () Bool)

(declare-fun res!1030324 () Bool)

(declare-fun e!1543022 () Bool)

(assert (=> b!2425886 (=> (not res!1030324) (not e!1543022))))

(declare-datatypes ((C!14414 0))(
  ( (C!14415 (val!8449 Int)) )
))
(declare-datatypes ((Regex!7128 0))(
  ( (ElementMatch!7128 (c!386921 C!14414)) (Concat!11764 (regOne!14768 Regex!7128) (regTwo!14768 Regex!7128)) (EmptyExpr!7128) (Star!7128 (reg!7457 Regex!7128)) (EmptyLang!7128) (Union!7128 (regOne!14769 Regex!7128) (regTwo!14769 Regex!7128)) )
))
(declare-fun r!13927 () Regex!7128)

(declare-datatypes ((List!28494 0))(
  ( (Nil!28396) (Cons!28396 (h!33797 Regex!7128) (t!208471 List!28494)) )
))
(declare-fun l!9164 () List!28494)

(declare-fun generalisedConcat!229 (List!28494) Regex!7128)

(assert (=> b!2425886 (= res!1030324 (= r!13927 (generalisedConcat!229 l!9164)))))

(declare-fun b!2425887 () Bool)

(declare-fun e!1543026 () Bool)

(declare-fun e!1543015 () Bool)

(assert (=> b!2425887 (= e!1543026 e!1543015)))

(declare-fun res!1030313 () Bool)

(assert (=> b!2425887 (=> res!1030313 e!1543015)))

(declare-fun e!1543020 () Bool)

(assert (=> b!2425887 (= res!1030313 e!1543020)))

(declare-fun c!386920 () Bool)

(assert (=> b!2425887 (= c!386920 (is-Cons!28396 l!9164))))

(declare-datatypes ((Unit!41627 0))(
  ( (Unit!41628) )
))
(declare-fun lt!876287 () Unit!41627)

(declare-fun e!1543024 () Unit!41627)

(assert (=> b!2425887 (= lt!876287 e!1543024)))

(declare-fun c!386919 () Bool)

(declare-fun lt!876292 () Regex!7128)

(declare-datatypes ((List!28495 0))(
  ( (Nil!28397) (Cons!28397 (h!33798 C!14414) (t!208472 List!28495)) )
))
(declare-fun s!9460 () List!28495)

(declare-fun matchR!3245 (Regex!7128 List!28495) Bool)

(assert (=> b!2425887 (= c!386919 (matchR!3245 lt!876292 s!9460))))

(declare-fun head!5468 (List!28494) Regex!7128)

(assert (=> b!2425887 (= lt!876292 (head!5468 l!9164))))

(declare-datatypes ((tuple2!28036 0))(
  ( (tuple2!28037 (_1!16559 List!28495) (_2!16559 List!28495)) )
))
(declare-datatypes ((Option!5629 0))(
  ( (None!5628) (Some!5628 (v!31036 tuple2!28036)) )
))
(declare-fun call!148423 () Option!5629)

(declare-fun call!148422 () Option!5629)

(declare-fun bm!148416 () Bool)

(declare-fun isDefined!4455 (Option!5629) Bool)

(assert (=> bm!148416 (= call!148425 (isDefined!4455 (ite c!386919 call!148423 call!148422)))))

(declare-fun b!2425888 () Bool)

(declare-fun e!1543021 () Bool)

(declare-fun e!1543019 () Bool)

(assert (=> b!2425888 (= e!1543021 e!1543019)))

(declare-fun res!1030316 () Bool)

(assert (=> b!2425888 (=> res!1030316 e!1543019)))

(declare-fun lt!876280 () List!28494)

(declare-fun isEmpty!16430 (List!28494) Bool)

(assert (=> b!2425888 (= res!1030316 (not (isEmpty!16430 lt!876280)))))

(declare-fun tail!3740 (List!28494) List!28494)

(assert (=> b!2425888 (= lt!876280 (tail!3740 l!9164))))

(declare-fun b!2425889 () Bool)

(declare-fun e!1543013 () Bool)

(declare-fun tp!770335 () Bool)

(declare-fun tp!770339 () Bool)

(assert (=> b!2425889 (= e!1543013 (and tp!770335 tp!770339))))

(declare-fun b!2425890 () Bool)

(declare-fun tp!770341 () Bool)

(assert (=> b!2425890 (= e!1543013 tp!770341)))

(declare-fun b!2425891 () Bool)

(declare-fun e!1543027 () Bool)

(declare-fun ++!7049 (List!28495 List!28495) List!28495)

(assert (=> b!2425891 (= e!1543027 (= (++!7049 Nil!28397 s!9460) s!9460))))

(declare-fun b!2425892 () Bool)

(declare-fun Unit!41629 () Unit!41627)

(assert (=> b!2425892 (= e!1543024 Unit!41629)))

(declare-fun lt!876285 () Unit!41627)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!103 (Regex!7128 Regex!7128 List!28495 List!28495) Unit!41627)

(assert (=> b!2425892 (= lt!876285 (lemmaTwoRegexMatchThenConcatMatchesConcatString!103 lt!876292 EmptyExpr!7128 s!9460 Nil!28397))))

(declare-fun lt!876291 () Regex!7128)

(assert (=> b!2425892 (= lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128))))

(declare-fun res!1030317 () Bool)

(declare-fun call!148424 () List!28495)

(assert (=> b!2425892 (= res!1030317 (matchR!3245 lt!876291 call!148424))))

(declare-fun e!1543025 () Bool)

(assert (=> b!2425892 (=> (not res!1030317) (not e!1543025))))

(assert (=> b!2425892 e!1543025))

(declare-fun lt!876281 () Unit!41627)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!77 (Regex!7128 Regex!7128 List!28495) Unit!41627)

(assert (=> b!2425892 (= lt!876281 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!77 lt!876292 EmptyExpr!7128 s!9460))))

(declare-fun res!1030315 () Bool)

(assert (=> b!2425892 (= res!1030315 call!148425)))

(declare-fun e!1543018 () Bool)

(assert (=> b!2425892 (=> (not res!1030315) (not e!1543018))))

(assert (=> b!2425892 e!1543018))

(declare-fun b!2425893 () Bool)

(declare-fun tp!770336 () Bool)

(declare-fun tp!770337 () Bool)

(assert (=> b!2425893 (= e!1543013 (and tp!770336 tp!770337))))

(declare-fun b!2425894 () Bool)

(declare-fun lt!876288 () Bool)

(declare-fun isEmpty!16431 (List!28495) Bool)

(assert (=> b!2425894 (= e!1543020 (not (= lt!876288 (isEmpty!16431 s!9460))))))

(declare-fun bm!148417 () Bool)

(declare-fun findConcatSeparation!737 (Regex!7128 Regex!7128 List!28495 List!28495 List!28495) Option!5629)

(assert (=> bm!148417 (= call!148423 (findConcatSeparation!737 lt!876292 EmptyExpr!7128 Nil!28397 s!9460 s!9460))))

(declare-fun lt!876282 () tuple2!28036)

(declare-fun bm!148418 () Bool)

(assert (=> bm!148418 (= call!148424 (++!7049 (ite c!386919 s!9460 (_1!16559 lt!876282)) (ite c!386919 Nil!28397 (_2!16559 lt!876282))))))

(declare-fun b!2425895 () Bool)

(declare-fun call!148426 () Bool)

(assert (=> b!2425895 (= e!1543018 call!148426)))

(declare-fun b!2425896 () Bool)

(declare-fun e!1543014 () Bool)

(declare-fun tp_is_empty!11669 () Bool)

(declare-fun tp!770334 () Bool)

(assert (=> b!2425896 (= e!1543014 (and tp_is_empty!11669 tp!770334))))

(declare-fun res!1030323 () Bool)

(assert (=> start!237602 (=> (not res!1030323) (not e!1543022))))

(declare-fun lambda!91366 () Int)

(declare-fun forall!5762 (List!28494 Int) Bool)

(assert (=> start!237602 (= res!1030323 (forall!5762 l!9164 lambda!91366))))

(assert (=> start!237602 e!1543022))

(declare-fun e!1543023 () Bool)

(assert (=> start!237602 e!1543023))

(assert (=> start!237602 e!1543013))

(assert (=> start!237602 e!1543014))

(declare-fun b!2425897 () Bool)

(declare-fun Unit!41630 () Unit!41627)

(assert (=> b!2425897 (= e!1543024 Unit!41630)))

(declare-fun lt!876286 () Option!5629)

(assert (=> b!2425897 (= lt!876286 call!148423)))

(declare-fun lt!876290 () Bool)

(assert (=> b!2425897 (= lt!876290 call!148426)))

(declare-fun c!386918 () Bool)

(assert (=> b!2425897 (= c!386918 lt!876290)))

(declare-fun lt!876284 () Unit!41627)

(declare-fun e!1543017 () Unit!41627)

(assert (=> b!2425897 (= lt!876284 e!1543017)))

(declare-fun res!1030312 () Bool)

(assert (=> b!2425897 (= res!1030312 (not lt!876290))))

(assert (=> b!2425897 (=> (not res!1030312) (not e!1543016))))

(assert (=> b!2425897 e!1543016))

(declare-fun b!2425898 () Bool)

(assert (=> b!2425898 (= e!1543020 (not (= lt!876288 (isDefined!4455 (findConcatSeparation!737 (h!33797 l!9164) (generalisedConcat!229 (t!208471 l!9164)) Nil!28397 s!9460 s!9460)))))))

(declare-fun b!2425899 () Bool)

(declare-fun tp!770340 () Bool)

(declare-fun tp!770338 () Bool)

(assert (=> b!2425899 (= e!1543023 (and tp!770340 tp!770338))))

(declare-fun call!148421 () Bool)

(declare-fun bm!148419 () Bool)

(assert (=> bm!148419 (= call!148421 (matchR!3245 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128)) (ite c!386919 s!9460 call!148424)))))

(declare-fun b!2425900 () Bool)

(declare-fun res!1030319 () Bool)

(assert (=> b!2425900 (=> res!1030319 e!1543027)))

(declare-fun lt!876293 () Regex!7128)

(declare-fun validRegex!2848 (Regex!7128) Bool)

(assert (=> b!2425900 (= res!1030319 (not (validRegex!2848 lt!876293)))))

(declare-fun b!2425901 () Bool)

(assert (=> b!2425901 (= e!1543019 e!1543026)))

(declare-fun res!1030311 () Bool)

(assert (=> b!2425901 (=> res!1030311 e!1543026)))

(declare-fun lt!876289 () Regex!7128)

(assert (=> b!2425901 (= res!1030311 (not (= lt!876289 EmptyExpr!7128)))))

(assert (=> b!2425901 (= lt!876289 (generalisedConcat!229 lt!876280))))

(declare-fun b!2425902 () Bool)

(declare-fun Unit!41631 () Unit!41627)

(assert (=> b!2425902 (= e!1543017 Unit!41631)))

(declare-fun b!2425903 () Bool)

(assert (=> b!2425903 (= e!1543015 e!1543027)))

(declare-fun res!1030318 () Bool)

(assert (=> b!2425903 (=> res!1030318 e!1543027)))

(assert (=> b!2425903 (= res!1030318 (not (validRegex!2848 (h!33797 l!9164))))))

(assert (=> b!2425903 (= lt!876293 (generalisedConcat!229 (t!208471 l!9164)))))

(declare-fun b!2425904 () Bool)

(assert (=> b!2425904 (= e!1543013 tp_is_empty!11669)))

(declare-fun b!2425905 () Bool)

(declare-fun e!1543028 () Bool)

(assert (=> b!2425905 (= e!1543028 false)))

(declare-fun b!2425906 () Bool)

(assert (=> b!2425906 (= e!1543022 (not e!1543021))))

(declare-fun res!1030320 () Bool)

(assert (=> b!2425906 (=> res!1030320 e!1543021)))

(assert (=> b!2425906 (= res!1030320 (or (is-Concat!11764 r!13927) (is-EmptyExpr!7128 r!13927)))))

(declare-fun matchRSpec!977 (Regex!7128 List!28495) Bool)

(assert (=> b!2425906 (= lt!876288 (matchRSpec!977 r!13927 s!9460))))

(assert (=> b!2425906 (= lt!876288 (matchR!3245 r!13927 s!9460))))

(declare-fun lt!876283 () Unit!41627)

(declare-fun mainMatchTheorem!977 (Regex!7128 List!28495) Unit!41627)

(assert (=> b!2425906 (= lt!876283 (mainMatchTheorem!977 r!13927 s!9460))))

(declare-fun b!2425907 () Bool)

(declare-fun res!1030314 () Bool)

(assert (=> b!2425907 (=> res!1030314 e!1543015)))

(assert (=> b!2425907 (= res!1030314 (not (is-Cons!28396 l!9164)))))

(declare-fun bm!148420 () Bool)

(assert (=> bm!148420 (= call!148422 (findConcatSeparation!737 lt!876292 lt!876289 Nil!28397 s!9460 s!9460))))

(declare-fun b!2425908 () Bool)

(declare-fun res!1030322 () Bool)

(assert (=> b!2425908 (=> res!1030322 e!1543021)))

(assert (=> b!2425908 (= res!1030322 (isEmpty!16430 l!9164))))

(declare-fun b!2425909 () Bool)

(assert (=> b!2425909 (= e!1543025 call!148421)))

(declare-fun b!2425910 () Bool)

(assert (=> b!2425910 e!1543028))

(declare-fun res!1030321 () Bool)

(assert (=> b!2425910 (=> (not res!1030321) (not e!1543028))))

(assert (=> b!2425910 (= res!1030321 call!148421)))

(declare-fun lt!876279 () Unit!41627)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!77 (Regex!7128 Regex!7128 List!28495 List!28495 List!28495) Unit!41627)

(assert (=> b!2425910 (= lt!876279 (lemmaFindSeparationIsDefinedThenConcatMatches!77 lt!876292 EmptyExpr!7128 (_1!16559 lt!876282) (_2!16559 lt!876282) s!9460))))

(declare-fun get!8745 (Option!5629) tuple2!28036)

(assert (=> b!2425910 (= lt!876282 (get!8745 lt!876286))))

(declare-fun Unit!41632 () Unit!41627)

(assert (=> b!2425910 (= e!1543017 Unit!41632)))

(declare-fun bm!148421 () Bool)

(assert (=> bm!148421 (= call!148426 (isDefined!4455 (ite c!386919 call!148422 lt!876286)))))

(assert (= (and start!237602 res!1030323) b!2425886))

(assert (= (and b!2425886 res!1030324) b!2425906))

(assert (= (and b!2425906 (not res!1030320)) b!2425908))

(assert (= (and b!2425908 (not res!1030322)) b!2425888))

(assert (= (and b!2425888 (not res!1030316)) b!2425901))

(assert (= (and b!2425901 (not res!1030311)) b!2425887))

(assert (= (and b!2425887 c!386919) b!2425892))

(assert (= (and b!2425887 (not c!386919)) b!2425897))

(assert (= (and b!2425892 res!1030317) b!2425909))

(assert (= (and b!2425892 res!1030315) b!2425895))

(assert (= (and b!2425897 c!386918) b!2425910))

(assert (= (and b!2425897 (not c!386918)) b!2425902))

(assert (= (and b!2425910 res!1030321) b!2425905))

(assert (= (and b!2425897 res!1030312) b!2425885))

(assert (= (or b!2425892 b!2425897) bm!148417))

(assert (= (or b!2425892 b!2425910) bm!148418))

(assert (= (or b!2425895 b!2425885) bm!148420))

(assert (= (or b!2425909 b!2425910) bm!148419))

(assert (= (or b!2425895 b!2425897) bm!148421))

(assert (= (or b!2425892 b!2425885) bm!148416))

(assert (= (and b!2425887 c!386920) b!2425898))

(assert (= (and b!2425887 (not c!386920)) b!2425894))

(assert (= (and b!2425887 (not res!1030313)) b!2425907))

(assert (= (and b!2425907 (not res!1030314)) b!2425903))

(assert (= (and b!2425903 (not res!1030318)) b!2425900))

(assert (= (and b!2425900 (not res!1030319)) b!2425891))

(assert (= (and start!237602 (is-Cons!28396 l!9164)) b!2425899))

(assert (= (and start!237602 (is-ElementMatch!7128 r!13927)) b!2425904))

(assert (= (and start!237602 (is-Concat!11764 r!13927)) b!2425893))

(assert (= (and start!237602 (is-Star!7128 r!13927)) b!2425890))

(assert (= (and start!237602 (is-Union!7128 r!13927)) b!2425889))

(assert (= (and start!237602 (is-Cons!28397 s!9460)) b!2425896))

(declare-fun m!2811031 () Bool)

(assert (=> b!2425910 m!2811031))

(declare-fun m!2811033 () Bool)

(assert (=> b!2425910 m!2811033))

(declare-fun m!2811035 () Bool)

(assert (=> b!2425894 m!2811035))

(declare-fun m!2811037 () Bool)

(assert (=> b!2425887 m!2811037))

(declare-fun m!2811039 () Bool)

(assert (=> b!2425887 m!2811039))

(declare-fun m!2811041 () Bool)

(assert (=> b!2425892 m!2811041))

(declare-fun m!2811043 () Bool)

(assert (=> b!2425892 m!2811043))

(declare-fun m!2811045 () Bool)

(assert (=> b!2425892 m!2811045))

(declare-fun m!2811047 () Bool)

(assert (=> b!2425888 m!2811047))

(declare-fun m!2811049 () Bool)

(assert (=> b!2425888 m!2811049))

(declare-fun m!2811051 () Bool)

(assert (=> b!2425908 m!2811051))

(declare-fun m!2811053 () Bool)

(assert (=> bm!148420 m!2811053))

(declare-fun m!2811055 () Bool)

(assert (=> start!237602 m!2811055))

(declare-fun m!2811057 () Bool)

(assert (=> bm!148421 m!2811057))

(declare-fun m!2811059 () Bool)

(assert (=> b!2425891 m!2811059))

(declare-fun m!2811061 () Bool)

(assert (=> bm!148416 m!2811061))

(declare-fun m!2811063 () Bool)

(assert (=> b!2425906 m!2811063))

(declare-fun m!2811065 () Bool)

(assert (=> b!2425906 m!2811065))

(declare-fun m!2811067 () Bool)

(assert (=> b!2425906 m!2811067))

(declare-fun m!2811069 () Bool)

(assert (=> bm!148418 m!2811069))

(declare-fun m!2811071 () Bool)

(assert (=> b!2425903 m!2811071))

(declare-fun m!2811073 () Bool)

(assert (=> b!2425903 m!2811073))

(assert (=> b!2425898 m!2811073))

(assert (=> b!2425898 m!2811073))

(declare-fun m!2811075 () Bool)

(assert (=> b!2425898 m!2811075))

(assert (=> b!2425898 m!2811075))

(declare-fun m!2811077 () Bool)

(assert (=> b!2425898 m!2811077))

(declare-fun m!2811079 () Bool)

(assert (=> b!2425901 m!2811079))

(declare-fun m!2811081 () Bool)

(assert (=> bm!148419 m!2811081))

(declare-fun m!2811083 () Bool)

(assert (=> bm!148417 m!2811083))

(declare-fun m!2811085 () Bool)

(assert (=> b!2425886 m!2811085))

(declare-fun m!2811087 () Bool)

(assert (=> b!2425900 m!2811087))

(push 1)

(assert (not b!2425900))

(assert (not bm!148418))

(assert (not bm!148421))

(assert (not b!2425910))

(assert (not b!2425893))

(assert (not b!2425898))

(assert (not b!2425896))

(assert (not b!2425886))

(assert (not bm!148419))

(assert (not b!2425892))

(assert (not b!2425903))

(assert (not start!237602))

(assert (not bm!148416))

(assert tp_is_empty!11669)

(assert (not b!2425890))

(assert (not b!2425906))

(assert (not b!2425887))

(assert (not b!2425891))

(assert (not bm!148420))

(assert (not b!2425894))

(assert (not b!2425899))

(assert (not b!2425908))

(assert (not b!2425889))

(assert (not b!2425901))

(assert (not b!2425888))

(assert (not bm!148417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!702555 () Bool)

(assert (=> d!702555 (= (isEmpty!16430 lt!876280) (is-Nil!28396 lt!876280))))

(assert (=> b!2425888 d!702555))

(declare-fun d!702557 () Bool)

(assert (=> d!702557 (= (tail!3740 l!9164) (t!208471 l!9164))))

(assert (=> b!2425888 d!702557))

(declare-fun d!702559 () Bool)

(declare-fun res!1030371 () Bool)

(declare-fun e!1543081 () Bool)

(assert (=> d!702559 (=> res!1030371 e!1543081)))

(assert (=> d!702559 (= res!1030371 (is-Nil!28396 l!9164))))

(assert (=> d!702559 (= (forall!5762 l!9164 lambda!91366) e!1543081)))

(declare-fun b!2425993 () Bool)

(declare-fun e!1543082 () Bool)

(assert (=> b!2425993 (= e!1543081 e!1543082)))

(declare-fun res!1030372 () Bool)

(assert (=> b!2425993 (=> (not res!1030372) (not e!1543082))))

(declare-fun dynLambda!12222 (Int Regex!7128) Bool)

(assert (=> b!2425993 (= res!1030372 (dynLambda!12222 lambda!91366 (h!33797 l!9164)))))

(declare-fun b!2425994 () Bool)

(assert (=> b!2425994 (= e!1543082 (forall!5762 (t!208471 l!9164) lambda!91366))))

(assert (= (and d!702559 (not res!1030371)) b!2425993))

(assert (= (and b!2425993 res!1030372) b!2425994))

(declare-fun b_lambda!74699 () Bool)

(assert (=> (not b_lambda!74699) (not b!2425993)))

(declare-fun m!2811147 () Bool)

(assert (=> b!2425993 m!2811147))

(declare-fun m!2811149 () Bool)

(assert (=> b!2425994 m!2811149))

(assert (=> start!237602 d!702559))

(declare-fun b!2426040 () Bool)

(declare-fun e!1543116 () Bool)

(assert (=> b!2426040 (= e!1543116 (matchR!3245 lt!876289 s!9460))))

(declare-fun b!2426041 () Bool)

(declare-fun lt!876345 () Unit!41627)

(declare-fun lt!876347 () Unit!41627)

(assert (=> b!2426041 (= lt!876345 lt!876347)))

(assert (=> b!2426041 (= (++!7049 (++!7049 Nil!28397 (Cons!28397 (h!33798 s!9460) Nil!28397)) (t!208472 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!675 (List!28495 C!14414 List!28495 List!28495) Unit!41627)

(assert (=> b!2426041 (= lt!876347 (lemmaMoveElementToOtherListKeepsConcatEq!675 Nil!28397 (h!33798 s!9460) (t!208472 s!9460) s!9460))))

(declare-fun e!1543118 () Option!5629)

(assert (=> b!2426041 (= e!1543118 (findConcatSeparation!737 lt!876292 lt!876289 (++!7049 Nil!28397 (Cons!28397 (h!33798 s!9460) Nil!28397)) (t!208472 s!9460) s!9460))))

(declare-fun b!2426042 () Bool)

(declare-fun e!1543117 () Option!5629)

(assert (=> b!2426042 (= e!1543117 e!1543118)))

(declare-fun c!386943 () Bool)

(assert (=> b!2426042 (= c!386943 (is-Nil!28397 s!9460))))

(declare-fun b!2426043 () Bool)

(declare-fun e!1543114 () Bool)

(declare-fun lt!876346 () Option!5629)

(assert (=> b!2426043 (= e!1543114 (= (++!7049 (_1!16559 (get!8745 lt!876346)) (_2!16559 (get!8745 lt!876346))) s!9460))))

(declare-fun b!2426044 () Bool)

(assert (=> b!2426044 (= e!1543118 None!5628)))

(declare-fun b!2426045 () Bool)

(declare-fun res!1030400 () Bool)

(assert (=> b!2426045 (=> (not res!1030400) (not e!1543114))))

(assert (=> b!2426045 (= res!1030400 (matchR!3245 lt!876292 (_1!16559 (get!8745 lt!876346))))))

(declare-fun b!2426046 () Bool)

(declare-fun e!1543115 () Bool)

(assert (=> b!2426046 (= e!1543115 (not (isDefined!4455 lt!876346)))))

(declare-fun b!2426047 () Bool)

(declare-fun res!1030401 () Bool)

(assert (=> b!2426047 (=> (not res!1030401) (not e!1543114))))

(assert (=> b!2426047 (= res!1030401 (matchR!3245 lt!876289 (_2!16559 (get!8745 lt!876346))))))

(declare-fun b!2426048 () Bool)

(assert (=> b!2426048 (= e!1543117 (Some!5628 (tuple2!28037 Nil!28397 s!9460)))))

(declare-fun d!702561 () Bool)

(assert (=> d!702561 e!1543115))

(declare-fun res!1030402 () Bool)

(assert (=> d!702561 (=> res!1030402 e!1543115)))

(assert (=> d!702561 (= res!1030402 e!1543114)))

(declare-fun res!1030398 () Bool)

(assert (=> d!702561 (=> (not res!1030398) (not e!1543114))))

(assert (=> d!702561 (= res!1030398 (isDefined!4455 lt!876346))))

(assert (=> d!702561 (= lt!876346 e!1543117)))

(declare-fun c!386942 () Bool)

(assert (=> d!702561 (= c!386942 e!1543116)))

(declare-fun res!1030399 () Bool)

(assert (=> d!702561 (=> (not res!1030399) (not e!1543116))))

(assert (=> d!702561 (= res!1030399 (matchR!3245 lt!876292 Nil!28397))))

(assert (=> d!702561 (validRegex!2848 lt!876292)))

(assert (=> d!702561 (= (findConcatSeparation!737 lt!876292 lt!876289 Nil!28397 s!9460 s!9460) lt!876346)))

(assert (= (and d!702561 res!1030399) b!2426040))

(assert (= (and d!702561 c!386942) b!2426048))

(assert (= (and d!702561 (not c!386942)) b!2426042))

(assert (= (and b!2426042 c!386943) b!2426044))

(assert (= (and b!2426042 (not c!386943)) b!2426041))

(assert (= (and d!702561 res!1030398) b!2426045))

(assert (= (and b!2426045 res!1030400) b!2426047))

(assert (= (and b!2426047 res!1030401) b!2426043))

(assert (= (and d!702561 (not res!1030402)) b!2426046))

(declare-fun m!2811157 () Bool)

(assert (=> b!2426043 m!2811157))

(declare-fun m!2811159 () Bool)

(assert (=> b!2426043 m!2811159))

(declare-fun m!2811161 () Bool)

(assert (=> b!2426041 m!2811161))

(assert (=> b!2426041 m!2811161))

(declare-fun m!2811163 () Bool)

(assert (=> b!2426041 m!2811163))

(declare-fun m!2811165 () Bool)

(assert (=> b!2426041 m!2811165))

(assert (=> b!2426041 m!2811161))

(declare-fun m!2811167 () Bool)

(assert (=> b!2426041 m!2811167))

(assert (=> b!2426047 m!2811157))

(declare-fun m!2811169 () Bool)

(assert (=> b!2426047 m!2811169))

(declare-fun m!2811171 () Bool)

(assert (=> b!2426046 m!2811171))

(assert (=> b!2426045 m!2811157))

(declare-fun m!2811173 () Bool)

(assert (=> b!2426045 m!2811173))

(assert (=> d!702561 m!2811171))

(declare-fun m!2811175 () Bool)

(assert (=> d!702561 m!2811175))

(declare-fun m!2811177 () Bool)

(assert (=> d!702561 m!2811177))

(declare-fun m!2811179 () Bool)

(assert (=> b!2426040 m!2811179))

(assert (=> bm!148420 d!702561))

(declare-fun d!702565 () Bool)

(declare-fun isEmpty!16434 (Option!5629) Bool)

(assert (=> d!702565 (= (isDefined!4455 (findConcatSeparation!737 (h!33797 l!9164) (generalisedConcat!229 (t!208471 l!9164)) Nil!28397 s!9460 s!9460)) (not (isEmpty!16434 (findConcatSeparation!737 (h!33797 l!9164) (generalisedConcat!229 (t!208471 l!9164)) Nil!28397 s!9460 s!9460))))))

(declare-fun bs!463913 () Bool)

(assert (= bs!463913 d!702565))

(assert (=> bs!463913 m!2811075))

(declare-fun m!2811181 () Bool)

(assert (=> bs!463913 m!2811181))

(assert (=> b!2425898 d!702565))

(declare-fun b!2426049 () Bool)

(declare-fun e!1543121 () Bool)

(assert (=> b!2426049 (= e!1543121 (matchR!3245 (generalisedConcat!229 (t!208471 l!9164)) s!9460))))

(declare-fun b!2426050 () Bool)

(declare-fun lt!876348 () Unit!41627)

(declare-fun lt!876350 () Unit!41627)

(assert (=> b!2426050 (= lt!876348 lt!876350)))

(assert (=> b!2426050 (= (++!7049 (++!7049 Nil!28397 (Cons!28397 (h!33798 s!9460) Nil!28397)) (t!208472 s!9460)) s!9460)))

(assert (=> b!2426050 (= lt!876350 (lemmaMoveElementToOtherListKeepsConcatEq!675 Nil!28397 (h!33798 s!9460) (t!208472 s!9460) s!9460))))

(declare-fun e!1543123 () Option!5629)

(assert (=> b!2426050 (= e!1543123 (findConcatSeparation!737 (h!33797 l!9164) (generalisedConcat!229 (t!208471 l!9164)) (++!7049 Nil!28397 (Cons!28397 (h!33798 s!9460) Nil!28397)) (t!208472 s!9460) s!9460))))

(declare-fun b!2426051 () Bool)

(declare-fun e!1543122 () Option!5629)

(assert (=> b!2426051 (= e!1543122 e!1543123)))

(declare-fun c!386945 () Bool)

(assert (=> b!2426051 (= c!386945 (is-Nil!28397 s!9460))))

(declare-fun b!2426052 () Bool)

(declare-fun e!1543119 () Bool)

(declare-fun lt!876349 () Option!5629)

(assert (=> b!2426052 (= e!1543119 (= (++!7049 (_1!16559 (get!8745 lt!876349)) (_2!16559 (get!8745 lt!876349))) s!9460))))

(declare-fun b!2426053 () Bool)

(assert (=> b!2426053 (= e!1543123 None!5628)))

(declare-fun b!2426054 () Bool)

(declare-fun res!1030405 () Bool)

(assert (=> b!2426054 (=> (not res!1030405) (not e!1543119))))

(assert (=> b!2426054 (= res!1030405 (matchR!3245 (h!33797 l!9164) (_1!16559 (get!8745 lt!876349))))))

(declare-fun b!2426055 () Bool)

(declare-fun e!1543120 () Bool)

(assert (=> b!2426055 (= e!1543120 (not (isDefined!4455 lt!876349)))))

(declare-fun b!2426056 () Bool)

(declare-fun res!1030406 () Bool)

(assert (=> b!2426056 (=> (not res!1030406) (not e!1543119))))

(assert (=> b!2426056 (= res!1030406 (matchR!3245 (generalisedConcat!229 (t!208471 l!9164)) (_2!16559 (get!8745 lt!876349))))))

(declare-fun b!2426057 () Bool)

(assert (=> b!2426057 (= e!1543122 (Some!5628 (tuple2!28037 Nil!28397 s!9460)))))

(declare-fun d!702567 () Bool)

(assert (=> d!702567 e!1543120))

(declare-fun res!1030407 () Bool)

(assert (=> d!702567 (=> res!1030407 e!1543120)))

(assert (=> d!702567 (= res!1030407 e!1543119)))

(declare-fun res!1030403 () Bool)

(assert (=> d!702567 (=> (not res!1030403) (not e!1543119))))

(assert (=> d!702567 (= res!1030403 (isDefined!4455 lt!876349))))

(assert (=> d!702567 (= lt!876349 e!1543122)))

(declare-fun c!386944 () Bool)

(assert (=> d!702567 (= c!386944 e!1543121)))

(declare-fun res!1030404 () Bool)

(assert (=> d!702567 (=> (not res!1030404) (not e!1543121))))

(assert (=> d!702567 (= res!1030404 (matchR!3245 (h!33797 l!9164) Nil!28397))))

(assert (=> d!702567 (validRegex!2848 (h!33797 l!9164))))

(assert (=> d!702567 (= (findConcatSeparation!737 (h!33797 l!9164) (generalisedConcat!229 (t!208471 l!9164)) Nil!28397 s!9460 s!9460) lt!876349)))

(assert (= (and d!702567 res!1030404) b!2426049))

(assert (= (and d!702567 c!386944) b!2426057))

(assert (= (and d!702567 (not c!386944)) b!2426051))

(assert (= (and b!2426051 c!386945) b!2426053))

(assert (= (and b!2426051 (not c!386945)) b!2426050))

(assert (= (and d!702567 res!1030403) b!2426054))

(assert (= (and b!2426054 res!1030405) b!2426056))

(assert (= (and b!2426056 res!1030406) b!2426052))

(assert (= (and d!702567 (not res!1030407)) b!2426055))

(declare-fun m!2811183 () Bool)

(assert (=> b!2426052 m!2811183))

(declare-fun m!2811185 () Bool)

(assert (=> b!2426052 m!2811185))

(assert (=> b!2426050 m!2811161))

(assert (=> b!2426050 m!2811161))

(assert (=> b!2426050 m!2811163))

(assert (=> b!2426050 m!2811165))

(assert (=> b!2426050 m!2811073))

(assert (=> b!2426050 m!2811161))

(declare-fun m!2811187 () Bool)

(assert (=> b!2426050 m!2811187))

(assert (=> b!2426056 m!2811183))

(assert (=> b!2426056 m!2811073))

(declare-fun m!2811189 () Bool)

(assert (=> b!2426056 m!2811189))

(declare-fun m!2811191 () Bool)

(assert (=> b!2426055 m!2811191))

(assert (=> b!2426054 m!2811183))

(declare-fun m!2811193 () Bool)

(assert (=> b!2426054 m!2811193))

(assert (=> d!702567 m!2811191))

(declare-fun m!2811195 () Bool)

(assert (=> d!702567 m!2811195))

(assert (=> d!702567 m!2811071))

(assert (=> b!2426049 m!2811073))

(declare-fun m!2811197 () Bool)

(assert (=> b!2426049 m!2811197))

(assert (=> b!2425898 d!702567))

(declare-fun bs!463914 () Bool)

(declare-fun d!702569 () Bool)

(assert (= bs!463914 (and d!702569 start!237602)))

(declare-fun lambda!91374 () Int)

(assert (=> bs!463914 (= lambda!91374 lambda!91366)))

(declare-fun b!2426094 () Bool)

(declare-fun e!1543150 () Regex!7128)

(assert (=> b!2426094 (= e!1543150 (h!33797 (t!208471 l!9164)))))

(declare-fun b!2426095 () Bool)

(declare-fun e!1543149 () Regex!7128)

(assert (=> b!2426095 (= e!1543150 e!1543149)))

(declare-fun c!386960 () Bool)

(assert (=> b!2426095 (= c!386960 (is-Cons!28396 (t!208471 l!9164)))))

(declare-fun b!2426096 () Bool)

(declare-fun e!1543146 () Bool)

(declare-fun e!1543147 () Bool)

(assert (=> b!2426096 (= e!1543146 e!1543147)))

(declare-fun c!386963 () Bool)

(assert (=> b!2426096 (= c!386963 (isEmpty!16430 (tail!3740 (t!208471 l!9164))))))

(declare-fun e!1543151 () Bool)

(assert (=> d!702569 e!1543151))

(declare-fun res!1030416 () Bool)

(assert (=> d!702569 (=> (not res!1030416) (not e!1543151))))

(declare-fun lt!876355 () Regex!7128)

(assert (=> d!702569 (= res!1030416 (validRegex!2848 lt!876355))))

(assert (=> d!702569 (= lt!876355 e!1543150)))

(declare-fun c!386961 () Bool)

(declare-fun e!1543148 () Bool)

(assert (=> d!702569 (= c!386961 e!1543148)))

(declare-fun res!1030417 () Bool)

(assert (=> d!702569 (=> (not res!1030417) (not e!1543148))))

(assert (=> d!702569 (= res!1030417 (is-Cons!28396 (t!208471 l!9164)))))

(assert (=> d!702569 (forall!5762 (t!208471 l!9164) lambda!91374)))

(assert (=> d!702569 (= (generalisedConcat!229 (t!208471 l!9164)) lt!876355)))

(declare-fun b!2426097 () Bool)

(declare-fun isConcat!183 (Regex!7128) Bool)

(assert (=> b!2426097 (= e!1543147 (isConcat!183 lt!876355))))

(declare-fun b!2426098 () Bool)

(assert (=> b!2426098 (= e!1543151 e!1543146)))

(declare-fun c!386962 () Bool)

(assert (=> b!2426098 (= c!386962 (isEmpty!16430 (t!208471 l!9164)))))

(declare-fun b!2426099 () Bool)

(assert (=> b!2426099 (= e!1543149 EmptyExpr!7128)))

(declare-fun b!2426100 () Bool)

(assert (=> b!2426100 (= e!1543148 (isEmpty!16430 (t!208471 (t!208471 l!9164))))))

(declare-fun b!2426101 () Bool)

(assert (=> b!2426101 (= e!1543147 (= lt!876355 (head!5468 (t!208471 l!9164))))))

(declare-fun b!2426102 () Bool)

(assert (=> b!2426102 (= e!1543149 (Concat!11764 (h!33797 (t!208471 l!9164)) (generalisedConcat!229 (t!208471 (t!208471 l!9164)))))))

(declare-fun b!2426103 () Bool)

(declare-fun isEmptyExpr!183 (Regex!7128) Bool)

(assert (=> b!2426103 (= e!1543146 (isEmptyExpr!183 lt!876355))))

(assert (= (and d!702569 res!1030417) b!2426100))

(assert (= (and d!702569 c!386961) b!2426094))

(assert (= (and d!702569 (not c!386961)) b!2426095))

(assert (= (and b!2426095 c!386960) b!2426102))

(assert (= (and b!2426095 (not c!386960)) b!2426099))

(assert (= (and d!702569 res!1030416) b!2426098))

(assert (= (and b!2426098 c!386962) b!2426103))

(assert (= (and b!2426098 (not c!386962)) b!2426096))

(assert (= (and b!2426096 c!386963) b!2426101))

(assert (= (and b!2426096 (not c!386963)) b!2426097))

(declare-fun m!2811199 () Bool)

(assert (=> b!2426103 m!2811199))

(declare-fun m!2811201 () Bool)

(assert (=> b!2426098 m!2811201))

(declare-fun m!2811203 () Bool)

(assert (=> b!2426100 m!2811203))

(declare-fun m!2811205 () Bool)

(assert (=> b!2426101 m!2811205))

(declare-fun m!2811207 () Bool)

(assert (=> b!2426097 m!2811207))

(declare-fun m!2811209 () Bool)

(assert (=> b!2426102 m!2811209))

(declare-fun m!2811211 () Bool)

(assert (=> b!2426096 m!2811211))

(assert (=> b!2426096 m!2811211))

(declare-fun m!2811213 () Bool)

(assert (=> b!2426096 m!2811213))

(declare-fun m!2811215 () Bool)

(assert (=> d!702569 m!2811215))

(declare-fun m!2811217 () Bool)

(assert (=> d!702569 m!2811217))

(assert (=> b!2425898 d!702569))

(declare-fun b!2426116 () Bool)

(declare-fun e!1543159 () List!28495)

(assert (=> b!2426116 (= e!1543159 s!9460)))

(declare-fun b!2426117 () Bool)

(assert (=> b!2426117 (= e!1543159 (Cons!28397 (h!33798 Nil!28397) (++!7049 (t!208472 Nil!28397) s!9460)))))

(declare-fun d!702571 () Bool)

(declare-fun e!1543158 () Bool)

(assert (=> d!702571 e!1543158))

(declare-fun res!1030423 () Bool)

(assert (=> d!702571 (=> (not res!1030423) (not e!1543158))))

(declare-fun lt!876358 () List!28495)

(declare-fun content!3912 (List!28495) (Set C!14414))

(assert (=> d!702571 (= res!1030423 (= (content!3912 lt!876358) (set.union (content!3912 Nil!28397) (content!3912 s!9460))))))

(assert (=> d!702571 (= lt!876358 e!1543159)))

(declare-fun c!386968 () Bool)

(assert (=> d!702571 (= c!386968 (is-Nil!28397 Nil!28397))))

(assert (=> d!702571 (= (++!7049 Nil!28397 s!9460) lt!876358)))

(declare-fun b!2426118 () Bool)

(declare-fun res!1030422 () Bool)

(assert (=> b!2426118 (=> (not res!1030422) (not e!1543158))))

(declare-fun size!22250 (List!28495) Int)

(assert (=> b!2426118 (= res!1030422 (= (size!22250 lt!876358) (+ (size!22250 Nil!28397) (size!22250 s!9460))))))

(declare-fun b!2426119 () Bool)

(assert (=> b!2426119 (= e!1543158 (or (not (= s!9460 Nil!28397)) (= lt!876358 Nil!28397)))))

(assert (= (and d!702571 c!386968) b!2426116))

(assert (= (and d!702571 (not c!386968)) b!2426117))

(assert (= (and d!702571 res!1030423) b!2426118))

(assert (= (and b!2426118 res!1030422) b!2426119))

(declare-fun m!2811219 () Bool)

(assert (=> b!2426117 m!2811219))

(declare-fun m!2811221 () Bool)

(assert (=> d!702571 m!2811221))

(declare-fun m!2811223 () Bool)

(assert (=> d!702571 m!2811223))

(declare-fun m!2811225 () Bool)

(assert (=> d!702571 m!2811225))

(declare-fun m!2811227 () Bool)

(assert (=> b!2426118 m!2811227))

(declare-fun m!2811229 () Bool)

(assert (=> b!2426118 m!2811229))

(declare-fun m!2811231 () Bool)

(assert (=> b!2426118 m!2811231))

(assert (=> b!2425891 d!702571))

(declare-fun d!702573 () Bool)

(assert (=> d!702573 (= (isEmpty!16430 l!9164) (is-Nil!28396 l!9164))))

(assert (=> b!2425908 d!702573))

(declare-fun b!2426158 () Bool)

(declare-fun e!1543183 () Bool)

(declare-fun e!1543181 () Bool)

(assert (=> b!2426158 (= e!1543183 e!1543181)))

(declare-fun c!386981 () Bool)

(assert (=> b!2426158 (= c!386981 (is-EmptyLang!7128 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128))))))

(declare-fun b!2426159 () Bool)

(declare-fun res!1030449 () Bool)

(declare-fun e!1543180 () Bool)

(assert (=> b!2426159 (=> res!1030449 e!1543180)))

(declare-fun tail!3742 (List!28495) List!28495)

(assert (=> b!2426159 (= res!1030449 (not (isEmpty!16431 (tail!3742 (ite c!386919 s!9460 call!148424)))))))

(declare-fun call!148456 () Bool)

(declare-fun bm!148451 () Bool)

(assert (=> bm!148451 (= call!148456 (isEmpty!16431 (ite c!386919 s!9460 call!148424)))))

(declare-fun b!2426160 () Bool)

(declare-fun res!1030444 () Bool)

(declare-fun e!1543184 () Bool)

(assert (=> b!2426160 (=> (not res!1030444) (not e!1543184))))

(assert (=> b!2426160 (= res!1030444 (isEmpty!16431 (tail!3742 (ite c!386919 s!9460 call!148424))))))

(declare-fun b!2426161 () Bool)

(declare-fun lt!876362 () Bool)

(assert (=> b!2426161 (= e!1543183 (= lt!876362 call!148456))))

(declare-fun b!2426162 () Bool)

(declare-fun res!1030448 () Bool)

(assert (=> b!2426162 (=> (not res!1030448) (not e!1543184))))

(assert (=> b!2426162 (= res!1030448 (not call!148456))))

(declare-fun d!702575 () Bool)

(assert (=> d!702575 e!1543183))

(declare-fun c!386979 () Bool)

(assert (=> d!702575 (= c!386979 (is-EmptyExpr!7128 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128))))))

(declare-fun e!1543185 () Bool)

(assert (=> d!702575 (= lt!876362 e!1543185)))

(declare-fun c!386980 () Bool)

(assert (=> d!702575 (= c!386980 (isEmpty!16431 (ite c!386919 s!9460 call!148424)))))

(assert (=> d!702575 (validRegex!2848 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128)))))

(assert (=> d!702575 (= (matchR!3245 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128)) (ite c!386919 s!9460 call!148424)) lt!876362)))

(declare-fun b!2426163 () Bool)

(declare-fun nullable!2163 (Regex!7128) Bool)

(assert (=> b!2426163 (= e!1543185 (nullable!2163 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128))))))

(declare-fun b!2426164 () Bool)

(declare-fun head!5470 (List!28495) C!14414)

(assert (=> b!2426164 (= e!1543180 (not (= (head!5470 (ite c!386919 s!9460 call!148424)) (c!386921 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128))))))))

(declare-fun b!2426165 () Bool)

(declare-fun res!1030447 () Bool)

(declare-fun e!1543186 () Bool)

(assert (=> b!2426165 (=> res!1030447 e!1543186)))

(assert (=> b!2426165 (= res!1030447 (not (is-ElementMatch!7128 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128)))))))

(assert (=> b!2426165 (= e!1543181 e!1543186)))

(declare-fun b!2426166 () Bool)

(declare-fun res!1030443 () Bool)

(assert (=> b!2426166 (=> res!1030443 e!1543186)))

(assert (=> b!2426166 (= res!1030443 e!1543184)))

(declare-fun res!1030445 () Bool)

(assert (=> b!2426166 (=> (not res!1030445) (not e!1543184))))

(assert (=> b!2426166 (= res!1030445 lt!876362)))

(declare-fun b!2426167 () Bool)

(declare-fun derivativeStep!1820 (Regex!7128 C!14414) Regex!7128)

(assert (=> b!2426167 (= e!1543185 (matchR!3245 (derivativeStep!1820 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128)) (head!5470 (ite c!386919 s!9460 call!148424))) (tail!3742 (ite c!386919 s!9460 call!148424))))))

(declare-fun b!2426168 () Bool)

(assert (=> b!2426168 (= e!1543184 (= (head!5470 (ite c!386919 s!9460 call!148424)) (c!386921 (ite c!386919 lt!876291 (Concat!11764 lt!876292 EmptyExpr!7128)))))))

(declare-fun b!2426169 () Bool)

(declare-fun e!1543182 () Bool)

(assert (=> b!2426169 (= e!1543182 e!1543180)))

(declare-fun res!1030446 () Bool)

(assert (=> b!2426169 (=> res!1030446 e!1543180)))

(assert (=> b!2426169 (= res!1030446 call!148456)))

(declare-fun b!2426170 () Bool)

(assert (=> b!2426170 (= e!1543181 (not lt!876362))))

(declare-fun b!2426171 () Bool)

(assert (=> b!2426171 (= e!1543186 e!1543182)))

(declare-fun res!1030442 () Bool)

(assert (=> b!2426171 (=> (not res!1030442) (not e!1543182))))

(assert (=> b!2426171 (= res!1030442 (not lt!876362))))

(assert (= (and d!702575 c!386980) b!2426163))

(assert (= (and d!702575 (not c!386980)) b!2426167))

(assert (= (and d!702575 c!386979) b!2426161))

(assert (= (and d!702575 (not c!386979)) b!2426158))

(assert (= (and b!2426158 c!386981) b!2426170))

(assert (= (and b!2426158 (not c!386981)) b!2426165))

(assert (= (and b!2426165 (not res!1030447)) b!2426166))

(assert (= (and b!2426166 res!1030445) b!2426162))

(assert (= (and b!2426162 res!1030448) b!2426160))

(assert (= (and b!2426160 res!1030444) b!2426168))

(assert (= (and b!2426166 (not res!1030443)) b!2426171))

(assert (= (and b!2426171 res!1030442) b!2426169))

(assert (= (and b!2426169 (not res!1030446)) b!2426159))

(assert (= (and b!2426159 (not res!1030449)) b!2426164))

(assert (= (or b!2426161 b!2426162 b!2426169) bm!148451))

(declare-fun m!2811253 () Bool)

(assert (=> d!702575 m!2811253))

(declare-fun m!2811255 () Bool)

(assert (=> d!702575 m!2811255))

(assert (=> bm!148451 m!2811253))

(declare-fun m!2811257 () Bool)

(assert (=> b!2426160 m!2811257))

(assert (=> b!2426160 m!2811257))

(declare-fun m!2811259 () Bool)

(assert (=> b!2426160 m!2811259))

(declare-fun m!2811261 () Bool)

(assert (=> b!2426163 m!2811261))

(declare-fun m!2811263 () Bool)

(assert (=> b!2426167 m!2811263))

(assert (=> b!2426167 m!2811263))

(declare-fun m!2811265 () Bool)

(assert (=> b!2426167 m!2811265))

(assert (=> b!2426167 m!2811257))

(assert (=> b!2426167 m!2811265))

(assert (=> b!2426167 m!2811257))

(declare-fun m!2811267 () Bool)

(assert (=> b!2426167 m!2811267))

(assert (=> b!2426159 m!2811257))

(assert (=> b!2426159 m!2811257))

(assert (=> b!2426159 m!2811259))

(assert (=> b!2426164 m!2811263))

(assert (=> b!2426168 m!2811263))

(assert (=> bm!148419 d!702575))

(declare-fun bm!148458 () Bool)

(declare-fun call!148465 () Bool)

(declare-fun c!386987 () Bool)

(assert (=> bm!148458 (= call!148465 (validRegex!2848 (ite c!386987 (regTwo!14769 lt!876293) (regOne!14768 lt!876293))))))

(declare-fun b!2426190 () Bool)

(declare-fun e!1543205 () Bool)

(declare-fun e!1543204 () Bool)

(assert (=> b!2426190 (= e!1543205 e!1543204)))

(declare-fun res!1030462 () Bool)

(assert (=> b!2426190 (= res!1030462 (not (nullable!2163 (reg!7457 lt!876293))))))

(assert (=> b!2426190 (=> (not res!1030462) (not e!1543204))))

(declare-fun b!2426191 () Bool)

(declare-fun e!1543206 () Bool)

(assert (=> b!2426191 (= e!1543206 call!148465)))

(declare-fun call!148464 () Bool)

(declare-fun c!386986 () Bool)

(declare-fun bm!148459 () Bool)

(assert (=> bm!148459 (= call!148464 (validRegex!2848 (ite c!386986 (reg!7457 lt!876293) (ite c!386987 (regOne!14769 lt!876293) (regTwo!14768 lt!876293)))))))

(declare-fun b!2426192 () Bool)

(declare-fun e!1543207 () Bool)

(assert (=> b!2426192 (= e!1543205 e!1543207)))

(assert (=> b!2426192 (= c!386987 (is-Union!7128 lt!876293))))

(declare-fun bm!148460 () Bool)

(declare-fun call!148463 () Bool)

(assert (=> bm!148460 (= call!148463 call!148464)))

(declare-fun b!2426193 () Bool)

(assert (=> b!2426193 (= e!1543204 call!148464)))

(declare-fun b!2426194 () Bool)

(declare-fun e!1543203 () Bool)

(assert (=> b!2426194 (= e!1543203 e!1543205)))

(assert (=> b!2426194 (= c!386986 (is-Star!7128 lt!876293))))

(declare-fun d!702579 () Bool)

(declare-fun res!1030464 () Bool)

(assert (=> d!702579 (=> res!1030464 e!1543203)))

(assert (=> d!702579 (= res!1030464 (is-ElementMatch!7128 lt!876293))))

(assert (=> d!702579 (= (validRegex!2848 lt!876293) e!1543203)))

(declare-fun b!2426195 () Bool)

(declare-fun e!1543201 () Bool)

(assert (=> b!2426195 (= e!1543201 call!148463)))

(declare-fun b!2426196 () Bool)

(declare-fun res!1030461 () Bool)

(assert (=> b!2426196 (=> (not res!1030461) (not e!1543206))))

(assert (=> b!2426196 (= res!1030461 call!148463)))

(assert (=> b!2426196 (= e!1543207 e!1543206)))

(declare-fun b!2426197 () Bool)

(declare-fun e!1543202 () Bool)

(assert (=> b!2426197 (= e!1543202 e!1543201)))

(declare-fun res!1030460 () Bool)

(assert (=> b!2426197 (=> (not res!1030460) (not e!1543201))))

(assert (=> b!2426197 (= res!1030460 call!148465)))

(declare-fun b!2426198 () Bool)

(declare-fun res!1030463 () Bool)

(assert (=> b!2426198 (=> res!1030463 e!1543202)))

(assert (=> b!2426198 (= res!1030463 (not (is-Concat!11764 lt!876293)))))

(assert (=> b!2426198 (= e!1543207 e!1543202)))

(assert (= (and d!702579 (not res!1030464)) b!2426194))

(assert (= (and b!2426194 c!386986) b!2426190))

(assert (= (and b!2426194 (not c!386986)) b!2426192))

(assert (= (and b!2426190 res!1030462) b!2426193))

(assert (= (and b!2426192 c!386987) b!2426196))

(assert (= (and b!2426192 (not c!386987)) b!2426198))

(assert (= (and b!2426196 res!1030461) b!2426191))

(assert (= (and b!2426198 (not res!1030463)) b!2426197))

(assert (= (and b!2426197 res!1030460) b!2426195))

(assert (= (or b!2426196 b!2426195) bm!148460))

(assert (= (or b!2426191 b!2426197) bm!148458))

(assert (= (or b!2426193 bm!148460) bm!148459))

(declare-fun m!2811277 () Bool)

(assert (=> bm!148458 m!2811277))

(declare-fun m!2811279 () Bool)

(assert (=> b!2426190 m!2811279))

(declare-fun m!2811281 () Bool)

(assert (=> bm!148459 m!2811281))

(assert (=> b!2425900 d!702579))

(declare-fun d!702585 () Bool)

(assert (=> d!702585 (matchR!3245 (Concat!11764 lt!876292 EmptyExpr!7128) (++!7049 s!9460 Nil!28397))))

(declare-fun lt!876370 () Unit!41627)

(declare-fun choose!14371 (Regex!7128 Regex!7128 List!28495 List!28495) Unit!41627)

(assert (=> d!702585 (= lt!876370 (choose!14371 lt!876292 EmptyExpr!7128 s!9460 Nil!28397))))

(declare-fun e!1543212 () Bool)

(assert (=> d!702585 e!1543212))

(declare-fun res!1030467 () Bool)

(assert (=> d!702585 (=> (not res!1030467) (not e!1543212))))

(assert (=> d!702585 (= res!1030467 (validRegex!2848 lt!876292))))

(assert (=> d!702585 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!103 lt!876292 EmptyExpr!7128 s!9460 Nil!28397) lt!876370)))

(declare-fun b!2426205 () Bool)

(assert (=> b!2426205 (= e!1543212 (validRegex!2848 EmptyExpr!7128))))

(assert (= (and d!702585 res!1030467) b!2426205))

(declare-fun m!2811283 () Bool)

(assert (=> d!702585 m!2811283))

(assert (=> d!702585 m!2811283))

(declare-fun m!2811285 () Bool)

(assert (=> d!702585 m!2811285))

(declare-fun m!2811287 () Bool)

(assert (=> d!702585 m!2811287))

(assert (=> d!702585 m!2811177))

(declare-fun m!2811289 () Bool)

(assert (=> b!2426205 m!2811289))

(assert (=> b!2425892 d!702585))

(declare-fun b!2426210 () Bool)

(declare-fun e!1543218 () Bool)

(declare-fun e!1543216 () Bool)

(assert (=> b!2426210 (= e!1543218 e!1543216)))

(declare-fun c!386992 () Bool)

(assert (=> b!2426210 (= c!386992 (is-EmptyLang!7128 lt!876291))))

(declare-fun b!2426211 () Bool)

(declare-fun res!1030479 () Bool)

(declare-fun e!1543215 () Bool)

(assert (=> b!2426211 (=> res!1030479 e!1543215)))

(assert (=> b!2426211 (= res!1030479 (not (isEmpty!16431 (tail!3742 call!148424))))))

(declare-fun bm!148461 () Bool)

(declare-fun call!148466 () Bool)

(assert (=> bm!148461 (= call!148466 (isEmpty!16431 call!148424))))

(declare-fun b!2426212 () Bool)

(declare-fun res!1030474 () Bool)

(declare-fun e!1543219 () Bool)

(assert (=> b!2426212 (=> (not res!1030474) (not e!1543219))))

(assert (=> b!2426212 (= res!1030474 (isEmpty!16431 (tail!3742 call!148424)))))

(declare-fun b!2426213 () Bool)

(declare-fun lt!876371 () Bool)

(assert (=> b!2426213 (= e!1543218 (= lt!876371 call!148466))))

(declare-fun b!2426214 () Bool)

(declare-fun res!1030478 () Bool)

(assert (=> b!2426214 (=> (not res!1030478) (not e!1543219))))

(assert (=> b!2426214 (= res!1030478 (not call!148466))))

(declare-fun d!702587 () Bool)

(assert (=> d!702587 e!1543218))

(declare-fun c!386990 () Bool)

(assert (=> d!702587 (= c!386990 (is-EmptyExpr!7128 lt!876291))))

(declare-fun e!1543220 () Bool)

(assert (=> d!702587 (= lt!876371 e!1543220)))

(declare-fun c!386991 () Bool)

(assert (=> d!702587 (= c!386991 (isEmpty!16431 call!148424))))

(assert (=> d!702587 (validRegex!2848 lt!876291)))

(assert (=> d!702587 (= (matchR!3245 lt!876291 call!148424) lt!876371)))

(declare-fun b!2426215 () Bool)

(assert (=> b!2426215 (= e!1543220 (nullable!2163 lt!876291))))

(declare-fun b!2426216 () Bool)

(assert (=> b!2426216 (= e!1543215 (not (= (head!5470 call!148424) (c!386921 lt!876291))))))

(declare-fun b!2426217 () Bool)

(declare-fun res!1030477 () Bool)

(declare-fun e!1543221 () Bool)

(assert (=> b!2426217 (=> res!1030477 e!1543221)))

(assert (=> b!2426217 (= res!1030477 (not (is-ElementMatch!7128 lt!876291)))))

(assert (=> b!2426217 (= e!1543216 e!1543221)))

(declare-fun b!2426218 () Bool)

(declare-fun res!1030473 () Bool)

(assert (=> b!2426218 (=> res!1030473 e!1543221)))

(assert (=> b!2426218 (= res!1030473 e!1543219)))

(declare-fun res!1030475 () Bool)

(assert (=> b!2426218 (=> (not res!1030475) (not e!1543219))))

(assert (=> b!2426218 (= res!1030475 lt!876371)))

(declare-fun b!2426219 () Bool)

(assert (=> b!2426219 (= e!1543220 (matchR!3245 (derivativeStep!1820 lt!876291 (head!5470 call!148424)) (tail!3742 call!148424)))))

(declare-fun b!2426220 () Bool)

(assert (=> b!2426220 (= e!1543219 (= (head!5470 call!148424) (c!386921 lt!876291)))))

(declare-fun b!2426221 () Bool)

(declare-fun e!1543217 () Bool)

(assert (=> b!2426221 (= e!1543217 e!1543215)))

(declare-fun res!1030476 () Bool)

(assert (=> b!2426221 (=> res!1030476 e!1543215)))

(assert (=> b!2426221 (= res!1030476 call!148466)))

(declare-fun b!2426222 () Bool)

(assert (=> b!2426222 (= e!1543216 (not lt!876371))))

(declare-fun b!2426223 () Bool)

(assert (=> b!2426223 (= e!1543221 e!1543217)))

(declare-fun res!1030472 () Bool)

(assert (=> b!2426223 (=> (not res!1030472) (not e!1543217))))

(assert (=> b!2426223 (= res!1030472 (not lt!876371))))

(assert (= (and d!702587 c!386991) b!2426215))

(assert (= (and d!702587 (not c!386991)) b!2426219))

(assert (= (and d!702587 c!386990) b!2426213))

(assert (= (and d!702587 (not c!386990)) b!2426210))

(assert (= (and b!2426210 c!386992) b!2426222))

(assert (= (and b!2426210 (not c!386992)) b!2426217))

(assert (= (and b!2426217 (not res!1030477)) b!2426218))

(assert (= (and b!2426218 res!1030475) b!2426214))

(assert (= (and b!2426214 res!1030478) b!2426212))

(assert (= (and b!2426212 res!1030474) b!2426220))

(assert (= (and b!2426218 (not res!1030473)) b!2426223))

(assert (= (and b!2426223 res!1030472) b!2426221))

(assert (= (and b!2426221 (not res!1030476)) b!2426211))

(assert (= (and b!2426211 (not res!1030479)) b!2426216))

(assert (= (or b!2426213 b!2426214 b!2426221) bm!148461))

(declare-fun m!2811291 () Bool)

(assert (=> d!702587 m!2811291))

(declare-fun m!2811293 () Bool)

(assert (=> d!702587 m!2811293))

(assert (=> bm!148461 m!2811291))

(declare-fun m!2811295 () Bool)

(assert (=> b!2426212 m!2811295))

(assert (=> b!2426212 m!2811295))

(declare-fun m!2811297 () Bool)

(assert (=> b!2426212 m!2811297))

(declare-fun m!2811299 () Bool)

(assert (=> b!2426215 m!2811299))

(declare-fun m!2811301 () Bool)

(assert (=> b!2426219 m!2811301))

(assert (=> b!2426219 m!2811301))

(declare-fun m!2811303 () Bool)

(assert (=> b!2426219 m!2811303))

(assert (=> b!2426219 m!2811295))

(assert (=> b!2426219 m!2811303))

(assert (=> b!2426219 m!2811295))

(declare-fun m!2811305 () Bool)

(assert (=> b!2426219 m!2811305))

(assert (=> b!2426211 m!2811295))

(assert (=> b!2426211 m!2811295))

(assert (=> b!2426211 m!2811297))

(assert (=> b!2426216 m!2811301))

(assert (=> b!2426220 m!2811301))

(assert (=> b!2425892 d!702587))

(declare-fun d!702589 () Bool)

(assert (=> d!702589 (isDefined!4455 (findConcatSeparation!737 lt!876292 EmptyExpr!7128 Nil!28397 s!9460 s!9460))))

(declare-fun lt!876375 () Unit!41627)

(declare-fun choose!14372 (Regex!7128 Regex!7128 List!28495) Unit!41627)

(assert (=> d!702589 (= lt!876375 (choose!14372 lt!876292 EmptyExpr!7128 s!9460))))

(assert (=> d!702589 (validRegex!2848 lt!876292)))

(assert (=> d!702589 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!77 lt!876292 EmptyExpr!7128 s!9460) lt!876375)))

(declare-fun bs!463917 () Bool)

(assert (= bs!463917 d!702589))

(assert (=> bs!463917 m!2811083))

(assert (=> bs!463917 m!2811083))

(declare-fun m!2811321 () Bool)

(assert (=> bs!463917 m!2811321))

(declare-fun m!2811323 () Bool)

(assert (=> bs!463917 m!2811323))

(assert (=> bs!463917 m!2811177))

(assert (=> b!2425892 d!702589))

(declare-fun d!702593 () Bool)

(assert (=> d!702593 (matchR!3245 (Concat!11764 lt!876292 EmptyExpr!7128) (++!7049 (_1!16559 lt!876282) (_2!16559 lt!876282)))))

(declare-fun lt!876379 () Unit!41627)

(declare-fun choose!14373 (Regex!7128 Regex!7128 List!28495 List!28495 List!28495) Unit!41627)

(assert (=> d!702593 (= lt!876379 (choose!14373 lt!876292 EmptyExpr!7128 (_1!16559 lt!876282) (_2!16559 lt!876282) s!9460))))

(assert (=> d!702593 (validRegex!2848 lt!876292)))

(assert (=> d!702593 (= (lemmaFindSeparationIsDefinedThenConcatMatches!77 lt!876292 EmptyExpr!7128 (_1!16559 lt!876282) (_2!16559 lt!876282) s!9460) lt!876379)))

(declare-fun bs!463918 () Bool)

(assert (= bs!463918 d!702593))

(declare-fun m!2811339 () Bool)

(assert (=> bs!463918 m!2811339))

(assert (=> bs!463918 m!2811339))

(declare-fun m!2811341 () Bool)

(assert (=> bs!463918 m!2811341))

(declare-fun m!2811343 () Bool)

(assert (=> bs!463918 m!2811343))

(assert (=> bs!463918 m!2811177))

(assert (=> b!2425910 d!702593))

(declare-fun d!702599 () Bool)

(assert (=> d!702599 (= (get!8745 lt!876286) (v!31036 lt!876286))))

(assert (=> b!2425910 d!702599))

(declare-fun d!702601 () Bool)

(assert (=> d!702601 (= (isDefined!4455 (ite c!386919 call!148422 lt!876286)) (not (isEmpty!16434 (ite c!386919 call!148422 lt!876286))))))

(declare-fun bs!463919 () Bool)

(assert (= bs!463919 d!702601))

(declare-fun m!2811345 () Bool)

(assert (=> bs!463919 m!2811345))

(assert (=> bm!148421 d!702601))

(declare-fun bs!463920 () Bool)

(declare-fun d!702603 () Bool)

(assert (= bs!463920 (and d!702603 start!237602)))

(declare-fun lambda!91376 () Int)

(assert (=> bs!463920 (= lambda!91376 lambda!91366)))

(declare-fun bs!463921 () Bool)

(assert (= bs!463921 (and d!702603 d!702569)))

(assert (=> bs!463921 (= lambda!91376 lambda!91374)))

(declare-fun b!2426232 () Bool)

(declare-fun e!1543230 () Regex!7128)

(assert (=> b!2426232 (= e!1543230 (h!33797 lt!876280))))

(declare-fun b!2426233 () Bool)

(declare-fun e!1543229 () Regex!7128)

(assert (=> b!2426233 (= e!1543230 e!1543229)))

(declare-fun c!386995 () Bool)

(assert (=> b!2426233 (= c!386995 (is-Cons!28396 lt!876280))))

(declare-fun b!2426234 () Bool)

(declare-fun e!1543226 () Bool)

(declare-fun e!1543227 () Bool)

(assert (=> b!2426234 (= e!1543226 e!1543227)))

(declare-fun c!386998 () Bool)

(assert (=> b!2426234 (= c!386998 (isEmpty!16430 (tail!3740 lt!876280)))))

(declare-fun e!1543231 () Bool)

(assert (=> d!702603 e!1543231))

(declare-fun res!1030484 () Bool)

(assert (=> d!702603 (=> (not res!1030484) (not e!1543231))))

(declare-fun lt!876380 () Regex!7128)

(assert (=> d!702603 (= res!1030484 (validRegex!2848 lt!876380))))

(assert (=> d!702603 (= lt!876380 e!1543230)))

(declare-fun c!386996 () Bool)

(declare-fun e!1543228 () Bool)

(assert (=> d!702603 (= c!386996 e!1543228)))

(declare-fun res!1030485 () Bool)

(assert (=> d!702603 (=> (not res!1030485) (not e!1543228))))

(assert (=> d!702603 (= res!1030485 (is-Cons!28396 lt!876280))))

(assert (=> d!702603 (forall!5762 lt!876280 lambda!91376)))

(assert (=> d!702603 (= (generalisedConcat!229 lt!876280) lt!876380)))

(declare-fun b!2426235 () Bool)

(assert (=> b!2426235 (= e!1543227 (isConcat!183 lt!876380))))

(declare-fun b!2426236 () Bool)

(assert (=> b!2426236 (= e!1543231 e!1543226)))

(declare-fun c!386997 () Bool)

(assert (=> b!2426236 (= c!386997 (isEmpty!16430 lt!876280))))

(declare-fun b!2426237 () Bool)

(assert (=> b!2426237 (= e!1543229 EmptyExpr!7128)))

(declare-fun b!2426238 () Bool)

(assert (=> b!2426238 (= e!1543228 (isEmpty!16430 (t!208471 lt!876280)))))

(declare-fun b!2426239 () Bool)

(assert (=> b!2426239 (= e!1543227 (= lt!876380 (head!5468 lt!876280)))))

(declare-fun b!2426240 () Bool)

(assert (=> b!2426240 (= e!1543229 (Concat!11764 (h!33797 lt!876280) (generalisedConcat!229 (t!208471 lt!876280))))))

(declare-fun b!2426241 () Bool)

(assert (=> b!2426241 (= e!1543226 (isEmptyExpr!183 lt!876380))))

(assert (= (and d!702603 res!1030485) b!2426238))

(assert (= (and d!702603 c!386996) b!2426232))

(assert (= (and d!702603 (not c!386996)) b!2426233))

(assert (= (and b!2426233 c!386995) b!2426240))

(assert (= (and b!2426233 (not c!386995)) b!2426237))

(assert (= (and d!702603 res!1030484) b!2426236))

(assert (= (and b!2426236 c!386997) b!2426241))

(assert (= (and b!2426236 (not c!386997)) b!2426234))

(assert (= (and b!2426234 c!386998) b!2426239))

(assert (= (and b!2426234 (not c!386998)) b!2426235))

(declare-fun m!2811347 () Bool)

(assert (=> b!2426241 m!2811347))

(assert (=> b!2426236 m!2811047))

(declare-fun m!2811349 () Bool)

(assert (=> b!2426238 m!2811349))

(declare-fun m!2811351 () Bool)

(assert (=> b!2426239 m!2811351))

(declare-fun m!2811353 () Bool)

(assert (=> b!2426235 m!2811353))

(declare-fun m!2811355 () Bool)

(assert (=> b!2426240 m!2811355))

(declare-fun m!2811357 () Bool)

(assert (=> b!2426234 m!2811357))

(assert (=> b!2426234 m!2811357))

(declare-fun m!2811359 () Bool)

(assert (=> b!2426234 m!2811359))

(declare-fun m!2811361 () Bool)

(assert (=> d!702603 m!2811361))

(declare-fun m!2811363 () Bool)

(assert (=> d!702603 m!2811363))

(assert (=> b!2425901 d!702603))

(declare-fun d!702605 () Bool)

(assert (=> d!702605 (= (isEmpty!16431 s!9460) (is-Nil!28397 s!9460))))

(assert (=> b!2425894 d!702605))

(declare-fun b!2426242 () Bool)

(declare-fun e!1543234 () Bool)

(assert (=> b!2426242 (= e!1543234 (matchR!3245 EmptyExpr!7128 s!9460))))

(declare-fun b!2426243 () Bool)

(declare-fun lt!876381 () Unit!41627)

(declare-fun lt!876383 () Unit!41627)

(assert (=> b!2426243 (= lt!876381 lt!876383)))

(assert (=> b!2426243 (= (++!7049 (++!7049 Nil!28397 (Cons!28397 (h!33798 s!9460) Nil!28397)) (t!208472 s!9460)) s!9460)))

(assert (=> b!2426243 (= lt!876383 (lemmaMoveElementToOtherListKeepsConcatEq!675 Nil!28397 (h!33798 s!9460) (t!208472 s!9460) s!9460))))

(declare-fun e!1543236 () Option!5629)

(assert (=> b!2426243 (= e!1543236 (findConcatSeparation!737 lt!876292 EmptyExpr!7128 (++!7049 Nil!28397 (Cons!28397 (h!33798 s!9460) Nil!28397)) (t!208472 s!9460) s!9460))))

(declare-fun b!2426244 () Bool)

(declare-fun e!1543235 () Option!5629)

(assert (=> b!2426244 (= e!1543235 e!1543236)))

(declare-fun c!387000 () Bool)

(assert (=> b!2426244 (= c!387000 (is-Nil!28397 s!9460))))

(declare-fun b!2426245 () Bool)

(declare-fun e!1543232 () Bool)

(declare-fun lt!876382 () Option!5629)

(assert (=> b!2426245 (= e!1543232 (= (++!7049 (_1!16559 (get!8745 lt!876382)) (_2!16559 (get!8745 lt!876382))) s!9460))))

(declare-fun b!2426246 () Bool)

(assert (=> b!2426246 (= e!1543236 None!5628)))

(declare-fun b!2426247 () Bool)

(declare-fun res!1030488 () Bool)

(assert (=> b!2426247 (=> (not res!1030488) (not e!1543232))))

(assert (=> b!2426247 (= res!1030488 (matchR!3245 lt!876292 (_1!16559 (get!8745 lt!876382))))))

(declare-fun b!2426248 () Bool)

(declare-fun e!1543233 () Bool)

(assert (=> b!2426248 (= e!1543233 (not (isDefined!4455 lt!876382)))))

(declare-fun b!2426249 () Bool)

(declare-fun res!1030489 () Bool)

(assert (=> b!2426249 (=> (not res!1030489) (not e!1543232))))

(assert (=> b!2426249 (= res!1030489 (matchR!3245 EmptyExpr!7128 (_2!16559 (get!8745 lt!876382))))))

(declare-fun b!2426250 () Bool)

(assert (=> b!2426250 (= e!1543235 (Some!5628 (tuple2!28037 Nil!28397 s!9460)))))

(declare-fun d!702607 () Bool)

(assert (=> d!702607 e!1543233))

(declare-fun res!1030490 () Bool)

(assert (=> d!702607 (=> res!1030490 e!1543233)))

(assert (=> d!702607 (= res!1030490 e!1543232)))

(declare-fun res!1030486 () Bool)

(assert (=> d!702607 (=> (not res!1030486) (not e!1543232))))

(assert (=> d!702607 (= res!1030486 (isDefined!4455 lt!876382))))

(assert (=> d!702607 (= lt!876382 e!1543235)))

(declare-fun c!386999 () Bool)

(assert (=> d!702607 (= c!386999 e!1543234)))

(declare-fun res!1030487 () Bool)

(assert (=> d!702607 (=> (not res!1030487) (not e!1543234))))

(assert (=> d!702607 (= res!1030487 (matchR!3245 lt!876292 Nil!28397))))

(assert (=> d!702607 (validRegex!2848 lt!876292)))

(assert (=> d!702607 (= (findConcatSeparation!737 lt!876292 EmptyExpr!7128 Nil!28397 s!9460 s!9460) lt!876382)))

(assert (= (and d!702607 res!1030487) b!2426242))

(assert (= (and d!702607 c!386999) b!2426250))

(assert (= (and d!702607 (not c!386999)) b!2426244))

(assert (= (and b!2426244 c!387000) b!2426246))

(assert (= (and b!2426244 (not c!387000)) b!2426243))

(assert (= (and d!702607 res!1030486) b!2426247))

(assert (= (and b!2426247 res!1030488) b!2426249))

(assert (= (and b!2426249 res!1030489) b!2426245))

(assert (= (and d!702607 (not res!1030490)) b!2426248))

(declare-fun m!2811365 () Bool)

(assert (=> b!2426245 m!2811365))

(declare-fun m!2811367 () Bool)

(assert (=> b!2426245 m!2811367))

(assert (=> b!2426243 m!2811161))

(assert (=> b!2426243 m!2811161))

(assert (=> b!2426243 m!2811163))

(assert (=> b!2426243 m!2811165))

(assert (=> b!2426243 m!2811161))

(declare-fun m!2811369 () Bool)

(assert (=> b!2426243 m!2811369))

(assert (=> b!2426249 m!2811365))

(declare-fun m!2811371 () Bool)

(assert (=> b!2426249 m!2811371))

(declare-fun m!2811373 () Bool)

(assert (=> b!2426248 m!2811373))

(assert (=> b!2426247 m!2811365))

(declare-fun m!2811375 () Bool)

(assert (=> b!2426247 m!2811375))

(assert (=> d!702607 m!2811373))

(assert (=> d!702607 m!2811175))

(assert (=> d!702607 m!2811177))

(declare-fun m!2811377 () Bool)

(assert (=> b!2426242 m!2811377))

(assert (=> bm!148417 d!702607))

(declare-fun bs!463922 () Bool)

(declare-fun d!702609 () Bool)

(assert (= bs!463922 (and d!702609 start!237602)))

(declare-fun lambda!91377 () Int)

(assert (=> bs!463922 (= lambda!91377 lambda!91366)))

(declare-fun bs!463923 () Bool)

(assert (= bs!463923 (and d!702609 d!702569)))

(assert (=> bs!463923 (= lambda!91377 lambda!91374)))

(declare-fun bs!463924 () Bool)

(assert (= bs!463924 (and d!702609 d!702603)))

(assert (=> bs!463924 (= lambda!91377 lambda!91376)))

(declare-fun b!2426251 () Bool)

(declare-fun e!1543241 () Regex!7128)

(assert (=> b!2426251 (= e!1543241 (h!33797 l!9164))))

(declare-fun b!2426252 () Bool)

(declare-fun e!1543240 () Regex!7128)

(assert (=> b!2426252 (= e!1543241 e!1543240)))

(declare-fun c!387001 () Bool)

(assert (=> b!2426252 (= c!387001 (is-Cons!28396 l!9164))))

(declare-fun b!2426253 () Bool)

(declare-fun e!1543237 () Bool)

(declare-fun e!1543238 () Bool)

(assert (=> b!2426253 (= e!1543237 e!1543238)))

(declare-fun c!387004 () Bool)

(assert (=> b!2426253 (= c!387004 (isEmpty!16430 (tail!3740 l!9164)))))

(declare-fun e!1543242 () Bool)

(assert (=> d!702609 e!1543242))

(declare-fun res!1030491 () Bool)

(assert (=> d!702609 (=> (not res!1030491) (not e!1543242))))

(declare-fun lt!876384 () Regex!7128)

(assert (=> d!702609 (= res!1030491 (validRegex!2848 lt!876384))))

(assert (=> d!702609 (= lt!876384 e!1543241)))

(declare-fun c!387002 () Bool)

(declare-fun e!1543239 () Bool)

(assert (=> d!702609 (= c!387002 e!1543239)))

(declare-fun res!1030492 () Bool)

(assert (=> d!702609 (=> (not res!1030492) (not e!1543239))))

(assert (=> d!702609 (= res!1030492 (is-Cons!28396 l!9164))))

(assert (=> d!702609 (forall!5762 l!9164 lambda!91377)))

(assert (=> d!702609 (= (generalisedConcat!229 l!9164) lt!876384)))

(declare-fun b!2426254 () Bool)

(assert (=> b!2426254 (= e!1543238 (isConcat!183 lt!876384))))

(declare-fun b!2426255 () Bool)

(assert (=> b!2426255 (= e!1543242 e!1543237)))

(declare-fun c!387003 () Bool)

(assert (=> b!2426255 (= c!387003 (isEmpty!16430 l!9164))))

(declare-fun b!2426256 () Bool)

(assert (=> b!2426256 (= e!1543240 EmptyExpr!7128)))

(declare-fun b!2426257 () Bool)

(assert (=> b!2426257 (= e!1543239 (isEmpty!16430 (t!208471 l!9164)))))

(declare-fun b!2426258 () Bool)

(assert (=> b!2426258 (= e!1543238 (= lt!876384 (head!5468 l!9164)))))

(declare-fun b!2426259 () Bool)

(assert (=> b!2426259 (= e!1543240 (Concat!11764 (h!33797 l!9164) (generalisedConcat!229 (t!208471 l!9164))))))

(declare-fun b!2426260 () Bool)

(assert (=> b!2426260 (= e!1543237 (isEmptyExpr!183 lt!876384))))

(assert (= (and d!702609 res!1030492) b!2426257))

(assert (= (and d!702609 c!387002) b!2426251))

(assert (= (and d!702609 (not c!387002)) b!2426252))

(assert (= (and b!2426252 c!387001) b!2426259))

(assert (= (and b!2426252 (not c!387001)) b!2426256))

(assert (= (and d!702609 res!1030491) b!2426255))

(assert (= (and b!2426255 c!387003) b!2426260))

(assert (= (and b!2426255 (not c!387003)) b!2426253))

(assert (= (and b!2426253 c!387004) b!2426258))

(assert (= (and b!2426253 (not c!387004)) b!2426254))

(declare-fun m!2811379 () Bool)

(assert (=> b!2426260 m!2811379))

(assert (=> b!2426255 m!2811051))

(assert (=> b!2426257 m!2811201))

(assert (=> b!2426258 m!2811039))

(declare-fun m!2811381 () Bool)

(assert (=> b!2426254 m!2811381))

(assert (=> b!2426259 m!2811073))

(assert (=> b!2426253 m!2811049))

(assert (=> b!2426253 m!2811049))

(declare-fun m!2811383 () Bool)

(assert (=> b!2426253 m!2811383))

(declare-fun m!2811385 () Bool)

(assert (=> d!702609 m!2811385))

(declare-fun m!2811387 () Bool)

(assert (=> d!702609 m!2811387))

(assert (=> b!2425886 d!702609))

(declare-fun bm!148462 () Bool)

(declare-fun call!148469 () Bool)

(declare-fun c!387006 () Bool)

(assert (=> bm!148462 (= call!148469 (validRegex!2848 (ite c!387006 (regTwo!14769 (h!33797 l!9164)) (regOne!14768 (h!33797 l!9164)))))))

(declare-fun b!2426261 () Bool)

(declare-fun e!1543247 () Bool)

(declare-fun e!1543246 () Bool)

(assert (=> b!2426261 (= e!1543247 e!1543246)))

(declare-fun res!1030495 () Bool)

(assert (=> b!2426261 (= res!1030495 (not (nullable!2163 (reg!7457 (h!33797 l!9164)))))))

(assert (=> b!2426261 (=> (not res!1030495) (not e!1543246))))

(declare-fun b!2426262 () Bool)

(declare-fun e!1543248 () Bool)

(assert (=> b!2426262 (= e!1543248 call!148469)))

(declare-fun bm!148463 () Bool)

(declare-fun c!387005 () Bool)

(declare-fun call!148468 () Bool)

(assert (=> bm!148463 (= call!148468 (validRegex!2848 (ite c!387005 (reg!7457 (h!33797 l!9164)) (ite c!387006 (regOne!14769 (h!33797 l!9164)) (regTwo!14768 (h!33797 l!9164))))))))

(declare-fun b!2426263 () Bool)

(declare-fun e!1543249 () Bool)

(assert (=> b!2426263 (= e!1543247 e!1543249)))

(assert (=> b!2426263 (= c!387006 (is-Union!7128 (h!33797 l!9164)))))

(declare-fun bm!148464 () Bool)

(declare-fun call!148467 () Bool)

(assert (=> bm!148464 (= call!148467 call!148468)))

(declare-fun b!2426264 () Bool)

(assert (=> b!2426264 (= e!1543246 call!148468)))

(declare-fun b!2426265 () Bool)

(declare-fun e!1543245 () Bool)

(assert (=> b!2426265 (= e!1543245 e!1543247)))

(assert (=> b!2426265 (= c!387005 (is-Star!7128 (h!33797 l!9164)))))

(declare-fun d!702611 () Bool)

(declare-fun res!1030497 () Bool)

(assert (=> d!702611 (=> res!1030497 e!1543245)))

(assert (=> d!702611 (= res!1030497 (is-ElementMatch!7128 (h!33797 l!9164)))))

(assert (=> d!702611 (= (validRegex!2848 (h!33797 l!9164)) e!1543245)))

(declare-fun b!2426266 () Bool)

(declare-fun e!1543243 () Bool)

(assert (=> b!2426266 (= e!1543243 call!148467)))

(declare-fun b!2426267 () Bool)

(declare-fun res!1030494 () Bool)

(assert (=> b!2426267 (=> (not res!1030494) (not e!1543248))))

(assert (=> b!2426267 (= res!1030494 call!148467)))

(assert (=> b!2426267 (= e!1543249 e!1543248)))

(declare-fun b!2426268 () Bool)

(declare-fun e!1543244 () Bool)

(assert (=> b!2426268 (= e!1543244 e!1543243)))

(declare-fun res!1030493 () Bool)

(assert (=> b!2426268 (=> (not res!1030493) (not e!1543243))))

(assert (=> b!2426268 (= res!1030493 call!148469)))

(declare-fun b!2426269 () Bool)

(declare-fun res!1030496 () Bool)

(assert (=> b!2426269 (=> res!1030496 e!1543244)))

(assert (=> b!2426269 (= res!1030496 (not (is-Concat!11764 (h!33797 l!9164))))))

(assert (=> b!2426269 (= e!1543249 e!1543244)))

(assert (= (and d!702611 (not res!1030497)) b!2426265))

(assert (= (and b!2426265 c!387005) b!2426261))

(assert (= (and b!2426265 (not c!387005)) b!2426263))

(assert (= (and b!2426261 res!1030495) b!2426264))

(assert (= (and b!2426263 c!387006) b!2426267))

(assert (= (and b!2426263 (not c!387006)) b!2426269))

(assert (= (and b!2426267 res!1030494) b!2426262))

(assert (= (and b!2426269 (not res!1030496)) b!2426268))

(assert (= (and b!2426268 res!1030493) b!2426266))

(assert (= (or b!2426267 b!2426266) bm!148464))

(assert (= (or b!2426262 b!2426268) bm!148462))

(assert (= (or b!2426264 bm!148464) bm!148463))

(declare-fun m!2811389 () Bool)

(assert (=> bm!148462 m!2811389))

(declare-fun m!2811391 () Bool)

(assert (=> b!2426261 m!2811391))

(declare-fun m!2811393 () Bool)

(assert (=> bm!148463 m!2811393))

(assert (=> b!2425903 d!702611))

(assert (=> b!2425903 d!702569))

(declare-fun b!2426270 () Bool)

(declare-fun e!1543251 () List!28495)

(assert (=> b!2426270 (= e!1543251 (ite c!386919 Nil!28397 (_2!16559 lt!876282)))))

(declare-fun b!2426271 () Bool)

(assert (=> b!2426271 (= e!1543251 (Cons!28397 (h!33798 (ite c!386919 s!9460 (_1!16559 lt!876282))) (++!7049 (t!208472 (ite c!386919 s!9460 (_1!16559 lt!876282))) (ite c!386919 Nil!28397 (_2!16559 lt!876282)))))))

(declare-fun d!702613 () Bool)

(declare-fun e!1543250 () Bool)

(assert (=> d!702613 e!1543250))

(declare-fun res!1030499 () Bool)

(assert (=> d!702613 (=> (not res!1030499) (not e!1543250))))

(declare-fun lt!876385 () List!28495)

(assert (=> d!702613 (= res!1030499 (= (content!3912 lt!876385) (set.union (content!3912 (ite c!386919 s!9460 (_1!16559 lt!876282))) (content!3912 (ite c!386919 Nil!28397 (_2!16559 lt!876282))))))))

(assert (=> d!702613 (= lt!876385 e!1543251)))

(declare-fun c!387007 () Bool)

(assert (=> d!702613 (= c!387007 (is-Nil!28397 (ite c!386919 s!9460 (_1!16559 lt!876282))))))

(assert (=> d!702613 (= (++!7049 (ite c!386919 s!9460 (_1!16559 lt!876282)) (ite c!386919 Nil!28397 (_2!16559 lt!876282))) lt!876385)))

(declare-fun b!2426272 () Bool)

(declare-fun res!1030498 () Bool)

(assert (=> b!2426272 (=> (not res!1030498) (not e!1543250))))

(assert (=> b!2426272 (= res!1030498 (= (size!22250 lt!876385) (+ (size!22250 (ite c!386919 s!9460 (_1!16559 lt!876282))) (size!22250 (ite c!386919 Nil!28397 (_2!16559 lt!876282))))))))

(declare-fun b!2426273 () Bool)

(assert (=> b!2426273 (= e!1543250 (or (not (= (ite c!386919 Nil!28397 (_2!16559 lt!876282)) Nil!28397)) (= lt!876385 (ite c!386919 s!9460 (_1!16559 lt!876282)))))))

(assert (= (and d!702613 c!387007) b!2426270))

(assert (= (and d!702613 (not c!387007)) b!2426271))

(assert (= (and d!702613 res!1030499) b!2426272))

(assert (= (and b!2426272 res!1030498) b!2426273))

(declare-fun m!2811395 () Bool)

(assert (=> b!2426271 m!2811395))

(declare-fun m!2811397 () Bool)

(assert (=> d!702613 m!2811397))

(declare-fun m!2811399 () Bool)

(assert (=> d!702613 m!2811399))

(declare-fun m!2811401 () Bool)

(assert (=> d!702613 m!2811401))

(declare-fun m!2811403 () Bool)

(assert (=> b!2426272 m!2811403))

(declare-fun m!2811405 () Bool)

(assert (=> b!2426272 m!2811405))

(declare-fun m!2811407 () Bool)

(assert (=> b!2426272 m!2811407))

(assert (=> bm!148418 d!702613))

(declare-fun b!2426274 () Bool)

(declare-fun e!1543255 () Bool)

(declare-fun e!1543253 () Bool)

(assert (=> b!2426274 (= e!1543255 e!1543253)))

(declare-fun c!387010 () Bool)

(assert (=> b!2426274 (= c!387010 (is-EmptyLang!7128 lt!876292))))

(declare-fun b!2426275 () Bool)

(declare-fun res!1030507 () Bool)

(declare-fun e!1543252 () Bool)

(assert (=> b!2426275 (=> res!1030507 e!1543252)))

(assert (=> b!2426275 (= res!1030507 (not (isEmpty!16431 (tail!3742 s!9460))))))

(declare-fun bm!148465 () Bool)

(declare-fun call!148470 () Bool)

(assert (=> bm!148465 (= call!148470 (isEmpty!16431 s!9460))))

(declare-fun b!2426276 () Bool)

(declare-fun res!1030502 () Bool)

(declare-fun e!1543256 () Bool)

(assert (=> b!2426276 (=> (not res!1030502) (not e!1543256))))

(assert (=> b!2426276 (= res!1030502 (isEmpty!16431 (tail!3742 s!9460)))))

(declare-fun b!2426277 () Bool)

(declare-fun lt!876386 () Bool)

(assert (=> b!2426277 (= e!1543255 (= lt!876386 call!148470))))

(declare-fun b!2426278 () Bool)

(declare-fun res!1030506 () Bool)

(assert (=> b!2426278 (=> (not res!1030506) (not e!1543256))))

(assert (=> b!2426278 (= res!1030506 (not call!148470))))

(declare-fun d!702615 () Bool)

(assert (=> d!702615 e!1543255))

(declare-fun c!387008 () Bool)

(assert (=> d!702615 (= c!387008 (is-EmptyExpr!7128 lt!876292))))

(declare-fun e!1543257 () Bool)

(assert (=> d!702615 (= lt!876386 e!1543257)))

(declare-fun c!387009 () Bool)

(assert (=> d!702615 (= c!387009 (isEmpty!16431 s!9460))))

(assert (=> d!702615 (validRegex!2848 lt!876292)))

(assert (=> d!702615 (= (matchR!3245 lt!876292 s!9460) lt!876386)))

(declare-fun b!2426279 () Bool)

(assert (=> b!2426279 (= e!1543257 (nullable!2163 lt!876292))))

(declare-fun b!2426280 () Bool)

(assert (=> b!2426280 (= e!1543252 (not (= (head!5470 s!9460) (c!386921 lt!876292))))))

(declare-fun b!2426281 () Bool)

(declare-fun res!1030505 () Bool)

(declare-fun e!1543258 () Bool)

(assert (=> b!2426281 (=> res!1030505 e!1543258)))

(assert (=> b!2426281 (= res!1030505 (not (is-ElementMatch!7128 lt!876292)))))

(assert (=> b!2426281 (= e!1543253 e!1543258)))

(declare-fun b!2426282 () Bool)

(declare-fun res!1030501 () Bool)

(assert (=> b!2426282 (=> res!1030501 e!1543258)))

(assert (=> b!2426282 (= res!1030501 e!1543256)))

(declare-fun res!1030503 () Bool)

(assert (=> b!2426282 (=> (not res!1030503) (not e!1543256))))

(assert (=> b!2426282 (= res!1030503 lt!876386)))

(declare-fun b!2426283 () Bool)

(assert (=> b!2426283 (= e!1543257 (matchR!3245 (derivativeStep!1820 lt!876292 (head!5470 s!9460)) (tail!3742 s!9460)))))

(declare-fun b!2426284 () Bool)

(assert (=> b!2426284 (= e!1543256 (= (head!5470 s!9460) (c!386921 lt!876292)))))

(declare-fun b!2426285 () Bool)

(declare-fun e!1543254 () Bool)

(assert (=> b!2426285 (= e!1543254 e!1543252)))

(declare-fun res!1030504 () Bool)

(assert (=> b!2426285 (=> res!1030504 e!1543252)))

(assert (=> b!2426285 (= res!1030504 call!148470)))

(declare-fun b!2426286 () Bool)

(assert (=> b!2426286 (= e!1543253 (not lt!876386))))

(declare-fun b!2426287 () Bool)

(assert (=> b!2426287 (= e!1543258 e!1543254)))

(declare-fun res!1030500 () Bool)

(assert (=> b!2426287 (=> (not res!1030500) (not e!1543254))))

(assert (=> b!2426287 (= res!1030500 (not lt!876386))))

(assert (= (and d!702615 c!387009) b!2426279))

(assert (= (and d!702615 (not c!387009)) b!2426283))

(assert (= (and d!702615 c!387008) b!2426277))

(assert (= (and d!702615 (not c!387008)) b!2426274))

(assert (= (and b!2426274 c!387010) b!2426286))

(assert (= (and b!2426274 (not c!387010)) b!2426281))

(assert (= (and b!2426281 (not res!1030505)) b!2426282))

(assert (= (and b!2426282 res!1030503) b!2426278))

(assert (= (and b!2426278 res!1030506) b!2426276))

(assert (= (and b!2426276 res!1030502) b!2426284))

(assert (= (and b!2426282 (not res!1030501)) b!2426287))

(assert (= (and b!2426287 res!1030500) b!2426285))

(assert (= (and b!2426285 (not res!1030504)) b!2426275))

(assert (= (and b!2426275 (not res!1030507)) b!2426280))

(assert (= (or b!2426277 b!2426278 b!2426285) bm!148465))

(assert (=> d!702615 m!2811035))

(assert (=> d!702615 m!2811177))

(assert (=> bm!148465 m!2811035))

(declare-fun m!2811409 () Bool)

(assert (=> b!2426276 m!2811409))

(assert (=> b!2426276 m!2811409))

(declare-fun m!2811411 () Bool)

(assert (=> b!2426276 m!2811411))

(declare-fun m!2811413 () Bool)

(assert (=> b!2426279 m!2811413))

(declare-fun m!2811415 () Bool)

(assert (=> b!2426283 m!2811415))

(assert (=> b!2426283 m!2811415))

(declare-fun m!2811417 () Bool)

(assert (=> b!2426283 m!2811417))

(assert (=> b!2426283 m!2811409))

(assert (=> b!2426283 m!2811417))

(assert (=> b!2426283 m!2811409))

(declare-fun m!2811419 () Bool)

(assert (=> b!2426283 m!2811419))

(assert (=> b!2426275 m!2811409))

(assert (=> b!2426275 m!2811409))

(assert (=> b!2426275 m!2811411))

(assert (=> b!2426280 m!2811415))

(assert (=> b!2426284 m!2811415))

(assert (=> b!2425887 d!702615))

(declare-fun d!702617 () Bool)

(assert (=> d!702617 (= (head!5468 l!9164) (h!33797 l!9164))))

(assert (=> b!2425887 d!702617))

(declare-fun d!702619 () Bool)

(assert (=> d!702619 (= (isDefined!4455 (ite c!386919 call!148423 call!148422)) (not (isEmpty!16434 (ite c!386919 call!148423 call!148422))))))

(declare-fun bs!463925 () Bool)

(assert (= bs!463925 d!702619))

(declare-fun m!2811421 () Bool)

(assert (=> bs!463925 m!2811421))

(assert (=> bm!148416 d!702619))

(declare-fun b!2426327 () Bool)

(assert (=> b!2426327 true))

(assert (=> b!2426327 true))

(declare-fun bs!463926 () Bool)

(declare-fun b!2426324 () Bool)

(assert (= bs!463926 (and b!2426324 b!2426327)))

(declare-fun lambda!91383 () Int)

(declare-fun lambda!91382 () Int)

(assert (=> bs!463926 (not (= lambda!91383 lambda!91382))))

(assert (=> b!2426324 true))

(assert (=> b!2426324 true))

(declare-fun b!2426320 () Bool)

(declare-fun e!1543279 () Bool)

(declare-fun e!1543282 () Bool)

(assert (=> b!2426320 (= e!1543279 e!1543282)))

(declare-fun res!1030525 () Bool)

(assert (=> b!2426320 (= res!1030525 (matchRSpec!977 (regOne!14769 r!13927) s!9460))))

(assert (=> b!2426320 (=> res!1030525 e!1543282)))

(declare-fun call!148476 () Bool)

(declare-fun c!387019 () Bool)

(declare-fun bm!148470 () Bool)

(declare-fun Exists!1168 (Int) Bool)

(assert (=> bm!148470 (= call!148476 (Exists!1168 (ite c!387019 lambda!91382 lambda!91383)))))

(declare-fun b!2426321 () Bool)

(declare-fun e!1543277 () Bool)

(assert (=> b!2426321 (= e!1543279 e!1543277)))

(assert (=> b!2426321 (= c!387019 (is-Star!7128 r!13927))))

(declare-fun b!2426322 () Bool)

(declare-fun res!1030524 () Bool)

(declare-fun e!1543281 () Bool)

(assert (=> b!2426322 (=> res!1030524 e!1543281)))

(declare-fun call!148475 () Bool)

(assert (=> b!2426322 (= res!1030524 call!148475)))

(assert (=> b!2426322 (= e!1543277 e!1543281)))

(declare-fun b!2426323 () Bool)

(declare-fun c!387022 () Bool)

(assert (=> b!2426323 (= c!387022 (is-Union!7128 r!13927))))

(declare-fun e!1543280 () Bool)

(assert (=> b!2426323 (= e!1543280 e!1543279)))

(assert (=> b!2426324 (= e!1543277 call!148476)))

(declare-fun b!2426326 () Bool)

(assert (=> b!2426326 (= e!1543282 (matchRSpec!977 (regTwo!14769 r!13927) s!9460))))

(assert (=> b!2426327 (= e!1543281 call!148476)))

(declare-fun b!2426328 () Bool)

(declare-fun e!1543278 () Bool)

(declare-fun e!1543283 () Bool)

(assert (=> b!2426328 (= e!1543278 e!1543283)))

(declare-fun res!1030526 () Bool)

(assert (=> b!2426328 (= res!1030526 (not (is-EmptyLang!7128 r!13927)))))

(assert (=> b!2426328 (=> (not res!1030526) (not e!1543283))))

(declare-fun bm!148471 () Bool)

(assert (=> bm!148471 (= call!148475 (isEmpty!16431 s!9460))))

(declare-fun b!2426329 () Bool)

(declare-fun c!387021 () Bool)

(assert (=> b!2426329 (= c!387021 (is-ElementMatch!7128 r!13927))))

(assert (=> b!2426329 (= e!1543283 e!1543280)))

(declare-fun b!2426330 () Bool)

(assert (=> b!2426330 (= e!1543280 (= s!9460 (Cons!28397 (c!386921 r!13927) Nil!28397)))))

(declare-fun d!702621 () Bool)

(declare-fun c!387020 () Bool)

(assert (=> d!702621 (= c!387020 (is-EmptyExpr!7128 r!13927))))

(assert (=> d!702621 (= (matchRSpec!977 r!13927 s!9460) e!1543278)))

(declare-fun b!2426325 () Bool)

(assert (=> b!2426325 (= e!1543278 call!148475)))

(assert (= (and d!702621 c!387020) b!2426325))

(assert (= (and d!702621 (not c!387020)) b!2426328))

(assert (= (and b!2426328 res!1030526) b!2426329))

(assert (= (and b!2426329 c!387021) b!2426330))

(assert (= (and b!2426329 (not c!387021)) b!2426323))

(assert (= (and b!2426323 c!387022) b!2426320))

(assert (= (and b!2426323 (not c!387022)) b!2426321))

(assert (= (and b!2426320 (not res!1030525)) b!2426326))

(assert (= (and b!2426321 c!387019) b!2426322))

(assert (= (and b!2426321 (not c!387019)) b!2426324))

(assert (= (and b!2426322 (not res!1030524)) b!2426327))

(assert (= (or b!2426327 b!2426324) bm!148470))

(assert (= (or b!2426325 b!2426322) bm!148471))

(declare-fun m!2811423 () Bool)

(assert (=> b!2426320 m!2811423))

(declare-fun m!2811425 () Bool)

(assert (=> bm!148470 m!2811425))

(declare-fun m!2811427 () Bool)

(assert (=> b!2426326 m!2811427))

(assert (=> bm!148471 m!2811035))

(assert (=> b!2425906 d!702621))

(declare-fun b!2426345 () Bool)

(declare-fun e!1543293 () Bool)

(declare-fun e!1543291 () Bool)

(assert (=> b!2426345 (= e!1543293 e!1543291)))

(declare-fun c!387029 () Bool)

(assert (=> b!2426345 (= c!387029 (is-EmptyLang!7128 r!13927))))

(declare-fun b!2426346 () Bool)

(declare-fun res!1030536 () Bool)

(declare-fun e!1543290 () Bool)

(assert (=> b!2426346 (=> res!1030536 e!1543290)))

(assert (=> b!2426346 (= res!1030536 (not (isEmpty!16431 (tail!3742 s!9460))))))

(declare-fun bm!148472 () Bool)

(declare-fun call!148477 () Bool)

(assert (=> bm!148472 (= call!148477 (isEmpty!16431 s!9460))))

(declare-fun b!2426347 () Bool)

(declare-fun res!1030531 () Bool)

(declare-fun e!1543294 () Bool)

(assert (=> b!2426347 (=> (not res!1030531) (not e!1543294))))

(assert (=> b!2426347 (= res!1030531 (isEmpty!16431 (tail!3742 s!9460)))))

(declare-fun b!2426348 () Bool)

(declare-fun lt!876393 () Bool)

(assert (=> b!2426348 (= e!1543293 (= lt!876393 call!148477))))

(declare-fun b!2426349 () Bool)

(declare-fun res!1030535 () Bool)

(assert (=> b!2426349 (=> (not res!1030535) (not e!1543294))))

(assert (=> b!2426349 (= res!1030535 (not call!148477))))

(declare-fun d!702623 () Bool)

(assert (=> d!702623 e!1543293))

(declare-fun c!387027 () Bool)

(assert (=> d!702623 (= c!387027 (is-EmptyExpr!7128 r!13927))))

(declare-fun e!1543295 () Bool)

(assert (=> d!702623 (= lt!876393 e!1543295)))

(declare-fun c!387028 () Bool)

(assert (=> d!702623 (= c!387028 (isEmpty!16431 s!9460))))

(assert (=> d!702623 (validRegex!2848 r!13927)))

(assert (=> d!702623 (= (matchR!3245 r!13927 s!9460) lt!876393)))

(declare-fun b!2426350 () Bool)

(assert (=> b!2426350 (= e!1543295 (nullable!2163 r!13927))))

(declare-fun b!2426351 () Bool)

(assert (=> b!2426351 (= e!1543290 (not (= (head!5470 s!9460) (c!386921 r!13927))))))

(declare-fun b!2426352 () Bool)

(declare-fun res!1030534 () Bool)

(declare-fun e!1543296 () Bool)

(assert (=> b!2426352 (=> res!1030534 e!1543296)))

(assert (=> b!2426352 (= res!1030534 (not (is-ElementMatch!7128 r!13927)))))

(assert (=> b!2426352 (= e!1543291 e!1543296)))

(declare-fun b!2426353 () Bool)

(declare-fun res!1030530 () Bool)

(assert (=> b!2426353 (=> res!1030530 e!1543296)))

(assert (=> b!2426353 (= res!1030530 e!1543294)))

(declare-fun res!1030532 () Bool)

(assert (=> b!2426353 (=> (not res!1030532) (not e!1543294))))

(assert (=> b!2426353 (= res!1030532 lt!876393)))

(declare-fun b!2426354 () Bool)

(assert (=> b!2426354 (= e!1543295 (matchR!3245 (derivativeStep!1820 r!13927 (head!5470 s!9460)) (tail!3742 s!9460)))))

(declare-fun b!2426355 () Bool)

(assert (=> b!2426355 (= e!1543294 (= (head!5470 s!9460) (c!386921 r!13927)))))

(declare-fun b!2426356 () Bool)

(declare-fun e!1543292 () Bool)

(assert (=> b!2426356 (= e!1543292 e!1543290)))

(declare-fun res!1030533 () Bool)

(assert (=> b!2426356 (=> res!1030533 e!1543290)))

(assert (=> b!2426356 (= res!1030533 call!148477)))

(declare-fun b!2426357 () Bool)

(assert (=> b!2426357 (= e!1543291 (not lt!876393))))

(declare-fun b!2426358 () Bool)

(assert (=> b!2426358 (= e!1543296 e!1543292)))

(declare-fun res!1030529 () Bool)

(assert (=> b!2426358 (=> (not res!1030529) (not e!1543292))))

(assert (=> b!2426358 (= res!1030529 (not lt!876393))))

(assert (= (and d!702623 c!387028) b!2426350))

(assert (= (and d!702623 (not c!387028)) b!2426354))

(assert (= (and d!702623 c!387027) b!2426348))

(assert (= (and d!702623 (not c!387027)) b!2426345))

(assert (= (and b!2426345 c!387029) b!2426357))

(assert (= (and b!2426345 (not c!387029)) b!2426352))

(assert (= (and b!2426352 (not res!1030534)) b!2426353))

(assert (= (and b!2426353 res!1030532) b!2426349))

(assert (= (and b!2426349 res!1030535) b!2426347))

(assert (= (and b!2426347 res!1030531) b!2426355))

(assert (= (and b!2426353 (not res!1030530)) b!2426358))

(assert (= (and b!2426358 res!1030529) b!2426356))

(assert (= (and b!2426356 (not res!1030533)) b!2426346))

(assert (= (and b!2426346 (not res!1030536)) b!2426351))

(assert (= (or b!2426348 b!2426349 b!2426356) bm!148472))

(assert (=> d!702623 m!2811035))

(declare-fun m!2811429 () Bool)

(assert (=> d!702623 m!2811429))

(assert (=> bm!148472 m!2811035))

(assert (=> b!2426347 m!2811409))

(assert (=> b!2426347 m!2811409))

(assert (=> b!2426347 m!2811411))

(declare-fun m!2811431 () Bool)

(assert (=> b!2426350 m!2811431))

(assert (=> b!2426354 m!2811415))

(assert (=> b!2426354 m!2811415))

(declare-fun m!2811433 () Bool)

(assert (=> b!2426354 m!2811433))

(assert (=> b!2426354 m!2811409))

(assert (=> b!2426354 m!2811433))

(assert (=> b!2426354 m!2811409))

(declare-fun m!2811435 () Bool)

(assert (=> b!2426354 m!2811435))

(assert (=> b!2426346 m!2811409))

(assert (=> b!2426346 m!2811409))

(assert (=> b!2426346 m!2811411))

(assert (=> b!2426351 m!2811415))

(assert (=> b!2426355 m!2811415))

(assert (=> b!2425906 d!702623))

(declare-fun d!702625 () Bool)

(assert (=> d!702625 (= (matchR!3245 r!13927 s!9460) (matchRSpec!977 r!13927 s!9460))))

(declare-fun lt!876396 () Unit!41627)

(declare-fun choose!14375 (Regex!7128 List!28495) Unit!41627)

(assert (=> d!702625 (= lt!876396 (choose!14375 r!13927 s!9460))))

(assert (=> d!702625 (validRegex!2848 r!13927)))

(assert (=> d!702625 (= (mainMatchTheorem!977 r!13927 s!9460) lt!876396)))

(declare-fun bs!463927 () Bool)

(assert (= bs!463927 d!702625))

(assert (=> bs!463927 m!2811065))

(assert (=> bs!463927 m!2811063))

(declare-fun m!2811437 () Bool)

(assert (=> bs!463927 m!2811437))

(assert (=> bs!463927 m!2811429))

(assert (=> b!2425906 d!702625))

(declare-fun b!2426380 () Bool)

(declare-fun e!1543303 () Bool)

(declare-fun tp!770378 () Bool)

(declare-fun tp!770380 () Bool)

(assert (=> b!2426380 (= e!1543303 (and tp!770378 tp!770380))))

(declare-fun b!2426379 () Bool)

(declare-fun tp!770376 () Bool)

(assert (=> b!2426379 (= e!1543303 tp!770376)))

(declare-fun b!2426377 () Bool)

(assert (=> b!2426377 (= e!1543303 tp_is_empty!11669)))

(declare-fun b!2426378 () Bool)

(declare-fun tp!770379 () Bool)

(declare-fun tp!770377 () Bool)

(assert (=> b!2426378 (= e!1543303 (and tp!770379 tp!770377))))

(assert (=> b!2425889 (= tp!770335 e!1543303)))

(assert (= (and b!2425889 (is-ElementMatch!7128 (regOne!14769 r!13927))) b!2426377))

(assert (= (and b!2425889 (is-Concat!11764 (regOne!14769 r!13927))) b!2426378))

(assert (= (and b!2425889 (is-Star!7128 (regOne!14769 r!13927))) b!2426379))

(assert (= (and b!2425889 (is-Union!7128 (regOne!14769 r!13927))) b!2426380))

(declare-fun b!2426384 () Bool)

(declare-fun e!1543304 () Bool)

(declare-fun tp!770383 () Bool)

(declare-fun tp!770385 () Bool)

(assert (=> b!2426384 (= e!1543304 (and tp!770383 tp!770385))))

(declare-fun b!2426383 () Bool)

(declare-fun tp!770381 () Bool)

(assert (=> b!2426383 (= e!1543304 tp!770381)))

(declare-fun b!2426381 () Bool)

(assert (=> b!2426381 (= e!1543304 tp_is_empty!11669)))

(declare-fun b!2426382 () Bool)

(declare-fun tp!770384 () Bool)

(declare-fun tp!770382 () Bool)

(assert (=> b!2426382 (= e!1543304 (and tp!770384 tp!770382))))

(assert (=> b!2425889 (= tp!770339 e!1543304)))

(assert (= (and b!2425889 (is-ElementMatch!7128 (regTwo!14769 r!13927))) b!2426381))

(assert (= (and b!2425889 (is-Concat!11764 (regTwo!14769 r!13927))) b!2426382))

(assert (= (and b!2425889 (is-Star!7128 (regTwo!14769 r!13927))) b!2426383))

(assert (= (and b!2425889 (is-Union!7128 (regTwo!14769 r!13927))) b!2426384))

(declare-fun b!2426388 () Bool)

(declare-fun e!1543305 () Bool)

(declare-fun tp!770388 () Bool)

(declare-fun tp!770390 () Bool)

(assert (=> b!2426388 (= e!1543305 (and tp!770388 tp!770390))))

(declare-fun b!2426387 () Bool)

(declare-fun tp!770386 () Bool)

(assert (=> b!2426387 (= e!1543305 tp!770386)))

(declare-fun b!2426385 () Bool)

(assert (=> b!2426385 (= e!1543305 tp_is_empty!11669)))

(declare-fun b!2426386 () Bool)

(declare-fun tp!770389 () Bool)

(declare-fun tp!770387 () Bool)

(assert (=> b!2426386 (= e!1543305 (and tp!770389 tp!770387))))

(assert (=> b!2425899 (= tp!770340 e!1543305)))

(assert (= (and b!2425899 (is-ElementMatch!7128 (h!33797 l!9164))) b!2426385))

(assert (= (and b!2425899 (is-Concat!11764 (h!33797 l!9164))) b!2426386))

(assert (= (and b!2425899 (is-Star!7128 (h!33797 l!9164))) b!2426387))

(assert (= (and b!2425899 (is-Union!7128 (h!33797 l!9164))) b!2426388))

(declare-fun b!2426393 () Bool)

(declare-fun e!1543308 () Bool)

(declare-fun tp!770395 () Bool)

(declare-fun tp!770396 () Bool)

(assert (=> b!2426393 (= e!1543308 (and tp!770395 tp!770396))))

(assert (=> b!2425899 (= tp!770338 e!1543308)))

(assert (= (and b!2425899 (is-Cons!28396 (t!208471 l!9164))) b!2426393))

(declare-fun b!2426397 () Bool)

(declare-fun e!1543309 () Bool)

(declare-fun tp!770399 () Bool)

(declare-fun tp!770401 () Bool)

(assert (=> b!2426397 (= e!1543309 (and tp!770399 tp!770401))))

(declare-fun b!2426396 () Bool)

(declare-fun tp!770397 () Bool)

(assert (=> b!2426396 (= e!1543309 tp!770397)))

(declare-fun b!2426394 () Bool)

(assert (=> b!2426394 (= e!1543309 tp_is_empty!11669)))

(declare-fun b!2426395 () Bool)

(declare-fun tp!770400 () Bool)

(declare-fun tp!770398 () Bool)

(assert (=> b!2426395 (= e!1543309 (and tp!770400 tp!770398))))

(assert (=> b!2425890 (= tp!770341 e!1543309)))

(assert (= (and b!2425890 (is-ElementMatch!7128 (reg!7457 r!13927))) b!2426394))

(assert (= (and b!2425890 (is-Concat!11764 (reg!7457 r!13927))) b!2426395))

(assert (= (and b!2425890 (is-Star!7128 (reg!7457 r!13927))) b!2426396))

(assert (= (and b!2425890 (is-Union!7128 (reg!7457 r!13927))) b!2426397))

(declare-fun b!2426401 () Bool)

(declare-fun e!1543310 () Bool)

(declare-fun tp!770404 () Bool)

(declare-fun tp!770406 () Bool)

(assert (=> b!2426401 (= e!1543310 (and tp!770404 tp!770406))))

(declare-fun b!2426400 () Bool)

(declare-fun tp!770402 () Bool)

(assert (=> b!2426400 (= e!1543310 tp!770402)))

(declare-fun b!2426398 () Bool)

(assert (=> b!2426398 (= e!1543310 tp_is_empty!11669)))

(declare-fun b!2426399 () Bool)

(declare-fun tp!770405 () Bool)

(declare-fun tp!770403 () Bool)

(assert (=> b!2426399 (= e!1543310 (and tp!770405 tp!770403))))

(assert (=> b!2425893 (= tp!770336 e!1543310)))

(assert (= (and b!2425893 (is-ElementMatch!7128 (regOne!14768 r!13927))) b!2426398))

(assert (= (and b!2425893 (is-Concat!11764 (regOne!14768 r!13927))) b!2426399))

(assert (= (and b!2425893 (is-Star!7128 (regOne!14768 r!13927))) b!2426400))

(assert (= (and b!2425893 (is-Union!7128 (regOne!14768 r!13927))) b!2426401))

(declare-fun b!2426405 () Bool)

(declare-fun e!1543311 () Bool)

(declare-fun tp!770409 () Bool)

(declare-fun tp!770411 () Bool)

(assert (=> b!2426405 (= e!1543311 (and tp!770409 tp!770411))))

(declare-fun b!2426404 () Bool)

(declare-fun tp!770407 () Bool)

(assert (=> b!2426404 (= e!1543311 tp!770407)))

(declare-fun b!2426402 () Bool)

(assert (=> b!2426402 (= e!1543311 tp_is_empty!11669)))

(declare-fun b!2426403 () Bool)

(declare-fun tp!770410 () Bool)

(declare-fun tp!770408 () Bool)

(assert (=> b!2426403 (= e!1543311 (and tp!770410 tp!770408))))

(assert (=> b!2425893 (= tp!770337 e!1543311)))

(assert (= (and b!2425893 (is-ElementMatch!7128 (regTwo!14768 r!13927))) b!2426402))

(assert (= (and b!2425893 (is-Concat!11764 (regTwo!14768 r!13927))) b!2426403))

(assert (= (and b!2425893 (is-Star!7128 (regTwo!14768 r!13927))) b!2426404))

(assert (= (and b!2425893 (is-Union!7128 (regTwo!14768 r!13927))) b!2426405))

(declare-fun b!2426410 () Bool)

(declare-fun e!1543314 () Bool)

(declare-fun tp!770414 () Bool)

(assert (=> b!2426410 (= e!1543314 (and tp_is_empty!11669 tp!770414))))

(assert (=> b!2425896 (= tp!770334 e!1543314)))

(assert (= (and b!2425896 (is-Cons!28397 (t!208472 s!9460))) b!2426410))

(declare-fun b_lambda!74701 () Bool)

(assert (= b_lambda!74699 (or start!237602 b_lambda!74701)))

(declare-fun bs!463928 () Bool)

(declare-fun d!702627 () Bool)

(assert (= bs!463928 (and d!702627 start!237602)))

(assert (=> bs!463928 (= (dynLambda!12222 lambda!91366 (h!33797 l!9164)) (validRegex!2848 (h!33797 l!9164)))))

(assert (=> bs!463928 m!2811071))

(assert (=> b!2425993 d!702627))

(push 1)

(assert (not d!702565))

(assert (not b!2426242))

(assert (not b!2426054))

(assert (not b!2426098))

(assert (not b!2426249))

(assert (not b!2426276))

(assert (not d!702561))

(assert (not d!702593))

(assert (not d!702607))

(assert (not d!702625))

(assert (not b!2425994))

(assert (not b!2426405))

(assert (not b!2426379))

(assert tp_is_empty!11669)

(assert (not bm!148459))

(assert (not b!2426215))

(assert (not b!2426383))

(assert (not b!2426045))

(assert (not b!2426280))

(assert (not b!2426400))

(assert (not b!2426103))

(assert (not b!2426040))

(assert (not b!2426351))

(assert (not b!2426160))

(assert (not b!2426216))

(assert (not d!702601))

(assert (not b!2426211))

(assert (not b!2426241))

(assert (not b!2426257))

(assert (not bm!148463))

(assert (not b!2426326))

(assert (not b!2426346))

(assert (not d!702567))

(assert (not b!2426046))

(assert (not d!702587))

(assert (not bm!148471))

(assert (not b!2426240))

(assert (not b!2426410))

(assert (not b!2426254))

(assert (not d!702575))

(assert (not b!2426272))

(assert (not d!702603))

(assert (not b!2426260))

(assert (not b!2426284))

(assert (not b!2426234))

(assert (not bs!463928))

(assert (not b!2426168))

(assert (not b!2426212))

(assert (not d!702571))

(assert (not bm!148451))

(assert (not b!2426236))

(assert (not b!2426271))

(assert (not b!2426159))

(assert (not b!2426050))

(assert (not b!2426397))

(assert (not d!702615))

(assert (not b!2426049))

(assert (not b!2426380))

(assert (not b!2426283))

(assert (not b!2426259))

(assert (not b!2426056))

(assert (not b!2426404))

(assert (not b!2426386))

(assert (not b!2426378))

(assert (not b!2426393))

(assert (not d!702569))

(assert (not b!2426117))

(assert (not d!702589))

(assert (not b!2426047))

(assert (not d!702619))

(assert (not b!2426102))

(assert (not bm!148461))

(assert (not b!2426258))

(assert (not b!2426401))

(assert (not b!2426384))

(assert (not b!2426118))

(assert (not b!2426347))

(assert (not b!2426253))

(assert (not b!2426255))

(assert (not b!2426382))

(assert (not b!2426388))

(assert (not b!2426041))

(assert (not d!702585))

(assert (not b!2426101))

(assert (not d!702613))

(assert (not b!2426219))

(assert (not b!2426403))

(assert (not b!2426354))

(assert (not b!2426055))

(assert (not b!2426399))

(assert (not b!2426043))

(assert (not b!2426243))

(assert (not b!2426248))

(assert (not b!2426163))

(assert (not b!2426100))

(assert (not b!2426164))

(assert (not b!2426247))

(assert (not b_lambda!74701))

(assert (not b!2426239))

(assert (not bm!148462))

(assert (not b!2426235))

(assert (not b!2426096))

(assert (not bm!148470))

(assert (not b!2426396))

(assert (not b!2426355))

(assert (not d!702623))

(assert (not b!2426167))

(assert (not d!702609))

(assert (not b!2426387))

(assert (not bm!148458))

(assert (not bm!148472))

(assert (not b!2426205))

(assert (not b!2426238))

(assert (not b!2426220))

(assert (not b!2426395))

(assert (not b!2426097))

(assert (not b!2426245))

(assert (not bm!148465))

(assert (not b!2426190))

(assert (not b!2426275))

(assert (not b!2426350))

(assert (not b!2426279))

(assert (not b!2426261))

(assert (not b!2426052))

(assert (not b!2426320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

