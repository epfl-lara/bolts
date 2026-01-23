; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732826 () Bool)

(assert start!732826)

(declare-fun b!7599260 () Bool)

(assert (=> b!7599260 true))

(assert (=> b!7599260 true))

(assert (=> b!7599260 true))

(declare-fun b!7599261 () Bool)

(declare-fun e!4521425 () Bool)

(assert (=> b!7599261 (= e!4521425 false)))

(declare-fun lt!2654039 () Bool)

(declare-datatypes ((C!40562 0))(
  ( (C!40563 (val!30721 Int)) )
))
(declare-datatypes ((Regex!20118 0))(
  ( (ElementMatch!20118 (c!1402207 C!40562)) (Concat!28963 (regOne!40748 Regex!20118) (regTwo!40748 Regex!20118)) (EmptyExpr!20118) (Star!20118 (reg!20447 Regex!20118)) (EmptyLang!20118) (Union!20118 (regOne!40749 Regex!20118) (regTwo!40749 Regex!20118)) )
))
(declare-fun r1!3349 () Regex!20118)

(declare-datatypes ((List!73001 0))(
  ( (Nil!72877) (Cons!72877 (h!79325 C!40562) (t!387736 List!73001)) )
))
(declare-datatypes ((tuple2!68958 0))(
  ( (tuple2!68959 (_1!37782 List!73001) (_2!37782 List!73001)) )
))
(declare-fun cut!32 () tuple2!68958)

(declare-fun matchR!9706 (Regex!20118 List!73001) Bool)

(assert (=> b!7599261 (= lt!2654039 (matchR!9706 r1!3349 (_1!37782 cut!32)))))

(declare-fun b!7599262 () Bool)

(declare-fun e!4521427 () Bool)

(declare-fun tp_is_empty!50591 () Bool)

(declare-fun tp!2214998 () Bool)

(assert (=> b!7599262 (= e!4521427 (and tp_is_empty!50591 tp!2214998))))

(declare-fun b!7599263 () Bool)

(declare-fun res!3042766 () Bool)

(assert (=> b!7599263 (=> (not res!3042766) (not e!4521425))))

(declare-fun s!10235 () List!73001)

(declare-fun ++!17526 (List!73001 List!73001) List!73001)

(assert (=> b!7599263 (= res!3042766 (= (++!17526 (_1!37782 cut!32) (_2!37782 cut!32)) s!10235))))

(declare-fun b!7599264 () Bool)

(declare-fun e!4521422 () Bool)

(declare-fun tp!2214993 () Bool)

(declare-fun tp!2214995 () Bool)

(assert (=> b!7599264 (= e!4521422 (and tp!2214993 tp!2214995))))

(declare-fun b!7599265 () Bool)

(declare-fun e!4521424 () Bool)

(declare-fun tp!2214997 () Bool)

(assert (=> b!7599265 (= e!4521424 (and tp_is_empty!50591 tp!2214997))))

(declare-fun b!7599266 () Bool)

(declare-fun tp!2215003 () Bool)

(declare-fun tp!2215002 () Bool)

(assert (=> b!7599266 (= e!4521422 (and tp!2215003 tp!2215002))))

(declare-fun b!7599267 () Bool)

(declare-fun tp!2214996 () Bool)

(assert (=> b!7599267 (= e!4521422 tp!2214996)))

(declare-fun b!7599268 () Bool)

(declare-fun e!4521423 () Bool)

(declare-fun tp!2214999 () Bool)

(assert (=> b!7599268 (= e!4521423 (and tp_is_empty!50591 tp!2214999))))

(declare-fun b!7599269 () Bool)

(declare-fun e!4521426 () Bool)

(assert (=> b!7599269 (= e!4521426 tp_is_empty!50591)))

(declare-fun b!7599270 () Bool)

(declare-fun tp!2215004 () Bool)

(declare-fun tp!2215000 () Bool)

(assert (=> b!7599270 (= e!4521426 (and tp!2215004 tp!2215000))))

(declare-fun b!7599271 () Bool)

(declare-fun tp!2214992 () Bool)

(declare-fun tp!2214994 () Bool)

(assert (=> b!7599271 (= e!4521426 (and tp!2214992 tp!2214994))))

(declare-fun b!7599272 () Bool)

(declare-fun res!3042763 () Bool)

(assert (=> b!7599272 (=> (not res!3042763) (not e!4521425))))

(declare-fun r2!3249 () Regex!20118)

(declare-fun validRegex!10546 (Regex!20118) Bool)

(assert (=> b!7599272 (= res!3042763 (validRegex!10546 r2!3249))))

(declare-fun res!3042764 () Bool)

(assert (=> start!732826 (=> (not res!3042764) (not e!4521425))))

(assert (=> start!732826 (= res!3042764 (validRegex!10546 r1!3349))))

(assert (=> start!732826 e!4521425))

(assert (=> start!732826 e!4521422))

(assert (=> start!732826 e!4521426))

(assert (=> start!732826 e!4521424))

(assert (=> start!732826 (and e!4521427 e!4521423)))

(declare-fun res!3042765 () Bool)

(assert (=> b!7599260 (=> (not res!3042765) (not e!4521425))))

(declare-fun lambda!467450 () Int)

(declare-fun Exists!4346 (Int) Bool)

(assert (=> b!7599260 (= res!3042765 (Exists!4346 lambda!467450))))

(declare-fun b!7599273 () Bool)

(assert (=> b!7599273 (= e!4521422 tp_is_empty!50591)))

(declare-fun b!7599274 () Bool)

(declare-fun tp!2215001 () Bool)

(assert (=> b!7599274 (= e!4521426 tp!2215001)))

(assert (= (and start!732826 res!3042764) b!7599272))

(assert (= (and b!7599272 res!3042763) b!7599260))

(assert (= (and b!7599260 res!3042765) b!7599263))

(assert (= (and b!7599263 res!3042766) b!7599261))

(assert (= (and start!732826 (is-ElementMatch!20118 r1!3349)) b!7599273))

(assert (= (and start!732826 (is-Concat!28963 r1!3349)) b!7599266))

(assert (= (and start!732826 (is-Star!20118 r1!3349)) b!7599267))

(assert (= (and start!732826 (is-Union!20118 r1!3349)) b!7599264))

(assert (= (and start!732826 (is-ElementMatch!20118 r2!3249)) b!7599269))

(assert (= (and start!732826 (is-Concat!28963 r2!3249)) b!7599270))

(assert (= (and start!732826 (is-Star!20118 r2!3249)) b!7599274))

(assert (= (and start!732826 (is-Union!20118 r2!3249)) b!7599271))

(assert (= (and start!732826 (is-Cons!72877 s!10235)) b!7599265))

(assert (= (and start!732826 (is-Cons!72877 (_1!37782 cut!32))) b!7599262))

(assert (= (and start!732826 (is-Cons!72877 (_2!37782 cut!32))) b!7599268))

(declare-fun m!8144578 () Bool)

(assert (=> b!7599260 m!8144578))

(declare-fun m!8144580 () Bool)

(assert (=> b!7599272 m!8144580))

(declare-fun m!8144582 () Bool)

(assert (=> start!732826 m!8144582))

(declare-fun m!8144584 () Bool)

(assert (=> b!7599261 m!8144584))

(declare-fun m!8144586 () Bool)

(assert (=> b!7599263 m!8144586))

(push 1)

(assert (not b!7599267))

(assert tp_is_empty!50591)

(assert (not b!7599263))

(assert (not b!7599261))

(assert (not start!732826))

(assert (not b!7599268))

(assert (not b!7599265))

(assert (not b!7599271))

(assert (not b!7599274))

(assert (not b!7599266))

(assert (not b!7599260))

(assert (not b!7599270))

(assert (not b!7599262))

(assert (not b!7599272))

(assert (not b!7599264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

