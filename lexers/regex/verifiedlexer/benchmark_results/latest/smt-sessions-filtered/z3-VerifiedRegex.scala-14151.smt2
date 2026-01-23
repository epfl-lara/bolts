; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743086 () Bool)

(assert start!743086)

(declare-fun b!7848057 () Bool)

(declare-fun e!4639496 () Bool)

(declare-datatypes ((C!42476 0))(
  ( (C!42477 (val!31700 Int)) )
))
(declare-datatypes ((Regex!21075 0))(
  ( (ElementMatch!21075 (c!1442481 C!42476)) (Concat!29920 (regOne!42662 Regex!21075) (regTwo!42662 Regex!21075)) (EmptyExpr!21075) (Star!21075 (reg!21404 Regex!21075)) (EmptyLang!21075) (Union!21075 (regOne!42663 Regex!21075) (regTwo!42663 Regex!21075)) )
))
(declare-fun lt!2679442 () Regex!21075)

(declare-fun validRegex!11485 (Regex!21075) Bool)

(assert (=> b!7848057 (= e!4639496 (validRegex!11485 lt!2679442))))

(declare-fun b!7848058 () Bool)

(declare-fun e!4639500 () Bool)

(declare-fun e!4639503 () Bool)

(assert (=> b!7848058 (= e!4639500 (not e!4639503))))

(declare-fun res!3121044 () Bool)

(assert (=> b!7848058 (=> res!3121044 e!4639503)))

(declare-fun r1!6227 () Regex!21075)

(declare-fun nullable!9349 (Regex!21075) Bool)

(assert (=> b!7848058 (= res!3121044 (nullable!9349 r1!6227))))

(declare-fun lt!2679441 () Regex!21075)

(declare-datatypes ((List!73934 0))(
  ( (Nil!73810) (Cons!73810 (h!80258 C!42476) (t!388669 List!73934)) )
))
(declare-fun lt!2679444 () List!73934)

(declare-fun matchR!10511 (Regex!21075 List!73934) Bool)

(assert (=> b!7848058 (matchR!10511 lt!2679441 lt!2679444)))

(declare-fun s1!4084 () List!73934)

(declare-fun s2!3706 () List!73934)

(declare-fun ++!18085 (List!73934 List!73934) List!73934)

(assert (=> b!7848058 (= lt!2679444 (++!18085 (t!388669 s1!4084) s2!3706))))

(declare-fun lt!2679440 () Regex!21075)

(declare-fun r2!6165 () Regex!21075)

(assert (=> b!7848058 (= lt!2679441 (Concat!29920 lt!2679440 r2!6165))))

(declare-datatypes ((Unit!168896 0))(
  ( (Unit!168897) )
))
(declare-fun lt!2679443 () Unit!168896)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!446 (Regex!21075 Regex!21075 List!73934 List!73934) Unit!168896)

(assert (=> b!7848058 (= lt!2679443 (lemmaTwoRegexMatchThenConcatMatchesConcatString!446 lt!2679440 r2!6165 (t!388669 s1!4084) s2!3706))))

(declare-fun derivativeStep!6312 (Regex!21075 C!42476) Regex!21075)

(assert (=> b!7848058 (= lt!2679440 (derivativeStep!6312 r1!6227 (h!80258 s1!4084)))))

(declare-fun b!7848059 () Bool)

(declare-fun e!4639497 () Bool)

(declare-fun tp_is_empty!52549 () Bool)

(assert (=> b!7848059 (= e!4639497 tp_is_empty!52549)))

(declare-fun b!7848060 () Bool)

(declare-fun tp!2323887 () Bool)

(declare-fun tp!2323883 () Bool)

(assert (=> b!7848060 (= e!4639497 (and tp!2323887 tp!2323883))))

(declare-fun b!7848061 () Bool)

(declare-fun e!4639498 () Bool)

(assert (=> b!7848061 (= e!4639503 e!4639498)))

(declare-fun res!3121043 () Bool)

(assert (=> b!7848061 (=> res!3121043 e!4639498)))

(declare-fun lt!2679445 () Regex!21075)

(assert (=> b!7848061 (= res!3121043 (not (= (derivativeStep!6312 lt!2679442 (h!80258 s1!4084)) lt!2679445)))))

(assert (=> b!7848061 (= lt!2679445 (Union!21075 lt!2679441 EmptyLang!21075))))

(assert (=> b!7848061 (= lt!2679442 (Concat!29920 r1!6227 r2!6165))))

(declare-fun b!7848062 () Bool)

(declare-fun tp!2323885 () Bool)

(assert (=> b!7848062 (= e!4639497 tp!2323885)))

(declare-fun b!7848063 () Bool)

(declare-fun res!3121048 () Bool)

(assert (=> b!7848063 (=> (not res!3121048) (not e!4639500))))

(assert (=> b!7848063 (= res!3121048 (matchR!10511 r1!6227 s1!4084))))

(declare-fun b!7848064 () Bool)

(declare-fun e!4639499 () Bool)

(declare-fun tp!2323888 () Bool)

(declare-fun tp!2323891 () Bool)

(assert (=> b!7848064 (= e!4639499 (and tp!2323888 tp!2323891))))

(declare-fun b!7848065 () Bool)

(declare-fun e!4639501 () Bool)

(declare-fun tp!2323890 () Bool)

(assert (=> b!7848065 (= e!4639501 (and tp_is_empty!52549 tp!2323890))))

(declare-fun res!3121042 () Bool)

(assert (=> start!743086 (=> (not res!3121042) (not e!4639500))))

(assert (=> start!743086 (= res!3121042 (validRegex!11485 r1!6227))))

(assert (=> start!743086 e!4639500))

(assert (=> start!743086 e!4639497))

(assert (=> start!743086 e!4639499))

(assert (=> start!743086 e!4639501))

(declare-fun e!4639502 () Bool)

(assert (=> start!743086 e!4639502))

(declare-fun b!7848066 () Bool)

(declare-fun res!3121046 () Bool)

(assert (=> b!7848066 (=> (not res!3121046) (not e!4639500))))

(assert (=> b!7848066 (= res!3121046 (validRegex!11485 r2!6165))))

(declare-fun b!7848067 () Bool)

(assert (=> b!7848067 (= e!4639498 e!4639496)))

(declare-fun res!3121045 () Bool)

(assert (=> b!7848067 (=> res!3121045 e!4639496)))

(assert (=> b!7848067 (= res!3121045 (not (matchR!10511 lt!2679442 (++!18085 s1!4084 s2!3706))))))

(assert (=> b!7848067 (matchR!10511 lt!2679445 lt!2679444)))

(declare-fun lt!2679439 () Unit!168896)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!124 (Regex!21075 Regex!21075 List!73934) Unit!168896)

(assert (=> b!7848067 (= lt!2679439 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!124 lt!2679441 EmptyLang!21075 lt!2679444))))

(declare-fun b!7848068 () Bool)

(declare-fun tp!2323881 () Bool)

(assert (=> b!7848068 (= e!4639499 tp!2323881)))

(declare-fun b!7848069 () Bool)

(declare-fun tp!2323886 () Bool)

(declare-fun tp!2323892 () Bool)

(assert (=> b!7848069 (= e!4639499 (and tp!2323886 tp!2323892))))

(declare-fun b!7848070 () Bool)

(assert (=> b!7848070 (= e!4639499 tp_is_empty!52549)))

(declare-fun b!7848071 () Bool)

(declare-fun tp!2323889 () Bool)

(assert (=> b!7848071 (= e!4639502 (and tp_is_empty!52549 tp!2323889))))

(declare-fun b!7848072 () Bool)

(declare-fun res!3121047 () Bool)

(assert (=> b!7848072 (=> (not res!3121047) (not e!4639500))))

(assert (=> b!7848072 (= res!3121047 (matchR!10511 r2!6165 s2!3706))))

(declare-fun b!7848073 () Bool)

(declare-fun tp!2323882 () Bool)

(declare-fun tp!2323884 () Bool)

(assert (=> b!7848073 (= e!4639497 (and tp!2323882 tp!2323884))))

(declare-fun b!7848074 () Bool)

(declare-fun res!3121041 () Bool)

(assert (=> b!7848074 (=> (not res!3121041) (not e!4639500))))

(get-info :version)

(assert (=> b!7848074 (= res!3121041 ((_ is Cons!73810) s1!4084))))

(assert (= (and start!743086 res!3121042) b!7848066))

(assert (= (and b!7848066 res!3121046) b!7848063))

(assert (= (and b!7848063 res!3121048) b!7848072))

(assert (= (and b!7848072 res!3121047) b!7848074))

(assert (= (and b!7848074 res!3121041) b!7848058))

(assert (= (and b!7848058 (not res!3121044)) b!7848061))

(assert (= (and b!7848061 (not res!3121043)) b!7848067))

(assert (= (and b!7848067 (not res!3121045)) b!7848057))

(assert (= (and start!743086 ((_ is ElementMatch!21075) r1!6227)) b!7848059))

(assert (= (and start!743086 ((_ is Concat!29920) r1!6227)) b!7848060))

(assert (= (and start!743086 ((_ is Star!21075) r1!6227)) b!7848062))

(assert (= (and start!743086 ((_ is Union!21075) r1!6227)) b!7848073))

(assert (= (and start!743086 ((_ is ElementMatch!21075) r2!6165)) b!7848070))

(assert (= (and start!743086 ((_ is Concat!29920) r2!6165)) b!7848069))

(assert (= (and start!743086 ((_ is Star!21075) r2!6165)) b!7848068))

(assert (= (and start!743086 ((_ is Union!21075) r2!6165)) b!7848064))

(assert (= (and start!743086 ((_ is Cons!73810) s1!4084)) b!7848065))

(assert (= (and start!743086 ((_ is Cons!73810) s2!3706)) b!7848071))

(declare-fun m!8256890 () Bool)

(assert (=> start!743086 m!8256890))

(declare-fun m!8256892 () Bool)

(assert (=> b!7848067 m!8256892))

(assert (=> b!7848067 m!8256892))

(declare-fun m!8256894 () Bool)

(assert (=> b!7848067 m!8256894))

(declare-fun m!8256896 () Bool)

(assert (=> b!7848067 m!8256896))

(declare-fun m!8256898 () Bool)

(assert (=> b!7848067 m!8256898))

(declare-fun m!8256900 () Bool)

(assert (=> b!7848057 m!8256900))

(declare-fun m!8256902 () Bool)

(assert (=> b!7848066 m!8256902))

(declare-fun m!8256904 () Bool)

(assert (=> b!7848058 m!8256904))

(declare-fun m!8256906 () Bool)

(assert (=> b!7848058 m!8256906))

(declare-fun m!8256908 () Bool)

(assert (=> b!7848058 m!8256908))

(declare-fun m!8256910 () Bool)

(assert (=> b!7848058 m!8256910))

(declare-fun m!8256912 () Bool)

(assert (=> b!7848058 m!8256912))

(declare-fun m!8256914 () Bool)

(assert (=> b!7848063 m!8256914))

(declare-fun m!8256916 () Bool)

(assert (=> b!7848072 m!8256916))

(declare-fun m!8256918 () Bool)

(assert (=> b!7848061 m!8256918))

(check-sat (not b!7848068) (not b!7848065) (not b!7848057) (not b!7848067) (not b!7848072) (not b!7848071) tp_is_empty!52549 (not b!7848063) (not b!7848073) (not b!7848069) (not b!7848062) (not b!7848066) (not b!7848058) (not b!7848064) (not start!743086) (not b!7848061) (not b!7848060))
(check-sat)
(get-model)

(declare-fun b!7848111 () Bool)

(declare-fun e!4639536 () Bool)

(declare-fun call!727257 () Bool)

(assert (=> b!7848111 (= e!4639536 call!727257)))

(declare-fun b!7848112 () Bool)

(declare-fun res!3121069 () Bool)

(assert (=> b!7848112 (=> (not res!3121069) (not e!4639536))))

(declare-fun call!727255 () Bool)

(assert (=> b!7848112 (= res!3121069 call!727255)))

(declare-fun e!4639537 () Bool)

(assert (=> b!7848112 (= e!4639537 e!4639536)))

(declare-fun b!7848113 () Bool)

(declare-fun e!4639533 () Bool)

(assert (=> b!7848113 (= e!4639533 e!4639537)))

(declare-fun c!1442491 () Bool)

(assert (=> b!7848113 (= c!1442491 ((_ is Union!21075) r2!6165))))

(declare-fun d!2352956 () Bool)

(declare-fun res!3121073 () Bool)

(declare-fun e!4639535 () Bool)

(assert (=> d!2352956 (=> res!3121073 e!4639535)))

(assert (=> d!2352956 (= res!3121073 ((_ is ElementMatch!21075) r2!6165))))

(assert (=> d!2352956 (= (validRegex!11485 r2!6165) e!4639535)))

(declare-fun call!727256 () Bool)

(declare-fun c!1442490 () Bool)

(declare-fun bm!727250 () Bool)

(assert (=> bm!727250 (= call!727256 (validRegex!11485 (ite c!1442490 (reg!21404 r2!6165) (ite c!1442491 (regTwo!42663 r2!6165) (regOne!42662 r2!6165)))))))

(declare-fun bm!727251 () Bool)

(assert (=> bm!727251 (= call!727255 (validRegex!11485 (ite c!1442491 (regOne!42663 r2!6165) (regTwo!42662 r2!6165))))))

(declare-fun bm!727252 () Bool)

(assert (=> bm!727252 (= call!727257 call!727256)))

(declare-fun b!7848114 () Bool)

(declare-fun e!4639532 () Bool)

(assert (=> b!7848114 (= e!4639533 e!4639532)))

(declare-fun res!3121070 () Bool)

(assert (=> b!7848114 (= res!3121070 (not (nullable!9349 (reg!21404 r2!6165))))))

(assert (=> b!7848114 (=> (not res!3121070) (not e!4639532))))

(declare-fun b!7848115 () Bool)

(declare-fun res!3121072 () Bool)

(declare-fun e!4639538 () Bool)

(assert (=> b!7848115 (=> res!3121072 e!4639538)))

(assert (=> b!7848115 (= res!3121072 (not ((_ is Concat!29920) r2!6165)))))

(assert (=> b!7848115 (= e!4639537 e!4639538)))

(declare-fun b!7848116 () Bool)

(assert (=> b!7848116 (= e!4639532 call!727256)))

(declare-fun b!7848117 () Bool)

(declare-fun e!4639534 () Bool)

(assert (=> b!7848117 (= e!4639534 call!727255)))

(declare-fun b!7848118 () Bool)

(assert (=> b!7848118 (= e!4639538 e!4639534)))

(declare-fun res!3121071 () Bool)

(assert (=> b!7848118 (=> (not res!3121071) (not e!4639534))))

(assert (=> b!7848118 (= res!3121071 call!727257)))

(declare-fun b!7848119 () Bool)

(assert (=> b!7848119 (= e!4639535 e!4639533)))

(assert (=> b!7848119 (= c!1442490 ((_ is Star!21075) r2!6165))))

(assert (= (and d!2352956 (not res!3121073)) b!7848119))

(assert (= (and b!7848119 c!1442490) b!7848114))

(assert (= (and b!7848119 (not c!1442490)) b!7848113))

(assert (= (and b!7848114 res!3121070) b!7848116))

(assert (= (and b!7848113 c!1442491) b!7848112))

(assert (= (and b!7848113 (not c!1442491)) b!7848115))

(assert (= (and b!7848112 res!3121069) b!7848111))

(assert (= (and b!7848115 (not res!3121072)) b!7848118))

(assert (= (and b!7848118 res!3121071) b!7848117))

(assert (= (or b!7848112 b!7848117) bm!727251))

(assert (= (or b!7848111 b!7848118) bm!727252))

(assert (= (or b!7848116 bm!727252) bm!727250))

(declare-fun m!8256920 () Bool)

(assert (=> bm!727250 m!8256920))

(declare-fun m!8256922 () Bool)

(assert (=> bm!727251 m!8256922))

(declare-fun m!8256924 () Bool)

(assert (=> b!7848114 m!8256924))

(assert (=> b!7848066 d!2352956))

(declare-fun bm!727268 () Bool)

(declare-fun call!727276 () Regex!21075)

(declare-fun call!727275 () Regex!21075)

(assert (=> bm!727268 (= call!727276 call!727275)))

(declare-fun b!7848177 () Bool)

(declare-fun e!4639571 () Regex!21075)

(declare-fun e!4639572 () Regex!21075)

(assert (=> b!7848177 (= e!4639571 e!4639572)))

(declare-fun c!1442514 () Bool)

(assert (=> b!7848177 (= c!1442514 ((_ is ElementMatch!21075) lt!2679442))))

(declare-fun b!7848178 () Bool)

(declare-fun e!4639570 () Regex!21075)

(declare-fun e!4639574 () Regex!21075)

(assert (=> b!7848178 (= e!4639570 e!4639574)))

(declare-fun c!1442510 () Bool)

(assert (=> b!7848178 (= c!1442510 ((_ is Star!21075) lt!2679442))))

(declare-fun b!7848179 () Bool)

(declare-fun call!727273 () Regex!21075)

(assert (=> b!7848179 (= e!4639574 (Concat!29920 call!727273 lt!2679442))))

(declare-fun b!7848180 () Bool)

(declare-fun c!1442513 () Bool)

(assert (=> b!7848180 (= c!1442513 (nullable!9349 (regOne!42662 lt!2679442)))))

(declare-fun e!4639573 () Regex!21075)

(assert (=> b!7848180 (= e!4639574 e!4639573)))

(declare-fun b!7848181 () Bool)

(declare-fun c!1442511 () Bool)

(assert (=> b!7848181 (= c!1442511 ((_ is Union!21075) lt!2679442))))

(assert (=> b!7848181 (= e!4639572 e!4639570)))

(declare-fun b!7848182 () Bool)

(assert (=> b!7848182 (= e!4639571 EmptyLang!21075)))

(declare-fun bm!727270 () Bool)

(declare-fun call!727274 () Regex!21075)

(assert (=> bm!727270 (= call!727274 (derivativeStep!6312 (ite c!1442511 (regTwo!42663 lt!2679442) (ite c!1442510 (reg!21404 lt!2679442) (regOne!42662 lt!2679442))) (h!80258 s1!4084)))))

(declare-fun b!7848183 () Bool)

(assert (=> b!7848183 (= e!4639572 (ite (= (h!80258 s1!4084) (c!1442481 lt!2679442)) EmptyExpr!21075 EmptyLang!21075))))

(declare-fun b!7848184 () Bool)

(assert (=> b!7848184 (= e!4639570 (Union!21075 call!727275 call!727274))))

(declare-fun b!7848185 () Bool)

(assert (=> b!7848185 (= e!4639573 (Union!21075 (Concat!29920 call!727273 (regTwo!42662 lt!2679442)) call!727276))))

(declare-fun bm!727271 () Bool)

(assert (=> bm!727271 (= call!727275 (derivativeStep!6312 (ite c!1442511 (regOne!42663 lt!2679442) (ite c!1442513 (regTwo!42662 lt!2679442) (regOne!42662 lt!2679442))) (h!80258 s1!4084)))))

(declare-fun b!7848186 () Bool)

(assert (=> b!7848186 (= e!4639573 (Union!21075 (Concat!29920 call!727276 (regTwo!42662 lt!2679442)) EmptyLang!21075))))

(declare-fun bm!727269 () Bool)

(assert (=> bm!727269 (= call!727273 call!727274)))

(declare-fun d!2352960 () Bool)

(declare-fun lt!2679450 () Regex!21075)

(assert (=> d!2352960 (validRegex!11485 lt!2679450)))

(assert (=> d!2352960 (= lt!2679450 e!4639571)))

(declare-fun c!1442512 () Bool)

(assert (=> d!2352960 (= c!1442512 (or ((_ is EmptyExpr!21075) lt!2679442) ((_ is EmptyLang!21075) lt!2679442)))))

(assert (=> d!2352960 (validRegex!11485 lt!2679442)))

(assert (=> d!2352960 (= (derivativeStep!6312 lt!2679442 (h!80258 s1!4084)) lt!2679450)))

(assert (= (and d!2352960 c!1442512) b!7848182))

(assert (= (and d!2352960 (not c!1442512)) b!7848177))

(assert (= (and b!7848177 c!1442514) b!7848183))

(assert (= (and b!7848177 (not c!1442514)) b!7848181))

(assert (= (and b!7848181 c!1442511) b!7848184))

(assert (= (and b!7848181 (not c!1442511)) b!7848178))

(assert (= (and b!7848178 c!1442510) b!7848179))

(assert (= (and b!7848178 (not c!1442510)) b!7848180))

(assert (= (and b!7848180 c!1442513) b!7848185))

(assert (= (and b!7848180 (not c!1442513)) b!7848186))

(assert (= (or b!7848185 b!7848186) bm!727268))

(assert (= (or b!7848179 b!7848185) bm!727269))

(assert (= (or b!7848184 bm!727269) bm!727270))

(assert (= (or b!7848184 bm!727268) bm!727271))

(declare-fun m!8256932 () Bool)

(assert (=> b!7848180 m!8256932))

(declare-fun m!8256934 () Bool)

(assert (=> bm!727270 m!8256934))

(declare-fun m!8256936 () Bool)

(assert (=> bm!727271 m!8256936))

(declare-fun m!8256938 () Bool)

(assert (=> d!2352960 m!8256938))

(assert (=> d!2352960 m!8256900))

(assert (=> b!7848061 d!2352960))

(declare-fun b!7848246 () Bool)

(declare-fun e!4639612 () Bool)

(assert (=> b!7848246 (= e!4639612 (nullable!9349 r2!6165))))

(declare-fun b!7848247 () Bool)

(declare-fun res!3121136 () Bool)

(declare-fun e!4639607 () Bool)

(assert (=> b!7848247 (=> res!3121136 e!4639607)))

(assert (=> b!7848247 (= res!3121136 (not ((_ is ElementMatch!21075) r2!6165)))))

(declare-fun e!4639609 () Bool)

(assert (=> b!7848247 (= e!4639609 e!4639607)))

(declare-fun b!7848248 () Bool)

(declare-fun lt!2679458 () Bool)

(assert (=> b!7848248 (= e!4639609 (not lt!2679458))))

(declare-fun b!7848249 () Bool)

(declare-fun e!4639608 () Bool)

(declare-fun call!727281 () Bool)

(assert (=> b!7848249 (= e!4639608 (= lt!2679458 call!727281))))

(declare-fun b!7848250 () Bool)

(declare-fun e!4639610 () Bool)

(assert (=> b!7848250 (= e!4639607 e!4639610)))

(declare-fun res!3121137 () Bool)

(assert (=> b!7848250 (=> (not res!3121137) (not e!4639610))))

(assert (=> b!7848250 (= res!3121137 (not lt!2679458))))

(declare-fun b!7848251 () Bool)

(declare-fun head!16034 (List!73934) C!42476)

(declare-fun tail!15577 (List!73934) List!73934)

(assert (=> b!7848251 (= e!4639612 (matchR!10511 (derivativeStep!6312 r2!6165 (head!16034 s2!3706)) (tail!15577 s2!3706)))))

(declare-fun b!7848252 () Bool)

(declare-fun res!3121135 () Bool)

(declare-fun e!4639611 () Bool)

(assert (=> b!7848252 (=> res!3121135 e!4639611)))

(declare-fun isEmpty!42323 (List!73934) Bool)

(assert (=> b!7848252 (= res!3121135 (not (isEmpty!42323 (tail!15577 s2!3706))))))

(declare-fun b!7848253 () Bool)

(declare-fun res!3121131 () Bool)

(declare-fun e!4639606 () Bool)

(assert (=> b!7848253 (=> (not res!3121131) (not e!4639606))))

(assert (=> b!7848253 (= res!3121131 (not call!727281))))

(declare-fun b!7848254 () Bool)

(declare-fun res!3121133 () Bool)

(assert (=> b!7848254 (=> (not res!3121133) (not e!4639606))))

(assert (=> b!7848254 (= res!3121133 (isEmpty!42323 (tail!15577 s2!3706)))))

(declare-fun d!2352964 () Bool)

(assert (=> d!2352964 e!4639608))

(declare-fun c!1442527 () Bool)

(assert (=> d!2352964 (= c!1442527 ((_ is EmptyExpr!21075) r2!6165))))

(assert (=> d!2352964 (= lt!2679458 e!4639612)))

(declare-fun c!1442528 () Bool)

(assert (=> d!2352964 (= c!1442528 (isEmpty!42323 s2!3706))))

(assert (=> d!2352964 (validRegex!11485 r2!6165)))

(assert (=> d!2352964 (= (matchR!10511 r2!6165 s2!3706) lt!2679458)))

(declare-fun b!7848255 () Bool)

(assert (=> b!7848255 (= e!4639608 e!4639609)))

(declare-fun c!1442529 () Bool)

(assert (=> b!7848255 (= c!1442529 ((_ is EmptyLang!21075) r2!6165))))

(declare-fun b!7848256 () Bool)

(assert (=> b!7848256 (= e!4639606 (= (head!16034 s2!3706) (c!1442481 r2!6165)))))

(declare-fun b!7848257 () Bool)

(assert (=> b!7848257 (= e!4639611 (not (= (head!16034 s2!3706) (c!1442481 r2!6165))))))

(declare-fun b!7848258 () Bool)

(assert (=> b!7848258 (= e!4639610 e!4639611)))

(declare-fun res!3121132 () Bool)

(assert (=> b!7848258 (=> res!3121132 e!4639611)))

(assert (=> b!7848258 (= res!3121132 call!727281)))

(declare-fun b!7848259 () Bool)

(declare-fun res!3121134 () Bool)

(assert (=> b!7848259 (=> res!3121134 e!4639607)))

(assert (=> b!7848259 (= res!3121134 e!4639606)))

(declare-fun res!3121130 () Bool)

(assert (=> b!7848259 (=> (not res!3121130) (not e!4639606))))

(assert (=> b!7848259 (= res!3121130 lt!2679458)))

(declare-fun bm!727276 () Bool)

(assert (=> bm!727276 (= call!727281 (isEmpty!42323 s2!3706))))

(assert (= (and d!2352964 c!1442528) b!7848246))

(assert (= (and d!2352964 (not c!1442528)) b!7848251))

(assert (= (and d!2352964 c!1442527) b!7848249))

(assert (= (and d!2352964 (not c!1442527)) b!7848255))

(assert (= (and b!7848255 c!1442529) b!7848248))

(assert (= (and b!7848255 (not c!1442529)) b!7848247))

(assert (= (and b!7848247 (not res!3121136)) b!7848259))

(assert (= (and b!7848259 res!3121130) b!7848253))

(assert (= (and b!7848253 res!3121131) b!7848254))

(assert (= (and b!7848254 res!3121133) b!7848256))

(assert (= (and b!7848259 (not res!3121134)) b!7848250))

(assert (= (and b!7848250 res!3121137) b!7848258))

(assert (= (and b!7848258 (not res!3121132)) b!7848252))

(assert (= (and b!7848252 (not res!3121135)) b!7848257))

(assert (= (or b!7848249 b!7848253 b!7848258) bm!727276))

(declare-fun m!8256978 () Bool)

(assert (=> d!2352964 m!8256978))

(assert (=> d!2352964 m!8256902))

(declare-fun m!8256980 () Bool)

(assert (=> b!7848252 m!8256980))

(assert (=> b!7848252 m!8256980))

(declare-fun m!8256982 () Bool)

(assert (=> b!7848252 m!8256982))

(declare-fun m!8256984 () Bool)

(assert (=> b!7848246 m!8256984))

(declare-fun m!8256986 () Bool)

(assert (=> b!7848256 m!8256986))

(assert (=> bm!727276 m!8256978))

(assert (=> b!7848257 m!8256986))

(assert (=> b!7848251 m!8256986))

(assert (=> b!7848251 m!8256986))

(declare-fun m!8256988 () Bool)

(assert (=> b!7848251 m!8256988))

(assert (=> b!7848251 m!8256980))

(assert (=> b!7848251 m!8256988))

(assert (=> b!7848251 m!8256980))

(declare-fun m!8256990 () Bool)

(assert (=> b!7848251 m!8256990))

(assert (=> b!7848254 m!8256980))

(assert (=> b!7848254 m!8256980))

(assert (=> b!7848254 m!8256982))

(assert (=> b!7848072 d!2352964))

(declare-fun b!7848260 () Bool)

(declare-fun e!4639619 () Bool)

(assert (=> b!7848260 (= e!4639619 (nullable!9349 lt!2679442))))

(declare-fun b!7848261 () Bool)

(declare-fun res!3121144 () Bool)

(declare-fun e!4639614 () Bool)

(assert (=> b!7848261 (=> res!3121144 e!4639614)))

(assert (=> b!7848261 (= res!3121144 (not ((_ is ElementMatch!21075) lt!2679442)))))

(declare-fun e!4639616 () Bool)

(assert (=> b!7848261 (= e!4639616 e!4639614)))

(declare-fun b!7848262 () Bool)

(declare-fun lt!2679459 () Bool)

(assert (=> b!7848262 (= e!4639616 (not lt!2679459))))

(declare-fun b!7848263 () Bool)

(declare-fun e!4639615 () Bool)

(declare-fun call!727282 () Bool)

(assert (=> b!7848263 (= e!4639615 (= lt!2679459 call!727282))))

(declare-fun b!7848264 () Bool)

(declare-fun e!4639617 () Bool)

(assert (=> b!7848264 (= e!4639614 e!4639617)))

(declare-fun res!3121145 () Bool)

(assert (=> b!7848264 (=> (not res!3121145) (not e!4639617))))

(assert (=> b!7848264 (= res!3121145 (not lt!2679459))))

(declare-fun b!7848265 () Bool)

(assert (=> b!7848265 (= e!4639619 (matchR!10511 (derivativeStep!6312 lt!2679442 (head!16034 (++!18085 s1!4084 s2!3706))) (tail!15577 (++!18085 s1!4084 s2!3706))))))

(declare-fun b!7848266 () Bool)

(declare-fun res!3121143 () Bool)

(declare-fun e!4639618 () Bool)

(assert (=> b!7848266 (=> res!3121143 e!4639618)))

(assert (=> b!7848266 (= res!3121143 (not (isEmpty!42323 (tail!15577 (++!18085 s1!4084 s2!3706)))))))

(declare-fun b!7848267 () Bool)

(declare-fun res!3121139 () Bool)

(declare-fun e!4639613 () Bool)

(assert (=> b!7848267 (=> (not res!3121139) (not e!4639613))))

(assert (=> b!7848267 (= res!3121139 (not call!727282))))

(declare-fun b!7848268 () Bool)

(declare-fun res!3121141 () Bool)

(assert (=> b!7848268 (=> (not res!3121141) (not e!4639613))))

(assert (=> b!7848268 (= res!3121141 (isEmpty!42323 (tail!15577 (++!18085 s1!4084 s2!3706))))))

(declare-fun d!2352974 () Bool)

(assert (=> d!2352974 e!4639615))

(declare-fun c!1442530 () Bool)

(assert (=> d!2352974 (= c!1442530 ((_ is EmptyExpr!21075) lt!2679442))))

(assert (=> d!2352974 (= lt!2679459 e!4639619)))

(declare-fun c!1442531 () Bool)

(assert (=> d!2352974 (= c!1442531 (isEmpty!42323 (++!18085 s1!4084 s2!3706)))))

(assert (=> d!2352974 (validRegex!11485 lt!2679442)))

(assert (=> d!2352974 (= (matchR!10511 lt!2679442 (++!18085 s1!4084 s2!3706)) lt!2679459)))

(declare-fun b!7848269 () Bool)

(assert (=> b!7848269 (= e!4639615 e!4639616)))

(declare-fun c!1442532 () Bool)

(assert (=> b!7848269 (= c!1442532 ((_ is EmptyLang!21075) lt!2679442))))

(declare-fun b!7848270 () Bool)

(assert (=> b!7848270 (= e!4639613 (= (head!16034 (++!18085 s1!4084 s2!3706)) (c!1442481 lt!2679442)))))

(declare-fun b!7848271 () Bool)

(assert (=> b!7848271 (= e!4639618 (not (= (head!16034 (++!18085 s1!4084 s2!3706)) (c!1442481 lt!2679442))))))

(declare-fun b!7848272 () Bool)

(assert (=> b!7848272 (= e!4639617 e!4639618)))

(declare-fun res!3121140 () Bool)

(assert (=> b!7848272 (=> res!3121140 e!4639618)))

(assert (=> b!7848272 (= res!3121140 call!727282)))

(declare-fun b!7848273 () Bool)

(declare-fun res!3121142 () Bool)

(assert (=> b!7848273 (=> res!3121142 e!4639614)))

(assert (=> b!7848273 (= res!3121142 e!4639613)))

(declare-fun res!3121138 () Bool)

(assert (=> b!7848273 (=> (not res!3121138) (not e!4639613))))

(assert (=> b!7848273 (= res!3121138 lt!2679459)))

(declare-fun bm!727277 () Bool)

(assert (=> bm!727277 (= call!727282 (isEmpty!42323 (++!18085 s1!4084 s2!3706)))))

(assert (= (and d!2352974 c!1442531) b!7848260))

(assert (= (and d!2352974 (not c!1442531)) b!7848265))

(assert (= (and d!2352974 c!1442530) b!7848263))

(assert (= (and d!2352974 (not c!1442530)) b!7848269))

(assert (= (and b!7848269 c!1442532) b!7848262))

(assert (= (and b!7848269 (not c!1442532)) b!7848261))

(assert (= (and b!7848261 (not res!3121144)) b!7848273))

(assert (= (and b!7848273 res!3121138) b!7848267))

(assert (= (and b!7848267 res!3121139) b!7848268))

(assert (= (and b!7848268 res!3121141) b!7848270))

(assert (= (and b!7848273 (not res!3121142)) b!7848264))

(assert (= (and b!7848264 res!3121145) b!7848272))

(assert (= (and b!7848272 (not res!3121140)) b!7848266))

(assert (= (and b!7848266 (not res!3121143)) b!7848271))

(assert (= (or b!7848263 b!7848267 b!7848272) bm!727277))

(assert (=> d!2352974 m!8256892))

(declare-fun m!8256992 () Bool)

(assert (=> d!2352974 m!8256992))

(assert (=> d!2352974 m!8256900))

(assert (=> b!7848266 m!8256892))

(declare-fun m!8256994 () Bool)

(assert (=> b!7848266 m!8256994))

(assert (=> b!7848266 m!8256994))

(declare-fun m!8256996 () Bool)

(assert (=> b!7848266 m!8256996))

(declare-fun m!8256998 () Bool)

(assert (=> b!7848260 m!8256998))

(assert (=> b!7848270 m!8256892))

(declare-fun m!8257000 () Bool)

(assert (=> b!7848270 m!8257000))

(assert (=> bm!727277 m!8256892))

(assert (=> bm!727277 m!8256992))

(assert (=> b!7848271 m!8256892))

(assert (=> b!7848271 m!8257000))

(assert (=> b!7848265 m!8256892))

(assert (=> b!7848265 m!8257000))

(assert (=> b!7848265 m!8257000))

(declare-fun m!8257002 () Bool)

(assert (=> b!7848265 m!8257002))

(assert (=> b!7848265 m!8256892))

(assert (=> b!7848265 m!8256994))

(assert (=> b!7848265 m!8257002))

(assert (=> b!7848265 m!8256994))

(declare-fun m!8257004 () Bool)

(assert (=> b!7848265 m!8257004))

(assert (=> b!7848268 m!8256892))

(assert (=> b!7848268 m!8256994))

(assert (=> b!7848268 m!8256994))

(assert (=> b!7848268 m!8256996))

(assert (=> b!7848067 d!2352974))

(declare-fun b!7848314 () Bool)

(declare-fun res!3121151 () Bool)

(declare-fun e!4639640 () Bool)

(assert (=> b!7848314 (=> (not res!3121151) (not e!4639640))))

(declare-fun lt!2679465 () List!73934)

(declare-fun size!42822 (List!73934) Int)

(assert (=> b!7848314 (= res!3121151 (= (size!42822 lt!2679465) (+ (size!42822 s1!4084) (size!42822 s2!3706))))))

(declare-fun d!2352976 () Bool)

(assert (=> d!2352976 e!4639640))

(declare-fun res!3121150 () Bool)

(assert (=> d!2352976 (=> (not res!3121150) (not e!4639640))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15669 (List!73934) (InoxSet C!42476))

(assert (=> d!2352976 (= res!3121150 (= (content!15669 lt!2679465) ((_ map or) (content!15669 s1!4084) (content!15669 s2!3706))))))

(declare-fun e!4639639 () List!73934)

(assert (=> d!2352976 (= lt!2679465 e!4639639)))

(declare-fun c!1442550 () Bool)

(assert (=> d!2352976 (= c!1442550 ((_ is Nil!73810) s1!4084))))

(assert (=> d!2352976 (= (++!18085 s1!4084 s2!3706) lt!2679465)))

(declare-fun b!7848313 () Bool)

(assert (=> b!7848313 (= e!4639639 (Cons!73810 (h!80258 s1!4084) (++!18085 (t!388669 s1!4084) s2!3706)))))

(declare-fun b!7848312 () Bool)

(assert (=> b!7848312 (= e!4639639 s2!3706)))

(declare-fun b!7848315 () Bool)

(assert (=> b!7848315 (= e!4639640 (or (not (= s2!3706 Nil!73810)) (= lt!2679465 s1!4084)))))

(assert (= (and d!2352976 c!1442550) b!7848312))

(assert (= (and d!2352976 (not c!1442550)) b!7848313))

(assert (= (and d!2352976 res!3121150) b!7848314))

(assert (= (and b!7848314 res!3121151) b!7848315))

(declare-fun m!8257014 () Bool)

(assert (=> b!7848314 m!8257014))

(declare-fun m!8257016 () Bool)

(assert (=> b!7848314 m!8257016))

(declare-fun m!8257018 () Bool)

(assert (=> b!7848314 m!8257018))

(declare-fun m!8257020 () Bool)

(assert (=> d!2352976 m!8257020))

(declare-fun m!8257022 () Bool)

(assert (=> d!2352976 m!8257022))

(declare-fun m!8257024 () Bool)

(assert (=> d!2352976 m!8257024))

(assert (=> b!7848313 m!8256912))

(assert (=> b!7848067 d!2352976))

(declare-fun b!7848316 () Bool)

(declare-fun e!4639647 () Bool)

(assert (=> b!7848316 (= e!4639647 (nullable!9349 lt!2679445))))

(declare-fun b!7848317 () Bool)

(declare-fun res!3121158 () Bool)

(declare-fun e!4639642 () Bool)

(assert (=> b!7848317 (=> res!3121158 e!4639642)))

(assert (=> b!7848317 (= res!3121158 (not ((_ is ElementMatch!21075) lt!2679445)))))

(declare-fun e!4639644 () Bool)

(assert (=> b!7848317 (= e!4639644 e!4639642)))

(declare-fun b!7848318 () Bool)

(declare-fun lt!2679466 () Bool)

(assert (=> b!7848318 (= e!4639644 (not lt!2679466))))

(declare-fun b!7848319 () Bool)

(declare-fun e!4639643 () Bool)

(declare-fun call!727295 () Bool)

(assert (=> b!7848319 (= e!4639643 (= lt!2679466 call!727295))))

(declare-fun b!7848320 () Bool)

(declare-fun e!4639645 () Bool)

(assert (=> b!7848320 (= e!4639642 e!4639645)))

(declare-fun res!3121159 () Bool)

(assert (=> b!7848320 (=> (not res!3121159) (not e!4639645))))

(assert (=> b!7848320 (= res!3121159 (not lt!2679466))))

(declare-fun b!7848321 () Bool)

(assert (=> b!7848321 (= e!4639647 (matchR!10511 (derivativeStep!6312 lt!2679445 (head!16034 lt!2679444)) (tail!15577 lt!2679444)))))

(declare-fun b!7848322 () Bool)

(declare-fun res!3121157 () Bool)

(declare-fun e!4639646 () Bool)

(assert (=> b!7848322 (=> res!3121157 e!4639646)))

(assert (=> b!7848322 (= res!3121157 (not (isEmpty!42323 (tail!15577 lt!2679444))))))

(declare-fun b!7848323 () Bool)

(declare-fun res!3121153 () Bool)

(declare-fun e!4639641 () Bool)

(assert (=> b!7848323 (=> (not res!3121153) (not e!4639641))))

(assert (=> b!7848323 (= res!3121153 (not call!727295))))

(declare-fun b!7848324 () Bool)

(declare-fun res!3121155 () Bool)

(assert (=> b!7848324 (=> (not res!3121155) (not e!4639641))))

(assert (=> b!7848324 (= res!3121155 (isEmpty!42323 (tail!15577 lt!2679444)))))

(declare-fun d!2352980 () Bool)

(assert (=> d!2352980 e!4639643))

(declare-fun c!1442551 () Bool)

(assert (=> d!2352980 (= c!1442551 ((_ is EmptyExpr!21075) lt!2679445))))

(assert (=> d!2352980 (= lt!2679466 e!4639647)))

(declare-fun c!1442552 () Bool)

(assert (=> d!2352980 (= c!1442552 (isEmpty!42323 lt!2679444))))

(assert (=> d!2352980 (validRegex!11485 lt!2679445)))

(assert (=> d!2352980 (= (matchR!10511 lt!2679445 lt!2679444) lt!2679466)))

(declare-fun b!7848325 () Bool)

(assert (=> b!7848325 (= e!4639643 e!4639644)))

(declare-fun c!1442553 () Bool)

(assert (=> b!7848325 (= c!1442553 ((_ is EmptyLang!21075) lt!2679445))))

(declare-fun b!7848326 () Bool)

(assert (=> b!7848326 (= e!4639641 (= (head!16034 lt!2679444) (c!1442481 lt!2679445)))))

(declare-fun b!7848327 () Bool)

(assert (=> b!7848327 (= e!4639646 (not (= (head!16034 lt!2679444) (c!1442481 lt!2679445))))))

(declare-fun b!7848328 () Bool)

(assert (=> b!7848328 (= e!4639645 e!4639646)))

(declare-fun res!3121154 () Bool)

(assert (=> b!7848328 (=> res!3121154 e!4639646)))

(assert (=> b!7848328 (= res!3121154 call!727295)))

(declare-fun b!7848329 () Bool)

(declare-fun res!3121156 () Bool)

(assert (=> b!7848329 (=> res!3121156 e!4639642)))

(assert (=> b!7848329 (= res!3121156 e!4639641)))

(declare-fun res!3121152 () Bool)

(assert (=> b!7848329 (=> (not res!3121152) (not e!4639641))))

(assert (=> b!7848329 (= res!3121152 lt!2679466)))

(declare-fun bm!727290 () Bool)

(assert (=> bm!727290 (= call!727295 (isEmpty!42323 lt!2679444))))

(assert (= (and d!2352980 c!1442552) b!7848316))

(assert (= (and d!2352980 (not c!1442552)) b!7848321))

(assert (= (and d!2352980 c!1442551) b!7848319))

(assert (= (and d!2352980 (not c!1442551)) b!7848325))

(assert (= (and b!7848325 c!1442553) b!7848318))

(assert (= (and b!7848325 (not c!1442553)) b!7848317))

(assert (= (and b!7848317 (not res!3121158)) b!7848329))

(assert (= (and b!7848329 res!3121152) b!7848323))

(assert (= (and b!7848323 res!3121153) b!7848324))

(assert (= (and b!7848324 res!3121155) b!7848326))

(assert (= (and b!7848329 (not res!3121156)) b!7848320))

(assert (= (and b!7848320 res!3121159) b!7848328))

(assert (= (and b!7848328 (not res!3121154)) b!7848322))

(assert (= (and b!7848322 (not res!3121157)) b!7848327))

(assert (= (or b!7848319 b!7848323 b!7848328) bm!727290))

(declare-fun m!8257026 () Bool)

(assert (=> d!2352980 m!8257026))

(declare-fun m!8257028 () Bool)

(assert (=> d!2352980 m!8257028))

(declare-fun m!8257030 () Bool)

(assert (=> b!7848322 m!8257030))

(assert (=> b!7848322 m!8257030))

(declare-fun m!8257032 () Bool)

(assert (=> b!7848322 m!8257032))

(declare-fun m!8257034 () Bool)

(assert (=> b!7848316 m!8257034))

(declare-fun m!8257036 () Bool)

(assert (=> b!7848326 m!8257036))

(assert (=> bm!727290 m!8257026))

(assert (=> b!7848327 m!8257036))

(assert (=> b!7848321 m!8257036))

(assert (=> b!7848321 m!8257036))

(declare-fun m!8257038 () Bool)

(assert (=> b!7848321 m!8257038))

(assert (=> b!7848321 m!8257030))

(assert (=> b!7848321 m!8257038))

(assert (=> b!7848321 m!8257030))

(declare-fun m!8257040 () Bool)

(assert (=> b!7848321 m!8257040))

(assert (=> b!7848324 m!8257030))

(assert (=> b!7848324 m!8257030))

(assert (=> b!7848324 m!8257032))

(assert (=> b!7848067 d!2352980))

(declare-fun d!2352982 () Bool)

(assert (=> d!2352982 (matchR!10511 (Union!21075 lt!2679441 EmptyLang!21075) lt!2679444)))

(declare-fun lt!2679472 () Unit!168896)

(declare-fun choose!59642 (Regex!21075 Regex!21075 List!73934) Unit!168896)

(assert (=> d!2352982 (= lt!2679472 (choose!59642 lt!2679441 EmptyLang!21075 lt!2679444))))

(declare-fun e!4639670 () Bool)

(assert (=> d!2352982 e!4639670))

(declare-fun res!3121178 () Bool)

(assert (=> d!2352982 (=> (not res!3121178) (not e!4639670))))

(assert (=> d!2352982 (= res!3121178 (validRegex!11485 lt!2679441))))

(assert (=> d!2352982 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!124 lt!2679441 EmptyLang!21075 lt!2679444) lt!2679472)))

(declare-fun b!7848362 () Bool)

(assert (=> b!7848362 (= e!4639670 (validRegex!11485 EmptyLang!21075))))

(assert (= (and d!2352982 res!3121178) b!7848362))

(declare-fun m!8257062 () Bool)

(assert (=> d!2352982 m!8257062))

(declare-fun m!8257064 () Bool)

(assert (=> d!2352982 m!8257064))

(declare-fun m!8257066 () Bool)

(assert (=> d!2352982 m!8257066))

(declare-fun m!8257068 () Bool)

(assert (=> b!7848362 m!8257068))

(assert (=> b!7848067 d!2352982))

(declare-fun b!7848363 () Bool)

(declare-fun e!4639675 () Bool)

(declare-fun call!727304 () Bool)

(assert (=> b!7848363 (= e!4639675 call!727304)))

(declare-fun b!7848364 () Bool)

(declare-fun res!3121179 () Bool)

(assert (=> b!7848364 (=> (not res!3121179) (not e!4639675))))

(declare-fun call!727302 () Bool)

(assert (=> b!7848364 (= res!3121179 call!727302)))

(declare-fun e!4639676 () Bool)

(assert (=> b!7848364 (= e!4639676 e!4639675)))

(declare-fun b!7848365 () Bool)

(declare-fun e!4639672 () Bool)

(assert (=> b!7848365 (= e!4639672 e!4639676)))

(declare-fun c!1442562 () Bool)

(assert (=> b!7848365 (= c!1442562 ((_ is Union!21075) lt!2679442))))

(declare-fun d!2352988 () Bool)

(declare-fun res!3121183 () Bool)

(declare-fun e!4639674 () Bool)

(assert (=> d!2352988 (=> res!3121183 e!4639674)))

(assert (=> d!2352988 (= res!3121183 ((_ is ElementMatch!21075) lt!2679442))))

(assert (=> d!2352988 (= (validRegex!11485 lt!2679442) e!4639674)))

(declare-fun bm!727297 () Bool)

(declare-fun c!1442561 () Bool)

(declare-fun call!727303 () Bool)

(assert (=> bm!727297 (= call!727303 (validRegex!11485 (ite c!1442561 (reg!21404 lt!2679442) (ite c!1442562 (regTwo!42663 lt!2679442) (regOne!42662 lt!2679442)))))))

(declare-fun bm!727298 () Bool)

(assert (=> bm!727298 (= call!727302 (validRegex!11485 (ite c!1442562 (regOne!42663 lt!2679442) (regTwo!42662 lt!2679442))))))

(declare-fun bm!727299 () Bool)

(assert (=> bm!727299 (= call!727304 call!727303)))

(declare-fun b!7848366 () Bool)

(declare-fun e!4639671 () Bool)

(assert (=> b!7848366 (= e!4639672 e!4639671)))

(declare-fun res!3121180 () Bool)

(assert (=> b!7848366 (= res!3121180 (not (nullable!9349 (reg!21404 lt!2679442))))))

(assert (=> b!7848366 (=> (not res!3121180) (not e!4639671))))

(declare-fun b!7848367 () Bool)

(declare-fun res!3121182 () Bool)

(declare-fun e!4639677 () Bool)

(assert (=> b!7848367 (=> res!3121182 e!4639677)))

(assert (=> b!7848367 (= res!3121182 (not ((_ is Concat!29920) lt!2679442)))))

(assert (=> b!7848367 (= e!4639676 e!4639677)))

(declare-fun b!7848368 () Bool)

(assert (=> b!7848368 (= e!4639671 call!727303)))

(declare-fun b!7848369 () Bool)

(declare-fun e!4639673 () Bool)

(assert (=> b!7848369 (= e!4639673 call!727302)))

(declare-fun b!7848370 () Bool)

(assert (=> b!7848370 (= e!4639677 e!4639673)))

(declare-fun res!3121181 () Bool)

(assert (=> b!7848370 (=> (not res!3121181) (not e!4639673))))

(assert (=> b!7848370 (= res!3121181 call!727304)))

(declare-fun b!7848371 () Bool)

(assert (=> b!7848371 (= e!4639674 e!4639672)))

(assert (=> b!7848371 (= c!1442561 ((_ is Star!21075) lt!2679442))))

(assert (= (and d!2352988 (not res!3121183)) b!7848371))

(assert (= (and b!7848371 c!1442561) b!7848366))

(assert (= (and b!7848371 (not c!1442561)) b!7848365))

(assert (= (and b!7848366 res!3121180) b!7848368))

(assert (= (and b!7848365 c!1442562) b!7848364))

(assert (= (and b!7848365 (not c!1442562)) b!7848367))

(assert (= (and b!7848364 res!3121179) b!7848363))

(assert (= (and b!7848367 (not res!3121182)) b!7848370))

(assert (= (and b!7848370 res!3121181) b!7848369))

(assert (= (or b!7848364 b!7848369) bm!727298))

(assert (= (or b!7848363 b!7848370) bm!727299))

(assert (= (or b!7848368 bm!727299) bm!727297))

(declare-fun m!8257076 () Bool)

(assert (=> bm!727297 m!8257076))

(declare-fun m!8257078 () Bool)

(assert (=> bm!727298 m!8257078))

(declare-fun m!8257080 () Bool)

(assert (=> b!7848366 m!8257080))

(assert (=> b!7848057 d!2352988))

(declare-fun b!7848386 () Bool)

(declare-fun e!4639689 () Bool)

(declare-fun call!727308 () Bool)

(assert (=> b!7848386 (= e!4639689 call!727308)))

(declare-fun b!7848387 () Bool)

(declare-fun res!3121192 () Bool)

(assert (=> b!7848387 (=> (not res!3121192) (not e!4639689))))

(declare-fun call!727306 () Bool)

(assert (=> b!7848387 (= res!3121192 call!727306)))

(declare-fun e!4639690 () Bool)

(assert (=> b!7848387 (= e!4639690 e!4639689)))

(declare-fun b!7848388 () Bool)

(declare-fun e!4639686 () Bool)

(assert (=> b!7848388 (= e!4639686 e!4639690)))

(declare-fun c!1442567 () Bool)

(assert (=> b!7848388 (= c!1442567 ((_ is Union!21075) r1!6227))))

(declare-fun d!2352992 () Bool)

(declare-fun res!3121196 () Bool)

(declare-fun e!4639688 () Bool)

(assert (=> d!2352992 (=> res!3121196 e!4639688)))

(assert (=> d!2352992 (= res!3121196 ((_ is ElementMatch!21075) r1!6227))))

(assert (=> d!2352992 (= (validRegex!11485 r1!6227) e!4639688)))

(declare-fun call!727307 () Bool)

(declare-fun c!1442566 () Bool)

(declare-fun bm!727301 () Bool)

(assert (=> bm!727301 (= call!727307 (validRegex!11485 (ite c!1442566 (reg!21404 r1!6227) (ite c!1442567 (regTwo!42663 r1!6227) (regOne!42662 r1!6227)))))))

(declare-fun bm!727302 () Bool)

(assert (=> bm!727302 (= call!727306 (validRegex!11485 (ite c!1442567 (regOne!42663 r1!6227) (regTwo!42662 r1!6227))))))

(declare-fun bm!727303 () Bool)

(assert (=> bm!727303 (= call!727308 call!727307)))

(declare-fun b!7848389 () Bool)

(declare-fun e!4639685 () Bool)

(assert (=> b!7848389 (= e!4639686 e!4639685)))

(declare-fun res!3121193 () Bool)

(assert (=> b!7848389 (= res!3121193 (not (nullable!9349 (reg!21404 r1!6227))))))

(assert (=> b!7848389 (=> (not res!3121193) (not e!4639685))))

(declare-fun b!7848390 () Bool)

(declare-fun res!3121195 () Bool)

(declare-fun e!4639691 () Bool)

(assert (=> b!7848390 (=> res!3121195 e!4639691)))

(assert (=> b!7848390 (= res!3121195 (not ((_ is Concat!29920) r1!6227)))))

(assert (=> b!7848390 (= e!4639690 e!4639691)))

(declare-fun b!7848391 () Bool)

(assert (=> b!7848391 (= e!4639685 call!727307)))

(declare-fun b!7848392 () Bool)

(declare-fun e!4639687 () Bool)

(assert (=> b!7848392 (= e!4639687 call!727306)))

(declare-fun b!7848393 () Bool)

(assert (=> b!7848393 (= e!4639691 e!4639687)))

(declare-fun res!3121194 () Bool)

(assert (=> b!7848393 (=> (not res!3121194) (not e!4639687))))

(assert (=> b!7848393 (= res!3121194 call!727308)))

(declare-fun b!7848394 () Bool)

(assert (=> b!7848394 (= e!4639688 e!4639686)))

(assert (=> b!7848394 (= c!1442566 ((_ is Star!21075) r1!6227))))

(assert (= (and d!2352992 (not res!3121196)) b!7848394))

(assert (= (and b!7848394 c!1442566) b!7848389))

(assert (= (and b!7848394 (not c!1442566)) b!7848388))

(assert (= (and b!7848389 res!3121193) b!7848391))

(assert (= (and b!7848388 c!1442567) b!7848387))

(assert (= (and b!7848388 (not c!1442567)) b!7848390))

(assert (= (and b!7848387 res!3121192) b!7848386))

(assert (= (and b!7848390 (not res!3121195)) b!7848393))

(assert (= (and b!7848393 res!3121194) b!7848392))

(assert (= (or b!7848387 b!7848392) bm!727302))

(assert (= (or b!7848386 b!7848393) bm!727303))

(assert (= (or b!7848391 bm!727303) bm!727301))

(declare-fun m!8257094 () Bool)

(assert (=> bm!727301 m!8257094))

(declare-fun m!8257096 () Bool)

(assert (=> bm!727302 m!8257096))

(declare-fun m!8257098 () Bool)

(assert (=> b!7848389 m!8257098))

(assert (=> start!743086 d!2352992))

(declare-fun b!7848405 () Bool)

(declare-fun e!4639703 () Bool)

(assert (=> b!7848405 (= e!4639703 (nullable!9349 r1!6227))))

(declare-fun b!7848406 () Bool)

(declare-fun res!3121203 () Bool)

(declare-fun e!4639698 () Bool)

(assert (=> b!7848406 (=> res!3121203 e!4639698)))

(assert (=> b!7848406 (= res!3121203 (not ((_ is ElementMatch!21075) r1!6227)))))

(declare-fun e!4639700 () Bool)

(assert (=> b!7848406 (= e!4639700 e!4639698)))

(declare-fun b!7848407 () Bool)

(declare-fun lt!2679475 () Bool)

(assert (=> b!7848407 (= e!4639700 (not lt!2679475))))

(declare-fun b!7848408 () Bool)

(declare-fun e!4639699 () Bool)

(declare-fun call!727313 () Bool)

(assert (=> b!7848408 (= e!4639699 (= lt!2679475 call!727313))))

(declare-fun b!7848409 () Bool)

(declare-fun e!4639701 () Bool)

(assert (=> b!7848409 (= e!4639698 e!4639701)))

(declare-fun res!3121204 () Bool)

(assert (=> b!7848409 (=> (not res!3121204) (not e!4639701))))

(assert (=> b!7848409 (= res!3121204 (not lt!2679475))))

(declare-fun b!7848410 () Bool)

(assert (=> b!7848410 (= e!4639703 (matchR!10511 (derivativeStep!6312 r1!6227 (head!16034 s1!4084)) (tail!15577 s1!4084)))))

(declare-fun b!7848411 () Bool)

(declare-fun res!3121202 () Bool)

(declare-fun e!4639702 () Bool)

(assert (=> b!7848411 (=> res!3121202 e!4639702)))

(assert (=> b!7848411 (= res!3121202 (not (isEmpty!42323 (tail!15577 s1!4084))))))

(declare-fun b!7848412 () Bool)

(declare-fun res!3121198 () Bool)

(declare-fun e!4639697 () Bool)

(assert (=> b!7848412 (=> (not res!3121198) (not e!4639697))))

(assert (=> b!7848412 (= res!3121198 (not call!727313))))

(declare-fun b!7848413 () Bool)

(declare-fun res!3121200 () Bool)

(assert (=> b!7848413 (=> (not res!3121200) (not e!4639697))))

(assert (=> b!7848413 (= res!3121200 (isEmpty!42323 (tail!15577 s1!4084)))))

(declare-fun d!2352996 () Bool)

(assert (=> d!2352996 e!4639699))

(declare-fun c!1442573 () Bool)

(assert (=> d!2352996 (= c!1442573 ((_ is EmptyExpr!21075) r1!6227))))

(assert (=> d!2352996 (= lt!2679475 e!4639703)))

(declare-fun c!1442574 () Bool)

(assert (=> d!2352996 (= c!1442574 (isEmpty!42323 s1!4084))))

(assert (=> d!2352996 (validRegex!11485 r1!6227)))

(assert (=> d!2352996 (= (matchR!10511 r1!6227 s1!4084) lt!2679475)))

(declare-fun b!7848414 () Bool)

(assert (=> b!7848414 (= e!4639699 e!4639700)))

(declare-fun c!1442575 () Bool)

(assert (=> b!7848414 (= c!1442575 ((_ is EmptyLang!21075) r1!6227))))

(declare-fun b!7848415 () Bool)

(assert (=> b!7848415 (= e!4639697 (= (head!16034 s1!4084) (c!1442481 r1!6227)))))

(declare-fun b!7848416 () Bool)

(assert (=> b!7848416 (= e!4639702 (not (= (head!16034 s1!4084) (c!1442481 r1!6227))))))

(declare-fun b!7848417 () Bool)

(assert (=> b!7848417 (= e!4639701 e!4639702)))

(declare-fun res!3121199 () Bool)

(assert (=> b!7848417 (=> res!3121199 e!4639702)))

(assert (=> b!7848417 (= res!3121199 call!727313)))

(declare-fun b!7848418 () Bool)

(declare-fun res!3121201 () Bool)

(assert (=> b!7848418 (=> res!3121201 e!4639698)))

(assert (=> b!7848418 (= res!3121201 e!4639697)))

(declare-fun res!3121197 () Bool)

(assert (=> b!7848418 (=> (not res!3121197) (not e!4639697))))

(assert (=> b!7848418 (= res!3121197 lt!2679475)))

(declare-fun bm!727308 () Bool)

(assert (=> bm!727308 (= call!727313 (isEmpty!42323 s1!4084))))

(assert (= (and d!2352996 c!1442574) b!7848405))

(assert (= (and d!2352996 (not c!1442574)) b!7848410))

(assert (= (and d!2352996 c!1442573) b!7848408))

(assert (= (and d!2352996 (not c!1442573)) b!7848414))

(assert (= (and b!7848414 c!1442575) b!7848407))

(assert (= (and b!7848414 (not c!1442575)) b!7848406))

(assert (= (and b!7848406 (not res!3121203)) b!7848418))

(assert (= (and b!7848418 res!3121197) b!7848412))

(assert (= (and b!7848412 res!3121198) b!7848413))

(assert (= (and b!7848413 res!3121200) b!7848415))

(assert (= (and b!7848418 (not res!3121201)) b!7848409))

(assert (= (and b!7848409 res!3121204) b!7848417))

(assert (= (and b!7848417 (not res!3121199)) b!7848411))

(assert (= (and b!7848411 (not res!3121202)) b!7848416))

(assert (= (or b!7848408 b!7848412 b!7848417) bm!727308))

(declare-fun m!8257108 () Bool)

(assert (=> d!2352996 m!8257108))

(assert (=> d!2352996 m!8256890))

(declare-fun m!8257110 () Bool)

(assert (=> b!7848411 m!8257110))

(assert (=> b!7848411 m!8257110))

(declare-fun m!8257112 () Bool)

(assert (=> b!7848411 m!8257112))

(assert (=> b!7848405 m!8256906))

(declare-fun m!8257114 () Bool)

(assert (=> b!7848415 m!8257114))

(assert (=> bm!727308 m!8257108))

(assert (=> b!7848416 m!8257114))

(assert (=> b!7848410 m!8257114))

(assert (=> b!7848410 m!8257114))

(declare-fun m!8257116 () Bool)

(assert (=> b!7848410 m!8257116))

(assert (=> b!7848410 m!8257110))

(assert (=> b!7848410 m!8257116))

(assert (=> b!7848410 m!8257110))

(declare-fun m!8257120 () Bool)

(assert (=> b!7848410 m!8257120))

(assert (=> b!7848413 m!8257110))

(assert (=> b!7848413 m!8257110))

(assert (=> b!7848413 m!8257112))

(assert (=> b!7848063 d!2352996))

(declare-fun b!7848433 () Bool)

(declare-fun e!4639717 () Bool)

(assert (=> b!7848433 (= e!4639717 (nullable!9349 lt!2679441))))

(declare-fun b!7848434 () Bool)

(declare-fun res!3121219 () Bool)

(declare-fun e!4639712 () Bool)

(assert (=> b!7848434 (=> res!3121219 e!4639712)))

(assert (=> b!7848434 (= res!3121219 (not ((_ is ElementMatch!21075) lt!2679441)))))

(declare-fun e!4639714 () Bool)

(assert (=> b!7848434 (= e!4639714 e!4639712)))

(declare-fun b!7848435 () Bool)

(declare-fun lt!2679477 () Bool)

(assert (=> b!7848435 (= e!4639714 (not lt!2679477))))

(declare-fun b!7848436 () Bool)

(declare-fun e!4639713 () Bool)

(declare-fun call!727315 () Bool)

(assert (=> b!7848436 (= e!4639713 (= lt!2679477 call!727315))))

(declare-fun b!7848437 () Bool)

(declare-fun e!4639715 () Bool)

(assert (=> b!7848437 (= e!4639712 e!4639715)))

(declare-fun res!3121220 () Bool)

(assert (=> b!7848437 (=> (not res!3121220) (not e!4639715))))

(assert (=> b!7848437 (= res!3121220 (not lt!2679477))))

(declare-fun b!7848438 () Bool)

(assert (=> b!7848438 (= e!4639717 (matchR!10511 (derivativeStep!6312 lt!2679441 (head!16034 lt!2679444)) (tail!15577 lt!2679444)))))

(declare-fun b!7848439 () Bool)

(declare-fun res!3121218 () Bool)

(declare-fun e!4639716 () Bool)

(assert (=> b!7848439 (=> res!3121218 e!4639716)))

(assert (=> b!7848439 (= res!3121218 (not (isEmpty!42323 (tail!15577 lt!2679444))))))

(declare-fun b!7848440 () Bool)

(declare-fun res!3121214 () Bool)

(declare-fun e!4639711 () Bool)

(assert (=> b!7848440 (=> (not res!3121214) (not e!4639711))))

(assert (=> b!7848440 (= res!3121214 (not call!727315))))

(declare-fun b!7848441 () Bool)

(declare-fun res!3121216 () Bool)

(assert (=> b!7848441 (=> (not res!3121216) (not e!4639711))))

(assert (=> b!7848441 (= res!3121216 (isEmpty!42323 (tail!15577 lt!2679444)))))

(declare-fun d!2353000 () Bool)

(assert (=> d!2353000 e!4639713))

(declare-fun c!1442579 () Bool)

(assert (=> d!2353000 (= c!1442579 ((_ is EmptyExpr!21075) lt!2679441))))

(assert (=> d!2353000 (= lt!2679477 e!4639717)))

(declare-fun c!1442580 () Bool)

(assert (=> d!2353000 (= c!1442580 (isEmpty!42323 lt!2679444))))

(assert (=> d!2353000 (validRegex!11485 lt!2679441)))

(assert (=> d!2353000 (= (matchR!10511 lt!2679441 lt!2679444) lt!2679477)))

(declare-fun b!7848442 () Bool)

(assert (=> b!7848442 (= e!4639713 e!4639714)))

(declare-fun c!1442581 () Bool)

(assert (=> b!7848442 (= c!1442581 ((_ is EmptyLang!21075) lt!2679441))))

(declare-fun b!7848443 () Bool)

(assert (=> b!7848443 (= e!4639711 (= (head!16034 lt!2679444) (c!1442481 lt!2679441)))))

(declare-fun b!7848444 () Bool)

(assert (=> b!7848444 (= e!4639716 (not (= (head!16034 lt!2679444) (c!1442481 lt!2679441))))))

(declare-fun b!7848445 () Bool)

(assert (=> b!7848445 (= e!4639715 e!4639716)))

(declare-fun res!3121215 () Bool)

(assert (=> b!7848445 (=> res!3121215 e!4639716)))

(assert (=> b!7848445 (= res!3121215 call!727315)))

(declare-fun b!7848446 () Bool)

(declare-fun res!3121217 () Bool)

(assert (=> b!7848446 (=> res!3121217 e!4639712)))

(assert (=> b!7848446 (= res!3121217 e!4639711)))

(declare-fun res!3121213 () Bool)

(assert (=> b!7848446 (=> (not res!3121213) (not e!4639711))))

(assert (=> b!7848446 (= res!3121213 lt!2679477)))

(declare-fun bm!727310 () Bool)

(assert (=> bm!727310 (= call!727315 (isEmpty!42323 lt!2679444))))

(assert (= (and d!2353000 c!1442580) b!7848433))

(assert (= (and d!2353000 (not c!1442580)) b!7848438))

(assert (= (and d!2353000 c!1442579) b!7848436))

(assert (= (and d!2353000 (not c!1442579)) b!7848442))

(assert (= (and b!7848442 c!1442581) b!7848435))

(assert (= (and b!7848442 (not c!1442581)) b!7848434))

(assert (= (and b!7848434 (not res!3121219)) b!7848446))

(assert (= (and b!7848446 res!3121213) b!7848440))

(assert (= (and b!7848440 res!3121214) b!7848441))

(assert (= (and b!7848441 res!3121216) b!7848443))

(assert (= (and b!7848446 (not res!3121217)) b!7848437))

(assert (= (and b!7848437 res!3121220) b!7848445))

(assert (= (and b!7848445 (not res!3121215)) b!7848439))

(assert (= (and b!7848439 (not res!3121218)) b!7848444))

(assert (= (or b!7848436 b!7848440 b!7848445) bm!727310))

(assert (=> d!2353000 m!8257026))

(assert (=> d!2353000 m!8257066))

(assert (=> b!7848439 m!8257030))

(assert (=> b!7848439 m!8257030))

(assert (=> b!7848439 m!8257032))

(declare-fun m!8257142 () Bool)

(assert (=> b!7848433 m!8257142))

(assert (=> b!7848443 m!8257036))

(assert (=> bm!727310 m!8257026))

(assert (=> b!7848444 m!8257036))

(assert (=> b!7848438 m!8257036))

(assert (=> b!7848438 m!8257036))

(declare-fun m!8257144 () Bool)

(assert (=> b!7848438 m!8257144))

(assert (=> b!7848438 m!8257030))

(assert (=> b!7848438 m!8257144))

(assert (=> b!7848438 m!8257030))

(declare-fun m!8257146 () Bool)

(assert (=> b!7848438 m!8257146))

(assert (=> b!7848441 m!8257030))

(assert (=> b!7848441 m!8257030))

(assert (=> b!7848441 m!8257032))

(assert (=> b!7848058 d!2353000))

(declare-fun d!2353006 () Bool)

(declare-fun nullableFct!3681 (Regex!21075) Bool)

(assert (=> d!2353006 (= (nullable!9349 r1!6227) (nullableFct!3681 r1!6227))))

(declare-fun bs!1967052 () Bool)

(assert (= bs!1967052 d!2353006))

(declare-fun m!8257156 () Bool)

(assert (=> bs!1967052 m!8257156))

(assert (=> b!7848058 d!2353006))

(declare-fun bm!727312 () Bool)

(declare-fun call!727320 () Regex!21075)

(declare-fun call!727319 () Regex!21075)

(assert (=> bm!727312 (= call!727320 call!727319)))

(declare-fun b!7848465 () Bool)

(declare-fun e!4639728 () Regex!21075)

(declare-fun e!4639729 () Regex!21075)

(assert (=> b!7848465 (= e!4639728 e!4639729)))

(declare-fun c!1442590 () Bool)

(assert (=> b!7848465 (= c!1442590 ((_ is ElementMatch!21075) r1!6227))))

(declare-fun b!7848466 () Bool)

(declare-fun e!4639727 () Regex!21075)

(declare-fun e!4639731 () Regex!21075)

(assert (=> b!7848466 (= e!4639727 e!4639731)))

(declare-fun c!1442586 () Bool)

(assert (=> b!7848466 (= c!1442586 ((_ is Star!21075) r1!6227))))

(declare-fun b!7848467 () Bool)

(declare-fun call!727317 () Regex!21075)

(assert (=> b!7848467 (= e!4639731 (Concat!29920 call!727317 r1!6227))))

(declare-fun b!7848468 () Bool)

(declare-fun c!1442589 () Bool)

(assert (=> b!7848468 (= c!1442589 (nullable!9349 (regOne!42662 r1!6227)))))

(declare-fun e!4639730 () Regex!21075)

(assert (=> b!7848468 (= e!4639731 e!4639730)))

(declare-fun b!7848469 () Bool)

(declare-fun c!1442587 () Bool)

(assert (=> b!7848469 (= c!1442587 ((_ is Union!21075) r1!6227))))

(assert (=> b!7848469 (= e!4639729 e!4639727)))

(declare-fun b!7848470 () Bool)

(assert (=> b!7848470 (= e!4639728 EmptyLang!21075)))

(declare-fun call!727318 () Regex!21075)

(declare-fun bm!727314 () Bool)

(assert (=> bm!727314 (= call!727318 (derivativeStep!6312 (ite c!1442587 (regTwo!42663 r1!6227) (ite c!1442586 (reg!21404 r1!6227) (regOne!42662 r1!6227))) (h!80258 s1!4084)))))

(declare-fun b!7848471 () Bool)

(assert (=> b!7848471 (= e!4639729 (ite (= (h!80258 s1!4084) (c!1442481 r1!6227)) EmptyExpr!21075 EmptyLang!21075))))

(declare-fun b!7848472 () Bool)

(assert (=> b!7848472 (= e!4639727 (Union!21075 call!727319 call!727318))))

(declare-fun b!7848473 () Bool)

(assert (=> b!7848473 (= e!4639730 (Union!21075 (Concat!29920 call!727317 (regTwo!42662 r1!6227)) call!727320))))

(declare-fun bm!727315 () Bool)

(assert (=> bm!727315 (= call!727319 (derivativeStep!6312 (ite c!1442587 (regOne!42663 r1!6227) (ite c!1442589 (regTwo!42662 r1!6227) (regOne!42662 r1!6227))) (h!80258 s1!4084)))))

(declare-fun b!7848474 () Bool)

(assert (=> b!7848474 (= e!4639730 (Union!21075 (Concat!29920 call!727320 (regTwo!42662 r1!6227)) EmptyLang!21075))))

(declare-fun bm!727313 () Bool)

(assert (=> bm!727313 (= call!727317 call!727318)))

(declare-fun d!2353010 () Bool)

(declare-fun lt!2679480 () Regex!21075)

(assert (=> d!2353010 (validRegex!11485 lt!2679480)))

(assert (=> d!2353010 (= lt!2679480 e!4639728)))

(declare-fun c!1442588 () Bool)

(assert (=> d!2353010 (= c!1442588 (or ((_ is EmptyExpr!21075) r1!6227) ((_ is EmptyLang!21075) r1!6227)))))

(assert (=> d!2353010 (validRegex!11485 r1!6227)))

(assert (=> d!2353010 (= (derivativeStep!6312 r1!6227 (h!80258 s1!4084)) lt!2679480)))

(assert (= (and d!2353010 c!1442588) b!7848470))

(assert (= (and d!2353010 (not c!1442588)) b!7848465))

(assert (= (and b!7848465 c!1442590) b!7848471))

(assert (= (and b!7848465 (not c!1442590)) b!7848469))

(assert (= (and b!7848469 c!1442587) b!7848472))

(assert (= (and b!7848469 (not c!1442587)) b!7848466))

(assert (= (and b!7848466 c!1442586) b!7848467))

(assert (= (and b!7848466 (not c!1442586)) b!7848468))

(assert (= (and b!7848468 c!1442589) b!7848473))

(assert (= (and b!7848468 (not c!1442589)) b!7848474))

(assert (= (or b!7848473 b!7848474) bm!727312))

(assert (= (or b!7848467 b!7848473) bm!727313))

(assert (= (or b!7848472 bm!727313) bm!727314))

(assert (= (or b!7848472 bm!727312) bm!727315))

(declare-fun m!8257158 () Bool)

(assert (=> b!7848468 m!8257158))

(declare-fun m!8257160 () Bool)

(assert (=> bm!727314 m!8257160))

(declare-fun m!8257162 () Bool)

(assert (=> bm!727315 m!8257162))

(declare-fun m!8257164 () Bool)

(assert (=> d!2353010 m!8257164))

(assert (=> d!2353010 m!8256890))

(assert (=> b!7848058 d!2353010))

(declare-fun d!2353012 () Bool)

(assert (=> d!2353012 (matchR!10511 (Concat!29920 lt!2679440 r2!6165) (++!18085 (t!388669 s1!4084) s2!3706))))

(declare-fun lt!2679486 () Unit!168896)

(declare-fun choose!59644 (Regex!21075 Regex!21075 List!73934 List!73934) Unit!168896)

(assert (=> d!2353012 (= lt!2679486 (choose!59644 lt!2679440 r2!6165 (t!388669 s1!4084) s2!3706))))

(declare-fun e!4639746 () Bool)

(assert (=> d!2353012 e!4639746))

(declare-fun res!3121236 () Bool)

(assert (=> d!2353012 (=> (not res!3121236) (not e!4639746))))

(assert (=> d!2353012 (= res!3121236 (validRegex!11485 lt!2679440))))

(assert (=> d!2353012 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!446 lt!2679440 r2!6165 (t!388669 s1!4084) s2!3706) lt!2679486)))

(declare-fun b!7848511 () Bool)

(assert (=> b!7848511 (= e!4639746 (validRegex!11485 r2!6165))))

(assert (= (and d!2353012 res!3121236) b!7848511))

(assert (=> d!2353012 m!8256912))

(assert (=> d!2353012 m!8256912))

(declare-fun m!8257172 () Bool)

(assert (=> d!2353012 m!8257172))

(declare-fun m!8257174 () Bool)

(assert (=> d!2353012 m!8257174))

(declare-fun m!8257176 () Bool)

(assert (=> d!2353012 m!8257176))

(assert (=> b!7848511 m!8256902))

(assert (=> b!7848058 d!2353012))

(declare-fun b!7848526 () Bool)

(declare-fun res!3121238 () Bool)

(declare-fun e!4639751 () Bool)

(assert (=> b!7848526 (=> (not res!3121238) (not e!4639751))))

(declare-fun lt!2679487 () List!73934)

(assert (=> b!7848526 (= res!3121238 (= (size!42822 lt!2679487) (+ (size!42822 (t!388669 s1!4084)) (size!42822 s2!3706))))))

(declare-fun d!2353014 () Bool)

(assert (=> d!2353014 e!4639751))

(declare-fun res!3121237 () Bool)

(assert (=> d!2353014 (=> (not res!3121237) (not e!4639751))))

(assert (=> d!2353014 (= res!3121237 (= (content!15669 lt!2679487) ((_ map or) (content!15669 (t!388669 s1!4084)) (content!15669 s2!3706))))))

(declare-fun e!4639750 () List!73934)

(assert (=> d!2353014 (= lt!2679487 e!4639750)))

(declare-fun c!1442591 () Bool)

(assert (=> d!2353014 (= c!1442591 ((_ is Nil!73810) (t!388669 s1!4084)))))

(assert (=> d!2353014 (= (++!18085 (t!388669 s1!4084) s2!3706) lt!2679487)))

(declare-fun b!7848525 () Bool)

(assert (=> b!7848525 (= e!4639750 (Cons!73810 (h!80258 (t!388669 s1!4084)) (++!18085 (t!388669 (t!388669 s1!4084)) s2!3706)))))

(declare-fun b!7848524 () Bool)

(assert (=> b!7848524 (= e!4639750 s2!3706)))

(declare-fun b!7848527 () Bool)

(assert (=> b!7848527 (= e!4639751 (or (not (= s2!3706 Nil!73810)) (= lt!2679487 (t!388669 s1!4084))))))

(assert (= (and d!2353014 c!1442591) b!7848524))

(assert (= (and d!2353014 (not c!1442591)) b!7848525))

(assert (= (and d!2353014 res!3121237) b!7848526))

(assert (= (and b!7848526 res!3121238) b!7848527))

(declare-fun m!8257178 () Bool)

(assert (=> b!7848526 m!8257178))

(declare-fun m!8257180 () Bool)

(assert (=> b!7848526 m!8257180))

(assert (=> b!7848526 m!8257018))

(declare-fun m!8257182 () Bool)

(assert (=> d!2353014 m!8257182))

(declare-fun m!8257184 () Bool)

(assert (=> d!2353014 m!8257184))

(assert (=> d!2353014 m!8257024))

(declare-fun m!8257186 () Bool)

(assert (=> b!7848525 m!8257186))

(assert (=> b!7848058 d!2353014))

(declare-fun b!7848545 () Bool)

(declare-fun e!4639758 () Bool)

(declare-fun tp!2323959 () Bool)

(assert (=> b!7848545 (= e!4639758 (and tp_is_empty!52549 tp!2323959))))

(assert (=> b!7848071 (= tp!2323889 e!4639758)))

(assert (= (and b!7848071 ((_ is Cons!73810) (t!388669 s2!3706))) b!7848545))

(declare-fun e!4639761 () Bool)

(assert (=> b!7848062 (= tp!2323885 e!4639761)))

(declare-fun b!7848556 () Bool)

(assert (=> b!7848556 (= e!4639761 tp_is_empty!52549)))

(declare-fun b!7848558 () Bool)

(declare-fun tp!2323971 () Bool)

(assert (=> b!7848558 (= e!4639761 tp!2323971)))

(declare-fun b!7848557 () Bool)

(declare-fun tp!2323972 () Bool)

(declare-fun tp!2323973 () Bool)

(assert (=> b!7848557 (= e!4639761 (and tp!2323972 tp!2323973))))

(declare-fun b!7848559 () Bool)

(declare-fun tp!2323970 () Bool)

(declare-fun tp!2323974 () Bool)

(assert (=> b!7848559 (= e!4639761 (and tp!2323970 tp!2323974))))

(assert (= (and b!7848062 ((_ is ElementMatch!21075) (reg!21404 r1!6227))) b!7848556))

(assert (= (and b!7848062 ((_ is Concat!29920) (reg!21404 r1!6227))) b!7848557))

(assert (= (and b!7848062 ((_ is Star!21075) (reg!21404 r1!6227))) b!7848558))

(assert (= (and b!7848062 ((_ is Union!21075) (reg!21404 r1!6227))) b!7848559))

(declare-fun e!4639762 () Bool)

(assert (=> b!7848073 (= tp!2323882 e!4639762)))

(declare-fun b!7848560 () Bool)

(assert (=> b!7848560 (= e!4639762 tp_is_empty!52549)))

(declare-fun b!7848562 () Bool)

(declare-fun tp!2323976 () Bool)

(assert (=> b!7848562 (= e!4639762 tp!2323976)))

(declare-fun b!7848561 () Bool)

(declare-fun tp!2323977 () Bool)

(declare-fun tp!2323978 () Bool)

(assert (=> b!7848561 (= e!4639762 (and tp!2323977 tp!2323978))))

(declare-fun b!7848563 () Bool)

(declare-fun tp!2323975 () Bool)

(declare-fun tp!2323979 () Bool)

(assert (=> b!7848563 (= e!4639762 (and tp!2323975 tp!2323979))))

(assert (= (and b!7848073 ((_ is ElementMatch!21075) (regOne!42663 r1!6227))) b!7848560))

(assert (= (and b!7848073 ((_ is Concat!29920) (regOne!42663 r1!6227))) b!7848561))

(assert (= (and b!7848073 ((_ is Star!21075) (regOne!42663 r1!6227))) b!7848562))

(assert (= (and b!7848073 ((_ is Union!21075) (regOne!42663 r1!6227))) b!7848563))

(declare-fun e!4639763 () Bool)

(assert (=> b!7848073 (= tp!2323884 e!4639763)))

(declare-fun b!7848564 () Bool)

(assert (=> b!7848564 (= e!4639763 tp_is_empty!52549)))

(declare-fun b!7848566 () Bool)

(declare-fun tp!2323981 () Bool)

(assert (=> b!7848566 (= e!4639763 tp!2323981)))

(declare-fun b!7848565 () Bool)

(declare-fun tp!2323982 () Bool)

(declare-fun tp!2323983 () Bool)

(assert (=> b!7848565 (= e!4639763 (and tp!2323982 tp!2323983))))

(declare-fun b!7848567 () Bool)

(declare-fun tp!2323980 () Bool)

(declare-fun tp!2323984 () Bool)

(assert (=> b!7848567 (= e!4639763 (and tp!2323980 tp!2323984))))

(assert (= (and b!7848073 ((_ is ElementMatch!21075) (regTwo!42663 r1!6227))) b!7848564))

(assert (= (and b!7848073 ((_ is Concat!29920) (regTwo!42663 r1!6227))) b!7848565))

(assert (= (and b!7848073 ((_ is Star!21075) (regTwo!42663 r1!6227))) b!7848566))

(assert (= (and b!7848073 ((_ is Union!21075) (regTwo!42663 r1!6227))) b!7848567))

(declare-fun e!4639764 () Bool)

(assert (=> b!7848068 (= tp!2323881 e!4639764)))

(declare-fun b!7848568 () Bool)

(assert (=> b!7848568 (= e!4639764 tp_is_empty!52549)))

(declare-fun b!7848570 () Bool)

(declare-fun tp!2323986 () Bool)

(assert (=> b!7848570 (= e!4639764 tp!2323986)))

(declare-fun b!7848569 () Bool)

(declare-fun tp!2323987 () Bool)

(declare-fun tp!2323988 () Bool)

(assert (=> b!7848569 (= e!4639764 (and tp!2323987 tp!2323988))))

(declare-fun b!7848571 () Bool)

(declare-fun tp!2323985 () Bool)

(declare-fun tp!2323989 () Bool)

(assert (=> b!7848571 (= e!4639764 (and tp!2323985 tp!2323989))))

(assert (= (and b!7848068 ((_ is ElementMatch!21075) (reg!21404 r2!6165))) b!7848568))

(assert (= (and b!7848068 ((_ is Concat!29920) (reg!21404 r2!6165))) b!7848569))

(assert (= (and b!7848068 ((_ is Star!21075) (reg!21404 r2!6165))) b!7848570))

(assert (= (and b!7848068 ((_ is Union!21075) (reg!21404 r2!6165))) b!7848571))

(declare-fun e!4639765 () Bool)

(assert (=> b!7848069 (= tp!2323886 e!4639765)))

(declare-fun b!7848572 () Bool)

(assert (=> b!7848572 (= e!4639765 tp_is_empty!52549)))

(declare-fun b!7848574 () Bool)

(declare-fun tp!2323991 () Bool)

(assert (=> b!7848574 (= e!4639765 tp!2323991)))

(declare-fun b!7848573 () Bool)

(declare-fun tp!2323992 () Bool)

(declare-fun tp!2323993 () Bool)

(assert (=> b!7848573 (= e!4639765 (and tp!2323992 tp!2323993))))

(declare-fun b!7848575 () Bool)

(declare-fun tp!2323990 () Bool)

(declare-fun tp!2323994 () Bool)

(assert (=> b!7848575 (= e!4639765 (and tp!2323990 tp!2323994))))

(assert (= (and b!7848069 ((_ is ElementMatch!21075) (regOne!42662 r2!6165))) b!7848572))

(assert (= (and b!7848069 ((_ is Concat!29920) (regOne!42662 r2!6165))) b!7848573))

(assert (= (and b!7848069 ((_ is Star!21075) (regOne!42662 r2!6165))) b!7848574))

(assert (= (and b!7848069 ((_ is Union!21075) (regOne!42662 r2!6165))) b!7848575))

(declare-fun e!4639766 () Bool)

(assert (=> b!7848069 (= tp!2323892 e!4639766)))

(declare-fun b!7848576 () Bool)

(assert (=> b!7848576 (= e!4639766 tp_is_empty!52549)))

(declare-fun b!7848578 () Bool)

(declare-fun tp!2323996 () Bool)

(assert (=> b!7848578 (= e!4639766 tp!2323996)))

(declare-fun b!7848577 () Bool)

(declare-fun tp!2323997 () Bool)

(declare-fun tp!2323998 () Bool)

(assert (=> b!7848577 (= e!4639766 (and tp!2323997 tp!2323998))))

(declare-fun b!7848579 () Bool)

(declare-fun tp!2323995 () Bool)

(declare-fun tp!2323999 () Bool)

(assert (=> b!7848579 (= e!4639766 (and tp!2323995 tp!2323999))))

(assert (= (and b!7848069 ((_ is ElementMatch!21075) (regTwo!42662 r2!6165))) b!7848576))

(assert (= (and b!7848069 ((_ is Concat!29920) (regTwo!42662 r2!6165))) b!7848577))

(assert (= (and b!7848069 ((_ is Star!21075) (regTwo!42662 r2!6165))) b!7848578))

(assert (= (and b!7848069 ((_ is Union!21075) (regTwo!42662 r2!6165))) b!7848579))

(declare-fun e!4639767 () Bool)

(assert (=> b!7848064 (= tp!2323888 e!4639767)))

(declare-fun b!7848580 () Bool)

(assert (=> b!7848580 (= e!4639767 tp_is_empty!52549)))

(declare-fun b!7848582 () Bool)

(declare-fun tp!2324001 () Bool)

(assert (=> b!7848582 (= e!4639767 tp!2324001)))

(declare-fun b!7848581 () Bool)

(declare-fun tp!2324002 () Bool)

(declare-fun tp!2324003 () Bool)

(assert (=> b!7848581 (= e!4639767 (and tp!2324002 tp!2324003))))

(declare-fun b!7848583 () Bool)

(declare-fun tp!2324000 () Bool)

(declare-fun tp!2324004 () Bool)

(assert (=> b!7848583 (= e!4639767 (and tp!2324000 tp!2324004))))

(assert (= (and b!7848064 ((_ is ElementMatch!21075) (regOne!42663 r2!6165))) b!7848580))

(assert (= (and b!7848064 ((_ is Concat!29920) (regOne!42663 r2!6165))) b!7848581))

(assert (= (and b!7848064 ((_ is Star!21075) (regOne!42663 r2!6165))) b!7848582))

(assert (= (and b!7848064 ((_ is Union!21075) (regOne!42663 r2!6165))) b!7848583))

(declare-fun e!4639768 () Bool)

(assert (=> b!7848064 (= tp!2323891 e!4639768)))

(declare-fun b!7848584 () Bool)

(assert (=> b!7848584 (= e!4639768 tp_is_empty!52549)))

(declare-fun b!7848586 () Bool)

(declare-fun tp!2324006 () Bool)

(assert (=> b!7848586 (= e!4639768 tp!2324006)))

(declare-fun b!7848585 () Bool)

(declare-fun tp!2324007 () Bool)

(declare-fun tp!2324008 () Bool)

(assert (=> b!7848585 (= e!4639768 (and tp!2324007 tp!2324008))))

(declare-fun b!7848587 () Bool)

(declare-fun tp!2324005 () Bool)

(declare-fun tp!2324009 () Bool)

(assert (=> b!7848587 (= e!4639768 (and tp!2324005 tp!2324009))))

(assert (= (and b!7848064 ((_ is ElementMatch!21075) (regTwo!42663 r2!6165))) b!7848584))

(assert (= (and b!7848064 ((_ is Concat!29920) (regTwo!42663 r2!6165))) b!7848585))

(assert (= (and b!7848064 ((_ is Star!21075) (regTwo!42663 r2!6165))) b!7848586))

(assert (= (and b!7848064 ((_ is Union!21075) (regTwo!42663 r2!6165))) b!7848587))

(declare-fun b!7848588 () Bool)

(declare-fun e!4639769 () Bool)

(declare-fun tp!2324010 () Bool)

(assert (=> b!7848588 (= e!4639769 (and tp_is_empty!52549 tp!2324010))))

(assert (=> b!7848065 (= tp!2323890 e!4639769)))

(assert (= (and b!7848065 ((_ is Cons!73810) (t!388669 s1!4084))) b!7848588))

(declare-fun e!4639770 () Bool)

(assert (=> b!7848060 (= tp!2323887 e!4639770)))

(declare-fun b!7848589 () Bool)

(assert (=> b!7848589 (= e!4639770 tp_is_empty!52549)))

(declare-fun b!7848591 () Bool)

(declare-fun tp!2324012 () Bool)

(assert (=> b!7848591 (= e!4639770 tp!2324012)))

(declare-fun b!7848590 () Bool)

(declare-fun tp!2324013 () Bool)

(declare-fun tp!2324014 () Bool)

(assert (=> b!7848590 (= e!4639770 (and tp!2324013 tp!2324014))))

(declare-fun b!7848592 () Bool)

(declare-fun tp!2324011 () Bool)

(declare-fun tp!2324015 () Bool)

(assert (=> b!7848592 (= e!4639770 (and tp!2324011 tp!2324015))))

(assert (= (and b!7848060 ((_ is ElementMatch!21075) (regOne!42662 r1!6227))) b!7848589))

(assert (= (and b!7848060 ((_ is Concat!29920) (regOne!42662 r1!6227))) b!7848590))

(assert (= (and b!7848060 ((_ is Star!21075) (regOne!42662 r1!6227))) b!7848591))

(assert (= (and b!7848060 ((_ is Union!21075) (regOne!42662 r1!6227))) b!7848592))

(declare-fun e!4639771 () Bool)

(assert (=> b!7848060 (= tp!2323883 e!4639771)))

(declare-fun b!7848593 () Bool)

(assert (=> b!7848593 (= e!4639771 tp_is_empty!52549)))

(declare-fun b!7848595 () Bool)

(declare-fun tp!2324017 () Bool)

(assert (=> b!7848595 (= e!4639771 tp!2324017)))

(declare-fun b!7848594 () Bool)

(declare-fun tp!2324018 () Bool)

(declare-fun tp!2324019 () Bool)

(assert (=> b!7848594 (= e!4639771 (and tp!2324018 tp!2324019))))

(declare-fun b!7848596 () Bool)

(declare-fun tp!2324016 () Bool)

(declare-fun tp!2324020 () Bool)

(assert (=> b!7848596 (= e!4639771 (and tp!2324016 tp!2324020))))

(assert (= (and b!7848060 ((_ is ElementMatch!21075) (regTwo!42662 r1!6227))) b!7848593))

(assert (= (and b!7848060 ((_ is Concat!29920) (regTwo!42662 r1!6227))) b!7848594))

(assert (= (and b!7848060 ((_ is Star!21075) (regTwo!42662 r1!6227))) b!7848595))

(assert (= (and b!7848060 ((_ is Union!21075) (regTwo!42662 r1!6227))) b!7848596))

(check-sat (not b!7848114) (not bm!727298) (not b!7848591) (not b!7848545) (not d!2353000) (not b!7848254) (not b!7848257) (not b!7848180) (not b!7848590) (not bm!727250) (not b!7848415) (not b!7848563) (not b!7848271) (not b!7848366) (not bm!727314) (not b!7848579) (not b!7848411) (not bm!727277) (not b!7848252) (not b!7848444) (not d!2352964) (not b!7848413) (not b!7848433) (not b!7848324) (not d!2353014) (not b!7848251) (not b!7848362) (not b!7848578) (not b!7848575) (not bm!727251) (not b!7848596) (not b!7848268) (not b!7848588) (not bm!727310) (not b!7848511) (not b!7848316) (not d!2352996) (not d!2352960) (not b!7848582) (not b!7848585) (not b!7848526) (not bm!727301) (not b!7848561) (not b!7848321) (not b!7848405) (not b!7848410) (not b!7848573) (not b!7848314) (not b!7848581) (not b!7848416) (not b!7848594) (not d!2352976) (not b!7848571) (not bm!727308) tp_is_empty!52549 (not d!2353012) (not b!7848443) (not b!7848313) (not b!7848260) (not b!7848468) (not b!7848525) (not b!7848246) (not b!7848439) (not bm!727297) (not b!7848441) (not bm!727315) (not b!7848270) (not b!7848256) (not b!7848566) (not b!7848327) (not b!7848595) (not bm!727271) (not b!7848326) (not d!2352982) (not b!7848265) (not b!7848574) (not b!7848567) (not b!7848569) (not d!2353006) (not bm!727290) (not b!7848266) (not b!7848577) (not d!2352980) (not b!7848583) (not d!2352974) (not b!7848587) (not b!7848558) (not b!7848557) (not b!7848438) (not b!7848592) (not b!7848570) (not b!7848562) (not b!7848559) (not b!7848565) (not bm!727302) (not b!7848586) (not bm!727276) (not b!7848322) (not bm!727270) (not b!7848389) (not d!2353010))
(check-sat)
