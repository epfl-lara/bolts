; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!527368 () Bool)

(assert start!527368)

(declare-fun b!4988939 () Bool)

(declare-fun res!2129748 () Bool)

(declare-fun e!3117958 () Bool)

(assert (=> b!4988939 (=> (not res!2129748) (not e!3117958))))

(declare-datatypes ((C!27694 0))(
  ( (C!27695 (val!23213 Int)) )
))
(declare-datatypes ((List!57774 0))(
  ( (Nil!57650) (Cons!57650 (h!64098 C!27694) (t!370100 List!57774)) )
))
(declare-datatypes ((IArray!30543 0))(
  ( (IArray!30544 (innerList!15329 List!57774)) )
))
(declare-datatypes ((Conc!15241 0))(
  ( (Node!15241 (left!42192 Conc!15241) (right!42522 Conc!15241) (csize!30712 Int) (cheight!15452 Int)) (Leaf!25311 (xs!18567 IArray!30543) (csize!30713 Int)) (Empty!15241) )
))
(declare-datatypes ((BalanceConc!29912 0))(
  ( (BalanceConc!29913 (c!851289 Conc!15241)) )
))
(declare-fun input!6528 () BalanceConc!29912)

(declare-fun totalInput!1177 () BalanceConc!29912)

(declare-fun isSuffix!1288 (List!57774 List!57774) Bool)

(declare-fun list!18523 (BalanceConc!29912) List!57774)

(assert (=> b!4988939 (= res!2129748 (isSuffix!1288 (list!18523 input!6528) (list!18523 totalInput!1177)))))

(declare-fun b!4988940 () Bool)

(declare-fun e!3117959 () Bool)

(declare-fun tp!1398119 () Bool)

(declare-fun inv!75638 (Conc!15241) Bool)

(assert (=> b!4988940 (= e!3117959 (and (inv!75638 (c!851289 input!6528)) tp!1398119))))

(declare-fun b!4988941 () Bool)

(declare-fun e!3117960 () Bool)

(declare-fun tp!1398113 () Bool)

(declare-fun tp!1398115 () Bool)

(assert (=> b!4988941 (= e!3117960 (and tp!1398113 tp!1398115))))

(declare-fun res!2129749 () Bool)

(assert (=> start!527368 (=> (not res!2129749) (not e!3117958))))

(declare-datatypes ((Regex!13722 0))(
  ( (ElementMatch!13722 (c!851290 C!27694)) (Concat!22515 (regOne!27956 Regex!13722) (regTwo!27956 Regex!13722)) (EmptyExpr!13722) (Star!13722 (reg!14051 Regex!13722)) (EmptyLang!13722) (Union!13722 (regOne!27957 Regex!13722) (regTwo!27957 Regex!13722)) )
))
(declare-fun r!15264 () Regex!13722)

(declare-fun validRegex!6019 (Regex!13722) Bool)

(assert (=> start!527368 (= res!2129749 (validRegex!6019 r!15264))))

(assert (=> start!527368 e!3117958))

(assert (=> start!527368 e!3117960))

(declare-fun inv!75639 (BalanceConc!29912) Bool)

(assert (=> start!527368 (and (inv!75639 input!6528) e!3117959)))

(declare-fun e!3117961 () Bool)

(assert (=> start!527368 (and (inv!75639 totalInput!1177) e!3117961)))

(declare-fun b!4988942 () Bool)

(assert (=> b!4988942 (= e!3117958 false)))

(declare-datatypes ((List!57775 0))(
  ( (Nil!57651) (Cons!57651 (h!64099 Regex!13722) (t!370101 List!57775)) )
))
(declare-datatypes ((Context!6294 0))(
  ( (Context!6295 (exprs!3647 List!57775)) )
))
(declare-fun lt!2062487 () (Set Context!6294))

(declare-fun focus!355 (Regex!13722) (Set Context!6294))

(assert (=> b!4988942 (= lt!2062487 (focus!355 r!15264))))

(declare-fun b!4988943 () Bool)

(declare-fun tp!1398114 () Bool)

(declare-fun tp!1398117 () Bool)

(assert (=> b!4988943 (= e!3117960 (and tp!1398114 tp!1398117))))

(declare-fun b!4988944 () Bool)

(declare-fun tp!1398116 () Bool)

(assert (=> b!4988944 (= e!3117960 tp!1398116)))

(declare-fun b!4988945 () Bool)

(declare-fun tp!1398118 () Bool)

(assert (=> b!4988945 (= e!3117961 (and (inv!75638 (c!851289 totalInput!1177)) tp!1398118))))

(declare-fun b!4988946 () Bool)

(declare-fun tp_is_empty!36441 () Bool)

(assert (=> b!4988946 (= e!3117960 tp_is_empty!36441)))

(assert (= (and start!527368 res!2129749) b!4988939))

(assert (= (and b!4988939 res!2129748) b!4988942))

(assert (= (and start!527368 (is-ElementMatch!13722 r!15264)) b!4988946))

(assert (= (and start!527368 (is-Concat!22515 r!15264)) b!4988943))

(assert (= (and start!527368 (is-Star!13722 r!15264)) b!4988944))

(assert (= (and start!527368 (is-Union!13722 r!15264)) b!4988941))

(assert (= start!527368 b!4988940))

(assert (= start!527368 b!4988945))

(declare-fun m!6020914 () Bool)

(assert (=> b!4988945 m!6020914))

(declare-fun m!6020916 () Bool)

(assert (=> b!4988942 m!6020916))

(declare-fun m!6020918 () Bool)

(assert (=> b!4988939 m!6020918))

(declare-fun m!6020920 () Bool)

(assert (=> b!4988939 m!6020920))

(assert (=> b!4988939 m!6020918))

(assert (=> b!4988939 m!6020920))

(declare-fun m!6020922 () Bool)

(assert (=> b!4988939 m!6020922))

(declare-fun m!6020924 () Bool)

(assert (=> b!4988940 m!6020924))

(declare-fun m!6020926 () Bool)

(assert (=> start!527368 m!6020926))

(declare-fun m!6020928 () Bool)

(assert (=> start!527368 m!6020928))

(declare-fun m!6020930 () Bool)

(assert (=> start!527368 m!6020930))

(push 1)

(assert (not b!4988942))

(assert (not b!4988945))

(assert (not b!4988940))

(assert (not b!4988941))

(assert tp_is_empty!36441)

(assert (not b!4988944))

(assert (not start!527368))

(assert (not b!4988939))

(assert (not b!4988943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

