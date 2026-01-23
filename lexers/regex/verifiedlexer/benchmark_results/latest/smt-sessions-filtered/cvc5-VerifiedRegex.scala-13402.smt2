; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725720 () Bool)

(assert start!725720)

(declare-fun b!7501239 () Bool)

(declare-fun e!4472135 () Bool)

(declare-fun tp!2177459 () Bool)

(assert (=> b!7501239 (= e!4472135 tp!2177459)))

(declare-datatypes ((C!39606 0))(
  ( (C!39607 (val!30201 Int)) )
))
(declare-datatypes ((List!72380 0))(
  ( (Nil!72256) (Cons!72256 (h!78704 C!39606) (t!386949 List!72380)) )
))
(declare-datatypes ((tuple2!68754 0))(
  ( (tuple2!68755 (_1!37680 List!72380) (_2!37680 List!72380)) )
))
(declare-fun lt!2631681 () tuple2!68754)

(declare-datatypes ((Regex!19660 0))(
  ( (ElementMatch!19660 (c!1384809 C!39606)) (Concat!28505 (regOne!39832 Regex!19660) (regTwo!39832 Regex!19660)) (EmptyExpr!19660) (Star!19660 (reg!19989 Regex!19660)) (EmptyLang!19660) (Union!19660 (regOne!39833 Regex!19660) (regTwo!39833 Regex!19660)) )
))
(declare-datatypes ((List!72381 0))(
  ( (Nil!72257) (Cons!72257 (h!78705 Regex!19660) (t!386950 List!72381)) )
))
(declare-datatypes ((Context!16824 0))(
  ( (Context!16825 (exprs!8912 List!72381)) )
))
(declare-fun z!3713 () (Set Context!16824))

(declare-fun input!5498 () List!72380)

(declare-fun findLongestMatchInnerZipper!318 ((Set Context!16824) List!72380 Int List!72380 List!72380 Int) tuple2!68754)

(declare-fun sizeTr!442 (List!72380 Int) Int)

(assert (=> start!725720 (= lt!2631681 (findLongestMatchInnerZipper!318 z!3713 Nil!72256 0 input!5498 input!5498 (sizeTr!442 input!5498 0)))))

(declare-fun size!42211 (List!72380) Int)

(assert (=> start!725720 (= (sizeTr!442 input!5498 0) (size!42211 input!5498))))

(declare-datatypes ((Unit!166163 0))(
  ( (Unit!166164) )
))
(declare-fun lt!2631680 () Unit!166163)

(declare-fun lemmaSizeTrEqualsSize!441 (List!72380 Int) Unit!166163)

(assert (=> start!725720 (= lt!2631680 (lemmaSizeTrEqualsSize!441 input!5498 0))))

(declare-fun ++!17269 (List!72380 List!72380) List!72380)

(assert (=> start!725720 (not (= (++!17269 (_1!37680 lt!2631681) (_2!37680 lt!2631681)) input!5498))))

(declare-fun e!4472136 () Bool)

(assert (=> start!725720 e!4472136))

(declare-fun condSetEmpty!56801 () Bool)

(assert (=> start!725720 (= condSetEmpty!56801 (= z!3713 (as set.empty (Set Context!16824))))))

(declare-fun setRes!56801 () Bool)

(assert (=> start!725720 setRes!56801))

(declare-fun b!7501238 () Bool)

(declare-fun tp_is_empty!49621 () Bool)

(declare-fun tp!2177458 () Bool)

(assert (=> b!7501238 (= e!4472136 (and tp_is_empty!49621 tp!2177458))))

(declare-fun setElem!56801 () Context!16824)

(declare-fun setNonEmpty!56801 () Bool)

(declare-fun tp!2177460 () Bool)

(declare-fun inv!92351 (Context!16824) Bool)

(assert (=> setNonEmpty!56801 (= setRes!56801 (and tp!2177460 (inv!92351 setElem!56801) e!4472135))))

(declare-fun setRest!56801 () (Set Context!16824))

(assert (=> setNonEmpty!56801 (= z!3713 (set.union (set.insert setElem!56801 (as set.empty (Set Context!16824))) setRest!56801))))

(declare-fun setIsEmpty!56801 () Bool)

(assert (=> setIsEmpty!56801 setRes!56801))

(assert (= (and start!725720 (is-Cons!72256 input!5498)) b!7501238))

(assert (= (and start!725720 condSetEmpty!56801) setIsEmpty!56801))

(assert (= (and start!725720 (not condSetEmpty!56801)) setNonEmpty!56801))

(assert (= setNonEmpty!56801 b!7501239))

(declare-fun m!8082980 () Bool)

(assert (=> start!725720 m!8082980))

(declare-fun m!8082982 () Bool)

(assert (=> start!725720 m!8082982))

(declare-fun m!8082984 () Bool)

(assert (=> start!725720 m!8082984))

(declare-fun m!8082986 () Bool)

(assert (=> start!725720 m!8082986))

(assert (=> start!725720 m!8082986))

(declare-fun m!8082988 () Bool)

(assert (=> start!725720 m!8082988))

(declare-fun m!8082990 () Bool)

(assert (=> setNonEmpty!56801 m!8082990))

(push 1)

(assert (not b!7501238))

(assert (not setNonEmpty!56801))

(assert (not b!7501239))

(assert (not start!725720))

(assert tp_is_empty!49621)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2302579 () Bool)

(declare-fun lambda!464918 () Int)

(declare-fun forall!18248 (List!72381 Int) Bool)

(assert (=> d!2302579 (= (inv!92351 setElem!56801) (forall!18248 (exprs!8912 setElem!56801) lambda!464918))))

(declare-fun bs!1937700 () Bool)

(assert (= bs!1937700 d!2302579))

(declare-fun m!8083004 () Bool)

(assert (=> bs!1937700 m!8083004))

(assert (=> setNonEmpty!56801 d!2302579))

(declare-fun b!7501255 () Bool)

(declare-fun e!4472147 () List!72380)

(assert (=> b!7501255 (= e!4472147 (Cons!72256 (h!78704 (_1!37680 lt!2631681)) (++!17269 (t!386949 (_1!37680 lt!2631681)) (_2!37680 lt!2631681))))))

(declare-fun b!7501256 () Bool)

(declare-fun res!3009191 () Bool)

(declare-fun e!4472148 () Bool)

(assert (=> b!7501256 (=> (not res!3009191) (not e!4472148))))

(declare-fun lt!2631690 () List!72380)

(assert (=> b!7501256 (= res!3009191 (= (size!42211 lt!2631690) (+ (size!42211 (_1!37680 lt!2631681)) (size!42211 (_2!37680 lt!2631681)))))))

(declare-fun b!7501254 () Bool)

(assert (=> b!7501254 (= e!4472147 (_2!37680 lt!2631681))))

(declare-fun b!7501257 () Bool)

(assert (=> b!7501257 (= e!4472148 (or (not (= (_2!37680 lt!2631681) Nil!72256)) (= lt!2631690 (_1!37680 lt!2631681))))))

(declare-fun d!2302583 () Bool)

(assert (=> d!2302583 e!4472148))

(declare-fun res!3009192 () Bool)

(assert (=> d!2302583 (=> (not res!3009192) (not e!4472148))))

(declare-fun content!15272 (List!72380) (Set C!39606))

(assert (=> d!2302583 (= res!3009192 (= (content!15272 lt!2631690) (set.union (content!15272 (_1!37680 lt!2631681)) (content!15272 (_2!37680 lt!2631681)))))))

(assert (=> d!2302583 (= lt!2631690 e!4472147)))

(declare-fun c!1384813 () Bool)

(assert (=> d!2302583 (= c!1384813 (is-Nil!72256 (_1!37680 lt!2631681)))))

(assert (=> d!2302583 (= (++!17269 (_1!37680 lt!2631681) (_2!37680 lt!2631681)) lt!2631690)))

(assert (= (and d!2302583 c!1384813) b!7501254))

(assert (= (and d!2302583 (not c!1384813)) b!7501255))

(assert (= (and d!2302583 res!3009192) b!7501256))

(assert (= (and b!7501256 res!3009191) b!7501257))

(declare-fun m!8083006 () Bool)

(assert (=> b!7501255 m!8083006))

(declare-fun m!8083008 () Bool)

(assert (=> b!7501256 m!8083008))

(declare-fun m!8083010 () Bool)

(assert (=> b!7501256 m!8083010))

(declare-fun m!8083012 () Bool)

(assert (=> b!7501256 m!8083012))

(declare-fun m!8083014 () Bool)

(assert (=> d!2302583 m!8083014))

(declare-fun m!8083016 () Bool)

(assert (=> d!2302583 m!8083016))

(declare-fun m!8083018 () Bool)

(assert (=> d!2302583 m!8083018))

(assert (=> start!725720 d!2302583))

(declare-fun d!2302585 () Bool)

(assert (=> d!2302585 (= (sizeTr!442 input!5498 0) (+ (size!42211 input!5498) 0))))

(declare-fun lt!2631693 () Unit!166163)

(declare-fun choose!57988 (List!72380 Int) Unit!166163)

(assert (=> d!2302585 (= lt!2631693 (choose!57988 input!5498 0))))

(assert (=> d!2302585 (= (lemmaSizeTrEqualsSize!441 input!5498 0) lt!2631693)))

(declare-fun bs!1937701 () Bool)

(assert (= bs!1937701 d!2302585))

(assert (=> bs!1937701 m!8082986))

(assert (=> bs!1937701 m!8082982))

(declare-fun m!8083020 () Bool)

(assert (=> bs!1937701 m!8083020))

(assert (=> start!725720 d!2302585))

(declare-fun b!7501286 () Bool)

(declare-fun e!4472167 () tuple2!68754)

(assert (=> b!7501286 (= e!4472167 (tuple2!68755 Nil!72256 input!5498))))

(declare-fun b!7501287 () Bool)

(declare-fun e!4472169 () Bool)

(declare-fun e!4472170 () Bool)

(assert (=> b!7501287 (= e!4472169 e!4472170)))

(declare-fun res!3009197 () Bool)

(assert (=> b!7501287 (=> res!3009197 e!4472170)))

(declare-fun lt!2631767 () tuple2!68754)

(declare-fun isEmpty!41292 (List!72380) Bool)

(assert (=> b!7501287 (= res!3009197 (isEmpty!41292 (_1!37680 lt!2631767)))))

(declare-fun b!7501288 () Bool)

(assert (=> b!7501288 (= e!4472170 (>= (size!42211 (_1!37680 lt!2631767)) (size!42211 Nil!72256)))))

(declare-fun b!7501289 () Bool)

(declare-fun c!1384826 () Bool)

(declare-fun call!688572 () Bool)

(assert (=> b!7501289 (= c!1384826 call!688572)))

(declare-fun lt!2631762 () Unit!166163)

(declare-fun lt!2631765 () Unit!166163)

(assert (=> b!7501289 (= lt!2631762 lt!2631765)))

(declare-fun lt!2631768 () C!39606)

(declare-fun lt!2631755 () List!72380)

(assert (=> b!7501289 (= (++!17269 (++!17269 Nil!72256 (Cons!72256 lt!2631768 Nil!72256)) lt!2631755) input!5498)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3137 (List!72380 C!39606 List!72380 List!72380) Unit!166163)

(assert (=> b!7501289 (= lt!2631765 (lemmaMoveElementToOtherListKeepsConcatEq!3137 Nil!72256 lt!2631768 lt!2631755 input!5498))))

(declare-fun tail!14960 (List!72380) List!72380)

(assert (=> b!7501289 (= lt!2631755 (tail!14960 input!5498))))

(declare-fun head!15391 (List!72380) C!39606)

(assert (=> b!7501289 (= lt!2631768 (head!15391 input!5498))))

(declare-fun lt!2631758 () Unit!166163)

(declare-fun lt!2631756 () Unit!166163)

(assert (=> b!7501289 (= lt!2631758 lt!2631756)))

(declare-fun isPrefix!5937 (List!72380 List!72380) Bool)

(declare-fun getSuffix!3443 (List!72380 List!72380) List!72380)

(assert (=> b!7501289 (isPrefix!5937 (++!17269 Nil!72256 (Cons!72256 (head!15391 (getSuffix!3443 input!5498 Nil!72256)) Nil!72256)) input!5498)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1100 (List!72380 List!72380) Unit!166163)

(assert (=> b!7501289 (= lt!2631756 (lemmaAddHeadSuffixToPrefixStillPrefix!1100 Nil!72256 input!5498))))

(declare-fun lt!2631752 () List!72380)

(assert (=> b!7501289 (= lt!2631752 (++!17269 Nil!72256 (Cons!72256 (head!15391 input!5498) Nil!72256)))))

(declare-fun lt!2631763 () Unit!166163)

(declare-fun e!4472165 () Unit!166163)

(assert (=> b!7501289 (= lt!2631763 e!4472165)))

(declare-fun c!1384831 () Bool)

(assert (=> b!7501289 (= c!1384831 (= (size!42211 Nil!72256) (size!42211 input!5498)))))

(declare-fun lt!2631753 () Unit!166163)

(declare-fun lt!2631757 () Unit!166163)

(assert (=> b!7501289 (= lt!2631753 lt!2631757)))

(assert (=> b!7501289 (<= (size!42211 Nil!72256) (size!42211 input!5498))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!956 (List!72380 List!72380) Unit!166163)

(assert (=> b!7501289 (= lt!2631757 (lemmaIsPrefixThenSmallerEqSize!956 Nil!72256 input!5498))))

(declare-fun e!4472172 () tuple2!68754)

(declare-fun e!4472171 () tuple2!68754)

(assert (=> b!7501289 (= e!4472172 e!4472171)))

(declare-fun b!7501290 () Bool)

(declare-fun Unit!166167 () Unit!166163)

(assert (=> b!7501290 (= e!4472165 Unit!166167)))

(declare-fun lt!2631761 () Unit!166163)

(declare-fun call!688569 () Unit!166163)

(assert (=> b!7501290 (= lt!2631761 call!688569)))

(declare-fun call!688567 () Bool)

(assert (=> b!7501290 call!688567))

(declare-fun lt!2631771 () Unit!166163)

(assert (=> b!7501290 (= lt!2631771 lt!2631761)))

(declare-fun lt!2631747 () Unit!166163)

(declare-fun call!688571 () Unit!166163)

(assert (=> b!7501290 (= lt!2631747 call!688571)))

(assert (=> b!7501290 (= input!5498 Nil!72256)))

(declare-fun lt!2631769 () Unit!166163)

(assert (=> b!7501290 (= lt!2631769 lt!2631747)))

(assert (=> b!7501290 false))

(declare-fun bm!688560 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1458 (List!72380 List!72380 List!72380) Unit!166163)

(assert (=> bm!688560 (= call!688571 (lemmaIsPrefixSameLengthThenSameList!1458 input!5498 Nil!72256 input!5498))))

(declare-fun b!7501291 () Bool)

(declare-fun Unit!166168 () Unit!166163)

(assert (=> b!7501291 (= e!4472165 Unit!166168)))

(declare-fun b!7501292 () Bool)

(declare-fun e!4472166 () tuple2!68754)

(assert (=> b!7501292 (= e!4472166 (tuple2!68755 Nil!72256 input!5498))))

(declare-fun b!7501293 () Bool)

(declare-fun lt!2631750 () tuple2!68754)

(assert (=> b!7501293 (= e!4472167 lt!2631750)))

(declare-fun d!2302587 () Bool)

(assert (=> d!2302587 e!4472169))

(declare-fun res!3009198 () Bool)

(assert (=> d!2302587 (=> (not res!3009198) (not e!4472169))))

(assert (=> d!2302587 (= res!3009198 (= (++!17269 (_1!37680 lt!2631767) (_2!37680 lt!2631767)) input!5498))))

(assert (=> d!2302587 (= lt!2631767 e!4472166)))

(declare-fun c!1384829 () Bool)

(declare-fun lostCauseZipper!1349 ((Set Context!16824)) Bool)

(assert (=> d!2302587 (= c!1384829 (lostCauseZipper!1349 z!3713))))

(declare-fun lt!2631749 () Unit!166163)

(declare-fun Unit!166169 () Unit!166163)

(assert (=> d!2302587 (= lt!2631749 Unit!166169)))

(assert (=> d!2302587 (= (getSuffix!3443 input!5498 Nil!72256) input!5498)))

(declare-fun lt!2631759 () Unit!166163)

(declare-fun lt!2631764 () Unit!166163)

(assert (=> d!2302587 (= lt!2631759 lt!2631764)))

(declare-fun lt!2631766 () List!72380)

(assert (=> d!2302587 (= input!5498 lt!2631766)))

(declare-fun lemmaSamePrefixThenSameSuffix!2748 (List!72380 List!72380 List!72380 List!72380 List!72380) Unit!166163)

(assert (=> d!2302587 (= lt!2631764 (lemmaSamePrefixThenSameSuffix!2748 Nil!72256 input!5498 Nil!72256 lt!2631766 input!5498))))

(assert (=> d!2302587 (= lt!2631766 (getSuffix!3443 input!5498 Nil!72256))))

(declare-fun lt!2631770 () Unit!166163)

(declare-fun lt!2631746 () Unit!166163)

(assert (=> d!2302587 (= lt!2631770 lt!2631746)))

(assert (=> d!2302587 (isPrefix!5937 Nil!72256 (++!17269 Nil!72256 input!5498))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3650 (List!72380 List!72380) Unit!166163)

(assert (=> d!2302587 (= lt!2631746 (lemmaConcatTwoListThenFirstIsPrefix!3650 Nil!72256 input!5498))))

(assert (=> d!2302587 (= (++!17269 Nil!72256 input!5498) input!5498)))

(assert (=> d!2302587 (= (findLongestMatchInnerZipper!318 z!3713 Nil!72256 0 input!5498 input!5498 (sizeTr!442 input!5498 0)) lt!2631767)))

(declare-fun bm!688561 () Bool)

(declare-fun call!688565 () C!39606)

(assert (=> bm!688561 (= call!688565 (head!15391 input!5498))))

(declare-fun b!7501294 () Bool)

(declare-fun e!4472168 () tuple2!68754)

(assert (=> b!7501294 (= e!4472168 (tuple2!68755 Nil!72256 Nil!72256))))

(declare-fun bm!688562 () Bool)

(declare-fun lemmaIsPrefixRefl!3800 (List!72380 List!72380) Unit!166163)

(assert (=> bm!688562 (= call!688569 (lemmaIsPrefixRefl!3800 input!5498 input!5498))))

(declare-fun b!7501295 () Bool)

(assert (=> b!7501295 (= e!4472166 e!4472172)))

(declare-fun c!1384828 () Bool)

(assert (=> b!7501295 (= c!1384828 (= 0 (sizeTr!442 input!5498 0)))))

(declare-fun bm!688563 () Bool)

(assert (=> bm!688563 (= call!688567 (isPrefix!5937 input!5498 input!5498))))

(declare-fun bm!688564 () Bool)

(declare-fun call!688570 () (Set Context!16824))

(declare-fun call!688566 () tuple2!68754)

(declare-fun call!688568 () List!72380)

(assert (=> bm!688564 (= call!688566 (findLongestMatchInnerZipper!318 call!688570 lt!2631752 (+ 0 1) call!688568 input!5498 (sizeTr!442 input!5498 0)))))

(declare-fun b!7501296 () Bool)

(assert (=> b!7501296 (= e!4472168 (tuple2!68755 Nil!72256 input!5498))))

(declare-fun bm!688565 () Bool)

(assert (=> bm!688565 (= call!688568 (tail!14960 input!5498))))

(declare-fun b!7501297 () Bool)

(assert (=> b!7501297 (= e!4472171 e!4472167)))

(assert (=> b!7501297 (= lt!2631750 call!688566)))

(declare-fun c!1384830 () Bool)

(assert (=> b!7501297 (= c!1384830 (isEmpty!41292 (_1!37680 lt!2631750)))))

(declare-fun b!7501298 () Bool)

(assert (=> b!7501298 (= e!4472171 call!688566)))

(declare-fun b!7501299 () Bool)

(declare-fun c!1384827 () Bool)

(assert (=> b!7501299 (= c!1384827 call!688572)))

(declare-fun lt!2631751 () Unit!166163)

(declare-fun lt!2631754 () Unit!166163)

(assert (=> b!7501299 (= lt!2631751 lt!2631754)))

(assert (=> b!7501299 (= input!5498 Nil!72256)))

(assert (=> b!7501299 (= lt!2631754 call!688571)))

(declare-fun lt!2631760 () Unit!166163)

(declare-fun lt!2631748 () Unit!166163)

(assert (=> b!7501299 (= lt!2631760 lt!2631748)))

(assert (=> b!7501299 call!688567))

(assert (=> b!7501299 (= lt!2631748 call!688569)))

(assert (=> b!7501299 (= e!4472172 e!4472168)))

(declare-fun bm!688566 () Bool)

(declare-fun derivationStepZipper!3722 ((Set Context!16824) C!39606) (Set Context!16824))

(assert (=> bm!688566 (= call!688570 (derivationStepZipper!3722 z!3713 call!688565))))

(declare-fun bm!688567 () Bool)

(declare-fun nullableZipper!3157 ((Set Context!16824)) Bool)

(assert (=> bm!688567 (= call!688572 (nullableZipper!3157 z!3713))))

(assert (= (and d!2302587 c!1384829) b!7501292))

(assert (= (and d!2302587 (not c!1384829)) b!7501295))

(assert (= (and b!7501295 c!1384828) b!7501299))

(assert (= (and b!7501295 (not c!1384828)) b!7501289))

(assert (= (and b!7501299 c!1384827) b!7501294))

(assert (= (and b!7501299 (not c!1384827)) b!7501296))

(assert (= (and b!7501289 c!1384831) b!7501290))

(assert (= (and b!7501289 (not c!1384831)) b!7501291))

(assert (= (and b!7501289 c!1384826) b!7501297))

(assert (= (and b!7501289 (not c!1384826)) b!7501298))

(assert (= (and b!7501297 c!1384830) b!7501286))

(assert (= (and b!7501297 (not c!1384830)) b!7501293))

(assert (= (or b!7501297 b!7501298) bm!688561))

(assert (= (or b!7501297 b!7501298) bm!688565))

(assert (= (or b!7501297 b!7501298) bm!688566))

(assert (= (or b!7501297 b!7501298) bm!688564))

(assert (= (or b!7501299 b!7501289) bm!688567))

(assert (= (or b!7501299 b!7501290) bm!688562))

(assert (= (or b!7501299 b!7501290) bm!688563))

(assert (= (or b!7501299 b!7501290) bm!688560))

(assert (= (and d!2302587 res!3009198) b!7501287))

(assert (= (and b!7501287 (not res!3009197)) b!7501288))

(declare-fun m!8083024 () Bool)

(assert (=> b!7501287 m!8083024))

(declare-fun m!8083026 () Bool)

(assert (=> b!7501297 m!8083026))

(declare-fun m!8083028 () Bool)

(assert (=> bm!688562 m!8083028))

(declare-fun m!8083030 () Bool)

(assert (=> b!7501289 m!8083030))

(declare-fun m!8083032 () Bool)

(assert (=> b!7501289 m!8083032))

(declare-fun m!8083034 () Bool)

(assert (=> b!7501289 m!8083034))

(declare-fun m!8083036 () Bool)

(assert (=> b!7501289 m!8083036))

(assert (=> b!7501289 m!8083034))

(declare-fun m!8083038 () Bool)

(assert (=> b!7501289 m!8083038))

(declare-fun m!8083040 () Bool)

(assert (=> b!7501289 m!8083040))

(declare-fun m!8083042 () Bool)

(assert (=> b!7501289 m!8083042))

(declare-fun m!8083044 () Bool)

(assert (=> b!7501289 m!8083044))

(declare-fun m!8083046 () Bool)

(assert (=> b!7501289 m!8083046))

(declare-fun m!8083048 () Bool)

(assert (=> b!7501289 m!8083048))

(assert (=> b!7501289 m!8083044))

(declare-fun m!8083050 () Bool)

(assert (=> b!7501289 m!8083050))

(declare-fun m!8083052 () Bool)

(assert (=> b!7501289 m!8083052))

(assert (=> b!7501289 m!8083040))

(declare-fun m!8083054 () Bool)

(assert (=> b!7501289 m!8083054))

(assert (=> b!7501289 m!8082982))

(declare-fun m!8083056 () Bool)

(assert (=> d!2302587 m!8083056))

(declare-fun m!8083058 () Bool)

(assert (=> d!2302587 m!8083058))

(declare-fun m!8083060 () Bool)

(assert (=> d!2302587 m!8083060))

(assert (=> d!2302587 m!8083058))

(declare-fun m!8083062 () Bool)

(assert (=> d!2302587 m!8083062))

(assert (=> d!2302587 m!8083040))

(declare-fun m!8083064 () Bool)

(assert (=> d!2302587 m!8083064))

(declare-fun m!8083066 () Bool)

(assert (=> d!2302587 m!8083066))

(declare-fun m!8083068 () Bool)

(assert (=> bm!688563 m!8083068))

(declare-fun m!8083070 () Bool)

(assert (=> bm!688566 m!8083070))

(declare-fun m!8083072 () Bool)

(assert (=> bm!688567 m!8083072))

(assert (=> bm!688564 m!8082986))

(declare-fun m!8083074 () Bool)

(assert (=> bm!688564 m!8083074))

(assert (=> bm!688561 m!8083030))

(assert (=> bm!688565 m!8083032))

(declare-fun m!8083076 () Bool)

(assert (=> bm!688560 m!8083076))

(declare-fun m!8083078 () Bool)

(assert (=> b!7501288 m!8083078))

(assert (=> b!7501288 m!8083052))

(assert (=> start!725720 d!2302587))

(declare-fun d!2302591 () Bool)

(declare-fun c!1384836 () Bool)

(assert (=> d!2302591 (= c!1384836 (is-Nil!72256 input!5498))))

(declare-fun e!4472179 () Int)

(assert (=> d!2302591 (= (sizeTr!442 input!5498 0) e!4472179)))

(declare-fun b!7501312 () Bool)

(assert (=> b!7501312 (= e!4472179 0)))

(declare-fun b!7501313 () Bool)

(assert (=> b!7501313 (= e!4472179 (sizeTr!442 (t!386949 input!5498) (+ 0 1)))))

(assert (= (and d!2302591 c!1384836) b!7501312))

(assert (= (and d!2302591 (not c!1384836)) b!7501313))

(declare-fun m!8083080 () Bool)

(assert (=> b!7501313 m!8083080))

(assert (=> start!725720 d!2302591))

(declare-fun d!2302593 () Bool)

(declare-fun lt!2631777 () Int)

(assert (=> d!2302593 (>= lt!2631777 0)))

(declare-fun e!4472184 () Int)

(assert (=> d!2302593 (= lt!2631777 e!4472184)))

(declare-fun c!1384840 () Bool)

(assert (=> d!2302593 (= c!1384840 (is-Nil!72256 input!5498))))

(assert (=> d!2302593 (= (size!42211 input!5498) lt!2631777)))

(declare-fun b!7501322 () Bool)

(assert (=> b!7501322 (= e!4472184 0)))

(declare-fun b!7501323 () Bool)

(assert (=> b!7501323 (= e!4472184 (+ 1 (size!42211 (t!386949 input!5498))))))

(assert (= (and d!2302593 c!1384840) b!7501322))

(assert (= (and d!2302593 (not c!1384840)) b!7501323))

(declare-fun m!8083096 () Bool)

(assert (=> b!7501323 m!8083096))

(assert (=> start!725720 d!2302593))

(declare-fun condSetEmpty!56807 () Bool)

(assert (=> setNonEmpty!56801 (= condSetEmpty!56807 (= setRest!56801 (as set.empty (Set Context!16824))))))

(declare-fun setRes!56807 () Bool)

(assert (=> setNonEmpty!56801 (= tp!2177460 setRes!56807)))

(declare-fun setIsEmpty!56807 () Bool)

(assert (=> setIsEmpty!56807 setRes!56807))

(declare-fun tp!2177474 () Bool)

(declare-fun setElem!56807 () Context!16824)

(declare-fun e!4472187 () Bool)

(declare-fun setNonEmpty!56807 () Bool)

(assert (=> setNonEmpty!56807 (= setRes!56807 (and tp!2177474 (inv!92351 setElem!56807) e!4472187))))

(declare-fun setRest!56807 () (Set Context!16824))

(assert (=> setNonEmpty!56807 (= setRest!56801 (set.union (set.insert setElem!56807 (as set.empty (Set Context!16824))) setRest!56807))))

(declare-fun b!7501328 () Bool)

(declare-fun tp!2177475 () Bool)

(assert (=> b!7501328 (= e!4472187 tp!2177475)))

(assert (= (and setNonEmpty!56801 condSetEmpty!56807) setIsEmpty!56807))

(assert (= (and setNonEmpty!56801 (not condSetEmpty!56807)) setNonEmpty!56807))

(assert (= setNonEmpty!56807 b!7501328))

(declare-fun m!8083100 () Bool)

(assert (=> setNonEmpty!56807 m!8083100))

(declare-fun b!7501333 () Bool)

(declare-fun e!4472190 () Bool)

(declare-fun tp!2177480 () Bool)

(declare-fun tp!2177481 () Bool)

(assert (=> b!7501333 (= e!4472190 (and tp!2177480 tp!2177481))))

(assert (=> b!7501239 (= tp!2177459 e!4472190)))

(assert (= (and b!7501239 (is-Cons!72257 (exprs!8912 setElem!56801))) b!7501333))

(declare-fun b!7501338 () Bool)

(declare-fun e!4472193 () Bool)

(declare-fun tp!2177484 () Bool)

(assert (=> b!7501338 (= e!4472193 (and tp_is_empty!49621 tp!2177484))))

(assert (=> b!7501238 (= tp!2177458 e!4472193)))

(assert (= (and b!7501238 (is-Cons!72256 (t!386949 input!5498))) b!7501338))

(push 1)

(assert (not bm!688564))

(assert (not bm!688563))

(assert (not d!2302585))

(assert (not b!7501313))

(assert (not bm!688567))

(assert (not b!7501297))

(assert (not b!7501256))

(assert (not b!7501323))

(assert (not bm!688566))

(assert tp_is_empty!49621)

(assert (not b!7501288))

(assert (not b!7501289))

(assert (not b!7501287))

(assert (not bm!688565))

(assert (not b!7501328))

(assert (not d!2302587))

(assert (not bm!688560))

(assert (not bm!688562))

(assert (not d!2302583))

(assert (not b!7501255))

(assert (not bm!688561))

(assert (not b!7501333))

(assert (not b!7501338))

(assert (not setNonEmpty!56807))

(assert (not d!2302579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

