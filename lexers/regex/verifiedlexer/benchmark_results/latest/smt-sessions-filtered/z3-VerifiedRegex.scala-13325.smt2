; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723598 () Bool)

(assert start!723598)

(declare-fun b!7455753 () Bool)

(assert (=> b!7455753 true))

(assert (=> b!7455753 true))

(assert (=> b!7455753 true))

(declare-fun lambda!461255 () Int)

(declare-fun lambda!461254 () Int)

(assert (=> b!7455753 (not (= lambda!461255 lambda!461254))))

(assert (=> b!7455753 true))

(assert (=> b!7455753 true))

(assert (=> b!7455753 true))

(declare-fun b!7455750 () Bool)

(declare-fun e!4450022 () Bool)

(declare-fun tp_is_empty!49315 () Bool)

(assert (=> b!7455750 (= e!4450022 tp_is_empty!49315)))

(declare-fun b!7455751 () Bool)

(declare-fun e!4450025 () Bool)

(declare-fun e!4450026 () Bool)

(assert (=> b!7455751 (= e!4450025 (not e!4450026))))

(declare-fun res!2990632 () Bool)

(assert (=> b!7455751 (=> res!2990632 e!4450026)))

(declare-fun lt!2621462 () Bool)

(assert (=> b!7455751 (= res!2990632 (not lt!2621462))))

(declare-datatypes ((C!39300 0))(
  ( (C!39301 (val!30048 Int)) )
))
(declare-datatypes ((Regex!19513 0))(
  ( (ElementMatch!19513 (c!1378476 C!39300)) (Concat!28358 (regOne!39538 Regex!19513) (regTwo!39538 Regex!19513)) (EmptyExpr!19513) (Star!19513 (reg!19842 Regex!19513)) (EmptyLang!19513) (Union!19513 (regOne!39539 Regex!19513) (regTwo!39539 Regex!19513)) )
))
(declare-fun lt!2621473 () Regex!19513)

(declare-datatypes ((List!72229 0))(
  ( (Nil!72105) (Cons!72105 (h!78553 C!39300) (t!386798 List!72229)) )
))
(declare-fun s!13591 () List!72229)

(declare-fun matchR!9277 (Regex!19513 List!72229) Bool)

(declare-fun matchRSpec!4192 (Regex!19513 List!72229) Bool)

(assert (=> b!7455751 (= (matchR!9277 lt!2621473 s!13591) (matchRSpec!4192 lt!2621473 s!13591))))

(declare-datatypes ((Unit!165861 0))(
  ( (Unit!165862) )
))
(declare-fun lt!2621463 () Unit!165861)

(declare-fun mainMatchTheorem!4186 (Regex!19513 List!72229) Unit!165861)

(assert (=> b!7455751 (= lt!2621463 (mainMatchTheorem!4186 lt!2621473 s!13591))))

(declare-fun lt!2621467 () Regex!19513)

(assert (=> b!7455751 (= lt!2621462 (matchRSpec!4192 lt!2621467 s!13591))))

(assert (=> b!7455751 (= lt!2621462 (matchR!9277 lt!2621467 s!13591))))

(declare-fun lt!2621457 () Unit!165861)

(assert (=> b!7455751 (= lt!2621457 (mainMatchTheorem!4186 lt!2621467 s!13591))))

(declare-fun lt!2621475 () Regex!19513)

(declare-fun lt!2621465 () Regex!19513)

(assert (=> b!7455751 (= lt!2621473 (Union!19513 lt!2621475 lt!2621465))))

(declare-fun r2!5783 () Regex!19513)

(declare-fun rTail!78 () Regex!19513)

(assert (=> b!7455751 (= lt!2621465 (Concat!28358 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19513)

(assert (=> b!7455751 (= lt!2621475 (Concat!28358 r1!5845 rTail!78))))

(declare-fun lt!2621471 () Regex!19513)

(assert (=> b!7455751 (= lt!2621467 (Concat!28358 lt!2621471 rTail!78))))

(assert (=> b!7455751 (= lt!2621471 (Union!19513 r1!5845 r2!5783))))

(declare-fun b!7455752 () Bool)

(declare-fun e!4450027 () Bool)

(declare-fun tp!2160641 () Bool)

(declare-fun tp!2160637 () Bool)

(assert (=> b!7455752 (= e!4450027 (and tp!2160641 tp!2160637))))

(declare-fun e!4450024 () Bool)

(assert (=> b!7455753 (= e!4450026 e!4450024)))

(declare-fun res!2990631 () Bool)

(assert (=> b!7455753 (=> res!2990631 e!4450024)))

(declare-datatypes ((tuple2!68480 0))(
  ( (tuple2!68481 (_1!37543 List!72229) (_2!37543 List!72229)) )
))
(declare-fun lt!2621456 () tuple2!68480)

(assert (=> b!7455753 (= res!2990631 (not (matchR!9277 lt!2621471 (_1!37543 lt!2621456))))))

(declare-datatypes ((Option!17072 0))(
  ( (None!17071) (Some!17071 (v!54200 tuple2!68480)) )
))
(declare-fun lt!2621461 () Option!17072)

(declare-fun get!25153 (Option!17072) tuple2!68480)

(assert (=> b!7455753 (= lt!2621456 (get!25153 lt!2621461))))

(declare-fun Exists!4134 (Int) Bool)

(assert (=> b!7455753 (= (Exists!4134 lambda!461254) (Exists!4134 lambda!461255))))

(declare-fun lt!2621469 () Unit!165861)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2470 (Regex!19513 Regex!19513 List!72229) Unit!165861)

(assert (=> b!7455753 (= lt!2621469 (lemmaExistCutMatchRandMatchRSpecEquivalent!2470 lt!2621471 rTail!78 s!13591))))

(declare-fun isDefined!13761 (Option!17072) Bool)

(assert (=> b!7455753 (= (isDefined!13761 lt!2621461) (Exists!4134 lambda!461254))))

(declare-fun findConcatSeparation!3194 (Regex!19513 Regex!19513 List!72229 List!72229 List!72229) Option!17072)

(assert (=> b!7455753 (= lt!2621461 (findConcatSeparation!3194 lt!2621471 rTail!78 Nil!72105 s!13591 s!13591))))

(declare-fun lt!2621460 () Unit!165861)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2952 (Regex!19513 Regex!19513 List!72229) Unit!165861)

(assert (=> b!7455753 (= lt!2621460 (lemmaFindConcatSeparationEquivalentToExists!2952 lt!2621471 rTail!78 s!13591))))

(declare-fun b!7455754 () Bool)

(declare-fun tp!2160650 () Bool)

(declare-fun tp!2160639 () Bool)

(assert (=> b!7455754 (= e!4450027 (and tp!2160650 tp!2160639))))

(declare-fun b!7455755 () Bool)

(declare-fun res!2990629 () Bool)

(assert (=> b!7455755 (=> (not res!2990629) (not e!4450025))))

(declare-fun validRegex!10027 (Regex!19513) Bool)

(assert (=> b!7455755 (= res!2990629 (validRegex!10027 r2!5783))))

(declare-fun b!7455757 () Bool)

(declare-fun tp!2160647 () Bool)

(assert (=> b!7455757 (= e!4450022 tp!2160647)))

(declare-fun b!7455758 () Bool)

(declare-fun e!4450023 () Bool)

(declare-fun tp!2160648 () Bool)

(declare-fun tp!2160642 () Bool)

(assert (=> b!7455758 (= e!4450023 (and tp!2160648 tp!2160642))))

(declare-fun b!7455759 () Bool)

(declare-fun tp!2160640 () Bool)

(assert (=> b!7455759 (= e!4450027 tp!2160640)))

(declare-fun b!7455760 () Bool)

(declare-fun res!2990628 () Bool)

(assert (=> b!7455760 (=> res!2990628 e!4450024)))

(assert (=> b!7455760 (= res!2990628 (not (matchR!9277 rTail!78 (_2!37543 lt!2621456))))))

(declare-fun b!7455761 () Bool)

(declare-fun res!2990634 () Bool)

(assert (=> b!7455761 (=> (not res!2990634) (not e!4450025))))

(assert (=> b!7455761 (= res!2990634 (validRegex!10027 rTail!78))))

(declare-fun b!7455762 () Bool)

(declare-fun tp!2160644 () Bool)

(declare-fun tp!2160646 () Bool)

(assert (=> b!7455762 (= e!4450023 (and tp!2160644 tp!2160646))))

(declare-fun b!7455763 () Bool)

(assert (=> b!7455763 (= e!4450023 tp_is_empty!49315)))

(declare-fun b!7455764 () Bool)

(declare-fun e!4450021 () Bool)

(assert (=> b!7455764 (= e!4450024 e!4450021)))

(declare-fun res!2990630 () Bool)

(assert (=> b!7455764 (=> res!2990630 e!4450021)))

(declare-fun lt!2621470 () Bool)

(declare-fun lt!2621459 () Bool)

(assert (=> b!7455764 (= res!2990630 (and (not lt!2621470) (not lt!2621459)))))

(assert (=> b!7455764 (= lt!2621459 (matchRSpec!4192 r2!5783 (_1!37543 lt!2621456)))))

(assert (=> b!7455764 (= lt!2621459 (matchR!9277 r2!5783 (_1!37543 lt!2621456)))))

(declare-fun lt!2621468 () Unit!165861)

(assert (=> b!7455764 (= lt!2621468 (mainMatchTheorem!4186 r2!5783 (_1!37543 lt!2621456)))))

(assert (=> b!7455764 (= lt!2621470 (matchRSpec!4192 r1!5845 (_1!37543 lt!2621456)))))

(assert (=> b!7455764 (= lt!2621470 (matchR!9277 r1!5845 (_1!37543 lt!2621456)))))

(declare-fun lt!2621472 () Unit!165861)

(assert (=> b!7455764 (= lt!2621472 (mainMatchTheorem!4186 r1!5845 (_1!37543 lt!2621456)))))

(assert (=> b!7455764 (matchRSpec!4192 rTail!78 (_2!37543 lt!2621456))))

(declare-fun lt!2621464 () Unit!165861)

(assert (=> b!7455764 (= lt!2621464 (mainMatchTheorem!4186 rTail!78 (_2!37543 lt!2621456)))))

(assert (=> b!7455764 (matchRSpec!4192 lt!2621471 (_1!37543 lt!2621456))))

(declare-fun lt!2621458 () Unit!165861)

(assert (=> b!7455764 (= lt!2621458 (mainMatchTheorem!4186 lt!2621471 (_1!37543 lt!2621456)))))

(declare-fun b!7455765 () Bool)

(declare-fun tp!2160638 () Bool)

(assert (=> b!7455765 (= e!4450023 tp!2160638)))

(declare-fun b!7455766 () Bool)

(assert (=> b!7455766 (= e!4450027 tp_is_empty!49315)))

(declare-fun b!7455756 () Bool)

(declare-fun tp!2160645 () Bool)

(declare-fun tp!2160651 () Bool)

(assert (=> b!7455756 (= e!4450022 (and tp!2160645 tp!2160651))))

(declare-fun res!2990633 () Bool)

(assert (=> start!723598 (=> (not res!2990633) (not e!4450025))))

(assert (=> start!723598 (= res!2990633 (validRegex!10027 r1!5845))))

(assert (=> start!723598 e!4450025))

(assert (=> start!723598 e!4450023))

(assert (=> start!723598 e!4450022))

(assert (=> start!723598 e!4450027))

(declare-fun e!4450028 () Bool)

(assert (=> start!723598 e!4450028))

(declare-fun b!7455767 () Bool)

(assert (=> b!7455767 (= e!4450021 true)))

(assert (=> b!7455767 (= (matchR!9277 lt!2621465 s!13591) (matchRSpec!4192 lt!2621465 s!13591))))

(declare-fun lt!2621466 () Unit!165861)

(assert (=> b!7455767 (= lt!2621466 (mainMatchTheorem!4186 lt!2621465 s!13591))))

(assert (=> b!7455767 (= (matchR!9277 lt!2621475 s!13591) (matchRSpec!4192 lt!2621475 s!13591))))

(declare-fun lt!2621474 () Unit!165861)

(assert (=> b!7455767 (= lt!2621474 (mainMatchTheorem!4186 lt!2621475 s!13591))))

(declare-fun b!7455768 () Bool)

(declare-fun tp!2160649 () Bool)

(assert (=> b!7455768 (= e!4450028 (and tp_is_empty!49315 tp!2160649))))

(declare-fun b!7455769 () Bool)

(declare-fun tp!2160643 () Bool)

(declare-fun tp!2160636 () Bool)

(assert (=> b!7455769 (= e!4450022 (and tp!2160643 tp!2160636))))

(assert (= (and start!723598 res!2990633) b!7455755))

(assert (= (and b!7455755 res!2990629) b!7455761))

(assert (= (and b!7455761 res!2990634) b!7455751))

(assert (= (and b!7455751 (not res!2990632)) b!7455753))

(assert (= (and b!7455753 (not res!2990631)) b!7455760))

(assert (= (and b!7455760 (not res!2990628)) b!7455764))

(assert (= (and b!7455764 (not res!2990630)) b!7455767))

(get-info :version)

(assert (= (and start!723598 ((_ is ElementMatch!19513) r1!5845)) b!7455763))

(assert (= (and start!723598 ((_ is Concat!28358) r1!5845)) b!7455758))

(assert (= (and start!723598 ((_ is Star!19513) r1!5845)) b!7455765))

(assert (= (and start!723598 ((_ is Union!19513) r1!5845)) b!7455762))

(assert (= (and start!723598 ((_ is ElementMatch!19513) r2!5783)) b!7455750))

(assert (= (and start!723598 ((_ is Concat!28358) r2!5783)) b!7455769))

(assert (= (and start!723598 ((_ is Star!19513) r2!5783)) b!7455757))

(assert (= (and start!723598 ((_ is Union!19513) r2!5783)) b!7455756))

(assert (= (and start!723598 ((_ is ElementMatch!19513) rTail!78)) b!7455766))

(assert (= (and start!723598 ((_ is Concat!28358) rTail!78)) b!7455752))

(assert (= (and start!723598 ((_ is Star!19513) rTail!78)) b!7455759))

(assert (= (and start!723598 ((_ is Union!19513) rTail!78)) b!7455754))

(assert (= (and start!723598 ((_ is Cons!72105) s!13591)) b!7455768))

(declare-fun m!8059640 () Bool)

(assert (=> b!7455761 m!8059640))

(declare-fun m!8059642 () Bool)

(assert (=> start!723598 m!8059642))

(declare-fun m!8059644 () Bool)

(assert (=> b!7455760 m!8059644))

(declare-fun m!8059646 () Bool)

(assert (=> b!7455751 m!8059646))

(declare-fun m!8059648 () Bool)

(assert (=> b!7455751 m!8059648))

(declare-fun m!8059650 () Bool)

(assert (=> b!7455751 m!8059650))

(declare-fun m!8059652 () Bool)

(assert (=> b!7455751 m!8059652))

(declare-fun m!8059654 () Bool)

(assert (=> b!7455751 m!8059654))

(declare-fun m!8059656 () Bool)

(assert (=> b!7455751 m!8059656))

(declare-fun m!8059658 () Bool)

(assert (=> b!7455767 m!8059658))

(declare-fun m!8059660 () Bool)

(assert (=> b!7455767 m!8059660))

(declare-fun m!8059662 () Bool)

(assert (=> b!7455767 m!8059662))

(declare-fun m!8059664 () Bool)

(assert (=> b!7455767 m!8059664))

(declare-fun m!8059666 () Bool)

(assert (=> b!7455767 m!8059666))

(declare-fun m!8059668 () Bool)

(assert (=> b!7455767 m!8059668))

(declare-fun m!8059670 () Bool)

(assert (=> b!7455755 m!8059670))

(declare-fun m!8059672 () Bool)

(assert (=> b!7455753 m!8059672))

(declare-fun m!8059674 () Bool)

(assert (=> b!7455753 m!8059674))

(declare-fun m!8059676 () Bool)

(assert (=> b!7455753 m!8059676))

(declare-fun m!8059678 () Bool)

(assert (=> b!7455753 m!8059678))

(declare-fun m!8059680 () Bool)

(assert (=> b!7455753 m!8059680))

(assert (=> b!7455753 m!8059680))

(declare-fun m!8059682 () Bool)

(assert (=> b!7455753 m!8059682))

(declare-fun m!8059684 () Bool)

(assert (=> b!7455753 m!8059684))

(declare-fun m!8059686 () Bool)

(assert (=> b!7455753 m!8059686))

(declare-fun m!8059688 () Bool)

(assert (=> b!7455764 m!8059688))

(declare-fun m!8059690 () Bool)

(assert (=> b!7455764 m!8059690))

(declare-fun m!8059692 () Bool)

(assert (=> b!7455764 m!8059692))

(declare-fun m!8059694 () Bool)

(assert (=> b!7455764 m!8059694))

(declare-fun m!8059696 () Bool)

(assert (=> b!7455764 m!8059696))

(declare-fun m!8059698 () Bool)

(assert (=> b!7455764 m!8059698))

(declare-fun m!8059700 () Bool)

(assert (=> b!7455764 m!8059700))

(declare-fun m!8059702 () Bool)

(assert (=> b!7455764 m!8059702))

(declare-fun m!8059704 () Bool)

(assert (=> b!7455764 m!8059704))

(declare-fun m!8059706 () Bool)

(assert (=> b!7455764 m!8059706))

(check-sat (not b!7455753) (not b!7455769) (not b!7455758) (not b!7455760) (not b!7455764) (not b!7455752) (not b!7455765) (not b!7455762) (not b!7455751) (not b!7455756) (not b!7455757) (not b!7455754) (not b!7455755) tp_is_empty!49315 (not start!723598) (not b!7455759) (not b!7455761) (not b!7455768) (not b!7455767))
(check-sat)
