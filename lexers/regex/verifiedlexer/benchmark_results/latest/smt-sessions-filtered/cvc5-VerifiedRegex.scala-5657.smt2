; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282512 () Bool)

(assert start!282512)

(declare-fun b!2902191 () Bool)

(declare-fun res!1199116 () Bool)

(declare-fun e!1832619 () Bool)

(assert (=> b!2902191 (=> (not res!1199116) (not e!1832619))))

(declare-datatypes ((C!17918 0))(
  ( (C!17919 (val!10993 Int)) )
))
(declare-datatypes ((Regex!8868 0))(
  ( (ElementMatch!8868 (c!472973 C!17918)) (Concat!14189 (regOne!18248 Regex!8868) (regTwo!18248 Regex!8868)) (EmptyExpr!8868) (Star!8868 (reg!9197 Regex!8868)) (EmptyLang!8868) (Union!8868 (regOne!18249 Regex!8868) (regTwo!18249 Regex!8868)) )
))
(declare-fun r!19097 () Regex!8868)

(declare-datatypes ((List!34669 0))(
  ( (Nil!34545) (Cons!34545 (h!39965 C!17918) (t!233712 List!34669)) )
))
(declare-fun prefix!1456 () List!34669)

(declare-fun prefixMatch!926 (Regex!8868 List!34669) Bool)

(assert (=> b!2902191 (= res!1199116 (not (prefixMatch!926 r!19097 prefix!1456)))))

(declare-fun b!2902192 () Bool)

(declare-fun e!1832618 () Bool)

(declare-fun tp_is_empty!15323 () Bool)

(declare-fun tp!931411 () Bool)

(assert (=> b!2902192 (= e!1832618 (and tp_is_empty!15323 tp!931411))))

(declare-fun b!2902193 () Bool)

(declare-fun e!1832620 () Bool)

(assert (=> b!2902193 (= e!1832620 tp_is_empty!15323)))

(declare-fun b!2902194 () Bool)

(declare-fun e!1832621 () Bool)

(declare-fun tp!931408 () Bool)

(assert (=> b!2902194 (= e!1832621 (and tp_is_empty!15323 tp!931408))))

(declare-fun b!2902195 () Bool)

(declare-fun res!1199117 () Bool)

(assert (=> b!2902195 (=> (not res!1199117) (not e!1832619))))

(declare-fun s!13418 () List!34669)

(declare-fun isPrefix!2705 (List!34669 List!34669) Bool)

(assert (=> b!2902195 (= res!1199117 (isPrefix!2705 prefix!1456 s!13418))))

(declare-fun b!2902196 () Bool)

(assert (=> b!2902196 (= e!1832619 (not true))))

(declare-fun matchR!3824 (Regex!8868 List!34669) Bool)

(assert (=> b!2902196 (not (matchR!3824 r!19097 s!13418))))

(declare-datatypes ((Unit!48129 0))(
  ( (Unit!48130) )
))
(declare-fun lt!1022287 () Unit!48129)

(declare-fun lemmaLostCauseCannotMatch!42 (Regex!8868 List!34669) Unit!48129)

(assert (=> b!2902196 (= lt!1022287 (lemmaLostCauseCannotMatch!42 r!19097 s!13418))))

(declare-fun b!2902197 () Bool)

(declare-fun res!1199118 () Bool)

(assert (=> b!2902197 (=> (not res!1199118) (not e!1832619))))

(declare-fun lostCause!854 (Regex!8868) Bool)

(assert (=> b!2902197 (= res!1199118 (lostCause!854 r!19097))))

(declare-fun b!2902198 () Bool)

(declare-fun tp!931410 () Bool)

(declare-fun tp!931407 () Bool)

(assert (=> b!2902198 (= e!1832620 (and tp!931410 tp!931407))))

(declare-fun res!1199119 () Bool)

(assert (=> start!282512 (=> (not res!1199119) (not e!1832619))))

(declare-fun validRegex!3641 (Regex!8868) Bool)

(assert (=> start!282512 (= res!1199119 (validRegex!3641 r!19097))))

(assert (=> start!282512 e!1832619))

(assert (=> start!282512 e!1832620))

(assert (=> start!282512 e!1832618))

(assert (=> start!282512 e!1832621))

(declare-fun b!2902199 () Bool)

(declare-fun tp!931409 () Bool)

(assert (=> b!2902199 (= e!1832620 tp!931409)))

(declare-fun b!2902200 () Bool)

(declare-fun tp!931412 () Bool)

(declare-fun tp!931406 () Bool)

(assert (=> b!2902200 (= e!1832620 (and tp!931412 tp!931406))))

(declare-fun b!2902201 () Bool)

(declare-fun res!1199120 () Bool)

(assert (=> b!2902201 (=> (not res!1199120) (not e!1832619))))

(assert (=> b!2902201 (= res!1199120 (is-Nil!34545 prefix!1456))))

(assert (= (and start!282512 res!1199119) b!2902195))

(assert (= (and b!2902195 res!1199117) b!2902191))

(assert (= (and b!2902191 res!1199116) b!2902201))

(assert (= (and b!2902201 res!1199120) b!2902197))

(assert (= (and b!2902197 res!1199118) b!2902196))

(assert (= (and start!282512 (is-ElementMatch!8868 r!19097)) b!2902193))

(assert (= (and start!282512 (is-Concat!14189 r!19097)) b!2902198))

(assert (= (and start!282512 (is-Star!8868 r!19097)) b!2902199))

(assert (= (and start!282512 (is-Union!8868 r!19097)) b!2902200))

(assert (= (and start!282512 (is-Cons!34545 prefix!1456)) b!2902192))

(assert (= (and start!282512 (is-Cons!34545 s!13418)) b!2902194))

(declare-fun m!3306555 () Bool)

(assert (=> start!282512 m!3306555))

(declare-fun m!3306557 () Bool)

(assert (=> b!2902191 m!3306557))

(declare-fun m!3306559 () Bool)

(assert (=> b!2902197 m!3306559))

(declare-fun m!3306561 () Bool)

(assert (=> b!2902195 m!3306561))

(declare-fun m!3306563 () Bool)

(assert (=> b!2902196 m!3306563))

(declare-fun m!3306565 () Bool)

(assert (=> b!2902196 m!3306565))

(push 1)

(assert (not b!2902194))

(assert (not b!2902198))

(assert (not b!2902191))

(assert (not b!2902192))

(assert (not b!2902195))

(assert (not start!282512))

(assert tp_is_empty!15323)

(assert (not b!2902200))

(assert (not b!2902199))

(assert (not b!2902197))

(assert (not b!2902196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

