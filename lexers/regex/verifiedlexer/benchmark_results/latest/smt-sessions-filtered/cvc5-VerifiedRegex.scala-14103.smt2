; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742508 () Bool)

(assert start!742508)

(declare-fun b!7838678 () Bool)

(declare-fun e!4634932 () Bool)

(declare-fun tp!2319355 () Bool)

(declare-fun tp!2319356 () Bool)

(assert (=> b!7838678 (= e!4634932 (and tp!2319355 tp!2319356))))

(declare-fun b!7838679 () Bool)

(declare-fun e!4634930 () Bool)

(declare-fun tp_is_empty!52355 () Bool)

(declare-fun tp!2319364 () Bool)

(assert (=> b!7838679 (= e!4634930 (and tp_is_empty!52355 tp!2319364))))

(declare-fun b!7838680 () Bool)

(declare-fun e!4634933 () Bool)

(declare-fun tp!2319357 () Bool)

(assert (=> b!7838680 (= e!4634933 tp!2319357)))

(declare-fun b!7838681 () Bool)

(declare-fun res!3117689 () Bool)

(declare-fun e!4634929 () Bool)

(assert (=> b!7838681 (=> (not res!3117689) (not e!4634929))))

(declare-datatypes ((C!42326 0))(
  ( (C!42327 (val!31603 Int)) )
))
(declare-datatypes ((Regex!21000 0))(
  ( (ElementMatch!21000 (c!1441381 C!42326)) (Concat!29845 (regOne!42512 Regex!21000) (regTwo!42512 Regex!21000)) (EmptyExpr!21000) (Star!21000 (reg!21329 Regex!21000)) (EmptyLang!21000) (Union!21000 (regOne!42513 Regex!21000) (regTwo!42513 Regex!21000)) )
))
(declare-fun r2!3226 () Regex!21000)

(declare-fun validRegex!11414 (Regex!21000) Bool)

(assert (=> b!7838681 (= res!3117689 (validRegex!11414 r2!3226))))

(declare-fun b!7838682 () Bool)

(declare-fun e!4634931 () Bool)

(declare-fun tp!2319361 () Bool)

(assert (=> b!7838682 (= e!4634931 (and tp_is_empty!52355 tp!2319361))))

(declare-fun b!7838683 () Bool)

(declare-fun tp!2319359 () Bool)

(declare-fun tp!2319353 () Bool)

(assert (=> b!7838683 (= e!4634932 (and tp!2319359 tp!2319353))))

(declare-fun b!7838684 () Bool)

(assert (=> b!7838684 (= e!4634929 false)))

(declare-fun lt!2678259 () Bool)

(declare-fun e!4634934 () Bool)

(assert (=> b!7838684 (= lt!2678259 e!4634934)))

(declare-fun res!3117692 () Bool)

(assert (=> b!7838684 (=> res!3117692 e!4634934)))

(declare-fun r1!3326 () Regex!21000)

(declare-datatypes ((List!73837 0))(
  ( (Nil!73713) (Cons!73713 (h!80161 C!42326) (t!388572 List!73837)) )
))
(declare-fun s1!2717 () List!73837)

(declare-fun matchR!10456 (Regex!21000 List!73837) Bool)

(assert (=> b!7838684 (= res!3117692 (not (matchR!10456 r1!3326 s1!2717)))))

(declare-fun b!7838685 () Bool)

(declare-fun tp!2319362 () Bool)

(declare-fun tp!2319363 () Bool)

(assert (=> b!7838685 (= e!4634933 (and tp!2319362 tp!2319363))))

(declare-fun b!7838686 () Bool)

(assert (=> b!7838686 (= e!4634933 tp_is_empty!52355)))

(declare-fun res!3117691 () Bool)

(assert (=> start!742508 (=> (not res!3117691) (not e!4634929))))

(assert (=> start!742508 (= res!3117691 (validRegex!11414 r1!3326))))

(assert (=> start!742508 e!4634929))

(assert (=> start!742508 e!4634931))

(assert (=> start!742508 e!4634933))

(declare-fun e!4634928 () Bool)

(assert (=> start!742508 e!4634928))

(assert (=> start!742508 e!4634932))

(assert (=> start!742508 e!4634930))

(declare-fun b!7838687 () Bool)

(declare-fun s2!2463 () List!73837)

(assert (=> b!7838687 (= e!4634934 (not (matchR!10456 r2!3226 s2!2463)))))

(declare-fun b!7838688 () Bool)

(declare-fun tp!2319358 () Bool)

(assert (=> b!7838688 (= e!4634932 tp!2319358)))

(declare-fun b!7838689 () Bool)

(assert (=> b!7838689 (= e!4634932 tp_is_empty!52355)))

(declare-fun b!7838690 () Bool)

(declare-fun tp!2319354 () Bool)

(assert (=> b!7838690 (= e!4634928 (and tp_is_empty!52355 tp!2319354))))

(declare-fun b!7838691 () Bool)

(declare-fun res!3117690 () Bool)

(assert (=> b!7838691 (=> (not res!3117690) (not e!4634929))))

(declare-fun s!10212 () List!73837)

(declare-fun ++!18034 (List!73837 List!73837) List!73837)

(assert (=> b!7838691 (= res!3117690 (= (++!18034 s1!2717 s2!2463) s!10212))))

(declare-fun b!7838692 () Bool)

(declare-fun tp!2319352 () Bool)

(declare-fun tp!2319360 () Bool)

(assert (=> b!7838692 (= e!4634933 (and tp!2319352 tp!2319360))))

(assert (= (and start!742508 res!3117691) b!7838681))

(assert (= (and b!7838681 res!3117689) b!7838691))

(assert (= (and b!7838691 res!3117690) b!7838684))

(assert (= (and b!7838684 (not res!3117692)) b!7838687))

(assert (= (and start!742508 (is-Cons!73713 s1!2717)) b!7838682))

(assert (= (and start!742508 (is-ElementMatch!21000 r1!3326)) b!7838686))

(assert (= (and start!742508 (is-Concat!29845 r1!3326)) b!7838692))

(assert (= (and start!742508 (is-Star!21000 r1!3326)) b!7838680))

(assert (= (and start!742508 (is-Union!21000 r1!3326)) b!7838685))

(assert (= (and start!742508 (is-Cons!73713 s!10212)) b!7838690))

(assert (= (and start!742508 (is-ElementMatch!21000 r2!3226)) b!7838689))

(assert (= (and start!742508 (is-Concat!29845 r2!3226)) b!7838683))

(assert (= (and start!742508 (is-Star!21000 r2!3226)) b!7838688))

(assert (= (and start!742508 (is-Union!21000 r2!3226)) b!7838678))

(assert (= (and start!742508 (is-Cons!73713 s2!2463)) b!7838679))

(declare-fun m!8252706 () Bool)

(assert (=> b!7838681 m!8252706))

(declare-fun m!8252708 () Bool)

(assert (=> b!7838691 m!8252708))

(declare-fun m!8252710 () Bool)

(assert (=> start!742508 m!8252710))

(declare-fun m!8252712 () Bool)

(assert (=> b!7838687 m!8252712))

(declare-fun m!8252714 () Bool)

(assert (=> b!7838684 m!8252714))

(push 1)

(assert (not b!7838679))

(assert (not b!7838683))

(assert (not b!7838688))

(assert (not b!7838684))

(assert tp_is_empty!52355)

(assert (not b!7838678))

(assert (not b!7838691))

(assert (not b!7838690))

(assert (not b!7838681))

(assert (not b!7838682))

(assert (not b!7838685))

(assert (not b!7838687))

(assert (not b!7838692))

(assert (not b!7838680))

(assert (not start!742508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

