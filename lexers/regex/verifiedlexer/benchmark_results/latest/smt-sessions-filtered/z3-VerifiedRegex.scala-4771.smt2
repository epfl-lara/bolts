; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246008 () Bool)

(assert start!246008)

(declare-fun res!1066750 () Bool)

(declare-fun e!1598814 () Bool)

(assert (=> start!246008 (=> (not res!1066750) (not e!1598814))))

(declare-datatypes ((C!15192 0))(
  ( (C!15193 (val!9248 Int)) )
))
(declare-datatypes ((Regex!7517 0))(
  ( (ElementMatch!7517 (c!403119 C!15192)) (Concat!12213 (regOne!15546 Regex!7517) (regTwo!15546 Regex!7517)) (EmptyExpr!7517) (Star!7517 (reg!7846 Regex!7517)) (EmptyLang!7517) (Union!7517 (regOne!15547 Regex!7517) (regTwo!15547 Regex!7517)) )
))
(declare-fun r!27340 () Regex!7517)

(declare-fun validRegex!3143 (Regex!7517) Bool)

(assert (=> start!246008 (= res!1066750 (validRegex!3143 r!27340))))

(assert (=> start!246008 e!1598814))

(declare-fun e!1598813 () Bool)

(assert (=> start!246008 e!1598813))

(declare-fun tp_is_empty!12889 () Bool)

(assert (=> start!246008 tp_is_empty!12889))

(declare-fun e!1598816 () Bool)

(assert (=> start!246008 e!1598816))

(declare-fun b!2525431 () Bool)

(assert (=> b!2525431 (= e!1598813 tp_is_empty!12889)))

(declare-fun b!2525432 () Bool)

(declare-fun res!1066751 () Bool)

(assert (=> b!2525432 (=> (not res!1066751) (not e!1598814))))

(get-info :version)

(assert (=> b!2525432 (= res!1066751 (and (not ((_ is EmptyExpr!7517) r!27340)) (not ((_ is EmptyLang!7517) r!27340)) (not ((_ is ElementMatch!7517) r!27340)) (not ((_ is Union!7517) r!27340)) (not ((_ is Star!7517) r!27340))))))

(declare-fun b!2525433 () Bool)

(declare-fun tp!806542 () Bool)

(assert (=> b!2525433 (= e!1598813 tp!806542)))

(declare-fun b!2525434 () Bool)

(declare-fun res!1066752 () Bool)

(assert (=> b!2525434 (=> (not res!1066752) (not e!1598814))))

(declare-fun nullable!2434 (Regex!7517) Bool)

(assert (=> b!2525434 (= res!1066752 (not (nullable!2434 (regOne!15546 r!27340))))))

(declare-fun b!2525435 () Bool)

(declare-fun lt!900347 () Bool)

(assert (=> b!2525435 (= e!1598814 (not lt!900347))))

(declare-datatypes ((List!29582 0))(
  ( (Nil!29482) (Cons!29482 (h!34902 C!15192) (t!211281 List!29582)) )
))
(declare-fun tl!4068 () List!29582)

(declare-fun derivative!212 (Regex!7517 List!29582) Regex!7517)

(assert (=> b!2525435 (= (derivative!212 EmptyLang!7517 tl!4068) EmptyLang!7517)))

(declare-datatypes ((Unit!43259 0))(
  ( (Unit!43260) )
))
(declare-fun lt!900351 () Unit!43259)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!34 (Regex!7517 List!29582) Unit!43259)

(assert (=> b!2525435 (= lt!900351 (lemmaEmptyLangDerivativeIsAFixPoint!34 EmptyLang!7517 tl!4068))))

(declare-fun e!1598815 () Bool)

(assert (=> b!2525435 e!1598815))

(declare-fun res!1066749 () Bool)

(assert (=> b!2525435 (=> res!1066749 e!1598815)))

(assert (=> b!2525435 (= res!1066749 lt!900347)))

(declare-fun lt!900348 () Regex!7517)

(declare-fun matchR!3504 (Regex!7517 List!29582) Bool)

(assert (=> b!2525435 (= lt!900347 (matchR!3504 lt!900348 tl!4068))))

(declare-fun lt!900350 () Unit!43259)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!182 (Regex!7517 Regex!7517 List!29582) Unit!43259)

(assert (=> b!2525435 (= lt!900350 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!182 lt!900348 EmptyLang!7517 tl!4068))))

(declare-fun lt!900349 () Regex!7517)

(assert (=> b!2525435 (= (matchR!3504 lt!900349 tl!4068) (matchR!3504 (derivative!212 lt!900349 tl!4068) Nil!29482))))

(declare-fun lt!900352 () Unit!43259)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!150 (Regex!7517 List!29582) Unit!43259)

(assert (=> b!2525435 (= lt!900352 (lemmaMatchRIsSameAsWholeDerivativeAndNil!150 lt!900349 tl!4068))))

(assert (=> b!2525435 (= lt!900349 (Union!7517 lt!900348 EmptyLang!7517))))

(declare-fun c!14016 () C!15192)

(declare-fun derivativeStep!2086 (Regex!7517 C!15192) Regex!7517)

(assert (=> b!2525435 (= lt!900348 (Concat!12213 (derivativeStep!2086 (regOne!15546 r!27340) c!14016) (regTwo!15546 r!27340)))))

(declare-fun b!2525436 () Bool)

(declare-fun tp!806539 () Bool)

(declare-fun tp!806541 () Bool)

(assert (=> b!2525436 (= e!1598813 (and tp!806539 tp!806541))))

(declare-fun b!2525437 () Bool)

(declare-fun tp!806540 () Bool)

(assert (=> b!2525437 (= e!1598816 (and tp_is_empty!12889 tp!806540))))

(declare-fun b!2525438 () Bool)

(declare-fun res!1066748 () Bool)

(assert (=> b!2525438 (=> (not res!1066748) (not e!1598814))))

(assert (=> b!2525438 (= res!1066748 (nullable!2434 (derivative!212 (derivativeStep!2086 r!27340 c!14016) tl!4068)))))

(declare-fun b!2525439 () Bool)

(assert (=> b!2525439 (= e!1598815 (matchR!3504 EmptyLang!7517 tl!4068))))

(declare-fun b!2525440 () Bool)

(declare-fun tp!806538 () Bool)

(declare-fun tp!806537 () Bool)

(assert (=> b!2525440 (= e!1598813 (and tp!806538 tp!806537))))

(assert (= (and start!246008 res!1066750) b!2525438))

(assert (= (and b!2525438 res!1066748) b!2525432))

(assert (= (and b!2525432 res!1066751) b!2525434))

(assert (= (and b!2525434 res!1066752) b!2525435))

(assert (= (and b!2525435 (not res!1066749)) b!2525439))

(assert (= (and start!246008 ((_ is ElementMatch!7517) r!27340)) b!2525431))

(assert (= (and start!246008 ((_ is Concat!12213) r!27340)) b!2525436))

(assert (= (and start!246008 ((_ is Star!7517) r!27340)) b!2525433))

(assert (= (and start!246008 ((_ is Union!7517) r!27340)) b!2525440))

(assert (= (and start!246008 ((_ is Cons!29482) tl!4068)) b!2525437))

(declare-fun m!2878871 () Bool)

(assert (=> b!2525434 m!2878871))

(declare-fun m!2878873 () Bool)

(assert (=> b!2525438 m!2878873))

(assert (=> b!2525438 m!2878873))

(declare-fun m!2878875 () Bool)

(assert (=> b!2525438 m!2878875))

(assert (=> b!2525438 m!2878875))

(declare-fun m!2878877 () Bool)

(assert (=> b!2525438 m!2878877))

(declare-fun m!2878879 () Bool)

(assert (=> b!2525439 m!2878879))

(declare-fun m!2878881 () Bool)

(assert (=> b!2525435 m!2878881))

(declare-fun m!2878883 () Bool)

(assert (=> b!2525435 m!2878883))

(declare-fun m!2878885 () Bool)

(assert (=> b!2525435 m!2878885))

(declare-fun m!2878887 () Bool)

(assert (=> b!2525435 m!2878887))

(declare-fun m!2878889 () Bool)

(assert (=> b!2525435 m!2878889))

(declare-fun m!2878891 () Bool)

(assert (=> b!2525435 m!2878891))

(declare-fun m!2878893 () Bool)

(assert (=> b!2525435 m!2878893))

(declare-fun m!2878895 () Bool)

(assert (=> b!2525435 m!2878895))

(declare-fun m!2878897 () Bool)

(assert (=> b!2525435 m!2878897))

(assert (=> b!2525435 m!2878887))

(declare-fun m!2878899 () Bool)

(assert (=> start!246008 m!2878899))

(check-sat (not b!2525433) tp_is_empty!12889 (not b!2525439) (not b!2525440) (not b!2525438) (not b!2525437) (not b!2525436) (not b!2525434) (not start!246008) (not b!2525435))
(check-sat)
(get-model)

(declare-fun b!2525497 () Bool)

(declare-fun res!1066789 () Bool)

(declare-fun e!1598850 () Bool)

(assert (=> b!2525497 (=> res!1066789 e!1598850)))

(assert (=> b!2525497 (= res!1066789 (not ((_ is ElementMatch!7517) lt!900349)))))

(declare-fun e!1598845 () Bool)

(assert (=> b!2525497 (= e!1598845 e!1598850)))

(declare-fun b!2525498 () Bool)

(declare-fun res!1066787 () Bool)

(declare-fun e!1598849 () Bool)

(assert (=> b!2525498 (=> (not res!1066787) (not e!1598849))))

(declare-fun isEmpty!16956 (List!29582) Bool)

(declare-fun tail!4043 (List!29582) List!29582)

(assert (=> b!2525498 (= res!1066787 (isEmpty!16956 (tail!4043 tl!4068)))))

(declare-fun b!2525500 () Bool)

(declare-fun head!5766 (List!29582) C!15192)

(assert (=> b!2525500 (= e!1598849 (= (head!5766 tl!4068) (c!403119 lt!900349)))))

(declare-fun b!2525501 () Bool)

(declare-fun res!1066786 () Bool)

(assert (=> b!2525501 (=> res!1066786 e!1598850)))

(assert (=> b!2525501 (= res!1066786 e!1598849)))

(declare-fun res!1066792 () Bool)

(assert (=> b!2525501 (=> (not res!1066792) (not e!1598849))))

(declare-fun lt!900357 () Bool)

(assert (=> b!2525501 (= res!1066792 lt!900357)))

(declare-fun b!2525502 () Bool)

(declare-fun e!1598848 () Bool)

(assert (=> b!2525502 (= e!1598848 (nullable!2434 lt!900349))))

(declare-fun b!2525503 () Bool)

(declare-fun e!1598847 () Bool)

(assert (=> b!2525503 (= e!1598847 e!1598845)))

(declare-fun c!403132 () Bool)

(assert (=> b!2525503 (= c!403132 ((_ is EmptyLang!7517) lt!900349))))

(declare-fun b!2525504 () Bool)

(declare-fun call!157772 () Bool)

(assert (=> b!2525504 (= e!1598847 (= lt!900357 call!157772))))

(declare-fun b!2525505 () Bool)

(declare-fun res!1066785 () Bool)

(declare-fun e!1598846 () Bool)

(assert (=> b!2525505 (=> res!1066785 e!1598846)))

(assert (=> b!2525505 (= res!1066785 (not (isEmpty!16956 (tail!4043 tl!4068))))))

(declare-fun b!2525506 () Bool)

(declare-fun res!1066788 () Bool)

(assert (=> b!2525506 (=> (not res!1066788) (not e!1598849))))

(assert (=> b!2525506 (= res!1066788 (not call!157772))))

(declare-fun b!2525507 () Bool)

(assert (=> b!2525507 (= e!1598848 (matchR!3504 (derivativeStep!2086 lt!900349 (head!5766 tl!4068)) (tail!4043 tl!4068)))))

(declare-fun bm!157767 () Bool)

(assert (=> bm!157767 (= call!157772 (isEmpty!16956 tl!4068))))

(declare-fun b!2525508 () Bool)

(declare-fun e!1598851 () Bool)

(assert (=> b!2525508 (= e!1598851 e!1598846)))

(declare-fun res!1066791 () Bool)

(assert (=> b!2525508 (=> res!1066791 e!1598846)))

(assert (=> b!2525508 (= res!1066791 call!157772)))

(declare-fun b!2525499 () Bool)

(assert (=> b!2525499 (= e!1598846 (not (= (head!5766 tl!4068) (c!403119 lt!900349))))))

(declare-fun d!718950 () Bool)

(assert (=> d!718950 e!1598847))

(declare-fun c!403133 () Bool)

(assert (=> d!718950 (= c!403133 ((_ is EmptyExpr!7517) lt!900349))))

(assert (=> d!718950 (= lt!900357 e!1598848)))

(declare-fun c!403134 () Bool)

(assert (=> d!718950 (= c!403134 (isEmpty!16956 tl!4068))))

(assert (=> d!718950 (validRegex!3143 lt!900349)))

(assert (=> d!718950 (= (matchR!3504 lt!900349 tl!4068) lt!900357)))

(declare-fun b!2525509 () Bool)

(assert (=> b!2525509 (= e!1598845 (not lt!900357))))

(declare-fun b!2525510 () Bool)

(assert (=> b!2525510 (= e!1598850 e!1598851)))

(declare-fun res!1066790 () Bool)

(assert (=> b!2525510 (=> (not res!1066790) (not e!1598851))))

(assert (=> b!2525510 (= res!1066790 (not lt!900357))))

(assert (= (and d!718950 c!403134) b!2525502))

(assert (= (and d!718950 (not c!403134)) b!2525507))

(assert (= (and d!718950 c!403133) b!2525504))

(assert (= (and d!718950 (not c!403133)) b!2525503))

(assert (= (and b!2525503 c!403132) b!2525509))

(assert (= (and b!2525503 (not c!403132)) b!2525497))

(assert (= (and b!2525497 (not res!1066789)) b!2525501))

(assert (= (and b!2525501 res!1066792) b!2525506))

(assert (= (and b!2525506 res!1066788) b!2525498))

(assert (= (and b!2525498 res!1066787) b!2525500))

(assert (= (and b!2525501 (not res!1066786)) b!2525510))

(assert (= (and b!2525510 res!1066790) b!2525508))

(assert (= (and b!2525508 (not res!1066791)) b!2525505))

(assert (= (and b!2525505 (not res!1066785)) b!2525499))

(assert (= (or b!2525504 b!2525508 b!2525506) bm!157767))

(declare-fun m!2878901 () Bool)

(assert (=> b!2525507 m!2878901))

(assert (=> b!2525507 m!2878901))

(declare-fun m!2878903 () Bool)

(assert (=> b!2525507 m!2878903))

(declare-fun m!2878905 () Bool)

(assert (=> b!2525507 m!2878905))

(assert (=> b!2525507 m!2878903))

(assert (=> b!2525507 m!2878905))

(declare-fun m!2878907 () Bool)

(assert (=> b!2525507 m!2878907))

(assert (=> b!2525500 m!2878901))

(assert (=> b!2525499 m!2878901))

(assert (=> b!2525498 m!2878905))

(assert (=> b!2525498 m!2878905))

(declare-fun m!2878909 () Bool)

(assert (=> b!2525498 m!2878909))

(declare-fun m!2878911 () Bool)

(assert (=> b!2525502 m!2878911))

(assert (=> b!2525505 m!2878905))

(assert (=> b!2525505 m!2878905))

(assert (=> b!2525505 m!2878909))

(declare-fun m!2878913 () Bool)

(assert (=> d!718950 m!2878913))

(declare-fun m!2878915 () Bool)

(assert (=> d!718950 m!2878915))

(assert (=> bm!157767 m!2878913))

(assert (=> b!2525435 d!718950))

(declare-fun b!2525511 () Bool)

(declare-fun res!1066797 () Bool)

(declare-fun e!1598857 () Bool)

(assert (=> b!2525511 (=> res!1066797 e!1598857)))

(assert (=> b!2525511 (= res!1066797 (not ((_ is ElementMatch!7517) (derivative!212 lt!900349 tl!4068))))))

(declare-fun e!1598852 () Bool)

(assert (=> b!2525511 (= e!1598852 e!1598857)))

(declare-fun b!2525512 () Bool)

(declare-fun res!1066795 () Bool)

(declare-fun e!1598856 () Bool)

(assert (=> b!2525512 (=> (not res!1066795) (not e!1598856))))

(assert (=> b!2525512 (= res!1066795 (isEmpty!16956 (tail!4043 Nil!29482)))))

(declare-fun b!2525514 () Bool)

(assert (=> b!2525514 (= e!1598856 (= (head!5766 Nil!29482) (c!403119 (derivative!212 lt!900349 tl!4068))))))

(declare-fun b!2525515 () Bool)

(declare-fun res!1066794 () Bool)

(assert (=> b!2525515 (=> res!1066794 e!1598857)))

(assert (=> b!2525515 (= res!1066794 e!1598856)))

(declare-fun res!1066800 () Bool)

(assert (=> b!2525515 (=> (not res!1066800) (not e!1598856))))

(declare-fun lt!900358 () Bool)

(assert (=> b!2525515 (= res!1066800 lt!900358)))

(declare-fun b!2525516 () Bool)

(declare-fun e!1598855 () Bool)

(assert (=> b!2525516 (= e!1598855 (nullable!2434 (derivative!212 lt!900349 tl!4068)))))

(declare-fun b!2525517 () Bool)

(declare-fun e!1598854 () Bool)

(assert (=> b!2525517 (= e!1598854 e!1598852)))

(declare-fun c!403135 () Bool)

(assert (=> b!2525517 (= c!403135 ((_ is EmptyLang!7517) (derivative!212 lt!900349 tl!4068)))))

(declare-fun b!2525518 () Bool)

(declare-fun call!157773 () Bool)

(assert (=> b!2525518 (= e!1598854 (= lt!900358 call!157773))))

(declare-fun b!2525519 () Bool)

(declare-fun res!1066793 () Bool)

(declare-fun e!1598853 () Bool)

(assert (=> b!2525519 (=> res!1066793 e!1598853)))

(assert (=> b!2525519 (= res!1066793 (not (isEmpty!16956 (tail!4043 Nil!29482))))))

(declare-fun b!2525520 () Bool)

(declare-fun res!1066796 () Bool)

(assert (=> b!2525520 (=> (not res!1066796) (not e!1598856))))

(assert (=> b!2525520 (= res!1066796 (not call!157773))))

(declare-fun b!2525521 () Bool)

(assert (=> b!2525521 (= e!1598855 (matchR!3504 (derivativeStep!2086 (derivative!212 lt!900349 tl!4068) (head!5766 Nil!29482)) (tail!4043 Nil!29482)))))

(declare-fun bm!157768 () Bool)

(assert (=> bm!157768 (= call!157773 (isEmpty!16956 Nil!29482))))

(declare-fun b!2525522 () Bool)

(declare-fun e!1598858 () Bool)

(assert (=> b!2525522 (= e!1598858 e!1598853)))

(declare-fun res!1066799 () Bool)

(assert (=> b!2525522 (=> res!1066799 e!1598853)))

(assert (=> b!2525522 (= res!1066799 call!157773)))

(declare-fun b!2525513 () Bool)

(assert (=> b!2525513 (= e!1598853 (not (= (head!5766 Nil!29482) (c!403119 (derivative!212 lt!900349 tl!4068)))))))

(declare-fun d!718952 () Bool)

(assert (=> d!718952 e!1598854))

(declare-fun c!403136 () Bool)

(assert (=> d!718952 (= c!403136 ((_ is EmptyExpr!7517) (derivative!212 lt!900349 tl!4068)))))

(assert (=> d!718952 (= lt!900358 e!1598855)))

(declare-fun c!403137 () Bool)

(assert (=> d!718952 (= c!403137 (isEmpty!16956 Nil!29482))))

(assert (=> d!718952 (validRegex!3143 (derivative!212 lt!900349 tl!4068))))

(assert (=> d!718952 (= (matchR!3504 (derivative!212 lt!900349 tl!4068) Nil!29482) lt!900358)))

(declare-fun b!2525523 () Bool)

(assert (=> b!2525523 (= e!1598852 (not lt!900358))))

(declare-fun b!2525524 () Bool)

(assert (=> b!2525524 (= e!1598857 e!1598858)))

(declare-fun res!1066798 () Bool)

(assert (=> b!2525524 (=> (not res!1066798) (not e!1598858))))

(assert (=> b!2525524 (= res!1066798 (not lt!900358))))

(assert (= (and d!718952 c!403137) b!2525516))

(assert (= (and d!718952 (not c!403137)) b!2525521))

(assert (= (and d!718952 c!403136) b!2525518))

(assert (= (and d!718952 (not c!403136)) b!2525517))

(assert (= (and b!2525517 c!403135) b!2525523))

(assert (= (and b!2525517 (not c!403135)) b!2525511))

(assert (= (and b!2525511 (not res!1066797)) b!2525515))

(assert (= (and b!2525515 res!1066800) b!2525520))

(assert (= (and b!2525520 res!1066796) b!2525512))

(assert (= (and b!2525512 res!1066795) b!2525514))

(assert (= (and b!2525515 (not res!1066794)) b!2525524))

(assert (= (and b!2525524 res!1066798) b!2525522))

(assert (= (and b!2525522 (not res!1066799)) b!2525519))

(assert (= (and b!2525519 (not res!1066793)) b!2525513))

(assert (= (or b!2525518 b!2525522 b!2525520) bm!157768))

(declare-fun m!2878917 () Bool)

(assert (=> b!2525521 m!2878917))

(assert (=> b!2525521 m!2878887))

(assert (=> b!2525521 m!2878917))

(declare-fun m!2878919 () Bool)

(assert (=> b!2525521 m!2878919))

(declare-fun m!2878921 () Bool)

(assert (=> b!2525521 m!2878921))

(assert (=> b!2525521 m!2878919))

(assert (=> b!2525521 m!2878921))

(declare-fun m!2878923 () Bool)

(assert (=> b!2525521 m!2878923))

(assert (=> b!2525514 m!2878917))

(assert (=> b!2525513 m!2878917))

(assert (=> b!2525512 m!2878921))

(assert (=> b!2525512 m!2878921))

(declare-fun m!2878925 () Bool)

(assert (=> b!2525512 m!2878925))

(assert (=> b!2525516 m!2878887))

(declare-fun m!2878927 () Bool)

(assert (=> b!2525516 m!2878927))

(assert (=> b!2525519 m!2878921))

(assert (=> b!2525519 m!2878921))

(assert (=> b!2525519 m!2878925))

(declare-fun m!2878929 () Bool)

(assert (=> d!718952 m!2878929))

(assert (=> d!718952 m!2878887))

(declare-fun m!2878931 () Bool)

(assert (=> d!718952 m!2878931))

(assert (=> bm!157768 m!2878929))

(assert (=> b!2525435 d!718952))

(declare-fun d!718954 () Bool)

(declare-fun lt!900362 () Regex!7517)

(assert (=> d!718954 (validRegex!3143 lt!900362)))

(declare-fun e!1598868 () Regex!7517)

(assert (=> d!718954 (= lt!900362 e!1598868)))

(declare-fun c!403143 () Bool)

(assert (=> d!718954 (= c!403143 ((_ is Cons!29482) tl!4068))))

(assert (=> d!718954 (validRegex!3143 EmptyLang!7517)))

(assert (=> d!718954 (= (derivative!212 EmptyLang!7517 tl!4068) lt!900362)))

(declare-fun b!2525543 () Bool)

(assert (=> b!2525543 (= e!1598868 (derivative!212 (derivativeStep!2086 EmptyLang!7517 (h!34902 tl!4068)) (t!211281 tl!4068)))))

(declare-fun b!2525544 () Bool)

(assert (=> b!2525544 (= e!1598868 EmptyLang!7517)))

(assert (= (and d!718954 c!403143) b!2525543))

(assert (= (and d!718954 (not c!403143)) b!2525544))

(declare-fun m!2878949 () Bool)

(assert (=> d!718954 m!2878949))

(declare-fun m!2878951 () Bool)

(assert (=> d!718954 m!2878951))

(declare-fun m!2878953 () Bool)

(assert (=> b!2525543 m!2878953))

(assert (=> b!2525543 m!2878953))

(declare-fun m!2878955 () Bool)

(assert (=> b!2525543 m!2878955))

(assert (=> b!2525435 d!718954))

(declare-fun d!718958 () Bool)

(assert (=> d!718958 (= (matchR!3504 lt!900349 tl!4068) (matchR!3504 (derivative!212 lt!900349 tl!4068) Nil!29482))))

(declare-fun lt!900368 () Unit!43259)

(declare-fun choose!14971 (Regex!7517 List!29582) Unit!43259)

(assert (=> d!718958 (= lt!900368 (choose!14971 lt!900349 tl!4068))))

(assert (=> d!718958 (validRegex!3143 lt!900349)))

(assert (=> d!718958 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!150 lt!900349 tl!4068) lt!900368)))

(declare-fun bs!469082 () Bool)

(assert (= bs!469082 d!718958))

(declare-fun m!2878961 () Bool)

(assert (=> bs!469082 m!2878961))

(assert (=> bs!469082 m!2878895))

(assert (=> bs!469082 m!2878887))

(assert (=> bs!469082 m!2878889))

(assert (=> bs!469082 m!2878887))

(assert (=> bs!469082 m!2878915))

(assert (=> b!2525435 d!718958))

(declare-fun d!718962 () Bool)

(declare-fun e!1598893 () Bool)

(assert (=> d!718962 e!1598893))

(declare-fun res!1066835 () Bool)

(assert (=> d!718962 (=> res!1066835 e!1598893)))

(assert (=> d!718962 (= res!1066835 (matchR!3504 lt!900348 tl!4068))))

(declare-fun lt!900376 () Unit!43259)

(declare-fun choose!14972 (Regex!7517 Regex!7517 List!29582) Unit!43259)

(assert (=> d!718962 (= lt!900376 (choose!14972 lt!900348 EmptyLang!7517 tl!4068))))

(declare-fun e!1598894 () Bool)

(assert (=> d!718962 e!1598894))

(declare-fun res!1066836 () Bool)

(assert (=> d!718962 (=> (not res!1066836) (not e!1598894))))

(assert (=> d!718962 (= res!1066836 (validRegex!3143 lt!900348))))

(assert (=> d!718962 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!182 lt!900348 EmptyLang!7517 tl!4068) lt!900376)))

(declare-fun b!2525583 () Bool)

(assert (=> b!2525583 (= e!1598894 (validRegex!3143 EmptyLang!7517))))

(declare-fun b!2525584 () Bool)

(assert (=> b!2525584 (= e!1598893 (matchR!3504 EmptyLang!7517 tl!4068))))

(assert (= (and d!718962 res!1066836) b!2525583))

(assert (= (and d!718962 (not res!1066835)) b!2525584))

(assert (=> d!718962 m!2878891))

(declare-fun m!2878979 () Bool)

(assert (=> d!718962 m!2878979))

(declare-fun m!2878981 () Bool)

(assert (=> d!718962 m!2878981))

(assert (=> b!2525583 m!2878951))

(assert (=> b!2525584 m!2878879))

(assert (=> b!2525435 d!718962))

(declare-fun d!718970 () Bool)

(assert (=> d!718970 (= (derivative!212 EmptyLang!7517 tl!4068) EmptyLang!7517)))

(declare-fun lt!900379 () Unit!43259)

(declare-fun choose!14973 (Regex!7517 List!29582) Unit!43259)

(assert (=> d!718970 (= lt!900379 (choose!14973 EmptyLang!7517 tl!4068))))

(assert (=> d!718970 (= EmptyLang!7517 EmptyLang!7517)))

(assert (=> d!718970 (= (lemmaEmptyLangDerivativeIsAFixPoint!34 EmptyLang!7517 tl!4068) lt!900379)))

(declare-fun bs!469084 () Bool)

(assert (= bs!469084 d!718970))

(assert (=> bs!469084 m!2878883))

(declare-fun m!2878983 () Bool)

(assert (=> bs!469084 m!2878983))

(assert (=> b!2525435 d!718970))

(declare-fun d!718972 () Bool)

(declare-fun lt!900380 () Regex!7517)

(assert (=> d!718972 (validRegex!3143 lt!900380)))

(declare-fun e!1598895 () Regex!7517)

(assert (=> d!718972 (= lt!900380 e!1598895)))

(declare-fun c!403150 () Bool)

(assert (=> d!718972 (= c!403150 ((_ is Cons!29482) tl!4068))))

(assert (=> d!718972 (validRegex!3143 lt!900349)))

(assert (=> d!718972 (= (derivative!212 lt!900349 tl!4068) lt!900380)))

(declare-fun b!2525585 () Bool)

(assert (=> b!2525585 (= e!1598895 (derivative!212 (derivativeStep!2086 lt!900349 (h!34902 tl!4068)) (t!211281 tl!4068)))))

(declare-fun b!2525586 () Bool)

(assert (=> b!2525586 (= e!1598895 lt!900349)))

(assert (= (and d!718972 c!403150) b!2525585))

(assert (= (and d!718972 (not c!403150)) b!2525586))

(declare-fun m!2878985 () Bool)

(assert (=> d!718972 m!2878985))

(assert (=> d!718972 m!2878915))

(declare-fun m!2878987 () Bool)

(assert (=> b!2525585 m!2878987))

(assert (=> b!2525585 m!2878987))

(declare-fun m!2878989 () Bool)

(assert (=> b!2525585 m!2878989))

(assert (=> b!2525435 d!718972))

(declare-fun b!2525643 () Bool)

(declare-fun e!1598927 () Regex!7517)

(declare-fun e!1598928 () Regex!7517)

(assert (=> b!2525643 (= e!1598927 e!1598928)))

(declare-fun c!403180 () Bool)

(assert (=> b!2525643 (= c!403180 ((_ is Star!7517) (regOne!15546 r!27340)))))

(declare-fun b!2525644 () Bool)

(declare-fun c!403183 () Bool)

(assert (=> b!2525644 (= c!403183 (nullable!2434 (regOne!15546 (regOne!15546 r!27340))))))

(declare-fun e!1598926 () Regex!7517)

(assert (=> b!2525644 (= e!1598928 e!1598926)))

(declare-fun bm!157792 () Bool)

(declare-fun call!157800 () Regex!7517)

(declare-fun call!157799 () Regex!7517)

(assert (=> bm!157792 (= call!157800 call!157799)))

(declare-fun d!718974 () Bool)

(declare-fun lt!900389 () Regex!7517)

(assert (=> d!718974 (validRegex!3143 lt!900389)))

(declare-fun e!1598924 () Regex!7517)

(assert (=> d!718974 (= lt!900389 e!1598924)))

(declare-fun c!403179 () Bool)

(assert (=> d!718974 (= c!403179 (or ((_ is EmptyExpr!7517) (regOne!15546 r!27340)) ((_ is EmptyLang!7517) (regOne!15546 r!27340))))))

(assert (=> d!718974 (validRegex!3143 (regOne!15546 r!27340))))

(assert (=> d!718974 (= (derivativeStep!2086 (regOne!15546 r!27340) c!14016) lt!900389)))

(declare-fun b!2525645 () Bool)

(declare-fun call!157798 () Regex!7517)

(assert (=> b!2525645 (= e!1598926 (Union!7517 (Concat!12213 call!157800 (regTwo!15546 (regOne!15546 r!27340))) call!157798))))

(declare-fun bm!157793 () Bool)

(declare-fun call!157797 () Regex!7517)

(assert (=> bm!157793 (= call!157799 call!157797)))

(declare-fun b!2525646 () Bool)

(assert (=> b!2525646 (= e!1598928 (Concat!12213 call!157799 (regOne!15546 r!27340)))))

(declare-fun b!2525647 () Bool)

(declare-fun e!1598925 () Regex!7517)

(assert (=> b!2525647 (= e!1598924 e!1598925)))

(declare-fun c!403182 () Bool)

(assert (=> b!2525647 (= c!403182 ((_ is ElementMatch!7517) (regOne!15546 r!27340)))))

(declare-fun b!2525648 () Bool)

(assert (=> b!2525648 (= e!1598924 EmptyLang!7517)))

(declare-fun b!2525649 () Bool)

(assert (=> b!2525649 (= e!1598927 (Union!7517 call!157797 call!157798))))

(declare-fun b!2525650 () Bool)

(assert (=> b!2525650 (= e!1598926 (Union!7517 (Concat!12213 call!157800 (regTwo!15546 (regOne!15546 r!27340))) EmptyLang!7517))))

(declare-fun b!2525651 () Bool)

(declare-fun c!403181 () Bool)

(assert (=> b!2525651 (= c!403181 ((_ is Union!7517) (regOne!15546 r!27340)))))

(assert (=> b!2525651 (= e!1598925 e!1598927)))

(declare-fun bm!157794 () Bool)

(assert (=> bm!157794 (= call!157798 (derivativeStep!2086 (ite c!403181 (regTwo!15547 (regOne!15546 r!27340)) (regTwo!15546 (regOne!15546 r!27340))) c!14016))))

(declare-fun bm!157795 () Bool)

(assert (=> bm!157795 (= call!157797 (derivativeStep!2086 (ite c!403181 (regOne!15547 (regOne!15546 r!27340)) (ite c!403180 (reg!7846 (regOne!15546 r!27340)) (regOne!15546 (regOne!15546 r!27340)))) c!14016))))

(declare-fun b!2525652 () Bool)

(assert (=> b!2525652 (= e!1598925 (ite (= c!14016 (c!403119 (regOne!15546 r!27340))) EmptyExpr!7517 EmptyLang!7517))))

(assert (= (and d!718974 c!403179) b!2525648))

(assert (= (and d!718974 (not c!403179)) b!2525647))

(assert (= (and b!2525647 c!403182) b!2525652))

(assert (= (and b!2525647 (not c!403182)) b!2525651))

(assert (= (and b!2525651 c!403181) b!2525649))

(assert (= (and b!2525651 (not c!403181)) b!2525643))

(assert (= (and b!2525643 c!403180) b!2525646))

(assert (= (and b!2525643 (not c!403180)) b!2525644))

(assert (= (and b!2525644 c!403183) b!2525645))

(assert (= (and b!2525644 (not c!403183)) b!2525650))

(assert (= (or b!2525645 b!2525650) bm!157792))

(assert (= (or b!2525646 bm!157792) bm!157793))

(assert (= (or b!2525649 b!2525645) bm!157794))

(assert (= (or b!2525649 bm!157793) bm!157795))

(declare-fun m!2879007 () Bool)

(assert (=> b!2525644 m!2879007))

(declare-fun m!2879009 () Bool)

(assert (=> d!718974 m!2879009))

(declare-fun m!2879011 () Bool)

(assert (=> d!718974 m!2879011))

(declare-fun m!2879013 () Bool)

(assert (=> bm!157794 m!2879013))

(declare-fun m!2879015 () Bool)

(assert (=> bm!157795 m!2879015))

(assert (=> b!2525435 d!718974))

(declare-fun b!2525653 () Bool)

(declare-fun res!1066841 () Bool)

(declare-fun e!1598934 () Bool)

(assert (=> b!2525653 (=> res!1066841 e!1598934)))

(assert (=> b!2525653 (= res!1066841 (not ((_ is ElementMatch!7517) lt!900348)))))

(declare-fun e!1598929 () Bool)

(assert (=> b!2525653 (= e!1598929 e!1598934)))

(declare-fun b!2525654 () Bool)

(declare-fun res!1066839 () Bool)

(declare-fun e!1598933 () Bool)

(assert (=> b!2525654 (=> (not res!1066839) (not e!1598933))))

(assert (=> b!2525654 (= res!1066839 (isEmpty!16956 (tail!4043 tl!4068)))))

(declare-fun b!2525656 () Bool)

(assert (=> b!2525656 (= e!1598933 (= (head!5766 tl!4068) (c!403119 lt!900348)))))

(declare-fun b!2525657 () Bool)

(declare-fun res!1066838 () Bool)

(assert (=> b!2525657 (=> res!1066838 e!1598934)))

(assert (=> b!2525657 (= res!1066838 e!1598933)))

(declare-fun res!1066844 () Bool)

(assert (=> b!2525657 (=> (not res!1066844) (not e!1598933))))

(declare-fun lt!900390 () Bool)

(assert (=> b!2525657 (= res!1066844 lt!900390)))

(declare-fun b!2525658 () Bool)

(declare-fun e!1598932 () Bool)

(assert (=> b!2525658 (= e!1598932 (nullable!2434 lt!900348))))

(declare-fun b!2525659 () Bool)

(declare-fun e!1598931 () Bool)

(assert (=> b!2525659 (= e!1598931 e!1598929)))

(declare-fun c!403184 () Bool)

(assert (=> b!2525659 (= c!403184 ((_ is EmptyLang!7517) lt!900348))))

(declare-fun b!2525660 () Bool)

(declare-fun call!157801 () Bool)

(assert (=> b!2525660 (= e!1598931 (= lt!900390 call!157801))))

(declare-fun b!2525661 () Bool)

(declare-fun res!1066837 () Bool)

(declare-fun e!1598930 () Bool)

(assert (=> b!2525661 (=> res!1066837 e!1598930)))

(assert (=> b!2525661 (= res!1066837 (not (isEmpty!16956 (tail!4043 tl!4068))))))

(declare-fun b!2525662 () Bool)

(declare-fun res!1066840 () Bool)

(assert (=> b!2525662 (=> (not res!1066840) (not e!1598933))))

(assert (=> b!2525662 (= res!1066840 (not call!157801))))

(declare-fun b!2525663 () Bool)

(assert (=> b!2525663 (= e!1598932 (matchR!3504 (derivativeStep!2086 lt!900348 (head!5766 tl!4068)) (tail!4043 tl!4068)))))

(declare-fun bm!157796 () Bool)

(assert (=> bm!157796 (= call!157801 (isEmpty!16956 tl!4068))))

(declare-fun b!2525664 () Bool)

(declare-fun e!1598935 () Bool)

(assert (=> b!2525664 (= e!1598935 e!1598930)))

(declare-fun res!1066843 () Bool)

(assert (=> b!2525664 (=> res!1066843 e!1598930)))

(assert (=> b!2525664 (= res!1066843 call!157801)))

(declare-fun b!2525655 () Bool)

(assert (=> b!2525655 (= e!1598930 (not (= (head!5766 tl!4068) (c!403119 lt!900348))))))

(declare-fun d!718980 () Bool)

(assert (=> d!718980 e!1598931))

(declare-fun c!403185 () Bool)

(assert (=> d!718980 (= c!403185 ((_ is EmptyExpr!7517) lt!900348))))

(assert (=> d!718980 (= lt!900390 e!1598932)))

(declare-fun c!403186 () Bool)

(assert (=> d!718980 (= c!403186 (isEmpty!16956 tl!4068))))

(assert (=> d!718980 (validRegex!3143 lt!900348)))

(assert (=> d!718980 (= (matchR!3504 lt!900348 tl!4068) lt!900390)))

(declare-fun b!2525665 () Bool)

(assert (=> b!2525665 (= e!1598929 (not lt!900390))))

(declare-fun b!2525666 () Bool)

(assert (=> b!2525666 (= e!1598934 e!1598935)))

(declare-fun res!1066842 () Bool)

(assert (=> b!2525666 (=> (not res!1066842) (not e!1598935))))

(assert (=> b!2525666 (= res!1066842 (not lt!900390))))

(assert (= (and d!718980 c!403186) b!2525658))

(assert (= (and d!718980 (not c!403186)) b!2525663))

(assert (= (and d!718980 c!403185) b!2525660))

(assert (= (and d!718980 (not c!403185)) b!2525659))

(assert (= (and b!2525659 c!403184) b!2525665))

(assert (= (and b!2525659 (not c!403184)) b!2525653))

(assert (= (and b!2525653 (not res!1066841)) b!2525657))

(assert (= (and b!2525657 res!1066844) b!2525662))

(assert (= (and b!2525662 res!1066840) b!2525654))

(assert (= (and b!2525654 res!1066839) b!2525656))

(assert (= (and b!2525657 (not res!1066838)) b!2525666))

(assert (= (and b!2525666 res!1066842) b!2525664))

(assert (= (and b!2525664 (not res!1066843)) b!2525661))

(assert (= (and b!2525661 (not res!1066837)) b!2525655))

(assert (= (or b!2525660 b!2525664 b!2525662) bm!157796))

(assert (=> b!2525663 m!2878901))

(assert (=> b!2525663 m!2878901))

(declare-fun m!2879017 () Bool)

(assert (=> b!2525663 m!2879017))

(assert (=> b!2525663 m!2878905))

(assert (=> b!2525663 m!2879017))

(assert (=> b!2525663 m!2878905))

(declare-fun m!2879019 () Bool)

(assert (=> b!2525663 m!2879019))

(assert (=> b!2525656 m!2878901))

(assert (=> b!2525655 m!2878901))

(assert (=> b!2525654 m!2878905))

(assert (=> b!2525654 m!2878905))

(assert (=> b!2525654 m!2878909))

(declare-fun m!2879021 () Bool)

(assert (=> b!2525658 m!2879021))

(assert (=> b!2525661 m!2878905))

(assert (=> b!2525661 m!2878905))

(assert (=> b!2525661 m!2878909))

(assert (=> d!718980 m!2878913))

(assert (=> d!718980 m!2878981))

(assert (=> bm!157796 m!2878913))

(assert (=> b!2525435 d!718980))

(declare-fun b!2525667 () Bool)

(declare-fun res!1066849 () Bool)

(declare-fun e!1598941 () Bool)

(assert (=> b!2525667 (=> res!1066849 e!1598941)))

(assert (=> b!2525667 (= res!1066849 (not ((_ is ElementMatch!7517) EmptyLang!7517)))))

(declare-fun e!1598936 () Bool)

(assert (=> b!2525667 (= e!1598936 e!1598941)))

(declare-fun b!2525668 () Bool)

(declare-fun res!1066847 () Bool)

(declare-fun e!1598940 () Bool)

(assert (=> b!2525668 (=> (not res!1066847) (not e!1598940))))

(assert (=> b!2525668 (= res!1066847 (isEmpty!16956 (tail!4043 tl!4068)))))

(declare-fun b!2525670 () Bool)

(assert (=> b!2525670 (= e!1598940 (= (head!5766 tl!4068) (c!403119 EmptyLang!7517)))))

(declare-fun b!2525671 () Bool)

(declare-fun res!1066846 () Bool)

(assert (=> b!2525671 (=> res!1066846 e!1598941)))

(assert (=> b!2525671 (= res!1066846 e!1598940)))

(declare-fun res!1066852 () Bool)

(assert (=> b!2525671 (=> (not res!1066852) (not e!1598940))))

(declare-fun lt!900394 () Bool)

(assert (=> b!2525671 (= res!1066852 lt!900394)))

(declare-fun b!2525672 () Bool)

(declare-fun e!1598939 () Bool)

(assert (=> b!2525672 (= e!1598939 (nullable!2434 EmptyLang!7517))))

(declare-fun b!2525673 () Bool)

(declare-fun e!1598938 () Bool)

(assert (=> b!2525673 (= e!1598938 e!1598936)))

(declare-fun c!403187 () Bool)

(assert (=> b!2525673 (= c!403187 ((_ is EmptyLang!7517) EmptyLang!7517))))

(declare-fun b!2525674 () Bool)

(declare-fun call!157802 () Bool)

(assert (=> b!2525674 (= e!1598938 (= lt!900394 call!157802))))

(declare-fun b!2525675 () Bool)

(declare-fun res!1066845 () Bool)

(declare-fun e!1598937 () Bool)

(assert (=> b!2525675 (=> res!1066845 e!1598937)))

(assert (=> b!2525675 (= res!1066845 (not (isEmpty!16956 (tail!4043 tl!4068))))))

(declare-fun b!2525676 () Bool)

(declare-fun res!1066848 () Bool)

(assert (=> b!2525676 (=> (not res!1066848) (not e!1598940))))

(assert (=> b!2525676 (= res!1066848 (not call!157802))))

(declare-fun b!2525677 () Bool)

(assert (=> b!2525677 (= e!1598939 (matchR!3504 (derivativeStep!2086 EmptyLang!7517 (head!5766 tl!4068)) (tail!4043 tl!4068)))))

(declare-fun bm!157797 () Bool)

(assert (=> bm!157797 (= call!157802 (isEmpty!16956 tl!4068))))

(declare-fun b!2525678 () Bool)

(declare-fun e!1598942 () Bool)

(assert (=> b!2525678 (= e!1598942 e!1598937)))

(declare-fun res!1066851 () Bool)

(assert (=> b!2525678 (=> res!1066851 e!1598937)))

(assert (=> b!2525678 (= res!1066851 call!157802)))

(declare-fun b!2525669 () Bool)

(assert (=> b!2525669 (= e!1598937 (not (= (head!5766 tl!4068) (c!403119 EmptyLang!7517))))))

(declare-fun d!718982 () Bool)

(assert (=> d!718982 e!1598938))

(declare-fun c!403188 () Bool)

(assert (=> d!718982 (= c!403188 ((_ is EmptyExpr!7517) EmptyLang!7517))))

(assert (=> d!718982 (= lt!900394 e!1598939)))

(declare-fun c!403189 () Bool)

(assert (=> d!718982 (= c!403189 (isEmpty!16956 tl!4068))))

(assert (=> d!718982 (validRegex!3143 EmptyLang!7517)))

(assert (=> d!718982 (= (matchR!3504 EmptyLang!7517 tl!4068) lt!900394)))

(declare-fun b!2525679 () Bool)

(assert (=> b!2525679 (= e!1598936 (not lt!900394))))

(declare-fun b!2525680 () Bool)

(assert (=> b!2525680 (= e!1598941 e!1598942)))

(declare-fun res!1066850 () Bool)

(assert (=> b!2525680 (=> (not res!1066850) (not e!1598942))))

(assert (=> b!2525680 (= res!1066850 (not lt!900394))))

(assert (= (and d!718982 c!403189) b!2525672))

(assert (= (and d!718982 (not c!403189)) b!2525677))

(assert (= (and d!718982 c!403188) b!2525674))

(assert (= (and d!718982 (not c!403188)) b!2525673))

(assert (= (and b!2525673 c!403187) b!2525679))

(assert (= (and b!2525673 (not c!403187)) b!2525667))

(assert (= (and b!2525667 (not res!1066849)) b!2525671))

(assert (= (and b!2525671 res!1066852) b!2525676))

(assert (= (and b!2525676 res!1066848) b!2525668))

(assert (= (and b!2525668 res!1066847) b!2525670))

(assert (= (and b!2525671 (not res!1066846)) b!2525680))

(assert (= (and b!2525680 res!1066850) b!2525678))

(assert (= (and b!2525678 (not res!1066851)) b!2525675))

(assert (= (and b!2525675 (not res!1066845)) b!2525669))

(assert (= (or b!2525674 b!2525678 b!2525676) bm!157797))

(assert (=> b!2525677 m!2878901))

(assert (=> b!2525677 m!2878901))

(declare-fun m!2879025 () Bool)

(assert (=> b!2525677 m!2879025))

(assert (=> b!2525677 m!2878905))

(assert (=> b!2525677 m!2879025))

(assert (=> b!2525677 m!2878905))

(declare-fun m!2879031 () Bool)

(assert (=> b!2525677 m!2879031))

(assert (=> b!2525670 m!2878901))

(assert (=> b!2525669 m!2878901))

(assert (=> b!2525668 m!2878905))

(assert (=> b!2525668 m!2878905))

(assert (=> b!2525668 m!2878909))

(declare-fun m!2879039 () Bool)

(assert (=> b!2525672 m!2879039))

(assert (=> b!2525675 m!2878905))

(assert (=> b!2525675 m!2878905))

(assert (=> b!2525675 m!2878909))

(assert (=> d!718982 m!2878913))

(assert (=> d!718982 m!2878951))

(assert (=> bm!157797 m!2878913))

(assert (=> b!2525439 d!718982))

(declare-fun d!718986 () Bool)

(declare-fun nullableFct!676 (Regex!7517) Bool)

(assert (=> d!718986 (= (nullable!2434 (regOne!15546 r!27340)) (nullableFct!676 (regOne!15546 r!27340)))))

(declare-fun bs!469086 () Bool)

(assert (= bs!469086 d!718986))

(declare-fun m!2879053 () Bool)

(assert (=> bs!469086 m!2879053))

(assert (=> b!2525434 d!718986))

(declare-fun d!718992 () Bool)

(assert (=> d!718992 (= (nullable!2434 (derivative!212 (derivativeStep!2086 r!27340 c!14016) tl!4068)) (nullableFct!676 (derivative!212 (derivativeStep!2086 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469087 () Bool)

(assert (= bs!469087 d!718992))

(assert (=> bs!469087 m!2878875))

(declare-fun m!2879055 () Bool)

(assert (=> bs!469087 m!2879055))

(assert (=> b!2525438 d!718992))

(declare-fun d!718994 () Bool)

(declare-fun lt!900397 () Regex!7517)

(assert (=> d!718994 (validRegex!3143 lt!900397)))

(declare-fun e!1598951 () Regex!7517)

(assert (=> d!718994 (= lt!900397 e!1598951)))

(declare-fun c!403194 () Bool)

(assert (=> d!718994 (= c!403194 ((_ is Cons!29482) tl!4068))))

(assert (=> d!718994 (validRegex!3143 (derivativeStep!2086 r!27340 c!14016))))

(assert (=> d!718994 (= (derivative!212 (derivativeStep!2086 r!27340 c!14016) tl!4068) lt!900397)))

(declare-fun b!2525697 () Bool)

(assert (=> b!2525697 (= e!1598951 (derivative!212 (derivativeStep!2086 (derivativeStep!2086 r!27340 c!14016) (h!34902 tl!4068)) (t!211281 tl!4068)))))

(declare-fun b!2525698 () Bool)

(assert (=> b!2525698 (= e!1598951 (derivativeStep!2086 r!27340 c!14016))))

(assert (= (and d!718994 c!403194) b!2525697))

(assert (= (and d!718994 (not c!403194)) b!2525698))

(declare-fun m!2879057 () Bool)

(assert (=> d!718994 m!2879057))

(assert (=> d!718994 m!2878873))

(declare-fun m!2879059 () Bool)

(assert (=> d!718994 m!2879059))

(assert (=> b!2525697 m!2878873))

(declare-fun m!2879061 () Bool)

(assert (=> b!2525697 m!2879061))

(assert (=> b!2525697 m!2879061))

(declare-fun m!2879063 () Bool)

(assert (=> b!2525697 m!2879063))

(assert (=> b!2525438 d!718994))

(declare-fun b!2525699 () Bool)

(declare-fun e!1598955 () Regex!7517)

(declare-fun e!1598956 () Regex!7517)

(assert (=> b!2525699 (= e!1598955 e!1598956)))

(declare-fun c!403196 () Bool)

(assert (=> b!2525699 (= c!403196 ((_ is Star!7517) r!27340))))

(declare-fun b!2525700 () Bool)

(declare-fun c!403199 () Bool)

(assert (=> b!2525700 (= c!403199 (nullable!2434 (regOne!15546 r!27340)))))

(declare-fun e!1598954 () Regex!7517)

(assert (=> b!2525700 (= e!1598956 e!1598954)))

(declare-fun bm!157799 () Bool)

(declare-fun call!157807 () Regex!7517)

(declare-fun call!157806 () Regex!7517)

(assert (=> bm!157799 (= call!157807 call!157806)))

(declare-fun d!718996 () Bool)

(declare-fun lt!900398 () Regex!7517)

(assert (=> d!718996 (validRegex!3143 lt!900398)))

(declare-fun e!1598952 () Regex!7517)

(assert (=> d!718996 (= lt!900398 e!1598952)))

(declare-fun c!403195 () Bool)

(assert (=> d!718996 (= c!403195 (or ((_ is EmptyExpr!7517) r!27340) ((_ is EmptyLang!7517) r!27340)))))

(assert (=> d!718996 (validRegex!3143 r!27340)))

(assert (=> d!718996 (= (derivativeStep!2086 r!27340 c!14016) lt!900398)))

(declare-fun call!157805 () Regex!7517)

(declare-fun b!2525701 () Bool)

(assert (=> b!2525701 (= e!1598954 (Union!7517 (Concat!12213 call!157807 (regTwo!15546 r!27340)) call!157805))))

(declare-fun bm!157800 () Bool)

(declare-fun call!157804 () Regex!7517)

(assert (=> bm!157800 (= call!157806 call!157804)))

(declare-fun b!2525702 () Bool)

(assert (=> b!2525702 (= e!1598956 (Concat!12213 call!157806 r!27340))))

(declare-fun b!2525703 () Bool)

(declare-fun e!1598953 () Regex!7517)

(assert (=> b!2525703 (= e!1598952 e!1598953)))

(declare-fun c!403198 () Bool)

(assert (=> b!2525703 (= c!403198 ((_ is ElementMatch!7517) r!27340))))

(declare-fun b!2525704 () Bool)

(assert (=> b!2525704 (= e!1598952 EmptyLang!7517)))

(declare-fun b!2525705 () Bool)

(assert (=> b!2525705 (= e!1598955 (Union!7517 call!157804 call!157805))))

(declare-fun b!2525706 () Bool)

(assert (=> b!2525706 (= e!1598954 (Union!7517 (Concat!12213 call!157807 (regTwo!15546 r!27340)) EmptyLang!7517))))

(declare-fun b!2525707 () Bool)

(declare-fun c!403197 () Bool)

(assert (=> b!2525707 (= c!403197 ((_ is Union!7517) r!27340))))

(assert (=> b!2525707 (= e!1598953 e!1598955)))

(declare-fun bm!157801 () Bool)

(assert (=> bm!157801 (= call!157805 (derivativeStep!2086 (ite c!403197 (regTwo!15547 r!27340) (regTwo!15546 r!27340)) c!14016))))

(declare-fun bm!157802 () Bool)

(assert (=> bm!157802 (= call!157804 (derivativeStep!2086 (ite c!403197 (regOne!15547 r!27340) (ite c!403196 (reg!7846 r!27340) (regOne!15546 r!27340))) c!14016))))

(declare-fun b!2525708 () Bool)

(assert (=> b!2525708 (= e!1598953 (ite (= c!14016 (c!403119 r!27340)) EmptyExpr!7517 EmptyLang!7517))))

(assert (= (and d!718996 c!403195) b!2525704))

(assert (= (and d!718996 (not c!403195)) b!2525703))

(assert (= (and b!2525703 c!403198) b!2525708))

(assert (= (and b!2525703 (not c!403198)) b!2525707))

(assert (= (and b!2525707 c!403197) b!2525705))

(assert (= (and b!2525707 (not c!403197)) b!2525699))

(assert (= (and b!2525699 c!403196) b!2525702))

(assert (= (and b!2525699 (not c!403196)) b!2525700))

(assert (= (and b!2525700 c!403199) b!2525701))

(assert (= (and b!2525700 (not c!403199)) b!2525706))

(assert (= (or b!2525701 b!2525706) bm!157799))

(assert (= (or b!2525702 bm!157799) bm!157800))

(assert (= (or b!2525705 b!2525701) bm!157801))

(assert (= (or b!2525705 bm!157800) bm!157802))

(assert (=> b!2525700 m!2878871))

(declare-fun m!2879065 () Bool)

(assert (=> d!718996 m!2879065))

(assert (=> d!718996 m!2878899))

(declare-fun m!2879067 () Bool)

(assert (=> bm!157801 m!2879067))

(declare-fun m!2879069 () Bool)

(assert (=> bm!157802 m!2879069))

(assert (=> b!2525438 d!718996))

(declare-fun b!2525781 () Bool)

(declare-fun e!1599008 () Bool)

(declare-fun call!157828 () Bool)

(assert (=> b!2525781 (= e!1599008 call!157828)))

(declare-fun c!403216 () Bool)

(declare-fun bm!157822 () Bool)

(declare-fun c!403217 () Bool)

(assert (=> bm!157822 (= call!157828 (validRegex!3143 (ite c!403217 (reg!7846 r!27340) (ite c!403216 (regTwo!15547 r!27340) (regOne!15546 r!27340)))))))

(declare-fun b!2525782 () Bool)

(declare-fun e!1599004 () Bool)

(declare-fun call!157829 () Bool)

(assert (=> b!2525782 (= e!1599004 call!157829)))

(declare-fun bm!157823 () Bool)

(declare-fun call!157827 () Bool)

(assert (=> bm!157823 (= call!157827 call!157828)))

(declare-fun b!2525783 () Bool)

(declare-fun e!1599009 () Bool)

(assert (=> b!2525783 (= e!1599009 e!1599008)))

(declare-fun res!1066887 () Bool)

(assert (=> b!2525783 (= res!1066887 (not (nullable!2434 (reg!7846 r!27340))))))

(assert (=> b!2525783 (=> (not res!1066887) (not e!1599008))))

(declare-fun b!2525784 () Bool)

(declare-fun e!1599007 () Bool)

(assert (=> b!2525784 (= e!1599007 e!1599009)))

(assert (=> b!2525784 (= c!403217 ((_ is Star!7517) r!27340))))

(declare-fun b!2525785 () Bool)

(declare-fun e!1599003 () Bool)

(assert (=> b!2525785 (= e!1599003 e!1599004)))

(declare-fun res!1066886 () Bool)

(assert (=> b!2525785 (=> (not res!1066886) (not e!1599004))))

(assert (=> b!2525785 (= res!1066886 call!157827)))

(declare-fun b!2525786 () Bool)

(declare-fun res!1066888 () Bool)

(assert (=> b!2525786 (=> res!1066888 e!1599003)))

(assert (=> b!2525786 (= res!1066888 (not ((_ is Concat!12213) r!27340)))))

(declare-fun e!1599005 () Bool)

(assert (=> b!2525786 (= e!1599005 e!1599003)))

(declare-fun d!718998 () Bool)

(declare-fun res!1066889 () Bool)

(assert (=> d!718998 (=> res!1066889 e!1599007)))

(assert (=> d!718998 (= res!1066889 ((_ is ElementMatch!7517) r!27340))))

(assert (=> d!718998 (= (validRegex!3143 r!27340) e!1599007)))

(declare-fun b!2525787 () Bool)

(declare-fun e!1599006 () Bool)

(assert (=> b!2525787 (= e!1599006 call!157827)))

(declare-fun bm!157824 () Bool)

(assert (=> bm!157824 (= call!157829 (validRegex!3143 (ite c!403216 (regOne!15547 r!27340) (regTwo!15546 r!27340))))))

(declare-fun b!2525788 () Bool)

(assert (=> b!2525788 (= e!1599009 e!1599005)))

(assert (=> b!2525788 (= c!403216 ((_ is Union!7517) r!27340))))

(declare-fun b!2525789 () Bool)

(declare-fun res!1066890 () Bool)

(assert (=> b!2525789 (=> (not res!1066890) (not e!1599006))))

(assert (=> b!2525789 (= res!1066890 call!157829)))

(assert (=> b!2525789 (= e!1599005 e!1599006)))

(assert (= (and d!718998 (not res!1066889)) b!2525784))

(assert (= (and b!2525784 c!403217) b!2525783))

(assert (= (and b!2525784 (not c!403217)) b!2525788))

(assert (= (and b!2525783 res!1066887) b!2525781))

(assert (= (and b!2525788 c!403216) b!2525789))

(assert (= (and b!2525788 (not c!403216)) b!2525786))

(assert (= (and b!2525789 res!1066890) b!2525787))

(assert (= (and b!2525786 (not res!1066888)) b!2525785))

(assert (= (and b!2525785 res!1066886) b!2525782))

(assert (= (or b!2525789 b!2525782) bm!157824))

(assert (= (or b!2525787 b!2525785) bm!157823))

(assert (= (or b!2525781 bm!157823) bm!157822))

(declare-fun m!2879095 () Bool)

(assert (=> bm!157822 m!2879095))

(declare-fun m!2879097 () Bool)

(assert (=> b!2525783 m!2879097))

(declare-fun m!2879099 () Bool)

(assert (=> bm!157824 m!2879099))

(assert (=> start!246008 d!718998))

(declare-fun e!1599017 () Bool)

(assert (=> b!2525440 (= tp!806538 e!1599017)))

(declare-fun b!2525820 () Bool)

(assert (=> b!2525820 (= e!1599017 tp_is_empty!12889)))

(declare-fun b!2525823 () Bool)

(declare-fun tp!806595 () Bool)

(declare-fun tp!806593 () Bool)

(assert (=> b!2525823 (= e!1599017 (and tp!806595 tp!806593))))

(declare-fun b!2525822 () Bool)

(declare-fun tp!806591 () Bool)

(assert (=> b!2525822 (= e!1599017 tp!806591)))

(declare-fun b!2525821 () Bool)

(declare-fun tp!806592 () Bool)

(declare-fun tp!806594 () Bool)

(assert (=> b!2525821 (= e!1599017 (and tp!806592 tp!806594))))

(assert (= (and b!2525440 ((_ is ElementMatch!7517) (regOne!15547 r!27340))) b!2525820))

(assert (= (and b!2525440 ((_ is Concat!12213) (regOne!15547 r!27340))) b!2525821))

(assert (= (and b!2525440 ((_ is Star!7517) (regOne!15547 r!27340))) b!2525822))

(assert (= (and b!2525440 ((_ is Union!7517) (regOne!15547 r!27340))) b!2525823))

(declare-fun e!1599018 () Bool)

(assert (=> b!2525440 (= tp!806537 e!1599018)))

(declare-fun b!2525824 () Bool)

(assert (=> b!2525824 (= e!1599018 tp_is_empty!12889)))

(declare-fun b!2525827 () Bool)

(declare-fun tp!806600 () Bool)

(declare-fun tp!806598 () Bool)

(assert (=> b!2525827 (= e!1599018 (and tp!806600 tp!806598))))

(declare-fun b!2525826 () Bool)

(declare-fun tp!806596 () Bool)

(assert (=> b!2525826 (= e!1599018 tp!806596)))

(declare-fun b!2525825 () Bool)

(declare-fun tp!806597 () Bool)

(declare-fun tp!806599 () Bool)

(assert (=> b!2525825 (= e!1599018 (and tp!806597 tp!806599))))

(assert (= (and b!2525440 ((_ is ElementMatch!7517) (regTwo!15547 r!27340))) b!2525824))

(assert (= (and b!2525440 ((_ is Concat!12213) (regTwo!15547 r!27340))) b!2525825))

(assert (= (and b!2525440 ((_ is Star!7517) (regTwo!15547 r!27340))) b!2525826))

(assert (= (and b!2525440 ((_ is Union!7517) (regTwo!15547 r!27340))) b!2525827))

(declare-fun e!1599019 () Bool)

(assert (=> b!2525433 (= tp!806542 e!1599019)))

(declare-fun b!2525828 () Bool)

(assert (=> b!2525828 (= e!1599019 tp_is_empty!12889)))

(declare-fun b!2525831 () Bool)

(declare-fun tp!806605 () Bool)

(declare-fun tp!806603 () Bool)

(assert (=> b!2525831 (= e!1599019 (and tp!806605 tp!806603))))

(declare-fun b!2525830 () Bool)

(declare-fun tp!806601 () Bool)

(assert (=> b!2525830 (= e!1599019 tp!806601)))

(declare-fun b!2525829 () Bool)

(declare-fun tp!806602 () Bool)

(declare-fun tp!806604 () Bool)

(assert (=> b!2525829 (= e!1599019 (and tp!806602 tp!806604))))

(assert (= (and b!2525433 ((_ is ElementMatch!7517) (reg!7846 r!27340))) b!2525828))

(assert (= (and b!2525433 ((_ is Concat!12213) (reg!7846 r!27340))) b!2525829))

(assert (= (and b!2525433 ((_ is Star!7517) (reg!7846 r!27340))) b!2525830))

(assert (= (and b!2525433 ((_ is Union!7517) (reg!7846 r!27340))) b!2525831))

(declare-fun b!2525836 () Bool)

(declare-fun e!1599022 () Bool)

(declare-fun tp!806608 () Bool)

(assert (=> b!2525836 (= e!1599022 (and tp_is_empty!12889 tp!806608))))

(assert (=> b!2525437 (= tp!806540 e!1599022)))

(assert (= (and b!2525437 ((_ is Cons!29482) (t!211281 tl!4068))) b!2525836))

(declare-fun e!1599023 () Bool)

(assert (=> b!2525436 (= tp!806539 e!1599023)))

(declare-fun b!2525837 () Bool)

(assert (=> b!2525837 (= e!1599023 tp_is_empty!12889)))

(declare-fun b!2525840 () Bool)

(declare-fun tp!806613 () Bool)

(declare-fun tp!806611 () Bool)

(assert (=> b!2525840 (= e!1599023 (and tp!806613 tp!806611))))

(declare-fun b!2525839 () Bool)

(declare-fun tp!806609 () Bool)

(assert (=> b!2525839 (= e!1599023 tp!806609)))

(declare-fun b!2525838 () Bool)

(declare-fun tp!806610 () Bool)

(declare-fun tp!806612 () Bool)

(assert (=> b!2525838 (= e!1599023 (and tp!806610 tp!806612))))

(assert (= (and b!2525436 ((_ is ElementMatch!7517) (regOne!15546 r!27340))) b!2525837))

(assert (= (and b!2525436 ((_ is Concat!12213) (regOne!15546 r!27340))) b!2525838))

(assert (= (and b!2525436 ((_ is Star!7517) (regOne!15546 r!27340))) b!2525839))

(assert (= (and b!2525436 ((_ is Union!7517) (regOne!15546 r!27340))) b!2525840))

(declare-fun e!1599024 () Bool)

(assert (=> b!2525436 (= tp!806541 e!1599024)))

(declare-fun b!2525841 () Bool)

(assert (=> b!2525841 (= e!1599024 tp_is_empty!12889)))

(declare-fun b!2525844 () Bool)

(declare-fun tp!806618 () Bool)

(declare-fun tp!806616 () Bool)

(assert (=> b!2525844 (= e!1599024 (and tp!806618 tp!806616))))

(declare-fun b!2525843 () Bool)

(declare-fun tp!806614 () Bool)

(assert (=> b!2525843 (= e!1599024 tp!806614)))

(declare-fun b!2525842 () Bool)

(declare-fun tp!806615 () Bool)

(declare-fun tp!806617 () Bool)

(assert (=> b!2525842 (= e!1599024 (and tp!806615 tp!806617))))

(assert (= (and b!2525436 ((_ is ElementMatch!7517) (regTwo!15546 r!27340))) b!2525841))

(assert (= (and b!2525436 ((_ is Concat!12213) (regTwo!15546 r!27340))) b!2525842))

(assert (= (and b!2525436 ((_ is Star!7517) (regTwo!15546 r!27340))) b!2525843))

(assert (= (and b!2525436 ((_ is Union!7517) (regTwo!15546 r!27340))) b!2525844))

(check-sat (not b!2525825) (not d!718954) (not b!2525677) (not b!2525512) (not b!2525644) (not b!2525513) (not d!718962) (not bm!157824) (not bm!157796) (not b!2525585) (not b!2525821) (not b!2525831) (not b!2525669) (not b!2525505) (not b!2525514) (not b!2525822) (not b!2525516) (not b!2525840) (not b!2525670) (not bm!157802) tp_is_empty!12889 (not d!718986) (not d!718970) (not b!2525839) (not b!2525500) (not d!718952) (not b!2525700) (not b!2525844) (not b!2525499) (not d!718972) (not b!2525521) (not d!718974) (not b!2525783) (not d!718994) (not bm!157801) (not bm!157794) (not d!718992) (not b!2525675) (not bm!157768) (not d!718980) (not b!2525836) (not b!2525498) (not b!2525654) (not b!2525584) (not b!2525829) (not d!718982) (not b!2525830) (not d!718996) (not b!2525658) (not b!2525507) (not b!2525655) (not bm!157795) (not b!2525842) (not b!2525838) (not b!2525826) (not b!2525697) (not b!2525668) (not d!718950) (not b!2525656) (not bm!157822) (not d!718958) (not b!2525502) (not b!2525519) (not b!2525843) (not b!2525661) (not b!2525672) (not bm!157797) (not b!2525827) (not bm!157767) (not b!2525543) (not b!2525583) (not b!2525663) (not b!2525823))
(check-sat)
