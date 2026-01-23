; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243450 () Bool)

(assert start!243450)

(declare-fun b!2491733 () Bool)

(declare-fun e!1581647 () Bool)

(declare-fun tp_is_empty!12523 () Bool)

(assert (=> b!2491733 (= e!1581647 tp_is_empty!12523)))

(declare-fun b!2491734 () Bool)

(declare-fun tp!797928 () Bool)

(assert (=> b!2491734 (= e!1581647 tp!797928)))

(declare-fun b!2491735 () Bool)

(declare-fun tp!797932 () Bool)

(declare-fun tp!797931 () Bool)

(assert (=> b!2491735 (= e!1581647 (and tp!797932 tp!797931))))

(declare-fun b!2491736 () Bool)

(declare-fun res!1054210 () Bool)

(declare-fun e!1581646 () Bool)

(assert (=> b!2491736 (=> (not res!1054210) (not e!1581646))))

(declare-datatypes ((C!14826 0))(
  ( (C!14827 (val!9065 Int)) )
))
(declare-datatypes ((List!29399 0))(
  ( (Nil!29299) (Cons!29299 (h!34719 C!14826) (t!211098 List!29399)) )
))
(declare-fun tl!4068 () List!29399)

(declare-datatypes ((Regex!7334 0))(
  ( (ElementMatch!7334 (c!396132 C!14826)) (Concat!12030 (regOne!15180 Regex!7334) (regTwo!15180 Regex!7334)) (EmptyExpr!7334) (Star!7334 (reg!7663 Regex!7334)) (EmptyLang!7334) (Union!7334 (regOne!15181 Regex!7334) (regTwo!15181 Regex!7334)) )
))
(declare-fun r!27340 () Regex!7334)

(declare-fun c!14016 () C!14826)

(declare-fun nullable!2251 (Regex!7334) Bool)

(declare-fun derivative!29 (Regex!7334 List!29399) Regex!7334)

(declare-fun derivativeStep!1903 (Regex!7334 C!14826) Regex!7334)

(assert (=> b!2491736 (= res!1054210 (nullable!2251 (derivative!29 (derivativeStep!1903 r!27340 c!14016) tl!4068)))))

(declare-fun b!2491737 () Bool)

(declare-fun tp!797927 () Bool)

(declare-fun tp!797929 () Bool)

(assert (=> b!2491737 (= e!1581647 (and tp!797927 tp!797929))))

(declare-fun b!2491738 () Bool)

(declare-fun e!1581645 () Bool)

(declare-fun tp!797930 () Bool)

(assert (=> b!2491738 (= e!1581645 (and tp_is_empty!12523 tp!797930))))

(declare-fun b!2491739 () Bool)

(declare-fun res!1054211 () Bool)

(assert (=> b!2491739 (=> (not res!1054211) (not e!1581646))))

(assert (=> b!2491739 (= res!1054211 (and (not (is-EmptyExpr!7334 r!27340)) (not (is-EmptyLang!7334 r!27340)) (not (is-ElementMatch!7334 r!27340)) (is-Union!7334 r!27340)))))

(declare-fun res!1054212 () Bool)

(assert (=> start!243450 (=> (not res!1054212) (not e!1581646))))

(declare-fun validRegex!2960 (Regex!7334) Bool)

(assert (=> start!243450 (= res!1054212 (validRegex!2960 r!27340))))

(assert (=> start!243450 e!1581646))

(assert (=> start!243450 e!1581647))

(assert (=> start!243450 tp_is_empty!12523))

(assert (=> start!243450 e!1581645))

(declare-fun b!2491740 () Bool)

(declare-fun res!1054209 () Bool)

(assert (=> b!2491740 (=> (not res!1054209) (not e!1581646))))

(assert (=> b!2491740 (= res!1054209 (nullable!2251 (derivative!29 (derivativeStep!1903 (regOne!15181 r!27340) c!14016) tl!4068)))))

(declare-fun b!2491741 () Bool)

(assert (=> b!2491741 (= e!1581646 false)))

(assert (= (and start!243450 res!1054212) b!2491736))

(assert (= (and b!2491736 res!1054210) b!2491739))

(assert (= (and b!2491739 res!1054211) b!2491740))

(assert (= (and b!2491740 res!1054209) b!2491741))

(assert (= (and start!243450 (is-ElementMatch!7334 r!27340)) b!2491733))

(assert (= (and start!243450 (is-Concat!12030 r!27340)) b!2491735))

(assert (= (and start!243450 (is-Star!7334 r!27340)) b!2491734))

(assert (= (and start!243450 (is-Union!7334 r!27340)) b!2491737))

(assert (= (and start!243450 (is-Cons!29299 tl!4068)) b!2491738))

(declare-fun m!2858221 () Bool)

(assert (=> b!2491736 m!2858221))

(assert (=> b!2491736 m!2858221))

(declare-fun m!2858223 () Bool)

(assert (=> b!2491736 m!2858223))

(assert (=> b!2491736 m!2858223))

(declare-fun m!2858225 () Bool)

(assert (=> b!2491736 m!2858225))

(declare-fun m!2858227 () Bool)

(assert (=> start!243450 m!2858227))

(declare-fun m!2858229 () Bool)

(assert (=> b!2491740 m!2858229))

(assert (=> b!2491740 m!2858229))

(declare-fun m!2858231 () Bool)

(assert (=> b!2491740 m!2858231))

(assert (=> b!2491740 m!2858231))

(declare-fun m!2858233 () Bool)

(assert (=> b!2491740 m!2858233))

(push 1)

(assert (not start!243450))

(assert (not b!2491737))

(assert (not b!2491734))

(assert (not b!2491740))

(assert (not b!2491738))

(assert tp_is_empty!12523)

(assert (not b!2491736))

(assert (not b!2491735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

