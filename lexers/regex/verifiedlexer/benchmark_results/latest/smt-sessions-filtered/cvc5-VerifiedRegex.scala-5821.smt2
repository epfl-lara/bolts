; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286886 () Bool)

(assert start!286886)

(declare-fun b!2961010 () Bool)

(declare-fun e!1863858 () Bool)

(declare-fun tp!944955 () Bool)

(declare-fun tp!944954 () Bool)

(assert (=> b!2961010 (= e!1863858 (and tp!944955 tp!944954))))

(declare-fun res!1221675 () Bool)

(declare-fun e!1863861 () Bool)

(assert (=> start!286886 (=> (not res!1221675) (not e!1863861))))

(declare-datatypes ((C!18570 0))(
  ( (C!18571 (val!11321 Int)) )
))
(declare-datatypes ((Regex!9192 0))(
  ( (ElementMatch!9192 (c!485264 C!18570)) (Concat!14513 (regOne!18896 Regex!9192) (regTwo!18896 Regex!9192)) (EmptyExpr!9192) (Star!9192 (reg!9521 Regex!9192)) (EmptyLang!9192) (Union!9192 (regOne!18897 Regex!9192) (regTwo!18897 Regex!9192)) )
))
(declare-fun r!17423 () Regex!9192)

(declare-fun validRegex!3925 (Regex!9192) Bool)

(assert (=> start!286886 (= res!1221675 (validRegex!3925 r!17423))))

(assert (=> start!286886 e!1863861))

(assert (=> start!286886 e!1863858))

(declare-fun e!1863860 () Bool)

(assert (=> start!286886 e!1863860))

(declare-fun b!2961011 () Bool)

(declare-fun tp_is_empty!15947 () Bool)

(assert (=> b!2961011 (= e!1863858 tp_is_empty!15947)))

(declare-fun b!2961012 () Bool)

(declare-fun tp!944956 () Bool)

(assert (=> b!2961012 (= e!1863860 (and tp_is_empty!15947 tp!944956))))

(declare-fun b!2961013 () Bool)

(declare-fun tp!944959 () Bool)

(assert (=> b!2961013 (= e!1863858 tp!944959)))

(declare-fun b!2961014 () Bool)

(declare-fun e!1863859 () Bool)

(assert (=> b!2961014 (= e!1863859 true)))

(declare-fun lt!1034090 () Regex!9192)

(declare-fun simplify!195 (Regex!9192) Regex!9192)

(assert (=> b!2961014 (= lt!1034090 (simplify!195 (regTwo!18897 r!17423)))))

(declare-fun lt!1034089 () Regex!9192)

(assert (=> b!2961014 (= lt!1034089 (simplify!195 (regOne!18897 r!17423)))))

(declare-fun b!2961015 () Bool)

(declare-fun tp!944958 () Bool)

(declare-fun tp!944957 () Bool)

(assert (=> b!2961015 (= e!1863858 (and tp!944958 tp!944957))))

(declare-fun b!2961016 () Bool)

(assert (=> b!2961016 (= e!1863861 (not e!1863859))))

(declare-fun res!1221676 () Bool)

(assert (=> b!2961016 (=> res!1221676 e!1863859)))

(declare-fun lt!1034091 () Bool)

(assert (=> b!2961016 (= res!1221676 (or lt!1034091 (is-Concat!14513 r!17423) (not (is-Union!9192 r!17423))))))

(declare-datatypes ((List!35057 0))(
  ( (Nil!34933) (Cons!34933 (h!40353 C!18570) (t!234122 List!35057)) )
))
(declare-fun s!11993 () List!35057)

(declare-fun matchRSpec!1329 (Regex!9192 List!35057) Bool)

(assert (=> b!2961016 (= lt!1034091 (matchRSpec!1329 r!17423 s!11993))))

(declare-fun matchR!4074 (Regex!9192 List!35057) Bool)

(assert (=> b!2961016 (= lt!1034091 (matchR!4074 r!17423 s!11993))))

(declare-datatypes ((Unit!48763 0))(
  ( (Unit!48764) )
))
(declare-fun lt!1034092 () Unit!48763)

(declare-fun mainMatchTheorem!1329 (Regex!9192 List!35057) Unit!48763)

(assert (=> b!2961016 (= lt!1034092 (mainMatchTheorem!1329 r!17423 s!11993))))

(assert (= (and start!286886 res!1221675) b!2961016))

(assert (= (and b!2961016 (not res!1221676)) b!2961014))

(assert (= (and start!286886 (is-ElementMatch!9192 r!17423)) b!2961011))

(assert (= (and start!286886 (is-Concat!14513 r!17423)) b!2961015))

(assert (= (and start!286886 (is-Star!9192 r!17423)) b!2961013))

(assert (= (and start!286886 (is-Union!9192 r!17423)) b!2961010))

(assert (= (and start!286886 (is-Cons!34933 s!11993)) b!2961012))

(declare-fun m!3334259 () Bool)

(assert (=> start!286886 m!3334259))

(declare-fun m!3334261 () Bool)

(assert (=> b!2961014 m!3334261))

(declare-fun m!3334263 () Bool)

(assert (=> b!2961014 m!3334263))

(declare-fun m!3334265 () Bool)

(assert (=> b!2961016 m!3334265))

(declare-fun m!3334267 () Bool)

(assert (=> b!2961016 m!3334267))

(declare-fun m!3334269 () Bool)

(assert (=> b!2961016 m!3334269))

(push 1)

(assert (not b!2961015))

(assert (not b!2961014))

(assert (not b!2961013))

(assert (not start!286886))

(assert (not b!2961010))

(assert (not b!2961012))

(assert tp_is_empty!15947)

(assert (not b!2961016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

