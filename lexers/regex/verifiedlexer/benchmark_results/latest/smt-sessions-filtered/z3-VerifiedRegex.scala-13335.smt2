; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723894 () Bool)

(assert start!723894)

(declare-fun b!7461616 () Bool)

(assert (=> b!7461616 true))

(assert (=> b!7461616 true))

(assert (=> b!7461616 true))

(declare-fun lambda!461665 () Int)

(declare-fun lambda!461664 () Int)

(assert (=> b!7461616 (not (= lambda!461665 lambda!461664))))

(assert (=> b!7461616 true))

(assert (=> b!7461616 true))

(assert (=> b!7461616 true))

(declare-fun b!7461605 () Bool)

(declare-fun e!4452904 () Bool)

(declare-fun tp_is_empty!49355 () Bool)

(declare-fun tp!2162655 () Bool)

(assert (=> b!7461605 (= e!4452904 (and tp_is_empty!49355 tp!2162655))))

(declare-fun b!7461606 () Bool)

(declare-fun e!4452901 () Bool)

(assert (=> b!7461606 (= e!4452901 tp_is_empty!49355)))

(declare-fun b!7461607 () Bool)

(declare-fun e!4452906 () Bool)

(declare-fun e!4452903 () Bool)

(assert (=> b!7461607 (= e!4452906 (not e!4452903))))

(declare-fun res!2993003 () Bool)

(assert (=> b!7461607 (=> res!2993003 e!4452903)))

(declare-fun lt!2622650 () Bool)

(assert (=> b!7461607 (= res!2993003 lt!2622650)))

(declare-datatypes ((C!39340 0))(
  ( (C!39341 (val!30068 Int)) )
))
(declare-datatypes ((Regex!19533 0))(
  ( (ElementMatch!19533 (c!1379360 C!39340)) (Concat!28378 (regOne!39578 Regex!19533) (regTwo!39578 Regex!19533)) (EmptyExpr!19533) (Star!19533 (reg!19862 Regex!19533)) (EmptyLang!19533) (Union!19533 (regOne!39579 Regex!19533) (regTwo!39579 Regex!19533)) )
))
(declare-fun lt!2622646 () Regex!19533)

(declare-datatypes ((List!72249 0))(
  ( (Nil!72125) (Cons!72125 (h!78573 C!39340) (t!386818 List!72249)) )
))
(declare-fun s!13591 () List!72249)

(declare-fun matchR!9297 (Regex!19533 List!72249) Bool)

(declare-fun matchRSpec!4212 (Regex!19533 List!72249) Bool)

(assert (=> b!7461607 (= (matchR!9297 lt!2622646 s!13591) (matchRSpec!4212 lt!2622646 s!13591))))

(declare-datatypes ((Unit!165901 0))(
  ( (Unit!165902) )
))
(declare-fun lt!2622649 () Unit!165901)

(declare-fun mainMatchTheorem!4206 (Regex!19533 List!72249) Unit!165901)

(assert (=> b!7461607 (= lt!2622649 (mainMatchTheorem!4206 lt!2622646 s!13591))))

(declare-fun lt!2622645 () Regex!19533)

(assert (=> b!7461607 (= lt!2622650 (matchRSpec!4212 lt!2622645 s!13591))))

(assert (=> b!7461607 (= lt!2622650 (matchR!9297 lt!2622645 s!13591))))

(declare-fun lt!2622644 () Unit!165901)

(assert (=> b!7461607 (= lt!2622644 (mainMatchTheorem!4206 lt!2622645 s!13591))))

(declare-fun r2!5783 () Regex!19533)

(declare-fun r1!5845 () Regex!19533)

(declare-fun rTail!78 () Regex!19533)

(assert (=> b!7461607 (= lt!2622646 (Union!19533 (Concat!28378 r1!5845 rTail!78) (Concat!28378 r2!5783 rTail!78)))))

(declare-fun lt!2622648 () Regex!19533)

(assert (=> b!7461607 (= lt!2622645 (Concat!28378 lt!2622648 rTail!78))))

(assert (=> b!7461607 (= lt!2622648 (Union!19533 r1!5845 r2!5783))))

(declare-fun b!7461608 () Bool)

(declare-fun tp!2162662 () Bool)

(assert (=> b!7461608 (= e!4452901 tp!2162662)))

(declare-fun b!7461610 () Bool)

(declare-fun tp!2162664 () Bool)

(declare-fun tp!2162656 () Bool)

(assert (=> b!7461610 (= e!4452901 (and tp!2162664 tp!2162656))))

(declare-fun b!7461611 () Bool)

(declare-fun e!4452905 () Bool)

(assert (=> b!7461611 (= e!4452905 tp_is_empty!49355)))

(declare-fun b!7461612 () Bool)

(declare-fun tp!2162663 () Bool)

(declare-fun tp!2162658 () Bool)

(assert (=> b!7461612 (= e!4452905 (and tp!2162663 tp!2162658))))

(declare-fun b!7461613 () Bool)

(declare-fun e!4452902 () Bool)

(assert (=> b!7461613 (= e!4452902 tp_is_empty!49355)))

(declare-fun b!7461614 () Bool)

(declare-fun res!2993004 () Bool)

(assert (=> b!7461614 (=> (not res!2993004) (not e!4452906))))

(declare-fun validRegex!10047 (Regex!19533) Bool)

(assert (=> b!7461614 (= res!2993004 (validRegex!10047 r2!5783))))

(declare-fun b!7461615 () Bool)

(declare-fun res!2993006 () Bool)

(assert (=> b!7461615 (=> (not res!2993006) (not e!4452906))))

(assert (=> b!7461615 (= res!2993006 (validRegex!10047 rTail!78))))

(assert (=> b!7461616 (= e!4452903 true)))

(declare-fun Exists!4152 (Int) Bool)

(assert (=> b!7461616 (= (Exists!4152 lambda!461664) (Exists!4152 lambda!461665))))

(declare-fun lt!2622647 () Unit!165901)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2486 (Regex!19533 Regex!19533 List!72249) Unit!165901)

(assert (=> b!7461616 (= lt!2622647 (lemmaExistCutMatchRandMatchRSpecEquivalent!2486 lt!2622648 rTail!78 s!13591))))

(declare-datatypes ((tuple2!68516 0))(
  ( (tuple2!68517 (_1!37561 List!72249) (_2!37561 List!72249)) )
))
(declare-datatypes ((Option!17090 0))(
  ( (None!17089) (Some!17089 (v!54218 tuple2!68516)) )
))
(declare-fun isDefined!13779 (Option!17090) Bool)

(declare-fun findConcatSeparation!3212 (Regex!19533 Regex!19533 List!72249 List!72249 List!72249) Option!17090)

(assert (=> b!7461616 (= (isDefined!13779 (findConcatSeparation!3212 lt!2622648 rTail!78 Nil!72125 s!13591 s!13591)) (Exists!4152 lambda!461664))))

(declare-fun lt!2622651 () Unit!165901)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2970 (Regex!19533 Regex!19533 List!72249) Unit!165901)

(assert (=> b!7461616 (= lt!2622651 (lemmaFindConcatSeparationEquivalentToExists!2970 lt!2622648 rTail!78 s!13591))))

(declare-fun b!7461617 () Bool)

(declare-fun tp!2162659 () Bool)

(declare-fun tp!2162653 () Bool)

(assert (=> b!7461617 (= e!4452905 (and tp!2162659 tp!2162653))))

(declare-fun b!7461618 () Bool)

(declare-fun tp!2162657 () Bool)

(declare-fun tp!2162666 () Bool)

(assert (=> b!7461618 (= e!4452902 (and tp!2162657 tp!2162666))))

(declare-fun b!7461619 () Bool)

(declare-fun tp!2162654 () Bool)

(declare-fun tp!2162652 () Bool)

(assert (=> b!7461619 (= e!4452902 (and tp!2162654 tp!2162652))))

(declare-fun res!2993005 () Bool)

(assert (=> start!723894 (=> (not res!2993005) (not e!4452906))))

(assert (=> start!723894 (= res!2993005 (validRegex!10047 r1!5845))))

(assert (=> start!723894 e!4452906))

(assert (=> start!723894 e!4452902))

(assert (=> start!723894 e!4452905))

(assert (=> start!723894 e!4452901))

(assert (=> start!723894 e!4452904))

(declare-fun b!7461609 () Bool)

(declare-fun tp!2162665 () Bool)

(assert (=> b!7461609 (= e!4452905 tp!2162665)))

(declare-fun b!7461620 () Bool)

(declare-fun tp!2162667 () Bool)

(assert (=> b!7461620 (= e!4452902 tp!2162667)))

(declare-fun b!7461621 () Bool)

(declare-fun tp!2162660 () Bool)

(declare-fun tp!2162661 () Bool)

(assert (=> b!7461621 (= e!4452901 (and tp!2162660 tp!2162661))))

(assert (= (and start!723894 res!2993005) b!7461614))

(assert (= (and b!7461614 res!2993004) b!7461615))

(assert (= (and b!7461615 res!2993006) b!7461607))

(assert (= (and b!7461607 (not res!2993003)) b!7461616))

(get-info :version)

(assert (= (and start!723894 ((_ is ElementMatch!19533) r1!5845)) b!7461613))

(assert (= (and start!723894 ((_ is Concat!28378) r1!5845)) b!7461618))

(assert (= (and start!723894 ((_ is Star!19533) r1!5845)) b!7461620))

(assert (= (and start!723894 ((_ is Union!19533) r1!5845)) b!7461619))

(assert (= (and start!723894 ((_ is ElementMatch!19533) r2!5783)) b!7461611))

(assert (= (and start!723894 ((_ is Concat!28378) r2!5783)) b!7461617))

(assert (= (and start!723894 ((_ is Star!19533) r2!5783)) b!7461609))

(assert (= (and start!723894 ((_ is Union!19533) r2!5783)) b!7461612))

(assert (= (and start!723894 ((_ is ElementMatch!19533) rTail!78)) b!7461606))

(assert (= (and start!723894 ((_ is Concat!28378) rTail!78)) b!7461621))

(assert (= (and start!723894 ((_ is Star!19533) rTail!78)) b!7461608))

(assert (= (and start!723894 ((_ is Union!19533) rTail!78)) b!7461610))

(assert (= (and start!723894 ((_ is Cons!72125) s!13591)) b!7461605))

(declare-fun m!8062642 () Bool)

(assert (=> start!723894 m!8062642))

(declare-fun m!8062644 () Bool)

(assert (=> b!7461616 m!8062644))

(declare-fun m!8062646 () Bool)

(assert (=> b!7461616 m!8062646))

(declare-fun m!8062648 () Bool)

(assert (=> b!7461616 m!8062648))

(declare-fun m!8062650 () Bool)

(assert (=> b!7461616 m!8062650))

(declare-fun m!8062652 () Bool)

(assert (=> b!7461616 m!8062652))

(assert (=> b!7461616 m!8062650))

(assert (=> b!7461616 m!8062648))

(declare-fun m!8062654 () Bool)

(assert (=> b!7461616 m!8062654))

(declare-fun m!8062656 () Bool)

(assert (=> b!7461607 m!8062656))

(declare-fun m!8062658 () Bool)

(assert (=> b!7461607 m!8062658))

(declare-fun m!8062660 () Bool)

(assert (=> b!7461607 m!8062660))

(declare-fun m!8062662 () Bool)

(assert (=> b!7461607 m!8062662))

(declare-fun m!8062664 () Bool)

(assert (=> b!7461607 m!8062664))

(declare-fun m!8062666 () Bool)

(assert (=> b!7461607 m!8062666))

(declare-fun m!8062668 () Bool)

(assert (=> b!7461614 m!8062668))

(declare-fun m!8062670 () Bool)

(assert (=> b!7461615 m!8062670))

(check-sat (not b!7461610) (not b!7461607) (not b!7461609) (not b!7461605) (not b!7461608) (not b!7461616) (not b!7461621) (not b!7461618) tp_is_empty!49355 (not b!7461612) (not b!7461619) (not start!723894) (not b!7461620) (not b!7461614) (not b!7461615) (not b!7461617))
(check-sat)
