; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735460 () Bool)

(assert start!735460)

(declare-fun b!7639108 () Bool)

(declare-fun e!4540912 () Bool)

(declare-fun tp_is_empty!51217 () Bool)

(assert (=> b!7639108 (= e!4540912 tp_is_empty!51217)))

(declare-fun b!7639109 () Bool)

(declare-fun e!4540911 () Bool)

(declare-datatypes ((C!41188 0))(
  ( (C!41189 (val!31034 Int)) )
))
(declare-datatypes ((List!73282 0))(
  ( (Nil!73158) (Cons!73158 (h!79606 C!41188) (t!388017 List!73282)) )
))
(declare-fun s!9605 () List!73282)

(declare-datatypes ((Regex!20431 0))(
  ( (ElementMatch!20431 (c!1407124 C!41188)) (Concat!29276 (regOne!41374 Regex!20431) (regTwo!41374 Regex!20431)) (EmptyExpr!20431) (Star!20431 (reg!20760 Regex!20431)) (EmptyLang!20431) (Union!20431 (regOne!41375 Regex!20431) (regTwo!41375 Regex!20431)) )
))
(declare-fun r!14126 () Regex!20431)

(declare-fun size!42585 (List!73282) Int)

(declare-fun regexDepth!479 (Regex!20431) Int)

(assert (=> b!7639109 (= e!4540911 (< (+ (size!42585 s!9605) (regexDepth!479 r!14126)) 0))))

(declare-fun b!7639110 () Bool)

(declare-fun tp!2229781 () Bool)

(declare-fun tp!2229776 () Bool)

(assert (=> b!7639110 (= e!4540912 (and tp!2229781 tp!2229776))))

(declare-fun res!3059860 () Bool)

(assert (=> start!735460 (=> (not res!3059860) (not e!4540911))))

(declare-fun validRegex!10849 (Regex!20431) Bool)

(assert (=> start!735460 (= res!3059860 (validRegex!10849 r!14126))))

(assert (=> start!735460 e!4540911))

(assert (=> start!735460 e!4540912))

(declare-fun e!4540913 () Bool)

(assert (=> start!735460 e!4540913))

(declare-fun b!7639111 () Bool)

(declare-fun tp!2229780 () Bool)

(declare-fun tp!2229779 () Bool)

(assert (=> b!7639111 (= e!4540912 (and tp!2229780 tp!2229779))))

(declare-fun b!7639112 () Bool)

(declare-fun tp!2229778 () Bool)

(assert (=> b!7639112 (= e!4540912 tp!2229778)))

(declare-fun b!7639113 () Bool)

(declare-fun tp!2229777 () Bool)

(assert (=> b!7639113 (= e!4540913 (and tp_is_empty!51217 tp!2229777))))

(assert (= (and start!735460 res!3059860) b!7639109))

(get-info :version)

(assert (= (and start!735460 ((_ is ElementMatch!20431) r!14126)) b!7639108))

(assert (= (and start!735460 ((_ is Concat!29276) r!14126)) b!7639110))

(assert (= (and start!735460 ((_ is Star!20431) r!14126)) b!7639112))

(assert (= (and start!735460 ((_ is Union!20431) r!14126)) b!7639111))

(assert (= (and start!735460 ((_ is Cons!73158) s!9605)) b!7639113))

(declare-fun m!8162552 () Bool)

(assert (=> b!7639109 m!8162552))

(declare-fun m!8162554 () Bool)

(assert (=> b!7639109 m!8162554))

(declare-fun m!8162556 () Bool)

(assert (=> start!735460 m!8162556))

(check-sat (not b!7639113) (not start!735460) (not b!7639112) (not b!7639109) (not b!7639110) (not b!7639111) tp_is_empty!51217)
(check-sat)
(get-model)

(declare-fun d!2325055 () Bool)

(declare-fun lt!2660471 () Int)

(assert (=> d!2325055 (>= lt!2660471 0)))

(declare-fun e!4540916 () Int)

(assert (=> d!2325055 (= lt!2660471 e!4540916)))

(declare-fun c!1407127 () Bool)

(assert (=> d!2325055 (= c!1407127 ((_ is Nil!73158) s!9605))))

(assert (=> d!2325055 (= (size!42585 s!9605) lt!2660471)))

(declare-fun b!7639118 () Bool)

(assert (=> b!7639118 (= e!4540916 0)))

(declare-fun b!7639119 () Bool)

(assert (=> b!7639119 (= e!4540916 (+ 1 (size!42585 (t!388017 s!9605))))))

(assert (= (and d!2325055 c!1407127) b!7639118))

(assert (= (and d!2325055 (not c!1407127)) b!7639119))

(declare-fun m!8162558 () Bool)

(assert (=> b!7639119 m!8162558))

(assert (=> b!7639109 d!2325055))

(declare-fun b!7639187 () Bool)

(declare-fun e!4540963 () Bool)

(declare-fun lt!2660477 () Int)

(assert (=> b!7639187 (= e!4540963 (= lt!2660477 1))))

(declare-fun b!7639189 () Bool)

(declare-fun e!4540966 () Int)

(assert (=> b!7639189 (= e!4540966 1)))

(declare-fun b!7639190 () Bool)

(declare-fun e!4540967 () Bool)

(declare-fun e!4540970 () Bool)

(assert (=> b!7639190 (= e!4540967 e!4540970)))

(declare-fun res!3059884 () Bool)

(declare-fun call!701119 () Int)

(assert (=> b!7639190 (= res!3059884 (> lt!2660477 call!701119))))

(assert (=> b!7639190 (=> (not res!3059884) (not e!4540970))))

(declare-fun bm!701109 () Bool)

(declare-fun call!701120 () Int)

(declare-fun c!1407152 () Bool)

(assert (=> bm!701109 (= call!701120 (regexDepth!479 (ite c!1407152 (regTwo!41375 r!14126) (regTwo!41374 r!14126))))))

(declare-fun b!7639191 () Bool)

(declare-fun e!4540969 () Int)

(declare-fun call!701118 () Int)

(assert (=> b!7639191 (= e!4540969 (+ 1 call!701118))))

(declare-fun b!7639192 () Bool)

(declare-fun e!4540964 () Int)

(declare-fun e!4540965 () Int)

(assert (=> b!7639192 (= e!4540964 e!4540965)))

(declare-fun c!1407153 () Bool)

(assert (=> b!7639192 (= c!1407153 ((_ is Concat!29276) r!14126))))

(declare-fun b!7639193 () Bool)

(assert (=> b!7639193 (= e!4540970 (> lt!2660477 call!701120))))

(declare-fun bm!701110 () Bool)

(declare-fun c!1407154 () Bool)

(assert (=> bm!701110 (= call!701119 (regexDepth!479 (ite c!1407152 (regOne!41375 r!14126) (ite c!1407154 (regOne!41374 r!14126) (reg!20760 r!14126)))))))

(declare-fun b!7639194 () Bool)

(declare-fun call!701116 () Int)

(assert (=> b!7639194 (= e!4540965 (+ 1 call!701116))))

(declare-fun b!7639195 () Bool)

(declare-fun e!4540968 () Bool)

(assert (=> b!7639195 (= e!4540967 e!4540968)))

(assert (=> b!7639195 (= c!1407154 ((_ is Concat!29276) r!14126))))

(declare-fun b!7639196 () Bool)

(assert (=> b!7639196 (= e!4540965 1)))

(declare-fun b!7639197 () Bool)

(declare-fun res!3059883 () Bool)

(declare-fun e!4540962 () Bool)

(assert (=> b!7639197 (=> (not res!3059883) (not e!4540962))))

(declare-fun call!701117 () Int)

(assert (=> b!7639197 (= res!3059883 (> lt!2660477 call!701117))))

(assert (=> b!7639197 (= e!4540968 e!4540962)))

(declare-fun d!2325059 () Bool)

(declare-fun e!4540961 () Bool)

(assert (=> d!2325059 e!4540961))

(declare-fun res!3059882 () Bool)

(assert (=> d!2325059 (=> (not res!3059882) (not e!4540961))))

(assert (=> d!2325059 (= res!3059882 (> lt!2660477 0))))

(assert (=> d!2325059 (= lt!2660477 e!4540966)))

(declare-fun c!1407155 () Bool)

(assert (=> d!2325059 (= c!1407155 ((_ is ElementMatch!20431) r!14126))))

(assert (=> d!2325059 (= (regexDepth!479 r!14126) lt!2660477)))

(declare-fun b!7639188 () Bool)

(assert (=> b!7639188 (= e!4540964 (+ 1 call!701116))))

(declare-fun b!7639198 () Bool)

(declare-fun c!1407157 () Bool)

(assert (=> b!7639198 (= c!1407157 ((_ is Star!20431) r!14126))))

(assert (=> b!7639198 (= e!4540968 e!4540963)))

(declare-fun b!7639199 () Bool)

(declare-fun c!1407156 () Bool)

(assert (=> b!7639199 (= c!1407156 ((_ is Union!20431) r!14126))))

(assert (=> b!7639199 (= e!4540969 e!4540964)))

(declare-fun b!7639200 () Bool)

(assert (=> b!7639200 (= e!4540961 e!4540967)))

(assert (=> b!7639200 (= c!1407152 ((_ is Union!20431) r!14126))))

(declare-fun b!7639201 () Bool)

(assert (=> b!7639201 (= e!4540963 (> lt!2660477 call!701117))))

(declare-fun bm!701111 () Bool)

(declare-fun call!701115 () Int)

(assert (=> bm!701111 (= call!701115 (regexDepth!479 (ite c!1407156 (regTwo!41375 r!14126) (regOne!41374 r!14126))))))

(declare-fun call!701114 () Int)

(declare-fun bm!701112 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!701112 (= call!701116 (maxBigInt!0 (ite c!1407156 call!701114 call!701115) (ite c!1407156 call!701115 call!701114)))))

(declare-fun bm!701113 () Bool)

(assert (=> bm!701113 (= call!701117 call!701119)))

(declare-fun b!7639202 () Bool)

(assert (=> b!7639202 (= e!4540966 e!4540969)))

(declare-fun c!1407151 () Bool)

(assert (=> b!7639202 (= c!1407151 ((_ is Star!20431) r!14126))))

(declare-fun bm!701114 () Bool)

(assert (=> bm!701114 (= call!701118 (regexDepth!479 (ite c!1407151 (reg!20760 r!14126) (ite c!1407156 (regOne!41375 r!14126) (regTwo!41374 r!14126)))))))

(declare-fun bm!701115 () Bool)

(assert (=> bm!701115 (= call!701114 call!701118)))

(declare-fun b!7639203 () Bool)

(assert (=> b!7639203 (= e!4540962 (> lt!2660477 call!701120))))

(assert (= (and d!2325059 c!1407155) b!7639189))

(assert (= (and d!2325059 (not c!1407155)) b!7639202))

(assert (= (and b!7639202 c!1407151) b!7639191))

(assert (= (and b!7639202 (not c!1407151)) b!7639199))

(assert (= (and b!7639199 c!1407156) b!7639188))

(assert (= (and b!7639199 (not c!1407156)) b!7639192))

(assert (= (and b!7639192 c!1407153) b!7639194))

(assert (= (and b!7639192 (not c!1407153)) b!7639196))

(assert (= (or b!7639188 b!7639194) bm!701115))

(assert (= (or b!7639188 b!7639194) bm!701111))

(assert (= (or b!7639188 b!7639194) bm!701112))

(assert (= (or b!7639191 bm!701115) bm!701114))

(assert (= (and d!2325059 res!3059882) b!7639200))

(assert (= (and b!7639200 c!1407152) b!7639190))

(assert (= (and b!7639200 (not c!1407152)) b!7639195))

(assert (= (and b!7639190 res!3059884) b!7639193))

(assert (= (and b!7639195 c!1407154) b!7639197))

(assert (= (and b!7639195 (not c!1407154)) b!7639198))

(assert (= (and b!7639197 res!3059883) b!7639203))

(assert (= (and b!7639198 c!1407157) b!7639201))

(assert (= (and b!7639198 (not c!1407157)) b!7639187))

(assert (= (or b!7639197 b!7639201) bm!701113))

(assert (= (or b!7639190 bm!701113) bm!701110))

(assert (= (or b!7639193 b!7639203) bm!701109))

(declare-fun m!8162568 () Bool)

(assert (=> bm!701112 m!8162568))

(declare-fun m!8162570 () Bool)

(assert (=> bm!701109 m!8162570))

(declare-fun m!8162572 () Bool)

(assert (=> bm!701114 m!8162572))

(declare-fun m!8162574 () Bool)

(assert (=> bm!701110 m!8162574))

(declare-fun m!8162576 () Bool)

(assert (=> bm!701111 m!8162576))

(assert (=> b!7639109 d!2325059))

(declare-fun bm!701136 () Bool)

(declare-fun call!701141 () Bool)

(declare-fun c!1407177 () Bool)

(assert (=> bm!701136 (= call!701141 (validRegex!10849 (ite c!1407177 (regOne!41375 r!14126) (regOne!41374 r!14126))))))

(declare-fun call!701142 () Bool)

(declare-fun c!1407176 () Bool)

(declare-fun bm!701137 () Bool)

(assert (=> bm!701137 (= call!701142 (validRegex!10849 (ite c!1407176 (reg!20760 r!14126) (ite c!1407177 (regTwo!41375 r!14126) (regTwo!41374 r!14126)))))))

(declare-fun b!7639256 () Bool)

(declare-fun e!4541011 () Bool)

(declare-fun e!4541005 () Bool)

(assert (=> b!7639256 (= e!4541011 e!4541005)))

(assert (=> b!7639256 (= c!1407177 ((_ is Union!20431) r!14126))))

(declare-fun bm!701138 () Bool)

(declare-fun call!701143 () Bool)

(assert (=> bm!701138 (= call!701143 call!701142)))

(declare-fun b!7639257 () Bool)

(declare-fun e!4541006 () Bool)

(declare-fun e!4541008 () Bool)

(assert (=> b!7639257 (= e!4541006 e!4541008)))

(declare-fun res!3059902 () Bool)

(assert (=> b!7639257 (=> (not res!3059902) (not e!4541008))))

(assert (=> b!7639257 (= res!3059902 call!701141)))

(declare-fun b!7639258 () Bool)

(declare-fun e!4541010 () Bool)

(assert (=> b!7639258 (= e!4541010 call!701142)))

(declare-fun b!7639259 () Bool)

(assert (=> b!7639259 (= e!4541011 e!4541010)))

(declare-fun res!3059903 () Bool)

(declare-fun nullable!8938 (Regex!20431) Bool)

(assert (=> b!7639259 (= res!3059903 (not (nullable!8938 (reg!20760 r!14126))))))

(assert (=> b!7639259 (=> (not res!3059903) (not e!4541010))))

(declare-fun b!7639260 () Bool)

(declare-fun res!3059905 () Bool)

(declare-fun e!4541007 () Bool)

(assert (=> b!7639260 (=> (not res!3059905) (not e!4541007))))

(assert (=> b!7639260 (= res!3059905 call!701141)))

(assert (=> b!7639260 (= e!4541005 e!4541007)))

(declare-fun b!7639261 () Bool)

(assert (=> b!7639261 (= e!4541008 call!701143)))

(declare-fun b!7639262 () Bool)

(assert (=> b!7639262 (= e!4541007 call!701143)))

(declare-fun d!2325065 () Bool)

(declare-fun res!3059904 () Bool)

(declare-fun e!4541009 () Bool)

(assert (=> d!2325065 (=> res!3059904 e!4541009)))

(assert (=> d!2325065 (= res!3059904 ((_ is ElementMatch!20431) r!14126))))

(assert (=> d!2325065 (= (validRegex!10849 r!14126) e!4541009)))

(declare-fun b!7639263 () Bool)

(assert (=> b!7639263 (= e!4541009 e!4541011)))

(assert (=> b!7639263 (= c!1407176 ((_ is Star!20431) r!14126))))

(declare-fun b!7639264 () Bool)

(declare-fun res!3059901 () Bool)

(assert (=> b!7639264 (=> res!3059901 e!4541006)))

(assert (=> b!7639264 (= res!3059901 (not ((_ is Concat!29276) r!14126)))))

(assert (=> b!7639264 (= e!4541005 e!4541006)))

(assert (= (and d!2325065 (not res!3059904)) b!7639263))

(assert (= (and b!7639263 c!1407176) b!7639259))

(assert (= (and b!7639263 (not c!1407176)) b!7639256))

(assert (= (and b!7639259 res!3059903) b!7639258))

(assert (= (and b!7639256 c!1407177) b!7639260))

(assert (= (and b!7639256 (not c!1407177)) b!7639264))

(assert (= (and b!7639260 res!3059905) b!7639262))

(assert (= (and b!7639264 (not res!3059901)) b!7639257))

(assert (= (and b!7639257 res!3059902) b!7639261))

(assert (= (or b!7639260 b!7639257) bm!701136))

(assert (= (or b!7639262 b!7639261) bm!701138))

(assert (= (or b!7639258 bm!701138) bm!701137))

(declare-fun m!8162578 () Bool)

(assert (=> bm!701136 m!8162578))

(declare-fun m!8162580 () Bool)

(assert (=> bm!701137 m!8162580))

(declare-fun m!8162582 () Bool)

(assert (=> b!7639259 m!8162582))

(assert (=> start!735460 d!2325065))

(declare-fun b!7639269 () Bool)

(declare-fun e!4541014 () Bool)

(declare-fun tp!2229784 () Bool)

(assert (=> b!7639269 (= e!4541014 (and tp_is_empty!51217 tp!2229784))))

(assert (=> b!7639113 (= tp!2229777 e!4541014)))

(assert (= (and b!7639113 ((_ is Cons!73158) (t!388017 s!9605))) b!7639269))

(declare-fun b!7639281 () Bool)

(declare-fun e!4541017 () Bool)

(declare-fun tp!2229799 () Bool)

(declare-fun tp!2229796 () Bool)

(assert (=> b!7639281 (= e!4541017 (and tp!2229799 tp!2229796))))

(declare-fun b!7639283 () Bool)

(declare-fun tp!2229797 () Bool)

(declare-fun tp!2229795 () Bool)

(assert (=> b!7639283 (= e!4541017 (and tp!2229797 tp!2229795))))

(assert (=> b!7639112 (= tp!2229778 e!4541017)))

(declare-fun b!7639280 () Bool)

(assert (=> b!7639280 (= e!4541017 tp_is_empty!51217)))

(declare-fun b!7639282 () Bool)

(declare-fun tp!2229798 () Bool)

(assert (=> b!7639282 (= e!4541017 tp!2229798)))

(assert (= (and b!7639112 ((_ is ElementMatch!20431) (reg!20760 r!14126))) b!7639280))

(assert (= (and b!7639112 ((_ is Concat!29276) (reg!20760 r!14126))) b!7639281))

(assert (= (and b!7639112 ((_ is Star!20431) (reg!20760 r!14126))) b!7639282))

(assert (= (and b!7639112 ((_ is Union!20431) (reg!20760 r!14126))) b!7639283))

(declare-fun b!7639285 () Bool)

(declare-fun e!4541018 () Bool)

(declare-fun tp!2229804 () Bool)

(declare-fun tp!2229801 () Bool)

(assert (=> b!7639285 (= e!4541018 (and tp!2229804 tp!2229801))))

(declare-fun b!7639287 () Bool)

(declare-fun tp!2229802 () Bool)

(declare-fun tp!2229800 () Bool)

(assert (=> b!7639287 (= e!4541018 (and tp!2229802 tp!2229800))))

(assert (=> b!7639110 (= tp!2229781 e!4541018)))

(declare-fun b!7639284 () Bool)

(assert (=> b!7639284 (= e!4541018 tp_is_empty!51217)))

(declare-fun b!7639286 () Bool)

(declare-fun tp!2229803 () Bool)

(assert (=> b!7639286 (= e!4541018 tp!2229803)))

(assert (= (and b!7639110 ((_ is ElementMatch!20431) (regOne!41374 r!14126))) b!7639284))

(assert (= (and b!7639110 ((_ is Concat!29276) (regOne!41374 r!14126))) b!7639285))

(assert (= (and b!7639110 ((_ is Star!20431) (regOne!41374 r!14126))) b!7639286))

(assert (= (and b!7639110 ((_ is Union!20431) (regOne!41374 r!14126))) b!7639287))

(declare-fun b!7639289 () Bool)

(declare-fun e!4541019 () Bool)

(declare-fun tp!2229809 () Bool)

(declare-fun tp!2229806 () Bool)

(assert (=> b!7639289 (= e!4541019 (and tp!2229809 tp!2229806))))

(declare-fun b!7639291 () Bool)

(declare-fun tp!2229807 () Bool)

(declare-fun tp!2229805 () Bool)

(assert (=> b!7639291 (= e!4541019 (and tp!2229807 tp!2229805))))

(assert (=> b!7639110 (= tp!2229776 e!4541019)))

(declare-fun b!7639288 () Bool)

(assert (=> b!7639288 (= e!4541019 tp_is_empty!51217)))

(declare-fun b!7639290 () Bool)

(declare-fun tp!2229808 () Bool)

(assert (=> b!7639290 (= e!4541019 tp!2229808)))

(assert (= (and b!7639110 ((_ is ElementMatch!20431) (regTwo!41374 r!14126))) b!7639288))

(assert (= (and b!7639110 ((_ is Concat!29276) (regTwo!41374 r!14126))) b!7639289))

(assert (= (and b!7639110 ((_ is Star!20431) (regTwo!41374 r!14126))) b!7639290))

(assert (= (and b!7639110 ((_ is Union!20431) (regTwo!41374 r!14126))) b!7639291))

(declare-fun b!7639293 () Bool)

(declare-fun e!4541020 () Bool)

(declare-fun tp!2229814 () Bool)

(declare-fun tp!2229811 () Bool)

(assert (=> b!7639293 (= e!4541020 (and tp!2229814 tp!2229811))))

(declare-fun b!7639295 () Bool)

(declare-fun tp!2229812 () Bool)

(declare-fun tp!2229810 () Bool)

(assert (=> b!7639295 (= e!4541020 (and tp!2229812 tp!2229810))))

(assert (=> b!7639111 (= tp!2229780 e!4541020)))

(declare-fun b!7639292 () Bool)

(assert (=> b!7639292 (= e!4541020 tp_is_empty!51217)))

(declare-fun b!7639294 () Bool)

(declare-fun tp!2229813 () Bool)

(assert (=> b!7639294 (= e!4541020 tp!2229813)))

(assert (= (and b!7639111 ((_ is ElementMatch!20431) (regOne!41375 r!14126))) b!7639292))

(assert (= (and b!7639111 ((_ is Concat!29276) (regOne!41375 r!14126))) b!7639293))

(assert (= (and b!7639111 ((_ is Star!20431) (regOne!41375 r!14126))) b!7639294))

(assert (= (and b!7639111 ((_ is Union!20431) (regOne!41375 r!14126))) b!7639295))

(declare-fun b!7639297 () Bool)

(declare-fun e!4541021 () Bool)

(declare-fun tp!2229819 () Bool)

(declare-fun tp!2229816 () Bool)

(assert (=> b!7639297 (= e!4541021 (and tp!2229819 tp!2229816))))

(declare-fun b!7639299 () Bool)

(declare-fun tp!2229817 () Bool)

(declare-fun tp!2229815 () Bool)

(assert (=> b!7639299 (= e!4541021 (and tp!2229817 tp!2229815))))

(assert (=> b!7639111 (= tp!2229779 e!4541021)))

(declare-fun b!7639296 () Bool)

(assert (=> b!7639296 (= e!4541021 tp_is_empty!51217)))

(declare-fun b!7639298 () Bool)

(declare-fun tp!2229818 () Bool)

(assert (=> b!7639298 (= e!4541021 tp!2229818)))

(assert (= (and b!7639111 ((_ is ElementMatch!20431) (regTwo!41375 r!14126))) b!7639296))

(assert (= (and b!7639111 ((_ is Concat!29276) (regTwo!41375 r!14126))) b!7639297))

(assert (= (and b!7639111 ((_ is Star!20431) (regTwo!41375 r!14126))) b!7639298))

(assert (= (and b!7639111 ((_ is Union!20431) (regTwo!41375 r!14126))) b!7639299))

(check-sat (not bm!701114) (not b!7639290) (not b!7639299) (not b!7639259) (not b!7639289) (not b!7639295) (not bm!701109) (not bm!701111) (not b!7639119) (not b!7639285) (not b!7639283) (not bm!701110) (not b!7639287) (not b!7639298) (not b!7639286) (not b!7639269) (not b!7639294) tp_is_empty!51217 (not b!7639282) (not b!7639297) (not b!7639293) (not bm!701136) (not b!7639281) (not b!7639291) (not bm!701137) (not bm!701112))
(check-sat)
