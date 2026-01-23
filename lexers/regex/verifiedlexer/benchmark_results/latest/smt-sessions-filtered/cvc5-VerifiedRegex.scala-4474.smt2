; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237902 () Bool)

(assert start!237902)

(declare-fun b!2429269 () Bool)

(declare-fun e!1544811 () Bool)

(declare-fun e!1544813 () Bool)

(assert (=> b!2429269 (= e!1544811 (not e!1544813))))

(declare-fun res!1031687 () Bool)

(assert (=> b!2429269 (=> res!1031687 e!1544813)))

(declare-datatypes ((C!14438 0))(
  ( (C!14439 (val!8461 Int)) )
))
(declare-datatypes ((Regex!7140 0))(
  ( (ElementMatch!7140 (c!387538 C!14438)) (Concat!11776 (regOne!14792 Regex!7140) (regTwo!14792 Regex!7140)) (EmptyExpr!7140) (Star!7140 (reg!7469 Regex!7140)) (EmptyLang!7140) (Union!7140 (regOne!14793 Regex!7140) (regTwo!14793 Regex!7140)) )
))
(declare-fun r!13927 () Regex!7140)

(assert (=> b!2429269 (= res!1031687 (or (is-Concat!11776 r!13927) (is-EmptyExpr!7140 r!13927)))))

(declare-datatypes ((List!28518 0))(
  ( (Nil!28420) (Cons!28420 (h!33821 C!14438) (t!208495 List!28518)) )
))
(declare-fun s!9460 () List!28518)

(declare-fun matchR!3257 (Regex!7140 List!28518) Bool)

(declare-fun matchRSpec!989 (Regex!7140 List!28518) Bool)

(assert (=> b!2429269 (= (matchR!3257 r!13927 s!9460) (matchRSpec!989 r!13927 s!9460))))

(declare-datatypes ((Unit!41667 0))(
  ( (Unit!41668) )
))
(declare-fun lt!876818 () Unit!41667)

(declare-fun mainMatchTheorem!989 (Regex!7140 List!28518) Unit!41667)

(assert (=> b!2429269 (= lt!876818 (mainMatchTheorem!989 r!13927 s!9460))))

(declare-fun b!2429270 () Bool)

(declare-fun e!1544809 () Bool)

(assert (=> b!2429270 (= e!1544813 e!1544809)))

(declare-fun res!1031688 () Bool)

(assert (=> b!2429270 (=> res!1031688 e!1544809)))

(declare-datatypes ((List!28519 0))(
  ( (Nil!28421) (Cons!28421 (h!33822 Regex!7140) (t!208496 List!28519)) )
))
(declare-fun lt!876817 () List!28519)

(declare-fun isEmpty!16458 (List!28519) Bool)

(assert (=> b!2429270 (= res!1031688 (not (isEmpty!16458 lt!876817)))))

(declare-fun l!9164 () List!28519)

(declare-fun tail!3760 (List!28519) List!28519)

(assert (=> b!2429270 (= lt!876817 (tail!3760 l!9164))))

(declare-fun b!2429271 () Bool)

(declare-fun generalisedConcat!241 (List!28519) Regex!7140)

(assert (=> b!2429271 (= e!1544809 (= (generalisedConcat!241 lt!876817) EmptyExpr!7140))))

(declare-fun b!2429272 () Bool)

(declare-fun e!1544810 () Bool)

(declare-fun tp_is_empty!11693 () Bool)

(declare-fun tp!771213 () Bool)

(assert (=> b!2429272 (= e!1544810 (and tp_is_empty!11693 tp!771213))))

(declare-fun b!2429273 () Bool)

(declare-fun e!1544814 () Bool)

(declare-fun tp!771216 () Bool)

(declare-fun tp!771217 () Bool)

(assert (=> b!2429273 (= e!1544814 (and tp!771216 tp!771217))))

(declare-fun b!2429274 () Bool)

(declare-fun tp!771210 () Bool)

(assert (=> b!2429274 (= e!1544814 tp!771210)))

(declare-fun res!1031691 () Bool)

(assert (=> start!237902 (=> (not res!1031691) (not e!1544811))))

(declare-fun lambda!91588 () Int)

(declare-fun forall!5774 (List!28519 Int) Bool)

(assert (=> start!237902 (= res!1031691 (forall!5774 l!9164 lambda!91588))))

(assert (=> start!237902 e!1544811))

(declare-fun e!1544812 () Bool)

(assert (=> start!237902 e!1544812))

(assert (=> start!237902 e!1544814))

(assert (=> start!237902 e!1544810))

(declare-fun b!2429275 () Bool)

(declare-fun res!1031690 () Bool)

(assert (=> b!2429275 (=> (not res!1031690) (not e!1544811))))

(assert (=> b!2429275 (= res!1031690 (= r!13927 (generalisedConcat!241 l!9164)))))

(declare-fun b!2429276 () Bool)

(declare-fun tp!771214 () Bool)

(declare-fun tp!771212 () Bool)

(assert (=> b!2429276 (= e!1544812 (and tp!771214 tp!771212))))

(declare-fun b!2429277 () Bool)

(declare-fun res!1031689 () Bool)

(assert (=> b!2429277 (=> res!1031689 e!1544813)))

(assert (=> b!2429277 (= res!1031689 (isEmpty!16458 l!9164))))

(declare-fun b!2429278 () Bool)

(assert (=> b!2429278 (= e!1544814 tp_is_empty!11693)))

(declare-fun b!2429279 () Bool)

(declare-fun tp!771215 () Bool)

(declare-fun tp!771211 () Bool)

(assert (=> b!2429279 (= e!1544814 (and tp!771215 tp!771211))))

(assert (= (and start!237902 res!1031691) b!2429275))

(assert (= (and b!2429275 res!1031690) b!2429269))

(assert (= (and b!2429269 (not res!1031687)) b!2429277))

(assert (= (and b!2429277 (not res!1031689)) b!2429270))

(assert (= (and b!2429270 (not res!1031688)) b!2429271))

(assert (= (and start!237902 (is-Cons!28421 l!9164)) b!2429276))

(assert (= (and start!237902 (is-ElementMatch!7140 r!13927)) b!2429278))

(assert (= (and start!237902 (is-Concat!11776 r!13927)) b!2429279))

(assert (= (and start!237902 (is-Star!7140 r!13927)) b!2429274))

(assert (= (and start!237902 (is-Union!7140 r!13927)) b!2429273))

(assert (= (and start!237902 (is-Cons!28420 s!9460)) b!2429272))

(declare-fun m!2812845 () Bool)

(assert (=> b!2429269 m!2812845))

(declare-fun m!2812847 () Bool)

(assert (=> b!2429269 m!2812847))

(declare-fun m!2812849 () Bool)

(assert (=> b!2429269 m!2812849))

(declare-fun m!2812851 () Bool)

(assert (=> b!2429277 m!2812851))

(declare-fun m!2812853 () Bool)

(assert (=> b!2429271 m!2812853))

(declare-fun m!2812855 () Bool)

(assert (=> b!2429270 m!2812855))

(declare-fun m!2812857 () Bool)

(assert (=> b!2429270 m!2812857))

(declare-fun m!2812859 () Bool)

(assert (=> b!2429275 m!2812859))

(declare-fun m!2812861 () Bool)

(assert (=> start!237902 m!2812861))

(push 1)

(assert (not start!237902))

(assert (not b!2429276))

(assert (not b!2429272))

(assert tp_is_empty!11693)

(assert (not b!2429271))

(assert (not b!2429273))

(assert (not b!2429277))

(assert (not b!2429279))

(assert (not b!2429274))

(assert (not b!2429270))

(assert (not b!2429275))

(assert (not b!2429269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!464071 () Bool)

(declare-fun d!702963 () Bool)

(assert (= bs!464071 (and d!702963 start!237902)))

(declare-fun lambda!91594 () Int)

(assert (=> bs!464071 (= lambda!91594 lambda!91588)))

(declare-fun e!1544847 () Bool)

(assert (=> d!702963 e!1544847))

(declare-fun res!1031712 () Bool)

(assert (=> d!702963 (=> (not res!1031712) (not e!1544847))))

(declare-fun lt!876827 () Regex!7140)

(declare-fun validRegex!2858 (Regex!7140) Bool)

(assert (=> d!702963 (= res!1031712 (validRegex!2858 lt!876827))))

(declare-fun e!1544850 () Regex!7140)

(assert (=> d!702963 (= lt!876827 e!1544850)))

(declare-fun c!387551 () Bool)

(declare-fun e!1544848 () Bool)

(assert (=> d!702963 (= c!387551 e!1544848)))

(declare-fun res!1031711 () Bool)

(assert (=> d!702963 (=> (not res!1031711) (not e!1544848))))

(assert (=> d!702963 (= res!1031711 (is-Cons!28421 lt!876817))))

(assert (=> d!702963 (forall!5774 lt!876817 lambda!91594)))

(assert (=> d!702963 (= (generalisedConcat!241 lt!876817) lt!876827)))

(declare-fun b!2429333 () Bool)

(assert (=> b!2429333 (= e!1544848 (isEmpty!16458 (t!208496 lt!876817)))))

(declare-fun b!2429334 () Bool)

(assert (=> b!2429334 (= e!1544850 (h!33822 lt!876817))))

(declare-fun b!2429335 () Bool)

(declare-fun e!1544849 () Bool)

(assert (=> b!2429335 (= e!1544847 e!1544849)))

(declare-fun c!387550 () Bool)

(assert (=> b!2429335 (= c!387550 (isEmpty!16458 lt!876817))))

(declare-fun b!2429336 () Bool)

(declare-fun e!1544846 () Bool)

(assert (=> b!2429336 (= e!1544849 e!1544846)))

(declare-fun c!387549 () Bool)

(assert (=> b!2429336 (= c!387549 (isEmpty!16458 (tail!3760 lt!876817)))))

(declare-fun b!2429337 () Bool)

(declare-fun e!1544845 () Regex!7140)

(assert (=> b!2429337 (= e!1544845 EmptyExpr!7140)))

(declare-fun b!2429338 () Bool)

(assert (=> b!2429338 (= e!1544850 e!1544845)))

(declare-fun c!387548 () Bool)

(assert (=> b!2429338 (= c!387548 (is-Cons!28421 lt!876817))))

(declare-fun b!2429339 () Bool)

(declare-fun isConcat!192 (Regex!7140) Bool)

(assert (=> b!2429339 (= e!1544846 (isConcat!192 lt!876827))))

(declare-fun b!2429340 () Bool)

(declare-fun isEmptyExpr!192 (Regex!7140) Bool)

(assert (=> b!2429340 (= e!1544849 (isEmptyExpr!192 lt!876827))))

(declare-fun b!2429341 () Bool)

(assert (=> b!2429341 (= e!1544845 (Concat!11776 (h!33822 lt!876817) (generalisedConcat!241 (t!208496 lt!876817))))))

(declare-fun b!2429342 () Bool)

(declare-fun head!5488 (List!28519) Regex!7140)

(assert (=> b!2429342 (= e!1544846 (= lt!876827 (head!5488 lt!876817)))))

(assert (= (and d!702963 res!1031711) b!2429333))

(assert (= (and d!702963 c!387551) b!2429334))

(assert (= (and d!702963 (not c!387551)) b!2429338))

(assert (= (and b!2429338 c!387548) b!2429341))

(assert (= (and b!2429338 (not c!387548)) b!2429337))

(assert (= (and d!702963 res!1031712) b!2429335))

(assert (= (and b!2429335 c!387550) b!2429340))

(assert (= (and b!2429335 (not c!387550)) b!2429336))

(assert (= (and b!2429336 c!387549) b!2429342))

(assert (= (and b!2429336 (not c!387549)) b!2429339))

(declare-fun m!2812881 () Bool)

(assert (=> b!2429342 m!2812881))

(declare-fun m!2812883 () Bool)

(assert (=> b!2429339 m!2812883))

(declare-fun m!2812885 () Bool)

(assert (=> b!2429341 m!2812885))

(assert (=> b!2429335 m!2812855))

(declare-fun m!2812887 () Bool)

(assert (=> b!2429336 m!2812887))

(assert (=> b!2429336 m!2812887))

(declare-fun m!2812889 () Bool)

(assert (=> b!2429336 m!2812889))

(declare-fun m!2812891 () Bool)

(assert (=> b!2429333 m!2812891))

(declare-fun m!2812893 () Bool)

(assert (=> d!702963 m!2812893))

(declare-fun m!2812895 () Bool)

(assert (=> d!702963 m!2812895))

(declare-fun m!2812897 () Bool)

(assert (=> b!2429340 m!2812897))

(assert (=> b!2429271 d!702963))

(declare-fun d!702965 () Bool)

(assert (=> d!702965 (= (isEmpty!16458 l!9164) (is-Nil!28421 l!9164))))

(assert (=> b!2429277 d!702965))

(declare-fun bs!464072 () Bool)

(declare-fun d!702967 () Bool)

(assert (= bs!464072 (and d!702967 start!237902)))

(declare-fun lambda!91595 () Int)

(assert (=> bs!464072 (= lambda!91595 lambda!91588)))

(declare-fun bs!464073 () Bool)

(assert (= bs!464073 (and d!702967 d!702963)))

(assert (=> bs!464073 (= lambda!91595 lambda!91594)))

(declare-fun e!1544853 () Bool)

(assert (=> d!702967 e!1544853))

(declare-fun res!1031714 () Bool)

(assert (=> d!702967 (=> (not res!1031714) (not e!1544853))))

(declare-fun lt!876828 () Regex!7140)

(assert (=> d!702967 (= res!1031714 (validRegex!2858 lt!876828))))

(declare-fun e!1544856 () Regex!7140)

(assert (=> d!702967 (= lt!876828 e!1544856)))

(declare-fun c!387555 () Bool)

(declare-fun e!1544854 () Bool)

(assert (=> d!702967 (= c!387555 e!1544854)))

(declare-fun res!1031713 () Bool)

(assert (=> d!702967 (=> (not res!1031713) (not e!1544854))))

(assert (=> d!702967 (= res!1031713 (is-Cons!28421 l!9164))))

(assert (=> d!702967 (forall!5774 l!9164 lambda!91595)))

(assert (=> d!702967 (= (generalisedConcat!241 l!9164) lt!876828)))

(declare-fun b!2429343 () Bool)

(assert (=> b!2429343 (= e!1544854 (isEmpty!16458 (t!208496 l!9164)))))

(declare-fun b!2429344 () Bool)

(assert (=> b!2429344 (= e!1544856 (h!33822 l!9164))))

(declare-fun b!2429345 () Bool)

(declare-fun e!1544855 () Bool)

(assert (=> b!2429345 (= e!1544853 e!1544855)))

(declare-fun c!387554 () Bool)

(assert (=> b!2429345 (= c!387554 (isEmpty!16458 l!9164))))

(declare-fun b!2429346 () Bool)

(declare-fun e!1544852 () Bool)

(assert (=> b!2429346 (= e!1544855 e!1544852)))

(declare-fun c!387553 () Bool)

(assert (=> b!2429346 (= c!387553 (isEmpty!16458 (tail!3760 l!9164)))))

(declare-fun b!2429347 () Bool)

(declare-fun e!1544851 () Regex!7140)

(assert (=> b!2429347 (= e!1544851 EmptyExpr!7140)))

(declare-fun b!2429348 () Bool)

(assert (=> b!2429348 (= e!1544856 e!1544851)))

(declare-fun c!387552 () Bool)

(assert (=> b!2429348 (= c!387552 (is-Cons!28421 l!9164))))

(declare-fun b!2429349 () Bool)

(assert (=> b!2429349 (= e!1544852 (isConcat!192 lt!876828))))

(declare-fun b!2429350 () Bool)

(assert (=> b!2429350 (= e!1544855 (isEmptyExpr!192 lt!876828))))

(declare-fun b!2429351 () Bool)

(assert (=> b!2429351 (= e!1544851 (Concat!11776 (h!33822 l!9164) (generalisedConcat!241 (t!208496 l!9164))))))

(declare-fun b!2429352 () Bool)

(assert (=> b!2429352 (= e!1544852 (= lt!876828 (head!5488 l!9164)))))

(assert (= (and d!702967 res!1031713) b!2429343))

(assert (= (and d!702967 c!387555) b!2429344))

(assert (= (and d!702967 (not c!387555)) b!2429348))

(assert (= (and b!2429348 c!387552) b!2429351))

(assert (= (and b!2429348 (not c!387552)) b!2429347))

(assert (= (and d!702967 res!1031714) b!2429345))

(assert (= (and b!2429345 c!387554) b!2429350))

(assert (= (and b!2429345 (not c!387554)) b!2429346))

(assert (= (and b!2429346 c!387553) b!2429352))

(assert (= (and b!2429346 (not c!387553)) b!2429349))

(declare-fun m!2812899 () Bool)

(assert (=> b!2429352 m!2812899))

(declare-fun m!2812901 () Bool)

(assert (=> b!2429349 m!2812901))

(declare-fun m!2812903 () Bool)

(assert (=> b!2429351 m!2812903))

(assert (=> b!2429345 m!2812851))

(assert (=> b!2429346 m!2812857))

(assert (=> b!2429346 m!2812857))

(declare-fun m!2812905 () Bool)

(assert (=> b!2429346 m!2812905))

(declare-fun m!2812907 () Bool)

(assert (=> b!2429343 m!2812907))

(declare-fun m!2812909 () Bool)

(assert (=> d!702967 m!2812909))

(declare-fun m!2812911 () Bool)

(assert (=> d!702967 m!2812911))

(declare-fun m!2812913 () Bool)

(assert (=> b!2429350 m!2812913))

(assert (=> b!2429275 d!702967))

(declare-fun d!702969 () Bool)

(assert (=> d!702969 (= (isEmpty!16458 lt!876817) (is-Nil!28421 lt!876817))))

(assert (=> b!2429270 d!702969))

(declare-fun d!702971 () Bool)

(assert (=> d!702971 (= (tail!3760 l!9164) (t!208496 l!9164))))

(assert (=> b!2429270 d!702971))

(declare-fun b!2429387 () Bool)

(declare-fun res!1031737 () Bool)

(declare-fun e!1544881 () Bool)

(assert (=> b!2429387 (=> res!1031737 e!1544881)))

(declare-fun isEmpty!16460 (List!28518) Bool)

(declare-fun tail!3762 (List!28518) List!28518)

(assert (=> b!2429387 (= res!1031737 (not (isEmpty!16460 (tail!3762 s!9460))))))

(declare-fun b!2429389 () Bool)

(declare-fun e!1544880 () Bool)

(assert (=> b!2429389 (= e!1544880 e!1544881)))

(declare-fun res!1031738 () Bool)

(assert (=> b!2429389 (=> res!1031738 e!1544881)))

(declare-fun call!148645 () Bool)

(assert (=> b!2429389 (= res!1031738 call!148645)))

(declare-fun b!2429390 () Bool)

(declare-fun res!1031740 () Bool)

(declare-fun e!1544883 () Bool)

(assert (=> b!2429390 (=> res!1031740 e!1544883)))

(declare-fun e!1544877 () Bool)

(assert (=> b!2429390 (= res!1031740 e!1544877)))

(declare-fun res!1031744 () Bool)

(assert (=> b!2429390 (=> (not res!1031744) (not e!1544877))))

(declare-fun lt!876831 () Bool)

(assert (=> b!2429390 (= res!1031744 lt!876831)))

(declare-fun b!2429391 () Bool)

(declare-fun head!5489 (List!28518) C!14438)

(assert (=> b!2429391 (= e!1544881 (not (= (head!5489 s!9460) (c!387538 r!13927))))))

(declare-fun b!2429392 () Bool)

(declare-fun res!1031743 () Bool)

(assert (=> b!2429392 (=> (not res!1031743) (not e!1544877))))

(assert (=> b!2429392 (= res!1031743 (not call!148645))))

(declare-fun b!2429393 () Bool)

(declare-fun e!1544878 () Bool)

(assert (=> b!2429393 (= e!1544878 (= lt!876831 call!148645))))

(declare-fun bm!148640 () Bool)

(assert (=> bm!148640 (= call!148645 (isEmpty!16460 s!9460))))

(declare-fun b!2429394 () Bool)

(declare-fun e!1544879 () Bool)

(declare-fun nullable!2173 (Regex!7140) Bool)

(assert (=> b!2429394 (= e!1544879 (nullable!2173 r!13927))))

(declare-fun b!2429395 () Bool)

(assert (=> b!2429395 (= e!1544877 (= (head!5489 s!9460) (c!387538 r!13927)))))

(declare-fun b!2429396 () Bool)

(declare-fun res!1031739 () Bool)

(assert (=> b!2429396 (=> res!1031739 e!1544883)))

(assert (=> b!2429396 (= res!1031739 (not (is-ElementMatch!7140 r!13927)))))

(declare-fun e!1544882 () Bool)

(assert (=> b!2429396 (= e!1544882 e!1544883)))

(declare-fun d!702975 () Bool)

(assert (=> d!702975 e!1544878))

(declare-fun c!387563 () Bool)

(assert (=> d!702975 (= c!387563 (is-EmptyExpr!7140 r!13927))))

(assert (=> d!702975 (= lt!876831 e!1544879)))

(declare-fun c!387562 () Bool)

(assert (=> d!702975 (= c!387562 (isEmpty!16460 s!9460))))

(assert (=> d!702975 (validRegex!2858 r!13927)))

(assert (=> d!702975 (= (matchR!3257 r!13927 s!9460) lt!876831)))

(declare-fun b!2429388 () Bool)

(declare-fun derivativeStep!1830 (Regex!7140 C!14438) Regex!7140)

(assert (=> b!2429388 (= e!1544879 (matchR!3257 (derivativeStep!1830 r!13927 (head!5489 s!9460)) (tail!3762 s!9460)))))

(declare-fun b!2429397 () Bool)

(declare-fun res!1031741 () Bool)

(assert (=> b!2429397 (=> (not res!1031741) (not e!1544877))))

(assert (=> b!2429397 (= res!1031741 (isEmpty!16460 (tail!3762 s!9460)))))

(declare-fun b!2429398 () Bool)

(assert (=> b!2429398 (= e!1544878 e!1544882)))

(declare-fun c!387564 () Bool)

(assert (=> b!2429398 (= c!387564 (is-EmptyLang!7140 r!13927))))

(declare-fun b!2429399 () Bool)

(assert (=> b!2429399 (= e!1544882 (not lt!876831))))

(declare-fun b!2429400 () Bool)

(assert (=> b!2429400 (= e!1544883 e!1544880)))

(declare-fun res!1031742 () Bool)

(assert (=> b!2429400 (=> (not res!1031742) (not e!1544880))))

(assert (=> b!2429400 (= res!1031742 (not lt!876831))))

(assert (= (and d!702975 c!387562) b!2429394))

(assert (= (and d!702975 (not c!387562)) b!2429388))

(assert (= (and d!702975 c!387563) b!2429393))

(assert (= (and d!702975 (not c!387563)) b!2429398))

(assert (= (and b!2429398 c!387564) b!2429399))

(assert (= (and b!2429398 (not c!387564)) b!2429396))

(assert (= (and b!2429396 (not res!1031739)) b!2429390))

(assert (= (and b!2429390 res!1031744) b!2429392))

(assert (= (and b!2429392 res!1031743) b!2429397))

(assert (= (and b!2429397 res!1031741) b!2429395))

(assert (= (and b!2429390 (not res!1031740)) b!2429400))

(assert (= (and b!2429400 res!1031742) b!2429389))

(assert (= (and b!2429389 (not res!1031738)) b!2429387))

(assert (= (and b!2429387 (not res!1031737)) b!2429391))

(assert (= (or b!2429393 b!2429389 b!2429392) bm!148640))

(declare-fun m!2812919 () Bool)

(assert (=> b!2429395 m!2812919))

(declare-fun m!2812921 () Bool)

(assert (=> bm!148640 m!2812921))

(assert (=> b!2429391 m!2812919))

(assert (=> d!702975 m!2812921))

(declare-fun m!2812923 () Bool)

(assert (=> d!702975 m!2812923))

(declare-fun m!2812925 () Bool)

(assert (=> b!2429387 m!2812925))

(assert (=> b!2429387 m!2812925))

(declare-fun m!2812927 () Bool)

(assert (=> b!2429387 m!2812927))

(declare-fun m!2812929 () Bool)

(assert (=> b!2429394 m!2812929))

(assert (=> b!2429388 m!2812919))

(assert (=> b!2429388 m!2812919))

(declare-fun m!2812931 () Bool)

(assert (=> b!2429388 m!2812931))

(assert (=> b!2429388 m!2812925))

(assert (=> b!2429388 m!2812931))

(assert (=> b!2429388 m!2812925))

(declare-fun m!2812933 () Bool)

(assert (=> b!2429388 m!2812933))

(assert (=> b!2429397 m!2812925))

(assert (=> b!2429397 m!2812925))

(assert (=> b!2429397 m!2812927))

(assert (=> b!2429269 d!702975))

(declare-fun b!2429469 () Bool)

(assert (=> b!2429469 true))

(assert (=> b!2429469 true))

(declare-fun bs!464074 () Bool)

(declare-fun b!2429461 () Bool)

(assert (= bs!464074 (and b!2429461 b!2429469)))

(declare-fun lambda!91601 () Int)

(declare-fun lambda!91600 () Int)

(assert (=> bs!464074 (not (= lambda!91601 lambda!91600))))

(assert (=> b!2429461 true))

(assert (=> b!2429461 true))

(declare-fun e!1544920 () Bool)

(declare-fun call!148652 () Bool)

(assert (=> b!2429461 (= e!1544920 call!148652)))

(declare-fun d!702983 () Bool)

(declare-fun c!387580 () Bool)

(assert (=> d!702983 (= c!387580 (is-EmptyExpr!7140 r!13927))))

(declare-fun e!1544922 () Bool)

(assert (=> d!702983 (= (matchRSpec!989 r!13927 s!9460) e!1544922)))

(declare-fun b!2429462 () Bool)

(declare-fun e!1544918 () Bool)

(assert (=> b!2429462 (= e!1544922 e!1544918)))

(declare-fun res!1031779 () Bool)

(assert (=> b!2429462 (= res!1031779 (not (is-EmptyLang!7140 r!13927)))))

(assert (=> b!2429462 (=> (not res!1031779) (not e!1544918))))

(declare-fun b!2429463 () Bool)

(declare-fun e!1544916 () Bool)

(assert (=> b!2429463 (= e!1544916 e!1544920)))

(declare-fun c!387581 () Bool)

(assert (=> b!2429463 (= c!387581 (is-Star!7140 r!13927))))

(declare-fun b!2429464 () Bool)

(declare-fun c!387579 () Bool)

(assert (=> b!2429464 (= c!387579 (is-Union!7140 r!13927))))

(declare-fun e!1544921 () Bool)

(assert (=> b!2429464 (= e!1544921 e!1544916)))

(declare-fun b!2429465 () Bool)

(declare-fun call!148653 () Bool)

(assert (=> b!2429465 (= e!1544922 call!148653)))

(declare-fun b!2429466 () Bool)

(declare-fun c!387582 () Bool)

(assert (=> b!2429466 (= c!387582 (is-ElementMatch!7140 r!13927))))

(assert (=> b!2429466 (= e!1544918 e!1544921)))

(declare-fun b!2429467 () Bool)

(assert (=> b!2429467 (= e!1544921 (= s!9460 (Cons!28420 (c!387538 r!13927) Nil!28420)))))

(declare-fun bm!148647 () Bool)

(declare-fun Exists!1179 (Int) Bool)

(assert (=> bm!148647 (= call!148652 (Exists!1179 (ite c!387581 lambda!91600 lambda!91601)))))

(declare-fun b!2429468 () Bool)

(declare-fun e!1544917 () Bool)

(assert (=> b!2429468 (= e!1544917 (matchRSpec!989 (regTwo!14793 r!13927) s!9460))))

(declare-fun e!1544919 () Bool)

(assert (=> b!2429469 (= e!1544919 call!148652)))

(declare-fun bm!148648 () Bool)

(assert (=> bm!148648 (= call!148653 (isEmpty!16460 s!9460))))

(declare-fun b!2429470 () Bool)

(assert (=> b!2429470 (= e!1544916 e!1544917)))

(declare-fun res!1031777 () Bool)

(assert (=> b!2429470 (= res!1031777 (matchRSpec!989 (regOne!14793 r!13927) s!9460))))

(assert (=> b!2429470 (=> res!1031777 e!1544917)))

(declare-fun b!2429471 () Bool)

(declare-fun res!1031778 () Bool)

(assert (=> b!2429471 (=> res!1031778 e!1544919)))

(assert (=> b!2429471 (= res!1031778 call!148653)))

(assert (=> b!2429471 (= e!1544920 e!1544919)))

(assert (= (and d!702983 c!387580) b!2429465))

(assert (= (and d!702983 (not c!387580)) b!2429462))

(assert (= (and b!2429462 res!1031779) b!2429466))

(assert (= (and b!2429466 c!387582) b!2429467))

(assert (= (and b!2429466 (not c!387582)) b!2429464))

(assert (= (and b!2429464 c!387579) b!2429470))

(assert (= (and b!2429464 (not c!387579)) b!2429463))

(assert (= (and b!2429470 (not res!1031777)) b!2429468))

(assert (= (and b!2429463 c!387581) b!2429471))

(assert (= (and b!2429463 (not c!387581)) b!2429461))

(assert (= (and b!2429471 (not res!1031778)) b!2429469))

(assert (= (or b!2429469 b!2429461) bm!148647))

(assert (= (or b!2429465 b!2429471) bm!148648))

(declare-fun m!2812935 () Bool)

(assert (=> bm!148647 m!2812935))

(declare-fun m!2812937 () Bool)

(assert (=> b!2429468 m!2812937))

(assert (=> bm!148648 m!2812921))

(declare-fun m!2812939 () Bool)

(assert (=> b!2429470 m!2812939))

(assert (=> b!2429269 d!702983))

(declare-fun d!702985 () Bool)

(assert (=> d!702985 (= (matchR!3257 r!13927 s!9460) (matchRSpec!989 r!13927 s!9460))))

(declare-fun lt!876836 () Unit!41667)

(declare-fun choose!14401 (Regex!7140 List!28518) Unit!41667)

(assert (=> d!702985 (= lt!876836 (choose!14401 r!13927 s!9460))))

(assert (=> d!702985 (validRegex!2858 r!13927)))

(assert (=> d!702985 (= (mainMatchTheorem!989 r!13927 s!9460) lt!876836)))

(declare-fun bs!464075 () Bool)

(assert (= bs!464075 d!702985))

(assert (=> bs!464075 m!2812845))

(assert (=> bs!464075 m!2812847))

(declare-fun m!2812941 () Bool)

(assert (=> bs!464075 m!2812941))

(assert (=> bs!464075 m!2812923))

(assert (=> b!2429269 d!702985))

(declare-fun d!702987 () Bool)

(declare-fun res!1031792 () Bool)

(declare-fun e!1544934 () Bool)

(assert (=> d!702987 (=> res!1031792 e!1544934)))

(assert (=> d!702987 (= res!1031792 (is-Nil!28421 l!9164))))

(assert (=> d!702987 (= (forall!5774 l!9164 lambda!91588) e!1544934)))

(declare-fun b!2429494 () Bool)

(declare-fun e!1544935 () Bool)

(assert (=> b!2429494 (= e!1544934 e!1544935)))

(declare-fun res!1031793 () Bool)

(assert (=> b!2429494 (=> (not res!1031793) (not e!1544935))))

(declare-fun dynLambda!12231 (Int Regex!7140) Bool)

(assert (=> b!2429494 (= res!1031793 (dynLambda!12231 lambda!91588 (h!33822 l!9164)))))

(declare-fun b!2429495 () Bool)

(assert (=> b!2429495 (= e!1544935 (forall!5774 (t!208496 l!9164) lambda!91588))))

(assert (= (and d!702987 (not res!1031792)) b!2429494))

(assert (= (and b!2429494 res!1031793) b!2429495))

(declare-fun b_lambda!74749 () Bool)

(assert (=> (not b_lambda!74749) (not b!2429494)))

(declare-fun m!2812943 () Bool)

(assert (=> b!2429494 m!2812943))

(declare-fun m!2812945 () Bool)

(assert (=> b!2429495 m!2812945))

(assert (=> start!237902 d!702987))

(declare-fun b!2429500 () Bool)

(declare-fun e!1544938 () Bool)

(declare-fun tp!771244 () Bool)

(assert (=> b!2429500 (= e!1544938 (and tp_is_empty!11693 tp!771244))))

(assert (=> b!2429272 (= tp!771213 e!1544938)))

(assert (= (and b!2429272 (is-Cons!28420 (t!208495 s!9460))) b!2429500))

(declare-fun b!2429513 () Bool)

(declare-fun e!1544941 () Bool)

(declare-fun tp!771258 () Bool)

(assert (=> b!2429513 (= e!1544941 tp!771258)))

(declare-fun b!2429512 () Bool)

(declare-fun tp!771257 () Bool)

(declare-fun tp!771255 () Bool)

(assert (=> b!2429512 (= e!1544941 (and tp!771257 tp!771255))))

(assert (=> b!2429276 (= tp!771214 e!1544941)))

(declare-fun b!2429511 () Bool)

(assert (=> b!2429511 (= e!1544941 tp_is_empty!11693)))

(declare-fun b!2429514 () Bool)

(declare-fun tp!771256 () Bool)

(declare-fun tp!771259 () Bool)

(assert (=> b!2429514 (= e!1544941 (and tp!771256 tp!771259))))

(assert (= (and b!2429276 (is-ElementMatch!7140 (h!33822 l!9164))) b!2429511))

(assert (= (and b!2429276 (is-Concat!11776 (h!33822 l!9164))) b!2429512))

(assert (= (and b!2429276 (is-Star!7140 (h!33822 l!9164))) b!2429513))

(assert (= (and b!2429276 (is-Union!7140 (h!33822 l!9164))) b!2429514))

(declare-fun b!2429519 () Bool)

(declare-fun e!1544944 () Bool)

(declare-fun tp!771264 () Bool)

(declare-fun tp!771265 () Bool)

(assert (=> b!2429519 (= e!1544944 (and tp!771264 tp!771265))))

(assert (=> b!2429276 (= tp!771212 e!1544944)))

(assert (= (and b!2429276 (is-Cons!28421 (t!208496 l!9164))) b!2429519))

(declare-fun b!2429522 () Bool)

(declare-fun e!1544945 () Bool)

(declare-fun tp!771269 () Bool)

(assert (=> b!2429522 (= e!1544945 tp!771269)))

(declare-fun b!2429521 () Bool)

(declare-fun tp!771268 () Bool)

(declare-fun tp!771266 () Bool)

(assert (=> b!2429521 (= e!1544945 (and tp!771268 tp!771266))))

(assert (=> b!2429279 (= tp!771215 e!1544945)))

(declare-fun b!2429520 () Bool)

(assert (=> b!2429520 (= e!1544945 tp_is_empty!11693)))

(declare-fun b!2429523 () Bool)

(declare-fun tp!771267 () Bool)

(declare-fun tp!771270 () Bool)

(assert (=> b!2429523 (= e!1544945 (and tp!771267 tp!771270))))

(assert (= (and b!2429279 (is-ElementMatch!7140 (regOne!14792 r!13927))) b!2429520))

(assert (= (and b!2429279 (is-Concat!11776 (regOne!14792 r!13927))) b!2429521))

(assert (= (and b!2429279 (is-Star!7140 (regOne!14792 r!13927))) b!2429522))

(assert (= (and b!2429279 (is-Union!7140 (regOne!14792 r!13927))) b!2429523))

(declare-fun b!2429526 () Bool)

(declare-fun e!1544946 () Bool)

(declare-fun tp!771274 () Bool)

(assert (=> b!2429526 (= e!1544946 tp!771274)))

(declare-fun b!2429525 () Bool)

(declare-fun tp!771273 () Bool)

(declare-fun tp!771271 () Bool)

(assert (=> b!2429525 (= e!1544946 (and tp!771273 tp!771271))))

(assert (=> b!2429279 (= tp!771211 e!1544946)))

(declare-fun b!2429524 () Bool)

(assert (=> b!2429524 (= e!1544946 tp_is_empty!11693)))

(declare-fun b!2429527 () Bool)

(declare-fun tp!771272 () Bool)

(declare-fun tp!771275 () Bool)

(assert (=> b!2429527 (= e!1544946 (and tp!771272 tp!771275))))

(assert (= (and b!2429279 (is-ElementMatch!7140 (regTwo!14792 r!13927))) b!2429524))

(assert (= (and b!2429279 (is-Concat!11776 (regTwo!14792 r!13927))) b!2429525))

(assert (= (and b!2429279 (is-Star!7140 (regTwo!14792 r!13927))) b!2429526))

(assert (= (and b!2429279 (is-Union!7140 (regTwo!14792 r!13927))) b!2429527))

(declare-fun b!2429530 () Bool)

(declare-fun e!1544947 () Bool)

(declare-fun tp!771279 () Bool)

(assert (=> b!2429530 (= e!1544947 tp!771279)))

(declare-fun b!2429529 () Bool)

(declare-fun tp!771278 () Bool)

(declare-fun tp!771276 () Bool)

(assert (=> b!2429529 (= e!1544947 (and tp!771278 tp!771276))))

(assert (=> b!2429274 (= tp!771210 e!1544947)))

(declare-fun b!2429528 () Bool)

(assert (=> b!2429528 (= e!1544947 tp_is_empty!11693)))

(declare-fun b!2429531 () Bool)

(declare-fun tp!771277 () Bool)

(declare-fun tp!771280 () Bool)

(assert (=> b!2429531 (= e!1544947 (and tp!771277 tp!771280))))

(assert (= (and b!2429274 (is-ElementMatch!7140 (reg!7469 r!13927))) b!2429528))

(assert (= (and b!2429274 (is-Concat!11776 (reg!7469 r!13927))) b!2429529))

(assert (= (and b!2429274 (is-Star!7140 (reg!7469 r!13927))) b!2429530))

(assert (= (and b!2429274 (is-Union!7140 (reg!7469 r!13927))) b!2429531))

(declare-fun b!2429534 () Bool)

(declare-fun e!1544948 () Bool)

(declare-fun tp!771284 () Bool)

(assert (=> b!2429534 (= e!1544948 tp!771284)))

(declare-fun b!2429533 () Bool)

(declare-fun tp!771283 () Bool)

(declare-fun tp!771281 () Bool)

(assert (=> b!2429533 (= e!1544948 (and tp!771283 tp!771281))))

(assert (=> b!2429273 (= tp!771216 e!1544948)))

(declare-fun b!2429532 () Bool)

(assert (=> b!2429532 (= e!1544948 tp_is_empty!11693)))

(declare-fun b!2429535 () Bool)

(declare-fun tp!771282 () Bool)

(declare-fun tp!771285 () Bool)

(assert (=> b!2429535 (= e!1544948 (and tp!771282 tp!771285))))

(assert (= (and b!2429273 (is-ElementMatch!7140 (regOne!14793 r!13927))) b!2429532))

(assert (= (and b!2429273 (is-Concat!11776 (regOne!14793 r!13927))) b!2429533))

(assert (= (and b!2429273 (is-Star!7140 (regOne!14793 r!13927))) b!2429534))

(assert (= (and b!2429273 (is-Union!7140 (regOne!14793 r!13927))) b!2429535))

(declare-fun b!2429538 () Bool)

(declare-fun e!1544949 () Bool)

(declare-fun tp!771289 () Bool)

(assert (=> b!2429538 (= e!1544949 tp!771289)))

(declare-fun b!2429537 () Bool)

(declare-fun tp!771288 () Bool)

(declare-fun tp!771286 () Bool)

(assert (=> b!2429537 (= e!1544949 (and tp!771288 tp!771286))))

(assert (=> b!2429273 (= tp!771217 e!1544949)))

(declare-fun b!2429536 () Bool)

(assert (=> b!2429536 (= e!1544949 tp_is_empty!11693)))

(declare-fun b!2429539 () Bool)

(declare-fun tp!771287 () Bool)

(declare-fun tp!771290 () Bool)

(assert (=> b!2429539 (= e!1544949 (and tp!771287 tp!771290))))

(assert (= (and b!2429273 (is-ElementMatch!7140 (regTwo!14793 r!13927))) b!2429536))

(assert (= (and b!2429273 (is-Concat!11776 (regTwo!14793 r!13927))) b!2429537))

(assert (= (and b!2429273 (is-Star!7140 (regTwo!14793 r!13927))) b!2429538))

(assert (= (and b!2429273 (is-Union!7140 (regTwo!14793 r!13927))) b!2429539))

(declare-fun b_lambda!74751 () Bool)

(assert (= b_lambda!74749 (or start!237902 b_lambda!74751)))

(declare-fun bs!464076 () Bool)

(declare-fun d!702991 () Bool)

(assert (= bs!464076 (and d!702991 start!237902)))

(assert (=> bs!464076 (= (dynLambda!12231 lambda!91588 (h!33822 l!9164)) (validRegex!2858 (h!33822 l!9164)))))

(declare-fun m!2812963 () Bool)

(assert (=> bs!464076 m!2812963))

(assert (=> b!2429494 d!702991))

(push 1)

(assert (not b!2429529))

(assert (not d!702967))

(assert (not b!2429533))

(assert (not b!2429522))

(assert (not b!2429470))

(assert (not bm!148648))

(assert (not b!2429525))

(assert (not b!2429340))

(assert (not b!2429513))

(assert (not b!2429350))

(assert (not b_lambda!74751))

(assert (not b!2429345))

(assert (not b!2429535))

(assert (not b!2429391))

(assert (not b!2429346))

(assert (not b!2429395))

(assert (not b!2429387))

(assert (not b!2429539))

(assert (not b!2429537))

(assert (not b!2429495))

(assert (not b!2429333))

(assert (not b!2429519))

(assert (not d!702975))

(assert (not b!2429526))

(assert (not d!702963))

(assert (not b!2429349))

(assert (not b!2429531))

(assert (not b!2429538))

(assert (not b!2429500))

(assert tp_is_empty!11693)

(assert (not bs!464076))

(assert (not b!2429521))

(assert (not b!2429336))

(assert (not bm!148640))

(assert (not d!702985))

(assert (not b!2429388))

(assert (not b!2429512))

(assert (not b!2429341))

(assert (not bm!148647))

(assert (not b!2429530))

(assert (not b!2429351))

(assert (not b!2429468))

(assert (not b!2429527))

(assert (not b!2429534))

(assert (not b!2429394))

(assert (not b!2429523))

(assert (not b!2429342))

(assert (not b!2429339))

(assert (not b!2429352))

(assert (not b!2429335))

(assert (not b!2429397))

(assert (not b!2429343))

(assert (not b!2429514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

