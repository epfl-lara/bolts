; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752964 () Bool)

(assert start!752964)

(declare-fun res!3164779 () Bool)

(declare-fun e!4714612 () Bool)

(assert (=> start!752964 (=> (not res!3164779) (not e!4714612))))

(declare-datatypes ((C!43552 0))(
  ( (C!43553 (val!32324 Int)) )
))
(declare-datatypes ((Regex!21607 0))(
  ( (ElementMatch!21607 (c!1469400 C!43552)) (Concat!30606 (regOne!43726 Regex!21607) (regTwo!43726 Regex!21607)) (EmptyExpr!21607) (Star!21607 (reg!21936 Regex!21607)) (EmptyLang!21607) (Union!21607 (regOne!43727 Regex!21607) (regTwo!43727 Regex!21607)) )
))
(declare-fun r!15422 () Regex!21607)

(declare-fun validRegex!11911 (Regex!21607) Bool)

(assert (=> start!752964 (= res!3164779 (validRegex!11911 r!15422))))

(assert (=> start!752964 e!4714612))

(declare-fun e!4714616 () Bool)

(assert (=> start!752964 e!4714616))

(assert (=> start!752964 true))

(declare-fun e!4714609 () Bool)

(assert (=> start!752964 e!4714609))

(declare-fun e!4714615 () Bool)

(assert (=> start!752964 e!4714615))

(declare-fun e!4714611 () Bool)

(assert (=> start!752964 e!4714611))

(declare-fun b!8003433 () Bool)

(declare-fun tp_is_empty!53757 () Bool)

(declare-fun tp!2394391 () Bool)

(assert (=> b!8003433 (= e!4714616 (and tp_is_empty!53757 tp!2394391))))

(declare-fun b!8003434 () Bool)

(declare-fun tp!2394392 () Bool)

(assert (=> b!8003434 (= e!4714615 tp!2394392)))

(declare-fun b!8003435 () Bool)

(declare-fun tp!2394387 () Bool)

(declare-fun tp!2394388 () Bool)

(assert (=> b!8003435 (= e!4714615 (and tp!2394387 tp!2394388))))

(declare-fun b!8003436 () Bool)

(declare-fun e!4714614 () Bool)

(declare-fun e!4714617 () Bool)

(assert (=> b!8003436 (= e!4714614 e!4714617)))

(declare-fun res!3164778 () Bool)

(assert (=> b!8003436 (=> (not res!3164778) (not e!4714617))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2713948 () Int)

(assert (=> b!8003436 (= res!3164778 (= testedPSize!271 lt!2713948))))

(declare-datatypes ((List!74836 0))(
  ( (Nil!74712) (Cons!74712 (h!81160 C!43552) (t!390579 List!74836)) )
))
(declare-fun testedP!353 () List!74836)

(declare-fun size!43509 (List!74836) Int)

(assert (=> b!8003436 (= lt!2713948 (size!43509 testedP!353))))

(declare-fun b!8003437 () Bool)

(assert (=> b!8003437 (= e!4714615 tp_is_empty!53757)))

(declare-fun b!8003438 () Bool)

(declare-fun e!4714610 () Bool)

(declare-fun lt!2713949 () Int)

(assert (=> b!8003438 (= e!4714610 (>= lt!2713949 lt!2713948))))

(declare-fun testedSuffix!271 () List!74836)

(declare-fun lt!2713950 () List!74836)

(assert (=> b!8003438 (= testedSuffix!271 lt!2713950)))

(declare-datatypes ((Unit!170608 0))(
  ( (Unit!170609) )
))
(declare-fun lt!2713947 () Unit!170608)

(declare-fun totalInput!1349 () List!74836)

(declare-fun lemmaSamePrefixThenSameSuffix!3024 (List!74836 List!74836 List!74836 List!74836 List!74836) Unit!170608)

(assert (=> b!8003438 (= lt!2713947 (lemmaSamePrefixThenSameSuffix!3024 testedP!353 testedSuffix!271 testedP!353 lt!2713950 totalInput!1349))))

(declare-fun getSuffix!3858 (List!74836 List!74836) List!74836)

(assert (=> b!8003438 (= lt!2713950 (getSuffix!3858 totalInput!1349 testedP!353))))

(declare-fun b!8003439 () Bool)

(assert (=> b!8003439 (= e!4714612 e!4714614)))

(declare-fun res!3164781 () Bool)

(assert (=> b!8003439 (=> (not res!3164781) (not e!4714614))))

(declare-fun lt!2713951 () List!74836)

(assert (=> b!8003439 (= res!3164781 (= lt!2713951 totalInput!1349))))

(declare-fun ++!18433 (List!74836 List!74836) List!74836)

(assert (=> b!8003439 (= lt!2713951 (++!18433 testedP!353 testedSuffix!271))))

(declare-fun b!8003440 () Bool)

(declare-fun tp!2394394 () Bool)

(assert (=> b!8003440 (= e!4714609 (and tp_is_empty!53757 tp!2394394))))

(declare-fun b!8003441 () Bool)

(declare-fun e!4714613 () Bool)

(assert (=> b!8003441 (= e!4714617 e!4714613)))

(declare-fun res!3164782 () Bool)

(assert (=> b!8003441 (=> (not res!3164782) (not e!4714613))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8003441 (= res!3164782 (= totalInputSize!629 lt!2713949))))

(assert (=> b!8003441 (= lt!2713949 (size!43509 totalInput!1349))))

(declare-fun b!8003442 () Bool)

(declare-fun tp!2394390 () Bool)

(assert (=> b!8003442 (= e!4714611 (and tp_is_empty!53757 tp!2394390))))

(declare-fun b!8003443 () Bool)

(declare-fun tp!2394389 () Bool)

(declare-fun tp!2394393 () Bool)

(assert (=> b!8003443 (= e!4714615 (and tp!2394389 tp!2394393))))

(declare-fun b!8003444 () Bool)

(assert (=> b!8003444 (= e!4714613 (not e!4714610))))

(declare-fun res!3164780 () Bool)

(assert (=> b!8003444 (=> res!3164780 e!4714610)))

(declare-fun isPrefix!6661 (List!74836 List!74836) Bool)

(assert (=> b!8003444 (= res!3164780 (not (isPrefix!6661 testedP!353 totalInput!1349)))))

(assert (=> b!8003444 (isPrefix!6661 testedP!353 lt!2713951)))

(declare-fun lt!2713946 () Unit!170608)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3892 (List!74836 List!74836) Unit!170608)

(assert (=> b!8003444 (= lt!2713946 (lemmaConcatTwoListThenFirstIsPrefix!3892 testedP!353 testedSuffix!271))))

(assert (= (and start!752964 res!3164779) b!8003439))

(assert (= (and b!8003439 res!3164781) b!8003436))

(assert (= (and b!8003436 res!3164778) b!8003441))

(assert (= (and b!8003441 res!3164782) b!8003444))

(assert (= (and b!8003444 (not res!3164780)) b!8003438))

(get-info :version)

(assert (= (and start!752964 ((_ is Cons!74712) totalInput!1349)) b!8003433))

(assert (= (and start!752964 ((_ is Cons!74712) testedSuffix!271)) b!8003440))

(assert (= (and start!752964 ((_ is ElementMatch!21607) r!15422)) b!8003437))

(assert (= (and start!752964 ((_ is Concat!30606) r!15422)) b!8003435))

(assert (= (and start!752964 ((_ is Star!21607) r!15422)) b!8003434))

(assert (= (and start!752964 ((_ is Union!21607) r!15422)) b!8003443))

(assert (= (and start!752964 ((_ is Cons!74712) testedP!353)) b!8003442))

(declare-fun m!8369464 () Bool)

(assert (=> start!752964 m!8369464))

(declare-fun m!8369466 () Bool)

(assert (=> b!8003441 m!8369466))

(declare-fun m!8369468 () Bool)

(assert (=> b!8003444 m!8369468))

(declare-fun m!8369470 () Bool)

(assert (=> b!8003444 m!8369470))

(declare-fun m!8369472 () Bool)

(assert (=> b!8003444 m!8369472))

(declare-fun m!8369474 () Bool)

(assert (=> b!8003438 m!8369474))

(declare-fun m!8369476 () Bool)

(assert (=> b!8003438 m!8369476))

(declare-fun m!8369478 () Bool)

(assert (=> b!8003436 m!8369478))

(declare-fun m!8369480 () Bool)

(assert (=> b!8003439 m!8369480))

(check-sat (not b!8003438) (not b!8003444) (not b!8003441) (not start!752964) (not b!8003435) (not b!8003439) (not b!8003436) (not b!8003442) (not b!8003434) tp_is_empty!53757 (not b!8003443) (not b!8003440) (not b!8003433))
(check-sat)
(get-model)

(declare-fun d!2386988 () Bool)

(declare-fun lt!2713954 () Int)

(assert (=> d!2386988 (>= lt!2713954 0)))

(declare-fun e!4714620 () Int)

(assert (=> d!2386988 (= lt!2713954 e!4714620)))

(declare-fun c!1469403 () Bool)

(assert (=> d!2386988 (= c!1469403 ((_ is Nil!74712) testedP!353))))

(assert (=> d!2386988 (= (size!43509 testedP!353) lt!2713954)))

(declare-fun b!8003449 () Bool)

(assert (=> b!8003449 (= e!4714620 0)))

(declare-fun b!8003450 () Bool)

(assert (=> b!8003450 (= e!4714620 (+ 1 (size!43509 (t!390579 testedP!353))))))

(assert (= (and d!2386988 c!1469403) b!8003449))

(assert (= (and d!2386988 (not c!1469403)) b!8003450))

(declare-fun m!8369482 () Bool)

(assert (=> b!8003450 m!8369482))

(assert (=> b!8003436 d!2386988))

(declare-fun d!2386992 () Bool)

(declare-fun lt!2713955 () Int)

(assert (=> d!2386992 (>= lt!2713955 0)))

(declare-fun e!4714621 () Int)

(assert (=> d!2386992 (= lt!2713955 e!4714621)))

(declare-fun c!1469404 () Bool)

(assert (=> d!2386992 (= c!1469404 ((_ is Nil!74712) totalInput!1349))))

(assert (=> d!2386992 (= (size!43509 totalInput!1349) lt!2713955)))

(declare-fun b!8003451 () Bool)

(assert (=> b!8003451 (= e!4714621 0)))

(declare-fun b!8003452 () Bool)

(assert (=> b!8003452 (= e!4714621 (+ 1 (size!43509 (t!390579 totalInput!1349))))))

(assert (= (and d!2386992 c!1469404) b!8003451))

(assert (= (and d!2386992 (not c!1469404)) b!8003452))

(declare-fun m!8369484 () Bool)

(assert (=> b!8003452 m!8369484))

(assert (=> b!8003441 d!2386992))

(declare-fun bm!743642 () Bool)

(declare-fun call!743647 () Bool)

(declare-fun c!1469413 () Bool)

(assert (=> bm!743642 (= call!743647 (validRegex!11911 (ite c!1469413 (regTwo!43727 r!15422) (regTwo!43726 r!15422))))))

(declare-fun b!8003483 () Bool)

(declare-fun e!4714647 () Bool)

(declare-fun e!4714644 () Bool)

(assert (=> b!8003483 (= e!4714647 e!4714644)))

(assert (=> b!8003483 (= c!1469413 ((_ is Union!21607) r!15422))))

(declare-fun b!8003484 () Bool)

(declare-fun res!3164803 () Bool)

(declare-fun e!4714643 () Bool)

(assert (=> b!8003484 (=> (not res!3164803) (not e!4714643))))

(declare-fun call!743649 () Bool)

(assert (=> b!8003484 (= res!3164803 call!743649)))

(assert (=> b!8003484 (= e!4714644 e!4714643)))

(declare-fun d!2386994 () Bool)

(declare-fun res!3164802 () Bool)

(declare-fun e!4714648 () Bool)

(assert (=> d!2386994 (=> res!3164802 e!4714648)))

(assert (=> d!2386994 (= res!3164802 ((_ is ElementMatch!21607) r!15422))))

(assert (=> d!2386994 (= (validRegex!11911 r!15422) e!4714648)))

(declare-fun b!8003485 () Bool)

(assert (=> b!8003485 (= e!4714643 call!743647)))

(declare-fun b!8003486 () Bool)

(declare-fun e!4714646 () Bool)

(declare-fun e!4714645 () Bool)

(assert (=> b!8003486 (= e!4714646 e!4714645)))

(declare-fun res!3164799 () Bool)

(assert (=> b!8003486 (=> (not res!3164799) (not e!4714645))))

(assert (=> b!8003486 (= res!3164799 call!743649)))

(declare-fun c!1469412 () Bool)

(declare-fun bm!743643 () Bool)

(declare-fun call!743648 () Bool)

(assert (=> bm!743643 (= call!743648 (validRegex!11911 (ite c!1469412 (reg!21936 r!15422) (ite c!1469413 (regOne!43727 r!15422) (regOne!43726 r!15422)))))))

(declare-fun b!8003487 () Bool)

(assert (=> b!8003487 (= e!4714645 call!743647)))

(declare-fun b!8003488 () Bool)

(declare-fun res!3164800 () Bool)

(assert (=> b!8003488 (=> res!3164800 e!4714646)))

(assert (=> b!8003488 (= res!3164800 (not ((_ is Concat!30606) r!15422)))))

(assert (=> b!8003488 (= e!4714644 e!4714646)))

(declare-fun b!8003489 () Bool)

(assert (=> b!8003489 (= e!4714648 e!4714647)))

(assert (=> b!8003489 (= c!1469412 ((_ is Star!21607) r!15422))))

(declare-fun bm!743644 () Bool)

(assert (=> bm!743644 (= call!743649 call!743648)))

(declare-fun b!8003490 () Bool)

(declare-fun e!4714642 () Bool)

(assert (=> b!8003490 (= e!4714647 e!4714642)))

(declare-fun res!3164801 () Bool)

(declare-fun nullable!9682 (Regex!21607) Bool)

(assert (=> b!8003490 (= res!3164801 (not (nullable!9682 (reg!21936 r!15422))))))

(assert (=> b!8003490 (=> (not res!3164801) (not e!4714642))))

(declare-fun b!8003491 () Bool)

(assert (=> b!8003491 (= e!4714642 call!743648)))

(assert (= (and d!2386994 (not res!3164802)) b!8003489))

(assert (= (and b!8003489 c!1469412) b!8003490))

(assert (= (and b!8003489 (not c!1469412)) b!8003483))

(assert (= (and b!8003490 res!3164801) b!8003491))

(assert (= (and b!8003483 c!1469413) b!8003484))

(assert (= (and b!8003483 (not c!1469413)) b!8003488))

(assert (= (and b!8003484 res!3164803) b!8003485))

(assert (= (and b!8003488 (not res!3164800)) b!8003486))

(assert (= (and b!8003486 res!3164799) b!8003487))

(assert (= (or b!8003485 b!8003487) bm!743642))

(assert (= (or b!8003484 b!8003486) bm!743644))

(assert (= (or b!8003491 bm!743644) bm!743643))

(declare-fun m!8369500 () Bool)

(assert (=> bm!743642 m!8369500))

(declare-fun m!8369502 () Bool)

(assert (=> bm!743643 m!8369502))

(declare-fun m!8369504 () Bool)

(assert (=> b!8003490 m!8369504))

(assert (=> start!752964 d!2386994))

(declare-fun b!8003516 () Bool)

(declare-fun res!3164809 () Bool)

(declare-fun e!4714660 () Bool)

(assert (=> b!8003516 (=> (not res!3164809) (not e!4714660))))

(declare-fun lt!2713971 () List!74836)

(assert (=> b!8003516 (= res!3164809 (= (size!43509 lt!2713971) (+ (size!43509 testedP!353) (size!43509 testedSuffix!271))))))

(declare-fun d!2387000 () Bool)

(assert (=> d!2387000 e!4714660))

(declare-fun res!3164808 () Bool)

(assert (=> d!2387000 (=> (not res!3164808) (not e!4714660))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15882 (List!74836) (InoxSet C!43552))

(assert (=> d!2387000 (= res!3164808 (= (content!15882 lt!2713971) ((_ map or) (content!15882 testedP!353) (content!15882 testedSuffix!271))))))

(declare-fun e!4714661 () List!74836)

(assert (=> d!2387000 (= lt!2713971 e!4714661)))

(declare-fun c!1469423 () Bool)

(assert (=> d!2387000 (= c!1469423 ((_ is Nil!74712) testedP!353))))

(assert (=> d!2387000 (= (++!18433 testedP!353 testedSuffix!271) lt!2713971)))

(declare-fun b!8003517 () Bool)

(assert (=> b!8003517 (= e!4714660 (or (not (= testedSuffix!271 Nil!74712)) (= lt!2713971 testedP!353)))))

(declare-fun b!8003514 () Bool)

(assert (=> b!8003514 (= e!4714661 testedSuffix!271)))

(declare-fun b!8003515 () Bool)

(assert (=> b!8003515 (= e!4714661 (Cons!74712 (h!81160 testedP!353) (++!18433 (t!390579 testedP!353) testedSuffix!271)))))

(assert (= (and d!2387000 c!1469423) b!8003514))

(assert (= (and d!2387000 (not c!1469423)) b!8003515))

(assert (= (and d!2387000 res!3164808) b!8003516))

(assert (= (and b!8003516 res!3164809) b!8003517))

(declare-fun m!8369516 () Bool)

(assert (=> b!8003516 m!8369516))

(assert (=> b!8003516 m!8369478))

(declare-fun m!8369518 () Bool)

(assert (=> b!8003516 m!8369518))

(declare-fun m!8369520 () Bool)

(assert (=> d!2387000 m!8369520))

(declare-fun m!8369522 () Bool)

(assert (=> d!2387000 m!8369522))

(declare-fun m!8369524 () Bool)

(assert (=> d!2387000 m!8369524))

(declare-fun m!8369526 () Bool)

(assert (=> b!8003515 m!8369526))

(assert (=> b!8003439 d!2387000))

(declare-fun b!8003546 () Bool)

(declare-fun e!4714682 () Bool)

(declare-fun tail!15836 (List!74836) List!74836)

(assert (=> b!8003546 (= e!4714682 (isPrefix!6661 (tail!15836 testedP!353) (tail!15836 totalInput!1349)))))

(declare-fun b!8003547 () Bool)

(declare-fun e!4714684 () Bool)

(assert (=> b!8003547 (= e!4714684 (>= (size!43509 totalInput!1349) (size!43509 testedP!353)))))

(declare-fun b!8003544 () Bool)

(declare-fun e!4714683 () Bool)

(assert (=> b!8003544 (= e!4714683 e!4714682)))

(declare-fun res!3164831 () Bool)

(assert (=> b!8003544 (=> (not res!3164831) (not e!4714682))))

(assert (=> b!8003544 (= res!3164831 (not ((_ is Nil!74712) totalInput!1349)))))

(declare-fun d!2387008 () Bool)

(assert (=> d!2387008 e!4714684))

(declare-fun res!3164830 () Bool)

(assert (=> d!2387008 (=> res!3164830 e!4714684)))

(declare-fun lt!2713974 () Bool)

(assert (=> d!2387008 (= res!3164830 (not lt!2713974))))

(assert (=> d!2387008 (= lt!2713974 e!4714683)))

(declare-fun res!3164828 () Bool)

(assert (=> d!2387008 (=> res!3164828 e!4714683)))

(assert (=> d!2387008 (= res!3164828 ((_ is Nil!74712) testedP!353))))

(assert (=> d!2387008 (= (isPrefix!6661 testedP!353 totalInput!1349) lt!2713974)))

(declare-fun b!8003545 () Bool)

(declare-fun res!3164829 () Bool)

(assert (=> b!8003545 (=> (not res!3164829) (not e!4714682))))

(declare-fun head!16309 (List!74836) C!43552)

(assert (=> b!8003545 (= res!3164829 (= (head!16309 testedP!353) (head!16309 totalInput!1349)))))

(assert (= (and d!2387008 (not res!3164828)) b!8003544))

(assert (= (and b!8003544 res!3164831) b!8003545))

(assert (= (and b!8003545 res!3164829) b!8003546))

(assert (= (and d!2387008 (not res!3164830)) b!8003547))

(declare-fun m!8369528 () Bool)

(assert (=> b!8003546 m!8369528))

(declare-fun m!8369530 () Bool)

(assert (=> b!8003546 m!8369530))

(assert (=> b!8003546 m!8369528))

(assert (=> b!8003546 m!8369530))

(declare-fun m!8369532 () Bool)

(assert (=> b!8003546 m!8369532))

(assert (=> b!8003547 m!8369466))

(assert (=> b!8003547 m!8369478))

(declare-fun m!8369534 () Bool)

(assert (=> b!8003545 m!8369534))

(declare-fun m!8369536 () Bool)

(assert (=> b!8003545 m!8369536))

(assert (=> b!8003444 d!2387008))

(declare-fun b!8003559 () Bool)

(declare-fun e!4714692 () Bool)

(assert (=> b!8003559 (= e!4714692 (isPrefix!6661 (tail!15836 testedP!353) (tail!15836 lt!2713951)))))

(declare-fun b!8003560 () Bool)

(declare-fun e!4714694 () Bool)

(assert (=> b!8003560 (= e!4714694 (>= (size!43509 lt!2713951) (size!43509 testedP!353)))))

(declare-fun b!8003557 () Bool)

(declare-fun e!4714693 () Bool)

(assert (=> b!8003557 (= e!4714693 e!4714692)))

(declare-fun res!3164840 () Bool)

(assert (=> b!8003557 (=> (not res!3164840) (not e!4714692))))

(assert (=> b!8003557 (= res!3164840 (not ((_ is Nil!74712) lt!2713951)))))

(declare-fun d!2387010 () Bool)

(assert (=> d!2387010 e!4714694))

(declare-fun res!3164839 () Bool)

(assert (=> d!2387010 (=> res!3164839 e!4714694)))

(declare-fun lt!2713975 () Bool)

(assert (=> d!2387010 (= res!3164839 (not lt!2713975))))

(assert (=> d!2387010 (= lt!2713975 e!4714693)))

(declare-fun res!3164837 () Bool)

(assert (=> d!2387010 (=> res!3164837 e!4714693)))

(assert (=> d!2387010 (= res!3164837 ((_ is Nil!74712) testedP!353))))

(assert (=> d!2387010 (= (isPrefix!6661 testedP!353 lt!2713951) lt!2713975)))

(declare-fun b!8003558 () Bool)

(declare-fun res!3164838 () Bool)

(assert (=> b!8003558 (=> (not res!3164838) (not e!4714692))))

(assert (=> b!8003558 (= res!3164838 (= (head!16309 testedP!353) (head!16309 lt!2713951)))))

(assert (= (and d!2387010 (not res!3164837)) b!8003557))

(assert (= (and b!8003557 res!3164840) b!8003558))

(assert (= (and b!8003558 res!3164838) b!8003559))

(assert (= (and d!2387010 (not res!3164839)) b!8003560))

(assert (=> b!8003559 m!8369528))

(declare-fun m!8369538 () Bool)

(assert (=> b!8003559 m!8369538))

(assert (=> b!8003559 m!8369528))

(assert (=> b!8003559 m!8369538))

(declare-fun m!8369540 () Bool)

(assert (=> b!8003559 m!8369540))

(declare-fun m!8369542 () Bool)

(assert (=> b!8003560 m!8369542))

(assert (=> b!8003560 m!8369478))

(assert (=> b!8003558 m!8369534))

(declare-fun m!8369544 () Bool)

(assert (=> b!8003558 m!8369544))

(assert (=> b!8003444 d!2387010))

(declare-fun d!2387012 () Bool)

(assert (=> d!2387012 (isPrefix!6661 testedP!353 (++!18433 testedP!353 testedSuffix!271))))

(declare-fun lt!2713978 () Unit!170608)

(declare-fun choose!60213 (List!74836 List!74836) Unit!170608)

(assert (=> d!2387012 (= lt!2713978 (choose!60213 testedP!353 testedSuffix!271))))

(assert (=> d!2387012 (= (lemmaConcatTwoListThenFirstIsPrefix!3892 testedP!353 testedSuffix!271) lt!2713978)))

(declare-fun bs!1970594 () Bool)

(assert (= bs!1970594 d!2387012))

(assert (=> bs!1970594 m!8369480))

(assert (=> bs!1970594 m!8369480))

(declare-fun m!8369552 () Bool)

(assert (=> bs!1970594 m!8369552))

(declare-fun m!8369554 () Bool)

(assert (=> bs!1970594 m!8369554))

(assert (=> b!8003444 d!2387012))

(declare-fun d!2387016 () Bool)

(assert (=> d!2387016 (= testedSuffix!271 lt!2713950)))

(declare-fun lt!2713983 () Unit!170608)

(declare-fun choose!60214 (List!74836 List!74836 List!74836 List!74836 List!74836) Unit!170608)

(assert (=> d!2387016 (= lt!2713983 (choose!60214 testedP!353 testedSuffix!271 testedP!353 lt!2713950 totalInput!1349))))

(assert (=> d!2387016 (isPrefix!6661 testedP!353 totalInput!1349)))

(assert (=> d!2387016 (= (lemmaSamePrefixThenSameSuffix!3024 testedP!353 testedSuffix!271 testedP!353 lt!2713950 totalInput!1349) lt!2713983)))

(declare-fun bs!1970595 () Bool)

(assert (= bs!1970595 d!2387016))

(declare-fun m!8369556 () Bool)

(assert (=> bs!1970595 m!8369556))

(assert (=> bs!1970595 m!8369468))

(assert (=> b!8003438 d!2387016))

(declare-fun d!2387018 () Bool)

(declare-fun lt!2713991 () List!74836)

(assert (=> d!2387018 (= (++!18433 testedP!353 lt!2713991) totalInput!1349)))

(declare-fun e!4714709 () List!74836)

(assert (=> d!2387018 (= lt!2713991 e!4714709)))

(declare-fun c!1469432 () Bool)

(assert (=> d!2387018 (= c!1469432 ((_ is Cons!74712) testedP!353))))

(assert (=> d!2387018 (>= (size!43509 totalInput!1349) (size!43509 testedP!353))))

(assert (=> d!2387018 (= (getSuffix!3858 totalInput!1349 testedP!353) lt!2713991)))

(declare-fun b!8003581 () Bool)

(assert (=> b!8003581 (= e!4714709 (getSuffix!3858 (tail!15836 totalInput!1349) (t!390579 testedP!353)))))

(declare-fun b!8003582 () Bool)

(assert (=> b!8003582 (= e!4714709 totalInput!1349)))

(assert (= (and d!2387018 c!1469432) b!8003581))

(assert (= (and d!2387018 (not c!1469432)) b!8003582))

(declare-fun m!8369578 () Bool)

(assert (=> d!2387018 m!8369578))

(assert (=> d!2387018 m!8369466))

(assert (=> d!2387018 m!8369478))

(assert (=> b!8003581 m!8369530))

(assert (=> b!8003581 m!8369530))

(declare-fun m!8369580 () Bool)

(assert (=> b!8003581 m!8369580))

(assert (=> b!8003438 d!2387018))

(declare-fun b!8003610 () Bool)

(declare-fun e!4714717 () Bool)

(declare-fun tp!2394422 () Bool)

(assert (=> b!8003610 (= e!4714717 tp!2394422)))

(declare-fun b!8003609 () Bool)

(declare-fun tp!2394420 () Bool)

(declare-fun tp!2394421 () Bool)

(assert (=> b!8003609 (= e!4714717 (and tp!2394420 tp!2394421))))

(assert (=> b!8003435 (= tp!2394387 e!4714717)))

(declare-fun b!8003608 () Bool)

(assert (=> b!8003608 (= e!4714717 tp_is_empty!53757)))

(declare-fun b!8003611 () Bool)

(declare-fun tp!2394418 () Bool)

(declare-fun tp!2394419 () Bool)

(assert (=> b!8003611 (= e!4714717 (and tp!2394418 tp!2394419))))

(assert (= (and b!8003435 ((_ is ElementMatch!21607) (regOne!43726 r!15422))) b!8003608))

(assert (= (and b!8003435 ((_ is Concat!30606) (regOne!43726 r!15422))) b!8003609))

(assert (= (and b!8003435 ((_ is Star!21607) (regOne!43726 r!15422))) b!8003610))

(assert (= (and b!8003435 ((_ is Union!21607) (regOne!43726 r!15422))) b!8003611))

(declare-fun b!8003618 () Bool)

(declare-fun e!4714719 () Bool)

(declare-fun tp!2394432 () Bool)

(assert (=> b!8003618 (= e!4714719 tp!2394432)))

(declare-fun b!8003617 () Bool)

(declare-fun tp!2394430 () Bool)

(declare-fun tp!2394431 () Bool)

(assert (=> b!8003617 (= e!4714719 (and tp!2394430 tp!2394431))))

(assert (=> b!8003435 (= tp!2394388 e!4714719)))

(declare-fun b!8003616 () Bool)

(assert (=> b!8003616 (= e!4714719 tp_is_empty!53757)))

(declare-fun b!8003619 () Bool)

(declare-fun tp!2394428 () Bool)

(declare-fun tp!2394429 () Bool)

(assert (=> b!8003619 (= e!4714719 (and tp!2394428 tp!2394429))))

(assert (= (and b!8003435 ((_ is ElementMatch!21607) (regTwo!43726 r!15422))) b!8003616))

(assert (= (and b!8003435 ((_ is Concat!30606) (regTwo!43726 r!15422))) b!8003617))

(assert (= (and b!8003435 ((_ is Star!21607) (regTwo!43726 r!15422))) b!8003618))

(assert (= (and b!8003435 ((_ is Union!21607) (regTwo!43726 r!15422))) b!8003619))

(declare-fun b!8003633 () Bool)

(declare-fun e!4714725 () Bool)

(declare-fun tp!2394446 () Bool)

(assert (=> b!8003633 (= e!4714725 (and tp_is_empty!53757 tp!2394446))))

(assert (=> b!8003440 (= tp!2394394 e!4714725)))

(assert (= (and b!8003440 ((_ is Cons!74712) (t!390579 testedSuffix!271))) b!8003633))

(declare-fun b!8003640 () Bool)

(declare-fun e!4714727 () Bool)

(declare-fun tp!2394456 () Bool)

(assert (=> b!8003640 (= e!4714727 tp!2394456)))

(declare-fun b!8003639 () Bool)

(declare-fun tp!2394454 () Bool)

(declare-fun tp!2394455 () Bool)

(assert (=> b!8003639 (= e!4714727 (and tp!2394454 tp!2394455))))

(assert (=> b!8003434 (= tp!2394392 e!4714727)))

(declare-fun b!8003638 () Bool)

(assert (=> b!8003638 (= e!4714727 tp_is_empty!53757)))

(declare-fun b!8003641 () Bool)

(declare-fun tp!2394452 () Bool)

(declare-fun tp!2394453 () Bool)

(assert (=> b!8003641 (= e!4714727 (and tp!2394452 tp!2394453))))

(assert (= (and b!8003434 ((_ is ElementMatch!21607) (reg!21936 r!15422))) b!8003638))

(assert (= (and b!8003434 ((_ is Concat!30606) (reg!21936 r!15422))) b!8003639))

(assert (= (and b!8003434 ((_ is Star!21607) (reg!21936 r!15422))) b!8003640))

(assert (= (and b!8003434 ((_ is Union!21607) (reg!21936 r!15422))) b!8003641))

(declare-fun b!8003646 () Bool)

(declare-fun e!4714729 () Bool)

(declare-fun tp!2394462 () Bool)

(assert (=> b!8003646 (= e!4714729 (and tp_is_empty!53757 tp!2394462))))

(assert (=> b!8003433 (= tp!2394391 e!4714729)))

(assert (= (and b!8003433 ((_ is Cons!74712) (t!390579 totalInput!1349))) b!8003646))

(declare-fun b!8003650 () Bool)

(declare-fun e!4714731 () Bool)

(declare-fun tp!2394468 () Bool)

(assert (=> b!8003650 (= e!4714731 tp!2394468)))

(declare-fun b!8003649 () Bool)

(declare-fun tp!2394466 () Bool)

(declare-fun tp!2394467 () Bool)

(assert (=> b!8003649 (= e!4714731 (and tp!2394466 tp!2394467))))

(assert (=> b!8003443 (= tp!2394389 e!4714731)))

(declare-fun b!8003648 () Bool)

(assert (=> b!8003648 (= e!4714731 tp_is_empty!53757)))

(declare-fun b!8003651 () Bool)

(declare-fun tp!2394464 () Bool)

(declare-fun tp!2394465 () Bool)

(assert (=> b!8003651 (= e!4714731 (and tp!2394464 tp!2394465))))

(assert (= (and b!8003443 ((_ is ElementMatch!21607) (regOne!43727 r!15422))) b!8003648))

(assert (= (and b!8003443 ((_ is Concat!30606) (regOne!43727 r!15422))) b!8003649))

(assert (= (and b!8003443 ((_ is Star!21607) (regOne!43727 r!15422))) b!8003650))

(assert (= (and b!8003443 ((_ is Union!21607) (regOne!43727 r!15422))) b!8003651))

(declare-fun b!8003654 () Bool)

(declare-fun e!4714732 () Bool)

(declare-fun tp!2394473 () Bool)

(assert (=> b!8003654 (= e!4714732 tp!2394473)))

(declare-fun b!8003653 () Bool)

(declare-fun tp!2394471 () Bool)

(declare-fun tp!2394472 () Bool)

(assert (=> b!8003653 (= e!4714732 (and tp!2394471 tp!2394472))))

(assert (=> b!8003443 (= tp!2394393 e!4714732)))

(declare-fun b!8003652 () Bool)

(assert (=> b!8003652 (= e!4714732 tp_is_empty!53757)))

(declare-fun b!8003655 () Bool)

(declare-fun tp!2394469 () Bool)

(declare-fun tp!2394470 () Bool)

(assert (=> b!8003655 (= e!4714732 (and tp!2394469 tp!2394470))))

(assert (= (and b!8003443 ((_ is ElementMatch!21607) (regTwo!43727 r!15422))) b!8003652))

(assert (= (and b!8003443 ((_ is Concat!30606) (regTwo!43727 r!15422))) b!8003653))

(assert (= (and b!8003443 ((_ is Star!21607) (regTwo!43727 r!15422))) b!8003654))

(assert (= (and b!8003443 ((_ is Union!21607) (regTwo!43727 r!15422))) b!8003655))

(declare-fun b!8003656 () Bool)

(declare-fun e!4714733 () Bool)

(declare-fun tp!2394474 () Bool)

(assert (=> b!8003656 (= e!4714733 (and tp_is_empty!53757 tp!2394474))))

(assert (=> b!8003442 (= tp!2394390 e!4714733)))

(assert (= (and b!8003442 ((_ is Cons!74712) (t!390579 testedP!353))) b!8003656))

(check-sat (not b!8003655) (not b!8003452) (not b!8003649) (not b!8003619) (not b!8003618) (not b!8003653) (not b!8003581) (not b!8003617) tp_is_empty!53757 (not b!8003559) (not b!8003558) (not b!8003560) (not d!2387012) (not d!2387000) (not b!8003490) (not b!8003610) (not b!8003515) (not b!8003656) (not b!8003651) (not b!8003640) (not bm!743643) (not bm!743642) (not b!8003609) (not b!8003639) (not b!8003516) (not b!8003654) (not b!8003547) (not b!8003633) (not b!8003611) (not b!8003545) (not b!8003641) (not b!8003546) (not b!8003646) (not b!8003450) (not d!2387016) (not b!8003650) (not d!2387018))
(check-sat)
