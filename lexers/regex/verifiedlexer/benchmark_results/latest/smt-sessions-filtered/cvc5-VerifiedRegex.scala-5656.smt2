; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282508 () Bool)

(assert start!282508)

(declare-fun b!2902129 () Bool)

(declare-fun e!1832597 () Bool)

(declare-fun tp!931366 () Bool)

(declare-fun tp!931365 () Bool)

(assert (=> b!2902129 (= e!1832597 (and tp!931366 tp!931365))))

(declare-fun b!2902130 () Bool)

(declare-fun tp!931369 () Bool)

(assert (=> b!2902130 (= e!1832597 tp!931369)))

(declare-fun res!1199092 () Bool)

(declare-fun e!1832594 () Bool)

(assert (=> start!282508 (=> (not res!1199092) (not e!1832594))))

(declare-datatypes ((C!17914 0))(
  ( (C!17915 (val!10991 Int)) )
))
(declare-datatypes ((Regex!8866 0))(
  ( (ElementMatch!8866 (c!472971 C!17914)) (Concat!14187 (regOne!18244 Regex!8866) (regTwo!18244 Regex!8866)) (EmptyExpr!8866) (Star!8866 (reg!9195 Regex!8866)) (EmptyLang!8866) (Union!8866 (regOne!18245 Regex!8866) (regTwo!18245 Regex!8866)) )
))
(declare-fun r!19097 () Regex!8866)

(declare-fun validRegex!3639 (Regex!8866) Bool)

(assert (=> start!282508 (= res!1199092 (validRegex!3639 r!19097))))

(assert (=> start!282508 e!1832594))

(assert (=> start!282508 e!1832597))

(declare-fun e!1832595 () Bool)

(assert (=> start!282508 e!1832595))

(declare-fun e!1832596 () Bool)

(assert (=> start!282508 e!1832596))

(declare-fun b!2902131 () Bool)

(assert (=> b!2902131 (= e!1832594 false)))

(declare-fun lt!1022281 () Bool)

(declare-fun lostCause!852 (Regex!8866) Bool)

(assert (=> b!2902131 (= lt!1022281 (lostCause!852 r!19097))))

(declare-fun b!2902132 () Bool)

(declare-fun res!1199091 () Bool)

(assert (=> b!2902132 (=> (not res!1199091) (not e!1832594))))

(declare-datatypes ((List!34667 0))(
  ( (Nil!34543) (Cons!34543 (h!39963 C!17914) (t!233710 List!34667)) )
))
(declare-fun prefix!1456 () List!34667)

(declare-fun s!13418 () List!34667)

(declare-fun isPrefix!2703 (List!34667 List!34667) Bool)

(assert (=> b!2902132 (= res!1199091 (isPrefix!2703 prefix!1456 s!13418))))

(declare-fun b!2902133 () Bool)

(declare-fun tp_is_empty!15319 () Bool)

(declare-fun tp!931364 () Bool)

(assert (=> b!2902133 (= e!1832596 (and tp_is_empty!15319 tp!931364))))

(declare-fun b!2902134 () Bool)

(assert (=> b!2902134 (= e!1832597 tp_is_empty!15319)))

(declare-fun b!2902135 () Bool)

(declare-fun res!1199090 () Bool)

(assert (=> b!2902135 (=> (not res!1199090) (not e!1832594))))

(declare-fun prefixMatch!924 (Regex!8866 List!34667) Bool)

(assert (=> b!2902135 (= res!1199090 (not (prefixMatch!924 r!19097 prefix!1456)))))

(declare-fun b!2902136 () Bool)

(declare-fun tp!931370 () Bool)

(assert (=> b!2902136 (= e!1832595 (and tp_is_empty!15319 tp!931370))))

(declare-fun b!2902137 () Bool)

(declare-fun res!1199093 () Bool)

(assert (=> b!2902137 (=> (not res!1199093) (not e!1832594))))

(assert (=> b!2902137 (= res!1199093 (is-Nil!34543 prefix!1456))))

(declare-fun b!2902138 () Bool)

(declare-fun tp!931368 () Bool)

(declare-fun tp!931367 () Bool)

(assert (=> b!2902138 (= e!1832597 (and tp!931368 tp!931367))))

(assert (= (and start!282508 res!1199092) b!2902132))

(assert (= (and b!2902132 res!1199091) b!2902135))

(assert (= (and b!2902135 res!1199090) b!2902137))

(assert (= (and b!2902137 res!1199093) b!2902131))

(assert (= (and start!282508 (is-ElementMatch!8866 r!19097)) b!2902134))

(assert (= (and start!282508 (is-Concat!14187 r!19097)) b!2902138))

(assert (= (and start!282508 (is-Star!8866 r!19097)) b!2902130))

(assert (= (and start!282508 (is-Union!8866 r!19097)) b!2902129))

(assert (= (and start!282508 (is-Cons!34543 prefix!1456)) b!2902136))

(assert (= (and start!282508 (is-Cons!34543 s!13418)) b!2902133))

(declare-fun m!3306539 () Bool)

(assert (=> start!282508 m!3306539))

(declare-fun m!3306541 () Bool)

(assert (=> b!2902131 m!3306541))

(declare-fun m!3306543 () Bool)

(assert (=> b!2902132 m!3306543))

(declare-fun m!3306545 () Bool)

(assert (=> b!2902135 m!3306545))

(push 1)

(assert (not b!2902135))

(assert (not b!2902129))

(assert (not start!282508))

(assert tp_is_empty!15319)

(assert (not b!2902132))

(assert (not b!2902136))

(assert (not b!2902130))

(assert (not b!2902133))

(assert (not b!2902131))

(assert (not b!2902138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

