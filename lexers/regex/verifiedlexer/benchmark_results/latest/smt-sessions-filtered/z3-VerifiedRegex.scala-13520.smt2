; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728480 () Bool)

(assert start!728480)

(declare-fun b!7528506 () Bool)

(declare-fun res!3017336 () Bool)

(declare-fun e!4487220 () Bool)

(assert (=> b!7528506 (=> (not res!3017336) (not e!4487220))))

(declare-fun lt!2639762 () Int)

(declare-fun lt!2639765 () Int)

(assert (=> b!7528506 (= res!3017336 (not (= lt!2639762 lt!2639765)))))

(declare-fun b!7528507 () Bool)

(assert (=> b!7528507 (= e!4487220 (not false))))

(declare-fun lt!2639764 () Int)

(declare-datatypes ((C!39996 0))(
  ( (C!39997 (val!30438 Int)) )
))
(declare-datatypes ((List!72718 0))(
  ( (Nil!72594) (Cons!72594 (h!79042 C!39996) (t!387425 List!72718)) )
))
(declare-fun input!6727 () List!72718)

(declare-fun lt!2639763 () Int)

(declare-datatypes ((Regex!19835 0))(
  ( (ElementMatch!19835 (c!1390626 C!39996)) (Concat!28680 (regOne!40182 Regex!19835) (regTwo!40182 Regex!19835)) (EmptyExpr!19835) (Star!19835 (reg!20164 Regex!19835)) (EmptyLang!19835) (Union!19835 (regOne!40183 Regex!19835) (regTwo!40183 Regex!19835)) )
))
(declare-fun baseR!93 () Regex!19835)

(declare-fun size!42331 (List!72718) Int)

(declare-datatypes ((tuple2!68812 0))(
  ( (tuple2!68813 (_1!37709 List!72718) (_2!37709 List!72718)) )
))
(declare-fun findLongestMatchInner!2114 (Regex!19835 List!72718 Int List!72718 List!72718 Int) tuple2!68812)

(declare-fun getSuffix!3527 (List!72718 List!72718) List!72718)

(assert (=> b!7528507 (>= (size!42331 (_1!37709 (findLongestMatchInner!2114 baseR!93 Nil!72594 lt!2639764 (getSuffix!3527 input!6727 Nil!72594) input!6727 lt!2639763))) lt!2639762)))

(declare-datatypes ((Unit!166580 0))(
  ( (Unit!166581) )
))
(declare-fun lt!2639766 () Unit!166580)

(declare-fun bigger!57 () List!72718)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!19 (Regex!19835 Regex!19835 List!72718 List!72718 List!72718) Unit!166580)

(assert (=> b!7528507 (= lt!2639766 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!19 baseR!93 baseR!93 input!6727 Nil!72594 bigger!57))))

(declare-fun b!7528508 () Bool)

(declare-fun e!4487215 () Bool)

(declare-fun tp_is_empty!50025 () Bool)

(declare-fun tp!2188052 () Bool)

(assert (=> b!7528508 (= e!4487215 (and tp_is_empty!50025 tp!2188052))))

(declare-fun b!7528509 () Bool)

(declare-fun res!3017337 () Bool)

(declare-fun e!4487216 () Bool)

(assert (=> b!7528509 (=> (not res!3017337) (not e!4487216))))

(declare-fun returnP!57 () List!72718)

(declare-fun isPrefix!6041 (List!72718 List!72718) Bool)

(assert (=> b!7528509 (= res!3017337 (isPrefix!6041 returnP!57 input!6727))))

(declare-fun b!7528510 () Bool)

(declare-fun e!4487218 () Bool)

(declare-fun tp!2188057 () Bool)

(declare-fun tp!2188055 () Bool)

(assert (=> b!7528510 (= e!4487218 (and tp!2188057 tp!2188055))))

(declare-fun b!7528511 () Bool)

(declare-fun res!3017334 () Bool)

(assert (=> b!7528511 (=> (not res!3017334) (not e!4487216))))

(assert (=> b!7528511 (= res!3017334 (isPrefix!6041 bigger!57 input!6727))))

(declare-fun b!7528512 () Bool)

(declare-fun e!4487221 () Bool)

(declare-fun tp!2188050 () Bool)

(assert (=> b!7528512 (= e!4487221 (and tp_is_empty!50025 tp!2188050))))

(declare-fun b!7528513 () Bool)

(declare-fun e!4487217 () Bool)

(assert (=> b!7528513 (= e!4487216 e!4487217)))

(declare-fun res!3017340 () Bool)

(assert (=> b!7528513 (=> (not res!3017340) (not e!4487217))))

(assert (=> b!7528513 (= res!3017340 (>= lt!2639762 lt!2639765))))

(assert (=> b!7528513 (= lt!2639765 (size!42331 returnP!57))))

(assert (=> b!7528513 (= lt!2639762 (size!42331 bigger!57))))

(declare-fun res!3017338 () Bool)

(assert (=> start!728480 (=> (not res!3017338) (not e!4487216))))

(declare-fun validRegex!10263 (Regex!19835) Bool)

(assert (=> start!728480 (= res!3017338 (validRegex!10263 baseR!93))))

(assert (=> start!728480 e!4487216))

(assert (=> start!728480 e!4487218))

(assert (=> start!728480 e!4487215))

(assert (=> start!728480 e!4487221))

(declare-fun e!4487219 () Bool)

(assert (=> start!728480 e!4487219))

(declare-fun b!7528514 () Bool)

(declare-fun tp!2188056 () Bool)

(assert (=> b!7528514 (= e!4487219 (and tp_is_empty!50025 tp!2188056))))

(declare-fun b!7528515 () Bool)

(assert (=> b!7528515 (= e!4487218 tp_is_empty!50025)))

(declare-fun b!7528516 () Bool)

(declare-fun tp!2188054 () Bool)

(declare-fun tp!2188051 () Bool)

(assert (=> b!7528516 (= e!4487218 (and tp!2188054 tp!2188051))))

(declare-fun b!7528517 () Bool)

(declare-fun res!3017339 () Bool)

(assert (=> b!7528517 (=> (not res!3017339) (not e!4487220))))

(declare-fun matchR!9439 (Regex!19835 List!72718) Bool)

(assert (=> b!7528517 (= res!3017339 (matchR!9439 baseR!93 bigger!57))))

(declare-fun b!7528518 () Bool)

(assert (=> b!7528518 (= e!4487217 e!4487220)))

(declare-fun res!3017335 () Bool)

(assert (=> b!7528518 (=> (not res!3017335) (not e!4487220))))

(assert (=> b!7528518 (= res!3017335 (= (_1!37709 (findLongestMatchInner!2114 baseR!93 Nil!72594 lt!2639764 input!6727 input!6727 lt!2639763)) returnP!57))))

(assert (=> b!7528518 (= lt!2639763 (size!42331 input!6727))))

(assert (=> b!7528518 (= lt!2639764 (size!42331 Nil!72594))))

(declare-fun b!7528519 () Bool)

(declare-fun tp!2188053 () Bool)

(assert (=> b!7528519 (= e!4487218 tp!2188053)))

(assert (= (and start!728480 res!3017338) b!7528509))

(assert (= (and b!7528509 res!3017337) b!7528511))

(assert (= (and b!7528511 res!3017334) b!7528513))

(assert (= (and b!7528513 res!3017340) b!7528518))

(assert (= (and b!7528518 res!3017335) b!7528506))

(assert (= (and b!7528506 res!3017336) b!7528517))

(assert (= (and b!7528517 res!3017339) b!7528507))

(get-info :version)

(assert (= (and start!728480 ((_ is ElementMatch!19835) baseR!93)) b!7528515))

(assert (= (and start!728480 ((_ is Concat!28680) baseR!93)) b!7528516))

(assert (= (and start!728480 ((_ is Star!19835) baseR!93)) b!7528519))

(assert (= (and start!728480 ((_ is Union!19835) baseR!93)) b!7528510))

(assert (= (and start!728480 ((_ is Cons!72594) returnP!57)) b!7528508))

(assert (= (and start!728480 ((_ is Cons!72594) input!6727)) b!7528512))

(assert (= (and start!728480 ((_ is Cons!72594) bigger!57)) b!7528514))

(declare-fun m!8102860 () Bool)

(assert (=> start!728480 m!8102860))

(declare-fun m!8102862 () Bool)

(assert (=> b!7528517 m!8102862))

(declare-fun m!8102864 () Bool)

(assert (=> b!7528513 m!8102864))

(declare-fun m!8102866 () Bool)

(assert (=> b!7528513 m!8102866))

(declare-fun m!8102868 () Bool)

(assert (=> b!7528507 m!8102868))

(assert (=> b!7528507 m!8102868))

(declare-fun m!8102870 () Bool)

(assert (=> b!7528507 m!8102870))

(declare-fun m!8102872 () Bool)

(assert (=> b!7528507 m!8102872))

(declare-fun m!8102874 () Bool)

(assert (=> b!7528507 m!8102874))

(declare-fun m!8102876 () Bool)

(assert (=> b!7528509 m!8102876))

(declare-fun m!8102878 () Bool)

(assert (=> b!7528511 m!8102878))

(declare-fun m!8102880 () Bool)

(assert (=> b!7528518 m!8102880))

(declare-fun m!8102882 () Bool)

(assert (=> b!7528518 m!8102882))

(declare-fun m!8102884 () Bool)

(assert (=> b!7528518 m!8102884))

(check-sat (not b!7528519) (not b!7528511) (not b!7528509) (not b!7528510) (not b!7528514) (not b!7528507) (not b!7528517) (not b!7528512) (not b!7528513) (not b!7528518) (not b!7528508) tp_is_empty!50025 (not start!728480) (not b!7528516))
(check-sat)
(get-model)

(declare-fun b!7528529 () Bool)

(declare-fun res!3017351 () Bool)

(declare-fun e!4487229 () Bool)

(assert (=> b!7528529 (=> (not res!3017351) (not e!4487229))))

(declare-fun head!15455 (List!72718) C!39996)

(assert (=> b!7528529 (= res!3017351 (= (head!15455 bigger!57) (head!15455 input!6727)))))

(declare-fun b!7528531 () Bool)

(declare-fun e!4487230 () Bool)

(assert (=> b!7528531 (= e!4487230 (>= (size!42331 input!6727) (size!42331 bigger!57)))))

(declare-fun b!7528530 () Bool)

(declare-fun tail!15015 (List!72718) List!72718)

(assert (=> b!7528530 (= e!4487229 (isPrefix!6041 (tail!15015 bigger!57) (tail!15015 input!6727)))))

(declare-fun d!2309631 () Bool)

(assert (=> d!2309631 e!4487230))

(declare-fun res!3017349 () Bool)

(assert (=> d!2309631 (=> res!3017349 e!4487230)))

(declare-fun lt!2639769 () Bool)

(assert (=> d!2309631 (= res!3017349 (not lt!2639769))))

(declare-fun e!4487228 () Bool)

(assert (=> d!2309631 (= lt!2639769 e!4487228)))

(declare-fun res!3017352 () Bool)

(assert (=> d!2309631 (=> res!3017352 e!4487228)))

(assert (=> d!2309631 (= res!3017352 ((_ is Nil!72594) bigger!57))))

(assert (=> d!2309631 (= (isPrefix!6041 bigger!57 input!6727) lt!2639769)))

(declare-fun b!7528528 () Bool)

(assert (=> b!7528528 (= e!4487228 e!4487229)))

(declare-fun res!3017350 () Bool)

(assert (=> b!7528528 (=> (not res!3017350) (not e!4487229))))

(assert (=> b!7528528 (= res!3017350 (not ((_ is Nil!72594) input!6727)))))

(assert (= (and d!2309631 (not res!3017352)) b!7528528))

(assert (= (and b!7528528 res!3017350) b!7528529))

(assert (= (and b!7528529 res!3017351) b!7528530))

(assert (= (and d!2309631 (not res!3017349)) b!7528531))

(declare-fun m!8102886 () Bool)

(assert (=> b!7528529 m!8102886))

(declare-fun m!8102888 () Bool)

(assert (=> b!7528529 m!8102888))

(assert (=> b!7528531 m!8102882))

(assert (=> b!7528531 m!8102866))

(declare-fun m!8102890 () Bool)

(assert (=> b!7528530 m!8102890))

(declare-fun m!8102892 () Bool)

(assert (=> b!7528530 m!8102892))

(assert (=> b!7528530 m!8102890))

(assert (=> b!7528530 m!8102892))

(declare-fun m!8102894 () Bool)

(assert (=> b!7528530 m!8102894))

(assert (=> b!7528511 d!2309631))

(declare-fun d!2309633 () Bool)

(declare-fun lt!2639772 () Int)

(assert (=> d!2309633 (>= lt!2639772 0)))

(declare-fun e!4487233 () Int)

(assert (=> d!2309633 (= lt!2639772 e!4487233)))

(declare-fun c!1390629 () Bool)

(assert (=> d!2309633 (= c!1390629 ((_ is Nil!72594) (_1!37709 (findLongestMatchInner!2114 baseR!93 Nil!72594 lt!2639764 (getSuffix!3527 input!6727 Nil!72594) input!6727 lt!2639763))))))

(assert (=> d!2309633 (= (size!42331 (_1!37709 (findLongestMatchInner!2114 baseR!93 Nil!72594 lt!2639764 (getSuffix!3527 input!6727 Nil!72594) input!6727 lt!2639763))) lt!2639772)))

(declare-fun b!7528536 () Bool)

(assert (=> b!7528536 (= e!4487233 0)))

(declare-fun b!7528537 () Bool)

(assert (=> b!7528537 (= e!4487233 (+ 1 (size!42331 (t!387425 (_1!37709 (findLongestMatchInner!2114 baseR!93 Nil!72594 lt!2639764 (getSuffix!3527 input!6727 Nil!72594) input!6727 lt!2639763))))))))

(assert (= (and d!2309633 c!1390629) b!7528536))

(assert (= (and d!2309633 (not c!1390629)) b!7528537))

(declare-fun m!8102896 () Bool)

(assert (=> b!7528537 m!8102896))

(assert (=> b!7528507 d!2309633))

(declare-fun bm!690788 () Bool)

(declare-fun call!690800 () Unit!166580)

(declare-fun lemmaIsPrefixRefl!3862 (List!72718 List!72718) Unit!166580)

(assert (=> bm!690788 (= call!690800 (lemmaIsPrefixRefl!3862 input!6727 input!6727))))

(declare-fun b!7528764 () Bool)

(declare-fun e!4487361 () tuple2!68812)

(assert (=> b!7528764 (= e!4487361 (tuple2!68813 Nil!72594 input!6727))))

(declare-fun b!7528765 () Bool)

(declare-fun e!4487358 () tuple2!68812)

(declare-fun lt!2639961 () tuple2!68812)

(assert (=> b!7528765 (= e!4487358 lt!2639961)))

(declare-fun b!7528766 () Bool)

(declare-fun e!4487363 () Unit!166580)

(declare-fun Unit!166585 () Unit!166580)

(assert (=> b!7528766 (= e!4487363 Unit!166585)))

(declare-fun lt!2639982 () Unit!166580)

(assert (=> b!7528766 (= lt!2639982 call!690800)))

(declare-fun call!690797 () Bool)

(assert (=> b!7528766 call!690797))

(declare-fun lt!2639976 () Unit!166580)

(assert (=> b!7528766 (= lt!2639976 lt!2639982)))

(declare-fun lt!2639968 () Unit!166580)

(declare-fun call!690793 () Unit!166580)

(assert (=> b!7528766 (= lt!2639968 call!690793)))

(assert (=> b!7528766 (= input!6727 Nil!72594)))

(declare-fun lt!2639983 () Unit!166580)

(assert (=> b!7528766 (= lt!2639983 lt!2639968)))

(assert (=> b!7528766 false))

(declare-fun b!7528767 () Bool)

(declare-fun e!4487364 () tuple2!68812)

(declare-fun e!4487362 () tuple2!68812)

(assert (=> b!7528767 (= e!4487364 e!4487362)))

(declare-fun c!1390695 () Bool)

(assert (=> b!7528767 (= c!1390695 (= lt!2639764 lt!2639763))))

(declare-fun d!2309635 () Bool)

(declare-fun e!4487360 () Bool)

(assert (=> d!2309635 e!4487360))

(declare-fun res!3017420 () Bool)

(assert (=> d!2309635 (=> (not res!3017420) (not e!4487360))))

(declare-fun lt!2639967 () tuple2!68812)

(declare-fun ++!17374 (List!72718 List!72718) List!72718)

(assert (=> d!2309635 (= res!3017420 (= (++!17374 (_1!37709 lt!2639967) (_2!37709 lt!2639967)) input!6727))))

(assert (=> d!2309635 (= lt!2639967 e!4487364)))

(declare-fun c!1390691 () Bool)

(declare-fun lostCause!1637 (Regex!19835) Bool)

(assert (=> d!2309635 (= c!1390691 (lostCause!1637 baseR!93))))

(declare-fun lt!2639978 () Unit!166580)

(declare-fun Unit!166586 () Unit!166580)

(assert (=> d!2309635 (= lt!2639978 Unit!166586)))

(assert (=> d!2309635 (= (getSuffix!3527 input!6727 Nil!72594) (getSuffix!3527 input!6727 Nil!72594))))

(declare-fun lt!2639970 () Unit!166580)

(declare-fun lt!2639971 () Unit!166580)

(assert (=> d!2309635 (= lt!2639970 lt!2639971)))

(declare-fun lt!2639979 () List!72718)

(assert (=> d!2309635 (= (getSuffix!3527 input!6727 Nil!72594) lt!2639979)))

(declare-fun lemmaSamePrefixThenSameSuffix!2821 (List!72718 List!72718 List!72718 List!72718 List!72718) Unit!166580)

(assert (=> d!2309635 (= lt!2639971 (lemmaSamePrefixThenSameSuffix!2821 Nil!72594 (getSuffix!3527 input!6727 Nil!72594) Nil!72594 lt!2639979 input!6727))))

(assert (=> d!2309635 (= lt!2639979 (getSuffix!3527 input!6727 Nil!72594))))

(declare-fun lt!2639987 () Unit!166580)

(declare-fun lt!2639988 () Unit!166580)

(assert (=> d!2309635 (= lt!2639987 lt!2639988)))

(assert (=> d!2309635 (isPrefix!6041 Nil!72594 (++!17374 Nil!72594 (getSuffix!3527 input!6727 Nil!72594)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3735 (List!72718 List!72718) Unit!166580)

(assert (=> d!2309635 (= lt!2639988 (lemmaConcatTwoListThenFirstIsPrefix!3735 Nil!72594 (getSuffix!3527 input!6727 Nil!72594)))))

(assert (=> d!2309635 (validRegex!10263 baseR!93)))

(assert (=> d!2309635 (= (findLongestMatchInner!2114 baseR!93 Nil!72594 lt!2639764 (getSuffix!3527 input!6727 Nil!72594) input!6727 lt!2639763) lt!2639967)))

(declare-fun b!7528768 () Bool)

(declare-fun c!1390693 () Bool)

(declare-fun call!690799 () Bool)

(assert (=> b!7528768 (= c!1390693 call!690799)))

(declare-fun lt!2639977 () Unit!166580)

(declare-fun lt!2639981 () Unit!166580)

(assert (=> b!7528768 (= lt!2639977 lt!2639981)))

(declare-fun lt!2639964 () C!39996)

(declare-fun lt!2639974 () List!72718)

(assert (=> b!7528768 (= (++!17374 (++!17374 Nil!72594 (Cons!72594 lt!2639964 Nil!72594)) lt!2639974) input!6727)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3171 (List!72718 C!39996 List!72718 List!72718) Unit!166580)

(assert (=> b!7528768 (= lt!2639981 (lemmaMoveElementToOtherListKeepsConcatEq!3171 Nil!72594 lt!2639964 lt!2639974 input!6727))))

(assert (=> b!7528768 (= lt!2639974 (tail!15015 (getSuffix!3527 input!6727 Nil!72594)))))

(assert (=> b!7528768 (= lt!2639964 (head!15455 (getSuffix!3527 input!6727 Nil!72594)))))

(declare-fun lt!2639973 () Unit!166580)

(declare-fun lt!2639965 () Unit!166580)

(assert (=> b!7528768 (= lt!2639973 lt!2639965)))

(assert (=> b!7528768 (isPrefix!6041 (++!17374 Nil!72594 (Cons!72594 (head!15455 (getSuffix!3527 input!6727 Nil!72594)) Nil!72594)) input!6727)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1140 (List!72718 List!72718) Unit!166580)

(assert (=> b!7528768 (= lt!2639965 (lemmaAddHeadSuffixToPrefixStillPrefix!1140 Nil!72594 input!6727))))

(declare-fun lt!2639985 () Unit!166580)

(declare-fun lt!2639986 () Unit!166580)

(assert (=> b!7528768 (= lt!2639985 lt!2639986)))

(assert (=> b!7528768 (= lt!2639986 (lemmaAddHeadSuffixToPrefixStillPrefix!1140 Nil!72594 input!6727))))

(declare-fun lt!2639962 () List!72718)

(assert (=> b!7528768 (= lt!2639962 (++!17374 Nil!72594 (Cons!72594 (head!15455 (getSuffix!3527 input!6727 Nil!72594)) Nil!72594)))))

(declare-fun lt!2639975 () Unit!166580)

(assert (=> b!7528768 (= lt!2639975 e!4487363)))

(declare-fun c!1390696 () Bool)

(assert (=> b!7528768 (= c!1390696 (= (size!42331 Nil!72594) (size!42331 input!6727)))))

(declare-fun lt!2639980 () Unit!166580)

(declare-fun lt!2639984 () Unit!166580)

(assert (=> b!7528768 (= lt!2639980 lt!2639984)))

(assert (=> b!7528768 (<= (size!42331 Nil!72594) (size!42331 input!6727))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1010 (List!72718 List!72718) Unit!166580)

(assert (=> b!7528768 (= lt!2639984 (lemmaIsPrefixThenSmallerEqSize!1010 Nil!72594 input!6727))))

(declare-fun e!4487359 () tuple2!68812)

(assert (=> b!7528768 (= e!4487362 e!4487359)))

(declare-fun b!7528769 () Bool)

(declare-fun e!4487365 () Bool)

(assert (=> b!7528769 (= e!4487365 (>= (size!42331 (_1!37709 lt!2639967)) (size!42331 Nil!72594)))))

(declare-fun bm!690789 () Bool)

(declare-fun call!690795 () C!39996)

(assert (=> bm!690789 (= call!690795 (head!15455 (getSuffix!3527 input!6727 Nil!72594)))))

(declare-fun b!7528770 () Bool)

(assert (=> b!7528770 (= e!4487358 (tuple2!68813 Nil!72594 (getSuffix!3527 input!6727 Nil!72594)))))

(declare-fun bm!690790 () Bool)

(declare-fun call!690794 () Regex!19835)

(declare-fun derivativeStep!5659 (Regex!19835 C!39996) Regex!19835)

(assert (=> bm!690790 (= call!690794 (derivativeStep!5659 baseR!93 call!690795))))

(declare-fun b!7528771 () Bool)

(declare-fun Unit!166589 () Unit!166580)

(assert (=> b!7528771 (= e!4487363 Unit!166589)))

(declare-fun bm!690791 () Bool)

(assert (=> bm!690791 (= call!690797 (isPrefix!6041 input!6727 input!6727))))

(declare-fun bm!690792 () Bool)

(declare-fun call!690798 () List!72718)

(declare-fun call!690796 () tuple2!68812)

(assert (=> bm!690792 (= call!690796 (findLongestMatchInner!2114 call!690794 lt!2639962 (+ lt!2639764 1) call!690798 input!6727 lt!2639763))))

(declare-fun bm!690793 () Bool)

(assert (=> bm!690793 (= call!690798 (tail!15015 (getSuffix!3527 input!6727 Nil!72594)))))

(declare-fun b!7528772 () Bool)

(declare-fun c!1390692 () Bool)

(assert (=> b!7528772 (= c!1390692 call!690799)))

(declare-fun lt!2639969 () Unit!166580)

(declare-fun lt!2639963 () Unit!166580)

(assert (=> b!7528772 (= lt!2639969 lt!2639963)))

(assert (=> b!7528772 (= input!6727 Nil!72594)))

(assert (=> b!7528772 (= lt!2639963 call!690793)))

(declare-fun lt!2639966 () Unit!166580)

(declare-fun lt!2639972 () Unit!166580)

(assert (=> b!7528772 (= lt!2639966 lt!2639972)))

(assert (=> b!7528772 call!690797))

(assert (=> b!7528772 (= lt!2639972 call!690800)))

(assert (=> b!7528772 (= e!4487362 e!4487361)))

(declare-fun b!7528773 () Bool)

(assert (=> b!7528773 (= e!4487359 e!4487358)))

(assert (=> b!7528773 (= lt!2639961 call!690796)))

(declare-fun c!1390694 () Bool)

(declare-fun isEmpty!41345 (List!72718) Bool)

(assert (=> b!7528773 (= c!1390694 (isEmpty!41345 (_1!37709 lt!2639961)))))

(declare-fun b!7528774 () Bool)

(assert (=> b!7528774 (= e!4487361 (tuple2!68813 Nil!72594 Nil!72594))))

(declare-fun bm!690794 () Bool)

(declare-fun nullable!8653 (Regex!19835) Bool)

(assert (=> bm!690794 (= call!690799 (nullable!8653 baseR!93))))

(declare-fun b!7528775 () Bool)

(assert (=> b!7528775 (= e!4487364 (tuple2!68813 Nil!72594 input!6727))))

(declare-fun b!7528776 () Bool)

(assert (=> b!7528776 (= e!4487359 call!690796)))

(declare-fun bm!690795 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1513 (List!72718 List!72718 List!72718) Unit!166580)

(assert (=> bm!690795 (= call!690793 (lemmaIsPrefixSameLengthThenSameList!1513 input!6727 Nil!72594 input!6727))))

(declare-fun b!7528777 () Bool)

(assert (=> b!7528777 (= e!4487360 e!4487365)))

(declare-fun res!3017421 () Bool)

(assert (=> b!7528777 (=> res!3017421 e!4487365)))

(assert (=> b!7528777 (= res!3017421 (isEmpty!41345 (_1!37709 lt!2639967)))))

(assert (= (and d!2309635 c!1390691) b!7528775))

(assert (= (and d!2309635 (not c!1390691)) b!7528767))

(assert (= (and b!7528767 c!1390695) b!7528772))

(assert (= (and b!7528767 (not c!1390695)) b!7528768))

(assert (= (and b!7528772 c!1390692) b!7528774))

(assert (= (and b!7528772 (not c!1390692)) b!7528764))

(assert (= (and b!7528768 c!1390696) b!7528766))

(assert (= (and b!7528768 (not c!1390696)) b!7528771))

(assert (= (and b!7528768 c!1390693) b!7528773))

(assert (= (and b!7528768 (not c!1390693)) b!7528776))

(assert (= (and b!7528773 c!1390694) b!7528770))

(assert (= (and b!7528773 (not c!1390694)) b!7528765))

(assert (= (or b!7528773 b!7528776) bm!690789))

(assert (= (or b!7528773 b!7528776) bm!690793))

(assert (= (or b!7528773 b!7528776) bm!690790))

(assert (= (or b!7528773 b!7528776) bm!690792))

(assert (= (or b!7528772 b!7528766) bm!690791))

(assert (= (or b!7528772 b!7528768) bm!690794))

(assert (= (or b!7528772 b!7528766) bm!690795))

(assert (= (or b!7528772 b!7528766) bm!690788))

(assert (= (and d!2309635 res!3017420) b!7528777))

(assert (= (and b!7528777 (not res!3017421)) b!7528769))

(declare-fun m!8103024 () Bool)

(assert (=> bm!690791 m!8103024))

(declare-fun m!8103026 () Bool)

(assert (=> bm!690795 m!8103026))

(assert (=> bm!690793 m!8102868))

(declare-fun m!8103028 () Bool)

(assert (=> bm!690793 m!8103028))

(assert (=> bm!690789 m!8102868))

(declare-fun m!8103030 () Bool)

(assert (=> bm!690789 m!8103030))

(declare-fun m!8103032 () Bool)

(assert (=> b!7528773 m!8103032))

(declare-fun m!8103034 () Bool)

(assert (=> b!7528768 m!8103034))

(declare-fun m!8103036 () Bool)

(assert (=> b!7528768 m!8103036))

(declare-fun m!8103038 () Bool)

(assert (=> b!7528768 m!8103038))

(declare-fun m!8103040 () Bool)

(assert (=> b!7528768 m!8103040))

(assert (=> b!7528768 m!8102882))

(declare-fun m!8103042 () Bool)

(assert (=> b!7528768 m!8103042))

(declare-fun m!8103044 () Bool)

(assert (=> b!7528768 m!8103044))

(assert (=> b!7528768 m!8102884))

(assert (=> b!7528768 m!8102868))

(assert (=> b!7528768 m!8103042))

(assert (=> b!7528768 m!8102868))

(assert (=> b!7528768 m!8103028))

(assert (=> b!7528768 m!8103034))

(assert (=> b!7528768 m!8102868))

(assert (=> b!7528768 m!8103030))

(assert (=> b!7528768 m!8102868))

(assert (=> b!7528768 m!8103030))

(assert (=> b!7528768 m!8103034))

(declare-fun m!8103046 () Bool)

(assert (=> b!7528768 m!8103046))

(declare-fun m!8103048 () Bool)

(assert (=> b!7528769 m!8103048))

(assert (=> b!7528769 m!8102884))

(assert (=> d!2309635 m!8102868))

(declare-fun m!8103050 () Bool)

(assert (=> d!2309635 m!8103050))

(declare-fun m!8103052 () Bool)

(assert (=> d!2309635 m!8103052))

(assert (=> d!2309635 m!8102868))

(declare-fun m!8103054 () Bool)

(assert (=> d!2309635 m!8103054))

(declare-fun m!8103056 () Bool)

(assert (=> d!2309635 m!8103056))

(declare-fun m!8103058 () Bool)

(assert (=> d!2309635 m!8103058))

(assert (=> d!2309635 m!8102868))

(declare-fun m!8103060 () Bool)

(assert (=> d!2309635 m!8103060))

(assert (=> d!2309635 m!8102860))

(assert (=> d!2309635 m!8102868))

(assert (=> d!2309635 m!8103056))

(declare-fun m!8103062 () Bool)

(assert (=> b!7528777 m!8103062))

(declare-fun m!8103064 () Bool)

(assert (=> bm!690792 m!8103064))

(declare-fun m!8103066 () Bool)

(assert (=> bm!690794 m!8103066))

(declare-fun m!8103068 () Bool)

(assert (=> bm!690788 m!8103068))

(declare-fun m!8103070 () Bool)

(assert (=> bm!690790 m!8103070))

(assert (=> b!7528507 d!2309635))

(declare-fun d!2309661 () Bool)

(declare-fun lt!2639991 () List!72718)

(assert (=> d!2309661 (= (++!17374 Nil!72594 lt!2639991) input!6727)))

(declare-fun e!4487368 () List!72718)

(assert (=> d!2309661 (= lt!2639991 e!4487368)))

(declare-fun c!1390699 () Bool)

(assert (=> d!2309661 (= c!1390699 ((_ is Cons!72594) Nil!72594))))

(assert (=> d!2309661 (>= (size!42331 input!6727) (size!42331 Nil!72594))))

(assert (=> d!2309661 (= (getSuffix!3527 input!6727 Nil!72594) lt!2639991)))

(declare-fun b!7528782 () Bool)

(assert (=> b!7528782 (= e!4487368 (getSuffix!3527 (tail!15015 input!6727) (t!387425 Nil!72594)))))

(declare-fun b!7528783 () Bool)

(assert (=> b!7528783 (= e!4487368 input!6727)))

(assert (= (and d!2309661 c!1390699) b!7528782))

(assert (= (and d!2309661 (not c!1390699)) b!7528783))

(declare-fun m!8103072 () Bool)

(assert (=> d!2309661 m!8103072))

(assert (=> d!2309661 m!8102882))

(assert (=> d!2309661 m!8102884))

(assert (=> b!7528782 m!8102892))

(assert (=> b!7528782 m!8102892))

(declare-fun m!8103074 () Bool)

(assert (=> b!7528782 m!8103074))

(assert (=> b!7528507 d!2309661))

(declare-fun d!2309663 () Bool)

(assert (=> d!2309663 (>= (size!42331 (_1!37709 (findLongestMatchInner!2114 baseR!93 Nil!72594 (size!42331 Nil!72594) (getSuffix!3527 input!6727 Nil!72594) input!6727 (size!42331 input!6727)))) (size!42331 bigger!57))))

(declare-fun lt!2639994 () Unit!166580)

(declare-fun choose!58262 (Regex!19835 Regex!19835 List!72718 List!72718 List!72718) Unit!166580)

(assert (=> d!2309663 (= lt!2639994 (choose!58262 baseR!93 baseR!93 input!6727 Nil!72594 bigger!57))))

(assert (=> d!2309663 (validRegex!10263 baseR!93)))

(assert (=> d!2309663 (= (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!19 baseR!93 baseR!93 input!6727 Nil!72594 bigger!57) lt!2639994)))

(declare-fun bs!1939790 () Bool)

(assert (= bs!1939790 d!2309663))

(assert (=> bs!1939790 m!8102860))

(declare-fun m!8103076 () Bool)

(assert (=> bs!1939790 m!8103076))

(assert (=> bs!1939790 m!8102884))

(assert (=> bs!1939790 m!8102868))

(assert (=> bs!1939790 m!8102882))

(declare-fun m!8103078 () Bool)

(assert (=> bs!1939790 m!8103078))

(assert (=> bs!1939790 m!8102868))

(declare-fun m!8103080 () Bool)

(assert (=> bs!1939790 m!8103080))

(assert (=> bs!1939790 m!8102866))

(assert (=> bs!1939790 m!8102884))

(assert (=> bs!1939790 m!8102882))

(assert (=> b!7528507 d!2309663))

(declare-fun b!7528812 () Bool)

(declare-fun e!4487385 () Bool)

(declare-fun e!4487383 () Bool)

(assert (=> b!7528812 (= e!4487385 e!4487383)))

(declare-fun res!3017445 () Bool)

(assert (=> b!7528812 (=> res!3017445 e!4487383)))

(declare-fun call!690803 () Bool)

(assert (=> b!7528812 (= res!3017445 call!690803)))

(declare-fun bm!690798 () Bool)

(assert (=> bm!690798 (= call!690803 (isEmpty!41345 bigger!57))))

(declare-fun b!7528813 () Bool)

(declare-fun res!3017438 () Bool)

(assert (=> b!7528813 (=> res!3017438 e!4487383)))

(assert (=> b!7528813 (= res!3017438 (not (isEmpty!41345 (tail!15015 bigger!57))))))

(declare-fun b!7528814 () Bool)

(declare-fun e!4487384 () Bool)

(assert (=> b!7528814 (= e!4487384 (nullable!8653 baseR!93))))

(declare-fun b!7528815 () Bool)

(declare-fun e!4487387 () Bool)

(declare-fun lt!2639997 () Bool)

(assert (=> b!7528815 (= e!4487387 (not lt!2639997))))

(declare-fun b!7528816 () Bool)

(assert (=> b!7528816 (= e!4487383 (not (= (head!15455 bigger!57) (c!1390626 baseR!93))))))

(declare-fun d!2309665 () Bool)

(declare-fun e!4487389 () Bool)

(assert (=> d!2309665 e!4487389))

(declare-fun c!1390708 () Bool)

(assert (=> d!2309665 (= c!1390708 ((_ is EmptyExpr!19835) baseR!93))))

(assert (=> d!2309665 (= lt!2639997 e!4487384)))

(declare-fun c!1390707 () Bool)

(assert (=> d!2309665 (= c!1390707 (isEmpty!41345 bigger!57))))

(assert (=> d!2309665 (validRegex!10263 baseR!93)))

(assert (=> d!2309665 (= (matchR!9439 baseR!93 bigger!57) lt!2639997)))

(declare-fun b!7528817 () Bool)

(declare-fun res!3017441 () Bool)

(declare-fun e!4487386 () Bool)

(assert (=> b!7528817 (=> (not res!3017441) (not e!4487386))))

(assert (=> b!7528817 (= res!3017441 (isEmpty!41345 (tail!15015 bigger!57)))))

(declare-fun b!7528818 () Bool)

(declare-fun res!3017442 () Bool)

(declare-fun e!4487388 () Bool)

(assert (=> b!7528818 (=> res!3017442 e!4487388)))

(assert (=> b!7528818 (= res!3017442 e!4487386)))

(declare-fun res!3017439 () Bool)

(assert (=> b!7528818 (=> (not res!3017439) (not e!4487386))))

(assert (=> b!7528818 (= res!3017439 lt!2639997)))

(declare-fun b!7528819 () Bool)

(assert (=> b!7528819 (= e!4487384 (matchR!9439 (derivativeStep!5659 baseR!93 (head!15455 bigger!57)) (tail!15015 bigger!57)))))

(declare-fun b!7528820 () Bool)

(assert (=> b!7528820 (= e!4487389 e!4487387)))

(declare-fun c!1390706 () Bool)

(assert (=> b!7528820 (= c!1390706 ((_ is EmptyLang!19835) baseR!93))))

(declare-fun b!7528821 () Bool)

(declare-fun res!3017443 () Bool)

(assert (=> b!7528821 (=> (not res!3017443) (not e!4487386))))

(assert (=> b!7528821 (= res!3017443 (not call!690803))))

(declare-fun b!7528822 () Bool)

(declare-fun res!3017440 () Bool)

(assert (=> b!7528822 (=> res!3017440 e!4487388)))

(assert (=> b!7528822 (= res!3017440 (not ((_ is ElementMatch!19835) baseR!93)))))

(assert (=> b!7528822 (= e!4487387 e!4487388)))

(declare-fun b!7528823 () Bool)

(assert (=> b!7528823 (= e!4487386 (= (head!15455 bigger!57) (c!1390626 baseR!93)))))

(declare-fun b!7528824 () Bool)

(assert (=> b!7528824 (= e!4487388 e!4487385)))

(declare-fun res!3017444 () Bool)

(assert (=> b!7528824 (=> (not res!3017444) (not e!4487385))))

(assert (=> b!7528824 (= res!3017444 (not lt!2639997))))

(declare-fun b!7528825 () Bool)

(assert (=> b!7528825 (= e!4487389 (= lt!2639997 call!690803))))

(assert (= (and d!2309665 c!1390707) b!7528814))

(assert (= (and d!2309665 (not c!1390707)) b!7528819))

(assert (= (and d!2309665 c!1390708) b!7528825))

(assert (= (and d!2309665 (not c!1390708)) b!7528820))

(assert (= (and b!7528820 c!1390706) b!7528815))

(assert (= (and b!7528820 (not c!1390706)) b!7528822))

(assert (= (and b!7528822 (not res!3017440)) b!7528818))

(assert (= (and b!7528818 res!3017439) b!7528821))

(assert (= (and b!7528821 res!3017443) b!7528817))

(assert (= (and b!7528817 res!3017441) b!7528823))

(assert (= (and b!7528818 (not res!3017442)) b!7528824))

(assert (= (and b!7528824 res!3017444) b!7528812))

(assert (= (and b!7528812 (not res!3017445)) b!7528813))

(assert (= (and b!7528813 (not res!3017438)) b!7528816))

(assert (= (or b!7528825 b!7528812 b!7528821) bm!690798))

(assert (=> b!7528816 m!8102886))

(declare-fun m!8103082 () Bool)

(assert (=> bm!690798 m!8103082))

(assert (=> b!7528823 m!8102886))

(assert (=> b!7528819 m!8102886))

(assert (=> b!7528819 m!8102886))

(declare-fun m!8103084 () Bool)

(assert (=> b!7528819 m!8103084))

(assert (=> b!7528819 m!8102890))

(assert (=> b!7528819 m!8103084))

(assert (=> b!7528819 m!8102890))

(declare-fun m!8103086 () Bool)

(assert (=> b!7528819 m!8103086))

(assert (=> b!7528813 m!8102890))

(assert (=> b!7528813 m!8102890))

(declare-fun m!8103088 () Bool)

(assert (=> b!7528813 m!8103088))

(assert (=> d!2309665 m!8103082))

(assert (=> d!2309665 m!8102860))

(assert (=> b!7528817 m!8102890))

(assert (=> b!7528817 m!8102890))

(assert (=> b!7528817 m!8103088))

(assert (=> b!7528814 m!8103066))

(assert (=> b!7528517 d!2309665))

(declare-fun b!7528844 () Bool)

(declare-fun res!3017457 () Bool)

(declare-fun e!4487406 () Bool)

(assert (=> b!7528844 (=> res!3017457 e!4487406)))

(assert (=> b!7528844 (= res!3017457 (not ((_ is Concat!28680) baseR!93)))))

(declare-fun e!4487404 () Bool)

(assert (=> b!7528844 (= e!4487404 e!4487406)))

(declare-fun c!1390713 () Bool)

(declare-fun call!690810 () Bool)

(declare-fun bm!690805 () Bool)

(declare-fun c!1390714 () Bool)

(assert (=> bm!690805 (= call!690810 (validRegex!10263 (ite c!1390714 (reg!20164 baseR!93) (ite c!1390713 (regOne!40183 baseR!93) (regTwo!40182 baseR!93)))))))

(declare-fun bm!690806 () Bool)

(declare-fun call!690811 () Bool)

(assert (=> bm!690806 (= call!690811 (validRegex!10263 (ite c!1390713 (regTwo!40183 baseR!93) (regOne!40182 baseR!93))))))

(declare-fun b!7528846 () Bool)

(declare-fun e!4487408 () Bool)

(assert (=> b!7528846 (= e!4487408 call!690811)))

(declare-fun bm!690807 () Bool)

(declare-fun call!690812 () Bool)

(assert (=> bm!690807 (= call!690812 call!690810)))

(declare-fun b!7528847 () Bool)

(declare-fun e!4487405 () Bool)

(assert (=> b!7528847 (= e!4487405 call!690810)))

(declare-fun b!7528845 () Bool)

(declare-fun res!3017456 () Bool)

(assert (=> b!7528845 (=> (not res!3017456) (not e!4487408))))

(assert (=> b!7528845 (= res!3017456 call!690812)))

(assert (=> b!7528845 (= e!4487404 e!4487408)))

(declare-fun d!2309667 () Bool)

(declare-fun res!3017458 () Bool)

(declare-fun e!4487409 () Bool)

(assert (=> d!2309667 (=> res!3017458 e!4487409)))

(assert (=> d!2309667 (= res!3017458 ((_ is ElementMatch!19835) baseR!93))))

(assert (=> d!2309667 (= (validRegex!10263 baseR!93) e!4487409)))

(declare-fun b!7528848 () Bool)

(declare-fun e!4487407 () Bool)

(assert (=> b!7528848 (= e!4487407 e!4487404)))

(assert (=> b!7528848 (= c!1390713 ((_ is Union!19835) baseR!93))))

(declare-fun b!7528849 () Bool)

(declare-fun e!4487410 () Bool)

(assert (=> b!7528849 (= e!4487406 e!4487410)))

(declare-fun res!3017460 () Bool)

(assert (=> b!7528849 (=> (not res!3017460) (not e!4487410))))

(assert (=> b!7528849 (= res!3017460 call!690811)))

(declare-fun b!7528850 () Bool)

(assert (=> b!7528850 (= e!4487407 e!4487405)))

(declare-fun res!3017459 () Bool)

(assert (=> b!7528850 (= res!3017459 (not (nullable!8653 (reg!20164 baseR!93))))))

(assert (=> b!7528850 (=> (not res!3017459) (not e!4487405))))

(declare-fun b!7528851 () Bool)

(assert (=> b!7528851 (= e!4487409 e!4487407)))

(assert (=> b!7528851 (= c!1390714 ((_ is Star!19835) baseR!93))))

(declare-fun b!7528852 () Bool)

(assert (=> b!7528852 (= e!4487410 call!690812)))

(assert (= (and d!2309667 (not res!3017458)) b!7528851))

(assert (= (and b!7528851 c!1390714) b!7528850))

(assert (= (and b!7528851 (not c!1390714)) b!7528848))

(assert (= (and b!7528850 res!3017459) b!7528847))

(assert (= (and b!7528848 c!1390713) b!7528845))

(assert (= (and b!7528848 (not c!1390713)) b!7528844))

(assert (= (and b!7528845 res!3017456) b!7528846))

(assert (= (and b!7528844 (not res!3017457)) b!7528849))

(assert (= (and b!7528849 res!3017460) b!7528852))

(assert (= (or b!7528846 b!7528849) bm!690806))

(assert (= (or b!7528845 b!7528852) bm!690807))

(assert (= (or b!7528847 bm!690807) bm!690805))

(declare-fun m!8103090 () Bool)

(assert (=> bm!690805 m!8103090))

(declare-fun m!8103092 () Bool)

(assert (=> bm!690806 m!8103092))

(declare-fun m!8103094 () Bool)

(assert (=> b!7528850 m!8103094))

(assert (=> start!728480 d!2309667))

(declare-fun d!2309669 () Bool)

(declare-fun lt!2639998 () Int)

(assert (=> d!2309669 (>= lt!2639998 0)))

(declare-fun e!4487411 () Int)

(assert (=> d!2309669 (= lt!2639998 e!4487411)))

(declare-fun c!1390715 () Bool)

(assert (=> d!2309669 (= c!1390715 ((_ is Nil!72594) returnP!57))))

(assert (=> d!2309669 (= (size!42331 returnP!57) lt!2639998)))

(declare-fun b!7528853 () Bool)

(assert (=> b!7528853 (= e!4487411 0)))

(declare-fun b!7528854 () Bool)

(assert (=> b!7528854 (= e!4487411 (+ 1 (size!42331 (t!387425 returnP!57))))))

(assert (= (and d!2309669 c!1390715) b!7528853))

(assert (= (and d!2309669 (not c!1390715)) b!7528854))

(declare-fun m!8103096 () Bool)

(assert (=> b!7528854 m!8103096))

(assert (=> b!7528513 d!2309669))

(declare-fun d!2309671 () Bool)

(declare-fun lt!2639999 () Int)

(assert (=> d!2309671 (>= lt!2639999 0)))

(declare-fun e!4487412 () Int)

(assert (=> d!2309671 (= lt!2639999 e!4487412)))

(declare-fun c!1390716 () Bool)

(assert (=> d!2309671 (= c!1390716 ((_ is Nil!72594) bigger!57))))

(assert (=> d!2309671 (= (size!42331 bigger!57) lt!2639999)))

(declare-fun b!7528855 () Bool)

(assert (=> b!7528855 (= e!4487412 0)))

(declare-fun b!7528856 () Bool)

(assert (=> b!7528856 (= e!4487412 (+ 1 (size!42331 (t!387425 bigger!57))))))

(assert (= (and d!2309671 c!1390716) b!7528855))

(assert (= (and d!2309671 (not c!1390716)) b!7528856))

(declare-fun m!8103098 () Bool)

(assert (=> b!7528856 m!8103098))

(assert (=> b!7528513 d!2309671))

(declare-fun bm!690808 () Bool)

(declare-fun call!690820 () Unit!166580)

(assert (=> bm!690808 (= call!690820 (lemmaIsPrefixRefl!3862 input!6727 input!6727))))

(declare-fun b!7528857 () Bool)

(declare-fun e!4487416 () tuple2!68812)

(assert (=> b!7528857 (= e!4487416 (tuple2!68813 Nil!72594 input!6727))))

(declare-fun b!7528858 () Bool)

(declare-fun e!4487413 () tuple2!68812)

(declare-fun lt!2640000 () tuple2!68812)

(assert (=> b!7528858 (= e!4487413 lt!2640000)))

(declare-fun b!7528859 () Bool)

(declare-fun e!4487418 () Unit!166580)

(declare-fun Unit!166591 () Unit!166580)

(assert (=> b!7528859 (= e!4487418 Unit!166591)))

(declare-fun lt!2640021 () Unit!166580)

(assert (=> b!7528859 (= lt!2640021 call!690820)))

(declare-fun call!690817 () Bool)

(assert (=> b!7528859 call!690817))

(declare-fun lt!2640015 () Unit!166580)

(assert (=> b!7528859 (= lt!2640015 lt!2640021)))

(declare-fun lt!2640007 () Unit!166580)

(declare-fun call!690813 () Unit!166580)

(assert (=> b!7528859 (= lt!2640007 call!690813)))

(assert (=> b!7528859 (= input!6727 Nil!72594)))

(declare-fun lt!2640022 () Unit!166580)

(assert (=> b!7528859 (= lt!2640022 lt!2640007)))

(assert (=> b!7528859 false))

(declare-fun b!7528860 () Bool)

(declare-fun e!4487419 () tuple2!68812)

(declare-fun e!4487417 () tuple2!68812)

(assert (=> b!7528860 (= e!4487419 e!4487417)))

(declare-fun c!1390721 () Bool)

(assert (=> b!7528860 (= c!1390721 (= lt!2639764 lt!2639763))))

(declare-fun d!2309673 () Bool)

(declare-fun e!4487415 () Bool)

(assert (=> d!2309673 e!4487415))

(declare-fun res!3017461 () Bool)

(assert (=> d!2309673 (=> (not res!3017461) (not e!4487415))))

(declare-fun lt!2640006 () tuple2!68812)

(assert (=> d!2309673 (= res!3017461 (= (++!17374 (_1!37709 lt!2640006) (_2!37709 lt!2640006)) input!6727))))

(assert (=> d!2309673 (= lt!2640006 e!4487419)))

(declare-fun c!1390717 () Bool)

(assert (=> d!2309673 (= c!1390717 (lostCause!1637 baseR!93))))

(declare-fun lt!2640017 () Unit!166580)

(declare-fun Unit!166592 () Unit!166580)

(assert (=> d!2309673 (= lt!2640017 Unit!166592)))

(assert (=> d!2309673 (= (getSuffix!3527 input!6727 Nil!72594) input!6727)))

(declare-fun lt!2640009 () Unit!166580)

(declare-fun lt!2640010 () Unit!166580)

(assert (=> d!2309673 (= lt!2640009 lt!2640010)))

(declare-fun lt!2640018 () List!72718)

(assert (=> d!2309673 (= input!6727 lt!2640018)))

(assert (=> d!2309673 (= lt!2640010 (lemmaSamePrefixThenSameSuffix!2821 Nil!72594 input!6727 Nil!72594 lt!2640018 input!6727))))

(assert (=> d!2309673 (= lt!2640018 (getSuffix!3527 input!6727 Nil!72594))))

(declare-fun lt!2640026 () Unit!166580)

(declare-fun lt!2640027 () Unit!166580)

(assert (=> d!2309673 (= lt!2640026 lt!2640027)))

(assert (=> d!2309673 (isPrefix!6041 Nil!72594 (++!17374 Nil!72594 input!6727))))

(assert (=> d!2309673 (= lt!2640027 (lemmaConcatTwoListThenFirstIsPrefix!3735 Nil!72594 input!6727))))

(assert (=> d!2309673 (validRegex!10263 baseR!93)))

(assert (=> d!2309673 (= (findLongestMatchInner!2114 baseR!93 Nil!72594 lt!2639764 input!6727 input!6727 lt!2639763) lt!2640006)))

(declare-fun b!7528861 () Bool)

(declare-fun c!1390719 () Bool)

(declare-fun call!690819 () Bool)

(assert (=> b!7528861 (= c!1390719 call!690819)))

(declare-fun lt!2640016 () Unit!166580)

(declare-fun lt!2640020 () Unit!166580)

(assert (=> b!7528861 (= lt!2640016 lt!2640020)))

(declare-fun lt!2640003 () C!39996)

(declare-fun lt!2640013 () List!72718)

(assert (=> b!7528861 (= (++!17374 (++!17374 Nil!72594 (Cons!72594 lt!2640003 Nil!72594)) lt!2640013) input!6727)))

(assert (=> b!7528861 (= lt!2640020 (lemmaMoveElementToOtherListKeepsConcatEq!3171 Nil!72594 lt!2640003 lt!2640013 input!6727))))

(assert (=> b!7528861 (= lt!2640013 (tail!15015 input!6727))))

(assert (=> b!7528861 (= lt!2640003 (head!15455 input!6727))))

(declare-fun lt!2640012 () Unit!166580)

(declare-fun lt!2640004 () Unit!166580)

(assert (=> b!7528861 (= lt!2640012 lt!2640004)))

(assert (=> b!7528861 (isPrefix!6041 (++!17374 Nil!72594 (Cons!72594 (head!15455 (getSuffix!3527 input!6727 Nil!72594)) Nil!72594)) input!6727)))

(assert (=> b!7528861 (= lt!2640004 (lemmaAddHeadSuffixToPrefixStillPrefix!1140 Nil!72594 input!6727))))

(declare-fun lt!2640024 () Unit!166580)

(declare-fun lt!2640025 () Unit!166580)

(assert (=> b!7528861 (= lt!2640024 lt!2640025)))

(assert (=> b!7528861 (= lt!2640025 (lemmaAddHeadSuffixToPrefixStillPrefix!1140 Nil!72594 input!6727))))

(declare-fun lt!2640001 () List!72718)

(assert (=> b!7528861 (= lt!2640001 (++!17374 Nil!72594 (Cons!72594 (head!15455 input!6727) Nil!72594)))))

(declare-fun lt!2640014 () Unit!166580)

(assert (=> b!7528861 (= lt!2640014 e!4487418)))

(declare-fun c!1390722 () Bool)

(assert (=> b!7528861 (= c!1390722 (= (size!42331 Nil!72594) (size!42331 input!6727)))))

(declare-fun lt!2640019 () Unit!166580)

(declare-fun lt!2640023 () Unit!166580)

(assert (=> b!7528861 (= lt!2640019 lt!2640023)))

(assert (=> b!7528861 (<= (size!42331 Nil!72594) (size!42331 input!6727))))

(assert (=> b!7528861 (= lt!2640023 (lemmaIsPrefixThenSmallerEqSize!1010 Nil!72594 input!6727))))

(declare-fun e!4487414 () tuple2!68812)

(assert (=> b!7528861 (= e!4487417 e!4487414)))

(declare-fun b!7528862 () Bool)

(declare-fun e!4487420 () Bool)

(assert (=> b!7528862 (= e!4487420 (>= (size!42331 (_1!37709 lt!2640006)) (size!42331 Nil!72594)))))

(declare-fun bm!690809 () Bool)

(declare-fun call!690815 () C!39996)

(assert (=> bm!690809 (= call!690815 (head!15455 input!6727))))

(declare-fun b!7528863 () Bool)

(assert (=> b!7528863 (= e!4487413 (tuple2!68813 Nil!72594 input!6727))))

(declare-fun bm!690810 () Bool)

(declare-fun call!690814 () Regex!19835)

(assert (=> bm!690810 (= call!690814 (derivativeStep!5659 baseR!93 call!690815))))

(declare-fun b!7528864 () Bool)

(declare-fun Unit!166593 () Unit!166580)

(assert (=> b!7528864 (= e!4487418 Unit!166593)))

(declare-fun bm!690811 () Bool)

(assert (=> bm!690811 (= call!690817 (isPrefix!6041 input!6727 input!6727))))

(declare-fun call!690816 () tuple2!68812)

(declare-fun bm!690812 () Bool)

(declare-fun call!690818 () List!72718)

(assert (=> bm!690812 (= call!690816 (findLongestMatchInner!2114 call!690814 lt!2640001 (+ lt!2639764 1) call!690818 input!6727 lt!2639763))))

(declare-fun bm!690813 () Bool)

(assert (=> bm!690813 (= call!690818 (tail!15015 input!6727))))

(declare-fun b!7528865 () Bool)

(declare-fun c!1390718 () Bool)

(assert (=> b!7528865 (= c!1390718 call!690819)))

(declare-fun lt!2640008 () Unit!166580)

(declare-fun lt!2640002 () Unit!166580)

(assert (=> b!7528865 (= lt!2640008 lt!2640002)))

(assert (=> b!7528865 (= input!6727 Nil!72594)))

(assert (=> b!7528865 (= lt!2640002 call!690813)))

(declare-fun lt!2640005 () Unit!166580)

(declare-fun lt!2640011 () Unit!166580)

(assert (=> b!7528865 (= lt!2640005 lt!2640011)))

(assert (=> b!7528865 call!690817))

(assert (=> b!7528865 (= lt!2640011 call!690820)))

(assert (=> b!7528865 (= e!4487417 e!4487416)))

(declare-fun b!7528866 () Bool)

(assert (=> b!7528866 (= e!4487414 e!4487413)))

(assert (=> b!7528866 (= lt!2640000 call!690816)))

(declare-fun c!1390720 () Bool)

(assert (=> b!7528866 (= c!1390720 (isEmpty!41345 (_1!37709 lt!2640000)))))

(declare-fun b!7528867 () Bool)

(assert (=> b!7528867 (= e!4487416 (tuple2!68813 Nil!72594 Nil!72594))))

(declare-fun bm!690814 () Bool)

(assert (=> bm!690814 (= call!690819 (nullable!8653 baseR!93))))

(declare-fun b!7528868 () Bool)

(assert (=> b!7528868 (= e!4487419 (tuple2!68813 Nil!72594 input!6727))))

(declare-fun b!7528869 () Bool)

(assert (=> b!7528869 (= e!4487414 call!690816)))

(declare-fun bm!690815 () Bool)

(assert (=> bm!690815 (= call!690813 (lemmaIsPrefixSameLengthThenSameList!1513 input!6727 Nil!72594 input!6727))))

(declare-fun b!7528870 () Bool)

(assert (=> b!7528870 (= e!4487415 e!4487420)))

(declare-fun res!3017462 () Bool)

(assert (=> b!7528870 (=> res!3017462 e!4487420)))

(assert (=> b!7528870 (= res!3017462 (isEmpty!41345 (_1!37709 lt!2640006)))))

(assert (= (and d!2309673 c!1390717) b!7528868))

(assert (= (and d!2309673 (not c!1390717)) b!7528860))

(assert (= (and b!7528860 c!1390721) b!7528865))

(assert (= (and b!7528860 (not c!1390721)) b!7528861))

(assert (= (and b!7528865 c!1390718) b!7528867))

(assert (= (and b!7528865 (not c!1390718)) b!7528857))

(assert (= (and b!7528861 c!1390722) b!7528859))

(assert (= (and b!7528861 (not c!1390722)) b!7528864))

(assert (= (and b!7528861 c!1390719) b!7528866))

(assert (= (and b!7528861 (not c!1390719)) b!7528869))

(assert (= (and b!7528866 c!1390720) b!7528863))

(assert (= (and b!7528866 (not c!1390720)) b!7528858))

(assert (= (or b!7528866 b!7528869) bm!690809))

(assert (= (or b!7528866 b!7528869) bm!690813))

(assert (= (or b!7528866 b!7528869) bm!690810))

(assert (= (or b!7528866 b!7528869) bm!690812))

(assert (= (or b!7528865 b!7528859) bm!690811))

(assert (= (or b!7528865 b!7528861) bm!690814))

(assert (= (or b!7528865 b!7528859) bm!690815))

(assert (= (or b!7528865 b!7528859) bm!690808))

(assert (= (and d!2309673 res!3017461) b!7528870))

(assert (= (and b!7528870 (not res!3017462)) b!7528862))

(assert (=> bm!690811 m!8103024))

(assert (=> bm!690815 m!8103026))

(assert (=> bm!690813 m!8102892))

(assert (=> bm!690809 m!8102888))

(declare-fun m!8103100 () Bool)

(assert (=> b!7528866 m!8103100))

(assert (=> b!7528861 m!8103034))

(assert (=> b!7528861 m!8103036))

(assert (=> b!7528861 m!8103038))

(declare-fun m!8103102 () Bool)

(assert (=> b!7528861 m!8103102))

(assert (=> b!7528861 m!8102882))

(declare-fun m!8103104 () Bool)

(assert (=> b!7528861 m!8103104))

(declare-fun m!8103106 () Bool)

(assert (=> b!7528861 m!8103106))

(assert (=> b!7528861 m!8102884))

(assert (=> b!7528861 m!8102868))

(assert (=> b!7528861 m!8103104))

(assert (=> b!7528861 m!8102892))

(assert (=> b!7528861 m!8103034))

(assert (=> b!7528861 m!8102868))

(assert (=> b!7528861 m!8103030))

(assert (=> b!7528861 m!8102888))

(declare-fun m!8103108 () Bool)

(assert (=> b!7528861 m!8103108))

(assert (=> b!7528861 m!8103046))

(declare-fun m!8103110 () Bool)

(assert (=> b!7528862 m!8103110))

(assert (=> b!7528862 m!8102884))

(declare-fun m!8103112 () Bool)

(assert (=> d!2309673 m!8103112))

(assert (=> d!2309673 m!8103052))

(declare-fun m!8103114 () Bool)

(assert (=> d!2309673 m!8103114))

(declare-fun m!8103116 () Bool)

(assert (=> d!2309673 m!8103116))

(declare-fun m!8103118 () Bool)

(assert (=> d!2309673 m!8103118))

(assert (=> d!2309673 m!8102868))

(declare-fun m!8103120 () Bool)

(assert (=> d!2309673 m!8103120))

(assert (=> d!2309673 m!8102860))

(assert (=> d!2309673 m!8103116))

(declare-fun m!8103122 () Bool)

(assert (=> b!7528870 m!8103122))

(declare-fun m!8103124 () Bool)

(assert (=> bm!690812 m!8103124))

(assert (=> bm!690814 m!8103066))

(assert (=> bm!690808 m!8103068))

(declare-fun m!8103126 () Bool)

(assert (=> bm!690810 m!8103126))

(assert (=> b!7528518 d!2309673))

(declare-fun d!2309675 () Bool)

(declare-fun lt!2640028 () Int)

(assert (=> d!2309675 (>= lt!2640028 0)))

(declare-fun e!4487421 () Int)

(assert (=> d!2309675 (= lt!2640028 e!4487421)))

(declare-fun c!1390723 () Bool)

(assert (=> d!2309675 (= c!1390723 ((_ is Nil!72594) input!6727))))

(assert (=> d!2309675 (= (size!42331 input!6727) lt!2640028)))

(declare-fun b!7528871 () Bool)

(assert (=> b!7528871 (= e!4487421 0)))

(declare-fun b!7528872 () Bool)

(assert (=> b!7528872 (= e!4487421 (+ 1 (size!42331 (t!387425 input!6727))))))

(assert (= (and d!2309675 c!1390723) b!7528871))

(assert (= (and d!2309675 (not c!1390723)) b!7528872))

(declare-fun m!8103128 () Bool)

(assert (=> b!7528872 m!8103128))

(assert (=> b!7528518 d!2309675))

(declare-fun d!2309677 () Bool)

(declare-fun lt!2640029 () Int)

(assert (=> d!2309677 (>= lt!2640029 0)))

(declare-fun e!4487422 () Int)

(assert (=> d!2309677 (= lt!2640029 e!4487422)))

(declare-fun c!1390724 () Bool)

(assert (=> d!2309677 (= c!1390724 ((_ is Nil!72594) Nil!72594))))

(assert (=> d!2309677 (= (size!42331 Nil!72594) lt!2640029)))

(declare-fun b!7528873 () Bool)

(assert (=> b!7528873 (= e!4487422 0)))

(declare-fun b!7528874 () Bool)

(assert (=> b!7528874 (= e!4487422 (+ 1 (size!42331 (t!387425 Nil!72594))))))

(assert (= (and d!2309677 c!1390724) b!7528873))

(assert (= (and d!2309677 (not c!1390724)) b!7528874))

(declare-fun m!8103130 () Bool)

(assert (=> b!7528874 m!8103130))

(assert (=> b!7528518 d!2309677))

(declare-fun b!7528876 () Bool)

(declare-fun res!3017465 () Bool)

(declare-fun e!4487424 () Bool)

(assert (=> b!7528876 (=> (not res!3017465) (not e!4487424))))

(assert (=> b!7528876 (= res!3017465 (= (head!15455 returnP!57) (head!15455 input!6727)))))

(declare-fun b!7528878 () Bool)

(declare-fun e!4487425 () Bool)

(assert (=> b!7528878 (= e!4487425 (>= (size!42331 input!6727) (size!42331 returnP!57)))))

(declare-fun b!7528877 () Bool)

(assert (=> b!7528877 (= e!4487424 (isPrefix!6041 (tail!15015 returnP!57) (tail!15015 input!6727)))))

(declare-fun d!2309679 () Bool)

(assert (=> d!2309679 e!4487425))

(declare-fun res!3017463 () Bool)

(assert (=> d!2309679 (=> res!3017463 e!4487425)))

(declare-fun lt!2640030 () Bool)

(assert (=> d!2309679 (= res!3017463 (not lt!2640030))))

(declare-fun e!4487423 () Bool)

(assert (=> d!2309679 (= lt!2640030 e!4487423)))

(declare-fun res!3017466 () Bool)

(assert (=> d!2309679 (=> res!3017466 e!4487423)))

(assert (=> d!2309679 (= res!3017466 ((_ is Nil!72594) returnP!57))))

(assert (=> d!2309679 (= (isPrefix!6041 returnP!57 input!6727) lt!2640030)))

(declare-fun b!7528875 () Bool)

(assert (=> b!7528875 (= e!4487423 e!4487424)))

(declare-fun res!3017464 () Bool)

(assert (=> b!7528875 (=> (not res!3017464) (not e!4487424))))

(assert (=> b!7528875 (= res!3017464 (not ((_ is Nil!72594) input!6727)))))

(assert (= (and d!2309679 (not res!3017466)) b!7528875))

(assert (= (and b!7528875 res!3017464) b!7528876))

(assert (= (and b!7528876 res!3017465) b!7528877))

(assert (= (and d!2309679 (not res!3017463)) b!7528878))

(declare-fun m!8103132 () Bool)

(assert (=> b!7528876 m!8103132))

(assert (=> b!7528876 m!8102888))

(assert (=> b!7528878 m!8102882))

(assert (=> b!7528878 m!8102864))

(declare-fun m!8103134 () Bool)

(assert (=> b!7528877 m!8103134))

(assert (=> b!7528877 m!8102892))

(assert (=> b!7528877 m!8103134))

(assert (=> b!7528877 m!8102892))

(declare-fun m!8103136 () Bool)

(assert (=> b!7528877 m!8103136))

(assert (=> b!7528509 d!2309679))

(declare-fun b!7528891 () Bool)

(declare-fun e!4487428 () Bool)

(declare-fun tp!2188108 () Bool)

(assert (=> b!7528891 (= e!4487428 tp!2188108)))

(declare-fun b!7528892 () Bool)

(declare-fun tp!2188112 () Bool)

(declare-fun tp!2188111 () Bool)

(assert (=> b!7528892 (= e!4487428 (and tp!2188112 tp!2188111))))

(declare-fun b!7528889 () Bool)

(assert (=> b!7528889 (= e!4487428 tp_is_empty!50025)))

(assert (=> b!7528516 (= tp!2188054 e!4487428)))

(declare-fun b!7528890 () Bool)

(declare-fun tp!2188110 () Bool)

(declare-fun tp!2188109 () Bool)

(assert (=> b!7528890 (= e!4487428 (and tp!2188110 tp!2188109))))

(assert (= (and b!7528516 ((_ is ElementMatch!19835) (regOne!40182 baseR!93))) b!7528889))

(assert (= (and b!7528516 ((_ is Concat!28680) (regOne!40182 baseR!93))) b!7528890))

(assert (= (and b!7528516 ((_ is Star!19835) (regOne!40182 baseR!93))) b!7528891))

(assert (= (and b!7528516 ((_ is Union!19835) (regOne!40182 baseR!93))) b!7528892))

(declare-fun b!7528895 () Bool)

(declare-fun e!4487429 () Bool)

(declare-fun tp!2188113 () Bool)

(assert (=> b!7528895 (= e!4487429 tp!2188113)))

(declare-fun b!7528896 () Bool)

(declare-fun tp!2188117 () Bool)

(declare-fun tp!2188116 () Bool)

(assert (=> b!7528896 (= e!4487429 (and tp!2188117 tp!2188116))))

(declare-fun b!7528893 () Bool)

(assert (=> b!7528893 (= e!4487429 tp_is_empty!50025)))

(assert (=> b!7528516 (= tp!2188051 e!4487429)))

(declare-fun b!7528894 () Bool)

(declare-fun tp!2188115 () Bool)

(declare-fun tp!2188114 () Bool)

(assert (=> b!7528894 (= e!4487429 (and tp!2188115 tp!2188114))))

(assert (= (and b!7528516 ((_ is ElementMatch!19835) (regTwo!40182 baseR!93))) b!7528893))

(assert (= (and b!7528516 ((_ is Concat!28680) (regTwo!40182 baseR!93))) b!7528894))

(assert (= (and b!7528516 ((_ is Star!19835) (regTwo!40182 baseR!93))) b!7528895))

(assert (= (and b!7528516 ((_ is Union!19835) (regTwo!40182 baseR!93))) b!7528896))

(declare-fun b!7528899 () Bool)

(declare-fun e!4487430 () Bool)

(declare-fun tp!2188118 () Bool)

(assert (=> b!7528899 (= e!4487430 tp!2188118)))

(declare-fun b!7528900 () Bool)

(declare-fun tp!2188122 () Bool)

(declare-fun tp!2188121 () Bool)

(assert (=> b!7528900 (= e!4487430 (and tp!2188122 tp!2188121))))

(declare-fun b!7528897 () Bool)

(assert (=> b!7528897 (= e!4487430 tp_is_empty!50025)))

(assert (=> b!7528510 (= tp!2188057 e!4487430)))

(declare-fun b!7528898 () Bool)

(declare-fun tp!2188120 () Bool)

(declare-fun tp!2188119 () Bool)

(assert (=> b!7528898 (= e!4487430 (and tp!2188120 tp!2188119))))

(assert (= (and b!7528510 ((_ is ElementMatch!19835) (regOne!40183 baseR!93))) b!7528897))

(assert (= (and b!7528510 ((_ is Concat!28680) (regOne!40183 baseR!93))) b!7528898))

(assert (= (and b!7528510 ((_ is Star!19835) (regOne!40183 baseR!93))) b!7528899))

(assert (= (and b!7528510 ((_ is Union!19835) (regOne!40183 baseR!93))) b!7528900))

(declare-fun b!7528903 () Bool)

(declare-fun e!4487431 () Bool)

(declare-fun tp!2188123 () Bool)

(assert (=> b!7528903 (= e!4487431 tp!2188123)))

(declare-fun b!7528904 () Bool)

(declare-fun tp!2188127 () Bool)

(declare-fun tp!2188126 () Bool)

(assert (=> b!7528904 (= e!4487431 (and tp!2188127 tp!2188126))))

(declare-fun b!7528901 () Bool)

(assert (=> b!7528901 (= e!4487431 tp_is_empty!50025)))

(assert (=> b!7528510 (= tp!2188055 e!4487431)))

(declare-fun b!7528902 () Bool)

(declare-fun tp!2188125 () Bool)

(declare-fun tp!2188124 () Bool)

(assert (=> b!7528902 (= e!4487431 (and tp!2188125 tp!2188124))))

(assert (= (and b!7528510 ((_ is ElementMatch!19835) (regTwo!40183 baseR!93))) b!7528901))

(assert (= (and b!7528510 ((_ is Concat!28680) (regTwo!40183 baseR!93))) b!7528902))

(assert (= (and b!7528510 ((_ is Star!19835) (regTwo!40183 baseR!93))) b!7528903))

(assert (= (and b!7528510 ((_ is Union!19835) (regTwo!40183 baseR!93))) b!7528904))

(declare-fun b!7528909 () Bool)

(declare-fun e!4487434 () Bool)

(declare-fun tp!2188130 () Bool)

(assert (=> b!7528909 (= e!4487434 (and tp_is_empty!50025 tp!2188130))))

(assert (=> b!7528512 (= tp!2188050 e!4487434)))

(assert (= (and b!7528512 ((_ is Cons!72594) (t!387425 input!6727))) b!7528909))

(declare-fun b!7528912 () Bool)

(declare-fun e!4487435 () Bool)

(declare-fun tp!2188131 () Bool)

(assert (=> b!7528912 (= e!4487435 tp!2188131)))

(declare-fun b!7528913 () Bool)

(declare-fun tp!2188135 () Bool)

(declare-fun tp!2188134 () Bool)

(assert (=> b!7528913 (= e!4487435 (and tp!2188135 tp!2188134))))

(declare-fun b!7528910 () Bool)

(assert (=> b!7528910 (= e!4487435 tp_is_empty!50025)))

(assert (=> b!7528519 (= tp!2188053 e!4487435)))

(declare-fun b!7528911 () Bool)

(declare-fun tp!2188133 () Bool)

(declare-fun tp!2188132 () Bool)

(assert (=> b!7528911 (= e!4487435 (and tp!2188133 tp!2188132))))

(assert (= (and b!7528519 ((_ is ElementMatch!19835) (reg!20164 baseR!93))) b!7528910))

(assert (= (and b!7528519 ((_ is Concat!28680) (reg!20164 baseR!93))) b!7528911))

(assert (= (and b!7528519 ((_ is Star!19835) (reg!20164 baseR!93))) b!7528912))

(assert (= (and b!7528519 ((_ is Union!19835) (reg!20164 baseR!93))) b!7528913))

(declare-fun b!7528914 () Bool)

(declare-fun e!4487436 () Bool)

(declare-fun tp!2188136 () Bool)

(assert (=> b!7528914 (= e!4487436 (and tp_is_empty!50025 tp!2188136))))

(assert (=> b!7528508 (= tp!2188052 e!4487436)))

(assert (= (and b!7528508 ((_ is Cons!72594) (t!387425 returnP!57))) b!7528914))

(declare-fun b!7528915 () Bool)

(declare-fun e!4487437 () Bool)

(declare-fun tp!2188137 () Bool)

(assert (=> b!7528915 (= e!4487437 (and tp_is_empty!50025 tp!2188137))))

(assert (=> b!7528514 (= tp!2188056 e!4487437)))

(assert (= (and b!7528514 ((_ is Cons!72594) (t!387425 bigger!57))) b!7528915))

(check-sat (not bm!690811) (not d!2309665) (not b!7528530) (not bm!690809) (not d!2309663) (not b!7528850) (not b!7528894) (not bm!690814) (not b!7528813) (not b!7528773) (not bm!690792) (not b!7528856) (not bm!690815) (not b!7528854) (not bm!690798) (not b!7528877) (not b!7528891) (not b!7528903) (not bm!690788) (not b!7528872) (not bm!690790) (not b!7528874) (not b!7528529) (not b!7528911) (not b!7528890) (not b!7528915) (not bm!690795) (not bm!690813) (not b!7528878) (not b!7528768) (not bm!690794) (not b!7528909) (not d!2309661) (not b!7528814) (not b!7528904) (not b!7528912) (not bm!690805) (not bm!690789) (not b!7528866) (not bm!690812) (not b!7528896) (not b!7528817) (not b!7528782) (not bm!690808) (not b!7528913) (not b!7528898) (not b!7528777) (not b!7528819) (not b!7528914) (not b!7528870) (not bm!690793) (not b!7528823) (not b!7528861) (not b!7528862) (not b!7528900) tp_is_empty!50025 (not d!2309635) (not b!7528769) (not b!7528895) (not bm!690810) (not d!2309673) (not b!7528876) (not b!7528537) (not b!7528531) (not b!7528899) (not bm!690791) (not b!7528816) (not bm!690806) (not b!7528902) (not b!7528892))
(check-sat)
