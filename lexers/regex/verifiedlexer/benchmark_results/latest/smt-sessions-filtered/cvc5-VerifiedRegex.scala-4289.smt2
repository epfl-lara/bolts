; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230278 () Bool)

(assert start!230278)

(declare-fun b!2330146 () Bool)

(declare-fun e!1493027 () Bool)

(declare-fun tp!738335 () Bool)

(declare-fun tp!738333 () Bool)

(assert (=> b!2330146 (= e!1493027 (and tp!738335 tp!738333))))

(declare-fun b!2330144 () Bool)

(declare-fun tp!738332 () Bool)

(declare-fun tp!738336 () Bool)

(assert (=> b!2330144 (= e!1493027 (and tp!738332 tp!738336))))

(assert (=> start!230278 false))

(assert (=> start!230278 e!1493027))

(declare-fun b!2330143 () Bool)

(declare-fun tp_is_empty!10943 () Bool)

(assert (=> b!2330143 (= e!1493027 tp_is_empty!10943)))

(declare-fun b!2330145 () Bool)

(declare-fun tp!738334 () Bool)

(assert (=> b!2330145 (= e!1493027 tp!738334)))

(declare-datatypes ((C!13790 0))(
  ( (C!13791 (val!8055 Int)) )
))
(declare-datatypes ((Regex!6816 0))(
  ( (ElementMatch!6816 (c!370148 C!13790)) (Concat!11438 (regOne!14144 Regex!6816) (regTwo!14144 Regex!6816)) (EmptyExpr!6816) (Star!6816 (reg!7145 Regex!6816)) (EmptyLang!6816) (Union!6816 (regOne!14145 Regex!6816) (regTwo!14145 Regex!6816)) )
))
(declare-fun r!26197 () Regex!6816)

(assert (= (and start!230278 (is-ElementMatch!6816 r!26197)) b!2330143))

(assert (= (and start!230278 (is-Concat!11438 r!26197)) b!2330144))

(assert (= (and start!230278 (is-Star!6816 r!26197)) b!2330145))

(assert (= (and start!230278 (is-Union!6816 r!26197)) b!2330146))

(push 1)

(assert (not b!2330144))

(assert (not b!2330145))

(assert (not b!2330146))

(assert tp_is_empty!10943)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

