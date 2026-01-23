; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736786 () Bool)

(assert start!736786)

(declare-fun b!7694058 () Bool)

(assert (=> b!7694058 true))

(assert (=> b!7694058 true))

(declare-fun b!7694052 () Bool)

(declare-fun res!3073427 () Bool)

(declare-fun e!4566922 () Bool)

(assert (=> b!7694052 (=> (not res!3073427) (not e!4566922))))

(declare-datatypes ((C!41354 0))(
  ( (C!41355 (val!31117 Int)) )
))
(declare-datatypes ((List!73365 0))(
  ( (Nil!73241) (Cons!73241 (h!79689 C!41354) (t!388100 List!73365)) )
))
(declare-fun s!9605 () List!73365)

(declare-fun isEmpty!41886 (List!73365) Bool)

(assert (=> b!7694052 (= res!3073427 (not (isEmpty!41886 s!9605)))))

(declare-fun b!7694053 () Bool)

(declare-fun e!4566925 () Bool)

(declare-fun tp_is_empty!51383 () Bool)

(declare-fun tp!2253942 () Bool)

(assert (=> b!7694053 (= e!4566925 (and tp_is_empty!51383 tp!2253942))))

(declare-fun b!7694055 () Bool)

(declare-fun e!4566924 () Bool)

(declare-fun tp!2253943 () Bool)

(declare-fun tp!2253939 () Bool)

(assert (=> b!7694055 (= e!4566924 (and tp!2253943 tp!2253939))))

(declare-fun b!7694056 () Bool)

(assert (=> b!7694056 (= e!4566924 tp_is_empty!51383)))

(declare-fun b!7694057 () Bool)

(declare-fun res!3073425 () Bool)

(assert (=> b!7694057 (=> (not res!3073425) (not e!4566922))))

(declare-datatypes ((Regex!20514 0))(
  ( (ElementMatch!20514 (c!1417983 C!41354)) (Concat!29359 (regOne!41540 Regex!20514) (regTwo!41540 Regex!20514)) (EmptyExpr!20514) (Star!20514 (reg!20843 Regex!20514)) (EmptyLang!20514) (Union!20514 (regOne!41541 Regex!20514) (regTwo!41541 Regex!20514)) )
))
(declare-fun r!14126 () Regex!20514)

(assert (=> b!7694057 (= res!3073425 (and (not (is-EmptyExpr!20514 r!14126)) (not (is-EmptyLang!20514 r!14126)) (not (is-ElementMatch!20514 r!14126)) (not (is-Union!20514 r!14126)) (is-Star!20514 r!14126)))))

(declare-fun e!4566923 () Bool)

(assert (=> b!7694058 (= e!4566922 (not e!4566923))))

(declare-fun res!3073429 () Bool)

(assert (=> b!7694058 (=> res!3073429 e!4566923)))

(declare-fun lt!2664193 () Bool)

(assert (=> b!7694058 (= res!3073429 lt!2664193)))

(declare-fun lambda!470450 () Int)

(declare-fun Exists!4639 (Int) Bool)

(assert (=> b!7694058 (= lt!2664193 (Exists!4639 lambda!470450))))

(declare-datatypes ((tuple2!69490 0))(
  ( (tuple2!69491 (_1!38048 List!73365) (_2!38048 List!73365)) )
))
(declare-datatypes ((Option!17539 0))(
  ( (None!17538) (Some!17538 (v!54673 tuple2!69490)) )
))
(declare-fun isDefined!14155 (Option!17539) Bool)

(declare-fun findConcatSeparation!3569 (Regex!20514 Regex!20514 List!73365 List!73365 List!73365) Option!17539)

(assert (=> b!7694058 (= lt!2664193 (isDefined!14155 (findConcatSeparation!3569 (reg!20843 r!14126) r!14126 Nil!73241 s!9605 s!9605)))))

(declare-datatypes ((Unit!168060 0))(
  ( (Unit!168061) )
))
(declare-fun lt!2664191 () Unit!168060)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3327 (Regex!20514 Regex!20514 List!73365) Unit!168060)

(assert (=> b!7694058 (= lt!2664191 (lemmaFindConcatSeparationEquivalentToExists!3327 (reg!20843 r!14126) r!14126 s!9605))))

(declare-fun b!7694059 () Bool)

(declare-fun tp!2253941 () Bool)

(declare-fun tp!2253938 () Bool)

(assert (=> b!7694059 (= e!4566924 (and tp!2253941 tp!2253938))))

(declare-fun res!3073428 () Bool)

(assert (=> start!736786 (=> (not res!3073428) (not e!4566922))))

(declare-fun validRegex!10932 (Regex!20514) Bool)

(assert (=> start!736786 (= res!3073428 (validRegex!10932 r!14126))))

(assert (=> start!736786 e!4566922))

(assert (=> start!736786 e!4566924))

(assert (=> start!736786 e!4566925))

(declare-fun b!7694054 () Bool)

(declare-fun tp!2253940 () Bool)

(assert (=> b!7694054 (= e!4566924 tp!2253940)))

(declare-fun b!7694060 () Bool)

(declare-fun res!3073426 () Bool)

(assert (=> b!7694060 (=> res!3073426 e!4566923)))

(declare-fun matchR!10010 (Regex!20514 List!73365) Bool)

(assert (=> b!7694060 (= res!3073426 (not (matchR!10010 r!14126 s!9605)))))

(declare-fun b!7694061 () Bool)

(assert (=> b!7694061 (= e!4566923 (validRegex!10932 (reg!20843 r!14126)))))

(assert (=> b!7694061 (matchR!10010 (Concat!29359 (reg!20843 r!14126) r!14126) s!9605)))

(declare-fun lt!2664192 () Unit!168060)

(declare-fun lemmaStarAppConcat!29 (Regex!20514 List!73365) Unit!168060)

(assert (=> b!7694061 (= lt!2664192 (lemmaStarAppConcat!29 (reg!20843 r!14126) s!9605))))

(assert (= (and start!736786 res!3073428) b!7694057))

(assert (= (and b!7694057 res!3073425) b!7694052))

(assert (= (and b!7694052 res!3073427) b!7694058))

(assert (= (and b!7694058 (not res!3073429)) b!7694060))

(assert (= (and b!7694060 (not res!3073426)) b!7694061))

(assert (= (and start!736786 (is-ElementMatch!20514 r!14126)) b!7694056))

(assert (= (and start!736786 (is-Concat!29359 r!14126)) b!7694055))

(assert (= (and start!736786 (is-Star!20514 r!14126)) b!7694054))

(assert (= (and start!736786 (is-Union!20514 r!14126)) b!7694059))

(assert (= (and start!736786 (is-Cons!73241 s!9605)) b!7694053))

(declare-fun m!8187330 () Bool)

(assert (=> b!7694058 m!8187330))

(declare-fun m!8187332 () Bool)

(assert (=> b!7694058 m!8187332))

(assert (=> b!7694058 m!8187332))

(declare-fun m!8187334 () Bool)

(assert (=> b!7694058 m!8187334))

(declare-fun m!8187336 () Bool)

(assert (=> b!7694058 m!8187336))

(declare-fun m!8187338 () Bool)

(assert (=> b!7694060 m!8187338))

(declare-fun m!8187340 () Bool)

(assert (=> b!7694061 m!8187340))

(declare-fun m!8187342 () Bool)

(assert (=> b!7694061 m!8187342))

(declare-fun m!8187344 () Bool)

(assert (=> b!7694061 m!8187344))

(declare-fun m!8187346 () Bool)

(assert (=> start!736786 m!8187346))

(declare-fun m!8187348 () Bool)

(assert (=> b!7694052 m!8187348))

(push 1)

(assert (not b!7694058))

(assert (not b!7694052))

(assert (not start!736786))

(assert (not b!7694055))

(assert (not b!7694060))

(assert tp_is_empty!51383)

(assert (not b!7694054))

(assert (not b!7694059))

(assert (not b!7694061))

(assert (not b!7694053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7694132 () Bool)

(declare-fun res!3073468 () Bool)

(declare-fun e!4566958 () Bool)

(assert (=> b!7694132 (=> res!3073468 e!4566958)))

(declare-fun e!4566956 () Bool)

(assert (=> b!7694132 (= res!3073468 e!4566956)))

(declare-fun res!3073466 () Bool)

(assert (=> b!7694132 (=> (not res!3073466) (not e!4566956))))

(declare-fun lt!2664205 () Bool)

(assert (=> b!7694132 (= res!3073466 lt!2664205)))

(declare-fun b!7694133 () Bool)

(declare-fun e!4566960 () Bool)

(declare-fun call!709631 () Bool)

(assert (=> b!7694133 (= e!4566960 (= lt!2664205 call!709631))))

(declare-fun b!7694134 () Bool)

(declare-fun res!3073465 () Bool)

(assert (=> b!7694134 (=> (not res!3073465) (not e!4566956))))

(declare-fun tail!15305 (List!73365) List!73365)

(assert (=> b!7694134 (= res!3073465 (isEmpty!41886 (tail!15305 s!9605)))))

(declare-fun b!7694136 () Bool)

(declare-fun e!4566955 () Bool)

(declare-fun e!4566959 () Bool)

(assert (=> b!7694136 (= e!4566955 e!4566959)))

(declare-fun res!3073471 () Bool)

(assert (=> b!7694136 (=> res!3073471 e!4566959)))

(assert (=> b!7694136 (= res!3073471 call!709631)))

(declare-fun bm!709626 () Bool)

(assert (=> bm!709626 (= call!709631 (isEmpty!41886 s!9605))))

(declare-fun b!7694137 () Bool)

(declare-fun res!3073467 () Bool)

(assert (=> b!7694137 (=> res!3073467 e!4566959)))

(assert (=> b!7694137 (= res!3073467 (not (isEmpty!41886 (tail!15305 s!9605))))))

(declare-fun b!7694138 () Bool)

(declare-fun e!4566954 () Bool)

(assert (=> b!7694138 (= e!4566960 e!4566954)))

(declare-fun c!1417993 () Bool)

(assert (=> b!7694138 (= c!1417993 (is-EmptyLang!20514 r!14126))))

(declare-fun b!7694139 () Bool)

(declare-fun res!3073469 () Bool)

(assert (=> b!7694139 (=> (not res!3073469) (not e!4566956))))

(assert (=> b!7694139 (= res!3073469 (not call!709631))))

(declare-fun b!7694140 () Bool)

(assert (=> b!7694140 (= e!4566958 e!4566955)))

(declare-fun res!3073472 () Bool)

(assert (=> b!7694140 (=> (not res!3073472) (not e!4566955))))

(assert (=> b!7694140 (= res!3073472 (not lt!2664205))))

(declare-fun b!7694141 () Bool)

(declare-fun head!15765 (List!73365) C!41354)

(assert (=> b!7694141 (= e!4566956 (= (head!15765 s!9605) (c!1417983 r!14126)))))

(declare-fun b!7694135 () Bool)

(declare-fun e!4566957 () Bool)

(declare-fun derivativeStep!5965 (Regex!20514 C!41354) Regex!20514)

(assert (=> b!7694135 (= e!4566957 (matchR!10010 (derivativeStep!5965 r!14126 (head!15765 s!9605)) (tail!15305 s!9605)))))

(declare-fun d!2333477 () Bool)

(assert (=> d!2333477 e!4566960))

(declare-fun c!1417991 () Bool)

(assert (=> d!2333477 (= c!1417991 (is-EmptyExpr!20514 r!14126))))

(assert (=> d!2333477 (= lt!2664205 e!4566957)))

(declare-fun c!1417992 () Bool)

(assert (=> d!2333477 (= c!1417992 (isEmpty!41886 s!9605))))

(assert (=> d!2333477 (validRegex!10932 r!14126)))

(assert (=> d!2333477 (= (matchR!10010 r!14126 s!9605) lt!2664205)))

(declare-fun b!7694142 () Bool)

(declare-fun res!3073470 () Bool)

(assert (=> b!7694142 (=> res!3073470 e!4566958)))

(assert (=> b!7694142 (= res!3073470 (not (is-ElementMatch!20514 r!14126)))))

(assert (=> b!7694142 (= e!4566954 e!4566958)))

(declare-fun b!7694143 () Bool)

(assert (=> b!7694143 (= e!4566954 (not lt!2664205))))

(declare-fun b!7694144 () Bool)

(declare-fun nullable!8999 (Regex!20514) Bool)

(assert (=> b!7694144 (= e!4566957 (nullable!8999 r!14126))))

(declare-fun b!7694145 () Bool)

(assert (=> b!7694145 (= e!4566959 (not (= (head!15765 s!9605) (c!1417983 r!14126))))))

(assert (= (and d!2333477 c!1417992) b!7694144))

(assert (= (and d!2333477 (not c!1417992)) b!7694135))

(assert (= (and d!2333477 c!1417991) b!7694133))

(assert (= (and d!2333477 (not c!1417991)) b!7694138))

(assert (= (and b!7694138 c!1417993) b!7694143))

(assert (= (and b!7694138 (not c!1417993)) b!7694142))

(assert (= (and b!7694142 (not res!3073470)) b!7694132))

(assert (= (and b!7694132 res!3073466) b!7694139))

(assert (= (and b!7694139 res!3073469) b!7694134))

(assert (= (and b!7694134 res!3073465) b!7694141))

(assert (= (and b!7694132 (not res!3073468)) b!7694140))

(assert (= (and b!7694140 res!3073472) b!7694136))

(assert (= (and b!7694136 (not res!3073471)) b!7694137))

(assert (= (and b!7694137 (not res!3073467)) b!7694145))

(assert (= (or b!7694133 b!7694136 b!7694139) bm!709626))

(declare-fun m!8187370 () Bool)

(assert (=> b!7694134 m!8187370))

(assert (=> b!7694134 m!8187370))

(declare-fun m!8187372 () Bool)

(assert (=> b!7694134 m!8187372))

(declare-fun m!8187374 () Bool)

(assert (=> b!7694135 m!8187374))

(assert (=> b!7694135 m!8187374))

(declare-fun m!8187376 () Bool)

(assert (=> b!7694135 m!8187376))

(assert (=> b!7694135 m!8187370))

(assert (=> b!7694135 m!8187376))

(assert (=> b!7694135 m!8187370))

(declare-fun m!8187378 () Bool)

(assert (=> b!7694135 m!8187378))

(declare-fun m!8187380 () Bool)

(assert (=> b!7694144 m!8187380))

(assert (=> b!7694145 m!8187374))

(assert (=> bm!709626 m!8187348))

(assert (=> d!2333477 m!8187348))

(assert (=> d!2333477 m!8187346))

(assert (=> b!7694141 m!8187374))

(assert (=> b!7694137 m!8187370))

(assert (=> b!7694137 m!8187370))

(assert (=> b!7694137 m!8187372))

(assert (=> b!7694060 d!2333477))

(declare-fun d!2333481 () Bool)

(declare-fun res!3073495 () Bool)

(declare-fun e!4566991 () Bool)

(assert (=> d!2333481 (=> res!3073495 e!4566991)))

(assert (=> d!2333481 (= res!3073495 (is-ElementMatch!20514 r!14126))))

(assert (=> d!2333481 (= (validRegex!10932 r!14126) e!4566991)))

(declare-fun c!1418003 () Bool)

(declare-fun bm!709637 () Bool)

(declare-fun call!709642 () Bool)

(declare-fun c!1418002 () Bool)

(assert (=> bm!709637 (= call!709642 (validRegex!10932 (ite c!1418003 (reg!20843 r!14126) (ite c!1418002 (regOne!41541 r!14126) (regOne!41540 r!14126)))))))

(declare-fun b!7694182 () Bool)

(declare-fun e!4566990 () Bool)

(assert (=> b!7694182 (= e!4566990 call!709642)))

(declare-fun bm!709638 () Bool)

(declare-fun call!709644 () Bool)

(assert (=> bm!709638 (= call!709644 call!709642)))

(declare-fun b!7694183 () Bool)

(declare-fun e!4566993 () Bool)

(declare-fun e!4566989 () Bool)

(assert (=> b!7694183 (= e!4566993 e!4566989)))

(assert (=> b!7694183 (= c!1418002 (is-Union!20514 r!14126))))

(declare-fun b!7694184 () Bool)

(declare-fun e!4566994 () Bool)

(declare-fun call!709643 () Bool)

(assert (=> b!7694184 (= e!4566994 call!709643)))

(declare-fun b!7694185 () Bool)

(assert (=> b!7694185 (= e!4566991 e!4566993)))

(assert (=> b!7694185 (= c!1418003 (is-Star!20514 r!14126))))

(declare-fun bm!709639 () Bool)

(assert (=> bm!709639 (= call!709643 (validRegex!10932 (ite c!1418002 (regTwo!41541 r!14126) (regTwo!41540 r!14126))))))

(declare-fun b!7694186 () Bool)

(declare-fun e!4566992 () Bool)

(assert (=> b!7694186 (= e!4566992 call!709643)))

(declare-fun b!7694187 () Bool)

(declare-fun e!4566995 () Bool)

(assert (=> b!7694187 (= e!4566995 e!4566994)))

(declare-fun res!3073496 () Bool)

(assert (=> b!7694187 (=> (not res!3073496) (not e!4566994))))

(assert (=> b!7694187 (= res!3073496 call!709644)))

(declare-fun b!7694188 () Bool)

(assert (=> b!7694188 (= e!4566993 e!4566990)))

(declare-fun res!3073494 () Bool)

(assert (=> b!7694188 (= res!3073494 (not (nullable!8999 (reg!20843 r!14126))))))

(assert (=> b!7694188 (=> (not res!3073494) (not e!4566990))))

(declare-fun b!7694189 () Bool)

(declare-fun res!3073493 () Bool)

(assert (=> b!7694189 (=> (not res!3073493) (not e!4566992))))

(assert (=> b!7694189 (= res!3073493 call!709644)))

(assert (=> b!7694189 (= e!4566989 e!4566992)))

(declare-fun b!7694190 () Bool)

(declare-fun res!3073497 () Bool)

(assert (=> b!7694190 (=> res!3073497 e!4566995)))

(assert (=> b!7694190 (= res!3073497 (not (is-Concat!29359 r!14126)))))

(assert (=> b!7694190 (= e!4566989 e!4566995)))

(assert (= (and d!2333481 (not res!3073495)) b!7694185))

(assert (= (and b!7694185 c!1418003) b!7694188))

(assert (= (and b!7694185 (not c!1418003)) b!7694183))

(assert (= (and b!7694188 res!3073494) b!7694182))

(assert (= (and b!7694183 c!1418002) b!7694189))

(assert (= (and b!7694183 (not c!1418002)) b!7694190))

(assert (= (and b!7694189 res!3073493) b!7694186))

(assert (= (and b!7694190 (not res!3073497)) b!7694187))

(assert (= (and b!7694187 res!3073496) b!7694184))

(assert (= (or b!7694189 b!7694187) bm!709638))

(assert (= (or b!7694186 b!7694184) bm!709639))

(assert (= (or b!7694182 bm!709638) bm!709637))

(declare-fun m!8187382 () Bool)

(assert (=> bm!709637 m!8187382))

(declare-fun m!8187384 () Bool)

(assert (=> bm!709639 m!8187384))

(declare-fun m!8187386 () Bool)

(assert (=> b!7694188 m!8187386))

(assert (=> start!736786 d!2333481))

(declare-fun d!2333483 () Bool)

(declare-fun res!3073500 () Bool)

(declare-fun e!4566998 () Bool)

(assert (=> d!2333483 (=> res!3073500 e!4566998)))

(assert (=> d!2333483 (= res!3073500 (is-ElementMatch!20514 (reg!20843 r!14126)))))

(assert (=> d!2333483 (= (validRegex!10932 (reg!20843 r!14126)) e!4566998)))

(declare-fun c!1418004 () Bool)

(declare-fun c!1418005 () Bool)

(declare-fun call!709647 () Bool)

(declare-fun bm!709640 () Bool)

(assert (=> bm!709640 (= call!709647 (validRegex!10932 (ite c!1418005 (reg!20843 (reg!20843 r!14126)) (ite c!1418004 (regOne!41541 (reg!20843 r!14126)) (regOne!41540 (reg!20843 r!14126))))))))

(declare-fun b!7694191 () Bool)

(declare-fun e!4566997 () Bool)

(assert (=> b!7694191 (= e!4566997 call!709647)))

(declare-fun bm!709641 () Bool)

(declare-fun call!709649 () Bool)

(assert (=> bm!709641 (= call!709649 call!709647)))

(declare-fun b!7694192 () Bool)

(declare-fun e!4567000 () Bool)

(declare-fun e!4566996 () Bool)

(assert (=> b!7694192 (= e!4567000 e!4566996)))

(assert (=> b!7694192 (= c!1418004 (is-Union!20514 (reg!20843 r!14126)))))

(declare-fun b!7694193 () Bool)

(declare-fun e!4567001 () Bool)

(declare-fun call!709648 () Bool)

(assert (=> b!7694193 (= e!4567001 call!709648)))

(declare-fun b!7694194 () Bool)

(assert (=> b!7694194 (= e!4566998 e!4567000)))

(assert (=> b!7694194 (= c!1418005 (is-Star!20514 (reg!20843 r!14126)))))

(declare-fun bm!709642 () Bool)

(assert (=> bm!709642 (= call!709648 (validRegex!10932 (ite c!1418004 (regTwo!41541 (reg!20843 r!14126)) (regTwo!41540 (reg!20843 r!14126)))))))

(declare-fun b!7694195 () Bool)

(declare-fun e!4566999 () Bool)

(assert (=> b!7694195 (= e!4566999 call!709648)))

(declare-fun b!7694196 () Bool)

(declare-fun e!4567002 () Bool)

(assert (=> b!7694196 (= e!4567002 e!4567001)))

(declare-fun res!3073501 () Bool)

(assert (=> b!7694196 (=> (not res!3073501) (not e!4567001))))

(assert (=> b!7694196 (= res!3073501 call!709649)))

(declare-fun b!7694197 () Bool)

(assert (=> b!7694197 (= e!4567000 e!4566997)))

(declare-fun res!3073499 () Bool)

(assert (=> b!7694197 (= res!3073499 (not (nullable!8999 (reg!20843 (reg!20843 r!14126)))))))

(assert (=> b!7694197 (=> (not res!3073499) (not e!4566997))))

(declare-fun b!7694198 () Bool)

(declare-fun res!3073498 () Bool)

(assert (=> b!7694198 (=> (not res!3073498) (not e!4566999))))

(assert (=> b!7694198 (= res!3073498 call!709649)))

(assert (=> b!7694198 (= e!4566996 e!4566999)))

(declare-fun b!7694199 () Bool)

(declare-fun res!3073502 () Bool)

(assert (=> b!7694199 (=> res!3073502 e!4567002)))

(assert (=> b!7694199 (= res!3073502 (not (is-Concat!29359 (reg!20843 r!14126))))))

(assert (=> b!7694199 (= e!4566996 e!4567002)))

(assert (= (and d!2333483 (not res!3073500)) b!7694194))

(assert (= (and b!7694194 c!1418005) b!7694197))

(assert (= (and b!7694194 (not c!1418005)) b!7694192))

(assert (= (and b!7694197 res!3073499) b!7694191))

(assert (= (and b!7694192 c!1418004) b!7694198))

(assert (= (and b!7694192 (not c!1418004)) b!7694199))

(assert (= (and b!7694198 res!3073498) b!7694195))

(assert (= (and b!7694199 (not res!3073502)) b!7694196))

(assert (= (and b!7694196 res!3073501) b!7694193))

(assert (= (or b!7694198 b!7694196) bm!709641))

(assert (= (or b!7694195 b!7694193) bm!709642))

(assert (= (or b!7694191 bm!709641) bm!709640))

(declare-fun m!8187388 () Bool)

(assert (=> bm!709640 m!8187388))

(declare-fun m!8187390 () Bool)

(assert (=> bm!709642 m!8187390))

(declare-fun m!8187392 () Bool)

(assert (=> b!7694197 m!8187392))

(assert (=> b!7694061 d!2333483))

(declare-fun b!7694200 () Bool)

(declare-fun res!3073506 () Bool)

(declare-fun e!4567007 () Bool)

(assert (=> b!7694200 (=> res!3073506 e!4567007)))

(declare-fun e!4567005 () Bool)

(assert (=> b!7694200 (= res!3073506 e!4567005)))

(declare-fun res!3073504 () Bool)

(assert (=> b!7694200 (=> (not res!3073504) (not e!4567005))))

(declare-fun lt!2664206 () Bool)

(assert (=> b!7694200 (= res!3073504 lt!2664206)))

(declare-fun b!7694201 () Bool)

(declare-fun e!4567009 () Bool)

(declare-fun call!709650 () Bool)

(assert (=> b!7694201 (= e!4567009 (= lt!2664206 call!709650))))

(declare-fun b!7694202 () Bool)

(declare-fun res!3073503 () Bool)

(assert (=> b!7694202 (=> (not res!3073503) (not e!4567005))))

(assert (=> b!7694202 (= res!3073503 (isEmpty!41886 (tail!15305 s!9605)))))

(declare-fun b!7694204 () Bool)

(declare-fun e!4567004 () Bool)

(declare-fun e!4567008 () Bool)

(assert (=> b!7694204 (= e!4567004 e!4567008)))

(declare-fun res!3073509 () Bool)

(assert (=> b!7694204 (=> res!3073509 e!4567008)))

(assert (=> b!7694204 (= res!3073509 call!709650)))

(declare-fun bm!709645 () Bool)

(assert (=> bm!709645 (= call!709650 (isEmpty!41886 s!9605))))

(declare-fun b!7694205 () Bool)

(declare-fun res!3073505 () Bool)

(assert (=> b!7694205 (=> res!3073505 e!4567008)))

(assert (=> b!7694205 (= res!3073505 (not (isEmpty!41886 (tail!15305 s!9605))))))

(declare-fun b!7694206 () Bool)

(declare-fun e!4567003 () Bool)

(assert (=> b!7694206 (= e!4567009 e!4567003)))

(declare-fun c!1418008 () Bool)

(assert (=> b!7694206 (= c!1418008 (is-EmptyLang!20514 (Concat!29359 (reg!20843 r!14126) r!14126)))))

(declare-fun b!7694207 () Bool)

(declare-fun res!3073507 () Bool)

(assert (=> b!7694207 (=> (not res!3073507) (not e!4567005))))

(assert (=> b!7694207 (= res!3073507 (not call!709650))))

(declare-fun b!7694208 () Bool)

(assert (=> b!7694208 (= e!4567007 e!4567004)))

(declare-fun res!3073510 () Bool)

(assert (=> b!7694208 (=> (not res!3073510) (not e!4567004))))

(assert (=> b!7694208 (= res!3073510 (not lt!2664206))))

(declare-fun b!7694209 () Bool)

(assert (=> b!7694209 (= e!4567005 (= (head!15765 s!9605) (c!1417983 (Concat!29359 (reg!20843 r!14126) r!14126))))))

(declare-fun b!7694203 () Bool)

(declare-fun e!4567006 () Bool)

(assert (=> b!7694203 (= e!4567006 (matchR!10010 (derivativeStep!5965 (Concat!29359 (reg!20843 r!14126) r!14126) (head!15765 s!9605)) (tail!15305 s!9605)))))

(declare-fun d!2333485 () Bool)

(assert (=> d!2333485 e!4567009))

(declare-fun c!1418006 () Bool)

(assert (=> d!2333485 (= c!1418006 (is-EmptyExpr!20514 (Concat!29359 (reg!20843 r!14126) r!14126)))))

(assert (=> d!2333485 (= lt!2664206 e!4567006)))

(declare-fun c!1418007 () Bool)

(assert (=> d!2333485 (= c!1418007 (isEmpty!41886 s!9605))))

(assert (=> d!2333485 (validRegex!10932 (Concat!29359 (reg!20843 r!14126) r!14126))))

(assert (=> d!2333485 (= (matchR!10010 (Concat!29359 (reg!20843 r!14126) r!14126) s!9605) lt!2664206)))

(declare-fun b!7694210 () Bool)

(declare-fun res!3073508 () Bool)

(assert (=> b!7694210 (=> res!3073508 e!4567007)))

(assert (=> b!7694210 (= res!3073508 (not (is-ElementMatch!20514 (Concat!29359 (reg!20843 r!14126) r!14126))))))

(assert (=> b!7694210 (= e!4567003 e!4567007)))

(declare-fun b!7694211 () Bool)

(assert (=> b!7694211 (= e!4567003 (not lt!2664206))))

(declare-fun b!7694212 () Bool)

(assert (=> b!7694212 (= e!4567006 (nullable!8999 (Concat!29359 (reg!20843 r!14126) r!14126)))))

(declare-fun b!7694213 () Bool)

(assert (=> b!7694213 (= e!4567008 (not (= (head!15765 s!9605) (c!1417983 (Concat!29359 (reg!20843 r!14126) r!14126)))))))

(assert (= (and d!2333485 c!1418007) b!7694212))

(assert (= (and d!2333485 (not c!1418007)) b!7694203))

(assert (= (and d!2333485 c!1418006) b!7694201))

(assert (= (and d!2333485 (not c!1418006)) b!7694206))

(assert (= (and b!7694206 c!1418008) b!7694211))

(assert (= (and b!7694206 (not c!1418008)) b!7694210))

(assert (= (and b!7694210 (not res!3073508)) b!7694200))

(assert (= (and b!7694200 res!3073504) b!7694207))

(assert (= (and b!7694207 res!3073507) b!7694202))

(assert (= (and b!7694202 res!3073503) b!7694209))

(assert (= (and b!7694200 (not res!3073506)) b!7694208))

(assert (= (and b!7694208 res!3073510) b!7694204))

(assert (= (and b!7694204 (not res!3073509)) b!7694205))

(assert (= (and b!7694205 (not res!3073505)) b!7694213))

(assert (= (or b!7694201 b!7694204 b!7694207) bm!709645))

(assert (=> b!7694202 m!8187370))

(assert (=> b!7694202 m!8187370))

(assert (=> b!7694202 m!8187372))

(assert (=> b!7694203 m!8187374))

(assert (=> b!7694203 m!8187374))

(declare-fun m!8187394 () Bool)

(assert (=> b!7694203 m!8187394))

(assert (=> b!7694203 m!8187370))

(assert (=> b!7694203 m!8187394))

(assert (=> b!7694203 m!8187370))

(declare-fun m!8187396 () Bool)

(assert (=> b!7694203 m!8187396))

(declare-fun m!8187398 () Bool)

(assert (=> b!7694212 m!8187398))

(assert (=> b!7694213 m!8187374))

(assert (=> bm!709645 m!8187348))

(assert (=> d!2333485 m!8187348))

(declare-fun m!8187400 () Bool)

(assert (=> d!2333485 m!8187400))

(assert (=> b!7694209 m!8187374))

(assert (=> b!7694205 m!8187370))

(assert (=> b!7694205 m!8187370))

(assert (=> b!7694205 m!8187372))

(assert (=> b!7694061 d!2333485))

(declare-fun d!2333487 () Bool)

(declare-fun e!4567012 () Bool)

(assert (=> d!2333487 e!4567012))

(declare-fun res!3073513 () Bool)

(assert (=> d!2333487 (=> res!3073513 e!4567012)))

(assert (=> d!2333487 (= res!3073513 (isEmpty!41886 s!9605))))

(declare-fun lt!2664209 () Unit!168060)

(declare-fun choose!59144 (Regex!20514 List!73365) Unit!168060)

(assert (=> d!2333487 (= lt!2664209 (choose!59144 (reg!20843 r!14126) s!9605))))

(assert (=> d!2333487 (validRegex!10932 (Star!20514 (reg!20843 r!14126)))))

(assert (=> d!2333487 (= (lemmaStarAppConcat!29 (reg!20843 r!14126) s!9605) lt!2664209)))

(declare-fun b!7694216 () Bool)

(assert (=> b!7694216 (= e!4567012 (matchR!10010 (Concat!29359 (reg!20843 r!14126) (Star!20514 (reg!20843 r!14126))) s!9605))))

(assert (= (and d!2333487 (not res!3073513)) b!7694216))

(assert (=> d!2333487 m!8187348))

(declare-fun m!8187402 () Bool)

(assert (=> d!2333487 m!8187402))

(declare-fun m!8187404 () Bool)

(assert (=> d!2333487 m!8187404))

(declare-fun m!8187406 () Bool)

(assert (=> b!7694216 m!8187406))

(assert (=> b!7694061 d!2333487))

(declare-fun d!2333489 () Bool)

(assert (=> d!2333489 (= (isEmpty!41886 s!9605) (is-Nil!73241 s!9605))))

(assert (=> b!7694052 d!2333489))

(declare-fun d!2333491 () Bool)

(declare-fun choose!59145 (Int) Bool)

(assert (=> d!2333491 (= (Exists!4639 lambda!470450) (choose!59145 lambda!470450))))

(declare-fun bs!1956525 () Bool)

(assert (= bs!1956525 d!2333491))

(declare-fun m!8187408 () Bool)

(assert (=> bs!1956525 m!8187408))

(assert (=> b!7694058 d!2333491))

(declare-fun d!2333493 () Bool)

(declare-fun isEmpty!41888 (Option!17539) Bool)

(assert (=> d!2333493 (= (isDefined!14155 (findConcatSeparation!3569 (reg!20843 r!14126) r!14126 Nil!73241 s!9605 s!9605)) (not (isEmpty!41888 (findConcatSeparation!3569 (reg!20843 r!14126) r!14126 Nil!73241 s!9605 s!9605))))))

(declare-fun bs!1956526 () Bool)

(assert (= bs!1956526 d!2333493))

(assert (=> bs!1956526 m!8187332))

(declare-fun m!8187410 () Bool)

(assert (=> bs!1956526 m!8187410))

(assert (=> b!7694058 d!2333493))

(declare-fun b!7694253 () Bool)

(declare-fun e!4567038 () Option!17539)

(declare-fun e!4567037 () Option!17539)

(assert (=> b!7694253 (= e!4567038 e!4567037)))

(declare-fun c!1418017 () Bool)

(assert (=> b!7694253 (= c!1418017 (is-Nil!73241 s!9605))))

(declare-fun d!2333495 () Bool)

(declare-fun e!4567040 () Bool)

(assert (=> d!2333495 e!4567040))

(declare-fun res!3073536 () Bool)

(assert (=> d!2333495 (=> res!3073536 e!4567040)))

(declare-fun e!4567041 () Bool)

(assert (=> d!2333495 (= res!3073536 e!4567041)))

(declare-fun res!3073538 () Bool)

(assert (=> d!2333495 (=> (not res!3073538) (not e!4567041))))

(declare-fun lt!2664216 () Option!17539)

(assert (=> d!2333495 (= res!3073538 (isDefined!14155 lt!2664216))))

(assert (=> d!2333495 (= lt!2664216 e!4567038)))

(declare-fun c!1418018 () Bool)

(declare-fun e!4567039 () Bool)

(assert (=> d!2333495 (= c!1418018 e!4567039)))

(declare-fun res!3073537 () Bool)

(assert (=> d!2333495 (=> (not res!3073537) (not e!4567039))))

(assert (=> d!2333495 (= res!3073537 (matchR!10010 (reg!20843 r!14126) Nil!73241))))

(assert (=> d!2333495 (validRegex!10932 (reg!20843 r!14126))))

(assert (=> d!2333495 (= (findConcatSeparation!3569 (reg!20843 r!14126) r!14126 Nil!73241 s!9605 s!9605) lt!2664216)))

(declare-fun b!7694254 () Bool)

(assert (=> b!7694254 (= e!4567037 None!17538)))

(declare-fun b!7694255 () Bool)

(assert (=> b!7694255 (= e!4567039 (matchR!10010 r!14126 s!9605))))

(declare-fun b!7694256 () Bool)

(declare-fun lt!2664218 () Unit!168060)

(declare-fun lt!2664217 () Unit!168060)

(assert (=> b!7694256 (= lt!2664218 lt!2664217)))

(declare-fun ++!17732 (List!73365 List!73365) List!73365)

(assert (=> b!7694256 (= (++!17732 (++!17732 Nil!73241 (Cons!73241 (h!79689 s!9605) Nil!73241)) (t!388100 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3283 (List!73365 C!41354 List!73365 List!73365) Unit!168060)

(assert (=> b!7694256 (= lt!2664217 (lemmaMoveElementToOtherListKeepsConcatEq!3283 Nil!73241 (h!79689 s!9605) (t!388100 s!9605) s!9605))))

(assert (=> b!7694256 (= e!4567037 (findConcatSeparation!3569 (reg!20843 r!14126) r!14126 (++!17732 Nil!73241 (Cons!73241 (h!79689 s!9605) Nil!73241)) (t!388100 s!9605) s!9605))))

(declare-fun b!7694257 () Bool)

(declare-fun res!3073534 () Bool)

(assert (=> b!7694257 (=> (not res!3073534) (not e!4567041))))

(declare-fun get!25979 (Option!17539) tuple2!69490)

(assert (=> b!7694257 (= res!3073534 (matchR!10010 r!14126 (_2!38048 (get!25979 lt!2664216))))))

(declare-fun b!7694258 () Bool)

(assert (=> b!7694258 (= e!4567038 (Some!17538 (tuple2!69491 Nil!73241 s!9605)))))

(declare-fun b!7694259 () Bool)

(assert (=> b!7694259 (= e!4567041 (= (++!17732 (_1!38048 (get!25979 lt!2664216)) (_2!38048 (get!25979 lt!2664216))) s!9605))))

(declare-fun b!7694260 () Bool)

(declare-fun res!3073535 () Bool)

(assert (=> b!7694260 (=> (not res!3073535) (not e!4567041))))

(assert (=> b!7694260 (= res!3073535 (matchR!10010 (reg!20843 r!14126) (_1!38048 (get!25979 lt!2664216))))))

(declare-fun b!7694261 () Bool)

(assert (=> b!7694261 (= e!4567040 (not (isDefined!14155 lt!2664216)))))

(assert (= (and d!2333495 res!3073537) b!7694255))

(assert (= (and d!2333495 c!1418018) b!7694258))

(assert (= (and d!2333495 (not c!1418018)) b!7694253))

(assert (= (and b!7694253 c!1418017) b!7694254))

(assert (= (and b!7694253 (not c!1418017)) b!7694256))

(assert (= (and d!2333495 res!3073538) b!7694260))

(assert (= (and b!7694260 res!3073535) b!7694257))

(assert (= (and b!7694257 res!3073534) b!7694259))

(assert (= (and d!2333495 (not res!3073536)) b!7694261))

(declare-fun m!8187424 () Bool)

(assert (=> b!7694260 m!8187424))

(declare-fun m!8187426 () Bool)

(assert (=> b!7694260 m!8187426))

(declare-fun m!8187428 () Bool)

(assert (=> b!7694261 m!8187428))

(declare-fun m!8187430 () Bool)

(assert (=> b!7694256 m!8187430))

(assert (=> b!7694256 m!8187430))

(declare-fun m!8187432 () Bool)

(assert (=> b!7694256 m!8187432))

(declare-fun m!8187434 () Bool)

(assert (=> b!7694256 m!8187434))

(assert (=> b!7694256 m!8187430))

(declare-fun m!8187436 () Bool)

(assert (=> b!7694256 m!8187436))

(assert (=> d!2333495 m!8187428))

(declare-fun m!8187438 () Bool)

(assert (=> d!2333495 m!8187438))

(assert (=> d!2333495 m!8187340))

(assert (=> b!7694257 m!8187424))

(declare-fun m!8187440 () Bool)

(assert (=> b!7694257 m!8187440))

(assert (=> b!7694255 m!8187338))

(assert (=> b!7694259 m!8187424))

(declare-fun m!8187442 () Bool)

(assert (=> b!7694259 m!8187442))

(assert (=> b!7694058 d!2333495))

(declare-fun bs!1956527 () Bool)

(declare-fun d!2333501 () Bool)

(assert (= bs!1956527 (and d!2333501 b!7694058)))

(declare-fun lambda!470456 () Int)

(assert (=> bs!1956527 (= lambda!470456 lambda!470450)))

(assert (=> d!2333501 true))

(assert (=> d!2333501 true))

(assert (=> d!2333501 true))

(assert (=> d!2333501 (= (isDefined!14155 (findConcatSeparation!3569 (reg!20843 r!14126) r!14126 Nil!73241 s!9605 s!9605)) (Exists!4639 lambda!470456))))

(declare-fun lt!2664223 () Unit!168060)

(declare-fun choose!59146 (Regex!20514 Regex!20514 List!73365) Unit!168060)

(assert (=> d!2333501 (= lt!2664223 (choose!59146 (reg!20843 r!14126) r!14126 s!9605))))

(assert (=> d!2333501 (validRegex!10932 (reg!20843 r!14126))))

(assert (=> d!2333501 (= (lemmaFindConcatSeparationEquivalentToExists!3327 (reg!20843 r!14126) r!14126 s!9605) lt!2664223)))

(declare-fun bs!1956528 () Bool)

(assert (= bs!1956528 d!2333501))

(assert (=> bs!1956528 m!8187332))

(assert (=> bs!1956528 m!8187334))

(declare-fun m!8187444 () Bool)

(assert (=> bs!1956528 m!8187444))

(assert (=> bs!1956528 m!8187332))

(assert (=> bs!1956528 m!8187340))

(declare-fun m!8187446 () Bool)

(assert (=> bs!1956528 m!8187446))

(assert (=> b!7694058 d!2333501))

(declare-fun b!7694298 () Bool)

(declare-fun e!4567060 () Bool)

(declare-fun tp!2253964 () Bool)

(assert (=> b!7694298 (= e!4567060 (and tp_is_empty!51383 tp!2253964))))

(assert (=> b!7694053 (= tp!2253942 e!4567060)))

(assert (= (and b!7694053 (is-Cons!73241 (t!388100 s!9605))) b!7694298))

(declare-fun e!4567063 () Bool)

(assert (=> b!7694059 (= tp!2253941 e!4567063)))

(declare-fun b!7694311 () Bool)

(declare-fun tp!2253975 () Bool)

(assert (=> b!7694311 (= e!4567063 tp!2253975)))

(declare-fun b!7694309 () Bool)

(assert (=> b!7694309 (= e!4567063 tp_is_empty!51383)))

(declare-fun b!7694310 () Bool)

(declare-fun tp!2253978 () Bool)

(declare-fun tp!2253976 () Bool)

(assert (=> b!7694310 (= e!4567063 (and tp!2253978 tp!2253976))))

(declare-fun b!7694312 () Bool)

(declare-fun tp!2253979 () Bool)

(declare-fun tp!2253977 () Bool)

(assert (=> b!7694312 (= e!4567063 (and tp!2253979 tp!2253977))))

(assert (= (and b!7694059 (is-ElementMatch!20514 (regOne!41541 r!14126))) b!7694309))

(assert (= (and b!7694059 (is-Concat!29359 (regOne!41541 r!14126))) b!7694310))

(assert (= (and b!7694059 (is-Star!20514 (regOne!41541 r!14126))) b!7694311))

(assert (= (and b!7694059 (is-Union!20514 (regOne!41541 r!14126))) b!7694312))

(declare-fun e!4567064 () Bool)

(assert (=> b!7694059 (= tp!2253938 e!4567064)))

(declare-fun b!7694315 () Bool)

(declare-fun tp!2253980 () Bool)

(assert (=> b!7694315 (= e!4567064 tp!2253980)))

(declare-fun b!7694313 () Bool)

(assert (=> b!7694313 (= e!4567064 tp_is_empty!51383)))

(declare-fun b!7694314 () Bool)

(declare-fun tp!2253983 () Bool)

(declare-fun tp!2253981 () Bool)

(assert (=> b!7694314 (= e!4567064 (and tp!2253983 tp!2253981))))

(declare-fun b!7694316 () Bool)

(declare-fun tp!2253984 () Bool)

(declare-fun tp!2253982 () Bool)

(assert (=> b!7694316 (= e!4567064 (and tp!2253984 tp!2253982))))

(assert (= (and b!7694059 (is-ElementMatch!20514 (regTwo!41541 r!14126))) b!7694313))

(assert (= (and b!7694059 (is-Concat!29359 (regTwo!41541 r!14126))) b!7694314))

(assert (= (and b!7694059 (is-Star!20514 (regTwo!41541 r!14126))) b!7694315))

(assert (= (and b!7694059 (is-Union!20514 (regTwo!41541 r!14126))) b!7694316))

(declare-fun e!4567065 () Bool)

(assert (=> b!7694054 (= tp!2253940 e!4567065)))

(declare-fun b!7694319 () Bool)

(declare-fun tp!2253985 () Bool)

(assert (=> b!7694319 (= e!4567065 tp!2253985)))

(declare-fun b!7694317 () Bool)

(assert (=> b!7694317 (= e!4567065 tp_is_empty!51383)))

(declare-fun b!7694318 () Bool)

(declare-fun tp!2253988 () Bool)

(declare-fun tp!2253986 () Bool)

(assert (=> b!7694318 (= e!4567065 (and tp!2253988 tp!2253986))))

(declare-fun b!7694320 () Bool)

(declare-fun tp!2253989 () Bool)

(declare-fun tp!2253987 () Bool)

(assert (=> b!7694320 (= e!4567065 (and tp!2253989 tp!2253987))))

(assert (= (and b!7694054 (is-ElementMatch!20514 (reg!20843 r!14126))) b!7694317))

(assert (= (and b!7694054 (is-Concat!29359 (reg!20843 r!14126))) b!7694318))

(assert (= (and b!7694054 (is-Star!20514 (reg!20843 r!14126))) b!7694319))

(assert (= (and b!7694054 (is-Union!20514 (reg!20843 r!14126))) b!7694320))

(declare-fun e!4567066 () Bool)

(assert (=> b!7694055 (= tp!2253943 e!4567066)))

(declare-fun b!7694323 () Bool)

(declare-fun tp!2253990 () Bool)

(assert (=> b!7694323 (= e!4567066 tp!2253990)))

(declare-fun b!7694321 () Bool)

(assert (=> b!7694321 (= e!4567066 tp_is_empty!51383)))

(declare-fun b!7694322 () Bool)

(declare-fun tp!2253993 () Bool)

(declare-fun tp!2253991 () Bool)

(assert (=> b!7694322 (= e!4567066 (and tp!2253993 tp!2253991))))

(declare-fun b!7694324 () Bool)

(declare-fun tp!2253994 () Bool)

(declare-fun tp!2253992 () Bool)

(assert (=> b!7694324 (= e!4567066 (and tp!2253994 tp!2253992))))

(assert (= (and b!7694055 (is-ElementMatch!20514 (regOne!41540 r!14126))) b!7694321))

(assert (= (and b!7694055 (is-Concat!29359 (regOne!41540 r!14126))) b!7694322))

(assert (= (and b!7694055 (is-Star!20514 (regOne!41540 r!14126))) b!7694323))

(assert (= (and b!7694055 (is-Union!20514 (regOne!41540 r!14126))) b!7694324))

(declare-fun e!4567067 () Bool)

(assert (=> b!7694055 (= tp!2253939 e!4567067)))

(declare-fun b!7694327 () Bool)

(declare-fun tp!2253995 () Bool)

(assert (=> b!7694327 (= e!4567067 tp!2253995)))

(declare-fun b!7694325 () Bool)

(assert (=> b!7694325 (= e!4567067 tp_is_empty!51383)))

(declare-fun b!7694326 () Bool)

(declare-fun tp!2253998 () Bool)

(declare-fun tp!2253996 () Bool)

(assert (=> b!7694326 (= e!4567067 (and tp!2253998 tp!2253996))))

(declare-fun b!7694328 () Bool)

(declare-fun tp!2253999 () Bool)

(declare-fun tp!2253997 () Bool)

(assert (=> b!7694328 (= e!4567067 (and tp!2253999 tp!2253997))))

(assert (= (and b!7694055 (is-ElementMatch!20514 (regTwo!41540 r!14126))) b!7694325))

(assert (= (and b!7694055 (is-Concat!29359 (regTwo!41540 r!14126))) b!7694326))

(assert (= (and b!7694055 (is-Star!20514 (regTwo!41540 r!14126))) b!7694327))

(assert (= (and b!7694055 (is-Union!20514 (regTwo!41540 r!14126))) b!7694328))

(push 1)

(assert (not d!2333493))

(assert (not bm!709642))

(assert (not d!2333495))

(assert (not b!7694322))

(assert (not b!7694134))

(assert (not d!2333485))

(assert (not bm!709640))

(assert (not b!7694216))

(assert (not b!7694312))

(assert (not b!7694259))

(assert (not b!7694137))

(assert (not b!7694323))

(assert (not b!7694197))

(assert (not b!7694298))

(assert (not b!7694261))

(assert (not b!7694145))

(assert (not b!7694256))

(assert (not b!7694316))

(assert (not d!2333477))

(assert (not d!2333491))

(assert (not b!7694203))

(assert (not b!7694319))

(assert (not b!7694212))

(assert (not b!7694328))

(assert (not b!7694327))

(assert (not bm!709637))

(assert (not b!7694315))

(assert (not b!7694257))

(assert (not b!7694141))

(assert (not d!2333487))

(assert (not b!7694209))

(assert (not b!7694320))

(assert (not b!7694213))

(assert (not d!2333501))

(assert (not bm!709626))

(assert (not b!7694144))

(assert (not b!7694314))

(assert (not b!7694326))

(assert (not b!7694202))

(assert (not b!7694310))

(assert (not b!7694255))

(assert (not bm!709639))

(assert (not b!7694318))

(assert (not b!7694188))

(assert (not b!7694311))

(assert (not bm!709645))

(assert (not b!7694324))

(assert (not b!7694205))

(assert (not b!7694135))

(assert tp_is_empty!51383)

(assert (not b!7694260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

