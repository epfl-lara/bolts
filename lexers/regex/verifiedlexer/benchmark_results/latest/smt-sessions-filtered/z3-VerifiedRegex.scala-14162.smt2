; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743378 () Bool)

(assert start!743378)

(declare-fun b!7855176 () Bool)

(declare-fun e!4642844 () Bool)

(declare-fun tp!2326964 () Bool)

(declare-fun tp!2326969 () Bool)

(assert (=> b!7855176 (= e!4642844 (and tp!2326964 tp!2326969))))

(declare-fun b!7855177 () Bool)

(declare-fun e!4642842 () Bool)

(declare-fun tp_is_empty!52593 () Bool)

(assert (=> b!7855177 (= e!4642842 tp_is_empty!52593)))

(declare-fun b!7855178 () Bool)

(declare-fun res!3123241 () Bool)

(declare-fun e!4642845 () Bool)

(assert (=> b!7855178 (=> res!3123241 e!4642845)))

(declare-datatypes ((C!42520 0))(
  ( (C!42521 (val!31722 Int)) )
))
(declare-datatypes ((Regex!21097 0))(
  ( (ElementMatch!21097 (c!1443671 C!42520)) (Concat!29942 (regOne!42706 Regex!21097) (regTwo!42706 Regex!21097)) (EmptyExpr!21097) (Star!21097 (reg!21426 Regex!21097)) (EmptyLang!21097) (Union!21097 (regOne!42707 Regex!21097) (regTwo!42707 Regex!21097)) )
))
(declare-fun lt!2679956 () Regex!21097)

(declare-fun validRegex!11507 (Regex!21097) Bool)

(assert (=> b!7855178 (= res!3123241 (not (validRegex!11507 lt!2679956)))))

(declare-fun b!7855179 () Bool)

(declare-fun e!4642840 () Bool)

(assert (=> b!7855179 (= e!4642840 e!4642845)))

(declare-fun res!3123242 () Bool)

(assert (=> b!7855179 (=> res!3123242 e!4642845)))

(declare-datatypes ((List!73956 0))(
  ( (Nil!73832) (Cons!73832 (h!80280 C!42520) (t!388691 List!73956)) )
))
(declare-fun s1!4084 () List!73956)

(declare-fun lt!2679952 () Regex!21097)

(declare-fun lt!2679951 () Regex!21097)

(declare-fun derivativeStep!6332 (Regex!21097 C!42520) Regex!21097)

(assert (=> b!7855179 (= res!3123242 (not (= (derivativeStep!6332 lt!2679952 (h!80280 s1!4084)) lt!2679951)))))

(declare-fun lt!2679955 () Regex!21097)

(assert (=> b!7855179 (= lt!2679951 (Union!21097 lt!2679956 lt!2679955))))

(declare-fun r2!6165 () Regex!21097)

(assert (=> b!7855179 (= lt!2679955 (derivativeStep!6332 r2!6165 (h!80280 s1!4084)))))

(declare-fun r1!6227 () Regex!21097)

(assert (=> b!7855179 (= lt!2679952 (Concat!29942 r1!6227 r2!6165))))

(declare-fun b!7855180 () Bool)

(declare-fun tp!2326970 () Bool)

(declare-fun tp!2326965 () Bool)

(assert (=> b!7855180 (= e!4642842 (and tp!2326970 tp!2326965))))

(declare-fun b!7855181 () Bool)

(declare-fun res!3123244 () Bool)

(declare-fun e!4642839 () Bool)

(assert (=> b!7855181 (=> (not res!3123244) (not e!4642839))))

(assert (=> b!7855181 (= res!3123244 (validRegex!11507 r2!6165))))

(declare-fun b!7855182 () Bool)

(declare-fun res!3123239 () Bool)

(assert (=> b!7855182 (=> (not res!3123239) (not e!4642839))))

(get-info :version)

(assert (=> b!7855182 (= res!3123239 ((_ is Cons!73832) s1!4084))))

(declare-fun b!7855183 () Bool)

(declare-fun s2!3706 () List!73956)

(declare-fun matchR!10533 (Regex!21097 List!73956) Bool)

(declare-fun ++!18097 (List!73956 List!73956) List!73956)

(assert (=> b!7855183 (= e!4642845 (matchR!10533 lt!2679952 (++!18097 s1!4084 s2!3706)))))

(declare-fun lt!2679957 () List!73956)

(assert (=> b!7855183 (matchR!10533 lt!2679951 lt!2679957)))

(declare-datatypes ((Unit!168920 0))(
  ( (Unit!168921) )
))
(declare-fun lt!2679950 () Unit!168920)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!128 (Regex!21097 Regex!21097 List!73956) Unit!168920)

(assert (=> b!7855183 (= lt!2679950 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!128 lt!2679956 lt!2679955 lt!2679957))))

(declare-fun b!7855184 () Bool)

(declare-fun res!3123236 () Bool)

(assert (=> b!7855184 (=> res!3123236 e!4642845)))

(assert (=> b!7855184 (= res!3123236 (not (validRegex!11507 lt!2679955)))))

(declare-fun b!7855185 () Bool)

(declare-fun tp!2326966 () Bool)

(assert (=> b!7855185 (= e!4642844 tp!2326966)))

(declare-fun b!7855186 () Bool)

(declare-fun res!3123240 () Bool)

(assert (=> b!7855186 (=> (not res!3123240) (not e!4642839))))

(assert (=> b!7855186 (= res!3123240 (matchR!10533 r2!6165 s2!3706))))

(declare-fun b!7855187 () Bool)

(declare-fun tp!2326963 () Bool)

(declare-fun tp!2326962 () Bool)

(assert (=> b!7855187 (= e!4642842 (and tp!2326963 tp!2326962))))

(declare-fun b!7855188 () Bool)

(declare-fun tp!2326968 () Bool)

(assert (=> b!7855188 (= e!4642842 tp!2326968)))

(declare-fun b!7855189 () Bool)

(declare-fun e!4642841 () Bool)

(declare-fun tp!2326972 () Bool)

(assert (=> b!7855189 (= e!4642841 (and tp_is_empty!52593 tp!2326972))))

(declare-fun b!7855190 () Bool)

(declare-fun res!3123238 () Bool)

(assert (=> b!7855190 (=> (not res!3123238) (not e!4642839))))

(assert (=> b!7855190 (= res!3123238 (matchR!10533 r1!6227 s1!4084))))

(declare-fun b!7855191 () Bool)

(assert (=> b!7855191 (= e!4642844 tp_is_empty!52593)))

(declare-fun b!7855192 () Bool)

(declare-fun tp!2326967 () Bool)

(declare-fun tp!2326961 () Bool)

(assert (=> b!7855192 (= e!4642844 (and tp!2326967 tp!2326961))))

(declare-fun b!7855193 () Bool)

(declare-fun e!4642843 () Bool)

(declare-fun tp!2326971 () Bool)

(assert (=> b!7855193 (= e!4642843 (and tp_is_empty!52593 tp!2326971))))

(declare-fun res!3123237 () Bool)

(assert (=> start!743378 (=> (not res!3123237) (not e!4642839))))

(assert (=> start!743378 (= res!3123237 (validRegex!11507 r1!6227))))

(assert (=> start!743378 e!4642839))

(assert (=> start!743378 e!4642842))

(assert (=> start!743378 e!4642844))

(assert (=> start!743378 e!4642843))

(assert (=> start!743378 e!4642841))

(declare-fun b!7855194 () Bool)

(assert (=> b!7855194 (= e!4642839 (not e!4642840))))

(declare-fun res!3123243 () Bool)

(assert (=> b!7855194 (=> res!3123243 e!4642840)))

(declare-fun nullable!9369 (Regex!21097) Bool)

(assert (=> b!7855194 (= res!3123243 (not (nullable!9369 r1!6227)))))

(assert (=> b!7855194 (matchR!10533 lt!2679956 lt!2679957)))

(assert (=> b!7855194 (= lt!2679957 (++!18097 (t!388691 s1!4084) s2!3706))))

(declare-fun lt!2679953 () Regex!21097)

(assert (=> b!7855194 (= lt!2679956 (Concat!29942 lt!2679953 r2!6165))))

(declare-fun lt!2679954 () Unit!168920)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!456 (Regex!21097 Regex!21097 List!73956 List!73956) Unit!168920)

(assert (=> b!7855194 (= lt!2679954 (lemmaTwoRegexMatchThenConcatMatchesConcatString!456 lt!2679953 r2!6165 (t!388691 s1!4084) s2!3706))))

(assert (=> b!7855194 (= lt!2679953 (derivativeStep!6332 r1!6227 (h!80280 s1!4084)))))

(assert (= (and start!743378 res!3123237) b!7855181))

(assert (= (and b!7855181 res!3123244) b!7855190))

(assert (= (and b!7855190 res!3123238) b!7855186))

(assert (= (and b!7855186 res!3123240) b!7855182))

(assert (= (and b!7855182 res!3123239) b!7855194))

(assert (= (and b!7855194 (not res!3123243)) b!7855179))

(assert (= (and b!7855179 (not res!3123242)) b!7855178))

(assert (= (and b!7855178 (not res!3123241)) b!7855184))

(assert (= (and b!7855184 (not res!3123236)) b!7855183))

(assert (= (and start!743378 ((_ is ElementMatch!21097) r1!6227)) b!7855177))

(assert (= (and start!743378 ((_ is Concat!29942) r1!6227)) b!7855187))

(assert (= (and start!743378 ((_ is Star!21097) r1!6227)) b!7855188))

(assert (= (and start!743378 ((_ is Union!21097) r1!6227)) b!7855180))

(assert (= (and start!743378 ((_ is ElementMatch!21097) r2!6165)) b!7855191))

(assert (= (and start!743378 ((_ is Concat!29942) r2!6165)) b!7855192))

(assert (= (and start!743378 ((_ is Star!21097) r2!6165)) b!7855185))

(assert (= (and start!743378 ((_ is Union!21097) r2!6165)) b!7855176))

(assert (= (and start!743378 ((_ is Cons!73832) s1!4084)) b!7855193))

(assert (= (and start!743378 ((_ is Cons!73832) s2!3706)) b!7855189))

(declare-fun m!8259890 () Bool)

(assert (=> b!7855179 m!8259890))

(declare-fun m!8259892 () Bool)

(assert (=> b!7855179 m!8259892))

(declare-fun m!8259894 () Bool)

(assert (=> b!7855184 m!8259894))

(declare-fun m!8259896 () Bool)

(assert (=> b!7855186 m!8259896))

(declare-fun m!8259898 () Bool)

(assert (=> start!743378 m!8259898))

(declare-fun m!8259900 () Bool)

(assert (=> b!7855181 m!8259900))

(declare-fun m!8259902 () Bool)

(assert (=> b!7855178 m!8259902))

(declare-fun m!8259904 () Bool)

(assert (=> b!7855194 m!8259904))

(declare-fun m!8259906 () Bool)

(assert (=> b!7855194 m!8259906))

(declare-fun m!8259908 () Bool)

(assert (=> b!7855194 m!8259908))

(declare-fun m!8259910 () Bool)

(assert (=> b!7855194 m!8259910))

(declare-fun m!8259912 () Bool)

(assert (=> b!7855194 m!8259912))

(declare-fun m!8259914 () Bool)

(assert (=> b!7855190 m!8259914))

(declare-fun m!8259916 () Bool)

(assert (=> b!7855183 m!8259916))

(assert (=> b!7855183 m!8259916))

(declare-fun m!8259918 () Bool)

(assert (=> b!7855183 m!8259918))

(declare-fun m!8259920 () Bool)

(assert (=> b!7855183 m!8259920))

(declare-fun m!8259922 () Bool)

(assert (=> b!7855183 m!8259922))

(check-sat (not b!7855179) (not b!7855184) (not b!7855176) tp_is_empty!52593 (not b!7855185) (not b!7855186) (not b!7855189) (not b!7855181) (not b!7855192) (not b!7855187) (not b!7855180) (not b!7855178) (not b!7855194) (not start!743378) (not b!7855183) (not b!7855193) (not b!7855188) (not b!7855190))
(check-sat)
(get-model)

(declare-fun b!7855250 () Bool)

(declare-fun e!4642885 () Bool)

(declare-fun e!4642881 () Bool)

(assert (=> b!7855250 (= e!4642885 e!4642881)))

(declare-fun res!3123281 () Bool)

(assert (=> b!7855250 (=> (not res!3123281) (not e!4642881))))

(declare-fun lt!2679960 () Bool)

(assert (=> b!7855250 (= res!3123281 (not lt!2679960))))

(declare-fun b!7855251 () Bool)

(declare-fun e!4642883 () Bool)

(declare-fun head!16054 (List!73956) C!42520)

(assert (=> b!7855251 (= e!4642883 (= (head!16054 s2!3706) (c!1443671 r2!6165)))))

(declare-fun b!7855252 () Bool)

(declare-fun e!4642886 () Bool)

(assert (=> b!7855252 (= e!4642881 e!4642886)))

(declare-fun res!3123280 () Bool)

(assert (=> b!7855252 (=> res!3123280 e!4642886)))

(declare-fun call!728136 () Bool)

(assert (=> b!7855252 (= res!3123280 call!728136)))

(declare-fun b!7855253 () Bool)

(declare-fun e!4642887 () Bool)

(assert (=> b!7855253 (= e!4642887 (nullable!9369 r2!6165))))

(declare-fun b!7855254 () Bool)

(declare-fun res!3123277 () Bool)

(assert (=> b!7855254 (=> res!3123277 e!4642885)))

(assert (=> b!7855254 (= res!3123277 (not ((_ is ElementMatch!21097) r2!6165)))))

(declare-fun e!4642884 () Bool)

(assert (=> b!7855254 (= e!4642884 e!4642885)))

(declare-fun b!7855255 () Bool)

(declare-fun e!4642882 () Bool)

(assert (=> b!7855255 (= e!4642882 (= lt!2679960 call!728136))))

(declare-fun d!2353761 () Bool)

(assert (=> d!2353761 e!4642882))

(declare-fun c!1443684 () Bool)

(assert (=> d!2353761 (= c!1443684 ((_ is EmptyExpr!21097) r2!6165))))

(assert (=> d!2353761 (= lt!2679960 e!4642887)))

(declare-fun c!1443686 () Bool)

(declare-fun isEmpty!42343 (List!73956) Bool)

(assert (=> d!2353761 (= c!1443686 (isEmpty!42343 s2!3706))))

(assert (=> d!2353761 (validRegex!11507 r2!6165)))

(assert (=> d!2353761 (= (matchR!10533 r2!6165 s2!3706) lt!2679960)))

(declare-fun b!7855256 () Bool)

(declare-fun res!3123282 () Bool)

(assert (=> b!7855256 (=> (not res!3123282) (not e!4642883))))

(assert (=> b!7855256 (= res!3123282 (not call!728136))))

(declare-fun b!7855257 () Bool)

(assert (=> b!7855257 (= e!4642882 e!4642884)))

(declare-fun c!1443685 () Bool)

(assert (=> b!7855257 (= c!1443685 ((_ is EmptyLang!21097) r2!6165))))

(declare-fun b!7855258 () Bool)

(assert (=> b!7855258 (= e!4642884 (not lt!2679960))))

(declare-fun b!7855259 () Bool)

(declare-fun res!3123283 () Bool)

(assert (=> b!7855259 (=> res!3123283 e!4642885)))

(assert (=> b!7855259 (= res!3123283 e!4642883)))

(declare-fun res!3123276 () Bool)

(assert (=> b!7855259 (=> (not res!3123276) (not e!4642883))))

(assert (=> b!7855259 (= res!3123276 lt!2679960)))

(declare-fun bm!728131 () Bool)

(assert (=> bm!728131 (= call!728136 (isEmpty!42343 s2!3706))))

(declare-fun b!7855260 () Bool)

(declare-fun tail!15597 (List!73956) List!73956)

(assert (=> b!7855260 (= e!4642887 (matchR!10533 (derivativeStep!6332 r2!6165 (head!16054 s2!3706)) (tail!15597 s2!3706)))))

(declare-fun b!7855261 () Bool)

(declare-fun res!3123279 () Bool)

(assert (=> b!7855261 (=> res!3123279 e!4642886)))

(assert (=> b!7855261 (= res!3123279 (not (isEmpty!42343 (tail!15597 s2!3706))))))

(declare-fun b!7855262 () Bool)

(assert (=> b!7855262 (= e!4642886 (not (= (head!16054 s2!3706) (c!1443671 r2!6165))))))

(declare-fun b!7855263 () Bool)

(declare-fun res!3123278 () Bool)

(assert (=> b!7855263 (=> (not res!3123278) (not e!4642883))))

(assert (=> b!7855263 (= res!3123278 (isEmpty!42343 (tail!15597 s2!3706)))))

(assert (= (and d!2353761 c!1443686) b!7855253))

(assert (= (and d!2353761 (not c!1443686)) b!7855260))

(assert (= (and d!2353761 c!1443684) b!7855255))

(assert (= (and d!2353761 (not c!1443684)) b!7855257))

(assert (= (and b!7855257 c!1443685) b!7855258))

(assert (= (and b!7855257 (not c!1443685)) b!7855254))

(assert (= (and b!7855254 (not res!3123277)) b!7855259))

(assert (= (and b!7855259 res!3123276) b!7855256))

(assert (= (and b!7855256 res!3123282) b!7855263))

(assert (= (and b!7855263 res!3123278) b!7855251))

(assert (= (and b!7855259 (not res!3123283)) b!7855250))

(assert (= (and b!7855250 res!3123281) b!7855252))

(assert (= (and b!7855252 (not res!3123280)) b!7855261))

(assert (= (and b!7855261 (not res!3123279)) b!7855262))

(assert (= (or b!7855255 b!7855252 b!7855256) bm!728131))

(declare-fun m!8259930 () Bool)

(assert (=> b!7855251 m!8259930))

(assert (=> b!7855260 m!8259930))

(assert (=> b!7855260 m!8259930))

(declare-fun m!8259932 () Bool)

(assert (=> b!7855260 m!8259932))

(declare-fun m!8259934 () Bool)

(assert (=> b!7855260 m!8259934))

(assert (=> b!7855260 m!8259932))

(assert (=> b!7855260 m!8259934))

(declare-fun m!8259936 () Bool)

(assert (=> b!7855260 m!8259936))

(assert (=> b!7855262 m!8259930))

(declare-fun m!8259938 () Bool)

(assert (=> d!2353761 m!8259938))

(assert (=> d!2353761 m!8259900))

(assert (=> bm!728131 m!8259938))

(assert (=> b!7855261 m!8259934))

(assert (=> b!7855261 m!8259934))

(declare-fun m!8259940 () Bool)

(assert (=> b!7855261 m!8259940))

(declare-fun m!8259942 () Bool)

(assert (=> b!7855253 m!8259942))

(assert (=> b!7855263 m!8259934))

(assert (=> b!7855263 m!8259934))

(assert (=> b!7855263 m!8259940))

(assert (=> b!7855186 d!2353761))

(declare-fun bm!728141 () Bool)

(declare-fun call!728148 () Bool)

(declare-fun call!728147 () Bool)

(assert (=> bm!728141 (= call!728148 call!728147)))

(declare-fun b!7855324 () Bool)

(declare-fun e!4642929 () Bool)

(assert (=> b!7855324 (= e!4642929 call!728148)))

(declare-fun b!7855325 () Bool)

(declare-fun e!4642925 () Bool)

(declare-fun call!728146 () Bool)

(assert (=> b!7855325 (= e!4642925 call!728146)))

(declare-fun b!7855326 () Bool)

(declare-fun e!4642923 () Bool)

(assert (=> b!7855326 (= e!4642923 call!728147)))

(declare-fun bm!728142 () Bool)

(declare-fun c!1443701 () Bool)

(declare-fun c!1443700 () Bool)

(assert (=> bm!728142 (= call!728147 (validRegex!11507 (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun b!7855328 () Bool)

(declare-fun e!4642928 () Bool)

(assert (=> b!7855328 (= e!4642928 e!4642923)))

(declare-fun res!3123321 () Bool)

(assert (=> b!7855328 (= res!3123321 (not (nullable!9369 (reg!21426 r2!6165))))))

(assert (=> b!7855328 (=> (not res!3123321) (not e!4642923))))

(declare-fun b!7855329 () Bool)

(declare-fun res!3123320 () Bool)

(assert (=> b!7855329 (=> (not res!3123320) (not e!4642929))))

(assert (=> b!7855329 (= res!3123320 call!728146)))

(declare-fun e!4642927 () Bool)

(assert (=> b!7855329 (= e!4642927 e!4642929)))

(declare-fun b!7855327 () Bool)

(assert (=> b!7855327 (= e!4642928 e!4642927)))

(assert (=> b!7855327 (= c!1443700 ((_ is Union!21097) r2!6165))))

(declare-fun d!2353765 () Bool)

(declare-fun res!3123318 () Bool)

(declare-fun e!4642924 () Bool)

(assert (=> d!2353765 (=> res!3123318 e!4642924)))

(assert (=> d!2353765 (= res!3123318 ((_ is ElementMatch!21097) r2!6165))))

(assert (=> d!2353765 (= (validRegex!11507 r2!6165) e!4642924)))

(declare-fun bm!728143 () Bool)

(assert (=> bm!728143 (= call!728146 (validRegex!11507 (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))))))

(declare-fun b!7855330 () Bool)

(declare-fun res!3123319 () Bool)

(declare-fun e!4642926 () Bool)

(assert (=> b!7855330 (=> res!3123319 e!4642926)))

(assert (=> b!7855330 (= res!3123319 (not ((_ is Concat!29942) r2!6165)))))

(assert (=> b!7855330 (= e!4642927 e!4642926)))

(declare-fun b!7855331 () Bool)

(assert (=> b!7855331 (= e!4642924 e!4642928)))

(assert (=> b!7855331 (= c!1443701 ((_ is Star!21097) r2!6165))))

(declare-fun b!7855332 () Bool)

(assert (=> b!7855332 (= e!4642926 e!4642925)))

(declare-fun res!3123322 () Bool)

(assert (=> b!7855332 (=> (not res!3123322) (not e!4642925))))

(assert (=> b!7855332 (= res!3123322 call!728148)))

(assert (= (and d!2353765 (not res!3123318)) b!7855331))

(assert (= (and b!7855331 c!1443701) b!7855328))

(assert (= (and b!7855331 (not c!1443701)) b!7855327))

(assert (= (and b!7855328 res!3123321) b!7855326))

(assert (= (and b!7855327 c!1443700) b!7855329))

(assert (= (and b!7855327 (not c!1443700)) b!7855330))

(assert (= (and b!7855329 res!3123320) b!7855324))

(assert (= (and b!7855330 (not res!3123319)) b!7855332))

(assert (= (and b!7855332 res!3123322) b!7855325))

(assert (= (or b!7855329 b!7855325) bm!728143))

(assert (= (or b!7855324 b!7855332) bm!728141))

(assert (= (or b!7855326 bm!728141) bm!728142))

(declare-fun m!8259960 () Bool)

(assert (=> bm!728142 m!8259960))

(declare-fun m!8259962 () Bool)

(assert (=> b!7855328 m!8259962))

(declare-fun m!8259964 () Bool)

(assert (=> bm!728143 m!8259964))

(assert (=> b!7855181 d!2353765))

(declare-fun bm!728144 () Bool)

(declare-fun call!728151 () Bool)

(declare-fun call!728150 () Bool)

(assert (=> bm!728144 (= call!728151 call!728150)))

(declare-fun b!7855333 () Bool)

(declare-fun e!4642936 () Bool)

(assert (=> b!7855333 (= e!4642936 call!728151)))

(declare-fun b!7855334 () Bool)

(declare-fun e!4642932 () Bool)

(declare-fun call!728149 () Bool)

(assert (=> b!7855334 (= e!4642932 call!728149)))

(declare-fun b!7855335 () Bool)

(declare-fun e!4642930 () Bool)

(assert (=> b!7855335 (= e!4642930 call!728150)))

(declare-fun c!1443703 () Bool)

(declare-fun bm!728145 () Bool)

(declare-fun c!1443702 () Bool)

(assert (=> bm!728145 (= call!728150 (validRegex!11507 (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun b!7855337 () Bool)

(declare-fun e!4642935 () Bool)

(assert (=> b!7855337 (= e!4642935 e!4642930)))

(declare-fun res!3123326 () Bool)

(assert (=> b!7855337 (= res!3123326 (not (nullable!9369 (reg!21426 r1!6227))))))

(assert (=> b!7855337 (=> (not res!3123326) (not e!4642930))))

(declare-fun b!7855338 () Bool)

(declare-fun res!3123325 () Bool)

(assert (=> b!7855338 (=> (not res!3123325) (not e!4642936))))

(assert (=> b!7855338 (= res!3123325 call!728149)))

(declare-fun e!4642934 () Bool)

(assert (=> b!7855338 (= e!4642934 e!4642936)))

(declare-fun b!7855336 () Bool)

(assert (=> b!7855336 (= e!4642935 e!4642934)))

(assert (=> b!7855336 (= c!1443702 ((_ is Union!21097) r1!6227))))

(declare-fun d!2353769 () Bool)

(declare-fun res!3123323 () Bool)

(declare-fun e!4642931 () Bool)

(assert (=> d!2353769 (=> res!3123323 e!4642931)))

(assert (=> d!2353769 (= res!3123323 ((_ is ElementMatch!21097) r1!6227))))

(assert (=> d!2353769 (= (validRegex!11507 r1!6227) e!4642931)))

(declare-fun bm!728146 () Bool)

(assert (=> bm!728146 (= call!728149 (validRegex!11507 (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))))))

(declare-fun b!7855339 () Bool)

(declare-fun res!3123324 () Bool)

(declare-fun e!4642933 () Bool)

(assert (=> b!7855339 (=> res!3123324 e!4642933)))

(assert (=> b!7855339 (= res!3123324 (not ((_ is Concat!29942) r1!6227)))))

(assert (=> b!7855339 (= e!4642934 e!4642933)))

(declare-fun b!7855340 () Bool)

(assert (=> b!7855340 (= e!4642931 e!4642935)))

(assert (=> b!7855340 (= c!1443703 ((_ is Star!21097) r1!6227))))

(declare-fun b!7855341 () Bool)

(assert (=> b!7855341 (= e!4642933 e!4642932)))

(declare-fun res!3123327 () Bool)

(assert (=> b!7855341 (=> (not res!3123327) (not e!4642932))))

(assert (=> b!7855341 (= res!3123327 call!728151)))

(assert (= (and d!2353769 (not res!3123323)) b!7855340))

(assert (= (and b!7855340 c!1443703) b!7855337))

(assert (= (and b!7855340 (not c!1443703)) b!7855336))

(assert (= (and b!7855337 res!3123326) b!7855335))

(assert (= (and b!7855336 c!1443702) b!7855338))

(assert (= (and b!7855336 (not c!1443702)) b!7855339))

(assert (= (and b!7855338 res!3123325) b!7855333))

(assert (= (and b!7855339 (not res!3123324)) b!7855341))

(assert (= (and b!7855341 res!3123327) b!7855334))

(assert (= (or b!7855338 b!7855334) bm!728146))

(assert (= (or b!7855333 b!7855341) bm!728144))

(assert (= (or b!7855335 bm!728144) bm!728145))

(declare-fun m!8259966 () Bool)

(assert (=> bm!728145 m!8259966))

(declare-fun m!8259968 () Bool)

(assert (=> b!7855337 m!8259968))

(declare-fun m!8259970 () Bool)

(assert (=> bm!728146 m!8259970))

(assert (=> start!743378 d!2353769))

(declare-fun b!7855342 () Bool)

(declare-fun e!4642941 () Bool)

(declare-fun e!4642937 () Bool)

(assert (=> b!7855342 (= e!4642941 e!4642937)))

(declare-fun res!3123333 () Bool)

(assert (=> b!7855342 (=> (not res!3123333) (not e!4642937))))

(declare-fun lt!2679964 () Bool)

(assert (=> b!7855342 (= res!3123333 (not lt!2679964))))

(declare-fun e!4642939 () Bool)

(declare-fun b!7855343 () Bool)

(assert (=> b!7855343 (= e!4642939 (= (head!16054 (++!18097 s1!4084 s2!3706)) (c!1443671 lt!2679952)))))

(declare-fun b!7855344 () Bool)

(declare-fun e!4642942 () Bool)

(assert (=> b!7855344 (= e!4642937 e!4642942)))

(declare-fun res!3123332 () Bool)

(assert (=> b!7855344 (=> res!3123332 e!4642942)))

(declare-fun call!728152 () Bool)

(assert (=> b!7855344 (= res!3123332 call!728152)))

(declare-fun b!7855345 () Bool)

(declare-fun e!4642943 () Bool)

(assert (=> b!7855345 (= e!4642943 (nullable!9369 lt!2679952))))

(declare-fun b!7855346 () Bool)

(declare-fun res!3123329 () Bool)

(assert (=> b!7855346 (=> res!3123329 e!4642941)))

(assert (=> b!7855346 (= res!3123329 (not ((_ is ElementMatch!21097) lt!2679952)))))

(declare-fun e!4642940 () Bool)

(assert (=> b!7855346 (= e!4642940 e!4642941)))

(declare-fun b!7855347 () Bool)

(declare-fun e!4642938 () Bool)

(assert (=> b!7855347 (= e!4642938 (= lt!2679964 call!728152))))

(declare-fun d!2353771 () Bool)

(assert (=> d!2353771 e!4642938))

(declare-fun c!1443704 () Bool)

(assert (=> d!2353771 (= c!1443704 ((_ is EmptyExpr!21097) lt!2679952))))

(assert (=> d!2353771 (= lt!2679964 e!4642943)))

(declare-fun c!1443706 () Bool)

(assert (=> d!2353771 (= c!1443706 (isEmpty!42343 (++!18097 s1!4084 s2!3706)))))

(assert (=> d!2353771 (validRegex!11507 lt!2679952)))

(assert (=> d!2353771 (= (matchR!10533 lt!2679952 (++!18097 s1!4084 s2!3706)) lt!2679964)))

(declare-fun b!7855348 () Bool)

(declare-fun res!3123334 () Bool)

(assert (=> b!7855348 (=> (not res!3123334) (not e!4642939))))

(assert (=> b!7855348 (= res!3123334 (not call!728152))))

(declare-fun b!7855349 () Bool)

(assert (=> b!7855349 (= e!4642938 e!4642940)))

(declare-fun c!1443705 () Bool)

(assert (=> b!7855349 (= c!1443705 ((_ is EmptyLang!21097) lt!2679952))))

(declare-fun b!7855350 () Bool)

(assert (=> b!7855350 (= e!4642940 (not lt!2679964))))

(declare-fun b!7855351 () Bool)

(declare-fun res!3123335 () Bool)

(assert (=> b!7855351 (=> res!3123335 e!4642941)))

(assert (=> b!7855351 (= res!3123335 e!4642939)))

(declare-fun res!3123328 () Bool)

(assert (=> b!7855351 (=> (not res!3123328) (not e!4642939))))

(assert (=> b!7855351 (= res!3123328 lt!2679964)))

(declare-fun bm!728147 () Bool)

(assert (=> bm!728147 (= call!728152 (isEmpty!42343 (++!18097 s1!4084 s2!3706)))))

(declare-fun b!7855352 () Bool)

(assert (=> b!7855352 (= e!4642943 (matchR!10533 (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706))) (tail!15597 (++!18097 s1!4084 s2!3706))))))

(declare-fun b!7855353 () Bool)

(declare-fun res!3123331 () Bool)

(assert (=> b!7855353 (=> res!3123331 e!4642942)))

(assert (=> b!7855353 (= res!3123331 (not (isEmpty!42343 (tail!15597 (++!18097 s1!4084 s2!3706)))))))

(declare-fun b!7855354 () Bool)

(assert (=> b!7855354 (= e!4642942 (not (= (head!16054 (++!18097 s1!4084 s2!3706)) (c!1443671 lt!2679952))))))

(declare-fun b!7855355 () Bool)

(declare-fun res!3123330 () Bool)

(assert (=> b!7855355 (=> (not res!3123330) (not e!4642939))))

(assert (=> b!7855355 (= res!3123330 (isEmpty!42343 (tail!15597 (++!18097 s1!4084 s2!3706))))))

(assert (= (and d!2353771 c!1443706) b!7855345))

(assert (= (and d!2353771 (not c!1443706)) b!7855352))

(assert (= (and d!2353771 c!1443704) b!7855347))

(assert (= (and d!2353771 (not c!1443704)) b!7855349))

(assert (= (and b!7855349 c!1443705) b!7855350))

(assert (= (and b!7855349 (not c!1443705)) b!7855346))

(assert (= (and b!7855346 (not res!3123329)) b!7855351))

(assert (= (and b!7855351 res!3123328) b!7855348))

(assert (= (and b!7855348 res!3123334) b!7855355))

(assert (= (and b!7855355 res!3123330) b!7855343))

(assert (= (and b!7855351 (not res!3123335)) b!7855342))

(assert (= (and b!7855342 res!3123333) b!7855344))

(assert (= (and b!7855344 (not res!3123332)) b!7855353))

(assert (= (and b!7855353 (not res!3123331)) b!7855354))

(assert (= (or b!7855347 b!7855344 b!7855348) bm!728147))

(assert (=> b!7855343 m!8259916))

(declare-fun m!8259972 () Bool)

(assert (=> b!7855343 m!8259972))

(assert (=> b!7855352 m!8259916))

(assert (=> b!7855352 m!8259972))

(assert (=> b!7855352 m!8259972))

(declare-fun m!8259974 () Bool)

(assert (=> b!7855352 m!8259974))

(assert (=> b!7855352 m!8259916))

(declare-fun m!8259976 () Bool)

(assert (=> b!7855352 m!8259976))

(assert (=> b!7855352 m!8259974))

(assert (=> b!7855352 m!8259976))

(declare-fun m!8259978 () Bool)

(assert (=> b!7855352 m!8259978))

(assert (=> b!7855354 m!8259916))

(assert (=> b!7855354 m!8259972))

(assert (=> d!2353771 m!8259916))

(declare-fun m!8259980 () Bool)

(assert (=> d!2353771 m!8259980))

(declare-fun m!8259982 () Bool)

(assert (=> d!2353771 m!8259982))

(assert (=> bm!728147 m!8259916))

(assert (=> bm!728147 m!8259980))

(assert (=> b!7855353 m!8259916))

(assert (=> b!7855353 m!8259976))

(assert (=> b!7855353 m!8259976))

(declare-fun m!8259984 () Bool)

(assert (=> b!7855353 m!8259984))

(declare-fun m!8259986 () Bool)

(assert (=> b!7855345 m!8259986))

(assert (=> b!7855355 m!8259916))

(assert (=> b!7855355 m!8259976))

(assert (=> b!7855355 m!8259976))

(assert (=> b!7855355 m!8259984))

(assert (=> b!7855183 d!2353771))

(declare-fun e!4642963 () Bool)

(declare-fun b!7855395 () Bool)

(declare-fun lt!2679973 () List!73956)

(assert (=> b!7855395 (= e!4642963 (or (not (= s2!3706 Nil!73832)) (= lt!2679973 s1!4084)))))

(declare-fun b!7855392 () Bool)

(declare-fun e!4642964 () List!73956)

(assert (=> b!7855392 (= e!4642964 s2!3706)))

(declare-fun b!7855393 () Bool)

(assert (=> b!7855393 (= e!4642964 (Cons!73832 (h!80280 s1!4084) (++!18097 (t!388691 s1!4084) s2!3706)))))

(declare-fun b!7855394 () Bool)

(declare-fun res!3123357 () Bool)

(assert (=> b!7855394 (=> (not res!3123357) (not e!4642963))))

(declare-fun size!42834 (List!73956) Int)

(assert (=> b!7855394 (= res!3123357 (= (size!42834 lt!2679973) (+ (size!42834 s1!4084) (size!42834 s2!3706))))))

(declare-fun d!2353773 () Bool)

(assert (=> d!2353773 e!4642963))

(declare-fun res!3123356 () Bool)

(assert (=> d!2353773 (=> (not res!3123356) (not e!4642963))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15681 (List!73956) (InoxSet C!42520))

(assert (=> d!2353773 (= res!3123356 (= (content!15681 lt!2679973) ((_ map or) (content!15681 s1!4084) (content!15681 s2!3706))))))

(assert (=> d!2353773 (= lt!2679973 e!4642964)))

(declare-fun c!1443715 () Bool)

(assert (=> d!2353773 (= c!1443715 ((_ is Nil!73832) s1!4084))))

(assert (=> d!2353773 (= (++!18097 s1!4084 s2!3706) lt!2679973)))

(assert (= (and d!2353773 c!1443715) b!7855392))

(assert (= (and d!2353773 (not c!1443715)) b!7855393))

(assert (= (and d!2353773 res!3123356) b!7855394))

(assert (= (and b!7855394 res!3123357) b!7855395))

(assert (=> b!7855393 m!8259912))

(declare-fun m!8260016 () Bool)

(assert (=> b!7855394 m!8260016))

(declare-fun m!8260020 () Bool)

(assert (=> b!7855394 m!8260020))

(declare-fun m!8260022 () Bool)

(assert (=> b!7855394 m!8260022))

(declare-fun m!8260026 () Bool)

(assert (=> d!2353773 m!8260026))

(declare-fun m!8260028 () Bool)

(assert (=> d!2353773 m!8260028))

(declare-fun m!8260030 () Bool)

(assert (=> d!2353773 m!8260030))

(assert (=> b!7855183 d!2353773))

(declare-fun b!7855397 () Bool)

(declare-fun e!4642970 () Bool)

(declare-fun e!4642966 () Bool)

(assert (=> b!7855397 (= e!4642970 e!4642966)))

(declare-fun res!3123364 () Bool)

(assert (=> b!7855397 (=> (not res!3123364) (not e!4642966))))

(declare-fun lt!2679975 () Bool)

(assert (=> b!7855397 (= res!3123364 (not lt!2679975))))

(declare-fun b!7855398 () Bool)

(declare-fun e!4642968 () Bool)

(assert (=> b!7855398 (= e!4642968 (= (head!16054 lt!2679957) (c!1443671 lt!2679951)))))

(declare-fun b!7855399 () Bool)

(declare-fun e!4642971 () Bool)

(assert (=> b!7855399 (= e!4642966 e!4642971)))

(declare-fun res!3123363 () Bool)

(assert (=> b!7855399 (=> res!3123363 e!4642971)))

(declare-fun call!728154 () Bool)

(assert (=> b!7855399 (= res!3123363 call!728154)))

(declare-fun b!7855400 () Bool)

(declare-fun e!4642972 () Bool)

(assert (=> b!7855400 (= e!4642972 (nullable!9369 lt!2679951))))

(declare-fun b!7855401 () Bool)

(declare-fun res!3123360 () Bool)

(assert (=> b!7855401 (=> res!3123360 e!4642970)))

(assert (=> b!7855401 (= res!3123360 (not ((_ is ElementMatch!21097) lt!2679951)))))

(declare-fun e!4642969 () Bool)

(assert (=> b!7855401 (= e!4642969 e!4642970)))

(declare-fun b!7855402 () Bool)

(declare-fun e!4642967 () Bool)

(assert (=> b!7855402 (= e!4642967 (= lt!2679975 call!728154))))

(declare-fun d!2353781 () Bool)

(assert (=> d!2353781 e!4642967))

(declare-fun c!1443716 () Bool)

(assert (=> d!2353781 (= c!1443716 ((_ is EmptyExpr!21097) lt!2679951))))

(assert (=> d!2353781 (= lt!2679975 e!4642972)))

(declare-fun c!1443718 () Bool)

(assert (=> d!2353781 (= c!1443718 (isEmpty!42343 lt!2679957))))

(assert (=> d!2353781 (validRegex!11507 lt!2679951)))

(assert (=> d!2353781 (= (matchR!10533 lt!2679951 lt!2679957) lt!2679975)))

(declare-fun b!7855403 () Bool)

(declare-fun res!3123365 () Bool)

(assert (=> b!7855403 (=> (not res!3123365) (not e!4642968))))

(assert (=> b!7855403 (= res!3123365 (not call!728154))))

(declare-fun b!7855404 () Bool)

(assert (=> b!7855404 (= e!4642967 e!4642969)))

(declare-fun c!1443717 () Bool)

(assert (=> b!7855404 (= c!1443717 ((_ is EmptyLang!21097) lt!2679951))))

(declare-fun b!7855405 () Bool)

(assert (=> b!7855405 (= e!4642969 (not lt!2679975))))

(declare-fun b!7855406 () Bool)

(declare-fun res!3123366 () Bool)

(assert (=> b!7855406 (=> res!3123366 e!4642970)))

(assert (=> b!7855406 (= res!3123366 e!4642968)))

(declare-fun res!3123359 () Bool)

(assert (=> b!7855406 (=> (not res!3123359) (not e!4642968))))

(assert (=> b!7855406 (= res!3123359 lt!2679975)))

(declare-fun bm!728149 () Bool)

(assert (=> bm!728149 (= call!728154 (isEmpty!42343 lt!2679957))))

(declare-fun b!7855407 () Bool)

(assert (=> b!7855407 (= e!4642972 (matchR!10533 (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957)) (tail!15597 lt!2679957)))))

(declare-fun b!7855408 () Bool)

(declare-fun res!3123362 () Bool)

(assert (=> b!7855408 (=> res!3123362 e!4642971)))

(assert (=> b!7855408 (= res!3123362 (not (isEmpty!42343 (tail!15597 lt!2679957))))))

(declare-fun b!7855409 () Bool)

(assert (=> b!7855409 (= e!4642971 (not (= (head!16054 lt!2679957) (c!1443671 lt!2679951))))))

(declare-fun b!7855410 () Bool)

(declare-fun res!3123361 () Bool)

(assert (=> b!7855410 (=> (not res!3123361) (not e!4642968))))

(assert (=> b!7855410 (= res!3123361 (isEmpty!42343 (tail!15597 lt!2679957)))))

(assert (= (and d!2353781 c!1443718) b!7855400))

(assert (= (and d!2353781 (not c!1443718)) b!7855407))

(assert (= (and d!2353781 c!1443716) b!7855402))

(assert (= (and d!2353781 (not c!1443716)) b!7855404))

(assert (= (and b!7855404 c!1443717) b!7855405))

(assert (= (and b!7855404 (not c!1443717)) b!7855401))

(assert (= (and b!7855401 (not res!3123360)) b!7855406))

(assert (= (and b!7855406 res!3123359) b!7855403))

(assert (= (and b!7855403 res!3123365) b!7855410))

(assert (= (and b!7855410 res!3123361) b!7855398))

(assert (= (and b!7855406 (not res!3123366)) b!7855397))

(assert (= (and b!7855397 res!3123364) b!7855399))

(assert (= (and b!7855399 (not res!3123363)) b!7855408))

(assert (= (and b!7855408 (not res!3123362)) b!7855409))

(assert (= (or b!7855402 b!7855399 b!7855403) bm!728149))

(declare-fun m!8260032 () Bool)

(assert (=> b!7855398 m!8260032))

(assert (=> b!7855407 m!8260032))

(assert (=> b!7855407 m!8260032))

(declare-fun m!8260034 () Bool)

(assert (=> b!7855407 m!8260034))

(declare-fun m!8260036 () Bool)

(assert (=> b!7855407 m!8260036))

(assert (=> b!7855407 m!8260034))

(assert (=> b!7855407 m!8260036))

(declare-fun m!8260038 () Bool)

(assert (=> b!7855407 m!8260038))

(assert (=> b!7855409 m!8260032))

(declare-fun m!8260040 () Bool)

(assert (=> d!2353781 m!8260040))

(declare-fun m!8260042 () Bool)

(assert (=> d!2353781 m!8260042))

(assert (=> bm!728149 m!8260040))

(assert (=> b!7855408 m!8260036))

(assert (=> b!7855408 m!8260036))

(declare-fun m!8260044 () Bool)

(assert (=> b!7855408 m!8260044))

(declare-fun m!8260046 () Bool)

(assert (=> b!7855400 m!8260046))

(assert (=> b!7855410 m!8260036))

(assert (=> b!7855410 m!8260036))

(assert (=> b!7855410 m!8260044))

(assert (=> b!7855183 d!2353781))

(declare-fun d!2353783 () Bool)

(assert (=> d!2353783 (matchR!10533 (Union!21097 lt!2679956 lt!2679955) lt!2679957)))

(declare-fun lt!2679980 () Unit!168920)

(declare-fun choose!59658 (Regex!21097 Regex!21097 List!73956) Unit!168920)

(assert (=> d!2353783 (= lt!2679980 (choose!59658 lt!2679956 lt!2679955 lt!2679957))))

(declare-fun e!4642985 () Bool)

(assert (=> d!2353783 e!4642985))

(declare-fun res!3123369 () Bool)

(assert (=> d!2353783 (=> (not res!3123369) (not e!4642985))))

(assert (=> d!2353783 (= res!3123369 (validRegex!11507 lt!2679956))))

(assert (=> d!2353783 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!128 lt!2679956 lt!2679955 lt!2679957) lt!2679980)))

(declare-fun b!7855433 () Bool)

(assert (=> b!7855433 (= e!4642985 (validRegex!11507 lt!2679955))))

(assert (= (and d!2353783 res!3123369) b!7855433))

(declare-fun m!8260048 () Bool)

(assert (=> d!2353783 m!8260048))

(declare-fun m!8260050 () Bool)

(assert (=> d!2353783 m!8260050))

(assert (=> d!2353783 m!8259902))

(assert (=> b!7855433 m!8259894))

(assert (=> b!7855183 d!2353783))

(declare-fun d!2353785 () Bool)

(assert (=> d!2353785 (matchR!10533 (Concat!29942 lt!2679953 r2!6165) (++!18097 (t!388691 s1!4084) s2!3706))))

(declare-fun lt!2679983 () Unit!168920)

(declare-fun choose!59659 (Regex!21097 Regex!21097 List!73956 List!73956) Unit!168920)

(assert (=> d!2353785 (= lt!2679983 (choose!59659 lt!2679953 r2!6165 (t!388691 s1!4084) s2!3706))))

(declare-fun e!4642988 () Bool)

(assert (=> d!2353785 e!4642988))

(declare-fun res!3123372 () Bool)

(assert (=> d!2353785 (=> (not res!3123372) (not e!4642988))))

(assert (=> d!2353785 (= res!3123372 (validRegex!11507 lt!2679953))))

(assert (=> d!2353785 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!456 lt!2679953 r2!6165 (t!388691 s1!4084) s2!3706) lt!2679983)))

(declare-fun b!7855436 () Bool)

(assert (=> b!7855436 (= e!4642988 (validRegex!11507 r2!6165))))

(assert (= (and d!2353785 res!3123372) b!7855436))

(assert (=> d!2353785 m!8259912))

(assert (=> d!2353785 m!8259912))

(declare-fun m!8260052 () Bool)

(assert (=> d!2353785 m!8260052))

(declare-fun m!8260054 () Bool)

(assert (=> d!2353785 m!8260054))

(declare-fun m!8260056 () Bool)

(assert (=> d!2353785 m!8260056))

(assert (=> b!7855436 m!8259900))

(assert (=> b!7855194 d!2353785))

(declare-fun b!7855447 () Bool)

(declare-fun e!4642998 () Bool)

(declare-fun e!4642994 () Bool)

(assert (=> b!7855447 (= e!4642998 e!4642994)))

(declare-fun res!3123378 () Bool)

(assert (=> b!7855447 (=> (not res!3123378) (not e!4642994))))

(declare-fun lt!2679985 () Bool)

(assert (=> b!7855447 (= res!3123378 (not lt!2679985))))

(declare-fun b!7855448 () Bool)

(declare-fun e!4642996 () Bool)

(assert (=> b!7855448 (= e!4642996 (= (head!16054 lt!2679957) (c!1443671 lt!2679956)))))

(declare-fun b!7855449 () Bool)

(declare-fun e!4642999 () Bool)

(assert (=> b!7855449 (= e!4642994 e!4642999)))

(declare-fun res!3123377 () Bool)

(assert (=> b!7855449 (=> res!3123377 e!4642999)))

(declare-fun call!728167 () Bool)

(assert (=> b!7855449 (= res!3123377 call!728167)))

(declare-fun b!7855450 () Bool)

(declare-fun e!4643000 () Bool)

(assert (=> b!7855450 (= e!4643000 (nullable!9369 lt!2679956))))

(declare-fun b!7855451 () Bool)

(declare-fun res!3123374 () Bool)

(assert (=> b!7855451 (=> res!3123374 e!4642998)))

(assert (=> b!7855451 (= res!3123374 (not ((_ is ElementMatch!21097) lt!2679956)))))

(declare-fun e!4642997 () Bool)

(assert (=> b!7855451 (= e!4642997 e!4642998)))

(declare-fun b!7855452 () Bool)

(declare-fun e!4642995 () Bool)

(assert (=> b!7855452 (= e!4642995 (= lt!2679985 call!728167))))

(declare-fun d!2353787 () Bool)

(assert (=> d!2353787 e!4642995))

(declare-fun c!1443734 () Bool)

(assert (=> d!2353787 (= c!1443734 ((_ is EmptyExpr!21097) lt!2679956))))

(assert (=> d!2353787 (= lt!2679985 e!4643000)))

(declare-fun c!1443736 () Bool)

(assert (=> d!2353787 (= c!1443736 (isEmpty!42343 lt!2679957))))

(assert (=> d!2353787 (validRegex!11507 lt!2679956)))

(assert (=> d!2353787 (= (matchR!10533 lt!2679956 lt!2679957) lt!2679985)))

(declare-fun b!7855453 () Bool)

(declare-fun res!3123379 () Bool)

(assert (=> b!7855453 (=> (not res!3123379) (not e!4642996))))

(assert (=> b!7855453 (= res!3123379 (not call!728167))))

(declare-fun b!7855454 () Bool)

(assert (=> b!7855454 (= e!4642995 e!4642997)))

(declare-fun c!1443735 () Bool)

(assert (=> b!7855454 (= c!1443735 ((_ is EmptyLang!21097) lt!2679956))))

(declare-fun b!7855455 () Bool)

(assert (=> b!7855455 (= e!4642997 (not lt!2679985))))

(declare-fun b!7855456 () Bool)

(declare-fun res!3123380 () Bool)

(assert (=> b!7855456 (=> res!3123380 e!4642998)))

(assert (=> b!7855456 (= res!3123380 e!4642996)))

(declare-fun res!3123373 () Bool)

(assert (=> b!7855456 (=> (not res!3123373) (not e!4642996))))

(assert (=> b!7855456 (= res!3123373 lt!2679985)))

(declare-fun bm!728162 () Bool)

(assert (=> bm!728162 (= call!728167 (isEmpty!42343 lt!2679957))))

(declare-fun b!7855457 () Bool)

(assert (=> b!7855457 (= e!4643000 (matchR!10533 (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957)) (tail!15597 lt!2679957)))))

(declare-fun b!7855458 () Bool)

(declare-fun res!3123376 () Bool)

(assert (=> b!7855458 (=> res!3123376 e!4642999)))

(assert (=> b!7855458 (= res!3123376 (not (isEmpty!42343 (tail!15597 lt!2679957))))))

(declare-fun b!7855459 () Bool)

(assert (=> b!7855459 (= e!4642999 (not (= (head!16054 lt!2679957) (c!1443671 lt!2679956))))))

(declare-fun b!7855460 () Bool)

(declare-fun res!3123375 () Bool)

(assert (=> b!7855460 (=> (not res!3123375) (not e!4642996))))

(assert (=> b!7855460 (= res!3123375 (isEmpty!42343 (tail!15597 lt!2679957)))))

(assert (= (and d!2353787 c!1443736) b!7855450))

(assert (= (and d!2353787 (not c!1443736)) b!7855457))

(assert (= (and d!2353787 c!1443734) b!7855452))

(assert (= (and d!2353787 (not c!1443734)) b!7855454))

(assert (= (and b!7855454 c!1443735) b!7855455))

(assert (= (and b!7855454 (not c!1443735)) b!7855451))

(assert (= (and b!7855451 (not res!3123374)) b!7855456))

(assert (= (and b!7855456 res!3123373) b!7855453))

(assert (= (and b!7855453 res!3123379) b!7855460))

(assert (= (and b!7855460 res!3123375) b!7855448))

(assert (= (and b!7855456 (not res!3123380)) b!7855447))

(assert (= (and b!7855447 res!3123378) b!7855449))

(assert (= (and b!7855449 (not res!3123377)) b!7855458))

(assert (= (and b!7855458 (not res!3123376)) b!7855459))

(assert (= (or b!7855452 b!7855449 b!7855453) bm!728162))

(assert (=> b!7855448 m!8260032))

(assert (=> b!7855457 m!8260032))

(assert (=> b!7855457 m!8260032))

(declare-fun m!8260066 () Bool)

(assert (=> b!7855457 m!8260066))

(assert (=> b!7855457 m!8260036))

(assert (=> b!7855457 m!8260066))

(assert (=> b!7855457 m!8260036))

(declare-fun m!8260068 () Bool)

(assert (=> b!7855457 m!8260068))

(assert (=> b!7855459 m!8260032))

(assert (=> d!2353787 m!8260040))

(assert (=> d!2353787 m!8259902))

(assert (=> bm!728162 m!8260040))

(assert (=> b!7855458 m!8260036))

(assert (=> b!7855458 m!8260036))

(assert (=> b!7855458 m!8260044))

(declare-fun m!8260070 () Bool)

(assert (=> b!7855450 m!8260070))

(assert (=> b!7855460 m!8260036))

(assert (=> b!7855460 m!8260036))

(assert (=> b!7855460 m!8260044))

(assert (=> b!7855194 d!2353787))

(declare-fun d!2353791 () Bool)

(declare-fun nullableFct!3695 (Regex!21097) Bool)

(assert (=> d!2353791 (= (nullable!9369 r1!6227) (nullableFct!3695 r1!6227))))

(declare-fun bs!1967121 () Bool)

(assert (= bs!1967121 d!2353791))

(declare-fun m!8260080 () Bool)

(assert (=> bs!1967121 m!8260080))

(assert (=> b!7855194 d!2353791))

(declare-fun b!7855633 () Bool)

(declare-fun e!4643087 () Regex!21097)

(assert (=> b!7855633 (= e!4643087 EmptyLang!21097)))

(declare-fun bm!728191 () Bool)

(declare-fun call!728197 () Regex!21097)

(declare-fun call!728196 () Regex!21097)

(assert (=> bm!728191 (= call!728197 call!728196)))

(declare-fun b!7855634 () Bool)

(declare-fun c!1443776 () Bool)

(assert (=> b!7855634 (= c!1443776 ((_ is Union!21097) r1!6227))))

(declare-fun e!4643086 () Regex!21097)

(declare-fun e!4643084 () Regex!21097)

(assert (=> b!7855634 (= e!4643086 e!4643084)))

(declare-fun e!4643088 () Regex!21097)

(declare-fun b!7855635 () Bool)

(declare-fun call!728199 () Regex!21097)

(assert (=> b!7855635 (= e!4643088 (Union!21097 (Concat!29942 call!728199 (regTwo!42706 r1!6227)) call!728197))))

(declare-fun c!1443774 () Bool)

(declare-fun bm!728192 () Bool)

(assert (=> bm!728192 (= call!728196 (derivativeStep!6332 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))) (h!80280 s1!4084)))))

(declare-fun b!7855636 () Bool)

(declare-fun call!728198 () Regex!21097)

(assert (=> b!7855636 (= e!4643084 (Union!21097 call!728198 call!728196))))

(declare-fun b!7855637 () Bool)

(assert (=> b!7855637 (= e!4643088 (Union!21097 (Concat!29942 call!728197 (regTwo!42706 r1!6227)) EmptyLang!21097))))

(declare-fun bm!728193 () Bool)

(assert (=> bm!728193 (= call!728199 call!728198)))

(declare-fun d!2353795 () Bool)

(declare-fun lt!2679997 () Regex!21097)

(assert (=> d!2353795 (validRegex!11507 lt!2679997)))

(assert (=> d!2353795 (= lt!2679997 e!4643087)))

(declare-fun c!1443775 () Bool)

(assert (=> d!2353795 (= c!1443775 (or ((_ is EmptyExpr!21097) r1!6227) ((_ is EmptyLang!21097) r1!6227)))))

(assert (=> d!2353795 (validRegex!11507 r1!6227)))

(assert (=> d!2353795 (= (derivativeStep!6332 r1!6227 (h!80280 s1!4084)) lt!2679997)))

(declare-fun b!7855638 () Bool)

(declare-fun e!4643085 () Regex!21097)

(assert (=> b!7855638 (= e!4643085 (Concat!29942 call!728199 r1!6227))))

(declare-fun b!7855639 () Bool)

(assert (=> b!7855639 (= e!4643086 (ite (= (h!80280 s1!4084) (c!1443671 r1!6227)) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855640 () Bool)

(assert (=> b!7855640 (= e!4643084 e!4643085)))

(declare-fun c!1443777 () Bool)

(assert (=> b!7855640 (= c!1443777 ((_ is Star!21097) r1!6227))))

(declare-fun b!7855641 () Bool)

(assert (=> b!7855641 (= e!4643087 e!4643086)))

(declare-fun c!1443773 () Bool)

(assert (=> b!7855641 (= c!1443773 ((_ is ElementMatch!21097) r1!6227))))

(declare-fun bm!728194 () Bool)

(assert (=> bm!728194 (= call!728198 (derivativeStep!6332 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227))) (h!80280 s1!4084)))))

(declare-fun b!7855642 () Bool)

(assert (=> b!7855642 (= c!1443774 (nullable!9369 (regOne!42706 r1!6227)))))

(assert (=> b!7855642 (= e!4643085 e!4643088)))

(assert (= (and d!2353795 c!1443775) b!7855633))

(assert (= (and d!2353795 (not c!1443775)) b!7855641))

(assert (= (and b!7855641 c!1443773) b!7855639))

(assert (= (and b!7855641 (not c!1443773)) b!7855634))

(assert (= (and b!7855634 c!1443776) b!7855636))

(assert (= (and b!7855634 (not c!1443776)) b!7855640))

(assert (= (and b!7855640 c!1443777) b!7855638))

(assert (= (and b!7855640 (not c!1443777)) b!7855642))

(assert (= (and b!7855642 c!1443774) b!7855635))

(assert (= (and b!7855642 (not c!1443774)) b!7855637))

(assert (= (or b!7855635 b!7855637) bm!728191))

(assert (= (or b!7855638 b!7855635) bm!728193))

(assert (= (or b!7855636 bm!728191) bm!728192))

(assert (= (or b!7855636 bm!728193) bm!728194))

(declare-fun m!8260158 () Bool)

(assert (=> bm!728192 m!8260158))

(declare-fun m!8260160 () Bool)

(assert (=> d!2353795 m!8260160))

(assert (=> d!2353795 m!8259898))

(declare-fun m!8260162 () Bool)

(assert (=> bm!728194 m!8260162))

(declare-fun m!8260164 () Bool)

(assert (=> b!7855642 m!8260164))

(assert (=> b!7855194 d!2353795))

(declare-fun b!7855646 () Bool)

(declare-fun e!4643089 () Bool)

(declare-fun lt!2679998 () List!73956)

(assert (=> b!7855646 (= e!4643089 (or (not (= s2!3706 Nil!73832)) (= lt!2679998 (t!388691 s1!4084))))))

(declare-fun b!7855643 () Bool)

(declare-fun e!4643090 () List!73956)

(assert (=> b!7855643 (= e!4643090 s2!3706)))

(declare-fun b!7855644 () Bool)

(assert (=> b!7855644 (= e!4643090 (Cons!73832 (h!80280 (t!388691 s1!4084)) (++!18097 (t!388691 (t!388691 s1!4084)) s2!3706)))))

(declare-fun b!7855645 () Bool)

(declare-fun res!3123426 () Bool)

(assert (=> b!7855645 (=> (not res!3123426) (not e!4643089))))

(assert (=> b!7855645 (= res!3123426 (= (size!42834 lt!2679998) (+ (size!42834 (t!388691 s1!4084)) (size!42834 s2!3706))))))

(declare-fun d!2353815 () Bool)

(assert (=> d!2353815 e!4643089))

(declare-fun res!3123425 () Bool)

(assert (=> d!2353815 (=> (not res!3123425) (not e!4643089))))

(assert (=> d!2353815 (= res!3123425 (= (content!15681 lt!2679998) ((_ map or) (content!15681 (t!388691 s1!4084)) (content!15681 s2!3706))))))

(assert (=> d!2353815 (= lt!2679998 e!4643090)))

(declare-fun c!1443778 () Bool)

(assert (=> d!2353815 (= c!1443778 ((_ is Nil!73832) (t!388691 s1!4084)))))

(assert (=> d!2353815 (= (++!18097 (t!388691 s1!4084) s2!3706) lt!2679998)))

(assert (= (and d!2353815 c!1443778) b!7855643))

(assert (= (and d!2353815 (not c!1443778)) b!7855644))

(assert (= (and d!2353815 res!3123425) b!7855645))

(assert (= (and b!7855645 res!3123426) b!7855646))

(declare-fun m!8260166 () Bool)

(assert (=> b!7855644 m!8260166))

(declare-fun m!8260168 () Bool)

(assert (=> b!7855645 m!8260168))

(declare-fun m!8260170 () Bool)

(assert (=> b!7855645 m!8260170))

(assert (=> b!7855645 m!8260022))

(declare-fun m!8260172 () Bool)

(assert (=> d!2353815 m!8260172))

(declare-fun m!8260174 () Bool)

(assert (=> d!2353815 m!8260174))

(assert (=> d!2353815 m!8260030))

(assert (=> b!7855194 d!2353815))

(declare-fun bm!728195 () Bool)

(declare-fun call!728202 () Bool)

(declare-fun call!728201 () Bool)

(assert (=> bm!728195 (= call!728202 call!728201)))

(declare-fun b!7855647 () Bool)

(declare-fun e!4643097 () Bool)

(assert (=> b!7855647 (= e!4643097 call!728202)))

(declare-fun b!7855648 () Bool)

(declare-fun e!4643093 () Bool)

(declare-fun call!728200 () Bool)

(assert (=> b!7855648 (= e!4643093 call!728200)))

(declare-fun b!7855649 () Bool)

(declare-fun e!4643091 () Bool)

(assert (=> b!7855649 (= e!4643091 call!728201)))

(declare-fun c!1443780 () Bool)

(declare-fun c!1443779 () Bool)

(declare-fun bm!728196 () Bool)

(assert (=> bm!728196 (= call!728201 (validRegex!11507 (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))))))

(declare-fun b!7855651 () Bool)

(declare-fun e!4643096 () Bool)

(assert (=> b!7855651 (= e!4643096 e!4643091)))

(declare-fun res!3123430 () Bool)

(assert (=> b!7855651 (= res!3123430 (not (nullable!9369 (reg!21426 lt!2679956))))))

(assert (=> b!7855651 (=> (not res!3123430) (not e!4643091))))

(declare-fun b!7855652 () Bool)

(declare-fun res!3123429 () Bool)

(assert (=> b!7855652 (=> (not res!3123429) (not e!4643097))))

(assert (=> b!7855652 (= res!3123429 call!728200)))

(declare-fun e!4643095 () Bool)

(assert (=> b!7855652 (= e!4643095 e!4643097)))

(declare-fun b!7855650 () Bool)

(assert (=> b!7855650 (= e!4643096 e!4643095)))

(assert (=> b!7855650 (= c!1443779 ((_ is Union!21097) lt!2679956))))

(declare-fun d!2353817 () Bool)

(declare-fun res!3123427 () Bool)

(declare-fun e!4643092 () Bool)

(assert (=> d!2353817 (=> res!3123427 e!4643092)))

(assert (=> d!2353817 (= res!3123427 ((_ is ElementMatch!21097) lt!2679956))))

(assert (=> d!2353817 (= (validRegex!11507 lt!2679956) e!4643092)))

(declare-fun bm!728197 () Bool)

(assert (=> bm!728197 (= call!728200 (validRegex!11507 (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))))))

(declare-fun b!7855653 () Bool)

(declare-fun res!3123428 () Bool)

(declare-fun e!4643094 () Bool)

(assert (=> b!7855653 (=> res!3123428 e!4643094)))

(assert (=> b!7855653 (= res!3123428 (not ((_ is Concat!29942) lt!2679956)))))

(assert (=> b!7855653 (= e!4643095 e!4643094)))

(declare-fun b!7855654 () Bool)

(assert (=> b!7855654 (= e!4643092 e!4643096)))

(assert (=> b!7855654 (= c!1443780 ((_ is Star!21097) lt!2679956))))

(declare-fun b!7855655 () Bool)

(assert (=> b!7855655 (= e!4643094 e!4643093)))

(declare-fun res!3123431 () Bool)

(assert (=> b!7855655 (=> (not res!3123431) (not e!4643093))))

(assert (=> b!7855655 (= res!3123431 call!728202)))

(assert (= (and d!2353817 (not res!3123427)) b!7855654))

(assert (= (and b!7855654 c!1443780) b!7855651))

(assert (= (and b!7855654 (not c!1443780)) b!7855650))

(assert (= (and b!7855651 res!3123430) b!7855649))

(assert (= (and b!7855650 c!1443779) b!7855652))

(assert (= (and b!7855650 (not c!1443779)) b!7855653))

(assert (= (and b!7855652 res!3123429) b!7855647))

(assert (= (and b!7855653 (not res!3123428)) b!7855655))

(assert (= (and b!7855655 res!3123431) b!7855648))

(assert (= (or b!7855652 b!7855648) bm!728197))

(assert (= (or b!7855647 b!7855655) bm!728195))

(assert (= (or b!7855649 bm!728195) bm!728196))

(declare-fun m!8260176 () Bool)

(assert (=> bm!728196 m!8260176))

(declare-fun m!8260178 () Bool)

(assert (=> b!7855651 m!8260178))

(declare-fun m!8260180 () Bool)

(assert (=> bm!728197 m!8260180))

(assert (=> b!7855178 d!2353817))

(declare-fun bm!728198 () Bool)

(declare-fun call!728205 () Bool)

(declare-fun call!728204 () Bool)

(assert (=> bm!728198 (= call!728205 call!728204)))

(declare-fun b!7855656 () Bool)

(declare-fun e!4643104 () Bool)

(assert (=> b!7855656 (= e!4643104 call!728205)))

(declare-fun b!7855657 () Bool)

(declare-fun e!4643100 () Bool)

(declare-fun call!728203 () Bool)

(assert (=> b!7855657 (= e!4643100 call!728203)))

(declare-fun b!7855658 () Bool)

(declare-fun e!4643098 () Bool)

(assert (=> b!7855658 (= e!4643098 call!728204)))

(declare-fun c!1443782 () Bool)

(declare-fun bm!728199 () Bool)

(declare-fun c!1443781 () Bool)

(assert (=> bm!728199 (= call!728204 (validRegex!11507 (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))))))

(declare-fun b!7855660 () Bool)

(declare-fun e!4643103 () Bool)

(assert (=> b!7855660 (= e!4643103 e!4643098)))

(declare-fun res!3123435 () Bool)

(assert (=> b!7855660 (= res!3123435 (not (nullable!9369 (reg!21426 lt!2679955))))))

(assert (=> b!7855660 (=> (not res!3123435) (not e!4643098))))

(declare-fun b!7855661 () Bool)

(declare-fun res!3123434 () Bool)

(assert (=> b!7855661 (=> (not res!3123434) (not e!4643104))))

(assert (=> b!7855661 (= res!3123434 call!728203)))

(declare-fun e!4643102 () Bool)

(assert (=> b!7855661 (= e!4643102 e!4643104)))

(declare-fun b!7855659 () Bool)

(assert (=> b!7855659 (= e!4643103 e!4643102)))

(assert (=> b!7855659 (= c!1443781 ((_ is Union!21097) lt!2679955))))

(declare-fun d!2353819 () Bool)

(declare-fun res!3123432 () Bool)

(declare-fun e!4643099 () Bool)

(assert (=> d!2353819 (=> res!3123432 e!4643099)))

(assert (=> d!2353819 (= res!3123432 ((_ is ElementMatch!21097) lt!2679955))))

(assert (=> d!2353819 (= (validRegex!11507 lt!2679955) e!4643099)))

(declare-fun bm!728200 () Bool)

(assert (=> bm!728200 (= call!728203 (validRegex!11507 (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))))))

(declare-fun b!7855662 () Bool)

(declare-fun res!3123433 () Bool)

(declare-fun e!4643101 () Bool)

(assert (=> b!7855662 (=> res!3123433 e!4643101)))

(assert (=> b!7855662 (= res!3123433 (not ((_ is Concat!29942) lt!2679955)))))

(assert (=> b!7855662 (= e!4643102 e!4643101)))

(declare-fun b!7855663 () Bool)

(assert (=> b!7855663 (= e!4643099 e!4643103)))

(assert (=> b!7855663 (= c!1443782 ((_ is Star!21097) lt!2679955))))

(declare-fun b!7855664 () Bool)

(assert (=> b!7855664 (= e!4643101 e!4643100)))

(declare-fun res!3123436 () Bool)

(assert (=> b!7855664 (=> (not res!3123436) (not e!4643100))))

(assert (=> b!7855664 (= res!3123436 call!728205)))

(assert (= (and d!2353819 (not res!3123432)) b!7855663))

(assert (= (and b!7855663 c!1443782) b!7855660))

(assert (= (and b!7855663 (not c!1443782)) b!7855659))

(assert (= (and b!7855660 res!3123435) b!7855658))

(assert (= (and b!7855659 c!1443781) b!7855661))

(assert (= (and b!7855659 (not c!1443781)) b!7855662))

(assert (= (and b!7855661 res!3123434) b!7855656))

(assert (= (and b!7855662 (not res!3123433)) b!7855664))

(assert (= (and b!7855664 res!3123436) b!7855657))

(assert (= (or b!7855661 b!7855657) bm!728200))

(assert (= (or b!7855656 b!7855664) bm!728198))

(assert (= (or b!7855658 bm!728198) bm!728199))

(declare-fun m!8260182 () Bool)

(assert (=> bm!728199 m!8260182))

(declare-fun m!8260184 () Bool)

(assert (=> b!7855660 m!8260184))

(declare-fun m!8260186 () Bool)

(assert (=> bm!728200 m!8260186))

(assert (=> b!7855184 d!2353819))

(declare-fun b!7855665 () Bool)

(declare-fun e!4643108 () Regex!21097)

(assert (=> b!7855665 (= e!4643108 EmptyLang!21097)))

(declare-fun bm!728201 () Bool)

(declare-fun call!728207 () Regex!21097)

(declare-fun call!728206 () Regex!21097)

(assert (=> bm!728201 (= call!728207 call!728206)))

(declare-fun b!7855666 () Bool)

(declare-fun c!1443786 () Bool)

(assert (=> b!7855666 (= c!1443786 ((_ is Union!21097) lt!2679952))))

(declare-fun e!4643107 () Regex!21097)

(declare-fun e!4643105 () Regex!21097)

(assert (=> b!7855666 (= e!4643107 e!4643105)))

(declare-fun call!728209 () Regex!21097)

(declare-fun e!4643109 () Regex!21097)

(declare-fun b!7855667 () Bool)

(assert (=> b!7855667 (= e!4643109 (Union!21097 (Concat!29942 call!728209 (regTwo!42706 lt!2679952)) call!728207))))

(declare-fun bm!728202 () Bool)

(declare-fun c!1443784 () Bool)

(assert (=> bm!728202 (= call!728206 (derivativeStep!6332 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))) (h!80280 s1!4084)))))

(declare-fun b!7855668 () Bool)

(declare-fun call!728208 () Regex!21097)

(assert (=> b!7855668 (= e!4643105 (Union!21097 call!728208 call!728206))))

(declare-fun b!7855669 () Bool)

(assert (=> b!7855669 (= e!4643109 (Union!21097 (Concat!29942 call!728207 (regTwo!42706 lt!2679952)) EmptyLang!21097))))

(declare-fun bm!728203 () Bool)

(assert (=> bm!728203 (= call!728209 call!728208)))

(declare-fun d!2353821 () Bool)

(declare-fun lt!2679999 () Regex!21097)

(assert (=> d!2353821 (validRegex!11507 lt!2679999)))

(assert (=> d!2353821 (= lt!2679999 e!4643108)))

(declare-fun c!1443785 () Bool)

(assert (=> d!2353821 (= c!1443785 (or ((_ is EmptyExpr!21097) lt!2679952) ((_ is EmptyLang!21097) lt!2679952)))))

(assert (=> d!2353821 (validRegex!11507 lt!2679952)))

(assert (=> d!2353821 (= (derivativeStep!6332 lt!2679952 (h!80280 s1!4084)) lt!2679999)))

(declare-fun b!7855670 () Bool)

(declare-fun e!4643106 () Regex!21097)

(assert (=> b!7855670 (= e!4643106 (Concat!29942 call!728209 lt!2679952))))

(declare-fun b!7855671 () Bool)

(assert (=> b!7855671 (= e!4643107 (ite (= (h!80280 s1!4084) (c!1443671 lt!2679952)) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855672 () Bool)

(assert (=> b!7855672 (= e!4643105 e!4643106)))

(declare-fun c!1443787 () Bool)

(assert (=> b!7855672 (= c!1443787 ((_ is Star!21097) lt!2679952))))

(declare-fun b!7855673 () Bool)

(assert (=> b!7855673 (= e!4643108 e!4643107)))

(declare-fun c!1443783 () Bool)

(assert (=> b!7855673 (= c!1443783 ((_ is ElementMatch!21097) lt!2679952))))

(declare-fun bm!728204 () Bool)

(assert (=> bm!728204 (= call!728208 (derivativeStep!6332 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))) (h!80280 s1!4084)))))

(declare-fun b!7855674 () Bool)

(assert (=> b!7855674 (= c!1443784 (nullable!9369 (regOne!42706 lt!2679952)))))

(assert (=> b!7855674 (= e!4643106 e!4643109)))

(assert (= (and d!2353821 c!1443785) b!7855665))

(assert (= (and d!2353821 (not c!1443785)) b!7855673))

(assert (= (and b!7855673 c!1443783) b!7855671))

(assert (= (and b!7855673 (not c!1443783)) b!7855666))

(assert (= (and b!7855666 c!1443786) b!7855668))

(assert (= (and b!7855666 (not c!1443786)) b!7855672))

(assert (= (and b!7855672 c!1443787) b!7855670))

(assert (= (and b!7855672 (not c!1443787)) b!7855674))

(assert (= (and b!7855674 c!1443784) b!7855667))

(assert (= (and b!7855674 (not c!1443784)) b!7855669))

(assert (= (or b!7855667 b!7855669) bm!728201))

(assert (= (or b!7855670 b!7855667) bm!728203))

(assert (= (or b!7855668 bm!728201) bm!728202))

(assert (= (or b!7855668 bm!728203) bm!728204))

(declare-fun m!8260188 () Bool)

(assert (=> bm!728202 m!8260188))

(declare-fun m!8260190 () Bool)

(assert (=> d!2353821 m!8260190))

(assert (=> d!2353821 m!8259982))

(declare-fun m!8260192 () Bool)

(assert (=> bm!728204 m!8260192))

(declare-fun m!8260194 () Bool)

(assert (=> b!7855674 m!8260194))

(assert (=> b!7855179 d!2353821))

(declare-fun b!7855675 () Bool)

(declare-fun e!4643113 () Regex!21097)

(assert (=> b!7855675 (= e!4643113 EmptyLang!21097)))

(declare-fun bm!728205 () Bool)

(declare-fun call!728211 () Regex!21097)

(declare-fun call!728210 () Regex!21097)

(assert (=> bm!728205 (= call!728211 call!728210)))

(declare-fun b!7855676 () Bool)

(declare-fun c!1443791 () Bool)

(assert (=> b!7855676 (= c!1443791 ((_ is Union!21097) r2!6165))))

(declare-fun e!4643112 () Regex!21097)

(declare-fun e!4643110 () Regex!21097)

(assert (=> b!7855676 (= e!4643112 e!4643110)))

(declare-fun call!728213 () Regex!21097)

(declare-fun e!4643114 () Regex!21097)

(declare-fun b!7855677 () Bool)

(assert (=> b!7855677 (= e!4643114 (Union!21097 (Concat!29942 call!728213 (regTwo!42706 r2!6165)) call!728211))))

(declare-fun c!1443789 () Bool)

(declare-fun bm!728206 () Bool)

(assert (=> bm!728206 (= call!728210 (derivativeStep!6332 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))) (h!80280 s1!4084)))))

(declare-fun b!7855678 () Bool)

(declare-fun call!728212 () Regex!21097)

(assert (=> b!7855678 (= e!4643110 (Union!21097 call!728212 call!728210))))

(declare-fun b!7855679 () Bool)

(assert (=> b!7855679 (= e!4643114 (Union!21097 (Concat!29942 call!728211 (regTwo!42706 r2!6165)) EmptyLang!21097))))

(declare-fun bm!728207 () Bool)

(assert (=> bm!728207 (= call!728213 call!728212)))

(declare-fun d!2353823 () Bool)

(declare-fun lt!2680000 () Regex!21097)

(assert (=> d!2353823 (validRegex!11507 lt!2680000)))

(assert (=> d!2353823 (= lt!2680000 e!4643113)))

(declare-fun c!1443790 () Bool)

(assert (=> d!2353823 (= c!1443790 (or ((_ is EmptyExpr!21097) r2!6165) ((_ is EmptyLang!21097) r2!6165)))))

(assert (=> d!2353823 (validRegex!11507 r2!6165)))

(assert (=> d!2353823 (= (derivativeStep!6332 r2!6165 (h!80280 s1!4084)) lt!2680000)))

(declare-fun b!7855680 () Bool)

(declare-fun e!4643111 () Regex!21097)

(assert (=> b!7855680 (= e!4643111 (Concat!29942 call!728213 r2!6165))))

(declare-fun b!7855681 () Bool)

(assert (=> b!7855681 (= e!4643112 (ite (= (h!80280 s1!4084) (c!1443671 r2!6165)) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855682 () Bool)

(assert (=> b!7855682 (= e!4643110 e!4643111)))

(declare-fun c!1443792 () Bool)

(assert (=> b!7855682 (= c!1443792 ((_ is Star!21097) r2!6165))))

(declare-fun b!7855683 () Bool)

(assert (=> b!7855683 (= e!4643113 e!4643112)))

(declare-fun c!1443788 () Bool)

(assert (=> b!7855683 (= c!1443788 ((_ is ElementMatch!21097) r2!6165))))

(declare-fun bm!728208 () Bool)

(assert (=> bm!728208 (= call!728212 (derivativeStep!6332 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165))) (h!80280 s1!4084)))))

(declare-fun b!7855684 () Bool)

(assert (=> b!7855684 (= c!1443789 (nullable!9369 (regOne!42706 r2!6165)))))

(assert (=> b!7855684 (= e!4643111 e!4643114)))

(assert (= (and d!2353823 c!1443790) b!7855675))

(assert (= (and d!2353823 (not c!1443790)) b!7855683))

(assert (= (and b!7855683 c!1443788) b!7855681))

(assert (= (and b!7855683 (not c!1443788)) b!7855676))

(assert (= (and b!7855676 c!1443791) b!7855678))

(assert (= (and b!7855676 (not c!1443791)) b!7855682))

(assert (= (and b!7855682 c!1443792) b!7855680))

(assert (= (and b!7855682 (not c!1443792)) b!7855684))

(assert (= (and b!7855684 c!1443789) b!7855677))

(assert (= (and b!7855684 (not c!1443789)) b!7855679))

(assert (= (or b!7855677 b!7855679) bm!728205))

(assert (= (or b!7855680 b!7855677) bm!728207))

(assert (= (or b!7855678 bm!728205) bm!728206))

(assert (= (or b!7855678 bm!728207) bm!728208))

(declare-fun m!8260196 () Bool)

(assert (=> bm!728206 m!8260196))

(declare-fun m!8260198 () Bool)

(assert (=> d!2353823 m!8260198))

(assert (=> d!2353823 m!8259900))

(declare-fun m!8260200 () Bool)

(assert (=> bm!728208 m!8260200))

(declare-fun m!8260202 () Bool)

(assert (=> b!7855684 m!8260202))

(assert (=> b!7855179 d!2353823))

(declare-fun b!7855685 () Bool)

(declare-fun e!4643119 () Bool)

(declare-fun e!4643115 () Bool)

(assert (=> b!7855685 (= e!4643119 e!4643115)))

(declare-fun res!3123442 () Bool)

(assert (=> b!7855685 (=> (not res!3123442) (not e!4643115))))

(declare-fun lt!2680001 () Bool)

(assert (=> b!7855685 (= res!3123442 (not lt!2680001))))

(declare-fun b!7855686 () Bool)

(declare-fun e!4643117 () Bool)

(assert (=> b!7855686 (= e!4643117 (= (head!16054 s1!4084) (c!1443671 r1!6227)))))

(declare-fun b!7855687 () Bool)

(declare-fun e!4643120 () Bool)

(assert (=> b!7855687 (= e!4643115 e!4643120)))

(declare-fun res!3123441 () Bool)

(assert (=> b!7855687 (=> res!3123441 e!4643120)))

(declare-fun call!728214 () Bool)

(assert (=> b!7855687 (= res!3123441 call!728214)))

(declare-fun b!7855688 () Bool)

(declare-fun e!4643121 () Bool)

(assert (=> b!7855688 (= e!4643121 (nullable!9369 r1!6227))))

(declare-fun b!7855689 () Bool)

(declare-fun res!3123438 () Bool)

(assert (=> b!7855689 (=> res!3123438 e!4643119)))

(assert (=> b!7855689 (= res!3123438 (not ((_ is ElementMatch!21097) r1!6227)))))

(declare-fun e!4643118 () Bool)

(assert (=> b!7855689 (= e!4643118 e!4643119)))

(declare-fun b!7855690 () Bool)

(declare-fun e!4643116 () Bool)

(assert (=> b!7855690 (= e!4643116 (= lt!2680001 call!728214))))

(declare-fun d!2353825 () Bool)

(assert (=> d!2353825 e!4643116))

(declare-fun c!1443793 () Bool)

(assert (=> d!2353825 (= c!1443793 ((_ is EmptyExpr!21097) r1!6227))))

(assert (=> d!2353825 (= lt!2680001 e!4643121)))

(declare-fun c!1443795 () Bool)

(assert (=> d!2353825 (= c!1443795 (isEmpty!42343 s1!4084))))

(assert (=> d!2353825 (validRegex!11507 r1!6227)))

(assert (=> d!2353825 (= (matchR!10533 r1!6227 s1!4084) lt!2680001)))

(declare-fun b!7855691 () Bool)

(declare-fun res!3123443 () Bool)

(assert (=> b!7855691 (=> (not res!3123443) (not e!4643117))))

(assert (=> b!7855691 (= res!3123443 (not call!728214))))

(declare-fun b!7855692 () Bool)

(assert (=> b!7855692 (= e!4643116 e!4643118)))

(declare-fun c!1443794 () Bool)

(assert (=> b!7855692 (= c!1443794 ((_ is EmptyLang!21097) r1!6227))))

(declare-fun b!7855693 () Bool)

(assert (=> b!7855693 (= e!4643118 (not lt!2680001))))

(declare-fun b!7855694 () Bool)

(declare-fun res!3123444 () Bool)

(assert (=> b!7855694 (=> res!3123444 e!4643119)))

(assert (=> b!7855694 (= res!3123444 e!4643117)))

(declare-fun res!3123437 () Bool)

(assert (=> b!7855694 (=> (not res!3123437) (not e!4643117))))

(assert (=> b!7855694 (= res!3123437 lt!2680001)))

(declare-fun bm!728209 () Bool)

(assert (=> bm!728209 (= call!728214 (isEmpty!42343 s1!4084))))

(declare-fun b!7855695 () Bool)

(assert (=> b!7855695 (= e!4643121 (matchR!10533 (derivativeStep!6332 r1!6227 (head!16054 s1!4084)) (tail!15597 s1!4084)))))

(declare-fun b!7855696 () Bool)

(declare-fun res!3123440 () Bool)

(assert (=> b!7855696 (=> res!3123440 e!4643120)))

(assert (=> b!7855696 (= res!3123440 (not (isEmpty!42343 (tail!15597 s1!4084))))))

(declare-fun b!7855697 () Bool)

(assert (=> b!7855697 (= e!4643120 (not (= (head!16054 s1!4084) (c!1443671 r1!6227))))))

(declare-fun b!7855698 () Bool)

(declare-fun res!3123439 () Bool)

(assert (=> b!7855698 (=> (not res!3123439) (not e!4643117))))

(assert (=> b!7855698 (= res!3123439 (isEmpty!42343 (tail!15597 s1!4084)))))

(assert (= (and d!2353825 c!1443795) b!7855688))

(assert (= (and d!2353825 (not c!1443795)) b!7855695))

(assert (= (and d!2353825 c!1443793) b!7855690))

(assert (= (and d!2353825 (not c!1443793)) b!7855692))

(assert (= (and b!7855692 c!1443794) b!7855693))

(assert (= (and b!7855692 (not c!1443794)) b!7855689))

(assert (= (and b!7855689 (not res!3123438)) b!7855694))

(assert (= (and b!7855694 res!3123437) b!7855691))

(assert (= (and b!7855691 res!3123443) b!7855698))

(assert (= (and b!7855698 res!3123439) b!7855686))

(assert (= (and b!7855694 (not res!3123444)) b!7855685))

(assert (= (and b!7855685 res!3123442) b!7855687))

(assert (= (and b!7855687 (not res!3123441)) b!7855696))

(assert (= (and b!7855696 (not res!3123440)) b!7855697))

(assert (= (or b!7855690 b!7855687 b!7855691) bm!728209))

(declare-fun m!8260204 () Bool)

(assert (=> b!7855686 m!8260204))

(assert (=> b!7855695 m!8260204))

(assert (=> b!7855695 m!8260204))

(declare-fun m!8260206 () Bool)

(assert (=> b!7855695 m!8260206))

(declare-fun m!8260208 () Bool)

(assert (=> b!7855695 m!8260208))

(assert (=> b!7855695 m!8260206))

(assert (=> b!7855695 m!8260208))

(declare-fun m!8260210 () Bool)

(assert (=> b!7855695 m!8260210))

(assert (=> b!7855697 m!8260204))

(declare-fun m!8260212 () Bool)

(assert (=> d!2353825 m!8260212))

(assert (=> d!2353825 m!8259898))

(assert (=> bm!728209 m!8260212))

(assert (=> b!7855696 m!8260208))

(assert (=> b!7855696 m!8260208))

(declare-fun m!8260214 () Bool)

(assert (=> b!7855696 m!8260214))

(assert (=> b!7855688 m!8259906))

(assert (=> b!7855698 m!8260208))

(assert (=> b!7855698 m!8260208))

(assert (=> b!7855698 m!8260214))

(assert (=> b!7855190 d!2353825))

(declare-fun b!7855710 () Bool)

(declare-fun e!4643124 () Bool)

(declare-fun tp!2327049 () Bool)

(declare-fun tp!2327050 () Bool)

(assert (=> b!7855710 (= e!4643124 (and tp!2327049 tp!2327050))))

(declare-fun b!7855712 () Bool)

(declare-fun tp!2327047 () Bool)

(declare-fun tp!2327048 () Bool)

(assert (=> b!7855712 (= e!4643124 (and tp!2327047 tp!2327048))))

(assert (=> b!7855192 (= tp!2326967 e!4643124)))

(declare-fun b!7855709 () Bool)

(assert (=> b!7855709 (= e!4643124 tp_is_empty!52593)))

(declare-fun b!7855711 () Bool)

(declare-fun tp!2327051 () Bool)

(assert (=> b!7855711 (= e!4643124 tp!2327051)))

(assert (= (and b!7855192 ((_ is ElementMatch!21097) (regOne!42706 r2!6165))) b!7855709))

(assert (= (and b!7855192 ((_ is Concat!29942) (regOne!42706 r2!6165))) b!7855710))

(assert (= (and b!7855192 ((_ is Star!21097) (regOne!42706 r2!6165))) b!7855711))

(assert (= (and b!7855192 ((_ is Union!21097) (regOne!42706 r2!6165))) b!7855712))

(declare-fun b!7855714 () Bool)

(declare-fun e!4643125 () Bool)

(declare-fun tp!2327054 () Bool)

(declare-fun tp!2327055 () Bool)

(assert (=> b!7855714 (= e!4643125 (and tp!2327054 tp!2327055))))

(declare-fun b!7855716 () Bool)

(declare-fun tp!2327052 () Bool)

(declare-fun tp!2327053 () Bool)

(assert (=> b!7855716 (= e!4643125 (and tp!2327052 tp!2327053))))

(assert (=> b!7855192 (= tp!2326961 e!4643125)))

(declare-fun b!7855713 () Bool)

(assert (=> b!7855713 (= e!4643125 tp_is_empty!52593)))

(declare-fun b!7855715 () Bool)

(declare-fun tp!2327056 () Bool)

(assert (=> b!7855715 (= e!4643125 tp!2327056)))

(assert (= (and b!7855192 ((_ is ElementMatch!21097) (regTwo!42706 r2!6165))) b!7855713))

(assert (= (and b!7855192 ((_ is Concat!29942) (regTwo!42706 r2!6165))) b!7855714))

(assert (= (and b!7855192 ((_ is Star!21097) (regTwo!42706 r2!6165))) b!7855715))

(assert (= (and b!7855192 ((_ is Union!21097) (regTwo!42706 r2!6165))) b!7855716))

(declare-fun b!7855718 () Bool)

(declare-fun e!4643126 () Bool)

(declare-fun tp!2327059 () Bool)

(declare-fun tp!2327060 () Bool)

(assert (=> b!7855718 (= e!4643126 (and tp!2327059 tp!2327060))))

(declare-fun b!7855720 () Bool)

(declare-fun tp!2327057 () Bool)

(declare-fun tp!2327058 () Bool)

(assert (=> b!7855720 (= e!4643126 (and tp!2327057 tp!2327058))))

(assert (=> b!7855176 (= tp!2326964 e!4643126)))

(declare-fun b!7855717 () Bool)

(assert (=> b!7855717 (= e!4643126 tp_is_empty!52593)))

(declare-fun b!7855719 () Bool)

(declare-fun tp!2327061 () Bool)

(assert (=> b!7855719 (= e!4643126 tp!2327061)))

(assert (= (and b!7855176 ((_ is ElementMatch!21097) (regOne!42707 r2!6165))) b!7855717))

(assert (= (and b!7855176 ((_ is Concat!29942) (regOne!42707 r2!6165))) b!7855718))

(assert (= (and b!7855176 ((_ is Star!21097) (regOne!42707 r2!6165))) b!7855719))

(assert (= (and b!7855176 ((_ is Union!21097) (regOne!42707 r2!6165))) b!7855720))

(declare-fun b!7855722 () Bool)

(declare-fun e!4643127 () Bool)

(declare-fun tp!2327064 () Bool)

(declare-fun tp!2327065 () Bool)

(assert (=> b!7855722 (= e!4643127 (and tp!2327064 tp!2327065))))

(declare-fun b!7855724 () Bool)

(declare-fun tp!2327062 () Bool)

(declare-fun tp!2327063 () Bool)

(assert (=> b!7855724 (= e!4643127 (and tp!2327062 tp!2327063))))

(assert (=> b!7855176 (= tp!2326969 e!4643127)))

(declare-fun b!7855721 () Bool)

(assert (=> b!7855721 (= e!4643127 tp_is_empty!52593)))

(declare-fun b!7855723 () Bool)

(declare-fun tp!2327066 () Bool)

(assert (=> b!7855723 (= e!4643127 tp!2327066)))

(assert (= (and b!7855176 ((_ is ElementMatch!21097) (regTwo!42707 r2!6165))) b!7855721))

(assert (= (and b!7855176 ((_ is Concat!29942) (regTwo!42707 r2!6165))) b!7855722))

(assert (= (and b!7855176 ((_ is Star!21097) (regTwo!42707 r2!6165))) b!7855723))

(assert (= (and b!7855176 ((_ is Union!21097) (regTwo!42707 r2!6165))) b!7855724))

(declare-fun b!7855726 () Bool)

(declare-fun e!4643128 () Bool)

(declare-fun tp!2327069 () Bool)

(declare-fun tp!2327070 () Bool)

(assert (=> b!7855726 (= e!4643128 (and tp!2327069 tp!2327070))))

(declare-fun b!7855728 () Bool)

(declare-fun tp!2327067 () Bool)

(declare-fun tp!2327068 () Bool)

(assert (=> b!7855728 (= e!4643128 (and tp!2327067 tp!2327068))))

(assert (=> b!7855187 (= tp!2326963 e!4643128)))

(declare-fun b!7855725 () Bool)

(assert (=> b!7855725 (= e!4643128 tp_is_empty!52593)))

(declare-fun b!7855727 () Bool)

(declare-fun tp!2327071 () Bool)

(assert (=> b!7855727 (= e!4643128 tp!2327071)))

(assert (= (and b!7855187 ((_ is ElementMatch!21097) (regOne!42706 r1!6227))) b!7855725))

(assert (= (and b!7855187 ((_ is Concat!29942) (regOne!42706 r1!6227))) b!7855726))

(assert (= (and b!7855187 ((_ is Star!21097) (regOne!42706 r1!6227))) b!7855727))

(assert (= (and b!7855187 ((_ is Union!21097) (regOne!42706 r1!6227))) b!7855728))

(declare-fun b!7855730 () Bool)

(declare-fun e!4643129 () Bool)

(declare-fun tp!2327074 () Bool)

(declare-fun tp!2327075 () Bool)

(assert (=> b!7855730 (= e!4643129 (and tp!2327074 tp!2327075))))

(declare-fun b!7855732 () Bool)

(declare-fun tp!2327072 () Bool)

(declare-fun tp!2327073 () Bool)

(assert (=> b!7855732 (= e!4643129 (and tp!2327072 tp!2327073))))

(assert (=> b!7855187 (= tp!2326962 e!4643129)))

(declare-fun b!7855729 () Bool)

(assert (=> b!7855729 (= e!4643129 tp_is_empty!52593)))

(declare-fun b!7855731 () Bool)

(declare-fun tp!2327076 () Bool)

(assert (=> b!7855731 (= e!4643129 tp!2327076)))

(assert (= (and b!7855187 ((_ is ElementMatch!21097) (regTwo!42706 r1!6227))) b!7855729))

(assert (= (and b!7855187 ((_ is Concat!29942) (regTwo!42706 r1!6227))) b!7855730))

(assert (= (and b!7855187 ((_ is Star!21097) (regTwo!42706 r1!6227))) b!7855731))

(assert (= (and b!7855187 ((_ is Union!21097) (regTwo!42706 r1!6227))) b!7855732))

(declare-fun b!7855737 () Bool)

(declare-fun e!4643132 () Bool)

(declare-fun tp!2327079 () Bool)

(assert (=> b!7855737 (= e!4643132 (and tp_is_empty!52593 tp!2327079))))

(assert (=> b!7855193 (= tp!2326971 e!4643132)))

(assert (= (and b!7855193 ((_ is Cons!73832) (t!388691 s1!4084))) b!7855737))

(declare-fun b!7855739 () Bool)

(declare-fun e!4643133 () Bool)

(declare-fun tp!2327082 () Bool)

(declare-fun tp!2327083 () Bool)

(assert (=> b!7855739 (= e!4643133 (and tp!2327082 tp!2327083))))

(declare-fun b!7855741 () Bool)

(declare-fun tp!2327080 () Bool)

(declare-fun tp!2327081 () Bool)

(assert (=> b!7855741 (= e!4643133 (and tp!2327080 tp!2327081))))

(assert (=> b!7855188 (= tp!2326968 e!4643133)))

(declare-fun b!7855738 () Bool)

(assert (=> b!7855738 (= e!4643133 tp_is_empty!52593)))

(declare-fun b!7855740 () Bool)

(declare-fun tp!2327084 () Bool)

(assert (=> b!7855740 (= e!4643133 tp!2327084)))

(assert (= (and b!7855188 ((_ is ElementMatch!21097) (reg!21426 r1!6227))) b!7855738))

(assert (= (and b!7855188 ((_ is Concat!29942) (reg!21426 r1!6227))) b!7855739))

(assert (= (and b!7855188 ((_ is Star!21097) (reg!21426 r1!6227))) b!7855740))

(assert (= (and b!7855188 ((_ is Union!21097) (reg!21426 r1!6227))) b!7855741))

(declare-fun b!7855742 () Bool)

(declare-fun e!4643134 () Bool)

(declare-fun tp!2327085 () Bool)

(assert (=> b!7855742 (= e!4643134 (and tp_is_empty!52593 tp!2327085))))

(assert (=> b!7855189 (= tp!2326972 e!4643134)))

(assert (= (and b!7855189 ((_ is Cons!73832) (t!388691 s2!3706))) b!7855742))

(declare-fun b!7855744 () Bool)

(declare-fun e!4643135 () Bool)

(declare-fun tp!2327088 () Bool)

(declare-fun tp!2327089 () Bool)

(assert (=> b!7855744 (= e!4643135 (and tp!2327088 tp!2327089))))

(declare-fun b!7855746 () Bool)

(declare-fun tp!2327086 () Bool)

(declare-fun tp!2327087 () Bool)

(assert (=> b!7855746 (= e!4643135 (and tp!2327086 tp!2327087))))

(assert (=> b!7855185 (= tp!2326966 e!4643135)))

(declare-fun b!7855743 () Bool)

(assert (=> b!7855743 (= e!4643135 tp_is_empty!52593)))

(declare-fun b!7855745 () Bool)

(declare-fun tp!2327090 () Bool)

(assert (=> b!7855745 (= e!4643135 tp!2327090)))

(assert (= (and b!7855185 ((_ is ElementMatch!21097) (reg!21426 r2!6165))) b!7855743))

(assert (= (and b!7855185 ((_ is Concat!29942) (reg!21426 r2!6165))) b!7855744))

(assert (= (and b!7855185 ((_ is Star!21097) (reg!21426 r2!6165))) b!7855745))

(assert (= (and b!7855185 ((_ is Union!21097) (reg!21426 r2!6165))) b!7855746))

(declare-fun b!7855748 () Bool)

(declare-fun e!4643136 () Bool)

(declare-fun tp!2327093 () Bool)

(declare-fun tp!2327094 () Bool)

(assert (=> b!7855748 (= e!4643136 (and tp!2327093 tp!2327094))))

(declare-fun b!7855750 () Bool)

(declare-fun tp!2327091 () Bool)

(declare-fun tp!2327092 () Bool)

(assert (=> b!7855750 (= e!4643136 (and tp!2327091 tp!2327092))))

(assert (=> b!7855180 (= tp!2326970 e!4643136)))

(declare-fun b!7855747 () Bool)

(assert (=> b!7855747 (= e!4643136 tp_is_empty!52593)))

(declare-fun b!7855749 () Bool)

(declare-fun tp!2327095 () Bool)

(assert (=> b!7855749 (= e!4643136 tp!2327095)))

(assert (= (and b!7855180 ((_ is ElementMatch!21097) (regOne!42707 r1!6227))) b!7855747))

(assert (= (and b!7855180 ((_ is Concat!29942) (regOne!42707 r1!6227))) b!7855748))

(assert (= (and b!7855180 ((_ is Star!21097) (regOne!42707 r1!6227))) b!7855749))

(assert (= (and b!7855180 ((_ is Union!21097) (regOne!42707 r1!6227))) b!7855750))

(declare-fun b!7855752 () Bool)

(declare-fun e!4643137 () Bool)

(declare-fun tp!2327098 () Bool)

(declare-fun tp!2327099 () Bool)

(assert (=> b!7855752 (= e!4643137 (and tp!2327098 tp!2327099))))

(declare-fun b!7855754 () Bool)

(declare-fun tp!2327096 () Bool)

(declare-fun tp!2327097 () Bool)

(assert (=> b!7855754 (= e!4643137 (and tp!2327096 tp!2327097))))

(assert (=> b!7855180 (= tp!2326965 e!4643137)))

(declare-fun b!7855751 () Bool)

(assert (=> b!7855751 (= e!4643137 tp_is_empty!52593)))

(declare-fun b!7855753 () Bool)

(declare-fun tp!2327100 () Bool)

(assert (=> b!7855753 (= e!4643137 tp!2327100)))

(assert (= (and b!7855180 ((_ is ElementMatch!21097) (regTwo!42707 r1!6227))) b!7855751))

(assert (= (and b!7855180 ((_ is Concat!29942) (regTwo!42707 r1!6227))) b!7855752))

(assert (= (and b!7855180 ((_ is Star!21097) (regTwo!42707 r1!6227))) b!7855753))

(assert (= (and b!7855180 ((_ is Union!21097) (regTwo!42707 r1!6227))) b!7855754))

(check-sat (not b!7855409) (not d!2353785) (not d!2353773) (not bm!728208) (not b!7855697) (not b!7855262) (not d!2353791) (not b!7855739) (not b!7855740) (not b!7855753) (not d!2353771) (not bm!728197) (not d!2353783) (not b!7855408) (not b!7855684) (not d!2353787) (not bm!728143) (not b!7855724) (not b!7855754) (not b!7855337) (not b!7855459) (not b!7855686) (not bm!728196) (not d!2353815) (not bm!728202) (not b!7855731) (not b!7855718) (not b!7855730) (not d!2353761) (not b!7855742) (not bm!728204) (not d!2353781) (not b!7855651) (not b!7855688) (not bm!728142) (not b!7855460) (not b!7855407) (not d!2353825) (not b!7855355) (not b!7855433) (not b!7855457) (not b!7855644) (not b!7855354) (not bm!728147) (not b!7855695) (not b!7855343) (not b!7855263) (not b!7855722) (not b!7855741) (not bm!728146) (not d!2353821) (not b!7855251) (not bm!728149) (not b!7855719) (not b!7855260) (not b!7855393) (not bm!728194) tp_is_empty!52593 (not b!7855737) (not b!7855746) (not bm!728192) (not b!7855728) (not b!7855436) (not b!7855674) (not d!2353795) (not b!7855748) (not bm!728131) (not b!7855714) (not b!7855660) (not b!7855732) (not b!7855727) (not b!7855726) (not b!7855711) (not b!7855710) (not b!7855720) (not b!7855752) (not b!7855448) (not b!7855645) (not b!7855750) (not b!7855715) (not b!7855450) (not b!7855458) (not b!7855398) (not b!7855410) (not b!7855345) (not d!2353823) (not b!7855352) (not b!7855716) (not b!7855745) (not bm!728162) (not b!7855394) (not b!7855642) (not b!7855744) (not b!7855698) (not b!7855328) (not b!7855253) (not bm!728206) (not b!7855712) (not b!7855353) (not b!7855749) (not bm!728199) (not b!7855723) (not bm!728209) (not bm!728145) (not b!7855696) (not b!7855261) (not b!7855400) (not bm!728200))
(check-sat)
(get-model)

(declare-fun bm!728210 () Bool)

(declare-fun call!728217 () Bool)

(declare-fun call!728216 () Bool)

(assert (=> bm!728210 (= call!728217 call!728216)))

(declare-fun b!7855755 () Bool)

(declare-fun e!4643144 () Bool)

(assert (=> b!7855755 (= e!4643144 call!728217)))

(declare-fun b!7855756 () Bool)

(declare-fun e!4643140 () Bool)

(declare-fun call!728215 () Bool)

(assert (=> b!7855756 (= e!4643140 call!728215)))

(declare-fun b!7855757 () Bool)

(declare-fun e!4643138 () Bool)

(assert (=> b!7855757 (= e!4643138 call!728216)))

(declare-fun c!1443796 () Bool)

(declare-fun bm!728211 () Bool)

(declare-fun c!1443797 () Bool)

(assert (=> bm!728211 (= call!728216 (validRegex!11507 (ite c!1443797 (reg!21426 (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))) (ite c!1443796 (regTwo!42707 (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))) (regOne!42706 (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955))))))))))

(declare-fun b!7855759 () Bool)

(declare-fun e!4643143 () Bool)

(assert (=> b!7855759 (= e!4643143 e!4643138)))

(declare-fun res!3123448 () Bool)

(assert (=> b!7855759 (= res!3123448 (not (nullable!9369 (reg!21426 (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))))))))

(assert (=> b!7855759 (=> (not res!3123448) (not e!4643138))))

(declare-fun b!7855760 () Bool)

(declare-fun res!3123447 () Bool)

(assert (=> b!7855760 (=> (not res!3123447) (not e!4643144))))

(assert (=> b!7855760 (= res!3123447 call!728215)))

(declare-fun e!4643142 () Bool)

(assert (=> b!7855760 (= e!4643142 e!4643144)))

(declare-fun b!7855758 () Bool)

(assert (=> b!7855758 (= e!4643143 e!4643142)))

(assert (=> b!7855758 (= c!1443796 ((_ is Union!21097) (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))))))

(declare-fun d!2353827 () Bool)

(declare-fun res!3123445 () Bool)

(declare-fun e!4643139 () Bool)

(assert (=> d!2353827 (=> res!3123445 e!4643139)))

(assert (=> d!2353827 (= res!3123445 ((_ is ElementMatch!21097) (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))))))

(assert (=> d!2353827 (= (validRegex!11507 (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))) e!4643139)))

(declare-fun bm!728212 () Bool)

(assert (=> bm!728212 (= call!728215 (validRegex!11507 (ite c!1443796 (regOne!42707 (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))) (regTwo!42706 (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))))))))

(declare-fun b!7855761 () Bool)

(declare-fun res!3123446 () Bool)

(declare-fun e!4643141 () Bool)

(assert (=> b!7855761 (=> res!3123446 e!4643141)))

(assert (=> b!7855761 (= res!3123446 (not ((_ is Concat!29942) (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955))))))))

(assert (=> b!7855761 (= e!4643142 e!4643141)))

(declare-fun b!7855762 () Bool)

(assert (=> b!7855762 (= e!4643139 e!4643143)))

(assert (=> b!7855762 (= c!1443797 ((_ is Star!21097) (ite c!1443782 (reg!21426 lt!2679955) (ite c!1443781 (regTwo!42707 lt!2679955) (regOne!42706 lt!2679955)))))))

(declare-fun b!7855763 () Bool)

(assert (=> b!7855763 (= e!4643141 e!4643140)))

(declare-fun res!3123449 () Bool)

(assert (=> b!7855763 (=> (not res!3123449) (not e!4643140))))

(assert (=> b!7855763 (= res!3123449 call!728217)))

(assert (= (and d!2353827 (not res!3123445)) b!7855762))

(assert (= (and b!7855762 c!1443797) b!7855759))

(assert (= (and b!7855762 (not c!1443797)) b!7855758))

(assert (= (and b!7855759 res!3123448) b!7855757))

(assert (= (and b!7855758 c!1443796) b!7855760))

(assert (= (and b!7855758 (not c!1443796)) b!7855761))

(assert (= (and b!7855760 res!3123447) b!7855755))

(assert (= (and b!7855761 (not res!3123446)) b!7855763))

(assert (= (and b!7855763 res!3123449) b!7855756))

(assert (= (or b!7855760 b!7855756) bm!728212))

(assert (= (or b!7855755 b!7855763) bm!728210))

(assert (= (or b!7855757 bm!728210) bm!728211))

(declare-fun m!8260216 () Bool)

(assert (=> bm!728211 m!8260216))

(declare-fun m!8260218 () Bool)

(assert (=> b!7855759 m!8260218))

(declare-fun m!8260220 () Bool)

(assert (=> bm!728212 m!8260220))

(assert (=> bm!728199 d!2353827))

(declare-fun d!2353829 () Bool)

(assert (=> d!2353829 (= (isEmpty!42343 (tail!15597 s1!4084)) ((_ is Nil!73832) (tail!15597 s1!4084)))))

(assert (=> b!7855698 d!2353829))

(declare-fun d!2353831 () Bool)

(assert (=> d!2353831 (= (tail!15597 s1!4084) (t!388691 s1!4084))))

(assert (=> b!7855698 d!2353831))

(declare-fun d!2353833 () Bool)

(assert (=> d!2353833 (= (isEmpty!42343 (++!18097 s1!4084 s2!3706)) ((_ is Nil!73832) (++!18097 s1!4084 s2!3706)))))

(assert (=> d!2353771 d!2353833))

(declare-fun bm!728213 () Bool)

(declare-fun call!728220 () Bool)

(declare-fun call!728219 () Bool)

(assert (=> bm!728213 (= call!728220 call!728219)))

(declare-fun b!7855764 () Bool)

(declare-fun e!4643151 () Bool)

(assert (=> b!7855764 (= e!4643151 call!728220)))

(declare-fun b!7855765 () Bool)

(declare-fun e!4643147 () Bool)

(declare-fun call!728218 () Bool)

(assert (=> b!7855765 (= e!4643147 call!728218)))

(declare-fun b!7855766 () Bool)

(declare-fun e!4643145 () Bool)

(assert (=> b!7855766 (= e!4643145 call!728219)))

(declare-fun c!1443798 () Bool)

(declare-fun bm!728214 () Bool)

(declare-fun c!1443799 () Bool)

(assert (=> bm!728214 (= call!728219 (validRegex!11507 (ite c!1443799 (reg!21426 lt!2679952) (ite c!1443798 (regTwo!42707 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun b!7855768 () Bool)

(declare-fun e!4643150 () Bool)

(assert (=> b!7855768 (= e!4643150 e!4643145)))

(declare-fun res!3123453 () Bool)

(assert (=> b!7855768 (= res!3123453 (not (nullable!9369 (reg!21426 lt!2679952))))))

(assert (=> b!7855768 (=> (not res!3123453) (not e!4643145))))

(declare-fun b!7855769 () Bool)

(declare-fun res!3123452 () Bool)

(assert (=> b!7855769 (=> (not res!3123452) (not e!4643151))))

(assert (=> b!7855769 (= res!3123452 call!728218)))

(declare-fun e!4643149 () Bool)

(assert (=> b!7855769 (= e!4643149 e!4643151)))

(declare-fun b!7855767 () Bool)

(assert (=> b!7855767 (= e!4643150 e!4643149)))

(assert (=> b!7855767 (= c!1443798 ((_ is Union!21097) lt!2679952))))

(declare-fun d!2353835 () Bool)

(declare-fun res!3123450 () Bool)

(declare-fun e!4643146 () Bool)

(assert (=> d!2353835 (=> res!3123450 e!4643146)))

(assert (=> d!2353835 (= res!3123450 ((_ is ElementMatch!21097) lt!2679952))))

(assert (=> d!2353835 (= (validRegex!11507 lt!2679952) e!4643146)))

(declare-fun bm!728215 () Bool)

(assert (=> bm!728215 (= call!728218 (validRegex!11507 (ite c!1443798 (regOne!42707 lt!2679952) (regTwo!42706 lt!2679952))))))

(declare-fun b!7855770 () Bool)

(declare-fun res!3123451 () Bool)

(declare-fun e!4643148 () Bool)

(assert (=> b!7855770 (=> res!3123451 e!4643148)))

(assert (=> b!7855770 (= res!3123451 (not ((_ is Concat!29942) lt!2679952)))))

(assert (=> b!7855770 (= e!4643149 e!4643148)))

(declare-fun b!7855771 () Bool)

(assert (=> b!7855771 (= e!4643146 e!4643150)))

(assert (=> b!7855771 (= c!1443799 ((_ is Star!21097) lt!2679952))))

(declare-fun b!7855772 () Bool)

(assert (=> b!7855772 (= e!4643148 e!4643147)))

(declare-fun res!3123454 () Bool)

(assert (=> b!7855772 (=> (not res!3123454) (not e!4643147))))

(assert (=> b!7855772 (= res!3123454 call!728220)))

(assert (= (and d!2353835 (not res!3123450)) b!7855771))

(assert (= (and b!7855771 c!1443799) b!7855768))

(assert (= (and b!7855771 (not c!1443799)) b!7855767))

(assert (= (and b!7855768 res!3123453) b!7855766))

(assert (= (and b!7855767 c!1443798) b!7855769))

(assert (= (and b!7855767 (not c!1443798)) b!7855770))

(assert (= (and b!7855769 res!3123452) b!7855764))

(assert (= (and b!7855770 (not res!3123451)) b!7855772))

(assert (= (and b!7855772 res!3123454) b!7855765))

(assert (= (or b!7855769 b!7855765) bm!728215))

(assert (= (or b!7855764 b!7855772) bm!728213))

(assert (= (or b!7855766 bm!728213) bm!728214))

(declare-fun m!8260222 () Bool)

(assert (=> bm!728214 m!8260222))

(declare-fun m!8260224 () Bool)

(assert (=> b!7855768 m!8260224))

(declare-fun m!8260226 () Bool)

(assert (=> bm!728215 m!8260226))

(assert (=> d!2353771 d!2353835))

(declare-fun d!2353837 () Bool)

(assert (=> d!2353837 (= (isEmpty!42343 lt!2679957) ((_ is Nil!73832) lt!2679957))))

(assert (=> bm!728149 d!2353837))

(declare-fun b!7855773 () Bool)

(declare-fun e!4643155 () Regex!21097)

(assert (=> b!7855773 (= e!4643155 EmptyLang!21097)))

(declare-fun bm!728216 () Bool)

(declare-fun call!728222 () Regex!21097)

(declare-fun call!728221 () Regex!21097)

(assert (=> bm!728216 (= call!728222 call!728221)))

(declare-fun b!7855774 () Bool)

(declare-fun c!1443803 () Bool)

(assert (=> b!7855774 (= c!1443803 ((_ is Union!21097) (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun e!4643154 () Regex!21097)

(declare-fun e!4643152 () Regex!21097)

(assert (=> b!7855774 (= e!4643154 e!4643152)))

(declare-fun b!7855775 () Bool)

(declare-fun e!4643156 () Regex!21097)

(declare-fun call!728224 () Regex!21097)

(assert (=> b!7855775 (= e!4643156 (Union!21097 (Concat!29942 call!728224 (regTwo!42706 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))))) call!728222))))

(declare-fun c!1443801 () Bool)

(declare-fun bm!728217 () Bool)

(assert (=> bm!728217 (= call!728221 (derivativeStep!6332 (ite c!1443803 (regTwo!42707 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))) (ite c!1443801 (regTwo!42706 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))) (regOne!42706 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))))) (h!80280 s1!4084)))))

(declare-fun b!7855776 () Bool)

(declare-fun call!728223 () Regex!21097)

(assert (=> b!7855776 (= e!4643152 (Union!21097 call!728223 call!728221))))

(declare-fun b!7855777 () Bool)

(assert (=> b!7855777 (= e!4643156 (Union!21097 (Concat!29942 call!728222 (regTwo!42706 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))))) EmptyLang!21097))))

(declare-fun bm!728218 () Bool)

(assert (=> bm!728218 (= call!728224 call!728223)))

(declare-fun d!2353839 () Bool)

(declare-fun lt!2680002 () Regex!21097)

(assert (=> d!2353839 (validRegex!11507 lt!2680002)))

(assert (=> d!2353839 (= lt!2680002 e!4643155)))

(declare-fun c!1443802 () Bool)

(assert (=> d!2353839 (= c!1443802 (or ((_ is EmptyExpr!21097) (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))) ((_ is EmptyLang!21097) (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))))))))

(assert (=> d!2353839 (validRegex!11507 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))))))

(assert (=> d!2353839 (= (derivativeStep!6332 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))) (h!80280 s1!4084)) lt!2680002)))

(declare-fun e!4643153 () Regex!21097)

(declare-fun b!7855778 () Bool)

(assert (=> b!7855778 (= e!4643153 (Concat!29942 call!728224 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun b!7855779 () Bool)

(assert (=> b!7855779 (= e!4643154 (ite (= (h!80280 s1!4084) (c!1443671 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))))) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855780 () Bool)

(assert (=> b!7855780 (= e!4643152 e!4643153)))

(declare-fun c!1443804 () Bool)

(assert (=> b!7855780 (= c!1443804 ((_ is Star!21097) (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun b!7855781 () Bool)

(assert (=> b!7855781 (= e!4643155 e!4643154)))

(declare-fun c!1443800 () Bool)

(assert (=> b!7855781 (= c!1443800 ((_ is ElementMatch!21097) (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun bm!728219 () Bool)

(assert (=> bm!728219 (= call!728223 (derivativeStep!6332 (ite c!1443803 (regOne!42707 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))) (ite c!1443804 (reg!21426 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))) (regOne!42706 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952)))))) (h!80280 s1!4084)))))

(declare-fun b!7855782 () Bool)

(assert (=> b!7855782 (= c!1443801 (nullable!9369 (regOne!42706 (ite c!1443786 (regOne!42707 lt!2679952) (ite c!1443787 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))))))))

(assert (=> b!7855782 (= e!4643153 e!4643156)))

(assert (= (and d!2353839 c!1443802) b!7855773))

(assert (= (and d!2353839 (not c!1443802)) b!7855781))

(assert (= (and b!7855781 c!1443800) b!7855779))

(assert (= (and b!7855781 (not c!1443800)) b!7855774))

(assert (= (and b!7855774 c!1443803) b!7855776))

(assert (= (and b!7855774 (not c!1443803)) b!7855780))

(assert (= (and b!7855780 c!1443804) b!7855778))

(assert (= (and b!7855780 (not c!1443804)) b!7855782))

(assert (= (and b!7855782 c!1443801) b!7855775))

(assert (= (and b!7855782 (not c!1443801)) b!7855777))

(assert (= (or b!7855775 b!7855777) bm!728216))

(assert (= (or b!7855778 b!7855775) bm!728218))

(assert (= (or b!7855776 bm!728216) bm!728217))

(assert (= (or b!7855776 bm!728218) bm!728219))

(declare-fun m!8260228 () Bool)

(assert (=> bm!728217 m!8260228))

(declare-fun m!8260230 () Bool)

(assert (=> d!2353839 m!8260230))

(declare-fun m!8260232 () Bool)

(assert (=> d!2353839 m!8260232))

(declare-fun m!8260234 () Bool)

(assert (=> bm!728219 m!8260234))

(declare-fun m!8260236 () Bool)

(assert (=> b!7855782 m!8260236))

(assert (=> bm!728204 d!2353839))

(assert (=> bm!728162 d!2353837))

(declare-fun b!7855783 () Bool)

(declare-fun e!4643161 () Bool)

(declare-fun e!4643157 () Bool)

(assert (=> b!7855783 (= e!4643161 e!4643157)))

(declare-fun res!3123460 () Bool)

(assert (=> b!7855783 (=> (not res!3123460) (not e!4643157))))

(declare-fun lt!2680003 () Bool)

(assert (=> b!7855783 (= res!3123460 (not lt!2680003))))

(declare-fun b!7855784 () Bool)

(declare-fun e!4643159 () Bool)

(assert (=> b!7855784 (= e!4643159 (= (head!16054 (tail!15597 s2!3706)) (c!1443671 (derivativeStep!6332 r2!6165 (head!16054 s2!3706)))))))

(declare-fun b!7855785 () Bool)

(declare-fun e!4643162 () Bool)

(assert (=> b!7855785 (= e!4643157 e!4643162)))

(declare-fun res!3123459 () Bool)

(assert (=> b!7855785 (=> res!3123459 e!4643162)))

(declare-fun call!728225 () Bool)

(assert (=> b!7855785 (= res!3123459 call!728225)))

(declare-fun b!7855786 () Bool)

(declare-fun e!4643163 () Bool)

(assert (=> b!7855786 (= e!4643163 (nullable!9369 (derivativeStep!6332 r2!6165 (head!16054 s2!3706))))))

(declare-fun b!7855787 () Bool)

(declare-fun res!3123456 () Bool)

(assert (=> b!7855787 (=> res!3123456 e!4643161)))

(assert (=> b!7855787 (= res!3123456 (not ((_ is ElementMatch!21097) (derivativeStep!6332 r2!6165 (head!16054 s2!3706)))))))

(declare-fun e!4643160 () Bool)

(assert (=> b!7855787 (= e!4643160 e!4643161)))

(declare-fun b!7855788 () Bool)

(declare-fun e!4643158 () Bool)

(assert (=> b!7855788 (= e!4643158 (= lt!2680003 call!728225))))

(declare-fun d!2353841 () Bool)

(assert (=> d!2353841 e!4643158))

(declare-fun c!1443805 () Bool)

(assert (=> d!2353841 (= c!1443805 ((_ is EmptyExpr!21097) (derivativeStep!6332 r2!6165 (head!16054 s2!3706))))))

(assert (=> d!2353841 (= lt!2680003 e!4643163)))

(declare-fun c!1443807 () Bool)

(assert (=> d!2353841 (= c!1443807 (isEmpty!42343 (tail!15597 s2!3706)))))

(assert (=> d!2353841 (validRegex!11507 (derivativeStep!6332 r2!6165 (head!16054 s2!3706)))))

(assert (=> d!2353841 (= (matchR!10533 (derivativeStep!6332 r2!6165 (head!16054 s2!3706)) (tail!15597 s2!3706)) lt!2680003)))

(declare-fun b!7855789 () Bool)

(declare-fun res!3123461 () Bool)

(assert (=> b!7855789 (=> (not res!3123461) (not e!4643159))))

(assert (=> b!7855789 (= res!3123461 (not call!728225))))

(declare-fun b!7855790 () Bool)

(assert (=> b!7855790 (= e!4643158 e!4643160)))

(declare-fun c!1443806 () Bool)

(assert (=> b!7855790 (= c!1443806 ((_ is EmptyLang!21097) (derivativeStep!6332 r2!6165 (head!16054 s2!3706))))))

(declare-fun b!7855791 () Bool)

(assert (=> b!7855791 (= e!4643160 (not lt!2680003))))

(declare-fun b!7855792 () Bool)

(declare-fun res!3123462 () Bool)

(assert (=> b!7855792 (=> res!3123462 e!4643161)))

(assert (=> b!7855792 (= res!3123462 e!4643159)))

(declare-fun res!3123455 () Bool)

(assert (=> b!7855792 (=> (not res!3123455) (not e!4643159))))

(assert (=> b!7855792 (= res!3123455 lt!2680003)))

(declare-fun bm!728220 () Bool)

(assert (=> bm!728220 (= call!728225 (isEmpty!42343 (tail!15597 s2!3706)))))

(declare-fun b!7855793 () Bool)

(assert (=> b!7855793 (= e!4643163 (matchR!10533 (derivativeStep!6332 (derivativeStep!6332 r2!6165 (head!16054 s2!3706)) (head!16054 (tail!15597 s2!3706))) (tail!15597 (tail!15597 s2!3706))))))

(declare-fun b!7855794 () Bool)

(declare-fun res!3123458 () Bool)

(assert (=> b!7855794 (=> res!3123458 e!4643162)))

(assert (=> b!7855794 (= res!3123458 (not (isEmpty!42343 (tail!15597 (tail!15597 s2!3706)))))))

(declare-fun b!7855795 () Bool)

(assert (=> b!7855795 (= e!4643162 (not (= (head!16054 (tail!15597 s2!3706)) (c!1443671 (derivativeStep!6332 r2!6165 (head!16054 s2!3706))))))))

(declare-fun b!7855796 () Bool)

(declare-fun res!3123457 () Bool)

(assert (=> b!7855796 (=> (not res!3123457) (not e!4643159))))

(assert (=> b!7855796 (= res!3123457 (isEmpty!42343 (tail!15597 (tail!15597 s2!3706))))))

(assert (= (and d!2353841 c!1443807) b!7855786))

(assert (= (and d!2353841 (not c!1443807)) b!7855793))

(assert (= (and d!2353841 c!1443805) b!7855788))

(assert (= (and d!2353841 (not c!1443805)) b!7855790))

(assert (= (and b!7855790 c!1443806) b!7855791))

(assert (= (and b!7855790 (not c!1443806)) b!7855787))

(assert (= (and b!7855787 (not res!3123456)) b!7855792))

(assert (= (and b!7855792 res!3123455) b!7855789))

(assert (= (and b!7855789 res!3123461) b!7855796))

(assert (= (and b!7855796 res!3123457) b!7855784))

(assert (= (and b!7855792 (not res!3123462)) b!7855783))

(assert (= (and b!7855783 res!3123460) b!7855785))

(assert (= (and b!7855785 (not res!3123459)) b!7855794))

(assert (= (and b!7855794 (not res!3123458)) b!7855795))

(assert (= (or b!7855788 b!7855785 b!7855789) bm!728220))

(assert (=> b!7855784 m!8259934))

(declare-fun m!8260238 () Bool)

(assert (=> b!7855784 m!8260238))

(assert (=> b!7855793 m!8259934))

(assert (=> b!7855793 m!8260238))

(assert (=> b!7855793 m!8259932))

(assert (=> b!7855793 m!8260238))

(declare-fun m!8260240 () Bool)

(assert (=> b!7855793 m!8260240))

(assert (=> b!7855793 m!8259934))

(declare-fun m!8260242 () Bool)

(assert (=> b!7855793 m!8260242))

(assert (=> b!7855793 m!8260240))

(assert (=> b!7855793 m!8260242))

(declare-fun m!8260244 () Bool)

(assert (=> b!7855793 m!8260244))

(assert (=> b!7855795 m!8259934))

(assert (=> b!7855795 m!8260238))

(assert (=> d!2353841 m!8259934))

(assert (=> d!2353841 m!8259940))

(assert (=> d!2353841 m!8259932))

(declare-fun m!8260246 () Bool)

(assert (=> d!2353841 m!8260246))

(assert (=> bm!728220 m!8259934))

(assert (=> bm!728220 m!8259940))

(assert (=> b!7855794 m!8259934))

(assert (=> b!7855794 m!8260242))

(assert (=> b!7855794 m!8260242))

(declare-fun m!8260248 () Bool)

(assert (=> b!7855794 m!8260248))

(assert (=> b!7855786 m!8259932))

(declare-fun m!8260250 () Bool)

(assert (=> b!7855786 m!8260250))

(assert (=> b!7855796 m!8259934))

(assert (=> b!7855796 m!8260242))

(assert (=> b!7855796 m!8260242))

(assert (=> b!7855796 m!8260248))

(assert (=> b!7855260 d!2353841))

(declare-fun b!7855797 () Bool)

(declare-fun e!4643167 () Regex!21097)

(assert (=> b!7855797 (= e!4643167 EmptyLang!21097)))

(declare-fun bm!728221 () Bool)

(declare-fun call!728227 () Regex!21097)

(declare-fun call!728226 () Regex!21097)

(assert (=> bm!728221 (= call!728227 call!728226)))

(declare-fun b!7855798 () Bool)

(declare-fun c!1443811 () Bool)

(assert (=> b!7855798 (= c!1443811 ((_ is Union!21097) r2!6165))))

(declare-fun e!4643166 () Regex!21097)

(declare-fun e!4643164 () Regex!21097)

(assert (=> b!7855798 (= e!4643166 e!4643164)))

(declare-fun call!728229 () Regex!21097)

(declare-fun b!7855799 () Bool)

(declare-fun e!4643168 () Regex!21097)

(assert (=> b!7855799 (= e!4643168 (Union!21097 (Concat!29942 call!728229 (regTwo!42706 r2!6165)) call!728227))))

(declare-fun c!1443809 () Bool)

(declare-fun bm!728222 () Bool)

(assert (=> bm!728222 (= call!728226 (derivativeStep!6332 (ite c!1443811 (regTwo!42707 r2!6165) (ite c!1443809 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))) (head!16054 s2!3706)))))

(declare-fun b!7855800 () Bool)

(declare-fun call!728228 () Regex!21097)

(assert (=> b!7855800 (= e!4643164 (Union!21097 call!728228 call!728226))))

(declare-fun b!7855801 () Bool)

(assert (=> b!7855801 (= e!4643168 (Union!21097 (Concat!29942 call!728227 (regTwo!42706 r2!6165)) EmptyLang!21097))))

(declare-fun bm!728223 () Bool)

(assert (=> bm!728223 (= call!728229 call!728228)))

(declare-fun d!2353843 () Bool)

(declare-fun lt!2680004 () Regex!21097)

(assert (=> d!2353843 (validRegex!11507 lt!2680004)))

(assert (=> d!2353843 (= lt!2680004 e!4643167)))

(declare-fun c!1443810 () Bool)

(assert (=> d!2353843 (= c!1443810 (or ((_ is EmptyExpr!21097) r2!6165) ((_ is EmptyLang!21097) r2!6165)))))

(assert (=> d!2353843 (validRegex!11507 r2!6165)))

(assert (=> d!2353843 (= (derivativeStep!6332 r2!6165 (head!16054 s2!3706)) lt!2680004)))

(declare-fun b!7855802 () Bool)

(declare-fun e!4643165 () Regex!21097)

(assert (=> b!7855802 (= e!4643165 (Concat!29942 call!728229 r2!6165))))

(declare-fun b!7855803 () Bool)

(assert (=> b!7855803 (= e!4643166 (ite (= (head!16054 s2!3706) (c!1443671 r2!6165)) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855804 () Bool)

(assert (=> b!7855804 (= e!4643164 e!4643165)))

(declare-fun c!1443812 () Bool)

(assert (=> b!7855804 (= c!1443812 ((_ is Star!21097) r2!6165))))

(declare-fun b!7855805 () Bool)

(assert (=> b!7855805 (= e!4643167 e!4643166)))

(declare-fun c!1443808 () Bool)

(assert (=> b!7855805 (= c!1443808 ((_ is ElementMatch!21097) r2!6165))))

(declare-fun bm!728224 () Bool)

(assert (=> bm!728224 (= call!728228 (derivativeStep!6332 (ite c!1443811 (regOne!42707 r2!6165) (ite c!1443812 (reg!21426 r2!6165) (regOne!42706 r2!6165))) (head!16054 s2!3706)))))

(declare-fun b!7855806 () Bool)

(assert (=> b!7855806 (= c!1443809 (nullable!9369 (regOne!42706 r2!6165)))))

(assert (=> b!7855806 (= e!4643165 e!4643168)))

(assert (= (and d!2353843 c!1443810) b!7855797))

(assert (= (and d!2353843 (not c!1443810)) b!7855805))

(assert (= (and b!7855805 c!1443808) b!7855803))

(assert (= (and b!7855805 (not c!1443808)) b!7855798))

(assert (= (and b!7855798 c!1443811) b!7855800))

(assert (= (and b!7855798 (not c!1443811)) b!7855804))

(assert (= (and b!7855804 c!1443812) b!7855802))

(assert (= (and b!7855804 (not c!1443812)) b!7855806))

(assert (= (and b!7855806 c!1443809) b!7855799))

(assert (= (and b!7855806 (not c!1443809)) b!7855801))

(assert (= (or b!7855799 b!7855801) bm!728221))

(assert (= (or b!7855802 b!7855799) bm!728223))

(assert (= (or b!7855800 bm!728221) bm!728222))

(assert (= (or b!7855800 bm!728223) bm!728224))

(assert (=> bm!728222 m!8259930))

(declare-fun m!8260252 () Bool)

(assert (=> bm!728222 m!8260252))

(declare-fun m!8260254 () Bool)

(assert (=> d!2353843 m!8260254))

(assert (=> d!2353843 m!8259900))

(assert (=> bm!728224 m!8259930))

(declare-fun m!8260256 () Bool)

(assert (=> bm!728224 m!8260256))

(assert (=> b!7855806 m!8260202))

(assert (=> b!7855260 d!2353843))

(declare-fun d!2353845 () Bool)

(assert (=> d!2353845 (= (head!16054 s2!3706) (h!80280 s2!3706))))

(assert (=> b!7855260 d!2353845))

(declare-fun d!2353847 () Bool)

(assert (=> d!2353847 (= (tail!15597 s2!3706) (t!388691 s2!3706))))

(assert (=> b!7855260 d!2353847))

(declare-fun d!2353849 () Bool)

(declare-fun c!1443815 () Bool)

(assert (=> d!2353849 (= c!1443815 ((_ is Nil!73832) lt!2679998))))

(declare-fun e!4643171 () (InoxSet C!42520))

(assert (=> d!2353849 (= (content!15681 lt!2679998) e!4643171)))

(declare-fun b!7855811 () Bool)

(assert (=> b!7855811 (= e!4643171 ((as const (Array C!42520 Bool)) false))))

(declare-fun b!7855812 () Bool)

(assert (=> b!7855812 (= e!4643171 ((_ map or) (store ((as const (Array C!42520 Bool)) false) (h!80280 lt!2679998) true) (content!15681 (t!388691 lt!2679998))))))

(assert (= (and d!2353849 c!1443815) b!7855811))

(assert (= (and d!2353849 (not c!1443815)) b!7855812))

(declare-fun m!8260258 () Bool)

(assert (=> b!7855812 m!8260258))

(declare-fun m!8260260 () Bool)

(assert (=> b!7855812 m!8260260))

(assert (=> d!2353815 d!2353849))

(declare-fun d!2353851 () Bool)

(declare-fun c!1443816 () Bool)

(assert (=> d!2353851 (= c!1443816 ((_ is Nil!73832) (t!388691 s1!4084)))))

(declare-fun e!4643172 () (InoxSet C!42520))

(assert (=> d!2353851 (= (content!15681 (t!388691 s1!4084)) e!4643172)))

(declare-fun b!7855813 () Bool)

(assert (=> b!7855813 (= e!4643172 ((as const (Array C!42520 Bool)) false))))

(declare-fun b!7855814 () Bool)

(assert (=> b!7855814 (= e!4643172 ((_ map or) (store ((as const (Array C!42520 Bool)) false) (h!80280 (t!388691 s1!4084)) true) (content!15681 (t!388691 (t!388691 s1!4084)))))))

(assert (= (and d!2353851 c!1443816) b!7855813))

(assert (= (and d!2353851 (not c!1443816)) b!7855814))

(declare-fun m!8260262 () Bool)

(assert (=> b!7855814 m!8260262))

(declare-fun m!8260264 () Bool)

(assert (=> b!7855814 m!8260264))

(assert (=> d!2353815 d!2353851))

(declare-fun d!2353853 () Bool)

(declare-fun c!1443817 () Bool)

(assert (=> d!2353853 (= c!1443817 ((_ is Nil!73832) s2!3706))))

(declare-fun e!4643173 () (InoxSet C!42520))

(assert (=> d!2353853 (= (content!15681 s2!3706) e!4643173)))

(declare-fun b!7855815 () Bool)

(assert (=> b!7855815 (= e!4643173 ((as const (Array C!42520 Bool)) false))))

(declare-fun b!7855816 () Bool)

(assert (=> b!7855816 (= e!4643173 ((_ map or) (store ((as const (Array C!42520 Bool)) false) (h!80280 s2!3706) true) (content!15681 (t!388691 s2!3706))))))

(assert (= (and d!2353853 c!1443817) b!7855815))

(assert (= (and d!2353853 (not c!1443817)) b!7855816))

(declare-fun m!8260266 () Bool)

(assert (=> b!7855816 m!8260266))

(declare-fun m!8260268 () Bool)

(assert (=> b!7855816 m!8260268))

(assert (=> d!2353815 d!2353853))

(assert (=> b!7855262 d!2353845))

(declare-fun bm!728229 () Bool)

(declare-fun call!728235 () Bool)

(declare-fun c!1443820 () Bool)

(assert (=> bm!728229 (= call!728235 (nullable!9369 (ite c!1443820 (regTwo!42707 r1!6227) (regTwo!42706 r1!6227))))))

(declare-fun b!7855831 () Bool)

(declare-fun e!4643189 () Bool)

(declare-fun e!4643186 () Bool)

(assert (=> b!7855831 (= e!4643189 e!4643186)))

(assert (=> b!7855831 (= c!1443820 ((_ is Union!21097) r1!6227))))

(declare-fun b!7855832 () Bool)

(declare-fun e!4643190 () Bool)

(assert (=> b!7855832 (= e!4643186 e!4643190)))

(declare-fun res!3123477 () Bool)

(declare-fun call!728234 () Bool)

(assert (=> b!7855832 (= res!3123477 call!728234)))

(assert (=> b!7855832 (=> res!3123477 e!4643190)))

(declare-fun b!7855833 () Bool)

(declare-fun e!4643188 () Bool)

(assert (=> b!7855833 (= e!4643186 e!4643188)))

(declare-fun res!3123474 () Bool)

(assert (=> b!7855833 (= res!3123474 call!728234)))

(assert (=> b!7855833 (=> (not res!3123474) (not e!4643188))))

(declare-fun b!7855834 () Bool)

(assert (=> b!7855834 (= e!4643188 call!728235)))

(declare-fun b!7855835 () Bool)

(assert (=> b!7855835 (= e!4643190 call!728235)))

(declare-fun b!7855836 () Bool)

(declare-fun e!4643187 () Bool)

(declare-fun e!4643191 () Bool)

(assert (=> b!7855836 (= e!4643187 e!4643191)))

(declare-fun res!3123476 () Bool)

(assert (=> b!7855836 (=> (not res!3123476) (not e!4643191))))

(assert (=> b!7855836 (= res!3123476 (and (not ((_ is EmptyLang!21097) r1!6227)) (not ((_ is ElementMatch!21097) r1!6227))))))

(declare-fun bm!728230 () Bool)

(assert (=> bm!728230 (= call!728234 (nullable!9369 (ite c!1443820 (regOne!42707 r1!6227) (regOne!42706 r1!6227))))))

(declare-fun b!7855837 () Bool)

(assert (=> b!7855837 (= e!4643191 e!4643189)))

(declare-fun res!3123475 () Bool)

(assert (=> b!7855837 (=> res!3123475 e!4643189)))

(assert (=> b!7855837 (= res!3123475 ((_ is Star!21097) r1!6227))))

(declare-fun d!2353855 () Bool)

(declare-fun res!3123473 () Bool)

(assert (=> d!2353855 (=> res!3123473 e!4643187)))

(assert (=> d!2353855 (= res!3123473 ((_ is EmptyExpr!21097) r1!6227))))

(assert (=> d!2353855 (= (nullableFct!3695 r1!6227) e!4643187)))

(assert (= (and d!2353855 (not res!3123473)) b!7855836))

(assert (= (and b!7855836 res!3123476) b!7855837))

(assert (= (and b!7855837 (not res!3123475)) b!7855831))

(assert (= (and b!7855831 c!1443820) b!7855832))

(assert (= (and b!7855831 (not c!1443820)) b!7855833))

(assert (= (and b!7855832 (not res!3123477)) b!7855835))

(assert (= (and b!7855833 res!3123474) b!7855834))

(assert (= (or b!7855835 b!7855834) bm!728229))

(assert (= (or b!7855832 b!7855833) bm!728230))

(declare-fun m!8260270 () Bool)

(assert (=> bm!728229 m!8260270))

(declare-fun m!8260272 () Bool)

(assert (=> bm!728230 m!8260272))

(assert (=> d!2353791 d!2353855))

(declare-fun bm!728231 () Bool)

(declare-fun call!728238 () Bool)

(declare-fun call!728237 () Bool)

(assert (=> bm!728231 (= call!728238 call!728237)))

(declare-fun b!7855838 () Bool)

(declare-fun e!4643198 () Bool)

(assert (=> b!7855838 (= e!4643198 call!728238)))

(declare-fun b!7855839 () Bool)

(declare-fun e!4643194 () Bool)

(declare-fun call!728236 () Bool)

(assert (=> b!7855839 (= e!4643194 call!728236)))

(declare-fun b!7855840 () Bool)

(declare-fun e!4643192 () Bool)

(assert (=> b!7855840 (= e!4643192 call!728237)))

(declare-fun bm!728232 () Bool)

(declare-fun c!1443822 () Bool)

(declare-fun c!1443821 () Bool)

(assert (=> bm!728232 (= call!728237 (validRegex!11507 (ite c!1443822 (reg!21426 (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))) (ite c!1443821 (regTwo!42707 (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))) (regOne!42706 (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165)))))))))

(declare-fun b!7855842 () Bool)

(declare-fun e!4643197 () Bool)

(assert (=> b!7855842 (= e!4643197 e!4643192)))

(declare-fun res!3123481 () Bool)

(assert (=> b!7855842 (= res!3123481 (not (nullable!9369 (reg!21426 (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))))))))

(assert (=> b!7855842 (=> (not res!3123481) (not e!4643192))))

(declare-fun b!7855843 () Bool)

(declare-fun res!3123480 () Bool)

(assert (=> b!7855843 (=> (not res!3123480) (not e!4643198))))

(assert (=> b!7855843 (= res!3123480 call!728236)))

(declare-fun e!4643196 () Bool)

(assert (=> b!7855843 (= e!4643196 e!4643198)))

(declare-fun b!7855841 () Bool)

(assert (=> b!7855841 (= e!4643197 e!4643196)))

(assert (=> b!7855841 (= c!1443821 ((_ is Union!21097) (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))))))

(declare-fun d!2353857 () Bool)

(declare-fun res!3123478 () Bool)

(declare-fun e!4643193 () Bool)

(assert (=> d!2353857 (=> res!3123478 e!4643193)))

(assert (=> d!2353857 (= res!3123478 ((_ is ElementMatch!21097) (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))))))

(assert (=> d!2353857 (= (validRegex!11507 (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))) e!4643193)))

(declare-fun bm!728233 () Bool)

(assert (=> bm!728233 (= call!728236 (validRegex!11507 (ite c!1443821 (regOne!42707 (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))) (regTwo!42706 (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))))))))

(declare-fun b!7855844 () Bool)

(declare-fun res!3123479 () Bool)

(declare-fun e!4643195 () Bool)

(assert (=> b!7855844 (=> res!3123479 e!4643195)))

(assert (=> b!7855844 (= res!3123479 (not ((_ is Concat!29942) (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165)))))))

(assert (=> b!7855844 (= e!4643196 e!4643195)))

(declare-fun b!7855845 () Bool)

(assert (=> b!7855845 (= e!4643193 e!4643197)))

(assert (=> b!7855845 (= c!1443822 ((_ is Star!21097) (ite c!1443700 (regOne!42707 r2!6165) (regTwo!42706 r2!6165))))))

(declare-fun b!7855846 () Bool)

(assert (=> b!7855846 (= e!4643195 e!4643194)))

(declare-fun res!3123482 () Bool)

(assert (=> b!7855846 (=> (not res!3123482) (not e!4643194))))

(assert (=> b!7855846 (= res!3123482 call!728238)))

(assert (= (and d!2353857 (not res!3123478)) b!7855845))

(assert (= (and b!7855845 c!1443822) b!7855842))

(assert (= (and b!7855845 (not c!1443822)) b!7855841))

(assert (= (and b!7855842 res!3123481) b!7855840))

(assert (= (and b!7855841 c!1443821) b!7855843))

(assert (= (and b!7855841 (not c!1443821)) b!7855844))

(assert (= (and b!7855843 res!3123480) b!7855838))

(assert (= (and b!7855844 (not res!3123479)) b!7855846))

(assert (= (and b!7855846 res!3123482) b!7855839))

(assert (= (or b!7855843 b!7855839) bm!728233))

(assert (= (or b!7855838 b!7855846) bm!728231))

(assert (= (or b!7855840 bm!728231) bm!728232))

(declare-fun m!8260274 () Bool)

(assert (=> bm!728232 m!8260274))

(declare-fun m!8260276 () Bool)

(assert (=> b!7855842 m!8260276))

(declare-fun m!8260278 () Bool)

(assert (=> bm!728233 m!8260278))

(assert (=> bm!728143 d!2353857))

(assert (=> d!2353787 d!2353837))

(assert (=> d!2353787 d!2353817))

(declare-fun d!2353859 () Bool)

(assert (=> d!2353859 (= (nullable!9369 (regOne!42706 r1!6227)) (nullableFct!3695 (regOne!42706 r1!6227)))))

(declare-fun bs!1967123 () Bool)

(assert (= bs!1967123 d!2353859))

(declare-fun m!8260280 () Bool)

(assert (=> bs!1967123 m!8260280))

(assert (=> b!7855642 d!2353859))

(assert (=> b!7855696 d!2353829))

(assert (=> b!7855696 d!2353831))

(declare-fun d!2353861 () Bool)

(assert (=> d!2353861 (= (head!16054 (++!18097 s1!4084 s2!3706)) (h!80280 (++!18097 s1!4084 s2!3706)))))

(assert (=> b!7855354 d!2353861))

(declare-fun d!2353863 () Bool)

(assert (=> d!2353863 (= (nullable!9369 (regOne!42706 r2!6165)) (nullableFct!3695 (regOne!42706 r2!6165)))))

(declare-fun bs!1967124 () Bool)

(assert (= bs!1967124 d!2353863))

(declare-fun m!8260282 () Bool)

(assert (=> bs!1967124 m!8260282))

(assert (=> b!7855684 d!2353863))

(declare-fun d!2353865 () Bool)

(assert (=> d!2353865 (= (nullable!9369 (reg!21426 r2!6165)) (nullableFct!3695 (reg!21426 r2!6165)))))

(declare-fun bs!1967125 () Bool)

(assert (= bs!1967125 d!2353865))

(declare-fun m!8260284 () Bool)

(assert (=> bs!1967125 m!8260284))

(assert (=> b!7855328 d!2353865))

(declare-fun d!2353867 () Bool)

(assert (=> d!2353867 (= (isEmpty!42343 s1!4084) ((_ is Nil!73832) s1!4084))))

(assert (=> bm!728209 d!2353867))

(assert (=> bm!728147 d!2353833))

(declare-fun lt!2680005 () List!73956)

(declare-fun e!4643199 () Bool)

(declare-fun b!7855850 () Bool)

(assert (=> b!7855850 (= e!4643199 (or (not (= s2!3706 Nil!73832)) (= lt!2680005 (t!388691 (t!388691 s1!4084)))))))

(declare-fun b!7855847 () Bool)

(declare-fun e!4643200 () List!73956)

(assert (=> b!7855847 (= e!4643200 s2!3706)))

(declare-fun b!7855848 () Bool)

(assert (=> b!7855848 (= e!4643200 (Cons!73832 (h!80280 (t!388691 (t!388691 s1!4084))) (++!18097 (t!388691 (t!388691 (t!388691 s1!4084))) s2!3706)))))

(declare-fun b!7855849 () Bool)

(declare-fun res!3123484 () Bool)

(assert (=> b!7855849 (=> (not res!3123484) (not e!4643199))))

(assert (=> b!7855849 (= res!3123484 (= (size!42834 lt!2680005) (+ (size!42834 (t!388691 (t!388691 s1!4084))) (size!42834 s2!3706))))))

(declare-fun d!2353869 () Bool)

(assert (=> d!2353869 e!4643199))

(declare-fun res!3123483 () Bool)

(assert (=> d!2353869 (=> (not res!3123483) (not e!4643199))))

(assert (=> d!2353869 (= res!3123483 (= (content!15681 lt!2680005) ((_ map or) (content!15681 (t!388691 (t!388691 s1!4084))) (content!15681 s2!3706))))))

(assert (=> d!2353869 (= lt!2680005 e!4643200)))

(declare-fun c!1443823 () Bool)

(assert (=> d!2353869 (= c!1443823 ((_ is Nil!73832) (t!388691 (t!388691 s1!4084))))))

(assert (=> d!2353869 (= (++!18097 (t!388691 (t!388691 s1!4084)) s2!3706) lt!2680005)))

(assert (= (and d!2353869 c!1443823) b!7855847))

(assert (= (and d!2353869 (not c!1443823)) b!7855848))

(assert (= (and d!2353869 res!3123483) b!7855849))

(assert (= (and b!7855849 res!3123484) b!7855850))

(declare-fun m!8260286 () Bool)

(assert (=> b!7855848 m!8260286))

(declare-fun m!8260288 () Bool)

(assert (=> b!7855849 m!8260288))

(declare-fun m!8260290 () Bool)

(assert (=> b!7855849 m!8260290))

(assert (=> b!7855849 m!8260022))

(declare-fun m!8260292 () Bool)

(assert (=> d!2353869 m!8260292))

(assert (=> d!2353869 m!8260264))

(assert (=> d!2353869 m!8260030))

(assert (=> b!7855644 d!2353869))

(declare-fun bm!728234 () Bool)

(declare-fun call!728241 () Bool)

(declare-fun call!728240 () Bool)

(assert (=> bm!728234 (= call!728241 call!728240)))

(declare-fun b!7855851 () Bool)

(declare-fun e!4643207 () Bool)

(assert (=> b!7855851 (= e!4643207 call!728241)))

(declare-fun b!7855852 () Bool)

(declare-fun e!4643203 () Bool)

(declare-fun call!728239 () Bool)

(assert (=> b!7855852 (= e!4643203 call!728239)))

(declare-fun b!7855853 () Bool)

(declare-fun e!4643201 () Bool)

(assert (=> b!7855853 (= e!4643201 call!728240)))

(declare-fun c!1443824 () Bool)

(declare-fun c!1443825 () Bool)

(declare-fun bm!728235 () Bool)

(assert (=> bm!728235 (= call!728240 (validRegex!11507 (ite c!1443825 (reg!21426 (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))) (ite c!1443824 (regTwo!42707 (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))) (regOne!42706 (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227)))))))))

(declare-fun b!7855855 () Bool)

(declare-fun e!4643206 () Bool)

(assert (=> b!7855855 (= e!4643206 e!4643201)))

(declare-fun res!3123488 () Bool)

(assert (=> b!7855855 (= res!3123488 (not (nullable!9369 (reg!21426 (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))))))))

(assert (=> b!7855855 (=> (not res!3123488) (not e!4643201))))

(declare-fun b!7855856 () Bool)

(declare-fun res!3123487 () Bool)

(assert (=> b!7855856 (=> (not res!3123487) (not e!4643207))))

(assert (=> b!7855856 (= res!3123487 call!728239)))

(declare-fun e!4643205 () Bool)

(assert (=> b!7855856 (= e!4643205 e!4643207)))

(declare-fun b!7855854 () Bool)

(assert (=> b!7855854 (= e!4643206 e!4643205)))

(assert (=> b!7855854 (= c!1443824 ((_ is Union!21097) (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))))))

(declare-fun d!2353871 () Bool)

(declare-fun res!3123485 () Bool)

(declare-fun e!4643202 () Bool)

(assert (=> d!2353871 (=> res!3123485 e!4643202)))

(assert (=> d!2353871 (= res!3123485 ((_ is ElementMatch!21097) (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))))))

(assert (=> d!2353871 (= (validRegex!11507 (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))) e!4643202)))

(declare-fun bm!728236 () Bool)

(assert (=> bm!728236 (= call!728239 (validRegex!11507 (ite c!1443824 (regOne!42707 (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))) (regTwo!42706 (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))))))))

(declare-fun b!7855857 () Bool)

(declare-fun res!3123486 () Bool)

(declare-fun e!4643204 () Bool)

(assert (=> b!7855857 (=> res!3123486 e!4643204)))

(assert (=> b!7855857 (= res!3123486 (not ((_ is Concat!29942) (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227)))))))

(assert (=> b!7855857 (= e!4643205 e!4643204)))

(declare-fun b!7855858 () Bool)

(assert (=> b!7855858 (= e!4643202 e!4643206)))

(assert (=> b!7855858 (= c!1443825 ((_ is Star!21097) (ite c!1443702 (regOne!42707 r1!6227) (regTwo!42706 r1!6227))))))

(declare-fun b!7855859 () Bool)

(assert (=> b!7855859 (= e!4643204 e!4643203)))

(declare-fun res!3123489 () Bool)

(assert (=> b!7855859 (=> (not res!3123489) (not e!4643203))))

(assert (=> b!7855859 (= res!3123489 call!728241)))

(assert (= (and d!2353871 (not res!3123485)) b!7855858))

(assert (= (and b!7855858 c!1443825) b!7855855))

(assert (= (and b!7855858 (not c!1443825)) b!7855854))

(assert (= (and b!7855855 res!3123488) b!7855853))

(assert (= (and b!7855854 c!1443824) b!7855856))

(assert (= (and b!7855854 (not c!1443824)) b!7855857))

(assert (= (and b!7855856 res!3123487) b!7855851))

(assert (= (and b!7855857 (not res!3123486)) b!7855859))

(assert (= (and b!7855859 res!3123489) b!7855852))

(assert (= (or b!7855856 b!7855852) bm!728236))

(assert (= (or b!7855851 b!7855859) bm!728234))

(assert (= (or b!7855853 bm!728234) bm!728235))

(declare-fun m!8260294 () Bool)

(assert (=> bm!728235 m!8260294))

(declare-fun m!8260296 () Bool)

(assert (=> b!7855855 m!8260296))

(declare-fun m!8260298 () Bool)

(assert (=> bm!728236 m!8260298))

(assert (=> bm!728146 d!2353871))

(assert (=> b!7855688 d!2353791))

(declare-fun d!2353873 () Bool)

(assert (=> d!2353873 (= (isEmpty!42343 (tail!15597 (++!18097 s1!4084 s2!3706))) ((_ is Nil!73832) (tail!15597 (++!18097 s1!4084 s2!3706))))))

(assert (=> b!7855353 d!2353873))

(declare-fun d!2353875 () Bool)

(assert (=> d!2353875 (= (tail!15597 (++!18097 s1!4084 s2!3706)) (t!388691 (++!18097 s1!4084 s2!3706)))))

(assert (=> b!7855353 d!2353875))

(assert (=> b!7855393 d!2353815))

(declare-fun bm!728237 () Bool)

(declare-fun call!728244 () Bool)

(declare-fun call!728243 () Bool)

(assert (=> bm!728237 (= call!728244 call!728243)))

(declare-fun b!7855860 () Bool)

(declare-fun e!4643214 () Bool)

(assert (=> b!7855860 (= e!4643214 call!728244)))

(declare-fun b!7855861 () Bool)

(declare-fun e!4643210 () Bool)

(declare-fun call!728242 () Bool)

(assert (=> b!7855861 (= e!4643210 call!728242)))

(declare-fun b!7855862 () Bool)

(declare-fun e!4643208 () Bool)

(assert (=> b!7855862 (= e!4643208 call!728243)))

(declare-fun bm!728238 () Bool)

(declare-fun c!1443827 () Bool)

(declare-fun c!1443826 () Bool)

(assert (=> bm!728238 (= call!728243 (validRegex!11507 (ite c!1443827 (reg!21426 lt!2679999) (ite c!1443826 (regTwo!42707 lt!2679999) (regOne!42706 lt!2679999)))))))

(declare-fun b!7855864 () Bool)

(declare-fun e!4643213 () Bool)

(assert (=> b!7855864 (= e!4643213 e!4643208)))

(declare-fun res!3123493 () Bool)

(assert (=> b!7855864 (= res!3123493 (not (nullable!9369 (reg!21426 lt!2679999))))))

(assert (=> b!7855864 (=> (not res!3123493) (not e!4643208))))

(declare-fun b!7855865 () Bool)

(declare-fun res!3123492 () Bool)

(assert (=> b!7855865 (=> (not res!3123492) (not e!4643214))))

(assert (=> b!7855865 (= res!3123492 call!728242)))

(declare-fun e!4643212 () Bool)

(assert (=> b!7855865 (= e!4643212 e!4643214)))

(declare-fun b!7855863 () Bool)

(assert (=> b!7855863 (= e!4643213 e!4643212)))

(assert (=> b!7855863 (= c!1443826 ((_ is Union!21097) lt!2679999))))

(declare-fun d!2353877 () Bool)

(declare-fun res!3123490 () Bool)

(declare-fun e!4643209 () Bool)

(assert (=> d!2353877 (=> res!3123490 e!4643209)))

(assert (=> d!2353877 (= res!3123490 ((_ is ElementMatch!21097) lt!2679999))))

(assert (=> d!2353877 (= (validRegex!11507 lt!2679999) e!4643209)))

(declare-fun bm!728239 () Bool)

(assert (=> bm!728239 (= call!728242 (validRegex!11507 (ite c!1443826 (regOne!42707 lt!2679999) (regTwo!42706 lt!2679999))))))

(declare-fun b!7855866 () Bool)

(declare-fun res!3123491 () Bool)

(declare-fun e!4643211 () Bool)

(assert (=> b!7855866 (=> res!3123491 e!4643211)))

(assert (=> b!7855866 (= res!3123491 (not ((_ is Concat!29942) lt!2679999)))))

(assert (=> b!7855866 (= e!4643212 e!4643211)))

(declare-fun b!7855867 () Bool)

(assert (=> b!7855867 (= e!4643209 e!4643213)))

(assert (=> b!7855867 (= c!1443827 ((_ is Star!21097) lt!2679999))))

(declare-fun b!7855868 () Bool)

(assert (=> b!7855868 (= e!4643211 e!4643210)))

(declare-fun res!3123494 () Bool)

(assert (=> b!7855868 (=> (not res!3123494) (not e!4643210))))

(assert (=> b!7855868 (= res!3123494 call!728244)))

(assert (= (and d!2353877 (not res!3123490)) b!7855867))

(assert (= (and b!7855867 c!1443827) b!7855864))

(assert (= (and b!7855867 (not c!1443827)) b!7855863))

(assert (= (and b!7855864 res!3123493) b!7855862))

(assert (= (and b!7855863 c!1443826) b!7855865))

(assert (= (and b!7855863 (not c!1443826)) b!7855866))

(assert (= (and b!7855865 res!3123492) b!7855860))

(assert (= (and b!7855866 (not res!3123491)) b!7855868))

(assert (= (and b!7855868 res!3123494) b!7855861))

(assert (= (or b!7855865 b!7855861) bm!728239))

(assert (= (or b!7855860 b!7855868) bm!728237))

(assert (= (or b!7855862 bm!728237) bm!728238))

(declare-fun m!8260300 () Bool)

(assert (=> bm!728238 m!8260300))

(declare-fun m!8260302 () Bool)

(assert (=> b!7855864 m!8260302))

(declare-fun m!8260304 () Bool)

(assert (=> bm!728239 m!8260304))

(assert (=> d!2353821 d!2353877))

(assert (=> d!2353821 d!2353835))

(declare-fun b!7855869 () Bool)

(declare-fun e!4643218 () Regex!21097)

(assert (=> b!7855869 (= e!4643218 EmptyLang!21097)))

(declare-fun bm!728240 () Bool)

(declare-fun call!728246 () Regex!21097)

(declare-fun call!728245 () Regex!21097)

(assert (=> bm!728240 (= call!728246 call!728245)))

(declare-fun b!7855870 () Bool)

(declare-fun c!1443831 () Bool)

(assert (=> b!7855870 (= c!1443831 ((_ is Union!21097) (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun e!4643217 () Regex!21097)

(declare-fun e!4643215 () Regex!21097)

(assert (=> b!7855870 (= e!4643217 e!4643215)))

(declare-fun b!7855871 () Bool)

(declare-fun e!4643219 () Regex!21097)

(declare-fun call!728248 () Regex!21097)

(assert (=> b!7855871 (= e!4643219 (Union!21097 (Concat!29942 call!728248 (regTwo!42706 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227))))) call!728246))))

(declare-fun bm!728241 () Bool)

(declare-fun c!1443829 () Bool)

(assert (=> bm!728241 (= call!728245 (derivativeStep!6332 (ite c!1443831 (regTwo!42707 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))) (ite c!1443829 (regTwo!42706 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))) (regOne!42706 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))))) (h!80280 s1!4084)))))

(declare-fun b!7855872 () Bool)

(declare-fun call!728247 () Regex!21097)

(assert (=> b!7855872 (= e!4643215 (Union!21097 call!728247 call!728245))))

(declare-fun b!7855873 () Bool)

(assert (=> b!7855873 (= e!4643219 (Union!21097 (Concat!29942 call!728246 (regTwo!42706 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227))))) EmptyLang!21097))))

(declare-fun bm!728242 () Bool)

(assert (=> bm!728242 (= call!728248 call!728247)))

(declare-fun d!2353879 () Bool)

(declare-fun lt!2680006 () Regex!21097)

(assert (=> d!2353879 (validRegex!11507 lt!2680006)))

(assert (=> d!2353879 (= lt!2680006 e!4643218)))

(declare-fun c!1443830 () Bool)

(assert (=> d!2353879 (= c!1443830 (or ((_ is EmptyExpr!21097) (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))) ((_ is EmptyLang!21097) (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227))))))))

(assert (=> d!2353879 (validRegex!11507 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227))))))

(assert (=> d!2353879 (= (derivativeStep!6332 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227))) (h!80280 s1!4084)) lt!2680006)))

(declare-fun b!7855874 () Bool)

(declare-fun e!4643216 () Regex!21097)

(assert (=> b!7855874 (= e!4643216 (Concat!29942 call!728248 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun b!7855875 () Bool)

(assert (=> b!7855875 (= e!4643217 (ite (= (h!80280 s1!4084) (c!1443671 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227))))) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855876 () Bool)

(assert (=> b!7855876 (= e!4643215 e!4643216)))

(declare-fun c!1443832 () Bool)

(assert (=> b!7855876 (= c!1443832 ((_ is Star!21097) (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun b!7855877 () Bool)

(assert (=> b!7855877 (= e!4643218 e!4643217)))

(declare-fun c!1443828 () Bool)

(assert (=> b!7855877 (= c!1443828 ((_ is ElementMatch!21097) (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun bm!728243 () Bool)

(assert (=> bm!728243 (= call!728247 (derivativeStep!6332 (ite c!1443831 (regOne!42707 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))) (ite c!1443832 (reg!21426 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))) (regOne!42706 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227)))))) (h!80280 s1!4084)))))

(declare-fun b!7855878 () Bool)

(assert (=> b!7855878 (= c!1443829 (nullable!9369 (regOne!42706 (ite c!1443776 (regOne!42707 r1!6227) (ite c!1443777 (reg!21426 r1!6227) (regOne!42706 r1!6227))))))))

(assert (=> b!7855878 (= e!4643216 e!4643219)))

(assert (= (and d!2353879 c!1443830) b!7855869))

(assert (= (and d!2353879 (not c!1443830)) b!7855877))

(assert (= (and b!7855877 c!1443828) b!7855875))

(assert (= (and b!7855877 (not c!1443828)) b!7855870))

(assert (= (and b!7855870 c!1443831) b!7855872))

(assert (= (and b!7855870 (not c!1443831)) b!7855876))

(assert (= (and b!7855876 c!1443832) b!7855874))

(assert (= (and b!7855876 (not c!1443832)) b!7855878))

(assert (= (and b!7855878 c!1443829) b!7855871))

(assert (= (and b!7855878 (not c!1443829)) b!7855873))

(assert (= (or b!7855871 b!7855873) bm!728240))

(assert (= (or b!7855874 b!7855871) bm!728242))

(assert (= (or b!7855872 bm!728240) bm!728241))

(assert (= (or b!7855872 bm!728242) bm!728243))

(declare-fun m!8260306 () Bool)

(assert (=> bm!728241 m!8260306))

(declare-fun m!8260308 () Bool)

(assert (=> d!2353879 m!8260308))

(declare-fun m!8260310 () Bool)

(assert (=> d!2353879 m!8260310))

(declare-fun m!8260312 () Bool)

(assert (=> bm!728243 m!8260312))

(declare-fun m!8260314 () Bool)

(assert (=> b!7855878 m!8260314))

(assert (=> bm!728194 d!2353879))

(declare-fun d!2353881 () Bool)

(assert (=> d!2353881 (= (nullable!9369 (reg!21426 r1!6227)) (nullableFct!3695 (reg!21426 r1!6227)))))

(declare-fun bs!1967126 () Bool)

(assert (= bs!1967126 d!2353881))

(declare-fun m!8260316 () Bool)

(assert (=> bs!1967126 m!8260316))

(assert (=> b!7855337 d!2353881))

(declare-fun d!2353883 () Bool)

(assert (=> d!2353883 (= (isEmpty!42343 (tail!15597 lt!2679957)) ((_ is Nil!73832) (tail!15597 lt!2679957)))))

(assert (=> b!7855410 d!2353883))

(declare-fun d!2353885 () Bool)

(assert (=> d!2353885 (= (tail!15597 lt!2679957) (t!388691 lt!2679957))))

(assert (=> b!7855410 d!2353885))

(declare-fun b!7855879 () Bool)

(declare-fun e!4643223 () Regex!21097)

(assert (=> b!7855879 (= e!4643223 EmptyLang!21097)))

(declare-fun bm!728244 () Bool)

(declare-fun call!728250 () Regex!21097)

(declare-fun call!728249 () Regex!21097)

(assert (=> bm!728244 (= call!728250 call!728249)))

(declare-fun c!1443836 () Bool)

(declare-fun b!7855880 () Bool)

(assert (=> b!7855880 (= c!1443836 ((_ is Union!21097) (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun e!4643222 () Regex!21097)

(declare-fun e!4643220 () Regex!21097)

(assert (=> b!7855880 (= e!4643222 e!4643220)))

(declare-fun call!728252 () Regex!21097)

(declare-fun b!7855881 () Bool)

(declare-fun e!4643224 () Regex!21097)

(assert (=> b!7855881 (= e!4643224 (Union!21097 (Concat!29942 call!728252 (regTwo!42706 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))))) call!728250))))

(declare-fun bm!728245 () Bool)

(declare-fun c!1443834 () Bool)

(assert (=> bm!728245 (= call!728249 (derivativeStep!6332 (ite c!1443836 (regTwo!42707 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))) (ite c!1443834 (regTwo!42706 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))) (regOne!42706 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))))) (h!80280 s1!4084)))))

(declare-fun b!7855882 () Bool)

(declare-fun call!728251 () Regex!21097)

(assert (=> b!7855882 (= e!4643220 (Union!21097 call!728251 call!728249))))

(declare-fun b!7855883 () Bool)

(assert (=> b!7855883 (= e!4643224 (Union!21097 (Concat!29942 call!728250 (regTwo!42706 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))))) EmptyLang!21097))))

(declare-fun bm!728246 () Bool)

(assert (=> bm!728246 (= call!728252 call!728251)))

(declare-fun d!2353887 () Bool)

(declare-fun lt!2680007 () Regex!21097)

(assert (=> d!2353887 (validRegex!11507 lt!2680007)))

(assert (=> d!2353887 (= lt!2680007 e!4643223)))

(declare-fun c!1443835 () Bool)

(assert (=> d!2353887 (= c!1443835 (or ((_ is EmptyExpr!21097) (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))) ((_ is EmptyLang!21097) (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))))))))

(assert (=> d!2353887 (validRegex!11507 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))))))

(assert (=> d!2353887 (= (derivativeStep!6332 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))) (h!80280 s1!4084)) lt!2680007)))

(declare-fun e!4643221 () Regex!21097)

(declare-fun b!7855884 () Bool)

(assert (=> b!7855884 (= e!4643221 (Concat!29942 call!728252 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun b!7855885 () Bool)

(assert (=> b!7855885 (= e!4643222 (ite (= (h!80280 s1!4084) (c!1443671 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))))) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855886 () Bool)

(assert (=> b!7855886 (= e!4643220 e!4643221)))

(declare-fun c!1443837 () Bool)

(assert (=> b!7855886 (= c!1443837 ((_ is Star!21097) (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun b!7855887 () Bool)

(assert (=> b!7855887 (= e!4643223 e!4643222)))

(declare-fun c!1443833 () Bool)

(assert (=> b!7855887 (= c!1443833 ((_ is ElementMatch!21097) (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun bm!728247 () Bool)

(assert (=> bm!728247 (= call!728251 (derivativeStep!6332 (ite c!1443836 (regOne!42707 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))) (ite c!1443837 (reg!21426 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))) (regOne!42706 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227)))))) (h!80280 s1!4084)))))

(declare-fun b!7855888 () Bool)

(assert (=> b!7855888 (= c!1443834 (nullable!9369 (regOne!42706 (ite c!1443776 (regTwo!42707 r1!6227) (ite c!1443774 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))))))))

(assert (=> b!7855888 (= e!4643221 e!4643224)))

(assert (= (and d!2353887 c!1443835) b!7855879))

(assert (= (and d!2353887 (not c!1443835)) b!7855887))

(assert (= (and b!7855887 c!1443833) b!7855885))

(assert (= (and b!7855887 (not c!1443833)) b!7855880))

(assert (= (and b!7855880 c!1443836) b!7855882))

(assert (= (and b!7855880 (not c!1443836)) b!7855886))

(assert (= (and b!7855886 c!1443837) b!7855884))

(assert (= (and b!7855886 (not c!1443837)) b!7855888))

(assert (= (and b!7855888 c!1443834) b!7855881))

(assert (= (and b!7855888 (not c!1443834)) b!7855883))

(assert (= (or b!7855881 b!7855883) bm!728244))

(assert (= (or b!7855884 b!7855881) bm!728246))

(assert (= (or b!7855882 bm!728244) bm!728245))

(assert (= (or b!7855882 bm!728246) bm!728247))

(declare-fun m!8260318 () Bool)

(assert (=> bm!728245 m!8260318))

(declare-fun m!8260320 () Bool)

(assert (=> d!2353887 m!8260320))

(declare-fun m!8260322 () Bool)

(assert (=> d!2353887 m!8260322))

(declare-fun m!8260324 () Bool)

(assert (=> bm!728247 m!8260324))

(declare-fun m!8260326 () Bool)

(assert (=> b!7855888 m!8260326))

(assert (=> bm!728192 d!2353887))

(assert (=> b!7855458 d!2353883))

(assert (=> b!7855458 d!2353885))

(declare-fun d!2353889 () Bool)

(assert (=> d!2353889 (= (isEmpty!42343 s2!3706) ((_ is Nil!73832) s2!3706))))

(assert (=> d!2353761 d!2353889))

(assert (=> d!2353761 d!2353765))

(declare-fun b!7855889 () Bool)

(declare-fun e!4643228 () Regex!21097)

(assert (=> b!7855889 (= e!4643228 EmptyLang!21097)))

(declare-fun bm!728248 () Bool)

(declare-fun call!728254 () Regex!21097)

(declare-fun call!728253 () Regex!21097)

(assert (=> bm!728248 (= call!728254 call!728253)))

(declare-fun c!1443841 () Bool)

(declare-fun b!7855890 () Bool)

(assert (=> b!7855890 (= c!1443841 ((_ is Union!21097) (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun e!4643227 () Regex!21097)

(declare-fun e!4643225 () Regex!21097)

(assert (=> b!7855890 (= e!4643227 e!4643225)))

(declare-fun call!728256 () Regex!21097)

(declare-fun b!7855891 () Bool)

(declare-fun e!4643229 () Regex!21097)

(assert (=> b!7855891 (= e!4643229 (Union!21097 (Concat!29942 call!728256 (regTwo!42706 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))))) call!728254))))

(declare-fun c!1443839 () Bool)

(declare-fun bm!728249 () Bool)

(assert (=> bm!728249 (= call!728253 (derivativeStep!6332 (ite c!1443841 (regTwo!42707 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))) (ite c!1443839 (regTwo!42706 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))) (regOne!42706 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))))) (h!80280 s1!4084)))))

(declare-fun b!7855892 () Bool)

(declare-fun call!728255 () Regex!21097)

(assert (=> b!7855892 (= e!4643225 (Union!21097 call!728255 call!728253))))

(declare-fun b!7855893 () Bool)

(assert (=> b!7855893 (= e!4643229 (Union!21097 (Concat!29942 call!728254 (regTwo!42706 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))))) EmptyLang!21097))))

(declare-fun bm!728250 () Bool)

(assert (=> bm!728250 (= call!728256 call!728255)))

(declare-fun d!2353891 () Bool)

(declare-fun lt!2680008 () Regex!21097)

(assert (=> d!2353891 (validRegex!11507 lt!2680008)))

(assert (=> d!2353891 (= lt!2680008 e!4643228)))

(declare-fun c!1443840 () Bool)

(assert (=> d!2353891 (= c!1443840 (or ((_ is EmptyExpr!21097) (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))) ((_ is EmptyLang!21097) (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))))))))

(assert (=> d!2353891 (validRegex!11507 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))))))

(assert (=> d!2353891 (= (derivativeStep!6332 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))) (h!80280 s1!4084)) lt!2680008)))

(declare-fun e!4643226 () Regex!21097)

(declare-fun b!7855894 () Bool)

(assert (=> b!7855894 (= e!4643226 (Concat!29942 call!728256 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun b!7855895 () Bool)

(assert (=> b!7855895 (= e!4643227 (ite (= (h!80280 s1!4084) (c!1443671 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))))) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855896 () Bool)

(assert (=> b!7855896 (= e!4643225 e!4643226)))

(declare-fun c!1443842 () Bool)

(assert (=> b!7855896 (= c!1443842 ((_ is Star!21097) (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun b!7855897 () Bool)

(assert (=> b!7855897 (= e!4643228 e!4643227)))

(declare-fun c!1443838 () Bool)

(assert (=> b!7855897 (= c!1443838 ((_ is ElementMatch!21097) (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun bm!728251 () Bool)

(assert (=> bm!728251 (= call!728255 (derivativeStep!6332 (ite c!1443841 (regOne!42707 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))) (ite c!1443842 (reg!21426 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))) (regOne!42706 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165)))))) (h!80280 s1!4084)))))

(declare-fun b!7855898 () Bool)

(assert (=> b!7855898 (= c!1443839 (nullable!9369 (regOne!42706 (ite c!1443791 (regTwo!42707 r2!6165) (ite c!1443789 (regTwo!42706 r2!6165) (regOne!42706 r2!6165))))))))

(assert (=> b!7855898 (= e!4643226 e!4643229)))

(assert (= (and d!2353891 c!1443840) b!7855889))

(assert (= (and d!2353891 (not c!1443840)) b!7855897))

(assert (= (and b!7855897 c!1443838) b!7855895))

(assert (= (and b!7855897 (not c!1443838)) b!7855890))

(assert (= (and b!7855890 c!1443841) b!7855892))

(assert (= (and b!7855890 (not c!1443841)) b!7855896))

(assert (= (and b!7855896 c!1443842) b!7855894))

(assert (= (and b!7855896 (not c!1443842)) b!7855898))

(assert (= (and b!7855898 c!1443839) b!7855891))

(assert (= (and b!7855898 (not c!1443839)) b!7855893))

(assert (= (or b!7855891 b!7855893) bm!728248))

(assert (= (or b!7855894 b!7855891) bm!728250))

(assert (= (or b!7855892 bm!728248) bm!728249))

(assert (= (or b!7855892 bm!728250) bm!728251))

(declare-fun m!8260328 () Bool)

(assert (=> bm!728249 m!8260328))

(declare-fun m!8260330 () Bool)

(assert (=> d!2353891 m!8260330))

(declare-fun m!8260332 () Bool)

(assert (=> d!2353891 m!8260332))

(declare-fun m!8260334 () Bool)

(assert (=> bm!728251 m!8260334))

(declare-fun m!8260336 () Bool)

(assert (=> b!7855898 m!8260336))

(assert (=> bm!728206 d!2353891))

(declare-fun bm!728252 () Bool)

(declare-fun call!728259 () Bool)

(declare-fun call!728258 () Bool)

(assert (=> bm!728252 (= call!728259 call!728258)))

(declare-fun b!7855899 () Bool)

(declare-fun e!4643236 () Bool)

(assert (=> b!7855899 (= e!4643236 call!728259)))

(declare-fun b!7855900 () Bool)

(declare-fun e!4643232 () Bool)

(declare-fun call!728257 () Bool)

(assert (=> b!7855900 (= e!4643232 call!728257)))

(declare-fun b!7855901 () Bool)

(declare-fun e!4643230 () Bool)

(assert (=> b!7855901 (= e!4643230 call!728258)))

(declare-fun c!1443844 () Bool)

(declare-fun c!1443843 () Bool)

(declare-fun bm!728253 () Bool)

(assert (=> bm!728253 (= call!728258 (validRegex!11507 (ite c!1443844 (reg!21426 (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))) (ite c!1443843 (regTwo!42707 (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))) (regOne!42706 (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956)))))))))

(declare-fun b!7855903 () Bool)

(declare-fun e!4643235 () Bool)

(assert (=> b!7855903 (= e!4643235 e!4643230)))

(declare-fun res!3123498 () Bool)

(assert (=> b!7855903 (= res!3123498 (not (nullable!9369 (reg!21426 (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))))))))

(assert (=> b!7855903 (=> (not res!3123498) (not e!4643230))))

(declare-fun b!7855904 () Bool)

(declare-fun res!3123497 () Bool)

(assert (=> b!7855904 (=> (not res!3123497) (not e!4643236))))

(assert (=> b!7855904 (= res!3123497 call!728257)))

(declare-fun e!4643234 () Bool)

(assert (=> b!7855904 (= e!4643234 e!4643236)))

(declare-fun b!7855902 () Bool)

(assert (=> b!7855902 (= e!4643235 e!4643234)))

(assert (=> b!7855902 (= c!1443843 ((_ is Union!21097) (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))))))

(declare-fun d!2353893 () Bool)

(declare-fun res!3123495 () Bool)

(declare-fun e!4643231 () Bool)

(assert (=> d!2353893 (=> res!3123495 e!4643231)))

(assert (=> d!2353893 (= res!3123495 ((_ is ElementMatch!21097) (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))))))

(assert (=> d!2353893 (= (validRegex!11507 (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))) e!4643231)))

(declare-fun bm!728254 () Bool)

(assert (=> bm!728254 (= call!728257 (validRegex!11507 (ite c!1443843 (regOne!42707 (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))) (regTwo!42706 (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))))))))

(declare-fun b!7855905 () Bool)

(declare-fun res!3123496 () Bool)

(declare-fun e!4643233 () Bool)

(assert (=> b!7855905 (=> res!3123496 e!4643233)))

(assert (=> b!7855905 (= res!3123496 (not ((_ is Concat!29942) (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956)))))))

(assert (=> b!7855905 (= e!4643234 e!4643233)))

(declare-fun b!7855906 () Bool)

(assert (=> b!7855906 (= e!4643231 e!4643235)))

(assert (=> b!7855906 (= c!1443844 ((_ is Star!21097) (ite c!1443779 (regOne!42707 lt!2679956) (regTwo!42706 lt!2679956))))))

(declare-fun b!7855907 () Bool)

(assert (=> b!7855907 (= e!4643233 e!4643232)))

(declare-fun res!3123499 () Bool)

(assert (=> b!7855907 (=> (not res!3123499) (not e!4643232))))

(assert (=> b!7855907 (= res!3123499 call!728259)))

(assert (= (and d!2353893 (not res!3123495)) b!7855906))

(assert (= (and b!7855906 c!1443844) b!7855903))

(assert (= (and b!7855906 (not c!1443844)) b!7855902))

(assert (= (and b!7855903 res!3123498) b!7855901))

(assert (= (and b!7855902 c!1443843) b!7855904))

(assert (= (and b!7855902 (not c!1443843)) b!7855905))

(assert (= (and b!7855904 res!3123497) b!7855899))

(assert (= (and b!7855905 (not res!3123496)) b!7855907))

(assert (= (and b!7855907 res!3123499) b!7855900))

(assert (= (or b!7855904 b!7855900) bm!728254))

(assert (= (or b!7855899 b!7855907) bm!728252))

(assert (= (or b!7855901 bm!728252) bm!728253))

(declare-fun m!8260338 () Bool)

(assert (=> bm!728253 m!8260338))

(declare-fun m!8260340 () Bool)

(assert (=> b!7855903 m!8260340))

(declare-fun m!8260342 () Bool)

(assert (=> bm!728254 m!8260342))

(assert (=> bm!728197 d!2353893))

(assert (=> b!7855408 d!2353883))

(assert (=> b!7855408 d!2353885))

(declare-fun d!2353895 () Bool)

(assert (=> d!2353895 (= (head!16054 s1!4084) (h!80280 s1!4084))))

(assert (=> b!7855686 d!2353895))

(assert (=> b!7855460 d!2353883))

(assert (=> b!7855460 d!2353885))

(declare-fun d!2353897 () Bool)

(assert (=> d!2353897 (= (nullable!9369 (reg!21426 lt!2679956)) (nullableFct!3695 (reg!21426 lt!2679956)))))

(declare-fun bs!1967127 () Bool)

(assert (= bs!1967127 d!2353897))

(declare-fun m!8260344 () Bool)

(assert (=> bs!1967127 m!8260344))

(assert (=> b!7855651 d!2353897))

(declare-fun d!2353899 () Bool)

(assert (=> d!2353899 (= (nullable!9369 (reg!21426 lt!2679955)) (nullableFct!3695 (reg!21426 lt!2679955)))))

(declare-fun bs!1967128 () Bool)

(assert (= bs!1967128 d!2353899))

(declare-fun m!8260346 () Bool)

(assert (=> bs!1967128 m!8260346))

(assert (=> b!7855660 d!2353899))

(declare-fun d!2353901 () Bool)

(assert (=> d!2353901 (= (isEmpty!42343 (tail!15597 s2!3706)) ((_ is Nil!73832) (tail!15597 s2!3706)))))

(assert (=> b!7855263 d!2353901))

(assert (=> b!7855263 d!2353847))

(declare-fun d!2353903 () Bool)

(assert (=> d!2353903 (= (nullable!9369 (regOne!42706 lt!2679952)) (nullableFct!3695 (regOne!42706 lt!2679952)))))

(declare-fun bs!1967129 () Bool)

(assert (= bs!1967129 d!2353903))

(declare-fun m!8260348 () Bool)

(assert (=> bs!1967129 m!8260348))

(assert (=> b!7855674 d!2353903))

(assert (=> b!7855436 d!2353765))

(assert (=> b!7855343 d!2353861))

(declare-fun b!7855908 () Bool)

(declare-fun e!4643241 () Bool)

(declare-fun e!4643237 () Bool)

(assert (=> b!7855908 (= e!4643241 e!4643237)))

(declare-fun res!3123505 () Bool)

(assert (=> b!7855908 (=> (not res!3123505) (not e!4643237))))

(declare-fun lt!2680009 () Bool)

(assert (=> b!7855908 (= res!3123505 (not lt!2680009))))

(declare-fun e!4643239 () Bool)

(declare-fun b!7855909 () Bool)

(assert (=> b!7855909 (= e!4643239 (= (head!16054 lt!2679957) (c!1443671 (Union!21097 lt!2679956 lt!2679955))))))

(declare-fun b!7855910 () Bool)

(declare-fun e!4643242 () Bool)

(assert (=> b!7855910 (= e!4643237 e!4643242)))

(declare-fun res!3123504 () Bool)

(assert (=> b!7855910 (=> res!3123504 e!4643242)))

(declare-fun call!728260 () Bool)

(assert (=> b!7855910 (= res!3123504 call!728260)))

(declare-fun b!7855911 () Bool)

(declare-fun e!4643243 () Bool)

(assert (=> b!7855911 (= e!4643243 (nullable!9369 (Union!21097 lt!2679956 lt!2679955)))))

(declare-fun b!7855912 () Bool)

(declare-fun res!3123501 () Bool)

(assert (=> b!7855912 (=> res!3123501 e!4643241)))

(assert (=> b!7855912 (= res!3123501 (not ((_ is ElementMatch!21097) (Union!21097 lt!2679956 lt!2679955))))))

(declare-fun e!4643240 () Bool)

(assert (=> b!7855912 (= e!4643240 e!4643241)))

(declare-fun b!7855913 () Bool)

(declare-fun e!4643238 () Bool)

(assert (=> b!7855913 (= e!4643238 (= lt!2680009 call!728260))))

(declare-fun d!2353905 () Bool)

(assert (=> d!2353905 e!4643238))

(declare-fun c!1443845 () Bool)

(assert (=> d!2353905 (= c!1443845 ((_ is EmptyExpr!21097) (Union!21097 lt!2679956 lt!2679955)))))

(assert (=> d!2353905 (= lt!2680009 e!4643243)))

(declare-fun c!1443847 () Bool)

(assert (=> d!2353905 (= c!1443847 (isEmpty!42343 lt!2679957))))

(assert (=> d!2353905 (validRegex!11507 (Union!21097 lt!2679956 lt!2679955))))

(assert (=> d!2353905 (= (matchR!10533 (Union!21097 lt!2679956 lt!2679955) lt!2679957) lt!2680009)))

(declare-fun b!7855914 () Bool)

(declare-fun res!3123506 () Bool)

(assert (=> b!7855914 (=> (not res!3123506) (not e!4643239))))

(assert (=> b!7855914 (= res!3123506 (not call!728260))))

(declare-fun b!7855915 () Bool)

(assert (=> b!7855915 (= e!4643238 e!4643240)))

(declare-fun c!1443846 () Bool)

(assert (=> b!7855915 (= c!1443846 ((_ is EmptyLang!21097) (Union!21097 lt!2679956 lt!2679955)))))

(declare-fun b!7855916 () Bool)

(assert (=> b!7855916 (= e!4643240 (not lt!2680009))))

(declare-fun b!7855917 () Bool)

(declare-fun res!3123507 () Bool)

(assert (=> b!7855917 (=> res!3123507 e!4643241)))

(assert (=> b!7855917 (= res!3123507 e!4643239)))

(declare-fun res!3123500 () Bool)

(assert (=> b!7855917 (=> (not res!3123500) (not e!4643239))))

(assert (=> b!7855917 (= res!3123500 lt!2680009)))

(declare-fun bm!728255 () Bool)

(assert (=> bm!728255 (= call!728260 (isEmpty!42343 lt!2679957))))

(declare-fun b!7855918 () Bool)

(assert (=> b!7855918 (= e!4643243 (matchR!10533 (derivativeStep!6332 (Union!21097 lt!2679956 lt!2679955) (head!16054 lt!2679957)) (tail!15597 lt!2679957)))))

(declare-fun b!7855919 () Bool)

(declare-fun res!3123503 () Bool)

(assert (=> b!7855919 (=> res!3123503 e!4643242)))

(assert (=> b!7855919 (= res!3123503 (not (isEmpty!42343 (tail!15597 lt!2679957))))))

(declare-fun b!7855920 () Bool)

(assert (=> b!7855920 (= e!4643242 (not (= (head!16054 lt!2679957) (c!1443671 (Union!21097 lt!2679956 lt!2679955)))))))

(declare-fun b!7855921 () Bool)

(declare-fun res!3123502 () Bool)

(assert (=> b!7855921 (=> (not res!3123502) (not e!4643239))))

(assert (=> b!7855921 (= res!3123502 (isEmpty!42343 (tail!15597 lt!2679957)))))

(assert (= (and d!2353905 c!1443847) b!7855911))

(assert (= (and d!2353905 (not c!1443847)) b!7855918))

(assert (= (and d!2353905 c!1443845) b!7855913))

(assert (= (and d!2353905 (not c!1443845)) b!7855915))

(assert (= (and b!7855915 c!1443846) b!7855916))

(assert (= (and b!7855915 (not c!1443846)) b!7855912))

(assert (= (and b!7855912 (not res!3123501)) b!7855917))

(assert (= (and b!7855917 res!3123500) b!7855914))

(assert (= (and b!7855914 res!3123506) b!7855921))

(assert (= (and b!7855921 res!3123502) b!7855909))

(assert (= (and b!7855917 (not res!3123507)) b!7855908))

(assert (= (and b!7855908 res!3123505) b!7855910))

(assert (= (and b!7855910 (not res!3123504)) b!7855919))

(assert (= (and b!7855919 (not res!3123503)) b!7855920))

(assert (= (or b!7855913 b!7855910 b!7855914) bm!728255))

(assert (=> b!7855909 m!8260032))

(assert (=> b!7855918 m!8260032))

(assert (=> b!7855918 m!8260032))

(declare-fun m!8260350 () Bool)

(assert (=> b!7855918 m!8260350))

(assert (=> b!7855918 m!8260036))

(assert (=> b!7855918 m!8260350))

(assert (=> b!7855918 m!8260036))

(declare-fun m!8260352 () Bool)

(assert (=> b!7855918 m!8260352))

(assert (=> b!7855920 m!8260032))

(assert (=> d!2353905 m!8260040))

(declare-fun m!8260354 () Bool)

(assert (=> d!2353905 m!8260354))

(assert (=> bm!728255 m!8260040))

(assert (=> b!7855919 m!8260036))

(assert (=> b!7855919 m!8260036))

(assert (=> b!7855919 m!8260044))

(declare-fun m!8260356 () Bool)

(assert (=> b!7855911 m!8260356))

(assert (=> b!7855921 m!8260036))

(assert (=> b!7855921 m!8260036))

(assert (=> b!7855921 m!8260044))

(assert (=> d!2353783 d!2353905))

(declare-fun d!2353907 () Bool)

(assert (=> d!2353907 (matchR!10533 (Union!21097 lt!2679956 lt!2679955) lt!2679957)))

(assert (=> d!2353907 true))

(declare-fun _$115!519 () Unit!168920)

(assert (=> d!2353907 (= (choose!59658 lt!2679956 lt!2679955 lt!2679957) _$115!519)))

(declare-fun bs!1967130 () Bool)

(assert (= bs!1967130 d!2353907))

(assert (=> bs!1967130 m!8260048))

(assert (=> d!2353783 d!2353907))

(assert (=> d!2353783 d!2353817))

(assert (=> b!7855697 d!2353895))

(declare-fun bm!728256 () Bool)

(declare-fun call!728263 () Bool)

(declare-fun call!728262 () Bool)

(assert (=> bm!728256 (= call!728263 call!728262)))

(declare-fun b!7855922 () Bool)

(declare-fun e!4643250 () Bool)

(assert (=> b!7855922 (= e!4643250 call!728263)))

(declare-fun b!7855923 () Bool)

(declare-fun e!4643246 () Bool)

(declare-fun call!728261 () Bool)

(assert (=> b!7855923 (= e!4643246 call!728261)))

(declare-fun b!7855924 () Bool)

(declare-fun e!4643244 () Bool)

(assert (=> b!7855924 (= e!4643244 call!728262)))

(declare-fun bm!728257 () Bool)

(declare-fun c!1443849 () Bool)

(declare-fun c!1443848 () Bool)

(assert (=> bm!728257 (= call!728262 (validRegex!11507 (ite c!1443849 (reg!21426 lt!2679997) (ite c!1443848 (regTwo!42707 lt!2679997) (regOne!42706 lt!2679997)))))))

(declare-fun b!7855926 () Bool)

(declare-fun e!4643249 () Bool)

(assert (=> b!7855926 (= e!4643249 e!4643244)))

(declare-fun res!3123511 () Bool)

(assert (=> b!7855926 (= res!3123511 (not (nullable!9369 (reg!21426 lt!2679997))))))

(assert (=> b!7855926 (=> (not res!3123511) (not e!4643244))))

(declare-fun b!7855927 () Bool)

(declare-fun res!3123510 () Bool)

(assert (=> b!7855927 (=> (not res!3123510) (not e!4643250))))

(assert (=> b!7855927 (= res!3123510 call!728261)))

(declare-fun e!4643248 () Bool)

(assert (=> b!7855927 (= e!4643248 e!4643250)))

(declare-fun b!7855925 () Bool)

(assert (=> b!7855925 (= e!4643249 e!4643248)))

(assert (=> b!7855925 (= c!1443848 ((_ is Union!21097) lt!2679997))))

(declare-fun d!2353909 () Bool)

(declare-fun res!3123508 () Bool)

(declare-fun e!4643245 () Bool)

(assert (=> d!2353909 (=> res!3123508 e!4643245)))

(assert (=> d!2353909 (= res!3123508 ((_ is ElementMatch!21097) lt!2679997))))

(assert (=> d!2353909 (= (validRegex!11507 lt!2679997) e!4643245)))

(declare-fun bm!728258 () Bool)

(assert (=> bm!728258 (= call!728261 (validRegex!11507 (ite c!1443848 (regOne!42707 lt!2679997) (regTwo!42706 lt!2679997))))))

(declare-fun b!7855928 () Bool)

(declare-fun res!3123509 () Bool)

(declare-fun e!4643247 () Bool)

(assert (=> b!7855928 (=> res!3123509 e!4643247)))

(assert (=> b!7855928 (= res!3123509 (not ((_ is Concat!29942) lt!2679997)))))

(assert (=> b!7855928 (= e!4643248 e!4643247)))

(declare-fun b!7855929 () Bool)

(assert (=> b!7855929 (= e!4643245 e!4643249)))

(assert (=> b!7855929 (= c!1443849 ((_ is Star!21097) lt!2679997))))

(declare-fun b!7855930 () Bool)

(assert (=> b!7855930 (= e!4643247 e!4643246)))

(declare-fun res!3123512 () Bool)

(assert (=> b!7855930 (=> (not res!3123512) (not e!4643246))))

(assert (=> b!7855930 (= res!3123512 call!728263)))

(assert (= (and d!2353909 (not res!3123508)) b!7855929))

(assert (= (and b!7855929 c!1443849) b!7855926))

(assert (= (and b!7855929 (not c!1443849)) b!7855925))

(assert (= (and b!7855926 res!3123511) b!7855924))

(assert (= (and b!7855925 c!1443848) b!7855927))

(assert (= (and b!7855925 (not c!1443848)) b!7855928))

(assert (= (and b!7855927 res!3123510) b!7855922))

(assert (= (and b!7855928 (not res!3123509)) b!7855930))

(assert (= (and b!7855930 res!3123512) b!7855923))

(assert (= (or b!7855927 b!7855923) bm!728258))

(assert (= (or b!7855922 b!7855930) bm!728256))

(assert (= (or b!7855924 bm!728256) bm!728257))

(declare-fun m!8260358 () Bool)

(assert (=> bm!728257 m!8260358))

(declare-fun m!8260360 () Bool)

(assert (=> b!7855926 m!8260360))

(declare-fun m!8260362 () Bool)

(assert (=> bm!728258 m!8260362))

(assert (=> d!2353795 d!2353909))

(assert (=> d!2353795 d!2353769))

(declare-fun b!7855931 () Bool)

(declare-fun e!4643255 () Bool)

(declare-fun e!4643251 () Bool)

(assert (=> b!7855931 (= e!4643255 e!4643251)))

(declare-fun res!3123518 () Bool)

(assert (=> b!7855931 (=> (not res!3123518) (not e!4643251))))

(declare-fun lt!2680010 () Bool)

(assert (=> b!7855931 (= res!3123518 (not lt!2680010))))

(declare-fun b!7855932 () Bool)

(declare-fun e!4643253 () Bool)

(assert (=> b!7855932 (= e!4643253 (= (head!16054 (tail!15597 lt!2679957)) (c!1443671 (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957)))))))

(declare-fun b!7855933 () Bool)

(declare-fun e!4643256 () Bool)

(assert (=> b!7855933 (= e!4643251 e!4643256)))

(declare-fun res!3123517 () Bool)

(assert (=> b!7855933 (=> res!3123517 e!4643256)))

(declare-fun call!728264 () Bool)

(assert (=> b!7855933 (= res!3123517 call!728264)))

(declare-fun b!7855934 () Bool)

(declare-fun e!4643257 () Bool)

(assert (=> b!7855934 (= e!4643257 (nullable!9369 (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957))))))

(declare-fun b!7855935 () Bool)

(declare-fun res!3123514 () Bool)

(assert (=> b!7855935 (=> res!3123514 e!4643255)))

(assert (=> b!7855935 (= res!3123514 (not ((_ is ElementMatch!21097) (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957)))))))

(declare-fun e!4643254 () Bool)

(assert (=> b!7855935 (= e!4643254 e!4643255)))

(declare-fun b!7855936 () Bool)

(declare-fun e!4643252 () Bool)

(assert (=> b!7855936 (= e!4643252 (= lt!2680010 call!728264))))

(declare-fun d!2353911 () Bool)

(assert (=> d!2353911 e!4643252))

(declare-fun c!1443850 () Bool)

(assert (=> d!2353911 (= c!1443850 ((_ is EmptyExpr!21097) (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957))))))

(assert (=> d!2353911 (= lt!2680010 e!4643257)))

(declare-fun c!1443852 () Bool)

(assert (=> d!2353911 (= c!1443852 (isEmpty!42343 (tail!15597 lt!2679957)))))

(assert (=> d!2353911 (validRegex!11507 (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957)))))

(assert (=> d!2353911 (= (matchR!10533 (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957)) (tail!15597 lt!2679957)) lt!2680010)))

(declare-fun b!7855937 () Bool)

(declare-fun res!3123519 () Bool)

(assert (=> b!7855937 (=> (not res!3123519) (not e!4643253))))

(assert (=> b!7855937 (= res!3123519 (not call!728264))))

(declare-fun b!7855938 () Bool)

(assert (=> b!7855938 (= e!4643252 e!4643254)))

(declare-fun c!1443851 () Bool)

(assert (=> b!7855938 (= c!1443851 ((_ is EmptyLang!21097) (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957))))))

(declare-fun b!7855939 () Bool)

(assert (=> b!7855939 (= e!4643254 (not lt!2680010))))

(declare-fun b!7855940 () Bool)

(declare-fun res!3123520 () Bool)

(assert (=> b!7855940 (=> res!3123520 e!4643255)))

(assert (=> b!7855940 (= res!3123520 e!4643253)))

(declare-fun res!3123513 () Bool)

(assert (=> b!7855940 (=> (not res!3123513) (not e!4643253))))

(assert (=> b!7855940 (= res!3123513 lt!2680010)))

(declare-fun bm!728259 () Bool)

(assert (=> bm!728259 (= call!728264 (isEmpty!42343 (tail!15597 lt!2679957)))))

(declare-fun b!7855941 () Bool)

(assert (=> b!7855941 (= e!4643257 (matchR!10533 (derivativeStep!6332 (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957)) (head!16054 (tail!15597 lt!2679957))) (tail!15597 (tail!15597 lt!2679957))))))

(declare-fun b!7855942 () Bool)

(declare-fun res!3123516 () Bool)

(assert (=> b!7855942 (=> res!3123516 e!4643256)))

(assert (=> b!7855942 (= res!3123516 (not (isEmpty!42343 (tail!15597 (tail!15597 lt!2679957)))))))

(declare-fun b!7855943 () Bool)

(assert (=> b!7855943 (= e!4643256 (not (= (head!16054 (tail!15597 lt!2679957)) (c!1443671 (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957))))))))

(declare-fun b!7855944 () Bool)

(declare-fun res!3123515 () Bool)

(assert (=> b!7855944 (=> (not res!3123515) (not e!4643253))))

(assert (=> b!7855944 (= res!3123515 (isEmpty!42343 (tail!15597 (tail!15597 lt!2679957))))))

(assert (= (and d!2353911 c!1443852) b!7855934))

(assert (= (and d!2353911 (not c!1443852)) b!7855941))

(assert (= (and d!2353911 c!1443850) b!7855936))

(assert (= (and d!2353911 (not c!1443850)) b!7855938))

(assert (= (and b!7855938 c!1443851) b!7855939))

(assert (= (and b!7855938 (not c!1443851)) b!7855935))

(assert (= (and b!7855935 (not res!3123514)) b!7855940))

(assert (= (and b!7855940 res!3123513) b!7855937))

(assert (= (and b!7855937 res!3123519) b!7855944))

(assert (= (and b!7855944 res!3123515) b!7855932))

(assert (= (and b!7855940 (not res!3123520)) b!7855931))

(assert (= (and b!7855931 res!3123518) b!7855933))

(assert (= (and b!7855933 (not res!3123517)) b!7855942))

(assert (= (and b!7855942 (not res!3123516)) b!7855943))

(assert (= (or b!7855936 b!7855933 b!7855937) bm!728259))

(assert (=> b!7855932 m!8260036))

(declare-fun m!8260364 () Bool)

(assert (=> b!7855932 m!8260364))

(assert (=> b!7855941 m!8260036))

(assert (=> b!7855941 m!8260364))

(assert (=> b!7855941 m!8260034))

(assert (=> b!7855941 m!8260364))

(declare-fun m!8260366 () Bool)

(assert (=> b!7855941 m!8260366))

(assert (=> b!7855941 m!8260036))

(declare-fun m!8260368 () Bool)

(assert (=> b!7855941 m!8260368))

(assert (=> b!7855941 m!8260366))

(assert (=> b!7855941 m!8260368))

(declare-fun m!8260370 () Bool)

(assert (=> b!7855941 m!8260370))

(assert (=> b!7855943 m!8260036))

(assert (=> b!7855943 m!8260364))

(assert (=> d!2353911 m!8260036))

(assert (=> d!2353911 m!8260044))

(assert (=> d!2353911 m!8260034))

(declare-fun m!8260372 () Bool)

(assert (=> d!2353911 m!8260372))

(assert (=> bm!728259 m!8260036))

(assert (=> bm!728259 m!8260044))

(assert (=> b!7855942 m!8260036))

(assert (=> b!7855942 m!8260368))

(assert (=> b!7855942 m!8260368))

(declare-fun m!8260374 () Bool)

(assert (=> b!7855942 m!8260374))

(assert (=> b!7855934 m!8260034))

(declare-fun m!8260376 () Bool)

(assert (=> b!7855934 m!8260376))

(assert (=> b!7855944 m!8260036))

(assert (=> b!7855944 m!8260368))

(assert (=> b!7855944 m!8260368))

(assert (=> b!7855944 m!8260374))

(assert (=> b!7855407 d!2353911))

(declare-fun b!7855945 () Bool)

(declare-fun e!4643261 () Regex!21097)

(assert (=> b!7855945 (= e!4643261 EmptyLang!21097)))

(declare-fun bm!728260 () Bool)

(declare-fun call!728266 () Regex!21097)

(declare-fun call!728265 () Regex!21097)

(assert (=> bm!728260 (= call!728266 call!728265)))

(declare-fun b!7855946 () Bool)

(declare-fun c!1443856 () Bool)

(assert (=> b!7855946 (= c!1443856 ((_ is Union!21097) lt!2679951))))

(declare-fun e!4643260 () Regex!21097)

(declare-fun e!4643258 () Regex!21097)

(assert (=> b!7855946 (= e!4643260 e!4643258)))

(declare-fun e!4643262 () Regex!21097)

(declare-fun b!7855947 () Bool)

(declare-fun call!728268 () Regex!21097)

(assert (=> b!7855947 (= e!4643262 (Union!21097 (Concat!29942 call!728268 (regTwo!42706 lt!2679951)) call!728266))))

(declare-fun c!1443854 () Bool)

(declare-fun bm!728261 () Bool)

(assert (=> bm!728261 (= call!728265 (derivativeStep!6332 (ite c!1443856 (regTwo!42707 lt!2679951) (ite c!1443854 (regTwo!42706 lt!2679951) (regOne!42706 lt!2679951))) (head!16054 lt!2679957)))))

(declare-fun b!7855948 () Bool)

(declare-fun call!728267 () Regex!21097)

(assert (=> b!7855948 (= e!4643258 (Union!21097 call!728267 call!728265))))

(declare-fun b!7855949 () Bool)

(assert (=> b!7855949 (= e!4643262 (Union!21097 (Concat!29942 call!728266 (regTwo!42706 lt!2679951)) EmptyLang!21097))))

(declare-fun bm!728262 () Bool)

(assert (=> bm!728262 (= call!728268 call!728267)))

(declare-fun d!2353913 () Bool)

(declare-fun lt!2680011 () Regex!21097)

(assert (=> d!2353913 (validRegex!11507 lt!2680011)))

(assert (=> d!2353913 (= lt!2680011 e!4643261)))

(declare-fun c!1443855 () Bool)

(assert (=> d!2353913 (= c!1443855 (or ((_ is EmptyExpr!21097) lt!2679951) ((_ is EmptyLang!21097) lt!2679951)))))

(assert (=> d!2353913 (validRegex!11507 lt!2679951)))

(assert (=> d!2353913 (= (derivativeStep!6332 lt!2679951 (head!16054 lt!2679957)) lt!2680011)))

(declare-fun b!7855950 () Bool)

(declare-fun e!4643259 () Regex!21097)

(assert (=> b!7855950 (= e!4643259 (Concat!29942 call!728268 lt!2679951))))

(declare-fun b!7855951 () Bool)

(assert (=> b!7855951 (= e!4643260 (ite (= (head!16054 lt!2679957) (c!1443671 lt!2679951)) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855952 () Bool)

(assert (=> b!7855952 (= e!4643258 e!4643259)))

(declare-fun c!1443857 () Bool)

(assert (=> b!7855952 (= c!1443857 ((_ is Star!21097) lt!2679951))))

(declare-fun b!7855953 () Bool)

(assert (=> b!7855953 (= e!4643261 e!4643260)))

(declare-fun c!1443853 () Bool)

(assert (=> b!7855953 (= c!1443853 ((_ is ElementMatch!21097) lt!2679951))))

(declare-fun bm!728263 () Bool)

(assert (=> bm!728263 (= call!728267 (derivativeStep!6332 (ite c!1443856 (regOne!42707 lt!2679951) (ite c!1443857 (reg!21426 lt!2679951) (regOne!42706 lt!2679951))) (head!16054 lt!2679957)))))

(declare-fun b!7855954 () Bool)

(assert (=> b!7855954 (= c!1443854 (nullable!9369 (regOne!42706 lt!2679951)))))

(assert (=> b!7855954 (= e!4643259 e!4643262)))

(assert (= (and d!2353913 c!1443855) b!7855945))

(assert (= (and d!2353913 (not c!1443855)) b!7855953))

(assert (= (and b!7855953 c!1443853) b!7855951))

(assert (= (and b!7855953 (not c!1443853)) b!7855946))

(assert (= (and b!7855946 c!1443856) b!7855948))

(assert (= (and b!7855946 (not c!1443856)) b!7855952))

(assert (= (and b!7855952 c!1443857) b!7855950))

(assert (= (and b!7855952 (not c!1443857)) b!7855954))

(assert (= (and b!7855954 c!1443854) b!7855947))

(assert (= (and b!7855954 (not c!1443854)) b!7855949))

(assert (= (or b!7855947 b!7855949) bm!728260))

(assert (= (or b!7855950 b!7855947) bm!728262))

(assert (= (or b!7855948 bm!728260) bm!728261))

(assert (= (or b!7855948 bm!728262) bm!728263))

(assert (=> bm!728261 m!8260032))

(declare-fun m!8260378 () Bool)

(assert (=> bm!728261 m!8260378))

(declare-fun m!8260380 () Bool)

(assert (=> d!2353913 m!8260380))

(assert (=> d!2353913 m!8260042))

(assert (=> bm!728263 m!8260032))

(declare-fun m!8260382 () Bool)

(assert (=> bm!728263 m!8260382))

(declare-fun m!8260384 () Bool)

(assert (=> b!7855954 m!8260384))

(assert (=> b!7855407 d!2353913))

(declare-fun d!2353915 () Bool)

(assert (=> d!2353915 (= (head!16054 lt!2679957) (h!80280 lt!2679957))))

(assert (=> b!7855407 d!2353915))

(assert (=> b!7855407 d!2353885))

(declare-fun bm!728264 () Bool)

(declare-fun call!728271 () Bool)

(declare-fun call!728270 () Bool)

(assert (=> bm!728264 (= call!728271 call!728270)))

(declare-fun b!7855955 () Bool)

(declare-fun e!4643269 () Bool)

(assert (=> b!7855955 (= e!4643269 call!728271)))

(declare-fun b!7855956 () Bool)

(declare-fun e!4643265 () Bool)

(declare-fun call!728269 () Bool)

(assert (=> b!7855956 (= e!4643265 call!728269)))

(declare-fun b!7855957 () Bool)

(declare-fun e!4643263 () Bool)

(assert (=> b!7855957 (= e!4643263 call!728270)))

(declare-fun c!1443858 () Bool)

(declare-fun c!1443859 () Bool)

(declare-fun bm!728265 () Bool)

(assert (=> bm!728265 (= call!728270 (validRegex!11507 (ite c!1443859 (reg!21426 (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))) (ite c!1443858 (regTwo!42707 (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))) (regOne!42706 (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955)))))))))

(declare-fun b!7855959 () Bool)

(declare-fun e!4643268 () Bool)

(assert (=> b!7855959 (= e!4643268 e!4643263)))

(declare-fun res!3123524 () Bool)

(assert (=> b!7855959 (= res!3123524 (not (nullable!9369 (reg!21426 (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))))))))

(assert (=> b!7855959 (=> (not res!3123524) (not e!4643263))))

(declare-fun b!7855960 () Bool)

(declare-fun res!3123523 () Bool)

(assert (=> b!7855960 (=> (not res!3123523) (not e!4643269))))

(assert (=> b!7855960 (= res!3123523 call!728269)))

(declare-fun e!4643267 () Bool)

(assert (=> b!7855960 (= e!4643267 e!4643269)))

(declare-fun b!7855958 () Bool)

(assert (=> b!7855958 (= e!4643268 e!4643267)))

(assert (=> b!7855958 (= c!1443858 ((_ is Union!21097) (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))))))

(declare-fun d!2353917 () Bool)

(declare-fun res!3123521 () Bool)

(declare-fun e!4643264 () Bool)

(assert (=> d!2353917 (=> res!3123521 e!4643264)))

(assert (=> d!2353917 (= res!3123521 ((_ is ElementMatch!21097) (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))))))

(assert (=> d!2353917 (= (validRegex!11507 (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))) e!4643264)))

(declare-fun bm!728266 () Bool)

(assert (=> bm!728266 (= call!728269 (validRegex!11507 (ite c!1443858 (regOne!42707 (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))) (regTwo!42706 (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))))))))

(declare-fun b!7855961 () Bool)

(declare-fun res!3123522 () Bool)

(declare-fun e!4643266 () Bool)

(assert (=> b!7855961 (=> res!3123522 e!4643266)))

(assert (=> b!7855961 (= res!3123522 (not ((_ is Concat!29942) (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955)))))))

(assert (=> b!7855961 (= e!4643267 e!4643266)))

(declare-fun b!7855962 () Bool)

(assert (=> b!7855962 (= e!4643264 e!4643268)))

(assert (=> b!7855962 (= c!1443859 ((_ is Star!21097) (ite c!1443781 (regOne!42707 lt!2679955) (regTwo!42706 lt!2679955))))))

(declare-fun b!7855963 () Bool)

(assert (=> b!7855963 (= e!4643266 e!4643265)))

(declare-fun res!3123525 () Bool)

(assert (=> b!7855963 (=> (not res!3123525) (not e!4643265))))

(assert (=> b!7855963 (= res!3123525 call!728271)))

(assert (= (and d!2353917 (not res!3123521)) b!7855962))

(assert (= (and b!7855962 c!1443859) b!7855959))

(assert (= (and b!7855962 (not c!1443859)) b!7855958))

(assert (= (and b!7855959 res!3123524) b!7855957))

(assert (= (and b!7855958 c!1443858) b!7855960))

(assert (= (and b!7855958 (not c!1443858)) b!7855961))

(assert (= (and b!7855960 res!3123523) b!7855955))

(assert (= (and b!7855961 (not res!3123522)) b!7855963))

(assert (= (and b!7855963 res!3123525) b!7855956))

(assert (= (or b!7855960 b!7855956) bm!728266))

(assert (= (or b!7855955 b!7855963) bm!728264))

(assert (= (or b!7855957 bm!728264) bm!728265))

(declare-fun m!8260386 () Bool)

(assert (=> bm!728265 m!8260386))

(declare-fun m!8260388 () Bool)

(assert (=> b!7855959 m!8260388))

(declare-fun m!8260390 () Bool)

(assert (=> bm!728266 m!8260390))

(assert (=> bm!728200 d!2353917))

(assert (=> b!7855261 d!2353901))

(assert (=> b!7855261 d!2353847))

(declare-fun b!7855964 () Bool)

(declare-fun e!4643273 () Regex!21097)

(assert (=> b!7855964 (= e!4643273 EmptyLang!21097)))

(declare-fun bm!728267 () Bool)

(declare-fun call!728273 () Regex!21097)

(declare-fun call!728272 () Regex!21097)

(assert (=> bm!728267 (= call!728273 call!728272)))

(declare-fun b!7855965 () Bool)

(declare-fun c!1443863 () Bool)

(assert (=> b!7855965 (= c!1443863 ((_ is Union!21097) (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun e!4643272 () Regex!21097)

(declare-fun e!4643270 () Regex!21097)

(assert (=> b!7855965 (= e!4643272 e!4643270)))

(declare-fun b!7855966 () Bool)

(declare-fun call!728275 () Regex!21097)

(declare-fun e!4643274 () Regex!21097)

(assert (=> b!7855966 (= e!4643274 (Union!21097 (Concat!29942 call!728275 (regTwo!42706 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165))))) call!728273))))

(declare-fun bm!728268 () Bool)

(declare-fun c!1443861 () Bool)

(assert (=> bm!728268 (= call!728272 (derivativeStep!6332 (ite c!1443863 (regTwo!42707 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))) (ite c!1443861 (regTwo!42706 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))) (regOne!42706 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))))) (h!80280 s1!4084)))))

(declare-fun b!7855967 () Bool)

(declare-fun call!728274 () Regex!21097)

(assert (=> b!7855967 (= e!4643270 (Union!21097 call!728274 call!728272))))

(declare-fun b!7855968 () Bool)

(assert (=> b!7855968 (= e!4643274 (Union!21097 (Concat!29942 call!728273 (regTwo!42706 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165))))) EmptyLang!21097))))

(declare-fun bm!728269 () Bool)

(assert (=> bm!728269 (= call!728275 call!728274)))

(declare-fun d!2353919 () Bool)

(declare-fun lt!2680012 () Regex!21097)

(assert (=> d!2353919 (validRegex!11507 lt!2680012)))

(assert (=> d!2353919 (= lt!2680012 e!4643273)))

(declare-fun c!1443862 () Bool)

(assert (=> d!2353919 (= c!1443862 (or ((_ is EmptyExpr!21097) (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))) ((_ is EmptyLang!21097) (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165))))))))

(assert (=> d!2353919 (validRegex!11507 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165))))))

(assert (=> d!2353919 (= (derivativeStep!6332 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165))) (h!80280 s1!4084)) lt!2680012)))

(declare-fun b!7855969 () Bool)

(declare-fun e!4643271 () Regex!21097)

(assert (=> b!7855969 (= e!4643271 (Concat!29942 call!728275 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun b!7855970 () Bool)

(assert (=> b!7855970 (= e!4643272 (ite (= (h!80280 s1!4084) (c!1443671 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165))))) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7855971 () Bool)

(assert (=> b!7855971 (= e!4643270 e!4643271)))

(declare-fun c!1443864 () Bool)

(assert (=> b!7855971 (= c!1443864 ((_ is Star!21097) (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun b!7855972 () Bool)

(assert (=> b!7855972 (= e!4643273 e!4643272)))

(declare-fun c!1443860 () Bool)

(assert (=> b!7855972 (= c!1443860 ((_ is ElementMatch!21097) (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun bm!728270 () Bool)

(assert (=> bm!728270 (= call!728274 (derivativeStep!6332 (ite c!1443863 (regOne!42707 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))) (ite c!1443864 (reg!21426 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))) (regOne!42706 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165)))))) (h!80280 s1!4084)))))

(declare-fun b!7855973 () Bool)

(assert (=> b!7855973 (= c!1443861 (nullable!9369 (regOne!42706 (ite c!1443791 (regOne!42707 r2!6165) (ite c!1443792 (reg!21426 r2!6165) (regOne!42706 r2!6165))))))))

(assert (=> b!7855973 (= e!4643271 e!4643274)))

(assert (= (and d!2353919 c!1443862) b!7855964))

(assert (= (and d!2353919 (not c!1443862)) b!7855972))

(assert (= (and b!7855972 c!1443860) b!7855970))

(assert (= (and b!7855972 (not c!1443860)) b!7855965))

(assert (= (and b!7855965 c!1443863) b!7855967))

(assert (= (and b!7855965 (not c!1443863)) b!7855971))

(assert (= (and b!7855971 c!1443864) b!7855969))

(assert (= (and b!7855971 (not c!1443864)) b!7855973))

(assert (= (and b!7855973 c!1443861) b!7855966))

(assert (= (and b!7855973 (not c!1443861)) b!7855968))

(assert (= (or b!7855966 b!7855968) bm!728267))

(assert (= (or b!7855969 b!7855966) bm!728269))

(assert (= (or b!7855967 bm!728267) bm!728268))

(assert (= (or b!7855967 bm!728269) bm!728270))

(declare-fun m!8260392 () Bool)

(assert (=> bm!728268 m!8260392))

(declare-fun m!8260394 () Bool)

(assert (=> d!2353919 m!8260394))

(declare-fun m!8260396 () Bool)

(assert (=> d!2353919 m!8260396))

(declare-fun m!8260398 () Bool)

(assert (=> bm!728270 m!8260398))

(declare-fun m!8260400 () Bool)

(assert (=> b!7855973 m!8260400))

(assert (=> bm!728208 d!2353919))

(assert (=> b!7855448 d!2353915))

(assert (=> bm!728131 d!2353889))

(assert (=> b!7855398 d!2353915))

(declare-fun bm!728271 () Bool)

(declare-fun call!728278 () Bool)

(declare-fun call!728277 () Bool)

(assert (=> bm!728271 (= call!728278 call!728277)))

(declare-fun b!7855974 () Bool)

(declare-fun e!4643281 () Bool)

(assert (=> b!7855974 (= e!4643281 call!728278)))

(declare-fun b!7855975 () Bool)

(declare-fun e!4643277 () Bool)

(declare-fun call!728276 () Bool)

(assert (=> b!7855975 (= e!4643277 call!728276)))

(declare-fun b!7855976 () Bool)

(declare-fun e!4643275 () Bool)

(assert (=> b!7855976 (= e!4643275 call!728277)))

(declare-fun bm!728272 () Bool)

(declare-fun c!1443866 () Bool)

(declare-fun c!1443865 () Bool)

(assert (=> bm!728272 (= call!728277 (validRegex!11507 (ite c!1443866 (reg!21426 (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))) (ite c!1443865 (regTwo!42707 (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))) (regOne!42706 (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165))))))))))

(declare-fun b!7855978 () Bool)

(declare-fun e!4643280 () Bool)

(assert (=> b!7855978 (= e!4643280 e!4643275)))

(declare-fun res!3123529 () Bool)

(assert (=> b!7855978 (= res!3123529 (not (nullable!9369 (reg!21426 (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))))))))

(assert (=> b!7855978 (=> (not res!3123529) (not e!4643275))))

(declare-fun b!7855979 () Bool)

(declare-fun res!3123528 () Bool)

(assert (=> b!7855979 (=> (not res!3123528) (not e!4643281))))

(assert (=> b!7855979 (= res!3123528 call!728276)))

(declare-fun e!4643279 () Bool)

(assert (=> b!7855979 (= e!4643279 e!4643281)))

(declare-fun b!7855977 () Bool)

(assert (=> b!7855977 (= e!4643280 e!4643279)))

(assert (=> b!7855977 (= c!1443865 ((_ is Union!21097) (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun d!2353921 () Bool)

(declare-fun res!3123526 () Bool)

(declare-fun e!4643276 () Bool)

(assert (=> d!2353921 (=> res!3123526 e!4643276)))

(assert (=> d!2353921 (= res!3123526 ((_ is ElementMatch!21097) (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))))))

(assert (=> d!2353921 (= (validRegex!11507 (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))) e!4643276)))

(declare-fun bm!728273 () Bool)

(assert (=> bm!728273 (= call!728276 (validRegex!11507 (ite c!1443865 (regOne!42707 (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))) (regTwo!42706 (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))))))))

(declare-fun b!7855980 () Bool)

(declare-fun res!3123527 () Bool)

(declare-fun e!4643278 () Bool)

(assert (=> b!7855980 (=> res!3123527 e!4643278)))

(assert (=> b!7855980 (= res!3123527 (not ((_ is Concat!29942) (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165))))))))

(assert (=> b!7855980 (= e!4643279 e!4643278)))

(declare-fun b!7855981 () Bool)

(assert (=> b!7855981 (= e!4643276 e!4643280)))

(assert (=> b!7855981 (= c!1443866 ((_ is Star!21097) (ite c!1443701 (reg!21426 r2!6165) (ite c!1443700 (regTwo!42707 r2!6165) (regOne!42706 r2!6165)))))))

(declare-fun b!7855982 () Bool)

(assert (=> b!7855982 (= e!4643278 e!4643277)))

(declare-fun res!3123530 () Bool)

(assert (=> b!7855982 (=> (not res!3123530) (not e!4643277))))

(assert (=> b!7855982 (= res!3123530 call!728278)))

(assert (= (and d!2353921 (not res!3123526)) b!7855981))

(assert (= (and b!7855981 c!1443866) b!7855978))

(assert (= (and b!7855981 (not c!1443866)) b!7855977))

(assert (= (and b!7855978 res!3123529) b!7855976))

(assert (= (and b!7855977 c!1443865) b!7855979))

(assert (= (and b!7855977 (not c!1443865)) b!7855980))

(assert (= (and b!7855979 res!3123528) b!7855974))

(assert (= (and b!7855980 (not res!3123527)) b!7855982))

(assert (= (and b!7855982 res!3123530) b!7855975))

(assert (= (or b!7855979 b!7855975) bm!728273))

(assert (= (or b!7855974 b!7855982) bm!728271))

(assert (= (or b!7855976 bm!728271) bm!728272))

(declare-fun m!8260402 () Bool)

(assert (=> bm!728272 m!8260402))

(declare-fun m!8260404 () Bool)

(assert (=> b!7855978 m!8260404))

(declare-fun m!8260406 () Bool)

(assert (=> bm!728273 m!8260406))

(assert (=> bm!728142 d!2353921))

(declare-fun d!2353923 () Bool)

(declare-fun c!1443867 () Bool)

(assert (=> d!2353923 (= c!1443867 ((_ is Nil!73832) lt!2679973))))

(declare-fun e!4643282 () (InoxSet C!42520))

(assert (=> d!2353923 (= (content!15681 lt!2679973) e!4643282)))

(declare-fun b!7855983 () Bool)

(assert (=> b!7855983 (= e!4643282 ((as const (Array C!42520 Bool)) false))))

(declare-fun b!7855984 () Bool)

(assert (=> b!7855984 (= e!4643282 ((_ map or) (store ((as const (Array C!42520 Bool)) false) (h!80280 lt!2679973) true) (content!15681 (t!388691 lt!2679973))))))

(assert (= (and d!2353923 c!1443867) b!7855983))

(assert (= (and d!2353923 (not c!1443867)) b!7855984))

(declare-fun m!8260408 () Bool)

(assert (=> b!7855984 m!8260408))

(declare-fun m!8260410 () Bool)

(assert (=> b!7855984 m!8260410))

(assert (=> d!2353773 d!2353923))

(declare-fun d!2353925 () Bool)

(declare-fun c!1443868 () Bool)

(assert (=> d!2353925 (= c!1443868 ((_ is Nil!73832) s1!4084))))

(declare-fun e!4643283 () (InoxSet C!42520))

(assert (=> d!2353925 (= (content!15681 s1!4084) e!4643283)))

(declare-fun b!7855985 () Bool)

(assert (=> b!7855985 (= e!4643283 ((as const (Array C!42520 Bool)) false))))

(declare-fun b!7855986 () Bool)

(assert (=> b!7855986 (= e!4643283 ((_ map or) (store ((as const (Array C!42520 Bool)) false) (h!80280 s1!4084) true) (content!15681 (t!388691 s1!4084))))))

(assert (= (and d!2353925 c!1443868) b!7855985))

(assert (= (and d!2353925 (not c!1443868)) b!7855986))

(declare-fun m!8260412 () Bool)

(assert (=> b!7855986 m!8260412))

(assert (=> b!7855986 m!8260174))

(assert (=> d!2353773 d!2353925))

(assert (=> d!2353773 d!2353853))

(declare-fun b!7855987 () Bool)

(declare-fun e!4643288 () Bool)

(declare-fun e!4643284 () Bool)

(assert (=> b!7855987 (= e!4643288 e!4643284)))

(declare-fun res!3123536 () Bool)

(assert (=> b!7855987 (=> (not res!3123536) (not e!4643284))))

(declare-fun lt!2680013 () Bool)

(assert (=> b!7855987 (= res!3123536 (not lt!2680013))))

(declare-fun b!7855988 () Bool)

(declare-fun e!4643286 () Bool)

(assert (=> b!7855988 (= e!4643286 (= (head!16054 (tail!15597 s1!4084)) (c!1443671 (derivativeStep!6332 r1!6227 (head!16054 s1!4084)))))))

(declare-fun b!7855989 () Bool)

(declare-fun e!4643289 () Bool)

(assert (=> b!7855989 (= e!4643284 e!4643289)))

(declare-fun res!3123535 () Bool)

(assert (=> b!7855989 (=> res!3123535 e!4643289)))

(declare-fun call!728279 () Bool)

(assert (=> b!7855989 (= res!3123535 call!728279)))

(declare-fun b!7855990 () Bool)

(declare-fun e!4643290 () Bool)

(assert (=> b!7855990 (= e!4643290 (nullable!9369 (derivativeStep!6332 r1!6227 (head!16054 s1!4084))))))

(declare-fun b!7855991 () Bool)

(declare-fun res!3123532 () Bool)

(assert (=> b!7855991 (=> res!3123532 e!4643288)))

(assert (=> b!7855991 (= res!3123532 (not ((_ is ElementMatch!21097) (derivativeStep!6332 r1!6227 (head!16054 s1!4084)))))))

(declare-fun e!4643287 () Bool)

(assert (=> b!7855991 (= e!4643287 e!4643288)))

(declare-fun b!7855992 () Bool)

(declare-fun e!4643285 () Bool)

(assert (=> b!7855992 (= e!4643285 (= lt!2680013 call!728279))))

(declare-fun d!2353927 () Bool)

(assert (=> d!2353927 e!4643285))

(declare-fun c!1443869 () Bool)

(assert (=> d!2353927 (= c!1443869 ((_ is EmptyExpr!21097) (derivativeStep!6332 r1!6227 (head!16054 s1!4084))))))

(assert (=> d!2353927 (= lt!2680013 e!4643290)))

(declare-fun c!1443871 () Bool)

(assert (=> d!2353927 (= c!1443871 (isEmpty!42343 (tail!15597 s1!4084)))))

(assert (=> d!2353927 (validRegex!11507 (derivativeStep!6332 r1!6227 (head!16054 s1!4084)))))

(assert (=> d!2353927 (= (matchR!10533 (derivativeStep!6332 r1!6227 (head!16054 s1!4084)) (tail!15597 s1!4084)) lt!2680013)))

(declare-fun b!7855993 () Bool)

(declare-fun res!3123537 () Bool)

(assert (=> b!7855993 (=> (not res!3123537) (not e!4643286))))

(assert (=> b!7855993 (= res!3123537 (not call!728279))))

(declare-fun b!7855994 () Bool)

(assert (=> b!7855994 (= e!4643285 e!4643287)))

(declare-fun c!1443870 () Bool)

(assert (=> b!7855994 (= c!1443870 ((_ is EmptyLang!21097) (derivativeStep!6332 r1!6227 (head!16054 s1!4084))))))

(declare-fun b!7855995 () Bool)

(assert (=> b!7855995 (= e!4643287 (not lt!2680013))))

(declare-fun b!7855996 () Bool)

(declare-fun res!3123538 () Bool)

(assert (=> b!7855996 (=> res!3123538 e!4643288)))

(assert (=> b!7855996 (= res!3123538 e!4643286)))

(declare-fun res!3123531 () Bool)

(assert (=> b!7855996 (=> (not res!3123531) (not e!4643286))))

(assert (=> b!7855996 (= res!3123531 lt!2680013)))

(declare-fun bm!728274 () Bool)

(assert (=> bm!728274 (= call!728279 (isEmpty!42343 (tail!15597 s1!4084)))))

(declare-fun b!7855997 () Bool)

(assert (=> b!7855997 (= e!4643290 (matchR!10533 (derivativeStep!6332 (derivativeStep!6332 r1!6227 (head!16054 s1!4084)) (head!16054 (tail!15597 s1!4084))) (tail!15597 (tail!15597 s1!4084))))))

(declare-fun b!7855998 () Bool)

(declare-fun res!3123534 () Bool)

(assert (=> b!7855998 (=> res!3123534 e!4643289)))

(assert (=> b!7855998 (= res!3123534 (not (isEmpty!42343 (tail!15597 (tail!15597 s1!4084)))))))

(declare-fun b!7855999 () Bool)

(assert (=> b!7855999 (= e!4643289 (not (= (head!16054 (tail!15597 s1!4084)) (c!1443671 (derivativeStep!6332 r1!6227 (head!16054 s1!4084))))))))

(declare-fun b!7856000 () Bool)

(declare-fun res!3123533 () Bool)

(assert (=> b!7856000 (=> (not res!3123533) (not e!4643286))))

(assert (=> b!7856000 (= res!3123533 (isEmpty!42343 (tail!15597 (tail!15597 s1!4084))))))

(assert (= (and d!2353927 c!1443871) b!7855990))

(assert (= (and d!2353927 (not c!1443871)) b!7855997))

(assert (= (and d!2353927 c!1443869) b!7855992))

(assert (= (and d!2353927 (not c!1443869)) b!7855994))

(assert (= (and b!7855994 c!1443870) b!7855995))

(assert (= (and b!7855994 (not c!1443870)) b!7855991))

(assert (= (and b!7855991 (not res!3123532)) b!7855996))

(assert (= (and b!7855996 res!3123531) b!7855993))

(assert (= (and b!7855993 res!3123537) b!7856000))

(assert (= (and b!7856000 res!3123533) b!7855988))

(assert (= (and b!7855996 (not res!3123538)) b!7855987))

(assert (= (and b!7855987 res!3123536) b!7855989))

(assert (= (and b!7855989 (not res!3123535)) b!7855998))

(assert (= (and b!7855998 (not res!3123534)) b!7855999))

(assert (= (or b!7855992 b!7855989 b!7855993) bm!728274))

(assert (=> b!7855988 m!8260208))

(declare-fun m!8260414 () Bool)

(assert (=> b!7855988 m!8260414))

(assert (=> b!7855997 m!8260208))

(assert (=> b!7855997 m!8260414))

(assert (=> b!7855997 m!8260206))

(assert (=> b!7855997 m!8260414))

(declare-fun m!8260416 () Bool)

(assert (=> b!7855997 m!8260416))

(assert (=> b!7855997 m!8260208))

(declare-fun m!8260418 () Bool)

(assert (=> b!7855997 m!8260418))

(assert (=> b!7855997 m!8260416))

(assert (=> b!7855997 m!8260418))

(declare-fun m!8260420 () Bool)

(assert (=> b!7855997 m!8260420))

(assert (=> b!7855999 m!8260208))

(assert (=> b!7855999 m!8260414))

(assert (=> d!2353927 m!8260208))

(assert (=> d!2353927 m!8260214))

(assert (=> d!2353927 m!8260206))

(declare-fun m!8260422 () Bool)

(assert (=> d!2353927 m!8260422))

(assert (=> bm!728274 m!8260208))

(assert (=> bm!728274 m!8260214))

(assert (=> b!7855998 m!8260208))

(assert (=> b!7855998 m!8260418))

(assert (=> b!7855998 m!8260418))

(declare-fun m!8260424 () Bool)

(assert (=> b!7855998 m!8260424))

(assert (=> b!7855990 m!8260206))

(declare-fun m!8260426 () Bool)

(assert (=> b!7855990 m!8260426))

(assert (=> b!7856000 m!8260208))

(assert (=> b!7856000 m!8260418))

(assert (=> b!7856000 m!8260418))

(assert (=> b!7856000 m!8260424))

(assert (=> b!7855695 d!2353927))

(declare-fun b!7856001 () Bool)

(declare-fun e!4643294 () Regex!21097)

(assert (=> b!7856001 (= e!4643294 EmptyLang!21097)))

(declare-fun bm!728275 () Bool)

(declare-fun call!728281 () Regex!21097)

(declare-fun call!728280 () Regex!21097)

(assert (=> bm!728275 (= call!728281 call!728280)))

(declare-fun b!7856002 () Bool)

(declare-fun c!1443875 () Bool)

(assert (=> b!7856002 (= c!1443875 ((_ is Union!21097) r1!6227))))

(declare-fun e!4643293 () Regex!21097)

(declare-fun e!4643291 () Regex!21097)

(assert (=> b!7856002 (= e!4643293 e!4643291)))

(declare-fun e!4643295 () Regex!21097)

(declare-fun b!7856003 () Bool)

(declare-fun call!728283 () Regex!21097)

(assert (=> b!7856003 (= e!4643295 (Union!21097 (Concat!29942 call!728283 (regTwo!42706 r1!6227)) call!728281))))

(declare-fun bm!728276 () Bool)

(declare-fun c!1443873 () Bool)

(assert (=> bm!728276 (= call!728280 (derivativeStep!6332 (ite c!1443875 (regTwo!42707 r1!6227) (ite c!1443873 (regTwo!42706 r1!6227) (regOne!42706 r1!6227))) (head!16054 s1!4084)))))

(declare-fun b!7856004 () Bool)

(declare-fun call!728282 () Regex!21097)

(assert (=> b!7856004 (= e!4643291 (Union!21097 call!728282 call!728280))))

(declare-fun b!7856005 () Bool)

(assert (=> b!7856005 (= e!4643295 (Union!21097 (Concat!29942 call!728281 (regTwo!42706 r1!6227)) EmptyLang!21097))))

(declare-fun bm!728277 () Bool)

(assert (=> bm!728277 (= call!728283 call!728282)))

(declare-fun d!2353929 () Bool)

(declare-fun lt!2680014 () Regex!21097)

(assert (=> d!2353929 (validRegex!11507 lt!2680014)))

(assert (=> d!2353929 (= lt!2680014 e!4643294)))

(declare-fun c!1443874 () Bool)

(assert (=> d!2353929 (= c!1443874 (or ((_ is EmptyExpr!21097) r1!6227) ((_ is EmptyLang!21097) r1!6227)))))

(assert (=> d!2353929 (validRegex!11507 r1!6227)))

(assert (=> d!2353929 (= (derivativeStep!6332 r1!6227 (head!16054 s1!4084)) lt!2680014)))

(declare-fun b!7856006 () Bool)

(declare-fun e!4643292 () Regex!21097)

(assert (=> b!7856006 (= e!4643292 (Concat!29942 call!728283 r1!6227))))

(declare-fun b!7856007 () Bool)

(assert (=> b!7856007 (= e!4643293 (ite (= (head!16054 s1!4084) (c!1443671 r1!6227)) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7856008 () Bool)

(assert (=> b!7856008 (= e!4643291 e!4643292)))

(declare-fun c!1443876 () Bool)

(assert (=> b!7856008 (= c!1443876 ((_ is Star!21097) r1!6227))))

(declare-fun b!7856009 () Bool)

(assert (=> b!7856009 (= e!4643294 e!4643293)))

(declare-fun c!1443872 () Bool)

(assert (=> b!7856009 (= c!1443872 ((_ is ElementMatch!21097) r1!6227))))

(declare-fun bm!728278 () Bool)

(assert (=> bm!728278 (= call!728282 (derivativeStep!6332 (ite c!1443875 (regOne!42707 r1!6227) (ite c!1443876 (reg!21426 r1!6227) (regOne!42706 r1!6227))) (head!16054 s1!4084)))))

(declare-fun b!7856010 () Bool)

(assert (=> b!7856010 (= c!1443873 (nullable!9369 (regOne!42706 r1!6227)))))

(assert (=> b!7856010 (= e!4643292 e!4643295)))

(assert (= (and d!2353929 c!1443874) b!7856001))

(assert (= (and d!2353929 (not c!1443874)) b!7856009))

(assert (= (and b!7856009 c!1443872) b!7856007))

(assert (= (and b!7856009 (not c!1443872)) b!7856002))

(assert (= (and b!7856002 c!1443875) b!7856004))

(assert (= (and b!7856002 (not c!1443875)) b!7856008))

(assert (= (and b!7856008 c!1443876) b!7856006))

(assert (= (and b!7856008 (not c!1443876)) b!7856010))

(assert (= (and b!7856010 c!1443873) b!7856003))

(assert (= (and b!7856010 (not c!1443873)) b!7856005))

(assert (= (or b!7856003 b!7856005) bm!728275))

(assert (= (or b!7856006 b!7856003) bm!728277))

(assert (= (or b!7856004 bm!728275) bm!728276))

(assert (= (or b!7856004 bm!728277) bm!728278))

(assert (=> bm!728276 m!8260204))

(declare-fun m!8260428 () Bool)

(assert (=> bm!728276 m!8260428))

(declare-fun m!8260430 () Bool)

(assert (=> d!2353929 m!8260430))

(assert (=> d!2353929 m!8259898))

(assert (=> bm!728278 m!8260204))

(declare-fun m!8260432 () Bool)

(assert (=> bm!728278 m!8260432))

(assert (=> b!7856010 m!8260164))

(assert (=> b!7855695 d!2353929))

(assert (=> b!7855695 d!2353895))

(assert (=> b!7855695 d!2353831))

(assert (=> b!7855355 d!2353873))

(assert (=> b!7855355 d!2353875))

(declare-fun d!2353931 () Bool)

(assert (=> d!2353931 (= (nullable!9369 lt!2679956) (nullableFct!3695 lt!2679956))))

(declare-fun bs!1967131 () Bool)

(assert (= bs!1967131 d!2353931))

(declare-fun m!8260434 () Bool)

(assert (=> bs!1967131 m!8260434))

(assert (=> b!7855450 d!2353931))

(declare-fun d!2353933 () Bool)

(assert (=> d!2353933 (= (nullable!9369 lt!2679951) (nullableFct!3695 lt!2679951))))

(declare-fun bs!1967132 () Bool)

(assert (= bs!1967132 d!2353933))

(declare-fun m!8260436 () Bool)

(assert (=> bs!1967132 m!8260436))

(assert (=> b!7855400 d!2353933))

(declare-fun d!2353935 () Bool)

(assert (=> d!2353935 (= (nullable!9369 r2!6165) (nullableFct!3695 r2!6165))))

(declare-fun bs!1967133 () Bool)

(assert (= bs!1967133 d!2353935))

(declare-fun m!8260438 () Bool)

(assert (=> bs!1967133 m!8260438))

(assert (=> b!7855253 d!2353935))

(declare-fun b!7856011 () Bool)

(declare-fun e!4643300 () Bool)

(declare-fun e!4643296 () Bool)

(assert (=> b!7856011 (= e!4643300 e!4643296)))

(declare-fun res!3123544 () Bool)

(assert (=> b!7856011 (=> (not res!3123544) (not e!4643296))))

(declare-fun lt!2680015 () Bool)

(assert (=> b!7856011 (= res!3123544 (not lt!2680015))))

(declare-fun b!7856012 () Bool)

(declare-fun e!4643298 () Bool)

(assert (=> b!7856012 (= e!4643298 (= (head!16054 (tail!15597 (++!18097 s1!4084 s2!3706))) (c!1443671 (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706))))))))

(declare-fun b!7856013 () Bool)

(declare-fun e!4643301 () Bool)

(assert (=> b!7856013 (= e!4643296 e!4643301)))

(declare-fun res!3123543 () Bool)

(assert (=> b!7856013 (=> res!3123543 e!4643301)))

(declare-fun call!728284 () Bool)

(assert (=> b!7856013 (= res!3123543 call!728284)))

(declare-fun e!4643302 () Bool)

(declare-fun b!7856014 () Bool)

(assert (=> b!7856014 (= e!4643302 (nullable!9369 (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706)))))))

(declare-fun b!7856015 () Bool)

(declare-fun res!3123540 () Bool)

(assert (=> b!7856015 (=> res!3123540 e!4643300)))

(assert (=> b!7856015 (= res!3123540 (not ((_ is ElementMatch!21097) (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706))))))))

(declare-fun e!4643299 () Bool)

(assert (=> b!7856015 (= e!4643299 e!4643300)))

(declare-fun b!7856016 () Bool)

(declare-fun e!4643297 () Bool)

(assert (=> b!7856016 (= e!4643297 (= lt!2680015 call!728284))))

(declare-fun d!2353937 () Bool)

(assert (=> d!2353937 e!4643297))

(declare-fun c!1443877 () Bool)

(assert (=> d!2353937 (= c!1443877 ((_ is EmptyExpr!21097) (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706)))))))

(assert (=> d!2353937 (= lt!2680015 e!4643302)))

(declare-fun c!1443879 () Bool)

(assert (=> d!2353937 (= c!1443879 (isEmpty!42343 (tail!15597 (++!18097 s1!4084 s2!3706))))))

(assert (=> d!2353937 (validRegex!11507 (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706))))))

(assert (=> d!2353937 (= (matchR!10533 (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706))) (tail!15597 (++!18097 s1!4084 s2!3706))) lt!2680015)))

(declare-fun b!7856017 () Bool)

(declare-fun res!3123545 () Bool)

(assert (=> b!7856017 (=> (not res!3123545) (not e!4643298))))

(assert (=> b!7856017 (= res!3123545 (not call!728284))))

(declare-fun b!7856018 () Bool)

(assert (=> b!7856018 (= e!4643297 e!4643299)))

(declare-fun c!1443878 () Bool)

(assert (=> b!7856018 (= c!1443878 ((_ is EmptyLang!21097) (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706)))))))

(declare-fun b!7856019 () Bool)

(assert (=> b!7856019 (= e!4643299 (not lt!2680015))))

(declare-fun b!7856020 () Bool)

(declare-fun res!3123546 () Bool)

(assert (=> b!7856020 (=> res!3123546 e!4643300)))

(assert (=> b!7856020 (= res!3123546 e!4643298)))

(declare-fun res!3123539 () Bool)

(assert (=> b!7856020 (=> (not res!3123539) (not e!4643298))))

(assert (=> b!7856020 (= res!3123539 lt!2680015)))

(declare-fun bm!728279 () Bool)

(assert (=> bm!728279 (= call!728284 (isEmpty!42343 (tail!15597 (++!18097 s1!4084 s2!3706))))))

(declare-fun b!7856021 () Bool)

(assert (=> b!7856021 (= e!4643302 (matchR!10533 (derivativeStep!6332 (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706))) (head!16054 (tail!15597 (++!18097 s1!4084 s2!3706)))) (tail!15597 (tail!15597 (++!18097 s1!4084 s2!3706)))))))

(declare-fun b!7856022 () Bool)

(declare-fun res!3123542 () Bool)

(assert (=> b!7856022 (=> res!3123542 e!4643301)))

(assert (=> b!7856022 (= res!3123542 (not (isEmpty!42343 (tail!15597 (tail!15597 (++!18097 s1!4084 s2!3706))))))))

(declare-fun b!7856023 () Bool)

(assert (=> b!7856023 (= e!4643301 (not (= (head!16054 (tail!15597 (++!18097 s1!4084 s2!3706))) (c!1443671 (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706)))))))))

(declare-fun b!7856024 () Bool)

(declare-fun res!3123541 () Bool)

(assert (=> b!7856024 (=> (not res!3123541) (not e!4643298))))

(assert (=> b!7856024 (= res!3123541 (isEmpty!42343 (tail!15597 (tail!15597 (++!18097 s1!4084 s2!3706)))))))

(assert (= (and d!2353937 c!1443879) b!7856014))

(assert (= (and d!2353937 (not c!1443879)) b!7856021))

(assert (= (and d!2353937 c!1443877) b!7856016))

(assert (= (and d!2353937 (not c!1443877)) b!7856018))

(assert (= (and b!7856018 c!1443878) b!7856019))

(assert (= (and b!7856018 (not c!1443878)) b!7856015))

(assert (= (and b!7856015 (not res!3123540)) b!7856020))

(assert (= (and b!7856020 res!3123539) b!7856017))

(assert (= (and b!7856017 res!3123545) b!7856024))

(assert (= (and b!7856024 res!3123541) b!7856012))

(assert (= (and b!7856020 (not res!3123546)) b!7856011))

(assert (= (and b!7856011 res!3123544) b!7856013))

(assert (= (and b!7856013 (not res!3123543)) b!7856022))

(assert (= (and b!7856022 (not res!3123542)) b!7856023))

(assert (= (or b!7856016 b!7856013 b!7856017) bm!728279))

(assert (=> b!7856012 m!8259976))

(declare-fun m!8260440 () Bool)

(assert (=> b!7856012 m!8260440))

(assert (=> b!7856021 m!8259976))

(assert (=> b!7856021 m!8260440))

(assert (=> b!7856021 m!8259974))

(assert (=> b!7856021 m!8260440))

(declare-fun m!8260442 () Bool)

(assert (=> b!7856021 m!8260442))

(assert (=> b!7856021 m!8259976))

(declare-fun m!8260444 () Bool)

(assert (=> b!7856021 m!8260444))

(assert (=> b!7856021 m!8260442))

(assert (=> b!7856021 m!8260444))

(declare-fun m!8260446 () Bool)

(assert (=> b!7856021 m!8260446))

(assert (=> b!7856023 m!8259976))

(assert (=> b!7856023 m!8260440))

(assert (=> d!2353937 m!8259976))

(assert (=> d!2353937 m!8259984))

(assert (=> d!2353937 m!8259974))

(declare-fun m!8260448 () Bool)

(assert (=> d!2353937 m!8260448))

(assert (=> bm!728279 m!8259976))

(assert (=> bm!728279 m!8259984))

(assert (=> b!7856022 m!8259976))

(assert (=> b!7856022 m!8260444))

(assert (=> b!7856022 m!8260444))

(declare-fun m!8260450 () Bool)

(assert (=> b!7856022 m!8260450))

(assert (=> b!7856014 m!8259974))

(declare-fun m!8260452 () Bool)

(assert (=> b!7856014 m!8260452))

(assert (=> b!7856024 m!8259976))

(assert (=> b!7856024 m!8260444))

(assert (=> b!7856024 m!8260444))

(assert (=> b!7856024 m!8260450))

(assert (=> b!7855352 d!2353937))

(declare-fun b!7856025 () Bool)

(declare-fun e!4643306 () Regex!21097)

(assert (=> b!7856025 (= e!4643306 EmptyLang!21097)))

(declare-fun bm!728280 () Bool)

(declare-fun call!728286 () Regex!21097)

(declare-fun call!728285 () Regex!21097)

(assert (=> bm!728280 (= call!728286 call!728285)))

(declare-fun b!7856026 () Bool)

(declare-fun c!1443883 () Bool)

(assert (=> b!7856026 (= c!1443883 ((_ is Union!21097) lt!2679952))))

(declare-fun e!4643305 () Regex!21097)

(declare-fun e!4643303 () Regex!21097)

(assert (=> b!7856026 (= e!4643305 e!4643303)))

(declare-fun call!728288 () Regex!21097)

(declare-fun b!7856027 () Bool)

(declare-fun e!4643307 () Regex!21097)

(assert (=> b!7856027 (= e!4643307 (Union!21097 (Concat!29942 call!728288 (regTwo!42706 lt!2679952)) call!728286))))

(declare-fun bm!728281 () Bool)

(declare-fun c!1443881 () Bool)

(assert (=> bm!728281 (= call!728285 (derivativeStep!6332 (ite c!1443883 (regTwo!42707 lt!2679952) (ite c!1443881 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))) (head!16054 (++!18097 s1!4084 s2!3706))))))

(declare-fun b!7856028 () Bool)

(declare-fun call!728287 () Regex!21097)

(assert (=> b!7856028 (= e!4643303 (Union!21097 call!728287 call!728285))))

(declare-fun b!7856029 () Bool)

(assert (=> b!7856029 (= e!4643307 (Union!21097 (Concat!29942 call!728286 (regTwo!42706 lt!2679952)) EmptyLang!21097))))

(declare-fun bm!728282 () Bool)

(assert (=> bm!728282 (= call!728288 call!728287)))

(declare-fun d!2353939 () Bool)

(declare-fun lt!2680016 () Regex!21097)

(assert (=> d!2353939 (validRegex!11507 lt!2680016)))

(assert (=> d!2353939 (= lt!2680016 e!4643306)))

(declare-fun c!1443882 () Bool)

(assert (=> d!2353939 (= c!1443882 (or ((_ is EmptyExpr!21097) lt!2679952) ((_ is EmptyLang!21097) lt!2679952)))))

(assert (=> d!2353939 (validRegex!11507 lt!2679952)))

(assert (=> d!2353939 (= (derivativeStep!6332 lt!2679952 (head!16054 (++!18097 s1!4084 s2!3706))) lt!2680016)))

(declare-fun b!7856030 () Bool)

(declare-fun e!4643304 () Regex!21097)

(assert (=> b!7856030 (= e!4643304 (Concat!29942 call!728288 lt!2679952))))

(declare-fun b!7856031 () Bool)

(assert (=> b!7856031 (= e!4643305 (ite (= (head!16054 (++!18097 s1!4084 s2!3706)) (c!1443671 lt!2679952)) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7856032 () Bool)

(assert (=> b!7856032 (= e!4643303 e!4643304)))

(declare-fun c!1443884 () Bool)

(assert (=> b!7856032 (= c!1443884 ((_ is Star!21097) lt!2679952))))

(declare-fun b!7856033 () Bool)

(assert (=> b!7856033 (= e!4643306 e!4643305)))

(declare-fun c!1443880 () Bool)

(assert (=> b!7856033 (= c!1443880 ((_ is ElementMatch!21097) lt!2679952))))

(declare-fun bm!728283 () Bool)

(assert (=> bm!728283 (= call!728287 (derivativeStep!6332 (ite c!1443883 (regOne!42707 lt!2679952) (ite c!1443884 (reg!21426 lt!2679952) (regOne!42706 lt!2679952))) (head!16054 (++!18097 s1!4084 s2!3706))))))

(declare-fun b!7856034 () Bool)

(assert (=> b!7856034 (= c!1443881 (nullable!9369 (regOne!42706 lt!2679952)))))

(assert (=> b!7856034 (= e!4643304 e!4643307)))

(assert (= (and d!2353939 c!1443882) b!7856025))

(assert (= (and d!2353939 (not c!1443882)) b!7856033))

(assert (= (and b!7856033 c!1443880) b!7856031))

(assert (= (and b!7856033 (not c!1443880)) b!7856026))

(assert (= (and b!7856026 c!1443883) b!7856028))

(assert (= (and b!7856026 (not c!1443883)) b!7856032))

(assert (= (and b!7856032 c!1443884) b!7856030))

(assert (= (and b!7856032 (not c!1443884)) b!7856034))

(assert (= (and b!7856034 c!1443881) b!7856027))

(assert (= (and b!7856034 (not c!1443881)) b!7856029))

(assert (= (or b!7856027 b!7856029) bm!728280))

(assert (= (or b!7856030 b!7856027) bm!728282))

(assert (= (or b!7856028 bm!728280) bm!728281))

(assert (= (or b!7856028 bm!728282) bm!728283))

(assert (=> bm!728281 m!8259972))

(declare-fun m!8260454 () Bool)

(assert (=> bm!728281 m!8260454))

(declare-fun m!8260456 () Bool)

(assert (=> d!2353939 m!8260456))

(assert (=> d!2353939 m!8259982))

(assert (=> bm!728283 m!8259972))

(declare-fun m!8260458 () Bool)

(assert (=> bm!728283 m!8260458))

(assert (=> b!7856034 m!8260194))

(assert (=> b!7855352 d!2353939))

(assert (=> b!7855352 d!2353861))

(assert (=> b!7855352 d!2353875))

(declare-fun bm!728284 () Bool)

(declare-fun call!728291 () Bool)

(declare-fun call!728290 () Bool)

(assert (=> bm!728284 (= call!728291 call!728290)))

(declare-fun b!7856035 () Bool)

(declare-fun e!4643314 () Bool)

(assert (=> b!7856035 (= e!4643314 call!728291)))

(declare-fun b!7856036 () Bool)

(declare-fun e!4643310 () Bool)

(declare-fun call!728289 () Bool)

(assert (=> b!7856036 (= e!4643310 call!728289)))

(declare-fun b!7856037 () Bool)

(declare-fun e!4643308 () Bool)

(assert (=> b!7856037 (= e!4643308 call!728290)))

(declare-fun c!1443886 () Bool)

(declare-fun c!1443885 () Bool)

(declare-fun bm!728285 () Bool)

(assert (=> bm!728285 (= call!728290 (validRegex!11507 (ite c!1443886 (reg!21426 lt!2680000) (ite c!1443885 (regTwo!42707 lt!2680000) (regOne!42706 lt!2680000)))))))

(declare-fun b!7856039 () Bool)

(declare-fun e!4643313 () Bool)

(assert (=> b!7856039 (= e!4643313 e!4643308)))

(declare-fun res!3123550 () Bool)

(assert (=> b!7856039 (= res!3123550 (not (nullable!9369 (reg!21426 lt!2680000))))))

(assert (=> b!7856039 (=> (not res!3123550) (not e!4643308))))

(declare-fun b!7856040 () Bool)

(declare-fun res!3123549 () Bool)

(assert (=> b!7856040 (=> (not res!3123549) (not e!4643314))))

(assert (=> b!7856040 (= res!3123549 call!728289)))

(declare-fun e!4643312 () Bool)

(assert (=> b!7856040 (= e!4643312 e!4643314)))

(declare-fun b!7856038 () Bool)

(assert (=> b!7856038 (= e!4643313 e!4643312)))

(assert (=> b!7856038 (= c!1443885 ((_ is Union!21097) lt!2680000))))

(declare-fun d!2353941 () Bool)

(declare-fun res!3123547 () Bool)

(declare-fun e!4643309 () Bool)

(assert (=> d!2353941 (=> res!3123547 e!4643309)))

(assert (=> d!2353941 (= res!3123547 ((_ is ElementMatch!21097) lt!2680000))))

(assert (=> d!2353941 (= (validRegex!11507 lt!2680000) e!4643309)))

(declare-fun bm!728286 () Bool)

(assert (=> bm!728286 (= call!728289 (validRegex!11507 (ite c!1443885 (regOne!42707 lt!2680000) (regTwo!42706 lt!2680000))))))

(declare-fun b!7856041 () Bool)

(declare-fun res!3123548 () Bool)

(declare-fun e!4643311 () Bool)

(assert (=> b!7856041 (=> res!3123548 e!4643311)))

(assert (=> b!7856041 (= res!3123548 (not ((_ is Concat!29942) lt!2680000)))))

(assert (=> b!7856041 (= e!4643312 e!4643311)))

(declare-fun b!7856042 () Bool)

(assert (=> b!7856042 (= e!4643309 e!4643313)))

(assert (=> b!7856042 (= c!1443886 ((_ is Star!21097) lt!2680000))))

(declare-fun b!7856043 () Bool)

(assert (=> b!7856043 (= e!4643311 e!4643310)))

(declare-fun res!3123551 () Bool)

(assert (=> b!7856043 (=> (not res!3123551) (not e!4643310))))

(assert (=> b!7856043 (= res!3123551 call!728291)))

(assert (= (and d!2353941 (not res!3123547)) b!7856042))

(assert (= (and b!7856042 c!1443886) b!7856039))

(assert (= (and b!7856042 (not c!1443886)) b!7856038))

(assert (= (and b!7856039 res!3123550) b!7856037))

(assert (= (and b!7856038 c!1443885) b!7856040))

(assert (= (and b!7856038 (not c!1443885)) b!7856041))

(assert (= (and b!7856040 res!3123549) b!7856035))

(assert (= (and b!7856041 (not res!3123548)) b!7856043))

(assert (= (and b!7856043 res!3123551) b!7856036))

(assert (= (or b!7856040 b!7856036) bm!728286))

(assert (= (or b!7856035 b!7856043) bm!728284))

(assert (= (or b!7856037 bm!728284) bm!728285))

(declare-fun m!8260460 () Bool)

(assert (=> bm!728285 m!8260460))

(declare-fun m!8260462 () Bool)

(assert (=> b!7856039 m!8260462))

(declare-fun m!8260464 () Bool)

(assert (=> bm!728286 m!8260464))

(assert (=> d!2353823 d!2353941))

(assert (=> d!2353823 d!2353765))

(assert (=> d!2353781 d!2353837))

(declare-fun bm!728287 () Bool)

(declare-fun call!728294 () Bool)

(declare-fun call!728293 () Bool)

(assert (=> bm!728287 (= call!728294 call!728293)))

(declare-fun b!7856044 () Bool)

(declare-fun e!4643321 () Bool)

(assert (=> b!7856044 (= e!4643321 call!728294)))

(declare-fun b!7856045 () Bool)

(declare-fun e!4643317 () Bool)

(declare-fun call!728292 () Bool)

(assert (=> b!7856045 (= e!4643317 call!728292)))

(declare-fun b!7856046 () Bool)

(declare-fun e!4643315 () Bool)

(assert (=> b!7856046 (= e!4643315 call!728293)))

(declare-fun c!1443887 () Bool)

(declare-fun bm!728288 () Bool)

(declare-fun c!1443888 () Bool)

(assert (=> bm!728288 (= call!728293 (validRegex!11507 (ite c!1443888 (reg!21426 lt!2679951) (ite c!1443887 (regTwo!42707 lt!2679951) (regOne!42706 lt!2679951)))))))

(declare-fun b!7856048 () Bool)

(declare-fun e!4643320 () Bool)

(assert (=> b!7856048 (= e!4643320 e!4643315)))

(declare-fun res!3123555 () Bool)

(assert (=> b!7856048 (= res!3123555 (not (nullable!9369 (reg!21426 lt!2679951))))))

(assert (=> b!7856048 (=> (not res!3123555) (not e!4643315))))

(declare-fun b!7856049 () Bool)

(declare-fun res!3123554 () Bool)

(assert (=> b!7856049 (=> (not res!3123554) (not e!4643321))))

(assert (=> b!7856049 (= res!3123554 call!728292)))

(declare-fun e!4643319 () Bool)

(assert (=> b!7856049 (= e!4643319 e!4643321)))

(declare-fun b!7856047 () Bool)

(assert (=> b!7856047 (= e!4643320 e!4643319)))

(assert (=> b!7856047 (= c!1443887 ((_ is Union!21097) lt!2679951))))

(declare-fun d!2353943 () Bool)

(declare-fun res!3123552 () Bool)

(declare-fun e!4643316 () Bool)

(assert (=> d!2353943 (=> res!3123552 e!4643316)))

(assert (=> d!2353943 (= res!3123552 ((_ is ElementMatch!21097) lt!2679951))))

(assert (=> d!2353943 (= (validRegex!11507 lt!2679951) e!4643316)))

(declare-fun bm!728289 () Bool)

(assert (=> bm!728289 (= call!728292 (validRegex!11507 (ite c!1443887 (regOne!42707 lt!2679951) (regTwo!42706 lt!2679951))))))

(declare-fun b!7856050 () Bool)

(declare-fun res!3123553 () Bool)

(declare-fun e!4643318 () Bool)

(assert (=> b!7856050 (=> res!3123553 e!4643318)))

(assert (=> b!7856050 (= res!3123553 (not ((_ is Concat!29942) lt!2679951)))))

(assert (=> b!7856050 (= e!4643319 e!4643318)))

(declare-fun b!7856051 () Bool)

(assert (=> b!7856051 (= e!4643316 e!4643320)))

(assert (=> b!7856051 (= c!1443888 ((_ is Star!21097) lt!2679951))))

(declare-fun b!7856052 () Bool)

(assert (=> b!7856052 (= e!4643318 e!4643317)))

(declare-fun res!3123556 () Bool)

(assert (=> b!7856052 (=> (not res!3123556) (not e!4643317))))

(assert (=> b!7856052 (= res!3123556 call!728294)))

(assert (= (and d!2353943 (not res!3123552)) b!7856051))

(assert (= (and b!7856051 c!1443888) b!7856048))

(assert (= (and b!7856051 (not c!1443888)) b!7856047))

(assert (= (and b!7856048 res!3123555) b!7856046))

(assert (= (and b!7856047 c!1443887) b!7856049))

(assert (= (and b!7856047 (not c!1443887)) b!7856050))

(assert (= (and b!7856049 res!3123554) b!7856044))

(assert (= (and b!7856050 (not res!3123553)) b!7856052))

(assert (= (and b!7856052 res!3123556) b!7856045))

(assert (= (or b!7856049 b!7856045) bm!728289))

(assert (= (or b!7856044 b!7856052) bm!728287))

(assert (= (or b!7856046 bm!728287) bm!728288))

(declare-fun m!8260466 () Bool)

(assert (=> bm!728288 m!8260466))

(declare-fun m!8260468 () Bool)

(assert (=> b!7856048 m!8260468))

(declare-fun m!8260470 () Bool)

(assert (=> bm!728289 m!8260470))

(assert (=> d!2353781 d!2353943))

(declare-fun bm!728290 () Bool)

(declare-fun call!728297 () Bool)

(declare-fun call!728296 () Bool)

(assert (=> bm!728290 (= call!728297 call!728296)))

(declare-fun b!7856053 () Bool)

(declare-fun e!4643328 () Bool)

(assert (=> b!7856053 (= e!4643328 call!728297)))

(declare-fun b!7856054 () Bool)

(declare-fun e!4643324 () Bool)

(declare-fun call!728295 () Bool)

(assert (=> b!7856054 (= e!4643324 call!728295)))

(declare-fun b!7856055 () Bool)

(declare-fun e!4643322 () Bool)

(assert (=> b!7856055 (= e!4643322 call!728296)))

(declare-fun c!1443889 () Bool)

(declare-fun c!1443890 () Bool)

(declare-fun bm!728291 () Bool)

(assert (=> bm!728291 (= call!728296 (validRegex!11507 (ite c!1443890 (reg!21426 (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))) (ite c!1443889 (regTwo!42707 (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))) (regOne!42706 (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227))))))))))

(declare-fun b!7856057 () Bool)

(declare-fun e!4643327 () Bool)

(assert (=> b!7856057 (= e!4643327 e!4643322)))

(declare-fun res!3123560 () Bool)

(assert (=> b!7856057 (= res!3123560 (not (nullable!9369 (reg!21426 (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))))))))

(assert (=> b!7856057 (=> (not res!3123560) (not e!4643322))))

(declare-fun b!7856058 () Bool)

(declare-fun res!3123559 () Bool)

(assert (=> b!7856058 (=> (not res!3123559) (not e!4643328))))

(assert (=> b!7856058 (= res!3123559 call!728295)))

(declare-fun e!4643326 () Bool)

(assert (=> b!7856058 (= e!4643326 e!4643328)))

(declare-fun b!7856056 () Bool)

(assert (=> b!7856056 (= e!4643327 e!4643326)))

(assert (=> b!7856056 (= c!1443889 ((_ is Union!21097) (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun d!2353945 () Bool)

(declare-fun res!3123557 () Bool)

(declare-fun e!4643323 () Bool)

(assert (=> d!2353945 (=> res!3123557 e!4643323)))

(assert (=> d!2353945 (= res!3123557 ((_ is ElementMatch!21097) (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))))))

(assert (=> d!2353945 (= (validRegex!11507 (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))) e!4643323)))

(declare-fun bm!728292 () Bool)

(assert (=> bm!728292 (= call!728295 (validRegex!11507 (ite c!1443889 (regOne!42707 (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))) (regTwo!42706 (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))))))))

(declare-fun b!7856059 () Bool)

(declare-fun res!3123558 () Bool)

(declare-fun e!4643325 () Bool)

(assert (=> b!7856059 (=> res!3123558 e!4643325)))

(assert (=> b!7856059 (= res!3123558 (not ((_ is Concat!29942) (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227))))))))

(assert (=> b!7856059 (= e!4643326 e!4643325)))

(declare-fun b!7856060 () Bool)

(assert (=> b!7856060 (= e!4643323 e!4643327)))

(assert (=> b!7856060 (= c!1443890 ((_ is Star!21097) (ite c!1443703 (reg!21426 r1!6227) (ite c!1443702 (regTwo!42707 r1!6227) (regOne!42706 r1!6227)))))))

(declare-fun b!7856061 () Bool)

(assert (=> b!7856061 (= e!4643325 e!4643324)))

(declare-fun res!3123561 () Bool)

(assert (=> b!7856061 (=> (not res!3123561) (not e!4643324))))

(assert (=> b!7856061 (= res!3123561 call!728297)))

(assert (= (and d!2353945 (not res!3123557)) b!7856060))

(assert (= (and b!7856060 c!1443890) b!7856057))

(assert (= (and b!7856060 (not c!1443890)) b!7856056))

(assert (= (and b!7856057 res!3123560) b!7856055))

(assert (= (and b!7856056 c!1443889) b!7856058))

(assert (= (and b!7856056 (not c!1443889)) b!7856059))

(assert (= (and b!7856058 res!3123559) b!7856053))

(assert (= (and b!7856059 (not res!3123558)) b!7856061))

(assert (= (and b!7856061 res!3123561) b!7856054))

(assert (= (or b!7856058 b!7856054) bm!728292))

(assert (= (or b!7856053 b!7856061) bm!728290))

(assert (= (or b!7856055 bm!728290) bm!728291))

(declare-fun m!8260472 () Bool)

(assert (=> bm!728291 m!8260472))

(declare-fun m!8260474 () Bool)

(assert (=> b!7856057 m!8260474))

(declare-fun m!8260476 () Bool)

(assert (=> bm!728292 m!8260476))

(assert (=> bm!728145 d!2353945))

(assert (=> b!7855251 d!2353845))

(declare-fun d!2353947 () Bool)

(declare-fun lt!2680019 () Int)

(assert (=> d!2353947 (>= lt!2680019 0)))

(declare-fun e!4643338 () Int)

(assert (=> d!2353947 (= lt!2680019 e!4643338)))

(declare-fun c!1443895 () Bool)

(assert (=> d!2353947 (= c!1443895 ((_ is Nil!73832) lt!2679973))))

(assert (=> d!2353947 (= (size!42834 lt!2679973) lt!2680019)))

(declare-fun b!7856075 () Bool)

(assert (=> b!7856075 (= e!4643338 0)))

(declare-fun b!7856076 () Bool)

(assert (=> b!7856076 (= e!4643338 (+ 1 (size!42834 (t!388691 lt!2679973))))))

(assert (= (and d!2353947 c!1443895) b!7856075))

(assert (= (and d!2353947 (not c!1443895)) b!7856076))

(declare-fun m!8260478 () Bool)

(assert (=> b!7856076 m!8260478))

(assert (=> b!7855394 d!2353947))

(declare-fun d!2353951 () Bool)

(declare-fun lt!2680020 () Int)

(assert (=> d!2353951 (>= lt!2680020 0)))

(declare-fun e!4643339 () Int)

(assert (=> d!2353951 (= lt!2680020 e!4643339)))

(declare-fun c!1443896 () Bool)

(assert (=> d!2353951 (= c!1443896 ((_ is Nil!73832) s1!4084))))

(assert (=> d!2353951 (= (size!42834 s1!4084) lt!2680020)))

(declare-fun b!7856077 () Bool)

(assert (=> b!7856077 (= e!4643339 0)))

(declare-fun b!7856078 () Bool)

(assert (=> b!7856078 (= e!4643339 (+ 1 (size!42834 (t!388691 s1!4084))))))

(assert (= (and d!2353951 c!1443896) b!7856077))

(assert (= (and d!2353951 (not c!1443896)) b!7856078))

(assert (=> b!7856078 m!8260170))

(assert (=> b!7855394 d!2353951))

(declare-fun d!2353953 () Bool)

(declare-fun lt!2680021 () Int)

(assert (=> d!2353953 (>= lt!2680021 0)))

(declare-fun e!4643340 () Int)

(assert (=> d!2353953 (= lt!2680021 e!4643340)))

(declare-fun c!1443897 () Bool)

(assert (=> d!2353953 (= c!1443897 ((_ is Nil!73832) s2!3706))))

(assert (=> d!2353953 (= (size!42834 s2!3706) lt!2680021)))

(declare-fun b!7856079 () Bool)

(assert (=> b!7856079 (= e!4643340 0)))

(declare-fun b!7856080 () Bool)

(assert (=> b!7856080 (= e!4643340 (+ 1 (size!42834 (t!388691 s2!3706))))))

(assert (= (and d!2353953 c!1443897) b!7856079))

(assert (= (and d!2353953 (not c!1443897)) b!7856080))

(declare-fun m!8260480 () Bool)

(assert (=> b!7856080 m!8260480))

(assert (=> b!7855394 d!2353953))

(declare-fun b!7856081 () Bool)

(declare-fun e!4643344 () Regex!21097)

(assert (=> b!7856081 (= e!4643344 EmptyLang!21097)))

(declare-fun bm!728296 () Bool)

(declare-fun call!728302 () Regex!21097)

(declare-fun call!728301 () Regex!21097)

(assert (=> bm!728296 (= call!728302 call!728301)))

(declare-fun b!7856082 () Bool)

(declare-fun c!1443901 () Bool)

(assert (=> b!7856082 (= c!1443901 ((_ is Union!21097) (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun e!4643343 () Regex!21097)

(declare-fun e!4643341 () Regex!21097)

(assert (=> b!7856082 (= e!4643343 e!4643341)))

(declare-fun b!7856083 () Bool)

(declare-fun e!4643345 () Regex!21097)

(declare-fun call!728304 () Regex!21097)

(assert (=> b!7856083 (= e!4643345 (Union!21097 (Concat!29942 call!728304 (regTwo!42706 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))))) call!728302))))

(declare-fun bm!728297 () Bool)

(declare-fun c!1443899 () Bool)

(assert (=> bm!728297 (= call!728301 (derivativeStep!6332 (ite c!1443901 (regTwo!42707 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))) (ite c!1443899 (regTwo!42706 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))) (regOne!42706 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))))) (h!80280 s1!4084)))))

(declare-fun b!7856084 () Bool)

(declare-fun call!728303 () Regex!21097)

(assert (=> b!7856084 (= e!4643341 (Union!21097 call!728303 call!728301))))

(declare-fun b!7856085 () Bool)

(assert (=> b!7856085 (= e!4643345 (Union!21097 (Concat!29942 call!728302 (regTwo!42706 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))))) EmptyLang!21097))))

(declare-fun bm!728298 () Bool)

(assert (=> bm!728298 (= call!728304 call!728303)))

(declare-fun d!2353955 () Bool)

(declare-fun lt!2680022 () Regex!21097)

(assert (=> d!2353955 (validRegex!11507 lt!2680022)))

(assert (=> d!2353955 (= lt!2680022 e!4643344)))

(declare-fun c!1443900 () Bool)

(assert (=> d!2353955 (= c!1443900 (or ((_ is EmptyExpr!21097) (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))) ((_ is EmptyLang!21097) (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))))))))

(assert (=> d!2353955 (validRegex!11507 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))))))

(assert (=> d!2353955 (= (derivativeStep!6332 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))) (h!80280 s1!4084)) lt!2680022)))

(declare-fun b!7856086 () Bool)

(declare-fun e!4643342 () Regex!21097)

(assert (=> b!7856086 (= e!4643342 (Concat!29942 call!728304 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun b!7856087 () Bool)

(assert (=> b!7856087 (= e!4643343 (ite (= (h!80280 s1!4084) (c!1443671 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))))) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7856088 () Bool)

(assert (=> b!7856088 (= e!4643341 e!4643342)))

(declare-fun c!1443902 () Bool)

(assert (=> b!7856088 (= c!1443902 ((_ is Star!21097) (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun b!7856089 () Bool)

(assert (=> b!7856089 (= e!4643344 e!4643343)))

(declare-fun c!1443898 () Bool)

(assert (=> b!7856089 (= c!1443898 ((_ is ElementMatch!21097) (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))))))

(declare-fun bm!728299 () Bool)

(assert (=> bm!728299 (= call!728303 (derivativeStep!6332 (ite c!1443901 (regOne!42707 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))) (ite c!1443902 (reg!21426 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))) (regOne!42706 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952)))))) (h!80280 s1!4084)))))

(declare-fun b!7856090 () Bool)

(assert (=> b!7856090 (= c!1443899 (nullable!9369 (regOne!42706 (ite c!1443786 (regTwo!42707 lt!2679952) (ite c!1443784 (regTwo!42706 lt!2679952) (regOne!42706 lt!2679952))))))))

(assert (=> b!7856090 (= e!4643342 e!4643345)))

(assert (= (and d!2353955 c!1443900) b!7856081))

(assert (= (and d!2353955 (not c!1443900)) b!7856089))

(assert (= (and b!7856089 c!1443898) b!7856087))

(assert (= (and b!7856089 (not c!1443898)) b!7856082))

(assert (= (and b!7856082 c!1443901) b!7856084))

(assert (= (and b!7856082 (not c!1443901)) b!7856088))

(assert (= (and b!7856088 c!1443902) b!7856086))

(assert (= (and b!7856088 (not c!1443902)) b!7856090))

(assert (= (and b!7856090 c!1443899) b!7856083))

(assert (= (and b!7856090 (not c!1443899)) b!7856085))

(assert (= (or b!7856083 b!7856085) bm!728296))

(assert (= (or b!7856086 b!7856083) bm!728298))

(assert (= (or b!7856084 bm!728296) bm!728297))

(assert (= (or b!7856084 bm!728298) bm!728299))

(declare-fun m!8260488 () Bool)

(assert (=> bm!728297 m!8260488))

(declare-fun m!8260490 () Bool)

(assert (=> d!2353955 m!8260490))

(declare-fun m!8260492 () Bool)

(assert (=> d!2353955 m!8260492))

(declare-fun m!8260494 () Bool)

(assert (=> bm!728299 m!8260494))

(declare-fun m!8260496 () Bool)

(assert (=> b!7856090 m!8260496))

(assert (=> bm!728202 d!2353955))

(declare-fun d!2353959 () Bool)

(declare-fun lt!2680024 () Int)

(assert (=> d!2353959 (>= lt!2680024 0)))

(declare-fun e!4643353 () Int)

(assert (=> d!2353959 (= lt!2680024 e!4643353)))

(declare-fun c!1443906 () Bool)

(assert (=> d!2353959 (= c!1443906 ((_ is Nil!73832) lt!2679998))))

(assert (=> d!2353959 (= (size!42834 lt!2679998) lt!2680024)))

(declare-fun b!7856105 () Bool)

(assert (=> b!7856105 (= e!4643353 0)))

(declare-fun b!7856106 () Bool)

(assert (=> b!7856106 (= e!4643353 (+ 1 (size!42834 (t!388691 lt!2679998))))))

(assert (= (and d!2353959 c!1443906) b!7856105))

(assert (= (and d!2353959 (not c!1443906)) b!7856106))

(declare-fun m!8260498 () Bool)

(assert (=> b!7856106 m!8260498))

(assert (=> b!7855645 d!2353959))

(declare-fun d!2353961 () Bool)

(declare-fun lt!2680025 () Int)

(assert (=> d!2353961 (>= lt!2680025 0)))

(declare-fun e!4643354 () Int)

(assert (=> d!2353961 (= lt!2680025 e!4643354)))

(declare-fun c!1443907 () Bool)

(assert (=> d!2353961 (= c!1443907 ((_ is Nil!73832) (t!388691 s1!4084)))))

(assert (=> d!2353961 (= (size!42834 (t!388691 s1!4084)) lt!2680025)))

(declare-fun b!7856107 () Bool)

(assert (=> b!7856107 (= e!4643354 0)))

(declare-fun b!7856108 () Bool)

(assert (=> b!7856108 (= e!4643354 (+ 1 (size!42834 (t!388691 (t!388691 s1!4084)))))))

(assert (= (and d!2353961 c!1443907) b!7856107))

(assert (= (and d!2353961 (not c!1443907)) b!7856108))

(assert (=> b!7856108 m!8260290))

(assert (=> b!7855645 d!2353961))

(assert (=> b!7855645 d!2353953))

(declare-fun b!7856109 () Bool)

(declare-fun e!4643359 () Bool)

(declare-fun e!4643355 () Bool)

(assert (=> b!7856109 (= e!4643359 e!4643355)))

(declare-fun res!3123580 () Bool)

(assert (=> b!7856109 (=> (not res!3123580) (not e!4643355))))

(declare-fun lt!2680026 () Bool)

(assert (=> b!7856109 (= res!3123580 (not lt!2680026))))

(declare-fun b!7856110 () Bool)

(declare-fun e!4643357 () Bool)

(assert (=> b!7856110 (= e!4643357 (= (head!16054 (++!18097 (t!388691 s1!4084) s2!3706)) (c!1443671 (Concat!29942 lt!2679953 r2!6165))))))

(declare-fun b!7856111 () Bool)

(declare-fun e!4643360 () Bool)

(assert (=> b!7856111 (= e!4643355 e!4643360)))

(declare-fun res!3123579 () Bool)

(assert (=> b!7856111 (=> res!3123579 e!4643360)))

(declare-fun call!728306 () Bool)

(assert (=> b!7856111 (= res!3123579 call!728306)))

(declare-fun b!7856112 () Bool)

(declare-fun e!4643361 () Bool)

(assert (=> b!7856112 (= e!4643361 (nullable!9369 (Concat!29942 lt!2679953 r2!6165)))))

(declare-fun b!7856113 () Bool)

(declare-fun res!3123576 () Bool)

(assert (=> b!7856113 (=> res!3123576 e!4643359)))

(assert (=> b!7856113 (= res!3123576 (not ((_ is ElementMatch!21097) (Concat!29942 lt!2679953 r2!6165))))))

(declare-fun e!4643358 () Bool)

(assert (=> b!7856113 (= e!4643358 e!4643359)))

(declare-fun b!7856114 () Bool)

(declare-fun e!4643356 () Bool)

(assert (=> b!7856114 (= e!4643356 (= lt!2680026 call!728306))))

(declare-fun d!2353963 () Bool)

(assert (=> d!2353963 e!4643356))

(declare-fun c!1443908 () Bool)

(assert (=> d!2353963 (= c!1443908 ((_ is EmptyExpr!21097) (Concat!29942 lt!2679953 r2!6165)))))

(assert (=> d!2353963 (= lt!2680026 e!4643361)))

(declare-fun c!1443910 () Bool)

(assert (=> d!2353963 (= c!1443910 (isEmpty!42343 (++!18097 (t!388691 s1!4084) s2!3706)))))

(assert (=> d!2353963 (validRegex!11507 (Concat!29942 lt!2679953 r2!6165))))

(assert (=> d!2353963 (= (matchR!10533 (Concat!29942 lt!2679953 r2!6165) (++!18097 (t!388691 s1!4084) s2!3706)) lt!2680026)))

(declare-fun b!7856115 () Bool)

(declare-fun res!3123581 () Bool)

(assert (=> b!7856115 (=> (not res!3123581) (not e!4643357))))

(assert (=> b!7856115 (= res!3123581 (not call!728306))))

(declare-fun b!7856116 () Bool)

(assert (=> b!7856116 (= e!4643356 e!4643358)))

(declare-fun c!1443909 () Bool)

(assert (=> b!7856116 (= c!1443909 ((_ is EmptyLang!21097) (Concat!29942 lt!2679953 r2!6165)))))

(declare-fun b!7856117 () Bool)

(assert (=> b!7856117 (= e!4643358 (not lt!2680026))))

(declare-fun b!7856118 () Bool)

(declare-fun res!3123582 () Bool)

(assert (=> b!7856118 (=> res!3123582 e!4643359)))

(assert (=> b!7856118 (= res!3123582 e!4643357)))

(declare-fun res!3123575 () Bool)

(assert (=> b!7856118 (=> (not res!3123575) (not e!4643357))))

(assert (=> b!7856118 (= res!3123575 lt!2680026)))

(declare-fun bm!728301 () Bool)

(assert (=> bm!728301 (= call!728306 (isEmpty!42343 (++!18097 (t!388691 s1!4084) s2!3706)))))

(declare-fun b!7856119 () Bool)

(assert (=> b!7856119 (= e!4643361 (matchR!10533 (derivativeStep!6332 (Concat!29942 lt!2679953 r2!6165) (head!16054 (++!18097 (t!388691 s1!4084) s2!3706))) (tail!15597 (++!18097 (t!388691 s1!4084) s2!3706))))))

(declare-fun b!7856120 () Bool)

(declare-fun res!3123578 () Bool)

(assert (=> b!7856120 (=> res!3123578 e!4643360)))

(assert (=> b!7856120 (= res!3123578 (not (isEmpty!42343 (tail!15597 (++!18097 (t!388691 s1!4084) s2!3706)))))))

(declare-fun b!7856121 () Bool)

(assert (=> b!7856121 (= e!4643360 (not (= (head!16054 (++!18097 (t!388691 s1!4084) s2!3706)) (c!1443671 (Concat!29942 lt!2679953 r2!6165)))))))

(declare-fun b!7856122 () Bool)

(declare-fun res!3123577 () Bool)

(assert (=> b!7856122 (=> (not res!3123577) (not e!4643357))))

(assert (=> b!7856122 (= res!3123577 (isEmpty!42343 (tail!15597 (++!18097 (t!388691 s1!4084) s2!3706))))))

(assert (= (and d!2353963 c!1443910) b!7856112))

(assert (= (and d!2353963 (not c!1443910)) b!7856119))

(assert (= (and d!2353963 c!1443908) b!7856114))

(assert (= (and d!2353963 (not c!1443908)) b!7856116))

(assert (= (and b!7856116 c!1443909) b!7856117))

(assert (= (and b!7856116 (not c!1443909)) b!7856113))

(assert (= (and b!7856113 (not res!3123576)) b!7856118))

(assert (= (and b!7856118 res!3123575) b!7856115))

(assert (= (and b!7856115 res!3123581) b!7856122))

(assert (= (and b!7856122 res!3123577) b!7856110))

(assert (= (and b!7856118 (not res!3123582)) b!7856109))

(assert (= (and b!7856109 res!3123580) b!7856111))

(assert (= (and b!7856111 (not res!3123579)) b!7856120))

(assert (= (and b!7856120 (not res!3123578)) b!7856121))

(assert (= (or b!7856114 b!7856111 b!7856115) bm!728301))

(assert (=> b!7856110 m!8259912))

(declare-fun m!8260500 () Bool)

(assert (=> b!7856110 m!8260500))

(assert (=> b!7856119 m!8259912))

(assert (=> b!7856119 m!8260500))

(assert (=> b!7856119 m!8260500))

(declare-fun m!8260502 () Bool)

(assert (=> b!7856119 m!8260502))

(assert (=> b!7856119 m!8259912))

(declare-fun m!8260504 () Bool)

(assert (=> b!7856119 m!8260504))

(assert (=> b!7856119 m!8260502))

(assert (=> b!7856119 m!8260504))

(declare-fun m!8260506 () Bool)

(assert (=> b!7856119 m!8260506))

(assert (=> b!7856121 m!8259912))

(assert (=> b!7856121 m!8260500))

(assert (=> d!2353963 m!8259912))

(declare-fun m!8260508 () Bool)

(assert (=> d!2353963 m!8260508))

(declare-fun m!8260510 () Bool)

(assert (=> d!2353963 m!8260510))

(assert (=> bm!728301 m!8259912))

(assert (=> bm!728301 m!8260508))

(assert (=> b!7856120 m!8259912))

(assert (=> b!7856120 m!8260504))

(assert (=> b!7856120 m!8260504))

(declare-fun m!8260514 () Bool)

(assert (=> b!7856120 m!8260514))

(declare-fun m!8260516 () Bool)

(assert (=> b!7856112 m!8260516))

(assert (=> b!7856122 m!8259912))

(assert (=> b!7856122 m!8260504))

(assert (=> b!7856122 m!8260504))

(assert (=> b!7856122 m!8260514))

(assert (=> d!2353785 d!2353963))

(assert (=> d!2353785 d!2353815))

(declare-fun d!2353965 () Bool)

(assert (=> d!2353965 (matchR!10533 (Concat!29942 lt!2679953 r2!6165) (++!18097 (t!388691 s1!4084) s2!3706))))

(assert (=> d!2353965 true))

(declare-fun _$119!547 () Unit!168920)

(assert (=> d!2353965 (= (choose!59659 lt!2679953 r2!6165 (t!388691 s1!4084) s2!3706) _$119!547)))

(declare-fun bs!1967134 () Bool)

(assert (= bs!1967134 d!2353965))

(assert (=> bs!1967134 m!8259912))

(assert (=> bs!1967134 m!8259912))

(assert (=> bs!1967134 m!8260052))

(assert (=> d!2353785 d!2353965))

(declare-fun bm!728306 () Bool)

(declare-fun call!728313 () Bool)

(declare-fun call!728312 () Bool)

(assert (=> bm!728306 (= call!728313 call!728312)))

(declare-fun b!7856133 () Bool)

(declare-fun e!4643373 () Bool)

(assert (=> b!7856133 (= e!4643373 call!728313)))

(declare-fun b!7856134 () Bool)

(declare-fun e!4643369 () Bool)

(declare-fun call!728311 () Bool)

(assert (=> b!7856134 (= e!4643369 call!728311)))

(declare-fun b!7856135 () Bool)

(declare-fun e!4643367 () Bool)

(assert (=> b!7856135 (= e!4643367 call!728312)))

(declare-fun c!1443916 () Bool)

(declare-fun c!1443917 () Bool)

(declare-fun bm!728307 () Bool)

(assert (=> bm!728307 (= call!728312 (validRegex!11507 (ite c!1443917 (reg!21426 lt!2679953) (ite c!1443916 (regTwo!42707 lt!2679953) (regOne!42706 lt!2679953)))))))

(declare-fun b!7856137 () Bool)

(declare-fun e!4643372 () Bool)

(assert (=> b!7856137 (= e!4643372 e!4643367)))

(declare-fun res!3123586 () Bool)

(assert (=> b!7856137 (= res!3123586 (not (nullable!9369 (reg!21426 lt!2679953))))))

(assert (=> b!7856137 (=> (not res!3123586) (not e!4643367))))

(declare-fun b!7856138 () Bool)

(declare-fun res!3123585 () Bool)

(assert (=> b!7856138 (=> (not res!3123585) (not e!4643373))))

(assert (=> b!7856138 (= res!3123585 call!728311)))

(declare-fun e!4643371 () Bool)

(assert (=> b!7856138 (= e!4643371 e!4643373)))

(declare-fun b!7856136 () Bool)

(assert (=> b!7856136 (= e!4643372 e!4643371)))

(assert (=> b!7856136 (= c!1443916 ((_ is Union!21097) lt!2679953))))

(declare-fun d!2353969 () Bool)

(declare-fun res!3123583 () Bool)

(declare-fun e!4643368 () Bool)

(assert (=> d!2353969 (=> res!3123583 e!4643368)))

(assert (=> d!2353969 (= res!3123583 ((_ is ElementMatch!21097) lt!2679953))))

(assert (=> d!2353969 (= (validRegex!11507 lt!2679953) e!4643368)))

(declare-fun bm!728308 () Bool)

(assert (=> bm!728308 (= call!728311 (validRegex!11507 (ite c!1443916 (regOne!42707 lt!2679953) (regTwo!42706 lt!2679953))))))

(declare-fun b!7856139 () Bool)

(declare-fun res!3123584 () Bool)

(declare-fun e!4643370 () Bool)

(assert (=> b!7856139 (=> res!3123584 e!4643370)))

(assert (=> b!7856139 (= res!3123584 (not ((_ is Concat!29942) lt!2679953)))))

(assert (=> b!7856139 (= e!4643371 e!4643370)))

(declare-fun b!7856140 () Bool)

(assert (=> b!7856140 (= e!4643368 e!4643372)))

(assert (=> b!7856140 (= c!1443917 ((_ is Star!21097) lt!2679953))))

(declare-fun b!7856141 () Bool)

(assert (=> b!7856141 (= e!4643370 e!4643369)))

(declare-fun res!3123587 () Bool)

(assert (=> b!7856141 (=> (not res!3123587) (not e!4643369))))

(assert (=> b!7856141 (= res!3123587 call!728313)))

(assert (= (and d!2353969 (not res!3123583)) b!7856140))

(assert (= (and b!7856140 c!1443917) b!7856137))

(assert (= (and b!7856140 (not c!1443917)) b!7856136))

(assert (= (and b!7856137 res!3123586) b!7856135))

(assert (= (and b!7856136 c!1443916) b!7856138))

(assert (= (and b!7856136 (not c!1443916)) b!7856139))

(assert (= (and b!7856138 res!3123585) b!7856133))

(assert (= (and b!7856139 (not res!3123584)) b!7856141))

(assert (= (and b!7856141 res!3123587) b!7856134))

(assert (= (or b!7856138 b!7856134) bm!728308))

(assert (= (or b!7856133 b!7856141) bm!728306))

(assert (= (or b!7856135 bm!728306) bm!728307))

(declare-fun m!8260538 () Bool)

(assert (=> bm!728307 m!8260538))

(declare-fun m!8260540 () Bool)

(assert (=> b!7856137 m!8260540))

(declare-fun m!8260542 () Bool)

(assert (=> bm!728308 m!8260542))

(assert (=> d!2353785 d!2353969))

(declare-fun bm!728309 () Bool)

(declare-fun call!728316 () Bool)

(declare-fun call!728315 () Bool)

(assert (=> bm!728309 (= call!728316 call!728315)))

(declare-fun b!7856142 () Bool)

(declare-fun e!4643380 () Bool)

(assert (=> b!7856142 (= e!4643380 call!728316)))

(declare-fun b!7856143 () Bool)

(declare-fun e!4643376 () Bool)

(declare-fun call!728314 () Bool)

(assert (=> b!7856143 (= e!4643376 call!728314)))

(declare-fun b!7856144 () Bool)

(declare-fun e!4643374 () Bool)

(assert (=> b!7856144 (= e!4643374 call!728315)))

(declare-fun c!1443919 () Bool)

(declare-fun bm!728310 () Bool)

(declare-fun c!1443918 () Bool)

(assert (=> bm!728310 (= call!728315 (validRegex!11507 (ite c!1443919 (reg!21426 (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))) (ite c!1443918 (regTwo!42707 (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))) (regOne!42706 (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956))))))))))

(declare-fun b!7856146 () Bool)

(declare-fun e!4643379 () Bool)

(assert (=> b!7856146 (= e!4643379 e!4643374)))

(declare-fun res!3123591 () Bool)

(assert (=> b!7856146 (= res!3123591 (not (nullable!9369 (reg!21426 (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))))))))

(assert (=> b!7856146 (=> (not res!3123591) (not e!4643374))))

(declare-fun b!7856147 () Bool)

(declare-fun res!3123590 () Bool)

(assert (=> b!7856147 (=> (not res!3123590) (not e!4643380))))

(assert (=> b!7856147 (= res!3123590 call!728314)))

(declare-fun e!4643378 () Bool)

(assert (=> b!7856147 (= e!4643378 e!4643380)))

(declare-fun b!7856145 () Bool)

(assert (=> b!7856145 (= e!4643379 e!4643378)))

(assert (=> b!7856145 (= c!1443918 ((_ is Union!21097) (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))))))

(declare-fun d!2353973 () Bool)

(declare-fun res!3123588 () Bool)

(declare-fun e!4643375 () Bool)

(assert (=> d!2353973 (=> res!3123588 e!4643375)))

(assert (=> d!2353973 (= res!3123588 ((_ is ElementMatch!21097) (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))))))

(assert (=> d!2353973 (= (validRegex!11507 (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))) e!4643375)))

(declare-fun bm!728311 () Bool)

(assert (=> bm!728311 (= call!728314 (validRegex!11507 (ite c!1443918 (regOne!42707 (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))) (regTwo!42706 (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))))))))

(declare-fun b!7856148 () Bool)

(declare-fun res!3123589 () Bool)

(declare-fun e!4643377 () Bool)

(assert (=> b!7856148 (=> res!3123589 e!4643377)))

(assert (=> b!7856148 (= res!3123589 (not ((_ is Concat!29942) (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956))))))))

(assert (=> b!7856148 (= e!4643378 e!4643377)))

(declare-fun b!7856149 () Bool)

(assert (=> b!7856149 (= e!4643375 e!4643379)))

(assert (=> b!7856149 (= c!1443919 ((_ is Star!21097) (ite c!1443780 (reg!21426 lt!2679956) (ite c!1443779 (regTwo!42707 lt!2679956) (regOne!42706 lt!2679956)))))))

(declare-fun b!7856150 () Bool)

(assert (=> b!7856150 (= e!4643377 e!4643376)))

(declare-fun res!3123592 () Bool)

(assert (=> b!7856150 (=> (not res!3123592) (not e!4643376))))

(assert (=> b!7856150 (= res!3123592 call!728316)))

(assert (= (and d!2353973 (not res!3123588)) b!7856149))

(assert (= (and b!7856149 c!1443919) b!7856146))

(assert (= (and b!7856149 (not c!1443919)) b!7856145))

(assert (= (and b!7856146 res!3123591) b!7856144))

(assert (= (and b!7856145 c!1443918) b!7856147))

(assert (= (and b!7856145 (not c!1443918)) b!7856148))

(assert (= (and b!7856147 res!3123590) b!7856142))

(assert (= (and b!7856148 (not res!3123589)) b!7856150))

(assert (= (and b!7856150 res!3123592) b!7856143))

(assert (= (or b!7856147 b!7856143) bm!728311))

(assert (= (or b!7856142 b!7856150) bm!728309))

(assert (= (or b!7856144 bm!728309) bm!728310))

(declare-fun m!8260544 () Bool)

(assert (=> bm!728310 m!8260544))

(declare-fun m!8260546 () Bool)

(assert (=> b!7856146 m!8260546))

(declare-fun m!8260548 () Bool)

(assert (=> bm!728311 m!8260548))

(assert (=> bm!728196 d!2353973))

(declare-fun b!7856151 () Bool)

(declare-fun e!4643385 () Bool)

(declare-fun e!4643381 () Bool)

(assert (=> b!7856151 (= e!4643385 e!4643381)))

(declare-fun res!3123598 () Bool)

(assert (=> b!7856151 (=> (not res!3123598) (not e!4643381))))

(declare-fun lt!2680028 () Bool)

(assert (=> b!7856151 (= res!3123598 (not lt!2680028))))

(declare-fun b!7856152 () Bool)

(declare-fun e!4643383 () Bool)

(assert (=> b!7856152 (= e!4643383 (= (head!16054 (tail!15597 lt!2679957)) (c!1443671 (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957)))))))

(declare-fun b!7856153 () Bool)

(declare-fun e!4643386 () Bool)

(assert (=> b!7856153 (= e!4643381 e!4643386)))

(declare-fun res!3123597 () Bool)

(assert (=> b!7856153 (=> res!3123597 e!4643386)))

(declare-fun call!728317 () Bool)

(assert (=> b!7856153 (= res!3123597 call!728317)))

(declare-fun b!7856154 () Bool)

(declare-fun e!4643387 () Bool)

(assert (=> b!7856154 (= e!4643387 (nullable!9369 (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957))))))

(declare-fun b!7856155 () Bool)

(declare-fun res!3123594 () Bool)

(assert (=> b!7856155 (=> res!3123594 e!4643385)))

(assert (=> b!7856155 (= res!3123594 (not ((_ is ElementMatch!21097) (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957)))))))

(declare-fun e!4643384 () Bool)

(assert (=> b!7856155 (= e!4643384 e!4643385)))

(declare-fun b!7856156 () Bool)

(declare-fun e!4643382 () Bool)

(assert (=> b!7856156 (= e!4643382 (= lt!2680028 call!728317))))

(declare-fun d!2353975 () Bool)

(assert (=> d!2353975 e!4643382))

(declare-fun c!1443920 () Bool)

(assert (=> d!2353975 (= c!1443920 ((_ is EmptyExpr!21097) (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957))))))

(assert (=> d!2353975 (= lt!2680028 e!4643387)))

(declare-fun c!1443922 () Bool)

(assert (=> d!2353975 (= c!1443922 (isEmpty!42343 (tail!15597 lt!2679957)))))

(assert (=> d!2353975 (validRegex!11507 (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957)))))

(assert (=> d!2353975 (= (matchR!10533 (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957)) (tail!15597 lt!2679957)) lt!2680028)))

(declare-fun b!7856157 () Bool)

(declare-fun res!3123599 () Bool)

(assert (=> b!7856157 (=> (not res!3123599) (not e!4643383))))

(assert (=> b!7856157 (= res!3123599 (not call!728317))))

(declare-fun b!7856158 () Bool)

(assert (=> b!7856158 (= e!4643382 e!4643384)))

(declare-fun c!1443921 () Bool)

(assert (=> b!7856158 (= c!1443921 ((_ is EmptyLang!21097) (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957))))))

(declare-fun b!7856159 () Bool)

(assert (=> b!7856159 (= e!4643384 (not lt!2680028))))

(declare-fun b!7856160 () Bool)

(declare-fun res!3123600 () Bool)

(assert (=> b!7856160 (=> res!3123600 e!4643385)))

(assert (=> b!7856160 (= res!3123600 e!4643383)))

(declare-fun res!3123593 () Bool)

(assert (=> b!7856160 (=> (not res!3123593) (not e!4643383))))

(assert (=> b!7856160 (= res!3123593 lt!2680028)))

(declare-fun bm!728312 () Bool)

(assert (=> bm!728312 (= call!728317 (isEmpty!42343 (tail!15597 lt!2679957)))))

(declare-fun b!7856161 () Bool)

(assert (=> b!7856161 (= e!4643387 (matchR!10533 (derivativeStep!6332 (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957)) (head!16054 (tail!15597 lt!2679957))) (tail!15597 (tail!15597 lt!2679957))))))

(declare-fun b!7856162 () Bool)

(declare-fun res!3123596 () Bool)

(assert (=> b!7856162 (=> res!3123596 e!4643386)))

(assert (=> b!7856162 (= res!3123596 (not (isEmpty!42343 (tail!15597 (tail!15597 lt!2679957)))))))

(declare-fun b!7856163 () Bool)

(assert (=> b!7856163 (= e!4643386 (not (= (head!16054 (tail!15597 lt!2679957)) (c!1443671 (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957))))))))

(declare-fun b!7856164 () Bool)

(declare-fun res!3123595 () Bool)

(assert (=> b!7856164 (=> (not res!3123595) (not e!4643383))))

(assert (=> b!7856164 (= res!3123595 (isEmpty!42343 (tail!15597 (tail!15597 lt!2679957))))))

(assert (= (and d!2353975 c!1443922) b!7856154))

(assert (= (and d!2353975 (not c!1443922)) b!7856161))

(assert (= (and d!2353975 c!1443920) b!7856156))

(assert (= (and d!2353975 (not c!1443920)) b!7856158))

(assert (= (and b!7856158 c!1443921) b!7856159))

(assert (= (and b!7856158 (not c!1443921)) b!7856155))

(assert (= (and b!7856155 (not res!3123594)) b!7856160))

(assert (= (and b!7856160 res!3123593) b!7856157))

(assert (= (and b!7856157 res!3123599) b!7856164))

(assert (= (and b!7856164 res!3123595) b!7856152))

(assert (= (and b!7856160 (not res!3123600)) b!7856151))

(assert (= (and b!7856151 res!3123598) b!7856153))

(assert (= (and b!7856153 (not res!3123597)) b!7856162))

(assert (= (and b!7856162 (not res!3123596)) b!7856163))

(assert (= (or b!7856156 b!7856153 b!7856157) bm!728312))

(assert (=> b!7856152 m!8260036))

(assert (=> b!7856152 m!8260364))

(assert (=> b!7856161 m!8260036))

(assert (=> b!7856161 m!8260364))

(assert (=> b!7856161 m!8260066))

(assert (=> b!7856161 m!8260364))

(declare-fun m!8260550 () Bool)

(assert (=> b!7856161 m!8260550))

(assert (=> b!7856161 m!8260036))

(assert (=> b!7856161 m!8260368))

(assert (=> b!7856161 m!8260550))

(assert (=> b!7856161 m!8260368))

(declare-fun m!8260552 () Bool)

(assert (=> b!7856161 m!8260552))

(assert (=> b!7856163 m!8260036))

(assert (=> b!7856163 m!8260364))

(assert (=> d!2353975 m!8260036))

(assert (=> d!2353975 m!8260044))

(assert (=> d!2353975 m!8260066))

(declare-fun m!8260554 () Bool)

(assert (=> d!2353975 m!8260554))

(assert (=> bm!728312 m!8260036))

(assert (=> bm!728312 m!8260044))

(assert (=> b!7856162 m!8260036))

(assert (=> b!7856162 m!8260368))

(assert (=> b!7856162 m!8260368))

(assert (=> b!7856162 m!8260374))

(assert (=> b!7856154 m!8260066))

(declare-fun m!8260556 () Bool)

(assert (=> b!7856154 m!8260556))

(assert (=> b!7856164 m!8260036))

(assert (=> b!7856164 m!8260368))

(assert (=> b!7856164 m!8260368))

(assert (=> b!7856164 m!8260374))

(assert (=> b!7855457 d!2353975))

(declare-fun b!7856165 () Bool)

(declare-fun e!4643391 () Regex!21097)

(assert (=> b!7856165 (= e!4643391 EmptyLang!21097)))

(declare-fun bm!728313 () Bool)

(declare-fun call!728319 () Regex!21097)

(declare-fun call!728318 () Regex!21097)

(assert (=> bm!728313 (= call!728319 call!728318)))

(declare-fun b!7856166 () Bool)

(declare-fun c!1443926 () Bool)

(assert (=> b!7856166 (= c!1443926 ((_ is Union!21097) lt!2679956))))

(declare-fun e!4643390 () Regex!21097)

(declare-fun e!4643388 () Regex!21097)

(assert (=> b!7856166 (= e!4643390 e!4643388)))

(declare-fun b!7856167 () Bool)

(declare-fun call!728321 () Regex!21097)

(declare-fun e!4643392 () Regex!21097)

(assert (=> b!7856167 (= e!4643392 (Union!21097 (Concat!29942 call!728321 (regTwo!42706 lt!2679956)) call!728319))))

(declare-fun bm!728314 () Bool)

(declare-fun c!1443924 () Bool)

(assert (=> bm!728314 (= call!728318 (derivativeStep!6332 (ite c!1443926 (regTwo!42707 lt!2679956) (ite c!1443924 (regTwo!42706 lt!2679956) (regOne!42706 lt!2679956))) (head!16054 lt!2679957)))))

(declare-fun b!7856168 () Bool)

(declare-fun call!728320 () Regex!21097)

(assert (=> b!7856168 (= e!4643388 (Union!21097 call!728320 call!728318))))

(declare-fun b!7856169 () Bool)

(assert (=> b!7856169 (= e!4643392 (Union!21097 (Concat!29942 call!728319 (regTwo!42706 lt!2679956)) EmptyLang!21097))))

(declare-fun bm!728315 () Bool)

(assert (=> bm!728315 (= call!728321 call!728320)))

(declare-fun d!2353981 () Bool)

(declare-fun lt!2680029 () Regex!21097)

(assert (=> d!2353981 (validRegex!11507 lt!2680029)))

(assert (=> d!2353981 (= lt!2680029 e!4643391)))

(declare-fun c!1443925 () Bool)

(assert (=> d!2353981 (= c!1443925 (or ((_ is EmptyExpr!21097) lt!2679956) ((_ is EmptyLang!21097) lt!2679956)))))

(assert (=> d!2353981 (validRegex!11507 lt!2679956)))

(assert (=> d!2353981 (= (derivativeStep!6332 lt!2679956 (head!16054 lt!2679957)) lt!2680029)))

(declare-fun b!7856170 () Bool)

(declare-fun e!4643389 () Regex!21097)

(assert (=> b!7856170 (= e!4643389 (Concat!29942 call!728321 lt!2679956))))

(declare-fun b!7856171 () Bool)

(assert (=> b!7856171 (= e!4643390 (ite (= (head!16054 lt!2679957) (c!1443671 lt!2679956)) EmptyExpr!21097 EmptyLang!21097))))

(declare-fun b!7856172 () Bool)

(assert (=> b!7856172 (= e!4643388 e!4643389)))

(declare-fun c!1443927 () Bool)

(assert (=> b!7856172 (= c!1443927 ((_ is Star!21097) lt!2679956))))

(declare-fun b!7856173 () Bool)

(assert (=> b!7856173 (= e!4643391 e!4643390)))

(declare-fun c!1443923 () Bool)

(assert (=> b!7856173 (= c!1443923 ((_ is ElementMatch!21097) lt!2679956))))

(declare-fun bm!728316 () Bool)

(assert (=> bm!728316 (= call!728320 (derivativeStep!6332 (ite c!1443926 (regOne!42707 lt!2679956) (ite c!1443927 (reg!21426 lt!2679956) (regOne!42706 lt!2679956))) (head!16054 lt!2679957)))))

(declare-fun b!7856174 () Bool)

(assert (=> b!7856174 (= c!1443924 (nullable!9369 (regOne!42706 lt!2679956)))))

(assert (=> b!7856174 (= e!4643389 e!4643392)))

(assert (= (and d!2353981 c!1443925) b!7856165))

(assert (= (and d!2353981 (not c!1443925)) b!7856173))

(assert (= (and b!7856173 c!1443923) b!7856171))

(assert (= (and b!7856173 (not c!1443923)) b!7856166))

(assert (= (and b!7856166 c!1443926) b!7856168))

(assert (= (and b!7856166 (not c!1443926)) b!7856172))

(assert (= (and b!7856172 c!1443927) b!7856170))

(assert (= (and b!7856172 (not c!1443927)) b!7856174))

(assert (= (and b!7856174 c!1443924) b!7856167))

(assert (= (and b!7856174 (not c!1443924)) b!7856169))

(assert (= (or b!7856167 b!7856169) bm!728313))

(assert (= (or b!7856170 b!7856167) bm!728315))

(assert (= (or b!7856168 bm!728313) bm!728314))

(assert (= (or b!7856168 bm!728315) bm!728316))

(assert (=> bm!728314 m!8260032))

(declare-fun m!8260558 () Bool)

(assert (=> bm!728314 m!8260558))

(declare-fun m!8260560 () Bool)

(assert (=> d!2353981 m!8260560))

(assert (=> d!2353981 m!8259902))

(assert (=> bm!728316 m!8260032))

(declare-fun m!8260562 () Bool)

(assert (=> bm!728316 m!8260562))

(declare-fun m!8260564 () Bool)

(assert (=> b!7856174 m!8260564))

(assert (=> b!7855457 d!2353981))

(assert (=> b!7855457 d!2353915))

(assert (=> b!7855457 d!2353885))

(assert (=> b!7855433 d!2353819))

(declare-fun d!2353987 () Bool)

(assert (=> d!2353987 (= (nullable!9369 lt!2679952) (nullableFct!3695 lt!2679952))))

(declare-fun bs!1967135 () Bool)

(assert (= bs!1967135 d!2353987))

(declare-fun m!8260566 () Bool)

(assert (=> bs!1967135 m!8260566))

(assert (=> b!7855345 d!2353987))

(assert (=> d!2353825 d!2353867))

(assert (=> d!2353825 d!2353769))

(assert (=> b!7855409 d!2353915))

(assert (=> b!7855459 d!2353915))

(declare-fun b!7856175 () Bool)

(declare-fun e!4643393 () Bool)

(declare-fun tp!2327101 () Bool)

(assert (=> b!7856175 (= e!4643393 (and tp_is_empty!52593 tp!2327101))))

(assert (=> b!7855742 (= tp!2327085 e!4643393)))

(assert (= (and b!7855742 ((_ is Cons!73832) (t!388691 (t!388691 s2!3706)))) b!7856175))

(declare-fun b!7856177 () Bool)

(declare-fun e!4643394 () Bool)

(declare-fun tp!2327104 () Bool)

(declare-fun tp!2327105 () Bool)

(assert (=> b!7856177 (= e!4643394 (and tp!2327104 tp!2327105))))

(declare-fun b!7856179 () Bool)

(declare-fun tp!2327102 () Bool)

(declare-fun tp!2327103 () Bool)

(assert (=> b!7856179 (= e!4643394 (and tp!2327102 tp!2327103))))

(assert (=> b!7855750 (= tp!2327091 e!4643394)))

(declare-fun b!7856176 () Bool)

(assert (=> b!7856176 (= e!4643394 tp_is_empty!52593)))

(declare-fun b!7856178 () Bool)

(declare-fun tp!2327106 () Bool)

(assert (=> b!7856178 (= e!4643394 tp!2327106)))

(assert (= (and b!7855750 ((_ is ElementMatch!21097) (regOne!42707 (regOne!42707 r1!6227)))) b!7856176))

(assert (= (and b!7855750 ((_ is Concat!29942) (regOne!42707 (regOne!42707 r1!6227)))) b!7856177))

(assert (= (and b!7855750 ((_ is Star!21097) (regOne!42707 (regOne!42707 r1!6227)))) b!7856178))

(assert (= (and b!7855750 ((_ is Union!21097) (regOne!42707 (regOne!42707 r1!6227)))) b!7856179))

(declare-fun b!7856181 () Bool)

(declare-fun e!4643395 () Bool)

(declare-fun tp!2327109 () Bool)

(declare-fun tp!2327110 () Bool)

(assert (=> b!7856181 (= e!4643395 (and tp!2327109 tp!2327110))))

(declare-fun b!7856183 () Bool)

(declare-fun tp!2327107 () Bool)

(declare-fun tp!2327108 () Bool)

(assert (=> b!7856183 (= e!4643395 (and tp!2327107 tp!2327108))))

(assert (=> b!7855750 (= tp!2327092 e!4643395)))

(declare-fun b!7856180 () Bool)

(assert (=> b!7856180 (= e!4643395 tp_is_empty!52593)))

(declare-fun b!7856182 () Bool)

(declare-fun tp!2327111 () Bool)

(assert (=> b!7856182 (= e!4643395 tp!2327111)))

(assert (= (and b!7855750 ((_ is ElementMatch!21097) (regTwo!42707 (regOne!42707 r1!6227)))) b!7856180))

(assert (= (and b!7855750 ((_ is Concat!29942) (regTwo!42707 (regOne!42707 r1!6227)))) b!7856181))

(assert (= (and b!7855750 ((_ is Star!21097) (regTwo!42707 (regOne!42707 r1!6227)))) b!7856182))

(assert (= (and b!7855750 ((_ is Union!21097) (regTwo!42707 (regOne!42707 r1!6227)))) b!7856183))

(declare-fun b!7856185 () Bool)

(declare-fun e!4643396 () Bool)

(declare-fun tp!2327114 () Bool)

(declare-fun tp!2327115 () Bool)

(assert (=> b!7856185 (= e!4643396 (and tp!2327114 tp!2327115))))

(declare-fun b!7856187 () Bool)

(declare-fun tp!2327112 () Bool)

(declare-fun tp!2327113 () Bool)

(assert (=> b!7856187 (= e!4643396 (and tp!2327112 tp!2327113))))

(assert (=> b!7855727 (= tp!2327071 e!4643396)))

(declare-fun b!7856184 () Bool)

(assert (=> b!7856184 (= e!4643396 tp_is_empty!52593)))

(declare-fun b!7856186 () Bool)

(declare-fun tp!2327116 () Bool)

(assert (=> b!7856186 (= e!4643396 tp!2327116)))

(assert (= (and b!7855727 ((_ is ElementMatch!21097) (reg!21426 (regOne!42706 r1!6227)))) b!7856184))

(assert (= (and b!7855727 ((_ is Concat!29942) (reg!21426 (regOne!42706 r1!6227)))) b!7856185))

(assert (= (and b!7855727 ((_ is Star!21097) (reg!21426 (regOne!42706 r1!6227)))) b!7856186))

(assert (= (and b!7855727 ((_ is Union!21097) (reg!21426 (regOne!42706 r1!6227)))) b!7856187))

(declare-fun b!7856189 () Bool)

(declare-fun e!4643397 () Bool)

(declare-fun tp!2327119 () Bool)

(declare-fun tp!2327120 () Bool)

(assert (=> b!7856189 (= e!4643397 (and tp!2327119 tp!2327120))))

(declare-fun b!7856191 () Bool)

(declare-fun tp!2327117 () Bool)

(declare-fun tp!2327118 () Bool)

(assert (=> b!7856191 (= e!4643397 (and tp!2327117 tp!2327118))))

(assert (=> b!7855726 (= tp!2327069 e!4643397)))

(declare-fun b!7856188 () Bool)

(assert (=> b!7856188 (= e!4643397 tp_is_empty!52593)))

(declare-fun b!7856190 () Bool)

(declare-fun tp!2327121 () Bool)

(assert (=> b!7856190 (= e!4643397 tp!2327121)))

(assert (= (and b!7855726 ((_ is ElementMatch!21097) (regOne!42706 (regOne!42706 r1!6227)))) b!7856188))

(assert (= (and b!7855726 ((_ is Concat!29942) (regOne!42706 (regOne!42706 r1!6227)))) b!7856189))

(assert (= (and b!7855726 ((_ is Star!21097) (regOne!42706 (regOne!42706 r1!6227)))) b!7856190))

(assert (= (and b!7855726 ((_ is Union!21097) (regOne!42706 (regOne!42706 r1!6227)))) b!7856191))

(declare-fun b!7856195 () Bool)

(declare-fun e!4643398 () Bool)

(declare-fun tp!2327124 () Bool)

(declare-fun tp!2327125 () Bool)

(assert (=> b!7856195 (= e!4643398 (and tp!2327124 tp!2327125))))

(declare-fun b!7856197 () Bool)

(declare-fun tp!2327122 () Bool)

(declare-fun tp!2327123 () Bool)

(assert (=> b!7856197 (= e!4643398 (and tp!2327122 tp!2327123))))

(assert (=> b!7855726 (= tp!2327070 e!4643398)))

(declare-fun b!7856194 () Bool)

(assert (=> b!7856194 (= e!4643398 tp_is_empty!52593)))

(declare-fun b!7856196 () Bool)

(declare-fun tp!2327126 () Bool)

(assert (=> b!7856196 (= e!4643398 tp!2327126)))

(assert (= (and b!7855726 ((_ is ElementMatch!21097) (regTwo!42706 (regOne!42706 r1!6227)))) b!7856194))

(assert (= (and b!7855726 ((_ is Concat!29942) (regTwo!42706 (regOne!42706 r1!6227)))) b!7856195))

(assert (= (and b!7855726 ((_ is Star!21097) (regTwo!42706 (regOne!42706 r1!6227)))) b!7856196))

(assert (= (and b!7855726 ((_ is Union!21097) (regTwo!42706 (regOne!42706 r1!6227)))) b!7856197))

(declare-fun b!7856201 () Bool)

(declare-fun e!4643401 () Bool)

(declare-fun tp!2327129 () Bool)

(declare-fun tp!2327130 () Bool)

(assert (=> b!7856201 (= e!4643401 (and tp!2327129 tp!2327130))))

(declare-fun b!7856203 () Bool)

(declare-fun tp!2327127 () Bool)

(declare-fun tp!2327128 () Bool)

(assert (=> b!7856203 (= e!4643401 (and tp!2327127 tp!2327128))))

(assert (=> b!7855715 (= tp!2327056 e!4643401)))

(declare-fun b!7856200 () Bool)

(assert (=> b!7856200 (= e!4643401 tp_is_empty!52593)))

(declare-fun b!7856202 () Bool)

(declare-fun tp!2327131 () Bool)

(assert (=> b!7856202 (= e!4643401 tp!2327131)))

(assert (= (and b!7855715 ((_ is ElementMatch!21097) (reg!21426 (regTwo!42706 r2!6165)))) b!7856200))

(assert (= (and b!7855715 ((_ is Concat!29942) (reg!21426 (regTwo!42706 r2!6165)))) b!7856201))

(assert (= (and b!7855715 ((_ is Star!21097) (reg!21426 (regTwo!42706 r2!6165)))) b!7856202))

(assert (= (and b!7855715 ((_ is Union!21097) (reg!21426 (regTwo!42706 r2!6165)))) b!7856203))

(declare-fun b!7856205 () Bool)

(declare-fun e!4643402 () Bool)

(declare-fun tp!2327134 () Bool)

(declare-fun tp!2327135 () Bool)

(assert (=> b!7856205 (= e!4643402 (and tp!2327134 tp!2327135))))

(declare-fun b!7856207 () Bool)

(declare-fun tp!2327132 () Bool)

(declare-fun tp!2327133 () Bool)

(assert (=> b!7856207 (= e!4643402 (and tp!2327132 tp!2327133))))

(assert (=> b!7855724 (= tp!2327062 e!4643402)))

(declare-fun b!7856204 () Bool)

(assert (=> b!7856204 (= e!4643402 tp_is_empty!52593)))

(declare-fun b!7856206 () Bool)

(declare-fun tp!2327136 () Bool)

(assert (=> b!7856206 (= e!4643402 tp!2327136)))

(assert (= (and b!7855724 ((_ is ElementMatch!21097) (regOne!42707 (regTwo!42707 r2!6165)))) b!7856204))

(assert (= (and b!7855724 ((_ is Concat!29942) (regOne!42707 (regTwo!42707 r2!6165)))) b!7856205))

(assert (= (and b!7855724 ((_ is Star!21097) (regOne!42707 (regTwo!42707 r2!6165)))) b!7856206))

(assert (= (and b!7855724 ((_ is Union!21097) (regOne!42707 (regTwo!42707 r2!6165)))) b!7856207))

(declare-fun b!7856209 () Bool)

(declare-fun e!4643403 () Bool)

(declare-fun tp!2327139 () Bool)

(declare-fun tp!2327140 () Bool)

(assert (=> b!7856209 (= e!4643403 (and tp!2327139 tp!2327140))))

(declare-fun b!7856211 () Bool)

(declare-fun tp!2327137 () Bool)

(declare-fun tp!2327138 () Bool)

(assert (=> b!7856211 (= e!4643403 (and tp!2327137 tp!2327138))))

(assert (=> b!7855724 (= tp!2327063 e!4643403)))

(declare-fun b!7856208 () Bool)

(assert (=> b!7856208 (= e!4643403 tp_is_empty!52593)))

(declare-fun b!7856210 () Bool)

(declare-fun tp!2327141 () Bool)

(assert (=> b!7856210 (= e!4643403 tp!2327141)))

(assert (= (and b!7855724 ((_ is ElementMatch!21097) (regTwo!42707 (regTwo!42707 r2!6165)))) b!7856208))

(assert (= (and b!7855724 ((_ is Concat!29942) (regTwo!42707 (regTwo!42707 r2!6165)))) b!7856209))

(assert (= (and b!7855724 ((_ is Star!21097) (regTwo!42707 (regTwo!42707 r2!6165)))) b!7856210))

(assert (= (and b!7855724 ((_ is Union!21097) (regTwo!42707 (regTwo!42707 r2!6165)))) b!7856211))

(declare-fun b!7856213 () Bool)

(declare-fun e!4643404 () Bool)

(declare-fun tp!2327144 () Bool)

(declare-fun tp!2327145 () Bool)

(assert (=> b!7856213 (= e!4643404 (and tp!2327144 tp!2327145))))

(declare-fun b!7856215 () Bool)

(declare-fun tp!2327142 () Bool)

(declare-fun tp!2327143 () Bool)

(assert (=> b!7856215 (= e!4643404 (and tp!2327142 tp!2327143))))

(assert (=> b!7855739 (= tp!2327082 e!4643404)))

(declare-fun b!7856212 () Bool)

(assert (=> b!7856212 (= e!4643404 tp_is_empty!52593)))

(declare-fun b!7856214 () Bool)

(declare-fun tp!2327146 () Bool)

(assert (=> b!7856214 (= e!4643404 tp!2327146)))

(assert (= (and b!7855739 ((_ is ElementMatch!21097) (regOne!42706 (reg!21426 r1!6227)))) b!7856212))

(assert (= (and b!7855739 ((_ is Concat!29942) (regOne!42706 (reg!21426 r1!6227)))) b!7856213))

(assert (= (and b!7855739 ((_ is Star!21097) (regOne!42706 (reg!21426 r1!6227)))) b!7856214))

(assert (= (and b!7855739 ((_ is Union!21097) (regOne!42706 (reg!21426 r1!6227)))) b!7856215))

(declare-fun b!7856217 () Bool)

(declare-fun e!4643405 () Bool)

(declare-fun tp!2327149 () Bool)

(declare-fun tp!2327150 () Bool)

(assert (=> b!7856217 (= e!4643405 (and tp!2327149 tp!2327150))))

(declare-fun b!7856219 () Bool)

(declare-fun tp!2327147 () Bool)

(declare-fun tp!2327148 () Bool)

(assert (=> b!7856219 (= e!4643405 (and tp!2327147 tp!2327148))))

(assert (=> b!7855739 (= tp!2327083 e!4643405)))

(declare-fun b!7856216 () Bool)

(assert (=> b!7856216 (= e!4643405 tp_is_empty!52593)))

(declare-fun b!7856218 () Bool)

(declare-fun tp!2327151 () Bool)

(assert (=> b!7856218 (= e!4643405 tp!2327151)))

(assert (= (and b!7855739 ((_ is ElementMatch!21097) (regTwo!42706 (reg!21426 r1!6227)))) b!7856216))

(assert (= (and b!7855739 ((_ is Concat!29942) (regTwo!42706 (reg!21426 r1!6227)))) b!7856217))

(assert (= (and b!7855739 ((_ is Star!21097) (regTwo!42706 (reg!21426 r1!6227)))) b!7856218))

(assert (= (and b!7855739 ((_ is Union!21097) (regTwo!42706 (reg!21426 r1!6227)))) b!7856219))

(declare-fun b!7856221 () Bool)

(declare-fun e!4643406 () Bool)

(declare-fun tp!2327154 () Bool)

(declare-fun tp!2327155 () Bool)

(assert (=> b!7856221 (= e!4643406 (and tp!2327154 tp!2327155))))

(declare-fun b!7856223 () Bool)

(declare-fun tp!2327152 () Bool)

(declare-fun tp!2327153 () Bool)

(assert (=> b!7856223 (= e!4643406 (and tp!2327152 tp!2327153))))

(assert (=> b!7855714 (= tp!2327054 e!4643406)))

(declare-fun b!7856220 () Bool)

(assert (=> b!7856220 (= e!4643406 tp_is_empty!52593)))

(declare-fun b!7856222 () Bool)

(declare-fun tp!2327156 () Bool)

(assert (=> b!7856222 (= e!4643406 tp!2327156)))

(assert (= (and b!7855714 ((_ is ElementMatch!21097) (regOne!42706 (regTwo!42706 r2!6165)))) b!7856220))

(assert (= (and b!7855714 ((_ is Concat!29942) (regOne!42706 (regTwo!42706 r2!6165)))) b!7856221))

(assert (= (and b!7855714 ((_ is Star!21097) (regOne!42706 (regTwo!42706 r2!6165)))) b!7856222))

(assert (= (and b!7855714 ((_ is Union!21097) (regOne!42706 (regTwo!42706 r2!6165)))) b!7856223))

(declare-fun b!7856225 () Bool)

(declare-fun e!4643407 () Bool)

(declare-fun tp!2327159 () Bool)

(declare-fun tp!2327160 () Bool)

(assert (=> b!7856225 (= e!4643407 (and tp!2327159 tp!2327160))))

(declare-fun b!7856227 () Bool)

(declare-fun tp!2327157 () Bool)

(declare-fun tp!2327158 () Bool)

(assert (=> b!7856227 (= e!4643407 (and tp!2327157 tp!2327158))))

(assert (=> b!7855714 (= tp!2327055 e!4643407)))

(declare-fun b!7856224 () Bool)

(assert (=> b!7856224 (= e!4643407 tp_is_empty!52593)))

(declare-fun b!7856226 () Bool)

(declare-fun tp!2327161 () Bool)

(assert (=> b!7856226 (= e!4643407 tp!2327161)))

(assert (= (and b!7855714 ((_ is ElementMatch!21097) (regTwo!42706 (regTwo!42706 r2!6165)))) b!7856224))

(assert (= (and b!7855714 ((_ is Concat!29942) (regTwo!42706 (regTwo!42706 r2!6165)))) b!7856225))

(assert (= (and b!7855714 ((_ is Star!21097) (regTwo!42706 (regTwo!42706 r2!6165)))) b!7856226))

(assert (= (and b!7855714 ((_ is Union!21097) (regTwo!42706 (regTwo!42706 r2!6165)))) b!7856227))

(declare-fun b!7856229 () Bool)

(declare-fun e!4643408 () Bool)

(declare-fun tp!2327164 () Bool)

(declare-fun tp!2327165 () Bool)

(assert (=> b!7856229 (= e!4643408 (and tp!2327164 tp!2327165))))

(declare-fun b!7856231 () Bool)

(declare-fun tp!2327162 () Bool)

(declare-fun tp!2327163 () Bool)

(assert (=> b!7856231 (= e!4643408 (and tp!2327162 tp!2327163))))

(assert (=> b!7855723 (= tp!2327066 e!4643408)))

(declare-fun b!7856228 () Bool)

(assert (=> b!7856228 (= e!4643408 tp_is_empty!52593)))

(declare-fun b!7856230 () Bool)

(declare-fun tp!2327166 () Bool)

(assert (=> b!7856230 (= e!4643408 tp!2327166)))

(assert (= (and b!7855723 ((_ is ElementMatch!21097) (reg!21426 (regTwo!42707 r2!6165)))) b!7856228))

(assert (= (and b!7855723 ((_ is Concat!29942) (reg!21426 (regTwo!42707 r2!6165)))) b!7856229))

(assert (= (and b!7855723 ((_ is Star!21097) (reg!21426 (regTwo!42707 r2!6165)))) b!7856230))

(assert (= (and b!7855723 ((_ is Union!21097) (reg!21426 (regTwo!42707 r2!6165)))) b!7856231))

(declare-fun b!7856233 () Bool)

(declare-fun e!4643409 () Bool)

(declare-fun tp!2327169 () Bool)

(declare-fun tp!2327170 () Bool)

(assert (=> b!7856233 (= e!4643409 (and tp!2327169 tp!2327170))))

(declare-fun b!7856235 () Bool)

(declare-fun tp!2327167 () Bool)

(declare-fun tp!2327168 () Bool)

(assert (=> b!7856235 (= e!4643409 (and tp!2327167 tp!2327168))))

(assert (=> b!7855732 (= tp!2327072 e!4643409)))

(declare-fun b!7856232 () Bool)

(assert (=> b!7856232 (= e!4643409 tp_is_empty!52593)))

(declare-fun b!7856234 () Bool)

(declare-fun tp!2327171 () Bool)

(assert (=> b!7856234 (= e!4643409 tp!2327171)))

(assert (= (and b!7855732 ((_ is ElementMatch!21097) (regOne!42707 (regTwo!42706 r1!6227)))) b!7856232))

(assert (= (and b!7855732 ((_ is Concat!29942) (regOne!42707 (regTwo!42706 r1!6227)))) b!7856233))

(assert (= (and b!7855732 ((_ is Star!21097) (regOne!42707 (regTwo!42706 r1!6227)))) b!7856234))

(assert (= (and b!7855732 ((_ is Union!21097) (regOne!42707 (regTwo!42706 r1!6227)))) b!7856235))

(declare-fun b!7856239 () Bool)

(declare-fun e!4643411 () Bool)

(declare-fun tp!2327174 () Bool)

(declare-fun tp!2327175 () Bool)

(assert (=> b!7856239 (= e!4643411 (and tp!2327174 tp!2327175))))

(declare-fun b!7856241 () Bool)

(declare-fun tp!2327172 () Bool)

(declare-fun tp!2327173 () Bool)

(assert (=> b!7856241 (= e!4643411 (and tp!2327172 tp!2327173))))

(assert (=> b!7855732 (= tp!2327073 e!4643411)))

(declare-fun b!7856238 () Bool)

(assert (=> b!7856238 (= e!4643411 tp_is_empty!52593)))

(declare-fun b!7856240 () Bool)

(declare-fun tp!2327176 () Bool)

(assert (=> b!7856240 (= e!4643411 tp!2327176)))

(assert (= (and b!7855732 ((_ is ElementMatch!21097) (regTwo!42707 (regTwo!42706 r1!6227)))) b!7856238))

(assert (= (and b!7855732 ((_ is Concat!29942) (regTwo!42707 (regTwo!42706 r1!6227)))) b!7856239))

(assert (= (and b!7855732 ((_ is Star!21097) (regTwo!42707 (regTwo!42706 r1!6227)))) b!7856240))

(assert (= (and b!7855732 ((_ is Union!21097) (regTwo!42707 (regTwo!42706 r1!6227)))) b!7856241))

(declare-fun b!7856243 () Bool)

(declare-fun e!4643412 () Bool)

(declare-fun tp!2327179 () Bool)

(declare-fun tp!2327180 () Bool)

(assert (=> b!7856243 (= e!4643412 (and tp!2327179 tp!2327180))))

(declare-fun b!7856245 () Bool)

(declare-fun tp!2327177 () Bool)

(declare-fun tp!2327178 () Bool)

(assert (=> b!7856245 (= e!4643412 (and tp!2327177 tp!2327178))))

(assert (=> b!7855749 (= tp!2327095 e!4643412)))

(declare-fun b!7856242 () Bool)

(assert (=> b!7856242 (= e!4643412 tp_is_empty!52593)))

(declare-fun b!7856244 () Bool)

(declare-fun tp!2327181 () Bool)

(assert (=> b!7856244 (= e!4643412 tp!2327181)))

(assert (= (and b!7855749 ((_ is ElementMatch!21097) (reg!21426 (regOne!42707 r1!6227)))) b!7856242))

(assert (= (and b!7855749 ((_ is Concat!29942) (reg!21426 (regOne!42707 r1!6227)))) b!7856243))

(assert (= (and b!7855749 ((_ is Star!21097) (reg!21426 (regOne!42707 r1!6227)))) b!7856244))

(assert (= (and b!7855749 ((_ is Union!21097) (reg!21426 (regOne!42707 r1!6227)))) b!7856245))

(declare-fun b!7856247 () Bool)

(declare-fun e!4643413 () Bool)

(declare-fun tp!2327184 () Bool)

(declare-fun tp!2327185 () Bool)

(assert (=> b!7856247 (= e!4643413 (and tp!2327184 tp!2327185))))

(declare-fun b!7856250 () Bool)

(declare-fun tp!2327182 () Bool)

(declare-fun tp!2327183 () Bool)

(assert (=> b!7856250 (= e!4643413 (and tp!2327182 tp!2327183))))

(assert (=> b!7855748 (= tp!2327093 e!4643413)))

(declare-fun b!7856246 () Bool)

(assert (=> b!7856246 (= e!4643413 tp_is_empty!52593)))

(declare-fun b!7856248 () Bool)

(declare-fun tp!2327186 () Bool)

(assert (=> b!7856248 (= e!4643413 tp!2327186)))

(assert (= (and b!7855748 ((_ is ElementMatch!21097) (regOne!42706 (regOne!42707 r1!6227)))) b!7856246))

(assert (= (and b!7855748 ((_ is Concat!29942) (regOne!42706 (regOne!42707 r1!6227)))) b!7856247))

(assert (= (and b!7855748 ((_ is Star!21097) (regOne!42706 (regOne!42707 r1!6227)))) b!7856248))

(assert (= (and b!7855748 ((_ is Union!21097) (regOne!42706 (regOne!42707 r1!6227)))) b!7856250))

(declare-fun b!7856253 () Bool)

(declare-fun e!4643415 () Bool)

(declare-fun tp!2327189 () Bool)

(declare-fun tp!2327190 () Bool)

(assert (=> b!7856253 (= e!4643415 (and tp!2327189 tp!2327190))))

(declare-fun b!7856255 () Bool)

(declare-fun tp!2327187 () Bool)

(declare-fun tp!2327188 () Bool)

(assert (=> b!7856255 (= e!4643415 (and tp!2327187 tp!2327188))))

(assert (=> b!7855748 (= tp!2327094 e!4643415)))

(declare-fun b!7856252 () Bool)

(assert (=> b!7856252 (= e!4643415 tp_is_empty!52593)))

(declare-fun b!7856254 () Bool)

(declare-fun tp!2327191 () Bool)

(assert (=> b!7856254 (= e!4643415 tp!2327191)))

(assert (= (and b!7855748 ((_ is ElementMatch!21097) (regTwo!42706 (regOne!42707 r1!6227)))) b!7856252))

(assert (= (and b!7855748 ((_ is Concat!29942) (regTwo!42706 (regOne!42707 r1!6227)))) b!7856253))

(assert (= (and b!7855748 ((_ is Star!21097) (regTwo!42706 (regOne!42707 r1!6227)))) b!7856254))

(assert (= (and b!7855748 ((_ is Union!21097) (regTwo!42706 (regOne!42707 r1!6227)))) b!7856255))

(declare-fun b!7856259 () Bool)

(declare-fun e!4643417 () Bool)

(declare-fun tp!2327194 () Bool)

(declare-fun tp!2327195 () Bool)

(assert (=> b!7856259 (= e!4643417 (and tp!2327194 tp!2327195))))

(declare-fun b!7856261 () Bool)

(declare-fun tp!2327192 () Bool)

(declare-fun tp!2327193 () Bool)

(assert (=> b!7856261 (= e!4643417 (and tp!2327192 tp!2327193))))

(assert (=> b!7855741 (= tp!2327080 e!4643417)))

(declare-fun b!7856258 () Bool)

(assert (=> b!7856258 (= e!4643417 tp_is_empty!52593)))

(declare-fun b!7856260 () Bool)

(declare-fun tp!2327196 () Bool)

(assert (=> b!7856260 (= e!4643417 tp!2327196)))

(assert (= (and b!7855741 ((_ is ElementMatch!21097) (regOne!42707 (reg!21426 r1!6227)))) b!7856258))

(assert (= (and b!7855741 ((_ is Concat!29942) (regOne!42707 (reg!21426 r1!6227)))) b!7856259))

(assert (= (and b!7855741 ((_ is Star!21097) (regOne!42707 (reg!21426 r1!6227)))) b!7856260))

(assert (= (and b!7855741 ((_ is Union!21097) (regOne!42707 (reg!21426 r1!6227)))) b!7856261))

(declare-fun b!7856263 () Bool)

(declare-fun e!4643418 () Bool)

(declare-fun tp!2327199 () Bool)

(declare-fun tp!2327200 () Bool)

(assert (=> b!7856263 (= e!4643418 (and tp!2327199 tp!2327200))))

(declare-fun b!7856265 () Bool)

(declare-fun tp!2327197 () Bool)

(declare-fun tp!2327198 () Bool)

(assert (=> b!7856265 (= e!4643418 (and tp!2327197 tp!2327198))))

(assert (=> b!7855741 (= tp!2327081 e!4643418)))

(declare-fun b!7856262 () Bool)

(assert (=> b!7856262 (= e!4643418 tp_is_empty!52593)))

(declare-fun b!7856264 () Bool)

(declare-fun tp!2327201 () Bool)

(assert (=> b!7856264 (= e!4643418 tp!2327201)))

(assert (= (and b!7855741 ((_ is ElementMatch!21097) (regTwo!42707 (reg!21426 r1!6227)))) b!7856262))

(assert (= (and b!7855741 ((_ is Concat!29942) (regTwo!42707 (reg!21426 r1!6227)))) b!7856263))

(assert (= (and b!7855741 ((_ is Star!21097) (regTwo!42707 (reg!21426 r1!6227)))) b!7856264))

(assert (= (and b!7855741 ((_ is Union!21097) (regTwo!42707 (reg!21426 r1!6227)))) b!7856265))

(declare-fun b!7856267 () Bool)

(declare-fun e!4643421 () Bool)

(declare-fun tp!2327204 () Bool)

(declare-fun tp!2327205 () Bool)

(assert (=> b!7856267 (= e!4643421 (and tp!2327204 tp!2327205))))

(declare-fun b!7856269 () Bool)

(declare-fun tp!2327202 () Bool)

(declare-fun tp!2327203 () Bool)

(assert (=> b!7856269 (= e!4643421 (and tp!2327202 tp!2327203))))

(assert (=> b!7855740 (= tp!2327084 e!4643421)))

(declare-fun b!7856266 () Bool)

(assert (=> b!7856266 (= e!4643421 tp_is_empty!52593)))

(declare-fun b!7856268 () Bool)

(declare-fun tp!2327206 () Bool)

(assert (=> b!7856268 (= e!4643421 tp!2327206)))

(assert (= (and b!7855740 ((_ is ElementMatch!21097) (reg!21426 (reg!21426 r1!6227)))) b!7856266))

(assert (= (and b!7855740 ((_ is Concat!29942) (reg!21426 (reg!21426 r1!6227)))) b!7856267))

(assert (= (and b!7855740 ((_ is Star!21097) (reg!21426 (reg!21426 r1!6227)))) b!7856268))

(assert (= (and b!7855740 ((_ is Union!21097) (reg!21426 (reg!21426 r1!6227)))) b!7856269))

(declare-fun b!7856281 () Bool)

(declare-fun e!4643425 () Bool)

(declare-fun tp!2327209 () Bool)

(declare-fun tp!2327210 () Bool)

(assert (=> b!7856281 (= e!4643425 (and tp!2327209 tp!2327210))))

(declare-fun b!7856283 () Bool)

(declare-fun tp!2327207 () Bool)

(declare-fun tp!2327208 () Bool)

(assert (=> b!7856283 (= e!4643425 (and tp!2327207 tp!2327208))))

(assert (=> b!7855716 (= tp!2327052 e!4643425)))

(declare-fun b!7856280 () Bool)

(assert (=> b!7856280 (= e!4643425 tp_is_empty!52593)))

(declare-fun b!7856282 () Bool)

(declare-fun tp!2327211 () Bool)

(assert (=> b!7856282 (= e!4643425 tp!2327211)))

(assert (= (and b!7855716 ((_ is ElementMatch!21097) (regOne!42707 (regTwo!42706 r2!6165)))) b!7856280))

(assert (= (and b!7855716 ((_ is Concat!29942) (regOne!42707 (regTwo!42706 r2!6165)))) b!7856281))

(assert (= (and b!7855716 ((_ is Star!21097) (regOne!42707 (regTwo!42706 r2!6165)))) b!7856282))

(assert (= (and b!7855716 ((_ is Union!21097) (regOne!42707 (regTwo!42706 r2!6165)))) b!7856283))

(declare-fun b!7856285 () Bool)

(declare-fun e!4643426 () Bool)

(declare-fun tp!2327214 () Bool)

(declare-fun tp!2327215 () Bool)

(assert (=> b!7856285 (= e!4643426 (and tp!2327214 tp!2327215))))

(declare-fun b!7856287 () Bool)

(declare-fun tp!2327212 () Bool)

(declare-fun tp!2327213 () Bool)

(assert (=> b!7856287 (= e!4643426 (and tp!2327212 tp!2327213))))

(assert (=> b!7855716 (= tp!2327053 e!4643426)))

(declare-fun b!7856284 () Bool)

(assert (=> b!7856284 (= e!4643426 tp_is_empty!52593)))

(declare-fun b!7856286 () Bool)

(declare-fun tp!2327216 () Bool)

(assert (=> b!7856286 (= e!4643426 tp!2327216)))

(assert (= (and b!7855716 ((_ is ElementMatch!21097) (regTwo!42707 (regTwo!42706 r2!6165)))) b!7856284))

(assert (= (and b!7855716 ((_ is Concat!29942) (regTwo!42707 (regTwo!42706 r2!6165)))) b!7856285))

(assert (= (and b!7855716 ((_ is Star!21097) (regTwo!42707 (regTwo!42706 r2!6165)))) b!7856286))

(assert (= (and b!7855716 ((_ is Union!21097) (regTwo!42707 (regTwo!42706 r2!6165)))) b!7856287))

(declare-fun b!7856289 () Bool)

(declare-fun e!4643427 () Bool)

(declare-fun tp!2327219 () Bool)

(declare-fun tp!2327220 () Bool)

(assert (=> b!7856289 (= e!4643427 (and tp!2327219 tp!2327220))))

(declare-fun b!7856291 () Bool)

(declare-fun tp!2327217 () Bool)

(declare-fun tp!2327218 () Bool)

(assert (=> b!7856291 (= e!4643427 (and tp!2327217 tp!2327218))))

(assert (=> b!7855746 (= tp!2327086 e!4643427)))

(declare-fun b!7856288 () Bool)

(assert (=> b!7856288 (= e!4643427 tp_is_empty!52593)))

(declare-fun b!7856290 () Bool)

(declare-fun tp!2327221 () Bool)

(assert (=> b!7856290 (= e!4643427 tp!2327221)))

(assert (= (and b!7855746 ((_ is ElementMatch!21097) (regOne!42707 (reg!21426 r2!6165)))) b!7856288))

(assert (= (and b!7855746 ((_ is Concat!29942) (regOne!42707 (reg!21426 r2!6165)))) b!7856289))

(assert (= (and b!7855746 ((_ is Star!21097) (regOne!42707 (reg!21426 r2!6165)))) b!7856290))

(assert (= (and b!7855746 ((_ is Union!21097) (regOne!42707 (reg!21426 r2!6165)))) b!7856291))

(declare-fun b!7856293 () Bool)

(declare-fun e!4643428 () Bool)

(declare-fun tp!2327224 () Bool)

(declare-fun tp!2327225 () Bool)

(assert (=> b!7856293 (= e!4643428 (and tp!2327224 tp!2327225))))

(declare-fun b!7856295 () Bool)

(declare-fun tp!2327222 () Bool)

(declare-fun tp!2327223 () Bool)

(assert (=> b!7856295 (= e!4643428 (and tp!2327222 tp!2327223))))

(assert (=> b!7855746 (= tp!2327087 e!4643428)))

(declare-fun b!7856292 () Bool)

(assert (=> b!7856292 (= e!4643428 tp_is_empty!52593)))

(declare-fun b!7856294 () Bool)

(declare-fun tp!2327226 () Bool)

(assert (=> b!7856294 (= e!4643428 tp!2327226)))

(assert (= (and b!7855746 ((_ is ElementMatch!21097) (regTwo!42707 (reg!21426 r2!6165)))) b!7856292))

(assert (= (and b!7855746 ((_ is Concat!29942) (regTwo!42707 (reg!21426 r2!6165)))) b!7856293))

(assert (= (and b!7855746 ((_ is Star!21097) (regTwo!42707 (reg!21426 r2!6165)))) b!7856294))

(assert (= (and b!7855746 ((_ is Union!21097) (regTwo!42707 (reg!21426 r2!6165)))) b!7856295))

(declare-fun b!7856297 () Bool)

(declare-fun e!4643429 () Bool)

(declare-fun tp!2327229 () Bool)

(declare-fun tp!2327230 () Bool)

(assert (=> b!7856297 (= e!4643429 (and tp!2327229 tp!2327230))))

(declare-fun b!7856299 () Bool)

(declare-fun tp!2327227 () Bool)

(declare-fun tp!2327228 () Bool)

(assert (=> b!7856299 (= e!4643429 (and tp!2327227 tp!2327228))))

(assert (=> b!7855722 (= tp!2327064 e!4643429)))

(declare-fun b!7856296 () Bool)

(assert (=> b!7856296 (= e!4643429 tp_is_empty!52593)))

(declare-fun b!7856298 () Bool)

(declare-fun tp!2327231 () Bool)

(assert (=> b!7856298 (= e!4643429 tp!2327231)))

(assert (= (and b!7855722 ((_ is ElementMatch!21097) (regOne!42706 (regTwo!42707 r2!6165)))) b!7856296))

(assert (= (and b!7855722 ((_ is Concat!29942) (regOne!42706 (regTwo!42707 r2!6165)))) b!7856297))

(assert (= (and b!7855722 ((_ is Star!21097) (regOne!42706 (regTwo!42707 r2!6165)))) b!7856298))

(assert (= (and b!7855722 ((_ is Union!21097) (regOne!42706 (regTwo!42707 r2!6165)))) b!7856299))

(declare-fun b!7856301 () Bool)

(declare-fun e!4643430 () Bool)

(declare-fun tp!2327234 () Bool)

(declare-fun tp!2327235 () Bool)

(assert (=> b!7856301 (= e!4643430 (and tp!2327234 tp!2327235))))

(declare-fun b!7856303 () Bool)

(declare-fun tp!2327232 () Bool)

(declare-fun tp!2327233 () Bool)

(assert (=> b!7856303 (= e!4643430 (and tp!2327232 tp!2327233))))

(assert (=> b!7855722 (= tp!2327065 e!4643430)))

(declare-fun b!7856300 () Bool)

(assert (=> b!7856300 (= e!4643430 tp_is_empty!52593)))

(declare-fun b!7856302 () Bool)

(declare-fun tp!2327236 () Bool)

(assert (=> b!7856302 (= e!4643430 tp!2327236)))

(assert (= (and b!7855722 ((_ is ElementMatch!21097) (regTwo!42706 (regTwo!42707 r2!6165)))) b!7856300))

(assert (= (and b!7855722 ((_ is Concat!29942) (regTwo!42706 (regTwo!42707 r2!6165)))) b!7856301))

(assert (= (and b!7855722 ((_ is Star!21097) (regTwo!42706 (regTwo!42707 r2!6165)))) b!7856302))

(assert (= (and b!7855722 ((_ is Union!21097) (regTwo!42706 (regTwo!42707 r2!6165)))) b!7856303))

(declare-fun b!7856305 () Bool)

(declare-fun e!4643431 () Bool)

(declare-fun tp!2327239 () Bool)

(declare-fun tp!2327240 () Bool)

(assert (=> b!7856305 (= e!4643431 (and tp!2327239 tp!2327240))))

(declare-fun b!7856307 () Bool)

(declare-fun tp!2327237 () Bool)

(declare-fun tp!2327238 () Bool)

(assert (=> b!7856307 (= e!4643431 (and tp!2327237 tp!2327238))))

(assert (=> b!7855731 (= tp!2327076 e!4643431)))

(declare-fun b!7856304 () Bool)

(assert (=> b!7856304 (= e!4643431 tp_is_empty!52593)))

(declare-fun b!7856306 () Bool)

(declare-fun tp!2327241 () Bool)

(assert (=> b!7856306 (= e!4643431 tp!2327241)))

(assert (= (and b!7855731 ((_ is ElementMatch!21097) (reg!21426 (regTwo!42706 r1!6227)))) b!7856304))

(assert (= (and b!7855731 ((_ is Concat!29942) (reg!21426 (regTwo!42706 r1!6227)))) b!7856305))

(assert (= (and b!7855731 ((_ is Star!21097) (reg!21426 (regTwo!42706 r1!6227)))) b!7856306))

(assert (= (and b!7855731 ((_ is Union!21097) (reg!21426 (regTwo!42706 r1!6227)))) b!7856307))

(declare-fun b!7856309 () Bool)

(declare-fun e!4643432 () Bool)

(declare-fun tp!2327244 () Bool)

(declare-fun tp!2327245 () Bool)

(assert (=> b!7856309 (= e!4643432 (and tp!2327244 tp!2327245))))

(declare-fun b!7856311 () Bool)

(declare-fun tp!2327242 () Bool)

(declare-fun tp!2327243 () Bool)

(assert (=> b!7856311 (= e!4643432 (and tp!2327242 tp!2327243))))

(assert (=> b!7855730 (= tp!2327074 e!4643432)))

(declare-fun b!7856308 () Bool)

(assert (=> b!7856308 (= e!4643432 tp_is_empty!52593)))

(declare-fun b!7856310 () Bool)

(declare-fun tp!2327246 () Bool)

(assert (=> b!7856310 (= e!4643432 tp!2327246)))

(assert (= (and b!7855730 ((_ is ElementMatch!21097) (regOne!42706 (regTwo!42706 r1!6227)))) b!7856308))

(assert (= (and b!7855730 ((_ is Concat!29942) (regOne!42706 (regTwo!42706 r1!6227)))) b!7856309))

(assert (= (and b!7855730 ((_ is Star!21097) (regOne!42706 (regTwo!42706 r1!6227)))) b!7856310))

(assert (= (and b!7855730 ((_ is Union!21097) (regOne!42706 (regTwo!42706 r1!6227)))) b!7856311))

(declare-fun b!7856313 () Bool)

(declare-fun e!4643433 () Bool)

(declare-fun tp!2327249 () Bool)

(declare-fun tp!2327250 () Bool)

(assert (=> b!7856313 (= e!4643433 (and tp!2327249 tp!2327250))))

(declare-fun b!7856315 () Bool)

(declare-fun tp!2327247 () Bool)

(declare-fun tp!2327248 () Bool)

(assert (=> b!7856315 (= e!4643433 (and tp!2327247 tp!2327248))))

(assert (=> b!7855730 (= tp!2327075 e!4643433)))

(declare-fun b!7856312 () Bool)

(assert (=> b!7856312 (= e!4643433 tp_is_empty!52593)))

(declare-fun b!7856314 () Bool)

(declare-fun tp!2327251 () Bool)

(assert (=> b!7856314 (= e!4643433 tp!2327251)))

(assert (= (and b!7855730 ((_ is ElementMatch!21097) (regTwo!42706 (regTwo!42706 r1!6227)))) b!7856312))

(assert (= (and b!7855730 ((_ is Concat!29942) (regTwo!42706 (regTwo!42706 r1!6227)))) b!7856313))

(assert (= (and b!7855730 ((_ is Star!21097) (regTwo!42706 (regTwo!42706 r1!6227)))) b!7856314))

(assert (= (and b!7855730 ((_ is Union!21097) (regTwo!42706 (regTwo!42706 r1!6227)))) b!7856315))

(declare-fun b!7856317 () Bool)

(declare-fun e!4643434 () Bool)

(declare-fun tp!2327254 () Bool)

(declare-fun tp!2327255 () Bool)

(assert (=> b!7856317 (= e!4643434 (and tp!2327254 tp!2327255))))

(declare-fun b!7856319 () Bool)

(declare-fun tp!2327252 () Bool)

(declare-fun tp!2327253 () Bool)

(assert (=> b!7856319 (= e!4643434 (and tp!2327252 tp!2327253))))

(assert (=> b!7855711 (= tp!2327051 e!4643434)))

(declare-fun b!7856316 () Bool)

(assert (=> b!7856316 (= e!4643434 tp_is_empty!52593)))

(declare-fun b!7856318 () Bool)

(declare-fun tp!2327256 () Bool)

(assert (=> b!7856318 (= e!4643434 tp!2327256)))

(assert (= (and b!7855711 ((_ is ElementMatch!21097) (reg!21426 (regOne!42706 r2!6165)))) b!7856316))

(assert (= (and b!7855711 ((_ is Concat!29942) (reg!21426 (regOne!42706 r2!6165)))) b!7856317))

(assert (= (and b!7855711 ((_ is Star!21097) (reg!21426 (regOne!42706 r2!6165)))) b!7856318))

(assert (= (and b!7855711 ((_ is Union!21097) (reg!21426 (regOne!42706 r2!6165)))) b!7856319))

(declare-fun b!7856321 () Bool)

(declare-fun e!4643435 () Bool)

(declare-fun tp!2327259 () Bool)

(declare-fun tp!2327260 () Bool)

(assert (=> b!7856321 (= e!4643435 (and tp!2327259 tp!2327260))))

(declare-fun b!7856323 () Bool)

(declare-fun tp!2327257 () Bool)

(declare-fun tp!2327258 () Bool)

(assert (=> b!7856323 (= e!4643435 (and tp!2327257 tp!2327258))))

(assert (=> b!7855720 (= tp!2327057 e!4643435)))

(declare-fun b!7856320 () Bool)

(assert (=> b!7856320 (= e!4643435 tp_is_empty!52593)))

(declare-fun b!7856322 () Bool)

(declare-fun tp!2327261 () Bool)

(assert (=> b!7856322 (= e!4643435 tp!2327261)))

(assert (= (and b!7855720 ((_ is ElementMatch!21097) (regOne!42707 (regOne!42707 r2!6165)))) b!7856320))

(assert (= (and b!7855720 ((_ is Concat!29942) (regOne!42707 (regOne!42707 r2!6165)))) b!7856321))

(assert (= (and b!7855720 ((_ is Star!21097) (regOne!42707 (regOne!42707 r2!6165)))) b!7856322))

(assert (= (and b!7855720 ((_ is Union!21097) (regOne!42707 (regOne!42707 r2!6165)))) b!7856323))

(declare-fun b!7856325 () Bool)

(declare-fun e!4643436 () Bool)

(declare-fun tp!2327264 () Bool)

(declare-fun tp!2327265 () Bool)

(assert (=> b!7856325 (= e!4643436 (and tp!2327264 tp!2327265))))

(declare-fun b!7856327 () Bool)

(declare-fun tp!2327262 () Bool)

(declare-fun tp!2327263 () Bool)

(assert (=> b!7856327 (= e!4643436 (and tp!2327262 tp!2327263))))

(assert (=> b!7855720 (= tp!2327058 e!4643436)))

(declare-fun b!7856324 () Bool)

(assert (=> b!7856324 (= e!4643436 tp_is_empty!52593)))

(declare-fun b!7856326 () Bool)

(declare-fun tp!2327266 () Bool)

(assert (=> b!7856326 (= e!4643436 tp!2327266)))

(assert (= (and b!7855720 ((_ is ElementMatch!21097) (regTwo!42707 (regOne!42707 r2!6165)))) b!7856324))

(assert (= (and b!7855720 ((_ is Concat!29942) (regTwo!42707 (regOne!42707 r2!6165)))) b!7856325))

(assert (= (and b!7855720 ((_ is Star!21097) (regTwo!42707 (regOne!42707 r2!6165)))) b!7856326))

(assert (= (and b!7855720 ((_ is Union!21097) (regTwo!42707 (regOne!42707 r2!6165)))) b!7856327))

(declare-fun b!7856339 () Bool)

(declare-fun e!4643442 () Bool)

(declare-fun tp!2327269 () Bool)

(declare-fun tp!2327270 () Bool)

(assert (=> b!7856339 (= e!4643442 (and tp!2327269 tp!2327270))))

(declare-fun b!7856341 () Bool)

(declare-fun tp!2327267 () Bool)

(declare-fun tp!2327268 () Bool)

(assert (=> b!7856341 (= e!4643442 (and tp!2327267 tp!2327268))))

(assert (=> b!7855710 (= tp!2327049 e!4643442)))

(declare-fun b!7856338 () Bool)

(assert (=> b!7856338 (= e!4643442 tp_is_empty!52593)))

(declare-fun b!7856340 () Bool)

(declare-fun tp!2327271 () Bool)

(assert (=> b!7856340 (= e!4643442 tp!2327271)))

(assert (= (and b!7855710 ((_ is ElementMatch!21097) (regOne!42706 (regOne!42706 r2!6165)))) b!7856338))

(assert (= (and b!7855710 ((_ is Concat!29942) (regOne!42706 (regOne!42706 r2!6165)))) b!7856339))

(assert (= (and b!7855710 ((_ is Star!21097) (regOne!42706 (regOne!42706 r2!6165)))) b!7856340))

(assert (= (and b!7855710 ((_ is Union!21097) (regOne!42706 (regOne!42706 r2!6165)))) b!7856341))

(declare-fun b!7856343 () Bool)

(declare-fun e!4643443 () Bool)

(declare-fun tp!2327274 () Bool)

(declare-fun tp!2327275 () Bool)

(assert (=> b!7856343 (= e!4643443 (and tp!2327274 tp!2327275))))

(declare-fun b!7856345 () Bool)

(declare-fun tp!2327272 () Bool)

(declare-fun tp!2327273 () Bool)

(assert (=> b!7856345 (= e!4643443 (and tp!2327272 tp!2327273))))

(assert (=> b!7855710 (= tp!2327050 e!4643443)))

(declare-fun b!7856342 () Bool)

(assert (=> b!7856342 (= e!4643443 tp_is_empty!52593)))

(declare-fun b!7856344 () Bool)

(declare-fun tp!2327276 () Bool)

(assert (=> b!7856344 (= e!4643443 tp!2327276)))

(assert (= (and b!7855710 ((_ is ElementMatch!21097) (regTwo!42706 (regOne!42706 r2!6165)))) b!7856342))

(assert (= (and b!7855710 ((_ is Concat!29942) (regTwo!42706 (regOne!42706 r2!6165)))) b!7856343))

(assert (= (and b!7855710 ((_ is Star!21097) (regTwo!42706 (regOne!42706 r2!6165)))) b!7856344))

(assert (= (and b!7855710 ((_ is Union!21097) (regTwo!42706 (regOne!42706 r2!6165)))) b!7856345))

(declare-fun b!7856347 () Bool)

(declare-fun e!4643444 () Bool)

(declare-fun tp!2327279 () Bool)

(declare-fun tp!2327280 () Bool)

(assert (=> b!7856347 (= e!4643444 (and tp!2327279 tp!2327280))))

(declare-fun b!7856349 () Bool)

(declare-fun tp!2327277 () Bool)

(declare-fun tp!2327278 () Bool)

(assert (=> b!7856349 (= e!4643444 (and tp!2327277 tp!2327278))))

(assert (=> b!7855719 (= tp!2327061 e!4643444)))

(declare-fun b!7856346 () Bool)

(assert (=> b!7856346 (= e!4643444 tp_is_empty!52593)))

(declare-fun b!7856348 () Bool)

(declare-fun tp!2327281 () Bool)

(assert (=> b!7856348 (= e!4643444 tp!2327281)))

(assert (= (and b!7855719 ((_ is ElementMatch!21097) (reg!21426 (regOne!42707 r2!6165)))) b!7856346))

(assert (= (and b!7855719 ((_ is Concat!29942) (reg!21426 (regOne!42707 r2!6165)))) b!7856347))

(assert (= (and b!7855719 ((_ is Star!21097) (reg!21426 (regOne!42707 r2!6165)))) b!7856348))

(assert (= (and b!7855719 ((_ is Union!21097) (reg!21426 (regOne!42707 r2!6165)))) b!7856349))

(declare-fun b!7856351 () Bool)

(declare-fun e!4643445 () Bool)

(declare-fun tp!2327284 () Bool)

(declare-fun tp!2327285 () Bool)

(assert (=> b!7856351 (= e!4643445 (and tp!2327284 tp!2327285))))

(declare-fun b!7856353 () Bool)

(declare-fun tp!2327282 () Bool)

(declare-fun tp!2327283 () Bool)

(assert (=> b!7856353 (= e!4643445 (and tp!2327282 tp!2327283))))

(assert (=> b!7855728 (= tp!2327067 e!4643445)))

(declare-fun b!7856350 () Bool)

(assert (=> b!7856350 (= e!4643445 tp_is_empty!52593)))

(declare-fun b!7856352 () Bool)

(declare-fun tp!2327286 () Bool)

(assert (=> b!7856352 (= e!4643445 tp!2327286)))

(assert (= (and b!7855728 ((_ is ElementMatch!21097) (regOne!42707 (regOne!42706 r1!6227)))) b!7856350))

(assert (= (and b!7855728 ((_ is Concat!29942) (regOne!42707 (regOne!42706 r1!6227)))) b!7856351))

(assert (= (and b!7855728 ((_ is Star!21097) (regOne!42707 (regOne!42706 r1!6227)))) b!7856352))

(assert (= (and b!7855728 ((_ is Union!21097) (regOne!42707 (regOne!42706 r1!6227)))) b!7856353))

(declare-fun b!7856355 () Bool)

(declare-fun e!4643446 () Bool)

(declare-fun tp!2327289 () Bool)

(declare-fun tp!2327290 () Bool)

(assert (=> b!7856355 (= e!4643446 (and tp!2327289 tp!2327290))))

(declare-fun b!7856357 () Bool)

(declare-fun tp!2327287 () Bool)

(declare-fun tp!2327288 () Bool)

(assert (=> b!7856357 (= e!4643446 (and tp!2327287 tp!2327288))))

(assert (=> b!7855728 (= tp!2327068 e!4643446)))

(declare-fun b!7856354 () Bool)

(assert (=> b!7856354 (= e!4643446 tp_is_empty!52593)))

(declare-fun b!7856356 () Bool)

(declare-fun tp!2327291 () Bool)

(assert (=> b!7856356 (= e!4643446 tp!2327291)))

(assert (= (and b!7855728 ((_ is ElementMatch!21097) (regTwo!42707 (regOne!42706 r1!6227)))) b!7856354))

(assert (= (and b!7855728 ((_ is Concat!29942) (regTwo!42707 (regOne!42706 r1!6227)))) b!7856355))

(assert (= (and b!7855728 ((_ is Star!21097) (regTwo!42707 (regOne!42706 r1!6227)))) b!7856356))

(assert (= (and b!7855728 ((_ is Union!21097) (regTwo!42707 (regOne!42706 r1!6227)))) b!7856357))

(declare-fun b!7856359 () Bool)

(declare-fun e!4643447 () Bool)

(declare-fun tp!2327294 () Bool)

(declare-fun tp!2327295 () Bool)

(assert (=> b!7856359 (= e!4643447 (and tp!2327294 tp!2327295))))

(declare-fun b!7856361 () Bool)

(declare-fun tp!2327292 () Bool)

(declare-fun tp!2327293 () Bool)

(assert (=> b!7856361 (= e!4643447 (and tp!2327292 tp!2327293))))

(assert (=> b!7855718 (= tp!2327059 e!4643447)))

(declare-fun b!7856358 () Bool)

(assert (=> b!7856358 (= e!4643447 tp_is_empty!52593)))

(declare-fun b!7856360 () Bool)

(declare-fun tp!2327296 () Bool)

(assert (=> b!7856360 (= e!4643447 tp!2327296)))

(assert (= (and b!7855718 ((_ is ElementMatch!21097) (regOne!42706 (regOne!42707 r2!6165)))) b!7856358))

(assert (= (and b!7855718 ((_ is Concat!29942) (regOne!42706 (regOne!42707 r2!6165)))) b!7856359))

(assert (= (and b!7855718 ((_ is Star!21097) (regOne!42706 (regOne!42707 r2!6165)))) b!7856360))

(assert (= (and b!7855718 ((_ is Union!21097) (regOne!42706 (regOne!42707 r2!6165)))) b!7856361))

(declare-fun b!7856363 () Bool)

(declare-fun e!4643448 () Bool)

(declare-fun tp!2327299 () Bool)

(declare-fun tp!2327300 () Bool)

(assert (=> b!7856363 (= e!4643448 (and tp!2327299 tp!2327300))))

(declare-fun b!7856365 () Bool)

(declare-fun tp!2327297 () Bool)

(declare-fun tp!2327298 () Bool)

(assert (=> b!7856365 (= e!4643448 (and tp!2327297 tp!2327298))))

(assert (=> b!7855718 (= tp!2327060 e!4643448)))

(declare-fun b!7856362 () Bool)

(assert (=> b!7856362 (= e!4643448 tp_is_empty!52593)))

(declare-fun b!7856364 () Bool)

(declare-fun tp!2327301 () Bool)

(assert (=> b!7856364 (= e!4643448 tp!2327301)))

(assert (= (and b!7855718 ((_ is ElementMatch!21097) (regTwo!42706 (regOne!42707 r2!6165)))) b!7856362))

(assert (= (and b!7855718 ((_ is Concat!29942) (regTwo!42706 (regOne!42707 r2!6165)))) b!7856363))

(assert (= (and b!7855718 ((_ is Star!21097) (regTwo!42706 (regOne!42707 r2!6165)))) b!7856364))

(assert (= (and b!7855718 ((_ is Union!21097) (regTwo!42706 (regOne!42707 r2!6165)))) b!7856365))

(declare-fun b!7856367 () Bool)

(declare-fun e!4643449 () Bool)

(declare-fun tp!2327304 () Bool)

(declare-fun tp!2327305 () Bool)

(assert (=> b!7856367 (= e!4643449 (and tp!2327304 tp!2327305))))

(declare-fun b!7856369 () Bool)

(declare-fun tp!2327302 () Bool)

(declare-fun tp!2327303 () Bool)

(assert (=> b!7856369 (= e!4643449 (and tp!2327302 tp!2327303))))

(assert (=> b!7855754 (= tp!2327096 e!4643449)))

(declare-fun b!7856366 () Bool)

(assert (=> b!7856366 (= e!4643449 tp_is_empty!52593)))

(declare-fun b!7856368 () Bool)

(declare-fun tp!2327306 () Bool)

(assert (=> b!7856368 (= e!4643449 tp!2327306)))

(assert (= (and b!7855754 ((_ is ElementMatch!21097) (regOne!42707 (regTwo!42707 r1!6227)))) b!7856366))

(assert (= (and b!7855754 ((_ is Concat!29942) (regOne!42707 (regTwo!42707 r1!6227)))) b!7856367))

(assert (= (and b!7855754 ((_ is Star!21097) (regOne!42707 (regTwo!42707 r1!6227)))) b!7856368))

(assert (= (and b!7855754 ((_ is Union!21097) (regOne!42707 (regTwo!42707 r1!6227)))) b!7856369))

(declare-fun b!7856371 () Bool)

(declare-fun e!4643450 () Bool)

(declare-fun tp!2327309 () Bool)

(declare-fun tp!2327310 () Bool)

(assert (=> b!7856371 (= e!4643450 (and tp!2327309 tp!2327310))))

(declare-fun b!7856373 () Bool)

(declare-fun tp!2327307 () Bool)

(declare-fun tp!2327308 () Bool)

(assert (=> b!7856373 (= e!4643450 (and tp!2327307 tp!2327308))))

(assert (=> b!7855754 (= tp!2327097 e!4643450)))

(declare-fun b!7856370 () Bool)

(assert (=> b!7856370 (= e!4643450 tp_is_empty!52593)))

(declare-fun b!7856372 () Bool)

(declare-fun tp!2327311 () Bool)

(assert (=> b!7856372 (= e!4643450 tp!2327311)))

(assert (= (and b!7855754 ((_ is ElementMatch!21097) (regTwo!42707 (regTwo!42707 r1!6227)))) b!7856370))

(assert (= (and b!7855754 ((_ is Concat!29942) (regTwo!42707 (regTwo!42707 r1!6227)))) b!7856371))

(assert (= (and b!7855754 ((_ is Star!21097) (regTwo!42707 (regTwo!42707 r1!6227)))) b!7856372))

(assert (= (and b!7855754 ((_ is Union!21097) (regTwo!42707 (regTwo!42707 r1!6227)))) b!7856373))

(declare-fun b!7856375 () Bool)

(declare-fun e!4643451 () Bool)

(declare-fun tp!2327314 () Bool)

(declare-fun tp!2327315 () Bool)

(assert (=> b!7856375 (= e!4643451 (and tp!2327314 tp!2327315))))

(declare-fun b!7856377 () Bool)

(declare-fun tp!2327312 () Bool)

(declare-fun tp!2327313 () Bool)

(assert (=> b!7856377 (= e!4643451 (and tp!2327312 tp!2327313))))

(assert (=> b!7855745 (= tp!2327090 e!4643451)))

(declare-fun b!7856374 () Bool)

(assert (=> b!7856374 (= e!4643451 tp_is_empty!52593)))

(declare-fun b!7856376 () Bool)

(declare-fun tp!2327316 () Bool)

(assert (=> b!7856376 (= e!4643451 tp!2327316)))

(assert (= (and b!7855745 ((_ is ElementMatch!21097) (reg!21426 (reg!21426 r2!6165)))) b!7856374))

(assert (= (and b!7855745 ((_ is Concat!29942) (reg!21426 (reg!21426 r2!6165)))) b!7856375))

(assert (= (and b!7855745 ((_ is Star!21097) (reg!21426 (reg!21426 r2!6165)))) b!7856376))

(assert (= (and b!7855745 ((_ is Union!21097) (reg!21426 (reg!21426 r2!6165)))) b!7856377))

(declare-fun b!7856379 () Bool)

(declare-fun e!4643452 () Bool)

(declare-fun tp!2327319 () Bool)

(declare-fun tp!2327320 () Bool)

(assert (=> b!7856379 (= e!4643452 (and tp!2327319 tp!2327320))))

(declare-fun b!7856381 () Bool)

(declare-fun tp!2327317 () Bool)

(declare-fun tp!2327318 () Bool)

(assert (=> b!7856381 (= e!4643452 (and tp!2327317 tp!2327318))))

(assert (=> b!7855744 (= tp!2327088 e!4643452)))

(declare-fun b!7856378 () Bool)

(assert (=> b!7856378 (= e!4643452 tp_is_empty!52593)))

(declare-fun b!7856380 () Bool)

(declare-fun tp!2327321 () Bool)

(assert (=> b!7856380 (= e!4643452 tp!2327321)))

(assert (= (and b!7855744 ((_ is ElementMatch!21097) (regOne!42706 (reg!21426 r2!6165)))) b!7856378))

(assert (= (and b!7855744 ((_ is Concat!29942) (regOne!42706 (reg!21426 r2!6165)))) b!7856379))

(assert (= (and b!7855744 ((_ is Star!21097) (regOne!42706 (reg!21426 r2!6165)))) b!7856380))

(assert (= (and b!7855744 ((_ is Union!21097) (regOne!42706 (reg!21426 r2!6165)))) b!7856381))

(declare-fun b!7856383 () Bool)

(declare-fun e!4643453 () Bool)

(declare-fun tp!2327324 () Bool)

(declare-fun tp!2327325 () Bool)

(assert (=> b!7856383 (= e!4643453 (and tp!2327324 tp!2327325))))

(declare-fun b!7856385 () Bool)

(declare-fun tp!2327322 () Bool)

(declare-fun tp!2327323 () Bool)

(assert (=> b!7856385 (= e!4643453 (and tp!2327322 tp!2327323))))

(assert (=> b!7855744 (= tp!2327089 e!4643453)))

(declare-fun b!7856382 () Bool)

(assert (=> b!7856382 (= e!4643453 tp_is_empty!52593)))

(declare-fun b!7856384 () Bool)

(declare-fun tp!2327326 () Bool)

(assert (=> b!7856384 (= e!4643453 tp!2327326)))

(assert (= (and b!7855744 ((_ is ElementMatch!21097) (regTwo!42706 (reg!21426 r2!6165)))) b!7856382))

(assert (= (and b!7855744 ((_ is Concat!29942) (regTwo!42706 (reg!21426 r2!6165)))) b!7856383))

(assert (= (and b!7855744 ((_ is Star!21097) (regTwo!42706 (reg!21426 r2!6165)))) b!7856384))

(assert (= (and b!7855744 ((_ is Union!21097) (regTwo!42706 (reg!21426 r2!6165)))) b!7856385))

(declare-fun b!7856386 () Bool)

(declare-fun e!4643454 () Bool)

(declare-fun tp!2327327 () Bool)

(assert (=> b!7856386 (= e!4643454 (and tp_is_empty!52593 tp!2327327))))

(assert (=> b!7855737 (= tp!2327079 e!4643454)))

(assert (= (and b!7855737 ((_ is Cons!73832) (t!388691 (t!388691 s1!4084)))) b!7856386))

(declare-fun b!7856389 () Bool)

(declare-fun e!4643462 () Bool)

(declare-fun tp!2327330 () Bool)

(declare-fun tp!2327331 () Bool)

(assert (=> b!7856389 (= e!4643462 (and tp!2327330 tp!2327331))))

(declare-fun b!7856393 () Bool)

(declare-fun tp!2327328 () Bool)

(declare-fun tp!2327329 () Bool)

(assert (=> b!7856393 (= e!4643462 (and tp!2327328 tp!2327329))))

(assert (=> b!7855712 (= tp!2327047 e!4643462)))

(declare-fun b!7856388 () Bool)

(assert (=> b!7856388 (= e!4643462 tp_is_empty!52593)))

(declare-fun b!7856391 () Bool)

(declare-fun tp!2327332 () Bool)

(assert (=> b!7856391 (= e!4643462 tp!2327332)))

(assert (= (and b!7855712 ((_ is ElementMatch!21097) (regOne!42707 (regOne!42706 r2!6165)))) b!7856388))

(assert (= (and b!7855712 ((_ is Concat!29942) (regOne!42707 (regOne!42706 r2!6165)))) b!7856389))

(assert (= (and b!7855712 ((_ is Star!21097) (regOne!42707 (regOne!42706 r2!6165)))) b!7856391))

(assert (= (and b!7855712 ((_ is Union!21097) (regOne!42707 (regOne!42706 r2!6165)))) b!7856393))

(declare-fun b!7856401 () Bool)

(declare-fun e!4643463 () Bool)

(declare-fun tp!2327335 () Bool)

(declare-fun tp!2327336 () Bool)

(assert (=> b!7856401 (= e!4643463 (and tp!2327335 tp!2327336))))

(declare-fun b!7856403 () Bool)

(declare-fun tp!2327333 () Bool)

(declare-fun tp!2327334 () Bool)

(assert (=> b!7856403 (= e!4643463 (and tp!2327333 tp!2327334))))

(assert (=> b!7855712 (= tp!2327048 e!4643463)))

(declare-fun b!7856400 () Bool)

(assert (=> b!7856400 (= e!4643463 tp_is_empty!52593)))

(declare-fun b!7856402 () Bool)

(declare-fun tp!2327337 () Bool)

(assert (=> b!7856402 (= e!4643463 tp!2327337)))

(assert (= (and b!7855712 ((_ is ElementMatch!21097) (regTwo!42707 (regOne!42706 r2!6165)))) b!7856400))

(assert (= (and b!7855712 ((_ is Concat!29942) (regTwo!42707 (regOne!42706 r2!6165)))) b!7856401))

(assert (= (and b!7855712 ((_ is Star!21097) (regTwo!42707 (regOne!42706 r2!6165)))) b!7856402))

(assert (= (and b!7855712 ((_ is Union!21097) (regTwo!42707 (regOne!42706 r2!6165)))) b!7856403))

(declare-fun b!7856405 () Bool)

(declare-fun e!4643464 () Bool)

(declare-fun tp!2327340 () Bool)

(declare-fun tp!2327341 () Bool)

(assert (=> b!7856405 (= e!4643464 (and tp!2327340 tp!2327341))))

(declare-fun b!7856407 () Bool)

(declare-fun tp!2327338 () Bool)

(declare-fun tp!2327339 () Bool)

(assert (=> b!7856407 (= e!4643464 (and tp!2327338 tp!2327339))))

(assert (=> b!7855753 (= tp!2327100 e!4643464)))

(declare-fun b!7856404 () Bool)

(assert (=> b!7856404 (= e!4643464 tp_is_empty!52593)))

(declare-fun b!7856406 () Bool)

(declare-fun tp!2327342 () Bool)

(assert (=> b!7856406 (= e!4643464 tp!2327342)))

(assert (= (and b!7855753 ((_ is ElementMatch!21097) (reg!21426 (regTwo!42707 r1!6227)))) b!7856404))

(assert (= (and b!7855753 ((_ is Concat!29942) (reg!21426 (regTwo!42707 r1!6227)))) b!7856405))

(assert (= (and b!7855753 ((_ is Star!21097) (reg!21426 (regTwo!42707 r1!6227)))) b!7856406))

(assert (= (and b!7855753 ((_ is Union!21097) (reg!21426 (regTwo!42707 r1!6227)))) b!7856407))

(declare-fun b!7856409 () Bool)

(declare-fun e!4643465 () Bool)

(declare-fun tp!2327345 () Bool)

(declare-fun tp!2327346 () Bool)

(assert (=> b!7856409 (= e!4643465 (and tp!2327345 tp!2327346))))

(declare-fun b!7856411 () Bool)

(declare-fun tp!2327343 () Bool)

(declare-fun tp!2327344 () Bool)

(assert (=> b!7856411 (= e!4643465 (and tp!2327343 tp!2327344))))

(assert (=> b!7855752 (= tp!2327098 e!4643465)))

(declare-fun b!7856408 () Bool)

(assert (=> b!7856408 (= e!4643465 tp_is_empty!52593)))

(declare-fun b!7856410 () Bool)

(declare-fun tp!2327347 () Bool)

(assert (=> b!7856410 (= e!4643465 tp!2327347)))

(assert (= (and b!7855752 ((_ is ElementMatch!21097) (regOne!42706 (regTwo!42707 r1!6227)))) b!7856408))

(assert (= (and b!7855752 ((_ is Concat!29942) (regOne!42706 (regTwo!42707 r1!6227)))) b!7856409))

(assert (= (and b!7855752 ((_ is Star!21097) (regOne!42706 (regTwo!42707 r1!6227)))) b!7856410))

(assert (= (and b!7855752 ((_ is Union!21097) (regOne!42706 (regTwo!42707 r1!6227)))) b!7856411))

(declare-fun b!7856413 () Bool)

(declare-fun e!4643466 () Bool)

(declare-fun tp!2327350 () Bool)

(declare-fun tp!2327351 () Bool)

(assert (=> b!7856413 (= e!4643466 (and tp!2327350 tp!2327351))))

(declare-fun b!7856415 () Bool)

(declare-fun tp!2327348 () Bool)

(declare-fun tp!2327349 () Bool)

(assert (=> b!7856415 (= e!4643466 (and tp!2327348 tp!2327349))))

(assert (=> b!7855752 (= tp!2327099 e!4643466)))

(declare-fun b!7856412 () Bool)

(assert (=> b!7856412 (= e!4643466 tp_is_empty!52593)))

(declare-fun b!7856414 () Bool)

(declare-fun tp!2327352 () Bool)

(assert (=> b!7856414 (= e!4643466 tp!2327352)))

(assert (= (and b!7855752 ((_ is ElementMatch!21097) (regTwo!42706 (regTwo!42707 r1!6227)))) b!7856412))

(assert (= (and b!7855752 ((_ is Concat!29942) (regTwo!42706 (regTwo!42707 r1!6227)))) b!7856413))

(assert (= (and b!7855752 ((_ is Star!21097) (regTwo!42706 (regTwo!42707 r1!6227)))) b!7856414))

(assert (= (and b!7855752 ((_ is Union!21097) (regTwo!42706 (regTwo!42707 r1!6227)))) b!7856415))

(check-sat (not b!7855814) (not b!7856341) (not b!7856205) (not bm!728308) (not b!7856343) (not b!7856385) (not b!7856247) (not b!7856263) (not b!7855812) (not bm!728279) (not b!7855921) (not b!7856225) (not b!7856162) (not b!7856340) (not b!7856122) (not b!7856255) (not d!2353887) (not b!7856022) (not b!7856371) (not bm!728292) (not b!7856182) (not bm!728283) (not b!7856185) (not bm!728266) (not b!7855793) (not b!7855796) (not bm!728316) (not b!7856177) (not b!7856241) (not d!2353897) (not b!7856206) (not d!2353939) (not b!7855782) (not bm!728232) (not b!7856414) (not b!7856285) (not b!7856267) (not b!7856215) (not d!2353863) (not d!2353987) (not b!7856360) (not bm!728274) (not b!7856368) (not b!7856298) (not b!7856183) (not b!7856283) (not bm!728214) (not b!7856295) (not d!2353911) (not b!7855909) (not b!7856179) (not b!7856039) (not b!7856403) (not b!7856187) (not b!7856317) (not b!7856189) (not d!2353907) (not b!7856230) (not b!7856299) (not bm!728259) (not b!7856376) (not b!7856290) (not d!2353955) (not b!7856347) (not b!7855898) (not b!7856233) (not b!7856203) (not d!2353913) (not b!7856372) (not bm!728254) (not b!7856254) (not b!7856361) (not bm!728257) (not b!7856410) (not b!7855911) (not bm!728236) (not b!7856207) (not b!7855997) (not b!7855999) (not b!7856250) (not b!7855795) (not b!7856405) (not b!7856161) (not b!7856219) (not d!2353975) (not b!7856112) (not b!7855878) (not b!7856221) (not bm!728222) (not b!7856344) (not b!7856315) (not bm!728263) (not b!7856305) (not b!7856357) (not b!7856190) (not b!7856310) (not b!7855941) (not bm!728245) (not d!2353963) (not b!7856137) (not b!7856174) (not b!7856293) (not b!7856384) (not b!7856163) (not b!7856201) (not b!7856406) (not b!7856318) (not d!2353843) (not b!7856289) (not b!7856383) (not b!7856373) (not b!7856110) (not b!7856364) (not b!7856356) (not bm!728311) (not b!7856302) (not bm!728270) (not b!7856244) (not b!7855944) (not b!7855903) (not bm!728255) (not b!7856178) (not b!7855920) (not b!7856268) (not b!7856024) (not bm!728229) (not b!7856248) (not d!2353931) (not b!7856121) (not d!2353927) (not b!7856152) (not b!7856164) (not b!7856023) (not b!7856234) (not b!7856345) (not bm!728314) (not b!7855954) (not b!7855768) (not b!7856325) (not b!7856186) (not bm!728219) (not d!2353899) (not b!7855806) (not b!7856265) (not b!7855918) (not b!7856195) (not b!7856209) (not b!7856080) (not b!7855988) (not b!7855990) (not bm!728291) (not bm!728247) (not b!7856306) (not bm!728212) (not b!7856297) (not b!7856211) (not b!7856108) (not bm!728239) (not d!2353919) (not b!7855759) (not b!7856365) (not d!2353859) (not b!7856401) (not b!7856261) (not b!7856402) (not b!7856119) (not b!7856245) (not b!7856012) tp_is_empty!52593 (not bm!728258) (not d!2353891) (not b!7856353) (not b!7856381) (not d!2353929) (not b!7856359) (not bm!728310) (not b!7856287) (not b!7856314) (not bm!728241) (not b!7856351) (not d!2353869) (not b!7856348) (not bm!728273) (not bm!728249) (not b!7856321) (not b!7856253) (not b!7856380) (not b!7856222) (not b!7855942) (not b!7856393) (not b!7855978) (not b!7856349) (not b!7856231) (not b!7856010) (not b!7856307) (not b!7855932) (not b!7856227) (not b!7855849) (not bm!728289) (not bm!728251) (not b!7856386) (not b!7855848) (not b!7856319) (not b!7856269) (not b!7855816) (not b!7856313) (not d!2353879) (not b!7856309) (not b!7856048) (not bm!728211) (not b!7855986) (not bm!728261) (not b!7856106) (not b!7855864) (not b!7856355) (not d!2353935) (not bm!728233) (not b!7856264) (not b!7856415) (not bm!728276) (not bm!728265) (not b!7855888) (not b!7855998) (not b!7856202) (not b!7856391) (not b!7855786) (not b!7856327) (not bm!728220) (not b!7856000) (not bm!728312) (not bm!728299) (not b!7856076) (not bm!728224) (not b!7855926) (not d!2353905) (not b!7855934) (not b!7855919) (not b!7856057) (not b!7856322) (not b!7856291) (not b!7856389) (not b!7856411) (not b!7856363) (not b!7856243) (not d!2353839) (not b!7856407) (not b!7855794) (not d!2353937) (not bm!728288) (not b!7856235) (not b!7855842) (not b!7856311) (not b!7856377) (not b!7856120) (not bm!728281) (not b!7856240) (not b!7856260) (not b!7856375) (not b!7856214) (not b!7856294) (not b!7856191) (not b!7856239) (not b!7856301) (not b!7856409) (not bm!728307) (not b!7856369) (not b!7855973) (not b!7855855) (not d!2353933) (not b!7855959) (not b!7856213) (not b!7856367) (not bm!728230) (not b!7856078) (not b!7856181) (not b!7855784) (not d!2353865) (not d!2353981) (not b!7856379) (not b!7856229) (not b!7856352) (not bm!728278) (not bm!728286) (not bm!728272) (not bm!728238) (not b!7856326) (not b!7856146) (not b!7856226) (not b!7856303) (not b!7856286) (not bm!728297) (not b!7856323) (not b!7856154) (not d!2353881) (not bm!728301) (not b!7856217) (not d!2353903) (not bm!728243) (not b!7856413) (not b!7856090) (not b!7856197) (not d!2353841) (not b!7856339) (not bm!728253) (not bm!728285) (not bm!728215) (not d!2353965) (not b!7855984) (not b!7856021) (not b!7856196) (not b!7856281) (not b!7856175) (not b!7856282) (not b!7856259) (not b!7856034) (not b!7856210) (not bm!728235) (not b!7856218) (not b!7855943) (not bm!728217) (not b!7856014) (not b!7856223) (not bm!728268))
(check-sat)
