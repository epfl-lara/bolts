; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230446 () Bool)

(assert start!230446)

(declare-fun res!995878 () Bool)

(declare-fun e!1494866 () Bool)

(assert (=> start!230446 (=> (not res!995878) (not e!1494866))))

(declare-datatypes ((C!13846 0))(
  ( (C!13847 (val!8083 Int)) )
))
(declare-datatypes ((Regex!6844 0))(
  ( (ElementMatch!6844 (c!370924 C!13846)) (Concat!11466 (regOne!14200 Regex!6844) (regTwo!14200 Regex!6844)) (EmptyExpr!6844) (Star!6844 (reg!7173 Regex!6844)) (EmptyLang!6844) (Union!6844 (regOne!14201 Regex!6844) (regTwo!14201 Regex!6844)) )
))
(declare-fun r!26197 () Regex!6844)

(declare-fun validRegex!2589 (Regex!6844) Bool)

(assert (=> start!230446 (= res!995878 (validRegex!2589 r!26197))))

(assert (=> start!230446 e!1494866))

(declare-fun e!1494865 () Bool)

(assert (=> start!230446 e!1494865))

(declare-fun tp_is_empty!10999 () Bool)

(assert (=> start!230446 tp_is_empty!10999))

(declare-fun b!2334101 () Bool)

(declare-fun tp!740062 () Bool)

(declare-fun tp!740066 () Bool)

(assert (=> b!2334101 (= e!1494865 (and tp!740062 tp!740066))))

(declare-fun b!2334102 () Bool)

(declare-fun tp!740065 () Bool)

(assert (=> b!2334102 (= e!1494865 tp!740065)))

(declare-fun b!2334103 () Bool)

(assert (=> b!2334103 (= e!1494865 tp_is_empty!10999)))

(declare-fun b!2334104 () Bool)

(declare-fun res!995879 () Bool)

(assert (=> b!2334104 (=> (not res!995879) (not e!1494866))))

(declare-fun nullable!1923 (Regex!6844) Bool)

(assert (=> b!2334104 (= res!995879 (not (nullable!1923 r!26197)))))

(declare-fun b!2334105 () Bool)

(assert (=> b!2334105 (= e!1494866 false)))

(declare-fun lt!862376 () Bool)

(declare-fun c!13498 () C!13846)

(declare-fun derivativeStep!1583 (Regex!6844 C!13846) Regex!6844)

(assert (=> b!2334105 (= lt!862376 (nullable!1923 (derivativeStep!1583 r!26197 c!13498)))))

(declare-fun b!2334106 () Bool)

(declare-fun tp!740064 () Bool)

(declare-fun tp!740063 () Bool)

(assert (=> b!2334106 (= e!1494865 (and tp!740064 tp!740063))))

(assert (= (and start!230446 res!995878) b!2334104))

(assert (= (and b!2334104 res!995879) b!2334105))

(assert (= (and start!230446 (is-ElementMatch!6844 r!26197)) b!2334103))

(assert (= (and start!230446 (is-Concat!11466 r!26197)) b!2334101))

(assert (= (and start!230446 (is-Star!6844 r!26197)) b!2334102))

(assert (= (and start!230446 (is-Union!6844 r!26197)) b!2334106))

(declare-fun m!2762043 () Bool)

(assert (=> start!230446 m!2762043))

(declare-fun m!2762045 () Bool)

(assert (=> b!2334104 m!2762045))

(declare-fun m!2762047 () Bool)

(assert (=> b!2334105 m!2762047))

(assert (=> b!2334105 m!2762047))

(declare-fun m!2762049 () Bool)

(assert (=> b!2334105 m!2762049))

(push 1)

(assert (not b!2334104))

(assert (not b!2334102))

(assert (not start!230446))

(assert (not b!2334101))

(assert (not b!2334105))

(assert (not b!2334106))

(assert tp_is_empty!10999)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

