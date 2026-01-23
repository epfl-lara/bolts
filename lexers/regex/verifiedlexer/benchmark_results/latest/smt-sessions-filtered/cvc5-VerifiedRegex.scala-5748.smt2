; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284942 () Bool)

(assert start!284942)

(declare-fun b!2930110 () Bool)

(assert (=> b!2930110 true))

(assert (=> b!2930110 true))

(assert (=> b!2930110 true))

(declare-fun lambda!109040 () Int)

(declare-fun lambda!109039 () Int)

(assert (=> b!2930110 (not (= lambda!109040 lambda!109039))))

(assert (=> b!2930110 true))

(assert (=> b!2930110 true))

(assert (=> b!2930110 true))

(declare-fun b!2930108 () Bool)

(declare-fun e!1847739 () Bool)

(declare-fun tp_is_empty!15655 () Bool)

(declare-fun tp!939214 () Bool)

(assert (=> b!2930108 (= e!1847739 (and tp_is_empty!15655 tp!939214))))

(declare-fun b!2930109 () Bool)

(declare-fun e!1847737 () Bool)

(declare-datatypes ((C!18278 0))(
  ( (C!18279 (val!11175 Int)) )
))
(declare-datatypes ((Regex!9046 0))(
  ( (ElementMatch!9046 (c!478466 C!18278)) (Concat!14367 (regOne!18604 Regex!9046) (regTwo!18604 Regex!9046)) (EmptyExpr!9046) (Star!9046 (reg!9375 Regex!9046)) (EmptyLang!9046) (Union!9046 (regOne!18605 Regex!9046) (regTwo!18605 Regex!9046)) )
))
(declare-fun r!17423 () Regex!9046)

(declare-fun validRegex!3779 (Regex!9046) Bool)

(assert (=> b!2930109 (= e!1847737 (validRegex!3779 (reg!9375 r!17423)))))

(declare-fun e!1847741 () Bool)

(declare-fun e!1847742 () Bool)

(assert (=> b!2930110 (= e!1847741 e!1847742)))

(declare-fun res!1209593 () Bool)

(assert (=> b!2930110 (=> res!1209593 e!1847742)))

(declare-fun lt!1027599 () Bool)

(assert (=> b!2930110 (= res!1209593 (not lt!1027599))))

(declare-fun Exists!1408 (Int) Bool)

(assert (=> b!2930110 (= (Exists!1408 lambda!109039) (Exists!1408 lambda!109040))))

(declare-datatypes ((Unit!48431 0))(
  ( (Unit!48432) )
))
(declare-fun lt!1027598 () Unit!48431)

(declare-datatypes ((List!34911 0))(
  ( (Nil!34787) (Cons!34787 (h!40207 C!18278) (t!233976 List!34911)) )
))
(declare-fun s!11993 () List!34911)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!219 (Regex!9046 List!34911) Unit!48431)

(assert (=> b!2930110 (= lt!1027598 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!219 (reg!9375 r!17423) s!11993))))

(assert (=> b!2930110 (= lt!1027599 (Exists!1408 lambda!109039))))

(declare-datatypes ((tuple2!33742 0))(
  ( (tuple2!33743 (_1!20003 List!34911) (_2!20003 List!34911)) )
))
(declare-datatypes ((Option!6603 0))(
  ( (None!6602) (Some!6602 (v!34736 tuple2!33742)) )
))
(declare-fun lt!1027600 () Option!6603)

(declare-fun isDefined!5154 (Option!6603) Bool)

(assert (=> b!2930110 (= lt!1027599 (isDefined!5154 lt!1027600))))

(declare-fun lt!1027606 () Regex!9046)

(declare-fun findConcatSeparation!997 (Regex!9046 Regex!9046 List!34911 List!34911 List!34911) Option!6603)

(assert (=> b!2930110 (= lt!1027600 (findConcatSeparation!997 (reg!9375 r!17423) lt!1027606 Nil!34787 s!11993 s!11993))))

(declare-fun lt!1027605 () Unit!48431)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!779 (Regex!9046 Regex!9046 List!34911) Unit!48431)

(assert (=> b!2930110 (= lt!1027605 (lemmaFindConcatSeparationEquivalentToExists!779 (reg!9375 r!17423) lt!1027606 s!11993))))

(assert (=> b!2930110 (= lt!1027606 (Star!9046 (reg!9375 r!17423)))))

(declare-fun b!2930111 () Bool)

(declare-fun res!1209594 () Bool)

(declare-fun e!1847740 () Bool)

(assert (=> b!2930111 (=> res!1209594 e!1847740)))

(declare-fun lt!1027604 () tuple2!33742)

(declare-fun ++!8296 (List!34911 List!34911) List!34911)

(assert (=> b!2930111 (= res!1209594 (not (= (++!8296 (_1!20003 lt!1027604) (_2!20003 lt!1027604)) s!11993)))))

(declare-fun res!1209597 () Bool)

(declare-fun e!1847736 () Bool)

(assert (=> start!284942 (=> (not res!1209597) (not e!1847736))))

(assert (=> start!284942 (= res!1209597 (validRegex!3779 r!17423))))

(assert (=> start!284942 e!1847736))

(declare-fun e!1847743 () Bool)

(assert (=> start!284942 e!1847743))

(assert (=> start!284942 e!1847739))

(declare-fun b!2930112 () Bool)

(assert (=> b!2930112 (= e!1847736 (not e!1847741))))

(declare-fun res!1209600 () Bool)

(assert (=> b!2930112 (=> res!1209600 e!1847741)))

(declare-fun lt!1027601 () Bool)

(assert (=> b!2930112 (= res!1209600 (or (not lt!1027601) (is-Concat!14367 r!17423) (is-Union!9046 r!17423) (not (is-Star!9046 r!17423))))))

(declare-fun matchRSpec!1183 (Regex!9046 List!34911) Bool)

(assert (=> b!2930112 (= lt!1027601 (matchRSpec!1183 r!17423 s!11993))))

(declare-fun matchR!3928 (Regex!9046 List!34911) Bool)

(assert (=> b!2930112 (= lt!1027601 (matchR!3928 r!17423 s!11993))))

(declare-fun lt!1027609 () Unit!48431)

(declare-fun mainMatchTheorem!1183 (Regex!9046 List!34911) Unit!48431)

(assert (=> b!2930112 (= lt!1027609 (mainMatchTheorem!1183 r!17423 s!11993))))

(declare-fun b!2930113 () Bool)

(assert (=> b!2930113 (= e!1847740 e!1847737)))

(declare-fun res!1209601 () Bool)

(assert (=> b!2930113 (=> res!1209601 e!1847737)))

(declare-fun lt!1027603 () Int)

(declare-fun lt!1027607 () Int)

(declare-fun lt!1027608 () Int)

(assert (=> b!2930113 (= res!1209601 (or (not (= (+ lt!1027603 lt!1027608) lt!1027607)) (not (= lt!1027603 0))))))

(declare-fun size!26442 (List!34911) Int)

(assert (=> b!2930113 (= lt!1027603 (size!26442 (_1!20003 lt!1027604)))))

(declare-fun b!2930114 () Bool)

(declare-fun res!1209596 () Bool)

(assert (=> b!2930114 (=> res!1209596 e!1847737)))

(declare-fun isEmpty!19036 (List!34911) Bool)

(assert (=> b!2930114 (= res!1209596 (not (isEmpty!19036 (_1!20003 lt!1027604))))))

(declare-fun b!2930115 () Bool)

(declare-fun tp!939210 () Bool)

(declare-fun tp!939212 () Bool)

(assert (=> b!2930115 (= e!1847743 (and tp!939210 tp!939212))))

(declare-fun b!2930116 () Bool)

(declare-fun tp!939213 () Bool)

(declare-fun tp!939211 () Bool)

(assert (=> b!2930116 (= e!1847743 (and tp!939213 tp!939211))))

(declare-fun b!2930117 () Bool)

(assert (=> b!2930117 (= e!1847743 tp_is_empty!15655)))

(declare-fun b!2930118 () Bool)

(declare-fun e!1847738 () Bool)

(assert (=> b!2930118 (= e!1847738 e!1847740)))

(declare-fun res!1209602 () Bool)

(assert (=> b!2930118 (=> res!1209602 e!1847740)))

(assert (=> b!2930118 (= res!1209602 (not (= lt!1027608 lt!1027607)))))

(assert (=> b!2930118 (= lt!1027607 (size!26442 s!11993))))

(assert (=> b!2930118 (= lt!1027608 (size!26442 (_2!20003 lt!1027604)))))

(declare-fun simplify!53 (Regex!9046) Regex!9046)

(assert (=> b!2930118 (matchR!3928 (simplify!53 (reg!9375 r!17423)) (_1!20003 lt!1027604))))

(declare-fun lt!1027602 () Unit!48431)

(declare-fun lemmaSimplifySound!49 (Regex!9046 List!34911) Unit!48431)

(assert (=> b!2930118 (= lt!1027602 (lemmaSimplifySound!49 (reg!9375 r!17423) (_1!20003 lt!1027604)))))

(declare-fun b!2930119 () Bool)

(assert (=> b!2930119 (= e!1847742 e!1847738)))

(declare-fun res!1209595 () Bool)

(assert (=> b!2930119 (=> res!1209595 e!1847738)))

(assert (=> b!2930119 (= res!1209595 (not (matchR!3928 (reg!9375 r!17423) (_1!20003 lt!1027604))))))

(declare-fun get!10618 (Option!6603) tuple2!33742)

(assert (=> b!2930119 (= lt!1027604 (get!10618 lt!1027600))))

(declare-fun b!2930120 () Bool)

(declare-fun res!1209598 () Bool)

(assert (=> b!2930120 (=> res!1209598 e!1847738)))

(assert (=> b!2930120 (= res!1209598 (not (matchR!3928 lt!1027606 (_2!20003 lt!1027604))))))

(declare-fun b!2930121 () Bool)

(declare-fun res!1209599 () Bool)

(assert (=> b!2930121 (=> res!1209599 e!1847741)))

(assert (=> b!2930121 (= res!1209599 (isEmpty!19036 s!11993))))

(declare-fun b!2930122 () Bool)

(declare-fun tp!939215 () Bool)

(assert (=> b!2930122 (= e!1847743 tp!939215)))

(assert (= (and start!284942 res!1209597) b!2930112))

(assert (= (and b!2930112 (not res!1209600)) b!2930121))

(assert (= (and b!2930121 (not res!1209599)) b!2930110))

(assert (= (and b!2930110 (not res!1209593)) b!2930119))

(assert (= (and b!2930119 (not res!1209595)) b!2930120))

(assert (= (and b!2930120 (not res!1209598)) b!2930118))

(assert (= (and b!2930118 (not res!1209602)) b!2930111))

(assert (= (and b!2930111 (not res!1209594)) b!2930113))

(assert (= (and b!2930113 (not res!1209601)) b!2930114))

(assert (= (and b!2930114 (not res!1209596)) b!2930109))

(assert (= (and start!284942 (is-ElementMatch!9046 r!17423)) b!2930117))

(assert (= (and start!284942 (is-Concat!14367 r!17423)) b!2930116))

(assert (= (and start!284942 (is-Star!9046 r!17423)) b!2930122))

(assert (= (and start!284942 (is-Union!9046 r!17423)) b!2930115))

(assert (= (and start!284942 (is-Cons!34787 s!11993)) b!2930108))

(declare-fun m!3320609 () Bool)

(assert (=> b!2930110 m!3320609))

(declare-fun m!3320611 () Bool)

(assert (=> b!2930110 m!3320611))

(declare-fun m!3320613 () Bool)

(assert (=> b!2930110 m!3320613))

(declare-fun m!3320615 () Bool)

(assert (=> b!2930110 m!3320615))

(assert (=> b!2930110 m!3320613))

(declare-fun m!3320617 () Bool)

(assert (=> b!2930110 m!3320617))

(declare-fun m!3320619 () Bool)

(assert (=> b!2930110 m!3320619))

(declare-fun m!3320621 () Bool)

(assert (=> b!2930121 m!3320621))

(declare-fun m!3320623 () Bool)

(assert (=> b!2930111 m!3320623))

(declare-fun m!3320625 () Bool)

(assert (=> b!2930109 m!3320625))

(declare-fun m!3320627 () Bool)

(assert (=> b!2930114 m!3320627))

(declare-fun m!3320629 () Bool)

(assert (=> b!2930120 m!3320629))

(declare-fun m!3320631 () Bool)

(assert (=> b!2930119 m!3320631))

(declare-fun m!3320633 () Bool)

(assert (=> b!2930119 m!3320633))

(declare-fun m!3320635 () Bool)

(assert (=> b!2930112 m!3320635))

(declare-fun m!3320637 () Bool)

(assert (=> b!2930112 m!3320637))

(declare-fun m!3320639 () Bool)

(assert (=> b!2930112 m!3320639))

(declare-fun m!3320641 () Bool)

(assert (=> b!2930118 m!3320641))

(declare-fun m!3320643 () Bool)

(assert (=> b!2930118 m!3320643))

(declare-fun m!3320645 () Bool)

(assert (=> b!2930118 m!3320645))

(assert (=> b!2930118 m!3320643))

(declare-fun m!3320647 () Bool)

(assert (=> b!2930118 m!3320647))

(declare-fun m!3320649 () Bool)

(assert (=> b!2930118 m!3320649))

(declare-fun m!3320651 () Bool)

(assert (=> start!284942 m!3320651))

(declare-fun m!3320653 () Bool)

(assert (=> b!2930113 m!3320653))

(push 1)

(assert (not b!2930115))

(assert tp_is_empty!15655)

(assert (not b!2930108))

(assert (not b!2930116))

(assert (not b!2930111))

(assert (not b!2930113))

(assert (not b!2930110))

(assert (not b!2930114))

(assert (not b!2930122))

(assert (not b!2930120))

(assert (not start!284942))

(assert (not b!2930119))

(assert (not b!2930121))

(assert (not b!2930112))

(assert (not b!2930109))

(assert (not b!2930118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2930208 () Bool)

(declare-fun e!1847792 () Bool)

(declare-fun call!192283 () Bool)

(assert (=> b!2930208 (= e!1847792 call!192283)))

(declare-fun b!2930209 () Bool)

(declare-fun e!1847793 () Bool)

(declare-fun e!1847790 () Bool)

(assert (=> b!2930209 (= e!1847793 e!1847790)))

(declare-fun c!478473 () Bool)

(assert (=> b!2930209 (= c!478473 (is-Star!9046 (reg!9375 r!17423)))))

(declare-fun b!2930210 () Bool)

(declare-fun e!1847794 () Bool)

(assert (=> b!2930210 (= e!1847790 e!1847794)))

(declare-fun c!478472 () Bool)

(assert (=> b!2930210 (= c!478472 (is-Union!9046 (reg!9375 r!17423)))))

(declare-fun b!2930211 () Bool)

(declare-fun e!1847789 () Bool)

(declare-fun call!192284 () Bool)

(assert (=> b!2930211 (= e!1847789 call!192284)))

(declare-fun b!2930212 () Bool)

(declare-fun e!1847788 () Bool)

(declare-fun call!192285 () Bool)

(assert (=> b!2930212 (= e!1847788 call!192285)))

(declare-fun bm!192278 () Bool)

(assert (=> bm!192278 (= call!192283 (validRegex!3779 (ite c!478472 (regOne!18605 (reg!9375 r!17423)) (regTwo!18604 (reg!9375 r!17423)))))))

(declare-fun b!2930213 () Bool)

(declare-fun res!1209661 () Bool)

(declare-fun e!1847791 () Bool)

(assert (=> b!2930213 (=> res!1209661 e!1847791)))

(assert (=> b!2930213 (= res!1209661 (not (is-Concat!14367 (reg!9375 r!17423))))))

(assert (=> b!2930213 (= e!1847794 e!1847791)))

(declare-fun d!839255 () Bool)

(declare-fun res!1209657 () Bool)

(assert (=> d!839255 (=> res!1209657 e!1847793)))

(assert (=> d!839255 (= res!1209657 (is-ElementMatch!9046 (reg!9375 r!17423)))))

(assert (=> d!839255 (= (validRegex!3779 (reg!9375 r!17423)) e!1847793)))

(declare-fun b!2930214 () Bool)

(assert (=> b!2930214 (= e!1847790 e!1847788)))

(declare-fun res!1209658 () Bool)

(declare-fun nullable!2846 (Regex!9046) Bool)

(assert (=> b!2930214 (= res!1209658 (not (nullable!2846 (reg!9375 (reg!9375 r!17423)))))))

(assert (=> b!2930214 (=> (not res!1209658) (not e!1847788))))

(declare-fun b!2930215 () Bool)

(declare-fun res!1209660 () Bool)

(assert (=> b!2930215 (=> (not res!1209660) (not e!1847789))))

(assert (=> b!2930215 (= res!1209660 call!192283)))

(assert (=> b!2930215 (= e!1847794 e!1847789)))

(declare-fun bm!192279 () Bool)

(assert (=> bm!192279 (= call!192284 call!192285)))

(declare-fun b!2930216 () Bool)

(assert (=> b!2930216 (= e!1847791 e!1847792)))

(declare-fun res!1209659 () Bool)

(assert (=> b!2930216 (=> (not res!1209659) (not e!1847792))))

(assert (=> b!2930216 (= res!1209659 call!192284)))

(declare-fun bm!192280 () Bool)

(assert (=> bm!192280 (= call!192285 (validRegex!3779 (ite c!478473 (reg!9375 (reg!9375 r!17423)) (ite c!478472 (regTwo!18605 (reg!9375 r!17423)) (regOne!18604 (reg!9375 r!17423))))))))

(assert (= (and d!839255 (not res!1209657)) b!2930209))

(assert (= (and b!2930209 c!478473) b!2930214))

(assert (= (and b!2930209 (not c!478473)) b!2930210))

(assert (= (and b!2930214 res!1209658) b!2930212))

(assert (= (and b!2930210 c!478472) b!2930215))

(assert (= (and b!2930210 (not c!478472)) b!2930213))

(assert (= (and b!2930215 res!1209660) b!2930211))

(assert (= (and b!2930213 (not res!1209661)) b!2930216))

(assert (= (and b!2930216 res!1209659) b!2930208))

(assert (= (or b!2930215 b!2930208) bm!192278))

(assert (= (or b!2930211 b!2930216) bm!192279))

(assert (= (or b!2930212 bm!192279) bm!192280))

(declare-fun m!3320701 () Bool)

(assert (=> bm!192278 m!3320701))

(declare-fun m!3320703 () Bool)

(assert (=> b!2930214 m!3320703))

(declare-fun m!3320705 () Bool)

(assert (=> bm!192280 m!3320705))

(assert (=> b!2930109 d!839255))

(declare-fun b!2930273 () Bool)

(declare-fun e!1847824 () Bool)

(declare-fun e!1847827 () Bool)

(assert (=> b!2930273 (= e!1847824 e!1847827)))

(declare-fun c!478488 () Bool)

(assert (=> b!2930273 (= c!478488 (is-EmptyLang!9046 lt!1027606))))

(declare-fun b!2930274 () Bool)

(declare-fun lt!1027650 () Bool)

(assert (=> b!2930274 (= e!1847827 (not lt!1027650))))

(declare-fun d!839257 () Bool)

(assert (=> d!839257 e!1847824))

(declare-fun c!478486 () Bool)

(assert (=> d!839257 (= c!478486 (is-EmptyExpr!9046 lt!1027606))))

(declare-fun e!1847829 () Bool)

(assert (=> d!839257 (= lt!1027650 e!1847829)))

(declare-fun c!478487 () Bool)

(assert (=> d!839257 (= c!478487 (isEmpty!19036 (_2!20003 lt!1027604)))))

(assert (=> d!839257 (validRegex!3779 lt!1027606)))

(assert (=> d!839257 (= (matchR!3928 lt!1027606 (_2!20003 lt!1027604)) lt!1027650)))

(declare-fun b!2930275 () Bool)

(declare-fun res!1209700 () Bool)

(declare-fun e!1847823 () Bool)

(assert (=> b!2930275 (=> res!1209700 e!1847823)))

(declare-fun tail!4742 (List!34911) List!34911)

(assert (=> b!2930275 (= res!1209700 (not (isEmpty!19036 (tail!4742 (_2!20003 lt!1027604)))))))

(declare-fun b!2930276 () Bool)

(declare-fun e!1847826 () Bool)

(declare-fun e!1847828 () Bool)

(assert (=> b!2930276 (= e!1847826 e!1847828)))

(declare-fun res!1209696 () Bool)

(assert (=> b!2930276 (=> (not res!1209696) (not e!1847828))))

(assert (=> b!2930276 (= res!1209696 (not lt!1027650))))

(declare-fun b!2930277 () Bool)

(declare-fun head!6516 (List!34911) C!18278)

(assert (=> b!2930277 (= e!1847823 (not (= (head!6516 (_2!20003 lt!1027604)) (c!478466 lt!1027606))))))

(declare-fun b!2930278 () Bool)

(declare-fun call!192290 () Bool)

(assert (=> b!2930278 (= e!1847824 (= lt!1027650 call!192290))))

(declare-fun b!2930279 () Bool)

(declare-fun res!1209695 () Bool)

(declare-fun e!1847825 () Bool)

(assert (=> b!2930279 (=> (not res!1209695) (not e!1847825))))

(assert (=> b!2930279 (= res!1209695 (isEmpty!19036 (tail!4742 (_2!20003 lt!1027604))))))

(declare-fun b!2930280 () Bool)

(assert (=> b!2930280 (= e!1847825 (= (head!6516 (_2!20003 lt!1027604)) (c!478466 lt!1027606)))))

(declare-fun b!2930281 () Bool)

(assert (=> b!2930281 (= e!1847829 (nullable!2846 lt!1027606))))

(declare-fun b!2930282 () Bool)

(declare-fun res!1209697 () Bool)

(assert (=> b!2930282 (=> res!1209697 e!1847826)))

(assert (=> b!2930282 (= res!1209697 (not (is-ElementMatch!9046 lt!1027606)))))

(assert (=> b!2930282 (= e!1847827 e!1847826)))

(declare-fun b!2930283 () Bool)

(declare-fun derivativeStep!2457 (Regex!9046 C!18278) Regex!9046)

(assert (=> b!2930283 (= e!1847829 (matchR!3928 (derivativeStep!2457 lt!1027606 (head!6516 (_2!20003 lt!1027604))) (tail!4742 (_2!20003 lt!1027604))))))

(declare-fun bm!192285 () Bool)

(assert (=> bm!192285 (= call!192290 (isEmpty!19036 (_2!20003 lt!1027604)))))

(declare-fun b!2930284 () Bool)

(declare-fun res!1209701 () Bool)

(assert (=> b!2930284 (=> res!1209701 e!1847826)))

(assert (=> b!2930284 (= res!1209701 e!1847825)))

(declare-fun res!1209694 () Bool)

(assert (=> b!2930284 (=> (not res!1209694) (not e!1847825))))

(assert (=> b!2930284 (= res!1209694 lt!1027650)))

(declare-fun b!2930285 () Bool)

(declare-fun res!1209698 () Bool)

(assert (=> b!2930285 (=> (not res!1209698) (not e!1847825))))

(assert (=> b!2930285 (= res!1209698 (not call!192290))))

(declare-fun b!2930286 () Bool)

(assert (=> b!2930286 (= e!1847828 e!1847823)))

(declare-fun res!1209699 () Bool)

(assert (=> b!2930286 (=> res!1209699 e!1847823)))

(assert (=> b!2930286 (= res!1209699 call!192290)))

(assert (= (and d!839257 c!478487) b!2930281))

(assert (= (and d!839257 (not c!478487)) b!2930283))

(assert (= (and d!839257 c!478486) b!2930278))

(assert (= (and d!839257 (not c!478486)) b!2930273))

(assert (= (and b!2930273 c!478488) b!2930274))

(assert (= (and b!2930273 (not c!478488)) b!2930282))

(assert (= (and b!2930282 (not res!1209697)) b!2930284))

(assert (= (and b!2930284 res!1209694) b!2930285))

(assert (= (and b!2930285 res!1209698) b!2930279))

(assert (= (and b!2930279 res!1209695) b!2930280))

(assert (= (and b!2930284 (not res!1209701)) b!2930276))

(assert (= (and b!2930276 res!1209696) b!2930286))

(assert (= (and b!2930286 (not res!1209699)) b!2930275))

(assert (= (and b!2930275 (not res!1209700)) b!2930277))

(assert (= (or b!2930278 b!2930285 b!2930286) bm!192285))

(declare-fun m!3320707 () Bool)

(assert (=> d!839257 m!3320707))

(declare-fun m!3320709 () Bool)

(assert (=> d!839257 m!3320709))

(assert (=> bm!192285 m!3320707))

(declare-fun m!3320711 () Bool)

(assert (=> b!2930275 m!3320711))

(assert (=> b!2930275 m!3320711))

(declare-fun m!3320713 () Bool)

(assert (=> b!2930275 m!3320713))

(declare-fun m!3320715 () Bool)

(assert (=> b!2930281 m!3320715))

(assert (=> b!2930279 m!3320711))

(assert (=> b!2930279 m!3320711))

(assert (=> b!2930279 m!3320713))

(declare-fun m!3320717 () Bool)

(assert (=> b!2930277 m!3320717))

(assert (=> b!2930280 m!3320717))

(assert (=> b!2930283 m!3320717))

(assert (=> b!2930283 m!3320717))

(declare-fun m!3320719 () Bool)

(assert (=> b!2930283 m!3320719))

(assert (=> b!2930283 m!3320711))

(assert (=> b!2930283 m!3320719))

(assert (=> b!2930283 m!3320711))

(declare-fun m!3320721 () Bool)

(assert (=> b!2930283 m!3320721))

(assert (=> b!2930120 d!839257))

(declare-fun d!839259 () Bool)

(declare-fun choose!17311 (Int) Bool)

(assert (=> d!839259 (= (Exists!1408 lambda!109040) (choose!17311 lambda!109040))))

(declare-fun bs!525189 () Bool)

(assert (= bs!525189 d!839259))

(declare-fun m!3320723 () Bool)

(assert (=> bs!525189 m!3320723))

(assert (=> b!2930110 d!839259))

(declare-fun d!839261 () Bool)

(declare-fun isEmpty!19038 (Option!6603) Bool)

(assert (=> d!839261 (= (isDefined!5154 lt!1027600) (not (isEmpty!19038 lt!1027600)))))

(declare-fun bs!525190 () Bool)

(assert (= bs!525190 d!839261))

(declare-fun m!3320725 () Bool)

(assert (=> bs!525190 m!3320725))

(assert (=> b!2930110 d!839261))

(declare-fun b!2930333 () Bool)

(declare-fun e!1847855 () Option!6603)

(assert (=> b!2930333 (= e!1847855 (Some!6602 (tuple2!33743 Nil!34787 s!11993)))))

(declare-fun d!839263 () Bool)

(declare-fun e!1847854 () Bool)

(assert (=> d!839263 e!1847854))

(declare-fun res!1209728 () Bool)

(assert (=> d!839263 (=> res!1209728 e!1847854)))

(declare-fun e!1847856 () Bool)

(assert (=> d!839263 (= res!1209728 e!1847856)))

(declare-fun res!1209730 () Bool)

(assert (=> d!839263 (=> (not res!1209730) (not e!1847856))))

(declare-fun lt!1027661 () Option!6603)

(assert (=> d!839263 (= res!1209730 (isDefined!5154 lt!1027661))))

(assert (=> d!839263 (= lt!1027661 e!1847855)))

(declare-fun c!478499 () Bool)

(declare-fun e!1847857 () Bool)

(assert (=> d!839263 (= c!478499 e!1847857)))

(declare-fun res!1209729 () Bool)

(assert (=> d!839263 (=> (not res!1209729) (not e!1847857))))

(assert (=> d!839263 (= res!1209729 (matchR!3928 (reg!9375 r!17423) Nil!34787))))

(assert (=> d!839263 (validRegex!3779 (reg!9375 r!17423))))

(assert (=> d!839263 (= (findConcatSeparation!997 (reg!9375 r!17423) lt!1027606 Nil!34787 s!11993 s!11993) lt!1027661)))

(declare-fun b!2930334 () Bool)

(declare-fun res!1209731 () Bool)

(assert (=> b!2930334 (=> (not res!1209731) (not e!1847856))))

(assert (=> b!2930334 (= res!1209731 (matchR!3928 lt!1027606 (_2!20003 (get!10618 lt!1027661))))))

(declare-fun b!2930335 () Bool)

(assert (=> b!2930335 (= e!1847854 (not (isDefined!5154 lt!1027661)))))

(declare-fun b!2930336 () Bool)

(declare-fun e!1847858 () Option!6603)

(assert (=> b!2930336 (= e!1847858 None!6602)))

(declare-fun b!2930337 () Bool)

(assert (=> b!2930337 (= e!1847855 e!1847858)))

(declare-fun c!478500 () Bool)

(assert (=> b!2930337 (= c!478500 (is-Nil!34787 s!11993))))

(declare-fun b!2930338 () Bool)

(declare-fun res!1209732 () Bool)

(assert (=> b!2930338 (=> (not res!1209732) (not e!1847856))))

(assert (=> b!2930338 (= res!1209732 (matchR!3928 (reg!9375 r!17423) (_1!20003 (get!10618 lt!1027661))))))

(declare-fun b!2930339 () Bool)

(assert (=> b!2930339 (= e!1847856 (= (++!8296 (_1!20003 (get!10618 lt!1027661)) (_2!20003 (get!10618 lt!1027661))) s!11993))))

(declare-fun b!2930340 () Bool)

(assert (=> b!2930340 (= e!1847857 (matchR!3928 lt!1027606 s!11993))))

(declare-fun b!2930341 () Bool)

(declare-fun lt!1027659 () Unit!48431)

(declare-fun lt!1027660 () Unit!48431)

(assert (=> b!2930341 (= lt!1027659 lt!1027660)))

(assert (=> b!2930341 (= (++!8296 (++!8296 Nil!34787 (Cons!34787 (h!40207 s!11993) Nil!34787)) (t!233976 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!929 (List!34911 C!18278 List!34911 List!34911) Unit!48431)

(assert (=> b!2930341 (= lt!1027660 (lemmaMoveElementToOtherListKeepsConcatEq!929 Nil!34787 (h!40207 s!11993) (t!233976 s!11993) s!11993))))

(assert (=> b!2930341 (= e!1847858 (findConcatSeparation!997 (reg!9375 r!17423) lt!1027606 (++!8296 Nil!34787 (Cons!34787 (h!40207 s!11993) Nil!34787)) (t!233976 s!11993) s!11993))))

(assert (= (and d!839263 res!1209729) b!2930340))

(assert (= (and d!839263 c!478499) b!2930333))

(assert (= (and d!839263 (not c!478499)) b!2930337))

(assert (= (and b!2930337 c!478500) b!2930336))

(assert (= (and b!2930337 (not c!478500)) b!2930341))

(assert (= (and d!839263 res!1209730) b!2930338))

(assert (= (and b!2930338 res!1209732) b!2930334))

(assert (= (and b!2930334 res!1209731) b!2930339))

(assert (= (and d!839263 (not res!1209728)) b!2930335))

(declare-fun m!3320755 () Bool)

(assert (=> b!2930335 m!3320755))

(declare-fun m!3320757 () Bool)

(assert (=> b!2930334 m!3320757))

(declare-fun m!3320759 () Bool)

(assert (=> b!2930334 m!3320759))

(declare-fun m!3320761 () Bool)

(assert (=> b!2930341 m!3320761))

(assert (=> b!2930341 m!3320761))

(declare-fun m!3320763 () Bool)

(assert (=> b!2930341 m!3320763))

(declare-fun m!3320765 () Bool)

(assert (=> b!2930341 m!3320765))

(assert (=> b!2930341 m!3320761))

(declare-fun m!3320767 () Bool)

(assert (=> b!2930341 m!3320767))

(assert (=> b!2930338 m!3320757))

(declare-fun m!3320769 () Bool)

(assert (=> b!2930338 m!3320769))

(assert (=> b!2930339 m!3320757))

(declare-fun m!3320771 () Bool)

(assert (=> b!2930339 m!3320771))

(declare-fun m!3320773 () Bool)

(assert (=> b!2930340 m!3320773))

(assert (=> d!839263 m!3320755))

(declare-fun m!3320775 () Bool)

(assert (=> d!839263 m!3320775))

(assert (=> d!839263 m!3320625))

(assert (=> b!2930110 d!839263))

(declare-fun bs!525191 () Bool)

(declare-fun d!839271 () Bool)

(assert (= bs!525191 (and d!839271 b!2930110)))

(declare-fun lambda!109053 () Int)

(assert (=> bs!525191 (= (= (Star!9046 (reg!9375 r!17423)) lt!1027606) (= lambda!109053 lambda!109039))))

(assert (=> bs!525191 (not (= lambda!109053 lambda!109040))))

(assert (=> d!839271 true))

(assert (=> d!839271 true))

(declare-fun lambda!109054 () Int)

(assert (=> bs!525191 (not (= lambda!109054 lambda!109039))))

(assert (=> bs!525191 (= (= (Star!9046 (reg!9375 r!17423)) lt!1027606) (= lambda!109054 lambda!109040))))

(declare-fun bs!525192 () Bool)

(assert (= bs!525192 d!839271))

(assert (=> bs!525192 (not (= lambda!109054 lambda!109053))))

(assert (=> d!839271 true))

(assert (=> d!839271 true))

(assert (=> d!839271 (= (Exists!1408 lambda!109053) (Exists!1408 lambda!109054))))

(declare-fun lt!1027664 () Unit!48431)

(declare-fun choose!17312 (Regex!9046 List!34911) Unit!48431)

(assert (=> d!839271 (= lt!1027664 (choose!17312 (reg!9375 r!17423) s!11993))))

(assert (=> d!839271 (validRegex!3779 (reg!9375 r!17423))))

(assert (=> d!839271 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!219 (reg!9375 r!17423) s!11993) lt!1027664)))

(declare-fun m!3320783 () Bool)

(assert (=> bs!525192 m!3320783))

(declare-fun m!3320785 () Bool)

(assert (=> bs!525192 m!3320785))

(declare-fun m!3320787 () Bool)

(assert (=> bs!525192 m!3320787))

(assert (=> bs!525192 m!3320625))

(assert (=> b!2930110 d!839271))

(declare-fun bs!525193 () Bool)

(declare-fun d!839275 () Bool)

(assert (= bs!525193 (and d!839275 b!2930110)))

(declare-fun lambda!109057 () Int)

(assert (=> bs!525193 (= lambda!109057 lambda!109039)))

(assert (=> bs!525193 (not (= lambda!109057 lambda!109040))))

(declare-fun bs!525194 () Bool)

(assert (= bs!525194 (and d!839275 d!839271)))

(assert (=> bs!525194 (= (= lt!1027606 (Star!9046 (reg!9375 r!17423))) (= lambda!109057 lambda!109053))))

(assert (=> bs!525194 (not (= lambda!109057 lambda!109054))))

(assert (=> d!839275 true))

(assert (=> d!839275 true))

(assert (=> d!839275 true))

(assert (=> d!839275 (= (isDefined!5154 (findConcatSeparation!997 (reg!9375 r!17423) lt!1027606 Nil!34787 s!11993 s!11993)) (Exists!1408 lambda!109057))))

(declare-fun lt!1027670 () Unit!48431)

(declare-fun choose!17313 (Regex!9046 Regex!9046 List!34911) Unit!48431)

(assert (=> d!839275 (= lt!1027670 (choose!17313 (reg!9375 r!17423) lt!1027606 s!11993))))

(assert (=> d!839275 (validRegex!3779 (reg!9375 r!17423))))

(assert (=> d!839275 (= (lemmaFindConcatSeparationEquivalentToExists!779 (reg!9375 r!17423) lt!1027606 s!11993) lt!1027670)))

(declare-fun bs!525195 () Bool)

(assert (= bs!525195 d!839275))

(assert (=> bs!525195 m!3320617))

(assert (=> bs!525195 m!3320625))

(declare-fun m!3320791 () Bool)

(assert (=> bs!525195 m!3320791))

(declare-fun m!3320793 () Bool)

(assert (=> bs!525195 m!3320793))

(assert (=> bs!525195 m!3320617))

(declare-fun m!3320795 () Bool)

(assert (=> bs!525195 m!3320795))

(assert (=> b!2930110 d!839275))

(declare-fun d!839279 () Bool)

(assert (=> d!839279 (= (Exists!1408 lambda!109039) (choose!17311 lambda!109039))))

(declare-fun bs!525196 () Bool)

(assert (= bs!525196 d!839279))

(declare-fun m!3320797 () Bool)

(assert (=> bs!525196 m!3320797))

(assert (=> b!2930110 d!839279))

(declare-fun b!2930393 () Bool)

(declare-fun e!1847892 () Bool)

(declare-fun e!1847895 () Bool)

(assert (=> b!2930393 (= e!1847892 e!1847895)))

(declare-fun c!478514 () Bool)

(assert (=> b!2930393 (= c!478514 (is-EmptyLang!9046 (reg!9375 r!17423)))))

(declare-fun b!2930394 () Bool)

(declare-fun lt!1027673 () Bool)

(assert (=> b!2930394 (= e!1847895 (not lt!1027673))))

(declare-fun d!839281 () Bool)

(assert (=> d!839281 e!1847892))

(declare-fun c!478512 () Bool)

(assert (=> d!839281 (= c!478512 (is-EmptyExpr!9046 (reg!9375 r!17423)))))

(declare-fun e!1847897 () Bool)

(assert (=> d!839281 (= lt!1027673 e!1847897)))

(declare-fun c!478513 () Bool)

(assert (=> d!839281 (= c!478513 (isEmpty!19036 (_1!20003 lt!1027604)))))

(assert (=> d!839281 (validRegex!3779 (reg!9375 r!17423))))

(assert (=> d!839281 (= (matchR!3928 (reg!9375 r!17423) (_1!20003 lt!1027604)) lt!1027673)))

(declare-fun b!2930395 () Bool)

(declare-fun res!1209768 () Bool)

(declare-fun e!1847891 () Bool)

(assert (=> b!2930395 (=> res!1209768 e!1847891)))

(assert (=> b!2930395 (= res!1209768 (not (isEmpty!19036 (tail!4742 (_1!20003 lt!1027604)))))))

(declare-fun b!2930396 () Bool)

(declare-fun e!1847894 () Bool)

(declare-fun e!1847896 () Bool)

(assert (=> b!2930396 (= e!1847894 e!1847896)))

(declare-fun res!1209764 () Bool)

(assert (=> b!2930396 (=> (not res!1209764) (not e!1847896))))

(assert (=> b!2930396 (= res!1209764 (not lt!1027673))))

(declare-fun b!2930397 () Bool)

(assert (=> b!2930397 (= e!1847891 (not (= (head!6516 (_1!20003 lt!1027604)) (c!478466 (reg!9375 r!17423)))))))

(declare-fun b!2930398 () Bool)

(declare-fun call!192302 () Bool)

(assert (=> b!2930398 (= e!1847892 (= lt!1027673 call!192302))))

(declare-fun b!2930399 () Bool)

(declare-fun res!1209763 () Bool)

(declare-fun e!1847893 () Bool)

(assert (=> b!2930399 (=> (not res!1209763) (not e!1847893))))

(assert (=> b!2930399 (= res!1209763 (isEmpty!19036 (tail!4742 (_1!20003 lt!1027604))))))

(declare-fun b!2930400 () Bool)

(assert (=> b!2930400 (= e!1847893 (= (head!6516 (_1!20003 lt!1027604)) (c!478466 (reg!9375 r!17423))))))

(declare-fun b!2930401 () Bool)

(assert (=> b!2930401 (= e!1847897 (nullable!2846 (reg!9375 r!17423)))))

(declare-fun b!2930402 () Bool)

(declare-fun res!1209765 () Bool)

(assert (=> b!2930402 (=> res!1209765 e!1847894)))

(assert (=> b!2930402 (= res!1209765 (not (is-ElementMatch!9046 (reg!9375 r!17423))))))

(assert (=> b!2930402 (= e!1847895 e!1847894)))

(declare-fun b!2930403 () Bool)

(assert (=> b!2930403 (= e!1847897 (matchR!3928 (derivativeStep!2457 (reg!9375 r!17423) (head!6516 (_1!20003 lt!1027604))) (tail!4742 (_1!20003 lt!1027604))))))

(declare-fun bm!192297 () Bool)

(assert (=> bm!192297 (= call!192302 (isEmpty!19036 (_1!20003 lt!1027604)))))

(declare-fun b!2930404 () Bool)

(declare-fun res!1209769 () Bool)

(assert (=> b!2930404 (=> res!1209769 e!1847894)))

(assert (=> b!2930404 (= res!1209769 e!1847893)))

(declare-fun res!1209762 () Bool)

(assert (=> b!2930404 (=> (not res!1209762) (not e!1847893))))

(assert (=> b!2930404 (= res!1209762 lt!1027673)))

(declare-fun b!2930405 () Bool)

(declare-fun res!1209766 () Bool)

(assert (=> b!2930405 (=> (not res!1209766) (not e!1847893))))

(assert (=> b!2930405 (= res!1209766 (not call!192302))))

(declare-fun b!2930406 () Bool)

(assert (=> b!2930406 (= e!1847896 e!1847891)))

(declare-fun res!1209767 () Bool)

(assert (=> b!2930406 (=> res!1209767 e!1847891)))

(assert (=> b!2930406 (= res!1209767 call!192302)))

(assert (= (and d!839281 c!478513) b!2930401))

(assert (= (and d!839281 (not c!478513)) b!2930403))

(assert (= (and d!839281 c!478512) b!2930398))

(assert (= (and d!839281 (not c!478512)) b!2930393))

(assert (= (and b!2930393 c!478514) b!2930394))

(assert (= (and b!2930393 (not c!478514)) b!2930402))

(assert (= (and b!2930402 (not res!1209765)) b!2930404))

(assert (= (and b!2930404 res!1209762) b!2930405))

(assert (= (and b!2930405 res!1209766) b!2930399))

(assert (= (and b!2930399 res!1209763) b!2930400))

(assert (= (and b!2930404 (not res!1209769)) b!2930396))

(assert (= (and b!2930396 res!1209764) b!2930406))

(assert (= (and b!2930406 (not res!1209767)) b!2930395))

(assert (= (and b!2930395 (not res!1209768)) b!2930397))

(assert (= (or b!2930398 b!2930405 b!2930406) bm!192297))

(assert (=> d!839281 m!3320627))

(assert (=> d!839281 m!3320625))

(assert (=> bm!192297 m!3320627))

(declare-fun m!3320799 () Bool)

(assert (=> b!2930395 m!3320799))

(assert (=> b!2930395 m!3320799))

(declare-fun m!3320801 () Bool)

(assert (=> b!2930395 m!3320801))

(declare-fun m!3320803 () Bool)

(assert (=> b!2930401 m!3320803))

(assert (=> b!2930399 m!3320799))

(assert (=> b!2930399 m!3320799))

(assert (=> b!2930399 m!3320801))

(declare-fun m!3320805 () Bool)

(assert (=> b!2930397 m!3320805))

(assert (=> b!2930400 m!3320805))

(assert (=> b!2930403 m!3320805))

(assert (=> b!2930403 m!3320805))

(declare-fun m!3320807 () Bool)

(assert (=> b!2930403 m!3320807))

(assert (=> b!2930403 m!3320799))

(assert (=> b!2930403 m!3320807))

(assert (=> b!2930403 m!3320799))

(declare-fun m!3320809 () Bool)

(assert (=> b!2930403 m!3320809))

(assert (=> b!2930119 d!839281))

(declare-fun d!839283 () Bool)

(assert (=> d!839283 (= (get!10618 lt!1027600) (v!34736 lt!1027600))))

(assert (=> b!2930119 d!839283))

(declare-fun bs!525197 () Bool)

(declare-fun b!2930453 () Bool)

(assert (= bs!525197 (and b!2930453 b!2930110)))

(declare-fun lambda!109062 () Int)

(assert (=> bs!525197 (= (= r!17423 lt!1027606) (= lambda!109062 lambda!109040))))

(declare-fun bs!525198 () Bool)

(assert (= bs!525198 (and b!2930453 d!839275)))

(assert (=> bs!525198 (not (= lambda!109062 lambda!109057))))

(declare-fun bs!525199 () Bool)

(assert (= bs!525199 (and b!2930453 d!839271)))

(assert (=> bs!525199 (not (= lambda!109062 lambda!109053))))

(assert (=> bs!525199 (= (= r!17423 (Star!9046 (reg!9375 r!17423))) (= lambda!109062 lambda!109054))))

(assert (=> bs!525197 (not (= lambda!109062 lambda!109039))))

(assert (=> b!2930453 true))

(assert (=> b!2930453 true))

(declare-fun bs!525200 () Bool)

(declare-fun b!2930447 () Bool)

(assert (= bs!525200 (and b!2930447 b!2930110)))

(declare-fun lambda!109063 () Int)

(assert (=> bs!525200 (not (= lambda!109063 lambda!109040))))

(declare-fun bs!525201 () Bool)

(assert (= bs!525201 (and b!2930447 d!839275)))

(assert (=> bs!525201 (not (= lambda!109063 lambda!109057))))

(declare-fun bs!525202 () Bool)

(assert (= bs!525202 (and b!2930447 d!839271)))

(assert (=> bs!525202 (not (= lambda!109063 lambda!109053))))

(assert (=> bs!525202 (not (= lambda!109063 lambda!109054))))

(declare-fun bs!525203 () Bool)

(assert (= bs!525203 (and b!2930447 b!2930453)))

(assert (=> bs!525203 (not (= lambda!109063 lambda!109062))))

(assert (=> bs!525200 (not (= lambda!109063 lambda!109039))))

(assert (=> b!2930447 true))

(assert (=> b!2930447 true))

(declare-fun call!192308 () Bool)

(declare-fun bm!192302 () Bool)

(declare-fun c!478524 () Bool)

(assert (=> bm!192302 (= call!192308 (Exists!1408 (ite c!478524 lambda!109062 lambda!109063)))))

(declare-fun e!1847921 () Bool)

(assert (=> b!2930447 (= e!1847921 call!192308)))

(declare-fun b!2930448 () Bool)

(declare-fun e!1847920 () Bool)

(declare-fun e!1847924 () Bool)

(assert (=> b!2930448 (= e!1847920 e!1847924)))

(declare-fun res!1209793 () Bool)

(assert (=> b!2930448 (= res!1209793 (matchRSpec!1183 (regOne!18605 r!17423) s!11993))))

(assert (=> b!2930448 (=> res!1209793 e!1847924)))

(declare-fun b!2930449 () Bool)

(declare-fun c!478526 () Bool)

(assert (=> b!2930449 (= c!478526 (is-ElementMatch!9046 r!17423))))

(declare-fun e!1847926 () Bool)

(declare-fun e!1847923 () Bool)

(assert (=> b!2930449 (= e!1847926 e!1847923)))

(declare-fun b!2930450 () Bool)

(assert (=> b!2930450 (= e!1847923 (= s!11993 (Cons!34787 (c!478466 r!17423) Nil!34787)))))

(declare-fun bm!192303 () Bool)

(declare-fun call!192307 () Bool)

(assert (=> bm!192303 (= call!192307 (isEmpty!19036 s!11993))))

(declare-fun b!2930451 () Bool)

(declare-fun res!1209794 () Bool)

(declare-fun e!1847925 () Bool)

(assert (=> b!2930451 (=> res!1209794 e!1847925)))

(assert (=> b!2930451 (= res!1209794 call!192307)))

(assert (=> b!2930451 (= e!1847921 e!1847925)))

(declare-fun d!839285 () Bool)

(declare-fun c!478527 () Bool)

(assert (=> d!839285 (= c!478527 (is-EmptyExpr!9046 r!17423))))

(declare-fun e!1847922 () Bool)

(assert (=> d!839285 (= (matchRSpec!1183 r!17423 s!11993) e!1847922)))

(declare-fun b!2930452 () Bool)

(declare-fun c!478525 () Bool)

(assert (=> b!2930452 (= c!478525 (is-Union!9046 r!17423))))

(assert (=> b!2930452 (= e!1847923 e!1847920)))

(assert (=> b!2930453 (= e!1847925 call!192308)))

(declare-fun b!2930454 () Bool)

(assert (=> b!2930454 (= e!1847924 (matchRSpec!1183 (regTwo!18605 r!17423) s!11993))))

(declare-fun b!2930455 () Bool)

(assert (=> b!2930455 (= e!1847922 call!192307)))

(declare-fun b!2930456 () Bool)

(assert (=> b!2930456 (= e!1847920 e!1847921)))

(assert (=> b!2930456 (= c!478524 (is-Star!9046 r!17423))))

(declare-fun b!2930457 () Bool)

(assert (=> b!2930457 (= e!1847922 e!1847926)))

(declare-fun res!1209792 () Bool)

(assert (=> b!2930457 (= res!1209792 (not (is-EmptyLang!9046 r!17423)))))

(assert (=> b!2930457 (=> (not res!1209792) (not e!1847926))))

(assert (= (and d!839285 c!478527) b!2930455))

(assert (= (and d!839285 (not c!478527)) b!2930457))

(assert (= (and b!2930457 res!1209792) b!2930449))

(assert (= (and b!2930449 c!478526) b!2930450))

(assert (= (and b!2930449 (not c!478526)) b!2930452))

(assert (= (and b!2930452 c!478525) b!2930448))

(assert (= (and b!2930452 (not c!478525)) b!2930456))

(assert (= (and b!2930448 (not res!1209793)) b!2930454))

(assert (= (and b!2930456 c!478524) b!2930451))

(assert (= (and b!2930456 (not c!478524)) b!2930447))

(assert (= (and b!2930451 (not res!1209794)) b!2930453))

(assert (= (or b!2930453 b!2930447) bm!192302))

(assert (= (or b!2930455 b!2930451) bm!192303))

(declare-fun m!3320821 () Bool)

(assert (=> bm!192302 m!3320821))

(declare-fun m!3320823 () Bool)

(assert (=> b!2930448 m!3320823))

(assert (=> bm!192303 m!3320621))

(declare-fun m!3320825 () Bool)

(assert (=> b!2930454 m!3320825))

(assert (=> b!2930112 d!839285))

(declare-fun b!2930480 () Bool)

(declare-fun e!1847942 () Bool)

(declare-fun e!1847945 () Bool)

(assert (=> b!2930480 (= e!1847942 e!1847945)))

(declare-fun c!478538 () Bool)

(assert (=> b!2930480 (= c!478538 (is-EmptyLang!9046 r!17423))))

(declare-fun b!2930481 () Bool)

(declare-fun lt!1027675 () Bool)

(assert (=> b!2930481 (= e!1847945 (not lt!1027675))))

(declare-fun d!839289 () Bool)

(assert (=> d!839289 e!1847942))

(declare-fun c!478536 () Bool)

(assert (=> d!839289 (= c!478536 (is-EmptyExpr!9046 r!17423))))

(declare-fun e!1847947 () Bool)

(assert (=> d!839289 (= lt!1027675 e!1847947)))

(declare-fun c!478537 () Bool)

(assert (=> d!839289 (= c!478537 (isEmpty!19036 s!11993))))

(assert (=> d!839289 (validRegex!3779 r!17423)))

(assert (=> d!839289 (= (matchR!3928 r!17423 s!11993) lt!1027675)))

(declare-fun b!2930482 () Bool)

(declare-fun res!1209807 () Bool)

(declare-fun e!1847941 () Bool)

(assert (=> b!2930482 (=> res!1209807 e!1847941)))

(assert (=> b!2930482 (= res!1209807 (not (isEmpty!19036 (tail!4742 s!11993))))))

(declare-fun b!2930483 () Bool)

(declare-fun e!1847944 () Bool)

(declare-fun e!1847946 () Bool)

(assert (=> b!2930483 (= e!1847944 e!1847946)))

(declare-fun res!1209803 () Bool)

(assert (=> b!2930483 (=> (not res!1209803) (not e!1847946))))

(assert (=> b!2930483 (= res!1209803 (not lt!1027675))))

(declare-fun b!2930484 () Bool)

(assert (=> b!2930484 (= e!1847941 (not (= (head!6516 s!11993) (c!478466 r!17423))))))

(declare-fun b!2930485 () Bool)

(declare-fun call!192309 () Bool)

(assert (=> b!2930485 (= e!1847942 (= lt!1027675 call!192309))))

(declare-fun b!2930486 () Bool)

(declare-fun res!1209802 () Bool)

(declare-fun e!1847943 () Bool)

(assert (=> b!2930486 (=> (not res!1209802) (not e!1847943))))

(assert (=> b!2930486 (= res!1209802 (isEmpty!19036 (tail!4742 s!11993)))))

(declare-fun b!2930487 () Bool)

(assert (=> b!2930487 (= e!1847943 (= (head!6516 s!11993) (c!478466 r!17423)))))

(declare-fun b!2930488 () Bool)

(assert (=> b!2930488 (= e!1847947 (nullable!2846 r!17423))))

(declare-fun b!2930489 () Bool)

(declare-fun res!1209804 () Bool)

(assert (=> b!2930489 (=> res!1209804 e!1847944)))

(assert (=> b!2930489 (= res!1209804 (not (is-ElementMatch!9046 r!17423)))))

(assert (=> b!2930489 (= e!1847945 e!1847944)))

(declare-fun b!2930490 () Bool)

(assert (=> b!2930490 (= e!1847947 (matchR!3928 (derivativeStep!2457 r!17423 (head!6516 s!11993)) (tail!4742 s!11993)))))

(declare-fun bm!192304 () Bool)

(assert (=> bm!192304 (= call!192309 (isEmpty!19036 s!11993))))

(declare-fun b!2930491 () Bool)

(declare-fun res!1209808 () Bool)

(assert (=> b!2930491 (=> res!1209808 e!1847944)))

(assert (=> b!2930491 (= res!1209808 e!1847943)))

(declare-fun res!1209801 () Bool)

(assert (=> b!2930491 (=> (not res!1209801) (not e!1847943))))

(assert (=> b!2930491 (= res!1209801 lt!1027675)))

(declare-fun b!2930492 () Bool)

(declare-fun res!1209805 () Bool)

(assert (=> b!2930492 (=> (not res!1209805) (not e!1847943))))

(assert (=> b!2930492 (= res!1209805 (not call!192309))))

(declare-fun b!2930493 () Bool)

(assert (=> b!2930493 (= e!1847946 e!1847941)))

(declare-fun res!1209806 () Bool)

(assert (=> b!2930493 (=> res!1209806 e!1847941)))

(assert (=> b!2930493 (= res!1209806 call!192309)))

(assert (= (and d!839289 c!478537) b!2930488))

(assert (= (and d!839289 (not c!478537)) b!2930490))

(assert (= (and d!839289 c!478536) b!2930485))

(assert (= (and d!839289 (not c!478536)) b!2930480))

(assert (= (and b!2930480 c!478538) b!2930481))

(assert (= (and b!2930480 (not c!478538)) b!2930489))

(assert (= (and b!2930489 (not res!1209804)) b!2930491))

(assert (= (and b!2930491 res!1209801) b!2930492))

(assert (= (and b!2930492 res!1209805) b!2930486))

(assert (= (and b!2930486 res!1209802) b!2930487))

(assert (= (and b!2930491 (not res!1209808)) b!2930483))

(assert (= (and b!2930483 res!1209803) b!2930493))

(assert (= (and b!2930493 (not res!1209806)) b!2930482))

(assert (= (and b!2930482 (not res!1209807)) b!2930484))

(assert (= (or b!2930485 b!2930492 b!2930493) bm!192304))

(assert (=> d!839289 m!3320621))

(assert (=> d!839289 m!3320651))

(assert (=> bm!192304 m!3320621))

(declare-fun m!3320827 () Bool)

(assert (=> b!2930482 m!3320827))

(assert (=> b!2930482 m!3320827))

(declare-fun m!3320829 () Bool)

(assert (=> b!2930482 m!3320829))

(declare-fun m!3320831 () Bool)

(assert (=> b!2930488 m!3320831))

(assert (=> b!2930486 m!3320827))

(assert (=> b!2930486 m!3320827))

(assert (=> b!2930486 m!3320829))

(declare-fun m!3320833 () Bool)

(assert (=> b!2930484 m!3320833))

(assert (=> b!2930487 m!3320833))

(assert (=> b!2930490 m!3320833))

(assert (=> b!2930490 m!3320833))

(declare-fun m!3320835 () Bool)

(assert (=> b!2930490 m!3320835))

(assert (=> b!2930490 m!3320827))

(assert (=> b!2930490 m!3320835))

(assert (=> b!2930490 m!3320827))

(declare-fun m!3320837 () Bool)

(assert (=> b!2930490 m!3320837))

(assert (=> b!2930112 d!839289))

(declare-fun d!839291 () Bool)

(assert (=> d!839291 (= (matchR!3928 r!17423 s!11993) (matchRSpec!1183 r!17423 s!11993))))

(declare-fun lt!1027678 () Unit!48431)

(declare-fun choose!17314 (Regex!9046 List!34911) Unit!48431)

(assert (=> d!839291 (= lt!1027678 (choose!17314 r!17423 s!11993))))

(assert (=> d!839291 (validRegex!3779 r!17423)))

(assert (=> d!839291 (= (mainMatchTheorem!1183 r!17423 s!11993) lt!1027678)))

(declare-fun bs!525204 () Bool)

(assert (= bs!525204 d!839291))

(assert (=> bs!525204 m!3320637))

(assert (=> bs!525204 m!3320635))

(declare-fun m!3320839 () Bool)

(assert (=> bs!525204 m!3320839))

(assert (=> bs!525204 m!3320651))

(assert (=> b!2930112 d!839291))

(declare-fun d!839293 () Bool)

(assert (=> d!839293 (= (isEmpty!19036 s!11993) (is-Nil!34787 s!11993))))

(assert (=> b!2930121 d!839293))

(declare-fun b!2930500 () Bool)

(declare-fun e!1847954 () Bool)

(declare-fun call!192310 () Bool)

(assert (=> b!2930500 (= e!1847954 call!192310)))

(declare-fun b!2930501 () Bool)

(declare-fun e!1847955 () Bool)

(declare-fun e!1847952 () Bool)

(assert (=> b!2930501 (= e!1847955 e!1847952)))

(declare-fun c!478540 () Bool)

(assert (=> b!2930501 (= c!478540 (is-Star!9046 r!17423))))

(declare-fun b!2930502 () Bool)

(declare-fun e!1847956 () Bool)

(assert (=> b!2930502 (= e!1847952 e!1847956)))

(declare-fun c!478539 () Bool)

(assert (=> b!2930502 (= c!478539 (is-Union!9046 r!17423))))

(declare-fun b!2930503 () Bool)

(declare-fun e!1847951 () Bool)

(declare-fun call!192311 () Bool)

(assert (=> b!2930503 (= e!1847951 call!192311)))

(declare-fun b!2930504 () Bool)

(declare-fun e!1847950 () Bool)

(declare-fun call!192312 () Bool)

(assert (=> b!2930504 (= e!1847950 call!192312)))

(declare-fun bm!192305 () Bool)

(assert (=> bm!192305 (= call!192310 (validRegex!3779 (ite c!478539 (regOne!18605 r!17423) (regTwo!18604 r!17423))))))

(declare-fun b!2930505 () Bool)

(declare-fun res!1209819 () Bool)

(declare-fun e!1847953 () Bool)

(assert (=> b!2930505 (=> res!1209819 e!1847953)))

(assert (=> b!2930505 (= res!1209819 (not (is-Concat!14367 r!17423)))))

(assert (=> b!2930505 (= e!1847956 e!1847953)))

(declare-fun d!839295 () Bool)

(declare-fun res!1209815 () Bool)

(assert (=> d!839295 (=> res!1209815 e!1847955)))

(assert (=> d!839295 (= res!1209815 (is-ElementMatch!9046 r!17423))))

(assert (=> d!839295 (= (validRegex!3779 r!17423) e!1847955)))

(declare-fun b!2930506 () Bool)

(assert (=> b!2930506 (= e!1847952 e!1847950)))

(declare-fun res!1209816 () Bool)

(assert (=> b!2930506 (= res!1209816 (not (nullable!2846 (reg!9375 r!17423))))))

(assert (=> b!2930506 (=> (not res!1209816) (not e!1847950))))

(declare-fun b!2930507 () Bool)

(declare-fun res!1209818 () Bool)

(assert (=> b!2930507 (=> (not res!1209818) (not e!1847951))))

(assert (=> b!2930507 (= res!1209818 call!192310)))

(assert (=> b!2930507 (= e!1847956 e!1847951)))

(declare-fun bm!192306 () Bool)

(assert (=> bm!192306 (= call!192311 call!192312)))

(declare-fun b!2930508 () Bool)

(assert (=> b!2930508 (= e!1847953 e!1847954)))

(declare-fun res!1209817 () Bool)

(assert (=> b!2930508 (=> (not res!1209817) (not e!1847954))))

(assert (=> b!2930508 (= res!1209817 call!192311)))

(declare-fun bm!192307 () Bool)

(assert (=> bm!192307 (= call!192312 (validRegex!3779 (ite c!478540 (reg!9375 r!17423) (ite c!478539 (regTwo!18605 r!17423) (regOne!18604 r!17423)))))))

(assert (= (and d!839295 (not res!1209815)) b!2930501))

(assert (= (and b!2930501 c!478540) b!2930506))

(assert (= (and b!2930501 (not c!478540)) b!2930502))

(assert (= (and b!2930506 res!1209816) b!2930504))

(assert (= (and b!2930502 c!478539) b!2930507))

(assert (= (and b!2930502 (not c!478539)) b!2930505))

(assert (= (and b!2930507 res!1209818) b!2930503))

(assert (= (and b!2930505 (not res!1209819)) b!2930508))

(assert (= (and b!2930508 res!1209817) b!2930500))

(assert (= (or b!2930507 b!2930500) bm!192305))

(assert (= (or b!2930503 b!2930508) bm!192306))

(assert (= (or b!2930504 bm!192306) bm!192307))

(declare-fun m!3320841 () Bool)

(assert (=> bm!192305 m!3320841))

(assert (=> b!2930506 m!3320803))

(declare-fun m!3320843 () Bool)

(assert (=> bm!192307 m!3320843))

(assert (=> start!284942 d!839295))

(declare-fun b!2930524 () Bool)

(declare-fun e!1847964 () Bool)

(declare-fun lt!1027681 () List!34911)

(assert (=> b!2930524 (= e!1847964 (or (not (= (_2!20003 lt!1027604) Nil!34787)) (= lt!1027681 (_1!20003 lt!1027604))))))

(declare-fun b!2930522 () Bool)

(declare-fun e!1847963 () List!34911)

(assert (=> b!2930522 (= e!1847963 (Cons!34787 (h!40207 (_1!20003 lt!1027604)) (++!8296 (t!233976 (_1!20003 lt!1027604)) (_2!20003 lt!1027604))))))

(declare-fun b!2930523 () Bool)

(declare-fun res!1209828 () Bool)

(assert (=> b!2930523 (=> (not res!1209828) (not e!1847964))))

(assert (=> b!2930523 (= res!1209828 (= (size!26442 lt!1027681) (+ (size!26442 (_1!20003 lt!1027604)) (size!26442 (_2!20003 lt!1027604)))))))

(declare-fun b!2930521 () Bool)

(assert (=> b!2930521 (= e!1847963 (_2!20003 lt!1027604))))

(declare-fun d!839297 () Bool)

(assert (=> d!839297 e!1847964))

(declare-fun res!1209829 () Bool)

(assert (=> d!839297 (=> (not res!1209829) (not e!1847964))))

(declare-fun content!4753 (List!34911) (Set C!18278))

(assert (=> d!839297 (= res!1209829 (= (content!4753 lt!1027681) (set.union (content!4753 (_1!20003 lt!1027604)) (content!4753 (_2!20003 lt!1027604)))))))

(assert (=> d!839297 (= lt!1027681 e!1847963)))

(declare-fun c!478543 () Bool)

(assert (=> d!839297 (= c!478543 (is-Nil!34787 (_1!20003 lt!1027604)))))

(assert (=> d!839297 (= (++!8296 (_1!20003 lt!1027604) (_2!20003 lt!1027604)) lt!1027681)))

(assert (= (and d!839297 c!478543) b!2930521))

(assert (= (and d!839297 (not c!478543)) b!2930522))

(assert (= (and d!839297 res!1209829) b!2930523))

(assert (= (and b!2930523 res!1209828) b!2930524))

(declare-fun m!3320845 () Bool)

(assert (=> b!2930522 m!3320845))

(declare-fun m!3320847 () Bool)

(assert (=> b!2930523 m!3320847))

(assert (=> b!2930523 m!3320653))

(assert (=> b!2930523 m!3320641))

(declare-fun m!3320849 () Bool)

(assert (=> d!839297 m!3320849))

(declare-fun m!3320851 () Bool)

(assert (=> d!839297 m!3320851))

(declare-fun m!3320853 () Bool)

(assert (=> d!839297 m!3320853))

(assert (=> b!2930111 d!839297))

(declare-fun d!839299 () Bool)

(declare-fun lt!1027684 () Int)

(assert (=> d!839299 (>= lt!1027684 0)))

(declare-fun e!1847967 () Int)

(assert (=> d!839299 (= lt!1027684 e!1847967)))

(declare-fun c!478546 () Bool)

(assert (=> d!839299 (= c!478546 (is-Nil!34787 (_1!20003 lt!1027604)))))

(assert (=> d!839299 (= (size!26442 (_1!20003 lt!1027604)) lt!1027684)))

(declare-fun b!2930529 () Bool)

(assert (=> b!2930529 (= e!1847967 0)))

(declare-fun b!2930530 () Bool)

(assert (=> b!2930530 (= e!1847967 (+ 1 (size!26442 (t!233976 (_1!20003 lt!1027604)))))))

(assert (= (and d!839299 c!478546) b!2930529))

(assert (= (and d!839299 (not c!478546)) b!2930530))

(declare-fun m!3320855 () Bool)

(assert (=> b!2930530 m!3320855))

(assert (=> b!2930113 d!839299))

(declare-fun d!839301 () Bool)

(assert (=> d!839301 (= (isEmpty!19036 (_1!20003 lt!1027604)) (is-Nil!34787 (_1!20003 lt!1027604)))))

(assert (=> b!2930114 d!839301))

(declare-fun d!839303 () Bool)

(declare-fun lt!1027685 () Int)

(assert (=> d!839303 (>= lt!1027685 0)))

(declare-fun e!1847968 () Int)

(assert (=> d!839303 (= lt!1027685 e!1847968)))

(declare-fun c!478547 () Bool)

(assert (=> d!839303 (= c!478547 (is-Nil!34787 (_2!20003 lt!1027604)))))

(assert (=> d!839303 (= (size!26442 (_2!20003 lt!1027604)) lt!1027685)))

(declare-fun b!2930531 () Bool)

(assert (=> b!2930531 (= e!1847968 0)))

(declare-fun b!2930532 () Bool)

(assert (=> b!2930532 (= e!1847968 (+ 1 (size!26442 (t!233976 (_2!20003 lt!1027604)))))))

(assert (= (and d!839303 c!478547) b!2930531))

(assert (= (and d!839303 (not c!478547)) b!2930532))

(declare-fun m!3320857 () Bool)

(assert (=> b!2930532 m!3320857))

(assert (=> b!2930118 d!839303))

(declare-fun b!2930608 () Bool)

(declare-fun e!1848019 () Regex!9046)

(declare-fun e!1848012 () Regex!9046)

(assert (=> b!2930608 (= e!1848019 e!1848012)))

(declare-fun c!478585 () Bool)

(declare-fun call!192336 () Bool)

(assert (=> b!2930608 (= c!478585 call!192336)))

(declare-fun b!2930609 () Bool)

(declare-fun e!1848015 () Regex!9046)

(assert (=> b!2930609 (= e!1848015 EmptyLang!9046)))

(declare-fun bm!192329 () Bool)

(declare-fun call!192335 () Regex!9046)

(declare-fun c!478577 () Bool)

(declare-fun c!478587 () Bool)

(assert (=> bm!192329 (= call!192335 (simplify!53 (ite c!478587 (reg!9375 (reg!9375 r!17423)) (ite c!478577 (regOne!18605 (reg!9375 r!17423)) (regTwo!18604 (reg!9375 r!17423))))))))

(declare-fun bm!192330 () Bool)

(declare-fun call!192334 () Bool)

(declare-fun lt!1027701 () Regex!9046)

(declare-fun lt!1027699 () Regex!9046)

(declare-fun isEmptyLang!191 (Regex!9046) Bool)

(assert (=> bm!192330 (= call!192334 (isEmptyLang!191 (ite c!478577 lt!1027699 lt!1027701)))))

(declare-fun b!2930610 () Bool)

(declare-fun lt!1027703 () Regex!9046)

(assert (=> b!2930610 (= e!1848019 lt!1027703)))

(declare-fun b!2930611 () Bool)

(declare-fun c!478582 () Bool)

(declare-fun call!192337 () Bool)

(assert (=> b!2930611 (= c!478582 call!192337)))

(declare-fun e!1848013 () Regex!9046)

(declare-fun e!1848011 () Regex!9046)

(assert (=> b!2930611 (= e!1848013 e!1848011)))

(declare-fun b!2930612 () Bool)

(declare-fun c!478584 () Bool)

(assert (=> b!2930612 (= c!478584 (is-EmptyExpr!9046 (reg!9375 r!17423)))))

(declare-fun e!1848017 () Regex!9046)

(declare-fun e!1848018 () Regex!9046)

(assert (=> b!2930612 (= e!1848017 e!1848018)))

(declare-fun bm!192331 () Bool)

(declare-fun call!192340 () Regex!9046)

(assert (=> bm!192331 (= call!192340 call!192335)))

(declare-fun bm!192332 () Bool)

(declare-fun call!192339 () Regex!9046)

(assert (=> bm!192332 (= call!192339 (simplify!53 (ite c!478577 (regTwo!18605 (reg!9375 r!17423)) (regOne!18604 (reg!9375 r!17423)))))))

(declare-fun b!2930613 () Bool)

(declare-fun e!1848014 () Bool)

(assert (=> b!2930613 (= e!1848014 call!192336)))

(declare-fun b!2930614 () Bool)

(assert (=> b!2930614 (= c!478577 (is-Union!9046 (reg!9375 r!17423)))))

(declare-fun e!1848020 () Regex!9046)

(declare-fun e!1848016 () Regex!9046)

(assert (=> b!2930614 (= e!1848020 e!1848016)))

(declare-fun b!2930615 () Bool)

(assert (=> b!2930615 (= e!1848011 lt!1027699)))

(declare-fun bm!192333 () Bool)

(declare-fun call!192338 () Bool)

(assert (=> bm!192333 (= call!192337 call!192338)))

(declare-fun b!2930616 () Bool)

(declare-fun c!478578 () Bool)

(assert (=> b!2930616 (= c!478578 e!1848014)))

(declare-fun res!1209849 () Bool)

(assert (=> b!2930616 (=> res!1209849 e!1848014)))

(assert (=> b!2930616 (= res!1209849 call!192338)))

(declare-fun lt!1027700 () Regex!9046)

(assert (=> b!2930616 (= lt!1027700 call!192335)))

(declare-fun e!1848023 () Regex!9046)

(assert (=> b!2930616 (= e!1848020 e!1848023)))

(declare-fun lt!1027702 () Regex!9046)

(declare-fun bm!192334 () Bool)

(assert (=> bm!192334 (= call!192338 (isEmptyLang!191 (ite c!478587 lt!1027700 (ite c!478577 lt!1027702 lt!1027703))))))

(declare-fun b!2930617 () Bool)

(declare-fun e!1848024 () Regex!9046)

(assert (=> b!2930617 (= e!1848016 e!1848024)))

(assert (=> b!2930617 (= lt!1027701 call!192339)))

(assert (=> b!2930617 (= lt!1027703 call!192340)))

(declare-fun res!1209848 () Bool)

(assert (=> b!2930617 (= res!1209848 call!192334)))

(declare-fun e!1848021 () Bool)

(assert (=> b!2930617 (=> res!1209848 e!1848021)))

(declare-fun c!478580 () Bool)

(assert (=> b!2930617 (= c!478580 e!1848021)))

(declare-fun b!2930618 () Bool)

(assert (=> b!2930618 (= e!1848021 call!192337)))

(declare-fun b!2930619 () Bool)

(assert (=> b!2930619 (= e!1848011 (Union!9046 lt!1027699 lt!1027702))))

(declare-fun b!2930620 () Bool)

(assert (=> b!2930620 (= e!1848012 (Concat!14367 lt!1027701 lt!1027703))))

(declare-fun d!839305 () Bool)

(declare-fun e!1848022 () Bool)

(assert (=> d!839305 e!1848022))

(declare-fun res!1209847 () Bool)

(assert (=> d!839305 (=> (not res!1209847) (not e!1848022))))

(declare-fun lt!1027704 () Regex!9046)

(assert (=> d!839305 (= res!1209847 (validRegex!3779 lt!1027704))))

(assert (=> d!839305 (= lt!1027704 e!1848015)))

(declare-fun c!478586 () Bool)

(assert (=> d!839305 (= c!478586 (is-EmptyLang!9046 (reg!9375 r!17423)))))

(assert (=> d!839305 (validRegex!3779 (reg!9375 r!17423))))

(assert (=> d!839305 (= (simplify!53 (reg!9375 r!17423)) lt!1027704)))

(declare-fun b!2930621 () Bool)

(assert (=> b!2930621 (= e!1848017 (reg!9375 r!17423))))

(declare-fun b!2930622 () Bool)

(assert (=> b!2930622 (= e!1848015 e!1848017)))

(declare-fun c!478583 () Bool)

(assert (=> b!2930622 (= c!478583 (is-ElementMatch!9046 (reg!9375 r!17423)))))

(declare-fun bm!192335 () Bool)

(declare-fun isEmptyExpr!276 (Regex!9046) Bool)

(assert (=> bm!192335 (= call!192336 (isEmptyExpr!276 (ite c!478587 lt!1027700 lt!1027703)))))

(declare-fun b!2930623 () Bool)

(assert (=> b!2930623 (= e!1848018 EmptyExpr!9046)))

(declare-fun b!2930624 () Bool)

(assert (=> b!2930624 (= e!1848016 e!1848013)))

(assert (=> b!2930624 (= lt!1027699 call!192340)))

(assert (=> b!2930624 (= lt!1027702 call!192339)))

(declare-fun c!478579 () Bool)

(assert (=> b!2930624 (= c!478579 call!192334)))

(declare-fun b!2930625 () Bool)

(assert (=> b!2930625 (= e!1848012 lt!1027701)))

(declare-fun b!2930626 () Bool)

(assert (=> b!2930626 (= e!1848013 lt!1027702)))

(declare-fun b!2930627 () Bool)

(assert (=> b!2930627 (= e!1848023 (Star!9046 lt!1027700))))

(declare-fun b!2930628 () Bool)

(declare-fun c!478581 () Bool)

(assert (=> b!2930628 (= c!478581 (isEmptyExpr!276 lt!1027701))))

(assert (=> b!2930628 (= e!1848024 e!1848019)))

(declare-fun b!2930629 () Bool)

(assert (=> b!2930629 (= e!1848022 (= (nullable!2846 lt!1027704) (nullable!2846 (reg!9375 r!17423))))))

(declare-fun b!2930630 () Bool)

(assert (=> b!2930630 (= e!1848024 EmptyLang!9046)))

(declare-fun b!2930631 () Bool)

(assert (=> b!2930631 (= e!1848018 e!1848020)))

(assert (=> b!2930631 (= c!478587 (is-Star!9046 (reg!9375 r!17423)))))

(declare-fun b!2930632 () Bool)

(assert (=> b!2930632 (= e!1848023 EmptyExpr!9046)))

(assert (= (and d!839305 c!478586) b!2930609))

(assert (= (and d!839305 (not c!478586)) b!2930622))

(assert (= (and b!2930622 c!478583) b!2930621))

(assert (= (and b!2930622 (not c!478583)) b!2930612))

(assert (= (and b!2930612 c!478584) b!2930623))

(assert (= (and b!2930612 (not c!478584)) b!2930631))

(assert (= (and b!2930631 c!478587) b!2930616))

(assert (= (and b!2930631 (not c!478587)) b!2930614))

(assert (= (and b!2930616 (not res!1209849)) b!2930613))

(assert (= (and b!2930616 c!478578) b!2930632))

(assert (= (and b!2930616 (not c!478578)) b!2930627))

(assert (= (and b!2930614 c!478577) b!2930624))

(assert (= (and b!2930614 (not c!478577)) b!2930617))

(assert (= (and b!2930624 c!478579) b!2930626))

(assert (= (and b!2930624 (not c!478579)) b!2930611))

(assert (= (and b!2930611 c!478582) b!2930615))

(assert (= (and b!2930611 (not c!478582)) b!2930619))

(assert (= (and b!2930617 (not res!1209848)) b!2930618))

(assert (= (and b!2930617 c!478580) b!2930630))

(assert (= (and b!2930617 (not c!478580)) b!2930628))

(assert (= (and b!2930628 c!478581) b!2930610))

(assert (= (and b!2930628 (not c!478581)) b!2930608))

(assert (= (and b!2930608 c!478585) b!2930625))

(assert (= (and b!2930608 (not c!478585)) b!2930620))

(assert (= (or b!2930624 b!2930617) bm!192331))

(assert (= (or b!2930624 b!2930617) bm!192332))

(assert (= (or b!2930611 b!2930618) bm!192333))

(assert (= (or b!2930624 b!2930617) bm!192330))

(assert (= (or b!2930613 b!2930608) bm!192335))

(assert (= (or b!2930616 bm!192331) bm!192329))

(assert (= (or b!2930616 bm!192333) bm!192334))

(assert (= (and d!839305 res!1209847) b!2930629))

(declare-fun m!3320877 () Bool)

(assert (=> b!2930628 m!3320877))

(declare-fun m!3320879 () Bool)

(assert (=> bm!192334 m!3320879))

(declare-fun m!3320881 () Bool)

(assert (=> bm!192329 m!3320881))

(declare-fun m!3320883 () Bool)

(assert (=> bm!192332 m!3320883))

(declare-fun m!3320885 () Bool)

(assert (=> bm!192330 m!3320885))

(declare-fun m!3320887 () Bool)

(assert (=> d!839305 m!3320887))

(assert (=> d!839305 m!3320625))

(declare-fun m!3320889 () Bool)

(assert (=> bm!192335 m!3320889))

(declare-fun m!3320891 () Bool)

(assert (=> b!2930629 m!3320891))

(assert (=> b!2930629 m!3320803))

(assert (=> b!2930118 d!839305))

(declare-fun b!2930633 () Bool)

(declare-fun e!1848026 () Bool)

(declare-fun e!1848029 () Bool)

(assert (=> b!2930633 (= e!1848026 e!1848029)))

(declare-fun c!478590 () Bool)

(assert (=> b!2930633 (= c!478590 (is-EmptyLang!9046 (simplify!53 (reg!9375 r!17423))))))

(declare-fun b!2930634 () Bool)

(declare-fun lt!1027707 () Bool)

(assert (=> b!2930634 (= e!1848029 (not lt!1027707))))

(declare-fun d!839311 () Bool)

(assert (=> d!839311 e!1848026))

(declare-fun c!478588 () Bool)

(assert (=> d!839311 (= c!478588 (is-EmptyExpr!9046 (simplify!53 (reg!9375 r!17423))))))

(declare-fun e!1848031 () Bool)

(assert (=> d!839311 (= lt!1027707 e!1848031)))

(declare-fun c!478589 () Bool)

(assert (=> d!839311 (= c!478589 (isEmpty!19036 (_1!20003 lt!1027604)))))

(assert (=> d!839311 (validRegex!3779 (simplify!53 (reg!9375 r!17423)))))

(assert (=> d!839311 (= (matchR!3928 (simplify!53 (reg!9375 r!17423)) (_1!20003 lt!1027604)) lt!1027707)))

(declare-fun b!2930635 () Bool)

(declare-fun res!1209856 () Bool)

(declare-fun e!1848025 () Bool)

(assert (=> b!2930635 (=> res!1209856 e!1848025)))

(assert (=> b!2930635 (= res!1209856 (not (isEmpty!19036 (tail!4742 (_1!20003 lt!1027604)))))))

(declare-fun b!2930636 () Bool)

(declare-fun e!1848028 () Bool)

(declare-fun e!1848030 () Bool)

(assert (=> b!2930636 (= e!1848028 e!1848030)))

(declare-fun res!1209852 () Bool)

(assert (=> b!2930636 (=> (not res!1209852) (not e!1848030))))

(assert (=> b!2930636 (= res!1209852 (not lt!1027707))))

(declare-fun b!2930637 () Bool)

(assert (=> b!2930637 (= e!1848025 (not (= (head!6516 (_1!20003 lt!1027604)) (c!478466 (simplify!53 (reg!9375 r!17423))))))))

(declare-fun b!2930638 () Bool)

(declare-fun call!192341 () Bool)

(assert (=> b!2930638 (= e!1848026 (= lt!1027707 call!192341))))

(declare-fun b!2930639 () Bool)

(declare-fun res!1209851 () Bool)

(declare-fun e!1848027 () Bool)

(assert (=> b!2930639 (=> (not res!1209851) (not e!1848027))))

(assert (=> b!2930639 (= res!1209851 (isEmpty!19036 (tail!4742 (_1!20003 lt!1027604))))))

(declare-fun b!2930640 () Bool)

(assert (=> b!2930640 (= e!1848027 (= (head!6516 (_1!20003 lt!1027604)) (c!478466 (simplify!53 (reg!9375 r!17423)))))))

(declare-fun b!2930641 () Bool)

(assert (=> b!2930641 (= e!1848031 (nullable!2846 (simplify!53 (reg!9375 r!17423))))))

(declare-fun b!2930642 () Bool)

(declare-fun res!1209853 () Bool)

(assert (=> b!2930642 (=> res!1209853 e!1848028)))

(assert (=> b!2930642 (= res!1209853 (not (is-ElementMatch!9046 (simplify!53 (reg!9375 r!17423)))))))

(assert (=> b!2930642 (= e!1848029 e!1848028)))

(declare-fun b!2930643 () Bool)

(assert (=> b!2930643 (= e!1848031 (matchR!3928 (derivativeStep!2457 (simplify!53 (reg!9375 r!17423)) (head!6516 (_1!20003 lt!1027604))) (tail!4742 (_1!20003 lt!1027604))))))

(declare-fun bm!192336 () Bool)

(assert (=> bm!192336 (= call!192341 (isEmpty!19036 (_1!20003 lt!1027604)))))

(declare-fun b!2930644 () Bool)

(declare-fun res!1209857 () Bool)

(assert (=> b!2930644 (=> res!1209857 e!1848028)))

(assert (=> b!2930644 (= res!1209857 e!1848027)))

(declare-fun res!1209850 () Bool)

(assert (=> b!2930644 (=> (not res!1209850) (not e!1848027))))

(assert (=> b!2930644 (= res!1209850 lt!1027707)))

(declare-fun b!2930645 () Bool)

(declare-fun res!1209854 () Bool)

(assert (=> b!2930645 (=> (not res!1209854) (not e!1848027))))

(assert (=> b!2930645 (= res!1209854 (not call!192341))))

(declare-fun b!2930646 () Bool)

(assert (=> b!2930646 (= e!1848030 e!1848025)))

(declare-fun res!1209855 () Bool)

(assert (=> b!2930646 (=> res!1209855 e!1848025)))

(assert (=> b!2930646 (= res!1209855 call!192341)))

(assert (= (and d!839311 c!478589) b!2930641))

(assert (= (and d!839311 (not c!478589)) b!2930643))

(assert (= (and d!839311 c!478588) b!2930638))

(assert (= (and d!839311 (not c!478588)) b!2930633))

(assert (= (and b!2930633 c!478590) b!2930634))

(assert (= (and b!2930633 (not c!478590)) b!2930642))

(assert (= (and b!2930642 (not res!1209853)) b!2930644))

(assert (= (and b!2930644 res!1209850) b!2930645))

(assert (= (and b!2930645 res!1209854) b!2930639))

(assert (= (and b!2930639 res!1209851) b!2930640))

(assert (= (and b!2930644 (not res!1209857)) b!2930636))

(assert (= (and b!2930636 res!1209852) b!2930646))

(assert (= (and b!2930646 (not res!1209855)) b!2930635))

(assert (= (and b!2930635 (not res!1209856)) b!2930637))

(assert (= (or b!2930638 b!2930645 b!2930646) bm!192336))

(assert (=> d!839311 m!3320627))

(assert (=> d!839311 m!3320643))

(declare-fun m!3320895 () Bool)

(assert (=> d!839311 m!3320895))

(assert (=> bm!192336 m!3320627))

(assert (=> b!2930635 m!3320799))

(assert (=> b!2930635 m!3320799))

(assert (=> b!2930635 m!3320801))

(assert (=> b!2930641 m!3320643))

(declare-fun m!3320897 () Bool)

(assert (=> b!2930641 m!3320897))

(assert (=> b!2930639 m!3320799))

(assert (=> b!2930639 m!3320799))

(assert (=> b!2930639 m!3320801))

(assert (=> b!2930637 m!3320805))

(assert (=> b!2930640 m!3320805))

(assert (=> b!2930643 m!3320805))

(assert (=> b!2930643 m!3320643))

(assert (=> b!2930643 m!3320805))

(declare-fun m!3320899 () Bool)

(assert (=> b!2930643 m!3320899))

(assert (=> b!2930643 m!3320799))

(assert (=> b!2930643 m!3320899))

(assert (=> b!2930643 m!3320799))

(declare-fun m!3320901 () Bool)

(assert (=> b!2930643 m!3320901))

(assert (=> b!2930118 d!839311))

(declare-fun d!839315 () Bool)

(declare-fun lt!1027709 () Int)

(assert (=> d!839315 (>= lt!1027709 0)))

(declare-fun e!1848032 () Int)

(assert (=> d!839315 (= lt!1027709 e!1848032)))

(declare-fun c!478591 () Bool)

(assert (=> d!839315 (= c!478591 (is-Nil!34787 s!11993))))

(assert (=> d!839315 (= (size!26442 s!11993) lt!1027709)))

(declare-fun b!2930647 () Bool)

(assert (=> b!2930647 (= e!1848032 0)))

(declare-fun b!2930648 () Bool)

(assert (=> b!2930648 (= e!1848032 (+ 1 (size!26442 (t!233976 s!11993))))))

(assert (= (and d!839315 c!478591) b!2930647))

(assert (= (and d!839315 (not c!478591)) b!2930648))

(declare-fun m!3320903 () Bool)

(assert (=> b!2930648 m!3320903))

(assert (=> b!2930118 d!839315))

(declare-fun d!839317 () Bool)

(assert (=> d!839317 (= (matchR!3928 (reg!9375 r!17423) (_1!20003 lt!1027604)) (matchR!3928 (simplify!53 (reg!9375 r!17423)) (_1!20003 lt!1027604)))))

(declare-fun lt!1027712 () Unit!48431)

(declare-fun choose!17315 (Regex!9046 List!34911) Unit!48431)

(assert (=> d!839317 (= lt!1027712 (choose!17315 (reg!9375 r!17423) (_1!20003 lt!1027604)))))

(assert (=> d!839317 (validRegex!3779 (reg!9375 r!17423))))

(assert (=> d!839317 (= (lemmaSimplifySound!49 (reg!9375 r!17423) (_1!20003 lt!1027604)) lt!1027712)))

(declare-fun bs!525209 () Bool)

(assert (= bs!525209 d!839317))

(assert (=> bs!525209 m!3320643))

(assert (=> bs!525209 m!3320647))

(assert (=> bs!525209 m!3320643))

(declare-fun m!3320905 () Bool)

(assert (=> bs!525209 m!3320905))

(assert (=> bs!525209 m!3320625))

(assert (=> bs!525209 m!3320631))

(assert (=> b!2930118 d!839317))

(declare-fun b!2930659 () Bool)

(declare-fun e!1848035 () Bool)

(assert (=> b!2930659 (= e!1848035 tp_is_empty!15655)))

(assert (=> b!2930115 (= tp!939210 e!1848035)))

(declare-fun b!2930661 () Bool)

(declare-fun tp!939246 () Bool)

(assert (=> b!2930661 (= e!1848035 tp!939246)))

(declare-fun b!2930660 () Bool)

(declare-fun tp!939248 () Bool)

(declare-fun tp!939245 () Bool)

(assert (=> b!2930660 (= e!1848035 (and tp!939248 tp!939245))))

(declare-fun b!2930662 () Bool)

(declare-fun tp!939247 () Bool)

(declare-fun tp!939244 () Bool)

(assert (=> b!2930662 (= e!1848035 (and tp!939247 tp!939244))))

(assert (= (and b!2930115 (is-ElementMatch!9046 (regOne!18605 r!17423))) b!2930659))

(assert (= (and b!2930115 (is-Concat!14367 (regOne!18605 r!17423))) b!2930660))

(assert (= (and b!2930115 (is-Star!9046 (regOne!18605 r!17423))) b!2930661))

(assert (= (and b!2930115 (is-Union!9046 (regOne!18605 r!17423))) b!2930662))

(declare-fun b!2930663 () Bool)

(declare-fun e!1848036 () Bool)

(assert (=> b!2930663 (= e!1848036 tp_is_empty!15655)))

(assert (=> b!2930115 (= tp!939212 e!1848036)))

(declare-fun b!2930665 () Bool)

(declare-fun tp!939251 () Bool)

(assert (=> b!2930665 (= e!1848036 tp!939251)))

(declare-fun b!2930664 () Bool)

(declare-fun tp!939253 () Bool)

(declare-fun tp!939250 () Bool)

(assert (=> b!2930664 (= e!1848036 (and tp!939253 tp!939250))))

(declare-fun b!2930666 () Bool)

(declare-fun tp!939252 () Bool)

(declare-fun tp!939249 () Bool)

(assert (=> b!2930666 (= e!1848036 (and tp!939252 tp!939249))))

(assert (= (and b!2930115 (is-ElementMatch!9046 (regTwo!18605 r!17423))) b!2930663))

(assert (= (and b!2930115 (is-Concat!14367 (regTwo!18605 r!17423))) b!2930664))

(assert (= (and b!2930115 (is-Star!9046 (regTwo!18605 r!17423))) b!2930665))

(assert (= (and b!2930115 (is-Union!9046 (regTwo!18605 r!17423))) b!2930666))

(declare-fun b!2930671 () Bool)

(declare-fun e!1848039 () Bool)

(declare-fun tp!939256 () Bool)

(assert (=> b!2930671 (= e!1848039 (and tp_is_empty!15655 tp!939256))))

(assert (=> b!2930108 (= tp!939214 e!1848039)))

(assert (= (and b!2930108 (is-Cons!34787 (t!233976 s!11993))) b!2930671))

(declare-fun b!2930672 () Bool)

(declare-fun e!1848040 () Bool)

(assert (=> b!2930672 (= e!1848040 tp_is_empty!15655)))

(assert (=> b!2930116 (= tp!939213 e!1848040)))

(declare-fun b!2930674 () Bool)

(declare-fun tp!939259 () Bool)

(assert (=> b!2930674 (= e!1848040 tp!939259)))

(declare-fun b!2930673 () Bool)

(declare-fun tp!939261 () Bool)

(declare-fun tp!939258 () Bool)

(assert (=> b!2930673 (= e!1848040 (and tp!939261 tp!939258))))

(declare-fun b!2930675 () Bool)

(declare-fun tp!939260 () Bool)

(declare-fun tp!939257 () Bool)

(assert (=> b!2930675 (= e!1848040 (and tp!939260 tp!939257))))

(assert (= (and b!2930116 (is-ElementMatch!9046 (regOne!18604 r!17423))) b!2930672))

(assert (= (and b!2930116 (is-Concat!14367 (regOne!18604 r!17423))) b!2930673))

(assert (= (and b!2930116 (is-Star!9046 (regOne!18604 r!17423))) b!2930674))

(assert (= (and b!2930116 (is-Union!9046 (regOne!18604 r!17423))) b!2930675))

(declare-fun b!2930676 () Bool)

(declare-fun e!1848041 () Bool)

(assert (=> b!2930676 (= e!1848041 tp_is_empty!15655)))

(assert (=> b!2930116 (= tp!939211 e!1848041)))

(declare-fun b!2930678 () Bool)

(declare-fun tp!939264 () Bool)

(assert (=> b!2930678 (= e!1848041 tp!939264)))

(declare-fun b!2930677 () Bool)

(declare-fun tp!939266 () Bool)

(declare-fun tp!939263 () Bool)

(assert (=> b!2930677 (= e!1848041 (and tp!939266 tp!939263))))

(declare-fun b!2930679 () Bool)

(declare-fun tp!939265 () Bool)

(declare-fun tp!939262 () Bool)

(assert (=> b!2930679 (= e!1848041 (and tp!939265 tp!939262))))

(assert (= (and b!2930116 (is-ElementMatch!9046 (regTwo!18604 r!17423))) b!2930676))

(assert (= (and b!2930116 (is-Concat!14367 (regTwo!18604 r!17423))) b!2930677))

(assert (= (and b!2930116 (is-Star!9046 (regTwo!18604 r!17423))) b!2930678))

(assert (= (and b!2930116 (is-Union!9046 (regTwo!18604 r!17423))) b!2930679))

(declare-fun b!2930680 () Bool)

(declare-fun e!1848042 () Bool)

(assert (=> b!2930680 (= e!1848042 tp_is_empty!15655)))

(assert (=> b!2930122 (= tp!939215 e!1848042)))

(declare-fun b!2930682 () Bool)

(declare-fun tp!939269 () Bool)

(assert (=> b!2930682 (= e!1848042 tp!939269)))

(declare-fun b!2930681 () Bool)

(declare-fun tp!939271 () Bool)

(declare-fun tp!939268 () Bool)

(assert (=> b!2930681 (= e!1848042 (and tp!939271 tp!939268))))

(declare-fun b!2930683 () Bool)

(declare-fun tp!939270 () Bool)

(declare-fun tp!939267 () Bool)

(assert (=> b!2930683 (= e!1848042 (and tp!939270 tp!939267))))

(assert (= (and b!2930122 (is-ElementMatch!9046 (reg!9375 r!17423))) b!2930680))

(assert (= (and b!2930122 (is-Concat!14367 (reg!9375 r!17423))) b!2930681))

(assert (= (and b!2930122 (is-Star!9046 (reg!9375 r!17423))) b!2930682))

(assert (= (and b!2930122 (is-Union!9046 (reg!9375 r!17423))) b!2930683))

(push 1)

(assert (not b!2930522))

(assert (not b!2930403))

(assert (not b!2930662))

(assert (not b!2930666))

(assert (not b!2930683))

(assert (not d!839257))

(assert (not b!2930338))

(assert (not bm!192307))

(assert (not d!839263))

(assert (not b!2930671))

(assert (not b!2930661))

(assert (not b!2930660))

(assert (not b!2930280))

(assert (not d!839275))

(assert (not b!2930648))

(assert (not b!2930640))

(assert (not b!2930279))

(assert (not bm!192302))

(assert (not b!2930482))

(assert (not b!2930335))

(assert (not d!839305))

(assert (not d!839261))

(assert (not d!839271))

(assert (not b!2930277))

(assert tp_is_empty!15655)

(assert (not b!2930635))

(assert (not b!2930486))

(assert (not b!2930637))

(assert (not d!839289))

(assert (not b!2930673))

(assert (not b!2930675))

(assert (not d!839279))

(assert (not b!2930399))

(assert (not b!2930532))

(assert (not bm!192305))

(assert (not bm!192304))

(assert (not bm!192285))

(assert (not b!2930484))

(assert (not b!2930395))

(assert (not bm!192330))

(assert (not b!2930401))

(assert (not b!2930641))

(assert (not b!2930397))

(assert (not bm!192280))

(assert (not bm!192336))

(assert (not b!2930506))

(assert (not b!2930490))

(assert (not b!2930487))

(assert (not b!2930448))

(assert (not b!2930643))

(assert (not b!2930664))

(assert (not b!2930678))

(assert (not b!2930275))

(assert (not d!839291))

(assert (not b!2930281))

(assert (not b!2930523))

(assert (not b!2930628))

(assert (not b!2930340))

(assert (not b!2930454))

(assert (not bm!192334))

(assert (not b!2930677))

(assert (not d!839281))

(assert (not b!2930488))

(assert (not b!2930400))

(assert (not bm!192335))

(assert (not b!2930639))

(assert (not b!2930214))

(assert (not b!2930283))

(assert (not b!2930341))

(assert (not bm!192329))

(assert (not b!2930679))

(assert (not b!2930339))

(assert (not d!839297))

(assert (not b!2930334))

(assert (not b!2930682))

(assert (not b!2930530))

(assert (not b!2930665))

(assert (not d!839259))

(assert (not bm!192303))

(assert (not d!839311))

(assert (not b!2930681))

(assert (not b!2930674))

(assert (not b!2930629))

(assert (not bm!192332))

(assert (not bm!192278))

(assert (not d!839317))

(assert (not bm!192297))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

