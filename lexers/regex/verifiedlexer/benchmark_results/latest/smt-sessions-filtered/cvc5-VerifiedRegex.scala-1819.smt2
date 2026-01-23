; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90780 () Bool)

(assert start!90780)

(declare-fun b!1053942 () Bool)

(assert (=> b!1053942 true))

(assert (=> b!1053942 true))

(declare-fun lambda!38032 () Int)

(declare-fun lambda!38031 () Int)

(assert (=> b!1053942 (not (= lambda!38032 lambda!38031))))

(assert (=> b!1053942 true))

(assert (=> b!1053942 true))

(declare-fun bs!251428 () Bool)

(declare-fun b!1053950 () Bool)

(assert (= bs!251428 (and b!1053950 b!1053942)))

(declare-datatypes ((C!6362 0))(
  ( (C!6363 (val!3429 Int)) )
))
(declare-datatypes ((Regex!2896 0))(
  ( (ElementMatch!2896 (c!176269 C!6362)) (Concat!4729 (regOne!6304 Regex!2896) (regTwo!6304 Regex!2896)) (EmptyExpr!2896) (Star!2896 (reg!3225 Regex!2896)) (EmptyLang!2896) (Union!2896 (regOne!6305 Regex!2896) (regTwo!6305 Regex!2896)) )
))
(declare-fun lt!358669 () Regex!2896)

(declare-fun r!15766 () Regex!2896)

(declare-fun lambda!38033 () Int)

(declare-fun lt!358678 () Regex!2896)

(assert (=> bs!251428 (= (and (= lt!358669 (regOne!6304 r!15766)) (= lt!358678 (regTwo!6304 r!15766))) (= lambda!38033 lambda!38031))))

(assert (=> bs!251428 (not (= lambda!38033 lambda!38032))))

(assert (=> b!1053950 true))

(assert (=> b!1053950 true))

(assert (=> b!1053950 true))

(declare-fun lambda!38034 () Int)

(assert (=> bs!251428 (not (= lambda!38034 lambda!38031))))

(assert (=> bs!251428 (= (and (= lt!358669 (regOne!6304 r!15766)) (= lt!358678 (regTwo!6304 r!15766))) (= lambda!38034 lambda!38032))))

(assert (=> b!1053950 (not (= lambda!38034 lambda!38033))))

(assert (=> b!1053950 true))

(assert (=> b!1053950 true))

(assert (=> b!1053950 true))

(declare-fun b!1053940 () Bool)

(declare-fun e!669430 () Bool)

(declare-fun tp_is_empty!5435 () Bool)

(assert (=> b!1053940 (= e!669430 tp_is_empty!5435)))

(declare-fun b!1053941 () Bool)

(declare-fun e!669431 () Bool)

(declare-fun tp!317536 () Bool)

(assert (=> b!1053941 (= e!669431 (and tp_is_empty!5435 tp!317536))))

(declare-fun e!669429 () Bool)

(declare-fun e!669435 () Bool)

(assert (=> b!1053942 (= e!669429 e!669435)))

(declare-fun res!471301 () Bool)

(assert (=> b!1053942 (=> res!471301 e!669435)))

(declare-datatypes ((List!10126 0))(
  ( (Nil!10110) (Cons!10110 (h!15511 C!6362) (t!101172 List!10126)) )
))
(declare-fun s!10566 () List!10126)

(declare-fun isEmpty!6522 (List!10126) Bool)

(assert (=> b!1053942 (= res!471301 (isEmpty!6522 s!10566))))

(declare-fun Exists!623 (Int) Bool)

(assert (=> b!1053942 (= (Exists!623 lambda!38031) (Exists!623 lambda!38032))))

(declare-datatypes ((Unit!15467 0))(
  ( (Unit!15468) )
))
(declare-fun lt!358673 () Unit!15467)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!311 (Regex!2896 Regex!2896 List!10126) Unit!15467)

(assert (=> b!1053942 (= lt!358673 (lemmaExistCutMatchRandMatchRSpecEquivalent!311 (regOne!6304 r!15766) (regTwo!6304 r!15766) s!10566))))

(declare-datatypes ((tuple2!11558 0))(
  ( (tuple2!11559 (_1!6605 List!10126) (_2!6605 List!10126)) )
))
(declare-datatypes ((Option!2421 0))(
  ( (None!2420) (Some!2420 (v!19837 tuple2!11558)) )
))
(declare-fun isDefined!2063 (Option!2421) Bool)

(declare-fun findConcatSeparation!527 (Regex!2896 Regex!2896 List!10126 List!10126 List!10126) Option!2421)

(assert (=> b!1053942 (= (isDefined!2063 (findConcatSeparation!527 (regOne!6304 r!15766) (regTwo!6304 r!15766) Nil!10110 s!10566 s!10566)) (Exists!623 lambda!38031))))

(declare-fun lt!358671 () Unit!15467)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!527 (Regex!2896 Regex!2896 List!10126) Unit!15467)

(assert (=> b!1053942 (= lt!358671 (lemmaFindConcatSeparationEquivalentToExists!527 (regOne!6304 r!15766) (regTwo!6304 r!15766) s!10566))))

(declare-fun b!1053943 () Bool)

(declare-fun tp!317533 () Bool)

(assert (=> b!1053943 (= e!669430 tp!317533)))

(declare-fun b!1053944 () Bool)

(declare-fun e!669434 () Bool)

(declare-fun lt!358674 () Bool)

(declare-fun lt!358668 () Bool)

(assert (=> b!1053944 (= e!669434 (or (not lt!358674) lt!358668))))

(declare-fun b!1053945 () Bool)

(declare-fun e!669433 () Bool)

(assert (=> b!1053945 (= e!669435 e!669433)))

(declare-fun res!471305 () Bool)

(assert (=> b!1053945 (=> res!471305 e!669433)))

(declare-fun lt!358670 () Regex!2896)

(declare-fun matchR!1432 (Regex!2896 List!10126) Bool)

(assert (=> b!1053945 (= res!471305 (not (matchR!1432 lt!358670 s!10566)))))

(assert (=> b!1053945 (= lt!358670 (Concat!4729 lt!358669 lt!358678))))

(declare-fun removeUselessConcat!445 (Regex!2896) Regex!2896)

(assert (=> b!1053945 (= lt!358678 (removeUselessConcat!445 (regTwo!6304 r!15766)))))

(assert (=> b!1053945 (= lt!358669 (removeUselessConcat!445 (regOne!6304 r!15766)))))

(declare-fun b!1053946 () Bool)

(declare-fun tp!317534 () Bool)

(declare-fun tp!317538 () Bool)

(assert (=> b!1053946 (= e!669430 (and tp!317534 tp!317538))))

(declare-fun b!1053947 () Bool)

(declare-fun e!669432 () Bool)

(assert (=> b!1053947 (= e!669432 e!669434)))

(declare-fun res!471306 () Bool)

(assert (=> b!1053947 (=> res!471306 e!669434)))

(declare-fun validRegex!1365 (Regex!2896) Bool)

(assert (=> b!1053947 (= res!471306 (not (validRegex!1365 (regOne!6304 r!15766))))))

(declare-fun lt!358665 () tuple2!11558)

(assert (=> b!1053947 (= lt!358668 (matchR!1432 lt!358678 (_2!6605 lt!358665)))))

(assert (=> b!1053947 (= lt!358668 (matchR!1432 (regTwo!6304 r!15766) (_2!6605 lt!358665)))))

(declare-fun lt!358672 () Unit!15467)

(declare-fun lemmaRemoveUselessConcatSound!269 (Regex!2896 List!10126) Unit!15467)

(assert (=> b!1053947 (= lt!358672 (lemmaRemoveUselessConcatSound!269 (regTwo!6304 r!15766) (_2!6605 lt!358665)))))

(assert (=> b!1053947 (= lt!358674 (matchR!1432 lt!358669 (_1!6605 lt!358665)))))

(assert (=> b!1053947 (= lt!358674 (matchR!1432 (regOne!6304 r!15766) (_1!6605 lt!358665)))))

(declare-fun lt!358662 () Unit!15467)

(assert (=> b!1053947 (= lt!358662 (lemmaRemoveUselessConcatSound!269 (regOne!6304 r!15766) (_1!6605 lt!358665)))))

(declare-fun lt!358663 () Option!2421)

(declare-fun get!3622 (Option!2421) tuple2!11558)

(assert (=> b!1053947 (= lt!358665 (get!3622 lt!358663))))

(declare-fun res!471303 () Bool)

(declare-fun e!669428 () Bool)

(assert (=> start!90780 (=> (not res!471303) (not e!669428))))

(assert (=> start!90780 (= res!471303 (validRegex!1365 r!15766))))

(assert (=> start!90780 e!669428))

(assert (=> start!90780 e!669430))

(assert (=> start!90780 e!669431))

(declare-fun b!1053948 () Bool)

(declare-fun res!471304 () Bool)

(assert (=> b!1053948 (=> res!471304 e!669434)))

(assert (=> b!1053948 (= res!471304 (not (validRegex!1365 (regTwo!6304 r!15766))))))

(declare-fun b!1053949 () Bool)

(assert (=> b!1053949 (= e!669428 (not e!669429))))

(declare-fun res!471302 () Bool)

(assert (=> b!1053949 (=> res!471302 e!669429)))

(declare-fun lt!358667 () Bool)

(assert (=> b!1053949 (= res!471302 (or lt!358667 (and (is-Concat!4729 r!15766) (is-EmptyExpr!2896 (regOne!6304 r!15766))) (and (is-Concat!4729 r!15766) (is-EmptyExpr!2896 (regTwo!6304 r!15766))) (not (is-Concat!4729 r!15766))))))

(declare-fun matchRSpec!695 (Regex!2896 List!10126) Bool)

(assert (=> b!1053949 (= lt!358667 (matchRSpec!695 r!15766 s!10566))))

(assert (=> b!1053949 (= lt!358667 (matchR!1432 r!15766 s!10566))))

(declare-fun lt!358675 () Unit!15467)

(declare-fun mainMatchTheorem!695 (Regex!2896 List!10126) Unit!15467)

(assert (=> b!1053949 (= lt!358675 (mainMatchTheorem!695 r!15766 s!10566))))

(assert (=> b!1053950 (= e!669433 e!669432)))

(declare-fun res!471307 () Bool)

(assert (=> b!1053950 (=> res!471307 e!669432)))

(declare-fun lt!358676 () Bool)

(assert (=> b!1053950 (= res!471307 (not lt!358676))))

(assert (=> b!1053950 (= (Exists!623 lambda!38033) (Exists!623 lambda!38034))))

(declare-fun lt!358677 () Unit!15467)

(assert (=> b!1053950 (= lt!358677 (lemmaExistCutMatchRandMatchRSpecEquivalent!311 lt!358669 lt!358678 s!10566))))

(assert (=> b!1053950 (= lt!358676 (Exists!623 lambda!38033))))

(assert (=> b!1053950 (= lt!358676 (isDefined!2063 lt!358663))))

(assert (=> b!1053950 (= lt!358663 (findConcatSeparation!527 lt!358669 lt!358678 Nil!10110 s!10566 s!10566))))

(declare-fun lt!358664 () Unit!15467)

(assert (=> b!1053950 (= lt!358664 (lemmaFindConcatSeparationEquivalentToExists!527 lt!358669 lt!358678 s!10566))))

(assert (=> b!1053950 (matchRSpec!695 lt!358670 s!10566)))

(declare-fun lt!358666 () Unit!15467)

(assert (=> b!1053950 (= lt!358666 (mainMatchTheorem!695 lt!358670 s!10566))))

(declare-fun b!1053951 () Bool)

(declare-fun tp!317537 () Bool)

(declare-fun tp!317535 () Bool)

(assert (=> b!1053951 (= e!669430 (and tp!317537 tp!317535))))

(assert (= (and start!90780 res!471303) b!1053949))

(assert (= (and b!1053949 (not res!471302)) b!1053942))

(assert (= (and b!1053942 (not res!471301)) b!1053945))

(assert (= (and b!1053945 (not res!471305)) b!1053950))

(assert (= (and b!1053950 (not res!471307)) b!1053947))

(assert (= (and b!1053947 (not res!471306)) b!1053948))

(assert (= (and b!1053948 (not res!471304)) b!1053944))

(assert (= (and start!90780 (is-ElementMatch!2896 r!15766)) b!1053940))

(assert (= (and start!90780 (is-Concat!4729 r!15766)) b!1053946))

(assert (= (and start!90780 (is-Star!2896 r!15766)) b!1053943))

(assert (= (and start!90780 (is-Union!2896 r!15766)) b!1053951))

(assert (= (and start!90780 (is-Cons!10110 s!10566)) b!1053941))

(declare-fun m!1217745 () Bool)

(assert (=> b!1053947 m!1217745))

(declare-fun m!1217747 () Bool)

(assert (=> b!1053947 m!1217747))

(declare-fun m!1217749 () Bool)

(assert (=> b!1053947 m!1217749))

(declare-fun m!1217751 () Bool)

(assert (=> b!1053947 m!1217751))

(declare-fun m!1217753 () Bool)

(assert (=> b!1053947 m!1217753))

(declare-fun m!1217755 () Bool)

(assert (=> b!1053947 m!1217755))

(declare-fun m!1217757 () Bool)

(assert (=> b!1053947 m!1217757))

(declare-fun m!1217759 () Bool)

(assert (=> b!1053947 m!1217759))

(declare-fun m!1217761 () Bool)

(assert (=> b!1053950 m!1217761))

(declare-fun m!1217763 () Bool)

(assert (=> b!1053950 m!1217763))

(declare-fun m!1217765 () Bool)

(assert (=> b!1053950 m!1217765))

(declare-fun m!1217767 () Bool)

(assert (=> b!1053950 m!1217767))

(declare-fun m!1217769 () Bool)

(assert (=> b!1053950 m!1217769))

(declare-fun m!1217771 () Bool)

(assert (=> b!1053950 m!1217771))

(assert (=> b!1053950 m!1217763))

(declare-fun m!1217773 () Bool)

(assert (=> b!1053950 m!1217773))

(declare-fun m!1217775 () Bool)

(assert (=> b!1053950 m!1217775))

(declare-fun m!1217777 () Bool)

(assert (=> start!90780 m!1217777))

(declare-fun m!1217779 () Bool)

(assert (=> b!1053949 m!1217779))

(declare-fun m!1217781 () Bool)

(assert (=> b!1053949 m!1217781))

(declare-fun m!1217783 () Bool)

(assert (=> b!1053949 m!1217783))

(declare-fun m!1217785 () Bool)

(assert (=> b!1053948 m!1217785))

(declare-fun m!1217787 () Bool)

(assert (=> b!1053942 m!1217787))

(declare-fun m!1217789 () Bool)

(assert (=> b!1053942 m!1217789))

(declare-fun m!1217791 () Bool)

(assert (=> b!1053942 m!1217791))

(declare-fun m!1217793 () Bool)

(assert (=> b!1053942 m!1217793))

(assert (=> b!1053942 m!1217787))

(declare-fun m!1217795 () Bool)

(assert (=> b!1053942 m!1217795))

(declare-fun m!1217797 () Bool)

(assert (=> b!1053942 m!1217797))

(declare-fun m!1217799 () Bool)

(assert (=> b!1053942 m!1217799))

(assert (=> b!1053942 m!1217791))

(declare-fun m!1217801 () Bool)

(assert (=> b!1053945 m!1217801))

(declare-fun m!1217803 () Bool)

(assert (=> b!1053945 m!1217803))

(declare-fun m!1217805 () Bool)

(assert (=> b!1053945 m!1217805))

(push 1)

(assert (not start!90780))

(assert (not b!1053943))

(assert (not b!1053946))

(assert (not b!1053949))

(assert (not b!1053945))

(assert (not b!1053941))

(assert (not b!1053951))

(assert (not b!1053948))

(assert (not b!1053950))

(assert tp_is_empty!5435)

(assert (not b!1053947))

(assert (not b!1053942))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!299908 () Bool)

(declare-fun isEmpty!6524 (Option!2421) Bool)

(assert (=> d!299908 (= (isDefined!2063 lt!358663) (not (isEmpty!6524 lt!358663)))))

(declare-fun bs!251430 () Bool)

(assert (= bs!251430 d!299908))

(declare-fun m!1217869 () Bool)

(assert (=> bs!251430 m!1217869))

(assert (=> b!1053950 d!299908))

(declare-fun d!299912 () Bool)

(assert (=> d!299912 (= (matchR!1432 lt!358670 s!10566) (matchRSpec!695 lt!358670 s!10566))))

(declare-fun lt!358732 () Unit!15467)

(declare-fun choose!6697 (Regex!2896 List!10126) Unit!15467)

(assert (=> d!299912 (= lt!358732 (choose!6697 lt!358670 s!10566))))

(assert (=> d!299912 (validRegex!1365 lt!358670)))

(assert (=> d!299912 (= (mainMatchTheorem!695 lt!358670 s!10566) lt!358732)))

(declare-fun bs!251432 () Bool)

(assert (= bs!251432 d!299912))

(assert (=> bs!251432 m!1217801))

(assert (=> bs!251432 m!1217765))

(declare-fun m!1217873 () Bool)

(assert (=> bs!251432 m!1217873))

(declare-fun m!1217875 () Bool)

(assert (=> bs!251432 m!1217875))

(assert (=> b!1053950 d!299912))

(declare-fun d!299918 () Bool)

(declare-fun e!669483 () Bool)

(assert (=> d!299918 e!669483))

(declare-fun res!471365 () Bool)

(assert (=> d!299918 (=> res!471365 e!669483)))

(declare-fun e!669484 () Bool)

(assert (=> d!299918 (= res!471365 e!669484)))

(declare-fun res!471367 () Bool)

(assert (=> d!299918 (=> (not res!471367) (not e!669484))))

(declare-fun lt!358742 () Option!2421)

(assert (=> d!299918 (= res!471367 (isDefined!2063 lt!358742))))

(declare-fun e!669485 () Option!2421)

(assert (=> d!299918 (= lt!358742 e!669485)))

(declare-fun c!176275 () Bool)

(declare-fun e!669486 () Bool)

(assert (=> d!299918 (= c!176275 e!669486)))

(declare-fun res!471364 () Bool)

(assert (=> d!299918 (=> (not res!471364) (not e!669486))))

(assert (=> d!299918 (= res!471364 (matchR!1432 lt!358669 Nil!10110))))

(assert (=> d!299918 (validRegex!1365 lt!358669)))

(assert (=> d!299918 (= (findConcatSeparation!527 lt!358669 lt!358678 Nil!10110 s!10566 s!10566) lt!358742)))

(declare-fun b!1054038 () Bool)

(declare-fun res!471363 () Bool)

(assert (=> b!1054038 (=> (not res!471363) (not e!669484))))

(assert (=> b!1054038 (= res!471363 (matchR!1432 lt!358678 (_2!6605 (get!3622 lt!358742))))))

(declare-fun b!1054039 () Bool)

(declare-fun res!471366 () Bool)

(assert (=> b!1054039 (=> (not res!471366) (not e!669484))))

(assert (=> b!1054039 (= res!471366 (matchR!1432 lt!358669 (_1!6605 (get!3622 lt!358742))))))

(declare-fun b!1054040 () Bool)

(assert (=> b!1054040 (= e!669485 (Some!2420 (tuple2!11559 Nil!10110 s!10566)))))

(declare-fun b!1054041 () Bool)

(assert (=> b!1054041 (= e!669483 (not (isDefined!2063 lt!358742)))))

(declare-fun b!1054042 () Bool)

(declare-fun e!669482 () Option!2421)

(assert (=> b!1054042 (= e!669485 e!669482)))

(declare-fun c!176276 () Bool)

(assert (=> b!1054042 (= c!176276 (is-Nil!10110 s!10566))))

(declare-fun b!1054043 () Bool)

(declare-fun ++!2796 (List!10126 List!10126) List!10126)

(assert (=> b!1054043 (= e!669484 (= (++!2796 (_1!6605 (get!3622 lt!358742)) (_2!6605 (get!3622 lt!358742))) s!10566))))

(declare-fun b!1054044 () Bool)

(declare-fun lt!358741 () Unit!15467)

(declare-fun lt!358743 () Unit!15467)

(assert (=> b!1054044 (= lt!358741 lt!358743)))

(assert (=> b!1054044 (= (++!2796 (++!2796 Nil!10110 (Cons!10110 (h!15511 s!10566) Nil!10110)) (t!101172 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!389 (List!10126 C!6362 List!10126 List!10126) Unit!15467)

(assert (=> b!1054044 (= lt!358743 (lemmaMoveElementToOtherListKeepsConcatEq!389 Nil!10110 (h!15511 s!10566) (t!101172 s!10566) s!10566))))

(assert (=> b!1054044 (= e!669482 (findConcatSeparation!527 lt!358669 lt!358678 (++!2796 Nil!10110 (Cons!10110 (h!15511 s!10566) Nil!10110)) (t!101172 s!10566) s!10566))))

(declare-fun b!1054045 () Bool)

(assert (=> b!1054045 (= e!669482 None!2420)))

(declare-fun b!1054046 () Bool)

(assert (=> b!1054046 (= e!669486 (matchR!1432 lt!358678 s!10566))))

(assert (= (and d!299918 res!471364) b!1054046))

(assert (= (and d!299918 c!176275) b!1054040))

(assert (= (and d!299918 (not c!176275)) b!1054042))

(assert (= (and b!1054042 c!176276) b!1054045))

(assert (= (and b!1054042 (not c!176276)) b!1054044))

(assert (= (and d!299918 res!471367) b!1054039))

(assert (= (and b!1054039 res!471366) b!1054038))

(assert (= (and b!1054038 res!471363) b!1054043))

(assert (= (and d!299918 (not res!471365)) b!1054041))

(declare-fun m!1217881 () Bool)

(assert (=> b!1054038 m!1217881))

(declare-fun m!1217883 () Bool)

(assert (=> b!1054038 m!1217883))

(declare-fun m!1217885 () Bool)

(assert (=> b!1054041 m!1217885))

(declare-fun m!1217887 () Bool)

(assert (=> b!1054046 m!1217887))

(assert (=> d!299918 m!1217885))

(declare-fun m!1217889 () Bool)

(assert (=> d!299918 m!1217889))

(declare-fun m!1217891 () Bool)

(assert (=> d!299918 m!1217891))

(declare-fun m!1217893 () Bool)

(assert (=> b!1054044 m!1217893))

(assert (=> b!1054044 m!1217893))

(declare-fun m!1217895 () Bool)

(assert (=> b!1054044 m!1217895))

(declare-fun m!1217897 () Bool)

(assert (=> b!1054044 m!1217897))

(assert (=> b!1054044 m!1217893))

(declare-fun m!1217899 () Bool)

(assert (=> b!1054044 m!1217899))

(assert (=> b!1054043 m!1217881))

(declare-fun m!1217901 () Bool)

(assert (=> b!1054043 m!1217901))

(assert (=> b!1054039 m!1217881))

(declare-fun m!1217903 () Bool)

(assert (=> b!1054039 m!1217903))

(assert (=> b!1053950 d!299918))

(declare-fun bs!251438 () Bool)

(declare-fun d!299924 () Bool)

(assert (= bs!251438 (and d!299924 b!1053942)))

(declare-fun lambda!38058 () Int)

(assert (=> bs!251438 (= (and (= lt!358669 (regOne!6304 r!15766)) (= lt!358678 (regTwo!6304 r!15766))) (= lambda!38058 lambda!38031))))

(assert (=> bs!251438 (not (= lambda!38058 lambda!38032))))

(declare-fun bs!251439 () Bool)

(assert (= bs!251439 (and d!299924 b!1053950)))

(assert (=> bs!251439 (= lambda!38058 lambda!38033)))

(assert (=> bs!251439 (not (= lambda!38058 lambda!38034))))

(assert (=> d!299924 true))

(assert (=> d!299924 true))

(assert (=> d!299924 true))

(declare-fun lambda!38059 () Int)

(assert (=> bs!251438 (not (= lambda!38059 lambda!38031))))

(declare-fun bs!251440 () Bool)

(assert (= bs!251440 d!299924))

(assert (=> bs!251440 (not (= lambda!38059 lambda!38058))))

(assert (=> bs!251439 (= lambda!38059 lambda!38034)))

(assert (=> bs!251438 (= (and (= lt!358669 (regOne!6304 r!15766)) (= lt!358678 (regTwo!6304 r!15766))) (= lambda!38059 lambda!38032))))

(assert (=> bs!251439 (not (= lambda!38059 lambda!38033))))

(assert (=> d!299924 true))

(assert (=> d!299924 true))

(assert (=> d!299924 true))

(assert (=> d!299924 (= (Exists!623 lambda!38058) (Exists!623 lambda!38059))))

(declare-fun lt!358747 () Unit!15467)

(declare-fun choose!6698 (Regex!2896 Regex!2896 List!10126) Unit!15467)

(assert (=> d!299924 (= lt!358747 (choose!6698 lt!358669 lt!358678 s!10566))))

(assert (=> d!299924 (validRegex!1365 lt!358669)))

(assert (=> d!299924 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!311 lt!358669 lt!358678 s!10566) lt!358747)))

(declare-fun m!1217909 () Bool)

(assert (=> bs!251440 m!1217909))

(declare-fun m!1217911 () Bool)

(assert (=> bs!251440 m!1217911))

(declare-fun m!1217913 () Bool)

(assert (=> bs!251440 m!1217913))

(assert (=> bs!251440 m!1217891))

(assert (=> b!1053950 d!299924))

(declare-fun bs!251441 () Bool)

(declare-fun b!1054092 () Bool)

(assert (= bs!251441 (and b!1054092 b!1053942)))

(declare-fun lambda!38064 () Int)

(assert (=> bs!251441 (not (= lambda!38064 lambda!38031))))

(declare-fun bs!251442 () Bool)

(assert (= bs!251442 (and b!1054092 d!299924)))

(assert (=> bs!251442 (not (= lambda!38064 lambda!38058))))

(declare-fun bs!251443 () Bool)

(assert (= bs!251443 (and b!1054092 b!1053950)))

(assert (=> bs!251443 (not (= lambda!38064 lambda!38034))))

(assert (=> bs!251442 (not (= lambda!38064 lambda!38059))))

(assert (=> bs!251441 (not (= lambda!38064 lambda!38032))))

(assert (=> bs!251443 (not (= lambda!38064 lambda!38033))))

(assert (=> b!1054092 true))

(assert (=> b!1054092 true))

(declare-fun bs!251444 () Bool)

(declare-fun b!1054100 () Bool)

(assert (= bs!251444 (and b!1054100 b!1053942)))

(declare-fun lambda!38065 () Int)

(assert (=> bs!251444 (not (= lambda!38065 lambda!38031))))

(declare-fun bs!251445 () Bool)

(assert (= bs!251445 (and b!1054100 b!1054092)))

(assert (=> bs!251445 (not (= lambda!38065 lambda!38064))))

(declare-fun bs!251446 () Bool)

(assert (= bs!251446 (and b!1054100 d!299924)))

(assert (=> bs!251446 (not (= lambda!38065 lambda!38058))))

(declare-fun bs!251447 () Bool)

(assert (= bs!251447 (and b!1054100 b!1053950)))

(assert (=> bs!251447 (= (and (= (regOne!6304 lt!358670) lt!358669) (= (regTwo!6304 lt!358670) lt!358678)) (= lambda!38065 lambda!38034))))

(assert (=> bs!251446 (= (and (= (regOne!6304 lt!358670) lt!358669) (= (regTwo!6304 lt!358670) lt!358678)) (= lambda!38065 lambda!38059))))

(assert (=> bs!251444 (= (and (= (regOne!6304 lt!358670) (regOne!6304 r!15766)) (= (regTwo!6304 lt!358670) (regTwo!6304 r!15766))) (= lambda!38065 lambda!38032))))

(assert (=> bs!251447 (not (= lambda!38065 lambda!38033))))

(assert (=> b!1054100 true))

(assert (=> b!1054100 true))

(declare-fun b!1054091 () Bool)

(declare-fun c!176288 () Bool)

(assert (=> b!1054091 (= c!176288 (is-Union!2896 lt!358670))))

(declare-fun e!669515 () Bool)

(declare-fun e!669514 () Bool)

(assert (=> b!1054091 (= e!669515 e!669514)))

(declare-fun e!669513 () Bool)

(declare-fun call!75145 () Bool)

(assert (=> b!1054092 (= e!669513 call!75145)))

(declare-fun b!1054093 () Bool)

(declare-fun e!669517 () Bool)

(assert (=> b!1054093 (= e!669517 (matchRSpec!695 (regTwo!6305 lt!358670) s!10566))))

(declare-fun b!1054094 () Bool)

(declare-fun e!669516 () Bool)

(assert (=> b!1054094 (= e!669514 e!669516)))

(declare-fun c!176286 () Bool)

(assert (=> b!1054094 (= c!176286 (is-Star!2896 lt!358670))))

(declare-fun b!1054095 () Bool)

(declare-fun e!669512 () Bool)

(declare-fun call!75144 () Bool)

(assert (=> b!1054095 (= e!669512 call!75144)))

(declare-fun bm!75139 () Bool)

(assert (=> bm!75139 (= call!75145 (Exists!623 (ite c!176286 lambda!38064 lambda!38065)))))

(declare-fun b!1054097 () Bool)

(declare-fun c!176285 () Bool)

(assert (=> b!1054097 (= c!176285 (is-ElementMatch!2896 lt!358670))))

(declare-fun e!669511 () Bool)

(assert (=> b!1054097 (= e!669511 e!669515)))

(declare-fun b!1054098 () Bool)

(assert (=> b!1054098 (= e!669514 e!669517)))

(declare-fun res!471397 () Bool)

(assert (=> b!1054098 (= res!471397 (matchRSpec!695 (regOne!6305 lt!358670) s!10566))))

(assert (=> b!1054098 (=> res!471397 e!669517)))

(declare-fun bm!75140 () Bool)

(assert (=> bm!75140 (= call!75144 (isEmpty!6522 s!10566))))

(declare-fun b!1054099 () Bool)

(assert (=> b!1054099 (= e!669515 (= s!10566 (Cons!10110 (c!176269 lt!358670) Nil!10110)))))

(declare-fun d!299928 () Bool)

(declare-fun c!176287 () Bool)

(assert (=> d!299928 (= c!176287 (is-EmptyExpr!2896 lt!358670))))

(assert (=> d!299928 (= (matchRSpec!695 lt!358670 s!10566) e!669512)))

(declare-fun b!1054096 () Bool)

(assert (=> b!1054096 (= e!669512 e!669511)))

(declare-fun res!471396 () Bool)

(assert (=> b!1054096 (= res!471396 (not (is-EmptyLang!2896 lt!358670)))))

(assert (=> b!1054096 (=> (not res!471396) (not e!669511))))

(assert (=> b!1054100 (= e!669516 call!75145)))

(declare-fun b!1054101 () Bool)

(declare-fun res!471398 () Bool)

(assert (=> b!1054101 (=> res!471398 e!669513)))

(assert (=> b!1054101 (= res!471398 call!75144)))

(assert (=> b!1054101 (= e!669516 e!669513)))

(assert (= (and d!299928 c!176287) b!1054095))

(assert (= (and d!299928 (not c!176287)) b!1054096))

(assert (= (and b!1054096 res!471396) b!1054097))

(assert (= (and b!1054097 c!176285) b!1054099))

(assert (= (and b!1054097 (not c!176285)) b!1054091))

(assert (= (and b!1054091 c!176288) b!1054098))

(assert (= (and b!1054091 (not c!176288)) b!1054094))

(assert (= (and b!1054098 (not res!471397)) b!1054093))

(assert (= (and b!1054094 c!176286) b!1054101))

(assert (= (and b!1054094 (not c!176286)) b!1054100))

(assert (= (and b!1054101 (not res!471398)) b!1054092))

(assert (= (or b!1054092 b!1054100) bm!75139))

(assert (= (or b!1054095 b!1054101) bm!75140))

(declare-fun m!1217915 () Bool)

(assert (=> b!1054093 m!1217915))

(declare-fun m!1217917 () Bool)

(assert (=> bm!75139 m!1217917))

(declare-fun m!1217919 () Bool)

(assert (=> b!1054098 m!1217919))

(assert (=> bm!75140 m!1217797))

(assert (=> b!1053950 d!299928))

(declare-fun bs!251448 () Bool)

(declare-fun d!299930 () Bool)

(assert (= bs!251448 (and d!299930 b!1053942)))

(declare-fun lambda!38068 () Int)

(assert (=> bs!251448 (= (and (= lt!358669 (regOne!6304 r!15766)) (= lt!358678 (regTwo!6304 r!15766))) (= lambda!38068 lambda!38031))))

(declare-fun bs!251449 () Bool)

(assert (= bs!251449 (and d!299930 b!1054092)))

(assert (=> bs!251449 (not (= lambda!38068 lambda!38064))))

(declare-fun bs!251450 () Bool)

(assert (= bs!251450 (and d!299930 d!299924)))

(assert (=> bs!251450 (= lambda!38068 lambda!38058)))

(declare-fun bs!251451 () Bool)

(assert (= bs!251451 (and d!299930 b!1053950)))

(assert (=> bs!251451 (not (= lambda!38068 lambda!38034))))

(declare-fun bs!251452 () Bool)

(assert (= bs!251452 (and d!299930 b!1054100)))

(assert (=> bs!251452 (not (= lambda!38068 lambda!38065))))

(assert (=> bs!251450 (not (= lambda!38068 lambda!38059))))

(assert (=> bs!251448 (not (= lambda!38068 lambda!38032))))

(assert (=> bs!251451 (= lambda!38068 lambda!38033)))

(assert (=> d!299930 true))

(assert (=> d!299930 true))

(assert (=> d!299930 true))

(assert (=> d!299930 (= (isDefined!2063 (findConcatSeparation!527 lt!358669 lt!358678 Nil!10110 s!10566 s!10566)) (Exists!623 lambda!38068))))

(declare-fun lt!358756 () Unit!15467)

(declare-fun choose!6699 (Regex!2896 Regex!2896 List!10126) Unit!15467)

(assert (=> d!299930 (= lt!358756 (choose!6699 lt!358669 lt!358678 s!10566))))

(assert (=> d!299930 (validRegex!1365 lt!358669)))

(assert (=> d!299930 (= (lemmaFindConcatSeparationEquivalentToExists!527 lt!358669 lt!358678 s!10566) lt!358756)))

(declare-fun bs!251453 () Bool)

(assert (= bs!251453 d!299930))

(assert (=> bs!251453 m!1217891))

(assert (=> bs!251453 m!1217769))

(declare-fun m!1217921 () Bool)

(assert (=> bs!251453 m!1217921))

(declare-fun m!1217923 () Bool)

(assert (=> bs!251453 m!1217923))

(declare-fun m!1217925 () Bool)

(assert (=> bs!251453 m!1217925))

(assert (=> bs!251453 m!1217769))

(assert (=> b!1053950 d!299930))

(declare-fun d!299932 () Bool)

(declare-fun choose!6700 (Int) Bool)

(assert (=> d!299932 (= (Exists!623 lambda!38033) (choose!6700 lambda!38033))))

(declare-fun bs!251454 () Bool)

(assert (= bs!251454 d!299932))

(declare-fun m!1217927 () Bool)

(assert (=> bs!251454 m!1217927))

(assert (=> b!1053950 d!299932))

(declare-fun d!299934 () Bool)

(assert (=> d!299934 (= (Exists!623 lambda!38034) (choose!6700 lambda!38034))))

(declare-fun bs!251455 () Bool)

(assert (= bs!251455 d!299934))

(declare-fun m!1217929 () Bool)

(assert (=> bs!251455 m!1217929))

(assert (=> b!1053950 d!299934))

(declare-fun b!1054161 () Bool)

(declare-fun e!669551 () Bool)

(declare-fun nullable!988 (Regex!2896) Bool)

(assert (=> b!1054161 (= e!669551 (nullable!988 lt!358670))))

(declare-fun b!1054162 () Bool)

(declare-fun res!471435 () Bool)

(declare-fun e!669552 () Bool)

(assert (=> b!1054162 (=> (not res!471435) (not e!669552))))

(declare-fun tail!1505 (List!10126) List!10126)

(assert (=> b!1054162 (= res!471435 (isEmpty!6522 (tail!1505 s!10566)))))

(declare-fun b!1054163 () Bool)

(declare-fun e!669550 () Bool)

(declare-fun head!1943 (List!10126) C!6362)

(assert (=> b!1054163 (= e!669550 (not (= (head!1943 s!10566) (c!176269 lt!358670))))))

(declare-fun b!1054164 () Bool)

(declare-fun e!669553 () Bool)

(declare-fun e!669554 () Bool)

(assert (=> b!1054164 (= e!669553 e!669554)))

(declare-fun res!471441 () Bool)

(assert (=> b!1054164 (=> (not res!471441) (not e!669554))))

(declare-fun lt!358762 () Bool)

(assert (=> b!1054164 (= res!471441 (not lt!358762))))

(declare-fun b!1054165 () Bool)

(declare-fun derivativeStep!788 (Regex!2896 C!6362) Regex!2896)

(assert (=> b!1054165 (= e!669551 (matchR!1432 (derivativeStep!788 lt!358670 (head!1943 s!10566)) (tail!1505 s!10566)))))

(declare-fun bm!75143 () Bool)

(declare-fun call!75148 () Bool)

(assert (=> bm!75143 (= call!75148 (isEmpty!6522 s!10566))))

(declare-fun b!1054166 () Bool)

(declare-fun e!669549 () Bool)

(declare-fun e!669555 () Bool)

(assert (=> b!1054166 (= e!669549 e!669555)))

(declare-fun c!176303 () Bool)

(assert (=> b!1054166 (= c!176303 (is-EmptyLang!2896 lt!358670))))

(declare-fun b!1054167 () Bool)

(assert (=> b!1054167 (= e!669555 (not lt!358762))))

(declare-fun d!299936 () Bool)

(assert (=> d!299936 e!669549))

(declare-fun c!176302 () Bool)

(assert (=> d!299936 (= c!176302 (is-EmptyExpr!2896 lt!358670))))

(assert (=> d!299936 (= lt!358762 e!669551)))

(declare-fun c!176301 () Bool)

(assert (=> d!299936 (= c!176301 (isEmpty!6522 s!10566))))

(assert (=> d!299936 (validRegex!1365 lt!358670)))

(assert (=> d!299936 (= (matchR!1432 lt!358670 s!10566) lt!358762)))

(declare-fun b!1054168 () Bool)

(declare-fun res!471436 () Bool)

(assert (=> b!1054168 (=> res!471436 e!669553)))

(assert (=> b!1054168 (= res!471436 (not (is-ElementMatch!2896 lt!358670)))))

(assert (=> b!1054168 (= e!669555 e!669553)))

(declare-fun b!1054169 () Bool)

(declare-fun res!471440 () Bool)

(assert (=> b!1054169 (=> res!471440 e!669553)))

(assert (=> b!1054169 (= res!471440 e!669552)))

(declare-fun res!471437 () Bool)

(assert (=> b!1054169 (=> (not res!471437) (not e!669552))))

(assert (=> b!1054169 (= res!471437 lt!358762)))

(declare-fun b!1054170 () Bool)

(assert (=> b!1054170 (= e!669552 (= (head!1943 s!10566) (c!176269 lt!358670)))))

(declare-fun b!1054171 () Bool)

(assert (=> b!1054171 (= e!669549 (= lt!358762 call!75148))))

(declare-fun b!1054172 () Bool)

(declare-fun res!471434 () Bool)

(assert (=> b!1054172 (=> (not res!471434) (not e!669552))))

(assert (=> b!1054172 (= res!471434 (not call!75148))))

(declare-fun b!1054173 () Bool)

(assert (=> b!1054173 (= e!669554 e!669550)))

(declare-fun res!471438 () Bool)

(assert (=> b!1054173 (=> res!471438 e!669550)))

(assert (=> b!1054173 (= res!471438 call!75148)))

(declare-fun b!1054174 () Bool)

(declare-fun res!471439 () Bool)

(assert (=> b!1054174 (=> res!471439 e!669550)))

(assert (=> b!1054174 (= res!471439 (not (isEmpty!6522 (tail!1505 s!10566))))))

(assert (= (and d!299936 c!176301) b!1054161))

(assert (= (and d!299936 (not c!176301)) b!1054165))

(assert (= (and d!299936 c!176302) b!1054171))

(assert (= (and d!299936 (not c!176302)) b!1054166))

(assert (= (and b!1054166 c!176303) b!1054167))

(assert (= (and b!1054166 (not c!176303)) b!1054168))

(assert (= (and b!1054168 (not res!471436)) b!1054169))

(assert (= (and b!1054169 res!471437) b!1054172))

(assert (= (and b!1054172 res!471434) b!1054162))

(assert (= (and b!1054162 res!471435) b!1054170))

(assert (= (and b!1054169 (not res!471440)) b!1054164))

(assert (= (and b!1054164 res!471441) b!1054173))

(assert (= (and b!1054173 (not res!471438)) b!1054174))

(assert (= (and b!1054174 (not res!471439)) b!1054163))

(assert (= (or b!1054171 b!1054172 b!1054173) bm!75143))

(assert (=> d!299936 m!1217797))

(assert (=> d!299936 m!1217875))

(declare-fun m!1217953 () Bool)

(assert (=> b!1054161 m!1217953))

(declare-fun m!1217955 () Bool)

(assert (=> b!1054174 m!1217955))

(assert (=> b!1054174 m!1217955))

(declare-fun m!1217957 () Bool)

(assert (=> b!1054174 m!1217957))

(declare-fun m!1217959 () Bool)

(assert (=> b!1054163 m!1217959))

(assert (=> b!1054162 m!1217955))

(assert (=> b!1054162 m!1217955))

(assert (=> b!1054162 m!1217957))

(assert (=> bm!75143 m!1217797))

(assert (=> b!1054170 m!1217959))

(assert (=> b!1054165 m!1217959))

(assert (=> b!1054165 m!1217959))

(declare-fun m!1217961 () Bool)

(assert (=> b!1054165 m!1217961))

(assert (=> b!1054165 m!1217955))

(assert (=> b!1054165 m!1217961))

(assert (=> b!1054165 m!1217955))

(declare-fun m!1217963 () Bool)

(assert (=> b!1054165 m!1217963))

(assert (=> b!1053945 d!299936))

(declare-fun c!176316 () Bool)

(declare-fun call!75160 () Regex!2896)

(declare-fun bm!75154 () Bool)

(declare-fun c!176318 () Bool)

(assert (=> bm!75154 (= call!75160 (removeUselessConcat!445 (ite c!176316 (regTwo!6304 (regTwo!6304 r!15766)) (ite c!176318 (regTwo!6305 (regTwo!6304 r!15766)) (reg!3225 (regTwo!6304 r!15766))))))))

(declare-fun b!1054201 () Bool)

(declare-fun e!669570 () Regex!2896)

(declare-fun call!75161 () Regex!2896)

(assert (=> b!1054201 (= e!669570 (Star!2896 call!75161))))

(declare-fun b!1054202 () Bool)

(declare-fun e!669573 () Regex!2896)

(declare-fun call!75162 () Regex!2896)

(assert (=> b!1054202 (= e!669573 call!75162)))

(declare-fun b!1054203 () Bool)

(assert (=> b!1054203 (= e!669570 (regTwo!6304 r!15766))))

(declare-fun bm!75155 () Bool)

(declare-fun call!75159 () Regex!2896)

(declare-fun call!75163 () Regex!2896)

(assert (=> bm!75155 (= call!75159 call!75163)))

(declare-fun b!1054204 () Bool)

(declare-fun c!176317 () Bool)

(assert (=> b!1054204 (= c!176317 (is-Star!2896 (regTwo!6304 r!15766)))))

(declare-fun e!669575 () Regex!2896)

(assert (=> b!1054204 (= e!669575 e!669570)))

(declare-fun bm!75156 () Bool)

(assert (=> bm!75156 (= call!75161 call!75160)))

(declare-fun d!299940 () Bool)

(declare-fun e!669572 () Bool)

(assert (=> d!299940 e!669572))

(declare-fun res!471448 () Bool)

(assert (=> d!299940 (=> (not res!471448) (not e!669572))))

(declare-fun lt!358767 () Regex!2896)

(assert (=> d!299940 (= res!471448 (validRegex!1365 lt!358767))))

(assert (=> d!299940 (= lt!358767 e!669573)))

(declare-fun c!176314 () Bool)

(assert (=> d!299940 (= c!176314 (and (is-Concat!4729 (regTwo!6304 r!15766)) (is-EmptyExpr!2896 (regOne!6304 (regTwo!6304 r!15766)))))))

(assert (=> d!299940 (validRegex!1365 (regTwo!6304 r!15766))))

(assert (=> d!299940 (= (removeUselessConcat!445 (regTwo!6304 r!15766)) lt!358767)))

(declare-fun b!1054205 () Bool)

(assert (=> b!1054205 (= e!669572 (= (nullable!988 lt!358767) (nullable!988 (regTwo!6304 r!15766))))))

(declare-fun b!1054206 () Bool)

(declare-fun e!669574 () Regex!2896)

(assert (=> b!1054206 (= e!669573 e!669574)))

(declare-fun c!176315 () Bool)

(assert (=> b!1054206 (= c!176315 (and (is-Concat!4729 (regTwo!6304 r!15766)) (is-EmptyExpr!2896 (regTwo!6304 (regTwo!6304 r!15766)))))))

(declare-fun b!1054207 () Bool)

(assert (=> b!1054207 (= c!176316 (is-Concat!4729 (regTwo!6304 r!15766)))))

(declare-fun e!669571 () Regex!2896)

(assert (=> b!1054207 (= e!669574 e!669571)))

(declare-fun b!1054208 () Bool)

(assert (=> b!1054208 (= e!669575 (Union!2896 call!75159 call!75161))))

(declare-fun bm!75157 () Bool)

(assert (=> bm!75157 (= call!75162 (removeUselessConcat!445 (ite c!176314 (regTwo!6304 (regTwo!6304 r!15766)) (ite (or c!176315 c!176316) (regOne!6304 (regTwo!6304 r!15766)) (regOne!6305 (regTwo!6304 r!15766))))))))

(declare-fun b!1054209 () Bool)

(assert (=> b!1054209 (= e!669574 call!75163)))

(declare-fun b!1054210 () Bool)

(assert (=> b!1054210 (= e!669571 (Concat!4729 call!75159 call!75160))))

(declare-fun bm!75158 () Bool)

(assert (=> bm!75158 (= call!75163 call!75162)))

(declare-fun b!1054211 () Bool)

(assert (=> b!1054211 (= e!669571 e!669575)))

(assert (=> b!1054211 (= c!176318 (is-Union!2896 (regTwo!6304 r!15766)))))

(assert (= (and d!299940 c!176314) b!1054202))

(assert (= (and d!299940 (not c!176314)) b!1054206))

(assert (= (and b!1054206 c!176315) b!1054209))

(assert (= (and b!1054206 (not c!176315)) b!1054207))

(assert (= (and b!1054207 c!176316) b!1054210))

(assert (= (and b!1054207 (not c!176316)) b!1054211))

(assert (= (and b!1054211 c!176318) b!1054208))

(assert (= (and b!1054211 (not c!176318)) b!1054204))

(assert (= (and b!1054204 c!176317) b!1054201))

(assert (= (and b!1054204 (not c!176317)) b!1054203))

(assert (= (or b!1054208 b!1054201) bm!75156))

(assert (= (or b!1054210 bm!75156) bm!75154))

(assert (= (or b!1054210 b!1054208) bm!75155))

(assert (= (or b!1054209 bm!75155) bm!75158))

(assert (= (or b!1054202 bm!75158) bm!75157))

(assert (= (and d!299940 res!471448) b!1054205))

(declare-fun m!1217965 () Bool)

(assert (=> bm!75154 m!1217965))

(declare-fun m!1217967 () Bool)

(assert (=> d!299940 m!1217967))

(assert (=> d!299940 m!1217785))

(declare-fun m!1217969 () Bool)

(assert (=> b!1054205 m!1217969))

(declare-fun m!1217971 () Bool)

(assert (=> b!1054205 m!1217971))

(declare-fun m!1217973 () Bool)

(assert (=> bm!75157 m!1217973))

(assert (=> b!1053945 d!299940))

(declare-fun bm!75159 () Bool)

(declare-fun call!75165 () Regex!2896)

(declare-fun c!176323 () Bool)

(declare-fun c!176321 () Bool)

(assert (=> bm!75159 (= call!75165 (removeUselessConcat!445 (ite c!176321 (regTwo!6304 (regOne!6304 r!15766)) (ite c!176323 (regTwo!6305 (regOne!6304 r!15766)) (reg!3225 (regOne!6304 r!15766))))))))

(declare-fun b!1054214 () Bool)

(declare-fun e!669578 () Regex!2896)

(declare-fun call!75166 () Regex!2896)

(assert (=> b!1054214 (= e!669578 (Star!2896 call!75166))))

(declare-fun b!1054215 () Bool)

(declare-fun e!669581 () Regex!2896)

(declare-fun call!75167 () Regex!2896)

(assert (=> b!1054215 (= e!669581 call!75167)))

(declare-fun b!1054216 () Bool)

(assert (=> b!1054216 (= e!669578 (regOne!6304 r!15766))))

(declare-fun bm!75160 () Bool)

(declare-fun call!75164 () Regex!2896)

(declare-fun call!75168 () Regex!2896)

(assert (=> bm!75160 (= call!75164 call!75168)))

(declare-fun b!1054217 () Bool)

(declare-fun c!176322 () Bool)

(assert (=> b!1054217 (= c!176322 (is-Star!2896 (regOne!6304 r!15766)))))

(declare-fun e!669583 () Regex!2896)

(assert (=> b!1054217 (= e!669583 e!669578)))

(declare-fun bm!75161 () Bool)

(assert (=> bm!75161 (= call!75166 call!75165)))

(declare-fun d!299942 () Bool)

(declare-fun e!669580 () Bool)

(assert (=> d!299942 e!669580))

(declare-fun res!471451 () Bool)

(assert (=> d!299942 (=> (not res!471451) (not e!669580))))

(declare-fun lt!358768 () Regex!2896)

(assert (=> d!299942 (= res!471451 (validRegex!1365 lt!358768))))

(assert (=> d!299942 (= lt!358768 e!669581)))

(declare-fun c!176319 () Bool)

(assert (=> d!299942 (= c!176319 (and (is-Concat!4729 (regOne!6304 r!15766)) (is-EmptyExpr!2896 (regOne!6304 (regOne!6304 r!15766)))))))

(assert (=> d!299942 (validRegex!1365 (regOne!6304 r!15766))))

(assert (=> d!299942 (= (removeUselessConcat!445 (regOne!6304 r!15766)) lt!358768)))

(declare-fun b!1054218 () Bool)

(assert (=> b!1054218 (= e!669580 (= (nullable!988 lt!358768) (nullable!988 (regOne!6304 r!15766))))))

(declare-fun b!1054219 () Bool)

(declare-fun e!669582 () Regex!2896)

(assert (=> b!1054219 (= e!669581 e!669582)))

(declare-fun c!176320 () Bool)

(assert (=> b!1054219 (= c!176320 (and (is-Concat!4729 (regOne!6304 r!15766)) (is-EmptyExpr!2896 (regTwo!6304 (regOne!6304 r!15766)))))))

(declare-fun b!1054220 () Bool)

(assert (=> b!1054220 (= c!176321 (is-Concat!4729 (regOne!6304 r!15766)))))

(declare-fun e!669579 () Regex!2896)

(assert (=> b!1054220 (= e!669582 e!669579)))

(declare-fun b!1054221 () Bool)

(assert (=> b!1054221 (= e!669583 (Union!2896 call!75164 call!75166))))

(declare-fun bm!75162 () Bool)

(assert (=> bm!75162 (= call!75167 (removeUselessConcat!445 (ite c!176319 (regTwo!6304 (regOne!6304 r!15766)) (ite (or c!176320 c!176321) (regOne!6304 (regOne!6304 r!15766)) (regOne!6305 (regOne!6304 r!15766))))))))

(declare-fun b!1054222 () Bool)

(assert (=> b!1054222 (= e!669582 call!75168)))

(declare-fun b!1054223 () Bool)

(assert (=> b!1054223 (= e!669579 (Concat!4729 call!75164 call!75165))))

(declare-fun bm!75163 () Bool)

(assert (=> bm!75163 (= call!75168 call!75167)))

(declare-fun b!1054226 () Bool)

(assert (=> b!1054226 (= e!669579 e!669583)))

(assert (=> b!1054226 (= c!176323 (is-Union!2896 (regOne!6304 r!15766)))))

(assert (= (and d!299942 c!176319) b!1054215))

(assert (= (and d!299942 (not c!176319)) b!1054219))

(assert (= (and b!1054219 c!176320) b!1054222))

(assert (= (and b!1054219 (not c!176320)) b!1054220))

(assert (= (and b!1054220 c!176321) b!1054223))

(assert (= (and b!1054220 (not c!176321)) b!1054226))

(assert (= (and b!1054226 c!176323) b!1054221))

(assert (= (and b!1054226 (not c!176323)) b!1054217))

(assert (= (and b!1054217 c!176322) b!1054214))

(assert (= (and b!1054217 (not c!176322)) b!1054216))

(assert (= (or b!1054221 b!1054214) bm!75161))

(assert (= (or b!1054223 bm!75161) bm!75159))

(assert (= (or b!1054223 b!1054221) bm!75160))

(assert (= (or b!1054222 bm!75160) bm!75163))

(assert (= (or b!1054215 bm!75163) bm!75162))

(assert (= (and d!299942 res!471451) b!1054218))

(declare-fun m!1217975 () Bool)

(assert (=> bm!75159 m!1217975))

(declare-fun m!1217977 () Bool)

(assert (=> d!299942 m!1217977))

(assert (=> d!299942 m!1217751))

(declare-fun m!1217979 () Bool)

(assert (=> b!1054218 m!1217979))

(declare-fun m!1217981 () Bool)

(assert (=> b!1054218 m!1217981))

(declare-fun m!1217983 () Bool)

(assert (=> bm!75162 m!1217983))

(assert (=> b!1053945 d!299942))

(declare-fun b!1054245 () Bool)

(declare-fun e!669599 () Bool)

(declare-fun e!669603 () Bool)

(assert (=> b!1054245 (= e!669599 e!669603)))

(declare-fun c!176328 () Bool)

(assert (=> b!1054245 (= c!176328 (is-Union!2896 r!15766))))

(declare-fun b!1054246 () Bool)

(declare-fun e!669602 () Bool)

(declare-fun call!75176 () Bool)

(assert (=> b!1054246 (= e!669602 call!75176)))

(declare-fun b!1054247 () Bool)

(declare-fun e!669601 () Bool)

(declare-fun call!75175 () Bool)

(assert (=> b!1054247 (= e!669601 call!75175)))

(declare-fun bm!75170 () Bool)

(declare-fun c!176329 () Bool)

(assert (=> bm!75170 (= call!75175 (validRegex!1365 (ite c!176329 (reg!3225 r!15766) (ite c!176328 (regOne!6305 r!15766) (regOne!6304 r!15766)))))))

(declare-fun b!1054248 () Bool)

(declare-fun res!471466 () Bool)

(assert (=> b!1054248 (=> (not res!471466) (not e!669602))))

(declare-fun call!75177 () Bool)

(assert (=> b!1054248 (= res!471466 call!75177)))

(assert (=> b!1054248 (= e!669603 e!669602)))

(declare-fun bm!75171 () Bool)

(assert (=> bm!75171 (= call!75176 (validRegex!1365 (ite c!176328 (regTwo!6305 r!15766) (regTwo!6304 r!15766))))))

(declare-fun b!1054249 () Bool)

(declare-fun e!669600 () Bool)

(assert (=> b!1054249 (= e!669600 call!75176)))

(declare-fun b!1054250 () Bool)

(declare-fun e!669604 () Bool)

(assert (=> b!1054250 (= e!669604 e!669600)))

(declare-fun res!471467 () Bool)

(assert (=> b!1054250 (=> (not res!471467) (not e!669600))))

(assert (=> b!1054250 (= res!471467 call!75177)))

(declare-fun d!299944 () Bool)

(declare-fun res!471464 () Bool)

(declare-fun e!669598 () Bool)

(assert (=> d!299944 (=> res!471464 e!669598)))

(assert (=> d!299944 (= res!471464 (is-ElementMatch!2896 r!15766))))

(assert (=> d!299944 (= (validRegex!1365 r!15766) e!669598)))

(declare-fun b!1054251 () Bool)

(declare-fun res!471465 () Bool)

(assert (=> b!1054251 (=> res!471465 e!669604)))

(assert (=> b!1054251 (= res!471465 (not (is-Concat!4729 r!15766)))))

(assert (=> b!1054251 (= e!669603 e!669604)))

(declare-fun bm!75172 () Bool)

(assert (=> bm!75172 (= call!75177 call!75175)))

(declare-fun b!1054252 () Bool)

(assert (=> b!1054252 (= e!669599 e!669601)))

(declare-fun res!471468 () Bool)

(assert (=> b!1054252 (= res!471468 (not (nullable!988 (reg!3225 r!15766))))))

(assert (=> b!1054252 (=> (not res!471468) (not e!669601))))

(declare-fun b!1054253 () Bool)

(assert (=> b!1054253 (= e!669598 e!669599)))

(assert (=> b!1054253 (= c!176329 (is-Star!2896 r!15766))))

(assert (= (and d!299944 (not res!471464)) b!1054253))

(assert (= (and b!1054253 c!176329) b!1054252))

(assert (= (and b!1054253 (not c!176329)) b!1054245))

(assert (= (and b!1054252 res!471468) b!1054247))

(assert (= (and b!1054245 c!176328) b!1054248))

(assert (= (and b!1054245 (not c!176328)) b!1054251))

(assert (= (and b!1054248 res!471466) b!1054246))

(assert (= (and b!1054251 (not res!471465)) b!1054250))

(assert (= (and b!1054250 res!471467) b!1054249))

(assert (= (or b!1054246 b!1054249) bm!75171))

(assert (= (or b!1054248 b!1054250) bm!75172))

(assert (= (or b!1054247 bm!75172) bm!75170))

(declare-fun m!1217985 () Bool)

(assert (=> bm!75170 m!1217985))

(declare-fun m!1217987 () Bool)

(assert (=> bm!75171 m!1217987))

(declare-fun m!1217989 () Bool)

(assert (=> b!1054252 m!1217989))

(assert (=> start!90780 d!299944))

(declare-fun bs!251460 () Bool)

(declare-fun b!1054255 () Bool)

(assert (= bs!251460 (and b!1054255 b!1053942)))

(declare-fun lambda!38075 () Int)

(assert (=> bs!251460 (not (= lambda!38075 lambda!38031))))

(declare-fun bs!251461 () Bool)

(assert (= bs!251461 (and b!1054255 b!1054092)))

(assert (=> bs!251461 (= (and (= (reg!3225 r!15766) (reg!3225 lt!358670)) (= r!15766 lt!358670)) (= lambda!38075 lambda!38064))))

(declare-fun bs!251462 () Bool)

(assert (= bs!251462 (and b!1054255 d!299924)))

(assert (=> bs!251462 (not (= lambda!38075 lambda!38058))))

(declare-fun bs!251463 () Bool)

(assert (= bs!251463 (and b!1054255 b!1053950)))

(assert (=> bs!251463 (not (= lambda!38075 lambda!38034))))

(declare-fun bs!251464 () Bool)

(assert (= bs!251464 (and b!1054255 d!299930)))

(assert (=> bs!251464 (not (= lambda!38075 lambda!38068))))

(declare-fun bs!251465 () Bool)

(assert (= bs!251465 (and b!1054255 b!1054100)))

(assert (=> bs!251465 (not (= lambda!38075 lambda!38065))))

(assert (=> bs!251462 (not (= lambda!38075 lambda!38059))))

(assert (=> bs!251460 (not (= lambda!38075 lambda!38032))))

(assert (=> bs!251463 (not (= lambda!38075 lambda!38033))))

(assert (=> b!1054255 true))

(assert (=> b!1054255 true))

(declare-fun bs!251466 () Bool)

(declare-fun b!1054263 () Bool)

(assert (= bs!251466 (and b!1054263 b!1053942)))

(declare-fun lambda!38076 () Int)

(assert (=> bs!251466 (not (= lambda!38076 lambda!38031))))

(declare-fun bs!251467 () Bool)

(assert (= bs!251467 (and b!1054263 b!1054092)))

(assert (=> bs!251467 (not (= lambda!38076 lambda!38064))))

(declare-fun bs!251468 () Bool)

(assert (= bs!251468 (and b!1054263 d!299924)))

(assert (=> bs!251468 (not (= lambda!38076 lambda!38058))))

(declare-fun bs!251469 () Bool)

(assert (= bs!251469 (and b!1054263 b!1054255)))

(assert (=> bs!251469 (not (= lambda!38076 lambda!38075))))

(declare-fun bs!251470 () Bool)

(assert (= bs!251470 (and b!1054263 b!1053950)))

(assert (=> bs!251470 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38076 lambda!38034))))

(declare-fun bs!251471 () Bool)

(assert (= bs!251471 (and b!1054263 d!299930)))

(assert (=> bs!251471 (not (= lambda!38076 lambda!38068))))

(declare-fun bs!251472 () Bool)

(assert (= bs!251472 (and b!1054263 b!1054100)))

(assert (=> bs!251472 (= (and (= (regOne!6304 r!15766) (regOne!6304 lt!358670)) (= (regTwo!6304 r!15766) (regTwo!6304 lt!358670))) (= lambda!38076 lambda!38065))))

(assert (=> bs!251468 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38076 lambda!38059))))

(assert (=> bs!251466 (= lambda!38076 lambda!38032)))

(assert (=> bs!251470 (not (= lambda!38076 lambda!38033))))

(assert (=> b!1054263 true))

(assert (=> b!1054263 true))

(declare-fun b!1054254 () Bool)

(declare-fun c!176333 () Bool)

(assert (=> b!1054254 (= c!176333 (is-Union!2896 r!15766))))

(declare-fun e!669609 () Bool)

(declare-fun e!669608 () Bool)

(assert (=> b!1054254 (= e!669609 e!669608)))

(declare-fun e!669607 () Bool)

(declare-fun call!75179 () Bool)

(assert (=> b!1054255 (= e!669607 call!75179)))

(declare-fun b!1054256 () Bool)

(declare-fun e!669611 () Bool)

(assert (=> b!1054256 (= e!669611 (matchRSpec!695 (regTwo!6305 r!15766) s!10566))))

(declare-fun b!1054257 () Bool)

(declare-fun e!669610 () Bool)

(assert (=> b!1054257 (= e!669608 e!669610)))

(declare-fun c!176331 () Bool)

(assert (=> b!1054257 (= c!176331 (is-Star!2896 r!15766))))

(declare-fun b!1054258 () Bool)

(declare-fun e!669606 () Bool)

(declare-fun call!75178 () Bool)

(assert (=> b!1054258 (= e!669606 call!75178)))

(declare-fun bm!75173 () Bool)

(assert (=> bm!75173 (= call!75179 (Exists!623 (ite c!176331 lambda!38075 lambda!38076)))))

(declare-fun b!1054260 () Bool)

(declare-fun c!176330 () Bool)

(assert (=> b!1054260 (= c!176330 (is-ElementMatch!2896 r!15766))))

(declare-fun e!669605 () Bool)

(assert (=> b!1054260 (= e!669605 e!669609)))

(declare-fun b!1054261 () Bool)

(assert (=> b!1054261 (= e!669608 e!669611)))

(declare-fun res!471470 () Bool)

(assert (=> b!1054261 (= res!471470 (matchRSpec!695 (regOne!6305 r!15766) s!10566))))

(assert (=> b!1054261 (=> res!471470 e!669611)))

(declare-fun bm!75174 () Bool)

(assert (=> bm!75174 (= call!75178 (isEmpty!6522 s!10566))))

(declare-fun b!1054262 () Bool)

(assert (=> b!1054262 (= e!669609 (= s!10566 (Cons!10110 (c!176269 r!15766) Nil!10110)))))

(declare-fun d!299946 () Bool)

(declare-fun c!176332 () Bool)

(assert (=> d!299946 (= c!176332 (is-EmptyExpr!2896 r!15766))))

(assert (=> d!299946 (= (matchRSpec!695 r!15766 s!10566) e!669606)))

(declare-fun b!1054259 () Bool)

(assert (=> b!1054259 (= e!669606 e!669605)))

(declare-fun res!471469 () Bool)

(assert (=> b!1054259 (= res!471469 (not (is-EmptyLang!2896 r!15766)))))

(assert (=> b!1054259 (=> (not res!471469) (not e!669605))))

(assert (=> b!1054263 (= e!669610 call!75179)))

(declare-fun b!1054264 () Bool)

(declare-fun res!471471 () Bool)

(assert (=> b!1054264 (=> res!471471 e!669607)))

(assert (=> b!1054264 (= res!471471 call!75178)))

(assert (=> b!1054264 (= e!669610 e!669607)))

(assert (= (and d!299946 c!176332) b!1054258))

(assert (= (and d!299946 (not c!176332)) b!1054259))

(assert (= (and b!1054259 res!471469) b!1054260))

(assert (= (and b!1054260 c!176330) b!1054262))

(assert (= (and b!1054260 (not c!176330)) b!1054254))

(assert (= (and b!1054254 c!176333) b!1054261))

(assert (= (and b!1054254 (not c!176333)) b!1054257))

(assert (= (and b!1054261 (not res!471470)) b!1054256))

(assert (= (and b!1054257 c!176331) b!1054264))

(assert (= (and b!1054257 (not c!176331)) b!1054263))

(assert (= (and b!1054264 (not res!471471)) b!1054255))

(assert (= (or b!1054255 b!1054263) bm!75173))

(assert (= (or b!1054258 b!1054264) bm!75174))

(declare-fun m!1217997 () Bool)

(assert (=> b!1054256 m!1217997))

(declare-fun m!1217999 () Bool)

(assert (=> bm!75173 m!1217999))

(declare-fun m!1218001 () Bool)

(assert (=> b!1054261 m!1218001))

(assert (=> bm!75174 m!1217797))

(assert (=> b!1053949 d!299946))

(declare-fun b!1054265 () Bool)

(declare-fun e!669614 () Bool)

(assert (=> b!1054265 (= e!669614 (nullable!988 r!15766))))

(declare-fun b!1054266 () Bool)

(declare-fun res!471473 () Bool)

(declare-fun e!669615 () Bool)

(assert (=> b!1054266 (=> (not res!471473) (not e!669615))))

(assert (=> b!1054266 (= res!471473 (isEmpty!6522 (tail!1505 s!10566)))))

(declare-fun b!1054267 () Bool)

(declare-fun e!669613 () Bool)

(assert (=> b!1054267 (= e!669613 (not (= (head!1943 s!10566) (c!176269 r!15766))))))

(declare-fun b!1054268 () Bool)

(declare-fun e!669616 () Bool)

(declare-fun e!669617 () Bool)

(assert (=> b!1054268 (= e!669616 e!669617)))

(declare-fun res!471479 () Bool)

(assert (=> b!1054268 (=> (not res!471479) (not e!669617))))

(declare-fun lt!358770 () Bool)

(assert (=> b!1054268 (= res!471479 (not lt!358770))))

(declare-fun b!1054269 () Bool)

(assert (=> b!1054269 (= e!669614 (matchR!1432 (derivativeStep!788 r!15766 (head!1943 s!10566)) (tail!1505 s!10566)))))

(declare-fun bm!75175 () Bool)

(declare-fun call!75180 () Bool)

(assert (=> bm!75175 (= call!75180 (isEmpty!6522 s!10566))))

(declare-fun b!1054270 () Bool)

(declare-fun e!669612 () Bool)

(declare-fun e!669618 () Bool)

(assert (=> b!1054270 (= e!669612 e!669618)))

(declare-fun c!176336 () Bool)

(assert (=> b!1054270 (= c!176336 (is-EmptyLang!2896 r!15766))))

(declare-fun b!1054271 () Bool)

(assert (=> b!1054271 (= e!669618 (not lt!358770))))

(declare-fun d!299950 () Bool)

(assert (=> d!299950 e!669612))

(declare-fun c!176335 () Bool)

(assert (=> d!299950 (= c!176335 (is-EmptyExpr!2896 r!15766))))

(assert (=> d!299950 (= lt!358770 e!669614)))

(declare-fun c!176334 () Bool)

(assert (=> d!299950 (= c!176334 (isEmpty!6522 s!10566))))

(assert (=> d!299950 (validRegex!1365 r!15766)))

(assert (=> d!299950 (= (matchR!1432 r!15766 s!10566) lt!358770)))

(declare-fun b!1054272 () Bool)

(declare-fun res!471474 () Bool)

(assert (=> b!1054272 (=> res!471474 e!669616)))

(assert (=> b!1054272 (= res!471474 (not (is-ElementMatch!2896 r!15766)))))

(assert (=> b!1054272 (= e!669618 e!669616)))

(declare-fun b!1054273 () Bool)

(declare-fun res!471478 () Bool)

(assert (=> b!1054273 (=> res!471478 e!669616)))

(assert (=> b!1054273 (= res!471478 e!669615)))

(declare-fun res!471475 () Bool)

(assert (=> b!1054273 (=> (not res!471475) (not e!669615))))

(assert (=> b!1054273 (= res!471475 lt!358770)))

(declare-fun b!1054274 () Bool)

(assert (=> b!1054274 (= e!669615 (= (head!1943 s!10566) (c!176269 r!15766)))))

(declare-fun b!1054275 () Bool)

(assert (=> b!1054275 (= e!669612 (= lt!358770 call!75180))))

(declare-fun b!1054276 () Bool)

(declare-fun res!471472 () Bool)

(assert (=> b!1054276 (=> (not res!471472) (not e!669615))))

(assert (=> b!1054276 (= res!471472 (not call!75180))))

(declare-fun b!1054277 () Bool)

(assert (=> b!1054277 (= e!669617 e!669613)))

(declare-fun res!471476 () Bool)

(assert (=> b!1054277 (=> res!471476 e!669613)))

(assert (=> b!1054277 (= res!471476 call!75180)))

(declare-fun b!1054278 () Bool)

(declare-fun res!471477 () Bool)

(assert (=> b!1054278 (=> res!471477 e!669613)))

(assert (=> b!1054278 (= res!471477 (not (isEmpty!6522 (tail!1505 s!10566))))))

(assert (= (and d!299950 c!176334) b!1054265))

(assert (= (and d!299950 (not c!176334)) b!1054269))

(assert (= (and d!299950 c!176335) b!1054275))

(assert (= (and d!299950 (not c!176335)) b!1054270))

(assert (= (and b!1054270 c!176336) b!1054271))

(assert (= (and b!1054270 (not c!176336)) b!1054272))

(assert (= (and b!1054272 (not res!471474)) b!1054273))

(assert (= (and b!1054273 res!471475) b!1054276))

(assert (= (and b!1054276 res!471472) b!1054266))

(assert (= (and b!1054266 res!471473) b!1054274))

(assert (= (and b!1054273 (not res!471478)) b!1054268))

(assert (= (and b!1054268 res!471479) b!1054277))

(assert (= (and b!1054277 (not res!471476)) b!1054278))

(assert (= (and b!1054278 (not res!471477)) b!1054267))

(assert (= (or b!1054275 b!1054276 b!1054277) bm!75175))

(assert (=> d!299950 m!1217797))

(assert (=> d!299950 m!1217777))

(declare-fun m!1218003 () Bool)

(assert (=> b!1054265 m!1218003))

(assert (=> b!1054278 m!1217955))

(assert (=> b!1054278 m!1217955))

(assert (=> b!1054278 m!1217957))

(assert (=> b!1054267 m!1217959))

(assert (=> b!1054266 m!1217955))

(assert (=> b!1054266 m!1217955))

(assert (=> b!1054266 m!1217957))

(assert (=> bm!75175 m!1217797))

(assert (=> b!1054274 m!1217959))

(assert (=> b!1054269 m!1217959))

(assert (=> b!1054269 m!1217959))

(declare-fun m!1218005 () Bool)

(assert (=> b!1054269 m!1218005))

(assert (=> b!1054269 m!1217955))

(assert (=> b!1054269 m!1218005))

(assert (=> b!1054269 m!1217955))

(declare-fun m!1218007 () Bool)

(assert (=> b!1054269 m!1218007))

(assert (=> b!1053949 d!299950))

(declare-fun d!299952 () Bool)

(assert (=> d!299952 (= (matchR!1432 r!15766 s!10566) (matchRSpec!695 r!15766 s!10566))))

(declare-fun lt!358771 () Unit!15467)

(assert (=> d!299952 (= lt!358771 (choose!6697 r!15766 s!10566))))

(assert (=> d!299952 (validRegex!1365 r!15766)))

(assert (=> d!299952 (= (mainMatchTheorem!695 r!15766 s!10566) lt!358771)))

(declare-fun bs!251473 () Bool)

(assert (= bs!251473 d!299952))

(assert (=> bs!251473 m!1217781))

(assert (=> bs!251473 m!1217779))

(declare-fun m!1218009 () Bool)

(assert (=> bs!251473 m!1218009))

(assert (=> bs!251473 m!1217777))

(assert (=> b!1053949 d!299952))

(declare-fun d!299954 () Bool)

(assert (=> d!299954 (= (isEmpty!6522 s!10566) (is-Nil!10110 s!10566))))

(assert (=> b!1053942 d!299954))

(declare-fun d!299956 () Bool)

(assert (=> d!299956 (= (isDefined!2063 (findConcatSeparation!527 (regOne!6304 r!15766) (regTwo!6304 r!15766) Nil!10110 s!10566 s!10566)) (not (isEmpty!6524 (findConcatSeparation!527 (regOne!6304 r!15766) (regTwo!6304 r!15766) Nil!10110 s!10566 s!10566))))))

(declare-fun bs!251474 () Bool)

(assert (= bs!251474 d!299956))

(assert (=> bs!251474 m!1217791))

(declare-fun m!1218011 () Bool)

(assert (=> bs!251474 m!1218011))

(assert (=> b!1053942 d!299956))

(declare-fun d!299958 () Bool)

(assert (=> d!299958 (= (Exists!623 lambda!38032) (choose!6700 lambda!38032))))

(declare-fun bs!251475 () Bool)

(assert (= bs!251475 d!299958))

(declare-fun m!1218013 () Bool)

(assert (=> bs!251475 m!1218013))

(assert (=> b!1053942 d!299958))

(declare-fun bs!251476 () Bool)

(declare-fun d!299960 () Bool)

(assert (= bs!251476 (and d!299960 b!1053942)))

(declare-fun lambda!38077 () Int)

(assert (=> bs!251476 (= lambda!38077 lambda!38031)))

(declare-fun bs!251477 () Bool)

(assert (= bs!251477 (and d!299960 b!1054092)))

(assert (=> bs!251477 (not (= lambda!38077 lambda!38064))))

(declare-fun bs!251478 () Bool)

(assert (= bs!251478 (and d!299960 d!299924)))

(assert (=> bs!251478 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38077 lambda!38058))))

(declare-fun bs!251479 () Bool)

(assert (= bs!251479 (and d!299960 b!1054255)))

(assert (=> bs!251479 (not (= lambda!38077 lambda!38075))))

(declare-fun bs!251480 () Bool)

(assert (= bs!251480 (and d!299960 d!299930)))

(assert (=> bs!251480 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38077 lambda!38068))))

(declare-fun bs!251481 () Bool)

(assert (= bs!251481 (and d!299960 b!1054100)))

(assert (=> bs!251481 (not (= lambda!38077 lambda!38065))))

(assert (=> bs!251478 (not (= lambda!38077 lambda!38059))))

(assert (=> bs!251476 (not (= lambda!38077 lambda!38032))))

(declare-fun bs!251482 () Bool)

(assert (= bs!251482 (and d!299960 b!1053950)))

(assert (=> bs!251482 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38077 lambda!38033))))

(assert (=> bs!251482 (not (= lambda!38077 lambda!38034))))

(declare-fun bs!251483 () Bool)

(assert (= bs!251483 (and d!299960 b!1054263)))

(assert (=> bs!251483 (not (= lambda!38077 lambda!38076))))

(assert (=> d!299960 true))

(assert (=> d!299960 true))

(assert (=> d!299960 true))

(assert (=> d!299960 (= (isDefined!2063 (findConcatSeparation!527 (regOne!6304 r!15766) (regTwo!6304 r!15766) Nil!10110 s!10566 s!10566)) (Exists!623 lambda!38077))))

(declare-fun lt!358772 () Unit!15467)

(assert (=> d!299960 (= lt!358772 (choose!6699 (regOne!6304 r!15766) (regTwo!6304 r!15766) s!10566))))

(assert (=> d!299960 (validRegex!1365 (regOne!6304 r!15766))))

(assert (=> d!299960 (= (lemmaFindConcatSeparationEquivalentToExists!527 (regOne!6304 r!15766) (regTwo!6304 r!15766) s!10566) lt!358772)))

(declare-fun bs!251484 () Bool)

(assert (= bs!251484 d!299960))

(assert (=> bs!251484 m!1217751))

(assert (=> bs!251484 m!1217791))

(assert (=> bs!251484 m!1217793))

(declare-fun m!1218015 () Bool)

(assert (=> bs!251484 m!1218015))

(declare-fun m!1218017 () Bool)

(assert (=> bs!251484 m!1218017))

(assert (=> bs!251484 m!1217791))

(assert (=> b!1053942 d!299960))

(declare-fun d!299962 () Bool)

(declare-fun e!669634 () Bool)

(assert (=> d!299962 e!669634))

(declare-fun res!471492 () Bool)

(assert (=> d!299962 (=> res!471492 e!669634)))

(declare-fun e!669635 () Bool)

(assert (=> d!299962 (= res!471492 e!669635)))

(declare-fun res!471494 () Bool)

(assert (=> d!299962 (=> (not res!471494) (not e!669635))))

(declare-fun lt!358774 () Option!2421)

(assert (=> d!299962 (= res!471494 (isDefined!2063 lt!358774))))

(declare-fun e!669636 () Option!2421)

(assert (=> d!299962 (= lt!358774 e!669636)))

(declare-fun c!176341 () Bool)

(declare-fun e!669637 () Bool)

(assert (=> d!299962 (= c!176341 e!669637)))

(declare-fun res!471491 () Bool)

(assert (=> d!299962 (=> (not res!471491) (not e!669637))))

(assert (=> d!299962 (= res!471491 (matchR!1432 (regOne!6304 r!15766) Nil!10110))))

(assert (=> d!299962 (validRegex!1365 (regOne!6304 r!15766))))

(assert (=> d!299962 (= (findConcatSeparation!527 (regOne!6304 r!15766) (regTwo!6304 r!15766) Nil!10110 s!10566 s!10566) lt!358774)))

(declare-fun b!1054297 () Bool)

(declare-fun res!471490 () Bool)

(assert (=> b!1054297 (=> (not res!471490) (not e!669635))))

(assert (=> b!1054297 (= res!471490 (matchR!1432 (regTwo!6304 r!15766) (_2!6605 (get!3622 lt!358774))))))

(declare-fun b!1054298 () Bool)

(declare-fun res!471493 () Bool)

(assert (=> b!1054298 (=> (not res!471493) (not e!669635))))

(assert (=> b!1054298 (= res!471493 (matchR!1432 (regOne!6304 r!15766) (_1!6605 (get!3622 lt!358774))))))

(declare-fun b!1054299 () Bool)

(assert (=> b!1054299 (= e!669636 (Some!2420 (tuple2!11559 Nil!10110 s!10566)))))

(declare-fun b!1054300 () Bool)

(assert (=> b!1054300 (= e!669634 (not (isDefined!2063 lt!358774)))))

(declare-fun b!1054301 () Bool)

(declare-fun e!669633 () Option!2421)

(assert (=> b!1054301 (= e!669636 e!669633)))

(declare-fun c!176342 () Bool)

(assert (=> b!1054301 (= c!176342 (is-Nil!10110 s!10566))))

(declare-fun b!1054302 () Bool)

(assert (=> b!1054302 (= e!669635 (= (++!2796 (_1!6605 (get!3622 lt!358774)) (_2!6605 (get!3622 lt!358774))) s!10566))))

(declare-fun b!1054303 () Bool)

(declare-fun lt!358773 () Unit!15467)

(declare-fun lt!358775 () Unit!15467)

(assert (=> b!1054303 (= lt!358773 lt!358775)))

(assert (=> b!1054303 (= (++!2796 (++!2796 Nil!10110 (Cons!10110 (h!15511 s!10566) Nil!10110)) (t!101172 s!10566)) s!10566)))

(assert (=> b!1054303 (= lt!358775 (lemmaMoveElementToOtherListKeepsConcatEq!389 Nil!10110 (h!15511 s!10566) (t!101172 s!10566) s!10566))))

(assert (=> b!1054303 (= e!669633 (findConcatSeparation!527 (regOne!6304 r!15766) (regTwo!6304 r!15766) (++!2796 Nil!10110 (Cons!10110 (h!15511 s!10566) Nil!10110)) (t!101172 s!10566) s!10566))))

(declare-fun b!1054304 () Bool)

(assert (=> b!1054304 (= e!669633 None!2420)))

(declare-fun b!1054305 () Bool)

(assert (=> b!1054305 (= e!669637 (matchR!1432 (regTwo!6304 r!15766) s!10566))))

(assert (= (and d!299962 res!471491) b!1054305))

(assert (= (and d!299962 c!176341) b!1054299))

(assert (= (and d!299962 (not c!176341)) b!1054301))

(assert (= (and b!1054301 c!176342) b!1054304))

(assert (= (and b!1054301 (not c!176342)) b!1054303))

(assert (= (and d!299962 res!471494) b!1054298))

(assert (= (and b!1054298 res!471493) b!1054297))

(assert (= (and b!1054297 res!471490) b!1054302))

(assert (= (and d!299962 (not res!471492)) b!1054300))

(declare-fun m!1218019 () Bool)

(assert (=> b!1054297 m!1218019))

(declare-fun m!1218021 () Bool)

(assert (=> b!1054297 m!1218021))

(declare-fun m!1218023 () Bool)

(assert (=> b!1054300 m!1218023))

(declare-fun m!1218025 () Bool)

(assert (=> b!1054305 m!1218025))

(assert (=> d!299962 m!1218023))

(declare-fun m!1218027 () Bool)

(assert (=> d!299962 m!1218027))

(assert (=> d!299962 m!1217751))

(assert (=> b!1054303 m!1217893))

(assert (=> b!1054303 m!1217893))

(assert (=> b!1054303 m!1217895))

(assert (=> b!1054303 m!1217897))

(assert (=> b!1054303 m!1217893))

(declare-fun m!1218029 () Bool)

(assert (=> b!1054303 m!1218029))

(assert (=> b!1054302 m!1218019))

(declare-fun m!1218031 () Bool)

(assert (=> b!1054302 m!1218031))

(assert (=> b!1054298 m!1218019))

(declare-fun m!1218033 () Bool)

(assert (=> b!1054298 m!1218033))

(assert (=> b!1053942 d!299962))

(declare-fun bs!251485 () Bool)

(declare-fun d!299964 () Bool)

(assert (= bs!251485 (and d!299964 b!1053942)))

(declare-fun lambda!38078 () Int)

(assert (=> bs!251485 (= lambda!38078 lambda!38031)))

(declare-fun bs!251486 () Bool)

(assert (= bs!251486 (and d!299964 d!299960)))

(assert (=> bs!251486 (= lambda!38078 lambda!38077)))

(declare-fun bs!251487 () Bool)

(assert (= bs!251487 (and d!299964 b!1054092)))

(assert (=> bs!251487 (not (= lambda!38078 lambda!38064))))

(declare-fun bs!251488 () Bool)

(assert (= bs!251488 (and d!299964 d!299924)))

(assert (=> bs!251488 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38078 lambda!38058))))

(declare-fun bs!251489 () Bool)

(assert (= bs!251489 (and d!299964 b!1054255)))

(assert (=> bs!251489 (not (= lambda!38078 lambda!38075))))

(declare-fun bs!251490 () Bool)

(assert (= bs!251490 (and d!299964 d!299930)))

(assert (=> bs!251490 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38078 lambda!38068))))

(declare-fun bs!251491 () Bool)

(assert (= bs!251491 (and d!299964 b!1054100)))

(assert (=> bs!251491 (not (= lambda!38078 lambda!38065))))

(assert (=> bs!251488 (not (= lambda!38078 lambda!38059))))

(assert (=> bs!251485 (not (= lambda!38078 lambda!38032))))

(declare-fun bs!251492 () Bool)

(assert (= bs!251492 (and d!299964 b!1053950)))

(assert (=> bs!251492 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38078 lambda!38033))))

(assert (=> bs!251492 (not (= lambda!38078 lambda!38034))))

(declare-fun bs!251493 () Bool)

(assert (= bs!251493 (and d!299964 b!1054263)))

(assert (=> bs!251493 (not (= lambda!38078 lambda!38076))))

(assert (=> d!299964 true))

(assert (=> d!299964 true))

(assert (=> d!299964 true))

(declare-fun lambda!38079 () Int)

(assert (=> bs!251485 (not (= lambda!38079 lambda!38031))))

(assert (=> bs!251486 (not (= lambda!38079 lambda!38077))))

(assert (=> bs!251487 (not (= lambda!38079 lambda!38064))))

(assert (=> bs!251488 (not (= lambda!38079 lambda!38058))))

(assert (=> bs!251489 (not (= lambda!38079 lambda!38075))))

(declare-fun bs!251494 () Bool)

(assert (= bs!251494 d!299964))

(assert (=> bs!251494 (not (= lambda!38079 lambda!38078))))

(assert (=> bs!251490 (not (= lambda!38079 lambda!38068))))

(assert (=> bs!251491 (= (and (= (regOne!6304 r!15766) (regOne!6304 lt!358670)) (= (regTwo!6304 r!15766) (regTwo!6304 lt!358670))) (= lambda!38079 lambda!38065))))

(assert (=> bs!251488 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38079 lambda!38059))))

(assert (=> bs!251485 (= lambda!38079 lambda!38032)))

(assert (=> bs!251492 (not (= lambda!38079 lambda!38033))))

(assert (=> bs!251492 (= (and (= (regOne!6304 r!15766) lt!358669) (= (regTwo!6304 r!15766) lt!358678)) (= lambda!38079 lambda!38034))))

(assert (=> bs!251493 (= lambda!38079 lambda!38076)))

(assert (=> d!299964 true))

(assert (=> d!299964 true))

(assert (=> d!299964 true))

(assert (=> d!299964 (= (Exists!623 lambda!38078) (Exists!623 lambda!38079))))

(declare-fun lt!358776 () Unit!15467)

(assert (=> d!299964 (= lt!358776 (choose!6698 (regOne!6304 r!15766) (regTwo!6304 r!15766) s!10566))))

(assert (=> d!299964 (validRegex!1365 (regOne!6304 r!15766))))

(assert (=> d!299964 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!311 (regOne!6304 r!15766) (regTwo!6304 r!15766) s!10566) lt!358776)))

(declare-fun m!1218035 () Bool)

(assert (=> bs!251494 m!1218035))

(declare-fun m!1218037 () Bool)

(assert (=> bs!251494 m!1218037))

(declare-fun m!1218039 () Bool)

(assert (=> bs!251494 m!1218039))

(assert (=> bs!251494 m!1217751))

(assert (=> b!1053942 d!299964))

(declare-fun d!299966 () Bool)

(assert (=> d!299966 (= (Exists!623 lambda!38031) (choose!6700 lambda!38031))))

(declare-fun bs!251495 () Bool)

(assert (= bs!251495 d!299966))

(declare-fun m!1218041 () Bool)

(assert (=> bs!251495 m!1218041))

(assert (=> b!1053942 d!299966))

(declare-fun b!1054306 () Bool)

(declare-fun e!669639 () Bool)

(declare-fun e!669643 () Bool)

(assert (=> b!1054306 (= e!669639 e!669643)))

(declare-fun c!176343 () Bool)

(assert (=> b!1054306 (= c!176343 (is-Union!2896 (regTwo!6304 r!15766)))))

(declare-fun b!1054307 () Bool)

(declare-fun e!669642 () Bool)

(declare-fun call!75188 () Bool)

(assert (=> b!1054307 (= e!669642 call!75188)))

(declare-fun b!1054308 () Bool)

(declare-fun e!669641 () Bool)

(declare-fun call!75187 () Bool)

(assert (=> b!1054308 (= e!669641 call!75187)))

(declare-fun c!176344 () Bool)

(declare-fun bm!75182 () Bool)

(assert (=> bm!75182 (= call!75187 (validRegex!1365 (ite c!176344 (reg!3225 (regTwo!6304 r!15766)) (ite c!176343 (regOne!6305 (regTwo!6304 r!15766)) (regOne!6304 (regTwo!6304 r!15766))))))))

(declare-fun b!1054309 () Bool)

(declare-fun res!471497 () Bool)

(assert (=> b!1054309 (=> (not res!471497) (not e!669642))))

(declare-fun call!75189 () Bool)

(assert (=> b!1054309 (= res!471497 call!75189)))

(assert (=> b!1054309 (= e!669643 e!669642)))

(declare-fun bm!75183 () Bool)

(assert (=> bm!75183 (= call!75188 (validRegex!1365 (ite c!176343 (regTwo!6305 (regTwo!6304 r!15766)) (regTwo!6304 (regTwo!6304 r!15766)))))))

(declare-fun b!1054310 () Bool)

(declare-fun e!669640 () Bool)

(assert (=> b!1054310 (= e!669640 call!75188)))

(declare-fun b!1054311 () Bool)

(declare-fun e!669644 () Bool)

(assert (=> b!1054311 (= e!669644 e!669640)))

(declare-fun res!471498 () Bool)

(assert (=> b!1054311 (=> (not res!471498) (not e!669640))))

(assert (=> b!1054311 (= res!471498 call!75189)))

(declare-fun d!299968 () Bool)

(declare-fun res!471495 () Bool)

(declare-fun e!669638 () Bool)

(assert (=> d!299968 (=> res!471495 e!669638)))

(assert (=> d!299968 (= res!471495 (is-ElementMatch!2896 (regTwo!6304 r!15766)))))

(assert (=> d!299968 (= (validRegex!1365 (regTwo!6304 r!15766)) e!669638)))

(declare-fun b!1054312 () Bool)

(declare-fun res!471496 () Bool)

(assert (=> b!1054312 (=> res!471496 e!669644)))

(assert (=> b!1054312 (= res!471496 (not (is-Concat!4729 (regTwo!6304 r!15766))))))

(assert (=> b!1054312 (= e!669643 e!669644)))

(declare-fun bm!75184 () Bool)

(assert (=> bm!75184 (= call!75189 call!75187)))

(declare-fun b!1054313 () Bool)

(assert (=> b!1054313 (= e!669639 e!669641)))

(declare-fun res!471499 () Bool)

(assert (=> b!1054313 (= res!471499 (not (nullable!988 (reg!3225 (regTwo!6304 r!15766)))))))

(assert (=> b!1054313 (=> (not res!471499) (not e!669641))))

(declare-fun b!1054314 () Bool)

(assert (=> b!1054314 (= e!669638 e!669639)))

(assert (=> b!1054314 (= c!176344 (is-Star!2896 (regTwo!6304 r!15766)))))

(assert (= (and d!299968 (not res!471495)) b!1054314))

(assert (= (and b!1054314 c!176344) b!1054313))

(assert (= (and b!1054314 (not c!176344)) b!1054306))

(assert (= (and b!1054313 res!471499) b!1054308))

(assert (= (and b!1054306 c!176343) b!1054309))

(assert (= (and b!1054306 (not c!176343)) b!1054312))

(assert (= (and b!1054309 res!471497) b!1054307))

(assert (= (and b!1054312 (not res!471496)) b!1054311))

(assert (= (and b!1054311 res!471498) b!1054310))

(assert (= (or b!1054307 b!1054310) bm!75183))

(assert (= (or b!1054309 b!1054311) bm!75184))

(assert (= (or b!1054308 bm!75184) bm!75182))

(declare-fun m!1218043 () Bool)

(assert (=> bm!75182 m!1218043))

(declare-fun m!1218045 () Bool)

(assert (=> bm!75183 m!1218045))

(declare-fun m!1218047 () Bool)

(assert (=> b!1054313 m!1218047))

(assert (=> b!1053948 d!299968))

(declare-fun b!1054315 () Bool)

(declare-fun e!669647 () Bool)

(assert (=> b!1054315 (= e!669647 (nullable!988 (regOne!6304 r!15766)))))

(declare-fun b!1054316 () Bool)

(declare-fun res!471501 () Bool)

(declare-fun e!669648 () Bool)

(assert (=> b!1054316 (=> (not res!471501) (not e!669648))))

(assert (=> b!1054316 (= res!471501 (isEmpty!6522 (tail!1505 (_1!6605 lt!358665))))))

(declare-fun b!1054317 () Bool)

(declare-fun e!669646 () Bool)

(assert (=> b!1054317 (= e!669646 (not (= (head!1943 (_1!6605 lt!358665)) (c!176269 (regOne!6304 r!15766)))))))

(declare-fun b!1054318 () Bool)

(declare-fun e!669649 () Bool)

(declare-fun e!669650 () Bool)

(assert (=> b!1054318 (= e!669649 e!669650)))

(declare-fun res!471507 () Bool)

(assert (=> b!1054318 (=> (not res!471507) (not e!669650))))

(declare-fun lt!358777 () Bool)

(assert (=> b!1054318 (= res!471507 (not lt!358777))))

(declare-fun b!1054319 () Bool)

(assert (=> b!1054319 (= e!669647 (matchR!1432 (derivativeStep!788 (regOne!6304 r!15766) (head!1943 (_1!6605 lt!358665))) (tail!1505 (_1!6605 lt!358665))))))

(declare-fun bm!75185 () Bool)

(declare-fun call!75190 () Bool)

(assert (=> bm!75185 (= call!75190 (isEmpty!6522 (_1!6605 lt!358665)))))

(declare-fun b!1054320 () Bool)

(declare-fun e!669645 () Bool)

(declare-fun e!669651 () Bool)

(assert (=> b!1054320 (= e!669645 e!669651)))

(declare-fun c!176347 () Bool)

(assert (=> b!1054320 (= c!176347 (is-EmptyLang!2896 (regOne!6304 r!15766)))))

(declare-fun b!1054321 () Bool)

(assert (=> b!1054321 (= e!669651 (not lt!358777))))

(declare-fun d!299970 () Bool)

(assert (=> d!299970 e!669645))

(declare-fun c!176346 () Bool)

(assert (=> d!299970 (= c!176346 (is-EmptyExpr!2896 (regOne!6304 r!15766)))))

(assert (=> d!299970 (= lt!358777 e!669647)))

(declare-fun c!176345 () Bool)

(assert (=> d!299970 (= c!176345 (isEmpty!6522 (_1!6605 lt!358665)))))

(assert (=> d!299970 (validRegex!1365 (regOne!6304 r!15766))))

(assert (=> d!299970 (= (matchR!1432 (regOne!6304 r!15766) (_1!6605 lt!358665)) lt!358777)))

(declare-fun b!1054322 () Bool)

(declare-fun res!471502 () Bool)

(assert (=> b!1054322 (=> res!471502 e!669649)))

(assert (=> b!1054322 (= res!471502 (not (is-ElementMatch!2896 (regOne!6304 r!15766))))))

(assert (=> b!1054322 (= e!669651 e!669649)))

(declare-fun b!1054323 () Bool)

(declare-fun res!471506 () Bool)

(assert (=> b!1054323 (=> res!471506 e!669649)))

(assert (=> b!1054323 (= res!471506 e!669648)))

(declare-fun res!471503 () Bool)

(assert (=> b!1054323 (=> (not res!471503) (not e!669648))))

(assert (=> b!1054323 (= res!471503 lt!358777)))

(declare-fun b!1054324 () Bool)

(assert (=> b!1054324 (= e!669648 (= (head!1943 (_1!6605 lt!358665)) (c!176269 (regOne!6304 r!15766))))))

(declare-fun b!1054325 () Bool)

(assert (=> b!1054325 (= e!669645 (= lt!358777 call!75190))))

(declare-fun b!1054326 () Bool)

(declare-fun res!471500 () Bool)

(assert (=> b!1054326 (=> (not res!471500) (not e!669648))))

(assert (=> b!1054326 (= res!471500 (not call!75190))))

(declare-fun b!1054327 () Bool)

(assert (=> b!1054327 (= e!669650 e!669646)))

(declare-fun res!471504 () Bool)

(assert (=> b!1054327 (=> res!471504 e!669646)))

(assert (=> b!1054327 (= res!471504 call!75190)))

(declare-fun b!1054328 () Bool)

(declare-fun res!471505 () Bool)

(assert (=> b!1054328 (=> res!471505 e!669646)))

(assert (=> b!1054328 (= res!471505 (not (isEmpty!6522 (tail!1505 (_1!6605 lt!358665)))))))

(assert (= (and d!299970 c!176345) b!1054315))

(assert (= (and d!299970 (not c!176345)) b!1054319))

(assert (= (and d!299970 c!176346) b!1054325))

(assert (= (and d!299970 (not c!176346)) b!1054320))

(assert (= (and b!1054320 c!176347) b!1054321))

(assert (= (and b!1054320 (not c!176347)) b!1054322))

(assert (= (and b!1054322 (not res!471502)) b!1054323))

(assert (= (and b!1054323 res!471503) b!1054326))

(assert (= (and b!1054326 res!471500) b!1054316))

(assert (= (and b!1054316 res!471501) b!1054324))

(assert (= (and b!1054323 (not res!471506)) b!1054318))

(assert (= (and b!1054318 res!471507) b!1054327))

(assert (= (and b!1054327 (not res!471504)) b!1054328))

(assert (= (and b!1054328 (not res!471505)) b!1054317))

(assert (= (or b!1054325 b!1054326 b!1054327) bm!75185))

(declare-fun m!1218049 () Bool)

(assert (=> d!299970 m!1218049))

(assert (=> d!299970 m!1217751))

(assert (=> b!1054315 m!1217981))

(declare-fun m!1218051 () Bool)

(assert (=> b!1054328 m!1218051))

(assert (=> b!1054328 m!1218051))

(declare-fun m!1218053 () Bool)

(assert (=> b!1054328 m!1218053))

(declare-fun m!1218055 () Bool)

(assert (=> b!1054317 m!1218055))

(assert (=> b!1054316 m!1218051))

(assert (=> b!1054316 m!1218051))

(assert (=> b!1054316 m!1218053))

(assert (=> bm!75185 m!1218049))

(assert (=> b!1054324 m!1218055))

(assert (=> b!1054319 m!1218055))

(assert (=> b!1054319 m!1218055))

(declare-fun m!1218057 () Bool)

(assert (=> b!1054319 m!1218057))

(assert (=> b!1054319 m!1218051))

(assert (=> b!1054319 m!1218057))

(assert (=> b!1054319 m!1218051))

(declare-fun m!1218059 () Bool)

(assert (=> b!1054319 m!1218059))

(assert (=> b!1053947 d!299970))

(declare-fun b!1054338 () Bool)

(declare-fun e!669661 () Bool)

(assert (=> b!1054338 (= e!669661 (nullable!988 lt!358669))))

(declare-fun b!1054339 () Bool)

(declare-fun res!471514 () Bool)

(declare-fun e!669662 () Bool)

(assert (=> b!1054339 (=> (not res!471514) (not e!669662))))

(assert (=> b!1054339 (= res!471514 (isEmpty!6522 (tail!1505 (_1!6605 lt!358665))))))

(declare-fun b!1054340 () Bool)

(declare-fun e!669660 () Bool)

(assert (=> b!1054340 (= e!669660 (not (= (head!1943 (_1!6605 lt!358665)) (c!176269 lt!358669))))))

(declare-fun b!1054341 () Bool)

(declare-fun e!669663 () Bool)

(declare-fun e!669664 () Bool)

(assert (=> b!1054341 (= e!669663 e!669664)))

(declare-fun res!471520 () Bool)

(assert (=> b!1054341 (=> (not res!471520) (not e!669664))))

(declare-fun lt!358778 () Bool)

(assert (=> b!1054341 (= res!471520 (not lt!358778))))

(declare-fun b!1054342 () Bool)

(assert (=> b!1054342 (= e!669661 (matchR!1432 (derivativeStep!788 lt!358669 (head!1943 (_1!6605 lt!358665))) (tail!1505 (_1!6605 lt!358665))))))

(declare-fun bm!75189 () Bool)

(declare-fun call!75194 () Bool)

(assert (=> bm!75189 (= call!75194 (isEmpty!6522 (_1!6605 lt!358665)))))

(declare-fun b!1054343 () Bool)

(declare-fun e!669659 () Bool)

(declare-fun e!669665 () Bool)

(assert (=> b!1054343 (= e!669659 e!669665)))

(declare-fun c!176352 () Bool)

(assert (=> b!1054343 (= c!176352 (is-EmptyLang!2896 lt!358669))))

(declare-fun b!1054344 () Bool)

(assert (=> b!1054344 (= e!669665 (not lt!358778))))

(declare-fun d!299972 () Bool)

(assert (=> d!299972 e!669659))

(declare-fun c!176351 () Bool)

(assert (=> d!299972 (= c!176351 (is-EmptyExpr!2896 lt!358669))))

(assert (=> d!299972 (= lt!358778 e!669661)))

(declare-fun c!176350 () Bool)

(assert (=> d!299972 (= c!176350 (isEmpty!6522 (_1!6605 lt!358665)))))

(assert (=> d!299972 (validRegex!1365 lt!358669)))

(assert (=> d!299972 (= (matchR!1432 lt!358669 (_1!6605 lt!358665)) lt!358778)))

(declare-fun b!1054345 () Bool)

(declare-fun res!471515 () Bool)

(assert (=> b!1054345 (=> res!471515 e!669663)))

(assert (=> b!1054345 (= res!471515 (not (is-ElementMatch!2896 lt!358669)))))

(assert (=> b!1054345 (= e!669665 e!669663)))

(declare-fun b!1054346 () Bool)

(declare-fun res!471519 () Bool)

(assert (=> b!1054346 (=> res!471519 e!669663)))

(assert (=> b!1054346 (= res!471519 e!669662)))

(declare-fun res!471516 () Bool)

(assert (=> b!1054346 (=> (not res!471516) (not e!669662))))

(assert (=> b!1054346 (= res!471516 lt!358778)))

(declare-fun b!1054347 () Bool)

(assert (=> b!1054347 (= e!669662 (= (head!1943 (_1!6605 lt!358665)) (c!176269 lt!358669)))))

(declare-fun b!1054348 () Bool)

(assert (=> b!1054348 (= e!669659 (= lt!358778 call!75194))))

(declare-fun b!1054349 () Bool)

(declare-fun res!471513 () Bool)

(assert (=> b!1054349 (=> (not res!471513) (not e!669662))))

(assert (=> b!1054349 (= res!471513 (not call!75194))))

(declare-fun b!1054350 () Bool)

(assert (=> b!1054350 (= e!669664 e!669660)))

(declare-fun res!471517 () Bool)

(assert (=> b!1054350 (=> res!471517 e!669660)))

(assert (=> b!1054350 (= res!471517 call!75194)))

(declare-fun b!1054351 () Bool)

(declare-fun res!471518 () Bool)

(assert (=> b!1054351 (=> res!471518 e!669660)))

(assert (=> b!1054351 (= res!471518 (not (isEmpty!6522 (tail!1505 (_1!6605 lt!358665)))))))

(assert (= (and d!299972 c!176350) b!1054338))

(assert (= (and d!299972 (not c!176350)) b!1054342))

(assert (= (and d!299972 c!176351) b!1054348))

(assert (= (and d!299972 (not c!176351)) b!1054343))

(assert (= (and b!1054343 c!176352) b!1054344))

(assert (= (and b!1054343 (not c!176352)) b!1054345))

(assert (= (and b!1054345 (not res!471515)) b!1054346))

(assert (= (and b!1054346 res!471516) b!1054349))

(assert (= (and b!1054349 res!471513) b!1054339))

(assert (= (and b!1054339 res!471514) b!1054347))

(assert (= (and b!1054346 (not res!471519)) b!1054341))

(assert (= (and b!1054341 res!471520) b!1054350))

(assert (= (and b!1054350 (not res!471517)) b!1054351))

(assert (= (and b!1054351 (not res!471518)) b!1054340))

(assert (= (or b!1054348 b!1054349 b!1054350) bm!75189))

(assert (=> d!299972 m!1218049))

(assert (=> d!299972 m!1217891))

(declare-fun m!1218067 () Bool)

(assert (=> b!1054338 m!1218067))

(assert (=> b!1054351 m!1218051))

(assert (=> b!1054351 m!1218051))

(assert (=> b!1054351 m!1218053))

(assert (=> b!1054340 m!1218055))

(assert (=> b!1054339 m!1218051))

(assert (=> b!1054339 m!1218051))

(assert (=> b!1054339 m!1218053))

(assert (=> bm!75189 m!1218049))

(assert (=> b!1054347 m!1218055))

(assert (=> b!1054342 m!1218055))

(assert (=> b!1054342 m!1218055))

(declare-fun m!1218069 () Bool)

(assert (=> b!1054342 m!1218069))

(assert (=> b!1054342 m!1218051))

(assert (=> b!1054342 m!1218069))

(assert (=> b!1054342 m!1218051))

(declare-fun m!1218071 () Bool)

(assert (=> b!1054342 m!1218071))

(assert (=> b!1053947 d!299972))

(declare-fun d!299976 () Bool)

(assert (=> d!299976 (= (matchR!1432 (regTwo!6304 r!15766) (_2!6605 lt!358665)) (matchR!1432 (removeUselessConcat!445 (regTwo!6304 r!15766)) (_2!6605 lt!358665)))))

(declare-fun lt!358781 () Unit!15467)

(declare-fun choose!6705 (Regex!2896 List!10126) Unit!15467)

(assert (=> d!299976 (= lt!358781 (choose!6705 (regTwo!6304 r!15766) (_2!6605 lt!358665)))))

(assert (=> d!299976 (validRegex!1365 (regTwo!6304 r!15766))))

(assert (=> d!299976 (= (lemmaRemoveUselessConcatSound!269 (regTwo!6304 r!15766) (_2!6605 lt!358665)) lt!358781)))

(declare-fun bs!251496 () Bool)

(assert (= bs!251496 d!299976))

(assert (=> bs!251496 m!1217803))

(assert (=> bs!251496 m!1217785))

(assert (=> bs!251496 m!1217745))

(assert (=> bs!251496 m!1217803))

(declare-fun m!1218073 () Bool)

(assert (=> bs!251496 m!1218073))

(declare-fun m!1218075 () Bool)

(assert (=> bs!251496 m!1218075))

(assert (=> b!1053947 d!299976))

(declare-fun d!299980 () Bool)

(assert (=> d!299980 (= (matchR!1432 (regOne!6304 r!15766) (_1!6605 lt!358665)) (matchR!1432 (removeUselessConcat!445 (regOne!6304 r!15766)) (_1!6605 lt!358665)))))

(declare-fun lt!358782 () Unit!15467)

(assert (=> d!299980 (= lt!358782 (choose!6705 (regOne!6304 r!15766) (_1!6605 lt!358665)))))

(assert (=> d!299980 (validRegex!1365 (regOne!6304 r!15766))))

(assert (=> d!299980 (= (lemmaRemoveUselessConcatSound!269 (regOne!6304 r!15766) (_1!6605 lt!358665)) lt!358782)))

(declare-fun bs!251497 () Bool)

(assert (= bs!251497 d!299980))

(assert (=> bs!251497 m!1217805))

(assert (=> bs!251497 m!1217751))

(assert (=> bs!251497 m!1217759))

(assert (=> bs!251497 m!1217805))

(declare-fun m!1218077 () Bool)

(assert (=> bs!251497 m!1218077))

(declare-fun m!1218079 () Bool)

(assert (=> bs!251497 m!1218079))

(assert (=> b!1053947 d!299980))

(declare-fun b!1054352 () Bool)

(declare-fun e!669668 () Bool)

(assert (=> b!1054352 (= e!669668 (nullable!988 (regTwo!6304 r!15766)))))

(declare-fun b!1054353 () Bool)

(declare-fun res!471522 () Bool)

(declare-fun e!669669 () Bool)

(assert (=> b!1054353 (=> (not res!471522) (not e!669669))))

(assert (=> b!1054353 (= res!471522 (isEmpty!6522 (tail!1505 (_2!6605 lt!358665))))))

(declare-fun b!1054354 () Bool)

(declare-fun e!669667 () Bool)

(assert (=> b!1054354 (= e!669667 (not (= (head!1943 (_2!6605 lt!358665)) (c!176269 (regTwo!6304 r!15766)))))))

(declare-fun b!1054355 () Bool)

(declare-fun e!669670 () Bool)

(declare-fun e!669671 () Bool)

(assert (=> b!1054355 (= e!669670 e!669671)))

(declare-fun res!471528 () Bool)

(assert (=> b!1054355 (=> (not res!471528) (not e!669671))))

(declare-fun lt!358783 () Bool)

(assert (=> b!1054355 (= res!471528 (not lt!358783))))

(declare-fun b!1054356 () Bool)

(assert (=> b!1054356 (= e!669668 (matchR!1432 (derivativeStep!788 (regTwo!6304 r!15766) (head!1943 (_2!6605 lt!358665))) (tail!1505 (_2!6605 lt!358665))))))

(declare-fun bm!75190 () Bool)

(declare-fun call!75195 () Bool)

(assert (=> bm!75190 (= call!75195 (isEmpty!6522 (_2!6605 lt!358665)))))

(declare-fun b!1054357 () Bool)

(declare-fun e!669666 () Bool)

(declare-fun e!669672 () Bool)

(assert (=> b!1054357 (= e!669666 e!669672)))

(declare-fun c!176355 () Bool)

(assert (=> b!1054357 (= c!176355 (is-EmptyLang!2896 (regTwo!6304 r!15766)))))

(declare-fun b!1054358 () Bool)

(assert (=> b!1054358 (= e!669672 (not lt!358783))))

(declare-fun d!299982 () Bool)

(assert (=> d!299982 e!669666))

(declare-fun c!176354 () Bool)

(assert (=> d!299982 (= c!176354 (is-EmptyExpr!2896 (regTwo!6304 r!15766)))))

(assert (=> d!299982 (= lt!358783 e!669668)))

(declare-fun c!176353 () Bool)

(assert (=> d!299982 (= c!176353 (isEmpty!6522 (_2!6605 lt!358665)))))

(assert (=> d!299982 (validRegex!1365 (regTwo!6304 r!15766))))

(assert (=> d!299982 (= (matchR!1432 (regTwo!6304 r!15766) (_2!6605 lt!358665)) lt!358783)))

(declare-fun b!1054359 () Bool)

(declare-fun res!471523 () Bool)

(assert (=> b!1054359 (=> res!471523 e!669670)))

(assert (=> b!1054359 (= res!471523 (not (is-ElementMatch!2896 (regTwo!6304 r!15766))))))

(assert (=> b!1054359 (= e!669672 e!669670)))

(declare-fun b!1054360 () Bool)

(declare-fun res!471527 () Bool)

(assert (=> b!1054360 (=> res!471527 e!669670)))

(assert (=> b!1054360 (= res!471527 e!669669)))

(declare-fun res!471524 () Bool)

(assert (=> b!1054360 (=> (not res!471524) (not e!669669))))

(assert (=> b!1054360 (= res!471524 lt!358783)))

(declare-fun b!1054361 () Bool)

(assert (=> b!1054361 (= e!669669 (= (head!1943 (_2!6605 lt!358665)) (c!176269 (regTwo!6304 r!15766))))))

(declare-fun b!1054362 () Bool)

(assert (=> b!1054362 (= e!669666 (= lt!358783 call!75195))))

(declare-fun b!1054363 () Bool)

(declare-fun res!471521 () Bool)

(assert (=> b!1054363 (=> (not res!471521) (not e!669669))))

(assert (=> b!1054363 (= res!471521 (not call!75195))))

(declare-fun b!1054364 () Bool)

(assert (=> b!1054364 (= e!669671 e!669667)))

(declare-fun res!471525 () Bool)

(assert (=> b!1054364 (=> res!471525 e!669667)))

(assert (=> b!1054364 (= res!471525 call!75195)))

(declare-fun b!1054365 () Bool)

(declare-fun res!471526 () Bool)

(assert (=> b!1054365 (=> res!471526 e!669667)))

(assert (=> b!1054365 (= res!471526 (not (isEmpty!6522 (tail!1505 (_2!6605 lt!358665)))))))

(assert (= (and d!299982 c!176353) b!1054352))

(assert (= (and d!299982 (not c!176353)) b!1054356))

(assert (= (and d!299982 c!176354) b!1054362))

(assert (= (and d!299982 (not c!176354)) b!1054357))

(assert (= (and b!1054357 c!176355) b!1054358))

(assert (= (and b!1054357 (not c!176355)) b!1054359))

(assert (= (and b!1054359 (not res!471523)) b!1054360))

(assert (= (and b!1054360 res!471524) b!1054363))

(assert (= (and b!1054363 res!471521) b!1054353))

(assert (= (and b!1054353 res!471522) b!1054361))

(assert (= (and b!1054360 (not res!471527)) b!1054355))

(assert (= (and b!1054355 res!471528) b!1054364))

(assert (= (and b!1054364 (not res!471525)) b!1054365))

(assert (= (and b!1054365 (not res!471526)) b!1054354))

(assert (= (or b!1054362 b!1054363 b!1054364) bm!75190))

(declare-fun m!1218081 () Bool)

(assert (=> d!299982 m!1218081))

(assert (=> d!299982 m!1217785))

(assert (=> b!1054352 m!1217971))

(declare-fun m!1218083 () Bool)

(assert (=> b!1054365 m!1218083))

(assert (=> b!1054365 m!1218083))

(declare-fun m!1218085 () Bool)

(assert (=> b!1054365 m!1218085))

(declare-fun m!1218087 () Bool)

(assert (=> b!1054354 m!1218087))

(assert (=> b!1054353 m!1218083))

(assert (=> b!1054353 m!1218083))

(assert (=> b!1054353 m!1218085))

(assert (=> bm!75190 m!1218081))

(assert (=> b!1054361 m!1218087))

(assert (=> b!1054356 m!1218087))

(assert (=> b!1054356 m!1218087))

(declare-fun m!1218089 () Bool)

(assert (=> b!1054356 m!1218089))

(assert (=> b!1054356 m!1218083))

(assert (=> b!1054356 m!1218089))

(assert (=> b!1054356 m!1218083))

(declare-fun m!1218091 () Bool)

(assert (=> b!1054356 m!1218091))

(assert (=> b!1053947 d!299982))

(declare-fun b!1054366 () Bool)

(declare-fun e!669675 () Bool)

(assert (=> b!1054366 (= e!669675 (nullable!988 lt!358678))))

(declare-fun b!1054367 () Bool)

(declare-fun res!471530 () Bool)

(declare-fun e!669676 () Bool)

(assert (=> b!1054367 (=> (not res!471530) (not e!669676))))

(assert (=> b!1054367 (= res!471530 (isEmpty!6522 (tail!1505 (_2!6605 lt!358665))))))

(declare-fun b!1054368 () Bool)

(declare-fun e!669674 () Bool)

(assert (=> b!1054368 (= e!669674 (not (= (head!1943 (_2!6605 lt!358665)) (c!176269 lt!358678))))))

(declare-fun b!1054369 () Bool)

(declare-fun e!669677 () Bool)

(declare-fun e!669678 () Bool)

(assert (=> b!1054369 (= e!669677 e!669678)))

(declare-fun res!471536 () Bool)

(assert (=> b!1054369 (=> (not res!471536) (not e!669678))))

(declare-fun lt!358784 () Bool)

(assert (=> b!1054369 (= res!471536 (not lt!358784))))

(declare-fun b!1054370 () Bool)

(assert (=> b!1054370 (= e!669675 (matchR!1432 (derivativeStep!788 lt!358678 (head!1943 (_2!6605 lt!358665))) (tail!1505 (_2!6605 lt!358665))))))

(declare-fun bm!75191 () Bool)

(declare-fun call!75196 () Bool)

(assert (=> bm!75191 (= call!75196 (isEmpty!6522 (_2!6605 lt!358665)))))

(declare-fun b!1054371 () Bool)

(declare-fun e!669673 () Bool)

(declare-fun e!669679 () Bool)

(assert (=> b!1054371 (= e!669673 e!669679)))

(declare-fun c!176358 () Bool)

(assert (=> b!1054371 (= c!176358 (is-EmptyLang!2896 lt!358678))))

(declare-fun b!1054372 () Bool)

(assert (=> b!1054372 (= e!669679 (not lt!358784))))

(declare-fun d!299984 () Bool)

(assert (=> d!299984 e!669673))

(declare-fun c!176357 () Bool)

(assert (=> d!299984 (= c!176357 (is-EmptyExpr!2896 lt!358678))))

(assert (=> d!299984 (= lt!358784 e!669675)))

(declare-fun c!176356 () Bool)

(assert (=> d!299984 (= c!176356 (isEmpty!6522 (_2!6605 lt!358665)))))

(assert (=> d!299984 (validRegex!1365 lt!358678)))

(assert (=> d!299984 (= (matchR!1432 lt!358678 (_2!6605 lt!358665)) lt!358784)))

(declare-fun b!1054373 () Bool)

(declare-fun res!471531 () Bool)

(assert (=> b!1054373 (=> res!471531 e!669677)))

(assert (=> b!1054373 (= res!471531 (not (is-ElementMatch!2896 lt!358678)))))

(assert (=> b!1054373 (= e!669679 e!669677)))

(declare-fun b!1054374 () Bool)

(declare-fun res!471535 () Bool)

(assert (=> b!1054374 (=> res!471535 e!669677)))

(assert (=> b!1054374 (= res!471535 e!669676)))

(declare-fun res!471532 () Bool)

(assert (=> b!1054374 (=> (not res!471532) (not e!669676))))

(assert (=> b!1054374 (= res!471532 lt!358784)))

(declare-fun b!1054375 () Bool)

(assert (=> b!1054375 (= e!669676 (= (head!1943 (_2!6605 lt!358665)) (c!176269 lt!358678)))))

(declare-fun b!1054376 () Bool)

(assert (=> b!1054376 (= e!669673 (= lt!358784 call!75196))))

(declare-fun b!1054377 () Bool)

(declare-fun res!471529 () Bool)

(assert (=> b!1054377 (=> (not res!471529) (not e!669676))))

(assert (=> b!1054377 (= res!471529 (not call!75196))))

(declare-fun b!1054378 () Bool)

(assert (=> b!1054378 (= e!669678 e!669674)))

(declare-fun res!471533 () Bool)

(assert (=> b!1054378 (=> res!471533 e!669674)))

(assert (=> b!1054378 (= res!471533 call!75196)))

(declare-fun b!1054379 () Bool)

(declare-fun res!471534 () Bool)

(assert (=> b!1054379 (=> res!471534 e!669674)))

(assert (=> b!1054379 (= res!471534 (not (isEmpty!6522 (tail!1505 (_2!6605 lt!358665)))))))

(assert (= (and d!299984 c!176356) b!1054366))

(assert (= (and d!299984 (not c!176356)) b!1054370))

(assert (= (and d!299984 c!176357) b!1054376))

(assert (= (and d!299984 (not c!176357)) b!1054371))

(assert (= (and b!1054371 c!176358) b!1054372))

(assert (= (and b!1054371 (not c!176358)) b!1054373))

(assert (= (and b!1054373 (not res!471531)) b!1054374))

(assert (= (and b!1054374 res!471532) b!1054377))

(assert (= (and b!1054377 res!471529) b!1054367))

(assert (= (and b!1054367 res!471530) b!1054375))

(assert (= (and b!1054374 (not res!471535)) b!1054369))

(assert (= (and b!1054369 res!471536) b!1054378))

(assert (= (and b!1054378 (not res!471533)) b!1054379))

(assert (= (and b!1054379 (not res!471534)) b!1054368))

(assert (= (or b!1054376 b!1054377 b!1054378) bm!75191))

(assert (=> d!299984 m!1218081))

(declare-fun m!1218093 () Bool)

(assert (=> d!299984 m!1218093))

(declare-fun m!1218095 () Bool)

(assert (=> b!1054366 m!1218095))

(assert (=> b!1054379 m!1218083))

(assert (=> b!1054379 m!1218083))

(assert (=> b!1054379 m!1218085))

(assert (=> b!1054368 m!1218087))

(assert (=> b!1054367 m!1218083))

(assert (=> b!1054367 m!1218083))

(assert (=> b!1054367 m!1218085))

(assert (=> bm!75191 m!1218081))

(assert (=> b!1054375 m!1218087))

(assert (=> b!1054370 m!1218087))

(assert (=> b!1054370 m!1218087))

(declare-fun m!1218097 () Bool)

(assert (=> b!1054370 m!1218097))

(assert (=> b!1054370 m!1218083))

(assert (=> b!1054370 m!1218097))

(assert (=> b!1054370 m!1218083))

(declare-fun m!1218099 () Bool)

(assert (=> b!1054370 m!1218099))

(assert (=> b!1053947 d!299984))

(declare-fun b!1054380 () Bool)

(declare-fun e!669681 () Bool)

(declare-fun e!669685 () Bool)

(assert (=> b!1054380 (= e!669681 e!669685)))

(declare-fun c!176359 () Bool)

(assert (=> b!1054380 (= c!176359 (is-Union!2896 (regOne!6304 r!15766)))))

(declare-fun b!1054381 () Bool)

(declare-fun e!669684 () Bool)

(declare-fun call!75198 () Bool)

(assert (=> b!1054381 (= e!669684 call!75198)))

(declare-fun b!1054382 () Bool)

(declare-fun e!669683 () Bool)

(declare-fun call!75197 () Bool)

(assert (=> b!1054382 (= e!669683 call!75197)))

(declare-fun c!176360 () Bool)

(declare-fun bm!75192 () Bool)

(assert (=> bm!75192 (= call!75197 (validRegex!1365 (ite c!176360 (reg!3225 (regOne!6304 r!15766)) (ite c!176359 (regOne!6305 (regOne!6304 r!15766)) (regOne!6304 (regOne!6304 r!15766))))))))

(declare-fun b!1054383 () Bool)

(declare-fun res!471539 () Bool)

(assert (=> b!1054383 (=> (not res!471539) (not e!669684))))

(declare-fun call!75199 () Bool)

(assert (=> b!1054383 (= res!471539 call!75199)))

(assert (=> b!1054383 (= e!669685 e!669684)))

(declare-fun bm!75193 () Bool)

(assert (=> bm!75193 (= call!75198 (validRegex!1365 (ite c!176359 (regTwo!6305 (regOne!6304 r!15766)) (regTwo!6304 (regOne!6304 r!15766)))))))

(declare-fun b!1054384 () Bool)

(declare-fun e!669682 () Bool)

(assert (=> b!1054384 (= e!669682 call!75198)))

(declare-fun b!1054385 () Bool)

(declare-fun e!669686 () Bool)

(assert (=> b!1054385 (= e!669686 e!669682)))

(declare-fun res!471540 () Bool)

(assert (=> b!1054385 (=> (not res!471540) (not e!669682))))

(assert (=> b!1054385 (= res!471540 call!75199)))

(declare-fun d!299986 () Bool)

(declare-fun res!471537 () Bool)

(declare-fun e!669680 () Bool)

(assert (=> d!299986 (=> res!471537 e!669680)))

(assert (=> d!299986 (= res!471537 (is-ElementMatch!2896 (regOne!6304 r!15766)))))

(assert (=> d!299986 (= (validRegex!1365 (regOne!6304 r!15766)) e!669680)))

(declare-fun b!1054386 () Bool)

(declare-fun res!471538 () Bool)

(assert (=> b!1054386 (=> res!471538 e!669686)))

(assert (=> b!1054386 (= res!471538 (not (is-Concat!4729 (regOne!6304 r!15766))))))

(assert (=> b!1054386 (= e!669685 e!669686)))

(declare-fun bm!75194 () Bool)

(assert (=> bm!75194 (= call!75199 call!75197)))

(declare-fun b!1054387 () Bool)

(assert (=> b!1054387 (= e!669681 e!669683)))

(declare-fun res!471541 () Bool)

(assert (=> b!1054387 (= res!471541 (not (nullable!988 (reg!3225 (regOne!6304 r!15766)))))))

(assert (=> b!1054387 (=> (not res!471541) (not e!669683))))

(declare-fun b!1054388 () Bool)

(assert (=> b!1054388 (= e!669680 e!669681)))

(assert (=> b!1054388 (= c!176360 (is-Star!2896 (regOne!6304 r!15766)))))

(assert (= (and d!299986 (not res!471537)) b!1054388))

(assert (= (and b!1054388 c!176360) b!1054387))

(assert (= (and b!1054388 (not c!176360)) b!1054380))

(assert (= (and b!1054387 res!471541) b!1054382))

(assert (= (and b!1054380 c!176359) b!1054383))

(assert (= (and b!1054380 (not c!176359)) b!1054386))

(assert (= (and b!1054383 res!471539) b!1054381))

(assert (= (and b!1054386 (not res!471538)) b!1054385))

(assert (= (and b!1054385 res!471540) b!1054384))

(assert (= (or b!1054381 b!1054384) bm!75193))

(assert (= (or b!1054383 b!1054385) bm!75194))

(assert (= (or b!1054382 bm!75194) bm!75192))

(declare-fun m!1218101 () Bool)

(assert (=> bm!75192 m!1218101))

(declare-fun m!1218103 () Bool)

(assert (=> bm!75193 m!1218103))

(declare-fun m!1218105 () Bool)

(assert (=> b!1054387 m!1218105))

(assert (=> b!1053947 d!299986))

(declare-fun d!299988 () Bool)

(assert (=> d!299988 (= (get!3622 lt!358663) (v!19837 lt!358663))))

(assert (=> b!1053947 d!299988))

(declare-fun e!669689 () Bool)

(assert (=> b!1053951 (= tp!317537 e!669689)))

(declare-fun b!1054399 () Bool)

(assert (=> b!1054399 (= e!669689 tp_is_empty!5435)))

(declare-fun b!1054402 () Bool)

(declare-fun tp!317569 () Bool)

(declare-fun tp!317570 () Bool)

(assert (=> b!1054402 (= e!669689 (and tp!317569 tp!317570))))

(declare-fun b!1054400 () Bool)

(declare-fun tp!317571 () Bool)

(declare-fun tp!317567 () Bool)

(assert (=> b!1054400 (= e!669689 (and tp!317571 tp!317567))))

(declare-fun b!1054401 () Bool)

(declare-fun tp!317568 () Bool)

(assert (=> b!1054401 (= e!669689 tp!317568)))

(assert (= (and b!1053951 (is-ElementMatch!2896 (regOne!6305 r!15766))) b!1054399))

(assert (= (and b!1053951 (is-Concat!4729 (regOne!6305 r!15766))) b!1054400))

(assert (= (and b!1053951 (is-Star!2896 (regOne!6305 r!15766))) b!1054401))

(assert (= (and b!1053951 (is-Union!2896 (regOne!6305 r!15766))) b!1054402))

(declare-fun e!669690 () Bool)

(assert (=> b!1053951 (= tp!317535 e!669690)))

(declare-fun b!1054403 () Bool)

(assert (=> b!1054403 (= e!669690 tp_is_empty!5435)))

(declare-fun b!1054406 () Bool)

(declare-fun tp!317574 () Bool)

(declare-fun tp!317575 () Bool)

(assert (=> b!1054406 (= e!669690 (and tp!317574 tp!317575))))

(declare-fun b!1054404 () Bool)

(declare-fun tp!317576 () Bool)

(declare-fun tp!317572 () Bool)

(assert (=> b!1054404 (= e!669690 (and tp!317576 tp!317572))))

(declare-fun b!1054405 () Bool)

(declare-fun tp!317573 () Bool)

(assert (=> b!1054405 (= e!669690 tp!317573)))

(assert (= (and b!1053951 (is-ElementMatch!2896 (regTwo!6305 r!15766))) b!1054403))

(assert (= (and b!1053951 (is-Concat!4729 (regTwo!6305 r!15766))) b!1054404))

(assert (= (and b!1053951 (is-Star!2896 (regTwo!6305 r!15766))) b!1054405))

(assert (= (and b!1053951 (is-Union!2896 (regTwo!6305 r!15766))) b!1054406))

(declare-fun e!669691 () Bool)

(assert (=> b!1053943 (= tp!317533 e!669691)))

(declare-fun b!1054407 () Bool)

(assert (=> b!1054407 (= e!669691 tp_is_empty!5435)))

(declare-fun b!1054410 () Bool)

(declare-fun tp!317579 () Bool)

(declare-fun tp!317580 () Bool)

(assert (=> b!1054410 (= e!669691 (and tp!317579 tp!317580))))

(declare-fun b!1054408 () Bool)

(declare-fun tp!317581 () Bool)

(declare-fun tp!317577 () Bool)

(assert (=> b!1054408 (= e!669691 (and tp!317581 tp!317577))))

(declare-fun b!1054409 () Bool)

(declare-fun tp!317578 () Bool)

(assert (=> b!1054409 (= e!669691 tp!317578)))

(assert (= (and b!1053943 (is-ElementMatch!2896 (reg!3225 r!15766))) b!1054407))

(assert (= (and b!1053943 (is-Concat!4729 (reg!3225 r!15766))) b!1054408))

(assert (= (and b!1053943 (is-Star!2896 (reg!3225 r!15766))) b!1054409))

(assert (= (and b!1053943 (is-Union!2896 (reg!3225 r!15766))) b!1054410))

(declare-fun e!669692 () Bool)

(assert (=> b!1053946 (= tp!317534 e!669692)))

(declare-fun b!1054411 () Bool)

(assert (=> b!1054411 (= e!669692 tp_is_empty!5435)))

(declare-fun b!1054414 () Bool)

(declare-fun tp!317584 () Bool)

(declare-fun tp!317585 () Bool)

(assert (=> b!1054414 (= e!669692 (and tp!317584 tp!317585))))

(declare-fun b!1054412 () Bool)

(declare-fun tp!317586 () Bool)

(declare-fun tp!317582 () Bool)

(assert (=> b!1054412 (= e!669692 (and tp!317586 tp!317582))))

(declare-fun b!1054413 () Bool)

(declare-fun tp!317583 () Bool)

(assert (=> b!1054413 (= e!669692 tp!317583)))

(assert (= (and b!1053946 (is-ElementMatch!2896 (regOne!6304 r!15766))) b!1054411))

(assert (= (and b!1053946 (is-Concat!4729 (regOne!6304 r!15766))) b!1054412))

(assert (= (and b!1053946 (is-Star!2896 (regOne!6304 r!15766))) b!1054413))

(assert (= (and b!1053946 (is-Union!2896 (regOne!6304 r!15766))) b!1054414))

(declare-fun e!669693 () Bool)

(assert (=> b!1053946 (= tp!317538 e!669693)))

(declare-fun b!1054415 () Bool)

(assert (=> b!1054415 (= e!669693 tp_is_empty!5435)))

(declare-fun b!1054418 () Bool)

(declare-fun tp!317589 () Bool)

(declare-fun tp!317590 () Bool)

(assert (=> b!1054418 (= e!669693 (and tp!317589 tp!317590))))

(declare-fun b!1054416 () Bool)

(declare-fun tp!317591 () Bool)

(declare-fun tp!317587 () Bool)

(assert (=> b!1054416 (= e!669693 (and tp!317591 tp!317587))))

(declare-fun b!1054417 () Bool)

(declare-fun tp!317588 () Bool)

(assert (=> b!1054417 (= e!669693 tp!317588)))

(assert (= (and b!1053946 (is-ElementMatch!2896 (regTwo!6304 r!15766))) b!1054415))

(assert (= (and b!1053946 (is-Concat!4729 (regTwo!6304 r!15766))) b!1054416))

(assert (= (and b!1053946 (is-Star!2896 (regTwo!6304 r!15766))) b!1054417))

(assert (= (and b!1053946 (is-Union!2896 (regTwo!6304 r!15766))) b!1054418))

(declare-fun b!1054423 () Bool)

(declare-fun e!669696 () Bool)

(declare-fun tp!317594 () Bool)

(assert (=> b!1054423 (= e!669696 (and tp_is_empty!5435 tp!317594))))

(assert (=> b!1053941 (= tp!317536 e!669696)))

(assert (= (and b!1053941 (is-Cons!10110 (t!101172 s!10566))) b!1054423))

(push 1)

(assert (not b!1054278))

(assert (not b!1054098))

(assert (not b!1054375))

(assert (not b!1054365))

(assert (not b!1054339))

(assert (not b!1054269))

(assert (not b!1054353))

(assert (not b!1054351))

(assert (not b!1054163))

(assert (not d!299934))

(assert (not bm!75192))

(assert (not bm!75190))

(assert (not b!1054174))

(assert (not d!299952))

(assert (not b!1054412))

(assert (not b!1054354))

(assert (not d!299980))

(assert (not b!1054379))

(assert (not b!1054413))

(assert (not b!1054274))

(assert (not d!299942))

(assert (not b!1054038))

(assert (not d!299972))

(assert (not bm!75159))

(assert (not d!299960))

(assert (not d!299984))

(assert (not b!1054340))

(assert (not d!299966))

(assert (not b!1054265))

(assert (not b!1054266))

(assert (not bm!75140))

(assert (not d!299940))

(assert (not b!1054316))

(assert (not b!1054252))

(assert (not b!1054161))

(assert (not b!1054300))

(assert (not b!1054170))

(assert (not d!299930))

(assert (not d!299932))

(assert (not b!1054298))

(assert (not bm!75175))

(assert (not b!1054401))

(assert (not b!1054406))

(assert (not b!1054418))

(assert (not b!1054408))

(assert (not d!299912))

(assert (not b!1054305))

(assert (not b!1054297))

(assert (not bm!75139))

(assert (not b!1054256))

(assert (not bm!75162))

(assert (not b!1054317))

(assert (not bm!75182))

(assert (not b!1054093))

(assert (not d!299958))

(assert (not d!299950))

(assert (not b!1054303))

(assert (not b!1054404))

(assert (not b!1054328))

(assert (not d!299924))

(assert (not b!1054367))

(assert (not bm!75183))

(assert (not b!1054361))

(assert (not bm!75173))

(assert (not bm!75171))

(assert (not b!1054423))

(assert (not b!1054414))

(assert (not b!1054356))

(assert (not b!1054342))

(assert (not b!1054352))

(assert tp_is_empty!5435)

(assert (not b!1054347))

(assert (not b!1054039))

(assert (not d!299956))

(assert (not b!1054370))

(assert (not b!1054218))

(assert (not bm!75193))

(assert (not b!1054041))

(assert (not bm!75191))

(assert (not bm!75189))

(assert (not b!1054400))

(assert (not d!299908))

(assert (not b!1054402))

(assert (not bm!75185))

(assert (not bm!75143))

(assert (not b!1054046))

(assert (not bm!75174))

(assert (not d!299976))

(assert (not d!299964))

(assert (not d!299962))

(assert (not b!1054409))

(assert (not d!299982))

(assert (not b!1054387))

(assert (not b!1054043))

(assert (not b!1054416))

(assert (not b!1054405))

(assert (not b!1054324))

(assert (not b!1054302))

(assert (not b!1054366))

(assert (not d!299970))

(assert (not b!1054044))

(assert (not bm!75157))

(assert (not b!1054162))

(assert (not d!299918))

(assert (not b!1054338))

(assert (not bm!75154))

(assert (not b!1054205))

(assert (not b!1054261))

(assert (not b!1054267))

(assert (not b!1054313))

(assert (not b!1054319))

(assert (not b!1054368))

(assert (not b!1054315))

(assert (not bm!75170))

(assert (not d!299936))

(assert (not b!1054165))

(assert (not b!1054417))

(assert (not b!1054410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

