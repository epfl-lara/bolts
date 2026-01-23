; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233394 () Bool)

(assert start!233394)

(declare-fun b!2378543 () Bool)

(assert (=> b!2378543 true))

(assert (=> b!2378543 true))

(declare-fun lambda!88496 () Int)

(declare-fun lambda!88495 () Int)

(assert (=> b!2378543 (not (= lambda!88496 lambda!88495))))

(assert (=> b!2378543 true))

(assert (=> b!2378543 true))

(declare-fun b!2378541 () Bool)

(declare-datatypes ((Unit!40991 0))(
  ( (Unit!40992) )
))
(declare-fun e!1517297 () Unit!40991)

(declare-fun Unit!40993 () Unit!40991)

(assert (=> b!2378541 (= e!1517297 Unit!40993)))

(declare-fun b!2378542 () Bool)

(declare-fun e!1517298 () Bool)

(declare-fun e!1517296 () Bool)

(assert (=> b!2378542 (= e!1517298 e!1517296)))

(declare-fun res!1010017 () Bool)

(assert (=> b!2378542 (=> res!1010017 e!1517296)))

(declare-datatypes ((C!14106 0))(
  ( (C!14107 (val!8295 Int)) )
))
(declare-datatypes ((Regex!6974 0))(
  ( (ElementMatch!6974 (c!378085 C!14106)) (Concat!11610 (regOne!14460 Regex!6974) (regTwo!14460 Regex!6974)) (EmptyExpr!6974) (Star!6974 (reg!7303 Regex!6974)) (EmptyLang!6974) (Union!6974 (regOne!14461 Regex!6974) (regTwo!14461 Regex!6974)) )
))
(declare-datatypes ((List!28186 0))(
  ( (Nil!28088) (Cons!28088 (h!33489 Regex!6974) (t!208163 List!28186)) )
))
(declare-fun lt!867677 () List!28186)

(declare-fun isEmpty!16032 (List!28186) Bool)

(assert (=> b!2378542 (= res!1010017 (not (isEmpty!16032 lt!867677)))))

(declare-fun l!9164 () List!28186)

(declare-fun tail!3451 (List!28186) List!28186)

(assert (=> b!2378542 (= lt!867677 (tail!3451 l!9164))))

(declare-fun e!1517302 () Bool)

(assert (=> b!2378543 (= e!1517302 e!1517298)))

(declare-fun res!1010016 () Bool)

(assert (=> b!2378543 (=> res!1010016 e!1517298)))

(declare-fun lt!867676 () Bool)

(declare-fun lt!867666 () Bool)

(assert (=> b!2378543 (= res!1010016 (not (= lt!867676 lt!867666)))))

(declare-fun Exists!1036 (Int) Bool)

(assert (=> b!2378543 (= (Exists!1036 lambda!88495) (Exists!1036 lambda!88496))))

(declare-fun lt!867673 () Unit!40991)

(declare-fun r!13927 () Regex!6974)

(declare-datatypes ((List!28187 0))(
  ( (Nil!28089) (Cons!28089 (h!33490 C!14106) (t!208164 List!28187)) )
))
(declare-fun s!9460 () List!28187)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!375 (Regex!6974 Regex!6974 List!28187) Unit!40991)

(assert (=> b!2378543 (= lt!867673 (lemmaExistCutMatchRandMatchRSpecEquivalent!375 (regOne!14460 r!13927) (regTwo!14460 r!13927) s!9460))))

(assert (=> b!2378543 (= lt!867666 (Exists!1036 lambda!88495))))

(declare-datatypes ((tuple2!27812 0))(
  ( (tuple2!27813 (_1!16447 List!28187) (_2!16447 List!28187)) )
))
(declare-datatypes ((Option!5517 0))(
  ( (None!5516) (Some!5516 (v!30924 tuple2!27812)) )
))
(declare-fun isDefined!4345 (Option!5517) Bool)

(declare-fun findConcatSeparation!625 (Regex!6974 Regex!6974 List!28187 List!28187 List!28187) Option!5517)

(assert (=> b!2378543 (= lt!867666 (isDefined!4345 (findConcatSeparation!625 (regOne!14460 r!13927) (regTwo!14460 r!13927) Nil!28089 s!9460 s!9460)))))

(declare-fun lt!867675 () Unit!40991)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!625 (Regex!6974 Regex!6974 List!28187) Unit!40991)

(assert (=> b!2378543 (= lt!867675 (lemmaFindConcatSeparationEquivalentToExists!625 (regOne!14460 r!13927) (regTwo!14460 r!13927) s!9460))))

(declare-fun b!2378544 () Bool)

(declare-fun res!1010015 () Bool)

(assert (=> b!2378544 (=> res!1010015 e!1517296)))

(declare-fun generalisedConcat!75 (List!28186) Regex!6974)

(assert (=> b!2378544 (= res!1010015 (not (= (generalisedConcat!75 lt!867677) EmptyExpr!6974)))))

(declare-fun b!2378545 () Bool)

(declare-fun e!1517295 () Bool)

(declare-fun lt!867674 () Regex!6974)

(declare-fun validRegex!2699 (Regex!6974) Bool)

(assert (=> b!2378545 (= e!1517295 (validRegex!2699 lt!867674))))

(declare-fun lt!867667 () Bool)

(assert (=> b!2378545 (not lt!867667)))

(declare-fun lt!867665 () Unit!40991)

(assert (=> b!2378545 (= lt!867665 e!1517297)))

(declare-fun c!378084 () Bool)

(assert (=> b!2378545 (= c!378084 lt!867667)))

(declare-fun lt!867668 () Option!5517)

(assert (=> b!2378545 (= lt!867667 (isDefined!4345 lt!867668))))

(assert (=> b!2378545 (= lt!867668 (findConcatSeparation!625 lt!867674 EmptyExpr!6974 Nil!28089 s!9460 s!9460))))

(declare-fun b!2378546 () Bool)

(declare-fun e!1517294 () Bool)

(assert (=> b!2378546 (= e!1517294 false)))

(declare-fun b!2378547 () Bool)

(declare-fun e!1517301 () Bool)

(declare-fun tp_is_empty!11361 () Bool)

(declare-fun tp!759587 () Bool)

(assert (=> b!2378547 (= e!1517301 (and tp_is_empty!11361 tp!759587))))

(declare-fun b!2378548 () Bool)

(declare-fun e!1517300 () Bool)

(declare-fun tp!759586 () Bool)

(declare-fun tp!759589 () Bool)

(assert (=> b!2378548 (= e!1517300 (and tp!759586 tp!759589))))

(declare-fun b!2378549 () Bool)

(declare-fun e!1517293 () Bool)

(declare-fun tp!759583 () Bool)

(declare-fun tp!759584 () Bool)

(assert (=> b!2378549 (= e!1517293 (and tp!759583 tp!759584))))

(declare-fun b!2378550 () Bool)

(declare-fun tp!759582 () Bool)

(assert (=> b!2378550 (= e!1517293 tp!759582)))

(declare-fun res!1010011 () Bool)

(declare-fun e!1517299 () Bool)

(assert (=> start!233394 (=> (not res!1010011) (not e!1517299))))

(declare-fun lambda!88494 () Int)

(declare-fun forall!5608 (List!28186 Int) Bool)

(assert (=> start!233394 (= res!1010011 (forall!5608 l!9164 lambda!88494))))

(assert (=> start!233394 e!1517299))

(assert (=> start!233394 e!1517300))

(assert (=> start!233394 e!1517293))

(assert (=> start!233394 e!1517301))

(declare-fun b!2378551 () Bool)

(assert (=> b!2378551 (= e!1517296 e!1517295)))

(declare-fun res!1010014 () Bool)

(assert (=> b!2378551 (=> res!1010014 e!1517295)))

(declare-fun matchR!3091 (Regex!6974 List!28187) Bool)

(assert (=> b!2378551 (= res!1010014 (matchR!3091 lt!867674 s!9460))))

(declare-fun head!5181 (List!28186) Regex!6974)

(assert (=> b!2378551 (= lt!867674 (head!5181 l!9164))))

(declare-fun b!2378552 () Bool)

(declare-fun Unit!40994 () Unit!40991)

(assert (=> b!2378552 (= e!1517297 Unit!40994)))

(declare-fun lt!867671 () tuple2!27812)

(declare-fun get!8560 (Option!5517) tuple2!27812)

(assert (=> b!2378552 (= lt!867671 (get!8560 lt!867668))))

(declare-fun lt!867669 () Unit!40991)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!5 (Regex!6974 Regex!6974 List!28187 List!28187 List!28187) Unit!40991)

(assert (=> b!2378552 (= lt!867669 (lemmaFindSeparationIsDefinedThenConcatMatches!5 lt!867674 EmptyExpr!6974 (_1!16447 lt!867671) (_2!16447 lt!867671) s!9460))))

(declare-fun res!1010012 () Bool)

(declare-fun ++!6929 (List!28187 List!28187) List!28187)

(assert (=> b!2378552 (= res!1010012 (matchR!3091 (Concat!11610 lt!867674 EmptyExpr!6974) (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671))))))

(assert (=> b!2378552 (=> (not res!1010012) (not e!1517294))))

(assert (=> b!2378552 e!1517294))

(declare-fun b!2378553 () Bool)

(assert (=> b!2378553 (= e!1517299 (not e!1517302))))

(declare-fun res!1010013 () Bool)

(assert (=> b!2378553 (=> res!1010013 e!1517302)))

(assert (=> b!2378553 (= res!1010013 (not (is-Concat!11610 r!13927)))))

(declare-fun lt!867672 () Bool)

(assert (=> b!2378553 (= lt!867672 lt!867676)))

(declare-fun matchRSpec!823 (Regex!6974 List!28187) Bool)

(assert (=> b!2378553 (= lt!867676 (matchRSpec!823 r!13927 s!9460))))

(assert (=> b!2378553 (= lt!867672 (matchR!3091 r!13927 s!9460))))

(declare-fun lt!867670 () Unit!40991)

(declare-fun mainMatchTheorem!823 (Regex!6974 List!28187) Unit!40991)

(assert (=> b!2378553 (= lt!867670 (mainMatchTheorem!823 r!13927 s!9460))))

(declare-fun b!2378554 () Bool)

(declare-fun tp!759585 () Bool)

(declare-fun tp!759588 () Bool)

(assert (=> b!2378554 (= e!1517293 (and tp!759585 tp!759588))))

(declare-fun b!2378555 () Bool)

(assert (=> b!2378555 (= e!1517293 tp_is_empty!11361)))

(declare-fun b!2378556 () Bool)

(declare-fun res!1010018 () Bool)

(assert (=> b!2378556 (=> res!1010018 e!1517298)))

(assert (=> b!2378556 (= res!1010018 (isEmpty!16032 l!9164))))

(declare-fun b!2378557 () Bool)

(declare-fun res!1010019 () Bool)

(assert (=> b!2378557 (=> (not res!1010019) (not e!1517299))))

(assert (=> b!2378557 (= res!1010019 (= r!13927 (generalisedConcat!75 l!9164)))))

(assert (= (and start!233394 res!1010011) b!2378557))

(assert (= (and b!2378557 res!1010019) b!2378553))

(assert (= (and b!2378553 (not res!1010013)) b!2378543))

(assert (= (and b!2378543 (not res!1010016)) b!2378556))

(assert (= (and b!2378556 (not res!1010018)) b!2378542))

(assert (= (and b!2378542 (not res!1010017)) b!2378544))

(assert (= (and b!2378544 (not res!1010015)) b!2378551))

(assert (= (and b!2378551 (not res!1010014)) b!2378545))

(assert (= (and b!2378545 c!378084) b!2378552))

(assert (= (and b!2378545 (not c!378084)) b!2378541))

(assert (= (and b!2378552 res!1010012) b!2378546))

(assert (= (and start!233394 (is-Cons!28088 l!9164)) b!2378548))

(assert (= (and start!233394 (is-ElementMatch!6974 r!13927)) b!2378555))

(assert (= (and start!233394 (is-Concat!11610 r!13927)) b!2378554))

(assert (= (and start!233394 (is-Star!6974 r!13927)) b!2378550))

(assert (= (and start!233394 (is-Union!6974 r!13927)) b!2378549))

(assert (= (and start!233394 (is-Cons!28089 s!9460)) b!2378547))

(declare-fun m!2783215 () Bool)

(assert (=> b!2378556 m!2783215))

(declare-fun m!2783217 () Bool)

(assert (=> b!2378543 m!2783217))

(declare-fun m!2783219 () Bool)

(assert (=> b!2378543 m!2783219))

(declare-fun m!2783221 () Bool)

(assert (=> b!2378543 m!2783221))

(declare-fun m!2783223 () Bool)

(assert (=> b!2378543 m!2783223))

(declare-fun m!2783225 () Bool)

(assert (=> b!2378543 m!2783225))

(declare-fun m!2783227 () Bool)

(assert (=> b!2378543 m!2783227))

(assert (=> b!2378543 m!2783217))

(assert (=> b!2378543 m!2783221))

(declare-fun m!2783229 () Bool)

(assert (=> b!2378545 m!2783229))

(declare-fun m!2783231 () Bool)

(assert (=> b!2378545 m!2783231))

(declare-fun m!2783233 () Bool)

(assert (=> b!2378545 m!2783233))

(declare-fun m!2783235 () Bool)

(assert (=> start!233394 m!2783235))

(declare-fun m!2783237 () Bool)

(assert (=> b!2378557 m!2783237))

(declare-fun m!2783239 () Bool)

(assert (=> b!2378552 m!2783239))

(declare-fun m!2783241 () Bool)

(assert (=> b!2378552 m!2783241))

(declare-fun m!2783243 () Bool)

(assert (=> b!2378552 m!2783243))

(assert (=> b!2378552 m!2783243))

(declare-fun m!2783245 () Bool)

(assert (=> b!2378552 m!2783245))

(declare-fun m!2783247 () Bool)

(assert (=> b!2378544 m!2783247))

(declare-fun m!2783249 () Bool)

(assert (=> b!2378551 m!2783249))

(declare-fun m!2783251 () Bool)

(assert (=> b!2378551 m!2783251))

(declare-fun m!2783253 () Bool)

(assert (=> b!2378553 m!2783253))

(declare-fun m!2783255 () Bool)

(assert (=> b!2378553 m!2783255))

(declare-fun m!2783257 () Bool)

(assert (=> b!2378553 m!2783257))

(declare-fun m!2783259 () Bool)

(assert (=> b!2378542 m!2783259))

(declare-fun m!2783261 () Bool)

(assert (=> b!2378542 m!2783261))

(push 1)

(assert (not b!2378549))

(assert (not b!2378551))

(assert (not b!2378550))

(assert (not b!2378544))

(assert (not start!233394))

(assert (not b!2378542))

(assert (not b!2378545))

(assert (not b!2378552))

(assert (not b!2378553))

(assert tp_is_empty!11361)

(assert (not b!2378554))

(assert (not b!2378543))

(assert (not b!2378557))

(assert (not b!2378547))

(assert (not b!2378548))

(assert (not b!2378556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461725 () Bool)

(declare-fun d!696356 () Bool)

(assert (= bs!461725 (and d!696356 start!233394)))

(declare-fun lambda!88510 () Int)

(assert (=> bs!461725 (= lambda!88510 lambda!88494)))

(declare-fun b!2378650 () Bool)

(declare-fun e!1517355 () Bool)

(declare-fun e!1517354 () Bool)

(assert (=> b!2378650 (= e!1517355 e!1517354)))

(declare-fun c!378099 () Bool)

(assert (=> b!2378650 (= c!378099 (isEmpty!16032 l!9164))))

(declare-fun b!2378651 () Bool)

(declare-fun e!1517353 () Bool)

(assert (=> b!2378651 (= e!1517354 e!1517353)))

(declare-fun c!378101 () Bool)

(assert (=> b!2378651 (= c!378101 (isEmpty!16032 (tail!3451 l!9164)))))

(declare-fun b!2378652 () Bool)

(declare-fun lt!867719 () Regex!6974)

(assert (=> b!2378652 (= e!1517353 (= lt!867719 (head!5181 l!9164)))))

(declare-fun b!2378653 () Bool)

(declare-fun e!1517352 () Regex!6974)

(assert (=> b!2378653 (= e!1517352 EmptyExpr!6974)))

(declare-fun b!2378654 () Bool)

(declare-fun e!1517351 () Regex!6974)

(assert (=> b!2378654 (= e!1517351 (h!33489 l!9164))))

(declare-fun b!2378649 () Bool)

(declare-fun isConcat!44 (Regex!6974) Bool)

(assert (=> b!2378649 (= e!1517353 (isConcat!44 lt!867719))))

(assert (=> d!696356 e!1517355))

(declare-fun res!1010063 () Bool)

(assert (=> d!696356 (=> (not res!1010063) (not e!1517355))))

(assert (=> d!696356 (= res!1010063 (validRegex!2699 lt!867719))))

(assert (=> d!696356 (= lt!867719 e!1517351)))

(declare-fun c!378098 () Bool)

(declare-fun e!1517356 () Bool)

(assert (=> d!696356 (= c!378098 e!1517356)))

(declare-fun res!1010064 () Bool)

(assert (=> d!696356 (=> (not res!1010064) (not e!1517356))))

(assert (=> d!696356 (= res!1010064 (is-Cons!28088 l!9164))))

(assert (=> d!696356 (forall!5608 l!9164 lambda!88510)))

(assert (=> d!696356 (= (generalisedConcat!75 l!9164) lt!867719)))

(declare-fun b!2378655 () Bool)

(declare-fun isEmptyExpr!44 (Regex!6974) Bool)

(assert (=> b!2378655 (= e!1517354 (isEmptyExpr!44 lt!867719))))

(declare-fun b!2378656 () Bool)

(assert (=> b!2378656 (= e!1517352 (Concat!11610 (h!33489 l!9164) (generalisedConcat!75 (t!208163 l!9164))))))

(declare-fun b!2378657 () Bool)

(assert (=> b!2378657 (= e!1517351 e!1517352)))

(declare-fun c!378100 () Bool)

(assert (=> b!2378657 (= c!378100 (is-Cons!28088 l!9164))))

(declare-fun b!2378658 () Bool)

(assert (=> b!2378658 (= e!1517356 (isEmpty!16032 (t!208163 l!9164)))))

(assert (= (and d!696356 res!1010064) b!2378658))

(assert (= (and d!696356 c!378098) b!2378654))

(assert (= (and d!696356 (not c!378098)) b!2378657))

(assert (= (and b!2378657 c!378100) b!2378656))

(assert (= (and b!2378657 (not c!378100)) b!2378653))

(assert (= (and d!696356 res!1010063) b!2378650))

(assert (= (and b!2378650 c!378099) b!2378655))

(assert (= (and b!2378650 (not c!378099)) b!2378651))

(assert (= (and b!2378651 c!378101) b!2378652))

(assert (= (and b!2378651 (not c!378101)) b!2378649))

(assert (=> b!2378652 m!2783251))

(declare-fun m!2783311 () Bool)

(assert (=> d!696356 m!2783311))

(declare-fun m!2783313 () Bool)

(assert (=> d!696356 m!2783313))

(declare-fun m!2783315 () Bool)

(assert (=> b!2378655 m!2783315))

(declare-fun m!2783317 () Bool)

(assert (=> b!2378649 m!2783317))

(assert (=> b!2378651 m!2783261))

(assert (=> b!2378651 m!2783261))

(declare-fun m!2783319 () Bool)

(assert (=> b!2378651 m!2783319))

(declare-fun m!2783321 () Bool)

(assert (=> b!2378658 m!2783321))

(assert (=> b!2378650 m!2783215))

(declare-fun m!2783323 () Bool)

(assert (=> b!2378656 m!2783323))

(assert (=> b!2378557 d!696356))

(declare-fun d!696358 () Bool)

(assert (=> d!696358 (= (get!8560 lt!867668) (v!30924 lt!867668))))

(assert (=> b!2378552 d!696358))

(declare-fun d!696360 () Bool)

(assert (=> d!696360 (matchR!3091 (Concat!11610 lt!867674 EmptyExpr!6974) (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671)))))

(declare-fun lt!867722 () Unit!40991)

(declare-fun choose!13891 (Regex!6974 Regex!6974 List!28187 List!28187 List!28187) Unit!40991)

(assert (=> d!696360 (= lt!867722 (choose!13891 lt!867674 EmptyExpr!6974 (_1!16447 lt!867671) (_2!16447 lt!867671) s!9460))))

(assert (=> d!696360 (validRegex!2699 lt!867674)))

(assert (=> d!696360 (= (lemmaFindSeparationIsDefinedThenConcatMatches!5 lt!867674 EmptyExpr!6974 (_1!16447 lt!867671) (_2!16447 lt!867671) s!9460) lt!867722)))

(declare-fun bs!461726 () Bool)

(assert (= bs!461726 d!696360))

(assert (=> bs!461726 m!2783243))

(assert (=> bs!461726 m!2783243))

(assert (=> bs!461726 m!2783245))

(declare-fun m!2783325 () Bool)

(assert (=> bs!461726 m!2783325))

(assert (=> bs!461726 m!2783229))

(assert (=> b!2378552 d!696360))

(declare-fun b!2378687 () Bool)

(declare-fun e!1517374 () Bool)

(declare-fun e!1517373 () Bool)

(assert (=> b!2378687 (= e!1517374 e!1517373)))

(declare-fun res!1010085 () Bool)

(assert (=> b!2378687 (=> (not res!1010085) (not e!1517373))))

(declare-fun lt!867725 () Bool)

(assert (=> b!2378687 (= res!1010085 (not lt!867725))))

(declare-fun b!2378688 () Bool)

(declare-fun res!1010088 () Bool)

(assert (=> b!2378688 (=> res!1010088 e!1517374)))

(declare-fun e!1517375 () Bool)

(assert (=> b!2378688 (= res!1010088 e!1517375)))

(declare-fun res!1010082 () Bool)

(assert (=> b!2378688 (=> (not res!1010082) (not e!1517375))))

(assert (=> b!2378688 (= res!1010082 lt!867725)))

(declare-fun b!2378689 () Bool)

(declare-fun e!1517376 () Bool)

(declare-fun head!5183 (List!28187) C!14106)

(assert (=> b!2378689 (= e!1517376 (not (= (head!5183 (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671))) (c!378085 (Concat!11610 lt!867674 EmptyExpr!6974)))))))

(declare-fun b!2378690 () Bool)

(declare-fun res!1010084 () Bool)

(assert (=> b!2378690 (=> (not res!1010084) (not e!1517375))))

(declare-fun isEmpty!16034 (List!28187) Bool)

(declare-fun tail!3453 (List!28187) List!28187)

(assert (=> b!2378690 (= res!1010084 (isEmpty!16034 (tail!3453 (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671)))))))

(declare-fun b!2378691 () Bool)

(declare-fun res!1010083 () Bool)

(assert (=> b!2378691 (=> res!1010083 e!1517376)))

(assert (=> b!2378691 (= res!1010083 (not (isEmpty!16034 (tail!3453 (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671))))))))

(declare-fun d!696362 () Bool)

(declare-fun e!1517372 () Bool)

(assert (=> d!696362 e!1517372))

(declare-fun c!378109 () Bool)

(assert (=> d!696362 (= c!378109 (is-EmptyExpr!6974 (Concat!11610 lt!867674 EmptyExpr!6974)))))

(declare-fun e!1517371 () Bool)

(assert (=> d!696362 (= lt!867725 e!1517371)))

(declare-fun c!378108 () Bool)

(assert (=> d!696362 (= c!378108 (isEmpty!16034 (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671))))))

(assert (=> d!696362 (validRegex!2699 (Concat!11610 lt!867674 EmptyExpr!6974))))

(assert (=> d!696362 (= (matchR!3091 (Concat!11610 lt!867674 EmptyExpr!6974) (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671))) lt!867725)))

(declare-fun b!2378692 () Bool)

(declare-fun nullable!2024 (Regex!6974) Bool)

(assert (=> b!2378692 (= e!1517371 (nullable!2024 (Concat!11610 lt!867674 EmptyExpr!6974)))))

(declare-fun b!2378693 () Bool)

(declare-fun e!1517377 () Bool)

(assert (=> b!2378693 (= e!1517372 e!1517377)))

(declare-fun c!378110 () Bool)

(assert (=> b!2378693 (= c!378110 (is-EmptyLang!6974 (Concat!11610 lt!867674 EmptyExpr!6974)))))

(declare-fun b!2378694 () Bool)

(declare-fun derivativeStep!1682 (Regex!6974 C!14106) Regex!6974)

(assert (=> b!2378694 (= e!1517371 (matchR!3091 (derivativeStep!1682 (Concat!11610 lt!867674 EmptyExpr!6974) (head!5183 (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671)))) (tail!3453 (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671)))))))

(declare-fun bm!144480 () Bool)

(declare-fun call!144485 () Bool)

(assert (=> bm!144480 (= call!144485 (isEmpty!16034 (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671))))))

(declare-fun b!2378695 () Bool)

(assert (=> b!2378695 (= e!1517372 (= lt!867725 call!144485))))

(declare-fun b!2378696 () Bool)

(declare-fun res!1010087 () Bool)

(assert (=> b!2378696 (=> res!1010087 e!1517374)))

(assert (=> b!2378696 (= res!1010087 (not (is-ElementMatch!6974 (Concat!11610 lt!867674 EmptyExpr!6974))))))

(assert (=> b!2378696 (= e!1517377 e!1517374)))

(declare-fun b!2378697 () Bool)

(assert (=> b!2378697 (= e!1517377 (not lt!867725))))

(declare-fun b!2378698 () Bool)

(declare-fun res!1010081 () Bool)

(assert (=> b!2378698 (=> (not res!1010081) (not e!1517375))))

(assert (=> b!2378698 (= res!1010081 (not call!144485))))

(declare-fun b!2378699 () Bool)

(assert (=> b!2378699 (= e!1517375 (= (head!5183 (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671))) (c!378085 (Concat!11610 lt!867674 EmptyExpr!6974))))))

(declare-fun b!2378700 () Bool)

(assert (=> b!2378700 (= e!1517373 e!1517376)))

(declare-fun res!1010086 () Bool)

(assert (=> b!2378700 (=> res!1010086 e!1517376)))

(assert (=> b!2378700 (= res!1010086 call!144485)))

(assert (= (and d!696362 c!378108) b!2378692))

(assert (= (and d!696362 (not c!378108)) b!2378694))

(assert (= (and d!696362 c!378109) b!2378695))

(assert (= (and d!696362 (not c!378109)) b!2378693))

(assert (= (and b!2378693 c!378110) b!2378697))

(assert (= (and b!2378693 (not c!378110)) b!2378696))

(assert (= (and b!2378696 (not res!1010087)) b!2378688))

(assert (= (and b!2378688 res!1010082) b!2378698))

(assert (= (and b!2378698 res!1010081) b!2378690))

(assert (= (and b!2378690 res!1010084) b!2378699))

(assert (= (and b!2378688 (not res!1010088)) b!2378687))

(assert (= (and b!2378687 res!1010085) b!2378700))

(assert (= (and b!2378700 (not res!1010086)) b!2378691))

(assert (= (and b!2378691 (not res!1010083)) b!2378689))

(assert (= (or b!2378695 b!2378698 b!2378700) bm!144480))

(assert (=> bm!144480 m!2783243))

(declare-fun m!2783327 () Bool)

(assert (=> bm!144480 m!2783327))

(assert (=> b!2378690 m!2783243))

(declare-fun m!2783329 () Bool)

(assert (=> b!2378690 m!2783329))

(assert (=> b!2378690 m!2783329))

(declare-fun m!2783331 () Bool)

(assert (=> b!2378690 m!2783331))

(assert (=> b!2378699 m!2783243))

(declare-fun m!2783333 () Bool)

(assert (=> b!2378699 m!2783333))

(declare-fun m!2783335 () Bool)

(assert (=> b!2378692 m!2783335))

(assert (=> b!2378694 m!2783243))

(assert (=> b!2378694 m!2783333))

(assert (=> b!2378694 m!2783333))

(declare-fun m!2783337 () Bool)

(assert (=> b!2378694 m!2783337))

(assert (=> b!2378694 m!2783243))

(assert (=> b!2378694 m!2783329))

(assert (=> b!2378694 m!2783337))

(assert (=> b!2378694 m!2783329))

(declare-fun m!2783339 () Bool)

(assert (=> b!2378694 m!2783339))

(assert (=> d!696362 m!2783243))

(assert (=> d!696362 m!2783327))

(declare-fun m!2783341 () Bool)

(assert (=> d!696362 m!2783341))

(assert (=> b!2378691 m!2783243))

(assert (=> b!2378691 m!2783329))

(assert (=> b!2378691 m!2783329))

(assert (=> b!2378691 m!2783331))

(assert (=> b!2378689 m!2783243))

(assert (=> b!2378689 m!2783333))

(assert (=> b!2378552 d!696362))

(declare-fun b!2378710 () Bool)

(declare-fun e!1517382 () List!28187)

(assert (=> b!2378710 (= e!1517382 (Cons!28089 (h!33490 (_1!16447 lt!867671)) (++!6929 (t!208164 (_1!16447 lt!867671)) (_2!16447 lt!867671))))))

(declare-fun b!2378712 () Bool)

(declare-fun e!1517383 () Bool)

(declare-fun lt!867728 () List!28187)

(assert (=> b!2378712 (= e!1517383 (or (not (= (_2!16447 lt!867671) Nil!28089)) (= lt!867728 (_1!16447 lt!867671))))))

(declare-fun b!2378709 () Bool)

(assert (=> b!2378709 (= e!1517382 (_2!16447 lt!867671))))

(declare-fun b!2378711 () Bool)

(declare-fun res!1010094 () Bool)

(assert (=> b!2378711 (=> (not res!1010094) (not e!1517383))))

(declare-fun size!22161 (List!28187) Int)

(assert (=> b!2378711 (= res!1010094 (= (size!22161 lt!867728) (+ (size!22161 (_1!16447 lt!867671)) (size!22161 (_2!16447 lt!867671)))))))

(declare-fun d!696364 () Bool)

(assert (=> d!696364 e!1517383))

(declare-fun res!1010093 () Bool)

(assert (=> d!696364 (=> (not res!1010093) (not e!1517383))))

(declare-fun content!3823 (List!28187) (Set C!14106))

(assert (=> d!696364 (= res!1010093 (= (content!3823 lt!867728) (set.union (content!3823 (_1!16447 lt!867671)) (content!3823 (_2!16447 lt!867671)))))))

(assert (=> d!696364 (= lt!867728 e!1517382)))

(declare-fun c!378113 () Bool)

(assert (=> d!696364 (= c!378113 (is-Nil!28089 (_1!16447 lt!867671)))))

(assert (=> d!696364 (= (++!6929 (_1!16447 lt!867671) (_2!16447 lt!867671)) lt!867728)))

(assert (= (and d!696364 c!378113) b!2378709))

(assert (= (and d!696364 (not c!378113)) b!2378710))

(assert (= (and d!696364 res!1010093) b!2378711))

(assert (= (and b!2378711 res!1010094) b!2378712))

(declare-fun m!2783343 () Bool)

(assert (=> b!2378710 m!2783343))

(declare-fun m!2783345 () Bool)

(assert (=> b!2378711 m!2783345))

(declare-fun m!2783347 () Bool)

(assert (=> b!2378711 m!2783347))

(declare-fun m!2783349 () Bool)

(assert (=> b!2378711 m!2783349))

(declare-fun m!2783351 () Bool)

(assert (=> d!696364 m!2783351))

(declare-fun m!2783353 () Bool)

(assert (=> d!696364 m!2783353))

(declare-fun m!2783355 () Bool)

(assert (=> d!696364 m!2783355))

(assert (=> b!2378552 d!696364))

(declare-fun b!2378713 () Bool)

(declare-fun e!1517387 () Bool)

(declare-fun e!1517386 () Bool)

(assert (=> b!2378713 (= e!1517387 e!1517386)))

(declare-fun res!1010099 () Bool)

(assert (=> b!2378713 (=> (not res!1010099) (not e!1517386))))

(declare-fun lt!867729 () Bool)

(assert (=> b!2378713 (= res!1010099 (not lt!867729))))

(declare-fun b!2378714 () Bool)

(declare-fun res!1010102 () Bool)

(assert (=> b!2378714 (=> res!1010102 e!1517387)))

(declare-fun e!1517388 () Bool)

(assert (=> b!2378714 (= res!1010102 e!1517388)))

(declare-fun res!1010096 () Bool)

(assert (=> b!2378714 (=> (not res!1010096) (not e!1517388))))

(assert (=> b!2378714 (= res!1010096 lt!867729)))

(declare-fun b!2378715 () Bool)

(declare-fun e!1517389 () Bool)

(assert (=> b!2378715 (= e!1517389 (not (= (head!5183 s!9460) (c!378085 lt!867674))))))

(declare-fun b!2378716 () Bool)

(declare-fun res!1010098 () Bool)

(assert (=> b!2378716 (=> (not res!1010098) (not e!1517388))))

(assert (=> b!2378716 (= res!1010098 (isEmpty!16034 (tail!3453 s!9460)))))

(declare-fun b!2378717 () Bool)

(declare-fun res!1010097 () Bool)

(assert (=> b!2378717 (=> res!1010097 e!1517389)))

(assert (=> b!2378717 (= res!1010097 (not (isEmpty!16034 (tail!3453 s!9460))))))

(declare-fun d!696368 () Bool)

(declare-fun e!1517385 () Bool)

(assert (=> d!696368 e!1517385))

(declare-fun c!378115 () Bool)

(assert (=> d!696368 (= c!378115 (is-EmptyExpr!6974 lt!867674))))

(declare-fun e!1517384 () Bool)

(assert (=> d!696368 (= lt!867729 e!1517384)))

(declare-fun c!378114 () Bool)

(assert (=> d!696368 (= c!378114 (isEmpty!16034 s!9460))))

(assert (=> d!696368 (validRegex!2699 lt!867674)))

(assert (=> d!696368 (= (matchR!3091 lt!867674 s!9460) lt!867729)))

(declare-fun b!2378718 () Bool)

(assert (=> b!2378718 (= e!1517384 (nullable!2024 lt!867674))))

(declare-fun b!2378719 () Bool)

(declare-fun e!1517390 () Bool)

(assert (=> b!2378719 (= e!1517385 e!1517390)))

(declare-fun c!378116 () Bool)

(assert (=> b!2378719 (= c!378116 (is-EmptyLang!6974 lt!867674))))

(declare-fun b!2378720 () Bool)

(assert (=> b!2378720 (= e!1517384 (matchR!3091 (derivativeStep!1682 lt!867674 (head!5183 s!9460)) (tail!3453 s!9460)))))

(declare-fun bm!144481 () Bool)

(declare-fun call!144486 () Bool)

(assert (=> bm!144481 (= call!144486 (isEmpty!16034 s!9460))))

(declare-fun b!2378721 () Bool)

(assert (=> b!2378721 (= e!1517385 (= lt!867729 call!144486))))

(declare-fun b!2378722 () Bool)

(declare-fun res!1010101 () Bool)

(assert (=> b!2378722 (=> res!1010101 e!1517387)))

(assert (=> b!2378722 (= res!1010101 (not (is-ElementMatch!6974 lt!867674)))))

(assert (=> b!2378722 (= e!1517390 e!1517387)))

(declare-fun b!2378723 () Bool)

(assert (=> b!2378723 (= e!1517390 (not lt!867729))))

(declare-fun b!2378724 () Bool)

(declare-fun res!1010095 () Bool)

(assert (=> b!2378724 (=> (not res!1010095) (not e!1517388))))

(assert (=> b!2378724 (= res!1010095 (not call!144486))))

(declare-fun b!2378725 () Bool)

(assert (=> b!2378725 (= e!1517388 (= (head!5183 s!9460) (c!378085 lt!867674)))))

(declare-fun b!2378726 () Bool)

(assert (=> b!2378726 (= e!1517386 e!1517389)))

(declare-fun res!1010100 () Bool)

(assert (=> b!2378726 (=> res!1010100 e!1517389)))

(assert (=> b!2378726 (= res!1010100 call!144486)))

(assert (= (and d!696368 c!378114) b!2378718))

(assert (= (and d!696368 (not c!378114)) b!2378720))

(assert (= (and d!696368 c!378115) b!2378721))

(assert (= (and d!696368 (not c!378115)) b!2378719))

(assert (= (and b!2378719 c!378116) b!2378723))

(assert (= (and b!2378719 (not c!378116)) b!2378722))

(assert (= (and b!2378722 (not res!1010101)) b!2378714))

(assert (= (and b!2378714 res!1010096) b!2378724))

(assert (= (and b!2378724 res!1010095) b!2378716))

(assert (= (and b!2378716 res!1010098) b!2378725))

(assert (= (and b!2378714 (not res!1010102)) b!2378713))

(assert (= (and b!2378713 res!1010099) b!2378726))

(assert (= (and b!2378726 (not res!1010100)) b!2378717))

(assert (= (and b!2378717 (not res!1010097)) b!2378715))

(assert (= (or b!2378721 b!2378724 b!2378726) bm!144481))

(declare-fun m!2783357 () Bool)

(assert (=> bm!144481 m!2783357))

(declare-fun m!2783359 () Bool)

(assert (=> b!2378716 m!2783359))

(assert (=> b!2378716 m!2783359))

(declare-fun m!2783361 () Bool)

(assert (=> b!2378716 m!2783361))

(declare-fun m!2783363 () Bool)

(assert (=> b!2378725 m!2783363))

(declare-fun m!2783365 () Bool)

(assert (=> b!2378718 m!2783365))

(assert (=> b!2378720 m!2783363))

(assert (=> b!2378720 m!2783363))

(declare-fun m!2783367 () Bool)

(assert (=> b!2378720 m!2783367))

(assert (=> b!2378720 m!2783359))

(assert (=> b!2378720 m!2783367))

(assert (=> b!2378720 m!2783359))

(declare-fun m!2783369 () Bool)

(assert (=> b!2378720 m!2783369))

(assert (=> d!696368 m!2783357))

(assert (=> d!696368 m!2783229))

(assert (=> b!2378717 m!2783359))

(assert (=> b!2378717 m!2783359))

(assert (=> b!2378717 m!2783361))

(assert (=> b!2378715 m!2783363))

(assert (=> b!2378551 d!696368))

(declare-fun d!696370 () Bool)

(assert (=> d!696370 (= (head!5181 l!9164) (h!33489 l!9164))))

(assert (=> b!2378551 d!696370))

(declare-fun b!2378745 () Bool)

(declare-fun e!1517407 () Bool)

(declare-fun call!144494 () Bool)

(assert (=> b!2378745 (= e!1517407 call!144494)))

(declare-fun b!2378746 () Bool)

(declare-fun res!1010114 () Bool)

(declare-fun e!1517405 () Bool)

(assert (=> b!2378746 (=> (not res!1010114) (not e!1517405))))

(declare-fun call!144495 () Bool)

(assert (=> b!2378746 (= res!1010114 call!144495)))

(declare-fun e!1517406 () Bool)

(assert (=> b!2378746 (= e!1517406 e!1517405)))

(declare-fun b!2378747 () Bool)

(declare-fun call!144493 () Bool)

(assert (=> b!2378747 (= e!1517405 call!144493)))

(declare-fun b!2378748 () Bool)

(declare-fun e!1517408 () Bool)

(declare-fun e!1517411 () Bool)

(assert (=> b!2378748 (= e!1517408 e!1517411)))

(declare-fun res!1010117 () Bool)

(assert (=> b!2378748 (=> (not res!1010117) (not e!1517411))))

(assert (=> b!2378748 (= res!1010117 call!144493)))

(declare-fun bm!144488 () Bool)

(assert (=> bm!144488 (= call!144493 call!144494)))

(declare-fun b!2378749 () Bool)

(declare-fun e!1517410 () Bool)

(assert (=> b!2378749 (= e!1517410 e!1517406)))

(declare-fun c!378122 () Bool)

(assert (=> b!2378749 (= c!378122 (is-Union!6974 lt!867674))))

(declare-fun b!2378750 () Bool)

(assert (=> b!2378750 (= e!1517411 call!144495)))

(declare-fun b!2378751 () Bool)

(assert (=> b!2378751 (= e!1517410 e!1517407)))

(declare-fun res!1010116 () Bool)

(assert (=> b!2378751 (= res!1010116 (not (nullable!2024 (reg!7303 lt!867674))))))

(assert (=> b!2378751 (=> (not res!1010116) (not e!1517407))))

(declare-fun b!2378752 () Bool)

(declare-fun e!1517409 () Bool)

(assert (=> b!2378752 (= e!1517409 e!1517410)))

(declare-fun c!378121 () Bool)

(assert (=> b!2378752 (= c!378121 (is-Star!6974 lt!867674))))

(declare-fun b!2378753 () Bool)

(declare-fun res!1010113 () Bool)

(assert (=> b!2378753 (=> res!1010113 e!1517408)))

(assert (=> b!2378753 (= res!1010113 (not (is-Concat!11610 lt!867674)))))

(assert (=> b!2378753 (= e!1517406 e!1517408)))

(declare-fun bm!144490 () Bool)

(assert (=> bm!144490 (= call!144495 (validRegex!2699 (ite c!378122 (regOne!14461 lt!867674) (regTwo!14460 lt!867674))))))

(declare-fun d!696372 () Bool)

(declare-fun res!1010115 () Bool)

(assert (=> d!696372 (=> res!1010115 e!1517409)))

(assert (=> d!696372 (= res!1010115 (is-ElementMatch!6974 lt!867674))))

(assert (=> d!696372 (= (validRegex!2699 lt!867674) e!1517409)))

(declare-fun bm!144489 () Bool)

(assert (=> bm!144489 (= call!144494 (validRegex!2699 (ite c!378121 (reg!7303 lt!867674) (ite c!378122 (regTwo!14461 lt!867674) (regOne!14460 lt!867674)))))))

(assert (= (and d!696372 (not res!1010115)) b!2378752))

(assert (= (and b!2378752 c!378121) b!2378751))

(assert (= (and b!2378752 (not c!378121)) b!2378749))

(assert (= (and b!2378751 res!1010116) b!2378745))

(assert (= (and b!2378749 c!378122) b!2378746))

(assert (= (and b!2378749 (not c!378122)) b!2378753))

(assert (= (and b!2378746 res!1010114) b!2378747))

(assert (= (and b!2378753 (not res!1010113)) b!2378748))

(assert (= (and b!2378748 res!1010117) b!2378750))

(assert (= (or b!2378746 b!2378750) bm!144490))

(assert (= (or b!2378747 b!2378748) bm!144488))

(assert (= (or b!2378745 bm!144488) bm!144489))

(declare-fun m!2783371 () Bool)

(assert (=> b!2378751 m!2783371))

(declare-fun m!2783373 () Bool)

(assert (=> bm!144490 m!2783373))

(declare-fun m!2783375 () Bool)

(assert (=> bm!144489 m!2783375))

(assert (=> b!2378545 d!696372))

(declare-fun d!696378 () Bool)

(declare-fun isEmpty!16035 (Option!5517) Bool)

(assert (=> d!696378 (= (isDefined!4345 lt!867668) (not (isEmpty!16035 lt!867668)))))

(declare-fun bs!461727 () Bool)

(assert (= bs!461727 d!696378))

(declare-fun m!2783377 () Bool)

(assert (=> bs!461727 m!2783377))

(assert (=> b!2378545 d!696378))

(declare-fun d!696380 () Bool)

(declare-fun e!1517426 () Bool)

(assert (=> d!696380 e!1517426))

(declare-fun res!1010131 () Bool)

(assert (=> d!696380 (=> res!1010131 e!1517426)))

(declare-fun e!1517425 () Bool)

(assert (=> d!696380 (= res!1010131 e!1517425)))

(declare-fun res!1010128 () Bool)

(assert (=> d!696380 (=> (not res!1010128) (not e!1517425))))

(declare-fun lt!867740 () Option!5517)

(assert (=> d!696380 (= res!1010128 (isDefined!4345 lt!867740))))

(declare-fun e!1517422 () Option!5517)

(assert (=> d!696380 (= lt!867740 e!1517422)))

(declare-fun c!378127 () Bool)

(declare-fun e!1517424 () Bool)

(assert (=> d!696380 (= c!378127 e!1517424)))

(declare-fun res!1010129 () Bool)

(assert (=> d!696380 (=> (not res!1010129) (not e!1517424))))

(assert (=> d!696380 (= res!1010129 (matchR!3091 lt!867674 Nil!28089))))

(assert (=> d!696380 (validRegex!2699 lt!867674)))

(assert (=> d!696380 (= (findConcatSeparation!625 lt!867674 EmptyExpr!6974 Nil!28089 s!9460 s!9460) lt!867740)))

(declare-fun b!2378772 () Bool)

(declare-fun e!1517423 () Option!5517)

(assert (=> b!2378772 (= e!1517423 None!5516)))

(declare-fun b!2378773 () Bool)

(declare-fun res!1010130 () Bool)

(assert (=> b!2378773 (=> (not res!1010130) (not e!1517425))))

(assert (=> b!2378773 (= res!1010130 (matchR!3091 EmptyExpr!6974 (_2!16447 (get!8560 lt!867740))))))

(declare-fun b!2378774 () Bool)

(assert (=> b!2378774 (= e!1517425 (= (++!6929 (_1!16447 (get!8560 lt!867740)) (_2!16447 (get!8560 lt!867740))) s!9460))))

(declare-fun b!2378775 () Bool)

(assert (=> b!2378775 (= e!1517422 e!1517423)))

(declare-fun c!378128 () Bool)

(assert (=> b!2378775 (= c!378128 (is-Nil!28089 s!9460))))

(declare-fun b!2378776 () Bool)

(assert (=> b!2378776 (= e!1517422 (Some!5516 (tuple2!27813 Nil!28089 s!9460)))))

(declare-fun b!2378777 () Bool)

(declare-fun res!1010132 () Bool)

(assert (=> b!2378777 (=> (not res!1010132) (not e!1517425))))

(assert (=> b!2378777 (= res!1010132 (matchR!3091 lt!867674 (_1!16447 (get!8560 lt!867740))))))

(declare-fun b!2378778 () Bool)

(declare-fun lt!867741 () Unit!40991)

(declare-fun lt!867739 () Unit!40991)

(assert (=> b!2378778 (= lt!867741 lt!867739)))

(assert (=> b!2378778 (= (++!6929 (++!6929 Nil!28089 (Cons!28089 (h!33490 s!9460) Nil!28089)) (t!208164 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!571 (List!28187 C!14106 List!28187 List!28187) Unit!40991)

(assert (=> b!2378778 (= lt!867739 (lemmaMoveElementToOtherListKeepsConcatEq!571 Nil!28089 (h!33490 s!9460) (t!208164 s!9460) s!9460))))

(assert (=> b!2378778 (= e!1517423 (findConcatSeparation!625 lt!867674 EmptyExpr!6974 (++!6929 Nil!28089 (Cons!28089 (h!33490 s!9460) Nil!28089)) (t!208164 s!9460) s!9460))))

(declare-fun b!2378779 () Bool)

(assert (=> b!2378779 (= e!1517426 (not (isDefined!4345 lt!867740)))))

(declare-fun b!2378780 () Bool)

(assert (=> b!2378780 (= e!1517424 (matchR!3091 EmptyExpr!6974 s!9460))))

(assert (= (and d!696380 res!1010129) b!2378780))

(assert (= (and d!696380 c!378127) b!2378776))

(assert (= (and d!696380 (not c!378127)) b!2378775))

(assert (= (and b!2378775 c!378128) b!2378772))

(assert (= (and b!2378775 (not c!378128)) b!2378778))

(assert (= (and d!696380 res!1010128) b!2378777))

(assert (= (and b!2378777 res!1010132) b!2378773))

(assert (= (and b!2378773 res!1010130) b!2378774))

(assert (= (and d!696380 (not res!1010131)) b!2378779))

(declare-fun m!2783381 () Bool)

(assert (=> b!2378780 m!2783381))

(declare-fun m!2783383 () Bool)

(assert (=> b!2378778 m!2783383))

(assert (=> b!2378778 m!2783383))

(declare-fun m!2783385 () Bool)

(assert (=> b!2378778 m!2783385))

(declare-fun m!2783387 () Bool)

(assert (=> b!2378778 m!2783387))

(assert (=> b!2378778 m!2783383))

(declare-fun m!2783389 () Bool)

(assert (=> b!2378778 m!2783389))

(declare-fun m!2783391 () Bool)

(assert (=> b!2378773 m!2783391))

(declare-fun m!2783393 () Bool)

(assert (=> b!2378773 m!2783393))

(assert (=> b!2378774 m!2783391))

(declare-fun m!2783395 () Bool)

(assert (=> b!2378774 m!2783395))

(declare-fun m!2783397 () Bool)

(assert (=> d!696380 m!2783397))

(declare-fun m!2783399 () Bool)

(assert (=> d!696380 m!2783399))

(assert (=> d!696380 m!2783229))

(assert (=> b!2378777 m!2783391))

(declare-fun m!2783401 () Bool)

(assert (=> b!2378777 m!2783401))

(assert (=> b!2378779 m!2783397))

(assert (=> b!2378545 d!696380))

(declare-fun d!696384 () Bool)

(assert (=> d!696384 (= (isEmpty!16032 l!9164) (is-Nil!28088 l!9164))))

(assert (=> b!2378556 d!696384))

(declare-fun bs!461729 () Bool)

(declare-fun d!696386 () Bool)

(assert (= bs!461729 (and d!696386 start!233394)))

(declare-fun lambda!88511 () Int)

(assert (=> bs!461729 (= lambda!88511 lambda!88494)))

(declare-fun bs!461730 () Bool)

(assert (= bs!461730 (and d!696386 d!696356)))

(assert (=> bs!461730 (= lambda!88511 lambda!88510)))

(declare-fun b!2378782 () Bool)

(declare-fun e!1517431 () Bool)

(declare-fun e!1517430 () Bool)

(assert (=> b!2378782 (= e!1517431 e!1517430)))

(declare-fun c!378130 () Bool)

(assert (=> b!2378782 (= c!378130 (isEmpty!16032 lt!867677))))

(declare-fun b!2378783 () Bool)

(declare-fun e!1517429 () Bool)

(assert (=> b!2378783 (= e!1517430 e!1517429)))

(declare-fun c!378132 () Bool)

(assert (=> b!2378783 (= c!378132 (isEmpty!16032 (tail!3451 lt!867677)))))

(declare-fun b!2378784 () Bool)

(declare-fun lt!867742 () Regex!6974)

(assert (=> b!2378784 (= e!1517429 (= lt!867742 (head!5181 lt!867677)))))

(declare-fun b!2378785 () Bool)

(declare-fun e!1517428 () Regex!6974)

(assert (=> b!2378785 (= e!1517428 EmptyExpr!6974)))

(declare-fun b!2378786 () Bool)

(declare-fun e!1517427 () Regex!6974)

(assert (=> b!2378786 (= e!1517427 (h!33489 lt!867677))))

(declare-fun b!2378781 () Bool)

(assert (=> b!2378781 (= e!1517429 (isConcat!44 lt!867742))))

(assert (=> d!696386 e!1517431))

(declare-fun res!1010133 () Bool)

(assert (=> d!696386 (=> (not res!1010133) (not e!1517431))))

(assert (=> d!696386 (= res!1010133 (validRegex!2699 lt!867742))))

(assert (=> d!696386 (= lt!867742 e!1517427)))

(declare-fun c!378129 () Bool)

(declare-fun e!1517432 () Bool)

(assert (=> d!696386 (= c!378129 e!1517432)))

(declare-fun res!1010134 () Bool)

(assert (=> d!696386 (=> (not res!1010134) (not e!1517432))))

(assert (=> d!696386 (= res!1010134 (is-Cons!28088 lt!867677))))

(assert (=> d!696386 (forall!5608 lt!867677 lambda!88511)))

(assert (=> d!696386 (= (generalisedConcat!75 lt!867677) lt!867742)))

(declare-fun b!2378787 () Bool)

(assert (=> b!2378787 (= e!1517430 (isEmptyExpr!44 lt!867742))))

(declare-fun b!2378788 () Bool)

(assert (=> b!2378788 (= e!1517428 (Concat!11610 (h!33489 lt!867677) (generalisedConcat!75 (t!208163 lt!867677))))))

(declare-fun b!2378789 () Bool)

(assert (=> b!2378789 (= e!1517427 e!1517428)))

(declare-fun c!378131 () Bool)

(assert (=> b!2378789 (= c!378131 (is-Cons!28088 lt!867677))))

(declare-fun b!2378790 () Bool)

(assert (=> b!2378790 (= e!1517432 (isEmpty!16032 (t!208163 lt!867677)))))

(assert (= (and d!696386 res!1010134) b!2378790))

(assert (= (and d!696386 c!378129) b!2378786))

(assert (= (and d!696386 (not c!378129)) b!2378789))

(assert (= (and b!2378789 c!378131) b!2378788))

(assert (= (and b!2378789 (not c!378131)) b!2378785))

(assert (= (and d!696386 res!1010133) b!2378782))

(assert (= (and b!2378782 c!378130) b!2378787))

(assert (= (and b!2378782 (not c!378130)) b!2378783))

(assert (= (and b!2378783 c!378132) b!2378784))

(assert (= (and b!2378783 (not c!378132)) b!2378781))

(declare-fun m!2783403 () Bool)

(assert (=> b!2378784 m!2783403))

(declare-fun m!2783405 () Bool)

(assert (=> d!696386 m!2783405))

(declare-fun m!2783407 () Bool)

(assert (=> d!696386 m!2783407))

(declare-fun m!2783409 () Bool)

(assert (=> b!2378787 m!2783409))

(declare-fun m!2783411 () Bool)

(assert (=> b!2378781 m!2783411))

(declare-fun m!2783413 () Bool)

(assert (=> b!2378783 m!2783413))

(assert (=> b!2378783 m!2783413))

(declare-fun m!2783415 () Bool)

(assert (=> b!2378783 m!2783415))

(declare-fun m!2783417 () Bool)

(assert (=> b!2378790 m!2783417))

(assert (=> b!2378782 m!2783259))

(declare-fun m!2783419 () Bool)

(assert (=> b!2378788 m!2783419))

(assert (=> b!2378544 d!696386))

(declare-fun d!696388 () Bool)

(assert (=> d!696388 (= (isDefined!4345 (findConcatSeparation!625 (regOne!14460 r!13927) (regTwo!14460 r!13927) Nil!28089 s!9460 s!9460)) (not (isEmpty!16035 (findConcatSeparation!625 (regOne!14460 r!13927) (regTwo!14460 r!13927) Nil!28089 s!9460 s!9460))))))

(declare-fun bs!461731 () Bool)

(assert (= bs!461731 d!696388))

(assert (=> bs!461731 m!2783217))

(declare-fun m!2783421 () Bool)

(assert (=> bs!461731 m!2783421))

(assert (=> b!2378543 d!696388))

(declare-fun d!696390 () Bool)

(declare-fun choose!13892 (Int) Bool)

(assert (=> d!696390 (= (Exists!1036 lambda!88495) (choose!13892 lambda!88495))))

(declare-fun bs!461732 () Bool)

(assert (= bs!461732 d!696390))

(declare-fun m!2783423 () Bool)

(assert (=> bs!461732 m!2783423))

(assert (=> b!2378543 d!696390))

(declare-fun bs!461733 () Bool)

(declare-fun d!696392 () Bool)

(assert (= bs!461733 (and d!696392 b!2378543)))

(declare-fun lambda!88514 () Int)

(assert (=> bs!461733 (= lambda!88514 lambda!88495)))

(assert (=> bs!461733 (not (= lambda!88514 lambda!88496))))

(assert (=> d!696392 true))

(assert (=> d!696392 true))

(assert (=> d!696392 true))

(assert (=> d!696392 (= (isDefined!4345 (findConcatSeparation!625 (regOne!14460 r!13927) (regTwo!14460 r!13927) Nil!28089 s!9460 s!9460)) (Exists!1036 lambda!88514))))

(declare-fun lt!867747 () Unit!40991)

(declare-fun choose!13893 (Regex!6974 Regex!6974 List!28187) Unit!40991)

(assert (=> d!696392 (= lt!867747 (choose!13893 (regOne!14460 r!13927) (regTwo!14460 r!13927) s!9460))))

(assert (=> d!696392 (validRegex!2699 (regOne!14460 r!13927))))

(assert (=> d!696392 (= (lemmaFindConcatSeparationEquivalentToExists!625 (regOne!14460 r!13927) (regTwo!14460 r!13927) s!9460) lt!867747)))

(declare-fun bs!461734 () Bool)

(assert (= bs!461734 d!696392))

(assert (=> bs!461734 m!2783217))

(declare-fun m!2783425 () Bool)

(assert (=> bs!461734 m!2783425))

(declare-fun m!2783427 () Bool)

(assert (=> bs!461734 m!2783427))

(declare-fun m!2783429 () Bool)

(assert (=> bs!461734 m!2783429))

(assert (=> bs!461734 m!2783217))

(assert (=> bs!461734 m!2783219))

(assert (=> b!2378543 d!696392))

(declare-fun bs!461735 () Bool)

(declare-fun d!696394 () Bool)

(assert (= bs!461735 (and d!696394 b!2378543)))

(declare-fun lambda!88519 () Int)

(assert (=> bs!461735 (= lambda!88519 lambda!88495)))

(assert (=> bs!461735 (not (= lambda!88519 lambda!88496))))

(declare-fun bs!461736 () Bool)

(assert (= bs!461736 (and d!696394 d!696392)))

(assert (=> bs!461736 (= lambda!88519 lambda!88514)))

(assert (=> d!696394 true))

(assert (=> d!696394 true))

(assert (=> d!696394 true))

(declare-fun lambda!88520 () Int)

(assert (=> bs!461735 (not (= lambda!88520 lambda!88495))))

(assert (=> bs!461735 (= lambda!88520 lambda!88496)))

(assert (=> bs!461736 (not (= lambda!88520 lambda!88514))))

(declare-fun bs!461737 () Bool)

(assert (= bs!461737 d!696394))

(assert (=> bs!461737 (not (= lambda!88520 lambda!88519))))

(assert (=> d!696394 true))

(assert (=> d!696394 true))

(assert (=> d!696394 true))

(assert (=> d!696394 (= (Exists!1036 lambda!88519) (Exists!1036 lambda!88520))))

(declare-fun lt!867750 () Unit!40991)

(declare-fun choose!13894 (Regex!6974 Regex!6974 List!28187) Unit!40991)

(assert (=> d!696394 (= lt!867750 (choose!13894 (regOne!14460 r!13927) (regTwo!14460 r!13927) s!9460))))

(assert (=> d!696394 (validRegex!2699 (regOne!14460 r!13927))))

(assert (=> d!696394 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!375 (regOne!14460 r!13927) (regTwo!14460 r!13927) s!9460) lt!867750)))

(declare-fun m!2783431 () Bool)

(assert (=> bs!461737 m!2783431))

(declare-fun m!2783433 () Bool)

(assert (=> bs!461737 m!2783433))

(declare-fun m!2783435 () Bool)

(assert (=> bs!461737 m!2783435))

(assert (=> bs!461737 m!2783427))

(assert (=> b!2378543 d!696394))

(declare-fun d!696396 () Bool)

(assert (=> d!696396 (= (Exists!1036 lambda!88496) (choose!13892 lambda!88496))))

(declare-fun bs!461738 () Bool)

(assert (= bs!461738 d!696396))

(declare-fun m!2783437 () Bool)

(assert (=> bs!461738 m!2783437))

(assert (=> b!2378543 d!696396))

(declare-fun d!696398 () Bool)

(declare-fun e!1517464 () Bool)

(assert (=> d!696398 e!1517464))

(declare-fun res!1010174 () Bool)

(assert (=> d!696398 (=> res!1010174 e!1517464)))

(declare-fun e!1517463 () Bool)

(assert (=> d!696398 (= res!1010174 e!1517463)))

(declare-fun res!1010171 () Bool)

(assert (=> d!696398 (=> (not res!1010171) (not e!1517463))))

(declare-fun lt!867753 () Option!5517)

(assert (=> d!696398 (= res!1010171 (isDefined!4345 lt!867753))))

(declare-fun e!1517460 () Option!5517)

(assert (=> d!696398 (= lt!867753 e!1517460)))

(declare-fun c!378142 () Bool)

(declare-fun e!1517462 () Bool)

(assert (=> d!696398 (= c!378142 e!1517462)))

(declare-fun res!1010172 () Bool)

(assert (=> d!696398 (=> (not res!1010172) (not e!1517462))))

(assert (=> d!696398 (= res!1010172 (matchR!3091 (regOne!14460 r!13927) Nil!28089))))

(assert (=> d!696398 (validRegex!2699 (regOne!14460 r!13927))))

(assert (=> d!696398 (= (findConcatSeparation!625 (regOne!14460 r!13927) (regTwo!14460 r!13927) Nil!28089 s!9460 s!9460) lt!867753)))

(declare-fun b!2378842 () Bool)

(declare-fun e!1517461 () Option!5517)

(assert (=> b!2378842 (= e!1517461 None!5516)))

(declare-fun b!2378844 () Bool)

(declare-fun res!1010173 () Bool)

(assert (=> b!2378844 (=> (not res!1010173) (not e!1517463))))

(assert (=> b!2378844 (= res!1010173 (matchR!3091 (regTwo!14460 r!13927) (_2!16447 (get!8560 lt!867753))))))

(declare-fun b!2378846 () Bool)

(assert (=> b!2378846 (= e!1517463 (= (++!6929 (_1!16447 (get!8560 lt!867753)) (_2!16447 (get!8560 lt!867753))) s!9460))))

(declare-fun b!2378848 () Bool)

(assert (=> b!2378848 (= e!1517460 e!1517461)))

(declare-fun c!378143 () Bool)

(assert (=> b!2378848 (= c!378143 (is-Nil!28089 s!9460))))

(declare-fun b!2378849 () Bool)

(assert (=> b!2378849 (= e!1517460 (Some!5516 (tuple2!27813 Nil!28089 s!9460)))))

(declare-fun b!2378850 () Bool)

(declare-fun res!1010175 () Bool)

(assert (=> b!2378850 (=> (not res!1010175) (not e!1517463))))

(assert (=> b!2378850 (= res!1010175 (matchR!3091 (regOne!14460 r!13927) (_1!16447 (get!8560 lt!867753))))))

(declare-fun b!2378851 () Bool)

(declare-fun lt!867754 () Unit!40991)

(declare-fun lt!867752 () Unit!40991)

(assert (=> b!2378851 (= lt!867754 lt!867752)))

(assert (=> b!2378851 (= (++!6929 (++!6929 Nil!28089 (Cons!28089 (h!33490 s!9460) Nil!28089)) (t!208164 s!9460)) s!9460)))

(assert (=> b!2378851 (= lt!867752 (lemmaMoveElementToOtherListKeepsConcatEq!571 Nil!28089 (h!33490 s!9460) (t!208164 s!9460) s!9460))))

(assert (=> b!2378851 (= e!1517461 (findConcatSeparation!625 (regOne!14460 r!13927) (regTwo!14460 r!13927) (++!6929 Nil!28089 (Cons!28089 (h!33490 s!9460) Nil!28089)) (t!208164 s!9460) s!9460))))

(declare-fun b!2378852 () Bool)

(assert (=> b!2378852 (= e!1517464 (not (isDefined!4345 lt!867753)))))

(declare-fun b!2378853 () Bool)

(assert (=> b!2378853 (= e!1517462 (matchR!3091 (regTwo!14460 r!13927) s!9460))))

(assert (= (and d!696398 res!1010172) b!2378853))

(assert (= (and d!696398 c!378142) b!2378849))

(assert (= (and d!696398 (not c!378142)) b!2378848))

(assert (= (and b!2378848 c!378143) b!2378842))

(assert (= (and b!2378848 (not c!378143)) b!2378851))

(assert (= (and d!696398 res!1010171) b!2378850))

(assert (= (and b!2378850 res!1010175) b!2378844))

(assert (= (and b!2378844 res!1010173) b!2378846))

(assert (= (and d!696398 (not res!1010174)) b!2378852))

(declare-fun m!2783439 () Bool)

(assert (=> b!2378853 m!2783439))

(assert (=> b!2378851 m!2783383))

(assert (=> b!2378851 m!2783383))

(assert (=> b!2378851 m!2783385))

(assert (=> b!2378851 m!2783387))

(assert (=> b!2378851 m!2783383))

(declare-fun m!2783441 () Bool)

(assert (=> b!2378851 m!2783441))

(declare-fun m!2783443 () Bool)

(assert (=> b!2378844 m!2783443))

(declare-fun m!2783445 () Bool)

(assert (=> b!2378844 m!2783445))

(assert (=> b!2378846 m!2783443))

(declare-fun m!2783447 () Bool)

(assert (=> b!2378846 m!2783447))

(declare-fun m!2783449 () Bool)

(assert (=> d!696398 m!2783449))

(declare-fun m!2783451 () Bool)

(assert (=> d!696398 m!2783451))

(assert (=> d!696398 m!2783427))

(assert (=> b!2378850 m!2783443))

(declare-fun m!2783453 () Bool)

(assert (=> b!2378850 m!2783453))

(assert (=> b!2378852 m!2783449))

(assert (=> b!2378543 d!696398))

(declare-fun bs!461739 () Bool)

(declare-fun b!2378905 () Bool)

(assert (= bs!461739 (and b!2378905 d!696392)))

(declare-fun lambda!88525 () Int)

(assert (=> bs!461739 (not (= lambda!88525 lambda!88514))))

(declare-fun bs!461740 () Bool)

(assert (= bs!461740 (and b!2378905 d!696394)))

(assert (=> bs!461740 (not (= lambda!88525 lambda!88520))))

(declare-fun bs!461741 () Bool)

(assert (= bs!461741 (and b!2378905 b!2378543)))

(assert (=> bs!461741 (not (= lambda!88525 lambda!88496))))

(assert (=> bs!461741 (not (= lambda!88525 lambda!88495))))

(assert (=> bs!461740 (not (= lambda!88525 lambda!88519))))

(assert (=> b!2378905 true))

(assert (=> b!2378905 true))

(declare-fun bs!461742 () Bool)

(declare-fun b!2378899 () Bool)

(assert (= bs!461742 (and b!2378899 b!2378905)))

(declare-fun lambda!88526 () Int)

(assert (=> bs!461742 (not (= lambda!88526 lambda!88525))))

(declare-fun bs!461743 () Bool)

(assert (= bs!461743 (and b!2378899 d!696392)))

(assert (=> bs!461743 (not (= lambda!88526 lambda!88514))))

(declare-fun bs!461744 () Bool)

(assert (= bs!461744 (and b!2378899 d!696394)))

(assert (=> bs!461744 (= lambda!88526 lambda!88520)))

(declare-fun bs!461745 () Bool)

(assert (= bs!461745 (and b!2378899 b!2378543)))

(assert (=> bs!461745 (= lambda!88526 lambda!88496)))

(assert (=> bs!461745 (not (= lambda!88526 lambda!88495))))

(assert (=> bs!461744 (not (= lambda!88526 lambda!88519))))

(assert (=> b!2378899 true))

(assert (=> b!2378899 true))

(declare-fun b!2378898 () Bool)

(declare-fun e!1517491 () Bool)

(declare-fun e!1517489 () Bool)

(assert (=> b!2378898 (= e!1517491 e!1517489)))

(declare-fun res!1010199 () Bool)

(assert (=> b!2378898 (= res!1010199 (matchRSpec!823 (regOne!14461 r!13927) s!9460))))

(assert (=> b!2378898 (=> res!1010199 e!1517489)))

(declare-fun e!1517494 () Bool)

(declare-fun call!144504 () Bool)

(assert (=> b!2378899 (= e!1517494 call!144504)))

(declare-fun b!2378900 () Bool)

(declare-fun c!378158 () Bool)

(assert (=> b!2378900 (= c!378158 (is-Union!6974 r!13927))))

(declare-fun e!1517490 () Bool)

(assert (=> b!2378900 (= e!1517490 e!1517491)))

(declare-fun bm!144498 () Bool)

(declare-fun c!378155 () Bool)

(assert (=> bm!144498 (= call!144504 (Exists!1036 (ite c!378155 lambda!88525 lambda!88526)))))

(declare-fun b!2378901 () Bool)

(assert (=> b!2378901 (= e!1517489 (matchRSpec!823 (regTwo!14461 r!13927) s!9460))))

(declare-fun b!2378902 () Bool)

(assert (=> b!2378902 (= e!1517491 e!1517494)))

(assert (=> b!2378902 (= c!378155 (is-Star!6974 r!13927))))

(declare-fun b!2378904 () Bool)

(declare-fun res!1010198 () Bool)

(declare-fun e!1517492 () Bool)

(assert (=> b!2378904 (=> res!1010198 e!1517492)))

(declare-fun call!144503 () Bool)

(assert (=> b!2378904 (= res!1010198 call!144503)))

(assert (=> b!2378904 (= e!1517494 e!1517492)))

(assert (=> b!2378905 (= e!1517492 call!144504)))

(declare-fun b!2378906 () Bool)

(declare-fun c!378156 () Bool)

(assert (=> b!2378906 (= c!378156 (is-ElementMatch!6974 r!13927))))

(declare-fun e!1517495 () Bool)

(assert (=> b!2378906 (= e!1517495 e!1517490)))

(declare-fun bm!144499 () Bool)

(assert (=> bm!144499 (= call!144503 (isEmpty!16034 s!9460))))

(declare-fun b!2378907 () Bool)

(declare-fun e!1517493 () Bool)

(assert (=> b!2378907 (= e!1517493 call!144503)))

(declare-fun b!2378908 () Bool)

(assert (=> b!2378908 (= e!1517490 (= s!9460 (Cons!28089 (c!378085 r!13927) Nil!28089)))))

(declare-fun b!2378903 () Bool)

(assert (=> b!2378903 (= e!1517493 e!1517495)))

(declare-fun res!1010200 () Bool)

(assert (=> b!2378903 (= res!1010200 (not (is-EmptyLang!6974 r!13927)))))

(assert (=> b!2378903 (=> (not res!1010200) (not e!1517495))))

(declare-fun d!696400 () Bool)

(declare-fun c!378157 () Bool)

(assert (=> d!696400 (= c!378157 (is-EmptyExpr!6974 r!13927))))

(assert (=> d!696400 (= (matchRSpec!823 r!13927 s!9460) e!1517493)))

(assert (= (and d!696400 c!378157) b!2378907))

(assert (= (and d!696400 (not c!378157)) b!2378903))

(assert (= (and b!2378903 res!1010200) b!2378906))

(assert (= (and b!2378906 c!378156) b!2378908))

(assert (= (and b!2378906 (not c!378156)) b!2378900))

(assert (= (and b!2378900 c!378158) b!2378898))

(assert (= (and b!2378900 (not c!378158)) b!2378902))

(assert (= (and b!2378898 (not res!1010199)) b!2378901))

(assert (= (and b!2378902 c!378155) b!2378904))

(assert (= (and b!2378902 (not c!378155)) b!2378899))

(assert (= (and b!2378904 (not res!1010198)) b!2378905))

(assert (= (or b!2378905 b!2378899) bm!144498))

(assert (= (or b!2378907 b!2378904) bm!144499))

(declare-fun m!2783485 () Bool)

(assert (=> b!2378898 m!2783485))

(declare-fun m!2783487 () Bool)

(assert (=> bm!144498 m!2783487))

(declare-fun m!2783489 () Bool)

(assert (=> b!2378901 m!2783489))

(assert (=> bm!144499 m!2783357))

(assert (=> b!2378553 d!696400))

(declare-fun b!2378909 () Bool)

(declare-fun e!1517499 () Bool)

(declare-fun e!1517498 () Bool)

(assert (=> b!2378909 (= e!1517499 e!1517498)))

(declare-fun res!1010205 () Bool)

(assert (=> b!2378909 (=> (not res!1010205) (not e!1517498))))

(declare-fun lt!867758 () Bool)

(assert (=> b!2378909 (= res!1010205 (not lt!867758))))

(declare-fun b!2378910 () Bool)

(declare-fun res!1010208 () Bool)

(assert (=> b!2378910 (=> res!1010208 e!1517499)))

(declare-fun e!1517500 () Bool)

(assert (=> b!2378910 (= res!1010208 e!1517500)))

(declare-fun res!1010202 () Bool)

(assert (=> b!2378910 (=> (not res!1010202) (not e!1517500))))

(assert (=> b!2378910 (= res!1010202 lt!867758)))

(declare-fun b!2378911 () Bool)

(declare-fun e!1517501 () Bool)

(assert (=> b!2378911 (= e!1517501 (not (= (head!5183 s!9460) (c!378085 r!13927))))))

(declare-fun b!2378912 () Bool)

(declare-fun res!1010204 () Bool)

(assert (=> b!2378912 (=> (not res!1010204) (not e!1517500))))

(assert (=> b!2378912 (= res!1010204 (isEmpty!16034 (tail!3453 s!9460)))))

(declare-fun b!2378913 () Bool)

(declare-fun res!1010203 () Bool)

(assert (=> b!2378913 (=> res!1010203 e!1517501)))

(assert (=> b!2378913 (= res!1010203 (not (isEmpty!16034 (tail!3453 s!9460))))))

(declare-fun d!696406 () Bool)

(declare-fun e!1517497 () Bool)

(assert (=> d!696406 e!1517497))

(declare-fun c!378160 () Bool)

(assert (=> d!696406 (= c!378160 (is-EmptyExpr!6974 r!13927))))

(declare-fun e!1517496 () Bool)

(assert (=> d!696406 (= lt!867758 e!1517496)))

(declare-fun c!378159 () Bool)

(assert (=> d!696406 (= c!378159 (isEmpty!16034 s!9460))))

(assert (=> d!696406 (validRegex!2699 r!13927)))

(assert (=> d!696406 (= (matchR!3091 r!13927 s!9460) lt!867758)))

(declare-fun b!2378914 () Bool)

(assert (=> b!2378914 (= e!1517496 (nullable!2024 r!13927))))

(declare-fun b!2378915 () Bool)

(declare-fun e!1517502 () Bool)

(assert (=> b!2378915 (= e!1517497 e!1517502)))

(declare-fun c!378161 () Bool)

(assert (=> b!2378915 (= c!378161 (is-EmptyLang!6974 r!13927))))

(declare-fun b!2378916 () Bool)

(assert (=> b!2378916 (= e!1517496 (matchR!3091 (derivativeStep!1682 r!13927 (head!5183 s!9460)) (tail!3453 s!9460)))))

(declare-fun bm!144500 () Bool)

(declare-fun call!144505 () Bool)

(assert (=> bm!144500 (= call!144505 (isEmpty!16034 s!9460))))

(declare-fun b!2378917 () Bool)

(assert (=> b!2378917 (= e!1517497 (= lt!867758 call!144505))))

(declare-fun b!2378918 () Bool)

(declare-fun res!1010207 () Bool)

(assert (=> b!2378918 (=> res!1010207 e!1517499)))

(assert (=> b!2378918 (= res!1010207 (not (is-ElementMatch!6974 r!13927)))))

(assert (=> b!2378918 (= e!1517502 e!1517499)))

(declare-fun b!2378919 () Bool)

(assert (=> b!2378919 (= e!1517502 (not lt!867758))))

(declare-fun b!2378920 () Bool)

(declare-fun res!1010201 () Bool)

(assert (=> b!2378920 (=> (not res!1010201) (not e!1517500))))

(assert (=> b!2378920 (= res!1010201 (not call!144505))))

(declare-fun b!2378921 () Bool)

(assert (=> b!2378921 (= e!1517500 (= (head!5183 s!9460) (c!378085 r!13927)))))

(declare-fun b!2378922 () Bool)

(assert (=> b!2378922 (= e!1517498 e!1517501)))

(declare-fun res!1010206 () Bool)

(assert (=> b!2378922 (=> res!1010206 e!1517501)))

(assert (=> b!2378922 (= res!1010206 call!144505)))

(assert (= (and d!696406 c!378159) b!2378914))

(assert (= (and d!696406 (not c!378159)) b!2378916))

(assert (= (and d!696406 c!378160) b!2378917))

(assert (= (and d!696406 (not c!378160)) b!2378915))

(assert (= (and b!2378915 c!378161) b!2378919))

(assert (= (and b!2378915 (not c!378161)) b!2378918))

(assert (= (and b!2378918 (not res!1010207)) b!2378910))

(assert (= (and b!2378910 res!1010202) b!2378920))

(assert (= (and b!2378920 res!1010201) b!2378912))

(assert (= (and b!2378912 res!1010204) b!2378921))

(assert (= (and b!2378910 (not res!1010208)) b!2378909))

(assert (= (and b!2378909 res!1010205) b!2378922))

(assert (= (and b!2378922 (not res!1010206)) b!2378913))

(assert (= (and b!2378913 (not res!1010203)) b!2378911))

(assert (= (or b!2378917 b!2378920 b!2378922) bm!144500))

(assert (=> bm!144500 m!2783357))

(assert (=> b!2378912 m!2783359))

(assert (=> b!2378912 m!2783359))

(assert (=> b!2378912 m!2783361))

(assert (=> b!2378921 m!2783363))

(declare-fun m!2783491 () Bool)

(assert (=> b!2378914 m!2783491))

(assert (=> b!2378916 m!2783363))

(assert (=> b!2378916 m!2783363))

(declare-fun m!2783493 () Bool)

(assert (=> b!2378916 m!2783493))

(assert (=> b!2378916 m!2783359))

(assert (=> b!2378916 m!2783493))

(assert (=> b!2378916 m!2783359))

(declare-fun m!2783495 () Bool)

(assert (=> b!2378916 m!2783495))

(assert (=> d!696406 m!2783357))

(declare-fun m!2783497 () Bool)

(assert (=> d!696406 m!2783497))

(assert (=> b!2378913 m!2783359))

(assert (=> b!2378913 m!2783359))

(assert (=> b!2378913 m!2783361))

(assert (=> b!2378911 m!2783363))

(assert (=> b!2378553 d!696406))

(declare-fun d!696408 () Bool)

(assert (=> d!696408 (= (matchR!3091 r!13927 s!9460) (matchRSpec!823 r!13927 s!9460))))

(declare-fun lt!867761 () Unit!40991)

(declare-fun choose!13895 (Regex!6974 List!28187) Unit!40991)

(assert (=> d!696408 (= lt!867761 (choose!13895 r!13927 s!9460))))

(assert (=> d!696408 (validRegex!2699 r!13927)))

(assert (=> d!696408 (= (mainMatchTheorem!823 r!13927 s!9460) lt!867761)))

(declare-fun bs!461746 () Bool)

(assert (= bs!461746 d!696408))

(assert (=> bs!461746 m!2783255))

(assert (=> bs!461746 m!2783253))

(declare-fun m!2783499 () Bool)

(assert (=> bs!461746 m!2783499))

(assert (=> bs!461746 m!2783497))

(assert (=> b!2378553 d!696408))

(declare-fun d!696410 () Bool)

(declare-fun res!1010213 () Bool)

(declare-fun e!1517507 () Bool)

(assert (=> d!696410 (=> res!1010213 e!1517507)))

(assert (=> d!696410 (= res!1010213 (is-Nil!28088 l!9164))))

(assert (=> d!696410 (= (forall!5608 l!9164 lambda!88494) e!1517507)))

(declare-fun b!2378927 () Bool)

(declare-fun e!1517508 () Bool)

(assert (=> b!2378927 (= e!1517507 e!1517508)))

(declare-fun res!1010214 () Bool)

(assert (=> b!2378927 (=> (not res!1010214) (not e!1517508))))

(declare-fun dynLambda!12091 (Int Regex!6974) Bool)

(assert (=> b!2378927 (= res!1010214 (dynLambda!12091 lambda!88494 (h!33489 l!9164)))))

(declare-fun b!2378928 () Bool)

(assert (=> b!2378928 (= e!1517508 (forall!5608 (t!208163 l!9164) lambda!88494))))

(assert (= (and d!696410 (not res!1010213)) b!2378927))

(assert (= (and b!2378927 res!1010214) b!2378928))

(declare-fun b_lambda!74035 () Bool)

(assert (=> (not b_lambda!74035) (not b!2378927)))

(declare-fun m!2783501 () Bool)

(assert (=> b!2378927 m!2783501))

(declare-fun m!2783503 () Bool)

(assert (=> b!2378928 m!2783503))

(assert (=> start!233394 d!696410))

(declare-fun d!696412 () Bool)

(assert (=> d!696412 (= (isEmpty!16032 lt!867677) (is-Nil!28088 lt!867677))))

(assert (=> b!2378542 d!696412))

(declare-fun d!696414 () Bool)

(assert (=> d!696414 (= (tail!3451 l!9164) (t!208163 l!9164))))

(assert (=> b!2378542 d!696414))

(declare-fun b!2378942 () Bool)

(declare-fun e!1517511 () Bool)

(declare-fun tp!759625 () Bool)

(declare-fun tp!759626 () Bool)

(assert (=> b!2378942 (= e!1517511 (and tp!759625 tp!759626))))

(declare-fun b!2378941 () Bool)

(declare-fun tp!759627 () Bool)

(assert (=> b!2378941 (= e!1517511 tp!759627)))

(declare-fun b!2378940 () Bool)

(declare-fun tp!759628 () Bool)

(declare-fun tp!759624 () Bool)

(assert (=> b!2378940 (= e!1517511 (and tp!759628 tp!759624))))

(declare-fun b!2378939 () Bool)

(assert (=> b!2378939 (= e!1517511 tp_is_empty!11361)))

(assert (=> b!2378550 (= tp!759582 e!1517511)))

(assert (= (and b!2378550 (is-ElementMatch!6974 (reg!7303 r!13927))) b!2378939))

(assert (= (and b!2378550 (is-Concat!11610 (reg!7303 r!13927))) b!2378940))

(assert (= (and b!2378550 (is-Star!6974 (reg!7303 r!13927))) b!2378941))

(assert (= (and b!2378550 (is-Union!6974 (reg!7303 r!13927))) b!2378942))

(declare-fun b!2378946 () Bool)

(declare-fun e!1517512 () Bool)

(declare-fun tp!759630 () Bool)

(declare-fun tp!759631 () Bool)

(assert (=> b!2378946 (= e!1517512 (and tp!759630 tp!759631))))

(declare-fun b!2378945 () Bool)

(declare-fun tp!759632 () Bool)

(assert (=> b!2378945 (= e!1517512 tp!759632)))

(declare-fun b!2378944 () Bool)

(declare-fun tp!759633 () Bool)

(declare-fun tp!759629 () Bool)

(assert (=> b!2378944 (= e!1517512 (and tp!759633 tp!759629))))

(declare-fun b!2378943 () Bool)

(assert (=> b!2378943 (= e!1517512 tp_is_empty!11361)))

(assert (=> b!2378549 (= tp!759583 e!1517512)))

(assert (= (and b!2378549 (is-ElementMatch!6974 (regOne!14461 r!13927))) b!2378943))

(assert (= (and b!2378549 (is-Concat!11610 (regOne!14461 r!13927))) b!2378944))

(assert (= (and b!2378549 (is-Star!6974 (regOne!14461 r!13927))) b!2378945))

(assert (= (and b!2378549 (is-Union!6974 (regOne!14461 r!13927))) b!2378946))

(declare-fun b!2378952 () Bool)

(declare-fun e!1517513 () Bool)

(declare-fun tp!759635 () Bool)

(declare-fun tp!759636 () Bool)

(assert (=> b!2378952 (= e!1517513 (and tp!759635 tp!759636))))

(declare-fun b!2378951 () Bool)

(declare-fun tp!759637 () Bool)

(assert (=> b!2378951 (= e!1517513 tp!759637)))

(declare-fun b!2378950 () Bool)

(declare-fun tp!759638 () Bool)

(declare-fun tp!759634 () Bool)

(assert (=> b!2378950 (= e!1517513 (and tp!759638 tp!759634))))

(declare-fun b!2378949 () Bool)

(assert (=> b!2378949 (= e!1517513 tp_is_empty!11361)))

(assert (=> b!2378549 (= tp!759584 e!1517513)))

(assert (= (and b!2378549 (is-ElementMatch!6974 (regTwo!14461 r!13927))) b!2378949))

(assert (= (and b!2378549 (is-Concat!11610 (regTwo!14461 r!13927))) b!2378950))

(assert (= (and b!2378549 (is-Star!6974 (regTwo!14461 r!13927))) b!2378951))

(assert (= (and b!2378549 (is-Union!6974 (regTwo!14461 r!13927))) b!2378952))

(declare-fun b!2378958 () Bool)

(declare-fun e!1517516 () Bool)

(declare-fun tp!759640 () Bool)

(declare-fun tp!759641 () Bool)

(assert (=> b!2378958 (= e!1517516 (and tp!759640 tp!759641))))

(declare-fun b!2378957 () Bool)

(declare-fun tp!759642 () Bool)

(assert (=> b!2378957 (= e!1517516 tp!759642)))

(declare-fun b!2378956 () Bool)

(declare-fun tp!759643 () Bool)

(declare-fun tp!759639 () Bool)

(assert (=> b!2378956 (= e!1517516 (and tp!759643 tp!759639))))

(declare-fun b!2378955 () Bool)

(assert (=> b!2378955 (= e!1517516 tp_is_empty!11361)))

(assert (=> b!2378554 (= tp!759585 e!1517516)))

(assert (= (and b!2378554 (is-ElementMatch!6974 (regOne!14460 r!13927))) b!2378955))

(assert (= (and b!2378554 (is-Concat!11610 (regOne!14460 r!13927))) b!2378956))

(assert (= (and b!2378554 (is-Star!6974 (regOne!14460 r!13927))) b!2378957))

(assert (= (and b!2378554 (is-Union!6974 (regOne!14460 r!13927))) b!2378958))

(declare-fun b!2378964 () Bool)

(declare-fun e!1517519 () Bool)

(declare-fun tp!759645 () Bool)

(declare-fun tp!759646 () Bool)

(assert (=> b!2378964 (= e!1517519 (and tp!759645 tp!759646))))

(declare-fun b!2378963 () Bool)

(declare-fun tp!759647 () Bool)

(assert (=> b!2378963 (= e!1517519 tp!759647)))

(declare-fun b!2378962 () Bool)

(declare-fun tp!759648 () Bool)

(declare-fun tp!759644 () Bool)

(assert (=> b!2378962 (= e!1517519 (and tp!759648 tp!759644))))

(declare-fun b!2378961 () Bool)

(assert (=> b!2378961 (= e!1517519 tp_is_empty!11361)))

(assert (=> b!2378554 (= tp!759588 e!1517519)))

(assert (= (and b!2378554 (is-ElementMatch!6974 (regTwo!14460 r!13927))) b!2378961))

(assert (= (and b!2378554 (is-Concat!11610 (regTwo!14460 r!13927))) b!2378962))

(assert (= (and b!2378554 (is-Star!6974 (regTwo!14460 r!13927))) b!2378963))

(assert (= (and b!2378554 (is-Union!6974 (regTwo!14460 r!13927))) b!2378964))

(declare-fun b!2378972 () Bool)

(declare-fun e!1517522 () Bool)

(declare-fun tp!759650 () Bool)

(declare-fun tp!759651 () Bool)

(assert (=> b!2378972 (= e!1517522 (and tp!759650 tp!759651))))

(declare-fun b!2378971 () Bool)

(declare-fun tp!759652 () Bool)

(assert (=> b!2378971 (= e!1517522 tp!759652)))

(declare-fun b!2378970 () Bool)

(declare-fun tp!759653 () Bool)

(declare-fun tp!759649 () Bool)

(assert (=> b!2378970 (= e!1517522 (and tp!759653 tp!759649))))

(declare-fun b!2378969 () Bool)

(assert (=> b!2378969 (= e!1517522 tp_is_empty!11361)))

(assert (=> b!2378548 (= tp!759586 e!1517522)))

(assert (= (and b!2378548 (is-ElementMatch!6974 (h!33489 l!9164))) b!2378969))

(assert (= (and b!2378548 (is-Concat!11610 (h!33489 l!9164))) b!2378970))

(assert (= (and b!2378548 (is-Star!6974 (h!33489 l!9164))) b!2378971))

(assert (= (and b!2378548 (is-Union!6974 (h!33489 l!9164))) b!2378972))

(declare-fun b!2378977 () Bool)

(declare-fun e!1517525 () Bool)

(declare-fun tp!759658 () Bool)

(declare-fun tp!759659 () Bool)

(assert (=> b!2378977 (= e!1517525 (and tp!759658 tp!759659))))

(assert (=> b!2378548 (= tp!759589 e!1517525)))

(assert (= (and b!2378548 (is-Cons!28088 (t!208163 l!9164))) b!2378977))

(declare-fun b!2378982 () Bool)

(declare-fun e!1517528 () Bool)

(declare-fun tp!759662 () Bool)

(assert (=> b!2378982 (= e!1517528 (and tp_is_empty!11361 tp!759662))))

(assert (=> b!2378547 (= tp!759587 e!1517528)))

(assert (= (and b!2378547 (is-Cons!28089 (t!208164 s!9460))) b!2378982))

(declare-fun b_lambda!74037 () Bool)

(assert (= b_lambda!74035 (or start!233394 b_lambda!74037)))

(declare-fun bs!461747 () Bool)

(declare-fun d!696416 () Bool)

(assert (= bs!461747 (and d!696416 start!233394)))

(assert (=> bs!461747 (= (dynLambda!12091 lambda!88494 (h!33489 l!9164)) (validRegex!2699 (h!33489 l!9164)))))

(declare-fun m!2783505 () Bool)

(assert (=> bs!461747 m!2783505))

(assert (=> b!2378927 d!696416))

(push 1)

(assert (not b!2378940))

(assert (not b!2378853))

(assert (not b!2378718))

(assert (not b!2378844))

(assert (not b!2378950))

(assert (not b!2378977))

(assert (not b!2378942))

(assert (not bm!144489))

(assert (not b!2378787))

(assert (not b!2378783))

(assert (not b!2378982))

(assert (not b!2378778))

(assert (not b!2378846))

(assert (not bm!144480))

(assert (not b!2378898))

(assert (not b!2378916))

(assert (not b!2378901))

(assert (not b!2378946))

(assert (not bm!144498))

(assert (not b!2378784))

(assert (not d!696356))

(assert (not d!696406))

(assert (not b!2378962))

(assert (not b!2378951))

(assert (not b!2378773))

(assert (not b!2378720))

(assert (not d!696362))

(assert (not b!2378941))

(assert (not d!696398))

(assert (not b!2378963))

(assert (not d!696408))

(assert (not b!2378952))

(assert (not bm!144490))

(assert (not b!2378790))

(assert (not d!696386))

(assert (not b!2378751))

(assert (not b!2378774))

(assert (not b!2378852))

(assert (not b!2378691))

(assert (not d!696380))

(assert (not b!2378957))

(assert (not b!2378655))

(assert (not b!2378658))

(assert (not bm!144481))

(assert (not b!2378725))

(assert (not b!2378717))

(assert (not d!696396))

(assert (not b!2378692))

(assert (not b!2378911))

(assert (not b!2378970))

(assert (not b!2378716))

(assert (not b!2378779))

(assert (not b!2378711))

(assert (not b!2378972))

(assert (not b!2378913))

(assert (not b!2378782))

(assert (not d!696390))

(assert (not bm!144500))

(assert (not b!2378699))

(assert (not b!2378694))

(assert (not b!2378649))

(assert (not d!696360))

(assert (not bm!144499))

(assert (not b_lambda!74037))

(assert (not d!696364))

(assert (not d!696388))

(assert (not d!696394))

(assert (not b!2378651))

(assert (not b!2378928))

(assert (not b!2378851))

(assert (not b!2378777))

(assert (not b!2378958))

(assert (not b!2378710))

(assert (not b!2378971))

(assert (not b!2378656))

(assert (not b!2378781))

(assert (not b!2378850))

(assert (not b!2378780))

(assert (not d!696378))

(assert (not d!696392))

(assert (not b!2378689))

(assert (not b!2378964))

(assert (not b!2378715))

(assert (not b!2378944))

(assert (not b!2378788))

(assert (not b!2378914))

(assert (not d!696368))

(assert (not b!2378690))

(assert (not b!2378956))

(assert (not b!2378945))

(assert (not b!2378652))

(assert (not bs!461747))

(assert (not b!2378912))

(assert (not b!2378650))

(assert (not b!2378921))

(assert tp_is_empty!11361)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

