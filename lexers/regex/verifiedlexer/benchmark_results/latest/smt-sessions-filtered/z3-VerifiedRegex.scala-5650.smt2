; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282250 () Bool)

(assert start!282250)

(declare-fun res!1198006 () Bool)

(declare-fun e!1830394 () Bool)

(assert (=> start!282250 (=> (not res!1198006) (not e!1830394))))

(declare-datatypes ((C!17892 0))(
  ( (C!17893 (val!10980 Int)) )
))
(declare-datatypes ((Regex!8855 0))(
  ( (ElementMatch!8855 (c!471756 C!17892)) (Concat!14176 (regOne!18222 Regex!8855) (regTwo!18222 Regex!8855)) (EmptyExpr!8855) (Star!8855 (reg!9184 Regex!8855)) (EmptyLang!8855) (Union!8855 (regOne!18223 Regex!8855) (regTwo!18223 Regex!8855)) )
))
(declare-fun r!23079 () Regex!8855)

(declare-fun validRegex!3628 (Regex!8855) Bool)

(assert (=> start!282250 (= res!1198006 (validRegex!3628 r!23079))))

(assert (=> start!282250 e!1830394))

(declare-fun e!1830391 () Bool)

(assert (=> start!282250 e!1830391))

(declare-fun b!2897537 () Bool)

(declare-fun tp!930029 () Bool)

(declare-fun tp!930028 () Bool)

(assert (=> b!2897537 (= e!1830391 (and tp!930029 tp!930028))))

(declare-fun b!2897538 () Bool)

(declare-fun tp!930027 () Bool)

(declare-fun tp!930025 () Bool)

(assert (=> b!2897538 (= e!1830391 (and tp!930027 tp!930025))))

(declare-fun b!2897539 () Bool)

(declare-fun tp!930026 () Bool)

(assert (=> b!2897539 (= e!1830391 tp!930026)))

(declare-fun b!2897540 () Bool)

(declare-fun res!1198007 () Bool)

(assert (=> b!2897540 (=> (not res!1198007) (not e!1830394))))

(declare-datatypes ((List!34656 0))(
  ( (Nil!34532) (Cons!34532 (h!39952 C!17892) (t!233699 List!34656)) )
))
(declare-datatypes ((Option!6528 0))(
  ( (None!6527) (Some!6527 (v!34653 List!34656)) )
))
(declare-fun isDefined!5092 (Option!6528) Bool)

(declare-fun getLanguageWitness!562 (Regex!8855) Option!6528)

(assert (=> b!2897540 (= res!1198007 (isDefined!5092 (getLanguageWitness!562 r!23079)))))

(declare-fun b!2897541 () Bool)

(declare-fun e!1830393 () Bool)

(declare-fun lt!1021762 () Option!6528)

(assert (=> b!2897541 (= e!1830393 (isDefined!5092 lt!1021762))))

(declare-fun b!2897542 () Bool)

(declare-fun e!1830395 () Bool)

(assert (=> b!2897542 (= e!1830395 (not e!1830393))))

(declare-fun res!1198003 () Bool)

(assert (=> b!2897542 (=> res!1198003 e!1830393)))

(assert (=> b!2897542 (= res!1198003 (not (validRegex!3628 (regTwo!18222 r!23079))))))

(declare-fun lt!1021764 () Option!6528)

(declare-fun matchR!3813 (Regex!8855 List!34656) Bool)

(declare-fun get!10473 (Option!6528) List!34656)

(assert (=> b!2897542 (matchR!3813 (regOne!18222 r!23079) (get!10473 lt!1021764))))

(declare-datatypes ((Unit!48115 0))(
  ( (Unit!48116) )
))
(declare-fun lt!1021763 () Unit!48115)

(declare-fun lemmaGetWitnessMatches!112 (Regex!8855) Unit!48115)

(assert (=> b!2897542 (= lt!1021763 (lemmaGetWitnessMatches!112 (regOne!18222 r!23079)))))

(declare-fun b!2897543 () Bool)

(declare-fun res!1198004 () Bool)

(assert (=> b!2897543 (=> (not res!1198004) (not e!1830394))))

(get-info :version)

(assert (=> b!2897543 (= res!1198004 (and (not ((_ is EmptyExpr!8855) r!23079)) (not ((_ is EmptyLang!8855) r!23079)) (not ((_ is ElementMatch!8855) r!23079)) (not ((_ is Star!8855) r!23079)) (not ((_ is Union!8855) r!23079))))))

(declare-fun b!2897544 () Bool)

(declare-fun e!1830392 () Bool)

(assert (=> b!2897544 (= e!1830392 e!1830395)))

(declare-fun res!1198002 () Bool)

(assert (=> b!2897544 (=> (not res!1198002) (not e!1830395))))

(assert (=> b!2897544 (= res!1198002 ((_ is Some!6527) lt!1021762))))

(assert (=> b!2897544 (= lt!1021762 (getLanguageWitness!562 (regTwo!18222 r!23079)))))

(declare-fun b!2897545 () Bool)

(declare-fun tp_is_empty!15297 () Bool)

(assert (=> b!2897545 (= e!1830391 tp_is_empty!15297)))

(declare-fun b!2897546 () Bool)

(assert (=> b!2897546 (= e!1830394 e!1830392)))

(declare-fun res!1198005 () Bool)

(assert (=> b!2897546 (=> (not res!1198005) (not e!1830392))))

(assert (=> b!2897546 (= res!1198005 ((_ is Some!6527) lt!1021764))))

(assert (=> b!2897546 (= lt!1021764 (getLanguageWitness!562 (regOne!18222 r!23079)))))

(assert (= (and start!282250 res!1198006) b!2897540))

(assert (= (and b!2897540 res!1198007) b!2897543))

(assert (= (and b!2897543 res!1198004) b!2897546))

(assert (= (and b!2897546 res!1198005) b!2897544))

(assert (= (and b!2897544 res!1198002) b!2897542))

(assert (= (and b!2897542 (not res!1198003)) b!2897541))

(assert (= (and start!282250 ((_ is ElementMatch!8855) r!23079)) b!2897545))

(assert (= (and start!282250 ((_ is Concat!14176) r!23079)) b!2897537))

(assert (= (and start!282250 ((_ is Star!8855) r!23079)) b!2897539))

(assert (= (and start!282250 ((_ is Union!8855) r!23079)) b!2897538))

(declare-fun m!3304687 () Bool)

(assert (=> b!2897544 m!3304687))

(declare-fun m!3304689 () Bool)

(assert (=> b!2897546 m!3304689))

(declare-fun m!3304691 () Bool)

(assert (=> start!282250 m!3304691))

(declare-fun m!3304693 () Bool)

(assert (=> b!2897542 m!3304693))

(declare-fun m!3304695 () Bool)

(assert (=> b!2897542 m!3304695))

(assert (=> b!2897542 m!3304695))

(declare-fun m!3304697 () Bool)

(assert (=> b!2897542 m!3304697))

(declare-fun m!3304699 () Bool)

(assert (=> b!2897542 m!3304699))

(declare-fun m!3304701 () Bool)

(assert (=> b!2897540 m!3304701))

(assert (=> b!2897540 m!3304701))

(declare-fun m!3304703 () Bool)

(assert (=> b!2897540 m!3304703))

(declare-fun m!3304705 () Bool)

(assert (=> b!2897541 m!3304705))

(check-sat (not b!2897544) (not b!2897541) (not b!2897538) (not b!2897539) tp_is_empty!15297 (not start!282250) (not b!2897540) (not b!2897546) (not b!2897537) (not b!2897542))
(check-sat)
(get-model)

(declare-fun b!2897612 () Bool)

(declare-fun e!1830428 () Option!6528)

(assert (=> b!2897612 (= e!1830428 (Some!6527 (Cons!34532 (c!471756 (regTwo!18222 r!23079)) Nil!34532)))))

(declare-fun bm!188588 () Bool)

(declare-fun call!188594 () Option!6528)

(declare-fun c!471796 () Bool)

(assert (=> bm!188588 (= call!188594 (getLanguageWitness!562 (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(declare-fun b!2897613 () Bool)

(declare-fun e!1830430 () Option!6528)

(declare-fun e!1830434 () Option!6528)

(assert (=> b!2897613 (= e!1830430 e!1830434)))

(declare-fun lt!1021778 () Option!6528)

(assert (=> b!2897613 (= lt!1021778 call!188594)))

(declare-fun c!471790 () Bool)

(assert (=> b!2897613 (= c!471790 ((_ is Some!6527) lt!1021778))))

(declare-fun b!2897614 () Bool)

(declare-fun e!1830429 () Option!6528)

(declare-fun lt!1021777 () Option!6528)

(declare-fun ++!8252 (List!34656 List!34656) List!34656)

(assert (=> b!2897614 (= e!1830429 (Some!6527 (++!8252 (v!34653 lt!1021778) (v!34653 lt!1021777))))))

(declare-fun b!2897615 () Bool)

(declare-fun e!1830431 () Option!6528)

(assert (=> b!2897615 (= e!1830428 e!1830431)))

(declare-fun c!471792 () Bool)

(assert (=> b!2897615 (= c!471792 ((_ is Star!8855) (regTwo!18222 r!23079)))))

(declare-fun b!2897616 () Bool)

(declare-fun e!1830433 () Option!6528)

(assert (=> b!2897616 (= e!1830433 call!188594)))

(declare-fun bm!188589 () Bool)

(declare-fun call!188593 () Option!6528)

(assert (=> bm!188589 (= call!188593 (getLanguageWitness!562 (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))

(declare-fun b!2897617 () Bool)

(assert (=> b!2897617 (= c!471796 ((_ is Union!8855) (regTwo!18222 r!23079)))))

(assert (=> b!2897617 (= e!1830431 e!1830430)))

(declare-fun b!2897618 () Bool)

(declare-fun c!471794 () Bool)

(assert (=> b!2897618 (= c!471794 ((_ is Some!6527) lt!1021777))))

(assert (=> b!2897618 (= lt!1021777 call!188593)))

(assert (=> b!2897618 (= e!1830434 e!1830429)))

(declare-fun b!2897611 () Bool)

(declare-fun e!1830435 () Option!6528)

(assert (=> b!2897611 (= e!1830435 (Some!6527 Nil!34532))))

(declare-fun d!835027 () Bool)

(declare-fun c!471789 () Bool)

(assert (=> d!835027 (= c!471789 ((_ is EmptyExpr!8855) (regTwo!18222 r!23079)))))

(assert (=> d!835027 (= (getLanguageWitness!562 (regTwo!18222 r!23079)) e!1830435)))

(declare-fun b!2897619 () Bool)

(assert (=> b!2897619 (= e!1830434 None!6527)))

(declare-fun b!2897620 () Bool)

(assert (=> b!2897620 (= e!1830430 e!1830433)))

(declare-fun lt!1021779 () Option!6528)

(assert (=> b!2897620 (= lt!1021779 call!188593)))

(declare-fun c!471791 () Bool)

(assert (=> b!2897620 (= c!471791 ((_ is Some!6527) lt!1021779))))

(declare-fun b!2897621 () Bool)

(declare-fun e!1830432 () Option!6528)

(assert (=> b!2897621 (= e!1830432 None!6527)))

(declare-fun b!2897622 () Bool)

(assert (=> b!2897622 (= e!1830435 e!1830432)))

(declare-fun c!471795 () Bool)

(assert (=> b!2897622 (= c!471795 ((_ is EmptyLang!8855) (regTwo!18222 r!23079)))))

(declare-fun b!2897623 () Bool)

(assert (=> b!2897623 (= e!1830433 lt!1021779)))

(declare-fun b!2897624 () Bool)

(assert (=> b!2897624 (= e!1830429 None!6527)))

(declare-fun b!2897625 () Bool)

(assert (=> b!2897625 (= e!1830431 (Some!6527 Nil!34532))))

(declare-fun b!2897626 () Bool)

(declare-fun c!471793 () Bool)

(assert (=> b!2897626 (= c!471793 ((_ is ElementMatch!8855) (regTwo!18222 r!23079)))))

(assert (=> b!2897626 (= e!1830432 e!1830428)))

(assert (= (and d!835027 c!471789) b!2897611))

(assert (= (and d!835027 (not c!471789)) b!2897622))

(assert (= (and b!2897622 c!471795) b!2897621))

(assert (= (and b!2897622 (not c!471795)) b!2897626))

(assert (= (and b!2897626 c!471793) b!2897612))

(assert (= (and b!2897626 (not c!471793)) b!2897615))

(assert (= (and b!2897615 c!471792) b!2897625))

(assert (= (and b!2897615 (not c!471792)) b!2897617))

(assert (= (and b!2897617 c!471796) b!2897620))

(assert (= (and b!2897617 (not c!471796)) b!2897613))

(assert (= (and b!2897620 c!471791) b!2897623))

(assert (= (and b!2897620 (not c!471791)) b!2897616))

(assert (= (and b!2897613 c!471790) b!2897618))

(assert (= (and b!2897613 (not c!471790)) b!2897619))

(assert (= (and b!2897618 c!471794) b!2897614))

(assert (= (and b!2897618 (not c!471794)) b!2897624))

(assert (= (or b!2897616 b!2897613) bm!188588))

(assert (= (or b!2897620 b!2897618) bm!188589))

(declare-fun m!3304707 () Bool)

(assert (=> bm!188588 m!3304707))

(declare-fun m!3304709 () Bool)

(assert (=> b!2897614 m!3304709))

(declare-fun m!3304711 () Bool)

(assert (=> bm!188589 m!3304711))

(assert (=> b!2897544 d!835027))

(declare-fun b!2897681 () Bool)

(declare-fun e!1830469 () Bool)

(declare-fun call!188606 () Bool)

(assert (=> b!2897681 (= e!1830469 call!188606)))

(declare-fun b!2897682 () Bool)

(declare-fun e!1830474 () Bool)

(declare-fun call!188607 () Bool)

(assert (=> b!2897682 (= e!1830474 call!188607)))

(declare-fun b!2897683 () Bool)

(declare-fun e!1830472 () Bool)

(declare-fun e!1830470 () Bool)

(assert (=> b!2897683 (= e!1830472 e!1830470)))

(declare-fun res!1198021 () Bool)

(assert (=> b!2897683 (=> (not res!1198021) (not e!1830470))))

(declare-fun call!188605 () Bool)

(assert (=> b!2897683 (= res!1198021 call!188605)))

(declare-fun b!2897684 () Bool)

(declare-fun e!1830468 () Bool)

(declare-fun e!1830471 () Bool)

(assert (=> b!2897684 (= e!1830468 e!1830471)))

(declare-fun c!471818 () Bool)

(assert (=> b!2897684 (= c!471818 ((_ is Star!8855) r!23079))))

(declare-fun b!2897685 () Bool)

(declare-fun e!1830473 () Bool)

(assert (=> b!2897685 (= e!1830471 e!1830473)))

(declare-fun c!471817 () Bool)

(assert (=> b!2897685 (= c!471817 ((_ is Union!8855) r!23079))))

(declare-fun bm!188600 () Bool)

(assert (=> bm!188600 (= call!188605 (validRegex!3628 (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))))))

(declare-fun d!835031 () Bool)

(declare-fun res!1198022 () Bool)

(assert (=> d!835031 (=> res!1198022 e!1830468)))

(assert (=> d!835031 (= res!1198022 ((_ is ElementMatch!8855) r!23079))))

(assert (=> d!835031 (= (validRegex!3628 r!23079) e!1830468)))

(declare-fun b!2897686 () Bool)

(declare-fun res!1198024 () Bool)

(assert (=> b!2897686 (=> (not res!1198024) (not e!1830474))))

(assert (=> b!2897686 (= res!1198024 call!188605)))

(assert (=> b!2897686 (= e!1830473 e!1830474)))

(declare-fun bm!188601 () Bool)

(assert (=> bm!188601 (= call!188607 call!188606)))

(declare-fun b!2897687 () Bool)

(assert (=> b!2897687 (= e!1830471 e!1830469)))

(declare-fun res!1198020 () Bool)

(declare-fun nullable!2754 (Regex!8855) Bool)

(assert (=> b!2897687 (= res!1198020 (not (nullable!2754 (reg!9184 r!23079))))))

(assert (=> b!2897687 (=> (not res!1198020) (not e!1830469))))

(declare-fun b!2897688 () Bool)

(assert (=> b!2897688 (= e!1830470 call!188607)))

(declare-fun bm!188602 () Bool)

(assert (=> bm!188602 (= call!188606 (validRegex!3628 (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))))))

(declare-fun b!2897690 () Bool)

(declare-fun res!1198023 () Bool)

(assert (=> b!2897690 (=> res!1198023 e!1830472)))

(assert (=> b!2897690 (= res!1198023 (not ((_ is Concat!14176) r!23079)))))

(assert (=> b!2897690 (= e!1830473 e!1830472)))

(assert (= (and d!835031 (not res!1198022)) b!2897684))

(assert (= (and b!2897684 c!471818) b!2897687))

(assert (= (and b!2897684 (not c!471818)) b!2897685))

(assert (= (and b!2897687 res!1198020) b!2897681))

(assert (= (and b!2897685 c!471817) b!2897686))

(assert (= (and b!2897685 (not c!471817)) b!2897690))

(assert (= (and b!2897686 res!1198024) b!2897682))

(assert (= (and b!2897690 (not res!1198023)) b!2897683))

(assert (= (and b!2897683 res!1198021) b!2897688))

(assert (= (or b!2897682 b!2897688) bm!188601))

(assert (= (or b!2897686 b!2897683) bm!188600))

(assert (= (or b!2897681 bm!188601) bm!188602))

(declare-fun m!3304725 () Bool)

(assert (=> bm!188600 m!3304725))

(declare-fun m!3304727 () Bool)

(assert (=> b!2897687 m!3304727))

(declare-fun m!3304729 () Bool)

(assert (=> bm!188602 m!3304729))

(assert (=> start!282250 d!835031))

(declare-fun b!2897704 () Bool)

(declare-fun e!1830488 () Bool)

(declare-fun call!188613 () Bool)

(assert (=> b!2897704 (= e!1830488 call!188613)))

(declare-fun b!2897705 () Bool)

(declare-fun e!1830493 () Bool)

(declare-fun call!188614 () Bool)

(assert (=> b!2897705 (= e!1830493 call!188614)))

(declare-fun b!2897706 () Bool)

(declare-fun e!1830491 () Bool)

(declare-fun e!1830489 () Bool)

(assert (=> b!2897706 (= e!1830491 e!1830489)))

(declare-fun res!1198034 () Bool)

(assert (=> b!2897706 (=> (not res!1198034) (not e!1830489))))

(declare-fun call!188612 () Bool)

(assert (=> b!2897706 (= res!1198034 call!188612)))

(declare-fun b!2897707 () Bool)

(declare-fun e!1830487 () Bool)

(declare-fun e!1830490 () Bool)

(assert (=> b!2897707 (= e!1830487 e!1830490)))

(declare-fun c!471824 () Bool)

(assert (=> b!2897707 (= c!471824 ((_ is Star!8855) (regTwo!18222 r!23079)))))

(declare-fun b!2897708 () Bool)

(declare-fun e!1830492 () Bool)

(assert (=> b!2897708 (= e!1830490 e!1830492)))

(declare-fun c!471823 () Bool)

(assert (=> b!2897708 (= c!471823 ((_ is Union!8855) (regTwo!18222 r!23079)))))

(declare-fun bm!188605 () Bool)

(assert (=> bm!188605 (= call!188612 (validRegex!3628 (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(declare-fun d!835037 () Bool)

(declare-fun res!1198035 () Bool)

(assert (=> d!835037 (=> res!1198035 e!1830487)))

(assert (=> d!835037 (= res!1198035 ((_ is ElementMatch!8855) (regTwo!18222 r!23079)))))

(assert (=> d!835037 (= (validRegex!3628 (regTwo!18222 r!23079)) e!1830487)))

(declare-fun b!2897709 () Bool)

(declare-fun res!1198037 () Bool)

(assert (=> b!2897709 (=> (not res!1198037) (not e!1830493))))

(assert (=> b!2897709 (= res!1198037 call!188612)))

(assert (=> b!2897709 (= e!1830492 e!1830493)))

(declare-fun bm!188606 () Bool)

(assert (=> bm!188606 (= call!188614 call!188613)))

(declare-fun b!2897710 () Bool)

(assert (=> b!2897710 (= e!1830490 e!1830488)))

(declare-fun res!1198033 () Bool)

(assert (=> b!2897710 (= res!1198033 (not (nullable!2754 (reg!9184 (regTwo!18222 r!23079)))))))

(assert (=> b!2897710 (=> (not res!1198033) (not e!1830488))))

(declare-fun b!2897711 () Bool)

(assert (=> b!2897711 (= e!1830489 call!188614)))

(declare-fun bm!188608 () Bool)

(assert (=> bm!188608 (= call!188613 (validRegex!3628 (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))))))

(declare-fun b!2897712 () Bool)

(declare-fun res!1198036 () Bool)

(assert (=> b!2897712 (=> res!1198036 e!1830491)))

(assert (=> b!2897712 (= res!1198036 (not ((_ is Concat!14176) (regTwo!18222 r!23079))))))

(assert (=> b!2897712 (= e!1830492 e!1830491)))

(assert (= (and d!835037 (not res!1198035)) b!2897707))

(assert (= (and b!2897707 c!471824) b!2897710))

(assert (= (and b!2897707 (not c!471824)) b!2897708))

(assert (= (and b!2897710 res!1198033) b!2897704))

(assert (= (and b!2897708 c!471823) b!2897709))

(assert (= (and b!2897708 (not c!471823)) b!2897712))

(assert (= (and b!2897709 res!1198037) b!2897705))

(assert (= (and b!2897712 (not res!1198036)) b!2897706))

(assert (= (and b!2897706 res!1198034) b!2897711))

(assert (= (or b!2897705 b!2897711) bm!188606))

(assert (= (or b!2897709 b!2897706) bm!188605))

(assert (= (or b!2897704 bm!188606) bm!188608))

(declare-fun m!3304731 () Bool)

(assert (=> bm!188605 m!3304731))

(declare-fun m!3304733 () Bool)

(assert (=> b!2897710 m!3304733))

(declare-fun m!3304735 () Bool)

(assert (=> bm!188608 m!3304735))

(assert (=> b!2897542 d!835037))

(declare-fun b!2897775 () Bool)

(declare-fun e!1830536 () Bool)

(declare-fun e!1830534 () Bool)

(assert (=> b!2897775 (= e!1830536 e!1830534)))

(declare-fun c!471844 () Bool)

(assert (=> b!2897775 (= c!471844 ((_ is EmptyLang!8855) (regOne!18222 r!23079)))))

(declare-fun b!2897776 () Bool)

(declare-fun res!1198068 () Bool)

(declare-fun e!1830530 () Bool)

(assert (=> b!2897776 (=> (not res!1198068) (not e!1830530))))

(declare-fun call!188627 () Bool)

(assert (=> b!2897776 (= res!1198068 (not call!188627))))

(declare-fun d!835039 () Bool)

(assert (=> d!835039 e!1830536))

(declare-fun c!471843 () Bool)

(assert (=> d!835039 (= c!471843 ((_ is EmptyExpr!8855) (regOne!18222 r!23079)))))

(declare-fun lt!1021791 () Bool)

(declare-fun e!1830531 () Bool)

(assert (=> d!835039 (= lt!1021791 e!1830531)))

(declare-fun c!471845 () Bool)

(declare-fun isEmpty!18840 (List!34656) Bool)

(assert (=> d!835039 (= c!471845 (isEmpty!18840 (get!10473 lt!1021764)))))

(assert (=> d!835039 (validRegex!3628 (regOne!18222 r!23079))))

(assert (=> d!835039 (= (matchR!3813 (regOne!18222 r!23079) (get!10473 lt!1021764)) lt!1021791)))

(declare-fun b!2897777 () Bool)

(declare-fun e!1830535 () Bool)

(declare-fun e!1830533 () Bool)

(assert (=> b!2897777 (= e!1830535 e!1830533)))

(declare-fun res!1198071 () Bool)

(assert (=> b!2897777 (=> res!1198071 e!1830533)))

(assert (=> b!2897777 (= res!1198071 call!188627)))

(declare-fun bm!188622 () Bool)

(assert (=> bm!188622 (= call!188627 (isEmpty!18840 (get!10473 lt!1021764)))))

(declare-fun b!2897778 () Bool)

(assert (=> b!2897778 (= e!1830531 (nullable!2754 (regOne!18222 r!23079)))))

(declare-fun b!2897779 () Bool)

(declare-fun res!1198065 () Bool)

(declare-fun e!1830532 () Bool)

(assert (=> b!2897779 (=> res!1198065 e!1830532)))

(assert (=> b!2897779 (= res!1198065 e!1830530)))

(declare-fun res!1198064 () Bool)

(assert (=> b!2897779 (=> (not res!1198064) (not e!1830530))))

(assert (=> b!2897779 (= res!1198064 lt!1021791)))

(declare-fun b!2897780 () Bool)

(declare-fun head!6396 (List!34656) C!17892)

(assert (=> b!2897780 (= e!1830530 (= (head!6396 (get!10473 lt!1021764)) (c!471756 (regOne!18222 r!23079))))))

(declare-fun b!2897781 () Bool)

(assert (=> b!2897781 (= e!1830536 (= lt!1021791 call!188627))))

(declare-fun b!2897782 () Bool)

(declare-fun res!1198067 () Bool)

(assert (=> b!2897782 (=> res!1198067 e!1830532)))

(assert (=> b!2897782 (= res!1198067 (not ((_ is ElementMatch!8855) (regOne!18222 r!23079))))))

(assert (=> b!2897782 (= e!1830534 e!1830532)))

(declare-fun b!2897783 () Bool)

(declare-fun derivativeStep!2367 (Regex!8855 C!17892) Regex!8855)

(declare-fun tail!4621 (List!34656) List!34656)

(assert (=> b!2897783 (= e!1830531 (matchR!3813 (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764))) (tail!4621 (get!10473 lt!1021764))))))

(declare-fun b!2897784 () Bool)

(assert (=> b!2897784 (= e!1830534 (not lt!1021791))))

(declare-fun b!2897785 () Bool)

(assert (=> b!2897785 (= e!1830533 (not (= (head!6396 (get!10473 lt!1021764)) (c!471756 (regOne!18222 r!23079)))))))

(declare-fun b!2897786 () Bool)

(assert (=> b!2897786 (= e!1830532 e!1830535)))

(declare-fun res!1198066 () Bool)

(assert (=> b!2897786 (=> (not res!1198066) (not e!1830535))))

(assert (=> b!2897786 (= res!1198066 (not lt!1021791))))

(declare-fun b!2897787 () Bool)

(declare-fun res!1198070 () Bool)

(assert (=> b!2897787 (=> (not res!1198070) (not e!1830530))))

(assert (=> b!2897787 (= res!1198070 (isEmpty!18840 (tail!4621 (get!10473 lt!1021764))))))

(declare-fun b!2897788 () Bool)

(declare-fun res!1198069 () Bool)

(assert (=> b!2897788 (=> res!1198069 e!1830533)))

(assert (=> b!2897788 (= res!1198069 (not (isEmpty!18840 (tail!4621 (get!10473 lt!1021764)))))))

(assert (= (and d!835039 c!471845) b!2897778))

(assert (= (and d!835039 (not c!471845)) b!2897783))

(assert (= (and d!835039 c!471843) b!2897781))

(assert (= (and d!835039 (not c!471843)) b!2897775))

(assert (= (and b!2897775 c!471844) b!2897784))

(assert (= (and b!2897775 (not c!471844)) b!2897782))

(assert (= (and b!2897782 (not res!1198067)) b!2897779))

(assert (= (and b!2897779 res!1198064) b!2897776))

(assert (= (and b!2897776 res!1198068) b!2897787))

(assert (= (and b!2897787 res!1198070) b!2897780))

(assert (= (and b!2897779 (not res!1198065)) b!2897786))

(assert (= (and b!2897786 res!1198066) b!2897777))

(assert (= (and b!2897777 (not res!1198071)) b!2897788))

(assert (= (and b!2897788 (not res!1198069)) b!2897785))

(assert (= (or b!2897781 b!2897776 b!2897777) bm!188622))

(assert (=> b!2897780 m!3304695))

(declare-fun m!3304759 () Bool)

(assert (=> b!2897780 m!3304759))

(assert (=> b!2897783 m!3304695))

(assert (=> b!2897783 m!3304759))

(assert (=> b!2897783 m!3304759))

(declare-fun m!3304761 () Bool)

(assert (=> b!2897783 m!3304761))

(assert (=> b!2897783 m!3304695))

(declare-fun m!3304763 () Bool)

(assert (=> b!2897783 m!3304763))

(assert (=> b!2897783 m!3304761))

(assert (=> b!2897783 m!3304763))

(declare-fun m!3304765 () Bool)

(assert (=> b!2897783 m!3304765))

(assert (=> bm!188622 m!3304695))

(declare-fun m!3304767 () Bool)

(assert (=> bm!188622 m!3304767))

(declare-fun m!3304769 () Bool)

(assert (=> b!2897778 m!3304769))

(assert (=> b!2897788 m!3304695))

(assert (=> b!2897788 m!3304763))

(assert (=> b!2897788 m!3304763))

(declare-fun m!3304771 () Bool)

(assert (=> b!2897788 m!3304771))

(assert (=> b!2897787 m!3304695))

(assert (=> b!2897787 m!3304763))

(assert (=> b!2897787 m!3304763))

(assert (=> b!2897787 m!3304771))

(assert (=> d!835039 m!3304695))

(assert (=> d!835039 m!3304767))

(declare-fun m!3304773 () Bool)

(assert (=> d!835039 m!3304773))

(assert (=> b!2897785 m!3304695))

(assert (=> b!2897785 m!3304759))

(assert (=> b!2897542 d!835039))

(declare-fun d!835051 () Bool)

(assert (=> d!835051 (= (get!10473 lt!1021764) (v!34653 lt!1021764))))

(assert (=> b!2897542 d!835051))

(declare-fun d!835053 () Bool)

(assert (=> d!835053 (matchR!3813 (regOne!18222 r!23079) (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079))))))

(declare-fun lt!1021796 () Unit!48115)

(declare-fun choose!17077 (Regex!8855) Unit!48115)

(assert (=> d!835053 (= lt!1021796 (choose!17077 (regOne!18222 r!23079)))))

(assert (=> d!835053 (validRegex!3628 (regOne!18222 r!23079))))

(assert (=> d!835053 (= (lemmaGetWitnessMatches!112 (regOne!18222 r!23079)) lt!1021796)))

(declare-fun bs!523969 () Bool)

(assert (= bs!523969 d!835053))

(assert (=> bs!523969 m!3304773))

(assert (=> bs!523969 m!3304689))

(declare-fun m!3304775 () Bool)

(assert (=> bs!523969 m!3304775))

(declare-fun m!3304777 () Bool)

(assert (=> bs!523969 m!3304777))

(declare-fun m!3304779 () Bool)

(assert (=> bs!523969 m!3304779))

(assert (=> bs!523969 m!3304689))

(assert (=> bs!523969 m!3304775))

(assert (=> b!2897542 d!835053))

(declare-fun d!835055 () Bool)

(declare-fun isEmpty!18842 (Option!6528) Bool)

(assert (=> d!835055 (= (isDefined!5092 lt!1021762) (not (isEmpty!18842 lt!1021762)))))

(declare-fun bs!523970 () Bool)

(assert (= bs!523970 d!835055))

(declare-fun m!3304781 () Bool)

(assert (=> bs!523970 m!3304781))

(assert (=> b!2897541 d!835055))

(declare-fun b!2897832 () Bool)

(declare-fun e!1830558 () Option!6528)

(assert (=> b!2897832 (= e!1830558 (Some!6527 (Cons!34532 (c!471756 (regOne!18222 r!23079)) Nil!34532)))))

(declare-fun bm!188626 () Bool)

(declare-fun call!188632 () Option!6528)

(declare-fun c!471862 () Bool)

(assert (=> bm!188626 (= call!188632 (getLanguageWitness!562 (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))

(declare-fun b!2897833 () Bool)

(declare-fun e!1830560 () Option!6528)

(declare-fun e!1830564 () Option!6528)

(assert (=> b!2897833 (= e!1830560 e!1830564)))

(declare-fun lt!1021799 () Option!6528)

(assert (=> b!2897833 (= lt!1021799 call!188632)))

(declare-fun c!471856 () Bool)

(assert (=> b!2897833 (= c!471856 ((_ is Some!6527) lt!1021799))))

(declare-fun b!2897834 () Bool)

(declare-fun e!1830559 () Option!6528)

(declare-fun lt!1021798 () Option!6528)

(assert (=> b!2897834 (= e!1830559 (Some!6527 (++!8252 (v!34653 lt!1021799) (v!34653 lt!1021798))))))

(declare-fun b!2897835 () Bool)

(declare-fun e!1830561 () Option!6528)

(assert (=> b!2897835 (= e!1830558 e!1830561)))

(declare-fun c!471858 () Bool)

(assert (=> b!2897835 (= c!471858 ((_ is Star!8855) (regOne!18222 r!23079)))))

(declare-fun b!2897836 () Bool)

(declare-fun e!1830563 () Option!6528)

(assert (=> b!2897836 (= e!1830563 call!188632)))

(declare-fun bm!188627 () Bool)

(declare-fun call!188631 () Option!6528)

(assert (=> bm!188627 (= call!188631 (getLanguageWitness!562 (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))))))

(declare-fun b!2897837 () Bool)

(assert (=> b!2897837 (= c!471862 ((_ is Union!8855) (regOne!18222 r!23079)))))

(assert (=> b!2897837 (= e!1830561 e!1830560)))

(declare-fun b!2897838 () Bool)

(declare-fun c!471860 () Bool)

(assert (=> b!2897838 (= c!471860 ((_ is Some!6527) lt!1021798))))

(assert (=> b!2897838 (= lt!1021798 call!188631)))

(assert (=> b!2897838 (= e!1830564 e!1830559)))

(declare-fun b!2897831 () Bool)

(declare-fun e!1830565 () Option!6528)

(assert (=> b!2897831 (= e!1830565 (Some!6527 Nil!34532))))

(declare-fun d!835057 () Bool)

(declare-fun c!471855 () Bool)

(assert (=> d!835057 (= c!471855 ((_ is EmptyExpr!8855) (regOne!18222 r!23079)))))

(assert (=> d!835057 (= (getLanguageWitness!562 (regOne!18222 r!23079)) e!1830565)))

(declare-fun b!2897839 () Bool)

(assert (=> b!2897839 (= e!1830564 None!6527)))

(declare-fun b!2897840 () Bool)

(assert (=> b!2897840 (= e!1830560 e!1830563)))

(declare-fun lt!1021800 () Option!6528)

(assert (=> b!2897840 (= lt!1021800 call!188631)))

(declare-fun c!471857 () Bool)

(assert (=> b!2897840 (= c!471857 ((_ is Some!6527) lt!1021800))))

(declare-fun b!2897841 () Bool)

(declare-fun e!1830562 () Option!6528)

(assert (=> b!2897841 (= e!1830562 None!6527)))

(declare-fun b!2897842 () Bool)

(assert (=> b!2897842 (= e!1830565 e!1830562)))

(declare-fun c!471861 () Bool)

(assert (=> b!2897842 (= c!471861 ((_ is EmptyLang!8855) (regOne!18222 r!23079)))))

(declare-fun b!2897843 () Bool)

(assert (=> b!2897843 (= e!1830563 lt!1021800)))

(declare-fun b!2897844 () Bool)

(assert (=> b!2897844 (= e!1830559 None!6527)))

(declare-fun b!2897845 () Bool)

(assert (=> b!2897845 (= e!1830561 (Some!6527 Nil!34532))))

(declare-fun b!2897846 () Bool)

(declare-fun c!471859 () Bool)

(assert (=> b!2897846 (= c!471859 ((_ is ElementMatch!8855) (regOne!18222 r!23079)))))

(assert (=> b!2897846 (= e!1830562 e!1830558)))

(assert (= (and d!835057 c!471855) b!2897831))

(assert (= (and d!835057 (not c!471855)) b!2897842))

(assert (= (and b!2897842 c!471861) b!2897841))

(assert (= (and b!2897842 (not c!471861)) b!2897846))

(assert (= (and b!2897846 c!471859) b!2897832))

(assert (= (and b!2897846 (not c!471859)) b!2897835))

(assert (= (and b!2897835 c!471858) b!2897845))

(assert (= (and b!2897835 (not c!471858)) b!2897837))

(assert (= (and b!2897837 c!471862) b!2897840))

(assert (= (and b!2897837 (not c!471862)) b!2897833))

(assert (= (and b!2897840 c!471857) b!2897843))

(assert (= (and b!2897840 (not c!471857)) b!2897836))

(assert (= (and b!2897833 c!471856) b!2897838))

(assert (= (and b!2897833 (not c!471856)) b!2897839))

(assert (= (and b!2897838 c!471860) b!2897834))

(assert (= (and b!2897838 (not c!471860)) b!2897844))

(assert (= (or b!2897836 b!2897833) bm!188626))

(assert (= (or b!2897840 b!2897838) bm!188627))

(declare-fun m!3304799 () Bool)

(assert (=> bm!188626 m!3304799))

(declare-fun m!3304801 () Bool)

(assert (=> b!2897834 m!3304801))

(declare-fun m!3304803 () Bool)

(assert (=> bm!188627 m!3304803))

(assert (=> b!2897546 d!835057))

(declare-fun d!835063 () Bool)

(assert (=> d!835063 (= (isDefined!5092 (getLanguageWitness!562 r!23079)) (not (isEmpty!18842 (getLanguageWitness!562 r!23079))))))

(declare-fun bs!523971 () Bool)

(assert (= bs!523971 d!835063))

(assert (=> bs!523971 m!3304701))

(declare-fun m!3304805 () Bool)

(assert (=> bs!523971 m!3304805))

(assert (=> b!2897540 d!835063))

(declare-fun b!2897848 () Bool)

(declare-fun e!1830566 () Option!6528)

(assert (=> b!2897848 (= e!1830566 (Some!6527 (Cons!34532 (c!471756 r!23079) Nil!34532)))))

(declare-fun bm!188628 () Bool)

(declare-fun call!188634 () Option!6528)

(declare-fun c!471870 () Bool)

(assert (=> bm!188628 (= call!188634 (getLanguageWitness!562 (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))))))

(declare-fun b!2897849 () Bool)

(declare-fun e!1830568 () Option!6528)

(declare-fun e!1830572 () Option!6528)

(assert (=> b!2897849 (= e!1830568 e!1830572)))

(declare-fun lt!1021802 () Option!6528)

(assert (=> b!2897849 (= lt!1021802 call!188634)))

(declare-fun c!471864 () Bool)

(assert (=> b!2897849 (= c!471864 ((_ is Some!6527) lt!1021802))))

(declare-fun b!2897850 () Bool)

(declare-fun e!1830567 () Option!6528)

(declare-fun lt!1021801 () Option!6528)

(assert (=> b!2897850 (= e!1830567 (Some!6527 (++!8252 (v!34653 lt!1021802) (v!34653 lt!1021801))))))

(declare-fun b!2897851 () Bool)

(declare-fun e!1830569 () Option!6528)

(assert (=> b!2897851 (= e!1830566 e!1830569)))

(declare-fun c!471866 () Bool)

(assert (=> b!2897851 (= c!471866 ((_ is Star!8855) r!23079))))

(declare-fun b!2897852 () Bool)

(declare-fun e!1830571 () Option!6528)

(assert (=> b!2897852 (= e!1830571 call!188634)))

(declare-fun bm!188629 () Bool)

(declare-fun call!188633 () Option!6528)

(assert (=> bm!188629 (= call!188633 (getLanguageWitness!562 (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))))))

(declare-fun b!2897853 () Bool)

(assert (=> b!2897853 (= c!471870 ((_ is Union!8855) r!23079))))

(assert (=> b!2897853 (= e!1830569 e!1830568)))

(declare-fun b!2897854 () Bool)

(declare-fun c!471868 () Bool)

(assert (=> b!2897854 (= c!471868 ((_ is Some!6527) lt!1021801))))

(assert (=> b!2897854 (= lt!1021801 call!188633)))

(assert (=> b!2897854 (= e!1830572 e!1830567)))

(declare-fun b!2897847 () Bool)

(declare-fun e!1830573 () Option!6528)

(assert (=> b!2897847 (= e!1830573 (Some!6527 Nil!34532))))

(declare-fun d!835065 () Bool)

(declare-fun c!471863 () Bool)

(assert (=> d!835065 (= c!471863 ((_ is EmptyExpr!8855) r!23079))))

(assert (=> d!835065 (= (getLanguageWitness!562 r!23079) e!1830573)))

(declare-fun b!2897855 () Bool)

(assert (=> b!2897855 (= e!1830572 None!6527)))

(declare-fun b!2897856 () Bool)

(assert (=> b!2897856 (= e!1830568 e!1830571)))

(declare-fun lt!1021803 () Option!6528)

(assert (=> b!2897856 (= lt!1021803 call!188633)))

(declare-fun c!471865 () Bool)

(assert (=> b!2897856 (= c!471865 ((_ is Some!6527) lt!1021803))))

(declare-fun b!2897857 () Bool)

(declare-fun e!1830570 () Option!6528)

(assert (=> b!2897857 (= e!1830570 None!6527)))

(declare-fun b!2897858 () Bool)

(assert (=> b!2897858 (= e!1830573 e!1830570)))

(declare-fun c!471869 () Bool)

(assert (=> b!2897858 (= c!471869 ((_ is EmptyLang!8855) r!23079))))

(declare-fun b!2897859 () Bool)

(assert (=> b!2897859 (= e!1830571 lt!1021803)))

(declare-fun b!2897860 () Bool)

(assert (=> b!2897860 (= e!1830567 None!6527)))

(declare-fun b!2897861 () Bool)

(assert (=> b!2897861 (= e!1830569 (Some!6527 Nil!34532))))

(declare-fun b!2897862 () Bool)

(declare-fun c!471867 () Bool)

(assert (=> b!2897862 (= c!471867 ((_ is ElementMatch!8855) r!23079))))

(assert (=> b!2897862 (= e!1830570 e!1830566)))

(assert (= (and d!835065 c!471863) b!2897847))

(assert (= (and d!835065 (not c!471863)) b!2897858))

(assert (= (and b!2897858 c!471869) b!2897857))

(assert (= (and b!2897858 (not c!471869)) b!2897862))

(assert (= (and b!2897862 c!471867) b!2897848))

(assert (= (and b!2897862 (not c!471867)) b!2897851))

(assert (= (and b!2897851 c!471866) b!2897861))

(assert (= (and b!2897851 (not c!471866)) b!2897853))

(assert (= (and b!2897853 c!471870) b!2897856))

(assert (= (and b!2897853 (not c!471870)) b!2897849))

(assert (= (and b!2897856 c!471865) b!2897859))

(assert (= (and b!2897856 (not c!471865)) b!2897852))

(assert (= (and b!2897849 c!471864) b!2897854))

(assert (= (and b!2897849 (not c!471864)) b!2897855))

(assert (= (and b!2897854 c!471868) b!2897850))

(assert (= (and b!2897854 (not c!471868)) b!2897860))

(assert (= (or b!2897852 b!2897849) bm!188628))

(assert (= (or b!2897856 b!2897854) bm!188629))

(declare-fun m!3304807 () Bool)

(assert (=> bm!188628 m!3304807))

(declare-fun m!3304809 () Bool)

(assert (=> b!2897850 m!3304809))

(declare-fun m!3304811 () Bool)

(assert (=> bm!188629 m!3304811))

(assert (=> b!2897540 d!835065))

(declare-fun b!2897874 () Bool)

(declare-fun e!1830576 () Bool)

(declare-fun tp!930040 () Bool)

(declare-fun tp!930042 () Bool)

(assert (=> b!2897874 (= e!1830576 (and tp!930040 tp!930042))))

(declare-fun b!2897875 () Bool)

(declare-fun tp!930043 () Bool)

(assert (=> b!2897875 (= e!1830576 tp!930043)))

(declare-fun b!2897873 () Bool)

(assert (=> b!2897873 (= e!1830576 tp_is_empty!15297)))

(assert (=> b!2897539 (= tp!930026 e!1830576)))

(declare-fun b!2897876 () Bool)

(declare-fun tp!930041 () Bool)

(declare-fun tp!930044 () Bool)

(assert (=> b!2897876 (= e!1830576 (and tp!930041 tp!930044))))

(assert (= (and b!2897539 ((_ is ElementMatch!8855) (reg!9184 r!23079))) b!2897873))

(assert (= (and b!2897539 ((_ is Concat!14176) (reg!9184 r!23079))) b!2897874))

(assert (= (and b!2897539 ((_ is Star!8855) (reg!9184 r!23079))) b!2897875))

(assert (= (and b!2897539 ((_ is Union!8855) (reg!9184 r!23079))) b!2897876))

(declare-fun b!2897884 () Bool)

(declare-fun e!1830579 () Bool)

(declare-fun tp!930045 () Bool)

(declare-fun tp!930047 () Bool)

(assert (=> b!2897884 (= e!1830579 (and tp!930045 tp!930047))))

(declare-fun b!2897885 () Bool)

(declare-fun tp!930048 () Bool)

(assert (=> b!2897885 (= e!1830579 tp!930048)))

(declare-fun b!2897883 () Bool)

(assert (=> b!2897883 (= e!1830579 tp_is_empty!15297)))

(assert (=> b!2897538 (= tp!930027 e!1830579)))

(declare-fun b!2897886 () Bool)

(declare-fun tp!930046 () Bool)

(declare-fun tp!930049 () Bool)

(assert (=> b!2897886 (= e!1830579 (and tp!930046 tp!930049))))

(assert (= (and b!2897538 ((_ is ElementMatch!8855) (regOne!18223 r!23079))) b!2897883))

(assert (= (and b!2897538 ((_ is Concat!14176) (regOne!18223 r!23079))) b!2897884))

(assert (= (and b!2897538 ((_ is Star!8855) (regOne!18223 r!23079))) b!2897885))

(assert (= (and b!2897538 ((_ is Union!8855) (regOne!18223 r!23079))) b!2897886))

(declare-fun b!2897892 () Bool)

(declare-fun e!1830580 () Bool)

(declare-fun tp!930056 () Bool)

(declare-fun tp!930060 () Bool)

(assert (=> b!2897892 (= e!1830580 (and tp!930056 tp!930060))))

(declare-fun b!2897893 () Bool)

(declare-fun tp!930061 () Bool)

(assert (=> b!2897893 (= e!1830580 tp!930061)))

(declare-fun b!2897891 () Bool)

(assert (=> b!2897891 (= e!1830580 tp_is_empty!15297)))

(assert (=> b!2897538 (= tp!930025 e!1830580)))

(declare-fun b!2897894 () Bool)

(declare-fun tp!930059 () Bool)

(declare-fun tp!930062 () Bool)

(assert (=> b!2897894 (= e!1830580 (and tp!930059 tp!930062))))

(assert (= (and b!2897538 ((_ is ElementMatch!8855) (regTwo!18223 r!23079))) b!2897891))

(assert (= (and b!2897538 ((_ is Concat!14176) (regTwo!18223 r!23079))) b!2897892))

(assert (= (and b!2897538 ((_ is Star!8855) (regTwo!18223 r!23079))) b!2897893))

(assert (= (and b!2897538 ((_ is Union!8855) (regTwo!18223 r!23079))) b!2897894))

(declare-fun b!2897896 () Bool)

(declare-fun e!1830581 () Bool)

(declare-fun tp!930065 () Bool)

(declare-fun tp!930067 () Bool)

(assert (=> b!2897896 (= e!1830581 (and tp!930065 tp!930067))))

(declare-fun b!2897897 () Bool)

(declare-fun tp!930068 () Bool)

(assert (=> b!2897897 (= e!1830581 tp!930068)))

(declare-fun b!2897895 () Bool)

(assert (=> b!2897895 (= e!1830581 tp_is_empty!15297)))

(assert (=> b!2897537 (= tp!930029 e!1830581)))

(declare-fun b!2897898 () Bool)

(declare-fun tp!930066 () Bool)

(declare-fun tp!930069 () Bool)

(assert (=> b!2897898 (= e!1830581 (and tp!930066 tp!930069))))

(assert (= (and b!2897537 ((_ is ElementMatch!8855) (regOne!18222 r!23079))) b!2897895))

(assert (= (and b!2897537 ((_ is Concat!14176) (regOne!18222 r!23079))) b!2897896))

(assert (= (and b!2897537 ((_ is Star!8855) (regOne!18222 r!23079))) b!2897897))

(assert (= (and b!2897537 ((_ is Union!8855) (regOne!18222 r!23079))) b!2897898))

(declare-fun b!2897900 () Bool)

(declare-fun e!1830582 () Bool)

(declare-fun tp!930070 () Bool)

(declare-fun tp!930072 () Bool)

(assert (=> b!2897900 (= e!1830582 (and tp!930070 tp!930072))))

(declare-fun b!2897901 () Bool)

(declare-fun tp!930073 () Bool)

(assert (=> b!2897901 (= e!1830582 tp!930073)))

(declare-fun b!2897899 () Bool)

(assert (=> b!2897899 (= e!1830582 tp_is_empty!15297)))

(assert (=> b!2897537 (= tp!930028 e!1830582)))

(declare-fun b!2897902 () Bool)

(declare-fun tp!930071 () Bool)

(declare-fun tp!930074 () Bool)

(assert (=> b!2897902 (= e!1830582 (and tp!930071 tp!930074))))

(assert (= (and b!2897537 ((_ is ElementMatch!8855) (regTwo!18222 r!23079))) b!2897899))

(assert (= (and b!2897537 ((_ is Concat!14176) (regTwo!18222 r!23079))) b!2897900))

(assert (= (and b!2897537 ((_ is Star!8855) (regTwo!18222 r!23079))) b!2897901))

(assert (= (and b!2897537 ((_ is Union!8855) (regTwo!18222 r!23079))) b!2897902))

(check-sat (not bm!188628) (not bm!188605) (not b!2897874) (not b!2897778) (not b!2897687) (not b!2897884) (not bm!188626) (not b!2897875) (not bm!188622) (not b!2897710) (not b!2897788) (not bm!188602) (not b!2897901) (not b!2897885) (not b!2897785) (not b!2897783) (not bm!188627) (not bm!188588) (not b!2897894) (not d!835053) (not bm!188589) (not d!835039) (not b!2897780) (not b!2897896) (not d!835055) (not bm!188600) (not b!2897893) (not b!2897886) (not bm!188608) (not b!2897834) (not bm!188629) (not b!2897850) (not b!2897876) (not b!2897892) (not b!2897787) tp_is_empty!15297 (not b!2897897) (not d!835063) (not b!2897614) (not b!2897902) (not b!2897898) (not b!2897900))
(check-sat)
(get-model)

(declare-fun b!2897923 () Bool)

(declare-fun e!1830589 () Bool)

(declare-fun call!188636 () Bool)

(assert (=> b!2897923 (= e!1830589 call!188636)))

(declare-fun b!2897924 () Bool)

(declare-fun e!1830594 () Bool)

(declare-fun call!188637 () Bool)

(assert (=> b!2897924 (= e!1830594 call!188637)))

(declare-fun b!2897925 () Bool)

(declare-fun e!1830592 () Bool)

(declare-fun e!1830590 () Bool)

(assert (=> b!2897925 (= e!1830592 e!1830590)))

(declare-fun res!1198097 () Bool)

(assert (=> b!2897925 (=> (not res!1198097) (not e!1830590))))

(declare-fun call!188635 () Bool)

(assert (=> b!2897925 (= res!1198097 call!188635)))

(declare-fun b!2897926 () Bool)

(declare-fun e!1830588 () Bool)

(declare-fun e!1830591 () Bool)

(assert (=> b!2897926 (= e!1830588 e!1830591)))

(declare-fun c!471872 () Bool)

(assert (=> b!2897926 (= c!471872 ((_ is Star!8855) (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(declare-fun b!2897927 () Bool)

(declare-fun e!1830593 () Bool)

(assert (=> b!2897927 (= e!1830591 e!1830593)))

(declare-fun c!471871 () Bool)

(assert (=> b!2897927 (= c!471871 ((_ is Union!8855) (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(declare-fun bm!188630 () Bool)

(assert (=> bm!188630 (= call!188635 (validRegex!3628 (ite c!471871 (regOne!18223 (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))) (regOne!18222 (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))))

(declare-fun d!835067 () Bool)

(declare-fun res!1198098 () Bool)

(assert (=> d!835067 (=> res!1198098 e!1830588)))

(assert (=> d!835067 (= res!1198098 ((_ is ElementMatch!8855) (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(assert (=> d!835067 (= (validRegex!3628 (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))) e!1830588)))

(declare-fun b!2897928 () Bool)

(declare-fun res!1198100 () Bool)

(assert (=> b!2897928 (=> (not res!1198100) (not e!1830594))))

(assert (=> b!2897928 (= res!1198100 call!188635)))

(assert (=> b!2897928 (= e!1830593 e!1830594)))

(declare-fun bm!188631 () Bool)

(assert (=> bm!188631 (= call!188637 call!188636)))

(declare-fun b!2897929 () Bool)

(assert (=> b!2897929 (= e!1830591 e!1830589)))

(declare-fun res!1198096 () Bool)

(assert (=> b!2897929 (= res!1198096 (not (nullable!2754 (reg!9184 (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))))

(assert (=> b!2897929 (=> (not res!1198096) (not e!1830589))))

(declare-fun b!2897930 () Bool)

(assert (=> b!2897930 (= e!1830590 call!188637)))

(declare-fun bm!188632 () Bool)

(assert (=> bm!188632 (= call!188636 (validRegex!3628 (ite c!471872 (reg!9184 (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))) (ite c!471871 (regTwo!18223 (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))) (regTwo!18222 (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079))))))))))

(declare-fun b!2897931 () Bool)

(declare-fun res!1198099 () Bool)

(assert (=> b!2897931 (=> res!1198099 e!1830592)))

(assert (=> b!2897931 (= res!1198099 (not ((_ is Concat!14176) (ite c!471823 (regOne!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079))))))))

(assert (=> b!2897931 (= e!1830593 e!1830592)))

(assert (= (and d!835067 (not res!1198098)) b!2897926))

(assert (= (and b!2897926 c!471872) b!2897929))

(assert (= (and b!2897926 (not c!471872)) b!2897927))

(assert (= (and b!2897929 res!1198096) b!2897923))

(assert (= (and b!2897927 c!471871) b!2897928))

(assert (= (and b!2897927 (not c!471871)) b!2897931))

(assert (= (and b!2897928 res!1198100) b!2897924))

(assert (= (and b!2897931 (not res!1198099)) b!2897925))

(assert (= (and b!2897925 res!1198097) b!2897930))

(assert (= (or b!2897924 b!2897930) bm!188631))

(assert (= (or b!2897928 b!2897925) bm!188630))

(assert (= (or b!2897923 bm!188631) bm!188632))

(declare-fun m!3304819 () Bool)

(assert (=> bm!188630 m!3304819))

(declare-fun m!3304821 () Bool)

(assert (=> b!2897929 m!3304821))

(declare-fun m!3304823 () Bool)

(assert (=> bm!188632 m!3304823))

(assert (=> bm!188605 d!835067))

(declare-fun b!2897933 () Bool)

(declare-fun e!1830595 () Option!6528)

(assert (=> b!2897933 (= e!1830595 (Some!6527 (Cons!34532 (c!471756 (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))) Nil!34532)))))

(declare-fun call!188639 () Option!6528)

(declare-fun bm!188633 () Bool)

(declare-fun c!471880 () Bool)

(assert (=> bm!188633 (= call!188639 (getLanguageWitness!562 (ite c!471880 (regTwo!18223 (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))) (regOne!18222 (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))))

(declare-fun b!2897934 () Bool)

(declare-fun e!1830597 () Option!6528)

(declare-fun e!1830601 () Option!6528)

(assert (=> b!2897934 (= e!1830597 e!1830601)))

(declare-fun lt!1021808 () Option!6528)

(assert (=> b!2897934 (= lt!1021808 call!188639)))

(declare-fun c!471874 () Bool)

(assert (=> b!2897934 (= c!471874 ((_ is Some!6527) lt!1021808))))

(declare-fun b!2897935 () Bool)

(declare-fun e!1830596 () Option!6528)

(declare-fun lt!1021807 () Option!6528)

(assert (=> b!2897935 (= e!1830596 (Some!6527 (++!8252 (v!34653 lt!1021808) (v!34653 lt!1021807))))))

(declare-fun b!2897936 () Bool)

(declare-fun e!1830598 () Option!6528)

(assert (=> b!2897936 (= e!1830595 e!1830598)))

(declare-fun c!471876 () Bool)

(assert (=> b!2897936 (= c!471876 ((_ is Star!8855) (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))

(declare-fun b!2897937 () Bool)

(declare-fun e!1830600 () Option!6528)

(assert (=> b!2897937 (= e!1830600 call!188639)))

(declare-fun bm!188634 () Bool)

(declare-fun call!188638 () Option!6528)

(assert (=> bm!188634 (= call!188638 (getLanguageWitness!562 (ite c!471880 (regOne!18223 (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))) (regTwo!18222 (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))))

(declare-fun b!2897938 () Bool)

(assert (=> b!2897938 (= c!471880 ((_ is Union!8855) (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))

(assert (=> b!2897938 (= e!1830598 e!1830597)))

(declare-fun b!2897939 () Bool)

(declare-fun c!471878 () Bool)

(assert (=> b!2897939 (= c!471878 ((_ is Some!6527) lt!1021807))))

(assert (=> b!2897939 (= lt!1021807 call!188638)))

(assert (=> b!2897939 (= e!1830601 e!1830596)))

(declare-fun b!2897932 () Bool)

(declare-fun e!1830602 () Option!6528)

(assert (=> b!2897932 (= e!1830602 (Some!6527 Nil!34532))))

(declare-fun d!835069 () Bool)

(declare-fun c!471873 () Bool)

(assert (=> d!835069 (= c!471873 ((_ is EmptyExpr!8855) (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))

(assert (=> d!835069 (= (getLanguageWitness!562 (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))) e!1830602)))

(declare-fun b!2897940 () Bool)

(assert (=> b!2897940 (= e!1830601 None!6527)))

(declare-fun b!2897941 () Bool)

(assert (=> b!2897941 (= e!1830597 e!1830600)))

(declare-fun lt!1021809 () Option!6528)

(assert (=> b!2897941 (= lt!1021809 call!188638)))

(declare-fun c!471875 () Bool)

(assert (=> b!2897941 (= c!471875 ((_ is Some!6527) lt!1021809))))

(declare-fun b!2897942 () Bool)

(declare-fun e!1830599 () Option!6528)

(assert (=> b!2897942 (= e!1830599 None!6527)))

(declare-fun b!2897943 () Bool)

(assert (=> b!2897943 (= e!1830602 e!1830599)))

(declare-fun c!471879 () Bool)

(assert (=> b!2897943 (= c!471879 ((_ is EmptyLang!8855) (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))

(declare-fun b!2897944 () Bool)

(assert (=> b!2897944 (= e!1830600 lt!1021809)))

(declare-fun b!2897945 () Bool)

(assert (=> b!2897945 (= e!1830596 None!6527)))

(declare-fun b!2897946 () Bool)

(assert (=> b!2897946 (= e!1830598 (Some!6527 Nil!34532))))

(declare-fun b!2897947 () Bool)

(declare-fun c!471877 () Bool)

(assert (=> b!2897947 (= c!471877 ((_ is ElementMatch!8855) (ite c!471862 (regTwo!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))

(assert (=> b!2897947 (= e!1830599 e!1830595)))

(assert (= (and d!835069 c!471873) b!2897932))

(assert (= (and d!835069 (not c!471873)) b!2897943))

(assert (= (and b!2897943 c!471879) b!2897942))

(assert (= (and b!2897943 (not c!471879)) b!2897947))

(assert (= (and b!2897947 c!471877) b!2897933))

(assert (= (and b!2897947 (not c!471877)) b!2897936))

(assert (= (and b!2897936 c!471876) b!2897946))

(assert (= (and b!2897936 (not c!471876)) b!2897938))

(assert (= (and b!2897938 c!471880) b!2897941))

(assert (= (and b!2897938 (not c!471880)) b!2897934))

(assert (= (and b!2897941 c!471875) b!2897944))

(assert (= (and b!2897941 (not c!471875)) b!2897937))

(assert (= (and b!2897934 c!471874) b!2897939))

(assert (= (and b!2897934 (not c!471874)) b!2897940))

(assert (= (and b!2897939 c!471878) b!2897935))

(assert (= (and b!2897939 (not c!471878)) b!2897945))

(assert (= (or b!2897937 b!2897934) bm!188633))

(assert (= (or b!2897941 b!2897939) bm!188634))

(declare-fun m!3304825 () Bool)

(assert (=> bm!188633 m!3304825))

(declare-fun m!3304827 () Bool)

(assert (=> b!2897935 m!3304827))

(declare-fun m!3304829 () Bool)

(assert (=> bm!188634 m!3304829))

(assert (=> bm!188626 d!835069))

(declare-fun d!835071 () Bool)

(assert (=> d!835071 (= (head!6396 (get!10473 lt!1021764)) (h!39952 (get!10473 lt!1021764)))))

(assert (=> b!2897780 d!835071))

(assert (=> b!2897785 d!835071))

(declare-fun d!835073 () Bool)

(declare-fun nullableFct!840 (Regex!8855) Bool)

(assert (=> d!835073 (= (nullable!2754 (reg!9184 (regTwo!18222 r!23079))) (nullableFct!840 (reg!9184 (regTwo!18222 r!23079))))))

(declare-fun bs!523973 () Bool)

(assert (= bs!523973 d!835073))

(declare-fun m!3304831 () Bool)

(assert (=> bs!523973 m!3304831))

(assert (=> b!2897710 d!835073))

(declare-fun b!2897957 () Bool)

(declare-fun e!1830608 () List!34656)

(assert (=> b!2897957 (= e!1830608 (Cons!34532 (h!39952 (v!34653 lt!1021799)) (++!8252 (t!233699 (v!34653 lt!1021799)) (v!34653 lt!1021798))))))

(declare-fun b!2897959 () Bool)

(declare-fun e!1830607 () Bool)

(declare-fun lt!1021812 () List!34656)

(assert (=> b!2897959 (= e!1830607 (or (not (= (v!34653 lt!1021798) Nil!34532)) (= lt!1021812 (v!34653 lt!1021799))))))

(declare-fun b!2897956 () Bool)

(assert (=> b!2897956 (= e!1830608 (v!34653 lt!1021798))))

(declare-fun b!2897958 () Bool)

(declare-fun res!1198105 () Bool)

(assert (=> b!2897958 (=> (not res!1198105) (not e!1830607))))

(declare-fun size!26350 (List!34656) Int)

(assert (=> b!2897958 (= res!1198105 (= (size!26350 lt!1021812) (+ (size!26350 (v!34653 lt!1021799)) (size!26350 (v!34653 lt!1021798)))))))

(declare-fun d!835075 () Bool)

(assert (=> d!835075 e!1830607))

(declare-fun res!1198106 () Bool)

(assert (=> d!835075 (=> (not res!1198106) (not e!1830607))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4731 (List!34656) (InoxSet C!17892))

(assert (=> d!835075 (= res!1198106 (= (content!4731 lt!1021812) ((_ map or) (content!4731 (v!34653 lt!1021799)) (content!4731 (v!34653 lt!1021798)))))))

(assert (=> d!835075 (= lt!1021812 e!1830608)))

(declare-fun c!471883 () Bool)

(assert (=> d!835075 (= c!471883 ((_ is Nil!34532) (v!34653 lt!1021799)))))

(assert (=> d!835075 (= (++!8252 (v!34653 lt!1021799) (v!34653 lt!1021798)) lt!1021812)))

(assert (= (and d!835075 c!471883) b!2897956))

(assert (= (and d!835075 (not c!471883)) b!2897957))

(assert (= (and d!835075 res!1198106) b!2897958))

(assert (= (and b!2897958 res!1198105) b!2897959))

(declare-fun m!3304833 () Bool)

(assert (=> b!2897957 m!3304833))

(declare-fun m!3304835 () Bool)

(assert (=> b!2897958 m!3304835))

(declare-fun m!3304837 () Bool)

(assert (=> b!2897958 m!3304837))

(declare-fun m!3304839 () Bool)

(assert (=> b!2897958 m!3304839))

(declare-fun m!3304841 () Bool)

(assert (=> d!835075 m!3304841))

(declare-fun m!3304843 () Bool)

(assert (=> d!835075 m!3304843))

(declare-fun m!3304845 () Bool)

(assert (=> d!835075 m!3304845))

(assert (=> b!2897834 d!835075))

(declare-fun b!2897960 () Bool)

(declare-fun e!1830615 () Bool)

(declare-fun e!1830613 () Bool)

(assert (=> b!2897960 (= e!1830615 e!1830613)))

(declare-fun c!471885 () Bool)

(assert (=> b!2897960 (= c!471885 ((_ is EmptyLang!8855) (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764)))))))

(declare-fun b!2897961 () Bool)

(declare-fun res!1198111 () Bool)

(declare-fun e!1830609 () Bool)

(assert (=> b!2897961 (=> (not res!1198111) (not e!1830609))))

(declare-fun call!188640 () Bool)

(assert (=> b!2897961 (= res!1198111 (not call!188640))))

(declare-fun d!835077 () Bool)

(assert (=> d!835077 e!1830615))

(declare-fun c!471884 () Bool)

(assert (=> d!835077 (= c!471884 ((_ is EmptyExpr!8855) (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764)))))))

(declare-fun lt!1021813 () Bool)

(declare-fun e!1830610 () Bool)

(assert (=> d!835077 (= lt!1021813 e!1830610)))

(declare-fun c!471886 () Bool)

(assert (=> d!835077 (= c!471886 (isEmpty!18840 (tail!4621 (get!10473 lt!1021764))))))

(assert (=> d!835077 (validRegex!3628 (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764))))))

(assert (=> d!835077 (= (matchR!3813 (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764))) (tail!4621 (get!10473 lt!1021764))) lt!1021813)))

(declare-fun b!2897962 () Bool)

(declare-fun e!1830614 () Bool)

(declare-fun e!1830612 () Bool)

(assert (=> b!2897962 (= e!1830614 e!1830612)))

(declare-fun res!1198114 () Bool)

(assert (=> b!2897962 (=> res!1198114 e!1830612)))

(assert (=> b!2897962 (= res!1198114 call!188640)))

(declare-fun bm!188635 () Bool)

(assert (=> bm!188635 (= call!188640 (isEmpty!18840 (tail!4621 (get!10473 lt!1021764))))))

(declare-fun b!2897963 () Bool)

(assert (=> b!2897963 (= e!1830610 (nullable!2754 (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764)))))))

(declare-fun b!2897964 () Bool)

(declare-fun res!1198108 () Bool)

(declare-fun e!1830611 () Bool)

(assert (=> b!2897964 (=> res!1198108 e!1830611)))

(assert (=> b!2897964 (= res!1198108 e!1830609)))

(declare-fun res!1198107 () Bool)

(assert (=> b!2897964 (=> (not res!1198107) (not e!1830609))))

(assert (=> b!2897964 (= res!1198107 lt!1021813)))

(declare-fun b!2897965 () Bool)

(assert (=> b!2897965 (= e!1830609 (= (head!6396 (tail!4621 (get!10473 lt!1021764))) (c!471756 (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764))))))))

(declare-fun b!2897966 () Bool)

(assert (=> b!2897966 (= e!1830615 (= lt!1021813 call!188640))))

(declare-fun b!2897967 () Bool)

(declare-fun res!1198110 () Bool)

(assert (=> b!2897967 (=> res!1198110 e!1830611)))

(assert (=> b!2897967 (= res!1198110 (not ((_ is ElementMatch!8855) (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764))))))))

(assert (=> b!2897967 (= e!1830613 e!1830611)))

(declare-fun b!2897968 () Bool)

(assert (=> b!2897968 (= e!1830610 (matchR!3813 (derivativeStep!2367 (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764))) (head!6396 (tail!4621 (get!10473 lt!1021764)))) (tail!4621 (tail!4621 (get!10473 lt!1021764)))))))

(declare-fun b!2897969 () Bool)

(assert (=> b!2897969 (= e!1830613 (not lt!1021813))))

(declare-fun b!2897970 () Bool)

(assert (=> b!2897970 (= e!1830612 (not (= (head!6396 (tail!4621 (get!10473 lt!1021764))) (c!471756 (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764)))))))))

(declare-fun b!2897971 () Bool)

(assert (=> b!2897971 (= e!1830611 e!1830614)))

(declare-fun res!1198109 () Bool)

(assert (=> b!2897971 (=> (not res!1198109) (not e!1830614))))

(assert (=> b!2897971 (= res!1198109 (not lt!1021813))))

(declare-fun b!2897972 () Bool)

(declare-fun res!1198113 () Bool)

(assert (=> b!2897972 (=> (not res!1198113) (not e!1830609))))

(assert (=> b!2897972 (= res!1198113 (isEmpty!18840 (tail!4621 (tail!4621 (get!10473 lt!1021764)))))))

(declare-fun b!2897973 () Bool)

(declare-fun res!1198112 () Bool)

(assert (=> b!2897973 (=> res!1198112 e!1830612)))

(assert (=> b!2897973 (= res!1198112 (not (isEmpty!18840 (tail!4621 (tail!4621 (get!10473 lt!1021764))))))))

(assert (= (and d!835077 c!471886) b!2897963))

(assert (= (and d!835077 (not c!471886)) b!2897968))

(assert (= (and d!835077 c!471884) b!2897966))

(assert (= (and d!835077 (not c!471884)) b!2897960))

(assert (= (and b!2897960 c!471885) b!2897969))

(assert (= (and b!2897960 (not c!471885)) b!2897967))

(assert (= (and b!2897967 (not res!1198110)) b!2897964))

(assert (= (and b!2897964 res!1198107) b!2897961))

(assert (= (and b!2897961 res!1198111) b!2897972))

(assert (= (and b!2897972 res!1198113) b!2897965))

(assert (= (and b!2897964 (not res!1198108)) b!2897971))

(assert (= (and b!2897971 res!1198109) b!2897962))

(assert (= (and b!2897962 (not res!1198114)) b!2897973))

(assert (= (and b!2897973 (not res!1198112)) b!2897970))

(assert (= (or b!2897966 b!2897961 b!2897962) bm!188635))

(assert (=> b!2897965 m!3304763))

(declare-fun m!3304847 () Bool)

(assert (=> b!2897965 m!3304847))

(assert (=> b!2897968 m!3304763))

(assert (=> b!2897968 m!3304847))

(assert (=> b!2897968 m!3304761))

(assert (=> b!2897968 m!3304847))

(declare-fun m!3304849 () Bool)

(assert (=> b!2897968 m!3304849))

(assert (=> b!2897968 m!3304763))

(declare-fun m!3304851 () Bool)

(assert (=> b!2897968 m!3304851))

(assert (=> b!2897968 m!3304849))

(assert (=> b!2897968 m!3304851))

(declare-fun m!3304853 () Bool)

(assert (=> b!2897968 m!3304853))

(assert (=> bm!188635 m!3304763))

(assert (=> bm!188635 m!3304771))

(assert (=> b!2897963 m!3304761))

(declare-fun m!3304855 () Bool)

(assert (=> b!2897963 m!3304855))

(assert (=> b!2897973 m!3304763))

(assert (=> b!2897973 m!3304851))

(assert (=> b!2897973 m!3304851))

(declare-fun m!3304857 () Bool)

(assert (=> b!2897973 m!3304857))

(assert (=> b!2897972 m!3304763))

(assert (=> b!2897972 m!3304851))

(assert (=> b!2897972 m!3304851))

(assert (=> b!2897972 m!3304857))

(assert (=> d!835077 m!3304763))

(assert (=> d!835077 m!3304771))

(assert (=> d!835077 m!3304761))

(declare-fun m!3304859 () Bool)

(assert (=> d!835077 m!3304859))

(assert (=> b!2897970 m!3304763))

(assert (=> b!2897970 m!3304847))

(assert (=> b!2897783 d!835077))

(declare-fun b!2897994 () Bool)

(declare-fun e!1830630 () Regex!8855)

(declare-fun call!188649 () Regex!8855)

(declare-fun call!188651 () Regex!8855)

(assert (=> b!2897994 (= e!1830630 (Union!8855 call!188649 call!188651))))

(declare-fun b!2897995 () Bool)

(declare-fun c!471899 () Bool)

(assert (=> b!2897995 (= c!471899 ((_ is Union!8855) (regOne!18222 r!23079)))))

(declare-fun e!1830629 () Regex!8855)

(assert (=> b!2897995 (= e!1830629 e!1830630)))

(declare-fun b!2897996 () Bool)

(declare-fun c!471897 () Bool)

(assert (=> b!2897996 (= c!471897 (nullable!2754 (regOne!18222 (regOne!18222 r!23079))))))

(declare-fun e!1830627 () Regex!8855)

(declare-fun e!1830628 () Regex!8855)

(assert (=> b!2897996 (= e!1830627 e!1830628)))

(declare-fun call!188650 () Regex!8855)

(declare-fun b!2897997 () Bool)

(assert (=> b!2897997 (= e!1830628 (Union!8855 (Concat!14176 call!188650 (regTwo!18222 (regOne!18222 r!23079))) call!188651))))

(declare-fun b!2897998 () Bool)

(declare-fun e!1830626 () Regex!8855)

(assert (=> b!2897998 (= e!1830626 e!1830629)))

(declare-fun c!471898 () Bool)

(assert (=> b!2897998 (= c!471898 ((_ is ElementMatch!8855) (regOne!18222 r!23079)))))

(declare-fun b!2897999 () Bool)

(assert (=> b!2897999 (= e!1830626 EmptyLang!8855)))

(declare-fun bm!188644 () Bool)

(declare-fun call!188652 () Regex!8855)

(assert (=> bm!188644 (= call!188652 call!188649)))

(declare-fun b!2898000 () Bool)

(assert (=> b!2898000 (= e!1830627 (Concat!14176 call!188652 (regOne!18222 r!23079)))))

(declare-fun c!471900 () Bool)

(declare-fun bm!188645 () Bool)

(assert (=> bm!188645 (= call!188649 (derivativeStep!2367 (ite c!471899 (regOne!18223 (regOne!18222 r!23079)) (ite c!471900 (reg!9184 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))) (head!6396 (get!10473 lt!1021764))))))

(declare-fun b!2898001 () Bool)

(assert (=> b!2898001 (= e!1830628 (Union!8855 (Concat!14176 call!188650 (regTwo!18222 (regOne!18222 r!23079))) EmptyLang!8855))))

(declare-fun bm!188646 () Bool)

(assert (=> bm!188646 (= call!188651 (derivativeStep!2367 (ite c!471899 (regTwo!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079))) (head!6396 (get!10473 lt!1021764))))))

(declare-fun bm!188647 () Bool)

(assert (=> bm!188647 (= call!188650 call!188652)))

(declare-fun b!2898003 () Bool)

(assert (=> b!2898003 (= e!1830630 e!1830627)))

(assert (=> b!2898003 (= c!471900 ((_ is Star!8855) (regOne!18222 r!23079)))))

(declare-fun b!2898002 () Bool)

(assert (=> b!2898002 (= e!1830629 (ite (= (head!6396 (get!10473 lt!1021764)) (c!471756 (regOne!18222 r!23079))) EmptyExpr!8855 EmptyLang!8855))))

(declare-fun d!835079 () Bool)

(declare-fun lt!1021816 () Regex!8855)

(assert (=> d!835079 (validRegex!3628 lt!1021816)))

(assert (=> d!835079 (= lt!1021816 e!1830626)))

(declare-fun c!471901 () Bool)

(assert (=> d!835079 (= c!471901 (or ((_ is EmptyExpr!8855) (regOne!18222 r!23079)) ((_ is EmptyLang!8855) (regOne!18222 r!23079))))))

(assert (=> d!835079 (validRegex!3628 (regOne!18222 r!23079))))

(assert (=> d!835079 (= (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 lt!1021764))) lt!1021816)))

(assert (= (and d!835079 c!471901) b!2897999))

(assert (= (and d!835079 (not c!471901)) b!2897998))

(assert (= (and b!2897998 c!471898) b!2898002))

(assert (= (and b!2897998 (not c!471898)) b!2897995))

(assert (= (and b!2897995 c!471899) b!2897994))

(assert (= (and b!2897995 (not c!471899)) b!2898003))

(assert (= (and b!2898003 c!471900) b!2898000))

(assert (= (and b!2898003 (not c!471900)) b!2897996))

(assert (= (and b!2897996 c!471897) b!2897997))

(assert (= (and b!2897996 (not c!471897)) b!2898001))

(assert (= (or b!2897997 b!2898001) bm!188647))

(assert (= (or b!2898000 bm!188647) bm!188644))

(assert (= (or b!2897994 bm!188644) bm!188645))

(assert (= (or b!2897994 b!2897997) bm!188646))

(declare-fun m!3304861 () Bool)

(assert (=> b!2897996 m!3304861))

(assert (=> bm!188645 m!3304759))

(declare-fun m!3304863 () Bool)

(assert (=> bm!188645 m!3304863))

(assert (=> bm!188646 m!3304759))

(declare-fun m!3304865 () Bool)

(assert (=> bm!188646 m!3304865))

(declare-fun m!3304867 () Bool)

(assert (=> d!835079 m!3304867))

(assert (=> d!835079 m!3304773))

(assert (=> b!2897783 d!835079))

(assert (=> b!2897783 d!835071))

(declare-fun d!835081 () Bool)

(assert (=> d!835081 (= (tail!4621 (get!10473 lt!1021764)) (t!233699 (get!10473 lt!1021764)))))

(assert (=> b!2897783 d!835081))

(declare-fun b!2898005 () Bool)

(declare-fun e!1830631 () Option!6528)

(assert (=> b!2898005 (= e!1830631 (Some!6527 (Cons!34532 (c!471756 (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))) Nil!34532)))))

(declare-fun call!188654 () Option!6528)

(declare-fun bm!188648 () Bool)

(declare-fun c!471909 () Bool)

(assert (=> bm!188648 (= call!188654 (getLanguageWitness!562 (ite c!471909 (regTwo!18223 (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))) (regOne!18222 (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))))

(declare-fun b!2898006 () Bool)

(declare-fun e!1830633 () Option!6528)

(declare-fun e!1830637 () Option!6528)

(assert (=> b!2898006 (= e!1830633 e!1830637)))

(declare-fun lt!1021818 () Option!6528)

(assert (=> b!2898006 (= lt!1021818 call!188654)))

(declare-fun c!471903 () Bool)

(assert (=> b!2898006 (= c!471903 ((_ is Some!6527) lt!1021818))))

(declare-fun b!2898007 () Bool)

(declare-fun e!1830632 () Option!6528)

(declare-fun lt!1021817 () Option!6528)

(assert (=> b!2898007 (= e!1830632 (Some!6527 (++!8252 (v!34653 lt!1021818) (v!34653 lt!1021817))))))

(declare-fun b!2898008 () Bool)

(declare-fun e!1830634 () Option!6528)

(assert (=> b!2898008 (= e!1830631 e!1830634)))

(declare-fun c!471905 () Bool)

(assert (=> b!2898008 (= c!471905 ((_ is Star!8855) (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(declare-fun b!2898009 () Bool)

(declare-fun e!1830636 () Option!6528)

(assert (=> b!2898009 (= e!1830636 call!188654)))

(declare-fun bm!188649 () Bool)

(declare-fun call!188653 () Option!6528)

(assert (=> bm!188649 (= call!188653 (getLanguageWitness!562 (ite c!471909 (regOne!18223 (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))) (regTwo!18222 (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))))

(declare-fun b!2898010 () Bool)

(assert (=> b!2898010 (= c!471909 ((_ is Union!8855) (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(assert (=> b!2898010 (= e!1830634 e!1830633)))

(declare-fun b!2898011 () Bool)

(declare-fun c!471907 () Bool)

(assert (=> b!2898011 (= c!471907 ((_ is Some!6527) lt!1021817))))

(assert (=> b!2898011 (= lt!1021817 call!188653)))

(assert (=> b!2898011 (= e!1830637 e!1830632)))

(declare-fun b!2898004 () Bool)

(declare-fun e!1830638 () Option!6528)

(assert (=> b!2898004 (= e!1830638 (Some!6527 Nil!34532))))

(declare-fun d!835083 () Bool)

(declare-fun c!471902 () Bool)

(assert (=> d!835083 (= c!471902 ((_ is EmptyExpr!8855) (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(assert (=> d!835083 (= (getLanguageWitness!562 (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))) e!1830638)))

(declare-fun b!2898012 () Bool)

(assert (=> b!2898012 (= e!1830637 None!6527)))

(declare-fun b!2898013 () Bool)

(assert (=> b!2898013 (= e!1830633 e!1830636)))

(declare-fun lt!1021819 () Option!6528)

(assert (=> b!2898013 (= lt!1021819 call!188653)))

(declare-fun c!471904 () Bool)

(assert (=> b!2898013 (= c!471904 ((_ is Some!6527) lt!1021819))))

(declare-fun b!2898014 () Bool)

(declare-fun e!1830635 () Option!6528)

(assert (=> b!2898014 (= e!1830635 None!6527)))

(declare-fun b!2898015 () Bool)

(assert (=> b!2898015 (= e!1830638 e!1830635)))

(declare-fun c!471908 () Bool)

(assert (=> b!2898015 (= c!471908 ((_ is EmptyLang!8855) (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(declare-fun b!2898016 () Bool)

(assert (=> b!2898016 (= e!1830636 lt!1021819)))

(declare-fun b!2898017 () Bool)

(assert (=> b!2898017 (= e!1830632 None!6527)))

(declare-fun b!2898018 () Bool)

(assert (=> b!2898018 (= e!1830634 (Some!6527 Nil!34532))))

(declare-fun b!2898019 () Bool)

(declare-fun c!471906 () Bool)

(assert (=> b!2898019 (= c!471906 ((_ is ElementMatch!8855) (ite c!471796 (regTwo!18223 (regTwo!18222 r!23079)) (regOne!18222 (regTwo!18222 r!23079)))))))

(assert (=> b!2898019 (= e!1830635 e!1830631)))

(assert (= (and d!835083 c!471902) b!2898004))

(assert (= (and d!835083 (not c!471902)) b!2898015))

(assert (= (and b!2898015 c!471908) b!2898014))

(assert (= (and b!2898015 (not c!471908)) b!2898019))

(assert (= (and b!2898019 c!471906) b!2898005))

(assert (= (and b!2898019 (not c!471906)) b!2898008))

(assert (= (and b!2898008 c!471905) b!2898018))

(assert (= (and b!2898008 (not c!471905)) b!2898010))

(assert (= (and b!2898010 c!471909) b!2898013))

(assert (= (and b!2898010 (not c!471909)) b!2898006))

(assert (= (and b!2898013 c!471904) b!2898016))

(assert (= (and b!2898013 (not c!471904)) b!2898009))

(assert (= (and b!2898006 c!471903) b!2898011))

(assert (= (and b!2898006 (not c!471903)) b!2898012))

(assert (= (and b!2898011 c!471907) b!2898007))

(assert (= (and b!2898011 (not c!471907)) b!2898017))

(assert (= (or b!2898009 b!2898006) bm!188648))

(assert (= (or b!2898013 b!2898011) bm!188649))

(declare-fun m!3304869 () Bool)

(assert (=> bm!188648 m!3304869))

(declare-fun m!3304871 () Bool)

(assert (=> b!2898007 m!3304871))

(declare-fun m!3304873 () Bool)

(assert (=> bm!188649 m!3304873))

(assert (=> bm!188588 d!835083))

(declare-fun b!2898020 () Bool)

(declare-fun e!1830640 () Bool)

(declare-fun call!188656 () Bool)

(assert (=> b!2898020 (= e!1830640 call!188656)))

(declare-fun b!2898021 () Bool)

(declare-fun e!1830645 () Bool)

(declare-fun call!188657 () Bool)

(assert (=> b!2898021 (= e!1830645 call!188657)))

(declare-fun b!2898022 () Bool)

(declare-fun e!1830643 () Bool)

(declare-fun e!1830641 () Bool)

(assert (=> b!2898022 (= e!1830643 e!1830641)))

(declare-fun res!1198116 () Bool)

(assert (=> b!2898022 (=> (not res!1198116) (not e!1830641))))

(declare-fun call!188655 () Bool)

(assert (=> b!2898022 (= res!1198116 call!188655)))

(declare-fun b!2898023 () Bool)

(declare-fun e!1830639 () Bool)

(declare-fun e!1830642 () Bool)

(assert (=> b!2898023 (= e!1830639 e!1830642)))

(declare-fun c!471911 () Bool)

(assert (=> b!2898023 (= c!471911 ((_ is Star!8855) (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))))))

(declare-fun b!2898024 () Bool)

(declare-fun e!1830644 () Bool)

(assert (=> b!2898024 (= e!1830642 e!1830644)))

(declare-fun c!471910 () Bool)

(assert (=> b!2898024 (= c!471910 ((_ is Union!8855) (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))))))

(declare-fun bm!188650 () Bool)

(assert (=> bm!188650 (= call!188655 (validRegex!3628 (ite c!471910 (regOne!18223 (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))) (regOne!18222 (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))))))))

(declare-fun d!835085 () Bool)

(declare-fun res!1198117 () Bool)

(assert (=> d!835085 (=> res!1198117 e!1830639)))

(assert (=> d!835085 (= res!1198117 ((_ is ElementMatch!8855) (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))))))

(assert (=> d!835085 (= (validRegex!3628 (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))) e!1830639)))

(declare-fun b!2898025 () Bool)

(declare-fun res!1198119 () Bool)

(assert (=> b!2898025 (=> (not res!1198119) (not e!1830645))))

(assert (=> b!2898025 (= res!1198119 call!188655)))

(assert (=> b!2898025 (= e!1830644 e!1830645)))

(declare-fun bm!188651 () Bool)

(assert (=> bm!188651 (= call!188657 call!188656)))

(declare-fun b!2898026 () Bool)

(assert (=> b!2898026 (= e!1830642 e!1830640)))

(declare-fun res!1198115 () Bool)

(assert (=> b!2898026 (= res!1198115 (not (nullable!2754 (reg!9184 (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))))))))

(assert (=> b!2898026 (=> (not res!1198115) (not e!1830640))))

(declare-fun b!2898027 () Bool)

(assert (=> b!2898027 (= e!1830641 call!188657)))

(declare-fun bm!188652 () Bool)

(assert (=> bm!188652 (= call!188656 (validRegex!3628 (ite c!471911 (reg!9184 (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))) (ite c!471910 (regTwo!18223 (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079))))) (regTwo!18222 (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))))))

(declare-fun b!2898028 () Bool)

(declare-fun res!1198118 () Bool)

(assert (=> b!2898028 (=> res!1198118 e!1830643)))

(assert (=> b!2898028 (= res!1198118 (not ((_ is Concat!14176) (ite c!471824 (reg!9184 (regTwo!18222 r!23079)) (ite c!471823 (regTwo!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))))

(assert (=> b!2898028 (= e!1830644 e!1830643)))

(assert (= (and d!835085 (not res!1198117)) b!2898023))

(assert (= (and b!2898023 c!471911) b!2898026))

(assert (= (and b!2898023 (not c!471911)) b!2898024))

(assert (= (and b!2898026 res!1198115) b!2898020))

(assert (= (and b!2898024 c!471910) b!2898025))

(assert (= (and b!2898024 (not c!471910)) b!2898028))

(assert (= (and b!2898025 res!1198119) b!2898021))

(assert (= (and b!2898028 (not res!1198118)) b!2898022))

(assert (= (and b!2898022 res!1198116) b!2898027))

(assert (= (or b!2898021 b!2898027) bm!188651))

(assert (= (or b!2898025 b!2898022) bm!188650))

(assert (= (or b!2898020 bm!188651) bm!188652))

(declare-fun m!3304875 () Bool)

(assert (=> bm!188650 m!3304875))

(declare-fun m!3304877 () Bool)

(assert (=> b!2898026 m!3304877))

(declare-fun m!3304879 () Bool)

(assert (=> bm!188652 m!3304879))

(assert (=> bm!188608 d!835085))

(declare-fun d!835087 () Bool)

(assert (=> d!835087 (= (isEmpty!18840 (tail!4621 (get!10473 lt!1021764))) ((_ is Nil!34532) (tail!4621 (get!10473 lt!1021764))))))

(assert (=> b!2897787 d!835087))

(assert (=> b!2897787 d!835081))

(declare-fun b!2898030 () Bool)

(declare-fun e!1830646 () Option!6528)

(assert (=> b!2898030 (= e!1830646 (Some!6527 (Cons!34532 (c!471756 (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))) Nil!34532)))))

(declare-fun c!471919 () Bool)

(declare-fun bm!188653 () Bool)

(declare-fun call!188659 () Option!6528)

(assert (=> bm!188653 (= call!188659 (getLanguageWitness!562 (ite c!471919 (regTwo!18223 (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))) (regOne!18222 (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))))))))

(declare-fun b!2898031 () Bool)

(declare-fun e!1830648 () Option!6528)

(declare-fun e!1830652 () Option!6528)

(assert (=> b!2898031 (= e!1830648 e!1830652)))

(declare-fun lt!1021821 () Option!6528)

(assert (=> b!2898031 (= lt!1021821 call!188659)))

(declare-fun c!471913 () Bool)

(assert (=> b!2898031 (= c!471913 ((_ is Some!6527) lt!1021821))))

(declare-fun b!2898032 () Bool)

(declare-fun e!1830647 () Option!6528)

(declare-fun lt!1021820 () Option!6528)

(assert (=> b!2898032 (= e!1830647 (Some!6527 (++!8252 (v!34653 lt!1021821) (v!34653 lt!1021820))))))

(declare-fun b!2898033 () Bool)

(declare-fun e!1830649 () Option!6528)

(assert (=> b!2898033 (= e!1830646 e!1830649)))

(declare-fun c!471915 () Bool)

(assert (=> b!2898033 (= c!471915 ((_ is Star!8855) (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))))))

(declare-fun b!2898034 () Bool)

(declare-fun e!1830651 () Option!6528)

(assert (=> b!2898034 (= e!1830651 call!188659)))

(declare-fun call!188658 () Option!6528)

(declare-fun bm!188654 () Bool)

(assert (=> bm!188654 (= call!188658 (getLanguageWitness!562 (ite c!471919 (regOne!18223 (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))) (regTwo!18222 (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))))))))

(declare-fun b!2898035 () Bool)

(assert (=> b!2898035 (= c!471919 ((_ is Union!8855) (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))))))

(assert (=> b!2898035 (= e!1830649 e!1830648)))

(declare-fun b!2898036 () Bool)

(declare-fun c!471917 () Bool)

(assert (=> b!2898036 (= c!471917 ((_ is Some!6527) lt!1021820))))

(assert (=> b!2898036 (= lt!1021820 call!188658)))

(assert (=> b!2898036 (= e!1830652 e!1830647)))

(declare-fun b!2898029 () Bool)

(declare-fun e!1830653 () Option!6528)

(assert (=> b!2898029 (= e!1830653 (Some!6527 Nil!34532))))

(declare-fun d!835089 () Bool)

(declare-fun c!471912 () Bool)

(assert (=> d!835089 (= c!471912 ((_ is EmptyExpr!8855) (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))))))

(assert (=> d!835089 (= (getLanguageWitness!562 (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))) e!1830653)))

(declare-fun b!2898037 () Bool)

(assert (=> b!2898037 (= e!1830652 None!6527)))

(declare-fun b!2898038 () Bool)

(assert (=> b!2898038 (= e!1830648 e!1830651)))

(declare-fun lt!1021822 () Option!6528)

(assert (=> b!2898038 (= lt!1021822 call!188658)))

(declare-fun c!471914 () Bool)

(assert (=> b!2898038 (= c!471914 ((_ is Some!6527) lt!1021822))))

(declare-fun b!2898039 () Bool)

(declare-fun e!1830650 () Option!6528)

(assert (=> b!2898039 (= e!1830650 None!6527)))

(declare-fun b!2898040 () Bool)

(assert (=> b!2898040 (= e!1830653 e!1830650)))

(declare-fun c!471918 () Bool)

(assert (=> b!2898040 (= c!471918 ((_ is EmptyLang!8855) (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))))))

(declare-fun b!2898041 () Bool)

(assert (=> b!2898041 (= e!1830651 lt!1021822)))

(declare-fun b!2898042 () Bool)

(assert (=> b!2898042 (= e!1830647 None!6527)))

(declare-fun b!2898043 () Bool)

(assert (=> b!2898043 (= e!1830649 (Some!6527 Nil!34532))))

(declare-fun b!2898044 () Bool)

(declare-fun c!471916 () Bool)

(assert (=> b!2898044 (= c!471916 ((_ is ElementMatch!8855) (ite c!471862 (regOne!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079)))))))

(assert (=> b!2898044 (= e!1830650 e!1830646)))

(assert (= (and d!835089 c!471912) b!2898029))

(assert (= (and d!835089 (not c!471912)) b!2898040))

(assert (= (and b!2898040 c!471918) b!2898039))

(assert (= (and b!2898040 (not c!471918)) b!2898044))

(assert (= (and b!2898044 c!471916) b!2898030))

(assert (= (and b!2898044 (not c!471916)) b!2898033))

(assert (= (and b!2898033 c!471915) b!2898043))

(assert (= (and b!2898033 (not c!471915)) b!2898035))

(assert (= (and b!2898035 c!471919) b!2898038))

(assert (= (and b!2898035 (not c!471919)) b!2898031))

(assert (= (and b!2898038 c!471914) b!2898041))

(assert (= (and b!2898038 (not c!471914)) b!2898034))

(assert (= (and b!2898031 c!471913) b!2898036))

(assert (= (and b!2898031 (not c!471913)) b!2898037))

(assert (= (and b!2898036 c!471917) b!2898032))

(assert (= (and b!2898036 (not c!471917)) b!2898042))

(assert (= (or b!2898034 b!2898031) bm!188653))

(assert (= (or b!2898038 b!2898036) bm!188654))

(declare-fun m!3304881 () Bool)

(assert (=> bm!188653 m!3304881))

(declare-fun m!3304883 () Bool)

(assert (=> b!2898032 m!3304883))

(declare-fun m!3304885 () Bool)

(assert (=> bm!188654 m!3304885))

(assert (=> bm!188627 d!835089))

(declare-fun b!2898046 () Bool)

(declare-fun e!1830654 () Option!6528)

(assert (=> b!2898046 (= e!1830654 (Some!6527 (Cons!34532 (c!471756 (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))) Nil!34532)))))

(declare-fun c!471927 () Bool)

(declare-fun bm!188655 () Bool)

(declare-fun call!188661 () Option!6528)

(assert (=> bm!188655 (= call!188661 (getLanguageWitness!562 (ite c!471927 (regTwo!18223 (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))) (regOne!18222 (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))))))))

(declare-fun b!2898047 () Bool)

(declare-fun e!1830656 () Option!6528)

(declare-fun e!1830660 () Option!6528)

(assert (=> b!2898047 (= e!1830656 e!1830660)))

(declare-fun lt!1021824 () Option!6528)

(assert (=> b!2898047 (= lt!1021824 call!188661)))

(declare-fun c!471921 () Bool)

(assert (=> b!2898047 (= c!471921 ((_ is Some!6527) lt!1021824))))

(declare-fun b!2898048 () Bool)

(declare-fun e!1830655 () Option!6528)

(declare-fun lt!1021823 () Option!6528)

(assert (=> b!2898048 (= e!1830655 (Some!6527 (++!8252 (v!34653 lt!1021824) (v!34653 lt!1021823))))))

(declare-fun b!2898049 () Bool)

(declare-fun e!1830657 () Option!6528)

(assert (=> b!2898049 (= e!1830654 e!1830657)))

(declare-fun c!471923 () Bool)

(assert (=> b!2898049 (= c!471923 ((_ is Star!8855) (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))))))

(declare-fun b!2898050 () Bool)

(declare-fun e!1830659 () Option!6528)

(assert (=> b!2898050 (= e!1830659 call!188661)))

(declare-fun bm!188656 () Bool)

(declare-fun call!188660 () Option!6528)

(assert (=> bm!188656 (= call!188660 (getLanguageWitness!562 (ite c!471927 (regOne!18223 (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))) (regTwo!18222 (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))))))))

(declare-fun b!2898051 () Bool)

(assert (=> b!2898051 (= c!471927 ((_ is Union!8855) (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))))))

(assert (=> b!2898051 (= e!1830657 e!1830656)))

(declare-fun b!2898052 () Bool)

(declare-fun c!471925 () Bool)

(assert (=> b!2898052 (= c!471925 ((_ is Some!6527) lt!1021823))))

(assert (=> b!2898052 (= lt!1021823 call!188660)))

(assert (=> b!2898052 (= e!1830660 e!1830655)))

(declare-fun b!2898045 () Bool)

(declare-fun e!1830661 () Option!6528)

(assert (=> b!2898045 (= e!1830661 (Some!6527 Nil!34532))))

(declare-fun d!835091 () Bool)

(declare-fun c!471920 () Bool)

(assert (=> d!835091 (= c!471920 ((_ is EmptyExpr!8855) (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))))))

(assert (=> d!835091 (= (getLanguageWitness!562 (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))) e!1830661)))

(declare-fun b!2898053 () Bool)

(assert (=> b!2898053 (= e!1830660 None!6527)))

(declare-fun b!2898054 () Bool)

(assert (=> b!2898054 (= e!1830656 e!1830659)))

(declare-fun lt!1021825 () Option!6528)

(assert (=> b!2898054 (= lt!1021825 call!188660)))

(declare-fun c!471922 () Bool)

(assert (=> b!2898054 (= c!471922 ((_ is Some!6527) lt!1021825))))

(declare-fun b!2898055 () Bool)

(declare-fun e!1830658 () Option!6528)

(assert (=> b!2898055 (= e!1830658 None!6527)))

(declare-fun b!2898056 () Bool)

(assert (=> b!2898056 (= e!1830661 e!1830658)))

(declare-fun c!471926 () Bool)

(assert (=> b!2898056 (= c!471926 ((_ is EmptyLang!8855) (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))))))

(declare-fun b!2898057 () Bool)

(assert (=> b!2898057 (= e!1830659 lt!1021825)))

(declare-fun b!2898058 () Bool)

(assert (=> b!2898058 (= e!1830655 None!6527)))

(declare-fun b!2898059 () Bool)

(assert (=> b!2898059 (= e!1830657 (Some!6527 Nil!34532))))

(declare-fun b!2898060 () Bool)

(declare-fun c!471924 () Bool)

(assert (=> b!2898060 (= c!471924 ((_ is ElementMatch!8855) (ite c!471870 (regTwo!18223 r!23079) (regOne!18222 r!23079))))))

(assert (=> b!2898060 (= e!1830658 e!1830654)))

(assert (= (and d!835091 c!471920) b!2898045))

(assert (= (and d!835091 (not c!471920)) b!2898056))

(assert (= (and b!2898056 c!471926) b!2898055))

(assert (= (and b!2898056 (not c!471926)) b!2898060))

(assert (= (and b!2898060 c!471924) b!2898046))

(assert (= (and b!2898060 (not c!471924)) b!2898049))

(assert (= (and b!2898049 c!471923) b!2898059))

(assert (= (and b!2898049 (not c!471923)) b!2898051))

(assert (= (and b!2898051 c!471927) b!2898054))

(assert (= (and b!2898051 (not c!471927)) b!2898047))

(assert (= (and b!2898054 c!471922) b!2898057))

(assert (= (and b!2898054 (not c!471922)) b!2898050))

(assert (= (and b!2898047 c!471921) b!2898052))

(assert (= (and b!2898047 (not c!471921)) b!2898053))

(assert (= (and b!2898052 c!471925) b!2898048))

(assert (= (and b!2898052 (not c!471925)) b!2898058))

(assert (= (or b!2898050 b!2898047) bm!188655))

(assert (= (or b!2898054 b!2898052) bm!188656))

(declare-fun m!3304887 () Bool)

(assert (=> bm!188655 m!3304887))

(declare-fun m!3304889 () Bool)

(assert (=> b!2898048 m!3304889))

(declare-fun m!3304891 () Bool)

(assert (=> bm!188656 m!3304891))

(assert (=> bm!188628 d!835091))

(declare-fun b!2898077 () Bool)

(declare-fun e!1830671 () Bool)

(declare-fun call!188665 () Bool)

(assert (=> b!2898077 (= e!1830671 call!188665)))

(declare-fun b!2898078 () Bool)

(declare-fun e!1830676 () Bool)

(declare-fun call!188666 () Bool)

(assert (=> b!2898078 (= e!1830676 call!188666)))

(declare-fun b!2898079 () Bool)

(declare-fun e!1830674 () Bool)

(declare-fun e!1830672 () Bool)

(assert (=> b!2898079 (= e!1830674 e!1830672)))

(declare-fun res!1198121 () Bool)

(assert (=> b!2898079 (=> (not res!1198121) (not e!1830672))))

(declare-fun call!188664 () Bool)

(assert (=> b!2898079 (= res!1198121 call!188664)))

(declare-fun b!2898080 () Bool)

(declare-fun e!1830670 () Bool)

(declare-fun e!1830673 () Bool)

(assert (=> b!2898080 (= e!1830670 e!1830673)))

(declare-fun c!471937 () Bool)

(assert (=> b!2898080 (= c!471937 ((_ is Star!8855) (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))))))

(declare-fun b!2898081 () Bool)

(declare-fun e!1830675 () Bool)

(assert (=> b!2898081 (= e!1830673 e!1830675)))

(declare-fun c!471936 () Bool)

(assert (=> b!2898081 (= c!471936 ((_ is Union!8855) (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))))))

(declare-fun bm!188659 () Bool)

(assert (=> bm!188659 (= call!188664 (validRegex!3628 (ite c!471936 (regOne!18223 (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))) (regOne!18222 (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))))))))

(declare-fun d!835095 () Bool)

(declare-fun res!1198122 () Bool)

(assert (=> d!835095 (=> res!1198122 e!1830670)))

(assert (=> d!835095 (= res!1198122 ((_ is ElementMatch!8855) (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))))))

(assert (=> d!835095 (= (validRegex!3628 (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))) e!1830670)))

(declare-fun b!2898082 () Bool)

(declare-fun res!1198124 () Bool)

(assert (=> b!2898082 (=> (not res!1198124) (not e!1830676))))

(assert (=> b!2898082 (= res!1198124 call!188664)))

(assert (=> b!2898082 (= e!1830675 e!1830676)))

(declare-fun bm!188660 () Bool)

(assert (=> bm!188660 (= call!188666 call!188665)))

(declare-fun b!2898083 () Bool)

(assert (=> b!2898083 (= e!1830673 e!1830671)))

(declare-fun res!1198120 () Bool)

(assert (=> b!2898083 (= res!1198120 (not (nullable!2754 (reg!9184 (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))))))))

(assert (=> b!2898083 (=> (not res!1198120) (not e!1830671))))

(declare-fun b!2898084 () Bool)

(assert (=> b!2898084 (= e!1830672 call!188666)))

(declare-fun bm!188661 () Bool)

(assert (=> bm!188661 (= call!188665 (validRegex!3628 (ite c!471937 (reg!9184 (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))) (ite c!471936 (regTwo!18223 (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079))) (regTwo!18222 (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079)))))))))

(declare-fun b!2898085 () Bool)

(declare-fun res!1198123 () Bool)

(assert (=> b!2898085 (=> res!1198123 e!1830674)))

(assert (=> b!2898085 (= res!1198123 (not ((_ is Concat!14176) (ite c!471817 (regOne!18223 r!23079) (regOne!18222 r!23079)))))))

(assert (=> b!2898085 (= e!1830675 e!1830674)))

(assert (= (and d!835095 (not res!1198122)) b!2898080))

(assert (= (and b!2898080 c!471937) b!2898083))

(assert (= (and b!2898080 (not c!471937)) b!2898081))

(assert (= (and b!2898083 res!1198120) b!2898077))

(assert (= (and b!2898081 c!471936) b!2898082))

(assert (= (and b!2898081 (not c!471936)) b!2898085))

(assert (= (and b!2898082 res!1198124) b!2898078))

(assert (= (and b!2898085 (not res!1198123)) b!2898079))

(assert (= (and b!2898079 res!1198121) b!2898084))

(assert (= (or b!2898078 b!2898084) bm!188660))

(assert (= (or b!2898082 b!2898079) bm!188659))

(assert (= (or b!2898077 bm!188660) bm!188661))

(declare-fun m!3304893 () Bool)

(assert (=> bm!188659 m!3304893))

(declare-fun m!3304895 () Bool)

(assert (=> b!2898083 m!3304895))

(declare-fun m!3304897 () Bool)

(assert (=> bm!188661 m!3304897))

(assert (=> bm!188600 d!835095))

(declare-fun d!835097 () Bool)

(assert (=> d!835097 (= (isEmpty!18842 lt!1021762) (not ((_ is Some!6527) lt!1021762)))))

(assert (=> d!835055 d!835097))

(declare-fun b!2898087 () Bool)

(declare-fun e!1830678 () List!34656)

(assert (=> b!2898087 (= e!1830678 (Cons!34532 (h!39952 (v!34653 lt!1021778)) (++!8252 (t!233699 (v!34653 lt!1021778)) (v!34653 lt!1021777))))))

(declare-fun b!2898089 () Bool)

(declare-fun lt!1021829 () List!34656)

(declare-fun e!1830677 () Bool)

(assert (=> b!2898089 (= e!1830677 (or (not (= (v!34653 lt!1021777) Nil!34532)) (= lt!1021829 (v!34653 lt!1021778))))))

(declare-fun b!2898086 () Bool)

(assert (=> b!2898086 (= e!1830678 (v!34653 lt!1021777))))

(declare-fun b!2898088 () Bool)

(declare-fun res!1198125 () Bool)

(assert (=> b!2898088 (=> (not res!1198125) (not e!1830677))))

(assert (=> b!2898088 (= res!1198125 (= (size!26350 lt!1021829) (+ (size!26350 (v!34653 lt!1021778)) (size!26350 (v!34653 lt!1021777)))))))

(declare-fun d!835101 () Bool)

(assert (=> d!835101 e!1830677))

(declare-fun res!1198126 () Bool)

(assert (=> d!835101 (=> (not res!1198126) (not e!1830677))))

(assert (=> d!835101 (= res!1198126 (= (content!4731 lt!1021829) ((_ map or) (content!4731 (v!34653 lt!1021778)) (content!4731 (v!34653 lt!1021777)))))))

(assert (=> d!835101 (= lt!1021829 e!1830678)))

(declare-fun c!471938 () Bool)

(assert (=> d!835101 (= c!471938 ((_ is Nil!34532) (v!34653 lt!1021778)))))

(assert (=> d!835101 (= (++!8252 (v!34653 lt!1021778) (v!34653 lt!1021777)) lt!1021829)))

(assert (= (and d!835101 c!471938) b!2898086))

(assert (= (and d!835101 (not c!471938)) b!2898087))

(assert (= (and d!835101 res!1198126) b!2898088))

(assert (= (and b!2898088 res!1198125) b!2898089))

(declare-fun m!3304905 () Bool)

(assert (=> b!2898087 m!3304905))

(declare-fun m!3304907 () Bool)

(assert (=> b!2898088 m!3304907))

(declare-fun m!3304909 () Bool)

(assert (=> b!2898088 m!3304909))

(declare-fun m!3304911 () Bool)

(assert (=> b!2898088 m!3304911))

(declare-fun m!3304913 () Bool)

(assert (=> d!835101 m!3304913))

(declare-fun m!3304915 () Bool)

(assert (=> d!835101 m!3304915))

(declare-fun m!3304917 () Bool)

(assert (=> d!835101 m!3304917))

(assert (=> b!2897614 d!835101))

(declare-fun d!835103 () Bool)

(assert (=> d!835103 (= (nullable!2754 (reg!9184 r!23079)) (nullableFct!840 (reg!9184 r!23079)))))

(declare-fun bs!523974 () Bool)

(assert (= bs!523974 d!835103))

(declare-fun m!3304919 () Bool)

(assert (=> bs!523974 m!3304919))

(assert (=> b!2897687 d!835103))

(assert (=> b!2897788 d!835087))

(assert (=> b!2897788 d!835081))

(declare-fun b!2898091 () Bool)

(declare-fun e!1830680 () List!34656)

(assert (=> b!2898091 (= e!1830680 (Cons!34532 (h!39952 (v!34653 lt!1021802)) (++!8252 (t!233699 (v!34653 lt!1021802)) (v!34653 lt!1021801))))))

(declare-fun b!2898093 () Bool)

(declare-fun lt!1021830 () List!34656)

(declare-fun e!1830679 () Bool)

(assert (=> b!2898093 (= e!1830679 (or (not (= (v!34653 lt!1021801) Nil!34532)) (= lt!1021830 (v!34653 lt!1021802))))))

(declare-fun b!2898090 () Bool)

(assert (=> b!2898090 (= e!1830680 (v!34653 lt!1021801))))

(declare-fun b!2898092 () Bool)

(declare-fun res!1198127 () Bool)

(assert (=> b!2898092 (=> (not res!1198127) (not e!1830679))))

(assert (=> b!2898092 (= res!1198127 (= (size!26350 lt!1021830) (+ (size!26350 (v!34653 lt!1021802)) (size!26350 (v!34653 lt!1021801)))))))

(declare-fun d!835105 () Bool)

(assert (=> d!835105 e!1830679))

(declare-fun res!1198128 () Bool)

(assert (=> d!835105 (=> (not res!1198128) (not e!1830679))))

(assert (=> d!835105 (= res!1198128 (= (content!4731 lt!1021830) ((_ map or) (content!4731 (v!34653 lt!1021802)) (content!4731 (v!34653 lt!1021801)))))))

(assert (=> d!835105 (= lt!1021830 e!1830680)))

(declare-fun c!471939 () Bool)

(assert (=> d!835105 (= c!471939 ((_ is Nil!34532) (v!34653 lt!1021802)))))

(assert (=> d!835105 (= (++!8252 (v!34653 lt!1021802) (v!34653 lt!1021801)) lt!1021830)))

(assert (= (and d!835105 c!471939) b!2898090))

(assert (= (and d!835105 (not c!471939)) b!2898091))

(assert (= (and d!835105 res!1198128) b!2898092))

(assert (= (and b!2898092 res!1198127) b!2898093))

(declare-fun m!3304923 () Bool)

(assert (=> b!2898091 m!3304923))

(declare-fun m!3304925 () Bool)

(assert (=> b!2898092 m!3304925))

(declare-fun m!3304927 () Bool)

(assert (=> b!2898092 m!3304927))

(declare-fun m!3304929 () Bool)

(assert (=> b!2898092 m!3304929))

(declare-fun m!3304931 () Bool)

(assert (=> d!835105 m!3304931))

(declare-fun m!3304933 () Bool)

(assert (=> d!835105 m!3304933))

(declare-fun m!3304935 () Bool)

(assert (=> d!835105 m!3304935))

(assert (=> b!2897850 d!835105))

(declare-fun b!2898094 () Bool)

(declare-fun e!1830682 () Bool)

(declare-fun call!188668 () Bool)

(assert (=> b!2898094 (= e!1830682 call!188668)))

(declare-fun b!2898095 () Bool)

(declare-fun e!1830687 () Bool)

(declare-fun call!188669 () Bool)

(assert (=> b!2898095 (= e!1830687 call!188669)))

(declare-fun b!2898096 () Bool)

(declare-fun e!1830685 () Bool)

(declare-fun e!1830683 () Bool)

(assert (=> b!2898096 (= e!1830685 e!1830683)))

(declare-fun res!1198130 () Bool)

(assert (=> b!2898096 (=> (not res!1198130) (not e!1830683))))

(declare-fun call!188667 () Bool)

(assert (=> b!2898096 (= res!1198130 call!188667)))

(declare-fun b!2898097 () Bool)

(declare-fun e!1830681 () Bool)

(declare-fun e!1830684 () Bool)

(assert (=> b!2898097 (= e!1830681 e!1830684)))

(declare-fun c!471941 () Bool)

(assert (=> b!2898097 (= c!471941 ((_ is Star!8855) (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))))))

(declare-fun b!2898098 () Bool)

(declare-fun e!1830686 () Bool)

(assert (=> b!2898098 (= e!1830684 e!1830686)))

(declare-fun c!471940 () Bool)

(assert (=> b!2898098 (= c!471940 ((_ is Union!8855) (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))))))

(declare-fun bm!188662 () Bool)

(assert (=> bm!188662 (= call!188667 (validRegex!3628 (ite c!471940 (regOne!18223 (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))) (regOne!18222 (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))))))))

(declare-fun d!835109 () Bool)

(declare-fun res!1198131 () Bool)

(assert (=> d!835109 (=> res!1198131 e!1830681)))

(assert (=> d!835109 (= res!1198131 ((_ is ElementMatch!8855) (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))))))

(assert (=> d!835109 (= (validRegex!3628 (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))) e!1830681)))

(declare-fun b!2898099 () Bool)

(declare-fun res!1198133 () Bool)

(assert (=> b!2898099 (=> (not res!1198133) (not e!1830687))))

(assert (=> b!2898099 (= res!1198133 call!188667)))

(assert (=> b!2898099 (= e!1830686 e!1830687)))

(declare-fun bm!188663 () Bool)

(assert (=> bm!188663 (= call!188669 call!188668)))

(declare-fun b!2898100 () Bool)

(assert (=> b!2898100 (= e!1830684 e!1830682)))

(declare-fun res!1198129 () Bool)

(assert (=> b!2898100 (= res!1198129 (not (nullable!2754 (reg!9184 (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))))))))

(assert (=> b!2898100 (=> (not res!1198129) (not e!1830682))))

(declare-fun b!2898101 () Bool)

(assert (=> b!2898101 (= e!1830683 call!188669)))

(declare-fun bm!188664 () Bool)

(assert (=> bm!188664 (= call!188668 (validRegex!3628 (ite c!471941 (reg!9184 (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))) (ite c!471940 (regTwo!18223 (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079)))) (regTwo!18222 (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079))))))))))

(declare-fun b!2898102 () Bool)

(declare-fun res!1198132 () Bool)

(assert (=> b!2898102 (=> res!1198132 e!1830685)))

(assert (=> b!2898102 (= res!1198132 (not ((_ is Concat!14176) (ite c!471818 (reg!9184 r!23079) (ite c!471817 (regTwo!18223 r!23079) (regTwo!18222 r!23079))))))))

(assert (=> b!2898102 (= e!1830686 e!1830685)))

(assert (= (and d!835109 (not res!1198131)) b!2898097))

(assert (= (and b!2898097 c!471941) b!2898100))

(assert (= (and b!2898097 (not c!471941)) b!2898098))

(assert (= (and b!2898100 res!1198129) b!2898094))

(assert (= (and b!2898098 c!471940) b!2898099))

(assert (= (and b!2898098 (not c!471940)) b!2898102))

(assert (= (and b!2898099 res!1198133) b!2898095))

(assert (= (and b!2898102 (not res!1198132)) b!2898096))

(assert (= (and b!2898096 res!1198130) b!2898101))

(assert (= (or b!2898095 b!2898101) bm!188663))

(assert (= (or b!2898099 b!2898096) bm!188662))

(assert (= (or b!2898094 bm!188663) bm!188664))

(declare-fun m!3304937 () Bool)

(assert (=> bm!188662 m!3304937))

(declare-fun m!3304939 () Bool)

(assert (=> b!2898100 m!3304939))

(declare-fun m!3304941 () Bool)

(assert (=> bm!188664 m!3304941))

(assert (=> bm!188602 d!835109))

(declare-fun b!2898113 () Bool)

(declare-fun e!1830695 () Option!6528)

(assert (=> b!2898113 (= e!1830695 (Some!6527 (Cons!34532 (c!471756 (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))) Nil!34532)))))

(declare-fun c!471951 () Bool)

(declare-fun bm!188668 () Bool)

(declare-fun call!188674 () Option!6528)

(assert (=> bm!188668 (= call!188674 (getLanguageWitness!562 (ite c!471951 (regTwo!18223 (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))) (regOne!18222 (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))))

(declare-fun b!2898114 () Bool)

(declare-fun e!1830697 () Option!6528)

(declare-fun e!1830701 () Option!6528)

(assert (=> b!2898114 (= e!1830697 e!1830701)))

(declare-fun lt!1021832 () Option!6528)

(assert (=> b!2898114 (= lt!1021832 call!188674)))

(declare-fun c!471945 () Bool)

(assert (=> b!2898114 (= c!471945 ((_ is Some!6527) lt!1021832))))

(declare-fun b!2898115 () Bool)

(declare-fun e!1830696 () Option!6528)

(declare-fun lt!1021831 () Option!6528)

(assert (=> b!2898115 (= e!1830696 (Some!6527 (++!8252 (v!34653 lt!1021832) (v!34653 lt!1021831))))))

(declare-fun b!2898116 () Bool)

(declare-fun e!1830698 () Option!6528)

(assert (=> b!2898116 (= e!1830695 e!1830698)))

(declare-fun c!471947 () Bool)

(assert (=> b!2898116 (= c!471947 ((_ is Star!8855) (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))

(declare-fun b!2898117 () Bool)

(declare-fun e!1830700 () Option!6528)

(assert (=> b!2898117 (= e!1830700 call!188674)))

(declare-fun bm!188669 () Bool)

(declare-fun call!188673 () Option!6528)

(assert (=> bm!188669 (= call!188673 (getLanguageWitness!562 (ite c!471951 (regOne!18223 (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))) (regTwo!18222 (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))))

(declare-fun b!2898118 () Bool)

(assert (=> b!2898118 (= c!471951 ((_ is Union!8855) (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))

(assert (=> b!2898118 (= e!1830698 e!1830697)))

(declare-fun b!2898119 () Bool)

(declare-fun c!471949 () Bool)

(assert (=> b!2898119 (= c!471949 ((_ is Some!6527) lt!1021831))))

(assert (=> b!2898119 (= lt!1021831 call!188673)))

(assert (=> b!2898119 (= e!1830701 e!1830696)))

(declare-fun b!2898112 () Bool)

(declare-fun e!1830702 () Option!6528)

(assert (=> b!2898112 (= e!1830702 (Some!6527 Nil!34532))))

(declare-fun d!835113 () Bool)

(declare-fun c!471944 () Bool)

(assert (=> d!835113 (= c!471944 ((_ is EmptyExpr!8855) (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))

(assert (=> d!835113 (= (getLanguageWitness!562 (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))) e!1830702)))

(declare-fun b!2898120 () Bool)

(assert (=> b!2898120 (= e!1830701 None!6527)))

(declare-fun b!2898121 () Bool)

(assert (=> b!2898121 (= e!1830697 e!1830700)))

(declare-fun lt!1021833 () Option!6528)

(assert (=> b!2898121 (= lt!1021833 call!188673)))

(declare-fun c!471946 () Bool)

(assert (=> b!2898121 (= c!471946 ((_ is Some!6527) lt!1021833))))

(declare-fun b!2898122 () Bool)

(declare-fun e!1830699 () Option!6528)

(assert (=> b!2898122 (= e!1830699 None!6527)))

(declare-fun b!2898123 () Bool)

(assert (=> b!2898123 (= e!1830702 e!1830699)))

(declare-fun c!471950 () Bool)

(assert (=> b!2898123 (= c!471950 ((_ is EmptyLang!8855) (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))

(declare-fun b!2898124 () Bool)

(assert (=> b!2898124 (= e!1830700 lt!1021833)))

(declare-fun b!2898125 () Bool)

(assert (=> b!2898125 (= e!1830696 None!6527)))

(declare-fun b!2898126 () Bool)

(assert (=> b!2898126 (= e!1830698 (Some!6527 Nil!34532))))

(declare-fun b!2898127 () Bool)

(declare-fun c!471948 () Bool)

(assert (=> b!2898127 (= c!471948 ((_ is ElementMatch!8855) (ite c!471796 (regOne!18223 (regTwo!18222 r!23079)) (regTwo!18222 (regTwo!18222 r!23079)))))))

(assert (=> b!2898127 (= e!1830699 e!1830695)))

(assert (= (and d!835113 c!471944) b!2898112))

(assert (= (and d!835113 (not c!471944)) b!2898123))

(assert (= (and b!2898123 c!471950) b!2898122))

(assert (= (and b!2898123 (not c!471950)) b!2898127))

(assert (= (and b!2898127 c!471948) b!2898113))

(assert (= (and b!2898127 (not c!471948)) b!2898116))

(assert (= (and b!2898116 c!471947) b!2898126))

(assert (= (and b!2898116 (not c!471947)) b!2898118))

(assert (= (and b!2898118 c!471951) b!2898121))

(assert (= (and b!2898118 (not c!471951)) b!2898114))

(assert (= (and b!2898121 c!471946) b!2898124))

(assert (= (and b!2898121 (not c!471946)) b!2898117))

(assert (= (and b!2898114 c!471945) b!2898119))

(assert (= (and b!2898114 (not c!471945)) b!2898120))

(assert (= (and b!2898119 c!471949) b!2898115))

(assert (= (and b!2898119 (not c!471949)) b!2898125))

(assert (= (or b!2898117 b!2898114) bm!188668))

(assert (= (or b!2898121 b!2898119) bm!188669))

(declare-fun m!3304949 () Bool)

(assert (=> bm!188668 m!3304949))

(declare-fun m!3304951 () Bool)

(assert (=> b!2898115 m!3304951))

(declare-fun m!3304953 () Bool)

(assert (=> bm!188669 m!3304953))

(assert (=> bm!188589 d!835113))

(declare-fun b!2898138 () Bool)

(declare-fun e!1830707 () Option!6528)

(assert (=> b!2898138 (= e!1830707 (Some!6527 (Cons!34532 (c!471756 (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))) Nil!34532)))))

(declare-fun c!471961 () Bool)

(declare-fun call!188677 () Option!6528)

(declare-fun bm!188673 () Bool)

(assert (=> bm!188673 (= call!188677 (getLanguageWitness!562 (ite c!471961 (regTwo!18223 (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))) (regOne!18222 (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))))))))

(declare-fun b!2898139 () Bool)

(declare-fun e!1830710 () Option!6528)

(declare-fun e!1830716 () Option!6528)

(assert (=> b!2898139 (= e!1830710 e!1830716)))

(declare-fun lt!1021835 () Option!6528)

(assert (=> b!2898139 (= lt!1021835 call!188677)))

(declare-fun c!471954 () Bool)

(assert (=> b!2898139 (= c!471954 ((_ is Some!6527) lt!1021835))))

(declare-fun b!2898140 () Bool)

(declare-fun e!1830708 () Option!6528)

(declare-fun lt!1021834 () Option!6528)

(assert (=> b!2898140 (= e!1830708 (Some!6527 (++!8252 (v!34653 lt!1021835) (v!34653 lt!1021834))))))

(declare-fun b!2898141 () Bool)

(declare-fun e!1830713 () Option!6528)

(assert (=> b!2898141 (= e!1830707 e!1830713)))

(declare-fun c!471957 () Bool)

(assert (=> b!2898141 (= c!471957 ((_ is Star!8855) (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))))))

(declare-fun b!2898142 () Bool)

(declare-fun e!1830715 () Option!6528)

(assert (=> b!2898142 (= e!1830715 call!188677)))

(declare-fun call!188675 () Option!6528)

(declare-fun bm!188674 () Bool)

(assert (=> bm!188674 (= call!188675 (getLanguageWitness!562 (ite c!471961 (regOne!18223 (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))) (regTwo!18222 (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))))))))

(declare-fun b!2898143 () Bool)

(assert (=> b!2898143 (= c!471961 ((_ is Union!8855) (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))))))

(assert (=> b!2898143 (= e!1830713 e!1830710)))

(declare-fun b!2898144 () Bool)

(declare-fun c!471959 () Bool)

(assert (=> b!2898144 (= c!471959 ((_ is Some!6527) lt!1021834))))

(assert (=> b!2898144 (= lt!1021834 call!188675)))

(assert (=> b!2898144 (= e!1830716 e!1830708)))

(declare-fun b!2898136 () Bool)

(declare-fun e!1830717 () Option!6528)

(assert (=> b!2898136 (= e!1830717 (Some!6527 Nil!34532))))

(declare-fun d!835119 () Bool)

(declare-fun c!471953 () Bool)

(assert (=> d!835119 (= c!471953 ((_ is EmptyExpr!8855) (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))))))

(assert (=> d!835119 (= (getLanguageWitness!562 (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))) e!1830717)))

(declare-fun b!2898145 () Bool)

(assert (=> b!2898145 (= e!1830716 None!6527)))

(declare-fun b!2898146 () Bool)

(assert (=> b!2898146 (= e!1830710 e!1830715)))

(declare-fun lt!1021836 () Option!6528)

(assert (=> b!2898146 (= lt!1021836 call!188675)))

(declare-fun c!471956 () Bool)

(assert (=> b!2898146 (= c!471956 ((_ is Some!6527) lt!1021836))))

(declare-fun b!2898147 () Bool)

(declare-fun e!1830714 () Option!6528)

(assert (=> b!2898147 (= e!1830714 None!6527)))

(declare-fun b!2898148 () Bool)

(assert (=> b!2898148 (= e!1830717 e!1830714)))

(declare-fun c!471960 () Bool)

(assert (=> b!2898148 (= c!471960 ((_ is EmptyLang!8855) (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))))))

(declare-fun b!2898149 () Bool)

(assert (=> b!2898149 (= e!1830715 lt!1021836)))

(declare-fun b!2898150 () Bool)

(assert (=> b!2898150 (= e!1830708 None!6527)))

(declare-fun b!2898151 () Bool)

(assert (=> b!2898151 (= e!1830713 (Some!6527 Nil!34532))))

(declare-fun b!2898152 () Bool)

(declare-fun c!471958 () Bool)

(assert (=> b!2898152 (= c!471958 ((_ is ElementMatch!8855) (ite c!471870 (regOne!18223 r!23079) (regTwo!18222 r!23079))))))

(assert (=> b!2898152 (= e!1830714 e!1830707)))

(assert (= (and d!835119 c!471953) b!2898136))

(assert (= (and d!835119 (not c!471953)) b!2898148))

(assert (= (and b!2898148 c!471960) b!2898147))

(assert (= (and b!2898148 (not c!471960)) b!2898152))

(assert (= (and b!2898152 c!471958) b!2898138))

(assert (= (and b!2898152 (not c!471958)) b!2898141))

(assert (= (and b!2898141 c!471957) b!2898151))

(assert (= (and b!2898141 (not c!471957)) b!2898143))

(assert (= (and b!2898143 c!471961) b!2898146))

(assert (= (and b!2898143 (not c!471961)) b!2898139))

(assert (= (and b!2898146 c!471956) b!2898149))

(assert (= (and b!2898146 (not c!471956)) b!2898142))

(assert (= (and b!2898139 c!471954) b!2898144))

(assert (= (and b!2898139 (not c!471954)) b!2898145))

(assert (= (and b!2898144 c!471959) b!2898140))

(assert (= (and b!2898144 (not c!471959)) b!2898150))

(assert (= (or b!2898142 b!2898139) bm!188673))

(assert (= (or b!2898146 b!2898144) bm!188674))

(declare-fun m!3304957 () Bool)

(assert (=> bm!188673 m!3304957))

(declare-fun m!3304961 () Bool)

(assert (=> b!2898140 m!3304961))

(declare-fun m!3304963 () Bool)

(assert (=> bm!188674 m!3304963))

(assert (=> bm!188629 d!835119))

(declare-fun d!835121 () Bool)

(assert (=> d!835121 (= (isEmpty!18840 (get!10473 lt!1021764)) ((_ is Nil!34532) (get!10473 lt!1021764)))))

(assert (=> bm!188622 d!835121))

(declare-fun d!835123 () Bool)

(assert (=> d!835123 (= (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079))) (v!34653 (getLanguageWitness!562 (regOne!18222 r!23079))))))

(assert (=> d!835053 d!835123))

(declare-fun b!2898153 () Bool)

(declare-fun e!1830724 () Bool)

(declare-fun e!1830722 () Bool)

(assert (=> b!2898153 (= e!1830724 e!1830722)))

(declare-fun c!471963 () Bool)

(assert (=> b!2898153 (= c!471963 ((_ is EmptyLang!8855) (regOne!18222 r!23079)))))

(declare-fun b!2898154 () Bool)

(declare-fun res!1198148 () Bool)

(declare-fun e!1830718 () Bool)

(assert (=> b!2898154 (=> (not res!1198148) (not e!1830718))))

(declare-fun call!188680 () Bool)

(assert (=> b!2898154 (= res!1198148 (not call!188680))))

(declare-fun d!835127 () Bool)

(assert (=> d!835127 e!1830724))

(declare-fun c!471962 () Bool)

(assert (=> d!835127 (= c!471962 ((_ is EmptyExpr!8855) (regOne!18222 r!23079)))))

(declare-fun lt!1021837 () Bool)

(declare-fun e!1830719 () Bool)

(assert (=> d!835127 (= lt!1021837 e!1830719)))

(declare-fun c!471964 () Bool)

(assert (=> d!835127 (= c!471964 (isEmpty!18840 (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079)))))))

(assert (=> d!835127 (validRegex!3628 (regOne!18222 r!23079))))

(assert (=> d!835127 (= (matchR!3813 (regOne!18222 r!23079) (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079)))) lt!1021837)))

(declare-fun b!2898155 () Bool)

(declare-fun e!1830723 () Bool)

(declare-fun e!1830721 () Bool)

(assert (=> b!2898155 (= e!1830723 e!1830721)))

(declare-fun res!1198151 () Bool)

(assert (=> b!2898155 (=> res!1198151 e!1830721)))

(assert (=> b!2898155 (= res!1198151 call!188680)))

(declare-fun bm!188675 () Bool)

(assert (=> bm!188675 (= call!188680 (isEmpty!18840 (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079)))))))

(declare-fun b!2898156 () Bool)

(assert (=> b!2898156 (= e!1830719 (nullable!2754 (regOne!18222 r!23079)))))

(declare-fun b!2898157 () Bool)

(declare-fun res!1198145 () Bool)

(declare-fun e!1830720 () Bool)

(assert (=> b!2898157 (=> res!1198145 e!1830720)))

(assert (=> b!2898157 (= res!1198145 e!1830718)))

(declare-fun res!1198144 () Bool)

(assert (=> b!2898157 (=> (not res!1198144) (not e!1830718))))

(assert (=> b!2898157 (= res!1198144 lt!1021837)))

(declare-fun b!2898158 () Bool)

(assert (=> b!2898158 (= e!1830718 (= (head!6396 (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079)))) (c!471756 (regOne!18222 r!23079))))))

(declare-fun b!2898159 () Bool)

(assert (=> b!2898159 (= e!1830724 (= lt!1021837 call!188680))))

(declare-fun b!2898160 () Bool)

(declare-fun res!1198147 () Bool)

(assert (=> b!2898160 (=> res!1198147 e!1830720)))

(assert (=> b!2898160 (= res!1198147 (not ((_ is ElementMatch!8855) (regOne!18222 r!23079))))))

(assert (=> b!2898160 (= e!1830722 e!1830720)))

(declare-fun b!2898161 () Bool)

(assert (=> b!2898161 (= e!1830719 (matchR!3813 (derivativeStep!2367 (regOne!18222 r!23079) (head!6396 (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079))))) (tail!4621 (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079))))))))

(declare-fun b!2898162 () Bool)

(assert (=> b!2898162 (= e!1830722 (not lt!1021837))))

(declare-fun b!2898163 () Bool)

(assert (=> b!2898163 (= e!1830721 (not (= (head!6396 (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079)))) (c!471756 (regOne!18222 r!23079)))))))

(declare-fun b!2898164 () Bool)

(assert (=> b!2898164 (= e!1830720 e!1830723)))

(declare-fun res!1198146 () Bool)

(assert (=> b!2898164 (=> (not res!1198146) (not e!1830723))))

(assert (=> b!2898164 (= res!1198146 (not lt!1021837))))

(declare-fun b!2898165 () Bool)

(declare-fun res!1198150 () Bool)

(assert (=> b!2898165 (=> (not res!1198150) (not e!1830718))))

(assert (=> b!2898165 (= res!1198150 (isEmpty!18840 (tail!4621 (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079))))))))

(declare-fun b!2898166 () Bool)

(declare-fun res!1198149 () Bool)

(assert (=> b!2898166 (=> res!1198149 e!1830721)))

(assert (=> b!2898166 (= res!1198149 (not (isEmpty!18840 (tail!4621 (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079)))))))))

(assert (= (and d!835127 c!471964) b!2898156))

(assert (= (and d!835127 (not c!471964)) b!2898161))

(assert (= (and d!835127 c!471962) b!2898159))

(assert (= (and d!835127 (not c!471962)) b!2898153))

(assert (= (and b!2898153 c!471963) b!2898162))

(assert (= (and b!2898153 (not c!471963)) b!2898160))

(assert (= (and b!2898160 (not res!1198147)) b!2898157))

(assert (= (and b!2898157 res!1198144) b!2898154))

(assert (= (and b!2898154 res!1198148) b!2898165))

(assert (= (and b!2898165 res!1198150) b!2898158))

(assert (= (and b!2898157 (not res!1198145)) b!2898164))

(assert (= (and b!2898164 res!1198146) b!2898155))

(assert (= (and b!2898155 (not res!1198151)) b!2898166))

(assert (= (and b!2898166 (not res!1198149)) b!2898163))

(assert (= (or b!2898159 b!2898154 b!2898155) bm!188675))

(assert (=> b!2898158 m!3304775))

(declare-fun m!3304967 () Bool)

(assert (=> b!2898158 m!3304967))

(assert (=> b!2898161 m!3304775))

(assert (=> b!2898161 m!3304967))

(assert (=> b!2898161 m!3304967))

(declare-fun m!3304969 () Bool)

(assert (=> b!2898161 m!3304969))

(assert (=> b!2898161 m!3304775))

(declare-fun m!3304971 () Bool)

(assert (=> b!2898161 m!3304971))

(assert (=> b!2898161 m!3304969))

(assert (=> b!2898161 m!3304971))

(declare-fun m!3304973 () Bool)

(assert (=> b!2898161 m!3304973))

(assert (=> bm!188675 m!3304775))

(declare-fun m!3304975 () Bool)

(assert (=> bm!188675 m!3304975))

(assert (=> b!2898156 m!3304769))

(assert (=> b!2898166 m!3304775))

(assert (=> b!2898166 m!3304971))

(assert (=> b!2898166 m!3304971))

(declare-fun m!3304977 () Bool)

(assert (=> b!2898166 m!3304977))

(assert (=> b!2898165 m!3304775))

(assert (=> b!2898165 m!3304971))

(assert (=> b!2898165 m!3304971))

(assert (=> b!2898165 m!3304977))

(assert (=> d!835127 m!3304775))

(assert (=> d!835127 m!3304975))

(assert (=> d!835127 m!3304773))

(assert (=> b!2898163 m!3304775))

(assert (=> b!2898163 m!3304967))

(assert (=> d!835053 d!835127))

(declare-fun d!835129 () Bool)

(assert (=> d!835129 (matchR!3813 (regOne!18222 r!23079) (get!10473 (getLanguageWitness!562 (regOne!18222 r!23079))))))

(assert (=> d!835129 true))

(declare-fun _$101!138 () Unit!48115)

(assert (=> d!835129 (= (choose!17077 (regOne!18222 r!23079)) _$101!138)))

(declare-fun bs!523976 () Bool)

(assert (= bs!523976 d!835129))

(assert (=> bs!523976 m!3304689))

(assert (=> bs!523976 m!3304689))

(assert (=> bs!523976 m!3304775))

(assert (=> bs!523976 m!3304775))

(assert (=> bs!523976 m!3304777))

(assert (=> d!835053 d!835129))

(assert (=> d!835053 d!835057))

(declare-fun b!2898175 () Bool)

(declare-fun e!1830730 () Bool)

(declare-fun call!188682 () Bool)

(assert (=> b!2898175 (= e!1830730 call!188682)))

(declare-fun b!2898176 () Bool)

(declare-fun e!1830735 () Bool)

(declare-fun call!188683 () Bool)

(assert (=> b!2898176 (= e!1830735 call!188683)))

(declare-fun b!2898177 () Bool)

(declare-fun e!1830733 () Bool)

(declare-fun e!1830731 () Bool)

(assert (=> b!2898177 (= e!1830733 e!1830731)))

(declare-fun res!1198157 () Bool)

(assert (=> b!2898177 (=> (not res!1198157) (not e!1830731))))

(declare-fun call!188681 () Bool)

(assert (=> b!2898177 (= res!1198157 call!188681)))

(declare-fun b!2898178 () Bool)

(declare-fun e!1830729 () Bool)

(declare-fun e!1830732 () Bool)

(assert (=> b!2898178 (= e!1830729 e!1830732)))

(declare-fun c!471968 () Bool)

(assert (=> b!2898178 (= c!471968 ((_ is Star!8855) (regOne!18222 r!23079)))))

(declare-fun b!2898179 () Bool)

(declare-fun e!1830734 () Bool)

(assert (=> b!2898179 (= e!1830732 e!1830734)))

(declare-fun c!471967 () Bool)

(assert (=> b!2898179 (= c!471967 ((_ is Union!8855) (regOne!18222 r!23079)))))

(declare-fun bm!188676 () Bool)

(assert (=> bm!188676 (= call!188681 (validRegex!3628 (ite c!471967 (regOne!18223 (regOne!18222 r!23079)) (regOne!18222 (regOne!18222 r!23079)))))))

(declare-fun d!835131 () Bool)

(declare-fun res!1198158 () Bool)

(assert (=> d!835131 (=> res!1198158 e!1830729)))

(assert (=> d!835131 (= res!1198158 ((_ is ElementMatch!8855) (regOne!18222 r!23079)))))

(assert (=> d!835131 (= (validRegex!3628 (regOne!18222 r!23079)) e!1830729)))

(declare-fun b!2898180 () Bool)

(declare-fun res!1198160 () Bool)

(assert (=> b!2898180 (=> (not res!1198160) (not e!1830735))))

(assert (=> b!2898180 (= res!1198160 call!188681)))

(assert (=> b!2898180 (= e!1830734 e!1830735)))

(declare-fun bm!188677 () Bool)

(assert (=> bm!188677 (= call!188683 call!188682)))

(declare-fun b!2898181 () Bool)

(assert (=> b!2898181 (= e!1830732 e!1830730)))

(declare-fun res!1198156 () Bool)

(assert (=> b!2898181 (= res!1198156 (not (nullable!2754 (reg!9184 (regOne!18222 r!23079)))))))

(assert (=> b!2898181 (=> (not res!1198156) (not e!1830730))))

(declare-fun b!2898182 () Bool)

(assert (=> b!2898182 (= e!1830731 call!188683)))

(declare-fun bm!188678 () Bool)

(assert (=> bm!188678 (= call!188682 (validRegex!3628 (ite c!471968 (reg!9184 (regOne!18222 r!23079)) (ite c!471967 (regTwo!18223 (regOne!18222 r!23079)) (regTwo!18222 (regOne!18222 r!23079))))))))

(declare-fun b!2898183 () Bool)

(declare-fun res!1198159 () Bool)

(assert (=> b!2898183 (=> res!1198159 e!1830733)))

(assert (=> b!2898183 (= res!1198159 (not ((_ is Concat!14176) (regOne!18222 r!23079))))))

(assert (=> b!2898183 (= e!1830734 e!1830733)))

(assert (= (and d!835131 (not res!1198158)) b!2898178))

(assert (= (and b!2898178 c!471968) b!2898181))

(assert (= (and b!2898178 (not c!471968)) b!2898179))

(assert (= (and b!2898181 res!1198156) b!2898175))

(assert (= (and b!2898179 c!471967) b!2898180))

(assert (= (and b!2898179 (not c!471967)) b!2898183))

(assert (= (and b!2898180 res!1198160) b!2898176))

(assert (= (and b!2898183 (not res!1198159)) b!2898177))

(assert (= (and b!2898177 res!1198157) b!2898182))

(assert (= (or b!2898176 b!2898182) bm!188677))

(assert (= (or b!2898180 b!2898177) bm!188676))

(assert (= (or b!2898175 bm!188677) bm!188678))

(declare-fun m!3304979 () Bool)

(assert (=> bm!188676 m!3304979))

(declare-fun m!3304981 () Bool)

(assert (=> b!2898181 m!3304981))

(declare-fun m!3304983 () Bool)

(assert (=> bm!188678 m!3304983))

(assert (=> d!835053 d!835131))

(assert (=> d!835039 d!835121))

(assert (=> d!835039 d!835131))

(declare-fun d!835133 () Bool)

(assert (=> d!835133 (= (nullable!2754 (regOne!18222 r!23079)) (nullableFct!840 (regOne!18222 r!23079)))))

(declare-fun bs!523977 () Bool)

(assert (= bs!523977 d!835133))

(declare-fun m!3304985 () Bool)

(assert (=> bs!523977 m!3304985))

(assert (=> b!2897778 d!835133))

(declare-fun d!835135 () Bool)

(assert (=> d!835135 (= (isEmpty!18842 (getLanguageWitness!562 r!23079)) (not ((_ is Some!6527) (getLanguageWitness!562 r!23079))))))

(assert (=> d!835063 d!835135))

(declare-fun b!2898185 () Bool)

(declare-fun e!1830736 () Bool)

(declare-fun tp!930100 () Bool)

(declare-fun tp!930102 () Bool)

(assert (=> b!2898185 (= e!1830736 (and tp!930100 tp!930102))))

(declare-fun b!2898186 () Bool)

(declare-fun tp!930103 () Bool)

(assert (=> b!2898186 (= e!1830736 tp!930103)))

(declare-fun b!2898184 () Bool)

(assert (=> b!2898184 (= e!1830736 tp_is_empty!15297)))

(assert (=> b!2897896 (= tp!930065 e!1830736)))

(declare-fun b!2898187 () Bool)

(declare-fun tp!930101 () Bool)

(declare-fun tp!930104 () Bool)

(assert (=> b!2898187 (= e!1830736 (and tp!930101 tp!930104))))

(assert (= (and b!2897896 ((_ is ElementMatch!8855) (regOne!18222 (regOne!18222 r!23079)))) b!2898184))

(assert (= (and b!2897896 ((_ is Concat!14176) (regOne!18222 (regOne!18222 r!23079)))) b!2898185))

(assert (= (and b!2897896 ((_ is Star!8855) (regOne!18222 (regOne!18222 r!23079)))) b!2898186))

(assert (= (and b!2897896 ((_ is Union!8855) (regOne!18222 (regOne!18222 r!23079)))) b!2898187))

(declare-fun b!2898189 () Bool)

(declare-fun e!1830737 () Bool)

(declare-fun tp!930105 () Bool)

(declare-fun tp!930107 () Bool)

(assert (=> b!2898189 (= e!1830737 (and tp!930105 tp!930107))))

(declare-fun b!2898190 () Bool)

(declare-fun tp!930108 () Bool)

(assert (=> b!2898190 (= e!1830737 tp!930108)))

(declare-fun b!2898188 () Bool)

(assert (=> b!2898188 (= e!1830737 tp_is_empty!15297)))

(assert (=> b!2897896 (= tp!930067 e!1830737)))

(declare-fun b!2898191 () Bool)

(declare-fun tp!930106 () Bool)

(declare-fun tp!930109 () Bool)

(assert (=> b!2898191 (= e!1830737 (and tp!930106 tp!930109))))

(assert (= (and b!2897896 ((_ is ElementMatch!8855) (regTwo!18222 (regOne!18222 r!23079)))) b!2898188))

(assert (= (and b!2897896 ((_ is Concat!14176) (regTwo!18222 (regOne!18222 r!23079)))) b!2898189))

(assert (= (and b!2897896 ((_ is Star!8855) (regTwo!18222 (regOne!18222 r!23079)))) b!2898190))

(assert (= (and b!2897896 ((_ is Union!8855) (regTwo!18222 (regOne!18222 r!23079)))) b!2898191))

(declare-fun b!2898193 () Bool)

(declare-fun e!1830738 () Bool)

(declare-fun tp!930110 () Bool)

(declare-fun tp!930112 () Bool)

(assert (=> b!2898193 (= e!1830738 (and tp!930110 tp!930112))))

(declare-fun b!2898194 () Bool)

(declare-fun tp!930113 () Bool)

(assert (=> b!2898194 (= e!1830738 tp!930113)))

(declare-fun b!2898192 () Bool)

(assert (=> b!2898192 (= e!1830738 tp_is_empty!15297)))

(assert (=> b!2897886 (= tp!930046 e!1830738)))

(declare-fun b!2898195 () Bool)

(declare-fun tp!930111 () Bool)

(declare-fun tp!930114 () Bool)

(assert (=> b!2898195 (= e!1830738 (and tp!930111 tp!930114))))

(assert (= (and b!2897886 ((_ is ElementMatch!8855) (regOne!18223 (regOne!18223 r!23079)))) b!2898192))

(assert (= (and b!2897886 ((_ is Concat!14176) (regOne!18223 (regOne!18223 r!23079)))) b!2898193))

(assert (= (and b!2897886 ((_ is Star!8855) (regOne!18223 (regOne!18223 r!23079)))) b!2898194))

(assert (= (and b!2897886 ((_ is Union!8855) (regOne!18223 (regOne!18223 r!23079)))) b!2898195))

(declare-fun b!2898197 () Bool)

(declare-fun e!1830739 () Bool)

(declare-fun tp!930115 () Bool)

(declare-fun tp!930117 () Bool)

(assert (=> b!2898197 (= e!1830739 (and tp!930115 tp!930117))))

(declare-fun b!2898198 () Bool)

(declare-fun tp!930118 () Bool)

(assert (=> b!2898198 (= e!1830739 tp!930118)))

(declare-fun b!2898196 () Bool)

(assert (=> b!2898196 (= e!1830739 tp_is_empty!15297)))

(assert (=> b!2897886 (= tp!930049 e!1830739)))

(declare-fun b!2898199 () Bool)

(declare-fun tp!930116 () Bool)

(declare-fun tp!930119 () Bool)

(assert (=> b!2898199 (= e!1830739 (and tp!930116 tp!930119))))

(assert (= (and b!2897886 ((_ is ElementMatch!8855) (regTwo!18223 (regOne!18223 r!23079)))) b!2898196))

(assert (= (and b!2897886 ((_ is Concat!14176) (regTwo!18223 (regOne!18223 r!23079)))) b!2898197))

(assert (= (and b!2897886 ((_ is Star!8855) (regTwo!18223 (regOne!18223 r!23079)))) b!2898198))

(assert (= (and b!2897886 ((_ is Union!8855) (regTwo!18223 (regOne!18223 r!23079)))) b!2898199))

(declare-fun b!2898201 () Bool)

(declare-fun e!1830740 () Bool)

(declare-fun tp!930120 () Bool)

(declare-fun tp!930122 () Bool)

(assert (=> b!2898201 (= e!1830740 (and tp!930120 tp!930122))))

(declare-fun b!2898202 () Bool)

(declare-fun tp!930123 () Bool)

(assert (=> b!2898202 (= e!1830740 tp!930123)))

(declare-fun b!2898200 () Bool)

(assert (=> b!2898200 (= e!1830740 tp_is_empty!15297)))

(assert (=> b!2897901 (= tp!930073 e!1830740)))

(declare-fun b!2898203 () Bool)

(declare-fun tp!930121 () Bool)

(declare-fun tp!930124 () Bool)

(assert (=> b!2898203 (= e!1830740 (and tp!930121 tp!930124))))

(assert (= (and b!2897901 ((_ is ElementMatch!8855) (reg!9184 (regTwo!18222 r!23079)))) b!2898200))

(assert (= (and b!2897901 ((_ is Concat!14176) (reg!9184 (regTwo!18222 r!23079)))) b!2898201))

(assert (= (and b!2897901 ((_ is Star!8855) (reg!9184 (regTwo!18222 r!23079)))) b!2898202))

(assert (= (and b!2897901 ((_ is Union!8855) (reg!9184 (regTwo!18222 r!23079)))) b!2898203))

(declare-fun b!2898209 () Bool)

(declare-fun e!1830743 () Bool)

(declare-fun tp!930125 () Bool)

(declare-fun tp!930127 () Bool)

(assert (=> b!2898209 (= e!1830743 (and tp!930125 tp!930127))))

(declare-fun b!2898210 () Bool)

(declare-fun tp!930128 () Bool)

(assert (=> b!2898210 (= e!1830743 tp!930128)))

(declare-fun b!2898208 () Bool)

(assert (=> b!2898208 (= e!1830743 tp_is_empty!15297)))

(assert (=> b!2897900 (= tp!930070 e!1830743)))

(declare-fun b!2898211 () Bool)

(declare-fun tp!930126 () Bool)

(declare-fun tp!930129 () Bool)

(assert (=> b!2898211 (= e!1830743 (and tp!930126 tp!930129))))

(assert (= (and b!2897900 ((_ is ElementMatch!8855) (regOne!18222 (regTwo!18222 r!23079)))) b!2898208))

(assert (= (and b!2897900 ((_ is Concat!14176) (regOne!18222 (regTwo!18222 r!23079)))) b!2898209))

(assert (= (and b!2897900 ((_ is Star!8855) (regOne!18222 (regTwo!18222 r!23079)))) b!2898210))

(assert (= (and b!2897900 ((_ is Union!8855) (regOne!18222 (regTwo!18222 r!23079)))) b!2898211))

(declare-fun b!2898213 () Bool)

(declare-fun e!1830744 () Bool)

(declare-fun tp!930130 () Bool)

(declare-fun tp!930132 () Bool)

(assert (=> b!2898213 (= e!1830744 (and tp!930130 tp!930132))))

(declare-fun b!2898214 () Bool)

(declare-fun tp!930133 () Bool)

(assert (=> b!2898214 (= e!1830744 tp!930133)))

(declare-fun b!2898212 () Bool)

(assert (=> b!2898212 (= e!1830744 tp_is_empty!15297)))

(assert (=> b!2897900 (= tp!930072 e!1830744)))

(declare-fun b!2898215 () Bool)

(declare-fun tp!930131 () Bool)

(declare-fun tp!930134 () Bool)

(assert (=> b!2898215 (= e!1830744 (and tp!930131 tp!930134))))

(assert (= (and b!2897900 ((_ is ElementMatch!8855) (regTwo!18222 (regTwo!18222 r!23079)))) b!2898212))

(assert (= (and b!2897900 ((_ is Concat!14176) (regTwo!18222 (regTwo!18222 r!23079)))) b!2898213))

(assert (= (and b!2897900 ((_ is Star!8855) (regTwo!18222 (regTwo!18222 r!23079)))) b!2898214))

(assert (= (and b!2897900 ((_ is Union!8855) (regTwo!18222 (regTwo!18222 r!23079)))) b!2898215))

(declare-fun b!2898217 () Bool)

(declare-fun e!1830745 () Bool)

(declare-fun tp!930135 () Bool)

(declare-fun tp!930137 () Bool)

(assert (=> b!2898217 (= e!1830745 (and tp!930135 tp!930137))))

(declare-fun b!2898218 () Bool)

(declare-fun tp!930138 () Bool)

(assert (=> b!2898218 (= e!1830745 tp!930138)))

(declare-fun b!2898216 () Bool)

(assert (=> b!2898216 (= e!1830745 tp_is_empty!15297)))

(assert (=> b!2897893 (= tp!930061 e!1830745)))

(declare-fun b!2898219 () Bool)

(declare-fun tp!930136 () Bool)

(declare-fun tp!930139 () Bool)

(assert (=> b!2898219 (= e!1830745 (and tp!930136 tp!930139))))

(assert (= (and b!2897893 ((_ is ElementMatch!8855) (reg!9184 (regTwo!18223 r!23079)))) b!2898216))

(assert (= (and b!2897893 ((_ is Concat!14176) (reg!9184 (regTwo!18223 r!23079)))) b!2898217))

(assert (= (and b!2897893 ((_ is Star!8855) (reg!9184 (regTwo!18223 r!23079)))) b!2898218))

(assert (= (and b!2897893 ((_ is Union!8855) (reg!9184 (regTwo!18223 r!23079)))) b!2898219))

(declare-fun b!2898221 () Bool)

(declare-fun e!1830746 () Bool)

(declare-fun tp!930140 () Bool)

(declare-fun tp!930142 () Bool)

(assert (=> b!2898221 (= e!1830746 (and tp!930140 tp!930142))))

(declare-fun b!2898222 () Bool)

(declare-fun tp!930143 () Bool)

(assert (=> b!2898222 (= e!1830746 tp!930143)))

(declare-fun b!2898220 () Bool)

(assert (=> b!2898220 (= e!1830746 tp_is_empty!15297)))

(assert (=> b!2897892 (= tp!930056 e!1830746)))

(declare-fun b!2898223 () Bool)

(declare-fun tp!930141 () Bool)

(declare-fun tp!930144 () Bool)

(assert (=> b!2898223 (= e!1830746 (and tp!930141 tp!930144))))

(assert (= (and b!2897892 ((_ is ElementMatch!8855) (regOne!18222 (regTwo!18223 r!23079)))) b!2898220))

(assert (= (and b!2897892 ((_ is Concat!14176) (regOne!18222 (regTwo!18223 r!23079)))) b!2898221))

(assert (= (and b!2897892 ((_ is Star!8855) (regOne!18222 (regTwo!18223 r!23079)))) b!2898222))

(assert (= (and b!2897892 ((_ is Union!8855) (regOne!18222 (regTwo!18223 r!23079)))) b!2898223))

(declare-fun b!2898241 () Bool)

(declare-fun e!1830755 () Bool)

(declare-fun tp!930145 () Bool)

(declare-fun tp!930147 () Bool)

(assert (=> b!2898241 (= e!1830755 (and tp!930145 tp!930147))))

(declare-fun b!2898242 () Bool)

(declare-fun tp!930148 () Bool)

(assert (=> b!2898242 (= e!1830755 tp!930148)))

(declare-fun b!2898240 () Bool)

(assert (=> b!2898240 (= e!1830755 tp_is_empty!15297)))

(assert (=> b!2897892 (= tp!930060 e!1830755)))

(declare-fun b!2898243 () Bool)

(declare-fun tp!930146 () Bool)

(declare-fun tp!930149 () Bool)

(assert (=> b!2898243 (= e!1830755 (and tp!930146 tp!930149))))

(assert (= (and b!2897892 ((_ is ElementMatch!8855) (regTwo!18222 (regTwo!18223 r!23079)))) b!2898240))

(assert (= (and b!2897892 ((_ is Concat!14176) (regTwo!18222 (regTwo!18223 r!23079)))) b!2898241))

(assert (= (and b!2897892 ((_ is Star!8855) (regTwo!18222 (regTwo!18223 r!23079)))) b!2898242))

(assert (= (and b!2897892 ((_ is Union!8855) (regTwo!18222 (regTwo!18223 r!23079)))) b!2898243))

(declare-fun b!2898245 () Bool)

(declare-fun e!1830756 () Bool)

(declare-fun tp!930150 () Bool)

(declare-fun tp!930152 () Bool)

(assert (=> b!2898245 (= e!1830756 (and tp!930150 tp!930152))))

(declare-fun b!2898246 () Bool)

(declare-fun tp!930153 () Bool)

(assert (=> b!2898246 (= e!1830756 tp!930153)))

(declare-fun b!2898244 () Bool)

(assert (=> b!2898244 (= e!1830756 tp_is_empty!15297)))

(assert (=> b!2897885 (= tp!930048 e!1830756)))

(declare-fun b!2898247 () Bool)

(declare-fun tp!930151 () Bool)

(declare-fun tp!930154 () Bool)

(assert (=> b!2898247 (= e!1830756 (and tp!930151 tp!930154))))

(assert (= (and b!2897885 ((_ is ElementMatch!8855) (reg!9184 (regOne!18223 r!23079)))) b!2898244))

(assert (= (and b!2897885 ((_ is Concat!14176) (reg!9184 (regOne!18223 r!23079)))) b!2898245))

(assert (= (and b!2897885 ((_ is Star!8855) (reg!9184 (regOne!18223 r!23079)))) b!2898246))

(assert (= (and b!2897885 ((_ is Union!8855) (reg!9184 (regOne!18223 r!23079)))) b!2898247))

(declare-fun b!2898249 () Bool)

(declare-fun e!1830757 () Bool)

(declare-fun tp!930155 () Bool)

(declare-fun tp!930157 () Bool)

(assert (=> b!2898249 (= e!1830757 (and tp!930155 tp!930157))))

(declare-fun b!2898250 () Bool)

(declare-fun tp!930158 () Bool)

(assert (=> b!2898250 (= e!1830757 tp!930158)))

(declare-fun b!2898248 () Bool)

(assert (=> b!2898248 (= e!1830757 tp_is_empty!15297)))

(assert (=> b!2897884 (= tp!930045 e!1830757)))

(declare-fun b!2898251 () Bool)

(declare-fun tp!930156 () Bool)

(declare-fun tp!930159 () Bool)

(assert (=> b!2898251 (= e!1830757 (and tp!930156 tp!930159))))

(assert (= (and b!2897884 ((_ is ElementMatch!8855) (regOne!18222 (regOne!18223 r!23079)))) b!2898248))

(assert (= (and b!2897884 ((_ is Concat!14176) (regOne!18222 (regOne!18223 r!23079)))) b!2898249))

(assert (= (and b!2897884 ((_ is Star!8855) (regOne!18222 (regOne!18223 r!23079)))) b!2898250))

(assert (= (and b!2897884 ((_ is Union!8855) (regOne!18222 (regOne!18223 r!23079)))) b!2898251))

(declare-fun b!2898253 () Bool)

(declare-fun e!1830758 () Bool)

(declare-fun tp!930160 () Bool)

(declare-fun tp!930162 () Bool)

(assert (=> b!2898253 (= e!1830758 (and tp!930160 tp!930162))))

(declare-fun b!2898254 () Bool)

(declare-fun tp!930163 () Bool)

(assert (=> b!2898254 (= e!1830758 tp!930163)))

(declare-fun b!2898252 () Bool)

(assert (=> b!2898252 (= e!1830758 tp_is_empty!15297)))

(assert (=> b!2897884 (= tp!930047 e!1830758)))

(declare-fun b!2898255 () Bool)

(declare-fun tp!930161 () Bool)

(declare-fun tp!930164 () Bool)

(assert (=> b!2898255 (= e!1830758 (and tp!930161 tp!930164))))

(assert (= (and b!2897884 ((_ is ElementMatch!8855) (regTwo!18222 (regOne!18223 r!23079)))) b!2898252))

(assert (= (and b!2897884 ((_ is Concat!14176) (regTwo!18222 (regOne!18223 r!23079)))) b!2898253))

(assert (= (and b!2897884 ((_ is Star!8855) (regTwo!18222 (regOne!18223 r!23079)))) b!2898254))

(assert (= (and b!2897884 ((_ is Union!8855) (regTwo!18222 (regOne!18223 r!23079)))) b!2898255))

(declare-fun b!2898257 () Bool)

(declare-fun e!1830759 () Bool)

(declare-fun tp!930165 () Bool)

(declare-fun tp!930167 () Bool)

(assert (=> b!2898257 (= e!1830759 (and tp!930165 tp!930167))))

(declare-fun b!2898258 () Bool)

(declare-fun tp!930168 () Bool)

(assert (=> b!2898258 (= e!1830759 tp!930168)))

(declare-fun b!2898256 () Bool)

(assert (=> b!2898256 (= e!1830759 tp_is_empty!15297)))

(assert (=> b!2897876 (= tp!930041 e!1830759)))

(declare-fun b!2898259 () Bool)

(declare-fun tp!930166 () Bool)

(declare-fun tp!930169 () Bool)

(assert (=> b!2898259 (= e!1830759 (and tp!930166 tp!930169))))

(assert (= (and b!2897876 ((_ is ElementMatch!8855) (regOne!18223 (reg!9184 r!23079)))) b!2898256))

(assert (= (and b!2897876 ((_ is Concat!14176) (regOne!18223 (reg!9184 r!23079)))) b!2898257))

(assert (= (and b!2897876 ((_ is Star!8855) (regOne!18223 (reg!9184 r!23079)))) b!2898258))

(assert (= (and b!2897876 ((_ is Union!8855) (regOne!18223 (reg!9184 r!23079)))) b!2898259))

(declare-fun b!2898261 () Bool)

(declare-fun e!1830760 () Bool)

(declare-fun tp!930170 () Bool)

(declare-fun tp!930172 () Bool)

(assert (=> b!2898261 (= e!1830760 (and tp!930170 tp!930172))))

(declare-fun b!2898262 () Bool)

(declare-fun tp!930173 () Bool)

(assert (=> b!2898262 (= e!1830760 tp!930173)))

(declare-fun b!2898260 () Bool)

(assert (=> b!2898260 (= e!1830760 tp_is_empty!15297)))

(assert (=> b!2897876 (= tp!930044 e!1830760)))

(declare-fun b!2898263 () Bool)

(declare-fun tp!930171 () Bool)

(declare-fun tp!930174 () Bool)

(assert (=> b!2898263 (= e!1830760 (and tp!930171 tp!930174))))

(assert (= (and b!2897876 ((_ is ElementMatch!8855) (regTwo!18223 (reg!9184 r!23079)))) b!2898260))

(assert (= (and b!2897876 ((_ is Concat!14176) (regTwo!18223 (reg!9184 r!23079)))) b!2898261))

(assert (= (and b!2897876 ((_ is Star!8855) (regTwo!18223 (reg!9184 r!23079)))) b!2898262))

(assert (= (and b!2897876 ((_ is Union!8855) (regTwo!18223 (reg!9184 r!23079)))) b!2898263))

(declare-fun b!2898265 () Bool)

(declare-fun e!1830761 () Bool)

(declare-fun tp!930175 () Bool)

(declare-fun tp!930177 () Bool)

(assert (=> b!2898265 (= e!1830761 (and tp!930175 tp!930177))))

(declare-fun b!2898266 () Bool)

(declare-fun tp!930178 () Bool)

(assert (=> b!2898266 (= e!1830761 tp!930178)))

(declare-fun b!2898264 () Bool)

(assert (=> b!2898264 (= e!1830761 tp_is_empty!15297)))

(assert (=> b!2897898 (= tp!930066 e!1830761)))

(declare-fun b!2898267 () Bool)

(declare-fun tp!930176 () Bool)

(declare-fun tp!930179 () Bool)

(assert (=> b!2898267 (= e!1830761 (and tp!930176 tp!930179))))

(assert (= (and b!2897898 ((_ is ElementMatch!8855) (regOne!18223 (regOne!18222 r!23079)))) b!2898264))

(assert (= (and b!2897898 ((_ is Concat!14176) (regOne!18223 (regOne!18222 r!23079)))) b!2898265))

(assert (= (and b!2897898 ((_ is Star!8855) (regOne!18223 (regOne!18222 r!23079)))) b!2898266))

(assert (= (and b!2897898 ((_ is Union!8855) (regOne!18223 (regOne!18222 r!23079)))) b!2898267))

(declare-fun b!2898285 () Bool)

(declare-fun e!1830770 () Bool)

(declare-fun tp!930180 () Bool)

(declare-fun tp!930182 () Bool)

(assert (=> b!2898285 (= e!1830770 (and tp!930180 tp!930182))))

(declare-fun b!2898286 () Bool)

(declare-fun tp!930183 () Bool)

(assert (=> b!2898286 (= e!1830770 tp!930183)))

(declare-fun b!2898284 () Bool)

(assert (=> b!2898284 (= e!1830770 tp_is_empty!15297)))

(assert (=> b!2897898 (= tp!930069 e!1830770)))

(declare-fun b!2898287 () Bool)

(declare-fun tp!930181 () Bool)

(declare-fun tp!930184 () Bool)

(assert (=> b!2898287 (= e!1830770 (and tp!930181 tp!930184))))

(assert (= (and b!2897898 ((_ is ElementMatch!8855) (regTwo!18223 (regOne!18222 r!23079)))) b!2898284))

(assert (= (and b!2897898 ((_ is Concat!14176) (regTwo!18223 (regOne!18222 r!23079)))) b!2898285))

(assert (= (and b!2897898 ((_ is Star!8855) (regTwo!18223 (regOne!18222 r!23079)))) b!2898286))

(assert (= (and b!2897898 ((_ is Union!8855) (regTwo!18223 (regOne!18222 r!23079)))) b!2898287))

(declare-fun b!2898289 () Bool)

(declare-fun e!1830771 () Bool)

(declare-fun tp!930185 () Bool)

(declare-fun tp!930187 () Bool)

(assert (=> b!2898289 (= e!1830771 (and tp!930185 tp!930187))))

(declare-fun b!2898290 () Bool)

(declare-fun tp!930188 () Bool)

(assert (=> b!2898290 (= e!1830771 tp!930188)))

(declare-fun b!2898288 () Bool)

(assert (=> b!2898288 (= e!1830771 tp_is_empty!15297)))

(assert (=> b!2897875 (= tp!930043 e!1830771)))

(declare-fun b!2898291 () Bool)

(declare-fun tp!930186 () Bool)

(declare-fun tp!930189 () Bool)

(assert (=> b!2898291 (= e!1830771 (and tp!930186 tp!930189))))

(assert (= (and b!2897875 ((_ is ElementMatch!8855) (reg!9184 (reg!9184 r!23079)))) b!2898288))

(assert (= (and b!2897875 ((_ is Concat!14176) (reg!9184 (reg!9184 r!23079)))) b!2898289))

(assert (= (and b!2897875 ((_ is Star!8855) (reg!9184 (reg!9184 r!23079)))) b!2898290))

(assert (= (and b!2897875 ((_ is Union!8855) (reg!9184 (reg!9184 r!23079)))) b!2898291))

(declare-fun b!2898293 () Bool)

(declare-fun e!1830772 () Bool)

(declare-fun tp!930190 () Bool)

(declare-fun tp!930192 () Bool)

(assert (=> b!2898293 (= e!1830772 (and tp!930190 tp!930192))))

(declare-fun b!2898294 () Bool)

(declare-fun tp!930193 () Bool)

(assert (=> b!2898294 (= e!1830772 tp!930193)))

(declare-fun b!2898292 () Bool)

(assert (=> b!2898292 (= e!1830772 tp_is_empty!15297)))

(assert (=> b!2897902 (= tp!930071 e!1830772)))

(declare-fun b!2898295 () Bool)

(declare-fun tp!930191 () Bool)

(declare-fun tp!930194 () Bool)

(assert (=> b!2898295 (= e!1830772 (and tp!930191 tp!930194))))

(assert (= (and b!2897902 ((_ is ElementMatch!8855) (regOne!18223 (regTwo!18222 r!23079)))) b!2898292))

(assert (= (and b!2897902 ((_ is Concat!14176) (regOne!18223 (regTwo!18222 r!23079)))) b!2898293))

(assert (= (and b!2897902 ((_ is Star!8855) (regOne!18223 (regTwo!18222 r!23079)))) b!2898294))

(assert (= (and b!2897902 ((_ is Union!8855) (regOne!18223 (regTwo!18222 r!23079)))) b!2898295))

(declare-fun b!2898297 () Bool)

(declare-fun e!1830773 () Bool)

(declare-fun tp!930195 () Bool)

(declare-fun tp!930197 () Bool)

(assert (=> b!2898297 (= e!1830773 (and tp!930195 tp!930197))))

(declare-fun b!2898298 () Bool)

(declare-fun tp!930198 () Bool)

(assert (=> b!2898298 (= e!1830773 tp!930198)))

(declare-fun b!2898296 () Bool)

(assert (=> b!2898296 (= e!1830773 tp_is_empty!15297)))

(assert (=> b!2897902 (= tp!930074 e!1830773)))

(declare-fun b!2898299 () Bool)

(declare-fun tp!930196 () Bool)

(declare-fun tp!930199 () Bool)

(assert (=> b!2898299 (= e!1830773 (and tp!930196 tp!930199))))

(assert (= (and b!2897902 ((_ is ElementMatch!8855) (regTwo!18223 (regTwo!18222 r!23079)))) b!2898296))

(assert (= (and b!2897902 ((_ is Concat!14176) (regTwo!18223 (regTwo!18222 r!23079)))) b!2898297))

(assert (= (and b!2897902 ((_ is Star!8855) (regTwo!18223 (regTwo!18222 r!23079)))) b!2898298))

(assert (= (and b!2897902 ((_ is Union!8855) (regTwo!18223 (regTwo!18222 r!23079)))) b!2898299))

(declare-fun b!2898301 () Bool)

(declare-fun e!1830774 () Bool)

(declare-fun tp!930200 () Bool)

(declare-fun tp!930202 () Bool)

(assert (=> b!2898301 (= e!1830774 (and tp!930200 tp!930202))))

(declare-fun b!2898302 () Bool)

(declare-fun tp!930203 () Bool)

(assert (=> b!2898302 (= e!1830774 tp!930203)))

(declare-fun b!2898300 () Bool)

(assert (=> b!2898300 (= e!1830774 tp_is_empty!15297)))

(assert (=> b!2897894 (= tp!930059 e!1830774)))

(declare-fun b!2898303 () Bool)

(declare-fun tp!930201 () Bool)

(declare-fun tp!930204 () Bool)

(assert (=> b!2898303 (= e!1830774 (and tp!930201 tp!930204))))

(assert (= (and b!2897894 ((_ is ElementMatch!8855) (regOne!18223 (regTwo!18223 r!23079)))) b!2898300))

(assert (= (and b!2897894 ((_ is Concat!14176) (regOne!18223 (regTwo!18223 r!23079)))) b!2898301))

(assert (= (and b!2897894 ((_ is Star!8855) (regOne!18223 (regTwo!18223 r!23079)))) b!2898302))

(assert (= (and b!2897894 ((_ is Union!8855) (regOne!18223 (regTwo!18223 r!23079)))) b!2898303))

(declare-fun b!2898305 () Bool)

(declare-fun e!1830775 () Bool)

(declare-fun tp!930205 () Bool)

(declare-fun tp!930207 () Bool)

(assert (=> b!2898305 (= e!1830775 (and tp!930205 tp!930207))))

(declare-fun b!2898306 () Bool)

(declare-fun tp!930208 () Bool)

(assert (=> b!2898306 (= e!1830775 tp!930208)))

(declare-fun b!2898304 () Bool)

(assert (=> b!2898304 (= e!1830775 tp_is_empty!15297)))

(assert (=> b!2897894 (= tp!930062 e!1830775)))

(declare-fun b!2898307 () Bool)

(declare-fun tp!930206 () Bool)

(declare-fun tp!930209 () Bool)

(assert (=> b!2898307 (= e!1830775 (and tp!930206 tp!930209))))

(assert (= (and b!2897894 ((_ is ElementMatch!8855) (regTwo!18223 (regTwo!18223 r!23079)))) b!2898304))

(assert (= (and b!2897894 ((_ is Concat!14176) (regTwo!18223 (regTwo!18223 r!23079)))) b!2898305))

(assert (= (and b!2897894 ((_ is Star!8855) (regTwo!18223 (regTwo!18223 r!23079)))) b!2898306))

(assert (= (and b!2897894 ((_ is Union!8855) (regTwo!18223 (regTwo!18223 r!23079)))) b!2898307))

(declare-fun b!2898309 () Bool)

(declare-fun e!1830776 () Bool)

(declare-fun tp!930210 () Bool)

(declare-fun tp!930212 () Bool)

(assert (=> b!2898309 (= e!1830776 (and tp!930210 tp!930212))))

(declare-fun b!2898310 () Bool)

(declare-fun tp!930213 () Bool)

(assert (=> b!2898310 (= e!1830776 tp!930213)))

(declare-fun b!2898308 () Bool)

(assert (=> b!2898308 (= e!1830776 tp_is_empty!15297)))

(assert (=> b!2897897 (= tp!930068 e!1830776)))

(declare-fun b!2898311 () Bool)

(declare-fun tp!930211 () Bool)

(declare-fun tp!930214 () Bool)

(assert (=> b!2898311 (= e!1830776 (and tp!930211 tp!930214))))

(assert (= (and b!2897897 ((_ is ElementMatch!8855) (reg!9184 (regOne!18222 r!23079)))) b!2898308))

(assert (= (and b!2897897 ((_ is Concat!14176) (reg!9184 (regOne!18222 r!23079)))) b!2898309))

(assert (= (and b!2897897 ((_ is Star!8855) (reg!9184 (regOne!18222 r!23079)))) b!2898310))

(assert (= (and b!2897897 ((_ is Union!8855) (reg!9184 (regOne!18222 r!23079)))) b!2898311))

(declare-fun b!2898313 () Bool)

(declare-fun e!1830777 () Bool)

(declare-fun tp!930215 () Bool)

(declare-fun tp!930217 () Bool)

(assert (=> b!2898313 (= e!1830777 (and tp!930215 tp!930217))))

(declare-fun b!2898314 () Bool)

(declare-fun tp!930218 () Bool)

(assert (=> b!2898314 (= e!1830777 tp!930218)))

(declare-fun b!2898312 () Bool)

(assert (=> b!2898312 (= e!1830777 tp_is_empty!15297)))

(assert (=> b!2897874 (= tp!930040 e!1830777)))

(declare-fun b!2898315 () Bool)

(declare-fun tp!930216 () Bool)

(declare-fun tp!930219 () Bool)

(assert (=> b!2898315 (= e!1830777 (and tp!930216 tp!930219))))

(assert (= (and b!2897874 ((_ is ElementMatch!8855) (regOne!18222 (reg!9184 r!23079)))) b!2898312))

(assert (= (and b!2897874 ((_ is Concat!14176) (regOne!18222 (reg!9184 r!23079)))) b!2898313))

(assert (= (and b!2897874 ((_ is Star!8855) (regOne!18222 (reg!9184 r!23079)))) b!2898314))

(assert (= (and b!2897874 ((_ is Union!8855) (regOne!18222 (reg!9184 r!23079)))) b!2898315))

(declare-fun b!2898317 () Bool)

(declare-fun e!1830778 () Bool)

(declare-fun tp!930220 () Bool)

(declare-fun tp!930222 () Bool)

(assert (=> b!2898317 (= e!1830778 (and tp!930220 tp!930222))))

(declare-fun b!2898318 () Bool)

(declare-fun tp!930223 () Bool)

(assert (=> b!2898318 (= e!1830778 tp!930223)))

(declare-fun b!2898316 () Bool)

(assert (=> b!2898316 (= e!1830778 tp_is_empty!15297)))

(assert (=> b!2897874 (= tp!930042 e!1830778)))

(declare-fun b!2898319 () Bool)

(declare-fun tp!930221 () Bool)

(declare-fun tp!930224 () Bool)

(assert (=> b!2898319 (= e!1830778 (and tp!930221 tp!930224))))

(assert (= (and b!2897874 ((_ is ElementMatch!8855) (regTwo!18222 (reg!9184 r!23079)))) b!2898316))

(assert (= (and b!2897874 ((_ is Concat!14176) (regTwo!18222 (reg!9184 r!23079)))) b!2898317))

(assert (= (and b!2897874 ((_ is Star!8855) (regTwo!18222 (reg!9184 r!23079)))) b!2898318))

(assert (= (and b!2897874 ((_ is Union!8855) (regTwo!18222 (reg!9184 r!23079)))) b!2898319))

(check-sat (not b!2897996) (not b!2898258) (not b!2898163) (not b!2898185) (not b!2897972) (not b!2898197) (not b!2898311) (not bm!188662) (not b!2898203) (not b!2898250) (not b!2897968) (not d!835079) (not bm!188661) (not b!2898223) (not b!2897957) (not b!2898158) (not bm!188664) (not b!2898166) (not b!2898249) (not d!835105) (not bm!188633) (not bm!188676) (not b!2898298) (not b!2897929) (not b!2898241) (not b!2898317) (not b!2898115) (not b!2897965) (not bm!188654) (not bm!188634) (not d!835127) (not bm!188630) (not b!2898092) (not b!2898245) (not b!2898255) (not b!2898318) (not b!2898291) (not b!2898253) (not b!2898302) (not b!2898267) (not b!2898309) (not b!2898222) (not b!2898048) (not b!2898303) (not bm!188655) (not b!2897935) (not bm!188675) (not bm!188650) (not b!2898251) (not b!2898314) (not b!2898210) (not b!2898221) (not b!2898307) (not bm!188669) (not b!2898310) (not bm!188674) (not b!2898290) (not b!2898201) (not d!835077) (not bm!188656) (not b!2898313) (not d!835101) (not bm!188635) (not d!835075) (not b!2898261) (not b!2898293) (not b!2898305) (not b!2898319) (not b!2898187) (not b!2898295) (not b!2898161) (not bm!188645) (not d!835073) (not b!2898257) (not bm!188673) (not b!2898286) (not b!2898186) (not b!2898213) (not b!2898209) (not b!2898217) (not b!2898287) (not b!2898265) (not b!2898189) (not b!2898285) tp_is_empty!15297 (not b!2898026) (not b!2898242) (not b!2898301) (not b!2898083) (not b!2898294) (not b!2898181) (not b!2898211) (not b!2898195) (not b!2897963) (not b!2898262) (not b!2898219) (not bm!188649) (not bm!188668) (not b!2898259) (not b!2898218) (not b!2898088) (not bm!188653) (not b!2897958) (not b!2898254) (not b!2898202) (not bm!188646) (not b!2898140) (not d!835103) (not d!835129) (not bm!188652) (not b!2898087) (not b!2898297) (not b!2898306) (not b!2898243) (not bm!188659) (not b!2898289) (not d!835133) (not b!2898246) (not b!2898194) (not b!2897973) (not bm!188632) (not b!2898247) (not b!2898091) (not b!2898315) (not b!2898215) (not bm!188648) (not b!2897970) (not b!2898007) (not b!2898190) (not b!2898032) (not b!2898165) (not b!2898214) (not b!2898100) (not b!2898199) (not b!2898193) (not bm!188678) (not b!2898263) (not b!2898191) (not b!2898198) (not b!2898266) (not b!2898299) (not b!2898156))
(check-sat)
