; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243166 () Bool)

(assert start!243166)

(declare-fun b!2488029 () Bool)

(declare-fun e!1579849 () Bool)

(declare-fun tp!796427 () Bool)

(declare-fun tp!796432 () Bool)

(assert (=> b!2488029 (= e!1579849 (and tp!796427 tp!796432))))

(declare-fun res!1053212 () Bool)

(declare-fun e!1579848 () Bool)

(assert (=> start!243166 (=> (not res!1053212) (not e!1579848))))

(declare-datatypes ((C!14762 0))(
  ( (C!14763 (val!9033 Int)) )
))
(declare-datatypes ((Regex!7302 0))(
  ( (ElementMatch!7302 (c!395396 C!14762)) (Concat!11998 (regOne!15116 Regex!7302) (regTwo!15116 Regex!7302)) (EmptyExpr!7302) (Star!7302 (reg!7631 Regex!7302)) (EmptyLang!7302) (Union!7302 (regOne!15117 Regex!7302) (regTwo!15117 Regex!7302)) )
))
(declare-fun r!26136 () Regex!7302)

(declare-fun validRegex!2928 (Regex!7302) Bool)

(assert (=> start!243166 (= res!1053212 (validRegex!2928 r!26136))))

(assert (=> start!243166 e!1579848))

(assert (=> start!243166 e!1579849))

(declare-fun e!1579847 () Bool)

(assert (=> start!243166 e!1579847))

(declare-fun tp_is_empty!12459 () Bool)

(assert (=> start!243166 tp_is_empty!12459))

(declare-fun b!2488030 () Bool)

(assert (=> b!2488030 (= e!1579849 tp_is_empty!12459)))

(declare-fun b!2488031 () Bool)

(declare-fun tp!796428 () Bool)

(assert (=> b!2488031 (= e!1579847 (and tp_is_empty!12459 tp!796428))))

(declare-fun b!2488032 () Bool)

(declare-fun res!1053209 () Bool)

(assert (=> b!2488032 (=> (not res!1053209) (not e!1579848))))

(declare-datatypes ((List!29369 0))(
  ( (Nil!29269) (Cons!29269 (h!34689 C!14762) (t!211068 List!29369)) )
))
(declare-fun s!14955 () List!29369)

(declare-fun c!13476 () C!14762)

(declare-fun contains!5278 (List!29369 C!14762) Bool)

(assert (=> b!2488032 (= res!1053209 (contains!5278 s!14955 c!13476))))

(declare-fun b!2488033 () Bool)

(declare-fun res!1053210 () Bool)

(assert (=> b!2488033 (=> (not res!1053210) (not e!1579848))))

(declare-fun firstChars!69 (Regex!7302) List!29369)

(assert (=> b!2488033 (= res!1053210 (not (contains!5278 (firstChars!69 r!26136) c!13476)))))

(declare-fun b!2488034 () Bool)

(assert (=> b!2488034 (= e!1579848 false)))

(declare-fun lt!893697 () Bool)

(declare-fun matchR!3353 (Regex!7302 List!29369) Bool)

(assert (=> b!2488034 (= lt!893697 (matchR!3353 r!26136 s!14955))))

(declare-fun b!2488035 () Bool)

(declare-fun res!1053211 () Bool)

(assert (=> b!2488035 (=> (not res!1053211) (not e!1579848))))

(declare-fun head!5658 (List!29369) C!14762)

(assert (=> b!2488035 (= res!1053211 (= (head!5658 s!14955) c!13476))))

(declare-fun b!2488036 () Bool)

(declare-fun tp!796430 () Bool)

(assert (=> b!2488036 (= e!1579849 tp!796430)))

(declare-fun b!2488037 () Bool)

(declare-fun tp!796429 () Bool)

(declare-fun tp!796431 () Bool)

(assert (=> b!2488037 (= e!1579849 (and tp!796429 tp!796431))))

(assert (= (and start!243166 res!1053212) b!2488032))

(assert (= (and b!2488032 res!1053209) b!2488035))

(assert (= (and b!2488035 res!1053211) b!2488033))

(assert (= (and b!2488033 res!1053210) b!2488034))

(assert (= (and start!243166 (is-ElementMatch!7302 r!26136)) b!2488030))

(assert (= (and start!243166 (is-Concat!11998 r!26136)) b!2488037))

(assert (= (and start!243166 (is-Star!7302 r!26136)) b!2488036))

(assert (= (and start!243166 (is-Union!7302 r!26136)) b!2488029))

(assert (= (and start!243166 (is-Cons!29269 s!14955)) b!2488031))

(declare-fun m!2856701 () Bool)

(assert (=> start!243166 m!2856701))

(declare-fun m!2856703 () Bool)

(assert (=> b!2488035 m!2856703))

(declare-fun m!2856705 () Bool)

(assert (=> b!2488034 m!2856705))

(declare-fun m!2856707 () Bool)

(assert (=> b!2488032 m!2856707))

(declare-fun m!2856709 () Bool)

(assert (=> b!2488033 m!2856709))

(assert (=> b!2488033 m!2856709))

(declare-fun m!2856711 () Bool)

(assert (=> b!2488033 m!2856711))

(push 1)

(assert (not b!2488034))

(assert (not b!2488033))

(assert tp_is_empty!12459)

(assert (not b!2488032))

(assert (not b!2488029))

(assert (not b!2488036))

(assert (not b!2488031))

(assert (not start!243166))

(assert (not b!2488035))

(assert (not b!2488037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

