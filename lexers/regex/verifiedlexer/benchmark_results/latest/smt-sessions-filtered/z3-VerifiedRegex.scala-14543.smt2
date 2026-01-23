; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755072 () Bool)

(assert start!755072)

(declare-fun b!8021449 () Bool)

(declare-fun res!3171788 () Bool)

(declare-fun e!4725287 () Bool)

(assert (=> b!8021449 (=> (not res!3171788) (not e!4725287))))

(declare-datatypes ((B!4189 0))(
  ( (B!4190 (val!32484 Int)) )
))
(declare-datatypes ((List!74996 0))(
  ( (Nil!74872) (Cons!74872 (h!81320 B!4189) (t!390739 List!74996)) )
))
(declare-fun lt!2720049 () List!74996)

(declare-fun lt!2720047 () List!74996)

(declare-fun isPrefix!6803 (List!74996 List!74996) Bool)

(assert (=> b!8021449 (= res!3171788 (isPrefix!6803 lt!2720049 lt!2720047))))

(declare-fun b!8021450 () Bool)

(declare-fun res!3171790 () Bool)

(declare-fun e!4725286 () Bool)

(assert (=> b!8021450 (=> (not res!3171790) (not e!4725286))))

(declare-fun p2!173 () List!74996)

(declare-fun l!3353 () List!74996)

(assert (=> b!8021450 (= res!3171790 (isPrefix!6803 p2!173 l!3353))))

(declare-fun b!8021451 () Bool)

(declare-fun e!4725289 () Bool)

(declare-fun tp_is_empty!54077 () Bool)

(declare-fun tp!2400716 () Bool)

(assert (=> b!8021451 (= e!4725289 (and tp_is_empty!54077 tp!2400716))))

(declare-fun b!8021452 () Bool)

(declare-fun res!3171792 () Bool)

(assert (=> b!8021452 (=> (not res!3171792) (not e!4725287))))

(declare-fun p1!173 () List!74996)

(declare-fun size!43657 (List!74996) Int)

(assert (=> b!8021452 (= res!3171792 (= (size!43657 (t!390739 p1!173)) (size!43657 lt!2720049)))))

(declare-fun b!8021453 () Bool)

(declare-fun res!3171793 () Bool)

(assert (=> b!8021453 (=> (not res!3171793) (not e!4725286))))

(assert (=> b!8021453 (= res!3171793 (= (size!43657 p1!173) (size!43657 p2!173)))))

(declare-fun b!8021454 () Bool)

(assert (=> b!8021454 (= e!4725287 (not (= p1!173 p2!173)))))

(assert (=> b!8021454 (= (t!390739 p1!173) lt!2720049)))

(declare-datatypes ((Unit!170924 0))(
  ( (Unit!170925) )
))
(declare-fun lt!2720048 () Unit!170924)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1757 (List!74996 List!74996 List!74996) Unit!170924)

(assert (=> b!8021454 (= lt!2720048 (lemmaIsPrefixSameLengthThenSameList!1757 (t!390739 p1!173) lt!2720049 lt!2720047))))

(declare-fun b!8021455 () Bool)

(assert (=> b!8021455 (= e!4725286 e!4725287)))

(declare-fun res!3171789 () Bool)

(assert (=> b!8021455 (=> (not res!3171789) (not e!4725287))))

(assert (=> b!8021455 (= res!3171789 (isPrefix!6803 (t!390739 p1!173) lt!2720047))))

(declare-fun tail!15946 (List!74996) List!74996)

(assert (=> b!8021455 (= lt!2720047 (tail!15946 l!3353))))

(assert (=> b!8021455 (= lt!2720049 (tail!15946 p2!173))))

(declare-fun res!3171791 () Bool)

(assert (=> start!755072 (=> (not res!3171791) (not e!4725286))))

(assert (=> start!755072 (= res!3171791 (isPrefix!6803 p1!173 l!3353))))

(assert (=> start!755072 e!4725286))

(declare-fun e!4725285 () Bool)

(assert (=> start!755072 e!4725285))

(declare-fun e!4725288 () Bool)

(assert (=> start!755072 e!4725288))

(assert (=> start!755072 e!4725289))

(declare-fun b!8021456 () Bool)

(declare-fun res!3171794 () Bool)

(assert (=> b!8021456 (=> (not res!3171794) (not e!4725286))))

(get-info :version)

(assert (=> b!8021456 (= res!3171794 ((_ is Cons!74872) p1!173))))

(declare-fun b!8021457 () Bool)

(declare-fun tp!2400715 () Bool)

(assert (=> b!8021457 (= e!4725285 (and tp_is_empty!54077 tp!2400715))))

(declare-fun b!8021458 () Bool)

(declare-fun tp!2400714 () Bool)

(assert (=> b!8021458 (= e!4725288 (and tp_is_empty!54077 tp!2400714))))

(assert (= (and start!755072 res!3171791) b!8021450))

(assert (= (and b!8021450 res!3171790) b!8021453))

(assert (= (and b!8021453 res!3171793) b!8021456))

(assert (= (and b!8021456 res!3171794) b!8021455))

(assert (= (and b!8021455 res!3171789) b!8021449))

(assert (= (and b!8021449 res!3171788) b!8021452))

(assert (= (and b!8021452 res!3171792) b!8021454))

(assert (= (and start!755072 ((_ is Cons!74872) p1!173)) b!8021457))

(assert (= (and start!755072 ((_ is Cons!74872) l!3353)) b!8021458))

(assert (= (and start!755072 ((_ is Cons!74872) p2!173)) b!8021451))

(declare-fun m!8384300 () Bool)

(assert (=> start!755072 m!8384300))

(declare-fun m!8384302 () Bool)

(assert (=> b!8021454 m!8384302))

(declare-fun m!8384304 () Bool)

(assert (=> b!8021453 m!8384304))

(declare-fun m!8384306 () Bool)

(assert (=> b!8021453 m!8384306))

(declare-fun m!8384308 () Bool)

(assert (=> b!8021452 m!8384308))

(declare-fun m!8384310 () Bool)

(assert (=> b!8021452 m!8384310))

(declare-fun m!8384312 () Bool)

(assert (=> b!8021455 m!8384312))

(declare-fun m!8384314 () Bool)

(assert (=> b!8021455 m!8384314))

(declare-fun m!8384316 () Bool)

(assert (=> b!8021455 m!8384316))

(declare-fun m!8384318 () Bool)

(assert (=> b!8021449 m!8384318))

(declare-fun m!8384320 () Bool)

(assert (=> b!8021450 m!8384320))

(check-sat (not start!755072) (not b!8021451) (not b!8021449) (not b!8021458) (not b!8021454) (not b!8021452) (not b!8021450) tp_is_empty!54077 (not b!8021455) (not b!8021453) (not b!8021457))
(check-sat)
(get-model)

(declare-fun d!2391944 () Bool)

(declare-fun lt!2720060 () Int)

(assert (=> d!2391944 (>= lt!2720060 0)))

(declare-fun e!4725303 () Int)

(assert (=> d!2391944 (= lt!2720060 e!4725303)))

(declare-fun c!1472139 () Bool)

(assert (=> d!2391944 (= c!1472139 ((_ is Nil!74872) (t!390739 p1!173)))))

(assert (=> d!2391944 (= (size!43657 (t!390739 p1!173)) lt!2720060)))

(declare-fun b!8021479 () Bool)

(assert (=> b!8021479 (= e!4725303 0)))

(declare-fun b!8021480 () Bool)

(assert (=> b!8021480 (= e!4725303 (+ 1 (size!43657 (t!390739 (t!390739 p1!173)))))))

(assert (= (and d!2391944 c!1472139) b!8021479))

(assert (= (and d!2391944 (not c!1472139)) b!8021480))

(declare-fun m!8384332 () Bool)

(assert (=> b!8021480 m!8384332))

(assert (=> b!8021452 d!2391944))

(declare-fun d!2391948 () Bool)

(declare-fun lt!2720062 () Int)

(assert (=> d!2391948 (>= lt!2720062 0)))

(declare-fun e!4725305 () Int)

(assert (=> d!2391948 (= lt!2720062 e!4725305)))

(declare-fun c!1472141 () Bool)

(assert (=> d!2391948 (= c!1472141 ((_ is Nil!74872) lt!2720049))))

(assert (=> d!2391948 (= (size!43657 lt!2720049) lt!2720062)))

(declare-fun b!8021483 () Bool)

(assert (=> b!8021483 (= e!4725305 0)))

(declare-fun b!8021484 () Bool)

(assert (=> b!8021484 (= e!4725305 (+ 1 (size!43657 (t!390739 lt!2720049))))))

(assert (= (and d!2391948 c!1472141) b!8021483))

(assert (= (and d!2391948 (not c!1472141)) b!8021484))

(declare-fun m!8384338 () Bool)

(assert (=> b!8021484 m!8384338))

(assert (=> b!8021452 d!2391948))

(declare-fun b!8021521 () Bool)

(declare-fun e!4725331 () Bool)

(assert (=> b!8021521 (= e!4725331 (>= (size!43657 l!3353) (size!43657 p1!173)))))

(declare-fun b!8021518 () Bool)

(declare-fun e!4725329 () Bool)

(declare-fun e!4725330 () Bool)

(assert (=> b!8021518 (= e!4725329 e!4725330)))

(declare-fun res!3171828 () Bool)

(assert (=> b!8021518 (=> (not res!3171828) (not e!4725330))))

(assert (=> b!8021518 (= res!3171828 (not ((_ is Nil!74872) l!3353)))))

(declare-fun b!8021520 () Bool)

(assert (=> b!8021520 (= e!4725330 (isPrefix!6803 (tail!15946 p1!173) (tail!15946 l!3353)))))

(declare-fun d!2391954 () Bool)

(assert (=> d!2391954 e!4725331))

(declare-fun res!3171830 () Bool)

(assert (=> d!2391954 (=> res!3171830 e!4725331)))

(declare-fun lt!2720071 () Bool)

(assert (=> d!2391954 (= res!3171830 (not lt!2720071))))

(assert (=> d!2391954 (= lt!2720071 e!4725329)))

(declare-fun res!3171829 () Bool)

(assert (=> d!2391954 (=> res!3171829 e!4725329)))

(assert (=> d!2391954 (= res!3171829 ((_ is Nil!74872) p1!173))))

(assert (=> d!2391954 (= (isPrefix!6803 p1!173 l!3353) lt!2720071)))

(declare-fun b!8021519 () Bool)

(declare-fun res!3171827 () Bool)

(assert (=> b!8021519 (=> (not res!3171827) (not e!4725330))))

(declare-fun head!16411 (List!74996) B!4189)

(assert (=> b!8021519 (= res!3171827 (= (head!16411 p1!173) (head!16411 l!3353)))))

(assert (= (and d!2391954 (not res!3171829)) b!8021518))

(assert (= (and b!8021518 res!3171828) b!8021519))

(assert (= (and b!8021519 res!3171827) b!8021520))

(assert (= (and d!2391954 (not res!3171830)) b!8021521))

(declare-fun m!8384366 () Bool)

(assert (=> b!8021521 m!8384366))

(assert (=> b!8021521 m!8384304))

(declare-fun m!8384368 () Bool)

(assert (=> b!8021520 m!8384368))

(assert (=> b!8021520 m!8384314))

(assert (=> b!8021520 m!8384368))

(assert (=> b!8021520 m!8384314))

(declare-fun m!8384370 () Bool)

(assert (=> b!8021520 m!8384370))

(declare-fun m!8384372 () Bool)

(assert (=> b!8021519 m!8384372))

(declare-fun m!8384374 () Bool)

(assert (=> b!8021519 m!8384374))

(assert (=> start!755072 d!2391954))

(declare-fun b!8021525 () Bool)

(declare-fun e!4725334 () Bool)

(assert (=> b!8021525 (= e!4725334 (>= (size!43657 l!3353) (size!43657 p2!173)))))

(declare-fun b!8021522 () Bool)

(declare-fun e!4725332 () Bool)

(declare-fun e!4725333 () Bool)

(assert (=> b!8021522 (= e!4725332 e!4725333)))

(declare-fun res!3171832 () Bool)

(assert (=> b!8021522 (=> (not res!3171832) (not e!4725333))))

(assert (=> b!8021522 (= res!3171832 (not ((_ is Nil!74872) l!3353)))))

(declare-fun b!8021524 () Bool)

(assert (=> b!8021524 (= e!4725333 (isPrefix!6803 (tail!15946 p2!173) (tail!15946 l!3353)))))

(declare-fun d!2391968 () Bool)

(assert (=> d!2391968 e!4725334))

(declare-fun res!3171834 () Bool)

(assert (=> d!2391968 (=> res!3171834 e!4725334)))

(declare-fun lt!2720072 () Bool)

(assert (=> d!2391968 (= res!3171834 (not lt!2720072))))

(assert (=> d!2391968 (= lt!2720072 e!4725332)))

(declare-fun res!3171833 () Bool)

(assert (=> d!2391968 (=> res!3171833 e!4725332)))

(assert (=> d!2391968 (= res!3171833 ((_ is Nil!74872) p2!173))))

(assert (=> d!2391968 (= (isPrefix!6803 p2!173 l!3353) lt!2720072)))

(declare-fun b!8021523 () Bool)

(declare-fun res!3171831 () Bool)

(assert (=> b!8021523 (=> (not res!3171831) (not e!4725333))))

(assert (=> b!8021523 (= res!3171831 (= (head!16411 p2!173) (head!16411 l!3353)))))

(assert (= (and d!2391968 (not res!3171833)) b!8021522))

(assert (= (and b!8021522 res!3171832) b!8021523))

(assert (= (and b!8021523 res!3171831) b!8021524))

(assert (= (and d!2391968 (not res!3171834)) b!8021525))

(assert (=> b!8021525 m!8384366))

(assert (=> b!8021525 m!8384306))

(assert (=> b!8021524 m!8384316))

(assert (=> b!8021524 m!8384314))

(assert (=> b!8021524 m!8384316))

(assert (=> b!8021524 m!8384314))

(declare-fun m!8384376 () Bool)

(assert (=> b!8021524 m!8384376))

(declare-fun m!8384378 () Bool)

(assert (=> b!8021523 m!8384378))

(assert (=> b!8021523 m!8384374))

(assert (=> b!8021450 d!2391968))

(declare-fun d!2391970 () Bool)

(assert (=> d!2391970 (= (t!390739 p1!173) lt!2720049)))

(declare-fun lt!2720075 () Unit!170924)

(declare-fun choose!60439 (List!74996 List!74996 List!74996) Unit!170924)

(assert (=> d!2391970 (= lt!2720075 (choose!60439 (t!390739 p1!173) lt!2720049 lt!2720047))))

(assert (=> d!2391970 (isPrefix!6803 (t!390739 p1!173) lt!2720047)))

(assert (=> d!2391970 (= (lemmaIsPrefixSameLengthThenSameList!1757 (t!390739 p1!173) lt!2720049 lt!2720047) lt!2720075)))

(declare-fun bs!1971180 () Bool)

(assert (= bs!1971180 d!2391970))

(declare-fun m!8384380 () Bool)

(assert (=> bs!1971180 m!8384380))

(assert (=> bs!1971180 m!8384312))

(assert (=> b!8021454 d!2391970))

(declare-fun b!8021529 () Bool)

(declare-fun e!4725337 () Bool)

(assert (=> b!8021529 (= e!4725337 (>= (size!43657 lt!2720047) (size!43657 lt!2720049)))))

(declare-fun b!8021526 () Bool)

(declare-fun e!4725335 () Bool)

(declare-fun e!4725336 () Bool)

(assert (=> b!8021526 (= e!4725335 e!4725336)))

(declare-fun res!3171836 () Bool)

(assert (=> b!8021526 (=> (not res!3171836) (not e!4725336))))

(assert (=> b!8021526 (= res!3171836 (not ((_ is Nil!74872) lt!2720047)))))

(declare-fun b!8021528 () Bool)

(assert (=> b!8021528 (= e!4725336 (isPrefix!6803 (tail!15946 lt!2720049) (tail!15946 lt!2720047)))))

(declare-fun d!2391972 () Bool)

(assert (=> d!2391972 e!4725337))

(declare-fun res!3171838 () Bool)

(assert (=> d!2391972 (=> res!3171838 e!4725337)))

(declare-fun lt!2720076 () Bool)

(assert (=> d!2391972 (= res!3171838 (not lt!2720076))))

(assert (=> d!2391972 (= lt!2720076 e!4725335)))

(declare-fun res!3171837 () Bool)

(assert (=> d!2391972 (=> res!3171837 e!4725335)))

(assert (=> d!2391972 (= res!3171837 ((_ is Nil!74872) lt!2720049))))

(assert (=> d!2391972 (= (isPrefix!6803 lt!2720049 lt!2720047) lt!2720076)))

(declare-fun b!8021527 () Bool)

(declare-fun res!3171835 () Bool)

(assert (=> b!8021527 (=> (not res!3171835) (not e!4725336))))

(assert (=> b!8021527 (= res!3171835 (= (head!16411 lt!2720049) (head!16411 lt!2720047)))))

(assert (= (and d!2391972 (not res!3171837)) b!8021526))

(assert (= (and b!8021526 res!3171836) b!8021527))

(assert (= (and b!8021527 res!3171835) b!8021528))

(assert (= (and d!2391972 (not res!3171838)) b!8021529))

(declare-fun m!8384382 () Bool)

(assert (=> b!8021529 m!8384382))

(assert (=> b!8021529 m!8384310))

(declare-fun m!8384384 () Bool)

(assert (=> b!8021528 m!8384384))

(declare-fun m!8384386 () Bool)

(assert (=> b!8021528 m!8384386))

(assert (=> b!8021528 m!8384384))

(assert (=> b!8021528 m!8384386))

(declare-fun m!8384388 () Bool)

(assert (=> b!8021528 m!8384388))

(declare-fun m!8384390 () Bool)

(assert (=> b!8021527 m!8384390))

(declare-fun m!8384392 () Bool)

(assert (=> b!8021527 m!8384392))

(assert (=> b!8021449 d!2391972))

(declare-fun b!8021533 () Bool)

(declare-fun e!4725340 () Bool)

(assert (=> b!8021533 (= e!4725340 (>= (size!43657 lt!2720047) (size!43657 (t!390739 p1!173))))))

(declare-fun b!8021530 () Bool)

(declare-fun e!4725338 () Bool)

(declare-fun e!4725339 () Bool)

(assert (=> b!8021530 (= e!4725338 e!4725339)))

(declare-fun res!3171840 () Bool)

(assert (=> b!8021530 (=> (not res!3171840) (not e!4725339))))

(assert (=> b!8021530 (= res!3171840 (not ((_ is Nil!74872) lt!2720047)))))

(declare-fun b!8021532 () Bool)

(assert (=> b!8021532 (= e!4725339 (isPrefix!6803 (tail!15946 (t!390739 p1!173)) (tail!15946 lt!2720047)))))

(declare-fun d!2391974 () Bool)

(assert (=> d!2391974 e!4725340))

(declare-fun res!3171842 () Bool)

(assert (=> d!2391974 (=> res!3171842 e!4725340)))

(declare-fun lt!2720077 () Bool)

(assert (=> d!2391974 (= res!3171842 (not lt!2720077))))

(assert (=> d!2391974 (= lt!2720077 e!4725338)))

(declare-fun res!3171841 () Bool)

(assert (=> d!2391974 (=> res!3171841 e!4725338)))

(assert (=> d!2391974 (= res!3171841 ((_ is Nil!74872) (t!390739 p1!173)))))

(assert (=> d!2391974 (= (isPrefix!6803 (t!390739 p1!173) lt!2720047) lt!2720077)))

(declare-fun b!8021531 () Bool)

(declare-fun res!3171839 () Bool)

(assert (=> b!8021531 (=> (not res!3171839) (not e!4725339))))

(assert (=> b!8021531 (= res!3171839 (= (head!16411 (t!390739 p1!173)) (head!16411 lt!2720047)))))

(assert (= (and d!2391974 (not res!3171841)) b!8021530))

(assert (= (and b!8021530 res!3171840) b!8021531))

(assert (= (and b!8021531 res!3171839) b!8021532))

(assert (= (and d!2391974 (not res!3171842)) b!8021533))

(assert (=> b!8021533 m!8384382))

(assert (=> b!8021533 m!8384308))

(declare-fun m!8384394 () Bool)

(assert (=> b!8021532 m!8384394))

(assert (=> b!8021532 m!8384386))

(assert (=> b!8021532 m!8384394))

(assert (=> b!8021532 m!8384386))

(declare-fun m!8384396 () Bool)

(assert (=> b!8021532 m!8384396))

(declare-fun m!8384398 () Bool)

(assert (=> b!8021531 m!8384398))

(assert (=> b!8021531 m!8384392))

(assert (=> b!8021455 d!2391974))

(declare-fun d!2391976 () Bool)

(assert (=> d!2391976 (= (tail!15946 l!3353) (t!390739 l!3353))))

(assert (=> b!8021455 d!2391976))

(declare-fun d!2391978 () Bool)

(assert (=> d!2391978 (= (tail!15946 p2!173) (t!390739 p2!173))))

(assert (=> b!8021455 d!2391978))

(declare-fun d!2391980 () Bool)

(declare-fun lt!2720078 () Int)

(assert (=> d!2391980 (>= lt!2720078 0)))

(declare-fun e!4725341 () Int)

(assert (=> d!2391980 (= lt!2720078 e!4725341)))

(declare-fun c!1472145 () Bool)

(assert (=> d!2391980 (= c!1472145 ((_ is Nil!74872) p1!173))))

(assert (=> d!2391980 (= (size!43657 p1!173) lt!2720078)))

(declare-fun b!8021534 () Bool)

(assert (=> b!8021534 (= e!4725341 0)))

(declare-fun b!8021535 () Bool)

(assert (=> b!8021535 (= e!4725341 (+ 1 (size!43657 (t!390739 p1!173))))))

(assert (= (and d!2391980 c!1472145) b!8021534))

(assert (= (and d!2391980 (not c!1472145)) b!8021535))

(assert (=> b!8021535 m!8384308))

(assert (=> b!8021453 d!2391980))

(declare-fun d!2391982 () Bool)

(declare-fun lt!2720079 () Int)

(assert (=> d!2391982 (>= lt!2720079 0)))

(declare-fun e!4725342 () Int)

(assert (=> d!2391982 (= lt!2720079 e!4725342)))

(declare-fun c!1472146 () Bool)

(assert (=> d!2391982 (= c!1472146 ((_ is Nil!74872) p2!173))))

(assert (=> d!2391982 (= (size!43657 p2!173) lt!2720079)))

(declare-fun b!8021536 () Bool)

(assert (=> b!8021536 (= e!4725342 0)))

(declare-fun b!8021537 () Bool)

(assert (=> b!8021537 (= e!4725342 (+ 1 (size!43657 (t!390739 p2!173))))))

(assert (= (and d!2391982 c!1472146) b!8021536))

(assert (= (and d!2391982 (not c!1472146)) b!8021537))

(declare-fun m!8384400 () Bool)

(assert (=> b!8021537 m!8384400))

(assert (=> b!8021453 d!2391982))

(declare-fun b!8021542 () Bool)

(declare-fun e!4725345 () Bool)

(declare-fun tp!2400724 () Bool)

(assert (=> b!8021542 (= e!4725345 (and tp_is_empty!54077 tp!2400724))))

(assert (=> b!8021457 (= tp!2400715 e!4725345)))

(assert (= (and b!8021457 ((_ is Cons!74872) (t!390739 p1!173))) b!8021542))

(declare-fun b!8021543 () Bool)

(declare-fun e!4725346 () Bool)

(declare-fun tp!2400725 () Bool)

(assert (=> b!8021543 (= e!4725346 (and tp_is_empty!54077 tp!2400725))))

(assert (=> b!8021451 (= tp!2400716 e!4725346)))

(assert (= (and b!8021451 ((_ is Cons!74872) (t!390739 p2!173))) b!8021543))

(declare-fun b!8021544 () Bool)

(declare-fun e!4725347 () Bool)

(declare-fun tp!2400726 () Bool)

(assert (=> b!8021544 (= e!4725347 (and tp_is_empty!54077 tp!2400726))))

(assert (=> b!8021458 (= tp!2400714 e!4725347)))

(assert (= (and b!8021458 ((_ is Cons!74872) (t!390739 l!3353))) b!8021544))

(check-sat (not d!2391970) (not b!8021542) (not b!8021543) (not b!8021525) (not b!8021524) (not b!8021519) (not b!8021484) (not b!8021535) (not b!8021523) (not b!8021480) tp_is_empty!54077 (not b!8021532) (not b!8021533) (not b!8021531) (not b!8021528) (not b!8021527) (not b!8021521) (not b!8021520) (not b!8021544) (not b!8021529) (not b!8021537))
(check-sat)
(get-model)

(declare-fun b!8021548 () Bool)

(declare-fun e!4725350 () Bool)

(assert (=> b!8021548 (= e!4725350 (>= (size!43657 (tail!15946 l!3353)) (size!43657 (tail!15946 p1!173))))))

(declare-fun b!8021545 () Bool)

(declare-fun e!4725348 () Bool)

(declare-fun e!4725349 () Bool)

(assert (=> b!8021545 (= e!4725348 e!4725349)))

(declare-fun res!3171844 () Bool)

(assert (=> b!8021545 (=> (not res!3171844) (not e!4725349))))

(assert (=> b!8021545 (= res!3171844 (not ((_ is Nil!74872) (tail!15946 l!3353))))))

(declare-fun b!8021547 () Bool)

(assert (=> b!8021547 (= e!4725349 (isPrefix!6803 (tail!15946 (tail!15946 p1!173)) (tail!15946 (tail!15946 l!3353))))))

(declare-fun d!2391984 () Bool)

(assert (=> d!2391984 e!4725350))

(declare-fun res!3171846 () Bool)

(assert (=> d!2391984 (=> res!3171846 e!4725350)))

(declare-fun lt!2720080 () Bool)

(assert (=> d!2391984 (= res!3171846 (not lt!2720080))))

(assert (=> d!2391984 (= lt!2720080 e!4725348)))

(declare-fun res!3171845 () Bool)

(assert (=> d!2391984 (=> res!3171845 e!4725348)))

(assert (=> d!2391984 (= res!3171845 ((_ is Nil!74872) (tail!15946 p1!173)))))

(assert (=> d!2391984 (= (isPrefix!6803 (tail!15946 p1!173) (tail!15946 l!3353)) lt!2720080)))

(declare-fun b!8021546 () Bool)

(declare-fun res!3171843 () Bool)

(assert (=> b!8021546 (=> (not res!3171843) (not e!4725349))))

(assert (=> b!8021546 (= res!3171843 (= (head!16411 (tail!15946 p1!173)) (head!16411 (tail!15946 l!3353))))))

(assert (= (and d!2391984 (not res!3171845)) b!8021545))

(assert (= (and b!8021545 res!3171844) b!8021546))

(assert (= (and b!8021546 res!3171843) b!8021547))

(assert (= (and d!2391984 (not res!3171846)) b!8021548))

(assert (=> b!8021548 m!8384314))

(declare-fun m!8384402 () Bool)

(assert (=> b!8021548 m!8384402))

(assert (=> b!8021548 m!8384368))

(declare-fun m!8384404 () Bool)

(assert (=> b!8021548 m!8384404))

(assert (=> b!8021547 m!8384368))

(declare-fun m!8384406 () Bool)

(assert (=> b!8021547 m!8384406))

(assert (=> b!8021547 m!8384314))

(declare-fun m!8384408 () Bool)

(assert (=> b!8021547 m!8384408))

(assert (=> b!8021547 m!8384406))

(assert (=> b!8021547 m!8384408))

(declare-fun m!8384410 () Bool)

(assert (=> b!8021547 m!8384410))

(assert (=> b!8021546 m!8384368))

(declare-fun m!8384412 () Bool)

(assert (=> b!8021546 m!8384412))

(assert (=> b!8021546 m!8384314))

(declare-fun m!8384414 () Bool)

(assert (=> b!8021546 m!8384414))

(assert (=> b!8021520 d!2391984))

(declare-fun d!2391986 () Bool)

(assert (=> d!2391986 (= (tail!15946 p1!173) (t!390739 p1!173))))

(assert (=> b!8021520 d!2391986))

(assert (=> b!8021520 d!2391976))

(declare-fun d!2391988 () Bool)

(assert (=> d!2391988 (= (t!390739 p1!173) lt!2720049)))

(assert (=> d!2391988 true))

(declare-fun _$60!1420 () Unit!170924)

(assert (=> d!2391988 (= (choose!60439 (t!390739 p1!173) lt!2720049 lt!2720047) _$60!1420)))

(assert (=> d!2391970 d!2391988))

(assert (=> d!2391970 d!2391974))

(declare-fun d!2391990 () Bool)

(assert (=> d!2391990 (= (head!16411 p1!173) (h!81320 p1!173))))

(assert (=> b!8021519 d!2391990))

(declare-fun d!2391998 () Bool)

(assert (=> d!2391998 (= (head!16411 l!3353) (h!81320 l!3353))))

(assert (=> b!8021519 d!2391998))

(declare-fun d!2392000 () Bool)

(declare-fun lt!2720083 () Int)

(assert (=> d!2392000 (>= lt!2720083 0)))

(declare-fun e!4725353 () Int)

(assert (=> d!2392000 (= lt!2720083 e!4725353)))

(declare-fun c!1472149 () Bool)

(assert (=> d!2392000 (= c!1472149 ((_ is Nil!74872) (t!390739 p2!173)))))

(assert (=> d!2392000 (= (size!43657 (t!390739 p2!173)) lt!2720083)))

(declare-fun b!8021553 () Bool)

(assert (=> b!8021553 (= e!4725353 0)))

(declare-fun b!8021554 () Bool)

(assert (=> b!8021554 (= e!4725353 (+ 1 (size!43657 (t!390739 (t!390739 p2!173)))))))

(assert (= (and d!2392000 c!1472149) b!8021553))

(assert (= (and d!2392000 (not c!1472149)) b!8021554))

(declare-fun m!8384420 () Bool)

(assert (=> b!8021554 m!8384420))

(assert (=> b!8021537 d!2392000))

(declare-fun d!2392002 () Bool)

(declare-fun lt!2720084 () Int)

(assert (=> d!2392002 (>= lt!2720084 0)))

(declare-fun e!4725354 () Int)

(assert (=> d!2392002 (= lt!2720084 e!4725354)))

(declare-fun c!1472150 () Bool)

(assert (=> d!2392002 (= c!1472150 ((_ is Nil!74872) lt!2720047))))

(assert (=> d!2392002 (= (size!43657 lt!2720047) lt!2720084)))

(declare-fun b!8021555 () Bool)

(assert (=> b!8021555 (= e!4725354 0)))

(declare-fun b!8021556 () Bool)

(assert (=> b!8021556 (= e!4725354 (+ 1 (size!43657 (t!390739 lt!2720047))))))

(assert (= (and d!2392002 c!1472150) b!8021555))

(assert (= (and d!2392002 (not c!1472150)) b!8021556))

(declare-fun m!8384422 () Bool)

(assert (=> b!8021556 m!8384422))

(assert (=> b!8021529 d!2392002))

(assert (=> b!8021529 d!2391948))

(declare-fun b!8021560 () Bool)

(declare-fun e!4725357 () Bool)

(assert (=> b!8021560 (= e!4725357 (>= (size!43657 (tail!15946 l!3353)) (size!43657 (tail!15946 p2!173))))))

(declare-fun b!8021557 () Bool)

(declare-fun e!4725355 () Bool)

(declare-fun e!4725356 () Bool)

(assert (=> b!8021557 (= e!4725355 e!4725356)))

(declare-fun res!3171848 () Bool)

(assert (=> b!8021557 (=> (not res!3171848) (not e!4725356))))

(assert (=> b!8021557 (= res!3171848 (not ((_ is Nil!74872) (tail!15946 l!3353))))))

(declare-fun b!8021559 () Bool)

(assert (=> b!8021559 (= e!4725356 (isPrefix!6803 (tail!15946 (tail!15946 p2!173)) (tail!15946 (tail!15946 l!3353))))))

(declare-fun d!2392006 () Bool)

(assert (=> d!2392006 e!4725357))

(declare-fun res!3171850 () Bool)

(assert (=> d!2392006 (=> res!3171850 e!4725357)))

(declare-fun lt!2720085 () Bool)

(assert (=> d!2392006 (= res!3171850 (not lt!2720085))))

(assert (=> d!2392006 (= lt!2720085 e!4725355)))

(declare-fun res!3171849 () Bool)

(assert (=> d!2392006 (=> res!3171849 e!4725355)))

(assert (=> d!2392006 (= res!3171849 ((_ is Nil!74872) (tail!15946 p2!173)))))

(assert (=> d!2392006 (= (isPrefix!6803 (tail!15946 p2!173) (tail!15946 l!3353)) lt!2720085)))

(declare-fun b!8021558 () Bool)

(declare-fun res!3171847 () Bool)

(assert (=> b!8021558 (=> (not res!3171847) (not e!4725356))))

(assert (=> b!8021558 (= res!3171847 (= (head!16411 (tail!15946 p2!173)) (head!16411 (tail!15946 l!3353))))))

(assert (= (and d!2392006 (not res!3171849)) b!8021557))

(assert (= (and b!8021557 res!3171848) b!8021558))

(assert (= (and b!8021558 res!3171847) b!8021559))

(assert (= (and d!2392006 (not res!3171850)) b!8021560))

(assert (=> b!8021560 m!8384314))

(assert (=> b!8021560 m!8384402))

(assert (=> b!8021560 m!8384316))

(declare-fun m!8384436 () Bool)

(assert (=> b!8021560 m!8384436))

(assert (=> b!8021559 m!8384316))

(declare-fun m!8384440 () Bool)

(assert (=> b!8021559 m!8384440))

(assert (=> b!8021559 m!8384314))

(assert (=> b!8021559 m!8384408))

(assert (=> b!8021559 m!8384440))

(assert (=> b!8021559 m!8384408))

(declare-fun m!8384442 () Bool)

(assert (=> b!8021559 m!8384442))

(assert (=> b!8021558 m!8384316))

(declare-fun m!8384444 () Bool)

(assert (=> b!8021558 m!8384444))

(assert (=> b!8021558 m!8384314))

(assert (=> b!8021558 m!8384414))

(assert (=> b!8021524 d!2392006))

(assert (=> b!8021524 d!2391978))

(assert (=> b!8021524 d!2391976))

(declare-fun d!2392020 () Bool)

(assert (=> d!2392020 (= (head!16411 lt!2720049) (h!81320 lt!2720049))))

(assert (=> b!8021527 d!2392020))

(declare-fun d!2392022 () Bool)

(assert (=> d!2392022 (= (head!16411 lt!2720047) (h!81320 lt!2720047))))

(assert (=> b!8021527 d!2392022))

(declare-fun d!2392024 () Bool)

(declare-fun lt!2720089 () Int)

(assert (=> d!2392024 (>= lt!2720089 0)))

(declare-fun e!4725365 () Int)

(assert (=> d!2392024 (= lt!2720089 e!4725365)))

(declare-fun c!1472152 () Bool)

(assert (=> d!2392024 (= c!1472152 ((_ is Nil!74872) l!3353))))

(assert (=> d!2392024 (= (size!43657 l!3353) lt!2720089)))

(declare-fun b!8021571 () Bool)

(assert (=> b!8021571 (= e!4725365 0)))

(declare-fun b!8021572 () Bool)

(assert (=> b!8021572 (= e!4725365 (+ 1 (size!43657 (t!390739 l!3353))))))

(assert (= (and d!2392024 c!1472152) b!8021571))

(assert (= (and d!2392024 (not c!1472152)) b!8021572))

(declare-fun m!8384456 () Bool)

(assert (=> b!8021572 m!8384456))

(assert (=> b!8021521 d!2392024))

(assert (=> b!8021521 d!2391980))

(declare-fun d!2392030 () Bool)

(declare-fun lt!2720091 () Int)

(assert (=> d!2392030 (>= lt!2720091 0)))

(declare-fun e!4725367 () Int)

(assert (=> d!2392030 (= lt!2720091 e!4725367)))

(declare-fun c!1472154 () Bool)

(assert (=> d!2392030 (= c!1472154 ((_ is Nil!74872) (t!390739 (t!390739 p1!173))))))

(assert (=> d!2392030 (= (size!43657 (t!390739 (t!390739 p1!173))) lt!2720091)))

(declare-fun b!8021575 () Bool)

(assert (=> b!8021575 (= e!4725367 0)))

(declare-fun b!8021576 () Bool)

(assert (=> b!8021576 (= e!4725367 (+ 1 (size!43657 (t!390739 (t!390739 (t!390739 p1!173))))))))

(assert (= (and d!2392030 c!1472154) b!8021575))

(assert (= (and d!2392030 (not c!1472154)) b!8021576))

(declare-fun m!8384460 () Bool)

(assert (=> b!8021576 m!8384460))

(assert (=> b!8021480 d!2392030))

(declare-fun b!8021584 () Bool)

(declare-fun e!4725373 () Bool)

(assert (=> b!8021584 (= e!4725373 (>= (size!43657 (tail!15946 lt!2720047)) (size!43657 (tail!15946 lt!2720049))))))

(declare-fun b!8021581 () Bool)

(declare-fun e!4725371 () Bool)

(declare-fun e!4725372 () Bool)

(assert (=> b!8021581 (= e!4725371 e!4725372)))

(declare-fun res!3171864 () Bool)

(assert (=> b!8021581 (=> (not res!3171864) (not e!4725372))))

(assert (=> b!8021581 (= res!3171864 (not ((_ is Nil!74872) (tail!15946 lt!2720047))))))

(declare-fun b!8021583 () Bool)

(assert (=> b!8021583 (= e!4725372 (isPrefix!6803 (tail!15946 (tail!15946 lt!2720049)) (tail!15946 (tail!15946 lt!2720047))))))

(declare-fun d!2392040 () Bool)

(assert (=> d!2392040 e!4725373))

(declare-fun res!3171866 () Bool)

(assert (=> d!2392040 (=> res!3171866 e!4725373)))

(declare-fun lt!2720093 () Bool)

(assert (=> d!2392040 (= res!3171866 (not lt!2720093))))

(assert (=> d!2392040 (= lt!2720093 e!4725371)))

(declare-fun res!3171865 () Bool)

(assert (=> d!2392040 (=> res!3171865 e!4725371)))

(assert (=> d!2392040 (= res!3171865 ((_ is Nil!74872) (tail!15946 lt!2720049)))))

(assert (=> d!2392040 (= (isPrefix!6803 (tail!15946 lt!2720049) (tail!15946 lt!2720047)) lt!2720093)))

(declare-fun b!8021582 () Bool)

(declare-fun res!3171863 () Bool)

(assert (=> b!8021582 (=> (not res!3171863) (not e!4725372))))

(assert (=> b!8021582 (= res!3171863 (= (head!16411 (tail!15946 lt!2720049)) (head!16411 (tail!15946 lt!2720047))))))

(assert (= (and d!2392040 (not res!3171865)) b!8021581))

(assert (= (and b!8021581 res!3171864) b!8021582))

(assert (= (and b!8021582 res!3171863) b!8021583))

(assert (= (and d!2392040 (not res!3171866)) b!8021584))

(assert (=> b!8021584 m!8384386))

(declare-fun m!8384480 () Bool)

(assert (=> b!8021584 m!8384480))

(assert (=> b!8021584 m!8384384))

(declare-fun m!8384484 () Bool)

(assert (=> b!8021584 m!8384484))

(assert (=> b!8021583 m!8384384))

(declare-fun m!8384488 () Bool)

(assert (=> b!8021583 m!8384488))

(assert (=> b!8021583 m!8384386))

(declare-fun m!8384490 () Bool)

(assert (=> b!8021583 m!8384490))

(assert (=> b!8021583 m!8384488))

(assert (=> b!8021583 m!8384490))

(declare-fun m!8384492 () Bool)

(assert (=> b!8021583 m!8384492))

(assert (=> b!8021582 m!8384384))

(declare-fun m!8384496 () Bool)

(assert (=> b!8021582 m!8384496))

(assert (=> b!8021582 m!8384386))

(declare-fun m!8384498 () Bool)

(assert (=> b!8021582 m!8384498))

(assert (=> b!8021528 d!2392040))

(declare-fun d!2392050 () Bool)

(assert (=> d!2392050 (= (tail!15946 lt!2720049) (t!390739 lt!2720049))))

(assert (=> b!8021528 d!2392050))

(declare-fun d!2392052 () Bool)

(assert (=> d!2392052 (= (tail!15946 lt!2720047) (t!390739 lt!2720047))))

(assert (=> b!8021528 d!2392052))

(declare-fun d!2392054 () Bool)

(assert (=> d!2392054 (= (head!16411 p2!173) (h!81320 p2!173))))

(assert (=> b!8021523 d!2392054))

(assert (=> b!8021523 d!2391998))

(declare-fun d!2392056 () Bool)

(declare-fun lt!2720096 () Int)

(assert (=> d!2392056 (>= lt!2720096 0)))

(declare-fun e!4725381 () Int)

(assert (=> d!2392056 (= lt!2720096 e!4725381)))

(declare-fun c!1472156 () Bool)

(assert (=> d!2392056 (= c!1472156 ((_ is Nil!74872) (t!390739 lt!2720049)))))

(assert (=> d!2392056 (= (size!43657 (t!390739 lt!2720049)) lt!2720096)))

(declare-fun b!8021594 () Bool)

(assert (=> b!8021594 (= e!4725381 0)))

(declare-fun b!8021595 () Bool)

(assert (=> b!8021595 (= e!4725381 (+ 1 (size!43657 (t!390739 (t!390739 lt!2720049)))))))

(assert (= (and d!2392056 c!1472156) b!8021594))

(assert (= (and d!2392056 (not c!1472156)) b!8021595))

(declare-fun m!8384500 () Bool)

(assert (=> b!8021595 m!8384500))

(assert (=> b!8021484 d!2392056))

(declare-fun d!2392058 () Bool)

(assert (=> d!2392058 (= (head!16411 (t!390739 p1!173)) (h!81320 (t!390739 p1!173)))))

(assert (=> b!8021531 d!2392058))

(assert (=> b!8021531 d!2392022))

(assert (=> b!8021525 d!2392024))

(assert (=> b!8021525 d!2391982))

(assert (=> b!8021533 d!2392002))

(assert (=> b!8021533 d!2391944))

(assert (=> b!8021535 d!2391944))

(declare-fun b!8021599 () Bool)

(declare-fun e!4725384 () Bool)

(assert (=> b!8021599 (= e!4725384 (>= (size!43657 (tail!15946 lt!2720047)) (size!43657 (tail!15946 (t!390739 p1!173)))))))

(declare-fun b!8021596 () Bool)

(declare-fun e!4725382 () Bool)

(declare-fun e!4725383 () Bool)

(assert (=> b!8021596 (= e!4725382 e!4725383)))

(declare-fun res!3171872 () Bool)

(assert (=> b!8021596 (=> (not res!3171872) (not e!4725383))))

(assert (=> b!8021596 (= res!3171872 (not ((_ is Nil!74872) (tail!15946 lt!2720047))))))

(declare-fun b!8021598 () Bool)

(assert (=> b!8021598 (= e!4725383 (isPrefix!6803 (tail!15946 (tail!15946 (t!390739 p1!173))) (tail!15946 (tail!15946 lt!2720047))))))

(declare-fun d!2392060 () Bool)

(assert (=> d!2392060 e!4725384))

(declare-fun res!3171874 () Bool)

(assert (=> d!2392060 (=> res!3171874 e!4725384)))

(declare-fun lt!2720097 () Bool)

(assert (=> d!2392060 (= res!3171874 (not lt!2720097))))

(assert (=> d!2392060 (= lt!2720097 e!4725382)))

(declare-fun res!3171873 () Bool)

(assert (=> d!2392060 (=> res!3171873 e!4725382)))

(assert (=> d!2392060 (= res!3171873 ((_ is Nil!74872) (tail!15946 (t!390739 p1!173))))))

(assert (=> d!2392060 (= (isPrefix!6803 (tail!15946 (t!390739 p1!173)) (tail!15946 lt!2720047)) lt!2720097)))

(declare-fun b!8021597 () Bool)

(declare-fun res!3171871 () Bool)

(assert (=> b!8021597 (=> (not res!3171871) (not e!4725383))))

(assert (=> b!8021597 (= res!3171871 (= (head!16411 (tail!15946 (t!390739 p1!173))) (head!16411 (tail!15946 lt!2720047))))))

(assert (= (and d!2392060 (not res!3171873)) b!8021596))

(assert (= (and b!8021596 res!3171872) b!8021597))

(assert (= (and b!8021597 res!3171871) b!8021598))

(assert (= (and d!2392060 (not res!3171874)) b!8021599))

(assert (=> b!8021599 m!8384386))

(assert (=> b!8021599 m!8384480))

(assert (=> b!8021599 m!8384394))

(declare-fun m!8384502 () Bool)

(assert (=> b!8021599 m!8384502))

(assert (=> b!8021598 m!8384394))

(declare-fun m!8384504 () Bool)

(assert (=> b!8021598 m!8384504))

(assert (=> b!8021598 m!8384386))

(assert (=> b!8021598 m!8384490))

(assert (=> b!8021598 m!8384504))

(assert (=> b!8021598 m!8384490))

(declare-fun m!8384506 () Bool)

(assert (=> b!8021598 m!8384506))

(assert (=> b!8021597 m!8384394))

(declare-fun m!8384508 () Bool)

(assert (=> b!8021597 m!8384508))

(assert (=> b!8021597 m!8384386))

(assert (=> b!8021597 m!8384498))

(assert (=> b!8021532 d!2392060))

(declare-fun d!2392062 () Bool)

(assert (=> d!2392062 (= (tail!15946 (t!390739 p1!173)) (t!390739 (t!390739 p1!173)))))

(assert (=> b!8021532 d!2392062))

(assert (=> b!8021532 d!2392052))

(declare-fun b!8021600 () Bool)

(declare-fun e!4725385 () Bool)

(declare-fun tp!2400730 () Bool)

(assert (=> b!8021600 (= e!4725385 (and tp_is_empty!54077 tp!2400730))))

(assert (=> b!8021542 (= tp!2400724 e!4725385)))

(assert (= (and b!8021542 ((_ is Cons!74872) (t!390739 (t!390739 p1!173)))) b!8021600))

(declare-fun b!8021601 () Bool)

(declare-fun e!4725386 () Bool)

(declare-fun tp!2400731 () Bool)

(assert (=> b!8021601 (= e!4725386 (and tp_is_empty!54077 tp!2400731))))

(assert (=> b!8021544 (= tp!2400726 e!4725386)))

(assert (= (and b!8021544 ((_ is Cons!74872) (t!390739 (t!390739 l!3353)))) b!8021601))

(declare-fun b!8021602 () Bool)

(declare-fun e!4725387 () Bool)

(declare-fun tp!2400732 () Bool)

(assert (=> b!8021602 (= e!4725387 (and tp_is_empty!54077 tp!2400732))))

(assert (=> b!8021543 (= tp!2400725 e!4725387)))

(assert (= (and b!8021543 ((_ is Cons!74872) (t!390739 (t!390739 p2!173)))) b!8021602))

(check-sat (not b!8021602) (not b!8021600) (not b!8021582) (not b!8021547) (not b!8021556) (not b!8021559) (not b!8021598) (not b!8021558) (not b!8021583) (not b!8021595) (not b!8021554) (not b!8021599) tp_is_empty!54077 (not b!8021560) (not b!8021546) (not b!8021584) (not b!8021548) (not b!8021576) (not b!8021601) (not b!8021597) (not b!8021572))
(check-sat)
