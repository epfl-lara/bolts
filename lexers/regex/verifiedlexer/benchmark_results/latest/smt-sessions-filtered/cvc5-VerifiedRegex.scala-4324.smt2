; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230918 () Bool)

(assert start!230918)

(declare-fun b!2346483 () Bool)

(declare-fun e!1500976 () Bool)

(declare-fun tp!744955 () Bool)

(declare-fun tp!744954 () Bool)

(assert (=> b!2346483 (= e!1500976 (and tp!744955 tp!744954))))

(declare-fun b!2346484 () Bool)

(declare-fun tp_is_empty!11083 () Bool)

(assert (=> b!2346484 (= e!1500976 tp_is_empty!11083)))

(declare-fun b!2346485 () Bool)

(declare-fun res!998984 () Bool)

(declare-fun e!1500975 () Bool)

(assert (=> b!2346485 (=> (not res!998984) (not e!1500975))))

(declare-datatypes ((C!13930 0))(
  ( (C!13931 (val!8125 Int)) )
))
(declare-datatypes ((Regex!6886 0))(
  ( (ElementMatch!6886 (c!373624 C!13930)) (Concat!11508 (regOne!14284 Regex!6886) (regTwo!14284 Regex!6886)) (EmptyExpr!6886) (Star!6886 (reg!7215 Regex!6886)) (EmptyLang!6886) (Union!6886 (regOne!14285 Regex!6886) (regTwo!14285 Regex!6886)) )
))
(declare-fun r!26197 () Regex!6886)

(declare-fun nullable!1965 (Regex!6886) Bool)

(assert (=> b!2346485 (= res!998984 (not (nullable!1965 r!26197)))))

(declare-fun b!2346486 () Bool)

(assert (=> b!2346486 (= e!1500975 false)))

(declare-fun b!2346487 () Bool)

(declare-fun tp!744956 () Bool)

(assert (=> b!2346487 (= e!1500976 tp!744956)))

(declare-fun b!2346488 () Bool)

(declare-fun tp!744953 () Bool)

(declare-fun tp!744952 () Bool)

(assert (=> b!2346488 (= e!1500976 (and tp!744953 tp!744952))))

(declare-fun b!2346489 () Bool)

(declare-fun res!998985 () Bool)

(assert (=> b!2346489 (=> (not res!998985) (not e!1500975))))

(declare-fun c!13498 () C!13930)

(declare-fun derivativeStep!1625 (Regex!6886 C!13930) Regex!6886)

(assert (=> b!2346489 (= res!998985 (nullable!1965 (derivativeStep!1625 r!26197 c!13498)))))

(declare-fun res!998986 () Bool)

(assert (=> start!230918 (=> (not res!998986) (not e!1500975))))

(declare-fun validRegex!2631 (Regex!6886) Bool)

(assert (=> start!230918 (= res!998986 (validRegex!2631 r!26197))))

(assert (=> start!230918 e!1500975))

(assert (=> start!230918 e!1500976))

(assert (=> start!230918 tp_is_empty!11083))

(assert (= (and start!230918 res!998986) b!2346485))

(assert (= (and b!2346485 res!998984) b!2346489))

(assert (= (and b!2346489 res!998985) b!2346486))

(assert (= (and start!230918 (is-ElementMatch!6886 r!26197)) b!2346484))

(assert (= (and start!230918 (is-Concat!11508 r!26197)) b!2346483))

(assert (= (and start!230918 (is-Star!6886 r!26197)) b!2346487))

(assert (= (and start!230918 (is-Union!6886 r!26197)) b!2346488))

(declare-fun m!2767483 () Bool)

(assert (=> b!2346485 m!2767483))

(declare-fun m!2767485 () Bool)

(assert (=> b!2346489 m!2767485))

(assert (=> b!2346489 m!2767485))

(declare-fun m!2767487 () Bool)

(assert (=> b!2346489 m!2767487))

(declare-fun m!2767489 () Bool)

(assert (=> start!230918 m!2767489))

(push 1)

(assert (not b!2346489))

(assert (not start!230918))

(assert (not b!2346483))

(assert (not b!2346485))

(assert tp_is_empty!11083)

(assert (not b!2346488))

(assert (not b!2346487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

