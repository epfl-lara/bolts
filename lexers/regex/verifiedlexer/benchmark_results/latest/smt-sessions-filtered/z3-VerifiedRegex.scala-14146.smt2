; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742986 () Bool)

(assert start!742986)

(declare-fun b!7846076 () Bool)

(declare-fun e!4638537 () Bool)

(declare-fun e!4638539 () Bool)

(assert (=> b!7846076 (= e!4638537 (not e!4638539))))

(declare-fun res!3120325 () Bool)

(assert (=> b!7846076 (=> res!3120325 e!4638539)))

(declare-datatypes ((C!42456 0))(
  ( (C!42457 (val!31690 Int)) )
))
(declare-datatypes ((Regex!21065 0))(
  ( (ElementMatch!21065 (c!1442159 C!42456)) (Concat!29910 (regOne!42642 Regex!21065) (regTwo!42642 Regex!21065)) (EmptyExpr!21065) (Star!21065 (reg!21394 Regex!21065)) (EmptyLang!21065) (Union!21065 (regOne!42643 Regex!21065) (regTwo!42643 Regex!21065)) )
))
(declare-fun r1!6227 () Regex!21065)

(declare-fun nullable!9339 (Regex!21065) Bool)

(assert (=> b!7846076 (= res!3120325 (not (nullable!9339 r1!6227)))))

(declare-fun lt!2679189 () Regex!21065)

(declare-datatypes ((List!73924 0))(
  ( (Nil!73800) (Cons!73800 (h!80248 C!42456) (t!388659 List!73924)) )
))
(declare-fun lt!2679193 () List!73924)

(declare-fun matchR!10501 (Regex!21065 List!73924) Bool)

(assert (=> b!7846076 (matchR!10501 lt!2679189 lt!2679193)))

(declare-fun s1!4084 () List!73924)

(declare-fun s2!3706 () List!73924)

(declare-fun ++!18075 (List!73924 List!73924) List!73924)

(assert (=> b!7846076 (= lt!2679193 (++!18075 (t!388659 s1!4084) s2!3706))))

(declare-fun lt!2679195 () Regex!21065)

(declare-fun r2!6165 () Regex!21065)

(assert (=> b!7846076 (= lt!2679189 (Concat!29910 lt!2679195 r2!6165))))

(declare-datatypes ((Unit!168876 0))(
  ( (Unit!168877) )
))
(declare-fun lt!2679192 () Unit!168876)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!436 (Regex!21065 Regex!21065 List!73924 List!73924) Unit!168876)

(assert (=> b!7846076 (= lt!2679192 (lemmaTwoRegexMatchThenConcatMatchesConcatString!436 lt!2679195 r2!6165 (t!388659 s1!4084) s2!3706))))

(declare-fun derivativeStep!6302 (Regex!21065 C!42456) Regex!21065)

(assert (=> b!7846076 (= lt!2679195 (derivativeStep!6302 r1!6227 (h!80248 s1!4084)))))

(declare-fun b!7846077 () Bool)

(declare-fun e!4638536 () Bool)

(declare-fun tp!2323141 () Bool)

(declare-fun tp!2323137 () Bool)

(assert (=> b!7846077 (= e!4638536 (and tp!2323141 tp!2323137))))

(declare-fun b!7846078 () Bool)

(declare-fun tp!2323140 () Bool)

(assert (=> b!7846078 (= e!4638536 tp!2323140)))

(declare-fun b!7846080 () Bool)

(declare-fun e!4638538 () Bool)

(declare-fun tp!2323148 () Bool)

(declare-fun tp!2323142 () Bool)

(assert (=> b!7846080 (= e!4638538 (and tp!2323148 tp!2323142))))

(declare-fun b!7846081 () Bool)

(declare-fun res!3120321 () Bool)

(declare-fun e!4638535 () Bool)

(assert (=> b!7846081 (=> res!3120321 e!4638535)))

(declare-fun validRegex!11475 (Regex!21065) Bool)

(assert (=> b!7846081 (= res!3120321 (not (validRegex!11475 lt!2679189)))))

(declare-fun b!7846082 () Bool)

(declare-fun lt!2679191 () Regex!21065)

(assert (=> b!7846082 (= e!4638535 (validRegex!11475 lt!2679191))))

(declare-fun lt!2679190 () List!73924)

(assert (=> b!7846082 (= lt!2679190 (++!18075 s1!4084 s2!3706))))

(declare-fun lt!2679194 () Regex!21065)

(assert (=> b!7846082 (matchR!10501 lt!2679194 lt!2679193)))

(declare-fun lt!2679196 () Unit!168876)

(declare-fun lt!2679197 () Regex!21065)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!120 (Regex!21065 Regex!21065 List!73924) Unit!168876)

(assert (=> b!7846082 (= lt!2679196 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!120 lt!2679189 lt!2679197 lt!2679193))))

(declare-fun b!7846083 () Bool)

(declare-fun tp_is_empty!52529 () Bool)

(assert (=> b!7846083 (= e!4638536 tp_is_empty!52529)))

(declare-fun b!7846084 () Bool)

(declare-fun res!3120320 () Bool)

(assert (=> b!7846084 (=> (not res!3120320) (not e!4638537))))

(get-info :version)

(assert (=> b!7846084 (= res!3120320 ((_ is Cons!73800) s1!4084))))

(declare-fun b!7846085 () Bool)

(assert (=> b!7846085 (= e!4638538 tp_is_empty!52529)))

(declare-fun b!7846079 () Bool)

(declare-fun res!3120322 () Bool)

(assert (=> b!7846079 (=> (not res!3120322) (not e!4638537))))

(assert (=> b!7846079 (= res!3120322 (matchR!10501 r2!6165 s2!3706))))

(declare-fun res!3120327 () Bool)

(assert (=> start!742986 (=> (not res!3120327) (not e!4638537))))

(assert (=> start!742986 (= res!3120327 (validRegex!11475 r1!6227))))

(assert (=> start!742986 e!4638537))

(assert (=> start!742986 e!4638538))

(assert (=> start!742986 e!4638536))

(declare-fun e!4638534 () Bool)

(assert (=> start!742986 e!4638534))

(declare-fun e!4638533 () Bool)

(assert (=> start!742986 e!4638533))

(declare-fun b!7846086 () Bool)

(assert (=> b!7846086 (= e!4638539 e!4638535)))

(declare-fun res!3120323 () Bool)

(assert (=> b!7846086 (=> res!3120323 e!4638535)))

(assert (=> b!7846086 (= res!3120323 (not (= (derivativeStep!6302 lt!2679191 (h!80248 s1!4084)) lt!2679194)))))

(assert (=> b!7846086 (= lt!2679194 (Union!21065 lt!2679189 lt!2679197))))

(assert (=> b!7846086 (= lt!2679197 (derivativeStep!6302 r2!6165 (h!80248 s1!4084)))))

(assert (=> b!7846086 (= lt!2679191 (Concat!29910 r1!6227 r2!6165))))

(declare-fun b!7846087 () Bool)

(declare-fun tp!2323147 () Bool)

(assert (=> b!7846087 (= e!4638538 tp!2323147)))

(declare-fun b!7846088 () Bool)

(declare-fun res!3120328 () Bool)

(assert (=> b!7846088 (=> (not res!3120328) (not e!4638537))))

(assert (=> b!7846088 (= res!3120328 (matchR!10501 r1!6227 s1!4084))))

(declare-fun b!7846089 () Bool)

(declare-fun tp!2323145 () Bool)

(assert (=> b!7846089 (= e!4638533 (and tp_is_empty!52529 tp!2323145))))

(declare-fun b!7846090 () Bool)

(declare-fun tp!2323146 () Bool)

(assert (=> b!7846090 (= e!4638534 (and tp_is_empty!52529 tp!2323146))))

(declare-fun b!7846091 () Bool)

(declare-fun tp!2323139 () Bool)

(declare-fun tp!2323138 () Bool)

(assert (=> b!7846091 (= e!4638538 (and tp!2323139 tp!2323138))))

(declare-fun b!7846092 () Bool)

(declare-fun tp!2323143 () Bool)

(declare-fun tp!2323144 () Bool)

(assert (=> b!7846092 (= e!4638536 (and tp!2323143 tp!2323144))))

(declare-fun b!7846093 () Bool)

(declare-fun res!3120326 () Bool)

(assert (=> b!7846093 (=> res!3120326 e!4638535)))

(assert (=> b!7846093 (= res!3120326 (not (validRegex!11475 lt!2679197)))))

(declare-fun b!7846094 () Bool)

(declare-fun res!3120324 () Bool)

(assert (=> b!7846094 (=> (not res!3120324) (not e!4638537))))

(assert (=> b!7846094 (= res!3120324 (validRegex!11475 r2!6165))))

(assert (= (and start!742986 res!3120327) b!7846094))

(assert (= (and b!7846094 res!3120324) b!7846088))

(assert (= (and b!7846088 res!3120328) b!7846079))

(assert (= (and b!7846079 res!3120322) b!7846084))

(assert (= (and b!7846084 res!3120320) b!7846076))

(assert (= (and b!7846076 (not res!3120325)) b!7846086))

(assert (= (and b!7846086 (not res!3120323)) b!7846081))

(assert (= (and b!7846081 (not res!3120321)) b!7846093))

(assert (= (and b!7846093 (not res!3120326)) b!7846082))

(assert (= (and start!742986 ((_ is ElementMatch!21065) r1!6227)) b!7846085))

(assert (= (and start!742986 ((_ is Concat!29910) r1!6227)) b!7846091))

(assert (= (and start!742986 ((_ is Star!21065) r1!6227)) b!7846087))

(assert (= (and start!742986 ((_ is Union!21065) r1!6227)) b!7846080))

(assert (= (and start!742986 ((_ is ElementMatch!21065) r2!6165)) b!7846083))

(assert (= (and start!742986 ((_ is Concat!29910) r2!6165)) b!7846077))

(assert (= (and start!742986 ((_ is Star!21065) r2!6165)) b!7846078))

(assert (= (and start!742986 ((_ is Union!21065) r2!6165)) b!7846092))

(assert (= (and start!742986 ((_ is Cons!73800) s1!4084)) b!7846090))

(assert (= (and start!742986 ((_ is Cons!73800) s2!3706)) b!7846089))

(declare-fun m!8255962 () Bool)

(assert (=> b!7846079 m!8255962))

(declare-fun m!8255964 () Bool)

(assert (=> b!7846081 m!8255964))

(declare-fun m!8255966 () Bool)

(assert (=> b!7846088 m!8255966))

(declare-fun m!8255968 () Bool)

(assert (=> start!742986 m!8255968))

(declare-fun m!8255970 () Bool)

(assert (=> b!7846094 m!8255970))

(declare-fun m!8255972 () Bool)

(assert (=> b!7846093 m!8255972))

(declare-fun m!8255974 () Bool)

(assert (=> b!7846076 m!8255974))

(declare-fun m!8255976 () Bool)

(assert (=> b!7846076 m!8255976))

(declare-fun m!8255978 () Bool)

(assert (=> b!7846076 m!8255978))

(declare-fun m!8255980 () Bool)

(assert (=> b!7846076 m!8255980))

(declare-fun m!8255982 () Bool)

(assert (=> b!7846076 m!8255982))

(declare-fun m!8255984 () Bool)

(assert (=> b!7846086 m!8255984))

(declare-fun m!8255986 () Bool)

(assert (=> b!7846086 m!8255986))

(declare-fun m!8255988 () Bool)

(assert (=> b!7846082 m!8255988))

(declare-fun m!8255990 () Bool)

(assert (=> b!7846082 m!8255990))

(declare-fun m!8255992 () Bool)

(assert (=> b!7846082 m!8255992))

(declare-fun m!8255994 () Bool)

(assert (=> b!7846082 m!8255994))

(check-sat (not b!7846082) (not b!7846093) (not b!7846091) (not b!7846092) (not b!7846076) (not b!7846087) (not b!7846090) (not b!7846088) (not b!7846089) (not b!7846086) (not start!742986) (not b!7846079) (not b!7846094) (not b!7846077) (not b!7846080) (not b!7846078) (not b!7846081) tp_is_empty!52529)
(check-sat)
(get-model)

(declare-fun d!2352787 () Bool)

(declare-fun res!3120341 () Bool)

(declare-fun e!4638554 () Bool)

(assert (=> d!2352787 (=> res!3120341 e!4638554)))

(assert (=> d!2352787 (= res!3120341 ((_ is ElementMatch!21065) lt!2679189))))

(assert (=> d!2352787 (= (validRegex!11475 lt!2679189) e!4638554)))

(declare-fun b!7846113 () Bool)

(declare-fun e!4638558 () Bool)

(declare-fun call!727019 () Bool)

(assert (=> b!7846113 (= e!4638558 call!727019)))

(declare-fun bm!727014 () Bool)

(declare-fun call!727021 () Bool)

(assert (=> bm!727014 (= call!727019 call!727021)))

(declare-fun b!7846114 () Bool)

(declare-fun e!4638559 () Bool)

(assert (=> b!7846114 (= e!4638554 e!4638559)))

(declare-fun c!1442164 () Bool)

(assert (=> b!7846114 (= c!1442164 ((_ is Star!21065) lt!2679189))))

(declare-fun b!7846115 () Bool)

(declare-fun res!3120343 () Bool)

(declare-fun e!4638557 () Bool)

(assert (=> b!7846115 (=> res!3120343 e!4638557)))

(assert (=> b!7846115 (= res!3120343 (not ((_ is Concat!29910) lt!2679189)))))

(declare-fun e!4638555 () Bool)

(assert (=> b!7846115 (= e!4638555 e!4638557)))

(declare-fun bm!727015 () Bool)

(declare-fun call!727020 () Bool)

(declare-fun c!1442165 () Bool)

(assert (=> bm!727015 (= call!727020 (validRegex!11475 (ite c!1442165 (regOne!42643 lt!2679189) (regTwo!42642 lt!2679189))))))

(declare-fun b!7846116 () Bool)

(declare-fun e!4638560 () Bool)

(assert (=> b!7846116 (= e!4638559 e!4638560)))

(declare-fun res!3120342 () Bool)

(assert (=> b!7846116 (= res!3120342 (not (nullable!9339 (reg!21394 lt!2679189))))))

(assert (=> b!7846116 (=> (not res!3120342) (not e!4638560))))

(declare-fun b!7846117 () Bool)

(declare-fun e!4638556 () Bool)

(assert (=> b!7846117 (= e!4638557 e!4638556)))

(declare-fun res!3120339 () Bool)

(assert (=> b!7846117 (=> (not res!3120339) (not e!4638556))))

(assert (=> b!7846117 (= res!3120339 call!727019)))

(declare-fun b!7846118 () Bool)

(declare-fun res!3120340 () Bool)

(assert (=> b!7846118 (=> (not res!3120340) (not e!4638558))))

(assert (=> b!7846118 (= res!3120340 call!727020)))

(assert (=> b!7846118 (= e!4638555 e!4638558)))

(declare-fun bm!727016 () Bool)

(assert (=> bm!727016 (= call!727021 (validRegex!11475 (ite c!1442164 (reg!21394 lt!2679189) (ite c!1442165 (regTwo!42643 lt!2679189) (regOne!42642 lt!2679189)))))))

(declare-fun b!7846119 () Bool)

(assert (=> b!7846119 (= e!4638559 e!4638555)))

(assert (=> b!7846119 (= c!1442165 ((_ is Union!21065) lt!2679189))))

(declare-fun b!7846120 () Bool)

(assert (=> b!7846120 (= e!4638560 call!727021)))

(declare-fun b!7846121 () Bool)

(assert (=> b!7846121 (= e!4638556 call!727020)))

(assert (= (and d!2352787 (not res!3120341)) b!7846114))

(assert (= (and b!7846114 c!1442164) b!7846116))

(assert (= (and b!7846114 (not c!1442164)) b!7846119))

(assert (= (and b!7846116 res!3120342) b!7846120))

(assert (= (and b!7846119 c!1442165) b!7846118))

(assert (= (and b!7846119 (not c!1442165)) b!7846115))

(assert (= (and b!7846118 res!3120340) b!7846113))

(assert (= (and b!7846115 (not res!3120343)) b!7846117))

(assert (= (and b!7846117 res!3120339) b!7846121))

(assert (= (or b!7846118 b!7846121) bm!727015))

(assert (= (or b!7846113 b!7846117) bm!727014))

(assert (= (or b!7846120 bm!727014) bm!727016))

(declare-fun m!8255996 () Bool)

(assert (=> bm!727015 m!8255996))

(declare-fun m!8255998 () Bool)

(assert (=> b!7846116 m!8255998))

(declare-fun m!8256000 () Bool)

(assert (=> bm!727016 m!8256000))

(assert (=> b!7846081 d!2352787))

(declare-fun call!727049 () Regex!21065)

(declare-fun c!1442198 () Bool)

(declare-fun bm!727041 () Bool)

(assert (=> bm!727041 (= call!727049 (derivativeStep!6302 (ite c!1442198 (regTwo!42643 lt!2679191) (regOne!42642 lt!2679191)) (h!80248 s1!4084)))))

(declare-fun b!7846182 () Bool)

(declare-fun e!4638595 () Regex!21065)

(declare-fun call!727048 () Regex!21065)

(assert (=> b!7846182 (= e!4638595 (Union!21065 (Concat!29910 call!727048 (regTwo!42642 lt!2679191)) EmptyLang!21065))))

(declare-fun b!7846183 () Bool)

(declare-fun e!4638594 () Regex!21065)

(assert (=> b!7846183 (= e!4638594 EmptyLang!21065)))

(declare-fun b!7846184 () Bool)

(declare-fun c!1442196 () Bool)

(assert (=> b!7846184 (= c!1442196 (nullable!9339 (regOne!42642 lt!2679191)))))

(declare-fun e!4638593 () Regex!21065)

(assert (=> b!7846184 (= e!4638593 e!4638595)))

(declare-fun b!7846185 () Bool)

(declare-fun call!727046 () Regex!21065)

(assert (=> b!7846185 (= e!4638593 (Concat!29910 call!727046 lt!2679191))))

(declare-fun b!7846186 () Bool)

(declare-fun e!4638592 () Regex!21065)

(declare-fun call!727047 () Regex!21065)

(assert (=> b!7846186 (= e!4638592 (Union!21065 call!727047 call!727049))))

(declare-fun b!7846187 () Bool)

(assert (=> b!7846187 (= c!1442198 ((_ is Union!21065) lt!2679191))))

(declare-fun e!4638591 () Regex!21065)

(assert (=> b!7846187 (= e!4638591 e!4638592)))

(declare-fun d!2352791 () Bool)

(declare-fun lt!2679204 () Regex!21065)

(assert (=> d!2352791 (validRegex!11475 lt!2679204)))

(assert (=> d!2352791 (= lt!2679204 e!4638594)))

(declare-fun c!1442197 () Bool)

(assert (=> d!2352791 (= c!1442197 (or ((_ is EmptyExpr!21065) lt!2679191) ((_ is EmptyLang!21065) lt!2679191)))))

(assert (=> d!2352791 (validRegex!11475 lt!2679191)))

(assert (=> d!2352791 (= (derivativeStep!6302 lt!2679191 (h!80248 s1!4084)) lt!2679204)))

(declare-fun b!7846188 () Bool)

(assert (=> b!7846188 (= e!4638595 (Union!21065 (Concat!29910 call!727049 (regTwo!42642 lt!2679191)) call!727048))))

(declare-fun bm!727042 () Bool)

(assert (=> bm!727042 (= call!727048 call!727046)))

(declare-fun b!7846189 () Bool)

(assert (=> b!7846189 (= e!4638592 e!4638593)))

(declare-fun c!1442200 () Bool)

(assert (=> b!7846189 (= c!1442200 ((_ is Star!21065) lt!2679191))))

(declare-fun bm!727043 () Bool)

(assert (=> bm!727043 (= call!727047 (derivativeStep!6302 (ite c!1442198 (regOne!42643 lt!2679191) (ite c!1442200 (reg!21394 lt!2679191) (ite c!1442196 (regTwo!42642 lt!2679191) (regOne!42642 lt!2679191)))) (h!80248 s1!4084)))))

(declare-fun bm!727044 () Bool)

(assert (=> bm!727044 (= call!727046 call!727047)))

(declare-fun b!7846190 () Bool)

(assert (=> b!7846190 (= e!4638594 e!4638591)))

(declare-fun c!1442199 () Bool)

(assert (=> b!7846190 (= c!1442199 ((_ is ElementMatch!21065) lt!2679191))))

(declare-fun b!7846191 () Bool)

(assert (=> b!7846191 (= e!4638591 (ite (= (h!80248 s1!4084) (c!1442159 lt!2679191)) EmptyExpr!21065 EmptyLang!21065))))

(assert (= (and d!2352791 c!1442197) b!7846183))

(assert (= (and d!2352791 (not c!1442197)) b!7846190))

(assert (= (and b!7846190 c!1442199) b!7846191))

(assert (= (and b!7846190 (not c!1442199)) b!7846187))

(assert (= (and b!7846187 c!1442198) b!7846186))

(assert (= (and b!7846187 (not c!1442198)) b!7846189))

(assert (= (and b!7846189 c!1442200) b!7846185))

(assert (= (and b!7846189 (not c!1442200)) b!7846184))

(assert (= (and b!7846184 c!1442196) b!7846188))

(assert (= (and b!7846184 (not c!1442196)) b!7846182))

(assert (= (or b!7846188 b!7846182) bm!727042))

(assert (= (or b!7846185 bm!727042) bm!727044))

(assert (= (or b!7846186 b!7846188) bm!727041))

(assert (= (or b!7846186 bm!727044) bm!727043))

(declare-fun m!8256018 () Bool)

(assert (=> bm!727041 m!8256018))

(declare-fun m!8256020 () Bool)

(assert (=> b!7846184 m!8256020))

(declare-fun m!8256022 () Bool)

(assert (=> d!2352791 m!8256022))

(assert (=> d!2352791 m!8255988))

(declare-fun m!8256024 () Bool)

(assert (=> bm!727043 m!8256024))

(assert (=> b!7846086 d!2352791))

(declare-fun call!727053 () Regex!21065)

(declare-fun c!1442207 () Bool)

(declare-fun bm!727045 () Bool)

(assert (=> bm!727045 (= call!727053 (derivativeStep!6302 (ite c!1442207 (regTwo!42643 r2!6165) (regOne!42642 r2!6165)) (h!80248 s1!4084)))))

(declare-fun b!7846210 () Bool)

(declare-fun e!4638614 () Regex!21065)

(declare-fun call!727052 () Regex!21065)

(assert (=> b!7846210 (= e!4638614 (Union!21065 (Concat!29910 call!727052 (regTwo!42642 r2!6165)) EmptyLang!21065))))

(declare-fun b!7846211 () Bool)

(declare-fun e!4638613 () Regex!21065)

(assert (=> b!7846211 (= e!4638613 EmptyLang!21065)))

(declare-fun b!7846212 () Bool)

(declare-fun c!1442205 () Bool)

(assert (=> b!7846212 (= c!1442205 (nullable!9339 (regOne!42642 r2!6165)))))

(declare-fun e!4638612 () Regex!21065)

(assert (=> b!7846212 (= e!4638612 e!4638614)))

(declare-fun b!7846213 () Bool)

(declare-fun call!727050 () Regex!21065)

(assert (=> b!7846213 (= e!4638612 (Concat!29910 call!727050 r2!6165))))

(declare-fun b!7846214 () Bool)

(declare-fun e!4638611 () Regex!21065)

(declare-fun call!727051 () Regex!21065)

(assert (=> b!7846214 (= e!4638611 (Union!21065 call!727051 call!727053))))

(declare-fun b!7846215 () Bool)

(assert (=> b!7846215 (= c!1442207 ((_ is Union!21065) r2!6165))))

(declare-fun e!4638610 () Regex!21065)

(assert (=> b!7846215 (= e!4638610 e!4638611)))

(declare-fun d!2352797 () Bool)

(declare-fun lt!2679205 () Regex!21065)

(assert (=> d!2352797 (validRegex!11475 lt!2679205)))

(assert (=> d!2352797 (= lt!2679205 e!4638613)))

(declare-fun c!1442206 () Bool)

(assert (=> d!2352797 (= c!1442206 (or ((_ is EmptyExpr!21065) r2!6165) ((_ is EmptyLang!21065) r2!6165)))))

(assert (=> d!2352797 (validRegex!11475 r2!6165)))

(assert (=> d!2352797 (= (derivativeStep!6302 r2!6165 (h!80248 s1!4084)) lt!2679205)))

(declare-fun b!7846216 () Bool)

(assert (=> b!7846216 (= e!4638614 (Union!21065 (Concat!29910 call!727053 (regTwo!42642 r2!6165)) call!727052))))

(declare-fun bm!727046 () Bool)

(assert (=> bm!727046 (= call!727052 call!727050)))

(declare-fun b!7846217 () Bool)

(assert (=> b!7846217 (= e!4638611 e!4638612)))

(declare-fun c!1442209 () Bool)

(assert (=> b!7846217 (= c!1442209 ((_ is Star!21065) r2!6165))))

(declare-fun bm!727047 () Bool)

(assert (=> bm!727047 (= call!727051 (derivativeStep!6302 (ite c!1442207 (regOne!42643 r2!6165) (ite c!1442209 (reg!21394 r2!6165) (ite c!1442205 (regTwo!42642 r2!6165) (regOne!42642 r2!6165)))) (h!80248 s1!4084)))))

(declare-fun bm!727048 () Bool)

(assert (=> bm!727048 (= call!727050 call!727051)))

(declare-fun b!7846218 () Bool)

(assert (=> b!7846218 (= e!4638613 e!4638610)))

(declare-fun c!1442208 () Bool)

(assert (=> b!7846218 (= c!1442208 ((_ is ElementMatch!21065) r2!6165))))

(declare-fun b!7846219 () Bool)

(assert (=> b!7846219 (= e!4638610 (ite (= (h!80248 s1!4084) (c!1442159 r2!6165)) EmptyExpr!21065 EmptyLang!21065))))

(assert (= (and d!2352797 c!1442206) b!7846211))

(assert (= (and d!2352797 (not c!1442206)) b!7846218))

(assert (= (and b!7846218 c!1442208) b!7846219))

(assert (= (and b!7846218 (not c!1442208)) b!7846215))

(assert (= (and b!7846215 c!1442207) b!7846214))

(assert (= (and b!7846215 (not c!1442207)) b!7846217))

(assert (= (and b!7846217 c!1442209) b!7846213))

(assert (= (and b!7846217 (not c!1442209)) b!7846212))

(assert (= (and b!7846212 c!1442205) b!7846216))

(assert (= (and b!7846212 (not c!1442205)) b!7846210))

(assert (= (or b!7846216 b!7846210) bm!727046))

(assert (= (or b!7846213 bm!727046) bm!727048))

(assert (= (or b!7846214 b!7846216) bm!727045))

(assert (= (or b!7846214 bm!727048) bm!727047))

(declare-fun m!8256026 () Bool)

(assert (=> bm!727045 m!8256026))

(declare-fun m!8256028 () Bool)

(assert (=> b!7846212 m!8256028))

(declare-fun m!8256030 () Bool)

(assert (=> d!2352797 m!8256030))

(assert (=> d!2352797 m!8255970))

(declare-fun m!8256032 () Bool)

(assert (=> bm!727047 m!8256032))

(assert (=> b!7846086 d!2352797))

(declare-fun b!7846269 () Bool)

(declare-fun res!3120381 () Bool)

(declare-fun e!4638642 () Bool)

(assert (=> b!7846269 (=> (not res!3120381) (not e!4638642))))

(declare-fun isEmpty!42316 (List!73924) Bool)

(declare-fun tail!15570 (List!73924) List!73924)

(assert (=> b!7846269 (= res!3120381 (isEmpty!42316 (tail!15570 s2!3706)))))

(declare-fun b!7846270 () Bool)

(declare-fun res!3120385 () Bool)

(declare-fun e!4638644 () Bool)

(assert (=> b!7846270 (=> res!3120385 e!4638644)))

(assert (=> b!7846270 (= res!3120385 (not (isEmpty!42316 (tail!15570 s2!3706))))))

(declare-fun b!7846271 () Bool)

(declare-fun e!4638648 () Bool)

(assert (=> b!7846271 (= e!4638648 e!4638644)))

(declare-fun res!3120382 () Bool)

(assert (=> b!7846271 (=> res!3120382 e!4638644)))

(declare-fun call!727065 () Bool)

(assert (=> b!7846271 (= res!3120382 call!727065)))

(declare-fun b!7846272 () Bool)

(declare-fun e!4638645 () Bool)

(declare-fun e!4638646 () Bool)

(assert (=> b!7846272 (= e!4638645 e!4638646)))

(declare-fun c!1442222 () Bool)

(assert (=> b!7846272 (= c!1442222 ((_ is EmptyLang!21065) r2!6165))))

(declare-fun bm!727060 () Bool)

(assert (=> bm!727060 (= call!727065 (isEmpty!42316 s2!3706))))

(declare-fun b!7846273 () Bool)

(declare-fun e!4638647 () Bool)

(declare-fun head!16028 (List!73924) C!42456)

(assert (=> b!7846273 (= e!4638647 (matchR!10501 (derivativeStep!6302 r2!6165 (head!16028 s2!3706)) (tail!15570 s2!3706)))))

(declare-fun b!7846274 () Bool)

(assert (=> b!7846274 (= e!4638642 (= (head!16028 s2!3706) (c!1442159 r2!6165)))))

(declare-fun b!7846275 () Bool)

(declare-fun res!3120388 () Bool)

(assert (=> b!7846275 (=> (not res!3120388) (not e!4638642))))

(assert (=> b!7846275 (= res!3120388 (not call!727065))))

(declare-fun b!7846276 () Bool)

(declare-fun res!3120387 () Bool)

(declare-fun e!4638643 () Bool)

(assert (=> b!7846276 (=> res!3120387 e!4638643)))

(assert (=> b!7846276 (= res!3120387 (not ((_ is ElementMatch!21065) r2!6165)))))

(assert (=> b!7846276 (= e!4638646 e!4638643)))

(declare-fun b!7846277 () Bool)

(assert (=> b!7846277 (= e!4638644 (not (= (head!16028 s2!3706) (c!1442159 r2!6165))))))

(declare-fun b!7846278 () Bool)

(assert (=> b!7846278 (= e!4638643 e!4638648)))

(declare-fun res!3120384 () Bool)

(assert (=> b!7846278 (=> (not res!3120384) (not e!4638648))))

(declare-fun lt!2679211 () Bool)

(assert (=> b!7846278 (= res!3120384 (not lt!2679211))))

(declare-fun d!2352799 () Bool)

(assert (=> d!2352799 e!4638645))

(declare-fun c!1442221 () Bool)

(assert (=> d!2352799 (= c!1442221 ((_ is EmptyExpr!21065) r2!6165))))

(assert (=> d!2352799 (= lt!2679211 e!4638647)))

(declare-fun c!1442223 () Bool)

(assert (=> d!2352799 (= c!1442223 (isEmpty!42316 s2!3706))))

(assert (=> d!2352799 (validRegex!11475 r2!6165)))

(assert (=> d!2352799 (= (matchR!10501 r2!6165 s2!3706) lt!2679211)))

(declare-fun b!7846279 () Bool)

(declare-fun res!3120386 () Bool)

(assert (=> b!7846279 (=> res!3120386 e!4638643)))

(assert (=> b!7846279 (= res!3120386 e!4638642)))

(declare-fun res!3120383 () Bool)

(assert (=> b!7846279 (=> (not res!3120383) (not e!4638642))))

(assert (=> b!7846279 (= res!3120383 lt!2679211)))

(declare-fun b!7846280 () Bool)

(assert (=> b!7846280 (= e!4638647 (nullable!9339 r2!6165))))

(declare-fun b!7846281 () Bool)

(assert (=> b!7846281 (= e!4638646 (not lt!2679211))))

(declare-fun b!7846282 () Bool)

(assert (=> b!7846282 (= e!4638645 (= lt!2679211 call!727065))))

(assert (= (and d!2352799 c!1442223) b!7846280))

(assert (= (and d!2352799 (not c!1442223)) b!7846273))

(assert (= (and d!2352799 c!1442221) b!7846282))

(assert (= (and d!2352799 (not c!1442221)) b!7846272))

(assert (= (and b!7846272 c!1442222) b!7846281))

(assert (= (and b!7846272 (not c!1442222)) b!7846276))

(assert (= (and b!7846276 (not res!3120387)) b!7846279))

(assert (= (and b!7846279 res!3120383) b!7846275))

(assert (= (and b!7846275 res!3120388) b!7846269))

(assert (= (and b!7846269 res!3120381) b!7846274))

(assert (= (and b!7846279 (not res!3120386)) b!7846278))

(assert (= (and b!7846278 res!3120384) b!7846271))

(assert (= (and b!7846271 (not res!3120382)) b!7846270))

(assert (= (and b!7846270 (not res!3120385)) b!7846277))

(assert (= (or b!7846282 b!7846271 b!7846275) bm!727060))

(declare-fun m!8256052 () Bool)

(assert (=> b!7846274 m!8256052))

(declare-fun m!8256054 () Bool)

(assert (=> bm!727060 m!8256054))

(declare-fun m!8256056 () Bool)

(assert (=> b!7846270 m!8256056))

(assert (=> b!7846270 m!8256056))

(declare-fun m!8256058 () Bool)

(assert (=> b!7846270 m!8256058))

(assert (=> b!7846269 m!8256056))

(assert (=> b!7846269 m!8256056))

(assert (=> b!7846269 m!8256058))

(assert (=> b!7846273 m!8256052))

(assert (=> b!7846273 m!8256052))

(declare-fun m!8256060 () Bool)

(assert (=> b!7846273 m!8256060))

(assert (=> b!7846273 m!8256056))

(assert (=> b!7846273 m!8256060))

(assert (=> b!7846273 m!8256056))

(declare-fun m!8256062 () Bool)

(assert (=> b!7846273 m!8256062))

(assert (=> d!2352799 m!8256054))

(assert (=> d!2352799 m!8255970))

(assert (=> b!7846277 m!8256052))

(declare-fun m!8256064 () Bool)

(assert (=> b!7846280 m!8256064))

(assert (=> b!7846079 d!2352799))

(declare-fun d!2352805 () Bool)

(declare-fun res!3120391 () Bool)

(declare-fun e!4638649 () Bool)

(assert (=> d!2352805 (=> res!3120391 e!4638649)))

(assert (=> d!2352805 (= res!3120391 ((_ is ElementMatch!21065) r1!6227))))

(assert (=> d!2352805 (= (validRegex!11475 r1!6227) e!4638649)))

(declare-fun b!7846283 () Bool)

(declare-fun e!4638653 () Bool)

(declare-fun call!727066 () Bool)

(assert (=> b!7846283 (= e!4638653 call!727066)))

(declare-fun bm!727061 () Bool)

(declare-fun call!727068 () Bool)

(assert (=> bm!727061 (= call!727066 call!727068)))

(declare-fun b!7846284 () Bool)

(declare-fun e!4638654 () Bool)

(assert (=> b!7846284 (= e!4638649 e!4638654)))

(declare-fun c!1442224 () Bool)

(assert (=> b!7846284 (= c!1442224 ((_ is Star!21065) r1!6227))))

(declare-fun b!7846285 () Bool)

(declare-fun res!3120393 () Bool)

(declare-fun e!4638652 () Bool)

(assert (=> b!7846285 (=> res!3120393 e!4638652)))

(assert (=> b!7846285 (= res!3120393 (not ((_ is Concat!29910) r1!6227)))))

(declare-fun e!4638650 () Bool)

(assert (=> b!7846285 (= e!4638650 e!4638652)))

(declare-fun bm!727062 () Bool)

(declare-fun call!727067 () Bool)

(declare-fun c!1442225 () Bool)

(assert (=> bm!727062 (= call!727067 (validRegex!11475 (ite c!1442225 (regOne!42643 r1!6227) (regTwo!42642 r1!6227))))))

(declare-fun b!7846286 () Bool)

(declare-fun e!4638655 () Bool)

(assert (=> b!7846286 (= e!4638654 e!4638655)))

(declare-fun res!3120392 () Bool)

(assert (=> b!7846286 (= res!3120392 (not (nullable!9339 (reg!21394 r1!6227))))))

(assert (=> b!7846286 (=> (not res!3120392) (not e!4638655))))

(declare-fun b!7846287 () Bool)

(declare-fun e!4638651 () Bool)

(assert (=> b!7846287 (= e!4638652 e!4638651)))

(declare-fun res!3120389 () Bool)

(assert (=> b!7846287 (=> (not res!3120389) (not e!4638651))))

(assert (=> b!7846287 (= res!3120389 call!727066)))

(declare-fun b!7846288 () Bool)

(declare-fun res!3120390 () Bool)

(assert (=> b!7846288 (=> (not res!3120390) (not e!4638653))))

(assert (=> b!7846288 (= res!3120390 call!727067)))

(assert (=> b!7846288 (= e!4638650 e!4638653)))

(declare-fun bm!727063 () Bool)

(assert (=> bm!727063 (= call!727068 (validRegex!11475 (ite c!1442224 (reg!21394 r1!6227) (ite c!1442225 (regTwo!42643 r1!6227) (regOne!42642 r1!6227)))))))

(declare-fun b!7846289 () Bool)

(assert (=> b!7846289 (= e!4638654 e!4638650)))

(assert (=> b!7846289 (= c!1442225 ((_ is Union!21065) r1!6227))))

(declare-fun b!7846290 () Bool)

(assert (=> b!7846290 (= e!4638655 call!727068)))

(declare-fun b!7846291 () Bool)

(assert (=> b!7846291 (= e!4638651 call!727067)))

(assert (= (and d!2352805 (not res!3120391)) b!7846284))

(assert (= (and b!7846284 c!1442224) b!7846286))

(assert (= (and b!7846284 (not c!1442224)) b!7846289))

(assert (= (and b!7846286 res!3120392) b!7846290))

(assert (= (and b!7846289 c!1442225) b!7846288))

(assert (= (and b!7846289 (not c!1442225)) b!7846285))

(assert (= (and b!7846288 res!3120390) b!7846283))

(assert (= (and b!7846285 (not res!3120393)) b!7846287))

(assert (= (and b!7846287 res!3120389) b!7846291))

(assert (= (or b!7846288 b!7846291) bm!727062))

(assert (= (or b!7846283 b!7846287) bm!727061))

(assert (= (or b!7846290 bm!727061) bm!727063))

(declare-fun m!8256066 () Bool)

(assert (=> bm!727062 m!8256066))

(declare-fun m!8256068 () Bool)

(assert (=> b!7846286 m!8256068))

(declare-fun m!8256070 () Bool)

(assert (=> bm!727063 m!8256070))

(assert (=> start!742986 d!2352805))

(declare-fun d!2352807 () Bool)

(declare-fun res!3120396 () Bool)

(declare-fun e!4638658 () Bool)

(assert (=> d!2352807 (=> res!3120396 e!4638658)))

(assert (=> d!2352807 (= res!3120396 ((_ is ElementMatch!21065) r2!6165))))

(assert (=> d!2352807 (= (validRegex!11475 r2!6165) e!4638658)))

(declare-fun b!7846296 () Bool)

(declare-fun e!4638662 () Bool)

(declare-fun call!727069 () Bool)

(assert (=> b!7846296 (= e!4638662 call!727069)))

(declare-fun bm!727064 () Bool)

(declare-fun call!727071 () Bool)

(assert (=> bm!727064 (= call!727069 call!727071)))

(declare-fun b!7846297 () Bool)

(declare-fun e!4638663 () Bool)

(assert (=> b!7846297 (= e!4638658 e!4638663)))

(declare-fun c!1442228 () Bool)

(assert (=> b!7846297 (= c!1442228 ((_ is Star!21065) r2!6165))))

(declare-fun b!7846298 () Bool)

(declare-fun res!3120398 () Bool)

(declare-fun e!4638661 () Bool)

(assert (=> b!7846298 (=> res!3120398 e!4638661)))

(assert (=> b!7846298 (= res!3120398 (not ((_ is Concat!29910) r2!6165)))))

(declare-fun e!4638659 () Bool)

(assert (=> b!7846298 (= e!4638659 e!4638661)))

(declare-fun bm!727065 () Bool)

(declare-fun call!727070 () Bool)

(declare-fun c!1442229 () Bool)

(assert (=> bm!727065 (= call!727070 (validRegex!11475 (ite c!1442229 (regOne!42643 r2!6165) (regTwo!42642 r2!6165))))))

(declare-fun b!7846299 () Bool)

(declare-fun e!4638664 () Bool)

(assert (=> b!7846299 (= e!4638663 e!4638664)))

(declare-fun res!3120397 () Bool)

(assert (=> b!7846299 (= res!3120397 (not (nullable!9339 (reg!21394 r2!6165))))))

(assert (=> b!7846299 (=> (not res!3120397) (not e!4638664))))

(declare-fun b!7846300 () Bool)

(declare-fun e!4638660 () Bool)

(assert (=> b!7846300 (= e!4638661 e!4638660)))

(declare-fun res!3120394 () Bool)

(assert (=> b!7846300 (=> (not res!3120394) (not e!4638660))))

(assert (=> b!7846300 (= res!3120394 call!727069)))

(declare-fun b!7846301 () Bool)

(declare-fun res!3120395 () Bool)

(assert (=> b!7846301 (=> (not res!3120395) (not e!4638662))))

(assert (=> b!7846301 (= res!3120395 call!727070)))

(assert (=> b!7846301 (= e!4638659 e!4638662)))

(declare-fun bm!727066 () Bool)

(assert (=> bm!727066 (= call!727071 (validRegex!11475 (ite c!1442228 (reg!21394 r2!6165) (ite c!1442229 (regTwo!42643 r2!6165) (regOne!42642 r2!6165)))))))

(declare-fun b!7846302 () Bool)

(assert (=> b!7846302 (= e!4638663 e!4638659)))

(assert (=> b!7846302 (= c!1442229 ((_ is Union!21065) r2!6165))))

(declare-fun b!7846303 () Bool)

(assert (=> b!7846303 (= e!4638664 call!727071)))

(declare-fun b!7846304 () Bool)

(assert (=> b!7846304 (= e!4638660 call!727070)))

(assert (= (and d!2352807 (not res!3120396)) b!7846297))

(assert (= (and b!7846297 c!1442228) b!7846299))

(assert (= (and b!7846297 (not c!1442228)) b!7846302))

(assert (= (and b!7846299 res!3120397) b!7846303))

(assert (= (and b!7846302 c!1442229) b!7846301))

(assert (= (and b!7846302 (not c!1442229)) b!7846298))

(assert (= (and b!7846301 res!3120395) b!7846296))

(assert (= (and b!7846298 (not res!3120398)) b!7846300))

(assert (= (and b!7846300 res!3120394) b!7846304))

(assert (= (or b!7846301 b!7846304) bm!727065))

(assert (= (or b!7846296 b!7846300) bm!727064))

(assert (= (or b!7846303 bm!727064) bm!727066))

(declare-fun m!8256072 () Bool)

(assert (=> bm!727065 m!8256072))

(declare-fun m!8256074 () Bool)

(assert (=> b!7846299 m!8256074))

(declare-fun m!8256076 () Bool)

(assert (=> bm!727066 m!8256076))

(assert (=> b!7846094 d!2352807))

(declare-fun b!7846329 () Bool)

(declare-fun res!3120415 () Bool)

(declare-fun e!4638677 () Bool)

(assert (=> b!7846329 (=> (not res!3120415) (not e!4638677))))

(assert (=> b!7846329 (= res!3120415 (isEmpty!42316 (tail!15570 s1!4084)))))

(declare-fun b!7846330 () Bool)

(declare-fun res!3120419 () Bool)

(declare-fun e!4638679 () Bool)

(assert (=> b!7846330 (=> res!3120419 e!4638679)))

(assert (=> b!7846330 (= res!3120419 (not (isEmpty!42316 (tail!15570 s1!4084))))))

(declare-fun b!7846331 () Bool)

(declare-fun e!4638683 () Bool)

(assert (=> b!7846331 (= e!4638683 e!4638679)))

(declare-fun res!3120416 () Bool)

(assert (=> b!7846331 (=> res!3120416 e!4638679)))

(declare-fun call!727072 () Bool)

(assert (=> b!7846331 (= res!3120416 call!727072)))

(declare-fun b!7846332 () Bool)

(declare-fun e!4638680 () Bool)

(declare-fun e!4638681 () Bool)

(assert (=> b!7846332 (= e!4638680 e!4638681)))

(declare-fun c!1442235 () Bool)

(assert (=> b!7846332 (= c!1442235 ((_ is EmptyLang!21065) r1!6227))))

(declare-fun bm!727067 () Bool)

(assert (=> bm!727067 (= call!727072 (isEmpty!42316 s1!4084))))

(declare-fun b!7846333 () Bool)

(declare-fun e!4638682 () Bool)

(assert (=> b!7846333 (= e!4638682 (matchR!10501 (derivativeStep!6302 r1!6227 (head!16028 s1!4084)) (tail!15570 s1!4084)))))

(declare-fun b!7846334 () Bool)

(assert (=> b!7846334 (= e!4638677 (= (head!16028 s1!4084) (c!1442159 r1!6227)))))

(declare-fun b!7846335 () Bool)

(declare-fun res!3120422 () Bool)

(assert (=> b!7846335 (=> (not res!3120422) (not e!4638677))))

(assert (=> b!7846335 (= res!3120422 (not call!727072))))

(declare-fun b!7846336 () Bool)

(declare-fun res!3120421 () Bool)

(declare-fun e!4638678 () Bool)

(assert (=> b!7846336 (=> res!3120421 e!4638678)))

(assert (=> b!7846336 (= res!3120421 (not ((_ is ElementMatch!21065) r1!6227)))))

(assert (=> b!7846336 (= e!4638681 e!4638678)))

(declare-fun b!7846337 () Bool)

(assert (=> b!7846337 (= e!4638679 (not (= (head!16028 s1!4084) (c!1442159 r1!6227))))))

(declare-fun b!7846338 () Bool)

(assert (=> b!7846338 (= e!4638678 e!4638683)))

(declare-fun res!3120418 () Bool)

(assert (=> b!7846338 (=> (not res!3120418) (not e!4638683))))

(declare-fun lt!2679214 () Bool)

(assert (=> b!7846338 (= res!3120418 (not lt!2679214))))

(declare-fun d!2352809 () Bool)

(assert (=> d!2352809 e!4638680))

(declare-fun c!1442234 () Bool)

(assert (=> d!2352809 (= c!1442234 ((_ is EmptyExpr!21065) r1!6227))))

(assert (=> d!2352809 (= lt!2679214 e!4638682)))

(declare-fun c!1442236 () Bool)

(assert (=> d!2352809 (= c!1442236 (isEmpty!42316 s1!4084))))

(assert (=> d!2352809 (validRegex!11475 r1!6227)))

(assert (=> d!2352809 (= (matchR!10501 r1!6227 s1!4084) lt!2679214)))

(declare-fun b!7846339 () Bool)

(declare-fun res!3120420 () Bool)

(assert (=> b!7846339 (=> res!3120420 e!4638678)))

(assert (=> b!7846339 (= res!3120420 e!4638677)))

(declare-fun res!3120417 () Bool)

(assert (=> b!7846339 (=> (not res!3120417) (not e!4638677))))

(assert (=> b!7846339 (= res!3120417 lt!2679214)))

(declare-fun b!7846340 () Bool)

(assert (=> b!7846340 (= e!4638682 (nullable!9339 r1!6227))))

(declare-fun b!7846341 () Bool)

(assert (=> b!7846341 (= e!4638681 (not lt!2679214))))

(declare-fun b!7846342 () Bool)

(assert (=> b!7846342 (= e!4638680 (= lt!2679214 call!727072))))

(assert (= (and d!2352809 c!1442236) b!7846340))

(assert (= (and d!2352809 (not c!1442236)) b!7846333))

(assert (= (and d!2352809 c!1442234) b!7846342))

(assert (= (and d!2352809 (not c!1442234)) b!7846332))

(assert (= (and b!7846332 c!1442235) b!7846341))

(assert (= (and b!7846332 (not c!1442235)) b!7846336))

(assert (= (and b!7846336 (not res!3120421)) b!7846339))

(assert (= (and b!7846339 res!3120417) b!7846335))

(assert (= (and b!7846335 res!3120422) b!7846329))

(assert (= (and b!7846329 res!3120415) b!7846334))

(assert (= (and b!7846339 (not res!3120420)) b!7846338))

(assert (= (and b!7846338 res!3120418) b!7846331))

(assert (= (and b!7846331 (not res!3120416)) b!7846330))

(assert (= (and b!7846330 (not res!3120419)) b!7846337))

(assert (= (or b!7846342 b!7846331 b!7846335) bm!727067))

(declare-fun m!8256078 () Bool)

(assert (=> b!7846334 m!8256078))

(declare-fun m!8256080 () Bool)

(assert (=> bm!727067 m!8256080))

(declare-fun m!8256082 () Bool)

(assert (=> b!7846330 m!8256082))

(assert (=> b!7846330 m!8256082))

(declare-fun m!8256084 () Bool)

(assert (=> b!7846330 m!8256084))

(assert (=> b!7846329 m!8256082))

(assert (=> b!7846329 m!8256082))

(assert (=> b!7846329 m!8256084))

(assert (=> b!7846333 m!8256078))

(assert (=> b!7846333 m!8256078))

(declare-fun m!8256086 () Bool)

(assert (=> b!7846333 m!8256086))

(assert (=> b!7846333 m!8256082))

(assert (=> b!7846333 m!8256086))

(assert (=> b!7846333 m!8256082))

(declare-fun m!8256088 () Bool)

(assert (=> b!7846333 m!8256088))

(assert (=> d!2352809 m!8256080))

(assert (=> d!2352809 m!8255968))

(assert (=> b!7846337 m!8256078))

(assert (=> b!7846340 m!8255982))

(assert (=> b!7846088 d!2352809))

(declare-fun d!2352811 () Bool)

(declare-fun res!3120425 () Bool)

(declare-fun e!4638684 () Bool)

(assert (=> d!2352811 (=> res!3120425 e!4638684)))

(assert (=> d!2352811 (= res!3120425 ((_ is ElementMatch!21065) lt!2679197))))

(assert (=> d!2352811 (= (validRegex!11475 lt!2679197) e!4638684)))

(declare-fun b!7846343 () Bool)

(declare-fun e!4638688 () Bool)

(declare-fun call!727075 () Bool)

(assert (=> b!7846343 (= e!4638688 call!727075)))

(declare-fun bm!727070 () Bool)

(declare-fun call!727077 () Bool)

(assert (=> bm!727070 (= call!727075 call!727077)))

(declare-fun b!7846344 () Bool)

(declare-fun e!4638689 () Bool)

(assert (=> b!7846344 (= e!4638684 e!4638689)))

(declare-fun c!1442237 () Bool)

(assert (=> b!7846344 (= c!1442237 ((_ is Star!21065) lt!2679197))))

(declare-fun b!7846345 () Bool)

(declare-fun res!3120427 () Bool)

(declare-fun e!4638687 () Bool)

(assert (=> b!7846345 (=> res!3120427 e!4638687)))

(assert (=> b!7846345 (= res!3120427 (not ((_ is Concat!29910) lt!2679197)))))

(declare-fun e!4638685 () Bool)

(assert (=> b!7846345 (= e!4638685 e!4638687)))

(declare-fun bm!727071 () Bool)

(declare-fun call!727076 () Bool)

(declare-fun c!1442238 () Bool)

(assert (=> bm!727071 (= call!727076 (validRegex!11475 (ite c!1442238 (regOne!42643 lt!2679197) (regTwo!42642 lt!2679197))))))

(declare-fun b!7846346 () Bool)

(declare-fun e!4638690 () Bool)

(assert (=> b!7846346 (= e!4638689 e!4638690)))

(declare-fun res!3120426 () Bool)

(assert (=> b!7846346 (= res!3120426 (not (nullable!9339 (reg!21394 lt!2679197))))))

(assert (=> b!7846346 (=> (not res!3120426) (not e!4638690))))

(declare-fun b!7846347 () Bool)

(declare-fun e!4638686 () Bool)

(assert (=> b!7846347 (= e!4638687 e!4638686)))

(declare-fun res!3120423 () Bool)

(assert (=> b!7846347 (=> (not res!3120423) (not e!4638686))))

(assert (=> b!7846347 (= res!3120423 call!727075)))

(declare-fun b!7846348 () Bool)

(declare-fun res!3120424 () Bool)

(assert (=> b!7846348 (=> (not res!3120424) (not e!4638688))))

(assert (=> b!7846348 (= res!3120424 call!727076)))

(assert (=> b!7846348 (= e!4638685 e!4638688)))

(declare-fun bm!727072 () Bool)

(assert (=> bm!727072 (= call!727077 (validRegex!11475 (ite c!1442237 (reg!21394 lt!2679197) (ite c!1442238 (regTwo!42643 lt!2679197) (regOne!42642 lt!2679197)))))))

(declare-fun b!7846349 () Bool)

(assert (=> b!7846349 (= e!4638689 e!4638685)))

(assert (=> b!7846349 (= c!1442238 ((_ is Union!21065) lt!2679197))))

(declare-fun b!7846350 () Bool)

(assert (=> b!7846350 (= e!4638690 call!727077)))

(declare-fun b!7846351 () Bool)

(assert (=> b!7846351 (= e!4638686 call!727076)))

(assert (= (and d!2352811 (not res!3120425)) b!7846344))

(assert (= (and b!7846344 c!1442237) b!7846346))

(assert (= (and b!7846344 (not c!1442237)) b!7846349))

(assert (= (and b!7846346 res!3120426) b!7846350))

(assert (= (and b!7846349 c!1442238) b!7846348))

(assert (= (and b!7846349 (not c!1442238)) b!7846345))

(assert (= (and b!7846348 res!3120424) b!7846343))

(assert (= (and b!7846345 (not res!3120427)) b!7846347))

(assert (= (and b!7846347 res!3120423) b!7846351))

(assert (= (or b!7846348 b!7846351) bm!727071))

(assert (= (or b!7846343 b!7846347) bm!727070))

(assert (= (or b!7846350 bm!727070) bm!727072))

(declare-fun m!8256090 () Bool)

(assert (=> bm!727071 m!8256090))

(declare-fun m!8256092 () Bool)

(assert (=> b!7846346 m!8256092))

(declare-fun m!8256094 () Bool)

(assert (=> bm!727072 m!8256094))

(assert (=> b!7846093 d!2352811))

(declare-fun d!2352813 () Bool)

(declare-fun res!3120430 () Bool)

(declare-fun e!4638691 () Bool)

(assert (=> d!2352813 (=> res!3120430 e!4638691)))

(assert (=> d!2352813 (= res!3120430 ((_ is ElementMatch!21065) lt!2679191))))

(assert (=> d!2352813 (= (validRegex!11475 lt!2679191) e!4638691)))

(declare-fun b!7846352 () Bool)

(declare-fun e!4638695 () Bool)

(declare-fun call!727078 () Bool)

(assert (=> b!7846352 (= e!4638695 call!727078)))

(declare-fun bm!727073 () Bool)

(declare-fun call!727080 () Bool)

(assert (=> bm!727073 (= call!727078 call!727080)))

(declare-fun b!7846353 () Bool)

(declare-fun e!4638696 () Bool)

(assert (=> b!7846353 (= e!4638691 e!4638696)))

(declare-fun c!1442239 () Bool)

(assert (=> b!7846353 (= c!1442239 ((_ is Star!21065) lt!2679191))))

(declare-fun b!7846354 () Bool)

(declare-fun res!3120432 () Bool)

(declare-fun e!4638694 () Bool)

(assert (=> b!7846354 (=> res!3120432 e!4638694)))

(assert (=> b!7846354 (= res!3120432 (not ((_ is Concat!29910) lt!2679191)))))

(declare-fun e!4638692 () Bool)

(assert (=> b!7846354 (= e!4638692 e!4638694)))

(declare-fun bm!727074 () Bool)

(declare-fun call!727079 () Bool)

(declare-fun c!1442240 () Bool)

(assert (=> bm!727074 (= call!727079 (validRegex!11475 (ite c!1442240 (regOne!42643 lt!2679191) (regTwo!42642 lt!2679191))))))

(declare-fun b!7846355 () Bool)

(declare-fun e!4638697 () Bool)

(assert (=> b!7846355 (= e!4638696 e!4638697)))

(declare-fun res!3120431 () Bool)

(assert (=> b!7846355 (= res!3120431 (not (nullable!9339 (reg!21394 lt!2679191))))))

(assert (=> b!7846355 (=> (not res!3120431) (not e!4638697))))

(declare-fun b!7846356 () Bool)

(declare-fun e!4638693 () Bool)

(assert (=> b!7846356 (= e!4638694 e!4638693)))

(declare-fun res!3120428 () Bool)

(assert (=> b!7846356 (=> (not res!3120428) (not e!4638693))))

(assert (=> b!7846356 (= res!3120428 call!727078)))

(declare-fun b!7846357 () Bool)

(declare-fun res!3120429 () Bool)

(assert (=> b!7846357 (=> (not res!3120429) (not e!4638695))))

(assert (=> b!7846357 (= res!3120429 call!727079)))

(assert (=> b!7846357 (= e!4638692 e!4638695)))

(declare-fun bm!727075 () Bool)

(assert (=> bm!727075 (= call!727080 (validRegex!11475 (ite c!1442239 (reg!21394 lt!2679191) (ite c!1442240 (regTwo!42643 lt!2679191) (regOne!42642 lt!2679191)))))))

(declare-fun b!7846358 () Bool)

(assert (=> b!7846358 (= e!4638696 e!4638692)))

(assert (=> b!7846358 (= c!1442240 ((_ is Union!21065) lt!2679191))))

(declare-fun b!7846359 () Bool)

(assert (=> b!7846359 (= e!4638697 call!727080)))

(declare-fun b!7846360 () Bool)

(assert (=> b!7846360 (= e!4638693 call!727079)))

(assert (= (and d!2352813 (not res!3120430)) b!7846353))

(assert (= (and b!7846353 c!1442239) b!7846355))

(assert (= (and b!7846353 (not c!1442239)) b!7846358))

(assert (= (and b!7846355 res!3120431) b!7846359))

(assert (= (and b!7846358 c!1442240) b!7846357))

(assert (= (and b!7846358 (not c!1442240)) b!7846354))

(assert (= (and b!7846357 res!3120429) b!7846352))

(assert (= (and b!7846354 (not res!3120432)) b!7846356))

(assert (= (and b!7846356 res!3120428) b!7846360))

(assert (= (or b!7846357 b!7846360) bm!727074))

(assert (= (or b!7846352 b!7846356) bm!727073))

(assert (= (or b!7846359 bm!727073) bm!727075))

(declare-fun m!8256096 () Bool)

(assert (=> bm!727074 m!8256096))

(declare-fun m!8256098 () Bool)

(assert (=> b!7846355 m!8256098))

(declare-fun m!8256100 () Bool)

(assert (=> bm!727075 m!8256100))

(assert (=> b!7846082 d!2352813))

(declare-fun d!2352815 () Bool)

(declare-fun e!4638711 () Bool)

(assert (=> d!2352815 e!4638711))

(declare-fun res!3120448 () Bool)

(assert (=> d!2352815 (=> (not res!3120448) (not e!4638711))))

(declare-fun lt!2679220 () List!73924)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15663 (List!73924) (InoxSet C!42456))

(assert (=> d!2352815 (= res!3120448 (= (content!15663 lt!2679220) ((_ map or) (content!15663 s1!4084) (content!15663 s2!3706))))))

(declare-fun e!4638712 () List!73924)

(assert (=> d!2352815 (= lt!2679220 e!4638712)))

(declare-fun c!1442246 () Bool)

(assert (=> d!2352815 (= c!1442246 ((_ is Nil!73800) s1!4084))))

(assert (=> d!2352815 (= (++!18075 s1!4084 s2!3706) lt!2679220)))

(declare-fun b!7846388 () Bool)

(assert (=> b!7846388 (= e!4638711 (or (not (= s2!3706 Nil!73800)) (= lt!2679220 s1!4084)))))

(declare-fun b!7846385 () Bool)

(assert (=> b!7846385 (= e!4638712 s2!3706)))

(declare-fun b!7846386 () Bool)

(assert (=> b!7846386 (= e!4638712 (Cons!73800 (h!80248 s1!4084) (++!18075 (t!388659 s1!4084) s2!3706)))))

(declare-fun b!7846387 () Bool)

(declare-fun res!3120447 () Bool)

(assert (=> b!7846387 (=> (not res!3120447) (not e!4638711))))

(declare-fun size!42816 (List!73924) Int)

(assert (=> b!7846387 (= res!3120447 (= (size!42816 lt!2679220) (+ (size!42816 s1!4084) (size!42816 s2!3706))))))

(assert (= (and d!2352815 c!1442246) b!7846385))

(assert (= (and d!2352815 (not c!1442246)) b!7846386))

(assert (= (and d!2352815 res!3120448) b!7846387))

(assert (= (and b!7846387 res!3120447) b!7846388))

(declare-fun m!8256118 () Bool)

(assert (=> d!2352815 m!8256118))

(declare-fun m!8256120 () Bool)

(assert (=> d!2352815 m!8256120))

(declare-fun m!8256122 () Bool)

(assert (=> d!2352815 m!8256122))

(assert (=> b!7846386 m!8255978))

(declare-fun m!8256124 () Bool)

(assert (=> b!7846387 m!8256124))

(declare-fun m!8256126 () Bool)

(assert (=> b!7846387 m!8256126))

(declare-fun m!8256128 () Bool)

(assert (=> b!7846387 m!8256128))

(assert (=> b!7846082 d!2352815))

(declare-fun b!7846390 () Bool)

(declare-fun res!3120450 () Bool)

(declare-fun e!4638714 () Bool)

(assert (=> b!7846390 (=> (not res!3120450) (not e!4638714))))

(assert (=> b!7846390 (= res!3120450 (isEmpty!42316 (tail!15570 lt!2679193)))))

(declare-fun b!7846391 () Bool)

(declare-fun res!3120454 () Bool)

(declare-fun e!4638716 () Bool)

(assert (=> b!7846391 (=> res!3120454 e!4638716)))

(assert (=> b!7846391 (= res!3120454 (not (isEmpty!42316 (tail!15570 lt!2679193))))))

(declare-fun b!7846392 () Bool)

(declare-fun e!4638720 () Bool)

(assert (=> b!7846392 (= e!4638720 e!4638716)))

(declare-fun res!3120451 () Bool)

(assert (=> b!7846392 (=> res!3120451 e!4638716)))

(declare-fun call!727082 () Bool)

(assert (=> b!7846392 (= res!3120451 call!727082)))

(declare-fun b!7846393 () Bool)

(declare-fun e!4638717 () Bool)

(declare-fun e!4638718 () Bool)

(assert (=> b!7846393 (= e!4638717 e!4638718)))

(declare-fun c!1442248 () Bool)

(assert (=> b!7846393 (= c!1442248 ((_ is EmptyLang!21065) lt!2679194))))

(declare-fun bm!727077 () Bool)

(assert (=> bm!727077 (= call!727082 (isEmpty!42316 lt!2679193))))

(declare-fun b!7846394 () Bool)

(declare-fun e!4638719 () Bool)

(assert (=> b!7846394 (= e!4638719 (matchR!10501 (derivativeStep!6302 lt!2679194 (head!16028 lt!2679193)) (tail!15570 lt!2679193)))))

(declare-fun b!7846395 () Bool)

(assert (=> b!7846395 (= e!4638714 (= (head!16028 lt!2679193) (c!1442159 lt!2679194)))))

(declare-fun b!7846396 () Bool)

(declare-fun res!3120457 () Bool)

(assert (=> b!7846396 (=> (not res!3120457) (not e!4638714))))

(assert (=> b!7846396 (= res!3120457 (not call!727082))))

(declare-fun b!7846397 () Bool)

(declare-fun res!3120456 () Bool)

(declare-fun e!4638715 () Bool)

(assert (=> b!7846397 (=> res!3120456 e!4638715)))

(assert (=> b!7846397 (= res!3120456 (not ((_ is ElementMatch!21065) lt!2679194)))))

(assert (=> b!7846397 (= e!4638718 e!4638715)))

(declare-fun b!7846398 () Bool)

(assert (=> b!7846398 (= e!4638716 (not (= (head!16028 lt!2679193) (c!1442159 lt!2679194))))))

(declare-fun b!7846399 () Bool)

(assert (=> b!7846399 (= e!4638715 e!4638720)))

(declare-fun res!3120453 () Bool)

(assert (=> b!7846399 (=> (not res!3120453) (not e!4638720))))

(declare-fun lt!2679222 () Bool)

(assert (=> b!7846399 (= res!3120453 (not lt!2679222))))

(declare-fun d!2352819 () Bool)

(assert (=> d!2352819 e!4638717))

(declare-fun c!1442247 () Bool)

(assert (=> d!2352819 (= c!1442247 ((_ is EmptyExpr!21065) lt!2679194))))

(assert (=> d!2352819 (= lt!2679222 e!4638719)))

(declare-fun c!1442249 () Bool)

(assert (=> d!2352819 (= c!1442249 (isEmpty!42316 lt!2679193))))

(assert (=> d!2352819 (validRegex!11475 lt!2679194)))

(assert (=> d!2352819 (= (matchR!10501 lt!2679194 lt!2679193) lt!2679222)))

(declare-fun b!7846400 () Bool)

(declare-fun res!3120455 () Bool)

(assert (=> b!7846400 (=> res!3120455 e!4638715)))

(assert (=> b!7846400 (= res!3120455 e!4638714)))

(declare-fun res!3120452 () Bool)

(assert (=> b!7846400 (=> (not res!3120452) (not e!4638714))))

(assert (=> b!7846400 (= res!3120452 lt!2679222)))

(declare-fun b!7846401 () Bool)

(assert (=> b!7846401 (= e!4638719 (nullable!9339 lt!2679194))))

(declare-fun b!7846402 () Bool)

(assert (=> b!7846402 (= e!4638718 (not lt!2679222))))

(declare-fun b!7846403 () Bool)

(assert (=> b!7846403 (= e!4638717 (= lt!2679222 call!727082))))

(assert (= (and d!2352819 c!1442249) b!7846401))

(assert (= (and d!2352819 (not c!1442249)) b!7846394))

(assert (= (and d!2352819 c!1442247) b!7846403))

(assert (= (and d!2352819 (not c!1442247)) b!7846393))

(assert (= (and b!7846393 c!1442248) b!7846402))

(assert (= (and b!7846393 (not c!1442248)) b!7846397))

(assert (= (and b!7846397 (not res!3120456)) b!7846400))

(assert (= (and b!7846400 res!3120452) b!7846396))

(assert (= (and b!7846396 res!3120457) b!7846390))

(assert (= (and b!7846390 res!3120450) b!7846395))

(assert (= (and b!7846400 (not res!3120455)) b!7846399))

(assert (= (and b!7846399 res!3120453) b!7846392))

(assert (= (and b!7846392 (not res!3120451)) b!7846391))

(assert (= (and b!7846391 (not res!3120454)) b!7846398))

(assert (= (or b!7846403 b!7846392 b!7846396) bm!727077))

(declare-fun m!8256134 () Bool)

(assert (=> b!7846395 m!8256134))

(declare-fun m!8256138 () Bool)

(assert (=> bm!727077 m!8256138))

(declare-fun m!8256142 () Bool)

(assert (=> b!7846391 m!8256142))

(assert (=> b!7846391 m!8256142))

(declare-fun m!8256146 () Bool)

(assert (=> b!7846391 m!8256146))

(assert (=> b!7846390 m!8256142))

(assert (=> b!7846390 m!8256142))

(assert (=> b!7846390 m!8256146))

(assert (=> b!7846394 m!8256134))

(assert (=> b!7846394 m!8256134))

(declare-fun m!8256152 () Bool)

(assert (=> b!7846394 m!8256152))

(assert (=> b!7846394 m!8256142))

(assert (=> b!7846394 m!8256152))

(assert (=> b!7846394 m!8256142))

(declare-fun m!8256156 () Bool)

(assert (=> b!7846394 m!8256156))

(assert (=> d!2352819 m!8256138))

(declare-fun m!8256160 () Bool)

(assert (=> d!2352819 m!8256160))

(assert (=> b!7846398 m!8256134))

(declare-fun m!8256162 () Bool)

(assert (=> b!7846401 m!8256162))

(assert (=> b!7846082 d!2352819))

(declare-fun d!2352825 () Bool)

(assert (=> d!2352825 (matchR!10501 (Union!21065 lt!2679189 lt!2679197) lt!2679193)))

(declare-fun lt!2679226 () Unit!168876)

(declare-fun choose!59633 (Regex!21065 Regex!21065 List!73924) Unit!168876)

(assert (=> d!2352825 (= lt!2679226 (choose!59633 lt!2679189 lt!2679197 lt!2679193))))

(declare-fun e!4638739 () Bool)

(assert (=> d!2352825 e!4638739))

(declare-fun res!3120475 () Bool)

(assert (=> d!2352825 (=> (not res!3120475) (not e!4638739))))

(assert (=> d!2352825 (= res!3120475 (validRegex!11475 lt!2679189))))

(assert (=> d!2352825 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!120 lt!2679189 lt!2679197 lt!2679193) lt!2679226)))

(declare-fun b!7846429 () Bool)

(assert (=> b!7846429 (= e!4638739 (validRegex!11475 lt!2679197))))

(assert (= (and d!2352825 res!3120475) b!7846429))

(declare-fun m!8256172 () Bool)

(assert (=> d!2352825 m!8256172))

(declare-fun m!8256174 () Bool)

(assert (=> d!2352825 m!8256174))

(assert (=> d!2352825 m!8255964))

(assert (=> b!7846429 m!8255972))

(assert (=> b!7846082 d!2352825))

(declare-fun d!2352831 () Bool)

(assert (=> d!2352831 (matchR!10501 (Concat!29910 lt!2679195 r2!6165) (++!18075 (t!388659 s1!4084) s2!3706))))

(declare-fun lt!2679235 () Unit!168876)

(declare-fun choose!59634 (Regex!21065 Regex!21065 List!73924 List!73924) Unit!168876)

(assert (=> d!2352831 (= lt!2679235 (choose!59634 lt!2679195 r2!6165 (t!388659 s1!4084) s2!3706))))

(declare-fun e!4638771 () Bool)

(assert (=> d!2352831 e!4638771))

(declare-fun res!3120499 () Bool)

(assert (=> d!2352831 (=> (not res!3120499) (not e!4638771))))

(assert (=> d!2352831 (= res!3120499 (validRegex!11475 lt!2679195))))

(assert (=> d!2352831 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!436 lt!2679195 r2!6165 (t!388659 s1!4084) s2!3706) lt!2679235)))

(declare-fun b!7846481 () Bool)

(assert (=> b!7846481 (= e!4638771 (validRegex!11475 r2!6165))))

(assert (= (and d!2352831 res!3120499) b!7846481))

(assert (=> d!2352831 m!8255978))

(assert (=> d!2352831 m!8255978))

(declare-fun m!8256214 () Bool)

(assert (=> d!2352831 m!8256214))

(declare-fun m!8256218 () Bool)

(assert (=> d!2352831 m!8256218))

(declare-fun m!8256222 () Bool)

(assert (=> d!2352831 m!8256222))

(assert (=> b!7846481 m!8255970))

(assert (=> b!7846076 d!2352831))

(declare-fun d!2352845 () Bool)

(declare-fun nullableFct!3675 (Regex!21065) Bool)

(assert (=> d!2352845 (= (nullable!9339 r1!6227) (nullableFct!3675 r1!6227))))

(declare-fun bs!1967036 () Bool)

(assert (= bs!1967036 d!2352845))

(declare-fun m!8256224 () Bool)

(assert (=> bs!1967036 m!8256224))

(assert (=> b!7846076 d!2352845))

(declare-fun bm!727094 () Bool)

(declare-fun c!1442273 () Bool)

(declare-fun call!727102 () Regex!21065)

(assert (=> bm!727094 (= call!727102 (derivativeStep!6302 (ite c!1442273 (regTwo!42643 r1!6227) (regOne!42642 r1!6227)) (h!80248 s1!4084)))))

(declare-fun b!7846496 () Bool)

(declare-fun e!4638783 () Regex!21065)

(declare-fun call!727101 () Regex!21065)

(assert (=> b!7846496 (= e!4638783 (Union!21065 (Concat!29910 call!727101 (regTwo!42642 r1!6227)) EmptyLang!21065))))

(declare-fun b!7846497 () Bool)

(declare-fun e!4638782 () Regex!21065)

(assert (=> b!7846497 (= e!4638782 EmptyLang!21065)))

(declare-fun b!7846498 () Bool)

(declare-fun c!1442271 () Bool)

(assert (=> b!7846498 (= c!1442271 (nullable!9339 (regOne!42642 r1!6227)))))

(declare-fun e!4638781 () Regex!21065)

(assert (=> b!7846498 (= e!4638781 e!4638783)))

(declare-fun b!7846499 () Bool)

(declare-fun call!727099 () Regex!21065)

(assert (=> b!7846499 (= e!4638781 (Concat!29910 call!727099 r1!6227))))

(declare-fun b!7846500 () Bool)

(declare-fun e!4638780 () Regex!21065)

(declare-fun call!727100 () Regex!21065)

(assert (=> b!7846500 (= e!4638780 (Union!21065 call!727100 call!727102))))

(declare-fun b!7846501 () Bool)

(assert (=> b!7846501 (= c!1442273 ((_ is Union!21065) r1!6227))))

(declare-fun e!4638779 () Regex!21065)

(assert (=> b!7846501 (= e!4638779 e!4638780)))

(declare-fun d!2352847 () Bool)

(declare-fun lt!2679237 () Regex!21065)

(assert (=> d!2352847 (validRegex!11475 lt!2679237)))

(assert (=> d!2352847 (= lt!2679237 e!4638782)))

(declare-fun c!1442272 () Bool)

(assert (=> d!2352847 (= c!1442272 (or ((_ is EmptyExpr!21065) r1!6227) ((_ is EmptyLang!21065) r1!6227)))))

(assert (=> d!2352847 (validRegex!11475 r1!6227)))

(assert (=> d!2352847 (= (derivativeStep!6302 r1!6227 (h!80248 s1!4084)) lt!2679237)))

(declare-fun b!7846502 () Bool)

(assert (=> b!7846502 (= e!4638783 (Union!21065 (Concat!29910 call!727102 (regTwo!42642 r1!6227)) call!727101))))

(declare-fun bm!727095 () Bool)

(assert (=> bm!727095 (= call!727101 call!727099)))

(declare-fun b!7846503 () Bool)

(assert (=> b!7846503 (= e!4638780 e!4638781)))

(declare-fun c!1442275 () Bool)

(assert (=> b!7846503 (= c!1442275 ((_ is Star!21065) r1!6227))))

(declare-fun bm!727096 () Bool)

(assert (=> bm!727096 (= call!727100 (derivativeStep!6302 (ite c!1442273 (regOne!42643 r1!6227) (ite c!1442275 (reg!21394 r1!6227) (ite c!1442271 (regTwo!42642 r1!6227) (regOne!42642 r1!6227)))) (h!80248 s1!4084)))))

(declare-fun bm!727097 () Bool)

(assert (=> bm!727097 (= call!727099 call!727100)))

(declare-fun b!7846504 () Bool)

(assert (=> b!7846504 (= e!4638782 e!4638779)))

(declare-fun c!1442274 () Bool)

(assert (=> b!7846504 (= c!1442274 ((_ is ElementMatch!21065) r1!6227))))

(declare-fun b!7846505 () Bool)

(assert (=> b!7846505 (= e!4638779 (ite (= (h!80248 s1!4084) (c!1442159 r1!6227)) EmptyExpr!21065 EmptyLang!21065))))

(assert (= (and d!2352847 c!1442272) b!7846497))

(assert (= (and d!2352847 (not c!1442272)) b!7846504))

(assert (= (and b!7846504 c!1442274) b!7846505))

(assert (= (and b!7846504 (not c!1442274)) b!7846501))

(assert (= (and b!7846501 c!1442273) b!7846500))

(assert (= (and b!7846501 (not c!1442273)) b!7846503))

(assert (= (and b!7846503 c!1442275) b!7846499))

(assert (= (and b!7846503 (not c!1442275)) b!7846498))

(assert (= (and b!7846498 c!1442271) b!7846502))

(assert (= (and b!7846498 (not c!1442271)) b!7846496))

(assert (= (or b!7846502 b!7846496) bm!727095))

(assert (= (or b!7846499 bm!727095) bm!727097))

(assert (= (or b!7846500 b!7846502) bm!727094))

(assert (= (or b!7846500 bm!727097) bm!727096))

(declare-fun m!8256244 () Bool)

(assert (=> bm!727094 m!8256244))

(declare-fun m!8256246 () Bool)

(assert (=> b!7846498 m!8256246))

(declare-fun m!8256248 () Bool)

(assert (=> d!2352847 m!8256248))

(assert (=> d!2352847 m!8255968))

(declare-fun m!8256250 () Bool)

(assert (=> bm!727096 m!8256250))

(assert (=> b!7846076 d!2352847))

(declare-fun b!7846521 () Bool)

(declare-fun res!3120513 () Bool)

(declare-fun e!4638793 () Bool)

(assert (=> b!7846521 (=> (not res!3120513) (not e!4638793))))

(assert (=> b!7846521 (= res!3120513 (isEmpty!42316 (tail!15570 lt!2679193)))))

(declare-fun b!7846522 () Bool)

(declare-fun res!3120517 () Bool)

(declare-fun e!4638795 () Bool)

(assert (=> b!7846522 (=> res!3120517 e!4638795)))

(assert (=> b!7846522 (= res!3120517 (not (isEmpty!42316 (tail!15570 lt!2679193))))))

(declare-fun b!7846523 () Bool)

(declare-fun e!4638799 () Bool)

(assert (=> b!7846523 (= e!4638799 e!4638795)))

(declare-fun res!3120514 () Bool)

(assert (=> b!7846523 (=> res!3120514 e!4638795)))

(declare-fun call!727106 () Bool)

(assert (=> b!7846523 (= res!3120514 call!727106)))

(declare-fun b!7846524 () Bool)

(declare-fun e!4638796 () Bool)

(declare-fun e!4638797 () Bool)

(assert (=> b!7846524 (= e!4638796 e!4638797)))

(declare-fun c!1442279 () Bool)

(assert (=> b!7846524 (= c!1442279 ((_ is EmptyLang!21065) lt!2679189))))

(declare-fun bm!727101 () Bool)

(assert (=> bm!727101 (= call!727106 (isEmpty!42316 lt!2679193))))

(declare-fun b!7846525 () Bool)

(declare-fun e!4638798 () Bool)

(assert (=> b!7846525 (= e!4638798 (matchR!10501 (derivativeStep!6302 lt!2679189 (head!16028 lt!2679193)) (tail!15570 lt!2679193)))))

(declare-fun b!7846526 () Bool)

(assert (=> b!7846526 (= e!4638793 (= (head!16028 lt!2679193) (c!1442159 lt!2679189)))))

(declare-fun b!7846527 () Bool)

(declare-fun res!3120520 () Bool)

(assert (=> b!7846527 (=> (not res!3120520) (not e!4638793))))

(assert (=> b!7846527 (= res!3120520 (not call!727106))))

(declare-fun b!7846528 () Bool)

(declare-fun res!3120519 () Bool)

(declare-fun e!4638794 () Bool)

(assert (=> b!7846528 (=> res!3120519 e!4638794)))

(assert (=> b!7846528 (= res!3120519 (not ((_ is ElementMatch!21065) lt!2679189)))))

(assert (=> b!7846528 (= e!4638797 e!4638794)))

(declare-fun b!7846529 () Bool)

(assert (=> b!7846529 (= e!4638795 (not (= (head!16028 lt!2679193) (c!1442159 lt!2679189))))))

(declare-fun b!7846530 () Bool)

(assert (=> b!7846530 (= e!4638794 e!4638799)))

(declare-fun res!3120516 () Bool)

(assert (=> b!7846530 (=> (not res!3120516) (not e!4638799))))

(declare-fun lt!2679238 () Bool)

(assert (=> b!7846530 (= res!3120516 (not lt!2679238))))

(declare-fun d!2352851 () Bool)

(assert (=> d!2352851 e!4638796))

(declare-fun c!1442278 () Bool)

(assert (=> d!2352851 (= c!1442278 ((_ is EmptyExpr!21065) lt!2679189))))

(assert (=> d!2352851 (= lt!2679238 e!4638798)))

(declare-fun c!1442280 () Bool)

(assert (=> d!2352851 (= c!1442280 (isEmpty!42316 lt!2679193))))

(assert (=> d!2352851 (validRegex!11475 lt!2679189)))

(assert (=> d!2352851 (= (matchR!10501 lt!2679189 lt!2679193) lt!2679238)))

(declare-fun b!7846531 () Bool)

(declare-fun res!3120518 () Bool)

(assert (=> b!7846531 (=> res!3120518 e!4638794)))

(assert (=> b!7846531 (= res!3120518 e!4638793)))

(declare-fun res!3120515 () Bool)

(assert (=> b!7846531 (=> (not res!3120515) (not e!4638793))))

(assert (=> b!7846531 (= res!3120515 lt!2679238)))

(declare-fun b!7846532 () Bool)

(assert (=> b!7846532 (= e!4638798 (nullable!9339 lt!2679189))))

(declare-fun b!7846533 () Bool)

(assert (=> b!7846533 (= e!4638797 (not lt!2679238))))

(declare-fun b!7846534 () Bool)

(assert (=> b!7846534 (= e!4638796 (= lt!2679238 call!727106))))

(assert (= (and d!2352851 c!1442280) b!7846532))

(assert (= (and d!2352851 (not c!1442280)) b!7846525))

(assert (= (and d!2352851 c!1442278) b!7846534))

(assert (= (and d!2352851 (not c!1442278)) b!7846524))

(assert (= (and b!7846524 c!1442279) b!7846533))

(assert (= (and b!7846524 (not c!1442279)) b!7846528))

(assert (= (and b!7846528 (not res!3120519)) b!7846531))

(assert (= (and b!7846531 res!3120515) b!7846527))

(assert (= (and b!7846527 res!3120520) b!7846521))

(assert (= (and b!7846521 res!3120513) b!7846526))

(assert (= (and b!7846531 (not res!3120518)) b!7846530))

(assert (= (and b!7846530 res!3120516) b!7846523))

(assert (= (and b!7846523 (not res!3120514)) b!7846522))

(assert (= (and b!7846522 (not res!3120517)) b!7846529))

(assert (= (or b!7846534 b!7846523 b!7846527) bm!727101))

(assert (=> b!7846526 m!8256134))

(assert (=> bm!727101 m!8256138))

(assert (=> b!7846522 m!8256142))

(assert (=> b!7846522 m!8256142))

(assert (=> b!7846522 m!8256146))

(assert (=> b!7846521 m!8256142))

(assert (=> b!7846521 m!8256142))

(assert (=> b!7846521 m!8256146))

(assert (=> b!7846525 m!8256134))

(assert (=> b!7846525 m!8256134))

(declare-fun m!8256252 () Bool)

(assert (=> b!7846525 m!8256252))

(assert (=> b!7846525 m!8256142))

(assert (=> b!7846525 m!8256252))

(assert (=> b!7846525 m!8256142))

(declare-fun m!8256254 () Bool)

(assert (=> b!7846525 m!8256254))

(assert (=> d!2352851 m!8256138))

(assert (=> d!2352851 m!8255964))

(assert (=> b!7846529 m!8256134))

(declare-fun m!8256256 () Bool)

(assert (=> b!7846532 m!8256256))

(assert (=> b!7846076 d!2352851))

(declare-fun d!2352853 () Bool)

(declare-fun e!4638804 () Bool)

(assert (=> d!2352853 e!4638804))

(declare-fun res!3120522 () Bool)

(assert (=> d!2352853 (=> (not res!3120522) (not e!4638804))))

(declare-fun lt!2679239 () List!73924)

(assert (=> d!2352853 (= res!3120522 (= (content!15663 lt!2679239) ((_ map or) (content!15663 (t!388659 s1!4084)) (content!15663 s2!3706))))))

(declare-fun e!4638805 () List!73924)

(assert (=> d!2352853 (= lt!2679239 e!4638805)))

(declare-fun c!1442281 () Bool)

(assert (=> d!2352853 (= c!1442281 ((_ is Nil!73800) (t!388659 s1!4084)))))

(assert (=> d!2352853 (= (++!18075 (t!388659 s1!4084) s2!3706) lt!2679239)))

(declare-fun b!7846554 () Bool)

(assert (=> b!7846554 (= e!4638804 (or (not (= s2!3706 Nil!73800)) (= lt!2679239 (t!388659 s1!4084))))))

(declare-fun b!7846551 () Bool)

(assert (=> b!7846551 (= e!4638805 s2!3706)))

(declare-fun b!7846552 () Bool)

(assert (=> b!7846552 (= e!4638805 (Cons!73800 (h!80248 (t!388659 s1!4084)) (++!18075 (t!388659 (t!388659 s1!4084)) s2!3706)))))

(declare-fun b!7846553 () Bool)

(declare-fun res!3120521 () Bool)

(assert (=> b!7846553 (=> (not res!3120521) (not e!4638804))))

(assert (=> b!7846553 (= res!3120521 (= (size!42816 lt!2679239) (+ (size!42816 (t!388659 s1!4084)) (size!42816 s2!3706))))))

(assert (= (and d!2352853 c!1442281) b!7846551))

(assert (= (and d!2352853 (not c!1442281)) b!7846552))

(assert (= (and d!2352853 res!3120522) b!7846553))

(assert (= (and b!7846553 res!3120521) b!7846554))

(declare-fun m!8256258 () Bool)

(assert (=> d!2352853 m!8256258))

(declare-fun m!8256260 () Bool)

(assert (=> d!2352853 m!8256260))

(assert (=> d!2352853 m!8256122))

(declare-fun m!8256262 () Bool)

(assert (=> b!7846552 m!8256262))

(declare-fun m!8256264 () Bool)

(assert (=> b!7846553 m!8256264))

(declare-fun m!8256266 () Bool)

(assert (=> b!7846553 m!8256266))

(assert (=> b!7846553 m!8256128))

(assert (=> b!7846076 d!2352853))

(declare-fun b!7846602 () Bool)

(declare-fun e!4638818 () Bool)

(declare-fun tp!2323224 () Bool)

(declare-fun tp!2323227 () Bool)

(assert (=> b!7846602 (= e!4638818 (and tp!2323224 tp!2323227))))

(declare-fun b!7846601 () Bool)

(declare-fun tp!2323225 () Bool)

(assert (=> b!7846601 (= e!4638818 tp!2323225)))

(declare-fun b!7846600 () Bool)

(declare-fun tp!2323223 () Bool)

(declare-fun tp!2323226 () Bool)

(assert (=> b!7846600 (= e!4638818 (and tp!2323223 tp!2323226))))

(declare-fun b!7846599 () Bool)

(assert (=> b!7846599 (= e!4638818 tp_is_empty!52529)))

(assert (=> b!7846091 (= tp!2323139 e!4638818)))

(assert (= (and b!7846091 ((_ is ElementMatch!21065) (regOne!42642 r1!6227))) b!7846599))

(assert (= (and b!7846091 ((_ is Concat!29910) (regOne!42642 r1!6227))) b!7846600))

(assert (= (and b!7846091 ((_ is Star!21065) (regOne!42642 r1!6227))) b!7846601))

(assert (= (and b!7846091 ((_ is Union!21065) (regOne!42642 r1!6227))) b!7846602))

(declare-fun b!7846606 () Bool)

(declare-fun e!4638819 () Bool)

(declare-fun tp!2323229 () Bool)

(declare-fun tp!2323232 () Bool)

(assert (=> b!7846606 (= e!4638819 (and tp!2323229 tp!2323232))))

(declare-fun b!7846605 () Bool)

(declare-fun tp!2323230 () Bool)

(assert (=> b!7846605 (= e!4638819 tp!2323230)))

(declare-fun b!7846604 () Bool)

(declare-fun tp!2323228 () Bool)

(declare-fun tp!2323231 () Bool)

(assert (=> b!7846604 (= e!4638819 (and tp!2323228 tp!2323231))))

(declare-fun b!7846603 () Bool)

(assert (=> b!7846603 (= e!4638819 tp_is_empty!52529)))

(assert (=> b!7846091 (= tp!2323138 e!4638819)))

(assert (= (and b!7846091 ((_ is ElementMatch!21065) (regTwo!42642 r1!6227))) b!7846603))

(assert (= (and b!7846091 ((_ is Concat!29910) (regTwo!42642 r1!6227))) b!7846604))

(assert (= (and b!7846091 ((_ is Star!21065) (regTwo!42642 r1!6227))) b!7846605))

(assert (= (and b!7846091 ((_ is Union!21065) (regTwo!42642 r1!6227))) b!7846606))

(declare-fun b!7846610 () Bool)

(declare-fun e!4638820 () Bool)

(declare-fun tp!2323234 () Bool)

(declare-fun tp!2323237 () Bool)

(assert (=> b!7846610 (= e!4638820 (and tp!2323234 tp!2323237))))

(declare-fun b!7846609 () Bool)

(declare-fun tp!2323235 () Bool)

(assert (=> b!7846609 (= e!4638820 tp!2323235)))

(declare-fun b!7846608 () Bool)

(declare-fun tp!2323233 () Bool)

(declare-fun tp!2323236 () Bool)

(assert (=> b!7846608 (= e!4638820 (and tp!2323233 tp!2323236))))

(declare-fun b!7846607 () Bool)

(assert (=> b!7846607 (= e!4638820 tp_is_empty!52529)))

(assert (=> b!7846080 (= tp!2323148 e!4638820)))

(assert (= (and b!7846080 ((_ is ElementMatch!21065) (regOne!42643 r1!6227))) b!7846607))

(assert (= (and b!7846080 ((_ is Concat!29910) (regOne!42643 r1!6227))) b!7846608))

(assert (= (and b!7846080 ((_ is Star!21065) (regOne!42643 r1!6227))) b!7846609))

(assert (= (and b!7846080 ((_ is Union!21065) (regOne!42643 r1!6227))) b!7846610))

(declare-fun b!7846614 () Bool)

(declare-fun e!4638821 () Bool)

(declare-fun tp!2323239 () Bool)

(declare-fun tp!2323242 () Bool)

(assert (=> b!7846614 (= e!4638821 (and tp!2323239 tp!2323242))))

(declare-fun b!7846613 () Bool)

(declare-fun tp!2323240 () Bool)

(assert (=> b!7846613 (= e!4638821 tp!2323240)))

(declare-fun b!7846612 () Bool)

(declare-fun tp!2323238 () Bool)

(declare-fun tp!2323241 () Bool)

(assert (=> b!7846612 (= e!4638821 (and tp!2323238 tp!2323241))))

(declare-fun b!7846611 () Bool)

(assert (=> b!7846611 (= e!4638821 tp_is_empty!52529)))

(assert (=> b!7846080 (= tp!2323142 e!4638821)))

(assert (= (and b!7846080 ((_ is ElementMatch!21065) (regTwo!42643 r1!6227))) b!7846611))

(assert (= (and b!7846080 ((_ is Concat!29910) (regTwo!42643 r1!6227))) b!7846612))

(assert (= (and b!7846080 ((_ is Star!21065) (regTwo!42643 r1!6227))) b!7846613))

(assert (= (and b!7846080 ((_ is Union!21065) (regTwo!42643 r1!6227))) b!7846614))

(declare-fun b!7846619 () Bool)

(declare-fun e!4638824 () Bool)

(declare-fun tp!2323245 () Bool)

(assert (=> b!7846619 (= e!4638824 (and tp_is_empty!52529 tp!2323245))))

(assert (=> b!7846090 (= tp!2323146 e!4638824)))

(assert (= (and b!7846090 ((_ is Cons!73800) (t!388659 s1!4084))) b!7846619))

(declare-fun b!7846620 () Bool)

(declare-fun e!4638825 () Bool)

(declare-fun tp!2323246 () Bool)

(assert (=> b!7846620 (= e!4638825 (and tp_is_empty!52529 tp!2323246))))

(assert (=> b!7846089 (= tp!2323145 e!4638825)))

(assert (= (and b!7846089 ((_ is Cons!73800) (t!388659 s2!3706))) b!7846620))

(declare-fun b!7846624 () Bool)

(declare-fun e!4638826 () Bool)

(declare-fun tp!2323248 () Bool)

(declare-fun tp!2323251 () Bool)

(assert (=> b!7846624 (= e!4638826 (and tp!2323248 tp!2323251))))

(declare-fun b!7846623 () Bool)

(declare-fun tp!2323249 () Bool)

(assert (=> b!7846623 (= e!4638826 tp!2323249)))

(declare-fun b!7846622 () Bool)

(declare-fun tp!2323247 () Bool)

(declare-fun tp!2323250 () Bool)

(assert (=> b!7846622 (= e!4638826 (and tp!2323247 tp!2323250))))

(declare-fun b!7846621 () Bool)

(assert (=> b!7846621 (= e!4638826 tp_is_empty!52529)))

(assert (=> b!7846078 (= tp!2323140 e!4638826)))

(assert (= (and b!7846078 ((_ is ElementMatch!21065) (reg!21394 r2!6165))) b!7846621))

(assert (= (and b!7846078 ((_ is Concat!29910) (reg!21394 r2!6165))) b!7846622))

(assert (= (and b!7846078 ((_ is Star!21065) (reg!21394 r2!6165))) b!7846623))

(assert (= (and b!7846078 ((_ is Union!21065) (reg!21394 r2!6165))) b!7846624))

(declare-fun b!7846628 () Bool)

(declare-fun e!4638827 () Bool)

(declare-fun tp!2323253 () Bool)

(declare-fun tp!2323256 () Bool)

(assert (=> b!7846628 (= e!4638827 (and tp!2323253 tp!2323256))))

(declare-fun b!7846627 () Bool)

(declare-fun tp!2323254 () Bool)

(assert (=> b!7846627 (= e!4638827 tp!2323254)))

(declare-fun b!7846626 () Bool)

(declare-fun tp!2323252 () Bool)

(declare-fun tp!2323255 () Bool)

(assert (=> b!7846626 (= e!4638827 (and tp!2323252 tp!2323255))))

(declare-fun b!7846625 () Bool)

(assert (=> b!7846625 (= e!4638827 tp_is_empty!52529)))

(assert (=> b!7846077 (= tp!2323141 e!4638827)))

(assert (= (and b!7846077 ((_ is ElementMatch!21065) (regOne!42642 r2!6165))) b!7846625))

(assert (= (and b!7846077 ((_ is Concat!29910) (regOne!42642 r2!6165))) b!7846626))

(assert (= (and b!7846077 ((_ is Star!21065) (regOne!42642 r2!6165))) b!7846627))

(assert (= (and b!7846077 ((_ is Union!21065) (regOne!42642 r2!6165))) b!7846628))

(declare-fun b!7846632 () Bool)

(declare-fun e!4638828 () Bool)

(declare-fun tp!2323258 () Bool)

(declare-fun tp!2323261 () Bool)

(assert (=> b!7846632 (= e!4638828 (and tp!2323258 tp!2323261))))

(declare-fun b!7846631 () Bool)

(declare-fun tp!2323259 () Bool)

(assert (=> b!7846631 (= e!4638828 tp!2323259)))

(declare-fun b!7846630 () Bool)

(declare-fun tp!2323257 () Bool)

(declare-fun tp!2323260 () Bool)

(assert (=> b!7846630 (= e!4638828 (and tp!2323257 tp!2323260))))

(declare-fun b!7846629 () Bool)

(assert (=> b!7846629 (= e!4638828 tp_is_empty!52529)))

(assert (=> b!7846077 (= tp!2323137 e!4638828)))

(assert (= (and b!7846077 ((_ is ElementMatch!21065) (regTwo!42642 r2!6165))) b!7846629))

(assert (= (and b!7846077 ((_ is Concat!29910) (regTwo!42642 r2!6165))) b!7846630))

(assert (= (and b!7846077 ((_ is Star!21065) (regTwo!42642 r2!6165))) b!7846631))

(assert (= (and b!7846077 ((_ is Union!21065) (regTwo!42642 r2!6165))) b!7846632))

(declare-fun b!7846636 () Bool)

(declare-fun e!4638829 () Bool)

(declare-fun tp!2323263 () Bool)

(declare-fun tp!2323266 () Bool)

(assert (=> b!7846636 (= e!4638829 (and tp!2323263 tp!2323266))))

(declare-fun b!7846635 () Bool)

(declare-fun tp!2323264 () Bool)

(assert (=> b!7846635 (= e!4638829 tp!2323264)))

(declare-fun b!7846634 () Bool)

(declare-fun tp!2323262 () Bool)

(declare-fun tp!2323265 () Bool)

(assert (=> b!7846634 (= e!4638829 (and tp!2323262 tp!2323265))))

(declare-fun b!7846633 () Bool)

(assert (=> b!7846633 (= e!4638829 tp_is_empty!52529)))

(assert (=> b!7846087 (= tp!2323147 e!4638829)))

(assert (= (and b!7846087 ((_ is ElementMatch!21065) (reg!21394 r1!6227))) b!7846633))

(assert (= (and b!7846087 ((_ is Concat!29910) (reg!21394 r1!6227))) b!7846634))

(assert (= (and b!7846087 ((_ is Star!21065) (reg!21394 r1!6227))) b!7846635))

(assert (= (and b!7846087 ((_ is Union!21065) (reg!21394 r1!6227))) b!7846636))

(declare-fun b!7846640 () Bool)

(declare-fun e!4638830 () Bool)

(declare-fun tp!2323268 () Bool)

(declare-fun tp!2323271 () Bool)

(assert (=> b!7846640 (= e!4638830 (and tp!2323268 tp!2323271))))

(declare-fun b!7846639 () Bool)

(declare-fun tp!2323269 () Bool)

(assert (=> b!7846639 (= e!4638830 tp!2323269)))

(declare-fun b!7846638 () Bool)

(declare-fun tp!2323267 () Bool)

(declare-fun tp!2323270 () Bool)

(assert (=> b!7846638 (= e!4638830 (and tp!2323267 tp!2323270))))

(declare-fun b!7846637 () Bool)

(assert (=> b!7846637 (= e!4638830 tp_is_empty!52529)))

(assert (=> b!7846092 (= tp!2323143 e!4638830)))

(assert (= (and b!7846092 ((_ is ElementMatch!21065) (regOne!42643 r2!6165))) b!7846637))

(assert (= (and b!7846092 ((_ is Concat!29910) (regOne!42643 r2!6165))) b!7846638))

(assert (= (and b!7846092 ((_ is Star!21065) (regOne!42643 r2!6165))) b!7846639))

(assert (= (and b!7846092 ((_ is Union!21065) (regOne!42643 r2!6165))) b!7846640))

(declare-fun b!7846644 () Bool)

(declare-fun e!4638831 () Bool)

(declare-fun tp!2323273 () Bool)

(declare-fun tp!2323276 () Bool)

(assert (=> b!7846644 (= e!4638831 (and tp!2323273 tp!2323276))))

(declare-fun b!7846643 () Bool)

(declare-fun tp!2323274 () Bool)

(assert (=> b!7846643 (= e!4638831 tp!2323274)))

(declare-fun b!7846642 () Bool)

(declare-fun tp!2323272 () Bool)

(declare-fun tp!2323275 () Bool)

(assert (=> b!7846642 (= e!4638831 (and tp!2323272 tp!2323275))))

(declare-fun b!7846641 () Bool)

(assert (=> b!7846641 (= e!4638831 tp_is_empty!52529)))

(assert (=> b!7846092 (= tp!2323144 e!4638831)))

(assert (= (and b!7846092 ((_ is ElementMatch!21065) (regTwo!42643 r2!6165))) b!7846641))

(assert (= (and b!7846092 ((_ is Concat!29910) (regTwo!42643 r2!6165))) b!7846642))

(assert (= (and b!7846092 ((_ is Star!21065) (regTwo!42643 r2!6165))) b!7846643))

(assert (= (and b!7846092 ((_ is Union!21065) (regTwo!42643 r2!6165))) b!7846644))

(check-sat (not bm!727041) (not b!7846552) (not b!7846330) (not b!7846640) (not b!7846334) (not b!7846613) (not b!7846116) (not b!7846631) (not d!2352791) (not b!7846299) (not d!2352831) (not b!7846391) (not b!7846273) (not b!7846623) (not b!7846184) (not b!7846632) (not b!7846644) (not b!7846337) (not b!7846624) (not bm!727094) (not b!7846394) (not b!7846643) (not b!7846481) (not bm!727047) (not b!7846553) (not b!7846638) (not b!7846604) (not b!7846329) (not b!7846606) (not b!7846386) (not b!7846498) (not b!7846600) (not b!7846340) (not b!7846390) (not bm!727096) (not bm!727074) (not b!7846355) (not b!7846401) (not b!7846532) (not b!7846602) (not bm!727077) (not b!7846634) (not d!2352853) (not d!2352825) (not bm!727066) (not bm!727101) (not d!2352815) (not b!7846622) (not b!7846619) (not b!7846609) (not b!7846605) (not bm!727072) (not d!2352799) (not b!7846522) (not b!7846387) (not bm!727015) (not b!7846269) (not b!7846212) (not b!7846525) (not b!7846270) (not b!7846630) (not bm!727016) (not b!7846346) (not b!7846610) (not d!2352797) (not b!7846526) (not b!7846333) (not bm!727075) (not b!7846612) (not d!2352847) (not b!7846277) (not b!7846521) (not bm!727071) (not d!2352851) (not b!7846274) (not b!7846635) (not b!7846608) (not b!7846529) (not b!7846614) (not d!2352819) (not b!7846429) (not b!7846620) (not b!7846280) (not b!7846398) (not b!7846628) (not b!7846395) (not b!7846642) (not bm!727063) tp_is_empty!52529 (not b!7846601) (not d!2352845) (not bm!727060) (not bm!727062) (not d!2352809) (not bm!727067) (not bm!727065) (not bm!727043) (not b!7846626) (not b!7846627) (not bm!727045) (not b!7846286) (not b!7846636) (not b!7846639))
(check-sat)
