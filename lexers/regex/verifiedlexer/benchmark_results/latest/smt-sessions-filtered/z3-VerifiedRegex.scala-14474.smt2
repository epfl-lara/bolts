; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753132 () Bool)

(assert start!753132)

(declare-fun b!8005117 () Bool)

(declare-fun e!4715674 () Bool)

(declare-fun e!4715677 () Bool)

(assert (=> b!8005117 (= e!4715674 e!4715677)))

(declare-fun res!3165515 () Bool)

(assert (=> b!8005117 (=> res!3165515 e!4715677)))

(declare-fun lt!2714729 () Int)

(declare-fun lt!2714733 () Int)

(assert (=> b!8005117 (= res!3165515 (>= lt!2714729 lt!2714733))))

(declare-datatypes ((Unit!170674 0))(
  ( (Unit!170675) )
))
(declare-fun lt!2714739 () Unit!170674)

(declare-fun e!4715676 () Unit!170674)

(assert (=> b!8005117 (= lt!2714739 e!4715676)))

(declare-fun c!1469557 () Bool)

(assert (=> b!8005117 (= c!1469557 (= lt!2714729 lt!2714733))))

(assert (=> b!8005117 (<= lt!2714729 lt!2714733)))

(declare-fun lt!2714734 () Unit!170674)

(declare-datatypes ((C!43596 0))(
  ( (C!43597 (val!32346 Int)) )
))
(declare-datatypes ((List!74858 0))(
  ( (Nil!74734) (Cons!74734 (h!81182 C!43596) (t!390601 List!74858)) )
))
(declare-fun testedP!353 () List!74858)

(declare-fun totalInput!1349 () List!74858)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1184 (List!74858 List!74858) Unit!170674)

(assert (=> b!8005117 (= lt!2714734 (lemmaIsPrefixThenSmallerEqSize!1184 testedP!353 totalInput!1349))))

(declare-fun b!8005118 () Bool)

(declare-fun e!4715680 () Bool)

(declare-fun tp_is_empty!53801 () Bool)

(declare-fun tp!2395155 () Bool)

(assert (=> b!8005118 (= e!4715680 (and tp_is_empty!53801 tp!2395155))))

(declare-fun b!8005119 () Bool)

(declare-fun e!4715678 () Bool)

(declare-fun e!4715675 () Bool)

(assert (=> b!8005119 (= e!4715678 (not e!4715675))))

(declare-fun res!3165516 () Bool)

(assert (=> b!8005119 (=> res!3165516 e!4715675)))

(declare-fun isPrefix!6683 (List!74858 List!74858) Bool)

(assert (=> b!8005119 (= res!3165516 (not (isPrefix!6683 testedP!353 totalInput!1349)))))

(declare-fun lt!2714732 () List!74858)

(assert (=> b!8005119 (isPrefix!6683 testedP!353 lt!2714732)))

(declare-fun lt!2714737 () Unit!170674)

(declare-fun testedSuffix!271 () List!74858)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3914 (List!74858 List!74858) Unit!170674)

(assert (=> b!8005119 (= lt!2714737 (lemmaConcatTwoListThenFirstIsPrefix!3914 testedP!353 testedSuffix!271))))

(declare-fun res!3165512 () Bool)

(declare-fun e!4715681 () Bool)

(assert (=> start!753132 (=> (not res!3165512) (not e!4715681))))

(declare-datatypes ((Regex!21629 0))(
  ( (ElementMatch!21629 (c!1469558 C!43596)) (Concat!30628 (regOne!43770 Regex!21629) (regTwo!43770 Regex!21629)) (EmptyExpr!21629) (Star!21629 (reg!21958 Regex!21629)) (EmptyLang!21629) (Union!21629 (regOne!43771 Regex!21629) (regTwo!43771 Regex!21629)) )
))
(declare-fun r!15422 () Regex!21629)

(declare-fun validRegex!11933 (Regex!21629) Bool)

(assert (=> start!753132 (= res!3165512 (validRegex!11933 r!15422))))

(assert (=> start!753132 e!4715681))

(assert (=> start!753132 e!4715680))

(assert (=> start!753132 true))

(declare-fun e!4715679 () Bool)

(assert (=> start!753132 e!4715679))

(declare-fun e!4715670 () Bool)

(assert (=> start!753132 e!4715670))

(declare-fun e!4715672 () Bool)

(assert (=> start!753132 e!4715672))

(declare-fun b!8005120 () Bool)

(declare-fun e!4715671 () Bool)

(assert (=> b!8005120 (= e!4715681 e!4715671)))

(declare-fun res!3165513 () Bool)

(assert (=> b!8005120 (=> (not res!3165513) (not e!4715671))))

(assert (=> b!8005120 (= res!3165513 (= lt!2714732 totalInput!1349))))

(declare-fun ++!18455 (List!74858 List!74858) List!74858)

(assert (=> b!8005120 (= lt!2714732 (++!18455 testedP!353 testedSuffix!271))))

(declare-fun b!8005121 () Bool)

(declare-fun e!4715669 () Bool)

(assert (=> b!8005121 (= e!4715669 (not (= testedSuffix!271 Nil!74734)))))

(declare-fun b!8005122 () Bool)

(assert (=> b!8005122 (= e!4715670 tp_is_empty!53801)))

(declare-fun b!8005123 () Bool)

(declare-fun Unit!170676 () Unit!170674)

(assert (=> b!8005123 (= e!4715676 Unit!170676)))

(declare-fun lt!2714728 () Unit!170674)

(declare-fun lemmaIsPrefixRefl!4135 (List!74858 List!74858) Unit!170674)

(assert (=> b!8005123 (= lt!2714728 (lemmaIsPrefixRefl!4135 totalInput!1349 totalInput!1349))))

(assert (=> b!8005123 (isPrefix!6683 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714738 () Unit!170674)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1709 (List!74858 List!74858 List!74858) Unit!170674)

(assert (=> b!8005123 (= lt!2714738 (lemmaIsPrefixSameLengthThenSameList!1709 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8005123 false))

(declare-fun b!8005124 () Bool)

(declare-fun tp!2395157 () Bool)

(assert (=> b!8005124 (= e!4715670 tp!2395157)))

(declare-fun b!8005125 () Bool)

(declare-fun tp!2395161 () Bool)

(declare-fun tp!2395158 () Bool)

(assert (=> b!8005125 (= e!4715670 (and tp!2395161 tp!2395158))))

(declare-fun b!8005126 () Bool)

(declare-fun e!4715673 () Bool)

(assert (=> b!8005126 (= e!4715673 e!4715678)))

(declare-fun res!3165508 () Bool)

(assert (=> b!8005126 (=> (not res!3165508) (not e!4715678))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8005126 (= res!3165508 (= totalInputSize!629 lt!2714733))))

(declare-fun size!43531 (List!74858) Int)

(assert (=> b!8005126 (= lt!2714733 (size!43531 totalInput!1349))))

(declare-fun b!8005127 () Bool)

(declare-fun res!3165511 () Bool)

(assert (=> b!8005127 (=> res!3165511 e!4715674)))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8005127 (= res!3165511 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8005128 () Bool)

(declare-fun tp!2395162 () Bool)

(assert (=> b!8005128 (= e!4715679 (and tp_is_empty!53801 tp!2395162))))

(declare-fun b!8005129 () Bool)

(declare-fun tp!2395159 () Bool)

(declare-fun tp!2395156 () Bool)

(assert (=> b!8005129 (= e!4715670 (and tp!2395159 tp!2395156))))

(declare-fun b!8005130 () Bool)

(assert (=> b!8005130 (= e!4715675 e!4715674)))

(declare-fun res!3165510 () Bool)

(assert (=> b!8005130 (=> res!3165510 e!4715674)))

(declare-fun lostCause!2026 (Regex!21629) Bool)

(assert (=> b!8005130 (= res!3165510 (lostCause!2026 r!15422))))

(declare-fun lt!2714727 () List!74858)

(assert (=> b!8005130 (and (= testedSuffix!271 lt!2714727) (= lt!2714727 testedSuffix!271))))

(declare-fun lt!2714741 () Unit!170674)

(declare-fun lemmaSamePrefixThenSameSuffix!3046 (List!74858 List!74858 List!74858 List!74858 List!74858) Unit!170674)

(assert (=> b!8005130 (= lt!2714741 (lemmaSamePrefixThenSameSuffix!3046 testedP!353 testedSuffix!271 testedP!353 lt!2714727 totalInput!1349))))

(declare-fun getSuffix!3880 (List!74858 List!74858) List!74858)

(assert (=> b!8005130 (= lt!2714727 (getSuffix!3880 totalInput!1349 testedP!353))))

(declare-fun b!8005131 () Bool)

(declare-fun tp!2395160 () Bool)

(assert (=> b!8005131 (= e!4715672 (and tp_is_empty!53801 tp!2395160))))

(declare-fun b!8005132 () Bool)

(assert (=> b!8005132 (= e!4715677 e!4715669)))

(declare-fun res!3165509 () Bool)

(assert (=> b!8005132 (=> res!3165509 e!4715669)))

(declare-fun nullable!9689 (Regex!21629) Bool)

(assert (=> b!8005132 (= res!3165509 (not (nullable!9689 r!15422)))))

(declare-fun lt!2714735 () List!74858)

(declare-fun lt!2714730 () List!74858)

(assert (=> b!8005132 (= (++!18455 lt!2714735 lt!2714730) totalInput!1349)))

(declare-fun lt!2714736 () C!43596)

(declare-fun lt!2714731 () Unit!170674)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3564 (List!74858 C!43596 List!74858 List!74858) Unit!170674)

(assert (=> b!8005132 (= lt!2714731 (lemmaMoveElementToOtherListKeepsConcatEq!3564 testedP!353 lt!2714736 lt!2714730 totalInput!1349))))

(declare-fun tail!15844 (List!74858) List!74858)

(assert (=> b!8005132 (= lt!2714730 (tail!15844 testedSuffix!271))))

(declare-fun head!16321 (List!74858) C!43596)

(assert (=> b!8005132 (isPrefix!6683 (++!18455 testedP!353 (Cons!74734 (head!16321 lt!2714727) Nil!74734)) totalInput!1349)))

(declare-fun lt!2714740 () Unit!170674)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1380 (List!74858 List!74858) Unit!170674)

(assert (=> b!8005132 (= lt!2714740 (lemmaAddHeadSuffixToPrefixStillPrefix!1380 testedP!353 totalInput!1349))))

(assert (=> b!8005132 (= lt!2714735 (++!18455 testedP!353 (Cons!74734 lt!2714736 Nil!74734)))))

(assert (=> b!8005132 (= lt!2714736 (head!16321 testedSuffix!271))))

(declare-fun b!8005133 () Bool)

(assert (=> b!8005133 (= e!4715671 e!4715673)))

(declare-fun res!3165514 () Bool)

(assert (=> b!8005133 (=> (not res!3165514) (not e!4715673))))

(assert (=> b!8005133 (= res!3165514 (= testedPSize!271 lt!2714729))))

(assert (=> b!8005133 (= lt!2714729 (size!43531 testedP!353))))

(declare-fun b!8005134 () Bool)

(declare-fun Unit!170677 () Unit!170674)

(assert (=> b!8005134 (= e!4715676 Unit!170677)))

(assert (= (and start!753132 res!3165512) b!8005120))

(assert (= (and b!8005120 res!3165513) b!8005133))

(assert (= (and b!8005133 res!3165514) b!8005126))

(assert (= (and b!8005126 res!3165508) b!8005119))

(assert (= (and b!8005119 (not res!3165516)) b!8005130))

(assert (= (and b!8005130 (not res!3165510)) b!8005127))

(assert (= (and b!8005127 (not res!3165511)) b!8005117))

(assert (= (and b!8005117 c!1469557) b!8005123))

(assert (= (and b!8005117 (not c!1469557)) b!8005134))

(assert (= (and b!8005117 (not res!3165515)) b!8005132))

(assert (= (and b!8005132 (not res!3165509)) b!8005121))

(get-info :version)

(assert (= (and start!753132 ((_ is Cons!74734) totalInput!1349)) b!8005118))

(assert (= (and start!753132 ((_ is Cons!74734) testedSuffix!271)) b!8005128))

(assert (= (and start!753132 ((_ is ElementMatch!21629) r!15422)) b!8005122))

(assert (= (and start!753132 ((_ is Concat!30628) r!15422)) b!8005125))

(assert (= (and start!753132 ((_ is Star!21629) r!15422)) b!8005124))

(assert (= (and start!753132 ((_ is Union!21629) r!15422)) b!8005129))

(assert (= (and start!753132 ((_ is Cons!74734) testedP!353)) b!8005131))

(declare-fun m!8370530 () Bool)

(assert (=> b!8005117 m!8370530))

(declare-fun m!8370532 () Bool)

(assert (=> b!8005126 m!8370532))

(declare-fun m!8370534 () Bool)

(assert (=> start!753132 m!8370534))

(declare-fun m!8370536 () Bool)

(assert (=> b!8005119 m!8370536))

(declare-fun m!8370538 () Bool)

(assert (=> b!8005119 m!8370538))

(declare-fun m!8370540 () Bool)

(assert (=> b!8005119 m!8370540))

(declare-fun m!8370542 () Bool)

(assert (=> b!8005123 m!8370542))

(declare-fun m!8370544 () Bool)

(assert (=> b!8005123 m!8370544))

(declare-fun m!8370546 () Bool)

(assert (=> b!8005123 m!8370546))

(declare-fun m!8370548 () Bool)

(assert (=> b!8005132 m!8370548))

(declare-fun m!8370550 () Bool)

(assert (=> b!8005132 m!8370550))

(declare-fun m!8370552 () Bool)

(assert (=> b!8005132 m!8370552))

(declare-fun m!8370554 () Bool)

(assert (=> b!8005132 m!8370554))

(declare-fun m!8370556 () Bool)

(assert (=> b!8005132 m!8370556))

(declare-fun m!8370558 () Bool)

(assert (=> b!8005132 m!8370558))

(declare-fun m!8370560 () Bool)

(assert (=> b!8005132 m!8370560))

(declare-fun m!8370562 () Bool)

(assert (=> b!8005132 m!8370562))

(declare-fun m!8370564 () Bool)

(assert (=> b!8005132 m!8370564))

(declare-fun m!8370566 () Bool)

(assert (=> b!8005132 m!8370566))

(assert (=> b!8005132 m!8370560))

(declare-fun m!8370568 () Bool)

(assert (=> b!8005120 m!8370568))

(declare-fun m!8370570 () Bool)

(assert (=> b!8005133 m!8370570))

(declare-fun m!8370572 () Bool)

(assert (=> b!8005130 m!8370572))

(declare-fun m!8370574 () Bool)

(assert (=> b!8005130 m!8370574))

(declare-fun m!8370576 () Bool)

(assert (=> b!8005130 m!8370576))

(check-sat (not b!8005124) (not b!8005120) (not b!8005129) tp_is_empty!53801 (not b!8005118) (not b!8005128) (not b!8005119) (not start!753132) (not b!8005123) (not b!8005117) (not b!8005131) (not b!8005133) (not b!8005132) (not b!8005125) (not b!8005130) (not b!8005126))
(check-sat)
(get-model)

(declare-fun d!2387171 () Bool)

(declare-fun res!3165528 () Bool)

(declare-fun e!4715699 () Bool)

(assert (=> d!2387171 (=> res!3165528 e!4715699)))

(assert (=> d!2387171 (= res!3165528 ((_ is ElementMatch!21629) r!15422))))

(assert (=> d!2387171 (= (validRegex!11933 r!15422) e!4715699)))

(declare-fun b!8005153 () Bool)

(declare-fun e!4715696 () Bool)

(declare-fun e!4715701 () Bool)

(assert (=> b!8005153 (= e!4715696 e!4715701)))

(declare-fun res!3165527 () Bool)

(assert (=> b!8005153 (=> (not res!3165527) (not e!4715701))))

(declare-fun call!743701 () Bool)

(assert (=> b!8005153 (= res!3165527 call!743701)))

(declare-fun b!8005154 () Bool)

(declare-fun e!4715700 () Bool)

(declare-fun call!743702 () Bool)

(assert (=> b!8005154 (= e!4715700 call!743702)))

(declare-fun b!8005155 () Bool)

(declare-fun res!3165531 () Bool)

(declare-fun e!4715698 () Bool)

(assert (=> b!8005155 (=> (not res!3165531) (not e!4715698))))

(assert (=> b!8005155 (= res!3165531 call!743701)))

(declare-fun e!4715697 () Bool)

(assert (=> b!8005155 (= e!4715697 e!4715698)))

(declare-fun b!8005156 () Bool)

(declare-fun e!4715702 () Bool)

(assert (=> b!8005156 (= e!4715702 e!4715700)))

(declare-fun res!3165529 () Bool)

(assert (=> b!8005156 (= res!3165529 (not (nullable!9689 (reg!21958 r!15422))))))

(assert (=> b!8005156 (=> (not res!3165529) (not e!4715700))))

(declare-fun c!1469563 () Bool)

(declare-fun c!1469564 () Bool)

(declare-fun bm!743696 () Bool)

(assert (=> bm!743696 (= call!743702 (validRegex!11933 (ite c!1469563 (reg!21958 r!15422) (ite c!1469564 (regOne!43771 r!15422) (regOne!43770 r!15422)))))))

(declare-fun bm!743697 () Bool)

(declare-fun call!743703 () Bool)

(assert (=> bm!743697 (= call!743703 (validRegex!11933 (ite c!1469564 (regTwo!43771 r!15422) (regTwo!43770 r!15422))))))

(declare-fun b!8005157 () Bool)

(assert (=> b!8005157 (= e!4715698 call!743703)))

(declare-fun bm!743698 () Bool)

(assert (=> bm!743698 (= call!743701 call!743702)))

(declare-fun b!8005158 () Bool)

(assert (=> b!8005158 (= e!4715699 e!4715702)))

(assert (=> b!8005158 (= c!1469563 ((_ is Star!21629) r!15422))))

(declare-fun b!8005159 () Bool)

(declare-fun res!3165530 () Bool)

(assert (=> b!8005159 (=> res!3165530 e!4715696)))

(assert (=> b!8005159 (= res!3165530 (not ((_ is Concat!30628) r!15422)))))

(assert (=> b!8005159 (= e!4715697 e!4715696)))

(declare-fun b!8005160 () Bool)

(assert (=> b!8005160 (= e!4715702 e!4715697)))

(assert (=> b!8005160 (= c!1469564 ((_ is Union!21629) r!15422))))

(declare-fun b!8005161 () Bool)

(assert (=> b!8005161 (= e!4715701 call!743703)))

(assert (= (and d!2387171 (not res!3165528)) b!8005158))

(assert (= (and b!8005158 c!1469563) b!8005156))

(assert (= (and b!8005158 (not c!1469563)) b!8005160))

(assert (= (and b!8005156 res!3165529) b!8005154))

(assert (= (and b!8005160 c!1469564) b!8005155))

(assert (= (and b!8005160 (not c!1469564)) b!8005159))

(assert (= (and b!8005155 res!3165531) b!8005157))

(assert (= (and b!8005159 (not res!3165530)) b!8005153))

(assert (= (and b!8005153 res!3165527) b!8005161))

(assert (= (or b!8005157 b!8005161) bm!743697))

(assert (= (or b!8005155 b!8005153) bm!743698))

(assert (= (or b!8005154 bm!743698) bm!743696))

(declare-fun m!8370578 () Bool)

(assert (=> b!8005156 m!8370578))

(declare-fun m!8370580 () Bool)

(assert (=> bm!743696 m!8370580))

(declare-fun m!8370582 () Bool)

(assert (=> bm!743697 m!8370582))

(assert (=> start!753132 d!2387171))

(declare-fun d!2387175 () Bool)

(assert (=> d!2387175 (isPrefix!6683 (++!18455 testedP!353 (Cons!74734 (head!16321 (getSuffix!3880 totalInput!1349 testedP!353)) Nil!74734)) totalInput!1349)))

(declare-fun lt!2714747 () Unit!170674)

(declare-fun choose!60239 (List!74858 List!74858) Unit!170674)

(assert (=> d!2387175 (= lt!2714747 (choose!60239 testedP!353 totalInput!1349))))

(assert (=> d!2387175 (isPrefix!6683 testedP!353 totalInput!1349)))

(assert (=> d!2387175 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1380 testedP!353 totalInput!1349) lt!2714747)))

(declare-fun bs!1970646 () Bool)

(assert (= bs!1970646 d!2387175))

(declare-fun m!8370592 () Bool)

(assert (=> bs!1970646 m!8370592))

(assert (=> bs!1970646 m!8370536))

(assert (=> bs!1970646 m!8370592))

(declare-fun m!8370594 () Bool)

(assert (=> bs!1970646 m!8370594))

(assert (=> bs!1970646 m!8370576))

(declare-fun m!8370596 () Bool)

(assert (=> bs!1970646 m!8370596))

(assert (=> bs!1970646 m!8370576))

(declare-fun m!8370598 () Bool)

(assert (=> bs!1970646 m!8370598))

(assert (=> b!8005132 d!2387175))

(declare-fun b!8005183 () Bool)

(declare-fun e!4715717 () List!74858)

(assert (=> b!8005183 (= e!4715717 lt!2714730)))

(declare-fun b!8005186 () Bool)

(declare-fun res!3165548 () Bool)

(declare-fun e!4715716 () Bool)

(assert (=> b!8005186 (=> (not res!3165548) (not e!4715716))))

(declare-fun lt!2714755 () List!74858)

(assert (=> b!8005186 (= res!3165548 (= (size!43531 lt!2714755) (+ (size!43531 lt!2714735) (size!43531 lt!2714730))))))

(declare-fun b!8005185 () Bool)

(assert (=> b!8005185 (= e!4715717 (Cons!74734 (h!81182 lt!2714735) (++!18455 (t!390601 lt!2714735) lt!2714730)))))

(declare-fun b!8005187 () Bool)

(assert (=> b!8005187 (= e!4715716 (or (not (= lt!2714730 Nil!74734)) (= lt!2714755 lt!2714735)))))

(declare-fun d!2387181 () Bool)

(assert (=> d!2387181 e!4715716))

(declare-fun res!3165549 () Bool)

(assert (=> d!2387181 (=> (not res!3165549) (not e!4715716))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15888 (List!74858) (InoxSet C!43596))

(assert (=> d!2387181 (= res!3165549 (= (content!15888 lt!2714755) ((_ map or) (content!15888 lt!2714735) (content!15888 lt!2714730))))))

(assert (=> d!2387181 (= lt!2714755 e!4715717)))

(declare-fun c!1469567 () Bool)

(assert (=> d!2387181 (= c!1469567 ((_ is Nil!74734) lt!2714735))))

(assert (=> d!2387181 (= (++!18455 lt!2714735 lt!2714730) lt!2714755)))

(assert (= (and d!2387181 c!1469567) b!8005183))

(assert (= (and d!2387181 (not c!1469567)) b!8005185))

(assert (= (and d!2387181 res!3165549) b!8005186))

(assert (= (and b!8005186 res!3165548) b!8005187))

(declare-fun m!8370612 () Bool)

(assert (=> b!8005186 m!8370612))

(declare-fun m!8370614 () Bool)

(assert (=> b!8005186 m!8370614))

(declare-fun m!8370616 () Bool)

(assert (=> b!8005186 m!8370616))

(declare-fun m!8370618 () Bool)

(assert (=> b!8005185 m!8370618))

(declare-fun m!8370620 () Bool)

(assert (=> d!2387181 m!8370620))

(declare-fun m!8370622 () Bool)

(assert (=> d!2387181 m!8370622))

(declare-fun m!8370624 () Bool)

(assert (=> d!2387181 m!8370624))

(assert (=> b!8005132 d!2387181))

(declare-fun b!8005194 () Bool)

(declare-fun e!4715723 () List!74858)

(assert (=> b!8005194 (= e!4715723 (Cons!74734 (head!16321 lt!2714727) Nil!74734))))

(declare-fun b!8005196 () Bool)

(declare-fun res!3165554 () Bool)

(declare-fun e!4715722 () Bool)

(assert (=> b!8005196 (=> (not res!3165554) (not e!4715722))))

(declare-fun lt!2714756 () List!74858)

(assert (=> b!8005196 (= res!3165554 (= (size!43531 lt!2714756) (+ (size!43531 testedP!353) (size!43531 (Cons!74734 (head!16321 lt!2714727) Nil!74734)))))))

(declare-fun b!8005195 () Bool)

(assert (=> b!8005195 (= e!4715723 (Cons!74734 (h!81182 testedP!353) (++!18455 (t!390601 testedP!353) (Cons!74734 (head!16321 lt!2714727) Nil!74734))))))

(declare-fun b!8005197 () Bool)

(assert (=> b!8005197 (= e!4715722 (or (not (= (Cons!74734 (head!16321 lt!2714727) Nil!74734) Nil!74734)) (= lt!2714756 testedP!353)))))

(declare-fun d!2387185 () Bool)

(assert (=> d!2387185 e!4715722))

(declare-fun res!3165555 () Bool)

(assert (=> d!2387185 (=> (not res!3165555) (not e!4715722))))

(assert (=> d!2387185 (= res!3165555 (= (content!15888 lt!2714756) ((_ map or) (content!15888 testedP!353) (content!15888 (Cons!74734 (head!16321 lt!2714727) Nil!74734)))))))

(assert (=> d!2387185 (= lt!2714756 e!4715723)))

(declare-fun c!1469570 () Bool)

(assert (=> d!2387185 (= c!1469570 ((_ is Nil!74734) testedP!353))))

(assert (=> d!2387185 (= (++!18455 testedP!353 (Cons!74734 (head!16321 lt!2714727) Nil!74734)) lt!2714756)))

(assert (= (and d!2387185 c!1469570) b!8005194))

(assert (= (and d!2387185 (not c!1469570)) b!8005195))

(assert (= (and d!2387185 res!3165555) b!8005196))

(assert (= (and b!8005196 res!3165554) b!8005197))

(declare-fun m!8370626 () Bool)

(assert (=> b!8005196 m!8370626))

(assert (=> b!8005196 m!8370570))

(declare-fun m!8370628 () Bool)

(assert (=> b!8005196 m!8370628))

(declare-fun m!8370630 () Bool)

(assert (=> b!8005195 m!8370630))

(declare-fun m!8370632 () Bool)

(assert (=> d!2387185 m!8370632))

(declare-fun m!8370634 () Bool)

(assert (=> d!2387185 m!8370634))

(declare-fun m!8370636 () Bool)

(assert (=> d!2387185 m!8370636))

(assert (=> b!8005132 d!2387185))

(declare-fun d!2387187 () Bool)

(assert (=> d!2387187 (= (head!16321 testedSuffix!271) (h!81182 testedSuffix!271))))

(assert (=> b!8005132 d!2387187))

(declare-fun d!2387189 () Bool)

(assert (=> d!2387189 (= (++!18455 (++!18455 testedP!353 (Cons!74734 lt!2714736 Nil!74734)) lt!2714730) totalInput!1349)))

(declare-fun lt!2714762 () Unit!170674)

(declare-fun choose!60240 (List!74858 C!43596 List!74858 List!74858) Unit!170674)

(assert (=> d!2387189 (= lt!2714762 (choose!60240 testedP!353 lt!2714736 lt!2714730 totalInput!1349))))

(assert (=> d!2387189 (= (++!18455 testedP!353 (Cons!74734 lt!2714736 lt!2714730)) totalInput!1349)))

(assert (=> d!2387189 (= (lemmaMoveElementToOtherListKeepsConcatEq!3564 testedP!353 lt!2714736 lt!2714730 totalInput!1349) lt!2714762)))

(declare-fun bs!1970648 () Bool)

(assert (= bs!1970648 d!2387189))

(assert (=> bs!1970648 m!8370556))

(assert (=> bs!1970648 m!8370556))

(declare-fun m!8370654 () Bool)

(assert (=> bs!1970648 m!8370654))

(declare-fun m!8370658 () Bool)

(assert (=> bs!1970648 m!8370658))

(declare-fun m!8370662 () Bool)

(assert (=> bs!1970648 m!8370662))

(assert (=> b!8005132 d!2387189))

(declare-fun d!2387195 () Bool)

(assert (=> d!2387195 (= (head!16321 lt!2714727) (h!81182 lt!2714727))))

(assert (=> b!8005132 d!2387195))

(declare-fun d!2387197 () Bool)

(assert (=> d!2387197 (= (tail!15844 testedSuffix!271) (t!390601 testedSuffix!271))))

(assert (=> b!8005132 d!2387197))

(declare-fun b!8005228 () Bool)

(declare-fun e!4715742 () Bool)

(assert (=> b!8005228 (= e!4715742 (isPrefix!6683 (tail!15844 (++!18455 testedP!353 (Cons!74734 (head!16321 lt!2714727) Nil!74734))) (tail!15844 totalInput!1349)))))

(declare-fun b!8005226 () Bool)

(declare-fun e!4715744 () Bool)

(assert (=> b!8005226 (= e!4715744 e!4715742)))

(declare-fun res!3165581 () Bool)

(assert (=> b!8005226 (=> (not res!3165581) (not e!4715742))))

(assert (=> b!8005226 (= res!3165581 (not ((_ is Nil!74734) totalInput!1349)))))

(declare-fun d!2387201 () Bool)

(declare-fun e!4715743 () Bool)

(assert (=> d!2387201 e!4715743))

(declare-fun res!3165580 () Bool)

(assert (=> d!2387201 (=> res!3165580 e!4715743)))

(declare-fun lt!2714773 () Bool)

(assert (=> d!2387201 (= res!3165580 (not lt!2714773))))

(assert (=> d!2387201 (= lt!2714773 e!4715744)))

(declare-fun res!3165578 () Bool)

(assert (=> d!2387201 (=> res!3165578 e!4715744)))

(assert (=> d!2387201 (= res!3165578 ((_ is Nil!74734) (++!18455 testedP!353 (Cons!74734 (head!16321 lt!2714727) Nil!74734))))))

(assert (=> d!2387201 (= (isPrefix!6683 (++!18455 testedP!353 (Cons!74734 (head!16321 lt!2714727) Nil!74734)) totalInput!1349) lt!2714773)))

(declare-fun b!8005227 () Bool)

(declare-fun res!3165579 () Bool)

(assert (=> b!8005227 (=> (not res!3165579) (not e!4715742))))

(assert (=> b!8005227 (= res!3165579 (= (head!16321 (++!18455 testedP!353 (Cons!74734 (head!16321 lt!2714727) Nil!74734))) (head!16321 totalInput!1349)))))

(declare-fun b!8005229 () Bool)

(assert (=> b!8005229 (= e!4715743 (>= (size!43531 totalInput!1349) (size!43531 (++!18455 testedP!353 (Cons!74734 (head!16321 lt!2714727) Nil!74734)))))))

(assert (= (and d!2387201 (not res!3165578)) b!8005226))

(assert (= (and b!8005226 res!3165581) b!8005227))

(assert (= (and b!8005227 res!3165579) b!8005228))

(assert (= (and d!2387201 (not res!3165580)) b!8005229))

(assert (=> b!8005228 m!8370560))

(declare-fun m!8370706 () Bool)

(assert (=> b!8005228 m!8370706))

(declare-fun m!8370708 () Bool)

(assert (=> b!8005228 m!8370708))

(assert (=> b!8005228 m!8370706))

(assert (=> b!8005228 m!8370708))

(declare-fun m!8370710 () Bool)

(assert (=> b!8005228 m!8370710))

(assert (=> b!8005227 m!8370560))

(declare-fun m!8370712 () Bool)

(assert (=> b!8005227 m!8370712))

(declare-fun m!8370714 () Bool)

(assert (=> b!8005227 m!8370714))

(assert (=> b!8005229 m!8370532))

(assert (=> b!8005229 m!8370560))

(declare-fun m!8370716 () Bool)

(assert (=> b!8005229 m!8370716))

(assert (=> b!8005132 d!2387201))

(declare-fun d!2387217 () Bool)

(declare-fun nullableFct!3822 (Regex!21629) Bool)

(assert (=> d!2387217 (= (nullable!9689 r!15422) (nullableFct!3822 r!15422))))

(declare-fun bs!1970651 () Bool)

(assert (= bs!1970651 d!2387217))

(declare-fun m!8370720 () Bool)

(assert (=> bs!1970651 m!8370720))

(assert (=> b!8005132 d!2387217))

(declare-fun b!8005236 () Bool)

(declare-fun e!4715749 () List!74858)

(assert (=> b!8005236 (= e!4715749 (Cons!74734 lt!2714736 Nil!74734))))

(declare-fun b!8005238 () Bool)

(declare-fun res!3165582 () Bool)

(declare-fun e!4715748 () Bool)

(assert (=> b!8005238 (=> (not res!3165582) (not e!4715748))))

(declare-fun lt!2714777 () List!74858)

(assert (=> b!8005238 (= res!3165582 (= (size!43531 lt!2714777) (+ (size!43531 testedP!353) (size!43531 (Cons!74734 lt!2714736 Nil!74734)))))))

(declare-fun b!8005237 () Bool)

(assert (=> b!8005237 (= e!4715749 (Cons!74734 (h!81182 testedP!353) (++!18455 (t!390601 testedP!353) (Cons!74734 lt!2714736 Nil!74734))))))

(declare-fun b!8005239 () Bool)

(assert (=> b!8005239 (= e!4715748 (or (not (= (Cons!74734 lt!2714736 Nil!74734) Nil!74734)) (= lt!2714777 testedP!353)))))

(declare-fun d!2387221 () Bool)

(assert (=> d!2387221 e!4715748))

(declare-fun res!3165583 () Bool)

(assert (=> d!2387221 (=> (not res!3165583) (not e!4715748))))

(assert (=> d!2387221 (= res!3165583 (= (content!15888 lt!2714777) ((_ map or) (content!15888 testedP!353) (content!15888 (Cons!74734 lt!2714736 Nil!74734)))))))

(assert (=> d!2387221 (= lt!2714777 e!4715749)))

(declare-fun c!1469577 () Bool)

(assert (=> d!2387221 (= c!1469577 ((_ is Nil!74734) testedP!353))))

(assert (=> d!2387221 (= (++!18455 testedP!353 (Cons!74734 lt!2714736 Nil!74734)) lt!2714777)))

(assert (= (and d!2387221 c!1469577) b!8005236))

(assert (= (and d!2387221 (not c!1469577)) b!8005237))

(assert (= (and d!2387221 res!3165583) b!8005238))

(assert (= (and b!8005238 res!3165582) b!8005239))

(declare-fun m!8370722 () Bool)

(assert (=> b!8005238 m!8370722))

(assert (=> b!8005238 m!8370570))

(declare-fun m!8370724 () Bool)

(assert (=> b!8005238 m!8370724))

(declare-fun m!8370726 () Bool)

(assert (=> b!8005237 m!8370726))

(declare-fun m!8370728 () Bool)

(assert (=> d!2387221 m!8370728))

(assert (=> d!2387221 m!8370634))

(declare-fun m!8370730 () Bool)

(assert (=> d!2387221 m!8370730))

(assert (=> b!8005132 d!2387221))

(declare-fun d!2387223 () Bool)

(declare-fun lt!2714783 () Int)

(assert (=> d!2387223 (>= lt!2714783 0)))

(declare-fun e!4715752 () Int)

(assert (=> d!2387223 (= lt!2714783 e!4715752)))

(declare-fun c!1469580 () Bool)

(assert (=> d!2387223 (= c!1469580 ((_ is Nil!74734) totalInput!1349))))

(assert (=> d!2387223 (= (size!43531 totalInput!1349) lt!2714783)))

(declare-fun b!8005244 () Bool)

(assert (=> b!8005244 (= e!4715752 0)))

(declare-fun b!8005245 () Bool)

(assert (=> b!8005245 (= e!4715752 (+ 1 (size!43531 (t!390601 totalInput!1349))))))

(assert (= (and d!2387223 c!1469580) b!8005244))

(assert (= (and d!2387223 (not c!1469580)) b!8005245))

(declare-fun m!8370736 () Bool)

(assert (=> b!8005245 m!8370736))

(assert (=> b!8005126 d!2387223))

(declare-fun b!8005246 () Bool)

(declare-fun e!4715754 () List!74858)

(assert (=> b!8005246 (= e!4715754 testedSuffix!271)))

(declare-fun b!8005248 () Bool)

(declare-fun res!3165584 () Bool)

(declare-fun e!4715753 () Bool)

(assert (=> b!8005248 (=> (not res!3165584) (not e!4715753))))

(declare-fun lt!2714784 () List!74858)

(assert (=> b!8005248 (= res!3165584 (= (size!43531 lt!2714784) (+ (size!43531 testedP!353) (size!43531 testedSuffix!271))))))

(declare-fun b!8005247 () Bool)

(assert (=> b!8005247 (= e!4715754 (Cons!74734 (h!81182 testedP!353) (++!18455 (t!390601 testedP!353) testedSuffix!271)))))

(declare-fun b!8005249 () Bool)

(assert (=> b!8005249 (= e!4715753 (or (not (= testedSuffix!271 Nil!74734)) (= lt!2714784 testedP!353)))))

(declare-fun d!2387229 () Bool)

(assert (=> d!2387229 e!4715753))

(declare-fun res!3165585 () Bool)

(assert (=> d!2387229 (=> (not res!3165585) (not e!4715753))))

(assert (=> d!2387229 (= res!3165585 (= (content!15888 lt!2714784) ((_ map or) (content!15888 testedP!353) (content!15888 testedSuffix!271))))))

(assert (=> d!2387229 (= lt!2714784 e!4715754)))

(declare-fun c!1469581 () Bool)

(assert (=> d!2387229 (= c!1469581 ((_ is Nil!74734) testedP!353))))

(assert (=> d!2387229 (= (++!18455 testedP!353 testedSuffix!271) lt!2714784)))

(assert (= (and d!2387229 c!1469581) b!8005246))

(assert (= (and d!2387229 (not c!1469581)) b!8005247))

(assert (= (and d!2387229 res!3165585) b!8005248))

(assert (= (and b!8005248 res!3165584) b!8005249))

(declare-fun m!8370738 () Bool)

(assert (=> b!8005248 m!8370738))

(assert (=> b!8005248 m!8370570))

(declare-fun m!8370740 () Bool)

(assert (=> b!8005248 m!8370740))

(declare-fun m!8370742 () Bool)

(assert (=> b!8005247 m!8370742))

(declare-fun m!8370744 () Bool)

(assert (=> d!2387229 m!8370744))

(assert (=> d!2387229 m!8370634))

(declare-fun m!8370746 () Bool)

(assert (=> d!2387229 m!8370746))

(assert (=> b!8005120 d!2387229))

(declare-fun d!2387231 () Bool)

(declare-fun lostCauseFct!592 (Regex!21629) Bool)

(assert (=> d!2387231 (= (lostCause!2026 r!15422) (lostCauseFct!592 r!15422))))

(declare-fun bs!1970654 () Bool)

(assert (= bs!1970654 d!2387231))

(declare-fun m!8370748 () Bool)

(assert (=> bs!1970654 m!8370748))

(assert (=> b!8005130 d!2387231))

(declare-fun d!2387233 () Bool)

(assert (=> d!2387233 (= testedSuffix!271 lt!2714727)))

(declare-fun lt!2714791 () Unit!170674)

(declare-fun choose!60243 (List!74858 List!74858 List!74858 List!74858 List!74858) Unit!170674)

(assert (=> d!2387233 (= lt!2714791 (choose!60243 testedP!353 testedSuffix!271 testedP!353 lt!2714727 totalInput!1349))))

(assert (=> d!2387233 (isPrefix!6683 testedP!353 totalInput!1349)))

(assert (=> d!2387233 (= (lemmaSamePrefixThenSameSuffix!3046 testedP!353 testedSuffix!271 testedP!353 lt!2714727 totalInput!1349) lt!2714791)))

(declare-fun bs!1970655 () Bool)

(assert (= bs!1970655 d!2387233))

(declare-fun m!8370756 () Bool)

(assert (=> bs!1970655 m!8370756))

(assert (=> bs!1970655 m!8370536))

(assert (=> b!8005130 d!2387233))

(declare-fun d!2387239 () Bool)

(declare-fun lt!2714794 () List!74858)

(assert (=> d!2387239 (= (++!18455 testedP!353 lt!2714794) totalInput!1349)))

(declare-fun e!4715775 () List!74858)

(assert (=> d!2387239 (= lt!2714794 e!4715775)))

(declare-fun c!1469592 () Bool)

(assert (=> d!2387239 (= c!1469592 ((_ is Cons!74734) testedP!353))))

(assert (=> d!2387239 (>= (size!43531 totalInput!1349) (size!43531 testedP!353))))

(assert (=> d!2387239 (= (getSuffix!3880 totalInput!1349 testedP!353) lt!2714794)))

(declare-fun b!8005280 () Bool)

(assert (=> b!8005280 (= e!4715775 (getSuffix!3880 (tail!15844 totalInput!1349) (t!390601 testedP!353)))))

(declare-fun b!8005281 () Bool)

(assert (=> b!8005281 (= e!4715775 totalInput!1349)))

(assert (= (and d!2387239 c!1469592) b!8005280))

(assert (= (and d!2387239 (not c!1469592)) b!8005281))

(declare-fun m!8370758 () Bool)

(assert (=> d!2387239 m!8370758))

(assert (=> d!2387239 m!8370532))

(assert (=> d!2387239 m!8370570))

(assert (=> b!8005280 m!8370708))

(assert (=> b!8005280 m!8370708))

(declare-fun m!8370760 () Bool)

(assert (=> b!8005280 m!8370760))

(assert (=> b!8005130 d!2387239))

(declare-fun b!8005284 () Bool)

(declare-fun e!4715776 () Bool)

(assert (=> b!8005284 (= e!4715776 (isPrefix!6683 (tail!15844 testedP!353) (tail!15844 totalInput!1349)))))

(declare-fun b!8005282 () Bool)

(declare-fun e!4715778 () Bool)

(assert (=> b!8005282 (= e!4715778 e!4715776)))

(declare-fun res!3165599 () Bool)

(assert (=> b!8005282 (=> (not res!3165599) (not e!4715776))))

(assert (=> b!8005282 (= res!3165599 (not ((_ is Nil!74734) totalInput!1349)))))

(declare-fun d!2387241 () Bool)

(declare-fun e!4715777 () Bool)

(assert (=> d!2387241 e!4715777))

(declare-fun res!3165598 () Bool)

(assert (=> d!2387241 (=> res!3165598 e!4715777)))

(declare-fun lt!2714795 () Bool)

(assert (=> d!2387241 (= res!3165598 (not lt!2714795))))

(assert (=> d!2387241 (= lt!2714795 e!4715778)))

(declare-fun res!3165596 () Bool)

(assert (=> d!2387241 (=> res!3165596 e!4715778)))

(assert (=> d!2387241 (= res!3165596 ((_ is Nil!74734) testedP!353))))

(assert (=> d!2387241 (= (isPrefix!6683 testedP!353 totalInput!1349) lt!2714795)))

(declare-fun b!8005283 () Bool)

(declare-fun res!3165597 () Bool)

(assert (=> b!8005283 (=> (not res!3165597) (not e!4715776))))

(assert (=> b!8005283 (= res!3165597 (= (head!16321 testedP!353) (head!16321 totalInput!1349)))))

(declare-fun b!8005285 () Bool)

(assert (=> b!8005285 (= e!4715777 (>= (size!43531 totalInput!1349) (size!43531 testedP!353)))))

(assert (= (and d!2387241 (not res!3165596)) b!8005282))

(assert (= (and b!8005282 res!3165599) b!8005283))

(assert (= (and b!8005283 res!3165597) b!8005284))

(assert (= (and d!2387241 (not res!3165598)) b!8005285))

(declare-fun m!8370762 () Bool)

(assert (=> b!8005284 m!8370762))

(assert (=> b!8005284 m!8370708))

(assert (=> b!8005284 m!8370762))

(assert (=> b!8005284 m!8370708))

(declare-fun m!8370764 () Bool)

(assert (=> b!8005284 m!8370764))

(declare-fun m!8370766 () Bool)

(assert (=> b!8005283 m!8370766))

(assert (=> b!8005283 m!8370714))

(assert (=> b!8005285 m!8370532))

(assert (=> b!8005285 m!8370570))

(assert (=> b!8005119 d!2387241))

(declare-fun b!8005297 () Bool)

(declare-fun e!4715786 () Bool)

(assert (=> b!8005297 (= e!4715786 (isPrefix!6683 (tail!15844 testedP!353) (tail!15844 lt!2714732)))))

(declare-fun b!8005295 () Bool)

(declare-fun e!4715788 () Bool)

(assert (=> b!8005295 (= e!4715788 e!4715786)))

(declare-fun res!3165608 () Bool)

(assert (=> b!8005295 (=> (not res!3165608) (not e!4715786))))

(assert (=> b!8005295 (= res!3165608 (not ((_ is Nil!74734) lt!2714732)))))

(declare-fun d!2387243 () Bool)

(declare-fun e!4715787 () Bool)

(assert (=> d!2387243 e!4715787))

(declare-fun res!3165607 () Bool)

(assert (=> d!2387243 (=> res!3165607 e!4715787)))

(declare-fun lt!2714796 () Bool)

(assert (=> d!2387243 (= res!3165607 (not lt!2714796))))

(assert (=> d!2387243 (= lt!2714796 e!4715788)))

(declare-fun res!3165605 () Bool)

(assert (=> d!2387243 (=> res!3165605 e!4715788)))

(assert (=> d!2387243 (= res!3165605 ((_ is Nil!74734) testedP!353))))

(assert (=> d!2387243 (= (isPrefix!6683 testedP!353 lt!2714732) lt!2714796)))

(declare-fun b!8005296 () Bool)

(declare-fun res!3165606 () Bool)

(assert (=> b!8005296 (=> (not res!3165606) (not e!4715786))))

(assert (=> b!8005296 (= res!3165606 (= (head!16321 testedP!353) (head!16321 lt!2714732)))))

(declare-fun b!8005298 () Bool)

(assert (=> b!8005298 (= e!4715787 (>= (size!43531 lt!2714732) (size!43531 testedP!353)))))

(assert (= (and d!2387243 (not res!3165605)) b!8005295))

(assert (= (and b!8005295 res!3165608) b!8005296))

(assert (= (and b!8005296 res!3165606) b!8005297))

(assert (= (and d!2387243 (not res!3165607)) b!8005298))

(assert (=> b!8005297 m!8370762))

(declare-fun m!8370770 () Bool)

(assert (=> b!8005297 m!8370770))

(assert (=> b!8005297 m!8370762))

(assert (=> b!8005297 m!8370770))

(declare-fun m!8370776 () Bool)

(assert (=> b!8005297 m!8370776))

(assert (=> b!8005296 m!8370766))

(declare-fun m!8370778 () Bool)

(assert (=> b!8005296 m!8370778))

(declare-fun m!8370780 () Bool)

(assert (=> b!8005298 m!8370780))

(assert (=> b!8005298 m!8370570))

(assert (=> b!8005119 d!2387243))

(declare-fun d!2387247 () Bool)

(assert (=> d!2387247 (isPrefix!6683 testedP!353 (++!18455 testedP!353 testedSuffix!271))))

(declare-fun lt!2714804 () Unit!170674)

(declare-fun choose!60247 (List!74858 List!74858) Unit!170674)

(assert (=> d!2387247 (= lt!2714804 (choose!60247 testedP!353 testedSuffix!271))))

(assert (=> d!2387247 (= (lemmaConcatTwoListThenFirstIsPrefix!3914 testedP!353 testedSuffix!271) lt!2714804)))

(declare-fun bs!1970657 () Bool)

(assert (= bs!1970657 d!2387247))

(assert (=> bs!1970657 m!8370568))

(assert (=> bs!1970657 m!8370568))

(declare-fun m!8370794 () Bool)

(assert (=> bs!1970657 m!8370794))

(declare-fun m!8370796 () Bool)

(assert (=> bs!1970657 m!8370796))

(assert (=> b!8005119 d!2387247))

(declare-fun d!2387253 () Bool)

(assert (=> d!2387253 (isPrefix!6683 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714809 () Unit!170674)

(declare-fun choose!60248 (List!74858 List!74858) Unit!170674)

(assert (=> d!2387253 (= lt!2714809 (choose!60248 totalInput!1349 totalInput!1349))))

(assert (=> d!2387253 (= (lemmaIsPrefixRefl!4135 totalInput!1349 totalInput!1349) lt!2714809)))

(declare-fun bs!1970658 () Bool)

(assert (= bs!1970658 d!2387253))

(assert (=> bs!1970658 m!8370544))

(declare-fun m!8370800 () Bool)

(assert (=> bs!1970658 m!8370800))

(assert (=> b!8005123 d!2387253))

(declare-fun b!8005309 () Bool)

(declare-fun e!4715794 () Bool)

(assert (=> b!8005309 (= e!4715794 (isPrefix!6683 (tail!15844 totalInput!1349) (tail!15844 totalInput!1349)))))

(declare-fun b!8005307 () Bool)

(declare-fun e!4715796 () Bool)

(assert (=> b!8005307 (= e!4715796 e!4715794)))

(declare-fun res!3165618 () Bool)

(assert (=> b!8005307 (=> (not res!3165618) (not e!4715794))))

(assert (=> b!8005307 (= res!3165618 (not ((_ is Nil!74734) totalInput!1349)))))

(declare-fun d!2387257 () Bool)

(declare-fun e!4715795 () Bool)

(assert (=> d!2387257 e!4715795))

(declare-fun res!3165617 () Bool)

(assert (=> d!2387257 (=> res!3165617 e!4715795)))

(declare-fun lt!2714810 () Bool)

(assert (=> d!2387257 (= res!3165617 (not lt!2714810))))

(assert (=> d!2387257 (= lt!2714810 e!4715796)))

(declare-fun res!3165615 () Bool)

(assert (=> d!2387257 (=> res!3165615 e!4715796)))

(assert (=> d!2387257 (= res!3165615 ((_ is Nil!74734) totalInput!1349))))

(assert (=> d!2387257 (= (isPrefix!6683 totalInput!1349 totalInput!1349) lt!2714810)))

(declare-fun b!8005308 () Bool)

(declare-fun res!3165616 () Bool)

(assert (=> b!8005308 (=> (not res!3165616) (not e!4715794))))

(assert (=> b!8005308 (= res!3165616 (= (head!16321 totalInput!1349) (head!16321 totalInput!1349)))))

(declare-fun b!8005310 () Bool)

(assert (=> b!8005310 (= e!4715795 (>= (size!43531 totalInput!1349) (size!43531 totalInput!1349)))))

(assert (= (and d!2387257 (not res!3165615)) b!8005307))

(assert (= (and b!8005307 res!3165618) b!8005308))

(assert (= (and b!8005308 res!3165616) b!8005309))

(assert (= (and d!2387257 (not res!3165617)) b!8005310))

(assert (=> b!8005309 m!8370708))

(assert (=> b!8005309 m!8370708))

(assert (=> b!8005309 m!8370708))

(assert (=> b!8005309 m!8370708))

(declare-fun m!8370804 () Bool)

(assert (=> b!8005309 m!8370804))

(assert (=> b!8005308 m!8370714))

(assert (=> b!8005308 m!8370714))

(assert (=> b!8005310 m!8370532))

(assert (=> b!8005310 m!8370532))

(assert (=> b!8005123 d!2387257))

(declare-fun d!2387261 () Bool)

(assert (=> d!2387261 (= totalInput!1349 testedP!353)))

(declare-fun lt!2714817 () Unit!170674)

(declare-fun choose!60249 (List!74858 List!74858 List!74858) Unit!170674)

(assert (=> d!2387261 (= lt!2714817 (choose!60249 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2387261 (isPrefix!6683 totalInput!1349 totalInput!1349)))

(assert (=> d!2387261 (= (lemmaIsPrefixSameLengthThenSameList!1709 totalInput!1349 testedP!353 totalInput!1349) lt!2714817)))

(declare-fun bs!1970661 () Bool)

(assert (= bs!1970661 d!2387261))

(declare-fun m!8370808 () Bool)

(assert (=> bs!1970661 m!8370808))

(assert (=> bs!1970661 m!8370544))

(assert (=> b!8005123 d!2387261))

(declare-fun d!2387263 () Bool)

(assert (=> d!2387263 (<= (size!43531 testedP!353) (size!43531 totalInput!1349))))

(declare-fun lt!2714820 () Unit!170674)

(declare-fun choose!60250 (List!74858 List!74858) Unit!170674)

(assert (=> d!2387263 (= lt!2714820 (choose!60250 testedP!353 totalInput!1349))))

(assert (=> d!2387263 (isPrefix!6683 testedP!353 totalInput!1349)))

(assert (=> d!2387263 (= (lemmaIsPrefixThenSmallerEqSize!1184 testedP!353 totalInput!1349) lt!2714820)))

(declare-fun bs!1970662 () Bool)

(assert (= bs!1970662 d!2387263))

(assert (=> bs!1970662 m!8370570))

(assert (=> bs!1970662 m!8370532))

(declare-fun m!8370810 () Bool)

(assert (=> bs!1970662 m!8370810))

(assert (=> bs!1970662 m!8370536))

(assert (=> b!8005117 d!2387263))

(declare-fun d!2387265 () Bool)

(declare-fun lt!2714821 () Int)

(assert (=> d!2387265 (>= lt!2714821 0)))

(declare-fun e!4715809 () Int)

(assert (=> d!2387265 (= lt!2714821 e!4715809)))

(declare-fun c!1469596 () Bool)

(assert (=> d!2387265 (= c!1469596 ((_ is Nil!74734) testedP!353))))

(assert (=> d!2387265 (= (size!43531 testedP!353) lt!2714821)))

(declare-fun b!8005348 () Bool)

(assert (=> b!8005348 (= e!4715809 0)))

(declare-fun b!8005349 () Bool)

(assert (=> b!8005349 (= e!4715809 (+ 1 (size!43531 (t!390601 testedP!353))))))

(assert (= (and d!2387265 c!1469596) b!8005348))

(assert (= (and d!2387265 (not c!1469596)) b!8005349))

(declare-fun m!8370812 () Bool)

(assert (=> b!8005349 m!8370812))

(assert (=> b!8005133 d!2387265))

(declare-fun b!8005354 () Bool)

(declare-fun e!4715812 () Bool)

(declare-fun tp!2395205 () Bool)

(assert (=> b!8005354 (= e!4715812 (and tp_is_empty!53801 tp!2395205))))

(assert (=> b!8005131 (= tp!2395160 e!4715812)))

(assert (= (and b!8005131 ((_ is Cons!74734) (t!390601 testedP!353))) b!8005354))

(declare-fun b!8005368 () Bool)

(declare-fun e!4715815 () Bool)

(declare-fun tp!2395217 () Bool)

(declare-fun tp!2395219 () Bool)

(assert (=> b!8005368 (= e!4715815 (and tp!2395217 tp!2395219))))

(declare-fun b!8005365 () Bool)

(assert (=> b!8005365 (= e!4715815 tp_is_empty!53801)))

(assert (=> b!8005125 (= tp!2395161 e!4715815)))

(declare-fun b!8005367 () Bool)

(declare-fun tp!2395220 () Bool)

(assert (=> b!8005367 (= e!4715815 tp!2395220)))

(declare-fun b!8005366 () Bool)

(declare-fun tp!2395216 () Bool)

(declare-fun tp!2395218 () Bool)

(assert (=> b!8005366 (= e!4715815 (and tp!2395216 tp!2395218))))

(assert (= (and b!8005125 ((_ is ElementMatch!21629) (regOne!43770 r!15422))) b!8005365))

(assert (= (and b!8005125 ((_ is Concat!30628) (regOne!43770 r!15422))) b!8005366))

(assert (= (and b!8005125 ((_ is Star!21629) (regOne!43770 r!15422))) b!8005367))

(assert (= (and b!8005125 ((_ is Union!21629) (regOne!43770 r!15422))) b!8005368))

(declare-fun b!8005372 () Bool)

(declare-fun e!4715816 () Bool)

(declare-fun tp!2395222 () Bool)

(declare-fun tp!2395224 () Bool)

(assert (=> b!8005372 (= e!4715816 (and tp!2395222 tp!2395224))))

(declare-fun b!8005369 () Bool)

(assert (=> b!8005369 (= e!4715816 tp_is_empty!53801)))

(assert (=> b!8005125 (= tp!2395158 e!4715816)))

(declare-fun b!8005371 () Bool)

(declare-fun tp!2395225 () Bool)

(assert (=> b!8005371 (= e!4715816 tp!2395225)))

(declare-fun b!8005370 () Bool)

(declare-fun tp!2395221 () Bool)

(declare-fun tp!2395223 () Bool)

(assert (=> b!8005370 (= e!4715816 (and tp!2395221 tp!2395223))))

(assert (= (and b!8005125 ((_ is ElementMatch!21629) (regTwo!43770 r!15422))) b!8005369))

(assert (= (and b!8005125 ((_ is Concat!30628) (regTwo!43770 r!15422))) b!8005370))

(assert (= (and b!8005125 ((_ is Star!21629) (regTwo!43770 r!15422))) b!8005371))

(assert (= (and b!8005125 ((_ is Union!21629) (regTwo!43770 r!15422))) b!8005372))

(declare-fun b!8005376 () Bool)

(declare-fun e!4715817 () Bool)

(declare-fun tp!2395227 () Bool)

(declare-fun tp!2395229 () Bool)

(assert (=> b!8005376 (= e!4715817 (and tp!2395227 tp!2395229))))

(declare-fun b!8005373 () Bool)

(assert (=> b!8005373 (= e!4715817 tp_is_empty!53801)))

(assert (=> b!8005124 (= tp!2395157 e!4715817)))

(declare-fun b!8005375 () Bool)

(declare-fun tp!2395230 () Bool)

(assert (=> b!8005375 (= e!4715817 tp!2395230)))

(declare-fun b!8005374 () Bool)

(declare-fun tp!2395226 () Bool)

(declare-fun tp!2395228 () Bool)

(assert (=> b!8005374 (= e!4715817 (and tp!2395226 tp!2395228))))

(assert (= (and b!8005124 ((_ is ElementMatch!21629) (reg!21958 r!15422))) b!8005373))

(assert (= (and b!8005124 ((_ is Concat!30628) (reg!21958 r!15422))) b!8005374))

(assert (= (and b!8005124 ((_ is Star!21629) (reg!21958 r!15422))) b!8005375))

(assert (= (and b!8005124 ((_ is Union!21629) (reg!21958 r!15422))) b!8005376))

(declare-fun b!8005380 () Bool)

(declare-fun e!4715818 () Bool)

(declare-fun tp!2395232 () Bool)

(declare-fun tp!2395234 () Bool)

(assert (=> b!8005380 (= e!4715818 (and tp!2395232 tp!2395234))))

(declare-fun b!8005377 () Bool)

(assert (=> b!8005377 (= e!4715818 tp_is_empty!53801)))

(assert (=> b!8005129 (= tp!2395159 e!4715818)))

(declare-fun b!8005379 () Bool)

(declare-fun tp!2395235 () Bool)

(assert (=> b!8005379 (= e!4715818 tp!2395235)))

(declare-fun b!8005378 () Bool)

(declare-fun tp!2395231 () Bool)

(declare-fun tp!2395233 () Bool)

(assert (=> b!8005378 (= e!4715818 (and tp!2395231 tp!2395233))))

(assert (= (and b!8005129 ((_ is ElementMatch!21629) (regOne!43771 r!15422))) b!8005377))

(assert (= (and b!8005129 ((_ is Concat!30628) (regOne!43771 r!15422))) b!8005378))

(assert (= (and b!8005129 ((_ is Star!21629) (regOne!43771 r!15422))) b!8005379))

(assert (= (and b!8005129 ((_ is Union!21629) (regOne!43771 r!15422))) b!8005380))

(declare-fun b!8005384 () Bool)

(declare-fun e!4715819 () Bool)

(declare-fun tp!2395237 () Bool)

(declare-fun tp!2395239 () Bool)

(assert (=> b!8005384 (= e!4715819 (and tp!2395237 tp!2395239))))

(declare-fun b!8005381 () Bool)

(assert (=> b!8005381 (= e!4715819 tp_is_empty!53801)))

(assert (=> b!8005129 (= tp!2395156 e!4715819)))

(declare-fun b!8005383 () Bool)

(declare-fun tp!2395240 () Bool)

(assert (=> b!8005383 (= e!4715819 tp!2395240)))

(declare-fun b!8005382 () Bool)

(declare-fun tp!2395236 () Bool)

(declare-fun tp!2395238 () Bool)

(assert (=> b!8005382 (= e!4715819 (and tp!2395236 tp!2395238))))

(assert (= (and b!8005129 ((_ is ElementMatch!21629) (regTwo!43771 r!15422))) b!8005381))

(assert (= (and b!8005129 ((_ is Concat!30628) (regTwo!43771 r!15422))) b!8005382))

(assert (= (and b!8005129 ((_ is Star!21629) (regTwo!43771 r!15422))) b!8005383))

(assert (= (and b!8005129 ((_ is Union!21629) (regTwo!43771 r!15422))) b!8005384))

(declare-fun b!8005385 () Bool)

(declare-fun e!4715820 () Bool)

(declare-fun tp!2395241 () Bool)

(assert (=> b!8005385 (= e!4715820 (and tp_is_empty!53801 tp!2395241))))

(assert (=> b!8005118 (= tp!2395155 e!4715820)))

(assert (= (and b!8005118 ((_ is Cons!74734) (t!390601 totalInput!1349))) b!8005385))

(declare-fun b!8005386 () Bool)

(declare-fun e!4715821 () Bool)

(declare-fun tp!2395242 () Bool)

(assert (=> b!8005386 (= e!4715821 (and tp_is_empty!53801 tp!2395242))))

(assert (=> b!8005128 (= tp!2395162 e!4715821)))

(assert (= (and b!8005128 ((_ is Cons!74734) (t!390601 testedSuffix!271))) b!8005386))

(check-sat (not b!8005379) (not b!8005309) (not b!8005374) (not b!8005383) (not d!2387231) (not b!8005382) (not b!8005245) (not b!8005247) (not d!2387261) (not b!8005366) (not b!8005371) (not b!8005385) (not d!2387233) (not b!8005248) (not b!8005196) (not b!8005375) (not d!2387189) (not b!8005195) tp_is_empty!53801 (not d!2387239) (not b!8005368) (not b!8005185) (not bm!743697) (not b!8005367) (not b!8005283) (not b!8005372) (not d!2387185) (not d!2387247) (not b!8005370) (not d!2387217) (not b!8005228) (not bm!743696) (not b!8005237) (not b!8005238) (not b!8005386) (not b!8005349) (not b!8005380) (not b!8005284) (not b!8005378) (not b!8005298) (not b!8005285) (not b!8005280) (not d!2387253) (not d!2387221) (not b!8005227) (not d!2387263) (not d!2387181) (not b!8005376) (not b!8005186) (not b!8005229) (not b!8005308) (not b!8005296) (not b!8005384) (not b!8005297) (not b!8005310) (not d!2387175) (not b!8005156) (not b!8005354) (not d!2387229))
(check-sat)
