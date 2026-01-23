; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285600 () Bool)

(assert start!285600)

(declare-fun b!2940699 () Bool)

(declare-fun res!1213699 () Bool)

(declare-fun e!1853303 () Bool)

(assert (=> b!2940699 (=> res!1213699 e!1853303)))

(declare-datatypes ((C!18380 0))(
  ( (C!18381 (val!11226 Int)) )
))
(declare-datatypes ((Regex!9097 0))(
  ( (ElementMatch!9097 (c!480809 C!18380)) (Concat!14418 (regOne!18706 Regex!9097) (regTwo!18706 Regex!9097)) (EmptyExpr!9097) (Star!9097 (reg!9426 Regex!9097)) (EmptyLang!9097) (Union!9097 (regOne!18707 Regex!9097) (regTwo!18707 Regex!9097)) )
))
(declare-fun lt!1030033 () Regex!9097)

(declare-fun isEmptyExpr!302 (Regex!9097) Bool)

(assert (=> b!2940699 (= res!1213699 (not (isEmptyExpr!302 lt!1030033)))))

(declare-fun b!2940700 () Bool)

(declare-fun e!1853305 () Bool)

(declare-fun tp!941194 () Bool)

(declare-fun tp!941192 () Bool)

(assert (=> b!2940700 (= e!1853305 (and tp!941194 tp!941192))))

(declare-fun b!2940701 () Bool)

(declare-fun res!1213697 () Bool)

(declare-fun e!1853307 () Bool)

(assert (=> b!2940701 (=> res!1213697 e!1853307)))

(declare-datatypes ((List!34962 0))(
  ( (Nil!34838) (Cons!34838 (h!40258 C!18380) (t!234027 List!34962)) )
))
(declare-fun s!11993 () List!34962)

(declare-fun isEmpty!19099 (List!34962) Bool)

(assert (=> b!2940701 (= res!1213697 (isEmpty!19099 s!11993))))

(declare-fun b!2940702 () Bool)

(declare-fun e!1853306 () Bool)

(declare-fun tp_is_empty!15757 () Bool)

(declare-fun tp!941197 () Bool)

(assert (=> b!2940702 (= e!1853306 (and tp_is_empty!15757 tp!941197))))

(declare-fun b!2940703 () Bool)

(declare-fun r!17423 () Regex!9097)

(declare-fun validRegex!3830 (Regex!9097) Bool)

(assert (=> b!2940703 (= e!1853303 (validRegex!3830 (regTwo!18706 r!17423)))))

(declare-fun lt!1030032 () Regex!9097)

(declare-fun matchR!3979 (Regex!9097 List!34962) Bool)

(assert (=> b!2940703 (= (matchR!3979 (regTwo!18706 r!17423) s!11993) (matchR!3979 lt!1030032 s!11993))))

(declare-datatypes ((Unit!48573 0))(
  ( (Unit!48574) )
))
(declare-fun lt!1030034 () Unit!48573)

(declare-fun lemmaSimplifySound!86 (Regex!9097 List!34962) Unit!48573)

(assert (=> b!2940703 (= lt!1030034 (lemmaSimplifySound!86 (regTwo!18706 r!17423) s!11993))))

(declare-fun b!2940704 () Bool)

(declare-fun e!1853304 () Bool)

(assert (=> b!2940704 (= e!1853304 (not e!1853307))))

(declare-fun res!1213700 () Bool)

(assert (=> b!2940704 (=> res!1213700 e!1853307)))

(declare-fun lt!1030031 () Bool)

(get-info :version)

(assert (=> b!2940704 (= res!1213700 (or lt!1030031 (not ((_ is Concat!14418) r!17423))))))

(declare-fun matchRSpec!1234 (Regex!9097 List!34962) Bool)

(assert (=> b!2940704 (= lt!1030031 (matchRSpec!1234 r!17423 s!11993))))

(assert (=> b!2940704 (= lt!1030031 (matchR!3979 r!17423 s!11993))))

(declare-fun lt!1030035 () Unit!48573)

(declare-fun mainMatchTheorem!1234 (Regex!9097 List!34962) Unit!48573)

(assert (=> b!2940704 (= lt!1030035 (mainMatchTheorem!1234 r!17423 s!11993))))

(declare-fun b!2940705 () Bool)

(assert (=> b!2940705 (= e!1853307 e!1853303)))

(declare-fun res!1213698 () Bool)

(assert (=> b!2940705 (=> res!1213698 e!1853303)))

(declare-fun isEmptyLang!221 (Regex!9097) Bool)

(assert (=> b!2940705 (= res!1213698 (isEmptyLang!221 lt!1030033))))

(declare-fun simplify!102 (Regex!9097) Regex!9097)

(assert (=> b!2940705 (= lt!1030032 (simplify!102 (regTwo!18706 r!17423)))))

(assert (=> b!2940705 (= lt!1030033 (simplify!102 (regOne!18706 r!17423)))))

(declare-fun res!1213695 () Bool)

(assert (=> start!285600 (=> (not res!1213695) (not e!1853304))))

(assert (=> start!285600 (= res!1213695 (validRegex!3830 r!17423))))

(assert (=> start!285600 e!1853304))

(assert (=> start!285600 e!1853305))

(assert (=> start!285600 e!1853306))

(declare-fun b!2940706 () Bool)

(assert (=> b!2940706 (= e!1853305 tp_is_empty!15757)))

(declare-fun b!2940707 () Bool)

(declare-fun res!1213696 () Bool)

(assert (=> b!2940707 (=> res!1213696 e!1853303)))

(assert (=> b!2940707 (= res!1213696 (isEmptyLang!221 lt!1030032))))

(declare-fun b!2940708 () Bool)

(declare-fun tp!941196 () Bool)

(declare-fun tp!941195 () Bool)

(assert (=> b!2940708 (= e!1853305 (and tp!941196 tp!941195))))

(declare-fun b!2940709 () Bool)

(declare-fun tp!941193 () Bool)

(assert (=> b!2940709 (= e!1853305 tp!941193)))

(assert (= (and start!285600 res!1213695) b!2940704))

(assert (= (and b!2940704 (not res!1213700)) b!2940701))

(assert (= (and b!2940701 (not res!1213697)) b!2940705))

(assert (= (and b!2940705 (not res!1213698)) b!2940707))

(assert (= (and b!2940707 (not res!1213696)) b!2940699))

(assert (= (and b!2940699 (not res!1213699)) b!2940703))

(assert (= (and start!285600 ((_ is ElementMatch!9097) r!17423)) b!2940706))

(assert (= (and start!285600 ((_ is Concat!14418) r!17423)) b!2940708))

(assert (= (and start!285600 ((_ is Star!9097) r!17423)) b!2940709))

(assert (= (and start!285600 ((_ is Union!9097) r!17423)) b!2940700))

(assert (= (and start!285600 ((_ is Cons!34838) s!11993)) b!2940702))

(declare-fun m!3325341 () Bool)

(assert (=> start!285600 m!3325341))

(declare-fun m!3325343 () Bool)

(assert (=> b!2940703 m!3325343))

(declare-fun m!3325345 () Bool)

(assert (=> b!2940703 m!3325345))

(declare-fun m!3325347 () Bool)

(assert (=> b!2940703 m!3325347))

(declare-fun m!3325349 () Bool)

(assert (=> b!2940703 m!3325349))

(declare-fun m!3325351 () Bool)

(assert (=> b!2940705 m!3325351))

(declare-fun m!3325353 () Bool)

(assert (=> b!2940705 m!3325353))

(declare-fun m!3325355 () Bool)

(assert (=> b!2940705 m!3325355))

(declare-fun m!3325357 () Bool)

(assert (=> b!2940699 m!3325357))

(declare-fun m!3325359 () Bool)

(assert (=> b!2940707 m!3325359))

(declare-fun m!3325361 () Bool)

(assert (=> b!2940701 m!3325361))

(declare-fun m!3325363 () Bool)

(assert (=> b!2940704 m!3325363))

(declare-fun m!3325365 () Bool)

(assert (=> b!2940704 m!3325365))

(declare-fun m!3325367 () Bool)

(assert (=> b!2940704 m!3325367))

(check-sat (not b!2940703) (not b!2940701) (not b!2940699) (not b!2940702) (not start!285600) tp_is_empty!15757 (not b!2940700) (not b!2940704) (not b!2940709) (not b!2940708) (not b!2940705) (not b!2940707))
(check-sat)
(get-model)

(declare-fun b!2941038 () Bool)

(assert (=> b!2941038 true))

(assert (=> b!2941038 true))

(declare-fun bs!525506 () Bool)

(declare-fun b!2941036 () Bool)

(assert (= bs!525506 (and b!2941036 b!2941038)))

(declare-fun lambda!109512 () Int)

(declare-fun lambda!109511 () Int)

(assert (=> bs!525506 (not (= lambda!109512 lambda!109511))))

(assert (=> b!2941036 true))

(assert (=> b!2941036 true))

(declare-fun b!2941030 () Bool)

(declare-fun e!1853481 () Bool)

(assert (=> b!2941030 (= e!1853481 (matchRSpec!1234 (regTwo!18707 r!17423) s!11993))))

(declare-fun b!2941031 () Bool)

(declare-fun c!480898 () Bool)

(assert (=> b!2941031 (= c!480898 ((_ is Union!9097) r!17423))))

(declare-fun e!1853485 () Bool)

(declare-fun e!1853484 () Bool)

(assert (=> b!2941031 (= e!1853485 e!1853484)))

(declare-fun d!840166 () Bool)

(declare-fun c!480899 () Bool)

(assert (=> d!840166 (= c!480899 ((_ is EmptyExpr!9097) r!17423))))

(declare-fun e!1853480 () Bool)

(assert (=> d!840166 (= (matchRSpec!1234 r!17423 s!11993) e!1853480)))

(declare-fun b!2941032 () Bool)

(declare-fun e!1853483 () Bool)

(assert (=> b!2941032 (= e!1853484 e!1853483)))

(declare-fun c!480897 () Bool)

(assert (=> b!2941032 (= c!480897 ((_ is Star!9097) r!17423))))

(declare-fun b!2941033 () Bool)

(declare-fun call!193685 () Bool)

(assert (=> b!2941033 (= e!1853480 call!193685)))

(declare-fun b!2941034 () Bool)

(assert (=> b!2941034 (= e!1853484 e!1853481)))

(declare-fun res!1213809 () Bool)

(assert (=> b!2941034 (= res!1213809 (matchRSpec!1234 (regOne!18707 r!17423) s!11993))))

(assert (=> b!2941034 (=> res!1213809 e!1853481)))

(declare-fun bm!193679 () Bool)

(assert (=> bm!193679 (= call!193685 (isEmpty!19099 s!11993))))

(declare-fun b!2941035 () Bool)

(assert (=> b!2941035 (= e!1853485 (= s!11993 (Cons!34838 (c!480809 r!17423) Nil!34838)))))

(declare-fun call!193684 () Bool)

(assert (=> b!2941036 (= e!1853483 call!193684)))

(declare-fun b!2941037 () Bool)

(declare-fun e!1853482 () Bool)

(assert (=> b!2941037 (= e!1853480 e!1853482)))

(declare-fun res!1213808 () Bool)

(assert (=> b!2941037 (= res!1213808 (not ((_ is EmptyLang!9097) r!17423)))))

(assert (=> b!2941037 (=> (not res!1213808) (not e!1853482))))

(declare-fun e!1853486 () Bool)

(assert (=> b!2941038 (= e!1853486 call!193684)))

(declare-fun b!2941039 () Bool)

(declare-fun c!480900 () Bool)

(assert (=> b!2941039 (= c!480900 ((_ is ElementMatch!9097) r!17423))))

(assert (=> b!2941039 (= e!1853482 e!1853485)))

(declare-fun b!2941040 () Bool)

(declare-fun res!1213810 () Bool)

(assert (=> b!2941040 (=> res!1213810 e!1853486)))

(assert (=> b!2941040 (= res!1213810 call!193685)))

(assert (=> b!2941040 (= e!1853483 e!1853486)))

(declare-fun bm!193680 () Bool)

(declare-fun Exists!1449 (Int) Bool)

(assert (=> bm!193680 (= call!193684 (Exists!1449 (ite c!480897 lambda!109511 lambda!109512)))))

(assert (= (and d!840166 c!480899) b!2941033))

(assert (= (and d!840166 (not c!480899)) b!2941037))

(assert (= (and b!2941037 res!1213808) b!2941039))

(assert (= (and b!2941039 c!480900) b!2941035))

(assert (= (and b!2941039 (not c!480900)) b!2941031))

(assert (= (and b!2941031 c!480898) b!2941034))

(assert (= (and b!2941031 (not c!480898)) b!2941032))

(assert (= (and b!2941034 (not res!1213809)) b!2941030))

(assert (= (and b!2941032 c!480897) b!2941040))

(assert (= (and b!2941032 (not c!480897)) b!2941036))

(assert (= (and b!2941040 (not res!1213810)) b!2941038))

(assert (= (or b!2941038 b!2941036) bm!193680))

(assert (= (or b!2941033 b!2941040) bm!193679))

(declare-fun m!3325455 () Bool)

(assert (=> b!2941030 m!3325455))

(declare-fun m!3325457 () Bool)

(assert (=> b!2941034 m!3325457))

(assert (=> bm!193679 m!3325361))

(declare-fun m!3325459 () Bool)

(assert (=> bm!193680 m!3325459))

(assert (=> b!2940704 d!840166))

(declare-fun b!2941073 () Bool)

(declare-fun e!1853501 () Bool)

(declare-fun nullable!2875 (Regex!9097) Bool)

(assert (=> b!2941073 (= e!1853501 (nullable!2875 r!17423))))

(declare-fun b!2941074 () Bool)

(declare-fun e!1853502 () Bool)

(declare-fun e!1853507 () Bool)

(assert (=> b!2941074 (= e!1853502 e!1853507)))

(declare-fun res!1213827 () Bool)

(assert (=> b!2941074 (=> (not res!1213827) (not e!1853507))))

(declare-fun lt!1030073 () Bool)

(assert (=> b!2941074 (= res!1213827 (not lt!1030073))))

(declare-fun b!2941075 () Bool)

(declare-fun res!1213830 () Bool)

(assert (=> b!2941075 (=> res!1213830 e!1853502)))

(assert (=> b!2941075 (= res!1213830 (not ((_ is ElementMatch!9097) r!17423)))))

(declare-fun e!1853506 () Bool)

(assert (=> b!2941075 (= e!1853506 e!1853502)))

(declare-fun b!2941076 () Bool)

(declare-fun res!1213828 () Bool)

(declare-fun e!1853504 () Bool)

(assert (=> b!2941076 (=> (not res!1213828) (not e!1853504))))

(declare-fun call!193688 () Bool)

(assert (=> b!2941076 (= res!1213828 (not call!193688))))

(declare-fun b!2941077 () Bool)

(declare-fun e!1853503 () Bool)

(assert (=> b!2941077 (= e!1853503 (= lt!1030073 call!193688))))

(declare-fun b!2941079 () Bool)

(declare-fun res!1213834 () Bool)

(assert (=> b!2941079 (=> (not res!1213834) (not e!1853504))))

(declare-fun tail!4771 (List!34962) List!34962)

(assert (=> b!2941079 (= res!1213834 (isEmpty!19099 (tail!4771 s!11993)))))

(declare-fun b!2941080 () Bool)

(declare-fun e!1853505 () Bool)

(assert (=> b!2941080 (= e!1853507 e!1853505)))

(declare-fun res!1213831 () Bool)

(assert (=> b!2941080 (=> res!1213831 e!1853505)))

(assert (=> b!2941080 (= res!1213831 call!193688)))

(declare-fun b!2941081 () Bool)

(declare-fun res!1213833 () Bool)

(assert (=> b!2941081 (=> res!1213833 e!1853502)))

(assert (=> b!2941081 (= res!1213833 e!1853504)))

(declare-fun res!1213829 () Bool)

(assert (=> b!2941081 (=> (not res!1213829) (not e!1853504))))

(assert (=> b!2941081 (= res!1213829 lt!1030073)))

(declare-fun b!2941082 () Bool)

(assert (=> b!2941082 (= e!1853503 e!1853506)))

(declare-fun c!480908 () Bool)

(assert (=> b!2941082 (= c!480908 ((_ is EmptyLang!9097) r!17423))))

(declare-fun b!2941083 () Bool)

(assert (=> b!2941083 (= e!1853506 (not lt!1030073))))

(declare-fun b!2941078 () Bool)

(declare-fun res!1213832 () Bool)

(assert (=> b!2941078 (=> res!1213832 e!1853505)))

(assert (=> b!2941078 (= res!1213832 (not (isEmpty!19099 (tail!4771 s!11993))))))

(declare-fun d!840196 () Bool)

(assert (=> d!840196 e!1853503))

(declare-fun c!480907 () Bool)

(assert (=> d!840196 (= c!480907 ((_ is EmptyExpr!9097) r!17423))))

(assert (=> d!840196 (= lt!1030073 e!1853501)))

(declare-fun c!480909 () Bool)

(assert (=> d!840196 (= c!480909 (isEmpty!19099 s!11993))))

(assert (=> d!840196 (validRegex!3830 r!17423)))

(assert (=> d!840196 (= (matchR!3979 r!17423 s!11993) lt!1030073)))

(declare-fun bm!193683 () Bool)

(assert (=> bm!193683 (= call!193688 (isEmpty!19099 s!11993))))

(declare-fun b!2941084 () Bool)

(declare-fun head!6545 (List!34962) C!18380)

(assert (=> b!2941084 (= e!1853504 (= (head!6545 s!11993) (c!480809 r!17423)))))

(declare-fun b!2941085 () Bool)

(declare-fun derivativeStep!2486 (Regex!9097 C!18380) Regex!9097)

(assert (=> b!2941085 (= e!1853501 (matchR!3979 (derivativeStep!2486 r!17423 (head!6545 s!11993)) (tail!4771 s!11993)))))

(declare-fun b!2941086 () Bool)

(assert (=> b!2941086 (= e!1853505 (not (= (head!6545 s!11993) (c!480809 r!17423))))))

(assert (= (and d!840196 c!480909) b!2941073))

(assert (= (and d!840196 (not c!480909)) b!2941085))

(assert (= (and d!840196 c!480907) b!2941077))

(assert (= (and d!840196 (not c!480907)) b!2941082))

(assert (= (and b!2941082 c!480908) b!2941083))

(assert (= (and b!2941082 (not c!480908)) b!2941075))

(assert (= (and b!2941075 (not res!1213830)) b!2941081))

(assert (= (and b!2941081 res!1213829) b!2941076))

(assert (= (and b!2941076 res!1213828) b!2941079))

(assert (= (and b!2941079 res!1213834) b!2941084))

(assert (= (and b!2941081 (not res!1213833)) b!2941074))

(assert (= (and b!2941074 res!1213827) b!2941080))

(assert (= (and b!2941080 (not res!1213831)) b!2941078))

(assert (= (and b!2941078 (not res!1213832)) b!2941086))

(assert (= (or b!2941077 b!2941076 b!2941080) bm!193683))

(declare-fun m!3325461 () Bool)

(assert (=> b!2941084 m!3325461))

(declare-fun m!3325463 () Bool)

(assert (=> b!2941073 m!3325463))

(declare-fun m!3325465 () Bool)

(assert (=> b!2941079 m!3325465))

(assert (=> b!2941079 m!3325465))

(declare-fun m!3325467 () Bool)

(assert (=> b!2941079 m!3325467))

(assert (=> bm!193683 m!3325361))

(assert (=> b!2941086 m!3325461))

(assert (=> d!840196 m!3325361))

(assert (=> d!840196 m!3325341))

(assert (=> b!2941078 m!3325465))

(assert (=> b!2941078 m!3325465))

(assert (=> b!2941078 m!3325467))

(assert (=> b!2941085 m!3325461))

(assert (=> b!2941085 m!3325461))

(declare-fun m!3325469 () Bool)

(assert (=> b!2941085 m!3325469))

(assert (=> b!2941085 m!3325465))

(assert (=> b!2941085 m!3325469))

(assert (=> b!2941085 m!3325465))

(declare-fun m!3325471 () Bool)

(assert (=> b!2941085 m!3325471))

(assert (=> b!2940704 d!840196))

(declare-fun d!840198 () Bool)

(assert (=> d!840198 (= (matchR!3979 r!17423 s!11993) (matchRSpec!1234 r!17423 s!11993))))

(declare-fun lt!1030076 () Unit!48573)

(declare-fun choose!17393 (Regex!9097 List!34962) Unit!48573)

(assert (=> d!840198 (= lt!1030076 (choose!17393 r!17423 s!11993))))

(assert (=> d!840198 (validRegex!3830 r!17423)))

(assert (=> d!840198 (= (mainMatchTheorem!1234 r!17423 s!11993) lt!1030076)))

(declare-fun bs!525507 () Bool)

(assert (= bs!525507 d!840198))

(assert (=> bs!525507 m!3325365))

(assert (=> bs!525507 m!3325363))

(declare-fun m!3325473 () Bool)

(assert (=> bs!525507 m!3325473))

(assert (=> bs!525507 m!3325341))

(assert (=> b!2940704 d!840198))

(declare-fun b!2941105 () Bool)

(declare-fun e!1853522 () Bool)

(declare-fun call!193695 () Bool)

(assert (=> b!2941105 (= e!1853522 call!193695)))

(declare-fun b!2941106 () Bool)

(declare-fun res!1213846 () Bool)

(declare-fun e!1853525 () Bool)

(assert (=> b!2941106 (=> res!1213846 e!1853525)))

(assert (=> b!2941106 (= res!1213846 (not ((_ is Concat!14418) r!17423)))))

(declare-fun e!1853524 () Bool)

(assert (=> b!2941106 (= e!1853524 e!1853525)))

(declare-fun c!480914 () Bool)

(declare-fun c!480915 () Bool)

(declare-fun bm!193690 () Bool)

(assert (=> bm!193690 (= call!193695 (validRegex!3830 (ite c!480914 (reg!9426 r!17423) (ite c!480915 (regOne!18707 r!17423) (regTwo!18706 r!17423)))))))

(declare-fun b!2941107 () Bool)

(declare-fun e!1853527 () Bool)

(declare-fun call!193696 () Bool)

(assert (=> b!2941107 (= e!1853527 call!193696)))

(declare-fun b!2941108 () Bool)

(assert (=> b!2941108 (= e!1853525 e!1853527)))

(declare-fun res!1213845 () Bool)

(assert (=> b!2941108 (=> (not res!1213845) (not e!1853527))))

(declare-fun call!193697 () Bool)

(assert (=> b!2941108 (= res!1213845 call!193697)))

(declare-fun b!2941109 () Bool)

(declare-fun e!1853526 () Bool)

(assert (=> b!2941109 (= e!1853526 e!1853524)))

(assert (=> b!2941109 (= c!480915 ((_ is Union!9097) r!17423))))

(declare-fun b!2941110 () Bool)

(assert (=> b!2941110 (= e!1853526 e!1853522)))

(declare-fun res!1213849 () Bool)

(assert (=> b!2941110 (= res!1213849 (not (nullable!2875 (reg!9426 r!17423))))))

(assert (=> b!2941110 (=> (not res!1213849) (not e!1853522))))

(declare-fun d!840200 () Bool)

(declare-fun res!1213847 () Bool)

(declare-fun e!1853523 () Bool)

(assert (=> d!840200 (=> res!1213847 e!1853523)))

(assert (=> d!840200 (= res!1213847 ((_ is ElementMatch!9097) r!17423))))

(assert (=> d!840200 (= (validRegex!3830 r!17423) e!1853523)))

(declare-fun b!2941111 () Bool)

(declare-fun res!1213848 () Bool)

(declare-fun e!1853528 () Bool)

(assert (=> b!2941111 (=> (not res!1213848) (not e!1853528))))

(assert (=> b!2941111 (= res!1213848 call!193696)))

(assert (=> b!2941111 (= e!1853524 e!1853528)))

(declare-fun bm!193691 () Bool)

(assert (=> bm!193691 (= call!193696 call!193695)))

(declare-fun b!2941112 () Bool)

(assert (=> b!2941112 (= e!1853528 call!193697)))

(declare-fun bm!193692 () Bool)

(assert (=> bm!193692 (= call!193697 (validRegex!3830 (ite c!480915 (regTwo!18707 r!17423) (regOne!18706 r!17423))))))

(declare-fun b!2941113 () Bool)

(assert (=> b!2941113 (= e!1853523 e!1853526)))

(assert (=> b!2941113 (= c!480914 ((_ is Star!9097) r!17423))))

(assert (= (and d!840200 (not res!1213847)) b!2941113))

(assert (= (and b!2941113 c!480914) b!2941110))

(assert (= (and b!2941113 (not c!480914)) b!2941109))

(assert (= (and b!2941110 res!1213849) b!2941105))

(assert (= (and b!2941109 c!480915) b!2941111))

(assert (= (and b!2941109 (not c!480915)) b!2941106))

(assert (= (and b!2941111 res!1213848) b!2941112))

(assert (= (and b!2941106 (not res!1213846)) b!2941108))

(assert (= (and b!2941108 res!1213845) b!2941107))

(assert (= (or b!2941111 b!2941107) bm!193691))

(assert (= (or b!2941112 b!2941108) bm!193692))

(assert (= (or b!2941105 bm!193691) bm!193690))

(declare-fun m!3325475 () Bool)

(assert (=> bm!193690 m!3325475))

(declare-fun m!3325477 () Bool)

(assert (=> b!2941110 m!3325477))

(declare-fun m!3325479 () Bool)

(assert (=> bm!193692 m!3325479))

(assert (=> start!285600 d!840200))

(declare-fun d!840202 () Bool)

(assert (=> d!840202 (= (isEmptyExpr!302 lt!1030033) ((_ is EmptyExpr!9097) lt!1030033))))

(assert (=> b!2940699 d!840202))

(declare-fun b!2941114 () Bool)

(declare-fun e!1853529 () Bool)

(declare-fun call!193698 () Bool)

(assert (=> b!2941114 (= e!1853529 call!193698)))

(declare-fun b!2941115 () Bool)

(declare-fun res!1213851 () Bool)

(declare-fun e!1853532 () Bool)

(assert (=> b!2941115 (=> res!1213851 e!1853532)))

(assert (=> b!2941115 (= res!1213851 (not ((_ is Concat!14418) (regTwo!18706 r!17423))))))

(declare-fun e!1853531 () Bool)

(assert (=> b!2941115 (= e!1853531 e!1853532)))

(declare-fun bm!193693 () Bool)

(declare-fun c!480917 () Bool)

(declare-fun c!480916 () Bool)

(assert (=> bm!193693 (= call!193698 (validRegex!3830 (ite c!480916 (reg!9426 (regTwo!18706 r!17423)) (ite c!480917 (regOne!18707 (regTwo!18706 r!17423)) (regTwo!18706 (regTwo!18706 r!17423))))))))

(declare-fun b!2941116 () Bool)

(declare-fun e!1853534 () Bool)

(declare-fun call!193699 () Bool)

(assert (=> b!2941116 (= e!1853534 call!193699)))

(declare-fun b!2941117 () Bool)

(assert (=> b!2941117 (= e!1853532 e!1853534)))

(declare-fun res!1213850 () Bool)

(assert (=> b!2941117 (=> (not res!1213850) (not e!1853534))))

(declare-fun call!193700 () Bool)

(assert (=> b!2941117 (= res!1213850 call!193700)))

(declare-fun b!2941118 () Bool)

(declare-fun e!1853533 () Bool)

(assert (=> b!2941118 (= e!1853533 e!1853531)))

(assert (=> b!2941118 (= c!480917 ((_ is Union!9097) (regTwo!18706 r!17423)))))

(declare-fun b!2941119 () Bool)

(assert (=> b!2941119 (= e!1853533 e!1853529)))

(declare-fun res!1213854 () Bool)

(assert (=> b!2941119 (= res!1213854 (not (nullable!2875 (reg!9426 (regTwo!18706 r!17423)))))))

(assert (=> b!2941119 (=> (not res!1213854) (not e!1853529))))

(declare-fun d!840204 () Bool)

(declare-fun res!1213852 () Bool)

(declare-fun e!1853530 () Bool)

(assert (=> d!840204 (=> res!1213852 e!1853530)))

(assert (=> d!840204 (= res!1213852 ((_ is ElementMatch!9097) (regTwo!18706 r!17423)))))

(assert (=> d!840204 (= (validRegex!3830 (regTwo!18706 r!17423)) e!1853530)))

(declare-fun b!2941120 () Bool)

(declare-fun res!1213853 () Bool)

(declare-fun e!1853535 () Bool)

(assert (=> b!2941120 (=> (not res!1213853) (not e!1853535))))

(assert (=> b!2941120 (= res!1213853 call!193699)))

(assert (=> b!2941120 (= e!1853531 e!1853535)))

(declare-fun bm!193694 () Bool)

(assert (=> bm!193694 (= call!193699 call!193698)))

(declare-fun b!2941121 () Bool)

(assert (=> b!2941121 (= e!1853535 call!193700)))

(declare-fun bm!193695 () Bool)

(assert (=> bm!193695 (= call!193700 (validRegex!3830 (ite c!480917 (regTwo!18707 (regTwo!18706 r!17423)) (regOne!18706 (regTwo!18706 r!17423)))))))

(declare-fun b!2941122 () Bool)

(assert (=> b!2941122 (= e!1853530 e!1853533)))

(assert (=> b!2941122 (= c!480916 ((_ is Star!9097) (regTwo!18706 r!17423)))))

(assert (= (and d!840204 (not res!1213852)) b!2941122))

(assert (= (and b!2941122 c!480916) b!2941119))

(assert (= (and b!2941122 (not c!480916)) b!2941118))

(assert (= (and b!2941119 res!1213854) b!2941114))

(assert (= (and b!2941118 c!480917) b!2941120))

(assert (= (and b!2941118 (not c!480917)) b!2941115))

(assert (= (and b!2941120 res!1213853) b!2941121))

(assert (= (and b!2941115 (not res!1213851)) b!2941117))

(assert (= (and b!2941117 res!1213850) b!2941116))

(assert (= (or b!2941120 b!2941116) bm!193694))

(assert (= (or b!2941121 b!2941117) bm!193695))

(assert (= (or b!2941114 bm!193694) bm!193693))

(declare-fun m!3325481 () Bool)

(assert (=> bm!193693 m!3325481))

(declare-fun m!3325483 () Bool)

(assert (=> b!2941119 m!3325483))

(declare-fun m!3325485 () Bool)

(assert (=> bm!193695 m!3325485))

(assert (=> b!2940703 d!840204))

(declare-fun b!2941123 () Bool)

(declare-fun e!1853536 () Bool)

(assert (=> b!2941123 (= e!1853536 (nullable!2875 (regTwo!18706 r!17423)))))

(declare-fun b!2941124 () Bool)

(declare-fun e!1853537 () Bool)

(declare-fun e!1853542 () Bool)

(assert (=> b!2941124 (= e!1853537 e!1853542)))

(declare-fun res!1213855 () Bool)

(assert (=> b!2941124 (=> (not res!1213855) (not e!1853542))))

(declare-fun lt!1030077 () Bool)

(assert (=> b!2941124 (= res!1213855 (not lt!1030077))))

(declare-fun b!2941125 () Bool)

(declare-fun res!1213858 () Bool)

(assert (=> b!2941125 (=> res!1213858 e!1853537)))

(assert (=> b!2941125 (= res!1213858 (not ((_ is ElementMatch!9097) (regTwo!18706 r!17423))))))

(declare-fun e!1853541 () Bool)

(assert (=> b!2941125 (= e!1853541 e!1853537)))

(declare-fun b!2941126 () Bool)

(declare-fun res!1213856 () Bool)

(declare-fun e!1853539 () Bool)

(assert (=> b!2941126 (=> (not res!1213856) (not e!1853539))))

(declare-fun call!193701 () Bool)

(assert (=> b!2941126 (= res!1213856 (not call!193701))))

(declare-fun b!2941127 () Bool)

(declare-fun e!1853538 () Bool)

(assert (=> b!2941127 (= e!1853538 (= lt!1030077 call!193701))))

(declare-fun b!2941129 () Bool)

(declare-fun res!1213862 () Bool)

(assert (=> b!2941129 (=> (not res!1213862) (not e!1853539))))

(assert (=> b!2941129 (= res!1213862 (isEmpty!19099 (tail!4771 s!11993)))))

(declare-fun b!2941130 () Bool)

(declare-fun e!1853540 () Bool)

(assert (=> b!2941130 (= e!1853542 e!1853540)))

(declare-fun res!1213859 () Bool)

(assert (=> b!2941130 (=> res!1213859 e!1853540)))

(assert (=> b!2941130 (= res!1213859 call!193701)))

(declare-fun b!2941131 () Bool)

(declare-fun res!1213861 () Bool)

(assert (=> b!2941131 (=> res!1213861 e!1853537)))

(assert (=> b!2941131 (= res!1213861 e!1853539)))

(declare-fun res!1213857 () Bool)

(assert (=> b!2941131 (=> (not res!1213857) (not e!1853539))))

(assert (=> b!2941131 (= res!1213857 lt!1030077)))

(declare-fun b!2941132 () Bool)

(assert (=> b!2941132 (= e!1853538 e!1853541)))

(declare-fun c!480919 () Bool)

(assert (=> b!2941132 (= c!480919 ((_ is EmptyLang!9097) (regTwo!18706 r!17423)))))

(declare-fun b!2941133 () Bool)

(assert (=> b!2941133 (= e!1853541 (not lt!1030077))))

(declare-fun b!2941128 () Bool)

(declare-fun res!1213860 () Bool)

(assert (=> b!2941128 (=> res!1213860 e!1853540)))

(assert (=> b!2941128 (= res!1213860 (not (isEmpty!19099 (tail!4771 s!11993))))))

(declare-fun d!840206 () Bool)

(assert (=> d!840206 e!1853538))

(declare-fun c!480918 () Bool)

(assert (=> d!840206 (= c!480918 ((_ is EmptyExpr!9097) (regTwo!18706 r!17423)))))

(assert (=> d!840206 (= lt!1030077 e!1853536)))

(declare-fun c!480920 () Bool)

(assert (=> d!840206 (= c!480920 (isEmpty!19099 s!11993))))

(assert (=> d!840206 (validRegex!3830 (regTwo!18706 r!17423))))

(assert (=> d!840206 (= (matchR!3979 (regTwo!18706 r!17423) s!11993) lt!1030077)))

(declare-fun bm!193696 () Bool)

(assert (=> bm!193696 (= call!193701 (isEmpty!19099 s!11993))))

(declare-fun b!2941134 () Bool)

(assert (=> b!2941134 (= e!1853539 (= (head!6545 s!11993) (c!480809 (regTwo!18706 r!17423))))))

(declare-fun b!2941135 () Bool)

(assert (=> b!2941135 (= e!1853536 (matchR!3979 (derivativeStep!2486 (regTwo!18706 r!17423) (head!6545 s!11993)) (tail!4771 s!11993)))))

(declare-fun b!2941136 () Bool)

(assert (=> b!2941136 (= e!1853540 (not (= (head!6545 s!11993) (c!480809 (regTwo!18706 r!17423)))))))

(assert (= (and d!840206 c!480920) b!2941123))

(assert (= (and d!840206 (not c!480920)) b!2941135))

(assert (= (and d!840206 c!480918) b!2941127))

(assert (= (and d!840206 (not c!480918)) b!2941132))

(assert (= (and b!2941132 c!480919) b!2941133))

(assert (= (and b!2941132 (not c!480919)) b!2941125))

(assert (= (and b!2941125 (not res!1213858)) b!2941131))

(assert (= (and b!2941131 res!1213857) b!2941126))

(assert (= (and b!2941126 res!1213856) b!2941129))

(assert (= (and b!2941129 res!1213862) b!2941134))

(assert (= (and b!2941131 (not res!1213861)) b!2941124))

(assert (= (and b!2941124 res!1213855) b!2941130))

(assert (= (and b!2941130 (not res!1213859)) b!2941128))

(assert (= (and b!2941128 (not res!1213860)) b!2941136))

(assert (= (or b!2941127 b!2941126 b!2941130) bm!193696))

(assert (=> b!2941134 m!3325461))

(declare-fun m!3325487 () Bool)

(assert (=> b!2941123 m!3325487))

(assert (=> b!2941129 m!3325465))

(assert (=> b!2941129 m!3325465))

(assert (=> b!2941129 m!3325467))

(assert (=> bm!193696 m!3325361))

(assert (=> b!2941136 m!3325461))

(assert (=> d!840206 m!3325361))

(assert (=> d!840206 m!3325343))

(assert (=> b!2941128 m!3325465))

(assert (=> b!2941128 m!3325465))

(assert (=> b!2941128 m!3325467))

(assert (=> b!2941135 m!3325461))

(assert (=> b!2941135 m!3325461))

(declare-fun m!3325489 () Bool)

(assert (=> b!2941135 m!3325489))

(assert (=> b!2941135 m!3325465))

(assert (=> b!2941135 m!3325489))

(assert (=> b!2941135 m!3325465))

(declare-fun m!3325491 () Bool)

(assert (=> b!2941135 m!3325491))

(assert (=> b!2940703 d!840206))

(declare-fun b!2941137 () Bool)

(declare-fun e!1853543 () Bool)

(assert (=> b!2941137 (= e!1853543 (nullable!2875 lt!1030032))))

(declare-fun b!2941138 () Bool)

(declare-fun e!1853544 () Bool)

(declare-fun e!1853549 () Bool)

(assert (=> b!2941138 (= e!1853544 e!1853549)))

(declare-fun res!1213863 () Bool)

(assert (=> b!2941138 (=> (not res!1213863) (not e!1853549))))

(declare-fun lt!1030078 () Bool)

(assert (=> b!2941138 (= res!1213863 (not lt!1030078))))

(declare-fun b!2941139 () Bool)

(declare-fun res!1213866 () Bool)

(assert (=> b!2941139 (=> res!1213866 e!1853544)))

(assert (=> b!2941139 (= res!1213866 (not ((_ is ElementMatch!9097) lt!1030032)))))

(declare-fun e!1853548 () Bool)

(assert (=> b!2941139 (= e!1853548 e!1853544)))

(declare-fun b!2941140 () Bool)

(declare-fun res!1213864 () Bool)

(declare-fun e!1853546 () Bool)

(assert (=> b!2941140 (=> (not res!1213864) (not e!1853546))))

(declare-fun call!193702 () Bool)

(assert (=> b!2941140 (= res!1213864 (not call!193702))))

(declare-fun b!2941141 () Bool)

(declare-fun e!1853545 () Bool)

(assert (=> b!2941141 (= e!1853545 (= lt!1030078 call!193702))))

(declare-fun b!2941143 () Bool)

(declare-fun res!1213870 () Bool)

(assert (=> b!2941143 (=> (not res!1213870) (not e!1853546))))

(assert (=> b!2941143 (= res!1213870 (isEmpty!19099 (tail!4771 s!11993)))))

(declare-fun b!2941144 () Bool)

(declare-fun e!1853547 () Bool)

(assert (=> b!2941144 (= e!1853549 e!1853547)))

(declare-fun res!1213867 () Bool)

(assert (=> b!2941144 (=> res!1213867 e!1853547)))

(assert (=> b!2941144 (= res!1213867 call!193702)))

(declare-fun b!2941145 () Bool)

(declare-fun res!1213869 () Bool)

(assert (=> b!2941145 (=> res!1213869 e!1853544)))

(assert (=> b!2941145 (= res!1213869 e!1853546)))

(declare-fun res!1213865 () Bool)

(assert (=> b!2941145 (=> (not res!1213865) (not e!1853546))))

(assert (=> b!2941145 (= res!1213865 lt!1030078)))

(declare-fun b!2941146 () Bool)

(assert (=> b!2941146 (= e!1853545 e!1853548)))

(declare-fun c!480922 () Bool)

(assert (=> b!2941146 (= c!480922 ((_ is EmptyLang!9097) lt!1030032))))

(declare-fun b!2941147 () Bool)

(assert (=> b!2941147 (= e!1853548 (not lt!1030078))))

(declare-fun b!2941142 () Bool)

(declare-fun res!1213868 () Bool)

(assert (=> b!2941142 (=> res!1213868 e!1853547)))

(assert (=> b!2941142 (= res!1213868 (not (isEmpty!19099 (tail!4771 s!11993))))))

(declare-fun d!840208 () Bool)

(assert (=> d!840208 e!1853545))

(declare-fun c!480921 () Bool)

(assert (=> d!840208 (= c!480921 ((_ is EmptyExpr!9097) lt!1030032))))

(assert (=> d!840208 (= lt!1030078 e!1853543)))

(declare-fun c!480923 () Bool)

(assert (=> d!840208 (= c!480923 (isEmpty!19099 s!11993))))

(assert (=> d!840208 (validRegex!3830 lt!1030032)))

(assert (=> d!840208 (= (matchR!3979 lt!1030032 s!11993) lt!1030078)))

(declare-fun bm!193697 () Bool)

(assert (=> bm!193697 (= call!193702 (isEmpty!19099 s!11993))))

(declare-fun b!2941148 () Bool)

(assert (=> b!2941148 (= e!1853546 (= (head!6545 s!11993) (c!480809 lt!1030032)))))

(declare-fun b!2941149 () Bool)

(assert (=> b!2941149 (= e!1853543 (matchR!3979 (derivativeStep!2486 lt!1030032 (head!6545 s!11993)) (tail!4771 s!11993)))))

(declare-fun b!2941150 () Bool)

(assert (=> b!2941150 (= e!1853547 (not (= (head!6545 s!11993) (c!480809 lt!1030032))))))

(assert (= (and d!840208 c!480923) b!2941137))

(assert (= (and d!840208 (not c!480923)) b!2941149))

(assert (= (and d!840208 c!480921) b!2941141))

(assert (= (and d!840208 (not c!480921)) b!2941146))

(assert (= (and b!2941146 c!480922) b!2941147))

(assert (= (and b!2941146 (not c!480922)) b!2941139))

(assert (= (and b!2941139 (not res!1213866)) b!2941145))

(assert (= (and b!2941145 res!1213865) b!2941140))

(assert (= (and b!2941140 res!1213864) b!2941143))

(assert (= (and b!2941143 res!1213870) b!2941148))

(assert (= (and b!2941145 (not res!1213869)) b!2941138))

(assert (= (and b!2941138 res!1213863) b!2941144))

(assert (= (and b!2941144 (not res!1213867)) b!2941142))

(assert (= (and b!2941142 (not res!1213868)) b!2941150))

(assert (= (or b!2941141 b!2941140 b!2941144) bm!193697))

(assert (=> b!2941148 m!3325461))

(declare-fun m!3325493 () Bool)

(assert (=> b!2941137 m!3325493))

(assert (=> b!2941143 m!3325465))

(assert (=> b!2941143 m!3325465))

(assert (=> b!2941143 m!3325467))

(assert (=> bm!193697 m!3325361))

(assert (=> b!2941150 m!3325461))

(assert (=> d!840208 m!3325361))

(declare-fun m!3325495 () Bool)

(assert (=> d!840208 m!3325495))

(assert (=> b!2941142 m!3325465))

(assert (=> b!2941142 m!3325465))

(assert (=> b!2941142 m!3325467))

(assert (=> b!2941149 m!3325461))

(assert (=> b!2941149 m!3325461))

(declare-fun m!3325497 () Bool)

(assert (=> b!2941149 m!3325497))

(assert (=> b!2941149 m!3325465))

(assert (=> b!2941149 m!3325497))

(assert (=> b!2941149 m!3325465))

(declare-fun m!3325499 () Bool)

(assert (=> b!2941149 m!3325499))

(assert (=> b!2940703 d!840208))

(declare-fun d!840210 () Bool)

(assert (=> d!840210 (= (matchR!3979 (regTwo!18706 r!17423) s!11993) (matchR!3979 (simplify!102 (regTwo!18706 r!17423)) s!11993))))

(declare-fun lt!1030081 () Unit!48573)

(declare-fun choose!17394 (Regex!9097 List!34962) Unit!48573)

(assert (=> d!840210 (= lt!1030081 (choose!17394 (regTwo!18706 r!17423) s!11993))))

(assert (=> d!840210 (validRegex!3830 (regTwo!18706 r!17423))))

(assert (=> d!840210 (= (lemmaSimplifySound!86 (regTwo!18706 r!17423) s!11993) lt!1030081)))

(declare-fun bs!525508 () Bool)

(assert (= bs!525508 d!840210))

(assert (=> bs!525508 m!3325345))

(declare-fun m!3325501 () Bool)

(assert (=> bs!525508 m!3325501))

(assert (=> bs!525508 m!3325353))

(assert (=> bs!525508 m!3325353))

(declare-fun m!3325503 () Bool)

(assert (=> bs!525508 m!3325503))

(assert (=> bs!525508 m!3325343))

(assert (=> b!2940703 d!840210))

(declare-fun d!840212 () Bool)

(assert (=> d!840212 (= (isEmpty!19099 s!11993) ((_ is Nil!34838) s!11993))))

(assert (=> b!2940701 d!840212))

(declare-fun d!840214 () Bool)

(assert (=> d!840214 (= (isEmptyLang!221 lt!1030032) ((_ is EmptyLang!9097) lt!1030032))))

(assert (=> b!2940707 d!840214))

(declare-fun d!840216 () Bool)

(assert (=> d!840216 (= (isEmptyLang!221 lt!1030033) ((_ is EmptyLang!9097) lt!1030033))))

(assert (=> b!2940705 d!840216))

(declare-fun b!2941201 () Bool)

(declare-fun e!1853578 () Regex!9097)

(declare-fun e!1853579 () Regex!9097)

(assert (=> b!2941201 (= e!1853578 e!1853579)))

(declare-fun c!480953 () Bool)

(assert (=> b!2941201 (= c!480953 ((_ is ElementMatch!9097) (regTwo!18706 r!17423)))))

(declare-fun b!2941202 () Bool)

(declare-fun c!480947 () Bool)

(declare-fun call!193721 () Bool)

(assert (=> b!2941202 (= c!480947 call!193721)))

(declare-fun e!1853581 () Regex!9097)

(declare-fun e!1853587 () Regex!9097)

(assert (=> b!2941202 (= e!1853581 e!1853587)))

(declare-fun lt!1030098 () Regex!9097)

(declare-fun bm!193712 () Bool)

(declare-fun call!193722 () Bool)

(declare-fun lt!1030099 () Regex!9097)

(declare-fun lt!1030095 () Regex!9097)

(declare-fun c!480955 () Bool)

(declare-fun c!480956 () Bool)

(assert (=> bm!193712 (= call!193722 (isEmptyLang!221 (ite c!480955 lt!1030099 (ite c!480956 lt!1030098 lt!1030095))))))

(declare-fun bm!193713 () Bool)

(assert (=> bm!193713 (= call!193721 call!193722)))

(declare-fun bm!193714 () Bool)

(declare-fun call!193719 () Regex!9097)

(assert (=> bm!193714 (= call!193719 (simplify!102 (ite c!480955 (reg!9426 (regTwo!18706 r!17423)) (ite c!480956 (regOne!18707 (regTwo!18706 r!17423)) (regTwo!18706 (regTwo!18706 r!17423))))))))

(declare-fun b!2941203 () Bool)

(declare-fun lt!1030094 () Regex!9097)

(assert (=> b!2941203 (= e!1853587 (Union!9097 lt!1030094 lt!1030098))))

(declare-fun b!2941204 () Bool)

(assert (=> b!2941204 (= c!480956 ((_ is Union!9097) (regTwo!18706 r!17423)))))

(declare-fun e!1853589 () Regex!9097)

(declare-fun e!1853585 () Regex!9097)

(assert (=> b!2941204 (= e!1853589 e!1853585)))

(declare-fun b!2941205 () Bool)

(assert (=> b!2941205 (= e!1853579 (regTwo!18706 r!17423))))

(declare-fun b!2941206 () Bool)

(declare-fun c!480946 () Bool)

(assert (=> b!2941206 (= c!480946 ((_ is EmptyExpr!9097) (regTwo!18706 r!17423)))))

(declare-fun e!1853586 () Regex!9097)

(assert (=> b!2941206 (= e!1853579 e!1853586)))

(declare-fun b!2941207 () Bool)

(declare-fun e!1853590 () Bool)

(declare-fun lt!1030096 () Regex!9097)

(assert (=> b!2941207 (= e!1853590 (= (nullable!2875 lt!1030096) (nullable!2875 (regTwo!18706 r!17423))))))

(declare-fun d!840218 () Bool)

(assert (=> d!840218 e!1853590))

(declare-fun res!1213878 () Bool)

(assert (=> d!840218 (=> (not res!1213878) (not e!1853590))))

(assert (=> d!840218 (= res!1213878 (validRegex!3830 lt!1030096))))

(assert (=> d!840218 (= lt!1030096 e!1853578)))

(declare-fun c!480948 () Bool)

(assert (=> d!840218 (= c!480948 ((_ is EmptyLang!9097) (regTwo!18706 r!17423)))))

(assert (=> d!840218 (validRegex!3830 (regTwo!18706 r!17423))))

(assert (=> d!840218 (= (simplify!102 (regTwo!18706 r!17423)) lt!1030096)))

(declare-fun b!2941208 () Bool)

(assert (=> b!2941208 (= e!1853581 lt!1030098)))

(declare-fun b!2941209 () Bool)

(assert (=> b!2941209 (= e!1853586 EmptyExpr!9097)))

(declare-fun b!2941210 () Bool)

(assert (=> b!2941210 (= e!1853578 EmptyLang!9097)))

(declare-fun b!2941211 () Bool)

(assert (=> b!2941211 (= e!1853585 e!1853581)))

(declare-fun call!193723 () Regex!9097)

(assert (=> b!2941211 (= lt!1030094 call!193723)))

(declare-fun call!193718 () Regex!9097)

(assert (=> b!2941211 (= lt!1030098 call!193718)))

(declare-fun c!480950 () Bool)

(declare-fun call!193717 () Bool)

(assert (=> b!2941211 (= c!480950 call!193717)))

(declare-fun bm!193715 () Bool)

(assert (=> bm!193715 (= call!193718 (simplify!102 (ite c!480956 (regTwo!18707 (regTwo!18706 r!17423)) (regOne!18706 (regTwo!18706 r!17423)))))))

(declare-fun b!2941212 () Bool)

(declare-fun c!480951 () Bool)

(declare-fun e!1853588 () Bool)

(assert (=> b!2941212 (= c!480951 e!1853588)))

(declare-fun res!1213877 () Bool)

(assert (=> b!2941212 (=> res!1213877 e!1853588)))

(assert (=> b!2941212 (= res!1213877 call!193722)))

(assert (=> b!2941212 (= lt!1030099 call!193719)))

(declare-fun e!1853582 () Regex!9097)

(assert (=> b!2941212 (= e!1853589 e!1853582)))

(declare-fun b!2941213 () Bool)

(assert (=> b!2941213 (= e!1853587 lt!1030094)))

(declare-fun b!2941214 () Bool)

(declare-fun e!1853580 () Bool)

(assert (=> b!2941214 (= e!1853580 call!193717)))

(declare-fun b!2941215 () Bool)

(declare-fun e!1853591 () Regex!9097)

(assert (=> b!2941215 (= e!1853591 lt!1030095)))

(declare-fun b!2941216 () Bool)

(declare-fun lt!1030097 () Regex!9097)

(assert (=> b!2941216 (= e!1853591 (Concat!14418 lt!1030095 lt!1030097))))

(declare-fun b!2941217 () Bool)

(declare-fun e!1853583 () Regex!9097)

(assert (=> b!2941217 (= e!1853583 e!1853591)))

(declare-fun c!480952 () Bool)

(assert (=> b!2941217 (= c!480952 (isEmptyExpr!302 lt!1030097))))

(declare-fun b!2941218 () Bool)

(assert (=> b!2941218 (= e!1853582 (Star!9097 lt!1030099))))

(declare-fun b!2941219 () Bool)

(declare-fun call!193720 () Bool)

(assert (=> b!2941219 (= e!1853588 call!193720)))

(declare-fun bm!193716 () Bool)

(assert (=> bm!193716 (= call!193723 call!193719)))

(declare-fun b!2941220 () Bool)

(declare-fun e!1853584 () Regex!9097)

(assert (=> b!2941220 (= e!1853584 EmptyLang!9097)))

(declare-fun b!2941221 () Bool)

(assert (=> b!2941221 (= e!1853585 e!1853584)))

(assert (=> b!2941221 (= lt!1030095 call!193718)))

(assert (=> b!2941221 (= lt!1030097 call!193723)))

(declare-fun res!1213879 () Bool)

(assert (=> b!2941221 (= res!1213879 call!193721)))

(assert (=> b!2941221 (=> res!1213879 e!1853580)))

(declare-fun c!480954 () Bool)

(assert (=> b!2941221 (= c!480954 e!1853580)))

(declare-fun b!2941222 () Bool)

(assert (=> b!2941222 (= e!1853586 e!1853589)))

(assert (=> b!2941222 (= c!480955 ((_ is Star!9097) (regTwo!18706 r!17423)))))

(declare-fun b!2941223 () Bool)

(assert (=> b!2941223 (= e!1853582 EmptyExpr!9097)))

(declare-fun b!2941224 () Bool)

(declare-fun c!480949 () Bool)

(assert (=> b!2941224 (= c!480949 call!193720)))

(assert (=> b!2941224 (= e!1853584 e!1853583)))

(declare-fun bm!193717 () Bool)

(assert (=> bm!193717 (= call!193717 (isEmptyLang!221 (ite c!480956 lt!1030094 lt!1030097)))))

(declare-fun bm!193718 () Bool)

(assert (=> bm!193718 (= call!193720 (isEmptyExpr!302 (ite c!480955 lt!1030099 lt!1030095)))))

(declare-fun b!2941225 () Bool)

(assert (=> b!2941225 (= e!1853583 lt!1030097)))

(assert (= (and d!840218 c!480948) b!2941210))

(assert (= (and d!840218 (not c!480948)) b!2941201))

(assert (= (and b!2941201 c!480953) b!2941205))

(assert (= (and b!2941201 (not c!480953)) b!2941206))

(assert (= (and b!2941206 c!480946) b!2941209))

(assert (= (and b!2941206 (not c!480946)) b!2941222))

(assert (= (and b!2941222 c!480955) b!2941212))

(assert (= (and b!2941222 (not c!480955)) b!2941204))

(assert (= (and b!2941212 (not res!1213877)) b!2941219))

(assert (= (and b!2941212 c!480951) b!2941223))

(assert (= (and b!2941212 (not c!480951)) b!2941218))

(assert (= (and b!2941204 c!480956) b!2941211))

(assert (= (and b!2941204 (not c!480956)) b!2941221))

(assert (= (and b!2941211 c!480950) b!2941208))

(assert (= (and b!2941211 (not c!480950)) b!2941202))

(assert (= (and b!2941202 c!480947) b!2941213))

(assert (= (and b!2941202 (not c!480947)) b!2941203))

(assert (= (and b!2941221 (not res!1213879)) b!2941214))

(assert (= (and b!2941221 c!480954) b!2941220))

(assert (= (and b!2941221 (not c!480954)) b!2941224))

(assert (= (and b!2941224 c!480949) b!2941225))

(assert (= (and b!2941224 (not c!480949)) b!2941217))

(assert (= (and b!2941217 c!480952) b!2941215))

(assert (= (and b!2941217 (not c!480952)) b!2941216))

(assert (= (or b!2941211 b!2941221) bm!193716))

(assert (= (or b!2941211 b!2941221) bm!193715))

(assert (= (or b!2941202 b!2941221) bm!193713))

(assert (= (or b!2941211 b!2941214) bm!193717))

(assert (= (or b!2941219 b!2941224) bm!193718))

(assert (= (or b!2941212 bm!193716) bm!193714))

(assert (= (or b!2941212 bm!193713) bm!193712))

(assert (= (and d!840218 res!1213878) b!2941207))

(declare-fun m!3325505 () Bool)

(assert (=> bm!193714 m!3325505))

(declare-fun m!3325507 () Bool)

(assert (=> b!2941207 m!3325507))

(assert (=> b!2941207 m!3325487))

(declare-fun m!3325509 () Bool)

(assert (=> d!840218 m!3325509))

(assert (=> d!840218 m!3325343))

(declare-fun m!3325511 () Bool)

(assert (=> bm!193712 m!3325511))

(declare-fun m!3325513 () Bool)

(assert (=> b!2941217 m!3325513))

(declare-fun m!3325515 () Bool)

(assert (=> bm!193715 m!3325515))

(declare-fun m!3325517 () Bool)

(assert (=> bm!193717 m!3325517))

(declare-fun m!3325519 () Bool)

(assert (=> bm!193718 m!3325519))

(assert (=> b!2940705 d!840218))

(declare-fun b!2941226 () Bool)

(declare-fun e!1853592 () Regex!9097)

(declare-fun e!1853593 () Regex!9097)

(assert (=> b!2941226 (= e!1853592 e!1853593)))

(declare-fun c!480964 () Bool)

(assert (=> b!2941226 (= c!480964 ((_ is ElementMatch!9097) (regOne!18706 r!17423)))))

(declare-fun b!2941227 () Bool)

(declare-fun c!480958 () Bool)

(declare-fun call!193728 () Bool)

(assert (=> b!2941227 (= c!480958 call!193728)))

(declare-fun e!1853595 () Regex!9097)

(declare-fun e!1853601 () Regex!9097)

(assert (=> b!2941227 (= e!1853595 e!1853601)))

(declare-fun c!480966 () Bool)

(declare-fun bm!193719 () Bool)

(declare-fun call!193729 () Bool)

(declare-fun lt!1030104 () Regex!9097)

(declare-fun lt!1030101 () Regex!9097)

(declare-fun lt!1030105 () Regex!9097)

(declare-fun c!480967 () Bool)

(assert (=> bm!193719 (= call!193729 (isEmptyLang!221 (ite c!480966 lt!1030105 (ite c!480967 lt!1030104 lt!1030101))))))

(declare-fun bm!193720 () Bool)

(assert (=> bm!193720 (= call!193728 call!193729)))

(declare-fun bm!193721 () Bool)

(declare-fun call!193726 () Regex!9097)

(assert (=> bm!193721 (= call!193726 (simplify!102 (ite c!480966 (reg!9426 (regOne!18706 r!17423)) (ite c!480967 (regOne!18707 (regOne!18706 r!17423)) (regTwo!18706 (regOne!18706 r!17423))))))))

(declare-fun b!2941228 () Bool)

(declare-fun lt!1030100 () Regex!9097)

(assert (=> b!2941228 (= e!1853601 (Union!9097 lt!1030100 lt!1030104))))

(declare-fun b!2941229 () Bool)

(assert (=> b!2941229 (= c!480967 ((_ is Union!9097) (regOne!18706 r!17423)))))

(declare-fun e!1853603 () Regex!9097)

(declare-fun e!1853599 () Regex!9097)

(assert (=> b!2941229 (= e!1853603 e!1853599)))

(declare-fun b!2941230 () Bool)

(assert (=> b!2941230 (= e!1853593 (regOne!18706 r!17423))))

(declare-fun b!2941231 () Bool)

(declare-fun c!480957 () Bool)

(assert (=> b!2941231 (= c!480957 ((_ is EmptyExpr!9097) (regOne!18706 r!17423)))))

(declare-fun e!1853600 () Regex!9097)

(assert (=> b!2941231 (= e!1853593 e!1853600)))

(declare-fun b!2941232 () Bool)

(declare-fun e!1853604 () Bool)

(declare-fun lt!1030102 () Regex!9097)

(assert (=> b!2941232 (= e!1853604 (= (nullable!2875 lt!1030102) (nullable!2875 (regOne!18706 r!17423))))))

(declare-fun d!840220 () Bool)

(assert (=> d!840220 e!1853604))

(declare-fun res!1213881 () Bool)

(assert (=> d!840220 (=> (not res!1213881) (not e!1853604))))

(assert (=> d!840220 (= res!1213881 (validRegex!3830 lt!1030102))))

(assert (=> d!840220 (= lt!1030102 e!1853592)))

(declare-fun c!480959 () Bool)

(assert (=> d!840220 (= c!480959 ((_ is EmptyLang!9097) (regOne!18706 r!17423)))))

(assert (=> d!840220 (validRegex!3830 (regOne!18706 r!17423))))

(assert (=> d!840220 (= (simplify!102 (regOne!18706 r!17423)) lt!1030102)))

(declare-fun b!2941233 () Bool)

(assert (=> b!2941233 (= e!1853595 lt!1030104)))

(declare-fun b!2941234 () Bool)

(assert (=> b!2941234 (= e!1853600 EmptyExpr!9097)))

(declare-fun b!2941235 () Bool)

(assert (=> b!2941235 (= e!1853592 EmptyLang!9097)))

(declare-fun b!2941236 () Bool)

(assert (=> b!2941236 (= e!1853599 e!1853595)))

(declare-fun call!193730 () Regex!9097)

(assert (=> b!2941236 (= lt!1030100 call!193730)))

(declare-fun call!193725 () Regex!9097)

(assert (=> b!2941236 (= lt!1030104 call!193725)))

(declare-fun c!480961 () Bool)

(declare-fun call!193724 () Bool)

(assert (=> b!2941236 (= c!480961 call!193724)))

(declare-fun bm!193722 () Bool)

(assert (=> bm!193722 (= call!193725 (simplify!102 (ite c!480967 (regTwo!18707 (regOne!18706 r!17423)) (regOne!18706 (regOne!18706 r!17423)))))))

(declare-fun b!2941237 () Bool)

(declare-fun c!480962 () Bool)

(declare-fun e!1853602 () Bool)

(assert (=> b!2941237 (= c!480962 e!1853602)))

(declare-fun res!1213880 () Bool)

(assert (=> b!2941237 (=> res!1213880 e!1853602)))

(assert (=> b!2941237 (= res!1213880 call!193729)))

(assert (=> b!2941237 (= lt!1030105 call!193726)))

(declare-fun e!1853596 () Regex!9097)

(assert (=> b!2941237 (= e!1853603 e!1853596)))

(declare-fun b!2941238 () Bool)

(assert (=> b!2941238 (= e!1853601 lt!1030100)))

(declare-fun b!2941239 () Bool)

(declare-fun e!1853594 () Bool)

(assert (=> b!2941239 (= e!1853594 call!193724)))

(declare-fun b!2941240 () Bool)

(declare-fun e!1853605 () Regex!9097)

(assert (=> b!2941240 (= e!1853605 lt!1030101)))

(declare-fun b!2941241 () Bool)

(declare-fun lt!1030103 () Regex!9097)

(assert (=> b!2941241 (= e!1853605 (Concat!14418 lt!1030101 lt!1030103))))

(declare-fun b!2941242 () Bool)

(declare-fun e!1853597 () Regex!9097)

(assert (=> b!2941242 (= e!1853597 e!1853605)))

(declare-fun c!480963 () Bool)

(assert (=> b!2941242 (= c!480963 (isEmptyExpr!302 lt!1030103))))

(declare-fun b!2941243 () Bool)

(assert (=> b!2941243 (= e!1853596 (Star!9097 lt!1030105))))

(declare-fun b!2941244 () Bool)

(declare-fun call!193727 () Bool)

(assert (=> b!2941244 (= e!1853602 call!193727)))

(declare-fun bm!193723 () Bool)

(assert (=> bm!193723 (= call!193730 call!193726)))

(declare-fun b!2941245 () Bool)

(declare-fun e!1853598 () Regex!9097)

(assert (=> b!2941245 (= e!1853598 EmptyLang!9097)))

(declare-fun b!2941246 () Bool)

(assert (=> b!2941246 (= e!1853599 e!1853598)))

(assert (=> b!2941246 (= lt!1030101 call!193725)))

(assert (=> b!2941246 (= lt!1030103 call!193730)))

(declare-fun res!1213882 () Bool)

(assert (=> b!2941246 (= res!1213882 call!193728)))

(assert (=> b!2941246 (=> res!1213882 e!1853594)))

(declare-fun c!480965 () Bool)

(assert (=> b!2941246 (= c!480965 e!1853594)))

(declare-fun b!2941247 () Bool)

(assert (=> b!2941247 (= e!1853600 e!1853603)))

(assert (=> b!2941247 (= c!480966 ((_ is Star!9097) (regOne!18706 r!17423)))))

(declare-fun b!2941248 () Bool)

(assert (=> b!2941248 (= e!1853596 EmptyExpr!9097)))

(declare-fun b!2941249 () Bool)

(declare-fun c!480960 () Bool)

(assert (=> b!2941249 (= c!480960 call!193727)))

(assert (=> b!2941249 (= e!1853598 e!1853597)))

(declare-fun bm!193724 () Bool)

(assert (=> bm!193724 (= call!193724 (isEmptyLang!221 (ite c!480967 lt!1030100 lt!1030103)))))

(declare-fun bm!193725 () Bool)

(assert (=> bm!193725 (= call!193727 (isEmptyExpr!302 (ite c!480966 lt!1030105 lt!1030101)))))

(declare-fun b!2941250 () Bool)

(assert (=> b!2941250 (= e!1853597 lt!1030103)))

(assert (= (and d!840220 c!480959) b!2941235))

(assert (= (and d!840220 (not c!480959)) b!2941226))

(assert (= (and b!2941226 c!480964) b!2941230))

(assert (= (and b!2941226 (not c!480964)) b!2941231))

(assert (= (and b!2941231 c!480957) b!2941234))

(assert (= (and b!2941231 (not c!480957)) b!2941247))

(assert (= (and b!2941247 c!480966) b!2941237))

(assert (= (and b!2941247 (not c!480966)) b!2941229))

(assert (= (and b!2941237 (not res!1213880)) b!2941244))

(assert (= (and b!2941237 c!480962) b!2941248))

(assert (= (and b!2941237 (not c!480962)) b!2941243))

(assert (= (and b!2941229 c!480967) b!2941236))

(assert (= (and b!2941229 (not c!480967)) b!2941246))

(assert (= (and b!2941236 c!480961) b!2941233))

(assert (= (and b!2941236 (not c!480961)) b!2941227))

(assert (= (and b!2941227 c!480958) b!2941238))

(assert (= (and b!2941227 (not c!480958)) b!2941228))

(assert (= (and b!2941246 (not res!1213882)) b!2941239))

(assert (= (and b!2941246 c!480965) b!2941245))

(assert (= (and b!2941246 (not c!480965)) b!2941249))

(assert (= (and b!2941249 c!480960) b!2941250))

(assert (= (and b!2941249 (not c!480960)) b!2941242))

(assert (= (and b!2941242 c!480963) b!2941240))

(assert (= (and b!2941242 (not c!480963)) b!2941241))

(assert (= (or b!2941236 b!2941246) bm!193723))

(assert (= (or b!2941236 b!2941246) bm!193722))

(assert (= (or b!2941227 b!2941246) bm!193720))

(assert (= (or b!2941236 b!2941239) bm!193724))

(assert (= (or b!2941244 b!2941249) bm!193725))

(assert (= (or b!2941237 bm!193723) bm!193721))

(assert (= (or b!2941237 bm!193720) bm!193719))

(assert (= (and d!840220 res!1213881) b!2941232))

(declare-fun m!3325521 () Bool)

(assert (=> bm!193721 m!3325521))

(declare-fun m!3325523 () Bool)

(assert (=> b!2941232 m!3325523))

(declare-fun m!3325525 () Bool)

(assert (=> b!2941232 m!3325525))

(declare-fun m!3325527 () Bool)

(assert (=> d!840220 m!3325527))

(declare-fun m!3325529 () Bool)

(assert (=> d!840220 m!3325529))

(declare-fun m!3325531 () Bool)

(assert (=> bm!193719 m!3325531))

(declare-fun m!3325533 () Bool)

(assert (=> b!2941242 m!3325533))

(declare-fun m!3325535 () Bool)

(assert (=> bm!193722 m!3325535))

(declare-fun m!3325537 () Bool)

(assert (=> bm!193724 m!3325537))

(declare-fun m!3325539 () Bool)

(assert (=> bm!193725 m!3325539))

(assert (=> b!2940705 d!840220))

(declare-fun b!2941264 () Bool)

(declare-fun e!1853608 () Bool)

(declare-fun tp!941246 () Bool)

(declare-fun tp!941248 () Bool)

(assert (=> b!2941264 (= e!1853608 (and tp!941246 tp!941248))))

(assert (=> b!2940709 (= tp!941193 e!1853608)))

(declare-fun b!2941262 () Bool)

(declare-fun tp!941250 () Bool)

(declare-fun tp!941247 () Bool)

(assert (=> b!2941262 (= e!1853608 (and tp!941250 tp!941247))))

(declare-fun b!2941263 () Bool)

(declare-fun tp!941249 () Bool)

(assert (=> b!2941263 (= e!1853608 tp!941249)))

(declare-fun b!2941261 () Bool)

(assert (=> b!2941261 (= e!1853608 tp_is_empty!15757)))

(assert (= (and b!2940709 ((_ is ElementMatch!9097) (reg!9426 r!17423))) b!2941261))

(assert (= (and b!2940709 ((_ is Concat!14418) (reg!9426 r!17423))) b!2941262))

(assert (= (and b!2940709 ((_ is Star!9097) (reg!9426 r!17423))) b!2941263))

(assert (= (and b!2940709 ((_ is Union!9097) (reg!9426 r!17423))) b!2941264))

(declare-fun b!2941269 () Bool)

(declare-fun e!1853611 () Bool)

(declare-fun tp!941253 () Bool)

(assert (=> b!2941269 (= e!1853611 (and tp_is_empty!15757 tp!941253))))

(assert (=> b!2940702 (= tp!941197 e!1853611)))

(assert (= (and b!2940702 ((_ is Cons!34838) (t!234027 s!11993))) b!2941269))

(declare-fun b!2941273 () Bool)

(declare-fun e!1853612 () Bool)

(declare-fun tp!941254 () Bool)

(declare-fun tp!941256 () Bool)

(assert (=> b!2941273 (= e!1853612 (and tp!941254 tp!941256))))

(assert (=> b!2940708 (= tp!941196 e!1853612)))

(declare-fun b!2941271 () Bool)

(declare-fun tp!941258 () Bool)

(declare-fun tp!941255 () Bool)

(assert (=> b!2941271 (= e!1853612 (and tp!941258 tp!941255))))

(declare-fun b!2941272 () Bool)

(declare-fun tp!941257 () Bool)

(assert (=> b!2941272 (= e!1853612 tp!941257)))

(declare-fun b!2941270 () Bool)

(assert (=> b!2941270 (= e!1853612 tp_is_empty!15757)))

(assert (= (and b!2940708 ((_ is ElementMatch!9097) (regOne!18706 r!17423))) b!2941270))

(assert (= (and b!2940708 ((_ is Concat!14418) (regOne!18706 r!17423))) b!2941271))

(assert (= (and b!2940708 ((_ is Star!9097) (regOne!18706 r!17423))) b!2941272))

(assert (= (and b!2940708 ((_ is Union!9097) (regOne!18706 r!17423))) b!2941273))

(declare-fun b!2941277 () Bool)

(declare-fun e!1853613 () Bool)

(declare-fun tp!941259 () Bool)

(declare-fun tp!941261 () Bool)

(assert (=> b!2941277 (= e!1853613 (and tp!941259 tp!941261))))

(assert (=> b!2940708 (= tp!941195 e!1853613)))

(declare-fun b!2941275 () Bool)

(declare-fun tp!941263 () Bool)

(declare-fun tp!941260 () Bool)

(assert (=> b!2941275 (= e!1853613 (and tp!941263 tp!941260))))

(declare-fun b!2941276 () Bool)

(declare-fun tp!941262 () Bool)

(assert (=> b!2941276 (= e!1853613 tp!941262)))

(declare-fun b!2941274 () Bool)

(assert (=> b!2941274 (= e!1853613 tp_is_empty!15757)))

(assert (= (and b!2940708 ((_ is ElementMatch!9097) (regTwo!18706 r!17423))) b!2941274))

(assert (= (and b!2940708 ((_ is Concat!14418) (regTwo!18706 r!17423))) b!2941275))

(assert (= (and b!2940708 ((_ is Star!9097) (regTwo!18706 r!17423))) b!2941276))

(assert (= (and b!2940708 ((_ is Union!9097) (regTwo!18706 r!17423))) b!2941277))

(declare-fun b!2941281 () Bool)

(declare-fun e!1853614 () Bool)

(declare-fun tp!941264 () Bool)

(declare-fun tp!941266 () Bool)

(assert (=> b!2941281 (= e!1853614 (and tp!941264 tp!941266))))

(assert (=> b!2940700 (= tp!941194 e!1853614)))

(declare-fun b!2941279 () Bool)

(declare-fun tp!941268 () Bool)

(declare-fun tp!941265 () Bool)

(assert (=> b!2941279 (= e!1853614 (and tp!941268 tp!941265))))

(declare-fun b!2941280 () Bool)

(declare-fun tp!941267 () Bool)

(assert (=> b!2941280 (= e!1853614 tp!941267)))

(declare-fun b!2941278 () Bool)

(assert (=> b!2941278 (= e!1853614 tp_is_empty!15757)))

(assert (= (and b!2940700 ((_ is ElementMatch!9097) (regOne!18707 r!17423))) b!2941278))

(assert (= (and b!2940700 ((_ is Concat!14418) (regOne!18707 r!17423))) b!2941279))

(assert (= (and b!2940700 ((_ is Star!9097) (regOne!18707 r!17423))) b!2941280))

(assert (= (and b!2940700 ((_ is Union!9097) (regOne!18707 r!17423))) b!2941281))

(declare-fun b!2941285 () Bool)

(declare-fun e!1853615 () Bool)

(declare-fun tp!941269 () Bool)

(declare-fun tp!941271 () Bool)

(assert (=> b!2941285 (= e!1853615 (and tp!941269 tp!941271))))

(assert (=> b!2940700 (= tp!941192 e!1853615)))

(declare-fun b!2941283 () Bool)

(declare-fun tp!941273 () Bool)

(declare-fun tp!941270 () Bool)

(assert (=> b!2941283 (= e!1853615 (and tp!941273 tp!941270))))

(declare-fun b!2941284 () Bool)

(declare-fun tp!941272 () Bool)

(assert (=> b!2941284 (= e!1853615 tp!941272)))

(declare-fun b!2941282 () Bool)

(assert (=> b!2941282 (= e!1853615 tp_is_empty!15757)))

(assert (= (and b!2940700 ((_ is ElementMatch!9097) (regTwo!18707 r!17423))) b!2941282))

(assert (= (and b!2940700 ((_ is Concat!14418) (regTwo!18707 r!17423))) b!2941283))

(assert (= (and b!2940700 ((_ is Star!9097) (regTwo!18707 r!17423))) b!2941284))

(assert (= (and b!2940700 ((_ is Union!9097) (regTwo!18707 r!17423))) b!2941285))

(check-sat (not b!2941128) (not b!2941272) (not b!2941149) (not b!2941143) (not b!2941283) (not d!840198) (not b!2941285) (not b!2941034) (not bm!193679) (not b!2941129) (not b!2941279) (not b!2941085) (not b!2941217) (not bm!193697) (not d!840208) (not d!840220) (not bm!193718) (not b!2941263) (not b!2941273) (not b!2941276) (not b!2941281) (not b!2941269) (not bm!193696) (not bm!193692) (not bm!193683) (not b!2941134) (not b!2941207) (not b!2941277) (not b!2941119) (not b!2941078) (not b!2941280) (not d!840196) (not bm!193680) (not b!2941275) (not b!2941073) (not b!2941148) (not bm!193721) (not b!2941137) (not b!2941123) (not b!2941110) (not b!2941030) (not d!840210) (not bm!193690) (not d!840218) (not b!2941086) (not bm!193724) (not b!2941084) (not bm!193714) (not b!2941284) (not bm!193717) (not bm!193712) (not bm!193693) (not b!2941264) (not b!2941242) (not b!2941271) (not bm!193695) (not bm!193722) tp_is_empty!15757 (not b!2941142) (not b!2941135) (not d!840206) (not b!2941262) (not b!2941150) (not b!2941136) (not bm!193719) (not bm!193715) (not b!2941079) (not bm!193725) (not b!2941232))
(check-sat)
