; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187720 () Bool)

(assert start!187720)

(declare-fun b!1873071 () Bool)

(declare-fun e!1194983 () Bool)

(declare-fun tp!532698 () Bool)

(declare-fun tp!532699 () Bool)

(assert (=> b!1873071 (= e!1194983 (and tp!532698 tp!532699))))

(declare-fun res!838230 () Bool)

(declare-fun e!1194982 () Bool)

(assert (=> start!187720 (=> (not res!838230) (not e!1194982))))

(declare-datatypes ((C!10286 0))(
  ( (C!10287 (val!6031 Int)) )
))
(declare-datatypes ((Regex!5068 0))(
  ( (ElementMatch!5068 (c!305346 C!10286)) (Concat!8887 (regOne!10648 Regex!5068) (regTwo!10648 Regex!5068)) (EmptyExpr!5068) (Star!5068 (reg!5397 Regex!5068)) (EmptyLang!5068) (Union!5068 (regOne!10649 Regex!5068) (regTwo!10649 Regex!5068)) )
))
(declare-fun r!13571 () Regex!5068)

(declare-fun validRegex!2083 (Regex!5068) Bool)

(assert (=> start!187720 (= res!838230 (validRegex!2083 r!13571))))

(assert (=> start!187720 e!1194982))

(assert (=> start!187720 e!1194983))

(declare-fun b!1873072 () Bool)

(assert (=> b!1873072 (= e!1194982 false)))

(declare-datatypes ((List!20844 0))(
  ( (Nil!20762) (Cons!20762 (h!26163 Regex!5068) (t!173061 List!20844)) )
))
(declare-datatypes ((Context!1916 0))(
  ( (Context!1917 (exprs!1458 List!20844)) )
))
(declare-fun lt!719832 () (Set Context!1916))

(declare-fun focus!240 (Regex!5068) (Set Context!1916))

(assert (=> b!1873072 (= lt!719832 (focus!240 r!13571))))

(declare-fun b!1873073 () Bool)

(declare-fun tp!532697 () Bool)

(assert (=> b!1873073 (= e!1194983 tp!532697)))

(declare-fun b!1873074 () Bool)

(declare-fun tp_is_empty!8829 () Bool)

(assert (=> b!1873074 (= e!1194983 tp_is_empty!8829)))

(declare-fun b!1873075 () Bool)

(declare-fun tp!532701 () Bool)

(declare-fun tp!532700 () Bool)

(assert (=> b!1873075 (= e!1194983 (and tp!532701 tp!532700))))

(assert (= (and start!187720 res!838230) b!1873072))

(assert (= (and start!187720 (is-ElementMatch!5068 r!13571)) b!1873074))

(assert (= (and start!187720 (is-Concat!8887 r!13571)) b!1873071))

(assert (= (and start!187720 (is-Star!5068 r!13571)) b!1873073))

(assert (= (and start!187720 (is-Union!5068 r!13571)) b!1873075))

(declare-fun m!2298769 () Bool)

(assert (=> start!187720 m!2298769))

(declare-fun m!2298771 () Bool)

(assert (=> b!1873072 m!2298771))

(push 1)

(assert (not b!1873072))

(assert (not b!1873073))

(assert (not start!187720))

(assert (not b!1873071))

(assert (not b!1873075))

(assert tp_is_empty!8829)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

