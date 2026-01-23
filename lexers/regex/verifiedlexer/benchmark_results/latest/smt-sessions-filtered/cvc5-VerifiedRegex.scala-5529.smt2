; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278456 () Bool)

(assert start!278456)

(declare-fun b!2861706 () Bool)

(assert (=> b!2861706 true))

(assert (=> b!2861706 true))

(declare-fun b!2861701 () Bool)

(declare-fun res!1188206 () Bool)

(declare-fun e!1811636 () Bool)

(assert (=> b!2861701 (=> (not res!1188206) (not e!1811636))))

(declare-datatypes ((C!17406 0))(
  ( (C!17407 (val!10737 Int)) )
))
(declare-datatypes ((Regex!8612 0))(
  ( (ElementMatch!8612 (c!461265 C!17406)) (Concat!13933 (regOne!17736 Regex!8612) (regTwo!17736 Regex!8612)) (EmptyExpr!8612) (Star!8612 (reg!8941 Regex!8612)) (EmptyLang!8612) (Union!8612 (regOne!17737 Regex!8612) (regTwo!17737 Regex!8612)) )
))
(declare-fun r!23423 () Regex!8612)

(declare-datatypes ((List!34209 0))(
  ( (Nil!34085) (Cons!34085 (h!39505 C!17406) (t!233244 List!34209)) )
))
(declare-fun prefix!1470 () List!34209)

(declare-fun prefixMatch!920 (Regex!8612 List!34209) Bool)

(assert (=> b!2861701 (= res!1188206 (prefixMatch!920 r!23423 prefix!1470))))

(declare-fun b!2861702 () Bool)

(declare-fun e!1811637 () Bool)

(declare-fun tp_is_empty!14961 () Bool)

(declare-fun tp!921370 () Bool)

(assert (=> b!2861702 (= e!1811637 (and tp_is_empty!14961 tp!921370))))

(declare-fun res!1188207 () Bool)

(assert (=> start!278456 (=> (not res!1188207) (not e!1811636))))

(declare-fun validRegex!3482 (Regex!8612) Bool)

(assert (=> start!278456 (= res!1188207 (validRegex!3482 r!23423))))

(assert (=> start!278456 e!1811636))

(declare-fun e!1811635 () Bool)

(assert (=> start!278456 e!1811635))

(assert (=> start!278456 e!1811637))

(declare-fun b!2861703 () Bool)

(declare-fun tp!921369 () Bool)

(assert (=> b!2861703 (= e!1811635 tp!921369)))

(declare-fun b!2861704 () Bool)

(declare-fun res!1188205 () Bool)

(assert (=> b!2861704 (=> (not res!1188205) (not e!1811636))))

(assert (=> b!2861704 (= res!1188205 (not (is-Nil!34085 prefix!1470)))))

(declare-fun b!2861705 () Bool)

(declare-fun tp!921371 () Bool)

(declare-fun tp!921372 () Bool)

(assert (=> b!2861705 (= e!1811635 (and tp!921371 tp!921372))))

(declare-fun lambda!105186 () Int)

(declare-fun Exists!1308 (Int) Bool)

(assert (=> b!2861706 (= e!1811636 (not (Exists!1308 lambda!105186)))))

(assert (=> b!2861706 (Exists!1308 lambda!105186)))

(declare-datatypes ((Unit!47751 0))(
  ( (Unit!47752) )
))
(declare-fun lt!1014538 () Unit!47751)

(declare-fun lt!1014539 () Regex!8612)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!354 (Regex!8612 List!34209) Unit!47751)

(assert (=> b!2861706 (= lt!1014538 (lemmaPrefixMatchThenExistsStringThatMatches!354 lt!1014539 (t!233244 prefix!1470)))))

(declare-fun derivativeStep!2301 (Regex!8612 C!17406) Regex!8612)

(assert (=> b!2861706 (= lt!1014539 (derivativeStep!2301 r!23423 (h!39505 prefix!1470)))))

(declare-fun b!2861707 () Bool)

(declare-fun tp!921374 () Bool)

(declare-fun tp!921373 () Bool)

(assert (=> b!2861707 (= e!1811635 (and tp!921374 tp!921373))))

(declare-fun b!2861708 () Bool)

(assert (=> b!2861708 (= e!1811635 tp_is_empty!14961)))

(assert (= (and start!278456 res!1188207) b!2861701))

(assert (= (and b!2861701 res!1188206) b!2861704))

(assert (= (and b!2861704 res!1188205) b!2861706))

(assert (= (and start!278456 (is-ElementMatch!8612 r!23423)) b!2861708))

(assert (= (and start!278456 (is-Concat!13933 r!23423)) b!2861707))

(assert (= (and start!278456 (is-Star!8612 r!23423)) b!2861703))

(assert (= (and start!278456 (is-Union!8612 r!23423)) b!2861705))

(assert (= (and start!278456 (is-Cons!34085 prefix!1470)) b!2861702))

(declare-fun m!3281293 () Bool)

(assert (=> b!2861701 m!3281293))

(declare-fun m!3281295 () Bool)

(assert (=> start!278456 m!3281295))

(declare-fun m!3281297 () Bool)

(assert (=> b!2861706 m!3281297))

(assert (=> b!2861706 m!3281297))

(declare-fun m!3281299 () Bool)

(assert (=> b!2861706 m!3281299))

(declare-fun m!3281301 () Bool)

(assert (=> b!2861706 m!3281301))

(push 1)

(assert (not b!2861705))

(assert (not b!2861706))

(assert (not b!2861701))

(assert (not b!2861707))

(assert tp_is_empty!14961)

(assert (not b!2861703))

(assert (not b!2861702))

(assert (not start!278456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

