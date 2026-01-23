; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!753466 () Bool)

(assert start!753466)

(declare-fun b!8007689 () Bool)

(declare-fun e!4717194 () Bool)

(declare-fun tp_is_empty!53827 () Bool)

(declare-fun tp!2396047 () Bool)

(assert (=> b!8007689 (= e!4717194 (and tp_is_empty!53827 tp!2396047))))

(declare-fun b!8007690 () Bool)

(declare-fun e!4717190 () Bool)

(declare-fun e!4717191 () Bool)

(assert (=> b!8007690 (= e!4717190 e!4717191)))

(declare-fun res!3166488 () Bool)

(assert (=> b!8007690 (=> (not res!3166488) (not e!4717191))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2715742 () Int)

(assert (=> b!8007690 (= res!3166488 (= testedPSize!271 lt!2715742))))

(declare-datatypes ((C!43622 0))(
  ( (C!43623 (val!32359 Int)) )
))
(declare-datatypes ((List!74871 0))(
  ( (Nil!74747) (Cons!74747 (h!81195 C!43622) (t!390614 List!74871)) )
))
(declare-fun testedP!353 () List!74871)

(declare-fun size!43544 (List!74871) Int)

(assert (=> b!8007690 (= lt!2715742 (size!43544 testedP!353))))

(declare-fun b!8007691 () Bool)

(declare-fun e!4717193 () Bool)

(declare-fun e!4717195 () Bool)

(assert (=> b!8007691 (= e!4717193 (not e!4717195))))

(declare-fun res!3166491 () Bool)

(assert (=> b!8007691 (=> res!3166491 e!4717195)))

(declare-fun totalInput!1349 () List!74871)

(declare-fun isPrefix!6696 (List!74871 List!74871) Bool)

(assert (=> b!8007691 (= res!3166491 (not (isPrefix!6696 testedP!353 totalInput!1349)))))

(declare-fun lt!2715748 () List!74871)

(assert (=> b!8007691 (isPrefix!6696 testedP!353 lt!2715748)))

(declare-datatypes ((Unit!170726 0))(
  ( (Unit!170727) )
))
(declare-fun lt!2715749 () Unit!170726)

(declare-fun testedSuffix!271 () List!74871)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3927 (List!74871 List!74871) Unit!170726)

(assert (=> b!8007691 (= lt!2715749 (lemmaConcatTwoListThenFirstIsPrefix!3927 testedP!353 testedSuffix!271))))

(declare-fun res!3166487 () Bool)

(declare-fun e!4717198 () Bool)

(assert (=> start!753466 (=> (not res!3166487) (not e!4717198))))

(declare-datatypes ((Regex!21642 0))(
  ( (ElementMatch!21642 (c!1469982 C!43622)) (Concat!30641 (regOne!43796 Regex!21642) (regTwo!43796 Regex!21642)) (EmptyExpr!21642) (Star!21642 (reg!21971 Regex!21642)) (EmptyLang!21642) (Union!21642 (regOne!43797 Regex!21642) (regTwo!43797 Regex!21642)) )
))
(declare-fun r!15422 () Regex!21642)

(declare-fun validRegex!11946 (Regex!21642) Bool)

(assert (=> start!753466 (= res!3166487 (validRegex!11946 r!15422))))

(assert (=> start!753466 e!4717198))

(declare-fun e!4717196 () Bool)

(assert (=> start!753466 e!4717196))

(assert (=> start!753466 true))

(declare-fun e!4717197 () Bool)

(assert (=> start!753466 e!4717197))

(declare-fun e!4717192 () Bool)

(assert (=> start!753466 e!4717192))

(assert (=> start!753466 e!4717194))

(declare-fun b!8007692 () Bool)

(declare-fun tp!2396050 () Bool)

(assert (=> b!8007692 (= e!4717196 (and tp_is_empty!53827 tp!2396050))))

(declare-fun b!8007693 () Bool)

(declare-fun e!4717189 () Unit!170726)

(declare-fun Unit!170728 () Unit!170726)

(assert (=> b!8007693 (= e!4717189 Unit!170728)))

(declare-fun b!8007694 () Bool)

(assert (=> b!8007694 (= e!4717192 tp_is_empty!53827)))

(declare-fun b!8007695 () Bool)

(assert (=> b!8007695 (= e!4717198 e!4717190)))

(declare-fun res!3166485 () Bool)

(assert (=> b!8007695 (=> (not res!3166485) (not e!4717190))))

(assert (=> b!8007695 (= res!3166485 (= lt!2715748 totalInput!1349))))

(declare-fun ++!18468 (List!74871 List!74871) List!74871)

(assert (=> b!8007695 (= lt!2715748 (++!18468 testedP!353 testedSuffix!271))))

(declare-fun b!8007696 () Bool)

(assert (=> b!8007696 (= e!4717191 e!4717193)))

(declare-fun res!3166490 () Bool)

(assert (=> b!8007696 (=> (not res!3166490) (not e!4717193))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2715750 () Int)

(assert (=> b!8007696 (= res!3166490 (= totalInputSize!629 lt!2715750))))

(assert (=> b!8007696 (= lt!2715750 (size!43544 totalInput!1349))))

(declare-fun b!8007697 () Bool)

(declare-fun e!4717199 () Bool)

(assert (=> b!8007697 (= e!4717195 e!4717199)))

(declare-fun res!3166484 () Bool)

(assert (=> b!8007697 (=> res!3166484 e!4717199)))

(declare-fun lostCause!2039 (Regex!21642) Bool)

(assert (=> b!8007697 (= res!3166484 (lostCause!2039 r!15422))))

(declare-fun lt!2715745 () List!74871)

(assert (=> b!8007697 (and (= testedSuffix!271 lt!2715745) (= lt!2715745 testedSuffix!271))))

(declare-fun lt!2715747 () Unit!170726)

(declare-fun lemmaSamePrefixThenSameSuffix!3059 (List!74871 List!74871 List!74871 List!74871 List!74871) Unit!170726)

(assert (=> b!8007697 (= lt!2715747 (lemmaSamePrefixThenSameSuffix!3059 testedP!353 testedSuffix!271 testedP!353 lt!2715745 totalInput!1349))))

(declare-fun getSuffix!3893 (List!74871 List!74871) List!74871)

(assert (=> b!8007697 (= lt!2715745 (getSuffix!3893 totalInput!1349 testedP!353))))

(declare-fun b!8007698 () Bool)

(declare-fun tp!2396048 () Bool)

(declare-fun tp!2396049 () Bool)

(assert (=> b!8007698 (= e!4717192 (and tp!2396048 tp!2396049))))

(declare-fun b!8007699 () Bool)

(declare-fun e!4717200 () Bool)

(assert (=> b!8007699 (= e!4717199 e!4717200)))

(declare-fun res!3166483 () Bool)

(assert (=> b!8007699 (=> res!3166483 e!4717200)))

(assert (=> b!8007699 (= res!3166483 (>= lt!2715742 lt!2715750))))

(declare-fun lt!2715739 () Unit!170726)

(assert (=> b!8007699 (= lt!2715739 e!4717189)))

(declare-fun c!1469981 () Bool)

(assert (=> b!8007699 (= c!1469981 (= lt!2715742 lt!2715750))))

(assert (=> b!8007699 (<= lt!2715742 lt!2715750)))

(declare-fun lt!2715740 () Unit!170726)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1197 (List!74871 List!74871) Unit!170726)

(assert (=> b!8007699 (= lt!2715740 (lemmaIsPrefixThenSmallerEqSize!1197 testedP!353 totalInput!1349))))

(declare-fun b!8007700 () Bool)

(declare-fun res!3166489 () Bool)

(assert (=> b!8007700 (=> res!3166489 e!4717199)))

(assert (=> b!8007700 (= res!3166489 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8007701 () Bool)

(declare-fun e!4717188 () Bool)

(assert (=> b!8007701 (= e!4717200 e!4717188)))

(declare-fun res!3166486 () Bool)

(assert (=> b!8007701 (=> res!3166486 e!4717188)))

(declare-fun nullable!9700 (Regex!21642) Bool)

(assert (=> b!8007701 (= res!3166486 (nullable!9700 r!15422))))

(declare-fun lt!2715743 () List!74871)

(declare-fun lt!2715744 () List!74871)

(assert (=> b!8007701 (= (++!18468 lt!2715743 lt!2715744) totalInput!1349)))

(declare-fun lt!2715738 () Unit!170726)

(declare-fun lt!2715736 () C!43622)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3577 (List!74871 C!43622 List!74871 List!74871) Unit!170726)

(assert (=> b!8007701 (= lt!2715738 (lemmaMoveElementToOtherListKeepsConcatEq!3577 testedP!353 lt!2715736 lt!2715744 totalInput!1349))))

(declare-fun tail!15857 (List!74871) List!74871)

(assert (=> b!8007701 (= lt!2715744 (tail!15857 testedSuffix!271))))

(declare-fun head!16334 (List!74871) C!43622)

(assert (=> b!8007701 (isPrefix!6696 (++!18468 testedP!353 (Cons!74747 (head!16334 lt!2715745) Nil!74747)) totalInput!1349)))

(declare-fun lt!2715741 () Unit!170726)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1393 (List!74871 List!74871) Unit!170726)

(assert (=> b!8007701 (= lt!2715741 (lemmaAddHeadSuffixToPrefixStillPrefix!1393 testedP!353 totalInput!1349))))

(assert (=> b!8007701 (= lt!2715743 (++!18468 testedP!353 (Cons!74747 lt!2715736 Nil!74747)))))

(assert (=> b!8007701 (= lt!2715736 (head!16334 testedSuffix!271))))

(declare-fun b!8007702 () Bool)

(declare-fun Unit!170729 () Unit!170726)

(assert (=> b!8007702 (= e!4717189 Unit!170729)))

(declare-fun lt!2715746 () Unit!170726)

(declare-fun lemmaIsPrefixRefl!4148 (List!74871 List!74871) Unit!170726)

(assert (=> b!8007702 (= lt!2715746 (lemmaIsPrefixRefl!4148 totalInput!1349 totalInput!1349))))

(assert (=> b!8007702 (isPrefix!6696 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715737 () Unit!170726)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1722 (List!74871 List!74871 List!74871) Unit!170726)

(assert (=> b!8007702 (= lt!2715737 (lemmaIsPrefixSameLengthThenSameList!1722 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8007702 false))

(declare-fun b!8007703 () Bool)

(declare-fun tp!2396044 () Bool)

(assert (=> b!8007703 (= e!4717197 (and tp_is_empty!53827 tp!2396044))))

(declare-fun b!8007704 () Bool)

(declare-fun tp!2396045 () Bool)

(assert (=> b!8007704 (= e!4717192 tp!2396045)))

(declare-fun b!8007705 () Bool)

(assert (=> b!8007705 (= e!4717188 (not (= testedSuffix!271 Nil!74747)))))

(declare-fun b!8007706 () Bool)

(declare-fun tp!2396043 () Bool)

(declare-fun tp!2396046 () Bool)

(assert (=> b!8007706 (= e!4717192 (and tp!2396043 tp!2396046))))

(assert (= (and start!753466 res!3166487) b!8007695))

(assert (= (and b!8007695 res!3166485) b!8007690))

(assert (= (and b!8007690 res!3166488) b!8007696))

(assert (= (and b!8007696 res!3166490) b!8007691))

(assert (= (and b!8007691 (not res!3166491)) b!8007697))

(assert (= (and b!8007697 (not res!3166484)) b!8007700))

(assert (= (and b!8007700 (not res!3166489)) b!8007699))

(assert (= (and b!8007699 c!1469981) b!8007702))

(assert (= (and b!8007699 (not c!1469981)) b!8007693))

(assert (= (and b!8007699 (not res!3166483)) b!8007701))

(assert (= (and b!8007701 (not res!3166486)) b!8007705))

(assert (= (and start!753466 (is-Cons!74747 totalInput!1349)) b!8007692))

(assert (= (and start!753466 (is-Cons!74747 testedSuffix!271)) b!8007703))

(assert (= (and start!753466 (is-ElementMatch!21642 r!15422)) b!8007694))

(assert (= (and start!753466 (is-Concat!30641 r!15422)) b!8007706))

(assert (= (and start!753466 (is-Star!21642 r!15422)) b!8007704))

(assert (= (and start!753466 (is-Union!21642 r!15422)) b!8007698))

(assert (= (and start!753466 (is-Cons!74747 testedP!353)) b!8007689))

(declare-fun m!8372710 () Bool)

(assert (=> b!8007701 m!8372710))

(declare-fun m!8372712 () Bool)

(assert (=> b!8007701 m!8372712))

(declare-fun m!8372714 () Bool)

(assert (=> b!8007701 m!8372714))

(assert (=> b!8007701 m!8372712))

(declare-fun m!8372716 () Bool)

(assert (=> b!8007701 m!8372716))

(declare-fun m!8372718 () Bool)

(assert (=> b!8007701 m!8372718))

(declare-fun m!8372720 () Bool)

(assert (=> b!8007701 m!8372720))

(declare-fun m!8372722 () Bool)

(assert (=> b!8007701 m!8372722))

(declare-fun m!8372724 () Bool)

(assert (=> b!8007701 m!8372724))

(declare-fun m!8372726 () Bool)

(assert (=> b!8007701 m!8372726))

(declare-fun m!8372728 () Bool)

(assert (=> b!8007701 m!8372728))

(declare-fun m!8372730 () Bool)

(assert (=> b!8007696 m!8372730))

(declare-fun m!8372732 () Bool)

(assert (=> b!8007695 m!8372732))

(declare-fun m!8372734 () Bool)

(assert (=> b!8007691 m!8372734))

(declare-fun m!8372736 () Bool)

(assert (=> b!8007691 m!8372736))

(declare-fun m!8372738 () Bool)

(assert (=> b!8007691 m!8372738))

(declare-fun m!8372740 () Bool)

(assert (=> b!8007690 m!8372740))

(declare-fun m!8372742 () Bool)

(assert (=> b!8007699 m!8372742))

(declare-fun m!8372744 () Bool)

(assert (=> start!753466 m!8372744))

(declare-fun m!8372746 () Bool)

(assert (=> b!8007702 m!8372746))

(declare-fun m!8372748 () Bool)

(assert (=> b!8007702 m!8372748))

(declare-fun m!8372750 () Bool)

(assert (=> b!8007702 m!8372750))

(declare-fun m!8372752 () Bool)

(assert (=> b!8007697 m!8372752))

(declare-fun m!8372754 () Bool)

(assert (=> b!8007697 m!8372754))

(declare-fun m!8372756 () Bool)

(assert (=> b!8007697 m!8372756))

(push 1)

(assert (not b!8007699))

(assert (not b!8007695))

(assert (not b!8007689))

(assert tp_is_empty!53827)

(assert (not b!8007691))

(assert (not b!8007704))

(assert (not b!8007701))

(assert (not b!8007703))

(assert (not b!8007706))

(assert (not b!8007696))

(assert (not start!753466))

(assert (not b!8007702))

(assert (not b!8007697))

(assert (not b!8007690))

(assert (not b!8007692))

(assert (not b!8007698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!743922 () Bool)

(declare-fun call!743927 () Bool)

(declare-fun c!1469992 () Bool)

(assert (=> bm!743922 (= call!743927 (validRegex!11946 (ite c!1469992 (regTwo!43797 r!15422) (regTwo!43796 r!15422))))))

(declare-fun b!8007792 () Bool)

(declare-fun e!4717266 () Bool)

(declare-fun e!4717267 () Bool)

(assert (=> b!8007792 (= e!4717266 e!4717267)))

(declare-fun res!3166542 () Bool)

(assert (=> b!8007792 (=> (not res!3166542) (not e!4717267))))

(declare-fun call!743929 () Bool)

(assert (=> b!8007792 (= res!3166542 call!743929)))

(declare-fun b!8007793 () Bool)

(declare-fun res!3166544 () Bool)

(declare-fun e!4717263 () Bool)

(assert (=> b!8007793 (=> (not res!3166544) (not e!4717263))))

(assert (=> b!8007793 (= res!3166544 call!743929)))

(declare-fun e!4717269 () Bool)

(assert (=> b!8007793 (= e!4717269 e!4717263)))

(declare-fun b!8007794 () Bool)

(declare-fun e!4717265 () Bool)

(declare-fun e!4717264 () Bool)

(assert (=> b!8007794 (= e!4717265 e!4717264)))

(declare-fun res!3166543 () Bool)

(assert (=> b!8007794 (= res!3166543 (not (nullable!9700 (reg!21971 r!15422))))))

(assert (=> b!8007794 (=> (not res!3166543) (not e!4717264))))

(declare-fun b!8007795 () Bool)

(assert (=> b!8007795 (= e!4717267 call!743927)))

(declare-fun bm!743923 () Bool)

(declare-fun call!743928 () Bool)

(assert (=> bm!743923 (= call!743929 call!743928)))

(declare-fun b!8007796 () Bool)

(assert (=> b!8007796 (= e!4717265 e!4717269)))

(assert (=> b!8007796 (= c!1469992 (is-Union!21642 r!15422))))

(declare-fun bm!743924 () Bool)

(declare-fun c!1469991 () Bool)

(assert (=> bm!743924 (= call!743928 (validRegex!11946 (ite c!1469991 (reg!21971 r!15422) (ite c!1469992 (regOne!43797 r!15422) (regOne!43796 r!15422)))))))

(declare-fun b!8007797 () Bool)

(assert (=> b!8007797 (= e!4717264 call!743928)))

(declare-fun d!2387854 () Bool)

(declare-fun res!3166545 () Bool)

(declare-fun e!4717268 () Bool)

(assert (=> d!2387854 (=> res!3166545 e!4717268)))

(assert (=> d!2387854 (= res!3166545 (is-ElementMatch!21642 r!15422))))

(assert (=> d!2387854 (= (validRegex!11946 r!15422) e!4717268)))

(declare-fun b!8007791 () Bool)

(assert (=> b!8007791 (= e!4717268 e!4717265)))

(assert (=> b!8007791 (= c!1469991 (is-Star!21642 r!15422))))

(declare-fun b!8007798 () Bool)

(assert (=> b!8007798 (= e!4717263 call!743927)))

(declare-fun b!8007799 () Bool)

(declare-fun res!3166541 () Bool)

(assert (=> b!8007799 (=> res!3166541 e!4717266)))

(assert (=> b!8007799 (= res!3166541 (not (is-Concat!30641 r!15422)))))

(assert (=> b!8007799 (= e!4717269 e!4717266)))

(assert (= (and d!2387854 (not res!3166545)) b!8007791))

(assert (= (and b!8007791 c!1469991) b!8007794))

(assert (= (and b!8007791 (not c!1469991)) b!8007796))

(assert (= (and b!8007794 res!3166543) b!8007797))

(assert (= (and b!8007796 c!1469992) b!8007793))

(assert (= (and b!8007796 (not c!1469992)) b!8007799))

(assert (= (and b!8007793 res!3166544) b!8007798))

(assert (= (and b!8007799 (not res!3166541)) b!8007792))

(assert (= (and b!8007792 res!3166542) b!8007795))

(assert (= (or b!8007798 b!8007795) bm!743922))

(assert (= (or b!8007793 b!8007792) bm!743923))

(assert (= (or b!8007797 bm!743923) bm!743924))

(declare-fun m!8372816 () Bool)

(assert (=> bm!743922 m!8372816))

(declare-fun m!8372818 () Bool)

(assert (=> b!8007794 m!8372818))

(declare-fun m!8372820 () Bool)

(assert (=> bm!743924 m!8372820))

(assert (=> start!753466 d!2387854))

(declare-fun d!2387860 () Bool)

(declare-fun lostCauseFct!598 (Regex!21642) Bool)

(assert (=> d!2387860 (= (lostCause!2039 r!15422) (lostCauseFct!598 r!15422))))

(declare-fun bs!1970749 () Bool)

(assert (= bs!1970749 d!2387860))

(declare-fun m!8372826 () Bool)

(assert (=> bs!1970749 m!8372826))

(assert (=> b!8007697 d!2387860))

(declare-fun d!2387866 () Bool)

(assert (=> d!2387866 (= testedSuffix!271 lt!2715745)))

(declare-fun lt!2715813 () Unit!170726)

(declare-fun choose!60289 (List!74871 List!74871 List!74871 List!74871 List!74871) Unit!170726)

(assert (=> d!2387866 (= lt!2715813 (choose!60289 testedP!353 testedSuffix!271 testedP!353 lt!2715745 totalInput!1349))))

(assert (=> d!2387866 (isPrefix!6696 testedP!353 totalInput!1349)))

(assert (=> d!2387866 (= (lemmaSamePrefixThenSameSuffix!3059 testedP!353 testedSuffix!271 testedP!353 lt!2715745 totalInput!1349) lt!2715813)))

(declare-fun bs!1970750 () Bool)

(assert (= bs!1970750 d!2387866))

(declare-fun m!8372828 () Bool)

(assert (=> bs!1970750 m!8372828))

(assert (=> bs!1970750 m!8372734))

(assert (=> b!8007697 d!2387866))

(declare-fun d!2387868 () Bool)

(declare-fun lt!2715821 () List!74871)

(assert (=> d!2387868 (= (++!18468 testedP!353 lt!2715821) totalInput!1349)))

(declare-fun e!4717282 () List!74871)

(assert (=> d!2387868 (= lt!2715821 e!4717282)))

(declare-fun c!1469999 () Bool)

(assert (=> d!2387868 (= c!1469999 (is-Cons!74747 testedP!353))))

(assert (=> d!2387868 (>= (size!43544 totalInput!1349) (size!43544 testedP!353))))

(assert (=> d!2387868 (= (getSuffix!3893 totalInput!1349 testedP!353) lt!2715821)))

(declare-fun b!8007820 () Bool)

(assert (=> b!8007820 (= e!4717282 (getSuffix!3893 (tail!15857 totalInput!1349) (t!390614 testedP!353)))))

(declare-fun b!8007821 () Bool)

(assert (=> b!8007821 (= e!4717282 totalInput!1349)))

(assert (= (and d!2387868 c!1469999) b!8007820))

(assert (= (and d!2387868 (not c!1469999)) b!8007821))

(declare-fun m!8372846 () Bool)

(assert (=> d!2387868 m!8372846))

(assert (=> d!2387868 m!8372730))

(assert (=> d!2387868 m!8372740))

(declare-fun m!8372848 () Bool)

(assert (=> b!8007820 m!8372848))

(assert (=> b!8007820 m!8372848))

(declare-fun m!8372850 () Bool)

(assert (=> b!8007820 m!8372850))

(assert (=> b!8007697 d!2387868))

(declare-fun d!2387876 () Bool)

(assert (=> d!2387876 (<= (size!43544 testedP!353) (size!43544 totalInput!1349))))

(declare-fun lt!2715825 () Unit!170726)

(declare-fun choose!60290 (List!74871 List!74871) Unit!170726)

(assert (=> d!2387876 (= lt!2715825 (choose!60290 testedP!353 totalInput!1349))))

(assert (=> d!2387876 (isPrefix!6696 testedP!353 totalInput!1349)))

(assert (=> d!2387876 (= (lemmaIsPrefixThenSmallerEqSize!1197 testedP!353 totalInput!1349) lt!2715825)))

(declare-fun bs!1970753 () Bool)

(assert (= bs!1970753 d!2387876))

(assert (=> bs!1970753 m!8372740))

(assert (=> bs!1970753 m!8372730))

(declare-fun m!8372856 () Bool)

(assert (=> bs!1970753 m!8372856))

(assert (=> bs!1970753 m!8372734))

(assert (=> b!8007699 d!2387876))

(declare-fun d!2387880 () Bool)

(declare-fun lt!2715831 () Int)

(assert (=> d!2387880 (>= lt!2715831 0)))

(declare-fun e!4717285 () Int)

(assert (=> d!2387880 (= lt!2715831 e!4717285)))

(declare-fun c!1470002 () Bool)

(assert (=> d!2387880 (= c!1470002 (is-Nil!74747 testedP!353))))

(assert (=> d!2387880 (= (size!43544 testedP!353) lt!2715831)))

(declare-fun b!8007826 () Bool)

(assert (=> b!8007826 (= e!4717285 0)))

(declare-fun b!8007827 () Bool)

(assert (=> b!8007827 (= e!4717285 (+ 1 (size!43544 (t!390614 testedP!353))))))

(assert (= (and d!2387880 c!1470002) b!8007826))

(assert (= (and d!2387880 (not c!1470002)) b!8007827))

(declare-fun m!8372862 () Bool)

(assert (=> b!8007827 m!8372862))

(assert (=> b!8007690 d!2387880))

(declare-fun d!2387882 () Bool)

(declare-fun e!4717295 () Bool)

(assert (=> d!2387882 e!4717295))

(declare-fun res!3166563 () Bool)

(assert (=> d!2387882 (=> (not res!3166563) (not e!4717295))))

(declare-fun lt!2715836 () List!74871)

(declare-fun content!15895 (List!74871) (Set C!43622))

(assert (=> d!2387882 (= res!3166563 (= (content!15895 lt!2715836) (set.union (content!15895 testedP!353) (content!15895 testedSuffix!271))))))

(declare-fun e!4717294 () List!74871)

(assert (=> d!2387882 (= lt!2715836 e!4717294)))

(declare-fun c!1470007 () Bool)

(assert (=> d!2387882 (= c!1470007 (is-Nil!74747 testedP!353))))

(assert (=> d!2387882 (= (++!18468 testedP!353 testedSuffix!271) lt!2715836)))

(declare-fun b!8007847 () Bool)

(assert (=> b!8007847 (= e!4717295 (or (not (= testedSuffix!271 Nil!74747)) (= lt!2715836 testedP!353)))))

(declare-fun b!8007844 () Bool)

(assert (=> b!8007844 (= e!4717294 testedSuffix!271)))

(declare-fun b!8007846 () Bool)

(declare-fun res!3166562 () Bool)

(assert (=> b!8007846 (=> (not res!3166562) (not e!4717295))))

(assert (=> b!8007846 (= res!3166562 (= (size!43544 lt!2715836) (+ (size!43544 testedP!353) (size!43544 testedSuffix!271))))))

(declare-fun b!8007845 () Bool)

(assert (=> b!8007845 (= e!4717294 (Cons!74747 (h!81195 testedP!353) (++!18468 (t!390614 testedP!353) testedSuffix!271)))))

(assert (= (and d!2387882 c!1470007) b!8007844))

(assert (= (and d!2387882 (not c!1470007)) b!8007845))

(assert (= (and d!2387882 res!3166563) b!8007846))

(assert (= (and b!8007846 res!3166562) b!8007847))

(declare-fun m!8372868 () Bool)

(assert (=> d!2387882 m!8372868))

(declare-fun m!8372870 () Bool)

(assert (=> d!2387882 m!8372870))

(declare-fun m!8372872 () Bool)

(assert (=> d!2387882 m!8372872))

(declare-fun m!8372874 () Bool)

(assert (=> b!8007846 m!8372874))

(assert (=> b!8007846 m!8372740))

(declare-fun m!8372876 () Bool)

(assert (=> b!8007846 m!8372876))

(declare-fun m!8372878 () Bool)

(assert (=> b!8007845 m!8372878))

(assert (=> b!8007695 d!2387882))

(declare-fun d!2387886 () Bool)

(assert (=> d!2387886 (isPrefix!6696 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715840 () Unit!170726)

(declare-fun choose!60291 (List!74871 List!74871) Unit!170726)

(assert (=> d!2387886 (= lt!2715840 (choose!60291 totalInput!1349 totalInput!1349))))

(assert (=> d!2387886 (= (lemmaIsPrefixRefl!4148 totalInput!1349 totalInput!1349) lt!2715840)))

(declare-fun bs!1970755 () Bool)

(assert (= bs!1970755 d!2387886))

(assert (=> bs!1970755 m!8372748))

(declare-fun m!8372892 () Bool)

(assert (=> bs!1970755 m!8372892))

(assert (=> b!8007702 d!2387886))

(declare-fun b!8007873 () Bool)

(declare-fun res!3166584 () Bool)

(declare-fun e!4717311 () Bool)

(assert (=> b!8007873 (=> (not res!3166584) (not e!4717311))))

(assert (=> b!8007873 (= res!3166584 (= (head!16334 totalInput!1349) (head!16334 totalInput!1349)))))

(declare-fun d!2387890 () Bool)

(declare-fun e!4717313 () Bool)

(assert (=> d!2387890 e!4717313))

(declare-fun res!3166585 () Bool)

(assert (=> d!2387890 (=> res!3166585 e!4717313)))

(declare-fun lt!2715846 () Bool)

(assert (=> d!2387890 (= res!3166585 (not lt!2715846))))

(declare-fun e!4717312 () Bool)

(assert (=> d!2387890 (= lt!2715846 e!4717312)))

(declare-fun res!3166583 () Bool)

(assert (=> d!2387890 (=> res!3166583 e!4717312)))

(assert (=> d!2387890 (= res!3166583 (is-Nil!74747 totalInput!1349))))

(assert (=> d!2387890 (= (isPrefix!6696 totalInput!1349 totalInput!1349) lt!2715846)))

(declare-fun b!8007872 () Bool)

(assert (=> b!8007872 (= e!4717312 e!4717311)))

(declare-fun res!3166582 () Bool)

(assert (=> b!8007872 (=> (not res!3166582) (not e!4717311))))

(assert (=> b!8007872 (= res!3166582 (not (is-Nil!74747 totalInput!1349)))))

(declare-fun b!8007875 () Bool)

(assert (=> b!8007875 (= e!4717313 (>= (size!43544 totalInput!1349) (size!43544 totalInput!1349)))))

(declare-fun b!8007874 () Bool)

(assert (=> b!8007874 (= e!4717311 (isPrefix!6696 (tail!15857 totalInput!1349) (tail!15857 totalInput!1349)))))

(assert (= (and d!2387890 (not res!3166583)) b!8007872))

(assert (= (and b!8007872 res!3166582) b!8007873))

(assert (= (and b!8007873 res!3166584) b!8007874))

(assert (= (and d!2387890 (not res!3166585)) b!8007875))

(declare-fun m!8372914 () Bool)

(assert (=> b!8007873 m!8372914))

(assert (=> b!8007873 m!8372914))

(assert (=> b!8007875 m!8372730))

(assert (=> b!8007875 m!8372730))

(assert (=> b!8007874 m!8372848))

(assert (=> b!8007874 m!8372848))

(assert (=> b!8007874 m!8372848))

(assert (=> b!8007874 m!8372848))

(declare-fun m!8372918 () Bool)

(assert (=> b!8007874 m!8372918))

(assert (=> b!8007702 d!2387890))

(declare-fun d!2387900 () Bool)

(assert (=> d!2387900 (= totalInput!1349 testedP!353)))

(declare-fun lt!2715849 () Unit!170726)

(declare-fun choose!60292 (List!74871 List!74871 List!74871) Unit!170726)

(assert (=> d!2387900 (= lt!2715849 (choose!60292 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2387900 (isPrefix!6696 totalInput!1349 totalInput!1349)))

(assert (=> d!2387900 (= (lemmaIsPrefixSameLengthThenSameList!1722 totalInput!1349 testedP!353 totalInput!1349) lt!2715849)))

(declare-fun bs!1970757 () Bool)

(assert (= bs!1970757 d!2387900))

(declare-fun m!8372932 () Bool)

(assert (=> bs!1970757 m!8372932))

(assert (=> bs!1970757 m!8372748))

(assert (=> b!8007702 d!2387900))

(declare-fun b!8007877 () Bool)

(declare-fun res!3166588 () Bool)

(declare-fun e!4717314 () Bool)

(assert (=> b!8007877 (=> (not res!3166588) (not e!4717314))))

(assert (=> b!8007877 (= res!3166588 (= (head!16334 testedP!353) (head!16334 totalInput!1349)))))

(declare-fun d!2387908 () Bool)

(declare-fun e!4717316 () Bool)

(assert (=> d!2387908 e!4717316))

(declare-fun res!3166589 () Bool)

(assert (=> d!2387908 (=> res!3166589 e!4717316)))

(declare-fun lt!2715850 () Bool)

(assert (=> d!2387908 (= res!3166589 (not lt!2715850))))

(declare-fun e!4717315 () Bool)

(assert (=> d!2387908 (= lt!2715850 e!4717315)))

(declare-fun res!3166587 () Bool)

(assert (=> d!2387908 (=> res!3166587 e!4717315)))

(assert (=> d!2387908 (= res!3166587 (is-Nil!74747 testedP!353))))

(assert (=> d!2387908 (= (isPrefix!6696 testedP!353 totalInput!1349) lt!2715850)))

(declare-fun b!8007876 () Bool)

(assert (=> b!8007876 (= e!4717315 e!4717314)))

(declare-fun res!3166586 () Bool)

(assert (=> b!8007876 (=> (not res!3166586) (not e!4717314))))

(assert (=> b!8007876 (= res!3166586 (not (is-Nil!74747 totalInput!1349)))))

(declare-fun b!8007879 () Bool)

(assert (=> b!8007879 (= e!4717316 (>= (size!43544 totalInput!1349) (size!43544 testedP!353)))))

(declare-fun b!8007878 () Bool)

(assert (=> b!8007878 (= e!4717314 (isPrefix!6696 (tail!15857 testedP!353) (tail!15857 totalInput!1349)))))

(assert (= (and d!2387908 (not res!3166587)) b!8007876))

(assert (= (and b!8007876 res!3166586) b!8007877))

(assert (= (and b!8007877 res!3166588) b!8007878))

(assert (= (and d!2387908 (not res!3166589)) b!8007879))

(declare-fun m!8372934 () Bool)

(assert (=> b!8007877 m!8372934))

(assert (=> b!8007877 m!8372914))

(assert (=> b!8007879 m!8372730))

(assert (=> b!8007879 m!8372740))

(declare-fun m!8372936 () Bool)

(assert (=> b!8007878 m!8372936))

(assert (=> b!8007878 m!8372848))

(assert (=> b!8007878 m!8372936))

(assert (=> b!8007878 m!8372848))

(declare-fun m!8372938 () Bool)

(assert (=> b!8007878 m!8372938))

(assert (=> b!8007691 d!2387908))

(declare-fun b!8007881 () Bool)

(declare-fun res!3166592 () Bool)

(declare-fun e!4717317 () Bool)

(assert (=> b!8007881 (=> (not res!3166592) (not e!4717317))))

(assert (=> b!8007881 (= res!3166592 (= (head!16334 testedP!353) (head!16334 lt!2715748)))))

(declare-fun d!2387910 () Bool)

(declare-fun e!4717319 () Bool)

(assert (=> d!2387910 e!4717319))

(declare-fun res!3166593 () Bool)

(assert (=> d!2387910 (=> res!3166593 e!4717319)))

(declare-fun lt!2715851 () Bool)

(assert (=> d!2387910 (= res!3166593 (not lt!2715851))))

(declare-fun e!4717318 () Bool)

(assert (=> d!2387910 (= lt!2715851 e!4717318)))

(declare-fun res!3166591 () Bool)

(assert (=> d!2387910 (=> res!3166591 e!4717318)))

(assert (=> d!2387910 (= res!3166591 (is-Nil!74747 testedP!353))))

(assert (=> d!2387910 (= (isPrefix!6696 testedP!353 lt!2715748) lt!2715851)))

(declare-fun b!8007880 () Bool)

(assert (=> b!8007880 (= e!4717318 e!4717317)))

(declare-fun res!3166590 () Bool)

(assert (=> b!8007880 (=> (not res!3166590) (not e!4717317))))

(assert (=> b!8007880 (= res!3166590 (not (is-Nil!74747 lt!2715748)))))

(declare-fun b!8007883 () Bool)

(assert (=> b!8007883 (= e!4717319 (>= (size!43544 lt!2715748) (size!43544 testedP!353)))))

(declare-fun b!8007882 () Bool)

(assert (=> b!8007882 (= e!4717317 (isPrefix!6696 (tail!15857 testedP!353) (tail!15857 lt!2715748)))))

(assert (= (and d!2387910 (not res!3166591)) b!8007880))

(assert (= (and b!8007880 res!3166590) b!8007881))

(assert (= (and b!8007881 res!3166592) b!8007882))

(assert (= (and d!2387910 (not res!3166593)) b!8007883))

(assert (=> b!8007881 m!8372934))

(declare-fun m!8372940 () Bool)

(assert (=> b!8007881 m!8372940))

(declare-fun m!8372942 () Bool)

(assert (=> b!8007883 m!8372942))

(assert (=> b!8007883 m!8372740))

(assert (=> b!8007882 m!8372936))

(declare-fun m!8372944 () Bool)

(assert (=> b!8007882 m!8372944))

(assert (=> b!8007882 m!8372936))

(assert (=> b!8007882 m!8372944))

(declare-fun m!8372946 () Bool)

(assert (=> b!8007882 m!8372946))

(assert (=> b!8007691 d!2387910))

(declare-fun d!2387912 () Bool)

(assert (=> d!2387912 (isPrefix!6696 testedP!353 (++!18468 testedP!353 testedSuffix!271))))

(declare-fun lt!2715854 () Unit!170726)

(declare-fun choose!60295 (List!74871 List!74871) Unit!170726)

(assert (=> d!2387912 (= lt!2715854 (choose!60295 testedP!353 testedSuffix!271))))

(assert (=> d!2387912 (= (lemmaConcatTwoListThenFirstIsPrefix!3927 testedP!353 testedSuffix!271) lt!2715854)))

(declare-fun bs!1970758 () Bool)

(assert (= bs!1970758 d!2387912))

(assert (=> bs!1970758 m!8372732))

(assert (=> bs!1970758 m!8372732))

(declare-fun m!8372948 () Bool)

(assert (=> bs!1970758 m!8372948))

(declare-fun m!8372950 () Bool)

(assert (=> bs!1970758 m!8372950))

(assert (=> b!8007691 d!2387912))

(declare-fun d!2387914 () Bool)

(declare-fun lt!2715855 () Int)

(assert (=> d!2387914 (>= lt!2715855 0)))

(declare-fun e!4717320 () Int)

(assert (=> d!2387914 (= lt!2715855 e!4717320)))

(declare-fun c!1470011 () Bool)

(assert (=> d!2387914 (= c!1470011 (is-Nil!74747 totalInput!1349))))

(assert (=> d!2387914 (= (size!43544 totalInput!1349) lt!2715855)))

(declare-fun b!8007884 () Bool)

(assert (=> b!8007884 (= e!4717320 0)))

(declare-fun b!8007885 () Bool)

(assert (=> b!8007885 (= e!4717320 (+ 1 (size!43544 (t!390614 totalInput!1349))))))

(assert (= (and d!2387914 c!1470011) b!8007884))

(assert (= (and d!2387914 (not c!1470011)) b!8007885))

(declare-fun m!8372952 () Bool)

(assert (=> b!8007885 m!8372952))

(assert (=> b!8007696 d!2387914))

(declare-fun d!2387916 () Bool)

(assert (=> d!2387916 (isPrefix!6696 (++!18468 testedP!353 (Cons!74747 (head!16334 (getSuffix!3893 totalInput!1349 testedP!353)) Nil!74747)) totalInput!1349)))

(declare-fun lt!2715861 () Unit!170726)

(declare-fun choose!60296 (List!74871 List!74871) Unit!170726)

(assert (=> d!2387916 (= lt!2715861 (choose!60296 testedP!353 totalInput!1349))))

(assert (=> d!2387916 (isPrefix!6696 testedP!353 totalInput!1349)))

(assert (=> d!2387916 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1393 testedP!353 totalInput!1349) lt!2715861)))

(declare-fun bs!1970759 () Bool)

(assert (= bs!1970759 d!2387916))

(assert (=> bs!1970759 m!8372756))

(declare-fun m!8372954 () Bool)

(assert (=> bs!1970759 m!8372954))

(declare-fun m!8372956 () Bool)

(assert (=> bs!1970759 m!8372956))

(assert (=> bs!1970759 m!8372756))

(declare-fun m!8372958 () Bool)

(assert (=> bs!1970759 m!8372958))

(assert (=> bs!1970759 m!8372954))

(assert (=> bs!1970759 m!8372734))

(declare-fun m!8372960 () Bool)

(assert (=> bs!1970759 m!8372960))

(assert (=> b!8007701 d!2387916))

(declare-fun b!8007887 () Bool)

(declare-fun res!3166596 () Bool)

(declare-fun e!4717321 () Bool)

(assert (=> b!8007887 (=> (not res!3166596) (not e!4717321))))

(assert (=> b!8007887 (= res!3166596 (= (head!16334 (++!18468 testedP!353 (Cons!74747 (head!16334 lt!2715745) Nil!74747))) (head!16334 totalInput!1349)))))

(declare-fun d!2387918 () Bool)

(declare-fun e!4717323 () Bool)

(assert (=> d!2387918 e!4717323))

(declare-fun res!3166597 () Bool)

(assert (=> d!2387918 (=> res!3166597 e!4717323)))

(declare-fun lt!2715862 () Bool)

(assert (=> d!2387918 (= res!3166597 (not lt!2715862))))

(declare-fun e!4717322 () Bool)

(assert (=> d!2387918 (= lt!2715862 e!4717322)))

(declare-fun res!3166595 () Bool)

(assert (=> d!2387918 (=> res!3166595 e!4717322)))

(assert (=> d!2387918 (= res!3166595 (is-Nil!74747 (++!18468 testedP!353 (Cons!74747 (head!16334 lt!2715745) Nil!74747))))))

(assert (=> d!2387918 (= (isPrefix!6696 (++!18468 testedP!353 (Cons!74747 (head!16334 lt!2715745) Nil!74747)) totalInput!1349) lt!2715862)))

(declare-fun b!8007886 () Bool)

(assert (=> b!8007886 (= e!4717322 e!4717321)))

(declare-fun res!3166594 () Bool)

(assert (=> b!8007886 (=> (not res!3166594) (not e!4717321))))

(assert (=> b!8007886 (= res!3166594 (not (is-Nil!74747 totalInput!1349)))))

(declare-fun b!8007889 () Bool)

(assert (=> b!8007889 (= e!4717323 (>= (size!43544 totalInput!1349) (size!43544 (++!18468 testedP!353 (Cons!74747 (head!16334 lt!2715745) Nil!74747)))))))

(declare-fun b!8007888 () Bool)

(assert (=> b!8007888 (= e!4717321 (isPrefix!6696 (tail!15857 (++!18468 testedP!353 (Cons!74747 (head!16334 lt!2715745) Nil!74747))) (tail!15857 totalInput!1349)))))

(assert (= (and d!2387918 (not res!3166595)) b!8007886))

(assert (= (and b!8007886 res!3166594) b!8007887))

(assert (= (and b!8007887 res!3166596) b!8007888))

(assert (= (and d!2387918 (not res!3166597)) b!8007889))

(assert (=> b!8007887 m!8372712))

(declare-fun m!8372968 () Bool)

(assert (=> b!8007887 m!8372968))

(assert (=> b!8007887 m!8372914))

(assert (=> b!8007889 m!8372730))

(assert (=> b!8007889 m!8372712))

(declare-fun m!8372970 () Bool)

(assert (=> b!8007889 m!8372970))

(assert (=> b!8007888 m!8372712))

(declare-fun m!8372972 () Bool)

(assert (=> b!8007888 m!8372972))

(assert (=> b!8007888 m!8372848))

(assert (=> b!8007888 m!8372972))

(assert (=> b!8007888 m!8372848))

(declare-fun m!8372974 () Bool)

(assert (=> b!8007888 m!8372974))

(assert (=> b!8007701 d!2387918))

(declare-fun d!2387922 () Bool)

(assert (=> d!2387922 (= (head!16334 testedSuffix!271) (h!81195 testedSuffix!271))))

(assert (=> b!8007701 d!2387922))

(declare-fun d!2387924 () Bool)

(declare-fun nullableFct!3828 (Regex!21642) Bool)

(assert (=> d!2387924 (= (nullable!9700 r!15422) (nullableFct!3828 r!15422))))

(declare-fun bs!1970761 () Bool)

(assert (= bs!1970761 d!2387924))

(declare-fun m!8372986 () Bool)

(assert (=> bs!1970761 m!8372986))

(assert (=> b!8007701 d!2387924))

(declare-fun d!2387928 () Bool)

(declare-fun e!4717327 () Bool)

(assert (=> d!2387928 e!4717327))

(declare-fun res!3166601 () Bool)

(assert (=> d!2387928 (=> (not res!3166601) (not e!4717327))))

(declare-fun lt!2715864 () List!74871)

(assert (=> d!2387928 (= res!3166601 (= (content!15895 lt!2715864) (set.union (content!15895 lt!2715743) (content!15895 lt!2715744))))))

(declare-fun e!4717326 () List!74871)

(assert (=> d!2387928 (= lt!2715864 e!4717326)))

(declare-fun c!1470013 () Bool)

(assert (=> d!2387928 (= c!1470013 (is-Nil!74747 lt!2715743))))

(assert (=> d!2387928 (= (++!18468 lt!2715743 lt!2715744) lt!2715864)))

(declare-fun b!8007897 () Bool)

(assert (=> b!8007897 (= e!4717327 (or (not (= lt!2715744 Nil!74747)) (= lt!2715864 lt!2715743)))))

(declare-fun b!8007894 () Bool)

(assert (=> b!8007894 (= e!4717326 lt!2715744)))

(declare-fun b!8007896 () Bool)

(declare-fun res!3166600 () Bool)

(assert (=> b!8007896 (=> (not res!3166600) (not e!4717327))))

(assert (=> b!8007896 (= res!3166600 (= (size!43544 lt!2715864) (+ (size!43544 lt!2715743) (size!43544 lt!2715744))))))

(declare-fun b!8007895 () Bool)

(assert (=> b!8007895 (= e!4717326 (Cons!74747 (h!81195 lt!2715743) (++!18468 (t!390614 lt!2715743) lt!2715744)))))

(assert (= (and d!2387928 c!1470013) b!8007894))

(assert (= (and d!2387928 (not c!1470013)) b!8007895))

(assert (= (and d!2387928 res!3166601) b!8007896))

(assert (= (and b!8007896 res!3166600) b!8007897))

(declare-fun m!8372988 () Bool)

(assert (=> d!2387928 m!8372988))

(declare-fun m!8372990 () Bool)

(assert (=> d!2387928 m!8372990))

(declare-fun m!8372992 () Bool)

(assert (=> d!2387928 m!8372992))

(declare-fun m!8372994 () Bool)

(assert (=> b!8007896 m!8372994))

(declare-fun m!8372996 () Bool)

(assert (=> b!8007896 m!8372996))

(declare-fun m!8372998 () Bool)

(assert (=> b!8007896 m!8372998))

(declare-fun m!8373000 () Bool)

(assert (=> b!8007895 m!8373000))

(assert (=> b!8007701 d!2387928))

(declare-fun d!2387930 () Bool)

(assert (=> d!2387930 (= (head!16334 lt!2715745) (h!81195 lt!2715745))))

(assert (=> b!8007701 d!2387930))

(declare-fun d!2387932 () Bool)

(declare-fun e!4717329 () Bool)

(assert (=> d!2387932 e!4717329))

(declare-fun res!3166603 () Bool)

(assert (=> d!2387932 (=> (not res!3166603) (not e!4717329))))

(declare-fun lt!2715865 () List!74871)

(assert (=> d!2387932 (= res!3166603 (= (content!15895 lt!2715865) (set.union (content!15895 testedP!353) (content!15895 (Cons!74747 lt!2715736 Nil!74747)))))))

(declare-fun e!4717328 () List!74871)

(assert (=> d!2387932 (= lt!2715865 e!4717328)))

(declare-fun c!1470014 () Bool)

(assert (=> d!2387932 (= c!1470014 (is-Nil!74747 testedP!353))))

(assert (=> d!2387932 (= (++!18468 testedP!353 (Cons!74747 lt!2715736 Nil!74747)) lt!2715865)))

(declare-fun b!8007901 () Bool)

(assert (=> b!8007901 (= e!4717329 (or (not (= (Cons!74747 lt!2715736 Nil!74747) Nil!74747)) (= lt!2715865 testedP!353)))))

(declare-fun b!8007898 () Bool)

(assert (=> b!8007898 (= e!4717328 (Cons!74747 lt!2715736 Nil!74747))))

(declare-fun b!8007900 () Bool)

(declare-fun res!3166602 () Bool)

(assert (=> b!8007900 (=> (not res!3166602) (not e!4717329))))

(assert (=> b!8007900 (= res!3166602 (= (size!43544 lt!2715865) (+ (size!43544 testedP!353) (size!43544 (Cons!74747 lt!2715736 Nil!74747)))))))

(declare-fun b!8007899 () Bool)

(assert (=> b!8007899 (= e!4717328 (Cons!74747 (h!81195 testedP!353) (++!18468 (t!390614 testedP!353) (Cons!74747 lt!2715736 Nil!74747))))))

(assert (= (and d!2387932 c!1470014) b!8007898))

(assert (= (and d!2387932 (not c!1470014)) b!8007899))

(assert (= (and d!2387932 res!3166603) b!8007900))

(assert (= (and b!8007900 res!3166602) b!8007901))

(declare-fun m!8373002 () Bool)

(assert (=> d!2387932 m!8373002))

(assert (=> d!2387932 m!8372870))

(declare-fun m!8373004 () Bool)

(assert (=> d!2387932 m!8373004))

(declare-fun m!8373006 () Bool)

(assert (=> b!8007900 m!8373006))

(assert (=> b!8007900 m!8372740))

(declare-fun m!8373008 () Bool)

(assert (=> b!8007900 m!8373008))

(declare-fun m!8373010 () Bool)

(assert (=> b!8007899 m!8373010))

(assert (=> b!8007701 d!2387932))

(declare-fun d!2387934 () Bool)

(assert (=> d!2387934 (= (tail!15857 testedSuffix!271) (t!390614 testedSuffix!271))))

(assert (=> b!8007701 d!2387934))

(declare-fun d!2387936 () Bool)

(assert (=> d!2387936 (= (++!18468 (++!18468 testedP!353 (Cons!74747 lt!2715736 Nil!74747)) lt!2715744) totalInput!1349)))

(declare-fun lt!2715868 () Unit!170726)

(declare-fun choose!60299 (List!74871 C!43622 List!74871 List!74871) Unit!170726)

(assert (=> d!2387936 (= lt!2715868 (choose!60299 testedP!353 lt!2715736 lt!2715744 totalInput!1349))))

(assert (=> d!2387936 (= (++!18468 testedP!353 (Cons!74747 lt!2715736 lt!2715744)) totalInput!1349)))

(assert (=> d!2387936 (= (lemmaMoveElementToOtherListKeepsConcatEq!3577 testedP!353 lt!2715736 lt!2715744 totalInput!1349) lt!2715868)))

(declare-fun bs!1970762 () Bool)

(assert (= bs!1970762 d!2387936))

(assert (=> bs!1970762 m!8372710))

(assert (=> bs!1970762 m!8372710))

(declare-fun m!8373012 () Bool)

(assert (=> bs!1970762 m!8373012))

(declare-fun m!8373014 () Bool)

(assert (=> bs!1970762 m!8373014))

(declare-fun m!8373016 () Bool)

(assert (=> bs!1970762 m!8373016))

(assert (=> b!8007701 d!2387936))

(declare-fun d!2387938 () Bool)

(declare-fun e!4717345 () Bool)

(assert (=> d!2387938 e!4717345))

(declare-fun res!3166615 () Bool)

(assert (=> d!2387938 (=> (not res!3166615) (not e!4717345))))

(declare-fun lt!2715869 () List!74871)

(assert (=> d!2387938 (= res!3166615 (= (content!15895 lt!2715869) (set.union (content!15895 testedP!353) (content!15895 (Cons!74747 (head!16334 lt!2715745) Nil!74747)))))))

(declare-fun e!4717344 () List!74871)

(assert (=> d!2387938 (= lt!2715869 e!4717344)))

(declare-fun c!1470019 () Bool)

(assert (=> d!2387938 (= c!1470019 (is-Nil!74747 testedP!353))))

(assert (=> d!2387938 (= (++!18468 testedP!353 (Cons!74747 (head!16334 lt!2715745) Nil!74747)) lt!2715869)))

(declare-fun b!8007923 () Bool)

(assert (=> b!8007923 (= e!4717345 (or (not (= (Cons!74747 (head!16334 lt!2715745) Nil!74747) Nil!74747)) (= lt!2715869 testedP!353)))))

(declare-fun b!8007920 () Bool)

(assert (=> b!8007920 (= e!4717344 (Cons!74747 (head!16334 lt!2715745) Nil!74747))))

(declare-fun b!8007922 () Bool)

(declare-fun res!3166614 () Bool)

(assert (=> b!8007922 (=> (not res!3166614) (not e!4717345))))

(assert (=> b!8007922 (= res!3166614 (= (size!43544 lt!2715869) (+ (size!43544 testedP!353) (size!43544 (Cons!74747 (head!16334 lt!2715745) Nil!74747)))))))

(declare-fun b!8007921 () Bool)

(assert (=> b!8007921 (= e!4717344 (Cons!74747 (h!81195 testedP!353) (++!18468 (t!390614 testedP!353) (Cons!74747 (head!16334 lt!2715745) Nil!74747))))))

(assert (= (and d!2387938 c!1470019) b!8007920))

(assert (= (and d!2387938 (not c!1470019)) b!8007921))

(assert (= (and d!2387938 res!3166615) b!8007922))

(assert (= (and b!8007922 res!3166614) b!8007923))

(declare-fun m!8373018 () Bool)

(assert (=> d!2387938 m!8373018))

(assert (=> d!2387938 m!8372870))

(declare-fun m!8373020 () Bool)

(assert (=> d!2387938 m!8373020))

(declare-fun m!8373022 () Bool)

(assert (=> b!8007922 m!8373022))

(assert (=> b!8007922 m!8372740))

(declare-fun m!8373024 () Bool)

(assert (=> b!8007922 m!8373024))

(declare-fun m!8373026 () Bool)

(assert (=> b!8007921 m!8373026))

(assert (=> b!8007701 d!2387938))

(declare-fun b!8007934 () Bool)

(declare-fun e!4717348 () Bool)

(assert (=> b!8007934 (= e!4717348 tp_is_empty!53827)))

(declare-fun b!8007937 () Bool)

(declare-fun tp!2396086 () Bool)

(declare-fun tp!2396089 () Bool)

(assert (=> b!8007937 (= e!4717348 (and tp!2396086 tp!2396089))))

(declare-fun b!8007935 () Bool)

(declare-fun tp!2396087 () Bool)

(declare-fun tp!2396088 () Bool)

(assert (=> b!8007935 (= e!4717348 (and tp!2396087 tp!2396088))))

(declare-fun b!8007936 () Bool)

(declare-fun tp!2396085 () Bool)

(assert (=> b!8007936 (= e!4717348 tp!2396085)))

(assert (=> b!8007698 (= tp!2396048 e!4717348)))

(assert (= (and b!8007698 (is-ElementMatch!21642 (regOne!43797 r!15422))) b!8007934))

(assert (= (and b!8007698 (is-Concat!30641 (regOne!43797 r!15422))) b!8007935))

(assert (= (and b!8007698 (is-Star!21642 (regOne!43797 r!15422))) b!8007936))

(assert (= (and b!8007698 (is-Union!21642 (regOne!43797 r!15422))) b!8007937))

(declare-fun b!8007938 () Bool)

(declare-fun e!4717349 () Bool)

(assert (=> b!8007938 (= e!4717349 tp_is_empty!53827)))

(declare-fun b!8007941 () Bool)

(declare-fun tp!2396091 () Bool)

(declare-fun tp!2396094 () Bool)

(assert (=> b!8007941 (= e!4717349 (and tp!2396091 tp!2396094))))

(declare-fun b!8007939 () Bool)

(declare-fun tp!2396092 () Bool)

(declare-fun tp!2396093 () Bool)

(assert (=> b!8007939 (= e!4717349 (and tp!2396092 tp!2396093))))

(declare-fun b!8007940 () Bool)

(declare-fun tp!2396090 () Bool)

(assert (=> b!8007940 (= e!4717349 tp!2396090)))

(assert (=> b!8007698 (= tp!2396049 e!4717349)))

(assert (= (and b!8007698 (is-ElementMatch!21642 (regTwo!43797 r!15422))) b!8007938))

(assert (= (and b!8007698 (is-Concat!30641 (regTwo!43797 r!15422))) b!8007939))

(assert (= (and b!8007698 (is-Star!21642 (regTwo!43797 r!15422))) b!8007940))

(assert (= (and b!8007698 (is-Union!21642 (regTwo!43797 r!15422))) b!8007941))

(declare-fun b!8007946 () Bool)

(declare-fun e!4717352 () Bool)

(declare-fun tp!2396097 () Bool)

(assert (=> b!8007946 (= e!4717352 (and tp_is_empty!53827 tp!2396097))))

(assert (=> b!8007703 (= tp!2396044 e!4717352)))

(assert (= (and b!8007703 (is-Cons!74747 (t!390614 testedSuffix!271))) b!8007946))

(declare-fun b!8007947 () Bool)

(declare-fun e!4717353 () Bool)

(declare-fun tp!2396098 () Bool)

(assert (=> b!8007947 (= e!4717353 (and tp_is_empty!53827 tp!2396098))))

(assert (=> b!8007692 (= tp!2396050 e!4717353)))

(assert (= (and b!8007692 (is-Cons!74747 (t!390614 totalInput!1349))) b!8007947))

(declare-fun b!8007948 () Bool)

(declare-fun e!4717354 () Bool)

(assert (=> b!8007948 (= e!4717354 tp_is_empty!53827)))

(declare-fun b!8007951 () Bool)

(declare-fun tp!2396100 () Bool)

(declare-fun tp!2396103 () Bool)

(assert (=> b!8007951 (= e!4717354 (and tp!2396100 tp!2396103))))

(declare-fun b!8007949 () Bool)

(declare-fun tp!2396101 () Bool)

(declare-fun tp!2396102 () Bool)

(assert (=> b!8007949 (= e!4717354 (and tp!2396101 tp!2396102))))

(declare-fun b!8007950 () Bool)

(declare-fun tp!2396099 () Bool)

(assert (=> b!8007950 (= e!4717354 tp!2396099)))

(assert (=> b!8007704 (= tp!2396045 e!4717354)))

(assert (= (and b!8007704 (is-ElementMatch!21642 (reg!21971 r!15422))) b!8007948))

(assert (= (and b!8007704 (is-Concat!30641 (reg!21971 r!15422))) b!8007949))

(assert (= (and b!8007704 (is-Star!21642 (reg!21971 r!15422))) b!8007950))

(assert (= (and b!8007704 (is-Union!21642 (reg!21971 r!15422))) b!8007951))

(declare-fun b!8007952 () Bool)

(declare-fun e!4717355 () Bool)

(assert (=> b!8007952 (= e!4717355 tp_is_empty!53827)))

(declare-fun b!8007955 () Bool)

(declare-fun tp!2396105 () Bool)

(declare-fun tp!2396108 () Bool)

(assert (=> b!8007955 (= e!4717355 (and tp!2396105 tp!2396108))))

(declare-fun b!8007953 () Bool)

(declare-fun tp!2396106 () Bool)

(declare-fun tp!2396107 () Bool)

(assert (=> b!8007953 (= e!4717355 (and tp!2396106 tp!2396107))))

(declare-fun b!8007954 () Bool)

(declare-fun tp!2396104 () Bool)

(assert (=> b!8007954 (= e!4717355 tp!2396104)))

(assert (=> b!8007706 (= tp!2396043 e!4717355)))

(assert (= (and b!8007706 (is-ElementMatch!21642 (regOne!43796 r!15422))) b!8007952))

(assert (= (and b!8007706 (is-Concat!30641 (regOne!43796 r!15422))) b!8007953))

(assert (= (and b!8007706 (is-Star!21642 (regOne!43796 r!15422))) b!8007954))

(assert (= (and b!8007706 (is-Union!21642 (regOne!43796 r!15422))) b!8007955))

(declare-fun b!8007956 () Bool)

(declare-fun e!4717356 () Bool)

(assert (=> b!8007956 (= e!4717356 tp_is_empty!53827)))

(declare-fun b!8007959 () Bool)

(declare-fun tp!2396110 () Bool)

(declare-fun tp!2396113 () Bool)

(assert (=> b!8007959 (= e!4717356 (and tp!2396110 tp!2396113))))

(declare-fun b!8007957 () Bool)

(declare-fun tp!2396111 () Bool)

(declare-fun tp!2396112 () Bool)

(assert (=> b!8007957 (= e!4717356 (and tp!2396111 tp!2396112))))

(declare-fun b!8007958 () Bool)

(declare-fun tp!2396109 () Bool)

(assert (=> b!8007958 (= e!4717356 tp!2396109)))

(assert (=> b!8007706 (= tp!2396046 e!4717356)))

(assert (= (and b!8007706 (is-ElementMatch!21642 (regTwo!43796 r!15422))) b!8007956))

(assert (= (and b!8007706 (is-Concat!30641 (regTwo!43796 r!15422))) b!8007957))

(assert (= (and b!8007706 (is-Star!21642 (regTwo!43796 r!15422))) b!8007958))

(assert (= (and b!8007706 (is-Union!21642 (regTwo!43796 r!15422))) b!8007959))

(declare-fun b!8007960 () Bool)

(declare-fun e!4717357 () Bool)

(declare-fun tp!2396114 () Bool)

(assert (=> b!8007960 (= e!4717357 (and tp_is_empty!53827 tp!2396114))))

(assert (=> b!8007689 (= tp!2396047 e!4717357)))

(assert (= (and b!8007689 (is-Cons!74747 (t!390614 testedP!353))) b!8007960))

(push 1)

(assert (not b!8007820))

(assert (not b!8007900))

(assert (not d!2387886))

(assert (not d!2387866))

(assert (not b!8007896))

(assert (not b!8007887))

(assert (not d!2387936))

(assert (not d!2387916))

(assert (not bm!743922))

(assert (not b!8007958))

(assert (not d!2387924))

(assert (not b!8007935))

(assert (not b!8007936))

(assert (not b!8007885))

(assert (not d!2387868))

(assert (not b!8007895))

(assert (not bm!743924))

(assert (not b!8007960))

(assert (not b!8007888))

(assert (not b!8007959))

(assert (not b!8007879))

(assert tp_is_empty!53827)

(assert (not b!8007881))

(assert (not b!8007899))

(assert (not b!8007937))

(assert (not d!2387928))

(assert (not b!8007877))

(assert (not b!8007874))

(assert (not d!2387912))

(assert (not b!8007954))

(assert (not b!8007940))

(assert (not d!2387860))

(assert (not d!2387882))

(assert (not b!8007883))

(assert (not b!8007941))

(assert (not d!2387938))

(assert (not b!8007875))

(assert (not b!8007845))

(assert (not b!8007827))

(assert (not d!2387900))

(assert (not d!2387876))

(assert (not b!8007794))

(assert (not b!8007955))

(assert (not b!8007951))

(assert (not b!8007889))

(assert (not b!8007846))

(assert (not b!8007921))

(assert (not b!8007950))

(assert (not b!8007882))

(assert (not b!8007949))

(assert (not b!8007873))

(assert (not b!8007939))

(assert (not b!8007878))

(assert (not b!8007922))

(assert (not b!8007946))

(assert (not d!2387932))

(assert (not b!8007953))

(assert (not b!8007957))

(assert (not b!8007947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

