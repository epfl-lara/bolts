; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752812 () Bool)

(assert start!752812)

(declare-fun b!8000815 () Bool)

(declare-fun e!4713247 () Bool)

(declare-fun tp!2393234 () Bool)

(declare-fun tp!2393233 () Bool)

(assert (=> b!8000815 (= e!4713247 (and tp!2393234 tp!2393233))))

(declare-fun b!8000816 () Bool)

(declare-fun res!3164042 () Bool)

(declare-fun e!4713248 () Bool)

(assert (=> b!8000816 (=> (not res!3164042) (not e!4713248))))

(declare-datatypes ((C!43516 0))(
  ( (C!43517 (val!32306 Int)) )
))
(declare-datatypes ((Regex!21589 0))(
  ( (ElementMatch!21589 (c!1468948 C!43516)) (Concat!30588 (regOne!43690 Regex!21589) (regTwo!43690 Regex!21589)) (EmptyExpr!21589) (Star!21589 (reg!21918 Regex!21589)) (EmptyLang!21589) (Union!21589 (regOne!43691 Regex!21589) (regTwo!43691 Regex!21589)) )
))
(declare-fun r!24748 () Regex!21589)

(declare-datatypes ((List!74818 0))(
  ( (Nil!74694) (Cons!74694 (h!81142 C!43516) (t!390561 List!74818)) )
))
(declare-fun input!8006 () List!74818)

(declare-fun validRegex!11893 (Regex!21589) Bool)

(declare-fun derivativeStep!6604 (Regex!21589 C!43516) Regex!21589)

(assert (=> b!8000816 (= res!3164042 (validRegex!11893 (derivativeStep!6604 r!24748 (h!81142 input!8006))))))

(declare-fun b!8000817 () Bool)

(declare-fun tp_is_empty!53721 () Bool)

(assert (=> b!8000817 (= e!4713247 tp_is_empty!53721)))

(declare-fun b!8000818 () Bool)

(declare-fun res!3164041 () Bool)

(assert (=> b!8000818 (=> (not res!3164041) (not e!4713248))))

(get-info :version)

(assert (=> b!8000818 (= res!3164041 ((_ is Cons!74694) input!8006))))

(declare-fun b!8000819 () Bool)

(declare-fun size!43501 (List!74818) Int)

(assert (=> b!8000819 (= e!4713248 (>= (size!43501 (t!390561 input!8006)) (size!43501 input!8006)))))

(declare-fun b!8000820 () Bool)

(declare-fun e!4713249 () Bool)

(declare-fun tp!2393231 () Bool)

(assert (=> b!8000820 (= e!4713249 (and tp_is_empty!53721 tp!2393231))))

(declare-fun b!8000822 () Bool)

(declare-fun tp!2393229 () Bool)

(declare-fun tp!2393232 () Bool)

(assert (=> b!8000822 (= e!4713247 (and tp!2393229 tp!2393232))))

(declare-fun b!8000821 () Bool)

(declare-fun tp!2393230 () Bool)

(assert (=> b!8000821 (= e!4713247 tp!2393230)))

(declare-fun res!3164040 () Bool)

(assert (=> start!752812 (=> (not res!3164040) (not e!4713248))))

(assert (=> start!752812 (= res!3164040 (validRegex!11893 r!24748))))

(assert (=> start!752812 e!4713248))

(assert (=> start!752812 e!4713247))

(assert (=> start!752812 e!4713249))

(assert (= (and start!752812 res!3164040) b!8000818))

(assert (= (and b!8000818 res!3164041) b!8000816))

(assert (= (and b!8000816 res!3164042) b!8000819))

(assert (= (and start!752812 ((_ is ElementMatch!21589) r!24748)) b!8000817))

(assert (= (and start!752812 ((_ is Concat!30588) r!24748)) b!8000815))

(assert (= (and start!752812 ((_ is Star!21589) r!24748)) b!8000821))

(assert (= (and start!752812 ((_ is Union!21589) r!24748)) b!8000822))

(assert (= (and start!752812 ((_ is Cons!74694) input!8006)) b!8000820))

(declare-fun m!8368456 () Bool)

(assert (=> b!8000816 m!8368456))

(assert (=> b!8000816 m!8368456))

(declare-fun m!8368458 () Bool)

(assert (=> b!8000816 m!8368458))

(declare-fun m!8368460 () Bool)

(assert (=> b!8000819 m!8368460))

(declare-fun m!8368462 () Bool)

(assert (=> b!8000819 m!8368462))

(declare-fun m!8368464 () Bool)

(assert (=> start!752812 m!8368464))

(check-sat (not b!8000821) tp_is_empty!53721 (not b!8000816) (not b!8000820) (not b!8000819) (not b!8000815) (not b!8000822) (not start!752812))
(check-sat)
(get-model)

(declare-fun b!8000867 () Bool)

(declare-fun e!4713283 () Bool)

(declare-fun e!4713284 () Bool)

(assert (=> b!8000867 (= e!4713283 e!4713284)))

(declare-fun res!3164064 () Bool)

(assert (=> b!8000867 (=> (not res!3164064) (not e!4713284))))

(declare-fun call!743295 () Bool)

(assert (=> b!8000867 (= res!3164064 call!743295)))

(declare-fun b!8000868 () Bool)

(declare-fun call!743296 () Bool)

(assert (=> b!8000868 (= e!4713284 call!743296)))

(declare-fun bm!743290 () Bool)

(declare-fun call!743297 () Bool)

(assert (=> bm!743290 (= call!743295 call!743297)))

(declare-fun b!8000869 () Bool)

(declare-fun e!4713286 () Bool)

(assert (=> b!8000869 (= e!4713286 call!743295)))

(declare-fun b!8000870 () Bool)

(declare-fun res!3164065 () Bool)

(assert (=> b!8000870 (=> res!3164065 e!4713283)))

(assert (=> b!8000870 (= res!3164065 (not ((_ is Concat!30588) r!24748)))))

(declare-fun e!4713282 () Bool)

(assert (=> b!8000870 (= e!4713282 e!4713283)))

(declare-fun b!8000871 () Bool)

(declare-fun e!4713285 () Bool)

(assert (=> b!8000871 (= e!4713285 e!4713282)))

(declare-fun c!1468962 () Bool)

(assert (=> b!8000871 (= c!1468962 ((_ is Union!21589) r!24748))))

(declare-fun bm!743291 () Bool)

(assert (=> bm!743291 (= call!743296 (validRegex!11893 (ite c!1468962 (regOne!43691 r!24748) (regTwo!43690 r!24748))))))

(declare-fun bm!743292 () Bool)

(declare-fun c!1468961 () Bool)

(assert (=> bm!743292 (= call!743297 (validRegex!11893 (ite c!1468961 (reg!21918 r!24748) (ite c!1468962 (regTwo!43691 r!24748) (regOne!43690 r!24748)))))))

(declare-fun d!2386669 () Bool)

(declare-fun res!3164063 () Bool)

(declare-fun e!4713288 () Bool)

(assert (=> d!2386669 (=> res!3164063 e!4713288)))

(assert (=> d!2386669 (= res!3164063 ((_ is ElementMatch!21589) r!24748))))

(assert (=> d!2386669 (= (validRegex!11893 r!24748) e!4713288)))

(declare-fun b!8000872 () Bool)

(declare-fun res!3164067 () Bool)

(assert (=> b!8000872 (=> (not res!3164067) (not e!4713286))))

(assert (=> b!8000872 (= res!3164067 call!743296)))

(assert (=> b!8000872 (= e!4713282 e!4713286)))

(declare-fun b!8000873 () Bool)

(assert (=> b!8000873 (= e!4713288 e!4713285)))

(assert (=> b!8000873 (= c!1468961 ((_ is Star!21589) r!24748))))

(declare-fun b!8000874 () Bool)

(declare-fun e!4713287 () Bool)

(assert (=> b!8000874 (= e!4713287 call!743297)))

(declare-fun b!8000875 () Bool)

(assert (=> b!8000875 (= e!4713285 e!4713287)))

(declare-fun res!3164066 () Bool)

(declare-fun nullable!9669 (Regex!21589) Bool)

(assert (=> b!8000875 (= res!3164066 (not (nullable!9669 (reg!21918 r!24748))))))

(assert (=> b!8000875 (=> (not res!3164066) (not e!4713287))))

(assert (= (and d!2386669 (not res!3164063)) b!8000873))

(assert (= (and b!8000873 c!1468961) b!8000875))

(assert (= (and b!8000873 (not c!1468961)) b!8000871))

(assert (= (and b!8000875 res!3164066) b!8000874))

(assert (= (and b!8000871 c!1468962) b!8000872))

(assert (= (and b!8000871 (not c!1468962)) b!8000870))

(assert (= (and b!8000872 res!3164067) b!8000869))

(assert (= (and b!8000870 (not res!3164065)) b!8000867))

(assert (= (and b!8000867 res!3164064) b!8000868))

(assert (= (or b!8000869 b!8000867) bm!743290))

(assert (= (or b!8000872 b!8000868) bm!743291))

(assert (= (or b!8000874 bm!743290) bm!743292))

(declare-fun m!8368468 () Bool)

(assert (=> bm!743291 m!8368468))

(declare-fun m!8368470 () Bool)

(assert (=> bm!743292 m!8368470))

(declare-fun m!8368472 () Bool)

(assert (=> b!8000875 m!8368472))

(assert (=> start!752812 d!2386669))

(declare-fun d!2386675 () Bool)

(declare-fun lt!2713706 () Int)

(assert (=> d!2386675 (>= lt!2713706 0)))

(declare-fun e!4713291 () Int)

(assert (=> d!2386675 (= lt!2713706 e!4713291)))

(declare-fun c!1468965 () Bool)

(assert (=> d!2386675 (= c!1468965 ((_ is Nil!74694) (t!390561 input!8006)))))

(assert (=> d!2386675 (= (size!43501 (t!390561 input!8006)) lt!2713706)))

(declare-fun b!8000880 () Bool)

(assert (=> b!8000880 (= e!4713291 0)))

(declare-fun b!8000881 () Bool)

(assert (=> b!8000881 (= e!4713291 (+ 1 (size!43501 (t!390561 (t!390561 input!8006)))))))

(assert (= (and d!2386675 c!1468965) b!8000880))

(assert (= (and d!2386675 (not c!1468965)) b!8000881))

(declare-fun m!8368474 () Bool)

(assert (=> b!8000881 m!8368474))

(assert (=> b!8000819 d!2386675))

(declare-fun d!2386677 () Bool)

(declare-fun lt!2713707 () Int)

(assert (=> d!2386677 (>= lt!2713707 0)))

(declare-fun e!4713292 () Int)

(assert (=> d!2386677 (= lt!2713707 e!4713292)))

(declare-fun c!1468966 () Bool)

(assert (=> d!2386677 (= c!1468966 ((_ is Nil!74694) input!8006))))

(assert (=> d!2386677 (= (size!43501 input!8006) lt!2713707)))

(declare-fun b!8000882 () Bool)

(assert (=> b!8000882 (= e!4713292 0)))

(declare-fun b!8000883 () Bool)

(assert (=> b!8000883 (= e!4713292 (+ 1 (size!43501 (t!390561 input!8006))))))

(assert (= (and d!2386677 c!1468966) b!8000882))

(assert (= (and d!2386677 (not c!1468966)) b!8000883))

(assert (=> b!8000883 m!8368460))

(assert (=> b!8000819 d!2386677))

(declare-fun b!8000893 () Bool)

(declare-fun e!4713301 () Bool)

(declare-fun e!4713302 () Bool)

(assert (=> b!8000893 (= e!4713301 e!4713302)))

(declare-fun res!3164074 () Bool)

(assert (=> b!8000893 (=> (not res!3164074) (not e!4713302))))

(declare-fun call!743301 () Bool)

(assert (=> b!8000893 (= res!3164074 call!743301)))

(declare-fun b!8000894 () Bool)

(declare-fun call!743302 () Bool)

(assert (=> b!8000894 (= e!4713302 call!743302)))

(declare-fun bm!743296 () Bool)

(declare-fun call!743303 () Bool)

(assert (=> bm!743296 (= call!743301 call!743303)))

(declare-fun b!8000895 () Bool)

(declare-fun e!4713304 () Bool)

(assert (=> b!8000895 (= e!4713304 call!743301)))

(declare-fun b!8000896 () Bool)

(declare-fun res!3164075 () Bool)

(assert (=> b!8000896 (=> res!3164075 e!4713301)))

(assert (=> b!8000896 (= res!3164075 (not ((_ is Concat!30588) (derivativeStep!6604 r!24748 (h!81142 input!8006)))))))

(declare-fun e!4713300 () Bool)

(assert (=> b!8000896 (= e!4713300 e!4713301)))

(declare-fun b!8000897 () Bool)

(declare-fun e!4713303 () Bool)

(assert (=> b!8000897 (= e!4713303 e!4713300)))

(declare-fun c!1468970 () Bool)

(assert (=> b!8000897 (= c!1468970 ((_ is Union!21589) (derivativeStep!6604 r!24748 (h!81142 input!8006))))))

(declare-fun bm!743297 () Bool)

(assert (=> bm!743297 (= call!743302 (validRegex!11893 (ite c!1468970 (regOne!43691 (derivativeStep!6604 r!24748 (h!81142 input!8006))) (regTwo!43690 (derivativeStep!6604 r!24748 (h!81142 input!8006))))))))

(declare-fun c!1468969 () Bool)

(declare-fun bm!743298 () Bool)

(assert (=> bm!743298 (= call!743303 (validRegex!11893 (ite c!1468969 (reg!21918 (derivativeStep!6604 r!24748 (h!81142 input!8006))) (ite c!1468970 (regTwo!43691 (derivativeStep!6604 r!24748 (h!81142 input!8006))) (regOne!43690 (derivativeStep!6604 r!24748 (h!81142 input!8006)))))))))

(declare-fun d!2386679 () Bool)

(declare-fun res!3164073 () Bool)

(declare-fun e!4713306 () Bool)

(assert (=> d!2386679 (=> res!3164073 e!4713306)))

(assert (=> d!2386679 (= res!3164073 ((_ is ElementMatch!21589) (derivativeStep!6604 r!24748 (h!81142 input!8006))))))

(assert (=> d!2386679 (= (validRegex!11893 (derivativeStep!6604 r!24748 (h!81142 input!8006))) e!4713306)))

(declare-fun b!8000898 () Bool)

(declare-fun res!3164077 () Bool)

(assert (=> b!8000898 (=> (not res!3164077) (not e!4713304))))

(assert (=> b!8000898 (= res!3164077 call!743302)))

(assert (=> b!8000898 (= e!4713300 e!4713304)))

(declare-fun b!8000899 () Bool)

(assert (=> b!8000899 (= e!4713306 e!4713303)))

(assert (=> b!8000899 (= c!1468969 ((_ is Star!21589) (derivativeStep!6604 r!24748 (h!81142 input!8006))))))

(declare-fun b!8000900 () Bool)

(declare-fun e!4713305 () Bool)

(assert (=> b!8000900 (= e!4713305 call!743303)))

(declare-fun b!8000901 () Bool)

(assert (=> b!8000901 (= e!4713303 e!4713305)))

(declare-fun res!3164076 () Bool)

(assert (=> b!8000901 (= res!3164076 (not (nullable!9669 (reg!21918 (derivativeStep!6604 r!24748 (h!81142 input!8006))))))))

(assert (=> b!8000901 (=> (not res!3164076) (not e!4713305))))

(assert (= (and d!2386679 (not res!3164073)) b!8000899))

(assert (= (and b!8000899 c!1468969) b!8000901))

(assert (= (and b!8000899 (not c!1468969)) b!8000897))

(assert (= (and b!8000901 res!3164076) b!8000900))

(assert (= (and b!8000897 c!1468970) b!8000898))

(assert (= (and b!8000897 (not c!1468970)) b!8000896))

(assert (= (and b!8000898 res!3164077) b!8000895))

(assert (= (and b!8000896 (not res!3164075)) b!8000893))

(assert (= (and b!8000893 res!3164074) b!8000894))

(assert (= (or b!8000895 b!8000893) bm!743296))

(assert (= (or b!8000898 b!8000894) bm!743297))

(assert (= (or b!8000900 bm!743296) bm!743298))

(declare-fun m!8368476 () Bool)

(assert (=> bm!743297 m!8368476))

(declare-fun m!8368478 () Bool)

(assert (=> bm!743298 m!8368478))

(declare-fun m!8368480 () Bool)

(assert (=> b!8000901 m!8368480))

(assert (=> b!8000816 d!2386679))

(declare-fun call!743321 () Regex!21589)

(declare-fun bm!743315 () Bool)

(declare-fun c!1468991 () Bool)

(assert (=> bm!743315 (= call!743321 (derivativeStep!6604 (ite c!1468991 (regTwo!43691 r!24748) (regTwo!43690 r!24748)) (h!81142 input!8006)))))

(declare-fun b!8000942 () Bool)

(declare-fun e!4713328 () Regex!21589)

(assert (=> b!8000942 (= e!4713328 EmptyLang!21589)))

(declare-fun d!2386681 () Bool)

(declare-fun lt!2713712 () Regex!21589)

(assert (=> d!2386681 (validRegex!11893 lt!2713712)))

(assert (=> d!2386681 (= lt!2713712 e!4713328)))

(declare-fun c!1468993 () Bool)

(assert (=> d!2386681 (= c!1468993 (or ((_ is EmptyExpr!21589) r!24748) ((_ is EmptyLang!21589) r!24748)))))

(assert (=> d!2386681 (validRegex!11893 r!24748)))

(assert (=> d!2386681 (= (derivativeStep!6604 r!24748 (h!81142 input!8006)) lt!2713712)))

(declare-fun bm!743316 () Bool)

(declare-fun call!743323 () Regex!21589)

(declare-fun call!743320 () Regex!21589)

(assert (=> bm!743316 (= call!743323 call!743320)))

(declare-fun bm!743317 () Bool)

(declare-fun c!1468995 () Bool)

(assert (=> bm!743317 (= call!743320 (derivativeStep!6604 (ite c!1468991 (regOne!43691 r!24748) (ite c!1468995 (reg!21918 r!24748) (regOne!43690 r!24748))) (h!81142 input!8006)))))

(declare-fun b!8000943 () Bool)

(declare-fun e!4713331 () Regex!21589)

(declare-fun call!743322 () Regex!21589)

(assert (=> b!8000943 (= e!4713331 (Union!21589 (Concat!30588 call!743322 (regTwo!43690 r!24748)) EmptyLang!21589))))

(declare-fun b!8000944 () Bool)

(assert (=> b!8000944 (= c!1468991 ((_ is Union!21589) r!24748))))

(declare-fun e!4713327 () Regex!21589)

(declare-fun e!4713330 () Regex!21589)

(assert (=> b!8000944 (= e!4713327 e!4713330)))

(declare-fun b!8000945 () Bool)

(assert (=> b!8000945 (= e!4713330 (Union!21589 call!743320 call!743321))))

(declare-fun b!8000946 () Bool)

(assert (=> b!8000946 (= e!4713331 (Union!21589 (Concat!30588 call!743322 (regTwo!43690 r!24748)) call!743321))))

(declare-fun b!8000947 () Bool)

(assert (=> b!8000947 (= e!4713327 (ite (= (h!81142 input!8006) (c!1468948 r!24748)) EmptyExpr!21589 EmptyLang!21589))))

(declare-fun b!8000948 () Bool)

(declare-fun e!4713329 () Regex!21589)

(assert (=> b!8000948 (= e!4713329 (Concat!30588 call!743323 r!24748))))

(declare-fun b!8000949 () Bool)

(assert (=> b!8000949 (= e!4713328 e!4713327)))

(declare-fun c!1468994 () Bool)

(assert (=> b!8000949 (= c!1468994 ((_ is ElementMatch!21589) r!24748))))

(declare-fun b!8000950 () Bool)

(assert (=> b!8000950 (= e!4713330 e!4713329)))

(assert (=> b!8000950 (= c!1468995 ((_ is Star!21589) r!24748))))

(declare-fun bm!743318 () Bool)

(assert (=> bm!743318 (= call!743322 call!743323)))

(declare-fun b!8000951 () Bool)

(declare-fun c!1468992 () Bool)

(assert (=> b!8000951 (= c!1468992 (nullable!9669 (regOne!43690 r!24748)))))

(assert (=> b!8000951 (= e!4713329 e!4713331)))

(assert (= (and d!2386681 c!1468993) b!8000942))

(assert (= (and d!2386681 (not c!1468993)) b!8000949))

(assert (= (and b!8000949 c!1468994) b!8000947))

(assert (= (and b!8000949 (not c!1468994)) b!8000944))

(assert (= (and b!8000944 c!1468991) b!8000945))

(assert (= (and b!8000944 (not c!1468991)) b!8000950))

(assert (= (and b!8000950 c!1468995) b!8000948))

(assert (= (and b!8000950 (not c!1468995)) b!8000951))

(assert (= (and b!8000951 c!1468992) b!8000946))

(assert (= (and b!8000951 (not c!1468992)) b!8000943))

(assert (= (or b!8000946 b!8000943) bm!743318))

(assert (= (or b!8000948 bm!743318) bm!743316))

(assert (= (or b!8000945 bm!743316) bm!743317))

(assert (= (or b!8000945 b!8000946) bm!743315))

(declare-fun m!8368488 () Bool)

(assert (=> bm!743315 m!8368488))

(declare-fun m!8368490 () Bool)

(assert (=> d!2386681 m!8368490))

(assert (=> d!2386681 m!8368464))

(declare-fun m!8368492 () Bool)

(assert (=> bm!743317 m!8368492))

(declare-fun m!8368494 () Bool)

(assert (=> b!8000951 m!8368494))

(assert (=> b!8000816 d!2386681))

(declare-fun b!8000956 () Bool)

(declare-fun e!4713334 () Bool)

(declare-fun tp!2393237 () Bool)

(assert (=> b!8000956 (= e!4713334 (and tp_is_empty!53721 tp!2393237))))

(assert (=> b!8000820 (= tp!2393231 e!4713334)))

(assert (= (and b!8000820 ((_ is Cons!74694) (t!390561 input!8006))) b!8000956))

(declare-fun b!8000967 () Bool)

(declare-fun e!4713337 () Bool)

(assert (=> b!8000967 (= e!4713337 tp_is_empty!53721)))

(declare-fun b!8000969 () Bool)

(declare-fun tp!2393248 () Bool)

(assert (=> b!8000969 (= e!4713337 tp!2393248)))

(declare-fun b!8000968 () Bool)

(declare-fun tp!2393249 () Bool)

(declare-fun tp!2393251 () Bool)

(assert (=> b!8000968 (= e!4713337 (and tp!2393249 tp!2393251))))

(declare-fun b!8000970 () Bool)

(declare-fun tp!2393250 () Bool)

(declare-fun tp!2393252 () Bool)

(assert (=> b!8000970 (= e!4713337 (and tp!2393250 tp!2393252))))

(assert (=> b!8000815 (= tp!2393234 e!4713337)))

(assert (= (and b!8000815 ((_ is ElementMatch!21589) (regOne!43690 r!24748))) b!8000967))

(assert (= (and b!8000815 ((_ is Concat!30588) (regOne!43690 r!24748))) b!8000968))

(assert (= (and b!8000815 ((_ is Star!21589) (regOne!43690 r!24748))) b!8000969))

(assert (= (and b!8000815 ((_ is Union!21589) (regOne!43690 r!24748))) b!8000970))

(declare-fun b!8000971 () Bool)

(declare-fun e!4713338 () Bool)

(assert (=> b!8000971 (= e!4713338 tp_is_empty!53721)))

(declare-fun b!8000973 () Bool)

(declare-fun tp!2393253 () Bool)

(assert (=> b!8000973 (= e!4713338 tp!2393253)))

(declare-fun b!8000972 () Bool)

(declare-fun tp!2393254 () Bool)

(declare-fun tp!2393256 () Bool)

(assert (=> b!8000972 (= e!4713338 (and tp!2393254 tp!2393256))))

(declare-fun b!8000974 () Bool)

(declare-fun tp!2393255 () Bool)

(declare-fun tp!2393257 () Bool)

(assert (=> b!8000974 (= e!4713338 (and tp!2393255 tp!2393257))))

(assert (=> b!8000815 (= tp!2393233 e!4713338)))

(assert (= (and b!8000815 ((_ is ElementMatch!21589) (regTwo!43690 r!24748))) b!8000971))

(assert (= (and b!8000815 ((_ is Concat!30588) (regTwo!43690 r!24748))) b!8000972))

(assert (= (and b!8000815 ((_ is Star!21589) (regTwo!43690 r!24748))) b!8000973))

(assert (= (and b!8000815 ((_ is Union!21589) (regTwo!43690 r!24748))) b!8000974))

(declare-fun b!8000985 () Bool)

(declare-fun e!4713344 () Bool)

(assert (=> b!8000985 (= e!4713344 tp_is_empty!53721)))

(declare-fun b!8000987 () Bool)

(declare-fun tp!2393258 () Bool)

(assert (=> b!8000987 (= e!4713344 tp!2393258)))

(declare-fun b!8000986 () Bool)

(declare-fun tp!2393259 () Bool)

(declare-fun tp!2393261 () Bool)

(assert (=> b!8000986 (= e!4713344 (and tp!2393259 tp!2393261))))

(declare-fun b!8000988 () Bool)

(declare-fun tp!2393260 () Bool)

(declare-fun tp!2393262 () Bool)

(assert (=> b!8000988 (= e!4713344 (and tp!2393260 tp!2393262))))

(assert (=> b!8000821 (= tp!2393230 e!4713344)))

(assert (= (and b!8000821 ((_ is ElementMatch!21589) (reg!21918 r!24748))) b!8000985))

(assert (= (and b!8000821 ((_ is Concat!30588) (reg!21918 r!24748))) b!8000986))

(assert (= (and b!8000821 ((_ is Star!21589) (reg!21918 r!24748))) b!8000987))

(assert (= (and b!8000821 ((_ is Union!21589) (reg!21918 r!24748))) b!8000988))

(declare-fun b!8000989 () Bool)

(declare-fun e!4713345 () Bool)

(assert (=> b!8000989 (= e!4713345 tp_is_empty!53721)))

(declare-fun b!8000991 () Bool)

(declare-fun tp!2393263 () Bool)

(assert (=> b!8000991 (= e!4713345 tp!2393263)))

(declare-fun b!8000990 () Bool)

(declare-fun tp!2393264 () Bool)

(declare-fun tp!2393266 () Bool)

(assert (=> b!8000990 (= e!4713345 (and tp!2393264 tp!2393266))))

(declare-fun b!8000992 () Bool)

(declare-fun tp!2393265 () Bool)

(declare-fun tp!2393267 () Bool)

(assert (=> b!8000992 (= e!4713345 (and tp!2393265 tp!2393267))))

(assert (=> b!8000822 (= tp!2393229 e!4713345)))

(assert (= (and b!8000822 ((_ is ElementMatch!21589) (regOne!43691 r!24748))) b!8000989))

(assert (= (and b!8000822 ((_ is Concat!30588) (regOne!43691 r!24748))) b!8000990))

(assert (= (and b!8000822 ((_ is Star!21589) (regOne!43691 r!24748))) b!8000991))

(assert (= (and b!8000822 ((_ is Union!21589) (regOne!43691 r!24748))) b!8000992))

(declare-fun b!8000993 () Bool)

(declare-fun e!4713346 () Bool)

(assert (=> b!8000993 (= e!4713346 tp_is_empty!53721)))

(declare-fun b!8000995 () Bool)

(declare-fun tp!2393268 () Bool)

(assert (=> b!8000995 (= e!4713346 tp!2393268)))

(declare-fun b!8000994 () Bool)

(declare-fun tp!2393269 () Bool)

(declare-fun tp!2393271 () Bool)

(assert (=> b!8000994 (= e!4713346 (and tp!2393269 tp!2393271))))

(declare-fun b!8000996 () Bool)

(declare-fun tp!2393270 () Bool)

(declare-fun tp!2393272 () Bool)

(assert (=> b!8000996 (= e!4713346 (and tp!2393270 tp!2393272))))

(assert (=> b!8000822 (= tp!2393232 e!4713346)))

(assert (= (and b!8000822 ((_ is ElementMatch!21589) (regTwo!43691 r!24748))) b!8000993))

(assert (= (and b!8000822 ((_ is Concat!30588) (regTwo!43691 r!24748))) b!8000994))

(assert (= (and b!8000822 ((_ is Star!21589) (regTwo!43691 r!24748))) b!8000995))

(assert (= (and b!8000822 ((_ is Union!21589) (regTwo!43691 r!24748))) b!8000996))

(check-sat (not b!8000990) tp_is_empty!53721 (not b!8000987) (not b!8000988) (not bm!743297) (not bm!743315) (not bm!743292) (not b!8000986) (not bm!743291) (not b!8000992) (not bm!743317) (not b!8000969) (not bm!743298) (not b!8000875) (not b!8000968) (not b!8000991) (not b!8000996) (not b!8000994) (not b!8000973) (not b!8000951) (not b!8000970) (not b!8000995) (not d!2386681) (not b!8000956) (not b!8000883) (not b!8000901) (not b!8000881) (not b!8000974) (not b!8000972))
(check-sat)
