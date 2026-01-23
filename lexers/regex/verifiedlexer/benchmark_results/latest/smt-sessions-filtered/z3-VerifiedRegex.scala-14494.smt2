; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753872 () Bool)

(assert start!753872)

(declare-fun b!8011448 () Bool)

(declare-fun e!4719329 () Bool)

(declare-fun e!4719331 () Bool)

(assert (=> b!8011448 (= e!4719329 (not e!4719331))))

(declare-fun res!3167825 () Bool)

(assert (=> b!8011448 (=> res!3167825 e!4719331)))

(declare-datatypes ((C!43676 0))(
  ( (C!43677 (val!32386 Int)) )
))
(declare-datatypes ((List!74898 0))(
  ( (Nil!74774) (Cons!74774 (h!81222 C!43676) (t!390641 List!74898)) )
))
(declare-fun testedP!353 () List!74898)

(declare-fun totalInput!1349 () List!74898)

(declare-fun isPrefix!6721 (List!74898 List!74898) Bool)

(assert (=> b!8011448 (= res!3167825 (not (isPrefix!6721 testedP!353 totalInput!1349)))))

(declare-fun lt!2716930 () List!74898)

(assert (=> b!8011448 (isPrefix!6721 testedP!353 lt!2716930)))

(declare-datatypes ((Unit!170804 0))(
  ( (Unit!170805) )
))
(declare-fun lt!2716933 () Unit!170804)

(declare-fun testedSuffix!271 () List!74898)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3952 (List!74898 List!74898) Unit!170804)

(assert (=> b!8011448 (= lt!2716933 (lemmaConcatTwoListThenFirstIsPrefix!3952 testedP!353 testedSuffix!271))))

(declare-fun b!8011449 () Bool)

(declare-fun e!4719333 () Bool)

(declare-fun tp_is_empty!53881 () Bool)

(declare-fun tp!2397684 () Bool)

(assert (=> b!8011449 (= e!4719333 (and tp_is_empty!53881 tp!2397684))))

(declare-fun b!8011450 () Bool)

(declare-fun e!4719330 () Bool)

(assert (=> b!8011450 (= e!4719330 tp_is_empty!53881)))

(declare-fun b!8011451 () Bool)

(declare-fun e!4719336 () Bool)

(assert (=> b!8011451 (= e!4719336 e!4719329)))

(declare-fun res!3167819 () Bool)

(assert (=> b!8011451 (=> (not res!3167819) (not e!4719329))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2716931 () Int)

(assert (=> b!8011451 (= res!3167819 (= testedPSize!271 lt!2716931))))

(declare-fun size!43571 (List!74898) Int)

(assert (=> b!8011451 (= lt!2716931 (size!43571 testedP!353))))

(declare-fun b!8011452 () Bool)

(declare-fun e!4719334 () Bool)

(assert (=> b!8011452 (= e!4719334 e!4719336)))

(declare-fun res!3167823 () Bool)

(assert (=> b!8011452 (=> (not res!3167823) (not e!4719336))))

(assert (=> b!8011452 (= res!3167823 (= lt!2716930 totalInput!1349))))

(declare-fun ++!18495 (List!74898 List!74898) List!74898)

(assert (=> b!8011452 (= lt!2716930 (++!18495 testedP!353 testedSuffix!271))))

(declare-fun b!8011453 () Bool)

(declare-fun e!4719332 () Bool)

(declare-fun tp!2397689 () Bool)

(assert (=> b!8011453 (= e!4719332 (and tp_is_empty!53881 tp!2397689))))

(declare-fun b!8011455 () Bool)

(declare-fun res!3167824 () Bool)

(assert (=> b!8011455 (=> (not res!3167824) (not e!4719329))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8011455 (= res!3167824 (= totalInputSize!629 (size!43571 totalInput!1349)))))

(declare-fun b!8011456 () Bool)

(declare-fun tp!2397685 () Bool)

(declare-fun tp!2397688 () Bool)

(assert (=> b!8011456 (= e!4719330 (and tp!2397685 tp!2397688))))

(declare-fun b!8011457 () Bool)

(declare-fun e!4719337 () Bool)

(assert (=> b!8011457 (= e!4719331 e!4719337)))

(declare-fun res!3167821 () Bool)

(assert (=> b!8011457 (=> res!3167821 e!4719337)))

(declare-datatypes ((Regex!21669 0))(
  ( (ElementMatch!21669 (c!1470508 C!43676)) (Concat!30668 (regOne!43850 Regex!21669) (regTwo!43850 Regex!21669)) (EmptyExpr!21669) (Star!21669 (reg!21998 Regex!21669)) (EmptyLang!21669) (Union!21669 (regOne!43851 Regex!21669) (regTwo!43851 Regex!21669)) )
))
(declare-fun r!15422 () Regex!21669)

(declare-fun lostCause!2056 (Regex!21669) Bool)

(assert (=> b!8011457 (= res!3167821 (not (lostCause!2056 r!15422)))))

(declare-fun lt!2716929 () List!74898)

(assert (=> b!8011457 (and (= testedSuffix!271 lt!2716929) (= lt!2716929 testedSuffix!271))))

(declare-fun lt!2716932 () Unit!170804)

(declare-fun lemmaSamePrefixThenSameSuffix!3078 (List!74898 List!74898 List!74898 List!74898 List!74898) Unit!170804)

(assert (=> b!8011457 (= lt!2716932 (lemmaSamePrefixThenSameSuffix!3078 testedP!353 testedSuffix!271 testedP!353 lt!2716929 totalInput!1349))))

(declare-fun getSuffix!3916 (List!74898 List!74898) List!74898)

(assert (=> b!8011457 (= lt!2716929 (getSuffix!3916 totalInput!1349 testedP!353))))

(declare-fun b!8011458 () Bool)

(declare-fun e!4719335 () Bool)

(declare-fun tp!2397687 () Bool)

(assert (=> b!8011458 (= e!4719335 (and tp_is_empty!53881 tp!2397687))))

(declare-fun b!8011459 () Bool)

(declare-fun e!4719327 () Bool)

(declare-fun e!4719328 () Bool)

(assert (=> b!8011459 (= e!4719327 e!4719328)))

(declare-fun res!3167820 () Bool)

(assert (=> b!8011459 (=> res!3167820 e!4719328)))

(assert (=> b!8011459 (= res!3167820 true)))

(declare-fun b!8011460 () Bool)

(declare-fun tp!2397690 () Bool)

(assert (=> b!8011460 (= e!4719330 tp!2397690)))

(declare-fun b!8011454 () Bool)

(declare-fun tp!2397683 () Bool)

(declare-fun tp!2397686 () Bool)

(assert (=> b!8011454 (= e!4719330 (and tp!2397683 tp!2397686))))

(declare-fun res!3167822 () Bool)

(assert (=> start!753872 (=> (not res!3167822) (not e!4719334))))

(declare-fun validRegex!11973 (Regex!21669) Bool)

(assert (=> start!753872 (= res!3167822 (validRegex!11973 r!15422))))

(assert (=> start!753872 e!4719334))

(assert (=> start!753872 e!4719333))

(assert (=> start!753872 true))

(assert (=> start!753872 e!4719335))

(assert (=> start!753872 e!4719330))

(assert (=> start!753872 e!4719332))

(declare-fun b!8011461 () Bool)

(assert (=> b!8011461 (= e!4719328 (>= (size!43571 Nil!74774) lt!2716931))))

(declare-fun b!8011462 () Bool)

(assert (=> b!8011462 (= e!4719337 e!4719327)))

(declare-fun res!3167826 () Bool)

(assert (=> b!8011462 (=> (not res!3167826) (not e!4719327))))

(assert (=> b!8011462 (= res!3167826 (= (++!18495 Nil!74774 totalInput!1349) totalInput!1349))))

(assert (= (and start!753872 res!3167822) b!8011452))

(assert (= (and b!8011452 res!3167823) b!8011451))

(assert (= (and b!8011451 res!3167819) b!8011455))

(assert (= (and b!8011455 res!3167824) b!8011448))

(assert (= (and b!8011448 (not res!3167825)) b!8011457))

(assert (= (and b!8011457 (not res!3167821)) b!8011462))

(assert (= (and b!8011462 res!3167826) b!8011459))

(assert (= (and b!8011459 (not res!3167820)) b!8011461))

(get-info :version)

(assert (= (and start!753872 ((_ is Cons!74774) totalInput!1349)) b!8011449))

(assert (= (and start!753872 ((_ is Cons!74774) testedSuffix!271)) b!8011458))

(assert (= (and start!753872 ((_ is ElementMatch!21669) r!15422)) b!8011450))

(assert (= (and start!753872 ((_ is Concat!30668) r!15422)) b!8011454))

(assert (= (and start!753872 ((_ is Star!21669) r!15422)) b!8011460))

(assert (= (and start!753872 ((_ is Union!21669) r!15422)) b!8011456))

(assert (= (and start!753872 ((_ is Cons!74774) testedP!353)) b!8011453))

(declare-fun m!8375366 () Bool)

(assert (=> b!8011457 m!8375366))

(declare-fun m!8375368 () Bool)

(assert (=> b!8011457 m!8375368))

(declare-fun m!8375370 () Bool)

(assert (=> b!8011457 m!8375370))

(declare-fun m!8375372 () Bool)

(assert (=> b!8011461 m!8375372))

(declare-fun m!8375374 () Bool)

(assert (=> b!8011452 m!8375374))

(declare-fun m!8375376 () Bool)

(assert (=> b!8011455 m!8375376))

(declare-fun m!8375378 () Bool)

(assert (=> b!8011451 m!8375378))

(declare-fun m!8375380 () Bool)

(assert (=> start!753872 m!8375380))

(declare-fun m!8375382 () Bool)

(assert (=> b!8011448 m!8375382))

(declare-fun m!8375384 () Bool)

(assert (=> b!8011448 m!8375384))

(declare-fun m!8375386 () Bool)

(assert (=> b!8011448 m!8375386))

(declare-fun m!8375388 () Bool)

(assert (=> b!8011462 m!8375388))

(check-sat (not b!8011451) (not b!8011462) (not start!753872) (not b!8011452) (not b!8011454) (not b!8011449) (not b!8011448) (not b!8011461) (not b!8011455) (not b!8011460) (not b!8011453) (not b!8011458) (not b!8011457) (not b!8011456) tp_is_empty!53881)
(check-sat)
(get-model)

(declare-fun d!2388633 () Bool)

(declare-fun lt!2716938 () Int)

(assert (=> d!2388633 (>= lt!2716938 0)))

(declare-fun e!4719344 () Int)

(assert (=> d!2388633 (= lt!2716938 e!4719344)))

(declare-fun c!1470513 () Bool)

(assert (=> d!2388633 (= c!1470513 ((_ is Nil!74774) Nil!74774))))

(assert (=> d!2388633 (= (size!43571 Nil!74774) lt!2716938)))

(declare-fun b!8011475 () Bool)

(assert (=> b!8011475 (= e!4719344 0)))

(declare-fun b!8011476 () Bool)

(assert (=> b!8011476 (= e!4719344 (+ 1 (size!43571 (t!390641 Nil!74774))))))

(assert (= (and d!2388633 c!1470513) b!8011475))

(assert (= (and d!2388633 (not c!1470513)) b!8011476))

(declare-fun m!8375390 () Bool)

(assert (=> b!8011476 m!8375390))

(assert (=> b!8011461 d!2388633))

(declare-fun d!2388635 () Bool)

(declare-fun lt!2716940 () Int)

(assert (=> d!2388635 (>= lt!2716940 0)))

(declare-fun e!4719347 () Int)

(assert (=> d!2388635 (= lt!2716940 e!4719347)))

(declare-fun c!1470515 () Bool)

(assert (=> d!2388635 (= c!1470515 ((_ is Nil!74774) totalInput!1349))))

(assert (=> d!2388635 (= (size!43571 totalInput!1349) lt!2716940)))

(declare-fun b!8011481 () Bool)

(assert (=> b!8011481 (= e!4719347 0)))

(declare-fun b!8011482 () Bool)

(assert (=> b!8011482 (= e!4719347 (+ 1 (size!43571 (t!390641 totalInput!1349))))))

(assert (= (and d!2388635 c!1470515) b!8011481))

(assert (= (and d!2388635 (not c!1470515)) b!8011482))

(declare-fun m!8375394 () Bool)

(assert (=> b!8011482 m!8375394))

(assert (=> b!8011455 d!2388635))

(declare-fun b!8011517 () Bool)

(declare-fun res!3167847 () Bool)

(declare-fun e!4719370 () Bool)

(assert (=> b!8011517 (=> (not res!3167847) (not e!4719370))))

(declare-fun lt!2716946 () List!74898)

(assert (=> b!8011517 (= res!3167847 (= (size!43571 lt!2716946) (+ (size!43571 testedP!353) (size!43571 testedSuffix!271))))))

(declare-fun b!8011518 () Bool)

(assert (=> b!8011518 (= e!4719370 (or (not (= testedSuffix!271 Nil!74774)) (= lt!2716946 testedP!353)))))

(declare-fun d!2388637 () Bool)

(assert (=> d!2388637 e!4719370))

(declare-fun res!3167848 () Bool)

(assert (=> d!2388637 (=> (not res!3167848) (not e!4719370))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15908 (List!74898) (InoxSet C!43676))

(assert (=> d!2388637 (= res!3167848 (= (content!15908 lt!2716946) ((_ map or) (content!15908 testedP!353) (content!15908 testedSuffix!271))))))

(declare-fun e!4719369 () List!74898)

(assert (=> d!2388637 (= lt!2716946 e!4719369)))

(declare-fun c!1470525 () Bool)

(assert (=> d!2388637 (= c!1470525 ((_ is Nil!74774) testedP!353))))

(assert (=> d!2388637 (= (++!18495 testedP!353 testedSuffix!271) lt!2716946)))

(declare-fun b!8011515 () Bool)

(assert (=> b!8011515 (= e!4719369 testedSuffix!271)))

(declare-fun b!8011516 () Bool)

(assert (=> b!8011516 (= e!4719369 (Cons!74774 (h!81222 testedP!353) (++!18495 (t!390641 testedP!353) testedSuffix!271)))))

(assert (= (and d!2388637 c!1470525) b!8011515))

(assert (= (and d!2388637 (not c!1470525)) b!8011516))

(assert (= (and d!2388637 res!3167848) b!8011517))

(assert (= (and b!8011517 res!3167847) b!8011518))

(declare-fun m!8375406 () Bool)

(assert (=> b!8011517 m!8375406))

(assert (=> b!8011517 m!8375378))

(declare-fun m!8375408 () Bool)

(assert (=> b!8011517 m!8375408))

(declare-fun m!8375410 () Bool)

(assert (=> d!2388637 m!8375410))

(declare-fun m!8375412 () Bool)

(assert (=> d!2388637 m!8375412))

(declare-fun m!8375414 () Bool)

(assert (=> d!2388637 m!8375414))

(declare-fun m!8375416 () Bool)

(assert (=> b!8011516 m!8375416))

(assert (=> b!8011452 d!2388637))

(declare-fun d!2388643 () Bool)

(declare-fun lostCauseFct!605 (Regex!21669) Bool)

(assert (=> d!2388643 (= (lostCause!2056 r!15422) (lostCauseFct!605 r!15422))))

(declare-fun bs!1970865 () Bool)

(assert (= bs!1970865 d!2388643))

(declare-fun m!8375418 () Bool)

(assert (=> bs!1970865 m!8375418))

(assert (=> b!8011457 d!2388643))

(declare-fun d!2388645 () Bool)

(assert (=> d!2388645 (= testedSuffix!271 lt!2716929)))

(declare-fun lt!2716949 () Unit!170804)

(declare-fun choose!60342 (List!74898 List!74898 List!74898 List!74898 List!74898) Unit!170804)

(assert (=> d!2388645 (= lt!2716949 (choose!60342 testedP!353 testedSuffix!271 testedP!353 lt!2716929 totalInput!1349))))

(assert (=> d!2388645 (isPrefix!6721 testedP!353 totalInput!1349)))

(assert (=> d!2388645 (= (lemmaSamePrefixThenSameSuffix!3078 testedP!353 testedSuffix!271 testedP!353 lt!2716929 totalInput!1349) lt!2716949)))

(declare-fun bs!1970866 () Bool)

(assert (= bs!1970866 d!2388645))

(declare-fun m!8375420 () Bool)

(assert (=> bs!1970866 m!8375420))

(assert (=> bs!1970866 m!8375382))

(assert (=> b!8011457 d!2388645))

(declare-fun d!2388647 () Bool)

(declare-fun lt!2716955 () List!74898)

(assert (=> d!2388647 (= (++!18495 testedP!353 lt!2716955) totalInput!1349)))

(declare-fun e!4719385 () List!74898)

(assert (=> d!2388647 (= lt!2716955 e!4719385)))

(declare-fun c!1470531 () Bool)

(assert (=> d!2388647 (= c!1470531 ((_ is Cons!74774) testedP!353))))

(assert (=> d!2388647 (>= (size!43571 totalInput!1349) (size!43571 testedP!353))))

(assert (=> d!2388647 (= (getSuffix!3916 totalInput!1349 testedP!353) lt!2716955)))

(declare-fun b!8011540 () Bool)

(declare-fun tail!15872 (List!74898) List!74898)

(assert (=> b!8011540 (= e!4719385 (getSuffix!3916 (tail!15872 totalInput!1349) (t!390641 testedP!353)))))

(declare-fun b!8011541 () Bool)

(assert (=> b!8011541 (= e!4719385 totalInput!1349)))

(assert (= (and d!2388647 c!1470531) b!8011540))

(assert (= (and d!2388647 (not c!1470531)) b!8011541))

(declare-fun m!8375430 () Bool)

(assert (=> d!2388647 m!8375430))

(assert (=> d!2388647 m!8375376))

(assert (=> d!2388647 m!8375378))

(declare-fun m!8375432 () Bool)

(assert (=> b!8011540 m!8375432))

(assert (=> b!8011540 m!8375432))

(declare-fun m!8375434 () Bool)

(assert (=> b!8011540 m!8375434))

(assert (=> b!8011457 d!2388647))

(declare-fun b!8011546 () Bool)

(declare-fun res!3167862 () Bool)

(declare-fun e!4719389 () Bool)

(assert (=> b!8011546 (=> (not res!3167862) (not e!4719389))))

(declare-fun lt!2716956 () List!74898)

(assert (=> b!8011546 (= res!3167862 (= (size!43571 lt!2716956) (+ (size!43571 Nil!74774) (size!43571 totalInput!1349))))))

(declare-fun b!8011547 () Bool)

(assert (=> b!8011547 (= e!4719389 (or (not (= totalInput!1349 Nil!74774)) (= lt!2716956 Nil!74774)))))

(declare-fun d!2388653 () Bool)

(assert (=> d!2388653 e!4719389))

(declare-fun res!3167863 () Bool)

(assert (=> d!2388653 (=> (not res!3167863) (not e!4719389))))

(assert (=> d!2388653 (= res!3167863 (= (content!15908 lt!2716956) ((_ map or) (content!15908 Nil!74774) (content!15908 totalInput!1349))))))

(declare-fun e!4719388 () List!74898)

(assert (=> d!2388653 (= lt!2716956 e!4719388)))

(declare-fun c!1470532 () Bool)

(assert (=> d!2388653 (= c!1470532 ((_ is Nil!74774) Nil!74774))))

(assert (=> d!2388653 (= (++!18495 Nil!74774 totalInput!1349) lt!2716956)))

(declare-fun b!8011544 () Bool)

(assert (=> b!8011544 (= e!4719388 totalInput!1349)))

(declare-fun b!8011545 () Bool)

(assert (=> b!8011545 (= e!4719388 (Cons!74774 (h!81222 Nil!74774) (++!18495 (t!390641 Nil!74774) totalInput!1349)))))

(assert (= (and d!2388653 c!1470532) b!8011544))

(assert (= (and d!2388653 (not c!1470532)) b!8011545))

(assert (= (and d!2388653 res!3167863) b!8011546))

(assert (= (and b!8011546 res!3167862) b!8011547))

(declare-fun m!8375436 () Bool)

(assert (=> b!8011546 m!8375436))

(assert (=> b!8011546 m!8375372))

(assert (=> b!8011546 m!8375376))

(declare-fun m!8375438 () Bool)

(assert (=> d!2388653 m!8375438))

(declare-fun m!8375440 () Bool)

(assert (=> d!2388653 m!8375440))

(declare-fun m!8375442 () Bool)

(assert (=> d!2388653 m!8375442))

(declare-fun m!8375444 () Bool)

(assert (=> b!8011545 m!8375444))

(assert (=> b!8011462 d!2388653))

(declare-fun d!2388655 () Bool)

(declare-fun lt!2716957 () Int)

(assert (=> d!2388655 (>= lt!2716957 0)))

(declare-fun e!4719390 () Int)

(assert (=> d!2388655 (= lt!2716957 e!4719390)))

(declare-fun c!1470533 () Bool)

(assert (=> d!2388655 (= c!1470533 ((_ is Nil!74774) testedP!353))))

(assert (=> d!2388655 (= (size!43571 testedP!353) lt!2716957)))

(declare-fun b!8011548 () Bool)

(assert (=> b!8011548 (= e!4719390 0)))

(declare-fun b!8011549 () Bool)

(assert (=> b!8011549 (= e!4719390 (+ 1 (size!43571 (t!390641 testedP!353))))))

(assert (= (and d!2388655 c!1470533) b!8011548))

(assert (= (and d!2388655 (not c!1470533)) b!8011549))

(declare-fun m!8375446 () Bool)

(assert (=> b!8011549 m!8375446))

(assert (=> b!8011451 d!2388655))

(declare-fun b!8011573 () Bool)

(declare-fun res!3167884 () Bool)

(declare-fun e!4719407 () Bool)

(assert (=> b!8011573 (=> (not res!3167884) (not e!4719407))))

(declare-fun head!16349 (List!74898) C!43676)

(assert (=> b!8011573 (= res!3167884 (= (head!16349 testedP!353) (head!16349 totalInput!1349)))))

(declare-fun b!8011572 () Bool)

(declare-fun e!4719406 () Bool)

(assert (=> b!8011572 (= e!4719406 e!4719407)))

(declare-fun res!3167883 () Bool)

(assert (=> b!8011572 (=> (not res!3167883) (not e!4719407))))

(assert (=> b!8011572 (= res!3167883 (not ((_ is Nil!74774) totalInput!1349)))))

(declare-fun b!8011575 () Bool)

(declare-fun e!4719408 () Bool)

(assert (=> b!8011575 (= e!4719408 (>= (size!43571 totalInput!1349) (size!43571 testedP!353)))))

(declare-fun b!8011574 () Bool)

(assert (=> b!8011574 (= e!4719407 (isPrefix!6721 (tail!15872 testedP!353) (tail!15872 totalInput!1349)))))

(declare-fun d!2388657 () Bool)

(assert (=> d!2388657 e!4719408))

(declare-fun res!3167885 () Bool)

(assert (=> d!2388657 (=> res!3167885 e!4719408)))

(declare-fun lt!2716967 () Bool)

(assert (=> d!2388657 (= res!3167885 (not lt!2716967))))

(assert (=> d!2388657 (= lt!2716967 e!4719406)))

(declare-fun res!3167882 () Bool)

(assert (=> d!2388657 (=> res!3167882 e!4719406)))

(assert (=> d!2388657 (= res!3167882 ((_ is Nil!74774) testedP!353))))

(assert (=> d!2388657 (= (isPrefix!6721 testedP!353 totalInput!1349) lt!2716967)))

(assert (= (and d!2388657 (not res!3167882)) b!8011572))

(assert (= (and b!8011572 res!3167883) b!8011573))

(assert (= (and b!8011573 res!3167884) b!8011574))

(assert (= (and d!2388657 (not res!3167885)) b!8011575))

(declare-fun m!8375484 () Bool)

(assert (=> b!8011573 m!8375484))

(declare-fun m!8375486 () Bool)

(assert (=> b!8011573 m!8375486))

(assert (=> b!8011575 m!8375376))

(assert (=> b!8011575 m!8375378))

(declare-fun m!8375488 () Bool)

(assert (=> b!8011574 m!8375488))

(assert (=> b!8011574 m!8375432))

(assert (=> b!8011574 m!8375488))

(assert (=> b!8011574 m!8375432))

(declare-fun m!8375490 () Bool)

(assert (=> b!8011574 m!8375490))

(assert (=> b!8011448 d!2388657))

(declare-fun b!8011577 () Bool)

(declare-fun res!3167888 () Bool)

(declare-fun e!4719410 () Bool)

(assert (=> b!8011577 (=> (not res!3167888) (not e!4719410))))

(assert (=> b!8011577 (= res!3167888 (= (head!16349 testedP!353) (head!16349 lt!2716930)))))

(declare-fun b!8011576 () Bool)

(declare-fun e!4719409 () Bool)

(assert (=> b!8011576 (= e!4719409 e!4719410)))

(declare-fun res!3167887 () Bool)

(assert (=> b!8011576 (=> (not res!3167887) (not e!4719410))))

(assert (=> b!8011576 (= res!3167887 (not ((_ is Nil!74774) lt!2716930)))))

(declare-fun b!8011579 () Bool)

(declare-fun e!4719411 () Bool)

(assert (=> b!8011579 (= e!4719411 (>= (size!43571 lt!2716930) (size!43571 testedP!353)))))

(declare-fun b!8011578 () Bool)

(assert (=> b!8011578 (= e!4719410 (isPrefix!6721 (tail!15872 testedP!353) (tail!15872 lt!2716930)))))

(declare-fun d!2388669 () Bool)

(assert (=> d!2388669 e!4719411))

(declare-fun res!3167889 () Bool)

(assert (=> d!2388669 (=> res!3167889 e!4719411)))

(declare-fun lt!2716968 () Bool)

(assert (=> d!2388669 (= res!3167889 (not lt!2716968))))

(assert (=> d!2388669 (= lt!2716968 e!4719409)))

(declare-fun res!3167886 () Bool)

(assert (=> d!2388669 (=> res!3167886 e!4719409)))

(assert (=> d!2388669 (= res!3167886 ((_ is Nil!74774) testedP!353))))

(assert (=> d!2388669 (= (isPrefix!6721 testedP!353 lt!2716930) lt!2716968)))

(assert (= (and d!2388669 (not res!3167886)) b!8011576))

(assert (= (and b!8011576 res!3167887) b!8011577))

(assert (= (and b!8011577 res!3167888) b!8011578))

(assert (= (and d!2388669 (not res!3167889)) b!8011579))

(assert (=> b!8011577 m!8375484))

(declare-fun m!8375492 () Bool)

(assert (=> b!8011577 m!8375492))

(declare-fun m!8375494 () Bool)

(assert (=> b!8011579 m!8375494))

(assert (=> b!8011579 m!8375378))

(assert (=> b!8011578 m!8375488))

(declare-fun m!8375496 () Bool)

(assert (=> b!8011578 m!8375496))

(assert (=> b!8011578 m!8375488))

(assert (=> b!8011578 m!8375496))

(declare-fun m!8375498 () Bool)

(assert (=> b!8011578 m!8375498))

(assert (=> b!8011448 d!2388669))

(declare-fun d!2388671 () Bool)

(assert (=> d!2388671 (isPrefix!6721 testedP!353 (++!18495 testedP!353 testedSuffix!271))))

(declare-fun lt!2716973 () Unit!170804)

(declare-fun choose!60345 (List!74898 List!74898) Unit!170804)

(assert (=> d!2388671 (= lt!2716973 (choose!60345 testedP!353 testedSuffix!271))))

(assert (=> d!2388671 (= (lemmaConcatTwoListThenFirstIsPrefix!3952 testedP!353 testedSuffix!271) lt!2716973)))

(declare-fun bs!1970869 () Bool)

(assert (= bs!1970869 d!2388671))

(assert (=> bs!1970869 m!8375374))

(assert (=> bs!1970869 m!8375374))

(declare-fun m!8375502 () Bool)

(assert (=> bs!1970869 m!8375502))

(declare-fun m!8375504 () Bool)

(assert (=> bs!1970869 m!8375504))

(assert (=> b!8011448 d!2388671))

(declare-fun call!744212 () Bool)

(declare-fun bm!744205 () Bool)

(declare-fun c!1470544 () Bool)

(declare-fun c!1470543 () Bool)

(assert (=> bm!744205 (= call!744212 (validRegex!11973 (ite c!1470544 (reg!21998 r!15422) (ite c!1470543 (regTwo!43851 r!15422) (regTwo!43850 r!15422)))))))

(declare-fun b!8011641 () Bool)

(declare-fun res!3167903 () Bool)

(declare-fun e!4719445 () Bool)

(assert (=> b!8011641 (=> (not res!3167903) (not e!4719445))))

(declare-fun call!744211 () Bool)

(assert (=> b!8011641 (= res!3167903 call!744211)))

(declare-fun e!4719447 () Bool)

(assert (=> b!8011641 (= e!4719447 e!4719445)))

(declare-fun d!2388675 () Bool)

(declare-fun res!3167902 () Bool)

(declare-fun e!4719444 () Bool)

(assert (=> d!2388675 (=> res!3167902 e!4719444)))

(assert (=> d!2388675 (= res!3167902 ((_ is ElementMatch!21669) r!15422))))

(assert (=> d!2388675 (= (validRegex!11973 r!15422) e!4719444)))

(declare-fun bm!744206 () Bool)

(declare-fun call!744210 () Bool)

(assert (=> bm!744206 (= call!744210 call!744212)))

(declare-fun b!8011642 () Bool)

(assert (=> b!8011642 (= e!4719445 call!744210)))

(declare-fun b!8011643 () Bool)

(declare-fun res!3167900 () Bool)

(declare-fun e!4719441 () Bool)

(assert (=> b!8011643 (=> res!3167900 e!4719441)))

(assert (=> b!8011643 (= res!3167900 (not ((_ is Concat!30668) r!15422)))))

(assert (=> b!8011643 (= e!4719447 e!4719441)))

(declare-fun b!8011644 () Bool)

(declare-fun e!4719446 () Bool)

(assert (=> b!8011644 (= e!4719446 call!744212)))

(declare-fun b!8011645 () Bool)

(declare-fun e!4719443 () Bool)

(assert (=> b!8011645 (= e!4719441 e!4719443)))

(declare-fun res!3167904 () Bool)

(assert (=> b!8011645 (=> (not res!3167904) (not e!4719443))))

(assert (=> b!8011645 (= res!3167904 call!744211)))

(declare-fun b!8011646 () Bool)

(declare-fun e!4719442 () Bool)

(assert (=> b!8011646 (= e!4719444 e!4719442)))

(assert (=> b!8011646 (= c!1470544 ((_ is Star!21669) r!15422))))

(declare-fun bm!744207 () Bool)

(assert (=> bm!744207 (= call!744211 (validRegex!11973 (ite c!1470543 (regOne!43851 r!15422) (regOne!43850 r!15422))))))

(declare-fun b!8011647 () Bool)

(assert (=> b!8011647 (= e!4719443 call!744210)))

(declare-fun b!8011648 () Bool)

(assert (=> b!8011648 (= e!4719442 e!4719446)))

(declare-fun res!3167901 () Bool)

(declare-fun nullable!9717 (Regex!21669) Bool)

(assert (=> b!8011648 (= res!3167901 (not (nullable!9717 (reg!21998 r!15422))))))

(assert (=> b!8011648 (=> (not res!3167901) (not e!4719446))))

(declare-fun b!8011649 () Bool)

(assert (=> b!8011649 (= e!4719442 e!4719447)))

(assert (=> b!8011649 (= c!1470543 ((_ is Union!21669) r!15422))))

(assert (= (and d!2388675 (not res!3167902)) b!8011646))

(assert (= (and b!8011646 c!1470544) b!8011648))

(assert (= (and b!8011646 (not c!1470544)) b!8011649))

(assert (= (and b!8011648 res!3167901) b!8011644))

(assert (= (and b!8011649 c!1470543) b!8011641))

(assert (= (and b!8011649 (not c!1470543)) b!8011643))

(assert (= (and b!8011641 res!3167903) b!8011642))

(assert (= (and b!8011643 (not res!3167900)) b!8011645))

(assert (= (and b!8011645 res!3167904) b!8011647))

(assert (= (or b!8011642 b!8011647) bm!744206))

(assert (= (or b!8011641 b!8011645) bm!744207))

(assert (= (or b!8011644 bm!744206) bm!744205))

(declare-fun m!8375512 () Bool)

(assert (=> bm!744205 m!8375512))

(declare-fun m!8375514 () Bool)

(assert (=> bm!744207 m!8375514))

(declare-fun m!8375516 () Bool)

(assert (=> b!8011648 m!8375516))

(assert (=> start!753872 d!2388675))

(declare-fun b!8011662 () Bool)

(declare-fun e!4719450 () Bool)

(declare-fun tp!2397743 () Bool)

(assert (=> b!8011662 (= e!4719450 tp!2397743)))

(declare-fun b!8011660 () Bool)

(assert (=> b!8011660 (= e!4719450 tp_is_empty!53881)))

(declare-fun b!8011663 () Bool)

(declare-fun tp!2397744 () Bool)

(declare-fun tp!2397745 () Bool)

(assert (=> b!8011663 (= e!4719450 (and tp!2397744 tp!2397745))))

(assert (=> b!8011456 (= tp!2397685 e!4719450)))

(declare-fun b!8011661 () Bool)

(declare-fun tp!2397741 () Bool)

(declare-fun tp!2397742 () Bool)

(assert (=> b!8011661 (= e!4719450 (and tp!2397741 tp!2397742))))

(assert (= (and b!8011456 ((_ is ElementMatch!21669) (regOne!43851 r!15422))) b!8011660))

(assert (= (and b!8011456 ((_ is Concat!30668) (regOne!43851 r!15422))) b!8011661))

(assert (= (and b!8011456 ((_ is Star!21669) (regOne!43851 r!15422))) b!8011662))

(assert (= (and b!8011456 ((_ is Union!21669) (regOne!43851 r!15422))) b!8011663))

(declare-fun b!8011666 () Bool)

(declare-fun e!4719451 () Bool)

(declare-fun tp!2397748 () Bool)

(assert (=> b!8011666 (= e!4719451 tp!2397748)))

(declare-fun b!8011664 () Bool)

(assert (=> b!8011664 (= e!4719451 tp_is_empty!53881)))

(declare-fun b!8011667 () Bool)

(declare-fun tp!2397749 () Bool)

(declare-fun tp!2397750 () Bool)

(assert (=> b!8011667 (= e!4719451 (and tp!2397749 tp!2397750))))

(assert (=> b!8011456 (= tp!2397688 e!4719451)))

(declare-fun b!8011665 () Bool)

(declare-fun tp!2397746 () Bool)

(declare-fun tp!2397747 () Bool)

(assert (=> b!8011665 (= e!4719451 (and tp!2397746 tp!2397747))))

(assert (= (and b!8011456 ((_ is ElementMatch!21669) (regTwo!43851 r!15422))) b!8011664))

(assert (= (and b!8011456 ((_ is Concat!30668) (regTwo!43851 r!15422))) b!8011665))

(assert (= (and b!8011456 ((_ is Star!21669) (regTwo!43851 r!15422))) b!8011666))

(assert (= (and b!8011456 ((_ is Union!21669) (regTwo!43851 r!15422))) b!8011667))

(declare-fun b!8011672 () Bool)

(declare-fun e!4719454 () Bool)

(declare-fun tp!2397753 () Bool)

(assert (=> b!8011672 (= e!4719454 (and tp_is_empty!53881 tp!2397753))))

(assert (=> b!8011453 (= tp!2397689 e!4719454)))

(assert (= (and b!8011453 ((_ is Cons!74774) (t!390641 testedP!353))) b!8011672))

(declare-fun b!8011673 () Bool)

(declare-fun e!4719455 () Bool)

(declare-fun tp!2397754 () Bool)

(assert (=> b!8011673 (= e!4719455 (and tp_is_empty!53881 tp!2397754))))

(assert (=> b!8011458 (= tp!2397687 e!4719455)))

(assert (= (and b!8011458 ((_ is Cons!74774) (t!390641 testedSuffix!271))) b!8011673))

(declare-fun b!8011676 () Bool)

(declare-fun e!4719456 () Bool)

(declare-fun tp!2397757 () Bool)

(assert (=> b!8011676 (= e!4719456 tp!2397757)))

(declare-fun b!8011674 () Bool)

(assert (=> b!8011674 (= e!4719456 tp_is_empty!53881)))

(declare-fun b!8011677 () Bool)

(declare-fun tp!2397758 () Bool)

(declare-fun tp!2397759 () Bool)

(assert (=> b!8011677 (= e!4719456 (and tp!2397758 tp!2397759))))

(assert (=> b!8011460 (= tp!2397690 e!4719456)))

(declare-fun b!8011675 () Bool)

(declare-fun tp!2397755 () Bool)

(declare-fun tp!2397756 () Bool)

(assert (=> b!8011675 (= e!4719456 (and tp!2397755 tp!2397756))))

(assert (= (and b!8011460 ((_ is ElementMatch!21669) (reg!21998 r!15422))) b!8011674))

(assert (= (and b!8011460 ((_ is Concat!30668) (reg!21998 r!15422))) b!8011675))

(assert (= (and b!8011460 ((_ is Star!21669) (reg!21998 r!15422))) b!8011676))

(assert (= (and b!8011460 ((_ is Union!21669) (reg!21998 r!15422))) b!8011677))

(declare-fun b!8011678 () Bool)

(declare-fun e!4719457 () Bool)

(declare-fun tp!2397760 () Bool)

(assert (=> b!8011678 (= e!4719457 (and tp_is_empty!53881 tp!2397760))))

(assert (=> b!8011449 (= tp!2397684 e!4719457)))

(assert (= (and b!8011449 ((_ is Cons!74774) (t!390641 totalInput!1349))) b!8011678))

(declare-fun b!8011681 () Bool)

(declare-fun e!4719458 () Bool)

(declare-fun tp!2397763 () Bool)

(assert (=> b!8011681 (= e!4719458 tp!2397763)))

(declare-fun b!8011679 () Bool)

(assert (=> b!8011679 (= e!4719458 tp_is_empty!53881)))

(declare-fun b!8011682 () Bool)

(declare-fun tp!2397764 () Bool)

(declare-fun tp!2397765 () Bool)

(assert (=> b!8011682 (= e!4719458 (and tp!2397764 tp!2397765))))

(assert (=> b!8011454 (= tp!2397683 e!4719458)))

(declare-fun b!8011680 () Bool)

(declare-fun tp!2397761 () Bool)

(declare-fun tp!2397762 () Bool)

(assert (=> b!8011680 (= e!4719458 (and tp!2397761 tp!2397762))))

(assert (= (and b!8011454 ((_ is ElementMatch!21669) (regOne!43850 r!15422))) b!8011679))

(assert (= (and b!8011454 ((_ is Concat!30668) (regOne!43850 r!15422))) b!8011680))

(assert (= (and b!8011454 ((_ is Star!21669) (regOne!43850 r!15422))) b!8011681))

(assert (= (and b!8011454 ((_ is Union!21669) (regOne!43850 r!15422))) b!8011682))

(declare-fun b!8011685 () Bool)

(declare-fun e!4719459 () Bool)

(declare-fun tp!2397768 () Bool)

(assert (=> b!8011685 (= e!4719459 tp!2397768)))

(declare-fun b!8011683 () Bool)

(assert (=> b!8011683 (= e!4719459 tp_is_empty!53881)))

(declare-fun b!8011686 () Bool)

(declare-fun tp!2397769 () Bool)

(declare-fun tp!2397770 () Bool)

(assert (=> b!8011686 (= e!4719459 (and tp!2397769 tp!2397770))))

(assert (=> b!8011454 (= tp!2397686 e!4719459)))

(declare-fun b!8011684 () Bool)

(declare-fun tp!2397766 () Bool)

(declare-fun tp!2397767 () Bool)

(assert (=> b!8011684 (= e!4719459 (and tp!2397766 tp!2397767))))

(assert (= (and b!8011454 ((_ is ElementMatch!21669) (regTwo!43850 r!15422))) b!8011683))

(assert (= (and b!8011454 ((_ is Concat!30668) (regTwo!43850 r!15422))) b!8011684))

(assert (= (and b!8011454 ((_ is Star!21669) (regTwo!43850 r!15422))) b!8011685))

(assert (= (and b!8011454 ((_ is Union!21669) (regTwo!43850 r!15422))) b!8011686))

(check-sat (not b!8011667) (not b!8011573) (not b!8011648) (not b!8011672) (not b!8011685) (not b!8011578) (not b!8011663) (not b!8011678) (not b!8011662) (not b!8011482) (not b!8011540) (not bm!744205) (not b!8011680) (not b!8011517) (not b!8011682) (not b!8011575) (not b!8011686) (not b!8011675) (not d!2388647) (not b!8011579) (not b!8011665) (not b!8011666) (not d!2388637) (not b!8011681) (not b!8011673) (not bm!744207) (not d!2388653) (not b!8011676) tp_is_empty!53881 (not b!8011577) (not b!8011476) (not b!8011661) (not d!2388645) (not d!2388671) (not b!8011546) (not d!2388643) (not b!8011684) (not b!8011677) (not b!8011516) (not b!8011545) (not b!8011574) (not b!8011549))
(check-sat)
