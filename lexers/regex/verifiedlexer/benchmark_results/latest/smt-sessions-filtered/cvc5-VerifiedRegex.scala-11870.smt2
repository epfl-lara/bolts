; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666864 () Bool)

(assert start!666864)

(declare-fun b!6946597 () Bool)

(assert (=> b!6946597 true))

(assert (=> b!6946597 true))

(declare-fun b!6946590 () Bool)

(declare-fun e!4178319 () Bool)

(declare-fun tp_is_empty!43197 () Bool)

(assert (=> b!6946590 (= e!4178319 tp_is_empty!43197)))

(declare-fun b!6946592 () Bool)

(declare-fun e!4178317 () Bool)

(declare-fun tp!1914831 () Bool)

(assert (=> b!6946592 (= e!4178317 (and tp_is_empty!43197 tp!1914831))))

(declare-fun b!6946593 () Bool)

(declare-fun res!2833849 () Bool)

(declare-fun e!4178318 () Bool)

(assert (=> b!6946593 (=> (not res!2833849) (not e!4178318))))

(declare-datatypes ((C!34242 0))(
  ( (C!34243 (val!26823 Int)) )
))
(declare-datatypes ((Regex!16986 0))(
  ( (ElementMatch!16986 (c!1288764 C!34242)) (Concat!25831 (regOne!34484 Regex!16986) (regTwo!34484 Regex!16986)) (EmptyExpr!16986) (Star!16986 (reg!17315 Regex!16986)) (EmptyLang!16986) (Union!16986 (regOne!34485 Regex!16986) (regTwo!34485 Regex!16986)) )
))
(declare-fun rInner!765 () Regex!16986)

(declare-fun nullable!6799 (Regex!16986) Bool)

(assert (=> b!6946593 (= res!2833849 (not (nullable!6799 rInner!765)))))

(declare-fun b!6946594 () Bool)

(declare-fun tp!1914829 () Bool)

(assert (=> b!6946594 (= e!4178319 tp!1914829)))

(declare-fun b!6946595 () Bool)

(declare-fun lambda!396083 () Int)

(declare-fun Exists!3982 (Int) Bool)

(assert (=> b!6946595 (= e!4178318 (not (Exists!3982 lambda!396083)))))

(declare-fun b!6946591 () Bool)

(declare-fun tp!1914830 () Bool)

(declare-fun tp!1914828 () Bool)

(assert (=> b!6946591 (= e!4178319 (and tp!1914830 tp!1914828))))

(declare-fun res!2833848 () Bool)

(assert (=> start!666864 (=> (not res!2833848) (not e!4178318))))

(declare-fun validRegex!8692 (Regex!16986) Bool)

(assert (=> start!666864 (= res!2833848 (validRegex!8692 rInner!765))))

(assert (=> start!666864 e!4178318))

(assert (=> start!666864 e!4178319))

(assert (=> start!666864 e!4178317))

(declare-fun b!6946596 () Bool)

(declare-fun tp!1914826 () Bool)

(declare-fun tp!1914827 () Bool)

(assert (=> b!6946596 (= e!4178319 (and tp!1914826 tp!1914827))))

(declare-fun res!2833847 () Bool)

(assert (=> b!6946597 (=> (not res!2833847) (not e!4178318))))

(assert (=> b!6946597 (= res!2833847 (Exists!3982 lambda!396083))))

(assert (= (and start!666864 res!2833848) b!6946593))

(assert (= (and b!6946593 res!2833849) b!6946597))

(assert (= (and b!6946597 res!2833847) b!6946595))

(assert (= (and start!666864 (is-ElementMatch!16986 rInner!765)) b!6946590))

(assert (= (and start!666864 (is-Concat!25831 rInner!765)) b!6946591))

(assert (= (and start!666864 (is-Star!16986 rInner!765)) b!6946594))

(assert (= (and start!666864 (is-Union!16986 rInner!765)) b!6946596))

(declare-datatypes ((List!66739 0))(
  ( (Nil!66615) (Cons!66615 (h!73063 C!34242) (t!380482 List!66739)) )
))
(declare-fun s!10388 () List!66739)

(assert (= (and start!666864 (is-Cons!66615 s!10388)) b!6946592))

(declare-fun m!7650524 () Bool)

(assert (=> b!6946593 m!7650524))

(declare-fun m!7650526 () Bool)

(assert (=> b!6946595 m!7650526))

(declare-fun m!7650528 () Bool)

(assert (=> start!666864 m!7650528))

(assert (=> b!6946597 m!7650526))

(push 1)

(assert (not b!6946596))

(assert (not b!6946597))

(assert (not b!6946592))

(assert (not b!6946591))

(assert tp_is_empty!43197)

(assert (not b!6946593))

(assert (not start!666864))

(assert (not b!6946595))

(assert (not b!6946594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

