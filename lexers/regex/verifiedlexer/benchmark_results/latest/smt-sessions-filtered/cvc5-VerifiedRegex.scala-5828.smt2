; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286970 () Bool)

(assert start!286970)

(declare-fun b!2962560 () Bool)

(declare-fun e!1864724 () Bool)

(declare-fun tp!945361 () Bool)

(declare-fun tp!945360 () Bool)

(assert (=> b!2962560 (= e!1864724 (and tp!945361 tp!945360))))

(declare-fun b!2962561 () Bool)

(declare-fun tp!945358 () Bool)

(declare-fun tp!945363 () Bool)

(assert (=> b!2962561 (= e!1864724 (and tp!945358 tp!945363))))

(declare-fun b!2962562 () Bool)

(declare-fun tp_is_empty!15975 () Bool)

(assert (=> b!2962562 (= e!1864724 tp_is_empty!15975)))

(declare-fun b!2962563 () Bool)

(declare-fun e!1864727 () Bool)

(declare-fun e!1864726 () Bool)

(assert (=> b!2962563 (= e!1864727 (not e!1864726))))

(declare-fun res!1222183 () Bool)

(assert (=> b!2962563 (=> res!1222183 e!1864726)))

(declare-fun lt!1034483 () Bool)

(declare-datatypes ((C!18598 0))(
  ( (C!18599 (val!11335 Int)) )
))
(declare-datatypes ((Regex!9206 0))(
  ( (ElementMatch!9206 (c!485616 C!18598)) (Concat!14527 (regOne!18924 Regex!9206) (regTwo!18924 Regex!9206)) (EmptyExpr!9206) (Star!9206 (reg!9535 Regex!9206)) (EmptyLang!9206) (Union!9206 (regOne!18925 Regex!9206) (regTwo!18925 Regex!9206)) )
))
(declare-fun r!17423 () Regex!9206)

(assert (=> b!2962563 (= res!1222183 (or lt!1034483 (is-Concat!14527 r!17423) (not (is-Union!9206 r!17423))))))

(declare-datatypes ((List!35071 0))(
  ( (Nil!34947) (Cons!34947 (h!40367 C!18598) (t!234136 List!35071)) )
))
(declare-fun s!11993 () List!35071)

(declare-fun matchRSpec!1343 (Regex!9206 List!35071) Bool)

(assert (=> b!2962563 (= lt!1034483 (matchRSpec!1343 r!17423 s!11993))))

(declare-fun matchR!4088 (Regex!9206 List!35071) Bool)

(assert (=> b!2962563 (= lt!1034483 (matchR!4088 r!17423 s!11993))))

(declare-datatypes ((Unit!48791 0))(
  ( (Unit!48792) )
))
(declare-fun lt!1034482 () Unit!48791)

(declare-fun mainMatchTheorem!1343 (Regex!9206 List!35071) Unit!48791)

(assert (=> b!2962563 (= lt!1034482 (mainMatchTheorem!1343 r!17423 s!11993))))

(declare-fun b!2962564 () Bool)

(declare-fun e!1864725 () Bool)

(declare-fun tp!945359 () Bool)

(assert (=> b!2962564 (= e!1864725 (and tp_is_empty!15975 tp!945359))))

(declare-fun b!2962565 () Bool)

(declare-fun tp!945362 () Bool)

(assert (=> b!2962565 (= e!1864724 tp!945362)))

(declare-fun b!2962566 () Bool)

(assert (=> b!2962566 (= e!1864726 true)))

(declare-fun lt!1034481 () Regex!9206)

(declare-fun simplify!209 (Regex!9206) Regex!9206)

(assert (=> b!2962566 (= lt!1034481 (simplify!209 (regTwo!18925 r!17423)))))

(declare-fun lt!1034484 () Regex!9206)

(assert (=> b!2962566 (= lt!1034484 (simplify!209 (regOne!18925 r!17423)))))

(declare-fun res!1222184 () Bool)

(assert (=> start!286970 (=> (not res!1222184) (not e!1864727))))

(declare-fun validRegex!3939 (Regex!9206) Bool)

(assert (=> start!286970 (= res!1222184 (validRegex!3939 r!17423))))

(assert (=> start!286970 e!1864727))

(assert (=> start!286970 e!1864724))

(assert (=> start!286970 e!1864725))

(assert (= (and start!286970 res!1222184) b!2962563))

(assert (= (and b!2962563 (not res!1222183)) b!2962566))

(assert (= (and start!286970 (is-ElementMatch!9206 r!17423)) b!2962562))

(assert (= (and start!286970 (is-Concat!14527 r!17423)) b!2962560))

(assert (= (and start!286970 (is-Star!9206 r!17423)) b!2962565))

(assert (= (and start!286970 (is-Union!9206 r!17423)) b!2962561))

(assert (= (and start!286970 (is-Cons!34947 s!11993)) b!2962564))

(declare-fun m!3334947 () Bool)

(assert (=> b!2962563 m!3334947))

(declare-fun m!3334949 () Bool)

(assert (=> b!2962563 m!3334949))

(declare-fun m!3334951 () Bool)

(assert (=> b!2962563 m!3334951))

(declare-fun m!3334953 () Bool)

(assert (=> b!2962566 m!3334953))

(declare-fun m!3334955 () Bool)

(assert (=> b!2962566 m!3334955))

(declare-fun m!3334957 () Bool)

(assert (=> start!286970 m!3334957))

(push 1)

(assert (not b!2962566))

(assert (not b!2962564))

(assert (not b!2962563))

(assert (not b!2962561))

(assert (not b!2962560))

(assert tp_is_empty!15975)

(assert (not start!286970))

(assert (not b!2962565))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

