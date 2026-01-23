; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!280164 () Bool)

(assert start!280164)

(declare-fun b!2870050 () Bool)

(declare-fun e!1816611 () Bool)

(declare-fun e!1816612 () Bool)

(assert (=> b!2870050 (= e!1816611 (not e!1816612))))

(declare-fun res!1190949 () Bool)

(assert (=> b!2870050 (=> res!1190949 e!1816612)))

(declare-datatypes ((C!17648 0))(
  ( (C!17649 (val!10858 Int)) )
))
(declare-datatypes ((Regex!8733 0))(
  ( (ElementMatch!8733 (c!464070 C!17648)) (Concat!14054 (regOne!17978 Regex!8733) (regTwo!17978 Regex!8733)) (EmptyExpr!8733) (Star!8733 (reg!9062 Regex!8733)) (EmptyLang!8733) (Union!8733 (regOne!17979 Regex!8733) (regTwo!17979 Regex!8733)) )
))
(declare-datatypes ((List!34493 0))(
  ( (Nil!34369) (Cons!34369 (h!39789 Regex!8733) (t!233536 List!34493)) )
))
(declare-datatypes ((Context!5386 0))(
  ( (Context!5387 (exprs!3193 List!34493)) )
))
(declare-fun lt!1017765 () Context!5386)

(declare-fun lostCause!825 (Context!5386) Bool)

(assert (=> b!2870050 (= res!1190949 (lostCause!825 lt!1017765))))

(declare-fun c!7184 () Context!5386)

(declare-datatypes ((List!34494 0))(
  ( (Nil!34370) (Cons!34370 (h!39790 C!17648) (t!233537 List!34494)) )
))
(declare-datatypes ((Option!6408 0))(
  ( (None!6407) (Some!6407 (v!34529 List!34494)) )
))
(declare-fun lt!1017763 () Option!6408)

(declare-fun matchR!3733 (Regex!8733 List!34494) Bool)

(declare-fun get!10326 (Option!6408) List!34494)

(assert (=> b!2870050 (matchR!3733 (h!39789 (exprs!3193 c!7184)) (get!10326 lt!1017763))))

(declare-datatypes ((Unit!47967 0))(
  ( (Unit!47968) )
))
(declare-fun lt!1017764 () Unit!47967)

(declare-fun lemmaGetWitnessMatches!40 (Regex!8733) Unit!47967)

(assert (=> b!2870050 (= lt!1017764 (lemmaGetWitnessMatches!40 (h!39789 (exprs!3193 c!7184))))))

(declare-fun b!2870051 () Bool)

(declare-fun e!1816613 () Bool)

(declare-fun e!1816610 () Bool)

(assert (=> b!2870051 (= e!1816613 e!1816610)))

(declare-fun res!1190947 () Bool)

(assert (=> b!2870051 (=> (not res!1190947) (not e!1816610))))

(get-info :version)

(assert (=> b!2870051 (= res!1190947 ((_ is Some!6407) lt!1017763))))

(declare-fun getLanguageWitness!417 (Regex!8733) Option!6408)

(assert (=> b!2870051 (= lt!1017763 (getLanguageWitness!417 (h!39789 (exprs!3193 c!7184))))))

(declare-fun res!1190950 () Bool)

(assert (=> start!280164 (=> (not res!1190950) (not e!1816613))))

(assert (=> start!280164 (= res!1190950 (not (lostCause!825 c!7184)))))

(assert (=> start!280164 e!1816613))

(declare-fun e!1816609 () Bool)

(declare-fun inv!46419 (Context!5386) Bool)

(assert (=> start!280164 (and (inv!46419 c!7184) e!1816609)))

(declare-fun b!2870052 () Bool)

(declare-fun tp!923336 () Bool)

(assert (=> b!2870052 (= e!1816609 tp!923336)))

(declare-fun b!2870053 () Bool)

(declare-fun size!26318 (List!34493) Int)

(assert (=> b!2870053 (= e!1816612 (< (size!26318 (t!233536 (exprs!3193 c!7184))) (size!26318 (exprs!3193 c!7184))))))

(declare-fun b!2870054 () Bool)

(declare-fun res!1190948 () Bool)

(assert (=> b!2870054 (=> (not res!1190948) (not e!1816613))))

(assert (=> b!2870054 (= res!1190948 ((_ is Cons!34369) (exprs!3193 c!7184)))))

(declare-fun b!2870055 () Bool)

(assert (=> b!2870055 (= e!1816610 e!1816611)))

(declare-fun res!1190951 () Bool)

(assert (=> b!2870055 (=> (not res!1190951) (not e!1816611))))

(declare-fun getLanguageWitness!418 (Context!5386) Option!6408)

(assert (=> b!2870055 (= res!1190951 ((_ is Some!6407) (getLanguageWitness!418 lt!1017765)))))

(assert (=> b!2870055 (= lt!1017765 (Context!5387 (t!233536 (exprs!3193 c!7184))))))

(assert (= (and start!280164 res!1190950) b!2870054))

(assert (= (and b!2870054 res!1190948) b!2870051))

(assert (= (and b!2870051 res!1190947) b!2870055))

(assert (= (and b!2870055 res!1190951) b!2870050))

(assert (= (and b!2870050 (not res!1190949)) b!2870053))

(assert (= start!280164 b!2870052))

(declare-fun m!3288923 () Bool)

(assert (=> b!2870050 m!3288923))

(declare-fun m!3288925 () Bool)

(assert (=> b!2870050 m!3288925))

(assert (=> b!2870050 m!3288925))

(declare-fun m!3288927 () Bool)

(assert (=> b!2870050 m!3288927))

(declare-fun m!3288929 () Bool)

(assert (=> b!2870050 m!3288929))

(declare-fun m!3288931 () Bool)

(assert (=> b!2870051 m!3288931))

(declare-fun m!3288933 () Bool)

(assert (=> start!280164 m!3288933))

(declare-fun m!3288935 () Bool)

(assert (=> start!280164 m!3288935))

(declare-fun m!3288937 () Bool)

(assert (=> b!2870053 m!3288937))

(declare-fun m!3288939 () Bool)

(assert (=> b!2870053 m!3288939))

(declare-fun m!3288941 () Bool)

(assert (=> b!2870055 m!3288941))

(check-sat (not b!2870050) (not b!2870051) (not b!2870052) (not b!2870055) (not start!280164) (not b!2870053))
(check-sat)
(get-model)

(declare-fun b!2870120 () Bool)

(declare-fun c!464110 () Bool)

(assert (=> b!2870120 (= c!464110 ((_ is Union!8733) (h!39789 (exprs!3193 c!7184))))))

(declare-fun e!1816648 () Option!6408)

(declare-fun e!1816650 () Option!6408)

(assert (=> b!2870120 (= e!1816648 e!1816650)))

(declare-fun d!829438 () Bool)

(declare-fun c!464104 () Bool)

(assert (=> d!829438 (= c!464104 ((_ is EmptyExpr!8733) (h!39789 (exprs!3193 c!7184))))))

(declare-fun e!1816649 () Option!6408)

(assert (=> d!829438 (= (getLanguageWitness!417 (h!39789 (exprs!3193 c!7184))) e!1816649)))

(declare-fun b!2870121 () Bool)

(assert (=> b!2870121 (= e!1816649 (Some!6407 Nil!34370))))

(declare-fun b!2870122 () Bool)

(declare-fun e!1816651 () Option!6408)

(assert (=> b!2870122 (= e!1816650 e!1816651)))

(declare-fun lt!1017779 () Option!6408)

(declare-fun call!185288 () Option!6408)

(assert (=> b!2870122 (= lt!1017779 call!185288)))

(declare-fun c!464106 () Bool)

(assert (=> b!2870122 (= c!464106 ((_ is Some!6407) lt!1017779))))

(declare-fun bm!185282 () Bool)

(assert (=> bm!185282 (= call!185288 (getLanguageWitness!417 (ite c!464110 (regOne!17979 (h!39789 (exprs!3193 c!7184))) (regOne!17978 (h!39789 (exprs!3193 c!7184))))))))

(declare-fun b!2870123 () Bool)

(declare-fun e!1816653 () Option!6408)

(assert (=> b!2870123 (= e!1816653 (Some!6407 (Cons!34370 (c!464070 (h!39789 (exprs!3193 c!7184))) Nil!34370)))))

(declare-fun b!2870124 () Bool)

(declare-fun e!1816646 () Option!6408)

(assert (=> b!2870124 (= e!1816646 None!6407)))

(declare-fun b!2870125 () Bool)

(declare-fun e!1816647 () Option!6408)

(declare-fun lt!1017780 () Option!6408)

(declare-fun lt!1017778 () Option!6408)

(declare-fun ++!8170 (List!34494 List!34494) List!34494)

(assert (=> b!2870125 (= e!1816647 (Some!6407 (++!8170 (v!34529 lt!1017780) (v!34529 lt!1017778))))))

(declare-fun b!2870126 () Bool)

(assert (=> b!2870126 (= e!1816649 e!1816646)))

(declare-fun c!464109 () Bool)

(assert (=> b!2870126 (= c!464109 ((_ is EmptyLang!8733) (h!39789 (exprs!3193 c!7184))))))

(declare-fun b!2870127 () Bool)

(assert (=> b!2870127 (= e!1816653 e!1816648)))

(declare-fun c!464108 () Bool)

(assert (=> b!2870127 (= c!464108 ((_ is Star!8733) (h!39789 (exprs!3193 c!7184))))))

(declare-fun b!2870128 () Bool)

(assert (=> b!2870128 (= e!1816647 None!6407)))

(declare-fun bm!185283 () Bool)

(declare-fun call!185287 () Option!6408)

(assert (=> bm!185283 (= call!185287 (getLanguageWitness!417 (ite c!464110 (regTwo!17979 (h!39789 (exprs!3193 c!7184))) (regTwo!17978 (h!39789 (exprs!3193 c!7184))))))))

(declare-fun b!2870129 () Bool)

(declare-fun e!1816652 () Option!6408)

(assert (=> b!2870129 (= e!1816652 None!6407)))

(declare-fun b!2870130 () Bool)

(declare-fun c!464105 () Bool)

(assert (=> b!2870130 (= c!464105 ((_ is ElementMatch!8733) (h!39789 (exprs!3193 c!7184))))))

(assert (=> b!2870130 (= e!1816646 e!1816653)))

(declare-fun b!2870131 () Bool)

(assert (=> b!2870131 (= e!1816648 (Some!6407 Nil!34370))))

(declare-fun b!2870132 () Bool)

(assert (=> b!2870132 (= e!1816651 lt!1017779)))

(declare-fun b!2870133 () Bool)

(assert (=> b!2870133 (= e!1816651 call!185287)))

(declare-fun b!2870134 () Bool)

(declare-fun c!464107 () Bool)

(assert (=> b!2870134 (= c!464107 ((_ is Some!6407) lt!1017778))))

(assert (=> b!2870134 (= lt!1017778 call!185287)))

(assert (=> b!2870134 (= e!1816652 e!1816647)))

(declare-fun b!2870135 () Bool)

(assert (=> b!2870135 (= e!1816650 e!1816652)))

(assert (=> b!2870135 (= lt!1017780 call!185288)))

(declare-fun c!464103 () Bool)

(assert (=> b!2870135 (= c!464103 ((_ is Some!6407) lt!1017780))))

(assert (= (and d!829438 c!464104) b!2870121))

(assert (= (and d!829438 (not c!464104)) b!2870126))

(assert (= (and b!2870126 c!464109) b!2870124))

(assert (= (and b!2870126 (not c!464109)) b!2870130))

(assert (= (and b!2870130 c!464105) b!2870123))

(assert (= (and b!2870130 (not c!464105)) b!2870127))

(assert (= (and b!2870127 c!464108) b!2870131))

(assert (= (and b!2870127 (not c!464108)) b!2870120))

(assert (= (and b!2870120 c!464110) b!2870122))

(assert (= (and b!2870120 (not c!464110)) b!2870135))

(assert (= (and b!2870122 c!464106) b!2870132))

(assert (= (and b!2870122 (not c!464106)) b!2870133))

(assert (= (and b!2870135 c!464103) b!2870134))

(assert (= (and b!2870135 (not c!464103)) b!2870129))

(assert (= (and b!2870134 c!464107) b!2870125))

(assert (= (and b!2870134 (not c!464107)) b!2870128))

(assert (= (or b!2870133 b!2870134) bm!185283))

(assert (= (or b!2870122 b!2870135) bm!185282))

(declare-fun m!3288943 () Bool)

(assert (=> bm!185282 m!3288943))

(declare-fun m!3288945 () Bool)

(assert (=> b!2870125 m!3288945))

(declare-fun m!3288947 () Bool)

(assert (=> bm!185283 m!3288947))

(assert (=> b!2870051 d!829438))

(declare-fun d!829442 () Bool)

(declare-fun lt!1017783 () Int)

(assert (=> d!829442 (>= lt!1017783 0)))

(declare-fun e!1816656 () Int)

(assert (=> d!829442 (= lt!1017783 e!1816656)))

(declare-fun c!464113 () Bool)

(assert (=> d!829442 (= c!464113 ((_ is Nil!34369) (t!233536 (exprs!3193 c!7184))))))

(assert (=> d!829442 (= (size!26318 (t!233536 (exprs!3193 c!7184))) lt!1017783)))

(declare-fun b!2870140 () Bool)

(assert (=> b!2870140 (= e!1816656 0)))

(declare-fun b!2870141 () Bool)

(assert (=> b!2870141 (= e!1816656 (+ 1 (size!26318 (t!233536 (t!233536 (exprs!3193 c!7184))))))))

(assert (= (and d!829442 c!464113) b!2870140))

(assert (= (and d!829442 (not c!464113)) b!2870141))

(declare-fun m!3288949 () Bool)

(assert (=> b!2870141 m!3288949))

(assert (=> b!2870053 d!829442))

(declare-fun d!829444 () Bool)

(declare-fun lt!1017784 () Int)

(assert (=> d!829444 (>= lt!1017784 0)))

(declare-fun e!1816657 () Int)

(assert (=> d!829444 (= lt!1017784 e!1816657)))

(declare-fun c!464114 () Bool)

(assert (=> d!829444 (= c!464114 ((_ is Nil!34369) (exprs!3193 c!7184)))))

(assert (=> d!829444 (= (size!26318 (exprs!3193 c!7184)) lt!1017784)))

(declare-fun b!2870142 () Bool)

(assert (=> b!2870142 (= e!1816657 0)))

(declare-fun b!2870143 () Bool)

(assert (=> b!2870143 (= e!1816657 (+ 1 (size!26318 (t!233536 (exprs!3193 c!7184)))))))

(assert (= (and d!829444 c!464114) b!2870142))

(assert (= (and d!829444 (not c!464114)) b!2870143))

(assert (=> b!2870143 m!3288937))

(assert (=> b!2870053 d!829444))

(declare-fun d!829446 () Bool)

(declare-fun lambda!107044 () Int)

(declare-fun exists!1152 (List!34493 Int) Bool)

(assert (=> d!829446 (= (lostCause!825 c!7184) (exists!1152 (exprs!3193 c!7184) lambda!107044))))

(declare-fun bs!521966 () Bool)

(assert (= bs!521966 d!829446))

(declare-fun m!3288963 () Bool)

(assert (=> bs!521966 m!3288963))

(assert (=> start!280164 d!829446))

(declare-fun bs!521967 () Bool)

(declare-fun d!829456 () Bool)

(assert (= bs!521967 (and d!829456 d!829446)))

(declare-fun lambda!107047 () Int)

(assert (=> bs!521967 (not (= lambda!107047 lambda!107044))))

(declare-fun forall!7078 (List!34493 Int) Bool)

(assert (=> d!829456 (= (inv!46419 c!7184) (forall!7078 (exprs!3193 c!7184) lambda!107047))))

(declare-fun bs!521968 () Bool)

(assert (= bs!521968 d!829456))

(declare-fun m!3288965 () Bool)

(assert (=> bs!521968 m!3288965))

(assert (=> start!280164 d!829456))

(declare-fun bs!521969 () Bool)

(declare-fun d!829458 () Bool)

(assert (= bs!521969 (and d!829458 d!829446)))

(declare-fun lambda!107050 () Int)

(assert (=> bs!521969 (= lambda!107050 lambda!107044)))

(declare-fun bs!521970 () Bool)

(assert (= bs!521970 (and d!829458 d!829456)))

(assert (=> bs!521970 (not (= lambda!107050 lambda!107047))))

(declare-fun b!2870214 () Bool)

(declare-fun e!1816694 () Option!6408)

(assert (=> b!2870214 (= e!1816694 None!6407)))

(declare-fun b!2870215 () Bool)

(declare-fun lt!1017799 () Option!6408)

(declare-fun lt!1017800 () Option!6408)

(assert (=> b!2870215 (= e!1816694 (Some!6407 (++!8170 (v!34529 lt!1017799) (v!34529 lt!1017800))))))

(declare-fun b!2870216 () Bool)

(declare-fun e!1816693 () Option!6408)

(assert (=> b!2870216 (= e!1816693 None!6407)))

(declare-fun b!2870217 () Bool)

(declare-fun c!464141 () Bool)

(assert (=> b!2870217 (= c!464141 ((_ is Some!6407) lt!1017800))))

(assert (=> b!2870217 (= lt!1017800 (getLanguageWitness!418 (Context!5387 (t!233536 (exprs!3193 lt!1017765)))))))

(assert (=> b!2870217 (= e!1816693 e!1816694)))

(declare-fun b!2870218 () Bool)

(declare-fun e!1816695 () Option!6408)

(assert (=> b!2870218 (= e!1816695 e!1816693)))

(assert (=> b!2870218 (= lt!1017799 (getLanguageWitness!417 (h!39789 (exprs!3193 lt!1017765))))))

(declare-fun c!464139 () Bool)

(assert (=> b!2870218 (= c!464139 ((_ is Some!6407) lt!1017799))))

(declare-fun lt!1017801 () Option!6408)

(declare-fun isEmpty!18707 (Option!6408) Bool)

(assert (=> d!829458 (= (isEmpty!18707 lt!1017801) (exists!1152 (exprs!3193 lt!1017765) lambda!107050))))

(assert (=> d!829458 (= lt!1017801 e!1816695)))

(declare-fun c!464140 () Bool)

(assert (=> d!829458 (= c!464140 ((_ is Cons!34369) (exprs!3193 lt!1017765)))))

(assert (=> d!829458 (= (getLanguageWitness!418 lt!1017765) lt!1017801)))

(declare-fun b!2870219 () Bool)

(assert (=> b!2870219 (= e!1816695 (Some!6407 Nil!34370))))

(assert (= (and d!829458 c!464140) b!2870218))

(assert (= (and d!829458 (not c!464140)) b!2870219))

(assert (= (and b!2870218 c!464139) b!2870217))

(assert (= (and b!2870218 (not c!464139)) b!2870216))

(assert (= (and b!2870217 c!464141) b!2870215))

(assert (= (and b!2870217 (not c!464141)) b!2870214))

(declare-fun m!3288989 () Bool)

(assert (=> b!2870215 m!3288989))

(declare-fun m!3288991 () Bool)

(assert (=> b!2870217 m!3288991))

(declare-fun m!3288993 () Bool)

(assert (=> b!2870218 m!3288993))

(declare-fun m!3288995 () Bool)

(assert (=> d!829458 m!3288995))

(declare-fun m!3288997 () Bool)

(assert (=> d!829458 m!3288997))

(assert (=> b!2870055 d!829458))

(declare-fun bs!521972 () Bool)

(declare-fun d!829466 () Bool)

(assert (= bs!521972 (and d!829466 d!829446)))

(declare-fun lambda!107051 () Int)

(assert (=> bs!521972 (= lambda!107051 lambda!107044)))

(declare-fun bs!521973 () Bool)

(assert (= bs!521973 (and d!829466 d!829456)))

(assert (=> bs!521973 (not (= lambda!107051 lambda!107047))))

(declare-fun bs!521974 () Bool)

(assert (= bs!521974 (and d!829466 d!829458)))

(assert (=> bs!521974 (= lambda!107051 lambda!107050)))

(assert (=> d!829466 (= (lostCause!825 lt!1017765) (exists!1152 (exprs!3193 lt!1017765) lambda!107051))))

(declare-fun bs!521975 () Bool)

(assert (= bs!521975 d!829466))

(declare-fun m!3288999 () Bool)

(assert (=> bs!521975 m!3288999))

(assert (=> b!2870050 d!829466))

(declare-fun b!2870279 () Bool)

(declare-fun e!1816730 () Bool)

(declare-fun derivativeStep!2316 (Regex!8733 C!17648) Regex!8733)

(declare-fun head!6338 (List!34494) C!17648)

(declare-fun tail!4563 (List!34494) List!34494)

(assert (=> b!2870279 (= e!1816730 (matchR!3733 (derivativeStep!2316 (h!39789 (exprs!3193 c!7184)) (head!6338 (get!10326 lt!1017763))) (tail!4563 (get!10326 lt!1017763))))))

(declare-fun d!829468 () Bool)

(declare-fun e!1816728 () Bool)

(assert (=> d!829468 e!1816728))

(declare-fun c!464164 () Bool)

(assert (=> d!829468 (= c!464164 ((_ is EmptyExpr!8733) (h!39789 (exprs!3193 c!7184))))))

(declare-fun lt!1017818 () Bool)

(assert (=> d!829468 (= lt!1017818 e!1816730)))

(declare-fun c!464163 () Bool)

(declare-fun isEmpty!18708 (List!34494) Bool)

(assert (=> d!829468 (= c!464163 (isEmpty!18708 (get!10326 lt!1017763)))))

(declare-fun validRegex!3511 (Regex!8733) Bool)

(assert (=> d!829468 (validRegex!3511 (h!39789 (exprs!3193 c!7184)))))

(assert (=> d!829468 (= (matchR!3733 (h!39789 (exprs!3193 c!7184)) (get!10326 lt!1017763)) lt!1017818)))

(declare-fun bm!185291 () Bool)

(declare-fun call!185296 () Bool)

(assert (=> bm!185291 (= call!185296 (isEmpty!18708 (get!10326 lt!1017763)))))

(declare-fun b!2870280 () Bool)

(declare-fun res!1190992 () Bool)

(declare-fun e!1816727 () Bool)

(assert (=> b!2870280 (=> (not res!1190992) (not e!1816727))))

(assert (=> b!2870280 (= res!1190992 (isEmpty!18708 (tail!4563 (get!10326 lt!1017763))))))

(declare-fun b!2870281 () Bool)

(declare-fun e!1816729 () Bool)

(declare-fun e!1816732 () Bool)

(assert (=> b!2870281 (= e!1816729 e!1816732)))

(declare-fun res!1190999 () Bool)

(assert (=> b!2870281 (=> res!1190999 e!1816732)))

(assert (=> b!2870281 (= res!1190999 call!185296)))

(declare-fun b!2870282 () Bool)

(assert (=> b!2870282 (= e!1816728 (= lt!1017818 call!185296))))

(declare-fun b!2870283 () Bool)

(assert (=> b!2870283 (= e!1816727 (= (head!6338 (get!10326 lt!1017763)) (c!464070 (h!39789 (exprs!3193 c!7184)))))))

(declare-fun b!2870284 () Bool)

(declare-fun res!1190998 () Bool)

(declare-fun e!1816731 () Bool)

(assert (=> b!2870284 (=> res!1190998 e!1816731)))

(assert (=> b!2870284 (= res!1190998 e!1816727)))

(declare-fun res!1190997 () Bool)

(assert (=> b!2870284 (=> (not res!1190997) (not e!1816727))))

(assert (=> b!2870284 (= res!1190997 lt!1017818)))

(declare-fun b!2870285 () Bool)

(declare-fun res!1190993 () Bool)

(assert (=> b!2870285 (=> res!1190993 e!1816732)))

(assert (=> b!2870285 (= res!1190993 (not (isEmpty!18708 (tail!4563 (get!10326 lt!1017763)))))))

(declare-fun b!2870286 () Bool)

(assert (=> b!2870286 (= e!1816731 e!1816729)))

(declare-fun res!1190995 () Bool)

(assert (=> b!2870286 (=> (not res!1190995) (not e!1816729))))

(assert (=> b!2870286 (= res!1190995 (not lt!1017818))))

(declare-fun b!2870287 () Bool)

(declare-fun res!1190994 () Bool)

(assert (=> b!2870287 (=> (not res!1190994) (not e!1816727))))

(assert (=> b!2870287 (= res!1190994 (not call!185296))))

(declare-fun b!2870288 () Bool)

(declare-fun res!1190996 () Bool)

(assert (=> b!2870288 (=> res!1190996 e!1816731)))

(assert (=> b!2870288 (= res!1190996 (not ((_ is ElementMatch!8733) (h!39789 (exprs!3193 c!7184)))))))

(declare-fun e!1816726 () Bool)

(assert (=> b!2870288 (= e!1816726 e!1816731)))

(declare-fun b!2870289 () Bool)

(assert (=> b!2870289 (= e!1816726 (not lt!1017818))))

(declare-fun b!2870290 () Bool)

(assert (=> b!2870290 (= e!1816732 (not (= (head!6338 (get!10326 lt!1017763)) (c!464070 (h!39789 (exprs!3193 c!7184))))))))

(declare-fun b!2870291 () Bool)

(declare-fun nullable!2683 (Regex!8733) Bool)

(assert (=> b!2870291 (= e!1816730 (nullable!2683 (h!39789 (exprs!3193 c!7184))))))

(declare-fun b!2870292 () Bool)

(assert (=> b!2870292 (= e!1816728 e!1816726)))

(declare-fun c!464162 () Bool)

(assert (=> b!2870292 (= c!464162 ((_ is EmptyLang!8733) (h!39789 (exprs!3193 c!7184))))))

(assert (= (and d!829468 c!464163) b!2870291))

(assert (= (and d!829468 (not c!464163)) b!2870279))

(assert (= (and d!829468 c!464164) b!2870282))

(assert (= (and d!829468 (not c!464164)) b!2870292))

(assert (= (and b!2870292 c!464162) b!2870289))

(assert (= (and b!2870292 (not c!464162)) b!2870288))

(assert (= (and b!2870288 (not res!1190996)) b!2870284))

(assert (= (and b!2870284 res!1190997) b!2870287))

(assert (= (and b!2870287 res!1190994) b!2870280))

(assert (= (and b!2870280 res!1190992) b!2870283))

(assert (= (and b!2870284 (not res!1190998)) b!2870286))

(assert (= (and b!2870286 res!1190995) b!2870281))

(assert (= (and b!2870281 (not res!1190999)) b!2870285))

(assert (= (and b!2870285 (not res!1190993)) b!2870290))

(assert (= (or b!2870282 b!2870281 b!2870287) bm!185291))

(assert (=> b!2870283 m!3288925))

(declare-fun m!3289013 () Bool)

(assert (=> b!2870283 m!3289013))

(assert (=> b!2870280 m!3288925))

(declare-fun m!3289015 () Bool)

(assert (=> b!2870280 m!3289015))

(assert (=> b!2870280 m!3289015))

(declare-fun m!3289017 () Bool)

(assert (=> b!2870280 m!3289017))

(assert (=> b!2870279 m!3288925))

(assert (=> b!2870279 m!3289013))

(assert (=> b!2870279 m!3289013))

(declare-fun m!3289019 () Bool)

(assert (=> b!2870279 m!3289019))

(assert (=> b!2870279 m!3288925))

(assert (=> b!2870279 m!3289015))

(assert (=> b!2870279 m!3289019))

(assert (=> b!2870279 m!3289015))

(declare-fun m!3289021 () Bool)

(assert (=> b!2870279 m!3289021))

(assert (=> d!829468 m!3288925))

(declare-fun m!3289023 () Bool)

(assert (=> d!829468 m!3289023))

(declare-fun m!3289025 () Bool)

(assert (=> d!829468 m!3289025))

(declare-fun m!3289027 () Bool)

(assert (=> b!2870291 m!3289027))

(assert (=> b!2870290 m!3288925))

(assert (=> b!2870290 m!3289013))

(assert (=> bm!185291 m!3288925))

(assert (=> bm!185291 m!3289023))

(assert (=> b!2870285 m!3288925))

(assert (=> b!2870285 m!3289015))

(assert (=> b!2870285 m!3289015))

(assert (=> b!2870285 m!3289017))

(assert (=> b!2870050 d!829468))

(declare-fun d!829474 () Bool)

(assert (=> d!829474 (= (get!10326 lt!1017763) (v!34529 lt!1017763))))

(assert (=> b!2870050 d!829474))

(declare-fun d!829476 () Bool)

(assert (=> d!829476 (matchR!3733 (h!39789 (exprs!3193 c!7184)) (get!10326 (getLanguageWitness!417 (h!39789 (exprs!3193 c!7184)))))))

(declare-fun lt!1017821 () Unit!47967)

(declare-fun choose!16971 (Regex!8733) Unit!47967)

(assert (=> d!829476 (= lt!1017821 (choose!16971 (h!39789 (exprs!3193 c!7184))))))

(assert (=> d!829476 (validRegex!3511 (h!39789 (exprs!3193 c!7184)))))

(assert (=> d!829476 (= (lemmaGetWitnessMatches!40 (h!39789 (exprs!3193 c!7184))) lt!1017821)))

(declare-fun bs!521979 () Bool)

(assert (= bs!521979 d!829476))

(declare-fun m!3289029 () Bool)

(assert (=> bs!521979 m!3289029))

(assert (=> bs!521979 m!3288931))

(assert (=> bs!521979 m!3288931))

(declare-fun m!3289031 () Bool)

(assert (=> bs!521979 m!3289031))

(assert (=> bs!521979 m!3289025))

(assert (=> bs!521979 m!3289031))

(declare-fun m!3289033 () Bool)

(assert (=> bs!521979 m!3289033))

(assert (=> b!2870050 d!829476))

(declare-fun b!2870297 () Bool)

(declare-fun e!1816735 () Bool)

(declare-fun tp!923347 () Bool)

(declare-fun tp!923348 () Bool)

(assert (=> b!2870297 (= e!1816735 (and tp!923347 tp!923348))))

(assert (=> b!2870052 (= tp!923336 e!1816735)))

(assert (= (and b!2870052 ((_ is Cons!34369) (exprs!3193 c!7184))) b!2870297))

(check-sat (not b!2870125) (not b!2870218) (not d!829466) (not b!2870141) (not b!2870285) (not d!829476) (not b!2870297) (not b!2870283) (not d!829468) (not b!2870280) (not d!829446) (not bm!185291) (not d!829456) (not d!829458) (not b!2870217) (not bm!185283) (not b!2870290) (not b!2870291) (not bm!185282) (not b!2870279) (not b!2870215) (not b!2870143))
(check-sat)
