; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732910 () Bool)

(assert start!732910)

(declare-fun b!7601726 () Bool)

(assert (=> b!7601726 true))

(assert (=> b!7601726 true))

(assert (=> b!7601726 true))

(declare-fun bs!1942429 () Bool)

(declare-fun b!7601732 () Bool)

(assert (= bs!1942429 (and b!7601732 b!7601726)))

(declare-fun lambda!467725 () Int)

(declare-fun lambda!467724 () Int)

(assert (=> bs!1942429 (not (= lambda!467725 lambda!467724))))

(assert (=> b!7601732 true))

(assert (=> b!7601732 true))

(assert (=> b!7601732 true))

(declare-fun b!7601722 () Bool)

(declare-fun e!4522377 () Bool)

(declare-fun tp_is_empty!50675 () Bool)

(declare-fun tp!2216523 () Bool)

(assert (=> b!7601722 (= e!4522377 (and tp_is_empty!50675 tp!2216523))))

(declare-fun b!7601723 () Bool)

(declare-fun e!4522376 () Bool)

(declare-fun tp!2216524 () Bool)

(declare-fun tp!2216526 () Bool)

(assert (=> b!7601723 (= e!4522376 (and tp!2216524 tp!2216526))))

(declare-fun b!7601724 () Bool)

(declare-fun e!4522382 () Bool)

(declare-fun tp!2216533 () Bool)

(assert (=> b!7601724 (= e!4522382 (and tp_is_empty!50675 tp!2216533))))

(declare-fun b!7601725 () Bool)

(declare-fun e!4522378 () Bool)

(declare-fun tp!2216527 () Bool)

(declare-fun tp!2216534 () Bool)

(assert (=> b!7601725 (= e!4522378 (and tp!2216527 tp!2216534))))

(declare-fun res!3043782 () Bool)

(declare-fun e!4522381 () Bool)

(assert (=> b!7601726 (=> (not res!3043782) (not e!4522381))))

(declare-fun Exists!4388 (Int) Bool)

(assert (=> b!7601726 (= res!3043782 (not (Exists!4388 lambda!467724)))))

(declare-fun b!7601727 () Bool)

(declare-fun res!3043785 () Bool)

(assert (=> b!7601727 (=> (not res!3043785) (not e!4522381))))

(assert (=> b!7601727 (= res!3043785 (not (Exists!4388 lambda!467724)))))

(declare-fun b!7601728 () Bool)

(declare-fun res!3043781 () Bool)

(declare-fun e!4522380 () Bool)

(assert (=> b!7601728 (=> res!3043781 e!4522380)))

(declare-fun lt!2654392 () Bool)

(declare-fun lt!2654394 () Bool)

(assert (=> b!7601728 (= res!3043781 (or (not lt!2654392) (not lt!2654394)))))

(declare-fun b!7601729 () Bool)

(assert (=> b!7601729 (= e!4522380 true)))

(declare-datatypes ((C!40646 0))(
  ( (C!40647 (val!30763 Int)) )
))
(declare-datatypes ((List!73043 0))(
  ( (Nil!72919) (Cons!72919 (h!79367 C!40646) (t!387778 List!73043)) )
))
(declare-fun lt!2654393 () List!73043)

(declare-datatypes ((tuple2!69034 0))(
  ( (tuple2!69035 (_1!37820 List!73043) (_2!37820 List!73043)) )
))
(declare-fun cut!38 () tuple2!69034)

(declare-fun ++!17560 (List!73043 List!73043) List!73043)

(assert (=> b!7601729 (= lt!2654393 (++!17560 (_1!37820 cut!38) (_2!37820 cut!38)))))

(declare-fun b!7601730 () Bool)

(declare-fun tp!2216522 () Bool)

(assert (=> b!7601730 (= e!4522376 tp!2216522)))

(declare-fun res!3043784 () Bool)

(assert (=> b!7601732 (=> (not res!3043784) (not e!4522381))))

(assert (=> b!7601732 (= res!3043784 (Exists!4388 lambda!467725))))

(declare-fun b!7601733 () Bool)

(declare-fun tp!2216529 () Bool)

(declare-fun tp!2216528 () Bool)

(assert (=> b!7601733 (= e!4522376 (and tp!2216529 tp!2216528))))

(declare-fun b!7601734 () Bool)

(declare-fun tp!2216530 () Bool)

(declare-fun tp!2216525 () Bool)

(assert (=> b!7601734 (= e!4522378 (and tp!2216530 tp!2216525))))

(declare-fun b!7601735 () Bool)

(assert (=> b!7601735 (= e!4522378 tp_is_empty!50675)))

(declare-fun b!7601736 () Bool)

(assert (=> b!7601736 (= e!4522376 tp_is_empty!50675)))

(declare-fun b!7601737 () Bool)

(assert (=> b!7601737 (= e!4522381 (not e!4522380))))

(declare-fun res!3043783 () Bool)

(assert (=> b!7601737 (=> res!3043783 e!4522380)))

(declare-fun lt!2654395 () tuple2!69034)

(declare-fun s!10235 () List!73043)

(assert (=> b!7601737 (= res!3043783 (not (= (++!17560 (_1!37820 lt!2654395) (_2!37820 lt!2654395)) s!10235)))))

(declare-datatypes ((Regex!20160 0))(
  ( (ElementMatch!20160 (c!1402249 C!40646)) (Concat!29005 (regOne!40832 Regex!20160) (regTwo!40832 Regex!20160)) (EmptyExpr!20160) (Star!20160 (reg!20489 Regex!20160)) (EmptyLang!20160) (Union!20160 (regOne!40833 Regex!20160) (regTwo!40833 Regex!20160)) )
))
(declare-fun r2!3249 () Regex!20160)

(declare-fun matchRSpec!4445 (Regex!20160 List!73043) Bool)

(assert (=> b!7601737 (= lt!2654394 (matchRSpec!4445 r2!3249 (_2!37820 lt!2654395)))))

(declare-fun matchR!9730 (Regex!20160 List!73043) Bool)

(assert (=> b!7601737 (= lt!2654394 (matchR!9730 r2!3249 (_2!37820 lt!2654395)))))

(declare-datatypes ((Unit!167220 0))(
  ( (Unit!167221) )
))
(declare-fun lt!2654396 () Unit!167220)

(declare-fun mainMatchTheorem!4439 (Regex!20160 List!73043) Unit!167220)

(assert (=> b!7601737 (= lt!2654396 (mainMatchTheorem!4439 r2!3249 (_2!37820 lt!2654395)))))

(declare-fun r1!3349 () Regex!20160)

(assert (=> b!7601737 (= lt!2654392 (matchRSpec!4445 r1!3349 (_1!37820 lt!2654395)))))

(assert (=> b!7601737 (= lt!2654392 (matchR!9730 r1!3349 (_1!37820 lt!2654395)))))

(declare-fun lt!2654391 () Unit!167220)

(assert (=> b!7601737 (= lt!2654391 (mainMatchTheorem!4439 r1!3349 (_1!37820 lt!2654395)))))

(declare-fun pickWitness!411 (Int) tuple2!69034)

(assert (=> b!7601737 (= lt!2654395 (pickWitness!411 lambda!467725))))

(declare-fun res!3043779 () Bool)

(assert (=> start!732910 (=> (not res!3043779) (not e!4522381))))

(declare-fun validRegex!10588 (Regex!20160) Bool)

(assert (=> start!732910 (= res!3043779 (validRegex!10588 r1!3349))))

(assert (=> start!732910 e!4522381))

(assert (=> start!732910 e!4522376))

(assert (=> start!732910 e!4522378))

(assert (=> start!732910 e!4522377))

(declare-fun e!4522379 () Bool)

(assert (=> start!732910 (and e!4522379 e!4522382)))

(declare-fun b!7601731 () Bool)

(declare-fun tp!2216532 () Bool)

(assert (=> b!7601731 (= e!4522378 tp!2216532)))

(declare-fun b!7601738 () Bool)

(declare-fun tp!2216531 () Bool)

(assert (=> b!7601738 (= e!4522379 (and tp_is_empty!50675 tp!2216531))))

(declare-fun b!7601739 () Bool)

(declare-fun res!3043780 () Bool)

(assert (=> b!7601739 (=> (not res!3043780) (not e!4522381))))

(assert (=> b!7601739 (= res!3043780 (validRegex!10588 r2!3249))))

(assert (= (and start!732910 res!3043779) b!7601739))

(assert (= (and b!7601739 res!3043780) b!7601726))

(assert (= (and b!7601726 res!3043782) b!7601727))

(assert (= (and b!7601727 res!3043785) b!7601732))

(assert (= (and b!7601732 res!3043784) b!7601737))

(assert (= (and b!7601737 (not res!3043783)) b!7601728))

(assert (= (and b!7601728 (not res!3043781)) b!7601729))

(assert (= (and start!732910 (is-ElementMatch!20160 r1!3349)) b!7601736))

(assert (= (and start!732910 (is-Concat!29005 r1!3349)) b!7601733))

(assert (= (and start!732910 (is-Star!20160 r1!3349)) b!7601730))

(assert (= (and start!732910 (is-Union!20160 r1!3349)) b!7601723))

(assert (= (and start!732910 (is-ElementMatch!20160 r2!3249)) b!7601735))

(assert (= (and start!732910 (is-Concat!29005 r2!3249)) b!7601734))

(assert (= (and start!732910 (is-Star!20160 r2!3249)) b!7601731))

(assert (= (and start!732910 (is-Union!20160 r2!3249)) b!7601725))

(assert (= (and start!732910 (is-Cons!72919 s!10235)) b!7601722))

(assert (= (and start!732910 (is-Cons!72919 (_1!37820 cut!38))) b!7601738))

(assert (= (and start!732910 (is-Cons!72919 (_2!37820 cut!38))) b!7601724))

(declare-fun m!8145230 () Bool)

(assert (=> b!7601726 m!8145230))

(declare-fun m!8145232 () Bool)

(assert (=> start!732910 m!8145232))

(declare-fun m!8145234 () Bool)

(assert (=> b!7601737 m!8145234))

(declare-fun m!8145236 () Bool)

(assert (=> b!7601737 m!8145236))

(declare-fun m!8145238 () Bool)

(assert (=> b!7601737 m!8145238))

(declare-fun m!8145240 () Bool)

(assert (=> b!7601737 m!8145240))

(declare-fun m!8145242 () Bool)

(assert (=> b!7601737 m!8145242))

(declare-fun m!8145244 () Bool)

(assert (=> b!7601737 m!8145244))

(declare-fun m!8145246 () Bool)

(assert (=> b!7601737 m!8145246))

(declare-fun m!8145248 () Bool)

(assert (=> b!7601737 m!8145248))

(declare-fun m!8145250 () Bool)

(assert (=> b!7601732 m!8145250))

(declare-fun m!8145252 () Bool)

(assert (=> b!7601739 m!8145252))

(declare-fun m!8145254 () Bool)

(assert (=> b!7601729 m!8145254))

(assert (=> b!7601727 m!8145230))

(push 1)

(assert (not b!7601730))

(assert (not start!732910))

(assert (not b!7601729))

(assert (not b!7601739))

(assert (not b!7601725))

(assert (not b!7601731))

(assert tp_is_empty!50675)

(assert (not b!7601733))

(assert (not b!7601727))

(assert (not b!7601723))

(assert (not b!7601726))

(assert (not b!7601722))

(assert (not b!7601732))

(assert (not b!7601734))

(assert (not b!7601738))

(assert (not b!7601737))

(assert (not b!7601724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

