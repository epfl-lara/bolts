; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235542 () Bool)

(assert start!235542)

(declare-fun b!2401423 () Bool)

(declare-fun e!1529867 () Bool)

(declare-fun tp!764261 () Bool)

(assert (=> b!2401423 (= e!1529867 tp!764261)))

(declare-fun b!2401424 () Bool)

(declare-fun e!1529865 () Bool)

(declare-fun e!1529866 () Bool)

(assert (=> b!2401424 (= e!1529865 (not e!1529866))))

(declare-fun res!1020234 () Bool)

(assert (=> b!2401424 (=> res!1020234 e!1529866)))

(declare-datatypes ((C!14234 0))(
  ( (C!14235 (val!8359 Int)) )
))
(declare-datatypes ((Regex!7038 0))(
  ( (ElementMatch!7038 (c!382366 C!14234)) (Concat!11674 (regOne!14588 Regex!7038) (regTwo!14588 Regex!7038)) (EmptyExpr!7038) (Star!7038 (reg!7367 Regex!7038)) (EmptyLang!7038) (Union!7038 (regOne!14589 Regex!7038) (regTwo!14589 Regex!7038)) )
))
(declare-fun r!13927 () Regex!7038)

(declare-datatypes ((List!28314 0))(
  ( (Nil!28216) (Cons!28216 (h!33617 Regex!7038) (t!208291 List!28314)) )
))
(declare-fun l!9164 () List!28314)

(assert (=> b!2401424 (= res!1020234 (or (is-Concat!11674 r!13927) (not (is-EmptyExpr!7038 r!13927)) (is-Cons!28216 l!9164)))))

(declare-datatypes ((List!28315 0))(
  ( (Nil!28217) (Cons!28217 (h!33618 C!14234) (t!208292 List!28315)) )
))
(declare-fun s!9460 () List!28315)

(declare-fun matchR!3155 (Regex!7038 List!28315) Bool)

(declare-fun matchRSpec!887 (Regex!7038 List!28315) Bool)

(assert (=> b!2401424 (= (matchR!3155 r!13927 s!9460) (matchRSpec!887 r!13927 s!9460))))

(declare-datatypes ((Unit!41347 0))(
  ( (Unit!41348) )
))
(declare-fun lt!872581 () Unit!41347)

(declare-fun mainMatchTheorem!887 (Regex!7038 List!28315) Unit!41347)

(assert (=> b!2401424 (= lt!872581 (mainMatchTheorem!887 r!13927 s!9460))))

(declare-fun b!2401425 () Bool)

(declare-fun validRegex!2763 (Regex!7038) Bool)

(assert (=> b!2401425 (= e!1529866 (validRegex!2763 r!13927))))

(declare-fun res!1020233 () Bool)

(assert (=> start!235542 (=> (not res!1020233) (not e!1529865))))

(declare-fun lambda!90266 () Int)

(declare-fun forall!5672 (List!28314 Int) Bool)

(assert (=> start!235542 (= res!1020233 (forall!5672 l!9164 lambda!90266))))

(assert (=> start!235542 e!1529865))

(declare-fun e!1529868 () Bool)

(assert (=> start!235542 e!1529868))

(assert (=> start!235542 e!1529867))

(declare-fun e!1529869 () Bool)

(assert (=> start!235542 e!1529869))

(declare-fun b!2401426 () Bool)

(declare-fun tp_is_empty!11489 () Bool)

(declare-fun tp!764256 () Bool)

(assert (=> b!2401426 (= e!1529869 (and tp_is_empty!11489 tp!764256))))

(declare-fun b!2401427 () Bool)

(declare-fun tp!764260 () Bool)

(declare-fun tp!764258 () Bool)

(assert (=> b!2401427 (= e!1529868 (and tp!764260 tp!764258))))

(declare-fun b!2401428 () Bool)

(assert (=> b!2401428 (= e!1529867 tp_is_empty!11489)))

(declare-fun b!2401429 () Bool)

(declare-fun tp!764255 () Bool)

(declare-fun tp!764259 () Bool)

(assert (=> b!2401429 (= e!1529867 (and tp!764255 tp!764259))))

(declare-fun b!2401430 () Bool)

(declare-fun tp!764257 () Bool)

(declare-fun tp!764254 () Bool)

(assert (=> b!2401430 (= e!1529867 (and tp!764257 tp!764254))))

(declare-fun b!2401431 () Bool)

(declare-fun res!1020235 () Bool)

(assert (=> b!2401431 (=> (not res!1020235) (not e!1529865))))

(declare-fun generalisedConcat!139 (List!28314) Regex!7038)

(assert (=> b!2401431 (= res!1020235 (= r!13927 (generalisedConcat!139 l!9164)))))

(assert (= (and start!235542 res!1020233) b!2401431))

(assert (= (and b!2401431 res!1020235) b!2401424))

(assert (= (and b!2401424 (not res!1020234)) b!2401425))

(assert (= (and start!235542 (is-Cons!28216 l!9164)) b!2401427))

(assert (= (and start!235542 (is-ElementMatch!7038 r!13927)) b!2401428))

(assert (= (and start!235542 (is-Concat!11674 r!13927)) b!2401429))

(assert (= (and start!235542 (is-Star!7038 r!13927)) b!2401423))

(assert (= (and start!235542 (is-Union!7038 r!13927)) b!2401430))

(assert (= (and start!235542 (is-Cons!28217 s!9460)) b!2401426))

(declare-fun m!2798107 () Bool)

(assert (=> b!2401424 m!2798107))

(declare-fun m!2798109 () Bool)

(assert (=> b!2401424 m!2798109))

(declare-fun m!2798111 () Bool)

(assert (=> b!2401424 m!2798111))

(declare-fun m!2798113 () Bool)

(assert (=> b!2401425 m!2798113))

(declare-fun m!2798115 () Bool)

(assert (=> start!235542 m!2798115))

(declare-fun m!2798117 () Bool)

(assert (=> b!2401431 m!2798117))

(push 1)

(assert (not b!2401431))

(assert (not b!2401430))

(assert (not b!2401427))

(assert (not b!2401423))

(assert (not b!2401425))

(assert (not start!235542))

(assert (not b!2401429))

(assert tp_is_empty!11489)

(assert (not b!2401426))

(assert (not b!2401424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!699696 () Bool)

(declare-fun res!1020249 () Bool)

(declare-fun e!1529889 () Bool)

(assert (=> d!699696 (=> res!1020249 e!1529889)))

(assert (=> d!699696 (= res!1020249 (is-Nil!28216 l!9164))))

(assert (=> d!699696 (= (forall!5672 l!9164 lambda!90266) e!1529889)))

(declare-fun b!2401463 () Bool)

(declare-fun e!1529890 () Bool)

(assert (=> b!2401463 (= e!1529889 e!1529890)))

(declare-fun res!1020250 () Bool)

(assert (=> b!2401463 (=> (not res!1020250) (not e!1529890))))

(declare-fun dynLambda!12152 (Int Regex!7038) Bool)

(assert (=> b!2401463 (= res!1020250 (dynLambda!12152 lambda!90266 (h!33617 l!9164)))))

(declare-fun b!2401464 () Bool)

(assert (=> b!2401464 (= e!1529890 (forall!5672 (t!208291 l!9164) lambda!90266))))

(assert (= (and d!699696 (not res!1020249)) b!2401463))

(assert (= (and b!2401463 res!1020250) b!2401464))

(declare-fun b_lambda!74331 () Bool)

(assert (=> (not b_lambda!74331) (not b!2401463)))

(declare-fun m!2798131 () Bool)

(assert (=> b!2401463 m!2798131))

(declare-fun m!2798133 () Bool)

(assert (=> b!2401464 m!2798133))

(assert (=> start!235542 d!699696))

(declare-fun bs!463165 () Bool)

(declare-fun d!699698 () Bool)

(assert (= bs!463165 (and d!699698 start!235542)))

(declare-fun lambda!90272 () Int)

(assert (=> bs!463165 (= lambda!90272 lambda!90266)))

(declare-fun b!2401485 () Bool)

(declare-fun e!1529905 () Bool)

(declare-fun lt!872587 () Regex!7038)

(declare-fun isConcat!106 (Regex!7038) Bool)

(assert (=> b!2401485 (= e!1529905 (isConcat!106 lt!872587))))

(declare-fun b!2401486 () Bool)

(declare-fun head!5306 (List!28314) Regex!7038)

(assert (=> b!2401486 (= e!1529905 (= lt!872587 (head!5306 l!9164)))))

(declare-fun b!2401487 () Bool)

(declare-fun e!1529907 () Bool)

(declare-fun isEmpty!16211 (List!28314) Bool)

(assert (=> b!2401487 (= e!1529907 (isEmpty!16211 (t!208291 l!9164)))))

(declare-fun b!2401488 () Bool)

(declare-fun e!1529903 () Regex!7038)

(assert (=> b!2401488 (= e!1529903 (h!33617 l!9164))))

(declare-fun b!2401489 () Bool)

(declare-fun e!1529906 () Bool)

(declare-fun e!1529908 () Bool)

(assert (=> b!2401489 (= e!1529906 e!1529908)))

(declare-fun c!382378 () Bool)

(assert (=> b!2401489 (= c!382378 (isEmpty!16211 l!9164))))

(assert (=> d!699698 e!1529906))

(declare-fun res!1020255 () Bool)

(assert (=> d!699698 (=> (not res!1020255) (not e!1529906))))

(assert (=> d!699698 (= res!1020255 (validRegex!2763 lt!872587))))

(assert (=> d!699698 (= lt!872587 e!1529903)))

(declare-fun c!382379 () Bool)

(assert (=> d!699698 (= c!382379 e!1529907)))

(declare-fun res!1020256 () Bool)

(assert (=> d!699698 (=> (not res!1020256) (not e!1529907))))

(assert (=> d!699698 (= res!1020256 (is-Cons!28216 l!9164))))

(assert (=> d!699698 (forall!5672 l!9164 lambda!90272)))

(assert (=> d!699698 (= (generalisedConcat!139 l!9164) lt!872587)))

(declare-fun b!2401490 () Bool)

(declare-fun isEmptyExpr!106 (Regex!7038) Bool)

(assert (=> b!2401490 (= e!1529908 (isEmptyExpr!106 lt!872587))))

(declare-fun b!2401491 () Bool)

(declare-fun e!1529904 () Regex!7038)

(assert (=> b!2401491 (= e!1529904 EmptyExpr!7038)))

(declare-fun b!2401492 () Bool)

(assert (=> b!2401492 (= e!1529908 e!1529905)))

(declare-fun c!382376 () Bool)

(declare-fun tail!3576 (List!28314) List!28314)

(assert (=> b!2401492 (= c!382376 (isEmpty!16211 (tail!3576 l!9164)))))

(declare-fun b!2401493 () Bool)

(assert (=> b!2401493 (= e!1529904 (Concat!11674 (h!33617 l!9164) (generalisedConcat!139 (t!208291 l!9164))))))

(declare-fun b!2401494 () Bool)

(assert (=> b!2401494 (= e!1529903 e!1529904)))

(declare-fun c!382377 () Bool)

(assert (=> b!2401494 (= c!382377 (is-Cons!28216 l!9164))))

(assert (= (and d!699698 res!1020256) b!2401487))

(assert (= (and d!699698 c!382379) b!2401488))

(assert (= (and d!699698 (not c!382379)) b!2401494))

(assert (= (and b!2401494 c!382377) b!2401493))

(assert (= (and b!2401494 (not c!382377)) b!2401491))

(assert (= (and d!699698 res!1020255) b!2401489))

(assert (= (and b!2401489 c!382378) b!2401490))

(assert (= (and b!2401489 (not c!382378)) b!2401492))

(assert (= (and b!2401492 c!382376) b!2401486))

(assert (= (and b!2401492 (not c!382376)) b!2401485))

(declare-fun m!2798135 () Bool)

(assert (=> b!2401487 m!2798135))

(declare-fun m!2798137 () Bool)

(assert (=> b!2401493 m!2798137))

(declare-fun m!2798139 () Bool)

(assert (=> b!2401489 m!2798139))

(declare-fun m!2798141 () Bool)

(assert (=> b!2401486 m!2798141))

(declare-fun m!2798143 () Bool)

(assert (=> b!2401485 m!2798143))

(declare-fun m!2798145 () Bool)

(assert (=> d!699698 m!2798145))

(declare-fun m!2798147 () Bool)

(assert (=> d!699698 m!2798147))

(declare-fun m!2798149 () Bool)

(assert (=> b!2401492 m!2798149))

(assert (=> b!2401492 m!2798149))

(declare-fun m!2798151 () Bool)

(assert (=> b!2401492 m!2798151))

(declare-fun m!2798153 () Bool)

(assert (=> b!2401490 m!2798153))

(assert (=> b!2401431 d!699698))

(declare-fun bm!146710 () Bool)

(declare-fun call!146717 () Bool)

(declare-fun call!146716 () Bool)

(assert (=> bm!146710 (= call!146717 call!146716)))

(declare-fun c!382390 () Bool)

(declare-fun c!382391 () Bool)

(declare-fun bm!146711 () Bool)

(assert (=> bm!146711 (= call!146716 (validRegex!2763 (ite c!382391 (reg!7367 r!13927) (ite c!382390 (regTwo!14589 r!13927) (regOne!14588 r!13927)))))))

(declare-fun b!2401539 () Bool)

(declare-fun e!1529940 () Bool)

(declare-fun e!1529943 () Bool)

(assert (=> b!2401539 (= e!1529940 e!1529943)))

(assert (=> b!2401539 (= c!382390 (is-Union!7038 r!13927))))

(declare-fun b!2401540 () Bool)

(declare-fun e!1529937 () Bool)

(assert (=> b!2401540 (= e!1529937 call!146717)))

(declare-fun b!2401541 () Bool)

(declare-fun e!1529938 () Bool)

(assert (=> b!2401541 (= e!1529938 call!146716)))

(declare-fun b!2401542 () Bool)

(declare-fun res!1020283 () Bool)

(assert (=> b!2401542 (=> (not res!1020283) (not e!1529937))))

(declare-fun call!146715 () Bool)

(assert (=> b!2401542 (= res!1020283 call!146715)))

(assert (=> b!2401542 (= e!1529943 e!1529937)))

(declare-fun b!2401543 () Bool)

(assert (=> b!2401543 (= e!1529940 e!1529938)))

(declare-fun res!1020281 () Bool)

(declare-fun nullable!2087 (Regex!7038) Bool)

(assert (=> b!2401543 (= res!1020281 (not (nullable!2087 (reg!7367 r!13927))))))

(assert (=> b!2401543 (=> (not res!1020281) (not e!1529938))))

(declare-fun b!2401544 () Bool)

(declare-fun res!1020282 () Bool)

(declare-fun e!1529941 () Bool)

(assert (=> b!2401544 (=> res!1020282 e!1529941)))

(assert (=> b!2401544 (= res!1020282 (not (is-Concat!11674 r!13927)))))

(assert (=> b!2401544 (= e!1529943 e!1529941)))

(declare-fun b!2401545 () Bool)

(declare-fun e!1529942 () Bool)

(assert (=> b!2401545 (= e!1529942 call!146715)))

(declare-fun b!2401546 () Bool)

(assert (=> b!2401546 (= e!1529941 e!1529942)))

(declare-fun res!1020285 () Bool)

(assert (=> b!2401546 (=> (not res!1020285) (not e!1529942))))

(assert (=> b!2401546 (= res!1020285 call!146717)))

(declare-fun b!2401547 () Bool)

(declare-fun e!1529939 () Bool)

(assert (=> b!2401547 (= e!1529939 e!1529940)))

(assert (=> b!2401547 (= c!382391 (is-Star!7038 r!13927))))

(declare-fun d!699702 () Bool)

(declare-fun res!1020284 () Bool)

(assert (=> d!699702 (=> res!1020284 e!1529939)))

(assert (=> d!699702 (= res!1020284 (is-ElementMatch!7038 r!13927))))

(assert (=> d!699702 (= (validRegex!2763 r!13927) e!1529939)))

(declare-fun bm!146712 () Bool)

(assert (=> bm!146712 (= call!146715 (validRegex!2763 (ite c!382390 (regOne!14589 r!13927) (regTwo!14588 r!13927))))))

(assert (= (and d!699702 (not res!1020284)) b!2401547))

(assert (= (and b!2401547 c!382391) b!2401543))

(assert (= (and b!2401547 (not c!382391)) b!2401539))

(assert (= (and b!2401543 res!1020281) b!2401541))

(assert (= (and b!2401539 c!382390) b!2401542))

(assert (= (and b!2401539 (not c!382390)) b!2401544))

(assert (= (and b!2401542 res!1020283) b!2401540))

(assert (= (and b!2401544 (not res!1020282)) b!2401546))

(assert (= (and b!2401546 res!1020285) b!2401545))

(assert (= (or b!2401542 b!2401545) bm!146712))

(assert (= (or b!2401540 b!2401546) bm!146710))

(assert (= (or b!2401541 bm!146710) bm!146711))

(declare-fun m!2798155 () Bool)

(assert (=> bm!146711 m!2798155))

(declare-fun m!2798157 () Bool)

(assert (=> b!2401543 m!2798157))

(declare-fun m!2798159 () Bool)

(assert (=> bm!146712 m!2798159))

(assert (=> b!2401425 d!699702))

(declare-fun b!2401592 () Bool)

(declare-fun e!1529969 () Bool)

(declare-fun e!1529970 () Bool)

(assert (=> b!2401592 (= e!1529969 e!1529970)))

(declare-fun res!1020315 () Bool)

(assert (=> b!2401592 (=> (not res!1020315) (not e!1529970))))

(declare-fun lt!872593 () Bool)

(assert (=> b!2401592 (= res!1020315 (not lt!872593))))

(declare-fun b!2401593 () Bool)

(declare-fun res!1020318 () Bool)

(assert (=> b!2401593 (=> res!1020318 e!1529969)))

(assert (=> b!2401593 (= res!1020318 (not (is-ElementMatch!7038 r!13927)))))

(declare-fun e!1529966 () Bool)

(assert (=> b!2401593 (= e!1529966 e!1529969)))

(declare-fun d!699704 () Bool)

(declare-fun e!1529967 () Bool)

(assert (=> d!699704 e!1529967))

(declare-fun c!382401 () Bool)

(assert (=> d!699704 (= c!382401 (is-EmptyExpr!7038 r!13927))))

(declare-fun e!1529965 () Bool)

(assert (=> d!699704 (= lt!872593 e!1529965)))

(declare-fun c!382402 () Bool)

(declare-fun isEmpty!16212 (List!28315) Bool)

(assert (=> d!699704 (= c!382402 (isEmpty!16212 s!9460))))

(assert (=> d!699704 (validRegex!2763 r!13927)))

(assert (=> d!699704 (= (matchR!3155 r!13927 s!9460) lt!872593)))

(declare-fun b!2401594 () Bool)

(declare-fun derivativeStep!1745 (Regex!7038 C!14234) Regex!7038)

(declare-fun head!5307 (List!28315) C!14234)

(declare-fun tail!3577 (List!28315) List!28315)

(assert (=> b!2401594 (= e!1529965 (matchR!3155 (derivativeStep!1745 r!13927 (head!5307 s!9460)) (tail!3577 s!9460)))))

(declare-fun b!2401595 () Bool)

(declare-fun res!1020316 () Bool)

(declare-fun e!1529968 () Bool)

(assert (=> b!2401595 (=> res!1020316 e!1529968)))

(assert (=> b!2401595 (= res!1020316 (not (isEmpty!16212 (tail!3577 s!9460))))))

(declare-fun b!2401596 () Bool)

(declare-fun e!1529971 () Bool)

(assert (=> b!2401596 (= e!1529971 (= (head!5307 s!9460) (c!382366 r!13927)))))

(declare-fun b!2401597 () Bool)

(declare-fun res!1020314 () Bool)

(assert (=> b!2401597 (=> res!1020314 e!1529969)))

(assert (=> b!2401597 (= res!1020314 e!1529971)))

(declare-fun res!1020312 () Bool)

(assert (=> b!2401597 (=> (not res!1020312) (not e!1529971))))

(assert (=> b!2401597 (= res!1020312 lt!872593)))

(declare-fun bm!146718 () Bool)

(declare-fun call!146723 () Bool)

(assert (=> bm!146718 (= call!146723 (isEmpty!16212 s!9460))))

(declare-fun b!2401598 () Bool)

(declare-fun res!1020313 () Bool)

(assert (=> b!2401598 (=> (not res!1020313) (not e!1529971))))

(assert (=> b!2401598 (= res!1020313 (not call!146723))))

(declare-fun b!2401599 () Bool)

(declare-fun res!1020317 () Bool)

(assert (=> b!2401599 (=> (not res!1020317) (not e!1529971))))

(assert (=> b!2401599 (= res!1020317 (isEmpty!16212 (tail!3577 s!9460)))))

(declare-fun b!2401600 () Bool)

(assert (=> b!2401600 (= e!1529966 (not lt!872593))))

(declare-fun b!2401601 () Bool)

(assert (=> b!2401601 (= e!1529965 (nullable!2087 r!13927))))

(declare-fun b!2401602 () Bool)

(assert (=> b!2401602 (= e!1529968 (not (= (head!5307 s!9460) (c!382366 r!13927))))))

(declare-fun b!2401603 () Bool)

(assert (=> b!2401603 (= e!1529967 e!1529966)))

(declare-fun c!382403 () Bool)

(assert (=> b!2401603 (= c!382403 (is-EmptyLang!7038 r!13927))))

(declare-fun b!2401604 () Bool)

(assert (=> b!2401604 (= e!1529967 (= lt!872593 call!146723))))

(declare-fun b!2401605 () Bool)

(assert (=> b!2401605 (= e!1529970 e!1529968)))

(declare-fun res!1020319 () Bool)

(assert (=> b!2401605 (=> res!1020319 e!1529968)))

(assert (=> b!2401605 (= res!1020319 call!146723)))

(assert (= (and d!699704 c!382402) b!2401601))

(assert (= (and d!699704 (not c!382402)) b!2401594))

(assert (= (and d!699704 c!382401) b!2401604))

(assert (= (and d!699704 (not c!382401)) b!2401603))

(assert (= (and b!2401603 c!382403) b!2401600))

(assert (= (and b!2401603 (not c!382403)) b!2401593))

(assert (= (and b!2401593 (not res!1020318)) b!2401597))

(assert (= (and b!2401597 res!1020312) b!2401598))

(assert (= (and b!2401598 res!1020313) b!2401599))

(assert (= (and b!2401599 res!1020317) b!2401596))

(assert (= (and b!2401597 (not res!1020314)) b!2401592))

(assert (= (and b!2401592 res!1020315) b!2401605))

(assert (= (and b!2401605 (not res!1020319)) b!2401595))

(assert (= (and b!2401595 (not res!1020316)) b!2401602))

(assert (= (or b!2401604 b!2401605 b!2401598) bm!146718))

(declare-fun m!2798175 () Bool)

(assert (=> b!2401599 m!2798175))

(assert (=> b!2401599 m!2798175))

(declare-fun m!2798177 () Bool)

(assert (=> b!2401599 m!2798177))

(declare-fun m!2798179 () Bool)

(assert (=> b!2401596 m!2798179))

(assert (=> b!2401594 m!2798179))

(assert (=> b!2401594 m!2798179))

(declare-fun m!2798181 () Bool)

(assert (=> b!2401594 m!2798181))

(assert (=> b!2401594 m!2798175))

(assert (=> b!2401594 m!2798181))

(assert (=> b!2401594 m!2798175))

(declare-fun m!2798183 () Bool)

(assert (=> b!2401594 m!2798183))

(declare-fun m!2798185 () Bool)

(assert (=> b!2401601 m!2798185))

(declare-fun m!2798187 () Bool)

(assert (=> d!699704 m!2798187))

(assert (=> d!699704 m!2798113))

(assert (=> bm!146718 m!2798187))

(assert (=> b!2401595 m!2798175))

(assert (=> b!2401595 m!2798175))

(assert (=> b!2401595 m!2798177))

(assert (=> b!2401602 m!2798179))

(assert (=> b!2401424 d!699704))

(declare-fun b!2401675 () Bool)

(assert (=> b!2401675 true))

(assert (=> b!2401675 true))

(declare-fun bs!463166 () Bool)

(declare-fun b!2401671 () Bool)

(assert (= bs!463166 (and b!2401671 b!2401675)))

(declare-fun lambda!90280 () Int)

(declare-fun lambda!90279 () Int)

(assert (=> bs!463166 (not (= lambda!90280 lambda!90279))))

(assert (=> b!2401671 true))

(assert (=> b!2401671 true))

(declare-fun b!2401666 () Bool)

(declare-fun e!1530012 () Bool)

(declare-fun e!1530006 () Bool)

(assert (=> b!2401666 (= e!1530012 e!1530006)))

(declare-fun res!1020350 () Bool)

(assert (=> b!2401666 (= res!1020350 (not (is-EmptyLang!7038 r!13927)))))

(assert (=> b!2401666 (=> (not res!1020350) (not e!1530006))))

(declare-fun b!2401667 () Bool)

(declare-fun c!382422 () Bool)

(assert (=> b!2401667 (= c!382422 (is-Union!7038 r!13927))))

(declare-fun e!1530009 () Bool)

(declare-fun e!1530008 () Bool)

(assert (=> b!2401667 (= e!1530009 e!1530008)))

(declare-fun bm!146723 () Bool)

(declare-fun call!146728 () Bool)

(declare-fun c!382423 () Bool)

(declare-fun Exists!1097 (Int) Bool)

(assert (=> bm!146723 (= call!146728 (Exists!1097 (ite c!382423 lambda!90279 lambda!90280)))))

(declare-fun bm!146724 () Bool)

(declare-fun call!146729 () Bool)

(assert (=> bm!146724 (= call!146729 (isEmpty!16212 s!9460))))

(declare-fun b!2401668 () Bool)

(assert (=> b!2401668 (= e!1530012 call!146729)))

(declare-fun b!2401669 () Bool)

(declare-fun res!1020348 () Bool)

(declare-fun e!1530011 () Bool)

(assert (=> b!2401669 (=> res!1020348 e!1530011)))

(assert (=> b!2401669 (= res!1020348 call!146729)))

(declare-fun e!1530007 () Bool)

(assert (=> b!2401669 (= e!1530007 e!1530011)))

(declare-fun d!699708 () Bool)

(declare-fun c!382420 () Bool)

(assert (=> d!699708 (= c!382420 (is-EmptyExpr!7038 r!13927))))

(assert (=> d!699708 (= (matchRSpec!887 r!13927 s!9460) e!1530012)))

(declare-fun b!2401670 () Bool)

(declare-fun c!382421 () Bool)

(assert (=> b!2401670 (= c!382421 (is-ElementMatch!7038 r!13927))))

(assert (=> b!2401670 (= e!1530006 e!1530009)))

(assert (=> b!2401671 (= e!1530007 call!146728)))

(declare-fun b!2401672 () Bool)

(declare-fun e!1530010 () Bool)

(assert (=> b!2401672 (= e!1530010 (matchRSpec!887 (regTwo!14589 r!13927) s!9460))))

(declare-fun b!2401673 () Bool)

(assert (=> b!2401673 (= e!1530008 e!1530007)))

(assert (=> b!2401673 (= c!382423 (is-Star!7038 r!13927))))

(declare-fun b!2401674 () Bool)

(assert (=> b!2401674 (= e!1530008 e!1530010)))

(declare-fun res!1020349 () Bool)

(assert (=> b!2401674 (= res!1020349 (matchRSpec!887 (regOne!14589 r!13927) s!9460))))

(assert (=> b!2401674 (=> res!1020349 e!1530010)))

(assert (=> b!2401675 (= e!1530011 call!146728)))

(declare-fun b!2401676 () Bool)

(assert (=> b!2401676 (= e!1530009 (= s!9460 (Cons!28217 (c!382366 r!13927) Nil!28217)))))

(assert (= (and d!699708 c!382420) b!2401668))

(assert (= (and d!699708 (not c!382420)) b!2401666))

(assert (= (and b!2401666 res!1020350) b!2401670))

(assert (= (and b!2401670 c!382421) b!2401676))

(assert (= (and b!2401670 (not c!382421)) b!2401667))

(assert (= (and b!2401667 c!382422) b!2401674))

(assert (= (and b!2401667 (not c!382422)) b!2401673))

(assert (= (and b!2401674 (not res!1020349)) b!2401672))

(assert (= (and b!2401673 c!382423) b!2401669))

(assert (= (and b!2401673 (not c!382423)) b!2401671))

(assert (= (and b!2401669 (not res!1020348)) b!2401675))

(assert (= (or b!2401675 b!2401671) bm!146723))

(assert (= (or b!2401668 b!2401669) bm!146724))

(declare-fun m!2798189 () Bool)

(assert (=> bm!146723 m!2798189))

(assert (=> bm!146724 m!2798187))

(declare-fun m!2798191 () Bool)

(assert (=> b!2401672 m!2798191))

(declare-fun m!2798193 () Bool)

(assert (=> b!2401674 m!2798193))

(assert (=> b!2401424 d!699708))

(declare-fun d!699710 () Bool)

(assert (=> d!699710 (= (matchR!3155 r!13927 s!9460) (matchRSpec!887 r!13927 s!9460))))

(declare-fun lt!872596 () Unit!41347)

(declare-fun choose!14215 (Regex!7038 List!28315) Unit!41347)

(assert (=> d!699710 (= lt!872596 (choose!14215 r!13927 s!9460))))

(assert (=> d!699710 (validRegex!2763 r!13927)))

(assert (=> d!699710 (= (mainMatchTheorem!887 r!13927 s!9460) lt!872596)))

(declare-fun bs!463167 () Bool)

(assert (= bs!463167 d!699710))

(assert (=> bs!463167 m!2798107))

(assert (=> bs!463167 m!2798109))

(declare-fun m!2798195 () Bool)

(assert (=> bs!463167 m!2798195))

(assert (=> bs!463167 m!2798113))

(assert (=> b!2401424 d!699710))

(declare-fun b!2401696 () Bool)

(declare-fun e!1530017 () Bool)

(declare-fun tp!764300 () Bool)

(declare-fun tp!764299 () Bool)

(assert (=> b!2401696 (= e!1530017 (and tp!764300 tp!764299))))

(declare-fun b!2401698 () Bool)

(declare-fun tp!764298 () Bool)

(declare-fun tp!764297 () Bool)

(assert (=> b!2401698 (= e!1530017 (and tp!764298 tp!764297))))

(declare-fun b!2401695 () Bool)

(assert (=> b!2401695 (= e!1530017 tp_is_empty!11489)))

(assert (=> b!2401423 (= tp!764261 e!1530017)))

(declare-fun b!2401697 () Bool)

(declare-fun tp!764296 () Bool)

(assert (=> b!2401697 (= e!1530017 tp!764296)))

(assert (= (and b!2401423 (is-ElementMatch!7038 (reg!7367 r!13927))) b!2401695))

(assert (= (and b!2401423 (is-Concat!11674 (reg!7367 r!13927))) b!2401696))

(assert (= (and b!2401423 (is-Star!7038 (reg!7367 r!13927))) b!2401697))

(assert (= (and b!2401423 (is-Union!7038 (reg!7367 r!13927))) b!2401698))

(declare-fun b!2401700 () Bool)

(declare-fun e!1530018 () Bool)

(declare-fun tp!764305 () Bool)

(declare-fun tp!764304 () Bool)

(assert (=> b!2401700 (= e!1530018 (and tp!764305 tp!764304))))

(declare-fun b!2401702 () Bool)

(declare-fun tp!764303 () Bool)

(declare-fun tp!764302 () Bool)

(assert (=> b!2401702 (= e!1530018 (and tp!764303 tp!764302))))

(declare-fun b!2401699 () Bool)

(assert (=> b!2401699 (= e!1530018 tp_is_empty!11489)))

(assert (=> b!2401427 (= tp!764260 e!1530018)))

(declare-fun b!2401701 () Bool)

(declare-fun tp!764301 () Bool)

(assert (=> b!2401701 (= e!1530018 tp!764301)))

(assert (= (and b!2401427 (is-ElementMatch!7038 (h!33617 l!9164))) b!2401699))

(assert (= (and b!2401427 (is-Concat!11674 (h!33617 l!9164))) b!2401700))

(assert (= (and b!2401427 (is-Star!7038 (h!33617 l!9164))) b!2401701))

(assert (= (and b!2401427 (is-Union!7038 (h!33617 l!9164))) b!2401702))

(declare-fun b!2401707 () Bool)

(declare-fun e!1530021 () Bool)

(declare-fun tp!764310 () Bool)

(declare-fun tp!764311 () Bool)

(assert (=> b!2401707 (= e!1530021 (and tp!764310 tp!764311))))

(assert (=> b!2401427 (= tp!764258 e!1530021)))

(assert (= (and b!2401427 (is-Cons!28216 (t!208291 l!9164))) b!2401707))

(declare-fun b!2401712 () Bool)

(declare-fun e!1530024 () Bool)

(declare-fun tp!764314 () Bool)

(assert (=> b!2401712 (= e!1530024 (and tp_is_empty!11489 tp!764314))))

(assert (=> b!2401426 (= tp!764256 e!1530024)))

(assert (= (and b!2401426 (is-Cons!28217 (t!208292 s!9460))) b!2401712))

(declare-fun b!2401714 () Bool)

(declare-fun e!1530025 () Bool)

(declare-fun tp!764319 () Bool)

(declare-fun tp!764318 () Bool)

(assert (=> b!2401714 (= e!1530025 (and tp!764319 tp!764318))))

(declare-fun b!2401716 () Bool)

(declare-fun tp!764317 () Bool)

(declare-fun tp!764316 () Bool)

(assert (=> b!2401716 (= e!1530025 (and tp!764317 tp!764316))))

(declare-fun b!2401713 () Bool)

(assert (=> b!2401713 (= e!1530025 tp_is_empty!11489)))

(assert (=> b!2401430 (= tp!764257 e!1530025)))

(declare-fun b!2401715 () Bool)

(declare-fun tp!764315 () Bool)

(assert (=> b!2401715 (= e!1530025 tp!764315)))

(assert (= (and b!2401430 (is-ElementMatch!7038 (regOne!14589 r!13927))) b!2401713))

(assert (= (and b!2401430 (is-Concat!11674 (regOne!14589 r!13927))) b!2401714))

(assert (= (and b!2401430 (is-Star!7038 (regOne!14589 r!13927))) b!2401715))

(assert (= (and b!2401430 (is-Union!7038 (regOne!14589 r!13927))) b!2401716))

(declare-fun b!2401718 () Bool)

(declare-fun e!1530026 () Bool)

(declare-fun tp!764324 () Bool)

(declare-fun tp!764323 () Bool)

(assert (=> b!2401718 (= e!1530026 (and tp!764324 tp!764323))))

(declare-fun b!2401720 () Bool)

(declare-fun tp!764322 () Bool)

(declare-fun tp!764321 () Bool)

(assert (=> b!2401720 (= e!1530026 (and tp!764322 tp!764321))))

(declare-fun b!2401717 () Bool)

(assert (=> b!2401717 (= e!1530026 tp_is_empty!11489)))

(assert (=> b!2401430 (= tp!764254 e!1530026)))

(declare-fun b!2401719 () Bool)

(declare-fun tp!764320 () Bool)

(assert (=> b!2401719 (= e!1530026 tp!764320)))

(assert (= (and b!2401430 (is-ElementMatch!7038 (regTwo!14589 r!13927))) b!2401717))

(assert (= (and b!2401430 (is-Concat!11674 (regTwo!14589 r!13927))) b!2401718))

(assert (= (and b!2401430 (is-Star!7038 (regTwo!14589 r!13927))) b!2401719))

(assert (= (and b!2401430 (is-Union!7038 (regTwo!14589 r!13927))) b!2401720))

(declare-fun b!2401722 () Bool)

(declare-fun e!1530027 () Bool)

(declare-fun tp!764329 () Bool)

(declare-fun tp!764328 () Bool)

(assert (=> b!2401722 (= e!1530027 (and tp!764329 tp!764328))))

(declare-fun b!2401724 () Bool)

(declare-fun tp!764327 () Bool)

(declare-fun tp!764326 () Bool)

(assert (=> b!2401724 (= e!1530027 (and tp!764327 tp!764326))))

(declare-fun b!2401721 () Bool)

(assert (=> b!2401721 (= e!1530027 tp_is_empty!11489)))

(assert (=> b!2401429 (= tp!764255 e!1530027)))

(declare-fun b!2401723 () Bool)

(declare-fun tp!764325 () Bool)

(assert (=> b!2401723 (= e!1530027 tp!764325)))

(assert (= (and b!2401429 (is-ElementMatch!7038 (regOne!14588 r!13927))) b!2401721))

(assert (= (and b!2401429 (is-Concat!11674 (regOne!14588 r!13927))) b!2401722))

(assert (= (and b!2401429 (is-Star!7038 (regOne!14588 r!13927))) b!2401723))

(assert (= (and b!2401429 (is-Union!7038 (regOne!14588 r!13927))) b!2401724))

(declare-fun b!2401726 () Bool)

(declare-fun e!1530028 () Bool)

(declare-fun tp!764334 () Bool)

(declare-fun tp!764333 () Bool)

(assert (=> b!2401726 (= e!1530028 (and tp!764334 tp!764333))))

(declare-fun b!2401728 () Bool)

(declare-fun tp!764332 () Bool)

(declare-fun tp!764331 () Bool)

(assert (=> b!2401728 (= e!1530028 (and tp!764332 tp!764331))))

(declare-fun b!2401725 () Bool)

(assert (=> b!2401725 (= e!1530028 tp_is_empty!11489)))

(assert (=> b!2401429 (= tp!764259 e!1530028)))

(declare-fun b!2401727 () Bool)

(declare-fun tp!764330 () Bool)

(assert (=> b!2401727 (= e!1530028 tp!764330)))

(assert (= (and b!2401429 (is-ElementMatch!7038 (regTwo!14588 r!13927))) b!2401725))

(assert (= (and b!2401429 (is-Concat!11674 (regTwo!14588 r!13927))) b!2401726))

(assert (= (and b!2401429 (is-Star!7038 (regTwo!14588 r!13927))) b!2401727))

(assert (= (and b!2401429 (is-Union!7038 (regTwo!14588 r!13927))) b!2401728))

(declare-fun b_lambda!74333 () Bool)

(assert (= b_lambda!74331 (or start!235542 b_lambda!74333)))

(declare-fun bs!463168 () Bool)

(declare-fun d!699712 () Bool)

(assert (= bs!463168 (and d!699712 start!235542)))

(assert (=> bs!463168 (= (dynLambda!12152 lambda!90266 (h!33617 l!9164)) (validRegex!2763 (h!33617 l!9164)))))

(declare-fun m!2798197 () Bool)

(assert (=> bs!463168 m!2798197))

(assert (=> b!2401463 d!699712))

(push 1)

(assert (not b!2401602))

(assert (not b!2401493))

(assert (not b!2401696))

(assert (not b!2401727))

(assert (not bm!146723))

(assert (not b!2401707))

(assert (not b!2401697))

(assert (not b!2401599))

(assert (not b!2401486))

(assert (not b!2401718))

(assert (not bm!146712))

(assert (not b!2401702))

(assert (not b!2401712))

(assert (not b!2401487))

(assert (not b!2401674))

(assert (not b!2401719))

(assert (not b!2401490))

(assert (not b!2401698))

(assert (not b!2401672))

(assert (not b!2401715))

(assert (not b!2401595))

(assert (not b!2401714))

(assert (not b!2401464))

(assert (not d!699704))

(assert (not d!699710))

(assert (not b!2401724))

(assert (not bm!146724))

(assert (not b!2401700))

(assert (not b!2401596))

(assert (not b!2401492))

(assert (not b!2401489))

(assert (not bs!463168))

(assert (not b!2401728))

(assert (not b!2401485))

(assert (not b!2401601))

(assert (not b!2401543))

(assert (not b!2401594))

(assert (not d!699698))

(assert (not b_lambda!74333))

(assert (not bm!146718))

(assert tp_is_empty!11489)

(assert (not b!2401716))

(assert (not b!2401720))

(assert (not b!2401726))

(assert (not b!2401723))

(assert (not b!2401722))

(assert (not bm!146711))

(assert (not b!2401701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

