; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295072 () Bool)

(assert start!295072)

(declare-fun b!3117787 () Bool)

(declare-fun e!1947039 () Bool)

(declare-fun e!1947037 () Bool)

(assert (=> b!3117787 (= e!1947039 e!1947037)))

(declare-fun res!1276019 () Bool)

(assert (=> b!3117787 (=> res!1276019 e!1947037)))

(declare-datatypes ((C!19420 0))(
  ( (C!19421 (val!11746 Int)) )
))
(declare-datatypes ((Regex!9617 0))(
  ( (ElementMatch!9617 (c!522355 C!19420)) (Concat!14938 (regOne!19746 Regex!9617) (regTwo!19746 Regex!9617)) (EmptyExpr!9617) (Star!9617 (reg!9946 Regex!9617)) (EmptyLang!9617) (Union!9617 (regOne!19747 Regex!9617) (regTwo!19747 Regex!9617)) )
))
(declare-fun lt!1058568 () Regex!9617)

(declare-fun isEmptyLang!668 (Regex!9617) Bool)

(assert (=> b!3117787 (= res!1276019 (isEmptyLang!668 lt!1058568))))

(declare-fun r!17423 () Regex!9617)

(declare-fun simplify!572 (Regex!9617) Regex!9617)

(assert (=> b!3117787 (= lt!1058568 (simplify!572 (reg!9946 r!17423)))))

(declare-fun b!3117789 () Bool)

(declare-fun e!1947041 () Bool)

(assert (=> b!3117789 (= e!1947041 (not e!1947039))))

(declare-fun res!1276017 () Bool)

(assert (=> b!3117789 (=> res!1276017 e!1947039)))

(declare-fun lt!1058566 () Bool)

(get-info :version)

(assert (=> b!3117789 (= res!1276017 (or lt!1058566 ((_ is Concat!14938) r!17423) ((_ is Union!9617) r!17423) (not ((_ is Star!9617) r!17423))))))

(declare-datatypes ((List!35482 0))(
  ( (Nil!35358) (Cons!35358 (h!40778 C!19420) (t!234547 List!35482)) )
))
(declare-fun s!11993 () List!35482)

(declare-fun matchRSpec!1754 (Regex!9617 List!35482) Bool)

(assert (=> b!3117789 (= lt!1058566 (matchRSpec!1754 r!17423 s!11993))))

(declare-fun matchR!4499 (Regex!9617 List!35482) Bool)

(assert (=> b!3117789 (= lt!1058566 (matchR!4499 r!17423 s!11993))))

(declare-datatypes ((Unit!49673 0))(
  ( (Unit!49674) )
))
(declare-fun lt!1058567 () Unit!49673)

(declare-fun mainMatchTheorem!1754 (Regex!9617 List!35482) Unit!49673)

(assert (=> b!3117789 (= lt!1058567 (mainMatchTheorem!1754 r!17423 s!11993))))

(declare-fun b!3117790 () Bool)

(declare-fun e!1947036 () Bool)

(declare-fun tp!977561 () Bool)

(declare-fun tp!977560 () Bool)

(assert (=> b!3117790 (= e!1947036 (and tp!977561 tp!977560))))

(declare-fun b!3117791 () Bool)

(declare-fun e!1947038 () Bool)

(assert (=> b!3117791 (= e!1947037 e!1947038)))

(declare-fun res!1276018 () Bool)

(assert (=> b!3117791 (=> res!1276018 e!1947038)))

(declare-fun lt!1058565 () Regex!9617)

(assert (=> b!3117791 (= res!1276018 (not (matchR!4499 lt!1058565 s!11993)))))

(assert (=> b!3117791 (= lt!1058565 (Star!9617 lt!1058568))))

(declare-fun b!3117792 () Bool)

(declare-fun tp_is_empty!16797 () Bool)

(assert (=> b!3117792 (= e!1947036 tp_is_empty!16797)))

(declare-fun b!3117788 () Bool)

(declare-fun e!1947040 () Bool)

(declare-fun tp!977563 () Bool)

(assert (=> b!3117788 (= e!1947040 (and tp_is_empty!16797 tp!977563))))

(declare-fun res!1276020 () Bool)

(assert (=> start!295072 (=> (not res!1276020) (not e!1947041))))

(declare-fun validRegex!4350 (Regex!9617) Bool)

(assert (=> start!295072 (= res!1276020 (validRegex!4350 r!17423))))

(assert (=> start!295072 e!1947041))

(assert (=> start!295072 e!1947036))

(assert (=> start!295072 e!1947040))

(declare-fun b!3117793 () Bool)

(declare-fun tp!977565 () Bool)

(declare-fun tp!977562 () Bool)

(assert (=> b!3117793 (= e!1947036 (and tp!977565 tp!977562))))

(declare-fun b!3117794 () Bool)

(declare-fun tp!977564 () Bool)

(assert (=> b!3117794 (= e!1947036 tp!977564)))

(declare-fun b!3117795 () Bool)

(assert (=> b!3117795 (= e!1947038 (validRegex!4350 lt!1058565))))

(assert (= (and start!295072 res!1276020) b!3117789))

(assert (= (and b!3117789 (not res!1276017)) b!3117787))

(assert (= (and b!3117787 (not res!1276019)) b!3117791))

(assert (= (and b!3117791 (not res!1276018)) b!3117795))

(assert (= (and start!295072 ((_ is ElementMatch!9617) r!17423)) b!3117792))

(assert (= (and start!295072 ((_ is Concat!14938) r!17423)) b!3117790))

(assert (= (and start!295072 ((_ is Star!9617) r!17423)) b!3117794))

(assert (= (and start!295072 ((_ is Union!9617) r!17423)) b!3117793))

(assert (= (and start!295072 ((_ is Cons!35358) s!11993)) b!3117788))

(declare-fun m!3407101 () Bool)

(assert (=> b!3117789 m!3407101))

(declare-fun m!3407103 () Bool)

(assert (=> b!3117789 m!3407103))

(declare-fun m!3407105 () Bool)

(assert (=> b!3117789 m!3407105))

(declare-fun m!3407107 () Bool)

(assert (=> b!3117787 m!3407107))

(declare-fun m!3407109 () Bool)

(assert (=> b!3117787 m!3407109))

(declare-fun m!3407111 () Bool)

(assert (=> b!3117795 m!3407111))

(declare-fun m!3407113 () Bool)

(assert (=> b!3117791 m!3407113))

(declare-fun m!3407115 () Bool)

(assert (=> start!295072 m!3407115))

(check-sat (not b!3117795) tp_is_empty!16797 (not b!3117788) (not b!3117791) (not start!295072) (not b!3117790) (not b!3117794) (not b!3117787) (not b!3117789) (not b!3117793))
(check-sat)
(get-model)

(declare-fun d!862268 () Bool)

(assert (=> d!862268 (= (isEmptyLang!668 lt!1058568) ((_ is EmptyLang!9617) lt!1058568))))

(assert (=> b!3117787 d!862268))

(declare-fun b!3117921 () Bool)

(declare-fun e!1947118 () Regex!9617)

(declare-fun lt!1058595 () Regex!9617)

(assert (=> b!3117921 (= e!1947118 (Star!9617 lt!1058595))))

(declare-fun b!3117922 () Bool)

(declare-fun e!1947124 () Bool)

(declare-fun call!221382 () Bool)

(assert (=> b!3117922 (= e!1947124 call!221382)))

(declare-fun b!3117923 () Bool)

(declare-fun e!1947123 () Regex!9617)

(assert (=> b!3117923 (= e!1947123 EmptyExpr!9617)))

(declare-fun b!3117924 () Bool)

(declare-fun e!1947130 () Regex!9617)

(declare-fun e!1947122 () Regex!9617)

(assert (=> b!3117924 (= e!1947130 e!1947122)))

(declare-fun c!522414 () Bool)

(assert (=> b!3117924 (= c!522414 call!221382)))

(declare-fun b!3117925 () Bool)

(declare-fun e!1947119 () Bool)

(declare-fun call!221384 () Bool)

(assert (=> b!3117925 (= e!1947119 call!221384)))

(declare-fun b!3117926 () Bool)

(declare-fun c!522410 () Bool)

(assert (=> b!3117926 (= c!522410 e!1947124)))

(declare-fun res!1276047 () Bool)

(assert (=> b!3117926 (=> res!1276047 e!1947124)))

(declare-fun call!221385 () Bool)

(assert (=> b!3117926 (= res!1276047 call!221385)))

(declare-fun call!221386 () Regex!9617)

(assert (=> b!3117926 (= lt!1058595 call!221386)))

(declare-fun e!1947120 () Regex!9617)

(assert (=> b!3117926 (= e!1947120 e!1947118)))

(declare-fun b!3117927 () Bool)

(declare-fun e!1947128 () Regex!9617)

(declare-fun e!1947121 () Regex!9617)

(assert (=> b!3117927 (= e!1947128 e!1947121)))

(declare-fun c!522409 () Bool)

(assert (=> b!3117927 (= c!522409 ((_ is ElementMatch!9617) (reg!9946 r!17423)))))

(declare-fun b!3117928 () Bool)

(declare-fun c!522416 () Bool)

(assert (=> b!3117928 (= c!522416 ((_ is Union!9617) (reg!9946 r!17423)))))

(declare-fun e!1947129 () Regex!9617)

(assert (=> b!3117928 (= e!1947120 e!1947129)))

(declare-fun bm!221377 () Bool)

(declare-fun call!221383 () Bool)

(assert (=> bm!221377 (= call!221383 call!221385)))

(declare-fun b!3117929 () Bool)

(declare-fun e!1947126 () Regex!9617)

(declare-fun lt!1058597 () Regex!9617)

(assert (=> b!3117929 (= e!1947126 lt!1058597)))

(declare-fun b!3117930 () Bool)

(declare-fun lt!1058598 () Regex!9617)

(assert (=> b!3117930 (= e!1947130 lt!1058598)))

(declare-fun b!3117931 () Bool)

(declare-fun c!522412 () Bool)

(assert (=> b!3117931 (= c!522412 ((_ is EmptyExpr!9617) (reg!9946 r!17423)))))

(assert (=> b!3117931 (= e!1947121 e!1947123)))

(declare-fun b!3117932 () Bool)

(assert (=> b!3117932 (= e!1947129 e!1947126)))

(declare-fun lt!1058594 () Regex!9617)

(declare-fun call!221387 () Regex!9617)

(assert (=> b!3117932 (= lt!1058594 call!221387)))

(declare-fun call!221390 () Regex!9617)

(assert (=> b!3117932 (= lt!1058597 call!221390)))

(declare-fun c!522407 () Bool)

(assert (=> b!3117932 (= c!522407 call!221383)))

(declare-fun bm!221379 () Bool)

(assert (=> bm!221379 (= call!221390 call!221386)))

(declare-fun b!3117933 () Bool)

(declare-fun e!1947117 () Regex!9617)

(assert (=> b!3117933 (= e!1947117 lt!1058594)))

(declare-fun bm!221380 () Bool)

(assert (=> bm!221380 (= call!221384 (isEmptyLang!668 (ite c!522416 lt!1058597 lt!1058598)))))

(declare-fun b!3117934 () Bool)

(assert (=> b!3117934 (= e!1947118 EmptyExpr!9617)))

(declare-fun b!3117935 () Bool)

(declare-fun lt!1058596 () Regex!9617)

(assert (=> b!3117935 (= e!1947122 lt!1058596)))

(declare-fun b!3117936 () Bool)

(assert (=> b!3117936 (= e!1947117 (Union!9617 lt!1058594 lt!1058597))))

(declare-fun c!522413 () Bool)

(declare-fun bm!221381 () Bool)

(declare-fun isEmptyExpr!666 (Regex!9617) Bool)

(assert (=> bm!221381 (= call!221382 (isEmptyExpr!666 (ite c!522413 lt!1058595 lt!1058598)))))

(declare-fun b!3117937 () Bool)

(assert (=> b!3117937 (= e!1947128 EmptyLang!9617)))

(declare-fun b!3117938 () Bool)

(assert (=> b!3117938 (= e!1947121 (reg!9946 r!17423))))

(declare-fun b!3117939 () Bool)

(assert (=> b!3117939 (= e!1947123 e!1947120)))

(assert (=> b!3117939 (= c!522413 ((_ is Star!9617) (reg!9946 r!17423)))))

(declare-fun b!3117940 () Bool)

(declare-fun e!1947125 () Regex!9617)

(assert (=> b!3117940 (= e!1947125 EmptyLang!9617)))

(declare-fun bm!221378 () Bool)

(assert (=> bm!221378 (= call!221387 (simplify!572 (ite c!522416 (regOne!19747 (reg!9946 r!17423)) (regTwo!19746 (reg!9946 r!17423)))))))

(declare-fun d!862270 () Bool)

(declare-fun e!1947127 () Bool)

(assert (=> d!862270 e!1947127))

(declare-fun res!1276046 () Bool)

(assert (=> d!862270 (=> (not res!1276046) (not e!1947127))))

(declare-fun lt!1058593 () Regex!9617)

(assert (=> d!862270 (= res!1276046 (validRegex!4350 lt!1058593))))

(assert (=> d!862270 (= lt!1058593 e!1947128)))

(declare-fun c!522411 () Bool)

(assert (=> d!862270 (= c!522411 ((_ is EmptyLang!9617) (reg!9946 r!17423)))))

(assert (=> d!862270 (validRegex!4350 (reg!9946 r!17423))))

(assert (=> d!862270 (= (simplify!572 (reg!9946 r!17423)) lt!1058593)))

(declare-fun bm!221382 () Bool)

(assert (=> bm!221382 (= call!221386 (simplify!572 (ite c!522413 (reg!9946 (reg!9946 r!17423)) (ite c!522416 (regTwo!19747 (reg!9946 r!17423)) (regOne!19746 (reg!9946 r!17423))))))))

(declare-fun b!3117941 () Bool)

(declare-fun c!522408 () Bool)

(assert (=> b!3117941 (= c!522408 (isEmptyExpr!666 lt!1058596))))

(assert (=> b!3117941 (= e!1947125 e!1947130)))

(declare-fun b!3117942 () Bool)

(assert (=> b!3117942 (= e!1947122 (Concat!14938 lt!1058596 lt!1058598))))

(declare-fun b!3117943 () Bool)

(declare-fun c!522415 () Bool)

(assert (=> b!3117943 (= c!522415 call!221384)))

(assert (=> b!3117943 (= e!1947126 e!1947117)))

(declare-fun b!3117944 () Bool)

(assert (=> b!3117944 (= e!1947129 e!1947125)))

(assert (=> b!3117944 (= lt!1058596 call!221390)))

(assert (=> b!3117944 (= lt!1058598 call!221387)))

(declare-fun res!1276048 () Bool)

(assert (=> b!3117944 (= res!1276048 call!221383)))

(assert (=> b!3117944 (=> res!1276048 e!1947119)))

(declare-fun c!522406 () Bool)

(assert (=> b!3117944 (= c!522406 e!1947119)))

(declare-fun bm!221383 () Bool)

(assert (=> bm!221383 (= call!221385 (isEmptyLang!668 (ite c!522413 lt!1058595 (ite c!522416 lt!1058594 lt!1058596))))))

(declare-fun b!3117945 () Bool)

(declare-fun nullable!3255 (Regex!9617) Bool)

(assert (=> b!3117945 (= e!1947127 (= (nullable!3255 lt!1058593) (nullable!3255 (reg!9946 r!17423))))))

(assert (= (and d!862270 c!522411) b!3117937))

(assert (= (and d!862270 (not c!522411)) b!3117927))

(assert (= (and b!3117927 c!522409) b!3117938))

(assert (= (and b!3117927 (not c!522409)) b!3117931))

(assert (= (and b!3117931 c!522412) b!3117923))

(assert (= (and b!3117931 (not c!522412)) b!3117939))

(assert (= (and b!3117939 c!522413) b!3117926))

(assert (= (and b!3117939 (not c!522413)) b!3117928))

(assert (= (and b!3117926 (not res!1276047)) b!3117922))

(assert (= (and b!3117926 c!522410) b!3117934))

(assert (= (and b!3117926 (not c!522410)) b!3117921))

(assert (= (and b!3117928 c!522416) b!3117932))

(assert (= (and b!3117928 (not c!522416)) b!3117944))

(assert (= (and b!3117932 c!522407) b!3117929))

(assert (= (and b!3117932 (not c!522407)) b!3117943))

(assert (= (and b!3117943 c!522415) b!3117933))

(assert (= (and b!3117943 (not c!522415)) b!3117936))

(assert (= (and b!3117944 (not res!1276048)) b!3117925))

(assert (= (and b!3117944 c!522406) b!3117940))

(assert (= (and b!3117944 (not c!522406)) b!3117941))

(assert (= (and b!3117941 c!522408) b!3117930))

(assert (= (and b!3117941 (not c!522408)) b!3117924))

(assert (= (and b!3117924 c!522414) b!3117935))

(assert (= (and b!3117924 (not c!522414)) b!3117942))

(assert (= (or b!3117932 b!3117944) bm!221378))

(assert (= (or b!3117932 b!3117944) bm!221379))

(assert (= (or b!3117943 b!3117925) bm!221380))

(assert (= (or b!3117932 b!3117944) bm!221377))

(assert (= (or b!3117922 b!3117924) bm!221381))

(assert (= (or b!3117926 bm!221379) bm!221382))

(assert (= (or b!3117926 bm!221377) bm!221383))

(assert (= (and d!862270 res!1276046) b!3117945))

(declare-fun m!3407123 () Bool)

(assert (=> b!3117941 m!3407123))

(declare-fun m!3407125 () Bool)

(assert (=> bm!221378 m!3407125))

(declare-fun m!3407127 () Bool)

(assert (=> bm!221381 m!3407127))

(declare-fun m!3407129 () Bool)

(assert (=> b!3117945 m!3407129))

(declare-fun m!3407131 () Bool)

(assert (=> b!3117945 m!3407131))

(declare-fun m!3407133 () Bool)

(assert (=> bm!221382 m!3407133))

(declare-fun m!3407135 () Bool)

(assert (=> d!862270 m!3407135))

(declare-fun m!3407137 () Bool)

(assert (=> d!862270 m!3407137))

(declare-fun m!3407139 () Bool)

(assert (=> bm!221383 m!3407139))

(declare-fun m!3407141 () Bool)

(assert (=> bm!221380 m!3407141))

(assert (=> b!3117787 d!862270))

(declare-fun bm!221392 () Bool)

(declare-fun call!221399 () Bool)

(declare-fun c!522421 () Bool)

(assert (=> bm!221392 (= call!221399 (validRegex!4350 (ite c!522421 (regTwo!19747 r!17423) (regOne!19746 r!17423))))))

(declare-fun b!3117967 () Bool)

(declare-fun e!1947147 () Bool)

(declare-fun e!1947151 () Bool)

(assert (=> b!3117967 (= e!1947147 e!1947151)))

(declare-fun res!1276061 () Bool)

(assert (=> b!3117967 (= res!1276061 (not (nullable!3255 (reg!9946 r!17423))))))

(assert (=> b!3117967 (=> (not res!1276061) (not e!1947151))))

(declare-fun b!3117968 () Bool)

(declare-fun e!1947150 () Bool)

(assert (=> b!3117968 (= e!1947150 e!1947147)))

(declare-fun c!522422 () Bool)

(assert (=> b!3117968 (= c!522422 ((_ is Star!9617) r!17423))))

(declare-fun b!3117969 () Bool)

(declare-fun e!1947148 () Bool)

(declare-fun e!1947152 () Bool)

(assert (=> b!3117969 (= e!1947148 e!1947152)))

(declare-fun res!1276063 () Bool)

(assert (=> b!3117969 (=> (not res!1276063) (not e!1947152))))

(assert (=> b!3117969 (= res!1276063 call!221399)))

(declare-fun b!3117970 () Bool)

(declare-fun call!221397 () Bool)

(assert (=> b!3117970 (= e!1947151 call!221397)))

(declare-fun b!3117971 () Bool)

(declare-fun call!221398 () Bool)

(assert (=> b!3117971 (= e!1947152 call!221398)))

(declare-fun b!3117972 () Bool)

(declare-fun e!1947153 () Bool)

(assert (=> b!3117972 (= e!1947153 call!221399)))

(declare-fun d!862278 () Bool)

(declare-fun res!1276062 () Bool)

(assert (=> d!862278 (=> res!1276062 e!1947150)))

(assert (=> d!862278 (= res!1276062 ((_ is ElementMatch!9617) r!17423))))

(assert (=> d!862278 (= (validRegex!4350 r!17423) e!1947150)))

(declare-fun b!3117966 () Bool)

(declare-fun res!1276064 () Bool)

(assert (=> b!3117966 (=> (not res!1276064) (not e!1947153))))

(assert (=> b!3117966 (= res!1276064 call!221398)))

(declare-fun e!1947149 () Bool)

(assert (=> b!3117966 (= e!1947149 e!1947153)))

(declare-fun bm!221393 () Bool)

(assert (=> bm!221393 (= call!221398 call!221397)))

(declare-fun b!3117973 () Bool)

(assert (=> b!3117973 (= e!1947147 e!1947149)))

(assert (=> b!3117973 (= c!522421 ((_ is Union!9617) r!17423))))

(declare-fun b!3117974 () Bool)

(declare-fun res!1276065 () Bool)

(assert (=> b!3117974 (=> res!1276065 e!1947148)))

(assert (=> b!3117974 (= res!1276065 (not ((_ is Concat!14938) r!17423)))))

(assert (=> b!3117974 (= e!1947149 e!1947148)))

(declare-fun bm!221394 () Bool)

(assert (=> bm!221394 (= call!221397 (validRegex!4350 (ite c!522422 (reg!9946 r!17423) (ite c!522421 (regOne!19747 r!17423) (regTwo!19746 r!17423)))))))

(assert (= (and d!862278 (not res!1276062)) b!3117968))

(assert (= (and b!3117968 c!522422) b!3117967))

(assert (= (and b!3117968 (not c!522422)) b!3117973))

(assert (= (and b!3117967 res!1276061) b!3117970))

(assert (= (and b!3117973 c!522421) b!3117966))

(assert (= (and b!3117973 (not c!522421)) b!3117974))

(assert (= (and b!3117966 res!1276064) b!3117972))

(assert (= (and b!3117974 (not res!1276065)) b!3117969))

(assert (= (and b!3117969 res!1276063) b!3117971))

(assert (= (or b!3117966 b!3117971) bm!221393))

(assert (= (or b!3117972 b!3117969) bm!221392))

(assert (= (or b!3117970 bm!221393) bm!221394))

(declare-fun m!3407143 () Bool)

(assert (=> bm!221392 m!3407143))

(assert (=> b!3117967 m!3407131))

(declare-fun m!3407145 () Bool)

(assert (=> bm!221394 m!3407145))

(assert (=> start!295072 d!862278))

(declare-fun bm!221395 () Bool)

(declare-fun call!221402 () Bool)

(declare-fun c!522423 () Bool)

(assert (=> bm!221395 (= call!221402 (validRegex!4350 (ite c!522423 (regTwo!19747 lt!1058565) (regOne!19746 lt!1058565))))))

(declare-fun b!3117976 () Bool)

(declare-fun e!1947154 () Bool)

(declare-fun e!1947158 () Bool)

(assert (=> b!3117976 (= e!1947154 e!1947158)))

(declare-fun res!1276066 () Bool)

(assert (=> b!3117976 (= res!1276066 (not (nullable!3255 (reg!9946 lt!1058565))))))

(assert (=> b!3117976 (=> (not res!1276066) (not e!1947158))))

(declare-fun b!3117977 () Bool)

(declare-fun e!1947157 () Bool)

(assert (=> b!3117977 (= e!1947157 e!1947154)))

(declare-fun c!522424 () Bool)

(assert (=> b!3117977 (= c!522424 ((_ is Star!9617) lt!1058565))))

(declare-fun b!3117978 () Bool)

(declare-fun e!1947155 () Bool)

(declare-fun e!1947159 () Bool)

(assert (=> b!3117978 (= e!1947155 e!1947159)))

(declare-fun res!1276068 () Bool)

(assert (=> b!3117978 (=> (not res!1276068) (not e!1947159))))

(assert (=> b!3117978 (= res!1276068 call!221402)))

(declare-fun b!3117979 () Bool)

(declare-fun call!221400 () Bool)

(assert (=> b!3117979 (= e!1947158 call!221400)))

(declare-fun b!3117980 () Bool)

(declare-fun call!221401 () Bool)

(assert (=> b!3117980 (= e!1947159 call!221401)))

(declare-fun b!3117981 () Bool)

(declare-fun e!1947160 () Bool)

(assert (=> b!3117981 (= e!1947160 call!221402)))

(declare-fun d!862280 () Bool)

(declare-fun res!1276067 () Bool)

(assert (=> d!862280 (=> res!1276067 e!1947157)))

(assert (=> d!862280 (= res!1276067 ((_ is ElementMatch!9617) lt!1058565))))

(assert (=> d!862280 (= (validRegex!4350 lt!1058565) e!1947157)))

(declare-fun b!3117975 () Bool)

(declare-fun res!1276069 () Bool)

(assert (=> b!3117975 (=> (not res!1276069) (not e!1947160))))

(assert (=> b!3117975 (= res!1276069 call!221401)))

(declare-fun e!1947156 () Bool)

(assert (=> b!3117975 (= e!1947156 e!1947160)))

(declare-fun bm!221396 () Bool)

(assert (=> bm!221396 (= call!221401 call!221400)))

(declare-fun b!3117982 () Bool)

(assert (=> b!3117982 (= e!1947154 e!1947156)))

(assert (=> b!3117982 (= c!522423 ((_ is Union!9617) lt!1058565))))

(declare-fun b!3117983 () Bool)

(declare-fun res!1276070 () Bool)

(assert (=> b!3117983 (=> res!1276070 e!1947155)))

(assert (=> b!3117983 (= res!1276070 (not ((_ is Concat!14938) lt!1058565)))))

(assert (=> b!3117983 (= e!1947156 e!1947155)))

(declare-fun bm!221397 () Bool)

(assert (=> bm!221397 (= call!221400 (validRegex!4350 (ite c!522424 (reg!9946 lt!1058565) (ite c!522423 (regOne!19747 lt!1058565) (regTwo!19746 lt!1058565)))))))

(assert (= (and d!862280 (not res!1276067)) b!3117977))

(assert (= (and b!3117977 c!522424) b!3117976))

(assert (= (and b!3117977 (not c!522424)) b!3117982))

(assert (= (and b!3117976 res!1276066) b!3117979))

(assert (= (and b!3117982 c!522423) b!3117975))

(assert (= (and b!3117982 (not c!522423)) b!3117983))

(assert (= (and b!3117975 res!1276069) b!3117981))

(assert (= (and b!3117983 (not res!1276070)) b!3117978))

(assert (= (and b!3117978 res!1276068) b!3117980))

(assert (= (or b!3117975 b!3117980) bm!221396))

(assert (= (or b!3117981 b!3117978) bm!221395))

(assert (= (or b!3117979 bm!221396) bm!221397))

(declare-fun m!3407147 () Bool)

(assert (=> bm!221395 m!3407147))

(declare-fun m!3407149 () Bool)

(assert (=> b!3117976 m!3407149))

(declare-fun m!3407151 () Bool)

(assert (=> bm!221397 m!3407151))

(assert (=> b!3117795 d!862280))

(declare-fun b!3118194 () Bool)

(assert (=> b!3118194 true))

(assert (=> b!3118194 true))

(declare-fun bs!535870 () Bool)

(declare-fun b!3118190 () Bool)

(assert (= bs!535870 (and b!3118190 b!3118194)))

(declare-fun lambda!115180 () Int)

(declare-fun lambda!115179 () Int)

(assert (=> bs!535870 (not (= lambda!115180 lambda!115179))))

(assert (=> b!3118190 true))

(assert (=> b!3118190 true))

(declare-fun b!3118188 () Bool)

(declare-fun e!1947269 () Bool)

(declare-fun call!221428 () Bool)

(assert (=> b!3118188 (= e!1947269 call!221428)))

(declare-fun b!3118189 () Bool)

(declare-fun e!1947263 () Bool)

(declare-fun e!1947267 () Bool)

(assert (=> b!3118189 (= e!1947263 e!1947267)))

(declare-fun c!522470 () Bool)

(assert (=> b!3118189 (= c!522470 ((_ is Star!9617) r!17423))))

(declare-fun call!221427 () Bool)

(assert (=> b!3118190 (= e!1947267 call!221427)))

(declare-fun d!862282 () Bool)

(declare-fun c!522472 () Bool)

(assert (=> d!862282 (= c!522472 ((_ is EmptyExpr!9617) r!17423))))

(assert (=> d!862282 (= (matchRSpec!1754 r!17423 s!11993) e!1947269)))

(declare-fun b!3118191 () Bool)

(declare-fun e!1947265 () Bool)

(assert (=> b!3118191 (= e!1947265 (matchRSpec!1754 (regTwo!19747 r!17423) s!11993))))

(declare-fun b!3118192 () Bool)

(declare-fun res!1276146 () Bool)

(declare-fun e!1947264 () Bool)

(assert (=> b!3118192 (=> res!1276146 e!1947264)))

(assert (=> b!3118192 (= res!1276146 call!221428)))

(assert (=> b!3118192 (= e!1947267 e!1947264)))

(declare-fun bm!221422 () Bool)

(declare-fun Exists!1870 (Int) Bool)

(assert (=> bm!221422 (= call!221427 (Exists!1870 (ite c!522470 lambda!115179 lambda!115180)))))

(declare-fun b!3118193 () Bool)

(assert (=> b!3118193 (= e!1947263 e!1947265)))

(declare-fun res!1276148 () Bool)

(assert (=> b!3118193 (= res!1276148 (matchRSpec!1754 (regOne!19747 r!17423) s!11993))))

(assert (=> b!3118193 (=> res!1276148 e!1947265)))

(assert (=> b!3118194 (= e!1947264 call!221427)))

(declare-fun b!3118195 () Bool)

(declare-fun c!522471 () Bool)

(assert (=> b!3118195 (= c!522471 ((_ is ElementMatch!9617) r!17423))))

(declare-fun e!1947268 () Bool)

(declare-fun e!1947266 () Bool)

(assert (=> b!3118195 (= e!1947268 e!1947266)))

(declare-fun bm!221423 () Bool)

(declare-fun isEmpty!19701 (List!35482) Bool)

(assert (=> bm!221423 (= call!221428 (isEmpty!19701 s!11993))))

(declare-fun b!3118196 () Bool)

(assert (=> b!3118196 (= e!1947269 e!1947268)))

(declare-fun res!1276147 () Bool)

(assert (=> b!3118196 (= res!1276147 (not ((_ is EmptyLang!9617) r!17423)))))

(assert (=> b!3118196 (=> (not res!1276147) (not e!1947268))))

(declare-fun b!3118197 () Bool)

(declare-fun c!522473 () Bool)

(assert (=> b!3118197 (= c!522473 ((_ is Union!9617) r!17423))))

(assert (=> b!3118197 (= e!1947266 e!1947263)))

(declare-fun b!3118198 () Bool)

(assert (=> b!3118198 (= e!1947266 (= s!11993 (Cons!35358 (c!522355 r!17423) Nil!35358)))))

(assert (= (and d!862282 c!522472) b!3118188))

(assert (= (and d!862282 (not c!522472)) b!3118196))

(assert (= (and b!3118196 res!1276147) b!3118195))

(assert (= (and b!3118195 c!522471) b!3118198))

(assert (= (and b!3118195 (not c!522471)) b!3118197))

(assert (= (and b!3118197 c!522473) b!3118193))

(assert (= (and b!3118197 (not c!522473)) b!3118189))

(assert (= (and b!3118193 (not res!1276148)) b!3118191))

(assert (= (and b!3118189 c!522470) b!3118192))

(assert (= (and b!3118189 (not c!522470)) b!3118190))

(assert (= (and b!3118192 (not res!1276146)) b!3118194))

(assert (= (or b!3118194 b!3118190) bm!221422))

(assert (= (or b!3118188 b!3118192) bm!221423))

(declare-fun m!3407205 () Bool)

(assert (=> b!3118191 m!3407205))

(declare-fun m!3407207 () Bool)

(assert (=> bm!221422 m!3407207))

(declare-fun m!3407209 () Bool)

(assert (=> b!3118193 m!3407209))

(declare-fun m!3407211 () Bool)

(assert (=> bm!221423 m!3407211))

(assert (=> b!3117789 d!862282))

(declare-fun bm!221426 () Bool)

(declare-fun call!221431 () Bool)

(assert (=> bm!221426 (= call!221431 (isEmpty!19701 s!11993))))

(declare-fun b!3118231 () Bool)

(declare-fun res!1276170 () Bool)

(declare-fun e!1947288 () Bool)

(assert (=> b!3118231 (=> res!1276170 e!1947288)))

(declare-fun tail!5135 (List!35482) List!35482)

(assert (=> b!3118231 (= res!1276170 (not (isEmpty!19701 (tail!5135 s!11993))))))

(declare-fun b!3118232 () Bool)

(declare-fun res!1276166 () Bool)

(declare-fun e!1947289 () Bool)

(assert (=> b!3118232 (=> (not res!1276166) (not e!1947289))))

(assert (=> b!3118232 (= res!1276166 (isEmpty!19701 (tail!5135 s!11993)))))

(declare-fun b!3118233 () Bool)

(declare-fun e!1947285 () Bool)

(declare-fun e!1947286 () Bool)

(assert (=> b!3118233 (= e!1947285 e!1947286)))

(declare-fun c!522481 () Bool)

(assert (=> b!3118233 (= c!522481 ((_ is EmptyLang!9617) r!17423))))

(declare-fun b!3118234 () Bool)

(declare-fun lt!1058614 () Bool)

(assert (=> b!3118234 (= e!1947286 (not lt!1058614))))

(declare-fun b!3118235 () Bool)

(declare-fun e!1947290 () Bool)

(assert (=> b!3118235 (= e!1947290 e!1947288)))

(declare-fun res!1276171 () Bool)

(assert (=> b!3118235 (=> res!1276171 e!1947288)))

(assert (=> b!3118235 (= res!1276171 call!221431)))

(declare-fun d!862294 () Bool)

(assert (=> d!862294 e!1947285))

(declare-fun c!522482 () Bool)

(assert (=> d!862294 (= c!522482 ((_ is EmptyExpr!9617) r!17423))))

(declare-fun e!1947287 () Bool)

(assert (=> d!862294 (= lt!1058614 e!1947287)))

(declare-fun c!522480 () Bool)

(assert (=> d!862294 (= c!522480 (isEmpty!19701 s!11993))))

(assert (=> d!862294 (validRegex!4350 r!17423)))

(assert (=> d!862294 (= (matchR!4499 r!17423 s!11993) lt!1058614)))

(declare-fun b!3118236 () Bool)

(assert (=> b!3118236 (= e!1947285 (= lt!1058614 call!221431))))

(declare-fun b!3118237 () Bool)

(assert (=> b!3118237 (= e!1947287 (nullable!3255 r!17423))))

(declare-fun b!3118238 () Bool)

(declare-fun derivativeStep!2850 (Regex!9617 C!19420) Regex!9617)

(declare-fun head!6909 (List!35482) C!19420)

(assert (=> b!3118238 (= e!1947287 (matchR!4499 (derivativeStep!2850 r!17423 (head!6909 s!11993)) (tail!5135 s!11993)))))

(declare-fun b!3118239 () Bool)

(declare-fun e!1947284 () Bool)

(assert (=> b!3118239 (= e!1947284 e!1947290)))

(declare-fun res!1276168 () Bool)

(assert (=> b!3118239 (=> (not res!1276168) (not e!1947290))))

(assert (=> b!3118239 (= res!1276168 (not lt!1058614))))

(declare-fun b!3118240 () Bool)

(declare-fun res!1276169 () Bool)

(assert (=> b!3118240 (=> res!1276169 e!1947284)))

(assert (=> b!3118240 (= res!1276169 (not ((_ is ElementMatch!9617) r!17423)))))

(assert (=> b!3118240 (= e!1947286 e!1947284)))

(declare-fun b!3118241 () Bool)

(assert (=> b!3118241 (= e!1947289 (= (head!6909 s!11993) (c!522355 r!17423)))))

(declare-fun b!3118242 () Bool)

(declare-fun res!1276167 () Bool)

(assert (=> b!3118242 (=> res!1276167 e!1947284)))

(assert (=> b!3118242 (= res!1276167 e!1947289)))

(declare-fun res!1276165 () Bool)

(assert (=> b!3118242 (=> (not res!1276165) (not e!1947289))))

(assert (=> b!3118242 (= res!1276165 lt!1058614)))

(declare-fun b!3118243 () Bool)

(assert (=> b!3118243 (= e!1947288 (not (= (head!6909 s!11993) (c!522355 r!17423))))))

(declare-fun b!3118244 () Bool)

(declare-fun res!1276172 () Bool)

(assert (=> b!3118244 (=> (not res!1276172) (not e!1947289))))

(assert (=> b!3118244 (= res!1276172 (not call!221431))))

(assert (= (and d!862294 c!522480) b!3118237))

(assert (= (and d!862294 (not c!522480)) b!3118238))

(assert (= (and d!862294 c!522482) b!3118236))

(assert (= (and d!862294 (not c!522482)) b!3118233))

(assert (= (and b!3118233 c!522481) b!3118234))

(assert (= (and b!3118233 (not c!522481)) b!3118240))

(assert (= (and b!3118240 (not res!1276169)) b!3118242))

(assert (= (and b!3118242 res!1276165) b!3118244))

(assert (= (and b!3118244 res!1276172) b!3118232))

(assert (= (and b!3118232 res!1276166) b!3118241))

(assert (= (and b!3118242 (not res!1276167)) b!3118239))

(assert (= (and b!3118239 res!1276168) b!3118235))

(assert (= (and b!3118235 (not res!1276171)) b!3118231))

(assert (= (and b!3118231 (not res!1276170)) b!3118243))

(assert (= (or b!3118236 b!3118235 b!3118244) bm!221426))

(declare-fun m!3407213 () Bool)

(assert (=> b!3118237 m!3407213))

(assert (=> bm!221426 m!3407211))

(assert (=> d!862294 m!3407211))

(assert (=> d!862294 m!3407115))

(declare-fun m!3407215 () Bool)

(assert (=> b!3118231 m!3407215))

(assert (=> b!3118231 m!3407215))

(declare-fun m!3407217 () Bool)

(assert (=> b!3118231 m!3407217))

(assert (=> b!3118232 m!3407215))

(assert (=> b!3118232 m!3407215))

(assert (=> b!3118232 m!3407217))

(declare-fun m!3407219 () Bool)

(assert (=> b!3118238 m!3407219))

(assert (=> b!3118238 m!3407219))

(declare-fun m!3407221 () Bool)

(assert (=> b!3118238 m!3407221))

(assert (=> b!3118238 m!3407215))

(assert (=> b!3118238 m!3407221))

(assert (=> b!3118238 m!3407215))

(declare-fun m!3407223 () Bool)

(assert (=> b!3118238 m!3407223))

(assert (=> b!3118241 m!3407219))

(assert (=> b!3118243 m!3407219))

(assert (=> b!3117789 d!862294))

(declare-fun d!862296 () Bool)

(assert (=> d!862296 (= (matchR!4499 r!17423 s!11993) (matchRSpec!1754 r!17423 s!11993))))

(declare-fun lt!1058617 () Unit!49673)

(declare-fun choose!18441 (Regex!9617 List!35482) Unit!49673)

(assert (=> d!862296 (= lt!1058617 (choose!18441 r!17423 s!11993))))

(assert (=> d!862296 (validRegex!4350 r!17423)))

(assert (=> d!862296 (= (mainMatchTheorem!1754 r!17423 s!11993) lt!1058617)))

(declare-fun bs!535871 () Bool)

(assert (= bs!535871 d!862296))

(assert (=> bs!535871 m!3407103))

(assert (=> bs!535871 m!3407101))

(declare-fun m!3407225 () Bool)

(assert (=> bs!535871 m!3407225))

(assert (=> bs!535871 m!3407115))

(assert (=> b!3117789 d!862296))

(declare-fun bm!221427 () Bool)

(declare-fun call!221432 () Bool)

(assert (=> bm!221427 (= call!221432 (isEmpty!19701 s!11993))))

(declare-fun b!3118245 () Bool)

(declare-fun res!1276178 () Bool)

(declare-fun e!1947295 () Bool)

(assert (=> b!3118245 (=> res!1276178 e!1947295)))

(assert (=> b!3118245 (= res!1276178 (not (isEmpty!19701 (tail!5135 s!11993))))))

(declare-fun b!3118246 () Bool)

(declare-fun res!1276174 () Bool)

(declare-fun e!1947296 () Bool)

(assert (=> b!3118246 (=> (not res!1276174) (not e!1947296))))

(assert (=> b!3118246 (= res!1276174 (isEmpty!19701 (tail!5135 s!11993)))))

(declare-fun b!3118247 () Bool)

(declare-fun e!1947292 () Bool)

(declare-fun e!1947293 () Bool)

(assert (=> b!3118247 (= e!1947292 e!1947293)))

(declare-fun c!522484 () Bool)

(assert (=> b!3118247 (= c!522484 ((_ is EmptyLang!9617) lt!1058565))))

(declare-fun b!3118248 () Bool)

(declare-fun lt!1058618 () Bool)

(assert (=> b!3118248 (= e!1947293 (not lt!1058618))))

(declare-fun b!3118249 () Bool)

(declare-fun e!1947297 () Bool)

(assert (=> b!3118249 (= e!1947297 e!1947295)))

(declare-fun res!1276179 () Bool)

(assert (=> b!3118249 (=> res!1276179 e!1947295)))

(assert (=> b!3118249 (= res!1276179 call!221432)))

(declare-fun d!862298 () Bool)

(assert (=> d!862298 e!1947292))

(declare-fun c!522485 () Bool)

(assert (=> d!862298 (= c!522485 ((_ is EmptyExpr!9617) lt!1058565))))

(declare-fun e!1947294 () Bool)

(assert (=> d!862298 (= lt!1058618 e!1947294)))

(declare-fun c!522483 () Bool)

(assert (=> d!862298 (= c!522483 (isEmpty!19701 s!11993))))

(assert (=> d!862298 (validRegex!4350 lt!1058565)))

(assert (=> d!862298 (= (matchR!4499 lt!1058565 s!11993) lt!1058618)))

(declare-fun b!3118250 () Bool)

(assert (=> b!3118250 (= e!1947292 (= lt!1058618 call!221432))))

(declare-fun b!3118251 () Bool)

(assert (=> b!3118251 (= e!1947294 (nullable!3255 lt!1058565))))

(declare-fun b!3118252 () Bool)

(assert (=> b!3118252 (= e!1947294 (matchR!4499 (derivativeStep!2850 lt!1058565 (head!6909 s!11993)) (tail!5135 s!11993)))))

(declare-fun b!3118253 () Bool)

(declare-fun e!1947291 () Bool)

(assert (=> b!3118253 (= e!1947291 e!1947297)))

(declare-fun res!1276176 () Bool)

(assert (=> b!3118253 (=> (not res!1276176) (not e!1947297))))

(assert (=> b!3118253 (= res!1276176 (not lt!1058618))))

(declare-fun b!3118254 () Bool)

(declare-fun res!1276177 () Bool)

(assert (=> b!3118254 (=> res!1276177 e!1947291)))

(assert (=> b!3118254 (= res!1276177 (not ((_ is ElementMatch!9617) lt!1058565)))))

(assert (=> b!3118254 (= e!1947293 e!1947291)))

(declare-fun b!3118255 () Bool)

(assert (=> b!3118255 (= e!1947296 (= (head!6909 s!11993) (c!522355 lt!1058565)))))

(declare-fun b!3118256 () Bool)

(declare-fun res!1276175 () Bool)

(assert (=> b!3118256 (=> res!1276175 e!1947291)))

(assert (=> b!3118256 (= res!1276175 e!1947296)))

(declare-fun res!1276173 () Bool)

(assert (=> b!3118256 (=> (not res!1276173) (not e!1947296))))

(assert (=> b!3118256 (= res!1276173 lt!1058618)))

(declare-fun b!3118257 () Bool)

(assert (=> b!3118257 (= e!1947295 (not (= (head!6909 s!11993) (c!522355 lt!1058565))))))

(declare-fun b!3118258 () Bool)

(declare-fun res!1276180 () Bool)

(assert (=> b!3118258 (=> (not res!1276180) (not e!1947296))))

(assert (=> b!3118258 (= res!1276180 (not call!221432))))

(assert (= (and d!862298 c!522483) b!3118251))

(assert (= (and d!862298 (not c!522483)) b!3118252))

(assert (= (and d!862298 c!522485) b!3118250))

(assert (= (and d!862298 (not c!522485)) b!3118247))

(assert (= (and b!3118247 c!522484) b!3118248))

(assert (= (and b!3118247 (not c!522484)) b!3118254))

(assert (= (and b!3118254 (not res!1276177)) b!3118256))

(assert (= (and b!3118256 res!1276173) b!3118258))

(assert (= (and b!3118258 res!1276180) b!3118246))

(assert (= (and b!3118246 res!1276174) b!3118255))

(assert (= (and b!3118256 (not res!1276175)) b!3118253))

(assert (= (and b!3118253 res!1276176) b!3118249))

(assert (= (and b!3118249 (not res!1276179)) b!3118245))

(assert (= (and b!3118245 (not res!1276178)) b!3118257))

(assert (= (or b!3118250 b!3118249 b!3118258) bm!221427))

(declare-fun m!3407227 () Bool)

(assert (=> b!3118251 m!3407227))

(assert (=> bm!221427 m!3407211))

(assert (=> d!862298 m!3407211))

(assert (=> d!862298 m!3407111))

(assert (=> b!3118245 m!3407215))

(assert (=> b!3118245 m!3407215))

(assert (=> b!3118245 m!3407217))

(assert (=> b!3118246 m!3407215))

(assert (=> b!3118246 m!3407215))

(assert (=> b!3118246 m!3407217))

(assert (=> b!3118252 m!3407219))

(assert (=> b!3118252 m!3407219))

(declare-fun m!3407229 () Bool)

(assert (=> b!3118252 m!3407229))

(assert (=> b!3118252 m!3407215))

(assert (=> b!3118252 m!3407229))

(assert (=> b!3118252 m!3407215))

(declare-fun m!3407231 () Bool)

(assert (=> b!3118252 m!3407231))

(assert (=> b!3118255 m!3407219))

(assert (=> b!3118257 m!3407219))

(assert (=> b!3117791 d!862298))

(declare-fun b!3118263 () Bool)

(declare-fun e!1947300 () Bool)

(declare-fun tp!977606 () Bool)

(assert (=> b!3118263 (= e!1947300 (and tp_is_empty!16797 tp!977606))))

(assert (=> b!3117788 (= tp!977563 e!1947300)))

(assert (= (and b!3117788 ((_ is Cons!35358) (t!234547 s!11993))) b!3118263))

(declare-fun b!3118274 () Bool)

(declare-fun e!1947303 () Bool)

(assert (=> b!3118274 (= e!1947303 tp_is_empty!16797)))

(declare-fun b!3118276 () Bool)

(declare-fun tp!977620 () Bool)

(assert (=> b!3118276 (= e!1947303 tp!977620)))

(declare-fun b!3118277 () Bool)

(declare-fun tp!977619 () Bool)

(declare-fun tp!977618 () Bool)

(assert (=> b!3118277 (= e!1947303 (and tp!977619 tp!977618))))

(declare-fun b!3118275 () Bool)

(declare-fun tp!977621 () Bool)

(declare-fun tp!977617 () Bool)

(assert (=> b!3118275 (= e!1947303 (and tp!977621 tp!977617))))

(assert (=> b!3117793 (= tp!977565 e!1947303)))

(assert (= (and b!3117793 ((_ is ElementMatch!9617) (regOne!19747 r!17423))) b!3118274))

(assert (= (and b!3117793 ((_ is Concat!14938) (regOne!19747 r!17423))) b!3118275))

(assert (= (and b!3117793 ((_ is Star!9617) (regOne!19747 r!17423))) b!3118276))

(assert (= (and b!3117793 ((_ is Union!9617) (regOne!19747 r!17423))) b!3118277))

(declare-fun b!3118278 () Bool)

(declare-fun e!1947304 () Bool)

(assert (=> b!3118278 (= e!1947304 tp_is_empty!16797)))

(declare-fun b!3118280 () Bool)

(declare-fun tp!977625 () Bool)

(assert (=> b!3118280 (= e!1947304 tp!977625)))

(declare-fun b!3118281 () Bool)

(declare-fun tp!977624 () Bool)

(declare-fun tp!977623 () Bool)

(assert (=> b!3118281 (= e!1947304 (and tp!977624 tp!977623))))

(declare-fun b!3118279 () Bool)

(declare-fun tp!977626 () Bool)

(declare-fun tp!977622 () Bool)

(assert (=> b!3118279 (= e!1947304 (and tp!977626 tp!977622))))

(assert (=> b!3117793 (= tp!977562 e!1947304)))

(assert (= (and b!3117793 ((_ is ElementMatch!9617) (regTwo!19747 r!17423))) b!3118278))

(assert (= (and b!3117793 ((_ is Concat!14938) (regTwo!19747 r!17423))) b!3118279))

(assert (= (and b!3117793 ((_ is Star!9617) (regTwo!19747 r!17423))) b!3118280))

(assert (= (and b!3117793 ((_ is Union!9617) (regTwo!19747 r!17423))) b!3118281))

(declare-fun b!3118282 () Bool)

(declare-fun e!1947305 () Bool)

(assert (=> b!3118282 (= e!1947305 tp_is_empty!16797)))

(declare-fun b!3118284 () Bool)

(declare-fun tp!977630 () Bool)

(assert (=> b!3118284 (= e!1947305 tp!977630)))

(declare-fun b!3118285 () Bool)

(declare-fun tp!977629 () Bool)

(declare-fun tp!977628 () Bool)

(assert (=> b!3118285 (= e!1947305 (and tp!977629 tp!977628))))

(declare-fun b!3118283 () Bool)

(declare-fun tp!977631 () Bool)

(declare-fun tp!977627 () Bool)

(assert (=> b!3118283 (= e!1947305 (and tp!977631 tp!977627))))

(assert (=> b!3117794 (= tp!977564 e!1947305)))

(assert (= (and b!3117794 ((_ is ElementMatch!9617) (reg!9946 r!17423))) b!3118282))

(assert (= (and b!3117794 ((_ is Concat!14938) (reg!9946 r!17423))) b!3118283))

(assert (= (and b!3117794 ((_ is Star!9617) (reg!9946 r!17423))) b!3118284))

(assert (= (and b!3117794 ((_ is Union!9617) (reg!9946 r!17423))) b!3118285))

(declare-fun b!3118286 () Bool)

(declare-fun e!1947306 () Bool)

(assert (=> b!3118286 (= e!1947306 tp_is_empty!16797)))

(declare-fun b!3118288 () Bool)

(declare-fun tp!977635 () Bool)

(assert (=> b!3118288 (= e!1947306 tp!977635)))

(declare-fun b!3118289 () Bool)

(declare-fun tp!977634 () Bool)

(declare-fun tp!977633 () Bool)

(assert (=> b!3118289 (= e!1947306 (and tp!977634 tp!977633))))

(declare-fun b!3118287 () Bool)

(declare-fun tp!977636 () Bool)

(declare-fun tp!977632 () Bool)

(assert (=> b!3118287 (= e!1947306 (and tp!977636 tp!977632))))

(assert (=> b!3117790 (= tp!977561 e!1947306)))

(assert (= (and b!3117790 ((_ is ElementMatch!9617) (regOne!19746 r!17423))) b!3118286))

(assert (= (and b!3117790 ((_ is Concat!14938) (regOne!19746 r!17423))) b!3118287))

(assert (= (and b!3117790 ((_ is Star!9617) (regOne!19746 r!17423))) b!3118288))

(assert (= (and b!3117790 ((_ is Union!9617) (regOne!19746 r!17423))) b!3118289))

(declare-fun b!3118290 () Bool)

(declare-fun e!1947307 () Bool)

(assert (=> b!3118290 (= e!1947307 tp_is_empty!16797)))

(declare-fun b!3118292 () Bool)

(declare-fun tp!977640 () Bool)

(assert (=> b!3118292 (= e!1947307 tp!977640)))

(declare-fun b!3118293 () Bool)

(declare-fun tp!977639 () Bool)

(declare-fun tp!977638 () Bool)

(assert (=> b!3118293 (= e!1947307 (and tp!977639 tp!977638))))

(declare-fun b!3118291 () Bool)

(declare-fun tp!977641 () Bool)

(declare-fun tp!977637 () Bool)

(assert (=> b!3118291 (= e!1947307 (and tp!977641 tp!977637))))

(assert (=> b!3117790 (= tp!977560 e!1947307)))

(assert (= (and b!3117790 ((_ is ElementMatch!9617) (regTwo!19746 r!17423))) b!3118290))

(assert (= (and b!3117790 ((_ is Concat!14938) (regTwo!19746 r!17423))) b!3118291))

(assert (= (and b!3117790 ((_ is Star!9617) (regTwo!19746 r!17423))) b!3118292))

(assert (= (and b!3117790 ((_ is Union!9617) (regTwo!19746 r!17423))) b!3118293))

(check-sat (not b!3118285) (not b!3118275) (not b!3118243) (not bm!221422) (not b!3118252) (not b!3118245) (not bm!221427) (not b!3118246) (not b!3118291) (not b!3118292) (not b!3118289) (not b!3118276) (not b!3117945) (not b!3118238) (not b!3118251) (not b!3118191) (not bm!221381) (not b!3118263) (not b!3117967) (not bm!221383) (not b!3118287) (not b!3118288) tp_is_empty!16797 (not b!3118237) (not b!3118255) (not bm!221392) (not b!3118193) (not b!3118281) (not b!3118231) (not b!3117976) (not bm!221380) (not d!862296) (not b!3118280) (not b!3118232) (not bm!221423) (not b!3118283) (not b!3118241) (not d!862270) (not b!3118293) (not bm!221378) (not d!862298) (not bm!221397) (not b!3117941) (not d!862294) (not bm!221426) (not b!3118277) (not b!3118279) (not bm!221382) (not b!3118284) (not b!3118257) (not bm!221395) (not bm!221394))
(check-sat)
