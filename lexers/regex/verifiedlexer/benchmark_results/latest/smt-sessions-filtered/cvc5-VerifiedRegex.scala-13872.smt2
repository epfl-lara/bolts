; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737366 () Bool)

(assert start!737366)

(declare-fun b!7717570 () Bool)

(assert (=> b!7717570 true))

(assert (=> b!7717570 true))

(declare-fun bs!1962853 () Bool)

(declare-fun b!7717573 () Bool)

(assert (= bs!1962853 (and b!7717573 b!7717570)))

(declare-fun lambda!470967 () Int)

(declare-fun lambda!470966 () Int)

(assert (=> bs!1962853 (not (= lambda!470967 lambda!470966))))

(assert (=> b!7717573 true))

(assert (=> b!7717573 true))

(declare-fun b!7717568 () Bool)

(declare-fun res!3079357 () Bool)

(declare-fun e!4578020 () Bool)

(assert (=> b!7717568 (=> res!3079357 e!4578020)))

(declare-datatypes ((C!41402 0))(
  ( (C!41403 (val!31141 Int)) )
))
(declare-datatypes ((List!73389 0))(
  ( (Nil!73265) (Cons!73265 (h!79713 C!41402) (t!388124 List!73389)) )
))
(declare-datatypes ((tuple2!69538 0))(
  ( (tuple2!69539 (_1!38072 List!73389) (_2!38072 List!73389)) )
))
(declare-fun lt!2665874 () tuple2!69538)

(declare-fun s!9605 () List!73389)

(declare-fun ++!17746 (List!73389 List!73389) List!73389)

(assert (=> b!7717568 (= res!3079357 (not (= (++!17746 (_1!38072 lt!2665874) (_2!38072 lt!2665874)) s!9605)))))

(declare-fun b!7717569 () Bool)

(declare-datatypes ((Unit!168144 0))(
  ( (Unit!168145) )
))
(declare-fun e!4578022 () Unit!168144)

(declare-fun Unit!168146 () Unit!168144)

(assert (=> b!7717569 (= e!4578022 Unit!168146)))

(declare-fun e!4578024 () Bool)

(declare-fun e!4578021 () Bool)

(assert (=> b!7717570 (= e!4578024 (not e!4578021))))

(declare-fun res!3079352 () Bool)

(assert (=> b!7717570 (=> res!3079352 e!4578021)))

(declare-fun lt!2665873 () Bool)

(assert (=> b!7717570 (= res!3079352 lt!2665873)))

(declare-fun Exists!4663 (Int) Bool)

(assert (=> b!7717570 (= lt!2665873 (Exists!4663 lambda!470966))))

(declare-datatypes ((Regex!20538 0))(
  ( (ElementMatch!20538 (c!1422594 C!41402)) (Concat!29383 (regOne!41588 Regex!20538) (regTwo!41588 Regex!20538)) (EmptyExpr!20538) (Star!20538 (reg!20867 Regex!20538)) (EmptyLang!20538) (Union!20538 (regOne!41589 Regex!20538) (regTwo!41589 Regex!20538)) )
))
(declare-fun r!14126 () Regex!20538)

(declare-datatypes ((Option!17563 0))(
  ( (None!17562) (Some!17562 (v!54697 tuple2!69538)) )
))
(declare-fun isDefined!14179 (Option!17563) Bool)

(declare-fun findConcatSeparation!3593 (Regex!20538 Regex!20538 List!73389 List!73389 List!73389) Option!17563)

(assert (=> b!7717570 (= lt!2665873 (isDefined!14179 (findConcatSeparation!3593 (reg!20867 r!14126) r!14126 Nil!73265 s!9605 s!9605)))))

(declare-fun lt!2665879 () Unit!168144)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3351 (Regex!20538 Regex!20538 List!73389) Unit!168144)

(assert (=> b!7717570 (= lt!2665879 (lemmaFindConcatSeparationEquivalentToExists!3351 (reg!20867 r!14126) r!14126 s!9605))))

(declare-fun b!7717572 () Bool)

(declare-fun e!4578019 () Bool)

(declare-fun tp_is_empty!51431 () Bool)

(declare-fun tp!2264276 () Bool)

(assert (=> b!7717572 (= e!4578019 (and tp_is_empty!51431 tp!2264276))))

(declare-fun res!3079355 () Bool)

(declare-fun e!4578023 () Bool)

(assert (=> b!7717573 (=> res!3079355 e!4578023)))

(assert (=> b!7717573 (= res!3079355 (not (Exists!4663 lambda!470967)))))

(declare-fun b!7717574 () Bool)

(declare-fun lt!2665875 () Bool)

(assert (=> b!7717574 (= e!4578020 lt!2665875)))

(declare-fun b!7717575 () Bool)

(declare-fun res!3079351 () Bool)

(assert (=> b!7717575 (=> res!3079351 e!4578020)))

(declare-fun isPrefix!6228 (List!73389 List!73389) Bool)

(assert (=> b!7717575 (= res!3079351 (not (isPrefix!6228 Nil!73265 (_1!38072 lt!2665874))))))

(declare-fun b!7717576 () Bool)

(declare-fun Unit!168147 () Unit!168144)

(assert (=> b!7717576 (= e!4578022 Unit!168147)))

(declare-fun lt!2665878 () Unit!168144)

(declare-fun lemmaStarAppConcat!53 (Regex!20538 List!73389) Unit!168144)

(assert (=> b!7717576 (= lt!2665878 (lemmaStarAppConcat!53 (reg!20867 r!14126) s!9605))))

(declare-fun matchR!10034 (Regex!20538 List!73389) Bool)

(assert (=> b!7717576 (matchR!10034 (Concat!29383 (reg!20867 r!14126) r!14126) s!9605)))

(declare-fun lt!2665877 () Unit!168144)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!311 (Regex!20538 Regex!20538 List!73389) Unit!168144)

(assert (=> b!7717576 (= lt!2665877 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!311 (reg!20867 r!14126) r!14126 s!9605))))

(assert (=> b!7717576 false))

(declare-fun b!7717577 () Bool)

(assert (=> b!7717577 (= e!4578021 e!4578023)))

(declare-fun res!3079353 () Bool)

(assert (=> b!7717577 (=> res!3079353 e!4578023)))

(assert (=> b!7717577 (= res!3079353 (Exists!4663 lambda!470966))))

(declare-fun lt!2665881 () Unit!168144)

(assert (=> b!7717577 (= lt!2665881 e!4578022)))

(declare-fun c!1422593 () Bool)

(assert (=> b!7717577 (= c!1422593 (matchR!10034 r!14126 s!9605))))

(declare-fun b!7717578 () Bool)

(declare-fun e!4578018 () Bool)

(assert (=> b!7717578 (= e!4578018 tp_is_empty!51431)))

(declare-fun b!7717579 () Bool)

(declare-fun res!3079347 () Bool)

(assert (=> b!7717579 (=> res!3079347 e!4578020)))

(declare-fun validRegex!10956 (Regex!20538) Bool)

(assert (=> b!7717579 (= res!3079347 (not (validRegex!10956 r!14126)))))

(declare-fun b!7717580 () Bool)

(assert (=> b!7717580 (= e!4578023 e!4578020)))

(declare-fun res!3079350 () Bool)

(assert (=> b!7717580 (=> res!3079350 e!4578020)))

(assert (=> b!7717580 (= res!3079350 (not (validRegex!10956 (reg!20867 r!14126))))))

(declare-fun matchRSpec!4628 (Regex!20538 List!73389) Bool)

(assert (=> b!7717580 (= (matchR!10034 r!14126 (_2!38072 lt!2665874)) (matchRSpec!4628 r!14126 (_2!38072 lt!2665874)))))

(declare-fun lt!2665880 () Unit!168144)

(declare-fun mainMatchTheorem!4603 (Regex!20538 List!73389) Unit!168144)

(assert (=> b!7717580 (= lt!2665880 (mainMatchTheorem!4603 r!14126 (_2!38072 lt!2665874)))))

(assert (=> b!7717580 (= lt!2665875 (matchRSpec!4628 (reg!20867 r!14126) (_1!38072 lt!2665874)))))

(assert (=> b!7717580 (= lt!2665875 (matchR!10034 (reg!20867 r!14126) (_1!38072 lt!2665874)))))

(declare-fun lt!2665876 () Unit!168144)

(assert (=> b!7717580 (= lt!2665876 (mainMatchTheorem!4603 (reg!20867 r!14126) (_1!38072 lt!2665874)))))

(declare-fun pickWitness!517 (Int) tuple2!69538)

(assert (=> b!7717580 (= lt!2665874 (pickWitness!517 lambda!470967))))

(declare-fun b!7717581 () Bool)

(declare-fun tp!2264277 () Bool)

(assert (=> b!7717581 (= e!4578018 tp!2264277)))

(declare-fun b!7717582 () Bool)

(declare-fun res!3079356 () Bool)

(assert (=> b!7717582 (=> (not res!3079356) (not e!4578024))))

(assert (=> b!7717582 (= res!3079356 (and (not (is-EmptyExpr!20538 r!14126)) (not (is-EmptyLang!20538 r!14126)) (not (is-ElementMatch!20538 r!14126)) (not (is-Union!20538 r!14126)) (is-Star!20538 r!14126)))))

(declare-fun b!7717583 () Bool)

(declare-fun tp!2264278 () Bool)

(declare-fun tp!2264279 () Bool)

(assert (=> b!7717583 (= e!4578018 (and tp!2264278 tp!2264279))))

(declare-fun b!7717584 () Bool)

(declare-fun tp!2264274 () Bool)

(declare-fun tp!2264275 () Bool)

(assert (=> b!7717584 (= e!4578018 (and tp!2264274 tp!2264275))))

(declare-fun b!7717585 () Bool)

(declare-fun res!3079354 () Bool)

(assert (=> b!7717585 (=> res!3079354 e!4578020)))

(assert (=> b!7717585 (= res!3079354 (not (= (++!17746 Nil!73265 s!9605) s!9605)))))

(declare-fun b!7717571 () Bool)

(declare-fun res!3079348 () Bool)

(assert (=> b!7717571 (=> (not res!3079348) (not e!4578024))))

(declare-fun isEmpty!41924 (List!73389) Bool)

(assert (=> b!7717571 (= res!3079348 (not (isEmpty!41924 s!9605)))))

(declare-fun res!3079349 () Bool)

(assert (=> start!737366 (=> (not res!3079349) (not e!4578024))))

(assert (=> start!737366 (= res!3079349 (validRegex!10956 r!14126))))

(assert (=> start!737366 e!4578024))

(assert (=> start!737366 e!4578018))

(assert (=> start!737366 e!4578019))

(assert (= (and start!737366 res!3079349) b!7717582))

(assert (= (and b!7717582 res!3079356) b!7717571))

(assert (= (and b!7717571 res!3079348) b!7717570))

(assert (= (and b!7717570 (not res!3079352)) b!7717577))

(assert (= (and b!7717577 c!1422593) b!7717576))

(assert (= (and b!7717577 (not c!1422593)) b!7717569))

(assert (= (and b!7717577 (not res!3079353)) b!7717573))

(assert (= (and b!7717573 (not res!3079355)) b!7717580))

(assert (= (and b!7717580 (not res!3079350)) b!7717579))

(assert (= (and b!7717579 (not res!3079347)) b!7717568))

(assert (= (and b!7717568 (not res!3079357)) b!7717575))

(assert (= (and b!7717575 (not res!3079351)) b!7717585))

(assert (= (and b!7717585 (not res!3079354)) b!7717574))

(assert (= (and start!737366 (is-ElementMatch!20538 r!14126)) b!7717578))

(assert (= (and start!737366 (is-Concat!29383 r!14126)) b!7717583))

(assert (= (and start!737366 (is-Star!20538 r!14126)) b!7717581))

(assert (= (and start!737366 (is-Union!20538 r!14126)) b!7717584))

(assert (= (and start!737366 (is-Cons!73265 s!9605)) b!7717572))

(declare-fun m!8198498 () Bool)

(assert (=> start!737366 m!8198498))

(declare-fun m!8198500 () Bool)

(assert (=> b!7717570 m!8198500))

(declare-fun m!8198502 () Bool)

(assert (=> b!7717570 m!8198502))

(assert (=> b!7717570 m!8198502))

(declare-fun m!8198504 () Bool)

(assert (=> b!7717570 m!8198504))

(declare-fun m!8198506 () Bool)

(assert (=> b!7717570 m!8198506))

(assert (=> b!7717577 m!8198500))

(declare-fun m!8198508 () Bool)

(assert (=> b!7717577 m!8198508))

(declare-fun m!8198510 () Bool)

(assert (=> b!7717575 m!8198510))

(declare-fun m!8198512 () Bool)

(assert (=> b!7717585 m!8198512))

(declare-fun m!8198514 () Bool)

(assert (=> b!7717576 m!8198514))

(declare-fun m!8198516 () Bool)

(assert (=> b!7717576 m!8198516))

(declare-fun m!8198518 () Bool)

(assert (=> b!7717576 m!8198518))

(assert (=> b!7717579 m!8198498))

(declare-fun m!8198520 () Bool)

(assert (=> b!7717580 m!8198520))

(declare-fun m!8198522 () Bool)

(assert (=> b!7717580 m!8198522))

(declare-fun m!8198524 () Bool)

(assert (=> b!7717580 m!8198524))

(declare-fun m!8198526 () Bool)

(assert (=> b!7717580 m!8198526))

(declare-fun m!8198528 () Bool)

(assert (=> b!7717580 m!8198528))

(declare-fun m!8198530 () Bool)

(assert (=> b!7717580 m!8198530))

(declare-fun m!8198532 () Bool)

(assert (=> b!7717580 m!8198532))

(declare-fun m!8198534 () Bool)

(assert (=> b!7717580 m!8198534))

(declare-fun m!8198536 () Bool)

(assert (=> b!7717568 m!8198536))

(declare-fun m!8198538 () Bool)

(assert (=> b!7717573 m!8198538))

(declare-fun m!8198540 () Bool)

(assert (=> b!7717571 m!8198540))

(push 1)

(assert (not start!737366))

(assert (not b!7717572))

(assert (not b!7717580))

(assert (not b!7717568))

(assert (not b!7717584))

(assert (not b!7717579))

(assert (not b!7717583))

(assert (not b!7717576))

(assert (not b!7717585))

(assert tp_is_empty!51431)

(assert (not b!7717581))

(assert (not b!7717575))

(assert (not b!7717577))

(assert (not b!7717571))

(assert (not b!7717570))

(assert (not b!7717573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2337253 () Bool)

(declare-fun e!4578056 () Bool)

(assert (=> d!2337253 e!4578056))

(declare-fun res!3079413 () Bool)

(assert (=> d!2337253 (=> res!3079413 e!4578056)))

(assert (=> d!2337253 (= res!3079413 (isEmpty!41924 s!9605))))

(declare-fun lt!2665911 () Unit!168144)

(declare-fun choose!59228 (Regex!20538 List!73389) Unit!168144)

(assert (=> d!2337253 (= lt!2665911 (choose!59228 (reg!20867 r!14126) s!9605))))

(assert (=> d!2337253 (validRegex!10956 (Star!20538 (reg!20867 r!14126)))))

(assert (=> d!2337253 (= (lemmaStarAppConcat!53 (reg!20867 r!14126) s!9605) lt!2665911)))

(declare-fun b!7717670 () Bool)

(assert (=> b!7717670 (= e!4578056 (matchR!10034 (Concat!29383 (reg!20867 r!14126) (Star!20538 (reg!20867 r!14126))) s!9605))))

(assert (= (and d!2337253 (not res!3079413)) b!7717670))

(assert (=> d!2337253 m!8198540))

(declare-fun m!8198586 () Bool)

(assert (=> d!2337253 m!8198586))

(declare-fun m!8198588 () Bool)

(assert (=> d!2337253 m!8198588))

(declare-fun m!8198590 () Bool)

(assert (=> b!7717670 m!8198590))

(assert (=> b!7717576 d!2337253))

(declare-fun b!7717699 () Bool)

(declare-fun res!3079436 () Bool)

(declare-fun e!4578075 () Bool)

(assert (=> b!7717699 (=> res!3079436 e!4578075)))

(declare-fun e!4578074 () Bool)

(assert (=> b!7717699 (= res!3079436 e!4578074)))

(declare-fun res!3079432 () Bool)

(assert (=> b!7717699 (=> (not res!3079432) (not e!4578074))))

(declare-fun lt!2665914 () Bool)

(assert (=> b!7717699 (= res!3079432 lt!2665914)))

(declare-fun b!7717700 () Bool)

(declare-fun e!4578077 () Bool)

(declare-fun e!4578071 () Bool)

(assert (=> b!7717700 (= e!4578077 e!4578071)))

(declare-fun res!3079434 () Bool)

(assert (=> b!7717700 (=> res!3079434 e!4578071)))

(declare-fun call!713299 () Bool)

(assert (=> b!7717700 (= res!3079434 call!713299)))

(declare-fun b!7717701 () Bool)

(declare-fun head!15780 (List!73389) C!41402)

(assert (=> b!7717701 (= e!4578074 (= (head!15780 s!9605) (c!1422594 (Concat!29383 (reg!20867 r!14126) r!14126))))))

(declare-fun b!7717702 () Bool)

(assert (=> b!7717702 (= e!4578075 e!4578077)))

(declare-fun res!3079433 () Bool)

(assert (=> b!7717702 (=> (not res!3079433) (not e!4578077))))

(assert (=> b!7717702 (= res!3079433 (not lt!2665914))))

(declare-fun b!7717703 () Bool)

(declare-fun e!4578073 () Bool)

(declare-fun nullable!9015 (Regex!20538) Bool)

(assert (=> b!7717703 (= e!4578073 (nullable!9015 (Concat!29383 (reg!20867 r!14126) r!14126)))))

(declare-fun d!2337255 () Bool)

(declare-fun e!4578076 () Bool)

(assert (=> d!2337255 e!4578076))

(declare-fun c!1422607 () Bool)

(assert (=> d!2337255 (= c!1422607 (is-EmptyExpr!20538 (Concat!29383 (reg!20867 r!14126) r!14126)))))

(assert (=> d!2337255 (= lt!2665914 e!4578073)))

(declare-fun c!1422606 () Bool)

(assert (=> d!2337255 (= c!1422606 (isEmpty!41924 s!9605))))

(assert (=> d!2337255 (validRegex!10956 (Concat!29383 (reg!20867 r!14126) r!14126))))

(assert (=> d!2337255 (= (matchR!10034 (Concat!29383 (reg!20867 r!14126) r!14126) s!9605) lt!2665914)))

(declare-fun bm!713294 () Bool)

(assert (=> bm!713294 (= call!713299 (isEmpty!41924 s!9605))))

(declare-fun b!7717704 () Bool)

(declare-fun derivativeStep!5980 (Regex!20538 C!41402) Regex!20538)

(declare-fun tail!15320 (List!73389) List!73389)

(assert (=> b!7717704 (= e!4578073 (matchR!10034 (derivativeStep!5980 (Concat!29383 (reg!20867 r!14126) r!14126) (head!15780 s!9605)) (tail!15320 s!9605)))))

(declare-fun b!7717705 () Bool)

(assert (=> b!7717705 (= e!4578076 (= lt!2665914 call!713299))))

(declare-fun b!7717706 () Bool)

(assert (=> b!7717706 (= e!4578071 (not (= (head!15780 s!9605) (c!1422594 (Concat!29383 (reg!20867 r!14126) r!14126)))))))

(declare-fun b!7717707 () Bool)

(declare-fun e!4578072 () Bool)

(assert (=> b!7717707 (= e!4578072 (not lt!2665914))))

(declare-fun b!7717708 () Bool)

(assert (=> b!7717708 (= e!4578076 e!4578072)))

(declare-fun c!1422605 () Bool)

(assert (=> b!7717708 (= c!1422605 (is-EmptyLang!20538 (Concat!29383 (reg!20867 r!14126) r!14126)))))

(declare-fun b!7717709 () Bool)

(declare-fun res!3079430 () Bool)

(assert (=> b!7717709 (=> res!3079430 e!4578075)))

(assert (=> b!7717709 (= res!3079430 (not (is-ElementMatch!20538 (Concat!29383 (reg!20867 r!14126) r!14126))))))

(assert (=> b!7717709 (= e!4578072 e!4578075)))

(declare-fun b!7717710 () Bool)

(declare-fun res!3079435 () Bool)

(assert (=> b!7717710 (=> (not res!3079435) (not e!4578074))))

(assert (=> b!7717710 (= res!3079435 (not call!713299))))

(declare-fun b!7717711 () Bool)

(declare-fun res!3079431 () Bool)

(assert (=> b!7717711 (=> res!3079431 e!4578071)))

(assert (=> b!7717711 (= res!3079431 (not (isEmpty!41924 (tail!15320 s!9605))))))

(declare-fun b!7717712 () Bool)

(declare-fun res!3079437 () Bool)

(assert (=> b!7717712 (=> (not res!3079437) (not e!4578074))))

(assert (=> b!7717712 (= res!3079437 (isEmpty!41924 (tail!15320 s!9605)))))

(assert (= (and d!2337255 c!1422606) b!7717703))

(assert (= (and d!2337255 (not c!1422606)) b!7717704))

(assert (= (and d!2337255 c!1422607) b!7717705))

(assert (= (and d!2337255 (not c!1422607)) b!7717708))

(assert (= (and b!7717708 c!1422605) b!7717707))

(assert (= (and b!7717708 (not c!1422605)) b!7717709))

(assert (= (and b!7717709 (not res!3079430)) b!7717699))

(assert (= (and b!7717699 res!3079432) b!7717710))

(assert (= (and b!7717710 res!3079435) b!7717712))

(assert (= (and b!7717712 res!3079437) b!7717701))

(assert (= (and b!7717699 (not res!3079436)) b!7717702))

(assert (= (and b!7717702 res!3079433) b!7717700))

(assert (= (and b!7717700 (not res!3079434)) b!7717711))

(assert (= (and b!7717711 (not res!3079431)) b!7717706))

(assert (= (or b!7717705 b!7717700 b!7717710) bm!713294))

(assert (=> bm!713294 m!8198540))

(declare-fun m!8198596 () Bool)

(assert (=> b!7717706 m!8198596))

(declare-fun m!8198598 () Bool)

(assert (=> b!7717712 m!8198598))

(assert (=> b!7717712 m!8198598))

(declare-fun m!8198600 () Bool)

(assert (=> b!7717712 m!8198600))

(declare-fun m!8198602 () Bool)

(assert (=> b!7717703 m!8198602))

(assert (=> b!7717711 m!8198598))

(assert (=> b!7717711 m!8198598))

(assert (=> b!7717711 m!8198600))

(assert (=> b!7717704 m!8198596))

(assert (=> b!7717704 m!8198596))

(declare-fun m!8198604 () Bool)

(assert (=> b!7717704 m!8198604))

(assert (=> b!7717704 m!8198598))

(assert (=> b!7717704 m!8198604))

(assert (=> b!7717704 m!8198598))

(declare-fun m!8198606 () Bool)

(assert (=> b!7717704 m!8198606))

(assert (=> b!7717701 m!8198596))

(assert (=> d!2337255 m!8198540))

(declare-fun m!8198608 () Bool)

(assert (=> d!2337255 m!8198608))

(assert (=> b!7717576 d!2337255))

(declare-fun d!2337263 () Bool)

(assert (=> d!2337263 (isDefined!14179 (findConcatSeparation!3593 (reg!20867 r!14126) r!14126 Nil!73265 s!9605 s!9605))))

(declare-fun lt!2665917 () Unit!168144)

(declare-fun choose!59229 (Regex!20538 Regex!20538 List!73389) Unit!168144)

(assert (=> d!2337263 (= lt!2665917 (choose!59229 (reg!20867 r!14126) r!14126 s!9605))))

(assert (=> d!2337263 (validRegex!10956 (reg!20867 r!14126))))

(assert (=> d!2337263 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!311 (reg!20867 r!14126) r!14126 s!9605) lt!2665917)))

(declare-fun bs!1962857 () Bool)

(assert (= bs!1962857 d!2337263))

(assert (=> bs!1962857 m!8198502))

(assert (=> bs!1962857 m!8198502))

(assert (=> bs!1962857 m!8198504))

(declare-fun m!8198610 () Bool)

(assert (=> bs!1962857 m!8198610))

(assert (=> bs!1962857 m!8198530))

(assert (=> b!7717576 d!2337263))

(declare-fun d!2337265 () Bool)

(declare-fun choose!59230 (Int) Bool)

(assert (=> d!2337265 (= (Exists!4663 lambda!470966) (choose!59230 lambda!470966))))

(declare-fun bs!1962858 () Bool)

(assert (= bs!1962858 d!2337265))

(declare-fun m!8198612 () Bool)

(assert (=> bs!1962858 m!8198612))

(assert (=> b!7717570 d!2337265))

(declare-fun d!2337267 () Bool)

(declare-fun isEmpty!41926 (Option!17563) Bool)

(assert (=> d!2337267 (= (isDefined!14179 (findConcatSeparation!3593 (reg!20867 r!14126) r!14126 Nil!73265 s!9605 s!9605)) (not (isEmpty!41926 (findConcatSeparation!3593 (reg!20867 r!14126) r!14126 Nil!73265 s!9605 s!9605))))))

(declare-fun bs!1962859 () Bool)

(assert (= bs!1962859 d!2337267))

(assert (=> bs!1962859 m!8198502))

(declare-fun m!8198614 () Bool)

(assert (=> bs!1962859 m!8198614))

(assert (=> b!7717570 d!2337267))

(declare-fun b!7717741 () Bool)

(declare-fun e!4578097 () Option!17563)

(assert (=> b!7717741 (= e!4578097 None!17562)))

(declare-fun d!2337269 () Bool)

(declare-fun e!4578094 () Bool)

(assert (=> d!2337269 e!4578094))

(declare-fun res!3079450 () Bool)

(assert (=> d!2337269 (=> res!3079450 e!4578094)))

(declare-fun e!4578096 () Bool)

(assert (=> d!2337269 (= res!3079450 e!4578096)))

(declare-fun res!3079453 () Bool)

(assert (=> d!2337269 (=> (not res!3079453) (not e!4578096))))

(declare-fun lt!2665932 () Option!17563)

(assert (=> d!2337269 (= res!3079453 (isDefined!14179 lt!2665932))))

(declare-fun e!4578098 () Option!17563)

(assert (=> d!2337269 (= lt!2665932 e!4578098)))

(declare-fun c!1422616 () Bool)

(declare-fun e!4578095 () Bool)

(assert (=> d!2337269 (= c!1422616 e!4578095)))

(declare-fun res!3079451 () Bool)

(assert (=> d!2337269 (=> (not res!3079451) (not e!4578095))))

(assert (=> d!2337269 (= res!3079451 (matchR!10034 (reg!20867 r!14126) Nil!73265))))

(assert (=> d!2337269 (validRegex!10956 (reg!20867 r!14126))))

(assert (=> d!2337269 (= (findConcatSeparation!3593 (reg!20867 r!14126) r!14126 Nil!73265 s!9605 s!9605) lt!2665932)))

(declare-fun b!7717742 () Bool)

(assert (=> b!7717742 (= e!4578094 (not (isDefined!14179 lt!2665932)))))

(declare-fun b!7717743 () Bool)

(assert (=> b!7717743 (= e!4578098 (Some!17562 (tuple2!69539 Nil!73265 s!9605)))))

(declare-fun b!7717744 () Bool)

(declare-fun res!3079454 () Bool)

(assert (=> b!7717744 (=> (not res!3079454) (not e!4578096))))

(declare-fun get!26005 (Option!17563) tuple2!69538)

(assert (=> b!7717744 (= res!3079454 (matchR!10034 (reg!20867 r!14126) (_1!38072 (get!26005 lt!2665932))))))

(declare-fun b!7717745 () Bool)

(declare-fun lt!2665931 () Unit!168144)

(declare-fun lt!2665930 () Unit!168144)

(assert (=> b!7717745 (= lt!2665931 lt!2665930)))

(assert (=> b!7717745 (= (++!17746 (++!17746 Nil!73265 (Cons!73265 (h!79713 s!9605) Nil!73265)) (t!388124 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3297 (List!73389 C!41402 List!73389 List!73389) Unit!168144)

(assert (=> b!7717745 (= lt!2665930 (lemmaMoveElementToOtherListKeepsConcatEq!3297 Nil!73265 (h!79713 s!9605) (t!388124 s!9605) s!9605))))

(assert (=> b!7717745 (= e!4578097 (findConcatSeparation!3593 (reg!20867 r!14126) r!14126 (++!17746 Nil!73265 (Cons!73265 (h!79713 s!9605) Nil!73265)) (t!388124 s!9605) s!9605))))

(declare-fun b!7717746 () Bool)

(assert (=> b!7717746 (= e!4578096 (= (++!17746 (_1!38072 (get!26005 lt!2665932)) (_2!38072 (get!26005 lt!2665932))) s!9605))))

(declare-fun b!7717747 () Bool)

(declare-fun res!3079452 () Bool)

(assert (=> b!7717747 (=> (not res!3079452) (not e!4578096))))

(assert (=> b!7717747 (= res!3079452 (matchR!10034 r!14126 (_2!38072 (get!26005 lt!2665932))))))

(declare-fun b!7717748 () Bool)

(assert (=> b!7717748 (= e!4578095 (matchR!10034 r!14126 s!9605))))

(declare-fun b!7717749 () Bool)

(assert (=> b!7717749 (= e!4578098 e!4578097)))

(declare-fun c!1422617 () Bool)

(assert (=> b!7717749 (= c!1422617 (is-Nil!73265 s!9605))))

(assert (= (and d!2337269 res!3079451) b!7717748))

(assert (= (and d!2337269 c!1422616) b!7717743))

(assert (= (and d!2337269 (not c!1422616)) b!7717749))

(assert (= (and b!7717749 c!1422617) b!7717741))

(assert (= (and b!7717749 (not c!1422617)) b!7717745))

(assert (= (and d!2337269 res!3079453) b!7717744))

(assert (= (and b!7717744 res!3079454) b!7717747))

(assert (= (and b!7717747 res!3079452) b!7717746))

(assert (= (and d!2337269 (not res!3079450)) b!7717742))

(declare-fun m!8198616 () Bool)

(assert (=> b!7717745 m!8198616))

(assert (=> b!7717745 m!8198616))

(declare-fun m!8198618 () Bool)

(assert (=> b!7717745 m!8198618))

(declare-fun m!8198620 () Bool)

(assert (=> b!7717745 m!8198620))

(assert (=> b!7717745 m!8198616))

(declare-fun m!8198622 () Bool)

(assert (=> b!7717745 m!8198622))

(declare-fun m!8198624 () Bool)

(assert (=> b!7717744 m!8198624))

(declare-fun m!8198626 () Bool)

(assert (=> b!7717744 m!8198626))

(assert (=> b!7717746 m!8198624))

(declare-fun m!8198628 () Bool)

(assert (=> b!7717746 m!8198628))

(declare-fun m!8198630 () Bool)

(assert (=> d!2337269 m!8198630))

(declare-fun m!8198632 () Bool)

(assert (=> d!2337269 m!8198632))

(assert (=> d!2337269 m!8198530))

(assert (=> b!7717748 m!8198508))

(assert (=> b!7717742 m!8198630))

(assert (=> b!7717747 m!8198624))

(declare-fun m!8198634 () Bool)

(assert (=> b!7717747 m!8198634))

(assert (=> b!7717570 d!2337269))

(declare-fun bs!1962860 () Bool)

(declare-fun d!2337271 () Bool)

(assert (= bs!1962860 (and d!2337271 b!7717570)))

(declare-fun lambda!470980 () Int)

(assert (=> bs!1962860 (= lambda!470980 lambda!470966)))

(declare-fun bs!1962861 () Bool)

(assert (= bs!1962861 (and d!2337271 b!7717573)))

(assert (=> bs!1962861 (not (= lambda!470980 lambda!470967))))

(assert (=> d!2337271 true))

(assert (=> d!2337271 true))

(assert (=> d!2337271 true))

(assert (=> d!2337271 (= (isDefined!14179 (findConcatSeparation!3593 (reg!20867 r!14126) r!14126 Nil!73265 s!9605 s!9605)) (Exists!4663 lambda!470980))))

(declare-fun lt!2665935 () Unit!168144)

(declare-fun choose!59231 (Regex!20538 Regex!20538 List!73389) Unit!168144)

(assert (=> d!2337271 (= lt!2665935 (choose!59231 (reg!20867 r!14126) r!14126 s!9605))))

(assert (=> d!2337271 (validRegex!10956 (reg!20867 r!14126))))

(assert (=> d!2337271 (= (lemmaFindConcatSeparationEquivalentToExists!3351 (reg!20867 r!14126) r!14126 s!9605) lt!2665935)))

(declare-fun bs!1962862 () Bool)

(assert (= bs!1962862 d!2337271))

(declare-fun m!8198636 () Bool)

(assert (=> bs!1962862 m!8198636))

(declare-fun m!8198638 () Bool)

(assert (=> bs!1962862 m!8198638))

(assert (=> bs!1962862 m!8198502))

(assert (=> bs!1962862 m!8198530))

(assert (=> bs!1962862 m!8198502))

(assert (=> bs!1962862 m!8198504))

(assert (=> b!7717570 d!2337271))

(declare-fun b!7717779 () Bool)

(declare-fun e!4578117 () Bool)

(declare-fun e!4578118 () Bool)

(assert (=> b!7717779 (= e!4578117 e!4578118)))

(declare-fun res!3079481 () Bool)

(assert (=> b!7717779 (=> (not res!3079481) (not e!4578118))))

(assert (=> b!7717779 (= res!3079481 (not (is-Nil!73265 (_1!38072 lt!2665874))))))

(declare-fun b!7717782 () Bool)

(declare-fun e!4578116 () Bool)

(declare-fun size!42622 (List!73389) Int)

(assert (=> b!7717782 (= e!4578116 (>= (size!42622 (_1!38072 lt!2665874)) (size!42622 Nil!73265)))))

(declare-fun d!2337273 () Bool)

(assert (=> d!2337273 e!4578116))

(declare-fun res!3079482 () Bool)

(assert (=> d!2337273 (=> res!3079482 e!4578116)))

(declare-fun lt!2665941 () Bool)

(assert (=> d!2337273 (= res!3079482 (not lt!2665941))))

(assert (=> d!2337273 (= lt!2665941 e!4578117)))

(declare-fun res!3079483 () Bool)

(assert (=> d!2337273 (=> res!3079483 e!4578117)))

(assert (=> d!2337273 (= res!3079483 (is-Nil!73265 Nil!73265))))

(assert (=> d!2337273 (= (isPrefix!6228 Nil!73265 (_1!38072 lt!2665874)) lt!2665941)))

(declare-fun b!7717781 () Bool)

(assert (=> b!7717781 (= e!4578118 (isPrefix!6228 (tail!15320 Nil!73265) (tail!15320 (_1!38072 lt!2665874))))))

(declare-fun b!7717780 () Bool)

(declare-fun res!3079480 () Bool)

(assert (=> b!7717780 (=> (not res!3079480) (not e!4578118))))

(assert (=> b!7717780 (= res!3079480 (= (head!15780 Nil!73265) (head!15780 (_1!38072 lt!2665874))))))

(assert (= (and d!2337273 (not res!3079483)) b!7717779))

(assert (= (and b!7717779 res!3079481) b!7717780))

(assert (= (and b!7717780 res!3079480) b!7717781))

(assert (= (and d!2337273 (not res!3079482)) b!7717782))

(declare-fun m!8198660 () Bool)

(assert (=> b!7717782 m!8198660))

(declare-fun m!8198662 () Bool)

(assert (=> b!7717782 m!8198662))

(declare-fun m!8198664 () Bool)

(assert (=> b!7717781 m!8198664))

(declare-fun m!8198666 () Bool)

(assert (=> b!7717781 m!8198666))

(assert (=> b!7717781 m!8198664))

(assert (=> b!7717781 m!8198666))

(declare-fun m!8198668 () Bool)

(assert (=> b!7717781 m!8198668))

(declare-fun m!8198670 () Bool)

(assert (=> b!7717780 m!8198670))

(declare-fun m!8198672 () Bool)

(assert (=> b!7717780 m!8198672))

(assert (=> b!7717575 d!2337273))

(assert (=> b!7717577 d!2337265))

(declare-fun b!7717783 () Bool)

(declare-fun res!3079490 () Bool)

(declare-fun e!4578123 () Bool)

(assert (=> b!7717783 (=> res!3079490 e!4578123)))

(declare-fun e!4578122 () Bool)

(assert (=> b!7717783 (= res!3079490 e!4578122)))

(declare-fun res!3079486 () Bool)

(assert (=> b!7717783 (=> (not res!3079486) (not e!4578122))))

(declare-fun lt!2665942 () Bool)

(assert (=> b!7717783 (= res!3079486 lt!2665942)))

(declare-fun b!7717784 () Bool)

(declare-fun e!4578125 () Bool)

(declare-fun e!4578119 () Bool)

(assert (=> b!7717784 (= e!4578125 e!4578119)))

(declare-fun res!3079488 () Bool)

(assert (=> b!7717784 (=> res!3079488 e!4578119)))

(declare-fun call!713300 () Bool)

(assert (=> b!7717784 (= res!3079488 call!713300)))

(declare-fun b!7717785 () Bool)

(assert (=> b!7717785 (= e!4578122 (= (head!15780 s!9605) (c!1422594 r!14126)))))

(declare-fun b!7717786 () Bool)

(assert (=> b!7717786 (= e!4578123 e!4578125)))

(declare-fun res!3079487 () Bool)

(assert (=> b!7717786 (=> (not res!3079487) (not e!4578125))))

(assert (=> b!7717786 (= res!3079487 (not lt!2665942))))

(declare-fun b!7717787 () Bool)

(declare-fun e!4578121 () Bool)

(assert (=> b!7717787 (= e!4578121 (nullable!9015 r!14126))))

(declare-fun d!2337277 () Bool)

(declare-fun e!4578124 () Bool)

(assert (=> d!2337277 e!4578124))

(declare-fun c!1422622 () Bool)

(assert (=> d!2337277 (= c!1422622 (is-EmptyExpr!20538 r!14126))))

(assert (=> d!2337277 (= lt!2665942 e!4578121)))

(declare-fun c!1422621 () Bool)

(assert (=> d!2337277 (= c!1422621 (isEmpty!41924 s!9605))))

(assert (=> d!2337277 (validRegex!10956 r!14126)))

(assert (=> d!2337277 (= (matchR!10034 r!14126 s!9605) lt!2665942)))

(declare-fun bm!713295 () Bool)

(assert (=> bm!713295 (= call!713300 (isEmpty!41924 s!9605))))

(declare-fun b!7717788 () Bool)

(assert (=> b!7717788 (= e!4578121 (matchR!10034 (derivativeStep!5980 r!14126 (head!15780 s!9605)) (tail!15320 s!9605)))))

(declare-fun b!7717789 () Bool)

(assert (=> b!7717789 (= e!4578124 (= lt!2665942 call!713300))))

(declare-fun b!7717790 () Bool)

(assert (=> b!7717790 (= e!4578119 (not (= (head!15780 s!9605) (c!1422594 r!14126))))))

(declare-fun b!7717791 () Bool)

(declare-fun e!4578120 () Bool)

(assert (=> b!7717791 (= e!4578120 (not lt!2665942))))

(declare-fun b!7717792 () Bool)

(assert (=> b!7717792 (= e!4578124 e!4578120)))

(declare-fun c!1422620 () Bool)

(assert (=> b!7717792 (= c!1422620 (is-EmptyLang!20538 r!14126))))

(declare-fun b!7717793 () Bool)

(declare-fun res!3079484 () Bool)

(assert (=> b!7717793 (=> res!3079484 e!4578123)))

(assert (=> b!7717793 (= res!3079484 (not (is-ElementMatch!20538 r!14126)))))

(assert (=> b!7717793 (= e!4578120 e!4578123)))

(declare-fun b!7717794 () Bool)

(declare-fun res!3079489 () Bool)

(assert (=> b!7717794 (=> (not res!3079489) (not e!4578122))))

(assert (=> b!7717794 (= res!3079489 (not call!713300))))

(declare-fun b!7717795 () Bool)

(declare-fun res!3079485 () Bool)

(assert (=> b!7717795 (=> res!3079485 e!4578119)))

(assert (=> b!7717795 (= res!3079485 (not (isEmpty!41924 (tail!15320 s!9605))))))

(declare-fun b!7717796 () Bool)

(declare-fun res!3079491 () Bool)

(assert (=> b!7717796 (=> (not res!3079491) (not e!4578122))))

(assert (=> b!7717796 (= res!3079491 (isEmpty!41924 (tail!15320 s!9605)))))

(assert (= (and d!2337277 c!1422621) b!7717787))

(assert (= (and d!2337277 (not c!1422621)) b!7717788))

(assert (= (and d!2337277 c!1422622) b!7717789))

(assert (= (and d!2337277 (not c!1422622)) b!7717792))

(assert (= (and b!7717792 c!1422620) b!7717791))

(assert (= (and b!7717792 (not c!1422620)) b!7717793))

(assert (= (and b!7717793 (not res!3079484)) b!7717783))

(assert (= (and b!7717783 res!3079486) b!7717794))

(assert (= (and b!7717794 res!3079489) b!7717796))

(assert (= (and b!7717796 res!3079491) b!7717785))

(assert (= (and b!7717783 (not res!3079490)) b!7717786))

(assert (= (and b!7717786 res!3079487) b!7717784))

(assert (= (and b!7717784 (not res!3079488)) b!7717795))

(assert (= (and b!7717795 (not res!3079485)) b!7717790))

(assert (= (or b!7717789 b!7717784 b!7717794) bm!713295))

(assert (=> bm!713295 m!8198540))

(assert (=> b!7717790 m!8198596))

(assert (=> b!7717796 m!8198598))

(assert (=> b!7717796 m!8198598))

(assert (=> b!7717796 m!8198600))

(declare-fun m!8198674 () Bool)

(assert (=> b!7717787 m!8198674))

(assert (=> b!7717795 m!8198598))

(assert (=> b!7717795 m!8198598))

(assert (=> b!7717795 m!8198600))

(assert (=> b!7717788 m!8198596))

(assert (=> b!7717788 m!8198596))

(declare-fun m!8198676 () Bool)

(assert (=> b!7717788 m!8198676))

(assert (=> b!7717788 m!8198598))

(assert (=> b!7717788 m!8198676))

(assert (=> b!7717788 m!8198598))

(declare-fun m!8198678 () Bool)

(assert (=> b!7717788 m!8198678))

(assert (=> b!7717785 m!8198596))

(assert (=> d!2337277 m!8198540))

(assert (=> d!2337277 m!8198498))

(assert (=> b!7717577 d!2337277))

(declare-fun b!7717815 () Bool)

(declare-fun e!4578140 () Bool)

(declare-fun e!4578146 () Bool)

(assert (=> b!7717815 (= e!4578140 e!4578146)))

(declare-fun c!1422627 () Bool)

(assert (=> b!7717815 (= c!1422627 (is-Star!20538 r!14126))))

(declare-fun bm!713302 () Bool)

(declare-fun call!713309 () Bool)

(declare-fun call!713308 () Bool)

(assert (=> bm!713302 (= call!713309 call!713308)))

(declare-fun b!7717816 () Bool)

(declare-fun res!3079502 () Bool)

(declare-fun e!4578142 () Bool)

(assert (=> b!7717816 (=> (not res!3079502) (not e!4578142))))

(declare-fun call!713307 () Bool)

(assert (=> b!7717816 (= res!3079502 call!713307)))

(declare-fun e!4578143 () Bool)

(assert (=> b!7717816 (= e!4578143 e!4578142)))

(declare-fun bm!713303 () Bool)

(declare-fun c!1422628 () Bool)

(assert (=> bm!713303 (= call!713308 (validRegex!10956 (ite c!1422627 (reg!20867 r!14126) (ite c!1422628 (regTwo!41589 r!14126) (regTwo!41588 r!14126)))))))

(declare-fun b!7717817 () Bool)

(declare-fun e!4578145 () Bool)

(assert (=> b!7717817 (= e!4578146 e!4578145)))

(declare-fun res!3079506 () Bool)

(assert (=> b!7717817 (= res!3079506 (not (nullable!9015 (reg!20867 r!14126))))))

(assert (=> b!7717817 (=> (not res!3079506) (not e!4578145))))

(declare-fun b!7717818 () Bool)

(assert (=> b!7717818 (= e!4578145 call!713308)))

(declare-fun b!7717819 () Bool)

(declare-fun e!4578141 () Bool)

(declare-fun e!4578144 () Bool)

(assert (=> b!7717819 (= e!4578141 e!4578144)))

(declare-fun res!3079503 () Bool)

(assert (=> b!7717819 (=> (not res!3079503) (not e!4578144))))

(assert (=> b!7717819 (= res!3079503 call!713307)))

(declare-fun d!2337279 () Bool)

(declare-fun res!3079504 () Bool)

(assert (=> d!2337279 (=> res!3079504 e!4578140)))

(assert (=> d!2337279 (= res!3079504 (is-ElementMatch!20538 r!14126))))

(assert (=> d!2337279 (= (validRegex!10956 r!14126) e!4578140)))

(declare-fun b!7717820 () Bool)

(assert (=> b!7717820 (= e!4578144 call!713309)))

(declare-fun b!7717821 () Bool)

(declare-fun res!3079505 () Bool)

(assert (=> b!7717821 (=> res!3079505 e!4578141)))

(assert (=> b!7717821 (= res!3079505 (not (is-Concat!29383 r!14126)))))

(assert (=> b!7717821 (= e!4578143 e!4578141)))

(declare-fun bm!713304 () Bool)

(assert (=> bm!713304 (= call!713307 (validRegex!10956 (ite c!1422628 (regOne!41589 r!14126) (regOne!41588 r!14126))))))

(declare-fun b!7717822 () Bool)

(assert (=> b!7717822 (= e!4578146 e!4578143)))

(assert (=> b!7717822 (= c!1422628 (is-Union!20538 r!14126))))

(declare-fun b!7717823 () Bool)

(assert (=> b!7717823 (= e!4578142 call!713309)))

(assert (= (and d!2337279 (not res!3079504)) b!7717815))

(assert (= (and b!7717815 c!1422627) b!7717817))

(assert (= (and b!7717815 (not c!1422627)) b!7717822))

(assert (= (and b!7717817 res!3079506) b!7717818))

(assert (= (and b!7717822 c!1422628) b!7717816))

(assert (= (and b!7717822 (not c!1422628)) b!7717821))

(assert (= (and b!7717816 res!3079502) b!7717823))

(assert (= (and b!7717821 (not res!3079505)) b!7717819))

(assert (= (and b!7717819 res!3079503) b!7717820))

(assert (= (or b!7717816 b!7717819) bm!713304))

(assert (= (or b!7717823 b!7717820) bm!713302))

(assert (= (or b!7717818 bm!713302) bm!713303))

(declare-fun m!8198680 () Bool)

(assert (=> bm!713303 m!8198680))

(declare-fun m!8198682 () Bool)

(assert (=> b!7717817 m!8198682))

(declare-fun m!8198684 () Bool)

(assert (=> bm!713304 m!8198684))

(assert (=> start!737366 d!2337279))

(declare-fun d!2337281 () Bool)

(assert (=> d!2337281 (= (isEmpty!41924 s!9605) (is-Nil!73265 s!9605))))

(assert (=> b!7717571 d!2337281))

(declare-fun b!7717837 () Bool)

(declare-fun e!4578154 () List!73389)

(assert (=> b!7717837 (= e!4578154 (Cons!73265 (h!79713 (_1!38072 lt!2665874)) (++!17746 (t!388124 (_1!38072 lt!2665874)) (_2!38072 lt!2665874))))))

(declare-fun b!7717839 () Bool)

(declare-fun e!4578153 () Bool)

(declare-fun lt!2665947 () List!73389)

(assert (=> b!7717839 (= e!4578153 (or (not (= (_2!38072 lt!2665874) Nil!73265)) (= lt!2665947 (_1!38072 lt!2665874))))))

(declare-fun b!7717838 () Bool)

(declare-fun res!3079515 () Bool)

(assert (=> b!7717838 (=> (not res!3079515) (not e!4578153))))

(assert (=> b!7717838 (= res!3079515 (= (size!42622 lt!2665947) (+ (size!42622 (_1!38072 lt!2665874)) (size!42622 (_2!38072 lt!2665874)))))))

(declare-fun b!7717836 () Bool)

(assert (=> b!7717836 (= e!4578154 (_2!38072 lt!2665874))))

(declare-fun d!2337283 () Bool)

(assert (=> d!2337283 e!4578153))

(declare-fun res!3079516 () Bool)

(assert (=> d!2337283 (=> (not res!3079516) (not e!4578153))))

(declare-fun content!15519 (List!73389) (Set C!41402))

(assert (=> d!2337283 (= res!3079516 (= (content!15519 lt!2665947) (set.union (content!15519 (_1!38072 lt!2665874)) (content!15519 (_2!38072 lt!2665874)))))))

(assert (=> d!2337283 (= lt!2665947 e!4578154)))

(declare-fun c!1422631 () Bool)

(assert (=> d!2337283 (= c!1422631 (is-Nil!73265 (_1!38072 lt!2665874)))))

(assert (=> d!2337283 (= (++!17746 (_1!38072 lt!2665874) (_2!38072 lt!2665874)) lt!2665947)))

(assert (= (and d!2337283 c!1422631) b!7717836))

(assert (= (and d!2337283 (not c!1422631)) b!7717837))

(assert (= (and d!2337283 res!3079516) b!7717838))

(assert (= (and b!7717838 res!3079515) b!7717839))

(declare-fun m!8198686 () Bool)

(assert (=> b!7717837 m!8198686))

(declare-fun m!8198688 () Bool)

(assert (=> b!7717838 m!8198688))

(assert (=> b!7717838 m!8198660))

(declare-fun m!8198690 () Bool)

(assert (=> b!7717838 m!8198690))

(declare-fun m!8198692 () Bool)

(assert (=> d!2337283 m!8198692))

(declare-fun m!8198694 () Bool)

(assert (=> d!2337283 m!8198694))

(declare-fun m!8198696 () Bool)

(assert (=> d!2337283 m!8198696))

(assert (=> b!7717568 d!2337283))

(declare-fun d!2337285 () Bool)

(assert (=> d!2337285 (= (Exists!4663 lambda!470967) (choose!59230 lambda!470967))))

(declare-fun bs!1962863 () Bool)

(assert (= bs!1962863 d!2337285))

(declare-fun m!8198698 () Bool)

(assert (=> bs!1962863 m!8198698))

(assert (=> b!7717573 d!2337285))

(declare-fun b!7717840 () Bool)

(declare-fun e!4578155 () Bool)

(declare-fun e!4578161 () Bool)

(assert (=> b!7717840 (= e!4578155 e!4578161)))

(declare-fun c!1422632 () Bool)

(assert (=> b!7717840 (= c!1422632 (is-Star!20538 (reg!20867 r!14126)))))

(declare-fun bm!713305 () Bool)

(declare-fun call!713312 () Bool)

(declare-fun call!713311 () Bool)

(assert (=> bm!713305 (= call!713312 call!713311)))

(declare-fun b!7717841 () Bool)

(declare-fun res!3079517 () Bool)

(declare-fun e!4578157 () Bool)

(assert (=> b!7717841 (=> (not res!3079517) (not e!4578157))))

(declare-fun call!713310 () Bool)

(assert (=> b!7717841 (= res!3079517 call!713310)))

(declare-fun e!4578158 () Bool)

(assert (=> b!7717841 (= e!4578158 e!4578157)))

(declare-fun c!1422633 () Bool)

(declare-fun bm!713306 () Bool)

(assert (=> bm!713306 (= call!713311 (validRegex!10956 (ite c!1422632 (reg!20867 (reg!20867 r!14126)) (ite c!1422633 (regTwo!41589 (reg!20867 r!14126)) (regTwo!41588 (reg!20867 r!14126))))))))

(declare-fun b!7717842 () Bool)

(declare-fun e!4578160 () Bool)

(assert (=> b!7717842 (= e!4578161 e!4578160)))

(declare-fun res!3079521 () Bool)

(assert (=> b!7717842 (= res!3079521 (not (nullable!9015 (reg!20867 (reg!20867 r!14126)))))))

(assert (=> b!7717842 (=> (not res!3079521) (not e!4578160))))

(declare-fun b!7717843 () Bool)

(assert (=> b!7717843 (= e!4578160 call!713311)))

(declare-fun b!7717844 () Bool)

(declare-fun e!4578156 () Bool)

(declare-fun e!4578159 () Bool)

(assert (=> b!7717844 (= e!4578156 e!4578159)))

(declare-fun res!3079518 () Bool)

(assert (=> b!7717844 (=> (not res!3079518) (not e!4578159))))

(assert (=> b!7717844 (= res!3079518 call!713310)))

(declare-fun d!2337287 () Bool)

(declare-fun res!3079519 () Bool)

(assert (=> d!2337287 (=> res!3079519 e!4578155)))

(assert (=> d!2337287 (= res!3079519 (is-ElementMatch!20538 (reg!20867 r!14126)))))

(assert (=> d!2337287 (= (validRegex!10956 (reg!20867 r!14126)) e!4578155)))

(declare-fun b!7717845 () Bool)

(assert (=> b!7717845 (= e!4578159 call!713312)))

(declare-fun b!7717846 () Bool)

(declare-fun res!3079520 () Bool)

(assert (=> b!7717846 (=> res!3079520 e!4578156)))

(assert (=> b!7717846 (= res!3079520 (not (is-Concat!29383 (reg!20867 r!14126))))))

(assert (=> b!7717846 (= e!4578158 e!4578156)))

(declare-fun bm!713307 () Bool)

(assert (=> bm!713307 (= call!713310 (validRegex!10956 (ite c!1422633 (regOne!41589 (reg!20867 r!14126)) (regOne!41588 (reg!20867 r!14126)))))))

(declare-fun b!7717847 () Bool)

(assert (=> b!7717847 (= e!4578161 e!4578158)))

(assert (=> b!7717847 (= c!1422633 (is-Union!20538 (reg!20867 r!14126)))))

(declare-fun b!7717848 () Bool)

(assert (=> b!7717848 (= e!4578157 call!713312)))

(assert (= (and d!2337287 (not res!3079519)) b!7717840))

(assert (= (and b!7717840 c!1422632) b!7717842))

(assert (= (and b!7717840 (not c!1422632)) b!7717847))

(assert (= (and b!7717842 res!3079521) b!7717843))

(assert (= (and b!7717847 c!1422633) b!7717841))

(assert (= (and b!7717847 (not c!1422633)) b!7717846))

(assert (= (and b!7717841 res!3079517) b!7717848))

(assert (= (and b!7717846 (not res!3079520)) b!7717844))

(assert (= (and b!7717844 res!3079518) b!7717845))

(assert (= (or b!7717841 b!7717844) bm!713307))

(assert (= (or b!7717848 b!7717845) bm!713305))

(assert (= (or b!7717843 bm!713305) bm!713306))

(declare-fun m!8198700 () Bool)

(assert (=> bm!713306 m!8198700))

(declare-fun m!8198702 () Bool)

(assert (=> b!7717842 m!8198702))

(declare-fun m!8198704 () Bool)

(assert (=> bm!713307 m!8198704))

(assert (=> b!7717580 d!2337287))

(declare-fun b!7717849 () Bool)

(declare-fun res!3079528 () Bool)

(declare-fun e!4578166 () Bool)

(assert (=> b!7717849 (=> res!3079528 e!4578166)))

(declare-fun e!4578165 () Bool)

(assert (=> b!7717849 (= res!3079528 e!4578165)))

(declare-fun res!3079524 () Bool)

(assert (=> b!7717849 (=> (not res!3079524) (not e!4578165))))

(declare-fun lt!2665948 () Bool)

(assert (=> b!7717849 (= res!3079524 lt!2665948)))

(declare-fun b!7717850 () Bool)

(declare-fun e!4578168 () Bool)

(declare-fun e!4578162 () Bool)

(assert (=> b!7717850 (= e!4578168 e!4578162)))

(declare-fun res!3079526 () Bool)

(assert (=> b!7717850 (=> res!3079526 e!4578162)))

(declare-fun call!713313 () Bool)

(assert (=> b!7717850 (= res!3079526 call!713313)))

(declare-fun b!7717851 () Bool)

(assert (=> b!7717851 (= e!4578165 (= (head!15780 (_2!38072 lt!2665874)) (c!1422594 r!14126)))))

(declare-fun b!7717852 () Bool)

(assert (=> b!7717852 (= e!4578166 e!4578168)))

(declare-fun res!3079525 () Bool)

(assert (=> b!7717852 (=> (not res!3079525) (not e!4578168))))

(assert (=> b!7717852 (= res!3079525 (not lt!2665948))))

(declare-fun b!7717853 () Bool)

(declare-fun e!4578164 () Bool)

(assert (=> b!7717853 (= e!4578164 (nullable!9015 r!14126))))

(declare-fun d!2337289 () Bool)

(declare-fun e!4578167 () Bool)

(assert (=> d!2337289 e!4578167))

(declare-fun c!1422636 () Bool)

(assert (=> d!2337289 (= c!1422636 (is-EmptyExpr!20538 r!14126))))

(assert (=> d!2337289 (= lt!2665948 e!4578164)))

(declare-fun c!1422635 () Bool)

(assert (=> d!2337289 (= c!1422635 (isEmpty!41924 (_2!38072 lt!2665874)))))

(assert (=> d!2337289 (validRegex!10956 r!14126)))

(assert (=> d!2337289 (= (matchR!10034 r!14126 (_2!38072 lt!2665874)) lt!2665948)))

(declare-fun bm!713308 () Bool)

(assert (=> bm!713308 (= call!713313 (isEmpty!41924 (_2!38072 lt!2665874)))))

(declare-fun b!7717854 () Bool)

(assert (=> b!7717854 (= e!4578164 (matchR!10034 (derivativeStep!5980 r!14126 (head!15780 (_2!38072 lt!2665874))) (tail!15320 (_2!38072 lt!2665874))))))

(declare-fun b!7717855 () Bool)

(assert (=> b!7717855 (= e!4578167 (= lt!2665948 call!713313))))

(declare-fun b!7717856 () Bool)

(assert (=> b!7717856 (= e!4578162 (not (= (head!15780 (_2!38072 lt!2665874)) (c!1422594 r!14126))))))

(declare-fun b!7717857 () Bool)

(declare-fun e!4578163 () Bool)

(assert (=> b!7717857 (= e!4578163 (not lt!2665948))))

(declare-fun b!7717858 () Bool)

(assert (=> b!7717858 (= e!4578167 e!4578163)))

(declare-fun c!1422634 () Bool)

(assert (=> b!7717858 (= c!1422634 (is-EmptyLang!20538 r!14126))))

(declare-fun b!7717859 () Bool)

(declare-fun res!3079522 () Bool)

(assert (=> b!7717859 (=> res!3079522 e!4578166)))

(assert (=> b!7717859 (= res!3079522 (not (is-ElementMatch!20538 r!14126)))))

(assert (=> b!7717859 (= e!4578163 e!4578166)))

(declare-fun b!7717860 () Bool)

(declare-fun res!3079527 () Bool)

(assert (=> b!7717860 (=> (not res!3079527) (not e!4578165))))

(assert (=> b!7717860 (= res!3079527 (not call!713313))))

(declare-fun b!7717861 () Bool)

(declare-fun res!3079523 () Bool)

(assert (=> b!7717861 (=> res!3079523 e!4578162)))

(assert (=> b!7717861 (= res!3079523 (not (isEmpty!41924 (tail!15320 (_2!38072 lt!2665874)))))))

(declare-fun b!7717862 () Bool)

(declare-fun res!3079529 () Bool)

(assert (=> b!7717862 (=> (not res!3079529) (not e!4578165))))

(assert (=> b!7717862 (= res!3079529 (isEmpty!41924 (tail!15320 (_2!38072 lt!2665874))))))

(assert (= (and d!2337289 c!1422635) b!7717853))

(assert (= (and d!2337289 (not c!1422635)) b!7717854))

(assert (= (and d!2337289 c!1422636) b!7717855))

(assert (= (and d!2337289 (not c!1422636)) b!7717858))

(assert (= (and b!7717858 c!1422634) b!7717857))

(assert (= (and b!7717858 (not c!1422634)) b!7717859))

(assert (= (and b!7717859 (not res!3079522)) b!7717849))

(assert (= (and b!7717849 res!3079524) b!7717860))

(assert (= (and b!7717860 res!3079527) b!7717862))

(assert (= (and b!7717862 res!3079529) b!7717851))

(assert (= (and b!7717849 (not res!3079528)) b!7717852))

(assert (= (and b!7717852 res!3079525) b!7717850))

(assert (= (and b!7717850 (not res!3079526)) b!7717861))

(assert (= (and b!7717861 (not res!3079523)) b!7717856))

(assert (= (or b!7717855 b!7717850 b!7717860) bm!713308))

(declare-fun m!8198706 () Bool)

(assert (=> bm!713308 m!8198706))

(declare-fun m!8198708 () Bool)

(assert (=> b!7717856 m!8198708))

(declare-fun m!8198710 () Bool)

(assert (=> b!7717862 m!8198710))

(assert (=> b!7717862 m!8198710))

(declare-fun m!8198712 () Bool)

(assert (=> b!7717862 m!8198712))

(assert (=> b!7717853 m!8198674))

(assert (=> b!7717861 m!8198710))

(assert (=> b!7717861 m!8198710))

(assert (=> b!7717861 m!8198712))

(assert (=> b!7717854 m!8198708))

(assert (=> b!7717854 m!8198708))

(declare-fun m!8198714 () Bool)

(assert (=> b!7717854 m!8198714))

(assert (=> b!7717854 m!8198710))

(assert (=> b!7717854 m!8198714))

(assert (=> b!7717854 m!8198710))

(declare-fun m!8198716 () Bool)

(assert (=> b!7717854 m!8198716))

(assert (=> b!7717851 m!8198708))

(assert (=> d!2337289 m!8198706))

(assert (=> d!2337289 m!8198498))

(assert (=> b!7717580 d!2337289))

(declare-fun d!2337291 () Bool)

(assert (=> d!2337291 (= (matchR!10034 r!14126 (_2!38072 lt!2665874)) (matchRSpec!4628 r!14126 (_2!38072 lt!2665874)))))

(declare-fun lt!2665952 () Unit!168144)

(declare-fun choose!59232 (Regex!20538 List!73389) Unit!168144)

(assert (=> d!2337291 (= lt!2665952 (choose!59232 r!14126 (_2!38072 lt!2665874)))))

(assert (=> d!2337291 (validRegex!10956 r!14126)))

(assert (=> d!2337291 (= (mainMatchTheorem!4603 r!14126 (_2!38072 lt!2665874)) lt!2665952)))

(declare-fun bs!1962867 () Bool)

(assert (= bs!1962867 d!2337291))

(assert (=> bs!1962867 m!8198522))

(assert (=> bs!1962867 m!8198534))

(declare-fun m!8198722 () Bool)

(assert (=> bs!1962867 m!8198722))

(assert (=> bs!1962867 m!8198498))

(assert (=> b!7717580 d!2337291))

(declare-fun d!2337295 () Bool)

(assert (=> d!2337295 (= (matchR!10034 (reg!20867 r!14126) (_1!38072 lt!2665874)) (matchRSpec!4628 (reg!20867 r!14126) (_1!38072 lt!2665874)))))

(declare-fun lt!2665953 () Unit!168144)

(assert (=> d!2337295 (= lt!2665953 (choose!59232 (reg!20867 r!14126) (_1!38072 lt!2665874)))))

(assert (=> d!2337295 (validRegex!10956 (reg!20867 r!14126))))

(assert (=> d!2337295 (= (mainMatchTheorem!4603 (reg!20867 r!14126) (_1!38072 lt!2665874)) lt!2665953)))

(declare-fun bs!1962868 () Bool)

(assert (= bs!1962868 d!2337295))

(assert (=> bs!1962868 m!8198526))

(assert (=> bs!1962868 m!8198528))

(declare-fun m!8198724 () Bool)

(assert (=> bs!1962868 m!8198724))

(assert (=> bs!1962868 m!8198530))

(assert (=> b!7717580 d!2337295))

(declare-fun d!2337297 () Bool)

(declare-fun lt!2665956 () tuple2!69538)

(declare-fun dynLambda!29956 (Int tuple2!69538) Bool)

(assert (=> d!2337297 (dynLambda!29956 lambda!470967 lt!2665956)))

(declare-fun choose!59233 (Int) tuple2!69538)

(assert (=> d!2337297 (= lt!2665956 (choose!59233 lambda!470967))))

(assert (=> d!2337297 (Exists!4663 lambda!470967)))

(assert (=> d!2337297 (= (pickWitness!517 lambda!470967) lt!2665956)))

(declare-fun b_lambda!289251 () Bool)

(assert (=> (not b_lambda!289251) (not d!2337297)))

(declare-fun bs!1962869 () Bool)

(assert (= bs!1962869 d!2337297))

(declare-fun m!8198726 () Bool)

(assert (=> bs!1962869 m!8198726))

(declare-fun m!8198728 () Bool)

(assert (=> bs!1962869 m!8198728))

(assert (=> bs!1962869 m!8198538))

(assert (=> b!7717580 d!2337297))

(declare-fun bs!1962871 () Bool)

(declare-fun b!7717921 () Bool)

(assert (= bs!1962871 (and b!7717921 b!7717570)))

(declare-fun lambda!470988 () Int)

(assert (=> bs!1962871 (not (= lambda!470988 lambda!470966))))

(declare-fun bs!1962872 () Bool)

(assert (= bs!1962872 (and b!7717921 b!7717573)))

(assert (=> bs!1962872 (= (and (= (_1!38072 lt!2665874) s!9605) (= (reg!20867 (reg!20867 r!14126)) (reg!20867 r!14126)) (= (reg!20867 r!14126) r!14126)) (= lambda!470988 lambda!470967))))

(declare-fun bs!1962873 () Bool)

(assert (= bs!1962873 (and b!7717921 d!2337271)))

(assert (=> bs!1962873 (not (= lambda!470988 lambda!470980))))

(assert (=> b!7717921 true))

(assert (=> b!7717921 true))

(declare-fun bs!1962874 () Bool)

(declare-fun b!7717925 () Bool)

(assert (= bs!1962874 (and b!7717925 b!7717570)))

(declare-fun lambda!470989 () Int)

(assert (=> bs!1962874 (not (= lambda!470989 lambda!470966))))

(declare-fun bs!1962875 () Bool)

(assert (= bs!1962875 (and b!7717925 b!7717573)))

(assert (=> bs!1962875 (not (= lambda!470989 lambda!470967))))

(declare-fun bs!1962876 () Bool)

(assert (= bs!1962876 (and b!7717925 d!2337271)))

(assert (=> bs!1962876 (not (= lambda!470989 lambda!470980))))

(declare-fun bs!1962877 () Bool)

(assert (= bs!1962877 (and b!7717925 b!7717921)))

(assert (=> bs!1962877 (not (= lambda!470989 lambda!470988))))

(assert (=> b!7717925 true))

(assert (=> b!7717925 true))

(declare-fun b!7717915 () Bool)

(declare-fun e!4578200 () Bool)

(declare-fun call!713319 () Bool)

(assert (=> b!7717915 (= e!4578200 call!713319)))

(declare-fun b!7717916 () Bool)

(declare-fun e!4578199 () Bool)

(assert (=> b!7717916 (= e!4578200 e!4578199)))

(declare-fun res!3079561 () Bool)

(assert (=> b!7717916 (= res!3079561 (not (is-EmptyLang!20538 (reg!20867 r!14126))))))

(assert (=> b!7717916 (=> (not res!3079561) (not e!4578199))))

(declare-fun b!7717917 () Bool)

(declare-fun e!4578205 () Bool)

(assert (=> b!7717917 (= e!4578205 (= (_1!38072 lt!2665874) (Cons!73265 (c!1422594 (reg!20867 r!14126)) Nil!73265)))))

(declare-fun b!7717918 () Bool)

(declare-fun c!1422648 () Bool)

(assert (=> b!7717918 (= c!1422648 (is-ElementMatch!20538 (reg!20867 r!14126)))))

(assert (=> b!7717918 (= e!4578199 e!4578205)))

(declare-fun call!713318 () Bool)

(declare-fun c!1422649 () Bool)

(declare-fun bm!713313 () Bool)

(assert (=> bm!713313 (= call!713318 (Exists!4663 (ite c!1422649 lambda!470988 lambda!470989)))))

(declare-fun b!7717919 () Bool)

(declare-fun c!1422651 () Bool)

(assert (=> b!7717919 (= c!1422651 (is-Union!20538 (reg!20867 r!14126)))))

(declare-fun e!4578204 () Bool)

(assert (=> b!7717919 (= e!4578205 e!4578204)))

(declare-fun b!7717920 () Bool)

(declare-fun e!4578203 () Bool)

(assert (=> b!7717920 (= e!4578203 (matchRSpec!4628 (regTwo!41589 (reg!20867 r!14126)) (_1!38072 lt!2665874)))))

(declare-fun b!7717922 () Bool)

(declare-fun res!3079562 () Bool)

(declare-fun e!4578201 () Bool)

(assert (=> b!7717922 (=> res!3079562 e!4578201)))

(assert (=> b!7717922 (= res!3079562 call!713319)))

(declare-fun e!4578202 () Bool)

(assert (=> b!7717922 (= e!4578202 e!4578201)))

(declare-fun b!7717923 () Bool)

(assert (=> b!7717923 (= e!4578204 e!4578202)))

(assert (=> b!7717923 (= c!1422649 (is-Star!20538 (reg!20867 r!14126)))))

(declare-fun bm!713314 () Bool)

(assert (=> bm!713314 (= call!713319 (isEmpty!41924 (_1!38072 lt!2665874)))))

(assert (=> b!7717921 (= e!4578201 call!713318)))

(declare-fun d!2337299 () Bool)

(declare-fun c!1422650 () Bool)

(assert (=> d!2337299 (= c!1422650 (is-EmptyExpr!20538 (reg!20867 r!14126)))))

(assert (=> d!2337299 (= (matchRSpec!4628 (reg!20867 r!14126) (_1!38072 lt!2665874)) e!4578200)))

(declare-fun b!7717924 () Bool)

(assert (=> b!7717924 (= e!4578204 e!4578203)))

(declare-fun res!3079560 () Bool)

(assert (=> b!7717924 (= res!3079560 (matchRSpec!4628 (regOne!41589 (reg!20867 r!14126)) (_1!38072 lt!2665874)))))

(assert (=> b!7717924 (=> res!3079560 e!4578203)))

(assert (=> b!7717925 (= e!4578202 call!713318)))

(assert (= (and d!2337299 c!1422650) b!7717915))

(assert (= (and d!2337299 (not c!1422650)) b!7717916))

(assert (= (and b!7717916 res!3079561) b!7717918))

(assert (= (and b!7717918 c!1422648) b!7717917))

(assert (= (and b!7717918 (not c!1422648)) b!7717919))

(assert (= (and b!7717919 c!1422651) b!7717924))

(assert (= (and b!7717919 (not c!1422651)) b!7717923))

(assert (= (and b!7717924 (not res!3079560)) b!7717920))

(assert (= (and b!7717923 c!1422649) b!7717922))

(assert (= (and b!7717923 (not c!1422649)) b!7717925))

(assert (= (and b!7717922 (not res!3079562)) b!7717921))

(assert (= (or b!7717921 b!7717925) bm!713313))

(assert (= (or b!7717915 b!7717922) bm!713314))

(declare-fun m!8198758 () Bool)

(assert (=> bm!713313 m!8198758))

(declare-fun m!8198760 () Bool)

(assert (=> b!7717920 m!8198760))

(declare-fun m!8198762 () Bool)

(assert (=> bm!713314 m!8198762))

(declare-fun m!8198764 () Bool)

(assert (=> b!7717924 m!8198764))

(assert (=> b!7717580 d!2337299))

(declare-fun bs!1962878 () Bool)

(declare-fun b!7717936 () Bool)

(assert (= bs!1962878 (and b!7717936 b!7717925)))

(declare-fun lambda!470990 () Int)

(assert (=> bs!1962878 (not (= lambda!470990 lambda!470989))))

(declare-fun bs!1962879 () Bool)

(assert (= bs!1962879 (and b!7717936 b!7717921)))

(assert (=> bs!1962879 (= (and (= (_2!38072 lt!2665874) (_1!38072 lt!2665874)) (= (reg!20867 r!14126) (reg!20867 (reg!20867 r!14126))) (= r!14126 (reg!20867 r!14126))) (= lambda!470990 lambda!470988))))

(declare-fun bs!1962880 () Bool)

(assert (= bs!1962880 (and b!7717936 d!2337271)))

(assert (=> bs!1962880 (not (= lambda!470990 lambda!470980))))

(declare-fun bs!1962881 () Bool)

(assert (= bs!1962881 (and b!7717936 b!7717573)))

(assert (=> bs!1962881 (= (= (_2!38072 lt!2665874) s!9605) (= lambda!470990 lambda!470967))))

(declare-fun bs!1962882 () Bool)

(assert (= bs!1962882 (and b!7717936 b!7717570)))

(assert (=> bs!1962882 (not (= lambda!470990 lambda!470966))))

(assert (=> b!7717936 true))

(assert (=> b!7717936 true))

(declare-fun bs!1962883 () Bool)

(declare-fun b!7717940 () Bool)

(assert (= bs!1962883 (and b!7717940 b!7717921)))

(declare-fun lambda!470991 () Int)

(assert (=> bs!1962883 (not (= lambda!470991 lambda!470988))))

(declare-fun bs!1962884 () Bool)

(assert (= bs!1962884 (and b!7717940 d!2337271)))

(assert (=> bs!1962884 (not (= lambda!470991 lambda!470980))))

(declare-fun bs!1962885 () Bool)

(assert (= bs!1962885 (and b!7717940 b!7717573)))

(assert (=> bs!1962885 (not (= lambda!470991 lambda!470967))))

(declare-fun bs!1962886 () Bool)

(assert (= bs!1962886 (and b!7717940 b!7717570)))

(assert (=> bs!1962886 (not (= lambda!470991 lambda!470966))))

(declare-fun bs!1962887 () Bool)

(assert (= bs!1962887 (and b!7717940 b!7717925)))

(assert (=> bs!1962887 (= (and (= (_2!38072 lt!2665874) (_1!38072 lt!2665874)) (= (regOne!41588 r!14126) (regOne!41588 (reg!20867 r!14126))) (= (regTwo!41588 r!14126) (regTwo!41588 (reg!20867 r!14126)))) (= lambda!470991 lambda!470989))))

(declare-fun bs!1962888 () Bool)

(assert (= bs!1962888 (and b!7717940 b!7717936)))

(assert (=> bs!1962888 (not (= lambda!470991 lambda!470990))))

(assert (=> b!7717940 true))

(assert (=> b!7717940 true))

(declare-fun b!7717930 () Bool)

(declare-fun e!4578210 () Bool)

(declare-fun call!713321 () Bool)

(assert (=> b!7717930 (= e!4578210 call!713321)))

(declare-fun b!7717931 () Bool)

(declare-fun e!4578209 () Bool)

(assert (=> b!7717931 (= e!4578210 e!4578209)))

(declare-fun res!3079568 () Bool)

(assert (=> b!7717931 (= res!3079568 (not (is-EmptyLang!20538 r!14126)))))

(assert (=> b!7717931 (=> (not res!3079568) (not e!4578209))))

(declare-fun b!7717932 () Bool)

(declare-fun e!4578215 () Bool)

(assert (=> b!7717932 (= e!4578215 (= (_2!38072 lt!2665874) (Cons!73265 (c!1422594 r!14126) Nil!73265)))))

(declare-fun b!7717933 () Bool)

(declare-fun c!1422652 () Bool)

(assert (=> b!7717933 (= c!1422652 (is-ElementMatch!20538 r!14126))))

(assert (=> b!7717933 (= e!4578209 e!4578215)))

(declare-fun call!713320 () Bool)

(declare-fun bm!713315 () Bool)

(declare-fun c!1422653 () Bool)

(assert (=> bm!713315 (= call!713320 (Exists!4663 (ite c!1422653 lambda!470990 lambda!470991)))))

(declare-fun b!7717934 () Bool)

(declare-fun c!1422655 () Bool)

(assert (=> b!7717934 (= c!1422655 (is-Union!20538 r!14126))))

(declare-fun e!4578214 () Bool)

(assert (=> b!7717934 (= e!4578215 e!4578214)))

(declare-fun b!7717935 () Bool)

(declare-fun e!4578213 () Bool)

(assert (=> b!7717935 (= e!4578213 (matchRSpec!4628 (regTwo!41589 r!14126) (_2!38072 lt!2665874)))))

(declare-fun b!7717937 () Bool)

(declare-fun res!3079569 () Bool)

(declare-fun e!4578211 () Bool)

(assert (=> b!7717937 (=> res!3079569 e!4578211)))

(assert (=> b!7717937 (= res!3079569 call!713321)))

(declare-fun e!4578212 () Bool)

(assert (=> b!7717937 (= e!4578212 e!4578211)))

(declare-fun b!7717938 () Bool)

(assert (=> b!7717938 (= e!4578214 e!4578212)))

(assert (=> b!7717938 (= c!1422653 (is-Star!20538 r!14126))))

(declare-fun bm!713316 () Bool)

(assert (=> bm!713316 (= call!713321 (isEmpty!41924 (_2!38072 lt!2665874)))))

(assert (=> b!7717936 (= e!4578211 call!713320)))

(declare-fun d!2337309 () Bool)

(declare-fun c!1422654 () Bool)

(assert (=> d!2337309 (= c!1422654 (is-EmptyExpr!20538 r!14126))))

(assert (=> d!2337309 (= (matchRSpec!4628 r!14126 (_2!38072 lt!2665874)) e!4578210)))

(declare-fun b!7717939 () Bool)

(assert (=> b!7717939 (= e!4578214 e!4578213)))

(declare-fun res!3079567 () Bool)

(assert (=> b!7717939 (= res!3079567 (matchRSpec!4628 (regOne!41589 r!14126) (_2!38072 lt!2665874)))))

(assert (=> b!7717939 (=> res!3079567 e!4578213)))

(assert (=> b!7717940 (= e!4578212 call!713320)))

(assert (= (and d!2337309 c!1422654) b!7717930))

(assert (= (and d!2337309 (not c!1422654)) b!7717931))

(assert (= (and b!7717931 res!3079568) b!7717933))

(assert (= (and b!7717933 c!1422652) b!7717932))

(assert (= (and b!7717933 (not c!1422652)) b!7717934))

(assert (= (and b!7717934 c!1422655) b!7717939))

(assert (= (and b!7717934 (not c!1422655)) b!7717938))

(assert (= (and b!7717939 (not res!3079567)) b!7717935))

(assert (= (and b!7717938 c!1422653) b!7717937))

(assert (= (and b!7717938 (not c!1422653)) b!7717940))

(assert (= (and b!7717937 (not res!3079569)) b!7717936))

(assert (= (or b!7717936 b!7717940) bm!713315))

(assert (= (or b!7717930 b!7717937) bm!713316))

(declare-fun m!8198766 () Bool)

(assert (=> bm!713315 m!8198766))

(declare-fun m!8198768 () Bool)

(assert (=> b!7717935 m!8198768))

(assert (=> bm!713316 m!8198706))

(declare-fun m!8198770 () Bool)

(assert (=> b!7717939 m!8198770))

(assert (=> b!7717580 d!2337309))

(declare-fun b!7717945 () Bool)

(declare-fun res!3079578 () Bool)

(declare-fun e!4578222 () Bool)

(assert (=> b!7717945 (=> res!3079578 e!4578222)))

(declare-fun e!4578221 () Bool)

(assert (=> b!7717945 (= res!3079578 e!4578221)))

(declare-fun res!3079574 () Bool)

(assert (=> b!7717945 (=> (not res!3079574) (not e!4578221))))

(declare-fun lt!2665963 () Bool)

(assert (=> b!7717945 (= res!3079574 lt!2665963)))

(declare-fun b!7717946 () Bool)

(declare-fun e!4578224 () Bool)

(declare-fun e!4578218 () Bool)

(assert (=> b!7717946 (= e!4578224 e!4578218)))

(declare-fun res!3079576 () Bool)

(assert (=> b!7717946 (=> res!3079576 e!4578218)))

(declare-fun call!713322 () Bool)

(assert (=> b!7717946 (= res!3079576 call!713322)))

(declare-fun b!7717947 () Bool)

(assert (=> b!7717947 (= e!4578221 (= (head!15780 (_1!38072 lt!2665874)) (c!1422594 (reg!20867 r!14126))))))

(declare-fun b!7717948 () Bool)

(assert (=> b!7717948 (= e!4578222 e!4578224)))

(declare-fun res!3079575 () Bool)

(assert (=> b!7717948 (=> (not res!3079575) (not e!4578224))))

(assert (=> b!7717948 (= res!3079575 (not lt!2665963))))

(declare-fun b!7717949 () Bool)

(declare-fun e!4578220 () Bool)

(assert (=> b!7717949 (= e!4578220 (nullable!9015 (reg!20867 r!14126)))))

(declare-fun d!2337311 () Bool)

(declare-fun e!4578223 () Bool)

(assert (=> d!2337311 e!4578223))

(declare-fun c!1422658 () Bool)

(assert (=> d!2337311 (= c!1422658 (is-EmptyExpr!20538 (reg!20867 r!14126)))))

(assert (=> d!2337311 (= lt!2665963 e!4578220)))

(declare-fun c!1422657 () Bool)

(assert (=> d!2337311 (= c!1422657 (isEmpty!41924 (_1!38072 lt!2665874)))))

(assert (=> d!2337311 (validRegex!10956 (reg!20867 r!14126))))

(assert (=> d!2337311 (= (matchR!10034 (reg!20867 r!14126) (_1!38072 lt!2665874)) lt!2665963)))

(declare-fun bm!713317 () Bool)

(assert (=> bm!713317 (= call!713322 (isEmpty!41924 (_1!38072 lt!2665874)))))

(declare-fun b!7717950 () Bool)

(assert (=> b!7717950 (= e!4578220 (matchR!10034 (derivativeStep!5980 (reg!20867 r!14126) (head!15780 (_1!38072 lt!2665874))) (tail!15320 (_1!38072 lt!2665874))))))

(declare-fun b!7717951 () Bool)

(assert (=> b!7717951 (= e!4578223 (= lt!2665963 call!713322))))

(declare-fun b!7717952 () Bool)

(assert (=> b!7717952 (= e!4578218 (not (= (head!15780 (_1!38072 lt!2665874)) (c!1422594 (reg!20867 r!14126)))))))

(declare-fun b!7717953 () Bool)

(declare-fun e!4578219 () Bool)

(assert (=> b!7717953 (= e!4578219 (not lt!2665963))))

(declare-fun b!7717954 () Bool)

(assert (=> b!7717954 (= e!4578223 e!4578219)))

(declare-fun c!1422656 () Bool)

(assert (=> b!7717954 (= c!1422656 (is-EmptyLang!20538 (reg!20867 r!14126)))))

(declare-fun b!7717955 () Bool)

(declare-fun res!3079572 () Bool)

(assert (=> b!7717955 (=> res!3079572 e!4578222)))

(assert (=> b!7717955 (= res!3079572 (not (is-ElementMatch!20538 (reg!20867 r!14126))))))

(assert (=> b!7717955 (= e!4578219 e!4578222)))

(declare-fun b!7717956 () Bool)

(declare-fun res!3079577 () Bool)

(assert (=> b!7717956 (=> (not res!3079577) (not e!4578221))))

(assert (=> b!7717956 (= res!3079577 (not call!713322))))

(declare-fun b!7717957 () Bool)

(declare-fun res!3079573 () Bool)

(assert (=> b!7717957 (=> res!3079573 e!4578218)))

(assert (=> b!7717957 (= res!3079573 (not (isEmpty!41924 (tail!15320 (_1!38072 lt!2665874)))))))

(declare-fun b!7717958 () Bool)

(declare-fun res!3079579 () Bool)

(assert (=> b!7717958 (=> (not res!3079579) (not e!4578221))))

(assert (=> b!7717958 (= res!3079579 (isEmpty!41924 (tail!15320 (_1!38072 lt!2665874))))))

(assert (= (and d!2337311 c!1422657) b!7717949))

(assert (= (and d!2337311 (not c!1422657)) b!7717950))

(assert (= (and d!2337311 c!1422658) b!7717951))

(assert (= (and d!2337311 (not c!1422658)) b!7717954))

(assert (= (and b!7717954 c!1422656) b!7717953))

(assert (= (and b!7717954 (not c!1422656)) b!7717955))

(assert (= (and b!7717955 (not res!3079572)) b!7717945))

(assert (= (and b!7717945 res!3079574) b!7717956))

(assert (= (and b!7717956 res!3079577) b!7717958))

(assert (= (and b!7717958 res!3079579) b!7717947))

(assert (= (and b!7717945 (not res!3079578)) b!7717948))

(assert (= (and b!7717948 res!3079575) b!7717946))

(assert (= (and b!7717946 (not res!3079576)) b!7717957))

(assert (= (and b!7717957 (not res!3079573)) b!7717952))

(assert (= (or b!7717951 b!7717946 b!7717956) bm!713317))

(assert (=> bm!713317 m!8198762))

(assert (=> b!7717952 m!8198672))

(assert (=> b!7717958 m!8198666))

(assert (=> b!7717958 m!8198666))

(declare-fun m!8198772 () Bool)

(assert (=> b!7717958 m!8198772))

(assert (=> b!7717949 m!8198682))

(assert (=> b!7717957 m!8198666))

(assert (=> b!7717957 m!8198666))

(assert (=> b!7717957 m!8198772))

(assert (=> b!7717950 m!8198672))

(assert (=> b!7717950 m!8198672))

(declare-fun m!8198774 () Bool)

(assert (=> b!7717950 m!8198774))

(assert (=> b!7717950 m!8198666))

(assert (=> b!7717950 m!8198774))

(assert (=> b!7717950 m!8198666))

(declare-fun m!8198776 () Bool)

(assert (=> b!7717950 m!8198776))

(assert (=> b!7717947 m!8198672))

(assert (=> d!2337311 m!8198762))

(assert (=> d!2337311 m!8198530))

(assert (=> b!7717580 d!2337311))

(declare-fun b!7717974 () Bool)

(declare-fun e!4578238 () List!73389)

(assert (=> b!7717974 (= e!4578238 (Cons!73265 (h!79713 Nil!73265) (++!17746 (t!388124 Nil!73265) s!9605)))))

(declare-fun b!7717976 () Bool)

(declare-fun e!4578237 () Bool)

(declare-fun lt!2665964 () List!73389)

(assert (=> b!7717976 (= e!4578237 (or (not (= s!9605 Nil!73265)) (= lt!2665964 Nil!73265)))))

(declare-fun b!7717975 () Bool)

(declare-fun res!3079588 () Bool)

(assert (=> b!7717975 (=> (not res!3079588) (not e!4578237))))

(assert (=> b!7717975 (= res!3079588 (= (size!42622 lt!2665964) (+ (size!42622 Nil!73265) (size!42622 s!9605))))))

(declare-fun b!7717973 () Bool)

(assert (=> b!7717973 (= e!4578238 s!9605)))

(declare-fun d!2337313 () Bool)

(assert (=> d!2337313 e!4578237))

(declare-fun res!3079589 () Bool)

(assert (=> d!2337313 (=> (not res!3079589) (not e!4578237))))

(assert (=> d!2337313 (= res!3079589 (= (content!15519 lt!2665964) (set.union (content!15519 Nil!73265) (content!15519 s!9605))))))

(assert (=> d!2337313 (= lt!2665964 e!4578238)))

(declare-fun c!1422663 () Bool)

(assert (=> d!2337313 (= c!1422663 (is-Nil!73265 Nil!73265))))

(assert (=> d!2337313 (= (++!17746 Nil!73265 s!9605) lt!2665964)))

(assert (= (and d!2337313 c!1422663) b!7717973))

(assert (= (and d!2337313 (not c!1422663)) b!7717974))

(assert (= (and d!2337313 res!3079589) b!7717975))

(assert (= (and b!7717975 res!3079588) b!7717976))

(declare-fun m!8198778 () Bool)

(assert (=> b!7717974 m!8198778))

(declare-fun m!8198780 () Bool)

(assert (=> b!7717975 m!8198780))

(assert (=> b!7717975 m!8198662))

(declare-fun m!8198782 () Bool)

(assert (=> b!7717975 m!8198782))

(declare-fun m!8198784 () Bool)

(assert (=> d!2337313 m!8198784))

(declare-fun m!8198786 () Bool)

(assert (=> d!2337313 m!8198786))

(declare-fun m!8198788 () Bool)

(assert (=> d!2337313 m!8198788))

(assert (=> b!7717585 d!2337313))

(assert (=> b!7717579 d!2337279))

(declare-fun b!7717989 () Bool)

(declare-fun e!4578241 () Bool)

(declare-fun tp!2264312 () Bool)

(assert (=> b!7717989 (= e!4578241 tp!2264312)))

(declare-fun b!7717988 () Bool)

(declare-fun tp!2264309 () Bool)

(declare-fun tp!2264310 () Bool)

(assert (=> b!7717988 (= e!4578241 (and tp!2264309 tp!2264310))))

(declare-fun b!7717990 () Bool)

(declare-fun tp!2264308 () Bool)

(declare-fun tp!2264311 () Bool)

(assert (=> b!7717990 (= e!4578241 (and tp!2264308 tp!2264311))))

(assert (=> b!7717581 (= tp!2264277 e!4578241)))

(declare-fun b!7717987 () Bool)

(assert (=> b!7717987 (= e!4578241 tp_is_empty!51431)))

(assert (= (and b!7717581 (is-ElementMatch!20538 (reg!20867 r!14126))) b!7717987))

(assert (= (and b!7717581 (is-Concat!29383 (reg!20867 r!14126))) b!7717988))

(assert (= (and b!7717581 (is-Star!20538 (reg!20867 r!14126))) b!7717989))

(assert (= (and b!7717581 (is-Union!20538 (reg!20867 r!14126))) b!7717990))

(declare-fun b!7717995 () Bool)

(declare-fun e!4578244 () Bool)

(declare-fun tp!2264315 () Bool)

(assert (=> b!7717995 (= e!4578244 (and tp_is_empty!51431 tp!2264315))))

(assert (=> b!7717572 (= tp!2264276 e!4578244)))

(assert (= (and b!7717572 (is-Cons!73265 (t!388124 s!9605))) b!7717995))

(declare-fun b!7717998 () Bool)

(declare-fun e!4578245 () Bool)

(declare-fun tp!2264320 () Bool)

(assert (=> b!7717998 (= e!4578245 tp!2264320)))

(declare-fun b!7717997 () Bool)

(declare-fun tp!2264317 () Bool)

(declare-fun tp!2264318 () Bool)

(assert (=> b!7717997 (= e!4578245 (and tp!2264317 tp!2264318))))

(declare-fun b!7717999 () Bool)

(declare-fun tp!2264316 () Bool)

(declare-fun tp!2264319 () Bool)

(assert (=> b!7717999 (= e!4578245 (and tp!2264316 tp!2264319))))

(assert (=> b!7717584 (= tp!2264274 e!4578245)))

(declare-fun b!7717996 () Bool)

(assert (=> b!7717996 (= e!4578245 tp_is_empty!51431)))

(assert (= (and b!7717584 (is-ElementMatch!20538 (regOne!41589 r!14126))) b!7717996))

(assert (= (and b!7717584 (is-Concat!29383 (regOne!41589 r!14126))) b!7717997))

(assert (= (and b!7717584 (is-Star!20538 (regOne!41589 r!14126))) b!7717998))

(assert (= (and b!7717584 (is-Union!20538 (regOne!41589 r!14126))) b!7717999))

(declare-fun b!7718002 () Bool)

(declare-fun e!4578246 () Bool)

(declare-fun tp!2264325 () Bool)

(assert (=> b!7718002 (= e!4578246 tp!2264325)))

(declare-fun b!7718001 () Bool)

(declare-fun tp!2264322 () Bool)

(declare-fun tp!2264323 () Bool)

(assert (=> b!7718001 (= e!4578246 (and tp!2264322 tp!2264323))))

(declare-fun b!7718003 () Bool)

(declare-fun tp!2264321 () Bool)

(declare-fun tp!2264324 () Bool)

(assert (=> b!7718003 (= e!4578246 (and tp!2264321 tp!2264324))))

(assert (=> b!7717584 (= tp!2264275 e!4578246)))

(declare-fun b!7718000 () Bool)

(assert (=> b!7718000 (= e!4578246 tp_is_empty!51431)))

(assert (= (and b!7717584 (is-ElementMatch!20538 (regTwo!41589 r!14126))) b!7718000))

(assert (= (and b!7717584 (is-Concat!29383 (regTwo!41589 r!14126))) b!7718001))

(assert (= (and b!7717584 (is-Star!20538 (regTwo!41589 r!14126))) b!7718002))

(assert (= (and b!7717584 (is-Union!20538 (regTwo!41589 r!14126))) b!7718003))

(declare-fun b!7718006 () Bool)

(declare-fun e!4578247 () Bool)

(declare-fun tp!2264330 () Bool)

(assert (=> b!7718006 (= e!4578247 tp!2264330)))

(declare-fun b!7718005 () Bool)

(declare-fun tp!2264327 () Bool)

(declare-fun tp!2264328 () Bool)

(assert (=> b!7718005 (= e!4578247 (and tp!2264327 tp!2264328))))

(declare-fun b!7718007 () Bool)

(declare-fun tp!2264326 () Bool)

(declare-fun tp!2264329 () Bool)

(assert (=> b!7718007 (= e!4578247 (and tp!2264326 tp!2264329))))

(assert (=> b!7717583 (= tp!2264278 e!4578247)))

(declare-fun b!7718004 () Bool)

(assert (=> b!7718004 (= e!4578247 tp_is_empty!51431)))

(assert (= (and b!7717583 (is-ElementMatch!20538 (regOne!41588 r!14126))) b!7718004))

(assert (= (and b!7717583 (is-Concat!29383 (regOne!41588 r!14126))) b!7718005))

(assert (= (and b!7717583 (is-Star!20538 (regOne!41588 r!14126))) b!7718006))

(assert (= (and b!7717583 (is-Union!20538 (regOne!41588 r!14126))) b!7718007))

(declare-fun b!7718010 () Bool)

(declare-fun e!4578248 () Bool)

(declare-fun tp!2264335 () Bool)

(assert (=> b!7718010 (= e!4578248 tp!2264335)))

(declare-fun b!7718009 () Bool)

(declare-fun tp!2264332 () Bool)

(declare-fun tp!2264333 () Bool)

(assert (=> b!7718009 (= e!4578248 (and tp!2264332 tp!2264333))))

(declare-fun b!7718011 () Bool)

(declare-fun tp!2264331 () Bool)

(declare-fun tp!2264334 () Bool)

(assert (=> b!7718011 (= e!4578248 (and tp!2264331 tp!2264334))))

(assert (=> b!7717583 (= tp!2264279 e!4578248)))

(declare-fun b!7718008 () Bool)

(assert (=> b!7718008 (= e!4578248 tp_is_empty!51431)))

(assert (= (and b!7717583 (is-ElementMatch!20538 (regTwo!41588 r!14126))) b!7718008))

(assert (= (and b!7717583 (is-Concat!29383 (regTwo!41588 r!14126))) b!7718009))

(assert (= (and b!7717583 (is-Star!20538 (regTwo!41588 r!14126))) b!7718010))

(assert (= (and b!7717583 (is-Union!20538 (regTwo!41588 r!14126))) b!7718011))

(declare-fun b_lambda!289253 () Bool)

(assert (= b_lambda!289251 (or b!7717573 b_lambda!289253)))

(declare-fun bs!1962889 () Bool)

(declare-fun d!2337315 () Bool)

(assert (= bs!1962889 (and d!2337315 b!7717573)))

(declare-fun res!3079590 () Bool)

(declare-fun e!4578249 () Bool)

(assert (=> bs!1962889 (=> (not res!3079590) (not e!4578249))))

(assert (=> bs!1962889 (= res!3079590 (= (++!17746 (_1!38072 lt!2665956) (_2!38072 lt!2665956)) s!9605))))

(assert (=> bs!1962889 (= (dynLambda!29956 lambda!470967 lt!2665956) e!4578249)))

(declare-fun b!7718012 () Bool)

(declare-fun res!3079591 () Bool)

(assert (=> b!7718012 (=> (not res!3079591) (not e!4578249))))

(assert (=> b!7718012 (= res!3079591 (not (isEmpty!41924 (_1!38072 lt!2665956))))))

(declare-fun b!7718013 () Bool)

(declare-fun res!3079592 () Bool)

(assert (=> b!7718013 (=> (not res!3079592) (not e!4578249))))

(assert (=> b!7718013 (= res!3079592 (matchRSpec!4628 (reg!20867 r!14126) (_1!38072 lt!2665956)))))

(declare-fun b!7718014 () Bool)

(assert (=> b!7718014 (= e!4578249 (matchRSpec!4628 r!14126 (_2!38072 lt!2665956)))))

(assert (= (and bs!1962889 res!3079590) b!7718012))

(assert (= (and b!7718012 res!3079591) b!7718013))

(assert (= (and b!7718013 res!3079592) b!7718014))

(declare-fun m!8198790 () Bool)

(assert (=> bs!1962889 m!8198790))

(declare-fun m!8198792 () Bool)

(assert (=> b!7718012 m!8198792))

(declare-fun m!8198794 () Bool)

(assert (=> b!7718013 m!8198794))

(declare-fun m!8198796 () Bool)

(assert (=> b!7718014 m!8198796))

(assert (=> d!2337297 d!2337315))

(push 1)

(assert (not b!7717711))

(assert (not bm!713316))

(assert (not b!7717920))

(assert (not b!7717782))

(assert (not b!7717935))

(assert (not b!7718011))

(assert (not b!7717670))

(assert (not bm!713303))

(assert (not b!7717995))

(assert (not d!2337253))

(assert (not b!7717744))

(assert (not b!7717838))

(assert (not b!7718003))

(assert (not b!7718013))

(assert (not b!7717999))

(assert (not b!7717796))

(assert (not b!7717947))

(assert (not bm!713307))

(assert (not b!7717706))

(assert (not b!7717950))

(assert (not b!7717785))

(assert (not b!7717853))

(assert (not bm!713306))

(assert (not bm!713313))

(assert (not b!7717701))

(assert (not b_lambda!289253))

(assert (not b!7717862))

(assert (not b!7717747))

(assert (not b!7717787))

(assert (not d!2337313))

(assert (not b!7717704))

(assert (not b!7718010))

(assert (not bs!1962889))

(assert (not b!7718014))

(assert (not d!2337265))

(assert (not b!7717851))

(assert (not b!7717975))

(assert (not b!7718012))

(assert (not b!7718002))

(assert (not d!2337285))

(assert (not b!7717949))

(assert (not b!7718007))

(assert (not bm!713295))

(assert (not b!7718005))

(assert (not b!7717745))

(assert (not b!7718001))

(assert (not b!7717958))

(assert (not b!7717748))

(assert (not bm!713315))

(assert (not d!2337283))

(assert (not b!7717780))

(assert (not d!2337255))

(assert (not d!2337263))

(assert (not b!7717742))

(assert (not b!7717997))

(assert (not b!7717817))

(assert (not d!2337269))

(assert (not b!7717712))

(assert (not bm!713317))

(assert (not b!7717957))

(assert (not b!7717990))

(assert (not b!7717790))

(assert (not d!2337277))

(assert (not b!7717837))

(assert (not b!7717703))

(assert (not b!7717989))

(assert (not b!7717856))

(assert (not d!2337311))

(assert (not b!7717924))

(assert tp_is_empty!51431)

(assert (not b!7717939))

(assert (not bm!713314))

(assert (not b!7717746))

(assert (not b!7717781))

(assert (not b!7717998))

(assert (not d!2337271))

(assert (not d!2337295))

(assert (not b!7717854))

(assert (not b!7717974))

(assert (not d!2337291))

(assert (not b!7718006))

(assert (not b!7717988))

(assert (not bm!713304))

(assert (not d!2337289))

(assert (not b!7717861))

(assert (not b!7717788))

(assert (not b!7718009))

(assert (not b!7717795))

(assert (not bm!713294))

(assert (not b!7717952))

(assert (not bm!713308))

(assert (not d!2337267))

(assert (not d!2337297))

(assert (not b!7717842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

