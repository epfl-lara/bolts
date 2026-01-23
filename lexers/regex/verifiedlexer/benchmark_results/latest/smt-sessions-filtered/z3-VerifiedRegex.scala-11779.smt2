; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664222 () Bool)

(assert start!664222)

(declare-fun b!6889718 () Bool)

(assert (=> b!6889718 true))

(assert (=> b!6889718 true))

(assert (=> b!6889718 true))

(declare-fun lambda!390546 () Int)

(declare-fun lambda!390545 () Int)

(assert (=> b!6889718 (not (= lambda!390546 lambda!390545))))

(assert (=> b!6889718 true))

(assert (=> b!6889718 true))

(assert (=> b!6889718 true))

(declare-fun bs!1839802 () Bool)

(declare-fun b!6889727 () Bool)

(assert (= bs!1839802 (and b!6889727 b!6889718)))

(declare-datatypes ((C!33880 0))(
  ( (C!33881 (val!26642 Int)) )
))
(declare-datatypes ((Regex!16805 0))(
  ( (ElementMatch!16805 (c!1280991 C!33880)) (Concat!25650 (regOne!34122 Regex!16805) (regTwo!34122 Regex!16805)) (EmptyExpr!16805) (Star!16805 (reg!17134 Regex!16805)) (EmptyLang!16805) (Union!16805 (regOne!34123 Regex!16805) (regTwo!34123 Regex!16805)) )
))
(declare-fun r1!6342 () Regex!16805)

(declare-fun r3!135 () Regex!16805)

(declare-fun lt!2462714 () Regex!16805)

(declare-datatypes ((List!66562 0))(
  ( (Nil!66438) (Cons!66438 (h!72886 C!33880) (t!380305 List!66562)) )
))
(declare-datatypes ((tuple2!67356 0))(
  ( (tuple2!67357 (_1!36981 List!66562) (_2!36981 List!66562)) )
))
(declare-fun lt!2462711 () tuple2!67356)

(declare-fun r2!6280 () Regex!16805)

(declare-fun lambda!390547 () Int)

(declare-fun s!14361 () List!66562)

(assert (=> bs!1839802 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390547 lambda!390545))))

(assert (=> bs!1839802 (not (= lambda!390547 lambda!390546))))

(assert (=> b!6889727 true))

(assert (=> b!6889727 true))

(assert (=> b!6889727 true))

(declare-fun lambda!390548 () Int)

(assert (=> bs!1839802 (not (= lambda!390548 lambda!390545))))

(assert (=> bs!1839802 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390548 lambda!390546))))

(assert (=> b!6889727 (not (= lambda!390548 lambda!390547))))

(assert (=> b!6889727 true))

(assert (=> b!6889727 true))

(assert (=> b!6889727 true))

(declare-fun bs!1839803 () Bool)

(declare-fun b!6889711 () Bool)

(assert (= bs!1839803 (and b!6889711 b!6889718)))

(declare-fun lt!2462693 () List!66562)

(declare-fun lambda!390549 () Int)

(assert (=> bs!1839803 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390549 lambda!390545))))

(assert (=> bs!1839803 (not (= lambda!390549 lambda!390546))))

(declare-fun bs!1839804 () Bool)

(assert (= bs!1839804 (and b!6889711 b!6889727)))

(assert (=> bs!1839804 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390549 lambda!390547))))

(assert (=> bs!1839804 (not (= lambda!390549 lambda!390548))))

(assert (=> b!6889711 true))

(assert (=> b!6889711 true))

(assert (=> b!6889711 true))

(declare-fun lambda!390550 () Int)

(assert (=> b!6889711 (not (= lambda!390550 lambda!390549))))

(assert (=> bs!1839804 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390550 lambda!390548))))

(assert (=> bs!1839803 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390550 lambda!390546))))

(assert (=> bs!1839804 (not (= lambda!390550 lambda!390547))))

(assert (=> bs!1839803 (not (= lambda!390550 lambda!390545))))

(assert (=> b!6889711 true))

(assert (=> b!6889711 true))

(assert (=> b!6889711 true))

(declare-fun bs!1839805 () Bool)

(declare-fun b!6889717 () Bool)

(assert (= bs!1839805 (and b!6889717 b!6889711)))

(declare-fun lt!2462716 () Regex!16805)

(declare-fun lambda!390551 () Int)

(assert (=> bs!1839805 (= (and (= s!14361 lt!2462693) (= r1!6342 r2!6280) (= lt!2462716 r3!135)) (= lambda!390551 lambda!390549))))

(declare-fun bs!1839806 () Bool)

(assert (= bs!1839806 (and b!6889717 b!6889727)))

(assert (=> bs!1839806 (not (= lambda!390551 lambda!390548))))

(assert (=> bs!1839805 (not (= lambda!390551 lambda!390550))))

(declare-fun bs!1839807 () Bool)

(assert (= bs!1839807 (and b!6889717 b!6889718)))

(assert (=> bs!1839807 (not (= lambda!390551 lambda!390546))))

(assert (=> bs!1839806 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462716 r2!6280)) (= lambda!390551 lambda!390547))))

(assert (=> bs!1839807 (= (and (= r1!6342 lt!2462714) (= lt!2462716 r3!135)) (= lambda!390551 lambda!390545))))

(assert (=> b!6889717 true))

(assert (=> b!6889717 true))

(assert (=> b!6889717 true))

(declare-fun bs!1839808 () Bool)

(declare-fun b!6889709 () Bool)

(assert (= bs!1839808 (and b!6889709 b!6889711)))

(declare-fun lambda!390552 () Int)

(assert (=> bs!1839808 (not (= lambda!390552 lambda!390549))))

(declare-fun bs!1839809 () Bool)

(assert (= bs!1839809 (and b!6889709 b!6889727)))

(assert (=> bs!1839809 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462716 r2!6280)) (= lambda!390552 lambda!390548))))

(assert (=> bs!1839808 (= (and (= s!14361 lt!2462693) (= r1!6342 r2!6280) (= lt!2462716 r3!135)) (= lambda!390552 lambda!390550))))

(declare-fun bs!1839810 () Bool)

(assert (= bs!1839810 (and b!6889709 b!6889718)))

(assert (=> bs!1839810 (= (and (= r1!6342 lt!2462714) (= lt!2462716 r3!135)) (= lambda!390552 lambda!390546))))

(declare-fun bs!1839811 () Bool)

(assert (= bs!1839811 (and b!6889709 b!6889717)))

(assert (=> bs!1839811 (not (= lambda!390552 lambda!390551))))

(assert (=> bs!1839809 (not (= lambda!390552 lambda!390547))))

(assert (=> bs!1839810 (not (= lambda!390552 lambda!390545))))

(assert (=> b!6889709 true))

(assert (=> b!6889709 true))

(assert (=> b!6889709 true))

(declare-fun e!4150698 () Bool)

(declare-fun lt!2462719 () Regex!16805)

(declare-fun validRegex!8513 (Regex!16805) Bool)

(assert (=> b!6889709 (= e!4150698 (validRegex!8513 lt!2462719))))

(declare-fun Exists!3817 (Int) Bool)

(assert (=> b!6889709 (= (Exists!3817 lambda!390551) (Exists!3817 lambda!390552))))

(declare-datatypes ((Unit!160330 0))(
  ( (Unit!160331) )
))
(declare-fun lt!2462717 () Unit!160330)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2296 (Regex!16805 Regex!16805 List!66562) Unit!160330)

(assert (=> b!6889709 (= lt!2462717 (lemmaExistCutMatchRandMatchRSpecEquivalent!2296 r1!6342 lt!2462716 s!14361))))

(declare-fun b!6889710 () Bool)

(declare-fun e!4150701 () Bool)

(declare-fun e!4150706 () Bool)

(assert (=> b!6889710 (= e!4150701 e!4150706)))

(declare-fun res!2809076 () Bool)

(assert (=> b!6889710 (=> res!2809076 e!4150706)))

(declare-fun lt!2462692 () List!66562)

(assert (=> b!6889710 (= res!2809076 (not (= lt!2462692 s!14361)))))

(declare-fun lt!2462718 () tuple2!67356)

(declare-fun ++!14884 (List!66562 List!66562) List!66562)

(assert (=> b!6889710 (= lt!2462692 (++!14884 (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718)) (_2!36981 lt!2462711)))))

(declare-fun matchRSpec!3868 (Regex!16805 List!66562) Bool)

(assert (=> b!6889710 (matchRSpec!3868 r2!6280 (_2!36981 lt!2462718))))

(declare-fun lt!2462700 () Unit!160330)

(declare-fun mainMatchTheorem!3868 (Regex!16805 List!66562) Unit!160330)

(assert (=> b!6889710 (= lt!2462700 (mainMatchTheorem!3868 r2!6280 (_2!36981 lt!2462718)))))

(assert (=> b!6889710 (matchRSpec!3868 r1!6342 (_1!36981 lt!2462718))))

(declare-fun lt!2462697 () Unit!160330)

(assert (=> b!6889710 (= lt!2462697 (mainMatchTheorem!3868 r1!6342 (_1!36981 lt!2462718)))))

(declare-fun e!4150705 () Bool)

(assert (=> b!6889711 (= e!4150706 e!4150705)))

(declare-fun res!2809080 () Bool)

(assert (=> b!6889711 (=> res!2809080 e!4150705)))

(declare-fun lt!2462703 () Bool)

(assert (=> b!6889711 (= res!2809080 (not lt!2462703))))

(declare-fun lt!2462701 () Bool)

(assert (=> b!6889711 lt!2462701))

(declare-fun lt!2462709 () Unit!160330)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!52 (Regex!16805 Regex!16805 List!66562 List!66562 List!66562 List!66562 List!66562) Unit!160330)

(assert (=> b!6889711 (= lt!2462709 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!52 r2!6280 r3!135 (_2!36981 lt!2462718) (_2!36981 lt!2462711) lt!2462693 Nil!66438 lt!2462693))))

(assert (=> b!6889711 (= (Exists!3817 lambda!390549) (Exists!3817 lambda!390550))))

(declare-fun lt!2462694 () Unit!160330)

(assert (=> b!6889711 (= lt!2462694 (lemmaExistCutMatchRandMatchRSpecEquivalent!2296 r2!6280 r3!135 lt!2462693))))

(assert (=> b!6889711 (= lt!2462701 (Exists!3817 lambda!390549))))

(declare-datatypes ((Option!16590 0))(
  ( (None!16589) (Some!16589 (v!52861 tuple2!67356)) )
))
(declare-fun isDefined!13293 (Option!16590) Bool)

(declare-fun findConcatSeparation!3004 (Regex!16805 Regex!16805 List!66562 List!66562 List!66562) Option!16590)

(assert (=> b!6889711 (= lt!2462701 (isDefined!13293 (findConcatSeparation!3004 r2!6280 r3!135 Nil!66438 lt!2462693 lt!2462693)))))

(declare-fun lt!2462712 () Unit!160330)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2768 (Regex!16805 Regex!16805 List!66562) Unit!160330)

(assert (=> b!6889711 (= lt!2462712 (lemmaFindConcatSeparationEquivalentToExists!2768 r2!6280 r3!135 lt!2462693))))

(assert (=> b!6889711 (= lt!2462703 (matchRSpec!3868 lt!2462716 lt!2462693))))

(declare-fun matchR!8950 (Regex!16805 List!66562) Bool)

(assert (=> b!6889711 (= lt!2462703 (matchR!8950 lt!2462716 lt!2462693))))

(declare-fun lt!2462705 () Unit!160330)

(assert (=> b!6889711 (= lt!2462705 (mainMatchTheorem!3868 lt!2462716 lt!2462693))))

(assert (=> b!6889711 (= lt!2462693 (++!14884 (_2!36981 lt!2462718) (_2!36981 lt!2462711)))))

(declare-fun b!6889713 () Bool)

(declare-fun e!4150699 () Bool)

(declare-fun tp!1895566 () Bool)

(declare-fun tp!1895567 () Bool)

(assert (=> b!6889713 (= e!4150699 (and tp!1895566 tp!1895567))))

(declare-fun b!6889714 () Bool)

(declare-fun e!4150697 () Bool)

(declare-fun tp_is_empty!42835 () Bool)

(assert (=> b!6889714 (= e!4150697 tp_is_empty!42835)))

(declare-fun b!6889715 () Bool)

(assert (=> b!6889715 (= e!4150699 tp_is_empty!42835)))

(declare-fun b!6889716 () Bool)

(declare-fun e!4150695 () Bool)

(declare-fun e!4150696 () Bool)

(assert (=> b!6889716 (= e!4150695 (not e!4150696))))

(declare-fun res!2809078 () Bool)

(assert (=> b!6889716 (=> res!2809078 e!4150696)))

(declare-fun lt!2462707 () Bool)

(assert (=> b!6889716 (= res!2809078 (not lt!2462707))))

(assert (=> b!6889716 (= (matchR!8950 lt!2462719 s!14361) (matchRSpec!3868 lt!2462719 s!14361))))

(declare-fun lt!2462689 () Unit!160330)

(assert (=> b!6889716 (= lt!2462689 (mainMatchTheorem!3868 lt!2462719 s!14361))))

(declare-fun lt!2462688 () Regex!16805)

(assert (=> b!6889716 (= lt!2462707 (matchRSpec!3868 lt!2462688 s!14361))))

(assert (=> b!6889716 (= lt!2462707 (matchR!8950 lt!2462688 s!14361))))

(declare-fun lt!2462691 () Unit!160330)

(assert (=> b!6889716 (= lt!2462691 (mainMatchTheorem!3868 lt!2462688 s!14361))))

(assert (=> b!6889716 (= lt!2462719 (Concat!25650 r1!6342 lt!2462716))))

(assert (=> b!6889716 (= lt!2462716 (Concat!25650 r2!6280 r3!135))))

(assert (=> b!6889716 (= lt!2462688 (Concat!25650 lt!2462714 r3!135))))

(assert (=> b!6889716 (= lt!2462714 (Concat!25650 r1!6342 r2!6280))))

(declare-fun e!4150702 () Bool)

(assert (=> b!6889717 (= e!4150702 e!4150698)))

(declare-fun res!2809074 () Bool)

(assert (=> b!6889717 (=> res!2809074 e!4150698)))

(assert (=> b!6889717 (= res!2809074 (not (validRegex!8513 lt!2462716)))))

(assert (=> b!6889717 (Exists!3817 lambda!390551)))

(declare-fun lt!2462698 () Unit!160330)

(assert (=> b!6889717 (= lt!2462698 (lemmaFindConcatSeparationEquivalentToExists!2768 r1!6342 lt!2462716 s!14361))))

(assert (=> b!6889717 (isDefined!13293 (findConcatSeparation!3004 r1!6342 lt!2462716 Nil!66438 s!14361 s!14361))))

(declare-fun lt!2462696 () Unit!160330)

(assert (=> b!6889717 (= lt!2462696 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!52 r1!6342 lt!2462716 (_1!36981 lt!2462718) lt!2462693 s!14361 Nil!66438 s!14361))))

(declare-fun e!4150703 () Bool)

(assert (=> b!6889718 (= e!4150696 e!4150703)))

(declare-fun res!2809075 () Bool)

(assert (=> b!6889718 (=> res!2809075 e!4150703)))

(declare-fun lt!2462699 () Bool)

(assert (=> b!6889718 (= res!2809075 (not lt!2462699))))

(assert (=> b!6889718 (= lt!2462699 (matchRSpec!3868 lt!2462714 (_1!36981 lt!2462711)))))

(assert (=> b!6889718 (= lt!2462699 (matchR!8950 lt!2462714 (_1!36981 lt!2462711)))))

(declare-fun lt!2462710 () Unit!160330)

(assert (=> b!6889718 (= lt!2462710 (mainMatchTheorem!3868 lt!2462714 (_1!36981 lt!2462711)))))

(declare-fun lt!2462702 () Option!16590)

(declare-fun get!23170 (Option!16590) tuple2!67356)

(assert (=> b!6889718 (= lt!2462711 (get!23170 lt!2462702))))

(assert (=> b!6889718 (= (Exists!3817 lambda!390545) (Exists!3817 lambda!390546))))

(declare-fun lt!2462706 () Unit!160330)

(assert (=> b!6889718 (= lt!2462706 (lemmaExistCutMatchRandMatchRSpecEquivalent!2296 lt!2462714 r3!135 s!14361))))

(assert (=> b!6889718 (= (isDefined!13293 lt!2462702) (Exists!3817 lambda!390545))))

(assert (=> b!6889718 (= lt!2462702 (findConcatSeparation!3004 lt!2462714 r3!135 Nil!66438 s!14361 s!14361))))

(declare-fun lt!2462715 () Unit!160330)

(assert (=> b!6889718 (= lt!2462715 (lemmaFindConcatSeparationEquivalentToExists!2768 lt!2462714 r3!135 s!14361))))

(declare-fun b!6889719 () Bool)

(declare-fun res!2809073 () Bool)

(assert (=> b!6889719 (=> (not res!2809073) (not e!4150695))))

(assert (=> b!6889719 (= res!2809073 (validRegex!8513 r2!6280))))

(declare-fun b!6889720 () Bool)

(declare-fun e!4150700 () Bool)

(declare-fun tp!1895568 () Bool)

(assert (=> b!6889720 (= e!4150700 tp!1895568)))

(declare-fun b!6889721 () Bool)

(declare-fun tp!1895571 () Bool)

(declare-fun tp!1895562 () Bool)

(assert (=> b!6889721 (= e!4150700 (and tp!1895571 tp!1895562))))

(declare-fun b!6889722 () Bool)

(declare-fun tp!1895573 () Bool)

(declare-fun tp!1895565 () Bool)

(assert (=> b!6889722 (= e!4150700 (and tp!1895573 tp!1895565))))

(declare-fun b!6889712 () Bool)

(declare-fun e!4150704 () Bool)

(declare-fun tp!1895570 () Bool)

(assert (=> b!6889712 (= e!4150704 (and tp_is_empty!42835 tp!1895570))))

(declare-fun res!2809077 () Bool)

(assert (=> start!664222 (=> (not res!2809077) (not e!4150695))))

(assert (=> start!664222 (= res!2809077 (validRegex!8513 r1!6342))))

(assert (=> start!664222 e!4150695))

(assert (=> start!664222 e!4150700))

(assert (=> start!664222 e!4150697))

(assert (=> start!664222 e!4150699))

(assert (=> start!664222 e!4150704))

(declare-fun b!6889723 () Bool)

(declare-fun tp!1895575 () Bool)

(declare-fun tp!1895569 () Bool)

(assert (=> b!6889723 (= e!4150697 (and tp!1895575 tp!1895569))))

(declare-fun b!6889724 () Bool)

(declare-fun tp!1895572 () Bool)

(assert (=> b!6889724 (= e!4150699 tp!1895572)))

(declare-fun b!6889725 () Bool)

(declare-fun res!2809070 () Bool)

(assert (=> b!6889725 (=> (not res!2809070) (not e!4150695))))

(assert (=> b!6889725 (= res!2809070 (validRegex!8513 r3!135))))

(declare-fun b!6889726 () Bool)

(declare-fun tp!1895574 () Bool)

(assert (=> b!6889726 (= e!4150697 tp!1895574)))

(assert (=> b!6889727 (= e!4150703 e!4150701)))

(declare-fun res!2809079 () Bool)

(assert (=> b!6889727 (=> res!2809079 e!4150701)))

(assert (=> b!6889727 (= res!2809079 (not (matchR!8950 r1!6342 (_1!36981 lt!2462718))))))

(declare-fun lt!2462704 () Option!16590)

(assert (=> b!6889727 (= lt!2462718 (get!23170 lt!2462704))))

(assert (=> b!6889727 (= (Exists!3817 lambda!390547) (Exists!3817 lambda!390548))))

(declare-fun lt!2462690 () Unit!160330)

(assert (=> b!6889727 (= lt!2462690 (lemmaExistCutMatchRandMatchRSpecEquivalent!2296 r1!6342 r2!6280 (_1!36981 lt!2462711)))))

(assert (=> b!6889727 (= (isDefined!13293 lt!2462704) (Exists!3817 lambda!390547))))

(assert (=> b!6889727 (= lt!2462704 (findConcatSeparation!3004 r1!6342 r2!6280 Nil!66438 (_1!36981 lt!2462711) (_1!36981 lt!2462711)))))

(declare-fun lt!2462695 () Unit!160330)

(assert (=> b!6889727 (= lt!2462695 (lemmaFindConcatSeparationEquivalentToExists!2768 r1!6342 r2!6280 (_1!36981 lt!2462711)))))

(declare-fun b!6889728 () Bool)

(assert (=> b!6889728 (= e!4150705 e!4150702)))

(declare-fun res!2809072 () Bool)

(assert (=> b!6889728 (=> res!2809072 e!4150702)))

(declare-fun lt!2462713 () List!66562)

(assert (=> b!6889728 (= res!2809072 (not (= lt!2462713 s!14361)))))

(assert (=> b!6889728 (= lt!2462692 lt!2462713)))

(assert (=> b!6889728 (= lt!2462713 (++!14884 (_1!36981 lt!2462718) lt!2462693))))

(declare-fun lt!2462708 () Unit!160330)

(declare-fun lemmaConcatAssociativity!2976 (List!66562 List!66562 List!66562) Unit!160330)

(assert (=> b!6889728 (= lt!2462708 (lemmaConcatAssociativity!2976 (_1!36981 lt!2462718) (_2!36981 lt!2462718) (_2!36981 lt!2462711)))))

(declare-fun b!6889729 () Bool)

(declare-fun tp!1895564 () Bool)

(declare-fun tp!1895561 () Bool)

(assert (=> b!6889729 (= e!4150699 (and tp!1895564 tp!1895561))))

(declare-fun b!6889730 () Bool)

(declare-fun res!2809069 () Bool)

(assert (=> b!6889730 (=> res!2809069 e!4150701)))

(assert (=> b!6889730 (= res!2809069 (not (matchR!8950 r2!6280 (_2!36981 lt!2462718))))))

(declare-fun b!6889731 () Bool)

(declare-fun res!2809071 () Bool)

(assert (=> b!6889731 (=> res!2809071 e!4150703)))

(assert (=> b!6889731 (= res!2809071 (not (matchR!8950 r3!135 (_2!36981 lt!2462711))))))

(declare-fun b!6889732 () Bool)

(assert (=> b!6889732 (= e!4150700 tp_is_empty!42835)))

(declare-fun b!6889733 () Bool)

(declare-fun tp!1895563 () Bool)

(declare-fun tp!1895560 () Bool)

(assert (=> b!6889733 (= e!4150697 (and tp!1895563 tp!1895560))))

(assert (= (and start!664222 res!2809077) b!6889719))

(assert (= (and b!6889719 res!2809073) b!6889725))

(assert (= (and b!6889725 res!2809070) b!6889716))

(assert (= (and b!6889716 (not res!2809078)) b!6889718))

(assert (= (and b!6889718 (not res!2809075)) b!6889731))

(assert (= (and b!6889731 (not res!2809071)) b!6889727))

(assert (= (and b!6889727 (not res!2809079)) b!6889730))

(assert (= (and b!6889730 (not res!2809069)) b!6889710))

(assert (= (and b!6889710 (not res!2809076)) b!6889711))

(assert (= (and b!6889711 (not res!2809080)) b!6889728))

(assert (= (and b!6889728 (not res!2809072)) b!6889717))

(assert (= (and b!6889717 (not res!2809074)) b!6889709))

(get-info :version)

(assert (= (and start!664222 ((_ is ElementMatch!16805) r1!6342)) b!6889732))

(assert (= (and start!664222 ((_ is Concat!25650) r1!6342)) b!6889722))

(assert (= (and start!664222 ((_ is Star!16805) r1!6342)) b!6889720))

(assert (= (and start!664222 ((_ is Union!16805) r1!6342)) b!6889721))

(assert (= (and start!664222 ((_ is ElementMatch!16805) r2!6280)) b!6889714))

(assert (= (and start!664222 ((_ is Concat!25650) r2!6280)) b!6889733))

(assert (= (and start!664222 ((_ is Star!16805) r2!6280)) b!6889726))

(assert (= (and start!664222 ((_ is Union!16805) r2!6280)) b!6889723))

(assert (= (and start!664222 ((_ is ElementMatch!16805) r3!135)) b!6889715))

(assert (= (and start!664222 ((_ is Concat!25650) r3!135)) b!6889713))

(assert (= (and start!664222 ((_ is Star!16805) r3!135)) b!6889724))

(assert (= (and start!664222 ((_ is Union!16805) r3!135)) b!6889729))

(assert (= (and start!664222 ((_ is Cons!66438) s!14361)) b!6889712))

(declare-fun m!7611990 () Bool)

(assert (=> b!6889711 m!7611990))

(declare-fun m!7611992 () Bool)

(assert (=> b!6889711 m!7611992))

(assert (=> b!6889711 m!7611990))

(declare-fun m!7611994 () Bool)

(assert (=> b!6889711 m!7611994))

(declare-fun m!7611996 () Bool)

(assert (=> b!6889711 m!7611996))

(declare-fun m!7611998 () Bool)

(assert (=> b!6889711 m!7611998))

(declare-fun m!7612000 () Bool)

(assert (=> b!6889711 m!7612000))

(declare-fun m!7612002 () Bool)

(assert (=> b!6889711 m!7612002))

(declare-fun m!7612004 () Bool)

(assert (=> b!6889711 m!7612004))

(declare-fun m!7612006 () Bool)

(assert (=> b!6889711 m!7612006))

(assert (=> b!6889711 m!7612004))

(declare-fun m!7612008 () Bool)

(assert (=> b!6889711 m!7612008))

(declare-fun m!7612010 () Bool)

(assert (=> b!6889711 m!7612010))

(declare-fun m!7612012 () Bool)

(assert (=> b!6889730 m!7612012))

(declare-fun m!7612014 () Bool)

(assert (=> b!6889716 m!7612014))

(declare-fun m!7612016 () Bool)

(assert (=> b!6889716 m!7612016))

(declare-fun m!7612018 () Bool)

(assert (=> b!6889716 m!7612018))

(declare-fun m!7612020 () Bool)

(assert (=> b!6889716 m!7612020))

(declare-fun m!7612022 () Bool)

(assert (=> b!6889716 m!7612022))

(declare-fun m!7612024 () Bool)

(assert (=> b!6889716 m!7612024))

(declare-fun m!7612026 () Bool)

(assert (=> start!664222 m!7612026))

(declare-fun m!7612028 () Bool)

(assert (=> b!6889710 m!7612028))

(declare-fun m!7612030 () Bool)

(assert (=> b!6889710 m!7612030))

(declare-fun m!7612032 () Bool)

(assert (=> b!6889710 m!7612032))

(declare-fun m!7612034 () Bool)

(assert (=> b!6889710 m!7612034))

(declare-fun m!7612036 () Bool)

(assert (=> b!6889710 m!7612036))

(declare-fun m!7612038 () Bool)

(assert (=> b!6889710 m!7612038))

(assert (=> b!6889710 m!7612036))

(declare-fun m!7612040 () Bool)

(assert (=> b!6889727 m!7612040))

(declare-fun m!7612042 () Bool)

(assert (=> b!6889727 m!7612042))

(declare-fun m!7612044 () Bool)

(assert (=> b!6889727 m!7612044))

(declare-fun m!7612046 () Bool)

(assert (=> b!6889727 m!7612046))

(declare-fun m!7612048 () Bool)

(assert (=> b!6889727 m!7612048))

(assert (=> b!6889727 m!7612046))

(declare-fun m!7612050 () Bool)

(assert (=> b!6889727 m!7612050))

(declare-fun m!7612052 () Bool)

(assert (=> b!6889727 m!7612052))

(declare-fun m!7612054 () Bool)

(assert (=> b!6889727 m!7612054))

(declare-fun m!7612056 () Bool)

(assert (=> b!6889725 m!7612056))

(declare-fun m!7612058 () Bool)

(assert (=> b!6889719 m!7612058))

(declare-fun m!7612060 () Bool)

(assert (=> b!6889709 m!7612060))

(declare-fun m!7612062 () Bool)

(assert (=> b!6889709 m!7612062))

(declare-fun m!7612064 () Bool)

(assert (=> b!6889709 m!7612064))

(declare-fun m!7612066 () Bool)

(assert (=> b!6889709 m!7612066))

(declare-fun m!7612068 () Bool)

(assert (=> b!6889717 m!7612068))

(declare-fun m!7612070 () Bool)

(assert (=> b!6889717 m!7612070))

(assert (=> b!6889717 m!7612062))

(declare-fun m!7612072 () Bool)

(assert (=> b!6889717 m!7612072))

(declare-fun m!7612074 () Bool)

(assert (=> b!6889717 m!7612074))

(assert (=> b!6889717 m!7612074))

(declare-fun m!7612076 () Bool)

(assert (=> b!6889717 m!7612076))

(declare-fun m!7612078 () Bool)

(assert (=> b!6889718 m!7612078))

(declare-fun m!7612080 () Bool)

(assert (=> b!6889718 m!7612080))

(declare-fun m!7612082 () Bool)

(assert (=> b!6889718 m!7612082))

(assert (=> b!6889718 m!7612078))

(declare-fun m!7612084 () Bool)

(assert (=> b!6889718 m!7612084))

(declare-fun m!7612086 () Bool)

(assert (=> b!6889718 m!7612086))

(declare-fun m!7612088 () Bool)

(assert (=> b!6889718 m!7612088))

(declare-fun m!7612090 () Bool)

(assert (=> b!6889718 m!7612090))

(declare-fun m!7612092 () Bool)

(assert (=> b!6889718 m!7612092))

(declare-fun m!7612094 () Bool)

(assert (=> b!6889718 m!7612094))

(declare-fun m!7612096 () Bool)

(assert (=> b!6889718 m!7612096))

(declare-fun m!7612098 () Bool)

(assert (=> b!6889728 m!7612098))

(declare-fun m!7612100 () Bool)

(assert (=> b!6889728 m!7612100))

(declare-fun m!7612102 () Bool)

(assert (=> b!6889731 m!7612102))

(check-sat (not b!6889727) (not b!6889731) (not b!6889726) (not b!6889728) tp_is_empty!42835 (not b!6889721) (not b!6889733) (not b!6889709) (not b!6889725) (not b!6889710) (not b!6889712) (not b!6889730) (not b!6889716) (not b!6889722) (not b!6889718) (not b!6889711) (not b!6889724) (not b!6889723) (not start!664222) (not b!6889713) (not b!6889729) (not b!6889719) (not b!6889717) (not b!6889720))
(check-sat)
(get-model)

(declare-fun d!2160874 () Bool)

(declare-fun choose!51306 (Int) Bool)

(assert (=> d!2160874 (= (Exists!3817 lambda!390551) (choose!51306 lambda!390551))))

(declare-fun bs!1839812 () Bool)

(assert (= bs!1839812 d!2160874))

(declare-fun m!7612104 () Bool)

(assert (=> bs!1839812 m!7612104))

(assert (=> b!6889717 d!2160874))

(declare-fun b!6889758 () Bool)

(declare-fun res!2809093 () Bool)

(declare-fun e!4150725 () Bool)

(assert (=> b!6889758 (=> (not res!2809093) (not e!4150725))))

(declare-fun call!626918 () Bool)

(assert (=> b!6889758 (= res!2809093 call!626918)))

(declare-fun e!4150726 () Bool)

(assert (=> b!6889758 (= e!4150726 e!4150725)))

(declare-fun c!1280996 () Bool)

(declare-fun c!1280997 () Bool)

(declare-fun call!626917 () Bool)

(declare-fun bm!626911 () Bool)

(assert (=> bm!626911 (= call!626917 (validRegex!8513 (ite c!1280997 (reg!17134 lt!2462716) (ite c!1280996 (regOne!34123 lt!2462716) (regTwo!34122 lt!2462716)))))))

(declare-fun bm!626912 () Bool)

(assert (=> bm!626912 (= call!626918 call!626917)))

(declare-fun b!6889760 () Bool)

(declare-fun e!4150723 () Bool)

(assert (=> b!6889760 (= e!4150723 call!626917)))

(declare-fun b!6889761 () Bool)

(declare-fun call!626916 () Bool)

(assert (=> b!6889761 (= e!4150725 call!626916)))

(declare-fun b!6889762 () Bool)

(declare-fun e!4150721 () Bool)

(assert (=> b!6889762 (= e!4150721 e!4150723)))

(declare-fun res!2809094 () Bool)

(declare-fun nullable!6687 (Regex!16805) Bool)

(assert (=> b!6889762 (= res!2809094 (not (nullable!6687 (reg!17134 lt!2462716))))))

(assert (=> b!6889762 (=> (not res!2809094) (not e!4150723))))

(declare-fun b!6889763 () Bool)

(assert (=> b!6889763 (= e!4150721 e!4150726)))

(assert (=> b!6889763 (= c!1280996 ((_ is Union!16805) lt!2462716))))

(declare-fun b!6889764 () Bool)

(declare-fun e!4150727 () Bool)

(assert (=> b!6889764 (= e!4150727 e!4150721)))

(assert (=> b!6889764 (= c!1280997 ((_ is Star!16805) lt!2462716))))

(declare-fun b!6889765 () Bool)

(declare-fun res!2809092 () Bool)

(declare-fun e!4150722 () Bool)

(assert (=> b!6889765 (=> res!2809092 e!4150722)))

(assert (=> b!6889765 (= res!2809092 (not ((_ is Concat!25650) lt!2462716)))))

(assert (=> b!6889765 (= e!4150726 e!4150722)))

(declare-fun d!2160876 () Bool)

(declare-fun res!2809095 () Bool)

(assert (=> d!2160876 (=> res!2809095 e!4150727)))

(assert (=> d!2160876 (= res!2809095 ((_ is ElementMatch!16805) lt!2462716))))

(assert (=> d!2160876 (= (validRegex!8513 lt!2462716) e!4150727)))

(declare-fun b!6889759 () Bool)

(declare-fun e!4150724 () Bool)

(assert (=> b!6889759 (= e!4150724 call!626918)))

(declare-fun bm!626913 () Bool)

(assert (=> bm!626913 (= call!626916 (validRegex!8513 (ite c!1280996 (regTwo!34123 lt!2462716) (regOne!34122 lt!2462716))))))

(declare-fun b!6889766 () Bool)

(assert (=> b!6889766 (= e!4150722 e!4150724)))

(declare-fun res!2809091 () Bool)

(assert (=> b!6889766 (=> (not res!2809091) (not e!4150724))))

(assert (=> b!6889766 (= res!2809091 call!626916)))

(assert (= (and d!2160876 (not res!2809095)) b!6889764))

(assert (= (and b!6889764 c!1280997) b!6889762))

(assert (= (and b!6889764 (not c!1280997)) b!6889763))

(assert (= (and b!6889762 res!2809094) b!6889760))

(assert (= (and b!6889763 c!1280996) b!6889758))

(assert (= (and b!6889763 (not c!1280996)) b!6889765))

(assert (= (and b!6889758 res!2809093) b!6889761))

(assert (= (and b!6889765 (not res!2809092)) b!6889766))

(assert (= (and b!6889766 res!2809091) b!6889759))

(assert (= (or b!6889758 b!6889759) bm!626912))

(assert (= (or b!6889761 b!6889766) bm!626913))

(assert (= (or b!6889760 bm!626912) bm!626911))

(declare-fun m!7612106 () Bool)

(assert (=> bm!626911 m!7612106))

(declare-fun m!7612108 () Bool)

(assert (=> b!6889762 m!7612108))

(declare-fun m!7612110 () Bool)

(assert (=> bm!626913 m!7612110))

(assert (=> b!6889717 d!2160876))

(declare-fun d!2160878 () Bool)

(assert (=> d!2160878 (isDefined!13293 (findConcatSeparation!3004 r1!6342 lt!2462716 Nil!66438 s!14361 s!14361))))

(declare-fun lt!2462722 () Unit!160330)

(declare-fun choose!51307 (Regex!16805 Regex!16805 List!66562 List!66562 List!66562 List!66562 List!66562) Unit!160330)

(assert (=> d!2160878 (= lt!2462722 (choose!51307 r1!6342 lt!2462716 (_1!36981 lt!2462718) lt!2462693 s!14361 Nil!66438 s!14361))))

(assert (=> d!2160878 (validRegex!8513 r1!6342)))

(assert (=> d!2160878 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!52 r1!6342 lt!2462716 (_1!36981 lt!2462718) lt!2462693 s!14361 Nil!66438 s!14361) lt!2462722)))

(declare-fun bs!1839813 () Bool)

(assert (= bs!1839813 d!2160878))

(assert (=> bs!1839813 m!7612074))

(assert (=> bs!1839813 m!7612074))

(assert (=> bs!1839813 m!7612076))

(declare-fun m!7612112 () Bool)

(assert (=> bs!1839813 m!7612112))

(assert (=> bs!1839813 m!7612026))

(assert (=> b!6889717 d!2160878))

(declare-fun d!2160880 () Bool)

(declare-fun isEmpty!38694 (Option!16590) Bool)

(assert (=> d!2160880 (= (isDefined!13293 (findConcatSeparation!3004 r1!6342 lt!2462716 Nil!66438 s!14361 s!14361)) (not (isEmpty!38694 (findConcatSeparation!3004 r1!6342 lt!2462716 Nil!66438 s!14361 s!14361))))))

(declare-fun bs!1839814 () Bool)

(assert (= bs!1839814 d!2160880))

(assert (=> bs!1839814 m!7612074))

(declare-fun m!7612114 () Bool)

(assert (=> bs!1839814 m!7612114))

(assert (=> b!6889717 d!2160880))

(declare-fun b!6889793 () Bool)

(declare-fun e!4150742 () Option!16590)

(assert (=> b!6889793 (= e!4150742 (Some!16589 (tuple2!67357 Nil!66438 s!14361)))))

(declare-fun b!6889794 () Bool)

(declare-fun lt!2462733 () Unit!160330)

(declare-fun lt!2462734 () Unit!160330)

(assert (=> b!6889794 (= lt!2462733 lt!2462734)))

(assert (=> b!6889794 (= (++!14884 (++!14884 Nil!66438 (Cons!66438 (h!72886 s!14361) Nil!66438)) (t!380305 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2778 (List!66562 C!33880 List!66562 List!66562) Unit!160330)

(assert (=> b!6889794 (= lt!2462734 (lemmaMoveElementToOtherListKeepsConcatEq!2778 Nil!66438 (h!72886 s!14361) (t!380305 s!14361) s!14361))))

(declare-fun e!4150743 () Option!16590)

(assert (=> b!6889794 (= e!4150743 (findConcatSeparation!3004 r1!6342 lt!2462716 (++!14884 Nil!66438 (Cons!66438 (h!72886 s!14361) Nil!66438)) (t!380305 s!14361) s!14361))))

(declare-fun b!6889795 () Bool)

(assert (=> b!6889795 (= e!4150742 e!4150743)))

(declare-fun c!1281002 () Bool)

(assert (=> b!6889795 (= c!1281002 ((_ is Nil!66438) s!14361))))

(declare-fun b!6889796 () Bool)

(declare-fun e!4150744 () Bool)

(declare-fun lt!2462732 () Option!16590)

(assert (=> b!6889796 (= e!4150744 (= (++!14884 (_1!36981 (get!23170 lt!2462732)) (_2!36981 (get!23170 lt!2462732))) s!14361))))

(declare-fun b!6889798 () Bool)

(declare-fun res!2809116 () Bool)

(assert (=> b!6889798 (=> (not res!2809116) (not e!4150744))))

(assert (=> b!6889798 (= res!2809116 (matchR!8950 lt!2462716 (_2!36981 (get!23170 lt!2462732))))))

(declare-fun b!6889799 () Bool)

(declare-fun res!2809118 () Bool)

(assert (=> b!6889799 (=> (not res!2809118) (not e!4150744))))

(assert (=> b!6889799 (= res!2809118 (matchR!8950 r1!6342 (_1!36981 (get!23170 lt!2462732))))))

(declare-fun b!6889800 () Bool)

(declare-fun e!4150746 () Bool)

(assert (=> b!6889800 (= e!4150746 (matchR!8950 lt!2462716 s!14361))))

(declare-fun b!6889801 () Bool)

(assert (=> b!6889801 (= e!4150743 None!16589)))

(declare-fun d!2160882 () Bool)

(declare-fun e!4150745 () Bool)

(assert (=> d!2160882 e!4150745))

(declare-fun res!2809115 () Bool)

(assert (=> d!2160882 (=> res!2809115 e!4150745)))

(assert (=> d!2160882 (= res!2809115 e!4150744)))

(declare-fun res!2809117 () Bool)

(assert (=> d!2160882 (=> (not res!2809117) (not e!4150744))))

(assert (=> d!2160882 (= res!2809117 (isDefined!13293 lt!2462732))))

(assert (=> d!2160882 (= lt!2462732 e!4150742)))

(declare-fun c!1281003 () Bool)

(assert (=> d!2160882 (= c!1281003 e!4150746)))

(declare-fun res!2809114 () Bool)

(assert (=> d!2160882 (=> (not res!2809114) (not e!4150746))))

(assert (=> d!2160882 (= res!2809114 (matchR!8950 r1!6342 Nil!66438))))

(assert (=> d!2160882 (validRegex!8513 r1!6342)))

(assert (=> d!2160882 (= (findConcatSeparation!3004 r1!6342 lt!2462716 Nil!66438 s!14361 s!14361) lt!2462732)))

(declare-fun b!6889797 () Bool)

(assert (=> b!6889797 (= e!4150745 (not (isDefined!13293 lt!2462732)))))

(assert (= (and d!2160882 res!2809114) b!6889800))

(assert (= (and d!2160882 c!1281003) b!6889793))

(assert (= (and d!2160882 (not c!1281003)) b!6889795))

(assert (= (and b!6889795 c!1281002) b!6889801))

(assert (= (and b!6889795 (not c!1281002)) b!6889794))

(assert (= (and d!2160882 res!2809117) b!6889799))

(assert (= (and b!6889799 res!2809118) b!6889798))

(assert (= (and b!6889798 res!2809116) b!6889796))

(assert (= (and d!2160882 (not res!2809115)) b!6889797))

(declare-fun m!7612116 () Bool)

(assert (=> b!6889794 m!7612116))

(assert (=> b!6889794 m!7612116))

(declare-fun m!7612118 () Bool)

(assert (=> b!6889794 m!7612118))

(declare-fun m!7612120 () Bool)

(assert (=> b!6889794 m!7612120))

(assert (=> b!6889794 m!7612116))

(declare-fun m!7612126 () Bool)

(assert (=> b!6889794 m!7612126))

(declare-fun m!7612130 () Bool)

(assert (=> b!6889797 m!7612130))

(declare-fun m!7612132 () Bool)

(assert (=> b!6889800 m!7612132))

(declare-fun m!7612134 () Bool)

(assert (=> b!6889796 m!7612134))

(declare-fun m!7612136 () Bool)

(assert (=> b!6889796 m!7612136))

(assert (=> b!6889799 m!7612134))

(declare-fun m!7612138 () Bool)

(assert (=> b!6889799 m!7612138))

(assert (=> b!6889798 m!7612134))

(declare-fun m!7612140 () Bool)

(assert (=> b!6889798 m!7612140))

(assert (=> d!2160882 m!7612130))

(declare-fun m!7612142 () Bool)

(assert (=> d!2160882 m!7612142))

(assert (=> d!2160882 m!7612026))

(assert (=> b!6889717 d!2160882))

(declare-fun bs!1839823 () Bool)

(declare-fun d!2160888 () Bool)

(assert (= bs!1839823 (and d!2160888 b!6889711)))

(declare-fun lambda!390565 () Int)

(assert (=> bs!1839823 (= (and (= s!14361 lt!2462693) (= r1!6342 r2!6280) (= lt!2462716 r3!135)) (= lambda!390565 lambda!390549))))

(declare-fun bs!1839824 () Bool)

(assert (= bs!1839824 (and d!2160888 b!6889727)))

(assert (=> bs!1839824 (not (= lambda!390565 lambda!390548))))

(assert (=> bs!1839823 (not (= lambda!390565 lambda!390550))))

(declare-fun bs!1839825 () Bool)

(assert (= bs!1839825 (and d!2160888 b!6889718)))

(assert (=> bs!1839825 (not (= lambda!390565 lambda!390546))))

(declare-fun bs!1839826 () Bool)

(assert (= bs!1839826 (and d!2160888 b!6889717)))

(assert (=> bs!1839826 (= lambda!390565 lambda!390551)))

(assert (=> bs!1839824 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462716 r2!6280)) (= lambda!390565 lambda!390547))))

(assert (=> bs!1839825 (= (and (= r1!6342 lt!2462714) (= lt!2462716 r3!135)) (= lambda!390565 lambda!390545))))

(declare-fun bs!1839827 () Bool)

(assert (= bs!1839827 (and d!2160888 b!6889709)))

(assert (=> bs!1839827 (not (= lambda!390565 lambda!390552))))

(assert (=> d!2160888 true))

(assert (=> d!2160888 true))

(assert (=> d!2160888 true))

(assert (=> d!2160888 (= (isDefined!13293 (findConcatSeparation!3004 r1!6342 lt!2462716 Nil!66438 s!14361 s!14361)) (Exists!3817 lambda!390565))))

(declare-fun lt!2462740 () Unit!160330)

(declare-fun choose!51308 (Regex!16805 Regex!16805 List!66562) Unit!160330)

(assert (=> d!2160888 (= lt!2462740 (choose!51308 r1!6342 lt!2462716 s!14361))))

(assert (=> d!2160888 (validRegex!8513 r1!6342)))

(assert (=> d!2160888 (= (lemmaFindConcatSeparationEquivalentToExists!2768 r1!6342 lt!2462716 s!14361) lt!2462740)))

(declare-fun bs!1839828 () Bool)

(assert (= bs!1839828 d!2160888))

(assert (=> bs!1839828 m!7612026))

(declare-fun m!7612162 () Bool)

(assert (=> bs!1839828 m!7612162))

(assert (=> bs!1839828 m!7612074))

(assert (=> bs!1839828 m!7612076))

(declare-fun m!7612164 () Bool)

(assert (=> bs!1839828 m!7612164))

(assert (=> bs!1839828 m!7612074))

(assert (=> b!6889717 d!2160888))

(declare-fun d!2160896 () Bool)

(declare-fun e!4150784 () Bool)

(assert (=> d!2160896 e!4150784))

(declare-fun res!2809152 () Bool)

(assert (=> d!2160896 (=> (not res!2809152) (not e!4150784))))

(declare-fun lt!2462743 () List!66562)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13050 (List!66562) (InoxSet C!33880))

(assert (=> d!2160896 (= res!2809152 (= (content!13050 lt!2462743) ((_ map or) (content!13050 (_1!36981 lt!2462718)) (content!13050 lt!2462693))))))

(declare-fun e!4150785 () List!66562)

(assert (=> d!2160896 (= lt!2462743 e!4150785)))

(declare-fun c!1281021 () Bool)

(assert (=> d!2160896 (= c!1281021 ((_ is Nil!66438) (_1!36981 lt!2462718)))))

(assert (=> d!2160896 (= (++!14884 (_1!36981 lt!2462718) lt!2462693) lt!2462743)))

(declare-fun b!6889869 () Bool)

(assert (=> b!6889869 (= e!4150785 lt!2462693)))

(declare-fun b!6889872 () Bool)

(assert (=> b!6889872 (= e!4150784 (or (not (= lt!2462693 Nil!66438)) (= lt!2462743 (_1!36981 lt!2462718))))))

(declare-fun b!6889870 () Bool)

(assert (=> b!6889870 (= e!4150785 (Cons!66438 (h!72886 (_1!36981 lt!2462718)) (++!14884 (t!380305 (_1!36981 lt!2462718)) lt!2462693)))))

(declare-fun b!6889871 () Bool)

(declare-fun res!2809153 () Bool)

(assert (=> b!6889871 (=> (not res!2809153) (not e!4150784))))

(declare-fun size!40747 (List!66562) Int)

(assert (=> b!6889871 (= res!2809153 (= (size!40747 lt!2462743) (+ (size!40747 (_1!36981 lt!2462718)) (size!40747 lt!2462693))))))

(assert (= (and d!2160896 c!1281021) b!6889869))

(assert (= (and d!2160896 (not c!1281021)) b!6889870))

(assert (= (and d!2160896 res!2809152) b!6889871))

(assert (= (and b!6889871 res!2809153) b!6889872))

(declare-fun m!7612174 () Bool)

(assert (=> d!2160896 m!7612174))

(declare-fun m!7612176 () Bool)

(assert (=> d!2160896 m!7612176))

(declare-fun m!7612178 () Bool)

(assert (=> d!2160896 m!7612178))

(declare-fun m!7612180 () Bool)

(assert (=> b!6889870 m!7612180))

(declare-fun m!7612182 () Bool)

(assert (=> b!6889871 m!7612182))

(declare-fun m!7612184 () Bool)

(assert (=> b!6889871 m!7612184))

(declare-fun m!7612186 () Bool)

(assert (=> b!6889871 m!7612186))

(assert (=> b!6889728 d!2160896))

(declare-fun d!2160900 () Bool)

(assert (=> d!2160900 (= (++!14884 (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718)) (_2!36981 lt!2462711)) (++!14884 (_1!36981 lt!2462718) (++!14884 (_2!36981 lt!2462718) (_2!36981 lt!2462711))))))

(declare-fun lt!2462746 () Unit!160330)

(declare-fun choose!51309 (List!66562 List!66562 List!66562) Unit!160330)

(assert (=> d!2160900 (= lt!2462746 (choose!51309 (_1!36981 lt!2462718) (_2!36981 lt!2462718) (_2!36981 lt!2462711)))))

(assert (=> d!2160900 (= (lemmaConcatAssociativity!2976 (_1!36981 lt!2462718) (_2!36981 lt!2462718) (_2!36981 lt!2462711)) lt!2462746)))

(declare-fun bs!1839842 () Bool)

(assert (= bs!1839842 d!2160900))

(assert (=> bs!1839842 m!7611998))

(declare-fun m!7612188 () Bool)

(assert (=> bs!1839842 m!7612188))

(declare-fun m!7612190 () Bool)

(assert (=> bs!1839842 m!7612190))

(assert (=> bs!1839842 m!7611998))

(assert (=> bs!1839842 m!7612036))

(assert (=> bs!1839842 m!7612036))

(assert (=> bs!1839842 m!7612038))

(assert (=> b!6889728 d!2160900))

(declare-fun d!2160902 () Bool)

(assert (=> d!2160902 (= (get!23170 lt!2462702) (v!52861 lt!2462702))))

(assert (=> b!6889718 d!2160902))

(declare-fun b!6889879 () Bool)

(declare-fun e!4150790 () Option!16590)

(assert (=> b!6889879 (= e!4150790 (Some!16589 (tuple2!67357 Nil!66438 s!14361)))))

(declare-fun b!6889880 () Bool)

(declare-fun lt!2462750 () Unit!160330)

(declare-fun lt!2462751 () Unit!160330)

(assert (=> b!6889880 (= lt!2462750 lt!2462751)))

(assert (=> b!6889880 (= (++!14884 (++!14884 Nil!66438 (Cons!66438 (h!72886 s!14361) Nil!66438)) (t!380305 s!14361)) s!14361)))

(assert (=> b!6889880 (= lt!2462751 (lemmaMoveElementToOtherListKeepsConcatEq!2778 Nil!66438 (h!72886 s!14361) (t!380305 s!14361) s!14361))))

(declare-fun e!4150791 () Option!16590)

(assert (=> b!6889880 (= e!4150791 (findConcatSeparation!3004 lt!2462714 r3!135 (++!14884 Nil!66438 (Cons!66438 (h!72886 s!14361) Nil!66438)) (t!380305 s!14361) s!14361))))

(declare-fun b!6889881 () Bool)

(assert (=> b!6889881 (= e!4150790 e!4150791)))

(declare-fun c!1281024 () Bool)

(assert (=> b!6889881 (= c!1281024 ((_ is Nil!66438) s!14361))))

(declare-fun b!6889882 () Bool)

(declare-fun e!4150792 () Bool)

(declare-fun lt!2462749 () Option!16590)

(assert (=> b!6889882 (= e!4150792 (= (++!14884 (_1!36981 (get!23170 lt!2462749)) (_2!36981 (get!23170 lt!2462749))) s!14361))))

(declare-fun b!6889884 () Bool)

(declare-fun res!2809158 () Bool)

(assert (=> b!6889884 (=> (not res!2809158) (not e!4150792))))

(assert (=> b!6889884 (= res!2809158 (matchR!8950 r3!135 (_2!36981 (get!23170 lt!2462749))))))

(declare-fun b!6889885 () Bool)

(declare-fun res!2809160 () Bool)

(assert (=> b!6889885 (=> (not res!2809160) (not e!4150792))))

(assert (=> b!6889885 (= res!2809160 (matchR!8950 lt!2462714 (_1!36981 (get!23170 lt!2462749))))))

(declare-fun b!6889886 () Bool)

(declare-fun e!4150794 () Bool)

(assert (=> b!6889886 (= e!4150794 (matchR!8950 r3!135 s!14361))))

(declare-fun b!6889887 () Bool)

(assert (=> b!6889887 (= e!4150791 None!16589)))

(declare-fun d!2160904 () Bool)

(declare-fun e!4150793 () Bool)

(assert (=> d!2160904 e!4150793))

(declare-fun res!2809157 () Bool)

(assert (=> d!2160904 (=> res!2809157 e!4150793)))

(assert (=> d!2160904 (= res!2809157 e!4150792)))

(declare-fun res!2809159 () Bool)

(assert (=> d!2160904 (=> (not res!2809159) (not e!4150792))))

(assert (=> d!2160904 (= res!2809159 (isDefined!13293 lt!2462749))))

(assert (=> d!2160904 (= lt!2462749 e!4150790)))

(declare-fun c!1281025 () Bool)

(assert (=> d!2160904 (= c!1281025 e!4150794)))

(declare-fun res!2809156 () Bool)

(assert (=> d!2160904 (=> (not res!2809156) (not e!4150794))))

(assert (=> d!2160904 (= res!2809156 (matchR!8950 lt!2462714 Nil!66438))))

(assert (=> d!2160904 (validRegex!8513 lt!2462714)))

(assert (=> d!2160904 (= (findConcatSeparation!3004 lt!2462714 r3!135 Nil!66438 s!14361 s!14361) lt!2462749)))

(declare-fun b!6889883 () Bool)

(assert (=> b!6889883 (= e!4150793 (not (isDefined!13293 lt!2462749)))))

(assert (= (and d!2160904 res!2809156) b!6889886))

(assert (= (and d!2160904 c!1281025) b!6889879))

(assert (= (and d!2160904 (not c!1281025)) b!6889881))

(assert (= (and b!6889881 c!1281024) b!6889887))

(assert (= (and b!6889881 (not c!1281024)) b!6889880))

(assert (= (and d!2160904 res!2809159) b!6889885))

(assert (= (and b!6889885 res!2809160) b!6889884))

(assert (= (and b!6889884 res!2809158) b!6889882))

(assert (= (and d!2160904 (not res!2809157)) b!6889883))

(assert (=> b!6889880 m!7612116))

(assert (=> b!6889880 m!7612116))

(assert (=> b!6889880 m!7612118))

(assert (=> b!6889880 m!7612120))

(assert (=> b!6889880 m!7612116))

(declare-fun m!7612192 () Bool)

(assert (=> b!6889880 m!7612192))

(declare-fun m!7612194 () Bool)

(assert (=> b!6889883 m!7612194))

(declare-fun m!7612196 () Bool)

(assert (=> b!6889886 m!7612196))

(declare-fun m!7612198 () Bool)

(assert (=> b!6889882 m!7612198))

(declare-fun m!7612200 () Bool)

(assert (=> b!6889882 m!7612200))

(assert (=> b!6889885 m!7612198))

(declare-fun m!7612202 () Bool)

(assert (=> b!6889885 m!7612202))

(assert (=> b!6889884 m!7612198))

(declare-fun m!7612204 () Bool)

(assert (=> b!6889884 m!7612204))

(assert (=> d!2160904 m!7612194))

(declare-fun m!7612206 () Bool)

(assert (=> d!2160904 m!7612206))

(declare-fun m!7612208 () Bool)

(assert (=> d!2160904 m!7612208))

(assert (=> b!6889718 d!2160904))

(declare-fun bm!626925 () Bool)

(declare-fun call!626930 () Bool)

(declare-fun isEmpty!38695 (List!66562) Bool)

(assert (=> bm!626925 (= call!626930 (isEmpty!38695 (_1!36981 lt!2462711)))))

(declare-fun b!6889979 () Bool)

(declare-fun e!4150846 () Bool)

(declare-fun e!4150842 () Bool)

(assert (=> b!6889979 (= e!4150846 e!4150842)))

(declare-fun res!2809214 () Bool)

(assert (=> b!6889979 (=> res!2809214 e!4150842)))

(assert (=> b!6889979 (= res!2809214 call!626930)))

(declare-fun d!2160906 () Bool)

(declare-fun e!4150843 () Bool)

(assert (=> d!2160906 e!4150843))

(declare-fun c!1281047 () Bool)

(assert (=> d!2160906 (= c!1281047 ((_ is EmptyExpr!16805) lt!2462714))))

(declare-fun lt!2462766 () Bool)

(declare-fun e!4150844 () Bool)

(assert (=> d!2160906 (= lt!2462766 e!4150844)))

(declare-fun c!1281045 () Bool)

(assert (=> d!2160906 (= c!1281045 (isEmpty!38695 (_1!36981 lt!2462711)))))

(assert (=> d!2160906 (validRegex!8513 lt!2462714)))

(assert (=> d!2160906 (= (matchR!8950 lt!2462714 (_1!36981 lt!2462711)) lt!2462766)))

(declare-fun b!6889980 () Bool)

(declare-fun e!4150847 () Bool)

(assert (=> b!6889980 (= e!4150847 (not lt!2462766))))

(declare-fun b!6889981 () Bool)

(assert (=> b!6889981 (= e!4150843 e!4150847)))

(declare-fun c!1281046 () Bool)

(assert (=> b!6889981 (= c!1281046 ((_ is EmptyLang!16805) lt!2462714))))

(declare-fun b!6889982 () Bool)

(assert (=> b!6889982 (= e!4150844 (nullable!6687 lt!2462714))))

(declare-fun b!6889983 () Bool)

(declare-fun res!2809217 () Bool)

(declare-fun e!4150845 () Bool)

(assert (=> b!6889983 (=> res!2809217 e!4150845)))

(declare-fun e!4150841 () Bool)

(assert (=> b!6889983 (= res!2809217 e!4150841)))

(declare-fun res!2809216 () Bool)

(assert (=> b!6889983 (=> (not res!2809216) (not e!4150841))))

(assert (=> b!6889983 (= res!2809216 lt!2462766)))

(declare-fun b!6889984 () Bool)

(declare-fun res!2809215 () Bool)

(assert (=> b!6889984 (=> (not res!2809215) (not e!4150841))))

(assert (=> b!6889984 (= res!2809215 (not call!626930))))

(declare-fun b!6889985 () Bool)

(assert (=> b!6889985 (= e!4150843 (= lt!2462766 call!626930))))

(declare-fun b!6889986 () Bool)

(declare-fun res!2809219 () Bool)

(assert (=> b!6889986 (=> (not res!2809219) (not e!4150841))))

(declare-fun tail!12872 (List!66562) List!66562)

(assert (=> b!6889986 (= res!2809219 (isEmpty!38695 (tail!12872 (_1!36981 lt!2462711))))))

(declare-fun b!6889987 () Bool)

(assert (=> b!6889987 (= e!4150845 e!4150846)))

(declare-fun res!2809220 () Bool)

(assert (=> b!6889987 (=> (not res!2809220) (not e!4150846))))

(assert (=> b!6889987 (= res!2809220 (not lt!2462766))))

(declare-fun b!6889988 () Bool)

(declare-fun res!2809218 () Bool)

(assert (=> b!6889988 (=> res!2809218 e!4150845)))

(assert (=> b!6889988 (= res!2809218 (not ((_ is ElementMatch!16805) lt!2462714)))))

(assert (=> b!6889988 (= e!4150847 e!4150845)))

(declare-fun b!6889989 () Bool)

(declare-fun head!13820 (List!66562) C!33880)

(assert (=> b!6889989 (= e!4150842 (not (= (head!13820 (_1!36981 lt!2462711)) (c!1280991 lt!2462714))))))

(declare-fun b!6889990 () Bool)

(assert (=> b!6889990 (= e!4150841 (= (head!13820 (_1!36981 lt!2462711)) (c!1280991 lt!2462714)))))

(declare-fun b!6889991 () Bool)

(declare-fun derivativeStep!5367 (Regex!16805 C!33880) Regex!16805)

(assert (=> b!6889991 (= e!4150844 (matchR!8950 (derivativeStep!5367 lt!2462714 (head!13820 (_1!36981 lt!2462711))) (tail!12872 (_1!36981 lt!2462711))))))

(declare-fun b!6889992 () Bool)

(declare-fun res!2809221 () Bool)

(assert (=> b!6889992 (=> res!2809221 e!4150842)))

(assert (=> b!6889992 (= res!2809221 (not (isEmpty!38695 (tail!12872 (_1!36981 lt!2462711)))))))

(assert (= (and d!2160906 c!1281045) b!6889982))

(assert (= (and d!2160906 (not c!1281045)) b!6889991))

(assert (= (and d!2160906 c!1281047) b!6889985))

(assert (= (and d!2160906 (not c!1281047)) b!6889981))

(assert (= (and b!6889981 c!1281046) b!6889980))

(assert (= (and b!6889981 (not c!1281046)) b!6889988))

(assert (= (and b!6889988 (not res!2809218)) b!6889983))

(assert (= (and b!6889983 res!2809216) b!6889984))

(assert (= (and b!6889984 res!2809215) b!6889986))

(assert (= (and b!6889986 res!2809219) b!6889990))

(assert (= (and b!6889983 (not res!2809217)) b!6889987))

(assert (= (and b!6889987 res!2809220) b!6889979))

(assert (= (and b!6889979 (not res!2809214)) b!6889992))

(assert (= (and b!6889992 (not res!2809221)) b!6889989))

(assert (= (or b!6889985 b!6889979 b!6889984) bm!626925))

(declare-fun m!7612246 () Bool)

(assert (=> b!6889992 m!7612246))

(assert (=> b!6889992 m!7612246))

(declare-fun m!7612248 () Bool)

(assert (=> b!6889992 m!7612248))

(declare-fun m!7612250 () Bool)

(assert (=> b!6889989 m!7612250))

(assert (=> b!6889986 m!7612246))

(assert (=> b!6889986 m!7612246))

(assert (=> b!6889986 m!7612248))

(assert (=> b!6889990 m!7612250))

(declare-fun m!7612252 () Bool)

(assert (=> d!2160906 m!7612252))

(assert (=> d!2160906 m!7612208))

(assert (=> b!6889991 m!7612250))

(assert (=> b!6889991 m!7612250))

(declare-fun m!7612254 () Bool)

(assert (=> b!6889991 m!7612254))

(assert (=> b!6889991 m!7612246))

(assert (=> b!6889991 m!7612254))

(assert (=> b!6889991 m!7612246))

(declare-fun m!7612256 () Bool)

(assert (=> b!6889991 m!7612256))

(assert (=> bm!626925 m!7612252))

(declare-fun m!7612258 () Bool)

(assert (=> b!6889982 m!7612258))

(assert (=> b!6889718 d!2160906))

(declare-fun d!2160914 () Bool)

(assert (=> d!2160914 (= (Exists!3817 lambda!390545) (choose!51306 lambda!390545))))

(declare-fun bs!1839844 () Bool)

(assert (= bs!1839844 d!2160914))

(declare-fun m!7612260 () Bool)

(assert (=> bs!1839844 m!7612260))

(assert (=> b!6889718 d!2160914))

(declare-fun d!2160916 () Bool)

(assert (=> d!2160916 (= (Exists!3817 lambda!390546) (choose!51306 lambda!390546))))

(declare-fun bs!1839845 () Bool)

(assert (= bs!1839845 d!2160916))

(declare-fun m!7612262 () Bool)

(assert (=> bs!1839845 m!7612262))

(assert (=> b!6889718 d!2160916))

(declare-fun bs!1839857 () Bool)

(declare-fun d!2160918 () Bool)

(assert (= bs!1839857 (and d!2160918 b!6889711)))

(declare-fun lambda!390575 () Int)

(assert (=> bs!1839857 (= (and (= s!14361 lt!2462693) (= lt!2462714 r2!6280)) (= lambda!390575 lambda!390549))))

(declare-fun bs!1839858 () Bool)

(assert (= bs!1839858 (and d!2160918 b!6889727)))

(assert (=> bs!1839858 (not (= lambda!390575 lambda!390548))))

(assert (=> bs!1839857 (not (= lambda!390575 lambda!390550))))

(declare-fun bs!1839859 () Bool)

(assert (= bs!1839859 (and d!2160918 d!2160888)))

(assert (=> bs!1839859 (= (and (= lt!2462714 r1!6342) (= r3!135 lt!2462716)) (= lambda!390575 lambda!390565))))

(declare-fun bs!1839860 () Bool)

(assert (= bs!1839860 (and d!2160918 b!6889718)))

(assert (=> bs!1839860 (not (= lambda!390575 lambda!390546))))

(declare-fun bs!1839861 () Bool)

(assert (= bs!1839861 (and d!2160918 b!6889717)))

(assert (=> bs!1839861 (= (and (= lt!2462714 r1!6342) (= r3!135 lt!2462716)) (= lambda!390575 lambda!390551))))

(assert (=> bs!1839858 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462714 r1!6342) (= r3!135 r2!6280)) (= lambda!390575 lambda!390547))))

(assert (=> bs!1839860 (= lambda!390575 lambda!390545)))

(declare-fun bs!1839862 () Bool)

(assert (= bs!1839862 (and d!2160918 b!6889709)))

(assert (=> bs!1839862 (not (= lambda!390575 lambda!390552))))

(assert (=> d!2160918 true))

(assert (=> d!2160918 true))

(assert (=> d!2160918 true))

(declare-fun lambda!390576 () Int)

(assert (=> bs!1839857 (not (= lambda!390576 lambda!390549))))

(assert (=> bs!1839858 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462714 r1!6342) (= r3!135 r2!6280)) (= lambda!390576 lambda!390548))))

(assert (=> bs!1839857 (= (and (= s!14361 lt!2462693) (= lt!2462714 r2!6280)) (= lambda!390576 lambda!390550))))

(assert (=> bs!1839859 (not (= lambda!390576 lambda!390565))))

(assert (=> bs!1839860 (= lambda!390576 lambda!390546)))

(assert (=> bs!1839861 (not (= lambda!390576 lambda!390551))))

(declare-fun bs!1839865 () Bool)

(assert (= bs!1839865 d!2160918))

(assert (=> bs!1839865 (not (= lambda!390576 lambda!390575))))

(assert (=> bs!1839858 (not (= lambda!390576 lambda!390547))))

(assert (=> bs!1839860 (not (= lambda!390576 lambda!390545))))

(assert (=> bs!1839862 (= (and (= lt!2462714 r1!6342) (= r3!135 lt!2462716)) (= lambda!390576 lambda!390552))))

(assert (=> d!2160918 true))

(assert (=> d!2160918 true))

(assert (=> d!2160918 true))

(assert (=> d!2160918 (= (Exists!3817 lambda!390575) (Exists!3817 lambda!390576))))

(declare-fun lt!2462776 () Unit!160330)

(declare-fun choose!51313 (Regex!16805 Regex!16805 List!66562) Unit!160330)

(assert (=> d!2160918 (= lt!2462776 (choose!51313 lt!2462714 r3!135 s!14361))))

(assert (=> d!2160918 (validRegex!8513 lt!2462714)))

(assert (=> d!2160918 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2296 lt!2462714 r3!135 s!14361) lt!2462776)))

(declare-fun m!7612314 () Bool)

(assert (=> bs!1839865 m!7612314))

(declare-fun m!7612316 () Bool)

(assert (=> bs!1839865 m!7612316))

(declare-fun m!7612318 () Bool)

(assert (=> bs!1839865 m!7612318))

(assert (=> bs!1839865 m!7612208))

(assert (=> b!6889718 d!2160918))

(declare-fun bs!1839866 () Bool)

(declare-fun d!2160934 () Bool)

(assert (= bs!1839866 (and d!2160934 b!6889711)))

(declare-fun lambda!390577 () Int)

(assert (=> bs!1839866 (= (and (= s!14361 lt!2462693) (= lt!2462714 r2!6280)) (= lambda!390577 lambda!390549))))

(declare-fun bs!1839867 () Bool)

(assert (= bs!1839867 (and d!2160934 b!6889727)))

(assert (=> bs!1839867 (not (= lambda!390577 lambda!390548))))

(assert (=> bs!1839866 (not (= lambda!390577 lambda!390550))))

(declare-fun bs!1839868 () Bool)

(assert (= bs!1839868 (and d!2160934 d!2160888)))

(assert (=> bs!1839868 (= (and (= lt!2462714 r1!6342) (= r3!135 lt!2462716)) (= lambda!390577 lambda!390565))))

(declare-fun bs!1839869 () Bool)

(assert (= bs!1839869 (and d!2160934 b!6889718)))

(assert (=> bs!1839869 (not (= lambda!390577 lambda!390546))))

(declare-fun bs!1839870 () Bool)

(assert (= bs!1839870 (and d!2160934 b!6889717)))

(assert (=> bs!1839870 (= (and (= lt!2462714 r1!6342) (= r3!135 lt!2462716)) (= lambda!390577 lambda!390551))))

(declare-fun bs!1839871 () Bool)

(assert (= bs!1839871 (and d!2160934 d!2160918)))

(assert (=> bs!1839871 (= lambda!390577 lambda!390575)))

(assert (=> bs!1839871 (not (= lambda!390577 lambda!390576))))

(assert (=> bs!1839867 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462714 r1!6342) (= r3!135 r2!6280)) (= lambda!390577 lambda!390547))))

(assert (=> bs!1839869 (= lambda!390577 lambda!390545)))

(declare-fun bs!1839872 () Bool)

(assert (= bs!1839872 (and d!2160934 b!6889709)))

(assert (=> bs!1839872 (not (= lambda!390577 lambda!390552))))

(assert (=> d!2160934 true))

(assert (=> d!2160934 true))

(assert (=> d!2160934 true))

(assert (=> d!2160934 (= (isDefined!13293 (findConcatSeparation!3004 lt!2462714 r3!135 Nil!66438 s!14361 s!14361)) (Exists!3817 lambda!390577))))

(declare-fun lt!2462783 () Unit!160330)

(assert (=> d!2160934 (= lt!2462783 (choose!51308 lt!2462714 r3!135 s!14361))))

(assert (=> d!2160934 (validRegex!8513 lt!2462714)))

(assert (=> d!2160934 (= (lemmaFindConcatSeparationEquivalentToExists!2768 lt!2462714 r3!135 s!14361) lt!2462783)))

(declare-fun bs!1839873 () Bool)

(assert (= bs!1839873 d!2160934))

(assert (=> bs!1839873 m!7612208))

(declare-fun m!7612334 () Bool)

(assert (=> bs!1839873 m!7612334))

(assert (=> bs!1839873 m!7612096))

(declare-fun m!7612336 () Bool)

(assert (=> bs!1839873 m!7612336))

(declare-fun m!7612338 () Bool)

(assert (=> bs!1839873 m!7612338))

(assert (=> bs!1839873 m!7612096))

(assert (=> b!6889718 d!2160934))

(declare-fun bs!1839920 () Bool)

(declare-fun b!6890091 () Bool)

(assert (= bs!1839920 (and b!6890091 b!6889711)))

(declare-fun lambda!390587 () Int)

(assert (=> bs!1839920 (not (= lambda!390587 lambda!390549))))

(declare-fun bs!1839921 () Bool)

(assert (= bs!1839921 (and b!6890091 d!2160934)))

(assert (=> bs!1839921 (not (= lambda!390587 lambda!390577))))

(declare-fun bs!1839922 () Bool)

(assert (= bs!1839922 (and b!6890091 b!6889727)))

(assert (=> bs!1839922 (not (= lambda!390587 lambda!390548))))

(assert (=> bs!1839920 (not (= lambda!390587 lambda!390550))))

(declare-fun bs!1839923 () Bool)

(assert (= bs!1839923 (and b!6890091 d!2160888)))

(assert (=> bs!1839923 (not (= lambda!390587 lambda!390565))))

(declare-fun bs!1839924 () Bool)

(assert (= bs!1839924 (and b!6890091 b!6889718)))

(assert (=> bs!1839924 (not (= lambda!390587 lambda!390546))))

(declare-fun bs!1839925 () Bool)

(assert (= bs!1839925 (and b!6890091 b!6889717)))

(assert (=> bs!1839925 (not (= lambda!390587 lambda!390551))))

(declare-fun bs!1839926 () Bool)

(assert (= bs!1839926 (and b!6890091 d!2160918)))

(assert (=> bs!1839926 (not (= lambda!390587 lambda!390575))))

(assert (=> bs!1839926 (not (= lambda!390587 lambda!390576))))

(assert (=> bs!1839922 (not (= lambda!390587 lambda!390547))))

(assert (=> bs!1839924 (not (= lambda!390587 lambda!390545))))

(declare-fun bs!1839927 () Bool)

(assert (= bs!1839927 (and b!6890091 b!6889709)))

(assert (=> bs!1839927 (not (= lambda!390587 lambda!390552))))

(assert (=> b!6890091 true))

(assert (=> b!6890091 true))

(declare-fun bs!1839928 () Bool)

(declare-fun b!6890093 () Bool)

(assert (= bs!1839928 (and b!6890093 b!6889711)))

(declare-fun lambda!390588 () Int)

(assert (=> bs!1839928 (not (= lambda!390588 lambda!390549))))

(declare-fun bs!1839929 () Bool)

(assert (= bs!1839929 (and b!6890093 b!6890091)))

(assert (=> bs!1839929 (not (= lambda!390588 lambda!390587))))

(declare-fun bs!1839930 () Bool)

(assert (= bs!1839930 (and b!6890093 d!2160934)))

(assert (=> bs!1839930 (not (= lambda!390588 lambda!390577))))

(declare-fun bs!1839931 () Bool)

(assert (= bs!1839931 (and b!6890093 b!6889727)))

(assert (=> bs!1839931 (= (and (= (regOne!34122 lt!2462714) r1!6342) (= (regTwo!34122 lt!2462714) r2!6280)) (= lambda!390588 lambda!390548))))

(assert (=> bs!1839928 (= (and (= (_1!36981 lt!2462711) lt!2462693) (= (regOne!34122 lt!2462714) r2!6280) (= (regTwo!34122 lt!2462714) r3!135)) (= lambda!390588 lambda!390550))))

(declare-fun bs!1839932 () Bool)

(assert (= bs!1839932 (and b!6890093 d!2160888)))

(assert (=> bs!1839932 (not (= lambda!390588 lambda!390565))))

(declare-fun bs!1839933 () Bool)

(assert (= bs!1839933 (and b!6890093 b!6889718)))

(assert (=> bs!1839933 (= (and (= (_1!36981 lt!2462711) s!14361) (= (regOne!34122 lt!2462714) lt!2462714) (= (regTwo!34122 lt!2462714) r3!135)) (= lambda!390588 lambda!390546))))

(declare-fun bs!1839934 () Bool)

(assert (= bs!1839934 (and b!6890093 b!6889717)))

(assert (=> bs!1839934 (not (= lambda!390588 lambda!390551))))

(declare-fun bs!1839935 () Bool)

(assert (= bs!1839935 (and b!6890093 d!2160918)))

(assert (=> bs!1839935 (not (= lambda!390588 lambda!390575))))

(assert (=> bs!1839935 (= (and (= (_1!36981 lt!2462711) s!14361) (= (regOne!34122 lt!2462714) lt!2462714) (= (regTwo!34122 lt!2462714) r3!135)) (= lambda!390588 lambda!390576))))

(assert (=> bs!1839931 (not (= lambda!390588 lambda!390547))))

(assert (=> bs!1839933 (not (= lambda!390588 lambda!390545))))

(declare-fun bs!1839936 () Bool)

(assert (= bs!1839936 (and b!6890093 b!6889709)))

(assert (=> bs!1839936 (= (and (= (_1!36981 lt!2462711) s!14361) (= (regOne!34122 lt!2462714) r1!6342) (= (regTwo!34122 lt!2462714) lt!2462716)) (= lambda!390588 lambda!390552))))

(assert (=> b!6890093 true))

(assert (=> b!6890093 true))

(declare-fun call!626940 () Bool)

(declare-fun c!1281069 () Bool)

(declare-fun bm!626934 () Bool)

(assert (=> bm!626934 (= call!626940 (Exists!3817 (ite c!1281069 lambda!390587 lambda!390588)))))

(declare-fun b!6890085 () Bool)

(declare-fun c!1281068 () Bool)

(assert (=> b!6890085 (= c!1281068 ((_ is Union!16805) lt!2462714))))

(declare-fun e!4150902 () Bool)

(declare-fun e!4150903 () Bool)

(assert (=> b!6890085 (= e!4150902 e!4150903)))

(declare-fun bm!626935 () Bool)

(declare-fun call!626939 () Bool)

(assert (=> bm!626935 (= call!626939 (isEmpty!38695 (_1!36981 lt!2462711)))))

(declare-fun d!2160940 () Bool)

(declare-fun c!1281071 () Bool)

(assert (=> d!2160940 (= c!1281071 ((_ is EmptyExpr!16805) lt!2462714))))

(declare-fun e!4150901 () Bool)

(assert (=> d!2160940 (= (matchRSpec!3868 lt!2462714 (_1!36981 lt!2462711)) e!4150901)))

(declare-fun b!6890086 () Bool)

(declare-fun res!2809275 () Bool)

(declare-fun e!4150899 () Bool)

(assert (=> b!6890086 (=> res!2809275 e!4150899)))

(assert (=> b!6890086 (= res!2809275 call!626939)))

(declare-fun e!4150900 () Bool)

(assert (=> b!6890086 (= e!4150900 e!4150899)))

(declare-fun b!6890087 () Bool)

(declare-fun e!4150904 () Bool)

(assert (=> b!6890087 (= e!4150901 e!4150904)))

(declare-fun res!2809276 () Bool)

(assert (=> b!6890087 (= res!2809276 (not ((_ is EmptyLang!16805) lt!2462714)))))

(assert (=> b!6890087 (=> (not res!2809276) (not e!4150904))))

(declare-fun b!6890088 () Bool)

(declare-fun c!1281070 () Bool)

(assert (=> b!6890088 (= c!1281070 ((_ is ElementMatch!16805) lt!2462714))))

(assert (=> b!6890088 (= e!4150904 e!4150902)))

(declare-fun b!6890089 () Bool)

(assert (=> b!6890089 (= e!4150902 (= (_1!36981 lt!2462711) (Cons!66438 (c!1280991 lt!2462714) Nil!66438)))))

(declare-fun b!6890090 () Bool)

(declare-fun e!4150898 () Bool)

(assert (=> b!6890090 (= e!4150898 (matchRSpec!3868 (regTwo!34123 lt!2462714) (_1!36981 lt!2462711)))))

(assert (=> b!6890091 (= e!4150899 call!626940)))

(declare-fun b!6890092 () Bool)

(assert (=> b!6890092 (= e!4150903 e!4150900)))

(assert (=> b!6890092 (= c!1281069 ((_ is Star!16805) lt!2462714))))

(assert (=> b!6890093 (= e!4150900 call!626940)))

(declare-fun b!6890094 () Bool)

(assert (=> b!6890094 (= e!4150901 call!626939)))

(declare-fun b!6890095 () Bool)

(assert (=> b!6890095 (= e!4150903 e!4150898)))

(declare-fun res!2809274 () Bool)

(assert (=> b!6890095 (= res!2809274 (matchRSpec!3868 (regOne!34123 lt!2462714) (_1!36981 lt!2462711)))))

(assert (=> b!6890095 (=> res!2809274 e!4150898)))

(assert (= (and d!2160940 c!1281071) b!6890094))

(assert (= (and d!2160940 (not c!1281071)) b!6890087))

(assert (= (and b!6890087 res!2809276) b!6890088))

(assert (= (and b!6890088 c!1281070) b!6890089))

(assert (= (and b!6890088 (not c!1281070)) b!6890085))

(assert (= (and b!6890085 c!1281068) b!6890095))

(assert (= (and b!6890085 (not c!1281068)) b!6890092))

(assert (= (and b!6890095 (not res!2809274)) b!6890090))

(assert (= (and b!6890092 c!1281069) b!6890086))

(assert (= (and b!6890092 (not c!1281069)) b!6890093))

(assert (= (and b!6890086 (not res!2809275)) b!6890091))

(assert (= (or b!6890091 b!6890093) bm!626934))

(assert (= (or b!6890094 b!6890086) bm!626935))

(declare-fun m!7612368 () Bool)

(assert (=> bm!626934 m!7612368))

(assert (=> bm!626935 m!7612252))

(declare-fun m!7612370 () Bool)

(assert (=> b!6890090 m!7612370))

(declare-fun m!7612372 () Bool)

(assert (=> b!6890095 m!7612372))

(assert (=> b!6889718 d!2160940))

(declare-fun d!2160954 () Bool)

(assert (=> d!2160954 (= (matchR!8950 lt!2462714 (_1!36981 lt!2462711)) (matchRSpec!3868 lt!2462714 (_1!36981 lt!2462711)))))

(declare-fun lt!2462788 () Unit!160330)

(declare-fun choose!51314 (Regex!16805 List!66562) Unit!160330)

(assert (=> d!2160954 (= lt!2462788 (choose!51314 lt!2462714 (_1!36981 lt!2462711)))))

(assert (=> d!2160954 (validRegex!8513 lt!2462714)))

(assert (=> d!2160954 (= (mainMatchTheorem!3868 lt!2462714 (_1!36981 lt!2462711)) lt!2462788)))

(declare-fun bs!1839952 () Bool)

(assert (= bs!1839952 d!2160954))

(assert (=> bs!1839952 m!7612088))

(assert (=> bs!1839952 m!7612080))

(declare-fun m!7612374 () Bool)

(assert (=> bs!1839952 m!7612374))

(assert (=> bs!1839952 m!7612208))

(assert (=> b!6889718 d!2160954))

(declare-fun d!2160956 () Bool)

(assert (=> d!2160956 (= (isDefined!13293 lt!2462702) (not (isEmpty!38694 lt!2462702)))))

(declare-fun bs!1839955 () Bool)

(assert (= bs!1839955 d!2160956))

(declare-fun m!7612376 () Bool)

(assert (=> bs!1839955 m!7612376))

(assert (=> b!6889718 d!2160956))

(declare-fun b!6890134 () Bool)

(declare-fun res!2809297 () Bool)

(declare-fun e!4150937 () Bool)

(assert (=> b!6890134 (=> (not res!2809297) (not e!4150937))))

(declare-fun call!626954 () Bool)

(assert (=> b!6890134 (= res!2809297 call!626954)))

(declare-fun e!4150938 () Bool)

(assert (=> b!6890134 (= e!4150938 e!4150937)))

(declare-fun c!1281082 () Bool)

(declare-fun bm!626947 () Bool)

(declare-fun call!626953 () Bool)

(declare-fun c!1281083 () Bool)

(assert (=> bm!626947 (= call!626953 (validRegex!8513 (ite c!1281083 (reg!17134 r2!6280) (ite c!1281082 (regOne!34123 r2!6280) (regTwo!34122 r2!6280)))))))

(declare-fun bm!626948 () Bool)

(assert (=> bm!626948 (= call!626954 call!626953)))

(declare-fun b!6890136 () Bool)

(declare-fun e!4150935 () Bool)

(assert (=> b!6890136 (= e!4150935 call!626953)))

(declare-fun b!6890137 () Bool)

(declare-fun call!626952 () Bool)

(assert (=> b!6890137 (= e!4150937 call!626952)))

(declare-fun b!6890138 () Bool)

(declare-fun e!4150933 () Bool)

(assert (=> b!6890138 (= e!4150933 e!4150935)))

(declare-fun res!2809298 () Bool)

(assert (=> b!6890138 (= res!2809298 (not (nullable!6687 (reg!17134 r2!6280))))))

(assert (=> b!6890138 (=> (not res!2809298) (not e!4150935))))

(declare-fun b!6890139 () Bool)

(assert (=> b!6890139 (= e!4150933 e!4150938)))

(assert (=> b!6890139 (= c!1281082 ((_ is Union!16805) r2!6280))))

(declare-fun b!6890140 () Bool)

(declare-fun e!4150939 () Bool)

(assert (=> b!6890140 (= e!4150939 e!4150933)))

(assert (=> b!6890140 (= c!1281083 ((_ is Star!16805) r2!6280))))

(declare-fun b!6890141 () Bool)

(declare-fun res!2809296 () Bool)

(declare-fun e!4150934 () Bool)

(assert (=> b!6890141 (=> res!2809296 e!4150934)))

(assert (=> b!6890141 (= res!2809296 (not ((_ is Concat!25650) r2!6280)))))

(assert (=> b!6890141 (= e!4150938 e!4150934)))

(declare-fun d!2160958 () Bool)

(declare-fun res!2809299 () Bool)

(assert (=> d!2160958 (=> res!2809299 e!4150939)))

(assert (=> d!2160958 (= res!2809299 ((_ is ElementMatch!16805) r2!6280))))

(assert (=> d!2160958 (= (validRegex!8513 r2!6280) e!4150939)))

(declare-fun b!6890135 () Bool)

(declare-fun e!4150936 () Bool)

(assert (=> b!6890135 (= e!4150936 call!626954)))

(declare-fun bm!626949 () Bool)

(assert (=> bm!626949 (= call!626952 (validRegex!8513 (ite c!1281082 (regTwo!34123 r2!6280) (regOne!34122 r2!6280))))))

(declare-fun b!6890142 () Bool)

(assert (=> b!6890142 (= e!4150934 e!4150936)))

(declare-fun res!2809295 () Bool)

(assert (=> b!6890142 (=> (not res!2809295) (not e!4150936))))

(assert (=> b!6890142 (= res!2809295 call!626952)))

(assert (= (and d!2160958 (not res!2809299)) b!6890140))

(assert (= (and b!6890140 c!1281083) b!6890138))

(assert (= (and b!6890140 (not c!1281083)) b!6890139))

(assert (= (and b!6890138 res!2809298) b!6890136))

(assert (= (and b!6890139 c!1281082) b!6890134))

(assert (= (and b!6890139 (not c!1281082)) b!6890141))

(assert (= (and b!6890134 res!2809297) b!6890137))

(assert (= (and b!6890141 (not res!2809296)) b!6890142))

(assert (= (and b!6890142 res!2809295) b!6890135))

(assert (= (or b!6890134 b!6890135) bm!626948))

(assert (= (or b!6890137 b!6890142) bm!626949))

(assert (= (or b!6890136 bm!626948) bm!626947))

(declare-fun m!7612378 () Bool)

(assert (=> bm!626947 m!7612378))

(declare-fun m!7612380 () Bool)

(assert (=> b!6890138 m!7612380))

(declare-fun m!7612382 () Bool)

(assert (=> bm!626949 m!7612382))

(assert (=> b!6889719 d!2160958))

(declare-fun b!6890143 () Bool)

(declare-fun res!2809302 () Bool)

(declare-fun e!4150944 () Bool)

(assert (=> b!6890143 (=> (not res!2809302) (not e!4150944))))

(declare-fun call!626957 () Bool)

(assert (=> b!6890143 (= res!2809302 call!626957)))

(declare-fun e!4150945 () Bool)

(assert (=> b!6890143 (= e!4150945 e!4150944)))

(declare-fun call!626956 () Bool)

(declare-fun c!1281084 () Bool)

(declare-fun bm!626950 () Bool)

(declare-fun c!1281085 () Bool)

(assert (=> bm!626950 (= call!626956 (validRegex!8513 (ite c!1281085 (reg!17134 r3!135) (ite c!1281084 (regOne!34123 r3!135) (regTwo!34122 r3!135)))))))

(declare-fun bm!626951 () Bool)

(assert (=> bm!626951 (= call!626957 call!626956)))

(declare-fun b!6890145 () Bool)

(declare-fun e!4150942 () Bool)

(assert (=> b!6890145 (= e!4150942 call!626956)))

(declare-fun b!6890146 () Bool)

(declare-fun call!626955 () Bool)

(assert (=> b!6890146 (= e!4150944 call!626955)))

(declare-fun b!6890147 () Bool)

(declare-fun e!4150940 () Bool)

(assert (=> b!6890147 (= e!4150940 e!4150942)))

(declare-fun res!2809303 () Bool)

(assert (=> b!6890147 (= res!2809303 (not (nullable!6687 (reg!17134 r3!135))))))

(assert (=> b!6890147 (=> (not res!2809303) (not e!4150942))))

(declare-fun b!6890148 () Bool)

(assert (=> b!6890148 (= e!4150940 e!4150945)))

(assert (=> b!6890148 (= c!1281084 ((_ is Union!16805) r3!135))))

(declare-fun b!6890149 () Bool)

(declare-fun e!4150946 () Bool)

(assert (=> b!6890149 (= e!4150946 e!4150940)))

(assert (=> b!6890149 (= c!1281085 ((_ is Star!16805) r3!135))))

(declare-fun b!6890150 () Bool)

(declare-fun res!2809301 () Bool)

(declare-fun e!4150941 () Bool)

(assert (=> b!6890150 (=> res!2809301 e!4150941)))

(assert (=> b!6890150 (= res!2809301 (not ((_ is Concat!25650) r3!135)))))

(assert (=> b!6890150 (= e!4150945 e!4150941)))

(declare-fun d!2160960 () Bool)

(declare-fun res!2809304 () Bool)

(assert (=> d!2160960 (=> res!2809304 e!4150946)))

(assert (=> d!2160960 (= res!2809304 ((_ is ElementMatch!16805) r3!135))))

(assert (=> d!2160960 (= (validRegex!8513 r3!135) e!4150946)))

(declare-fun b!6890144 () Bool)

(declare-fun e!4150943 () Bool)

(assert (=> b!6890144 (= e!4150943 call!626957)))

(declare-fun bm!626952 () Bool)

(assert (=> bm!626952 (= call!626955 (validRegex!8513 (ite c!1281084 (regTwo!34123 r3!135) (regOne!34122 r3!135))))))

(declare-fun b!6890151 () Bool)

(assert (=> b!6890151 (= e!4150941 e!4150943)))

(declare-fun res!2809300 () Bool)

(assert (=> b!6890151 (=> (not res!2809300) (not e!4150943))))

(assert (=> b!6890151 (= res!2809300 call!626955)))

(assert (= (and d!2160960 (not res!2809304)) b!6890149))

(assert (= (and b!6890149 c!1281085) b!6890147))

(assert (= (and b!6890149 (not c!1281085)) b!6890148))

(assert (= (and b!6890147 res!2809303) b!6890145))

(assert (= (and b!6890148 c!1281084) b!6890143))

(assert (= (and b!6890148 (not c!1281084)) b!6890150))

(assert (= (and b!6890143 res!2809302) b!6890146))

(assert (= (and b!6890150 (not res!2809301)) b!6890151))

(assert (= (and b!6890151 res!2809300) b!6890144))

(assert (= (or b!6890143 b!6890144) bm!626951))

(assert (= (or b!6890146 b!6890151) bm!626952))

(assert (= (or b!6890145 bm!626951) bm!626950))

(declare-fun m!7612384 () Bool)

(assert (=> bm!626950 m!7612384))

(declare-fun m!7612386 () Bool)

(assert (=> b!6890147 m!7612386))

(declare-fun m!7612388 () Bool)

(assert (=> bm!626952 m!7612388))

(assert (=> b!6889725 d!2160960))

(declare-fun b!6890152 () Bool)

(declare-fun e!4150947 () Option!16590)

(assert (=> b!6890152 (= e!4150947 (Some!16589 (tuple2!67357 Nil!66438 (_1!36981 lt!2462711))))))

(declare-fun b!6890153 () Bool)

(declare-fun lt!2462790 () Unit!160330)

(declare-fun lt!2462791 () Unit!160330)

(assert (=> b!6890153 (= lt!2462790 lt!2462791)))

(assert (=> b!6890153 (= (++!14884 (++!14884 Nil!66438 (Cons!66438 (h!72886 (_1!36981 lt!2462711)) Nil!66438)) (t!380305 (_1!36981 lt!2462711))) (_1!36981 lt!2462711))))

(assert (=> b!6890153 (= lt!2462791 (lemmaMoveElementToOtherListKeepsConcatEq!2778 Nil!66438 (h!72886 (_1!36981 lt!2462711)) (t!380305 (_1!36981 lt!2462711)) (_1!36981 lt!2462711)))))

(declare-fun e!4150948 () Option!16590)

(assert (=> b!6890153 (= e!4150948 (findConcatSeparation!3004 r1!6342 r2!6280 (++!14884 Nil!66438 (Cons!66438 (h!72886 (_1!36981 lt!2462711)) Nil!66438)) (t!380305 (_1!36981 lt!2462711)) (_1!36981 lt!2462711)))))

(declare-fun b!6890154 () Bool)

(assert (=> b!6890154 (= e!4150947 e!4150948)))

(declare-fun c!1281086 () Bool)

(assert (=> b!6890154 (= c!1281086 ((_ is Nil!66438) (_1!36981 lt!2462711)))))

(declare-fun b!6890155 () Bool)

(declare-fun e!4150949 () Bool)

(declare-fun lt!2462789 () Option!16590)

(assert (=> b!6890155 (= e!4150949 (= (++!14884 (_1!36981 (get!23170 lt!2462789)) (_2!36981 (get!23170 lt!2462789))) (_1!36981 lt!2462711)))))

(declare-fun b!6890157 () Bool)

(declare-fun res!2809307 () Bool)

(assert (=> b!6890157 (=> (not res!2809307) (not e!4150949))))

(assert (=> b!6890157 (= res!2809307 (matchR!8950 r2!6280 (_2!36981 (get!23170 lt!2462789))))))

(declare-fun b!6890158 () Bool)

(declare-fun res!2809309 () Bool)

(assert (=> b!6890158 (=> (not res!2809309) (not e!4150949))))

(assert (=> b!6890158 (= res!2809309 (matchR!8950 r1!6342 (_1!36981 (get!23170 lt!2462789))))))

(declare-fun b!6890159 () Bool)

(declare-fun e!4150951 () Bool)

(assert (=> b!6890159 (= e!4150951 (matchR!8950 r2!6280 (_1!36981 lt!2462711)))))

(declare-fun b!6890160 () Bool)

(assert (=> b!6890160 (= e!4150948 None!16589)))

(declare-fun d!2160962 () Bool)

(declare-fun e!4150950 () Bool)

(assert (=> d!2160962 e!4150950))

(declare-fun res!2809306 () Bool)

(assert (=> d!2160962 (=> res!2809306 e!4150950)))

(assert (=> d!2160962 (= res!2809306 e!4150949)))

(declare-fun res!2809308 () Bool)

(assert (=> d!2160962 (=> (not res!2809308) (not e!4150949))))

(assert (=> d!2160962 (= res!2809308 (isDefined!13293 lt!2462789))))

(assert (=> d!2160962 (= lt!2462789 e!4150947)))

(declare-fun c!1281087 () Bool)

(assert (=> d!2160962 (= c!1281087 e!4150951)))

(declare-fun res!2809305 () Bool)

(assert (=> d!2160962 (=> (not res!2809305) (not e!4150951))))

(assert (=> d!2160962 (= res!2809305 (matchR!8950 r1!6342 Nil!66438))))

(assert (=> d!2160962 (validRegex!8513 r1!6342)))

(assert (=> d!2160962 (= (findConcatSeparation!3004 r1!6342 r2!6280 Nil!66438 (_1!36981 lt!2462711) (_1!36981 lt!2462711)) lt!2462789)))

(declare-fun b!6890156 () Bool)

(assert (=> b!6890156 (= e!4150950 (not (isDefined!13293 lt!2462789)))))

(assert (= (and d!2160962 res!2809305) b!6890159))

(assert (= (and d!2160962 c!1281087) b!6890152))

(assert (= (and d!2160962 (not c!1281087)) b!6890154))

(assert (= (and b!6890154 c!1281086) b!6890160))

(assert (= (and b!6890154 (not c!1281086)) b!6890153))

(assert (= (and d!2160962 res!2809308) b!6890158))

(assert (= (and b!6890158 res!2809309) b!6890157))

(assert (= (and b!6890157 res!2809307) b!6890155))

(assert (= (and d!2160962 (not res!2809306)) b!6890156))

(declare-fun m!7612398 () Bool)

(assert (=> b!6890153 m!7612398))

(assert (=> b!6890153 m!7612398))

(declare-fun m!7612404 () Bool)

(assert (=> b!6890153 m!7612404))

(declare-fun m!7612406 () Bool)

(assert (=> b!6890153 m!7612406))

(assert (=> b!6890153 m!7612398))

(declare-fun m!7612408 () Bool)

(assert (=> b!6890153 m!7612408))

(declare-fun m!7612410 () Bool)

(assert (=> b!6890156 m!7612410))

(declare-fun m!7612412 () Bool)

(assert (=> b!6890159 m!7612412))

(declare-fun m!7612414 () Bool)

(assert (=> b!6890155 m!7612414))

(declare-fun m!7612416 () Bool)

(assert (=> b!6890155 m!7612416))

(assert (=> b!6890158 m!7612414))

(declare-fun m!7612418 () Bool)

(assert (=> b!6890158 m!7612418))

(assert (=> b!6890157 m!7612414))

(declare-fun m!7612420 () Bool)

(assert (=> b!6890157 m!7612420))

(assert (=> d!2160962 m!7612410))

(assert (=> d!2160962 m!7612142))

(assert (=> d!2160962 m!7612026))

(assert (=> b!6889727 d!2160962))

(declare-fun d!2160968 () Bool)

(assert (=> d!2160968 (= (Exists!3817 lambda!390547) (choose!51306 lambda!390547))))

(declare-fun bs!1839967 () Bool)

(assert (= bs!1839967 d!2160968))

(declare-fun m!7612422 () Bool)

(assert (=> bs!1839967 m!7612422))

(assert (=> b!6889727 d!2160968))

(declare-fun bs!1839972 () Bool)

(declare-fun d!2160970 () Bool)

(assert (= bs!1839972 (and d!2160970 b!6889711)))

(declare-fun lambda!390592 () Int)

(assert (=> bs!1839972 (= (and (= (_1!36981 lt!2462711) lt!2462693) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390592 lambda!390549))))

(declare-fun bs!1839974 () Bool)

(assert (= bs!1839974 (and d!2160970 b!6890091)))

(assert (=> bs!1839974 (not (= lambda!390592 lambda!390587))))

(declare-fun bs!1839977 () Bool)

(assert (= bs!1839977 (and d!2160970 d!2160934)))

(assert (=> bs!1839977 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390592 lambda!390577))))

(declare-fun bs!1839979 () Bool)

(assert (= bs!1839979 (and d!2160970 b!6889727)))

(assert (=> bs!1839979 (not (= lambda!390592 lambda!390548))))

(assert (=> bs!1839972 (not (= lambda!390592 lambda!390550))))

(declare-fun bs!1839982 () Bool)

(assert (= bs!1839982 (and d!2160970 d!2160888)))

(assert (=> bs!1839982 (= (and (= (_1!36981 lt!2462711) s!14361) (= r2!6280 lt!2462716)) (= lambda!390592 lambda!390565))))

(declare-fun bs!1839984 () Bool)

(assert (= bs!1839984 (and d!2160970 b!6889718)))

(assert (=> bs!1839984 (not (= lambda!390592 lambda!390546))))

(declare-fun bs!1839985 () Bool)

(assert (= bs!1839985 (and d!2160970 b!6889717)))

(assert (=> bs!1839985 (= (and (= (_1!36981 lt!2462711) s!14361) (= r2!6280 lt!2462716)) (= lambda!390592 lambda!390551))))

(declare-fun bs!1839986 () Bool)

(assert (= bs!1839986 (and d!2160970 d!2160918)))

(assert (=> bs!1839986 (not (= lambda!390592 lambda!390576))))

(assert (=> bs!1839979 (= lambda!390592 lambda!390547)))

(assert (=> bs!1839986 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390592 lambda!390575))))

(declare-fun bs!1839989 () Bool)

(assert (= bs!1839989 (and d!2160970 b!6890093)))

(assert (=> bs!1839989 (not (= lambda!390592 lambda!390588))))

(assert (=> bs!1839984 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390592 lambda!390545))))

(declare-fun bs!1839991 () Bool)

(assert (= bs!1839991 (and d!2160970 b!6889709)))

(assert (=> bs!1839991 (not (= lambda!390592 lambda!390552))))

(assert (=> d!2160970 true))

(assert (=> d!2160970 true))

(assert (=> d!2160970 true))

(declare-fun lambda!390593 () Int)

(assert (=> bs!1839972 (not (= lambda!390593 lambda!390549))))

(assert (=> bs!1839974 (not (= lambda!390593 lambda!390587))))

(assert (=> bs!1839977 (not (= lambda!390593 lambda!390577))))

(assert (=> bs!1839972 (= (and (= (_1!36981 lt!2462711) lt!2462693) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390593 lambda!390550))))

(assert (=> bs!1839982 (not (= lambda!390593 lambda!390565))))

(assert (=> bs!1839984 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390593 lambda!390546))))

(assert (=> bs!1839985 (not (= lambda!390593 lambda!390551))))

(assert (=> bs!1839986 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390593 lambda!390576))))

(assert (=> bs!1839979 (not (= lambda!390593 lambda!390547))))

(declare-fun bs!1840000 () Bool)

(assert (= bs!1840000 d!2160970))

(assert (=> bs!1840000 (not (= lambda!390593 lambda!390592))))

(assert (=> bs!1839979 (= lambda!390593 lambda!390548)))

(assert (=> bs!1839986 (not (= lambda!390593 lambda!390575))))

(assert (=> bs!1839989 (= (and (= r1!6342 (regOne!34122 lt!2462714)) (= r2!6280 (regTwo!34122 lt!2462714))) (= lambda!390593 lambda!390588))))

(assert (=> bs!1839984 (not (= lambda!390593 lambda!390545))))

(assert (=> bs!1839991 (= (and (= (_1!36981 lt!2462711) s!14361) (= r2!6280 lt!2462716)) (= lambda!390593 lambda!390552))))

(assert (=> d!2160970 true))

(assert (=> d!2160970 true))

(assert (=> d!2160970 true))

(assert (=> d!2160970 (= (Exists!3817 lambda!390592) (Exists!3817 lambda!390593))))

(declare-fun lt!2462793 () Unit!160330)

(assert (=> d!2160970 (= lt!2462793 (choose!51313 r1!6342 r2!6280 (_1!36981 lt!2462711)))))

(assert (=> d!2160970 (validRegex!8513 r1!6342)))

(assert (=> d!2160970 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2296 r1!6342 r2!6280 (_1!36981 lt!2462711)) lt!2462793)))

(declare-fun m!7612424 () Bool)

(assert (=> bs!1840000 m!7612424))

(declare-fun m!7612426 () Bool)

(assert (=> bs!1840000 m!7612426))

(declare-fun m!7612428 () Bool)

(assert (=> bs!1840000 m!7612428))

(assert (=> bs!1840000 m!7612026))

(assert (=> b!6889727 d!2160970))

(declare-fun bm!626955 () Bool)

(declare-fun call!626960 () Bool)

(assert (=> bm!626955 (= call!626960 (isEmpty!38695 (_1!36981 lt!2462718)))))

(declare-fun b!6890172 () Bool)

(declare-fun e!4150964 () Bool)

(declare-fun e!4150960 () Bool)

(assert (=> b!6890172 (= e!4150964 e!4150960)))

(declare-fun res!2809313 () Bool)

(assert (=> b!6890172 (=> res!2809313 e!4150960)))

(assert (=> b!6890172 (= res!2809313 call!626960)))

(declare-fun d!2160972 () Bool)

(declare-fun e!4150961 () Bool)

(assert (=> d!2160972 e!4150961))

(declare-fun c!1281094 () Bool)

(assert (=> d!2160972 (= c!1281094 ((_ is EmptyExpr!16805) r1!6342))))

(declare-fun lt!2462794 () Bool)

(declare-fun e!4150962 () Bool)

(assert (=> d!2160972 (= lt!2462794 e!4150962)))

(declare-fun c!1281092 () Bool)

(assert (=> d!2160972 (= c!1281092 (isEmpty!38695 (_1!36981 lt!2462718)))))

(assert (=> d!2160972 (validRegex!8513 r1!6342)))

(assert (=> d!2160972 (= (matchR!8950 r1!6342 (_1!36981 lt!2462718)) lt!2462794)))

(declare-fun b!6890173 () Bool)

(declare-fun e!4150965 () Bool)

(assert (=> b!6890173 (= e!4150965 (not lt!2462794))))

(declare-fun b!6890174 () Bool)

(assert (=> b!6890174 (= e!4150961 e!4150965)))

(declare-fun c!1281093 () Bool)

(assert (=> b!6890174 (= c!1281093 ((_ is EmptyLang!16805) r1!6342))))

(declare-fun b!6890175 () Bool)

(assert (=> b!6890175 (= e!4150962 (nullable!6687 r1!6342))))

(declare-fun b!6890176 () Bool)

(declare-fun res!2809316 () Bool)

(declare-fun e!4150963 () Bool)

(assert (=> b!6890176 (=> res!2809316 e!4150963)))

(declare-fun e!4150959 () Bool)

(assert (=> b!6890176 (= res!2809316 e!4150959)))

(declare-fun res!2809315 () Bool)

(assert (=> b!6890176 (=> (not res!2809315) (not e!4150959))))

(assert (=> b!6890176 (= res!2809315 lt!2462794)))

(declare-fun b!6890177 () Bool)

(declare-fun res!2809314 () Bool)

(assert (=> b!6890177 (=> (not res!2809314) (not e!4150959))))

(assert (=> b!6890177 (= res!2809314 (not call!626960))))

(declare-fun b!6890178 () Bool)

(assert (=> b!6890178 (= e!4150961 (= lt!2462794 call!626960))))

(declare-fun b!6890179 () Bool)

(declare-fun res!2809318 () Bool)

(assert (=> b!6890179 (=> (not res!2809318) (not e!4150959))))

(assert (=> b!6890179 (= res!2809318 (isEmpty!38695 (tail!12872 (_1!36981 lt!2462718))))))

(declare-fun b!6890180 () Bool)

(assert (=> b!6890180 (= e!4150963 e!4150964)))

(declare-fun res!2809319 () Bool)

(assert (=> b!6890180 (=> (not res!2809319) (not e!4150964))))

(assert (=> b!6890180 (= res!2809319 (not lt!2462794))))

(declare-fun b!6890181 () Bool)

(declare-fun res!2809317 () Bool)

(assert (=> b!6890181 (=> res!2809317 e!4150963)))

(assert (=> b!6890181 (= res!2809317 (not ((_ is ElementMatch!16805) r1!6342)))))

(assert (=> b!6890181 (= e!4150965 e!4150963)))

(declare-fun b!6890182 () Bool)

(assert (=> b!6890182 (= e!4150960 (not (= (head!13820 (_1!36981 lt!2462718)) (c!1280991 r1!6342))))))

(declare-fun b!6890183 () Bool)

(assert (=> b!6890183 (= e!4150959 (= (head!13820 (_1!36981 lt!2462718)) (c!1280991 r1!6342)))))

(declare-fun b!6890184 () Bool)

(assert (=> b!6890184 (= e!4150962 (matchR!8950 (derivativeStep!5367 r1!6342 (head!13820 (_1!36981 lt!2462718))) (tail!12872 (_1!36981 lt!2462718))))))

(declare-fun b!6890185 () Bool)

(declare-fun res!2809320 () Bool)

(assert (=> b!6890185 (=> res!2809320 e!4150960)))

(assert (=> b!6890185 (= res!2809320 (not (isEmpty!38695 (tail!12872 (_1!36981 lt!2462718)))))))

(assert (= (and d!2160972 c!1281092) b!6890175))

(assert (= (and d!2160972 (not c!1281092)) b!6890184))

(assert (= (and d!2160972 c!1281094) b!6890178))

(assert (= (and d!2160972 (not c!1281094)) b!6890174))

(assert (= (and b!6890174 c!1281093) b!6890173))

(assert (= (and b!6890174 (not c!1281093)) b!6890181))

(assert (= (and b!6890181 (not res!2809317)) b!6890176))

(assert (= (and b!6890176 res!2809315) b!6890177))

(assert (= (and b!6890177 res!2809314) b!6890179))

(assert (= (and b!6890179 res!2809318) b!6890183))

(assert (= (and b!6890176 (not res!2809316)) b!6890180))

(assert (= (and b!6890180 res!2809319) b!6890172))

(assert (= (and b!6890172 (not res!2809313)) b!6890185))

(assert (= (and b!6890185 (not res!2809320)) b!6890182))

(assert (= (or b!6890178 b!6890172 b!6890177) bm!626955))

(declare-fun m!7612430 () Bool)

(assert (=> b!6890185 m!7612430))

(assert (=> b!6890185 m!7612430))

(declare-fun m!7612432 () Bool)

(assert (=> b!6890185 m!7612432))

(declare-fun m!7612434 () Bool)

(assert (=> b!6890182 m!7612434))

(assert (=> b!6890179 m!7612430))

(assert (=> b!6890179 m!7612430))

(assert (=> b!6890179 m!7612432))

(assert (=> b!6890183 m!7612434))

(declare-fun m!7612436 () Bool)

(assert (=> d!2160972 m!7612436))

(assert (=> d!2160972 m!7612026))

(assert (=> b!6890184 m!7612434))

(assert (=> b!6890184 m!7612434))

(declare-fun m!7612442 () Bool)

(assert (=> b!6890184 m!7612442))

(assert (=> b!6890184 m!7612430))

(assert (=> b!6890184 m!7612442))

(assert (=> b!6890184 m!7612430))

(declare-fun m!7612446 () Bool)

(assert (=> b!6890184 m!7612446))

(assert (=> bm!626955 m!7612436))

(declare-fun m!7612448 () Bool)

(assert (=> b!6890175 m!7612448))

(assert (=> b!6889727 d!2160972))

(declare-fun bs!1840010 () Bool)

(declare-fun d!2160976 () Bool)

(assert (= bs!1840010 (and d!2160976 b!6889711)))

(declare-fun lambda!390595 () Int)

(assert (=> bs!1840010 (= (and (= (_1!36981 lt!2462711) lt!2462693) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390595 lambda!390549))))

(declare-fun bs!1840011 () Bool)

(assert (= bs!1840011 (and d!2160976 b!6890091)))

(assert (=> bs!1840011 (not (= lambda!390595 lambda!390587))))

(declare-fun bs!1840012 () Bool)

(assert (= bs!1840012 (and d!2160976 d!2160934)))

(assert (=> bs!1840012 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390595 lambda!390577))))

(assert (=> bs!1840010 (not (= lambda!390595 lambda!390550))))

(declare-fun bs!1840013 () Bool)

(assert (= bs!1840013 (and d!2160976 d!2160888)))

(assert (=> bs!1840013 (= (and (= (_1!36981 lt!2462711) s!14361) (= r2!6280 lt!2462716)) (= lambda!390595 lambda!390565))))

(declare-fun bs!1840014 () Bool)

(assert (= bs!1840014 (and d!2160976 b!6889718)))

(assert (=> bs!1840014 (not (= lambda!390595 lambda!390546))))

(declare-fun bs!1840016 () Bool)

(assert (= bs!1840016 (and d!2160976 b!6889717)))

(assert (=> bs!1840016 (= (and (= (_1!36981 lt!2462711) s!14361) (= r2!6280 lt!2462716)) (= lambda!390595 lambda!390551))))

(declare-fun bs!1840017 () Bool)

(assert (= bs!1840017 (and d!2160976 d!2160918)))

(assert (=> bs!1840017 (not (= lambda!390595 lambda!390576))))

(declare-fun bs!1840018 () Bool)

(assert (= bs!1840018 (and d!2160976 b!6889727)))

(assert (=> bs!1840018 (= lambda!390595 lambda!390547)))

(declare-fun bs!1840019 () Bool)

(assert (= bs!1840019 (and d!2160976 d!2160970)))

(assert (=> bs!1840019 (not (= lambda!390595 lambda!390593))))

(assert (=> bs!1840019 (= lambda!390595 lambda!390592)))

(assert (=> bs!1840018 (not (= lambda!390595 lambda!390548))))

(assert (=> bs!1840017 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390595 lambda!390575))))

(declare-fun bs!1840020 () Bool)

(assert (= bs!1840020 (and d!2160976 b!6890093)))

(assert (=> bs!1840020 (not (= lambda!390595 lambda!390588))))

(assert (=> bs!1840014 (= (and (= (_1!36981 lt!2462711) s!14361) (= r1!6342 lt!2462714) (= r2!6280 r3!135)) (= lambda!390595 lambda!390545))))

(declare-fun bs!1840021 () Bool)

(assert (= bs!1840021 (and d!2160976 b!6889709)))

(assert (=> bs!1840021 (not (= lambda!390595 lambda!390552))))

(assert (=> d!2160976 true))

(assert (=> d!2160976 true))

(assert (=> d!2160976 true))

(assert (=> d!2160976 (= (isDefined!13293 (findConcatSeparation!3004 r1!6342 r2!6280 Nil!66438 (_1!36981 lt!2462711) (_1!36981 lt!2462711))) (Exists!3817 lambda!390595))))

(declare-fun lt!2462796 () Unit!160330)

(assert (=> d!2160976 (= lt!2462796 (choose!51308 r1!6342 r2!6280 (_1!36981 lt!2462711)))))

(assert (=> d!2160976 (validRegex!8513 r1!6342)))

(assert (=> d!2160976 (= (lemmaFindConcatSeparationEquivalentToExists!2768 r1!6342 r2!6280 (_1!36981 lt!2462711)) lt!2462796)))

(declare-fun bs!1840022 () Bool)

(assert (= bs!1840022 d!2160976))

(assert (=> bs!1840022 m!7612026))

(declare-fun m!7612470 () Bool)

(assert (=> bs!1840022 m!7612470))

(assert (=> bs!1840022 m!7612054))

(declare-fun m!7612482 () Bool)

(assert (=> bs!1840022 m!7612482))

(declare-fun m!7612488 () Bool)

(assert (=> bs!1840022 m!7612488))

(assert (=> bs!1840022 m!7612054))

(assert (=> b!6889727 d!2160976))

(declare-fun d!2160986 () Bool)

(assert (=> d!2160986 (= (get!23170 lt!2462704) (v!52861 lt!2462704))))

(assert (=> b!6889727 d!2160986))

(declare-fun d!2160988 () Bool)

(assert (=> d!2160988 (= (isDefined!13293 lt!2462704) (not (isEmpty!38694 lt!2462704)))))

(declare-fun bs!1840023 () Bool)

(assert (= bs!1840023 d!2160988))

(declare-fun m!7612490 () Bool)

(assert (=> bs!1840023 m!7612490))

(assert (=> b!6889727 d!2160988))

(declare-fun d!2160990 () Bool)

(assert (=> d!2160990 (= (Exists!3817 lambda!390548) (choose!51306 lambda!390548))))

(declare-fun bs!1840024 () Bool)

(assert (= bs!1840024 d!2160990))

(declare-fun m!7612492 () Bool)

(assert (=> bs!1840024 m!7612492))

(assert (=> b!6889727 d!2160990))

(declare-fun bs!1840025 () Bool)

(declare-fun b!6890224 () Bool)

(assert (= bs!1840025 (and b!6890224 b!6889711)))

(declare-fun lambda!390596 () Int)

(assert (=> bs!1840025 (not (= lambda!390596 lambda!390549))))

(declare-fun bs!1840026 () Bool)

(assert (= bs!1840026 (and b!6890224 b!6890091)))

(assert (=> bs!1840026 (= (and (= s!14361 (_1!36981 lt!2462711)) (= (reg!17134 lt!2462688) (reg!17134 lt!2462714)) (= lt!2462688 lt!2462714)) (= lambda!390596 lambda!390587))))

(declare-fun bs!1840027 () Bool)

(assert (= bs!1840027 (and b!6890224 d!2160934)))

(assert (=> bs!1840027 (not (= lambda!390596 lambda!390577))))

(assert (=> bs!1840025 (not (= lambda!390596 lambda!390550))))

(declare-fun bs!1840028 () Bool)

(assert (= bs!1840028 (and b!6890224 d!2160888)))

(assert (=> bs!1840028 (not (= lambda!390596 lambda!390565))))

(declare-fun bs!1840029 () Bool)

(assert (= bs!1840029 (and b!6890224 b!6889718)))

(assert (=> bs!1840029 (not (= lambda!390596 lambda!390546))))

(declare-fun bs!1840030 () Bool)

(assert (= bs!1840030 (and b!6890224 b!6889717)))

(assert (=> bs!1840030 (not (= lambda!390596 lambda!390551))))

(declare-fun bs!1840031 () Bool)

(assert (= bs!1840031 (and b!6890224 b!6889727)))

(assert (=> bs!1840031 (not (= lambda!390596 lambda!390547))))

(declare-fun bs!1840032 () Bool)

(assert (= bs!1840032 (and b!6890224 d!2160970)))

(assert (=> bs!1840032 (not (= lambda!390596 lambda!390593))))

(assert (=> bs!1840032 (not (= lambda!390596 lambda!390592))))

(assert (=> bs!1840031 (not (= lambda!390596 lambda!390548))))

(declare-fun bs!1840034 () Bool)

(assert (= bs!1840034 (and b!6890224 d!2160918)))

(assert (=> bs!1840034 (not (= lambda!390596 lambda!390575))))

(declare-fun bs!1840035 () Bool)

(assert (= bs!1840035 (and b!6890224 b!6890093)))

(assert (=> bs!1840035 (not (= lambda!390596 lambda!390588))))

(assert (=> bs!1840034 (not (= lambda!390596 lambda!390576))))

(declare-fun bs!1840037 () Bool)

(assert (= bs!1840037 (and b!6890224 d!2160976)))

(assert (=> bs!1840037 (not (= lambda!390596 lambda!390595))))

(assert (=> bs!1840029 (not (= lambda!390596 lambda!390545))))

(declare-fun bs!1840038 () Bool)

(assert (= bs!1840038 (and b!6890224 b!6889709)))

(assert (=> bs!1840038 (not (= lambda!390596 lambda!390552))))

(assert (=> b!6890224 true))

(assert (=> b!6890224 true))

(declare-fun bs!1840044 () Bool)

(declare-fun b!6890226 () Bool)

(assert (= bs!1840044 (and b!6890226 b!6889711)))

(declare-fun lambda!390598 () Int)

(assert (=> bs!1840044 (not (= lambda!390598 lambda!390549))))

(declare-fun bs!1840046 () Bool)

(assert (= bs!1840046 (and b!6890226 b!6890091)))

(assert (=> bs!1840046 (not (= lambda!390598 lambda!390587))))

(declare-fun bs!1840048 () Bool)

(assert (= bs!1840048 (and b!6890226 d!2160934)))

(assert (=> bs!1840048 (not (= lambda!390598 lambda!390577))))

(declare-fun bs!1840050 () Bool)

(assert (= bs!1840050 (and b!6890226 d!2160888)))

(assert (=> bs!1840050 (not (= lambda!390598 lambda!390565))))

(declare-fun bs!1840052 () Bool)

(assert (= bs!1840052 (and b!6890226 b!6889718)))

(assert (=> bs!1840052 (= (and (= (regOne!34122 lt!2462688) lt!2462714) (= (regTwo!34122 lt!2462688) r3!135)) (= lambda!390598 lambda!390546))))

(declare-fun bs!1840054 () Bool)

(assert (= bs!1840054 (and b!6890226 b!6889717)))

(assert (=> bs!1840054 (not (= lambda!390598 lambda!390551))))

(declare-fun bs!1840056 () Bool)

(assert (= bs!1840056 (and b!6890226 b!6889727)))

(assert (=> bs!1840056 (not (= lambda!390598 lambda!390547))))

(declare-fun bs!1840058 () Bool)

(assert (= bs!1840058 (and b!6890226 d!2160970)))

(assert (=> bs!1840058 (= (and (= s!14361 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462688) r1!6342) (= (regTwo!34122 lt!2462688) r2!6280)) (= lambda!390598 lambda!390593))))

(assert (=> bs!1840058 (not (= lambda!390598 lambda!390592))))

(assert (=> bs!1840056 (= (and (= s!14361 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462688) r1!6342) (= (regTwo!34122 lt!2462688) r2!6280)) (= lambda!390598 lambda!390548))))

(assert (=> bs!1840044 (= (and (= s!14361 lt!2462693) (= (regOne!34122 lt!2462688) r2!6280) (= (regTwo!34122 lt!2462688) r3!135)) (= lambda!390598 lambda!390550))))

(declare-fun bs!1840061 () Bool)

(assert (= bs!1840061 (and b!6890226 b!6890224)))

(assert (=> bs!1840061 (not (= lambda!390598 lambda!390596))))

(declare-fun bs!1840063 () Bool)

(assert (= bs!1840063 (and b!6890226 d!2160918)))

(assert (=> bs!1840063 (not (= lambda!390598 lambda!390575))))

(declare-fun bs!1840065 () Bool)

(assert (= bs!1840065 (and b!6890226 b!6890093)))

(assert (=> bs!1840065 (= (and (= s!14361 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462688) (regOne!34122 lt!2462714)) (= (regTwo!34122 lt!2462688) (regTwo!34122 lt!2462714))) (= lambda!390598 lambda!390588))))

(assert (=> bs!1840063 (= (and (= (regOne!34122 lt!2462688) lt!2462714) (= (regTwo!34122 lt!2462688) r3!135)) (= lambda!390598 lambda!390576))))

(declare-fun bs!1840067 () Bool)

(assert (= bs!1840067 (and b!6890226 d!2160976)))

(assert (=> bs!1840067 (not (= lambda!390598 lambda!390595))))

(assert (=> bs!1840052 (not (= lambda!390598 lambda!390545))))

(declare-fun bs!1840068 () Bool)

(assert (= bs!1840068 (and b!6890226 b!6889709)))

(assert (=> bs!1840068 (= (and (= (regOne!34122 lt!2462688) r1!6342) (= (regTwo!34122 lt!2462688) lt!2462716)) (= lambda!390598 lambda!390552))))

(assert (=> b!6890226 true))

(assert (=> b!6890226 true))

(declare-fun bm!626958 () Bool)

(declare-fun c!1281103 () Bool)

(declare-fun call!626964 () Bool)

(assert (=> bm!626958 (= call!626964 (Exists!3817 (ite c!1281103 lambda!390596 lambda!390598)))))

(declare-fun b!6890218 () Bool)

(declare-fun c!1281102 () Bool)

(assert (=> b!6890218 (= c!1281102 ((_ is Union!16805) lt!2462688))))

(declare-fun e!4150986 () Bool)

(declare-fun e!4150987 () Bool)

(assert (=> b!6890218 (= e!4150986 e!4150987)))

(declare-fun bm!626959 () Bool)

(declare-fun call!626963 () Bool)

(assert (=> bm!626959 (= call!626963 (isEmpty!38695 s!14361))))

(declare-fun d!2160992 () Bool)

(declare-fun c!1281105 () Bool)

(assert (=> d!2160992 (= c!1281105 ((_ is EmptyExpr!16805) lt!2462688))))

(declare-fun e!4150985 () Bool)

(assert (=> d!2160992 (= (matchRSpec!3868 lt!2462688 s!14361) e!4150985)))

(declare-fun b!6890219 () Bool)

(declare-fun res!2809340 () Bool)

(declare-fun e!4150983 () Bool)

(assert (=> b!6890219 (=> res!2809340 e!4150983)))

(assert (=> b!6890219 (= res!2809340 call!626963)))

(declare-fun e!4150984 () Bool)

(assert (=> b!6890219 (= e!4150984 e!4150983)))

(declare-fun b!6890220 () Bool)

(declare-fun e!4150988 () Bool)

(assert (=> b!6890220 (= e!4150985 e!4150988)))

(declare-fun res!2809341 () Bool)

(assert (=> b!6890220 (= res!2809341 (not ((_ is EmptyLang!16805) lt!2462688)))))

(assert (=> b!6890220 (=> (not res!2809341) (not e!4150988))))

(declare-fun b!6890221 () Bool)

(declare-fun c!1281104 () Bool)

(assert (=> b!6890221 (= c!1281104 ((_ is ElementMatch!16805) lt!2462688))))

(assert (=> b!6890221 (= e!4150988 e!4150986)))

(declare-fun b!6890222 () Bool)

(assert (=> b!6890222 (= e!4150986 (= s!14361 (Cons!66438 (c!1280991 lt!2462688) Nil!66438)))))

(declare-fun b!6890223 () Bool)

(declare-fun e!4150982 () Bool)

(assert (=> b!6890223 (= e!4150982 (matchRSpec!3868 (regTwo!34123 lt!2462688) s!14361))))

(assert (=> b!6890224 (= e!4150983 call!626964)))

(declare-fun b!6890225 () Bool)

(assert (=> b!6890225 (= e!4150987 e!4150984)))

(assert (=> b!6890225 (= c!1281103 ((_ is Star!16805) lt!2462688))))

(assert (=> b!6890226 (= e!4150984 call!626964)))

(declare-fun b!6890227 () Bool)

(assert (=> b!6890227 (= e!4150985 call!626963)))

(declare-fun b!6890228 () Bool)

(assert (=> b!6890228 (= e!4150987 e!4150982)))

(declare-fun res!2809339 () Bool)

(assert (=> b!6890228 (= res!2809339 (matchRSpec!3868 (regOne!34123 lt!2462688) s!14361))))

(assert (=> b!6890228 (=> res!2809339 e!4150982)))

(assert (= (and d!2160992 c!1281105) b!6890227))

(assert (= (and d!2160992 (not c!1281105)) b!6890220))

(assert (= (and b!6890220 res!2809341) b!6890221))

(assert (= (and b!6890221 c!1281104) b!6890222))

(assert (= (and b!6890221 (not c!1281104)) b!6890218))

(assert (= (and b!6890218 c!1281102) b!6890228))

(assert (= (and b!6890218 (not c!1281102)) b!6890225))

(assert (= (and b!6890228 (not res!2809339)) b!6890223))

(assert (= (and b!6890225 c!1281103) b!6890219))

(assert (= (and b!6890225 (not c!1281103)) b!6890226))

(assert (= (and b!6890219 (not res!2809340)) b!6890224))

(assert (= (or b!6890224 b!6890226) bm!626958))

(assert (= (or b!6890227 b!6890219) bm!626959))

(declare-fun m!7612500 () Bool)

(assert (=> bm!626958 m!7612500))

(declare-fun m!7612502 () Bool)

(assert (=> bm!626959 m!7612502))

(declare-fun m!7612504 () Bool)

(assert (=> b!6890223 m!7612504))

(declare-fun m!7612506 () Bool)

(assert (=> b!6890228 m!7612506))

(assert (=> b!6889716 d!2160992))

(declare-fun bm!626960 () Bool)

(declare-fun call!626965 () Bool)

(assert (=> bm!626960 (= call!626965 (isEmpty!38695 s!14361))))

(declare-fun b!6890229 () Bool)

(declare-fun e!4150994 () Bool)

(declare-fun e!4150990 () Bool)

(assert (=> b!6890229 (= e!4150994 e!4150990)))

(declare-fun res!2809342 () Bool)

(assert (=> b!6890229 (=> res!2809342 e!4150990)))

(assert (=> b!6890229 (= res!2809342 call!626965)))

(declare-fun d!2160998 () Bool)

(declare-fun e!4150991 () Bool)

(assert (=> d!2160998 e!4150991))

(declare-fun c!1281108 () Bool)

(assert (=> d!2160998 (= c!1281108 ((_ is EmptyExpr!16805) lt!2462688))))

(declare-fun lt!2462804 () Bool)

(declare-fun e!4150992 () Bool)

(assert (=> d!2160998 (= lt!2462804 e!4150992)))

(declare-fun c!1281106 () Bool)

(assert (=> d!2160998 (= c!1281106 (isEmpty!38695 s!14361))))

(assert (=> d!2160998 (validRegex!8513 lt!2462688)))

(assert (=> d!2160998 (= (matchR!8950 lt!2462688 s!14361) lt!2462804)))

(declare-fun b!6890230 () Bool)

(declare-fun e!4150995 () Bool)

(assert (=> b!6890230 (= e!4150995 (not lt!2462804))))

(declare-fun b!6890231 () Bool)

(assert (=> b!6890231 (= e!4150991 e!4150995)))

(declare-fun c!1281107 () Bool)

(assert (=> b!6890231 (= c!1281107 ((_ is EmptyLang!16805) lt!2462688))))

(declare-fun b!6890232 () Bool)

(assert (=> b!6890232 (= e!4150992 (nullable!6687 lt!2462688))))

(declare-fun b!6890233 () Bool)

(declare-fun res!2809345 () Bool)

(declare-fun e!4150993 () Bool)

(assert (=> b!6890233 (=> res!2809345 e!4150993)))

(declare-fun e!4150989 () Bool)

(assert (=> b!6890233 (= res!2809345 e!4150989)))

(declare-fun res!2809344 () Bool)

(assert (=> b!6890233 (=> (not res!2809344) (not e!4150989))))

(assert (=> b!6890233 (= res!2809344 lt!2462804)))

(declare-fun b!6890234 () Bool)

(declare-fun res!2809343 () Bool)

(assert (=> b!6890234 (=> (not res!2809343) (not e!4150989))))

(assert (=> b!6890234 (= res!2809343 (not call!626965))))

(declare-fun b!6890235 () Bool)

(assert (=> b!6890235 (= e!4150991 (= lt!2462804 call!626965))))

(declare-fun b!6890236 () Bool)

(declare-fun res!2809347 () Bool)

(assert (=> b!6890236 (=> (not res!2809347) (not e!4150989))))

(assert (=> b!6890236 (= res!2809347 (isEmpty!38695 (tail!12872 s!14361)))))

(declare-fun b!6890237 () Bool)

(assert (=> b!6890237 (= e!4150993 e!4150994)))

(declare-fun res!2809348 () Bool)

(assert (=> b!6890237 (=> (not res!2809348) (not e!4150994))))

(assert (=> b!6890237 (= res!2809348 (not lt!2462804))))

(declare-fun b!6890238 () Bool)

(declare-fun res!2809346 () Bool)

(assert (=> b!6890238 (=> res!2809346 e!4150993)))

(assert (=> b!6890238 (= res!2809346 (not ((_ is ElementMatch!16805) lt!2462688)))))

(assert (=> b!6890238 (= e!4150995 e!4150993)))

(declare-fun b!6890239 () Bool)

(assert (=> b!6890239 (= e!4150990 (not (= (head!13820 s!14361) (c!1280991 lt!2462688))))))

(declare-fun b!6890240 () Bool)

(assert (=> b!6890240 (= e!4150989 (= (head!13820 s!14361) (c!1280991 lt!2462688)))))

(declare-fun b!6890241 () Bool)

(assert (=> b!6890241 (= e!4150992 (matchR!8950 (derivativeStep!5367 lt!2462688 (head!13820 s!14361)) (tail!12872 s!14361)))))

(declare-fun b!6890242 () Bool)

(declare-fun res!2809349 () Bool)

(assert (=> b!6890242 (=> res!2809349 e!4150990)))

(assert (=> b!6890242 (= res!2809349 (not (isEmpty!38695 (tail!12872 s!14361))))))

(assert (= (and d!2160998 c!1281106) b!6890232))

(assert (= (and d!2160998 (not c!1281106)) b!6890241))

(assert (= (and d!2160998 c!1281108) b!6890235))

(assert (= (and d!2160998 (not c!1281108)) b!6890231))

(assert (= (and b!6890231 c!1281107) b!6890230))

(assert (= (and b!6890231 (not c!1281107)) b!6890238))

(assert (= (and b!6890238 (not res!2809346)) b!6890233))

(assert (= (and b!6890233 res!2809344) b!6890234))

(assert (= (and b!6890234 res!2809343) b!6890236))

(assert (= (and b!6890236 res!2809347) b!6890240))

(assert (= (and b!6890233 (not res!2809345)) b!6890237))

(assert (= (and b!6890237 res!2809348) b!6890229))

(assert (= (and b!6890229 (not res!2809342)) b!6890242))

(assert (= (and b!6890242 (not res!2809349)) b!6890239))

(assert (= (or b!6890235 b!6890229 b!6890234) bm!626960))

(declare-fun m!7612508 () Bool)

(assert (=> b!6890242 m!7612508))

(assert (=> b!6890242 m!7612508))

(declare-fun m!7612510 () Bool)

(assert (=> b!6890242 m!7612510))

(declare-fun m!7612512 () Bool)

(assert (=> b!6890239 m!7612512))

(assert (=> b!6890236 m!7612508))

(assert (=> b!6890236 m!7612508))

(assert (=> b!6890236 m!7612510))

(assert (=> b!6890240 m!7612512))

(assert (=> d!2160998 m!7612502))

(declare-fun m!7612514 () Bool)

(assert (=> d!2160998 m!7612514))

(assert (=> b!6890241 m!7612512))

(assert (=> b!6890241 m!7612512))

(declare-fun m!7612516 () Bool)

(assert (=> b!6890241 m!7612516))

(assert (=> b!6890241 m!7612508))

(assert (=> b!6890241 m!7612516))

(assert (=> b!6890241 m!7612508))

(declare-fun m!7612518 () Bool)

(assert (=> b!6890241 m!7612518))

(assert (=> bm!626960 m!7612502))

(declare-fun m!7612520 () Bool)

(assert (=> b!6890232 m!7612520))

(assert (=> b!6889716 d!2160998))

(declare-fun bm!626961 () Bool)

(declare-fun call!626966 () Bool)

(assert (=> bm!626961 (= call!626966 (isEmpty!38695 s!14361))))

(declare-fun b!6890243 () Bool)

(declare-fun e!4151001 () Bool)

(declare-fun e!4150997 () Bool)

(assert (=> b!6890243 (= e!4151001 e!4150997)))

(declare-fun res!2809350 () Bool)

(assert (=> b!6890243 (=> res!2809350 e!4150997)))

(assert (=> b!6890243 (= res!2809350 call!626966)))

(declare-fun d!2161000 () Bool)

(declare-fun e!4150998 () Bool)

(assert (=> d!2161000 e!4150998))

(declare-fun c!1281111 () Bool)

(assert (=> d!2161000 (= c!1281111 ((_ is EmptyExpr!16805) lt!2462719))))

(declare-fun lt!2462805 () Bool)

(declare-fun e!4150999 () Bool)

(assert (=> d!2161000 (= lt!2462805 e!4150999)))

(declare-fun c!1281109 () Bool)

(assert (=> d!2161000 (= c!1281109 (isEmpty!38695 s!14361))))

(assert (=> d!2161000 (validRegex!8513 lt!2462719)))

(assert (=> d!2161000 (= (matchR!8950 lt!2462719 s!14361) lt!2462805)))

(declare-fun b!6890244 () Bool)

(declare-fun e!4151002 () Bool)

(assert (=> b!6890244 (= e!4151002 (not lt!2462805))))

(declare-fun b!6890245 () Bool)

(assert (=> b!6890245 (= e!4150998 e!4151002)))

(declare-fun c!1281110 () Bool)

(assert (=> b!6890245 (= c!1281110 ((_ is EmptyLang!16805) lt!2462719))))

(declare-fun b!6890246 () Bool)

(assert (=> b!6890246 (= e!4150999 (nullable!6687 lt!2462719))))

(declare-fun b!6890247 () Bool)

(declare-fun res!2809353 () Bool)

(declare-fun e!4151000 () Bool)

(assert (=> b!6890247 (=> res!2809353 e!4151000)))

(declare-fun e!4150996 () Bool)

(assert (=> b!6890247 (= res!2809353 e!4150996)))

(declare-fun res!2809352 () Bool)

(assert (=> b!6890247 (=> (not res!2809352) (not e!4150996))))

(assert (=> b!6890247 (= res!2809352 lt!2462805)))

(declare-fun b!6890248 () Bool)

(declare-fun res!2809351 () Bool)

(assert (=> b!6890248 (=> (not res!2809351) (not e!4150996))))

(assert (=> b!6890248 (= res!2809351 (not call!626966))))

(declare-fun b!6890249 () Bool)

(assert (=> b!6890249 (= e!4150998 (= lt!2462805 call!626966))))

(declare-fun b!6890250 () Bool)

(declare-fun res!2809355 () Bool)

(assert (=> b!6890250 (=> (not res!2809355) (not e!4150996))))

(assert (=> b!6890250 (= res!2809355 (isEmpty!38695 (tail!12872 s!14361)))))

(declare-fun b!6890251 () Bool)

(assert (=> b!6890251 (= e!4151000 e!4151001)))

(declare-fun res!2809356 () Bool)

(assert (=> b!6890251 (=> (not res!2809356) (not e!4151001))))

(assert (=> b!6890251 (= res!2809356 (not lt!2462805))))

(declare-fun b!6890252 () Bool)

(declare-fun res!2809354 () Bool)

(assert (=> b!6890252 (=> res!2809354 e!4151000)))

(assert (=> b!6890252 (= res!2809354 (not ((_ is ElementMatch!16805) lt!2462719)))))

(assert (=> b!6890252 (= e!4151002 e!4151000)))

(declare-fun b!6890253 () Bool)

(assert (=> b!6890253 (= e!4150997 (not (= (head!13820 s!14361) (c!1280991 lt!2462719))))))

(declare-fun b!6890254 () Bool)

(assert (=> b!6890254 (= e!4150996 (= (head!13820 s!14361) (c!1280991 lt!2462719)))))

(declare-fun b!6890255 () Bool)

(assert (=> b!6890255 (= e!4150999 (matchR!8950 (derivativeStep!5367 lt!2462719 (head!13820 s!14361)) (tail!12872 s!14361)))))

(declare-fun b!6890256 () Bool)

(declare-fun res!2809357 () Bool)

(assert (=> b!6890256 (=> res!2809357 e!4150997)))

(assert (=> b!6890256 (= res!2809357 (not (isEmpty!38695 (tail!12872 s!14361))))))

(assert (= (and d!2161000 c!1281109) b!6890246))

(assert (= (and d!2161000 (not c!1281109)) b!6890255))

(assert (= (and d!2161000 c!1281111) b!6890249))

(assert (= (and d!2161000 (not c!1281111)) b!6890245))

(assert (= (and b!6890245 c!1281110) b!6890244))

(assert (= (and b!6890245 (not c!1281110)) b!6890252))

(assert (= (and b!6890252 (not res!2809354)) b!6890247))

(assert (= (and b!6890247 res!2809352) b!6890248))

(assert (= (and b!6890248 res!2809351) b!6890250))

(assert (= (and b!6890250 res!2809355) b!6890254))

(assert (= (and b!6890247 (not res!2809353)) b!6890251))

(assert (= (and b!6890251 res!2809356) b!6890243))

(assert (= (and b!6890243 (not res!2809350)) b!6890256))

(assert (= (and b!6890256 (not res!2809357)) b!6890253))

(assert (= (or b!6890249 b!6890243 b!6890248) bm!626961))

(assert (=> b!6890256 m!7612508))

(assert (=> b!6890256 m!7612508))

(assert (=> b!6890256 m!7612510))

(assert (=> b!6890253 m!7612512))

(assert (=> b!6890250 m!7612508))

(assert (=> b!6890250 m!7612508))

(assert (=> b!6890250 m!7612510))

(assert (=> b!6890254 m!7612512))

(assert (=> d!2161000 m!7612502))

(assert (=> d!2161000 m!7612060))

(assert (=> b!6890255 m!7612512))

(assert (=> b!6890255 m!7612512))

(declare-fun m!7612522 () Bool)

(assert (=> b!6890255 m!7612522))

(assert (=> b!6890255 m!7612508))

(assert (=> b!6890255 m!7612522))

(assert (=> b!6890255 m!7612508))

(declare-fun m!7612524 () Bool)

(assert (=> b!6890255 m!7612524))

(assert (=> bm!626961 m!7612502))

(declare-fun m!7612526 () Bool)

(assert (=> b!6890246 m!7612526))

(assert (=> b!6889716 d!2161000))

(declare-fun d!2161002 () Bool)

(assert (=> d!2161002 (= (matchR!8950 lt!2462719 s!14361) (matchRSpec!3868 lt!2462719 s!14361))))

(declare-fun lt!2462806 () Unit!160330)

(assert (=> d!2161002 (= lt!2462806 (choose!51314 lt!2462719 s!14361))))

(assert (=> d!2161002 (validRegex!8513 lt!2462719)))

(assert (=> d!2161002 (= (mainMatchTheorem!3868 lt!2462719 s!14361) lt!2462806)))

(declare-fun bs!1840070 () Bool)

(assert (= bs!1840070 d!2161002))

(assert (=> bs!1840070 m!7612014))

(assert (=> bs!1840070 m!7612024))

(declare-fun m!7612528 () Bool)

(assert (=> bs!1840070 m!7612528))

(assert (=> bs!1840070 m!7612060))

(assert (=> b!6889716 d!2161002))

(declare-fun d!2161004 () Bool)

(assert (=> d!2161004 (= (matchR!8950 lt!2462688 s!14361) (matchRSpec!3868 lt!2462688 s!14361))))

(declare-fun lt!2462807 () Unit!160330)

(assert (=> d!2161004 (= lt!2462807 (choose!51314 lt!2462688 s!14361))))

(assert (=> d!2161004 (validRegex!8513 lt!2462688)))

(assert (=> d!2161004 (= (mainMatchTheorem!3868 lt!2462688 s!14361) lt!2462807)))

(declare-fun bs!1840071 () Bool)

(assert (= bs!1840071 d!2161004))

(assert (=> bs!1840071 m!7612018))

(assert (=> bs!1840071 m!7612022))

(declare-fun m!7612536 () Bool)

(assert (=> bs!1840071 m!7612536))

(assert (=> bs!1840071 m!7612514))

(assert (=> b!6889716 d!2161004))

(declare-fun bs!1840072 () Bool)

(declare-fun b!6890263 () Bool)

(assert (= bs!1840072 (and b!6890263 b!6889711)))

(declare-fun lambda!390600 () Int)

(assert (=> bs!1840072 (not (= lambda!390600 lambda!390549))))

(declare-fun bs!1840073 () Bool)

(assert (= bs!1840073 (and b!6890263 b!6890091)))

(assert (=> bs!1840073 (= (and (= s!14361 (_1!36981 lt!2462711)) (= (reg!17134 lt!2462719) (reg!17134 lt!2462714)) (= lt!2462719 lt!2462714)) (= lambda!390600 lambda!390587))))

(declare-fun bs!1840074 () Bool)

(assert (= bs!1840074 (and b!6890263 b!6890226)))

(assert (=> bs!1840074 (not (= lambda!390600 lambda!390598))))

(declare-fun bs!1840075 () Bool)

(assert (= bs!1840075 (and b!6890263 d!2160934)))

(assert (=> bs!1840075 (not (= lambda!390600 lambda!390577))))

(declare-fun bs!1840076 () Bool)

(assert (= bs!1840076 (and b!6890263 d!2160888)))

(assert (=> bs!1840076 (not (= lambda!390600 lambda!390565))))

(declare-fun bs!1840077 () Bool)

(assert (= bs!1840077 (and b!6890263 b!6889718)))

(assert (=> bs!1840077 (not (= lambda!390600 lambda!390546))))

(declare-fun bs!1840078 () Bool)

(assert (= bs!1840078 (and b!6890263 b!6889717)))

(assert (=> bs!1840078 (not (= lambda!390600 lambda!390551))))

(declare-fun bs!1840079 () Bool)

(assert (= bs!1840079 (and b!6890263 b!6889727)))

(assert (=> bs!1840079 (not (= lambda!390600 lambda!390547))))

(declare-fun bs!1840080 () Bool)

(assert (= bs!1840080 (and b!6890263 d!2160970)))

(assert (=> bs!1840080 (not (= lambda!390600 lambda!390593))))

(assert (=> bs!1840080 (not (= lambda!390600 lambda!390592))))

(assert (=> bs!1840079 (not (= lambda!390600 lambda!390548))))

(assert (=> bs!1840072 (not (= lambda!390600 lambda!390550))))

(declare-fun bs!1840083 () Bool)

(assert (= bs!1840083 (and b!6890263 b!6890224)))

(assert (=> bs!1840083 (= (and (= (reg!17134 lt!2462719) (reg!17134 lt!2462688)) (= lt!2462719 lt!2462688)) (= lambda!390600 lambda!390596))))

(declare-fun bs!1840084 () Bool)

(assert (= bs!1840084 (and b!6890263 d!2160918)))

(assert (=> bs!1840084 (not (= lambda!390600 lambda!390575))))

(declare-fun bs!1840085 () Bool)

(assert (= bs!1840085 (and b!6890263 b!6890093)))

(assert (=> bs!1840085 (not (= lambda!390600 lambda!390588))))

(assert (=> bs!1840084 (not (= lambda!390600 lambda!390576))))

(declare-fun bs!1840087 () Bool)

(assert (= bs!1840087 (and b!6890263 d!2160976)))

(assert (=> bs!1840087 (not (= lambda!390600 lambda!390595))))

(assert (=> bs!1840077 (not (= lambda!390600 lambda!390545))))

(declare-fun bs!1840090 () Bool)

(assert (= bs!1840090 (and b!6890263 b!6889709)))

(assert (=> bs!1840090 (not (= lambda!390600 lambda!390552))))

(assert (=> b!6890263 true))

(assert (=> b!6890263 true))

(declare-fun bs!1840097 () Bool)

(declare-fun b!6890265 () Bool)

(assert (= bs!1840097 (and b!6890265 b!6889711)))

(declare-fun lambda!390602 () Int)

(assert (=> bs!1840097 (not (= lambda!390602 lambda!390549))))

(declare-fun bs!1840099 () Bool)

(assert (= bs!1840099 (and b!6890265 b!6890091)))

(assert (=> bs!1840099 (not (= lambda!390602 lambda!390587))))

(declare-fun bs!1840100 () Bool)

(assert (= bs!1840100 (and b!6890265 b!6890226)))

(assert (=> bs!1840100 (= (and (= (regOne!34122 lt!2462719) (regOne!34122 lt!2462688)) (= (regTwo!34122 lt!2462719) (regTwo!34122 lt!2462688))) (= lambda!390602 lambda!390598))))

(declare-fun bs!1840101 () Bool)

(assert (= bs!1840101 (and b!6890265 b!6890263)))

(assert (=> bs!1840101 (not (= lambda!390602 lambda!390600))))

(declare-fun bs!1840104 () Bool)

(assert (= bs!1840104 (and b!6890265 d!2160934)))

(assert (=> bs!1840104 (not (= lambda!390602 lambda!390577))))

(declare-fun bs!1840105 () Bool)

(assert (= bs!1840105 (and b!6890265 d!2160888)))

(assert (=> bs!1840105 (not (= lambda!390602 lambda!390565))))

(declare-fun bs!1840107 () Bool)

(assert (= bs!1840107 (and b!6890265 b!6889718)))

(assert (=> bs!1840107 (= (and (= (regOne!34122 lt!2462719) lt!2462714) (= (regTwo!34122 lt!2462719) r3!135)) (= lambda!390602 lambda!390546))))

(declare-fun bs!1840109 () Bool)

(assert (= bs!1840109 (and b!6890265 b!6889717)))

(assert (=> bs!1840109 (not (= lambda!390602 lambda!390551))))

(declare-fun bs!1840110 () Bool)

(assert (= bs!1840110 (and b!6890265 b!6889727)))

(assert (=> bs!1840110 (not (= lambda!390602 lambda!390547))))

(declare-fun bs!1840112 () Bool)

(assert (= bs!1840112 (and b!6890265 d!2160970)))

(assert (=> bs!1840112 (= (and (= s!14361 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462719) r1!6342) (= (regTwo!34122 lt!2462719) r2!6280)) (= lambda!390602 lambda!390593))))

(assert (=> bs!1840112 (not (= lambda!390602 lambda!390592))))

(assert (=> bs!1840110 (= (and (= s!14361 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462719) r1!6342) (= (regTwo!34122 lt!2462719) r2!6280)) (= lambda!390602 lambda!390548))))

(assert (=> bs!1840097 (= (and (= s!14361 lt!2462693) (= (regOne!34122 lt!2462719) r2!6280) (= (regTwo!34122 lt!2462719) r3!135)) (= lambda!390602 lambda!390550))))

(declare-fun bs!1840116 () Bool)

(assert (= bs!1840116 (and b!6890265 b!6890224)))

(assert (=> bs!1840116 (not (= lambda!390602 lambda!390596))))

(declare-fun bs!1840117 () Bool)

(assert (= bs!1840117 (and b!6890265 d!2160918)))

(assert (=> bs!1840117 (not (= lambda!390602 lambda!390575))))

(declare-fun bs!1840118 () Bool)

(assert (= bs!1840118 (and b!6890265 b!6890093)))

(assert (=> bs!1840118 (= (and (= s!14361 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462719) (regOne!34122 lt!2462714)) (= (regTwo!34122 lt!2462719) (regTwo!34122 lt!2462714))) (= lambda!390602 lambda!390588))))

(assert (=> bs!1840117 (= (and (= (regOne!34122 lt!2462719) lt!2462714) (= (regTwo!34122 lt!2462719) r3!135)) (= lambda!390602 lambda!390576))))

(declare-fun bs!1840119 () Bool)

(assert (= bs!1840119 (and b!6890265 d!2160976)))

(assert (=> bs!1840119 (not (= lambda!390602 lambda!390595))))

(assert (=> bs!1840107 (not (= lambda!390602 lambda!390545))))

(declare-fun bs!1840121 () Bool)

(assert (= bs!1840121 (and b!6890265 b!6889709)))

(assert (=> bs!1840121 (= (and (= (regOne!34122 lt!2462719) r1!6342) (= (regTwo!34122 lt!2462719) lt!2462716)) (= lambda!390602 lambda!390552))))

(assert (=> b!6890265 true))

(assert (=> b!6890265 true))

(declare-fun call!626968 () Bool)

(declare-fun bm!626962 () Bool)

(declare-fun c!1281113 () Bool)

(assert (=> bm!626962 (= call!626968 (Exists!3817 (ite c!1281113 lambda!390600 lambda!390602)))))

(declare-fun b!6890257 () Bool)

(declare-fun c!1281112 () Bool)

(assert (=> b!6890257 (= c!1281112 ((_ is Union!16805) lt!2462719))))

(declare-fun e!4151007 () Bool)

(declare-fun e!4151008 () Bool)

(assert (=> b!6890257 (= e!4151007 e!4151008)))

(declare-fun bm!626963 () Bool)

(declare-fun call!626967 () Bool)

(assert (=> bm!626963 (= call!626967 (isEmpty!38695 s!14361))))

(declare-fun d!2161006 () Bool)

(declare-fun c!1281115 () Bool)

(assert (=> d!2161006 (= c!1281115 ((_ is EmptyExpr!16805) lt!2462719))))

(declare-fun e!4151006 () Bool)

(assert (=> d!2161006 (= (matchRSpec!3868 lt!2462719 s!14361) e!4151006)))

(declare-fun b!6890258 () Bool)

(declare-fun res!2809359 () Bool)

(declare-fun e!4151004 () Bool)

(assert (=> b!6890258 (=> res!2809359 e!4151004)))

(assert (=> b!6890258 (= res!2809359 call!626967)))

(declare-fun e!4151005 () Bool)

(assert (=> b!6890258 (= e!4151005 e!4151004)))

(declare-fun b!6890259 () Bool)

(declare-fun e!4151009 () Bool)

(assert (=> b!6890259 (= e!4151006 e!4151009)))

(declare-fun res!2809360 () Bool)

(assert (=> b!6890259 (= res!2809360 (not ((_ is EmptyLang!16805) lt!2462719)))))

(assert (=> b!6890259 (=> (not res!2809360) (not e!4151009))))

(declare-fun b!6890260 () Bool)

(declare-fun c!1281114 () Bool)

(assert (=> b!6890260 (= c!1281114 ((_ is ElementMatch!16805) lt!2462719))))

(assert (=> b!6890260 (= e!4151009 e!4151007)))

(declare-fun b!6890261 () Bool)

(assert (=> b!6890261 (= e!4151007 (= s!14361 (Cons!66438 (c!1280991 lt!2462719) Nil!66438)))))

(declare-fun b!6890262 () Bool)

(declare-fun e!4151003 () Bool)

(assert (=> b!6890262 (= e!4151003 (matchRSpec!3868 (regTwo!34123 lt!2462719) s!14361))))

(assert (=> b!6890263 (= e!4151004 call!626968)))

(declare-fun b!6890264 () Bool)

(assert (=> b!6890264 (= e!4151008 e!4151005)))

(assert (=> b!6890264 (= c!1281113 ((_ is Star!16805) lt!2462719))))

(assert (=> b!6890265 (= e!4151005 call!626968)))

(declare-fun b!6890266 () Bool)

(assert (=> b!6890266 (= e!4151006 call!626967)))

(declare-fun b!6890267 () Bool)

(assert (=> b!6890267 (= e!4151008 e!4151003)))

(declare-fun res!2809358 () Bool)

(assert (=> b!6890267 (= res!2809358 (matchRSpec!3868 (regOne!34123 lt!2462719) s!14361))))

(assert (=> b!6890267 (=> res!2809358 e!4151003)))

(assert (= (and d!2161006 c!1281115) b!6890266))

(assert (= (and d!2161006 (not c!1281115)) b!6890259))

(assert (= (and b!6890259 res!2809360) b!6890260))

(assert (= (and b!6890260 c!1281114) b!6890261))

(assert (= (and b!6890260 (not c!1281114)) b!6890257))

(assert (= (and b!6890257 c!1281112) b!6890267))

(assert (= (and b!6890257 (not c!1281112)) b!6890264))

(assert (= (and b!6890267 (not res!2809358)) b!6890262))

(assert (= (and b!6890264 c!1281113) b!6890258))

(assert (= (and b!6890264 (not c!1281113)) b!6890265))

(assert (= (and b!6890258 (not res!2809359)) b!6890263))

(assert (= (or b!6890263 b!6890265) bm!626962))

(assert (= (or b!6890266 b!6890258) bm!626963))

(declare-fun m!7612570 () Bool)

(assert (=> bm!626962 m!7612570))

(assert (=> bm!626963 m!7612502))

(declare-fun m!7612572 () Bool)

(assert (=> b!6890262 m!7612572))

(declare-fun m!7612574 () Bool)

(assert (=> b!6890267 m!7612574))

(assert (=> b!6889716 d!2161006))

(declare-fun b!6890291 () Bool)

(declare-fun res!2809376 () Bool)

(declare-fun e!4151026 () Bool)

(assert (=> b!6890291 (=> (not res!2809376) (not e!4151026))))

(declare-fun call!626972 () Bool)

(assert (=> b!6890291 (= res!2809376 call!626972)))

(declare-fun e!4151027 () Bool)

(assert (=> b!6890291 (= e!4151027 e!4151026)))

(declare-fun c!1281122 () Bool)

(declare-fun call!626971 () Bool)

(declare-fun bm!626965 () Bool)

(declare-fun c!1281121 () Bool)

(assert (=> bm!626965 (= call!626971 (validRegex!8513 (ite c!1281122 (reg!17134 r1!6342) (ite c!1281121 (regOne!34123 r1!6342) (regTwo!34122 r1!6342)))))))

(declare-fun bm!626966 () Bool)

(assert (=> bm!626966 (= call!626972 call!626971)))

(declare-fun b!6890293 () Bool)

(declare-fun e!4151024 () Bool)

(assert (=> b!6890293 (= e!4151024 call!626971)))

(declare-fun b!6890294 () Bool)

(declare-fun call!626970 () Bool)

(assert (=> b!6890294 (= e!4151026 call!626970)))

(declare-fun b!6890295 () Bool)

(declare-fun e!4151022 () Bool)

(assert (=> b!6890295 (= e!4151022 e!4151024)))

(declare-fun res!2809377 () Bool)

(assert (=> b!6890295 (= res!2809377 (not (nullable!6687 (reg!17134 r1!6342))))))

(assert (=> b!6890295 (=> (not res!2809377) (not e!4151024))))

(declare-fun b!6890296 () Bool)

(assert (=> b!6890296 (= e!4151022 e!4151027)))

(assert (=> b!6890296 (= c!1281121 ((_ is Union!16805) r1!6342))))

(declare-fun b!6890297 () Bool)

(declare-fun e!4151028 () Bool)

(assert (=> b!6890297 (= e!4151028 e!4151022)))

(assert (=> b!6890297 (= c!1281122 ((_ is Star!16805) r1!6342))))

(declare-fun b!6890298 () Bool)

(declare-fun res!2809375 () Bool)

(declare-fun e!4151023 () Bool)

(assert (=> b!6890298 (=> res!2809375 e!4151023)))

(assert (=> b!6890298 (= res!2809375 (not ((_ is Concat!25650) r1!6342)))))

(assert (=> b!6890298 (= e!4151027 e!4151023)))

(declare-fun d!2161020 () Bool)

(declare-fun res!2809378 () Bool)

(assert (=> d!2161020 (=> res!2809378 e!4151028)))

(assert (=> d!2161020 (= res!2809378 ((_ is ElementMatch!16805) r1!6342))))

(assert (=> d!2161020 (= (validRegex!8513 r1!6342) e!4151028)))

(declare-fun b!6890292 () Bool)

(declare-fun e!4151025 () Bool)

(assert (=> b!6890292 (= e!4151025 call!626972)))

(declare-fun bm!626967 () Bool)

(assert (=> bm!626967 (= call!626970 (validRegex!8513 (ite c!1281121 (regTwo!34123 r1!6342) (regOne!34122 r1!6342))))))

(declare-fun b!6890299 () Bool)

(assert (=> b!6890299 (= e!4151023 e!4151025)))

(declare-fun res!2809374 () Bool)

(assert (=> b!6890299 (=> (not res!2809374) (not e!4151025))))

(assert (=> b!6890299 (= res!2809374 call!626970)))

(assert (= (and d!2161020 (not res!2809378)) b!6890297))

(assert (= (and b!6890297 c!1281122) b!6890295))

(assert (= (and b!6890297 (not c!1281122)) b!6890296))

(assert (= (and b!6890295 res!2809377) b!6890293))

(assert (= (and b!6890296 c!1281121) b!6890291))

(assert (= (and b!6890296 (not c!1281121)) b!6890298))

(assert (= (and b!6890291 res!2809376) b!6890294))

(assert (= (and b!6890298 (not res!2809375)) b!6890299))

(assert (= (and b!6890299 res!2809374) b!6890292))

(assert (= (or b!6890291 b!6890292) bm!626966))

(assert (= (or b!6890294 b!6890299) bm!626967))

(assert (= (or b!6890293 bm!626966) bm!626965))

(declare-fun m!7612590 () Bool)

(assert (=> bm!626965 m!7612590))

(declare-fun m!7612592 () Bool)

(assert (=> b!6890295 m!7612592))

(declare-fun m!7612594 () Bool)

(assert (=> bm!626967 m!7612594))

(assert (=> start!664222 d!2161020))

(declare-fun b!6890309 () Bool)

(declare-fun res!2809386 () Bool)

(declare-fun e!4151040 () Bool)

(assert (=> b!6890309 (=> (not res!2809386) (not e!4151040))))

(declare-fun call!626978 () Bool)

(assert (=> b!6890309 (= res!2809386 call!626978)))

(declare-fun e!4151041 () Bool)

(assert (=> b!6890309 (= e!4151041 e!4151040)))

(declare-fun call!626977 () Bool)

(declare-fun bm!626971 () Bool)

(declare-fun c!1281125 () Bool)

(declare-fun c!1281126 () Bool)

(assert (=> bm!626971 (= call!626977 (validRegex!8513 (ite c!1281126 (reg!17134 lt!2462719) (ite c!1281125 (regOne!34123 lt!2462719) (regTwo!34122 lt!2462719)))))))

(declare-fun bm!626972 () Bool)

(assert (=> bm!626972 (= call!626978 call!626977)))

(declare-fun b!6890311 () Bool)

(declare-fun e!4151038 () Bool)

(assert (=> b!6890311 (= e!4151038 call!626977)))

(declare-fun b!6890312 () Bool)

(declare-fun call!626976 () Bool)

(assert (=> b!6890312 (= e!4151040 call!626976)))

(declare-fun b!6890313 () Bool)

(declare-fun e!4151036 () Bool)

(assert (=> b!6890313 (= e!4151036 e!4151038)))

(declare-fun res!2809387 () Bool)

(assert (=> b!6890313 (= res!2809387 (not (nullable!6687 (reg!17134 lt!2462719))))))

(assert (=> b!6890313 (=> (not res!2809387) (not e!4151038))))

(declare-fun b!6890314 () Bool)

(assert (=> b!6890314 (= e!4151036 e!4151041)))

(assert (=> b!6890314 (= c!1281125 ((_ is Union!16805) lt!2462719))))

(declare-fun b!6890315 () Bool)

(declare-fun e!4151042 () Bool)

(assert (=> b!6890315 (= e!4151042 e!4151036)))

(assert (=> b!6890315 (= c!1281126 ((_ is Star!16805) lt!2462719))))

(declare-fun b!6890316 () Bool)

(declare-fun res!2809385 () Bool)

(declare-fun e!4151037 () Bool)

(assert (=> b!6890316 (=> res!2809385 e!4151037)))

(assert (=> b!6890316 (= res!2809385 (not ((_ is Concat!25650) lt!2462719)))))

(assert (=> b!6890316 (= e!4151041 e!4151037)))

(declare-fun d!2161024 () Bool)

(declare-fun res!2809388 () Bool)

(assert (=> d!2161024 (=> res!2809388 e!4151042)))

(assert (=> d!2161024 (= res!2809388 ((_ is ElementMatch!16805) lt!2462719))))

(assert (=> d!2161024 (= (validRegex!8513 lt!2462719) e!4151042)))

(declare-fun b!6890310 () Bool)

(declare-fun e!4151039 () Bool)

(assert (=> b!6890310 (= e!4151039 call!626978)))

(declare-fun bm!626973 () Bool)

(assert (=> bm!626973 (= call!626976 (validRegex!8513 (ite c!1281125 (regTwo!34123 lt!2462719) (regOne!34122 lt!2462719))))))

(declare-fun b!6890317 () Bool)

(assert (=> b!6890317 (= e!4151037 e!4151039)))

(declare-fun res!2809384 () Bool)

(assert (=> b!6890317 (=> (not res!2809384) (not e!4151039))))

(assert (=> b!6890317 (= res!2809384 call!626976)))

(assert (= (and d!2161024 (not res!2809388)) b!6890315))

(assert (= (and b!6890315 c!1281126) b!6890313))

(assert (= (and b!6890315 (not c!1281126)) b!6890314))

(assert (= (and b!6890313 res!2809387) b!6890311))

(assert (= (and b!6890314 c!1281125) b!6890309))

(assert (= (and b!6890314 (not c!1281125)) b!6890316))

(assert (= (and b!6890309 res!2809386) b!6890312))

(assert (= (and b!6890316 (not res!2809385)) b!6890317))

(assert (= (and b!6890317 res!2809384) b!6890310))

(assert (= (or b!6890309 b!6890310) bm!626972))

(assert (= (or b!6890312 b!6890317) bm!626973))

(assert (= (or b!6890311 bm!626972) bm!626971))

(declare-fun m!7612600 () Bool)

(assert (=> bm!626971 m!7612600))

(declare-fun m!7612604 () Bool)

(assert (=> b!6890313 m!7612604))

(declare-fun m!7612606 () Bool)

(assert (=> bm!626973 m!7612606))

(assert (=> b!6889709 d!2161024))

(assert (=> b!6889709 d!2160874))

(declare-fun d!2161028 () Bool)

(assert (=> d!2161028 (= (Exists!3817 lambda!390552) (choose!51306 lambda!390552))))

(declare-fun bs!1840123 () Bool)

(assert (= bs!1840123 d!2161028))

(declare-fun m!7612610 () Bool)

(assert (=> bs!1840123 m!7612610))

(assert (=> b!6889709 d!2161028))

(declare-fun bs!1840125 () Bool)

(declare-fun d!2161032 () Bool)

(assert (= bs!1840125 (and d!2161032 b!6889711)))

(declare-fun lambda!390603 () Int)

(assert (=> bs!1840125 (= (and (= s!14361 lt!2462693) (= r1!6342 r2!6280) (= lt!2462716 r3!135)) (= lambda!390603 lambda!390549))))

(declare-fun bs!1840127 () Bool)

(assert (= bs!1840127 (and d!2161032 b!6890091)))

(assert (=> bs!1840127 (not (= lambda!390603 lambda!390587))))

(declare-fun bs!1840129 () Bool)

(assert (= bs!1840129 (and d!2161032 b!6890226)))

(assert (=> bs!1840129 (not (= lambda!390603 lambda!390598))))

(declare-fun bs!1840131 () Bool)

(assert (= bs!1840131 (and d!2161032 b!6890263)))

(assert (=> bs!1840131 (not (= lambda!390603 lambda!390600))))

(declare-fun bs!1840133 () Bool)

(assert (= bs!1840133 (and d!2161032 d!2160934)))

(assert (=> bs!1840133 (= (and (= r1!6342 lt!2462714) (= lt!2462716 r3!135)) (= lambda!390603 lambda!390577))))

(declare-fun bs!1840135 () Bool)

(assert (= bs!1840135 (and d!2161032 d!2160888)))

(assert (=> bs!1840135 (= lambda!390603 lambda!390565)))

(declare-fun bs!1840137 () Bool)

(assert (= bs!1840137 (and d!2161032 b!6889718)))

(assert (=> bs!1840137 (not (= lambda!390603 lambda!390546))))

(declare-fun bs!1840139 () Bool)

(assert (= bs!1840139 (and d!2161032 b!6889717)))

(assert (=> bs!1840139 (= lambda!390603 lambda!390551)))

(declare-fun bs!1840141 () Bool)

(assert (= bs!1840141 (and d!2161032 b!6889727)))

(assert (=> bs!1840141 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462716 r2!6280)) (= lambda!390603 lambda!390547))))

(declare-fun bs!1840143 () Bool)

(assert (= bs!1840143 (and d!2161032 b!6890265)))

(assert (=> bs!1840143 (not (= lambda!390603 lambda!390602))))

(declare-fun bs!1840145 () Bool)

(assert (= bs!1840145 (and d!2161032 d!2160970)))

(assert (=> bs!1840145 (not (= lambda!390603 lambda!390593))))

(assert (=> bs!1840145 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462716 r2!6280)) (= lambda!390603 lambda!390592))))

(assert (=> bs!1840141 (not (= lambda!390603 lambda!390548))))

(assert (=> bs!1840125 (not (= lambda!390603 lambda!390550))))

(declare-fun bs!1840148 () Bool)

(assert (= bs!1840148 (and d!2161032 b!6890224)))

(assert (=> bs!1840148 (not (= lambda!390603 lambda!390596))))

(declare-fun bs!1840150 () Bool)

(assert (= bs!1840150 (and d!2161032 d!2160918)))

(assert (=> bs!1840150 (= (and (= r1!6342 lt!2462714) (= lt!2462716 r3!135)) (= lambda!390603 lambda!390575))))

(declare-fun bs!1840151 () Bool)

(assert (= bs!1840151 (and d!2161032 b!6890093)))

(assert (=> bs!1840151 (not (= lambda!390603 lambda!390588))))

(assert (=> bs!1840150 (not (= lambda!390603 lambda!390576))))

(declare-fun bs!1840154 () Bool)

(assert (= bs!1840154 (and d!2161032 d!2160976)))

(assert (=> bs!1840154 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462716 r2!6280)) (= lambda!390603 lambda!390595))))

(assert (=> bs!1840137 (= (and (= r1!6342 lt!2462714) (= lt!2462716 r3!135)) (= lambda!390603 lambda!390545))))

(declare-fun bs!1840157 () Bool)

(assert (= bs!1840157 (and d!2161032 b!6889709)))

(assert (=> bs!1840157 (not (= lambda!390603 lambda!390552))))

(assert (=> d!2161032 true))

(assert (=> d!2161032 true))

(assert (=> d!2161032 true))

(declare-fun lambda!390605 () Int)

(assert (=> bs!1840125 (not (= lambda!390605 lambda!390549))))

(assert (=> bs!1840127 (not (= lambda!390605 lambda!390587))))

(assert (=> bs!1840129 (= (and (= r1!6342 (regOne!34122 lt!2462688)) (= lt!2462716 (regTwo!34122 lt!2462688))) (= lambda!390605 lambda!390598))))

(assert (=> bs!1840131 (not (= lambda!390605 lambda!390600))))

(assert (=> bs!1840133 (not (= lambda!390605 lambda!390577))))

(assert (=> bs!1840135 (not (= lambda!390605 lambda!390565))))

(assert (=> bs!1840137 (= (and (= r1!6342 lt!2462714) (= lt!2462716 r3!135)) (= lambda!390605 lambda!390546))))

(assert (=> bs!1840141 (not (= lambda!390605 lambda!390547))))

(assert (=> bs!1840143 (= (and (= r1!6342 (regOne!34122 lt!2462719)) (= lt!2462716 (regTwo!34122 lt!2462719))) (= lambda!390605 lambda!390602))))

(assert (=> bs!1840145 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462716 r2!6280)) (= lambda!390605 lambda!390593))))

(assert (=> bs!1840145 (not (= lambda!390605 lambda!390592))))

(assert (=> bs!1840141 (= (and (= s!14361 (_1!36981 lt!2462711)) (= lt!2462716 r2!6280)) (= lambda!390605 lambda!390548))))

(assert (=> bs!1840125 (= (and (= s!14361 lt!2462693) (= r1!6342 r2!6280) (= lt!2462716 r3!135)) (= lambda!390605 lambda!390550))))

(assert (=> bs!1840148 (not (= lambda!390605 lambda!390596))))

(declare-fun bs!1840160 () Bool)

(assert (= bs!1840160 d!2161032))

(assert (=> bs!1840160 (not (= lambda!390605 lambda!390603))))

(assert (=> bs!1840139 (not (= lambda!390605 lambda!390551))))

(assert (=> bs!1840150 (not (= lambda!390605 lambda!390575))))

(assert (=> bs!1840151 (= (and (= s!14361 (_1!36981 lt!2462711)) (= r1!6342 (regOne!34122 lt!2462714)) (= lt!2462716 (regTwo!34122 lt!2462714))) (= lambda!390605 lambda!390588))))

(assert (=> bs!1840150 (= (and (= r1!6342 lt!2462714) (= lt!2462716 r3!135)) (= lambda!390605 lambda!390576))))

(assert (=> bs!1840154 (not (= lambda!390605 lambda!390595))))

(assert (=> bs!1840137 (not (= lambda!390605 lambda!390545))))

(assert (=> bs!1840157 (= lambda!390605 lambda!390552)))

(assert (=> d!2161032 true))

(assert (=> d!2161032 true))

(assert (=> d!2161032 true))

(assert (=> d!2161032 (= (Exists!3817 lambda!390603) (Exists!3817 lambda!390605))))

(declare-fun lt!2462813 () Unit!160330)

(assert (=> d!2161032 (= lt!2462813 (choose!51313 r1!6342 lt!2462716 s!14361))))

(assert (=> d!2161032 (validRegex!8513 r1!6342)))

(assert (=> d!2161032 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2296 r1!6342 lt!2462716 s!14361) lt!2462813)))

(declare-fun m!7612614 () Bool)

(assert (=> bs!1840160 m!7612614))

(declare-fun m!7612616 () Bool)

(assert (=> bs!1840160 m!7612616))

(declare-fun m!7612618 () Bool)

(assert (=> bs!1840160 m!7612618))

(assert (=> bs!1840160 m!7612026))

(assert (=> b!6889709 d!2161032))

(declare-fun bm!626974 () Bool)

(declare-fun call!626979 () Bool)

(assert (=> bm!626974 (= call!626979 (isEmpty!38695 (_2!36981 lt!2462718)))))

(declare-fun b!6890318 () Bool)

(declare-fun e!4151048 () Bool)

(declare-fun e!4151044 () Bool)

(assert (=> b!6890318 (= e!4151048 e!4151044)))

(declare-fun res!2809389 () Bool)

(assert (=> b!6890318 (=> res!2809389 e!4151044)))

(assert (=> b!6890318 (= res!2809389 call!626979)))

(declare-fun d!2161036 () Bool)

(declare-fun e!4151045 () Bool)

(assert (=> d!2161036 e!4151045))

(declare-fun c!1281129 () Bool)

(assert (=> d!2161036 (= c!1281129 ((_ is EmptyExpr!16805) r2!6280))))

(declare-fun lt!2462815 () Bool)

(declare-fun e!4151046 () Bool)

(assert (=> d!2161036 (= lt!2462815 e!4151046)))

(declare-fun c!1281127 () Bool)

(assert (=> d!2161036 (= c!1281127 (isEmpty!38695 (_2!36981 lt!2462718)))))

(assert (=> d!2161036 (validRegex!8513 r2!6280)))

(assert (=> d!2161036 (= (matchR!8950 r2!6280 (_2!36981 lt!2462718)) lt!2462815)))

(declare-fun b!6890319 () Bool)

(declare-fun e!4151049 () Bool)

(assert (=> b!6890319 (= e!4151049 (not lt!2462815))))

(declare-fun b!6890320 () Bool)

(assert (=> b!6890320 (= e!4151045 e!4151049)))

(declare-fun c!1281128 () Bool)

(assert (=> b!6890320 (= c!1281128 ((_ is EmptyLang!16805) r2!6280))))

(declare-fun b!6890321 () Bool)

(assert (=> b!6890321 (= e!4151046 (nullable!6687 r2!6280))))

(declare-fun b!6890322 () Bool)

(declare-fun res!2809392 () Bool)

(declare-fun e!4151047 () Bool)

(assert (=> b!6890322 (=> res!2809392 e!4151047)))

(declare-fun e!4151043 () Bool)

(assert (=> b!6890322 (= res!2809392 e!4151043)))

(declare-fun res!2809391 () Bool)

(assert (=> b!6890322 (=> (not res!2809391) (not e!4151043))))

(assert (=> b!6890322 (= res!2809391 lt!2462815)))

(declare-fun b!6890323 () Bool)

(declare-fun res!2809390 () Bool)

(assert (=> b!6890323 (=> (not res!2809390) (not e!4151043))))

(assert (=> b!6890323 (= res!2809390 (not call!626979))))

(declare-fun b!6890324 () Bool)

(assert (=> b!6890324 (= e!4151045 (= lt!2462815 call!626979))))

(declare-fun b!6890325 () Bool)

(declare-fun res!2809394 () Bool)

(assert (=> b!6890325 (=> (not res!2809394) (not e!4151043))))

(assert (=> b!6890325 (= res!2809394 (isEmpty!38695 (tail!12872 (_2!36981 lt!2462718))))))

(declare-fun b!6890326 () Bool)

(assert (=> b!6890326 (= e!4151047 e!4151048)))

(declare-fun res!2809395 () Bool)

(assert (=> b!6890326 (=> (not res!2809395) (not e!4151048))))

(assert (=> b!6890326 (= res!2809395 (not lt!2462815))))

(declare-fun b!6890327 () Bool)

(declare-fun res!2809393 () Bool)

(assert (=> b!6890327 (=> res!2809393 e!4151047)))

(assert (=> b!6890327 (= res!2809393 (not ((_ is ElementMatch!16805) r2!6280)))))

(assert (=> b!6890327 (= e!4151049 e!4151047)))

(declare-fun b!6890328 () Bool)

(assert (=> b!6890328 (= e!4151044 (not (= (head!13820 (_2!36981 lt!2462718)) (c!1280991 r2!6280))))))

(declare-fun b!6890329 () Bool)

(assert (=> b!6890329 (= e!4151043 (= (head!13820 (_2!36981 lt!2462718)) (c!1280991 r2!6280)))))

(declare-fun b!6890330 () Bool)

(assert (=> b!6890330 (= e!4151046 (matchR!8950 (derivativeStep!5367 r2!6280 (head!13820 (_2!36981 lt!2462718))) (tail!12872 (_2!36981 lt!2462718))))))

(declare-fun b!6890331 () Bool)

(declare-fun res!2809396 () Bool)

(assert (=> b!6890331 (=> res!2809396 e!4151044)))

(assert (=> b!6890331 (= res!2809396 (not (isEmpty!38695 (tail!12872 (_2!36981 lt!2462718)))))))

(assert (= (and d!2161036 c!1281127) b!6890321))

(assert (= (and d!2161036 (not c!1281127)) b!6890330))

(assert (= (and d!2161036 c!1281129) b!6890324))

(assert (= (and d!2161036 (not c!1281129)) b!6890320))

(assert (= (and b!6890320 c!1281128) b!6890319))

(assert (= (and b!6890320 (not c!1281128)) b!6890327))

(assert (= (and b!6890327 (not res!2809393)) b!6890322))

(assert (= (and b!6890322 res!2809391) b!6890323))

(assert (= (and b!6890323 res!2809390) b!6890325))

(assert (= (and b!6890325 res!2809394) b!6890329))

(assert (= (and b!6890322 (not res!2809392)) b!6890326))

(assert (= (and b!6890326 res!2809395) b!6890318))

(assert (= (and b!6890318 (not res!2809389)) b!6890331))

(assert (= (and b!6890331 (not res!2809396)) b!6890328))

(assert (= (or b!6890324 b!6890318 b!6890323) bm!626974))

(declare-fun m!7612626 () Bool)

(assert (=> b!6890331 m!7612626))

(assert (=> b!6890331 m!7612626))

(declare-fun m!7612628 () Bool)

(assert (=> b!6890331 m!7612628))

(declare-fun m!7612630 () Bool)

(assert (=> b!6890328 m!7612630))

(assert (=> b!6890325 m!7612626))

(assert (=> b!6890325 m!7612626))

(assert (=> b!6890325 m!7612628))

(assert (=> b!6890329 m!7612630))

(declare-fun m!7612632 () Bool)

(assert (=> d!2161036 m!7612632))

(assert (=> d!2161036 m!7612058))

(assert (=> b!6890330 m!7612630))

(assert (=> b!6890330 m!7612630))

(declare-fun m!7612634 () Bool)

(assert (=> b!6890330 m!7612634))

(assert (=> b!6890330 m!7612626))

(assert (=> b!6890330 m!7612634))

(assert (=> b!6890330 m!7612626))

(declare-fun m!7612638 () Bool)

(assert (=> b!6890330 m!7612638))

(assert (=> bm!626974 m!7612632))

(declare-fun m!7612640 () Bool)

(assert (=> b!6890321 m!7612640))

(assert (=> b!6889730 d!2161036))

(declare-fun bm!626975 () Bool)

(declare-fun call!626980 () Bool)

(assert (=> bm!626975 (= call!626980 (isEmpty!38695 (_2!36981 lt!2462711)))))

(declare-fun b!6890336 () Bool)

(declare-fun e!4151057 () Bool)

(declare-fun e!4151053 () Bool)

(assert (=> b!6890336 (= e!4151057 e!4151053)))

(declare-fun res!2809399 () Bool)

(assert (=> b!6890336 (=> res!2809399 e!4151053)))

(assert (=> b!6890336 (= res!2809399 call!626980)))

(declare-fun d!2161042 () Bool)

(declare-fun e!4151054 () Bool)

(assert (=> d!2161042 e!4151054))

(declare-fun c!1281133 () Bool)

(assert (=> d!2161042 (= c!1281133 ((_ is EmptyExpr!16805) r3!135))))

(declare-fun lt!2462818 () Bool)

(declare-fun e!4151055 () Bool)

(assert (=> d!2161042 (= lt!2462818 e!4151055)))

(declare-fun c!1281131 () Bool)

(assert (=> d!2161042 (= c!1281131 (isEmpty!38695 (_2!36981 lt!2462711)))))

(assert (=> d!2161042 (validRegex!8513 r3!135)))

(assert (=> d!2161042 (= (matchR!8950 r3!135 (_2!36981 lt!2462711)) lt!2462818)))

(declare-fun b!6890337 () Bool)

(declare-fun e!4151058 () Bool)

(assert (=> b!6890337 (= e!4151058 (not lt!2462818))))

(declare-fun b!6890338 () Bool)

(assert (=> b!6890338 (= e!4151054 e!4151058)))

(declare-fun c!1281132 () Bool)

(assert (=> b!6890338 (= c!1281132 ((_ is EmptyLang!16805) r3!135))))

(declare-fun b!6890339 () Bool)

(assert (=> b!6890339 (= e!4151055 (nullable!6687 r3!135))))

(declare-fun b!6890340 () Bool)

(declare-fun res!2809402 () Bool)

(declare-fun e!4151056 () Bool)

(assert (=> b!6890340 (=> res!2809402 e!4151056)))

(declare-fun e!4151052 () Bool)

(assert (=> b!6890340 (= res!2809402 e!4151052)))

(declare-fun res!2809401 () Bool)

(assert (=> b!6890340 (=> (not res!2809401) (not e!4151052))))

(assert (=> b!6890340 (= res!2809401 lt!2462818)))

(declare-fun b!6890341 () Bool)

(declare-fun res!2809400 () Bool)

(assert (=> b!6890341 (=> (not res!2809400) (not e!4151052))))

(assert (=> b!6890341 (= res!2809400 (not call!626980))))

(declare-fun b!6890342 () Bool)

(assert (=> b!6890342 (= e!4151054 (= lt!2462818 call!626980))))

(declare-fun b!6890343 () Bool)

(declare-fun res!2809404 () Bool)

(assert (=> b!6890343 (=> (not res!2809404) (not e!4151052))))

(assert (=> b!6890343 (= res!2809404 (isEmpty!38695 (tail!12872 (_2!36981 lt!2462711))))))

(declare-fun b!6890344 () Bool)

(assert (=> b!6890344 (= e!4151056 e!4151057)))

(declare-fun res!2809405 () Bool)

(assert (=> b!6890344 (=> (not res!2809405) (not e!4151057))))

(assert (=> b!6890344 (= res!2809405 (not lt!2462818))))

(declare-fun b!6890345 () Bool)

(declare-fun res!2809403 () Bool)

(assert (=> b!6890345 (=> res!2809403 e!4151056)))

(assert (=> b!6890345 (= res!2809403 (not ((_ is ElementMatch!16805) r3!135)))))

(assert (=> b!6890345 (= e!4151058 e!4151056)))

(declare-fun b!6890346 () Bool)

(assert (=> b!6890346 (= e!4151053 (not (= (head!13820 (_2!36981 lt!2462711)) (c!1280991 r3!135))))))

(declare-fun b!6890347 () Bool)

(assert (=> b!6890347 (= e!4151052 (= (head!13820 (_2!36981 lt!2462711)) (c!1280991 r3!135)))))

(declare-fun b!6890348 () Bool)

(assert (=> b!6890348 (= e!4151055 (matchR!8950 (derivativeStep!5367 r3!135 (head!13820 (_2!36981 lt!2462711))) (tail!12872 (_2!36981 lt!2462711))))))

(declare-fun b!6890349 () Bool)

(declare-fun res!2809406 () Bool)

(assert (=> b!6890349 (=> res!2809406 e!4151053)))

(assert (=> b!6890349 (= res!2809406 (not (isEmpty!38695 (tail!12872 (_2!36981 lt!2462711)))))))

(assert (= (and d!2161042 c!1281131) b!6890339))

(assert (= (and d!2161042 (not c!1281131)) b!6890348))

(assert (= (and d!2161042 c!1281133) b!6890342))

(assert (= (and d!2161042 (not c!1281133)) b!6890338))

(assert (= (and b!6890338 c!1281132) b!6890337))

(assert (= (and b!6890338 (not c!1281132)) b!6890345))

(assert (= (and b!6890345 (not res!2809403)) b!6890340))

(assert (= (and b!6890340 res!2809401) b!6890341))

(assert (= (and b!6890341 res!2809400) b!6890343))

(assert (= (and b!6890343 res!2809404) b!6890347))

(assert (= (and b!6890340 (not res!2809402)) b!6890344))

(assert (= (and b!6890344 res!2809405) b!6890336))

(assert (= (and b!6890336 (not res!2809399)) b!6890349))

(assert (= (and b!6890349 (not res!2809406)) b!6890346))

(assert (= (or b!6890342 b!6890336 b!6890341) bm!626975))

(declare-fun m!7612648 () Bool)

(assert (=> b!6890349 m!7612648))

(assert (=> b!6890349 m!7612648))

(declare-fun m!7612650 () Bool)

(assert (=> b!6890349 m!7612650))

(declare-fun m!7612652 () Bool)

(assert (=> b!6890346 m!7612652))

(assert (=> b!6890343 m!7612648))

(assert (=> b!6890343 m!7612648))

(assert (=> b!6890343 m!7612650))

(assert (=> b!6890347 m!7612652))

(declare-fun m!7612654 () Bool)

(assert (=> d!2161042 m!7612654))

(assert (=> d!2161042 m!7612056))

(assert (=> b!6890348 m!7612652))

(assert (=> b!6890348 m!7612652))

(declare-fun m!7612656 () Bool)

(assert (=> b!6890348 m!7612656))

(assert (=> b!6890348 m!7612648))

(assert (=> b!6890348 m!7612656))

(assert (=> b!6890348 m!7612648))

(declare-fun m!7612658 () Bool)

(assert (=> b!6890348 m!7612658))

(assert (=> bm!626975 m!7612654))

(declare-fun m!7612660 () Bool)

(assert (=> b!6890339 m!7612660))

(assert (=> b!6889731 d!2161042))

(declare-fun d!2161046 () Bool)

(declare-fun e!4151066 () Bool)

(assert (=> d!2161046 e!4151066))

(declare-fun res!2809410 () Bool)

(assert (=> d!2161046 (=> (not res!2809410) (not e!4151066))))

(declare-fun lt!2462819 () List!66562)

(assert (=> d!2161046 (= res!2809410 (= (content!13050 lt!2462819) ((_ map or) (content!13050 (_1!36981 lt!2462718)) (content!13050 (_2!36981 lt!2462718)))))))

(declare-fun e!4151067 () List!66562)

(assert (=> d!2161046 (= lt!2462819 e!4151067)))

(declare-fun c!1281138 () Bool)

(assert (=> d!2161046 (= c!1281138 ((_ is Nil!66438) (_1!36981 lt!2462718)))))

(assert (=> d!2161046 (= (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718)) lt!2462819)))

(declare-fun b!6890361 () Bool)

(assert (=> b!6890361 (= e!4151067 (_2!36981 lt!2462718))))

(declare-fun b!6890364 () Bool)

(assert (=> b!6890364 (= e!4151066 (or (not (= (_2!36981 lt!2462718) Nil!66438)) (= lt!2462819 (_1!36981 lt!2462718))))))

(declare-fun b!6890362 () Bool)

(assert (=> b!6890362 (= e!4151067 (Cons!66438 (h!72886 (_1!36981 lt!2462718)) (++!14884 (t!380305 (_1!36981 lt!2462718)) (_2!36981 lt!2462718))))))

(declare-fun b!6890363 () Bool)

(declare-fun res!2809411 () Bool)

(assert (=> b!6890363 (=> (not res!2809411) (not e!4151066))))

(assert (=> b!6890363 (= res!2809411 (= (size!40747 lt!2462819) (+ (size!40747 (_1!36981 lt!2462718)) (size!40747 (_2!36981 lt!2462718)))))))

(assert (= (and d!2161046 c!1281138) b!6890361))

(assert (= (and d!2161046 (not c!1281138)) b!6890362))

(assert (= (and d!2161046 res!2809410) b!6890363))

(assert (= (and b!6890363 res!2809411) b!6890364))

(declare-fun m!7612662 () Bool)

(assert (=> d!2161046 m!7612662))

(assert (=> d!2161046 m!7612176))

(declare-fun m!7612664 () Bool)

(assert (=> d!2161046 m!7612664))

(declare-fun m!7612666 () Bool)

(assert (=> b!6890362 m!7612666))

(declare-fun m!7612668 () Bool)

(assert (=> b!6890363 m!7612668))

(assert (=> b!6890363 m!7612184))

(declare-fun m!7612670 () Bool)

(assert (=> b!6890363 m!7612670))

(assert (=> b!6889710 d!2161046))

(declare-fun bs!1840174 () Bool)

(declare-fun b!6890371 () Bool)

(assert (= bs!1840174 (and b!6890371 b!6889711)))

(declare-fun lambda!390608 () Int)

(assert (=> bs!1840174 (not (= lambda!390608 lambda!390549))))

(declare-fun bs!1840175 () Bool)

(assert (= bs!1840175 (and b!6890371 b!6890091)))

(assert (=> bs!1840175 (= (and (= (_2!36981 lt!2462718) (_1!36981 lt!2462711)) (= (reg!17134 r2!6280) (reg!17134 lt!2462714)) (= r2!6280 lt!2462714)) (= lambda!390608 lambda!390587))))

(declare-fun bs!1840177 () Bool)

(assert (= bs!1840177 (and b!6890371 b!6890226)))

(assert (=> bs!1840177 (not (= lambda!390608 lambda!390598))))

(declare-fun bs!1840179 () Bool)

(assert (= bs!1840179 (and b!6890371 b!6890263)))

(assert (=> bs!1840179 (= (and (= (_2!36981 lt!2462718) s!14361) (= (reg!17134 r2!6280) (reg!17134 lt!2462719)) (= r2!6280 lt!2462719)) (= lambda!390608 lambda!390600))))

(declare-fun bs!1840181 () Bool)

(assert (= bs!1840181 (and b!6890371 d!2160934)))

(assert (=> bs!1840181 (not (= lambda!390608 lambda!390577))))

(declare-fun bs!1840183 () Bool)

(assert (= bs!1840183 (and b!6890371 d!2160888)))

(assert (=> bs!1840183 (not (= lambda!390608 lambda!390565))))

(declare-fun bs!1840184 () Bool)

(assert (= bs!1840184 (and b!6890371 b!6889727)))

(assert (=> bs!1840184 (not (= lambda!390608 lambda!390547))))

(declare-fun bs!1840185 () Bool)

(assert (= bs!1840185 (and b!6890371 b!6890265)))

(assert (=> bs!1840185 (not (= lambda!390608 lambda!390602))))

(declare-fun bs!1840187 () Bool)

(assert (= bs!1840187 (and b!6890371 d!2160970)))

(assert (=> bs!1840187 (not (= lambda!390608 lambda!390593))))

(assert (=> bs!1840187 (not (= lambda!390608 lambda!390592))))

(assert (=> bs!1840184 (not (= lambda!390608 lambda!390548))))

(assert (=> bs!1840174 (not (= lambda!390608 lambda!390550))))

(declare-fun bs!1840191 () Bool)

(assert (= bs!1840191 (and b!6890371 b!6890224)))

(assert (=> bs!1840191 (= (and (= (_2!36981 lt!2462718) s!14361) (= (reg!17134 r2!6280) (reg!17134 lt!2462688)) (= r2!6280 lt!2462688)) (= lambda!390608 lambda!390596))))

(declare-fun bs!1840192 () Bool)

(assert (= bs!1840192 (and b!6890371 b!6889718)))

(assert (=> bs!1840192 (not (= lambda!390608 lambda!390546))))

(declare-fun bs!1840194 () Bool)

(assert (= bs!1840194 (and b!6890371 d!2161032)))

(assert (=> bs!1840194 (not (= lambda!390608 lambda!390605))))

(assert (=> bs!1840194 (not (= lambda!390608 lambda!390603))))

(declare-fun bs!1840195 () Bool)

(assert (= bs!1840195 (and b!6890371 b!6889717)))

(assert (=> bs!1840195 (not (= lambda!390608 lambda!390551))))

(declare-fun bs!1840196 () Bool)

(assert (= bs!1840196 (and b!6890371 d!2160918)))

(assert (=> bs!1840196 (not (= lambda!390608 lambda!390575))))

(declare-fun bs!1840197 () Bool)

(assert (= bs!1840197 (and b!6890371 b!6890093)))

(assert (=> bs!1840197 (not (= lambda!390608 lambda!390588))))

(assert (=> bs!1840196 (not (= lambda!390608 lambda!390576))))

(declare-fun bs!1840198 () Bool)

(assert (= bs!1840198 (and b!6890371 d!2160976)))

(assert (=> bs!1840198 (not (= lambda!390608 lambda!390595))))

(assert (=> bs!1840192 (not (= lambda!390608 lambda!390545))))

(declare-fun bs!1840200 () Bool)

(assert (= bs!1840200 (and b!6890371 b!6889709)))

(assert (=> bs!1840200 (not (= lambda!390608 lambda!390552))))

(assert (=> b!6890371 true))

(assert (=> b!6890371 true))

(declare-fun bs!1840208 () Bool)

(declare-fun b!6890373 () Bool)

(assert (= bs!1840208 (and b!6890373 b!6889711)))

(declare-fun lambda!390610 () Int)

(assert (=> bs!1840208 (not (= lambda!390610 lambda!390549))))

(declare-fun bs!1840210 () Bool)

(assert (= bs!1840210 (and b!6890373 b!6890091)))

(assert (=> bs!1840210 (not (= lambda!390610 lambda!390587))))

(declare-fun bs!1840212 () Bool)

(assert (= bs!1840212 (and b!6890373 b!6890226)))

(assert (=> bs!1840212 (= (and (= (_2!36981 lt!2462718) s!14361) (= (regOne!34122 r2!6280) (regOne!34122 lt!2462688)) (= (regTwo!34122 r2!6280) (regTwo!34122 lt!2462688))) (= lambda!390610 lambda!390598))))

(declare-fun bs!1840214 () Bool)

(assert (= bs!1840214 (and b!6890373 b!6890263)))

(assert (=> bs!1840214 (not (= lambda!390610 lambda!390600))))

(declare-fun bs!1840216 () Bool)

(assert (= bs!1840216 (and b!6890373 d!2160934)))

(assert (=> bs!1840216 (not (= lambda!390610 lambda!390577))))

(declare-fun bs!1840217 () Bool)

(assert (= bs!1840217 (and b!6890373 d!2160888)))

(assert (=> bs!1840217 (not (= lambda!390610 lambda!390565))))

(declare-fun bs!1840219 () Bool)

(assert (= bs!1840219 (and b!6890373 b!6889727)))

(assert (=> bs!1840219 (not (= lambda!390610 lambda!390547))))

(declare-fun bs!1840220 () Bool)

(assert (= bs!1840220 (and b!6890373 b!6890371)))

(assert (=> bs!1840220 (not (= lambda!390610 lambda!390608))))

(declare-fun bs!1840223 () Bool)

(assert (= bs!1840223 (and b!6890373 b!6890265)))

(assert (=> bs!1840223 (= (and (= (_2!36981 lt!2462718) s!14361) (= (regOne!34122 r2!6280) (regOne!34122 lt!2462719)) (= (regTwo!34122 r2!6280) (regTwo!34122 lt!2462719))) (= lambda!390610 lambda!390602))))

(declare-fun bs!1840224 () Bool)

(assert (= bs!1840224 (and b!6890373 d!2160970)))

(assert (=> bs!1840224 (= (and (= (_2!36981 lt!2462718) (_1!36981 lt!2462711)) (= (regOne!34122 r2!6280) r1!6342) (= (regTwo!34122 r2!6280) r2!6280)) (= lambda!390610 lambda!390593))))

(assert (=> bs!1840224 (not (= lambda!390610 lambda!390592))))

(assert (=> bs!1840219 (= (and (= (_2!36981 lt!2462718) (_1!36981 lt!2462711)) (= (regOne!34122 r2!6280) r1!6342) (= (regTwo!34122 r2!6280) r2!6280)) (= lambda!390610 lambda!390548))))

(assert (=> bs!1840208 (= (and (= (_2!36981 lt!2462718) lt!2462693) (= (regOne!34122 r2!6280) r2!6280) (= (regTwo!34122 r2!6280) r3!135)) (= lambda!390610 lambda!390550))))

(declare-fun bs!1840227 () Bool)

(assert (= bs!1840227 (and b!6890373 b!6890224)))

(assert (=> bs!1840227 (not (= lambda!390610 lambda!390596))))

(declare-fun bs!1840229 () Bool)

(assert (= bs!1840229 (and b!6890373 b!6889718)))

(assert (=> bs!1840229 (= (and (= (_2!36981 lt!2462718) s!14361) (= (regOne!34122 r2!6280) lt!2462714) (= (regTwo!34122 r2!6280) r3!135)) (= lambda!390610 lambda!390546))))

(declare-fun bs!1840231 () Bool)

(assert (= bs!1840231 (and b!6890373 d!2161032)))

(assert (=> bs!1840231 (= (and (= (_2!36981 lt!2462718) s!14361) (= (regOne!34122 r2!6280) r1!6342) (= (regTwo!34122 r2!6280) lt!2462716)) (= lambda!390610 lambda!390605))))

(assert (=> bs!1840231 (not (= lambda!390610 lambda!390603))))

(declare-fun bs!1840233 () Bool)

(assert (= bs!1840233 (and b!6890373 b!6889717)))

(assert (=> bs!1840233 (not (= lambda!390610 lambda!390551))))

(declare-fun bs!1840234 () Bool)

(assert (= bs!1840234 (and b!6890373 d!2160918)))

(assert (=> bs!1840234 (not (= lambda!390610 lambda!390575))))

(declare-fun bs!1840236 () Bool)

(assert (= bs!1840236 (and b!6890373 b!6890093)))

(assert (=> bs!1840236 (= (and (= (_2!36981 lt!2462718) (_1!36981 lt!2462711)) (= (regOne!34122 r2!6280) (regOne!34122 lt!2462714)) (= (regTwo!34122 r2!6280) (regTwo!34122 lt!2462714))) (= lambda!390610 lambda!390588))))

(assert (=> bs!1840234 (= (and (= (_2!36981 lt!2462718) s!14361) (= (regOne!34122 r2!6280) lt!2462714) (= (regTwo!34122 r2!6280) r3!135)) (= lambda!390610 lambda!390576))))

(declare-fun bs!1840237 () Bool)

(assert (= bs!1840237 (and b!6890373 d!2160976)))

(assert (=> bs!1840237 (not (= lambda!390610 lambda!390595))))

(assert (=> bs!1840229 (not (= lambda!390610 lambda!390545))))

(declare-fun bs!1840238 () Bool)

(assert (= bs!1840238 (and b!6890373 b!6889709)))

(assert (=> bs!1840238 (= (and (= (_2!36981 lt!2462718) s!14361) (= (regOne!34122 r2!6280) r1!6342) (= (regTwo!34122 r2!6280) lt!2462716)) (= lambda!390610 lambda!390552))))

(assert (=> b!6890373 true))

(assert (=> b!6890373 true))

(declare-fun c!1281140 () Bool)

(declare-fun bm!626978 () Bool)

(declare-fun call!626984 () Bool)

(assert (=> bm!626978 (= call!626984 (Exists!3817 (ite c!1281140 lambda!390608 lambda!390610)))))

(declare-fun b!6890365 () Bool)

(declare-fun c!1281139 () Bool)

(assert (=> b!6890365 (= c!1281139 ((_ is Union!16805) r2!6280))))

(declare-fun e!4151072 () Bool)

(declare-fun e!4151073 () Bool)

(assert (=> b!6890365 (= e!4151072 e!4151073)))

(declare-fun bm!626979 () Bool)

(declare-fun call!626983 () Bool)

(assert (=> bm!626979 (= call!626983 (isEmpty!38695 (_2!36981 lt!2462718)))))

(declare-fun d!2161048 () Bool)

(declare-fun c!1281142 () Bool)

(assert (=> d!2161048 (= c!1281142 ((_ is EmptyExpr!16805) r2!6280))))

(declare-fun e!4151071 () Bool)

(assert (=> d!2161048 (= (matchRSpec!3868 r2!6280 (_2!36981 lt!2462718)) e!4151071)))

(declare-fun b!6890366 () Bool)

(declare-fun res!2809413 () Bool)

(declare-fun e!4151069 () Bool)

(assert (=> b!6890366 (=> res!2809413 e!4151069)))

(assert (=> b!6890366 (= res!2809413 call!626983)))

(declare-fun e!4151070 () Bool)

(assert (=> b!6890366 (= e!4151070 e!4151069)))

(declare-fun b!6890367 () Bool)

(declare-fun e!4151074 () Bool)

(assert (=> b!6890367 (= e!4151071 e!4151074)))

(declare-fun res!2809414 () Bool)

(assert (=> b!6890367 (= res!2809414 (not ((_ is EmptyLang!16805) r2!6280)))))

(assert (=> b!6890367 (=> (not res!2809414) (not e!4151074))))

(declare-fun b!6890368 () Bool)

(declare-fun c!1281141 () Bool)

(assert (=> b!6890368 (= c!1281141 ((_ is ElementMatch!16805) r2!6280))))

(assert (=> b!6890368 (= e!4151074 e!4151072)))

(declare-fun b!6890369 () Bool)

(assert (=> b!6890369 (= e!4151072 (= (_2!36981 lt!2462718) (Cons!66438 (c!1280991 r2!6280) Nil!66438)))))

(declare-fun b!6890370 () Bool)

(declare-fun e!4151068 () Bool)

(assert (=> b!6890370 (= e!4151068 (matchRSpec!3868 (regTwo!34123 r2!6280) (_2!36981 lt!2462718)))))

(assert (=> b!6890371 (= e!4151069 call!626984)))

(declare-fun b!6890372 () Bool)

(assert (=> b!6890372 (= e!4151073 e!4151070)))

(assert (=> b!6890372 (= c!1281140 ((_ is Star!16805) r2!6280))))

(assert (=> b!6890373 (= e!4151070 call!626984)))

(declare-fun b!6890374 () Bool)

(assert (=> b!6890374 (= e!4151071 call!626983)))

(declare-fun b!6890375 () Bool)

(assert (=> b!6890375 (= e!4151073 e!4151068)))

(declare-fun res!2809412 () Bool)

(assert (=> b!6890375 (= res!2809412 (matchRSpec!3868 (regOne!34123 r2!6280) (_2!36981 lt!2462718)))))

(assert (=> b!6890375 (=> res!2809412 e!4151068)))

(assert (= (and d!2161048 c!1281142) b!6890374))

(assert (= (and d!2161048 (not c!1281142)) b!6890367))

(assert (= (and b!6890367 res!2809414) b!6890368))

(assert (= (and b!6890368 c!1281141) b!6890369))

(assert (= (and b!6890368 (not c!1281141)) b!6890365))

(assert (= (and b!6890365 c!1281139) b!6890375))

(assert (= (and b!6890365 (not c!1281139)) b!6890372))

(assert (= (and b!6890375 (not res!2809412)) b!6890370))

(assert (= (and b!6890372 c!1281140) b!6890366))

(assert (= (and b!6890372 (not c!1281140)) b!6890373))

(assert (= (and b!6890366 (not res!2809413)) b!6890371))

(assert (= (or b!6890371 b!6890373) bm!626978))

(assert (= (or b!6890374 b!6890366) bm!626979))

(declare-fun m!7612680 () Bool)

(assert (=> bm!626978 m!7612680))

(assert (=> bm!626979 m!7612632))

(declare-fun m!7612682 () Bool)

(assert (=> b!6890370 m!7612682))

(declare-fun m!7612684 () Bool)

(assert (=> b!6890375 m!7612684))

(assert (=> b!6889710 d!2161048))

(declare-fun bs!1840242 () Bool)

(declare-fun b!6890393 () Bool)

(assert (= bs!1840242 (and b!6890393 b!6889711)))

(declare-fun lambda!390612 () Int)

(assert (=> bs!1840242 (not (= lambda!390612 lambda!390549))))

(declare-fun bs!1840245 () Bool)

(assert (= bs!1840245 (and b!6890393 b!6890091)))

(assert (=> bs!1840245 (= (and (= (_1!36981 lt!2462718) (_1!36981 lt!2462711)) (= (reg!17134 r1!6342) (reg!17134 lt!2462714)) (= r1!6342 lt!2462714)) (= lambda!390612 lambda!390587))))

(declare-fun bs!1840247 () Bool)

(assert (= bs!1840247 (and b!6890393 b!6890226)))

(assert (=> bs!1840247 (not (= lambda!390612 lambda!390598))))

(declare-fun bs!1840249 () Bool)

(assert (= bs!1840249 (and b!6890393 b!6890263)))

(assert (=> bs!1840249 (= (and (= (_1!36981 lt!2462718) s!14361) (= (reg!17134 r1!6342) (reg!17134 lt!2462719)) (= r1!6342 lt!2462719)) (= lambda!390612 lambda!390600))))

(declare-fun bs!1840251 () Bool)

(assert (= bs!1840251 (and b!6890393 d!2160934)))

(assert (=> bs!1840251 (not (= lambda!390612 lambda!390577))))

(declare-fun bs!1840253 () Bool)

(assert (= bs!1840253 (and b!6890393 b!6890373)))

(assert (=> bs!1840253 (not (= lambda!390612 lambda!390610))))

(declare-fun bs!1840255 () Bool)

(assert (= bs!1840255 (and b!6890393 d!2160888)))

(assert (=> bs!1840255 (not (= lambda!390612 lambda!390565))))

(declare-fun bs!1840257 () Bool)

(assert (= bs!1840257 (and b!6890393 b!6889727)))

(assert (=> bs!1840257 (not (= lambda!390612 lambda!390547))))

(declare-fun bs!1840259 () Bool)

(assert (= bs!1840259 (and b!6890393 b!6890371)))

(assert (=> bs!1840259 (= (and (= (_1!36981 lt!2462718) (_2!36981 lt!2462718)) (= (reg!17134 r1!6342) (reg!17134 r2!6280)) (= r1!6342 r2!6280)) (= lambda!390612 lambda!390608))))

(declare-fun bs!1840261 () Bool)

(assert (= bs!1840261 (and b!6890393 b!6890265)))

(assert (=> bs!1840261 (not (= lambda!390612 lambda!390602))))

(declare-fun bs!1840263 () Bool)

(assert (= bs!1840263 (and b!6890393 d!2160970)))

(assert (=> bs!1840263 (not (= lambda!390612 lambda!390593))))

(assert (=> bs!1840263 (not (= lambda!390612 lambda!390592))))

(assert (=> bs!1840257 (not (= lambda!390612 lambda!390548))))

(assert (=> bs!1840242 (not (= lambda!390612 lambda!390550))))

(declare-fun bs!1840266 () Bool)

(assert (= bs!1840266 (and b!6890393 b!6890224)))

(assert (=> bs!1840266 (= (and (= (_1!36981 lt!2462718) s!14361) (= (reg!17134 r1!6342) (reg!17134 lt!2462688)) (= r1!6342 lt!2462688)) (= lambda!390612 lambda!390596))))

(declare-fun bs!1840268 () Bool)

(assert (= bs!1840268 (and b!6890393 b!6889718)))

(assert (=> bs!1840268 (not (= lambda!390612 lambda!390546))))

(declare-fun bs!1840269 () Bool)

(assert (= bs!1840269 (and b!6890393 d!2161032)))

(assert (=> bs!1840269 (not (= lambda!390612 lambda!390605))))

(assert (=> bs!1840269 (not (= lambda!390612 lambda!390603))))

(declare-fun bs!1840272 () Bool)

(assert (= bs!1840272 (and b!6890393 b!6889717)))

(assert (=> bs!1840272 (not (= lambda!390612 lambda!390551))))

(declare-fun bs!1840273 () Bool)

(assert (= bs!1840273 (and b!6890393 d!2160918)))

(assert (=> bs!1840273 (not (= lambda!390612 lambda!390575))))

(declare-fun bs!1840275 () Bool)

(assert (= bs!1840275 (and b!6890393 b!6890093)))

(assert (=> bs!1840275 (not (= lambda!390612 lambda!390588))))

(assert (=> bs!1840273 (not (= lambda!390612 lambda!390576))))

(declare-fun bs!1840277 () Bool)

(assert (= bs!1840277 (and b!6890393 d!2160976)))

(assert (=> bs!1840277 (not (= lambda!390612 lambda!390595))))

(assert (=> bs!1840268 (not (= lambda!390612 lambda!390545))))

(declare-fun bs!1840279 () Bool)

(assert (= bs!1840279 (and b!6890393 b!6889709)))

(assert (=> bs!1840279 (not (= lambda!390612 lambda!390552))))

(assert (=> b!6890393 true))

(assert (=> b!6890393 true))

(declare-fun bs!1840281 () Bool)

(declare-fun b!6890395 () Bool)

(assert (= bs!1840281 (and b!6890395 b!6889711)))

(declare-fun lambda!390613 () Int)

(assert (=> bs!1840281 (not (= lambda!390613 lambda!390549))))

(declare-fun bs!1840282 () Bool)

(assert (= bs!1840282 (and b!6890395 b!6890091)))

(assert (=> bs!1840282 (not (= lambda!390613 lambda!390587))))

(declare-fun bs!1840285 () Bool)

(assert (= bs!1840285 (and b!6890395 b!6890226)))

(assert (=> bs!1840285 (= (and (= (_1!36981 lt!2462718) s!14361) (= (regOne!34122 r1!6342) (regOne!34122 lt!2462688)) (= (regTwo!34122 r1!6342) (regTwo!34122 lt!2462688))) (= lambda!390613 lambda!390598))))

(declare-fun bs!1840287 () Bool)

(assert (= bs!1840287 (and b!6890395 b!6890263)))

(assert (=> bs!1840287 (not (= lambda!390613 lambda!390600))))

(declare-fun bs!1840289 () Bool)

(assert (= bs!1840289 (and b!6890395 d!2160934)))

(assert (=> bs!1840289 (not (= lambda!390613 lambda!390577))))

(declare-fun bs!1840291 () Bool)

(assert (= bs!1840291 (and b!6890395 b!6890373)))

(assert (=> bs!1840291 (= (and (= (_1!36981 lt!2462718) (_2!36981 lt!2462718)) (= (regOne!34122 r1!6342) (regOne!34122 r2!6280)) (= (regTwo!34122 r1!6342) (regTwo!34122 r2!6280))) (= lambda!390613 lambda!390610))))

(declare-fun bs!1840293 () Bool)

(assert (= bs!1840293 (and b!6890395 d!2160888)))

(assert (=> bs!1840293 (not (= lambda!390613 lambda!390565))))

(declare-fun bs!1840295 () Bool)

(assert (= bs!1840295 (and b!6890395 b!6889727)))

(assert (=> bs!1840295 (not (= lambda!390613 lambda!390547))))

(declare-fun bs!1840296 () Bool)

(assert (= bs!1840296 (and b!6890395 b!6890371)))

(assert (=> bs!1840296 (not (= lambda!390613 lambda!390608))))

(declare-fun bs!1840298 () Bool)

(assert (= bs!1840298 (and b!6890395 b!6890265)))

(assert (=> bs!1840298 (= (and (= (_1!36981 lt!2462718) s!14361) (= (regOne!34122 r1!6342) (regOne!34122 lt!2462719)) (= (regTwo!34122 r1!6342) (regTwo!34122 lt!2462719))) (= lambda!390613 lambda!390602))))

(declare-fun bs!1840300 () Bool)

(assert (= bs!1840300 (and b!6890395 d!2160970)))

(assert (=> bs!1840300 (= (and (= (_1!36981 lt!2462718) (_1!36981 lt!2462711)) (= (regOne!34122 r1!6342) r1!6342) (= (regTwo!34122 r1!6342) r2!6280)) (= lambda!390613 lambda!390593))))

(declare-fun bs!1840302 () Bool)

(assert (= bs!1840302 (and b!6890395 b!6890393)))

(assert (=> bs!1840302 (not (= lambda!390613 lambda!390612))))

(assert (=> bs!1840300 (not (= lambda!390613 lambda!390592))))

(assert (=> bs!1840295 (= (and (= (_1!36981 lt!2462718) (_1!36981 lt!2462711)) (= (regOne!34122 r1!6342) r1!6342) (= (regTwo!34122 r1!6342) r2!6280)) (= lambda!390613 lambda!390548))))

(assert (=> bs!1840281 (= (and (= (_1!36981 lt!2462718) lt!2462693) (= (regOne!34122 r1!6342) r2!6280) (= (regTwo!34122 r1!6342) r3!135)) (= lambda!390613 lambda!390550))))

(declare-fun bs!1840306 () Bool)

(assert (= bs!1840306 (and b!6890395 b!6890224)))

(assert (=> bs!1840306 (not (= lambda!390613 lambda!390596))))

(declare-fun bs!1840308 () Bool)

(assert (= bs!1840308 (and b!6890395 b!6889718)))

(assert (=> bs!1840308 (= (and (= (_1!36981 lt!2462718) s!14361) (= (regOne!34122 r1!6342) lt!2462714) (= (regTwo!34122 r1!6342) r3!135)) (= lambda!390613 lambda!390546))))

(declare-fun bs!1840310 () Bool)

(assert (= bs!1840310 (and b!6890395 d!2161032)))

(assert (=> bs!1840310 (= (and (= (_1!36981 lt!2462718) s!14361) (= (regOne!34122 r1!6342) r1!6342) (= (regTwo!34122 r1!6342) lt!2462716)) (= lambda!390613 lambda!390605))))

(assert (=> bs!1840310 (not (= lambda!390613 lambda!390603))))

(declare-fun bs!1840311 () Bool)

(assert (= bs!1840311 (and b!6890395 b!6889717)))

(assert (=> bs!1840311 (not (= lambda!390613 lambda!390551))))

(declare-fun bs!1840313 () Bool)

(assert (= bs!1840313 (and b!6890395 d!2160918)))

(assert (=> bs!1840313 (not (= lambda!390613 lambda!390575))))

(declare-fun bs!1840315 () Bool)

(assert (= bs!1840315 (and b!6890395 b!6890093)))

(assert (=> bs!1840315 (= (and (= (_1!36981 lt!2462718) (_1!36981 lt!2462711)) (= (regOne!34122 r1!6342) (regOne!34122 lt!2462714)) (= (regTwo!34122 r1!6342) (regTwo!34122 lt!2462714))) (= lambda!390613 lambda!390588))))

(assert (=> bs!1840313 (= (and (= (_1!36981 lt!2462718) s!14361) (= (regOne!34122 r1!6342) lt!2462714) (= (regTwo!34122 r1!6342) r3!135)) (= lambda!390613 lambda!390576))))

(declare-fun bs!1840317 () Bool)

(assert (= bs!1840317 (and b!6890395 d!2160976)))

(assert (=> bs!1840317 (not (= lambda!390613 lambda!390595))))

(assert (=> bs!1840308 (not (= lambda!390613 lambda!390545))))

(declare-fun bs!1840319 () Bool)

(assert (= bs!1840319 (and b!6890395 b!6889709)))

(assert (=> bs!1840319 (= (and (= (_1!36981 lt!2462718) s!14361) (= (regOne!34122 r1!6342) r1!6342) (= (regTwo!34122 r1!6342) lt!2462716)) (= lambda!390613 lambda!390552))))

(assert (=> b!6890395 true))

(assert (=> b!6890395 true))

(declare-fun bm!626982 () Bool)

(declare-fun c!1281148 () Bool)

(declare-fun call!626988 () Bool)

(assert (=> bm!626982 (= call!626988 (Exists!3817 (ite c!1281148 lambda!390612 lambda!390613)))))

(declare-fun b!6890387 () Bool)

(declare-fun c!1281147 () Bool)

(assert (=> b!6890387 (= c!1281147 ((_ is Union!16805) r1!6342))))

(declare-fun e!4151086 () Bool)

(declare-fun e!4151087 () Bool)

(assert (=> b!6890387 (= e!4151086 e!4151087)))

(declare-fun bm!626983 () Bool)

(declare-fun call!626987 () Bool)

(assert (=> bm!626983 (= call!626987 (isEmpty!38695 (_1!36981 lt!2462718)))))

(declare-fun d!2161052 () Bool)

(declare-fun c!1281150 () Bool)

(assert (=> d!2161052 (= c!1281150 ((_ is EmptyExpr!16805) r1!6342))))

(declare-fun e!4151085 () Bool)

(assert (=> d!2161052 (= (matchRSpec!3868 r1!6342 (_1!36981 lt!2462718)) e!4151085)))

(declare-fun b!6890388 () Bool)

(declare-fun res!2809419 () Bool)

(declare-fun e!4151083 () Bool)

(assert (=> b!6890388 (=> res!2809419 e!4151083)))

(assert (=> b!6890388 (= res!2809419 call!626987)))

(declare-fun e!4151084 () Bool)

(assert (=> b!6890388 (= e!4151084 e!4151083)))

(declare-fun b!6890389 () Bool)

(declare-fun e!4151088 () Bool)

(assert (=> b!6890389 (= e!4151085 e!4151088)))

(declare-fun res!2809420 () Bool)

(assert (=> b!6890389 (= res!2809420 (not ((_ is EmptyLang!16805) r1!6342)))))

(assert (=> b!6890389 (=> (not res!2809420) (not e!4151088))))

(declare-fun b!6890390 () Bool)

(declare-fun c!1281149 () Bool)

(assert (=> b!6890390 (= c!1281149 ((_ is ElementMatch!16805) r1!6342))))

(assert (=> b!6890390 (= e!4151088 e!4151086)))

(declare-fun b!6890391 () Bool)

(assert (=> b!6890391 (= e!4151086 (= (_1!36981 lt!2462718) (Cons!66438 (c!1280991 r1!6342) Nil!66438)))))

(declare-fun b!6890392 () Bool)

(declare-fun e!4151082 () Bool)

(assert (=> b!6890392 (= e!4151082 (matchRSpec!3868 (regTwo!34123 r1!6342) (_1!36981 lt!2462718)))))

(assert (=> b!6890393 (= e!4151083 call!626988)))

(declare-fun b!6890394 () Bool)

(assert (=> b!6890394 (= e!4151087 e!4151084)))

(assert (=> b!6890394 (= c!1281148 ((_ is Star!16805) r1!6342))))

(assert (=> b!6890395 (= e!4151084 call!626988)))

(declare-fun b!6890396 () Bool)

(assert (=> b!6890396 (= e!4151085 call!626987)))

(declare-fun b!6890397 () Bool)

(assert (=> b!6890397 (= e!4151087 e!4151082)))

(declare-fun res!2809418 () Bool)

(assert (=> b!6890397 (= res!2809418 (matchRSpec!3868 (regOne!34123 r1!6342) (_1!36981 lt!2462718)))))

(assert (=> b!6890397 (=> res!2809418 e!4151082)))

(assert (= (and d!2161052 c!1281150) b!6890396))

(assert (= (and d!2161052 (not c!1281150)) b!6890389))

(assert (= (and b!6890389 res!2809420) b!6890390))

(assert (= (and b!6890390 c!1281149) b!6890391))

(assert (= (and b!6890390 (not c!1281149)) b!6890387))

(assert (= (and b!6890387 c!1281147) b!6890397))

(assert (= (and b!6890387 (not c!1281147)) b!6890394))

(assert (= (and b!6890397 (not res!2809418)) b!6890392))

(assert (= (and b!6890394 c!1281148) b!6890388))

(assert (= (and b!6890394 (not c!1281148)) b!6890395))

(assert (= (and b!6890388 (not res!2809419)) b!6890393))

(assert (= (or b!6890393 b!6890395) bm!626982))

(assert (= (or b!6890396 b!6890388) bm!626983))

(declare-fun m!7612686 () Bool)

(assert (=> bm!626982 m!7612686))

(assert (=> bm!626983 m!7612436))

(declare-fun m!7612688 () Bool)

(assert (=> b!6890392 m!7612688))

(declare-fun m!7612690 () Bool)

(assert (=> b!6890397 m!7612690))

(assert (=> b!6889710 d!2161052))

(declare-fun d!2161054 () Bool)

(assert (=> d!2161054 (= (matchR!8950 r1!6342 (_1!36981 lt!2462718)) (matchRSpec!3868 r1!6342 (_1!36981 lt!2462718)))))

(declare-fun lt!2462820 () Unit!160330)

(assert (=> d!2161054 (= lt!2462820 (choose!51314 r1!6342 (_1!36981 lt!2462718)))))

(assert (=> d!2161054 (validRegex!8513 r1!6342)))

(assert (=> d!2161054 (= (mainMatchTheorem!3868 r1!6342 (_1!36981 lt!2462718)) lt!2462820)))

(declare-fun bs!1840323 () Bool)

(assert (= bs!1840323 d!2161054))

(assert (=> bs!1840323 m!7612040))

(assert (=> bs!1840323 m!7612032))

(declare-fun m!7612692 () Bool)

(assert (=> bs!1840323 m!7612692))

(assert (=> bs!1840323 m!7612026))

(assert (=> b!6889710 d!2161054))

(declare-fun d!2161056 () Bool)

(declare-fun e!4151089 () Bool)

(assert (=> d!2161056 e!4151089))

(declare-fun res!2809421 () Bool)

(assert (=> d!2161056 (=> (not res!2809421) (not e!4151089))))

(declare-fun lt!2462821 () List!66562)

(assert (=> d!2161056 (= res!2809421 (= (content!13050 lt!2462821) ((_ map or) (content!13050 (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718))) (content!13050 (_2!36981 lt!2462711)))))))

(declare-fun e!4151090 () List!66562)

(assert (=> d!2161056 (= lt!2462821 e!4151090)))

(declare-fun c!1281151 () Bool)

(assert (=> d!2161056 (= c!1281151 ((_ is Nil!66438) (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718))))))

(assert (=> d!2161056 (= (++!14884 (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718)) (_2!36981 lt!2462711)) lt!2462821)))

(declare-fun b!6890398 () Bool)

(assert (=> b!6890398 (= e!4151090 (_2!36981 lt!2462711))))

(declare-fun b!6890401 () Bool)

(assert (=> b!6890401 (= e!4151089 (or (not (= (_2!36981 lt!2462711) Nil!66438)) (= lt!2462821 (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718)))))))

(declare-fun b!6890399 () Bool)

(assert (=> b!6890399 (= e!4151090 (Cons!66438 (h!72886 (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718))) (++!14884 (t!380305 (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718))) (_2!36981 lt!2462711))))))

(declare-fun b!6890400 () Bool)

(declare-fun res!2809422 () Bool)

(assert (=> b!6890400 (=> (not res!2809422) (not e!4151089))))

(assert (=> b!6890400 (= res!2809422 (= (size!40747 lt!2462821) (+ (size!40747 (++!14884 (_1!36981 lt!2462718) (_2!36981 lt!2462718))) (size!40747 (_2!36981 lt!2462711)))))))

(assert (= (and d!2161056 c!1281151) b!6890398))

(assert (= (and d!2161056 (not c!1281151)) b!6890399))

(assert (= (and d!2161056 res!2809421) b!6890400))

(assert (= (and b!6890400 res!2809422) b!6890401))

(declare-fun m!7612700 () Bool)

(assert (=> d!2161056 m!7612700))

(assert (=> d!2161056 m!7612036))

(declare-fun m!7612702 () Bool)

(assert (=> d!2161056 m!7612702))

(declare-fun m!7612704 () Bool)

(assert (=> d!2161056 m!7612704))

(declare-fun m!7612706 () Bool)

(assert (=> b!6890399 m!7612706))

(declare-fun m!7612708 () Bool)

(assert (=> b!6890400 m!7612708))

(assert (=> b!6890400 m!7612036))

(declare-fun m!7612710 () Bool)

(assert (=> b!6890400 m!7612710))

(declare-fun m!7612712 () Bool)

(assert (=> b!6890400 m!7612712))

(assert (=> b!6889710 d!2161056))

(declare-fun d!2161060 () Bool)

(assert (=> d!2161060 (= (matchR!8950 r2!6280 (_2!36981 lt!2462718)) (matchRSpec!3868 r2!6280 (_2!36981 lt!2462718)))))

(declare-fun lt!2462823 () Unit!160330)

(assert (=> d!2161060 (= lt!2462823 (choose!51314 r2!6280 (_2!36981 lt!2462718)))))

(assert (=> d!2161060 (validRegex!8513 r2!6280)))

(assert (=> d!2161060 (= (mainMatchTheorem!3868 r2!6280 (_2!36981 lt!2462718)) lt!2462823)))

(declare-fun bs!1840324 () Bool)

(assert (= bs!1840324 d!2161060))

(assert (=> bs!1840324 m!7612012))

(assert (=> bs!1840324 m!7612030))

(declare-fun m!7612724 () Bool)

(assert (=> bs!1840324 m!7612724))

(assert (=> bs!1840324 m!7612058))

(assert (=> b!6889710 d!2161060))

(declare-fun bs!1840326 () Bool)

(declare-fun b!6890412 () Bool)

(assert (= bs!1840326 (and b!6890412 b!6889711)))

(declare-fun lambda!390615 () Int)

(assert (=> bs!1840326 (not (= lambda!390615 lambda!390549))))

(declare-fun bs!1840327 () Bool)

(assert (= bs!1840327 (and b!6890412 b!6890091)))

(assert (=> bs!1840327 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= (reg!17134 lt!2462716) (reg!17134 lt!2462714)) (= lt!2462716 lt!2462714)) (= lambda!390615 lambda!390587))))

(declare-fun bs!1840328 () Bool)

(assert (= bs!1840328 (and b!6890412 b!6890226)))

(assert (=> bs!1840328 (not (= lambda!390615 lambda!390598))))

(declare-fun bs!1840329 () Bool)

(assert (= bs!1840329 (and b!6890412 b!6890263)))

(assert (=> bs!1840329 (= (and (= lt!2462693 s!14361) (= (reg!17134 lt!2462716) (reg!17134 lt!2462719)) (= lt!2462716 lt!2462719)) (= lambda!390615 lambda!390600))))

(declare-fun bs!1840330 () Bool)

(assert (= bs!1840330 (and b!6890412 d!2160934)))

(assert (=> bs!1840330 (not (= lambda!390615 lambda!390577))))

(declare-fun bs!1840331 () Bool)

(assert (= bs!1840331 (and b!6890412 b!6890395)))

(assert (=> bs!1840331 (not (= lambda!390615 lambda!390613))))

(declare-fun bs!1840332 () Bool)

(assert (= bs!1840332 (and b!6890412 b!6890373)))

(assert (=> bs!1840332 (not (= lambda!390615 lambda!390610))))

(declare-fun bs!1840333 () Bool)

(assert (= bs!1840333 (and b!6890412 d!2160888)))

(assert (=> bs!1840333 (not (= lambda!390615 lambda!390565))))

(declare-fun bs!1840334 () Bool)

(assert (= bs!1840334 (and b!6890412 b!6889727)))

(assert (=> bs!1840334 (not (= lambda!390615 lambda!390547))))

(declare-fun bs!1840335 () Bool)

(assert (= bs!1840335 (and b!6890412 b!6890371)))

(assert (=> bs!1840335 (= (and (= lt!2462693 (_2!36981 lt!2462718)) (= (reg!17134 lt!2462716) (reg!17134 r2!6280)) (= lt!2462716 r2!6280)) (= lambda!390615 lambda!390608))))

(declare-fun bs!1840336 () Bool)

(assert (= bs!1840336 (and b!6890412 b!6890265)))

(assert (=> bs!1840336 (not (= lambda!390615 lambda!390602))))

(declare-fun bs!1840337 () Bool)

(assert (= bs!1840337 (and b!6890412 d!2160970)))

(assert (=> bs!1840337 (not (= lambda!390615 lambda!390593))))

(declare-fun bs!1840338 () Bool)

(assert (= bs!1840338 (and b!6890412 b!6890393)))

(assert (=> bs!1840338 (= (and (= lt!2462693 (_1!36981 lt!2462718)) (= (reg!17134 lt!2462716) (reg!17134 r1!6342)) (= lt!2462716 r1!6342)) (= lambda!390615 lambda!390612))))

(assert (=> bs!1840337 (not (= lambda!390615 lambda!390592))))

(assert (=> bs!1840334 (not (= lambda!390615 lambda!390548))))

(assert (=> bs!1840326 (not (= lambda!390615 lambda!390550))))

(declare-fun bs!1840339 () Bool)

(assert (= bs!1840339 (and b!6890412 b!6890224)))

(assert (=> bs!1840339 (= (and (= lt!2462693 s!14361) (= (reg!17134 lt!2462716) (reg!17134 lt!2462688)) (= lt!2462716 lt!2462688)) (= lambda!390615 lambda!390596))))

(declare-fun bs!1840340 () Bool)

(assert (= bs!1840340 (and b!6890412 b!6889718)))

(assert (=> bs!1840340 (not (= lambda!390615 lambda!390546))))

(declare-fun bs!1840341 () Bool)

(assert (= bs!1840341 (and b!6890412 d!2161032)))

(assert (=> bs!1840341 (not (= lambda!390615 lambda!390605))))

(assert (=> bs!1840341 (not (= lambda!390615 lambda!390603))))

(declare-fun bs!1840342 () Bool)

(assert (= bs!1840342 (and b!6890412 b!6889717)))

(assert (=> bs!1840342 (not (= lambda!390615 lambda!390551))))

(declare-fun bs!1840343 () Bool)

(assert (= bs!1840343 (and b!6890412 d!2160918)))

(assert (=> bs!1840343 (not (= lambda!390615 lambda!390575))))

(declare-fun bs!1840344 () Bool)

(assert (= bs!1840344 (and b!6890412 b!6890093)))

(assert (=> bs!1840344 (not (= lambda!390615 lambda!390588))))

(assert (=> bs!1840343 (not (= lambda!390615 lambda!390576))))

(declare-fun bs!1840345 () Bool)

(assert (= bs!1840345 (and b!6890412 d!2160976)))

(assert (=> bs!1840345 (not (= lambda!390615 lambda!390595))))

(assert (=> bs!1840340 (not (= lambda!390615 lambda!390545))))

(declare-fun bs!1840346 () Bool)

(assert (= bs!1840346 (and b!6890412 b!6889709)))

(assert (=> bs!1840346 (not (= lambda!390615 lambda!390552))))

(assert (=> b!6890412 true))

(assert (=> b!6890412 true))

(declare-fun bs!1840348 () Bool)

(declare-fun b!6890414 () Bool)

(assert (= bs!1840348 (and b!6890414 b!6889711)))

(declare-fun lambda!390616 () Int)

(assert (=> bs!1840348 (not (= lambda!390616 lambda!390549))))

(declare-fun bs!1840349 () Bool)

(assert (= bs!1840349 (and b!6890414 b!6890091)))

(assert (=> bs!1840349 (not (= lambda!390616 lambda!390587))))

(declare-fun bs!1840350 () Bool)

(assert (= bs!1840350 (and b!6890414 b!6890226)))

(assert (=> bs!1840350 (= (and (= lt!2462693 s!14361) (= (regOne!34122 lt!2462716) (regOne!34122 lt!2462688)) (= (regTwo!34122 lt!2462716) (regTwo!34122 lt!2462688))) (= lambda!390616 lambda!390598))))

(declare-fun bs!1840351 () Bool)

(assert (= bs!1840351 (and b!6890414 b!6890263)))

(assert (=> bs!1840351 (not (= lambda!390616 lambda!390600))))

(declare-fun bs!1840352 () Bool)

(assert (= bs!1840352 (and b!6890414 d!2160934)))

(assert (=> bs!1840352 (not (= lambda!390616 lambda!390577))))

(declare-fun bs!1840353 () Bool)

(assert (= bs!1840353 (and b!6890414 b!6890395)))

(assert (=> bs!1840353 (= (and (= lt!2462693 (_1!36981 lt!2462718)) (= (regOne!34122 lt!2462716) (regOne!34122 r1!6342)) (= (regTwo!34122 lt!2462716) (regTwo!34122 r1!6342))) (= lambda!390616 lambda!390613))))

(declare-fun bs!1840355 () Bool)

(assert (= bs!1840355 (and b!6890414 b!6890373)))

(assert (=> bs!1840355 (= (and (= lt!2462693 (_2!36981 lt!2462718)) (= (regOne!34122 lt!2462716) (regOne!34122 r2!6280)) (= (regTwo!34122 lt!2462716) (regTwo!34122 r2!6280))) (= lambda!390616 lambda!390610))))

(declare-fun bs!1840356 () Bool)

(assert (= bs!1840356 (and b!6890414 d!2160888)))

(assert (=> bs!1840356 (not (= lambda!390616 lambda!390565))))

(declare-fun bs!1840358 () Bool)

(assert (= bs!1840358 (and b!6890414 b!6889727)))

(assert (=> bs!1840358 (not (= lambda!390616 lambda!390547))))

(declare-fun bs!1840360 () Bool)

(assert (= bs!1840360 (and b!6890414 b!6890371)))

(assert (=> bs!1840360 (not (= lambda!390616 lambda!390608))))

(declare-fun bs!1840362 () Bool)

(assert (= bs!1840362 (and b!6890414 b!6890265)))

(assert (=> bs!1840362 (= (and (= lt!2462693 s!14361) (= (regOne!34122 lt!2462716) (regOne!34122 lt!2462719)) (= (regTwo!34122 lt!2462716) (regTwo!34122 lt!2462719))) (= lambda!390616 lambda!390602))))

(declare-fun bs!1840364 () Bool)

(assert (= bs!1840364 (and b!6890414 d!2160970)))

(assert (=> bs!1840364 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462716) r1!6342) (= (regTwo!34122 lt!2462716) r2!6280)) (= lambda!390616 lambda!390593))))

(declare-fun bs!1840366 () Bool)

(assert (= bs!1840366 (and b!6890414 b!6890393)))

(assert (=> bs!1840366 (not (= lambda!390616 lambda!390612))))

(assert (=> bs!1840364 (not (= lambda!390616 lambda!390592))))

(assert (=> bs!1840358 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462716) r1!6342) (= (regTwo!34122 lt!2462716) r2!6280)) (= lambda!390616 lambda!390548))))

(assert (=> bs!1840348 (= (and (= (regOne!34122 lt!2462716) r2!6280) (= (regTwo!34122 lt!2462716) r3!135)) (= lambda!390616 lambda!390550))))

(declare-fun bs!1840371 () Bool)

(assert (= bs!1840371 (and b!6890414 b!6890224)))

(assert (=> bs!1840371 (not (= lambda!390616 lambda!390596))))

(declare-fun bs!1840373 () Bool)

(assert (= bs!1840373 (and b!6890414 b!6889718)))

(assert (=> bs!1840373 (= (and (= lt!2462693 s!14361) (= (regOne!34122 lt!2462716) lt!2462714) (= (regTwo!34122 lt!2462716) r3!135)) (= lambda!390616 lambda!390546))))

(declare-fun bs!1840375 () Bool)

(assert (= bs!1840375 (and b!6890414 b!6890412)))

(assert (=> bs!1840375 (not (= lambda!390616 lambda!390615))))

(declare-fun bs!1840377 () Bool)

(assert (= bs!1840377 (and b!6890414 d!2161032)))

(assert (=> bs!1840377 (= (and (= lt!2462693 s!14361) (= (regOne!34122 lt!2462716) r1!6342) (= (regTwo!34122 lt!2462716) lt!2462716)) (= lambda!390616 lambda!390605))))

(assert (=> bs!1840377 (not (= lambda!390616 lambda!390603))))

(declare-fun bs!1840379 () Bool)

(assert (= bs!1840379 (and b!6890414 b!6889717)))

(assert (=> bs!1840379 (not (= lambda!390616 lambda!390551))))

(declare-fun bs!1840381 () Bool)

(assert (= bs!1840381 (and b!6890414 d!2160918)))

(assert (=> bs!1840381 (not (= lambda!390616 lambda!390575))))

(declare-fun bs!1840383 () Bool)

(assert (= bs!1840383 (and b!6890414 b!6890093)))

(assert (=> bs!1840383 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= (regOne!34122 lt!2462716) (regOne!34122 lt!2462714)) (= (regTwo!34122 lt!2462716) (regTwo!34122 lt!2462714))) (= lambda!390616 lambda!390588))))

(assert (=> bs!1840381 (= (and (= lt!2462693 s!14361) (= (regOne!34122 lt!2462716) lt!2462714) (= (regTwo!34122 lt!2462716) r3!135)) (= lambda!390616 lambda!390576))))

(declare-fun bs!1840385 () Bool)

(assert (= bs!1840385 (and b!6890414 d!2160976)))

(assert (=> bs!1840385 (not (= lambda!390616 lambda!390595))))

(assert (=> bs!1840373 (not (= lambda!390616 lambda!390545))))

(declare-fun bs!1840386 () Bool)

(assert (= bs!1840386 (and b!6890414 b!6889709)))

(assert (=> bs!1840386 (= (and (= lt!2462693 s!14361) (= (regOne!34122 lt!2462716) r1!6342) (= (regTwo!34122 lt!2462716) lt!2462716)) (= lambda!390616 lambda!390552))))

(assert (=> b!6890414 true))

(assert (=> b!6890414 true))

(declare-fun call!626990 () Bool)

(declare-fun bm!626984 () Bool)

(declare-fun c!1281154 () Bool)

(assert (=> bm!626984 (= call!626990 (Exists!3817 (ite c!1281154 lambda!390615 lambda!390616)))))

(declare-fun b!6890406 () Bool)

(declare-fun c!1281153 () Bool)

(assert (=> b!6890406 (= c!1281153 ((_ is Union!16805) lt!2462716))))

(declare-fun e!4151097 () Bool)

(declare-fun e!4151098 () Bool)

(assert (=> b!6890406 (= e!4151097 e!4151098)))

(declare-fun bm!626985 () Bool)

(declare-fun call!626989 () Bool)

(assert (=> bm!626985 (= call!626989 (isEmpty!38695 lt!2462693))))

(declare-fun d!2161064 () Bool)

(declare-fun c!1281156 () Bool)

(assert (=> d!2161064 (= c!1281156 ((_ is EmptyExpr!16805) lt!2462716))))

(declare-fun e!4151096 () Bool)

(assert (=> d!2161064 (= (matchRSpec!3868 lt!2462716 lt!2462693) e!4151096)))

(declare-fun b!6890407 () Bool)

(declare-fun res!2809426 () Bool)

(declare-fun e!4151094 () Bool)

(assert (=> b!6890407 (=> res!2809426 e!4151094)))

(assert (=> b!6890407 (= res!2809426 call!626989)))

(declare-fun e!4151095 () Bool)

(assert (=> b!6890407 (= e!4151095 e!4151094)))

(declare-fun b!6890408 () Bool)

(declare-fun e!4151099 () Bool)

(assert (=> b!6890408 (= e!4151096 e!4151099)))

(declare-fun res!2809427 () Bool)

(assert (=> b!6890408 (= res!2809427 (not ((_ is EmptyLang!16805) lt!2462716)))))

(assert (=> b!6890408 (=> (not res!2809427) (not e!4151099))))

(declare-fun b!6890409 () Bool)

(declare-fun c!1281155 () Bool)

(assert (=> b!6890409 (= c!1281155 ((_ is ElementMatch!16805) lt!2462716))))

(assert (=> b!6890409 (= e!4151099 e!4151097)))

(declare-fun b!6890410 () Bool)

(assert (=> b!6890410 (= e!4151097 (= lt!2462693 (Cons!66438 (c!1280991 lt!2462716) Nil!66438)))))

(declare-fun b!6890411 () Bool)

(declare-fun e!4151093 () Bool)

(assert (=> b!6890411 (= e!4151093 (matchRSpec!3868 (regTwo!34123 lt!2462716) lt!2462693))))

(assert (=> b!6890412 (= e!4151094 call!626990)))

(declare-fun b!6890413 () Bool)

(assert (=> b!6890413 (= e!4151098 e!4151095)))

(assert (=> b!6890413 (= c!1281154 ((_ is Star!16805) lt!2462716))))

(assert (=> b!6890414 (= e!4151095 call!626990)))

(declare-fun b!6890415 () Bool)

(assert (=> b!6890415 (= e!4151096 call!626989)))

(declare-fun b!6890416 () Bool)

(assert (=> b!6890416 (= e!4151098 e!4151093)))

(declare-fun res!2809425 () Bool)

(assert (=> b!6890416 (= res!2809425 (matchRSpec!3868 (regOne!34123 lt!2462716) lt!2462693))))

(assert (=> b!6890416 (=> res!2809425 e!4151093)))

(assert (= (and d!2161064 c!1281156) b!6890415))

(assert (= (and d!2161064 (not c!1281156)) b!6890408))

(assert (= (and b!6890408 res!2809427) b!6890409))

(assert (= (and b!6890409 c!1281155) b!6890410))

(assert (= (and b!6890409 (not c!1281155)) b!6890406))

(assert (= (and b!6890406 c!1281153) b!6890416))

(assert (= (and b!6890406 (not c!1281153)) b!6890413))

(assert (= (and b!6890416 (not res!2809425)) b!6890411))

(assert (= (and b!6890413 c!1281154) b!6890407))

(assert (= (and b!6890413 (not c!1281154)) b!6890414))

(assert (= (and b!6890407 (not res!2809426)) b!6890412))

(assert (= (or b!6890412 b!6890414) bm!626984))

(assert (= (or b!6890415 b!6890407) bm!626985))

(declare-fun m!7612768 () Bool)

(assert (=> bm!626984 m!7612768))

(declare-fun m!7612770 () Bool)

(assert (=> bm!626985 m!7612770))

(declare-fun m!7612772 () Bool)

(assert (=> b!6890411 m!7612772))

(declare-fun m!7612774 () Bool)

(assert (=> b!6890416 m!7612774))

(assert (=> b!6889711 d!2161064))

(declare-fun b!6890458 () Bool)

(declare-fun e!4151126 () Option!16590)

(assert (=> b!6890458 (= e!4151126 (Some!16589 (tuple2!67357 Nil!66438 lt!2462693)))))

(declare-fun b!6890459 () Bool)

(declare-fun lt!2462832 () Unit!160330)

(declare-fun lt!2462833 () Unit!160330)

(assert (=> b!6890459 (= lt!2462832 lt!2462833)))

(assert (=> b!6890459 (= (++!14884 (++!14884 Nil!66438 (Cons!66438 (h!72886 lt!2462693) Nil!66438)) (t!380305 lt!2462693)) lt!2462693)))

(assert (=> b!6890459 (= lt!2462833 (lemmaMoveElementToOtherListKeepsConcatEq!2778 Nil!66438 (h!72886 lt!2462693) (t!380305 lt!2462693) lt!2462693))))

(declare-fun e!4151127 () Option!16590)

(assert (=> b!6890459 (= e!4151127 (findConcatSeparation!3004 r2!6280 r3!135 (++!14884 Nil!66438 (Cons!66438 (h!72886 lt!2462693) Nil!66438)) (t!380305 lt!2462693) lt!2462693))))

(declare-fun b!6890460 () Bool)

(assert (=> b!6890460 (= e!4151126 e!4151127)))

(declare-fun c!1281166 () Bool)

(assert (=> b!6890460 (= c!1281166 ((_ is Nil!66438) lt!2462693))))

(declare-fun b!6890461 () Bool)

(declare-fun e!4151128 () Bool)

(declare-fun lt!2462831 () Option!16590)

(assert (=> b!6890461 (= e!4151128 (= (++!14884 (_1!36981 (get!23170 lt!2462831)) (_2!36981 (get!23170 lt!2462831))) lt!2462693))))

(declare-fun b!6890463 () Bool)

(declare-fun res!2809453 () Bool)

(assert (=> b!6890463 (=> (not res!2809453) (not e!4151128))))

(assert (=> b!6890463 (= res!2809453 (matchR!8950 r3!135 (_2!36981 (get!23170 lt!2462831))))))

(declare-fun b!6890464 () Bool)

(declare-fun res!2809455 () Bool)

(assert (=> b!6890464 (=> (not res!2809455) (not e!4151128))))

(assert (=> b!6890464 (= res!2809455 (matchR!8950 r2!6280 (_1!36981 (get!23170 lt!2462831))))))

(declare-fun b!6890465 () Bool)

(declare-fun e!4151130 () Bool)

(assert (=> b!6890465 (= e!4151130 (matchR!8950 r3!135 lt!2462693))))

(declare-fun b!6890466 () Bool)

(assert (=> b!6890466 (= e!4151127 None!16589)))

(declare-fun d!2161078 () Bool)

(declare-fun e!4151129 () Bool)

(assert (=> d!2161078 e!4151129))

(declare-fun res!2809452 () Bool)

(assert (=> d!2161078 (=> res!2809452 e!4151129)))

(assert (=> d!2161078 (= res!2809452 e!4151128)))

(declare-fun res!2809454 () Bool)

(assert (=> d!2161078 (=> (not res!2809454) (not e!4151128))))

(assert (=> d!2161078 (= res!2809454 (isDefined!13293 lt!2462831))))

(assert (=> d!2161078 (= lt!2462831 e!4151126)))

(declare-fun c!1281167 () Bool)

(assert (=> d!2161078 (= c!1281167 e!4151130)))

(declare-fun res!2809451 () Bool)

(assert (=> d!2161078 (=> (not res!2809451) (not e!4151130))))

(assert (=> d!2161078 (= res!2809451 (matchR!8950 r2!6280 Nil!66438))))

(assert (=> d!2161078 (validRegex!8513 r2!6280)))

(assert (=> d!2161078 (= (findConcatSeparation!3004 r2!6280 r3!135 Nil!66438 lt!2462693 lt!2462693) lt!2462831)))

(declare-fun b!6890462 () Bool)

(assert (=> b!6890462 (= e!4151129 (not (isDefined!13293 lt!2462831)))))

(assert (= (and d!2161078 res!2809451) b!6890465))

(assert (= (and d!2161078 c!1281167) b!6890458))

(assert (= (and d!2161078 (not c!1281167)) b!6890460))

(assert (= (and b!6890460 c!1281166) b!6890466))

(assert (= (and b!6890460 (not c!1281166)) b!6890459))

(assert (= (and d!2161078 res!2809454) b!6890464))

(assert (= (and b!6890464 res!2809455) b!6890463))

(assert (= (and b!6890463 res!2809453) b!6890461))

(assert (= (and d!2161078 (not res!2809452)) b!6890462))

(declare-fun m!7612780 () Bool)

(assert (=> b!6890459 m!7612780))

(assert (=> b!6890459 m!7612780))

(declare-fun m!7612782 () Bool)

(assert (=> b!6890459 m!7612782))

(declare-fun m!7612784 () Bool)

(assert (=> b!6890459 m!7612784))

(assert (=> b!6890459 m!7612780))

(declare-fun m!7612786 () Bool)

(assert (=> b!6890459 m!7612786))

(declare-fun m!7612788 () Bool)

(assert (=> b!6890462 m!7612788))

(declare-fun m!7612790 () Bool)

(assert (=> b!6890465 m!7612790))

(declare-fun m!7612792 () Bool)

(assert (=> b!6890461 m!7612792))

(declare-fun m!7612794 () Bool)

(assert (=> b!6890461 m!7612794))

(assert (=> b!6890464 m!7612792))

(declare-fun m!7612798 () Bool)

(assert (=> b!6890464 m!7612798))

(assert (=> b!6890463 m!7612792))

(declare-fun m!7612804 () Bool)

(assert (=> b!6890463 m!7612804))

(assert (=> d!2161078 m!7612788))

(declare-fun m!7612806 () Bool)

(assert (=> d!2161078 m!7612806))

(assert (=> d!2161078 m!7612058))

(assert (=> b!6889711 d!2161078))

(declare-fun d!2161084 () Bool)

(assert (=> d!2161084 (= (Exists!3817 lambda!390550) (choose!51306 lambda!390550))))

(declare-fun bs!1840396 () Bool)

(assert (= bs!1840396 d!2161084))

(declare-fun m!7612810 () Bool)

(assert (=> bs!1840396 m!7612810))

(assert (=> b!6889711 d!2161084))

(declare-fun d!2161086 () Bool)

(assert (=> d!2161086 (= (Exists!3817 lambda!390549) (choose!51306 lambda!390549))))

(declare-fun bs!1840397 () Bool)

(assert (= bs!1840397 d!2161086))

(declare-fun m!7612812 () Bool)

(assert (=> bs!1840397 m!7612812))

(assert (=> b!6889711 d!2161086))

(declare-fun d!2161088 () Bool)

(assert (=> d!2161088 (= (isDefined!13293 (findConcatSeparation!3004 r2!6280 r3!135 Nil!66438 lt!2462693 lt!2462693)) (not (isEmpty!38694 (findConcatSeparation!3004 r2!6280 r3!135 Nil!66438 lt!2462693 lt!2462693))))))

(declare-fun bs!1840398 () Bool)

(assert (= bs!1840398 d!2161088))

(assert (=> bs!1840398 m!7612004))

(declare-fun m!7612814 () Bool)

(assert (=> bs!1840398 m!7612814))

(assert (=> b!6889711 d!2161088))

(declare-fun d!2161090 () Bool)

(assert (=> d!2161090 (= (matchR!8950 lt!2462716 lt!2462693) (matchRSpec!3868 lt!2462716 lt!2462693))))

(declare-fun lt!2462834 () Unit!160330)

(assert (=> d!2161090 (= lt!2462834 (choose!51314 lt!2462716 lt!2462693))))

(assert (=> d!2161090 (validRegex!8513 lt!2462716)))

(assert (=> d!2161090 (= (mainMatchTheorem!3868 lt!2462716 lt!2462693) lt!2462834)))

(declare-fun bs!1840399 () Bool)

(assert (= bs!1840399 d!2161090))

(assert (=> bs!1840399 m!7611994))

(assert (=> bs!1840399 m!7611996))

(declare-fun m!7612816 () Bool)

(assert (=> bs!1840399 m!7612816))

(assert (=> bs!1840399 m!7612072))

(assert (=> b!6889711 d!2161090))

(declare-fun d!2161092 () Bool)

(declare-fun e!4151140 () Bool)

(assert (=> d!2161092 e!4151140))

(declare-fun res!2809461 () Bool)

(assert (=> d!2161092 (=> (not res!2809461) (not e!4151140))))

(declare-fun lt!2462835 () List!66562)

(assert (=> d!2161092 (= res!2809461 (= (content!13050 lt!2462835) ((_ map or) (content!13050 (_2!36981 lt!2462718)) (content!13050 (_2!36981 lt!2462711)))))))

(declare-fun e!4151141 () List!66562)

(assert (=> d!2161092 (= lt!2462835 e!4151141)))

(declare-fun c!1281170 () Bool)

(assert (=> d!2161092 (= c!1281170 ((_ is Nil!66438) (_2!36981 lt!2462718)))))

(assert (=> d!2161092 (= (++!14884 (_2!36981 lt!2462718) (_2!36981 lt!2462711)) lt!2462835)))

(declare-fun b!6890482 () Bool)

(assert (=> b!6890482 (= e!4151141 (_2!36981 lt!2462711))))

(declare-fun b!6890485 () Bool)

(assert (=> b!6890485 (= e!4151140 (or (not (= (_2!36981 lt!2462711) Nil!66438)) (= lt!2462835 (_2!36981 lt!2462718))))))

(declare-fun b!6890483 () Bool)

(assert (=> b!6890483 (= e!4151141 (Cons!66438 (h!72886 (_2!36981 lt!2462718)) (++!14884 (t!380305 (_2!36981 lt!2462718)) (_2!36981 lt!2462711))))))

(declare-fun b!6890484 () Bool)

(declare-fun res!2809462 () Bool)

(assert (=> b!6890484 (=> (not res!2809462) (not e!4151140))))

(assert (=> b!6890484 (= res!2809462 (= (size!40747 lt!2462835) (+ (size!40747 (_2!36981 lt!2462718)) (size!40747 (_2!36981 lt!2462711)))))))

(assert (= (and d!2161092 c!1281170) b!6890482))

(assert (= (and d!2161092 (not c!1281170)) b!6890483))

(assert (= (and d!2161092 res!2809461) b!6890484))

(assert (= (and b!6890484 res!2809462) b!6890485))

(declare-fun m!7612818 () Bool)

(assert (=> d!2161092 m!7612818))

(assert (=> d!2161092 m!7612664))

(assert (=> d!2161092 m!7612704))

(declare-fun m!7612820 () Bool)

(assert (=> b!6890483 m!7612820))

(declare-fun m!7612822 () Bool)

(assert (=> b!6890484 m!7612822))

(assert (=> b!6890484 m!7612670))

(assert (=> b!6890484 m!7612712))

(assert (=> b!6889711 d!2161092))

(declare-fun bm!626996 () Bool)

(declare-fun call!627001 () Bool)

(assert (=> bm!626996 (= call!627001 (isEmpty!38695 lt!2462693))))

(declare-fun b!6890490 () Bool)

(declare-fun e!4151147 () Bool)

(declare-fun e!4151143 () Bool)

(assert (=> b!6890490 (= e!4151147 e!4151143)))

(declare-fun res!2809463 () Bool)

(assert (=> b!6890490 (=> res!2809463 e!4151143)))

(assert (=> b!6890490 (= res!2809463 call!627001)))

(declare-fun d!2161094 () Bool)

(declare-fun e!4151144 () Bool)

(assert (=> d!2161094 e!4151144))

(declare-fun c!1281173 () Bool)

(assert (=> d!2161094 (= c!1281173 ((_ is EmptyExpr!16805) lt!2462716))))

(declare-fun lt!2462836 () Bool)

(declare-fun e!4151145 () Bool)

(assert (=> d!2161094 (= lt!2462836 e!4151145)))

(declare-fun c!1281171 () Bool)

(assert (=> d!2161094 (= c!1281171 (isEmpty!38695 lt!2462693))))

(assert (=> d!2161094 (validRegex!8513 lt!2462716)))

(assert (=> d!2161094 (= (matchR!8950 lt!2462716 lt!2462693) lt!2462836)))

(declare-fun b!6890491 () Bool)

(declare-fun e!4151148 () Bool)

(assert (=> b!6890491 (= e!4151148 (not lt!2462836))))

(declare-fun b!6890492 () Bool)

(assert (=> b!6890492 (= e!4151144 e!4151148)))

(declare-fun c!1281172 () Bool)

(assert (=> b!6890492 (= c!1281172 ((_ is EmptyLang!16805) lt!2462716))))

(declare-fun b!6890493 () Bool)

(assert (=> b!6890493 (= e!4151145 (nullable!6687 lt!2462716))))

(declare-fun b!6890494 () Bool)

(declare-fun res!2809466 () Bool)

(declare-fun e!4151146 () Bool)

(assert (=> b!6890494 (=> res!2809466 e!4151146)))

(declare-fun e!4151142 () Bool)

(assert (=> b!6890494 (= res!2809466 e!4151142)))

(declare-fun res!2809465 () Bool)

(assert (=> b!6890494 (=> (not res!2809465) (not e!4151142))))

(assert (=> b!6890494 (= res!2809465 lt!2462836)))

(declare-fun b!6890495 () Bool)

(declare-fun res!2809464 () Bool)

(assert (=> b!6890495 (=> (not res!2809464) (not e!4151142))))

(assert (=> b!6890495 (= res!2809464 (not call!627001))))

(declare-fun b!6890496 () Bool)

(assert (=> b!6890496 (= e!4151144 (= lt!2462836 call!627001))))

(declare-fun b!6890497 () Bool)

(declare-fun res!2809468 () Bool)

(assert (=> b!6890497 (=> (not res!2809468) (not e!4151142))))

(assert (=> b!6890497 (= res!2809468 (isEmpty!38695 (tail!12872 lt!2462693)))))

(declare-fun b!6890498 () Bool)

(assert (=> b!6890498 (= e!4151146 e!4151147)))

(declare-fun res!2809469 () Bool)

(assert (=> b!6890498 (=> (not res!2809469) (not e!4151147))))

(assert (=> b!6890498 (= res!2809469 (not lt!2462836))))

(declare-fun b!6890499 () Bool)

(declare-fun res!2809467 () Bool)

(assert (=> b!6890499 (=> res!2809467 e!4151146)))

(assert (=> b!6890499 (= res!2809467 (not ((_ is ElementMatch!16805) lt!2462716)))))

(assert (=> b!6890499 (= e!4151148 e!4151146)))

(declare-fun b!6890500 () Bool)

(assert (=> b!6890500 (= e!4151143 (not (= (head!13820 lt!2462693) (c!1280991 lt!2462716))))))

(declare-fun b!6890501 () Bool)

(assert (=> b!6890501 (= e!4151142 (= (head!13820 lt!2462693) (c!1280991 lt!2462716)))))

(declare-fun b!6890502 () Bool)

(assert (=> b!6890502 (= e!4151145 (matchR!8950 (derivativeStep!5367 lt!2462716 (head!13820 lt!2462693)) (tail!12872 lt!2462693)))))

(declare-fun b!6890503 () Bool)

(declare-fun res!2809470 () Bool)

(assert (=> b!6890503 (=> res!2809470 e!4151143)))

(assert (=> b!6890503 (= res!2809470 (not (isEmpty!38695 (tail!12872 lt!2462693))))))

(assert (= (and d!2161094 c!1281171) b!6890493))

(assert (= (and d!2161094 (not c!1281171)) b!6890502))

(assert (= (and d!2161094 c!1281173) b!6890496))

(assert (= (and d!2161094 (not c!1281173)) b!6890492))

(assert (= (and b!6890492 c!1281172) b!6890491))

(assert (= (and b!6890492 (not c!1281172)) b!6890499))

(assert (= (and b!6890499 (not res!2809467)) b!6890494))

(assert (= (and b!6890494 res!2809465) b!6890495))

(assert (= (and b!6890495 res!2809464) b!6890497))

(assert (= (and b!6890497 res!2809468) b!6890501))

(assert (= (and b!6890494 (not res!2809466)) b!6890498))

(assert (= (and b!6890498 res!2809469) b!6890490))

(assert (= (and b!6890490 (not res!2809463)) b!6890503))

(assert (= (and b!6890503 (not res!2809470)) b!6890500))

(assert (= (or b!6890496 b!6890490 b!6890495) bm!626996))

(declare-fun m!7612824 () Bool)

(assert (=> b!6890503 m!7612824))

(assert (=> b!6890503 m!7612824))

(declare-fun m!7612826 () Bool)

(assert (=> b!6890503 m!7612826))

(declare-fun m!7612828 () Bool)

(assert (=> b!6890500 m!7612828))

(assert (=> b!6890497 m!7612824))

(assert (=> b!6890497 m!7612824))

(assert (=> b!6890497 m!7612826))

(assert (=> b!6890501 m!7612828))

(assert (=> d!2161094 m!7612770))

(assert (=> d!2161094 m!7612072))

(assert (=> b!6890502 m!7612828))

(assert (=> b!6890502 m!7612828))

(declare-fun m!7612830 () Bool)

(assert (=> b!6890502 m!7612830))

(assert (=> b!6890502 m!7612824))

(assert (=> b!6890502 m!7612830))

(assert (=> b!6890502 m!7612824))

(declare-fun m!7612832 () Bool)

(assert (=> b!6890502 m!7612832))

(assert (=> bm!626996 m!7612770))

(declare-fun m!7612834 () Bool)

(assert (=> b!6890493 m!7612834))

(assert (=> b!6889711 d!2161094))

(declare-fun d!2161096 () Bool)

(assert (=> d!2161096 (isDefined!13293 (findConcatSeparation!3004 r2!6280 r3!135 Nil!66438 lt!2462693 lt!2462693))))

(declare-fun lt!2462837 () Unit!160330)

(assert (=> d!2161096 (= lt!2462837 (choose!51307 r2!6280 r3!135 (_2!36981 lt!2462718) (_2!36981 lt!2462711) lt!2462693 Nil!66438 lt!2462693))))

(assert (=> d!2161096 (validRegex!8513 r2!6280)))

(assert (=> d!2161096 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!52 r2!6280 r3!135 (_2!36981 lt!2462718) (_2!36981 lt!2462711) lt!2462693 Nil!66438 lt!2462693) lt!2462837)))

(declare-fun bs!1840400 () Bool)

(assert (= bs!1840400 d!2161096))

(assert (=> bs!1840400 m!7612004))

(assert (=> bs!1840400 m!7612004))

(assert (=> bs!1840400 m!7612006))

(declare-fun m!7612836 () Bool)

(assert (=> bs!1840400 m!7612836))

(assert (=> bs!1840400 m!7612058))

(assert (=> b!6889711 d!2161096))

(declare-fun bs!1840401 () Bool)

(declare-fun d!2161098 () Bool)

(assert (= bs!1840401 (and d!2161098 b!6889711)))

(declare-fun lambda!390618 () Int)

(assert (=> bs!1840401 (= lambda!390618 lambda!390549)))

(declare-fun bs!1840402 () Bool)

(assert (= bs!1840402 (and d!2161098 b!6890091)))

(assert (=> bs!1840402 (not (= lambda!390618 lambda!390587))))

(declare-fun bs!1840403 () Bool)

(assert (= bs!1840403 (and d!2161098 b!6890226)))

(assert (=> bs!1840403 (not (= lambda!390618 lambda!390598))))

(declare-fun bs!1840404 () Bool)

(assert (= bs!1840404 (and d!2161098 b!6890263)))

(assert (=> bs!1840404 (not (= lambda!390618 lambda!390600))))

(declare-fun bs!1840405 () Bool)

(assert (= bs!1840405 (and d!2161098 d!2160934)))

(assert (=> bs!1840405 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390618 lambda!390577))))

(declare-fun bs!1840406 () Bool)

(assert (= bs!1840406 (and d!2161098 b!6890395)))

(assert (=> bs!1840406 (not (= lambda!390618 lambda!390613))))

(declare-fun bs!1840407 () Bool)

(assert (= bs!1840407 (and d!2161098 b!6890373)))

(assert (=> bs!1840407 (not (= lambda!390618 lambda!390610))))

(declare-fun bs!1840408 () Bool)

(assert (= bs!1840408 (and d!2161098 d!2160888)))

(assert (=> bs!1840408 (= (and (= lt!2462693 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462716)) (= lambda!390618 lambda!390565))))

(declare-fun bs!1840409 () Bool)

(assert (= bs!1840409 (and d!2161098 b!6889727)))

(assert (=> bs!1840409 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390618 lambda!390547))))

(declare-fun bs!1840410 () Bool)

(assert (= bs!1840410 (and d!2161098 b!6890371)))

(assert (=> bs!1840410 (not (= lambda!390618 lambda!390608))))

(declare-fun bs!1840411 () Bool)

(assert (= bs!1840411 (and d!2161098 b!6890265)))

(assert (=> bs!1840411 (not (= lambda!390618 lambda!390602))))

(declare-fun bs!1840412 () Bool)

(assert (= bs!1840412 (and d!2161098 b!6890393)))

(assert (=> bs!1840412 (not (= lambda!390618 lambda!390612))))

(declare-fun bs!1840413 () Bool)

(assert (= bs!1840413 (and d!2161098 d!2160970)))

(assert (=> bs!1840413 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390618 lambda!390592))))

(assert (=> bs!1840409 (not (= lambda!390618 lambda!390548))))

(assert (=> bs!1840401 (not (= lambda!390618 lambda!390550))))

(declare-fun bs!1840414 () Bool)

(assert (= bs!1840414 (and d!2161098 b!6890224)))

(assert (=> bs!1840414 (not (= lambda!390618 lambda!390596))))

(declare-fun bs!1840415 () Bool)

(assert (= bs!1840415 (and d!2161098 b!6889718)))

(assert (=> bs!1840415 (not (= lambda!390618 lambda!390546))))

(declare-fun bs!1840416 () Bool)

(assert (= bs!1840416 (and d!2161098 b!6890412)))

(assert (=> bs!1840416 (not (= lambda!390618 lambda!390615))))

(declare-fun bs!1840417 () Bool)

(assert (= bs!1840417 (and d!2161098 d!2161032)))

(assert (=> bs!1840417 (not (= lambda!390618 lambda!390605))))

(assert (=> bs!1840417 (= (and (= lt!2462693 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462716)) (= lambda!390618 lambda!390603))))

(declare-fun bs!1840418 () Bool)

(assert (= bs!1840418 (and d!2161098 b!6889717)))

(assert (=> bs!1840418 (= (and (= lt!2462693 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462716)) (= lambda!390618 lambda!390551))))

(declare-fun bs!1840419 () Bool)

(assert (= bs!1840419 (and d!2161098 d!2160918)))

(assert (=> bs!1840419 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390618 lambda!390575))))

(declare-fun bs!1840420 () Bool)

(assert (= bs!1840420 (and d!2161098 b!6890093)))

(assert (=> bs!1840420 (not (= lambda!390618 lambda!390588))))

(assert (=> bs!1840419 (not (= lambda!390618 lambda!390576))))

(declare-fun bs!1840421 () Bool)

(assert (= bs!1840421 (and d!2161098 d!2160976)))

(assert (=> bs!1840421 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390618 lambda!390595))))

(assert (=> bs!1840415 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390618 lambda!390545))))

(declare-fun bs!1840422 () Bool)

(assert (= bs!1840422 (and d!2161098 b!6889709)))

(assert (=> bs!1840422 (not (= lambda!390618 lambda!390552))))

(assert (=> bs!1840413 (not (= lambda!390618 lambda!390593))))

(declare-fun bs!1840423 () Bool)

(assert (= bs!1840423 (and d!2161098 b!6890414)))

(assert (=> bs!1840423 (not (= lambda!390618 lambda!390616))))

(assert (=> d!2161098 true))

(assert (=> d!2161098 true))

(assert (=> d!2161098 true))

(declare-fun lambda!390619 () Int)

(assert (=> bs!1840401 (not (= lambda!390619 lambda!390549))))

(assert (=> bs!1840402 (not (= lambda!390619 lambda!390587))))

(assert (=> bs!1840403 (= (and (= lt!2462693 s!14361) (= r2!6280 (regOne!34122 lt!2462688)) (= r3!135 (regTwo!34122 lt!2462688))) (= lambda!390619 lambda!390598))))

(assert (=> bs!1840404 (not (= lambda!390619 lambda!390600))))

(assert (=> bs!1840405 (not (= lambda!390619 lambda!390577))))

(assert (=> bs!1840406 (= (and (= lt!2462693 (_1!36981 lt!2462718)) (= r2!6280 (regOne!34122 r1!6342)) (= r3!135 (regTwo!34122 r1!6342))) (= lambda!390619 lambda!390613))))

(assert (=> bs!1840407 (= (and (= lt!2462693 (_2!36981 lt!2462718)) (= r2!6280 (regOne!34122 r2!6280)) (= r3!135 (regTwo!34122 r2!6280))) (= lambda!390619 lambda!390610))))

(assert (=> bs!1840408 (not (= lambda!390619 lambda!390565))))

(assert (=> bs!1840409 (not (= lambda!390619 lambda!390547))))

(assert (=> bs!1840410 (not (= lambda!390619 lambda!390608))))

(assert (=> bs!1840411 (= (and (= lt!2462693 s!14361) (= r2!6280 (regOne!34122 lt!2462719)) (= r3!135 (regTwo!34122 lt!2462719))) (= lambda!390619 lambda!390602))))

(declare-fun bs!1840424 () Bool)

(assert (= bs!1840424 d!2161098))

(assert (=> bs!1840424 (not (= lambda!390619 lambda!390618))))

(assert (=> bs!1840412 (not (= lambda!390619 lambda!390612))))

(assert (=> bs!1840413 (not (= lambda!390619 lambda!390592))))

(assert (=> bs!1840409 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390619 lambda!390548))))

(assert (=> bs!1840401 (= lambda!390619 lambda!390550)))

(assert (=> bs!1840414 (not (= lambda!390619 lambda!390596))))

(assert (=> bs!1840415 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390619 lambda!390546))))

(assert (=> bs!1840416 (not (= lambda!390619 lambda!390615))))

(assert (=> bs!1840417 (= (and (= lt!2462693 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462716)) (= lambda!390619 lambda!390605))))

(assert (=> bs!1840417 (not (= lambda!390619 lambda!390603))))

(assert (=> bs!1840418 (not (= lambda!390619 lambda!390551))))

(assert (=> bs!1840419 (not (= lambda!390619 lambda!390575))))

(assert (=> bs!1840420 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 (regOne!34122 lt!2462714)) (= r3!135 (regTwo!34122 lt!2462714))) (= lambda!390619 lambda!390588))))

(assert (=> bs!1840419 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390619 lambda!390576))))

(assert (=> bs!1840421 (not (= lambda!390619 lambda!390595))))

(assert (=> bs!1840415 (not (= lambda!390619 lambda!390545))))

(assert (=> bs!1840422 (= (and (= lt!2462693 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462716)) (= lambda!390619 lambda!390552))))

(assert (=> bs!1840413 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390619 lambda!390593))))

(assert (=> bs!1840423 (= (and (= r2!6280 (regOne!34122 lt!2462716)) (= r3!135 (regTwo!34122 lt!2462716))) (= lambda!390619 lambda!390616))))

(assert (=> d!2161098 true))

(assert (=> d!2161098 true))

(assert (=> d!2161098 true))

(assert (=> d!2161098 (= (Exists!3817 lambda!390618) (Exists!3817 lambda!390619))))

(declare-fun lt!2462838 () Unit!160330)

(assert (=> d!2161098 (= lt!2462838 (choose!51313 r2!6280 r3!135 lt!2462693))))

(assert (=> d!2161098 (validRegex!8513 r2!6280)))

(assert (=> d!2161098 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2296 r2!6280 r3!135 lt!2462693) lt!2462838)))

(declare-fun m!7612838 () Bool)

(assert (=> bs!1840424 m!7612838))

(declare-fun m!7612840 () Bool)

(assert (=> bs!1840424 m!7612840))

(declare-fun m!7612842 () Bool)

(assert (=> bs!1840424 m!7612842))

(assert (=> bs!1840424 m!7612058))

(assert (=> b!6889711 d!2161098))

(declare-fun bs!1840425 () Bool)

(declare-fun d!2161100 () Bool)

(assert (= bs!1840425 (and d!2161100 b!6889711)))

(declare-fun lambda!390620 () Int)

(assert (=> bs!1840425 (= lambda!390620 lambda!390549)))

(declare-fun bs!1840426 () Bool)

(assert (= bs!1840426 (and d!2161100 b!6890091)))

(assert (=> bs!1840426 (not (= lambda!390620 lambda!390587))))

(declare-fun bs!1840427 () Bool)

(assert (= bs!1840427 (and d!2161100 b!6890226)))

(assert (=> bs!1840427 (not (= lambda!390620 lambda!390598))))

(declare-fun bs!1840428 () Bool)

(assert (= bs!1840428 (and d!2161100 b!6890263)))

(assert (=> bs!1840428 (not (= lambda!390620 lambda!390600))))

(declare-fun bs!1840429 () Bool)

(assert (= bs!1840429 (and d!2161100 d!2161098)))

(assert (=> bs!1840429 (not (= lambda!390620 lambda!390619))))

(declare-fun bs!1840430 () Bool)

(assert (= bs!1840430 (and d!2161100 d!2160934)))

(assert (=> bs!1840430 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390620 lambda!390577))))

(declare-fun bs!1840431 () Bool)

(assert (= bs!1840431 (and d!2161100 b!6890395)))

(assert (=> bs!1840431 (not (= lambda!390620 lambda!390613))))

(declare-fun bs!1840432 () Bool)

(assert (= bs!1840432 (and d!2161100 b!6890373)))

(assert (=> bs!1840432 (not (= lambda!390620 lambda!390610))))

(declare-fun bs!1840433 () Bool)

(assert (= bs!1840433 (and d!2161100 d!2160888)))

(assert (=> bs!1840433 (= (and (= lt!2462693 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462716)) (= lambda!390620 lambda!390565))))

(declare-fun bs!1840434 () Bool)

(assert (= bs!1840434 (and d!2161100 b!6889727)))

(assert (=> bs!1840434 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390620 lambda!390547))))

(declare-fun bs!1840435 () Bool)

(assert (= bs!1840435 (and d!2161100 b!6890371)))

(assert (=> bs!1840435 (not (= lambda!390620 lambda!390608))))

(declare-fun bs!1840436 () Bool)

(assert (= bs!1840436 (and d!2161100 b!6890265)))

(assert (=> bs!1840436 (not (= lambda!390620 lambda!390602))))

(assert (=> bs!1840429 (= lambda!390620 lambda!390618)))

(declare-fun bs!1840437 () Bool)

(assert (= bs!1840437 (and d!2161100 b!6890393)))

(assert (=> bs!1840437 (not (= lambda!390620 lambda!390612))))

(declare-fun bs!1840438 () Bool)

(assert (= bs!1840438 (and d!2161100 d!2160970)))

(assert (=> bs!1840438 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390620 lambda!390592))))

(assert (=> bs!1840434 (not (= lambda!390620 lambda!390548))))

(assert (=> bs!1840425 (not (= lambda!390620 lambda!390550))))

(declare-fun bs!1840439 () Bool)

(assert (= bs!1840439 (and d!2161100 b!6890224)))

(assert (=> bs!1840439 (not (= lambda!390620 lambda!390596))))

(declare-fun bs!1840440 () Bool)

(assert (= bs!1840440 (and d!2161100 b!6889718)))

(assert (=> bs!1840440 (not (= lambda!390620 lambda!390546))))

(declare-fun bs!1840441 () Bool)

(assert (= bs!1840441 (and d!2161100 b!6890412)))

(assert (=> bs!1840441 (not (= lambda!390620 lambda!390615))))

(declare-fun bs!1840442 () Bool)

(assert (= bs!1840442 (and d!2161100 d!2161032)))

(assert (=> bs!1840442 (not (= lambda!390620 lambda!390605))))

(assert (=> bs!1840442 (= (and (= lt!2462693 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462716)) (= lambda!390620 lambda!390603))))

(declare-fun bs!1840443 () Bool)

(assert (= bs!1840443 (and d!2161100 b!6889717)))

(assert (=> bs!1840443 (= (and (= lt!2462693 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462716)) (= lambda!390620 lambda!390551))))

(declare-fun bs!1840444 () Bool)

(assert (= bs!1840444 (and d!2161100 d!2160918)))

(assert (=> bs!1840444 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390620 lambda!390575))))

(declare-fun bs!1840445 () Bool)

(assert (= bs!1840445 (and d!2161100 b!6890093)))

(assert (=> bs!1840445 (not (= lambda!390620 lambda!390588))))

(assert (=> bs!1840444 (not (= lambda!390620 lambda!390576))))

(declare-fun bs!1840446 () Bool)

(assert (= bs!1840446 (and d!2161100 d!2160976)))

(assert (=> bs!1840446 (= (and (= lt!2462693 (_1!36981 lt!2462711)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390620 lambda!390595))))

(assert (=> bs!1840440 (= (and (= lt!2462693 s!14361) (= r2!6280 lt!2462714)) (= lambda!390620 lambda!390545))))

(declare-fun bs!1840447 () Bool)

(assert (= bs!1840447 (and d!2161100 b!6889709)))

(assert (=> bs!1840447 (not (= lambda!390620 lambda!390552))))

(assert (=> bs!1840438 (not (= lambda!390620 lambda!390593))))

(declare-fun bs!1840448 () Bool)

(assert (= bs!1840448 (and d!2161100 b!6890414)))

(assert (=> bs!1840448 (not (= lambda!390620 lambda!390616))))

(assert (=> d!2161100 true))

(assert (=> d!2161100 true))

(assert (=> d!2161100 true))

(assert (=> d!2161100 (= (isDefined!13293 (findConcatSeparation!3004 r2!6280 r3!135 Nil!66438 lt!2462693 lt!2462693)) (Exists!3817 lambda!390620))))

(declare-fun lt!2462839 () Unit!160330)

(assert (=> d!2161100 (= lt!2462839 (choose!51308 r2!6280 r3!135 lt!2462693))))

(assert (=> d!2161100 (validRegex!8513 r2!6280)))

(assert (=> d!2161100 (= (lemmaFindConcatSeparationEquivalentToExists!2768 r2!6280 r3!135 lt!2462693) lt!2462839)))

(declare-fun bs!1840449 () Bool)

(assert (= bs!1840449 d!2161100))

(assert (=> bs!1840449 m!7612058))

(declare-fun m!7612844 () Bool)

(assert (=> bs!1840449 m!7612844))

(assert (=> bs!1840449 m!7612004))

(assert (=> bs!1840449 m!7612006))

(declare-fun m!7612846 () Bool)

(assert (=> bs!1840449 m!7612846))

(assert (=> bs!1840449 m!7612004))

(assert (=> b!6889711 d!2161100))

(declare-fun b!6890581 () Bool)

(declare-fun e!4151169 () Bool)

(declare-fun tp!1895676 () Bool)

(assert (=> b!6890581 (= e!4151169 tp!1895676)))

(assert (=> b!6889733 (= tp!1895563 e!4151169)))

(declare-fun b!6890579 () Bool)

(assert (=> b!6890579 (= e!4151169 tp_is_empty!42835)))

(declare-fun b!6890580 () Bool)

(declare-fun tp!1895674 () Bool)

(declare-fun tp!1895675 () Bool)

(assert (=> b!6890580 (= e!4151169 (and tp!1895674 tp!1895675))))

(declare-fun b!6890582 () Bool)

(declare-fun tp!1895678 () Bool)

(declare-fun tp!1895677 () Bool)

(assert (=> b!6890582 (= e!4151169 (and tp!1895678 tp!1895677))))

(assert (= (and b!6889733 ((_ is ElementMatch!16805) (regOne!34122 r2!6280))) b!6890579))

(assert (= (and b!6889733 ((_ is Concat!25650) (regOne!34122 r2!6280))) b!6890580))

(assert (= (and b!6889733 ((_ is Star!16805) (regOne!34122 r2!6280))) b!6890581))

(assert (= (and b!6889733 ((_ is Union!16805) (regOne!34122 r2!6280))) b!6890582))

(declare-fun b!6890585 () Bool)

(declare-fun e!4151170 () Bool)

(declare-fun tp!1895681 () Bool)

(assert (=> b!6890585 (= e!4151170 tp!1895681)))

(assert (=> b!6889733 (= tp!1895560 e!4151170)))

(declare-fun b!6890583 () Bool)

(assert (=> b!6890583 (= e!4151170 tp_is_empty!42835)))

(declare-fun b!6890584 () Bool)

(declare-fun tp!1895679 () Bool)

(declare-fun tp!1895680 () Bool)

(assert (=> b!6890584 (= e!4151170 (and tp!1895679 tp!1895680))))

(declare-fun b!6890586 () Bool)

(declare-fun tp!1895683 () Bool)

(declare-fun tp!1895682 () Bool)

(assert (=> b!6890586 (= e!4151170 (and tp!1895683 tp!1895682))))

(assert (= (and b!6889733 ((_ is ElementMatch!16805) (regTwo!34122 r2!6280))) b!6890583))

(assert (= (and b!6889733 ((_ is Concat!25650) (regTwo!34122 r2!6280))) b!6890584))

(assert (= (and b!6889733 ((_ is Star!16805) (regTwo!34122 r2!6280))) b!6890585))

(assert (= (and b!6889733 ((_ is Union!16805) (regTwo!34122 r2!6280))) b!6890586))

(declare-fun b!6890589 () Bool)

(declare-fun e!4151171 () Bool)

(declare-fun tp!1895686 () Bool)

(assert (=> b!6890589 (= e!4151171 tp!1895686)))

(assert (=> b!6889722 (= tp!1895573 e!4151171)))

(declare-fun b!6890587 () Bool)

(assert (=> b!6890587 (= e!4151171 tp_is_empty!42835)))

(declare-fun b!6890588 () Bool)

(declare-fun tp!1895684 () Bool)

(declare-fun tp!1895685 () Bool)

(assert (=> b!6890588 (= e!4151171 (and tp!1895684 tp!1895685))))

(declare-fun b!6890590 () Bool)

(declare-fun tp!1895688 () Bool)

(declare-fun tp!1895687 () Bool)

(assert (=> b!6890590 (= e!4151171 (and tp!1895688 tp!1895687))))

(assert (= (and b!6889722 ((_ is ElementMatch!16805) (regOne!34122 r1!6342))) b!6890587))

(assert (= (and b!6889722 ((_ is Concat!25650) (regOne!34122 r1!6342))) b!6890588))

(assert (= (and b!6889722 ((_ is Star!16805) (regOne!34122 r1!6342))) b!6890589))

(assert (= (and b!6889722 ((_ is Union!16805) (regOne!34122 r1!6342))) b!6890590))

(declare-fun b!6890593 () Bool)

(declare-fun e!4151172 () Bool)

(declare-fun tp!1895691 () Bool)

(assert (=> b!6890593 (= e!4151172 tp!1895691)))

(assert (=> b!6889722 (= tp!1895565 e!4151172)))

(declare-fun b!6890591 () Bool)

(assert (=> b!6890591 (= e!4151172 tp_is_empty!42835)))

(declare-fun b!6890592 () Bool)

(declare-fun tp!1895689 () Bool)

(declare-fun tp!1895690 () Bool)

(assert (=> b!6890592 (= e!4151172 (and tp!1895689 tp!1895690))))

(declare-fun b!6890594 () Bool)

(declare-fun tp!1895693 () Bool)

(declare-fun tp!1895692 () Bool)

(assert (=> b!6890594 (= e!4151172 (and tp!1895693 tp!1895692))))

(assert (= (and b!6889722 ((_ is ElementMatch!16805) (regTwo!34122 r1!6342))) b!6890591))

(assert (= (and b!6889722 ((_ is Concat!25650) (regTwo!34122 r1!6342))) b!6890592))

(assert (= (and b!6889722 ((_ is Star!16805) (regTwo!34122 r1!6342))) b!6890593))

(assert (= (and b!6889722 ((_ is Union!16805) (regTwo!34122 r1!6342))) b!6890594))

(declare-fun b!6890597 () Bool)

(declare-fun e!4151173 () Bool)

(declare-fun tp!1895696 () Bool)

(assert (=> b!6890597 (= e!4151173 tp!1895696)))

(assert (=> b!6889723 (= tp!1895575 e!4151173)))

(declare-fun b!6890595 () Bool)

(assert (=> b!6890595 (= e!4151173 tp_is_empty!42835)))

(declare-fun b!6890596 () Bool)

(declare-fun tp!1895694 () Bool)

(declare-fun tp!1895695 () Bool)

(assert (=> b!6890596 (= e!4151173 (and tp!1895694 tp!1895695))))

(declare-fun b!6890598 () Bool)

(declare-fun tp!1895698 () Bool)

(declare-fun tp!1895697 () Bool)

(assert (=> b!6890598 (= e!4151173 (and tp!1895698 tp!1895697))))

(assert (= (and b!6889723 ((_ is ElementMatch!16805) (regOne!34123 r2!6280))) b!6890595))

(assert (= (and b!6889723 ((_ is Concat!25650) (regOne!34123 r2!6280))) b!6890596))

(assert (= (and b!6889723 ((_ is Star!16805) (regOne!34123 r2!6280))) b!6890597))

(assert (= (and b!6889723 ((_ is Union!16805) (regOne!34123 r2!6280))) b!6890598))

(declare-fun b!6890601 () Bool)

(declare-fun e!4151174 () Bool)

(declare-fun tp!1895701 () Bool)

(assert (=> b!6890601 (= e!4151174 tp!1895701)))

(assert (=> b!6889723 (= tp!1895569 e!4151174)))

(declare-fun b!6890599 () Bool)

(assert (=> b!6890599 (= e!4151174 tp_is_empty!42835)))

(declare-fun b!6890600 () Bool)

(declare-fun tp!1895699 () Bool)

(declare-fun tp!1895700 () Bool)

(assert (=> b!6890600 (= e!4151174 (and tp!1895699 tp!1895700))))

(declare-fun b!6890602 () Bool)

(declare-fun tp!1895703 () Bool)

(declare-fun tp!1895702 () Bool)

(assert (=> b!6890602 (= e!4151174 (and tp!1895703 tp!1895702))))

(assert (= (and b!6889723 ((_ is ElementMatch!16805) (regTwo!34123 r2!6280))) b!6890599))

(assert (= (and b!6889723 ((_ is Concat!25650) (regTwo!34123 r2!6280))) b!6890600))

(assert (= (and b!6889723 ((_ is Star!16805) (regTwo!34123 r2!6280))) b!6890601))

(assert (= (and b!6889723 ((_ is Union!16805) (regTwo!34123 r2!6280))) b!6890602))

(declare-fun b!6890607 () Bool)

(declare-fun e!4151177 () Bool)

(declare-fun tp!1895706 () Bool)

(assert (=> b!6890607 (= e!4151177 (and tp_is_empty!42835 tp!1895706))))

(assert (=> b!6889712 (= tp!1895570 e!4151177)))

(assert (= (and b!6889712 ((_ is Cons!66438) (t!380305 s!14361))) b!6890607))

(declare-fun b!6890610 () Bool)

(declare-fun e!4151178 () Bool)

(declare-fun tp!1895709 () Bool)

(assert (=> b!6890610 (= e!4151178 tp!1895709)))

(assert (=> b!6889729 (= tp!1895564 e!4151178)))

(declare-fun b!6890608 () Bool)

(assert (=> b!6890608 (= e!4151178 tp_is_empty!42835)))

(declare-fun b!6890609 () Bool)

(declare-fun tp!1895707 () Bool)

(declare-fun tp!1895708 () Bool)

(assert (=> b!6890609 (= e!4151178 (and tp!1895707 tp!1895708))))

(declare-fun b!6890611 () Bool)

(declare-fun tp!1895711 () Bool)

(declare-fun tp!1895710 () Bool)

(assert (=> b!6890611 (= e!4151178 (and tp!1895711 tp!1895710))))

(assert (= (and b!6889729 ((_ is ElementMatch!16805) (regOne!34123 r3!135))) b!6890608))

(assert (= (and b!6889729 ((_ is Concat!25650) (regOne!34123 r3!135))) b!6890609))

(assert (= (and b!6889729 ((_ is Star!16805) (regOne!34123 r3!135))) b!6890610))

(assert (= (and b!6889729 ((_ is Union!16805) (regOne!34123 r3!135))) b!6890611))

(declare-fun b!6890614 () Bool)

(declare-fun e!4151179 () Bool)

(declare-fun tp!1895714 () Bool)

(assert (=> b!6890614 (= e!4151179 tp!1895714)))

(assert (=> b!6889729 (= tp!1895561 e!4151179)))

(declare-fun b!6890612 () Bool)

(assert (=> b!6890612 (= e!4151179 tp_is_empty!42835)))

(declare-fun b!6890613 () Bool)

(declare-fun tp!1895712 () Bool)

(declare-fun tp!1895713 () Bool)

(assert (=> b!6890613 (= e!4151179 (and tp!1895712 tp!1895713))))

(declare-fun b!6890615 () Bool)

(declare-fun tp!1895716 () Bool)

(declare-fun tp!1895715 () Bool)

(assert (=> b!6890615 (= e!4151179 (and tp!1895716 tp!1895715))))

(assert (= (and b!6889729 ((_ is ElementMatch!16805) (regTwo!34123 r3!135))) b!6890612))

(assert (= (and b!6889729 ((_ is Concat!25650) (regTwo!34123 r3!135))) b!6890613))

(assert (= (and b!6889729 ((_ is Star!16805) (regTwo!34123 r3!135))) b!6890614))

(assert (= (and b!6889729 ((_ is Union!16805) (regTwo!34123 r3!135))) b!6890615))

(declare-fun b!6890618 () Bool)

(declare-fun e!4151180 () Bool)

(declare-fun tp!1895719 () Bool)

(assert (=> b!6890618 (= e!4151180 tp!1895719)))

(assert (=> b!6889713 (= tp!1895566 e!4151180)))

(declare-fun b!6890616 () Bool)

(assert (=> b!6890616 (= e!4151180 tp_is_empty!42835)))

(declare-fun b!6890617 () Bool)

(declare-fun tp!1895717 () Bool)

(declare-fun tp!1895718 () Bool)

(assert (=> b!6890617 (= e!4151180 (and tp!1895717 tp!1895718))))

(declare-fun b!6890619 () Bool)

(declare-fun tp!1895721 () Bool)

(declare-fun tp!1895720 () Bool)

(assert (=> b!6890619 (= e!4151180 (and tp!1895721 tp!1895720))))

(assert (= (and b!6889713 ((_ is ElementMatch!16805) (regOne!34122 r3!135))) b!6890616))

(assert (= (and b!6889713 ((_ is Concat!25650) (regOne!34122 r3!135))) b!6890617))

(assert (= (and b!6889713 ((_ is Star!16805) (regOne!34122 r3!135))) b!6890618))

(assert (= (and b!6889713 ((_ is Union!16805) (regOne!34122 r3!135))) b!6890619))

(declare-fun b!6890622 () Bool)

(declare-fun e!4151181 () Bool)

(declare-fun tp!1895724 () Bool)

(assert (=> b!6890622 (= e!4151181 tp!1895724)))

(assert (=> b!6889713 (= tp!1895567 e!4151181)))

(declare-fun b!6890620 () Bool)

(assert (=> b!6890620 (= e!4151181 tp_is_empty!42835)))

(declare-fun b!6890621 () Bool)

(declare-fun tp!1895722 () Bool)

(declare-fun tp!1895723 () Bool)

(assert (=> b!6890621 (= e!4151181 (and tp!1895722 tp!1895723))))

(declare-fun b!6890623 () Bool)

(declare-fun tp!1895726 () Bool)

(declare-fun tp!1895725 () Bool)

(assert (=> b!6890623 (= e!4151181 (and tp!1895726 tp!1895725))))

(assert (= (and b!6889713 ((_ is ElementMatch!16805) (regTwo!34122 r3!135))) b!6890620))

(assert (= (and b!6889713 ((_ is Concat!25650) (regTwo!34122 r3!135))) b!6890621))

(assert (= (and b!6889713 ((_ is Star!16805) (regTwo!34122 r3!135))) b!6890622))

(assert (= (and b!6889713 ((_ is Union!16805) (regTwo!34122 r3!135))) b!6890623))

(declare-fun b!6890626 () Bool)

(declare-fun e!4151182 () Bool)

(declare-fun tp!1895729 () Bool)

(assert (=> b!6890626 (= e!4151182 tp!1895729)))

(assert (=> b!6889724 (= tp!1895572 e!4151182)))

(declare-fun b!6890624 () Bool)

(assert (=> b!6890624 (= e!4151182 tp_is_empty!42835)))

(declare-fun b!6890625 () Bool)

(declare-fun tp!1895727 () Bool)

(declare-fun tp!1895728 () Bool)

(assert (=> b!6890625 (= e!4151182 (and tp!1895727 tp!1895728))))

(declare-fun b!6890627 () Bool)

(declare-fun tp!1895731 () Bool)

(declare-fun tp!1895730 () Bool)

(assert (=> b!6890627 (= e!4151182 (and tp!1895731 tp!1895730))))

(assert (= (and b!6889724 ((_ is ElementMatch!16805) (reg!17134 r3!135))) b!6890624))

(assert (= (and b!6889724 ((_ is Concat!25650) (reg!17134 r3!135))) b!6890625))

(assert (= (and b!6889724 ((_ is Star!16805) (reg!17134 r3!135))) b!6890626))

(assert (= (and b!6889724 ((_ is Union!16805) (reg!17134 r3!135))) b!6890627))

(declare-fun b!6890630 () Bool)

(declare-fun e!4151183 () Bool)

(declare-fun tp!1895734 () Bool)

(assert (=> b!6890630 (= e!4151183 tp!1895734)))

(assert (=> b!6889720 (= tp!1895568 e!4151183)))

(declare-fun b!6890628 () Bool)

(assert (=> b!6890628 (= e!4151183 tp_is_empty!42835)))

(declare-fun b!6890629 () Bool)

(declare-fun tp!1895732 () Bool)

(declare-fun tp!1895733 () Bool)

(assert (=> b!6890629 (= e!4151183 (and tp!1895732 tp!1895733))))

(declare-fun b!6890631 () Bool)

(declare-fun tp!1895736 () Bool)

(declare-fun tp!1895735 () Bool)

(assert (=> b!6890631 (= e!4151183 (and tp!1895736 tp!1895735))))

(assert (= (and b!6889720 ((_ is ElementMatch!16805) (reg!17134 r1!6342))) b!6890628))

(assert (= (and b!6889720 ((_ is Concat!25650) (reg!17134 r1!6342))) b!6890629))

(assert (= (and b!6889720 ((_ is Star!16805) (reg!17134 r1!6342))) b!6890630))

(assert (= (and b!6889720 ((_ is Union!16805) (reg!17134 r1!6342))) b!6890631))

(declare-fun b!6890634 () Bool)

(declare-fun e!4151184 () Bool)

(declare-fun tp!1895739 () Bool)

(assert (=> b!6890634 (= e!4151184 tp!1895739)))

(assert (=> b!6889721 (= tp!1895571 e!4151184)))

(declare-fun b!6890632 () Bool)

(assert (=> b!6890632 (= e!4151184 tp_is_empty!42835)))

(declare-fun b!6890633 () Bool)

(declare-fun tp!1895737 () Bool)

(declare-fun tp!1895738 () Bool)

(assert (=> b!6890633 (= e!4151184 (and tp!1895737 tp!1895738))))

(declare-fun b!6890635 () Bool)

(declare-fun tp!1895741 () Bool)

(declare-fun tp!1895740 () Bool)

(assert (=> b!6890635 (= e!4151184 (and tp!1895741 tp!1895740))))

(assert (= (and b!6889721 ((_ is ElementMatch!16805) (regOne!34123 r1!6342))) b!6890632))

(assert (= (and b!6889721 ((_ is Concat!25650) (regOne!34123 r1!6342))) b!6890633))

(assert (= (and b!6889721 ((_ is Star!16805) (regOne!34123 r1!6342))) b!6890634))

(assert (= (and b!6889721 ((_ is Union!16805) (regOne!34123 r1!6342))) b!6890635))

(declare-fun b!6890638 () Bool)

(declare-fun e!4151185 () Bool)

(declare-fun tp!1895744 () Bool)

(assert (=> b!6890638 (= e!4151185 tp!1895744)))

(assert (=> b!6889721 (= tp!1895562 e!4151185)))

(declare-fun b!6890636 () Bool)

(assert (=> b!6890636 (= e!4151185 tp_is_empty!42835)))

(declare-fun b!6890637 () Bool)

(declare-fun tp!1895742 () Bool)

(declare-fun tp!1895743 () Bool)

(assert (=> b!6890637 (= e!4151185 (and tp!1895742 tp!1895743))))

(declare-fun b!6890639 () Bool)

(declare-fun tp!1895746 () Bool)

(declare-fun tp!1895745 () Bool)

(assert (=> b!6890639 (= e!4151185 (and tp!1895746 tp!1895745))))

(assert (= (and b!6889721 ((_ is ElementMatch!16805) (regTwo!34123 r1!6342))) b!6890636))

(assert (= (and b!6889721 ((_ is Concat!25650) (regTwo!34123 r1!6342))) b!6890637))

(assert (= (and b!6889721 ((_ is Star!16805) (regTwo!34123 r1!6342))) b!6890638))

(assert (= (and b!6889721 ((_ is Union!16805) (regTwo!34123 r1!6342))) b!6890639))

(declare-fun b!6890642 () Bool)

(declare-fun e!4151186 () Bool)

(declare-fun tp!1895749 () Bool)

(assert (=> b!6890642 (= e!4151186 tp!1895749)))

(assert (=> b!6889726 (= tp!1895574 e!4151186)))

(declare-fun b!6890640 () Bool)

(assert (=> b!6890640 (= e!4151186 tp_is_empty!42835)))

(declare-fun b!6890641 () Bool)

(declare-fun tp!1895747 () Bool)

(declare-fun tp!1895748 () Bool)

(assert (=> b!6890641 (= e!4151186 (and tp!1895747 tp!1895748))))

(declare-fun b!6890643 () Bool)

(declare-fun tp!1895751 () Bool)

(declare-fun tp!1895750 () Bool)

(assert (=> b!6890643 (= e!4151186 (and tp!1895751 tp!1895750))))

(assert (= (and b!6889726 ((_ is ElementMatch!16805) (reg!17134 r2!6280))) b!6890640))

(assert (= (and b!6889726 ((_ is Concat!25650) (reg!17134 r2!6280))) b!6890641))

(assert (= (and b!6889726 ((_ is Star!16805) (reg!17134 r2!6280))) b!6890642))

(assert (= (and b!6889726 ((_ is Union!16805) (reg!17134 r2!6280))) b!6890643))

(check-sat (not b!6890459) (not b!6890158) (not bm!626967) (not b!6890461) (not d!2160880) (not b!6890182) (not b!6889797) (not bm!626982) (not d!2161096) (not d!2160976) (not b!6890643) (not bm!626935) (not b!6890232) (not d!2161100) (not b!6890610) (not d!2160972) (not b!6890611) (not bm!626985) (not d!2160956) (not b!6890580) (not b!6890399) (not b!6890331) (not bm!626925) (not bm!626955) (not d!2160874) (not b!6890462) (not b!6890582) (not b!6890241) (not bm!626960) (not b!6890175) (not b!6890179) (not b!6890295) (not b!6890375) (not bm!626947) (not bm!626973) (not d!2161086) (not d!2160990) (not b!6890411) (not bm!626978) (not b!6889883) (not bm!626965) (not b!6890493) (not b!6890346) (not b!6890343) (not d!2161036) (not d!2160904) (not b!6890590) (not b!6890363) (not b!6890601) (not b!6890484) (not d!2160970) (not b!6890463) (not bm!626950) (not b!6890416) (not b!6889796) (not bm!626962) (not b!6890242) (not b!6890397) (not b!6890159) (not bm!626913) (not b!6890627) (not bm!626961) (not b!6890614) (not b!6890625) (not b!6889871) (not bm!626963) (not bm!626952) (not b!6890246) (not bm!626911) (not bm!626949) (not b!6889794) (not b!6890483) (not b!6890339) (not b!6890184) (not b!6889799) (not b!6890155) (not b!6890589) (not d!2161088) (not b!6890594) (not b!6890267) (not b!6889885) (not b!6890183) (not b!6890253) (not b!6889982) (not d!2160914) (not b!6890501) (not b!6890631) (not b!6890464) (not b!6889870) (not b!6890585) (not b!6890348) (not b!6890607) (not b!6890497) (not b!6890635) (not d!2160954) (not bm!626974) (not d!2161094) (not bm!626971) (not b!6890090) (not b!6890629) (not b!6890600) (not bm!626983) (not b!6889762) (not b!6890621) (not d!2161002) (not d!2160896) (not bm!626934) (not d!2160882) (not b!6890240) (not b!6890609) (not b!6890588) (not b!6890586) (not d!2161046) (not b!6890138) (not b!6890502) (not d!2161060) (not bm!626975) (not b!6889800) (not b!6890147) (not b!6890156) (not b!6890465) (not d!2160988) (not b!6890256) (not b!6890157) (not b!6890626) tp_is_empty!42835 (not bm!626984) (not d!2161098) (not b!6890613) (not b!6889886) (not d!2161000) (not d!2161092) (not b!6890642) (not b!6890634) (not b!6890597) (not d!2160918) (not b!6890321) (not b!6890615) (not b!6890584) (not b!6890262) (not b!6890602) (not b!6890598) (not b!6889989) (not d!2161056) (not d!2161054) (not d!2160916) (not b!6890236) (not bm!626996) (not d!2161028) (not b!6890593) (not d!2160998) (not b!6890592) (not d!2160962) (not d!2160934) (not b!6890228) (not d!2161004) (not b!6890095) (not b!6889992) (not d!2161042) (not b!6890328) (not b!6890619) (not b!6890250) (not b!6890641) (not b!6890347) (not bm!626958) (not d!2160888) (not b!6890239) (not b!6890617) (not d!2161078) (not b!6890581) (not b!6890255) (not b!6890638) (not d!2160906) (not b!6890618) (not d!2161090) (not b!6889798) (not b!6890223) (not b!6890500) (not b!6890330) (not b!6890349) (not b!6890362) (not b!6889986) (not b!6890392) (not b!6890325) (not d!2161084) (not b!6889880) (not d!2160900) (not b!6890623) (not b!6889884) (not b!6890370) (not b!6890639) (not d!2160878) (not b!6890400) (not bm!626959) (not b!6890185) (not d!2161032) (not b!6890153) (not b!6890329) (not b!6890313) (not b!6890622) (not b!6890633) (not b!6890596) (not b!6890637) (not d!2160968) (not b!6890630) (not b!6889882) (not bm!626979) (not b!6889990) (not b!6890503) (not b!6889991) (not b!6890254))
(check-sat)
