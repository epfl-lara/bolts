; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247696 () Bool)

(assert start!247696)

(declare-fun b!2555940 () Bool)

(declare-fun res!1076452 () Bool)

(declare-fun e!1614607 () Bool)

(assert (=> b!2555940 (=> res!1076452 e!1614607)))

(declare-datatypes ((C!15380 0))(
  ( (C!15381 (val!9342 Int)) )
))
(declare-datatypes ((Regex!7611 0))(
  ( (ElementMatch!7611 (c!410113 C!15380)) (Concat!12307 (regOne!15734 Regex!7611) (regTwo!15734 Regex!7611)) (EmptyExpr!7611) (Star!7611 (reg!7940 Regex!7611)) (EmptyLang!7611) (Union!7611 (regOne!15735 Regex!7611) (regTwo!15735 Regex!7611)) )
))
(declare-fun lt!904148 () Regex!7611)

(declare-fun nullable!2528 (Regex!7611) Bool)

(assert (=> b!2555940 (= res!1076452 (not (nullable!2528 lt!904148)))))

(declare-fun b!2555941 () Bool)

(declare-fun e!1614608 () Bool)

(declare-fun tp!814802 () Bool)

(assert (=> b!2555941 (= e!1614608 tp!814802)))

(declare-fun b!2555942 () Bool)

(declare-fun e!1614606 () Bool)

(declare-fun lt!904149 () Regex!7611)

(declare-datatypes ((List!29676 0))(
  ( (Nil!29576) (Cons!29576 (h!34996 C!15380) (t!211375 List!29676)) )
))
(declare-fun tl!4068 () List!29676)

(declare-fun matchR!3556 (Regex!7611 List!29676) Bool)

(assert (=> b!2555942 (= e!1614606 (matchR!3556 lt!904149 tl!4068))))

(declare-fun b!2555943 () Bool)

(declare-fun res!1076454 () Bool)

(declare-fun e!1614610 () Bool)

(assert (=> b!2555943 (=> (not res!1076454) (not e!1614610))))

(declare-fun r!27340 () Regex!7611)

(declare-fun c!14016 () C!15380)

(declare-fun derivative!306 (Regex!7611 List!29676) Regex!7611)

(declare-fun derivativeStep!2180 (Regex!7611 C!15380) Regex!7611)

(assert (=> b!2555943 (= res!1076454 (nullable!2528 (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)))))

(declare-fun b!2555944 () Bool)

(declare-fun e!1614609 () Bool)

(assert (=> b!2555944 (= e!1614610 (not e!1614609))))

(declare-fun res!1076446 () Bool)

(assert (=> b!2555944 (=> res!1076446 e!1614609)))

(declare-fun lt!904153 () Bool)

(assert (=> b!2555944 (= res!1076446 (not lt!904153))))

(assert (=> b!2555944 e!1614606))

(declare-fun res!1076445 () Bool)

(assert (=> b!2555944 (=> res!1076445 e!1614606)))

(assert (=> b!2555944 (= res!1076445 lt!904153)))

(declare-fun lt!904151 () Regex!7611)

(assert (=> b!2555944 (= lt!904153 (matchR!3556 lt!904151 tl!4068))))

(declare-datatypes ((Unit!43407 0))(
  ( (Unit!43408) )
))
(declare-fun lt!904147 () Unit!43407)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!206 (Regex!7611 Regex!7611 List!29676) Unit!43407)

(assert (=> b!2555944 (= lt!904147 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!206 lt!904151 lt!904149 tl!4068))))

(declare-fun lt!904152 () Regex!7611)

(assert (=> b!2555944 (= (matchR!3556 lt!904152 tl!4068) (matchR!3556 (derivative!306 lt!904152 tl!4068) Nil!29576))))

(declare-fun lt!904155 () Unit!43407)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!202 (Regex!7611 List!29676) Unit!43407)

(assert (=> b!2555944 (= lt!904155 (lemmaMatchRIsSameAsWholeDerivativeAndNil!202 lt!904152 tl!4068))))

(assert (=> b!2555944 (= lt!904152 (Union!7611 lt!904151 lt!904149))))

(assert (=> b!2555944 (= lt!904149 (derivativeStep!2180 (regTwo!15734 r!27340) c!14016))))

(declare-fun lt!904156 () Regex!7611)

(assert (=> b!2555944 (= lt!904151 (Concat!12307 lt!904156 (regTwo!15734 r!27340)))))

(assert (=> b!2555944 (= lt!904156 (derivativeStep!2180 (regOne!15734 r!27340) c!14016))))

(declare-fun b!2555945 () Bool)

(declare-fun RegexPrimitiveSize!120 (Regex!7611) Int)

(assert (=> b!2555945 (= e!1614607 (< (RegexPrimitiveSize!120 (regOne!15734 r!27340)) (RegexPrimitiveSize!120 r!27340)))))

(declare-fun b!2555946 () Bool)

(declare-fun e!1614604 () Bool)

(declare-fun tp_is_empty!13077 () Bool)

(declare-fun tp!814797 () Bool)

(assert (=> b!2555946 (= e!1614604 (and tp_is_empty!13077 tp!814797))))

(declare-fun b!2555947 () Bool)

(declare-fun tp!814798 () Bool)

(declare-fun tp!814799 () Bool)

(assert (=> b!2555947 (= e!1614608 (and tp!814798 tp!814799))))

(declare-fun b!2555948 () Bool)

(declare-fun res!1076447 () Bool)

(assert (=> b!2555948 (=> (not res!1076447) (not e!1614610))))

(assert (=> b!2555948 (= res!1076447 (nullable!2528 (regOne!15734 r!27340)))))

(declare-fun b!2555949 () Bool)

(declare-fun res!1076448 () Bool)

(assert (=> b!2555949 (=> (not res!1076448) (not e!1614610))))

(get-info :version)

(assert (=> b!2555949 (= res!1076448 (and (not ((_ is EmptyExpr!7611) r!27340)) (not ((_ is EmptyLang!7611) r!27340)) (not ((_ is ElementMatch!7611) r!27340)) (not ((_ is Union!7611) r!27340)) (not ((_ is Star!7611) r!27340))))))

(declare-fun b!2555950 () Bool)

(declare-fun res!1076451 () Bool)

(declare-fun e!1614605 () Bool)

(assert (=> b!2555950 (=> res!1076451 e!1614605)))

(declare-datatypes ((tuple2!29584 0))(
  ( (tuple2!29585 (_1!17334 List!29676) (_2!17334 List!29676)) )
))
(declare-fun lt!904154 () tuple2!29584)

(assert (=> b!2555950 (= res!1076451 (not (matchR!3556 (regOne!15734 r!27340) (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(declare-fun b!2555951 () Bool)

(declare-fun res!1076444 () Bool)

(assert (=> b!2555951 (=> res!1076444 e!1614605)))

(assert (=> b!2555951 (= res!1076444 (not (matchR!3556 lt!904156 (_1!17334 lt!904154))))))

(declare-fun b!2555953 () Bool)

(assert (=> b!2555953 (= e!1614608 tp_is_empty!13077)))

(declare-fun b!2555954 () Bool)

(declare-fun res!1076449 () Bool)

(assert (=> b!2555954 (=> res!1076449 e!1614605)))

(assert (=> b!2555954 (= res!1076449 (not (matchR!3556 (regTwo!15734 r!27340) (_2!17334 lt!904154))))))

(declare-fun b!2555955 () Bool)

(assert (=> b!2555955 (= e!1614605 e!1614607)))

(declare-fun res!1076443 () Bool)

(assert (=> b!2555955 (=> res!1076443 e!1614607)))

(declare-fun validRegex!3237 (Regex!7611) Bool)

(assert (=> b!2555955 (= res!1076443 (not (validRegex!3237 (regOne!15734 r!27340))))))

(assert (=> b!2555955 (matchR!3556 lt!904148 Nil!29576)))

(assert (=> b!2555955 (= lt!904148 (derivative!306 lt!904156 (_1!17334 lt!904154)))))

(declare-fun lt!904145 () Unit!43407)

(assert (=> b!2555955 (= lt!904145 (lemmaMatchRIsSameAsWholeDerivativeAndNil!202 lt!904156 (_1!17334 lt!904154)))))

(declare-fun b!2555956 () Bool)

(declare-fun tp!814800 () Bool)

(declare-fun tp!814801 () Bool)

(assert (=> b!2555956 (= e!1614608 (and tp!814800 tp!814801))))

(declare-fun res!1076453 () Bool)

(assert (=> start!247696 (=> (not res!1076453) (not e!1614610))))

(assert (=> start!247696 (= res!1076453 (validRegex!3237 r!27340))))

(assert (=> start!247696 e!1614610))

(assert (=> start!247696 e!1614608))

(assert (=> start!247696 tp_is_empty!13077))

(assert (=> start!247696 e!1614604))

(declare-fun b!2555952 () Bool)

(assert (=> b!2555952 (= e!1614609 e!1614605)))

(declare-fun res!1076450 () Bool)

(assert (=> b!2555952 (=> res!1076450 e!1614605)))

(declare-fun ++!7268 (List!29676 List!29676) List!29676)

(assert (=> b!2555952 (= res!1076450 (not (= (++!7268 (_1!17334 lt!904154) (_2!17334 lt!904154)) tl!4068)))))

(declare-datatypes ((Option!5912 0))(
  ( (None!5911) (Some!5911 (v!31852 tuple2!29584)) )
))
(declare-fun lt!904146 () Option!5912)

(declare-fun get!9296 (Option!5912) tuple2!29584)

(assert (=> b!2555952 (= lt!904154 (get!9296 lt!904146))))

(declare-fun isDefined!4734 (Option!5912) Bool)

(assert (=> b!2555952 (isDefined!4734 lt!904146)))

(declare-fun findConcatSeparation!934 (Regex!7611 Regex!7611 List!29676 List!29676 List!29676) Option!5912)

(assert (=> b!2555952 (= lt!904146 (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) Nil!29576 tl!4068 tl!4068))))

(declare-fun lt!904150 () Unit!43407)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!216 (Regex!7611 Regex!7611 List!29676) Unit!43407)

(assert (=> b!2555952 (= lt!904150 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!216 lt!904156 (regTwo!15734 r!27340) tl!4068))))

(assert (= (and start!247696 res!1076453) b!2555943))

(assert (= (and b!2555943 res!1076454) b!2555949))

(assert (= (and b!2555949 res!1076448) b!2555948))

(assert (= (and b!2555948 res!1076447) b!2555944))

(assert (= (and b!2555944 (not res!1076445)) b!2555942))

(assert (= (and b!2555944 (not res!1076446)) b!2555952))

(assert (= (and b!2555952 (not res!1076450)) b!2555951))

(assert (= (and b!2555951 (not res!1076444)) b!2555954))

(assert (= (and b!2555954 (not res!1076449)) b!2555950))

(assert (= (and b!2555950 (not res!1076451)) b!2555955))

(assert (= (and b!2555955 (not res!1076443)) b!2555940))

(assert (= (and b!2555940 (not res!1076452)) b!2555945))

(assert (= (and start!247696 ((_ is ElementMatch!7611) r!27340)) b!2555953))

(assert (= (and start!247696 ((_ is Concat!12307) r!27340)) b!2555947))

(assert (= (and start!247696 ((_ is Star!7611) r!27340)) b!2555941))

(assert (= (and start!247696 ((_ is Union!7611) r!27340)) b!2555956))

(assert (= (and start!247696 ((_ is Cons!29576) tl!4068)) b!2555946))

(declare-fun m!2897519 () Bool)

(assert (=> start!247696 m!2897519))

(declare-fun m!2897521 () Bool)

(assert (=> b!2555952 m!2897521))

(declare-fun m!2897523 () Bool)

(assert (=> b!2555952 m!2897523))

(declare-fun m!2897525 () Bool)

(assert (=> b!2555952 m!2897525))

(declare-fun m!2897527 () Bool)

(assert (=> b!2555952 m!2897527))

(declare-fun m!2897529 () Bool)

(assert (=> b!2555952 m!2897529))

(declare-fun m!2897531 () Bool)

(assert (=> b!2555954 m!2897531))

(declare-fun m!2897533 () Bool)

(assert (=> b!2555948 m!2897533))

(declare-fun m!2897535 () Bool)

(assert (=> b!2555955 m!2897535))

(declare-fun m!2897537 () Bool)

(assert (=> b!2555955 m!2897537))

(declare-fun m!2897539 () Bool)

(assert (=> b!2555955 m!2897539))

(declare-fun m!2897541 () Bool)

(assert (=> b!2555955 m!2897541))

(declare-fun m!2897543 () Bool)

(assert (=> b!2555944 m!2897543))

(declare-fun m!2897545 () Bool)

(assert (=> b!2555944 m!2897545))

(declare-fun m!2897547 () Bool)

(assert (=> b!2555944 m!2897547))

(declare-fun m!2897549 () Bool)

(assert (=> b!2555944 m!2897549))

(declare-fun m!2897551 () Bool)

(assert (=> b!2555944 m!2897551))

(declare-fun m!2897553 () Bool)

(assert (=> b!2555944 m!2897553))

(declare-fun m!2897555 () Bool)

(assert (=> b!2555944 m!2897555))

(declare-fun m!2897557 () Bool)

(assert (=> b!2555944 m!2897557))

(assert (=> b!2555944 m!2897555))

(declare-fun m!2897559 () Bool)

(assert (=> b!2555942 m!2897559))

(declare-fun m!2897561 () Bool)

(assert (=> b!2555945 m!2897561))

(declare-fun m!2897563 () Bool)

(assert (=> b!2555945 m!2897563))

(declare-fun m!2897565 () Bool)

(assert (=> b!2555951 m!2897565))

(declare-fun m!2897567 () Bool)

(assert (=> b!2555940 m!2897567))

(declare-fun m!2897569 () Bool)

(assert (=> b!2555950 m!2897569))

(declare-fun m!2897571 () Bool)

(assert (=> b!2555943 m!2897571))

(assert (=> b!2555943 m!2897571))

(declare-fun m!2897573 () Bool)

(assert (=> b!2555943 m!2897573))

(assert (=> b!2555943 m!2897573))

(declare-fun m!2897575 () Bool)

(assert (=> b!2555943 m!2897575))

(check-sat tp_is_empty!13077 (not b!2555941) (not b!2555952) (not b!2555940) (not b!2555946) (not b!2555950) (not b!2555945) (not b!2555954) (not b!2555942) (not start!247696) (not b!2555944) (not b!2555956) (not b!2555943) (not b!2555955) (not b!2555947) (not b!2555951) (not b!2555948))
(check-sat)
(get-model)

(declare-fun call!163130 () Bool)

(declare-fun c!410118 () Bool)

(declare-fun c!410119 () Bool)

(declare-fun bm!163125 () Bool)

(assert (=> bm!163125 (= call!163130 (validRegex!3237 (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))))

(declare-fun d!724267 () Bool)

(declare-fun res!1076468 () Bool)

(declare-fun e!1614630 () Bool)

(assert (=> d!724267 (=> res!1076468 e!1614630)))

(assert (=> d!724267 (= res!1076468 ((_ is ElementMatch!7611) (regOne!15734 r!27340)))))

(assert (=> d!724267 (= (validRegex!3237 (regOne!15734 r!27340)) e!1614630)))

(declare-fun b!2555975 () Bool)

(declare-fun e!1614626 () Bool)

(assert (=> b!2555975 (= e!1614630 e!1614626)))

(assert (=> b!2555975 (= c!410119 ((_ is Star!7611) (regOne!15734 r!27340)))))

(declare-fun b!2555976 () Bool)

(declare-fun e!1614627 () Bool)

(declare-fun call!163132 () Bool)

(assert (=> b!2555976 (= e!1614627 call!163132)))

(declare-fun b!2555977 () Bool)

(declare-fun e!1614625 () Bool)

(declare-fun call!163131 () Bool)

(assert (=> b!2555977 (= e!1614625 call!163131)))

(declare-fun b!2555978 () Bool)

(declare-fun e!1614628 () Bool)

(assert (=> b!2555978 (= e!1614628 e!1614625)))

(declare-fun res!1076465 () Bool)

(assert (=> b!2555978 (=> (not res!1076465) (not e!1614625))))

(assert (=> b!2555978 (= res!1076465 call!163132)))

(declare-fun b!2555979 () Bool)

(declare-fun res!1076466 () Bool)

(assert (=> b!2555979 (=> res!1076466 e!1614628)))

(assert (=> b!2555979 (= res!1076466 (not ((_ is Concat!12307) (regOne!15734 r!27340))))))

(declare-fun e!1614631 () Bool)

(assert (=> b!2555979 (= e!1614631 e!1614628)))

(declare-fun bm!163126 () Bool)

(assert (=> bm!163126 (= call!163132 (validRegex!3237 (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))

(declare-fun bm!163127 () Bool)

(assert (=> bm!163127 (= call!163131 call!163130)))

(declare-fun b!2555980 () Bool)

(declare-fun e!1614629 () Bool)

(assert (=> b!2555980 (= e!1614629 call!163130)))

(declare-fun b!2555981 () Bool)

(declare-fun res!1076469 () Bool)

(assert (=> b!2555981 (=> (not res!1076469) (not e!1614627))))

(assert (=> b!2555981 (= res!1076469 call!163131)))

(assert (=> b!2555981 (= e!1614631 e!1614627)))

(declare-fun b!2555982 () Bool)

(assert (=> b!2555982 (= e!1614626 e!1614631)))

(assert (=> b!2555982 (= c!410118 ((_ is Union!7611) (regOne!15734 r!27340)))))

(declare-fun b!2555983 () Bool)

(assert (=> b!2555983 (= e!1614626 e!1614629)))

(declare-fun res!1076467 () Bool)

(assert (=> b!2555983 (= res!1076467 (not (nullable!2528 (reg!7940 (regOne!15734 r!27340)))))))

(assert (=> b!2555983 (=> (not res!1076467) (not e!1614629))))

(assert (= (and d!724267 (not res!1076468)) b!2555975))

(assert (= (and b!2555975 c!410119) b!2555983))

(assert (= (and b!2555975 (not c!410119)) b!2555982))

(assert (= (and b!2555983 res!1076467) b!2555980))

(assert (= (and b!2555982 c!410118) b!2555981))

(assert (= (and b!2555982 (not c!410118)) b!2555979))

(assert (= (and b!2555981 res!1076469) b!2555976))

(assert (= (and b!2555979 (not res!1076466)) b!2555978))

(assert (= (and b!2555978 res!1076465) b!2555977))

(assert (= (or b!2555981 b!2555977) bm!163127))

(assert (= (or b!2555976 b!2555978) bm!163126))

(assert (= (or b!2555980 bm!163127) bm!163125))

(declare-fun m!2897577 () Bool)

(assert (=> bm!163125 m!2897577))

(declare-fun m!2897579 () Bool)

(assert (=> bm!163126 m!2897579))

(declare-fun m!2897581 () Bool)

(assert (=> b!2555983 m!2897581))

(assert (=> b!2555955 d!724267))

(declare-fun b!2556054 () Bool)

(declare-fun res!1076511 () Bool)

(declare-fun e!1614670 () Bool)

(assert (=> b!2556054 (=> res!1076511 e!1614670)))

(assert (=> b!2556054 (= res!1076511 (not ((_ is ElementMatch!7611) lt!904148)))))

(declare-fun e!1614667 () Bool)

(assert (=> b!2556054 (= e!1614667 e!1614670)))

(declare-fun b!2556055 () Bool)

(declare-fun e!1614668 () Bool)

(declare-fun e!1614669 () Bool)

(assert (=> b!2556055 (= e!1614668 e!1614669)))

(declare-fun res!1076510 () Bool)

(assert (=> b!2556055 (=> res!1076510 e!1614669)))

(declare-fun call!163138 () Bool)

(assert (=> b!2556055 (= res!1076510 call!163138)))

(declare-fun b!2556056 () Bool)

(declare-fun e!1614673 () Bool)

(declare-fun head!5818 (List!29676) C!15380)

(assert (=> b!2556056 (= e!1614673 (= (head!5818 Nil!29576) (c!410113 lt!904148)))))

(declare-fun b!2556057 () Bool)

(declare-fun e!1614671 () Bool)

(declare-fun tail!4093 (List!29676) List!29676)

(assert (=> b!2556057 (= e!1614671 (matchR!3556 (derivativeStep!2180 lt!904148 (head!5818 Nil!29576)) (tail!4093 Nil!29576)))))

(declare-fun b!2556058 () Bool)

(declare-fun res!1076517 () Bool)

(assert (=> b!2556058 (=> (not res!1076517) (not e!1614673))))

(assert (=> b!2556058 (= res!1076517 (not call!163138))))

(declare-fun b!2556059 () Bool)

(assert (=> b!2556059 (= e!1614669 (not (= (head!5818 Nil!29576) (c!410113 lt!904148))))))

(declare-fun b!2556060 () Bool)

(declare-fun res!1076514 () Bool)

(assert (=> b!2556060 (=> res!1076514 e!1614669)))

(declare-fun isEmpty!17030 (List!29676) Bool)

(assert (=> b!2556060 (= res!1076514 (not (isEmpty!17030 (tail!4093 Nil!29576))))))

(declare-fun b!2556061 () Bool)

(declare-fun e!1614672 () Bool)

(declare-fun lt!904162 () Bool)

(assert (=> b!2556061 (= e!1614672 (= lt!904162 call!163138))))

(declare-fun b!2556062 () Bool)

(assert (=> b!2556062 (= e!1614671 (nullable!2528 lt!904148))))

(declare-fun b!2556063 () Bool)

(declare-fun res!1076512 () Bool)

(assert (=> b!2556063 (=> res!1076512 e!1614670)))

(assert (=> b!2556063 (= res!1076512 e!1614673)))

(declare-fun res!1076515 () Bool)

(assert (=> b!2556063 (=> (not res!1076515) (not e!1614673))))

(assert (=> b!2556063 (= res!1076515 lt!904162)))

(declare-fun bm!163133 () Bool)

(assert (=> bm!163133 (= call!163138 (isEmpty!17030 Nil!29576))))

(declare-fun b!2556064 () Bool)

(declare-fun res!1076513 () Bool)

(assert (=> b!2556064 (=> (not res!1076513) (not e!1614673))))

(assert (=> b!2556064 (= res!1076513 (isEmpty!17030 (tail!4093 Nil!29576)))))

(declare-fun b!2556065 () Bool)

(assert (=> b!2556065 (= e!1614670 e!1614668)))

(declare-fun res!1076516 () Bool)

(assert (=> b!2556065 (=> (not res!1076516) (not e!1614668))))

(assert (=> b!2556065 (= res!1076516 (not lt!904162))))

(declare-fun d!724271 () Bool)

(assert (=> d!724271 e!1614672))

(declare-fun c!410135 () Bool)

(assert (=> d!724271 (= c!410135 ((_ is EmptyExpr!7611) lt!904148))))

(assert (=> d!724271 (= lt!904162 e!1614671)))

(declare-fun c!410137 () Bool)

(assert (=> d!724271 (= c!410137 (isEmpty!17030 Nil!29576))))

(assert (=> d!724271 (validRegex!3237 lt!904148)))

(assert (=> d!724271 (= (matchR!3556 lt!904148 Nil!29576) lt!904162)))

(declare-fun b!2556066 () Bool)

(assert (=> b!2556066 (= e!1614667 (not lt!904162))))

(declare-fun b!2556067 () Bool)

(assert (=> b!2556067 (= e!1614672 e!1614667)))

(declare-fun c!410136 () Bool)

(assert (=> b!2556067 (= c!410136 ((_ is EmptyLang!7611) lt!904148))))

(assert (= (and d!724271 c!410137) b!2556062))

(assert (= (and d!724271 (not c!410137)) b!2556057))

(assert (= (and d!724271 c!410135) b!2556061))

(assert (= (and d!724271 (not c!410135)) b!2556067))

(assert (= (and b!2556067 c!410136) b!2556066))

(assert (= (and b!2556067 (not c!410136)) b!2556054))

(assert (= (and b!2556054 (not res!1076511)) b!2556063))

(assert (= (and b!2556063 res!1076515) b!2556058))

(assert (= (and b!2556058 res!1076517) b!2556064))

(assert (= (and b!2556064 res!1076513) b!2556056))

(assert (= (and b!2556063 (not res!1076512)) b!2556065))

(assert (= (and b!2556065 res!1076516) b!2556055))

(assert (= (and b!2556055 (not res!1076510)) b!2556060))

(assert (= (and b!2556060 (not res!1076514)) b!2556059))

(assert (= (or b!2556061 b!2556055 b!2556058) bm!163133))

(declare-fun m!2897597 () Bool)

(assert (=> b!2556057 m!2897597))

(assert (=> b!2556057 m!2897597))

(declare-fun m!2897599 () Bool)

(assert (=> b!2556057 m!2897599))

(declare-fun m!2897601 () Bool)

(assert (=> b!2556057 m!2897601))

(assert (=> b!2556057 m!2897599))

(assert (=> b!2556057 m!2897601))

(declare-fun m!2897603 () Bool)

(assert (=> b!2556057 m!2897603))

(assert (=> b!2556056 m!2897597))

(declare-fun m!2897605 () Bool)

(assert (=> bm!163133 m!2897605))

(assert (=> d!724271 m!2897605))

(declare-fun m!2897607 () Bool)

(assert (=> d!724271 m!2897607))

(assert (=> b!2556064 m!2897601))

(assert (=> b!2556064 m!2897601))

(declare-fun m!2897609 () Bool)

(assert (=> b!2556064 m!2897609))

(assert (=> b!2556060 m!2897601))

(assert (=> b!2556060 m!2897601))

(assert (=> b!2556060 m!2897609))

(assert (=> b!2556062 m!2897567))

(assert (=> b!2556059 m!2897597))

(assert (=> b!2555955 d!724271))

(declare-fun d!724277 () Bool)

(declare-fun lt!904168 () Regex!7611)

(assert (=> d!724277 (validRegex!3237 lt!904168)))

(declare-fun e!1614679 () Regex!7611)

(assert (=> d!724277 (= lt!904168 e!1614679)))

(declare-fun c!410143 () Bool)

(assert (=> d!724277 (= c!410143 ((_ is Cons!29576) (_1!17334 lt!904154)))))

(assert (=> d!724277 (validRegex!3237 lt!904156)))

(assert (=> d!724277 (= (derivative!306 lt!904156 (_1!17334 lt!904154)) lt!904168)))

(declare-fun b!2556078 () Bool)

(assert (=> b!2556078 (= e!1614679 (derivative!306 (derivativeStep!2180 lt!904156 (h!34996 (_1!17334 lt!904154))) (t!211375 (_1!17334 lt!904154))))))

(declare-fun b!2556079 () Bool)

(assert (=> b!2556079 (= e!1614679 lt!904156)))

(assert (= (and d!724277 c!410143) b!2556078))

(assert (= (and d!724277 (not c!410143)) b!2556079))

(declare-fun m!2897619 () Bool)

(assert (=> d!724277 m!2897619))

(declare-fun m!2897621 () Bool)

(assert (=> d!724277 m!2897621))

(declare-fun m!2897623 () Bool)

(assert (=> b!2556078 m!2897623))

(assert (=> b!2556078 m!2897623))

(declare-fun m!2897625 () Bool)

(assert (=> b!2556078 m!2897625))

(assert (=> b!2555955 d!724277))

(declare-fun d!724281 () Bool)

(assert (=> d!724281 (= (matchR!3556 lt!904156 (_1!17334 lt!904154)) (matchR!3556 (derivative!306 lt!904156 (_1!17334 lt!904154)) Nil!29576))))

(declare-fun lt!904173 () Unit!43407)

(declare-fun choose!15089 (Regex!7611 List!29676) Unit!43407)

(assert (=> d!724281 (= lt!904173 (choose!15089 lt!904156 (_1!17334 lt!904154)))))

(assert (=> d!724281 (validRegex!3237 lt!904156)))

(assert (=> d!724281 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!202 lt!904156 (_1!17334 lt!904154)) lt!904173)))

(declare-fun bs!469717 () Bool)

(assert (= bs!469717 d!724281))

(assert (=> bs!469717 m!2897621))

(assert (=> bs!469717 m!2897539))

(declare-fun m!2897627 () Bool)

(assert (=> bs!469717 m!2897627))

(assert (=> bs!469717 m!2897565))

(declare-fun m!2897629 () Bool)

(assert (=> bs!469717 m!2897629))

(assert (=> bs!469717 m!2897539))

(assert (=> b!2555955 d!724281))

(declare-fun b!2556144 () Bool)

(declare-fun c!410172 () Bool)

(assert (=> b!2556144 (= c!410172 ((_ is EmptyLang!7611) (regOne!15734 r!27340)))))

(declare-fun e!1614712 () Int)

(declare-fun e!1614714 () Int)

(assert (=> b!2556144 (= e!1614712 e!1614714)))

(declare-fun d!724283 () Bool)

(declare-fun lt!904178 () Int)

(assert (=> d!724283 (>= lt!904178 0)))

(declare-fun e!1614716 () Int)

(assert (=> d!724283 (= lt!904178 e!1614716)))

(declare-fun c!410174 () Bool)

(assert (=> d!724283 (= c!410174 ((_ is ElementMatch!7611) (regOne!15734 r!27340)))))

(assert (=> d!724283 (= (RegexPrimitiveSize!120 (regOne!15734 r!27340)) lt!904178)))

(declare-fun b!2556145 () Bool)

(declare-fun call!163160 () Int)

(declare-fun call!163159 () Int)

(assert (=> b!2556145 (= e!1614714 (+ 1 call!163160 call!163159))))

(declare-fun bm!163153 () Bool)

(declare-fun call!163158 () Int)

(assert (=> bm!163153 (= call!163160 call!163158)))

(declare-fun b!2556146 () Bool)

(assert (=> b!2556146 (= e!1614714 0)))

(declare-fun b!2556147 () Bool)

(declare-fun e!1614713 () Int)

(assert (=> b!2556147 (= e!1614713 e!1614712)))

(declare-fun c!410173 () Bool)

(assert (=> b!2556147 (= c!410173 ((_ is Star!7611) (regOne!15734 r!27340)))))

(declare-fun b!2556148 () Bool)

(declare-fun e!1614715 () Int)

(assert (=> b!2556148 (= e!1614716 e!1614715)))

(declare-fun c!410176 () Bool)

(assert (=> b!2556148 (= c!410176 ((_ is Concat!12307) (regOne!15734 r!27340)))))

(declare-fun b!2556149 () Bool)

(declare-fun c!410175 () Bool)

(assert (=> b!2556149 (= c!410175 ((_ is EmptyExpr!7611) (regOne!15734 r!27340)))))

(assert (=> b!2556149 (= e!1614715 e!1614713)))

(declare-fun b!2556150 () Bool)

(assert (=> b!2556150 (= e!1614713 0)))

(declare-fun b!2556151 () Bool)

(assert (=> b!2556151 (= e!1614715 (+ 1 call!163159 call!163158))))

(declare-fun bm!163154 () Bool)

(assert (=> bm!163154 (= call!163159 (RegexPrimitiveSize!120 (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))))))

(declare-fun bm!163155 () Bool)

(assert (=> bm!163155 (= call!163158 (RegexPrimitiveSize!120 (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))))))

(declare-fun b!2556152 () Bool)

(assert (=> b!2556152 (= e!1614712 (+ 1 call!163160))))

(declare-fun b!2556153 () Bool)

(assert (=> b!2556153 (= e!1614716 1)))

(assert (= (and d!724283 c!410174) b!2556153))

(assert (= (and d!724283 (not c!410174)) b!2556148))

(assert (= (and b!2556148 c!410176) b!2556151))

(assert (= (and b!2556148 (not c!410176)) b!2556149))

(assert (= (and b!2556149 c!410175) b!2556150))

(assert (= (and b!2556149 (not c!410175)) b!2556147))

(assert (= (and b!2556147 c!410173) b!2556152))

(assert (= (and b!2556147 (not c!410173)) b!2556144))

(assert (= (and b!2556144 c!410172) b!2556146))

(assert (= (and b!2556144 (not c!410172)) b!2556145))

(assert (= (or b!2556152 b!2556145) bm!163153))

(assert (= (or b!2556151 bm!163153) bm!163155))

(assert (= (or b!2556151 b!2556145) bm!163154))

(declare-fun m!2897653 () Bool)

(assert (=> bm!163154 m!2897653))

(declare-fun m!2897655 () Bool)

(assert (=> bm!163155 m!2897655))

(assert (=> b!2555945 d!724283))

(declare-fun b!2556172 () Bool)

(declare-fun c!410181 () Bool)

(assert (=> b!2556172 (= c!410181 ((_ is EmptyLang!7611) r!27340))))

(declare-fun e!1614731 () Int)

(declare-fun e!1614733 () Int)

(assert (=> b!2556172 (= e!1614731 e!1614733)))

(declare-fun d!724289 () Bool)

(declare-fun lt!904179 () Int)

(assert (=> d!724289 (>= lt!904179 0)))

(declare-fun e!1614735 () Int)

(assert (=> d!724289 (= lt!904179 e!1614735)))

(declare-fun c!410183 () Bool)

(assert (=> d!724289 (= c!410183 ((_ is ElementMatch!7611) r!27340))))

(assert (=> d!724289 (= (RegexPrimitiveSize!120 r!27340) lt!904179)))

(declare-fun b!2556173 () Bool)

(declare-fun call!163165 () Int)

(declare-fun call!163164 () Int)

(assert (=> b!2556173 (= e!1614733 (+ 1 call!163165 call!163164))))

(declare-fun bm!163158 () Bool)

(declare-fun call!163163 () Int)

(assert (=> bm!163158 (= call!163165 call!163163)))

(declare-fun b!2556174 () Bool)

(assert (=> b!2556174 (= e!1614733 0)))

(declare-fun b!2556175 () Bool)

(declare-fun e!1614732 () Int)

(assert (=> b!2556175 (= e!1614732 e!1614731)))

(declare-fun c!410182 () Bool)

(assert (=> b!2556175 (= c!410182 ((_ is Star!7611) r!27340))))

(declare-fun b!2556176 () Bool)

(declare-fun e!1614734 () Int)

(assert (=> b!2556176 (= e!1614735 e!1614734)))

(declare-fun c!410185 () Bool)

(assert (=> b!2556176 (= c!410185 ((_ is Concat!12307) r!27340))))

(declare-fun b!2556177 () Bool)

(declare-fun c!410184 () Bool)

(assert (=> b!2556177 (= c!410184 ((_ is EmptyExpr!7611) r!27340))))

(assert (=> b!2556177 (= e!1614734 e!1614732)))

(declare-fun b!2556178 () Bool)

(assert (=> b!2556178 (= e!1614732 0)))

(declare-fun b!2556179 () Bool)

(assert (=> b!2556179 (= e!1614734 (+ 1 call!163164 call!163163))))

(declare-fun bm!163159 () Bool)

(assert (=> bm!163159 (= call!163164 (RegexPrimitiveSize!120 (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))))))

(declare-fun bm!163160 () Bool)

(assert (=> bm!163160 (= call!163163 (RegexPrimitiveSize!120 (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))))))

(declare-fun b!2556180 () Bool)

(assert (=> b!2556180 (= e!1614731 (+ 1 call!163165))))

(declare-fun b!2556181 () Bool)

(assert (=> b!2556181 (= e!1614735 1)))

(assert (= (and d!724289 c!410183) b!2556181))

(assert (= (and d!724289 (not c!410183)) b!2556176))

(assert (= (and b!2556176 c!410185) b!2556179))

(assert (= (and b!2556176 (not c!410185)) b!2556177))

(assert (= (and b!2556177 c!410184) b!2556178))

(assert (= (and b!2556177 (not c!410184)) b!2556175))

(assert (= (and b!2556175 c!410182) b!2556180))

(assert (= (and b!2556175 (not c!410182)) b!2556172))

(assert (= (and b!2556172 c!410181) b!2556174))

(assert (= (and b!2556172 (not c!410181)) b!2556173))

(assert (= (or b!2556180 b!2556173) bm!163158))

(assert (= (or b!2556179 bm!163158) bm!163160))

(assert (= (or b!2556179 b!2556173) bm!163159))

(declare-fun m!2897657 () Bool)

(assert (=> bm!163159 m!2897657))

(declare-fun m!2897659 () Bool)

(assert (=> bm!163160 m!2897659))

(assert (=> b!2555945 d!724289))

(declare-fun b!2556182 () Bool)

(declare-fun res!1076537 () Bool)

(declare-fun e!1614739 () Bool)

(assert (=> b!2556182 (=> res!1076537 e!1614739)))

(assert (=> b!2556182 (= res!1076537 (not ((_ is ElementMatch!7611) (regTwo!15734 r!27340))))))

(declare-fun e!1614736 () Bool)

(assert (=> b!2556182 (= e!1614736 e!1614739)))

(declare-fun b!2556183 () Bool)

(declare-fun e!1614737 () Bool)

(declare-fun e!1614738 () Bool)

(assert (=> b!2556183 (= e!1614737 e!1614738)))

(declare-fun res!1076536 () Bool)

(assert (=> b!2556183 (=> res!1076536 e!1614738)))

(declare-fun call!163170 () Bool)

(assert (=> b!2556183 (= res!1076536 call!163170)))

(declare-fun b!2556184 () Bool)

(declare-fun e!1614742 () Bool)

(assert (=> b!2556184 (= e!1614742 (= (head!5818 (_2!17334 lt!904154)) (c!410113 (regTwo!15734 r!27340))))))

(declare-fun b!2556185 () Bool)

(declare-fun e!1614740 () Bool)

(assert (=> b!2556185 (= e!1614740 (matchR!3556 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154))) (tail!4093 (_2!17334 lt!904154))))))

(declare-fun b!2556186 () Bool)

(declare-fun res!1076543 () Bool)

(assert (=> b!2556186 (=> (not res!1076543) (not e!1614742))))

(assert (=> b!2556186 (= res!1076543 (not call!163170))))

(declare-fun b!2556187 () Bool)

(assert (=> b!2556187 (= e!1614738 (not (= (head!5818 (_2!17334 lt!904154)) (c!410113 (regTwo!15734 r!27340)))))))

(declare-fun b!2556188 () Bool)

(declare-fun res!1076540 () Bool)

(assert (=> b!2556188 (=> res!1076540 e!1614738)))

(assert (=> b!2556188 (= res!1076540 (not (isEmpty!17030 (tail!4093 (_2!17334 lt!904154)))))))

(declare-fun b!2556189 () Bool)

(declare-fun e!1614741 () Bool)

(declare-fun lt!904180 () Bool)

(assert (=> b!2556189 (= e!1614741 (= lt!904180 call!163170))))

(declare-fun b!2556190 () Bool)

(assert (=> b!2556190 (= e!1614740 (nullable!2528 (regTwo!15734 r!27340)))))

(declare-fun b!2556191 () Bool)

(declare-fun res!1076538 () Bool)

(assert (=> b!2556191 (=> res!1076538 e!1614739)))

(assert (=> b!2556191 (= res!1076538 e!1614742)))

(declare-fun res!1076541 () Bool)

(assert (=> b!2556191 (=> (not res!1076541) (not e!1614742))))

(assert (=> b!2556191 (= res!1076541 lt!904180)))

(declare-fun bm!163165 () Bool)

(assert (=> bm!163165 (= call!163170 (isEmpty!17030 (_2!17334 lt!904154)))))

(declare-fun b!2556192 () Bool)

(declare-fun res!1076539 () Bool)

(assert (=> b!2556192 (=> (not res!1076539) (not e!1614742))))

(assert (=> b!2556192 (= res!1076539 (isEmpty!17030 (tail!4093 (_2!17334 lt!904154))))))

(declare-fun b!2556193 () Bool)

(assert (=> b!2556193 (= e!1614739 e!1614737)))

(declare-fun res!1076542 () Bool)

(assert (=> b!2556193 (=> (not res!1076542) (not e!1614737))))

(assert (=> b!2556193 (= res!1076542 (not lt!904180))))

(declare-fun d!724291 () Bool)

(assert (=> d!724291 e!1614741))

(declare-fun c!410186 () Bool)

(assert (=> d!724291 (= c!410186 ((_ is EmptyExpr!7611) (regTwo!15734 r!27340)))))

(assert (=> d!724291 (= lt!904180 e!1614740)))

(declare-fun c!410188 () Bool)

(assert (=> d!724291 (= c!410188 (isEmpty!17030 (_2!17334 lt!904154)))))

(assert (=> d!724291 (validRegex!3237 (regTwo!15734 r!27340))))

(assert (=> d!724291 (= (matchR!3556 (regTwo!15734 r!27340) (_2!17334 lt!904154)) lt!904180)))

(declare-fun b!2556194 () Bool)

(assert (=> b!2556194 (= e!1614736 (not lt!904180))))

(declare-fun b!2556195 () Bool)

(assert (=> b!2556195 (= e!1614741 e!1614736)))

(declare-fun c!410187 () Bool)

(assert (=> b!2556195 (= c!410187 ((_ is EmptyLang!7611) (regTwo!15734 r!27340)))))

(assert (= (and d!724291 c!410188) b!2556190))

(assert (= (and d!724291 (not c!410188)) b!2556185))

(assert (= (and d!724291 c!410186) b!2556189))

(assert (= (and d!724291 (not c!410186)) b!2556195))

(assert (= (and b!2556195 c!410187) b!2556194))

(assert (= (and b!2556195 (not c!410187)) b!2556182))

(assert (= (and b!2556182 (not res!1076537)) b!2556191))

(assert (= (and b!2556191 res!1076541) b!2556186))

(assert (= (and b!2556186 res!1076543) b!2556192))

(assert (= (and b!2556192 res!1076539) b!2556184))

(assert (= (and b!2556191 (not res!1076538)) b!2556193))

(assert (= (and b!2556193 res!1076542) b!2556183))

(assert (= (and b!2556183 (not res!1076536)) b!2556188))

(assert (= (and b!2556188 (not res!1076540)) b!2556187))

(assert (= (or b!2556189 b!2556183 b!2556186) bm!163165))

(declare-fun m!2897661 () Bool)

(assert (=> b!2556185 m!2897661))

(assert (=> b!2556185 m!2897661))

(declare-fun m!2897663 () Bool)

(assert (=> b!2556185 m!2897663))

(declare-fun m!2897665 () Bool)

(assert (=> b!2556185 m!2897665))

(assert (=> b!2556185 m!2897663))

(assert (=> b!2556185 m!2897665))

(declare-fun m!2897667 () Bool)

(assert (=> b!2556185 m!2897667))

(assert (=> b!2556184 m!2897661))

(declare-fun m!2897669 () Bool)

(assert (=> bm!163165 m!2897669))

(assert (=> d!724291 m!2897669))

(declare-fun m!2897671 () Bool)

(assert (=> d!724291 m!2897671))

(assert (=> b!2556192 m!2897665))

(assert (=> b!2556192 m!2897665))

(declare-fun m!2897673 () Bool)

(assert (=> b!2556192 m!2897673))

(assert (=> b!2556188 m!2897665))

(assert (=> b!2556188 m!2897665))

(assert (=> b!2556188 m!2897673))

(declare-fun m!2897675 () Bool)

(assert (=> b!2556190 m!2897675))

(assert (=> b!2556187 m!2897661))

(assert (=> b!2555954 d!724291))

(declare-fun d!724293 () Bool)

(declare-fun nullableFct!753 (Regex!7611) Bool)

(assert (=> d!724293 (= (nullable!2528 (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)) (nullableFct!753 (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469718 () Bool)

(assert (= bs!469718 d!724293))

(assert (=> bs!469718 m!2897573))

(declare-fun m!2897677 () Bool)

(assert (=> bs!469718 m!2897677))

(assert (=> b!2555943 d!724293))

(declare-fun d!724295 () Bool)

(declare-fun lt!904181 () Regex!7611)

(assert (=> d!724295 (validRegex!3237 lt!904181)))

(declare-fun e!1614744 () Regex!7611)

(assert (=> d!724295 (= lt!904181 e!1614744)))

(declare-fun c!410189 () Bool)

(assert (=> d!724295 (= c!410189 ((_ is Cons!29576) tl!4068))))

(assert (=> d!724295 (validRegex!3237 (derivativeStep!2180 r!27340 c!14016))))

(assert (=> d!724295 (= (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068) lt!904181)))

(declare-fun b!2556196 () Bool)

(assert (=> b!2556196 (= e!1614744 (derivative!306 (derivativeStep!2180 (derivativeStep!2180 r!27340 c!14016) (h!34996 tl!4068)) (t!211375 tl!4068)))))

(declare-fun b!2556197 () Bool)

(assert (=> b!2556197 (= e!1614744 (derivativeStep!2180 r!27340 c!14016))))

(assert (= (and d!724295 c!410189) b!2556196))

(assert (= (and d!724295 (not c!410189)) b!2556197))

(declare-fun m!2897679 () Bool)

(assert (=> d!724295 m!2897679))

(assert (=> d!724295 m!2897571))

(declare-fun m!2897681 () Bool)

(assert (=> d!724295 m!2897681))

(assert (=> b!2556196 m!2897571))

(declare-fun m!2897683 () Bool)

(assert (=> b!2556196 m!2897683))

(assert (=> b!2556196 m!2897683))

(declare-fun m!2897685 () Bool)

(assert (=> b!2556196 m!2897685))

(assert (=> b!2555943 d!724295))

(declare-fun b!2556277 () Bool)

(declare-fun e!1614787 () Regex!7611)

(declare-fun e!1614788 () Regex!7611)

(assert (=> b!2556277 (= e!1614787 e!1614788)))

(declare-fun c!410220 () Bool)

(assert (=> b!2556277 (= c!410220 ((_ is ElementMatch!7611) r!27340))))

(declare-fun b!2556278 () Bool)

(declare-fun c!410223 () Bool)

(assert (=> b!2556278 (= c!410223 (nullable!2528 (regOne!15734 r!27340)))))

(declare-fun e!1614786 () Regex!7611)

(declare-fun e!1614790 () Regex!7611)

(assert (=> b!2556278 (= e!1614786 e!1614790)))

(declare-fun b!2556279 () Bool)

(declare-fun call!163190 () Regex!7611)

(assert (=> b!2556279 (= e!1614790 (Union!7611 (Concat!12307 call!163190 (regTwo!15734 r!27340)) EmptyLang!7611))))

(declare-fun b!2556280 () Bool)

(declare-fun e!1614789 () Regex!7611)

(declare-fun call!163191 () Regex!7611)

(declare-fun call!163193 () Regex!7611)

(assert (=> b!2556280 (= e!1614789 (Union!7611 call!163191 call!163193))))

(declare-fun bm!163185 () Bool)

(declare-fun c!410222 () Bool)

(assert (=> bm!163185 (= call!163191 (derivativeStep!2180 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)) c!14016))))

(declare-fun bm!163186 () Bool)

(declare-fun call!163192 () Regex!7611)

(assert (=> bm!163186 (= call!163190 call!163192)))

(declare-fun bm!163187 () Bool)

(assert (=> bm!163187 (= call!163192 call!163193)))

(declare-fun bm!163188 () Bool)

(declare-fun c!410221 () Bool)

(assert (=> bm!163188 (= call!163193 (derivativeStep!2180 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))) c!14016))))

(declare-fun b!2556281 () Bool)

(assert (=> b!2556281 (= e!1614789 e!1614786)))

(assert (=> b!2556281 (= c!410221 ((_ is Star!7611) r!27340))))

(declare-fun b!2556282 () Bool)

(assert (=> b!2556282 (= e!1614788 (ite (= c!14016 (c!410113 r!27340)) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2556283 () Bool)

(assert (=> b!2556283 (= e!1614786 (Concat!12307 call!163192 r!27340))))

(declare-fun b!2556284 () Bool)

(assert (=> b!2556284 (= e!1614787 EmptyLang!7611)))

(declare-fun b!2556285 () Bool)

(assert (=> b!2556285 (= e!1614790 (Union!7611 (Concat!12307 call!163190 (regTwo!15734 r!27340)) call!163191))))

(declare-fun b!2556286 () Bool)

(assert (=> b!2556286 (= c!410222 ((_ is Union!7611) r!27340))))

(assert (=> b!2556286 (= e!1614788 e!1614789)))

(declare-fun d!724297 () Bool)

(declare-fun lt!904192 () Regex!7611)

(assert (=> d!724297 (validRegex!3237 lt!904192)))

(assert (=> d!724297 (= lt!904192 e!1614787)))

(declare-fun c!410219 () Bool)

(assert (=> d!724297 (= c!410219 (or ((_ is EmptyExpr!7611) r!27340) ((_ is EmptyLang!7611) r!27340)))))

(assert (=> d!724297 (validRegex!3237 r!27340)))

(assert (=> d!724297 (= (derivativeStep!2180 r!27340 c!14016) lt!904192)))

(assert (= (and d!724297 c!410219) b!2556284))

(assert (= (and d!724297 (not c!410219)) b!2556277))

(assert (= (and b!2556277 c!410220) b!2556282))

(assert (= (and b!2556277 (not c!410220)) b!2556286))

(assert (= (and b!2556286 c!410222) b!2556280))

(assert (= (and b!2556286 (not c!410222)) b!2556281))

(assert (= (and b!2556281 c!410221) b!2556283))

(assert (= (and b!2556281 (not c!410221)) b!2556278))

(assert (= (and b!2556278 c!410223) b!2556285))

(assert (= (and b!2556278 (not c!410223)) b!2556279))

(assert (= (or b!2556285 b!2556279) bm!163186))

(assert (= (or b!2556283 bm!163186) bm!163187))

(assert (= (or b!2556280 bm!163187) bm!163188))

(assert (= (or b!2556280 b!2556285) bm!163185))

(assert (=> b!2556278 m!2897533))

(declare-fun m!2897739 () Bool)

(assert (=> bm!163185 m!2897739))

(declare-fun m!2897741 () Bool)

(assert (=> bm!163188 m!2897741))

(declare-fun m!2897743 () Bool)

(assert (=> d!724297 m!2897743))

(assert (=> d!724297 m!2897519))

(assert (=> b!2555943 d!724297))

(declare-fun d!724313 () Bool)

(assert (=> d!724313 (= (matchR!3556 lt!904152 tl!4068) (matchR!3556 (derivative!306 lt!904152 tl!4068) Nil!29576))))

(declare-fun lt!904195 () Unit!43407)

(assert (=> d!724313 (= lt!904195 (choose!15089 lt!904152 tl!4068))))

(assert (=> d!724313 (validRegex!3237 lt!904152)))

(assert (=> d!724313 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!202 lt!904152 tl!4068) lt!904195)))

(declare-fun bs!469721 () Bool)

(assert (= bs!469721 d!724313))

(declare-fun m!2897749 () Bool)

(assert (=> bs!469721 m!2897749))

(assert (=> bs!469721 m!2897555))

(assert (=> bs!469721 m!2897557))

(assert (=> bs!469721 m!2897549))

(declare-fun m!2897751 () Bool)

(assert (=> bs!469721 m!2897751))

(assert (=> bs!469721 m!2897555))

(assert (=> b!2555944 d!724313))

(declare-fun b!2556316 () Bool)

(declare-fun res!1076571 () Bool)

(declare-fun e!1614811 () Bool)

(assert (=> b!2556316 (=> res!1076571 e!1614811)))

(assert (=> b!2556316 (= res!1076571 (not ((_ is ElementMatch!7611) lt!904152)))))

(declare-fun e!1614808 () Bool)

(assert (=> b!2556316 (= e!1614808 e!1614811)))

(declare-fun b!2556317 () Bool)

(declare-fun e!1614809 () Bool)

(declare-fun e!1614810 () Bool)

(assert (=> b!2556317 (= e!1614809 e!1614810)))

(declare-fun res!1076570 () Bool)

(assert (=> b!2556317 (=> res!1076570 e!1614810)))

(declare-fun call!163203 () Bool)

(assert (=> b!2556317 (= res!1076570 call!163203)))

(declare-fun b!2556318 () Bool)

(declare-fun e!1614814 () Bool)

(assert (=> b!2556318 (= e!1614814 (= (head!5818 tl!4068) (c!410113 lt!904152)))))

(declare-fun b!2556319 () Bool)

(declare-fun e!1614812 () Bool)

(assert (=> b!2556319 (= e!1614812 (matchR!3556 (derivativeStep!2180 lt!904152 (head!5818 tl!4068)) (tail!4093 tl!4068)))))

(declare-fun b!2556320 () Bool)

(declare-fun res!1076577 () Bool)

(assert (=> b!2556320 (=> (not res!1076577) (not e!1614814))))

(assert (=> b!2556320 (= res!1076577 (not call!163203))))

(declare-fun b!2556321 () Bool)

(assert (=> b!2556321 (= e!1614810 (not (= (head!5818 tl!4068) (c!410113 lt!904152))))))

(declare-fun b!2556322 () Bool)

(declare-fun res!1076574 () Bool)

(assert (=> b!2556322 (=> res!1076574 e!1614810)))

(assert (=> b!2556322 (= res!1076574 (not (isEmpty!17030 (tail!4093 tl!4068))))))

(declare-fun b!2556323 () Bool)

(declare-fun e!1614813 () Bool)

(declare-fun lt!904196 () Bool)

(assert (=> b!2556323 (= e!1614813 (= lt!904196 call!163203))))

(declare-fun b!2556324 () Bool)

(assert (=> b!2556324 (= e!1614812 (nullable!2528 lt!904152))))

(declare-fun b!2556325 () Bool)

(declare-fun res!1076572 () Bool)

(assert (=> b!2556325 (=> res!1076572 e!1614811)))

(assert (=> b!2556325 (= res!1076572 e!1614814)))

(declare-fun res!1076575 () Bool)

(assert (=> b!2556325 (=> (not res!1076575) (not e!1614814))))

(assert (=> b!2556325 (= res!1076575 lt!904196)))

(declare-fun bm!163198 () Bool)

(assert (=> bm!163198 (= call!163203 (isEmpty!17030 tl!4068))))

(declare-fun b!2556326 () Bool)

(declare-fun res!1076573 () Bool)

(assert (=> b!2556326 (=> (not res!1076573) (not e!1614814))))

(assert (=> b!2556326 (= res!1076573 (isEmpty!17030 (tail!4093 tl!4068)))))

(declare-fun b!2556327 () Bool)

(assert (=> b!2556327 (= e!1614811 e!1614809)))

(declare-fun res!1076576 () Bool)

(assert (=> b!2556327 (=> (not res!1076576) (not e!1614809))))

(assert (=> b!2556327 (= res!1076576 (not lt!904196))))

(declare-fun d!724317 () Bool)

(assert (=> d!724317 e!1614813))

(declare-fun c!410236 () Bool)

(assert (=> d!724317 (= c!410236 ((_ is EmptyExpr!7611) lt!904152))))

(assert (=> d!724317 (= lt!904196 e!1614812)))

(declare-fun c!410238 () Bool)

(assert (=> d!724317 (= c!410238 (isEmpty!17030 tl!4068))))

(assert (=> d!724317 (validRegex!3237 lt!904152)))

(assert (=> d!724317 (= (matchR!3556 lt!904152 tl!4068) lt!904196)))

(declare-fun b!2556328 () Bool)

(assert (=> b!2556328 (= e!1614808 (not lt!904196))))

(declare-fun b!2556329 () Bool)

(assert (=> b!2556329 (= e!1614813 e!1614808)))

(declare-fun c!410237 () Bool)

(assert (=> b!2556329 (= c!410237 ((_ is EmptyLang!7611) lt!904152))))

(assert (= (and d!724317 c!410238) b!2556324))

(assert (= (and d!724317 (not c!410238)) b!2556319))

(assert (= (and d!724317 c!410236) b!2556323))

(assert (= (and d!724317 (not c!410236)) b!2556329))

(assert (= (and b!2556329 c!410237) b!2556328))

(assert (= (and b!2556329 (not c!410237)) b!2556316))

(assert (= (and b!2556316 (not res!1076571)) b!2556325))

(assert (= (and b!2556325 res!1076575) b!2556320))

(assert (= (and b!2556320 res!1076577) b!2556326))

(assert (= (and b!2556326 res!1076573) b!2556318))

(assert (= (and b!2556325 (not res!1076572)) b!2556327))

(assert (= (and b!2556327 res!1076576) b!2556317))

(assert (= (and b!2556317 (not res!1076570)) b!2556322))

(assert (= (and b!2556322 (not res!1076574)) b!2556321))

(assert (= (or b!2556323 b!2556317 b!2556320) bm!163198))

(declare-fun m!2897759 () Bool)

(assert (=> b!2556319 m!2897759))

(assert (=> b!2556319 m!2897759))

(declare-fun m!2897761 () Bool)

(assert (=> b!2556319 m!2897761))

(declare-fun m!2897763 () Bool)

(assert (=> b!2556319 m!2897763))

(assert (=> b!2556319 m!2897761))

(assert (=> b!2556319 m!2897763))

(declare-fun m!2897765 () Bool)

(assert (=> b!2556319 m!2897765))

(assert (=> b!2556318 m!2897759))

(declare-fun m!2897767 () Bool)

(assert (=> bm!163198 m!2897767))

(assert (=> d!724317 m!2897767))

(assert (=> d!724317 m!2897749))

(assert (=> b!2556326 m!2897763))

(assert (=> b!2556326 m!2897763))

(declare-fun m!2897769 () Bool)

(assert (=> b!2556326 m!2897769))

(assert (=> b!2556322 m!2897763))

(assert (=> b!2556322 m!2897763))

(assert (=> b!2556322 m!2897769))

(declare-fun m!2897771 () Bool)

(assert (=> b!2556324 m!2897771))

(assert (=> b!2556321 m!2897759))

(assert (=> b!2555944 d!724317))

(declare-fun d!724321 () Bool)

(declare-fun lt!904197 () Regex!7611)

(assert (=> d!724321 (validRegex!3237 lt!904197)))

(declare-fun e!1614815 () Regex!7611)

(assert (=> d!724321 (= lt!904197 e!1614815)))

(declare-fun c!410239 () Bool)

(assert (=> d!724321 (= c!410239 ((_ is Cons!29576) tl!4068))))

(assert (=> d!724321 (validRegex!3237 lt!904152)))

(assert (=> d!724321 (= (derivative!306 lt!904152 tl!4068) lt!904197)))

(declare-fun b!2556330 () Bool)

(assert (=> b!2556330 (= e!1614815 (derivative!306 (derivativeStep!2180 lt!904152 (h!34996 tl!4068)) (t!211375 tl!4068)))))

(declare-fun b!2556331 () Bool)

(assert (=> b!2556331 (= e!1614815 lt!904152)))

(assert (= (and d!724321 c!410239) b!2556330))

(assert (= (and d!724321 (not c!410239)) b!2556331))

(declare-fun m!2897773 () Bool)

(assert (=> d!724321 m!2897773))

(assert (=> d!724321 m!2897749))

(declare-fun m!2897775 () Bool)

(assert (=> b!2556330 m!2897775))

(assert (=> b!2556330 m!2897775))

(declare-fun m!2897777 () Bool)

(assert (=> b!2556330 m!2897777))

(assert (=> b!2555944 d!724321))

(declare-fun b!2556332 () Bool)

(declare-fun res!1076579 () Bool)

(declare-fun e!1614819 () Bool)

(assert (=> b!2556332 (=> res!1076579 e!1614819)))

(assert (=> b!2556332 (= res!1076579 (not ((_ is ElementMatch!7611) (derivative!306 lt!904152 tl!4068))))))

(declare-fun e!1614816 () Bool)

(assert (=> b!2556332 (= e!1614816 e!1614819)))

(declare-fun b!2556333 () Bool)

(declare-fun e!1614817 () Bool)

(declare-fun e!1614818 () Bool)

(assert (=> b!2556333 (= e!1614817 e!1614818)))

(declare-fun res!1076578 () Bool)

(assert (=> b!2556333 (=> res!1076578 e!1614818)))

(declare-fun call!163204 () Bool)

(assert (=> b!2556333 (= res!1076578 call!163204)))

(declare-fun b!2556334 () Bool)

(declare-fun e!1614822 () Bool)

(assert (=> b!2556334 (= e!1614822 (= (head!5818 Nil!29576) (c!410113 (derivative!306 lt!904152 tl!4068))))))

(declare-fun b!2556335 () Bool)

(declare-fun e!1614820 () Bool)

(assert (=> b!2556335 (= e!1614820 (matchR!3556 (derivativeStep!2180 (derivative!306 lt!904152 tl!4068) (head!5818 Nil!29576)) (tail!4093 Nil!29576)))))

(declare-fun b!2556336 () Bool)

(declare-fun res!1076585 () Bool)

(assert (=> b!2556336 (=> (not res!1076585) (not e!1614822))))

(assert (=> b!2556336 (= res!1076585 (not call!163204))))

(declare-fun b!2556337 () Bool)

(assert (=> b!2556337 (= e!1614818 (not (= (head!5818 Nil!29576) (c!410113 (derivative!306 lt!904152 tl!4068)))))))

(declare-fun b!2556338 () Bool)

(declare-fun res!1076582 () Bool)

(assert (=> b!2556338 (=> res!1076582 e!1614818)))

(assert (=> b!2556338 (= res!1076582 (not (isEmpty!17030 (tail!4093 Nil!29576))))))

(declare-fun b!2556339 () Bool)

(declare-fun e!1614821 () Bool)

(declare-fun lt!904198 () Bool)

(assert (=> b!2556339 (= e!1614821 (= lt!904198 call!163204))))

(declare-fun b!2556340 () Bool)

(assert (=> b!2556340 (= e!1614820 (nullable!2528 (derivative!306 lt!904152 tl!4068)))))

(declare-fun b!2556341 () Bool)

(declare-fun res!1076580 () Bool)

(assert (=> b!2556341 (=> res!1076580 e!1614819)))

(assert (=> b!2556341 (= res!1076580 e!1614822)))

(declare-fun res!1076583 () Bool)

(assert (=> b!2556341 (=> (not res!1076583) (not e!1614822))))

(assert (=> b!2556341 (= res!1076583 lt!904198)))

(declare-fun bm!163199 () Bool)

(assert (=> bm!163199 (= call!163204 (isEmpty!17030 Nil!29576))))

(declare-fun b!2556342 () Bool)

(declare-fun res!1076581 () Bool)

(assert (=> b!2556342 (=> (not res!1076581) (not e!1614822))))

(assert (=> b!2556342 (= res!1076581 (isEmpty!17030 (tail!4093 Nil!29576)))))

(declare-fun b!2556343 () Bool)

(assert (=> b!2556343 (= e!1614819 e!1614817)))

(declare-fun res!1076584 () Bool)

(assert (=> b!2556343 (=> (not res!1076584) (not e!1614817))))

(assert (=> b!2556343 (= res!1076584 (not lt!904198))))

(declare-fun d!724323 () Bool)

(assert (=> d!724323 e!1614821))

(declare-fun c!410240 () Bool)

(assert (=> d!724323 (= c!410240 ((_ is EmptyExpr!7611) (derivative!306 lt!904152 tl!4068)))))

(assert (=> d!724323 (= lt!904198 e!1614820)))

(declare-fun c!410242 () Bool)

(assert (=> d!724323 (= c!410242 (isEmpty!17030 Nil!29576))))

(assert (=> d!724323 (validRegex!3237 (derivative!306 lt!904152 tl!4068))))

(assert (=> d!724323 (= (matchR!3556 (derivative!306 lt!904152 tl!4068) Nil!29576) lt!904198)))

(declare-fun b!2556344 () Bool)

(assert (=> b!2556344 (= e!1614816 (not lt!904198))))

(declare-fun b!2556345 () Bool)

(assert (=> b!2556345 (= e!1614821 e!1614816)))

(declare-fun c!410241 () Bool)

(assert (=> b!2556345 (= c!410241 ((_ is EmptyLang!7611) (derivative!306 lt!904152 tl!4068)))))

(assert (= (and d!724323 c!410242) b!2556340))

(assert (= (and d!724323 (not c!410242)) b!2556335))

(assert (= (and d!724323 c!410240) b!2556339))

(assert (= (and d!724323 (not c!410240)) b!2556345))

(assert (= (and b!2556345 c!410241) b!2556344))

(assert (= (and b!2556345 (not c!410241)) b!2556332))

(assert (= (and b!2556332 (not res!1076579)) b!2556341))

(assert (= (and b!2556341 res!1076583) b!2556336))

(assert (= (and b!2556336 res!1076585) b!2556342))

(assert (= (and b!2556342 res!1076581) b!2556334))

(assert (= (and b!2556341 (not res!1076580)) b!2556343))

(assert (= (and b!2556343 res!1076584) b!2556333))

(assert (= (and b!2556333 (not res!1076578)) b!2556338))

(assert (= (and b!2556338 (not res!1076582)) b!2556337))

(assert (= (or b!2556339 b!2556333 b!2556336) bm!163199))

(assert (=> b!2556335 m!2897597))

(assert (=> b!2556335 m!2897555))

(assert (=> b!2556335 m!2897597))

(declare-fun m!2897779 () Bool)

(assert (=> b!2556335 m!2897779))

(assert (=> b!2556335 m!2897601))

(assert (=> b!2556335 m!2897779))

(assert (=> b!2556335 m!2897601))

(declare-fun m!2897781 () Bool)

(assert (=> b!2556335 m!2897781))

(assert (=> b!2556334 m!2897597))

(assert (=> bm!163199 m!2897605))

(assert (=> d!724323 m!2897605))

(assert (=> d!724323 m!2897555))

(declare-fun m!2897783 () Bool)

(assert (=> d!724323 m!2897783))

(assert (=> b!2556342 m!2897601))

(assert (=> b!2556342 m!2897601))

(assert (=> b!2556342 m!2897609))

(assert (=> b!2556338 m!2897601))

(assert (=> b!2556338 m!2897601))

(assert (=> b!2556338 m!2897609))

(assert (=> b!2556340 m!2897555))

(declare-fun m!2897785 () Bool)

(assert (=> b!2556340 m!2897785))

(assert (=> b!2556337 m!2897597))

(assert (=> b!2555944 d!724323))

(declare-fun d!724325 () Bool)

(declare-fun e!1614838 () Bool)

(assert (=> d!724325 e!1614838))

(declare-fun res!1076600 () Bool)

(assert (=> d!724325 (=> res!1076600 e!1614838)))

(assert (=> d!724325 (= res!1076600 (matchR!3556 lt!904151 tl!4068))))

(declare-fun lt!904207 () Unit!43407)

(declare-fun choose!15092 (Regex!7611 Regex!7611 List!29676) Unit!43407)

(assert (=> d!724325 (= lt!904207 (choose!15092 lt!904151 lt!904149 tl!4068))))

(declare-fun e!1614837 () Bool)

(assert (=> d!724325 e!1614837))

(declare-fun res!1076601 () Bool)

(assert (=> d!724325 (=> (not res!1076601) (not e!1614837))))

(assert (=> d!724325 (= res!1076601 (validRegex!3237 lt!904151))))

(assert (=> d!724325 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!206 lt!904151 lt!904149 tl!4068) lt!904207)))

(declare-fun b!2556368 () Bool)

(assert (=> b!2556368 (= e!1614837 (validRegex!3237 lt!904149))))

(declare-fun b!2556369 () Bool)

(assert (=> b!2556369 (= e!1614838 (matchR!3556 lt!904149 tl!4068))))

(assert (= (and d!724325 res!1076601) b!2556368))

(assert (= (and d!724325 (not res!1076600)) b!2556369))

(assert (=> d!724325 m!2897547))

(declare-fun m!2897787 () Bool)

(assert (=> d!724325 m!2897787))

(declare-fun m!2897789 () Bool)

(assert (=> d!724325 m!2897789))

(declare-fun m!2897791 () Bool)

(assert (=> b!2556368 m!2897791))

(assert (=> b!2556369 m!2897559))

(assert (=> b!2555944 d!724325))

(declare-fun b!2556370 () Bool)

(declare-fun e!1614840 () Regex!7611)

(declare-fun e!1614841 () Regex!7611)

(assert (=> b!2556370 (= e!1614840 e!1614841)))

(declare-fun c!410248 () Bool)

(assert (=> b!2556370 (= c!410248 ((_ is ElementMatch!7611) (regOne!15734 r!27340)))))

(declare-fun b!2556371 () Bool)

(declare-fun c!410251 () Bool)

(assert (=> b!2556371 (= c!410251 (nullable!2528 (regOne!15734 (regOne!15734 r!27340))))))

(declare-fun e!1614839 () Regex!7611)

(declare-fun e!1614843 () Regex!7611)

(assert (=> b!2556371 (= e!1614839 e!1614843)))

(declare-fun b!2556372 () Bool)

(declare-fun call!163205 () Regex!7611)

(assert (=> b!2556372 (= e!1614843 (Union!7611 (Concat!12307 call!163205 (regTwo!15734 (regOne!15734 r!27340))) EmptyLang!7611))))

(declare-fun b!2556373 () Bool)

(declare-fun e!1614842 () Regex!7611)

(declare-fun call!163206 () Regex!7611)

(declare-fun call!163208 () Regex!7611)

(assert (=> b!2556373 (= e!1614842 (Union!7611 call!163206 call!163208))))

(declare-fun c!410250 () Bool)

(declare-fun bm!163200 () Bool)

(assert (=> bm!163200 (= call!163206 (derivativeStep!2180 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))) c!14016))))

(declare-fun bm!163201 () Bool)

(declare-fun call!163207 () Regex!7611)

(assert (=> bm!163201 (= call!163205 call!163207)))

(declare-fun bm!163202 () Bool)

(assert (=> bm!163202 (= call!163207 call!163208)))

(declare-fun c!410249 () Bool)

(declare-fun bm!163203 () Bool)

(assert (=> bm!163203 (= call!163208 (derivativeStep!2180 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))) c!14016))))

(declare-fun b!2556374 () Bool)

(assert (=> b!2556374 (= e!1614842 e!1614839)))

(assert (=> b!2556374 (= c!410249 ((_ is Star!7611) (regOne!15734 r!27340)))))

(declare-fun b!2556375 () Bool)

(assert (=> b!2556375 (= e!1614841 (ite (= c!14016 (c!410113 (regOne!15734 r!27340))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2556376 () Bool)

(assert (=> b!2556376 (= e!1614839 (Concat!12307 call!163207 (regOne!15734 r!27340)))))

(declare-fun b!2556377 () Bool)

(assert (=> b!2556377 (= e!1614840 EmptyLang!7611)))

(declare-fun b!2556378 () Bool)

(assert (=> b!2556378 (= e!1614843 (Union!7611 (Concat!12307 call!163205 (regTwo!15734 (regOne!15734 r!27340))) call!163206))))

(declare-fun b!2556379 () Bool)

(assert (=> b!2556379 (= c!410250 ((_ is Union!7611) (regOne!15734 r!27340)))))

(assert (=> b!2556379 (= e!1614841 e!1614842)))

(declare-fun d!724327 () Bool)

(declare-fun lt!904208 () Regex!7611)

(assert (=> d!724327 (validRegex!3237 lt!904208)))

(assert (=> d!724327 (= lt!904208 e!1614840)))

(declare-fun c!410247 () Bool)

(assert (=> d!724327 (= c!410247 (or ((_ is EmptyExpr!7611) (regOne!15734 r!27340)) ((_ is EmptyLang!7611) (regOne!15734 r!27340))))))

(assert (=> d!724327 (validRegex!3237 (regOne!15734 r!27340))))

(assert (=> d!724327 (= (derivativeStep!2180 (regOne!15734 r!27340) c!14016) lt!904208)))

(assert (= (and d!724327 c!410247) b!2556377))

(assert (= (and d!724327 (not c!410247)) b!2556370))

(assert (= (and b!2556370 c!410248) b!2556375))

(assert (= (and b!2556370 (not c!410248)) b!2556379))

(assert (= (and b!2556379 c!410250) b!2556373))

(assert (= (and b!2556379 (not c!410250)) b!2556374))

(assert (= (and b!2556374 c!410249) b!2556376))

(assert (= (and b!2556374 (not c!410249)) b!2556371))

(assert (= (and b!2556371 c!410251) b!2556378))

(assert (= (and b!2556371 (not c!410251)) b!2556372))

(assert (= (or b!2556378 b!2556372) bm!163201))

(assert (= (or b!2556376 bm!163201) bm!163202))

(assert (= (or b!2556373 bm!163202) bm!163203))

(assert (= (or b!2556373 b!2556378) bm!163200))

(declare-fun m!2897805 () Bool)

(assert (=> b!2556371 m!2897805))

(declare-fun m!2897809 () Bool)

(assert (=> bm!163200 m!2897809))

(declare-fun m!2897815 () Bool)

(assert (=> bm!163203 m!2897815))

(declare-fun m!2897819 () Bool)

(assert (=> d!724327 m!2897819))

(assert (=> d!724327 m!2897535))

(assert (=> b!2555944 d!724327))

(declare-fun b!2556389 () Bool)

(declare-fun e!1614850 () Regex!7611)

(declare-fun e!1614851 () Regex!7611)

(assert (=> b!2556389 (= e!1614850 e!1614851)))

(declare-fun c!410255 () Bool)

(assert (=> b!2556389 (= c!410255 ((_ is ElementMatch!7611) (regTwo!15734 r!27340)))))

(declare-fun b!2556390 () Bool)

(declare-fun c!410258 () Bool)

(assert (=> b!2556390 (= c!410258 (nullable!2528 (regOne!15734 (regTwo!15734 r!27340))))))

(declare-fun e!1614849 () Regex!7611)

(declare-fun e!1614853 () Regex!7611)

(assert (=> b!2556390 (= e!1614849 e!1614853)))

(declare-fun b!2556391 () Bool)

(declare-fun call!163209 () Regex!7611)

(assert (=> b!2556391 (= e!1614853 (Union!7611 (Concat!12307 call!163209 (regTwo!15734 (regTwo!15734 r!27340))) EmptyLang!7611))))

(declare-fun b!2556392 () Bool)

(declare-fun e!1614852 () Regex!7611)

(declare-fun call!163210 () Regex!7611)

(declare-fun call!163212 () Regex!7611)

(assert (=> b!2556392 (= e!1614852 (Union!7611 call!163210 call!163212))))

(declare-fun c!410257 () Bool)

(declare-fun bm!163204 () Bool)

(assert (=> bm!163204 (= call!163210 (derivativeStep!2180 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))) c!14016))))

(declare-fun bm!163205 () Bool)

(declare-fun call!163211 () Regex!7611)

(assert (=> bm!163205 (= call!163209 call!163211)))

(declare-fun bm!163206 () Bool)

(assert (=> bm!163206 (= call!163211 call!163212)))

(declare-fun c!410256 () Bool)

(declare-fun bm!163207 () Bool)

(assert (=> bm!163207 (= call!163212 (derivativeStep!2180 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))) c!14016))))

(declare-fun b!2556393 () Bool)

(assert (=> b!2556393 (= e!1614852 e!1614849)))

(assert (=> b!2556393 (= c!410256 ((_ is Star!7611) (regTwo!15734 r!27340)))))

(declare-fun b!2556394 () Bool)

(assert (=> b!2556394 (= e!1614851 (ite (= c!14016 (c!410113 (regTwo!15734 r!27340))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2556395 () Bool)

(assert (=> b!2556395 (= e!1614849 (Concat!12307 call!163211 (regTwo!15734 r!27340)))))

(declare-fun b!2556396 () Bool)

(assert (=> b!2556396 (= e!1614850 EmptyLang!7611)))

(declare-fun b!2556397 () Bool)

(assert (=> b!2556397 (= e!1614853 (Union!7611 (Concat!12307 call!163209 (regTwo!15734 (regTwo!15734 r!27340))) call!163210))))

(declare-fun b!2556398 () Bool)

(assert (=> b!2556398 (= c!410257 ((_ is Union!7611) (regTwo!15734 r!27340)))))

(assert (=> b!2556398 (= e!1614851 e!1614852)))

(declare-fun d!724331 () Bool)

(declare-fun lt!904212 () Regex!7611)

(assert (=> d!724331 (validRegex!3237 lt!904212)))

(assert (=> d!724331 (= lt!904212 e!1614850)))

(declare-fun c!410254 () Bool)

(assert (=> d!724331 (= c!410254 (or ((_ is EmptyExpr!7611) (regTwo!15734 r!27340)) ((_ is EmptyLang!7611) (regTwo!15734 r!27340))))))

(assert (=> d!724331 (validRegex!3237 (regTwo!15734 r!27340))))

(assert (=> d!724331 (= (derivativeStep!2180 (regTwo!15734 r!27340) c!14016) lt!904212)))

(assert (= (and d!724331 c!410254) b!2556396))

(assert (= (and d!724331 (not c!410254)) b!2556389))

(assert (= (and b!2556389 c!410255) b!2556394))

(assert (= (and b!2556389 (not c!410255)) b!2556398))

(assert (= (and b!2556398 c!410257) b!2556392))

(assert (= (and b!2556398 (not c!410257)) b!2556393))

(assert (= (and b!2556393 c!410256) b!2556395))

(assert (= (and b!2556393 (not c!410256)) b!2556390))

(assert (= (and b!2556390 c!410258) b!2556397))

(assert (= (and b!2556390 (not c!410258)) b!2556391))

(assert (= (or b!2556397 b!2556391) bm!163205))

(assert (= (or b!2556395 bm!163205) bm!163206))

(assert (= (or b!2556392 bm!163206) bm!163207))

(assert (= (or b!2556392 b!2556397) bm!163204))

(declare-fun m!2897823 () Bool)

(assert (=> b!2556390 m!2897823))

(declare-fun m!2897825 () Bool)

(assert (=> bm!163204 m!2897825))

(declare-fun m!2897827 () Bool)

(assert (=> bm!163207 m!2897827))

(declare-fun m!2897829 () Bool)

(assert (=> d!724331 m!2897829))

(assert (=> d!724331 m!2897671))

(assert (=> b!2555944 d!724331))

(declare-fun b!2556399 () Bool)

(declare-fun res!1076608 () Bool)

(declare-fun e!1614857 () Bool)

(assert (=> b!2556399 (=> res!1076608 e!1614857)))

(assert (=> b!2556399 (= res!1076608 (not ((_ is ElementMatch!7611) lt!904151)))))

(declare-fun e!1614854 () Bool)

(assert (=> b!2556399 (= e!1614854 e!1614857)))

(declare-fun b!2556400 () Bool)

(declare-fun e!1614855 () Bool)

(declare-fun e!1614856 () Bool)

(assert (=> b!2556400 (= e!1614855 e!1614856)))

(declare-fun res!1076607 () Bool)

(assert (=> b!2556400 (=> res!1076607 e!1614856)))

(declare-fun call!163213 () Bool)

(assert (=> b!2556400 (= res!1076607 call!163213)))

(declare-fun b!2556401 () Bool)

(declare-fun e!1614860 () Bool)

(assert (=> b!2556401 (= e!1614860 (= (head!5818 tl!4068) (c!410113 lt!904151)))))

(declare-fun b!2556402 () Bool)

(declare-fun e!1614858 () Bool)

(assert (=> b!2556402 (= e!1614858 (matchR!3556 (derivativeStep!2180 lt!904151 (head!5818 tl!4068)) (tail!4093 tl!4068)))))

(declare-fun b!2556403 () Bool)

(declare-fun res!1076614 () Bool)

(assert (=> b!2556403 (=> (not res!1076614) (not e!1614860))))

(assert (=> b!2556403 (= res!1076614 (not call!163213))))

(declare-fun b!2556404 () Bool)

(assert (=> b!2556404 (= e!1614856 (not (= (head!5818 tl!4068) (c!410113 lt!904151))))))

(declare-fun b!2556405 () Bool)

(declare-fun res!1076611 () Bool)

(assert (=> b!2556405 (=> res!1076611 e!1614856)))

(assert (=> b!2556405 (= res!1076611 (not (isEmpty!17030 (tail!4093 tl!4068))))))

(declare-fun b!2556406 () Bool)

(declare-fun e!1614859 () Bool)

(declare-fun lt!904213 () Bool)

(assert (=> b!2556406 (= e!1614859 (= lt!904213 call!163213))))

(declare-fun b!2556407 () Bool)

(assert (=> b!2556407 (= e!1614858 (nullable!2528 lt!904151))))

(declare-fun b!2556408 () Bool)

(declare-fun res!1076609 () Bool)

(assert (=> b!2556408 (=> res!1076609 e!1614857)))

(assert (=> b!2556408 (= res!1076609 e!1614860)))

(declare-fun res!1076612 () Bool)

(assert (=> b!2556408 (=> (not res!1076612) (not e!1614860))))

(assert (=> b!2556408 (= res!1076612 lt!904213)))

(declare-fun bm!163208 () Bool)

(assert (=> bm!163208 (= call!163213 (isEmpty!17030 tl!4068))))

(declare-fun b!2556409 () Bool)

(declare-fun res!1076610 () Bool)

(assert (=> b!2556409 (=> (not res!1076610) (not e!1614860))))

(assert (=> b!2556409 (= res!1076610 (isEmpty!17030 (tail!4093 tl!4068)))))

(declare-fun b!2556410 () Bool)

(assert (=> b!2556410 (= e!1614857 e!1614855)))

(declare-fun res!1076613 () Bool)

(assert (=> b!2556410 (=> (not res!1076613) (not e!1614855))))

(assert (=> b!2556410 (= res!1076613 (not lt!904213))))

(declare-fun d!724333 () Bool)

(assert (=> d!724333 e!1614859))

(declare-fun c!410259 () Bool)

(assert (=> d!724333 (= c!410259 ((_ is EmptyExpr!7611) lt!904151))))

(assert (=> d!724333 (= lt!904213 e!1614858)))

(declare-fun c!410261 () Bool)

(assert (=> d!724333 (= c!410261 (isEmpty!17030 tl!4068))))

(assert (=> d!724333 (validRegex!3237 lt!904151)))

(assert (=> d!724333 (= (matchR!3556 lt!904151 tl!4068) lt!904213)))

(declare-fun b!2556411 () Bool)

(assert (=> b!2556411 (= e!1614854 (not lt!904213))))

(declare-fun b!2556412 () Bool)

(assert (=> b!2556412 (= e!1614859 e!1614854)))

(declare-fun c!410260 () Bool)

(assert (=> b!2556412 (= c!410260 ((_ is EmptyLang!7611) lt!904151))))

(assert (= (and d!724333 c!410261) b!2556407))

(assert (= (and d!724333 (not c!410261)) b!2556402))

(assert (= (and d!724333 c!410259) b!2556406))

(assert (= (and d!724333 (not c!410259)) b!2556412))

(assert (= (and b!2556412 c!410260) b!2556411))

(assert (= (and b!2556412 (not c!410260)) b!2556399))

(assert (= (and b!2556399 (not res!1076608)) b!2556408))

(assert (= (and b!2556408 res!1076612) b!2556403))

(assert (= (and b!2556403 res!1076614) b!2556409))

(assert (= (and b!2556409 res!1076610) b!2556401))

(assert (= (and b!2556408 (not res!1076609)) b!2556410))

(assert (= (and b!2556410 res!1076613) b!2556400))

(assert (= (and b!2556400 (not res!1076607)) b!2556405))

(assert (= (and b!2556405 (not res!1076611)) b!2556404))

(assert (= (or b!2556406 b!2556400 b!2556403) bm!163208))

(assert (=> b!2556402 m!2897759))

(assert (=> b!2556402 m!2897759))

(declare-fun m!2897831 () Bool)

(assert (=> b!2556402 m!2897831))

(assert (=> b!2556402 m!2897763))

(assert (=> b!2556402 m!2897831))

(assert (=> b!2556402 m!2897763))

(declare-fun m!2897833 () Bool)

(assert (=> b!2556402 m!2897833))

(assert (=> b!2556401 m!2897759))

(assert (=> bm!163208 m!2897767))

(assert (=> d!724333 m!2897767))

(assert (=> d!724333 m!2897789))

(assert (=> b!2556409 m!2897763))

(assert (=> b!2556409 m!2897763))

(assert (=> b!2556409 m!2897769))

(assert (=> b!2556405 m!2897763))

(assert (=> b!2556405 m!2897763))

(assert (=> b!2556405 m!2897769))

(declare-fun m!2897839 () Bool)

(assert (=> b!2556407 m!2897839))

(assert (=> b!2556404 m!2897759))

(assert (=> b!2555944 d!724333))

(declare-fun b!2556413 () Bool)

(declare-fun res!1076616 () Bool)

(declare-fun e!1614864 () Bool)

(assert (=> b!2556413 (=> res!1076616 e!1614864)))

(assert (=> b!2556413 (= res!1076616 (not ((_ is ElementMatch!7611) lt!904149)))))

(declare-fun e!1614861 () Bool)

(assert (=> b!2556413 (= e!1614861 e!1614864)))

(declare-fun b!2556414 () Bool)

(declare-fun e!1614862 () Bool)

(declare-fun e!1614863 () Bool)

(assert (=> b!2556414 (= e!1614862 e!1614863)))

(declare-fun res!1076615 () Bool)

(assert (=> b!2556414 (=> res!1076615 e!1614863)))

(declare-fun call!163214 () Bool)

(assert (=> b!2556414 (= res!1076615 call!163214)))

(declare-fun b!2556415 () Bool)

(declare-fun e!1614867 () Bool)

(assert (=> b!2556415 (= e!1614867 (= (head!5818 tl!4068) (c!410113 lt!904149)))))

(declare-fun b!2556416 () Bool)

(declare-fun e!1614865 () Bool)

(assert (=> b!2556416 (= e!1614865 (matchR!3556 (derivativeStep!2180 lt!904149 (head!5818 tl!4068)) (tail!4093 tl!4068)))))

(declare-fun b!2556417 () Bool)

(declare-fun res!1076622 () Bool)

(assert (=> b!2556417 (=> (not res!1076622) (not e!1614867))))

(assert (=> b!2556417 (= res!1076622 (not call!163214))))

(declare-fun b!2556418 () Bool)

(assert (=> b!2556418 (= e!1614863 (not (= (head!5818 tl!4068) (c!410113 lt!904149))))))

(declare-fun b!2556419 () Bool)

(declare-fun res!1076619 () Bool)

(assert (=> b!2556419 (=> res!1076619 e!1614863)))

(assert (=> b!2556419 (= res!1076619 (not (isEmpty!17030 (tail!4093 tl!4068))))))

(declare-fun b!2556420 () Bool)

(declare-fun e!1614866 () Bool)

(declare-fun lt!904217 () Bool)

(assert (=> b!2556420 (= e!1614866 (= lt!904217 call!163214))))

(declare-fun b!2556421 () Bool)

(assert (=> b!2556421 (= e!1614865 (nullable!2528 lt!904149))))

(declare-fun b!2556422 () Bool)

(declare-fun res!1076617 () Bool)

(assert (=> b!2556422 (=> res!1076617 e!1614864)))

(assert (=> b!2556422 (= res!1076617 e!1614867)))

(declare-fun res!1076620 () Bool)

(assert (=> b!2556422 (=> (not res!1076620) (not e!1614867))))

(assert (=> b!2556422 (= res!1076620 lt!904217)))

(declare-fun bm!163209 () Bool)

(assert (=> bm!163209 (= call!163214 (isEmpty!17030 tl!4068))))

(declare-fun b!2556423 () Bool)

(declare-fun res!1076618 () Bool)

(assert (=> b!2556423 (=> (not res!1076618) (not e!1614867))))

(assert (=> b!2556423 (= res!1076618 (isEmpty!17030 (tail!4093 tl!4068)))))

(declare-fun b!2556424 () Bool)

(assert (=> b!2556424 (= e!1614864 e!1614862)))

(declare-fun res!1076621 () Bool)

(assert (=> b!2556424 (=> (not res!1076621) (not e!1614862))))

(assert (=> b!2556424 (= res!1076621 (not lt!904217))))

(declare-fun d!724337 () Bool)

(assert (=> d!724337 e!1614866))

(declare-fun c!410262 () Bool)

(assert (=> d!724337 (= c!410262 ((_ is EmptyExpr!7611) lt!904149))))

(assert (=> d!724337 (= lt!904217 e!1614865)))

(declare-fun c!410264 () Bool)

(assert (=> d!724337 (= c!410264 (isEmpty!17030 tl!4068))))

(assert (=> d!724337 (validRegex!3237 lt!904149)))

(assert (=> d!724337 (= (matchR!3556 lt!904149 tl!4068) lt!904217)))

(declare-fun b!2556425 () Bool)

(assert (=> b!2556425 (= e!1614861 (not lt!904217))))

(declare-fun b!2556426 () Bool)

(assert (=> b!2556426 (= e!1614866 e!1614861)))

(declare-fun c!410263 () Bool)

(assert (=> b!2556426 (= c!410263 ((_ is EmptyLang!7611) lt!904149))))

(assert (= (and d!724337 c!410264) b!2556421))

(assert (= (and d!724337 (not c!410264)) b!2556416))

(assert (= (and d!724337 c!410262) b!2556420))

(assert (= (and d!724337 (not c!410262)) b!2556426))

(assert (= (and b!2556426 c!410263) b!2556425))

(assert (= (and b!2556426 (not c!410263)) b!2556413))

(assert (= (and b!2556413 (not res!1076616)) b!2556422))

(assert (= (and b!2556422 res!1076620) b!2556417))

(assert (= (and b!2556417 res!1076622) b!2556423))

(assert (= (and b!2556423 res!1076618) b!2556415))

(assert (= (and b!2556422 (not res!1076617)) b!2556424))

(assert (= (and b!2556424 res!1076621) b!2556414))

(assert (= (and b!2556414 (not res!1076615)) b!2556419))

(assert (= (and b!2556419 (not res!1076619)) b!2556418))

(assert (= (or b!2556420 b!2556414 b!2556417) bm!163209))

(assert (=> b!2556416 m!2897759))

(assert (=> b!2556416 m!2897759))

(declare-fun m!2897841 () Bool)

(assert (=> b!2556416 m!2897841))

(assert (=> b!2556416 m!2897763))

(assert (=> b!2556416 m!2897841))

(assert (=> b!2556416 m!2897763))

(declare-fun m!2897843 () Bool)

(assert (=> b!2556416 m!2897843))

(assert (=> b!2556415 m!2897759))

(assert (=> bm!163209 m!2897767))

(assert (=> d!724337 m!2897767))

(assert (=> d!724337 m!2897791))

(assert (=> b!2556423 m!2897763))

(assert (=> b!2556423 m!2897763))

(assert (=> b!2556423 m!2897769))

(assert (=> b!2556419 m!2897763))

(assert (=> b!2556419 m!2897763))

(assert (=> b!2556419 m!2897769))

(declare-fun m!2897845 () Bool)

(assert (=> b!2556421 m!2897845))

(assert (=> b!2556418 m!2897759))

(assert (=> b!2555942 d!724337))

(declare-fun b!2556431 () Bool)

(declare-fun res!1076624 () Bool)

(declare-fun e!1614873 () Bool)

(assert (=> b!2556431 (=> res!1076624 e!1614873)))

(assert (=> b!2556431 (= res!1076624 (not ((_ is ElementMatch!7611) lt!904156)))))

(declare-fun e!1614870 () Bool)

(assert (=> b!2556431 (= e!1614870 e!1614873)))

(declare-fun b!2556432 () Bool)

(declare-fun e!1614871 () Bool)

(declare-fun e!1614872 () Bool)

(assert (=> b!2556432 (= e!1614871 e!1614872)))

(declare-fun res!1076623 () Bool)

(assert (=> b!2556432 (=> res!1076623 e!1614872)))

(declare-fun call!163215 () Bool)

(assert (=> b!2556432 (= res!1076623 call!163215)))

(declare-fun b!2556433 () Bool)

(declare-fun e!1614876 () Bool)

(assert (=> b!2556433 (= e!1614876 (= (head!5818 (_1!17334 lt!904154)) (c!410113 lt!904156)))))

(declare-fun b!2556434 () Bool)

(declare-fun e!1614874 () Bool)

(assert (=> b!2556434 (= e!1614874 (matchR!3556 (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154))) (tail!4093 (_1!17334 lt!904154))))))

(declare-fun b!2556435 () Bool)

(declare-fun res!1076630 () Bool)

(assert (=> b!2556435 (=> (not res!1076630) (not e!1614876))))

(assert (=> b!2556435 (= res!1076630 (not call!163215))))

(declare-fun b!2556436 () Bool)

(assert (=> b!2556436 (= e!1614872 (not (= (head!5818 (_1!17334 lt!904154)) (c!410113 lt!904156))))))

(declare-fun b!2556437 () Bool)

(declare-fun res!1076627 () Bool)

(assert (=> b!2556437 (=> res!1076627 e!1614872)))

(assert (=> b!2556437 (= res!1076627 (not (isEmpty!17030 (tail!4093 (_1!17334 lt!904154)))))))

(declare-fun b!2556438 () Bool)

(declare-fun e!1614875 () Bool)

(declare-fun lt!904220 () Bool)

(assert (=> b!2556438 (= e!1614875 (= lt!904220 call!163215))))

(declare-fun b!2556439 () Bool)

(assert (=> b!2556439 (= e!1614874 (nullable!2528 lt!904156))))

(declare-fun b!2556440 () Bool)

(declare-fun res!1076625 () Bool)

(assert (=> b!2556440 (=> res!1076625 e!1614873)))

(assert (=> b!2556440 (= res!1076625 e!1614876)))

(declare-fun res!1076628 () Bool)

(assert (=> b!2556440 (=> (not res!1076628) (not e!1614876))))

(assert (=> b!2556440 (= res!1076628 lt!904220)))

(declare-fun bm!163210 () Bool)

(assert (=> bm!163210 (= call!163215 (isEmpty!17030 (_1!17334 lt!904154)))))

(declare-fun b!2556441 () Bool)

(declare-fun res!1076626 () Bool)

(assert (=> b!2556441 (=> (not res!1076626) (not e!1614876))))

(assert (=> b!2556441 (= res!1076626 (isEmpty!17030 (tail!4093 (_1!17334 lt!904154))))))

(declare-fun b!2556442 () Bool)

(assert (=> b!2556442 (= e!1614873 e!1614871)))

(declare-fun res!1076629 () Bool)

(assert (=> b!2556442 (=> (not res!1076629) (not e!1614871))))

(assert (=> b!2556442 (= res!1076629 (not lt!904220))))

(declare-fun d!724341 () Bool)

(assert (=> d!724341 e!1614875))

(declare-fun c!410267 () Bool)

(assert (=> d!724341 (= c!410267 ((_ is EmptyExpr!7611) lt!904156))))

(assert (=> d!724341 (= lt!904220 e!1614874)))

(declare-fun c!410269 () Bool)

(assert (=> d!724341 (= c!410269 (isEmpty!17030 (_1!17334 lt!904154)))))

(assert (=> d!724341 (validRegex!3237 lt!904156)))

(assert (=> d!724341 (= (matchR!3556 lt!904156 (_1!17334 lt!904154)) lt!904220)))

(declare-fun b!2556443 () Bool)

(assert (=> b!2556443 (= e!1614870 (not lt!904220))))

(declare-fun b!2556444 () Bool)

(assert (=> b!2556444 (= e!1614875 e!1614870)))

(declare-fun c!410268 () Bool)

(assert (=> b!2556444 (= c!410268 ((_ is EmptyLang!7611) lt!904156))))

(assert (= (and d!724341 c!410269) b!2556439))

(assert (= (and d!724341 (not c!410269)) b!2556434))

(assert (= (and d!724341 c!410267) b!2556438))

(assert (= (and d!724341 (not c!410267)) b!2556444))

(assert (= (and b!2556444 c!410268) b!2556443))

(assert (= (and b!2556444 (not c!410268)) b!2556431))

(assert (= (and b!2556431 (not res!1076624)) b!2556440))

(assert (= (and b!2556440 res!1076628) b!2556435))

(assert (= (and b!2556435 res!1076630) b!2556441))

(assert (= (and b!2556441 res!1076626) b!2556433))

(assert (= (and b!2556440 (not res!1076625)) b!2556442))

(assert (= (and b!2556442 res!1076629) b!2556432))

(assert (= (and b!2556432 (not res!1076623)) b!2556437))

(assert (= (and b!2556437 (not res!1076627)) b!2556436))

(assert (= (or b!2556438 b!2556432 b!2556435) bm!163210))

(declare-fun m!2897847 () Bool)

(assert (=> b!2556434 m!2897847))

(assert (=> b!2556434 m!2897847))

(declare-fun m!2897849 () Bool)

(assert (=> b!2556434 m!2897849))

(declare-fun m!2897851 () Bool)

(assert (=> b!2556434 m!2897851))

(assert (=> b!2556434 m!2897849))

(assert (=> b!2556434 m!2897851))

(declare-fun m!2897853 () Bool)

(assert (=> b!2556434 m!2897853))

(assert (=> b!2556433 m!2897847))

(declare-fun m!2897855 () Bool)

(assert (=> bm!163210 m!2897855))

(assert (=> d!724341 m!2897855))

(assert (=> d!724341 m!2897621))

(assert (=> b!2556441 m!2897851))

(assert (=> b!2556441 m!2897851))

(declare-fun m!2897871 () Bool)

(assert (=> b!2556441 m!2897871))

(assert (=> b!2556437 m!2897851))

(assert (=> b!2556437 m!2897851))

(assert (=> b!2556437 m!2897871))

(declare-fun m!2897873 () Bool)

(assert (=> b!2556439 m!2897873))

(assert (=> b!2556436 m!2897847))

(assert (=> b!2555951 d!724341))

(declare-fun d!724345 () Bool)

(declare-fun isEmpty!17032 (Option!5912) Bool)

(assert (=> d!724345 (= (isDefined!4734 lt!904146) (not (isEmpty!17032 lt!904146)))))

(declare-fun bs!469724 () Bool)

(assert (= bs!469724 d!724345))

(declare-fun m!2897883 () Bool)

(assert (=> bs!469724 m!2897883))

(assert (=> b!2555952 d!724345))

(declare-fun b!2556590 () Bool)

(declare-fun e!1614950 () Option!5912)

(declare-fun e!1614949 () Option!5912)

(assert (=> b!2556590 (= e!1614950 e!1614949)))

(declare-fun c!410299 () Bool)

(assert (=> b!2556590 (= c!410299 ((_ is Nil!29576) tl!4068))))

(declare-fun b!2556591 () Bool)

(declare-fun e!1614946 () Bool)

(declare-fun lt!904240 () Option!5912)

(assert (=> b!2556591 (= e!1614946 (not (isDefined!4734 lt!904240)))))

(declare-fun d!724349 () Bool)

(assert (=> d!724349 e!1614946))

(declare-fun res!1076688 () Bool)

(assert (=> d!724349 (=> res!1076688 e!1614946)))

(declare-fun e!1614947 () Bool)

(assert (=> d!724349 (= res!1076688 e!1614947)))

(declare-fun res!1076686 () Bool)

(assert (=> d!724349 (=> (not res!1076686) (not e!1614947))))

(assert (=> d!724349 (= res!1076686 (isDefined!4734 lt!904240))))

(assert (=> d!724349 (= lt!904240 e!1614950)))

(declare-fun c!410298 () Bool)

(declare-fun e!1614948 () Bool)

(assert (=> d!724349 (= c!410298 e!1614948)))

(declare-fun res!1076685 () Bool)

(assert (=> d!724349 (=> (not res!1076685) (not e!1614948))))

(assert (=> d!724349 (= res!1076685 (matchR!3556 lt!904156 Nil!29576))))

(assert (=> d!724349 (validRegex!3237 lt!904156)))

(assert (=> d!724349 (= (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) Nil!29576 tl!4068 tl!4068) lt!904240)))

(declare-fun b!2556592 () Bool)

(assert (=> b!2556592 (= e!1614950 (Some!5911 (tuple2!29585 Nil!29576 tl!4068)))))

(declare-fun b!2556593 () Bool)

(declare-fun lt!904241 () Unit!43407)

(declare-fun lt!904239 () Unit!43407)

(assert (=> b!2556593 (= lt!904241 lt!904239)))

(assert (=> b!2556593 (= (++!7268 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (t!211375 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!801 (List!29676 C!15380 List!29676 List!29676) Unit!43407)

(assert (=> b!2556593 (= lt!904239 (lemmaMoveElementToOtherListKeepsConcatEq!801 Nil!29576 (h!34996 tl!4068) (t!211375 tl!4068) tl!4068))))

(assert (=> b!2556593 (= e!1614949 (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (t!211375 tl!4068) tl!4068))))

(declare-fun b!2556594 () Bool)

(assert (=> b!2556594 (= e!1614948 (matchR!3556 (regTwo!15734 r!27340) tl!4068))))

(declare-fun b!2556595 () Bool)

(assert (=> b!2556595 (= e!1614947 (= (++!7268 (_1!17334 (get!9296 lt!904240)) (_2!17334 (get!9296 lt!904240))) tl!4068))))

(declare-fun b!2556596 () Bool)

(assert (=> b!2556596 (= e!1614949 None!5911)))

(declare-fun b!2556597 () Bool)

(declare-fun res!1076687 () Bool)

(assert (=> b!2556597 (=> (not res!1076687) (not e!1614947))))

(assert (=> b!2556597 (= res!1076687 (matchR!3556 (regTwo!15734 r!27340) (_2!17334 (get!9296 lt!904240))))))

(declare-fun b!2556598 () Bool)

(declare-fun res!1076689 () Bool)

(assert (=> b!2556598 (=> (not res!1076689) (not e!1614947))))

(assert (=> b!2556598 (= res!1076689 (matchR!3556 lt!904156 (_1!17334 (get!9296 lt!904240))))))

(assert (= (and d!724349 res!1076685) b!2556594))

(assert (= (and d!724349 c!410298) b!2556592))

(assert (= (and d!724349 (not c!410298)) b!2556590))

(assert (= (and b!2556590 c!410299) b!2556596))

(assert (= (and b!2556590 (not c!410299)) b!2556593))

(assert (= (and d!724349 res!1076686) b!2556598))

(assert (= (and b!2556598 res!1076689) b!2556597))

(assert (= (and b!2556597 res!1076687) b!2556595))

(assert (= (and d!724349 (not res!1076688)) b!2556591))

(declare-fun m!2897947 () Bool)

(assert (=> b!2556593 m!2897947))

(assert (=> b!2556593 m!2897947))

(declare-fun m!2897949 () Bool)

(assert (=> b!2556593 m!2897949))

(declare-fun m!2897951 () Bool)

(assert (=> b!2556593 m!2897951))

(assert (=> b!2556593 m!2897947))

(declare-fun m!2897953 () Bool)

(assert (=> b!2556593 m!2897953))

(declare-fun m!2897955 () Bool)

(assert (=> b!2556598 m!2897955))

(declare-fun m!2897957 () Bool)

(assert (=> b!2556598 m!2897957))

(assert (=> b!2556597 m!2897955))

(declare-fun m!2897959 () Bool)

(assert (=> b!2556597 m!2897959))

(declare-fun m!2897961 () Bool)

(assert (=> b!2556594 m!2897961))

(declare-fun m!2897963 () Bool)

(assert (=> b!2556591 m!2897963))

(assert (=> b!2556595 m!2897955))

(declare-fun m!2897965 () Bool)

(assert (=> b!2556595 m!2897965))

(assert (=> d!724349 m!2897963))

(declare-fun m!2897967 () Bool)

(assert (=> d!724349 m!2897967))

(assert (=> d!724349 m!2897621))

(assert (=> b!2555952 d!724349))

(declare-fun d!724369 () Bool)

(assert (=> d!724369 (isDefined!4734 (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) Nil!29576 tl!4068 tl!4068))))

(declare-fun lt!904244 () Unit!43407)

(declare-fun choose!15093 (Regex!7611 Regex!7611 List!29676) Unit!43407)

(assert (=> d!724369 (= lt!904244 (choose!15093 lt!904156 (regTwo!15734 r!27340) tl!4068))))

(assert (=> d!724369 (validRegex!3237 lt!904156)))

(assert (=> d!724369 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!216 lt!904156 (regTwo!15734 r!27340) tl!4068) lt!904244)))

(declare-fun bs!469727 () Bool)

(assert (= bs!469727 d!724369))

(assert (=> bs!469727 m!2897529))

(assert (=> bs!469727 m!2897529))

(declare-fun m!2897969 () Bool)

(assert (=> bs!469727 m!2897969))

(declare-fun m!2897971 () Bool)

(assert (=> bs!469727 m!2897971))

(assert (=> bs!469727 m!2897621))

(assert (=> b!2555952 d!724369))

(declare-fun d!724371 () Bool)

(assert (=> d!724371 (= (get!9296 lt!904146) (v!31852 lt!904146))))

(assert (=> b!2555952 d!724371))

(declare-fun b!2556607 () Bool)

(declare-fun e!1614956 () List!29676)

(assert (=> b!2556607 (= e!1614956 (_2!17334 lt!904154))))

(declare-fun b!2556610 () Bool)

(declare-fun e!1614955 () Bool)

(declare-fun lt!904247 () List!29676)

(assert (=> b!2556610 (= e!1614955 (or (not (= (_2!17334 lt!904154) Nil!29576)) (= lt!904247 (_1!17334 lt!904154))))))

(declare-fun d!724373 () Bool)

(assert (=> d!724373 e!1614955))

(declare-fun res!1076694 () Bool)

(assert (=> d!724373 (=> (not res!1076694) (not e!1614955))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4074 (List!29676) (InoxSet C!15380))

(assert (=> d!724373 (= res!1076694 (= (content!4074 lt!904247) ((_ map or) (content!4074 (_1!17334 lt!904154)) (content!4074 (_2!17334 lt!904154)))))))

(assert (=> d!724373 (= lt!904247 e!1614956)))

(declare-fun c!410302 () Bool)

(assert (=> d!724373 (= c!410302 ((_ is Nil!29576) (_1!17334 lt!904154)))))

(assert (=> d!724373 (= (++!7268 (_1!17334 lt!904154) (_2!17334 lt!904154)) lt!904247)))

(declare-fun b!2556608 () Bool)

(assert (=> b!2556608 (= e!1614956 (Cons!29576 (h!34996 (_1!17334 lt!904154)) (++!7268 (t!211375 (_1!17334 lt!904154)) (_2!17334 lt!904154))))))

(declare-fun b!2556609 () Bool)

(declare-fun res!1076695 () Bool)

(assert (=> b!2556609 (=> (not res!1076695) (not e!1614955))))

(declare-fun size!22954 (List!29676) Int)

(assert (=> b!2556609 (= res!1076695 (= (size!22954 lt!904247) (+ (size!22954 (_1!17334 lt!904154)) (size!22954 (_2!17334 lt!904154)))))))

(assert (= (and d!724373 c!410302) b!2556607))

(assert (= (and d!724373 (not c!410302)) b!2556608))

(assert (= (and d!724373 res!1076694) b!2556609))

(assert (= (and b!2556609 res!1076695) b!2556610))

(declare-fun m!2897973 () Bool)

(assert (=> d!724373 m!2897973))

(declare-fun m!2897975 () Bool)

(assert (=> d!724373 m!2897975))

(declare-fun m!2897977 () Bool)

(assert (=> d!724373 m!2897977))

(declare-fun m!2897979 () Bool)

(assert (=> b!2556608 m!2897979))

(declare-fun m!2897981 () Bool)

(assert (=> b!2556609 m!2897981))

(declare-fun m!2897983 () Bool)

(assert (=> b!2556609 m!2897983))

(declare-fun m!2897985 () Bool)

(assert (=> b!2556609 m!2897985))

(assert (=> b!2555952 d!724373))

(declare-fun bm!163223 () Bool)

(declare-fun call!163228 () Bool)

(declare-fun c!410303 () Bool)

(declare-fun c!410304 () Bool)

(assert (=> bm!163223 (= call!163228 (validRegex!3237 (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))))

(declare-fun d!724375 () Bool)

(declare-fun res!1076699 () Bool)

(declare-fun e!1614962 () Bool)

(assert (=> d!724375 (=> res!1076699 e!1614962)))

(assert (=> d!724375 (= res!1076699 ((_ is ElementMatch!7611) r!27340))))

(assert (=> d!724375 (= (validRegex!3237 r!27340) e!1614962)))

(declare-fun b!2556611 () Bool)

(declare-fun e!1614958 () Bool)

(assert (=> b!2556611 (= e!1614962 e!1614958)))

(assert (=> b!2556611 (= c!410304 ((_ is Star!7611) r!27340))))

(declare-fun b!2556612 () Bool)

(declare-fun e!1614959 () Bool)

(declare-fun call!163230 () Bool)

(assert (=> b!2556612 (= e!1614959 call!163230)))

(declare-fun b!2556613 () Bool)

(declare-fun e!1614957 () Bool)

(declare-fun call!163229 () Bool)

(assert (=> b!2556613 (= e!1614957 call!163229)))

(declare-fun b!2556614 () Bool)

(declare-fun e!1614960 () Bool)

(assert (=> b!2556614 (= e!1614960 e!1614957)))

(declare-fun res!1076696 () Bool)

(assert (=> b!2556614 (=> (not res!1076696) (not e!1614957))))

(assert (=> b!2556614 (= res!1076696 call!163230)))

(declare-fun b!2556615 () Bool)

(declare-fun res!1076697 () Bool)

(assert (=> b!2556615 (=> res!1076697 e!1614960)))

(assert (=> b!2556615 (= res!1076697 (not ((_ is Concat!12307) r!27340)))))

(declare-fun e!1614963 () Bool)

(assert (=> b!2556615 (= e!1614963 e!1614960)))

(declare-fun bm!163224 () Bool)

(assert (=> bm!163224 (= call!163230 (validRegex!3237 (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))))))

(declare-fun bm!163225 () Bool)

(assert (=> bm!163225 (= call!163229 call!163228)))

(declare-fun b!2556616 () Bool)

(declare-fun e!1614961 () Bool)

(assert (=> b!2556616 (= e!1614961 call!163228)))

(declare-fun b!2556617 () Bool)

(declare-fun res!1076700 () Bool)

(assert (=> b!2556617 (=> (not res!1076700) (not e!1614959))))

(assert (=> b!2556617 (= res!1076700 call!163229)))

(assert (=> b!2556617 (= e!1614963 e!1614959)))

(declare-fun b!2556618 () Bool)

(assert (=> b!2556618 (= e!1614958 e!1614963)))

(assert (=> b!2556618 (= c!410303 ((_ is Union!7611) r!27340))))

(declare-fun b!2556619 () Bool)

(assert (=> b!2556619 (= e!1614958 e!1614961)))

(declare-fun res!1076698 () Bool)

(assert (=> b!2556619 (= res!1076698 (not (nullable!2528 (reg!7940 r!27340))))))

(assert (=> b!2556619 (=> (not res!1076698) (not e!1614961))))

(assert (= (and d!724375 (not res!1076699)) b!2556611))

(assert (= (and b!2556611 c!410304) b!2556619))

(assert (= (and b!2556611 (not c!410304)) b!2556618))

(assert (= (and b!2556619 res!1076698) b!2556616))

(assert (= (and b!2556618 c!410303) b!2556617))

(assert (= (and b!2556618 (not c!410303)) b!2556615))

(assert (= (and b!2556617 res!1076700) b!2556612))

(assert (= (and b!2556615 (not res!1076697)) b!2556614))

(assert (= (and b!2556614 res!1076696) b!2556613))

(assert (= (or b!2556617 b!2556613) bm!163225))

(assert (= (or b!2556612 b!2556614) bm!163224))

(assert (= (or b!2556616 bm!163225) bm!163223))

(declare-fun m!2897987 () Bool)

(assert (=> bm!163223 m!2897987))

(declare-fun m!2897989 () Bool)

(assert (=> bm!163224 m!2897989))

(declare-fun m!2897991 () Bool)

(assert (=> b!2556619 m!2897991))

(assert (=> start!247696 d!724375))

(declare-fun b!2556620 () Bool)

(declare-fun res!1076702 () Bool)

(declare-fun e!1614967 () Bool)

(assert (=> b!2556620 (=> res!1076702 e!1614967)))

(assert (=> b!2556620 (= res!1076702 (not ((_ is ElementMatch!7611) (regOne!15734 r!27340))))))

(declare-fun e!1614964 () Bool)

(assert (=> b!2556620 (= e!1614964 e!1614967)))

(declare-fun b!2556621 () Bool)

(declare-fun e!1614965 () Bool)

(declare-fun e!1614966 () Bool)

(assert (=> b!2556621 (= e!1614965 e!1614966)))

(declare-fun res!1076701 () Bool)

(assert (=> b!2556621 (=> res!1076701 e!1614966)))

(declare-fun call!163231 () Bool)

(assert (=> b!2556621 (= res!1076701 call!163231)))

(declare-fun b!2556622 () Bool)

(declare-fun e!1614970 () Bool)

(assert (=> b!2556622 (= e!1614970 (= (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154))) (c!410113 (regOne!15734 r!27340))))))

(declare-fun b!2556623 () Bool)

(declare-fun e!1614968 () Bool)

(assert (=> b!2556623 (= e!1614968 (matchR!3556 (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))) (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(declare-fun b!2556624 () Bool)

(declare-fun res!1076708 () Bool)

(assert (=> b!2556624 (=> (not res!1076708) (not e!1614970))))

(assert (=> b!2556624 (= res!1076708 (not call!163231))))

(declare-fun b!2556625 () Bool)

(assert (=> b!2556625 (= e!1614966 (not (= (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154))) (c!410113 (regOne!15734 r!27340)))))))

(declare-fun b!2556626 () Bool)

(declare-fun res!1076705 () Bool)

(assert (=> b!2556626 (=> res!1076705 e!1614966)))

(assert (=> b!2556626 (= res!1076705 (not (isEmpty!17030 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154))))))))

(declare-fun b!2556627 () Bool)

(declare-fun e!1614969 () Bool)

(declare-fun lt!904248 () Bool)

(assert (=> b!2556627 (= e!1614969 (= lt!904248 call!163231))))

(declare-fun b!2556628 () Bool)

(assert (=> b!2556628 (= e!1614968 (nullable!2528 (regOne!15734 r!27340)))))

(declare-fun b!2556629 () Bool)

(declare-fun res!1076703 () Bool)

(assert (=> b!2556629 (=> res!1076703 e!1614967)))

(assert (=> b!2556629 (= res!1076703 e!1614970)))

(declare-fun res!1076706 () Bool)

(assert (=> b!2556629 (=> (not res!1076706) (not e!1614970))))

(assert (=> b!2556629 (= res!1076706 lt!904248)))

(declare-fun bm!163226 () Bool)

(assert (=> bm!163226 (= call!163231 (isEmpty!17030 (Cons!29576 c!14016 (_1!17334 lt!904154))))))

(declare-fun b!2556630 () Bool)

(declare-fun res!1076704 () Bool)

(assert (=> b!2556630 (=> (not res!1076704) (not e!1614970))))

(assert (=> b!2556630 (= res!1076704 (isEmpty!17030 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(declare-fun b!2556631 () Bool)

(assert (=> b!2556631 (= e!1614967 e!1614965)))

(declare-fun res!1076707 () Bool)

(assert (=> b!2556631 (=> (not res!1076707) (not e!1614965))))

(assert (=> b!2556631 (= res!1076707 (not lt!904248))))

(declare-fun d!724377 () Bool)

(assert (=> d!724377 e!1614969))

(declare-fun c!410305 () Bool)

(assert (=> d!724377 (= c!410305 ((_ is EmptyExpr!7611) (regOne!15734 r!27340)))))

(assert (=> d!724377 (= lt!904248 e!1614968)))

(declare-fun c!410307 () Bool)

(assert (=> d!724377 (= c!410307 (isEmpty!17030 (Cons!29576 c!14016 (_1!17334 lt!904154))))))

(assert (=> d!724377 (validRegex!3237 (regOne!15734 r!27340))))

(assert (=> d!724377 (= (matchR!3556 (regOne!15734 r!27340) (Cons!29576 c!14016 (_1!17334 lt!904154))) lt!904248)))

(declare-fun b!2556632 () Bool)

(assert (=> b!2556632 (= e!1614964 (not lt!904248))))

(declare-fun b!2556633 () Bool)

(assert (=> b!2556633 (= e!1614969 e!1614964)))

(declare-fun c!410306 () Bool)

(assert (=> b!2556633 (= c!410306 ((_ is EmptyLang!7611) (regOne!15734 r!27340)))))

(assert (= (and d!724377 c!410307) b!2556628))

(assert (= (and d!724377 (not c!410307)) b!2556623))

(assert (= (and d!724377 c!410305) b!2556627))

(assert (= (and d!724377 (not c!410305)) b!2556633))

(assert (= (and b!2556633 c!410306) b!2556632))

(assert (= (and b!2556633 (not c!410306)) b!2556620))

(assert (= (and b!2556620 (not res!1076702)) b!2556629))

(assert (= (and b!2556629 res!1076706) b!2556624))

(assert (= (and b!2556624 res!1076708) b!2556630))

(assert (= (and b!2556630 res!1076704) b!2556622))

(assert (= (and b!2556629 (not res!1076703)) b!2556631))

(assert (= (and b!2556631 res!1076707) b!2556621))

(assert (= (and b!2556621 (not res!1076701)) b!2556626))

(assert (= (and b!2556626 (not res!1076705)) b!2556625))

(assert (= (or b!2556627 b!2556621 b!2556624) bm!163226))

(declare-fun m!2897993 () Bool)

(assert (=> b!2556623 m!2897993))

(assert (=> b!2556623 m!2897993))

(declare-fun m!2897995 () Bool)

(assert (=> b!2556623 m!2897995))

(declare-fun m!2897997 () Bool)

(assert (=> b!2556623 m!2897997))

(assert (=> b!2556623 m!2897995))

(assert (=> b!2556623 m!2897997))

(declare-fun m!2897999 () Bool)

(assert (=> b!2556623 m!2897999))

(assert (=> b!2556622 m!2897993))

(declare-fun m!2898001 () Bool)

(assert (=> bm!163226 m!2898001))

(assert (=> d!724377 m!2898001))

(assert (=> d!724377 m!2897535))

(assert (=> b!2556630 m!2897997))

(assert (=> b!2556630 m!2897997))

(declare-fun m!2898003 () Bool)

(assert (=> b!2556630 m!2898003))

(assert (=> b!2556626 m!2897997))

(assert (=> b!2556626 m!2897997))

(assert (=> b!2556626 m!2898003))

(assert (=> b!2556628 m!2897533))

(assert (=> b!2556625 m!2897993))

(assert (=> b!2555950 d!724377))

(declare-fun d!724379 () Bool)

(assert (=> d!724379 (= (nullable!2528 lt!904148) (nullableFct!753 lt!904148))))

(declare-fun bs!469728 () Bool)

(assert (= bs!469728 d!724379))

(declare-fun m!2898005 () Bool)

(assert (=> bs!469728 m!2898005))

(assert (=> b!2555940 d!724379))

(declare-fun d!724381 () Bool)

(assert (=> d!724381 (= (nullable!2528 (regOne!15734 r!27340)) (nullableFct!753 (regOne!15734 r!27340)))))

(declare-fun bs!469729 () Bool)

(assert (= bs!469729 d!724381))

(declare-fun m!2898007 () Bool)

(assert (=> bs!469729 m!2898007))

(assert (=> b!2555948 d!724381))

(declare-fun b!2556644 () Bool)

(declare-fun e!1614973 () Bool)

(assert (=> b!2556644 (= e!1614973 tp_is_empty!13077)))

(declare-fun b!2556645 () Bool)

(declare-fun tp!814853 () Bool)

(declare-fun tp!814854 () Bool)

(assert (=> b!2556645 (= e!1614973 (and tp!814853 tp!814854))))

(declare-fun b!2556646 () Bool)

(declare-fun tp!814851 () Bool)

(assert (=> b!2556646 (= e!1614973 tp!814851)))

(declare-fun b!2556647 () Bool)

(declare-fun tp!814852 () Bool)

(declare-fun tp!814855 () Bool)

(assert (=> b!2556647 (= e!1614973 (and tp!814852 tp!814855))))

(assert (=> b!2555956 (= tp!814800 e!1614973)))

(assert (= (and b!2555956 ((_ is ElementMatch!7611) (regOne!15735 r!27340))) b!2556644))

(assert (= (and b!2555956 ((_ is Concat!12307) (regOne!15735 r!27340))) b!2556645))

(assert (= (and b!2555956 ((_ is Star!7611) (regOne!15735 r!27340))) b!2556646))

(assert (= (and b!2555956 ((_ is Union!7611) (regOne!15735 r!27340))) b!2556647))

(declare-fun b!2556648 () Bool)

(declare-fun e!1614974 () Bool)

(assert (=> b!2556648 (= e!1614974 tp_is_empty!13077)))

(declare-fun b!2556649 () Bool)

(declare-fun tp!814858 () Bool)

(declare-fun tp!814859 () Bool)

(assert (=> b!2556649 (= e!1614974 (and tp!814858 tp!814859))))

(declare-fun b!2556650 () Bool)

(declare-fun tp!814856 () Bool)

(assert (=> b!2556650 (= e!1614974 tp!814856)))

(declare-fun b!2556651 () Bool)

(declare-fun tp!814857 () Bool)

(declare-fun tp!814860 () Bool)

(assert (=> b!2556651 (= e!1614974 (and tp!814857 tp!814860))))

(assert (=> b!2555956 (= tp!814801 e!1614974)))

(assert (= (and b!2555956 ((_ is ElementMatch!7611) (regTwo!15735 r!27340))) b!2556648))

(assert (= (and b!2555956 ((_ is Concat!12307) (regTwo!15735 r!27340))) b!2556649))

(assert (= (and b!2555956 ((_ is Star!7611) (regTwo!15735 r!27340))) b!2556650))

(assert (= (and b!2555956 ((_ is Union!7611) (regTwo!15735 r!27340))) b!2556651))

(declare-fun b!2556652 () Bool)

(declare-fun e!1614975 () Bool)

(assert (=> b!2556652 (= e!1614975 tp_is_empty!13077)))

(declare-fun b!2556653 () Bool)

(declare-fun tp!814863 () Bool)

(declare-fun tp!814864 () Bool)

(assert (=> b!2556653 (= e!1614975 (and tp!814863 tp!814864))))

(declare-fun b!2556654 () Bool)

(declare-fun tp!814861 () Bool)

(assert (=> b!2556654 (= e!1614975 tp!814861)))

(declare-fun b!2556655 () Bool)

(declare-fun tp!814862 () Bool)

(declare-fun tp!814865 () Bool)

(assert (=> b!2556655 (= e!1614975 (and tp!814862 tp!814865))))

(assert (=> b!2555947 (= tp!814798 e!1614975)))

(assert (= (and b!2555947 ((_ is ElementMatch!7611) (regOne!15734 r!27340))) b!2556652))

(assert (= (and b!2555947 ((_ is Concat!12307) (regOne!15734 r!27340))) b!2556653))

(assert (= (and b!2555947 ((_ is Star!7611) (regOne!15734 r!27340))) b!2556654))

(assert (= (and b!2555947 ((_ is Union!7611) (regOne!15734 r!27340))) b!2556655))

(declare-fun b!2556656 () Bool)

(declare-fun e!1614976 () Bool)

(assert (=> b!2556656 (= e!1614976 tp_is_empty!13077)))

(declare-fun b!2556657 () Bool)

(declare-fun tp!814868 () Bool)

(declare-fun tp!814869 () Bool)

(assert (=> b!2556657 (= e!1614976 (and tp!814868 tp!814869))))

(declare-fun b!2556658 () Bool)

(declare-fun tp!814866 () Bool)

(assert (=> b!2556658 (= e!1614976 tp!814866)))

(declare-fun b!2556659 () Bool)

(declare-fun tp!814867 () Bool)

(declare-fun tp!814870 () Bool)

(assert (=> b!2556659 (= e!1614976 (and tp!814867 tp!814870))))

(assert (=> b!2555947 (= tp!814799 e!1614976)))

(assert (= (and b!2555947 ((_ is ElementMatch!7611) (regTwo!15734 r!27340))) b!2556656))

(assert (= (and b!2555947 ((_ is Concat!12307) (regTwo!15734 r!27340))) b!2556657))

(assert (= (and b!2555947 ((_ is Star!7611) (regTwo!15734 r!27340))) b!2556658))

(assert (= (and b!2555947 ((_ is Union!7611) (regTwo!15734 r!27340))) b!2556659))

(declare-fun b!2556664 () Bool)

(declare-fun e!1614979 () Bool)

(declare-fun tp!814873 () Bool)

(assert (=> b!2556664 (= e!1614979 (and tp_is_empty!13077 tp!814873))))

(assert (=> b!2555946 (= tp!814797 e!1614979)))

(assert (= (and b!2555946 ((_ is Cons!29576) (t!211375 tl!4068))) b!2556664))

(declare-fun b!2556665 () Bool)

(declare-fun e!1614980 () Bool)

(assert (=> b!2556665 (= e!1614980 tp_is_empty!13077)))

(declare-fun b!2556666 () Bool)

(declare-fun tp!814876 () Bool)

(declare-fun tp!814877 () Bool)

(assert (=> b!2556666 (= e!1614980 (and tp!814876 tp!814877))))

(declare-fun b!2556667 () Bool)

(declare-fun tp!814874 () Bool)

(assert (=> b!2556667 (= e!1614980 tp!814874)))

(declare-fun b!2556668 () Bool)

(declare-fun tp!814875 () Bool)

(declare-fun tp!814878 () Bool)

(assert (=> b!2556668 (= e!1614980 (and tp!814875 tp!814878))))

(assert (=> b!2555941 (= tp!814802 e!1614980)))

(assert (= (and b!2555941 ((_ is ElementMatch!7611) (reg!7940 r!27340))) b!2556665))

(assert (= (and b!2555941 ((_ is Concat!12307) (reg!7940 r!27340))) b!2556666))

(assert (= (and b!2555941 ((_ is Star!7611) (reg!7940 r!27340))) b!2556667))

(assert (= (and b!2555941 ((_ is Union!7611) (reg!7940 r!27340))) b!2556668))

(check-sat (not b!2556319) (not d!724333) (not b!2556330) (not d!724321) (not b!2556593) (not b!2556185) (not b!2556340) tp_is_empty!13077 (not b!2556434) (not b!2556654) (not bm!163133) (not d!724381) (not b!2556184) (not b!2556647) (not b!2556368) (not d!724341) (not b!2556405) (not b!2556324) (not b!2556057) (not bm!163203) (not b!2556668) (not d!724317) (not bm!163204) (not b!2556056) (not d!724291) (not b!2556594) (not b!2556390) (not d!724271) (not b!2556625) (not b!2556187) (not b!2556371) (not b!2556651) (not b!2556078) (not b!2556338) (not bm!163208) (not d!724297) (not b!2556326) (not d!724325) (not d!724323) (not d!724377) (not b!2556369) (not b!2556646) (not bm!163155) (not b!2556415) (not b!2556188) (not b!2556337) (not bm!163226) (not b!2556436) (not bm!163224) (not b!2556318) (not b!2556649) (not b!2556423) (not d!724369) (not b!2556404) (not bm!163188) (not b!2556437) (not b!2556419) (not b!2556623) (not b!2556416) (not b!2556401) (not d!724295) (not d!724293) (not b!2556657) (not d!724327) (not b!2556645) (not b!2556322) (not bm!163207) (not b!2556659) (not b!2556421) (not bm!163165) (not b!2556433) (not d!724331) (not b!2556064) (not b!2556342) (not b!2556664) (not bm!163126) (not d!724349) (not b!2556418) (not b!2556591) (not b!2556609) (not b!2556630) (not d!724313) (not b!2556439) (not b!2556402) (not b!2556666) (not d!724337) (not bm!163199) (not bm!163160) (not b!2556619) (not d!724277) (not bm!163223) (not b!2556597) (not b!2556190) (not b!2556321) (not b!2556407) (not bm!163154) (not b!2556626) (not b!2556334) (not bm!163209) (not bm!163198) (not d!724281) (not b!2556667) (not b!2556062) (not bm!163159) (not b!2556650) (not b!2556622) (not d!724373) (not b!2556653) (not b!2556628) (not b!2556060) (not bm!163200) (not b!2555983) (not b!2556595) (not d!724379) (not b!2556598) (not b!2556608) (not b!2556658) (not b!2556409) (not bm!163125) (not b!2556196) (not b!2556655) (not b!2556278) (not b!2556335) (not b!2556192) (not bm!163185) (not b!2556441) (not d!724345) (not bm!163210) (not b!2556059))
(check-sat)
(get-model)

(declare-fun d!724479 () Bool)

(assert (=> d!724479 (= (isEmpty!17030 (tail!4093 (_2!17334 lt!904154))) ((_ is Nil!29576) (tail!4093 (_2!17334 lt!904154))))))

(assert (=> b!2556188 d!724479))

(declare-fun d!724481 () Bool)

(assert (=> d!724481 (= (tail!4093 (_2!17334 lt!904154)) (t!211375 (_2!17334 lt!904154)))))

(assert (=> b!2556188 d!724481))

(declare-fun d!724483 () Bool)

(assert (=> d!724483 (= (isEmpty!17030 tl!4068) ((_ is Nil!29576) tl!4068))))

(assert (=> bm!163198 d!724483))

(declare-fun d!724485 () Bool)

(declare-fun lt!904265 () Regex!7611)

(assert (=> d!724485 (validRegex!3237 lt!904265)))

(declare-fun e!1615125 () Regex!7611)

(assert (=> d!724485 (= lt!904265 e!1615125)))

(declare-fun c!410393 () Bool)

(assert (=> d!724485 (= c!410393 ((_ is Cons!29576) (t!211375 tl!4068)))))

(assert (=> d!724485 (validRegex!3237 (derivativeStep!2180 (derivativeStep!2180 r!27340 c!14016) (h!34996 tl!4068)))))

(assert (=> d!724485 (= (derivative!306 (derivativeStep!2180 (derivativeStep!2180 r!27340 c!14016) (h!34996 tl!4068)) (t!211375 tl!4068)) lt!904265)))

(declare-fun b!2556919 () Bool)

(assert (=> b!2556919 (= e!1615125 (derivative!306 (derivativeStep!2180 (derivativeStep!2180 (derivativeStep!2180 r!27340 c!14016) (h!34996 tl!4068)) (h!34996 (t!211375 tl!4068))) (t!211375 (t!211375 tl!4068))))))

(declare-fun b!2556920 () Bool)

(assert (=> b!2556920 (= e!1615125 (derivativeStep!2180 (derivativeStep!2180 r!27340 c!14016) (h!34996 tl!4068)))))

(assert (= (and d!724485 c!410393) b!2556919))

(assert (= (and d!724485 (not c!410393)) b!2556920))

(declare-fun m!2898223 () Bool)

(assert (=> d!724485 m!2898223))

(assert (=> d!724485 m!2897683))

(declare-fun m!2898225 () Bool)

(assert (=> d!724485 m!2898225))

(assert (=> b!2556919 m!2897683))

(declare-fun m!2898227 () Bool)

(assert (=> b!2556919 m!2898227))

(assert (=> b!2556919 m!2898227))

(declare-fun m!2898229 () Bool)

(assert (=> b!2556919 m!2898229))

(assert (=> b!2556196 d!724485))

(declare-fun b!2556923 () Bool)

(declare-fun e!1615129 () Regex!7611)

(declare-fun e!1615130 () Regex!7611)

(assert (=> b!2556923 (= e!1615129 e!1615130)))

(declare-fun c!410395 () Bool)

(assert (=> b!2556923 (= c!410395 ((_ is ElementMatch!7611) (derivativeStep!2180 r!27340 c!14016)))))

(declare-fun b!2556924 () Bool)

(declare-fun c!410398 () Bool)

(assert (=> b!2556924 (= c!410398 (nullable!2528 (regOne!15734 (derivativeStep!2180 r!27340 c!14016))))))

(declare-fun e!1615128 () Regex!7611)

(declare-fun e!1615132 () Regex!7611)

(assert (=> b!2556924 (= e!1615128 e!1615132)))

(declare-fun b!2556925 () Bool)

(declare-fun call!163297 () Regex!7611)

(assert (=> b!2556925 (= e!1615132 (Union!7611 (Concat!12307 call!163297 (regTwo!15734 (derivativeStep!2180 r!27340 c!14016))) EmptyLang!7611))))

(declare-fun b!2556926 () Bool)

(declare-fun e!1615131 () Regex!7611)

(declare-fun call!163298 () Regex!7611)

(declare-fun call!163300 () Regex!7611)

(assert (=> b!2556926 (= e!1615131 (Union!7611 call!163298 call!163300))))

(declare-fun bm!163292 () Bool)

(declare-fun c!410397 () Bool)

(assert (=> bm!163292 (= call!163298 (derivativeStep!2180 (ite c!410397 (regOne!15735 (derivativeStep!2180 r!27340 c!14016)) (regTwo!15734 (derivativeStep!2180 r!27340 c!14016))) (h!34996 tl!4068)))))

(declare-fun bm!163293 () Bool)

(declare-fun call!163299 () Regex!7611)

(assert (=> bm!163293 (= call!163297 call!163299)))

(declare-fun bm!163294 () Bool)

(assert (=> bm!163294 (= call!163299 call!163300)))

(declare-fun c!410396 () Bool)

(declare-fun bm!163295 () Bool)

(assert (=> bm!163295 (= call!163300 (derivativeStep!2180 (ite c!410397 (regTwo!15735 (derivativeStep!2180 r!27340 c!14016)) (ite c!410396 (reg!7940 (derivativeStep!2180 r!27340 c!14016)) (regOne!15734 (derivativeStep!2180 r!27340 c!14016)))) (h!34996 tl!4068)))))

(declare-fun b!2556927 () Bool)

(assert (=> b!2556927 (= e!1615131 e!1615128)))

(assert (=> b!2556927 (= c!410396 ((_ is Star!7611) (derivativeStep!2180 r!27340 c!14016)))))

(declare-fun b!2556928 () Bool)

(assert (=> b!2556928 (= e!1615130 (ite (= (h!34996 tl!4068) (c!410113 (derivativeStep!2180 r!27340 c!14016))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2556929 () Bool)

(assert (=> b!2556929 (= e!1615128 (Concat!12307 call!163299 (derivativeStep!2180 r!27340 c!14016)))))

(declare-fun b!2556930 () Bool)

(assert (=> b!2556930 (= e!1615129 EmptyLang!7611)))

(declare-fun b!2556931 () Bool)

(assert (=> b!2556931 (= e!1615132 (Union!7611 (Concat!12307 call!163297 (regTwo!15734 (derivativeStep!2180 r!27340 c!14016))) call!163298))))

(declare-fun b!2556932 () Bool)

(assert (=> b!2556932 (= c!410397 ((_ is Union!7611) (derivativeStep!2180 r!27340 c!14016)))))

(assert (=> b!2556932 (= e!1615130 e!1615131)))

(declare-fun d!724487 () Bool)

(declare-fun lt!904266 () Regex!7611)

(assert (=> d!724487 (validRegex!3237 lt!904266)))

(assert (=> d!724487 (= lt!904266 e!1615129)))

(declare-fun c!410394 () Bool)

(assert (=> d!724487 (= c!410394 (or ((_ is EmptyExpr!7611) (derivativeStep!2180 r!27340 c!14016)) ((_ is EmptyLang!7611) (derivativeStep!2180 r!27340 c!14016))))))

(assert (=> d!724487 (validRegex!3237 (derivativeStep!2180 r!27340 c!14016))))

(assert (=> d!724487 (= (derivativeStep!2180 (derivativeStep!2180 r!27340 c!14016) (h!34996 tl!4068)) lt!904266)))

(assert (= (and d!724487 c!410394) b!2556930))

(assert (= (and d!724487 (not c!410394)) b!2556923))

(assert (= (and b!2556923 c!410395) b!2556928))

(assert (= (and b!2556923 (not c!410395)) b!2556932))

(assert (= (and b!2556932 c!410397) b!2556926))

(assert (= (and b!2556932 (not c!410397)) b!2556927))

(assert (= (and b!2556927 c!410396) b!2556929))

(assert (= (and b!2556927 (not c!410396)) b!2556924))

(assert (= (and b!2556924 c!410398) b!2556931))

(assert (= (and b!2556924 (not c!410398)) b!2556925))

(assert (= (or b!2556931 b!2556925) bm!163293))

(assert (= (or b!2556929 bm!163293) bm!163294))

(assert (= (or b!2556926 bm!163294) bm!163295))

(assert (= (or b!2556926 b!2556931) bm!163292))

(declare-fun m!2898231 () Bool)

(assert (=> b!2556924 m!2898231))

(declare-fun m!2898233 () Bool)

(assert (=> bm!163292 m!2898233))

(declare-fun m!2898235 () Bool)

(assert (=> bm!163295 m!2898235))

(declare-fun m!2898237 () Bool)

(assert (=> d!724487 m!2898237))

(assert (=> d!724487 m!2897571))

(assert (=> d!724487 m!2897681))

(assert (=> b!2556196 d!724487))

(declare-fun d!724489 () Bool)

(assert (not d!724489))

(assert (=> b!2556057 d!724489))

(declare-fun d!724491 () Bool)

(assert (not d!724491))

(assert (=> b!2556057 d!724491))

(declare-fun d!724493 () Bool)

(assert (not d!724493))

(assert (=> b!2556057 d!724493))

(declare-fun d!724495 () Bool)

(assert (not d!724495))

(assert (=> b!2556057 d!724495))

(declare-fun b!2556933 () Bool)

(declare-fun e!1615134 () Regex!7611)

(declare-fun e!1615135 () Regex!7611)

(assert (=> b!2556933 (= e!1615134 e!1615135)))

(declare-fun c!410400 () Bool)

(assert (=> b!2556933 (= c!410400 ((_ is ElementMatch!7611) (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))))))

(declare-fun b!2556934 () Bool)

(declare-fun c!410403 () Bool)

(assert (=> b!2556934 (= c!410403 (nullable!2528 (regOne!15734 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))))

(declare-fun e!1615133 () Regex!7611)

(declare-fun e!1615137 () Regex!7611)

(assert (=> b!2556934 (= e!1615133 e!1615137)))

(declare-fun b!2556935 () Bool)

(declare-fun call!163301 () Regex!7611)

(assert (=> b!2556935 (= e!1615137 (Union!7611 (Concat!12307 call!163301 (regTwo!15734 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)))) EmptyLang!7611))))

(declare-fun b!2556936 () Bool)

(declare-fun e!1615136 () Regex!7611)

(declare-fun call!163302 () Regex!7611)

(declare-fun call!163304 () Regex!7611)

(assert (=> b!2556936 (= e!1615136 (Union!7611 call!163302 call!163304))))

(declare-fun bm!163296 () Bool)

(declare-fun c!410402 () Bool)

(assert (=> bm!163296 (= call!163302 (derivativeStep!2180 (ite c!410402 (regOne!15735 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))) (regTwo!15734 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)))) c!14016))))

(declare-fun bm!163297 () Bool)

(declare-fun call!163303 () Regex!7611)

(assert (=> bm!163297 (= call!163301 call!163303)))

(declare-fun bm!163298 () Bool)

(assert (=> bm!163298 (= call!163303 call!163304)))

(declare-fun c!410401 () Bool)

(declare-fun bm!163299 () Bool)

(assert (=> bm!163299 (= call!163304 (derivativeStep!2180 (ite c!410402 (regTwo!15735 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))) (ite c!410401 (reg!7940 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))) (regOne!15734 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))))) c!14016))))

(declare-fun b!2556937 () Bool)

(assert (=> b!2556937 (= e!1615136 e!1615133)))

(assert (=> b!2556937 (= c!410401 ((_ is Star!7611) (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))))))

(declare-fun b!2556938 () Bool)

(assert (=> b!2556938 (= e!1615135 (ite (= c!14016 (c!410113 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2556939 () Bool)

(assert (=> b!2556939 (= e!1615133 (Concat!12307 call!163303 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))))))

(declare-fun b!2556940 () Bool)

(assert (=> b!2556940 (= e!1615134 EmptyLang!7611)))

(declare-fun b!2556941 () Bool)

(assert (=> b!2556941 (= e!1615137 (Union!7611 (Concat!12307 call!163301 (regTwo!15734 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)))) call!163302))))

(declare-fun b!2556942 () Bool)

(assert (=> b!2556942 (= c!410402 ((_ is Union!7611) (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))))))

(assert (=> b!2556942 (= e!1615135 e!1615136)))

(declare-fun d!724497 () Bool)

(declare-fun lt!904267 () Regex!7611)

(assert (=> d!724497 (validRegex!3237 lt!904267)))

(assert (=> d!724497 (= lt!904267 e!1615134)))

(declare-fun c!410399 () Bool)

(assert (=> d!724497 (= c!410399 (or ((_ is EmptyExpr!7611) (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340))) ((_ is EmptyLang!7611) (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))))

(assert (=> d!724497 (validRegex!3237 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))

(assert (=> d!724497 (= (derivativeStep!2180 (ite c!410222 (regOne!15735 r!27340) (regTwo!15734 r!27340)) c!14016) lt!904267)))

(assert (= (and d!724497 c!410399) b!2556940))

(assert (= (and d!724497 (not c!410399)) b!2556933))

(assert (= (and b!2556933 c!410400) b!2556938))

(assert (= (and b!2556933 (not c!410400)) b!2556942))

(assert (= (and b!2556942 c!410402) b!2556936))

(assert (= (and b!2556942 (not c!410402)) b!2556937))

(assert (= (and b!2556937 c!410401) b!2556939))

(assert (= (and b!2556937 (not c!410401)) b!2556934))

(assert (= (and b!2556934 c!410403) b!2556941))

(assert (= (and b!2556934 (not c!410403)) b!2556935))

(assert (= (or b!2556941 b!2556935) bm!163297))

(assert (= (or b!2556939 bm!163297) bm!163298))

(assert (= (or b!2556936 bm!163298) bm!163299))

(assert (= (or b!2556936 b!2556941) bm!163296))

(declare-fun m!2898239 () Bool)

(assert (=> b!2556934 m!2898239))

(declare-fun m!2898241 () Bool)

(assert (=> bm!163296 m!2898241))

(declare-fun m!2898245 () Bool)

(assert (=> bm!163299 m!2898245))

(declare-fun m!2898247 () Bool)

(assert (=> d!724497 m!2898247))

(declare-fun m!2898249 () Bool)

(assert (=> d!724497 m!2898249))

(assert (=> bm!163185 d!724497))

(declare-fun d!724499 () Bool)

(assert (=> d!724499 (= (head!5818 (_2!17334 lt!904154)) (h!34996 (_2!17334 lt!904154)))))

(assert (=> b!2556184 d!724499))

(declare-fun d!724503 () Bool)

(assert (=> d!724503 (= (isEmpty!17030 (tail!4093 tl!4068)) ((_ is Nil!29576) (tail!4093 tl!4068)))))

(assert (=> b!2556322 d!724503))

(declare-fun d!724505 () Bool)

(assert (=> d!724505 (= (tail!4093 tl!4068) (t!211375 tl!4068))))

(assert (=> b!2556322 d!724505))

(declare-fun d!724507 () Bool)

(assert (=> d!724507 (= (isEmpty!17032 lt!904146) (not ((_ is Some!5911) lt!904146)))))

(assert (=> d!724345 d!724507))

(declare-fun b!2556968 () Bool)

(declare-fun res!1076807 () Bool)

(declare-fun e!1615161 () Bool)

(assert (=> b!2556968 (=> res!1076807 e!1615161)))

(assert (=> b!2556968 (= res!1076807 (not ((_ is ElementMatch!7611) (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))))

(declare-fun e!1615158 () Bool)

(assert (=> b!2556968 (= e!1615158 e!1615161)))

(declare-fun b!2556969 () Bool)

(declare-fun e!1615159 () Bool)

(declare-fun e!1615160 () Bool)

(assert (=> b!2556969 (= e!1615159 e!1615160)))

(declare-fun res!1076806 () Bool)

(assert (=> b!2556969 (=> res!1076806 e!1615160)))

(declare-fun call!163313 () Bool)

(assert (=> b!2556969 (= res!1076806 call!163313)))

(declare-fun b!2556970 () Bool)

(declare-fun e!1615164 () Bool)

(assert (=> b!2556970 (= e!1615164 (= (head!5818 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))) (c!410113 (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))))

(declare-fun b!2556971 () Bool)

(declare-fun e!1615162 () Bool)

(assert (=> b!2556971 (= e!1615162 (matchR!3556 (derivativeStep!2180 (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))) (head!5818 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154))))) (tail!4093 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154))))))))

(declare-fun b!2556972 () Bool)

(declare-fun res!1076813 () Bool)

(assert (=> b!2556972 (=> (not res!1076813) (not e!1615164))))

(assert (=> b!2556972 (= res!1076813 (not call!163313))))

(declare-fun b!2556973 () Bool)

(assert (=> b!2556973 (= e!1615160 (not (= (head!5818 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))) (c!410113 (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154))))))))))

(declare-fun b!2556974 () Bool)

(declare-fun res!1076810 () Bool)

(assert (=> b!2556974 (=> res!1076810 e!1615160)))

(assert (=> b!2556974 (= res!1076810 (not (isEmpty!17030 (tail!4093 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))))

(declare-fun b!2556975 () Bool)

(declare-fun e!1615163 () Bool)

(declare-fun lt!904268 () Bool)

(assert (=> b!2556975 (= e!1615163 (= lt!904268 call!163313))))

(declare-fun b!2556976 () Bool)

(assert (=> b!2556976 (= e!1615162 (nullable!2528 (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154))))))))

(declare-fun b!2556977 () Bool)

(declare-fun res!1076808 () Bool)

(assert (=> b!2556977 (=> res!1076808 e!1615161)))

(assert (=> b!2556977 (= res!1076808 e!1615164)))

(declare-fun res!1076811 () Bool)

(assert (=> b!2556977 (=> (not res!1076811) (not e!1615164))))

(assert (=> b!2556977 (= res!1076811 lt!904268)))

(declare-fun bm!163308 () Bool)

(assert (=> bm!163308 (= call!163313 (isEmpty!17030 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(declare-fun b!2556978 () Bool)

(declare-fun res!1076809 () Bool)

(assert (=> b!2556978 (=> (not res!1076809) (not e!1615164))))

(assert (=> b!2556978 (= res!1076809 (isEmpty!17030 (tail!4093 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154))))))))

(declare-fun b!2556979 () Bool)

(assert (=> b!2556979 (= e!1615161 e!1615159)))

(declare-fun res!1076812 () Bool)

(assert (=> b!2556979 (=> (not res!1076812) (not e!1615159))))

(assert (=> b!2556979 (= res!1076812 (not lt!904268))))

(declare-fun d!724511 () Bool)

(assert (=> d!724511 e!1615163))

(declare-fun c!410409 () Bool)

(assert (=> d!724511 (= c!410409 ((_ is EmptyExpr!7611) (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154))))))))

(assert (=> d!724511 (= lt!904268 e!1615162)))

(declare-fun c!410411 () Bool)

(assert (=> d!724511 (= c!410411 (isEmpty!17030 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(assert (=> d!724511 (validRegex!3237 (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(assert (=> d!724511 (= (matchR!3556 (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))) (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))) lt!904268)))

(declare-fun b!2556980 () Bool)

(assert (=> b!2556980 (= e!1615158 (not lt!904268))))

(declare-fun b!2556981 () Bool)

(assert (=> b!2556981 (= e!1615163 e!1615158)))

(declare-fun c!410410 () Bool)

(assert (=> b!2556981 (= c!410410 ((_ is EmptyLang!7611) (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154))))))))

(assert (= (and d!724511 c!410411) b!2556976))

(assert (= (and d!724511 (not c!410411)) b!2556971))

(assert (= (and d!724511 c!410409) b!2556975))

(assert (= (and d!724511 (not c!410409)) b!2556981))

(assert (= (and b!2556981 c!410410) b!2556980))

(assert (= (and b!2556981 (not c!410410)) b!2556968))

(assert (= (and b!2556968 (not res!1076807)) b!2556977))

(assert (= (and b!2556977 res!1076811) b!2556972))

(assert (= (and b!2556972 res!1076813) b!2556978))

(assert (= (and b!2556978 res!1076809) b!2556970))

(assert (= (and b!2556977 (not res!1076808)) b!2556979))

(assert (= (and b!2556979 res!1076812) b!2556969))

(assert (= (and b!2556969 (not res!1076806)) b!2556974))

(assert (= (and b!2556974 (not res!1076810)) b!2556973))

(assert (= (or b!2556975 b!2556969 b!2556972) bm!163308))

(assert (=> b!2556971 m!2897997))

(declare-fun m!2898265 () Bool)

(assert (=> b!2556971 m!2898265))

(assert (=> b!2556971 m!2897995))

(assert (=> b!2556971 m!2898265))

(declare-fun m!2898267 () Bool)

(assert (=> b!2556971 m!2898267))

(assert (=> b!2556971 m!2897997))

(declare-fun m!2898269 () Bool)

(assert (=> b!2556971 m!2898269))

(assert (=> b!2556971 m!2898267))

(assert (=> b!2556971 m!2898269))

(declare-fun m!2898271 () Bool)

(assert (=> b!2556971 m!2898271))

(assert (=> b!2556970 m!2897997))

(assert (=> b!2556970 m!2898265))

(assert (=> bm!163308 m!2897997))

(assert (=> bm!163308 m!2898003))

(assert (=> d!724511 m!2897997))

(assert (=> d!724511 m!2898003))

(assert (=> d!724511 m!2897995))

(declare-fun m!2898277 () Bool)

(assert (=> d!724511 m!2898277))

(assert (=> b!2556978 m!2897997))

(assert (=> b!2556978 m!2898269))

(assert (=> b!2556978 m!2898269))

(declare-fun m!2898279 () Bool)

(assert (=> b!2556978 m!2898279))

(assert (=> b!2556974 m!2897997))

(assert (=> b!2556974 m!2898269))

(assert (=> b!2556974 m!2898269))

(assert (=> b!2556974 m!2898279))

(assert (=> b!2556976 m!2897995))

(declare-fun m!2898283 () Bool)

(assert (=> b!2556976 m!2898283))

(assert (=> b!2556973 m!2897997))

(assert (=> b!2556973 m!2898265))

(assert (=> b!2556623 d!724511))

(declare-fun b!2557003 () Bool)

(declare-fun e!1615178 () Regex!7611)

(declare-fun e!1615179 () Regex!7611)

(assert (=> b!2557003 (= e!1615178 e!1615179)))

(declare-fun c!410421 () Bool)

(assert (=> b!2557003 (= c!410421 ((_ is ElementMatch!7611) (regOne!15734 r!27340)))))

(declare-fun b!2557004 () Bool)

(declare-fun c!410424 () Bool)

(assert (=> b!2557004 (= c!410424 (nullable!2528 (regOne!15734 (regOne!15734 r!27340))))))

(declare-fun e!1615177 () Regex!7611)

(declare-fun e!1615181 () Regex!7611)

(assert (=> b!2557004 (= e!1615177 e!1615181)))

(declare-fun b!2557005 () Bool)

(declare-fun call!163318 () Regex!7611)

(assert (=> b!2557005 (= e!1615181 (Union!7611 (Concat!12307 call!163318 (regTwo!15734 (regOne!15734 r!27340))) EmptyLang!7611))))

(declare-fun b!2557007 () Bool)

(declare-fun e!1615180 () Regex!7611)

(declare-fun call!163319 () Regex!7611)

(declare-fun call!163322 () Regex!7611)

(assert (=> b!2557007 (= e!1615180 (Union!7611 call!163319 call!163322))))

(declare-fun bm!163313 () Bool)

(declare-fun c!410423 () Bool)

(assert (=> bm!163313 (= call!163319 (derivativeStep!2180 (ite c!410423 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(declare-fun bm!163315 () Bool)

(declare-fun call!163321 () Regex!7611)

(assert (=> bm!163315 (= call!163318 call!163321)))

(declare-fun bm!163316 () Bool)

(assert (=> bm!163316 (= call!163321 call!163322)))

(declare-fun c!410422 () Bool)

(declare-fun bm!163317 () Bool)

(assert (=> bm!163317 (= call!163322 (derivativeStep!2180 (ite c!410423 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410422 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(declare-fun b!2557010 () Bool)

(assert (=> b!2557010 (= e!1615180 e!1615177)))

(assert (=> b!2557010 (= c!410422 ((_ is Star!7611) (regOne!15734 r!27340)))))

(declare-fun b!2557011 () Bool)

(assert (=> b!2557011 (= e!1615179 (ite (= (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154))) (c!410113 (regOne!15734 r!27340))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557012 () Bool)

(assert (=> b!2557012 (= e!1615177 (Concat!12307 call!163321 (regOne!15734 r!27340)))))

(declare-fun b!2557013 () Bool)

(assert (=> b!2557013 (= e!1615178 EmptyLang!7611)))

(declare-fun b!2557014 () Bool)

(assert (=> b!2557014 (= e!1615181 (Union!7611 (Concat!12307 call!163318 (regTwo!15734 (regOne!15734 r!27340))) call!163319))))

(declare-fun b!2557015 () Bool)

(assert (=> b!2557015 (= c!410423 ((_ is Union!7611) (regOne!15734 r!27340)))))

(assert (=> b!2557015 (= e!1615179 e!1615180)))

(declare-fun d!724519 () Bool)

(declare-fun lt!904271 () Regex!7611)

(assert (=> d!724519 (validRegex!3237 lt!904271)))

(assert (=> d!724519 (= lt!904271 e!1615178)))

(declare-fun c!410419 () Bool)

(assert (=> d!724519 (= c!410419 (or ((_ is EmptyExpr!7611) (regOne!15734 r!27340)) ((_ is EmptyLang!7611) (regOne!15734 r!27340))))))

(assert (=> d!724519 (validRegex!3237 (regOne!15734 r!27340))))

(assert (=> d!724519 (= (derivativeStep!2180 (regOne!15734 r!27340) (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154)))) lt!904271)))

(assert (= (and d!724519 c!410419) b!2557013))

(assert (= (and d!724519 (not c!410419)) b!2557003))

(assert (= (and b!2557003 c!410421) b!2557011))

(assert (= (and b!2557003 (not c!410421)) b!2557015))

(assert (= (and b!2557015 c!410423) b!2557007))

(assert (= (and b!2557015 (not c!410423)) b!2557010))

(assert (= (and b!2557010 c!410422) b!2557012))

(assert (= (and b!2557010 (not c!410422)) b!2557004))

(assert (= (and b!2557004 c!410424) b!2557014))

(assert (= (and b!2557004 (not c!410424)) b!2557005))

(assert (= (or b!2557014 b!2557005) bm!163315))

(assert (= (or b!2557012 bm!163315) bm!163316))

(assert (= (or b!2557007 bm!163316) bm!163317))

(assert (= (or b!2557007 b!2557014) bm!163313))

(assert (=> b!2557004 m!2897805))

(assert (=> bm!163313 m!2897993))

(declare-fun m!2898289 () Bool)

(assert (=> bm!163313 m!2898289))

(assert (=> bm!163317 m!2897993))

(declare-fun m!2898297 () Bool)

(assert (=> bm!163317 m!2898297))

(declare-fun m!2898299 () Bool)

(assert (=> d!724519 m!2898299))

(assert (=> d!724519 m!2897535))

(assert (=> b!2556623 d!724519))

(declare-fun d!724523 () Bool)

(assert (=> d!724523 (= (head!5818 (Cons!29576 c!14016 (_1!17334 lt!904154))) (h!34996 (Cons!29576 c!14016 (_1!17334 lt!904154))))))

(assert (=> b!2556623 d!724523))

(declare-fun d!724525 () Bool)

(assert (=> d!724525 (= (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154))) (t!211375 (Cons!29576 c!14016 (_1!17334 lt!904154))))))

(assert (=> b!2556623 d!724525))

(declare-fun b!2557016 () Bool)

(declare-fun res!1076823 () Bool)

(declare-fun e!1615185 () Bool)

(assert (=> b!2557016 (=> res!1076823 e!1615185)))

(assert (=> b!2557016 (= res!1076823 (not ((_ is ElementMatch!7611) (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154))))))))

(declare-fun e!1615182 () Bool)

(assert (=> b!2557016 (= e!1615182 e!1615185)))

(declare-fun b!2557017 () Bool)

(declare-fun e!1615183 () Bool)

(declare-fun e!1615184 () Bool)

(assert (=> b!2557017 (= e!1615183 e!1615184)))

(declare-fun res!1076822 () Bool)

(assert (=> b!2557017 (=> res!1076822 e!1615184)))

(declare-fun call!163323 () Bool)

(assert (=> b!2557017 (= res!1076822 call!163323)))

(declare-fun b!2557018 () Bool)

(declare-fun e!1615188 () Bool)

(assert (=> b!2557018 (= e!1615188 (= (head!5818 (tail!4093 (_1!17334 lt!904154))) (c!410113 (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154))))))))

(declare-fun b!2557019 () Bool)

(declare-fun e!1615186 () Bool)

(assert (=> b!2557019 (= e!1615186 (matchR!3556 (derivativeStep!2180 (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154))) (head!5818 (tail!4093 (_1!17334 lt!904154)))) (tail!4093 (tail!4093 (_1!17334 lt!904154)))))))

(declare-fun b!2557020 () Bool)

(declare-fun res!1076829 () Bool)

(assert (=> b!2557020 (=> (not res!1076829) (not e!1615188))))

(assert (=> b!2557020 (= res!1076829 (not call!163323))))

(declare-fun b!2557021 () Bool)

(assert (=> b!2557021 (= e!1615184 (not (= (head!5818 (tail!4093 (_1!17334 lt!904154))) (c!410113 (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154)))))))))

(declare-fun b!2557022 () Bool)

(declare-fun res!1076826 () Bool)

(assert (=> b!2557022 (=> res!1076826 e!1615184)))

(assert (=> b!2557022 (= res!1076826 (not (isEmpty!17030 (tail!4093 (tail!4093 (_1!17334 lt!904154))))))))

(declare-fun b!2557023 () Bool)

(declare-fun e!1615187 () Bool)

(declare-fun lt!904272 () Bool)

(assert (=> b!2557023 (= e!1615187 (= lt!904272 call!163323))))

(declare-fun b!2557024 () Bool)

(assert (=> b!2557024 (= e!1615186 (nullable!2528 (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154)))))))

(declare-fun b!2557025 () Bool)

(declare-fun res!1076824 () Bool)

(assert (=> b!2557025 (=> res!1076824 e!1615185)))

(assert (=> b!2557025 (= res!1076824 e!1615188)))

(declare-fun res!1076827 () Bool)

(assert (=> b!2557025 (=> (not res!1076827) (not e!1615188))))

(assert (=> b!2557025 (= res!1076827 lt!904272)))

(declare-fun bm!163318 () Bool)

(assert (=> bm!163318 (= call!163323 (isEmpty!17030 (tail!4093 (_1!17334 lt!904154))))))

(declare-fun b!2557026 () Bool)

(declare-fun res!1076825 () Bool)

(assert (=> b!2557026 (=> (not res!1076825) (not e!1615188))))

(assert (=> b!2557026 (= res!1076825 (isEmpty!17030 (tail!4093 (tail!4093 (_1!17334 lt!904154)))))))

(declare-fun b!2557027 () Bool)

(assert (=> b!2557027 (= e!1615185 e!1615183)))

(declare-fun res!1076828 () Bool)

(assert (=> b!2557027 (=> (not res!1076828) (not e!1615183))))

(assert (=> b!2557027 (= res!1076828 (not lt!904272))))

(declare-fun d!724527 () Bool)

(assert (=> d!724527 e!1615187))

(declare-fun c!410425 () Bool)

(assert (=> d!724527 (= c!410425 ((_ is EmptyExpr!7611) (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154)))))))

(assert (=> d!724527 (= lt!904272 e!1615186)))

(declare-fun c!410427 () Bool)

(assert (=> d!724527 (= c!410427 (isEmpty!17030 (tail!4093 (_1!17334 lt!904154))))))

(assert (=> d!724527 (validRegex!3237 (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154))))))

(assert (=> d!724527 (= (matchR!3556 (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154))) (tail!4093 (_1!17334 lt!904154))) lt!904272)))

(declare-fun b!2557028 () Bool)

(assert (=> b!2557028 (= e!1615182 (not lt!904272))))

(declare-fun b!2557029 () Bool)

(assert (=> b!2557029 (= e!1615187 e!1615182)))

(declare-fun c!410426 () Bool)

(assert (=> b!2557029 (= c!410426 ((_ is EmptyLang!7611) (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154)))))))

(assert (= (and d!724527 c!410427) b!2557024))

(assert (= (and d!724527 (not c!410427)) b!2557019))

(assert (= (and d!724527 c!410425) b!2557023))

(assert (= (and d!724527 (not c!410425)) b!2557029))

(assert (= (and b!2557029 c!410426) b!2557028))

(assert (= (and b!2557029 (not c!410426)) b!2557016))

(assert (= (and b!2557016 (not res!1076823)) b!2557025))

(assert (= (and b!2557025 res!1076827) b!2557020))

(assert (= (and b!2557020 res!1076829) b!2557026))

(assert (= (and b!2557026 res!1076825) b!2557018))

(assert (= (and b!2557025 (not res!1076824)) b!2557027))

(assert (= (and b!2557027 res!1076828) b!2557017))

(assert (= (and b!2557017 (not res!1076822)) b!2557022))

(assert (= (and b!2557022 (not res!1076826)) b!2557021))

(assert (= (or b!2557023 b!2557017 b!2557020) bm!163318))

(assert (=> b!2557019 m!2897851))

(declare-fun m!2898301 () Bool)

(assert (=> b!2557019 m!2898301))

(assert (=> b!2557019 m!2897849))

(assert (=> b!2557019 m!2898301))

(declare-fun m!2898303 () Bool)

(assert (=> b!2557019 m!2898303))

(assert (=> b!2557019 m!2897851))

(declare-fun m!2898305 () Bool)

(assert (=> b!2557019 m!2898305))

(assert (=> b!2557019 m!2898303))

(assert (=> b!2557019 m!2898305))

(declare-fun m!2898307 () Bool)

(assert (=> b!2557019 m!2898307))

(assert (=> b!2557018 m!2897851))

(assert (=> b!2557018 m!2898301))

(assert (=> bm!163318 m!2897851))

(assert (=> bm!163318 m!2897871))

(assert (=> d!724527 m!2897851))

(assert (=> d!724527 m!2897871))

(assert (=> d!724527 m!2897849))

(declare-fun m!2898309 () Bool)

(assert (=> d!724527 m!2898309))

(assert (=> b!2557026 m!2897851))

(assert (=> b!2557026 m!2898305))

(assert (=> b!2557026 m!2898305))

(declare-fun m!2898311 () Bool)

(assert (=> b!2557026 m!2898311))

(assert (=> b!2557022 m!2897851))

(assert (=> b!2557022 m!2898305))

(assert (=> b!2557022 m!2898305))

(assert (=> b!2557022 m!2898311))

(assert (=> b!2557024 m!2897849))

(declare-fun m!2898313 () Bool)

(assert (=> b!2557024 m!2898313))

(assert (=> b!2557021 m!2897851))

(assert (=> b!2557021 m!2898301))

(assert (=> b!2556434 d!724527))

(declare-fun b!2557032 () Bool)

(declare-fun e!1615192 () Regex!7611)

(declare-fun e!1615193 () Regex!7611)

(assert (=> b!2557032 (= e!1615192 e!1615193)))

(declare-fun c!410429 () Bool)

(assert (=> b!2557032 (= c!410429 ((_ is ElementMatch!7611) lt!904156))))

(declare-fun b!2557033 () Bool)

(declare-fun c!410432 () Bool)

(assert (=> b!2557033 (= c!410432 (nullable!2528 (regOne!15734 lt!904156)))))

(declare-fun e!1615191 () Regex!7611)

(declare-fun e!1615195 () Regex!7611)

(assert (=> b!2557033 (= e!1615191 e!1615195)))

(declare-fun b!2557034 () Bool)

(declare-fun call!163324 () Regex!7611)

(assert (=> b!2557034 (= e!1615195 (Union!7611 (Concat!12307 call!163324 (regTwo!15734 lt!904156)) EmptyLang!7611))))

(declare-fun b!2557035 () Bool)

(declare-fun e!1615194 () Regex!7611)

(declare-fun call!163325 () Regex!7611)

(declare-fun call!163327 () Regex!7611)

(assert (=> b!2557035 (= e!1615194 (Union!7611 call!163325 call!163327))))

(declare-fun c!410431 () Bool)

(declare-fun bm!163319 () Bool)

(assert (=> bm!163319 (= call!163325 (derivativeStep!2180 (ite c!410431 (regOne!15735 lt!904156) (regTwo!15734 lt!904156)) (head!5818 (_1!17334 lt!904154))))))

(declare-fun bm!163320 () Bool)

(declare-fun call!163326 () Regex!7611)

(assert (=> bm!163320 (= call!163324 call!163326)))

(declare-fun bm!163321 () Bool)

(assert (=> bm!163321 (= call!163326 call!163327)))

(declare-fun c!410430 () Bool)

(declare-fun bm!163322 () Bool)

(assert (=> bm!163322 (= call!163327 (derivativeStep!2180 (ite c!410431 (regTwo!15735 lt!904156) (ite c!410430 (reg!7940 lt!904156) (regOne!15734 lt!904156))) (head!5818 (_1!17334 lt!904154))))))

(declare-fun b!2557036 () Bool)

(assert (=> b!2557036 (= e!1615194 e!1615191)))

(assert (=> b!2557036 (= c!410430 ((_ is Star!7611) lt!904156))))

(declare-fun b!2557037 () Bool)

(assert (=> b!2557037 (= e!1615193 (ite (= (head!5818 (_1!17334 lt!904154)) (c!410113 lt!904156)) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557038 () Bool)

(assert (=> b!2557038 (= e!1615191 (Concat!12307 call!163326 lt!904156))))

(declare-fun b!2557039 () Bool)

(assert (=> b!2557039 (= e!1615192 EmptyLang!7611)))

(declare-fun b!2557040 () Bool)

(assert (=> b!2557040 (= e!1615195 (Union!7611 (Concat!12307 call!163324 (regTwo!15734 lt!904156)) call!163325))))

(declare-fun b!2557041 () Bool)

(assert (=> b!2557041 (= c!410431 ((_ is Union!7611) lt!904156))))

(assert (=> b!2557041 (= e!1615193 e!1615194)))

(declare-fun d!724529 () Bool)

(declare-fun lt!904273 () Regex!7611)

(assert (=> d!724529 (validRegex!3237 lt!904273)))

(assert (=> d!724529 (= lt!904273 e!1615192)))

(declare-fun c!410428 () Bool)

(assert (=> d!724529 (= c!410428 (or ((_ is EmptyExpr!7611) lt!904156) ((_ is EmptyLang!7611) lt!904156)))))

(assert (=> d!724529 (validRegex!3237 lt!904156)))

(assert (=> d!724529 (= (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 lt!904154))) lt!904273)))

(assert (= (and d!724529 c!410428) b!2557039))

(assert (= (and d!724529 (not c!410428)) b!2557032))

(assert (= (and b!2557032 c!410429) b!2557037))

(assert (= (and b!2557032 (not c!410429)) b!2557041))

(assert (= (and b!2557041 c!410431) b!2557035))

(assert (= (and b!2557041 (not c!410431)) b!2557036))

(assert (= (and b!2557036 c!410430) b!2557038))

(assert (= (and b!2557036 (not c!410430)) b!2557033))

(assert (= (and b!2557033 c!410432) b!2557040))

(assert (= (and b!2557033 (not c!410432)) b!2557034))

(assert (= (or b!2557040 b!2557034) bm!163320))

(assert (= (or b!2557038 bm!163320) bm!163321))

(assert (= (or b!2557035 bm!163321) bm!163322))

(assert (= (or b!2557035 b!2557040) bm!163319))

(declare-fun m!2898315 () Bool)

(assert (=> b!2557033 m!2898315))

(assert (=> bm!163319 m!2897847))

(declare-fun m!2898317 () Bool)

(assert (=> bm!163319 m!2898317))

(assert (=> bm!163322 m!2897847))

(declare-fun m!2898319 () Bool)

(assert (=> bm!163322 m!2898319))

(declare-fun m!2898321 () Bool)

(assert (=> d!724529 m!2898321))

(assert (=> d!724529 m!2897621))

(assert (=> b!2556434 d!724529))

(declare-fun d!724533 () Bool)

(assert (=> d!724533 (= (head!5818 (_1!17334 lt!904154)) (h!34996 (_1!17334 lt!904154)))))

(assert (=> b!2556434 d!724533))

(declare-fun d!724535 () Bool)

(assert (=> d!724535 (= (tail!4093 (_1!17334 lt!904154)) (t!211375 (_1!17334 lt!904154)))))

(assert (=> b!2556434 d!724535))

(declare-fun d!724537 () Bool)

(assert (=> d!724537 (= (isDefined!4734 lt!904240) (not (isEmpty!17032 lt!904240)))))

(declare-fun bs!469738 () Bool)

(assert (= bs!469738 d!724537))

(declare-fun m!2898323 () Bool)

(assert (=> bs!469738 m!2898323))

(assert (=> d!724349 d!724537))

(declare-fun b!2557052 () Bool)

(declare-fun res!1076839 () Bool)

(declare-fun e!1615207 () Bool)

(assert (=> b!2557052 (=> res!1076839 e!1615207)))

(assert (=> b!2557052 (= res!1076839 (not ((_ is ElementMatch!7611) lt!904156)))))

(declare-fun e!1615204 () Bool)

(assert (=> b!2557052 (= e!1615204 e!1615207)))

(declare-fun b!2557053 () Bool)

(declare-fun e!1615205 () Bool)

(declare-fun e!1615206 () Bool)

(assert (=> b!2557053 (= e!1615205 e!1615206)))

(declare-fun res!1076838 () Bool)

(assert (=> b!2557053 (=> res!1076838 e!1615206)))

(declare-fun call!163331 () Bool)

(assert (=> b!2557053 (= res!1076838 call!163331)))

(declare-fun b!2557054 () Bool)

(declare-fun e!1615210 () Bool)

(assert (=> b!2557054 (= e!1615210 (= (head!5818 Nil!29576) (c!410113 lt!904156)))))

(declare-fun b!2557055 () Bool)

(declare-fun e!1615208 () Bool)

(assert (=> b!2557055 (= e!1615208 (matchR!3556 (derivativeStep!2180 lt!904156 (head!5818 Nil!29576)) (tail!4093 Nil!29576)))))

(declare-fun b!2557056 () Bool)

(declare-fun res!1076845 () Bool)

(assert (=> b!2557056 (=> (not res!1076845) (not e!1615210))))

(assert (=> b!2557056 (= res!1076845 (not call!163331))))

(declare-fun b!2557057 () Bool)

(assert (=> b!2557057 (= e!1615206 (not (= (head!5818 Nil!29576) (c!410113 lt!904156))))))

(declare-fun b!2557058 () Bool)

(declare-fun res!1076842 () Bool)

(assert (=> b!2557058 (=> res!1076842 e!1615206)))

(assert (=> b!2557058 (= res!1076842 (not (isEmpty!17030 (tail!4093 Nil!29576))))))

(declare-fun b!2557059 () Bool)

(declare-fun e!1615209 () Bool)

(declare-fun lt!904274 () Bool)

(assert (=> b!2557059 (= e!1615209 (= lt!904274 call!163331))))

(declare-fun b!2557060 () Bool)

(assert (=> b!2557060 (= e!1615208 (nullable!2528 lt!904156))))

(declare-fun b!2557061 () Bool)

(declare-fun res!1076840 () Bool)

(assert (=> b!2557061 (=> res!1076840 e!1615207)))

(assert (=> b!2557061 (= res!1076840 e!1615210)))

(declare-fun res!1076843 () Bool)

(assert (=> b!2557061 (=> (not res!1076843) (not e!1615210))))

(assert (=> b!2557061 (= res!1076843 lt!904274)))

(declare-fun bm!163326 () Bool)

(assert (=> bm!163326 (= call!163331 (isEmpty!17030 Nil!29576))))

(declare-fun b!2557062 () Bool)

(declare-fun res!1076841 () Bool)

(assert (=> b!2557062 (=> (not res!1076841) (not e!1615210))))

(assert (=> b!2557062 (= res!1076841 (isEmpty!17030 (tail!4093 Nil!29576)))))

(declare-fun b!2557063 () Bool)

(assert (=> b!2557063 (= e!1615207 e!1615205)))

(declare-fun res!1076844 () Bool)

(assert (=> b!2557063 (=> (not res!1076844) (not e!1615205))))

(assert (=> b!2557063 (= res!1076844 (not lt!904274))))

(declare-fun d!724539 () Bool)

(assert (=> d!724539 e!1615209))

(declare-fun c!410435 () Bool)

(assert (=> d!724539 (= c!410435 ((_ is EmptyExpr!7611) lt!904156))))

(assert (=> d!724539 (= lt!904274 e!1615208)))

(declare-fun c!410437 () Bool)

(assert (=> d!724539 (= c!410437 (isEmpty!17030 Nil!29576))))

(assert (=> d!724539 (validRegex!3237 lt!904156)))

(assert (=> d!724539 (= (matchR!3556 lt!904156 Nil!29576) lt!904274)))

(declare-fun b!2557064 () Bool)

(assert (=> b!2557064 (= e!1615204 (not lt!904274))))

(declare-fun b!2557065 () Bool)

(assert (=> b!2557065 (= e!1615209 e!1615204)))

(declare-fun c!410436 () Bool)

(assert (=> b!2557065 (= c!410436 ((_ is EmptyLang!7611) lt!904156))))

(assert (= (and d!724539 c!410437) b!2557060))

(assert (= (and d!724539 (not c!410437)) b!2557055))

(assert (= (and d!724539 c!410435) b!2557059))

(assert (= (and d!724539 (not c!410435)) b!2557065))

(assert (= (and b!2557065 c!410436) b!2557064))

(assert (= (and b!2557065 (not c!410436)) b!2557052))

(assert (= (and b!2557052 (not res!1076839)) b!2557061))

(assert (= (and b!2557061 res!1076843) b!2557056))

(assert (= (and b!2557056 res!1076845) b!2557062))

(assert (= (and b!2557062 res!1076841) b!2557054))

(assert (= (and b!2557061 (not res!1076840)) b!2557063))

(assert (= (and b!2557063 res!1076844) b!2557053))

(assert (= (and b!2557053 (not res!1076838)) b!2557058))

(assert (= (and b!2557058 (not res!1076842)) b!2557057))

(assert (= (or b!2557059 b!2557053 b!2557056) bm!163326))

(assert (=> b!2557055 m!2897597))

(assert (=> b!2557055 m!2897597))

(declare-fun m!2898331 () Bool)

(assert (=> b!2557055 m!2898331))

(assert (=> b!2557055 m!2897601))

(assert (=> b!2557055 m!2898331))

(assert (=> b!2557055 m!2897601))

(declare-fun m!2898333 () Bool)

(assert (=> b!2557055 m!2898333))

(assert (=> b!2557054 m!2897597))

(assert (=> bm!163326 m!2897605))

(assert (=> d!724539 m!2897605))

(assert (=> d!724539 m!2897621))

(assert (=> b!2557062 m!2897601))

(assert (=> b!2557062 m!2897601))

(assert (=> b!2557062 m!2897609))

(assert (=> b!2557058 m!2897601))

(assert (=> b!2557058 m!2897601))

(assert (=> b!2557058 m!2897609))

(assert (=> b!2557060 m!2897873))

(assert (=> b!2557057 m!2897597))

(assert (=> d!724349 d!724539))

(declare-fun bm!163328 () Bool)

(declare-fun call!163333 () Bool)

(declare-fun c!410442 () Bool)

(declare-fun c!410441 () Bool)

(assert (=> bm!163328 (= call!163333 (validRegex!3237 (ite c!410442 (reg!7940 lt!904156) (ite c!410441 (regOne!15735 lt!904156) (regTwo!15734 lt!904156)))))))

(declare-fun d!724543 () Bool)

(declare-fun res!1076857 () Bool)

(declare-fun e!1615223 () Bool)

(assert (=> d!724543 (=> res!1076857 e!1615223)))

(assert (=> d!724543 (= res!1076857 ((_ is ElementMatch!7611) lt!904156))))

(assert (=> d!724543 (= (validRegex!3237 lt!904156) e!1615223)))

(declare-fun b!2557080 () Bool)

(declare-fun e!1615219 () Bool)

(assert (=> b!2557080 (= e!1615223 e!1615219)))

(assert (=> b!2557080 (= c!410442 ((_ is Star!7611) lt!904156))))

(declare-fun b!2557081 () Bool)

(declare-fun e!1615220 () Bool)

(declare-fun call!163335 () Bool)

(assert (=> b!2557081 (= e!1615220 call!163335)))

(declare-fun b!2557082 () Bool)

(declare-fun e!1615218 () Bool)

(declare-fun call!163334 () Bool)

(assert (=> b!2557082 (= e!1615218 call!163334)))

(declare-fun b!2557083 () Bool)

(declare-fun e!1615221 () Bool)

(assert (=> b!2557083 (= e!1615221 e!1615218)))

(declare-fun res!1076854 () Bool)

(assert (=> b!2557083 (=> (not res!1076854) (not e!1615218))))

(assert (=> b!2557083 (= res!1076854 call!163335)))

(declare-fun b!2557084 () Bool)

(declare-fun res!1076855 () Bool)

(assert (=> b!2557084 (=> res!1076855 e!1615221)))

(assert (=> b!2557084 (= res!1076855 (not ((_ is Concat!12307) lt!904156)))))

(declare-fun e!1615224 () Bool)

(assert (=> b!2557084 (= e!1615224 e!1615221)))

(declare-fun bm!163329 () Bool)

(assert (=> bm!163329 (= call!163335 (validRegex!3237 (ite c!410441 (regTwo!15735 lt!904156) (regOne!15734 lt!904156))))))

(declare-fun bm!163330 () Bool)

(assert (=> bm!163330 (= call!163334 call!163333)))

(declare-fun b!2557085 () Bool)

(declare-fun e!1615222 () Bool)

(assert (=> b!2557085 (= e!1615222 call!163333)))

(declare-fun b!2557086 () Bool)

(declare-fun res!1076858 () Bool)

(assert (=> b!2557086 (=> (not res!1076858) (not e!1615220))))

(assert (=> b!2557086 (= res!1076858 call!163334)))

(assert (=> b!2557086 (= e!1615224 e!1615220)))

(declare-fun b!2557087 () Bool)

(assert (=> b!2557087 (= e!1615219 e!1615224)))

(assert (=> b!2557087 (= c!410441 ((_ is Union!7611) lt!904156))))

(declare-fun b!2557088 () Bool)

(assert (=> b!2557088 (= e!1615219 e!1615222)))

(declare-fun res!1076856 () Bool)

(assert (=> b!2557088 (= res!1076856 (not (nullable!2528 (reg!7940 lt!904156))))))

(assert (=> b!2557088 (=> (not res!1076856) (not e!1615222))))

(assert (= (and d!724543 (not res!1076857)) b!2557080))

(assert (= (and b!2557080 c!410442) b!2557088))

(assert (= (and b!2557080 (not c!410442)) b!2557087))

(assert (= (and b!2557088 res!1076856) b!2557085))

(assert (= (and b!2557087 c!410441) b!2557086))

(assert (= (and b!2557087 (not c!410441)) b!2557084))

(assert (= (and b!2557086 res!1076858) b!2557081))

(assert (= (and b!2557084 (not res!1076855)) b!2557083))

(assert (= (and b!2557083 res!1076854) b!2557082))

(assert (= (or b!2557086 b!2557082) bm!163330))

(assert (= (or b!2557081 b!2557083) bm!163329))

(assert (= (or b!2557085 bm!163330) bm!163328))

(declare-fun m!2898347 () Bool)

(assert (=> bm!163328 m!2898347))

(declare-fun m!2898349 () Bool)

(assert (=> bm!163329 m!2898349))

(declare-fun m!2898351 () Bool)

(assert (=> b!2557088 m!2898351))

(assert (=> d!724349 d!724543))

(declare-fun d!724547 () Bool)

(assert (=> d!724547 (= (head!5818 tl!4068) (h!34996 tl!4068))))

(assert (=> b!2556318 d!724547))

(assert (=> bm!163208 d!724483))

(declare-fun c!410445 () Bool)

(declare-fun bm!163331 () Bool)

(declare-fun call!163336 () Bool)

(declare-fun c!410444 () Bool)

(assert (=> bm!163331 (= call!163336 (validRegex!3237 (ite c!410445 (reg!7940 lt!904181) (ite c!410444 (regOne!15735 lt!904181) (regTwo!15734 lt!904181)))))))

(declare-fun d!724549 () Bool)

(declare-fun res!1076864 () Bool)

(declare-fun e!1615232 () Bool)

(assert (=> d!724549 (=> res!1076864 e!1615232)))

(assert (=> d!724549 (= res!1076864 ((_ is ElementMatch!7611) lt!904181))))

(assert (=> d!724549 (= (validRegex!3237 lt!904181) e!1615232)))

(declare-fun b!2557093 () Bool)

(declare-fun e!1615228 () Bool)

(assert (=> b!2557093 (= e!1615232 e!1615228)))

(assert (=> b!2557093 (= c!410445 ((_ is Star!7611) lt!904181))))

(declare-fun b!2557094 () Bool)

(declare-fun e!1615229 () Bool)

(declare-fun call!163338 () Bool)

(assert (=> b!2557094 (= e!1615229 call!163338)))

(declare-fun b!2557095 () Bool)

(declare-fun e!1615227 () Bool)

(declare-fun call!163337 () Bool)

(assert (=> b!2557095 (= e!1615227 call!163337)))

(declare-fun b!2557096 () Bool)

(declare-fun e!1615230 () Bool)

(assert (=> b!2557096 (= e!1615230 e!1615227)))

(declare-fun res!1076861 () Bool)

(assert (=> b!2557096 (=> (not res!1076861) (not e!1615227))))

(assert (=> b!2557096 (= res!1076861 call!163338)))

(declare-fun b!2557097 () Bool)

(declare-fun res!1076862 () Bool)

(assert (=> b!2557097 (=> res!1076862 e!1615230)))

(assert (=> b!2557097 (= res!1076862 (not ((_ is Concat!12307) lt!904181)))))

(declare-fun e!1615233 () Bool)

(assert (=> b!2557097 (= e!1615233 e!1615230)))

(declare-fun bm!163332 () Bool)

(assert (=> bm!163332 (= call!163338 (validRegex!3237 (ite c!410444 (regTwo!15735 lt!904181) (regOne!15734 lt!904181))))))

(declare-fun bm!163333 () Bool)

(assert (=> bm!163333 (= call!163337 call!163336)))

(declare-fun b!2557098 () Bool)

(declare-fun e!1615231 () Bool)

(assert (=> b!2557098 (= e!1615231 call!163336)))

(declare-fun b!2557099 () Bool)

(declare-fun res!1076865 () Bool)

(assert (=> b!2557099 (=> (not res!1076865) (not e!1615229))))

(assert (=> b!2557099 (= res!1076865 call!163337)))

(assert (=> b!2557099 (= e!1615233 e!1615229)))

(declare-fun b!2557100 () Bool)

(assert (=> b!2557100 (= e!1615228 e!1615233)))

(assert (=> b!2557100 (= c!410444 ((_ is Union!7611) lt!904181))))

(declare-fun b!2557101 () Bool)

(assert (=> b!2557101 (= e!1615228 e!1615231)))

(declare-fun res!1076863 () Bool)

(assert (=> b!2557101 (= res!1076863 (not (nullable!2528 (reg!7940 lt!904181))))))

(assert (=> b!2557101 (=> (not res!1076863) (not e!1615231))))

(assert (= (and d!724549 (not res!1076864)) b!2557093))

(assert (= (and b!2557093 c!410445) b!2557101))

(assert (= (and b!2557093 (not c!410445)) b!2557100))

(assert (= (and b!2557101 res!1076863) b!2557098))

(assert (= (and b!2557100 c!410444) b!2557099))

(assert (= (and b!2557100 (not c!410444)) b!2557097))

(assert (= (and b!2557099 res!1076865) b!2557094))

(assert (= (and b!2557097 (not res!1076862)) b!2557096))

(assert (= (and b!2557096 res!1076861) b!2557095))

(assert (= (or b!2557099 b!2557095) bm!163333))

(assert (= (or b!2557094 b!2557096) bm!163332))

(assert (= (or b!2557098 bm!163333) bm!163331))

(declare-fun m!2898363 () Bool)

(assert (=> bm!163331 m!2898363))

(declare-fun m!2898365 () Bool)

(assert (=> bm!163332 m!2898365))

(declare-fun m!2898367 () Bool)

(assert (=> b!2557101 m!2898367))

(assert (=> d!724295 d!724549))

(declare-fun bm!163335 () Bool)

(declare-fun c!410450 () Bool)

(declare-fun call!163340 () Bool)

(declare-fun c!410449 () Bool)

(assert (=> bm!163335 (= call!163340 (validRegex!3237 (ite c!410450 (reg!7940 (derivativeStep!2180 r!27340 c!14016)) (ite c!410449 (regOne!15735 (derivativeStep!2180 r!27340 c!14016)) (regTwo!15734 (derivativeStep!2180 r!27340 c!14016))))))))

(declare-fun d!724557 () Bool)

(declare-fun res!1076877 () Bool)

(declare-fun e!1615246 () Bool)

(assert (=> d!724557 (=> res!1076877 e!1615246)))

(assert (=> d!724557 (= res!1076877 ((_ is ElementMatch!7611) (derivativeStep!2180 r!27340 c!14016)))))

(assert (=> d!724557 (= (validRegex!3237 (derivativeStep!2180 r!27340 c!14016)) e!1615246)))

(declare-fun b!2557116 () Bool)

(declare-fun e!1615242 () Bool)

(assert (=> b!2557116 (= e!1615246 e!1615242)))

(assert (=> b!2557116 (= c!410450 ((_ is Star!7611) (derivativeStep!2180 r!27340 c!14016)))))

(declare-fun b!2557117 () Bool)

(declare-fun e!1615243 () Bool)

(declare-fun call!163342 () Bool)

(assert (=> b!2557117 (= e!1615243 call!163342)))

(declare-fun b!2557118 () Bool)

(declare-fun e!1615241 () Bool)

(declare-fun call!163341 () Bool)

(assert (=> b!2557118 (= e!1615241 call!163341)))

(declare-fun b!2557119 () Bool)

(declare-fun e!1615244 () Bool)

(assert (=> b!2557119 (= e!1615244 e!1615241)))

(declare-fun res!1076874 () Bool)

(assert (=> b!2557119 (=> (not res!1076874) (not e!1615241))))

(assert (=> b!2557119 (= res!1076874 call!163342)))

(declare-fun b!2557120 () Bool)

(declare-fun res!1076875 () Bool)

(assert (=> b!2557120 (=> res!1076875 e!1615244)))

(assert (=> b!2557120 (= res!1076875 (not ((_ is Concat!12307) (derivativeStep!2180 r!27340 c!14016))))))

(declare-fun e!1615247 () Bool)

(assert (=> b!2557120 (= e!1615247 e!1615244)))

(declare-fun bm!163336 () Bool)

(assert (=> bm!163336 (= call!163342 (validRegex!3237 (ite c!410449 (regTwo!15735 (derivativeStep!2180 r!27340 c!14016)) (regOne!15734 (derivativeStep!2180 r!27340 c!14016)))))))

(declare-fun bm!163337 () Bool)

(assert (=> bm!163337 (= call!163341 call!163340)))

(declare-fun b!2557121 () Bool)

(declare-fun e!1615245 () Bool)

(assert (=> b!2557121 (= e!1615245 call!163340)))

(declare-fun b!2557122 () Bool)

(declare-fun res!1076878 () Bool)

(assert (=> b!2557122 (=> (not res!1076878) (not e!1615243))))

(assert (=> b!2557122 (= res!1076878 call!163341)))

(assert (=> b!2557122 (= e!1615247 e!1615243)))

(declare-fun b!2557123 () Bool)

(assert (=> b!2557123 (= e!1615242 e!1615247)))

(assert (=> b!2557123 (= c!410449 ((_ is Union!7611) (derivativeStep!2180 r!27340 c!14016)))))

(declare-fun b!2557124 () Bool)

(assert (=> b!2557124 (= e!1615242 e!1615245)))

(declare-fun res!1076876 () Bool)

(assert (=> b!2557124 (= res!1076876 (not (nullable!2528 (reg!7940 (derivativeStep!2180 r!27340 c!14016)))))))

(assert (=> b!2557124 (=> (not res!1076876) (not e!1615245))))

(assert (= (and d!724557 (not res!1076877)) b!2557116))

(assert (= (and b!2557116 c!410450) b!2557124))

(assert (= (and b!2557116 (not c!410450)) b!2557123))

(assert (= (and b!2557124 res!1076876) b!2557121))

(assert (= (and b!2557123 c!410449) b!2557122))

(assert (= (and b!2557123 (not c!410449)) b!2557120))

(assert (= (and b!2557122 res!1076878) b!2557117))

(assert (= (and b!2557120 (not res!1076875)) b!2557119))

(assert (= (and b!2557119 res!1076874) b!2557118))

(assert (= (or b!2557122 b!2557118) bm!163337))

(assert (= (or b!2557117 b!2557119) bm!163336))

(assert (= (or b!2557121 bm!163337) bm!163335))

(declare-fun m!2898369 () Bool)

(assert (=> bm!163335 m!2898369))

(declare-fun m!2898371 () Bool)

(assert (=> bm!163336 m!2898371))

(declare-fun m!2898373 () Bool)

(assert (=> b!2557124 m!2898373))

(assert (=> d!724295 d!724557))

(declare-fun b!2557125 () Bool)

(declare-fun e!1615249 () List!29676)

(assert (=> b!2557125 (= e!1615249 (_2!17334 (get!9296 lt!904240)))))

(declare-fun b!2557128 () Bool)

(declare-fun e!1615248 () Bool)

(declare-fun lt!904278 () List!29676)

(assert (=> b!2557128 (= e!1615248 (or (not (= (_2!17334 (get!9296 lt!904240)) Nil!29576)) (= lt!904278 (_1!17334 (get!9296 lt!904240)))))))

(declare-fun d!724559 () Bool)

(assert (=> d!724559 e!1615248))

(declare-fun res!1076879 () Bool)

(assert (=> d!724559 (=> (not res!1076879) (not e!1615248))))

(assert (=> d!724559 (= res!1076879 (= (content!4074 lt!904278) ((_ map or) (content!4074 (_1!17334 (get!9296 lt!904240))) (content!4074 (_2!17334 (get!9296 lt!904240))))))))

(assert (=> d!724559 (= lt!904278 e!1615249)))

(declare-fun c!410451 () Bool)

(assert (=> d!724559 (= c!410451 ((_ is Nil!29576) (_1!17334 (get!9296 lt!904240))))))

(assert (=> d!724559 (= (++!7268 (_1!17334 (get!9296 lt!904240)) (_2!17334 (get!9296 lt!904240))) lt!904278)))

(declare-fun b!2557126 () Bool)

(assert (=> b!2557126 (= e!1615249 (Cons!29576 (h!34996 (_1!17334 (get!9296 lt!904240))) (++!7268 (t!211375 (_1!17334 (get!9296 lt!904240))) (_2!17334 (get!9296 lt!904240)))))))

(declare-fun b!2557127 () Bool)

(declare-fun res!1076880 () Bool)

(assert (=> b!2557127 (=> (not res!1076880) (not e!1615248))))

(assert (=> b!2557127 (= res!1076880 (= (size!22954 lt!904278) (+ (size!22954 (_1!17334 (get!9296 lt!904240))) (size!22954 (_2!17334 (get!9296 lt!904240))))))))

(assert (= (and d!724559 c!410451) b!2557125))

(assert (= (and d!724559 (not c!410451)) b!2557126))

(assert (= (and d!724559 res!1076879) b!2557127))

(assert (= (and b!2557127 res!1076880) b!2557128))

(declare-fun m!2898383 () Bool)

(assert (=> d!724559 m!2898383))

(declare-fun m!2898385 () Bool)

(assert (=> d!724559 m!2898385))

(declare-fun m!2898387 () Bool)

(assert (=> d!724559 m!2898387))

(declare-fun m!2898389 () Bool)

(assert (=> b!2557126 m!2898389))

(declare-fun m!2898391 () Bool)

(assert (=> b!2557127 m!2898391))

(declare-fun m!2898393 () Bool)

(assert (=> b!2557127 m!2898393))

(declare-fun m!2898395 () Bool)

(assert (=> b!2557127 m!2898395))

(assert (=> b!2556595 d!724559))

(declare-fun d!724563 () Bool)

(assert (=> d!724563 (= (get!9296 lt!904240) (v!31852 lt!904240))))

(assert (=> b!2556595 d!724563))

(declare-fun d!724565 () Bool)

(assert (=> d!724565 (= (isEmpty!17030 Nil!29576) true)))

(assert (=> bm!163199 d!724565))

(assert (=> b!2556405 d!724503))

(assert (=> b!2556405 d!724505))

(declare-fun b!2557139 () Bool)

(declare-fun res!1076882 () Bool)

(declare-fun e!1615258 () Bool)

(assert (=> b!2557139 (=> res!1076882 e!1615258)))

(assert (=> b!2557139 (= res!1076882 (not ((_ is ElementMatch!7611) (derivative!306 lt!904156 (_1!17334 lt!904154)))))))

(declare-fun e!1615255 () Bool)

(assert (=> b!2557139 (= e!1615255 e!1615258)))

(declare-fun b!2557140 () Bool)

(declare-fun e!1615256 () Bool)

(declare-fun e!1615257 () Bool)

(assert (=> b!2557140 (= e!1615256 e!1615257)))

(declare-fun res!1076881 () Bool)

(assert (=> b!2557140 (=> res!1076881 e!1615257)))

(declare-fun call!163347 () Bool)

(assert (=> b!2557140 (= res!1076881 call!163347)))

(declare-fun b!2557141 () Bool)

(declare-fun e!1615261 () Bool)

(assert (=> b!2557141 (= e!1615261 (= (head!5818 Nil!29576) (c!410113 (derivative!306 lt!904156 (_1!17334 lt!904154)))))))

(declare-fun b!2557142 () Bool)

(declare-fun e!1615259 () Bool)

(assert (=> b!2557142 (= e!1615259 (matchR!3556 (derivativeStep!2180 (derivative!306 lt!904156 (_1!17334 lt!904154)) (head!5818 Nil!29576)) (tail!4093 Nil!29576)))))

(declare-fun b!2557143 () Bool)

(declare-fun res!1076888 () Bool)

(assert (=> b!2557143 (=> (not res!1076888) (not e!1615261))))

(assert (=> b!2557143 (= res!1076888 (not call!163347))))

(declare-fun b!2557144 () Bool)

(assert (=> b!2557144 (= e!1615257 (not (= (head!5818 Nil!29576) (c!410113 (derivative!306 lt!904156 (_1!17334 lt!904154))))))))

(declare-fun b!2557145 () Bool)

(declare-fun res!1076885 () Bool)

(assert (=> b!2557145 (=> res!1076885 e!1615257)))

(assert (=> b!2557145 (= res!1076885 (not (isEmpty!17030 (tail!4093 Nil!29576))))))

(declare-fun b!2557146 () Bool)

(declare-fun e!1615260 () Bool)

(declare-fun lt!904280 () Bool)

(assert (=> b!2557146 (= e!1615260 (= lt!904280 call!163347))))

(declare-fun b!2557147 () Bool)

(assert (=> b!2557147 (= e!1615259 (nullable!2528 (derivative!306 lt!904156 (_1!17334 lt!904154))))))

(declare-fun b!2557148 () Bool)

(declare-fun res!1076883 () Bool)

(assert (=> b!2557148 (=> res!1076883 e!1615258)))

(assert (=> b!2557148 (= res!1076883 e!1615261)))

(declare-fun res!1076886 () Bool)

(assert (=> b!2557148 (=> (not res!1076886) (not e!1615261))))

(assert (=> b!2557148 (= res!1076886 lt!904280)))

(declare-fun bm!163342 () Bool)

(assert (=> bm!163342 (= call!163347 (isEmpty!17030 Nil!29576))))

(declare-fun b!2557149 () Bool)

(declare-fun res!1076884 () Bool)

(assert (=> b!2557149 (=> (not res!1076884) (not e!1615261))))

(assert (=> b!2557149 (= res!1076884 (isEmpty!17030 (tail!4093 Nil!29576)))))

(declare-fun b!2557150 () Bool)

(assert (=> b!2557150 (= e!1615258 e!1615256)))

(declare-fun res!1076887 () Bool)

(assert (=> b!2557150 (=> (not res!1076887) (not e!1615256))))

(assert (=> b!2557150 (= res!1076887 (not lt!904280))))

(declare-fun d!724569 () Bool)

(assert (=> d!724569 e!1615260))

(declare-fun c!410457 () Bool)

(assert (=> d!724569 (= c!410457 ((_ is EmptyExpr!7611) (derivative!306 lt!904156 (_1!17334 lt!904154))))))

(assert (=> d!724569 (= lt!904280 e!1615259)))

(declare-fun c!410459 () Bool)

(assert (=> d!724569 (= c!410459 (isEmpty!17030 Nil!29576))))

(assert (=> d!724569 (validRegex!3237 (derivative!306 lt!904156 (_1!17334 lt!904154)))))

(assert (=> d!724569 (= (matchR!3556 (derivative!306 lt!904156 (_1!17334 lt!904154)) Nil!29576) lt!904280)))

(declare-fun b!2557151 () Bool)

(assert (=> b!2557151 (= e!1615255 (not lt!904280))))

(declare-fun b!2557152 () Bool)

(assert (=> b!2557152 (= e!1615260 e!1615255)))

(declare-fun c!410458 () Bool)

(assert (=> b!2557152 (= c!410458 ((_ is EmptyLang!7611) (derivative!306 lt!904156 (_1!17334 lt!904154))))))

(assert (= (and d!724569 c!410459) b!2557147))

(assert (= (and d!724569 (not c!410459)) b!2557142))

(assert (= (and d!724569 c!410457) b!2557146))

(assert (= (and d!724569 (not c!410457)) b!2557152))

(assert (= (and b!2557152 c!410458) b!2557151))

(assert (= (and b!2557152 (not c!410458)) b!2557139))

(assert (= (and b!2557139 (not res!1076882)) b!2557148))

(assert (= (and b!2557148 res!1076886) b!2557143))

(assert (= (and b!2557143 res!1076888) b!2557149))

(assert (= (and b!2557149 res!1076884) b!2557141))

(assert (= (and b!2557148 (not res!1076883)) b!2557150))

(assert (= (and b!2557150 res!1076887) b!2557140))

(assert (= (and b!2557140 (not res!1076881)) b!2557145))

(assert (= (and b!2557145 (not res!1076885)) b!2557144))

(assert (= (or b!2557146 b!2557140 b!2557143) bm!163342))

(assert (=> b!2557142 m!2897597))

(assert (=> b!2557142 m!2897539))

(assert (=> b!2557142 m!2897597))

(declare-fun m!2898405 () Bool)

(assert (=> b!2557142 m!2898405))

(assert (=> b!2557142 m!2897601))

(assert (=> b!2557142 m!2898405))

(assert (=> b!2557142 m!2897601))

(declare-fun m!2898407 () Bool)

(assert (=> b!2557142 m!2898407))

(assert (=> b!2557141 m!2897597))

(assert (=> bm!163342 m!2897605))

(assert (=> d!724569 m!2897605))

(assert (=> d!724569 m!2897539))

(declare-fun m!2898415 () Bool)

(assert (=> d!724569 m!2898415))

(assert (=> b!2557149 m!2897601))

(assert (=> b!2557149 m!2897601))

(assert (=> b!2557149 m!2897609))

(assert (=> b!2557145 m!2897601))

(assert (=> b!2557145 m!2897601))

(assert (=> b!2557145 m!2897609))

(assert (=> b!2557147 m!2897539))

(declare-fun m!2898417 () Bool)

(assert (=> b!2557147 m!2898417))

(assert (=> b!2557144 m!2897597))

(assert (=> d!724281 d!724569))

(assert (=> d!724281 d!724277))

(assert (=> d!724281 d!724543))

(assert (=> d!724281 d!724341))

(declare-fun d!724575 () Bool)

(assert (=> d!724575 (= (matchR!3556 lt!904156 (_1!17334 lt!904154)) (matchR!3556 (derivative!306 lt!904156 (_1!17334 lt!904154)) Nil!29576))))

(assert (=> d!724575 true))

(declare-fun _$108!360 () Unit!43407)

(assert (=> d!724575 (= (choose!15089 lt!904156 (_1!17334 lt!904154)) _$108!360)))

(declare-fun bs!469741 () Bool)

(assert (= bs!469741 d!724575))

(assert (=> bs!469741 m!2897565))

(assert (=> bs!469741 m!2897539))

(assert (=> bs!469741 m!2897539))

(assert (=> bs!469741 m!2897627))

(assert (=> d!724281 d!724575))

(declare-fun d!724589 () Bool)

(assert (=> d!724589 (= (nullable!2528 lt!904149) (nullableFct!753 lt!904149))))

(declare-fun bs!469742 () Bool)

(assert (= bs!469742 d!724589))

(declare-fun m!2898445 () Bool)

(assert (=> bs!469742 m!2898445))

(assert (=> b!2556421 d!724589))

(declare-fun b!2557200 () Bool)

(declare-fun e!1615299 () Regex!7611)

(declare-fun e!1615300 () Regex!7611)

(assert (=> b!2557200 (= e!1615299 e!1615300)))

(declare-fun c!410472 () Bool)

(assert (=> b!2557200 (= c!410472 ((_ is ElementMatch!7611) (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))))))

(declare-fun b!2557201 () Bool)

(declare-fun c!410475 () Bool)

(assert (=> b!2557201 (= c!410475 (nullable!2528 (regOne!15734 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))))

(declare-fun e!1615298 () Regex!7611)

(declare-fun e!1615302 () Regex!7611)

(assert (=> b!2557201 (= e!1615298 e!1615302)))

(declare-fun call!163363 () Regex!7611)

(declare-fun b!2557202 () Bool)

(assert (=> b!2557202 (= e!1615302 (Union!7611 (Concat!12307 call!163363 (regTwo!15734 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))) EmptyLang!7611))))

(declare-fun b!2557203 () Bool)

(declare-fun e!1615301 () Regex!7611)

(declare-fun call!163364 () Regex!7611)

(declare-fun call!163366 () Regex!7611)

(assert (=> b!2557203 (= e!1615301 (Union!7611 call!163364 call!163366))))

(declare-fun bm!163358 () Bool)

(declare-fun c!410474 () Bool)

(assert (=> bm!163358 (= call!163364 (derivativeStep!2180 (ite c!410474 (regOne!15735 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))) (regTwo!15734 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))) c!14016))))

(declare-fun bm!163359 () Bool)

(declare-fun call!163365 () Regex!7611)

(assert (=> bm!163359 (= call!163363 call!163365)))

(declare-fun bm!163360 () Bool)

(assert (=> bm!163360 (= call!163365 call!163366)))

(declare-fun bm!163361 () Bool)

(declare-fun c!410473 () Bool)

(assert (=> bm!163361 (= call!163366 (derivativeStep!2180 (ite c!410474 (regTwo!15735 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))) (ite c!410473 (reg!7940 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))) (regOne!15734 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))))) c!14016))))

(declare-fun b!2557204 () Bool)

(assert (=> b!2557204 (= e!1615301 e!1615298)))

(assert (=> b!2557204 (= c!410473 ((_ is Star!7611) (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))))))

(declare-fun b!2557205 () Bool)

(assert (=> b!2557205 (= e!1615300 (ite (= c!14016 (c!410113 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557206 () Bool)

(assert (=> b!2557206 (= e!1615298 (Concat!12307 call!163365 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))))))

(declare-fun b!2557207 () Bool)

(assert (=> b!2557207 (= e!1615299 EmptyLang!7611)))

(declare-fun b!2557208 () Bool)

(assert (=> b!2557208 (= e!1615302 (Union!7611 (Concat!12307 call!163363 (regTwo!15734 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))) call!163364))))

(declare-fun b!2557209 () Bool)

(assert (=> b!2557209 (= c!410474 ((_ is Union!7611) (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))))))

(assert (=> b!2557209 (= e!1615300 e!1615301)))

(declare-fun d!724591 () Bool)

(declare-fun lt!904282 () Regex!7611)

(assert (=> d!724591 (validRegex!3237 lt!904282)))

(assert (=> d!724591 (= lt!904282 e!1615299)))

(declare-fun c!410471 () Bool)

(assert (=> d!724591 (= c!410471 (or ((_ is EmptyExpr!7611) (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))) ((_ is EmptyLang!7611) (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))))

(assert (=> d!724591 (validRegex!3237 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))

(assert (=> d!724591 (= (derivativeStep!2180 (ite c!410250 (regTwo!15735 (regOne!15734 r!27340)) (ite c!410249 (reg!7940 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))) c!14016) lt!904282)))

(assert (= (and d!724591 c!410471) b!2557207))

(assert (= (and d!724591 (not c!410471)) b!2557200))

(assert (= (and b!2557200 c!410472) b!2557205))

(assert (= (and b!2557200 (not c!410472)) b!2557209))

(assert (= (and b!2557209 c!410474) b!2557203))

(assert (= (and b!2557209 (not c!410474)) b!2557204))

(assert (= (and b!2557204 c!410473) b!2557206))

(assert (= (and b!2557204 (not c!410473)) b!2557201))

(assert (= (and b!2557201 c!410475) b!2557208))

(assert (= (and b!2557201 (not c!410475)) b!2557202))

(assert (= (or b!2557208 b!2557202) bm!163359))

(assert (= (or b!2557206 bm!163359) bm!163360))

(assert (= (or b!2557203 bm!163360) bm!163361))

(assert (= (or b!2557203 b!2557208) bm!163358))

(declare-fun m!2898461 () Bool)

(assert (=> b!2557201 m!2898461))

(declare-fun m!2898463 () Bool)

(assert (=> bm!163358 m!2898463))

(declare-fun m!2898469 () Bool)

(assert (=> bm!163361 m!2898469))

(declare-fun m!2898471 () Bool)

(assert (=> d!724591 m!2898471))

(declare-fun m!2898473 () Bool)

(assert (=> d!724591 m!2898473))

(assert (=> bm!163203 d!724591))

(declare-fun b!2557236 () Bool)

(declare-fun e!1615322 () List!29676)

(assert (=> b!2557236 (= e!1615322 (_2!17334 lt!904154))))

(declare-fun b!2557239 () Bool)

(declare-fun e!1615321 () Bool)

(declare-fun lt!904284 () List!29676)

(assert (=> b!2557239 (= e!1615321 (or (not (= (_2!17334 lt!904154) Nil!29576)) (= lt!904284 (t!211375 (_1!17334 lt!904154)))))))

(declare-fun d!724599 () Bool)

(assert (=> d!724599 e!1615321))

(declare-fun res!1076924 () Bool)

(assert (=> d!724599 (=> (not res!1076924) (not e!1615321))))

(assert (=> d!724599 (= res!1076924 (= (content!4074 lt!904284) ((_ map or) (content!4074 (t!211375 (_1!17334 lt!904154))) (content!4074 (_2!17334 lt!904154)))))))

(assert (=> d!724599 (= lt!904284 e!1615322)))

(declare-fun c!410484 () Bool)

(assert (=> d!724599 (= c!410484 ((_ is Nil!29576) (t!211375 (_1!17334 lt!904154))))))

(assert (=> d!724599 (= (++!7268 (t!211375 (_1!17334 lt!904154)) (_2!17334 lt!904154)) lt!904284)))

(declare-fun b!2557237 () Bool)

(assert (=> b!2557237 (= e!1615322 (Cons!29576 (h!34996 (t!211375 (_1!17334 lt!904154))) (++!7268 (t!211375 (t!211375 (_1!17334 lt!904154))) (_2!17334 lt!904154))))))

(declare-fun b!2557238 () Bool)

(declare-fun res!1076925 () Bool)

(assert (=> b!2557238 (=> (not res!1076925) (not e!1615321))))

(assert (=> b!2557238 (= res!1076925 (= (size!22954 lt!904284) (+ (size!22954 (t!211375 (_1!17334 lt!904154))) (size!22954 (_2!17334 lt!904154)))))))

(assert (= (and d!724599 c!410484) b!2557236))

(assert (= (and d!724599 (not c!410484)) b!2557237))

(assert (= (and d!724599 res!1076924) b!2557238))

(assert (= (and b!2557238 res!1076925) b!2557239))

(declare-fun m!2898481 () Bool)

(assert (=> d!724599 m!2898481))

(declare-fun m!2898483 () Bool)

(assert (=> d!724599 m!2898483))

(assert (=> d!724599 m!2897977))

(declare-fun m!2898485 () Bool)

(assert (=> b!2557237 m!2898485))

(declare-fun m!2898487 () Bool)

(assert (=> b!2557238 m!2898487))

(declare-fun m!2898489 () Bool)

(assert (=> b!2557238 m!2898489))

(assert (=> b!2557238 m!2897985))

(assert (=> b!2556608 d!724599))

(declare-fun d!724605 () Bool)

(assert (not d!724605))

(assert (=> b!2556338 d!724605))

(assert (=> b!2556338 d!724495))

(assert (=> b!2556401 d!724547))

(declare-fun b!2557319 () Bool)

(declare-fun e!1615374 () Bool)

(declare-fun e!1615375 () Bool)

(assert (=> b!2557319 (= e!1615374 e!1615375)))

(declare-fun res!1076954 () Bool)

(assert (=> b!2557319 (=> (not res!1076954) (not e!1615375))))

(assert (=> b!2557319 (= res!1076954 (and (not ((_ is EmptyLang!7611) (regOne!15734 r!27340))) (not ((_ is ElementMatch!7611) (regOne!15734 r!27340)))))))

(declare-fun bm!163390 () Bool)

(declare-fun call!163396 () Bool)

(declare-fun c!410511 () Bool)

(assert (=> bm!163390 (= call!163396 (nullable!2528 (ite c!410511 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))

(declare-fun b!2557320 () Bool)

(declare-fun e!1615373 () Bool)

(assert (=> b!2557320 (= e!1615373 call!163396)))

(declare-fun d!724609 () Bool)

(declare-fun res!1076957 () Bool)

(assert (=> d!724609 (=> res!1076957 e!1615374)))

(assert (=> d!724609 (= res!1076957 ((_ is EmptyExpr!7611) (regOne!15734 r!27340)))))

(assert (=> d!724609 (= (nullableFct!753 (regOne!15734 r!27340)) e!1615374)))

(declare-fun b!2557321 () Bool)

(declare-fun e!1615370 () Bool)

(declare-fun call!163395 () Bool)

(assert (=> b!2557321 (= e!1615370 call!163395)))

(declare-fun b!2557322 () Bool)

(declare-fun e!1615371 () Bool)

(declare-fun e!1615372 () Bool)

(assert (=> b!2557322 (= e!1615371 e!1615372)))

(assert (=> b!2557322 (= c!410511 ((_ is Union!7611) (regOne!15734 r!27340)))))

(declare-fun b!2557323 () Bool)

(assert (=> b!2557323 (= e!1615372 e!1615370)))

(declare-fun res!1076953 () Bool)

(assert (=> b!2557323 (= res!1076953 call!163396)))

(assert (=> b!2557323 (=> (not res!1076953) (not e!1615370))))

(declare-fun b!2557324 () Bool)

(assert (=> b!2557324 (= e!1615372 e!1615373)))

(declare-fun res!1076955 () Bool)

(assert (=> b!2557324 (= res!1076955 call!163395)))

(assert (=> b!2557324 (=> res!1076955 e!1615373)))

(declare-fun bm!163391 () Bool)

(assert (=> bm!163391 (= call!163395 (nullable!2528 (ite c!410511 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))))))

(declare-fun b!2557325 () Bool)

(assert (=> b!2557325 (= e!1615375 e!1615371)))

(declare-fun res!1076956 () Bool)

(assert (=> b!2557325 (=> res!1076956 e!1615371)))

(assert (=> b!2557325 (= res!1076956 ((_ is Star!7611) (regOne!15734 r!27340)))))

(assert (= (and d!724609 (not res!1076957)) b!2557319))

(assert (= (and b!2557319 res!1076954) b!2557325))

(assert (= (and b!2557325 (not res!1076956)) b!2557322))

(assert (= (and b!2557322 c!410511) b!2557324))

(assert (= (and b!2557322 (not c!410511)) b!2557323))

(assert (= (and b!2557324 (not res!1076955)) b!2557320))

(assert (= (and b!2557323 res!1076953) b!2557321))

(assert (= (or b!2557320 b!2557323) bm!163390))

(assert (= (or b!2557324 b!2557321) bm!163391))

(declare-fun m!2898563 () Bool)

(assert (=> bm!163390 m!2898563))

(declare-fun m!2898565 () Bool)

(assert (=> bm!163391 m!2898565))

(assert (=> d!724381 d!724609))

(declare-fun b!2557326 () Bool)

(declare-fun e!1615380 () Bool)

(declare-fun e!1615381 () Bool)

(assert (=> b!2557326 (= e!1615380 e!1615381)))

(declare-fun res!1076959 () Bool)

(assert (=> b!2557326 (=> (not res!1076959) (not e!1615381))))

(assert (=> b!2557326 (= res!1076959 (and (not ((_ is EmptyLang!7611) (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7611) (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)))))))

(declare-fun bm!163392 () Bool)

(declare-fun call!163398 () Bool)

(declare-fun c!410512 () Bool)

(assert (=> bm!163392 (= call!163398 (nullable!2528 (ite c!410512 (regTwo!15735 (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)) (regOne!15734 (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2557327 () Bool)

(declare-fun e!1615379 () Bool)

(assert (=> b!2557327 (= e!1615379 call!163398)))

(declare-fun d!724629 () Bool)

(declare-fun res!1076962 () Bool)

(assert (=> d!724629 (=> res!1076962 e!1615380)))

(assert (=> d!724629 (= res!1076962 ((_ is EmptyExpr!7611) (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)))))

(assert (=> d!724629 (= (nullableFct!753 (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)) e!1615380)))

(declare-fun b!2557328 () Bool)

(declare-fun e!1615376 () Bool)

(declare-fun call!163397 () Bool)

(assert (=> b!2557328 (= e!1615376 call!163397)))

(declare-fun b!2557329 () Bool)

(declare-fun e!1615377 () Bool)

(declare-fun e!1615378 () Bool)

(assert (=> b!2557329 (= e!1615377 e!1615378)))

(assert (=> b!2557329 (= c!410512 ((_ is Union!7611) (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)))))

(declare-fun b!2557330 () Bool)

(assert (=> b!2557330 (= e!1615378 e!1615376)))

(declare-fun res!1076958 () Bool)

(assert (=> b!2557330 (= res!1076958 call!163398)))

(assert (=> b!2557330 (=> (not res!1076958) (not e!1615376))))

(declare-fun b!2557331 () Bool)

(assert (=> b!2557331 (= e!1615378 e!1615379)))

(declare-fun res!1076960 () Bool)

(assert (=> b!2557331 (= res!1076960 call!163397)))

(assert (=> b!2557331 (=> res!1076960 e!1615379)))

(declare-fun bm!163393 () Bool)

(assert (=> bm!163393 (= call!163397 (nullable!2528 (ite c!410512 (regOne!15735 (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)) (regTwo!15734 (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2557332 () Bool)

(assert (=> b!2557332 (= e!1615381 e!1615377)))

(declare-fun res!1076961 () Bool)

(assert (=> b!2557332 (=> res!1076961 e!1615377)))

(assert (=> b!2557332 (= res!1076961 ((_ is Star!7611) (derivative!306 (derivativeStep!2180 r!27340 c!14016) tl!4068)))))

(assert (= (and d!724629 (not res!1076962)) b!2557326))

(assert (= (and b!2557326 res!1076959) b!2557332))

(assert (= (and b!2557332 (not res!1076961)) b!2557329))

(assert (= (and b!2557329 c!410512) b!2557331))

(assert (= (and b!2557329 (not c!410512)) b!2557330))

(assert (= (and b!2557331 (not res!1076960)) b!2557327))

(assert (= (and b!2557330 res!1076958) b!2557328))

(assert (= (or b!2557327 b!2557330) bm!163392))

(assert (= (or b!2557331 b!2557328) bm!163393))

(declare-fun m!2898571 () Bool)

(assert (=> bm!163392 m!2898571))

(declare-fun m!2898573 () Bool)

(assert (=> bm!163393 m!2898573))

(assert (=> d!724293 d!724629))

(declare-fun b!2557342 () Bool)

(declare-fun e!1615388 () Regex!7611)

(declare-fun e!1615389 () Regex!7611)

(assert (=> b!2557342 (= e!1615388 e!1615389)))

(declare-fun c!410516 () Bool)

(assert (=> b!2557342 (= c!410516 ((_ is ElementMatch!7611) (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))))))

(declare-fun b!2557343 () Bool)

(declare-fun c!410519 () Bool)

(assert (=> b!2557343 (= c!410519 (nullable!2528 (regOne!15734 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))))))))

(declare-fun e!1615387 () Regex!7611)

(declare-fun e!1615391 () Regex!7611)

(assert (=> b!2557343 (= e!1615387 e!1615391)))

(declare-fun call!163399 () Regex!7611)

(declare-fun b!2557344 () Bool)

(assert (=> b!2557344 (= e!1615391 (Union!7611 (Concat!12307 call!163399 (regTwo!15734 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))))) EmptyLang!7611))))

(declare-fun b!2557345 () Bool)

(declare-fun e!1615390 () Regex!7611)

(declare-fun call!163400 () Regex!7611)

(declare-fun call!163402 () Regex!7611)

(assert (=> b!2557345 (= e!1615390 (Union!7611 call!163400 call!163402))))

(declare-fun bm!163394 () Bool)

(declare-fun c!410518 () Bool)

(assert (=> bm!163394 (= call!163400 (derivativeStep!2180 (ite c!410518 (regOne!15735 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))) (regTwo!15734 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))))) c!14016))))

(declare-fun bm!163395 () Bool)

(declare-fun call!163401 () Regex!7611)

(assert (=> bm!163395 (= call!163399 call!163401)))

(declare-fun bm!163396 () Bool)

(assert (=> bm!163396 (= call!163401 call!163402)))

(declare-fun c!410517 () Bool)

(declare-fun bm!163397 () Bool)

(assert (=> bm!163397 (= call!163402 (derivativeStep!2180 (ite c!410518 (regTwo!15735 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))) (ite c!410517 (reg!7940 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))) (regOne!15734 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))))) c!14016))))

(declare-fun b!2557346 () Bool)

(assert (=> b!2557346 (= e!1615390 e!1615387)))

(assert (=> b!2557346 (= c!410517 ((_ is Star!7611) (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))))))

(declare-fun b!2557347 () Bool)

(assert (=> b!2557347 (= e!1615389 (ite (= c!14016 (c!410113 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557348 () Bool)

(assert (=> b!2557348 (= e!1615387 (Concat!12307 call!163401 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))))))

(declare-fun b!2557349 () Bool)

(assert (=> b!2557349 (= e!1615388 EmptyLang!7611)))

(declare-fun b!2557350 () Bool)

(assert (=> b!2557350 (= e!1615391 (Union!7611 (Concat!12307 call!163399 (regTwo!15734 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))))) call!163400))))

(declare-fun b!2557351 () Bool)

(assert (=> b!2557351 (= c!410518 ((_ is Union!7611) (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))))))

(assert (=> b!2557351 (= e!1615389 e!1615390)))

(declare-fun d!724633 () Bool)

(declare-fun lt!904299 () Regex!7611)

(assert (=> d!724633 (validRegex!3237 lt!904299)))

(assert (=> d!724633 (= lt!904299 e!1615388)))

(declare-fun c!410515 () Bool)

(assert (=> d!724633 (= c!410515 (or ((_ is EmptyExpr!7611) (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340)))) ((_ is EmptyLang!7611) (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))))))))

(assert (=> d!724633 (validRegex!3237 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))))))

(assert (=> d!724633 (= (derivativeStep!2180 (ite c!410257 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))) c!14016) lt!904299)))

(assert (= (and d!724633 c!410515) b!2557349))

(assert (= (and d!724633 (not c!410515)) b!2557342))

(assert (= (and b!2557342 c!410516) b!2557347))

(assert (= (and b!2557342 (not c!410516)) b!2557351))

(assert (= (and b!2557351 c!410518) b!2557345))

(assert (= (and b!2557351 (not c!410518)) b!2557346))

(assert (= (and b!2557346 c!410517) b!2557348))

(assert (= (and b!2557346 (not c!410517)) b!2557343))

(assert (= (and b!2557343 c!410519) b!2557350))

(assert (= (and b!2557343 (not c!410519)) b!2557344))

(assert (= (or b!2557350 b!2557344) bm!163395))

(assert (= (or b!2557348 bm!163395) bm!163396))

(assert (= (or b!2557345 bm!163396) bm!163397))

(assert (= (or b!2557345 b!2557350) bm!163394))

(declare-fun m!2898597 () Bool)

(assert (=> b!2557343 m!2898597))

(declare-fun m!2898599 () Bool)

(assert (=> bm!163394 m!2898599))

(declare-fun m!2898601 () Bool)

(assert (=> bm!163397 m!2898601))

(declare-fun m!2898603 () Bool)

(assert (=> d!724633 m!2898603))

(declare-fun m!2898605 () Bool)

(assert (=> d!724633 m!2898605))

(assert (=> bm!163204 d!724633))

(assert (=> b!2556192 d!724479))

(assert (=> b!2556192 d!724481))

(assert (=> b!2556591 d!724537))

(declare-fun call!163403 () Bool)

(declare-fun c!410523 () Bool)

(declare-fun c!410521 () Bool)

(declare-fun bm!163398 () Bool)

(assert (=> bm!163398 (= call!163403 (validRegex!3237 (ite c!410523 (reg!7940 (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))) (ite c!410521 (regOne!15735 (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))) (regTwo!15734 (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340)))))))))

(declare-fun d!724637 () Bool)

(declare-fun res!1076971 () Bool)

(declare-fun e!1615399 () Bool)

(assert (=> d!724637 (=> res!1076971 e!1615399)))

(assert (=> d!724637 (= res!1076971 ((_ is ElementMatch!7611) (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))))))

(assert (=> d!724637 (= (validRegex!3237 (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))) e!1615399)))

(declare-fun b!2557356 () Bool)

(declare-fun e!1615393 () Bool)

(assert (=> b!2557356 (= e!1615399 e!1615393)))

(assert (=> b!2557356 (= c!410523 ((_ is Star!7611) (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))))))

(declare-fun b!2557357 () Bool)

(declare-fun e!1615394 () Bool)

(declare-fun call!163405 () Bool)

(assert (=> b!2557357 (= e!1615394 call!163405)))

(declare-fun b!2557358 () Bool)

(declare-fun e!1615392 () Bool)

(declare-fun call!163404 () Bool)

(assert (=> b!2557358 (= e!1615392 call!163404)))

(declare-fun b!2557359 () Bool)

(declare-fun e!1615395 () Bool)

(assert (=> b!2557359 (= e!1615395 e!1615392)))

(declare-fun res!1076968 () Bool)

(assert (=> b!2557359 (=> (not res!1076968) (not e!1615392))))

(assert (=> b!2557359 (= res!1076968 call!163405)))

(declare-fun b!2557360 () Bool)

(declare-fun res!1076969 () Bool)

(assert (=> b!2557360 (=> res!1076969 e!1615395)))

(assert (=> b!2557360 (= res!1076969 (not ((_ is Concat!12307) (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340)))))))

(declare-fun e!1615400 () Bool)

(assert (=> b!2557360 (= e!1615400 e!1615395)))

(declare-fun bm!163399 () Bool)

(assert (=> bm!163399 (= call!163405 (validRegex!3237 (ite c!410521 (regTwo!15735 (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))) (regOne!15734 (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))))))))

(declare-fun bm!163400 () Bool)

(assert (=> bm!163400 (= call!163404 call!163403)))

(declare-fun b!2557361 () Bool)

(declare-fun e!1615397 () Bool)

(assert (=> b!2557361 (= e!1615397 call!163403)))

(declare-fun b!2557362 () Bool)

(declare-fun res!1076972 () Bool)

(assert (=> b!2557362 (=> (not res!1076972) (not e!1615394))))

(assert (=> b!2557362 (= res!1076972 call!163404)))

(assert (=> b!2557362 (= e!1615400 e!1615394)))

(declare-fun b!2557363 () Bool)

(assert (=> b!2557363 (= e!1615393 e!1615400)))

(assert (=> b!2557363 (= c!410521 ((_ is Union!7611) (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))))))

(declare-fun b!2557364 () Bool)

(assert (=> b!2557364 (= e!1615393 e!1615397)))

(declare-fun res!1076970 () Bool)

(assert (=> b!2557364 (= res!1076970 (not (nullable!2528 (reg!7940 (ite c!410303 (regTwo!15735 r!27340) (regOne!15734 r!27340))))))))

(assert (=> b!2557364 (=> (not res!1076970) (not e!1615397))))

(assert (= (and d!724637 (not res!1076971)) b!2557356))

(assert (= (and b!2557356 c!410523) b!2557364))

(assert (= (and b!2557356 (not c!410523)) b!2557363))

(assert (= (and b!2557364 res!1076970) b!2557361))

(assert (= (and b!2557363 c!410521) b!2557362))

(assert (= (and b!2557363 (not c!410521)) b!2557360))

(assert (= (and b!2557362 res!1076972) b!2557357))

(assert (= (and b!2557360 (not res!1076969)) b!2557359))

(assert (= (and b!2557359 res!1076968) b!2557358))

(assert (= (or b!2557362 b!2557358) bm!163400))

(assert (= (or b!2557357 b!2557359) bm!163399))

(assert (= (or b!2557361 bm!163400) bm!163398))

(declare-fun m!2898609 () Bool)

(assert (=> bm!163398 m!2898609))

(declare-fun m!2898611 () Bool)

(assert (=> bm!163399 m!2898611))

(declare-fun m!2898613 () Bool)

(assert (=> b!2557364 m!2898613))

(assert (=> bm!163224 d!724637))

(declare-fun d!724641 () Bool)

(assert (=> d!724641 (= (nullable!2528 lt!904156) (nullableFct!753 lt!904156))))

(declare-fun bs!469744 () Bool)

(assert (= bs!469744 d!724641))

(declare-fun m!2898615 () Bool)

(assert (=> bs!469744 m!2898615))

(assert (=> b!2556439 d!724641))

(assert (=> b!2556628 d!724381))

(assert (=> b!2556334 d!724493))

(declare-fun c!410527 () Bool)

(declare-fun c!410528 () Bool)

(declare-fun bm!163401 () Bool)

(declare-fun call!163406 () Bool)

(assert (=> bm!163401 (= call!163406 (validRegex!3237 (ite c!410528 (reg!7940 (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))) (ite c!410527 (regOne!15735 (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))) (regTwo!15734 (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))))))))

(declare-fun d!724645 () Bool)

(declare-fun res!1076976 () Bool)

(declare-fun e!1615409 () Bool)

(assert (=> d!724645 (=> res!1076976 e!1615409)))

(assert (=> d!724645 (= res!1076976 ((_ is ElementMatch!7611) (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))

(assert (=> d!724645 (= (validRegex!3237 (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))) e!1615409)))

(declare-fun b!2557371 () Bool)

(declare-fun e!1615405 () Bool)

(assert (=> b!2557371 (= e!1615409 e!1615405)))

(assert (=> b!2557371 (= c!410528 ((_ is Star!7611) (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))

(declare-fun b!2557372 () Bool)

(declare-fun e!1615406 () Bool)

(declare-fun call!163408 () Bool)

(assert (=> b!2557372 (= e!1615406 call!163408)))

(declare-fun b!2557373 () Bool)

(declare-fun e!1615404 () Bool)

(declare-fun call!163407 () Bool)

(assert (=> b!2557373 (= e!1615404 call!163407)))

(declare-fun b!2557374 () Bool)

(declare-fun e!1615407 () Bool)

(assert (=> b!2557374 (= e!1615407 e!1615404)))

(declare-fun res!1076973 () Bool)

(assert (=> b!2557374 (=> (not res!1076973) (not e!1615404))))

(assert (=> b!2557374 (= res!1076973 call!163408)))

(declare-fun b!2557375 () Bool)

(declare-fun res!1076974 () Bool)

(assert (=> b!2557375 (=> res!1076974 e!1615407)))

(assert (=> b!2557375 (= res!1076974 (not ((_ is Concat!12307) (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340))))))))

(declare-fun e!1615410 () Bool)

(assert (=> b!2557375 (= e!1615410 e!1615407)))

(declare-fun bm!163402 () Bool)

(assert (=> bm!163402 (= call!163408 (validRegex!3237 (ite c!410527 (regTwo!15735 (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))) (regOne!15734 (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))))

(declare-fun bm!163403 () Bool)

(assert (=> bm!163403 (= call!163407 call!163406)))

(declare-fun b!2557376 () Bool)

(declare-fun e!1615408 () Bool)

(assert (=> b!2557376 (= e!1615408 call!163406)))

(declare-fun b!2557377 () Bool)

(declare-fun res!1076977 () Bool)

(assert (=> b!2557377 (=> (not res!1076977) (not e!1615406))))

(assert (=> b!2557377 (= res!1076977 call!163407)))

(assert (=> b!2557377 (= e!1615410 e!1615406)))

(declare-fun b!2557378 () Bool)

(assert (=> b!2557378 (= e!1615405 e!1615410)))

(assert (=> b!2557378 (= c!410527 ((_ is Union!7611) (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))

(declare-fun b!2557379 () Bool)

(assert (=> b!2557379 (= e!1615405 e!1615408)))

(declare-fun res!1076975 () Bool)

(assert (=> b!2557379 (= res!1076975 (not (nullable!2528 (reg!7940 (ite c!410118 (regTwo!15735 (regOne!15734 r!27340)) (regOne!15734 (regOne!15734 r!27340)))))))))

(assert (=> b!2557379 (=> (not res!1076975) (not e!1615408))))

(assert (= (and d!724645 (not res!1076976)) b!2557371))

(assert (= (and b!2557371 c!410528) b!2557379))

(assert (= (and b!2557371 (not c!410528)) b!2557378))

(assert (= (and b!2557379 res!1076975) b!2557376))

(assert (= (and b!2557378 c!410527) b!2557377))

(assert (= (and b!2557378 (not c!410527)) b!2557375))

(assert (= (and b!2557377 res!1076977) b!2557372))

(assert (= (and b!2557375 (not res!1076974)) b!2557374))

(assert (= (and b!2557374 res!1076973) b!2557373))

(assert (= (or b!2557377 b!2557373) bm!163403))

(assert (= (or b!2557372 b!2557374) bm!163402))

(assert (= (or b!2557376 bm!163403) bm!163401))

(declare-fun m!2898627 () Bool)

(assert (=> bm!163401 m!2898627))

(declare-fun m!2898631 () Bool)

(assert (=> bm!163402 m!2898631))

(declare-fun m!2898633 () Bool)

(assert (=> b!2557379 m!2898633))

(assert (=> bm!163126 d!724645))

(assert (=> b!2556326 d!724503))

(assert (=> b!2556326 d!724505))

(assert (=> d!724337 d!724483))

(declare-fun c!410540 () Bool)

(declare-fun bm!163411 () Bool)

(declare-fun call!163416 () Bool)

(declare-fun c!410539 () Bool)

(assert (=> bm!163411 (= call!163416 (validRegex!3237 (ite c!410540 (reg!7940 lt!904149) (ite c!410539 (regOne!15735 lt!904149) (regTwo!15734 lt!904149)))))))

(declare-fun d!724655 () Bool)

(declare-fun res!1076981 () Bool)

(declare-fun e!1615426 () Bool)

(assert (=> d!724655 (=> res!1076981 e!1615426)))

(assert (=> d!724655 (= res!1076981 ((_ is ElementMatch!7611) lt!904149))))

(assert (=> d!724655 (= (validRegex!3237 lt!904149) e!1615426)))

(declare-fun b!2557400 () Bool)

(declare-fun e!1615422 () Bool)

(assert (=> b!2557400 (= e!1615426 e!1615422)))

(assert (=> b!2557400 (= c!410540 ((_ is Star!7611) lt!904149))))

(declare-fun b!2557401 () Bool)

(declare-fun e!1615423 () Bool)

(declare-fun call!163418 () Bool)

(assert (=> b!2557401 (= e!1615423 call!163418)))

(declare-fun b!2557402 () Bool)

(declare-fun e!1615421 () Bool)

(declare-fun call!163417 () Bool)

(assert (=> b!2557402 (= e!1615421 call!163417)))

(declare-fun b!2557403 () Bool)

(declare-fun e!1615424 () Bool)

(assert (=> b!2557403 (= e!1615424 e!1615421)))

(declare-fun res!1076978 () Bool)

(assert (=> b!2557403 (=> (not res!1076978) (not e!1615421))))

(assert (=> b!2557403 (= res!1076978 call!163418)))

(declare-fun b!2557404 () Bool)

(declare-fun res!1076979 () Bool)

(assert (=> b!2557404 (=> res!1076979 e!1615424)))

(assert (=> b!2557404 (= res!1076979 (not ((_ is Concat!12307) lt!904149)))))

(declare-fun e!1615427 () Bool)

(assert (=> b!2557404 (= e!1615427 e!1615424)))

(declare-fun bm!163412 () Bool)

(assert (=> bm!163412 (= call!163418 (validRegex!3237 (ite c!410539 (regTwo!15735 lt!904149) (regOne!15734 lt!904149))))))

(declare-fun bm!163413 () Bool)

(assert (=> bm!163413 (= call!163417 call!163416)))

(declare-fun b!2557405 () Bool)

(declare-fun e!1615425 () Bool)

(assert (=> b!2557405 (= e!1615425 call!163416)))

(declare-fun b!2557406 () Bool)

(declare-fun res!1076982 () Bool)

(assert (=> b!2557406 (=> (not res!1076982) (not e!1615423))))

(assert (=> b!2557406 (= res!1076982 call!163417)))

(assert (=> b!2557406 (= e!1615427 e!1615423)))

(declare-fun b!2557407 () Bool)

(assert (=> b!2557407 (= e!1615422 e!1615427)))

(assert (=> b!2557407 (= c!410539 ((_ is Union!7611) lt!904149))))

(declare-fun b!2557408 () Bool)

(assert (=> b!2557408 (= e!1615422 e!1615425)))

(declare-fun res!1076980 () Bool)

(assert (=> b!2557408 (= res!1076980 (not (nullable!2528 (reg!7940 lt!904149))))))

(assert (=> b!2557408 (=> (not res!1076980) (not e!1615425))))

(assert (= (and d!724655 (not res!1076981)) b!2557400))

(assert (= (and b!2557400 c!410540) b!2557408))

(assert (= (and b!2557400 (not c!410540)) b!2557407))

(assert (= (and b!2557408 res!1076980) b!2557405))

(assert (= (and b!2557407 c!410539) b!2557406))

(assert (= (and b!2557407 (not c!410539)) b!2557404))

(assert (= (and b!2557406 res!1076982) b!2557401))

(assert (= (and b!2557404 (not res!1076979)) b!2557403))

(assert (= (and b!2557403 res!1076978) b!2557402))

(assert (= (or b!2557406 b!2557402) bm!163413))

(assert (= (or b!2557401 b!2557403) bm!163412))

(assert (= (or b!2557405 bm!163413) bm!163411))

(declare-fun m!2898641 () Bool)

(assert (=> bm!163411 m!2898641))

(declare-fun m!2898643 () Bool)

(assert (=> bm!163412 m!2898643))

(declare-fun m!2898645 () Bool)

(assert (=> b!2557408 m!2898645))

(assert (=> d!724337 d!724655))

(declare-fun b!2557419 () Bool)

(declare-fun res!1076984 () Bool)

(declare-fun e!1615436 () Bool)

(assert (=> b!2557419 (=> res!1076984 e!1615436)))

(assert (=> b!2557419 (= res!1076984 (not ((_ is ElementMatch!7611) (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154))))))))

(declare-fun e!1615433 () Bool)

(assert (=> b!2557419 (= e!1615433 e!1615436)))

(declare-fun b!2557420 () Bool)

(declare-fun e!1615434 () Bool)

(declare-fun e!1615435 () Bool)

(assert (=> b!2557420 (= e!1615434 e!1615435)))

(declare-fun res!1076983 () Bool)

(assert (=> b!2557420 (=> res!1076983 e!1615435)))

(declare-fun call!163423 () Bool)

(assert (=> b!2557420 (= res!1076983 call!163423)))

(declare-fun b!2557421 () Bool)

(declare-fun e!1615439 () Bool)

(assert (=> b!2557421 (= e!1615439 (= (head!5818 (tail!4093 (_2!17334 lt!904154))) (c!410113 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154))))))))

(declare-fun b!2557422 () Bool)

(declare-fun e!1615437 () Bool)

(assert (=> b!2557422 (= e!1615437 (matchR!3556 (derivativeStep!2180 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154))) (head!5818 (tail!4093 (_2!17334 lt!904154)))) (tail!4093 (tail!4093 (_2!17334 lt!904154)))))))

(declare-fun b!2557423 () Bool)

(declare-fun res!1076990 () Bool)

(assert (=> b!2557423 (=> (not res!1076990) (not e!1615439))))

(assert (=> b!2557423 (= res!1076990 (not call!163423))))

(declare-fun b!2557424 () Bool)

(assert (=> b!2557424 (= e!1615435 (not (= (head!5818 (tail!4093 (_2!17334 lt!904154))) (c!410113 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154)))))))))

(declare-fun b!2557425 () Bool)

(declare-fun res!1076987 () Bool)

(assert (=> b!2557425 (=> res!1076987 e!1615435)))

(assert (=> b!2557425 (= res!1076987 (not (isEmpty!17030 (tail!4093 (tail!4093 (_2!17334 lt!904154))))))))

(declare-fun b!2557426 () Bool)

(declare-fun e!1615438 () Bool)

(declare-fun lt!904308 () Bool)

(assert (=> b!2557426 (= e!1615438 (= lt!904308 call!163423))))

(declare-fun b!2557427 () Bool)

(assert (=> b!2557427 (= e!1615437 (nullable!2528 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154)))))))

(declare-fun b!2557428 () Bool)

(declare-fun res!1076985 () Bool)

(assert (=> b!2557428 (=> res!1076985 e!1615436)))

(assert (=> b!2557428 (= res!1076985 e!1615439)))

(declare-fun res!1076988 () Bool)

(assert (=> b!2557428 (=> (not res!1076988) (not e!1615439))))

(assert (=> b!2557428 (= res!1076988 lt!904308)))

(declare-fun bm!163418 () Bool)

(assert (=> bm!163418 (= call!163423 (isEmpty!17030 (tail!4093 (_2!17334 lt!904154))))))

(declare-fun b!2557429 () Bool)

(declare-fun res!1076986 () Bool)

(assert (=> b!2557429 (=> (not res!1076986) (not e!1615439))))

(assert (=> b!2557429 (= res!1076986 (isEmpty!17030 (tail!4093 (tail!4093 (_2!17334 lt!904154)))))))

(declare-fun b!2557430 () Bool)

(assert (=> b!2557430 (= e!1615436 e!1615434)))

(declare-fun res!1076989 () Bool)

(assert (=> b!2557430 (=> (not res!1076989) (not e!1615434))))

(assert (=> b!2557430 (= res!1076989 (not lt!904308))))

(declare-fun d!724661 () Bool)

(assert (=> d!724661 e!1615438))

(declare-fun c!410546 () Bool)

(assert (=> d!724661 (= c!410546 ((_ is EmptyExpr!7611) (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154)))))))

(assert (=> d!724661 (= lt!904308 e!1615437)))

(declare-fun c!410548 () Bool)

(assert (=> d!724661 (= c!410548 (isEmpty!17030 (tail!4093 (_2!17334 lt!904154))))))

(assert (=> d!724661 (validRegex!3237 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154))))))

(assert (=> d!724661 (= (matchR!3556 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154))) (tail!4093 (_2!17334 lt!904154))) lt!904308)))

(declare-fun b!2557431 () Bool)

(assert (=> b!2557431 (= e!1615433 (not lt!904308))))

(declare-fun b!2557432 () Bool)

(assert (=> b!2557432 (= e!1615438 e!1615433)))

(declare-fun c!410547 () Bool)

(assert (=> b!2557432 (= c!410547 ((_ is EmptyLang!7611) (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154)))))))

(assert (= (and d!724661 c!410548) b!2557427))

(assert (= (and d!724661 (not c!410548)) b!2557422))

(assert (= (and d!724661 c!410546) b!2557426))

(assert (= (and d!724661 (not c!410546)) b!2557432))

(assert (= (and b!2557432 c!410547) b!2557431))

(assert (= (and b!2557432 (not c!410547)) b!2557419))

(assert (= (and b!2557419 (not res!1076984)) b!2557428))

(assert (= (and b!2557428 res!1076988) b!2557423))

(assert (= (and b!2557423 res!1076990) b!2557429))

(assert (= (and b!2557429 res!1076986) b!2557421))

(assert (= (and b!2557428 (not res!1076985)) b!2557430))

(assert (= (and b!2557430 res!1076989) b!2557420))

(assert (= (and b!2557420 (not res!1076983)) b!2557425))

(assert (= (and b!2557425 (not res!1076987)) b!2557424))

(assert (= (or b!2557426 b!2557420 b!2557423) bm!163418))

(assert (=> b!2557422 m!2897665))

(declare-fun m!2898665 () Bool)

(assert (=> b!2557422 m!2898665))

(assert (=> b!2557422 m!2897663))

(assert (=> b!2557422 m!2898665))

(declare-fun m!2898667 () Bool)

(assert (=> b!2557422 m!2898667))

(assert (=> b!2557422 m!2897665))

(declare-fun m!2898669 () Bool)

(assert (=> b!2557422 m!2898669))

(assert (=> b!2557422 m!2898667))

(assert (=> b!2557422 m!2898669))

(declare-fun m!2898671 () Bool)

(assert (=> b!2557422 m!2898671))

(assert (=> b!2557421 m!2897665))

(assert (=> b!2557421 m!2898665))

(assert (=> bm!163418 m!2897665))

(assert (=> bm!163418 m!2897673))

(assert (=> d!724661 m!2897665))

(assert (=> d!724661 m!2897673))

(assert (=> d!724661 m!2897663))

(declare-fun m!2898673 () Bool)

(assert (=> d!724661 m!2898673))

(assert (=> b!2557429 m!2897665))

(assert (=> b!2557429 m!2898669))

(assert (=> b!2557429 m!2898669))

(declare-fun m!2898675 () Bool)

(assert (=> b!2557429 m!2898675))

(assert (=> b!2557425 m!2897665))

(assert (=> b!2557425 m!2898669))

(assert (=> b!2557425 m!2898669))

(assert (=> b!2557425 m!2898675))

(assert (=> b!2557427 m!2897663))

(declare-fun m!2898679 () Bool)

(assert (=> b!2557427 m!2898679))

(assert (=> b!2557424 m!2897665))

(assert (=> b!2557424 m!2898665))

(assert (=> b!2556185 d!724661))

(declare-fun b!2557456 () Bool)

(declare-fun e!1615456 () Regex!7611)

(declare-fun e!1615459 () Regex!7611)

(assert (=> b!2557456 (= e!1615456 e!1615459)))

(declare-fun c!410556 () Bool)

(assert (=> b!2557456 (= c!410556 ((_ is ElementMatch!7611) (regTwo!15734 r!27340)))))

(declare-fun b!2557457 () Bool)

(declare-fun c!410559 () Bool)

(assert (=> b!2557457 (= c!410559 (nullable!2528 (regOne!15734 (regTwo!15734 r!27340))))))

(declare-fun e!1615455 () Regex!7611)

(declare-fun e!1615462 () Regex!7611)

(assert (=> b!2557457 (= e!1615455 e!1615462)))

(declare-fun b!2557458 () Bool)

(declare-fun call!163428 () Regex!7611)

(assert (=> b!2557458 (= e!1615462 (Union!7611 (Concat!12307 call!163428 (regTwo!15734 (regTwo!15734 r!27340))) EmptyLang!7611))))

(declare-fun b!2557459 () Bool)

(declare-fun e!1615461 () Regex!7611)

(declare-fun call!163429 () Regex!7611)

(declare-fun call!163431 () Regex!7611)

(assert (=> b!2557459 (= e!1615461 (Union!7611 call!163429 call!163431))))

(declare-fun bm!163423 () Bool)

(declare-fun c!410558 () Bool)

(assert (=> bm!163423 (= call!163429 (derivativeStep!2180 (ite c!410558 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))) (head!5818 (_2!17334 lt!904154))))))

(declare-fun bm!163424 () Bool)

(declare-fun call!163430 () Regex!7611)

(assert (=> bm!163424 (= call!163428 call!163430)))

(declare-fun bm!163425 () Bool)

(assert (=> bm!163425 (= call!163430 call!163431)))

(declare-fun bm!163426 () Bool)

(declare-fun c!410557 () Bool)

(assert (=> bm!163426 (= call!163431 (derivativeStep!2180 (ite c!410558 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410557 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))) (head!5818 (_2!17334 lt!904154))))))

(declare-fun b!2557463 () Bool)

(assert (=> b!2557463 (= e!1615461 e!1615455)))

(assert (=> b!2557463 (= c!410557 ((_ is Star!7611) (regTwo!15734 r!27340)))))

(declare-fun b!2557465 () Bool)

(assert (=> b!2557465 (= e!1615459 (ite (= (head!5818 (_2!17334 lt!904154)) (c!410113 (regTwo!15734 r!27340))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557467 () Bool)

(assert (=> b!2557467 (= e!1615455 (Concat!12307 call!163430 (regTwo!15734 r!27340)))))

(declare-fun b!2557468 () Bool)

(assert (=> b!2557468 (= e!1615456 EmptyLang!7611)))

(declare-fun b!2557470 () Bool)

(assert (=> b!2557470 (= e!1615462 (Union!7611 (Concat!12307 call!163428 (regTwo!15734 (regTwo!15734 r!27340))) call!163429))))

(declare-fun b!2557472 () Bool)

(assert (=> b!2557472 (= c!410558 ((_ is Union!7611) (regTwo!15734 r!27340)))))

(assert (=> b!2557472 (= e!1615459 e!1615461)))

(declare-fun d!724670 () Bool)

(declare-fun lt!904310 () Regex!7611)

(assert (=> d!724670 (validRegex!3237 lt!904310)))

(assert (=> d!724670 (= lt!904310 e!1615456)))

(declare-fun c!410554 () Bool)

(assert (=> d!724670 (= c!410554 (or ((_ is EmptyExpr!7611) (regTwo!15734 r!27340)) ((_ is EmptyLang!7611) (regTwo!15734 r!27340))))))

(assert (=> d!724670 (validRegex!3237 (regTwo!15734 r!27340))))

(assert (=> d!724670 (= (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 lt!904154))) lt!904310)))

(assert (= (and d!724670 c!410554) b!2557468))

(assert (= (and d!724670 (not c!410554)) b!2557456))

(assert (= (and b!2557456 c!410556) b!2557465))

(assert (= (and b!2557456 (not c!410556)) b!2557472))

(assert (= (and b!2557472 c!410558) b!2557459))

(assert (= (and b!2557472 (not c!410558)) b!2557463))

(assert (= (and b!2557463 c!410557) b!2557467))

(assert (= (and b!2557463 (not c!410557)) b!2557457))

(assert (= (and b!2557457 c!410559) b!2557470))

(assert (= (and b!2557457 (not c!410559)) b!2557458))

(assert (= (or b!2557470 b!2557458) bm!163424))

(assert (= (or b!2557467 bm!163424) bm!163425))

(assert (= (or b!2557459 bm!163425) bm!163426))

(assert (= (or b!2557459 b!2557470) bm!163423))

(assert (=> b!2557457 m!2897823))

(assert (=> bm!163423 m!2897661))

(declare-fun m!2898693 () Bool)

(assert (=> bm!163423 m!2898693))

(assert (=> bm!163426 m!2897661))

(declare-fun m!2898697 () Bool)

(assert (=> bm!163426 m!2898697))

(declare-fun m!2898699 () Bool)

(assert (=> d!724670 m!2898699))

(assert (=> d!724670 m!2897671))

(assert (=> b!2556185 d!724670))

(assert (=> b!2556185 d!724499))

(assert (=> b!2556185 d!724481))

(assert (=> b!2556278 d!724381))

(declare-fun d!724675 () Bool)

(assert (=> d!724675 (= (isEmpty!17030 (Cons!29576 c!14016 (_1!17334 lt!904154))) ((_ is Nil!29576) (Cons!29576 c!14016 (_1!17334 lt!904154))))))

(assert (=> d!724377 d!724675))

(assert (=> d!724377 d!724267))

(declare-fun d!724679 () Bool)

(assert (=> d!724679 (= (isEmpty!17030 (_1!17334 lt!904154)) ((_ is Nil!29576) (_1!17334 lt!904154)))))

(assert (=> d!724341 d!724679))

(assert (=> d!724341 d!724543))

(declare-fun b!2557480 () Bool)

(declare-fun res!1077013 () Bool)

(declare-fun e!1615469 () Bool)

(assert (=> b!2557480 (=> res!1077013 e!1615469)))

(assert (=> b!2557480 (= res!1077013 (not ((_ is ElementMatch!7611) (derivativeStep!2180 lt!904152 (head!5818 tl!4068)))))))

(declare-fun e!1615466 () Bool)

(assert (=> b!2557480 (= e!1615466 e!1615469)))

(declare-fun b!2557481 () Bool)

(declare-fun e!1615467 () Bool)

(declare-fun e!1615468 () Bool)

(assert (=> b!2557481 (= e!1615467 e!1615468)))

(declare-fun res!1077012 () Bool)

(assert (=> b!2557481 (=> res!1077012 e!1615468)))

(declare-fun call!163433 () Bool)

(assert (=> b!2557481 (= res!1077012 call!163433)))

(declare-fun b!2557482 () Bool)

(declare-fun e!1615472 () Bool)

(assert (=> b!2557482 (= e!1615472 (= (head!5818 (tail!4093 tl!4068)) (c!410113 (derivativeStep!2180 lt!904152 (head!5818 tl!4068)))))))

(declare-fun b!2557483 () Bool)

(declare-fun e!1615470 () Bool)

(assert (=> b!2557483 (= e!1615470 (matchR!3556 (derivativeStep!2180 (derivativeStep!2180 lt!904152 (head!5818 tl!4068)) (head!5818 (tail!4093 tl!4068))) (tail!4093 (tail!4093 tl!4068))))))

(declare-fun b!2557484 () Bool)

(declare-fun res!1077019 () Bool)

(assert (=> b!2557484 (=> (not res!1077019) (not e!1615472))))

(assert (=> b!2557484 (= res!1077019 (not call!163433))))

(declare-fun b!2557485 () Bool)

(assert (=> b!2557485 (= e!1615468 (not (= (head!5818 (tail!4093 tl!4068)) (c!410113 (derivativeStep!2180 lt!904152 (head!5818 tl!4068))))))))

(declare-fun b!2557486 () Bool)

(declare-fun res!1077016 () Bool)

(assert (=> b!2557486 (=> res!1077016 e!1615468)))

(assert (=> b!2557486 (= res!1077016 (not (isEmpty!17030 (tail!4093 (tail!4093 tl!4068)))))))

(declare-fun b!2557487 () Bool)

(declare-fun e!1615471 () Bool)

(declare-fun lt!904312 () Bool)

(assert (=> b!2557487 (= e!1615471 (= lt!904312 call!163433))))

(declare-fun b!2557488 () Bool)

(assert (=> b!2557488 (= e!1615470 (nullable!2528 (derivativeStep!2180 lt!904152 (head!5818 tl!4068))))))

(declare-fun b!2557489 () Bool)

(declare-fun res!1077014 () Bool)

(assert (=> b!2557489 (=> res!1077014 e!1615469)))

(assert (=> b!2557489 (= res!1077014 e!1615472)))

(declare-fun res!1077017 () Bool)

(assert (=> b!2557489 (=> (not res!1077017) (not e!1615472))))

(assert (=> b!2557489 (= res!1077017 lt!904312)))

(declare-fun bm!163428 () Bool)

(assert (=> bm!163428 (= call!163433 (isEmpty!17030 (tail!4093 tl!4068)))))

(declare-fun b!2557490 () Bool)

(declare-fun res!1077015 () Bool)

(assert (=> b!2557490 (=> (not res!1077015) (not e!1615472))))

(assert (=> b!2557490 (= res!1077015 (isEmpty!17030 (tail!4093 (tail!4093 tl!4068))))))

(declare-fun b!2557491 () Bool)

(assert (=> b!2557491 (= e!1615469 e!1615467)))

(declare-fun res!1077018 () Bool)

(assert (=> b!2557491 (=> (not res!1077018) (not e!1615467))))

(assert (=> b!2557491 (= res!1077018 (not lt!904312))))

(declare-fun d!724681 () Bool)

(assert (=> d!724681 e!1615471))

(declare-fun c!410562 () Bool)

(assert (=> d!724681 (= c!410562 ((_ is EmptyExpr!7611) (derivativeStep!2180 lt!904152 (head!5818 tl!4068))))))

(assert (=> d!724681 (= lt!904312 e!1615470)))

(declare-fun c!410564 () Bool)

(assert (=> d!724681 (= c!410564 (isEmpty!17030 (tail!4093 tl!4068)))))

(assert (=> d!724681 (validRegex!3237 (derivativeStep!2180 lt!904152 (head!5818 tl!4068)))))

(assert (=> d!724681 (= (matchR!3556 (derivativeStep!2180 lt!904152 (head!5818 tl!4068)) (tail!4093 tl!4068)) lt!904312)))

(declare-fun b!2557492 () Bool)

(assert (=> b!2557492 (= e!1615466 (not lt!904312))))

(declare-fun b!2557493 () Bool)

(assert (=> b!2557493 (= e!1615471 e!1615466)))

(declare-fun c!410563 () Bool)

(assert (=> b!2557493 (= c!410563 ((_ is EmptyLang!7611) (derivativeStep!2180 lt!904152 (head!5818 tl!4068))))))

(assert (= (and d!724681 c!410564) b!2557488))

(assert (= (and d!724681 (not c!410564)) b!2557483))

(assert (= (and d!724681 c!410562) b!2557487))

(assert (= (and d!724681 (not c!410562)) b!2557493))

(assert (= (and b!2557493 c!410563) b!2557492))

(assert (= (and b!2557493 (not c!410563)) b!2557480))

(assert (= (and b!2557480 (not res!1077013)) b!2557489))

(assert (= (and b!2557489 res!1077017) b!2557484))

(assert (= (and b!2557484 res!1077019) b!2557490))

(assert (= (and b!2557490 res!1077015) b!2557482))

(assert (= (and b!2557489 (not res!1077014)) b!2557491))

(assert (= (and b!2557491 res!1077018) b!2557481))

(assert (= (and b!2557481 (not res!1077012)) b!2557486))

(assert (= (and b!2557486 (not res!1077016)) b!2557485))

(assert (= (or b!2557487 b!2557481 b!2557484) bm!163428))

(assert (=> b!2557483 m!2897763))

(declare-fun m!2898709 () Bool)

(assert (=> b!2557483 m!2898709))

(assert (=> b!2557483 m!2897761))

(assert (=> b!2557483 m!2898709))

(declare-fun m!2898711 () Bool)

(assert (=> b!2557483 m!2898711))

(assert (=> b!2557483 m!2897763))

(declare-fun m!2898713 () Bool)

(assert (=> b!2557483 m!2898713))

(assert (=> b!2557483 m!2898711))

(assert (=> b!2557483 m!2898713))

(declare-fun m!2898715 () Bool)

(assert (=> b!2557483 m!2898715))

(assert (=> b!2557482 m!2897763))

(assert (=> b!2557482 m!2898709))

(assert (=> bm!163428 m!2897763))

(assert (=> bm!163428 m!2897769))

(assert (=> d!724681 m!2897763))

(assert (=> d!724681 m!2897769))

(assert (=> d!724681 m!2897761))

(declare-fun m!2898717 () Bool)

(assert (=> d!724681 m!2898717))

(assert (=> b!2557490 m!2897763))

(assert (=> b!2557490 m!2898713))

(assert (=> b!2557490 m!2898713))

(declare-fun m!2898719 () Bool)

(assert (=> b!2557490 m!2898719))

(assert (=> b!2557486 m!2897763))

(assert (=> b!2557486 m!2898713))

(assert (=> b!2557486 m!2898713))

(assert (=> b!2557486 m!2898719))

(assert (=> b!2557488 m!2897761))

(declare-fun m!2898721 () Bool)

(assert (=> b!2557488 m!2898721))

(assert (=> b!2557485 m!2897763))

(assert (=> b!2557485 m!2898709))

(assert (=> b!2556319 d!724681))

(declare-fun b!2557501 () Bool)

(declare-fun e!1615480 () Regex!7611)

(declare-fun e!1615481 () Regex!7611)

(assert (=> b!2557501 (= e!1615480 e!1615481)))

(declare-fun c!410567 () Bool)

(assert (=> b!2557501 (= c!410567 ((_ is ElementMatch!7611) lt!904152))))

(declare-fun b!2557502 () Bool)

(declare-fun c!410570 () Bool)

(assert (=> b!2557502 (= c!410570 (nullable!2528 (regOne!15734 lt!904152)))))

(declare-fun e!1615479 () Regex!7611)

(declare-fun e!1615483 () Regex!7611)

(assert (=> b!2557502 (= e!1615479 e!1615483)))

(declare-fun b!2557503 () Bool)

(declare-fun call!163436 () Regex!7611)

(assert (=> b!2557503 (= e!1615483 (Union!7611 (Concat!12307 call!163436 (regTwo!15734 lt!904152)) EmptyLang!7611))))

(declare-fun b!2557504 () Bool)

(declare-fun e!1615482 () Regex!7611)

(declare-fun call!163437 () Regex!7611)

(declare-fun call!163439 () Regex!7611)

(assert (=> b!2557504 (= e!1615482 (Union!7611 call!163437 call!163439))))

(declare-fun c!410569 () Bool)

(declare-fun bm!163431 () Bool)

(assert (=> bm!163431 (= call!163437 (derivativeStep!2180 (ite c!410569 (regOne!15735 lt!904152) (regTwo!15734 lt!904152)) (head!5818 tl!4068)))))

(declare-fun bm!163432 () Bool)

(declare-fun call!163438 () Regex!7611)

(assert (=> bm!163432 (= call!163436 call!163438)))

(declare-fun bm!163433 () Bool)

(assert (=> bm!163433 (= call!163438 call!163439)))

(declare-fun c!410568 () Bool)

(declare-fun bm!163434 () Bool)

(assert (=> bm!163434 (= call!163439 (derivativeStep!2180 (ite c!410569 (regTwo!15735 lt!904152) (ite c!410568 (reg!7940 lt!904152) (regOne!15734 lt!904152))) (head!5818 tl!4068)))))

(declare-fun b!2557505 () Bool)

(assert (=> b!2557505 (= e!1615482 e!1615479)))

(assert (=> b!2557505 (= c!410568 ((_ is Star!7611) lt!904152))))

(declare-fun b!2557506 () Bool)

(assert (=> b!2557506 (= e!1615481 (ite (= (head!5818 tl!4068) (c!410113 lt!904152)) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557507 () Bool)

(assert (=> b!2557507 (= e!1615479 (Concat!12307 call!163438 lt!904152))))

(declare-fun b!2557508 () Bool)

(assert (=> b!2557508 (= e!1615480 EmptyLang!7611)))

(declare-fun b!2557509 () Bool)

(assert (=> b!2557509 (= e!1615483 (Union!7611 (Concat!12307 call!163436 (regTwo!15734 lt!904152)) call!163437))))

(declare-fun b!2557510 () Bool)

(assert (=> b!2557510 (= c!410569 ((_ is Union!7611) lt!904152))))

(assert (=> b!2557510 (= e!1615481 e!1615482)))

(declare-fun d!724695 () Bool)

(declare-fun lt!904313 () Regex!7611)

(assert (=> d!724695 (validRegex!3237 lt!904313)))

(assert (=> d!724695 (= lt!904313 e!1615480)))

(declare-fun c!410566 () Bool)

(assert (=> d!724695 (= c!410566 (or ((_ is EmptyExpr!7611) lt!904152) ((_ is EmptyLang!7611) lt!904152)))))

(assert (=> d!724695 (validRegex!3237 lt!904152)))

(assert (=> d!724695 (= (derivativeStep!2180 lt!904152 (head!5818 tl!4068)) lt!904313)))

(assert (= (and d!724695 c!410566) b!2557508))

(assert (= (and d!724695 (not c!410566)) b!2557501))

(assert (= (and b!2557501 c!410567) b!2557506))

(assert (= (and b!2557501 (not c!410567)) b!2557510))

(assert (= (and b!2557510 c!410569) b!2557504))

(assert (= (and b!2557510 (not c!410569)) b!2557505))

(assert (= (and b!2557505 c!410568) b!2557507))

(assert (= (and b!2557505 (not c!410568)) b!2557502))

(assert (= (and b!2557502 c!410570) b!2557509))

(assert (= (and b!2557502 (not c!410570)) b!2557503))

(assert (= (or b!2557509 b!2557503) bm!163432))

(assert (= (or b!2557507 bm!163432) bm!163433))

(assert (= (or b!2557504 bm!163433) bm!163434))

(assert (= (or b!2557504 b!2557509) bm!163431))

(declare-fun m!2898723 () Bool)

(assert (=> b!2557502 m!2898723))

(assert (=> bm!163431 m!2897759))

(declare-fun m!2898725 () Bool)

(assert (=> bm!163431 m!2898725))

(assert (=> bm!163434 m!2897759))

(declare-fun m!2898727 () Bool)

(assert (=> bm!163434 m!2898727))

(declare-fun m!2898729 () Bool)

(assert (=> d!724695 m!2898729))

(assert (=> d!724695 m!2897749))

(assert (=> b!2556319 d!724695))

(assert (=> b!2556319 d!724547))

(assert (=> b!2556319 d!724505))

(assert (=> b!2556423 d!724503))

(assert (=> b!2556423 d!724505))

(assert (=> d!724271 d!724565))

(declare-fun bm!163435 () Bool)

(declare-fun call!163440 () Bool)

(declare-fun c!410572 () Bool)

(declare-fun c!410571 () Bool)

(assert (=> bm!163435 (= call!163440 (validRegex!3237 (ite c!410572 (reg!7940 lt!904148) (ite c!410571 (regOne!15735 lt!904148) (regTwo!15734 lt!904148)))))))

(declare-fun d!724697 () Bool)

(declare-fun res!1077028 () Bool)

(declare-fun e!1615489 () Bool)

(assert (=> d!724697 (=> res!1077028 e!1615489)))

(assert (=> d!724697 (= res!1077028 ((_ is ElementMatch!7611) lt!904148))))

(assert (=> d!724697 (= (validRegex!3237 lt!904148) e!1615489)))

(declare-fun b!2557511 () Bool)

(declare-fun e!1615485 () Bool)

(assert (=> b!2557511 (= e!1615489 e!1615485)))

(assert (=> b!2557511 (= c!410572 ((_ is Star!7611) lt!904148))))

(declare-fun b!2557512 () Bool)

(declare-fun e!1615486 () Bool)

(declare-fun call!163442 () Bool)

(assert (=> b!2557512 (= e!1615486 call!163442)))

(declare-fun b!2557513 () Bool)

(declare-fun e!1615484 () Bool)

(declare-fun call!163441 () Bool)

(assert (=> b!2557513 (= e!1615484 call!163441)))

(declare-fun b!2557514 () Bool)

(declare-fun e!1615487 () Bool)

(assert (=> b!2557514 (= e!1615487 e!1615484)))

(declare-fun res!1077025 () Bool)

(assert (=> b!2557514 (=> (not res!1077025) (not e!1615484))))

(assert (=> b!2557514 (= res!1077025 call!163442)))

(declare-fun b!2557515 () Bool)

(declare-fun res!1077026 () Bool)

(assert (=> b!2557515 (=> res!1077026 e!1615487)))

(assert (=> b!2557515 (= res!1077026 (not ((_ is Concat!12307) lt!904148)))))

(declare-fun e!1615490 () Bool)

(assert (=> b!2557515 (= e!1615490 e!1615487)))

(declare-fun bm!163436 () Bool)

(assert (=> bm!163436 (= call!163442 (validRegex!3237 (ite c!410571 (regTwo!15735 lt!904148) (regOne!15734 lt!904148))))))

(declare-fun bm!163437 () Bool)

(assert (=> bm!163437 (= call!163441 call!163440)))

(declare-fun b!2557516 () Bool)

(declare-fun e!1615488 () Bool)

(assert (=> b!2557516 (= e!1615488 call!163440)))

(declare-fun b!2557517 () Bool)

(declare-fun res!1077029 () Bool)

(assert (=> b!2557517 (=> (not res!1077029) (not e!1615486))))

(assert (=> b!2557517 (= res!1077029 call!163441)))

(assert (=> b!2557517 (= e!1615490 e!1615486)))

(declare-fun b!2557518 () Bool)

(assert (=> b!2557518 (= e!1615485 e!1615490)))

(assert (=> b!2557518 (= c!410571 ((_ is Union!7611) lt!904148))))

(declare-fun b!2557519 () Bool)

(assert (=> b!2557519 (= e!1615485 e!1615488)))

(declare-fun res!1077027 () Bool)

(assert (=> b!2557519 (= res!1077027 (not (nullable!2528 (reg!7940 lt!904148))))))

(assert (=> b!2557519 (=> (not res!1077027) (not e!1615488))))

(assert (= (and d!724697 (not res!1077028)) b!2557511))

(assert (= (and b!2557511 c!410572) b!2557519))

(assert (= (and b!2557511 (not c!410572)) b!2557518))

(assert (= (and b!2557519 res!1077027) b!2557516))

(assert (= (and b!2557518 c!410571) b!2557517))

(assert (= (and b!2557518 (not c!410571)) b!2557515))

(assert (= (and b!2557517 res!1077029) b!2557512))

(assert (= (and b!2557515 (not res!1077026)) b!2557514))

(assert (= (and b!2557514 res!1077025) b!2557513))

(assert (= (or b!2557517 b!2557513) bm!163437))

(assert (= (or b!2557512 b!2557514) bm!163436))

(assert (= (or b!2557516 bm!163437) bm!163435))

(declare-fun m!2898731 () Bool)

(assert (=> bm!163435 m!2898731))

(declare-fun m!2898733 () Bool)

(assert (=> bm!163436 m!2898733))

(declare-fun m!2898735 () Bool)

(assert (=> b!2557519 m!2898735))

(assert (=> d!724271 d!724697))

(declare-fun c!410574 () Bool)

(declare-fun bm!163438 () Bool)

(declare-fun call!163443 () Bool)

(declare-fun c!410573 () Bool)

(assert (=> bm!163438 (= call!163443 (validRegex!3237 (ite c!410574 (reg!7940 lt!904168) (ite c!410573 (regOne!15735 lt!904168) (regTwo!15734 lt!904168)))))))

(declare-fun d!724699 () Bool)

(declare-fun res!1077033 () Bool)

(declare-fun e!1615496 () Bool)

(assert (=> d!724699 (=> res!1077033 e!1615496)))

(assert (=> d!724699 (= res!1077033 ((_ is ElementMatch!7611) lt!904168))))

(assert (=> d!724699 (= (validRegex!3237 lt!904168) e!1615496)))

(declare-fun b!2557520 () Bool)

(declare-fun e!1615492 () Bool)

(assert (=> b!2557520 (= e!1615496 e!1615492)))

(assert (=> b!2557520 (= c!410574 ((_ is Star!7611) lt!904168))))

(declare-fun b!2557521 () Bool)

(declare-fun e!1615493 () Bool)

(declare-fun call!163445 () Bool)

(assert (=> b!2557521 (= e!1615493 call!163445)))

(declare-fun b!2557522 () Bool)

(declare-fun e!1615491 () Bool)

(declare-fun call!163444 () Bool)

(assert (=> b!2557522 (= e!1615491 call!163444)))

(declare-fun b!2557523 () Bool)

(declare-fun e!1615494 () Bool)

(assert (=> b!2557523 (= e!1615494 e!1615491)))

(declare-fun res!1077030 () Bool)

(assert (=> b!2557523 (=> (not res!1077030) (not e!1615491))))

(assert (=> b!2557523 (= res!1077030 call!163445)))

(declare-fun b!2557524 () Bool)

(declare-fun res!1077031 () Bool)

(assert (=> b!2557524 (=> res!1077031 e!1615494)))

(assert (=> b!2557524 (= res!1077031 (not ((_ is Concat!12307) lt!904168)))))

(declare-fun e!1615497 () Bool)

(assert (=> b!2557524 (= e!1615497 e!1615494)))

(declare-fun bm!163439 () Bool)

(assert (=> bm!163439 (= call!163445 (validRegex!3237 (ite c!410573 (regTwo!15735 lt!904168) (regOne!15734 lt!904168))))))

(declare-fun bm!163440 () Bool)

(assert (=> bm!163440 (= call!163444 call!163443)))

(declare-fun b!2557525 () Bool)

(declare-fun e!1615495 () Bool)

(assert (=> b!2557525 (= e!1615495 call!163443)))

(declare-fun b!2557526 () Bool)

(declare-fun res!1077034 () Bool)

(assert (=> b!2557526 (=> (not res!1077034) (not e!1615493))))

(assert (=> b!2557526 (= res!1077034 call!163444)))

(assert (=> b!2557526 (= e!1615497 e!1615493)))

(declare-fun b!2557527 () Bool)

(assert (=> b!2557527 (= e!1615492 e!1615497)))

(assert (=> b!2557527 (= c!410573 ((_ is Union!7611) lt!904168))))

(declare-fun b!2557528 () Bool)

(assert (=> b!2557528 (= e!1615492 e!1615495)))

(declare-fun res!1077032 () Bool)

(assert (=> b!2557528 (= res!1077032 (not (nullable!2528 (reg!7940 lt!904168))))))

(assert (=> b!2557528 (=> (not res!1077032) (not e!1615495))))

(assert (= (and d!724699 (not res!1077033)) b!2557520))

(assert (= (and b!2557520 c!410574) b!2557528))

(assert (= (and b!2557520 (not c!410574)) b!2557527))

(assert (= (and b!2557528 res!1077032) b!2557525))

(assert (= (and b!2557527 c!410573) b!2557526))

(assert (= (and b!2557527 (not c!410573)) b!2557524))

(assert (= (and b!2557526 res!1077034) b!2557521))

(assert (= (and b!2557524 (not res!1077031)) b!2557523))

(assert (= (and b!2557523 res!1077030) b!2557522))

(assert (= (or b!2557526 b!2557522) bm!163440))

(assert (= (or b!2557521 b!2557523) bm!163439))

(assert (= (or b!2557525 bm!163440) bm!163438))

(declare-fun m!2898737 () Bool)

(assert (=> bm!163438 m!2898737))

(declare-fun m!2898739 () Bool)

(assert (=> bm!163439 m!2898739))

(declare-fun m!2898741 () Bool)

(assert (=> b!2557528 m!2898741))

(assert (=> d!724277 d!724699))

(assert (=> d!724277 d!724543))

(assert (=> b!2556409 d!724503))

(assert (=> b!2556409 d!724505))

(declare-fun d!724701 () Bool)

(assert (=> d!724701 (= (matchR!3556 lt!904152 tl!4068) (matchR!3556 (derivative!306 lt!904152 tl!4068) Nil!29576))))

(assert (=> d!724701 true))

(declare-fun _$108!361 () Unit!43407)

(assert (=> d!724701 (= (choose!15089 lt!904152 tl!4068) _$108!361)))

(declare-fun bs!469749 () Bool)

(assert (= bs!469749 d!724701))

(assert (=> bs!469749 m!2897549))

(assert (=> bs!469749 m!2897555))

(assert (=> bs!469749 m!2897555))

(assert (=> bs!469749 m!2897557))

(assert (=> d!724313 d!724701))

(assert (=> d!724313 d!724317))

(assert (=> d!724313 d!724321))

(assert (=> d!724313 d!724323))

(declare-fun c!410576 () Bool)

(declare-fun bm!163441 () Bool)

(declare-fun call!163446 () Bool)

(declare-fun c!410575 () Bool)

(assert (=> bm!163441 (= call!163446 (validRegex!3237 (ite c!410576 (reg!7940 lt!904152) (ite c!410575 (regOne!15735 lt!904152) (regTwo!15734 lt!904152)))))))

(declare-fun d!724703 () Bool)

(declare-fun res!1077038 () Bool)

(declare-fun e!1615503 () Bool)

(assert (=> d!724703 (=> res!1077038 e!1615503)))

(assert (=> d!724703 (= res!1077038 ((_ is ElementMatch!7611) lt!904152))))

(assert (=> d!724703 (= (validRegex!3237 lt!904152) e!1615503)))

(declare-fun b!2557529 () Bool)

(declare-fun e!1615499 () Bool)

(assert (=> b!2557529 (= e!1615503 e!1615499)))

(assert (=> b!2557529 (= c!410576 ((_ is Star!7611) lt!904152))))

(declare-fun b!2557530 () Bool)

(declare-fun e!1615500 () Bool)

(declare-fun call!163448 () Bool)

(assert (=> b!2557530 (= e!1615500 call!163448)))

(declare-fun b!2557531 () Bool)

(declare-fun e!1615498 () Bool)

(declare-fun call!163447 () Bool)

(assert (=> b!2557531 (= e!1615498 call!163447)))

(declare-fun b!2557532 () Bool)

(declare-fun e!1615501 () Bool)

(assert (=> b!2557532 (= e!1615501 e!1615498)))

(declare-fun res!1077035 () Bool)

(assert (=> b!2557532 (=> (not res!1077035) (not e!1615498))))

(assert (=> b!2557532 (= res!1077035 call!163448)))

(declare-fun b!2557533 () Bool)

(declare-fun res!1077036 () Bool)

(assert (=> b!2557533 (=> res!1077036 e!1615501)))

(assert (=> b!2557533 (= res!1077036 (not ((_ is Concat!12307) lt!904152)))))

(declare-fun e!1615504 () Bool)

(assert (=> b!2557533 (= e!1615504 e!1615501)))

(declare-fun bm!163442 () Bool)

(assert (=> bm!163442 (= call!163448 (validRegex!3237 (ite c!410575 (regTwo!15735 lt!904152) (regOne!15734 lt!904152))))))

(declare-fun bm!163443 () Bool)

(assert (=> bm!163443 (= call!163447 call!163446)))

(declare-fun b!2557534 () Bool)

(declare-fun e!1615502 () Bool)

(assert (=> b!2557534 (= e!1615502 call!163446)))

(declare-fun b!2557535 () Bool)

(declare-fun res!1077039 () Bool)

(assert (=> b!2557535 (=> (not res!1077039) (not e!1615500))))

(assert (=> b!2557535 (= res!1077039 call!163447)))

(assert (=> b!2557535 (= e!1615504 e!1615500)))

(declare-fun b!2557536 () Bool)

(assert (=> b!2557536 (= e!1615499 e!1615504)))

(assert (=> b!2557536 (= c!410575 ((_ is Union!7611) lt!904152))))

(declare-fun b!2557537 () Bool)

(assert (=> b!2557537 (= e!1615499 e!1615502)))

(declare-fun res!1077037 () Bool)

(assert (=> b!2557537 (= res!1077037 (not (nullable!2528 (reg!7940 lt!904152))))))

(assert (=> b!2557537 (=> (not res!1077037) (not e!1615502))))

(assert (= (and d!724703 (not res!1077038)) b!2557529))

(assert (= (and b!2557529 c!410576) b!2557537))

(assert (= (and b!2557529 (not c!410576)) b!2557536))

(assert (= (and b!2557537 res!1077037) b!2557534))

(assert (= (and b!2557536 c!410575) b!2557535))

(assert (= (and b!2557536 (not c!410575)) b!2557533))

(assert (= (and b!2557535 res!1077039) b!2557530))

(assert (= (and b!2557533 (not res!1077036)) b!2557532))

(assert (= (and b!2557532 res!1077035) b!2557531))

(assert (= (or b!2557535 b!2557531) bm!163443))

(assert (= (or b!2557530 b!2557532) bm!163442))

(assert (= (or b!2557534 bm!163443) bm!163441))

(declare-fun m!2898743 () Bool)

(assert (=> bm!163441 m!2898743))

(declare-fun m!2898745 () Bool)

(assert (=> bm!163442 m!2898745))

(declare-fun m!2898747 () Bool)

(assert (=> b!2557537 m!2898747))

(assert (=> d!724313 d!724703))

(assert (=> bm!163133 d!724565))

(assert (=> b!2556342 d!724605))

(assert (=> b!2556342 d!724495))

(declare-fun d!724707 () Bool)

(assert (=> d!724707 (= (nullable!2528 (reg!7940 r!27340)) (nullableFct!753 (reg!7940 r!27340)))))

(declare-fun bs!469751 () Bool)

(assert (= bs!469751 d!724707))

(declare-fun m!2898751 () Bool)

(assert (=> bs!469751 m!2898751))

(assert (=> b!2556619 d!724707))

(declare-fun d!724709 () Bool)

(declare-fun lt!904316 () Int)

(assert (=> d!724709 (>= lt!904316 0)))

(declare-fun e!1615523 () Int)

(assert (=> d!724709 (= lt!904316 e!1615523)))

(declare-fun c!410581 () Bool)

(assert (=> d!724709 (= c!410581 ((_ is Nil!29576) lt!904247))))

(assert (=> d!724709 (= (size!22954 lt!904247) lt!904316)))

(declare-fun b!2557587 () Bool)

(assert (=> b!2557587 (= e!1615523 0)))

(declare-fun b!2557588 () Bool)

(assert (=> b!2557588 (= e!1615523 (+ 1 (size!22954 (t!211375 lt!904247))))))

(assert (= (and d!724709 c!410581) b!2557587))

(assert (= (and d!724709 (not c!410581)) b!2557588))

(declare-fun m!2898757 () Bool)

(assert (=> b!2557588 m!2898757))

(assert (=> b!2556609 d!724709))

(declare-fun d!724711 () Bool)

(declare-fun lt!904317 () Int)

(assert (=> d!724711 (>= lt!904317 0)))

(declare-fun e!1615525 () Int)

(assert (=> d!724711 (= lt!904317 e!1615525)))

(declare-fun c!410582 () Bool)

(assert (=> d!724711 (= c!410582 ((_ is Nil!29576) (_1!17334 lt!904154)))))

(assert (=> d!724711 (= (size!22954 (_1!17334 lt!904154)) lt!904317)))

(declare-fun b!2557593 () Bool)

(assert (=> b!2557593 (= e!1615525 0)))

(declare-fun b!2557594 () Bool)

(assert (=> b!2557594 (= e!1615525 (+ 1 (size!22954 (t!211375 (_1!17334 lt!904154)))))))

(assert (= (and d!724711 c!410582) b!2557593))

(assert (= (and d!724711 (not c!410582)) b!2557594))

(assert (=> b!2557594 m!2898489))

(assert (=> b!2556609 d!724711))

(declare-fun d!724713 () Bool)

(declare-fun lt!904318 () Int)

(assert (=> d!724713 (>= lt!904318 0)))

(declare-fun e!1615527 () Int)

(assert (=> d!724713 (= lt!904318 e!1615527)))

(declare-fun c!410583 () Bool)

(assert (=> d!724713 (= c!410583 ((_ is Nil!29576) (_2!17334 lt!904154)))))

(assert (=> d!724713 (= (size!22954 (_2!17334 lt!904154)) lt!904318)))

(declare-fun b!2557599 () Bool)

(assert (=> b!2557599 (= e!1615527 0)))

(declare-fun b!2557600 () Bool)

(assert (=> b!2557600 (= e!1615527 (+ 1 (size!22954 (t!211375 (_2!17334 lt!904154)))))))

(assert (= (and d!724713 c!410583) b!2557599))

(assert (= (and d!724713 (not c!410583)) b!2557600))

(declare-fun m!2898759 () Bool)

(assert (=> b!2557600 m!2898759))

(assert (=> b!2556609 d!724713))

(declare-fun call!163452 () Bool)

(declare-fun c!410584 () Bool)

(declare-fun bm!163447 () Bool)

(declare-fun c!410585 () Bool)

(assert (=> bm!163447 (= call!163452 (validRegex!3237 (ite c!410585 (reg!7940 lt!904212) (ite c!410584 (regOne!15735 lt!904212) (regTwo!15734 lt!904212)))))))

(declare-fun d!724715 () Bool)

(declare-fun res!1077048 () Bool)

(declare-fun e!1615534 () Bool)

(assert (=> d!724715 (=> res!1077048 e!1615534)))

(assert (=> d!724715 (= res!1077048 ((_ is ElementMatch!7611) lt!904212))))

(assert (=> d!724715 (= (validRegex!3237 lt!904212) e!1615534)))

(declare-fun b!2557605 () Bool)

(declare-fun e!1615530 () Bool)

(assert (=> b!2557605 (= e!1615534 e!1615530)))

(assert (=> b!2557605 (= c!410585 ((_ is Star!7611) lt!904212))))

(declare-fun b!2557606 () Bool)

(declare-fun e!1615531 () Bool)

(declare-fun call!163454 () Bool)

(assert (=> b!2557606 (= e!1615531 call!163454)))

(declare-fun b!2557607 () Bool)

(declare-fun e!1615529 () Bool)

(declare-fun call!163453 () Bool)

(assert (=> b!2557607 (= e!1615529 call!163453)))

(declare-fun b!2557608 () Bool)

(declare-fun e!1615532 () Bool)

(assert (=> b!2557608 (= e!1615532 e!1615529)))

(declare-fun res!1077045 () Bool)

(assert (=> b!2557608 (=> (not res!1077045) (not e!1615529))))

(assert (=> b!2557608 (= res!1077045 call!163454)))

(declare-fun b!2557609 () Bool)

(declare-fun res!1077046 () Bool)

(assert (=> b!2557609 (=> res!1077046 e!1615532)))

(assert (=> b!2557609 (= res!1077046 (not ((_ is Concat!12307) lt!904212)))))

(declare-fun e!1615535 () Bool)

(assert (=> b!2557609 (= e!1615535 e!1615532)))

(declare-fun bm!163448 () Bool)

(assert (=> bm!163448 (= call!163454 (validRegex!3237 (ite c!410584 (regTwo!15735 lt!904212) (regOne!15734 lt!904212))))))

(declare-fun bm!163449 () Bool)

(assert (=> bm!163449 (= call!163453 call!163452)))

(declare-fun b!2557610 () Bool)

(declare-fun e!1615533 () Bool)

(assert (=> b!2557610 (= e!1615533 call!163452)))

(declare-fun b!2557611 () Bool)

(declare-fun res!1077049 () Bool)

(assert (=> b!2557611 (=> (not res!1077049) (not e!1615531))))

(assert (=> b!2557611 (= res!1077049 call!163453)))

(assert (=> b!2557611 (= e!1615535 e!1615531)))

(declare-fun b!2557612 () Bool)

(assert (=> b!2557612 (= e!1615530 e!1615535)))

(assert (=> b!2557612 (= c!410584 ((_ is Union!7611) lt!904212))))

(declare-fun b!2557613 () Bool)

(assert (=> b!2557613 (= e!1615530 e!1615533)))

(declare-fun res!1077047 () Bool)

(assert (=> b!2557613 (= res!1077047 (not (nullable!2528 (reg!7940 lt!904212))))))

(assert (=> b!2557613 (=> (not res!1077047) (not e!1615533))))

(assert (= (and d!724715 (not res!1077048)) b!2557605))

(assert (= (and b!2557605 c!410585) b!2557613))

(assert (= (and b!2557605 (not c!410585)) b!2557612))

(assert (= (and b!2557613 res!1077047) b!2557610))

(assert (= (and b!2557612 c!410584) b!2557611))

(assert (= (and b!2557612 (not c!410584)) b!2557609))

(assert (= (and b!2557611 res!1077049) b!2557606))

(assert (= (and b!2557609 (not res!1077046)) b!2557608))

(assert (= (and b!2557608 res!1077045) b!2557607))

(assert (= (or b!2557611 b!2557607) bm!163449))

(assert (= (or b!2557606 b!2557608) bm!163448))

(assert (= (or b!2557610 bm!163449) bm!163447))

(declare-fun m!2898761 () Bool)

(assert (=> bm!163447 m!2898761))

(declare-fun m!2898763 () Bool)

(assert (=> bm!163448 m!2898763))

(declare-fun m!2898765 () Bool)

(assert (=> b!2557613 m!2898765))

(assert (=> d!724331 d!724715))

(declare-fun c!410587 () Bool)

(declare-fun c!410586 () Bool)

(declare-fun bm!163450 () Bool)

(declare-fun call!163455 () Bool)

(assert (=> bm!163450 (= call!163455 (validRegex!3237 (ite c!410587 (reg!7940 (regTwo!15734 r!27340)) (ite c!410586 (regOne!15735 (regTwo!15734 r!27340)) (regTwo!15734 (regTwo!15734 r!27340))))))))

(declare-fun d!724717 () Bool)

(declare-fun res!1077053 () Bool)

(declare-fun e!1615545 () Bool)

(assert (=> d!724717 (=> res!1077053 e!1615545)))

(assert (=> d!724717 (= res!1077053 ((_ is ElementMatch!7611) (regTwo!15734 r!27340)))))

(assert (=> d!724717 (= (validRegex!3237 (regTwo!15734 r!27340)) e!1615545)))

(declare-fun b!2557630 () Bool)

(declare-fun e!1615541 () Bool)

(assert (=> b!2557630 (= e!1615545 e!1615541)))

(assert (=> b!2557630 (= c!410587 ((_ is Star!7611) (regTwo!15734 r!27340)))))

(declare-fun b!2557631 () Bool)

(declare-fun e!1615542 () Bool)

(declare-fun call!163457 () Bool)

(assert (=> b!2557631 (= e!1615542 call!163457)))

(declare-fun b!2557632 () Bool)

(declare-fun e!1615540 () Bool)

(declare-fun call!163456 () Bool)

(assert (=> b!2557632 (= e!1615540 call!163456)))

(declare-fun b!2557633 () Bool)

(declare-fun e!1615543 () Bool)

(assert (=> b!2557633 (= e!1615543 e!1615540)))

(declare-fun res!1077050 () Bool)

(assert (=> b!2557633 (=> (not res!1077050) (not e!1615540))))

(assert (=> b!2557633 (= res!1077050 call!163457)))

(declare-fun b!2557634 () Bool)

(declare-fun res!1077051 () Bool)

(assert (=> b!2557634 (=> res!1077051 e!1615543)))

(assert (=> b!2557634 (= res!1077051 (not ((_ is Concat!12307) (regTwo!15734 r!27340))))))

(declare-fun e!1615546 () Bool)

(assert (=> b!2557634 (= e!1615546 e!1615543)))

(declare-fun bm!163451 () Bool)

(assert (=> bm!163451 (= call!163457 (validRegex!3237 (ite c!410586 (regTwo!15735 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))))))

(declare-fun bm!163452 () Bool)

(assert (=> bm!163452 (= call!163456 call!163455)))

(declare-fun b!2557635 () Bool)

(declare-fun e!1615544 () Bool)

(assert (=> b!2557635 (= e!1615544 call!163455)))

(declare-fun b!2557636 () Bool)

(declare-fun res!1077054 () Bool)

(assert (=> b!2557636 (=> (not res!1077054) (not e!1615542))))

(assert (=> b!2557636 (= res!1077054 call!163456)))

(assert (=> b!2557636 (= e!1615546 e!1615542)))

(declare-fun b!2557637 () Bool)

(assert (=> b!2557637 (= e!1615541 e!1615546)))

(assert (=> b!2557637 (= c!410586 ((_ is Union!7611) (regTwo!15734 r!27340)))))

(declare-fun b!2557638 () Bool)

(assert (=> b!2557638 (= e!1615541 e!1615544)))

(declare-fun res!1077052 () Bool)

(assert (=> b!2557638 (= res!1077052 (not (nullable!2528 (reg!7940 (regTwo!15734 r!27340)))))))

(assert (=> b!2557638 (=> (not res!1077052) (not e!1615544))))

(assert (= (and d!724717 (not res!1077053)) b!2557630))

(assert (= (and b!2557630 c!410587) b!2557638))

(assert (= (and b!2557630 (not c!410587)) b!2557637))

(assert (= (and b!2557638 res!1077052) b!2557635))

(assert (= (and b!2557637 c!410586) b!2557636))

(assert (= (and b!2557637 (not c!410586)) b!2557634))

(assert (= (and b!2557636 res!1077054) b!2557631))

(assert (= (and b!2557634 (not res!1077051)) b!2557633))

(assert (= (and b!2557633 res!1077050) b!2557632))

(assert (= (or b!2557636 b!2557632) bm!163452))

(assert (= (or b!2557631 b!2557633) bm!163451))

(assert (= (or b!2557635 bm!163452) bm!163450))

(declare-fun m!2898767 () Bool)

(assert (=> bm!163450 m!2898767))

(declare-fun m!2898769 () Bool)

(assert (=> bm!163451 m!2898769))

(declare-fun m!2898771 () Bool)

(assert (=> b!2557638 m!2898771))

(assert (=> d!724331 d!724717))

(assert (=> b!2556418 d!724547))

(declare-fun d!724719 () Bool)

(assert (=> d!724719 (= (nullable!2528 (reg!7940 (regOne!15734 r!27340))) (nullableFct!753 (reg!7940 (regOne!15734 r!27340))))))

(declare-fun bs!469752 () Bool)

(assert (= bs!469752 d!724719))

(declare-fun m!2898773 () Bool)

(assert (=> bs!469752 m!2898773))

(assert (=> b!2555983 d!724719))

(declare-fun b!2557659 () Bool)

(declare-fun res!1077056 () Bool)

(declare-fun e!1615555 () Bool)

(assert (=> b!2557659 (=> res!1077056 e!1615555)))

(assert (=> b!2557659 (= res!1077056 (not ((_ is ElementMatch!7611) (derivativeStep!2180 lt!904151 (head!5818 tl!4068)))))))

(declare-fun e!1615552 () Bool)

(assert (=> b!2557659 (= e!1615552 e!1615555)))

(declare-fun b!2557660 () Bool)

(declare-fun e!1615553 () Bool)

(declare-fun e!1615554 () Bool)

(assert (=> b!2557660 (= e!1615553 e!1615554)))

(declare-fun res!1077055 () Bool)

(assert (=> b!2557660 (=> res!1077055 e!1615554)))

(declare-fun call!163458 () Bool)

(assert (=> b!2557660 (= res!1077055 call!163458)))

(declare-fun b!2557661 () Bool)

(declare-fun e!1615558 () Bool)

(assert (=> b!2557661 (= e!1615558 (= (head!5818 (tail!4093 tl!4068)) (c!410113 (derivativeStep!2180 lt!904151 (head!5818 tl!4068)))))))

(declare-fun b!2557662 () Bool)

(declare-fun e!1615556 () Bool)

(assert (=> b!2557662 (= e!1615556 (matchR!3556 (derivativeStep!2180 (derivativeStep!2180 lt!904151 (head!5818 tl!4068)) (head!5818 (tail!4093 tl!4068))) (tail!4093 (tail!4093 tl!4068))))))

(declare-fun b!2557663 () Bool)

(declare-fun res!1077062 () Bool)

(assert (=> b!2557663 (=> (not res!1077062) (not e!1615558))))

(assert (=> b!2557663 (= res!1077062 (not call!163458))))

(declare-fun b!2557664 () Bool)

(assert (=> b!2557664 (= e!1615554 (not (= (head!5818 (tail!4093 tl!4068)) (c!410113 (derivativeStep!2180 lt!904151 (head!5818 tl!4068))))))))

(declare-fun b!2557665 () Bool)

(declare-fun res!1077059 () Bool)

(assert (=> b!2557665 (=> res!1077059 e!1615554)))

(assert (=> b!2557665 (= res!1077059 (not (isEmpty!17030 (tail!4093 (tail!4093 tl!4068)))))))

(declare-fun b!2557666 () Bool)

(declare-fun e!1615557 () Bool)

(declare-fun lt!904319 () Bool)

(assert (=> b!2557666 (= e!1615557 (= lt!904319 call!163458))))

(declare-fun b!2557667 () Bool)

(assert (=> b!2557667 (= e!1615556 (nullable!2528 (derivativeStep!2180 lt!904151 (head!5818 tl!4068))))))

(declare-fun b!2557668 () Bool)

(declare-fun res!1077057 () Bool)

(assert (=> b!2557668 (=> res!1077057 e!1615555)))

(assert (=> b!2557668 (= res!1077057 e!1615558)))

(declare-fun res!1077060 () Bool)

(assert (=> b!2557668 (=> (not res!1077060) (not e!1615558))))

(assert (=> b!2557668 (= res!1077060 lt!904319)))

(declare-fun bm!163453 () Bool)

(assert (=> bm!163453 (= call!163458 (isEmpty!17030 (tail!4093 tl!4068)))))

(declare-fun b!2557669 () Bool)

(declare-fun res!1077058 () Bool)

(assert (=> b!2557669 (=> (not res!1077058) (not e!1615558))))

(assert (=> b!2557669 (= res!1077058 (isEmpty!17030 (tail!4093 (tail!4093 tl!4068))))))

(declare-fun b!2557670 () Bool)

(assert (=> b!2557670 (= e!1615555 e!1615553)))

(declare-fun res!1077061 () Bool)

(assert (=> b!2557670 (=> (not res!1077061) (not e!1615553))))

(assert (=> b!2557670 (= res!1077061 (not lt!904319))))

(declare-fun d!724721 () Bool)

(assert (=> d!724721 e!1615557))

(declare-fun c!410588 () Bool)

(assert (=> d!724721 (= c!410588 ((_ is EmptyExpr!7611) (derivativeStep!2180 lt!904151 (head!5818 tl!4068))))))

(assert (=> d!724721 (= lt!904319 e!1615556)))

(declare-fun c!410590 () Bool)

(assert (=> d!724721 (= c!410590 (isEmpty!17030 (tail!4093 tl!4068)))))

(assert (=> d!724721 (validRegex!3237 (derivativeStep!2180 lt!904151 (head!5818 tl!4068)))))

(assert (=> d!724721 (= (matchR!3556 (derivativeStep!2180 lt!904151 (head!5818 tl!4068)) (tail!4093 tl!4068)) lt!904319)))

(declare-fun b!2557671 () Bool)

(assert (=> b!2557671 (= e!1615552 (not lt!904319))))

(declare-fun b!2557672 () Bool)

(assert (=> b!2557672 (= e!1615557 e!1615552)))

(declare-fun c!410589 () Bool)

(assert (=> b!2557672 (= c!410589 ((_ is EmptyLang!7611) (derivativeStep!2180 lt!904151 (head!5818 tl!4068))))))

(assert (= (and d!724721 c!410590) b!2557667))

(assert (= (and d!724721 (not c!410590)) b!2557662))

(assert (= (and d!724721 c!410588) b!2557666))

(assert (= (and d!724721 (not c!410588)) b!2557672))

(assert (= (and b!2557672 c!410589) b!2557671))

(assert (= (and b!2557672 (not c!410589)) b!2557659))

(assert (= (and b!2557659 (not res!1077056)) b!2557668))

(assert (= (and b!2557668 res!1077060) b!2557663))

(assert (= (and b!2557663 res!1077062) b!2557669))

(assert (= (and b!2557669 res!1077058) b!2557661))

(assert (= (and b!2557668 (not res!1077057)) b!2557670))

(assert (= (and b!2557670 res!1077061) b!2557660))

(assert (= (and b!2557660 (not res!1077055)) b!2557665))

(assert (= (and b!2557665 (not res!1077059)) b!2557664))

(assert (= (or b!2557666 b!2557660 b!2557663) bm!163453))

(assert (=> b!2557662 m!2897763))

(assert (=> b!2557662 m!2898709))

(assert (=> b!2557662 m!2897831))

(assert (=> b!2557662 m!2898709))

(declare-fun m!2898775 () Bool)

(assert (=> b!2557662 m!2898775))

(assert (=> b!2557662 m!2897763))

(assert (=> b!2557662 m!2898713))

(assert (=> b!2557662 m!2898775))

(assert (=> b!2557662 m!2898713))

(declare-fun m!2898777 () Bool)

(assert (=> b!2557662 m!2898777))

(assert (=> b!2557661 m!2897763))

(assert (=> b!2557661 m!2898709))

(assert (=> bm!163453 m!2897763))

(assert (=> bm!163453 m!2897769))

(assert (=> d!724721 m!2897763))

(assert (=> d!724721 m!2897769))

(assert (=> d!724721 m!2897831))

(declare-fun m!2898779 () Bool)

(assert (=> d!724721 m!2898779))

(assert (=> b!2557669 m!2897763))

(assert (=> b!2557669 m!2898713))

(assert (=> b!2557669 m!2898713))

(assert (=> b!2557669 m!2898719))

(assert (=> b!2557665 m!2897763))

(assert (=> b!2557665 m!2898713))

(assert (=> b!2557665 m!2898713))

(assert (=> b!2557665 m!2898719))

(assert (=> b!2557667 m!2897831))

(declare-fun m!2898781 () Bool)

(assert (=> b!2557667 m!2898781))

(assert (=> b!2557664 m!2897763))

(assert (=> b!2557664 m!2898709))

(assert (=> b!2556402 d!724721))

(declare-fun b!2557690 () Bool)

(declare-fun e!1615565 () Regex!7611)

(declare-fun e!1615566 () Regex!7611)

(assert (=> b!2557690 (= e!1615565 e!1615566)))

(declare-fun c!410592 () Bool)

(assert (=> b!2557690 (= c!410592 ((_ is ElementMatch!7611) lt!904151))))

(declare-fun b!2557691 () Bool)

(declare-fun c!410595 () Bool)

(assert (=> b!2557691 (= c!410595 (nullable!2528 (regOne!15734 lt!904151)))))

(declare-fun e!1615564 () Regex!7611)

(declare-fun e!1615568 () Regex!7611)

(assert (=> b!2557691 (= e!1615564 e!1615568)))

(declare-fun b!2557692 () Bool)

(declare-fun call!163459 () Regex!7611)

(assert (=> b!2557692 (= e!1615568 (Union!7611 (Concat!12307 call!163459 (regTwo!15734 lt!904151)) EmptyLang!7611))))

(declare-fun b!2557693 () Bool)

(declare-fun e!1615567 () Regex!7611)

(declare-fun call!163460 () Regex!7611)

(declare-fun call!163462 () Regex!7611)

(assert (=> b!2557693 (= e!1615567 (Union!7611 call!163460 call!163462))))

(declare-fun bm!163454 () Bool)

(declare-fun c!410594 () Bool)

(assert (=> bm!163454 (= call!163460 (derivativeStep!2180 (ite c!410594 (regOne!15735 lt!904151) (regTwo!15734 lt!904151)) (head!5818 tl!4068)))))

(declare-fun bm!163455 () Bool)

(declare-fun call!163461 () Regex!7611)

(assert (=> bm!163455 (= call!163459 call!163461)))

(declare-fun bm!163456 () Bool)

(assert (=> bm!163456 (= call!163461 call!163462)))

(declare-fun bm!163457 () Bool)

(declare-fun c!410593 () Bool)

(assert (=> bm!163457 (= call!163462 (derivativeStep!2180 (ite c!410594 (regTwo!15735 lt!904151) (ite c!410593 (reg!7940 lt!904151) (regOne!15734 lt!904151))) (head!5818 tl!4068)))))

(declare-fun b!2557694 () Bool)

(assert (=> b!2557694 (= e!1615567 e!1615564)))

(assert (=> b!2557694 (= c!410593 ((_ is Star!7611) lt!904151))))

(declare-fun b!2557695 () Bool)

(assert (=> b!2557695 (= e!1615566 (ite (= (head!5818 tl!4068) (c!410113 lt!904151)) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557696 () Bool)

(assert (=> b!2557696 (= e!1615564 (Concat!12307 call!163461 lt!904151))))

(declare-fun b!2557697 () Bool)

(assert (=> b!2557697 (= e!1615565 EmptyLang!7611)))

(declare-fun b!2557698 () Bool)

(assert (=> b!2557698 (= e!1615568 (Union!7611 (Concat!12307 call!163459 (regTwo!15734 lt!904151)) call!163460))))

(declare-fun b!2557699 () Bool)

(assert (=> b!2557699 (= c!410594 ((_ is Union!7611) lt!904151))))

(assert (=> b!2557699 (= e!1615566 e!1615567)))

(declare-fun d!724723 () Bool)

(declare-fun lt!904320 () Regex!7611)

(assert (=> d!724723 (validRegex!3237 lt!904320)))

(assert (=> d!724723 (= lt!904320 e!1615565)))

(declare-fun c!410591 () Bool)

(assert (=> d!724723 (= c!410591 (or ((_ is EmptyExpr!7611) lt!904151) ((_ is EmptyLang!7611) lt!904151)))))

(assert (=> d!724723 (validRegex!3237 lt!904151)))

(assert (=> d!724723 (= (derivativeStep!2180 lt!904151 (head!5818 tl!4068)) lt!904320)))

(assert (= (and d!724723 c!410591) b!2557697))

(assert (= (and d!724723 (not c!410591)) b!2557690))

(assert (= (and b!2557690 c!410592) b!2557695))

(assert (= (and b!2557690 (not c!410592)) b!2557699))

(assert (= (and b!2557699 c!410594) b!2557693))

(assert (= (and b!2557699 (not c!410594)) b!2557694))

(assert (= (and b!2557694 c!410593) b!2557696))

(assert (= (and b!2557694 (not c!410593)) b!2557691))

(assert (= (and b!2557691 c!410595) b!2557698))

(assert (= (and b!2557691 (not c!410595)) b!2557692))

(assert (= (or b!2557698 b!2557692) bm!163455))

(assert (= (or b!2557696 bm!163455) bm!163456))

(assert (= (or b!2557693 bm!163456) bm!163457))

(assert (= (or b!2557693 b!2557698) bm!163454))

(declare-fun m!2898783 () Bool)

(assert (=> b!2557691 m!2898783))

(assert (=> bm!163454 m!2897759))

(declare-fun m!2898785 () Bool)

(assert (=> bm!163454 m!2898785))

(assert (=> bm!163457 m!2897759))

(declare-fun m!2898787 () Bool)

(assert (=> bm!163457 m!2898787))

(declare-fun m!2898789 () Bool)

(assert (=> d!724723 m!2898789))

(assert (=> d!724723 m!2897789))

(assert (=> b!2556402 d!724723))

(assert (=> b!2556402 d!724547))

(assert (=> b!2556402 d!724505))

(declare-fun b!2557700 () Bool)

(declare-fun e!1615570 () Regex!7611)

(declare-fun e!1615571 () Regex!7611)

(assert (=> b!2557700 (= e!1615570 e!1615571)))

(declare-fun c!410597 () Bool)

(assert (=> b!2557700 (= c!410597 ((_ is ElementMatch!7611) (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))))))

(declare-fun b!2557701 () Bool)

(declare-fun c!410600 () Bool)

(assert (=> b!2557701 (= c!410600 (nullable!2528 (regOne!15734 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))))

(declare-fun e!1615569 () Regex!7611)

(declare-fun e!1615573 () Regex!7611)

(assert (=> b!2557701 (= e!1615569 e!1615573)))

(declare-fun call!163463 () Regex!7611)

(declare-fun b!2557702 () Bool)

(assert (=> b!2557702 (= e!1615573 (Union!7611 (Concat!12307 call!163463 (regTwo!15734 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))) EmptyLang!7611))))

(declare-fun b!2557703 () Bool)

(declare-fun e!1615572 () Regex!7611)

(declare-fun call!163464 () Regex!7611)

(declare-fun call!163466 () Regex!7611)

(assert (=> b!2557703 (= e!1615572 (Union!7611 call!163464 call!163466))))

(declare-fun bm!163458 () Bool)

(declare-fun c!410599 () Bool)

(assert (=> bm!163458 (= call!163464 (derivativeStep!2180 (ite c!410599 (regOne!15735 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))) (regTwo!15734 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))) c!14016))))

(declare-fun bm!163459 () Bool)

(declare-fun call!163465 () Regex!7611)

(assert (=> bm!163459 (= call!163463 call!163465)))

(declare-fun bm!163460 () Bool)

(assert (=> bm!163460 (= call!163465 call!163466)))

(declare-fun bm!163461 () Bool)

(declare-fun c!410598 () Bool)

(assert (=> bm!163461 (= call!163466 (derivativeStep!2180 (ite c!410599 (regTwo!15735 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))) (ite c!410598 (reg!7940 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))) (regOne!15734 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))))) c!14016))))

(declare-fun b!2557704 () Bool)

(assert (=> b!2557704 (= e!1615572 e!1615569)))

(assert (=> b!2557704 (= c!410598 ((_ is Star!7611) (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))))))

(declare-fun b!2557705 () Bool)

(assert (=> b!2557705 (= e!1615571 (ite (= c!14016 (c!410113 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557706 () Bool)

(assert (=> b!2557706 (= e!1615569 (Concat!12307 call!163465 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))))))

(declare-fun b!2557707 () Bool)

(assert (=> b!2557707 (= e!1615570 EmptyLang!7611)))

(declare-fun b!2557708 () Bool)

(assert (=> b!2557708 (= e!1615573 (Union!7611 (Concat!12307 call!163463 (regTwo!15734 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))) call!163464))))

(declare-fun b!2557709 () Bool)

(assert (=> b!2557709 (= c!410599 ((_ is Union!7611) (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))))))

(assert (=> b!2557709 (= e!1615571 e!1615572)))

(declare-fun d!724725 () Bool)

(declare-fun lt!904321 () Regex!7611)

(assert (=> d!724725 (validRegex!3237 lt!904321)))

(assert (=> d!724725 (= lt!904321 e!1615570)))

(declare-fun c!410596 () Bool)

(assert (=> d!724725 (= c!410596 (or ((_ is EmptyExpr!7611) (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))) ((_ is EmptyLang!7611) (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))))

(assert (=> d!724725 (validRegex!3237 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))

(assert (=> d!724725 (= (derivativeStep!2180 (ite c!410250 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))) c!14016) lt!904321)))

(assert (= (and d!724725 c!410596) b!2557707))

(assert (= (and d!724725 (not c!410596)) b!2557700))

(assert (= (and b!2557700 c!410597) b!2557705))

(assert (= (and b!2557700 (not c!410597)) b!2557709))

(assert (= (and b!2557709 c!410599) b!2557703))

(assert (= (and b!2557709 (not c!410599)) b!2557704))

(assert (= (and b!2557704 c!410598) b!2557706))

(assert (= (and b!2557704 (not c!410598)) b!2557701))

(assert (= (and b!2557701 c!410600) b!2557708))

(assert (= (and b!2557701 (not c!410600)) b!2557702))

(assert (= (or b!2557708 b!2557702) bm!163459))

(assert (= (or b!2557706 bm!163459) bm!163460))

(assert (= (or b!2557703 bm!163460) bm!163461))

(assert (= (or b!2557703 b!2557708) bm!163458))

(declare-fun m!2898791 () Bool)

(assert (=> b!2557701 m!2898791))

(declare-fun m!2898793 () Bool)

(assert (=> bm!163458 m!2898793))

(declare-fun m!2898795 () Bool)

(assert (=> bm!163461 m!2898795))

(declare-fun m!2898797 () Bool)

(assert (=> d!724725 m!2898797))

(declare-fun m!2898799 () Bool)

(assert (=> d!724725 m!2898799))

(assert (=> bm!163200 d!724725))

(assert (=> b!2556059 d!724493))

(declare-fun d!724727 () Bool)

(assert (=> d!724727 (= (nullable!2528 (regOne!15734 (regTwo!15734 r!27340))) (nullableFct!753 (regOne!15734 (regTwo!15734 r!27340))))))

(declare-fun bs!469753 () Bool)

(assert (= bs!469753 d!724727))

(declare-fun m!2898801 () Bool)

(assert (=> bs!469753 m!2898801))

(assert (=> b!2556390 d!724727))

(declare-fun d!724729 () Bool)

(assert (=> d!724729 (= (nullable!2528 (regTwo!15734 r!27340)) (nullableFct!753 (regTwo!15734 r!27340)))))

(declare-fun bs!469754 () Bool)

(assert (= bs!469754 d!724729))

(declare-fun m!2898803 () Bool)

(assert (=> bs!469754 m!2898803))

(assert (=> b!2556190 d!724729))

(assert (=> b!2556625 d!724523))

(assert (=> d!724325 d!724333))

(declare-fun d!724731 () Bool)

(declare-fun e!1615576 () Bool)

(assert (=> d!724731 e!1615576))

(declare-fun res!1077065 () Bool)

(assert (=> d!724731 (=> res!1077065 e!1615576)))

(assert (=> d!724731 (= res!1077065 (matchR!3556 lt!904151 tl!4068))))

(assert (=> d!724731 true))

(declare-fun _$116!337 () Unit!43407)

(assert (=> d!724731 (= (choose!15092 lt!904151 lt!904149 tl!4068) _$116!337)))

(declare-fun b!2557712 () Bool)

(assert (=> b!2557712 (= e!1615576 (matchR!3556 lt!904149 tl!4068))))

(assert (= (and d!724731 (not res!1077065)) b!2557712))

(assert (=> d!724731 m!2897547))

(assert (=> b!2557712 m!2897559))

(assert (=> d!724325 d!724731))

(declare-fun c!410601 () Bool)

(declare-fun call!163467 () Bool)

(declare-fun bm!163462 () Bool)

(declare-fun c!410602 () Bool)

(assert (=> bm!163462 (= call!163467 (validRegex!3237 (ite c!410602 (reg!7940 lt!904151) (ite c!410601 (regOne!15735 lt!904151) (regTwo!15734 lt!904151)))))))

(declare-fun d!724733 () Bool)

(declare-fun res!1077069 () Bool)

(declare-fun e!1615582 () Bool)

(assert (=> d!724733 (=> res!1077069 e!1615582)))

(assert (=> d!724733 (= res!1077069 ((_ is ElementMatch!7611) lt!904151))))

(assert (=> d!724733 (= (validRegex!3237 lt!904151) e!1615582)))

(declare-fun b!2557713 () Bool)

(declare-fun e!1615578 () Bool)

(assert (=> b!2557713 (= e!1615582 e!1615578)))

(assert (=> b!2557713 (= c!410602 ((_ is Star!7611) lt!904151))))

(declare-fun b!2557714 () Bool)

(declare-fun e!1615579 () Bool)

(declare-fun call!163469 () Bool)

(assert (=> b!2557714 (= e!1615579 call!163469)))

(declare-fun b!2557715 () Bool)

(declare-fun e!1615577 () Bool)

(declare-fun call!163468 () Bool)

(assert (=> b!2557715 (= e!1615577 call!163468)))

(declare-fun b!2557716 () Bool)

(declare-fun e!1615580 () Bool)

(assert (=> b!2557716 (= e!1615580 e!1615577)))

(declare-fun res!1077066 () Bool)

(assert (=> b!2557716 (=> (not res!1077066) (not e!1615577))))

(assert (=> b!2557716 (= res!1077066 call!163469)))

(declare-fun b!2557717 () Bool)

(declare-fun res!1077067 () Bool)

(assert (=> b!2557717 (=> res!1077067 e!1615580)))

(assert (=> b!2557717 (= res!1077067 (not ((_ is Concat!12307) lt!904151)))))

(declare-fun e!1615583 () Bool)

(assert (=> b!2557717 (= e!1615583 e!1615580)))

(declare-fun bm!163463 () Bool)

(assert (=> bm!163463 (= call!163469 (validRegex!3237 (ite c!410601 (regTwo!15735 lt!904151) (regOne!15734 lt!904151))))))

(declare-fun bm!163464 () Bool)

(assert (=> bm!163464 (= call!163468 call!163467)))

(declare-fun b!2557718 () Bool)

(declare-fun e!1615581 () Bool)

(assert (=> b!2557718 (= e!1615581 call!163467)))

(declare-fun b!2557719 () Bool)

(declare-fun res!1077070 () Bool)

(assert (=> b!2557719 (=> (not res!1077070) (not e!1615579))))

(assert (=> b!2557719 (= res!1077070 call!163468)))

(assert (=> b!2557719 (= e!1615583 e!1615579)))

(declare-fun b!2557720 () Bool)

(assert (=> b!2557720 (= e!1615578 e!1615583)))

(assert (=> b!2557720 (= c!410601 ((_ is Union!7611) lt!904151))))

(declare-fun b!2557721 () Bool)

(assert (=> b!2557721 (= e!1615578 e!1615581)))

(declare-fun res!1077068 () Bool)

(assert (=> b!2557721 (= res!1077068 (not (nullable!2528 (reg!7940 lt!904151))))))

(assert (=> b!2557721 (=> (not res!1077068) (not e!1615581))))

(assert (= (and d!724733 (not res!1077069)) b!2557713))

(assert (= (and b!2557713 c!410602) b!2557721))

(assert (= (and b!2557713 (not c!410602)) b!2557720))

(assert (= (and b!2557721 res!1077068) b!2557718))

(assert (= (and b!2557720 c!410601) b!2557719))

(assert (= (and b!2557720 (not c!410601)) b!2557717))

(assert (= (and b!2557719 res!1077070) b!2557714))

(assert (= (and b!2557717 (not res!1077067)) b!2557716))

(assert (= (and b!2557716 res!1077066) b!2557715))

(assert (= (or b!2557719 b!2557715) bm!163464))

(assert (= (or b!2557714 b!2557716) bm!163463))

(assert (= (or b!2557718 bm!163464) bm!163462))

(declare-fun m!2898805 () Bool)

(assert (=> bm!163462 m!2898805))

(declare-fun m!2898807 () Bool)

(assert (=> bm!163463 m!2898807))

(declare-fun m!2898809 () Bool)

(assert (=> b!2557721 m!2898809))

(assert (=> d!724325 d!724733))

(declare-fun d!724735 () Bool)

(assert (not d!724735))

(assert (=> b!2556335 d!724735))

(declare-fun d!724737 () Bool)

(assert (not d!724737))

(assert (=> b!2556335 d!724737))

(assert (=> b!2556335 d!724493))

(assert (=> b!2556335 d!724495))

(declare-fun b!2557722 () Bool)

(declare-fun c!410603 () Bool)

(assert (=> b!2557722 (= c!410603 ((_ is EmptyLang!7611) (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))))))

(declare-fun e!1615584 () Int)

(declare-fun e!1615586 () Int)

(assert (=> b!2557722 (= e!1615584 e!1615586)))

(declare-fun d!724739 () Bool)

(declare-fun lt!904322 () Int)

(assert (=> d!724739 (>= lt!904322 0)))

(declare-fun e!1615588 () Int)

(assert (=> d!724739 (= lt!904322 e!1615588)))

(declare-fun c!410605 () Bool)

(assert (=> d!724739 (= c!410605 ((_ is ElementMatch!7611) (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))))))

(assert (=> d!724739 (= (RegexPrimitiveSize!120 (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))) lt!904322)))

(declare-fun b!2557723 () Bool)

(declare-fun call!163472 () Int)

(declare-fun call!163471 () Int)

(assert (=> b!2557723 (= e!1615586 (+ 1 call!163472 call!163471))))

(declare-fun bm!163465 () Bool)

(declare-fun call!163470 () Int)

(assert (=> bm!163465 (= call!163472 call!163470)))

(declare-fun b!2557724 () Bool)

(assert (=> b!2557724 (= e!1615586 0)))

(declare-fun b!2557725 () Bool)

(declare-fun e!1615585 () Int)

(assert (=> b!2557725 (= e!1615585 e!1615584)))

(declare-fun c!410604 () Bool)

(assert (=> b!2557725 (= c!410604 ((_ is Star!7611) (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))))))

(declare-fun b!2557726 () Bool)

(declare-fun e!1615587 () Int)

(assert (=> b!2557726 (= e!1615588 e!1615587)))

(declare-fun c!410607 () Bool)

(assert (=> b!2557726 (= c!410607 ((_ is Concat!12307) (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))))))

(declare-fun b!2557727 () Bool)

(declare-fun c!410606 () Bool)

(assert (=> b!2557727 (= c!410606 ((_ is EmptyExpr!7611) (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))))))

(assert (=> b!2557727 (= e!1615587 e!1615585)))

(declare-fun b!2557728 () Bool)

(assert (=> b!2557728 (= e!1615585 0)))

(declare-fun b!2557729 () Bool)

(assert (=> b!2557729 (= e!1615587 (+ 1 call!163471 call!163470))))

(declare-fun bm!163466 () Bool)

(assert (=> bm!163466 (= call!163471 (RegexPrimitiveSize!120 (ite c!410607 (regOne!15734 (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))) (regTwo!15735 (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))))))))

(declare-fun bm!163467 () Bool)

(assert (=> bm!163467 (= call!163470 (RegexPrimitiveSize!120 (ite c!410607 (regTwo!15734 (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))) (ite c!410604 (reg!7940 (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340))) (regOne!15735 (ite c!410185 (regOne!15734 r!27340) (regTwo!15735 r!27340)))))))))

(declare-fun b!2557730 () Bool)

(assert (=> b!2557730 (= e!1615584 (+ 1 call!163472))))

(declare-fun b!2557731 () Bool)

(assert (=> b!2557731 (= e!1615588 1)))

(assert (= (and d!724739 c!410605) b!2557731))

(assert (= (and d!724739 (not c!410605)) b!2557726))

(assert (= (and b!2557726 c!410607) b!2557729))

(assert (= (and b!2557726 (not c!410607)) b!2557727))

(assert (= (and b!2557727 c!410606) b!2557728))

(assert (= (and b!2557727 (not c!410606)) b!2557725))

(assert (= (and b!2557725 c!410604) b!2557730))

(assert (= (and b!2557725 (not c!410604)) b!2557722))

(assert (= (and b!2557722 c!410603) b!2557724))

(assert (= (and b!2557722 (not c!410603)) b!2557723))

(assert (= (or b!2557730 b!2557723) bm!163465))

(assert (= (or b!2557729 bm!163465) bm!163467))

(assert (= (or b!2557729 b!2557723) bm!163466))

(declare-fun m!2898811 () Bool)

(assert (=> bm!163466 m!2898811))

(declare-fun m!2898813 () Bool)

(assert (=> bm!163467 m!2898813))

(assert (=> bm!163159 d!724739))

(assert (=> b!2556436 d!724533))

(declare-fun d!724741 () Bool)

(assert (=> d!724741 (= (nullable!2528 lt!904152) (nullableFct!753 lt!904152))))

(declare-fun bs!469755 () Bool)

(assert (= bs!469755 d!724741))

(declare-fun m!2898815 () Bool)

(assert (=> bs!469755 m!2898815))

(assert (=> b!2556324 d!724741))

(declare-fun d!724743 () Bool)

(declare-fun lt!904323 () Regex!7611)

(assert (=> d!724743 (validRegex!3237 lt!904323)))

(declare-fun e!1615589 () Regex!7611)

(assert (=> d!724743 (= lt!904323 e!1615589)))

(declare-fun c!410608 () Bool)

(assert (=> d!724743 (= c!410608 ((_ is Cons!29576) (t!211375 (_1!17334 lt!904154))))))

(assert (=> d!724743 (validRegex!3237 (derivativeStep!2180 lt!904156 (h!34996 (_1!17334 lt!904154))))))

(assert (=> d!724743 (= (derivative!306 (derivativeStep!2180 lt!904156 (h!34996 (_1!17334 lt!904154))) (t!211375 (_1!17334 lt!904154))) lt!904323)))

(declare-fun b!2557732 () Bool)

(assert (=> b!2557732 (= e!1615589 (derivative!306 (derivativeStep!2180 (derivativeStep!2180 lt!904156 (h!34996 (_1!17334 lt!904154))) (h!34996 (t!211375 (_1!17334 lt!904154)))) (t!211375 (t!211375 (_1!17334 lt!904154)))))))

(declare-fun b!2557733 () Bool)

(assert (=> b!2557733 (= e!1615589 (derivativeStep!2180 lt!904156 (h!34996 (_1!17334 lt!904154))))))

(assert (= (and d!724743 c!410608) b!2557732))

(assert (= (and d!724743 (not c!410608)) b!2557733))

(declare-fun m!2898817 () Bool)

(assert (=> d!724743 m!2898817))

(assert (=> d!724743 m!2897623))

(declare-fun m!2898819 () Bool)

(assert (=> d!724743 m!2898819))

(assert (=> b!2557732 m!2897623))

(declare-fun m!2898821 () Bool)

(assert (=> b!2557732 m!2898821))

(assert (=> b!2557732 m!2898821))

(declare-fun m!2898823 () Bool)

(assert (=> b!2557732 m!2898823))

(assert (=> b!2556078 d!724743))

(declare-fun b!2557734 () Bool)

(declare-fun e!1615591 () Regex!7611)

(declare-fun e!1615592 () Regex!7611)

(assert (=> b!2557734 (= e!1615591 e!1615592)))

(declare-fun c!410610 () Bool)

(assert (=> b!2557734 (= c!410610 ((_ is ElementMatch!7611) lt!904156))))

(declare-fun b!2557735 () Bool)

(declare-fun c!410613 () Bool)

(assert (=> b!2557735 (= c!410613 (nullable!2528 (regOne!15734 lt!904156)))))

(declare-fun e!1615590 () Regex!7611)

(declare-fun e!1615594 () Regex!7611)

(assert (=> b!2557735 (= e!1615590 e!1615594)))

(declare-fun b!2557736 () Bool)

(declare-fun call!163473 () Regex!7611)

(assert (=> b!2557736 (= e!1615594 (Union!7611 (Concat!12307 call!163473 (regTwo!15734 lt!904156)) EmptyLang!7611))))

(declare-fun b!2557737 () Bool)

(declare-fun e!1615593 () Regex!7611)

(declare-fun call!163474 () Regex!7611)

(declare-fun call!163476 () Regex!7611)

(assert (=> b!2557737 (= e!1615593 (Union!7611 call!163474 call!163476))))

(declare-fun bm!163468 () Bool)

(declare-fun c!410612 () Bool)

(assert (=> bm!163468 (= call!163474 (derivativeStep!2180 (ite c!410612 (regOne!15735 lt!904156) (regTwo!15734 lt!904156)) (h!34996 (_1!17334 lt!904154))))))

(declare-fun bm!163469 () Bool)

(declare-fun call!163475 () Regex!7611)

(assert (=> bm!163469 (= call!163473 call!163475)))

(declare-fun bm!163470 () Bool)

(assert (=> bm!163470 (= call!163475 call!163476)))

(declare-fun bm!163471 () Bool)

(declare-fun c!410611 () Bool)

(assert (=> bm!163471 (= call!163476 (derivativeStep!2180 (ite c!410612 (regTwo!15735 lt!904156) (ite c!410611 (reg!7940 lt!904156) (regOne!15734 lt!904156))) (h!34996 (_1!17334 lt!904154))))))

(declare-fun b!2557738 () Bool)

(assert (=> b!2557738 (= e!1615593 e!1615590)))

(assert (=> b!2557738 (= c!410611 ((_ is Star!7611) lt!904156))))

(declare-fun b!2557739 () Bool)

(assert (=> b!2557739 (= e!1615592 (ite (= (h!34996 (_1!17334 lt!904154)) (c!410113 lt!904156)) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557740 () Bool)

(assert (=> b!2557740 (= e!1615590 (Concat!12307 call!163475 lt!904156))))

(declare-fun b!2557741 () Bool)

(assert (=> b!2557741 (= e!1615591 EmptyLang!7611)))

(declare-fun b!2557742 () Bool)

(assert (=> b!2557742 (= e!1615594 (Union!7611 (Concat!12307 call!163473 (regTwo!15734 lt!904156)) call!163474))))

(declare-fun b!2557743 () Bool)

(assert (=> b!2557743 (= c!410612 ((_ is Union!7611) lt!904156))))

(assert (=> b!2557743 (= e!1615592 e!1615593)))

(declare-fun d!724745 () Bool)

(declare-fun lt!904324 () Regex!7611)

(assert (=> d!724745 (validRegex!3237 lt!904324)))

(assert (=> d!724745 (= lt!904324 e!1615591)))

(declare-fun c!410609 () Bool)

(assert (=> d!724745 (= c!410609 (or ((_ is EmptyExpr!7611) lt!904156) ((_ is EmptyLang!7611) lt!904156)))))

(assert (=> d!724745 (validRegex!3237 lt!904156)))

(assert (=> d!724745 (= (derivativeStep!2180 lt!904156 (h!34996 (_1!17334 lt!904154))) lt!904324)))

(assert (= (and d!724745 c!410609) b!2557741))

(assert (= (and d!724745 (not c!410609)) b!2557734))

(assert (= (and b!2557734 c!410610) b!2557739))

(assert (= (and b!2557734 (not c!410610)) b!2557743))

(assert (= (and b!2557743 c!410612) b!2557737))

(assert (= (and b!2557743 (not c!410612)) b!2557738))

(assert (= (and b!2557738 c!410611) b!2557740))

(assert (= (and b!2557738 (not c!410611)) b!2557735))

(assert (= (and b!2557735 c!410613) b!2557742))

(assert (= (and b!2557735 (not c!410613)) b!2557736))

(assert (= (or b!2557742 b!2557736) bm!163469))

(assert (= (or b!2557740 bm!163469) bm!163470))

(assert (= (or b!2557737 bm!163470) bm!163471))

(assert (= (or b!2557737 b!2557742) bm!163468))

(assert (=> b!2557735 m!2898315))

(declare-fun m!2898825 () Bool)

(assert (=> bm!163468 m!2898825))

(declare-fun m!2898827 () Bool)

(assert (=> bm!163471 m!2898827))

(declare-fun m!2898829 () Bool)

(assert (=> d!724745 m!2898829))

(assert (=> d!724745 m!2897621))

(assert (=> b!2556078 d!724745))

(assert (=> b!2556368 d!724655))

(declare-fun d!724747 () Bool)

(assert (=> d!724747 (= (isDefined!4734 (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) Nil!29576 tl!4068 tl!4068)) (not (isEmpty!17032 (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) Nil!29576 tl!4068 tl!4068))))))

(declare-fun bs!469756 () Bool)

(assert (= bs!469756 d!724747))

(assert (=> bs!469756 m!2897529))

(declare-fun m!2898831 () Bool)

(assert (=> bs!469756 m!2898831))

(assert (=> d!724369 d!724747))

(assert (=> d!724369 d!724349))

(declare-fun d!724749 () Bool)

(assert (=> d!724749 (isDefined!4734 (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) Nil!29576 tl!4068 tl!4068))))

(assert (=> d!724749 true))

(declare-fun _$122!337 () Unit!43407)

(assert (=> d!724749 (= (choose!15093 lt!904156 (regTwo!15734 r!27340) tl!4068) _$122!337)))

(declare-fun bs!469757 () Bool)

(assert (= bs!469757 d!724749))

(assert (=> bs!469757 m!2897529))

(assert (=> bs!469757 m!2897529))

(assert (=> bs!469757 m!2897969))

(assert (=> d!724369 d!724749))

(assert (=> d!724369 d!724543))

(declare-fun d!724751 () Bool)

(declare-fun c!410616 () Bool)

(assert (=> d!724751 (= c!410616 ((_ is Nil!29576) lt!904247))))

(declare-fun e!1615597 () (InoxSet C!15380))

(assert (=> d!724751 (= (content!4074 lt!904247) e!1615597)))

(declare-fun b!2557748 () Bool)

(assert (=> b!2557748 (= e!1615597 ((as const (Array C!15380 Bool)) false))))

(declare-fun b!2557749 () Bool)

(assert (=> b!2557749 (= e!1615597 ((_ map or) (store ((as const (Array C!15380 Bool)) false) (h!34996 lt!904247) true) (content!4074 (t!211375 lt!904247))))))

(assert (= (and d!724751 c!410616) b!2557748))

(assert (= (and d!724751 (not c!410616)) b!2557749))

(declare-fun m!2898833 () Bool)

(assert (=> b!2557749 m!2898833))

(declare-fun m!2898835 () Bool)

(assert (=> b!2557749 m!2898835))

(assert (=> d!724373 d!724751))

(declare-fun d!724753 () Bool)

(declare-fun c!410617 () Bool)

(assert (=> d!724753 (= c!410617 ((_ is Nil!29576) (_1!17334 lt!904154)))))

(declare-fun e!1615598 () (InoxSet C!15380))

(assert (=> d!724753 (= (content!4074 (_1!17334 lt!904154)) e!1615598)))

(declare-fun b!2557750 () Bool)

(assert (=> b!2557750 (= e!1615598 ((as const (Array C!15380 Bool)) false))))

(declare-fun b!2557751 () Bool)

(assert (=> b!2557751 (= e!1615598 ((_ map or) (store ((as const (Array C!15380 Bool)) false) (h!34996 (_1!17334 lt!904154)) true) (content!4074 (t!211375 (_1!17334 lt!904154)))))))

(assert (= (and d!724753 c!410617) b!2557750))

(assert (= (and d!724753 (not c!410617)) b!2557751))

(declare-fun m!2898837 () Bool)

(assert (=> b!2557751 m!2898837))

(assert (=> b!2557751 m!2898483))

(assert (=> d!724373 d!724753))

(declare-fun d!724755 () Bool)

(declare-fun c!410618 () Bool)

(assert (=> d!724755 (= c!410618 ((_ is Nil!29576) (_2!17334 lt!904154)))))

(declare-fun e!1615599 () (InoxSet C!15380))

(assert (=> d!724755 (= (content!4074 (_2!17334 lt!904154)) e!1615599)))

(declare-fun b!2557752 () Bool)

(assert (=> b!2557752 (= e!1615599 ((as const (Array C!15380 Bool)) false))))

(declare-fun b!2557753 () Bool)

(assert (=> b!2557753 (= e!1615599 ((_ map or) (store ((as const (Array C!15380 Bool)) false) (h!34996 (_2!17334 lt!904154)) true) (content!4074 (t!211375 (_2!17334 lt!904154)))))))

(assert (= (and d!724755 c!410618) b!2557752))

(assert (= (and d!724755 (not c!410618)) b!2557753))

(declare-fun m!2898839 () Bool)

(assert (=> b!2557753 m!2898839))

(declare-fun m!2898841 () Bool)

(assert (=> b!2557753 m!2898841))

(assert (=> d!724373 d!724755))

(declare-fun d!724757 () Bool)

(assert (=> d!724757 (= (isEmpty!17030 (_2!17334 lt!904154)) ((_ is Nil!29576) (_2!17334 lt!904154)))))

(assert (=> d!724291 d!724757))

(assert (=> d!724291 d!724717))

(declare-fun call!163477 () Bool)

(declare-fun c!410619 () Bool)

(declare-fun c!410620 () Bool)

(declare-fun bm!163472 () Bool)

(assert (=> bm!163472 (= call!163477 (validRegex!3237 (ite c!410620 (reg!7940 lt!904192) (ite c!410619 (regOne!15735 lt!904192) (regTwo!15734 lt!904192)))))))

(declare-fun d!724759 () Bool)

(declare-fun res!1077074 () Bool)

(declare-fun e!1615605 () Bool)

(assert (=> d!724759 (=> res!1077074 e!1615605)))

(assert (=> d!724759 (= res!1077074 ((_ is ElementMatch!7611) lt!904192))))

(assert (=> d!724759 (= (validRegex!3237 lt!904192) e!1615605)))

(declare-fun b!2557754 () Bool)

(declare-fun e!1615601 () Bool)

(assert (=> b!2557754 (= e!1615605 e!1615601)))

(assert (=> b!2557754 (= c!410620 ((_ is Star!7611) lt!904192))))

(declare-fun b!2557755 () Bool)

(declare-fun e!1615602 () Bool)

(declare-fun call!163479 () Bool)

(assert (=> b!2557755 (= e!1615602 call!163479)))

(declare-fun b!2557756 () Bool)

(declare-fun e!1615600 () Bool)

(declare-fun call!163478 () Bool)

(assert (=> b!2557756 (= e!1615600 call!163478)))

(declare-fun b!2557757 () Bool)

(declare-fun e!1615603 () Bool)

(assert (=> b!2557757 (= e!1615603 e!1615600)))

(declare-fun res!1077071 () Bool)

(assert (=> b!2557757 (=> (not res!1077071) (not e!1615600))))

(assert (=> b!2557757 (= res!1077071 call!163479)))

(declare-fun b!2557758 () Bool)

(declare-fun res!1077072 () Bool)

(assert (=> b!2557758 (=> res!1077072 e!1615603)))

(assert (=> b!2557758 (= res!1077072 (not ((_ is Concat!12307) lt!904192)))))

(declare-fun e!1615606 () Bool)

(assert (=> b!2557758 (= e!1615606 e!1615603)))

(declare-fun bm!163473 () Bool)

(assert (=> bm!163473 (= call!163479 (validRegex!3237 (ite c!410619 (regTwo!15735 lt!904192) (regOne!15734 lt!904192))))))

(declare-fun bm!163474 () Bool)

(assert (=> bm!163474 (= call!163478 call!163477)))

(declare-fun b!2557759 () Bool)

(declare-fun e!1615604 () Bool)

(assert (=> b!2557759 (= e!1615604 call!163477)))

(declare-fun b!2557760 () Bool)

(declare-fun res!1077075 () Bool)

(assert (=> b!2557760 (=> (not res!1077075) (not e!1615602))))

(assert (=> b!2557760 (= res!1077075 call!163478)))

(assert (=> b!2557760 (= e!1615606 e!1615602)))

(declare-fun b!2557761 () Bool)

(assert (=> b!2557761 (= e!1615601 e!1615606)))

(assert (=> b!2557761 (= c!410619 ((_ is Union!7611) lt!904192))))

(declare-fun b!2557762 () Bool)

(assert (=> b!2557762 (= e!1615601 e!1615604)))

(declare-fun res!1077073 () Bool)

(assert (=> b!2557762 (= res!1077073 (not (nullable!2528 (reg!7940 lt!904192))))))

(assert (=> b!2557762 (=> (not res!1077073) (not e!1615604))))

(assert (= (and d!724759 (not res!1077074)) b!2557754))

(assert (= (and b!2557754 c!410620) b!2557762))

(assert (= (and b!2557754 (not c!410620)) b!2557761))

(assert (= (and b!2557762 res!1077073) b!2557759))

(assert (= (and b!2557761 c!410619) b!2557760))

(assert (= (and b!2557761 (not c!410619)) b!2557758))

(assert (= (and b!2557760 res!1077075) b!2557755))

(assert (= (and b!2557758 (not res!1077072)) b!2557757))

(assert (= (and b!2557757 res!1077071) b!2557756))

(assert (= (or b!2557760 b!2557756) bm!163474))

(assert (= (or b!2557755 b!2557757) bm!163473))

(assert (= (or b!2557759 bm!163474) bm!163472))

(declare-fun m!2898843 () Bool)

(assert (=> bm!163472 m!2898843))

(declare-fun m!2898845 () Bool)

(assert (=> bm!163473 m!2898845))

(declare-fun m!2898847 () Bool)

(assert (=> b!2557762 m!2898847))

(assert (=> d!724297 d!724759))

(assert (=> d!724297 d!724375))

(declare-fun d!724761 () Bool)

(declare-fun lt!904325 () Regex!7611)

(assert (=> d!724761 (validRegex!3237 lt!904325)))

(declare-fun e!1615607 () Regex!7611)

(assert (=> d!724761 (= lt!904325 e!1615607)))

(declare-fun c!410621 () Bool)

(assert (=> d!724761 (= c!410621 ((_ is Cons!29576) (t!211375 tl!4068)))))

(assert (=> d!724761 (validRegex!3237 (derivativeStep!2180 lt!904152 (h!34996 tl!4068)))))

(assert (=> d!724761 (= (derivative!306 (derivativeStep!2180 lt!904152 (h!34996 tl!4068)) (t!211375 tl!4068)) lt!904325)))

(declare-fun b!2557763 () Bool)

(assert (=> b!2557763 (= e!1615607 (derivative!306 (derivativeStep!2180 (derivativeStep!2180 lt!904152 (h!34996 tl!4068)) (h!34996 (t!211375 tl!4068))) (t!211375 (t!211375 tl!4068))))))

(declare-fun b!2557764 () Bool)

(assert (=> b!2557764 (= e!1615607 (derivativeStep!2180 lt!904152 (h!34996 tl!4068)))))

(assert (= (and d!724761 c!410621) b!2557763))

(assert (= (and d!724761 (not c!410621)) b!2557764))

(declare-fun m!2898849 () Bool)

(assert (=> d!724761 m!2898849))

(assert (=> d!724761 m!2897775))

(declare-fun m!2898851 () Bool)

(assert (=> d!724761 m!2898851))

(assert (=> b!2557763 m!2897775))

(declare-fun m!2898853 () Bool)

(assert (=> b!2557763 m!2898853))

(assert (=> b!2557763 m!2898853))

(declare-fun m!2898855 () Bool)

(assert (=> b!2557763 m!2898855))

(assert (=> b!2556330 d!724761))

(declare-fun b!2557765 () Bool)

(declare-fun e!1615609 () Regex!7611)

(declare-fun e!1615610 () Regex!7611)

(assert (=> b!2557765 (= e!1615609 e!1615610)))

(declare-fun c!410623 () Bool)

(assert (=> b!2557765 (= c!410623 ((_ is ElementMatch!7611) lt!904152))))

(declare-fun b!2557766 () Bool)

(declare-fun c!410626 () Bool)

(assert (=> b!2557766 (= c!410626 (nullable!2528 (regOne!15734 lt!904152)))))

(declare-fun e!1615608 () Regex!7611)

(declare-fun e!1615612 () Regex!7611)

(assert (=> b!2557766 (= e!1615608 e!1615612)))

(declare-fun b!2557767 () Bool)

(declare-fun call!163480 () Regex!7611)

(assert (=> b!2557767 (= e!1615612 (Union!7611 (Concat!12307 call!163480 (regTwo!15734 lt!904152)) EmptyLang!7611))))

(declare-fun b!2557768 () Bool)

(declare-fun e!1615611 () Regex!7611)

(declare-fun call!163481 () Regex!7611)

(declare-fun call!163483 () Regex!7611)

(assert (=> b!2557768 (= e!1615611 (Union!7611 call!163481 call!163483))))

(declare-fun bm!163475 () Bool)

(declare-fun c!410625 () Bool)

(assert (=> bm!163475 (= call!163481 (derivativeStep!2180 (ite c!410625 (regOne!15735 lt!904152) (regTwo!15734 lt!904152)) (h!34996 tl!4068)))))

(declare-fun bm!163476 () Bool)

(declare-fun call!163482 () Regex!7611)

(assert (=> bm!163476 (= call!163480 call!163482)))

(declare-fun bm!163477 () Bool)

(assert (=> bm!163477 (= call!163482 call!163483)))

(declare-fun bm!163478 () Bool)

(declare-fun c!410624 () Bool)

(assert (=> bm!163478 (= call!163483 (derivativeStep!2180 (ite c!410625 (regTwo!15735 lt!904152) (ite c!410624 (reg!7940 lt!904152) (regOne!15734 lt!904152))) (h!34996 tl!4068)))))

(declare-fun b!2557769 () Bool)

(assert (=> b!2557769 (= e!1615611 e!1615608)))

(assert (=> b!2557769 (= c!410624 ((_ is Star!7611) lt!904152))))

(declare-fun b!2557770 () Bool)

(assert (=> b!2557770 (= e!1615610 (ite (= (h!34996 tl!4068) (c!410113 lt!904152)) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557771 () Bool)

(assert (=> b!2557771 (= e!1615608 (Concat!12307 call!163482 lt!904152))))

(declare-fun b!2557772 () Bool)

(assert (=> b!2557772 (= e!1615609 EmptyLang!7611)))

(declare-fun b!2557773 () Bool)

(assert (=> b!2557773 (= e!1615612 (Union!7611 (Concat!12307 call!163480 (regTwo!15734 lt!904152)) call!163481))))

(declare-fun b!2557774 () Bool)

(assert (=> b!2557774 (= c!410625 ((_ is Union!7611) lt!904152))))

(assert (=> b!2557774 (= e!1615610 e!1615611)))

(declare-fun d!724763 () Bool)

(declare-fun lt!904326 () Regex!7611)

(assert (=> d!724763 (validRegex!3237 lt!904326)))

(assert (=> d!724763 (= lt!904326 e!1615609)))

(declare-fun c!410622 () Bool)

(assert (=> d!724763 (= c!410622 (or ((_ is EmptyExpr!7611) lt!904152) ((_ is EmptyLang!7611) lt!904152)))))

(assert (=> d!724763 (validRegex!3237 lt!904152)))

(assert (=> d!724763 (= (derivativeStep!2180 lt!904152 (h!34996 tl!4068)) lt!904326)))

(assert (= (and d!724763 c!410622) b!2557772))

(assert (= (and d!724763 (not c!410622)) b!2557765))

(assert (= (and b!2557765 c!410623) b!2557770))

(assert (= (and b!2557765 (not c!410623)) b!2557774))

(assert (= (and b!2557774 c!410625) b!2557768))

(assert (= (and b!2557774 (not c!410625)) b!2557769))

(assert (= (and b!2557769 c!410624) b!2557771))

(assert (= (and b!2557769 (not c!410624)) b!2557766))

(assert (= (and b!2557766 c!410626) b!2557773))

(assert (= (and b!2557766 (not c!410626)) b!2557767))

(assert (= (or b!2557773 b!2557767) bm!163476))

(assert (= (or b!2557771 bm!163476) bm!163477))

(assert (= (or b!2557768 bm!163477) bm!163478))

(assert (= (or b!2557768 b!2557773) bm!163475))

(assert (=> b!2557766 m!2898723))

(declare-fun m!2898857 () Bool)

(assert (=> bm!163475 m!2898857))

(declare-fun m!2898859 () Bool)

(assert (=> bm!163478 m!2898859))

(declare-fun m!2898861 () Bool)

(assert (=> d!724763 m!2898861))

(assert (=> d!724763 m!2897749))

(assert (=> b!2556330 d!724763))

(assert (=> d!724317 d!724483))

(assert (=> d!724317 d!724703))

(declare-fun b!2557775 () Bool)

(declare-fun res!1077077 () Bool)

(declare-fun e!1615616 () Bool)

(assert (=> b!2557775 (=> res!1077077 e!1615616)))

(assert (=> b!2557775 (= res!1077077 (not ((_ is ElementMatch!7611) (regTwo!15734 r!27340))))))

(declare-fun e!1615613 () Bool)

(assert (=> b!2557775 (= e!1615613 e!1615616)))

(declare-fun b!2557776 () Bool)

(declare-fun e!1615614 () Bool)

(declare-fun e!1615615 () Bool)

(assert (=> b!2557776 (= e!1615614 e!1615615)))

(declare-fun res!1077076 () Bool)

(assert (=> b!2557776 (=> res!1077076 e!1615615)))

(declare-fun call!163484 () Bool)

(assert (=> b!2557776 (= res!1077076 call!163484)))

(declare-fun b!2557777 () Bool)

(declare-fun e!1615619 () Bool)

(assert (=> b!2557777 (= e!1615619 (= (head!5818 (_2!17334 (get!9296 lt!904240))) (c!410113 (regTwo!15734 r!27340))))))

(declare-fun b!2557778 () Bool)

(declare-fun e!1615617 () Bool)

(assert (=> b!2557778 (= e!1615617 (matchR!3556 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 (_2!17334 (get!9296 lt!904240)))) (tail!4093 (_2!17334 (get!9296 lt!904240)))))))

(declare-fun b!2557779 () Bool)

(declare-fun res!1077083 () Bool)

(assert (=> b!2557779 (=> (not res!1077083) (not e!1615619))))

(assert (=> b!2557779 (= res!1077083 (not call!163484))))

(declare-fun b!2557780 () Bool)

(assert (=> b!2557780 (= e!1615615 (not (= (head!5818 (_2!17334 (get!9296 lt!904240))) (c!410113 (regTwo!15734 r!27340)))))))

(declare-fun b!2557781 () Bool)

(declare-fun res!1077080 () Bool)

(assert (=> b!2557781 (=> res!1077080 e!1615615)))

(assert (=> b!2557781 (= res!1077080 (not (isEmpty!17030 (tail!4093 (_2!17334 (get!9296 lt!904240))))))))

(declare-fun b!2557782 () Bool)

(declare-fun e!1615618 () Bool)

(declare-fun lt!904327 () Bool)

(assert (=> b!2557782 (= e!1615618 (= lt!904327 call!163484))))

(declare-fun b!2557783 () Bool)

(assert (=> b!2557783 (= e!1615617 (nullable!2528 (regTwo!15734 r!27340)))))

(declare-fun b!2557784 () Bool)

(declare-fun res!1077078 () Bool)

(assert (=> b!2557784 (=> res!1077078 e!1615616)))

(assert (=> b!2557784 (= res!1077078 e!1615619)))

(declare-fun res!1077081 () Bool)

(assert (=> b!2557784 (=> (not res!1077081) (not e!1615619))))

(assert (=> b!2557784 (= res!1077081 lt!904327)))

(declare-fun bm!163479 () Bool)

(assert (=> bm!163479 (= call!163484 (isEmpty!17030 (_2!17334 (get!9296 lt!904240))))))

(declare-fun b!2557785 () Bool)

(declare-fun res!1077079 () Bool)

(assert (=> b!2557785 (=> (not res!1077079) (not e!1615619))))

(assert (=> b!2557785 (= res!1077079 (isEmpty!17030 (tail!4093 (_2!17334 (get!9296 lt!904240)))))))

(declare-fun b!2557786 () Bool)

(assert (=> b!2557786 (= e!1615616 e!1615614)))

(declare-fun res!1077082 () Bool)

(assert (=> b!2557786 (=> (not res!1077082) (not e!1615614))))

(assert (=> b!2557786 (= res!1077082 (not lt!904327))))

(declare-fun d!724765 () Bool)

(assert (=> d!724765 e!1615618))

(declare-fun c!410627 () Bool)

(assert (=> d!724765 (= c!410627 ((_ is EmptyExpr!7611) (regTwo!15734 r!27340)))))

(assert (=> d!724765 (= lt!904327 e!1615617)))

(declare-fun c!410629 () Bool)

(assert (=> d!724765 (= c!410629 (isEmpty!17030 (_2!17334 (get!9296 lt!904240))))))

(assert (=> d!724765 (validRegex!3237 (regTwo!15734 r!27340))))

(assert (=> d!724765 (= (matchR!3556 (regTwo!15734 r!27340) (_2!17334 (get!9296 lt!904240))) lt!904327)))

(declare-fun b!2557787 () Bool)

(assert (=> b!2557787 (= e!1615613 (not lt!904327))))

(declare-fun b!2557788 () Bool)

(assert (=> b!2557788 (= e!1615618 e!1615613)))

(declare-fun c!410628 () Bool)

(assert (=> b!2557788 (= c!410628 ((_ is EmptyLang!7611) (regTwo!15734 r!27340)))))

(assert (= (and d!724765 c!410629) b!2557783))

(assert (= (and d!724765 (not c!410629)) b!2557778))

(assert (= (and d!724765 c!410627) b!2557782))

(assert (= (and d!724765 (not c!410627)) b!2557788))

(assert (= (and b!2557788 c!410628) b!2557787))

(assert (= (and b!2557788 (not c!410628)) b!2557775))

(assert (= (and b!2557775 (not res!1077077)) b!2557784))

(assert (= (and b!2557784 res!1077081) b!2557779))

(assert (= (and b!2557779 res!1077083) b!2557785))

(assert (= (and b!2557785 res!1077079) b!2557777))

(assert (= (and b!2557784 (not res!1077078)) b!2557786))

(assert (= (and b!2557786 res!1077082) b!2557776))

(assert (= (and b!2557776 (not res!1077076)) b!2557781))

(assert (= (and b!2557781 (not res!1077080)) b!2557780))

(assert (= (or b!2557782 b!2557776 b!2557779) bm!163479))

(declare-fun m!2898863 () Bool)

(assert (=> b!2557778 m!2898863))

(assert (=> b!2557778 m!2898863))

(declare-fun m!2898865 () Bool)

(assert (=> b!2557778 m!2898865))

(declare-fun m!2898867 () Bool)

(assert (=> b!2557778 m!2898867))

(assert (=> b!2557778 m!2898865))

(assert (=> b!2557778 m!2898867))

(declare-fun m!2898869 () Bool)

(assert (=> b!2557778 m!2898869))

(assert (=> b!2557777 m!2898863))

(declare-fun m!2898871 () Bool)

(assert (=> bm!163479 m!2898871))

(assert (=> d!724765 m!2898871))

(assert (=> d!724765 m!2897671))

(assert (=> b!2557785 m!2898867))

(assert (=> b!2557785 m!2898867))

(declare-fun m!2898873 () Bool)

(assert (=> b!2557785 m!2898873))

(assert (=> b!2557781 m!2898867))

(assert (=> b!2557781 m!2898867))

(assert (=> b!2557781 m!2898873))

(assert (=> b!2557783 m!2897675))

(assert (=> b!2557780 m!2898863))

(assert (=> b!2556597 d!724765))

(assert (=> b!2556597 d!724563))

(assert (=> b!2556064 d!724605))

(assert (=> b!2556064 d!724495))

(declare-fun d!724767 () Bool)

(assert (=> d!724767 (= (nullable!2528 lt!904151) (nullableFct!753 lt!904151))))

(declare-fun bs!469758 () Bool)

(assert (= bs!469758 d!724767))

(declare-fun m!2898875 () Bool)

(assert (=> bs!469758 m!2898875))

(assert (=> b!2556407 d!724767))

(declare-fun b!2557789 () Bool)

(declare-fun e!1615621 () List!29676)

(assert (=> b!2557789 (= e!1615621 (t!211375 tl!4068))))

(declare-fun b!2557792 () Bool)

(declare-fun e!1615620 () Bool)

(declare-fun lt!904328 () List!29676)

(assert (=> b!2557792 (= e!1615620 (or (not (= (t!211375 tl!4068) Nil!29576)) (= lt!904328 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)))))))

(declare-fun d!724769 () Bool)

(assert (=> d!724769 e!1615620))

(declare-fun res!1077084 () Bool)

(assert (=> d!724769 (=> (not res!1077084) (not e!1615620))))

(assert (=> d!724769 (= res!1077084 (= (content!4074 lt!904328) ((_ map or) (content!4074 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576))) (content!4074 (t!211375 tl!4068)))))))

(assert (=> d!724769 (= lt!904328 e!1615621)))

(declare-fun c!410630 () Bool)

(assert (=> d!724769 (= c!410630 ((_ is Nil!29576) (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576))))))

(assert (=> d!724769 (= (++!7268 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (t!211375 tl!4068)) lt!904328)))

(declare-fun b!2557790 () Bool)

(assert (=> b!2557790 (= e!1615621 (Cons!29576 (h!34996 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576))) (++!7268 (t!211375 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576))) (t!211375 tl!4068))))))

(declare-fun b!2557791 () Bool)

(declare-fun res!1077085 () Bool)

(assert (=> b!2557791 (=> (not res!1077085) (not e!1615620))))

(assert (=> b!2557791 (= res!1077085 (= (size!22954 lt!904328) (+ (size!22954 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576))) (size!22954 (t!211375 tl!4068)))))))

(assert (= (and d!724769 c!410630) b!2557789))

(assert (= (and d!724769 (not c!410630)) b!2557790))

(assert (= (and d!724769 res!1077084) b!2557791))

(assert (= (and b!2557791 res!1077085) b!2557792))

(declare-fun m!2898877 () Bool)

(assert (=> d!724769 m!2898877))

(assert (=> d!724769 m!2897947))

(declare-fun m!2898879 () Bool)

(assert (=> d!724769 m!2898879))

(declare-fun m!2898881 () Bool)

(assert (=> d!724769 m!2898881))

(declare-fun m!2898883 () Bool)

(assert (=> b!2557790 m!2898883))

(declare-fun m!2898885 () Bool)

(assert (=> b!2557791 m!2898885))

(assert (=> b!2557791 m!2897947))

(declare-fun m!2898887 () Bool)

(assert (=> b!2557791 m!2898887))

(declare-fun m!2898889 () Bool)

(assert (=> b!2557791 m!2898889))

(assert (=> b!2556593 d!724769))

(declare-fun b!2557793 () Bool)

(declare-fun e!1615623 () List!29676)

(assert (=> b!2557793 (= e!1615623 (Cons!29576 (h!34996 tl!4068) Nil!29576))))

(declare-fun b!2557796 () Bool)

(declare-fun e!1615622 () Bool)

(declare-fun lt!904329 () List!29676)

(assert (=> b!2557796 (= e!1615622 (or (not (= (Cons!29576 (h!34996 tl!4068) Nil!29576) Nil!29576)) (= lt!904329 Nil!29576)))))

(declare-fun d!724771 () Bool)

(assert (=> d!724771 e!1615622))

(declare-fun res!1077086 () Bool)

(assert (=> d!724771 (=> (not res!1077086) (not e!1615622))))

(assert (=> d!724771 (= res!1077086 (= (content!4074 lt!904329) ((_ map or) (content!4074 Nil!29576) (content!4074 (Cons!29576 (h!34996 tl!4068) Nil!29576)))))))

(assert (=> d!724771 (= lt!904329 e!1615623)))

(declare-fun c!410631 () Bool)

(assert (=> d!724771 (= c!410631 ((_ is Nil!29576) Nil!29576))))

(assert (=> d!724771 (= (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) lt!904329)))

(declare-fun b!2557794 () Bool)

(assert (=> b!2557794 (= e!1615623 (Cons!29576 (h!34996 Nil!29576) (++!7268 (t!211375 Nil!29576) (Cons!29576 (h!34996 tl!4068) Nil!29576))))))

(declare-fun b!2557795 () Bool)

(declare-fun res!1077087 () Bool)

(assert (=> b!2557795 (=> (not res!1077087) (not e!1615622))))

(assert (=> b!2557795 (= res!1077087 (= (size!22954 lt!904329) (+ (size!22954 Nil!29576) (size!22954 (Cons!29576 (h!34996 tl!4068) Nil!29576)))))))

(assert (= (and d!724771 c!410631) b!2557793))

(assert (= (and d!724771 (not c!410631)) b!2557794))

(assert (= (and d!724771 res!1077086) b!2557795))

(assert (= (and b!2557795 res!1077087) b!2557796))

(declare-fun m!2898891 () Bool)

(assert (=> d!724771 m!2898891))

(declare-fun m!2898893 () Bool)

(assert (=> d!724771 m!2898893))

(declare-fun m!2898895 () Bool)

(assert (=> d!724771 m!2898895))

(declare-fun m!2898897 () Bool)

(assert (=> b!2557794 m!2898897))

(declare-fun m!2898899 () Bool)

(assert (=> b!2557795 m!2898899))

(declare-fun m!2898901 () Bool)

(assert (=> b!2557795 m!2898901))

(declare-fun m!2898903 () Bool)

(assert (=> b!2557795 m!2898903))

(assert (=> b!2556593 d!724771))

(declare-fun d!724773 () Bool)

(assert (=> d!724773 (= (++!7268 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (t!211375 tl!4068)) tl!4068)))

(declare-fun lt!904332 () Unit!43407)

(declare-fun choose!15094 (List!29676 C!15380 List!29676 List!29676) Unit!43407)

(assert (=> d!724773 (= lt!904332 (choose!15094 Nil!29576 (h!34996 tl!4068) (t!211375 tl!4068) tl!4068))))

(assert (=> d!724773 (= (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) (t!211375 tl!4068))) tl!4068)))

(assert (=> d!724773 (= (lemmaMoveElementToOtherListKeepsConcatEq!801 Nil!29576 (h!34996 tl!4068) (t!211375 tl!4068) tl!4068) lt!904332)))

(declare-fun bs!469759 () Bool)

(assert (= bs!469759 d!724773))

(assert (=> bs!469759 m!2897947))

(assert (=> bs!469759 m!2897947))

(assert (=> bs!469759 m!2897949))

(declare-fun m!2898905 () Bool)

(assert (=> bs!469759 m!2898905))

(declare-fun m!2898907 () Bool)

(assert (=> bs!469759 m!2898907))

(assert (=> b!2556593 d!724773))

(declare-fun b!2557797 () Bool)

(declare-fun e!1615628 () Option!5912)

(declare-fun e!1615627 () Option!5912)

(assert (=> b!2557797 (= e!1615628 e!1615627)))

(declare-fun c!410633 () Bool)

(assert (=> b!2557797 (= c!410633 ((_ is Nil!29576) (t!211375 tl!4068)))))

(declare-fun b!2557798 () Bool)

(declare-fun e!1615624 () Bool)

(declare-fun lt!904334 () Option!5912)

(assert (=> b!2557798 (= e!1615624 (not (isDefined!4734 lt!904334)))))

(declare-fun d!724775 () Bool)

(assert (=> d!724775 e!1615624))

(declare-fun res!1077091 () Bool)

(assert (=> d!724775 (=> res!1077091 e!1615624)))

(declare-fun e!1615625 () Bool)

(assert (=> d!724775 (= res!1077091 e!1615625)))

(declare-fun res!1077089 () Bool)

(assert (=> d!724775 (=> (not res!1077089) (not e!1615625))))

(assert (=> d!724775 (= res!1077089 (isDefined!4734 lt!904334))))

(assert (=> d!724775 (= lt!904334 e!1615628)))

(declare-fun c!410632 () Bool)

(declare-fun e!1615626 () Bool)

(assert (=> d!724775 (= c!410632 e!1615626)))

(declare-fun res!1077088 () Bool)

(assert (=> d!724775 (=> (not res!1077088) (not e!1615626))))

(assert (=> d!724775 (= res!1077088 (matchR!3556 lt!904156 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576))))))

(assert (=> d!724775 (validRegex!3237 lt!904156)))

(assert (=> d!724775 (= (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (t!211375 tl!4068) tl!4068) lt!904334)))

(declare-fun b!2557799 () Bool)

(assert (=> b!2557799 (= e!1615628 (Some!5911 (tuple2!29585 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (t!211375 tl!4068))))))

(declare-fun b!2557800 () Bool)

(declare-fun lt!904335 () Unit!43407)

(declare-fun lt!904333 () Unit!43407)

(assert (=> b!2557800 (= lt!904335 lt!904333)))

(assert (=> b!2557800 (= (++!7268 (++!7268 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (Cons!29576 (h!34996 (t!211375 tl!4068)) Nil!29576)) (t!211375 (t!211375 tl!4068))) tl!4068)))

(assert (=> b!2557800 (= lt!904333 (lemmaMoveElementToOtherListKeepsConcatEq!801 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (h!34996 (t!211375 tl!4068)) (t!211375 (t!211375 tl!4068)) tl!4068))))

(assert (=> b!2557800 (= e!1615627 (findConcatSeparation!934 lt!904156 (regTwo!15734 r!27340) (++!7268 (++!7268 Nil!29576 (Cons!29576 (h!34996 tl!4068) Nil!29576)) (Cons!29576 (h!34996 (t!211375 tl!4068)) Nil!29576)) (t!211375 (t!211375 tl!4068)) tl!4068))))

(declare-fun b!2557801 () Bool)

(assert (=> b!2557801 (= e!1615626 (matchR!3556 (regTwo!15734 r!27340) (t!211375 tl!4068)))))

(declare-fun b!2557802 () Bool)

(assert (=> b!2557802 (= e!1615625 (= (++!7268 (_1!17334 (get!9296 lt!904334)) (_2!17334 (get!9296 lt!904334))) tl!4068))))

(declare-fun b!2557803 () Bool)

(assert (=> b!2557803 (= e!1615627 None!5911)))

(declare-fun b!2557804 () Bool)

(declare-fun res!1077090 () Bool)

(assert (=> b!2557804 (=> (not res!1077090) (not e!1615625))))

(assert (=> b!2557804 (= res!1077090 (matchR!3556 (regTwo!15734 r!27340) (_2!17334 (get!9296 lt!904334))))))

(declare-fun b!2557805 () Bool)

(declare-fun res!1077092 () Bool)

(assert (=> b!2557805 (=> (not res!1077092) (not e!1615625))))

(assert (=> b!2557805 (= res!1077092 (matchR!3556 lt!904156 (_1!17334 (get!9296 lt!904334))))))

(assert (= (and d!724775 res!1077088) b!2557801))

(assert (= (and d!724775 c!410632) b!2557799))

(assert (= (and d!724775 (not c!410632)) b!2557797))

(assert (= (and b!2557797 c!410633) b!2557803))

(assert (= (and b!2557797 (not c!410633)) b!2557800))

(assert (= (and d!724775 res!1077089) b!2557805))

(assert (= (and b!2557805 res!1077092) b!2557804))

(assert (= (and b!2557804 res!1077090) b!2557802))

(assert (= (and d!724775 (not res!1077091)) b!2557798))

(assert (=> b!2557800 m!2897947))

(declare-fun m!2898909 () Bool)

(assert (=> b!2557800 m!2898909))

(assert (=> b!2557800 m!2898909))

(declare-fun m!2898911 () Bool)

(assert (=> b!2557800 m!2898911))

(assert (=> b!2557800 m!2897947))

(declare-fun m!2898913 () Bool)

(assert (=> b!2557800 m!2898913))

(assert (=> b!2557800 m!2898909))

(declare-fun m!2898915 () Bool)

(assert (=> b!2557800 m!2898915))

(declare-fun m!2898917 () Bool)

(assert (=> b!2557805 m!2898917))

(declare-fun m!2898919 () Bool)

(assert (=> b!2557805 m!2898919))

(assert (=> b!2557804 m!2898917))

(declare-fun m!2898921 () Bool)

(assert (=> b!2557804 m!2898921))

(declare-fun m!2898923 () Bool)

(assert (=> b!2557801 m!2898923))

(declare-fun m!2898925 () Bool)

(assert (=> b!2557798 m!2898925))

(assert (=> b!2557802 m!2898917))

(declare-fun m!2898927 () Bool)

(assert (=> b!2557802 m!2898927))

(assert (=> d!724775 m!2898925))

(assert (=> d!724775 m!2897947))

(declare-fun m!2898929 () Bool)

(assert (=> d!724775 m!2898929))

(assert (=> d!724775 m!2897621))

(assert (=> b!2556593 d!724775))

(assert (=> bm!163209 d!724483))

(declare-fun c!410635 () Bool)

(declare-fun call!163485 () Bool)

(declare-fun bm!163480 () Bool)

(declare-fun c!410634 () Bool)

(assert (=> bm!163480 (= call!163485 (validRegex!3237 (ite c!410635 (reg!7940 lt!904197) (ite c!410634 (regOne!15735 lt!904197) (regTwo!15734 lt!904197)))))))

(declare-fun d!724777 () Bool)

(declare-fun res!1077096 () Bool)

(declare-fun e!1615634 () Bool)

(assert (=> d!724777 (=> res!1077096 e!1615634)))

(assert (=> d!724777 (= res!1077096 ((_ is ElementMatch!7611) lt!904197))))

(assert (=> d!724777 (= (validRegex!3237 lt!904197) e!1615634)))

(declare-fun b!2557806 () Bool)

(declare-fun e!1615630 () Bool)

(assert (=> b!2557806 (= e!1615634 e!1615630)))

(assert (=> b!2557806 (= c!410635 ((_ is Star!7611) lt!904197))))

(declare-fun b!2557807 () Bool)

(declare-fun e!1615631 () Bool)

(declare-fun call!163487 () Bool)

(assert (=> b!2557807 (= e!1615631 call!163487)))

(declare-fun b!2557808 () Bool)

(declare-fun e!1615629 () Bool)

(declare-fun call!163486 () Bool)

(assert (=> b!2557808 (= e!1615629 call!163486)))

(declare-fun b!2557809 () Bool)

(declare-fun e!1615632 () Bool)

(assert (=> b!2557809 (= e!1615632 e!1615629)))

(declare-fun res!1077093 () Bool)

(assert (=> b!2557809 (=> (not res!1077093) (not e!1615629))))

(assert (=> b!2557809 (= res!1077093 call!163487)))

(declare-fun b!2557810 () Bool)

(declare-fun res!1077094 () Bool)

(assert (=> b!2557810 (=> res!1077094 e!1615632)))

(assert (=> b!2557810 (= res!1077094 (not ((_ is Concat!12307) lt!904197)))))

(declare-fun e!1615635 () Bool)

(assert (=> b!2557810 (= e!1615635 e!1615632)))

(declare-fun bm!163481 () Bool)

(assert (=> bm!163481 (= call!163487 (validRegex!3237 (ite c!410634 (regTwo!15735 lt!904197) (regOne!15734 lt!904197))))))

(declare-fun bm!163482 () Bool)

(assert (=> bm!163482 (= call!163486 call!163485)))

(declare-fun b!2557811 () Bool)

(declare-fun e!1615633 () Bool)

(assert (=> b!2557811 (= e!1615633 call!163485)))

(declare-fun b!2557812 () Bool)

(declare-fun res!1077097 () Bool)

(assert (=> b!2557812 (=> (not res!1077097) (not e!1615631))))

(assert (=> b!2557812 (= res!1077097 call!163486)))

(assert (=> b!2557812 (= e!1615635 e!1615631)))

(declare-fun b!2557813 () Bool)

(assert (=> b!2557813 (= e!1615630 e!1615635)))

(assert (=> b!2557813 (= c!410634 ((_ is Union!7611) lt!904197))))

(declare-fun b!2557814 () Bool)

(assert (=> b!2557814 (= e!1615630 e!1615633)))

(declare-fun res!1077095 () Bool)

(assert (=> b!2557814 (= res!1077095 (not (nullable!2528 (reg!7940 lt!904197))))))

(assert (=> b!2557814 (=> (not res!1077095) (not e!1615633))))

(assert (= (and d!724777 (not res!1077096)) b!2557806))

(assert (= (and b!2557806 c!410635) b!2557814))

(assert (= (and b!2557806 (not c!410635)) b!2557813))

(assert (= (and b!2557814 res!1077095) b!2557811))

(assert (= (and b!2557813 c!410634) b!2557812))

(assert (= (and b!2557813 (not c!410634)) b!2557810))

(assert (= (and b!2557812 res!1077097) b!2557807))

(assert (= (and b!2557810 (not res!1077094)) b!2557809))

(assert (= (and b!2557809 res!1077093) b!2557808))

(assert (= (or b!2557812 b!2557808) bm!163482))

(assert (= (or b!2557807 b!2557809) bm!163481))

(assert (= (or b!2557811 bm!163482) bm!163480))

(declare-fun m!2898931 () Bool)

(assert (=> bm!163480 m!2898931))

(declare-fun m!2898933 () Bool)

(assert (=> bm!163481 m!2898933))

(declare-fun m!2898935 () Bool)

(assert (=> b!2557814 m!2898935))

(assert (=> d!724321 d!724777))

(assert (=> d!724321 d!724703))

(assert (=> bm!163226 d!724675))

(declare-fun d!724779 () Bool)

(assert (=> d!724779 (= (nullable!2528 (derivative!306 lt!904152 tl!4068)) (nullableFct!753 (derivative!306 lt!904152 tl!4068)))))

(declare-fun bs!469760 () Bool)

(assert (= bs!469760 d!724779))

(assert (=> bs!469760 m!2897555))

(declare-fun m!2898937 () Bool)

(assert (=> bs!469760 m!2898937))

(assert (=> b!2556340 d!724779))

(assert (=> bm!163210 d!724679))

(declare-fun call!163488 () Bool)

(declare-fun c!410636 () Bool)

(declare-fun bm!163483 () Bool)

(declare-fun c!410637 () Bool)

(assert (=> bm!163483 (= call!163488 (validRegex!3237 (ite c!410637 (reg!7940 lt!904208) (ite c!410636 (regOne!15735 lt!904208) (regTwo!15734 lt!904208)))))))

(declare-fun d!724781 () Bool)

(declare-fun res!1077101 () Bool)

(declare-fun e!1615641 () Bool)

(assert (=> d!724781 (=> res!1077101 e!1615641)))

(assert (=> d!724781 (= res!1077101 ((_ is ElementMatch!7611) lt!904208))))

(assert (=> d!724781 (= (validRegex!3237 lt!904208) e!1615641)))

(declare-fun b!2557815 () Bool)

(declare-fun e!1615637 () Bool)

(assert (=> b!2557815 (= e!1615641 e!1615637)))

(assert (=> b!2557815 (= c!410637 ((_ is Star!7611) lt!904208))))

(declare-fun b!2557816 () Bool)

(declare-fun e!1615638 () Bool)

(declare-fun call!163490 () Bool)

(assert (=> b!2557816 (= e!1615638 call!163490)))

(declare-fun b!2557817 () Bool)

(declare-fun e!1615636 () Bool)

(declare-fun call!163489 () Bool)

(assert (=> b!2557817 (= e!1615636 call!163489)))

(declare-fun b!2557818 () Bool)

(declare-fun e!1615639 () Bool)

(assert (=> b!2557818 (= e!1615639 e!1615636)))

(declare-fun res!1077098 () Bool)

(assert (=> b!2557818 (=> (not res!1077098) (not e!1615636))))

(assert (=> b!2557818 (= res!1077098 call!163490)))

(declare-fun b!2557819 () Bool)

(declare-fun res!1077099 () Bool)

(assert (=> b!2557819 (=> res!1077099 e!1615639)))

(assert (=> b!2557819 (= res!1077099 (not ((_ is Concat!12307) lt!904208)))))

(declare-fun e!1615642 () Bool)

(assert (=> b!2557819 (= e!1615642 e!1615639)))

(declare-fun bm!163484 () Bool)

(assert (=> bm!163484 (= call!163490 (validRegex!3237 (ite c!410636 (regTwo!15735 lt!904208) (regOne!15734 lt!904208))))))

(declare-fun bm!163485 () Bool)

(assert (=> bm!163485 (= call!163489 call!163488)))

(declare-fun b!2557820 () Bool)

(declare-fun e!1615640 () Bool)

(assert (=> b!2557820 (= e!1615640 call!163488)))

(declare-fun b!2557821 () Bool)

(declare-fun res!1077102 () Bool)

(assert (=> b!2557821 (=> (not res!1077102) (not e!1615638))))

(assert (=> b!2557821 (= res!1077102 call!163489)))

(assert (=> b!2557821 (= e!1615642 e!1615638)))

(declare-fun b!2557822 () Bool)

(assert (=> b!2557822 (= e!1615637 e!1615642)))

(assert (=> b!2557822 (= c!410636 ((_ is Union!7611) lt!904208))))

(declare-fun b!2557823 () Bool)

(assert (=> b!2557823 (= e!1615637 e!1615640)))

(declare-fun res!1077100 () Bool)

(assert (=> b!2557823 (= res!1077100 (not (nullable!2528 (reg!7940 lt!904208))))))

(assert (=> b!2557823 (=> (not res!1077100) (not e!1615640))))

(assert (= (and d!724781 (not res!1077101)) b!2557815))

(assert (= (and b!2557815 c!410637) b!2557823))

(assert (= (and b!2557815 (not c!410637)) b!2557822))

(assert (= (and b!2557823 res!1077100) b!2557820))

(assert (= (and b!2557822 c!410636) b!2557821))

(assert (= (and b!2557822 (not c!410636)) b!2557819))

(assert (= (and b!2557821 res!1077102) b!2557816))

(assert (= (and b!2557819 (not res!1077099)) b!2557818))

(assert (= (and b!2557818 res!1077098) b!2557817))

(assert (= (or b!2557821 b!2557817) bm!163485))

(assert (= (or b!2557816 b!2557818) bm!163484))

(assert (= (or b!2557820 bm!163485) bm!163483))

(declare-fun m!2898939 () Bool)

(assert (=> bm!163483 m!2898939))

(declare-fun m!2898941 () Bool)

(assert (=> bm!163484 m!2898941))

(declare-fun m!2898943 () Bool)

(assert (=> b!2557823 m!2898943))

(assert (=> d!724327 d!724781))

(assert (=> d!724327 d!724267))

(assert (=> b!2556419 d!724503))

(assert (=> b!2556419 d!724505))

(declare-fun b!2557824 () Bool)

(declare-fun e!1615644 () Regex!7611)

(declare-fun e!1615645 () Regex!7611)

(assert (=> b!2557824 (= e!1615644 e!1615645)))

(declare-fun c!410639 () Bool)

(assert (=> b!2557824 (= c!410639 ((_ is ElementMatch!7611) (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))))))

(declare-fun b!2557825 () Bool)

(declare-fun c!410642 () Bool)

(assert (=> b!2557825 (= c!410642 (nullable!2528 (regOne!15734 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))))))))

(declare-fun e!1615643 () Regex!7611)

(declare-fun e!1615647 () Regex!7611)

(assert (=> b!2557825 (= e!1615643 e!1615647)))

(declare-fun call!163491 () Regex!7611)

(declare-fun b!2557826 () Bool)

(assert (=> b!2557826 (= e!1615647 (Union!7611 (Concat!12307 call!163491 (regTwo!15734 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))))) EmptyLang!7611))))

(declare-fun b!2557827 () Bool)

(declare-fun e!1615646 () Regex!7611)

(declare-fun call!163492 () Regex!7611)

(declare-fun call!163494 () Regex!7611)

(assert (=> b!2557827 (= e!1615646 (Union!7611 call!163492 call!163494))))

(declare-fun bm!163486 () Bool)

(declare-fun c!410641 () Bool)

(assert (=> bm!163486 (= call!163492 (derivativeStep!2180 (ite c!410641 (regOne!15735 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))) (regTwo!15734 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))))) c!14016))))

(declare-fun bm!163487 () Bool)

(declare-fun call!163493 () Regex!7611)

(assert (=> bm!163487 (= call!163491 call!163493)))

(declare-fun bm!163488 () Bool)

(assert (=> bm!163488 (= call!163493 call!163494)))

(declare-fun c!410640 () Bool)

(declare-fun bm!163489 () Bool)

(assert (=> bm!163489 (= call!163494 (derivativeStep!2180 (ite c!410641 (regTwo!15735 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))) (ite c!410640 (reg!7940 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))) (regOne!15734 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))))) c!14016))))

(declare-fun b!2557828 () Bool)

(assert (=> b!2557828 (= e!1615646 e!1615643)))

(assert (=> b!2557828 (= c!410640 ((_ is Star!7611) (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))))))

(declare-fun b!2557829 () Bool)

(assert (=> b!2557829 (= e!1615645 (ite (= c!14016 (c!410113 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557830 () Bool)

(assert (=> b!2557830 (= e!1615643 (Concat!12307 call!163493 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))))))

(declare-fun b!2557831 () Bool)

(assert (=> b!2557831 (= e!1615644 EmptyLang!7611)))

(declare-fun b!2557832 () Bool)

(assert (=> b!2557832 (= e!1615647 (Union!7611 (Concat!12307 call!163491 (regTwo!15734 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))))) call!163492))))

(declare-fun b!2557833 () Bool)

(assert (=> b!2557833 (= c!410641 ((_ is Union!7611) (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))))))

(assert (=> b!2557833 (= e!1615645 e!1615646)))

(declare-fun d!724783 () Bool)

(declare-fun lt!904336 () Regex!7611)

(assert (=> d!724783 (validRegex!3237 lt!904336)))

(assert (=> d!724783 (= lt!904336 e!1615644)))

(declare-fun c!410638 () Bool)

(assert (=> d!724783 (= c!410638 (or ((_ is EmptyExpr!7611) (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340)))) ((_ is EmptyLang!7611) (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))))))))

(assert (=> d!724783 (validRegex!3237 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))))))

(assert (=> d!724783 (= (derivativeStep!2180 (ite c!410222 (regTwo!15735 r!27340) (ite c!410221 (reg!7940 r!27340) (regOne!15734 r!27340))) c!14016) lt!904336)))

(assert (= (and d!724783 c!410638) b!2557831))

(assert (= (and d!724783 (not c!410638)) b!2557824))

(assert (= (and b!2557824 c!410639) b!2557829))

(assert (= (and b!2557824 (not c!410639)) b!2557833))

(assert (= (and b!2557833 c!410641) b!2557827))

(assert (= (and b!2557833 (not c!410641)) b!2557828))

(assert (= (and b!2557828 c!410640) b!2557830))

(assert (= (and b!2557828 (not c!410640)) b!2557825))

(assert (= (and b!2557825 c!410642) b!2557832))

(assert (= (and b!2557825 (not c!410642)) b!2557826))

(assert (= (or b!2557832 b!2557826) bm!163487))

(assert (= (or b!2557830 bm!163487) bm!163488))

(assert (= (or b!2557827 bm!163488) bm!163489))

(assert (= (or b!2557827 b!2557832) bm!163486))

(declare-fun m!2898945 () Bool)

(assert (=> b!2557825 m!2898945))

(declare-fun m!2898947 () Bool)

(assert (=> bm!163486 m!2898947))

(declare-fun m!2898949 () Bool)

(assert (=> bm!163489 m!2898949))

(declare-fun m!2898951 () Bool)

(assert (=> d!724783 m!2898951))

(declare-fun m!2898953 () Bool)

(assert (=> d!724783 m!2898953))

(assert (=> bm!163188 d!724783))

(assert (=> b!2556060 d!724605))

(assert (=> b!2556060 d!724495))

(assert (=> d!724333 d!724483))

(assert (=> d!724333 d!724733))

(declare-fun d!724785 () Bool)

(assert (=> d!724785 (= (nullable!2528 (regOne!15734 (regOne!15734 r!27340))) (nullableFct!753 (regOne!15734 (regOne!15734 r!27340))))))

(declare-fun bs!469761 () Bool)

(assert (= bs!469761 d!724785))

(declare-fun m!2898955 () Bool)

(assert (=> bs!469761 m!2898955))

(assert (=> b!2556371 d!724785))

(declare-fun d!724787 () Bool)

(assert (=> d!724787 (= (isEmpty!17030 (tail!4093 (_1!17334 lt!904154))) ((_ is Nil!29576) (tail!4093 (_1!17334 lt!904154))))))

(assert (=> b!2556437 d!724787))

(assert (=> b!2556437 d!724535))

(declare-fun b!2557834 () Bool)

(declare-fun c!410643 () Bool)

(assert (=> b!2557834 (= c!410643 ((_ is EmptyLang!7611) (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))))))

(declare-fun e!1615648 () Int)

(declare-fun e!1615650 () Int)

(assert (=> b!2557834 (= e!1615648 e!1615650)))

(declare-fun d!724789 () Bool)

(declare-fun lt!904337 () Int)

(assert (=> d!724789 (>= lt!904337 0)))

(declare-fun e!1615652 () Int)

(assert (=> d!724789 (= lt!904337 e!1615652)))

(declare-fun c!410645 () Bool)

(assert (=> d!724789 (= c!410645 ((_ is ElementMatch!7611) (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))))))

(assert (=> d!724789 (= (RegexPrimitiveSize!120 (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))) lt!904337)))

(declare-fun b!2557835 () Bool)

(declare-fun call!163497 () Int)

(declare-fun call!163496 () Int)

(assert (=> b!2557835 (= e!1615650 (+ 1 call!163497 call!163496))))

(declare-fun bm!163490 () Bool)

(declare-fun call!163495 () Int)

(assert (=> bm!163490 (= call!163497 call!163495)))

(declare-fun b!2557836 () Bool)

(assert (=> b!2557836 (= e!1615650 0)))

(declare-fun b!2557837 () Bool)

(declare-fun e!1615649 () Int)

(assert (=> b!2557837 (= e!1615649 e!1615648)))

(declare-fun c!410644 () Bool)

(assert (=> b!2557837 (= c!410644 ((_ is Star!7611) (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))))))

(declare-fun b!2557838 () Bool)

(declare-fun e!1615651 () Int)

(assert (=> b!2557838 (= e!1615652 e!1615651)))

(declare-fun c!410647 () Bool)

(assert (=> b!2557838 (= c!410647 ((_ is Concat!12307) (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))))))

(declare-fun b!2557839 () Bool)

(declare-fun c!410646 () Bool)

(assert (=> b!2557839 (= c!410646 ((_ is EmptyExpr!7611) (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))))))

(assert (=> b!2557839 (= e!1615651 e!1615649)))

(declare-fun b!2557840 () Bool)

(assert (=> b!2557840 (= e!1615649 0)))

(declare-fun b!2557841 () Bool)

(assert (=> b!2557841 (= e!1615651 (+ 1 call!163496 call!163495))))

(declare-fun bm!163491 () Bool)

(assert (=> bm!163491 (= call!163496 (RegexPrimitiveSize!120 (ite c!410647 (regOne!15734 (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))) (regTwo!15735 (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))))))))

(declare-fun bm!163492 () Bool)

(assert (=> bm!163492 (= call!163495 (RegexPrimitiveSize!120 (ite c!410647 (regTwo!15734 (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))) (ite c!410644 (reg!7940 (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340)))) (regOne!15735 (ite c!410176 (regOne!15734 (regOne!15734 r!27340)) (regTwo!15735 (regOne!15734 r!27340))))))))))

(declare-fun b!2557842 () Bool)

(assert (=> b!2557842 (= e!1615648 (+ 1 call!163497))))

(declare-fun b!2557843 () Bool)

(assert (=> b!2557843 (= e!1615652 1)))

(assert (= (and d!724789 c!410645) b!2557843))

(assert (= (and d!724789 (not c!410645)) b!2557838))

(assert (= (and b!2557838 c!410647) b!2557841))

(assert (= (and b!2557838 (not c!410647)) b!2557839))

(assert (= (and b!2557839 c!410646) b!2557840))

(assert (= (and b!2557839 (not c!410646)) b!2557837))

(assert (= (and b!2557837 c!410644) b!2557842))

(assert (= (and b!2557837 (not c!410644)) b!2557834))

(assert (= (and b!2557834 c!410643) b!2557836))

(assert (= (and b!2557834 (not c!410643)) b!2557835))

(assert (= (or b!2557842 b!2557835) bm!163490))

(assert (= (or b!2557841 bm!163490) bm!163492))

(assert (= (or b!2557841 b!2557835) bm!163491))

(declare-fun m!2898957 () Bool)

(assert (=> bm!163491 m!2898957))

(declare-fun m!2898959 () Bool)

(assert (=> bm!163492 m!2898959))

(assert (=> bm!163154 d!724789))

(assert (=> b!2556415 d!724547))

(assert (=> b!2556187 d!724499))

(declare-fun d!724791 () Bool)

(assert (=> d!724791 (= (isEmpty!17030 (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))) ((_ is Nil!29576) (tail!4093 (Cons!29576 c!14016 (_1!17334 lt!904154)))))))

(assert (=> b!2556626 d!724791))

(assert (=> b!2556626 d!724525))

(declare-fun c!410648 () Bool)

(declare-fun b!2557844 () Bool)

(assert (=> b!2557844 (= c!410648 ((_ is EmptyLang!7611) (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))))))

(declare-fun e!1615653 () Int)

(declare-fun e!1615655 () Int)

(assert (=> b!2557844 (= e!1615653 e!1615655)))

(declare-fun d!724793 () Bool)

(declare-fun lt!904338 () Int)

(assert (=> d!724793 (>= lt!904338 0)))

(declare-fun e!1615657 () Int)

(assert (=> d!724793 (= lt!904338 e!1615657)))

(declare-fun c!410650 () Bool)

(assert (=> d!724793 (= c!410650 ((_ is ElementMatch!7611) (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))))))

(assert (=> d!724793 (= (RegexPrimitiveSize!120 (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))) lt!904338)))

(declare-fun b!2557845 () Bool)

(declare-fun call!163500 () Int)

(declare-fun call!163499 () Int)

(assert (=> b!2557845 (= e!1615655 (+ 1 call!163500 call!163499))))

(declare-fun bm!163493 () Bool)

(declare-fun call!163498 () Int)

(assert (=> bm!163493 (= call!163500 call!163498)))

(declare-fun b!2557846 () Bool)

(assert (=> b!2557846 (= e!1615655 0)))

(declare-fun b!2557847 () Bool)

(declare-fun e!1615654 () Int)

(assert (=> b!2557847 (= e!1615654 e!1615653)))

(declare-fun c!410649 () Bool)

(assert (=> b!2557847 (= c!410649 ((_ is Star!7611) (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))))))

(declare-fun b!2557848 () Bool)

(declare-fun e!1615656 () Int)

(assert (=> b!2557848 (= e!1615657 e!1615656)))

(declare-fun c!410652 () Bool)

(assert (=> b!2557848 (= c!410652 ((_ is Concat!12307) (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))))))

(declare-fun b!2557849 () Bool)

(declare-fun c!410651 () Bool)

(assert (=> b!2557849 (= c!410651 ((_ is EmptyExpr!7611) (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))))))

(assert (=> b!2557849 (= e!1615656 e!1615654)))

(declare-fun b!2557850 () Bool)

(assert (=> b!2557850 (= e!1615654 0)))

(declare-fun b!2557851 () Bool)

(assert (=> b!2557851 (= e!1615656 (+ 1 call!163499 call!163498))))

(declare-fun bm!163494 () Bool)

(assert (=> bm!163494 (= call!163499 (RegexPrimitiveSize!120 (ite c!410652 (regOne!15734 (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))) (regTwo!15735 (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))))))))

(declare-fun bm!163495 () Bool)

(assert (=> bm!163495 (= call!163498 (RegexPrimitiveSize!120 (ite c!410652 (regTwo!15734 (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))) (ite c!410649 (reg!7940 (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340)))) (regOne!15735 (ite c!410185 (regTwo!15734 r!27340) (ite c!410182 (reg!7940 r!27340) (regOne!15735 r!27340))))))))))

(declare-fun b!2557852 () Bool)

(assert (=> b!2557852 (= e!1615653 (+ 1 call!163500))))

(declare-fun b!2557853 () Bool)

(assert (=> b!2557853 (= e!1615657 1)))

(assert (= (and d!724793 c!410650) b!2557853))

(assert (= (and d!724793 (not c!410650)) b!2557848))

(assert (= (and b!2557848 c!410652) b!2557851))

(assert (= (and b!2557848 (not c!410652)) b!2557849))

(assert (= (and b!2557849 c!410651) b!2557850))

(assert (= (and b!2557849 (not c!410651)) b!2557847))

(assert (= (and b!2557847 c!410649) b!2557852))

(assert (= (and b!2557847 (not c!410649)) b!2557844))

(assert (= (and b!2557844 c!410648) b!2557846))

(assert (= (and b!2557844 (not c!410648)) b!2557845))

(assert (= (or b!2557852 b!2557845) bm!163493))

(assert (= (or b!2557851 bm!163493) bm!163495))

(assert (= (or b!2557851 b!2557845) bm!163494))

(declare-fun m!2898961 () Bool)

(assert (=> bm!163494 m!2898961))

(declare-fun m!2898963 () Bool)

(assert (=> bm!163495 m!2898963))

(assert (=> bm!163160 d!724793))

(assert (=> b!2556622 d!724523))

(assert (=> b!2556056 d!724493))

(assert (=> d!724323 d!724565))

(declare-fun c!410654 () Bool)

(declare-fun c!410653 () Bool)

(declare-fun call!163501 () Bool)

(declare-fun bm!163496 () Bool)

(assert (=> bm!163496 (= call!163501 (validRegex!3237 (ite c!410654 (reg!7940 (derivative!306 lt!904152 tl!4068)) (ite c!410653 (regOne!15735 (derivative!306 lt!904152 tl!4068)) (regTwo!15734 (derivative!306 lt!904152 tl!4068))))))))

(declare-fun d!724795 () Bool)

(declare-fun res!1077106 () Bool)

(declare-fun e!1615663 () Bool)

(assert (=> d!724795 (=> res!1077106 e!1615663)))

(assert (=> d!724795 (= res!1077106 ((_ is ElementMatch!7611) (derivative!306 lt!904152 tl!4068)))))

(assert (=> d!724795 (= (validRegex!3237 (derivative!306 lt!904152 tl!4068)) e!1615663)))

(declare-fun b!2557854 () Bool)

(declare-fun e!1615659 () Bool)

(assert (=> b!2557854 (= e!1615663 e!1615659)))

(assert (=> b!2557854 (= c!410654 ((_ is Star!7611) (derivative!306 lt!904152 tl!4068)))))

(declare-fun b!2557855 () Bool)

(declare-fun e!1615660 () Bool)

(declare-fun call!163503 () Bool)

(assert (=> b!2557855 (= e!1615660 call!163503)))

(declare-fun b!2557856 () Bool)

(declare-fun e!1615658 () Bool)

(declare-fun call!163502 () Bool)

(assert (=> b!2557856 (= e!1615658 call!163502)))

(declare-fun b!2557857 () Bool)

(declare-fun e!1615661 () Bool)

(assert (=> b!2557857 (= e!1615661 e!1615658)))

(declare-fun res!1077103 () Bool)

(assert (=> b!2557857 (=> (not res!1077103) (not e!1615658))))

(assert (=> b!2557857 (= res!1077103 call!163503)))

(declare-fun b!2557858 () Bool)

(declare-fun res!1077104 () Bool)

(assert (=> b!2557858 (=> res!1077104 e!1615661)))

(assert (=> b!2557858 (= res!1077104 (not ((_ is Concat!12307) (derivative!306 lt!904152 tl!4068))))))

(declare-fun e!1615664 () Bool)

(assert (=> b!2557858 (= e!1615664 e!1615661)))

(declare-fun bm!163497 () Bool)

(assert (=> bm!163497 (= call!163503 (validRegex!3237 (ite c!410653 (regTwo!15735 (derivative!306 lt!904152 tl!4068)) (regOne!15734 (derivative!306 lt!904152 tl!4068)))))))

(declare-fun bm!163498 () Bool)

(assert (=> bm!163498 (= call!163502 call!163501)))

(declare-fun b!2557859 () Bool)

(declare-fun e!1615662 () Bool)

(assert (=> b!2557859 (= e!1615662 call!163501)))

(declare-fun b!2557860 () Bool)

(declare-fun res!1077107 () Bool)

(assert (=> b!2557860 (=> (not res!1077107) (not e!1615660))))

(assert (=> b!2557860 (= res!1077107 call!163502)))

(assert (=> b!2557860 (= e!1615664 e!1615660)))

(declare-fun b!2557861 () Bool)

(assert (=> b!2557861 (= e!1615659 e!1615664)))

(assert (=> b!2557861 (= c!410653 ((_ is Union!7611) (derivative!306 lt!904152 tl!4068)))))

(declare-fun b!2557862 () Bool)

(assert (=> b!2557862 (= e!1615659 e!1615662)))

(declare-fun res!1077105 () Bool)

(assert (=> b!2557862 (= res!1077105 (not (nullable!2528 (reg!7940 (derivative!306 lt!904152 tl!4068)))))))

(assert (=> b!2557862 (=> (not res!1077105) (not e!1615662))))

(assert (= (and d!724795 (not res!1077106)) b!2557854))

(assert (= (and b!2557854 c!410654) b!2557862))

(assert (= (and b!2557854 (not c!410654)) b!2557861))

(assert (= (and b!2557862 res!1077105) b!2557859))

(assert (= (and b!2557861 c!410653) b!2557860))

(assert (= (and b!2557861 (not c!410653)) b!2557858))

(assert (= (and b!2557860 res!1077107) b!2557855))

(assert (= (and b!2557858 (not res!1077104)) b!2557857))

(assert (= (and b!2557857 res!1077103) b!2557856))

(assert (= (or b!2557860 b!2557856) bm!163498))

(assert (= (or b!2557855 b!2557857) bm!163497))

(assert (= (or b!2557859 bm!163498) bm!163496))

(declare-fun m!2898965 () Bool)

(assert (=> bm!163496 m!2898965))

(declare-fun m!2898967 () Bool)

(assert (=> bm!163497 m!2898967))

(declare-fun m!2898969 () Bool)

(assert (=> b!2557862 m!2898969))

(assert (=> d!724323 d!724795))

(assert (=> b!2556433 d!724533))

(assert (=> b!2556369 d!724337))

(declare-fun call!163504 () Bool)

(declare-fun bm!163499 () Bool)

(declare-fun c!410655 () Bool)

(declare-fun c!410656 () Bool)

(assert (=> bm!163499 (= call!163504 (validRegex!3237 (ite c!410656 (reg!7940 (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))) (ite c!410655 (regOne!15735 (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))) (regTwo!15734 (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340))))))))))

(declare-fun d!724797 () Bool)

(declare-fun res!1077111 () Bool)

(declare-fun e!1615670 () Bool)

(assert (=> d!724797 (=> res!1077111 e!1615670)))

(assert (=> d!724797 (= res!1077111 ((_ is ElementMatch!7611) (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))))

(assert (=> d!724797 (= (validRegex!3237 (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))) e!1615670)))

(declare-fun b!2557863 () Bool)

(declare-fun e!1615666 () Bool)

(assert (=> b!2557863 (= e!1615670 e!1615666)))

(assert (=> b!2557863 (= c!410656 ((_ is Star!7611) (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))))

(declare-fun b!2557864 () Bool)

(declare-fun e!1615667 () Bool)

(declare-fun call!163506 () Bool)

(assert (=> b!2557864 (= e!1615667 call!163506)))

(declare-fun b!2557865 () Bool)

(declare-fun e!1615665 () Bool)

(declare-fun call!163505 () Bool)

(assert (=> b!2557865 (= e!1615665 call!163505)))

(declare-fun b!2557866 () Bool)

(declare-fun e!1615668 () Bool)

(assert (=> b!2557866 (= e!1615668 e!1615665)))

(declare-fun res!1077108 () Bool)

(assert (=> b!2557866 (=> (not res!1077108) (not e!1615665))))

(assert (=> b!2557866 (= res!1077108 call!163506)))

(declare-fun b!2557867 () Bool)

(declare-fun res!1077109 () Bool)

(assert (=> b!2557867 (=> res!1077109 e!1615668)))

(assert (=> b!2557867 (= res!1077109 (not ((_ is Concat!12307) (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340))))))))

(declare-fun e!1615671 () Bool)

(assert (=> b!2557867 (= e!1615671 e!1615668)))

(declare-fun bm!163500 () Bool)

(assert (=> bm!163500 (= call!163506 (validRegex!3237 (ite c!410655 (regTwo!15735 (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))) (regOne!15734 (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))))))

(declare-fun bm!163501 () Bool)

(assert (=> bm!163501 (= call!163505 call!163504)))

(declare-fun b!2557868 () Bool)

(declare-fun e!1615669 () Bool)

(assert (=> b!2557868 (= e!1615669 call!163504)))

(declare-fun b!2557869 () Bool)

(declare-fun res!1077112 () Bool)

(assert (=> b!2557869 (=> (not res!1077112) (not e!1615667))))

(assert (=> b!2557869 (= res!1077112 call!163505)))

(assert (=> b!2557869 (= e!1615671 e!1615667)))

(declare-fun b!2557870 () Bool)

(assert (=> b!2557870 (= e!1615666 e!1615671)))

(assert (=> b!2557870 (= c!410655 ((_ is Union!7611) (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))))

(declare-fun b!2557871 () Bool)

(assert (=> b!2557871 (= e!1615666 e!1615669)))

(declare-fun res!1077110 () Bool)

(assert (=> b!2557871 (= res!1077110 (not (nullable!2528 (reg!7940 (ite c!410304 (reg!7940 r!27340) (ite c!410303 (regOne!15735 r!27340) (regTwo!15734 r!27340)))))))))

(assert (=> b!2557871 (=> (not res!1077110) (not e!1615669))))

(assert (= (and d!724797 (not res!1077111)) b!2557863))

(assert (= (and b!2557863 c!410656) b!2557871))

(assert (= (and b!2557863 (not c!410656)) b!2557870))

(assert (= (and b!2557871 res!1077110) b!2557868))

(assert (= (and b!2557870 c!410655) b!2557869))

(assert (= (and b!2557870 (not c!410655)) b!2557867))

(assert (= (and b!2557869 res!1077112) b!2557864))

(assert (= (and b!2557867 (not res!1077109)) b!2557866))

(assert (= (and b!2557866 res!1077108) b!2557865))

(assert (= (or b!2557869 b!2557865) bm!163501))

(assert (= (or b!2557864 b!2557866) bm!163500))

(assert (= (or b!2557868 bm!163501) bm!163499))

(declare-fun m!2898971 () Bool)

(assert (=> bm!163499 m!2898971))

(declare-fun m!2898973 () Bool)

(assert (=> bm!163500 m!2898973))

(declare-fun m!2898975 () Bool)

(assert (=> b!2557871 m!2898975))

(assert (=> bm!163223 d!724797))

(assert (=> b!2556321 d!724547))

(declare-fun call!163507 () Bool)

(declare-fun c!410658 () Bool)

(declare-fun bm!163502 () Bool)

(declare-fun c!410657 () Bool)

(assert (=> bm!163502 (= call!163507 (validRegex!3237 (ite c!410658 (reg!7940 (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))) (ite c!410657 (regOne!15735 (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))) (regTwo!15734 (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))))))))))

(declare-fun d!724799 () Bool)

(declare-fun res!1077116 () Bool)

(declare-fun e!1615677 () Bool)

(assert (=> d!724799 (=> res!1077116 e!1615677)))

(assert (=> d!724799 (= res!1077116 ((_ is ElementMatch!7611) (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))))

(assert (=> d!724799 (= (validRegex!3237 (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))) e!1615677)))

(declare-fun b!2557872 () Bool)

(declare-fun e!1615673 () Bool)

(assert (=> b!2557872 (= e!1615677 e!1615673)))

(assert (=> b!2557872 (= c!410658 ((_ is Star!7611) (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))))

(declare-fun b!2557873 () Bool)

(declare-fun e!1615674 () Bool)

(declare-fun call!163509 () Bool)

(assert (=> b!2557873 (= e!1615674 call!163509)))

(declare-fun b!2557874 () Bool)

(declare-fun e!1615672 () Bool)

(declare-fun call!163508 () Bool)

(assert (=> b!2557874 (= e!1615672 call!163508)))

(declare-fun b!2557875 () Bool)

(declare-fun e!1615675 () Bool)

(assert (=> b!2557875 (= e!1615675 e!1615672)))

(declare-fun res!1077113 () Bool)

(assert (=> b!2557875 (=> (not res!1077113) (not e!1615672))))

(assert (=> b!2557875 (= res!1077113 call!163509)))

(declare-fun b!2557876 () Bool)

(declare-fun res!1077114 () Bool)

(assert (=> b!2557876 (=> res!1077114 e!1615675)))

(assert (=> b!2557876 (= res!1077114 (not ((_ is Concat!12307) (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340)))))))))

(declare-fun e!1615678 () Bool)

(assert (=> b!2557876 (= e!1615678 e!1615675)))

(declare-fun bm!163503 () Bool)

(assert (=> bm!163503 (= call!163509 (validRegex!3237 (ite c!410657 (regTwo!15735 (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))) (regOne!15734 (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))))))

(declare-fun bm!163504 () Bool)

(assert (=> bm!163504 (= call!163508 call!163507)))

(declare-fun b!2557877 () Bool)

(declare-fun e!1615676 () Bool)

(assert (=> b!2557877 (= e!1615676 call!163507)))

(declare-fun b!2557878 () Bool)

(declare-fun res!1077117 () Bool)

(assert (=> b!2557878 (=> (not res!1077117) (not e!1615674))))

(assert (=> b!2557878 (= res!1077117 call!163508)))

(assert (=> b!2557878 (= e!1615678 e!1615674)))

(declare-fun b!2557879 () Bool)

(assert (=> b!2557879 (= e!1615673 e!1615678)))

(assert (=> b!2557879 (= c!410657 ((_ is Union!7611) (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))))

(declare-fun b!2557880 () Bool)

(assert (=> b!2557880 (= e!1615673 e!1615676)))

(declare-fun res!1077115 () Bool)

(assert (=> b!2557880 (= res!1077115 (not (nullable!2528 (reg!7940 (ite c!410119 (reg!7940 (regOne!15734 r!27340)) (ite c!410118 (regOne!15735 (regOne!15734 r!27340)) (regTwo!15734 (regOne!15734 r!27340))))))))))

(assert (=> b!2557880 (=> (not res!1077115) (not e!1615676))))

(assert (= (and d!724799 (not res!1077116)) b!2557872))

(assert (= (and b!2557872 c!410658) b!2557880))

(assert (= (and b!2557872 (not c!410658)) b!2557879))

(assert (= (and b!2557880 res!1077115) b!2557877))

(assert (= (and b!2557879 c!410657) b!2557878))

(assert (= (and b!2557879 (not c!410657)) b!2557876))

(assert (= (and b!2557878 res!1077117) b!2557873))

(assert (= (and b!2557876 (not res!1077114)) b!2557875))

(assert (= (and b!2557875 res!1077113) b!2557874))

(assert (= (or b!2557878 b!2557874) bm!163504))

(assert (= (or b!2557873 b!2557875) bm!163503))

(assert (= (or b!2557877 bm!163504) bm!163502))

(declare-fun m!2898977 () Bool)

(assert (=> bm!163502 m!2898977))

(declare-fun m!2898979 () Bool)

(assert (=> bm!163503 m!2898979))

(declare-fun m!2898981 () Bool)

(assert (=> b!2557880 m!2898981))

(assert (=> bm!163125 d!724799))

(declare-fun b!2557881 () Bool)

(declare-fun res!1077119 () Bool)

(declare-fun e!1615682 () Bool)

(assert (=> b!2557881 (=> res!1077119 e!1615682)))

(assert (=> b!2557881 (= res!1077119 (not ((_ is ElementMatch!7611) lt!904156)))))

(declare-fun e!1615679 () Bool)

(assert (=> b!2557881 (= e!1615679 e!1615682)))

(declare-fun b!2557882 () Bool)

(declare-fun e!1615680 () Bool)

(declare-fun e!1615681 () Bool)

(assert (=> b!2557882 (= e!1615680 e!1615681)))

(declare-fun res!1077118 () Bool)

(assert (=> b!2557882 (=> res!1077118 e!1615681)))

(declare-fun call!163510 () Bool)

(assert (=> b!2557882 (= res!1077118 call!163510)))

(declare-fun b!2557883 () Bool)

(declare-fun e!1615685 () Bool)

(assert (=> b!2557883 (= e!1615685 (= (head!5818 (_1!17334 (get!9296 lt!904240))) (c!410113 lt!904156)))))

(declare-fun b!2557884 () Bool)

(declare-fun e!1615683 () Bool)

(assert (=> b!2557884 (= e!1615683 (matchR!3556 (derivativeStep!2180 lt!904156 (head!5818 (_1!17334 (get!9296 lt!904240)))) (tail!4093 (_1!17334 (get!9296 lt!904240)))))))

(declare-fun b!2557885 () Bool)

(declare-fun res!1077125 () Bool)

(assert (=> b!2557885 (=> (not res!1077125) (not e!1615685))))

(assert (=> b!2557885 (= res!1077125 (not call!163510))))

(declare-fun b!2557886 () Bool)

(assert (=> b!2557886 (= e!1615681 (not (= (head!5818 (_1!17334 (get!9296 lt!904240))) (c!410113 lt!904156))))))

(declare-fun b!2557887 () Bool)

(declare-fun res!1077122 () Bool)

(assert (=> b!2557887 (=> res!1077122 e!1615681)))

(assert (=> b!2557887 (= res!1077122 (not (isEmpty!17030 (tail!4093 (_1!17334 (get!9296 lt!904240))))))))

(declare-fun b!2557888 () Bool)

(declare-fun e!1615684 () Bool)

(declare-fun lt!904339 () Bool)

(assert (=> b!2557888 (= e!1615684 (= lt!904339 call!163510))))

(declare-fun b!2557889 () Bool)

(assert (=> b!2557889 (= e!1615683 (nullable!2528 lt!904156))))

(declare-fun b!2557890 () Bool)

(declare-fun res!1077120 () Bool)

(assert (=> b!2557890 (=> res!1077120 e!1615682)))

(assert (=> b!2557890 (= res!1077120 e!1615685)))

(declare-fun res!1077123 () Bool)

(assert (=> b!2557890 (=> (not res!1077123) (not e!1615685))))

(assert (=> b!2557890 (= res!1077123 lt!904339)))

(declare-fun bm!163505 () Bool)

(assert (=> bm!163505 (= call!163510 (isEmpty!17030 (_1!17334 (get!9296 lt!904240))))))

(declare-fun b!2557891 () Bool)

(declare-fun res!1077121 () Bool)

(assert (=> b!2557891 (=> (not res!1077121) (not e!1615685))))

(assert (=> b!2557891 (= res!1077121 (isEmpty!17030 (tail!4093 (_1!17334 (get!9296 lt!904240)))))))

(declare-fun b!2557892 () Bool)

(assert (=> b!2557892 (= e!1615682 e!1615680)))

(declare-fun res!1077124 () Bool)

(assert (=> b!2557892 (=> (not res!1077124) (not e!1615680))))

(assert (=> b!2557892 (= res!1077124 (not lt!904339))))

(declare-fun d!724801 () Bool)

(assert (=> d!724801 e!1615684))

(declare-fun c!410659 () Bool)

(assert (=> d!724801 (= c!410659 ((_ is EmptyExpr!7611) lt!904156))))

(assert (=> d!724801 (= lt!904339 e!1615683)))

(declare-fun c!410661 () Bool)

(assert (=> d!724801 (= c!410661 (isEmpty!17030 (_1!17334 (get!9296 lt!904240))))))

(assert (=> d!724801 (validRegex!3237 lt!904156)))

(assert (=> d!724801 (= (matchR!3556 lt!904156 (_1!17334 (get!9296 lt!904240))) lt!904339)))

(declare-fun b!2557893 () Bool)

(assert (=> b!2557893 (= e!1615679 (not lt!904339))))

(declare-fun b!2557894 () Bool)

(assert (=> b!2557894 (= e!1615684 e!1615679)))

(declare-fun c!410660 () Bool)

(assert (=> b!2557894 (= c!410660 ((_ is EmptyLang!7611) lt!904156))))

(assert (= (and d!724801 c!410661) b!2557889))

(assert (= (and d!724801 (not c!410661)) b!2557884))

(assert (= (and d!724801 c!410659) b!2557888))

(assert (= (and d!724801 (not c!410659)) b!2557894))

(assert (= (and b!2557894 c!410660) b!2557893))

(assert (= (and b!2557894 (not c!410660)) b!2557881))

(assert (= (and b!2557881 (not res!1077119)) b!2557890))

(assert (= (and b!2557890 res!1077123) b!2557885))

(assert (= (and b!2557885 res!1077125) b!2557891))

(assert (= (and b!2557891 res!1077121) b!2557883))

(assert (= (and b!2557890 (not res!1077120)) b!2557892))

(assert (= (and b!2557892 res!1077124) b!2557882))

(assert (= (and b!2557882 (not res!1077118)) b!2557887))

(assert (= (and b!2557887 (not res!1077122)) b!2557886))

(assert (= (or b!2557888 b!2557882 b!2557885) bm!163505))

(declare-fun m!2898983 () Bool)

(assert (=> b!2557884 m!2898983))

(assert (=> b!2557884 m!2898983))

(declare-fun m!2898985 () Bool)

(assert (=> b!2557884 m!2898985))

(declare-fun m!2898987 () Bool)

(assert (=> b!2557884 m!2898987))

(assert (=> b!2557884 m!2898985))

(assert (=> b!2557884 m!2898987))

(declare-fun m!2898989 () Bool)

(assert (=> b!2557884 m!2898989))

(assert (=> b!2557883 m!2898983))

(declare-fun m!2898991 () Bool)

(assert (=> bm!163505 m!2898991))

(assert (=> d!724801 m!2898991))

(assert (=> d!724801 m!2897621))

(assert (=> b!2557891 m!2898987))

(assert (=> b!2557891 m!2898987))

(declare-fun m!2898993 () Bool)

(assert (=> b!2557891 m!2898993))

(assert (=> b!2557887 m!2898987))

(assert (=> b!2557887 m!2898987))

(assert (=> b!2557887 m!2898993))

(assert (=> b!2557889 m!2897873))

(assert (=> b!2557886 m!2898983))

(assert (=> b!2556598 d!724801))

(assert (=> b!2556598 d!724563))

(assert (=> b!2556404 d!724547))

(declare-fun b!2557895 () Bool)

(declare-fun res!1077127 () Bool)

(declare-fun e!1615689 () Bool)

(assert (=> b!2557895 (=> res!1077127 e!1615689)))

(assert (=> b!2557895 (= res!1077127 (not ((_ is ElementMatch!7611) (regTwo!15734 r!27340))))))

(declare-fun e!1615686 () Bool)

(assert (=> b!2557895 (= e!1615686 e!1615689)))

(declare-fun b!2557896 () Bool)

(declare-fun e!1615687 () Bool)

(declare-fun e!1615688 () Bool)

(assert (=> b!2557896 (= e!1615687 e!1615688)))

(declare-fun res!1077126 () Bool)

(assert (=> b!2557896 (=> res!1077126 e!1615688)))

(declare-fun call!163511 () Bool)

(assert (=> b!2557896 (= res!1077126 call!163511)))

(declare-fun b!2557897 () Bool)

(declare-fun e!1615692 () Bool)

(assert (=> b!2557897 (= e!1615692 (= (head!5818 tl!4068) (c!410113 (regTwo!15734 r!27340))))))

(declare-fun b!2557898 () Bool)

(declare-fun e!1615690 () Bool)

(assert (=> b!2557898 (= e!1615690 (matchR!3556 (derivativeStep!2180 (regTwo!15734 r!27340) (head!5818 tl!4068)) (tail!4093 tl!4068)))))

(declare-fun b!2557899 () Bool)

(declare-fun res!1077133 () Bool)

(assert (=> b!2557899 (=> (not res!1077133) (not e!1615692))))

(assert (=> b!2557899 (= res!1077133 (not call!163511))))

(declare-fun b!2557900 () Bool)

(assert (=> b!2557900 (= e!1615688 (not (= (head!5818 tl!4068) (c!410113 (regTwo!15734 r!27340)))))))

(declare-fun b!2557901 () Bool)

(declare-fun res!1077130 () Bool)

(assert (=> b!2557901 (=> res!1077130 e!1615688)))

(assert (=> b!2557901 (= res!1077130 (not (isEmpty!17030 (tail!4093 tl!4068))))))

(declare-fun b!2557902 () Bool)

(declare-fun e!1615691 () Bool)

(declare-fun lt!904340 () Bool)

(assert (=> b!2557902 (= e!1615691 (= lt!904340 call!163511))))

(declare-fun b!2557903 () Bool)

(assert (=> b!2557903 (= e!1615690 (nullable!2528 (regTwo!15734 r!27340)))))

(declare-fun b!2557904 () Bool)

(declare-fun res!1077128 () Bool)

(assert (=> b!2557904 (=> res!1077128 e!1615689)))

(assert (=> b!2557904 (= res!1077128 e!1615692)))

(declare-fun res!1077131 () Bool)

(assert (=> b!2557904 (=> (not res!1077131) (not e!1615692))))

(assert (=> b!2557904 (= res!1077131 lt!904340)))

(declare-fun bm!163506 () Bool)

(assert (=> bm!163506 (= call!163511 (isEmpty!17030 tl!4068))))

(declare-fun b!2557905 () Bool)

(declare-fun res!1077129 () Bool)

(assert (=> b!2557905 (=> (not res!1077129) (not e!1615692))))

(assert (=> b!2557905 (= res!1077129 (isEmpty!17030 (tail!4093 tl!4068)))))

(declare-fun b!2557906 () Bool)

(assert (=> b!2557906 (= e!1615689 e!1615687)))

(declare-fun res!1077132 () Bool)

(assert (=> b!2557906 (=> (not res!1077132) (not e!1615687))))

(assert (=> b!2557906 (= res!1077132 (not lt!904340))))

(declare-fun d!724803 () Bool)

(assert (=> d!724803 e!1615691))

(declare-fun c!410662 () Bool)

(assert (=> d!724803 (= c!410662 ((_ is EmptyExpr!7611) (regTwo!15734 r!27340)))))

(assert (=> d!724803 (= lt!904340 e!1615690)))

(declare-fun c!410664 () Bool)

(assert (=> d!724803 (= c!410664 (isEmpty!17030 tl!4068))))

(assert (=> d!724803 (validRegex!3237 (regTwo!15734 r!27340))))

(assert (=> d!724803 (= (matchR!3556 (regTwo!15734 r!27340) tl!4068) lt!904340)))

(declare-fun b!2557907 () Bool)

(assert (=> b!2557907 (= e!1615686 (not lt!904340))))

(declare-fun b!2557908 () Bool)

(assert (=> b!2557908 (= e!1615691 e!1615686)))

(declare-fun c!410663 () Bool)

(assert (=> b!2557908 (= c!410663 ((_ is EmptyLang!7611) (regTwo!15734 r!27340)))))

(assert (= (and d!724803 c!410664) b!2557903))

(assert (= (and d!724803 (not c!410664)) b!2557898))

(assert (= (and d!724803 c!410662) b!2557902))

(assert (= (and d!724803 (not c!410662)) b!2557908))

(assert (= (and b!2557908 c!410663) b!2557907))

(assert (= (and b!2557908 (not c!410663)) b!2557895))

(assert (= (and b!2557895 (not res!1077127)) b!2557904))

(assert (= (and b!2557904 res!1077131) b!2557899))

(assert (= (and b!2557899 res!1077133) b!2557905))

(assert (= (and b!2557905 res!1077129) b!2557897))

(assert (= (and b!2557904 (not res!1077128)) b!2557906))

(assert (= (and b!2557906 res!1077132) b!2557896))

(assert (= (and b!2557896 (not res!1077126)) b!2557901))

(assert (= (and b!2557901 (not res!1077130)) b!2557900))

(assert (= (or b!2557902 b!2557896 b!2557899) bm!163506))

(assert (=> b!2557898 m!2897759))

(assert (=> b!2557898 m!2897759))

(declare-fun m!2898995 () Bool)

(assert (=> b!2557898 m!2898995))

(assert (=> b!2557898 m!2897763))

(assert (=> b!2557898 m!2898995))

(assert (=> b!2557898 m!2897763))

(declare-fun m!2898997 () Bool)

(assert (=> b!2557898 m!2898997))

(assert (=> b!2557897 m!2897759))

(assert (=> bm!163506 m!2897767))

(assert (=> d!724803 m!2897767))

(assert (=> d!724803 m!2897671))

(assert (=> b!2557905 m!2897763))

(assert (=> b!2557905 m!2897763))

(assert (=> b!2557905 m!2897769))

(assert (=> b!2557901 m!2897763))

(assert (=> b!2557901 m!2897763))

(assert (=> b!2557901 m!2897769))

(assert (=> b!2557903 m!2897675))

(assert (=> b!2557900 m!2897759))

(assert (=> b!2556594 d!724803))

(assert (=> b!2556062 d!724379))

(declare-fun b!2557909 () Bool)

(declare-fun e!1615694 () Regex!7611)

(declare-fun e!1615695 () Regex!7611)

(assert (=> b!2557909 (= e!1615694 e!1615695)))

(declare-fun c!410666 () Bool)

(assert (=> b!2557909 (= c!410666 ((_ is ElementMatch!7611) (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))))))

(declare-fun b!2557910 () Bool)

(declare-fun c!410669 () Bool)

(assert (=> b!2557910 (= c!410669 (nullable!2528 (regOne!15734 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))))))))

(declare-fun e!1615693 () Regex!7611)

(declare-fun e!1615697 () Regex!7611)

(assert (=> b!2557910 (= e!1615693 e!1615697)))

(declare-fun b!2557911 () Bool)

(declare-fun call!163512 () Regex!7611)

(assert (=> b!2557911 (= e!1615697 (Union!7611 (Concat!12307 call!163512 (regTwo!15734 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))))) EmptyLang!7611))))

(declare-fun b!2557912 () Bool)

(declare-fun e!1615696 () Regex!7611)

(declare-fun call!163513 () Regex!7611)

(declare-fun call!163515 () Regex!7611)

(assert (=> b!2557912 (= e!1615696 (Union!7611 call!163513 call!163515))))

(declare-fun c!410668 () Bool)

(declare-fun bm!163507 () Bool)

(assert (=> bm!163507 (= call!163513 (derivativeStep!2180 (ite c!410668 (regOne!15735 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))) (regTwo!15734 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))))) c!14016))))

(declare-fun bm!163508 () Bool)

(declare-fun call!163514 () Regex!7611)

(assert (=> bm!163508 (= call!163512 call!163514)))

(declare-fun bm!163509 () Bool)

(assert (=> bm!163509 (= call!163514 call!163515)))

(declare-fun bm!163510 () Bool)

(declare-fun c!410667 () Bool)

(assert (=> bm!163510 (= call!163515 (derivativeStep!2180 (ite c!410668 (regTwo!15735 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))) (ite c!410667 (reg!7940 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))) (regOne!15734 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))))) c!14016))))

(declare-fun b!2557913 () Bool)

(assert (=> b!2557913 (= e!1615696 e!1615693)))

(assert (=> b!2557913 (= c!410667 ((_ is Star!7611) (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))))))

(declare-fun b!2557914 () Bool)

(assert (=> b!2557914 (= e!1615695 (ite (= c!14016 (c!410113 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))))) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557915 () Bool)

(assert (=> b!2557915 (= e!1615693 (Concat!12307 call!163514 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))))))

(declare-fun b!2557916 () Bool)

(assert (=> b!2557916 (= e!1615694 EmptyLang!7611)))

(declare-fun b!2557917 () Bool)

(assert (=> b!2557917 (= e!1615697 (Union!7611 (Concat!12307 call!163512 (regTwo!15734 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))))) call!163513))))

(declare-fun b!2557918 () Bool)

(assert (=> b!2557918 (= c!410668 ((_ is Union!7611) (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))))))

(assert (=> b!2557918 (= e!1615695 e!1615696)))

(declare-fun d!724805 () Bool)

(declare-fun lt!904341 () Regex!7611)

(assert (=> d!724805 (validRegex!3237 lt!904341)))

(assert (=> d!724805 (= lt!904341 e!1615694)))

(declare-fun c!410665 () Bool)

(assert (=> d!724805 (= c!410665 (or ((_ is EmptyExpr!7611) (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340))))) ((_ is EmptyLang!7611) (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))))))))

(assert (=> d!724805 (validRegex!3237 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))))))

(assert (=> d!724805 (= (derivativeStep!2180 (ite c!410257 (regTwo!15735 (regTwo!15734 r!27340)) (ite c!410256 (reg!7940 (regTwo!15734 r!27340)) (regOne!15734 (regTwo!15734 r!27340)))) c!14016) lt!904341)))

(assert (= (and d!724805 c!410665) b!2557916))

(assert (= (and d!724805 (not c!410665)) b!2557909))

(assert (= (and b!2557909 c!410666) b!2557914))

(assert (= (and b!2557909 (not c!410666)) b!2557918))

(assert (= (and b!2557918 c!410668) b!2557912))

(assert (= (and b!2557918 (not c!410668)) b!2557913))

(assert (= (and b!2557913 c!410667) b!2557915))

(assert (= (and b!2557913 (not c!410667)) b!2557910))

(assert (= (and b!2557910 c!410669) b!2557917))

(assert (= (and b!2557910 (not c!410669)) b!2557911))

(assert (= (or b!2557917 b!2557911) bm!163508))

(assert (= (or b!2557915 bm!163508) bm!163509))

(assert (= (or b!2557912 bm!163509) bm!163510))

(assert (= (or b!2557912 b!2557917) bm!163507))

(declare-fun m!2898999 () Bool)

(assert (=> b!2557910 m!2898999))

(declare-fun m!2899001 () Bool)

(assert (=> bm!163507 m!2899001))

(declare-fun m!2899003 () Bool)

(assert (=> bm!163510 m!2899003))

(declare-fun m!2899005 () Bool)

(assert (=> d!724805 m!2899005))

(declare-fun m!2899007 () Bool)

(assert (=> d!724805 m!2899007))

(assert (=> bm!163207 d!724805))

(assert (=> bm!163165 d!724757))

(assert (=> b!2556630 d!724791))

(assert (=> b!2556630 d!724525))

(assert (=> b!2556441 d!724787))

(assert (=> b!2556441 d!724535))

(assert (=> b!2556337 d!724493))

(declare-fun b!2557919 () Bool)

(declare-fun e!1615702 () Bool)

(declare-fun e!1615703 () Bool)

(assert (=> b!2557919 (= e!1615702 e!1615703)))

(declare-fun res!1077135 () Bool)

(assert (=> b!2557919 (=> (not res!1077135) (not e!1615703))))

(assert (=> b!2557919 (= res!1077135 (and (not ((_ is EmptyLang!7611) lt!904148)) (not ((_ is ElementMatch!7611) lt!904148))))))

(declare-fun bm!163511 () Bool)

(declare-fun call!163517 () Bool)

(declare-fun c!410670 () Bool)

(assert (=> bm!163511 (= call!163517 (nullable!2528 (ite c!410670 (regTwo!15735 lt!904148) (regOne!15734 lt!904148))))))

(declare-fun b!2557920 () Bool)

(declare-fun e!1615701 () Bool)

(assert (=> b!2557920 (= e!1615701 call!163517)))

(declare-fun d!724807 () Bool)

(declare-fun res!1077138 () Bool)

(assert (=> d!724807 (=> res!1077138 e!1615702)))

(assert (=> d!724807 (= res!1077138 ((_ is EmptyExpr!7611) lt!904148))))

(assert (=> d!724807 (= (nullableFct!753 lt!904148) e!1615702)))

(declare-fun b!2557921 () Bool)

(declare-fun e!1615698 () Bool)

(declare-fun call!163516 () Bool)

(assert (=> b!2557921 (= e!1615698 call!163516)))

(declare-fun b!2557922 () Bool)

(declare-fun e!1615699 () Bool)

(declare-fun e!1615700 () Bool)

(assert (=> b!2557922 (= e!1615699 e!1615700)))

(assert (=> b!2557922 (= c!410670 ((_ is Union!7611) lt!904148))))

(declare-fun b!2557923 () Bool)

(assert (=> b!2557923 (= e!1615700 e!1615698)))

(declare-fun res!1077134 () Bool)

(assert (=> b!2557923 (= res!1077134 call!163517)))

(assert (=> b!2557923 (=> (not res!1077134) (not e!1615698))))

(declare-fun b!2557924 () Bool)

(assert (=> b!2557924 (= e!1615700 e!1615701)))

(declare-fun res!1077136 () Bool)

(assert (=> b!2557924 (= res!1077136 call!163516)))

(assert (=> b!2557924 (=> res!1077136 e!1615701)))

(declare-fun bm!163512 () Bool)

(assert (=> bm!163512 (= call!163516 (nullable!2528 (ite c!410670 (regOne!15735 lt!904148) (regTwo!15734 lt!904148))))))

(declare-fun b!2557925 () Bool)

(assert (=> b!2557925 (= e!1615703 e!1615699)))

(declare-fun res!1077137 () Bool)

(assert (=> b!2557925 (=> res!1077137 e!1615699)))

(assert (=> b!2557925 (= res!1077137 ((_ is Star!7611) lt!904148))))

(assert (= (and d!724807 (not res!1077138)) b!2557919))

(assert (= (and b!2557919 res!1077135) b!2557925))

(assert (= (and b!2557925 (not res!1077137)) b!2557922))

(assert (= (and b!2557922 c!410670) b!2557924))

(assert (= (and b!2557922 (not c!410670)) b!2557923))

(assert (= (and b!2557924 (not res!1077136)) b!2557920))

(assert (= (and b!2557923 res!1077134) b!2557921))

(assert (= (or b!2557920 b!2557923) bm!163511))

(assert (= (or b!2557924 b!2557921) bm!163512))

(declare-fun m!2899009 () Bool)

(assert (=> bm!163511 m!2899009))

(declare-fun m!2899011 () Bool)

(assert (=> bm!163512 m!2899011))

(assert (=> d!724379 d!724807))

(declare-fun b!2557926 () Bool)

(declare-fun res!1077140 () Bool)

(declare-fun e!1615707 () Bool)

(assert (=> b!2557926 (=> res!1077140 e!1615707)))

(assert (=> b!2557926 (= res!1077140 (not ((_ is ElementMatch!7611) (derivativeStep!2180 lt!904149 (head!5818 tl!4068)))))))

(declare-fun e!1615704 () Bool)

(assert (=> b!2557926 (= e!1615704 e!1615707)))

(declare-fun b!2557927 () Bool)

(declare-fun e!1615705 () Bool)

(declare-fun e!1615706 () Bool)

(assert (=> b!2557927 (= e!1615705 e!1615706)))

(declare-fun res!1077139 () Bool)

(assert (=> b!2557927 (=> res!1077139 e!1615706)))

(declare-fun call!163518 () Bool)

(assert (=> b!2557927 (= res!1077139 call!163518)))

(declare-fun b!2557928 () Bool)

(declare-fun e!1615710 () Bool)

(assert (=> b!2557928 (= e!1615710 (= (head!5818 (tail!4093 tl!4068)) (c!410113 (derivativeStep!2180 lt!904149 (head!5818 tl!4068)))))))

(declare-fun b!2557929 () Bool)

(declare-fun e!1615708 () Bool)

(assert (=> b!2557929 (= e!1615708 (matchR!3556 (derivativeStep!2180 (derivativeStep!2180 lt!904149 (head!5818 tl!4068)) (head!5818 (tail!4093 tl!4068))) (tail!4093 (tail!4093 tl!4068))))))

(declare-fun b!2557930 () Bool)

(declare-fun res!1077146 () Bool)

(assert (=> b!2557930 (=> (not res!1077146) (not e!1615710))))

(assert (=> b!2557930 (= res!1077146 (not call!163518))))

(declare-fun b!2557931 () Bool)

(assert (=> b!2557931 (= e!1615706 (not (= (head!5818 (tail!4093 tl!4068)) (c!410113 (derivativeStep!2180 lt!904149 (head!5818 tl!4068))))))))

(declare-fun b!2557932 () Bool)

(declare-fun res!1077143 () Bool)

(assert (=> b!2557932 (=> res!1077143 e!1615706)))

(assert (=> b!2557932 (= res!1077143 (not (isEmpty!17030 (tail!4093 (tail!4093 tl!4068)))))))

(declare-fun b!2557933 () Bool)

(declare-fun e!1615709 () Bool)

(declare-fun lt!904342 () Bool)

(assert (=> b!2557933 (= e!1615709 (= lt!904342 call!163518))))

(declare-fun b!2557934 () Bool)

(assert (=> b!2557934 (= e!1615708 (nullable!2528 (derivativeStep!2180 lt!904149 (head!5818 tl!4068))))))

(declare-fun b!2557935 () Bool)

(declare-fun res!1077141 () Bool)

(assert (=> b!2557935 (=> res!1077141 e!1615707)))

(assert (=> b!2557935 (= res!1077141 e!1615710)))

(declare-fun res!1077144 () Bool)

(assert (=> b!2557935 (=> (not res!1077144) (not e!1615710))))

(assert (=> b!2557935 (= res!1077144 lt!904342)))

(declare-fun bm!163513 () Bool)

(assert (=> bm!163513 (= call!163518 (isEmpty!17030 (tail!4093 tl!4068)))))

(declare-fun b!2557936 () Bool)

(declare-fun res!1077142 () Bool)

(assert (=> b!2557936 (=> (not res!1077142) (not e!1615710))))

(assert (=> b!2557936 (= res!1077142 (isEmpty!17030 (tail!4093 (tail!4093 tl!4068))))))

(declare-fun b!2557937 () Bool)

(assert (=> b!2557937 (= e!1615707 e!1615705)))

(declare-fun res!1077145 () Bool)

(assert (=> b!2557937 (=> (not res!1077145) (not e!1615705))))

(assert (=> b!2557937 (= res!1077145 (not lt!904342))))

(declare-fun d!724809 () Bool)

(assert (=> d!724809 e!1615709))

(declare-fun c!410671 () Bool)

(assert (=> d!724809 (= c!410671 ((_ is EmptyExpr!7611) (derivativeStep!2180 lt!904149 (head!5818 tl!4068))))))

(assert (=> d!724809 (= lt!904342 e!1615708)))

(declare-fun c!410673 () Bool)

(assert (=> d!724809 (= c!410673 (isEmpty!17030 (tail!4093 tl!4068)))))

(assert (=> d!724809 (validRegex!3237 (derivativeStep!2180 lt!904149 (head!5818 tl!4068)))))

(assert (=> d!724809 (= (matchR!3556 (derivativeStep!2180 lt!904149 (head!5818 tl!4068)) (tail!4093 tl!4068)) lt!904342)))

(declare-fun b!2557938 () Bool)

(assert (=> b!2557938 (= e!1615704 (not lt!904342))))

(declare-fun b!2557939 () Bool)

(assert (=> b!2557939 (= e!1615709 e!1615704)))

(declare-fun c!410672 () Bool)

(assert (=> b!2557939 (= c!410672 ((_ is EmptyLang!7611) (derivativeStep!2180 lt!904149 (head!5818 tl!4068))))))

(assert (= (and d!724809 c!410673) b!2557934))

(assert (= (and d!724809 (not c!410673)) b!2557929))

(assert (= (and d!724809 c!410671) b!2557933))

(assert (= (and d!724809 (not c!410671)) b!2557939))

(assert (= (and b!2557939 c!410672) b!2557938))

(assert (= (and b!2557939 (not c!410672)) b!2557926))

(assert (= (and b!2557926 (not res!1077140)) b!2557935))

(assert (= (and b!2557935 res!1077144) b!2557930))

(assert (= (and b!2557930 res!1077146) b!2557936))

(assert (= (and b!2557936 res!1077142) b!2557928))

(assert (= (and b!2557935 (not res!1077141)) b!2557937))

(assert (= (and b!2557937 res!1077145) b!2557927))

(assert (= (and b!2557927 (not res!1077139)) b!2557932))

(assert (= (and b!2557932 (not res!1077143)) b!2557931))

(assert (= (or b!2557933 b!2557927 b!2557930) bm!163513))

(assert (=> b!2557929 m!2897763))

(assert (=> b!2557929 m!2898709))

(assert (=> b!2557929 m!2897841))

(assert (=> b!2557929 m!2898709))

(declare-fun m!2899013 () Bool)

(assert (=> b!2557929 m!2899013))

(assert (=> b!2557929 m!2897763))

(assert (=> b!2557929 m!2898713))

(assert (=> b!2557929 m!2899013))

(assert (=> b!2557929 m!2898713))

(declare-fun m!2899015 () Bool)

(assert (=> b!2557929 m!2899015))

(assert (=> b!2557928 m!2897763))

(assert (=> b!2557928 m!2898709))

(assert (=> bm!163513 m!2897763))

(assert (=> bm!163513 m!2897769))

(assert (=> d!724809 m!2897763))

(assert (=> d!724809 m!2897769))

(assert (=> d!724809 m!2897841))

(declare-fun m!2899017 () Bool)

(assert (=> d!724809 m!2899017))

(assert (=> b!2557936 m!2897763))

(assert (=> b!2557936 m!2898713))

(assert (=> b!2557936 m!2898713))

(assert (=> b!2557936 m!2898719))

(assert (=> b!2557932 m!2897763))

(assert (=> b!2557932 m!2898713))

(assert (=> b!2557932 m!2898713))

(assert (=> b!2557932 m!2898719))

(assert (=> b!2557934 m!2897841))

(declare-fun m!2899019 () Bool)

(assert (=> b!2557934 m!2899019))

(assert (=> b!2557931 m!2897763))

(assert (=> b!2557931 m!2898709))

(assert (=> b!2556416 d!724809))

(declare-fun b!2557940 () Bool)

(declare-fun e!1615712 () Regex!7611)

(declare-fun e!1615713 () Regex!7611)

(assert (=> b!2557940 (= e!1615712 e!1615713)))

(declare-fun c!410675 () Bool)

(assert (=> b!2557940 (= c!410675 ((_ is ElementMatch!7611) lt!904149))))

(declare-fun b!2557941 () Bool)

(declare-fun c!410678 () Bool)

(assert (=> b!2557941 (= c!410678 (nullable!2528 (regOne!15734 lt!904149)))))

(declare-fun e!1615711 () Regex!7611)

(declare-fun e!1615715 () Regex!7611)

(assert (=> b!2557941 (= e!1615711 e!1615715)))

(declare-fun b!2557942 () Bool)

(declare-fun call!163519 () Regex!7611)

(assert (=> b!2557942 (= e!1615715 (Union!7611 (Concat!12307 call!163519 (regTwo!15734 lt!904149)) EmptyLang!7611))))

(declare-fun b!2557943 () Bool)

(declare-fun e!1615714 () Regex!7611)

(declare-fun call!163520 () Regex!7611)

(declare-fun call!163522 () Regex!7611)

(assert (=> b!2557943 (= e!1615714 (Union!7611 call!163520 call!163522))))

(declare-fun bm!163514 () Bool)

(declare-fun c!410677 () Bool)

(assert (=> bm!163514 (= call!163520 (derivativeStep!2180 (ite c!410677 (regOne!15735 lt!904149) (regTwo!15734 lt!904149)) (head!5818 tl!4068)))))

(declare-fun bm!163515 () Bool)

(declare-fun call!163521 () Regex!7611)

(assert (=> bm!163515 (= call!163519 call!163521)))

(declare-fun bm!163516 () Bool)

(assert (=> bm!163516 (= call!163521 call!163522)))

(declare-fun bm!163517 () Bool)

(declare-fun c!410676 () Bool)

(assert (=> bm!163517 (= call!163522 (derivativeStep!2180 (ite c!410677 (regTwo!15735 lt!904149) (ite c!410676 (reg!7940 lt!904149) (regOne!15734 lt!904149))) (head!5818 tl!4068)))))

(declare-fun b!2557944 () Bool)

(assert (=> b!2557944 (= e!1615714 e!1615711)))

(assert (=> b!2557944 (= c!410676 ((_ is Star!7611) lt!904149))))

(declare-fun b!2557945 () Bool)

(assert (=> b!2557945 (= e!1615713 (ite (= (head!5818 tl!4068) (c!410113 lt!904149)) EmptyExpr!7611 EmptyLang!7611))))

(declare-fun b!2557946 () Bool)

(assert (=> b!2557946 (= e!1615711 (Concat!12307 call!163521 lt!904149))))

(declare-fun b!2557947 () Bool)

(assert (=> b!2557947 (= e!1615712 EmptyLang!7611)))

(declare-fun b!2557948 () Bool)

(assert (=> b!2557948 (= e!1615715 (Union!7611 (Concat!12307 call!163519 (regTwo!15734 lt!904149)) call!163520))))

(declare-fun b!2557949 () Bool)

(assert (=> b!2557949 (= c!410677 ((_ is Union!7611) lt!904149))))

(assert (=> b!2557949 (= e!1615713 e!1615714)))

(declare-fun d!724811 () Bool)

(declare-fun lt!904343 () Regex!7611)

(assert (=> d!724811 (validRegex!3237 lt!904343)))

(assert (=> d!724811 (= lt!904343 e!1615712)))

(declare-fun c!410674 () Bool)

(assert (=> d!724811 (= c!410674 (or ((_ is EmptyExpr!7611) lt!904149) ((_ is EmptyLang!7611) lt!904149)))))

(assert (=> d!724811 (validRegex!3237 lt!904149)))

(assert (=> d!724811 (= (derivativeStep!2180 lt!904149 (head!5818 tl!4068)) lt!904343)))

(assert (= (and d!724811 c!410674) b!2557947))

(assert (= (and d!724811 (not c!410674)) b!2557940))

(assert (= (and b!2557940 c!410675) b!2557945))

(assert (= (and b!2557940 (not c!410675)) b!2557949))

(assert (= (and b!2557949 c!410677) b!2557943))

(assert (= (and b!2557949 (not c!410677)) b!2557944))

(assert (= (and b!2557944 c!410676) b!2557946))

(assert (= (and b!2557944 (not c!410676)) b!2557941))

(assert (= (and b!2557941 c!410678) b!2557948))

(assert (= (and b!2557941 (not c!410678)) b!2557942))

(assert (= (or b!2557948 b!2557942) bm!163515))

(assert (= (or b!2557946 bm!163515) bm!163516))

(assert (= (or b!2557943 bm!163516) bm!163517))

(assert (= (or b!2557943 b!2557948) bm!163514))

(declare-fun m!2899021 () Bool)

(assert (=> b!2557941 m!2899021))

(assert (=> bm!163514 m!2897759))

(declare-fun m!2899023 () Bool)

(assert (=> bm!163514 m!2899023))

(assert (=> bm!163517 m!2897759))

(declare-fun m!2899025 () Bool)

(assert (=> bm!163517 m!2899025))

(declare-fun m!2899027 () Bool)

(assert (=> d!724811 m!2899027))

(assert (=> d!724811 m!2897791))

(assert (=> b!2556416 d!724811))

(assert (=> b!2556416 d!724547))

(assert (=> b!2556416 d!724505))

(declare-fun c!410679 () Bool)

(declare-fun b!2557950 () Bool)

(assert (=> b!2557950 (= c!410679 ((_ is EmptyLang!7611) (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))))))

(declare-fun e!1615716 () Int)

(declare-fun e!1615718 () Int)

(assert (=> b!2557950 (= e!1615716 e!1615718)))

(declare-fun d!724813 () Bool)

(declare-fun lt!904344 () Int)

(assert (=> d!724813 (>= lt!904344 0)))

(declare-fun e!1615720 () Int)

(assert (=> d!724813 (= lt!904344 e!1615720)))

(declare-fun c!410681 () Bool)

(assert (=> d!724813 (= c!410681 ((_ is ElementMatch!7611) (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))))))

(assert (=> d!724813 (= (RegexPrimitiveSize!120 (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))) lt!904344)))

(declare-fun b!2557951 () Bool)

(declare-fun call!163525 () Int)

(declare-fun call!163524 () Int)

(assert (=> b!2557951 (= e!1615718 (+ 1 call!163525 call!163524))))

(declare-fun bm!163518 () Bool)

(declare-fun call!163523 () Int)

(assert (=> bm!163518 (= call!163525 call!163523)))

(declare-fun b!2557952 () Bool)

(assert (=> b!2557952 (= e!1615718 0)))

(declare-fun b!2557953 () Bool)

(declare-fun e!1615717 () Int)

(assert (=> b!2557953 (= e!1615717 e!1615716)))

(declare-fun c!410680 () Bool)

(assert (=> b!2557953 (= c!410680 ((_ is Star!7611) (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))))))

(declare-fun b!2557954 () Bool)

(declare-fun e!1615719 () Int)

(assert (=> b!2557954 (= e!1615720 e!1615719)))

(declare-fun c!410683 () Bool)

(assert (=> b!2557954 (= c!410683 ((_ is Concat!12307) (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))))))

(declare-fun b!2557955 () Bool)

(declare-fun c!410682 () Bool)

(assert (=> b!2557955 (= c!410682 ((_ is EmptyExpr!7611) (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))))))

(assert (=> b!2557955 (= e!1615719 e!1615717)))

(declare-fun b!2557956 () Bool)

(assert (=> b!2557956 (= e!1615717 0)))

(declare-fun b!2557957 () Bool)

(assert (=> b!2557957 (= e!1615719 (+ 1 call!163524 call!163523))))

(declare-fun bm!163519 () Bool)

(assert (=> bm!163519 (= call!163524 (RegexPrimitiveSize!120 (ite c!410683 (regOne!15734 (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))) (regTwo!15735 (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))))))))

(declare-fun bm!163520 () Bool)

(assert (=> bm!163520 (= call!163523 (RegexPrimitiveSize!120 (ite c!410683 (regTwo!15734 (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))) (ite c!410680 (reg!7940 (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340))))) (regOne!15735 (ite c!410176 (regTwo!15734 (regOne!15734 r!27340)) (ite c!410173 (reg!7940 (regOne!15734 r!27340)) (regOne!15735 (regOne!15734 r!27340)))))))))))

(declare-fun b!2557958 () Bool)

(assert (=> b!2557958 (= e!1615716 (+ 1 call!163525))))

(declare-fun b!2557959 () Bool)

(assert (=> b!2557959 (= e!1615720 1)))

(assert (= (and d!724813 c!410681) b!2557959))

(assert (= (and d!724813 (not c!410681)) b!2557954))

(assert (= (and b!2557954 c!410683) b!2557957))

(assert (= (and b!2557954 (not c!410683)) b!2557955))

(assert (= (and b!2557955 c!410682) b!2557956))

(assert (= (and b!2557955 (not c!410682)) b!2557953))

(assert (= (and b!2557953 c!410680) b!2557958))

(assert (= (and b!2557953 (not c!410680)) b!2557950))

(assert (= (and b!2557950 c!410679) b!2557952))

(assert (= (and b!2557950 (not c!410679)) b!2557951))

(assert (= (or b!2557958 b!2557951) bm!163518))

(assert (= (or b!2557957 bm!163518) bm!163520))

(assert (= (or b!2557957 b!2557951) bm!163519))

(declare-fun m!2899029 () Bool)

(assert (=> bm!163519 m!2899029))

(declare-fun m!2899031 () Bool)

(assert (=> bm!163520 m!2899031))

(assert (=> bm!163155 d!724813))

(declare-fun b!2557960 () Bool)

(declare-fun e!1615721 () Bool)

(assert (=> b!2557960 (= e!1615721 tp_is_empty!13077)))

(declare-fun b!2557961 () Bool)

(declare-fun tp!815007 () Bool)

(declare-fun tp!815008 () Bool)

(assert (=> b!2557961 (= e!1615721 (and tp!815007 tp!815008))))

(declare-fun b!2557962 () Bool)

(declare-fun tp!815005 () Bool)

(assert (=> b!2557962 (= e!1615721 tp!815005)))

(declare-fun b!2557963 () Bool)

(declare-fun tp!815006 () Bool)

(declare-fun tp!815009 () Bool)

(assert (=> b!2557963 (= e!1615721 (and tp!815006 tp!815009))))

(assert (=> b!2556658 (= tp!814866 e!1615721)))

(assert (= (and b!2556658 ((_ is ElementMatch!7611) (reg!7940 (regTwo!15734 r!27340)))) b!2557960))

(assert (= (and b!2556658 ((_ is Concat!12307) (reg!7940 (regTwo!15734 r!27340)))) b!2557961))

(assert (= (and b!2556658 ((_ is Star!7611) (reg!7940 (regTwo!15734 r!27340)))) b!2557962))

(assert (= (and b!2556658 ((_ is Union!7611) (reg!7940 (regTwo!15734 r!27340)))) b!2557963))

(declare-fun b!2557964 () Bool)

(declare-fun e!1615722 () Bool)

(assert (=> b!2557964 (= e!1615722 tp_is_empty!13077)))

(declare-fun b!2557965 () Bool)

(declare-fun tp!815012 () Bool)

(declare-fun tp!815013 () Bool)

(assert (=> b!2557965 (= e!1615722 (and tp!815012 tp!815013))))

(declare-fun b!2557966 () Bool)

(declare-fun tp!815010 () Bool)

(assert (=> b!2557966 (= e!1615722 tp!815010)))

(declare-fun b!2557967 () Bool)

(declare-fun tp!815011 () Bool)

(declare-fun tp!815014 () Bool)

(assert (=> b!2557967 (= e!1615722 (and tp!815011 tp!815014))))

(assert (=> b!2556653 (= tp!814863 e!1615722)))

(assert (= (and b!2556653 ((_ is ElementMatch!7611) (regOne!15734 (regOne!15734 r!27340)))) b!2557964))

(assert (= (and b!2556653 ((_ is Concat!12307) (regOne!15734 (regOne!15734 r!27340)))) b!2557965))

(assert (= (and b!2556653 ((_ is Star!7611) (regOne!15734 (regOne!15734 r!27340)))) b!2557966))

(assert (= (and b!2556653 ((_ is Union!7611) (regOne!15734 (regOne!15734 r!27340)))) b!2557967))

(declare-fun b!2557968 () Bool)

(declare-fun e!1615723 () Bool)

(assert (=> b!2557968 (= e!1615723 tp_is_empty!13077)))

(declare-fun b!2557969 () Bool)

(declare-fun tp!815017 () Bool)

(declare-fun tp!815018 () Bool)

(assert (=> b!2557969 (= e!1615723 (and tp!815017 tp!815018))))

(declare-fun b!2557970 () Bool)

(declare-fun tp!815015 () Bool)

(assert (=> b!2557970 (= e!1615723 tp!815015)))

(declare-fun b!2557971 () Bool)

(declare-fun tp!815016 () Bool)

(declare-fun tp!815019 () Bool)

(assert (=> b!2557971 (= e!1615723 (and tp!815016 tp!815019))))

(assert (=> b!2556653 (= tp!814864 e!1615723)))

(assert (= (and b!2556653 ((_ is ElementMatch!7611) (regTwo!15734 (regOne!15734 r!27340)))) b!2557968))

(assert (= (and b!2556653 ((_ is Concat!12307) (regTwo!15734 (regOne!15734 r!27340)))) b!2557969))

(assert (= (and b!2556653 ((_ is Star!7611) (regTwo!15734 (regOne!15734 r!27340)))) b!2557970))

(assert (= (and b!2556653 ((_ is Union!7611) (regTwo!15734 (regOne!15734 r!27340)))) b!2557971))

(declare-fun b!2557972 () Bool)

(declare-fun e!1615724 () Bool)

(assert (=> b!2557972 (= e!1615724 tp_is_empty!13077)))

(declare-fun b!2557973 () Bool)

(declare-fun tp!815022 () Bool)

(declare-fun tp!815023 () Bool)

(assert (=> b!2557973 (= e!1615724 (and tp!815022 tp!815023))))

(declare-fun b!2557974 () Bool)

(declare-fun tp!815020 () Bool)

(assert (=> b!2557974 (= e!1615724 tp!815020)))

(declare-fun b!2557975 () Bool)

(declare-fun tp!815021 () Bool)

(declare-fun tp!815024 () Bool)

(assert (=> b!2557975 (= e!1615724 (and tp!815021 tp!815024))))

(assert (=> b!2556657 (= tp!814868 e!1615724)))

(assert (= (and b!2556657 ((_ is ElementMatch!7611) (regOne!15734 (regTwo!15734 r!27340)))) b!2557972))

(assert (= (and b!2556657 ((_ is Concat!12307) (regOne!15734 (regTwo!15734 r!27340)))) b!2557973))

(assert (= (and b!2556657 ((_ is Star!7611) (regOne!15734 (regTwo!15734 r!27340)))) b!2557974))

(assert (= (and b!2556657 ((_ is Union!7611) (regOne!15734 (regTwo!15734 r!27340)))) b!2557975))

(declare-fun b!2557976 () Bool)

(declare-fun e!1615725 () Bool)

(assert (=> b!2557976 (= e!1615725 tp_is_empty!13077)))

(declare-fun b!2557977 () Bool)

(declare-fun tp!815027 () Bool)

(declare-fun tp!815028 () Bool)

(assert (=> b!2557977 (= e!1615725 (and tp!815027 tp!815028))))

(declare-fun b!2557978 () Bool)

(declare-fun tp!815025 () Bool)

(assert (=> b!2557978 (= e!1615725 tp!815025)))

(declare-fun b!2557979 () Bool)

(declare-fun tp!815026 () Bool)

(declare-fun tp!815029 () Bool)

(assert (=> b!2557979 (= e!1615725 (and tp!815026 tp!815029))))

(assert (=> b!2556657 (= tp!814869 e!1615725)))

(assert (= (and b!2556657 ((_ is ElementMatch!7611) (regTwo!15734 (regTwo!15734 r!27340)))) b!2557976))

(assert (= (and b!2556657 ((_ is Concat!12307) (regTwo!15734 (regTwo!15734 r!27340)))) b!2557977))

(assert (= (and b!2556657 ((_ is Star!7611) (regTwo!15734 (regTwo!15734 r!27340)))) b!2557978))

(assert (= (and b!2556657 ((_ is Union!7611) (regTwo!15734 (regTwo!15734 r!27340)))) b!2557979))

(declare-fun b!2557980 () Bool)

(declare-fun e!1615726 () Bool)

(assert (=> b!2557980 (= e!1615726 tp_is_empty!13077)))

(declare-fun b!2557981 () Bool)

(declare-fun tp!815032 () Bool)

(declare-fun tp!815033 () Bool)

(assert (=> b!2557981 (= e!1615726 (and tp!815032 tp!815033))))

(declare-fun b!2557982 () Bool)

(declare-fun tp!815030 () Bool)

(assert (=> b!2557982 (= e!1615726 tp!815030)))

(declare-fun b!2557983 () Bool)

(declare-fun tp!815031 () Bool)

(declare-fun tp!815034 () Bool)

(assert (=> b!2557983 (= e!1615726 (and tp!815031 tp!815034))))

(assert (=> b!2556650 (= tp!814856 e!1615726)))

(assert (= (and b!2556650 ((_ is ElementMatch!7611) (reg!7940 (regTwo!15735 r!27340)))) b!2557980))

(assert (= (and b!2556650 ((_ is Concat!12307) (reg!7940 (regTwo!15735 r!27340)))) b!2557981))

(assert (= (and b!2556650 ((_ is Star!7611) (reg!7940 (regTwo!15735 r!27340)))) b!2557982))

(assert (= (and b!2556650 ((_ is Union!7611) (reg!7940 (regTwo!15735 r!27340)))) b!2557983))

(declare-fun b!2557984 () Bool)

(declare-fun e!1615727 () Bool)

(assert (=> b!2557984 (= e!1615727 tp_is_empty!13077)))

(declare-fun b!2557985 () Bool)

(declare-fun tp!815037 () Bool)

(declare-fun tp!815038 () Bool)

(assert (=> b!2557985 (= e!1615727 (and tp!815037 tp!815038))))

(declare-fun b!2557986 () Bool)

(declare-fun tp!815035 () Bool)

(assert (=> b!2557986 (= e!1615727 tp!815035)))

(declare-fun b!2557987 () Bool)

(declare-fun tp!815036 () Bool)

(declare-fun tp!815039 () Bool)

(assert (=> b!2557987 (= e!1615727 (and tp!815036 tp!815039))))

(assert (=> b!2556645 (= tp!814853 e!1615727)))

(assert (= (and b!2556645 ((_ is ElementMatch!7611) (regOne!15734 (regOne!15735 r!27340)))) b!2557984))

(assert (= (and b!2556645 ((_ is Concat!12307) (regOne!15734 (regOne!15735 r!27340)))) b!2557985))

(assert (= (and b!2556645 ((_ is Star!7611) (regOne!15734 (regOne!15735 r!27340)))) b!2557986))

(assert (= (and b!2556645 ((_ is Union!7611) (regOne!15734 (regOne!15735 r!27340)))) b!2557987))

(declare-fun b!2557988 () Bool)

(declare-fun e!1615728 () Bool)

(assert (=> b!2557988 (= e!1615728 tp_is_empty!13077)))

(declare-fun b!2557989 () Bool)

(declare-fun tp!815042 () Bool)

(declare-fun tp!815043 () Bool)

(assert (=> b!2557989 (= e!1615728 (and tp!815042 tp!815043))))

(declare-fun b!2557990 () Bool)

(declare-fun tp!815040 () Bool)

(assert (=> b!2557990 (= e!1615728 tp!815040)))

(declare-fun b!2557991 () Bool)

(declare-fun tp!815041 () Bool)

(declare-fun tp!815044 () Bool)

(assert (=> b!2557991 (= e!1615728 (and tp!815041 tp!815044))))

(assert (=> b!2556645 (= tp!814854 e!1615728)))

(assert (= (and b!2556645 ((_ is ElementMatch!7611) (regTwo!15734 (regOne!15735 r!27340)))) b!2557988))

(assert (= (and b!2556645 ((_ is Concat!12307) (regTwo!15734 (regOne!15735 r!27340)))) b!2557989))

(assert (= (and b!2556645 ((_ is Star!7611) (regTwo!15734 (regOne!15735 r!27340)))) b!2557990))

(assert (= (and b!2556645 ((_ is Union!7611) (regTwo!15734 (regOne!15735 r!27340)))) b!2557991))

(declare-fun b!2557992 () Bool)

(declare-fun e!1615729 () Bool)

(assert (=> b!2557992 (= e!1615729 tp_is_empty!13077)))

(declare-fun b!2557993 () Bool)

(declare-fun tp!815047 () Bool)

(declare-fun tp!815048 () Bool)

(assert (=> b!2557993 (= e!1615729 (and tp!815047 tp!815048))))

(declare-fun b!2557994 () Bool)

(declare-fun tp!815045 () Bool)

(assert (=> b!2557994 (= e!1615729 tp!815045)))

(declare-fun b!2557995 () Bool)

(declare-fun tp!815046 () Bool)

(declare-fun tp!815049 () Bool)

(assert (=> b!2557995 (= e!1615729 (and tp!815046 tp!815049))))

(assert (=> b!2556659 (= tp!814867 e!1615729)))

(assert (= (and b!2556659 ((_ is ElementMatch!7611) (regOne!15735 (regTwo!15734 r!27340)))) b!2557992))

(assert (= (and b!2556659 ((_ is Concat!12307) (regOne!15735 (regTwo!15734 r!27340)))) b!2557993))

(assert (= (and b!2556659 ((_ is Star!7611) (regOne!15735 (regTwo!15734 r!27340)))) b!2557994))

(assert (= (and b!2556659 ((_ is Union!7611) (regOne!15735 (regTwo!15734 r!27340)))) b!2557995))

(declare-fun b!2557996 () Bool)

(declare-fun e!1615730 () Bool)

(assert (=> b!2557996 (= e!1615730 tp_is_empty!13077)))

(declare-fun b!2557997 () Bool)

(declare-fun tp!815052 () Bool)

(declare-fun tp!815053 () Bool)

(assert (=> b!2557997 (= e!1615730 (and tp!815052 tp!815053))))

(declare-fun b!2557998 () Bool)

(declare-fun tp!815050 () Bool)

(assert (=> b!2557998 (= e!1615730 tp!815050)))

(declare-fun b!2557999 () Bool)

(declare-fun tp!815051 () Bool)

(declare-fun tp!815054 () Bool)

(assert (=> b!2557999 (= e!1615730 (and tp!815051 tp!815054))))

(assert (=> b!2556659 (= tp!814870 e!1615730)))

(assert (= (and b!2556659 ((_ is ElementMatch!7611) (regTwo!15735 (regTwo!15734 r!27340)))) b!2557996))

(assert (= (and b!2556659 ((_ is Concat!12307) (regTwo!15735 (regTwo!15734 r!27340)))) b!2557997))

(assert (= (and b!2556659 ((_ is Star!7611) (regTwo!15735 (regTwo!15734 r!27340)))) b!2557998))

(assert (= (and b!2556659 ((_ is Union!7611) (regTwo!15735 (regTwo!15734 r!27340)))) b!2557999))

(declare-fun b!2558000 () Bool)

(declare-fun e!1615731 () Bool)

(assert (=> b!2558000 (= e!1615731 tp_is_empty!13077)))

(declare-fun b!2558001 () Bool)

(declare-fun tp!815057 () Bool)

(declare-fun tp!815058 () Bool)

(assert (=> b!2558001 (= e!1615731 (and tp!815057 tp!815058))))

(declare-fun b!2558002 () Bool)

(declare-fun tp!815055 () Bool)

(assert (=> b!2558002 (= e!1615731 tp!815055)))

(declare-fun b!2558003 () Bool)

(declare-fun tp!815056 () Bool)

(declare-fun tp!815059 () Bool)

(assert (=> b!2558003 (= e!1615731 (and tp!815056 tp!815059))))

(assert (=> b!2556654 (= tp!814861 e!1615731)))

(assert (= (and b!2556654 ((_ is ElementMatch!7611) (reg!7940 (regOne!15734 r!27340)))) b!2558000))

(assert (= (and b!2556654 ((_ is Concat!12307) (reg!7940 (regOne!15734 r!27340)))) b!2558001))

(assert (= (and b!2556654 ((_ is Star!7611) (reg!7940 (regOne!15734 r!27340)))) b!2558002))

(assert (= (and b!2556654 ((_ is Union!7611) (reg!7940 (regOne!15734 r!27340)))) b!2558003))

(declare-fun b!2558004 () Bool)

(declare-fun e!1615732 () Bool)

(assert (=> b!2558004 (= e!1615732 tp_is_empty!13077)))

(declare-fun b!2558005 () Bool)

(declare-fun tp!815062 () Bool)

(declare-fun tp!815063 () Bool)

(assert (=> b!2558005 (= e!1615732 (and tp!815062 tp!815063))))

(declare-fun b!2558006 () Bool)

(declare-fun tp!815060 () Bool)

(assert (=> b!2558006 (= e!1615732 tp!815060)))

(declare-fun b!2558007 () Bool)

(declare-fun tp!815061 () Bool)

(declare-fun tp!815064 () Bool)

(assert (=> b!2558007 (= e!1615732 (and tp!815061 tp!815064))))

(assert (=> b!2556649 (= tp!814858 e!1615732)))

(assert (= (and b!2556649 ((_ is ElementMatch!7611) (regOne!15734 (regTwo!15735 r!27340)))) b!2558004))

(assert (= (and b!2556649 ((_ is Concat!12307) (regOne!15734 (regTwo!15735 r!27340)))) b!2558005))

(assert (= (and b!2556649 ((_ is Star!7611) (regOne!15734 (regTwo!15735 r!27340)))) b!2558006))

(assert (= (and b!2556649 ((_ is Union!7611) (regOne!15734 (regTwo!15735 r!27340)))) b!2558007))

(declare-fun b!2558008 () Bool)

(declare-fun e!1615733 () Bool)

(assert (=> b!2558008 (= e!1615733 tp_is_empty!13077)))

(declare-fun b!2558009 () Bool)

(declare-fun tp!815067 () Bool)

(declare-fun tp!815068 () Bool)

(assert (=> b!2558009 (= e!1615733 (and tp!815067 tp!815068))))

(declare-fun b!2558010 () Bool)

(declare-fun tp!815065 () Bool)

(assert (=> b!2558010 (= e!1615733 tp!815065)))

(declare-fun b!2558011 () Bool)

(declare-fun tp!815066 () Bool)

(declare-fun tp!815069 () Bool)

(assert (=> b!2558011 (= e!1615733 (and tp!815066 tp!815069))))

(assert (=> b!2556649 (= tp!814859 e!1615733)))

(assert (= (and b!2556649 ((_ is ElementMatch!7611) (regTwo!15734 (regTwo!15735 r!27340)))) b!2558008))

(assert (= (and b!2556649 ((_ is Concat!12307) (regTwo!15734 (regTwo!15735 r!27340)))) b!2558009))

(assert (= (and b!2556649 ((_ is Star!7611) (regTwo!15734 (regTwo!15735 r!27340)))) b!2558010))

(assert (= (and b!2556649 ((_ is Union!7611) (regTwo!15734 (regTwo!15735 r!27340)))) b!2558011))

(declare-fun b!2558012 () Bool)

(declare-fun e!1615734 () Bool)

(declare-fun tp!815070 () Bool)

(assert (=> b!2558012 (= e!1615734 (and tp_is_empty!13077 tp!815070))))

(assert (=> b!2556664 (= tp!814873 e!1615734)))

(assert (= (and b!2556664 ((_ is Cons!29576) (t!211375 (t!211375 tl!4068)))) b!2558012))

(declare-fun b!2558013 () Bool)

(declare-fun e!1615735 () Bool)

(assert (=> b!2558013 (= e!1615735 tp_is_empty!13077)))

(declare-fun b!2558014 () Bool)

(declare-fun tp!815073 () Bool)

(declare-fun tp!815074 () Bool)

(assert (=> b!2558014 (= e!1615735 (and tp!815073 tp!815074))))

(declare-fun b!2558015 () Bool)

(declare-fun tp!815071 () Bool)

(assert (=> b!2558015 (= e!1615735 tp!815071)))

(declare-fun b!2558016 () Bool)

(declare-fun tp!815072 () Bool)

(declare-fun tp!815075 () Bool)

(assert (=> b!2558016 (= e!1615735 (and tp!815072 tp!815075))))

(assert (=> b!2556668 (= tp!814875 e!1615735)))

(assert (= (and b!2556668 ((_ is ElementMatch!7611) (regOne!15735 (reg!7940 r!27340)))) b!2558013))

(assert (= (and b!2556668 ((_ is Concat!12307) (regOne!15735 (reg!7940 r!27340)))) b!2558014))

(assert (= (and b!2556668 ((_ is Star!7611) (regOne!15735 (reg!7940 r!27340)))) b!2558015))

(assert (= (and b!2556668 ((_ is Union!7611) (regOne!15735 (reg!7940 r!27340)))) b!2558016))

(declare-fun b!2558017 () Bool)

(declare-fun e!1615736 () Bool)

(assert (=> b!2558017 (= e!1615736 tp_is_empty!13077)))

(declare-fun b!2558018 () Bool)

(declare-fun tp!815078 () Bool)

(declare-fun tp!815079 () Bool)

(assert (=> b!2558018 (= e!1615736 (and tp!815078 tp!815079))))

(declare-fun b!2558019 () Bool)

(declare-fun tp!815076 () Bool)

(assert (=> b!2558019 (= e!1615736 tp!815076)))

(declare-fun b!2558020 () Bool)

(declare-fun tp!815077 () Bool)

(declare-fun tp!815080 () Bool)

(assert (=> b!2558020 (= e!1615736 (and tp!815077 tp!815080))))

(assert (=> b!2556668 (= tp!814878 e!1615736)))

(assert (= (and b!2556668 ((_ is ElementMatch!7611) (regTwo!15735 (reg!7940 r!27340)))) b!2558017))

(assert (= (and b!2556668 ((_ is Concat!12307) (regTwo!15735 (reg!7940 r!27340)))) b!2558018))

(assert (= (and b!2556668 ((_ is Star!7611) (regTwo!15735 (reg!7940 r!27340)))) b!2558019))

(assert (= (and b!2556668 ((_ is Union!7611) (regTwo!15735 (reg!7940 r!27340)))) b!2558020))

(declare-fun b!2558021 () Bool)

(declare-fun e!1615737 () Bool)

(assert (=> b!2558021 (= e!1615737 tp_is_empty!13077)))

(declare-fun b!2558022 () Bool)

(declare-fun tp!815083 () Bool)

(declare-fun tp!815084 () Bool)

(assert (=> b!2558022 (= e!1615737 (and tp!815083 tp!815084))))

(declare-fun b!2558023 () Bool)

(declare-fun tp!815081 () Bool)

(assert (=> b!2558023 (= e!1615737 tp!815081)))

(declare-fun b!2558024 () Bool)

(declare-fun tp!815082 () Bool)

(declare-fun tp!815085 () Bool)

(assert (=> b!2558024 (= e!1615737 (and tp!815082 tp!815085))))

(assert (=> b!2556666 (= tp!814876 e!1615737)))

(assert (= (and b!2556666 ((_ is ElementMatch!7611) (regOne!15734 (reg!7940 r!27340)))) b!2558021))

(assert (= (and b!2556666 ((_ is Concat!12307) (regOne!15734 (reg!7940 r!27340)))) b!2558022))

(assert (= (and b!2556666 ((_ is Star!7611) (regOne!15734 (reg!7940 r!27340)))) b!2558023))

(assert (= (and b!2556666 ((_ is Union!7611) (regOne!15734 (reg!7940 r!27340)))) b!2558024))

(declare-fun b!2558025 () Bool)

(declare-fun e!1615738 () Bool)

(assert (=> b!2558025 (= e!1615738 tp_is_empty!13077)))

(declare-fun b!2558026 () Bool)

(declare-fun tp!815088 () Bool)

(declare-fun tp!815089 () Bool)

(assert (=> b!2558026 (= e!1615738 (and tp!815088 tp!815089))))

(declare-fun b!2558027 () Bool)

(declare-fun tp!815086 () Bool)

(assert (=> b!2558027 (= e!1615738 tp!815086)))

(declare-fun b!2558028 () Bool)

(declare-fun tp!815087 () Bool)

(declare-fun tp!815090 () Bool)

(assert (=> b!2558028 (= e!1615738 (and tp!815087 tp!815090))))

(assert (=> b!2556666 (= tp!814877 e!1615738)))

(assert (= (and b!2556666 ((_ is ElementMatch!7611) (regTwo!15734 (reg!7940 r!27340)))) b!2558025))

(assert (= (and b!2556666 ((_ is Concat!12307) (regTwo!15734 (reg!7940 r!27340)))) b!2558026))

(assert (= (and b!2556666 ((_ is Star!7611) (regTwo!15734 (reg!7940 r!27340)))) b!2558027))

(assert (= (and b!2556666 ((_ is Union!7611) (regTwo!15734 (reg!7940 r!27340)))) b!2558028))

(declare-fun b!2558029 () Bool)

(declare-fun e!1615739 () Bool)

(assert (=> b!2558029 (= e!1615739 tp_is_empty!13077)))

(declare-fun b!2558030 () Bool)

(declare-fun tp!815093 () Bool)

(declare-fun tp!815094 () Bool)

(assert (=> b!2558030 (= e!1615739 (and tp!815093 tp!815094))))

(declare-fun b!2558031 () Bool)

(declare-fun tp!815091 () Bool)

(assert (=> b!2558031 (= e!1615739 tp!815091)))

(declare-fun b!2558032 () Bool)

(declare-fun tp!815092 () Bool)

(declare-fun tp!815095 () Bool)

(assert (=> b!2558032 (= e!1615739 (and tp!815092 tp!815095))))

(assert (=> b!2556651 (= tp!814857 e!1615739)))

(assert (= (and b!2556651 ((_ is ElementMatch!7611) (regOne!15735 (regTwo!15735 r!27340)))) b!2558029))

(assert (= (and b!2556651 ((_ is Concat!12307) (regOne!15735 (regTwo!15735 r!27340)))) b!2558030))

(assert (= (and b!2556651 ((_ is Star!7611) (regOne!15735 (regTwo!15735 r!27340)))) b!2558031))

(assert (= (and b!2556651 ((_ is Union!7611) (regOne!15735 (regTwo!15735 r!27340)))) b!2558032))

(declare-fun b!2558033 () Bool)

(declare-fun e!1615740 () Bool)

(assert (=> b!2558033 (= e!1615740 tp_is_empty!13077)))

(declare-fun b!2558034 () Bool)

(declare-fun tp!815098 () Bool)

(declare-fun tp!815099 () Bool)

(assert (=> b!2558034 (= e!1615740 (and tp!815098 tp!815099))))

(declare-fun b!2558035 () Bool)

(declare-fun tp!815096 () Bool)

(assert (=> b!2558035 (= e!1615740 tp!815096)))

(declare-fun b!2558036 () Bool)

(declare-fun tp!815097 () Bool)

(declare-fun tp!815100 () Bool)

(assert (=> b!2558036 (= e!1615740 (and tp!815097 tp!815100))))

(assert (=> b!2556651 (= tp!814860 e!1615740)))

(assert (= (and b!2556651 ((_ is ElementMatch!7611) (regTwo!15735 (regTwo!15735 r!27340)))) b!2558033))

(assert (= (and b!2556651 ((_ is Concat!12307) (regTwo!15735 (regTwo!15735 r!27340)))) b!2558034))

(assert (= (and b!2556651 ((_ is Star!7611) (regTwo!15735 (regTwo!15735 r!27340)))) b!2558035))

(assert (= (and b!2556651 ((_ is Union!7611) (regTwo!15735 (regTwo!15735 r!27340)))) b!2558036))

(declare-fun b!2558037 () Bool)

(declare-fun e!1615741 () Bool)

(assert (=> b!2558037 (= e!1615741 tp_is_empty!13077)))

(declare-fun b!2558038 () Bool)

(declare-fun tp!815103 () Bool)

(declare-fun tp!815104 () Bool)

(assert (=> b!2558038 (= e!1615741 (and tp!815103 tp!815104))))

(declare-fun b!2558039 () Bool)

(declare-fun tp!815101 () Bool)

(assert (=> b!2558039 (= e!1615741 tp!815101)))

(declare-fun b!2558040 () Bool)

(declare-fun tp!815102 () Bool)

(declare-fun tp!815105 () Bool)

(assert (=> b!2558040 (= e!1615741 (and tp!815102 tp!815105))))

(assert (=> b!2556646 (= tp!814851 e!1615741)))

(assert (= (and b!2556646 ((_ is ElementMatch!7611) (reg!7940 (regOne!15735 r!27340)))) b!2558037))

(assert (= (and b!2556646 ((_ is Concat!12307) (reg!7940 (regOne!15735 r!27340)))) b!2558038))

(assert (= (and b!2556646 ((_ is Star!7611) (reg!7940 (regOne!15735 r!27340)))) b!2558039))

(assert (= (and b!2556646 ((_ is Union!7611) (reg!7940 (regOne!15735 r!27340)))) b!2558040))

(declare-fun b!2558041 () Bool)

(declare-fun e!1615742 () Bool)

(assert (=> b!2558041 (= e!1615742 tp_is_empty!13077)))

(declare-fun b!2558042 () Bool)

(declare-fun tp!815108 () Bool)

(declare-fun tp!815109 () Bool)

(assert (=> b!2558042 (= e!1615742 (and tp!815108 tp!815109))))

(declare-fun b!2558043 () Bool)

(declare-fun tp!815106 () Bool)

(assert (=> b!2558043 (= e!1615742 tp!815106)))

(declare-fun b!2558044 () Bool)

(declare-fun tp!815107 () Bool)

(declare-fun tp!815110 () Bool)

(assert (=> b!2558044 (= e!1615742 (and tp!815107 tp!815110))))

(assert (=> b!2556655 (= tp!814862 e!1615742)))

(assert (= (and b!2556655 ((_ is ElementMatch!7611) (regOne!15735 (regOne!15734 r!27340)))) b!2558041))

(assert (= (and b!2556655 ((_ is Concat!12307) (regOne!15735 (regOne!15734 r!27340)))) b!2558042))

(assert (= (and b!2556655 ((_ is Star!7611) (regOne!15735 (regOne!15734 r!27340)))) b!2558043))

(assert (= (and b!2556655 ((_ is Union!7611) (regOne!15735 (regOne!15734 r!27340)))) b!2558044))

(declare-fun b!2558045 () Bool)

(declare-fun e!1615743 () Bool)

(assert (=> b!2558045 (= e!1615743 tp_is_empty!13077)))

(declare-fun b!2558046 () Bool)

(declare-fun tp!815113 () Bool)

(declare-fun tp!815114 () Bool)

(assert (=> b!2558046 (= e!1615743 (and tp!815113 tp!815114))))

(declare-fun b!2558047 () Bool)

(declare-fun tp!815111 () Bool)

(assert (=> b!2558047 (= e!1615743 tp!815111)))

(declare-fun b!2558048 () Bool)

(declare-fun tp!815112 () Bool)

(declare-fun tp!815115 () Bool)

(assert (=> b!2558048 (= e!1615743 (and tp!815112 tp!815115))))

(assert (=> b!2556655 (= tp!814865 e!1615743)))

(assert (= (and b!2556655 ((_ is ElementMatch!7611) (regTwo!15735 (regOne!15734 r!27340)))) b!2558045))

(assert (= (and b!2556655 ((_ is Concat!12307) (regTwo!15735 (regOne!15734 r!27340)))) b!2558046))

(assert (= (and b!2556655 ((_ is Star!7611) (regTwo!15735 (regOne!15734 r!27340)))) b!2558047))

(assert (= (and b!2556655 ((_ is Union!7611) (regTwo!15735 (regOne!15734 r!27340)))) b!2558048))

(declare-fun b!2558049 () Bool)

(declare-fun e!1615744 () Bool)

(assert (=> b!2558049 (= e!1615744 tp_is_empty!13077)))

(declare-fun b!2558050 () Bool)

(declare-fun tp!815118 () Bool)

(declare-fun tp!815119 () Bool)

(assert (=> b!2558050 (= e!1615744 (and tp!815118 tp!815119))))

(declare-fun b!2558051 () Bool)

(declare-fun tp!815116 () Bool)

(assert (=> b!2558051 (= e!1615744 tp!815116)))

(declare-fun b!2558052 () Bool)

(declare-fun tp!815117 () Bool)

(declare-fun tp!815120 () Bool)

(assert (=> b!2558052 (= e!1615744 (and tp!815117 tp!815120))))

(assert (=> b!2556667 (= tp!814874 e!1615744)))

(assert (= (and b!2556667 ((_ is ElementMatch!7611) (reg!7940 (reg!7940 r!27340)))) b!2558049))

(assert (= (and b!2556667 ((_ is Concat!12307) (reg!7940 (reg!7940 r!27340)))) b!2558050))

(assert (= (and b!2556667 ((_ is Star!7611) (reg!7940 (reg!7940 r!27340)))) b!2558051))

(assert (= (and b!2556667 ((_ is Union!7611) (reg!7940 (reg!7940 r!27340)))) b!2558052))

(declare-fun b!2558053 () Bool)

(declare-fun e!1615745 () Bool)

(assert (=> b!2558053 (= e!1615745 tp_is_empty!13077)))

(declare-fun b!2558054 () Bool)

(declare-fun tp!815123 () Bool)

(declare-fun tp!815124 () Bool)

(assert (=> b!2558054 (= e!1615745 (and tp!815123 tp!815124))))

(declare-fun b!2558055 () Bool)

(declare-fun tp!815121 () Bool)

(assert (=> b!2558055 (= e!1615745 tp!815121)))

(declare-fun b!2558056 () Bool)

(declare-fun tp!815122 () Bool)

(declare-fun tp!815125 () Bool)

(assert (=> b!2558056 (= e!1615745 (and tp!815122 tp!815125))))

(assert (=> b!2556647 (= tp!814852 e!1615745)))

(assert (= (and b!2556647 ((_ is ElementMatch!7611) (regOne!15735 (regOne!15735 r!27340)))) b!2558053))

(assert (= (and b!2556647 ((_ is Concat!12307) (regOne!15735 (regOne!15735 r!27340)))) b!2558054))

(assert (= (and b!2556647 ((_ is Star!7611) (regOne!15735 (regOne!15735 r!27340)))) b!2558055))

(assert (= (and b!2556647 ((_ is Union!7611) (regOne!15735 (regOne!15735 r!27340)))) b!2558056))

(declare-fun b!2558057 () Bool)

(declare-fun e!1615746 () Bool)

(assert (=> b!2558057 (= e!1615746 tp_is_empty!13077)))

(declare-fun b!2558058 () Bool)

(declare-fun tp!815128 () Bool)

(declare-fun tp!815129 () Bool)

(assert (=> b!2558058 (= e!1615746 (and tp!815128 tp!815129))))

(declare-fun b!2558059 () Bool)

(declare-fun tp!815126 () Bool)

(assert (=> b!2558059 (= e!1615746 tp!815126)))

(declare-fun b!2558060 () Bool)

(declare-fun tp!815127 () Bool)

(declare-fun tp!815130 () Bool)

(assert (=> b!2558060 (= e!1615746 (and tp!815127 tp!815130))))

(assert (=> b!2556647 (= tp!814855 e!1615746)))

(assert (= (and b!2556647 ((_ is ElementMatch!7611) (regTwo!15735 (regOne!15735 r!27340)))) b!2558057))

(assert (= (and b!2556647 ((_ is Concat!12307) (regTwo!15735 (regOne!15735 r!27340)))) b!2558058))

(assert (= (and b!2556647 ((_ is Star!7611) (regTwo!15735 (regOne!15735 r!27340)))) b!2558059))

(assert (= (and b!2556647 ((_ is Union!7611) (regTwo!15735 (regOne!15735 r!27340)))) b!2558060))

(check-sat (not b!2557900) (not bm!163458) (not b!2557978) (not b!2558030) (not b!2557967) (not bm!163401) (not d!724591) (not b!2558054) (not b!2558026) (not d!724745) (not bm!163411) (not b!2557780) tp_is_empty!13077 (not b!2557985) (not b!2558024) (not b!2557903) (not d!724539) (not bm!163480) (not bm!163461) (not d!724801) (not b!2557024) (not bm!163295) (not bm!163511) (not bm!163393) (not b!2557427) (not d!724633) (not b!2557801) (not b!2557055) (not b!2557022) (not b!2557997) (not bm!163292) (not bm!163442) (not b!2556934) (not bm!163519) (not d!724537) (not bm!163451) (not b!2557932) (not bm!163489) (not b!2557762) (not d!724769) (not d!724719) (not b!2557990) (not b!2558014) (not bm!163513) (not b!2558059) (not b!2557901) (not b!2557662) (not b!2557502) (not b!2557004) (not bm!163332) (not b!2556978) (not b!2557457) (not d!724727) (not b!2557486) (not b!2557798) (not d!724785) (not b!2557537) (not bm!163358) (not bm!163454) (not bm!163484) (not b!2557528) (not b!2557062) (not bm!163463) (not d!724729) (not bm!163336) (not d!724559) (not b!2558011) (not b!2556919) (not b!2558023) (not b!2557490) (not d!724599) (not b!2557667) (not bm!163495) (not b!2557600) (not d!724743) (not b!2557983) (not b!2557785) (not b!2558042) (not bm!163492) (not b!2557425) (not b!2558001) (not b!2557060) (not b!2558039) (not d!724783) (not b!2557804) (not b!2557790) (not b!2557669) (not bm!163342) (not b!2558046) (not b!2557999) (not bm!163439) (not b!2557735) (not b!2557422) (not b!2557778) (not bm!163468) (not b!2557488) (not d!724519) (not b!2557880) (not b!2557991) (not b!2558060) (not b!2557343) (not b!2557408) (not b!2556974) (not b!2558056) (not bm!163399) (not bm!163390) (not bm!163475) (not bm!163494) (not bm!163428) (not bm!163457) (not b!2557101) (not d!724670) (not bm!163466) (not bm!163438) (not b!2557974) (not b!2557088) (not b!2557145) (not d!724661) (not b!2557238) (not b!2557970) (not bm!163317) (not b!2557886) (not b!2557054) (not bm!163514) (not b!2557975) (not bm!163486) (not b!2558048) (not bm!163471) (not bm!163467) (not b!2557421) (not b!2557981) (not d!724749) (not d!724511) (not bm!163329) (not d!724761) (not b!2558035) (not b!2558006) (not b!2557721) (not bm!163435) (not b!2558055) (not bm!163402) (not b!2557519) (not bm!163491) (not bm!163328) (not bm!163507) (not b!2557058) (not b!2558047) (not b!2557989) (not b!2557794) (not b!2557033) (not b!2557969) (not b!2557962) (not bm!163500) (not b!2557929) (not b!2557814) (not bm!163436) (not bm!163398) (not d!724497) (not b!2557971) (not b!2557889) (not b!2557795) (not bm!163423) (not b!2557638) (not d!724723) (not b!2557057) (not b!2557379) (not b!2557665) (not b!2557777) (not bm!163517) (not b!2558010) (not b!2557701) (not b!2558022) (not bm!163512) (not d!724773) (not bm!163426) (not bm!163326) (not b!2557753) (not b!2558038) (not d!724641) (not bm!163503) (not b!2558003) (not b!2557664) (not b!2557126) (not b!2557237) (not b!2557800) (not b!2558007) (not bm!163447) (not b!2557897) (not b!2556924) (not b!2557613) (not b!2557987) (not bm!163462) (not bm!163431) (not d!724779) (not b!2556970) (not b!2558027) (not d!724695) (not b!2557781) (not b!2558031) (not bm!163335) (not b!2557883) (not bm!163394) (not b!2557783) (not bm!163299) (not b!2558018) (not bm!163331) (not b!2558028) (not d!724485) (not b!2558002) (not d!724529) (not b!2558012) (not b!2557898) (not bm!163441) (not b!2557766) (not b!2558009) (not b!2557982) (not b!2557124) (not d!724765) (not b!2557201) (not b!2556971) (not d!724569) (not b!2558005) (not d!724747) (not b!2557825) (not bm!163478) (not b!2557144) (not b!2557751) (not b!2558019) (not b!2558016) (not bm!163308) (not b!2557141) (not b!2557482) (not bm!163481) (not b!2558051) (not bm!163473) (not bm!163505) (not b!2557995) (not d!724775) (not d!724589) (not b!2558043) (not d!724707) (not b!2558036) (not d!724721) (not d!724741) (not b!2557026) (not bm!163499) (not b!2557998) (not b!2557019) (not bm!163502) (not d!724767) (not bm!163510) (not b!2556973) (not b!2557823) (not bm!163520) (not b!2557429) (not b!2557661) (not b!2557891) (not b!2557127) (not b!2557791) (not d!724681) (not bm!163453) (not b!2557018) (not b!2558058) (not bm!163496) (not bm!163318) (not b!2557963) (not b!2557424) (not b!2557802) (not b!2557485) (not bm!163412) (not b!2557936) (not b!2557594) (not b!2558050) (not d!724575) (not d!724763) (not b!2557483) (not bm!163448) (not b!2557147) (not b!2557732) (not b!2558040) (not b!2557934) (not b!2557884) (not b!2557910) (not b!2556976) (not d!724809) (not b!2557862) (not b!2557871) (not b!2557966) (not b!2557905) (not bm!163313) (not d!724771) (not b!2557994) (not bm!163319) (not b!2557142) (not b!2557364) (not bm!163296) (not b!2557763) (not b!2558032) (not b!2557805) (not b!2557887) (not b!2557993) (not d!724725) (not bm!163434) (not bm!163479) (not b!2557986) (not d!724701) (not d!724811) (not bm!163391) (not b!2558052) (not b!2557931) (not b!2557588) (not bm!163497) (not d!724487) (not b!2557961) (not b!2557979) (not bm!163322) (not d!724805) (not b!2557712) (not bm!163392) (not d!724803) (not d!724527) (not bm!163506) (not b!2557021) (not b!2557928) (not bm!163483) (not bm!163418) (not b!2557749) (not b!2558020) (not d!724731) (not b!2558044) (not b!2557691) (not b!2557973) (not b!2557977) (not b!2557941) (not b!2557965) (not bm!163361) (not bm!163450) (not bm!163472) (not bm!163397) (not b!2558015) (not b!2558034) (not b!2557149))
(check-sat)
