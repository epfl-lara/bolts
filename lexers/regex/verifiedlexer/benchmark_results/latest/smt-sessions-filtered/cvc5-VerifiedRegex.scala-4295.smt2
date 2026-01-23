; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230338 () Bool)

(assert start!230338)

(declare-fun b!2331141 () Bool)

(declare-fun res!995118 () Bool)

(declare-fun e!1493472 () Bool)

(assert (=> b!2331141 (=> (not res!995118) (not e!1493472))))

(declare-datatypes ((C!13814 0))(
  ( (C!13815 (val!8067 Int)) )
))
(declare-datatypes ((Regex!6828 0))(
  ( (ElementMatch!6828 (c!370356 C!13814)) (Concat!11450 (regOne!14168 Regex!6828) (regTwo!14168 Regex!6828)) (EmptyExpr!6828) (Star!6828 (reg!7157 Regex!6828)) (EmptyLang!6828) (Union!6828 (regOne!14169 Regex!6828) (regTwo!14169 Regex!6828)) )
))
(declare-fun r!26197 () Regex!6828)

(declare-fun nullable!1907 (Regex!6828) Bool)

(assert (=> b!2331141 (= res!995118 (nullable!1907 (regOne!14168 r!26197)))))

(declare-fun b!2331142 () Bool)

(declare-fun e!1493471 () Bool)

(declare-fun tp_is_empty!10967 () Bool)

(assert (=> b!2331142 (= e!1493471 tp_is_empty!10967)))

(declare-fun b!2331143 () Bool)

(declare-fun res!995117 () Bool)

(assert (=> b!2331143 (=> (not res!995117) (not e!1493472))))

(assert (=> b!2331143 (= res!995117 (and (not (is-EmptyExpr!6828 r!26197)) (not (is-EmptyLang!6828 r!26197)) (not (is-ElementMatch!6828 r!26197)) (not (is-Union!6828 r!26197)) (not (is-Star!6828 r!26197))))))

(declare-fun b!2331144 () Bool)

(assert (=> b!2331144 (= e!1493472 false)))

(declare-fun b!2331145 () Bool)

(declare-fun tp!738725 () Bool)

(declare-fun tp!738722 () Bool)

(assert (=> b!2331145 (= e!1493471 (and tp!738725 tp!738722))))

(declare-fun b!2331146 () Bool)

(declare-fun res!995119 () Bool)

(assert (=> b!2331146 (=> (not res!995119) (not e!1493472))))

(declare-fun c!13498 () C!13814)

(declare-fun derivativeStep!1567 (Regex!6828 C!13814) Regex!6828)

(assert (=> b!2331146 (= res!995119 (nullable!1907 (derivativeStep!1567 r!26197 c!13498)))))

(declare-fun b!2331147 () Bool)

(declare-fun tp!738726 () Bool)

(assert (=> b!2331147 (= e!1493471 tp!738726)))

(declare-fun b!2331148 () Bool)

(declare-fun tp!738724 () Bool)

(declare-fun tp!738723 () Bool)

(assert (=> b!2331148 (= e!1493471 (and tp!738724 tp!738723))))

(declare-fun b!2331150 () Bool)

(declare-fun res!995116 () Bool)

(assert (=> b!2331150 (=> (not res!995116) (not e!1493472))))

(assert (=> b!2331150 (= res!995116 (nullable!1907 (Concat!11450 (derivativeStep!1567 (regOne!14168 r!26197) c!13498) (regTwo!14168 r!26197))))))

(declare-fun b!2331149 () Bool)

(declare-fun res!995114 () Bool)

(assert (=> b!2331149 (=> (not res!995114) (not e!1493472))))

(assert (=> b!2331149 (= res!995114 (not (nullable!1907 r!26197)))))

(declare-fun res!995115 () Bool)

(assert (=> start!230338 (=> (not res!995115) (not e!1493472))))

(declare-fun validRegex!2573 (Regex!6828) Bool)

(assert (=> start!230338 (= res!995115 (validRegex!2573 r!26197))))

(assert (=> start!230338 e!1493472))

(assert (=> start!230338 e!1493471))

(assert (=> start!230338 tp_is_empty!10967))

(assert (= (and start!230338 res!995115) b!2331149))

(assert (= (and b!2331149 res!995114) b!2331146))

(assert (= (and b!2331146 res!995119) b!2331143))

(assert (= (and b!2331143 res!995117) b!2331141))

(assert (= (and b!2331141 res!995118) b!2331150))

(assert (= (and b!2331150 res!995116) b!2331144))

(assert (= (and start!230338 (is-ElementMatch!6828 r!26197)) b!2331142))

(assert (= (and start!230338 (is-Concat!11450 r!26197)) b!2331148))

(assert (= (and start!230338 (is-Star!6828 r!26197)) b!2331147))

(assert (= (and start!230338 (is-Union!6828 r!26197)) b!2331145))

(declare-fun m!2760851 () Bool)

(assert (=> b!2331150 m!2760851))

(declare-fun m!2760853 () Bool)

(assert (=> b!2331150 m!2760853))

(declare-fun m!2760855 () Bool)

(assert (=> b!2331146 m!2760855))

(assert (=> b!2331146 m!2760855))

(declare-fun m!2760857 () Bool)

(assert (=> b!2331146 m!2760857))

(declare-fun m!2760859 () Bool)

(assert (=> b!2331149 m!2760859))

(declare-fun m!2760861 () Bool)

(assert (=> start!230338 m!2760861))

(declare-fun m!2760863 () Bool)

(assert (=> b!2331141 m!2760863))

(push 1)

(assert (not b!2331149))

(assert (not start!230338))

(assert (not b!2331141))

(assert (not b!2331145))

(assert (not b!2331150))

(assert tp_is_empty!10967)

(assert (not b!2331148))

(assert (not b!2331147))

(assert (not b!2331146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

