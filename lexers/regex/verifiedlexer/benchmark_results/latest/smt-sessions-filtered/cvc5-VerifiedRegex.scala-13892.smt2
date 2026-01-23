; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738266 () Bool)

(assert start!738266)

(declare-fun b!7738519 () Bool)

(assert (=> b!7738519 true))

(assert (=> b!7738519 true))

(declare-fun bs!1964089 () Bool)

(declare-fun b!7738520 () Bool)

(assert (= bs!1964089 (and b!7738520 b!7738519)))

(declare-fun lambda!471457 () Int)

(declare-fun lambda!471456 () Int)

(assert (=> bs!1964089 (not (= lambda!471457 lambda!471456))))

(assert (=> b!7738520 true))

(assert (=> b!7738520 true))

(declare-fun res!3085934 () Bool)

(declare-fun e!4588512 () Bool)

(assert (=> start!738266 (=> (not res!3085934) (not e!4588512))))

(declare-datatypes ((C!41482 0))(
  ( (C!41483 (val!31181 Int)) )
))
(declare-datatypes ((Regex!20578 0))(
  ( (ElementMatch!20578 (c!1427022 C!41482)) (Concat!29423 (regOne!41668 Regex!20578) (regTwo!41668 Regex!20578)) (EmptyExpr!20578) (Star!20578 (reg!20907 Regex!20578)) (EmptyLang!20578) (Union!20578 (regOne!41669 Regex!20578) (regTwo!41669 Regex!20578)) )
))
(declare-fun r!14126 () Regex!20578)

(declare-fun validRegex!10996 (Regex!20578) Bool)

(assert (=> start!738266 (= res!3085934 (validRegex!10996 r!14126))))

(assert (=> start!738266 e!4588512))

(declare-fun e!4588513 () Bool)

(assert (=> start!738266 e!4588513))

(declare-fun e!4588511 () Bool)

(assert (=> start!738266 e!4588511))

(declare-fun b!7738518 () Bool)

(declare-fun tp_is_empty!51511 () Bool)

(assert (=> b!7738518 (= e!4588513 tp_is_empty!51511)))

(declare-fun e!4588514 () Bool)

(assert (=> b!7738519 (= e!4588512 (not e!4588514))))

(declare-fun res!3085932 () Bool)

(assert (=> b!7738519 (=> res!3085932 e!4588514)))

(declare-datatypes ((List!73425 0))(
  ( (Nil!73301) (Cons!73301 (h!79749 C!41482) (t!388160 List!73425)) )
))
(declare-fun s!9605 () List!73425)

(declare-fun matchR!10070 (Regex!20578 List!73425) Bool)

(assert (=> b!7738519 (= res!3085932 (matchR!10070 r!14126 s!9605))))

(declare-fun lt!2667852 () Bool)

(declare-fun Exists!4699 (Int) Bool)

(assert (=> b!7738519 (= lt!2667852 (Exists!4699 lambda!471456))))

(declare-datatypes ((tuple2!69610 0))(
  ( (tuple2!69611 (_1!38108 List!73425) (_2!38108 List!73425)) )
))
(declare-datatypes ((Option!17599 0))(
  ( (None!17598) (Some!17598 (v!54733 tuple2!69610)) )
))
(declare-fun lt!2667850 () Option!17599)

(declare-fun isDefined!14215 (Option!17599) Bool)

(assert (=> b!7738519 (= lt!2667852 (isDefined!14215 lt!2667850))))

(declare-fun findConcatSeparation!3629 (Regex!20578 Regex!20578 List!73425 List!73425 List!73425) Option!17599)

(assert (=> b!7738519 (= lt!2667850 (findConcatSeparation!3629 (regOne!41668 r!14126) (regTwo!41668 r!14126) Nil!73301 s!9605 s!9605))))

(declare-datatypes ((Unit!168236 0))(
  ( (Unit!168237) )
))
(declare-fun lt!2667845 () Unit!168236)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3387 (Regex!20578 Regex!20578 List!73425) Unit!168236)

(assert (=> b!7738519 (= lt!2667845 (lemmaFindConcatSeparationEquivalentToExists!3387 (regOne!41668 r!14126) (regTwo!41668 r!14126) s!9605))))

(declare-fun res!3085929 () Bool)

(declare-fun e!4588509 () Bool)

(assert (=> b!7738520 (=> res!3085929 e!4588509)))

(assert (=> b!7738520 (= res!3085929 (not (Exists!4699 lambda!471457)))))

(declare-fun b!7738521 () Bool)

(declare-fun e!4588508 () Unit!168236)

(declare-fun Unit!168238 () Unit!168236)

(assert (=> b!7738521 (= e!4588508 Unit!168238)))

(declare-fun lt!2667846 () tuple2!69610)

(declare-fun get!26058 (Option!17599) tuple2!69610)

(assert (=> b!7738521 (= lt!2667846 (get!26058 lt!2667850))))

(declare-fun lt!2667849 () Unit!168236)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!203 (Regex!20578 Regex!20578 List!73425 List!73425 List!73425) Unit!168236)

(assert (=> b!7738521 (= lt!2667849 (lemmaFindSeparationIsDefinedThenConcatMatches!203 (regOne!41668 r!14126) (regTwo!41668 r!14126) (_1!38108 lt!2667846) (_2!38108 lt!2667846) s!9605))))

(declare-fun res!3085930 () Bool)

(declare-fun ++!17777 (List!73425 List!73425) List!73425)

(assert (=> b!7738521 (= res!3085930 (matchR!10070 r!14126 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846))))))

(declare-fun e!4588510 () Bool)

(assert (=> b!7738521 (=> (not res!3085930) (not e!4588510))))

(assert (=> b!7738521 e!4588510))

(declare-fun b!7738522 () Bool)

(declare-fun Unit!168239 () Unit!168236)

(assert (=> b!7738522 (= e!4588508 Unit!168239)))

(declare-fun b!7738523 () Bool)

(assert (=> b!7738523 (= e!4588510 false)))

(declare-fun b!7738524 () Bool)

(declare-fun tp!2270899 () Bool)

(assert (=> b!7738524 (= e!4588513 tp!2270899)))

(declare-fun b!7738525 () Bool)

(declare-fun tp!2270902 () Bool)

(declare-fun tp!2270901 () Bool)

(assert (=> b!7738525 (= e!4588513 (and tp!2270902 tp!2270901))))

(declare-fun b!7738526 () Bool)

(assert (=> b!7738526 (= e!4588509 (validRegex!10996 (regTwo!41668 r!14126)))))

(declare-fun lt!2667847 () tuple2!69610)

(declare-fun matchRSpec!4643 (Regex!20578 List!73425) Bool)

(assert (=> b!7738526 (= (matchR!10070 (regOne!41668 r!14126) (_1!38108 lt!2667847)) (matchRSpec!4643 (regOne!41668 r!14126) (_1!38108 lt!2667847)))))

(declare-fun lt!2667851 () Unit!168236)

(declare-fun mainMatchTheorem!4613 (Regex!20578 List!73425) Unit!168236)

(assert (=> b!7738526 (= lt!2667851 (mainMatchTheorem!4613 (regOne!41668 r!14126) (_1!38108 lt!2667847)))))

(declare-fun pickWitness!535 (Int) tuple2!69610)

(assert (=> b!7738526 (= lt!2667847 (pickWitness!535 lambda!471457))))

(declare-fun b!7738527 () Bool)

(assert (=> b!7738527 (= e!4588514 e!4588509)))

(declare-fun res!3085931 () Bool)

(assert (=> b!7738527 (=> res!3085931 e!4588509)))

(assert (=> b!7738527 (= res!3085931 (Exists!4699 lambda!471456))))

(declare-fun lt!2667848 () Unit!168236)

(assert (=> b!7738527 (= lt!2667848 e!4588508)))

(declare-fun c!1427021 () Bool)

(assert (=> b!7738527 (= c!1427021 lt!2667852)))

(declare-fun b!7738528 () Bool)

(declare-fun res!3085933 () Bool)

(assert (=> b!7738528 (=> (not res!3085933) (not e!4588512))))

(assert (=> b!7738528 (= res!3085933 (and (not (is-EmptyExpr!20578 r!14126)) (not (is-EmptyLang!20578 r!14126)) (not (is-ElementMatch!20578 r!14126)) (not (is-Union!20578 r!14126)) (not (is-Star!20578 r!14126))))))

(declare-fun b!7738529 () Bool)

(declare-fun tp!2270898 () Bool)

(declare-fun tp!2270900 () Bool)

(assert (=> b!7738529 (= e!4588513 (and tp!2270898 tp!2270900))))

(declare-fun b!7738530 () Bool)

(declare-fun tp!2270903 () Bool)

(assert (=> b!7738530 (= e!4588511 (and tp_is_empty!51511 tp!2270903))))

(assert (= (and start!738266 res!3085934) b!7738528))

(assert (= (and b!7738528 res!3085933) b!7738519))

(assert (= (and b!7738519 (not res!3085932)) b!7738527))

(assert (= (and b!7738527 c!1427021) b!7738521))

(assert (= (and b!7738527 (not c!1427021)) b!7738522))

(assert (= (and b!7738521 res!3085930) b!7738523))

(assert (= (and b!7738527 (not res!3085931)) b!7738520))

(assert (= (and b!7738520 (not res!3085929)) b!7738526))

(assert (= (and start!738266 (is-ElementMatch!20578 r!14126)) b!7738518))

(assert (= (and start!738266 (is-Concat!29423 r!14126)) b!7738525))

(assert (= (and start!738266 (is-Star!20578 r!14126)) b!7738524))

(assert (= (and start!738266 (is-Union!20578 r!14126)) b!7738529))

(assert (= (and start!738266 (is-Cons!73301 s!9605)) b!7738530))

(declare-fun m!8209586 () Bool)

(assert (=> start!738266 m!8209586))

(declare-fun m!8209588 () Bool)

(assert (=> b!7738521 m!8209588))

(declare-fun m!8209590 () Bool)

(assert (=> b!7738521 m!8209590))

(declare-fun m!8209592 () Bool)

(assert (=> b!7738521 m!8209592))

(assert (=> b!7738521 m!8209592))

(declare-fun m!8209594 () Bool)

(assert (=> b!7738521 m!8209594))

(declare-fun m!8209596 () Bool)

(assert (=> b!7738519 m!8209596))

(declare-fun m!8209598 () Bool)

(assert (=> b!7738519 m!8209598))

(declare-fun m!8209600 () Bool)

(assert (=> b!7738519 m!8209600))

(declare-fun m!8209602 () Bool)

(assert (=> b!7738519 m!8209602))

(declare-fun m!8209604 () Bool)

(assert (=> b!7738519 m!8209604))

(assert (=> b!7738527 m!8209600))

(declare-fun m!8209606 () Bool)

(assert (=> b!7738520 m!8209606))

(declare-fun m!8209608 () Bool)

(assert (=> b!7738526 m!8209608))

(declare-fun m!8209610 () Bool)

(assert (=> b!7738526 m!8209610))

(declare-fun m!8209612 () Bool)

(assert (=> b!7738526 m!8209612))

(declare-fun m!8209614 () Bool)

(assert (=> b!7738526 m!8209614))

(declare-fun m!8209616 () Bool)

(assert (=> b!7738526 m!8209616))

(push 1)

(assert (not b!7738524))

(assert tp_is_empty!51511)

(assert (not b!7738521))

(assert (not b!7738525))

(assert (not b!7738520))

(assert (not b!7738527))

(assert (not b!7738529))

(assert (not b!7738530))

(assert (not b!7738526))

(assert (not start!738266))

(assert (not b!7738519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2340745 () Bool)

(declare-fun choose!59344 (Int) Bool)

(assert (=> d!2340745 (= (Exists!4699 lambda!471457) (choose!59344 lambda!471457))))

(declare-fun bs!1964091 () Bool)

(assert (= bs!1964091 d!2340745))

(declare-fun m!8209650 () Bool)

(assert (=> bs!1964091 m!8209650))

(assert (=> b!7738520 d!2340745))

(declare-fun b!7738612 () Bool)

(declare-fun res!3085981 () Bool)

(declare-fun e!4588559 () Bool)

(assert (=> b!7738612 (=> res!3085981 e!4588559)))

(assert (=> b!7738612 (= res!3085981 (not (is-Concat!29423 r!14126)))))

(declare-fun e!4588563 () Bool)

(assert (=> b!7738612 (= e!4588563 e!4588559)))

(declare-fun b!7738613 () Bool)

(declare-fun res!3085983 () Bool)

(declare-fun e!4588562 () Bool)

(assert (=> b!7738613 (=> (not res!3085983) (not e!4588562))))

(declare-fun call!716675 () Bool)

(assert (=> b!7738613 (= res!3085983 call!716675)))

(assert (=> b!7738613 (= e!4588563 e!4588562)))

(declare-fun b!7738614 () Bool)

(declare-fun e!4588564 () Bool)

(assert (=> b!7738614 (= e!4588564 e!4588563)))

(declare-fun c!1427032 () Bool)

(assert (=> b!7738614 (= c!1427032 (is-Union!20578 r!14126))))

(declare-fun bm!716670 () Bool)

(declare-fun c!1427031 () Bool)

(declare-fun call!716677 () Bool)

(assert (=> bm!716670 (= call!716677 (validRegex!10996 (ite c!1427031 (reg!20907 r!14126) (ite c!1427032 (regOne!41669 r!14126) (regOne!41668 r!14126)))))))

(declare-fun d!2340747 () Bool)

(declare-fun res!3085980 () Bool)

(declare-fun e!4588561 () Bool)

(assert (=> d!2340747 (=> res!3085980 e!4588561)))

(assert (=> d!2340747 (= res!3085980 (is-ElementMatch!20578 r!14126))))

(assert (=> d!2340747 (= (validRegex!10996 r!14126) e!4588561)))

(declare-fun b!7738615 () Bool)

(declare-fun e!4588560 () Bool)

(assert (=> b!7738615 (= e!4588564 e!4588560)))

(declare-fun res!3085979 () Bool)

(declare-fun nullable!9051 (Regex!20578) Bool)

(assert (=> b!7738615 (= res!3085979 (not (nullable!9051 (reg!20907 r!14126))))))

(assert (=> b!7738615 (=> (not res!3085979) (not e!4588560))))

(declare-fun b!7738616 () Bool)

(declare-fun e!4588558 () Bool)

(assert (=> b!7738616 (= e!4588559 e!4588558)))

(declare-fun res!3085982 () Bool)

(assert (=> b!7738616 (=> (not res!3085982) (not e!4588558))))

(assert (=> b!7738616 (= res!3085982 call!716675)))

(declare-fun b!7738617 () Bool)

(declare-fun call!716676 () Bool)

(assert (=> b!7738617 (= e!4588558 call!716676)))

(declare-fun b!7738618 () Bool)

(assert (=> b!7738618 (= e!4588561 e!4588564)))

(assert (=> b!7738618 (= c!1427031 (is-Star!20578 r!14126))))

(declare-fun bm!716671 () Bool)

(assert (=> bm!716671 (= call!716675 call!716677)))

(declare-fun b!7738619 () Bool)

(assert (=> b!7738619 (= e!4588560 call!716677)))

(declare-fun bm!716672 () Bool)

(assert (=> bm!716672 (= call!716676 (validRegex!10996 (ite c!1427032 (regTwo!41669 r!14126) (regTwo!41668 r!14126))))))

(declare-fun b!7738620 () Bool)

(assert (=> b!7738620 (= e!4588562 call!716676)))

(assert (= (and d!2340747 (not res!3085980)) b!7738618))

(assert (= (and b!7738618 c!1427031) b!7738615))

(assert (= (and b!7738618 (not c!1427031)) b!7738614))

(assert (= (and b!7738615 res!3085979) b!7738619))

(assert (= (and b!7738614 c!1427032) b!7738613))

(assert (= (and b!7738614 (not c!1427032)) b!7738612))

(assert (= (and b!7738613 res!3085983) b!7738620))

(assert (= (and b!7738612 (not res!3085981)) b!7738616))

(assert (= (and b!7738616 res!3085982) b!7738617))

(assert (= (or b!7738613 b!7738616) bm!716671))

(assert (= (or b!7738620 b!7738617) bm!716672))

(assert (= (or b!7738619 bm!716671) bm!716670))

(declare-fun m!8209654 () Bool)

(assert (=> bm!716670 m!8209654))

(declare-fun m!8209656 () Bool)

(assert (=> b!7738615 m!8209656))

(declare-fun m!8209658 () Bool)

(assert (=> bm!716672 m!8209658))

(assert (=> start!738266 d!2340747))

(declare-fun b!7738649 () Bool)

(declare-fun e!4588584 () Bool)

(declare-fun e!4588579 () Bool)

(assert (=> b!7738649 (= e!4588584 e!4588579)))

(declare-fun res!3086006 () Bool)

(assert (=> b!7738649 (=> res!3086006 e!4588579)))

(declare-fun call!716680 () Bool)

(assert (=> b!7738649 (= res!3086006 call!716680)))

(declare-fun d!2340755 () Bool)

(declare-fun e!4588582 () Bool)

(assert (=> d!2340755 e!4588582))

(declare-fun c!1427041 () Bool)

(assert (=> d!2340755 (= c!1427041 (is-EmptyExpr!20578 r!14126))))

(declare-fun lt!2667882 () Bool)

(declare-fun e!4588583 () Bool)

(assert (=> d!2340755 (= lt!2667882 e!4588583)))

(declare-fun c!1427040 () Bool)

(declare-fun isEmpty!41984 (List!73425) Bool)

(assert (=> d!2340755 (= c!1427040 (isEmpty!41984 s!9605))))

(assert (=> d!2340755 (validRegex!10996 r!14126)))

(assert (=> d!2340755 (= (matchR!10070 r!14126 s!9605) lt!2667882)))

(declare-fun bm!716675 () Bool)

(assert (=> bm!716675 (= call!716680 (isEmpty!41984 s!9605))))

(declare-fun b!7738650 () Bool)

(declare-fun res!3086004 () Bool)

(declare-fun e!4588585 () Bool)

(assert (=> b!7738650 (=> res!3086004 e!4588585)))

(assert (=> b!7738650 (= res!3086004 (not (is-ElementMatch!20578 r!14126)))))

(declare-fun e!4588581 () Bool)

(assert (=> b!7738650 (= e!4588581 e!4588585)))

(declare-fun b!7738651 () Bool)

(declare-fun res!3086000 () Bool)

(assert (=> b!7738651 (=> res!3086000 e!4588579)))

(declare-fun tail!15350 (List!73425) List!73425)

(assert (=> b!7738651 (= res!3086000 (not (isEmpty!41984 (tail!15350 s!9605))))))

(declare-fun b!7738652 () Bool)

(declare-fun derivativeStep!6010 (Regex!20578 C!41482) Regex!20578)

(declare-fun head!15810 (List!73425) C!41482)

(assert (=> b!7738652 (= e!4588583 (matchR!10070 (derivativeStep!6010 r!14126 (head!15810 s!9605)) (tail!15350 s!9605)))))

(declare-fun b!7738653 () Bool)

(assert (=> b!7738653 (= e!4588581 (not lt!2667882))))

(declare-fun b!7738654 () Bool)

(declare-fun res!3086002 () Bool)

(assert (=> b!7738654 (=> res!3086002 e!4588585)))

(declare-fun e!4588580 () Bool)

(assert (=> b!7738654 (= res!3086002 e!4588580)))

(declare-fun res!3086003 () Bool)

(assert (=> b!7738654 (=> (not res!3086003) (not e!4588580))))

(assert (=> b!7738654 (= res!3086003 lt!2667882)))

(declare-fun b!7738655 () Bool)

(assert (=> b!7738655 (= e!4588580 (= (head!15810 s!9605) (c!1427022 r!14126)))))

(declare-fun b!7738656 () Bool)

(declare-fun res!3086005 () Bool)

(assert (=> b!7738656 (=> (not res!3086005) (not e!4588580))))

(assert (=> b!7738656 (= res!3086005 (not call!716680))))

(declare-fun b!7738657 () Bool)

(assert (=> b!7738657 (= e!4588579 (not (= (head!15810 s!9605) (c!1427022 r!14126))))))

(declare-fun b!7738658 () Bool)

(assert (=> b!7738658 (= e!4588583 (nullable!9051 r!14126))))

(declare-fun b!7738659 () Bool)

(assert (=> b!7738659 (= e!4588582 e!4588581)))

(declare-fun c!1427039 () Bool)

(assert (=> b!7738659 (= c!1427039 (is-EmptyLang!20578 r!14126))))

(declare-fun b!7738660 () Bool)

(assert (=> b!7738660 (= e!4588585 e!4588584)))

(declare-fun res!3086001 () Bool)

(assert (=> b!7738660 (=> (not res!3086001) (not e!4588584))))

(assert (=> b!7738660 (= res!3086001 (not lt!2667882))))

(declare-fun b!7738661 () Bool)

(assert (=> b!7738661 (= e!4588582 (= lt!2667882 call!716680))))

(declare-fun b!7738662 () Bool)

(declare-fun res!3086007 () Bool)

(assert (=> b!7738662 (=> (not res!3086007) (not e!4588580))))

(assert (=> b!7738662 (= res!3086007 (isEmpty!41984 (tail!15350 s!9605)))))

(assert (= (and d!2340755 c!1427040) b!7738658))

(assert (= (and d!2340755 (not c!1427040)) b!7738652))

(assert (= (and d!2340755 c!1427041) b!7738661))

(assert (= (and d!2340755 (not c!1427041)) b!7738659))

(assert (= (and b!7738659 c!1427039) b!7738653))

(assert (= (and b!7738659 (not c!1427039)) b!7738650))

(assert (= (and b!7738650 (not res!3086004)) b!7738654))

(assert (= (and b!7738654 res!3086003) b!7738656))

(assert (= (and b!7738656 res!3086005) b!7738662))

(assert (= (and b!7738662 res!3086007) b!7738655))

(assert (= (and b!7738654 (not res!3086002)) b!7738660))

(assert (= (and b!7738660 res!3086001) b!7738649))

(assert (= (and b!7738649 (not res!3086006)) b!7738651))

(assert (= (and b!7738651 (not res!3086000)) b!7738657))

(assert (= (or b!7738661 b!7738649 b!7738656) bm!716675))

(declare-fun m!8209666 () Bool)

(assert (=> d!2340755 m!8209666))

(assert (=> d!2340755 m!8209586))

(declare-fun m!8209668 () Bool)

(assert (=> b!7738662 m!8209668))

(assert (=> b!7738662 m!8209668))

(declare-fun m!8209670 () Bool)

(assert (=> b!7738662 m!8209670))

(assert (=> bm!716675 m!8209666))

(declare-fun m!8209672 () Bool)

(assert (=> b!7738655 m!8209672))

(assert (=> b!7738652 m!8209672))

(assert (=> b!7738652 m!8209672))

(declare-fun m!8209674 () Bool)

(assert (=> b!7738652 m!8209674))

(assert (=> b!7738652 m!8209668))

(assert (=> b!7738652 m!8209674))

(assert (=> b!7738652 m!8209668))

(declare-fun m!8209676 () Bool)

(assert (=> b!7738652 m!8209676))

(assert (=> b!7738657 m!8209672))

(assert (=> b!7738651 m!8209668))

(assert (=> b!7738651 m!8209668))

(assert (=> b!7738651 m!8209670))

(declare-fun m!8209678 () Bool)

(assert (=> b!7738658 m!8209678))

(assert (=> b!7738519 d!2340755))

(declare-fun bs!1964094 () Bool)

(declare-fun d!2340759 () Bool)

(assert (= bs!1964094 (and d!2340759 b!7738519)))

(declare-fun lambda!471470 () Int)

(assert (=> bs!1964094 (= lambda!471470 lambda!471456)))

(declare-fun bs!1964095 () Bool)

(assert (= bs!1964095 (and d!2340759 b!7738520)))

(assert (=> bs!1964095 (not (= lambda!471470 lambda!471457))))

(assert (=> d!2340759 true))

(assert (=> d!2340759 true))

(assert (=> d!2340759 true))

(assert (=> d!2340759 (= (isDefined!14215 (findConcatSeparation!3629 (regOne!41668 r!14126) (regTwo!41668 r!14126) Nil!73301 s!9605 s!9605)) (Exists!4699 lambda!471470))))

(declare-fun lt!2667885 () Unit!168236)

(declare-fun choose!59345 (Regex!20578 Regex!20578 List!73425) Unit!168236)

(assert (=> d!2340759 (= lt!2667885 (choose!59345 (regOne!41668 r!14126) (regTwo!41668 r!14126) s!9605))))

(assert (=> d!2340759 (validRegex!10996 (regOne!41668 r!14126))))

(assert (=> d!2340759 (= (lemmaFindConcatSeparationEquivalentToExists!3387 (regOne!41668 r!14126) (regTwo!41668 r!14126) s!9605) lt!2667885)))

(declare-fun bs!1964096 () Bool)

(assert (= bs!1964096 d!2340759))

(declare-fun m!8209680 () Bool)

(assert (=> bs!1964096 m!8209680))

(assert (=> bs!1964096 m!8209604))

(declare-fun m!8209682 () Bool)

(assert (=> bs!1964096 m!8209682))

(assert (=> bs!1964096 m!8209604))

(declare-fun m!8209684 () Bool)

(assert (=> bs!1964096 m!8209684))

(declare-fun m!8209686 () Bool)

(assert (=> bs!1964096 m!8209686))

(assert (=> b!7738519 d!2340759))

(declare-fun b!7738727 () Bool)

(declare-fun e!4588619 () Option!17599)

(assert (=> b!7738727 (= e!4588619 (Some!17598 (tuple2!69611 Nil!73301 s!9605)))))

(declare-fun b!7738728 () Bool)

(declare-fun lt!2667896 () Unit!168236)

(declare-fun lt!2667897 () Unit!168236)

(assert (=> b!7738728 (= lt!2667896 lt!2667897)))

(assert (=> b!7738728 (= (++!17777 (++!17777 Nil!73301 (Cons!73301 (h!79749 s!9605) Nil!73301)) (t!388160 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3325 (List!73425 C!41482 List!73425 List!73425) Unit!168236)

(assert (=> b!7738728 (= lt!2667897 (lemmaMoveElementToOtherListKeepsConcatEq!3325 Nil!73301 (h!79749 s!9605) (t!388160 s!9605) s!9605))))

(declare-fun e!4588620 () Option!17599)

(assert (=> b!7738728 (= e!4588620 (findConcatSeparation!3629 (regOne!41668 r!14126) (regTwo!41668 r!14126) (++!17777 Nil!73301 (Cons!73301 (h!79749 s!9605) Nil!73301)) (t!388160 s!9605) s!9605))))

(declare-fun b!7738729 () Bool)

(assert (=> b!7738729 (= e!4588620 None!17598)))

(declare-fun b!7738730 () Bool)

(declare-fun res!3086049 () Bool)

(declare-fun e!4588621 () Bool)

(assert (=> b!7738730 (=> (not res!3086049) (not e!4588621))))

(declare-fun lt!2667895 () Option!17599)

(assert (=> b!7738730 (= res!3086049 (matchR!10070 (regOne!41668 r!14126) (_1!38108 (get!26058 lt!2667895))))))

(declare-fun b!7738731 () Bool)

(declare-fun e!4588623 () Bool)

(assert (=> b!7738731 (= e!4588623 (matchR!10070 (regTwo!41668 r!14126) s!9605))))

(declare-fun d!2340761 () Bool)

(declare-fun e!4588622 () Bool)

(assert (=> d!2340761 e!4588622))

(declare-fun res!3086048 () Bool)

(assert (=> d!2340761 (=> res!3086048 e!4588622)))

(assert (=> d!2340761 (= res!3086048 e!4588621)))

(declare-fun res!3086047 () Bool)

(assert (=> d!2340761 (=> (not res!3086047) (not e!4588621))))

(assert (=> d!2340761 (= res!3086047 (isDefined!14215 lt!2667895))))

(assert (=> d!2340761 (= lt!2667895 e!4588619)))

(declare-fun c!1427055 () Bool)

(assert (=> d!2340761 (= c!1427055 e!4588623)))

(declare-fun res!3086050 () Bool)

(assert (=> d!2340761 (=> (not res!3086050) (not e!4588623))))

(assert (=> d!2340761 (= res!3086050 (matchR!10070 (regOne!41668 r!14126) Nil!73301))))

(assert (=> d!2340761 (validRegex!10996 (regOne!41668 r!14126))))

(assert (=> d!2340761 (= (findConcatSeparation!3629 (regOne!41668 r!14126) (regTwo!41668 r!14126) Nil!73301 s!9605 s!9605) lt!2667895)))

(declare-fun b!7738732 () Bool)

(declare-fun res!3086046 () Bool)

(assert (=> b!7738732 (=> (not res!3086046) (not e!4588621))))

(assert (=> b!7738732 (= res!3086046 (matchR!10070 (regTwo!41668 r!14126) (_2!38108 (get!26058 lt!2667895))))))

(declare-fun b!7738733 () Bool)

(assert (=> b!7738733 (= e!4588619 e!4588620)))

(declare-fun c!1427056 () Bool)

(assert (=> b!7738733 (= c!1427056 (is-Nil!73301 s!9605))))

(declare-fun b!7738734 () Bool)

(assert (=> b!7738734 (= e!4588621 (= (++!17777 (_1!38108 (get!26058 lt!2667895)) (_2!38108 (get!26058 lt!2667895))) s!9605))))

(declare-fun b!7738735 () Bool)

(assert (=> b!7738735 (= e!4588622 (not (isDefined!14215 lt!2667895)))))

(assert (= (and d!2340761 res!3086050) b!7738731))

(assert (= (and d!2340761 c!1427055) b!7738727))

(assert (= (and d!2340761 (not c!1427055)) b!7738733))

(assert (= (and b!7738733 c!1427056) b!7738729))

(assert (= (and b!7738733 (not c!1427056)) b!7738728))

(assert (= (and d!2340761 res!3086047) b!7738730))

(assert (= (and b!7738730 res!3086049) b!7738732))

(assert (= (and b!7738732 res!3086046) b!7738734))

(assert (= (and d!2340761 (not res!3086048)) b!7738735))

(declare-fun m!8209698 () Bool)

(assert (=> b!7738735 m!8209698))

(assert (=> d!2340761 m!8209698))

(declare-fun m!8209700 () Bool)

(assert (=> d!2340761 m!8209700))

(assert (=> d!2340761 m!8209682))

(declare-fun m!8209702 () Bool)

(assert (=> b!7738734 m!8209702))

(declare-fun m!8209704 () Bool)

(assert (=> b!7738734 m!8209704))

(declare-fun m!8209708 () Bool)

(assert (=> b!7738731 m!8209708))

(assert (=> b!7738730 m!8209702))

(declare-fun m!8209710 () Bool)

(assert (=> b!7738730 m!8209710))

(assert (=> b!7738732 m!8209702))

(declare-fun m!8209712 () Bool)

(assert (=> b!7738732 m!8209712))

(declare-fun m!8209714 () Bool)

(assert (=> b!7738728 m!8209714))

(assert (=> b!7738728 m!8209714))

(declare-fun m!8209718 () Bool)

(assert (=> b!7738728 m!8209718))

(declare-fun m!8209720 () Bool)

(assert (=> b!7738728 m!8209720))

(assert (=> b!7738728 m!8209714))

(declare-fun m!8209722 () Bool)

(assert (=> b!7738728 m!8209722))

(assert (=> b!7738519 d!2340761))

(declare-fun d!2340763 () Bool)

(assert (=> d!2340763 (= (Exists!4699 lambda!471456) (choose!59344 lambda!471456))))

(declare-fun bs!1964097 () Bool)

(assert (= bs!1964097 d!2340763))

(declare-fun m!8209724 () Bool)

(assert (=> bs!1964097 m!8209724))

(assert (=> b!7738519 d!2340763))

(declare-fun d!2340767 () Bool)

(declare-fun isEmpty!41985 (Option!17599) Bool)

(assert (=> d!2340767 (= (isDefined!14215 lt!2667850) (not (isEmpty!41985 lt!2667850)))))

(declare-fun bs!1964098 () Bool)

(assert (= bs!1964098 d!2340767))

(declare-fun m!8209726 () Bool)

(assert (=> bs!1964098 m!8209726))

(assert (=> b!7738519 d!2340767))

(assert (=> b!7738527 d!2340763))

(declare-fun d!2340769 () Bool)

(assert (=> d!2340769 (= (get!26058 lt!2667850) (v!54733 lt!2667850))))

(assert (=> b!7738521 d!2340769))

(declare-fun d!2340771 () Bool)

(assert (=> d!2340771 (matchR!10070 (Concat!29423 (regOne!41668 r!14126) (regTwo!41668 r!14126)) (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846)))))

(declare-fun lt!2667900 () Unit!168236)

(declare-fun choose!59346 (Regex!20578 Regex!20578 List!73425 List!73425 List!73425) Unit!168236)

(assert (=> d!2340771 (= lt!2667900 (choose!59346 (regOne!41668 r!14126) (regTwo!41668 r!14126) (_1!38108 lt!2667846) (_2!38108 lt!2667846) s!9605))))

(assert (=> d!2340771 (validRegex!10996 (regOne!41668 r!14126))))

(assert (=> d!2340771 (= (lemmaFindSeparationIsDefinedThenConcatMatches!203 (regOne!41668 r!14126) (regTwo!41668 r!14126) (_1!38108 lt!2667846) (_2!38108 lt!2667846) s!9605) lt!2667900)))

(declare-fun bs!1964099 () Bool)

(assert (= bs!1964099 d!2340771))

(assert (=> bs!1964099 m!8209592))

(assert (=> bs!1964099 m!8209592))

(declare-fun m!8209728 () Bool)

(assert (=> bs!1964099 m!8209728))

(declare-fun m!8209730 () Bool)

(assert (=> bs!1964099 m!8209730))

(assert (=> bs!1964099 m!8209682))

(assert (=> b!7738521 d!2340771))

(declare-fun b!7738736 () Bool)

(declare-fun e!4588629 () Bool)

(declare-fun e!4588624 () Bool)

(assert (=> b!7738736 (= e!4588629 e!4588624)))

(declare-fun res!3086057 () Bool)

(assert (=> b!7738736 (=> res!3086057 e!4588624)))

(declare-fun call!716684 () Bool)

(assert (=> b!7738736 (= res!3086057 call!716684)))

(declare-fun d!2340773 () Bool)

(declare-fun e!4588627 () Bool)

(assert (=> d!2340773 e!4588627))

(declare-fun c!1427059 () Bool)

(assert (=> d!2340773 (= c!1427059 (is-EmptyExpr!20578 r!14126))))

(declare-fun lt!2667901 () Bool)

(declare-fun e!4588628 () Bool)

(assert (=> d!2340773 (= lt!2667901 e!4588628)))

(declare-fun c!1427058 () Bool)

(assert (=> d!2340773 (= c!1427058 (isEmpty!41984 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846))))))

(assert (=> d!2340773 (validRegex!10996 r!14126)))

(assert (=> d!2340773 (= (matchR!10070 r!14126 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846))) lt!2667901)))

(declare-fun bm!716679 () Bool)

(assert (=> bm!716679 (= call!716684 (isEmpty!41984 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846))))))

(declare-fun b!7738737 () Bool)

(declare-fun res!3086055 () Bool)

(declare-fun e!4588630 () Bool)

(assert (=> b!7738737 (=> res!3086055 e!4588630)))

(assert (=> b!7738737 (= res!3086055 (not (is-ElementMatch!20578 r!14126)))))

(declare-fun e!4588626 () Bool)

(assert (=> b!7738737 (= e!4588626 e!4588630)))

(declare-fun b!7738738 () Bool)

(declare-fun res!3086051 () Bool)

(assert (=> b!7738738 (=> res!3086051 e!4588624)))

(assert (=> b!7738738 (= res!3086051 (not (isEmpty!41984 (tail!15350 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846))))))))

(declare-fun b!7738739 () Bool)

(assert (=> b!7738739 (= e!4588628 (matchR!10070 (derivativeStep!6010 r!14126 (head!15810 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846)))) (tail!15350 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846)))))))

(declare-fun b!7738740 () Bool)

(assert (=> b!7738740 (= e!4588626 (not lt!2667901))))

(declare-fun b!7738741 () Bool)

(declare-fun res!3086053 () Bool)

(assert (=> b!7738741 (=> res!3086053 e!4588630)))

(declare-fun e!4588625 () Bool)

(assert (=> b!7738741 (= res!3086053 e!4588625)))

(declare-fun res!3086054 () Bool)

(assert (=> b!7738741 (=> (not res!3086054) (not e!4588625))))

(assert (=> b!7738741 (= res!3086054 lt!2667901)))

(declare-fun b!7738742 () Bool)

(assert (=> b!7738742 (= e!4588625 (= (head!15810 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846))) (c!1427022 r!14126)))))

(declare-fun b!7738743 () Bool)

(declare-fun res!3086056 () Bool)

(assert (=> b!7738743 (=> (not res!3086056) (not e!4588625))))

(assert (=> b!7738743 (= res!3086056 (not call!716684))))

(declare-fun b!7738744 () Bool)

(assert (=> b!7738744 (= e!4588624 (not (= (head!15810 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846))) (c!1427022 r!14126))))))

(declare-fun b!7738745 () Bool)

(assert (=> b!7738745 (= e!4588628 (nullable!9051 r!14126))))

(declare-fun b!7738746 () Bool)

(assert (=> b!7738746 (= e!4588627 e!4588626)))

(declare-fun c!1427057 () Bool)

(assert (=> b!7738746 (= c!1427057 (is-EmptyLang!20578 r!14126))))

(declare-fun b!7738747 () Bool)

(assert (=> b!7738747 (= e!4588630 e!4588629)))

(declare-fun res!3086052 () Bool)

(assert (=> b!7738747 (=> (not res!3086052) (not e!4588629))))

(assert (=> b!7738747 (= res!3086052 (not lt!2667901))))

(declare-fun b!7738748 () Bool)

(assert (=> b!7738748 (= e!4588627 (= lt!2667901 call!716684))))

(declare-fun b!7738749 () Bool)

(declare-fun res!3086058 () Bool)

(assert (=> b!7738749 (=> (not res!3086058) (not e!4588625))))

(assert (=> b!7738749 (= res!3086058 (isEmpty!41984 (tail!15350 (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846)))))))

(assert (= (and d!2340773 c!1427058) b!7738745))

(assert (= (and d!2340773 (not c!1427058)) b!7738739))

(assert (= (and d!2340773 c!1427059) b!7738748))

(assert (= (and d!2340773 (not c!1427059)) b!7738746))

(assert (= (and b!7738746 c!1427057) b!7738740))

(assert (= (and b!7738746 (not c!1427057)) b!7738737))

(assert (= (and b!7738737 (not res!3086055)) b!7738741))

(assert (= (and b!7738741 res!3086054) b!7738743))

(assert (= (and b!7738743 res!3086056) b!7738749))

(assert (= (and b!7738749 res!3086058) b!7738742))

(assert (= (and b!7738741 (not res!3086053)) b!7738747))

(assert (= (and b!7738747 res!3086052) b!7738736))

(assert (= (and b!7738736 (not res!3086057)) b!7738738))

(assert (= (and b!7738738 (not res!3086051)) b!7738744))

(assert (= (or b!7738748 b!7738736 b!7738743) bm!716679))

(assert (=> d!2340773 m!8209592))

(declare-fun m!8209732 () Bool)

(assert (=> d!2340773 m!8209732))

(assert (=> d!2340773 m!8209586))

(assert (=> b!7738749 m!8209592))

(declare-fun m!8209734 () Bool)

(assert (=> b!7738749 m!8209734))

(assert (=> b!7738749 m!8209734))

(declare-fun m!8209736 () Bool)

(assert (=> b!7738749 m!8209736))

(assert (=> bm!716679 m!8209592))

(assert (=> bm!716679 m!8209732))

(assert (=> b!7738742 m!8209592))

(declare-fun m!8209738 () Bool)

(assert (=> b!7738742 m!8209738))

(assert (=> b!7738739 m!8209592))

(assert (=> b!7738739 m!8209738))

(assert (=> b!7738739 m!8209738))

(declare-fun m!8209740 () Bool)

(assert (=> b!7738739 m!8209740))

(assert (=> b!7738739 m!8209592))

(assert (=> b!7738739 m!8209734))

(assert (=> b!7738739 m!8209740))

(assert (=> b!7738739 m!8209734))

(declare-fun m!8209742 () Bool)

(assert (=> b!7738739 m!8209742))

(assert (=> b!7738744 m!8209592))

(assert (=> b!7738744 m!8209738))

(assert (=> b!7738738 m!8209592))

(assert (=> b!7738738 m!8209734))

(assert (=> b!7738738 m!8209734))

(assert (=> b!7738738 m!8209736))

(assert (=> b!7738745 m!8209678))

(assert (=> b!7738521 d!2340773))

(declare-fun b!7738771 () Bool)

(declare-fun e!4588642 () List!73425)

(assert (=> b!7738771 (= e!4588642 (Cons!73301 (h!79749 (_1!38108 lt!2667846)) (++!17777 (t!388160 (_1!38108 lt!2667846)) (_2!38108 lt!2667846))))))

(declare-fun d!2340775 () Bool)

(declare-fun e!4588641 () Bool)

(assert (=> d!2340775 e!4588641))

(declare-fun res!3086069 () Bool)

(assert (=> d!2340775 (=> (not res!3086069) (not e!4588641))))

(declare-fun lt!2667907 () List!73425)

(declare-fun content!15534 (List!73425) (Set C!41482))

(assert (=> d!2340775 (= res!3086069 (= (content!15534 lt!2667907) (set.union (content!15534 (_1!38108 lt!2667846)) (content!15534 (_2!38108 lt!2667846)))))))

(assert (=> d!2340775 (= lt!2667907 e!4588642)))

(declare-fun c!1427065 () Bool)

(assert (=> d!2340775 (= c!1427065 (is-Nil!73301 (_1!38108 lt!2667846)))))

(assert (=> d!2340775 (= (++!17777 (_1!38108 lt!2667846) (_2!38108 lt!2667846)) lt!2667907)))

(declare-fun b!7738770 () Bool)

(assert (=> b!7738770 (= e!4588642 (_2!38108 lt!2667846))))

(declare-fun b!7738773 () Bool)

(assert (=> b!7738773 (= e!4588641 (or (not (= (_2!38108 lt!2667846) Nil!73301)) (= lt!2667907 (_1!38108 lt!2667846))))))

(declare-fun b!7738772 () Bool)

(declare-fun res!3086070 () Bool)

(assert (=> b!7738772 (=> (not res!3086070) (not e!4588641))))

(declare-fun size!42637 (List!73425) Int)

(assert (=> b!7738772 (= res!3086070 (= (size!42637 lt!2667907) (+ (size!42637 (_1!38108 lt!2667846)) (size!42637 (_2!38108 lt!2667846)))))))

(assert (= (and d!2340775 c!1427065) b!7738770))

(assert (= (and d!2340775 (not c!1427065)) b!7738771))

(assert (= (and d!2340775 res!3086069) b!7738772))

(assert (= (and b!7738772 res!3086070) b!7738773))

(declare-fun m!8209744 () Bool)

(assert (=> b!7738771 m!8209744))

(declare-fun m!8209746 () Bool)

(assert (=> d!2340775 m!8209746))

(declare-fun m!8209748 () Bool)

(assert (=> d!2340775 m!8209748))

(declare-fun m!8209750 () Bool)

(assert (=> d!2340775 m!8209750))

(declare-fun m!8209752 () Bool)

(assert (=> b!7738772 m!8209752))

(declare-fun m!8209754 () Bool)

(assert (=> b!7738772 m!8209754))

(declare-fun m!8209756 () Bool)

(assert (=> b!7738772 m!8209756))

(assert (=> b!7738521 d!2340775))

(declare-fun d!2340777 () Bool)

(declare-fun lt!2667911 () tuple2!69610)

(declare-fun dynLambda!29971 (Int tuple2!69610) Bool)

(assert (=> d!2340777 (dynLambda!29971 lambda!471457 lt!2667911)))

(declare-fun choose!59347 (Int) tuple2!69610)

(assert (=> d!2340777 (= lt!2667911 (choose!59347 lambda!471457))))

(assert (=> d!2340777 (Exists!4699 lambda!471457)))

(assert (=> d!2340777 (= (pickWitness!535 lambda!471457) lt!2667911)))

(declare-fun b_lambda!289355 () Bool)

(assert (=> (not b_lambda!289355) (not d!2340777)))

(declare-fun bs!1964100 () Bool)

(assert (= bs!1964100 d!2340777))

(declare-fun m!8209772 () Bool)

(assert (=> bs!1964100 m!8209772))

(declare-fun m!8209774 () Bool)

(assert (=> bs!1964100 m!8209774))

(assert (=> bs!1964100 m!8209606))

(assert (=> b!7738526 d!2340777))

(declare-fun b!7738788 () Bool)

(declare-fun res!3086081 () Bool)

(declare-fun e!4588651 () Bool)

(assert (=> b!7738788 (=> res!3086081 e!4588651)))

(assert (=> b!7738788 (= res!3086081 (not (is-Concat!29423 (regTwo!41668 r!14126))))))

(declare-fun e!4588655 () Bool)

(assert (=> b!7738788 (= e!4588655 e!4588651)))

(declare-fun b!7738789 () Bool)

(declare-fun res!3086083 () Bool)

(declare-fun e!4588654 () Bool)

(assert (=> b!7738789 (=> (not res!3086083) (not e!4588654))))

(declare-fun call!716686 () Bool)

(assert (=> b!7738789 (= res!3086083 call!716686)))

(assert (=> b!7738789 (= e!4588655 e!4588654)))

(declare-fun b!7738790 () Bool)

(declare-fun e!4588656 () Bool)

(assert (=> b!7738790 (= e!4588656 e!4588655)))

(declare-fun c!1427070 () Bool)

(assert (=> b!7738790 (= c!1427070 (is-Union!20578 (regTwo!41668 r!14126)))))

(declare-fun c!1427069 () Bool)

(declare-fun bm!716681 () Bool)

(declare-fun call!716688 () Bool)

(assert (=> bm!716681 (= call!716688 (validRegex!10996 (ite c!1427069 (reg!20907 (regTwo!41668 r!14126)) (ite c!1427070 (regOne!41669 (regTwo!41668 r!14126)) (regOne!41668 (regTwo!41668 r!14126))))))))

(declare-fun d!2340781 () Bool)

(declare-fun res!3086080 () Bool)

(declare-fun e!4588653 () Bool)

(assert (=> d!2340781 (=> res!3086080 e!4588653)))

(assert (=> d!2340781 (= res!3086080 (is-ElementMatch!20578 (regTwo!41668 r!14126)))))

(assert (=> d!2340781 (= (validRegex!10996 (regTwo!41668 r!14126)) e!4588653)))

(declare-fun b!7738791 () Bool)

(declare-fun e!4588652 () Bool)

(assert (=> b!7738791 (= e!4588656 e!4588652)))

(declare-fun res!3086079 () Bool)

(assert (=> b!7738791 (= res!3086079 (not (nullable!9051 (reg!20907 (regTwo!41668 r!14126)))))))

(assert (=> b!7738791 (=> (not res!3086079) (not e!4588652))))

(declare-fun b!7738792 () Bool)

(declare-fun e!4588650 () Bool)

(assert (=> b!7738792 (= e!4588651 e!4588650)))

(declare-fun res!3086082 () Bool)

(assert (=> b!7738792 (=> (not res!3086082) (not e!4588650))))

(assert (=> b!7738792 (= res!3086082 call!716686)))

(declare-fun b!7738793 () Bool)

(declare-fun call!716687 () Bool)

(assert (=> b!7738793 (= e!4588650 call!716687)))

(declare-fun b!7738794 () Bool)

(assert (=> b!7738794 (= e!4588653 e!4588656)))

(assert (=> b!7738794 (= c!1427069 (is-Star!20578 (regTwo!41668 r!14126)))))

(declare-fun bm!716682 () Bool)

(assert (=> bm!716682 (= call!716686 call!716688)))

(declare-fun b!7738795 () Bool)

(assert (=> b!7738795 (= e!4588652 call!716688)))

(declare-fun bm!716683 () Bool)

(assert (=> bm!716683 (= call!716687 (validRegex!10996 (ite c!1427070 (regTwo!41669 (regTwo!41668 r!14126)) (regTwo!41668 (regTwo!41668 r!14126)))))))

(declare-fun b!7738796 () Bool)

(assert (=> b!7738796 (= e!4588654 call!716687)))

(assert (= (and d!2340781 (not res!3086080)) b!7738794))

(assert (= (and b!7738794 c!1427069) b!7738791))

(assert (= (and b!7738794 (not c!1427069)) b!7738790))

(assert (= (and b!7738791 res!3086079) b!7738795))

(assert (= (and b!7738790 c!1427070) b!7738789))

(assert (= (and b!7738790 (not c!1427070)) b!7738788))

(assert (= (and b!7738789 res!3086083) b!7738796))

(assert (= (and b!7738788 (not res!3086081)) b!7738792))

(assert (= (and b!7738792 res!3086082) b!7738793))

(assert (= (or b!7738789 b!7738792) bm!716682))

(assert (= (or b!7738796 b!7738793) bm!716683))

(assert (= (or b!7738795 bm!716682) bm!716681))

(declare-fun m!8209784 () Bool)

(assert (=> bm!716681 m!8209784))

(declare-fun m!8209786 () Bool)

(assert (=> b!7738791 m!8209786))

(declare-fun m!8209790 () Bool)

(assert (=> bm!716683 m!8209790))

(assert (=> b!7738526 d!2340781))

(declare-fun d!2340783 () Bool)

(assert (=> d!2340783 (= (matchR!10070 (regOne!41668 r!14126) (_1!38108 lt!2667847)) (matchRSpec!4643 (regOne!41668 r!14126) (_1!38108 lt!2667847)))))

(declare-fun lt!2667914 () Unit!168236)

(declare-fun choose!59348 (Regex!20578 List!73425) Unit!168236)

(assert (=> d!2340783 (= lt!2667914 (choose!59348 (regOne!41668 r!14126) (_1!38108 lt!2667847)))))

(assert (=> d!2340783 (validRegex!10996 (regOne!41668 r!14126))))

(assert (=> d!2340783 (= (mainMatchTheorem!4613 (regOne!41668 r!14126) (_1!38108 lt!2667847)) lt!2667914)))

(declare-fun bs!1964101 () Bool)

(assert (= bs!1964101 d!2340783))

(assert (=> bs!1964101 m!8209610))

(assert (=> bs!1964101 m!8209612))

(declare-fun m!8209794 () Bool)

(assert (=> bs!1964101 m!8209794))

(assert (=> bs!1964101 m!8209682))

(assert (=> b!7738526 d!2340783))

(declare-fun bs!1964102 () Bool)

(declare-fun b!7738833 () Bool)

(assert (= bs!1964102 (and b!7738833 b!7738519)))

(declare-fun lambda!471477 () Int)

(assert (=> bs!1964102 (not (= lambda!471477 lambda!471456))))

(declare-fun bs!1964103 () Bool)

(assert (= bs!1964103 (and b!7738833 b!7738520)))

(assert (=> bs!1964103 (not (= lambda!471477 lambda!471457))))

(declare-fun bs!1964104 () Bool)

(assert (= bs!1964104 (and b!7738833 d!2340759)))

(assert (=> bs!1964104 (not (= lambda!471477 lambda!471470))))

(assert (=> b!7738833 true))

(assert (=> b!7738833 true))

(declare-fun bs!1964105 () Bool)

(declare-fun b!7738835 () Bool)

(assert (= bs!1964105 (and b!7738835 b!7738519)))

(declare-fun lambda!471478 () Int)

(assert (=> bs!1964105 (not (= lambda!471478 lambda!471456))))

(declare-fun bs!1964106 () Bool)

(assert (= bs!1964106 (and b!7738835 b!7738520)))

(assert (=> bs!1964106 (= (and (= (_1!38108 lt!2667847) s!9605) (= (regOne!41668 (regOne!41668 r!14126)) (regOne!41668 r!14126)) (= (regTwo!41668 (regOne!41668 r!14126)) (regTwo!41668 r!14126))) (= lambda!471478 lambda!471457))))

(declare-fun bs!1964107 () Bool)

(assert (= bs!1964107 (and b!7738835 d!2340759)))

(assert (=> bs!1964107 (not (= lambda!471478 lambda!471470))))

(declare-fun bs!1964108 () Bool)

(assert (= bs!1964108 (and b!7738835 b!7738833)))

(assert (=> bs!1964108 (not (= lambda!471478 lambda!471477))))

(assert (=> b!7738835 true))

(assert (=> b!7738835 true))

(declare-fun e!4588680 () Bool)

(declare-fun call!716693 () Bool)

(assert (=> b!7738833 (= e!4588680 call!716693)))

(declare-fun b!7738834 () Bool)

(declare-fun c!1427080 () Bool)

(assert (=> b!7738834 (= c!1427080 (is-ElementMatch!20578 (regOne!41668 r!14126)))))

(declare-fun e!4588679 () Bool)

(declare-fun e!4588683 () Bool)

(assert (=> b!7738834 (= e!4588679 e!4588683)))

(declare-fun c!1427079 () Bool)

(declare-fun bm!716688 () Bool)

(assert (=> bm!716688 (= call!716693 (Exists!4699 (ite c!1427079 lambda!471477 lambda!471478)))))

(declare-fun e!4588677 () Bool)

(assert (=> b!7738835 (= e!4588677 call!716693)))

(declare-fun b!7738836 () Bool)

(declare-fun e!4588682 () Bool)

(assert (=> b!7738836 (= e!4588682 e!4588677)))

(assert (=> b!7738836 (= c!1427079 (is-Star!20578 (regOne!41668 r!14126)))))

(declare-fun bm!716689 () Bool)

(declare-fun call!716694 () Bool)

(assert (=> bm!716689 (= call!716694 (isEmpty!41984 (_1!38108 lt!2667847)))))

(declare-fun b!7738838 () Bool)

(declare-fun res!3086104 () Bool)

(assert (=> b!7738838 (=> res!3086104 e!4588680)))

(assert (=> b!7738838 (= res!3086104 call!716694)))

(assert (=> b!7738838 (= e!4588677 e!4588680)))

(declare-fun b!7738839 () Bool)

(declare-fun c!1427082 () Bool)

(assert (=> b!7738839 (= c!1427082 (is-Union!20578 (regOne!41668 r!14126)))))

(assert (=> b!7738839 (= e!4588683 e!4588682)))

(declare-fun b!7738840 () Bool)

(declare-fun e!4588678 () Bool)

(assert (=> b!7738840 (= e!4588682 e!4588678)))

(declare-fun res!3086106 () Bool)

(assert (=> b!7738840 (= res!3086106 (matchRSpec!4643 (regOne!41669 (regOne!41668 r!14126)) (_1!38108 lt!2667847)))))

(assert (=> b!7738840 (=> res!3086106 e!4588678)))

(declare-fun b!7738841 () Bool)

(assert (=> b!7738841 (= e!4588683 (= (_1!38108 lt!2667847) (Cons!73301 (c!1427022 (regOne!41668 r!14126)) Nil!73301)))))

(declare-fun b!7738842 () Bool)

(assert (=> b!7738842 (= e!4588678 (matchRSpec!4643 (regTwo!41669 (regOne!41668 r!14126)) (_1!38108 lt!2667847)))))

(declare-fun b!7738843 () Bool)

(declare-fun e!4588681 () Bool)

(assert (=> b!7738843 (= e!4588681 call!716694)))

(declare-fun d!2340787 () Bool)

(declare-fun c!1427081 () Bool)

(assert (=> d!2340787 (= c!1427081 (is-EmptyExpr!20578 (regOne!41668 r!14126)))))

(assert (=> d!2340787 (= (matchRSpec!4643 (regOne!41668 r!14126) (_1!38108 lt!2667847)) e!4588681)))

(declare-fun b!7738837 () Bool)

(assert (=> b!7738837 (= e!4588681 e!4588679)))

(declare-fun res!3086105 () Bool)

(assert (=> b!7738837 (= res!3086105 (not (is-EmptyLang!20578 (regOne!41668 r!14126))))))

(assert (=> b!7738837 (=> (not res!3086105) (not e!4588679))))

(assert (= (and d!2340787 c!1427081) b!7738843))

(assert (= (and d!2340787 (not c!1427081)) b!7738837))

(assert (= (and b!7738837 res!3086105) b!7738834))

(assert (= (and b!7738834 c!1427080) b!7738841))

(assert (= (and b!7738834 (not c!1427080)) b!7738839))

(assert (= (and b!7738839 c!1427082) b!7738840))

(assert (= (and b!7738839 (not c!1427082)) b!7738836))

(assert (= (and b!7738840 (not res!3086106)) b!7738842))

(assert (= (and b!7738836 c!1427079) b!7738838))

(assert (= (and b!7738836 (not c!1427079)) b!7738835))

(assert (= (and b!7738838 (not res!3086104)) b!7738833))

(assert (= (or b!7738833 b!7738835) bm!716688))

(assert (= (or b!7738843 b!7738838) bm!716689))

(declare-fun m!8209796 () Bool)

(assert (=> bm!716688 m!8209796))

(declare-fun m!8209798 () Bool)

(assert (=> bm!716689 m!8209798))

(declare-fun m!8209800 () Bool)

(assert (=> b!7738840 m!8209800))

(declare-fun m!8209802 () Bool)

(assert (=> b!7738842 m!8209802))

(assert (=> b!7738526 d!2340787))

(declare-fun b!7738844 () Bool)

(declare-fun e!4588689 () Bool)

(declare-fun e!4588684 () Bool)

(assert (=> b!7738844 (= e!4588689 e!4588684)))

(declare-fun res!3086113 () Bool)

(assert (=> b!7738844 (=> res!3086113 e!4588684)))

(declare-fun call!716695 () Bool)

(assert (=> b!7738844 (= res!3086113 call!716695)))

(declare-fun d!2340789 () Bool)

(declare-fun e!4588687 () Bool)

(assert (=> d!2340789 e!4588687))

(declare-fun c!1427085 () Bool)

(assert (=> d!2340789 (= c!1427085 (is-EmptyExpr!20578 (regOne!41668 r!14126)))))

(declare-fun lt!2667918 () Bool)

(declare-fun e!4588688 () Bool)

(assert (=> d!2340789 (= lt!2667918 e!4588688)))

(declare-fun c!1427084 () Bool)

(assert (=> d!2340789 (= c!1427084 (isEmpty!41984 (_1!38108 lt!2667847)))))

(assert (=> d!2340789 (validRegex!10996 (regOne!41668 r!14126))))

(assert (=> d!2340789 (= (matchR!10070 (regOne!41668 r!14126) (_1!38108 lt!2667847)) lt!2667918)))

(declare-fun bm!716690 () Bool)

(assert (=> bm!716690 (= call!716695 (isEmpty!41984 (_1!38108 lt!2667847)))))

(declare-fun b!7738845 () Bool)

(declare-fun res!3086111 () Bool)

(declare-fun e!4588690 () Bool)

(assert (=> b!7738845 (=> res!3086111 e!4588690)))

(assert (=> b!7738845 (= res!3086111 (not (is-ElementMatch!20578 (regOne!41668 r!14126))))))

(declare-fun e!4588686 () Bool)

(assert (=> b!7738845 (= e!4588686 e!4588690)))

(declare-fun b!7738846 () Bool)

(declare-fun res!3086107 () Bool)

(assert (=> b!7738846 (=> res!3086107 e!4588684)))

(assert (=> b!7738846 (= res!3086107 (not (isEmpty!41984 (tail!15350 (_1!38108 lt!2667847)))))))

(declare-fun b!7738847 () Bool)

(assert (=> b!7738847 (= e!4588688 (matchR!10070 (derivativeStep!6010 (regOne!41668 r!14126) (head!15810 (_1!38108 lt!2667847))) (tail!15350 (_1!38108 lt!2667847))))))

(declare-fun b!7738848 () Bool)

(assert (=> b!7738848 (= e!4588686 (not lt!2667918))))

(declare-fun b!7738849 () Bool)

(declare-fun res!3086109 () Bool)

(assert (=> b!7738849 (=> res!3086109 e!4588690)))

(declare-fun e!4588685 () Bool)

(assert (=> b!7738849 (= res!3086109 e!4588685)))

(declare-fun res!3086110 () Bool)

(assert (=> b!7738849 (=> (not res!3086110) (not e!4588685))))

(assert (=> b!7738849 (= res!3086110 lt!2667918)))

(declare-fun b!7738850 () Bool)

(assert (=> b!7738850 (= e!4588685 (= (head!15810 (_1!38108 lt!2667847)) (c!1427022 (regOne!41668 r!14126))))))

(declare-fun b!7738851 () Bool)

(declare-fun res!3086112 () Bool)

(assert (=> b!7738851 (=> (not res!3086112) (not e!4588685))))

(assert (=> b!7738851 (= res!3086112 (not call!716695))))

(declare-fun b!7738852 () Bool)

(assert (=> b!7738852 (= e!4588684 (not (= (head!15810 (_1!38108 lt!2667847)) (c!1427022 (regOne!41668 r!14126)))))))

(declare-fun b!7738853 () Bool)

(assert (=> b!7738853 (= e!4588688 (nullable!9051 (regOne!41668 r!14126)))))

(declare-fun b!7738854 () Bool)

(assert (=> b!7738854 (= e!4588687 e!4588686)))

(declare-fun c!1427083 () Bool)

(assert (=> b!7738854 (= c!1427083 (is-EmptyLang!20578 (regOne!41668 r!14126)))))

(declare-fun b!7738855 () Bool)

(assert (=> b!7738855 (= e!4588690 e!4588689)))

(declare-fun res!3086108 () Bool)

(assert (=> b!7738855 (=> (not res!3086108) (not e!4588689))))

(assert (=> b!7738855 (= res!3086108 (not lt!2667918))))

(declare-fun b!7738856 () Bool)

(assert (=> b!7738856 (= e!4588687 (= lt!2667918 call!716695))))

(declare-fun b!7738857 () Bool)

(declare-fun res!3086114 () Bool)

(assert (=> b!7738857 (=> (not res!3086114) (not e!4588685))))

(assert (=> b!7738857 (= res!3086114 (isEmpty!41984 (tail!15350 (_1!38108 lt!2667847))))))

(assert (= (and d!2340789 c!1427084) b!7738853))

(assert (= (and d!2340789 (not c!1427084)) b!7738847))

(assert (= (and d!2340789 c!1427085) b!7738856))

(assert (= (and d!2340789 (not c!1427085)) b!7738854))

(assert (= (and b!7738854 c!1427083) b!7738848))

(assert (= (and b!7738854 (not c!1427083)) b!7738845))

(assert (= (and b!7738845 (not res!3086111)) b!7738849))

(assert (= (and b!7738849 res!3086110) b!7738851))

(assert (= (and b!7738851 res!3086112) b!7738857))

(assert (= (and b!7738857 res!3086114) b!7738850))

(assert (= (and b!7738849 (not res!3086109)) b!7738855))

(assert (= (and b!7738855 res!3086108) b!7738844))

(assert (= (and b!7738844 (not res!3086113)) b!7738846))

(assert (= (and b!7738846 (not res!3086107)) b!7738852))

(assert (= (or b!7738856 b!7738844 b!7738851) bm!716690))

(assert (=> d!2340789 m!8209798))

(assert (=> d!2340789 m!8209682))

(declare-fun m!8209812 () Bool)

(assert (=> b!7738857 m!8209812))

(assert (=> b!7738857 m!8209812))

(declare-fun m!8209814 () Bool)

(assert (=> b!7738857 m!8209814))

(assert (=> bm!716690 m!8209798))

(declare-fun m!8209816 () Bool)

(assert (=> b!7738850 m!8209816))

(assert (=> b!7738847 m!8209816))

(assert (=> b!7738847 m!8209816))

(declare-fun m!8209818 () Bool)

(assert (=> b!7738847 m!8209818))

(assert (=> b!7738847 m!8209812))

(assert (=> b!7738847 m!8209818))

(assert (=> b!7738847 m!8209812))

(declare-fun m!8209820 () Bool)

(assert (=> b!7738847 m!8209820))

(assert (=> b!7738852 m!8209816))

(assert (=> b!7738846 m!8209812))

(assert (=> b!7738846 m!8209812))

(assert (=> b!7738846 m!8209814))

(declare-fun m!8209822 () Bool)

(assert (=> b!7738853 m!8209822))

(assert (=> b!7738526 d!2340789))

(declare-fun b!7738868 () Bool)

(declare-fun e!4588693 () Bool)

(assert (=> b!7738868 (= e!4588693 tp_is_empty!51511)))

(declare-fun b!7738870 () Bool)

(declare-fun tp!2270932 () Bool)

(assert (=> b!7738870 (= e!4588693 tp!2270932)))

(assert (=> b!7738525 (= tp!2270902 e!4588693)))

(declare-fun b!7738871 () Bool)

(declare-fun tp!2270934 () Bool)

(declare-fun tp!2270935 () Bool)

(assert (=> b!7738871 (= e!4588693 (and tp!2270934 tp!2270935))))

(declare-fun b!7738869 () Bool)

(declare-fun tp!2270933 () Bool)

(declare-fun tp!2270936 () Bool)

(assert (=> b!7738869 (= e!4588693 (and tp!2270933 tp!2270936))))

(assert (= (and b!7738525 (is-ElementMatch!20578 (regOne!41668 r!14126))) b!7738868))

(assert (= (and b!7738525 (is-Concat!29423 (regOne!41668 r!14126))) b!7738869))

(assert (= (and b!7738525 (is-Star!20578 (regOne!41668 r!14126))) b!7738870))

(assert (= (and b!7738525 (is-Union!20578 (regOne!41668 r!14126))) b!7738871))

(declare-fun b!7738872 () Bool)

(declare-fun e!4588694 () Bool)

(assert (=> b!7738872 (= e!4588694 tp_is_empty!51511)))

(declare-fun b!7738874 () Bool)

(declare-fun tp!2270937 () Bool)

(assert (=> b!7738874 (= e!4588694 tp!2270937)))

(assert (=> b!7738525 (= tp!2270901 e!4588694)))

(declare-fun b!7738875 () Bool)

(declare-fun tp!2270939 () Bool)

(declare-fun tp!2270940 () Bool)

(assert (=> b!7738875 (= e!4588694 (and tp!2270939 tp!2270940))))

(declare-fun b!7738873 () Bool)

(declare-fun tp!2270938 () Bool)

(declare-fun tp!2270941 () Bool)

(assert (=> b!7738873 (= e!4588694 (and tp!2270938 tp!2270941))))

(assert (= (and b!7738525 (is-ElementMatch!20578 (regTwo!41668 r!14126))) b!7738872))

(assert (= (and b!7738525 (is-Concat!29423 (regTwo!41668 r!14126))) b!7738873))

(assert (= (and b!7738525 (is-Star!20578 (regTwo!41668 r!14126))) b!7738874))

(assert (= (and b!7738525 (is-Union!20578 (regTwo!41668 r!14126))) b!7738875))

(declare-fun b!7738880 () Bool)

(declare-fun e!4588697 () Bool)

(declare-fun tp!2270944 () Bool)

(assert (=> b!7738880 (= e!4588697 (and tp_is_empty!51511 tp!2270944))))

(assert (=> b!7738530 (= tp!2270903 e!4588697)))

(assert (= (and b!7738530 (is-Cons!73301 (t!388160 s!9605))) b!7738880))

(declare-fun b!7738881 () Bool)

(declare-fun e!4588698 () Bool)

(assert (=> b!7738881 (= e!4588698 tp_is_empty!51511)))

(declare-fun b!7738883 () Bool)

(declare-fun tp!2270945 () Bool)

(assert (=> b!7738883 (= e!4588698 tp!2270945)))

(assert (=> b!7738524 (= tp!2270899 e!4588698)))

(declare-fun b!7738884 () Bool)

(declare-fun tp!2270947 () Bool)

(declare-fun tp!2270948 () Bool)

(assert (=> b!7738884 (= e!4588698 (and tp!2270947 tp!2270948))))

(declare-fun b!7738882 () Bool)

(declare-fun tp!2270946 () Bool)

(declare-fun tp!2270949 () Bool)

(assert (=> b!7738882 (= e!4588698 (and tp!2270946 tp!2270949))))

(assert (= (and b!7738524 (is-ElementMatch!20578 (reg!20907 r!14126))) b!7738881))

(assert (= (and b!7738524 (is-Concat!29423 (reg!20907 r!14126))) b!7738882))

(assert (= (and b!7738524 (is-Star!20578 (reg!20907 r!14126))) b!7738883))

(assert (= (and b!7738524 (is-Union!20578 (reg!20907 r!14126))) b!7738884))

(declare-fun b!7738885 () Bool)

(declare-fun e!4588699 () Bool)

(assert (=> b!7738885 (= e!4588699 tp_is_empty!51511)))

(declare-fun b!7738887 () Bool)

(declare-fun tp!2270950 () Bool)

(assert (=> b!7738887 (= e!4588699 tp!2270950)))

(assert (=> b!7738529 (= tp!2270898 e!4588699)))

(declare-fun b!7738888 () Bool)

(declare-fun tp!2270952 () Bool)

(declare-fun tp!2270953 () Bool)

(assert (=> b!7738888 (= e!4588699 (and tp!2270952 tp!2270953))))

(declare-fun b!7738886 () Bool)

(declare-fun tp!2270951 () Bool)

(declare-fun tp!2270954 () Bool)

(assert (=> b!7738886 (= e!4588699 (and tp!2270951 tp!2270954))))

(assert (= (and b!7738529 (is-ElementMatch!20578 (regOne!41669 r!14126))) b!7738885))

(assert (= (and b!7738529 (is-Concat!29423 (regOne!41669 r!14126))) b!7738886))

(assert (= (and b!7738529 (is-Star!20578 (regOne!41669 r!14126))) b!7738887))

(assert (= (and b!7738529 (is-Union!20578 (regOne!41669 r!14126))) b!7738888))

(declare-fun b!7738889 () Bool)

(declare-fun e!4588700 () Bool)

(assert (=> b!7738889 (= e!4588700 tp_is_empty!51511)))

(declare-fun b!7738891 () Bool)

(declare-fun tp!2270955 () Bool)

(assert (=> b!7738891 (= e!4588700 tp!2270955)))

(assert (=> b!7738529 (= tp!2270900 e!4588700)))

(declare-fun b!7738892 () Bool)

(declare-fun tp!2270957 () Bool)

(declare-fun tp!2270958 () Bool)

(assert (=> b!7738892 (= e!4588700 (and tp!2270957 tp!2270958))))

(declare-fun b!7738890 () Bool)

(declare-fun tp!2270956 () Bool)

(declare-fun tp!2270959 () Bool)

(assert (=> b!7738890 (= e!4588700 (and tp!2270956 tp!2270959))))

(assert (= (and b!7738529 (is-ElementMatch!20578 (regTwo!41669 r!14126))) b!7738889))

(assert (= (and b!7738529 (is-Concat!29423 (regTwo!41669 r!14126))) b!7738890))

(assert (= (and b!7738529 (is-Star!20578 (regTwo!41669 r!14126))) b!7738891))

(assert (= (and b!7738529 (is-Union!20578 (regTwo!41669 r!14126))) b!7738892))

(declare-fun b_lambda!289357 () Bool)

(assert (= b_lambda!289355 (or b!7738520 b_lambda!289357)))

(declare-fun bs!1964114 () Bool)

(declare-fun d!2340797 () Bool)

(assert (= bs!1964114 (and d!2340797 b!7738520)))

(declare-fun res!3086115 () Bool)

(declare-fun e!4588701 () Bool)

(assert (=> bs!1964114 (=> (not res!3086115) (not e!4588701))))

(assert (=> bs!1964114 (= res!3086115 (= (++!17777 (_1!38108 lt!2667911) (_2!38108 lt!2667911)) s!9605))))

(assert (=> bs!1964114 (= (dynLambda!29971 lambda!471457 lt!2667911) e!4588701)))

(declare-fun b!7738893 () Bool)

(declare-fun res!3086116 () Bool)

(assert (=> b!7738893 (=> (not res!3086116) (not e!4588701))))

(assert (=> b!7738893 (= res!3086116 (matchRSpec!4643 (regOne!41668 r!14126) (_1!38108 lt!2667911)))))

(declare-fun b!7738894 () Bool)

(assert (=> b!7738894 (= e!4588701 (matchRSpec!4643 (regTwo!41668 r!14126) (_2!38108 lt!2667911)))))

(assert (= (and bs!1964114 res!3086115) b!7738893))

(assert (= (and b!7738893 res!3086116) b!7738894))

(declare-fun m!8209826 () Bool)

(assert (=> bs!1964114 m!8209826))

(declare-fun m!8209828 () Bool)

(assert (=> b!7738893 m!8209828))

(declare-fun m!8209830 () Bool)

(assert (=> b!7738894 m!8209830))

(assert (=> d!2340777 d!2340797))

(push 1)

(assert (not b!7738738))

(assert (not b!7738749))

(assert (not b!7738745))

(assert (not b!7738652))

(assert (not b!7738857))

(assert (not d!2340767))

(assert (not bm!716688))

(assert (not b!7738658))

(assert (not b!7738853))

(assert (not b!7738662))

(assert (not b!7738728))

(assert (not b!7738771))

(assert (not b!7738742))

(assert (not d!2340789))

(assert (not b!7738739))

(assert (not b!7738882))

(assert (not b!7738894))

(assert (not d!2340773))

(assert (not d!2340745))

(assert (not b!7738842))

(assert (not b!7738869))

(assert (not b!7738732))

(assert (not b!7738657))

(assert (not b!7738870))

(assert (not bm!716672))

(assert (not b!7738888))

(assert (not b!7738847))

(assert (not d!2340771))

(assert (not b!7738874))

(assert (not bm!716681))

(assert (not b!7738891))

(assert (not b!7738893))

(assert (not b!7738884))

(assert (not bs!1964114))

(assert (not b!7738735))

(assert (not b!7738730))

(assert tp_is_empty!51511)

(assert (not b!7738791))

(assert (not d!2340759))

(assert (not b_lambda!289357))

(assert (not d!2340761))

(assert (not b!7738880))

(assert (not d!2340763))

(assert (not b!7738875))

(assert (not b!7738734))

(assert (not bm!716675))

(assert (not b!7738890))

(assert (not b!7738852))

(assert (not b!7738873))

(assert (not b!7738886))

(assert (not b!7738883))

(assert (not b!7738655))

(assert (not bm!716683))

(assert (not d!2340755))

(assert (not d!2340777))

(assert (not b!7738651))

(assert (not b!7738892))

(assert (not d!2340775))

(assert (not d!2340783))

(assert (not b!7738846))

(assert (not b!7738744))

(assert (not b!7738887))

(assert (not b!7738850))

(assert (not b!7738615))

(assert (not bm!716690))

(assert (not bm!716679))

(assert (not b!7738772))

(assert (not b!7738840))

(assert (not b!7738871))

(assert (not b!7738731))

(assert (not bm!716670))

(assert (not bm!716689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

