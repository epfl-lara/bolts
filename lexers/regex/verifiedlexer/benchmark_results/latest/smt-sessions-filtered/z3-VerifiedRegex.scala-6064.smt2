; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296084 () Bool)

(assert start!296084)

(declare-fun b!3149090 () Bool)

(declare-fun e!1963267 () Bool)

(declare-datatypes ((C!19544 0))(
  ( (C!19545 (val!11808 Int)) )
))
(declare-datatypes ((Regex!9679 0))(
  ( (ElementMatch!9679 (c!529497 C!19544)) (Concat!15000 (regOne!19870 Regex!9679) (regTwo!19870 Regex!9679)) (EmptyExpr!9679) (Star!9679 (reg!10008 Regex!9679)) (EmptyLang!9679) (Union!9679 (regOne!19871 Regex!9679) (regTwo!19871 Regex!9679)) )
))
(declare-fun r!17345 () Regex!9679)

(declare-fun regexDepth!129 (Regex!9679) Int)

(assert (=> b!3149090 (= e!1963267 (>= (regexDepth!129 (regOne!19870 r!17345)) (regexDepth!129 r!17345)))))

(declare-fun b!3149091 () Bool)

(declare-fun res!1284626 () Bool)

(assert (=> b!3149091 (=> (not res!1284626) (not e!1963267))))

(get-info :version)

(assert (=> b!3149091 (= res!1284626 (and (not ((_ is EmptyLang!9679) r!17345)) (not ((_ is ElementMatch!9679) r!17345)) (not ((_ is EmptyExpr!9679) r!17345)) (not ((_ is Star!9679) r!17345)) (not ((_ is Union!9679) r!17345))))))

(declare-fun b!3149092 () Bool)

(declare-fun e!1963266 () Bool)

(declare-fun tp_is_empty!16921 () Bool)

(assert (=> b!3149092 (= e!1963266 tp_is_empty!16921)))

(declare-fun b!3149093 () Bool)

(declare-fun tp!987871 () Bool)

(declare-fun tp!987873 () Bool)

(assert (=> b!3149093 (= e!1963266 (and tp!987871 tp!987873))))

(declare-fun b!3149094 () Bool)

(declare-fun tp!987872 () Bool)

(assert (=> b!3149094 (= e!1963266 tp!987872)))

(declare-fun b!3149095 () Bool)

(declare-fun tp!987875 () Bool)

(declare-fun tp!987874 () Bool)

(assert (=> b!3149095 (= e!1963266 (and tp!987875 tp!987874))))

(declare-fun res!1284625 () Bool)

(assert (=> start!296084 (=> (not res!1284625) (not e!1963267))))

(declare-fun validRegex!4412 (Regex!9679) Bool)

(assert (=> start!296084 (= res!1284625 (validRegex!4412 r!17345))))

(assert (=> start!296084 e!1963267))

(assert (=> start!296084 e!1963266))

(assert (= (and start!296084 res!1284625) b!3149091))

(assert (= (and b!3149091 res!1284626) b!3149090))

(assert (= (and start!296084 ((_ is ElementMatch!9679) r!17345)) b!3149092))

(assert (= (and start!296084 ((_ is Concat!15000) r!17345)) b!3149095))

(assert (= (and start!296084 ((_ is Star!9679) r!17345)) b!3149094))

(assert (= (and start!296084 ((_ is Union!9679) r!17345)) b!3149093))

(declare-fun m!3421127 () Bool)

(assert (=> b!3149090 m!3421127))

(declare-fun m!3421129 () Bool)

(assert (=> b!3149090 m!3421129))

(declare-fun m!3421131 () Bool)

(assert (=> start!296084 m!3421131))

(check-sat tp_is_empty!16921 (not b!3149090) (not b!3149093) (not b!3149094) (not b!3149095) (not start!296084))
(check-sat)
(get-model)

(declare-fun c!529506 () Bool)

(declare-fun call!227014 () Bool)

(declare-fun bm!227008 () Bool)

(declare-fun c!529507 () Bool)

(assert (=> bm!227008 (= call!227014 (validRegex!4412 (ite c!529507 (reg!10008 r!17345) (ite c!529506 (regTwo!19871 r!17345) (regOne!19870 r!17345)))))))

(declare-fun b!3149128 () Bool)

(declare-fun e!1963297 () Bool)

(declare-fun e!1963295 () Bool)

(assert (=> b!3149128 (= e!1963297 e!1963295)))

(declare-fun res!1284645 () Bool)

(assert (=> b!3149128 (=> (not res!1284645) (not e!1963295))))

(declare-fun call!227013 () Bool)

(assert (=> b!3149128 (= res!1284645 call!227013)))

(declare-fun b!3149129 () Bool)

(declare-fun e!1963292 () Bool)

(assert (=> b!3149129 (= e!1963292 call!227013)))

(declare-fun b!3149130 () Bool)

(declare-fun e!1963293 () Bool)

(declare-fun e!1963296 () Bool)

(assert (=> b!3149130 (= e!1963293 e!1963296)))

(declare-fun res!1284643 () Bool)

(declare-fun nullable!3312 (Regex!9679) Bool)

(assert (=> b!3149130 (= res!1284643 (not (nullable!3312 (reg!10008 r!17345))))))

(assert (=> b!3149130 (=> (not res!1284643) (not e!1963296))))

(declare-fun d!866847 () Bool)

(declare-fun res!1284647 () Bool)

(declare-fun e!1963294 () Bool)

(assert (=> d!866847 (=> res!1284647 e!1963294)))

(assert (=> d!866847 (= res!1284647 ((_ is ElementMatch!9679) r!17345))))

(assert (=> d!866847 (= (validRegex!4412 r!17345) e!1963294)))

(declare-fun b!3149131 () Bool)

(assert (=> b!3149131 (= e!1963294 e!1963293)))

(assert (=> b!3149131 (= c!529507 ((_ is Star!9679) r!17345))))

(declare-fun b!3149132 () Bool)

(declare-fun e!1963298 () Bool)

(assert (=> b!3149132 (= e!1963293 e!1963298)))

(assert (=> b!3149132 (= c!529506 ((_ is Union!9679) r!17345))))

(declare-fun b!3149133 () Bool)

(assert (=> b!3149133 (= e!1963296 call!227014)))

(declare-fun bm!227009 () Bool)

(assert (=> bm!227009 (= call!227013 call!227014)))

(declare-fun bm!227010 () Bool)

(declare-fun call!227015 () Bool)

(assert (=> bm!227010 (= call!227015 (validRegex!4412 (ite c!529506 (regOne!19871 r!17345) (regTwo!19870 r!17345))))))

(declare-fun b!3149136 () Bool)

(assert (=> b!3149136 (= e!1963295 call!227015)))

(declare-fun b!3149137 () Bool)

(declare-fun res!1284646 () Bool)

(assert (=> b!3149137 (=> (not res!1284646) (not e!1963292))))

(assert (=> b!3149137 (= res!1284646 call!227015)))

(assert (=> b!3149137 (= e!1963298 e!1963292)))

(declare-fun b!3149138 () Bool)

(declare-fun res!1284644 () Bool)

(assert (=> b!3149138 (=> res!1284644 e!1963297)))

(assert (=> b!3149138 (= res!1284644 (not ((_ is Concat!15000) r!17345)))))

(assert (=> b!3149138 (= e!1963298 e!1963297)))

(assert (= (and d!866847 (not res!1284647)) b!3149131))

(assert (= (and b!3149131 c!529507) b!3149130))

(assert (= (and b!3149131 (not c!529507)) b!3149132))

(assert (= (and b!3149130 res!1284643) b!3149133))

(assert (= (and b!3149132 c!529506) b!3149137))

(assert (= (and b!3149132 (not c!529506)) b!3149138))

(assert (= (and b!3149137 res!1284646) b!3149129))

(assert (= (and b!3149138 (not res!1284644)) b!3149128))

(assert (= (and b!3149128 res!1284645) b!3149136))

(assert (= (or b!3149129 b!3149128) bm!227009))

(assert (= (or b!3149137 b!3149136) bm!227010))

(assert (= (or b!3149133 bm!227009) bm!227008))

(declare-fun m!3421133 () Bool)

(assert (=> bm!227008 m!3421133))

(declare-fun m!3421135 () Bool)

(assert (=> b!3149130 m!3421135))

(declare-fun m!3421137 () Bool)

(assert (=> bm!227010 m!3421137))

(assert (=> start!296084 d!866847))

(declare-fun bm!227034 () Bool)

(declare-fun call!227043 () Int)

(declare-fun call!227045 () Int)

(assert (=> bm!227034 (= call!227043 call!227045)))

(declare-fun bm!227035 () Bool)

(declare-fun c!529524 () Bool)

(declare-fun call!227040 () Int)

(declare-fun call!227041 () Int)

(declare-fun call!227042 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!227035 (= call!227040 (maxBigInt!0 (ite c!529524 call!227041 call!227042) (ite c!529524 call!227042 call!227041)))))

(declare-fun bm!227036 () Bool)

(declare-fun c!529530 () Bool)

(declare-fun c!529527 () Bool)

(assert (=> bm!227036 (= call!227045 (regexDepth!129 (ite c!529530 (regTwo!19871 (regOne!19870 r!17345)) (ite c!529527 (regTwo!19870 (regOne!19870 r!17345)) (reg!10008 (regOne!19870 r!17345))))))))

(declare-fun b!3149185 () Bool)

(declare-fun e!1963338 () Bool)

(declare-fun lt!1061817 () Int)

(assert (=> b!3149185 (= e!1963338 (> lt!1061817 call!227045))))

(declare-fun b!3149186 () Bool)

(declare-fun e!1963335 () Int)

(declare-fun e!1963334 () Int)

(assert (=> b!3149186 (= e!1963335 e!1963334)))

(declare-fun c!529529 () Bool)

(assert (=> b!3149186 (= c!529529 ((_ is Concat!15000) (regOne!19870 r!17345)))))

(declare-fun b!3149187 () Bool)

(declare-fun e!1963330 () Bool)

(assert (=> b!3149187 (= e!1963330 (> lt!1061817 call!227043))))

(declare-fun b!3149188 () Bool)

(declare-fun c!529526 () Bool)

(assert (=> b!3149188 (= c!529526 ((_ is Star!9679) (regOne!19870 r!17345)))))

(declare-fun e!1963336 () Bool)

(declare-fun e!1963331 () Bool)

(assert (=> b!3149188 (= e!1963336 e!1963331)))

(declare-fun b!3149189 () Bool)

(assert (=> b!3149189 (= e!1963334 1)))

(declare-fun b!3149190 () Bool)

(assert (=> b!3149190 (= e!1963335 (+ 1 call!227040))))

(declare-fun b!3149191 () Bool)

(declare-fun e!1963333 () Bool)

(assert (=> b!3149191 (= e!1963333 e!1963336)))

(assert (=> b!3149191 (= c!529527 ((_ is Concat!15000) (regOne!19870 r!17345)))))

(declare-fun bm!227037 () Bool)

(declare-fun call!227044 () Int)

(assert (=> bm!227037 (= call!227042 call!227044)))

(declare-fun b!3149192 () Bool)

(assert (=> b!3149192 (= c!529524 ((_ is Union!9679) (regOne!19870 r!17345)))))

(declare-fun e!1963332 () Int)

(assert (=> b!3149192 (= e!1963332 e!1963335)))

(declare-fun b!3149193 () Bool)

(assert (=> b!3149193 (= e!1963331 (= lt!1061817 1))))

(declare-fun bm!227038 () Bool)

(declare-fun c!529525 () Bool)

(assert (=> bm!227038 (= call!227044 (regexDepth!129 (ite c!529525 (reg!10008 (regOne!19870 r!17345)) (ite c!529524 (regTwo!19871 (regOne!19870 r!17345)) (regOne!19870 (regOne!19870 r!17345))))))))

(declare-fun b!3149194 () Bool)

(declare-fun res!1284664 () Bool)

(assert (=> b!3149194 (=> (not res!1284664) (not e!1963330))))

(declare-fun call!227039 () Int)

(assert (=> b!3149194 (= res!1284664 (> lt!1061817 call!227039))))

(assert (=> b!3149194 (= e!1963336 e!1963330)))

(declare-fun d!866851 () Bool)

(declare-fun e!1963337 () Bool)

(assert (=> d!866851 e!1963337))

(declare-fun res!1284663 () Bool)

(assert (=> d!866851 (=> (not res!1284663) (not e!1963337))))

(assert (=> d!866851 (= res!1284663 (> lt!1061817 0))))

(declare-fun e!1963339 () Int)

(assert (=> d!866851 (= lt!1061817 e!1963339)))

(declare-fun c!529528 () Bool)

(assert (=> d!866851 (= c!529528 ((_ is ElementMatch!9679) (regOne!19870 r!17345)))))

(assert (=> d!866851 (= (regexDepth!129 (regOne!19870 r!17345)) lt!1061817)))

(declare-fun b!3149184 () Bool)

(assert (=> b!3149184 (= e!1963331 (> lt!1061817 call!227043))))

(declare-fun b!3149195 () Bool)

(assert (=> b!3149195 (= e!1963339 e!1963332)))

(assert (=> b!3149195 (= c!529525 ((_ is Star!9679) (regOne!19870 r!17345)))))

(declare-fun b!3149196 () Bool)

(assert (=> b!3149196 (= e!1963337 e!1963333)))

(assert (=> b!3149196 (= c!529530 ((_ is Union!9679) (regOne!19870 r!17345)))))

(declare-fun b!3149197 () Bool)

(assert (=> b!3149197 (= e!1963332 (+ 1 call!227044))))

(declare-fun bm!227039 () Bool)

(assert (=> bm!227039 (= call!227039 (regexDepth!129 (ite c!529530 (regOne!19871 (regOne!19870 r!17345)) (regOne!19870 (regOne!19870 r!17345)))))))

(declare-fun b!3149198 () Bool)

(assert (=> b!3149198 (= e!1963339 1)))

(declare-fun b!3149199 () Bool)

(assert (=> b!3149199 (= e!1963334 (+ 1 call!227040))))

(declare-fun bm!227040 () Bool)

(assert (=> bm!227040 (= call!227041 (regexDepth!129 (ite c!529524 (regOne!19871 (regOne!19870 r!17345)) (regTwo!19870 (regOne!19870 r!17345)))))))

(declare-fun b!3149200 () Bool)

(assert (=> b!3149200 (= e!1963333 e!1963338)))

(declare-fun res!1284665 () Bool)

(assert (=> b!3149200 (= res!1284665 (> lt!1061817 call!227039))))

(assert (=> b!3149200 (=> (not res!1284665) (not e!1963338))))

(assert (= (and d!866851 c!529528) b!3149198))

(assert (= (and d!866851 (not c!529528)) b!3149195))

(assert (= (and b!3149195 c!529525) b!3149197))

(assert (= (and b!3149195 (not c!529525)) b!3149192))

(assert (= (and b!3149192 c!529524) b!3149190))

(assert (= (and b!3149192 (not c!529524)) b!3149186))

(assert (= (and b!3149186 c!529529) b!3149199))

(assert (= (and b!3149186 (not c!529529)) b!3149189))

(assert (= (or b!3149190 b!3149199) bm!227040))

(assert (= (or b!3149190 b!3149199) bm!227037))

(assert (= (or b!3149190 b!3149199) bm!227035))

(assert (= (or b!3149197 bm!227037) bm!227038))

(assert (= (and d!866851 res!1284663) b!3149196))

(assert (= (and b!3149196 c!529530) b!3149200))

(assert (= (and b!3149196 (not c!529530)) b!3149191))

(assert (= (and b!3149200 res!1284665) b!3149185))

(assert (= (and b!3149191 c!529527) b!3149194))

(assert (= (and b!3149191 (not c!529527)) b!3149188))

(assert (= (and b!3149194 res!1284664) b!3149187))

(assert (= (and b!3149188 c!529526) b!3149184))

(assert (= (and b!3149188 (not c!529526)) b!3149193))

(assert (= (or b!3149187 b!3149184) bm!227034))

(assert (= (or b!3149200 b!3149194) bm!227039))

(assert (= (or b!3149185 bm!227034) bm!227036))

(declare-fun m!3421145 () Bool)

(assert (=> bm!227038 m!3421145))

(declare-fun m!3421147 () Bool)

(assert (=> bm!227035 m!3421147))

(declare-fun m!3421149 () Bool)

(assert (=> bm!227040 m!3421149))

(declare-fun m!3421151 () Bool)

(assert (=> bm!227036 m!3421151))

(declare-fun m!3421153 () Bool)

(assert (=> bm!227039 m!3421153))

(assert (=> b!3149090 d!866851))

(declare-fun bm!227041 () Bool)

(declare-fun call!227050 () Int)

(declare-fun call!227052 () Int)

(assert (=> bm!227041 (= call!227050 call!227052)))

(declare-fun call!227049 () Int)

(declare-fun c!529531 () Bool)

(declare-fun call!227048 () Int)

(declare-fun bm!227042 () Bool)

(declare-fun call!227047 () Int)

(assert (=> bm!227042 (= call!227047 (maxBigInt!0 (ite c!529531 call!227048 call!227049) (ite c!529531 call!227049 call!227048)))))

(declare-fun bm!227043 () Bool)

(declare-fun c!529534 () Bool)

(declare-fun c!529537 () Bool)

(assert (=> bm!227043 (= call!227052 (regexDepth!129 (ite c!529537 (regTwo!19871 r!17345) (ite c!529534 (regTwo!19870 r!17345) (reg!10008 r!17345)))))))

(declare-fun b!3149202 () Bool)

(declare-fun e!1963348 () Bool)

(declare-fun lt!1061818 () Int)

(assert (=> b!3149202 (= e!1963348 (> lt!1061818 call!227052))))

(declare-fun b!3149203 () Bool)

(declare-fun e!1963345 () Int)

(declare-fun e!1963344 () Int)

(assert (=> b!3149203 (= e!1963345 e!1963344)))

(declare-fun c!529536 () Bool)

(assert (=> b!3149203 (= c!529536 ((_ is Concat!15000) r!17345))))

(declare-fun b!3149204 () Bool)

(declare-fun e!1963340 () Bool)

(assert (=> b!3149204 (= e!1963340 (> lt!1061818 call!227050))))

(declare-fun b!3149205 () Bool)

(declare-fun c!529533 () Bool)

(assert (=> b!3149205 (= c!529533 ((_ is Star!9679) r!17345))))

(declare-fun e!1963346 () Bool)

(declare-fun e!1963341 () Bool)

(assert (=> b!3149205 (= e!1963346 e!1963341)))

(declare-fun b!3149206 () Bool)

(assert (=> b!3149206 (= e!1963344 1)))

(declare-fun b!3149207 () Bool)

(assert (=> b!3149207 (= e!1963345 (+ 1 call!227047))))

(declare-fun b!3149208 () Bool)

(declare-fun e!1963343 () Bool)

(assert (=> b!3149208 (= e!1963343 e!1963346)))

(assert (=> b!3149208 (= c!529534 ((_ is Concat!15000) r!17345))))

(declare-fun bm!227044 () Bool)

(declare-fun call!227051 () Int)

(assert (=> bm!227044 (= call!227049 call!227051)))

(declare-fun b!3149209 () Bool)

(assert (=> b!3149209 (= c!529531 ((_ is Union!9679) r!17345))))

(declare-fun e!1963342 () Int)

(assert (=> b!3149209 (= e!1963342 e!1963345)))

(declare-fun b!3149210 () Bool)

(assert (=> b!3149210 (= e!1963341 (= lt!1061818 1))))

(declare-fun c!529532 () Bool)

(declare-fun bm!227045 () Bool)

(assert (=> bm!227045 (= call!227051 (regexDepth!129 (ite c!529532 (reg!10008 r!17345) (ite c!529531 (regTwo!19871 r!17345) (regOne!19870 r!17345)))))))

(declare-fun b!3149211 () Bool)

(declare-fun res!1284667 () Bool)

(assert (=> b!3149211 (=> (not res!1284667) (not e!1963340))))

(declare-fun call!227046 () Int)

(assert (=> b!3149211 (= res!1284667 (> lt!1061818 call!227046))))

(assert (=> b!3149211 (= e!1963346 e!1963340)))

(declare-fun d!866855 () Bool)

(declare-fun e!1963347 () Bool)

(assert (=> d!866855 e!1963347))

(declare-fun res!1284666 () Bool)

(assert (=> d!866855 (=> (not res!1284666) (not e!1963347))))

(assert (=> d!866855 (= res!1284666 (> lt!1061818 0))))

(declare-fun e!1963349 () Int)

(assert (=> d!866855 (= lt!1061818 e!1963349)))

(declare-fun c!529535 () Bool)

(assert (=> d!866855 (= c!529535 ((_ is ElementMatch!9679) r!17345))))

(assert (=> d!866855 (= (regexDepth!129 r!17345) lt!1061818)))

(declare-fun b!3149201 () Bool)

(assert (=> b!3149201 (= e!1963341 (> lt!1061818 call!227050))))

(declare-fun b!3149212 () Bool)

(assert (=> b!3149212 (= e!1963349 e!1963342)))

(assert (=> b!3149212 (= c!529532 ((_ is Star!9679) r!17345))))

(declare-fun b!3149213 () Bool)

(assert (=> b!3149213 (= e!1963347 e!1963343)))

(assert (=> b!3149213 (= c!529537 ((_ is Union!9679) r!17345))))

(declare-fun b!3149214 () Bool)

(assert (=> b!3149214 (= e!1963342 (+ 1 call!227051))))

(declare-fun bm!227046 () Bool)

(assert (=> bm!227046 (= call!227046 (regexDepth!129 (ite c!529537 (regOne!19871 r!17345) (regOne!19870 r!17345))))))

(declare-fun b!3149215 () Bool)

(assert (=> b!3149215 (= e!1963349 1)))

(declare-fun b!3149216 () Bool)

(assert (=> b!3149216 (= e!1963344 (+ 1 call!227047))))

(declare-fun bm!227047 () Bool)

(assert (=> bm!227047 (= call!227048 (regexDepth!129 (ite c!529531 (regOne!19871 r!17345) (regTwo!19870 r!17345))))))

(declare-fun b!3149217 () Bool)

(assert (=> b!3149217 (= e!1963343 e!1963348)))

(declare-fun res!1284668 () Bool)

(assert (=> b!3149217 (= res!1284668 (> lt!1061818 call!227046))))

(assert (=> b!3149217 (=> (not res!1284668) (not e!1963348))))

(assert (= (and d!866855 c!529535) b!3149215))

(assert (= (and d!866855 (not c!529535)) b!3149212))

(assert (= (and b!3149212 c!529532) b!3149214))

(assert (= (and b!3149212 (not c!529532)) b!3149209))

(assert (= (and b!3149209 c!529531) b!3149207))

(assert (= (and b!3149209 (not c!529531)) b!3149203))

(assert (= (and b!3149203 c!529536) b!3149216))

(assert (= (and b!3149203 (not c!529536)) b!3149206))

(assert (= (or b!3149207 b!3149216) bm!227047))

(assert (= (or b!3149207 b!3149216) bm!227044))

(assert (= (or b!3149207 b!3149216) bm!227042))

(assert (= (or b!3149214 bm!227044) bm!227045))

(assert (= (and d!866855 res!1284666) b!3149213))

(assert (= (and b!3149213 c!529537) b!3149217))

(assert (= (and b!3149213 (not c!529537)) b!3149208))

(assert (= (and b!3149217 res!1284668) b!3149202))

(assert (= (and b!3149208 c!529534) b!3149211))

(assert (= (and b!3149208 (not c!529534)) b!3149205))

(assert (= (and b!3149211 res!1284667) b!3149204))

(assert (= (and b!3149205 c!529533) b!3149201))

(assert (= (and b!3149205 (not c!529533)) b!3149210))

(assert (= (or b!3149204 b!3149201) bm!227041))

(assert (= (or b!3149217 b!3149211) bm!227046))

(assert (= (or b!3149202 bm!227041) bm!227043))

(declare-fun m!3421155 () Bool)

(assert (=> bm!227045 m!3421155))

(declare-fun m!3421157 () Bool)

(assert (=> bm!227042 m!3421157))

(declare-fun m!3421159 () Bool)

(assert (=> bm!227047 m!3421159))

(declare-fun m!3421161 () Bool)

(assert (=> bm!227043 m!3421161))

(declare-fun m!3421163 () Bool)

(assert (=> bm!227046 m!3421163))

(assert (=> b!3149090 d!866855))

(declare-fun e!1963352 () Bool)

(assert (=> b!3149093 (= tp!987871 e!1963352)))

(declare-fun b!3149229 () Bool)

(declare-fun tp!987890 () Bool)

(declare-fun tp!987888 () Bool)

(assert (=> b!3149229 (= e!1963352 (and tp!987890 tp!987888))))

(declare-fun b!3149230 () Bool)

(declare-fun tp!987887 () Bool)

(assert (=> b!3149230 (= e!1963352 tp!987887)))

(declare-fun b!3149231 () Bool)

(declare-fun tp!987886 () Bool)

(declare-fun tp!987889 () Bool)

(assert (=> b!3149231 (= e!1963352 (and tp!987886 tp!987889))))

(declare-fun b!3149228 () Bool)

(assert (=> b!3149228 (= e!1963352 tp_is_empty!16921)))

(assert (= (and b!3149093 ((_ is ElementMatch!9679) (regOne!19871 r!17345))) b!3149228))

(assert (= (and b!3149093 ((_ is Concat!15000) (regOne!19871 r!17345))) b!3149229))

(assert (= (and b!3149093 ((_ is Star!9679) (regOne!19871 r!17345))) b!3149230))

(assert (= (and b!3149093 ((_ is Union!9679) (regOne!19871 r!17345))) b!3149231))

(declare-fun e!1963353 () Bool)

(assert (=> b!3149093 (= tp!987873 e!1963353)))

(declare-fun b!3149233 () Bool)

(declare-fun tp!987895 () Bool)

(declare-fun tp!987893 () Bool)

(assert (=> b!3149233 (= e!1963353 (and tp!987895 tp!987893))))

(declare-fun b!3149234 () Bool)

(declare-fun tp!987892 () Bool)

(assert (=> b!3149234 (= e!1963353 tp!987892)))

(declare-fun b!3149235 () Bool)

(declare-fun tp!987891 () Bool)

(declare-fun tp!987894 () Bool)

(assert (=> b!3149235 (= e!1963353 (and tp!987891 tp!987894))))

(declare-fun b!3149232 () Bool)

(assert (=> b!3149232 (= e!1963353 tp_is_empty!16921)))

(assert (= (and b!3149093 ((_ is ElementMatch!9679) (regTwo!19871 r!17345))) b!3149232))

(assert (= (and b!3149093 ((_ is Concat!15000) (regTwo!19871 r!17345))) b!3149233))

(assert (= (and b!3149093 ((_ is Star!9679) (regTwo!19871 r!17345))) b!3149234))

(assert (= (and b!3149093 ((_ is Union!9679) (regTwo!19871 r!17345))) b!3149235))

(declare-fun e!1963354 () Bool)

(assert (=> b!3149094 (= tp!987872 e!1963354)))

(declare-fun b!3149237 () Bool)

(declare-fun tp!987900 () Bool)

(declare-fun tp!987898 () Bool)

(assert (=> b!3149237 (= e!1963354 (and tp!987900 tp!987898))))

(declare-fun b!3149238 () Bool)

(declare-fun tp!987897 () Bool)

(assert (=> b!3149238 (= e!1963354 tp!987897)))

(declare-fun b!3149239 () Bool)

(declare-fun tp!987896 () Bool)

(declare-fun tp!987899 () Bool)

(assert (=> b!3149239 (= e!1963354 (and tp!987896 tp!987899))))

(declare-fun b!3149236 () Bool)

(assert (=> b!3149236 (= e!1963354 tp_is_empty!16921)))

(assert (= (and b!3149094 ((_ is ElementMatch!9679) (reg!10008 r!17345))) b!3149236))

(assert (= (and b!3149094 ((_ is Concat!15000) (reg!10008 r!17345))) b!3149237))

(assert (= (and b!3149094 ((_ is Star!9679) (reg!10008 r!17345))) b!3149238))

(assert (= (and b!3149094 ((_ is Union!9679) (reg!10008 r!17345))) b!3149239))

(declare-fun e!1963355 () Bool)

(assert (=> b!3149095 (= tp!987875 e!1963355)))

(declare-fun b!3149241 () Bool)

(declare-fun tp!987905 () Bool)

(declare-fun tp!987903 () Bool)

(assert (=> b!3149241 (= e!1963355 (and tp!987905 tp!987903))))

(declare-fun b!3149242 () Bool)

(declare-fun tp!987902 () Bool)

(assert (=> b!3149242 (= e!1963355 tp!987902)))

(declare-fun b!3149243 () Bool)

(declare-fun tp!987901 () Bool)

(declare-fun tp!987904 () Bool)

(assert (=> b!3149243 (= e!1963355 (and tp!987901 tp!987904))))

(declare-fun b!3149240 () Bool)

(assert (=> b!3149240 (= e!1963355 tp_is_empty!16921)))

(assert (= (and b!3149095 ((_ is ElementMatch!9679) (regOne!19870 r!17345))) b!3149240))

(assert (= (and b!3149095 ((_ is Concat!15000) (regOne!19870 r!17345))) b!3149241))

(assert (= (and b!3149095 ((_ is Star!9679) (regOne!19870 r!17345))) b!3149242))

(assert (= (and b!3149095 ((_ is Union!9679) (regOne!19870 r!17345))) b!3149243))

(declare-fun e!1963356 () Bool)

(assert (=> b!3149095 (= tp!987874 e!1963356)))

(declare-fun b!3149245 () Bool)

(declare-fun tp!987910 () Bool)

(declare-fun tp!987908 () Bool)

(assert (=> b!3149245 (= e!1963356 (and tp!987910 tp!987908))))

(declare-fun b!3149246 () Bool)

(declare-fun tp!987907 () Bool)

(assert (=> b!3149246 (= e!1963356 tp!987907)))

(declare-fun b!3149247 () Bool)

(declare-fun tp!987906 () Bool)

(declare-fun tp!987909 () Bool)

(assert (=> b!3149247 (= e!1963356 (and tp!987906 tp!987909))))

(declare-fun b!3149244 () Bool)

(assert (=> b!3149244 (= e!1963356 tp_is_empty!16921)))

(assert (= (and b!3149095 ((_ is ElementMatch!9679) (regTwo!19870 r!17345))) b!3149244))

(assert (= (and b!3149095 ((_ is Concat!15000) (regTwo!19870 r!17345))) b!3149245))

(assert (= (and b!3149095 ((_ is Star!9679) (regTwo!19870 r!17345))) b!3149246))

(assert (= (and b!3149095 ((_ is Union!9679) (regTwo!19870 r!17345))) b!3149247))

(check-sat (not bm!227042) (not b!3149243) (not b!3149234) (not bm!227046) (not bm!227038) (not b!3149242) (not b!3149231) (not bm!227010) (not bm!227008) tp_is_empty!16921 (not b!3149235) (not bm!227036) (not b!3149246) (not b!3149230) (not bm!227040) (not b!3149233) (not b!3149130) (not bm!227043) (not bm!227045) (not b!3149247) (not b!3149229) (not b!3149237) (not b!3149238) (not b!3149241) (not bm!227047) (not bm!227039) (not b!3149245) (not bm!227035) (not b!3149239))
(check-sat)
