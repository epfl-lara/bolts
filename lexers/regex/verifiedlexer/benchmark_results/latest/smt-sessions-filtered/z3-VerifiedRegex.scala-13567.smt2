; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729704 () Bool)

(assert start!729704)

(declare-fun b!7545888 () Bool)

(declare-fun e!4495441 () Bool)

(declare-fun tp!2195016 () Bool)

(assert (=> b!7545888 (= e!4495441 tp!2195016)))

(declare-fun b!7545889 () Bool)

(declare-fun e!4495445 () Bool)

(declare-fun e!4495440 () Bool)

(assert (=> b!7545889 (= e!4495445 e!4495440)))

(declare-fun res!3024447 () Bool)

(assert (=> b!7545889 (=> res!3024447 e!4495440)))

(declare-datatypes ((C!40184 0))(
  ( (C!40185 (val!30532 Int)) )
))
(declare-datatypes ((Regex!19929 0))(
  ( (ElementMatch!19929 (c!1392916 C!40184)) (Concat!28774 (regOne!40370 Regex!19929) (regTwo!40370 Regex!19929)) (EmptyExpr!19929) (Star!19929 (reg!20258 Regex!19929)) (EmptyLang!19929) (Union!19929 (regOne!40371 Regex!19929) (regTwo!40371 Regex!19929)) )
))
(declare-fun lt!2645499 () Regex!19929)

(declare-fun r!24333 () Regex!19929)

(assert (=> b!7545889 (= res!3024447 (not (= lt!2645499 r!24333)))))

(declare-fun baseR!101 () Regex!19929)

(declare-datatypes ((List!72812 0))(
  ( (Nil!72688) (Cons!72688 (h!79136 C!40184) (t!387529 List!72812)) )
))
(declare-fun testedP!423 () List!72812)

(declare-fun derivative!461 (Regex!19929 List!72812) Regex!19929)

(assert (=> b!7545889 (= lt!2645499 (derivative!461 baseR!101 testedP!423))))

(declare-fun b!7545890 () Bool)

(declare-fun res!3024451 () Bool)

(declare-fun e!4495442 () Bool)

(assert (=> b!7545890 (=> (not res!3024451) (not e!4495442))))

(declare-fun knownP!30 () List!72812)

(declare-fun size!42425 (List!72812) Int)

(assert (=> b!7545890 (= res!3024451 (>= (size!42425 knownP!30) (size!42425 testedP!423)))))

(declare-fun b!7545891 () Bool)

(declare-fun e!4495443 () Bool)

(declare-fun tp!2195024 () Bool)

(declare-fun tp!2195023 () Bool)

(assert (=> b!7545891 (= e!4495443 (and tp!2195024 tp!2195023))))

(declare-fun b!7545892 () Bool)

(declare-fun res!3024454 () Bool)

(assert (=> b!7545892 (=> (not res!3024454) (not e!4495442))))

(declare-fun validRegex!10357 (Regex!19929) Bool)

(assert (=> b!7545892 (= res!3024454 (validRegex!10357 r!24333))))

(declare-fun b!7545893 () Bool)

(declare-fun res!3024446 () Bool)

(assert (=> b!7545893 (=> (not res!3024446) (not e!4495442))))

(declare-fun input!7874 () List!72812)

(declare-fun isPrefix!6135 (List!72812 List!72812) Bool)

(assert (=> b!7545893 (= res!3024446 (isPrefix!6135 testedP!423 input!7874))))

(declare-fun res!3024449 () Bool)

(assert (=> start!729704 (=> (not res!3024449) (not e!4495442))))

(assert (=> start!729704 (= res!3024449 (validRegex!10357 baseR!101))))

(assert (=> start!729704 e!4495442))

(assert (=> start!729704 e!4495443))

(declare-fun e!4495439 () Bool)

(assert (=> start!729704 e!4495439))

(declare-fun e!4495444 () Bool)

(assert (=> start!729704 e!4495444))

(declare-fun e!4495438 () Bool)

(assert (=> start!729704 e!4495438))

(assert (=> start!729704 e!4495441))

(declare-fun b!7545894 () Bool)

(assert (=> b!7545894 (= e!4495442 (not e!4495445))))

(declare-fun res!3024450 () Bool)

(assert (=> b!7545894 (=> res!3024450 e!4495445)))

(declare-fun lt!2645501 () List!72812)

(declare-fun matchR!9531 (Regex!19929 List!72812) Bool)

(assert (=> b!7545894 (= res!3024450 (not (matchR!9531 r!24333 lt!2645501)))))

(declare-fun getSuffix!3615 (List!72812 List!72812) List!72812)

(assert (=> b!7545894 (= lt!2645501 (getSuffix!3615 knownP!30 testedP!423))))

(assert (=> b!7545894 (isPrefix!6135 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166796 0))(
  ( (Unit!166797) )
))
(declare-fun lt!2645500 () Unit!166796)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!885 (List!72812 List!72812 List!72812) Unit!166796)

(assert (=> b!7545894 (= lt!2645500 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!885 knownP!30 testedP!423 input!7874))))

(declare-fun b!7545895 () Bool)

(declare-fun res!3024453 () Bool)

(assert (=> b!7545895 (=> res!3024453 e!4495440)))

(declare-fun lostCause!1721 (Regex!19929) Bool)

(assert (=> b!7545895 (= res!3024453 (not (lostCause!1721 r!24333)))))

(declare-fun b!7545896 () Bool)

(declare-fun tp!2195015 () Bool)

(declare-fun tp!2195021 () Bool)

(assert (=> b!7545896 (= e!4495443 (and tp!2195015 tp!2195021))))

(declare-fun b!7545897 () Bool)

(declare-fun tp!2195013 () Bool)

(declare-fun tp!2195019 () Bool)

(assert (=> b!7545897 (= e!4495441 (and tp!2195013 tp!2195019))))

(declare-fun b!7545898 () Bool)

(declare-fun tp_is_empty!50213 () Bool)

(declare-fun tp!2195025 () Bool)

(assert (=> b!7545898 (= e!4495444 (and tp_is_empty!50213 tp!2195025))))

(declare-fun b!7545899 () Bool)

(assert (=> b!7545899 (= e!4495443 tp_is_empty!50213)))

(declare-fun b!7545900 () Bool)

(declare-fun tp!2195020 () Bool)

(declare-fun tp!2195022 () Bool)

(assert (=> b!7545900 (= e!4495441 (and tp!2195020 tp!2195022))))

(declare-fun b!7545901 () Bool)

(declare-fun res!3024452 () Bool)

(assert (=> b!7545901 (=> (not res!3024452) (not e!4495442))))

(assert (=> b!7545901 (= res!3024452 (isPrefix!6135 knownP!30 input!7874))))

(declare-fun b!7545902 () Bool)

(declare-fun tp!2195018 () Bool)

(assert (=> b!7545902 (= e!4495438 (and tp_is_empty!50213 tp!2195018))))

(declare-fun b!7545903 () Bool)

(declare-fun tp!2195017 () Bool)

(assert (=> b!7545903 (= e!4495439 (and tp_is_empty!50213 tp!2195017))))

(declare-fun b!7545904 () Bool)

(declare-fun ++!17446 (List!72812 List!72812) List!72812)

(assert (=> b!7545904 (= e!4495440 (= (++!17446 testedP!423 lt!2645501) knownP!30))))

(assert (=> b!7545904 (= (matchR!9531 baseR!101 testedP!423) (matchR!9531 lt!2645499 Nil!72688))))

(declare-fun lt!2645502 () Unit!166796)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!258 (Regex!19929 List!72812) Unit!166796)

(assert (=> b!7545904 (= lt!2645502 (lemmaMatchRIsSameAsWholeDerivativeAndNil!258 baseR!101 testedP!423))))

(declare-fun b!7545905 () Bool)

(declare-fun res!3024448 () Bool)

(assert (=> b!7545905 (=> (not res!3024448) (not e!4495442))))

(assert (=> b!7545905 (= res!3024448 (matchR!9531 baseR!101 knownP!30))))

(declare-fun b!7545906 () Bool)

(assert (=> b!7545906 (= e!4495441 tp_is_empty!50213)))

(declare-fun b!7545907 () Bool)

(declare-fun tp!2195014 () Bool)

(assert (=> b!7545907 (= e!4495443 tp!2195014)))

(assert (= (and start!729704 res!3024449) b!7545892))

(assert (= (and b!7545892 res!3024454) b!7545893))

(assert (= (and b!7545893 res!3024446) b!7545901))

(assert (= (and b!7545901 res!3024452) b!7545890))

(assert (= (and b!7545890 res!3024451) b!7545905))

(assert (= (and b!7545905 res!3024448) b!7545894))

(assert (= (and b!7545894 (not res!3024450)) b!7545889))

(assert (= (and b!7545889 (not res!3024447)) b!7545895))

(assert (= (and b!7545895 (not res!3024453)) b!7545904))

(get-info :version)

(assert (= (and start!729704 ((_ is ElementMatch!19929) baseR!101)) b!7545899))

(assert (= (and start!729704 ((_ is Concat!28774) baseR!101)) b!7545891))

(assert (= (and start!729704 ((_ is Star!19929) baseR!101)) b!7545907))

(assert (= (and start!729704 ((_ is Union!19929) baseR!101)) b!7545896))

(assert (= (and start!729704 ((_ is Cons!72688) input!7874)) b!7545903))

(assert (= (and start!729704 ((_ is Cons!72688) knownP!30)) b!7545898))

(assert (= (and start!729704 ((_ is Cons!72688) testedP!423)) b!7545902))

(assert (= (and start!729704 ((_ is ElementMatch!19929) r!24333)) b!7545906))

(assert (= (and start!729704 ((_ is Concat!28774) r!24333)) b!7545900))

(assert (= (and start!729704 ((_ is Star!19929) r!24333)) b!7545888))

(assert (= (and start!729704 ((_ is Union!19929) r!24333)) b!7545897))

(declare-fun m!8114504 () Bool)

(assert (=> b!7545895 m!8114504))

(declare-fun m!8114506 () Bool)

(assert (=> start!729704 m!8114506))

(declare-fun m!8114508 () Bool)

(assert (=> b!7545901 m!8114508))

(declare-fun m!8114510 () Bool)

(assert (=> b!7545905 m!8114510))

(declare-fun m!8114512 () Bool)

(assert (=> b!7545894 m!8114512))

(declare-fun m!8114514 () Bool)

(assert (=> b!7545894 m!8114514))

(declare-fun m!8114516 () Bool)

(assert (=> b!7545894 m!8114516))

(declare-fun m!8114518 () Bool)

(assert (=> b!7545894 m!8114518))

(declare-fun m!8114520 () Bool)

(assert (=> b!7545893 m!8114520))

(declare-fun m!8114522 () Bool)

(assert (=> b!7545904 m!8114522))

(declare-fun m!8114524 () Bool)

(assert (=> b!7545904 m!8114524))

(declare-fun m!8114526 () Bool)

(assert (=> b!7545904 m!8114526))

(declare-fun m!8114528 () Bool)

(assert (=> b!7545904 m!8114528))

(declare-fun m!8114530 () Bool)

(assert (=> b!7545892 m!8114530))

(declare-fun m!8114532 () Bool)

(assert (=> b!7545890 m!8114532))

(declare-fun m!8114534 () Bool)

(assert (=> b!7545890 m!8114534))

(declare-fun m!8114536 () Bool)

(assert (=> b!7545889 m!8114536))

(check-sat (not b!7545902) (not b!7545892) tp_is_empty!50213 (not b!7545905) (not b!7545890) (not b!7545894) (not b!7545895) (not b!7545893) (not b!7545900) (not b!7545888) (not b!7545891) (not b!7545897) (not b!7545889) (not b!7545903) (not b!7545904) (not b!7545896) (not start!729704) (not b!7545901) (not b!7545907) (not b!7545898))
(check-sat)
(get-model)

(declare-fun d!2312096 () Bool)

(declare-fun e!4495454 () Bool)

(assert (=> d!2312096 e!4495454))

(declare-fun res!3024464 () Bool)

(assert (=> d!2312096 (=> res!3024464 e!4495454)))

(declare-fun lt!2645505 () Bool)

(assert (=> d!2312096 (= res!3024464 (not lt!2645505))))

(declare-fun e!4495453 () Bool)

(assert (=> d!2312096 (= lt!2645505 e!4495453)))

(declare-fun res!3024466 () Bool)

(assert (=> d!2312096 (=> res!3024466 e!4495453)))

(assert (=> d!2312096 (= res!3024466 ((_ is Nil!72688) knownP!30))))

(assert (=> d!2312096 (= (isPrefix!6135 knownP!30 input!7874) lt!2645505)))

(declare-fun b!7545919 () Bool)

(assert (=> b!7545919 (= e!4495454 (>= (size!42425 input!7874) (size!42425 knownP!30)))))

(declare-fun b!7545918 () Bool)

(declare-fun e!4495452 () Bool)

(declare-fun tail!15064 (List!72812) List!72812)

(assert (=> b!7545918 (= e!4495452 (isPrefix!6135 (tail!15064 knownP!30) (tail!15064 input!7874)))))

(declare-fun b!7545916 () Bool)

(assert (=> b!7545916 (= e!4495453 e!4495452)))

(declare-fun res!3024465 () Bool)

(assert (=> b!7545916 (=> (not res!3024465) (not e!4495452))))

(assert (=> b!7545916 (= res!3024465 (not ((_ is Nil!72688) input!7874)))))

(declare-fun b!7545917 () Bool)

(declare-fun res!3024463 () Bool)

(assert (=> b!7545917 (=> (not res!3024463) (not e!4495452))))

(declare-fun head!15518 (List!72812) C!40184)

(assert (=> b!7545917 (= res!3024463 (= (head!15518 knownP!30) (head!15518 input!7874)))))

(assert (= (and d!2312096 (not res!3024466)) b!7545916))

(assert (= (and b!7545916 res!3024465) b!7545917))

(assert (= (and b!7545917 res!3024463) b!7545918))

(assert (= (and d!2312096 (not res!3024464)) b!7545919))

(declare-fun m!8114538 () Bool)

(assert (=> b!7545919 m!8114538))

(assert (=> b!7545919 m!8114532))

(declare-fun m!8114540 () Bool)

(assert (=> b!7545918 m!8114540))

(declare-fun m!8114542 () Bool)

(assert (=> b!7545918 m!8114542))

(assert (=> b!7545918 m!8114540))

(assert (=> b!7545918 m!8114542))

(declare-fun m!8114544 () Bool)

(assert (=> b!7545918 m!8114544))

(declare-fun m!8114546 () Bool)

(assert (=> b!7545917 m!8114546))

(declare-fun m!8114548 () Bool)

(assert (=> b!7545917 m!8114548))

(assert (=> b!7545901 d!2312096))

(declare-fun d!2312100 () Bool)

(declare-fun lt!2645508 () Regex!19929)

(assert (=> d!2312100 (validRegex!10357 lt!2645508)))

(declare-fun e!4495457 () Regex!19929)

(assert (=> d!2312100 (= lt!2645508 e!4495457)))

(declare-fun c!1392919 () Bool)

(assert (=> d!2312100 (= c!1392919 ((_ is Cons!72688) testedP!423))))

(assert (=> d!2312100 (validRegex!10357 baseR!101)))

(assert (=> d!2312100 (= (derivative!461 baseR!101 testedP!423) lt!2645508)))

(declare-fun b!7545924 () Bool)

(declare-fun derivativeStep!5718 (Regex!19929 C!40184) Regex!19929)

(assert (=> b!7545924 (= e!4495457 (derivative!461 (derivativeStep!5718 baseR!101 (h!79136 testedP!423)) (t!387529 testedP!423)))))

(declare-fun b!7545925 () Bool)

(assert (=> b!7545925 (= e!4495457 baseR!101)))

(assert (= (and d!2312100 c!1392919) b!7545924))

(assert (= (and d!2312100 (not c!1392919)) b!7545925))

(declare-fun m!8114550 () Bool)

(assert (=> d!2312100 m!8114550))

(assert (=> d!2312100 m!8114506))

(declare-fun m!8114552 () Bool)

(assert (=> b!7545924 m!8114552))

(assert (=> b!7545924 m!8114552))

(declare-fun m!8114554 () Bool)

(assert (=> b!7545924 m!8114554))

(assert (=> b!7545889 d!2312100))

(declare-fun b!7545996 () Bool)

(declare-fun res!3024507 () Bool)

(declare-fun e!4495493 () Bool)

(assert (=> b!7545996 (=> res!3024507 e!4495493)))

(declare-fun e!4495494 () Bool)

(assert (=> b!7545996 (= res!3024507 e!4495494)))

(declare-fun res!3024514 () Bool)

(assert (=> b!7545996 (=> (not res!3024514) (not e!4495494))))

(declare-fun lt!2645514 () Bool)

(assert (=> b!7545996 (= res!3024514 lt!2645514)))

(declare-fun b!7545997 () Bool)

(declare-fun res!3024509 () Bool)

(assert (=> b!7545997 (=> (not res!3024509) (not e!4495494))))

(declare-fun call!691998 () Bool)

(assert (=> b!7545997 (= res!3024509 (not call!691998))))

(declare-fun b!7545998 () Bool)

(declare-fun e!4495498 () Bool)

(declare-fun e!4495495 () Bool)

(assert (=> b!7545998 (= e!4495498 e!4495495)))

(declare-fun res!3024511 () Bool)

(assert (=> b!7545998 (=> res!3024511 e!4495495)))

(assert (=> b!7545998 (= res!3024511 call!691998)))

(declare-fun b!7545999 () Bool)

(assert (=> b!7545999 (= e!4495494 (= (head!15518 knownP!30) (c!1392916 baseR!101)))))

(declare-fun d!2312102 () Bool)

(declare-fun e!4495496 () Bool)

(assert (=> d!2312102 e!4495496))

(declare-fun c!1392935 () Bool)

(assert (=> d!2312102 (= c!1392935 ((_ is EmptyExpr!19929) baseR!101))))

(declare-fun e!4495499 () Bool)

(assert (=> d!2312102 (= lt!2645514 e!4495499)))

(declare-fun c!1392936 () Bool)

(declare-fun isEmpty!41385 (List!72812) Bool)

(assert (=> d!2312102 (= c!1392936 (isEmpty!41385 knownP!30))))

(assert (=> d!2312102 (validRegex!10357 baseR!101)))

(assert (=> d!2312102 (= (matchR!9531 baseR!101 knownP!30) lt!2645514)))

(declare-fun b!7546000 () Bool)

(declare-fun e!4495497 () Bool)

(assert (=> b!7546000 (= e!4495496 e!4495497)))

(declare-fun c!1392937 () Bool)

(assert (=> b!7546000 (= c!1392937 ((_ is EmptyLang!19929) baseR!101))))

(declare-fun b!7546001 () Bool)

(assert (=> b!7546001 (= e!4495499 (matchR!9531 (derivativeStep!5718 baseR!101 (head!15518 knownP!30)) (tail!15064 knownP!30)))))

(declare-fun b!7546002 () Bool)

(declare-fun res!3024512 () Bool)

(assert (=> b!7546002 (=> res!3024512 e!4495495)))

(assert (=> b!7546002 (= res!3024512 (not (isEmpty!41385 (tail!15064 knownP!30))))))

(declare-fun b!7546003 () Bool)

(assert (=> b!7546003 (= e!4495497 (not lt!2645514))))

(declare-fun b!7546004 () Bool)

(declare-fun res!3024510 () Bool)

(assert (=> b!7546004 (=> (not res!3024510) (not e!4495494))))

(assert (=> b!7546004 (= res!3024510 (isEmpty!41385 (tail!15064 knownP!30)))))

(declare-fun b!7546005 () Bool)

(declare-fun nullable!8689 (Regex!19929) Bool)

(assert (=> b!7546005 (= e!4495499 (nullable!8689 baseR!101))))

(declare-fun b!7546006 () Bool)

(assert (=> b!7546006 (= e!4495493 e!4495498)))

(declare-fun res!3024513 () Bool)

(assert (=> b!7546006 (=> (not res!3024513) (not e!4495498))))

(assert (=> b!7546006 (= res!3024513 (not lt!2645514))))

(declare-fun b!7546007 () Bool)

(assert (=> b!7546007 (= e!4495495 (not (= (head!15518 knownP!30) (c!1392916 baseR!101))))))

(declare-fun b!7546008 () Bool)

(assert (=> b!7546008 (= e!4495496 (= lt!2645514 call!691998))))

(declare-fun b!7546009 () Bool)

(declare-fun res!3024508 () Bool)

(assert (=> b!7546009 (=> res!3024508 e!4495493)))

(assert (=> b!7546009 (= res!3024508 (not ((_ is ElementMatch!19929) baseR!101)))))

(assert (=> b!7546009 (= e!4495497 e!4495493)))

(declare-fun bm!691993 () Bool)

(assert (=> bm!691993 (= call!691998 (isEmpty!41385 knownP!30))))

(assert (= (and d!2312102 c!1392936) b!7546005))

(assert (= (and d!2312102 (not c!1392936)) b!7546001))

(assert (= (and d!2312102 c!1392935) b!7546008))

(assert (= (and d!2312102 (not c!1392935)) b!7546000))

(assert (= (and b!7546000 c!1392937) b!7546003))

(assert (= (and b!7546000 (not c!1392937)) b!7546009))

(assert (= (and b!7546009 (not res!3024508)) b!7545996))

(assert (= (and b!7545996 res!3024514) b!7545997))

(assert (= (and b!7545997 res!3024509) b!7546004))

(assert (= (and b!7546004 res!3024510) b!7545999))

(assert (= (and b!7545996 (not res!3024507)) b!7546006))

(assert (= (and b!7546006 res!3024513) b!7545998))

(assert (= (and b!7545998 (not res!3024511)) b!7546002))

(assert (= (and b!7546002 (not res!3024512)) b!7546007))

(assert (= (or b!7546008 b!7545997 b!7545998) bm!691993))

(assert (=> b!7545999 m!8114546))

(declare-fun m!8114570 () Bool)

(assert (=> b!7546005 m!8114570))

(assert (=> b!7546001 m!8114546))

(assert (=> b!7546001 m!8114546))

(declare-fun m!8114572 () Bool)

(assert (=> b!7546001 m!8114572))

(assert (=> b!7546001 m!8114540))

(assert (=> b!7546001 m!8114572))

(assert (=> b!7546001 m!8114540))

(declare-fun m!8114574 () Bool)

(assert (=> b!7546001 m!8114574))

(assert (=> b!7546004 m!8114540))

(assert (=> b!7546004 m!8114540))

(declare-fun m!8114576 () Bool)

(assert (=> b!7546004 m!8114576))

(declare-fun m!8114578 () Bool)

(assert (=> bm!691993 m!8114578))

(assert (=> b!7546002 m!8114540))

(assert (=> b!7546002 m!8114540))

(assert (=> b!7546002 m!8114576))

(assert (=> d!2312102 m!8114578))

(assert (=> d!2312102 m!8114506))

(assert (=> b!7546007 m!8114546))

(assert (=> b!7545905 d!2312102))

(declare-fun d!2312106 () Bool)

(declare-fun lostCauseFct!442 (Regex!19929) Bool)

(assert (=> d!2312106 (= (lostCause!1721 r!24333) (lostCauseFct!442 r!24333))))

(declare-fun bs!1940105 () Bool)

(assert (= bs!1940105 d!2312106))

(declare-fun m!8114586 () Bool)

(assert (=> bs!1940105 m!8114586))

(assert (=> b!7545895 d!2312106))

(declare-fun d!2312110 () Bool)

(declare-fun lt!2645520 () Int)

(assert (=> d!2312110 (>= lt!2645520 0)))

(declare-fun e!4495505 () Int)

(assert (=> d!2312110 (= lt!2645520 e!4495505)))

(declare-fun c!1392943 () Bool)

(assert (=> d!2312110 (= c!1392943 ((_ is Nil!72688) knownP!30))))

(assert (=> d!2312110 (= (size!42425 knownP!30) lt!2645520)))

(declare-fun b!7546020 () Bool)

(assert (=> b!7546020 (= e!4495505 0)))

(declare-fun b!7546021 () Bool)

(assert (=> b!7546021 (= e!4495505 (+ 1 (size!42425 (t!387529 knownP!30))))))

(assert (= (and d!2312110 c!1392943) b!7546020))

(assert (= (and d!2312110 (not c!1392943)) b!7546021))

(declare-fun m!8114588 () Bool)

(assert (=> b!7546021 m!8114588))

(assert (=> b!7545890 d!2312110))

(declare-fun d!2312112 () Bool)

(declare-fun lt!2645521 () Int)

(assert (=> d!2312112 (>= lt!2645521 0)))

(declare-fun e!4495506 () Int)

(assert (=> d!2312112 (= lt!2645521 e!4495506)))

(declare-fun c!1392944 () Bool)

(assert (=> d!2312112 (= c!1392944 ((_ is Nil!72688) testedP!423))))

(assert (=> d!2312112 (= (size!42425 testedP!423) lt!2645521)))

(declare-fun b!7546022 () Bool)

(assert (=> b!7546022 (= e!4495506 0)))

(declare-fun b!7546023 () Bool)

(assert (=> b!7546023 (= e!4495506 (+ 1 (size!42425 (t!387529 testedP!423))))))

(assert (= (and d!2312112 c!1392944) b!7546022))

(assert (= (and d!2312112 (not c!1392944)) b!7546023))

(declare-fun m!8114590 () Bool)

(assert (=> b!7546023 m!8114590))

(assert (=> b!7545890 d!2312112))

(declare-fun d!2312114 () Bool)

(declare-fun e!4495509 () Bool)

(assert (=> d!2312114 e!4495509))

(declare-fun res!3024516 () Bool)

(assert (=> d!2312114 (=> res!3024516 e!4495509)))

(declare-fun lt!2645522 () Bool)

(assert (=> d!2312114 (= res!3024516 (not lt!2645522))))

(declare-fun e!4495508 () Bool)

(assert (=> d!2312114 (= lt!2645522 e!4495508)))

(declare-fun res!3024518 () Bool)

(assert (=> d!2312114 (=> res!3024518 e!4495508)))

(assert (=> d!2312114 (= res!3024518 ((_ is Nil!72688) testedP!423))))

(assert (=> d!2312114 (= (isPrefix!6135 testedP!423 input!7874) lt!2645522)))

(declare-fun b!7546027 () Bool)

(assert (=> b!7546027 (= e!4495509 (>= (size!42425 input!7874) (size!42425 testedP!423)))))

(declare-fun b!7546026 () Bool)

(declare-fun e!4495507 () Bool)

(assert (=> b!7546026 (= e!4495507 (isPrefix!6135 (tail!15064 testedP!423) (tail!15064 input!7874)))))

(declare-fun b!7546024 () Bool)

(assert (=> b!7546024 (= e!4495508 e!4495507)))

(declare-fun res!3024517 () Bool)

(assert (=> b!7546024 (=> (not res!3024517) (not e!4495507))))

(assert (=> b!7546024 (= res!3024517 (not ((_ is Nil!72688) input!7874)))))

(declare-fun b!7546025 () Bool)

(declare-fun res!3024515 () Bool)

(assert (=> b!7546025 (=> (not res!3024515) (not e!4495507))))

(assert (=> b!7546025 (= res!3024515 (= (head!15518 testedP!423) (head!15518 input!7874)))))

(assert (= (and d!2312114 (not res!3024518)) b!7546024))

(assert (= (and b!7546024 res!3024517) b!7546025))

(assert (= (and b!7546025 res!3024515) b!7546026))

(assert (= (and d!2312114 (not res!3024516)) b!7546027))

(assert (=> b!7546027 m!8114538))

(assert (=> b!7546027 m!8114534))

(declare-fun m!8114592 () Bool)

(assert (=> b!7546026 m!8114592))

(assert (=> b!7546026 m!8114542))

(assert (=> b!7546026 m!8114592))

(assert (=> b!7546026 m!8114542))

(declare-fun m!8114594 () Bool)

(assert (=> b!7546026 m!8114594))

(declare-fun m!8114596 () Bool)

(assert (=> b!7546025 m!8114596))

(assert (=> b!7546025 m!8114548))

(assert (=> b!7545893 d!2312114))

(declare-fun b!7546049 () Bool)

(declare-fun e!4495523 () List!72812)

(assert (=> b!7546049 (= e!4495523 (Cons!72688 (h!79136 testedP!423) (++!17446 (t!387529 testedP!423) lt!2645501)))))

(declare-fun lt!2645528 () List!72812)

(declare-fun b!7546051 () Bool)

(declare-fun e!4495524 () Bool)

(assert (=> b!7546051 (= e!4495524 (or (not (= lt!2645501 Nil!72688)) (= lt!2645528 testedP!423)))))

(declare-fun d!2312116 () Bool)

(assert (=> d!2312116 e!4495524))

(declare-fun res!3024536 () Bool)

(assert (=> d!2312116 (=> (not res!3024536) (not e!4495524))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15378 (List!72812) (InoxSet C!40184))

(assert (=> d!2312116 (= res!3024536 (= (content!15378 lt!2645528) ((_ map or) (content!15378 testedP!423) (content!15378 lt!2645501))))))

(assert (=> d!2312116 (= lt!2645528 e!4495523)))

(declare-fun c!1392947 () Bool)

(assert (=> d!2312116 (= c!1392947 ((_ is Nil!72688) testedP!423))))

(assert (=> d!2312116 (= (++!17446 testedP!423 lt!2645501) lt!2645528)))

(declare-fun b!7546050 () Bool)

(declare-fun res!3024535 () Bool)

(assert (=> b!7546050 (=> (not res!3024535) (not e!4495524))))

(assert (=> b!7546050 (= res!3024535 (= (size!42425 lt!2645528) (+ (size!42425 testedP!423) (size!42425 lt!2645501))))))

(declare-fun b!7546048 () Bool)

(assert (=> b!7546048 (= e!4495523 lt!2645501)))

(assert (= (and d!2312116 c!1392947) b!7546048))

(assert (= (and d!2312116 (not c!1392947)) b!7546049))

(assert (= (and d!2312116 res!3024536) b!7546050))

(assert (= (and b!7546050 res!3024535) b!7546051))

(declare-fun m!8114606 () Bool)

(assert (=> b!7546049 m!8114606))

(declare-fun m!8114608 () Bool)

(assert (=> d!2312116 m!8114608))

(declare-fun m!8114610 () Bool)

(assert (=> d!2312116 m!8114610))

(declare-fun m!8114612 () Bool)

(assert (=> d!2312116 m!8114612))

(declare-fun m!8114614 () Bool)

(assert (=> b!7546050 m!8114614))

(assert (=> b!7546050 m!8114534))

(declare-fun m!8114616 () Bool)

(assert (=> b!7546050 m!8114616))

(assert (=> b!7545904 d!2312116))

(declare-fun b!7546052 () Bool)

(declare-fun res!3024537 () Bool)

(declare-fun e!4495525 () Bool)

(assert (=> b!7546052 (=> res!3024537 e!4495525)))

(declare-fun e!4495526 () Bool)

(assert (=> b!7546052 (= res!3024537 e!4495526)))

(declare-fun res!3024544 () Bool)

(assert (=> b!7546052 (=> (not res!3024544) (not e!4495526))))

(declare-fun lt!2645531 () Bool)

(assert (=> b!7546052 (= res!3024544 lt!2645531)))

(declare-fun b!7546053 () Bool)

(declare-fun res!3024539 () Bool)

(assert (=> b!7546053 (=> (not res!3024539) (not e!4495526))))

(declare-fun call!691999 () Bool)

(assert (=> b!7546053 (= res!3024539 (not call!691999))))

(declare-fun b!7546054 () Bool)

(declare-fun e!4495530 () Bool)

(declare-fun e!4495527 () Bool)

(assert (=> b!7546054 (= e!4495530 e!4495527)))

(declare-fun res!3024541 () Bool)

(assert (=> b!7546054 (=> res!3024541 e!4495527)))

(assert (=> b!7546054 (= res!3024541 call!691999)))

(declare-fun b!7546055 () Bool)

(assert (=> b!7546055 (= e!4495526 (= (head!15518 testedP!423) (c!1392916 baseR!101)))))

(declare-fun d!2312120 () Bool)

(declare-fun e!4495528 () Bool)

(assert (=> d!2312120 e!4495528))

(declare-fun c!1392948 () Bool)

(assert (=> d!2312120 (= c!1392948 ((_ is EmptyExpr!19929) baseR!101))))

(declare-fun e!4495531 () Bool)

(assert (=> d!2312120 (= lt!2645531 e!4495531)))

(declare-fun c!1392949 () Bool)

(assert (=> d!2312120 (= c!1392949 (isEmpty!41385 testedP!423))))

(assert (=> d!2312120 (validRegex!10357 baseR!101)))

(assert (=> d!2312120 (= (matchR!9531 baseR!101 testedP!423) lt!2645531)))

(declare-fun b!7546056 () Bool)

(declare-fun e!4495529 () Bool)

(assert (=> b!7546056 (= e!4495528 e!4495529)))

(declare-fun c!1392950 () Bool)

(assert (=> b!7546056 (= c!1392950 ((_ is EmptyLang!19929) baseR!101))))

(declare-fun b!7546057 () Bool)

(assert (=> b!7546057 (= e!4495531 (matchR!9531 (derivativeStep!5718 baseR!101 (head!15518 testedP!423)) (tail!15064 testedP!423)))))

(declare-fun b!7546058 () Bool)

(declare-fun res!3024542 () Bool)

(assert (=> b!7546058 (=> res!3024542 e!4495527)))

(assert (=> b!7546058 (= res!3024542 (not (isEmpty!41385 (tail!15064 testedP!423))))))

(declare-fun b!7546059 () Bool)

(assert (=> b!7546059 (= e!4495529 (not lt!2645531))))

(declare-fun b!7546060 () Bool)

(declare-fun res!3024540 () Bool)

(assert (=> b!7546060 (=> (not res!3024540) (not e!4495526))))

(assert (=> b!7546060 (= res!3024540 (isEmpty!41385 (tail!15064 testedP!423)))))

(declare-fun b!7546061 () Bool)

(assert (=> b!7546061 (= e!4495531 (nullable!8689 baseR!101))))

(declare-fun b!7546062 () Bool)

(assert (=> b!7546062 (= e!4495525 e!4495530)))

(declare-fun res!3024543 () Bool)

(assert (=> b!7546062 (=> (not res!3024543) (not e!4495530))))

(assert (=> b!7546062 (= res!3024543 (not lt!2645531))))

(declare-fun b!7546063 () Bool)

(assert (=> b!7546063 (= e!4495527 (not (= (head!15518 testedP!423) (c!1392916 baseR!101))))))

(declare-fun b!7546064 () Bool)

(assert (=> b!7546064 (= e!4495528 (= lt!2645531 call!691999))))

(declare-fun b!7546065 () Bool)

(declare-fun res!3024538 () Bool)

(assert (=> b!7546065 (=> res!3024538 e!4495525)))

(assert (=> b!7546065 (= res!3024538 (not ((_ is ElementMatch!19929) baseR!101)))))

(assert (=> b!7546065 (= e!4495529 e!4495525)))

(declare-fun bm!691994 () Bool)

(assert (=> bm!691994 (= call!691999 (isEmpty!41385 testedP!423))))

(assert (= (and d!2312120 c!1392949) b!7546061))

(assert (= (and d!2312120 (not c!1392949)) b!7546057))

(assert (= (and d!2312120 c!1392948) b!7546064))

(assert (= (and d!2312120 (not c!1392948)) b!7546056))

(assert (= (and b!7546056 c!1392950) b!7546059))

(assert (= (and b!7546056 (not c!1392950)) b!7546065))

(assert (= (and b!7546065 (not res!3024538)) b!7546052))

(assert (= (and b!7546052 res!3024544) b!7546053))

(assert (= (and b!7546053 res!3024539) b!7546060))

(assert (= (and b!7546060 res!3024540) b!7546055))

(assert (= (and b!7546052 (not res!3024537)) b!7546062))

(assert (= (and b!7546062 res!3024543) b!7546054))

(assert (= (and b!7546054 (not res!3024541)) b!7546058))

(assert (= (and b!7546058 (not res!3024542)) b!7546063))

(assert (= (or b!7546064 b!7546053 b!7546054) bm!691994))

(assert (=> b!7546055 m!8114596))

(assert (=> b!7546061 m!8114570))

(assert (=> b!7546057 m!8114596))

(assert (=> b!7546057 m!8114596))

(declare-fun m!8114628 () Bool)

(assert (=> b!7546057 m!8114628))

(assert (=> b!7546057 m!8114592))

(assert (=> b!7546057 m!8114628))

(assert (=> b!7546057 m!8114592))

(declare-fun m!8114630 () Bool)

(assert (=> b!7546057 m!8114630))

(assert (=> b!7546060 m!8114592))

(assert (=> b!7546060 m!8114592))

(declare-fun m!8114632 () Bool)

(assert (=> b!7546060 m!8114632))

(declare-fun m!8114634 () Bool)

(assert (=> bm!691994 m!8114634))

(assert (=> b!7546058 m!8114592))

(assert (=> b!7546058 m!8114592))

(assert (=> b!7546058 m!8114632))

(assert (=> d!2312120 m!8114634))

(assert (=> d!2312120 m!8114506))

(assert (=> b!7546063 m!8114596))

(assert (=> b!7545904 d!2312120))

(declare-fun b!7546070 () Bool)

(declare-fun res!3024549 () Bool)

(declare-fun e!4495535 () Bool)

(assert (=> b!7546070 (=> res!3024549 e!4495535)))

(declare-fun e!4495536 () Bool)

(assert (=> b!7546070 (= res!3024549 e!4495536)))

(declare-fun res!3024556 () Bool)

(assert (=> b!7546070 (=> (not res!3024556) (not e!4495536))))

(declare-fun lt!2645534 () Bool)

(assert (=> b!7546070 (= res!3024556 lt!2645534)))

(declare-fun b!7546071 () Bool)

(declare-fun res!3024551 () Bool)

(assert (=> b!7546071 (=> (not res!3024551) (not e!4495536))))

(declare-fun call!692000 () Bool)

(assert (=> b!7546071 (= res!3024551 (not call!692000))))

(declare-fun b!7546072 () Bool)

(declare-fun e!4495540 () Bool)

(declare-fun e!4495537 () Bool)

(assert (=> b!7546072 (= e!4495540 e!4495537)))

(declare-fun res!3024553 () Bool)

(assert (=> b!7546072 (=> res!3024553 e!4495537)))

(assert (=> b!7546072 (= res!3024553 call!692000)))

(declare-fun b!7546073 () Bool)

(assert (=> b!7546073 (= e!4495536 (= (head!15518 Nil!72688) (c!1392916 lt!2645499)))))

(declare-fun d!2312126 () Bool)

(declare-fun e!4495538 () Bool)

(assert (=> d!2312126 e!4495538))

(declare-fun c!1392951 () Bool)

(assert (=> d!2312126 (= c!1392951 ((_ is EmptyExpr!19929) lt!2645499))))

(declare-fun e!4495541 () Bool)

(assert (=> d!2312126 (= lt!2645534 e!4495541)))

(declare-fun c!1392952 () Bool)

(assert (=> d!2312126 (= c!1392952 (isEmpty!41385 Nil!72688))))

(assert (=> d!2312126 (validRegex!10357 lt!2645499)))

(assert (=> d!2312126 (= (matchR!9531 lt!2645499 Nil!72688) lt!2645534)))

(declare-fun b!7546074 () Bool)

(declare-fun e!4495539 () Bool)

(assert (=> b!7546074 (= e!4495538 e!4495539)))

(declare-fun c!1392953 () Bool)

(assert (=> b!7546074 (= c!1392953 ((_ is EmptyLang!19929) lt!2645499))))

(declare-fun b!7546075 () Bool)

(assert (=> b!7546075 (= e!4495541 (matchR!9531 (derivativeStep!5718 lt!2645499 (head!15518 Nil!72688)) (tail!15064 Nil!72688)))))

(declare-fun b!7546076 () Bool)

(declare-fun res!3024554 () Bool)

(assert (=> b!7546076 (=> res!3024554 e!4495537)))

(assert (=> b!7546076 (= res!3024554 (not (isEmpty!41385 (tail!15064 Nil!72688))))))

(declare-fun b!7546077 () Bool)

(assert (=> b!7546077 (= e!4495539 (not lt!2645534))))

(declare-fun b!7546078 () Bool)

(declare-fun res!3024552 () Bool)

(assert (=> b!7546078 (=> (not res!3024552) (not e!4495536))))

(assert (=> b!7546078 (= res!3024552 (isEmpty!41385 (tail!15064 Nil!72688)))))

(declare-fun b!7546079 () Bool)

(assert (=> b!7546079 (= e!4495541 (nullable!8689 lt!2645499))))

(declare-fun b!7546080 () Bool)

(assert (=> b!7546080 (= e!4495535 e!4495540)))

(declare-fun res!3024555 () Bool)

(assert (=> b!7546080 (=> (not res!3024555) (not e!4495540))))

(assert (=> b!7546080 (= res!3024555 (not lt!2645534))))

(declare-fun b!7546081 () Bool)

(assert (=> b!7546081 (= e!4495537 (not (= (head!15518 Nil!72688) (c!1392916 lt!2645499))))))

(declare-fun b!7546082 () Bool)

(assert (=> b!7546082 (= e!4495538 (= lt!2645534 call!692000))))

(declare-fun b!7546083 () Bool)

(declare-fun res!3024550 () Bool)

(assert (=> b!7546083 (=> res!3024550 e!4495535)))

(assert (=> b!7546083 (= res!3024550 (not ((_ is ElementMatch!19929) lt!2645499)))))

(assert (=> b!7546083 (= e!4495539 e!4495535)))

(declare-fun bm!691995 () Bool)

(assert (=> bm!691995 (= call!692000 (isEmpty!41385 Nil!72688))))

(assert (= (and d!2312126 c!1392952) b!7546079))

(assert (= (and d!2312126 (not c!1392952)) b!7546075))

(assert (= (and d!2312126 c!1392951) b!7546082))

(assert (= (and d!2312126 (not c!1392951)) b!7546074))

(assert (= (and b!7546074 c!1392953) b!7546077))

(assert (= (and b!7546074 (not c!1392953)) b!7546083))

(assert (= (and b!7546083 (not res!3024550)) b!7546070))

(assert (= (and b!7546070 res!3024556) b!7546071))

(assert (= (and b!7546071 res!3024551) b!7546078))

(assert (= (and b!7546078 res!3024552) b!7546073))

(assert (= (and b!7546070 (not res!3024549)) b!7546080))

(assert (= (and b!7546080 res!3024555) b!7546072))

(assert (= (and b!7546072 (not res!3024553)) b!7546076))

(assert (= (and b!7546076 (not res!3024554)) b!7546081))

(assert (= (or b!7546082 b!7546071 b!7546072) bm!691995))

(declare-fun m!8114636 () Bool)

(assert (=> b!7546073 m!8114636))

(declare-fun m!8114638 () Bool)

(assert (=> b!7546079 m!8114638))

(assert (=> b!7546075 m!8114636))

(assert (=> b!7546075 m!8114636))

(declare-fun m!8114640 () Bool)

(assert (=> b!7546075 m!8114640))

(declare-fun m!8114642 () Bool)

(assert (=> b!7546075 m!8114642))

(assert (=> b!7546075 m!8114640))

(assert (=> b!7546075 m!8114642))

(declare-fun m!8114644 () Bool)

(assert (=> b!7546075 m!8114644))

(assert (=> b!7546078 m!8114642))

(assert (=> b!7546078 m!8114642))

(declare-fun m!8114646 () Bool)

(assert (=> b!7546078 m!8114646))

(declare-fun m!8114648 () Bool)

(assert (=> bm!691995 m!8114648))

(assert (=> b!7546076 m!8114642))

(assert (=> b!7546076 m!8114642))

(assert (=> b!7546076 m!8114646))

(assert (=> d!2312126 m!8114648))

(declare-fun m!8114650 () Bool)

(assert (=> d!2312126 m!8114650))

(assert (=> b!7546081 m!8114636))

(assert (=> b!7545904 d!2312126))

(declare-fun d!2312128 () Bool)

(assert (=> d!2312128 (= (matchR!9531 baseR!101 testedP!423) (matchR!9531 (derivative!461 baseR!101 testedP!423) Nil!72688))))

(declare-fun lt!2645540 () Unit!166796)

(declare-fun choose!58395 (Regex!19929 List!72812) Unit!166796)

(assert (=> d!2312128 (= lt!2645540 (choose!58395 baseR!101 testedP!423))))

(assert (=> d!2312128 (validRegex!10357 baseR!101)))

(assert (=> d!2312128 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!258 baseR!101 testedP!423) lt!2645540)))

(declare-fun bs!1940107 () Bool)

(assert (= bs!1940107 d!2312128))

(assert (=> bs!1940107 m!8114536))

(assert (=> bs!1940107 m!8114536))

(declare-fun m!8114664 () Bool)

(assert (=> bs!1940107 m!8114664))

(declare-fun m!8114666 () Bool)

(assert (=> bs!1940107 m!8114666))

(assert (=> bs!1940107 m!8114506))

(assert (=> bs!1940107 m!8114524))

(assert (=> b!7545904 d!2312128))

(declare-fun b!7546110 () Bool)

(declare-fun res!3024571 () Bool)

(declare-fun e!4495555 () Bool)

(assert (=> b!7546110 (=> res!3024571 e!4495555)))

(declare-fun e!4495556 () Bool)

(assert (=> b!7546110 (= res!3024571 e!4495556)))

(declare-fun res!3024578 () Bool)

(assert (=> b!7546110 (=> (not res!3024578) (not e!4495556))))

(declare-fun lt!2645542 () Bool)

(assert (=> b!7546110 (= res!3024578 lt!2645542)))

(declare-fun b!7546111 () Bool)

(declare-fun res!3024573 () Bool)

(assert (=> b!7546111 (=> (not res!3024573) (not e!4495556))))

(declare-fun call!692002 () Bool)

(assert (=> b!7546111 (= res!3024573 (not call!692002))))

(declare-fun b!7546112 () Bool)

(declare-fun e!4495560 () Bool)

(declare-fun e!4495557 () Bool)

(assert (=> b!7546112 (= e!4495560 e!4495557)))

(declare-fun res!3024575 () Bool)

(assert (=> b!7546112 (=> res!3024575 e!4495557)))

(assert (=> b!7546112 (= res!3024575 call!692002)))

(declare-fun b!7546113 () Bool)

(assert (=> b!7546113 (= e!4495556 (= (head!15518 lt!2645501) (c!1392916 r!24333)))))

(declare-fun d!2312132 () Bool)

(declare-fun e!4495558 () Bool)

(assert (=> d!2312132 e!4495558))

(declare-fun c!1392960 () Bool)

(assert (=> d!2312132 (= c!1392960 ((_ is EmptyExpr!19929) r!24333))))

(declare-fun e!4495561 () Bool)

(assert (=> d!2312132 (= lt!2645542 e!4495561)))

(declare-fun c!1392961 () Bool)

(assert (=> d!2312132 (= c!1392961 (isEmpty!41385 lt!2645501))))

(assert (=> d!2312132 (validRegex!10357 r!24333)))

(assert (=> d!2312132 (= (matchR!9531 r!24333 lt!2645501) lt!2645542)))

(declare-fun b!7546114 () Bool)

(declare-fun e!4495559 () Bool)

(assert (=> b!7546114 (= e!4495558 e!4495559)))

(declare-fun c!1392962 () Bool)

(assert (=> b!7546114 (= c!1392962 ((_ is EmptyLang!19929) r!24333))))

(declare-fun b!7546115 () Bool)

(assert (=> b!7546115 (= e!4495561 (matchR!9531 (derivativeStep!5718 r!24333 (head!15518 lt!2645501)) (tail!15064 lt!2645501)))))

(declare-fun b!7546116 () Bool)

(declare-fun res!3024576 () Bool)

(assert (=> b!7546116 (=> res!3024576 e!4495557)))

(assert (=> b!7546116 (= res!3024576 (not (isEmpty!41385 (tail!15064 lt!2645501))))))

(declare-fun b!7546117 () Bool)

(assert (=> b!7546117 (= e!4495559 (not lt!2645542))))

(declare-fun b!7546118 () Bool)

(declare-fun res!3024574 () Bool)

(assert (=> b!7546118 (=> (not res!3024574) (not e!4495556))))

(assert (=> b!7546118 (= res!3024574 (isEmpty!41385 (tail!15064 lt!2645501)))))

(declare-fun b!7546119 () Bool)

(assert (=> b!7546119 (= e!4495561 (nullable!8689 r!24333))))

(declare-fun b!7546120 () Bool)

(assert (=> b!7546120 (= e!4495555 e!4495560)))

(declare-fun res!3024577 () Bool)

(assert (=> b!7546120 (=> (not res!3024577) (not e!4495560))))

(assert (=> b!7546120 (= res!3024577 (not lt!2645542))))

(declare-fun b!7546121 () Bool)

(assert (=> b!7546121 (= e!4495557 (not (= (head!15518 lt!2645501) (c!1392916 r!24333))))))

(declare-fun b!7546122 () Bool)

(assert (=> b!7546122 (= e!4495558 (= lt!2645542 call!692002))))

(declare-fun b!7546123 () Bool)

(declare-fun res!3024572 () Bool)

(assert (=> b!7546123 (=> res!3024572 e!4495555)))

(assert (=> b!7546123 (= res!3024572 (not ((_ is ElementMatch!19929) r!24333)))))

(assert (=> b!7546123 (= e!4495559 e!4495555)))

(declare-fun bm!691997 () Bool)

(assert (=> bm!691997 (= call!692002 (isEmpty!41385 lt!2645501))))

(assert (= (and d!2312132 c!1392961) b!7546119))

(assert (= (and d!2312132 (not c!1392961)) b!7546115))

(assert (= (and d!2312132 c!1392960) b!7546122))

(assert (= (and d!2312132 (not c!1392960)) b!7546114))

(assert (= (and b!7546114 c!1392962) b!7546117))

(assert (= (and b!7546114 (not c!1392962)) b!7546123))

(assert (= (and b!7546123 (not res!3024572)) b!7546110))

(assert (= (and b!7546110 res!3024578) b!7546111))

(assert (= (and b!7546111 res!3024573) b!7546118))

(assert (= (and b!7546118 res!3024574) b!7546113))

(assert (= (and b!7546110 (not res!3024571)) b!7546120))

(assert (= (and b!7546120 res!3024577) b!7546112))

(assert (= (and b!7546112 (not res!3024575)) b!7546116))

(assert (= (and b!7546116 (not res!3024576)) b!7546121))

(assert (= (or b!7546122 b!7546111 b!7546112) bm!691997))

(declare-fun m!8114670 () Bool)

(assert (=> b!7546113 m!8114670))

(declare-fun m!8114674 () Bool)

(assert (=> b!7546119 m!8114674))

(assert (=> b!7546115 m!8114670))

(assert (=> b!7546115 m!8114670))

(declare-fun m!8114680 () Bool)

(assert (=> b!7546115 m!8114680))

(declare-fun m!8114682 () Bool)

(assert (=> b!7546115 m!8114682))

(assert (=> b!7546115 m!8114680))

(assert (=> b!7546115 m!8114682))

(declare-fun m!8114686 () Bool)

(assert (=> b!7546115 m!8114686))

(assert (=> b!7546118 m!8114682))

(assert (=> b!7546118 m!8114682))

(declare-fun m!8114688 () Bool)

(assert (=> b!7546118 m!8114688))

(declare-fun m!8114690 () Bool)

(assert (=> bm!691997 m!8114690))

(assert (=> b!7546116 m!8114682))

(assert (=> b!7546116 m!8114682))

(assert (=> b!7546116 m!8114688))

(assert (=> d!2312132 m!8114690))

(assert (=> d!2312132 m!8114530))

(assert (=> b!7546121 m!8114670))

(assert (=> b!7545894 d!2312132))

(declare-fun d!2312136 () Bool)

(declare-fun lt!2645546 () List!72812)

(assert (=> d!2312136 (= (++!17446 testedP!423 lt!2645546) knownP!30)))

(declare-fun e!4495571 () List!72812)

(assert (=> d!2312136 (= lt!2645546 e!4495571)))

(declare-fun c!1392968 () Bool)

(assert (=> d!2312136 (= c!1392968 ((_ is Cons!72688) testedP!423))))

(assert (=> d!2312136 (>= (size!42425 knownP!30) (size!42425 testedP!423))))

(assert (=> d!2312136 (= (getSuffix!3615 knownP!30 testedP!423) lt!2645546)))

(declare-fun b!7546142 () Bool)

(assert (=> b!7546142 (= e!4495571 (getSuffix!3615 (tail!15064 knownP!30) (t!387529 testedP!423)))))

(declare-fun b!7546143 () Bool)

(assert (=> b!7546143 (= e!4495571 knownP!30)))

(assert (= (and d!2312136 c!1392968) b!7546142))

(assert (= (and d!2312136 (not c!1392968)) b!7546143))

(declare-fun m!8114708 () Bool)

(assert (=> d!2312136 m!8114708))

(assert (=> d!2312136 m!8114532))

(assert (=> d!2312136 m!8114534))

(assert (=> b!7546142 m!8114540))

(assert (=> b!7546142 m!8114540))

(declare-fun m!8114710 () Bool)

(assert (=> b!7546142 m!8114710))

(assert (=> b!7545894 d!2312136))

(declare-fun d!2312140 () Bool)

(declare-fun e!4495574 () Bool)

(assert (=> d!2312140 e!4495574))

(declare-fun res!3024588 () Bool)

(assert (=> d!2312140 (=> res!3024588 e!4495574)))

(declare-fun lt!2645547 () Bool)

(assert (=> d!2312140 (= res!3024588 (not lt!2645547))))

(declare-fun e!4495573 () Bool)

(assert (=> d!2312140 (= lt!2645547 e!4495573)))

(declare-fun res!3024590 () Bool)

(assert (=> d!2312140 (=> res!3024590 e!4495573)))

(assert (=> d!2312140 (= res!3024590 ((_ is Nil!72688) testedP!423))))

(assert (=> d!2312140 (= (isPrefix!6135 testedP!423 knownP!30) lt!2645547)))

(declare-fun b!7546147 () Bool)

(assert (=> b!7546147 (= e!4495574 (>= (size!42425 knownP!30) (size!42425 testedP!423)))))

(declare-fun b!7546146 () Bool)

(declare-fun e!4495572 () Bool)

(assert (=> b!7546146 (= e!4495572 (isPrefix!6135 (tail!15064 testedP!423) (tail!15064 knownP!30)))))

(declare-fun b!7546144 () Bool)

(assert (=> b!7546144 (= e!4495573 e!4495572)))

(declare-fun res!3024589 () Bool)

(assert (=> b!7546144 (=> (not res!3024589) (not e!4495572))))

(assert (=> b!7546144 (= res!3024589 (not ((_ is Nil!72688) knownP!30)))))

(declare-fun b!7546145 () Bool)

(declare-fun res!3024587 () Bool)

(assert (=> b!7546145 (=> (not res!3024587) (not e!4495572))))

(assert (=> b!7546145 (= res!3024587 (= (head!15518 testedP!423) (head!15518 knownP!30)))))

(assert (= (and d!2312140 (not res!3024590)) b!7546144))

(assert (= (and b!7546144 res!3024589) b!7546145))

(assert (= (and b!7546145 res!3024587) b!7546146))

(assert (= (and d!2312140 (not res!3024588)) b!7546147))

(assert (=> b!7546147 m!8114532))

(assert (=> b!7546147 m!8114534))

(assert (=> b!7546146 m!8114592))

(assert (=> b!7546146 m!8114540))

(assert (=> b!7546146 m!8114592))

(assert (=> b!7546146 m!8114540))

(declare-fun m!8114712 () Bool)

(assert (=> b!7546146 m!8114712))

(assert (=> b!7546145 m!8114596))

(assert (=> b!7546145 m!8114546))

(assert (=> b!7545894 d!2312140))

(declare-fun d!2312142 () Bool)

(assert (=> d!2312142 (isPrefix!6135 testedP!423 knownP!30)))

(declare-fun lt!2645554 () Unit!166796)

(declare-fun choose!58396 (List!72812 List!72812 List!72812) Unit!166796)

(assert (=> d!2312142 (= lt!2645554 (choose!58396 knownP!30 testedP!423 input!7874))))

(assert (=> d!2312142 (isPrefix!6135 knownP!30 input!7874)))

(assert (=> d!2312142 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!885 knownP!30 testedP!423 input!7874) lt!2645554)))

(declare-fun bs!1940109 () Bool)

(assert (= bs!1940109 d!2312142))

(assert (=> bs!1940109 m!8114516))

(declare-fun m!8114726 () Bool)

(assert (=> bs!1940109 m!8114726))

(assert (=> bs!1940109 m!8114508))

(assert (=> b!7545894 d!2312142))

(declare-fun call!692019 () Bool)

(declare-fun c!1392984 () Bool)

(declare-fun bm!692012 () Bool)

(declare-fun c!1392985 () Bool)

(assert (=> bm!692012 (= call!692019 (validRegex!10357 (ite c!1392985 (reg!20258 r!24333) (ite c!1392984 (regTwo!40371 r!24333) (regTwo!40370 r!24333)))))))

(declare-fun b!7546206 () Bool)

(declare-fun e!4495618 () Bool)

(declare-fun call!692018 () Bool)

(assert (=> b!7546206 (= e!4495618 call!692018)))

(declare-fun b!7546208 () Bool)

(declare-fun res!3024621 () Bool)

(declare-fun e!4495620 () Bool)

(assert (=> b!7546208 (=> res!3024621 e!4495620)))

(assert (=> b!7546208 (= res!3024621 (not ((_ is Concat!28774) r!24333)))))

(declare-fun e!4495616 () Bool)

(assert (=> b!7546208 (= e!4495616 e!4495620)))

(declare-fun b!7546209 () Bool)

(declare-fun e!4495619 () Bool)

(assert (=> b!7546209 (= e!4495619 call!692018)))

(declare-fun b!7546210 () Bool)

(declare-fun e!4495615 () Bool)

(declare-fun e!4495617 () Bool)

(assert (=> b!7546210 (= e!4495615 e!4495617)))

(assert (=> b!7546210 (= c!1392985 ((_ is Star!19929) r!24333))))

(declare-fun b!7546211 () Bool)

(declare-fun e!4495614 () Bool)

(assert (=> b!7546211 (= e!4495617 e!4495614)))

(declare-fun res!3024620 () Bool)

(assert (=> b!7546211 (= res!3024620 (not (nullable!8689 (reg!20258 r!24333))))))

(assert (=> b!7546211 (=> (not res!3024620) (not e!4495614))))

(declare-fun d!2312148 () Bool)

(declare-fun res!3024619 () Bool)

(assert (=> d!2312148 (=> res!3024619 e!4495615)))

(assert (=> d!2312148 (= res!3024619 ((_ is ElementMatch!19929) r!24333))))

(assert (=> d!2312148 (= (validRegex!10357 r!24333) e!4495615)))

(declare-fun b!7546207 () Bool)

(assert (=> b!7546207 (= e!4495617 e!4495616)))

(assert (=> b!7546207 (= c!1392984 ((_ is Union!19929) r!24333))))

(declare-fun b!7546212 () Bool)

(declare-fun res!3024622 () Bool)

(assert (=> b!7546212 (=> (not res!3024622) (not e!4495619))))

(declare-fun call!692017 () Bool)

(assert (=> b!7546212 (= res!3024622 call!692017)))

(assert (=> b!7546212 (= e!4495616 e!4495619)))

(declare-fun bm!692013 () Bool)

(assert (=> bm!692013 (= call!692018 call!692019)))

(declare-fun bm!692014 () Bool)

(assert (=> bm!692014 (= call!692017 (validRegex!10357 (ite c!1392984 (regOne!40371 r!24333) (regOne!40370 r!24333))))))

(declare-fun b!7546213 () Bool)

(assert (=> b!7546213 (= e!4495614 call!692019)))

(declare-fun b!7546214 () Bool)

(assert (=> b!7546214 (= e!4495620 e!4495618)))

(declare-fun res!3024623 () Bool)

(assert (=> b!7546214 (=> (not res!3024623) (not e!4495618))))

(assert (=> b!7546214 (= res!3024623 call!692017)))

(assert (= (and d!2312148 (not res!3024619)) b!7546210))

(assert (= (and b!7546210 c!1392985) b!7546211))

(assert (= (and b!7546210 (not c!1392985)) b!7546207))

(assert (= (and b!7546211 res!3024620) b!7546213))

(assert (= (and b!7546207 c!1392984) b!7546212))

(assert (= (and b!7546207 (not c!1392984)) b!7546208))

(assert (= (and b!7546212 res!3024622) b!7546209))

(assert (= (and b!7546208 (not res!3024621)) b!7546214))

(assert (= (and b!7546214 res!3024623) b!7546206))

(assert (= (or b!7546212 b!7546214) bm!692014))

(assert (= (or b!7546209 b!7546206) bm!692013))

(assert (= (or b!7546213 bm!692013) bm!692012))

(declare-fun m!8114732 () Bool)

(assert (=> bm!692012 m!8114732))

(declare-fun m!8114734 () Bool)

(assert (=> b!7546211 m!8114734))

(declare-fun m!8114736 () Bool)

(assert (=> bm!692014 m!8114736))

(assert (=> b!7545892 d!2312148))

(declare-fun bm!692015 () Bool)

(declare-fun c!1392986 () Bool)

(declare-fun c!1392987 () Bool)

(declare-fun call!692022 () Bool)

(assert (=> bm!692015 (= call!692022 (validRegex!10357 (ite c!1392987 (reg!20258 baseR!101) (ite c!1392986 (regTwo!40371 baseR!101) (regTwo!40370 baseR!101)))))))

(declare-fun b!7546215 () Bool)

(declare-fun e!4495625 () Bool)

(declare-fun call!692021 () Bool)

(assert (=> b!7546215 (= e!4495625 call!692021)))

(declare-fun b!7546217 () Bool)

(declare-fun res!3024626 () Bool)

(declare-fun e!4495627 () Bool)

(assert (=> b!7546217 (=> res!3024626 e!4495627)))

(assert (=> b!7546217 (= res!3024626 (not ((_ is Concat!28774) baseR!101)))))

(declare-fun e!4495623 () Bool)

(assert (=> b!7546217 (= e!4495623 e!4495627)))

(declare-fun b!7546218 () Bool)

(declare-fun e!4495626 () Bool)

(assert (=> b!7546218 (= e!4495626 call!692021)))

(declare-fun b!7546219 () Bool)

(declare-fun e!4495622 () Bool)

(declare-fun e!4495624 () Bool)

(assert (=> b!7546219 (= e!4495622 e!4495624)))

(assert (=> b!7546219 (= c!1392987 ((_ is Star!19929) baseR!101))))

(declare-fun b!7546220 () Bool)

(declare-fun e!4495621 () Bool)

(assert (=> b!7546220 (= e!4495624 e!4495621)))

(declare-fun res!3024625 () Bool)

(assert (=> b!7546220 (= res!3024625 (not (nullable!8689 (reg!20258 baseR!101))))))

(assert (=> b!7546220 (=> (not res!3024625) (not e!4495621))))

(declare-fun d!2312154 () Bool)

(declare-fun res!3024624 () Bool)

(assert (=> d!2312154 (=> res!3024624 e!4495622)))

(assert (=> d!2312154 (= res!3024624 ((_ is ElementMatch!19929) baseR!101))))

(assert (=> d!2312154 (= (validRegex!10357 baseR!101) e!4495622)))

(declare-fun b!7546216 () Bool)

(assert (=> b!7546216 (= e!4495624 e!4495623)))

(assert (=> b!7546216 (= c!1392986 ((_ is Union!19929) baseR!101))))

(declare-fun b!7546221 () Bool)

(declare-fun res!3024627 () Bool)

(assert (=> b!7546221 (=> (not res!3024627) (not e!4495626))))

(declare-fun call!692020 () Bool)

(assert (=> b!7546221 (= res!3024627 call!692020)))

(assert (=> b!7546221 (= e!4495623 e!4495626)))

(declare-fun bm!692016 () Bool)

(assert (=> bm!692016 (= call!692021 call!692022)))

(declare-fun bm!692017 () Bool)

(assert (=> bm!692017 (= call!692020 (validRegex!10357 (ite c!1392986 (regOne!40371 baseR!101) (regOne!40370 baseR!101))))))

(declare-fun b!7546222 () Bool)

(assert (=> b!7546222 (= e!4495621 call!692022)))

(declare-fun b!7546223 () Bool)

(assert (=> b!7546223 (= e!4495627 e!4495625)))

(declare-fun res!3024628 () Bool)

(assert (=> b!7546223 (=> (not res!3024628) (not e!4495625))))

(assert (=> b!7546223 (= res!3024628 call!692020)))

(assert (= (and d!2312154 (not res!3024624)) b!7546219))

(assert (= (and b!7546219 c!1392987) b!7546220))

(assert (= (and b!7546219 (not c!1392987)) b!7546216))

(assert (= (and b!7546220 res!3024625) b!7546222))

(assert (= (and b!7546216 c!1392986) b!7546221))

(assert (= (and b!7546216 (not c!1392986)) b!7546217))

(assert (= (and b!7546221 res!3024627) b!7546218))

(assert (= (and b!7546217 (not res!3024626)) b!7546223))

(assert (= (and b!7546223 res!3024628) b!7546215))

(assert (= (or b!7546221 b!7546223) bm!692017))

(assert (= (or b!7546218 b!7546215) bm!692016))

(assert (= (or b!7546222 bm!692016) bm!692015))

(declare-fun m!8114738 () Bool)

(assert (=> bm!692015 m!8114738))

(declare-fun m!8114740 () Bool)

(assert (=> b!7546220 m!8114740))

(declare-fun m!8114742 () Bool)

(assert (=> bm!692017 m!8114742))

(assert (=> start!729704 d!2312154))

(declare-fun b!7546243 () Bool)

(declare-fun e!4495637 () Bool)

(assert (=> b!7546243 (= e!4495637 tp_is_empty!50213)))

(declare-fun b!7546244 () Bool)

(declare-fun tp!2195039 () Bool)

(declare-fun tp!2195037 () Bool)

(assert (=> b!7546244 (= e!4495637 (and tp!2195039 tp!2195037))))

(assert (=> b!7545896 (= tp!2195015 e!4495637)))

(declare-fun b!7546246 () Bool)

(declare-fun tp!2195038 () Bool)

(declare-fun tp!2195040 () Bool)

(assert (=> b!7546246 (= e!4495637 (and tp!2195038 tp!2195040))))

(declare-fun b!7546245 () Bool)

(declare-fun tp!2195036 () Bool)

(assert (=> b!7546245 (= e!4495637 tp!2195036)))

(assert (= (and b!7545896 ((_ is ElementMatch!19929) (regOne!40371 baseR!101))) b!7546243))

(assert (= (and b!7545896 ((_ is Concat!28774) (regOne!40371 baseR!101))) b!7546244))

(assert (= (and b!7545896 ((_ is Star!19929) (regOne!40371 baseR!101))) b!7546245))

(assert (= (and b!7545896 ((_ is Union!19929) (regOne!40371 baseR!101))) b!7546246))

(declare-fun b!7546256 () Bool)

(declare-fun e!4495645 () Bool)

(assert (=> b!7546256 (= e!4495645 tp_is_empty!50213)))

(declare-fun b!7546257 () Bool)

(declare-fun tp!2195044 () Bool)

(declare-fun tp!2195042 () Bool)

(assert (=> b!7546257 (= e!4495645 (and tp!2195044 tp!2195042))))

(assert (=> b!7545896 (= tp!2195021 e!4495645)))

(declare-fun b!7546259 () Bool)

(declare-fun tp!2195043 () Bool)

(declare-fun tp!2195045 () Bool)

(assert (=> b!7546259 (= e!4495645 (and tp!2195043 tp!2195045))))

(declare-fun b!7546258 () Bool)

(declare-fun tp!2195041 () Bool)

(assert (=> b!7546258 (= e!4495645 tp!2195041)))

(assert (= (and b!7545896 ((_ is ElementMatch!19929) (regTwo!40371 baseR!101))) b!7546256))

(assert (= (and b!7545896 ((_ is Concat!28774) (regTwo!40371 baseR!101))) b!7546257))

(assert (= (and b!7545896 ((_ is Star!19929) (regTwo!40371 baseR!101))) b!7546258))

(assert (= (and b!7545896 ((_ is Union!19929) (regTwo!40371 baseR!101))) b!7546259))

(declare-fun b!7546260 () Bool)

(declare-fun e!4495646 () Bool)

(assert (=> b!7546260 (= e!4495646 tp_is_empty!50213)))

(declare-fun b!7546261 () Bool)

(declare-fun tp!2195049 () Bool)

(declare-fun tp!2195047 () Bool)

(assert (=> b!7546261 (= e!4495646 (and tp!2195049 tp!2195047))))

(assert (=> b!7545891 (= tp!2195024 e!4495646)))

(declare-fun b!7546263 () Bool)

(declare-fun tp!2195048 () Bool)

(declare-fun tp!2195050 () Bool)

(assert (=> b!7546263 (= e!4495646 (and tp!2195048 tp!2195050))))

(declare-fun b!7546262 () Bool)

(declare-fun tp!2195046 () Bool)

(assert (=> b!7546262 (= e!4495646 tp!2195046)))

(assert (= (and b!7545891 ((_ is ElementMatch!19929) (regOne!40370 baseR!101))) b!7546260))

(assert (= (and b!7545891 ((_ is Concat!28774) (regOne!40370 baseR!101))) b!7546261))

(assert (= (and b!7545891 ((_ is Star!19929) (regOne!40370 baseR!101))) b!7546262))

(assert (= (and b!7545891 ((_ is Union!19929) (regOne!40370 baseR!101))) b!7546263))

(declare-fun b!7546264 () Bool)

(declare-fun e!4495647 () Bool)

(assert (=> b!7546264 (= e!4495647 tp_is_empty!50213)))

(declare-fun b!7546265 () Bool)

(declare-fun tp!2195054 () Bool)

(declare-fun tp!2195052 () Bool)

(assert (=> b!7546265 (= e!4495647 (and tp!2195054 tp!2195052))))

(assert (=> b!7545891 (= tp!2195023 e!4495647)))

(declare-fun b!7546267 () Bool)

(declare-fun tp!2195053 () Bool)

(declare-fun tp!2195055 () Bool)

(assert (=> b!7546267 (= e!4495647 (and tp!2195053 tp!2195055))))

(declare-fun b!7546266 () Bool)

(declare-fun tp!2195051 () Bool)

(assert (=> b!7546266 (= e!4495647 tp!2195051)))

(assert (= (and b!7545891 ((_ is ElementMatch!19929) (regTwo!40370 baseR!101))) b!7546264))

(assert (= (and b!7545891 ((_ is Concat!28774) (regTwo!40370 baseR!101))) b!7546265))

(assert (= (and b!7545891 ((_ is Star!19929) (regTwo!40370 baseR!101))) b!7546266))

(assert (= (and b!7545891 ((_ is Union!19929) (regTwo!40370 baseR!101))) b!7546267))

(declare-fun b!7546268 () Bool)

(declare-fun e!4495648 () Bool)

(assert (=> b!7546268 (= e!4495648 tp_is_empty!50213)))

(declare-fun b!7546269 () Bool)

(declare-fun tp!2195059 () Bool)

(declare-fun tp!2195057 () Bool)

(assert (=> b!7546269 (= e!4495648 (and tp!2195059 tp!2195057))))

(assert (=> b!7545907 (= tp!2195014 e!4495648)))

(declare-fun b!7546271 () Bool)

(declare-fun tp!2195058 () Bool)

(declare-fun tp!2195060 () Bool)

(assert (=> b!7546271 (= e!4495648 (and tp!2195058 tp!2195060))))

(declare-fun b!7546270 () Bool)

(declare-fun tp!2195056 () Bool)

(assert (=> b!7546270 (= e!4495648 tp!2195056)))

(assert (= (and b!7545907 ((_ is ElementMatch!19929) (reg!20258 baseR!101))) b!7546268))

(assert (= (and b!7545907 ((_ is Concat!28774) (reg!20258 baseR!101))) b!7546269))

(assert (= (and b!7545907 ((_ is Star!19929) (reg!20258 baseR!101))) b!7546270))

(assert (= (and b!7545907 ((_ is Union!19929) (reg!20258 baseR!101))) b!7546271))

(declare-fun b!7546276 () Bool)

(declare-fun e!4495651 () Bool)

(declare-fun tp!2195063 () Bool)

(assert (=> b!7546276 (= e!4495651 (and tp_is_empty!50213 tp!2195063))))

(assert (=> b!7545902 (= tp!2195018 e!4495651)))

(assert (= (and b!7545902 ((_ is Cons!72688) (t!387529 testedP!423))) b!7546276))

(declare-fun b!7546277 () Bool)

(declare-fun e!4495652 () Bool)

(assert (=> b!7546277 (= e!4495652 tp_is_empty!50213)))

(declare-fun b!7546278 () Bool)

(declare-fun tp!2195067 () Bool)

(declare-fun tp!2195065 () Bool)

(assert (=> b!7546278 (= e!4495652 (and tp!2195067 tp!2195065))))

(assert (=> b!7545900 (= tp!2195020 e!4495652)))

(declare-fun b!7546280 () Bool)

(declare-fun tp!2195066 () Bool)

(declare-fun tp!2195068 () Bool)

(assert (=> b!7546280 (= e!4495652 (and tp!2195066 tp!2195068))))

(declare-fun b!7546279 () Bool)

(declare-fun tp!2195064 () Bool)

(assert (=> b!7546279 (= e!4495652 tp!2195064)))

(assert (= (and b!7545900 ((_ is ElementMatch!19929) (regOne!40370 r!24333))) b!7546277))

(assert (= (and b!7545900 ((_ is Concat!28774) (regOne!40370 r!24333))) b!7546278))

(assert (= (and b!7545900 ((_ is Star!19929) (regOne!40370 r!24333))) b!7546279))

(assert (= (and b!7545900 ((_ is Union!19929) (regOne!40370 r!24333))) b!7546280))

(declare-fun b!7546281 () Bool)

(declare-fun e!4495653 () Bool)

(assert (=> b!7546281 (= e!4495653 tp_is_empty!50213)))

(declare-fun b!7546282 () Bool)

(declare-fun tp!2195072 () Bool)

(declare-fun tp!2195070 () Bool)

(assert (=> b!7546282 (= e!4495653 (and tp!2195072 tp!2195070))))

(assert (=> b!7545900 (= tp!2195022 e!4495653)))

(declare-fun b!7546284 () Bool)

(declare-fun tp!2195071 () Bool)

(declare-fun tp!2195073 () Bool)

(assert (=> b!7546284 (= e!4495653 (and tp!2195071 tp!2195073))))

(declare-fun b!7546283 () Bool)

(declare-fun tp!2195069 () Bool)

(assert (=> b!7546283 (= e!4495653 tp!2195069)))

(assert (= (and b!7545900 ((_ is ElementMatch!19929) (regTwo!40370 r!24333))) b!7546281))

(assert (= (and b!7545900 ((_ is Concat!28774) (regTwo!40370 r!24333))) b!7546282))

(assert (= (and b!7545900 ((_ is Star!19929) (regTwo!40370 r!24333))) b!7546283))

(assert (= (and b!7545900 ((_ is Union!19929) (regTwo!40370 r!24333))) b!7546284))

(declare-fun b!7546285 () Bool)

(declare-fun e!4495654 () Bool)

(assert (=> b!7546285 (= e!4495654 tp_is_empty!50213)))

(declare-fun b!7546286 () Bool)

(declare-fun tp!2195077 () Bool)

(declare-fun tp!2195075 () Bool)

(assert (=> b!7546286 (= e!4495654 (and tp!2195077 tp!2195075))))

(assert (=> b!7545888 (= tp!2195016 e!4495654)))

(declare-fun b!7546288 () Bool)

(declare-fun tp!2195076 () Bool)

(declare-fun tp!2195078 () Bool)

(assert (=> b!7546288 (= e!4495654 (and tp!2195076 tp!2195078))))

(declare-fun b!7546287 () Bool)

(declare-fun tp!2195074 () Bool)

(assert (=> b!7546287 (= e!4495654 tp!2195074)))

(assert (= (and b!7545888 ((_ is ElementMatch!19929) (reg!20258 r!24333))) b!7546285))

(assert (= (and b!7545888 ((_ is Concat!28774) (reg!20258 r!24333))) b!7546286))

(assert (= (and b!7545888 ((_ is Star!19929) (reg!20258 r!24333))) b!7546287))

(assert (= (and b!7545888 ((_ is Union!19929) (reg!20258 r!24333))) b!7546288))

(declare-fun b!7546289 () Bool)

(declare-fun e!4495655 () Bool)

(assert (=> b!7546289 (= e!4495655 tp_is_empty!50213)))

(declare-fun b!7546290 () Bool)

(declare-fun tp!2195082 () Bool)

(declare-fun tp!2195080 () Bool)

(assert (=> b!7546290 (= e!4495655 (and tp!2195082 tp!2195080))))

(assert (=> b!7545897 (= tp!2195013 e!4495655)))

(declare-fun b!7546292 () Bool)

(declare-fun tp!2195081 () Bool)

(declare-fun tp!2195083 () Bool)

(assert (=> b!7546292 (= e!4495655 (and tp!2195081 tp!2195083))))

(declare-fun b!7546291 () Bool)

(declare-fun tp!2195079 () Bool)

(assert (=> b!7546291 (= e!4495655 tp!2195079)))

(assert (= (and b!7545897 ((_ is ElementMatch!19929) (regOne!40371 r!24333))) b!7546289))

(assert (= (and b!7545897 ((_ is Concat!28774) (regOne!40371 r!24333))) b!7546290))

(assert (= (and b!7545897 ((_ is Star!19929) (regOne!40371 r!24333))) b!7546291))

(assert (= (and b!7545897 ((_ is Union!19929) (regOne!40371 r!24333))) b!7546292))

(declare-fun b!7546293 () Bool)

(declare-fun e!4495656 () Bool)

(assert (=> b!7546293 (= e!4495656 tp_is_empty!50213)))

(declare-fun b!7546294 () Bool)

(declare-fun tp!2195087 () Bool)

(declare-fun tp!2195085 () Bool)

(assert (=> b!7546294 (= e!4495656 (and tp!2195087 tp!2195085))))

(assert (=> b!7545897 (= tp!2195019 e!4495656)))

(declare-fun b!7546296 () Bool)

(declare-fun tp!2195086 () Bool)

(declare-fun tp!2195088 () Bool)

(assert (=> b!7546296 (= e!4495656 (and tp!2195086 tp!2195088))))

(declare-fun b!7546295 () Bool)

(declare-fun tp!2195084 () Bool)

(assert (=> b!7546295 (= e!4495656 tp!2195084)))

(assert (= (and b!7545897 ((_ is ElementMatch!19929) (regTwo!40371 r!24333))) b!7546293))

(assert (= (and b!7545897 ((_ is Concat!28774) (regTwo!40371 r!24333))) b!7546294))

(assert (= (and b!7545897 ((_ is Star!19929) (regTwo!40371 r!24333))) b!7546295))

(assert (= (and b!7545897 ((_ is Union!19929) (regTwo!40371 r!24333))) b!7546296))

(declare-fun b!7546297 () Bool)

(declare-fun e!4495657 () Bool)

(declare-fun tp!2195089 () Bool)

(assert (=> b!7546297 (= e!4495657 (and tp_is_empty!50213 tp!2195089))))

(assert (=> b!7545903 (= tp!2195017 e!4495657)))

(assert (= (and b!7545903 ((_ is Cons!72688) (t!387529 input!7874))) b!7546297))

(declare-fun b!7546298 () Bool)

(declare-fun e!4495658 () Bool)

(declare-fun tp!2195090 () Bool)

(assert (=> b!7546298 (= e!4495658 (and tp_is_empty!50213 tp!2195090))))

(assert (=> b!7545898 (= tp!2195025 e!4495658)))

(assert (= (and b!7545898 ((_ is Cons!72688) (t!387529 knownP!30))) b!7546298))

(check-sat (not b!7546297) (not b!7546284) (not b!7546290) (not b!7545999) (not b!7546265) (not d!2312132) (not b!7546002) (not d!2312136) (not d!2312102) (not bm!692017) (not b!7546269) (not b!7546057) (not b!7546061) (not d!2312100) (not b!7546055) tp_is_empty!50213 (not b!7546079) (not b!7546267) (not b!7545918) (not b!7546058) (not b!7546115) (not b!7546145) (not b!7546023) (not b!7546063) (not d!2312120) (not bm!692015) (not b!7546026) (not b!7546007) (not b!7546288) (not b!7546246) (not b!7546050) (not b!7546276) (not b!7545924) (not b!7546280) (not b!7546211) (not bm!691997) (not b!7546283) (not b!7546271) (not b!7546287) (not b!7546258) (not b!7546081) (not b!7546296) (not b!7546259) (not b!7546282) (not d!2312116) (not b!7546119) (not b!7546298) (not d!2312106) (not d!2312128) (not b!7546049) (not b!7546294) (not bm!692014) (not b!7546279) (not b!7546001) (not d!2312126) (not b!7546244) (not b!7546025) (not b!7545919) (not b!7546266) (not b!7546286) (not b!7546116) (not b!7546270) (not bm!692012) (not b!7546146) (not bm!691995) (not b!7546291) (not b!7546278) (not b!7546113) (not b!7546292) (not b!7546076) (not b!7546005) (not b!7546021) (not b!7546257) (not b!7546027) (not b!7546075) (not b!7545917) (not b!7546060) (not b!7546263) (not b!7546295) (not b!7546220) (not bm!691994) (not b!7546118) (not b!7546142) (not b!7546073) (not b!7546245) (not bm!691993) (not b!7546078) (not b!7546121) (not b!7546004) (not d!2312142) (not b!7546261) (not b!7546147) (not b!7546262))
(check-sat)
