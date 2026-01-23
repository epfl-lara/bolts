; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725872 () Bool)

(assert start!725872)

(declare-fun b!7502332 () Bool)

(declare-fun e!4472949 () Bool)

(declare-fun tp_is_empty!49669 () Bool)

(declare-fun tp!2177836 () Bool)

(assert (=> b!7502332 (= e!4472949 (and tp_is_empty!49669 tp!2177836))))

(declare-datatypes ((C!39654 0))(
  ( (C!39655 (val!30225 Int)) )
))
(declare-datatypes ((Regex!19674 0))(
  ( (ElementMatch!19674 (c!1384962 C!39654)) (Concat!28519 (regOne!39860 Regex!19674) (regTwo!39860 Regex!19674)) (EmptyExpr!19674) (Star!19674 (reg!20003 Regex!19674)) (EmptyLang!19674) (Union!19674 (regOne!39861 Regex!19674) (regTwo!39861 Regex!19674)) )
))
(declare-datatypes ((List!72420 0))(
  ( (Nil!72296) (Cons!72296 (h!78744 Regex!19674) (t!386989 List!72420)) )
))
(declare-datatypes ((Context!16852 0))(
  ( (Context!16853 (exprs!8926 List!72420)) )
))
(declare-fun setElem!56855 () Context!16852)

(declare-fun setNonEmpty!56855 () Bool)

(declare-fun e!4472941 () Bool)

(declare-fun setRes!56855 () Bool)

(declare-fun tp!2177834 () Bool)

(declare-fun inv!92401 (Context!16852) Bool)

(assert (=> setNonEmpty!56855 (= setRes!56855 (and tp!2177834 (inv!92401 setElem!56855) e!4472941))))

(declare-fun z!3716 () (Set Context!16852))

(declare-fun setRest!56855 () (Set Context!16852))

(assert (=> setNonEmpty!56855 (= z!3716 (set.union (set.insert setElem!56855 (as set.empty (Set Context!16852))) setRest!56855))))

(declare-fun setIsEmpty!56855 () Bool)

(assert (=> setIsEmpty!56855 setRes!56855))

(declare-fun b!7502333 () Bool)

(declare-datatypes ((Unit!166226 0))(
  ( (Unit!166227) )
))
(declare-fun e!4472951 () Unit!166226)

(declare-fun Unit!166228 () Unit!166226)

(assert (=> b!7502333 (= e!4472951 Unit!166228)))

(declare-fun b!7502334 () Bool)

(declare-fun Unit!166229 () Unit!166226)

(assert (=> b!7502334 (= e!4472951 Unit!166229)))

(declare-fun lt!2632466 () Unit!166226)

(declare-datatypes ((List!72421 0))(
  ( (Nil!72297) (Cons!72297 (h!78745 C!39654) (t!386990 List!72421)) )
))
(declare-fun totalInput!779 () List!72421)

(declare-fun lemmaIsPrefixRefl!3809 (List!72421 List!72421) Unit!166226)

(assert (=> b!7502334 (= lt!2632466 (lemmaIsPrefixRefl!3809 totalInput!779 totalInput!779))))

(declare-fun isPrefix!5960 (List!72421 List!72421) Bool)

(assert (=> b!7502334 (isPrefix!5960 totalInput!779 totalInput!779)))

(declare-fun lt!2632460 () Unit!166226)

(declare-fun testedP!204 () List!72421)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1463 (List!72421 List!72421 List!72421) Unit!166226)

(assert (=> b!7502334 (= lt!2632460 (lemmaIsPrefixSameLengthThenSameList!1463 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7502334 false))

(declare-fun b!7502335 () Bool)

(declare-fun e!4472945 () Bool)

(declare-fun e!4472942 () Bool)

(assert (=> b!7502335 (= e!4472945 e!4472942)))

(declare-fun res!3009701 () Bool)

(assert (=> b!7502335 (=> res!3009701 e!4472942)))

(declare-fun lostCauseZipper!1362 ((Set Context!16852)) Bool)

(assert (=> b!7502335 (= res!3009701 (lostCauseZipper!1362 z!3716))))

(declare-fun testedSuffix!164 () List!72421)

(declare-fun lt!2632459 () List!72421)

(assert (=> b!7502335 (and (= testedSuffix!164 lt!2632459) (= lt!2632459 testedSuffix!164))))

(declare-fun lt!2632464 () Unit!166226)

(declare-fun lemmaSamePrefixThenSameSuffix!2765 (List!72421 List!72421 List!72421 List!72421 List!72421) Unit!166226)

(assert (=> b!7502335 (= lt!2632464 (lemmaSamePrefixThenSameSuffix!2765 testedP!204 testedSuffix!164 testedP!204 lt!2632459 totalInput!779))))

(declare-fun getSuffix!3462 (List!72421 List!72421) List!72421)

(assert (=> b!7502335 (= lt!2632459 (getSuffix!3462 totalInput!779 testedP!204))))

(declare-fun b!7502336 () Bool)

(declare-fun e!4472947 () Bool)

(assert (=> b!7502336 (= e!4472942 e!4472947)))

(declare-fun res!3009697 () Bool)

(assert (=> b!7502336 (=> res!3009697 e!4472947)))

(declare-fun lt!2632461 () Int)

(declare-fun lt!2632463 () Int)

(assert (=> b!7502336 (= res!3009697 (>= lt!2632461 lt!2632463))))

(declare-fun lt!2632458 () Unit!166226)

(assert (=> b!7502336 (= lt!2632458 e!4472951)))

(declare-fun c!1384961 () Bool)

(assert (=> b!7502336 (= c!1384961 (= lt!2632461 lt!2632463))))

(assert (=> b!7502336 (<= lt!2632461 lt!2632463)))

(declare-fun lt!2632462 () Unit!166226)

(declare-fun lemmaIsPrefixThenSmallerEqSize!965 (List!72421 List!72421) Unit!166226)

(assert (=> b!7502336 (= lt!2632462 (lemmaIsPrefixThenSmallerEqSize!965 testedP!204 totalInput!779))))

(declare-fun b!7502338 () Bool)

(declare-fun res!3009700 () Bool)

(assert (=> b!7502338 (=> res!3009700 e!4472942)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7502338 (= res!3009700 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7502339 () Bool)

(declare-fun tp!2177837 () Bool)

(assert (=> b!7502339 (= e!4472941 tp!2177837)))

(declare-fun b!7502340 () Bool)

(declare-fun e!4472950 () Bool)

(assert (=> b!7502340 (= e!4472950 (not e!4472945))))

(declare-fun res!3009695 () Bool)

(assert (=> b!7502340 (=> res!3009695 e!4472945)))

(assert (=> b!7502340 (= res!3009695 (not (isPrefix!5960 testedP!204 totalInput!779)))))

(declare-fun lt!2632456 () List!72421)

(assert (=> b!7502340 (isPrefix!5960 testedP!204 lt!2632456)))

(declare-fun lt!2632457 () Unit!166226)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3673 (List!72421 List!72421) Unit!166226)

(assert (=> b!7502340 (= lt!2632457 (lemmaConcatTwoListThenFirstIsPrefix!3673 testedP!204 testedSuffix!164))))

(declare-fun b!7502341 () Bool)

(declare-fun e!4472948 () Bool)

(declare-fun tp!2177838 () Bool)

(assert (=> b!7502341 (= e!4472948 (and tp_is_empty!49669 tp!2177838))))

(declare-fun b!7502342 () Bool)

(declare-fun e!4472943 () Bool)

(declare-fun tp!2177835 () Bool)

(assert (=> b!7502342 (= e!4472943 (and tp_is_empty!49669 tp!2177835))))

(declare-fun b!7502343 () Bool)

(declare-fun e!4472946 () Bool)

(assert (=> b!7502343 (= e!4472946 e!4472950)))

(declare-fun res!3009699 () Bool)

(assert (=> b!7502343 (=> (not res!3009699) (not e!4472950))))

(assert (=> b!7502343 (= res!3009699 (= totalInputSize!226 lt!2632463))))

(declare-fun size!42235 (List!72421) Int)

(assert (=> b!7502343 (= lt!2632463 (size!42235 totalInput!779))))

(declare-fun b!7502344 () Bool)

(assert (=> b!7502344 (= e!4472947 (not (= testedSuffix!164 Nil!72297)))))

(declare-fun ++!17293 (List!72421 List!72421) List!72421)

(declare-fun head!15400 (List!72421) C!39654)

(assert (=> b!7502344 (isPrefix!5960 (++!17293 testedP!204 (Cons!72297 (head!15400 lt!2632459) Nil!72297)) totalInput!779)))

(declare-fun lt!2632455 () Unit!166226)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1101 (List!72421 List!72421) Unit!166226)

(assert (=> b!7502344 (= lt!2632455 (lemmaAddHeadSuffixToPrefixStillPrefix!1101 testedP!204 totalInput!779))))

(declare-fun lt!2632465 () List!72421)

(assert (=> b!7502344 (= lt!2632465 (++!17293 testedP!204 (Cons!72297 (head!15400 testedSuffix!164) Nil!72297)))))

(declare-fun b!7502337 () Bool)

(declare-fun e!4472944 () Bool)

(assert (=> b!7502337 (= e!4472944 e!4472946)))

(declare-fun res!3009696 () Bool)

(assert (=> b!7502337 (=> (not res!3009696) (not e!4472946))))

(assert (=> b!7502337 (= res!3009696 (= testedPSize!164 lt!2632461))))

(assert (=> b!7502337 (= lt!2632461 (size!42235 testedP!204))))

(declare-fun res!3009698 () Bool)

(assert (=> start!725872 (=> (not res!3009698) (not e!4472944))))

(assert (=> start!725872 (= res!3009698 (= lt!2632456 totalInput!779))))

(assert (=> start!725872 (= lt!2632456 (++!17293 testedP!204 testedSuffix!164))))

(assert (=> start!725872 e!4472944))

(assert (=> start!725872 e!4472948))

(assert (=> start!725872 true))

(assert (=> start!725872 e!4472943))

(assert (=> start!725872 e!4472949))

(declare-fun condSetEmpty!56855 () Bool)

(assert (=> start!725872 (= condSetEmpty!56855 (= z!3716 (as set.empty (Set Context!16852))))))

(assert (=> start!725872 setRes!56855))

(assert (= (and start!725872 res!3009698) b!7502337))

(assert (= (and b!7502337 res!3009696) b!7502343))

(assert (= (and b!7502343 res!3009699) b!7502340))

(assert (= (and b!7502340 (not res!3009695)) b!7502335))

(assert (= (and b!7502335 (not res!3009701)) b!7502338))

(assert (= (and b!7502338 (not res!3009700)) b!7502336))

(assert (= (and b!7502336 c!1384961) b!7502334))

(assert (= (and b!7502336 (not c!1384961)) b!7502333))

(assert (= (and b!7502336 (not res!3009697)) b!7502344))

(assert (= (and start!725872 (is-Cons!72297 testedSuffix!164)) b!7502341))

(assert (= (and start!725872 (is-Cons!72297 totalInput!779)) b!7502342))

(assert (= (and start!725872 (is-Cons!72297 testedP!204)) b!7502332))

(assert (= (and start!725872 condSetEmpty!56855) setIsEmpty!56855))

(assert (= (and start!725872 (not condSetEmpty!56855)) setNonEmpty!56855))

(assert (= setNonEmpty!56855 b!7502339))

(declare-fun m!8083854 () Bool)

(assert (=> setNonEmpty!56855 m!8083854))

(declare-fun m!8083856 () Bool)

(assert (=> start!725872 m!8083856))

(declare-fun m!8083858 () Bool)

(assert (=> b!7502337 m!8083858))

(declare-fun m!8083860 () Bool)

(assert (=> b!7502344 m!8083860))

(declare-fun m!8083862 () Bool)

(assert (=> b!7502344 m!8083862))

(declare-fun m!8083864 () Bool)

(assert (=> b!7502344 m!8083864))

(assert (=> b!7502344 m!8083862))

(declare-fun m!8083866 () Bool)

(assert (=> b!7502344 m!8083866))

(declare-fun m!8083868 () Bool)

(assert (=> b!7502344 m!8083868))

(declare-fun m!8083870 () Bool)

(assert (=> b!7502344 m!8083870))

(declare-fun m!8083872 () Bool)

(assert (=> b!7502335 m!8083872))

(declare-fun m!8083874 () Bool)

(assert (=> b!7502335 m!8083874))

(declare-fun m!8083876 () Bool)

(assert (=> b!7502335 m!8083876))

(declare-fun m!8083878 () Bool)

(assert (=> b!7502336 m!8083878))

(declare-fun m!8083880 () Bool)

(assert (=> b!7502334 m!8083880))

(declare-fun m!8083882 () Bool)

(assert (=> b!7502334 m!8083882))

(declare-fun m!8083884 () Bool)

(assert (=> b!7502334 m!8083884))

(declare-fun m!8083886 () Bool)

(assert (=> b!7502340 m!8083886))

(declare-fun m!8083888 () Bool)

(assert (=> b!7502340 m!8083888))

(declare-fun m!8083890 () Bool)

(assert (=> b!7502340 m!8083890))

(declare-fun m!8083892 () Bool)

(assert (=> b!7502343 m!8083892))

(push 1)

(assert (not start!725872))

(assert (not b!7502336))

(assert (not b!7502332))

(assert (not b!7502339))

(assert tp_is_empty!49669)

(assert (not b!7502334))

(assert (not b!7502341))

(assert (not b!7502340))

(assert (not setNonEmpty!56855))

(assert (not b!7502344))

(assert (not b!7502335))

(assert (not b!7502343))

(assert (not b!7502337))

(assert (not b!7502342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2302723 () Bool)

(assert (=> d!2302723 (= (head!15400 lt!2632459) (h!78745 lt!2632459))))

(assert (=> b!7502344 d!2302723))

(declare-fun d!2302725 () Bool)

(declare-fun e!4472992 () Bool)

(assert (=> d!2302725 e!4472992))

(declare-fun res!3009727 () Bool)

(assert (=> d!2302725 (=> (not res!3009727) (not e!4472992))))

(declare-fun lt!2632509 () List!72421)

(declare-fun content!15279 (List!72421) (Set C!39654))

(assert (=> d!2302725 (= res!3009727 (= (content!15279 lt!2632509) (set.union (content!15279 testedP!204) (content!15279 (Cons!72297 (head!15400 testedSuffix!164) Nil!72297)))))))

(declare-fun e!4472994 () List!72421)

(assert (=> d!2302725 (= lt!2632509 e!4472994)))

(declare-fun c!1384973 () Bool)

(assert (=> d!2302725 (= c!1384973 (is-Nil!72297 testedP!204))))

(assert (=> d!2302725 (= (++!17293 testedP!204 (Cons!72297 (head!15400 testedSuffix!164) Nil!72297)) lt!2632509)))

(declare-fun b!7502401 () Bool)

(assert (=> b!7502401 (= e!4472994 (Cons!72297 (h!78745 testedP!204) (++!17293 (t!386990 testedP!204) (Cons!72297 (head!15400 testedSuffix!164) Nil!72297))))))

(declare-fun b!7502403 () Bool)

(assert (=> b!7502403 (= e!4472992 (or (not (= (Cons!72297 (head!15400 testedSuffix!164) Nil!72297) Nil!72297)) (= lt!2632509 testedP!204)))))

(declare-fun b!7502400 () Bool)

(assert (=> b!7502400 (= e!4472994 (Cons!72297 (head!15400 testedSuffix!164) Nil!72297))))

(declare-fun b!7502402 () Bool)

(declare-fun res!3009728 () Bool)

(assert (=> b!7502402 (=> (not res!3009728) (not e!4472992))))

(assert (=> b!7502402 (= res!3009728 (= (size!42235 lt!2632509) (+ (size!42235 testedP!204) (size!42235 (Cons!72297 (head!15400 testedSuffix!164) Nil!72297)))))))

(assert (= (and d!2302725 c!1384973) b!7502400))

(assert (= (and d!2302725 (not c!1384973)) b!7502401))

(assert (= (and d!2302725 res!3009727) b!7502402))

(assert (= (and b!7502402 res!3009728) b!7502403))

(declare-fun m!8083938 () Bool)

(assert (=> d!2302725 m!8083938))

(declare-fun m!8083940 () Bool)

(assert (=> d!2302725 m!8083940))

(declare-fun m!8083942 () Bool)

(assert (=> d!2302725 m!8083942))

(declare-fun m!8083944 () Bool)

(assert (=> b!7502401 m!8083944))

(declare-fun m!8083946 () Bool)

(assert (=> b!7502402 m!8083946))

(assert (=> b!7502402 m!8083858))

(declare-fun m!8083948 () Bool)

(assert (=> b!7502402 m!8083948))

(assert (=> b!7502344 d!2302725))

(declare-fun b!7502423 () Bool)

(declare-fun e!4473008 () Bool)

(assert (=> b!7502423 (= e!4473008 (>= (size!42235 totalInput!779) (size!42235 (++!17293 testedP!204 (Cons!72297 (head!15400 lt!2632459) Nil!72297)))))))

(declare-fun b!7502420 () Bool)

(declare-fun e!4473007 () Bool)

(declare-fun e!4473009 () Bool)

(assert (=> b!7502420 (= e!4473007 e!4473009)))

(declare-fun res!3009746 () Bool)

(assert (=> b!7502420 (=> (not res!3009746) (not e!4473009))))

(assert (=> b!7502420 (= res!3009746 (not (is-Nil!72297 totalInput!779)))))

(declare-fun d!2302733 () Bool)

(assert (=> d!2302733 e!4473008))

(declare-fun res!3009748 () Bool)

(assert (=> d!2302733 (=> res!3009748 e!4473008)))

(declare-fun lt!2632514 () Bool)

(assert (=> d!2302733 (= res!3009748 (not lt!2632514))))

(assert (=> d!2302733 (= lt!2632514 e!4473007)))

(declare-fun res!3009747 () Bool)

(assert (=> d!2302733 (=> res!3009747 e!4473007)))

(assert (=> d!2302733 (= res!3009747 (is-Nil!72297 (++!17293 testedP!204 (Cons!72297 (head!15400 lt!2632459) Nil!72297))))))

(assert (=> d!2302733 (= (isPrefix!5960 (++!17293 testedP!204 (Cons!72297 (head!15400 lt!2632459) Nil!72297)) totalInput!779) lt!2632514)))

(declare-fun b!7502422 () Bool)

(declare-fun tail!14967 (List!72421) List!72421)

(assert (=> b!7502422 (= e!4473009 (isPrefix!5960 (tail!14967 (++!17293 testedP!204 (Cons!72297 (head!15400 lt!2632459) Nil!72297))) (tail!14967 totalInput!779)))))

(declare-fun b!7502421 () Bool)

(declare-fun res!3009745 () Bool)

(assert (=> b!7502421 (=> (not res!3009745) (not e!4473009))))

(assert (=> b!7502421 (= res!3009745 (= (head!15400 (++!17293 testedP!204 (Cons!72297 (head!15400 lt!2632459) Nil!72297))) (head!15400 totalInput!779)))))

(assert (= (and d!2302733 (not res!3009747)) b!7502420))

(assert (= (and b!7502420 res!3009746) b!7502421))

(assert (= (and b!7502421 res!3009745) b!7502422))

(assert (= (and d!2302733 (not res!3009748)) b!7502423))

(assert (=> b!7502423 m!8083892))

(assert (=> b!7502423 m!8083862))

(declare-fun m!8083950 () Bool)

(assert (=> b!7502423 m!8083950))

(assert (=> b!7502422 m!8083862))

(declare-fun m!8083952 () Bool)

(assert (=> b!7502422 m!8083952))

(declare-fun m!8083954 () Bool)

(assert (=> b!7502422 m!8083954))

(assert (=> b!7502422 m!8083952))

(assert (=> b!7502422 m!8083954))

(declare-fun m!8083956 () Bool)

(assert (=> b!7502422 m!8083956))

(assert (=> b!7502421 m!8083862))

(declare-fun m!8083958 () Bool)

(assert (=> b!7502421 m!8083958))

(declare-fun m!8083960 () Bool)

(assert (=> b!7502421 m!8083960))

(assert (=> b!7502344 d!2302733))

(declare-fun d!2302735 () Bool)

(assert (=> d!2302735 (= (head!15400 testedSuffix!164) (h!78745 testedSuffix!164))))

(assert (=> b!7502344 d!2302735))

(declare-fun d!2302737 () Bool)

(assert (=> d!2302737 (isPrefix!5960 (++!17293 testedP!204 (Cons!72297 (head!15400 (getSuffix!3462 totalInput!779 testedP!204)) Nil!72297)) totalInput!779)))

(declare-fun lt!2632521 () Unit!166226)

(declare-fun choose!58005 (List!72421 List!72421) Unit!166226)

(assert (=> d!2302737 (= lt!2632521 (choose!58005 testedP!204 totalInput!779))))

(assert (=> d!2302737 (isPrefix!5960 testedP!204 totalInput!779)))

(assert (=> d!2302737 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1101 testedP!204 totalInput!779) lt!2632521)))

(declare-fun bs!1937752 () Bool)

(assert (= bs!1937752 d!2302737))

(assert (=> bs!1937752 m!8083876))

(declare-fun m!8083980 () Bool)

(assert (=> bs!1937752 m!8083980))

(assert (=> bs!1937752 m!8083876))

(assert (=> bs!1937752 m!8083886))

(declare-fun m!8083982 () Bool)

(assert (=> bs!1937752 m!8083982))

(declare-fun m!8083984 () Bool)

(assert (=> bs!1937752 m!8083984))

(declare-fun m!8083986 () Bool)

(assert (=> bs!1937752 m!8083986))

(assert (=> bs!1937752 m!8083982))

(assert (=> b!7502344 d!2302737))

(declare-fun d!2302743 () Bool)

(declare-fun e!4473016 () Bool)

(assert (=> d!2302743 e!4473016))

(declare-fun res!3009757 () Bool)

(assert (=> d!2302743 (=> (not res!3009757) (not e!4473016))))

(declare-fun lt!2632523 () List!72421)

(assert (=> d!2302743 (= res!3009757 (= (content!15279 lt!2632523) (set.union (content!15279 testedP!204) (content!15279 (Cons!72297 (head!15400 lt!2632459) Nil!72297)))))))

(declare-fun e!4473017 () List!72421)

(assert (=> d!2302743 (= lt!2632523 e!4473017)))

(declare-fun c!1384974 () Bool)

(assert (=> d!2302743 (= c!1384974 (is-Nil!72297 testedP!204))))

(assert (=> d!2302743 (= (++!17293 testedP!204 (Cons!72297 (head!15400 lt!2632459) Nil!72297)) lt!2632523)))

(declare-fun b!7502433 () Bool)

(assert (=> b!7502433 (= e!4473017 (Cons!72297 (h!78745 testedP!204) (++!17293 (t!386990 testedP!204) (Cons!72297 (head!15400 lt!2632459) Nil!72297))))))

(declare-fun b!7502435 () Bool)

(assert (=> b!7502435 (= e!4473016 (or (not (= (Cons!72297 (head!15400 lt!2632459) Nil!72297) Nil!72297)) (= lt!2632523 testedP!204)))))

(declare-fun b!7502432 () Bool)

(assert (=> b!7502432 (= e!4473017 (Cons!72297 (head!15400 lt!2632459) Nil!72297))))

(declare-fun b!7502434 () Bool)

(declare-fun res!3009758 () Bool)

(assert (=> b!7502434 (=> (not res!3009758) (not e!4473016))))

(assert (=> b!7502434 (= res!3009758 (= (size!42235 lt!2632523) (+ (size!42235 testedP!204) (size!42235 (Cons!72297 (head!15400 lt!2632459) Nil!72297)))))))

(assert (= (and d!2302743 c!1384974) b!7502432))

(assert (= (and d!2302743 (not c!1384974)) b!7502433))

(assert (= (and d!2302743 res!3009757) b!7502434))

(assert (= (and b!7502434 res!3009758) b!7502435))

(declare-fun m!8083992 () Bool)

(assert (=> d!2302743 m!8083992))

(assert (=> d!2302743 m!8083940))

(declare-fun m!8083994 () Bool)

(assert (=> d!2302743 m!8083994))

(declare-fun m!8083996 () Bool)

(assert (=> b!7502433 m!8083996))

(declare-fun m!8083998 () Bool)

(assert (=> b!7502434 m!8083998))

(assert (=> b!7502434 m!8083858))

(declare-fun m!8084000 () Bool)

(assert (=> b!7502434 m!8084000))

(assert (=> b!7502344 d!2302743))

(declare-fun d!2302747 () Bool)

(assert (=> d!2302747 (isPrefix!5960 totalInput!779 totalInput!779)))

(declare-fun lt!2632526 () Unit!166226)

(declare-fun choose!58006 (List!72421 List!72421) Unit!166226)

(assert (=> d!2302747 (= lt!2632526 (choose!58006 totalInput!779 totalInput!779))))

(assert (=> d!2302747 (= (lemmaIsPrefixRefl!3809 totalInput!779 totalInput!779) lt!2632526)))

(declare-fun bs!1937754 () Bool)

(assert (= bs!1937754 d!2302747))

(assert (=> bs!1937754 m!8083882))

(declare-fun m!8084002 () Bool)

(assert (=> bs!1937754 m!8084002))

(assert (=> b!7502334 d!2302747))

(declare-fun b!7502439 () Bool)

(declare-fun e!4473019 () Bool)

(assert (=> b!7502439 (= e!4473019 (>= (size!42235 totalInput!779) (size!42235 totalInput!779)))))

(declare-fun b!7502436 () Bool)

(declare-fun e!4473018 () Bool)

(declare-fun e!4473020 () Bool)

(assert (=> b!7502436 (= e!4473018 e!4473020)))

(declare-fun res!3009760 () Bool)

(assert (=> b!7502436 (=> (not res!3009760) (not e!4473020))))

(assert (=> b!7502436 (= res!3009760 (not (is-Nil!72297 totalInput!779)))))

(declare-fun d!2302749 () Bool)

(assert (=> d!2302749 e!4473019))

(declare-fun res!3009762 () Bool)

(assert (=> d!2302749 (=> res!3009762 e!4473019)))

(declare-fun lt!2632529 () Bool)

(assert (=> d!2302749 (= res!3009762 (not lt!2632529))))

(assert (=> d!2302749 (= lt!2632529 e!4473018)))

(declare-fun res!3009761 () Bool)

(assert (=> d!2302749 (=> res!3009761 e!4473018)))

(assert (=> d!2302749 (= res!3009761 (is-Nil!72297 totalInput!779))))

(assert (=> d!2302749 (= (isPrefix!5960 totalInput!779 totalInput!779) lt!2632529)))

(declare-fun b!7502438 () Bool)

(assert (=> b!7502438 (= e!4473020 (isPrefix!5960 (tail!14967 totalInput!779) (tail!14967 totalInput!779)))))

(declare-fun b!7502437 () Bool)

(declare-fun res!3009759 () Bool)

(assert (=> b!7502437 (=> (not res!3009759) (not e!4473020))))

(assert (=> b!7502437 (= res!3009759 (= (head!15400 totalInput!779) (head!15400 totalInput!779)))))

(assert (= (and d!2302749 (not res!3009761)) b!7502436))

(assert (= (and b!7502436 res!3009760) b!7502437))

(assert (= (and b!7502437 res!3009759) b!7502438))

(assert (= (and d!2302749 (not res!3009762)) b!7502439))

(assert (=> b!7502439 m!8083892))

(assert (=> b!7502439 m!8083892))

(assert (=> b!7502438 m!8083954))

(assert (=> b!7502438 m!8083954))

(assert (=> b!7502438 m!8083954))

(assert (=> b!7502438 m!8083954))

(declare-fun m!8084004 () Bool)

(assert (=> b!7502438 m!8084004))

(assert (=> b!7502437 m!8083960))

(assert (=> b!7502437 m!8083960))

(assert (=> b!7502334 d!2302749))

(declare-fun d!2302751 () Bool)

(assert (=> d!2302751 (= totalInput!779 testedP!204)))

(declare-fun lt!2632533 () Unit!166226)

(declare-fun choose!58007 (List!72421 List!72421 List!72421) Unit!166226)

(assert (=> d!2302751 (= lt!2632533 (choose!58007 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2302751 (isPrefix!5960 totalInput!779 totalInput!779)))

(assert (=> d!2302751 (= (lemmaIsPrefixSameLengthThenSameList!1463 totalInput!779 testedP!204 totalInput!779) lt!2632533)))

(declare-fun bs!1937756 () Bool)

(assert (= bs!1937756 d!2302751))

(declare-fun m!8084008 () Bool)

(assert (=> bs!1937756 m!8084008))

(assert (=> bs!1937756 m!8083882))

(assert (=> b!7502334 d!2302751))

(declare-fun bs!1937757 () Bool)

(declare-fun b!7502444 () Bool)

(declare-fun d!2302755 () Bool)

(assert (= bs!1937757 (and b!7502444 d!2302755)))

(declare-fun lambda!464971 () Int)

(declare-fun lambda!464970 () Int)

(assert (=> bs!1937757 (not (= lambda!464971 lambda!464970))))

(declare-fun bs!1937758 () Bool)

(declare-fun b!7502445 () Bool)

(assert (= bs!1937758 (and b!7502445 d!2302755)))

(declare-fun lambda!464972 () Int)

(assert (=> bs!1937758 (not (= lambda!464972 lambda!464970))))

(declare-fun bs!1937759 () Bool)

(assert (= bs!1937759 (and b!7502445 b!7502444)))

(assert (=> bs!1937759 (= lambda!464972 lambda!464971)))

(declare-fun e!4473027 () Unit!166226)

(declare-fun Unit!166234 () Unit!166226)

(assert (=> b!7502444 (= e!4473027 Unit!166234)))

(declare-datatypes ((List!72424 0))(
  ( (Nil!72300) (Cons!72300 (h!78748 Context!16852) (t!386993 List!72424)) )
))
(declare-fun lt!2632552 () List!72424)

(declare-fun call!688613 () List!72424)

(assert (=> b!7502444 (= lt!2632552 call!688613)))

(declare-fun lt!2632557 () Unit!166226)

(declare-fun lemmaNotForallThenExists!486 (List!72424 Int) Unit!166226)

(assert (=> b!7502444 (= lt!2632557 (lemmaNotForallThenExists!486 lt!2632552 lambda!464970))))

(declare-fun call!688614 () Bool)

(assert (=> b!7502444 call!688614))

(declare-fun lt!2632556 () Unit!166226)

(assert (=> b!7502444 (= lt!2632556 lt!2632557)))

(declare-fun bm!688608 () Bool)

(declare-fun toList!11815 ((Set Context!16852)) List!72424)

(assert (=> bm!688608 (= call!688613 (toList!11815 z!3716))))

(declare-fun lt!2632555 () List!72424)

(declare-fun c!1384985 () Bool)

(declare-fun bm!688609 () Bool)

(declare-fun exists!4835 (List!72424 Int) Bool)

(assert (=> bm!688609 (= call!688614 (exists!4835 (ite c!1384985 lt!2632552 lt!2632555) (ite c!1384985 lambda!464971 lambda!464972)))))

(declare-fun lt!2632551 () Bool)

(declare-datatypes ((Option!17211 0))(
  ( (None!17210) (Some!17210 (v!54339 List!72421)) )
))
(declare-fun isEmpty!41295 (Option!17211) Bool)

(declare-fun getLanguageWitness!1029 ((Set Context!16852)) Option!17211)

(assert (=> d!2302755 (= lt!2632551 (isEmpty!41295 (getLanguageWitness!1029 z!3716)))))

(declare-fun forall!18253 ((Set Context!16852) Int) Bool)

(assert (=> d!2302755 (= lt!2632551 (forall!18253 z!3716 lambda!464970))))

(declare-fun lt!2632554 () Unit!166226)

(assert (=> d!2302755 (= lt!2632554 e!4473027)))

(assert (=> d!2302755 (= c!1384985 (not (forall!18253 z!3716 lambda!464970)))))

(assert (=> d!2302755 (= (lostCauseZipper!1362 z!3716) lt!2632551)))

(declare-fun Unit!166235 () Unit!166226)

(assert (=> b!7502445 (= e!4473027 Unit!166235)))

(assert (=> b!7502445 (= lt!2632555 call!688613)))

(declare-fun lt!2632553 () Unit!166226)

(declare-fun lemmaForallThenNotExists!453 (List!72424 Int) Unit!166226)

(assert (=> b!7502445 (= lt!2632553 (lemmaForallThenNotExists!453 lt!2632555 lambda!464970))))

(assert (=> b!7502445 (not call!688614)))

(declare-fun lt!2632550 () Unit!166226)

(assert (=> b!7502445 (= lt!2632550 lt!2632553)))

(assert (= (and d!2302755 c!1384985) b!7502444))

(assert (= (and d!2302755 (not c!1384985)) b!7502445))

(assert (= (or b!7502444 b!7502445) bm!688608))

(assert (= (or b!7502444 b!7502445) bm!688609))

(declare-fun m!8084010 () Bool)

(assert (=> d!2302755 m!8084010))

(assert (=> d!2302755 m!8084010))

(declare-fun m!8084012 () Bool)

(assert (=> d!2302755 m!8084012))

(declare-fun m!8084014 () Bool)

(assert (=> d!2302755 m!8084014))

(assert (=> d!2302755 m!8084014))

(declare-fun m!8084016 () Bool)

(assert (=> b!7502445 m!8084016))

(declare-fun m!8084018 () Bool)

(assert (=> bm!688608 m!8084018))

(declare-fun m!8084020 () Bool)

(assert (=> b!7502444 m!8084020))

(declare-fun m!8084022 () Bool)

(assert (=> bm!688609 m!8084022))

(assert (=> b!7502335 d!2302755))

(declare-fun d!2302757 () Bool)

(assert (=> d!2302757 (= testedSuffix!164 lt!2632459)))

(declare-fun lt!2632560 () Unit!166226)

(declare-fun choose!58008 (List!72421 List!72421 List!72421 List!72421 List!72421) Unit!166226)

(assert (=> d!2302757 (= lt!2632560 (choose!58008 testedP!204 testedSuffix!164 testedP!204 lt!2632459 totalInput!779))))

(assert (=> d!2302757 (isPrefix!5960 testedP!204 totalInput!779)))

(assert (=> d!2302757 (= (lemmaSamePrefixThenSameSuffix!2765 testedP!204 testedSuffix!164 testedP!204 lt!2632459 totalInput!779) lt!2632560)))

(declare-fun bs!1937760 () Bool)

(assert (= bs!1937760 d!2302757))

(declare-fun m!8084024 () Bool)

(assert (=> bs!1937760 m!8084024))

(assert (=> bs!1937760 m!8083886))

(assert (=> b!7502335 d!2302757))

(declare-fun d!2302759 () Bool)

(declare-fun lt!2632563 () List!72421)

(assert (=> d!2302759 (= (++!17293 testedP!204 lt!2632563) totalInput!779)))

(declare-fun e!4473030 () List!72421)

(assert (=> d!2302759 (= lt!2632563 e!4473030)))

(declare-fun c!1384988 () Bool)

(assert (=> d!2302759 (= c!1384988 (is-Cons!72297 testedP!204))))

(assert (=> d!2302759 (>= (size!42235 totalInput!779) (size!42235 testedP!204))))

(assert (=> d!2302759 (= (getSuffix!3462 totalInput!779 testedP!204) lt!2632563)))

(declare-fun b!7502450 () Bool)

(assert (=> b!7502450 (= e!4473030 (getSuffix!3462 (tail!14967 totalInput!779) (t!386990 testedP!204)))))

(declare-fun b!7502451 () Bool)

(assert (=> b!7502451 (= e!4473030 totalInput!779)))

(assert (= (and d!2302759 c!1384988) b!7502450))

(assert (= (and d!2302759 (not c!1384988)) b!7502451))

(declare-fun m!8084026 () Bool)

(assert (=> d!2302759 m!8084026))

(assert (=> d!2302759 m!8083892))

(assert (=> d!2302759 m!8083858))

(assert (=> b!7502450 m!8083954))

(assert (=> b!7502450 m!8083954))

(declare-fun m!8084028 () Bool)

(assert (=> b!7502450 m!8084028))

(assert (=> b!7502335 d!2302759))

(declare-fun b!7502455 () Bool)

(declare-fun e!4473032 () Bool)

(assert (=> b!7502455 (= e!4473032 (>= (size!42235 totalInput!779) (size!42235 testedP!204)))))

(declare-fun b!7502452 () Bool)

(declare-fun e!4473031 () Bool)

(declare-fun e!4473033 () Bool)

(assert (=> b!7502452 (= e!4473031 e!4473033)))

(declare-fun res!3009764 () Bool)

(assert (=> b!7502452 (=> (not res!3009764) (not e!4473033))))

(assert (=> b!7502452 (= res!3009764 (not (is-Nil!72297 totalInput!779)))))

(declare-fun d!2302761 () Bool)

(assert (=> d!2302761 e!4473032))

(declare-fun res!3009766 () Bool)

(assert (=> d!2302761 (=> res!3009766 e!4473032)))

(declare-fun lt!2632564 () Bool)

(assert (=> d!2302761 (= res!3009766 (not lt!2632564))))

(assert (=> d!2302761 (= lt!2632564 e!4473031)))

(declare-fun res!3009765 () Bool)

(assert (=> d!2302761 (=> res!3009765 e!4473031)))

(assert (=> d!2302761 (= res!3009765 (is-Nil!72297 testedP!204))))

(assert (=> d!2302761 (= (isPrefix!5960 testedP!204 totalInput!779) lt!2632564)))

(declare-fun b!7502454 () Bool)

(assert (=> b!7502454 (= e!4473033 (isPrefix!5960 (tail!14967 testedP!204) (tail!14967 totalInput!779)))))

(declare-fun b!7502453 () Bool)

(declare-fun res!3009763 () Bool)

(assert (=> b!7502453 (=> (not res!3009763) (not e!4473033))))

(assert (=> b!7502453 (= res!3009763 (= (head!15400 testedP!204) (head!15400 totalInput!779)))))

(assert (= (and d!2302761 (not res!3009765)) b!7502452))

(assert (= (and b!7502452 res!3009764) b!7502453))

(assert (= (and b!7502453 res!3009763) b!7502454))

(assert (= (and d!2302761 (not res!3009766)) b!7502455))

(assert (=> b!7502455 m!8083892))

(assert (=> b!7502455 m!8083858))

(declare-fun m!8084030 () Bool)

(assert (=> b!7502454 m!8084030))

(assert (=> b!7502454 m!8083954))

(assert (=> b!7502454 m!8084030))

(assert (=> b!7502454 m!8083954))

(declare-fun m!8084032 () Bool)

(assert (=> b!7502454 m!8084032))

(declare-fun m!8084034 () Bool)

(assert (=> b!7502453 m!8084034))

(assert (=> b!7502453 m!8083960))

(assert (=> b!7502340 d!2302761))

(declare-fun b!7502459 () Bool)

(declare-fun e!4473035 () Bool)

(assert (=> b!7502459 (= e!4473035 (>= (size!42235 lt!2632456) (size!42235 testedP!204)))))

(declare-fun b!7502456 () Bool)

(declare-fun e!4473034 () Bool)

(declare-fun e!4473036 () Bool)

(assert (=> b!7502456 (= e!4473034 e!4473036)))

(declare-fun res!3009768 () Bool)

(assert (=> b!7502456 (=> (not res!3009768) (not e!4473036))))

(assert (=> b!7502456 (= res!3009768 (not (is-Nil!72297 lt!2632456)))))

(declare-fun d!2302763 () Bool)

(assert (=> d!2302763 e!4473035))

(declare-fun res!3009770 () Bool)

(assert (=> d!2302763 (=> res!3009770 e!4473035)))

(declare-fun lt!2632565 () Bool)

(assert (=> d!2302763 (= res!3009770 (not lt!2632565))))

(assert (=> d!2302763 (= lt!2632565 e!4473034)))

(declare-fun res!3009769 () Bool)

(assert (=> d!2302763 (=> res!3009769 e!4473034)))

(assert (=> d!2302763 (= res!3009769 (is-Nil!72297 testedP!204))))

(assert (=> d!2302763 (= (isPrefix!5960 testedP!204 lt!2632456) lt!2632565)))

(declare-fun b!7502458 () Bool)

(assert (=> b!7502458 (= e!4473036 (isPrefix!5960 (tail!14967 testedP!204) (tail!14967 lt!2632456)))))

(declare-fun b!7502457 () Bool)

(declare-fun res!3009767 () Bool)

(assert (=> b!7502457 (=> (not res!3009767) (not e!4473036))))

(assert (=> b!7502457 (= res!3009767 (= (head!15400 testedP!204) (head!15400 lt!2632456)))))

(assert (= (and d!2302763 (not res!3009769)) b!7502456))

(assert (= (and b!7502456 res!3009768) b!7502457))

(assert (= (and b!7502457 res!3009767) b!7502458))

(assert (= (and d!2302763 (not res!3009770)) b!7502459))

(declare-fun m!8084036 () Bool)

(assert (=> b!7502459 m!8084036))

(assert (=> b!7502459 m!8083858))

(assert (=> b!7502458 m!8084030))

(declare-fun m!8084038 () Bool)

(assert (=> b!7502458 m!8084038))

(assert (=> b!7502458 m!8084030))

(assert (=> b!7502458 m!8084038))

(declare-fun m!8084040 () Bool)

(assert (=> b!7502458 m!8084040))

(assert (=> b!7502457 m!8084034))

(declare-fun m!8084042 () Bool)

(assert (=> b!7502457 m!8084042))

(assert (=> b!7502340 d!2302763))

(declare-fun d!2302765 () Bool)

(assert (=> d!2302765 (isPrefix!5960 testedP!204 (++!17293 testedP!204 testedSuffix!164))))

(declare-fun lt!2632568 () Unit!166226)

(declare-fun choose!58009 (List!72421 List!72421) Unit!166226)

(assert (=> d!2302765 (= lt!2632568 (choose!58009 testedP!204 testedSuffix!164))))

(assert (=> d!2302765 (= (lemmaConcatTwoListThenFirstIsPrefix!3673 testedP!204 testedSuffix!164) lt!2632568)))

(declare-fun bs!1937761 () Bool)

(assert (= bs!1937761 d!2302765))

(assert (=> bs!1937761 m!8083856))

(assert (=> bs!1937761 m!8083856))

(declare-fun m!8084044 () Bool)

(assert (=> bs!1937761 m!8084044))

(declare-fun m!8084046 () Bool)

(assert (=> bs!1937761 m!8084046))

(assert (=> b!7502340 d!2302765))

(declare-fun d!2302767 () Bool)

(declare-fun lambda!464975 () Int)

(declare-fun forall!18254 (List!72420 Int) Bool)

(assert (=> d!2302767 (= (inv!92401 setElem!56855) (forall!18254 (exprs!8926 setElem!56855) lambda!464975))))

(declare-fun bs!1937762 () Bool)

(assert (= bs!1937762 d!2302767))

(declare-fun m!8084048 () Bool)

(assert (=> bs!1937762 m!8084048))

(assert (=> setNonEmpty!56855 d!2302767))

(declare-fun d!2302769 () Bool)

(assert (=> d!2302769 (<= (size!42235 testedP!204) (size!42235 totalInput!779))))

(declare-fun lt!2632571 () Unit!166226)

(declare-fun choose!58010 (List!72421 List!72421) Unit!166226)

(assert (=> d!2302769 (= lt!2632571 (choose!58010 testedP!204 totalInput!779))))

(assert (=> d!2302769 (isPrefix!5960 testedP!204 totalInput!779)))

(assert (=> d!2302769 (= (lemmaIsPrefixThenSmallerEqSize!965 testedP!204 totalInput!779) lt!2632571)))

(declare-fun bs!1937763 () Bool)

(assert (= bs!1937763 d!2302769))

(assert (=> bs!1937763 m!8083858))

(assert (=> bs!1937763 m!8083892))

(declare-fun m!8084050 () Bool)

(assert (=> bs!1937763 m!8084050))

(assert (=> bs!1937763 m!8083886))

(assert (=> b!7502336 d!2302769))

(declare-fun d!2302771 () Bool)

(declare-fun e!4473037 () Bool)

(assert (=> d!2302771 e!4473037))

(declare-fun res!3009771 () Bool)

(assert (=> d!2302771 (=> (not res!3009771) (not e!4473037))))

(declare-fun lt!2632572 () List!72421)

(assert (=> d!2302771 (= res!3009771 (= (content!15279 lt!2632572) (set.union (content!15279 testedP!204) (content!15279 testedSuffix!164))))))

(declare-fun e!4473038 () List!72421)

(assert (=> d!2302771 (= lt!2632572 e!4473038)))

(declare-fun c!1384989 () Bool)

(assert (=> d!2302771 (= c!1384989 (is-Nil!72297 testedP!204))))

(assert (=> d!2302771 (= (++!17293 testedP!204 testedSuffix!164) lt!2632572)))

(declare-fun b!7502461 () Bool)

(assert (=> b!7502461 (= e!4473038 (Cons!72297 (h!78745 testedP!204) (++!17293 (t!386990 testedP!204) testedSuffix!164)))))

(declare-fun b!7502463 () Bool)

(assert (=> b!7502463 (= e!4473037 (or (not (= testedSuffix!164 Nil!72297)) (= lt!2632572 testedP!204)))))

(declare-fun b!7502460 () Bool)

(assert (=> b!7502460 (= e!4473038 testedSuffix!164)))

(declare-fun b!7502462 () Bool)

(declare-fun res!3009772 () Bool)

(assert (=> b!7502462 (=> (not res!3009772) (not e!4473037))))

(assert (=> b!7502462 (= res!3009772 (= (size!42235 lt!2632572) (+ (size!42235 testedP!204) (size!42235 testedSuffix!164))))))

(assert (= (and d!2302771 c!1384989) b!7502460))

(assert (= (and d!2302771 (not c!1384989)) b!7502461))

(assert (= (and d!2302771 res!3009771) b!7502462))

(assert (= (and b!7502462 res!3009772) b!7502463))

(declare-fun m!8084052 () Bool)

(assert (=> d!2302771 m!8084052))

(assert (=> d!2302771 m!8083940))

(declare-fun m!8084054 () Bool)

(assert (=> d!2302771 m!8084054))

(declare-fun m!8084056 () Bool)

(assert (=> b!7502461 m!8084056))

(declare-fun m!8084058 () Bool)

(assert (=> b!7502462 m!8084058))

(assert (=> b!7502462 m!8083858))

(declare-fun m!8084060 () Bool)

(assert (=> b!7502462 m!8084060))

(assert (=> start!725872 d!2302771))

(declare-fun d!2302773 () Bool)

(declare-fun lt!2632575 () Int)

(assert (=> d!2302773 (>= lt!2632575 0)))

(declare-fun e!4473041 () Int)

(assert (=> d!2302773 (= lt!2632575 e!4473041)))

(declare-fun c!1384992 () Bool)

(assert (=> d!2302773 (= c!1384992 (is-Nil!72297 testedP!204))))

(assert (=> d!2302773 (= (size!42235 testedP!204) lt!2632575)))

(declare-fun b!7502468 () Bool)

(assert (=> b!7502468 (= e!4473041 0)))

(declare-fun b!7502469 () Bool)

(assert (=> b!7502469 (= e!4473041 (+ 1 (size!42235 (t!386990 testedP!204))))))

(assert (= (and d!2302773 c!1384992) b!7502468))

(assert (= (and d!2302773 (not c!1384992)) b!7502469))

(declare-fun m!8084062 () Bool)

(assert (=> b!7502469 m!8084062))

(assert (=> b!7502337 d!2302773))

(declare-fun d!2302775 () Bool)

(declare-fun lt!2632576 () Int)

(assert (=> d!2302775 (>= lt!2632576 0)))

(declare-fun e!4473042 () Int)

(assert (=> d!2302775 (= lt!2632576 e!4473042)))

(declare-fun c!1384993 () Bool)

(assert (=> d!2302775 (= c!1384993 (is-Nil!72297 totalInput!779))))

(assert (=> d!2302775 (= (size!42235 totalInput!779) lt!2632576)))

(declare-fun b!7502470 () Bool)

(assert (=> b!7502470 (= e!4473042 0)))

(declare-fun b!7502471 () Bool)

(assert (=> b!7502471 (= e!4473042 (+ 1 (size!42235 (t!386990 totalInput!779))))))

(assert (= (and d!2302775 c!1384993) b!7502470))

(assert (= (and d!2302775 (not c!1384993)) b!7502471))

(declare-fun m!8084064 () Bool)

(assert (=> b!7502471 m!8084064))

(assert (=> b!7502343 d!2302775))

(declare-fun b!7502476 () Bool)

(declare-fun e!4473045 () Bool)

(declare-fun tp!2177858 () Bool)

(declare-fun tp!2177859 () Bool)

(assert (=> b!7502476 (= e!4473045 (and tp!2177858 tp!2177859))))

(assert (=> b!7502339 (= tp!2177837 e!4473045)))

(assert (= (and b!7502339 (is-Cons!72296 (exprs!8926 setElem!56855))) b!7502476))

(declare-fun b!7502481 () Bool)

(declare-fun e!4473048 () Bool)

(declare-fun tp!2177862 () Bool)

(assert (=> b!7502481 (= e!4473048 (and tp_is_empty!49669 tp!2177862))))

(assert (=> b!7502341 (= tp!2177838 e!4473048)))

(assert (= (and b!7502341 (is-Cons!72297 (t!386990 testedSuffix!164))) b!7502481))

(declare-fun b!7502482 () Bool)

(declare-fun e!4473049 () Bool)

(declare-fun tp!2177863 () Bool)

(assert (=> b!7502482 (= e!4473049 (and tp_is_empty!49669 tp!2177863))))

(assert (=> b!7502332 (= tp!2177836 e!4473049)))

(assert (= (and b!7502332 (is-Cons!72297 (t!386990 testedP!204))) b!7502482))

(declare-fun condSetEmpty!56861 () Bool)

(assert (=> setNonEmpty!56855 (= condSetEmpty!56861 (= setRest!56855 (as set.empty (Set Context!16852))))))

(declare-fun setRes!56861 () Bool)

(assert (=> setNonEmpty!56855 (= tp!2177834 setRes!56861)))

(declare-fun setIsEmpty!56861 () Bool)

(assert (=> setIsEmpty!56861 setRes!56861))

(declare-fun setNonEmpty!56861 () Bool)

(declare-fun setElem!56861 () Context!16852)

(declare-fun e!4473052 () Bool)

(declare-fun tp!2177869 () Bool)

(assert (=> setNonEmpty!56861 (= setRes!56861 (and tp!2177869 (inv!92401 setElem!56861) e!4473052))))

(declare-fun setRest!56861 () (Set Context!16852))

(assert (=> setNonEmpty!56861 (= setRest!56855 (set.union (set.insert setElem!56861 (as set.empty (Set Context!16852))) setRest!56861))))

(declare-fun b!7502487 () Bool)

(declare-fun tp!2177868 () Bool)

(assert (=> b!7502487 (= e!4473052 tp!2177868)))

(assert (= (and setNonEmpty!56855 condSetEmpty!56861) setIsEmpty!56861))

(assert (= (and setNonEmpty!56855 (not condSetEmpty!56861)) setNonEmpty!56861))

(assert (= setNonEmpty!56861 b!7502487))

(declare-fun m!8084066 () Bool)

(assert (=> setNonEmpty!56861 m!8084066))

(declare-fun b!7502488 () Bool)

(declare-fun e!4473053 () Bool)

(declare-fun tp!2177870 () Bool)

(assert (=> b!7502488 (= e!4473053 (and tp_is_empty!49669 tp!2177870))))

(assert (=> b!7502342 (= tp!2177835 e!4473053)))

(assert (= (and b!7502342 (is-Cons!72297 (t!386990 totalInput!779))) b!7502488))

(push 1)

(assert (not d!2302725))

(assert (not d!2302759))

(assert (not bm!688608))

(assert (not d!2302765))

(assert (not b!7502422))

(assert (not d!2302743))

(assert (not b!7502455))

(assert (not bm!688609))

(assert (not d!2302737))

(assert (not b!7502402))

(assert (not b!7502438))

(assert (not b!7502476))

(assert (not d!2302767))

(assert (not setNonEmpty!56861))

(assert (not b!7502458))

(assert (not b!7502423))

(assert (not b!7502459))

(assert (not b!7502471))

(assert (not d!2302757))

(assert tp_is_empty!49669)

(assert (not b!7502457))

(assert (not b!7502437))

(assert (not b!7502433))

(assert (not b!7502482))

(assert (not b!7502453))

(assert (not d!2302751))

(assert (not b!7502401))

(assert (not b!7502488))

(assert (not d!2302771))

(assert (not b!7502439))

(assert (not b!7502434))

(assert (not b!7502454))

(assert (not b!7502444))

(assert (not b!7502462))

(assert (not b!7502481))

(assert (not b!7502487))

(assert (not d!2302769))

(assert (not b!7502450))

(assert (not b!7502461))

(assert (not b!7502421))

(assert (not b!7502469))

(assert (not d!2302747))

(assert (not b!7502445))

(assert (not d!2302755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

