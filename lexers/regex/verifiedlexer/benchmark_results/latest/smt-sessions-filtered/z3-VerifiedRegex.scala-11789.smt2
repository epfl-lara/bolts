; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664426 () Bool)

(assert start!664426)

(declare-fun b!6894005 () Bool)

(assert (=> b!6894005 true))

(assert (=> b!6894005 true))

(assert (=> b!6894005 true))

(declare-fun lambda!390806 () Int)

(declare-fun lambda!390805 () Int)

(assert (=> b!6894005 (not (= lambda!390806 lambda!390805))))

(assert (=> b!6894005 true))

(assert (=> b!6894005 true))

(assert (=> b!6894005 true))

(declare-fun b!6894003 () Bool)

(declare-fun e!4152711 () Bool)

(declare-fun tp!1897408 () Bool)

(declare-fun tp!1897403 () Bool)

(assert (=> b!6894003 (= e!4152711 (and tp!1897408 tp!1897403))))

(declare-fun b!6894004 () Bool)

(declare-fun e!4152707 () Bool)

(declare-fun tp!1897404 () Bool)

(declare-fun tp!1897406 () Bool)

(assert (=> b!6894004 (= e!4152707 (and tp!1897404 tp!1897406))))

(declare-fun res!2810696 () Bool)

(declare-fun e!4152706 () Bool)

(assert (=> start!664426 (=> (not res!2810696) (not e!4152706))))

(declare-datatypes ((C!33920 0))(
  ( (C!33921 (val!26662 Int)) )
))
(declare-datatypes ((Regex!16825 0))(
  ( (ElementMatch!16825 (c!1281549 C!33920)) (Concat!25670 (regOne!34162 Regex!16825) (regTwo!34162 Regex!16825)) (EmptyExpr!16825) (Star!16825 (reg!17154 Regex!16825)) (EmptyLang!16825) (Union!16825 (regOne!34163 Regex!16825) (regTwo!34163 Regex!16825)) )
))
(declare-fun r1!6342 () Regex!16825)

(declare-fun validRegex!8533 (Regex!16825) Bool)

(assert (=> start!664426 (= res!2810696 (validRegex!8533 r1!6342))))

(assert (=> start!664426 e!4152706))

(declare-fun e!4152705 () Bool)

(assert (=> start!664426 e!4152705))

(assert (=> start!664426 e!4152707))

(assert (=> start!664426 e!4152711))

(declare-fun e!4152710 () Bool)

(assert (=> start!664426 e!4152710))

(declare-fun e!4152712 () Bool)

(declare-fun e!4152708 () Bool)

(assert (=> b!6894005 (= e!4152712 e!4152708)))

(declare-fun res!2810694 () Bool)

(assert (=> b!6894005 (=> res!2810694 e!4152708)))

(declare-fun lt!2463428 () Bool)

(assert (=> b!6894005 (= res!2810694 (not lt!2463428))))

(declare-datatypes ((List!66582 0))(
  ( (Nil!66458) (Cons!66458 (h!72906 C!33920) (t!380325 List!66582)) )
))
(declare-datatypes ((tuple2!67384 0))(
  ( (tuple2!67385 (_1!36995 List!66582) (_2!36995 List!66582)) )
))
(declare-fun lt!2463422 () tuple2!67384)

(declare-fun matchRSpec!3888 (Regex!16825 List!66582) Bool)

(assert (=> b!6894005 (= lt!2463428 (matchRSpec!3888 r1!6342 (_1!36995 lt!2463422)))))

(declare-fun matchR!8970 (Regex!16825 List!66582) Bool)

(assert (=> b!6894005 (= lt!2463428 (matchR!8970 r1!6342 (_1!36995 lt!2463422)))))

(declare-datatypes ((Unit!160370 0))(
  ( (Unit!160371) )
))
(declare-fun lt!2463426 () Unit!160370)

(declare-fun mainMatchTheorem!3888 (Regex!16825 List!66582) Unit!160370)

(assert (=> b!6894005 (= lt!2463426 (mainMatchTheorem!3888 r1!6342 (_1!36995 lt!2463422)))))

(declare-datatypes ((Option!16604 0))(
  ( (None!16603) (Some!16603 (v!52875 tuple2!67384)) )
))
(declare-fun lt!2463429 () Option!16604)

(declare-fun get!23188 (Option!16604) tuple2!67384)

(assert (=> b!6894005 (= lt!2463422 (get!23188 lt!2463429))))

(declare-fun Exists!3833 (Int) Bool)

(assert (=> b!6894005 (= (Exists!3833 lambda!390805) (Exists!3833 lambda!390806))))

(declare-fun lt!2463423 () Unit!160370)

(declare-fun lt!2463421 () Regex!16825)

(declare-fun s!14361 () List!66582)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2306 (Regex!16825 Regex!16825 List!66582) Unit!160370)

(assert (=> b!6894005 (= lt!2463423 (lemmaExistCutMatchRandMatchRSpecEquivalent!2306 r1!6342 lt!2463421 s!14361))))

(assert (=> b!6894005 (Exists!3833 lambda!390805)))

(declare-fun lt!2463425 () Unit!160370)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2780 (Regex!16825 Regex!16825 List!66582) Unit!160370)

(assert (=> b!6894005 (= lt!2463425 (lemmaFindConcatSeparationEquivalentToExists!2780 r1!6342 lt!2463421 s!14361))))

(declare-fun b!6894006 () Bool)

(declare-fun tp_is_empty!42875 () Bool)

(assert (=> b!6894006 (= e!4152707 tp_is_empty!42875)))

(declare-fun b!6894007 () Bool)

(declare-fun tp!1897405 () Bool)

(declare-fun tp!1897412 () Bool)

(assert (=> b!6894007 (= e!4152705 (and tp!1897405 tp!1897412))))

(declare-fun b!6894008 () Bool)

(assert (=> b!6894008 (= e!4152705 tp_is_empty!42875)))

(declare-fun b!6894009 () Bool)

(assert (=> b!6894009 (= e!4152711 tp_is_empty!42875)))

(declare-fun b!6894010 () Bool)

(assert (=> b!6894010 (= e!4152708 (validRegex!8533 lt!2463421))))

(declare-fun b!6894011 () Bool)

(declare-fun tp!1897407 () Bool)

(assert (=> b!6894011 (= e!4152711 tp!1897407)))

(declare-fun b!6894012 () Bool)

(declare-fun res!2810693 () Bool)

(assert (=> b!6894012 (=> (not res!2810693) (not e!4152706))))

(declare-fun r3!135 () Regex!16825)

(assert (=> b!6894012 (= res!2810693 (validRegex!8533 r3!135))))

(declare-fun b!6894013 () Bool)

(declare-fun tp!1897401 () Bool)

(assert (=> b!6894013 (= e!4152707 tp!1897401)))

(declare-fun b!6894014 () Bool)

(declare-fun tp!1897415 () Bool)

(assert (=> b!6894014 (= e!4152705 tp!1897415)))

(declare-fun b!6894015 () Bool)

(declare-fun tp!1897410 () Bool)

(assert (=> b!6894015 (= e!4152710 (and tp_is_empty!42875 tp!1897410))))

(declare-fun b!6894016 () Bool)

(declare-fun e!4152709 () Bool)

(assert (=> b!6894016 (= e!4152709 e!4152712)))

(declare-fun res!2810692 () Bool)

(assert (=> b!6894016 (=> res!2810692 e!4152712)))

(declare-fun isDefined!13307 (Option!16604) Bool)

(assert (=> b!6894016 (= res!2810692 (not (isDefined!13307 lt!2463429)))))

(declare-fun findConcatSeparation!3018 (Regex!16825 Regex!16825 List!66582 List!66582 List!66582) Option!16604)

(assert (=> b!6894016 (= lt!2463429 (findConcatSeparation!3018 r1!6342 lt!2463421 Nil!66458 s!14361 s!14361))))

(declare-fun b!6894017 () Bool)

(declare-fun tp!1897400 () Bool)

(declare-fun tp!1897402 () Bool)

(assert (=> b!6894017 (= e!4152707 (and tp!1897400 tp!1897402))))

(declare-fun b!6894018 () Bool)

(declare-fun res!2810691 () Bool)

(assert (=> b!6894018 (=> (not res!2810691) (not e!4152706))))

(declare-fun r2!6280 () Regex!16825)

(assert (=> b!6894018 (= res!2810691 (validRegex!8533 r2!6280))))

(declare-fun b!6894019 () Bool)

(assert (=> b!6894019 (= e!4152706 (not e!4152709))))

(declare-fun res!2810695 () Bool)

(assert (=> b!6894019 (=> res!2810695 e!4152709)))

(declare-fun lt!2463431 () Bool)

(assert (=> b!6894019 (= res!2810695 lt!2463431)))

(declare-fun lt!2463420 () Regex!16825)

(assert (=> b!6894019 (= (matchR!8970 lt!2463420 s!14361) (matchRSpec!3888 lt!2463420 s!14361))))

(declare-fun lt!2463424 () Unit!160370)

(assert (=> b!6894019 (= lt!2463424 (mainMatchTheorem!3888 lt!2463420 s!14361))))

(declare-fun lt!2463430 () Regex!16825)

(assert (=> b!6894019 (= lt!2463431 (matchRSpec!3888 lt!2463430 s!14361))))

(assert (=> b!6894019 (= lt!2463431 (matchR!8970 lt!2463430 s!14361))))

(declare-fun lt!2463427 () Unit!160370)

(assert (=> b!6894019 (= lt!2463427 (mainMatchTheorem!3888 lt!2463430 s!14361))))

(assert (=> b!6894019 (= lt!2463420 (Concat!25670 r1!6342 lt!2463421))))

(assert (=> b!6894019 (= lt!2463421 (Concat!25670 r2!6280 r3!135))))

(assert (=> b!6894019 (= lt!2463430 (Concat!25670 (Concat!25670 r1!6342 r2!6280) r3!135))))

(declare-fun b!6894020 () Bool)

(declare-fun tp!1897411 () Bool)

(declare-fun tp!1897413 () Bool)

(assert (=> b!6894020 (= e!4152705 (and tp!1897411 tp!1897413))))

(declare-fun b!6894021 () Bool)

(declare-fun tp!1897409 () Bool)

(declare-fun tp!1897414 () Bool)

(assert (=> b!6894021 (= e!4152711 (and tp!1897409 tp!1897414))))

(assert (= (and start!664426 res!2810696) b!6894018))

(assert (= (and b!6894018 res!2810691) b!6894012))

(assert (= (and b!6894012 res!2810693) b!6894019))

(assert (= (and b!6894019 (not res!2810695)) b!6894016))

(assert (= (and b!6894016 (not res!2810692)) b!6894005))

(assert (= (and b!6894005 (not res!2810694)) b!6894010))

(get-info :version)

(assert (= (and start!664426 ((_ is ElementMatch!16825) r1!6342)) b!6894008))

(assert (= (and start!664426 ((_ is Concat!25670) r1!6342)) b!6894020))

(assert (= (and start!664426 ((_ is Star!16825) r1!6342)) b!6894014))

(assert (= (and start!664426 ((_ is Union!16825) r1!6342)) b!6894007))

(assert (= (and start!664426 ((_ is ElementMatch!16825) r2!6280)) b!6894006))

(assert (= (and start!664426 ((_ is Concat!25670) r2!6280)) b!6894004))

(assert (= (and start!664426 ((_ is Star!16825) r2!6280)) b!6894013))

(assert (= (and start!664426 ((_ is Union!16825) r2!6280)) b!6894017))

(assert (= (and start!664426 ((_ is ElementMatch!16825) r3!135)) b!6894009))

(assert (= (and start!664426 ((_ is Concat!25670) r3!135)) b!6894021))

(assert (= (and start!664426 ((_ is Star!16825) r3!135)) b!6894011))

(assert (= (and start!664426 ((_ is Union!16825) r3!135)) b!6894003))

(assert (= (and start!664426 ((_ is Cons!66458) s!14361)) b!6894015))

(declare-fun m!7614092 () Bool)

(assert (=> b!6894012 m!7614092))

(declare-fun m!7614094 () Bool)

(assert (=> b!6894018 m!7614094))

(declare-fun m!7614096 () Bool)

(assert (=> start!664426 m!7614096))

(declare-fun m!7614098 () Bool)

(assert (=> b!6894016 m!7614098))

(declare-fun m!7614100 () Bool)

(assert (=> b!6894016 m!7614100))

(declare-fun m!7614102 () Bool)

(assert (=> b!6894005 m!7614102))

(declare-fun m!7614104 () Bool)

(assert (=> b!6894005 m!7614104))

(declare-fun m!7614106 () Bool)

(assert (=> b!6894005 m!7614106))

(declare-fun m!7614108 () Bool)

(assert (=> b!6894005 m!7614108))

(declare-fun m!7614110 () Bool)

(assert (=> b!6894005 m!7614110))

(declare-fun m!7614112 () Bool)

(assert (=> b!6894005 m!7614112))

(declare-fun m!7614114 () Bool)

(assert (=> b!6894005 m!7614114))

(declare-fun m!7614116 () Bool)

(assert (=> b!6894005 m!7614116))

(assert (=> b!6894005 m!7614116))

(declare-fun m!7614118 () Bool)

(assert (=> b!6894019 m!7614118))

(declare-fun m!7614120 () Bool)

(assert (=> b!6894019 m!7614120))

(declare-fun m!7614122 () Bool)

(assert (=> b!6894019 m!7614122))

(declare-fun m!7614124 () Bool)

(assert (=> b!6894019 m!7614124))

(declare-fun m!7614126 () Bool)

(assert (=> b!6894019 m!7614126))

(declare-fun m!7614128 () Bool)

(assert (=> b!6894019 m!7614128))

(declare-fun m!7614130 () Bool)

(assert (=> b!6894010 m!7614130))

(check-sat (not b!6894011) tp_is_empty!42875 (not b!6894003) (not b!6894020) (not b!6894004) (not b!6894014) (not b!6894005) (not b!6894016) (not b!6894007) (not b!6894013) (not b!6894019) (not start!664426) (not b!6894012) (not b!6894017) (not b!6894021) (not b!6894010) (not b!6894015) (not b!6894018))
(check-sat)
(get-model)

(declare-fun b!6894044 () Bool)

(declare-fun e!4152731 () Bool)

(declare-fun e!4152733 () Bool)

(assert (=> b!6894044 (= e!4152731 e!4152733)))

(declare-fun c!1281554 () Bool)

(assert (=> b!6894044 (= c!1281554 ((_ is Union!16825) r2!6280))))

(declare-fun b!6894045 () Bool)

(declare-fun e!4152732 () Bool)

(declare-fun call!627250 () Bool)

(assert (=> b!6894045 (= e!4152732 call!627250)))

(declare-fun bm!627243 () Bool)

(declare-fun c!1281555 () Bool)

(declare-fun call!627248 () Bool)

(assert (=> bm!627243 (= call!627248 (validRegex!8533 (ite c!1281555 (reg!17154 r2!6280) (ite c!1281554 (regTwo!34163 r2!6280) (regOne!34162 r2!6280)))))))

(declare-fun bm!627244 () Bool)

(assert (=> bm!627244 (= call!627250 call!627248)))

(declare-fun d!2161328 () Bool)

(declare-fun res!2810711 () Bool)

(declare-fun e!4152728 () Bool)

(assert (=> d!2161328 (=> res!2810711 e!4152728)))

(assert (=> d!2161328 (= res!2810711 ((_ is ElementMatch!16825) r2!6280))))

(assert (=> d!2161328 (= (validRegex!8533 r2!6280) e!4152728)))

(declare-fun b!6894046 () Bool)

(assert (=> b!6894046 (= e!4152728 e!4152731)))

(assert (=> b!6894046 (= c!1281555 ((_ is Star!16825) r2!6280))))

(declare-fun b!6894047 () Bool)

(declare-fun res!2810707 () Bool)

(assert (=> b!6894047 (=> (not res!2810707) (not e!4152732))))

(declare-fun call!627249 () Bool)

(assert (=> b!6894047 (= res!2810707 call!627249)))

(assert (=> b!6894047 (= e!4152733 e!4152732)))

(declare-fun bm!627245 () Bool)

(assert (=> bm!627245 (= call!627249 (validRegex!8533 (ite c!1281554 (regOne!34163 r2!6280) (regTwo!34162 r2!6280))))))

(declare-fun b!6894048 () Bool)

(declare-fun e!4152729 () Bool)

(assert (=> b!6894048 (= e!4152729 call!627248)))

(declare-fun b!6894049 () Bool)

(declare-fun e!4152730 () Bool)

(declare-fun e!4152727 () Bool)

(assert (=> b!6894049 (= e!4152730 e!4152727)))

(declare-fun res!2810708 () Bool)

(assert (=> b!6894049 (=> (not res!2810708) (not e!4152727))))

(assert (=> b!6894049 (= res!2810708 call!627250)))

(declare-fun b!6894050 () Bool)

(assert (=> b!6894050 (= e!4152731 e!4152729)))

(declare-fun res!2810710 () Bool)

(declare-fun nullable!6697 (Regex!16825) Bool)

(assert (=> b!6894050 (= res!2810710 (not (nullable!6697 (reg!17154 r2!6280))))))

(assert (=> b!6894050 (=> (not res!2810710) (not e!4152729))))

(declare-fun b!6894051 () Bool)

(assert (=> b!6894051 (= e!4152727 call!627249)))

(declare-fun b!6894052 () Bool)

(declare-fun res!2810709 () Bool)

(assert (=> b!6894052 (=> res!2810709 e!4152730)))

(assert (=> b!6894052 (= res!2810709 (not ((_ is Concat!25670) r2!6280)))))

(assert (=> b!6894052 (= e!4152733 e!4152730)))

(assert (= (and d!2161328 (not res!2810711)) b!6894046))

(assert (= (and b!6894046 c!1281555) b!6894050))

(assert (= (and b!6894046 (not c!1281555)) b!6894044))

(assert (= (and b!6894050 res!2810710) b!6894048))

(assert (= (and b!6894044 c!1281554) b!6894047))

(assert (= (and b!6894044 (not c!1281554)) b!6894052))

(assert (= (and b!6894047 res!2810707) b!6894045))

(assert (= (and b!6894052 (not res!2810709)) b!6894049))

(assert (= (and b!6894049 res!2810708) b!6894051))

(assert (= (or b!6894047 b!6894051) bm!627245))

(assert (= (or b!6894045 b!6894049) bm!627244))

(assert (= (or b!6894048 bm!627244) bm!627243))

(declare-fun m!7614132 () Bool)

(assert (=> bm!627243 m!7614132))

(declare-fun m!7614134 () Bool)

(assert (=> bm!627245 m!7614134))

(declare-fun m!7614136 () Bool)

(assert (=> b!6894050 m!7614136))

(assert (=> b!6894018 d!2161328))

(declare-fun bs!1840614 () Bool)

(declare-fun b!6894107 () Bool)

(assert (= bs!1840614 (and b!6894107 b!6894005)))

(declare-fun lambda!390811 () Int)

(assert (=> bs!1840614 (not (= lambda!390811 lambda!390805))))

(assert (=> bs!1840614 (not (= lambda!390811 lambda!390806))))

(assert (=> b!6894107 true))

(assert (=> b!6894107 true))

(declare-fun bs!1840615 () Bool)

(declare-fun b!6894108 () Bool)

(assert (= bs!1840615 (and b!6894108 b!6894005)))

(declare-fun lambda!390812 () Int)

(assert (=> bs!1840615 (not (= lambda!390812 lambda!390805))))

(assert (=> bs!1840615 (= (and (= (regOne!34162 lt!2463430) r1!6342) (= (regTwo!34162 lt!2463430) lt!2463421)) (= lambda!390812 lambda!390806))))

(declare-fun bs!1840616 () Bool)

(assert (= bs!1840616 (and b!6894108 b!6894107)))

(assert (=> bs!1840616 (not (= lambda!390812 lambda!390811))))

(assert (=> b!6894108 true))

(assert (=> b!6894108 true))

(declare-fun c!1281568 () Bool)

(declare-fun call!627261 () Bool)

(declare-fun bm!627256 () Bool)

(assert (=> bm!627256 (= call!627261 (Exists!3833 (ite c!1281568 lambda!390811 lambda!390812)))))

(declare-fun b!6894103 () Bool)

(declare-fun e!4152769 () Bool)

(declare-fun e!4152770 () Bool)

(assert (=> b!6894103 (= e!4152769 e!4152770)))

(declare-fun res!2810738 () Bool)

(assert (=> b!6894103 (= res!2810738 (not ((_ is EmptyLang!16825) lt!2463430)))))

(assert (=> b!6894103 (=> (not res!2810738) (not e!4152770))))

(declare-fun b!6894104 () Bool)

(declare-fun res!2810739 () Bool)

(declare-fun e!4152768 () Bool)

(assert (=> b!6894104 (=> res!2810739 e!4152768)))

(declare-fun call!627262 () Bool)

(assert (=> b!6894104 (= res!2810739 call!627262)))

(declare-fun e!4152772 () Bool)

(assert (=> b!6894104 (= e!4152772 e!4152768)))

(declare-fun b!6894105 () Bool)

(declare-fun c!1281569 () Bool)

(assert (=> b!6894105 (= c!1281569 ((_ is Union!16825) lt!2463430))))

(declare-fun e!4152767 () Bool)

(declare-fun e!4152771 () Bool)

(assert (=> b!6894105 (= e!4152767 e!4152771)))

(declare-fun b!6894106 () Bool)

(declare-fun e!4152766 () Bool)

(assert (=> b!6894106 (= e!4152766 (matchRSpec!3888 (regTwo!34163 lt!2463430) s!14361))))

(declare-fun d!2161330 () Bool)

(declare-fun c!1281571 () Bool)

(assert (=> d!2161330 (= c!1281571 ((_ is EmptyExpr!16825) lt!2463430))))

(assert (=> d!2161330 (= (matchRSpec!3888 lt!2463430 s!14361) e!4152769)))

(assert (=> b!6894107 (= e!4152768 call!627261)))

(assert (=> b!6894108 (= e!4152772 call!627261)))

(declare-fun b!6894109 () Bool)

(assert (=> b!6894109 (= e!4152771 e!4152766)))

(declare-fun res!2810740 () Bool)

(assert (=> b!6894109 (= res!2810740 (matchRSpec!3888 (regOne!34163 lt!2463430) s!14361))))

(assert (=> b!6894109 (=> res!2810740 e!4152766)))

(declare-fun bm!627257 () Bool)

(declare-fun isEmpty!38708 (List!66582) Bool)

(assert (=> bm!627257 (= call!627262 (isEmpty!38708 s!14361))))

(declare-fun b!6894110 () Bool)

(assert (=> b!6894110 (= e!4152767 (= s!14361 (Cons!66458 (c!1281549 lt!2463430) Nil!66458)))))

(declare-fun b!6894111 () Bool)

(assert (=> b!6894111 (= e!4152771 e!4152772)))

(assert (=> b!6894111 (= c!1281568 ((_ is Star!16825) lt!2463430))))

(declare-fun b!6894112 () Bool)

(declare-fun c!1281570 () Bool)

(assert (=> b!6894112 (= c!1281570 ((_ is ElementMatch!16825) lt!2463430))))

(assert (=> b!6894112 (= e!4152770 e!4152767)))

(declare-fun b!6894113 () Bool)

(assert (=> b!6894113 (= e!4152769 call!627262)))

(assert (= (and d!2161330 c!1281571) b!6894113))

(assert (= (and d!2161330 (not c!1281571)) b!6894103))

(assert (= (and b!6894103 res!2810738) b!6894112))

(assert (= (and b!6894112 c!1281570) b!6894110))

(assert (= (and b!6894112 (not c!1281570)) b!6894105))

(assert (= (and b!6894105 c!1281569) b!6894109))

(assert (= (and b!6894105 (not c!1281569)) b!6894111))

(assert (= (and b!6894109 (not res!2810740)) b!6894106))

(assert (= (and b!6894111 c!1281568) b!6894104))

(assert (= (and b!6894111 (not c!1281568)) b!6894108))

(assert (= (and b!6894104 (not res!2810739)) b!6894107))

(assert (= (or b!6894107 b!6894108) bm!627256))

(assert (= (or b!6894113 b!6894104) bm!627257))

(declare-fun m!7614144 () Bool)

(assert (=> bm!627256 m!7614144))

(declare-fun m!7614146 () Bool)

(assert (=> b!6894106 m!7614146))

(declare-fun m!7614148 () Bool)

(assert (=> b!6894109 m!7614148))

(declare-fun m!7614152 () Bool)

(assert (=> bm!627257 m!7614152))

(assert (=> b!6894019 d!2161330))

(declare-fun d!2161336 () Bool)

(assert (=> d!2161336 (= (matchR!8970 lt!2463430 s!14361) (matchRSpec!3888 lt!2463430 s!14361))))

(declare-fun lt!2463434 () Unit!160370)

(declare-fun choose!51336 (Regex!16825 List!66582) Unit!160370)

(assert (=> d!2161336 (= lt!2463434 (choose!51336 lt!2463430 s!14361))))

(assert (=> d!2161336 (validRegex!8533 lt!2463430)))

(assert (=> d!2161336 (= (mainMatchTheorem!3888 lt!2463430 s!14361) lt!2463434)))

(declare-fun bs!1840618 () Bool)

(assert (= bs!1840618 d!2161336))

(assert (=> bs!1840618 m!7614126))

(assert (=> bs!1840618 m!7614124))

(declare-fun m!7614172 () Bool)

(assert (=> bs!1840618 m!7614172))

(declare-fun m!7614174 () Bool)

(assert (=> bs!1840618 m!7614174))

(assert (=> b!6894019 d!2161336))

(declare-fun b!6894196 () Bool)

(declare-fun e!4152830 () Bool)

(declare-fun derivativeStep!5376 (Regex!16825 C!33920) Regex!16825)

(declare-fun head!13829 (List!66582) C!33920)

(declare-fun tail!12881 (List!66582) List!66582)

(assert (=> b!6894196 (= e!4152830 (matchR!8970 (derivativeStep!5376 lt!2463420 (head!13829 s!14361)) (tail!12881 s!14361)))))

(declare-fun b!6894197 () Bool)

(declare-fun e!4152827 () Bool)

(assert (=> b!6894197 (= e!4152827 (not (= (head!13829 s!14361) (c!1281549 lt!2463420))))))

(declare-fun b!6894198 () Bool)

(declare-fun res!2810793 () Bool)

(declare-fun e!4152831 () Bool)

(assert (=> b!6894198 (=> (not res!2810793) (not e!4152831))))

(assert (=> b!6894198 (= res!2810793 (isEmpty!38708 (tail!12881 s!14361)))))

(declare-fun b!6894199 () Bool)

(declare-fun res!2810788 () Bool)

(assert (=> b!6894199 (=> (not res!2810788) (not e!4152831))))

(declare-fun call!627277 () Bool)

(assert (=> b!6894199 (= res!2810788 (not call!627277))))

(declare-fun b!6894200 () Bool)

(declare-fun e!4152829 () Bool)

(declare-fun lt!2463443 () Bool)

(assert (=> b!6894200 (= e!4152829 (not lt!2463443))))

(declare-fun b!6894201 () Bool)

(declare-fun res!2810791 () Bool)

(declare-fun e!4152826 () Bool)

(assert (=> b!6894201 (=> res!2810791 e!4152826)))

(assert (=> b!6894201 (= res!2810791 e!4152831)))

(declare-fun res!2810790 () Bool)

(assert (=> b!6894201 (=> (not res!2810790) (not e!4152831))))

(assert (=> b!6894201 (= res!2810790 lt!2463443)))

(declare-fun b!6894202 () Bool)

(declare-fun e!4152828 () Bool)

(assert (=> b!6894202 (= e!4152828 e!4152827)))

(declare-fun res!2810794 () Bool)

(assert (=> b!6894202 (=> res!2810794 e!4152827)))

(assert (=> b!6894202 (= res!2810794 call!627277)))

(declare-fun b!6894203 () Bool)

(assert (=> b!6894203 (= e!4152830 (nullable!6697 lt!2463420))))

(declare-fun b!6894204 () Bool)

(declare-fun e!4152825 () Bool)

(assert (=> b!6894204 (= e!4152825 e!4152829)))

(declare-fun c!1281590 () Bool)

(assert (=> b!6894204 (= c!1281590 ((_ is EmptyLang!16825) lt!2463420))))

(declare-fun bm!627272 () Bool)

(assert (=> bm!627272 (= call!627277 (isEmpty!38708 s!14361))))

(declare-fun d!2161346 () Bool)

(assert (=> d!2161346 e!4152825))

(declare-fun c!1281591 () Bool)

(assert (=> d!2161346 (= c!1281591 ((_ is EmptyExpr!16825) lt!2463420))))

(assert (=> d!2161346 (= lt!2463443 e!4152830)))

(declare-fun c!1281592 () Bool)

(assert (=> d!2161346 (= c!1281592 (isEmpty!38708 s!14361))))

(assert (=> d!2161346 (validRegex!8533 lt!2463420)))

(assert (=> d!2161346 (= (matchR!8970 lt!2463420 s!14361) lt!2463443)))

(declare-fun b!6894205 () Bool)

(assert (=> b!6894205 (= e!4152831 (= (head!13829 s!14361) (c!1281549 lt!2463420)))))

(declare-fun b!6894206 () Bool)

(declare-fun res!2810789 () Bool)

(assert (=> b!6894206 (=> res!2810789 e!4152826)))

(assert (=> b!6894206 (= res!2810789 (not ((_ is ElementMatch!16825) lt!2463420)))))

(assert (=> b!6894206 (= e!4152829 e!4152826)))

(declare-fun b!6894207 () Bool)

(assert (=> b!6894207 (= e!4152826 e!4152828)))

(declare-fun res!2810787 () Bool)

(assert (=> b!6894207 (=> (not res!2810787) (not e!4152828))))

(assert (=> b!6894207 (= res!2810787 (not lt!2463443))))

(declare-fun b!6894208 () Bool)

(declare-fun res!2810792 () Bool)

(assert (=> b!6894208 (=> res!2810792 e!4152827)))

(assert (=> b!6894208 (= res!2810792 (not (isEmpty!38708 (tail!12881 s!14361))))))

(declare-fun b!6894209 () Bool)

(assert (=> b!6894209 (= e!4152825 (= lt!2463443 call!627277))))

(assert (= (and d!2161346 c!1281592) b!6894203))

(assert (= (and d!2161346 (not c!1281592)) b!6894196))

(assert (= (and d!2161346 c!1281591) b!6894209))

(assert (= (and d!2161346 (not c!1281591)) b!6894204))

(assert (= (and b!6894204 c!1281590) b!6894200))

(assert (= (and b!6894204 (not c!1281590)) b!6894206))

(assert (= (and b!6894206 (not res!2810789)) b!6894201))

(assert (= (and b!6894201 res!2810790) b!6894199))

(assert (= (and b!6894199 res!2810788) b!6894198))

(assert (= (and b!6894198 res!2810793) b!6894205))

(assert (= (and b!6894201 (not res!2810791)) b!6894207))

(assert (= (and b!6894207 res!2810787) b!6894202))

(assert (= (and b!6894202 (not res!2810794)) b!6894208))

(assert (= (and b!6894208 (not res!2810792)) b!6894197))

(assert (= (or b!6894209 b!6894199 b!6894202) bm!627272))

(declare-fun m!7614176 () Bool)

(assert (=> b!6894205 m!7614176))

(assert (=> bm!627272 m!7614152))

(declare-fun m!7614178 () Bool)

(assert (=> b!6894198 m!7614178))

(assert (=> b!6894198 m!7614178))

(declare-fun m!7614180 () Bool)

(assert (=> b!6894198 m!7614180))

(assert (=> b!6894197 m!7614176))

(assert (=> d!2161346 m!7614152))

(declare-fun m!7614182 () Bool)

(assert (=> d!2161346 m!7614182))

(declare-fun m!7614184 () Bool)

(assert (=> b!6894203 m!7614184))

(assert (=> b!6894196 m!7614176))

(assert (=> b!6894196 m!7614176))

(declare-fun m!7614186 () Bool)

(assert (=> b!6894196 m!7614186))

(assert (=> b!6894196 m!7614178))

(assert (=> b!6894196 m!7614186))

(assert (=> b!6894196 m!7614178))

(declare-fun m!7614188 () Bool)

(assert (=> b!6894196 m!7614188))

(assert (=> b!6894208 m!7614178))

(assert (=> b!6894208 m!7614178))

(assert (=> b!6894208 m!7614180))

(assert (=> b!6894019 d!2161346))

(declare-fun b!6894210 () Bool)

(declare-fun e!4152837 () Bool)

(assert (=> b!6894210 (= e!4152837 (matchR!8970 (derivativeStep!5376 lt!2463430 (head!13829 s!14361)) (tail!12881 s!14361)))))

(declare-fun b!6894211 () Bool)

(declare-fun e!4152834 () Bool)

(assert (=> b!6894211 (= e!4152834 (not (= (head!13829 s!14361) (c!1281549 lt!2463430))))))

(declare-fun b!6894212 () Bool)

(declare-fun res!2810801 () Bool)

(declare-fun e!4152838 () Bool)

(assert (=> b!6894212 (=> (not res!2810801) (not e!4152838))))

(assert (=> b!6894212 (= res!2810801 (isEmpty!38708 (tail!12881 s!14361)))))

(declare-fun b!6894213 () Bool)

(declare-fun res!2810796 () Bool)

(assert (=> b!6894213 (=> (not res!2810796) (not e!4152838))))

(declare-fun call!627278 () Bool)

(assert (=> b!6894213 (= res!2810796 (not call!627278))))

(declare-fun b!6894214 () Bool)

(declare-fun e!4152836 () Bool)

(declare-fun lt!2463444 () Bool)

(assert (=> b!6894214 (= e!4152836 (not lt!2463444))))

(declare-fun b!6894215 () Bool)

(declare-fun res!2810799 () Bool)

(declare-fun e!4152833 () Bool)

(assert (=> b!6894215 (=> res!2810799 e!4152833)))

(assert (=> b!6894215 (= res!2810799 e!4152838)))

(declare-fun res!2810798 () Bool)

(assert (=> b!6894215 (=> (not res!2810798) (not e!4152838))))

(assert (=> b!6894215 (= res!2810798 lt!2463444)))

(declare-fun b!6894216 () Bool)

(declare-fun e!4152835 () Bool)

(assert (=> b!6894216 (= e!4152835 e!4152834)))

(declare-fun res!2810802 () Bool)

(assert (=> b!6894216 (=> res!2810802 e!4152834)))

(assert (=> b!6894216 (= res!2810802 call!627278)))

(declare-fun b!6894217 () Bool)

(assert (=> b!6894217 (= e!4152837 (nullable!6697 lt!2463430))))

(declare-fun b!6894218 () Bool)

(declare-fun e!4152832 () Bool)

(assert (=> b!6894218 (= e!4152832 e!4152836)))

(declare-fun c!1281593 () Bool)

(assert (=> b!6894218 (= c!1281593 ((_ is EmptyLang!16825) lt!2463430))))

(declare-fun bm!627273 () Bool)

(assert (=> bm!627273 (= call!627278 (isEmpty!38708 s!14361))))

(declare-fun d!2161348 () Bool)

(assert (=> d!2161348 e!4152832))

(declare-fun c!1281594 () Bool)

(assert (=> d!2161348 (= c!1281594 ((_ is EmptyExpr!16825) lt!2463430))))

(assert (=> d!2161348 (= lt!2463444 e!4152837)))

(declare-fun c!1281595 () Bool)

(assert (=> d!2161348 (= c!1281595 (isEmpty!38708 s!14361))))

(assert (=> d!2161348 (validRegex!8533 lt!2463430)))

(assert (=> d!2161348 (= (matchR!8970 lt!2463430 s!14361) lt!2463444)))

(declare-fun b!6894219 () Bool)

(assert (=> b!6894219 (= e!4152838 (= (head!13829 s!14361) (c!1281549 lt!2463430)))))

(declare-fun b!6894220 () Bool)

(declare-fun res!2810797 () Bool)

(assert (=> b!6894220 (=> res!2810797 e!4152833)))

(assert (=> b!6894220 (= res!2810797 (not ((_ is ElementMatch!16825) lt!2463430)))))

(assert (=> b!6894220 (= e!4152836 e!4152833)))

(declare-fun b!6894221 () Bool)

(assert (=> b!6894221 (= e!4152833 e!4152835)))

(declare-fun res!2810795 () Bool)

(assert (=> b!6894221 (=> (not res!2810795) (not e!4152835))))

(assert (=> b!6894221 (= res!2810795 (not lt!2463444))))

(declare-fun b!6894222 () Bool)

(declare-fun res!2810800 () Bool)

(assert (=> b!6894222 (=> res!2810800 e!4152834)))

(assert (=> b!6894222 (= res!2810800 (not (isEmpty!38708 (tail!12881 s!14361))))))

(declare-fun b!6894223 () Bool)

(assert (=> b!6894223 (= e!4152832 (= lt!2463444 call!627278))))

(assert (= (and d!2161348 c!1281595) b!6894217))

(assert (= (and d!2161348 (not c!1281595)) b!6894210))

(assert (= (and d!2161348 c!1281594) b!6894223))

(assert (= (and d!2161348 (not c!1281594)) b!6894218))

(assert (= (and b!6894218 c!1281593) b!6894214))

(assert (= (and b!6894218 (not c!1281593)) b!6894220))

(assert (= (and b!6894220 (not res!2810797)) b!6894215))

(assert (= (and b!6894215 res!2810798) b!6894213))

(assert (= (and b!6894213 res!2810796) b!6894212))

(assert (= (and b!6894212 res!2810801) b!6894219))

(assert (= (and b!6894215 (not res!2810799)) b!6894221))

(assert (= (and b!6894221 res!2810795) b!6894216))

(assert (= (and b!6894216 (not res!2810802)) b!6894222))

(assert (= (and b!6894222 (not res!2810800)) b!6894211))

(assert (= (or b!6894223 b!6894213 b!6894216) bm!627273))

(assert (=> b!6894219 m!7614176))

(assert (=> bm!627273 m!7614152))

(assert (=> b!6894212 m!7614178))

(assert (=> b!6894212 m!7614178))

(assert (=> b!6894212 m!7614180))

(assert (=> b!6894211 m!7614176))

(assert (=> d!2161348 m!7614152))

(assert (=> d!2161348 m!7614174))

(declare-fun m!7614190 () Bool)

(assert (=> b!6894217 m!7614190))

(assert (=> b!6894210 m!7614176))

(assert (=> b!6894210 m!7614176))

(declare-fun m!7614192 () Bool)

(assert (=> b!6894210 m!7614192))

(assert (=> b!6894210 m!7614178))

(assert (=> b!6894210 m!7614192))

(assert (=> b!6894210 m!7614178))

(declare-fun m!7614194 () Bool)

(assert (=> b!6894210 m!7614194))

(assert (=> b!6894222 m!7614178))

(assert (=> b!6894222 m!7614178))

(assert (=> b!6894222 m!7614180))

(assert (=> b!6894019 d!2161348))

(declare-fun d!2161350 () Bool)

(assert (=> d!2161350 (= (matchR!8970 lt!2463420 s!14361) (matchRSpec!3888 lt!2463420 s!14361))))

(declare-fun lt!2463448 () Unit!160370)

(assert (=> d!2161350 (= lt!2463448 (choose!51336 lt!2463420 s!14361))))

(assert (=> d!2161350 (validRegex!8533 lt!2463420)))

(assert (=> d!2161350 (= (mainMatchTheorem!3888 lt!2463420 s!14361) lt!2463448)))

(declare-fun bs!1840619 () Bool)

(assert (= bs!1840619 d!2161350))

(assert (=> bs!1840619 m!7614122))

(assert (=> bs!1840619 m!7614128))

(declare-fun m!7614196 () Bool)

(assert (=> bs!1840619 m!7614196))

(assert (=> bs!1840619 m!7614182))

(assert (=> b!6894019 d!2161350))

(declare-fun bs!1840620 () Bool)

(declare-fun b!6894237 () Bool)

(assert (= bs!1840620 (and b!6894237 b!6894005)))

(declare-fun lambda!390813 () Int)

(assert (=> bs!1840620 (not (= lambda!390813 lambda!390805))))

(assert (=> bs!1840620 (not (= lambda!390813 lambda!390806))))

(declare-fun bs!1840621 () Bool)

(assert (= bs!1840621 (and b!6894237 b!6894107)))

(assert (=> bs!1840621 (= (and (= (reg!17154 lt!2463420) (reg!17154 lt!2463430)) (= lt!2463420 lt!2463430)) (= lambda!390813 lambda!390811))))

(declare-fun bs!1840622 () Bool)

(assert (= bs!1840622 (and b!6894237 b!6894108)))

(assert (=> bs!1840622 (not (= lambda!390813 lambda!390812))))

(assert (=> b!6894237 true))

(assert (=> b!6894237 true))

(declare-fun bs!1840623 () Bool)

(declare-fun b!6894238 () Bool)

(assert (= bs!1840623 (and b!6894238 b!6894108)))

(declare-fun lambda!390814 () Int)

(assert (=> bs!1840623 (= (and (= (regOne!34162 lt!2463420) (regOne!34162 lt!2463430)) (= (regTwo!34162 lt!2463420) (regTwo!34162 lt!2463430))) (= lambda!390814 lambda!390812))))

(declare-fun bs!1840624 () Bool)

(assert (= bs!1840624 (and b!6894238 b!6894005)))

(assert (=> bs!1840624 (= (and (= (regOne!34162 lt!2463420) r1!6342) (= (regTwo!34162 lt!2463420) lt!2463421)) (= lambda!390814 lambda!390806))))

(declare-fun bs!1840625 () Bool)

(assert (= bs!1840625 (and b!6894238 b!6894237)))

(assert (=> bs!1840625 (not (= lambda!390814 lambda!390813))))

(assert (=> bs!1840624 (not (= lambda!390814 lambda!390805))))

(declare-fun bs!1840626 () Bool)

(assert (= bs!1840626 (and b!6894238 b!6894107)))

(assert (=> bs!1840626 (not (= lambda!390814 lambda!390811))))

(assert (=> b!6894238 true))

(assert (=> b!6894238 true))

(declare-fun c!1281598 () Bool)

(declare-fun bm!627274 () Bool)

(declare-fun call!627279 () Bool)

(assert (=> bm!627274 (= call!627279 (Exists!3833 (ite c!1281598 lambda!390813 lambda!390814)))))

(declare-fun b!6894233 () Bool)

(declare-fun e!4152847 () Bool)

(declare-fun e!4152848 () Bool)

(assert (=> b!6894233 (= e!4152847 e!4152848)))

(declare-fun res!2810808 () Bool)

(assert (=> b!6894233 (= res!2810808 (not ((_ is EmptyLang!16825) lt!2463420)))))

(assert (=> b!6894233 (=> (not res!2810808) (not e!4152848))))

(declare-fun b!6894234 () Bool)

(declare-fun res!2810809 () Bool)

(declare-fun e!4152846 () Bool)

(assert (=> b!6894234 (=> res!2810809 e!4152846)))

(declare-fun call!627280 () Bool)

(assert (=> b!6894234 (= res!2810809 call!627280)))

(declare-fun e!4152850 () Bool)

(assert (=> b!6894234 (= e!4152850 e!4152846)))

(declare-fun b!6894235 () Bool)

(declare-fun c!1281599 () Bool)

(assert (=> b!6894235 (= c!1281599 ((_ is Union!16825) lt!2463420))))

(declare-fun e!4152845 () Bool)

(declare-fun e!4152849 () Bool)

(assert (=> b!6894235 (= e!4152845 e!4152849)))

(declare-fun b!6894236 () Bool)

(declare-fun e!4152844 () Bool)

(assert (=> b!6894236 (= e!4152844 (matchRSpec!3888 (regTwo!34163 lt!2463420) s!14361))))

(declare-fun d!2161352 () Bool)

(declare-fun c!1281601 () Bool)

(assert (=> d!2161352 (= c!1281601 ((_ is EmptyExpr!16825) lt!2463420))))

(assert (=> d!2161352 (= (matchRSpec!3888 lt!2463420 s!14361) e!4152847)))

(assert (=> b!6894237 (= e!4152846 call!627279)))

(assert (=> b!6894238 (= e!4152850 call!627279)))

(declare-fun b!6894239 () Bool)

(assert (=> b!6894239 (= e!4152849 e!4152844)))

(declare-fun res!2810810 () Bool)

(assert (=> b!6894239 (= res!2810810 (matchRSpec!3888 (regOne!34163 lt!2463420) s!14361))))

(assert (=> b!6894239 (=> res!2810810 e!4152844)))

(declare-fun bm!627275 () Bool)

(assert (=> bm!627275 (= call!627280 (isEmpty!38708 s!14361))))

(declare-fun b!6894240 () Bool)

(assert (=> b!6894240 (= e!4152845 (= s!14361 (Cons!66458 (c!1281549 lt!2463420) Nil!66458)))))

(declare-fun b!6894241 () Bool)

(assert (=> b!6894241 (= e!4152849 e!4152850)))

(assert (=> b!6894241 (= c!1281598 ((_ is Star!16825) lt!2463420))))

(declare-fun b!6894242 () Bool)

(declare-fun c!1281600 () Bool)

(assert (=> b!6894242 (= c!1281600 ((_ is ElementMatch!16825) lt!2463420))))

(assert (=> b!6894242 (= e!4152848 e!4152845)))

(declare-fun b!6894243 () Bool)

(assert (=> b!6894243 (= e!4152847 call!627280)))

(assert (= (and d!2161352 c!1281601) b!6894243))

(assert (= (and d!2161352 (not c!1281601)) b!6894233))

(assert (= (and b!6894233 res!2810808) b!6894242))

(assert (= (and b!6894242 c!1281600) b!6894240))

(assert (= (and b!6894242 (not c!1281600)) b!6894235))

(assert (= (and b!6894235 c!1281599) b!6894239))

(assert (= (and b!6894235 (not c!1281599)) b!6894241))

(assert (= (and b!6894239 (not res!2810810)) b!6894236))

(assert (= (and b!6894241 c!1281598) b!6894234))

(assert (= (and b!6894241 (not c!1281598)) b!6894238))

(assert (= (and b!6894234 (not res!2810809)) b!6894237))

(assert (= (or b!6894237 b!6894238) bm!627274))

(assert (= (or b!6894243 b!6894234) bm!627275))

(declare-fun m!7614220 () Bool)

(assert (=> bm!627274 m!7614220))

(declare-fun m!7614222 () Bool)

(assert (=> b!6894236 m!7614222))

(declare-fun m!7614224 () Bool)

(assert (=> b!6894239 m!7614224))

(assert (=> bm!627275 m!7614152))

(assert (=> b!6894019 d!2161352))

(declare-fun b!6894244 () Bool)

(declare-fun e!4152855 () Bool)

(declare-fun e!4152857 () Bool)

(assert (=> b!6894244 (= e!4152855 e!4152857)))

(declare-fun c!1281602 () Bool)

(assert (=> b!6894244 (= c!1281602 ((_ is Union!16825) lt!2463421))))

(declare-fun b!6894245 () Bool)

(declare-fun e!4152856 () Bool)

(declare-fun call!627283 () Bool)

(assert (=> b!6894245 (= e!4152856 call!627283)))

(declare-fun c!1281603 () Bool)

(declare-fun bm!627276 () Bool)

(declare-fun call!627281 () Bool)

(assert (=> bm!627276 (= call!627281 (validRegex!8533 (ite c!1281603 (reg!17154 lt!2463421) (ite c!1281602 (regTwo!34163 lt!2463421) (regOne!34162 lt!2463421)))))))

(declare-fun bm!627277 () Bool)

(assert (=> bm!627277 (= call!627283 call!627281)))

(declare-fun d!2161356 () Bool)

(declare-fun res!2810815 () Bool)

(declare-fun e!4152852 () Bool)

(assert (=> d!2161356 (=> res!2810815 e!4152852)))

(assert (=> d!2161356 (= res!2810815 ((_ is ElementMatch!16825) lt!2463421))))

(assert (=> d!2161356 (= (validRegex!8533 lt!2463421) e!4152852)))

(declare-fun b!6894246 () Bool)

(assert (=> b!6894246 (= e!4152852 e!4152855)))

(assert (=> b!6894246 (= c!1281603 ((_ is Star!16825) lt!2463421))))

(declare-fun b!6894247 () Bool)

(declare-fun res!2810811 () Bool)

(assert (=> b!6894247 (=> (not res!2810811) (not e!4152856))))

(declare-fun call!627282 () Bool)

(assert (=> b!6894247 (= res!2810811 call!627282)))

(assert (=> b!6894247 (= e!4152857 e!4152856)))

(declare-fun bm!627278 () Bool)

(assert (=> bm!627278 (= call!627282 (validRegex!8533 (ite c!1281602 (regOne!34163 lt!2463421) (regTwo!34162 lt!2463421))))))

(declare-fun b!6894248 () Bool)

(declare-fun e!4152853 () Bool)

(assert (=> b!6894248 (= e!4152853 call!627281)))

(declare-fun b!6894249 () Bool)

(declare-fun e!4152854 () Bool)

(declare-fun e!4152851 () Bool)

(assert (=> b!6894249 (= e!4152854 e!4152851)))

(declare-fun res!2810812 () Bool)

(assert (=> b!6894249 (=> (not res!2810812) (not e!4152851))))

(assert (=> b!6894249 (= res!2810812 call!627283)))

(declare-fun b!6894250 () Bool)

(assert (=> b!6894250 (= e!4152855 e!4152853)))

(declare-fun res!2810814 () Bool)

(assert (=> b!6894250 (= res!2810814 (not (nullable!6697 (reg!17154 lt!2463421))))))

(assert (=> b!6894250 (=> (not res!2810814) (not e!4152853))))

(declare-fun b!6894251 () Bool)

(assert (=> b!6894251 (= e!4152851 call!627282)))

(declare-fun b!6894252 () Bool)

(declare-fun res!2810813 () Bool)

(assert (=> b!6894252 (=> res!2810813 e!4152854)))

(assert (=> b!6894252 (= res!2810813 (not ((_ is Concat!25670) lt!2463421)))))

(assert (=> b!6894252 (= e!4152857 e!4152854)))

(assert (= (and d!2161356 (not res!2810815)) b!6894246))

(assert (= (and b!6894246 c!1281603) b!6894250))

(assert (= (and b!6894246 (not c!1281603)) b!6894244))

(assert (= (and b!6894250 res!2810814) b!6894248))

(assert (= (and b!6894244 c!1281602) b!6894247))

(assert (= (and b!6894244 (not c!1281602)) b!6894252))

(assert (= (and b!6894247 res!2810811) b!6894245))

(assert (= (and b!6894252 (not res!2810813)) b!6894249))

(assert (= (and b!6894249 res!2810812) b!6894251))

(assert (= (or b!6894247 b!6894251) bm!627278))

(assert (= (or b!6894245 b!6894249) bm!627277))

(assert (= (or b!6894248 bm!627277) bm!627276))

(declare-fun m!7614226 () Bool)

(assert (=> bm!627276 m!7614226))

(declare-fun m!7614228 () Bool)

(assert (=> bm!627278 m!7614228))

(declare-fun m!7614230 () Bool)

(assert (=> b!6894250 m!7614230))

(assert (=> b!6894010 d!2161356))

(declare-fun b!6894253 () Bool)

(declare-fun e!4152862 () Bool)

(declare-fun e!4152864 () Bool)

(assert (=> b!6894253 (= e!4152862 e!4152864)))

(declare-fun c!1281604 () Bool)

(assert (=> b!6894253 (= c!1281604 ((_ is Union!16825) r1!6342))))

(declare-fun b!6894254 () Bool)

(declare-fun e!4152863 () Bool)

(declare-fun call!627286 () Bool)

(assert (=> b!6894254 (= e!4152863 call!627286)))

(declare-fun bm!627279 () Bool)

(declare-fun c!1281605 () Bool)

(declare-fun call!627284 () Bool)

(assert (=> bm!627279 (= call!627284 (validRegex!8533 (ite c!1281605 (reg!17154 r1!6342) (ite c!1281604 (regTwo!34163 r1!6342) (regOne!34162 r1!6342)))))))

(declare-fun bm!627280 () Bool)

(assert (=> bm!627280 (= call!627286 call!627284)))

(declare-fun d!2161358 () Bool)

(declare-fun res!2810820 () Bool)

(declare-fun e!4152859 () Bool)

(assert (=> d!2161358 (=> res!2810820 e!4152859)))

(assert (=> d!2161358 (= res!2810820 ((_ is ElementMatch!16825) r1!6342))))

(assert (=> d!2161358 (= (validRegex!8533 r1!6342) e!4152859)))

(declare-fun b!6894255 () Bool)

(assert (=> b!6894255 (= e!4152859 e!4152862)))

(assert (=> b!6894255 (= c!1281605 ((_ is Star!16825) r1!6342))))

(declare-fun b!6894256 () Bool)

(declare-fun res!2810816 () Bool)

(assert (=> b!6894256 (=> (not res!2810816) (not e!4152863))))

(declare-fun call!627285 () Bool)

(assert (=> b!6894256 (= res!2810816 call!627285)))

(assert (=> b!6894256 (= e!4152864 e!4152863)))

(declare-fun bm!627281 () Bool)

(assert (=> bm!627281 (= call!627285 (validRegex!8533 (ite c!1281604 (regOne!34163 r1!6342) (regTwo!34162 r1!6342))))))

(declare-fun b!6894257 () Bool)

(declare-fun e!4152860 () Bool)

(assert (=> b!6894257 (= e!4152860 call!627284)))

(declare-fun b!6894258 () Bool)

(declare-fun e!4152861 () Bool)

(declare-fun e!4152858 () Bool)

(assert (=> b!6894258 (= e!4152861 e!4152858)))

(declare-fun res!2810817 () Bool)

(assert (=> b!6894258 (=> (not res!2810817) (not e!4152858))))

(assert (=> b!6894258 (= res!2810817 call!627286)))

(declare-fun b!6894259 () Bool)

(assert (=> b!6894259 (= e!4152862 e!4152860)))

(declare-fun res!2810819 () Bool)

(assert (=> b!6894259 (= res!2810819 (not (nullable!6697 (reg!17154 r1!6342))))))

(assert (=> b!6894259 (=> (not res!2810819) (not e!4152860))))

(declare-fun b!6894260 () Bool)

(assert (=> b!6894260 (= e!4152858 call!627285)))

(declare-fun b!6894261 () Bool)

(declare-fun res!2810818 () Bool)

(assert (=> b!6894261 (=> res!2810818 e!4152861)))

(assert (=> b!6894261 (= res!2810818 (not ((_ is Concat!25670) r1!6342)))))

(assert (=> b!6894261 (= e!4152864 e!4152861)))

(assert (= (and d!2161358 (not res!2810820)) b!6894255))

(assert (= (and b!6894255 c!1281605) b!6894259))

(assert (= (and b!6894255 (not c!1281605)) b!6894253))

(assert (= (and b!6894259 res!2810819) b!6894257))

(assert (= (and b!6894253 c!1281604) b!6894256))

(assert (= (and b!6894253 (not c!1281604)) b!6894261))

(assert (= (and b!6894256 res!2810816) b!6894254))

(assert (= (and b!6894261 (not res!2810818)) b!6894258))

(assert (= (and b!6894258 res!2810817) b!6894260))

(assert (= (or b!6894256 b!6894260) bm!627281))

(assert (= (or b!6894254 b!6894258) bm!627280))

(assert (= (or b!6894257 bm!627280) bm!627279))

(declare-fun m!7614232 () Bool)

(assert (=> bm!627279 m!7614232))

(declare-fun m!7614234 () Bool)

(assert (=> bm!627281 m!7614234))

(declare-fun m!7614236 () Bool)

(assert (=> b!6894259 m!7614236))

(assert (=> start!664426 d!2161358))

(declare-fun d!2161360 () Bool)

(declare-fun choose!51337 (Int) Bool)

(assert (=> d!2161360 (= (Exists!3833 lambda!390805) (choose!51337 lambda!390805))))

(declare-fun bs!1840627 () Bool)

(assert (= bs!1840627 d!2161360))

(declare-fun m!7614238 () Bool)

(assert (=> bs!1840627 m!7614238))

(assert (=> b!6894005 d!2161360))

(declare-fun b!6894262 () Bool)

(declare-fun e!4152870 () Bool)

(assert (=> b!6894262 (= e!4152870 (matchR!8970 (derivativeStep!5376 r1!6342 (head!13829 (_1!36995 lt!2463422))) (tail!12881 (_1!36995 lt!2463422))))))

(declare-fun b!6894263 () Bool)

(declare-fun e!4152867 () Bool)

(assert (=> b!6894263 (= e!4152867 (not (= (head!13829 (_1!36995 lt!2463422)) (c!1281549 r1!6342))))))

(declare-fun b!6894264 () Bool)

(declare-fun res!2810827 () Bool)

(declare-fun e!4152871 () Bool)

(assert (=> b!6894264 (=> (not res!2810827) (not e!4152871))))

(assert (=> b!6894264 (= res!2810827 (isEmpty!38708 (tail!12881 (_1!36995 lt!2463422))))))

(declare-fun b!6894265 () Bool)

(declare-fun res!2810822 () Bool)

(assert (=> b!6894265 (=> (not res!2810822) (not e!4152871))))

(declare-fun call!627287 () Bool)

(assert (=> b!6894265 (= res!2810822 (not call!627287))))

(declare-fun b!6894266 () Bool)

(declare-fun e!4152869 () Bool)

(declare-fun lt!2463449 () Bool)

(assert (=> b!6894266 (= e!4152869 (not lt!2463449))))

(declare-fun b!6894267 () Bool)

(declare-fun res!2810825 () Bool)

(declare-fun e!4152866 () Bool)

(assert (=> b!6894267 (=> res!2810825 e!4152866)))

(assert (=> b!6894267 (= res!2810825 e!4152871)))

(declare-fun res!2810824 () Bool)

(assert (=> b!6894267 (=> (not res!2810824) (not e!4152871))))

(assert (=> b!6894267 (= res!2810824 lt!2463449)))

(declare-fun b!6894268 () Bool)

(declare-fun e!4152868 () Bool)

(assert (=> b!6894268 (= e!4152868 e!4152867)))

(declare-fun res!2810828 () Bool)

(assert (=> b!6894268 (=> res!2810828 e!4152867)))

(assert (=> b!6894268 (= res!2810828 call!627287)))

(declare-fun b!6894269 () Bool)

(assert (=> b!6894269 (= e!4152870 (nullable!6697 r1!6342))))

(declare-fun b!6894270 () Bool)

(declare-fun e!4152865 () Bool)

(assert (=> b!6894270 (= e!4152865 e!4152869)))

(declare-fun c!1281606 () Bool)

(assert (=> b!6894270 (= c!1281606 ((_ is EmptyLang!16825) r1!6342))))

(declare-fun bm!627282 () Bool)

(assert (=> bm!627282 (= call!627287 (isEmpty!38708 (_1!36995 lt!2463422)))))

(declare-fun d!2161362 () Bool)

(assert (=> d!2161362 e!4152865))

(declare-fun c!1281607 () Bool)

(assert (=> d!2161362 (= c!1281607 ((_ is EmptyExpr!16825) r1!6342))))

(assert (=> d!2161362 (= lt!2463449 e!4152870)))

(declare-fun c!1281608 () Bool)

(assert (=> d!2161362 (= c!1281608 (isEmpty!38708 (_1!36995 lt!2463422)))))

(assert (=> d!2161362 (validRegex!8533 r1!6342)))

(assert (=> d!2161362 (= (matchR!8970 r1!6342 (_1!36995 lt!2463422)) lt!2463449)))

(declare-fun b!6894271 () Bool)

(assert (=> b!6894271 (= e!4152871 (= (head!13829 (_1!36995 lt!2463422)) (c!1281549 r1!6342)))))

(declare-fun b!6894272 () Bool)

(declare-fun res!2810823 () Bool)

(assert (=> b!6894272 (=> res!2810823 e!4152866)))

(assert (=> b!6894272 (= res!2810823 (not ((_ is ElementMatch!16825) r1!6342)))))

(assert (=> b!6894272 (= e!4152869 e!4152866)))

(declare-fun b!6894273 () Bool)

(assert (=> b!6894273 (= e!4152866 e!4152868)))

(declare-fun res!2810821 () Bool)

(assert (=> b!6894273 (=> (not res!2810821) (not e!4152868))))

(assert (=> b!6894273 (= res!2810821 (not lt!2463449))))

(declare-fun b!6894274 () Bool)

(declare-fun res!2810826 () Bool)

(assert (=> b!6894274 (=> res!2810826 e!4152867)))

(assert (=> b!6894274 (= res!2810826 (not (isEmpty!38708 (tail!12881 (_1!36995 lt!2463422)))))))

(declare-fun b!6894275 () Bool)

(assert (=> b!6894275 (= e!4152865 (= lt!2463449 call!627287))))

(assert (= (and d!2161362 c!1281608) b!6894269))

(assert (= (and d!2161362 (not c!1281608)) b!6894262))

(assert (= (and d!2161362 c!1281607) b!6894275))

(assert (= (and d!2161362 (not c!1281607)) b!6894270))

(assert (= (and b!6894270 c!1281606) b!6894266))

(assert (= (and b!6894270 (not c!1281606)) b!6894272))

(assert (= (and b!6894272 (not res!2810823)) b!6894267))

(assert (= (and b!6894267 res!2810824) b!6894265))

(assert (= (and b!6894265 res!2810822) b!6894264))

(assert (= (and b!6894264 res!2810827) b!6894271))

(assert (= (and b!6894267 (not res!2810825)) b!6894273))

(assert (= (and b!6894273 res!2810821) b!6894268))

(assert (= (and b!6894268 (not res!2810828)) b!6894274))

(assert (= (and b!6894274 (not res!2810826)) b!6894263))

(assert (= (or b!6894275 b!6894265 b!6894268) bm!627282))

(declare-fun m!7614240 () Bool)

(assert (=> b!6894271 m!7614240))

(declare-fun m!7614242 () Bool)

(assert (=> bm!627282 m!7614242))

(declare-fun m!7614244 () Bool)

(assert (=> b!6894264 m!7614244))

(assert (=> b!6894264 m!7614244))

(declare-fun m!7614246 () Bool)

(assert (=> b!6894264 m!7614246))

(assert (=> b!6894263 m!7614240))

(assert (=> d!2161362 m!7614242))

(assert (=> d!2161362 m!7614096))

(declare-fun m!7614248 () Bool)

(assert (=> b!6894269 m!7614248))

(assert (=> b!6894262 m!7614240))

(assert (=> b!6894262 m!7614240))

(declare-fun m!7614250 () Bool)

(assert (=> b!6894262 m!7614250))

(assert (=> b!6894262 m!7614244))

(assert (=> b!6894262 m!7614250))

(assert (=> b!6894262 m!7614244))

(declare-fun m!7614252 () Bool)

(assert (=> b!6894262 m!7614252))

(assert (=> b!6894274 m!7614244))

(assert (=> b!6894274 m!7614244))

(assert (=> b!6894274 m!7614246))

(assert (=> b!6894005 d!2161362))

(declare-fun d!2161364 () Bool)

(assert (=> d!2161364 (= (Exists!3833 lambda!390806) (choose!51337 lambda!390806))))

(declare-fun bs!1840628 () Bool)

(assert (= bs!1840628 d!2161364))

(declare-fun m!7614254 () Bool)

(assert (=> bs!1840628 m!7614254))

(assert (=> b!6894005 d!2161364))

(declare-fun bs!1840629 () Bool)

(declare-fun b!6894302 () Bool)

(assert (= bs!1840629 (and b!6894302 b!6894238)))

(declare-fun lambda!390815 () Int)

(assert (=> bs!1840629 (not (= lambda!390815 lambda!390814))))

(declare-fun bs!1840630 () Bool)

(assert (= bs!1840630 (and b!6894302 b!6894108)))

(assert (=> bs!1840630 (not (= lambda!390815 lambda!390812))))

(declare-fun bs!1840631 () Bool)

(assert (= bs!1840631 (and b!6894302 b!6894005)))

(assert (=> bs!1840631 (not (= lambda!390815 lambda!390806))))

(declare-fun bs!1840632 () Bool)

(assert (= bs!1840632 (and b!6894302 b!6894237)))

(assert (=> bs!1840632 (= (and (= (_1!36995 lt!2463422) s!14361) (= (reg!17154 r1!6342) (reg!17154 lt!2463420)) (= r1!6342 lt!2463420)) (= lambda!390815 lambda!390813))))

(assert (=> bs!1840631 (not (= lambda!390815 lambda!390805))))

(declare-fun bs!1840633 () Bool)

(assert (= bs!1840633 (and b!6894302 b!6894107)))

(assert (=> bs!1840633 (= (and (= (_1!36995 lt!2463422) s!14361) (= (reg!17154 r1!6342) (reg!17154 lt!2463430)) (= r1!6342 lt!2463430)) (= lambda!390815 lambda!390811))))

(assert (=> b!6894302 true))

(assert (=> b!6894302 true))

(declare-fun bs!1840634 () Bool)

(declare-fun b!6894303 () Bool)

(assert (= bs!1840634 (and b!6894303 b!6894302)))

(declare-fun lambda!390818 () Int)

(assert (=> bs!1840634 (not (= lambda!390818 lambda!390815))))

(declare-fun bs!1840635 () Bool)

(assert (= bs!1840635 (and b!6894303 b!6894238)))

(assert (=> bs!1840635 (= (and (= (_1!36995 lt!2463422) s!14361) (= (regOne!34162 r1!6342) (regOne!34162 lt!2463420)) (= (regTwo!34162 r1!6342) (regTwo!34162 lt!2463420))) (= lambda!390818 lambda!390814))))

(declare-fun bs!1840636 () Bool)

(assert (= bs!1840636 (and b!6894303 b!6894108)))

(assert (=> bs!1840636 (= (and (= (_1!36995 lt!2463422) s!14361) (= (regOne!34162 r1!6342) (regOne!34162 lt!2463430)) (= (regTwo!34162 r1!6342) (regTwo!34162 lt!2463430))) (= lambda!390818 lambda!390812))))

(declare-fun bs!1840637 () Bool)

(assert (= bs!1840637 (and b!6894303 b!6894005)))

(assert (=> bs!1840637 (= (and (= (_1!36995 lt!2463422) s!14361) (= (regOne!34162 r1!6342) r1!6342) (= (regTwo!34162 r1!6342) lt!2463421)) (= lambda!390818 lambda!390806))))

(declare-fun bs!1840638 () Bool)

(assert (= bs!1840638 (and b!6894303 b!6894237)))

(assert (=> bs!1840638 (not (= lambda!390818 lambda!390813))))

(assert (=> bs!1840637 (not (= lambda!390818 lambda!390805))))

(declare-fun bs!1840639 () Bool)

(assert (= bs!1840639 (and b!6894303 b!6894107)))

(assert (=> bs!1840639 (not (= lambda!390818 lambda!390811))))

(assert (=> b!6894303 true))

(assert (=> b!6894303 true))

(declare-fun c!1281617 () Bool)

(declare-fun call!627288 () Bool)

(declare-fun bm!627283 () Bool)

(assert (=> bm!627283 (= call!627288 (Exists!3833 (ite c!1281617 lambda!390815 lambda!390818)))))

(declare-fun b!6894298 () Bool)

(declare-fun e!4152889 () Bool)

(declare-fun e!4152890 () Bool)

(assert (=> b!6894298 (= e!4152889 e!4152890)))

(declare-fun res!2810835 () Bool)

(assert (=> b!6894298 (= res!2810835 (not ((_ is EmptyLang!16825) r1!6342)))))

(assert (=> b!6894298 (=> (not res!2810835) (not e!4152890))))

(declare-fun b!6894299 () Bool)

(declare-fun res!2810836 () Bool)

(declare-fun e!4152888 () Bool)

(assert (=> b!6894299 (=> res!2810836 e!4152888)))

(declare-fun call!627289 () Bool)

(assert (=> b!6894299 (= res!2810836 call!627289)))

(declare-fun e!4152892 () Bool)

(assert (=> b!6894299 (= e!4152892 e!4152888)))

(declare-fun b!6894300 () Bool)

(declare-fun c!1281618 () Bool)

(assert (=> b!6894300 (= c!1281618 ((_ is Union!16825) r1!6342))))

(declare-fun e!4152887 () Bool)

(declare-fun e!4152891 () Bool)

(assert (=> b!6894300 (= e!4152887 e!4152891)))

(declare-fun b!6894301 () Bool)

(declare-fun e!4152886 () Bool)

(assert (=> b!6894301 (= e!4152886 (matchRSpec!3888 (regTwo!34163 r1!6342) (_1!36995 lt!2463422)))))

(declare-fun d!2161366 () Bool)

(declare-fun c!1281620 () Bool)

(assert (=> d!2161366 (= c!1281620 ((_ is EmptyExpr!16825) r1!6342))))

(assert (=> d!2161366 (= (matchRSpec!3888 r1!6342 (_1!36995 lt!2463422)) e!4152889)))

(assert (=> b!6894302 (= e!4152888 call!627288)))

(assert (=> b!6894303 (= e!4152892 call!627288)))

(declare-fun b!6894304 () Bool)

(assert (=> b!6894304 (= e!4152891 e!4152886)))

(declare-fun res!2810837 () Bool)

(assert (=> b!6894304 (= res!2810837 (matchRSpec!3888 (regOne!34163 r1!6342) (_1!36995 lt!2463422)))))

(assert (=> b!6894304 (=> res!2810837 e!4152886)))

(declare-fun bm!627284 () Bool)

(assert (=> bm!627284 (= call!627289 (isEmpty!38708 (_1!36995 lt!2463422)))))

(declare-fun b!6894305 () Bool)

(assert (=> b!6894305 (= e!4152887 (= (_1!36995 lt!2463422) (Cons!66458 (c!1281549 r1!6342) Nil!66458)))))

(declare-fun b!6894306 () Bool)

(assert (=> b!6894306 (= e!4152891 e!4152892)))

(assert (=> b!6894306 (= c!1281617 ((_ is Star!16825) r1!6342))))

(declare-fun b!6894307 () Bool)

(declare-fun c!1281619 () Bool)

(assert (=> b!6894307 (= c!1281619 ((_ is ElementMatch!16825) r1!6342))))

(assert (=> b!6894307 (= e!4152890 e!4152887)))

(declare-fun b!6894308 () Bool)

(assert (=> b!6894308 (= e!4152889 call!627289)))

(assert (= (and d!2161366 c!1281620) b!6894308))

(assert (= (and d!2161366 (not c!1281620)) b!6894298))

(assert (= (and b!6894298 res!2810835) b!6894307))

(assert (= (and b!6894307 c!1281619) b!6894305))

(assert (= (and b!6894307 (not c!1281619)) b!6894300))

(assert (= (and b!6894300 c!1281618) b!6894304))

(assert (= (and b!6894300 (not c!1281618)) b!6894306))

(assert (= (and b!6894304 (not res!2810837)) b!6894301))

(assert (= (and b!6894306 c!1281617) b!6894299))

(assert (= (and b!6894306 (not c!1281617)) b!6894303))

(assert (= (and b!6894299 (not res!2810836)) b!6894302))

(assert (= (or b!6894302 b!6894303) bm!627283))

(assert (= (or b!6894308 b!6894299) bm!627284))

(declare-fun m!7614256 () Bool)

(assert (=> bm!627283 m!7614256))

(declare-fun m!7614258 () Bool)

(assert (=> b!6894301 m!7614258))

(declare-fun m!7614260 () Bool)

(assert (=> b!6894304 m!7614260))

(assert (=> bm!627284 m!7614242))

(assert (=> b!6894005 d!2161366))

(declare-fun bs!1840643 () Bool)

(declare-fun d!2161368 () Bool)

(assert (= bs!1840643 (and d!2161368 b!6894302)))

(declare-fun lambda!390827 () Int)

(assert (=> bs!1840643 (not (= lambda!390827 lambda!390815))))

(declare-fun bs!1840644 () Bool)

(assert (= bs!1840644 (and d!2161368 b!6894303)))

(assert (=> bs!1840644 (not (= lambda!390827 lambda!390818))))

(declare-fun bs!1840645 () Bool)

(assert (= bs!1840645 (and d!2161368 b!6894238)))

(assert (=> bs!1840645 (not (= lambda!390827 lambda!390814))))

(declare-fun bs!1840646 () Bool)

(assert (= bs!1840646 (and d!2161368 b!6894108)))

(assert (=> bs!1840646 (not (= lambda!390827 lambda!390812))))

(declare-fun bs!1840647 () Bool)

(assert (= bs!1840647 (and d!2161368 b!6894005)))

(assert (=> bs!1840647 (not (= lambda!390827 lambda!390806))))

(declare-fun bs!1840648 () Bool)

(assert (= bs!1840648 (and d!2161368 b!6894237)))

(assert (=> bs!1840648 (not (= lambda!390827 lambda!390813))))

(assert (=> bs!1840647 (= lambda!390827 lambda!390805)))

(declare-fun bs!1840649 () Bool)

(assert (= bs!1840649 (and d!2161368 b!6894107)))

(assert (=> bs!1840649 (not (= lambda!390827 lambda!390811))))

(assert (=> d!2161368 true))

(assert (=> d!2161368 true))

(assert (=> d!2161368 true))

(declare-fun lambda!390828 () Int)

(assert (=> bs!1840643 (not (= lambda!390828 lambda!390815))))

(assert (=> bs!1840644 (= (and (= s!14361 (_1!36995 lt!2463422)) (= r1!6342 (regOne!34162 r1!6342)) (= lt!2463421 (regTwo!34162 r1!6342))) (= lambda!390828 lambda!390818))))

(assert (=> bs!1840646 (= (and (= r1!6342 (regOne!34162 lt!2463430)) (= lt!2463421 (regTwo!34162 lt!2463430))) (= lambda!390828 lambda!390812))))

(assert (=> bs!1840647 (= lambda!390828 lambda!390806)))

(assert (=> bs!1840648 (not (= lambda!390828 lambda!390813))))

(assert (=> bs!1840647 (not (= lambda!390828 lambda!390805))))

(assert (=> bs!1840649 (not (= lambda!390828 lambda!390811))))

(assert (=> bs!1840645 (= (and (= r1!6342 (regOne!34162 lt!2463420)) (= lt!2463421 (regTwo!34162 lt!2463420))) (= lambda!390828 lambda!390814))))

(declare-fun bs!1840651 () Bool)

(assert (= bs!1840651 d!2161368))

(assert (=> bs!1840651 (not (= lambda!390828 lambda!390827))))

(assert (=> d!2161368 true))

(assert (=> d!2161368 true))

(assert (=> d!2161368 true))

(assert (=> d!2161368 (= (Exists!3833 lambda!390827) (Exists!3833 lambda!390828))))

(declare-fun lt!2463452 () Unit!160370)

(declare-fun choose!51339 (Regex!16825 Regex!16825 List!66582) Unit!160370)

(assert (=> d!2161368 (= lt!2463452 (choose!51339 r1!6342 lt!2463421 s!14361))))

(assert (=> d!2161368 (validRegex!8533 r1!6342)))

(assert (=> d!2161368 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2306 r1!6342 lt!2463421 s!14361) lt!2463452)))

(declare-fun m!7614272 () Bool)

(assert (=> bs!1840651 m!7614272))

(declare-fun m!7614274 () Bool)

(assert (=> bs!1840651 m!7614274))

(declare-fun m!7614276 () Bool)

(assert (=> bs!1840651 m!7614276))

(assert (=> bs!1840651 m!7614096))

(assert (=> b!6894005 d!2161368))

(declare-fun d!2161376 () Bool)

(assert (=> d!2161376 (= (get!23188 lt!2463429) (v!52875 lt!2463429))))

(assert (=> b!6894005 d!2161376))

(declare-fun d!2161378 () Bool)

(assert (=> d!2161378 (= (matchR!8970 r1!6342 (_1!36995 lt!2463422)) (matchRSpec!3888 r1!6342 (_1!36995 lt!2463422)))))

(declare-fun lt!2463456 () Unit!160370)

(assert (=> d!2161378 (= lt!2463456 (choose!51336 r1!6342 (_1!36995 lt!2463422)))))

(assert (=> d!2161378 (validRegex!8533 r1!6342)))

(assert (=> d!2161378 (= (mainMatchTheorem!3888 r1!6342 (_1!36995 lt!2463422)) lt!2463456)))

(declare-fun bs!1840652 () Bool)

(assert (= bs!1840652 d!2161378))

(assert (=> bs!1840652 m!7614110))

(assert (=> bs!1840652 m!7614102))

(declare-fun m!7614278 () Bool)

(assert (=> bs!1840652 m!7614278))

(assert (=> bs!1840652 m!7614096))

(assert (=> b!6894005 d!2161378))

(declare-fun bs!1840656 () Bool)

(declare-fun d!2161380 () Bool)

(assert (= bs!1840656 (and d!2161380 b!6894302)))

(declare-fun lambda!390836 () Int)

(assert (=> bs!1840656 (not (= lambda!390836 lambda!390815))))

(declare-fun bs!1840657 () Bool)

(assert (= bs!1840657 (and d!2161380 b!6894303)))

(assert (=> bs!1840657 (not (= lambda!390836 lambda!390818))))

(declare-fun bs!1840659 () Bool)

(assert (= bs!1840659 (and d!2161380 d!2161368)))

(assert (=> bs!1840659 (not (= lambda!390836 lambda!390828))))

(declare-fun bs!1840660 () Bool)

(assert (= bs!1840660 (and d!2161380 b!6894108)))

(assert (=> bs!1840660 (not (= lambda!390836 lambda!390812))))

(declare-fun bs!1840661 () Bool)

(assert (= bs!1840661 (and d!2161380 b!6894005)))

(assert (=> bs!1840661 (not (= lambda!390836 lambda!390806))))

(declare-fun bs!1840662 () Bool)

(assert (= bs!1840662 (and d!2161380 b!6894237)))

(assert (=> bs!1840662 (not (= lambda!390836 lambda!390813))))

(assert (=> bs!1840661 (= lambda!390836 lambda!390805)))

(declare-fun bs!1840663 () Bool)

(assert (= bs!1840663 (and d!2161380 b!6894107)))

(assert (=> bs!1840663 (not (= lambda!390836 lambda!390811))))

(declare-fun bs!1840664 () Bool)

(assert (= bs!1840664 (and d!2161380 b!6894238)))

(assert (=> bs!1840664 (not (= lambda!390836 lambda!390814))))

(assert (=> bs!1840659 (= lambda!390836 lambda!390827)))

(assert (=> d!2161380 true))

(assert (=> d!2161380 true))

(assert (=> d!2161380 true))

(assert (=> d!2161380 (= (isDefined!13307 (findConcatSeparation!3018 r1!6342 lt!2463421 Nil!66458 s!14361 s!14361)) (Exists!3833 lambda!390836))))

(declare-fun lt!2463462 () Unit!160370)

(declare-fun choose!51343 (Regex!16825 Regex!16825 List!66582) Unit!160370)

(assert (=> d!2161380 (= lt!2463462 (choose!51343 r1!6342 lt!2463421 s!14361))))

(assert (=> d!2161380 (validRegex!8533 r1!6342)))

(assert (=> d!2161380 (= (lemmaFindConcatSeparationEquivalentToExists!2780 r1!6342 lt!2463421 s!14361) lt!2463462)))

(declare-fun bs!1840665 () Bool)

(assert (= bs!1840665 d!2161380))

(declare-fun m!7614286 () Bool)

(assert (=> bs!1840665 m!7614286))

(assert (=> bs!1840665 m!7614100))

(declare-fun m!7614288 () Bool)

(assert (=> bs!1840665 m!7614288))

(assert (=> bs!1840665 m!7614100))

(declare-fun m!7614290 () Bool)

(assert (=> bs!1840665 m!7614290))

(assert (=> bs!1840665 m!7614096))

(assert (=> b!6894005 d!2161380))

(declare-fun d!2161384 () Bool)

(declare-fun isEmpty!38711 (Option!16604) Bool)

(assert (=> d!2161384 (= (isDefined!13307 lt!2463429) (not (isEmpty!38711 lt!2463429)))))

(declare-fun bs!1840667 () Bool)

(assert (= bs!1840667 d!2161384))

(declare-fun m!7614294 () Bool)

(assert (=> bs!1840667 m!7614294))

(assert (=> b!6894016 d!2161384))

(declare-fun b!6894400 () Bool)

(declare-fun e!4152940 () Bool)

(declare-fun lt!2463476 () Option!16604)

(assert (=> b!6894400 (= e!4152940 (not (isDefined!13307 lt!2463476)))))

(declare-fun b!6894401 () Bool)

(declare-fun res!2810903 () Bool)

(declare-fun e!4152943 () Bool)

(assert (=> b!6894401 (=> (not res!2810903) (not e!4152943))))

(assert (=> b!6894401 (= res!2810903 (matchR!8970 lt!2463421 (_2!36995 (get!23188 lt!2463476))))))

(declare-fun b!6894402 () Bool)

(declare-fun e!4152941 () Option!16604)

(assert (=> b!6894402 (= e!4152941 None!16603)))

(declare-fun b!6894403 () Bool)

(declare-fun ++!14892 (List!66582 List!66582) List!66582)

(assert (=> b!6894403 (= e!4152943 (= (++!14892 (_1!36995 (get!23188 lt!2463476)) (_2!36995 (get!23188 lt!2463476))) s!14361))))

(declare-fun b!6894404 () Bool)

(declare-fun lt!2463475 () Unit!160370)

(declare-fun lt!2463474 () Unit!160370)

(assert (=> b!6894404 (= lt!2463475 lt!2463474)))

(assert (=> b!6894404 (= (++!14892 (++!14892 Nil!66458 (Cons!66458 (h!72906 s!14361) Nil!66458)) (t!380325 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2785 (List!66582 C!33920 List!66582 List!66582) Unit!160370)

(assert (=> b!6894404 (= lt!2463474 (lemmaMoveElementToOtherListKeepsConcatEq!2785 Nil!66458 (h!72906 s!14361) (t!380325 s!14361) s!14361))))

(assert (=> b!6894404 (= e!4152941 (findConcatSeparation!3018 r1!6342 lt!2463421 (++!14892 Nil!66458 (Cons!66458 (h!72906 s!14361) Nil!66458)) (t!380325 s!14361) s!14361))))

(declare-fun b!6894406 () Bool)

(declare-fun e!4152944 () Option!16604)

(assert (=> b!6894406 (= e!4152944 e!4152941)))

(declare-fun c!1281636 () Bool)

(assert (=> b!6894406 (= c!1281636 ((_ is Nil!66458) s!14361))))

(declare-fun b!6894407 () Bool)

(declare-fun e!4152942 () Bool)

(assert (=> b!6894407 (= e!4152942 (matchR!8970 lt!2463421 s!14361))))

(declare-fun b!6894408 () Bool)

(declare-fun res!2810902 () Bool)

(assert (=> b!6894408 (=> (not res!2810902) (not e!4152943))))

(assert (=> b!6894408 (= res!2810902 (matchR!8970 r1!6342 (_1!36995 (get!23188 lt!2463476))))))

(declare-fun b!6894405 () Bool)

(assert (=> b!6894405 (= e!4152944 (Some!16603 (tuple2!67385 Nil!66458 s!14361)))))

(declare-fun d!2161388 () Bool)

(assert (=> d!2161388 e!4152940))

(declare-fun res!2810905 () Bool)

(assert (=> d!2161388 (=> res!2810905 e!4152940)))

(assert (=> d!2161388 (= res!2810905 e!4152943)))

(declare-fun res!2810901 () Bool)

(assert (=> d!2161388 (=> (not res!2810901) (not e!4152943))))

(assert (=> d!2161388 (= res!2810901 (isDefined!13307 lt!2463476))))

(assert (=> d!2161388 (= lt!2463476 e!4152944)))

(declare-fun c!1281635 () Bool)

(assert (=> d!2161388 (= c!1281635 e!4152942)))

(declare-fun res!2810904 () Bool)

(assert (=> d!2161388 (=> (not res!2810904) (not e!4152942))))

(assert (=> d!2161388 (= res!2810904 (matchR!8970 r1!6342 Nil!66458))))

(assert (=> d!2161388 (validRegex!8533 r1!6342)))

(assert (=> d!2161388 (= (findConcatSeparation!3018 r1!6342 lt!2463421 Nil!66458 s!14361 s!14361) lt!2463476)))

(assert (= (and d!2161388 res!2810904) b!6894407))

(assert (= (and d!2161388 c!1281635) b!6894405))

(assert (= (and d!2161388 (not c!1281635)) b!6894406))

(assert (= (and b!6894406 c!1281636) b!6894402))

(assert (= (and b!6894406 (not c!1281636)) b!6894404))

(assert (= (and d!2161388 res!2810901) b!6894408))

(assert (= (and b!6894408 res!2810902) b!6894401))

(assert (= (and b!6894401 res!2810903) b!6894403))

(assert (= (and d!2161388 (not res!2810905)) b!6894400))

(declare-fun m!7614304 () Bool)

(assert (=> b!6894404 m!7614304))

(assert (=> b!6894404 m!7614304))

(declare-fun m!7614306 () Bool)

(assert (=> b!6894404 m!7614306))

(declare-fun m!7614308 () Bool)

(assert (=> b!6894404 m!7614308))

(assert (=> b!6894404 m!7614304))

(declare-fun m!7614310 () Bool)

(assert (=> b!6894404 m!7614310))

(declare-fun m!7614312 () Bool)

(assert (=> b!6894407 m!7614312))

(declare-fun m!7614314 () Bool)

(assert (=> d!2161388 m!7614314))

(declare-fun m!7614316 () Bool)

(assert (=> d!2161388 m!7614316))

(assert (=> d!2161388 m!7614096))

(declare-fun m!7614318 () Bool)

(assert (=> b!6894403 m!7614318))

(declare-fun m!7614320 () Bool)

(assert (=> b!6894403 m!7614320))

(assert (=> b!6894408 m!7614318))

(declare-fun m!7614322 () Bool)

(assert (=> b!6894408 m!7614322))

(assert (=> b!6894400 m!7614314))

(assert (=> b!6894401 m!7614318))

(declare-fun m!7614324 () Bool)

(assert (=> b!6894401 m!7614324))

(assert (=> b!6894016 d!2161388))

(declare-fun b!6894409 () Bool)

(declare-fun e!4152949 () Bool)

(declare-fun e!4152951 () Bool)

(assert (=> b!6894409 (= e!4152949 e!4152951)))

(declare-fun c!1281637 () Bool)

(assert (=> b!6894409 (= c!1281637 ((_ is Union!16825) r3!135))))

(declare-fun b!6894410 () Bool)

(declare-fun e!4152950 () Bool)

(declare-fun call!627300 () Bool)

(assert (=> b!6894410 (= e!4152950 call!627300)))

(declare-fun c!1281638 () Bool)

(declare-fun call!627298 () Bool)

(declare-fun bm!627293 () Bool)

(assert (=> bm!627293 (= call!627298 (validRegex!8533 (ite c!1281638 (reg!17154 r3!135) (ite c!1281637 (regTwo!34163 r3!135) (regOne!34162 r3!135)))))))

(declare-fun bm!627294 () Bool)

(assert (=> bm!627294 (= call!627300 call!627298)))

(declare-fun d!2161394 () Bool)

(declare-fun res!2810910 () Bool)

(declare-fun e!4152946 () Bool)

(assert (=> d!2161394 (=> res!2810910 e!4152946)))

(assert (=> d!2161394 (= res!2810910 ((_ is ElementMatch!16825) r3!135))))

(assert (=> d!2161394 (= (validRegex!8533 r3!135) e!4152946)))

(declare-fun b!6894411 () Bool)

(assert (=> b!6894411 (= e!4152946 e!4152949)))

(assert (=> b!6894411 (= c!1281638 ((_ is Star!16825) r3!135))))

(declare-fun b!6894412 () Bool)

(declare-fun res!2810906 () Bool)

(assert (=> b!6894412 (=> (not res!2810906) (not e!4152950))))

(declare-fun call!627299 () Bool)

(assert (=> b!6894412 (= res!2810906 call!627299)))

(assert (=> b!6894412 (= e!4152951 e!4152950)))

(declare-fun bm!627295 () Bool)

(assert (=> bm!627295 (= call!627299 (validRegex!8533 (ite c!1281637 (regOne!34163 r3!135) (regTwo!34162 r3!135))))))

(declare-fun b!6894413 () Bool)

(declare-fun e!4152947 () Bool)

(assert (=> b!6894413 (= e!4152947 call!627298)))

(declare-fun b!6894414 () Bool)

(declare-fun e!4152948 () Bool)

(declare-fun e!4152945 () Bool)

(assert (=> b!6894414 (= e!4152948 e!4152945)))

(declare-fun res!2810907 () Bool)

(assert (=> b!6894414 (=> (not res!2810907) (not e!4152945))))

(assert (=> b!6894414 (= res!2810907 call!627300)))

(declare-fun b!6894415 () Bool)

(assert (=> b!6894415 (= e!4152949 e!4152947)))

(declare-fun res!2810909 () Bool)

(assert (=> b!6894415 (= res!2810909 (not (nullable!6697 (reg!17154 r3!135))))))

(assert (=> b!6894415 (=> (not res!2810909) (not e!4152947))))

(declare-fun b!6894416 () Bool)

(assert (=> b!6894416 (= e!4152945 call!627299)))

(declare-fun b!6894417 () Bool)

(declare-fun res!2810908 () Bool)

(assert (=> b!6894417 (=> res!2810908 e!4152948)))

(assert (=> b!6894417 (= res!2810908 (not ((_ is Concat!25670) r3!135)))))

(assert (=> b!6894417 (= e!4152951 e!4152948)))

(assert (= (and d!2161394 (not res!2810910)) b!6894411))

(assert (= (and b!6894411 c!1281638) b!6894415))

(assert (= (and b!6894411 (not c!1281638)) b!6894409))

(assert (= (and b!6894415 res!2810909) b!6894413))

(assert (= (and b!6894409 c!1281637) b!6894412))

(assert (= (and b!6894409 (not c!1281637)) b!6894417))

(assert (= (and b!6894412 res!2810906) b!6894410))

(assert (= (and b!6894417 (not res!2810908)) b!6894414))

(assert (= (and b!6894414 res!2810907) b!6894416))

(assert (= (or b!6894412 b!6894416) bm!627295))

(assert (= (or b!6894410 b!6894414) bm!627294))

(assert (= (or b!6894413 bm!627294) bm!627293))

(declare-fun m!7614326 () Bool)

(assert (=> bm!627293 m!7614326))

(declare-fun m!7614328 () Bool)

(assert (=> bm!627295 m!7614328))

(declare-fun m!7614330 () Bool)

(assert (=> b!6894415 m!7614330))

(assert (=> b!6894012 d!2161394))

(declare-fun b!6894431 () Bool)

(declare-fun e!4152954 () Bool)

(declare-fun tp!1897427 () Bool)

(declare-fun tp!1897426 () Bool)

(assert (=> b!6894431 (= e!4152954 (and tp!1897427 tp!1897426))))

(declare-fun b!6894428 () Bool)

(assert (=> b!6894428 (= e!4152954 tp_is_empty!42875)))

(assert (=> b!6894013 (= tp!1897401 e!4152954)))

(declare-fun b!6894430 () Bool)

(declare-fun tp!1897429 () Bool)

(assert (=> b!6894430 (= e!4152954 tp!1897429)))

(declare-fun b!6894429 () Bool)

(declare-fun tp!1897430 () Bool)

(declare-fun tp!1897428 () Bool)

(assert (=> b!6894429 (= e!4152954 (and tp!1897430 tp!1897428))))

(assert (= (and b!6894013 ((_ is ElementMatch!16825) (reg!17154 r2!6280))) b!6894428))

(assert (= (and b!6894013 ((_ is Concat!25670) (reg!17154 r2!6280))) b!6894429))

(assert (= (and b!6894013 ((_ is Star!16825) (reg!17154 r2!6280))) b!6894430))

(assert (= (and b!6894013 ((_ is Union!16825) (reg!17154 r2!6280))) b!6894431))

(declare-fun b!6894435 () Bool)

(declare-fun e!4152955 () Bool)

(declare-fun tp!1897432 () Bool)

(declare-fun tp!1897431 () Bool)

(assert (=> b!6894435 (= e!4152955 (and tp!1897432 tp!1897431))))

(declare-fun b!6894432 () Bool)

(assert (=> b!6894432 (= e!4152955 tp_is_empty!42875)))

(assert (=> b!6894003 (= tp!1897408 e!4152955)))

(declare-fun b!6894434 () Bool)

(declare-fun tp!1897434 () Bool)

(assert (=> b!6894434 (= e!4152955 tp!1897434)))

(declare-fun b!6894433 () Bool)

(declare-fun tp!1897435 () Bool)

(declare-fun tp!1897433 () Bool)

(assert (=> b!6894433 (= e!4152955 (and tp!1897435 tp!1897433))))

(assert (= (and b!6894003 ((_ is ElementMatch!16825) (regOne!34163 r3!135))) b!6894432))

(assert (= (and b!6894003 ((_ is Concat!25670) (regOne!34163 r3!135))) b!6894433))

(assert (= (and b!6894003 ((_ is Star!16825) (regOne!34163 r3!135))) b!6894434))

(assert (= (and b!6894003 ((_ is Union!16825) (regOne!34163 r3!135))) b!6894435))

(declare-fun b!6894439 () Bool)

(declare-fun e!4152959 () Bool)

(declare-fun tp!1897437 () Bool)

(declare-fun tp!1897436 () Bool)

(assert (=> b!6894439 (= e!4152959 (and tp!1897437 tp!1897436))))

(declare-fun b!6894436 () Bool)

(assert (=> b!6894436 (= e!4152959 tp_is_empty!42875)))

(assert (=> b!6894003 (= tp!1897403 e!4152959)))

(declare-fun b!6894438 () Bool)

(declare-fun tp!1897439 () Bool)

(assert (=> b!6894438 (= e!4152959 tp!1897439)))

(declare-fun b!6894437 () Bool)

(declare-fun tp!1897440 () Bool)

(declare-fun tp!1897438 () Bool)

(assert (=> b!6894437 (= e!4152959 (and tp!1897440 tp!1897438))))

(assert (= (and b!6894003 ((_ is ElementMatch!16825) (regTwo!34163 r3!135))) b!6894436))

(assert (= (and b!6894003 ((_ is Concat!25670) (regTwo!34163 r3!135))) b!6894437))

(assert (= (and b!6894003 ((_ is Star!16825) (regTwo!34163 r3!135))) b!6894438))

(assert (= (and b!6894003 ((_ is Union!16825) (regTwo!34163 r3!135))) b!6894439))

(declare-fun b!6894457 () Bool)

(declare-fun e!4152964 () Bool)

(declare-fun tp!1897442 () Bool)

(declare-fun tp!1897441 () Bool)

(assert (=> b!6894457 (= e!4152964 (and tp!1897442 tp!1897441))))

(declare-fun b!6894454 () Bool)

(assert (=> b!6894454 (= e!4152964 tp_is_empty!42875)))

(assert (=> b!6894014 (= tp!1897415 e!4152964)))

(declare-fun b!6894456 () Bool)

(declare-fun tp!1897444 () Bool)

(assert (=> b!6894456 (= e!4152964 tp!1897444)))

(declare-fun b!6894455 () Bool)

(declare-fun tp!1897445 () Bool)

(declare-fun tp!1897443 () Bool)

(assert (=> b!6894455 (= e!4152964 (and tp!1897445 tp!1897443))))

(assert (= (and b!6894014 ((_ is ElementMatch!16825) (reg!17154 r1!6342))) b!6894454))

(assert (= (and b!6894014 ((_ is Concat!25670) (reg!17154 r1!6342))) b!6894455))

(assert (= (and b!6894014 ((_ is Star!16825) (reg!17154 r1!6342))) b!6894456))

(assert (= (and b!6894014 ((_ is Union!16825) (reg!17154 r1!6342))) b!6894457))

(declare-fun b!6894461 () Bool)

(declare-fun e!4152965 () Bool)

(declare-fun tp!1897447 () Bool)

(declare-fun tp!1897446 () Bool)

(assert (=> b!6894461 (= e!4152965 (and tp!1897447 tp!1897446))))

(declare-fun b!6894458 () Bool)

(assert (=> b!6894458 (= e!4152965 tp_is_empty!42875)))

(assert (=> b!6894020 (= tp!1897411 e!4152965)))

(declare-fun b!6894460 () Bool)

(declare-fun tp!1897449 () Bool)

(assert (=> b!6894460 (= e!4152965 tp!1897449)))

(declare-fun b!6894459 () Bool)

(declare-fun tp!1897450 () Bool)

(declare-fun tp!1897448 () Bool)

(assert (=> b!6894459 (= e!4152965 (and tp!1897450 tp!1897448))))

(assert (= (and b!6894020 ((_ is ElementMatch!16825) (regOne!34162 r1!6342))) b!6894458))

(assert (= (and b!6894020 ((_ is Concat!25670) (regOne!34162 r1!6342))) b!6894459))

(assert (= (and b!6894020 ((_ is Star!16825) (regOne!34162 r1!6342))) b!6894460))

(assert (= (and b!6894020 ((_ is Union!16825) (regOne!34162 r1!6342))) b!6894461))

(declare-fun b!6894465 () Bool)

(declare-fun e!4152966 () Bool)

(declare-fun tp!1897452 () Bool)

(declare-fun tp!1897451 () Bool)

(assert (=> b!6894465 (= e!4152966 (and tp!1897452 tp!1897451))))

(declare-fun b!6894462 () Bool)

(assert (=> b!6894462 (= e!4152966 tp_is_empty!42875)))

(assert (=> b!6894020 (= tp!1897413 e!4152966)))

(declare-fun b!6894464 () Bool)

(declare-fun tp!1897454 () Bool)

(assert (=> b!6894464 (= e!4152966 tp!1897454)))

(declare-fun b!6894463 () Bool)

(declare-fun tp!1897455 () Bool)

(declare-fun tp!1897453 () Bool)

(assert (=> b!6894463 (= e!4152966 (and tp!1897455 tp!1897453))))

(assert (= (and b!6894020 ((_ is ElementMatch!16825) (regTwo!34162 r1!6342))) b!6894462))

(assert (= (and b!6894020 ((_ is Concat!25670) (regTwo!34162 r1!6342))) b!6894463))

(assert (= (and b!6894020 ((_ is Star!16825) (regTwo!34162 r1!6342))) b!6894464))

(assert (= (and b!6894020 ((_ is Union!16825) (regTwo!34162 r1!6342))) b!6894465))

(declare-fun b!6894469 () Bool)

(declare-fun e!4152967 () Bool)

(declare-fun tp!1897457 () Bool)

(declare-fun tp!1897456 () Bool)

(assert (=> b!6894469 (= e!4152967 (and tp!1897457 tp!1897456))))

(declare-fun b!6894466 () Bool)

(assert (=> b!6894466 (= e!4152967 tp_is_empty!42875)))

(assert (=> b!6894004 (= tp!1897404 e!4152967)))

(declare-fun b!6894468 () Bool)

(declare-fun tp!1897459 () Bool)

(assert (=> b!6894468 (= e!4152967 tp!1897459)))

(declare-fun b!6894467 () Bool)

(declare-fun tp!1897460 () Bool)

(declare-fun tp!1897458 () Bool)

(assert (=> b!6894467 (= e!4152967 (and tp!1897460 tp!1897458))))

(assert (= (and b!6894004 ((_ is ElementMatch!16825) (regOne!34162 r2!6280))) b!6894466))

(assert (= (and b!6894004 ((_ is Concat!25670) (regOne!34162 r2!6280))) b!6894467))

(assert (= (and b!6894004 ((_ is Star!16825) (regOne!34162 r2!6280))) b!6894468))

(assert (= (and b!6894004 ((_ is Union!16825) (regOne!34162 r2!6280))) b!6894469))

(declare-fun b!6894473 () Bool)

(declare-fun e!4152968 () Bool)

(declare-fun tp!1897462 () Bool)

(declare-fun tp!1897461 () Bool)

(assert (=> b!6894473 (= e!4152968 (and tp!1897462 tp!1897461))))

(declare-fun b!6894470 () Bool)

(assert (=> b!6894470 (= e!4152968 tp_is_empty!42875)))

(assert (=> b!6894004 (= tp!1897406 e!4152968)))

(declare-fun b!6894472 () Bool)

(declare-fun tp!1897464 () Bool)

(assert (=> b!6894472 (= e!4152968 tp!1897464)))

(declare-fun b!6894471 () Bool)

(declare-fun tp!1897465 () Bool)

(declare-fun tp!1897463 () Bool)

(assert (=> b!6894471 (= e!4152968 (and tp!1897465 tp!1897463))))

(assert (= (and b!6894004 ((_ is ElementMatch!16825) (regTwo!34162 r2!6280))) b!6894470))

(assert (= (and b!6894004 ((_ is Concat!25670) (regTwo!34162 r2!6280))) b!6894471))

(assert (= (and b!6894004 ((_ is Star!16825) (regTwo!34162 r2!6280))) b!6894472))

(assert (= (and b!6894004 ((_ is Union!16825) (regTwo!34162 r2!6280))) b!6894473))

(declare-fun b!6894489 () Bool)

(declare-fun e!4152978 () Bool)

(declare-fun tp!1897468 () Bool)

(assert (=> b!6894489 (= e!4152978 (and tp_is_empty!42875 tp!1897468))))

(assert (=> b!6894015 (= tp!1897410 e!4152978)))

(assert (= (and b!6894015 ((_ is Cons!66458) (t!380325 s!14361))) b!6894489))

(declare-fun b!6894493 () Bool)

(declare-fun e!4152979 () Bool)

(declare-fun tp!1897470 () Bool)

(declare-fun tp!1897469 () Bool)

(assert (=> b!6894493 (= e!4152979 (and tp!1897470 tp!1897469))))

(declare-fun b!6894490 () Bool)

(assert (=> b!6894490 (= e!4152979 tp_is_empty!42875)))

(assert (=> b!6894021 (= tp!1897409 e!4152979)))

(declare-fun b!6894492 () Bool)

(declare-fun tp!1897472 () Bool)

(assert (=> b!6894492 (= e!4152979 tp!1897472)))

(declare-fun b!6894491 () Bool)

(declare-fun tp!1897473 () Bool)

(declare-fun tp!1897471 () Bool)

(assert (=> b!6894491 (= e!4152979 (and tp!1897473 tp!1897471))))

(assert (= (and b!6894021 ((_ is ElementMatch!16825) (regOne!34162 r3!135))) b!6894490))

(assert (= (and b!6894021 ((_ is Concat!25670) (regOne!34162 r3!135))) b!6894491))

(assert (= (and b!6894021 ((_ is Star!16825) (regOne!34162 r3!135))) b!6894492))

(assert (= (and b!6894021 ((_ is Union!16825) (regOne!34162 r3!135))) b!6894493))

(declare-fun b!6894497 () Bool)

(declare-fun e!4152980 () Bool)

(declare-fun tp!1897475 () Bool)

(declare-fun tp!1897474 () Bool)

(assert (=> b!6894497 (= e!4152980 (and tp!1897475 tp!1897474))))

(declare-fun b!6894494 () Bool)

(assert (=> b!6894494 (= e!4152980 tp_is_empty!42875)))

(assert (=> b!6894021 (= tp!1897414 e!4152980)))

(declare-fun b!6894496 () Bool)

(declare-fun tp!1897477 () Bool)

(assert (=> b!6894496 (= e!4152980 tp!1897477)))

(declare-fun b!6894495 () Bool)

(declare-fun tp!1897478 () Bool)

(declare-fun tp!1897476 () Bool)

(assert (=> b!6894495 (= e!4152980 (and tp!1897478 tp!1897476))))

(assert (= (and b!6894021 ((_ is ElementMatch!16825) (regTwo!34162 r3!135))) b!6894494))

(assert (= (and b!6894021 ((_ is Concat!25670) (regTwo!34162 r3!135))) b!6894495))

(assert (= (and b!6894021 ((_ is Star!16825) (regTwo!34162 r3!135))) b!6894496))

(assert (= (and b!6894021 ((_ is Union!16825) (regTwo!34162 r3!135))) b!6894497))

(declare-fun b!6894501 () Bool)

(declare-fun e!4152981 () Bool)

(declare-fun tp!1897480 () Bool)

(declare-fun tp!1897479 () Bool)

(assert (=> b!6894501 (= e!4152981 (and tp!1897480 tp!1897479))))

(declare-fun b!6894498 () Bool)

(assert (=> b!6894498 (= e!4152981 tp_is_empty!42875)))

(assert (=> b!6894011 (= tp!1897407 e!4152981)))

(declare-fun b!6894500 () Bool)

(declare-fun tp!1897482 () Bool)

(assert (=> b!6894500 (= e!4152981 tp!1897482)))

(declare-fun b!6894499 () Bool)

(declare-fun tp!1897483 () Bool)

(declare-fun tp!1897481 () Bool)

(assert (=> b!6894499 (= e!4152981 (and tp!1897483 tp!1897481))))

(assert (= (and b!6894011 ((_ is ElementMatch!16825) (reg!17154 r3!135))) b!6894498))

(assert (= (and b!6894011 ((_ is Concat!25670) (reg!17154 r3!135))) b!6894499))

(assert (= (and b!6894011 ((_ is Star!16825) (reg!17154 r3!135))) b!6894500))

(assert (= (and b!6894011 ((_ is Union!16825) (reg!17154 r3!135))) b!6894501))

(declare-fun b!6894505 () Bool)

(declare-fun e!4152982 () Bool)

(declare-fun tp!1897485 () Bool)

(declare-fun tp!1897484 () Bool)

(assert (=> b!6894505 (= e!4152982 (and tp!1897485 tp!1897484))))

(declare-fun b!6894502 () Bool)

(assert (=> b!6894502 (= e!4152982 tp_is_empty!42875)))

(assert (=> b!6894017 (= tp!1897400 e!4152982)))

(declare-fun b!6894504 () Bool)

(declare-fun tp!1897487 () Bool)

(assert (=> b!6894504 (= e!4152982 tp!1897487)))

(declare-fun b!6894503 () Bool)

(declare-fun tp!1897488 () Bool)

(declare-fun tp!1897486 () Bool)

(assert (=> b!6894503 (= e!4152982 (and tp!1897488 tp!1897486))))

(assert (= (and b!6894017 ((_ is ElementMatch!16825) (regOne!34163 r2!6280))) b!6894502))

(assert (= (and b!6894017 ((_ is Concat!25670) (regOne!34163 r2!6280))) b!6894503))

(assert (= (and b!6894017 ((_ is Star!16825) (regOne!34163 r2!6280))) b!6894504))

(assert (= (and b!6894017 ((_ is Union!16825) (regOne!34163 r2!6280))) b!6894505))

(declare-fun b!6894509 () Bool)

(declare-fun e!4152983 () Bool)

(declare-fun tp!1897490 () Bool)

(declare-fun tp!1897489 () Bool)

(assert (=> b!6894509 (= e!4152983 (and tp!1897490 tp!1897489))))

(declare-fun b!6894506 () Bool)

(assert (=> b!6894506 (= e!4152983 tp_is_empty!42875)))

(assert (=> b!6894017 (= tp!1897402 e!4152983)))

(declare-fun b!6894508 () Bool)

(declare-fun tp!1897492 () Bool)

(assert (=> b!6894508 (= e!4152983 tp!1897492)))

(declare-fun b!6894507 () Bool)

(declare-fun tp!1897493 () Bool)

(declare-fun tp!1897491 () Bool)

(assert (=> b!6894507 (= e!4152983 (and tp!1897493 tp!1897491))))

(assert (= (and b!6894017 ((_ is ElementMatch!16825) (regTwo!34163 r2!6280))) b!6894506))

(assert (= (and b!6894017 ((_ is Concat!25670) (regTwo!34163 r2!6280))) b!6894507))

(assert (= (and b!6894017 ((_ is Star!16825) (regTwo!34163 r2!6280))) b!6894508))

(assert (= (and b!6894017 ((_ is Union!16825) (regTwo!34163 r2!6280))) b!6894509))

(declare-fun b!6894513 () Bool)

(declare-fun e!4152984 () Bool)

(declare-fun tp!1897495 () Bool)

(declare-fun tp!1897494 () Bool)

(assert (=> b!6894513 (= e!4152984 (and tp!1897495 tp!1897494))))

(declare-fun b!6894510 () Bool)

(assert (=> b!6894510 (= e!4152984 tp_is_empty!42875)))

(assert (=> b!6894007 (= tp!1897405 e!4152984)))

(declare-fun b!6894512 () Bool)

(declare-fun tp!1897497 () Bool)

(assert (=> b!6894512 (= e!4152984 tp!1897497)))

(declare-fun b!6894511 () Bool)

(declare-fun tp!1897498 () Bool)

(declare-fun tp!1897496 () Bool)

(assert (=> b!6894511 (= e!4152984 (and tp!1897498 tp!1897496))))

(assert (= (and b!6894007 ((_ is ElementMatch!16825) (regOne!34163 r1!6342))) b!6894510))

(assert (= (and b!6894007 ((_ is Concat!25670) (regOne!34163 r1!6342))) b!6894511))

(assert (= (and b!6894007 ((_ is Star!16825) (regOne!34163 r1!6342))) b!6894512))

(assert (= (and b!6894007 ((_ is Union!16825) (regOne!34163 r1!6342))) b!6894513))

(declare-fun b!6894517 () Bool)

(declare-fun e!4152985 () Bool)

(declare-fun tp!1897500 () Bool)

(declare-fun tp!1897499 () Bool)

(assert (=> b!6894517 (= e!4152985 (and tp!1897500 tp!1897499))))

(declare-fun b!6894514 () Bool)

(assert (=> b!6894514 (= e!4152985 tp_is_empty!42875)))

(assert (=> b!6894007 (= tp!1897412 e!4152985)))

(declare-fun b!6894516 () Bool)

(declare-fun tp!1897502 () Bool)

(assert (=> b!6894516 (= e!4152985 tp!1897502)))

(declare-fun b!6894515 () Bool)

(declare-fun tp!1897503 () Bool)

(declare-fun tp!1897501 () Bool)

(assert (=> b!6894515 (= e!4152985 (and tp!1897503 tp!1897501))))

(assert (= (and b!6894007 ((_ is ElementMatch!16825) (regTwo!34163 r1!6342))) b!6894514))

(assert (= (and b!6894007 ((_ is Concat!25670) (regTwo!34163 r1!6342))) b!6894515))

(assert (= (and b!6894007 ((_ is Star!16825) (regTwo!34163 r1!6342))) b!6894516))

(assert (= (and b!6894007 ((_ is Union!16825) (regTwo!34163 r1!6342))) b!6894517))

(check-sat (not b!6894497) (not d!2161364) (not b!6894203) (not b!6894212) (not b!6894501) (not bm!627245) (not b!6894400) (not b!6894491) (not b!6894459) (not b!6894106) (not b!6894211) (not b!6894434) (not b!6894219) (not b!6894507) (not bm!627278) (not b!6894467) (not b!6894457) (not b!6894473) (not b!6894415) (not b!6894472) (not b!6894263) (not d!2161378) (not b!6894210) (not b!6894496) (not bm!627293) (not b!6894493) (not b!6894250) (not b!6894431) (not b!6894513) tp_is_empty!42875 (not b!6894517) (not b!6894271) (not b!6894109) (not b!6894505) (not b!6894511) (not d!2161336) (not d!2161388) (not b!6894438) (not b!6894437) (not d!2161368) (not b!6894492) (not b!6894469) (not b!6894508) (not bm!627272) (not b!6894463) (not b!6894239) (not d!2161362) (not b!6894439) (not b!6894471) (not b!6894208) (not bm!627279) (not b!6894504) (not bm!627274) (not b!6894264) (not bm!627256) (not b!6894404) (not b!6894222) (not d!2161346) (not b!6894050) (not b!6894408) (not bm!627282) (not b!6894489) (not d!2161384) (not b!6894500) (not b!6894262) (not bm!627276) (not b!6894429) (not b!6894435) (not b!6894274) (not b!6894433) (not bm!627284) (not b!6894465) (not b!6894468) (not d!2161348) (not b!6894464) (not bm!627281) (not b!6894516) (not b!6894461) (not b!6894495) (not b!6894401) (not b!6894515) (not b!6894503) (not bm!627295) (not b!6894196) (not b!6894198) (not b!6894259) (not b!6894509) (not d!2161350) (not bm!627243) (not b!6894205) (not b!6894430) (not b!6894407) (not b!6894403) (not b!6894197) (not d!2161380) (not b!6894455) (not bm!627273) (not bm!627283) (not b!6894301) (not b!6894460) (not b!6894512) (not b!6894499) (not b!6894269) (not bm!627257) (not b!6894217) (not b!6894456) (not bm!627275) (not b!6894236) (not d!2161360) (not b!6894304))
(check-sat)
