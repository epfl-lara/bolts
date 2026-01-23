; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743968 () Bool)

(assert start!743968)

(declare-fun b!7869273 () Bool)

(declare-fun e!4649046 () Bool)

(declare-fun tp!2334674 () Bool)

(declare-fun tp!2334681 () Bool)

(assert (=> b!7869273 (= e!4649046 (and tp!2334674 tp!2334681))))

(declare-fun b!7869274 () Bool)

(declare-fun res!3126988 () Bool)

(declare-fun e!4649049 () Bool)

(assert (=> b!7869274 (=> (not res!3126988) (not e!4649049))))

(declare-datatypes ((C!42626 0))(
  ( (C!42627 (val!31775 Int)) )
))
(declare-datatypes ((Regex!21150 0))(
  ( (ElementMatch!21150 (c!1445710 C!42626)) (Concat!29995 (regOne!42812 Regex!21150) (regTwo!42812 Regex!21150)) (EmptyExpr!21150) (Star!21150 (reg!21479 Regex!21150)) (EmptyLang!21150) (Union!21150 (regOne!42813 Regex!21150) (regTwo!42813 Regex!21150)) )
))
(declare-fun r1!6200 () Regex!21150)

(declare-datatypes ((List!74009 0))(
  ( (Nil!73885) (Cons!73885 (h!80333 C!42626) (t!388744 List!74009)) )
))
(declare-fun s!14219 () List!74009)

(declare-fun matchR!10586 (Regex!21150 List!74009) Bool)

(assert (=> b!7869274 (= res!3126988 (matchR!10586 r1!6200 s!14219))))

(declare-fun b!7869275 () Bool)

(declare-fun tp_is_empty!52699 () Bool)

(assert (=> b!7869275 (= e!4649046 tp_is_empty!52699)))

(declare-fun b!7869276 () Bool)

(declare-fun res!3126987 () Bool)

(assert (=> b!7869276 (=> (not res!3126987) (not e!4649049))))

(assert (=> b!7869276 (= res!3126987 (is-Cons!73885 s!14219))))

(declare-fun b!7869277 () Bool)

(declare-fun e!4649048 () Bool)

(assert (=> b!7869277 (= e!4649048 tp_is_empty!52699)))

(declare-fun b!7869278 () Bool)

(declare-fun tp!2334675 () Bool)

(assert (=> b!7869278 (= e!4649048 tp!2334675)))

(declare-fun b!7869279 () Bool)

(declare-fun tp!2334673 () Bool)

(declare-fun tp!2334680 () Bool)

(assert (=> b!7869279 (= e!4649048 (and tp!2334673 tp!2334680))))

(declare-fun b!7869280 () Bool)

(declare-fun e!4649047 () Bool)

(declare-fun tp!2334679 () Bool)

(assert (=> b!7869280 (= e!4649047 (and tp_is_empty!52699 tp!2334679))))

(declare-fun b!7869281 () Bool)

(declare-fun tp!2334677 () Bool)

(assert (=> b!7869281 (= e!4649046 tp!2334677)))

(declare-fun b!7869282 () Bool)

(assert (=> b!7869282 (= e!4649049 false)))

(declare-fun lt!2680760 () Regex!21150)

(declare-fun derivativeStep!6381 (Regex!21150 C!42626) Regex!21150)

(assert (=> b!7869282 (= lt!2680760 (derivativeStep!6381 r1!6200 (h!80333 s!14219)))))

(declare-fun b!7869283 () Bool)

(declare-fun res!3126985 () Bool)

(assert (=> b!7869283 (=> (not res!3126985) (not e!4649049))))

(declare-fun r2!6138 () Regex!21150)

(declare-fun validRegex!11560 (Regex!21150) Bool)

(assert (=> b!7869283 (= res!3126985 (validRegex!11560 r2!6138))))

(declare-fun res!3126986 () Bool)

(assert (=> start!743968 (=> (not res!3126986) (not e!4649049))))

(assert (=> start!743968 (= res!3126986 (validRegex!11560 r1!6200))))

(assert (=> start!743968 e!4649049))

(assert (=> start!743968 e!4649046))

(assert (=> start!743968 e!4649048))

(assert (=> start!743968 e!4649047))

(declare-fun b!7869284 () Bool)

(declare-fun tp!2334682 () Bool)

(declare-fun tp!2334683 () Bool)

(assert (=> b!7869284 (= e!4649046 (and tp!2334682 tp!2334683))))

(declare-fun b!7869285 () Bool)

(declare-fun tp!2334678 () Bool)

(declare-fun tp!2334676 () Bool)

(assert (=> b!7869285 (= e!4649048 (and tp!2334678 tp!2334676))))

(assert (= (and start!743968 res!3126986) b!7869283))

(assert (= (and b!7869283 res!3126985) b!7869274))

(assert (= (and b!7869274 res!3126988) b!7869276))

(assert (= (and b!7869276 res!3126987) b!7869282))

(assert (= (and start!743968 (is-ElementMatch!21150 r1!6200)) b!7869275))

(assert (= (and start!743968 (is-Concat!29995 r1!6200)) b!7869284))

(assert (= (and start!743968 (is-Star!21150 r1!6200)) b!7869281))

(assert (= (and start!743968 (is-Union!21150 r1!6200)) b!7869273))

(assert (= (and start!743968 (is-ElementMatch!21150 r2!6138)) b!7869277))

(assert (= (and start!743968 (is-Concat!29995 r2!6138)) b!7869285))

(assert (= (and start!743968 (is-Star!21150 r2!6138)) b!7869278))

(assert (= (and start!743968 (is-Union!21150 r2!6138)) b!7869279))

(assert (= (and start!743968 (is-Cons!73885 s!14219)) b!7869280))

(declare-fun m!8264616 () Bool)

(assert (=> b!7869274 m!8264616))

(declare-fun m!8264618 () Bool)

(assert (=> b!7869282 m!8264618))

(declare-fun m!8264620 () Bool)

(assert (=> b!7869283 m!8264620))

(declare-fun m!8264622 () Bool)

(assert (=> start!743968 m!8264622))

(push 1)

(assert (not b!7869278))

(assert (not b!7869282))

(assert (not b!7869281))

(assert (not b!7869279))

(assert (not b!7869273))

(assert (not b!7869285))

(assert (not b!7869274))

(assert tp_is_empty!52699)

(assert (not b!7869283))

(assert (not b!7869280))

(assert (not start!743968))

(assert (not b!7869284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

