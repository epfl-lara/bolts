; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278078 () Bool)

(assert start!278078)

(declare-fun b!2856923 () Bool)

(declare-fun res!1186832 () Bool)

(declare-fun e!1809288 () Bool)

(assert (=> b!2856923 (=> (not res!1186832) (not e!1809288))))

(declare-datatypes ((C!17368 0))(
  ( (C!17369 (val!10718 Int)) )
))
(declare-datatypes ((List!34190 0))(
  ( (Nil!34066) (Cons!34066 (h!39486 C!17368) (t!233221 List!34190)) )
))
(declare-fun prefix!1470 () List!34190)

(get-info :version)

(assert (=> b!2856923 (= res!1186832 ((_ is Nil!34066) prefix!1470))))

(declare-fun b!2856924 () Bool)

(declare-fun e!1809287 () Bool)

(declare-fun tp!919501 () Bool)

(declare-fun tp!919499 () Bool)

(assert (=> b!2856924 (= e!1809287 (and tp!919501 tp!919499))))

(declare-fun b!2856925 () Bool)

(declare-fun lt!1014131 () List!34190)

(declare-fun isPrefix!2674 (List!34190 List!34190) Bool)

(assert (=> b!2856925 (= e!1809288 (not (isPrefix!2674 prefix!1470 lt!1014131)))))

(declare-datatypes ((Regex!8593 0))(
  ( (ElementMatch!8593 (c!460354 C!17368)) (Concat!13914 (regOne!17698 Regex!8593) (regTwo!17698 Regex!8593)) (EmptyExpr!8593) (Star!8593 (reg!8922 Regex!8593)) (EmptyLang!8593) (Union!8593 (regOne!17699 Regex!8593) (regTwo!17699 Regex!8593)) )
))
(declare-fun r!23423 () Regex!8593)

(declare-fun matchR!3699 (Regex!8593 List!34190) Bool)

(assert (=> b!2856925 (matchR!3699 r!23423 lt!1014131)))

(declare-datatypes ((Unit!47729 0))(
  ( (Unit!47730) )
))
(declare-fun lt!1014130 () Unit!47729)

(declare-fun lemmaGetWitnessMatches!16 (Regex!8593) Unit!47729)

(assert (=> b!2856925 (= lt!1014130 (lemmaGetWitnessMatches!16 r!23423))))

(declare-datatypes ((Option!6314 0))(
  ( (None!6313) (Some!6313 (v!34435 List!34190)) )
))
(declare-fun get!10206 (Option!6314) List!34190)

(declare-fun getLanguageWitness!245 (Regex!8593) Option!6314)

(assert (=> b!2856925 (= lt!1014131 (get!10206 (getLanguageWitness!245 r!23423)))))

(declare-fun b!2856926 () Bool)

(declare-fun tp!919502 () Bool)

(assert (=> b!2856926 (= e!1809287 tp!919502)))

(declare-fun res!1186831 () Bool)

(assert (=> start!278078 (=> (not res!1186831) (not e!1809288))))

(declare-fun validRegex!3463 (Regex!8593) Bool)

(assert (=> start!278078 (= res!1186831 (validRegex!3463 r!23423))))

(assert (=> start!278078 e!1809288))

(assert (=> start!278078 e!1809287))

(declare-fun e!1809286 () Bool)

(assert (=> start!278078 e!1809286))

(declare-fun b!2856927 () Bool)

(declare-fun tp_is_empty!14923 () Bool)

(declare-fun tp!919503 () Bool)

(assert (=> b!2856927 (= e!1809286 (and tp_is_empty!14923 tp!919503))))

(declare-fun b!2856928 () Bool)

(declare-fun res!1186830 () Bool)

(assert (=> b!2856928 (=> (not res!1186830) (not e!1809288))))

(declare-fun prefixMatch!901 (Regex!8593 List!34190) Bool)

(assert (=> b!2856928 (= res!1186830 (prefixMatch!901 r!23423 prefix!1470))))

(declare-fun b!2856929 () Bool)

(assert (=> b!2856929 (= e!1809287 tp_is_empty!14923)))

(declare-fun b!2856930 () Bool)

(declare-fun tp!919504 () Bool)

(declare-fun tp!919500 () Bool)

(assert (=> b!2856930 (= e!1809287 (and tp!919504 tp!919500))))

(assert (= (and start!278078 res!1186831) b!2856928))

(assert (= (and b!2856928 res!1186830) b!2856923))

(assert (= (and b!2856923 res!1186832) b!2856925))

(assert (= (and start!278078 ((_ is ElementMatch!8593) r!23423)) b!2856929))

(assert (= (and start!278078 ((_ is Concat!13914) r!23423)) b!2856930))

(assert (= (and start!278078 ((_ is Star!8593) r!23423)) b!2856926))

(assert (= (and start!278078 ((_ is Union!8593) r!23423)) b!2856924))

(assert (= (and start!278078 ((_ is Cons!34066) prefix!1470)) b!2856927))

(declare-fun m!3279131 () Bool)

(assert (=> b!2856925 m!3279131))

(declare-fun m!3279133 () Bool)

(assert (=> b!2856925 m!3279133))

(declare-fun m!3279135 () Bool)

(assert (=> b!2856925 m!3279135))

(declare-fun m!3279137 () Bool)

(assert (=> b!2856925 m!3279137))

(assert (=> b!2856925 m!3279133))

(declare-fun m!3279139 () Bool)

(assert (=> b!2856925 m!3279139))

(declare-fun m!3279141 () Bool)

(assert (=> start!278078 m!3279141))

(declare-fun m!3279143 () Bool)

(assert (=> b!2856928 m!3279143))

(check-sat (not b!2856927) (not b!2856930) (not b!2856924) (not b!2856928) (not start!278078) tp_is_empty!14923 (not b!2856925) (not b!2856926))
(check-sat)
(get-model)

(declare-fun d!826512 () Bool)

(declare-fun c!460357 () Bool)

(declare-fun isEmpty!18600 (List!34190) Bool)

(assert (=> d!826512 (= c!460357 (isEmpty!18600 prefix!1470))))

(declare-fun e!1809291 () Bool)

(assert (=> d!826512 (= (prefixMatch!901 r!23423 prefix!1470) e!1809291)))

(declare-fun b!2856935 () Bool)

(declare-fun lostCause!746 (Regex!8593) Bool)

(assert (=> b!2856935 (= e!1809291 (not (lostCause!746 r!23423)))))

(declare-fun b!2856936 () Bool)

(declare-fun derivativeStep!2281 (Regex!8593 C!17368) Regex!8593)

(declare-fun head!6275 (List!34190) C!17368)

(declare-fun tail!4500 (List!34190) List!34190)

(assert (=> b!2856936 (= e!1809291 (prefixMatch!901 (derivativeStep!2281 r!23423 (head!6275 prefix!1470)) (tail!4500 prefix!1470)))))

(assert (= (and d!826512 c!460357) b!2856935))

(assert (= (and d!826512 (not c!460357)) b!2856936))

(declare-fun m!3279145 () Bool)

(assert (=> d!826512 m!3279145))

(declare-fun m!3279147 () Bool)

(assert (=> b!2856935 m!3279147))

(declare-fun m!3279149 () Bool)

(assert (=> b!2856936 m!3279149))

(assert (=> b!2856936 m!3279149))

(declare-fun m!3279151 () Bool)

(assert (=> b!2856936 m!3279151))

(declare-fun m!3279153 () Bool)

(assert (=> b!2856936 m!3279153))

(assert (=> b!2856936 m!3279151))

(assert (=> b!2856936 m!3279153))

(declare-fun m!3279155 () Bool)

(assert (=> b!2856936 m!3279155))

(assert (=> b!2856928 d!826512))

(declare-fun d!826516 () Bool)

(assert (=> d!826516 (= (get!10206 (getLanguageWitness!245 r!23423)) (v!34435 (getLanguageWitness!245 r!23423)))))

(assert (=> b!2856925 d!826516))

(declare-fun d!826518 () Bool)

(assert (=> d!826518 (matchR!3699 r!23423 (get!10206 (getLanguageWitness!245 r!23423)))))

(declare-fun lt!1014134 () Unit!47729)

(declare-fun choose!16804 (Regex!8593) Unit!47729)

(assert (=> d!826518 (= lt!1014134 (choose!16804 r!23423))))

(assert (=> d!826518 (validRegex!3463 r!23423)))

(assert (=> d!826518 (= (lemmaGetWitnessMatches!16 r!23423) lt!1014134)))

(declare-fun bs!520287 () Bool)

(assert (= bs!520287 d!826518))

(assert (=> bs!520287 m!3279141))

(assert (=> bs!520287 m!3279133))

(assert (=> bs!520287 m!3279133))

(assert (=> bs!520287 m!3279139))

(assert (=> bs!520287 m!3279139))

(declare-fun m!3279169 () Bool)

(assert (=> bs!520287 m!3279169))

(declare-fun m!3279171 () Bool)

(assert (=> bs!520287 m!3279171))

(assert (=> b!2856925 d!826518))

(declare-fun b!2856952 () Bool)

(declare-fun res!1186844 () Bool)

(declare-fun e!1809303 () Bool)

(assert (=> b!2856952 (=> (not res!1186844) (not e!1809303))))

(assert (=> b!2856952 (= res!1186844 (= (head!6275 prefix!1470) (head!6275 lt!1014131)))))

(declare-fun d!826522 () Bool)

(declare-fun e!1809302 () Bool)

(assert (=> d!826522 e!1809302))

(declare-fun res!1186843 () Bool)

(assert (=> d!826522 (=> res!1186843 e!1809302)))

(declare-fun lt!1014137 () Bool)

(assert (=> d!826522 (= res!1186843 (not lt!1014137))))

(declare-fun e!1809301 () Bool)

(assert (=> d!826522 (= lt!1014137 e!1809301)))

(declare-fun res!1186841 () Bool)

(assert (=> d!826522 (=> res!1186841 e!1809301)))

(assert (=> d!826522 (= res!1186841 ((_ is Nil!34066) prefix!1470))))

(assert (=> d!826522 (= (isPrefix!2674 prefix!1470 lt!1014131) lt!1014137)))

(declare-fun b!2856951 () Bool)

(assert (=> b!2856951 (= e!1809301 e!1809303)))

(declare-fun res!1186842 () Bool)

(assert (=> b!2856951 (=> (not res!1186842) (not e!1809303))))

(assert (=> b!2856951 (= res!1186842 (not ((_ is Nil!34066) lt!1014131)))))

(declare-fun b!2856954 () Bool)

(declare-fun size!26273 (List!34190) Int)

(assert (=> b!2856954 (= e!1809302 (>= (size!26273 lt!1014131) (size!26273 prefix!1470)))))

(declare-fun b!2856953 () Bool)

(assert (=> b!2856953 (= e!1809303 (isPrefix!2674 (tail!4500 prefix!1470) (tail!4500 lt!1014131)))))

(assert (= (and d!826522 (not res!1186841)) b!2856951))

(assert (= (and b!2856951 res!1186842) b!2856952))

(assert (= (and b!2856952 res!1186844) b!2856953))

(assert (= (and d!826522 (not res!1186843)) b!2856954))

(assert (=> b!2856952 m!3279149))

(declare-fun m!3279173 () Bool)

(assert (=> b!2856952 m!3279173))

(declare-fun m!3279175 () Bool)

(assert (=> b!2856954 m!3279175))

(declare-fun m!3279177 () Bool)

(assert (=> b!2856954 m!3279177))

(assert (=> b!2856953 m!3279153))

(declare-fun m!3279179 () Bool)

(assert (=> b!2856953 m!3279179))

(assert (=> b!2856953 m!3279153))

(assert (=> b!2856953 m!3279179))

(declare-fun m!3279181 () Bool)

(assert (=> b!2856953 m!3279181))

(assert (=> b!2856925 d!826522))

(declare-fun b!2856988 () Bool)

(declare-fun e!1809326 () Option!6314)

(declare-fun lt!1014147 () Option!6314)

(assert (=> b!2856988 (= e!1809326 lt!1014147)))

(declare-fun b!2856989 () Bool)

(declare-fun e!1809324 () Option!6314)

(assert (=> b!2856989 (= e!1809324 (Some!6313 Nil!34066))))

(declare-fun b!2856990 () Bool)

(declare-fun e!1809327 () Option!6314)

(declare-fun e!1809321 () Option!6314)

(assert (=> b!2856990 (= e!1809327 e!1809321)))

(declare-fun c!460381 () Bool)

(assert (=> b!2856990 (= c!460381 ((_ is Star!8593) r!23423))))

(declare-fun b!2856991 () Bool)

(declare-fun e!1809323 () Option!6314)

(declare-fun lt!1014149 () Option!6314)

(declare-fun lt!1014148 () Option!6314)

(declare-fun ++!8130 (List!34190 List!34190) List!34190)

(assert (=> b!2856991 (= e!1809323 (Some!6313 (++!8130 (v!34435 lt!1014149) (v!34435 lt!1014148))))))

(declare-fun b!2856992 () Bool)

(declare-fun c!460377 () Bool)

(assert (=> b!2856992 (= c!460377 ((_ is Union!8593) r!23423))))

(declare-fun e!1809325 () Option!6314)

(assert (=> b!2856992 (= e!1809321 e!1809325)))

(declare-fun bm!184032 () Bool)

(declare-fun call!184038 () Option!6314)

(assert (=> bm!184032 (= call!184038 (getLanguageWitness!245 (ite c!460377 (regTwo!17699 r!23423) (regOne!17698 r!23423))))))

(declare-fun b!2856993 () Bool)

(declare-fun e!1809320 () Option!6314)

(assert (=> b!2856993 (= e!1809320 None!6313)))

(declare-fun b!2856994 () Bool)

(declare-fun e!1809322 () Option!6314)

(assert (=> b!2856994 (= e!1809322 None!6313)))

(declare-fun b!2856995 () Bool)

(assert (=> b!2856995 (= e!1809323 None!6313)))

(declare-fun b!2856996 () Bool)

(declare-fun c!460379 () Bool)

(assert (=> b!2856996 (= c!460379 ((_ is ElementMatch!8593) r!23423))))

(assert (=> b!2856996 (= e!1809320 e!1809327)))

(declare-fun b!2856997 () Bool)

(assert (=> b!2856997 (= e!1809327 (Some!6313 (Cons!34066 (c!460354 r!23423) Nil!34066)))))

(declare-fun d!826526 () Bool)

(declare-fun c!460383 () Bool)

(assert (=> d!826526 (= c!460383 ((_ is EmptyExpr!8593) r!23423))))

(assert (=> d!826526 (= (getLanguageWitness!245 r!23423) e!1809324)))

(declare-fun b!2856987 () Bool)

(declare-fun c!460380 () Bool)

(assert (=> b!2856987 (= c!460380 ((_ is Some!6313) lt!1014148))))

(declare-fun call!184037 () Option!6314)

(assert (=> b!2856987 (= lt!1014148 call!184037)))

(assert (=> b!2856987 (= e!1809322 e!1809323)))

(declare-fun b!2856998 () Bool)

(assert (=> b!2856998 (= e!1809324 e!1809320)))

(declare-fun c!460378 () Bool)

(assert (=> b!2856998 (= c!460378 ((_ is EmptyLang!8593) r!23423))))

(declare-fun b!2856999 () Bool)

(assert (=> b!2856999 (= e!1809325 e!1809322)))

(assert (=> b!2856999 (= lt!1014149 call!184038)))

(declare-fun c!460384 () Bool)

(assert (=> b!2856999 (= c!460384 ((_ is Some!6313) lt!1014149))))

(declare-fun b!2857000 () Bool)

(assert (=> b!2857000 (= e!1809326 call!184038)))

(declare-fun b!2857001 () Bool)

(assert (=> b!2857001 (= e!1809325 e!1809326)))

(assert (=> b!2857001 (= lt!1014147 call!184037)))

(declare-fun c!460382 () Bool)

(assert (=> b!2857001 (= c!460382 ((_ is Some!6313) lt!1014147))))

(declare-fun bm!184033 () Bool)

(assert (=> bm!184033 (= call!184037 (getLanguageWitness!245 (ite c!460377 (regOne!17699 r!23423) (regTwo!17698 r!23423))))))

(declare-fun b!2857002 () Bool)

(assert (=> b!2857002 (= e!1809321 (Some!6313 Nil!34066))))

(assert (= (and d!826526 c!460383) b!2856989))

(assert (= (and d!826526 (not c!460383)) b!2856998))

(assert (= (and b!2856998 c!460378) b!2856993))

(assert (= (and b!2856998 (not c!460378)) b!2856996))

(assert (= (and b!2856996 c!460379) b!2856997))

(assert (= (and b!2856996 (not c!460379)) b!2856990))

(assert (= (and b!2856990 c!460381) b!2857002))

(assert (= (and b!2856990 (not c!460381)) b!2856992))

(assert (= (and b!2856992 c!460377) b!2857001))

(assert (= (and b!2856992 (not c!460377)) b!2856999))

(assert (= (and b!2857001 c!460382) b!2856988))

(assert (= (and b!2857001 (not c!460382)) b!2857000))

(assert (= (and b!2856999 c!460384) b!2856987))

(assert (= (and b!2856999 (not c!460384)) b!2856994))

(assert (= (and b!2856987 c!460380) b!2856991))

(assert (= (and b!2856987 (not c!460380)) b!2856995))

(assert (= (or b!2857001 b!2856987) bm!184033))

(assert (= (or b!2857000 b!2856999) bm!184032))

(declare-fun m!3279187 () Bool)

(assert (=> b!2856991 m!3279187))

(declare-fun m!3279189 () Bool)

(assert (=> bm!184032 m!3279189))

(declare-fun m!3279191 () Bool)

(assert (=> bm!184033 m!3279191))

(assert (=> b!2856925 d!826526))

(declare-fun b!2857063 () Bool)

(declare-fun e!1809360 () Bool)

(declare-fun e!1809358 () Bool)

(assert (=> b!2857063 (= e!1809360 e!1809358)))

(declare-fun res!1186862 () Bool)

(assert (=> b!2857063 (=> (not res!1186862) (not e!1809358))))

(declare-fun lt!1014158 () Bool)

(assert (=> b!2857063 (= res!1186862 (not lt!1014158))))

(declare-fun b!2857064 () Bool)

(declare-fun e!1809362 () Bool)

(declare-fun e!1809364 () Bool)

(assert (=> b!2857064 (= e!1809362 e!1809364)))

(declare-fun c!460409 () Bool)

(assert (=> b!2857064 (= c!460409 ((_ is EmptyLang!8593) r!23423))))

(declare-fun b!2857065 () Bool)

(declare-fun e!1809361 () Bool)

(assert (=> b!2857065 (= e!1809361 (not (= (head!6275 lt!1014131) (c!460354 r!23423))))))

(declare-fun b!2857066 () Bool)

(declare-fun res!1186868 () Bool)

(declare-fun e!1809359 () Bool)

(assert (=> b!2857066 (=> (not res!1186868) (not e!1809359))))

(declare-fun call!184045 () Bool)

(assert (=> b!2857066 (= res!1186868 (not call!184045))))

(declare-fun b!2857067 () Bool)

(assert (=> b!2857067 (= e!1809359 (= (head!6275 lt!1014131) (c!460354 r!23423)))))

(declare-fun b!2857068 () Bool)

(assert (=> b!2857068 (= e!1809364 (not lt!1014158))))

(declare-fun b!2857069 () Bool)

(declare-fun res!1186863 () Bool)

(assert (=> b!2857069 (=> res!1186863 e!1809361)))

(assert (=> b!2857069 (= res!1186863 (not (isEmpty!18600 (tail!4500 lt!1014131))))))

(declare-fun b!2857070 () Bool)

(declare-fun res!1186867 () Bool)

(assert (=> b!2857070 (=> res!1186867 e!1809360)))

(assert (=> b!2857070 (= res!1186867 e!1809359)))

(declare-fun res!1186866 () Bool)

(assert (=> b!2857070 (=> (not res!1186866) (not e!1809359))))

(assert (=> b!2857070 (= res!1186866 lt!1014158)))

(declare-fun b!2857071 () Bool)

(declare-fun e!1809363 () Bool)

(declare-fun nullable!2647 (Regex!8593) Bool)

(assert (=> b!2857071 (= e!1809363 (nullable!2647 r!23423))))

(declare-fun b!2857072 () Bool)

(assert (=> b!2857072 (= e!1809363 (matchR!3699 (derivativeStep!2281 r!23423 (head!6275 lt!1014131)) (tail!4500 lt!1014131)))))

(declare-fun b!2857073 () Bool)

(assert (=> b!2857073 (= e!1809362 (= lt!1014158 call!184045))))

(declare-fun b!2857074 () Bool)

(declare-fun res!1186861 () Bool)

(assert (=> b!2857074 (=> res!1186861 e!1809360)))

(assert (=> b!2857074 (= res!1186861 (not ((_ is ElementMatch!8593) r!23423)))))

(assert (=> b!2857074 (= e!1809364 e!1809360)))

(declare-fun bm!184040 () Bool)

(assert (=> bm!184040 (= call!184045 (isEmpty!18600 lt!1014131))))

(declare-fun b!2857075 () Bool)

(assert (=> b!2857075 (= e!1809358 e!1809361)))

(declare-fun res!1186865 () Bool)

(assert (=> b!2857075 (=> res!1186865 e!1809361)))

(assert (=> b!2857075 (= res!1186865 call!184045)))

(declare-fun d!826530 () Bool)

(assert (=> d!826530 e!1809362))

(declare-fun c!460408 () Bool)

(assert (=> d!826530 (= c!460408 ((_ is EmptyExpr!8593) r!23423))))

(assert (=> d!826530 (= lt!1014158 e!1809363)))

(declare-fun c!460407 () Bool)

(assert (=> d!826530 (= c!460407 (isEmpty!18600 lt!1014131))))

(assert (=> d!826530 (validRegex!3463 r!23423)))

(assert (=> d!826530 (= (matchR!3699 r!23423 lt!1014131) lt!1014158)))

(declare-fun b!2857076 () Bool)

(declare-fun res!1186864 () Bool)

(assert (=> b!2857076 (=> (not res!1186864) (not e!1809359))))

(assert (=> b!2857076 (= res!1186864 (isEmpty!18600 (tail!4500 lt!1014131)))))

(assert (= (and d!826530 c!460407) b!2857071))

(assert (= (and d!826530 (not c!460407)) b!2857072))

(assert (= (and d!826530 c!460408) b!2857073))

(assert (= (and d!826530 (not c!460408)) b!2857064))

(assert (= (and b!2857064 c!460409) b!2857068))

(assert (= (and b!2857064 (not c!460409)) b!2857074))

(assert (= (and b!2857074 (not res!1186861)) b!2857070))

(assert (= (and b!2857070 res!1186866) b!2857066))

(assert (= (and b!2857066 res!1186868) b!2857076))

(assert (= (and b!2857076 res!1186864) b!2857067))

(assert (= (and b!2857070 (not res!1186867)) b!2857063))

(assert (= (and b!2857063 res!1186862) b!2857075))

(assert (= (and b!2857075 (not res!1186865)) b!2857069))

(assert (= (and b!2857069 (not res!1186863)) b!2857065))

(assert (= (or b!2857073 b!2857066 b!2857075) bm!184040))

(declare-fun m!3279193 () Bool)

(assert (=> d!826530 m!3279193))

(assert (=> d!826530 m!3279141))

(assert (=> bm!184040 m!3279193))

(declare-fun m!3279195 () Bool)

(assert (=> b!2857071 m!3279195))

(assert (=> b!2857072 m!3279173))

(assert (=> b!2857072 m!3279173))

(declare-fun m!3279197 () Bool)

(assert (=> b!2857072 m!3279197))

(assert (=> b!2857072 m!3279179))

(assert (=> b!2857072 m!3279197))

(assert (=> b!2857072 m!3279179))

(declare-fun m!3279199 () Bool)

(assert (=> b!2857072 m!3279199))

(assert (=> b!2857067 m!3279173))

(assert (=> b!2857076 m!3279179))

(assert (=> b!2857076 m!3279179))

(declare-fun m!3279201 () Bool)

(assert (=> b!2857076 m!3279201))

(assert (=> b!2857069 m!3279179))

(assert (=> b!2857069 m!3279179))

(assert (=> b!2857069 m!3279201))

(assert (=> b!2857065 m!3279173))

(assert (=> b!2856925 d!826530))

(declare-fun b!2857111 () Bool)

(declare-fun e!1809390 () Bool)

(declare-fun call!184054 () Bool)

(assert (=> b!2857111 (= e!1809390 call!184054)))

(declare-fun c!460422 () Bool)

(declare-fun call!184055 () Bool)

(declare-fun bm!184049 () Bool)

(declare-fun c!460423 () Bool)

(assert (=> bm!184049 (= call!184055 (validRegex!3463 (ite c!460422 (reg!8922 r!23423) (ite c!460423 (regOne!17699 r!23423) (regOne!17698 r!23423)))))))

(declare-fun bm!184050 () Bool)

(declare-fun call!184056 () Bool)

(assert (=> bm!184050 (= call!184056 call!184055)))

(declare-fun bm!184051 () Bool)

(assert (=> bm!184051 (= call!184054 (validRegex!3463 (ite c!460423 (regTwo!17699 r!23423) (regTwo!17698 r!23423))))))

(declare-fun b!2857112 () Bool)

(declare-fun res!1186881 () Bool)

(declare-fun e!1809393 () Bool)

(assert (=> b!2857112 (=> (not res!1186881) (not e!1809393))))

(assert (=> b!2857112 (= res!1186881 call!184056)))

(declare-fun e!1809391 () Bool)

(assert (=> b!2857112 (= e!1809391 e!1809393)))

(declare-fun b!2857113 () Bool)

(declare-fun e!1809388 () Bool)

(assert (=> b!2857113 (= e!1809388 call!184055)))

(declare-fun b!2857114 () Bool)

(declare-fun e!1809387 () Bool)

(assert (=> b!2857114 (= e!1809387 e!1809391)))

(assert (=> b!2857114 (= c!460423 ((_ is Union!8593) r!23423))))

(declare-fun b!2857115 () Bool)

(declare-fun e!1809389 () Bool)

(assert (=> b!2857115 (= e!1809389 e!1809387)))

(assert (=> b!2857115 (= c!460422 ((_ is Star!8593) r!23423))))

(declare-fun d!826532 () Bool)

(declare-fun res!1186882 () Bool)

(assert (=> d!826532 (=> res!1186882 e!1809389)))

(assert (=> d!826532 (= res!1186882 ((_ is ElementMatch!8593) r!23423))))

(assert (=> d!826532 (= (validRegex!3463 r!23423) e!1809389)))

(declare-fun b!2857116 () Bool)

(declare-fun e!1809392 () Bool)

(assert (=> b!2857116 (= e!1809392 e!1809390)))

(declare-fun res!1186879 () Bool)

(assert (=> b!2857116 (=> (not res!1186879) (not e!1809390))))

(assert (=> b!2857116 (= res!1186879 call!184056)))

(declare-fun b!2857117 () Bool)

(assert (=> b!2857117 (= e!1809393 call!184054)))

(declare-fun b!2857118 () Bool)

(assert (=> b!2857118 (= e!1809387 e!1809388)))

(declare-fun res!1186883 () Bool)

(assert (=> b!2857118 (= res!1186883 (not (nullable!2647 (reg!8922 r!23423))))))

(assert (=> b!2857118 (=> (not res!1186883) (not e!1809388))))

(declare-fun b!2857119 () Bool)

(declare-fun res!1186880 () Bool)

(assert (=> b!2857119 (=> res!1186880 e!1809392)))

(assert (=> b!2857119 (= res!1186880 (not ((_ is Concat!13914) r!23423)))))

(assert (=> b!2857119 (= e!1809391 e!1809392)))

(assert (= (and d!826532 (not res!1186882)) b!2857115))

(assert (= (and b!2857115 c!460422) b!2857118))

(assert (= (and b!2857115 (not c!460422)) b!2857114))

(assert (= (and b!2857118 res!1186883) b!2857113))

(assert (= (and b!2857114 c!460423) b!2857112))

(assert (= (and b!2857114 (not c!460423)) b!2857119))

(assert (= (and b!2857112 res!1186881) b!2857117))

(assert (= (and b!2857119 (not res!1186880)) b!2857116))

(assert (= (and b!2857116 res!1186879) b!2857111))

(assert (= (or b!2857117 b!2857111) bm!184051))

(assert (= (or b!2857112 b!2857116) bm!184050))

(assert (= (or b!2857113 bm!184050) bm!184049))

(declare-fun m!3279203 () Bool)

(assert (=> bm!184049 m!3279203))

(declare-fun m!3279205 () Bool)

(assert (=> bm!184051 m!3279205))

(declare-fun m!3279207 () Bool)

(assert (=> b!2857118 m!3279207))

(assert (=> start!278078 d!826532))

(declare-fun b!2857131 () Bool)

(declare-fun e!1809396 () Bool)

(declare-fun tp!919516 () Bool)

(declare-fun tp!919515 () Bool)

(assert (=> b!2857131 (= e!1809396 (and tp!919516 tp!919515))))

(declare-fun b!2857132 () Bool)

(declare-fun tp!919518 () Bool)

(assert (=> b!2857132 (= e!1809396 tp!919518)))

(declare-fun b!2857133 () Bool)

(declare-fun tp!919517 () Bool)

(declare-fun tp!919519 () Bool)

(assert (=> b!2857133 (= e!1809396 (and tp!919517 tp!919519))))

(assert (=> b!2856924 (= tp!919501 e!1809396)))

(declare-fun b!2857130 () Bool)

(assert (=> b!2857130 (= e!1809396 tp_is_empty!14923)))

(assert (= (and b!2856924 ((_ is ElementMatch!8593) (regOne!17699 r!23423))) b!2857130))

(assert (= (and b!2856924 ((_ is Concat!13914) (regOne!17699 r!23423))) b!2857131))

(assert (= (and b!2856924 ((_ is Star!8593) (regOne!17699 r!23423))) b!2857132))

(assert (= (and b!2856924 ((_ is Union!8593) (regOne!17699 r!23423))) b!2857133))

(declare-fun b!2857135 () Bool)

(declare-fun e!1809397 () Bool)

(declare-fun tp!919521 () Bool)

(declare-fun tp!919520 () Bool)

(assert (=> b!2857135 (= e!1809397 (and tp!919521 tp!919520))))

(declare-fun b!2857136 () Bool)

(declare-fun tp!919523 () Bool)

(assert (=> b!2857136 (= e!1809397 tp!919523)))

(declare-fun b!2857137 () Bool)

(declare-fun tp!919522 () Bool)

(declare-fun tp!919524 () Bool)

(assert (=> b!2857137 (= e!1809397 (and tp!919522 tp!919524))))

(assert (=> b!2856924 (= tp!919499 e!1809397)))

(declare-fun b!2857134 () Bool)

(assert (=> b!2857134 (= e!1809397 tp_is_empty!14923)))

(assert (= (and b!2856924 ((_ is ElementMatch!8593) (regTwo!17699 r!23423))) b!2857134))

(assert (= (and b!2856924 ((_ is Concat!13914) (regTwo!17699 r!23423))) b!2857135))

(assert (= (and b!2856924 ((_ is Star!8593) (regTwo!17699 r!23423))) b!2857136))

(assert (= (and b!2856924 ((_ is Union!8593) (regTwo!17699 r!23423))) b!2857137))

(declare-fun b!2857139 () Bool)

(declare-fun e!1809398 () Bool)

(declare-fun tp!919526 () Bool)

(declare-fun tp!919525 () Bool)

(assert (=> b!2857139 (= e!1809398 (and tp!919526 tp!919525))))

(declare-fun b!2857140 () Bool)

(declare-fun tp!919528 () Bool)

(assert (=> b!2857140 (= e!1809398 tp!919528)))

(declare-fun b!2857141 () Bool)

(declare-fun tp!919527 () Bool)

(declare-fun tp!919529 () Bool)

(assert (=> b!2857141 (= e!1809398 (and tp!919527 tp!919529))))

(assert (=> b!2856930 (= tp!919504 e!1809398)))

(declare-fun b!2857138 () Bool)

(assert (=> b!2857138 (= e!1809398 tp_is_empty!14923)))

(assert (= (and b!2856930 ((_ is ElementMatch!8593) (regOne!17698 r!23423))) b!2857138))

(assert (= (and b!2856930 ((_ is Concat!13914) (regOne!17698 r!23423))) b!2857139))

(assert (= (and b!2856930 ((_ is Star!8593) (regOne!17698 r!23423))) b!2857140))

(assert (= (and b!2856930 ((_ is Union!8593) (regOne!17698 r!23423))) b!2857141))

(declare-fun b!2857143 () Bool)

(declare-fun e!1809399 () Bool)

(declare-fun tp!919531 () Bool)

(declare-fun tp!919530 () Bool)

(assert (=> b!2857143 (= e!1809399 (and tp!919531 tp!919530))))

(declare-fun b!2857144 () Bool)

(declare-fun tp!919533 () Bool)

(assert (=> b!2857144 (= e!1809399 tp!919533)))

(declare-fun b!2857145 () Bool)

(declare-fun tp!919532 () Bool)

(declare-fun tp!919534 () Bool)

(assert (=> b!2857145 (= e!1809399 (and tp!919532 tp!919534))))

(assert (=> b!2856930 (= tp!919500 e!1809399)))

(declare-fun b!2857142 () Bool)

(assert (=> b!2857142 (= e!1809399 tp_is_empty!14923)))

(assert (= (and b!2856930 ((_ is ElementMatch!8593) (regTwo!17698 r!23423))) b!2857142))

(assert (= (and b!2856930 ((_ is Concat!13914) (regTwo!17698 r!23423))) b!2857143))

(assert (= (and b!2856930 ((_ is Star!8593) (regTwo!17698 r!23423))) b!2857144))

(assert (= (and b!2856930 ((_ is Union!8593) (regTwo!17698 r!23423))) b!2857145))

(declare-fun b!2857147 () Bool)

(declare-fun e!1809400 () Bool)

(declare-fun tp!919536 () Bool)

(declare-fun tp!919535 () Bool)

(assert (=> b!2857147 (= e!1809400 (and tp!919536 tp!919535))))

(declare-fun b!2857148 () Bool)

(declare-fun tp!919538 () Bool)

(assert (=> b!2857148 (= e!1809400 tp!919538)))

(declare-fun b!2857149 () Bool)

(declare-fun tp!919537 () Bool)

(declare-fun tp!919539 () Bool)

(assert (=> b!2857149 (= e!1809400 (and tp!919537 tp!919539))))

(assert (=> b!2856926 (= tp!919502 e!1809400)))

(declare-fun b!2857146 () Bool)

(assert (=> b!2857146 (= e!1809400 tp_is_empty!14923)))

(assert (= (and b!2856926 ((_ is ElementMatch!8593) (reg!8922 r!23423))) b!2857146))

(assert (= (and b!2856926 ((_ is Concat!13914) (reg!8922 r!23423))) b!2857147))

(assert (= (and b!2856926 ((_ is Star!8593) (reg!8922 r!23423))) b!2857148))

(assert (= (and b!2856926 ((_ is Union!8593) (reg!8922 r!23423))) b!2857149))

(declare-fun b!2857154 () Bool)

(declare-fun e!1809403 () Bool)

(declare-fun tp!919542 () Bool)

(assert (=> b!2857154 (= e!1809403 (and tp_is_empty!14923 tp!919542))))

(assert (=> b!2856927 (= tp!919503 e!1809403)))

(assert (= (and b!2856927 ((_ is Cons!34066) (t!233221 prefix!1470))) b!2857154))

(check-sat (not b!2856991) (not d!826512) (not b!2857139) (not bm!184040) (not b!2857072) (not b!2857067) (not b!2857143) (not b!2857118) (not b!2856952) (not b!2856953) (not b!2856935) (not b!2857148) (not bm!184049) (not b!2857137) (not b!2857140) (not b!2857071) (not bm!184033) (not b!2857135) (not b!2857132) (not b!2856936) (not d!826518) (not b!2857145) (not b!2856954) (not b!2857065) (not bm!184032) (not b!2857069) (not bm!184051) (not b!2857141) (not b!2857076) (not b!2857131) (not b!2857154) (not b!2857133) tp_is_empty!14923 (not b!2857147) (not b!2857144) (not b!2857149) (not b!2857136) (not d!826530))
(check-sat)
