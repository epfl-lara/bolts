; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743884 () Bool)

(assert start!743884)

(declare-fun b!7868223 () Bool)

(declare-fun e!4648536 () Bool)

(declare-fun tp_is_empty!52683 () Bool)

(declare-fun tp!2334296 () Bool)

(assert (=> b!7868223 (= e!4648536 (and tp_is_empty!52683 tp!2334296))))

(declare-fun b!7868224 () Bool)

(declare-fun e!4648537 () Bool)

(assert (=> b!7868224 (= e!4648537 tp_is_empty!52683)))

(declare-fun b!7868225 () Bool)

(declare-fun e!4648538 () Bool)

(assert (=> b!7868225 (= e!4648538 false)))

(declare-fun lt!2680710 () Bool)

(declare-datatypes ((C!42610 0))(
  ( (C!42611 (val!31767 Int)) )
))
(declare-datatypes ((Regex!21142 0))(
  ( (ElementMatch!21142 (c!1445506 C!42610)) (Concat!29987 (regOne!42796 Regex!21142) (regTwo!42796 Regex!21142)) (EmptyExpr!21142) (Star!21142 (reg!21471 Regex!21142)) (EmptyLang!21142) (Union!21142 (regOne!42797 Regex!21142) (regTwo!42797 Regex!21142)) )
))
(declare-fun r!24826 () Regex!21142)

(declare-datatypes ((List!74001 0))(
  ( (Nil!73877) (Cons!73877 (h!80325 C!42610) (t!388736 List!74001)) )
))
(declare-fun s!14217 () List!74001)

(declare-fun matchR!10578 (Regex!21142 List!74001) Bool)

(assert (=> b!7868225 (= lt!2680710 (matchR!10578 r!24826 s!14217))))

(declare-fun b!7868226 () Bool)

(declare-fun tp!2334291 () Bool)

(declare-fun tp!2334293 () Bool)

(assert (=> b!7868226 (= e!4648537 (and tp!2334291 tp!2334293))))

(declare-fun res!3126665 () Bool)

(assert (=> start!743884 (=> (not res!3126665) (not e!4648538))))

(declare-fun validRegex!11552 (Regex!21142) Bool)

(assert (=> start!743884 (= res!3126665 (validRegex!11552 r!24826))))

(assert (=> start!743884 e!4648538))

(assert (=> start!743884 e!4648537))

(assert (=> start!743884 e!4648536))

(declare-fun b!7868227 () Bool)

(declare-fun tp!2334292 () Bool)

(declare-fun tp!2334294 () Bool)

(assert (=> b!7868227 (= e!4648537 (and tp!2334292 tp!2334294))))

(declare-fun b!7868228 () Bool)

(declare-fun tp!2334295 () Bool)

(assert (=> b!7868228 (= e!4648537 tp!2334295)))

(assert (= (and start!743884 res!3126665) b!7868225))

(assert (= (and start!743884 (is-ElementMatch!21142 r!24826)) b!7868224))

(assert (= (and start!743884 (is-Concat!29987 r!24826)) b!7868227))

(assert (= (and start!743884 (is-Star!21142 r!24826)) b!7868228))

(assert (= (and start!743884 (is-Union!21142 r!24826)) b!7868226))

(assert (= (and start!743884 (is-Cons!73877 s!14217)) b!7868223))

(declare-fun m!8264368 () Bool)

(assert (=> b!7868225 m!8264368))

(declare-fun m!8264370 () Bool)

(assert (=> start!743884 m!8264370))

(push 1)

(assert (not b!7868226))

(assert (not b!7868223))

(assert (not b!7868227))

(assert (not start!743884))

(assert (not b!7868225))

(assert (not b!7868228))

(assert tp_is_empty!52683)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

