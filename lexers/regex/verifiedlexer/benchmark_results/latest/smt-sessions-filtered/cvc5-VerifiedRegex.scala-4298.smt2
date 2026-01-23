; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230362 () Bool)

(assert start!230362)

(declare-fun b!2331539 () Bool)

(declare-fun res!995273 () Bool)

(declare-fun e!1493618 () Bool)

(assert (=> b!2331539 (=> (not res!995273) (not e!1493618))))

(declare-datatypes ((C!13826 0))(
  ( (C!13827 (val!8073 Int)) )
))
(declare-datatypes ((Regex!6834 0))(
  ( (ElementMatch!6834 (c!370418 C!13826)) (Concat!11456 (regOne!14180 Regex!6834) (regTwo!14180 Regex!6834)) (EmptyExpr!6834) (Star!6834 (reg!7163 Regex!6834)) (EmptyLang!6834) (Union!6834 (regOne!14181 Regex!6834) (regTwo!14181 Regex!6834)) )
))
(declare-fun r!26197 () Regex!6834)

(declare-fun validRegex!2579 (Regex!6834) Bool)

(assert (=> b!2331539 (= res!995273 (validRegex!2579 (regOne!14180 r!26197)))))

(declare-fun b!2331540 () Bool)

(declare-fun res!995272 () Bool)

(assert (=> b!2331540 (=> (not res!995272) (not e!1493618))))

(declare-fun nullable!1913 (Regex!6834) Bool)

(assert (=> b!2331540 (= res!995272 (not (nullable!1913 (regOne!14180 r!26197))))))

(declare-fun b!2331541 () Bool)

(declare-fun e!1493617 () Bool)

(declare-fun tp!738883 () Bool)

(assert (=> b!2331541 (= e!1493617 tp!738883)))

(declare-fun b!2331542 () Bool)

(declare-fun res!995271 () Bool)

(assert (=> b!2331542 (=> (not res!995271) (not e!1493618))))

(assert (=> b!2331542 (= res!995271 (not (nullable!1913 r!26197)))))

(declare-fun res!995269 () Bool)

(assert (=> start!230362 (=> (not res!995269) (not e!1493618))))

(assert (=> start!230362 (= res!995269 (validRegex!2579 r!26197))))

(assert (=> start!230362 e!1493618))

(assert (=> start!230362 e!1493617))

(declare-fun tp_is_empty!10979 () Bool)

(assert (=> start!230362 tp_is_empty!10979))

(declare-fun b!2331543 () Bool)

(assert (=> b!2331543 (= e!1493617 tp_is_empty!10979)))

(declare-fun b!2331544 () Bool)

(declare-fun res!995270 () Bool)

(assert (=> b!2331544 (=> (not res!995270) (not e!1493618))))

(assert (=> b!2331544 (= res!995270 (and (not (is-EmptyExpr!6834 r!26197)) (not (is-EmptyLang!6834 r!26197)) (not (is-ElementMatch!6834 r!26197)) (not (is-Union!6834 r!26197)) (not (is-Star!6834 r!26197))))))

(declare-fun b!2331545 () Bool)

(declare-fun res!995268 () Bool)

(assert (=> b!2331545 (=> (not res!995268) (not e!1493618))))

(declare-fun c!13498 () C!13826)

(declare-fun derivativeStep!1573 (Regex!6834 C!13826) Regex!6834)

(assert (=> b!2331545 (= res!995268 (nullable!1913 (derivativeStep!1573 r!26197 c!13498)))))

(declare-fun b!2331546 () Bool)

(declare-fun tp!738885 () Bool)

(declare-fun tp!738884 () Bool)

(assert (=> b!2331546 (= e!1493617 (and tp!738885 tp!738884))))

(declare-fun b!2331547 () Bool)

(declare-fun tp!738882 () Bool)

(declare-fun tp!738886 () Bool)

(assert (=> b!2331547 (= e!1493617 (and tp!738882 tp!738886))))

(declare-fun b!2331548 () Bool)

(assert (=> b!2331548 (= e!1493618 false)))

(declare-fun lt!862292 () Bool)

(assert (=> b!2331548 (= lt!862292 (nullable!1913 (derivativeStep!1573 (regOne!14180 r!26197) c!13498)))))

(assert (= (and start!230362 res!995269) b!2331542))

(assert (= (and b!2331542 res!995271) b!2331545))

(assert (= (and b!2331545 res!995268) b!2331544))

(assert (= (and b!2331544 res!995270) b!2331540))

(assert (= (and b!2331540 res!995272) b!2331539))

(assert (= (and b!2331539 res!995273) b!2331548))

(assert (= (and start!230362 (is-ElementMatch!6834 r!26197)) b!2331543))

(assert (= (and start!230362 (is-Concat!11456 r!26197)) b!2331547))

(assert (= (and start!230362 (is-Star!6834 r!26197)) b!2331541))

(assert (= (and start!230362 (is-Union!6834 r!26197)) b!2331546))

(declare-fun m!2761019 () Bool)

(assert (=> b!2331545 m!2761019))

(assert (=> b!2331545 m!2761019))

(declare-fun m!2761021 () Bool)

(assert (=> b!2331545 m!2761021))

(declare-fun m!2761023 () Bool)

(assert (=> b!2331539 m!2761023))

(declare-fun m!2761025 () Bool)

(assert (=> b!2331540 m!2761025))

(declare-fun m!2761027 () Bool)

(assert (=> b!2331542 m!2761027))

(declare-fun m!2761029 () Bool)

(assert (=> start!230362 m!2761029))

(declare-fun m!2761031 () Bool)

(assert (=> b!2331548 m!2761031))

(assert (=> b!2331548 m!2761031))

(declare-fun m!2761033 () Bool)

(assert (=> b!2331548 m!2761033))

(push 1)

(assert (not b!2331539))

(assert tp_is_empty!10979)

(assert (not b!2331542))

(assert (not b!2331540))

(assert (not start!230362))

(assert (not b!2331548))

(assert (not b!2331545))

(assert (not b!2331541))

(assert (not b!2331546))

(assert (not b!2331547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

