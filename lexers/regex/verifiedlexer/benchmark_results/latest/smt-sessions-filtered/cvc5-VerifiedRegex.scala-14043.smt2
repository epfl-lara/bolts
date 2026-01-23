; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!741328 () Bool)

(assert start!741328)

(declare-fun res!3107892 () Bool)

(declare-fun e!4619480 () Bool)

(assert (=> start!741328 (=> (not res!3107892) (not e!4619480))))

(declare-datatypes ((C!42086 0))(
  ( (C!42087 (val!31483 Int)) )
))
(declare-datatypes ((Regex!20880 0))(
  ( (ElementMatch!20880 (c!1437033 C!42086)) (Concat!29725 (regOne!42272 Regex!20880) (regTwo!42272 Regex!20880)) (EmptyExpr!20880) (Star!20880 (reg!21209 Regex!20880)) (EmptyLang!20880) (Union!20880 (regOne!42273 Regex!20880) (regTwo!42273 Regex!20880)) )
))
(declare-fun r1!6279 () Regex!20880)

(declare-fun validRegex!11294 (Regex!20880) Bool)

(assert (=> start!741328 (= res!3107892 (validRegex!11294 r1!6279))))

(assert (=> start!741328 e!4619480))

(declare-fun e!4619482 () Bool)

(assert (=> start!741328 e!4619482))

(declare-fun e!4619486 () Bool)

(assert (=> start!741328 e!4619486))

(declare-fun e!4619479 () Bool)

(assert (=> start!741328 e!4619479))

(declare-fun b!7803592 () Bool)

(declare-fun tp_is_empty!52115 () Bool)

(assert (=> b!7803592 (= e!4619482 tp_is_empty!52115)))

(declare-fun b!7803593 () Bool)

(declare-fun tp!2298945 () Bool)

(assert (=> b!7803593 (= e!4619479 (and tp_is_empty!52115 tp!2298945))))

(declare-fun b!7803594 () Bool)

(declare-fun e!4619478 () Bool)

(declare-datatypes ((List!73719 0))(
  ( (Nil!73595) (Cons!73595 (h!80043 C!42086) (t!388454 List!73719)) )
))
(declare-fun s!14292 () List!73719)

(declare-fun matchR!10340 (Regex!20880 List!73719) Bool)

(assert (=> b!7803594 (= e!4619478 (matchR!10340 EmptyLang!20880 (t!388454 s!14292)))))

(declare-fun b!7803595 () Bool)

(declare-fun tp!2298937 () Bool)

(assert (=> b!7803595 (= e!4619482 tp!2298937)))

(declare-fun b!7803596 () Bool)

(assert (=> b!7803596 (= e!4619486 tp_is_empty!52115)))

(declare-fun b!7803597 () Bool)

(declare-fun res!3107887 () Bool)

(declare-fun e!4619484 () Bool)

(assert (=> b!7803597 (=> (not res!3107887) (not e!4619484))))

(declare-fun nullable!9264 (Regex!20880) Bool)

(assert (=> b!7803597 (= res!3107887 (not (nullable!9264 r1!6279)))))

(declare-fun b!7803598 () Bool)

(declare-fun tp!2298941 () Bool)

(declare-fun tp!2298936 () Bool)

(assert (=> b!7803598 (= e!4619482 (and tp!2298941 tp!2298936))))

(declare-fun b!7803599 () Bool)

(declare-fun e!4619481 () Bool)

(declare-fun e!4619483 () Bool)

(assert (=> b!7803599 (= e!4619481 (not e!4619483))))

(declare-fun res!3107888 () Bool)

(assert (=> b!7803599 (=> res!3107888 e!4619483)))

(declare-fun lt!2674846 () Bool)

(assert (=> b!7803599 (= res!3107888 (not lt!2674846))))

(declare-fun derivative!562 (Regex!20880 List!73719) Regex!20880)

(assert (=> b!7803599 (= (derivative!562 EmptyLang!20880 (t!388454 s!14292)) EmptyLang!20880)))

(declare-datatypes ((Unit!168598 0))(
  ( (Unit!168599) )
))
(declare-fun lt!2674851 () Unit!168598)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!97 (Regex!20880 List!73719) Unit!168598)

(assert (=> b!7803599 (= lt!2674851 (lemmaEmptyLangDerivativeIsAFixPoint!97 EmptyLang!20880 (t!388454 s!14292)))))

(assert (=> b!7803599 e!4619478))

(declare-fun res!3107889 () Bool)

(assert (=> b!7803599 (=> res!3107889 e!4619478)))

(assert (=> b!7803599 (= res!3107889 lt!2674846)))

(declare-fun lt!2674848 () Regex!20880)

(assert (=> b!7803599 (= lt!2674846 (matchR!10340 lt!2674848 (t!388454 s!14292)))))

(declare-fun lt!2674850 () Unit!168598)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!419 (Regex!20880 Regex!20880 List!73719) Unit!168598)

(assert (=> b!7803599 (= lt!2674850 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!419 lt!2674848 EmptyLang!20880 (t!388454 s!14292)))))

(declare-fun b!7803600 () Bool)

(declare-fun tp!2298944 () Bool)

(declare-fun tp!2298943 () Bool)

(assert (=> b!7803600 (= e!4619482 (and tp!2298944 tp!2298943))))

(declare-fun b!7803601 () Bool)

(declare-fun res!3107891 () Bool)

(assert (=> b!7803601 (=> (not res!3107891) (not e!4619480))))

(declare-fun r2!6217 () Regex!20880)

(assert (=> b!7803601 (= res!3107891 (validRegex!11294 r2!6217))))

(declare-fun b!7803602 () Bool)

(declare-fun tp!2298938 () Bool)

(declare-fun tp!2298940 () Bool)

(assert (=> b!7803602 (= e!4619486 (and tp!2298938 tp!2298940))))

(declare-fun b!7803603 () Bool)

(declare-fun res!3107884 () Bool)

(assert (=> b!7803603 (=> res!3107884 e!4619483)))

(declare-fun lt!2674845 () Regex!20880)

(assert (=> b!7803603 (= res!3107884 (not (validRegex!11294 lt!2674845)))))

(declare-fun b!7803604 () Bool)

(declare-fun e!4619485 () Bool)

(assert (=> b!7803604 (= e!4619480 e!4619485)))

(declare-fun res!3107883 () Bool)

(assert (=> b!7803604 (=> (not res!3107883) (not e!4619485))))

(declare-fun lt!2674849 () Regex!20880)

(assert (=> b!7803604 (= res!3107883 (matchR!10340 lt!2674849 s!14292))))

(assert (=> b!7803604 (= lt!2674849 (Concat!29725 r1!6279 r2!6217))))

(declare-fun b!7803605 () Bool)

(assert (=> b!7803605 (= e!4619484 e!4619481)))

(declare-fun res!3107885 () Bool)

(assert (=> b!7803605 (=> (not res!3107885) (not e!4619481))))

(declare-fun lt!2674847 () Regex!20880)

(assert (=> b!7803605 (= res!3107885 (= lt!2674847 (Union!20880 lt!2674848 EmptyLang!20880)))))

(assert (=> b!7803605 (= lt!2674848 (Concat!29725 lt!2674845 r2!6217))))

(declare-fun derivativeStep!6217 (Regex!20880 C!42086) Regex!20880)

(assert (=> b!7803605 (= lt!2674845 (derivativeStep!6217 r1!6279 (h!80043 s!14292)))))

(declare-fun b!7803606 () Bool)

(assert (=> b!7803606 (= e!4619485 e!4619484)))

(declare-fun res!3107886 () Bool)

(assert (=> b!7803606 (=> (not res!3107886) (not e!4619484))))

(assert (=> b!7803606 (= res!3107886 (matchR!10340 lt!2674847 (t!388454 s!14292)))))

(assert (=> b!7803606 (= lt!2674847 (derivativeStep!6217 lt!2674849 (h!80043 s!14292)))))

(declare-fun b!7803607 () Bool)

(declare-fun tp!2298939 () Bool)

(assert (=> b!7803607 (= e!4619486 tp!2298939)))

(declare-fun b!7803608 () Bool)

(declare-fun ListPrimitiveSize!449 (List!73719) Int)

(assert (=> b!7803608 (= e!4619483 (< (ListPrimitiveSize!449 (t!388454 s!14292)) (ListPrimitiveSize!449 s!14292)))))

(declare-fun b!7803609 () Bool)

(declare-fun tp!2298942 () Bool)

(declare-fun tp!2298946 () Bool)

(assert (=> b!7803609 (= e!4619486 (and tp!2298942 tp!2298946))))

(declare-fun b!7803610 () Bool)

(declare-fun res!3107890 () Bool)

(assert (=> b!7803610 (=> (not res!3107890) (not e!4619485))))

(assert (=> b!7803610 (= res!3107890 (is-Cons!73595 s!14292))))

(assert (= (and start!741328 res!3107892) b!7803601))

(assert (= (and b!7803601 res!3107891) b!7803604))

(assert (= (and b!7803604 res!3107883) b!7803610))

(assert (= (and b!7803610 res!3107890) b!7803606))

(assert (= (and b!7803606 res!3107886) b!7803597))

(assert (= (and b!7803597 res!3107887) b!7803605))

(assert (= (and b!7803605 res!3107885) b!7803599))

(assert (= (and b!7803599 (not res!3107889)) b!7803594))

(assert (= (and b!7803599 (not res!3107888)) b!7803603))

(assert (= (and b!7803603 (not res!3107884)) b!7803608))

(assert (= (and start!741328 (is-ElementMatch!20880 r1!6279)) b!7803592))

(assert (= (and start!741328 (is-Concat!29725 r1!6279)) b!7803600))

(assert (= (and start!741328 (is-Star!20880 r1!6279)) b!7803595))

(assert (= (and start!741328 (is-Union!20880 r1!6279)) b!7803598))

(assert (= (and start!741328 (is-ElementMatch!20880 r2!6217)) b!7803596))

(assert (= (and start!741328 (is-Concat!29725 r2!6217)) b!7803602))

(assert (= (and start!741328 (is-Star!20880 r2!6217)) b!7803607))

(assert (= (and start!741328 (is-Union!20880 r2!6217)) b!7803609))

(assert (= (and start!741328 (is-Cons!73595 s!14292)) b!7803593))

(declare-fun m!8238162 () Bool)

(assert (=> start!741328 m!8238162))

(declare-fun m!8238164 () Bool)

(assert (=> b!7803608 m!8238164))

(declare-fun m!8238166 () Bool)

(assert (=> b!7803608 m!8238166))

(declare-fun m!8238168 () Bool)

(assert (=> b!7803601 m!8238168))

(declare-fun m!8238170 () Bool)

(assert (=> b!7803605 m!8238170))

(declare-fun m!8238172 () Bool)

(assert (=> b!7803606 m!8238172))

(declare-fun m!8238174 () Bool)

(assert (=> b!7803606 m!8238174))

(declare-fun m!8238176 () Bool)

(assert (=> b!7803603 m!8238176))

(declare-fun m!8238178 () Bool)

(assert (=> b!7803594 m!8238178))

(declare-fun m!8238180 () Bool)

(assert (=> b!7803599 m!8238180))

(declare-fun m!8238182 () Bool)

(assert (=> b!7803599 m!8238182))

(declare-fun m!8238184 () Bool)

(assert (=> b!7803599 m!8238184))

(declare-fun m!8238186 () Bool)

(assert (=> b!7803599 m!8238186))

(declare-fun m!8238188 () Bool)

(assert (=> b!7803597 m!8238188))

(declare-fun m!8238190 () Bool)

(assert (=> b!7803604 m!8238190))

(push 1)

(assert tp_is_empty!52115)

(assert (not b!7803603))

(assert (not b!7803598))

(assert (not b!7803595))

(assert (not b!7803600))

(assert (not b!7803601))

(assert (not b!7803593))

(assert (not b!7803609))

(assert (not b!7803602))

(assert (not b!7803594))

(assert (not b!7803607))

(assert (not b!7803604))

(assert (not b!7803599))

(assert (not start!741328))

(assert (not b!7803597))

(assert (not b!7803605))

(assert (not b!7803608))

(assert (not b!7803606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7803686 () Bool)

(declare-fun e!4619531 () Bool)

(declare-fun e!4619530 () Bool)

(assert (=> b!7803686 (= e!4619531 e!4619530)))

(declare-fun c!1437040 () Bool)

(assert (=> b!7803686 (= c!1437040 (is-Star!20880 lt!2674845))))

(declare-fun b!7803687 () Bool)

(declare-fun res!3107933 () Bool)

(declare-fun e!4619533 () Bool)

(assert (=> b!7803687 (=> (not res!3107933) (not e!4619533))))

(declare-fun call!723760 () Bool)

(assert (=> b!7803687 (= res!3107933 call!723760)))

(declare-fun e!4619532 () Bool)

(assert (=> b!7803687 (= e!4619532 e!4619533)))

(declare-fun b!7803688 () Bool)

(declare-fun e!4619528 () Bool)

(declare-fun e!4619529 () Bool)

(assert (=> b!7803688 (= e!4619528 e!4619529)))

(declare-fun res!3107935 () Bool)

(assert (=> b!7803688 (=> (not res!3107935) (not e!4619529))))

(assert (=> b!7803688 (= res!3107935 call!723760)))

(declare-fun c!1437039 () Bool)

(declare-fun call!723759 () Bool)

(declare-fun bm!723754 () Bool)

(assert (=> bm!723754 (= call!723759 (validRegex!11294 (ite c!1437040 (reg!21209 lt!2674845) (ite c!1437039 (regOne!42273 lt!2674845) (regOne!42272 lt!2674845)))))))

(declare-fun b!7803689 () Bool)

(declare-fun e!4619534 () Bool)

(assert (=> b!7803689 (= e!4619530 e!4619534)))

(declare-fun res!3107937 () Bool)

(assert (=> b!7803689 (= res!3107937 (not (nullable!9264 (reg!21209 lt!2674845))))))

(assert (=> b!7803689 (=> (not res!3107937) (not e!4619534))))

(declare-fun b!7803690 () Bool)

(declare-fun call!723761 () Bool)

(assert (=> b!7803690 (= e!4619533 call!723761)))

(declare-fun b!7803691 () Bool)

(assert (=> b!7803691 (= e!4619530 e!4619532)))

(assert (=> b!7803691 (= c!1437039 (is-Union!20880 lt!2674845))))

(declare-fun bm!723756 () Bool)

(assert (=> bm!723756 (= call!723761 (validRegex!11294 (ite c!1437039 (regTwo!42273 lt!2674845) (regTwo!42272 lt!2674845))))))

(declare-fun b!7803692 () Bool)

(assert (=> b!7803692 (= e!4619529 call!723761)))

(declare-fun b!7803693 () Bool)

(declare-fun res!3107936 () Bool)

(assert (=> b!7803693 (=> res!3107936 e!4619528)))

(assert (=> b!7803693 (= res!3107936 (not (is-Concat!29725 lt!2674845)))))

(assert (=> b!7803693 (= e!4619532 e!4619528)))

(declare-fun b!7803694 () Bool)

(assert (=> b!7803694 (= e!4619534 call!723759)))

(declare-fun bm!723755 () Bool)

(assert (=> bm!723755 (= call!723760 call!723759)))

(declare-fun d!2347752 () Bool)

(declare-fun res!3107934 () Bool)

(assert (=> d!2347752 (=> res!3107934 e!4619531)))

(assert (=> d!2347752 (= res!3107934 (is-ElementMatch!20880 lt!2674845))))

(assert (=> d!2347752 (= (validRegex!11294 lt!2674845) e!4619531)))

(assert (= (and d!2347752 (not res!3107934)) b!7803686))

(assert (= (and b!7803686 c!1437040) b!7803689))

(assert (= (and b!7803686 (not c!1437040)) b!7803691))

(assert (= (and b!7803689 res!3107937) b!7803694))

(assert (= (and b!7803691 c!1437039) b!7803687))

(assert (= (and b!7803691 (not c!1437039)) b!7803693))

(assert (= (and b!7803687 res!3107933) b!7803690))

(assert (= (and b!7803693 (not res!3107936)) b!7803688))

(assert (= (and b!7803688 res!3107935) b!7803692))

(assert (= (or b!7803687 b!7803688) bm!723755))

(assert (= (or b!7803690 b!7803692) bm!723756))

(assert (= (or b!7803694 bm!723755) bm!723754))

(declare-fun m!8238222 () Bool)

(assert (=> bm!723754 m!8238222))

(declare-fun m!8238224 () Bool)

(assert (=> b!7803689 m!8238224))

(declare-fun m!8238226 () Bool)

(assert (=> bm!723756 m!8238226))

(assert (=> b!7803603 d!2347752))

(declare-fun d!2347756 () Bool)

(declare-fun lt!2674875 () Int)

(assert (=> d!2347756 (>= lt!2674875 0)))

(declare-fun e!4619537 () Int)

(assert (=> d!2347756 (= lt!2674875 e!4619537)))

(declare-fun c!1437043 () Bool)

(assert (=> d!2347756 (= c!1437043 (is-Nil!73595 (t!388454 s!14292)))))

(assert (=> d!2347756 (= (ListPrimitiveSize!449 (t!388454 s!14292)) lt!2674875)))

(declare-fun b!7803699 () Bool)

(assert (=> b!7803699 (= e!4619537 0)))

(declare-fun b!7803700 () Bool)

(assert (=> b!7803700 (= e!4619537 (+ 1 (ListPrimitiveSize!449 (t!388454 (t!388454 s!14292)))))))

(assert (= (and d!2347756 c!1437043) b!7803699))

(assert (= (and d!2347756 (not c!1437043)) b!7803700))

(declare-fun m!8238228 () Bool)

(assert (=> b!7803700 m!8238228))

(assert (=> b!7803608 d!2347756))

(declare-fun d!2347758 () Bool)

(declare-fun lt!2674876 () Int)

(assert (=> d!2347758 (>= lt!2674876 0)))

(declare-fun e!4619538 () Int)

(assert (=> d!2347758 (= lt!2674876 e!4619538)))

(declare-fun c!1437044 () Bool)

(assert (=> d!2347758 (= c!1437044 (is-Nil!73595 s!14292))))

(assert (=> d!2347758 (= (ListPrimitiveSize!449 s!14292) lt!2674876)))

(declare-fun b!7803701 () Bool)

(assert (=> b!7803701 (= e!4619538 0)))

(declare-fun b!7803702 () Bool)

(assert (=> b!7803702 (= e!4619538 (+ 1 (ListPrimitiveSize!449 (t!388454 s!14292))))))

(assert (= (and d!2347758 c!1437044) b!7803701))

(assert (= (and d!2347758 (not c!1437044)) b!7803702))

(assert (=> b!7803702 m!8238164))

(assert (=> b!7803608 d!2347758))

(declare-fun b!7803703 () Bool)

(declare-fun e!4619542 () Bool)

(declare-fun e!4619541 () Bool)

(assert (=> b!7803703 (= e!4619542 e!4619541)))

(declare-fun c!1437046 () Bool)

(assert (=> b!7803703 (= c!1437046 (is-Star!20880 r1!6279))))

(declare-fun b!7803704 () Bool)

(declare-fun res!3107938 () Bool)

(declare-fun e!4619544 () Bool)

(assert (=> b!7803704 (=> (not res!3107938) (not e!4619544))))

(declare-fun call!723763 () Bool)

(assert (=> b!7803704 (= res!3107938 call!723763)))

(declare-fun e!4619543 () Bool)

(assert (=> b!7803704 (= e!4619543 e!4619544)))

(declare-fun b!7803705 () Bool)

(declare-fun e!4619539 () Bool)

(declare-fun e!4619540 () Bool)

(assert (=> b!7803705 (= e!4619539 e!4619540)))

(declare-fun res!3107940 () Bool)

(assert (=> b!7803705 (=> (not res!3107940) (not e!4619540))))

(assert (=> b!7803705 (= res!3107940 call!723763)))

(declare-fun c!1437045 () Bool)

(declare-fun bm!723757 () Bool)

(declare-fun call!723762 () Bool)

(assert (=> bm!723757 (= call!723762 (validRegex!11294 (ite c!1437046 (reg!21209 r1!6279) (ite c!1437045 (regOne!42273 r1!6279) (regOne!42272 r1!6279)))))))

(declare-fun b!7803706 () Bool)

(declare-fun e!4619545 () Bool)

(assert (=> b!7803706 (= e!4619541 e!4619545)))

(declare-fun res!3107942 () Bool)

(assert (=> b!7803706 (= res!3107942 (not (nullable!9264 (reg!21209 r1!6279))))))

(assert (=> b!7803706 (=> (not res!3107942) (not e!4619545))))

(declare-fun b!7803707 () Bool)

(declare-fun call!723764 () Bool)

(assert (=> b!7803707 (= e!4619544 call!723764)))

(declare-fun b!7803708 () Bool)

(assert (=> b!7803708 (= e!4619541 e!4619543)))

(assert (=> b!7803708 (= c!1437045 (is-Union!20880 r1!6279))))

(declare-fun bm!723759 () Bool)

(assert (=> bm!723759 (= call!723764 (validRegex!11294 (ite c!1437045 (regTwo!42273 r1!6279) (regTwo!42272 r1!6279))))))

(declare-fun b!7803709 () Bool)

(assert (=> b!7803709 (= e!4619540 call!723764)))

(declare-fun b!7803710 () Bool)

(declare-fun res!3107941 () Bool)

(assert (=> b!7803710 (=> res!3107941 e!4619539)))

(assert (=> b!7803710 (= res!3107941 (not (is-Concat!29725 r1!6279)))))

(assert (=> b!7803710 (= e!4619543 e!4619539)))

(declare-fun b!7803711 () Bool)

(assert (=> b!7803711 (= e!4619545 call!723762)))

(declare-fun bm!723758 () Bool)

(assert (=> bm!723758 (= call!723763 call!723762)))

(declare-fun d!2347760 () Bool)

(declare-fun res!3107939 () Bool)

(assert (=> d!2347760 (=> res!3107939 e!4619542)))

(assert (=> d!2347760 (= res!3107939 (is-ElementMatch!20880 r1!6279))))

(assert (=> d!2347760 (= (validRegex!11294 r1!6279) e!4619542)))

(assert (= (and d!2347760 (not res!3107939)) b!7803703))

(assert (= (and b!7803703 c!1437046) b!7803706))

(assert (= (and b!7803703 (not c!1437046)) b!7803708))

(assert (= (and b!7803706 res!3107942) b!7803711))

(assert (= (and b!7803708 c!1437045) b!7803704))

(assert (= (and b!7803708 (not c!1437045)) b!7803710))

(assert (= (and b!7803704 res!3107938) b!7803707))

(assert (= (and b!7803710 (not res!3107941)) b!7803705))

(assert (= (and b!7803705 res!3107940) b!7803709))

(assert (= (or b!7803704 b!7803705) bm!723758))

(assert (= (or b!7803707 b!7803709) bm!723759))

(assert (= (or b!7803711 bm!723758) bm!723757))

(declare-fun m!8238230 () Bool)

(assert (=> bm!723757 m!8238230))

(declare-fun m!8238232 () Bool)

(assert (=> b!7803706 m!8238232))

(declare-fun m!8238234 () Bool)

(assert (=> bm!723759 m!8238234))

(assert (=> start!741328 d!2347760))

(declare-fun d!2347762 () Bool)

(declare-fun nullableFct!3643 (Regex!20880) Bool)

(assert (=> d!2347762 (= (nullable!9264 r1!6279) (nullableFct!3643 r1!6279))))

(declare-fun bs!1966514 () Bool)

(assert (= bs!1966514 d!2347762))

(declare-fun m!8238236 () Bool)

(assert (=> bs!1966514 m!8238236))

(assert (=> b!7803597 d!2347762))

(declare-fun b!7803730 () Bool)

(declare-fun e!4619563 () Bool)

(declare-fun e!4619562 () Bool)

(assert (=> b!7803730 (= e!4619563 e!4619562)))

(declare-fun c!1437052 () Bool)

(assert (=> b!7803730 (= c!1437052 (is-Star!20880 r2!6217))))

(declare-fun b!7803731 () Bool)

(declare-fun res!3107953 () Bool)

(declare-fun e!4619565 () Bool)

(assert (=> b!7803731 (=> (not res!3107953) (not e!4619565))))

(declare-fun call!723766 () Bool)

(assert (=> b!7803731 (= res!3107953 call!723766)))

(declare-fun e!4619564 () Bool)

(assert (=> b!7803731 (= e!4619564 e!4619565)))

(declare-fun b!7803732 () Bool)

(declare-fun e!4619560 () Bool)

(declare-fun e!4619561 () Bool)

(assert (=> b!7803732 (= e!4619560 e!4619561)))

(declare-fun res!3107955 () Bool)

(assert (=> b!7803732 (=> (not res!3107955) (not e!4619561))))

(assert (=> b!7803732 (= res!3107955 call!723766)))

(declare-fun c!1437051 () Bool)

(declare-fun call!723765 () Bool)

(declare-fun bm!723760 () Bool)

(assert (=> bm!723760 (= call!723765 (validRegex!11294 (ite c!1437052 (reg!21209 r2!6217) (ite c!1437051 (regOne!42273 r2!6217) (regOne!42272 r2!6217)))))))

(declare-fun b!7803733 () Bool)

(declare-fun e!4619566 () Bool)

(assert (=> b!7803733 (= e!4619562 e!4619566)))

(declare-fun res!3107957 () Bool)

(assert (=> b!7803733 (= res!3107957 (not (nullable!9264 (reg!21209 r2!6217))))))

(assert (=> b!7803733 (=> (not res!3107957) (not e!4619566))))

(declare-fun b!7803734 () Bool)

(declare-fun call!723767 () Bool)

(assert (=> b!7803734 (= e!4619565 call!723767)))

(declare-fun b!7803735 () Bool)

(assert (=> b!7803735 (= e!4619562 e!4619564)))

(assert (=> b!7803735 (= c!1437051 (is-Union!20880 r2!6217))))

(declare-fun bm!723762 () Bool)

(assert (=> bm!723762 (= call!723767 (validRegex!11294 (ite c!1437051 (regTwo!42273 r2!6217) (regTwo!42272 r2!6217))))))

(declare-fun b!7803736 () Bool)

(assert (=> b!7803736 (= e!4619561 call!723767)))

(declare-fun b!7803737 () Bool)

(declare-fun res!3107956 () Bool)

(assert (=> b!7803737 (=> res!3107956 e!4619560)))

(assert (=> b!7803737 (= res!3107956 (not (is-Concat!29725 r2!6217)))))

(assert (=> b!7803737 (= e!4619564 e!4619560)))

(declare-fun b!7803738 () Bool)

(assert (=> b!7803738 (= e!4619566 call!723765)))

(declare-fun bm!723761 () Bool)

(assert (=> bm!723761 (= call!723766 call!723765)))

(declare-fun d!2347764 () Bool)

(declare-fun res!3107954 () Bool)

(assert (=> d!2347764 (=> res!3107954 e!4619563)))

(assert (=> d!2347764 (= res!3107954 (is-ElementMatch!20880 r2!6217))))

(assert (=> d!2347764 (= (validRegex!11294 r2!6217) e!4619563)))

(assert (= (and d!2347764 (not res!3107954)) b!7803730))

(assert (= (and b!7803730 c!1437052) b!7803733))

(assert (= (and b!7803730 (not c!1437052)) b!7803735))

(assert (= (and b!7803733 res!3107957) b!7803738))

(assert (= (and b!7803735 c!1437051) b!7803731))

(assert (= (and b!7803735 (not c!1437051)) b!7803737))

(assert (= (and b!7803731 res!3107953) b!7803734))

(assert (= (and b!7803737 (not res!3107956)) b!7803732))

(assert (= (and b!7803732 res!3107955) b!7803736))

(assert (= (or b!7803731 b!7803732) bm!723761))

(assert (= (or b!7803734 b!7803736) bm!723762))

(assert (= (or b!7803738 bm!723761) bm!723760))

(declare-fun m!8238238 () Bool)

(assert (=> bm!723760 m!8238238))

(declare-fun m!8238240 () Bool)

(assert (=> b!7803733 m!8238240))

(declare-fun m!8238242 () Bool)

(assert (=> bm!723762 m!8238242))

(assert (=> b!7803601 d!2347764))

(declare-fun b!7803776 () Bool)

(declare-fun e!4619594 () Bool)

(declare-fun head!15955 (List!73719) C!42086)

(assert (=> b!7803776 (= e!4619594 (not (= (head!15955 (t!388454 s!14292)) (c!1437033 lt!2674847))))))

(declare-fun d!2347766 () Bool)

(declare-fun e!4619593 () Bool)

(assert (=> d!2347766 e!4619593))

(declare-fun c!1437062 () Bool)

(assert (=> d!2347766 (= c!1437062 (is-EmptyExpr!20880 lt!2674847))))

(declare-fun lt!2674879 () Bool)

(declare-fun e!4619588 () Bool)

(assert (=> d!2347766 (= lt!2674879 e!4619588)))

(declare-fun c!1437061 () Bool)

(declare-fun isEmpty!42242 (List!73719) Bool)

(assert (=> d!2347766 (= c!1437061 (isEmpty!42242 (t!388454 s!14292)))))

(assert (=> d!2347766 (validRegex!11294 lt!2674847)))

(assert (=> d!2347766 (= (matchR!10340 lt!2674847 (t!388454 s!14292)) lt!2674879)))

(declare-fun b!7803777 () Bool)

(assert (=> b!7803777 (= e!4619588 (nullable!9264 lt!2674847))))

(declare-fun b!7803778 () Bool)

(declare-fun res!3107986 () Bool)

(declare-fun e!4619590 () Bool)

(assert (=> b!7803778 (=> res!3107986 e!4619590)))

(assert (=> b!7803778 (= res!3107986 (not (is-ElementMatch!20880 lt!2674847)))))

(declare-fun e!4619592 () Bool)

(assert (=> b!7803778 (= e!4619592 e!4619590)))

(declare-fun b!7803779 () Bool)

(declare-fun e!4619591 () Bool)

(assert (=> b!7803779 (= e!4619591 (= (head!15955 (t!388454 s!14292)) (c!1437033 lt!2674847)))))

(declare-fun b!7803780 () Bool)

(declare-fun e!4619589 () Bool)

(assert (=> b!7803780 (= e!4619589 e!4619594)))

(declare-fun res!3107983 () Bool)

(assert (=> b!7803780 (=> res!3107983 e!4619594)))

(declare-fun call!723779 () Bool)

(assert (=> b!7803780 (= res!3107983 call!723779)))

(declare-fun bm!723774 () Bool)

(assert (=> bm!723774 (= call!723779 (isEmpty!42242 (t!388454 s!14292)))))

(declare-fun b!7803781 () Bool)

(assert (=> b!7803781 (= e!4619590 e!4619589)))

(declare-fun res!3107984 () Bool)

(assert (=> b!7803781 (=> (not res!3107984) (not e!4619589))))

(assert (=> b!7803781 (= res!3107984 (not lt!2674879))))

(declare-fun b!7803782 () Bool)

(declare-fun res!3107979 () Bool)

(assert (=> b!7803782 (=> (not res!3107979) (not e!4619591))))

(assert (=> b!7803782 (= res!3107979 (not call!723779))))

(declare-fun b!7803783 () Bool)

(assert (=> b!7803783 (= e!4619592 (not lt!2674879))))

(declare-fun b!7803784 () Bool)

(declare-fun res!3107982 () Bool)

(assert (=> b!7803784 (=> (not res!3107982) (not e!4619591))))

(declare-fun tail!15496 (List!73719) List!73719)

(assert (=> b!7803784 (= res!3107982 (isEmpty!42242 (tail!15496 (t!388454 s!14292))))))

(declare-fun b!7803785 () Bool)

(declare-fun res!3107981 () Bool)

(assert (=> b!7803785 (=> res!3107981 e!4619590)))

(assert (=> b!7803785 (= res!3107981 e!4619591)))

(declare-fun res!3107985 () Bool)

(assert (=> b!7803785 (=> (not res!3107985) (not e!4619591))))

(assert (=> b!7803785 (= res!3107985 lt!2674879)))

(declare-fun b!7803786 () Bool)

(declare-fun res!3107980 () Bool)

(assert (=> b!7803786 (=> res!3107980 e!4619594)))

(assert (=> b!7803786 (= res!3107980 (not (isEmpty!42242 (tail!15496 (t!388454 s!14292)))))))

(declare-fun b!7803787 () Bool)

(assert (=> b!7803787 (= e!4619593 e!4619592)))

(declare-fun c!1437063 () Bool)

(assert (=> b!7803787 (= c!1437063 (is-EmptyLang!20880 lt!2674847))))

(declare-fun b!7803788 () Bool)

(assert (=> b!7803788 (= e!4619593 (= lt!2674879 call!723779))))

(declare-fun b!7803789 () Bool)

(assert (=> b!7803789 (= e!4619588 (matchR!10340 (derivativeStep!6217 lt!2674847 (head!15955 (t!388454 s!14292))) (tail!15496 (t!388454 s!14292))))))

(assert (= (and d!2347766 c!1437061) b!7803777))

(assert (= (and d!2347766 (not c!1437061)) b!7803789))

(assert (= (and d!2347766 c!1437062) b!7803788))

(assert (= (and d!2347766 (not c!1437062)) b!7803787))

(assert (= (and b!7803787 c!1437063) b!7803783))

(assert (= (and b!7803787 (not c!1437063)) b!7803778))

(assert (= (and b!7803778 (not res!3107986)) b!7803785))

(assert (= (and b!7803785 res!3107985) b!7803782))

(assert (= (and b!7803782 res!3107979) b!7803784))

(assert (= (and b!7803784 res!3107982) b!7803779))

(assert (= (and b!7803785 (not res!3107981)) b!7803781))

(assert (= (and b!7803781 res!3107984) b!7803780))

(assert (= (and b!7803780 (not res!3107983)) b!7803786))

(assert (= (and b!7803786 (not res!3107980)) b!7803776))

(assert (= (or b!7803788 b!7803780 b!7803782) bm!723774))

(declare-fun m!8238250 () Bool)

(assert (=> b!7803786 m!8238250))

(assert (=> b!7803786 m!8238250))

(declare-fun m!8238252 () Bool)

(assert (=> b!7803786 m!8238252))

(declare-fun m!8238254 () Bool)

(assert (=> d!2347766 m!8238254))

(declare-fun m!8238256 () Bool)

(assert (=> d!2347766 m!8238256))

(declare-fun m!8238258 () Bool)

(assert (=> b!7803779 m!8238258))

(declare-fun m!8238260 () Bool)

(assert (=> b!7803777 m!8238260))

(assert (=> b!7803784 m!8238250))

(assert (=> b!7803784 m!8238250))

(assert (=> b!7803784 m!8238252))

(assert (=> b!7803789 m!8238258))

(assert (=> b!7803789 m!8238258))

(declare-fun m!8238262 () Bool)

(assert (=> b!7803789 m!8238262))

(assert (=> b!7803789 m!8238250))

(assert (=> b!7803789 m!8238262))

(assert (=> b!7803789 m!8238250))

(declare-fun m!8238264 () Bool)

(assert (=> b!7803789 m!8238264))

(assert (=> b!7803776 m!8238258))

(assert (=> bm!723774 m!8238254))

(assert (=> b!7803606 d!2347766))

(declare-fun b!7803816 () Bool)

(declare-fun e!4619608 () Regex!20880)

(declare-fun call!723788 () Regex!20880)

(assert (=> b!7803816 (= e!4619608 (Concat!29725 call!723788 lt!2674849))))

(declare-fun bm!723783 () Bool)

(declare-fun call!723789 () Regex!20880)

(assert (=> bm!723783 (= call!723788 call!723789)))

(declare-fun b!7803817 () Bool)

(declare-fun e!4619609 () Regex!20880)

(assert (=> b!7803817 (= e!4619609 (ite (= (h!80043 s!14292) (c!1437033 lt!2674849)) EmptyExpr!20880 EmptyLang!20880))))

(declare-fun d!2347770 () Bool)

(declare-fun lt!2674888 () Regex!20880)

(assert (=> d!2347770 (validRegex!11294 lt!2674888)))

(declare-fun e!4619611 () Regex!20880)

(assert (=> d!2347770 (= lt!2674888 e!4619611)))

(declare-fun c!1437077 () Bool)

(assert (=> d!2347770 (= c!1437077 (or (is-EmptyExpr!20880 lt!2674849) (is-EmptyLang!20880 lt!2674849)))))

(assert (=> d!2347770 (validRegex!11294 lt!2674849)))

(assert (=> d!2347770 (= (derivativeStep!6217 lt!2674849 (h!80043 s!14292)) lt!2674888)))

(declare-fun b!7803818 () Bool)

(declare-fun c!1437079 () Bool)

(assert (=> b!7803818 (= c!1437079 (is-Union!20880 lt!2674849))))

(declare-fun e!4619610 () Regex!20880)

(assert (=> b!7803818 (= e!4619609 e!4619610)))

(declare-fun b!7803819 () Bool)

(assert (=> b!7803819 (= e!4619610 e!4619608)))

(declare-fun c!1437080 () Bool)

(assert (=> b!7803819 (= c!1437080 (is-Star!20880 lt!2674849))))

(declare-fun b!7803820 () Bool)

(declare-fun call!723791 () Regex!20880)

(declare-fun e!4619612 () Regex!20880)

(declare-fun call!723790 () Regex!20880)

(assert (=> b!7803820 (= e!4619612 (Union!20880 (Concat!29725 call!723791 (regTwo!42272 lt!2674849)) call!723790))))

(declare-fun b!7803821 () Bool)

(assert (=> b!7803821 (= e!4619612 (Union!20880 (Concat!29725 call!723790 (regTwo!42272 lt!2674849)) EmptyLang!20880))))

(declare-fun b!7803822 () Bool)

(assert (=> b!7803822 (= e!4619610 (Union!20880 call!723791 call!723789))))

(declare-fun b!7803823 () Bool)

(assert (=> b!7803823 (= e!4619611 e!4619609)))

(declare-fun c!1437081 () Bool)

(assert (=> b!7803823 (= c!1437081 (is-ElementMatch!20880 lt!2674849))))

(declare-fun bm!723784 () Bool)

(assert (=> bm!723784 (= call!723791 (derivativeStep!6217 (ite c!1437079 (regOne!42273 lt!2674849) (regOne!42272 lt!2674849)) (h!80043 s!14292)))))

(declare-fun b!7803824 () Bool)

(declare-fun c!1437078 () Bool)

(assert (=> b!7803824 (= c!1437078 (nullable!9264 (regOne!42272 lt!2674849)))))

(assert (=> b!7803824 (= e!4619608 e!4619612)))

(declare-fun bm!723785 () Bool)

(assert (=> bm!723785 (= call!723790 call!723788)))

(declare-fun bm!723786 () Bool)

(assert (=> bm!723786 (= call!723789 (derivativeStep!6217 (ite c!1437079 (regTwo!42273 lt!2674849) (ite c!1437080 (reg!21209 lt!2674849) (ite c!1437078 (regTwo!42272 lt!2674849) (regOne!42272 lt!2674849)))) (h!80043 s!14292)))))

(declare-fun b!7803825 () Bool)

(assert (=> b!7803825 (= e!4619611 EmptyLang!20880)))

(assert (= (and d!2347770 c!1437077) b!7803825))

(assert (= (and d!2347770 (not c!1437077)) b!7803823))

(assert (= (and b!7803823 c!1437081) b!7803817))

(assert (= (and b!7803823 (not c!1437081)) b!7803818))

(assert (= (and b!7803818 c!1437079) b!7803822))

(assert (= (and b!7803818 (not c!1437079)) b!7803819))

(assert (= (and b!7803819 c!1437080) b!7803816))

(assert (= (and b!7803819 (not c!1437080)) b!7803824))

(assert (= (and b!7803824 c!1437078) b!7803820))

(assert (= (and b!7803824 (not c!1437078)) b!7803821))

(assert (= (or b!7803820 b!7803821) bm!723785))

(assert (= (or b!7803816 bm!723785) bm!723783))

(assert (= (or b!7803822 bm!723783) bm!723786))

(assert (= (or b!7803822 b!7803820) bm!723784))

(declare-fun m!8238276 () Bool)

(assert (=> d!2347770 m!8238276))

(declare-fun m!8238278 () Bool)

(assert (=> d!2347770 m!8238278))

(declare-fun m!8238280 () Bool)

(assert (=> bm!723784 m!8238280))

(declare-fun m!8238282 () Bool)

(assert (=> b!7803824 m!8238282))

(declare-fun m!8238284 () Bool)

(assert (=> bm!723786 m!8238284))

(assert (=> b!7803606 d!2347770))

(declare-fun b!7803826 () Bool)

(declare-fun e!4619613 () Regex!20880)

(declare-fun call!723792 () Regex!20880)

(assert (=> b!7803826 (= e!4619613 (Concat!29725 call!723792 r1!6279))))

(declare-fun bm!723787 () Bool)

(declare-fun call!723793 () Regex!20880)

(assert (=> bm!723787 (= call!723792 call!723793)))

(declare-fun b!7803827 () Bool)

(declare-fun e!4619614 () Regex!20880)

(assert (=> b!7803827 (= e!4619614 (ite (= (h!80043 s!14292) (c!1437033 r1!6279)) EmptyExpr!20880 EmptyLang!20880))))

(declare-fun d!2347776 () Bool)

(declare-fun lt!2674889 () Regex!20880)

(assert (=> d!2347776 (validRegex!11294 lt!2674889)))

(declare-fun e!4619616 () Regex!20880)

(assert (=> d!2347776 (= lt!2674889 e!4619616)))

(declare-fun c!1437082 () Bool)

(assert (=> d!2347776 (= c!1437082 (or (is-EmptyExpr!20880 r1!6279) (is-EmptyLang!20880 r1!6279)))))

(assert (=> d!2347776 (validRegex!11294 r1!6279)))

(assert (=> d!2347776 (= (derivativeStep!6217 r1!6279 (h!80043 s!14292)) lt!2674889)))

(declare-fun b!7803828 () Bool)

(declare-fun c!1437084 () Bool)

(assert (=> b!7803828 (= c!1437084 (is-Union!20880 r1!6279))))

(declare-fun e!4619615 () Regex!20880)

(assert (=> b!7803828 (= e!4619614 e!4619615)))

(declare-fun b!7803829 () Bool)

(assert (=> b!7803829 (= e!4619615 e!4619613)))

(declare-fun c!1437085 () Bool)

(assert (=> b!7803829 (= c!1437085 (is-Star!20880 r1!6279))))

(declare-fun e!4619617 () Regex!20880)

(declare-fun call!723795 () Regex!20880)

(declare-fun call!723794 () Regex!20880)

(declare-fun b!7803830 () Bool)

(assert (=> b!7803830 (= e!4619617 (Union!20880 (Concat!29725 call!723795 (regTwo!42272 r1!6279)) call!723794))))

(declare-fun b!7803831 () Bool)

(assert (=> b!7803831 (= e!4619617 (Union!20880 (Concat!29725 call!723794 (regTwo!42272 r1!6279)) EmptyLang!20880))))

(declare-fun b!7803832 () Bool)

(assert (=> b!7803832 (= e!4619615 (Union!20880 call!723795 call!723793))))

(declare-fun b!7803833 () Bool)

(assert (=> b!7803833 (= e!4619616 e!4619614)))

(declare-fun c!1437086 () Bool)

(assert (=> b!7803833 (= c!1437086 (is-ElementMatch!20880 r1!6279))))

(declare-fun bm!723788 () Bool)

(assert (=> bm!723788 (= call!723795 (derivativeStep!6217 (ite c!1437084 (regOne!42273 r1!6279) (regOne!42272 r1!6279)) (h!80043 s!14292)))))

(declare-fun b!7803834 () Bool)

(declare-fun c!1437083 () Bool)

(assert (=> b!7803834 (= c!1437083 (nullable!9264 (regOne!42272 r1!6279)))))

(assert (=> b!7803834 (= e!4619613 e!4619617)))

(declare-fun bm!723789 () Bool)

(assert (=> bm!723789 (= call!723794 call!723792)))

(declare-fun bm!723790 () Bool)

(assert (=> bm!723790 (= call!723793 (derivativeStep!6217 (ite c!1437084 (regTwo!42273 r1!6279) (ite c!1437085 (reg!21209 r1!6279) (ite c!1437083 (regTwo!42272 r1!6279) (regOne!42272 r1!6279)))) (h!80043 s!14292)))))

(declare-fun b!7803835 () Bool)

(assert (=> b!7803835 (= e!4619616 EmptyLang!20880)))

(assert (= (and d!2347776 c!1437082) b!7803835))

(assert (= (and d!2347776 (not c!1437082)) b!7803833))

(assert (= (and b!7803833 c!1437086) b!7803827))

(assert (= (and b!7803833 (not c!1437086)) b!7803828))

(assert (= (and b!7803828 c!1437084) b!7803832))

(assert (= (and b!7803828 (not c!1437084)) b!7803829))

(assert (= (and b!7803829 c!1437085) b!7803826))

(assert (= (and b!7803829 (not c!1437085)) b!7803834))

(assert (= (and b!7803834 c!1437083) b!7803830))

(assert (= (and b!7803834 (not c!1437083)) b!7803831))

(assert (= (or b!7803830 b!7803831) bm!723789))

(assert (= (or b!7803826 bm!723789) bm!723787))

(assert (= (or b!7803832 bm!723787) bm!723790))

(assert (= (or b!7803832 b!7803830) bm!723788))

(declare-fun m!8238286 () Bool)

(assert (=> d!2347776 m!8238286))

(assert (=> d!2347776 m!8238162))

(declare-fun m!8238288 () Bool)

(assert (=> bm!723788 m!8238288))

(declare-fun m!8238290 () Bool)

(assert (=> b!7803834 m!8238290))

(declare-fun m!8238292 () Bool)

(assert (=> bm!723790 m!8238292))

(assert (=> b!7803605 d!2347776))

(declare-fun b!7803836 () Bool)

(declare-fun e!4619624 () Bool)

(assert (=> b!7803836 (= e!4619624 (not (= (head!15955 (t!388454 s!14292)) (c!1437033 EmptyLang!20880))))))

(declare-fun d!2347778 () Bool)

(declare-fun e!4619623 () Bool)

(assert (=> d!2347778 e!4619623))

(declare-fun c!1437088 () Bool)

(assert (=> d!2347778 (= c!1437088 (is-EmptyExpr!20880 EmptyLang!20880))))

(declare-fun lt!2674890 () Bool)

(declare-fun e!4619618 () Bool)

(assert (=> d!2347778 (= lt!2674890 e!4619618)))

(declare-fun c!1437087 () Bool)

(assert (=> d!2347778 (= c!1437087 (isEmpty!42242 (t!388454 s!14292)))))

(assert (=> d!2347778 (validRegex!11294 EmptyLang!20880)))

(assert (=> d!2347778 (= (matchR!10340 EmptyLang!20880 (t!388454 s!14292)) lt!2674890)))

(declare-fun b!7803837 () Bool)

(assert (=> b!7803837 (= e!4619618 (nullable!9264 EmptyLang!20880))))

(declare-fun b!7803838 () Bool)

(declare-fun res!3107994 () Bool)

(declare-fun e!4619620 () Bool)

(assert (=> b!7803838 (=> res!3107994 e!4619620)))

(assert (=> b!7803838 (= res!3107994 (not (is-ElementMatch!20880 EmptyLang!20880)))))

(declare-fun e!4619622 () Bool)

(assert (=> b!7803838 (= e!4619622 e!4619620)))

(declare-fun b!7803839 () Bool)

(declare-fun e!4619621 () Bool)

(assert (=> b!7803839 (= e!4619621 (= (head!15955 (t!388454 s!14292)) (c!1437033 EmptyLang!20880)))))

(declare-fun b!7803840 () Bool)

(declare-fun e!4619619 () Bool)

(assert (=> b!7803840 (= e!4619619 e!4619624)))

(declare-fun res!3107991 () Bool)

(assert (=> b!7803840 (=> res!3107991 e!4619624)))

(declare-fun call!723796 () Bool)

(assert (=> b!7803840 (= res!3107991 call!723796)))

(declare-fun bm!723791 () Bool)

(assert (=> bm!723791 (= call!723796 (isEmpty!42242 (t!388454 s!14292)))))

(declare-fun b!7803841 () Bool)

(assert (=> b!7803841 (= e!4619620 e!4619619)))

(declare-fun res!3107992 () Bool)

(assert (=> b!7803841 (=> (not res!3107992) (not e!4619619))))

(assert (=> b!7803841 (= res!3107992 (not lt!2674890))))

(declare-fun b!7803842 () Bool)

(declare-fun res!3107987 () Bool)

(assert (=> b!7803842 (=> (not res!3107987) (not e!4619621))))

(assert (=> b!7803842 (= res!3107987 (not call!723796))))

(declare-fun b!7803843 () Bool)

(assert (=> b!7803843 (= e!4619622 (not lt!2674890))))

(declare-fun b!7803844 () Bool)

(declare-fun res!3107990 () Bool)

(assert (=> b!7803844 (=> (not res!3107990) (not e!4619621))))

(assert (=> b!7803844 (= res!3107990 (isEmpty!42242 (tail!15496 (t!388454 s!14292))))))

(declare-fun b!7803845 () Bool)

(declare-fun res!3107989 () Bool)

(assert (=> b!7803845 (=> res!3107989 e!4619620)))

(assert (=> b!7803845 (= res!3107989 e!4619621)))

(declare-fun res!3107993 () Bool)

(assert (=> b!7803845 (=> (not res!3107993) (not e!4619621))))

(assert (=> b!7803845 (= res!3107993 lt!2674890)))

(declare-fun b!7803846 () Bool)

(declare-fun res!3107988 () Bool)

(assert (=> b!7803846 (=> res!3107988 e!4619624)))

(assert (=> b!7803846 (= res!3107988 (not (isEmpty!42242 (tail!15496 (t!388454 s!14292)))))))

(declare-fun b!7803847 () Bool)

(assert (=> b!7803847 (= e!4619623 e!4619622)))

(declare-fun c!1437089 () Bool)

(assert (=> b!7803847 (= c!1437089 (is-EmptyLang!20880 EmptyLang!20880))))

(declare-fun b!7803848 () Bool)

(assert (=> b!7803848 (= e!4619623 (= lt!2674890 call!723796))))

(declare-fun b!7803849 () Bool)

(assert (=> b!7803849 (= e!4619618 (matchR!10340 (derivativeStep!6217 EmptyLang!20880 (head!15955 (t!388454 s!14292))) (tail!15496 (t!388454 s!14292))))))

(assert (= (and d!2347778 c!1437087) b!7803837))

(assert (= (and d!2347778 (not c!1437087)) b!7803849))

(assert (= (and d!2347778 c!1437088) b!7803848))

(assert (= (and d!2347778 (not c!1437088)) b!7803847))

(assert (= (and b!7803847 c!1437089) b!7803843))

(assert (= (and b!7803847 (not c!1437089)) b!7803838))

(assert (= (and b!7803838 (not res!3107994)) b!7803845))

(assert (= (and b!7803845 res!3107993) b!7803842))

(assert (= (and b!7803842 res!3107987) b!7803844))

(assert (= (and b!7803844 res!3107990) b!7803839))

(assert (= (and b!7803845 (not res!3107989)) b!7803841))

(assert (= (and b!7803841 res!3107992) b!7803840))

(assert (= (and b!7803840 (not res!3107991)) b!7803846))

(assert (= (and b!7803846 (not res!3107988)) b!7803836))

(assert (= (or b!7803848 b!7803840 b!7803842) bm!723791))

(assert (=> b!7803846 m!8238250))

(assert (=> b!7803846 m!8238250))

(assert (=> b!7803846 m!8238252))

(assert (=> d!2347778 m!8238254))

(declare-fun m!8238294 () Bool)

(assert (=> d!2347778 m!8238294))

(assert (=> b!7803839 m!8238258))

(declare-fun m!8238296 () Bool)

(assert (=> b!7803837 m!8238296))

(assert (=> b!7803844 m!8238250))

(assert (=> b!7803844 m!8238250))

(assert (=> b!7803844 m!8238252))

(assert (=> b!7803849 m!8238258))

(assert (=> b!7803849 m!8238258))

(declare-fun m!8238298 () Bool)

(assert (=> b!7803849 m!8238298))

(assert (=> b!7803849 m!8238250))

(assert (=> b!7803849 m!8238298))

(assert (=> b!7803849 m!8238250))

(declare-fun m!8238300 () Bool)

(assert (=> b!7803849 m!8238300))

(assert (=> b!7803836 m!8238258))

(assert (=> bm!723791 m!8238254))

(assert (=> b!7803594 d!2347778))

(declare-fun d!2347780 () Bool)

(declare-fun lt!2674893 () Regex!20880)

(assert (=> d!2347780 (validRegex!11294 lt!2674893)))

(declare-fun e!4619627 () Regex!20880)

(assert (=> d!2347780 (= lt!2674893 e!4619627)))

(declare-fun c!1437092 () Bool)

(assert (=> d!2347780 (= c!1437092 (is-Cons!73595 (t!388454 s!14292)))))

(assert (=> d!2347780 (validRegex!11294 EmptyLang!20880)))

(assert (=> d!2347780 (= (derivative!562 EmptyLang!20880 (t!388454 s!14292)) lt!2674893)))

(declare-fun b!7803854 () Bool)

(assert (=> b!7803854 (= e!4619627 (derivative!562 (derivativeStep!6217 EmptyLang!20880 (h!80043 (t!388454 s!14292))) (t!388454 (t!388454 s!14292))))))

(declare-fun b!7803855 () Bool)

(assert (=> b!7803855 (= e!4619627 EmptyLang!20880)))

(assert (= (and d!2347780 c!1437092) b!7803854))

(assert (= (and d!2347780 (not c!1437092)) b!7803855))

(declare-fun m!8238302 () Bool)

(assert (=> d!2347780 m!8238302))

(assert (=> d!2347780 m!8238294))

(declare-fun m!8238304 () Bool)

(assert (=> b!7803854 m!8238304))

(assert (=> b!7803854 m!8238304))

(declare-fun m!8238306 () Bool)

(assert (=> b!7803854 m!8238306))

(assert (=> b!7803599 d!2347780))

(declare-fun d!2347782 () Bool)

(assert (=> d!2347782 (= (derivative!562 EmptyLang!20880 (t!388454 s!14292)) EmptyLang!20880)))

(declare-fun lt!2674898 () Unit!168598)

(declare-fun choose!59547 (Regex!20880 List!73719) Unit!168598)

(assert (=> d!2347782 (= lt!2674898 (choose!59547 EmptyLang!20880 (t!388454 s!14292)))))

(assert (=> d!2347782 (= EmptyLang!20880 EmptyLang!20880)))

(assert (=> d!2347782 (= (lemmaEmptyLangDerivativeIsAFixPoint!97 EmptyLang!20880 (t!388454 s!14292)) lt!2674898)))

(declare-fun bs!1966516 () Bool)

(assert (= bs!1966516 d!2347782))

(assert (=> bs!1966516 m!8238180))

(declare-fun m!8238308 () Bool)

(assert (=> bs!1966516 m!8238308))

(assert (=> b!7803599 d!2347782))

(declare-fun b!7803884 () Bool)

(declare-fun e!4619648 () Bool)

(assert (=> b!7803884 (= e!4619648 (not (= (head!15955 (t!388454 s!14292)) (c!1437033 lt!2674848))))))

(declare-fun d!2347784 () Bool)

(declare-fun e!4619647 () Bool)

(assert (=> d!2347784 e!4619647))

(declare-fun c!1437100 () Bool)

(assert (=> d!2347784 (= c!1437100 (is-EmptyExpr!20880 lt!2674848))))

(declare-fun lt!2674899 () Bool)

(declare-fun e!4619642 () Bool)

(assert (=> d!2347784 (= lt!2674899 e!4619642)))

(declare-fun c!1437099 () Bool)

(assert (=> d!2347784 (= c!1437099 (isEmpty!42242 (t!388454 s!14292)))))

(assert (=> d!2347784 (validRegex!11294 lt!2674848)))

(assert (=> d!2347784 (= (matchR!10340 lt!2674848 (t!388454 s!14292)) lt!2674899)))

(declare-fun b!7803885 () Bool)

(assert (=> b!7803885 (= e!4619642 (nullable!9264 lt!2674848))))

(declare-fun b!7803886 () Bool)

(declare-fun res!3108018 () Bool)

(declare-fun e!4619644 () Bool)

(assert (=> b!7803886 (=> res!3108018 e!4619644)))

(assert (=> b!7803886 (= res!3108018 (not (is-ElementMatch!20880 lt!2674848)))))

(declare-fun e!4619646 () Bool)

(assert (=> b!7803886 (= e!4619646 e!4619644)))

(declare-fun b!7803887 () Bool)

(declare-fun e!4619645 () Bool)

(assert (=> b!7803887 (= e!4619645 (= (head!15955 (t!388454 s!14292)) (c!1437033 lt!2674848)))))

(declare-fun b!7803888 () Bool)

(declare-fun e!4619643 () Bool)

(assert (=> b!7803888 (= e!4619643 e!4619648)))

(declare-fun res!3108015 () Bool)

(assert (=> b!7803888 (=> res!3108015 e!4619648)))

(declare-fun call!723797 () Bool)

(assert (=> b!7803888 (= res!3108015 call!723797)))

(declare-fun bm!723792 () Bool)

(assert (=> bm!723792 (= call!723797 (isEmpty!42242 (t!388454 s!14292)))))

(declare-fun b!7803889 () Bool)

(assert (=> b!7803889 (= e!4619644 e!4619643)))

(declare-fun res!3108016 () Bool)

(assert (=> b!7803889 (=> (not res!3108016) (not e!4619643))))

(assert (=> b!7803889 (= res!3108016 (not lt!2674899))))

(declare-fun b!7803890 () Bool)

(declare-fun res!3108011 () Bool)

(assert (=> b!7803890 (=> (not res!3108011) (not e!4619645))))

(assert (=> b!7803890 (= res!3108011 (not call!723797))))

(declare-fun b!7803891 () Bool)

(assert (=> b!7803891 (= e!4619646 (not lt!2674899))))

(declare-fun b!7803892 () Bool)

(declare-fun res!3108014 () Bool)

(assert (=> b!7803892 (=> (not res!3108014) (not e!4619645))))

(assert (=> b!7803892 (= res!3108014 (isEmpty!42242 (tail!15496 (t!388454 s!14292))))))

(declare-fun b!7803893 () Bool)

(declare-fun res!3108013 () Bool)

(assert (=> b!7803893 (=> res!3108013 e!4619644)))

(assert (=> b!7803893 (= res!3108013 e!4619645)))

(declare-fun res!3108017 () Bool)

(assert (=> b!7803893 (=> (not res!3108017) (not e!4619645))))

(assert (=> b!7803893 (= res!3108017 lt!2674899)))

(declare-fun b!7803894 () Bool)

(declare-fun res!3108012 () Bool)

(assert (=> b!7803894 (=> res!3108012 e!4619648)))

(assert (=> b!7803894 (= res!3108012 (not (isEmpty!42242 (tail!15496 (t!388454 s!14292)))))))

(declare-fun b!7803895 () Bool)

(assert (=> b!7803895 (= e!4619647 e!4619646)))

(declare-fun c!1437101 () Bool)

(assert (=> b!7803895 (= c!1437101 (is-EmptyLang!20880 lt!2674848))))

(declare-fun b!7803896 () Bool)

(assert (=> b!7803896 (= e!4619647 (= lt!2674899 call!723797))))

(declare-fun b!7803897 () Bool)

(assert (=> b!7803897 (= e!4619642 (matchR!10340 (derivativeStep!6217 lt!2674848 (head!15955 (t!388454 s!14292))) (tail!15496 (t!388454 s!14292))))))

(assert (= (and d!2347784 c!1437099) b!7803885))

(assert (= (and d!2347784 (not c!1437099)) b!7803897))

(assert (= (and d!2347784 c!1437100) b!7803896))

(assert (= (and d!2347784 (not c!1437100)) b!7803895))

(assert (= (and b!7803895 c!1437101) b!7803891))

(assert (= (and b!7803895 (not c!1437101)) b!7803886))

(assert (= (and b!7803886 (not res!3108018)) b!7803893))

(assert (= (and b!7803893 res!3108017) b!7803890))

(assert (= (and b!7803890 res!3108011) b!7803892))

(assert (= (and b!7803892 res!3108014) b!7803887))

(assert (= (and b!7803893 (not res!3108013)) b!7803889))

(assert (= (and b!7803889 res!3108016) b!7803888))

(assert (= (and b!7803888 (not res!3108015)) b!7803894))

(assert (= (and b!7803894 (not res!3108012)) b!7803884))

(assert (= (or b!7803896 b!7803888 b!7803890) bm!723792))

(assert (=> b!7803894 m!8238250))

(assert (=> b!7803894 m!8238250))

(assert (=> b!7803894 m!8238252))

(assert (=> d!2347784 m!8238254))

(declare-fun m!8238310 () Bool)

(assert (=> d!2347784 m!8238310))

(assert (=> b!7803887 m!8238258))

(declare-fun m!8238312 () Bool)

(assert (=> b!7803885 m!8238312))

(assert (=> b!7803892 m!8238250))

(assert (=> b!7803892 m!8238250))

(assert (=> b!7803892 m!8238252))

(assert (=> b!7803897 m!8238258))

(assert (=> b!7803897 m!8238258))

(declare-fun m!8238314 () Bool)

(assert (=> b!7803897 m!8238314))

(assert (=> b!7803897 m!8238250))

(assert (=> b!7803897 m!8238314))

(assert (=> b!7803897 m!8238250))

(declare-fun m!8238316 () Bool)

(assert (=> b!7803897 m!8238316))

(assert (=> b!7803884 m!8238258))

(assert (=> bm!723792 m!8238254))

(assert (=> b!7803599 d!2347784))

(declare-fun d!2347786 () Bool)

(declare-fun e!4619653 () Bool)

(assert (=> d!2347786 e!4619653))

(declare-fun res!3108023 () Bool)

(assert (=> d!2347786 (=> res!3108023 e!4619653)))

(assert (=> d!2347786 (= res!3108023 (matchR!10340 lt!2674848 (t!388454 s!14292)))))

(declare-fun lt!2674902 () Unit!168598)

(declare-fun choose!59548 (Regex!20880 Regex!20880 List!73719) Unit!168598)

(assert (=> d!2347786 (= lt!2674902 (choose!59548 lt!2674848 EmptyLang!20880 (t!388454 s!14292)))))

(declare-fun e!4619654 () Bool)

(assert (=> d!2347786 e!4619654))

(declare-fun res!3108024 () Bool)

(assert (=> d!2347786 (=> (not res!3108024) (not e!4619654))))

(assert (=> d!2347786 (= res!3108024 (validRegex!11294 lt!2674848))))

(assert (=> d!2347786 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!419 lt!2674848 EmptyLang!20880 (t!388454 s!14292)) lt!2674902)))

(declare-fun b!7803902 () Bool)

(assert (=> b!7803902 (= e!4619654 (validRegex!11294 EmptyLang!20880))))

(declare-fun b!7803903 () Bool)

(assert (=> b!7803903 (= e!4619653 (matchR!10340 EmptyLang!20880 (t!388454 s!14292)))))

(assert (= (and d!2347786 res!3108024) b!7803902))

(assert (= (and d!2347786 (not res!3108023)) b!7803903))

(assert (=> d!2347786 m!8238184))

(declare-fun m!8238318 () Bool)

(assert (=> d!2347786 m!8238318))

(assert (=> d!2347786 m!8238310))

(assert (=> b!7803902 m!8238294))

(assert (=> b!7803903 m!8238178))

(assert (=> b!7803599 d!2347786))

(declare-fun b!7803904 () Bool)

(declare-fun e!4619661 () Bool)

(assert (=> b!7803904 (= e!4619661 (not (= (head!15955 s!14292) (c!1437033 lt!2674849))))))

(declare-fun d!2347788 () Bool)

(declare-fun e!4619660 () Bool)

(assert (=> d!2347788 e!4619660))

(declare-fun c!1437103 () Bool)

(assert (=> d!2347788 (= c!1437103 (is-EmptyExpr!20880 lt!2674849))))

(declare-fun lt!2674903 () Bool)

(declare-fun e!4619655 () Bool)

(assert (=> d!2347788 (= lt!2674903 e!4619655)))

(declare-fun c!1437102 () Bool)

(assert (=> d!2347788 (= c!1437102 (isEmpty!42242 s!14292))))

(assert (=> d!2347788 (validRegex!11294 lt!2674849)))

(assert (=> d!2347788 (= (matchR!10340 lt!2674849 s!14292) lt!2674903)))

(declare-fun b!7803905 () Bool)

(assert (=> b!7803905 (= e!4619655 (nullable!9264 lt!2674849))))

(declare-fun b!7803906 () Bool)

(declare-fun res!3108032 () Bool)

(declare-fun e!4619657 () Bool)

(assert (=> b!7803906 (=> res!3108032 e!4619657)))

(assert (=> b!7803906 (= res!3108032 (not (is-ElementMatch!20880 lt!2674849)))))

(declare-fun e!4619659 () Bool)

(assert (=> b!7803906 (= e!4619659 e!4619657)))

(declare-fun b!7803907 () Bool)

(declare-fun e!4619658 () Bool)

(assert (=> b!7803907 (= e!4619658 (= (head!15955 s!14292) (c!1437033 lt!2674849)))))

(declare-fun b!7803908 () Bool)

(declare-fun e!4619656 () Bool)

(assert (=> b!7803908 (= e!4619656 e!4619661)))

(declare-fun res!3108029 () Bool)

(assert (=> b!7803908 (=> res!3108029 e!4619661)))

(declare-fun call!723800 () Bool)

(assert (=> b!7803908 (= res!3108029 call!723800)))

(declare-fun bm!723795 () Bool)

(assert (=> bm!723795 (= call!723800 (isEmpty!42242 s!14292))))

(declare-fun b!7803909 () Bool)

(assert (=> b!7803909 (= e!4619657 e!4619656)))

(declare-fun res!3108030 () Bool)

(assert (=> b!7803909 (=> (not res!3108030) (not e!4619656))))

(assert (=> b!7803909 (= res!3108030 (not lt!2674903))))

(declare-fun b!7803910 () Bool)

(declare-fun res!3108025 () Bool)

(assert (=> b!7803910 (=> (not res!3108025) (not e!4619658))))

(assert (=> b!7803910 (= res!3108025 (not call!723800))))

(declare-fun b!7803911 () Bool)

(assert (=> b!7803911 (= e!4619659 (not lt!2674903))))

(declare-fun b!7803912 () Bool)

(declare-fun res!3108028 () Bool)

(assert (=> b!7803912 (=> (not res!3108028) (not e!4619658))))

(assert (=> b!7803912 (= res!3108028 (isEmpty!42242 (tail!15496 s!14292)))))

(declare-fun b!7803913 () Bool)

(declare-fun res!3108027 () Bool)

(assert (=> b!7803913 (=> res!3108027 e!4619657)))

(assert (=> b!7803913 (= res!3108027 e!4619658)))

(declare-fun res!3108031 () Bool)

(assert (=> b!7803913 (=> (not res!3108031) (not e!4619658))))

(assert (=> b!7803913 (= res!3108031 lt!2674903)))

(declare-fun b!7803914 () Bool)

(declare-fun res!3108026 () Bool)

(assert (=> b!7803914 (=> res!3108026 e!4619661)))

(assert (=> b!7803914 (= res!3108026 (not (isEmpty!42242 (tail!15496 s!14292))))))

(declare-fun b!7803915 () Bool)

(assert (=> b!7803915 (= e!4619660 e!4619659)))

(declare-fun c!1437104 () Bool)

(assert (=> b!7803915 (= c!1437104 (is-EmptyLang!20880 lt!2674849))))

(declare-fun b!7803916 () Bool)

(assert (=> b!7803916 (= e!4619660 (= lt!2674903 call!723800))))

(declare-fun b!7803917 () Bool)

(assert (=> b!7803917 (= e!4619655 (matchR!10340 (derivativeStep!6217 lt!2674849 (head!15955 s!14292)) (tail!15496 s!14292)))))

(assert (= (and d!2347788 c!1437102) b!7803905))

(assert (= (and d!2347788 (not c!1437102)) b!7803917))

(assert (= (and d!2347788 c!1437103) b!7803916))

(assert (= (and d!2347788 (not c!1437103)) b!7803915))

(assert (= (and b!7803915 c!1437104) b!7803911))

(assert (= (and b!7803915 (not c!1437104)) b!7803906))

(assert (= (and b!7803906 (not res!3108032)) b!7803913))

(assert (= (and b!7803913 res!3108031) b!7803910))

(assert (= (and b!7803910 res!3108025) b!7803912))

(assert (= (and b!7803912 res!3108028) b!7803907))

(assert (= (and b!7803913 (not res!3108027)) b!7803909))

(assert (= (and b!7803909 res!3108030) b!7803908))

(assert (= (and b!7803908 (not res!3108029)) b!7803914))

(assert (= (and b!7803914 (not res!3108026)) b!7803904))

(assert (= (or b!7803916 b!7803908 b!7803910) bm!723795))

(declare-fun m!8238320 () Bool)

(assert (=> b!7803914 m!8238320))

(assert (=> b!7803914 m!8238320))

(declare-fun m!8238322 () Bool)

(assert (=> b!7803914 m!8238322))

(declare-fun m!8238324 () Bool)

(assert (=> d!2347788 m!8238324))

(assert (=> d!2347788 m!8238278))

(declare-fun m!8238326 () Bool)

(assert (=> b!7803907 m!8238326))

(declare-fun m!8238328 () Bool)

(assert (=> b!7803905 m!8238328))

(assert (=> b!7803912 m!8238320))

(assert (=> b!7803912 m!8238320))

(assert (=> b!7803912 m!8238322))

(assert (=> b!7803917 m!8238326))

(assert (=> b!7803917 m!8238326))

(declare-fun m!8238330 () Bool)

(assert (=> b!7803917 m!8238330))

(assert (=> b!7803917 m!8238320))

(assert (=> b!7803917 m!8238330))

(assert (=> b!7803917 m!8238320))

(declare-fun m!8238332 () Bool)

(assert (=> b!7803917 m!8238332))

(assert (=> b!7803904 m!8238326))

(assert (=> bm!723795 m!8238324))

(assert (=> b!7803604 d!2347788))

(declare-fun b!7803922 () Bool)

(declare-fun e!4619664 () Bool)

(declare-fun tp!2298982 () Bool)

(assert (=> b!7803922 (= e!4619664 (and tp_is_empty!52115 tp!2298982))))

(assert (=> b!7803593 (= tp!2298945 e!4619664)))

(assert (= (and b!7803593 (is-Cons!73595 (t!388454 s!14292))) b!7803922))

(declare-fun b!7803935 () Bool)

(declare-fun e!4619667 () Bool)

(declare-fun tp!2298997 () Bool)

(assert (=> b!7803935 (= e!4619667 tp!2298997)))

(declare-fun b!7803933 () Bool)

(assert (=> b!7803933 (= e!4619667 tp_is_empty!52115)))

(assert (=> b!7803609 (= tp!2298942 e!4619667)))

(declare-fun b!7803934 () Bool)

(declare-fun tp!2298993 () Bool)

(declare-fun tp!2298994 () Bool)

(assert (=> b!7803934 (= e!4619667 (and tp!2298993 tp!2298994))))

(declare-fun b!7803936 () Bool)

(declare-fun tp!2298996 () Bool)

(declare-fun tp!2298995 () Bool)

(assert (=> b!7803936 (= e!4619667 (and tp!2298996 tp!2298995))))

(assert (= (and b!7803609 (is-ElementMatch!20880 (regOne!42273 r2!6217))) b!7803933))

(assert (= (and b!7803609 (is-Concat!29725 (regOne!42273 r2!6217))) b!7803934))

(assert (= (and b!7803609 (is-Star!20880 (regOne!42273 r2!6217))) b!7803935))

(assert (= (and b!7803609 (is-Union!20880 (regOne!42273 r2!6217))) b!7803936))

(declare-fun b!7803939 () Bool)

(declare-fun e!4619668 () Bool)

(declare-fun tp!2299002 () Bool)

(assert (=> b!7803939 (= e!4619668 tp!2299002)))

(declare-fun b!7803937 () Bool)

(assert (=> b!7803937 (= e!4619668 tp_is_empty!52115)))

(assert (=> b!7803609 (= tp!2298946 e!4619668)))

(declare-fun b!7803938 () Bool)

(declare-fun tp!2298998 () Bool)

(declare-fun tp!2298999 () Bool)

(assert (=> b!7803938 (= e!4619668 (and tp!2298998 tp!2298999))))

(declare-fun b!7803940 () Bool)

(declare-fun tp!2299001 () Bool)

(declare-fun tp!2299000 () Bool)

(assert (=> b!7803940 (= e!4619668 (and tp!2299001 tp!2299000))))

(assert (= (and b!7803609 (is-ElementMatch!20880 (regTwo!42273 r2!6217))) b!7803937))

(assert (= (and b!7803609 (is-Concat!29725 (regTwo!42273 r2!6217))) b!7803938))

(assert (= (and b!7803609 (is-Star!20880 (regTwo!42273 r2!6217))) b!7803939))

(assert (= (and b!7803609 (is-Union!20880 (regTwo!42273 r2!6217))) b!7803940))

(declare-fun b!7803943 () Bool)

(declare-fun e!4619669 () Bool)

(declare-fun tp!2299007 () Bool)

(assert (=> b!7803943 (= e!4619669 tp!2299007)))

(declare-fun b!7803941 () Bool)

(assert (=> b!7803941 (= e!4619669 tp_is_empty!52115)))

(assert (=> b!7803598 (= tp!2298941 e!4619669)))

(declare-fun b!7803942 () Bool)

(declare-fun tp!2299003 () Bool)

(declare-fun tp!2299004 () Bool)

(assert (=> b!7803942 (= e!4619669 (and tp!2299003 tp!2299004))))

(declare-fun b!7803944 () Bool)

(declare-fun tp!2299006 () Bool)

(declare-fun tp!2299005 () Bool)

(assert (=> b!7803944 (= e!4619669 (and tp!2299006 tp!2299005))))

(assert (= (and b!7803598 (is-ElementMatch!20880 (regOne!42273 r1!6279))) b!7803941))

(assert (= (and b!7803598 (is-Concat!29725 (regOne!42273 r1!6279))) b!7803942))

(assert (= (and b!7803598 (is-Star!20880 (regOne!42273 r1!6279))) b!7803943))

(assert (= (and b!7803598 (is-Union!20880 (regOne!42273 r1!6279))) b!7803944))

(declare-fun b!7803947 () Bool)

(declare-fun e!4619670 () Bool)

(declare-fun tp!2299012 () Bool)

(assert (=> b!7803947 (= e!4619670 tp!2299012)))

(declare-fun b!7803945 () Bool)

(assert (=> b!7803945 (= e!4619670 tp_is_empty!52115)))

(assert (=> b!7803598 (= tp!2298936 e!4619670)))

(declare-fun b!7803946 () Bool)

(declare-fun tp!2299008 () Bool)

(declare-fun tp!2299009 () Bool)

(assert (=> b!7803946 (= e!4619670 (and tp!2299008 tp!2299009))))

(declare-fun b!7803948 () Bool)

(declare-fun tp!2299011 () Bool)

(declare-fun tp!2299010 () Bool)

(assert (=> b!7803948 (= e!4619670 (and tp!2299011 tp!2299010))))

(assert (= (and b!7803598 (is-ElementMatch!20880 (regTwo!42273 r1!6279))) b!7803945))

(assert (= (and b!7803598 (is-Concat!29725 (regTwo!42273 r1!6279))) b!7803946))

(assert (= (and b!7803598 (is-Star!20880 (regTwo!42273 r1!6279))) b!7803947))

(assert (= (and b!7803598 (is-Union!20880 (regTwo!42273 r1!6279))) b!7803948))

(declare-fun b!7803951 () Bool)

(declare-fun e!4619671 () Bool)

(declare-fun tp!2299017 () Bool)

(assert (=> b!7803951 (= e!4619671 tp!2299017)))

(declare-fun b!7803949 () Bool)

(assert (=> b!7803949 (= e!4619671 tp_is_empty!52115)))

(assert (=> b!7803602 (= tp!2298938 e!4619671)))

(declare-fun b!7803950 () Bool)

(declare-fun tp!2299013 () Bool)

(declare-fun tp!2299014 () Bool)

(assert (=> b!7803950 (= e!4619671 (and tp!2299013 tp!2299014))))

(declare-fun b!7803952 () Bool)

(declare-fun tp!2299016 () Bool)

(declare-fun tp!2299015 () Bool)

(assert (=> b!7803952 (= e!4619671 (and tp!2299016 tp!2299015))))

(assert (= (and b!7803602 (is-ElementMatch!20880 (regOne!42272 r2!6217))) b!7803949))

(assert (= (and b!7803602 (is-Concat!29725 (regOne!42272 r2!6217))) b!7803950))

(assert (= (and b!7803602 (is-Star!20880 (regOne!42272 r2!6217))) b!7803951))

(assert (= (and b!7803602 (is-Union!20880 (regOne!42272 r2!6217))) b!7803952))

(declare-fun b!7803963 () Bool)

(declare-fun e!4619679 () Bool)

(declare-fun tp!2299022 () Bool)

(assert (=> b!7803963 (= e!4619679 tp!2299022)))

(declare-fun b!7803960 () Bool)

(assert (=> b!7803960 (= e!4619679 tp_is_empty!52115)))

(assert (=> b!7803602 (= tp!2298940 e!4619679)))

(declare-fun b!7803961 () Bool)

(declare-fun tp!2299018 () Bool)

(declare-fun tp!2299019 () Bool)

(assert (=> b!7803961 (= e!4619679 (and tp!2299018 tp!2299019))))

(declare-fun b!7803965 () Bool)

(declare-fun tp!2299021 () Bool)

(declare-fun tp!2299020 () Bool)

(assert (=> b!7803965 (= e!4619679 (and tp!2299021 tp!2299020))))

(assert (= (and b!7803602 (is-ElementMatch!20880 (regTwo!42272 r2!6217))) b!7803960))

(assert (= (and b!7803602 (is-Concat!29725 (regTwo!42272 r2!6217))) b!7803961))

(assert (= (and b!7803602 (is-Star!20880 (regTwo!42272 r2!6217))) b!7803963))

(assert (= (and b!7803602 (is-Union!20880 (regTwo!42272 r2!6217))) b!7803965))

(declare-fun b!7803973 () Bool)

(declare-fun e!4619680 () Bool)

(declare-fun tp!2299027 () Bool)

(assert (=> b!7803973 (= e!4619680 tp!2299027)))

(declare-fun b!7803971 () Bool)

(assert (=> b!7803971 (= e!4619680 tp_is_empty!52115)))

(assert (=> b!7803607 (= tp!2298939 e!4619680)))

(declare-fun b!7803972 () Bool)

(declare-fun tp!2299023 () Bool)

(declare-fun tp!2299024 () Bool)

(assert (=> b!7803972 (= e!4619680 (and tp!2299023 tp!2299024))))

(declare-fun b!7803974 () Bool)

(declare-fun tp!2299026 () Bool)

(declare-fun tp!2299025 () Bool)

(assert (=> b!7803974 (= e!4619680 (and tp!2299026 tp!2299025))))

(assert (= (and b!7803607 (is-ElementMatch!20880 (reg!21209 r2!6217))) b!7803971))

(assert (= (and b!7803607 (is-Concat!29725 (reg!21209 r2!6217))) b!7803972))

(assert (= (and b!7803607 (is-Star!20880 (reg!21209 r2!6217))) b!7803973))

(assert (= (and b!7803607 (is-Union!20880 (reg!21209 r2!6217))) b!7803974))

(declare-fun b!7803977 () Bool)

(declare-fun e!4619681 () Bool)

(declare-fun tp!2299032 () Bool)

(assert (=> b!7803977 (= e!4619681 tp!2299032)))

(declare-fun b!7803975 () Bool)

(assert (=> b!7803975 (= e!4619681 tp_is_empty!52115)))

(assert (=> b!7803595 (= tp!2298937 e!4619681)))

(declare-fun b!7803976 () Bool)

(declare-fun tp!2299028 () Bool)

(declare-fun tp!2299029 () Bool)

(assert (=> b!7803976 (= e!4619681 (and tp!2299028 tp!2299029))))

(declare-fun b!7803978 () Bool)

(declare-fun tp!2299031 () Bool)

(declare-fun tp!2299030 () Bool)

(assert (=> b!7803978 (= e!4619681 (and tp!2299031 tp!2299030))))

(assert (= (and b!7803595 (is-ElementMatch!20880 (reg!21209 r1!6279))) b!7803975))

(assert (= (and b!7803595 (is-Concat!29725 (reg!21209 r1!6279))) b!7803976))

(assert (= (and b!7803595 (is-Star!20880 (reg!21209 r1!6279))) b!7803977))

(assert (= (and b!7803595 (is-Union!20880 (reg!21209 r1!6279))) b!7803978))

(declare-fun b!7803981 () Bool)

(declare-fun e!4619682 () Bool)

(declare-fun tp!2299037 () Bool)

(assert (=> b!7803981 (= e!4619682 tp!2299037)))

(declare-fun b!7803979 () Bool)

(assert (=> b!7803979 (= e!4619682 tp_is_empty!52115)))

(assert (=> b!7803600 (= tp!2298944 e!4619682)))

(declare-fun b!7803980 () Bool)

(declare-fun tp!2299033 () Bool)

(declare-fun tp!2299034 () Bool)

(assert (=> b!7803980 (= e!4619682 (and tp!2299033 tp!2299034))))

(declare-fun b!7803982 () Bool)

(declare-fun tp!2299036 () Bool)

(declare-fun tp!2299035 () Bool)

(assert (=> b!7803982 (= e!4619682 (and tp!2299036 tp!2299035))))

(assert (= (and b!7803600 (is-ElementMatch!20880 (regOne!42272 r1!6279))) b!7803979))

(assert (= (and b!7803600 (is-Concat!29725 (regOne!42272 r1!6279))) b!7803980))

(assert (= (and b!7803600 (is-Star!20880 (regOne!42272 r1!6279))) b!7803981))

(assert (= (and b!7803600 (is-Union!20880 (regOne!42272 r1!6279))) b!7803982))

(declare-fun b!7803985 () Bool)

(declare-fun e!4619683 () Bool)

(declare-fun tp!2299042 () Bool)

(assert (=> b!7803985 (= e!4619683 tp!2299042)))

(declare-fun b!7803983 () Bool)

(assert (=> b!7803983 (= e!4619683 tp_is_empty!52115)))

(assert (=> b!7803600 (= tp!2298943 e!4619683)))

(declare-fun b!7803984 () Bool)

(declare-fun tp!2299038 () Bool)

(declare-fun tp!2299039 () Bool)

(assert (=> b!7803984 (= e!4619683 (and tp!2299038 tp!2299039))))

(declare-fun b!7803986 () Bool)

(declare-fun tp!2299041 () Bool)

(declare-fun tp!2299040 () Bool)

(assert (=> b!7803986 (= e!4619683 (and tp!2299041 tp!2299040))))

(assert (= (and b!7803600 (is-ElementMatch!20880 (regTwo!42272 r1!6279))) b!7803983))

(assert (= (and b!7803600 (is-Concat!29725 (regTwo!42272 r1!6279))) b!7803984))

(assert (= (and b!7803600 (is-Star!20880 (regTwo!42272 r1!6279))) b!7803985))

(assert (= (and b!7803600 (is-Union!20880 (regTwo!42272 r1!6279))) b!7803986))

(push 1)

(assert (not d!2347786))

(assert (not bm!723795))

(assert (not b!7803784))

(assert (not d!2347770))

(assert (not b!7803884))

(assert (not b!7803786))

(assert (not bm!723791))

(assert (not b!7803965))

(assert tp_is_empty!52115)

(assert (not d!2347762))

(assert (not b!7803961))

(assert (not b!7803935))

(assert (not b!7803922))

(assert (not b!7803986))

(assert (not b!7803952))

(assert (not b!7803947))

(assert (not b!7803972))

(assert (not bm!723784))

(assert (not b!7803885))

(assert (not bm!723788))

(assert (not b!7803946))

(assert (not b!7803702))

(assert (not b!7803776))

(assert (not b!7803985))

(assert (not bm!723754))

(assert (not b!7803984))

(assert (not b!7803978))

(assert (not b!7803951))

(assert (not b!7803887))

(assert (not b!7803917))

(assert (not b!7803907))

(assert (not b!7803974))

(assert (not b!7803837))

(assert (not bm!723759))

(assert (not b!7803839))

(assert (not b!7803777))

(assert (not b!7803938))

(assert (not b!7803836))

(assert (not b!7803897))

(assert (not b!7803976))

(assert (not b!7803700))

(assert (not bm!723760))

(assert (not b!7803942))

(assert (not b!7803943))

(assert (not b!7803846))

(assert (not b!7803844))

(assert (not b!7803849))

(assert (not b!7803939))

(assert (not b!7803963))

(assert (not b!7803940))

(assert (not b!7803903))

(assert (not b!7803894))

(assert (not b!7803854))

(assert (not bm!723786))

(assert (not d!2347766))

(assert (not b!7803904))

(assert (not b!7803914))

(assert (not d!2347782))

(assert (not d!2347788))

(assert (not b!7803834))

(assert (not b!7803982))

(assert (not b!7803689))

(assert (not b!7803973))

(assert (not d!2347784))

(assert (not b!7803905))

(assert (not b!7803733))

(assert (not b!7803977))

(assert (not b!7803948))

(assert (not b!7803944))

(assert (not b!7803980))

(assert (not b!7803912))

(assert (not b!7803902))

(assert (not d!2347778))

(assert (not b!7803934))

(assert (not b!7803706))

(assert (not bm!723774))

(assert (not bm!723757))

(assert (not bm!723792))

(assert (not b!7803892))

(assert (not b!7803950))

(assert (not b!7803824))

(assert (not bm!723790))

(assert (not d!2347776))

(assert (not bm!723762))

(assert (not d!2347780))

(assert (not b!7803789))

(assert (not b!7803981))

(assert (not b!7803779))

(assert (not b!7803936))

(assert (not bm!723756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

