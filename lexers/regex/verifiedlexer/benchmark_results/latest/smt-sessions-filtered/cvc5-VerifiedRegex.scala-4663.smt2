; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243162 () Bool)

(assert start!243162)

(declare-fun b!2487979 () Bool)

(declare-fun e!1579829 () Bool)

(declare-fun tp!796394 () Bool)

(declare-fun tp!796395 () Bool)

(assert (=> b!2487979 (= e!1579829 (and tp!796394 tp!796395))))

(declare-fun b!2487980 () Bool)

(declare-fun res!1053189 () Bool)

(declare-fun e!1579831 () Bool)

(assert (=> b!2487980 (=> (not res!1053189) (not e!1579831))))

(declare-datatypes ((C!14758 0))(
  ( (C!14759 (val!9031 Int)) )
))
(declare-datatypes ((List!29367 0))(
  ( (Nil!29267) (Cons!29267 (h!34687 C!14758) (t!211066 List!29367)) )
))
(declare-fun s!14955 () List!29367)

(declare-fun c!13476 () C!14758)

(declare-fun contains!5276 (List!29367 C!14758) Bool)

(assert (=> b!2487980 (= res!1053189 (contains!5276 s!14955 c!13476))))

(declare-fun b!2487981 () Bool)

(declare-fun tp!796393 () Bool)

(declare-fun tp!796392 () Bool)

(assert (=> b!2487981 (= e!1579829 (and tp!796393 tp!796392))))

(declare-fun b!2487982 () Bool)

(declare-fun e!1579830 () Bool)

(declare-fun tp_is_empty!12455 () Bool)

(declare-fun tp!796396 () Bool)

(assert (=> b!2487982 (= e!1579830 (and tp_is_empty!12455 tp!796396))))

(declare-fun res!1053191 () Bool)

(assert (=> start!243162 (=> (not res!1053191) (not e!1579831))))

(declare-datatypes ((Regex!7300 0))(
  ( (ElementMatch!7300 (c!395394 C!14758)) (Concat!11996 (regOne!15112 Regex!7300) (regTwo!15112 Regex!7300)) (EmptyExpr!7300) (Star!7300 (reg!7629 Regex!7300)) (EmptyLang!7300) (Union!7300 (regOne!15113 Regex!7300) (regTwo!15113 Regex!7300)) )
))
(declare-fun r!26136 () Regex!7300)

(declare-fun validRegex!2926 (Regex!7300) Bool)

(assert (=> start!243162 (= res!1053191 (validRegex!2926 r!26136))))

(assert (=> start!243162 e!1579831))

(assert (=> start!243162 e!1579829))

(assert (=> start!243162 e!1579830))

(assert (=> start!243162 tp_is_empty!12455))

(declare-fun b!2487983 () Bool)

(assert (=> b!2487983 (= e!1579829 tp_is_empty!12455)))

(declare-fun b!2487984 () Bool)

(declare-fun res!1053190 () Bool)

(assert (=> b!2487984 (=> (not res!1053190) (not e!1579831))))

(declare-fun head!5656 (List!29367) C!14758)

(assert (=> b!2487984 (= res!1053190 (= (head!5656 s!14955) c!13476))))

(declare-fun b!2487985 () Bool)

(declare-fun tp!796391 () Bool)

(assert (=> b!2487985 (= e!1579829 tp!796391)))

(declare-fun b!2487986 () Bool)

(assert (=> b!2487986 (= e!1579831 false)))

(declare-fun lt!893691 () Bool)

(declare-fun firstChars!67 (Regex!7300) List!29367)

(assert (=> b!2487986 (= lt!893691 (contains!5276 (firstChars!67 r!26136) c!13476))))

(assert (= (and start!243162 res!1053191) b!2487980))

(assert (= (and b!2487980 res!1053189) b!2487984))

(assert (= (and b!2487984 res!1053190) b!2487986))

(assert (= (and start!243162 (is-ElementMatch!7300 r!26136)) b!2487983))

(assert (= (and start!243162 (is-Concat!11996 r!26136)) b!2487981))

(assert (= (and start!243162 (is-Star!7300 r!26136)) b!2487985))

(assert (= (and start!243162 (is-Union!7300 r!26136)) b!2487979))

(assert (= (and start!243162 (is-Cons!29267 s!14955)) b!2487982))

(declare-fun m!2856681 () Bool)

(assert (=> b!2487980 m!2856681))

(declare-fun m!2856683 () Bool)

(assert (=> start!243162 m!2856683))

(declare-fun m!2856685 () Bool)

(assert (=> b!2487984 m!2856685))

(declare-fun m!2856687 () Bool)

(assert (=> b!2487986 m!2856687))

(assert (=> b!2487986 m!2856687))

(declare-fun m!2856689 () Bool)

(assert (=> b!2487986 m!2856689))

(push 1)

(assert (not b!2487981))

(assert (not b!2487982))

(assert (not b!2487984))

(assert tp_is_empty!12455)

(assert (not start!243162))

(assert (not b!2487980))

(assert (not b!2487985))

(assert (not b!2487986))

(assert (not b!2487979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

