; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237790 () Bool)

(assert start!237790)

(declare-fun b!2427971 () Bool)

(assert (=> b!2427971 true))

(assert (=> b!2427971 true))

(declare-fun lambda!91488 () Int)

(declare-fun lambda!91487 () Int)

(assert (=> b!2427971 (not (= lambda!91488 lambda!91487))))

(assert (=> b!2427971 true))

(assert (=> b!2427971 true))

(declare-fun b!2427961 () Bool)

(declare-fun e!1544150 () Bool)

(declare-fun tp_is_empty!11681 () Bool)

(assert (=> b!2427961 (= e!1544150 tp_is_empty!11681)))

(declare-fun b!2427962 () Bool)

(declare-fun tp!770772 () Bool)

(assert (=> b!2427962 (= e!1544150 tp!770772)))

(declare-fun b!2427963 () Bool)

(declare-fun e!1544148 () Bool)

(declare-datatypes ((C!14426 0))(
  ( (C!14427 (val!8455 Int)) )
))
(declare-datatypes ((Regex!7134 0))(
  ( (ElementMatch!7134 (c!387314 C!14426)) (Concat!11770 (regOne!14780 Regex!7134) (regTwo!14780 Regex!7134)) (EmptyExpr!7134) (Star!7134 (reg!7463 Regex!7134)) (EmptyLang!7134) (Union!7134 (regOne!14781 Regex!7134) (regTwo!14781 Regex!7134)) )
))
(declare-datatypes ((List!28506 0))(
  ( (Nil!28408) (Cons!28408 (h!33809 Regex!7134) (t!208483 List!28506)) )
))
(declare-fun lt!876687 () List!28506)

(declare-fun generalisedConcat!235 (List!28506) Regex!7134)

(assert (=> b!2427963 (= e!1544148 (= (generalisedConcat!235 lt!876687) EmptyExpr!7134))))

(declare-fun b!2427964 () Bool)

(declare-fun tp!770776 () Bool)

(declare-fun tp!770774 () Bool)

(assert (=> b!2427964 (= e!1544150 (and tp!770776 tp!770774))))

(declare-fun b!2427965 () Bool)

(declare-fun e!1544151 () Bool)

(assert (=> b!2427965 (= e!1544151 e!1544148)))

(declare-fun res!1031213 () Bool)

(assert (=> b!2427965 (=> res!1031213 e!1544148)))

(declare-fun isEmpty!16445 (List!28506) Bool)

(assert (=> b!2427965 (= res!1031213 (not (isEmpty!16445 lt!876687)))))

(declare-fun l!9164 () List!28506)

(declare-fun tail!3750 (List!28506) List!28506)

(assert (=> b!2427965 (= lt!876687 (tail!3750 l!9164))))

(declare-fun b!2427967 () Bool)

(declare-fun res!1031214 () Bool)

(assert (=> b!2427967 (=> res!1031214 e!1544151)))

(assert (=> b!2427967 (= res!1031214 (isEmpty!16445 l!9164))))

(declare-fun b!2427968 () Bool)

(declare-fun e!1544147 () Bool)

(declare-fun tp!770777 () Bool)

(assert (=> b!2427968 (= e!1544147 (and tp_is_empty!11681 tp!770777))))

(declare-fun b!2427969 () Bool)

(declare-fun res!1031212 () Bool)

(declare-fun e!1544145 () Bool)

(assert (=> b!2427969 (=> (not res!1031212) (not e!1544145))))

(declare-fun r!13927 () Regex!7134)

(assert (=> b!2427969 (= res!1031212 (= r!13927 (generalisedConcat!235 l!9164)))))

(declare-fun b!2427970 () Bool)

(declare-fun tp!770773 () Bool)

(declare-fun tp!770778 () Bool)

(assert (=> b!2427970 (= e!1544150 (and tp!770773 tp!770778))))

(declare-fun e!1544146 () Bool)

(assert (=> b!2427971 (= e!1544146 e!1544151)))

(declare-fun res!1031211 () Bool)

(assert (=> b!2427971 (=> res!1031211 e!1544151)))

(declare-fun lt!876689 () Bool)

(declare-fun lt!876690 () Bool)

(assert (=> b!2427971 (= res!1031211 (not (= lt!876689 lt!876690)))))

(declare-fun Exists!1174 (Int) Bool)

(assert (=> b!2427971 (= (Exists!1174 lambda!91487) (Exists!1174 lambda!91488))))

(declare-datatypes ((Unit!41655 0))(
  ( (Unit!41656) )
))
(declare-fun lt!876691 () Unit!41655)

(declare-datatypes ((List!28507 0))(
  ( (Nil!28409) (Cons!28409 (h!33810 C!14426) (t!208484 List!28507)) )
))
(declare-fun s!9460 () List!28507)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!431 (Regex!7134 Regex!7134 List!28507) Unit!41655)

(assert (=> b!2427971 (= lt!876691 (lemmaExistCutMatchRandMatchRSpecEquivalent!431 (regOne!14780 r!13927) (regTwo!14780 r!13927) s!9460))))

(assert (=> b!2427971 (= lt!876690 (Exists!1174 lambda!91487))))

(declare-datatypes ((tuple2!28048 0))(
  ( (tuple2!28049 (_1!16565 List!28507) (_2!16565 List!28507)) )
))
(declare-datatypes ((Option!5635 0))(
  ( (None!5634) (Some!5634 (v!31042 tuple2!28048)) )
))
(declare-fun isDefined!4461 (Option!5635) Bool)

(declare-fun findConcatSeparation!743 (Regex!7134 Regex!7134 List!28507 List!28507 List!28507) Option!5635)

(assert (=> b!2427971 (= lt!876690 (isDefined!4461 (findConcatSeparation!743 (regOne!14780 r!13927) (regTwo!14780 r!13927) Nil!28409 s!9460 s!9460)))))

(declare-fun lt!876693 () Unit!41655)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!681 (Regex!7134 Regex!7134 List!28507) Unit!41655)

(assert (=> b!2427971 (= lt!876693 (lemmaFindConcatSeparationEquivalentToExists!681 (regOne!14780 r!13927) (regTwo!14780 r!13927) s!9460))))

(declare-fun b!2427972 () Bool)

(declare-fun e!1544149 () Bool)

(declare-fun tp!770779 () Bool)

(declare-fun tp!770775 () Bool)

(assert (=> b!2427972 (= e!1544149 (and tp!770779 tp!770775))))

(declare-fun b!2427966 () Bool)

(assert (=> b!2427966 (= e!1544145 (not e!1544146))))

(declare-fun res!1031215 () Bool)

(assert (=> b!2427966 (=> res!1031215 e!1544146)))

(assert (=> b!2427966 (= res!1031215 (not (is-Concat!11770 r!13927)))))

(declare-fun lt!876688 () Bool)

(assert (=> b!2427966 (= lt!876688 lt!876689)))

(declare-fun matchRSpec!983 (Regex!7134 List!28507) Bool)

(assert (=> b!2427966 (= lt!876689 (matchRSpec!983 r!13927 s!9460))))

(declare-fun matchR!3251 (Regex!7134 List!28507) Bool)

(assert (=> b!2427966 (= lt!876688 (matchR!3251 r!13927 s!9460))))

(declare-fun lt!876692 () Unit!41655)

(declare-fun mainMatchTheorem!983 (Regex!7134 List!28507) Unit!41655)

(assert (=> b!2427966 (= lt!876692 (mainMatchTheorem!983 r!13927 s!9460))))

(declare-fun res!1031216 () Bool)

(assert (=> start!237790 (=> (not res!1031216) (not e!1544145))))

(declare-fun lambda!91486 () Int)

(declare-fun forall!5768 (List!28506 Int) Bool)

(assert (=> start!237790 (= res!1031216 (forall!5768 l!9164 lambda!91486))))

(assert (=> start!237790 e!1544145))

(assert (=> start!237790 e!1544149))

(assert (=> start!237790 e!1544150))

(assert (=> start!237790 e!1544147))

(assert (= (and start!237790 res!1031216) b!2427969))

(assert (= (and b!2427969 res!1031212) b!2427966))

(assert (= (and b!2427966 (not res!1031215)) b!2427971))

(assert (= (and b!2427971 (not res!1031211)) b!2427967))

(assert (= (and b!2427967 (not res!1031214)) b!2427965))

(assert (= (and b!2427965 (not res!1031213)) b!2427963))

(assert (= (and start!237790 (is-Cons!28408 l!9164)) b!2427972))

(assert (= (and start!237790 (is-ElementMatch!7134 r!13927)) b!2427961))

(assert (= (and start!237790 (is-Concat!11770 r!13927)) b!2427970))

(assert (= (and start!237790 (is-Star!7134 r!13927)) b!2427962))

(assert (= (and start!237790 (is-Union!7134 r!13927)) b!2427964))

(assert (= (and start!237790 (is-Cons!28409 s!9460)) b!2427968))

(declare-fun m!2812339 () Bool)

(assert (=> b!2427963 m!2812339))

(declare-fun m!2812341 () Bool)

(assert (=> b!2427967 m!2812341))

(declare-fun m!2812343 () Bool)

(assert (=> b!2427971 m!2812343))

(declare-fun m!2812345 () Bool)

(assert (=> b!2427971 m!2812345))

(declare-fun m!2812347 () Bool)

(assert (=> b!2427971 m!2812347))

(assert (=> b!2427971 m!2812343))

(declare-fun m!2812349 () Bool)

(assert (=> b!2427971 m!2812349))

(declare-fun m!2812351 () Bool)

(assert (=> b!2427971 m!2812351))

(declare-fun m!2812353 () Bool)

(assert (=> b!2427971 m!2812353))

(assert (=> b!2427971 m!2812349))

(declare-fun m!2812355 () Bool)

(assert (=> b!2427969 m!2812355))

(declare-fun m!2812357 () Bool)

(assert (=> b!2427966 m!2812357))

(declare-fun m!2812359 () Bool)

(assert (=> b!2427966 m!2812359))

(declare-fun m!2812361 () Bool)

(assert (=> b!2427966 m!2812361))

(declare-fun m!2812363 () Bool)

(assert (=> b!2427965 m!2812363))

(declare-fun m!2812365 () Bool)

(assert (=> b!2427965 m!2812365))

(declare-fun m!2812367 () Bool)

(assert (=> start!237790 m!2812367))

(push 1)

(assert (not b!2427970))

(assert (not b!2427962))

(assert (not b!2427967))

(assert (not b!2427968))

(assert (not b!2427969))

(assert (not start!237790))

(assert (not b!2427963))

(assert (not b!2427964))

(assert (not b!2427972))

(assert (not b!2427971))

(assert (not b!2427966))

(assert tp_is_empty!11681)

(assert (not b!2427965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!702844 () Bool)

(declare-fun choose!14390 (Int) Bool)

(assert (=> d!702844 (= (Exists!1174 lambda!91487) (choose!14390 lambda!91487))))

(declare-fun bs!464011 () Bool)

(assert (= bs!464011 d!702844))

(declare-fun m!2812401 () Bool)

(assert (=> bs!464011 m!2812401))

(assert (=> b!2427971 d!702844))

(declare-fun bs!464013 () Bool)

(declare-fun d!702846 () Bool)

(assert (= bs!464013 (and d!702846 b!2427971)))

(declare-fun lambda!91502 () Int)

(assert (=> bs!464013 (= lambda!91502 lambda!91487)))

(assert (=> bs!464013 (not (= lambda!91502 lambda!91488))))

(assert (=> d!702846 true))

(assert (=> d!702846 true))

(assert (=> d!702846 true))

(assert (=> d!702846 (= (isDefined!4461 (findConcatSeparation!743 (regOne!14780 r!13927) (regTwo!14780 r!13927) Nil!28409 s!9460 s!9460)) (Exists!1174 lambda!91502))))

(declare-fun lt!876717 () Unit!41655)

(declare-fun choose!14391 (Regex!7134 Regex!7134 List!28507) Unit!41655)

(assert (=> d!702846 (= lt!876717 (choose!14391 (regOne!14780 r!13927) (regTwo!14780 r!13927) s!9460))))

(declare-fun validRegex!2853 (Regex!7134) Bool)

(assert (=> d!702846 (validRegex!2853 (regOne!14780 r!13927))))

(assert (=> d!702846 (= (lemmaFindConcatSeparationEquivalentToExists!681 (regOne!14780 r!13927) (regTwo!14780 r!13927) s!9460) lt!876717)))

(declare-fun bs!464014 () Bool)

(assert (= bs!464014 d!702846))

(declare-fun m!2812405 () Bool)

(assert (=> bs!464014 m!2812405))

(declare-fun m!2812407 () Bool)

(assert (=> bs!464014 m!2812407))

(assert (=> bs!464014 m!2812343))

(assert (=> bs!464014 m!2812345))

(assert (=> bs!464014 m!2812343))

(declare-fun m!2812409 () Bool)

(assert (=> bs!464014 m!2812409))

(assert (=> b!2427971 d!702846))

(declare-fun bs!464015 () Bool)

(declare-fun d!702850 () Bool)

(assert (= bs!464015 (and d!702850 b!2427971)))

(declare-fun lambda!91509 () Int)

(assert (=> bs!464015 (= lambda!91509 lambda!91487)))

(assert (=> bs!464015 (not (= lambda!91509 lambda!91488))))

(declare-fun bs!464016 () Bool)

(assert (= bs!464016 (and d!702850 d!702846)))

(assert (=> bs!464016 (= lambda!91509 lambda!91502)))

(assert (=> d!702850 true))

(assert (=> d!702850 true))

(assert (=> d!702850 true))

(declare-fun lambda!91511 () Int)

(assert (=> bs!464015 (not (= lambda!91511 lambda!91487))))

(assert (=> bs!464015 (= lambda!91511 lambda!91488)))

(assert (=> bs!464016 (not (= lambda!91511 lambda!91502))))

(declare-fun bs!464018 () Bool)

(assert (= bs!464018 d!702850))

(assert (=> bs!464018 (not (= lambda!91511 lambda!91509))))

(assert (=> d!702850 true))

(assert (=> d!702850 true))

(assert (=> d!702850 true))

(assert (=> d!702850 (= (Exists!1174 lambda!91509) (Exists!1174 lambda!91511))))

(declare-fun lt!876722 () Unit!41655)

(declare-fun choose!14392 (Regex!7134 Regex!7134 List!28507) Unit!41655)

(assert (=> d!702850 (= lt!876722 (choose!14392 (regOne!14780 r!13927) (regTwo!14780 r!13927) s!9460))))

(assert (=> d!702850 (validRegex!2853 (regOne!14780 r!13927))))

(assert (=> d!702850 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!431 (regOne!14780 r!13927) (regTwo!14780 r!13927) s!9460) lt!876722)))

(declare-fun m!2812411 () Bool)

(assert (=> bs!464018 m!2812411))

(declare-fun m!2812413 () Bool)

(assert (=> bs!464018 m!2812413))

(declare-fun m!2812415 () Bool)

(assert (=> bs!464018 m!2812415))

(assert (=> bs!464018 m!2812407))

(assert (=> b!2427971 d!702850))

(declare-fun b!2428063 () Bool)

(declare-fun res!1031273 () Bool)

(declare-fun e!1544199 () Bool)

(assert (=> b!2428063 (=> (not res!1031273) (not e!1544199))))

(declare-fun lt!876734 () Option!5635)

(declare-fun get!8753 (Option!5635) tuple2!28048)

(assert (=> b!2428063 (= res!1031273 (matchR!3251 (regTwo!14780 r!13927) (_2!16565 (get!8753 lt!876734))))))

(declare-fun b!2428064 () Bool)

(declare-fun e!1544197 () Option!5635)

(assert (=> b!2428064 (= e!1544197 (Some!5634 (tuple2!28049 Nil!28409 s!9460)))))

(declare-fun b!2428065 () Bool)

(declare-fun ++!7054 (List!28507 List!28507) List!28507)

(assert (=> b!2428065 (= e!1544199 (= (++!7054 (_1!16565 (get!8753 lt!876734)) (_2!16565 (get!8753 lt!876734))) s!9460))))

(declare-fun b!2428066 () Bool)

(declare-fun e!1544198 () Option!5635)

(assert (=> b!2428066 (= e!1544197 e!1544198)))

(declare-fun c!387320 () Bool)

(assert (=> b!2428066 (= c!387320 (is-Nil!28409 s!9460))))

(declare-fun d!702852 () Bool)

(declare-fun e!1544200 () Bool)

(assert (=> d!702852 e!1544200))

(declare-fun res!1031274 () Bool)

(assert (=> d!702852 (=> res!1031274 e!1544200)))

(assert (=> d!702852 (= res!1031274 e!1544199)))

(declare-fun res!1031277 () Bool)

(assert (=> d!702852 (=> (not res!1031277) (not e!1544199))))

(assert (=> d!702852 (= res!1031277 (isDefined!4461 lt!876734))))

(assert (=> d!702852 (= lt!876734 e!1544197)))

(declare-fun c!387321 () Bool)

(declare-fun e!1544201 () Bool)

(assert (=> d!702852 (= c!387321 e!1544201)))

(declare-fun res!1031276 () Bool)

(assert (=> d!702852 (=> (not res!1031276) (not e!1544201))))

(assert (=> d!702852 (= res!1031276 (matchR!3251 (regOne!14780 r!13927) Nil!28409))))

(assert (=> d!702852 (validRegex!2853 (regOne!14780 r!13927))))

(assert (=> d!702852 (= (findConcatSeparation!743 (regOne!14780 r!13927) (regTwo!14780 r!13927) Nil!28409 s!9460 s!9460) lt!876734)))

(declare-fun b!2428067 () Bool)

(assert (=> b!2428067 (= e!1544201 (matchR!3251 (regTwo!14780 r!13927) s!9460))))

(declare-fun b!2428068 () Bool)

(declare-fun lt!876733 () Unit!41655)

(declare-fun lt!876732 () Unit!41655)

(assert (=> b!2428068 (= lt!876733 lt!876732)))

(assert (=> b!2428068 (= (++!7054 (++!7054 Nil!28409 (Cons!28409 (h!33810 s!9460) Nil!28409)) (t!208484 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!680 (List!28507 C!14426 List!28507 List!28507) Unit!41655)

(assert (=> b!2428068 (= lt!876732 (lemmaMoveElementToOtherListKeepsConcatEq!680 Nil!28409 (h!33810 s!9460) (t!208484 s!9460) s!9460))))

(assert (=> b!2428068 (= e!1544198 (findConcatSeparation!743 (regOne!14780 r!13927) (regTwo!14780 r!13927) (++!7054 Nil!28409 (Cons!28409 (h!33810 s!9460) Nil!28409)) (t!208484 s!9460) s!9460))))

(declare-fun b!2428069 () Bool)

(declare-fun res!1031275 () Bool)

(assert (=> b!2428069 (=> (not res!1031275) (not e!1544199))))

(assert (=> b!2428069 (= res!1031275 (matchR!3251 (regOne!14780 r!13927) (_1!16565 (get!8753 lt!876734))))))

(declare-fun b!2428070 () Bool)

(assert (=> b!2428070 (= e!1544200 (not (isDefined!4461 lt!876734)))))

(declare-fun b!2428071 () Bool)

(assert (=> b!2428071 (= e!1544198 None!5634)))

(assert (= (and d!702852 res!1031276) b!2428067))

(assert (= (and d!702852 c!387321) b!2428064))

(assert (= (and d!702852 (not c!387321)) b!2428066))

(assert (= (and b!2428066 c!387320) b!2428071))

(assert (= (and b!2428066 (not c!387320)) b!2428068))

(assert (= (and d!702852 res!1031277) b!2428069))

(assert (= (and b!2428069 res!1031275) b!2428063))

(assert (= (and b!2428063 res!1031273) b!2428065))

(assert (= (and d!702852 (not res!1031274)) b!2428070))

(declare-fun m!2812423 () Bool)

(assert (=> b!2428065 m!2812423))

(declare-fun m!2812425 () Bool)

(assert (=> b!2428065 m!2812425))

(declare-fun m!2812427 () Bool)

(assert (=> d!702852 m!2812427))

(declare-fun m!2812429 () Bool)

(assert (=> d!702852 m!2812429))

(assert (=> d!702852 m!2812407))

(assert (=> b!2428069 m!2812423))

(declare-fun m!2812431 () Bool)

(assert (=> b!2428069 m!2812431))

(assert (=> b!2428070 m!2812427))

(declare-fun m!2812433 () Bool)

(assert (=> b!2428068 m!2812433))

(assert (=> b!2428068 m!2812433))

(declare-fun m!2812435 () Bool)

(assert (=> b!2428068 m!2812435))

(declare-fun m!2812437 () Bool)

(assert (=> b!2428068 m!2812437))

(assert (=> b!2428068 m!2812433))

(declare-fun m!2812439 () Bool)

(assert (=> b!2428068 m!2812439))

(assert (=> b!2428063 m!2812423))

(declare-fun m!2812441 () Bool)

(assert (=> b!2428063 m!2812441))

(declare-fun m!2812443 () Bool)

(assert (=> b!2428067 m!2812443))

(assert (=> b!2427971 d!702852))

(declare-fun d!702856 () Bool)

(declare-fun isEmpty!16447 (Option!5635) Bool)

(assert (=> d!702856 (= (isDefined!4461 (findConcatSeparation!743 (regOne!14780 r!13927) (regTwo!14780 r!13927) Nil!28409 s!9460 s!9460)) (not (isEmpty!16447 (findConcatSeparation!743 (regOne!14780 r!13927) (regTwo!14780 r!13927) Nil!28409 s!9460 s!9460))))))

(declare-fun bs!464020 () Bool)

(assert (= bs!464020 d!702856))

(assert (=> bs!464020 m!2812343))

(declare-fun m!2812445 () Bool)

(assert (=> bs!464020 m!2812445))

(assert (=> b!2427971 d!702856))

(declare-fun d!702858 () Bool)

(assert (=> d!702858 (= (Exists!1174 lambda!91488) (choose!14390 lambda!91488))))

(declare-fun bs!464021 () Bool)

(assert (= bs!464021 d!702858))

(declare-fun m!2812447 () Bool)

(assert (=> bs!464021 m!2812447))

(assert (=> b!2427971 d!702858))

(declare-fun bs!464026 () Bool)

(declare-fun b!2428121 () Bool)

(assert (= bs!464026 (and b!2428121 d!702850)))

(declare-fun lambda!91522 () Int)

(assert (=> bs!464026 (not (= lambda!91522 lambda!91511))))

(declare-fun bs!464027 () Bool)

(assert (= bs!464027 (and b!2428121 b!2427971)))

(assert (=> bs!464027 (not (= lambda!91522 lambda!91488))))

(assert (=> bs!464026 (not (= lambda!91522 lambda!91509))))

(assert (=> bs!464027 (not (= lambda!91522 lambda!91487))))

(declare-fun bs!464028 () Bool)

(assert (= bs!464028 (and b!2428121 d!702846)))

(assert (=> bs!464028 (not (= lambda!91522 lambda!91502))))

(assert (=> b!2428121 true))

(assert (=> b!2428121 true))

(declare-fun bs!464029 () Bool)

(declare-fun b!2428122 () Bool)

(assert (= bs!464029 (and b!2428122 d!702850)))

(declare-fun lambda!91523 () Int)

(assert (=> bs!464029 (= lambda!91523 lambda!91511)))

(declare-fun bs!464030 () Bool)

(assert (= bs!464030 (and b!2428122 b!2428121)))

(assert (=> bs!464030 (not (= lambda!91523 lambda!91522))))

(declare-fun bs!464031 () Bool)

(assert (= bs!464031 (and b!2428122 b!2427971)))

(assert (=> bs!464031 (= lambda!91523 lambda!91488)))

(assert (=> bs!464029 (not (= lambda!91523 lambda!91509))))

(assert (=> bs!464031 (not (= lambda!91523 lambda!91487))))

(declare-fun bs!464032 () Bool)

(assert (= bs!464032 (and b!2428122 d!702846)))

(assert (=> bs!464032 (not (= lambda!91523 lambda!91502))))

(assert (=> b!2428122 true))

(assert (=> b!2428122 true))

(declare-fun bm!148588 () Bool)

(declare-fun call!148594 () Bool)

(declare-fun isEmpty!16448 (List!28507) Bool)

(assert (=> bm!148588 (= call!148594 (isEmpty!16448 s!9460))))

(declare-fun b!2428112 () Bool)

(declare-fun res!1031304 () Bool)

(declare-fun e!1544226 () Bool)

(assert (=> b!2428112 (=> res!1031304 e!1544226)))

(assert (=> b!2428112 (= res!1031304 call!148594)))

(declare-fun e!1544225 () Bool)

(assert (=> b!2428112 (= e!1544225 e!1544226)))

(declare-fun bm!148589 () Bool)

(declare-fun call!148593 () Bool)

(declare-fun c!387333 () Bool)

(assert (=> bm!148589 (= call!148593 (Exists!1174 (ite c!387333 lambda!91522 lambda!91523)))))

(declare-fun b!2428113 () Bool)

(declare-fun c!387331 () Bool)

(assert (=> b!2428113 (= c!387331 (is-ElementMatch!7134 r!13927))))

(declare-fun e!1544229 () Bool)

(declare-fun e!1544227 () Bool)

(assert (=> b!2428113 (= e!1544229 e!1544227)))

(declare-fun b!2428114 () Bool)

(declare-fun e!1544230 () Bool)

(assert (=> b!2428114 (= e!1544230 call!148594)))

(declare-fun b!2428115 () Bool)

(declare-fun e!1544224 () Bool)

(declare-fun e!1544228 () Bool)

(assert (=> b!2428115 (= e!1544224 e!1544228)))

(declare-fun res!1031302 () Bool)

(assert (=> b!2428115 (= res!1031302 (matchRSpec!983 (regOne!14781 r!13927) s!9460))))

(assert (=> b!2428115 (=> res!1031302 e!1544228)))

(declare-fun b!2428116 () Bool)

(assert (=> b!2428116 (= e!1544224 e!1544225)))

(assert (=> b!2428116 (= c!387333 (is-Star!7134 r!13927))))

(declare-fun b!2428117 () Bool)

(assert (=> b!2428117 (= e!1544227 (= s!9460 (Cons!28409 (c!387314 r!13927) Nil!28409)))))

(declare-fun b!2428118 () Bool)

(declare-fun c!387332 () Bool)

(assert (=> b!2428118 (= c!387332 (is-Union!7134 r!13927))))

(assert (=> b!2428118 (= e!1544227 e!1544224)))

(declare-fun b!2428119 () Bool)

(assert (=> b!2428119 (= e!1544230 e!1544229)))

(declare-fun res!1031303 () Bool)

(assert (=> b!2428119 (= res!1031303 (not (is-EmptyLang!7134 r!13927)))))

(assert (=> b!2428119 (=> (not res!1031303) (not e!1544229))))

(declare-fun b!2428120 () Bool)

(assert (=> b!2428120 (= e!1544228 (matchRSpec!983 (regTwo!14781 r!13927) s!9460))))

(declare-fun d!702860 () Bool)

(declare-fun c!387330 () Bool)

(assert (=> d!702860 (= c!387330 (is-EmptyExpr!7134 r!13927))))

(assert (=> d!702860 (= (matchRSpec!983 r!13927 s!9460) e!1544230)))

(assert (=> b!2428121 (= e!1544226 call!148593)))

(assert (=> b!2428122 (= e!1544225 call!148593)))

(assert (= (and d!702860 c!387330) b!2428114))

(assert (= (and d!702860 (not c!387330)) b!2428119))

(assert (= (and b!2428119 res!1031303) b!2428113))

(assert (= (and b!2428113 c!387331) b!2428117))

(assert (= (and b!2428113 (not c!387331)) b!2428118))

(assert (= (and b!2428118 c!387332) b!2428115))

(assert (= (and b!2428118 (not c!387332)) b!2428116))

(assert (= (and b!2428115 (not res!1031302)) b!2428120))

(assert (= (and b!2428116 c!387333) b!2428112))

(assert (= (and b!2428116 (not c!387333)) b!2428122))

(assert (= (and b!2428112 (not res!1031304)) b!2428121))

(assert (= (or b!2428121 b!2428122) bm!148589))

(assert (= (or b!2428114 b!2428112) bm!148588))

(declare-fun m!2812457 () Bool)

(assert (=> bm!148588 m!2812457))

(declare-fun m!2812459 () Bool)

(assert (=> bm!148589 m!2812459))

(declare-fun m!2812461 () Bool)

(assert (=> b!2428115 m!2812461))

(declare-fun m!2812463 () Bool)

(assert (=> b!2428120 m!2812463))

(assert (=> b!2427966 d!702860))

(declare-fun b!2428151 () Bool)

(declare-fun e!1544245 () Bool)

(declare-fun derivativeStep!1825 (Regex!7134 C!14426) Regex!7134)

(declare-fun head!5478 (List!28507) C!14426)

(declare-fun tail!3752 (List!28507) List!28507)

(assert (=> b!2428151 (= e!1544245 (matchR!3251 (derivativeStep!1825 r!13927 (head!5478 s!9460)) (tail!3752 s!9460)))))

(declare-fun b!2428152 () Bool)

(declare-fun res!1031324 () Bool)

(declare-fun e!1544249 () Bool)

(assert (=> b!2428152 (=> res!1031324 e!1544249)))

(declare-fun e!1544246 () Bool)

(assert (=> b!2428152 (= res!1031324 e!1544246)))

(declare-fun res!1031322 () Bool)

(assert (=> b!2428152 (=> (not res!1031322) (not e!1544246))))

(declare-fun lt!876738 () Bool)

(assert (=> b!2428152 (= res!1031322 lt!876738)))

(declare-fun b!2428153 () Bool)

(declare-fun e!1544251 () Bool)

(assert (=> b!2428153 (= e!1544251 (not lt!876738))))

(declare-fun b!2428154 () Bool)

(declare-fun res!1031321 () Bool)

(declare-fun e!1544247 () Bool)

(assert (=> b!2428154 (=> res!1031321 e!1544247)))

(assert (=> b!2428154 (= res!1031321 (not (isEmpty!16448 (tail!3752 s!9460))))))

(declare-fun b!2428155 () Bool)

(declare-fun res!1031328 () Bool)

(assert (=> b!2428155 (=> res!1031328 e!1544249)))

(assert (=> b!2428155 (= res!1031328 (not (is-ElementMatch!7134 r!13927)))))

(assert (=> b!2428155 (= e!1544251 e!1544249)))

(declare-fun b!2428156 () Bool)

(declare-fun e!1544250 () Bool)

(assert (=> b!2428156 (= e!1544249 e!1544250)))

(declare-fun res!1031326 () Bool)

(assert (=> b!2428156 (=> (not res!1031326) (not e!1544250))))

(assert (=> b!2428156 (= res!1031326 (not lt!876738))))

(declare-fun b!2428157 () Bool)

(declare-fun res!1031323 () Bool)

(assert (=> b!2428157 (=> (not res!1031323) (not e!1544246))))

(assert (=> b!2428157 (= res!1031323 (isEmpty!16448 (tail!3752 s!9460)))))

(declare-fun d!702866 () Bool)

(declare-fun e!1544248 () Bool)

(assert (=> d!702866 e!1544248))

(declare-fun c!387342 () Bool)

(assert (=> d!702866 (= c!387342 (is-EmptyExpr!7134 r!13927))))

(assert (=> d!702866 (= lt!876738 e!1544245)))

(declare-fun c!387340 () Bool)

(assert (=> d!702866 (= c!387340 (isEmpty!16448 s!9460))))

(assert (=> d!702866 (validRegex!2853 r!13927)))

(assert (=> d!702866 (= (matchR!3251 r!13927 s!9460) lt!876738)))

(declare-fun bm!148592 () Bool)

(declare-fun call!148597 () Bool)

(assert (=> bm!148592 (= call!148597 (isEmpty!16448 s!9460))))

(declare-fun b!2428158 () Bool)

(assert (=> b!2428158 (= e!1544248 (= lt!876738 call!148597))))

(declare-fun b!2428159 () Bool)

(declare-fun res!1031325 () Bool)

(assert (=> b!2428159 (=> (not res!1031325) (not e!1544246))))

(assert (=> b!2428159 (= res!1031325 (not call!148597))))

(declare-fun b!2428160 () Bool)

(assert (=> b!2428160 (= e!1544247 (not (= (head!5478 s!9460) (c!387314 r!13927))))))

(declare-fun b!2428161 () Bool)

(assert (=> b!2428161 (= e!1544246 (= (head!5478 s!9460) (c!387314 r!13927)))))

(declare-fun b!2428162 () Bool)

(declare-fun nullable!2168 (Regex!7134) Bool)

(assert (=> b!2428162 (= e!1544245 (nullable!2168 r!13927))))

(declare-fun b!2428163 () Bool)

(assert (=> b!2428163 (= e!1544248 e!1544251)))

(declare-fun c!387341 () Bool)

(assert (=> b!2428163 (= c!387341 (is-EmptyLang!7134 r!13927))))

(declare-fun b!2428164 () Bool)

(assert (=> b!2428164 (= e!1544250 e!1544247)))

(declare-fun res!1031327 () Bool)

(assert (=> b!2428164 (=> res!1031327 e!1544247)))

(assert (=> b!2428164 (= res!1031327 call!148597)))

(assert (= (and d!702866 c!387340) b!2428162))

(assert (= (and d!702866 (not c!387340)) b!2428151))

(assert (= (and d!702866 c!387342) b!2428158))

(assert (= (and d!702866 (not c!387342)) b!2428163))

(assert (= (and b!2428163 c!387341) b!2428153))

(assert (= (and b!2428163 (not c!387341)) b!2428155))

(assert (= (and b!2428155 (not res!1031328)) b!2428152))

(assert (= (and b!2428152 res!1031322) b!2428159))

(assert (= (and b!2428159 res!1031325) b!2428157))

(assert (= (and b!2428157 res!1031323) b!2428161))

(assert (= (and b!2428152 (not res!1031324)) b!2428156))

(assert (= (and b!2428156 res!1031326) b!2428164))

(assert (= (and b!2428164 (not res!1031327)) b!2428154))

(assert (= (and b!2428154 (not res!1031321)) b!2428160))

(assert (= (or b!2428158 b!2428159 b!2428164) bm!148592))

(assert (=> d!702866 m!2812457))

(declare-fun m!2812465 () Bool)

(assert (=> d!702866 m!2812465))

(declare-fun m!2812467 () Bool)

(assert (=> b!2428162 m!2812467))

(declare-fun m!2812469 () Bool)

(assert (=> b!2428161 m!2812469))

(declare-fun m!2812471 () Bool)

(assert (=> b!2428157 m!2812471))

(assert (=> b!2428157 m!2812471))

(declare-fun m!2812473 () Bool)

(assert (=> b!2428157 m!2812473))

(assert (=> bm!148592 m!2812457))

(assert (=> b!2428160 m!2812469))

(assert (=> b!2428151 m!2812469))

(assert (=> b!2428151 m!2812469))

(declare-fun m!2812475 () Bool)

(assert (=> b!2428151 m!2812475))

(assert (=> b!2428151 m!2812471))

(assert (=> b!2428151 m!2812475))

(assert (=> b!2428151 m!2812471))

(declare-fun m!2812477 () Bool)

(assert (=> b!2428151 m!2812477))

(assert (=> b!2428154 m!2812471))

(assert (=> b!2428154 m!2812471))

(assert (=> b!2428154 m!2812473))

(assert (=> b!2427966 d!702866))

(declare-fun d!702868 () Bool)

(assert (=> d!702868 (= (matchR!3251 r!13927 s!9460) (matchRSpec!983 r!13927 s!9460))))

(declare-fun lt!876741 () Unit!41655)

(declare-fun choose!14393 (Regex!7134 List!28507) Unit!41655)

(assert (=> d!702868 (= lt!876741 (choose!14393 r!13927 s!9460))))

(assert (=> d!702868 (validRegex!2853 r!13927)))

(assert (=> d!702868 (= (mainMatchTheorem!983 r!13927 s!9460) lt!876741)))

(declare-fun bs!464033 () Bool)

(assert (= bs!464033 d!702868))

(assert (=> bs!464033 m!2812359))

(assert (=> bs!464033 m!2812357))

(declare-fun m!2812479 () Bool)

(assert (=> bs!464033 m!2812479))

(assert (=> bs!464033 m!2812465))

(assert (=> b!2427966 d!702868))

(declare-fun d!702870 () Bool)

(assert (=> d!702870 (= (isEmpty!16445 l!9164) (is-Nil!28408 l!9164))))

(assert (=> b!2427967 d!702870))

(declare-fun d!702872 () Bool)

(declare-fun res!1031333 () Bool)

(declare-fun e!1544256 () Bool)

(assert (=> d!702872 (=> res!1031333 e!1544256)))

(assert (=> d!702872 (= res!1031333 (is-Nil!28408 l!9164))))

(assert (=> d!702872 (= (forall!5768 l!9164 lambda!91486) e!1544256)))

(declare-fun b!2428169 () Bool)

(declare-fun e!1544257 () Bool)

(assert (=> b!2428169 (= e!1544256 e!1544257)))

(declare-fun res!1031334 () Bool)

(assert (=> b!2428169 (=> (not res!1031334) (not e!1544257))))

(declare-fun dynLambda!12227 (Int Regex!7134) Bool)

(assert (=> b!2428169 (= res!1031334 (dynLambda!12227 lambda!91486 (h!33809 l!9164)))))

(declare-fun b!2428170 () Bool)

(assert (=> b!2428170 (= e!1544257 (forall!5768 (t!208483 l!9164) lambda!91486))))

(assert (= (and d!702872 (not res!1031333)) b!2428169))

(assert (= (and b!2428169 res!1031334) b!2428170))

(declare-fun b_lambda!74723 () Bool)

(assert (=> (not b_lambda!74723) (not b!2428169)))

(declare-fun m!2812481 () Bool)

(assert (=> b!2428169 m!2812481))

(declare-fun m!2812483 () Bool)

(assert (=> b!2428170 m!2812483))

(assert (=> start!237790 d!702872))

(declare-fun bs!464034 () Bool)

(declare-fun d!702874 () Bool)

(assert (= bs!464034 (and d!702874 start!237790)))

(declare-fun lambda!91526 () Int)

(assert (=> bs!464034 (= lambda!91526 lambda!91486)))

(declare-fun b!2428209 () Bool)

(declare-fun e!1544281 () Bool)

(declare-fun lt!876750 () Regex!7134)

(declare-fun isConcat!187 (Regex!7134) Bool)

(assert (=> b!2428209 (= e!1544281 (isConcat!187 lt!876750))))

(declare-fun b!2428210 () Bool)

(declare-fun e!1544284 () Regex!7134)

(assert (=> b!2428210 (= e!1544284 (Concat!11770 (h!33809 lt!876687) (generalisedConcat!235 (t!208483 lt!876687))))))

(declare-fun b!2428211 () Bool)

(assert (=> b!2428211 (= e!1544284 EmptyExpr!7134)))

(declare-fun b!2428212 () Bool)

(declare-fun e!1544285 () Bool)

(assert (=> b!2428212 (= e!1544285 e!1544281)))

(declare-fun c!387355 () Bool)

(assert (=> b!2428212 (= c!387355 (isEmpty!16445 (tail!3750 lt!876687)))))

(declare-fun b!2428213 () Bool)

(declare-fun e!1544280 () Bool)

(assert (=> b!2428213 (= e!1544280 (isEmpty!16445 (t!208483 lt!876687)))))

(declare-fun b!2428214 () Bool)

(declare-fun head!5479 (List!28506) Regex!7134)

(assert (=> b!2428214 (= e!1544281 (= lt!876750 (head!5479 lt!876687)))))

(declare-fun b!2428215 () Bool)

(declare-fun e!1544282 () Bool)

(assert (=> b!2428215 (= e!1544282 e!1544285)))

(declare-fun c!387358 () Bool)

(assert (=> b!2428215 (= c!387358 (isEmpty!16445 lt!876687))))

(declare-fun b!2428216 () Bool)

(declare-fun e!1544283 () Regex!7134)

(assert (=> b!2428216 (= e!1544283 (h!33809 lt!876687))))

(assert (=> d!702874 e!1544282))

(declare-fun res!1031350 () Bool)

(assert (=> d!702874 (=> (not res!1031350) (not e!1544282))))

(assert (=> d!702874 (= res!1031350 (validRegex!2853 lt!876750))))

(assert (=> d!702874 (= lt!876750 e!1544283)))

(declare-fun c!387357 () Bool)

(assert (=> d!702874 (= c!387357 e!1544280)))

(declare-fun res!1031349 () Bool)

(assert (=> d!702874 (=> (not res!1031349) (not e!1544280))))

(assert (=> d!702874 (= res!1031349 (is-Cons!28408 lt!876687))))

(assert (=> d!702874 (forall!5768 lt!876687 lambda!91526)))

(assert (=> d!702874 (= (generalisedConcat!235 lt!876687) lt!876750)))

(declare-fun b!2428217 () Bool)

(assert (=> b!2428217 (= e!1544283 e!1544284)))

(declare-fun c!387356 () Bool)

(assert (=> b!2428217 (= c!387356 (is-Cons!28408 lt!876687))))

(declare-fun b!2428218 () Bool)

(declare-fun isEmptyExpr!187 (Regex!7134) Bool)

(assert (=> b!2428218 (= e!1544285 (isEmptyExpr!187 lt!876750))))

(assert (= (and d!702874 res!1031349) b!2428213))

(assert (= (and d!702874 c!387357) b!2428216))

(assert (= (and d!702874 (not c!387357)) b!2428217))

(assert (= (and b!2428217 c!387356) b!2428210))

(assert (= (and b!2428217 (not c!387356)) b!2428211))

(assert (= (and d!702874 res!1031350) b!2428215))

(assert (= (and b!2428215 c!387358) b!2428218))

(assert (= (and b!2428215 (not c!387358)) b!2428212))

(assert (= (and b!2428212 c!387355) b!2428214))

(assert (= (and b!2428212 (not c!387355)) b!2428209))

(declare-fun m!2812485 () Bool)

(assert (=> b!2428214 m!2812485))

(declare-fun m!2812487 () Bool)

(assert (=> b!2428212 m!2812487))

(assert (=> b!2428212 m!2812487))

(declare-fun m!2812489 () Bool)

(assert (=> b!2428212 m!2812489))

(declare-fun m!2812491 () Bool)

(assert (=> b!2428210 m!2812491))

(declare-fun m!2812493 () Bool)

(assert (=> d!702874 m!2812493))

(declare-fun m!2812495 () Bool)

(assert (=> d!702874 m!2812495))

(declare-fun m!2812497 () Bool)

(assert (=> b!2428213 m!2812497))

(declare-fun m!2812499 () Bool)

(assert (=> b!2428209 m!2812499))

(declare-fun m!2812501 () Bool)

(assert (=> b!2428218 m!2812501))

(assert (=> b!2428215 m!2812363))

(assert (=> b!2427963 d!702874))

(declare-fun bs!464035 () Bool)

(declare-fun d!702876 () Bool)

(assert (= bs!464035 (and d!702876 start!237790)))

(declare-fun lambda!91527 () Int)

(assert (=> bs!464035 (= lambda!91527 lambda!91486)))

(declare-fun bs!464036 () Bool)

(assert (= bs!464036 (and d!702876 d!702874)))

(assert (=> bs!464036 (= lambda!91527 lambda!91526)))

(declare-fun b!2428219 () Bool)

(declare-fun e!1544287 () Bool)

(declare-fun lt!876751 () Regex!7134)

(assert (=> b!2428219 (= e!1544287 (isConcat!187 lt!876751))))

(declare-fun b!2428220 () Bool)

(declare-fun e!1544290 () Regex!7134)

(assert (=> b!2428220 (= e!1544290 (Concat!11770 (h!33809 l!9164) (generalisedConcat!235 (t!208483 l!9164))))))

(declare-fun b!2428221 () Bool)

(assert (=> b!2428221 (= e!1544290 EmptyExpr!7134)))

(declare-fun b!2428222 () Bool)

(declare-fun e!1544291 () Bool)

(assert (=> b!2428222 (= e!1544291 e!1544287)))

(declare-fun c!387359 () Bool)

(assert (=> b!2428222 (= c!387359 (isEmpty!16445 (tail!3750 l!9164)))))

(declare-fun b!2428223 () Bool)

(declare-fun e!1544286 () Bool)

(assert (=> b!2428223 (= e!1544286 (isEmpty!16445 (t!208483 l!9164)))))

(declare-fun b!2428224 () Bool)

(assert (=> b!2428224 (= e!1544287 (= lt!876751 (head!5479 l!9164)))))

(declare-fun b!2428225 () Bool)

(declare-fun e!1544288 () Bool)

(assert (=> b!2428225 (= e!1544288 e!1544291)))

(declare-fun c!387362 () Bool)

(assert (=> b!2428225 (= c!387362 (isEmpty!16445 l!9164))))

(declare-fun b!2428226 () Bool)

(declare-fun e!1544289 () Regex!7134)

(assert (=> b!2428226 (= e!1544289 (h!33809 l!9164))))

(assert (=> d!702876 e!1544288))

(declare-fun res!1031352 () Bool)

(assert (=> d!702876 (=> (not res!1031352) (not e!1544288))))

(assert (=> d!702876 (= res!1031352 (validRegex!2853 lt!876751))))

(assert (=> d!702876 (= lt!876751 e!1544289)))

(declare-fun c!387361 () Bool)

(assert (=> d!702876 (= c!387361 e!1544286)))

(declare-fun res!1031351 () Bool)

(assert (=> d!702876 (=> (not res!1031351) (not e!1544286))))

(assert (=> d!702876 (= res!1031351 (is-Cons!28408 l!9164))))

(assert (=> d!702876 (forall!5768 l!9164 lambda!91527)))

(assert (=> d!702876 (= (generalisedConcat!235 l!9164) lt!876751)))

(declare-fun b!2428227 () Bool)

(assert (=> b!2428227 (= e!1544289 e!1544290)))

(declare-fun c!387360 () Bool)

(assert (=> b!2428227 (= c!387360 (is-Cons!28408 l!9164))))

(declare-fun b!2428228 () Bool)

(assert (=> b!2428228 (= e!1544291 (isEmptyExpr!187 lt!876751))))

(assert (= (and d!702876 res!1031351) b!2428223))

(assert (= (and d!702876 c!387361) b!2428226))

(assert (= (and d!702876 (not c!387361)) b!2428227))

(assert (= (and b!2428227 c!387360) b!2428220))

(assert (= (and b!2428227 (not c!387360)) b!2428221))

(assert (= (and d!702876 res!1031352) b!2428225))

(assert (= (and b!2428225 c!387362) b!2428228))

(assert (= (and b!2428225 (not c!387362)) b!2428222))

(assert (= (and b!2428222 c!387359) b!2428224))

(assert (= (and b!2428222 (not c!387359)) b!2428219))

(declare-fun m!2812503 () Bool)

(assert (=> b!2428224 m!2812503))

(assert (=> b!2428222 m!2812365))

(assert (=> b!2428222 m!2812365))

(declare-fun m!2812505 () Bool)

(assert (=> b!2428222 m!2812505))

(declare-fun m!2812507 () Bool)

(assert (=> b!2428220 m!2812507))

(declare-fun m!2812509 () Bool)

(assert (=> d!702876 m!2812509))

(declare-fun m!2812511 () Bool)

(assert (=> d!702876 m!2812511))

(declare-fun m!2812513 () Bool)

(assert (=> b!2428223 m!2812513))

(declare-fun m!2812515 () Bool)

(assert (=> b!2428219 m!2812515))

(declare-fun m!2812517 () Bool)

(assert (=> b!2428228 m!2812517))

(assert (=> b!2428225 m!2812341))

(assert (=> b!2427969 d!702876))

(declare-fun d!702878 () Bool)

(assert (=> d!702878 (= (isEmpty!16445 lt!876687) (is-Nil!28408 lt!876687))))

(assert (=> b!2427965 d!702878))

(declare-fun d!702880 () Bool)

(assert (=> d!702880 (= (tail!3750 l!9164) (t!208483 l!9164))))

(assert (=> b!2427965 d!702880))

(declare-fun b!2428251 () Bool)

(declare-fun e!1544299 () Bool)

(declare-fun tp!770816 () Bool)

(declare-fun tp!770814 () Bool)

(assert (=> b!2428251 (= e!1544299 (and tp!770816 tp!770814))))

(declare-fun b!2428248 () Bool)

(assert (=> b!2428248 (= e!1544299 tp_is_empty!11681)))

(declare-fun b!2428250 () Bool)

(declare-fun tp!770815 () Bool)

(assert (=> b!2428250 (= e!1544299 tp!770815)))

(declare-fun b!2428249 () Bool)

(declare-fun tp!770817 () Bool)

(declare-fun tp!770818 () Bool)

(assert (=> b!2428249 (= e!1544299 (and tp!770817 tp!770818))))

(assert (=> b!2427972 (= tp!770779 e!1544299)))

(assert (= (and b!2427972 (is-ElementMatch!7134 (h!33809 l!9164))) b!2428248))

(assert (= (and b!2427972 (is-Concat!11770 (h!33809 l!9164))) b!2428249))

(assert (= (and b!2427972 (is-Star!7134 (h!33809 l!9164))) b!2428250))

(assert (= (and b!2427972 (is-Union!7134 (h!33809 l!9164))) b!2428251))

(declare-fun b!2428256 () Bool)

(declare-fun e!1544302 () Bool)

(declare-fun tp!770823 () Bool)

(declare-fun tp!770824 () Bool)

(assert (=> b!2428256 (= e!1544302 (and tp!770823 tp!770824))))

(assert (=> b!2427972 (= tp!770775 e!1544302)))

(assert (= (and b!2427972 (is-Cons!28408 (t!208483 l!9164))) b!2428256))

(declare-fun b!2428260 () Bool)

(declare-fun e!1544303 () Bool)

(declare-fun tp!770827 () Bool)

(declare-fun tp!770825 () Bool)

(assert (=> b!2428260 (= e!1544303 (and tp!770827 tp!770825))))

(declare-fun b!2428257 () Bool)

(assert (=> b!2428257 (= e!1544303 tp_is_empty!11681)))

(declare-fun b!2428259 () Bool)

(declare-fun tp!770826 () Bool)

(assert (=> b!2428259 (= e!1544303 tp!770826)))

(declare-fun b!2428258 () Bool)

(declare-fun tp!770828 () Bool)

(declare-fun tp!770829 () Bool)

(assert (=> b!2428258 (= e!1544303 (and tp!770828 tp!770829))))

(assert (=> b!2427962 (= tp!770772 e!1544303)))

(assert (= (and b!2427962 (is-ElementMatch!7134 (reg!7463 r!13927))) b!2428257))

(assert (= (and b!2427962 (is-Concat!11770 (reg!7463 r!13927))) b!2428258))

(assert (= (and b!2427962 (is-Star!7134 (reg!7463 r!13927))) b!2428259))

(assert (= (and b!2427962 (is-Union!7134 (reg!7463 r!13927))) b!2428260))

(declare-fun b!2428265 () Bool)

(declare-fun e!1544306 () Bool)

(declare-fun tp!770832 () Bool)

(assert (=> b!2428265 (= e!1544306 (and tp_is_empty!11681 tp!770832))))

(assert (=> b!2427968 (= tp!770777 e!1544306)))

(assert (= (and b!2427968 (is-Cons!28409 (t!208484 s!9460))) b!2428265))

(declare-fun b!2428269 () Bool)

(declare-fun e!1544307 () Bool)

(declare-fun tp!770835 () Bool)

(declare-fun tp!770833 () Bool)

(assert (=> b!2428269 (= e!1544307 (and tp!770835 tp!770833))))

(declare-fun b!2428266 () Bool)

(assert (=> b!2428266 (= e!1544307 tp_is_empty!11681)))

(declare-fun b!2428268 () Bool)

(declare-fun tp!770834 () Bool)

(assert (=> b!2428268 (= e!1544307 tp!770834)))

(declare-fun b!2428267 () Bool)

(declare-fun tp!770836 () Bool)

(declare-fun tp!770837 () Bool)

(assert (=> b!2428267 (= e!1544307 (and tp!770836 tp!770837))))

(assert (=> b!2427964 (= tp!770776 e!1544307)))

(assert (= (and b!2427964 (is-ElementMatch!7134 (regOne!14781 r!13927))) b!2428266))

(assert (= (and b!2427964 (is-Concat!11770 (regOne!14781 r!13927))) b!2428267))

(assert (= (and b!2427964 (is-Star!7134 (regOne!14781 r!13927))) b!2428268))

(assert (= (and b!2427964 (is-Union!7134 (regOne!14781 r!13927))) b!2428269))

(declare-fun b!2428273 () Bool)

(declare-fun e!1544308 () Bool)

(declare-fun tp!770840 () Bool)

(declare-fun tp!770838 () Bool)

(assert (=> b!2428273 (= e!1544308 (and tp!770840 tp!770838))))

(declare-fun b!2428270 () Bool)

(assert (=> b!2428270 (= e!1544308 tp_is_empty!11681)))

(declare-fun b!2428272 () Bool)

(declare-fun tp!770839 () Bool)

(assert (=> b!2428272 (= e!1544308 tp!770839)))

(declare-fun b!2428271 () Bool)

(declare-fun tp!770841 () Bool)

(declare-fun tp!770842 () Bool)

(assert (=> b!2428271 (= e!1544308 (and tp!770841 tp!770842))))

(assert (=> b!2427964 (= tp!770774 e!1544308)))

(assert (= (and b!2427964 (is-ElementMatch!7134 (regTwo!14781 r!13927))) b!2428270))

(assert (= (and b!2427964 (is-Concat!11770 (regTwo!14781 r!13927))) b!2428271))

(assert (= (and b!2427964 (is-Star!7134 (regTwo!14781 r!13927))) b!2428272))

(assert (= (and b!2427964 (is-Union!7134 (regTwo!14781 r!13927))) b!2428273))

(declare-fun b!2428277 () Bool)

(declare-fun e!1544309 () Bool)

(declare-fun tp!770845 () Bool)

(declare-fun tp!770843 () Bool)

(assert (=> b!2428277 (= e!1544309 (and tp!770845 tp!770843))))

(declare-fun b!2428274 () Bool)

(assert (=> b!2428274 (= e!1544309 tp_is_empty!11681)))

(declare-fun b!2428276 () Bool)

(declare-fun tp!770844 () Bool)

(assert (=> b!2428276 (= e!1544309 tp!770844)))

(declare-fun b!2428275 () Bool)

(declare-fun tp!770846 () Bool)

(declare-fun tp!770847 () Bool)

(assert (=> b!2428275 (= e!1544309 (and tp!770846 tp!770847))))

(assert (=> b!2427970 (= tp!770773 e!1544309)))

(assert (= (and b!2427970 (is-ElementMatch!7134 (regOne!14780 r!13927))) b!2428274))

(assert (= (and b!2427970 (is-Concat!11770 (regOne!14780 r!13927))) b!2428275))

(assert (= (and b!2427970 (is-Star!7134 (regOne!14780 r!13927))) b!2428276))

(assert (= (and b!2427970 (is-Union!7134 (regOne!14780 r!13927))) b!2428277))

(declare-fun b!2428281 () Bool)

(declare-fun e!1544310 () Bool)

(declare-fun tp!770850 () Bool)

(declare-fun tp!770848 () Bool)

(assert (=> b!2428281 (= e!1544310 (and tp!770850 tp!770848))))

(declare-fun b!2428278 () Bool)

(assert (=> b!2428278 (= e!1544310 tp_is_empty!11681)))

(declare-fun b!2428280 () Bool)

(declare-fun tp!770849 () Bool)

(assert (=> b!2428280 (= e!1544310 tp!770849)))

(declare-fun b!2428279 () Bool)

(declare-fun tp!770851 () Bool)

(declare-fun tp!770852 () Bool)

(assert (=> b!2428279 (= e!1544310 (and tp!770851 tp!770852))))

(assert (=> b!2427970 (= tp!770778 e!1544310)))

(assert (= (and b!2427970 (is-ElementMatch!7134 (regTwo!14780 r!13927))) b!2428278))

(assert (= (and b!2427970 (is-Concat!11770 (regTwo!14780 r!13927))) b!2428279))

(assert (= (and b!2427970 (is-Star!7134 (regTwo!14780 r!13927))) b!2428280))

(assert (= (and b!2427970 (is-Union!7134 (regTwo!14780 r!13927))) b!2428281))

(declare-fun b_lambda!74725 () Bool)

(assert (= b_lambda!74723 (or start!237790 b_lambda!74725)))

(declare-fun bs!464037 () Bool)

(declare-fun d!702882 () Bool)

(assert (= bs!464037 (and d!702882 start!237790)))

(assert (=> bs!464037 (= (dynLambda!12227 lambda!91486 (h!33809 l!9164)) (validRegex!2853 (h!33809 l!9164)))))

(declare-fun m!2812521 () Bool)

(assert (=> bs!464037 m!2812521))

(assert (=> b!2428169 d!702882))

(push 1)

(assert (not bm!148592))

(assert (not d!702850))

(assert (not b!2428161))

(assert (not b!2428276))

(assert (not d!702856))

(assert (not d!702846))

(assert (not d!702852))

(assert (not b!2428222))

(assert (not b!2428251))

(assert (not bm!148589))

(assert (not b!2428277))

(assert (not b!2428281))

(assert (not b!2428210))

(assert (not b!2428269))

(assert (not b!2428065))

(assert (not b!2428280))

(assert (not d!702858))

(assert (not b_lambda!74725))

(assert (not b!2428209))

(assert (not b!2428218))

(assert (not b!2428160))

(assert (not b!2428225))

(assert (not b!2428220))

(assert (not b!2428151))

(assert (not bm!148588))

(assert (not b!2428157))

(assert (not b!2428069))

(assert (not d!702874))

(assert (not b!2428067))

(assert (not b!2428224))

(assert (not b!2428268))

(assert (not b!2428256))

(assert (not b!2428223))

(assert (not d!702844))

(assert (not b!2428170))

(assert (not b!2428214))

(assert tp_is_empty!11681)

(assert (not d!702868))

(assert (not b!2428154))

(assert (not b!2428120))

(assert (not b!2428265))

(assert (not b!2428215))

(assert (not b!2428267))

(assert (not d!702876))

(assert (not b!2428272))

(assert (not b!2428258))

(assert (not b!2428279))

(assert (not b!2428260))

(assert (not b!2428068))

(assert (not b!2428115))

(assert (not b!2428212))

(assert (not b!2428162))

(assert (not b!2428250))

(assert (not b!2428273))

(assert (not b!2428259))

(assert (not b!2428228))

(assert (not b!2428063))

(assert (not b!2428275))

(assert (not b!2428249))

(assert (not b!2428213))

(assert (not b!2428219))

(assert (not b!2428271))

(assert (not bs!464037))

(assert (not d!702866))

(assert (not b!2428070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

