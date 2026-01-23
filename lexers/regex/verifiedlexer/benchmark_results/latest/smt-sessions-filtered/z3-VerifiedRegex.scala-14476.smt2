; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753204 () Bool)

(assert start!753204)

(declare-fun b!8005579 () Bool)

(declare-fun e!4715969 () Bool)

(declare-fun e!4715959 () Bool)

(assert (=> b!8005579 (= e!4715969 e!4715959)))

(declare-fun res!3165716 () Bool)

(assert (=> b!8005579 (=> res!3165716 e!4715959)))

(declare-fun lt!2714997 () Int)

(declare-fun lt!2715001 () Int)

(assert (=> b!8005579 (= res!3165716 (>= lt!2714997 lt!2715001))))

(declare-datatypes ((Unit!170690 0))(
  ( (Unit!170691) )
))
(declare-fun lt!2714995 () Unit!170690)

(declare-fun e!4715968 () Unit!170690)

(assert (=> b!8005579 (= lt!2714995 e!4715968)))

(declare-fun c!1469611 () Bool)

(assert (=> b!8005579 (= c!1469611 (= lt!2714997 lt!2715001))))

(assert (=> b!8005579 (<= lt!2714997 lt!2715001)))

(declare-fun lt!2715007 () Unit!170690)

(declare-datatypes ((C!43604 0))(
  ( (C!43605 (val!32350 Int)) )
))
(declare-datatypes ((List!74862 0))(
  ( (Nil!74738) (Cons!74738 (h!81186 C!43604) (t!390605 List!74862)) )
))
(declare-fun testedP!353 () List!74862)

(declare-fun totalInput!1349 () List!74862)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1188 (List!74862 List!74862) Unit!170690)

(assert (=> b!8005579 (= lt!2715007 (lemmaIsPrefixThenSmallerEqSize!1188 testedP!353 totalInput!1349))))

(declare-fun b!8005580 () Bool)

(declare-fun e!4715961 () Bool)

(assert (=> b!8005580 (= e!4715959 e!4715961)))

(declare-fun res!3165718 () Bool)

(assert (=> b!8005580 (=> res!3165718 e!4715961)))

(declare-datatypes ((Regex!21633 0))(
  ( (ElementMatch!21633 (c!1469612 C!43604)) (Concat!30632 (regOne!43778 Regex!21633) (regTwo!43778 Regex!21633)) (EmptyExpr!21633) (Star!21633 (reg!21962 Regex!21633)) (EmptyLang!21633) (Union!21633 (regOne!43779 Regex!21633) (regTwo!43779 Regex!21633)) )
))
(declare-fun r!15422 () Regex!21633)

(declare-fun nullable!9691 (Regex!21633) Bool)

(assert (=> b!8005580 (= res!3165718 (not (nullable!9691 r!15422)))))

(declare-fun lt!2714996 () List!74862)

(declare-fun lt!2714994 () List!74862)

(declare-fun ++!18459 (List!74862 List!74862) List!74862)

(assert (=> b!8005580 (= (++!18459 lt!2714996 lt!2714994) totalInput!1349)))

(declare-fun lt!2715000 () Unit!170690)

(declare-fun lt!2714993 () C!43604)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3568 (List!74862 C!43604 List!74862 List!74862) Unit!170690)

(assert (=> b!8005580 (= lt!2715000 (lemmaMoveElementToOtherListKeepsConcatEq!3568 testedP!353 lt!2714993 lt!2714994 totalInput!1349))))

(declare-fun testedSuffix!271 () List!74862)

(declare-fun tail!15848 (List!74862) List!74862)

(assert (=> b!8005580 (= lt!2714994 (tail!15848 testedSuffix!271))))

(declare-fun lt!2715005 () List!74862)

(declare-fun isPrefix!6687 (List!74862 List!74862) Bool)

(declare-fun head!16325 (List!74862) C!43604)

(assert (=> b!8005580 (isPrefix!6687 (++!18459 testedP!353 (Cons!74738 (head!16325 lt!2715005) Nil!74738)) totalInput!1349)))

(declare-fun lt!2715004 () Unit!170690)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1384 (List!74862 List!74862) Unit!170690)

(assert (=> b!8005580 (= lt!2715004 (lemmaAddHeadSuffixToPrefixStillPrefix!1384 testedP!353 totalInput!1349))))

(assert (=> b!8005580 (= lt!2714996 (++!18459 testedP!353 (Cons!74738 lt!2714993 Nil!74738)))))

(assert (=> b!8005580 (= lt!2714993 (head!16325 testedSuffix!271))))

(declare-fun b!8005581 () Bool)

(declare-fun Unit!170692 () Unit!170690)

(assert (=> b!8005581 (= e!4715968 Unit!170692)))

(declare-fun lt!2715003 () Unit!170690)

(declare-fun lemmaIsPrefixRefl!4139 (List!74862 List!74862) Unit!170690)

(assert (=> b!8005581 (= lt!2715003 (lemmaIsPrefixRefl!4139 totalInput!1349 totalInput!1349))))

(assert (=> b!8005581 (isPrefix!6687 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714992 () Unit!170690)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1713 (List!74862 List!74862 List!74862) Unit!170690)

(assert (=> b!8005581 (= lt!2714992 (lemmaIsPrefixSameLengthThenSameList!1713 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8005581 false))

(declare-fun b!8005582 () Bool)

(declare-fun e!4715960 () Bool)

(declare-fun tp!2395337 () Bool)

(declare-fun tp!2395333 () Bool)

(assert (=> b!8005582 (= e!4715960 (and tp!2395337 tp!2395333))))

(declare-fun b!8005583 () Bool)

(declare-fun e!4715965 () Bool)

(declare-fun tp_is_empty!53809 () Bool)

(declare-fun tp!2395335 () Bool)

(assert (=> b!8005583 (= e!4715965 (and tp_is_empty!53809 tp!2395335))))

(declare-fun res!3165712 () Bool)

(declare-fun e!4715971 () Bool)

(assert (=> start!753204 (=> (not res!3165712) (not e!4715971))))

(declare-fun validRegex!11937 (Regex!21633) Bool)

(assert (=> start!753204 (= res!3165712 (validRegex!11937 r!15422))))

(assert (=> start!753204 e!4715971))

(declare-fun e!4715966 () Bool)

(assert (=> start!753204 e!4715966))

(assert (=> start!753204 true))

(declare-fun e!4715967 () Bool)

(assert (=> start!753204 e!4715967))

(assert (=> start!753204 e!4715960))

(assert (=> start!753204 e!4715965))

(declare-fun b!8005584 () Bool)

(assert (=> b!8005584 (= e!4715960 tp_is_empty!53809)))

(declare-fun b!8005585 () Bool)

(declare-fun tp!2395332 () Bool)

(assert (=> b!8005585 (= e!4715960 tp!2395332)))

(declare-fun b!8005586 () Bool)

(declare-fun Unit!170693 () Unit!170690)

(assert (=> b!8005586 (= e!4715968 Unit!170693)))

(declare-fun b!8005587 () Bool)

(declare-fun tp!2395334 () Bool)

(assert (=> b!8005587 (= e!4715966 (and tp_is_empty!53809 tp!2395334))))

(declare-fun b!8005588 () Bool)

(declare-fun tp!2395336 () Bool)

(declare-fun tp!2395331 () Bool)

(assert (=> b!8005588 (= e!4715960 (and tp!2395336 tp!2395331))))

(declare-fun b!8005589 () Bool)

(declare-fun e!4715963 () Bool)

(assert (=> b!8005589 (= e!4715971 e!4715963)))

(declare-fun res!3165719 () Bool)

(assert (=> b!8005589 (=> (not res!3165719) (not e!4715963))))

(declare-fun lt!2714999 () List!74862)

(assert (=> b!8005589 (= res!3165719 (= lt!2714999 totalInput!1349))))

(assert (=> b!8005589 (= lt!2714999 (++!18459 testedP!353 testedSuffix!271))))

(declare-fun b!8005590 () Bool)

(declare-fun e!4715970 () Bool)

(assert (=> b!8005590 (= e!4715970 e!4715969)))

(declare-fun res!3165714 () Bool)

(assert (=> b!8005590 (=> res!3165714 e!4715969)))

(declare-fun lostCause!2030 (Regex!21633) Bool)

(assert (=> b!8005590 (= res!3165714 (lostCause!2030 r!15422))))

(assert (=> b!8005590 (and (= testedSuffix!271 lt!2715005) (= lt!2715005 testedSuffix!271))))

(declare-fun lt!2715002 () Unit!170690)

(declare-fun lemmaSamePrefixThenSameSuffix!3050 (List!74862 List!74862 List!74862 List!74862 List!74862) Unit!170690)

(assert (=> b!8005590 (= lt!2715002 (lemmaSamePrefixThenSameSuffix!3050 testedP!353 testedSuffix!271 testedP!353 lt!2715005 totalInput!1349))))

(declare-fun getSuffix!3884 (List!74862 List!74862) List!74862)

(assert (=> b!8005590 (= lt!2715005 (getSuffix!3884 totalInput!1349 testedP!353))))

(declare-fun b!8005591 () Bool)

(declare-fun e!4715964 () Bool)

(assert (=> b!8005591 (= e!4715964 (not e!4715970))))

(declare-fun res!3165720 () Bool)

(assert (=> b!8005591 (=> res!3165720 e!4715970)))

(assert (=> b!8005591 (= res!3165720 (not (isPrefix!6687 testedP!353 totalInput!1349)))))

(assert (=> b!8005591 (isPrefix!6687 testedP!353 lt!2714999)))

(declare-fun lt!2715006 () Unit!170690)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3918 (List!74862 List!74862) Unit!170690)

(assert (=> b!8005591 (= lt!2715006 (lemmaConcatTwoListThenFirstIsPrefix!3918 testedP!353 testedSuffix!271))))

(declare-fun b!8005592 () Bool)

(declare-fun e!4715962 () Bool)

(assert (=> b!8005592 (= e!4715963 e!4715962)))

(declare-fun res!3165713 () Bool)

(assert (=> b!8005592 (=> (not res!3165713) (not e!4715962))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8005592 (= res!3165713 (= testedPSize!271 lt!2714997))))

(declare-fun size!43535 (List!74862) Int)

(assert (=> b!8005592 (= lt!2714997 (size!43535 testedP!353))))

(declare-fun b!8005593 () Bool)

(assert (=> b!8005593 (= e!4715961 (not (= testedSuffix!271 Nil!74738)))))

(declare-fun lt!2714998 () Regex!21633)

(declare-fun derivativeStep!6614 (Regex!21633 C!43604) Regex!21633)

(assert (=> b!8005593 (= lt!2714998 (derivativeStep!6614 r!15422 lt!2714993))))

(declare-fun b!8005594 () Bool)

(assert (=> b!8005594 (= e!4715962 e!4715964)))

(declare-fun res!3165717 () Bool)

(assert (=> b!8005594 (=> (not res!3165717) (not e!4715964))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8005594 (= res!3165717 (= totalInputSize!629 lt!2715001))))

(assert (=> b!8005594 (= lt!2715001 (size!43535 totalInput!1349))))

(declare-fun b!8005595 () Bool)

(declare-fun res!3165715 () Bool)

(assert (=> b!8005595 (=> res!3165715 e!4715969)))

(assert (=> b!8005595 (= res!3165715 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8005596 () Bool)

(declare-fun tp!2395338 () Bool)

(assert (=> b!8005596 (= e!4715967 (and tp_is_empty!53809 tp!2395338))))

(assert (= (and start!753204 res!3165712) b!8005589))

(assert (= (and b!8005589 res!3165719) b!8005592))

(assert (= (and b!8005592 res!3165713) b!8005594))

(assert (= (and b!8005594 res!3165717) b!8005591))

(assert (= (and b!8005591 (not res!3165720)) b!8005590))

(assert (= (and b!8005590 (not res!3165714)) b!8005595))

(assert (= (and b!8005595 (not res!3165715)) b!8005579))

(assert (= (and b!8005579 c!1469611) b!8005581))

(assert (= (and b!8005579 (not c!1469611)) b!8005586))

(assert (= (and b!8005579 (not res!3165716)) b!8005580))

(assert (= (and b!8005580 (not res!3165718)) b!8005593))

(get-info :version)

(assert (= (and start!753204 ((_ is Cons!74738) totalInput!1349)) b!8005587))

(assert (= (and start!753204 ((_ is Cons!74738) testedSuffix!271)) b!8005596))

(assert (= (and start!753204 ((_ is ElementMatch!21633) r!15422)) b!8005584))

(assert (= (and start!753204 ((_ is Concat!30632) r!15422)) b!8005588))

(assert (= (and start!753204 ((_ is Star!21633) r!15422)) b!8005585))

(assert (= (and start!753204 ((_ is Union!21633) r!15422)) b!8005582))

(assert (= (and start!753204 ((_ is Cons!74738) testedP!353)) b!8005583))

(declare-fun m!8370956 () Bool)

(assert (=> b!8005594 m!8370956))

(declare-fun m!8370958 () Bool)

(assert (=> b!8005593 m!8370958))

(declare-fun m!8370960 () Bool)

(assert (=> b!8005580 m!8370960))

(declare-fun m!8370962 () Bool)

(assert (=> b!8005580 m!8370962))

(declare-fun m!8370964 () Bool)

(assert (=> b!8005580 m!8370964))

(declare-fun m!8370966 () Bool)

(assert (=> b!8005580 m!8370966))

(declare-fun m!8370968 () Bool)

(assert (=> b!8005580 m!8370968))

(assert (=> b!8005580 m!8370968))

(declare-fun m!8370970 () Bool)

(assert (=> b!8005580 m!8370970))

(declare-fun m!8370972 () Bool)

(assert (=> b!8005580 m!8370972))

(declare-fun m!8370974 () Bool)

(assert (=> b!8005580 m!8370974))

(declare-fun m!8370976 () Bool)

(assert (=> b!8005580 m!8370976))

(declare-fun m!8370978 () Bool)

(assert (=> b!8005580 m!8370978))

(declare-fun m!8370980 () Bool)

(assert (=> b!8005581 m!8370980))

(declare-fun m!8370982 () Bool)

(assert (=> b!8005581 m!8370982))

(declare-fun m!8370984 () Bool)

(assert (=> b!8005581 m!8370984))

(declare-fun m!8370986 () Bool)

(assert (=> start!753204 m!8370986))

(declare-fun m!8370988 () Bool)

(assert (=> b!8005579 m!8370988))

(declare-fun m!8370990 () Bool)

(assert (=> b!8005590 m!8370990))

(declare-fun m!8370992 () Bool)

(assert (=> b!8005590 m!8370992))

(declare-fun m!8370994 () Bool)

(assert (=> b!8005590 m!8370994))

(declare-fun m!8370996 () Bool)

(assert (=> b!8005592 m!8370996))

(declare-fun m!8370998 () Bool)

(assert (=> b!8005591 m!8370998))

(declare-fun m!8371000 () Bool)

(assert (=> b!8005591 m!8371000))

(declare-fun m!8371002 () Bool)

(assert (=> b!8005591 m!8371002))

(declare-fun m!8371004 () Bool)

(assert (=> b!8005589 m!8371004))

(check-sat (not b!8005583) (not b!8005592) (not b!8005589) (not b!8005590) (not b!8005582) (not b!8005593) (not start!753204) (not b!8005581) (not b!8005594) (not b!8005596) (not b!8005585) (not b!8005579) (not b!8005588) (not b!8005580) tp_is_empty!53809 (not b!8005587) (not b!8005591))
(check-sat)
(get-model)

(declare-fun d!2387269 () Bool)

(declare-fun e!4715977 () Bool)

(assert (=> d!2387269 e!4715977))

(declare-fun res!3165726 () Bool)

(assert (=> d!2387269 (=> (not res!3165726) (not e!4715977))))

(declare-fun lt!2715010 () List!74862)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15889 (List!74862) (InoxSet C!43604))

(assert (=> d!2387269 (= res!3165726 (= (content!15889 lt!2715010) ((_ map or) (content!15889 testedP!353) (content!15889 testedSuffix!271))))))

(declare-fun e!4715976 () List!74862)

(assert (=> d!2387269 (= lt!2715010 e!4715976)))

(declare-fun c!1469615 () Bool)

(assert (=> d!2387269 (= c!1469615 ((_ is Nil!74738) testedP!353))))

(assert (=> d!2387269 (= (++!18459 testedP!353 testedSuffix!271) lt!2715010)))

(declare-fun b!8005606 () Bool)

(assert (=> b!8005606 (= e!4715976 (Cons!74738 (h!81186 testedP!353) (++!18459 (t!390605 testedP!353) testedSuffix!271)))))

(declare-fun b!8005607 () Bool)

(declare-fun res!3165725 () Bool)

(assert (=> b!8005607 (=> (not res!3165725) (not e!4715977))))

(assert (=> b!8005607 (= res!3165725 (= (size!43535 lt!2715010) (+ (size!43535 testedP!353) (size!43535 testedSuffix!271))))))

(declare-fun b!8005605 () Bool)

(assert (=> b!8005605 (= e!4715976 testedSuffix!271)))

(declare-fun b!8005608 () Bool)

(assert (=> b!8005608 (= e!4715977 (or (not (= testedSuffix!271 Nil!74738)) (= lt!2715010 testedP!353)))))

(assert (= (and d!2387269 c!1469615) b!8005605))

(assert (= (and d!2387269 (not c!1469615)) b!8005606))

(assert (= (and d!2387269 res!3165726) b!8005607))

(assert (= (and b!8005607 res!3165725) b!8005608))

(declare-fun m!8371006 () Bool)

(assert (=> d!2387269 m!8371006))

(declare-fun m!8371008 () Bool)

(assert (=> d!2387269 m!8371008))

(declare-fun m!8371010 () Bool)

(assert (=> d!2387269 m!8371010))

(declare-fun m!8371012 () Bool)

(assert (=> b!8005606 m!8371012))

(declare-fun m!8371014 () Bool)

(assert (=> b!8005607 m!8371014))

(assert (=> b!8005607 m!8370996))

(declare-fun m!8371016 () Bool)

(assert (=> b!8005607 m!8371016))

(assert (=> b!8005589 d!2387269))

(declare-fun d!2387271 () Bool)

(declare-fun lt!2715013 () Int)

(assert (=> d!2387271 (>= lt!2715013 0)))

(declare-fun e!4715980 () Int)

(assert (=> d!2387271 (= lt!2715013 e!4715980)))

(declare-fun c!1469618 () Bool)

(assert (=> d!2387271 (= c!1469618 ((_ is Nil!74738) totalInput!1349))))

(assert (=> d!2387271 (= (size!43535 totalInput!1349) lt!2715013)))

(declare-fun b!8005613 () Bool)

(assert (=> b!8005613 (= e!4715980 0)))

(declare-fun b!8005614 () Bool)

(assert (=> b!8005614 (= e!4715980 (+ 1 (size!43535 (t!390605 totalInput!1349))))))

(assert (= (and d!2387271 c!1469618) b!8005613))

(assert (= (and d!2387271 (not c!1469618)) b!8005614))

(declare-fun m!8371018 () Bool)

(assert (=> b!8005614 m!8371018))

(assert (=> b!8005594 d!2387271))

(declare-fun d!2387273 () Bool)

(assert (=> d!2387273 (<= (size!43535 testedP!353) (size!43535 totalInput!1349))))

(declare-fun lt!2715016 () Unit!170690)

(declare-fun choose!60251 (List!74862 List!74862) Unit!170690)

(assert (=> d!2387273 (= lt!2715016 (choose!60251 testedP!353 totalInput!1349))))

(assert (=> d!2387273 (isPrefix!6687 testedP!353 totalInput!1349)))

(assert (=> d!2387273 (= (lemmaIsPrefixThenSmallerEqSize!1188 testedP!353 totalInput!1349) lt!2715016)))

(declare-fun bs!1970667 () Bool)

(assert (= bs!1970667 d!2387273))

(assert (=> bs!1970667 m!8370996))

(assert (=> bs!1970667 m!8370956))

(declare-fun m!8371020 () Bool)

(assert (=> bs!1970667 m!8371020))

(assert (=> bs!1970667 m!8370998))

(assert (=> b!8005579 d!2387273))

(declare-fun b!8005635 () Bool)

(declare-fun e!4715993 () Regex!21633)

(assert (=> b!8005635 (= e!4715993 EmptyLang!21633)))

(declare-fun b!8005636 () Bool)

(declare-fun e!4715994 () Regex!21633)

(assert (=> b!8005636 (= e!4715994 (ite (= lt!2714993 (c!1469612 r!15422)) EmptyExpr!21633 EmptyLang!21633))))

(declare-fun bm!743716 () Bool)

(declare-fun call!743722 () Regex!21633)

(declare-fun call!743723 () Regex!21633)

(assert (=> bm!743716 (= call!743722 call!743723)))

(declare-fun c!1469632 () Bool)

(declare-fun bm!743717 () Bool)

(declare-fun call!743724 () Regex!21633)

(declare-fun c!1469633 () Bool)

(declare-fun c!1469630 () Bool)

(assert (=> bm!743717 (= call!743724 (derivativeStep!6614 (ite c!1469632 (regTwo!43779 r!15422) (ite c!1469633 (reg!21962 r!15422) (ite c!1469630 (regTwo!43778 r!15422) (regOne!43778 r!15422)))) lt!2714993))))

(declare-fun b!8005637 () Bool)

(assert (=> b!8005637 (= c!1469632 ((_ is Union!21633) r!15422))))

(declare-fun e!4715995 () Regex!21633)

(assert (=> b!8005637 (= e!4715994 e!4715995)))

(declare-fun b!8005638 () Bool)

(declare-fun e!4715991 () Regex!21633)

(assert (=> b!8005638 (= e!4715995 e!4715991)))

(assert (=> b!8005638 (= c!1469633 ((_ is Star!21633) r!15422))))

(declare-fun d!2387275 () Bool)

(declare-fun lt!2715019 () Regex!21633)

(assert (=> d!2387275 (validRegex!11937 lt!2715019)))

(assert (=> d!2387275 (= lt!2715019 e!4715993)))

(declare-fun c!1469631 () Bool)

(assert (=> d!2387275 (= c!1469631 (or ((_ is EmptyExpr!21633) r!15422) ((_ is EmptyLang!21633) r!15422)))))

(assert (=> d!2387275 (validRegex!11937 r!15422)))

(assert (=> d!2387275 (= (derivativeStep!6614 r!15422 lt!2714993) lt!2715019)))

(declare-fun b!8005639 () Bool)

(assert (=> b!8005639 (= c!1469630 (nullable!9691 (regOne!43778 r!15422)))))

(declare-fun e!4715992 () Regex!21633)

(assert (=> b!8005639 (= e!4715991 e!4715992)))

(declare-fun b!8005640 () Bool)

(declare-fun call!743721 () Regex!21633)

(assert (=> b!8005640 (= e!4715995 (Union!21633 call!743721 call!743724))))

(declare-fun b!8005641 () Bool)

(assert (=> b!8005641 (= e!4715991 (Concat!30632 call!743723 r!15422))))

(declare-fun b!8005642 () Bool)

(assert (=> b!8005642 (= e!4715992 (Union!21633 (Concat!30632 call!743722 (regTwo!43778 r!15422)) EmptyLang!21633))))

(declare-fun b!8005643 () Bool)

(assert (=> b!8005643 (= e!4715993 e!4715994)))

(declare-fun c!1469629 () Bool)

(assert (=> b!8005643 (= c!1469629 ((_ is ElementMatch!21633) r!15422))))

(declare-fun bm!743718 () Bool)

(assert (=> bm!743718 (= call!743721 (derivativeStep!6614 (ite c!1469632 (regOne!43779 r!15422) (regOne!43778 r!15422)) lt!2714993))))

(declare-fun bm!743719 () Bool)

(assert (=> bm!743719 (= call!743723 call!743724)))

(declare-fun b!8005644 () Bool)

(assert (=> b!8005644 (= e!4715992 (Union!21633 (Concat!30632 call!743721 (regTwo!43778 r!15422)) call!743722))))

(assert (= (and d!2387275 c!1469631) b!8005635))

(assert (= (and d!2387275 (not c!1469631)) b!8005643))

(assert (= (and b!8005643 c!1469629) b!8005636))

(assert (= (and b!8005643 (not c!1469629)) b!8005637))

(assert (= (and b!8005637 c!1469632) b!8005640))

(assert (= (and b!8005637 (not c!1469632)) b!8005638))

(assert (= (and b!8005638 c!1469633) b!8005641))

(assert (= (and b!8005638 (not c!1469633)) b!8005639))

(assert (= (and b!8005639 c!1469630) b!8005644))

(assert (= (and b!8005639 (not c!1469630)) b!8005642))

(assert (= (or b!8005644 b!8005642) bm!743716))

(assert (= (or b!8005641 bm!743716) bm!743719))

(assert (= (or b!8005640 bm!743719) bm!743717))

(assert (= (or b!8005640 b!8005644) bm!743718))

(declare-fun m!8371022 () Bool)

(assert (=> bm!743717 m!8371022))

(declare-fun m!8371024 () Bool)

(assert (=> d!2387275 m!8371024))

(assert (=> d!2387275 m!8370986))

(declare-fun m!8371026 () Bool)

(assert (=> b!8005639 m!8371026))

(declare-fun m!8371028 () Bool)

(assert (=> bm!743718 m!8371028))

(assert (=> b!8005593 d!2387275))

(declare-fun d!2387277 () Bool)

(assert (=> d!2387277 (isPrefix!6687 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715022 () Unit!170690)

(declare-fun choose!60252 (List!74862 List!74862) Unit!170690)

(assert (=> d!2387277 (= lt!2715022 (choose!60252 totalInput!1349 totalInput!1349))))

(assert (=> d!2387277 (= (lemmaIsPrefixRefl!4139 totalInput!1349 totalInput!1349) lt!2715022)))

(declare-fun bs!1970668 () Bool)

(assert (= bs!1970668 d!2387277))

(assert (=> bs!1970668 m!8370982))

(declare-fun m!8371030 () Bool)

(assert (=> bs!1970668 m!8371030))

(assert (=> b!8005581 d!2387277))

(declare-fun b!8005654 () Bool)

(declare-fun res!3165738 () Bool)

(declare-fun e!4716004 () Bool)

(assert (=> b!8005654 (=> (not res!3165738) (not e!4716004))))

(assert (=> b!8005654 (= res!3165738 (= (head!16325 totalInput!1349) (head!16325 totalInput!1349)))))

(declare-fun b!8005656 () Bool)

(declare-fun e!4716002 () Bool)

(assert (=> b!8005656 (= e!4716002 (>= (size!43535 totalInput!1349) (size!43535 totalInput!1349)))))

(declare-fun d!2387279 () Bool)

(assert (=> d!2387279 e!4716002))

(declare-fun res!3165737 () Bool)

(assert (=> d!2387279 (=> res!3165737 e!4716002)))

(declare-fun lt!2715025 () Bool)

(assert (=> d!2387279 (= res!3165737 (not lt!2715025))))

(declare-fun e!4716003 () Bool)

(assert (=> d!2387279 (= lt!2715025 e!4716003)))

(declare-fun res!3165735 () Bool)

(assert (=> d!2387279 (=> res!3165735 e!4716003)))

(assert (=> d!2387279 (= res!3165735 ((_ is Nil!74738) totalInput!1349))))

(assert (=> d!2387279 (= (isPrefix!6687 totalInput!1349 totalInput!1349) lt!2715025)))

(declare-fun b!8005653 () Bool)

(assert (=> b!8005653 (= e!4716003 e!4716004)))

(declare-fun res!3165736 () Bool)

(assert (=> b!8005653 (=> (not res!3165736) (not e!4716004))))

(assert (=> b!8005653 (= res!3165736 (not ((_ is Nil!74738) totalInput!1349)))))

(declare-fun b!8005655 () Bool)

(assert (=> b!8005655 (= e!4716004 (isPrefix!6687 (tail!15848 totalInput!1349) (tail!15848 totalInput!1349)))))

(assert (= (and d!2387279 (not res!3165735)) b!8005653))

(assert (= (and b!8005653 res!3165736) b!8005654))

(assert (= (and b!8005654 res!3165738) b!8005655))

(assert (= (and d!2387279 (not res!3165737)) b!8005656))

(declare-fun m!8371032 () Bool)

(assert (=> b!8005654 m!8371032))

(assert (=> b!8005654 m!8371032))

(assert (=> b!8005656 m!8370956))

(assert (=> b!8005656 m!8370956))

(declare-fun m!8371034 () Bool)

(assert (=> b!8005655 m!8371034))

(assert (=> b!8005655 m!8371034))

(assert (=> b!8005655 m!8371034))

(assert (=> b!8005655 m!8371034))

(declare-fun m!8371036 () Bool)

(assert (=> b!8005655 m!8371036))

(assert (=> b!8005581 d!2387279))

(declare-fun d!2387283 () Bool)

(assert (=> d!2387283 (= totalInput!1349 testedP!353)))

(declare-fun lt!2715028 () Unit!170690)

(declare-fun choose!60253 (List!74862 List!74862 List!74862) Unit!170690)

(assert (=> d!2387283 (= lt!2715028 (choose!60253 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2387283 (isPrefix!6687 totalInput!1349 totalInput!1349)))

(assert (=> d!2387283 (= (lemmaIsPrefixSameLengthThenSameList!1713 totalInput!1349 testedP!353 totalInput!1349) lt!2715028)))

(declare-fun bs!1970669 () Bool)

(assert (= bs!1970669 d!2387283))

(declare-fun m!8371038 () Bool)

(assert (=> bs!1970669 m!8371038))

(assert (=> bs!1970669 m!8370982))

(assert (=> b!8005581 d!2387283))

(declare-fun d!2387285 () Bool)

(declare-fun lt!2715029 () Int)

(assert (=> d!2387285 (>= lt!2715029 0)))

(declare-fun e!4716005 () Int)

(assert (=> d!2387285 (= lt!2715029 e!4716005)))

(declare-fun c!1469634 () Bool)

(assert (=> d!2387285 (= c!1469634 ((_ is Nil!74738) testedP!353))))

(assert (=> d!2387285 (= (size!43535 testedP!353) lt!2715029)))

(declare-fun b!8005657 () Bool)

(assert (=> b!8005657 (= e!4716005 0)))

(declare-fun b!8005658 () Bool)

(assert (=> b!8005658 (= e!4716005 (+ 1 (size!43535 (t!390605 testedP!353))))))

(assert (= (and d!2387285 c!1469634) b!8005657))

(assert (= (and d!2387285 (not c!1469634)) b!8005658))

(declare-fun m!8371040 () Bool)

(assert (=> b!8005658 m!8371040))

(assert (=> b!8005592 d!2387285))

(declare-fun d!2387287 () Bool)

(declare-fun lostCauseFct!593 (Regex!21633) Bool)

(assert (=> d!2387287 (= (lostCause!2030 r!15422) (lostCauseFct!593 r!15422))))

(declare-fun bs!1970670 () Bool)

(assert (= bs!1970670 d!2387287))

(declare-fun m!8371042 () Bool)

(assert (=> bs!1970670 m!8371042))

(assert (=> b!8005590 d!2387287))

(declare-fun d!2387289 () Bool)

(assert (=> d!2387289 (= testedSuffix!271 lt!2715005)))

(declare-fun lt!2715032 () Unit!170690)

(declare-fun choose!60254 (List!74862 List!74862 List!74862 List!74862 List!74862) Unit!170690)

(assert (=> d!2387289 (= lt!2715032 (choose!60254 testedP!353 testedSuffix!271 testedP!353 lt!2715005 totalInput!1349))))

(assert (=> d!2387289 (isPrefix!6687 testedP!353 totalInput!1349)))

(assert (=> d!2387289 (= (lemmaSamePrefixThenSameSuffix!3050 testedP!353 testedSuffix!271 testedP!353 lt!2715005 totalInput!1349) lt!2715032)))

(declare-fun bs!1970671 () Bool)

(assert (= bs!1970671 d!2387289))

(declare-fun m!8371044 () Bool)

(assert (=> bs!1970671 m!8371044))

(assert (=> bs!1970671 m!8370998))

(assert (=> b!8005590 d!2387289))

(declare-fun d!2387291 () Bool)

(declare-fun lt!2715037 () List!74862)

(assert (=> d!2387291 (= (++!18459 testedP!353 lt!2715037) totalInput!1349)))

(declare-fun e!4716012 () List!74862)

(assert (=> d!2387291 (= lt!2715037 e!4716012)))

(declare-fun c!1469639 () Bool)

(assert (=> d!2387291 (= c!1469639 ((_ is Cons!74738) testedP!353))))

(assert (=> d!2387291 (>= (size!43535 totalInput!1349) (size!43535 testedP!353))))

(assert (=> d!2387291 (= (getSuffix!3884 totalInput!1349 testedP!353) lt!2715037)))

(declare-fun b!8005671 () Bool)

(assert (=> b!8005671 (= e!4716012 (getSuffix!3884 (tail!15848 totalInput!1349) (t!390605 testedP!353)))))

(declare-fun b!8005672 () Bool)

(assert (=> b!8005672 (= e!4716012 totalInput!1349)))

(assert (= (and d!2387291 c!1469639) b!8005671))

(assert (= (and d!2387291 (not c!1469639)) b!8005672))

(declare-fun m!8371046 () Bool)

(assert (=> d!2387291 m!8371046))

(assert (=> d!2387291 m!8370956))

(assert (=> d!2387291 m!8370996))

(assert (=> b!8005671 m!8371034))

(assert (=> b!8005671 m!8371034))

(declare-fun m!8371048 () Bool)

(assert (=> b!8005671 m!8371048))

(assert (=> b!8005590 d!2387291))

(declare-fun b!8005674 () Bool)

(declare-fun res!3165746 () Bool)

(declare-fun e!4716015 () Bool)

(assert (=> b!8005674 (=> (not res!3165746) (not e!4716015))))

(assert (=> b!8005674 (= res!3165746 (= (head!16325 testedP!353) (head!16325 totalInput!1349)))))

(declare-fun b!8005676 () Bool)

(declare-fun e!4716013 () Bool)

(assert (=> b!8005676 (= e!4716013 (>= (size!43535 totalInput!1349) (size!43535 testedP!353)))))

(declare-fun d!2387293 () Bool)

(assert (=> d!2387293 e!4716013))

(declare-fun res!3165745 () Bool)

(assert (=> d!2387293 (=> res!3165745 e!4716013)))

(declare-fun lt!2715038 () Bool)

(assert (=> d!2387293 (= res!3165745 (not lt!2715038))))

(declare-fun e!4716014 () Bool)

(assert (=> d!2387293 (= lt!2715038 e!4716014)))

(declare-fun res!3165743 () Bool)

(assert (=> d!2387293 (=> res!3165743 e!4716014)))

(assert (=> d!2387293 (= res!3165743 ((_ is Nil!74738) testedP!353))))

(assert (=> d!2387293 (= (isPrefix!6687 testedP!353 totalInput!1349) lt!2715038)))

(declare-fun b!8005673 () Bool)

(assert (=> b!8005673 (= e!4716014 e!4716015)))

(declare-fun res!3165744 () Bool)

(assert (=> b!8005673 (=> (not res!3165744) (not e!4716015))))

(assert (=> b!8005673 (= res!3165744 (not ((_ is Nil!74738) totalInput!1349)))))

(declare-fun b!8005675 () Bool)

(assert (=> b!8005675 (= e!4716015 (isPrefix!6687 (tail!15848 testedP!353) (tail!15848 totalInput!1349)))))

(assert (= (and d!2387293 (not res!3165743)) b!8005673))

(assert (= (and b!8005673 res!3165744) b!8005674))

(assert (= (and b!8005674 res!3165746) b!8005675))

(assert (= (and d!2387293 (not res!3165745)) b!8005676))

(declare-fun m!8371050 () Bool)

(assert (=> b!8005674 m!8371050))

(assert (=> b!8005674 m!8371032))

(assert (=> b!8005676 m!8370956))

(assert (=> b!8005676 m!8370996))

(declare-fun m!8371052 () Bool)

(assert (=> b!8005675 m!8371052))

(assert (=> b!8005675 m!8371034))

(assert (=> b!8005675 m!8371052))

(assert (=> b!8005675 m!8371034))

(declare-fun m!8371054 () Bool)

(assert (=> b!8005675 m!8371054))

(assert (=> b!8005591 d!2387293))

(declare-fun b!8005678 () Bool)

(declare-fun res!3165750 () Bool)

(declare-fun e!4716018 () Bool)

(assert (=> b!8005678 (=> (not res!3165750) (not e!4716018))))

(assert (=> b!8005678 (= res!3165750 (= (head!16325 testedP!353) (head!16325 lt!2714999)))))

(declare-fun b!8005680 () Bool)

(declare-fun e!4716016 () Bool)

(assert (=> b!8005680 (= e!4716016 (>= (size!43535 lt!2714999) (size!43535 testedP!353)))))

(declare-fun d!2387295 () Bool)

(assert (=> d!2387295 e!4716016))

(declare-fun res!3165749 () Bool)

(assert (=> d!2387295 (=> res!3165749 e!4716016)))

(declare-fun lt!2715039 () Bool)

(assert (=> d!2387295 (= res!3165749 (not lt!2715039))))

(declare-fun e!4716017 () Bool)

(assert (=> d!2387295 (= lt!2715039 e!4716017)))

(declare-fun res!3165747 () Bool)

(assert (=> d!2387295 (=> res!3165747 e!4716017)))

(assert (=> d!2387295 (= res!3165747 ((_ is Nil!74738) testedP!353))))

(assert (=> d!2387295 (= (isPrefix!6687 testedP!353 lt!2714999) lt!2715039)))

(declare-fun b!8005677 () Bool)

(assert (=> b!8005677 (= e!4716017 e!4716018)))

(declare-fun res!3165748 () Bool)

(assert (=> b!8005677 (=> (not res!3165748) (not e!4716018))))

(assert (=> b!8005677 (= res!3165748 (not ((_ is Nil!74738) lt!2714999)))))

(declare-fun b!8005679 () Bool)

(assert (=> b!8005679 (= e!4716018 (isPrefix!6687 (tail!15848 testedP!353) (tail!15848 lt!2714999)))))

(assert (= (and d!2387295 (not res!3165747)) b!8005677))

(assert (= (and b!8005677 res!3165748) b!8005678))

(assert (= (and b!8005678 res!3165750) b!8005679))

(assert (= (and d!2387295 (not res!3165749)) b!8005680))

(assert (=> b!8005678 m!8371050))

(declare-fun m!8371056 () Bool)

(assert (=> b!8005678 m!8371056))

(declare-fun m!8371058 () Bool)

(assert (=> b!8005680 m!8371058))

(assert (=> b!8005680 m!8370996))

(assert (=> b!8005679 m!8371052))

(declare-fun m!8371060 () Bool)

(assert (=> b!8005679 m!8371060))

(assert (=> b!8005679 m!8371052))

(assert (=> b!8005679 m!8371060))

(declare-fun m!8371062 () Bool)

(assert (=> b!8005679 m!8371062))

(assert (=> b!8005591 d!2387295))

(declare-fun d!2387297 () Bool)

(assert (=> d!2387297 (isPrefix!6687 testedP!353 (++!18459 testedP!353 testedSuffix!271))))

(declare-fun lt!2715043 () Unit!170690)

(declare-fun choose!60255 (List!74862 List!74862) Unit!170690)

(assert (=> d!2387297 (= lt!2715043 (choose!60255 testedP!353 testedSuffix!271))))

(assert (=> d!2387297 (= (lemmaConcatTwoListThenFirstIsPrefix!3918 testedP!353 testedSuffix!271) lt!2715043)))

(declare-fun bs!1970672 () Bool)

(assert (= bs!1970672 d!2387297))

(assert (=> bs!1970672 m!8371004))

(assert (=> bs!1970672 m!8371004))

(declare-fun m!8371066 () Bool)

(assert (=> bs!1970672 m!8371066))

(declare-fun m!8371068 () Bool)

(assert (=> bs!1970672 m!8371068))

(assert (=> b!8005591 d!2387297))

(declare-fun d!2387299 () Bool)

(declare-fun res!3165765 () Bool)

(declare-fun e!4716035 () Bool)

(assert (=> d!2387299 (=> res!3165765 e!4716035)))

(assert (=> d!2387299 (= res!3165765 ((_ is ElementMatch!21633) r!15422))))

(assert (=> d!2387299 (= (validRegex!11937 r!15422) e!4716035)))

(declare-fun b!8005703 () Bool)

(declare-fun e!4716038 () Bool)

(declare-fun e!4716036 () Bool)

(assert (=> b!8005703 (= e!4716038 e!4716036)))

(declare-fun res!3165763 () Bool)

(assert (=> b!8005703 (=> (not res!3165763) (not e!4716036))))

(declare-fun call!743732 () Bool)

(assert (=> b!8005703 (= res!3165763 call!743732)))

(declare-fun b!8005704 () Bool)

(declare-fun res!3165766 () Bool)

(assert (=> b!8005704 (=> res!3165766 e!4716038)))

(assert (=> b!8005704 (= res!3165766 (not ((_ is Concat!30632) r!15422)))))

(declare-fun e!4716041 () Bool)

(assert (=> b!8005704 (= e!4716041 e!4716038)))

(declare-fun b!8005705 () Bool)

(declare-fun e!4716040 () Bool)

(declare-fun call!743731 () Bool)

(assert (=> b!8005705 (= e!4716040 call!743731)))

(declare-fun b!8005706 () Bool)

(declare-fun e!4716039 () Bool)

(assert (=> b!8005706 (= e!4716039 e!4716040)))

(declare-fun res!3165767 () Bool)

(assert (=> b!8005706 (= res!3165767 (not (nullable!9691 (reg!21962 r!15422))))))

(assert (=> b!8005706 (=> (not res!3165767) (not e!4716040))))

(declare-fun bm!743726 () Bool)

(declare-fun call!743733 () Bool)

(declare-fun c!1469646 () Bool)

(assert (=> bm!743726 (= call!743733 (validRegex!11937 (ite c!1469646 (regTwo!43779 r!15422) (regTwo!43778 r!15422))))))

(declare-fun b!8005707 () Bool)

(assert (=> b!8005707 (= e!4716039 e!4716041)))

(assert (=> b!8005707 (= c!1469646 ((_ is Union!21633) r!15422))))

(declare-fun bm!743727 () Bool)

(assert (=> bm!743727 (= call!743732 call!743731)))

(declare-fun b!8005708 () Bool)

(declare-fun res!3165764 () Bool)

(declare-fun e!4716037 () Bool)

(assert (=> b!8005708 (=> (not res!3165764) (not e!4716037))))

(assert (=> b!8005708 (= res!3165764 call!743732)))

(assert (=> b!8005708 (= e!4716041 e!4716037)))

(declare-fun c!1469645 () Bool)

(declare-fun bm!743728 () Bool)

(assert (=> bm!743728 (= call!743731 (validRegex!11937 (ite c!1469645 (reg!21962 r!15422) (ite c!1469646 (regOne!43779 r!15422) (regOne!43778 r!15422)))))))

(declare-fun b!8005709 () Bool)

(assert (=> b!8005709 (= e!4716037 call!743733)))

(declare-fun b!8005710 () Bool)

(assert (=> b!8005710 (= e!4716036 call!743733)))

(declare-fun b!8005711 () Bool)

(assert (=> b!8005711 (= e!4716035 e!4716039)))

(assert (=> b!8005711 (= c!1469645 ((_ is Star!21633) r!15422))))

(assert (= (and d!2387299 (not res!3165765)) b!8005711))

(assert (= (and b!8005711 c!1469645) b!8005706))

(assert (= (and b!8005711 (not c!1469645)) b!8005707))

(assert (= (and b!8005706 res!3165767) b!8005705))

(assert (= (and b!8005707 c!1469646) b!8005708))

(assert (= (and b!8005707 (not c!1469646)) b!8005704))

(assert (= (and b!8005708 res!3165764) b!8005709))

(assert (= (and b!8005704 (not res!3165766)) b!8005703))

(assert (= (and b!8005703 res!3165763) b!8005710))

(assert (= (or b!8005709 b!8005710) bm!743726))

(assert (= (or b!8005708 b!8005703) bm!743727))

(assert (= (or b!8005705 bm!743727) bm!743728))

(declare-fun m!8371082 () Bool)

(assert (=> b!8005706 m!8371082))

(declare-fun m!8371084 () Bool)

(assert (=> bm!743726 m!8371084))

(declare-fun m!8371086 () Bool)

(assert (=> bm!743728 m!8371086))

(assert (=> start!753204 d!2387299))

(declare-fun d!2387305 () Bool)

(assert (=> d!2387305 (isPrefix!6687 (++!18459 testedP!353 (Cons!74738 (head!16325 (getSuffix!3884 totalInput!1349 testedP!353)) Nil!74738)) totalInput!1349)))

(declare-fun lt!2715052 () Unit!170690)

(declare-fun choose!60256 (List!74862 List!74862) Unit!170690)

(assert (=> d!2387305 (= lt!2715052 (choose!60256 testedP!353 totalInput!1349))))

(assert (=> d!2387305 (isPrefix!6687 testedP!353 totalInput!1349)))

(assert (=> d!2387305 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1384 testedP!353 totalInput!1349) lt!2715052)))

(declare-fun bs!1970674 () Bool)

(assert (= bs!1970674 d!2387305))

(assert (=> bs!1970674 m!8370994))

(declare-fun m!8371090 () Bool)

(assert (=> bs!1970674 m!8371090))

(declare-fun m!8371092 () Bool)

(assert (=> bs!1970674 m!8371092))

(declare-fun m!8371094 () Bool)

(assert (=> bs!1970674 m!8371094))

(assert (=> bs!1970674 m!8370994))

(declare-fun m!8371096 () Bool)

(assert (=> bs!1970674 m!8371096))

(assert (=> bs!1970674 m!8370998))

(assert (=> bs!1970674 m!8371090))

(assert (=> b!8005580 d!2387305))

(declare-fun d!2387309 () Bool)

(assert (=> d!2387309 (= (head!16325 testedSuffix!271) (h!81186 testedSuffix!271))))

(assert (=> b!8005580 d!2387309))

(declare-fun d!2387311 () Bool)

(declare-fun nullableFct!3823 (Regex!21633) Bool)

(assert (=> d!2387311 (= (nullable!9691 r!15422) (nullableFct!3823 r!15422))))

(declare-fun bs!1970675 () Bool)

(assert (= bs!1970675 d!2387311))

(declare-fun m!8371098 () Bool)

(assert (=> bs!1970675 m!8371098))

(assert (=> b!8005580 d!2387311))

(declare-fun d!2387313 () Bool)

(assert (=> d!2387313 (= (head!16325 lt!2715005) (h!81186 lt!2715005))))

(assert (=> b!8005580 d!2387313))

(declare-fun b!8005719 () Bool)

(declare-fun res!3165771 () Bool)

(declare-fun e!4716047 () Bool)

(assert (=> b!8005719 (=> (not res!3165771) (not e!4716047))))

(assert (=> b!8005719 (= res!3165771 (= (head!16325 (++!18459 testedP!353 (Cons!74738 (head!16325 lt!2715005) Nil!74738))) (head!16325 totalInput!1349)))))

(declare-fun e!4716045 () Bool)

(declare-fun b!8005721 () Bool)

(assert (=> b!8005721 (= e!4716045 (>= (size!43535 totalInput!1349) (size!43535 (++!18459 testedP!353 (Cons!74738 (head!16325 lt!2715005) Nil!74738)))))))

(declare-fun d!2387315 () Bool)

(assert (=> d!2387315 e!4716045))

(declare-fun res!3165770 () Bool)

(assert (=> d!2387315 (=> res!3165770 e!4716045)))

(declare-fun lt!2715053 () Bool)

(assert (=> d!2387315 (= res!3165770 (not lt!2715053))))

(declare-fun e!4716046 () Bool)

(assert (=> d!2387315 (= lt!2715053 e!4716046)))

(declare-fun res!3165768 () Bool)

(assert (=> d!2387315 (=> res!3165768 e!4716046)))

(assert (=> d!2387315 (= res!3165768 ((_ is Nil!74738) (++!18459 testedP!353 (Cons!74738 (head!16325 lt!2715005) Nil!74738))))))

(assert (=> d!2387315 (= (isPrefix!6687 (++!18459 testedP!353 (Cons!74738 (head!16325 lt!2715005) Nil!74738)) totalInput!1349) lt!2715053)))

(declare-fun b!8005718 () Bool)

(assert (=> b!8005718 (= e!4716046 e!4716047)))

(declare-fun res!3165769 () Bool)

(assert (=> b!8005718 (=> (not res!3165769) (not e!4716047))))

(assert (=> b!8005718 (= res!3165769 (not ((_ is Nil!74738) totalInput!1349)))))

(declare-fun b!8005720 () Bool)

(assert (=> b!8005720 (= e!4716047 (isPrefix!6687 (tail!15848 (++!18459 testedP!353 (Cons!74738 (head!16325 lt!2715005) Nil!74738))) (tail!15848 totalInput!1349)))))

(assert (= (and d!2387315 (not res!3165768)) b!8005718))

(assert (= (and b!8005718 res!3165769) b!8005719))

(assert (= (and b!8005719 res!3165771) b!8005720))

(assert (= (and d!2387315 (not res!3165770)) b!8005721))

(assert (=> b!8005719 m!8370968))

(declare-fun m!8371100 () Bool)

(assert (=> b!8005719 m!8371100))

(assert (=> b!8005719 m!8371032))

(assert (=> b!8005721 m!8370956))

(assert (=> b!8005721 m!8370968))

(declare-fun m!8371102 () Bool)

(assert (=> b!8005721 m!8371102))

(assert (=> b!8005720 m!8370968))

(declare-fun m!8371104 () Bool)

(assert (=> b!8005720 m!8371104))

(assert (=> b!8005720 m!8371034))

(assert (=> b!8005720 m!8371104))

(assert (=> b!8005720 m!8371034))

(declare-fun m!8371106 () Bool)

(assert (=> b!8005720 m!8371106))

(assert (=> b!8005580 d!2387315))

(declare-fun d!2387317 () Bool)

(declare-fun e!4716049 () Bool)

(assert (=> d!2387317 e!4716049))

(declare-fun res!3165773 () Bool)

(assert (=> d!2387317 (=> (not res!3165773) (not e!4716049))))

(declare-fun lt!2715054 () List!74862)

(assert (=> d!2387317 (= res!3165773 (= (content!15889 lt!2715054) ((_ map or) (content!15889 lt!2714996) (content!15889 lt!2714994))))))

(declare-fun e!4716048 () List!74862)

(assert (=> d!2387317 (= lt!2715054 e!4716048)))

(declare-fun c!1469650 () Bool)

(assert (=> d!2387317 (= c!1469650 ((_ is Nil!74738) lt!2714996))))

(assert (=> d!2387317 (= (++!18459 lt!2714996 lt!2714994) lt!2715054)))

(declare-fun b!8005723 () Bool)

(assert (=> b!8005723 (= e!4716048 (Cons!74738 (h!81186 lt!2714996) (++!18459 (t!390605 lt!2714996) lt!2714994)))))

(declare-fun b!8005724 () Bool)

(declare-fun res!3165772 () Bool)

(assert (=> b!8005724 (=> (not res!3165772) (not e!4716049))))

(assert (=> b!8005724 (= res!3165772 (= (size!43535 lt!2715054) (+ (size!43535 lt!2714996) (size!43535 lt!2714994))))))

(declare-fun b!8005722 () Bool)

(assert (=> b!8005722 (= e!4716048 lt!2714994)))

(declare-fun b!8005725 () Bool)

(assert (=> b!8005725 (= e!4716049 (or (not (= lt!2714994 Nil!74738)) (= lt!2715054 lt!2714996)))))

(assert (= (and d!2387317 c!1469650) b!8005722))

(assert (= (and d!2387317 (not c!1469650)) b!8005723))

(assert (= (and d!2387317 res!3165773) b!8005724))

(assert (= (and b!8005724 res!3165772) b!8005725))

(declare-fun m!8371108 () Bool)

(assert (=> d!2387317 m!8371108))

(declare-fun m!8371110 () Bool)

(assert (=> d!2387317 m!8371110))

(declare-fun m!8371112 () Bool)

(assert (=> d!2387317 m!8371112))

(declare-fun m!8371114 () Bool)

(assert (=> b!8005723 m!8371114))

(declare-fun m!8371116 () Bool)

(assert (=> b!8005724 m!8371116))

(declare-fun m!8371118 () Bool)

(assert (=> b!8005724 m!8371118))

(declare-fun m!8371120 () Bool)

(assert (=> b!8005724 m!8371120))

(assert (=> b!8005580 d!2387317))

(declare-fun d!2387319 () Bool)

(declare-fun e!4716051 () Bool)

(assert (=> d!2387319 e!4716051))

(declare-fun res!3165775 () Bool)

(assert (=> d!2387319 (=> (not res!3165775) (not e!4716051))))

(declare-fun lt!2715057 () List!74862)

(assert (=> d!2387319 (= res!3165775 (= (content!15889 lt!2715057) ((_ map or) (content!15889 testedP!353) (content!15889 (Cons!74738 lt!2714993 Nil!74738)))))))

(declare-fun e!4716050 () List!74862)

(assert (=> d!2387319 (= lt!2715057 e!4716050)))

(declare-fun c!1469651 () Bool)

(assert (=> d!2387319 (= c!1469651 ((_ is Nil!74738) testedP!353))))

(assert (=> d!2387319 (= (++!18459 testedP!353 (Cons!74738 lt!2714993 Nil!74738)) lt!2715057)))

(declare-fun b!8005727 () Bool)

(assert (=> b!8005727 (= e!4716050 (Cons!74738 (h!81186 testedP!353) (++!18459 (t!390605 testedP!353) (Cons!74738 lt!2714993 Nil!74738))))))

(declare-fun b!8005728 () Bool)

(declare-fun res!3165774 () Bool)

(assert (=> b!8005728 (=> (not res!3165774) (not e!4716051))))

(assert (=> b!8005728 (= res!3165774 (= (size!43535 lt!2715057) (+ (size!43535 testedP!353) (size!43535 (Cons!74738 lt!2714993 Nil!74738)))))))

(declare-fun b!8005726 () Bool)

(assert (=> b!8005726 (= e!4716050 (Cons!74738 lt!2714993 Nil!74738))))

(declare-fun b!8005729 () Bool)

(assert (=> b!8005729 (= e!4716051 (or (not (= (Cons!74738 lt!2714993 Nil!74738) Nil!74738)) (= lt!2715057 testedP!353)))))

(assert (= (and d!2387319 c!1469651) b!8005726))

(assert (= (and d!2387319 (not c!1469651)) b!8005727))

(assert (= (and d!2387319 res!3165775) b!8005728))

(assert (= (and b!8005728 res!3165774) b!8005729))

(declare-fun m!8371122 () Bool)

(assert (=> d!2387319 m!8371122))

(assert (=> d!2387319 m!8371008))

(declare-fun m!8371124 () Bool)

(assert (=> d!2387319 m!8371124))

(declare-fun m!8371126 () Bool)

(assert (=> b!8005727 m!8371126))

(declare-fun m!8371128 () Bool)

(assert (=> b!8005728 m!8371128))

(assert (=> b!8005728 m!8370996))

(declare-fun m!8371130 () Bool)

(assert (=> b!8005728 m!8371130))

(assert (=> b!8005580 d!2387319))

(declare-fun d!2387321 () Bool)

(assert (=> d!2387321 (= (++!18459 (++!18459 testedP!353 (Cons!74738 lt!2714993 Nil!74738)) lt!2714994) totalInput!1349)))

(declare-fun lt!2715061 () Unit!170690)

(declare-fun choose!60257 (List!74862 C!43604 List!74862 List!74862) Unit!170690)

(assert (=> d!2387321 (= lt!2715061 (choose!60257 testedP!353 lt!2714993 lt!2714994 totalInput!1349))))

(assert (=> d!2387321 (= (++!18459 testedP!353 (Cons!74738 lt!2714993 lt!2714994)) totalInput!1349)))

(assert (=> d!2387321 (= (lemmaMoveElementToOtherListKeepsConcatEq!3568 testedP!353 lt!2714993 lt!2714994 totalInput!1349) lt!2715061)))

(declare-fun bs!1970677 () Bool)

(assert (= bs!1970677 d!2387321))

(assert (=> bs!1970677 m!8370960))

(assert (=> bs!1970677 m!8370960))

(declare-fun m!8371134 () Bool)

(assert (=> bs!1970677 m!8371134))

(declare-fun m!8371136 () Bool)

(assert (=> bs!1970677 m!8371136))

(declare-fun m!8371138 () Bool)

(assert (=> bs!1970677 m!8371138))

(assert (=> b!8005580 d!2387321))

(declare-fun d!2387325 () Bool)

(assert (=> d!2387325 (= (tail!15848 testedSuffix!271) (t!390605 testedSuffix!271))))

(assert (=> b!8005580 d!2387325))

(declare-fun d!2387327 () Bool)

(declare-fun e!4716053 () Bool)

(assert (=> d!2387327 e!4716053))

(declare-fun res!3165777 () Bool)

(assert (=> d!2387327 (=> (not res!3165777) (not e!4716053))))

(declare-fun lt!2715062 () List!74862)

(assert (=> d!2387327 (= res!3165777 (= (content!15889 lt!2715062) ((_ map or) (content!15889 testedP!353) (content!15889 (Cons!74738 (head!16325 lt!2715005) Nil!74738)))))))

(declare-fun e!4716052 () List!74862)

(assert (=> d!2387327 (= lt!2715062 e!4716052)))

(declare-fun c!1469652 () Bool)

(assert (=> d!2387327 (= c!1469652 ((_ is Nil!74738) testedP!353))))

(assert (=> d!2387327 (= (++!18459 testedP!353 (Cons!74738 (head!16325 lt!2715005) Nil!74738)) lt!2715062)))

(declare-fun b!8005731 () Bool)

(assert (=> b!8005731 (= e!4716052 (Cons!74738 (h!81186 testedP!353) (++!18459 (t!390605 testedP!353) (Cons!74738 (head!16325 lt!2715005) Nil!74738))))))

(declare-fun b!8005732 () Bool)

(declare-fun res!3165776 () Bool)

(assert (=> b!8005732 (=> (not res!3165776) (not e!4716053))))

(assert (=> b!8005732 (= res!3165776 (= (size!43535 lt!2715062) (+ (size!43535 testedP!353) (size!43535 (Cons!74738 (head!16325 lt!2715005) Nil!74738)))))))

(declare-fun b!8005730 () Bool)

(assert (=> b!8005730 (= e!4716052 (Cons!74738 (head!16325 lt!2715005) Nil!74738))))

(declare-fun b!8005733 () Bool)

(assert (=> b!8005733 (= e!4716053 (or (not (= (Cons!74738 (head!16325 lt!2715005) Nil!74738) Nil!74738)) (= lt!2715062 testedP!353)))))

(assert (= (and d!2387327 c!1469652) b!8005730))

(assert (= (and d!2387327 (not c!1469652)) b!8005731))

(assert (= (and d!2387327 res!3165777) b!8005732))

(assert (= (and b!8005732 res!3165776) b!8005733))

(declare-fun m!8371140 () Bool)

(assert (=> d!2387327 m!8371140))

(assert (=> d!2387327 m!8371008))

(declare-fun m!8371142 () Bool)

(assert (=> d!2387327 m!8371142))

(declare-fun m!8371144 () Bool)

(assert (=> b!8005731 m!8371144))

(declare-fun m!8371146 () Bool)

(assert (=> b!8005732 m!8371146))

(assert (=> b!8005732 m!8370996))

(declare-fun m!8371148 () Bool)

(assert (=> b!8005732 m!8371148))

(assert (=> b!8005580 d!2387327))

(declare-fun b!8005747 () Bool)

(declare-fun e!4716056 () Bool)

(declare-fun tp!2395352 () Bool)

(declare-fun tp!2395349 () Bool)

(assert (=> b!8005747 (= e!4716056 (and tp!2395352 tp!2395349))))

(declare-fun b!8005746 () Bool)

(declare-fun tp!2395351 () Bool)

(assert (=> b!8005746 (= e!4716056 tp!2395351)))

(declare-fun b!8005745 () Bool)

(declare-fun tp!2395350 () Bool)

(declare-fun tp!2395353 () Bool)

(assert (=> b!8005745 (= e!4716056 (and tp!2395350 tp!2395353))))

(assert (=> b!8005582 (= tp!2395337 e!4716056)))

(declare-fun b!8005744 () Bool)

(assert (=> b!8005744 (= e!4716056 tp_is_empty!53809)))

(assert (= (and b!8005582 ((_ is ElementMatch!21633) (regOne!43779 r!15422))) b!8005744))

(assert (= (and b!8005582 ((_ is Concat!30632) (regOne!43779 r!15422))) b!8005745))

(assert (= (and b!8005582 ((_ is Star!21633) (regOne!43779 r!15422))) b!8005746))

(assert (= (and b!8005582 ((_ is Union!21633) (regOne!43779 r!15422))) b!8005747))

(declare-fun b!8005755 () Bool)

(declare-fun e!4716061 () Bool)

(declare-fun tp!2395357 () Bool)

(declare-fun tp!2395354 () Bool)

(assert (=> b!8005755 (= e!4716061 (and tp!2395357 tp!2395354))))

(declare-fun b!8005754 () Bool)

(declare-fun tp!2395356 () Bool)

(assert (=> b!8005754 (= e!4716061 tp!2395356)))

(declare-fun b!8005753 () Bool)

(declare-fun tp!2395355 () Bool)

(declare-fun tp!2395358 () Bool)

(assert (=> b!8005753 (= e!4716061 (and tp!2395355 tp!2395358))))

(assert (=> b!8005582 (= tp!2395333 e!4716061)))

(declare-fun b!8005752 () Bool)

(assert (=> b!8005752 (= e!4716061 tp_is_empty!53809)))

(assert (= (and b!8005582 ((_ is ElementMatch!21633) (regTwo!43779 r!15422))) b!8005752))

(assert (= (and b!8005582 ((_ is Concat!30632) (regTwo!43779 r!15422))) b!8005753))

(assert (= (and b!8005582 ((_ is Star!21633) (regTwo!43779 r!15422))) b!8005754))

(assert (= (and b!8005582 ((_ is Union!21633) (regTwo!43779 r!15422))) b!8005755))

(declare-fun b!8005764 () Bool)

(declare-fun e!4716066 () Bool)

(declare-fun tp!2395361 () Bool)

(assert (=> b!8005764 (= e!4716066 (and tp_is_empty!53809 tp!2395361))))

(assert (=> b!8005583 (= tp!2395335 e!4716066)))

(assert (= (and b!8005583 ((_ is Cons!74738) (t!390605 testedP!353))) b!8005764))

(declare-fun b!8005768 () Bool)

(declare-fun e!4716067 () Bool)

(declare-fun tp!2395365 () Bool)

(declare-fun tp!2395362 () Bool)

(assert (=> b!8005768 (= e!4716067 (and tp!2395365 tp!2395362))))

(declare-fun b!8005767 () Bool)

(declare-fun tp!2395364 () Bool)

(assert (=> b!8005767 (= e!4716067 tp!2395364)))

(declare-fun b!8005766 () Bool)

(declare-fun tp!2395363 () Bool)

(declare-fun tp!2395366 () Bool)

(assert (=> b!8005766 (= e!4716067 (and tp!2395363 tp!2395366))))

(assert (=> b!8005588 (= tp!2395336 e!4716067)))

(declare-fun b!8005765 () Bool)

(assert (=> b!8005765 (= e!4716067 tp_is_empty!53809)))

(assert (= (and b!8005588 ((_ is ElementMatch!21633) (regOne!43778 r!15422))) b!8005765))

(assert (= (and b!8005588 ((_ is Concat!30632) (regOne!43778 r!15422))) b!8005766))

(assert (= (and b!8005588 ((_ is Star!21633) (regOne!43778 r!15422))) b!8005767))

(assert (= (and b!8005588 ((_ is Union!21633) (regOne!43778 r!15422))) b!8005768))

(declare-fun b!8005772 () Bool)

(declare-fun e!4716068 () Bool)

(declare-fun tp!2395370 () Bool)

(declare-fun tp!2395367 () Bool)

(assert (=> b!8005772 (= e!4716068 (and tp!2395370 tp!2395367))))

(declare-fun b!8005771 () Bool)

(declare-fun tp!2395369 () Bool)

(assert (=> b!8005771 (= e!4716068 tp!2395369)))

(declare-fun b!8005770 () Bool)

(declare-fun tp!2395368 () Bool)

(declare-fun tp!2395371 () Bool)

(assert (=> b!8005770 (= e!4716068 (and tp!2395368 tp!2395371))))

(assert (=> b!8005588 (= tp!2395331 e!4716068)))

(declare-fun b!8005769 () Bool)

(assert (=> b!8005769 (= e!4716068 tp_is_empty!53809)))

(assert (= (and b!8005588 ((_ is ElementMatch!21633) (regTwo!43778 r!15422))) b!8005769))

(assert (= (and b!8005588 ((_ is Concat!30632) (regTwo!43778 r!15422))) b!8005770))

(assert (= (and b!8005588 ((_ is Star!21633) (regTwo!43778 r!15422))) b!8005771))

(assert (= (and b!8005588 ((_ is Union!21633) (regTwo!43778 r!15422))) b!8005772))

(declare-fun b!8005773 () Bool)

(declare-fun e!4716069 () Bool)

(declare-fun tp!2395372 () Bool)

(assert (=> b!8005773 (= e!4716069 (and tp_is_empty!53809 tp!2395372))))

(assert (=> b!8005587 (= tp!2395334 e!4716069)))

(assert (= (and b!8005587 ((_ is Cons!74738) (t!390605 totalInput!1349))) b!8005773))

(declare-fun b!8005777 () Bool)

(declare-fun e!4716070 () Bool)

(declare-fun tp!2395376 () Bool)

(declare-fun tp!2395373 () Bool)

(assert (=> b!8005777 (= e!4716070 (and tp!2395376 tp!2395373))))

(declare-fun b!8005776 () Bool)

(declare-fun tp!2395375 () Bool)

(assert (=> b!8005776 (= e!4716070 tp!2395375)))

(declare-fun b!8005775 () Bool)

(declare-fun tp!2395374 () Bool)

(declare-fun tp!2395377 () Bool)

(assert (=> b!8005775 (= e!4716070 (and tp!2395374 tp!2395377))))

(assert (=> b!8005585 (= tp!2395332 e!4716070)))

(declare-fun b!8005774 () Bool)

(assert (=> b!8005774 (= e!4716070 tp_is_empty!53809)))

(assert (= (and b!8005585 ((_ is ElementMatch!21633) (reg!21962 r!15422))) b!8005774))

(assert (= (and b!8005585 ((_ is Concat!30632) (reg!21962 r!15422))) b!8005775))

(assert (= (and b!8005585 ((_ is Star!21633) (reg!21962 r!15422))) b!8005776))

(assert (= (and b!8005585 ((_ is Union!21633) (reg!21962 r!15422))) b!8005777))

(declare-fun b!8005778 () Bool)

(declare-fun e!4716071 () Bool)

(declare-fun tp!2395378 () Bool)

(assert (=> b!8005778 (= e!4716071 (and tp_is_empty!53809 tp!2395378))))

(assert (=> b!8005596 (= tp!2395338 e!4716071)))

(assert (= (and b!8005596 ((_ is Cons!74738) (t!390605 testedSuffix!271))) b!8005778))

(check-sat (not b!8005775) (not b!8005676) (not d!2387291) (not d!2387297) (not bm!743717) (not b!8005766) (not b!8005776) (not b!8005720) (not b!8005755) (not d!2387277) (not b!8005719) (not d!2387287) (not b!8005723) (not b!8005753) (not b!8005754) (not b!8005679) (not b!8005724) tp_is_empty!53809 (not b!8005656) (not b!8005745) (not d!2387311) (not b!8005778) (not b!8005655) (not b!8005764) (not b!8005773) (not d!2387275) (not b!8005747) (not b!8005728) (not b!8005746) (not d!2387269) (not d!2387327) (not b!8005606) (not d!2387273) (not b!8005680) (not d!2387319) (not b!8005658) (not bm!743726) (not b!8005777) (not b!8005654) (not b!8005732) (not b!8005767) (not b!8005768) (not b!8005721) (not b!8005639) (not d!2387289) (not d!2387321) (not b!8005706) (not b!8005674) (not b!8005770) (not d!2387317) (not b!8005727) (not b!8005675) (not d!2387305) (not b!8005614) (not bm!743718) (not bm!743728) (not b!8005771) (not b!8005731) (not b!8005678) (not b!8005607) (not d!2387283) (not b!8005671) (not b!8005772))
(check-sat)
