; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281466 () Bool)

(assert start!281466)

(declare-fun b!2882902 () Bool)

(declare-fun res!1194539 () Bool)

(declare-fun e!1823526 () Bool)

(assert (=> b!2882902 (=> (not res!1194539) (not e!1823526))))

(declare-datatypes ((C!17764 0))(
  ( (C!17765 (val!10916 Int)) )
))
(declare-datatypes ((Regex!8791 0))(
  ( (ElementMatch!8791 (c!468272 C!17764)) (Concat!14112 (regOne!18094 Regex!8791) (regTwo!18094 Regex!8791)) (EmptyExpr!8791) (Star!8791 (reg!9120 Regex!8791)) (EmptyLang!8791) (Union!8791 (regOne!18095 Regex!8791) (regTwo!18095 Regex!8791)) )
))
(declare-fun r!23079 () Regex!8791)

(get-info :version)

(assert (=> b!2882902 (= res!1194539 (and (not ((_ is EmptyExpr!8791) r!23079)) (not ((_ is EmptyLang!8791) r!23079)) (not ((_ is ElementMatch!8791) r!23079)) (not ((_ is Star!8791) r!23079)) (not ((_ is Union!8791) r!23079))))))

(declare-fun b!2882903 () Bool)

(declare-fun res!1194536 () Bool)

(assert (=> b!2882903 (=> (not res!1194536) (not e!1823526))))

(declare-datatypes ((List!34592 0))(
  ( (Nil!34468) (Cons!34468 (h!39888 C!17764) (t!233635 List!34592)) )
))
(declare-datatypes ((Option!6464 0))(
  ( (None!6463) (Some!6463 (v!34589 List!34592)) )
))
(declare-fun isDefined!5028 (Option!6464) Bool)

(declare-fun getLanguageWitness!498 (Regex!8791) Option!6464)

(assert (=> b!2882903 (= res!1194536 (isDefined!5028 (getLanguageWitness!498 r!23079)))))

(declare-fun b!2882904 () Bool)

(declare-fun e!1823525 () Bool)

(declare-fun tp!924749 () Bool)

(declare-fun tp!924748 () Bool)

(assert (=> b!2882904 (= e!1823525 (and tp!924749 tp!924748))))

(declare-fun b!2882905 () Bool)

(declare-fun e!1823527 () Bool)

(assert (=> b!2882905 (= e!1823526 e!1823527)))

(declare-fun res!1194535 () Bool)

(assert (=> b!2882905 (=> (not res!1194535) (not e!1823527))))

(declare-fun lt!1020181 () Option!6464)

(assert (=> b!2882905 (= res!1194535 ((_ is Some!6463) lt!1020181))))

(assert (=> b!2882905 (= lt!1020181 (getLanguageWitness!498 (regOne!18094 r!23079)))))

(declare-fun b!2882906 () Bool)

(declare-fun tp!924746 () Bool)

(declare-fun tp!924745 () Bool)

(assert (=> b!2882906 (= e!1823525 (and tp!924746 tp!924745))))

(declare-fun b!2882907 () Bool)

(declare-fun tp_is_empty!15169 () Bool)

(assert (=> b!2882907 (= e!1823525 tp_is_empty!15169)))

(declare-fun b!2882908 () Bool)

(declare-fun e!1823524 () Bool)

(declare-fun validRegex!3564 (Regex!8791) Bool)

(assert (=> b!2882908 (= e!1823524 (not (validRegex!3564 (regOne!18094 r!23079))))))

(declare-fun lt!1020184 () Option!6464)

(declare-fun matchR!3773 (Regex!8791 List!34592) Bool)

(declare-fun get!10401 (Option!6464) List!34592)

(assert (=> b!2882908 (matchR!3773 (regTwo!18094 r!23079) (get!10401 lt!1020184))))

(declare-datatypes ((Unit!48051 0))(
  ( (Unit!48052) )
))
(declare-fun lt!1020182 () Unit!48051)

(declare-fun lemmaGetWitnessMatches!80 (Regex!8791) Unit!48051)

(assert (=> b!2882908 (= lt!1020182 (lemmaGetWitnessMatches!80 (regTwo!18094 r!23079)))))

(assert (=> b!2882908 (matchR!3773 (regOne!18094 r!23079) (get!10401 lt!1020181))))

(declare-fun lt!1020183 () Unit!48051)

(assert (=> b!2882908 (= lt!1020183 (lemmaGetWitnessMatches!80 (regOne!18094 r!23079)))))

(declare-fun res!1194537 () Bool)

(assert (=> start!281466 (=> (not res!1194537) (not e!1823526))))

(assert (=> start!281466 (= res!1194537 (validRegex!3564 r!23079))))

(assert (=> start!281466 e!1823526))

(assert (=> start!281466 e!1823525))

(declare-fun b!2882909 () Bool)

(declare-fun tp!924747 () Bool)

(assert (=> b!2882909 (= e!1823525 tp!924747)))

(declare-fun b!2882910 () Bool)

(assert (=> b!2882910 (= e!1823527 e!1823524)))

(declare-fun res!1194538 () Bool)

(assert (=> b!2882910 (=> (not res!1194538) (not e!1823524))))

(assert (=> b!2882910 (= res!1194538 ((_ is Some!6463) lt!1020184))))

(assert (=> b!2882910 (= lt!1020184 (getLanguageWitness!498 (regTwo!18094 r!23079)))))

(assert (= (and start!281466 res!1194537) b!2882903))

(assert (= (and b!2882903 res!1194536) b!2882902))

(assert (= (and b!2882902 res!1194539) b!2882905))

(assert (= (and b!2882905 res!1194535) b!2882910))

(assert (= (and b!2882910 res!1194538) b!2882908))

(assert (= (and start!281466 ((_ is ElementMatch!8791) r!23079)) b!2882907))

(assert (= (and start!281466 ((_ is Concat!14112) r!23079)) b!2882906))

(assert (= (and start!281466 ((_ is Star!8791) r!23079)) b!2882909))

(assert (= (and start!281466 ((_ is Union!8791) r!23079)) b!2882904))

(declare-fun m!3299791 () Bool)

(assert (=> b!2882903 m!3299791))

(assert (=> b!2882903 m!3299791))

(declare-fun m!3299793 () Bool)

(assert (=> b!2882903 m!3299793))

(declare-fun m!3299795 () Bool)

(assert (=> b!2882908 m!3299795))

(declare-fun m!3299797 () Bool)

(assert (=> b!2882908 m!3299797))

(declare-fun m!3299799 () Bool)

(assert (=> b!2882908 m!3299799))

(declare-fun m!3299801 () Bool)

(assert (=> b!2882908 m!3299801))

(declare-fun m!3299803 () Bool)

(assert (=> b!2882908 m!3299803))

(declare-fun m!3299805 () Bool)

(assert (=> b!2882908 m!3299805))

(declare-fun m!3299807 () Bool)

(assert (=> b!2882908 m!3299807))

(assert (=> b!2882908 m!3299803))

(assert (=> b!2882908 m!3299795))

(declare-fun m!3299809 () Bool)

(assert (=> start!281466 m!3299809))

(declare-fun m!3299811 () Bool)

(assert (=> b!2882910 m!3299811))

(declare-fun m!3299813 () Bool)

(assert (=> b!2882905 m!3299813))

(check-sat (not b!2882908) (not b!2882903) (not b!2882904) (not b!2882906) (not start!281466) (not b!2882910) (not b!2882905) (not b!2882909) tp_is_empty!15169)
(check-sat)
(get-model)

(declare-fun b!2882943 () Bool)

(declare-fun e!1823549 () Option!6464)

(assert (=> b!2882943 (= e!1823549 (Some!6463 Nil!34468))))

(declare-fun b!2882944 () Bool)

(declare-fun e!1823551 () Option!6464)

(declare-fun lt!1020192 () Option!6464)

(declare-fun lt!1020193 () Option!6464)

(declare-fun ++!8196 (List!34592 List!34592) List!34592)

(assert (=> b!2882944 (= e!1823551 (Some!6463 (++!8196 (v!34589 lt!1020192) (v!34589 lt!1020193))))))

(declare-fun b!2882945 () Bool)

(declare-fun e!1823546 () Option!6464)

(declare-fun e!1823545 () Option!6464)

(assert (=> b!2882945 (= e!1823546 e!1823545)))

(declare-fun lt!1020191 () Option!6464)

(declare-fun call!186871 () Option!6464)

(assert (=> b!2882945 (= lt!1020191 call!186871)))

(declare-fun c!468296 () Bool)

(assert (=> b!2882945 (= c!468296 ((_ is Some!6463) lt!1020191))))

(declare-fun b!2882946 () Bool)

(declare-fun e!1823550 () Option!6464)

(assert (=> b!2882946 (= e!1823550 None!6463)))

(declare-fun b!2882947 () Bool)

(declare-fun e!1823547 () Option!6464)

(assert (=> b!2882947 (= e!1823547 None!6463)))

(declare-fun b!2882948 () Bool)

(declare-fun e!1823544 () Option!6464)

(assert (=> b!2882948 (= e!1823544 (Some!6463 (Cons!34468 (c!468272 (regOne!18094 r!23079)) Nil!34468)))))

(declare-fun bm!186866 () Bool)

(declare-fun c!468291 () Bool)

(assert (=> bm!186866 (= call!186871 (getLanguageWitness!498 (ite c!468291 (regOne!18095 (regOne!18094 r!23079)) (regTwo!18094 (regOne!18094 r!23079)))))))

(declare-fun b!2882949 () Bool)

(assert (=> b!2882949 (= e!1823551 None!6463)))

(declare-fun b!2882950 () Bool)

(declare-fun c!468295 () Bool)

(assert (=> b!2882950 (= c!468295 ((_ is ElementMatch!8791) (regOne!18094 r!23079)))))

(assert (=> b!2882950 (= e!1823547 e!1823544)))

(declare-fun b!2882951 () Bool)

(assert (=> b!2882951 (= e!1823546 e!1823550)))

(declare-fun call!186872 () Option!6464)

(assert (=> b!2882951 (= lt!1020192 call!186872)))

(declare-fun c!468294 () Bool)

(assert (=> b!2882951 (= c!468294 ((_ is Some!6463) lt!1020192))))

(declare-fun b!2882952 () Bool)

(assert (=> b!2882952 (= e!1823544 e!1823549)))

(declare-fun c!468293 () Bool)

(assert (=> b!2882952 (= c!468293 ((_ is Star!8791) (regOne!18094 r!23079)))))

(declare-fun bm!186867 () Bool)

(assert (=> bm!186867 (= call!186872 (getLanguageWitness!498 (ite c!468291 (regTwo!18095 (regOne!18094 r!23079)) (regOne!18094 (regOne!18094 r!23079)))))))

(declare-fun b!2882953 () Bool)

(assert (=> b!2882953 (= e!1823545 lt!1020191)))

(declare-fun b!2882954 () Bool)

(declare-fun e!1823548 () Option!6464)

(assert (=> b!2882954 (= e!1823548 (Some!6463 Nil!34468))))

(declare-fun d!833671 () Bool)

(declare-fun c!468292 () Bool)

(assert (=> d!833671 (= c!468292 ((_ is EmptyExpr!8791) (regOne!18094 r!23079)))))

(assert (=> d!833671 (= (getLanguageWitness!498 (regOne!18094 r!23079)) e!1823548)))

(declare-fun b!2882955 () Bool)

(assert (=> b!2882955 (= c!468291 ((_ is Union!8791) (regOne!18094 r!23079)))))

(assert (=> b!2882955 (= e!1823549 e!1823546)))

(declare-fun b!2882956 () Bool)

(assert (=> b!2882956 (= e!1823548 e!1823547)))

(declare-fun c!468290 () Bool)

(assert (=> b!2882956 (= c!468290 ((_ is EmptyLang!8791) (regOne!18094 r!23079)))))

(declare-fun b!2882957 () Bool)

(assert (=> b!2882957 (= e!1823545 call!186872)))

(declare-fun b!2882958 () Bool)

(declare-fun c!468289 () Bool)

(assert (=> b!2882958 (= c!468289 ((_ is Some!6463) lt!1020193))))

(assert (=> b!2882958 (= lt!1020193 call!186871)))

(assert (=> b!2882958 (= e!1823550 e!1823551)))

(assert (= (and d!833671 c!468292) b!2882954))

(assert (= (and d!833671 (not c!468292)) b!2882956))

(assert (= (and b!2882956 c!468290) b!2882947))

(assert (= (and b!2882956 (not c!468290)) b!2882950))

(assert (= (and b!2882950 c!468295) b!2882948))

(assert (= (and b!2882950 (not c!468295)) b!2882952))

(assert (= (and b!2882952 c!468293) b!2882943))

(assert (= (and b!2882952 (not c!468293)) b!2882955))

(assert (= (and b!2882955 c!468291) b!2882945))

(assert (= (and b!2882955 (not c!468291)) b!2882951))

(assert (= (and b!2882945 c!468296) b!2882953))

(assert (= (and b!2882945 (not c!468296)) b!2882957))

(assert (= (and b!2882951 c!468294) b!2882958))

(assert (= (and b!2882951 (not c!468294)) b!2882946))

(assert (= (and b!2882958 c!468289) b!2882944))

(assert (= (and b!2882958 (not c!468289)) b!2882949))

(assert (= (or b!2882957 b!2882951) bm!186867))

(assert (= (or b!2882945 b!2882958) bm!186866))

(declare-fun m!3299817 () Bool)

(assert (=> b!2882944 m!3299817))

(declare-fun m!3299819 () Bool)

(assert (=> bm!186866 m!3299819))

(declare-fun m!3299821 () Bool)

(assert (=> bm!186867 m!3299821))

(assert (=> b!2882905 d!833671))

(declare-fun b!2882967 () Bool)

(declare-fun e!1823561 () Option!6464)

(assert (=> b!2882967 (= e!1823561 (Some!6463 Nil!34468))))

(declare-fun b!2882968 () Bool)

(declare-fun e!1823563 () Option!6464)

(declare-fun lt!1020195 () Option!6464)

(declare-fun lt!1020196 () Option!6464)

(assert (=> b!2882968 (= e!1823563 (Some!6463 (++!8196 (v!34589 lt!1020195) (v!34589 lt!1020196))))))

(declare-fun b!2882969 () Bool)

(declare-fun e!1823558 () Option!6464)

(declare-fun e!1823557 () Option!6464)

(assert (=> b!2882969 (= e!1823558 e!1823557)))

(declare-fun lt!1020194 () Option!6464)

(declare-fun call!186873 () Option!6464)

(assert (=> b!2882969 (= lt!1020194 call!186873)))

(declare-fun c!468308 () Bool)

(assert (=> b!2882969 (= c!468308 ((_ is Some!6463) lt!1020194))))

(declare-fun b!2882970 () Bool)

(declare-fun e!1823562 () Option!6464)

(assert (=> b!2882970 (= e!1823562 None!6463)))

(declare-fun b!2882971 () Bool)

(declare-fun e!1823559 () Option!6464)

(assert (=> b!2882971 (= e!1823559 None!6463)))

(declare-fun b!2882972 () Bool)

(declare-fun e!1823554 () Option!6464)

(assert (=> b!2882972 (= e!1823554 (Some!6463 (Cons!34468 (c!468272 (regTwo!18094 r!23079)) Nil!34468)))))

(declare-fun bm!186868 () Bool)

(declare-fun c!468302 () Bool)

(assert (=> bm!186868 (= call!186873 (getLanguageWitness!498 (ite c!468302 (regOne!18095 (regTwo!18094 r!23079)) (regTwo!18094 (regTwo!18094 r!23079)))))))

(declare-fun b!2882973 () Bool)

(assert (=> b!2882973 (= e!1823563 None!6463)))

(declare-fun b!2882974 () Bool)

(declare-fun c!468307 () Bool)

(assert (=> b!2882974 (= c!468307 ((_ is ElementMatch!8791) (regTwo!18094 r!23079)))))

(assert (=> b!2882974 (= e!1823559 e!1823554)))

(declare-fun b!2882975 () Bool)

(assert (=> b!2882975 (= e!1823558 e!1823562)))

(declare-fun call!186874 () Option!6464)

(assert (=> b!2882975 (= lt!1020195 call!186874)))

(declare-fun c!468306 () Bool)

(assert (=> b!2882975 (= c!468306 ((_ is Some!6463) lt!1020195))))

(declare-fun b!2882976 () Bool)

(assert (=> b!2882976 (= e!1823554 e!1823561)))

(declare-fun c!468305 () Bool)

(assert (=> b!2882976 (= c!468305 ((_ is Star!8791) (regTwo!18094 r!23079)))))

(declare-fun bm!186869 () Bool)

(assert (=> bm!186869 (= call!186874 (getLanguageWitness!498 (ite c!468302 (regTwo!18095 (regTwo!18094 r!23079)) (regOne!18094 (regTwo!18094 r!23079)))))))

(declare-fun b!2882977 () Bool)

(assert (=> b!2882977 (= e!1823557 lt!1020194)))

(declare-fun b!2882978 () Bool)

(declare-fun e!1823560 () Option!6464)

(assert (=> b!2882978 (= e!1823560 (Some!6463 Nil!34468))))

(declare-fun d!833677 () Bool)

(declare-fun c!468304 () Bool)

(assert (=> d!833677 (= c!468304 ((_ is EmptyExpr!8791) (regTwo!18094 r!23079)))))

(assert (=> d!833677 (= (getLanguageWitness!498 (regTwo!18094 r!23079)) e!1823560)))

(declare-fun b!2882979 () Bool)

(assert (=> b!2882979 (= c!468302 ((_ is Union!8791) (regTwo!18094 r!23079)))))

(assert (=> b!2882979 (= e!1823561 e!1823558)))

(declare-fun b!2882980 () Bool)

(assert (=> b!2882980 (= e!1823560 e!1823559)))

(declare-fun c!468300 () Bool)

(assert (=> b!2882980 (= c!468300 ((_ is EmptyLang!8791) (regTwo!18094 r!23079)))))

(declare-fun b!2882981 () Bool)

(assert (=> b!2882981 (= e!1823557 call!186874)))

(declare-fun b!2882982 () Bool)

(declare-fun c!468299 () Bool)

(assert (=> b!2882982 (= c!468299 ((_ is Some!6463) lt!1020196))))

(assert (=> b!2882982 (= lt!1020196 call!186873)))

(assert (=> b!2882982 (= e!1823562 e!1823563)))

(assert (= (and d!833677 c!468304) b!2882978))

(assert (= (and d!833677 (not c!468304)) b!2882980))

(assert (= (and b!2882980 c!468300) b!2882971))

(assert (= (and b!2882980 (not c!468300)) b!2882974))

(assert (= (and b!2882974 c!468307) b!2882972))

(assert (= (and b!2882974 (not c!468307)) b!2882976))

(assert (= (and b!2882976 c!468305) b!2882967))

(assert (= (and b!2882976 (not c!468305)) b!2882979))

(assert (= (and b!2882979 c!468302) b!2882969))

(assert (= (and b!2882979 (not c!468302)) b!2882975))

(assert (= (and b!2882969 c!468308) b!2882977))

(assert (= (and b!2882969 (not c!468308)) b!2882981))

(assert (= (and b!2882975 c!468306) b!2882982))

(assert (= (and b!2882975 (not c!468306)) b!2882970))

(assert (= (and b!2882982 c!468299) b!2882968))

(assert (= (and b!2882982 (not c!468299)) b!2882973))

(assert (= (or b!2882981 b!2882975) bm!186869))

(assert (= (or b!2882969 b!2882982) bm!186868))

(declare-fun m!3299823 () Bool)

(assert (=> b!2882968 m!3299823))

(declare-fun m!3299825 () Bool)

(assert (=> bm!186868 m!3299825))

(declare-fun m!3299827 () Bool)

(assert (=> bm!186869 m!3299827))

(assert (=> b!2882910 d!833677))

(declare-fun d!833679 () Bool)

(declare-fun isEmpty!18759 (Option!6464) Bool)

(assert (=> d!833679 (= (isDefined!5028 (getLanguageWitness!498 r!23079)) (not (isEmpty!18759 (getLanguageWitness!498 r!23079))))))

(declare-fun bs!523772 () Bool)

(assert (= bs!523772 d!833679))

(assert (=> bs!523772 m!3299791))

(declare-fun m!3299829 () Bool)

(assert (=> bs!523772 m!3299829))

(assert (=> b!2882903 d!833679))

(declare-fun b!2883007 () Bool)

(declare-fun e!1823581 () Option!6464)

(assert (=> b!2883007 (= e!1823581 (Some!6463 Nil!34468))))

(declare-fun b!2883008 () Bool)

(declare-fun e!1823583 () Option!6464)

(declare-fun lt!1020204 () Option!6464)

(declare-fun lt!1020205 () Option!6464)

(assert (=> b!2883008 (= e!1823583 (Some!6463 (++!8196 (v!34589 lt!1020204) (v!34589 lt!1020205))))))

(declare-fun b!2883009 () Bool)

(declare-fun e!1823578 () Option!6464)

(declare-fun e!1823577 () Option!6464)

(assert (=> b!2883009 (= e!1823578 e!1823577)))

(declare-fun lt!1020203 () Option!6464)

(declare-fun call!186879 () Option!6464)

(assert (=> b!2883009 (= lt!1020203 call!186879)))

(declare-fun c!468328 () Bool)

(assert (=> b!2883009 (= c!468328 ((_ is Some!6463) lt!1020203))))

(declare-fun b!2883010 () Bool)

(declare-fun e!1823582 () Option!6464)

(assert (=> b!2883010 (= e!1823582 None!6463)))

(declare-fun b!2883011 () Bool)

(declare-fun e!1823579 () Option!6464)

(assert (=> b!2883011 (= e!1823579 None!6463)))

(declare-fun b!2883012 () Bool)

(declare-fun e!1823576 () Option!6464)

(assert (=> b!2883012 (= e!1823576 (Some!6463 (Cons!34468 (c!468272 r!23079) Nil!34468)))))

(declare-fun bm!186874 () Bool)

(declare-fun c!468323 () Bool)

(assert (=> bm!186874 (= call!186879 (getLanguageWitness!498 (ite c!468323 (regOne!18095 r!23079) (regTwo!18094 r!23079))))))

(declare-fun b!2883013 () Bool)

(assert (=> b!2883013 (= e!1823583 None!6463)))

(declare-fun b!2883014 () Bool)

(declare-fun c!468327 () Bool)

(assert (=> b!2883014 (= c!468327 ((_ is ElementMatch!8791) r!23079))))

(assert (=> b!2883014 (= e!1823579 e!1823576)))

(declare-fun b!2883015 () Bool)

(assert (=> b!2883015 (= e!1823578 e!1823582)))

(declare-fun call!186880 () Option!6464)

(assert (=> b!2883015 (= lt!1020204 call!186880)))

(declare-fun c!468326 () Bool)

(assert (=> b!2883015 (= c!468326 ((_ is Some!6463) lt!1020204))))

(declare-fun b!2883016 () Bool)

(assert (=> b!2883016 (= e!1823576 e!1823581)))

(declare-fun c!468325 () Bool)

(assert (=> b!2883016 (= c!468325 ((_ is Star!8791) r!23079))))

(declare-fun bm!186875 () Bool)

(assert (=> bm!186875 (= call!186880 (getLanguageWitness!498 (ite c!468323 (regTwo!18095 r!23079) (regOne!18094 r!23079))))))

(declare-fun b!2883017 () Bool)

(assert (=> b!2883017 (= e!1823577 lt!1020203)))

(declare-fun b!2883018 () Bool)

(declare-fun e!1823580 () Option!6464)

(assert (=> b!2883018 (= e!1823580 (Some!6463 Nil!34468))))

(declare-fun d!833681 () Bool)

(declare-fun c!468324 () Bool)

(assert (=> d!833681 (= c!468324 ((_ is EmptyExpr!8791) r!23079))))

(assert (=> d!833681 (= (getLanguageWitness!498 r!23079) e!1823580)))

(declare-fun b!2883019 () Bool)

(assert (=> b!2883019 (= c!468323 ((_ is Union!8791) r!23079))))

(assert (=> b!2883019 (= e!1823581 e!1823578)))

(declare-fun b!2883020 () Bool)

(assert (=> b!2883020 (= e!1823580 e!1823579)))

(declare-fun c!468322 () Bool)

(assert (=> b!2883020 (= c!468322 ((_ is EmptyLang!8791) r!23079))))

(declare-fun b!2883021 () Bool)

(assert (=> b!2883021 (= e!1823577 call!186880)))

(declare-fun b!2883022 () Bool)

(declare-fun c!468321 () Bool)

(assert (=> b!2883022 (= c!468321 ((_ is Some!6463) lt!1020205))))

(assert (=> b!2883022 (= lt!1020205 call!186879)))

(assert (=> b!2883022 (= e!1823582 e!1823583)))

(assert (= (and d!833681 c!468324) b!2883018))

(assert (= (and d!833681 (not c!468324)) b!2883020))

(assert (= (and b!2883020 c!468322) b!2883011))

(assert (= (and b!2883020 (not c!468322)) b!2883014))

(assert (= (and b!2883014 c!468327) b!2883012))

(assert (= (and b!2883014 (not c!468327)) b!2883016))

(assert (= (and b!2883016 c!468325) b!2883007))

(assert (= (and b!2883016 (not c!468325)) b!2883019))

(assert (= (and b!2883019 c!468323) b!2883009))

(assert (= (and b!2883019 (not c!468323)) b!2883015))

(assert (= (and b!2883009 c!468328) b!2883017))

(assert (= (and b!2883009 (not c!468328)) b!2883021))

(assert (= (and b!2883015 c!468326) b!2883022))

(assert (= (and b!2883015 (not c!468326)) b!2883010))

(assert (= (and b!2883022 c!468321) b!2883008))

(assert (= (and b!2883022 (not c!468321)) b!2883013))

(assert (= (or b!2883021 b!2883015) bm!186875))

(assert (= (or b!2883009 b!2883022) bm!186874))

(declare-fun m!3299831 () Bool)

(assert (=> b!2883008 m!3299831))

(declare-fun m!3299833 () Bool)

(assert (=> bm!186874 m!3299833))

(declare-fun m!3299835 () Bool)

(assert (=> bm!186875 m!3299835))

(assert (=> b!2882903 d!833681))

(declare-fun d!833683 () Bool)

(assert (=> d!833683 (= (get!10401 lt!1020181) (v!34589 lt!1020181))))

(assert (=> b!2882908 d!833683))

(declare-fun d!833685 () Bool)

(assert (=> d!833685 (matchR!3773 (regTwo!18094 r!23079) (get!10401 (getLanguageWitness!498 (regTwo!18094 r!23079))))))

(declare-fun lt!1020208 () Unit!48051)

(declare-fun choose!17048 (Regex!8791) Unit!48051)

(assert (=> d!833685 (= lt!1020208 (choose!17048 (regTwo!18094 r!23079)))))

(assert (=> d!833685 (validRegex!3564 (regTwo!18094 r!23079))))

(assert (=> d!833685 (= (lemmaGetWitnessMatches!80 (regTwo!18094 r!23079)) lt!1020208)))

(declare-fun bs!523773 () Bool)

(assert (= bs!523773 d!833685))

(assert (=> bs!523773 m!3299811))

(assert (=> bs!523773 m!3299811))

(declare-fun m!3299837 () Bool)

(assert (=> bs!523773 m!3299837))

(declare-fun m!3299839 () Bool)

(assert (=> bs!523773 m!3299839))

(declare-fun m!3299841 () Bool)

(assert (=> bs!523773 m!3299841))

(assert (=> bs!523773 m!3299837))

(declare-fun m!3299843 () Bool)

(assert (=> bs!523773 m!3299843))

(assert (=> b!2882908 d!833685))

(declare-fun d!833687 () Bool)

(declare-fun e!1823620 () Bool)

(assert (=> d!833687 e!1823620))

(declare-fun c!468353 () Bool)

(assert (=> d!833687 (= c!468353 ((_ is EmptyExpr!8791) (regTwo!18094 r!23079)))))

(declare-fun lt!1020220 () Bool)

(declare-fun e!1823617 () Bool)

(assert (=> d!833687 (= lt!1020220 e!1823617)))

(declare-fun c!468352 () Bool)

(declare-fun isEmpty!18761 (List!34592) Bool)

(assert (=> d!833687 (= c!468352 (isEmpty!18761 (get!10401 lt!1020184)))))

(assert (=> d!833687 (validRegex!3564 (regTwo!18094 r!23079))))

(assert (=> d!833687 (= (matchR!3773 (regTwo!18094 r!23079) (get!10401 lt!1020184)) lt!1020220)))

(declare-fun b!2883083 () Bool)

(declare-fun nullable!2702 (Regex!8791) Bool)

(assert (=> b!2883083 (= e!1823617 (nullable!2702 (regTwo!18094 r!23079)))))

(declare-fun b!2883084 () Bool)

(declare-fun e!1823615 () Bool)

(declare-fun e!1823619 () Bool)

(assert (=> b!2883084 (= e!1823615 e!1823619)))

(declare-fun res!1194561 () Bool)

(assert (=> b!2883084 (=> res!1194561 e!1823619)))

(declare-fun call!186887 () Bool)

(assert (=> b!2883084 (= res!1194561 call!186887)))

(declare-fun b!2883085 () Bool)

(declare-fun res!1194562 () Bool)

(declare-fun e!1823614 () Bool)

(assert (=> b!2883085 (=> res!1194562 e!1823614)))

(assert (=> b!2883085 (= res!1194562 (not ((_ is ElementMatch!8791) (regTwo!18094 r!23079))))))

(declare-fun e!1823616 () Bool)

(assert (=> b!2883085 (= e!1823616 e!1823614)))

(declare-fun b!2883086 () Bool)

(declare-fun head!6365 (List!34592) C!17764)

(assert (=> b!2883086 (= e!1823619 (not (= (head!6365 (get!10401 lt!1020184)) (c!468272 (regTwo!18094 r!23079)))))))

(declare-fun b!2883087 () Bool)

(declare-fun res!1194556 () Bool)

(declare-fun e!1823618 () Bool)

(assert (=> b!2883087 (=> (not res!1194556) (not e!1823618))))

(declare-fun tail!4590 (List!34592) List!34592)

(assert (=> b!2883087 (= res!1194556 (isEmpty!18761 (tail!4590 (get!10401 lt!1020184))))))

(declare-fun bm!186882 () Bool)

(assert (=> bm!186882 (= call!186887 (isEmpty!18761 (get!10401 lt!1020184)))))

(declare-fun b!2883088 () Bool)

(declare-fun res!1194558 () Bool)

(assert (=> b!2883088 (=> res!1194558 e!1823614)))

(assert (=> b!2883088 (= res!1194558 e!1823618)))

(declare-fun res!1194559 () Bool)

(assert (=> b!2883088 (=> (not res!1194559) (not e!1823618))))

(assert (=> b!2883088 (= res!1194559 lt!1020220)))

(declare-fun b!2883089 () Bool)

(declare-fun res!1194563 () Bool)

(assert (=> b!2883089 (=> (not res!1194563) (not e!1823618))))

(assert (=> b!2883089 (= res!1194563 (not call!186887))))

(declare-fun b!2883090 () Bool)

(assert (=> b!2883090 (= e!1823620 (= lt!1020220 call!186887))))

(declare-fun b!2883091 () Bool)

(declare-fun derivativeStep!2336 (Regex!8791 C!17764) Regex!8791)

(assert (=> b!2883091 (= e!1823617 (matchR!3773 (derivativeStep!2336 (regTwo!18094 r!23079) (head!6365 (get!10401 lt!1020184))) (tail!4590 (get!10401 lt!1020184))))))

(declare-fun b!2883092 () Bool)

(assert (=> b!2883092 (= e!1823620 e!1823616)))

(declare-fun c!468351 () Bool)

(assert (=> b!2883092 (= c!468351 ((_ is EmptyLang!8791) (regTwo!18094 r!23079)))))

(declare-fun b!2883093 () Bool)

(declare-fun res!1194560 () Bool)

(assert (=> b!2883093 (=> res!1194560 e!1823619)))

(assert (=> b!2883093 (= res!1194560 (not (isEmpty!18761 (tail!4590 (get!10401 lt!1020184)))))))

(declare-fun b!2883094 () Bool)

(assert (=> b!2883094 (= e!1823616 (not lt!1020220))))

(declare-fun b!2883095 () Bool)

(assert (=> b!2883095 (= e!1823614 e!1823615)))

(declare-fun res!1194557 () Bool)

(assert (=> b!2883095 (=> (not res!1194557) (not e!1823615))))

(assert (=> b!2883095 (= res!1194557 (not lt!1020220))))

(declare-fun b!2883096 () Bool)

(assert (=> b!2883096 (= e!1823618 (= (head!6365 (get!10401 lt!1020184)) (c!468272 (regTwo!18094 r!23079))))))

(assert (= (and d!833687 c!468352) b!2883083))

(assert (= (and d!833687 (not c!468352)) b!2883091))

(assert (= (and d!833687 c!468353) b!2883090))

(assert (= (and d!833687 (not c!468353)) b!2883092))

(assert (= (and b!2883092 c!468351) b!2883094))

(assert (= (and b!2883092 (not c!468351)) b!2883085))

(assert (= (and b!2883085 (not res!1194562)) b!2883088))

(assert (= (and b!2883088 res!1194559) b!2883089))

(assert (= (and b!2883089 res!1194563) b!2883087))

(assert (= (and b!2883087 res!1194556) b!2883096))

(assert (= (and b!2883088 (not res!1194558)) b!2883095))

(assert (= (and b!2883095 res!1194557) b!2883084))

(assert (= (and b!2883084 (not res!1194561)) b!2883093))

(assert (= (and b!2883093 (not res!1194560)) b!2883086))

(assert (= (or b!2883090 b!2883089 b!2883084) bm!186882))

(assert (=> b!2883091 m!3299795))

(declare-fun m!3299865 () Bool)

(assert (=> b!2883091 m!3299865))

(assert (=> b!2883091 m!3299865))

(declare-fun m!3299867 () Bool)

(assert (=> b!2883091 m!3299867))

(assert (=> b!2883091 m!3299795))

(declare-fun m!3299869 () Bool)

(assert (=> b!2883091 m!3299869))

(assert (=> b!2883091 m!3299867))

(assert (=> b!2883091 m!3299869))

(declare-fun m!3299871 () Bool)

(assert (=> b!2883091 m!3299871))

(assert (=> b!2883087 m!3299795))

(assert (=> b!2883087 m!3299869))

(assert (=> b!2883087 m!3299869))

(declare-fun m!3299873 () Bool)

(assert (=> b!2883087 m!3299873))

(assert (=> b!2883093 m!3299795))

(assert (=> b!2883093 m!3299869))

(assert (=> b!2883093 m!3299869))

(assert (=> b!2883093 m!3299873))

(assert (=> b!2883096 m!3299795))

(assert (=> b!2883096 m!3299865))

(assert (=> b!2883086 m!3299795))

(assert (=> b!2883086 m!3299865))

(declare-fun m!3299875 () Bool)

(assert (=> b!2883083 m!3299875))

(assert (=> bm!186882 m!3299795))

(declare-fun m!3299877 () Bool)

(assert (=> bm!186882 m!3299877))

(assert (=> d!833687 m!3299795))

(assert (=> d!833687 m!3299877))

(assert (=> d!833687 m!3299841))

(assert (=> b!2882908 d!833687))

(declare-fun d!833695 () Bool)

(declare-fun e!1823641 () Bool)

(assert (=> d!833695 e!1823641))

(declare-fun c!468362 () Bool)

(assert (=> d!833695 (= c!468362 ((_ is EmptyExpr!8791) (regOne!18094 r!23079)))))

(declare-fun lt!1020223 () Bool)

(declare-fun e!1823638 () Bool)

(assert (=> d!833695 (= lt!1020223 e!1823638)))

(declare-fun c!468361 () Bool)

(assert (=> d!833695 (= c!468361 (isEmpty!18761 (get!10401 lt!1020181)))))

(assert (=> d!833695 (validRegex!3564 (regOne!18094 r!23079))))

(assert (=> d!833695 (= (matchR!3773 (regOne!18094 r!23079) (get!10401 lt!1020181)) lt!1020223)))

(declare-fun b!2883125 () Bool)

(assert (=> b!2883125 (= e!1823638 (nullable!2702 (regOne!18094 r!23079)))))

(declare-fun b!2883126 () Bool)

(declare-fun e!1823636 () Bool)

(declare-fun e!1823640 () Bool)

(assert (=> b!2883126 (= e!1823636 e!1823640)))

(declare-fun res!1194585 () Bool)

(assert (=> b!2883126 (=> res!1194585 e!1823640)))

(declare-fun call!186888 () Bool)

(assert (=> b!2883126 (= res!1194585 call!186888)))

(declare-fun b!2883127 () Bool)

(declare-fun res!1194586 () Bool)

(declare-fun e!1823635 () Bool)

(assert (=> b!2883127 (=> res!1194586 e!1823635)))

(assert (=> b!2883127 (= res!1194586 (not ((_ is ElementMatch!8791) (regOne!18094 r!23079))))))

(declare-fun e!1823637 () Bool)

(assert (=> b!2883127 (= e!1823637 e!1823635)))

(declare-fun b!2883128 () Bool)

(assert (=> b!2883128 (= e!1823640 (not (= (head!6365 (get!10401 lt!1020181)) (c!468272 (regOne!18094 r!23079)))))))

(declare-fun b!2883129 () Bool)

(declare-fun res!1194580 () Bool)

(declare-fun e!1823639 () Bool)

(assert (=> b!2883129 (=> (not res!1194580) (not e!1823639))))

(assert (=> b!2883129 (= res!1194580 (isEmpty!18761 (tail!4590 (get!10401 lt!1020181))))))

(declare-fun bm!186883 () Bool)

(assert (=> bm!186883 (= call!186888 (isEmpty!18761 (get!10401 lt!1020181)))))

(declare-fun b!2883130 () Bool)

(declare-fun res!1194582 () Bool)

(assert (=> b!2883130 (=> res!1194582 e!1823635)))

(assert (=> b!2883130 (= res!1194582 e!1823639)))

(declare-fun res!1194583 () Bool)

(assert (=> b!2883130 (=> (not res!1194583) (not e!1823639))))

(assert (=> b!2883130 (= res!1194583 lt!1020223)))

(declare-fun b!2883131 () Bool)

(declare-fun res!1194587 () Bool)

(assert (=> b!2883131 (=> (not res!1194587) (not e!1823639))))

(assert (=> b!2883131 (= res!1194587 (not call!186888))))

(declare-fun b!2883132 () Bool)

(assert (=> b!2883132 (= e!1823641 (= lt!1020223 call!186888))))

(declare-fun b!2883133 () Bool)

(assert (=> b!2883133 (= e!1823638 (matchR!3773 (derivativeStep!2336 (regOne!18094 r!23079) (head!6365 (get!10401 lt!1020181))) (tail!4590 (get!10401 lt!1020181))))))

(declare-fun b!2883134 () Bool)

(assert (=> b!2883134 (= e!1823641 e!1823637)))

(declare-fun c!468360 () Bool)

(assert (=> b!2883134 (= c!468360 ((_ is EmptyLang!8791) (regOne!18094 r!23079)))))

(declare-fun b!2883135 () Bool)

(declare-fun res!1194584 () Bool)

(assert (=> b!2883135 (=> res!1194584 e!1823640)))

(assert (=> b!2883135 (= res!1194584 (not (isEmpty!18761 (tail!4590 (get!10401 lt!1020181)))))))

(declare-fun b!2883136 () Bool)

(assert (=> b!2883136 (= e!1823637 (not lt!1020223))))

(declare-fun b!2883137 () Bool)

(assert (=> b!2883137 (= e!1823635 e!1823636)))

(declare-fun res!1194581 () Bool)

(assert (=> b!2883137 (=> (not res!1194581) (not e!1823636))))

(assert (=> b!2883137 (= res!1194581 (not lt!1020223))))

(declare-fun b!2883138 () Bool)

(assert (=> b!2883138 (= e!1823639 (= (head!6365 (get!10401 lt!1020181)) (c!468272 (regOne!18094 r!23079))))))

(assert (= (and d!833695 c!468361) b!2883125))

(assert (= (and d!833695 (not c!468361)) b!2883133))

(assert (= (and d!833695 c!468362) b!2883132))

(assert (= (and d!833695 (not c!468362)) b!2883134))

(assert (= (and b!2883134 c!468360) b!2883136))

(assert (= (and b!2883134 (not c!468360)) b!2883127))

(assert (= (and b!2883127 (not res!1194586)) b!2883130))

(assert (= (and b!2883130 res!1194583) b!2883131))

(assert (= (and b!2883131 res!1194587) b!2883129))

(assert (= (and b!2883129 res!1194580) b!2883138))

(assert (= (and b!2883130 (not res!1194582)) b!2883137))

(assert (= (and b!2883137 res!1194581) b!2883126))

(assert (= (and b!2883126 (not res!1194585)) b!2883135))

(assert (= (and b!2883135 (not res!1194584)) b!2883128))

(assert (= (or b!2883132 b!2883131 b!2883126) bm!186883))

(assert (=> b!2883133 m!3299803))

(declare-fun m!3299879 () Bool)

(assert (=> b!2883133 m!3299879))

(assert (=> b!2883133 m!3299879))

(declare-fun m!3299881 () Bool)

(assert (=> b!2883133 m!3299881))

(assert (=> b!2883133 m!3299803))

(declare-fun m!3299883 () Bool)

(assert (=> b!2883133 m!3299883))

(assert (=> b!2883133 m!3299881))

(assert (=> b!2883133 m!3299883))

(declare-fun m!3299885 () Bool)

(assert (=> b!2883133 m!3299885))

(assert (=> b!2883129 m!3299803))

(assert (=> b!2883129 m!3299883))

(assert (=> b!2883129 m!3299883))

(declare-fun m!3299887 () Bool)

(assert (=> b!2883129 m!3299887))

(assert (=> b!2883135 m!3299803))

(assert (=> b!2883135 m!3299883))

(assert (=> b!2883135 m!3299883))

(assert (=> b!2883135 m!3299887))

(assert (=> b!2883138 m!3299803))

(assert (=> b!2883138 m!3299879))

(assert (=> b!2883128 m!3299803))

(assert (=> b!2883128 m!3299879))

(declare-fun m!3299889 () Bool)

(assert (=> b!2883125 m!3299889))

(assert (=> bm!186883 m!3299803))

(declare-fun m!3299891 () Bool)

(assert (=> bm!186883 m!3299891))

(assert (=> d!833695 m!3299803))

(assert (=> d!833695 m!3299891))

(assert (=> d!833695 m!3299801))

(assert (=> b!2882908 d!833695))

(declare-fun b!2883171 () Bool)

(declare-fun e!1823666 () Bool)

(declare-fun e!1823663 () Bool)

(assert (=> b!2883171 (= e!1823666 e!1823663)))

(declare-fun res!1194610 () Bool)

(assert (=> b!2883171 (=> (not res!1194610) (not e!1823663))))

(declare-fun call!186899 () Bool)

(assert (=> b!2883171 (= res!1194610 call!186899)))

(declare-fun b!2883172 () Bool)

(declare-fun e!1823668 () Bool)

(declare-fun e!1823665 () Bool)

(assert (=> b!2883172 (= e!1823668 e!1823665)))

(declare-fun c!468371 () Bool)

(assert (=> b!2883172 (= c!468371 ((_ is Union!8791) (regOne!18094 r!23079)))))

(declare-fun bm!186893 () Bool)

(assert (=> bm!186893 (= call!186899 (validRegex!3564 (ite c!468371 (regOne!18095 (regOne!18094 r!23079)) (regOne!18094 (regOne!18094 r!23079)))))))

(declare-fun b!2883173 () Bool)

(declare-fun call!186898 () Bool)

(assert (=> b!2883173 (= e!1823663 call!186898)))

(declare-fun b!2883174 () Bool)

(declare-fun res!1194609 () Bool)

(declare-fun e!1823664 () Bool)

(assert (=> b!2883174 (=> (not res!1194609) (not e!1823664))))

(assert (=> b!2883174 (= res!1194609 call!186899)))

(assert (=> b!2883174 (= e!1823665 e!1823664)))

(declare-fun d!833697 () Bool)

(declare-fun res!1194607 () Bool)

(declare-fun e!1823669 () Bool)

(assert (=> d!833697 (=> res!1194607 e!1823669)))

(assert (=> d!833697 (= res!1194607 ((_ is ElementMatch!8791) (regOne!18094 r!23079)))))

(assert (=> d!833697 (= (validRegex!3564 (regOne!18094 r!23079)) e!1823669)))

(declare-fun b!2883175 () Bool)

(declare-fun res!1194606 () Bool)

(assert (=> b!2883175 (=> res!1194606 e!1823666)))

(assert (=> b!2883175 (= res!1194606 (not ((_ is Concat!14112) (regOne!18094 r!23079))))))

(assert (=> b!2883175 (= e!1823665 e!1823666)))

(declare-fun b!2883176 () Bool)

(assert (=> b!2883176 (= e!1823669 e!1823668)))

(declare-fun c!468370 () Bool)

(assert (=> b!2883176 (= c!468370 ((_ is Star!8791) (regOne!18094 r!23079)))))

(declare-fun b!2883177 () Bool)

(assert (=> b!2883177 (= e!1823664 call!186898)))

(declare-fun b!2883178 () Bool)

(declare-fun e!1823667 () Bool)

(assert (=> b!2883178 (= e!1823668 e!1823667)))

(declare-fun res!1194608 () Bool)

(assert (=> b!2883178 (= res!1194608 (not (nullable!2702 (reg!9120 (regOne!18094 r!23079)))))))

(assert (=> b!2883178 (=> (not res!1194608) (not e!1823667))))

(declare-fun call!186900 () Bool)

(declare-fun bm!186894 () Bool)

(assert (=> bm!186894 (= call!186900 (validRegex!3564 (ite c!468370 (reg!9120 (regOne!18094 r!23079)) (ite c!468371 (regTwo!18095 (regOne!18094 r!23079)) (regTwo!18094 (regOne!18094 r!23079))))))))

(declare-fun bm!186895 () Bool)

(assert (=> bm!186895 (= call!186898 call!186900)))

(declare-fun b!2883179 () Bool)

(assert (=> b!2883179 (= e!1823667 call!186900)))

(assert (= (and d!833697 (not res!1194607)) b!2883176))

(assert (= (and b!2883176 c!468370) b!2883178))

(assert (= (and b!2883176 (not c!468370)) b!2883172))

(assert (= (and b!2883178 res!1194608) b!2883179))

(assert (= (and b!2883172 c!468371) b!2883174))

(assert (= (and b!2883172 (not c!468371)) b!2883175))

(assert (= (and b!2883174 res!1194609) b!2883177))

(assert (= (and b!2883175 (not res!1194606)) b!2883171))

(assert (= (and b!2883171 res!1194610) b!2883173))

(assert (= (or b!2883177 b!2883173) bm!186895))

(assert (= (or b!2883174 b!2883171) bm!186893))

(assert (= (or b!2883179 bm!186895) bm!186894))

(declare-fun m!3299907 () Bool)

(assert (=> bm!186893 m!3299907))

(declare-fun m!3299909 () Bool)

(assert (=> b!2883178 m!3299909))

(declare-fun m!3299911 () Bool)

(assert (=> bm!186894 m!3299911))

(assert (=> b!2882908 d!833697))

(declare-fun d!833705 () Bool)

(assert (=> d!833705 (matchR!3773 (regOne!18094 r!23079) (get!10401 (getLanguageWitness!498 (regOne!18094 r!23079))))))

(declare-fun lt!1020225 () Unit!48051)

(assert (=> d!833705 (= lt!1020225 (choose!17048 (regOne!18094 r!23079)))))

(assert (=> d!833705 (validRegex!3564 (regOne!18094 r!23079))))

(assert (=> d!833705 (= (lemmaGetWitnessMatches!80 (regOne!18094 r!23079)) lt!1020225)))

(declare-fun bs!523775 () Bool)

(assert (= bs!523775 d!833705))

(assert (=> bs!523775 m!3299813))

(assert (=> bs!523775 m!3299813))

(declare-fun m!3299913 () Bool)

(assert (=> bs!523775 m!3299913))

(declare-fun m!3299915 () Bool)

(assert (=> bs!523775 m!3299915))

(assert (=> bs!523775 m!3299801))

(assert (=> bs!523775 m!3299913))

(declare-fun m!3299917 () Bool)

(assert (=> bs!523775 m!3299917))

(assert (=> b!2882908 d!833705))

(declare-fun d!833707 () Bool)

(assert (=> d!833707 (= (get!10401 lt!1020184) (v!34589 lt!1020184))))

(assert (=> b!2882908 d!833707))

(declare-fun b!2883198 () Bool)

(declare-fun e!1823687 () Bool)

(declare-fun e!1823684 () Bool)

(assert (=> b!2883198 (= e!1823687 e!1823684)))

(declare-fun res!1194625 () Bool)

(assert (=> b!2883198 (=> (not res!1194625) (not e!1823684))))

(declare-fun call!186902 () Bool)

(assert (=> b!2883198 (= res!1194625 call!186902)))

(declare-fun b!2883199 () Bool)

(declare-fun e!1823689 () Bool)

(declare-fun e!1823686 () Bool)

(assert (=> b!2883199 (= e!1823689 e!1823686)))

(declare-fun c!468377 () Bool)

(assert (=> b!2883199 (= c!468377 ((_ is Union!8791) r!23079))))

(declare-fun bm!186896 () Bool)

(assert (=> bm!186896 (= call!186902 (validRegex!3564 (ite c!468377 (regOne!18095 r!23079) (regOne!18094 r!23079))))))

(declare-fun b!2883200 () Bool)

(declare-fun call!186901 () Bool)

(assert (=> b!2883200 (= e!1823684 call!186901)))

(declare-fun b!2883201 () Bool)

(declare-fun res!1194624 () Bool)

(declare-fun e!1823685 () Bool)

(assert (=> b!2883201 (=> (not res!1194624) (not e!1823685))))

(assert (=> b!2883201 (= res!1194624 call!186902)))

(assert (=> b!2883201 (= e!1823686 e!1823685)))

(declare-fun d!833709 () Bool)

(declare-fun res!1194622 () Bool)

(declare-fun e!1823690 () Bool)

(assert (=> d!833709 (=> res!1194622 e!1823690)))

(assert (=> d!833709 (= res!1194622 ((_ is ElementMatch!8791) r!23079))))

(assert (=> d!833709 (= (validRegex!3564 r!23079) e!1823690)))

(declare-fun b!2883202 () Bool)

(declare-fun res!1194621 () Bool)

(assert (=> b!2883202 (=> res!1194621 e!1823687)))

(assert (=> b!2883202 (= res!1194621 (not ((_ is Concat!14112) r!23079)))))

(assert (=> b!2883202 (= e!1823686 e!1823687)))

(declare-fun b!2883203 () Bool)

(assert (=> b!2883203 (= e!1823690 e!1823689)))

(declare-fun c!468376 () Bool)

(assert (=> b!2883203 (= c!468376 ((_ is Star!8791) r!23079))))

(declare-fun b!2883204 () Bool)

(assert (=> b!2883204 (= e!1823685 call!186901)))

(declare-fun b!2883205 () Bool)

(declare-fun e!1823688 () Bool)

(assert (=> b!2883205 (= e!1823689 e!1823688)))

(declare-fun res!1194623 () Bool)

(assert (=> b!2883205 (= res!1194623 (not (nullable!2702 (reg!9120 r!23079))))))

(assert (=> b!2883205 (=> (not res!1194623) (not e!1823688))))

(declare-fun bm!186897 () Bool)

(declare-fun call!186903 () Bool)

(assert (=> bm!186897 (= call!186903 (validRegex!3564 (ite c!468376 (reg!9120 r!23079) (ite c!468377 (regTwo!18095 r!23079) (regTwo!18094 r!23079)))))))

(declare-fun bm!186898 () Bool)

(assert (=> bm!186898 (= call!186901 call!186903)))

(declare-fun b!2883206 () Bool)

(assert (=> b!2883206 (= e!1823688 call!186903)))

(assert (= (and d!833709 (not res!1194622)) b!2883203))

(assert (= (and b!2883203 c!468376) b!2883205))

(assert (= (and b!2883203 (not c!468376)) b!2883199))

(assert (= (and b!2883205 res!1194623) b!2883206))

(assert (= (and b!2883199 c!468377) b!2883201))

(assert (= (and b!2883199 (not c!468377)) b!2883202))

(assert (= (and b!2883201 res!1194624) b!2883204))

(assert (= (and b!2883202 (not res!1194621)) b!2883198))

(assert (= (and b!2883198 res!1194625) b!2883200))

(assert (= (or b!2883204 b!2883200) bm!186898))

(assert (= (or b!2883201 b!2883198) bm!186896))

(assert (= (or b!2883206 bm!186898) bm!186897))

(declare-fun m!3299919 () Bool)

(assert (=> bm!186896 m!3299919))

(declare-fun m!3299921 () Bool)

(assert (=> b!2883205 m!3299921))

(declare-fun m!3299923 () Bool)

(assert (=> bm!186897 m!3299923))

(assert (=> start!281466 d!833709))

(declare-fun e!1823693 () Bool)

(assert (=> b!2882904 (= tp!924749 e!1823693)))

(declare-fun b!2883218 () Bool)

(declare-fun tp!924764 () Bool)

(declare-fun tp!924762 () Bool)

(assert (=> b!2883218 (= e!1823693 (and tp!924764 tp!924762))))

(declare-fun b!2883217 () Bool)

(assert (=> b!2883217 (= e!1823693 tp_is_empty!15169)))

(declare-fun b!2883219 () Bool)

(declare-fun tp!924763 () Bool)

(assert (=> b!2883219 (= e!1823693 tp!924763)))

(declare-fun b!2883220 () Bool)

(declare-fun tp!924761 () Bool)

(declare-fun tp!924760 () Bool)

(assert (=> b!2883220 (= e!1823693 (and tp!924761 tp!924760))))

(assert (= (and b!2882904 ((_ is ElementMatch!8791) (regOne!18095 r!23079))) b!2883217))

(assert (= (and b!2882904 ((_ is Concat!14112) (regOne!18095 r!23079))) b!2883218))

(assert (= (and b!2882904 ((_ is Star!8791) (regOne!18095 r!23079))) b!2883219))

(assert (= (and b!2882904 ((_ is Union!8791) (regOne!18095 r!23079))) b!2883220))

(declare-fun e!1823694 () Bool)

(assert (=> b!2882904 (= tp!924748 e!1823694)))

(declare-fun b!2883222 () Bool)

(declare-fun tp!924769 () Bool)

(declare-fun tp!924767 () Bool)

(assert (=> b!2883222 (= e!1823694 (and tp!924769 tp!924767))))

(declare-fun b!2883221 () Bool)

(assert (=> b!2883221 (= e!1823694 tp_is_empty!15169)))

(declare-fun b!2883223 () Bool)

(declare-fun tp!924768 () Bool)

(assert (=> b!2883223 (= e!1823694 tp!924768)))

(declare-fun b!2883224 () Bool)

(declare-fun tp!924766 () Bool)

(declare-fun tp!924765 () Bool)

(assert (=> b!2883224 (= e!1823694 (and tp!924766 tp!924765))))

(assert (= (and b!2882904 ((_ is ElementMatch!8791) (regTwo!18095 r!23079))) b!2883221))

(assert (= (and b!2882904 ((_ is Concat!14112) (regTwo!18095 r!23079))) b!2883222))

(assert (= (and b!2882904 ((_ is Star!8791) (regTwo!18095 r!23079))) b!2883223))

(assert (= (and b!2882904 ((_ is Union!8791) (regTwo!18095 r!23079))) b!2883224))

(declare-fun e!1823695 () Bool)

(assert (=> b!2882909 (= tp!924747 e!1823695)))

(declare-fun b!2883226 () Bool)

(declare-fun tp!924774 () Bool)

(declare-fun tp!924772 () Bool)

(assert (=> b!2883226 (= e!1823695 (and tp!924774 tp!924772))))

(declare-fun b!2883225 () Bool)

(assert (=> b!2883225 (= e!1823695 tp_is_empty!15169)))

(declare-fun b!2883227 () Bool)

(declare-fun tp!924773 () Bool)

(assert (=> b!2883227 (= e!1823695 tp!924773)))

(declare-fun b!2883228 () Bool)

(declare-fun tp!924771 () Bool)

(declare-fun tp!924770 () Bool)

(assert (=> b!2883228 (= e!1823695 (and tp!924771 tp!924770))))

(assert (= (and b!2882909 ((_ is ElementMatch!8791) (reg!9120 r!23079))) b!2883225))

(assert (= (and b!2882909 ((_ is Concat!14112) (reg!9120 r!23079))) b!2883226))

(assert (= (and b!2882909 ((_ is Star!8791) (reg!9120 r!23079))) b!2883227))

(assert (= (and b!2882909 ((_ is Union!8791) (reg!9120 r!23079))) b!2883228))

(declare-fun e!1823696 () Bool)

(assert (=> b!2882906 (= tp!924746 e!1823696)))

(declare-fun b!2883230 () Bool)

(declare-fun tp!924779 () Bool)

(declare-fun tp!924777 () Bool)

(assert (=> b!2883230 (= e!1823696 (and tp!924779 tp!924777))))

(declare-fun b!2883229 () Bool)

(assert (=> b!2883229 (= e!1823696 tp_is_empty!15169)))

(declare-fun b!2883231 () Bool)

(declare-fun tp!924778 () Bool)

(assert (=> b!2883231 (= e!1823696 tp!924778)))

(declare-fun b!2883232 () Bool)

(declare-fun tp!924776 () Bool)

(declare-fun tp!924775 () Bool)

(assert (=> b!2883232 (= e!1823696 (and tp!924776 tp!924775))))

(assert (= (and b!2882906 ((_ is ElementMatch!8791) (regOne!18094 r!23079))) b!2883229))

(assert (= (and b!2882906 ((_ is Concat!14112) (regOne!18094 r!23079))) b!2883230))

(assert (= (and b!2882906 ((_ is Star!8791) (regOne!18094 r!23079))) b!2883231))

(assert (= (and b!2882906 ((_ is Union!8791) (regOne!18094 r!23079))) b!2883232))

(declare-fun e!1823697 () Bool)

(assert (=> b!2882906 (= tp!924745 e!1823697)))

(declare-fun b!2883234 () Bool)

(declare-fun tp!924784 () Bool)

(declare-fun tp!924782 () Bool)

(assert (=> b!2883234 (= e!1823697 (and tp!924784 tp!924782))))

(declare-fun b!2883233 () Bool)

(assert (=> b!2883233 (= e!1823697 tp_is_empty!15169)))

(declare-fun b!2883235 () Bool)

(declare-fun tp!924783 () Bool)

(assert (=> b!2883235 (= e!1823697 tp!924783)))

(declare-fun b!2883236 () Bool)

(declare-fun tp!924781 () Bool)

(declare-fun tp!924780 () Bool)

(assert (=> b!2883236 (= e!1823697 (and tp!924781 tp!924780))))

(assert (= (and b!2882906 ((_ is ElementMatch!8791) (regTwo!18094 r!23079))) b!2883233))

(assert (= (and b!2882906 ((_ is Concat!14112) (regTwo!18094 r!23079))) b!2883234))

(assert (= (and b!2882906 ((_ is Star!8791) (regTwo!18094 r!23079))) b!2883235))

(assert (= (and b!2882906 ((_ is Union!8791) (regTwo!18094 r!23079))) b!2883236))

(check-sat (not b!2883178) (not bm!186875) (not b!2883228) (not bm!186869) (not d!833679) (not bm!186896) (not b!2883096) (not b!2883223) tp_is_empty!15169 (not bm!186893) (not b!2883222) (not bm!186883) (not b!2883232) (not b!2883220) (not bm!186897) (not bm!186868) (not bm!186874) (not b!2882968) (not b!2882944) (not b!2883224) (not b!2883129) (not b!2883230) (not b!2883087) (not b!2883091) (not bm!186882) (not b!2883083) (not b!2883093) (not b!2883125) (not bm!186866) (not d!833705) (not b!2883219) (not b!2883227) (not b!2883236) (not b!2883135) (not d!833695) (not b!2883133) (not b!2883086) (not b!2883218) (not b!2883226) (not b!2883128) (not b!2883231) (not bm!186894) (not b!2883138) (not b!2883235) (not bm!186867) (not b!2883008) (not d!833685) (not b!2883205) (not d!833687) (not b!2883234))
(check-sat)
