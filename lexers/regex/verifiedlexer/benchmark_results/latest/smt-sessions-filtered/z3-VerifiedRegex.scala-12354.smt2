; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!692416 () Bool)

(assert start!692416)

(declare-fun b!7113926 () Bool)

(declare-fun e!4274997 () Bool)

(declare-fun tp!1957603 () Bool)

(assert (=> b!7113926 (= e!4274997 tp!1957603)))

(declare-fun b!7113928 () Bool)

(declare-fun e!4275000 () Bool)

(declare-fun tp!1957608 () Bool)

(assert (=> b!7113928 (= e!4275000 tp!1957608)))

(declare-fun b!7113929 () Bool)

(declare-fun res!2902794 () Bool)

(declare-fun e!4274998 () Bool)

(assert (=> b!7113929 (=> (not res!2902794) (not e!4274998))))

(declare-datatypes ((C!36172 0))(
  ( (C!36173 (val!27792 Int)) )
))
(declare-datatypes ((Regex!17951 0))(
  ( (ElementMatch!17951 (c!1327578 C!36172)) (Concat!26796 (regOne!36414 Regex!17951) (regTwo!36414 Regex!17951)) (EmptyExpr!17951) (Star!17951 (reg!18280 Regex!17951)) (EmptyLang!17951) (Union!17951 (regOne!36415 Regex!17951) (regTwo!36415 Regex!17951)) )
))
(declare-fun r!11554 () Regex!17951)

(declare-fun a!1901 () C!36172)

(get-info :version)

(assert (=> b!7113929 (= res!2902794 (and (or (not ((_ is ElementMatch!17951) r!11554)) (not (= (c!1327578 r!11554) a!1901))) (not ((_ is Union!17951) r!11554))))))

(declare-fun b!7113930 () Bool)

(declare-fun e!4274995 () Bool)

(assert (=> b!7113930 (= e!4274998 e!4274995)))

(declare-fun res!2902793 () Bool)

(assert (=> b!7113930 (=> (not res!2902793) (not e!4274995))))

(declare-fun validRegex!9224 (Regex!17951) Bool)

(assert (=> b!7113930 (= res!2902793 (validRegex!9224 (regTwo!36414 r!11554)))))

(declare-datatypes ((List!68912 0))(
  ( (Nil!68788) (Cons!68788 (h!75236 Regex!17951) (t!382751 List!68912)) )
))
(declare-fun lt!2560341 () List!68912)

(declare-datatypes ((Context!13890 0))(
  ( (Context!13891 (exprs!7445 List!68912)) )
))
(declare-fun c!9994 () Context!13890)

(declare-fun auxCtx!45 () Context!13890)

(declare-fun ++!16103 (List!68912 List!68912) List!68912)

(assert (=> b!7113930 (= lt!2560341 (++!16103 (exprs!7445 c!9994) (exprs!7445 auxCtx!45)))))

(declare-fun lambda!432199 () Int)

(declare-datatypes ((Unit!162573 0))(
  ( (Unit!162574) )
))
(declare-fun lt!2560340 () Unit!162573)

(declare-fun lemmaConcatPreservesForall!1236 (List!68912 List!68912 Int) Unit!162573)

(assert (=> b!7113930 (= lt!2560340 (lemmaConcatPreservesForall!1236 (exprs!7445 c!9994) (exprs!7445 auxCtx!45) lambda!432199))))

(declare-fun lt!2560342 () Unit!162573)

(assert (=> b!7113930 (= lt!2560342 (lemmaConcatPreservesForall!1236 (exprs!7445 c!9994) (exprs!7445 auxCtx!45) lambda!432199))))

(declare-fun b!7113931 () Bool)

(assert (=> b!7113931 (= e!4274995 (not (validRegex!9224 (regOne!36414 r!11554))))))

(declare-fun b!7113932 () Bool)

(declare-fun e!4274996 () Bool)

(declare-fun nullable!7588 (Regex!17951) Bool)

(assert (=> b!7113932 (= e!4274996 (not (nullable!7588 (regOne!36414 r!11554))))))

(declare-fun b!7113933 () Bool)

(declare-fun res!2902791 () Bool)

(assert (=> b!7113933 (=> (not res!2902791) (not e!4274998))))

(assert (=> b!7113933 (= res!2902791 e!4274996)))

(declare-fun res!2902788 () Bool)

(assert (=> b!7113933 (=> res!2902788 e!4274996)))

(assert (=> b!7113933 (= res!2902788 (not ((_ is Concat!26796) r!11554)))))

(declare-fun b!7113927 () Bool)

(declare-fun res!2902792 () Bool)

(assert (=> b!7113927 (=> (not res!2902792) (not e!4274995))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2458 (Regex!17951 Context!13890 C!36172) (InoxSet Context!13890))

(declare-fun $colon$colon!2803 (List!68912 Regex!17951) List!68912)

(assert (=> b!7113927 (= res!2902792 (= (derivationStepZipperDown!2458 r!11554 (Context!13891 lt!2560341) a!1901) (derivationStepZipperDown!2458 (regOne!36414 r!11554) (Context!13891 ($colon$colon!2803 lt!2560341 (regTwo!36414 r!11554))) a!1901)))))

(declare-fun res!2902790 () Bool)

(assert (=> start!692416 (=> (not res!2902790) (not e!4274998))))

(assert (=> start!692416 (= res!2902790 (validRegex!9224 r!11554))))

(assert (=> start!692416 e!4274998))

(declare-fun e!4274999 () Bool)

(assert (=> start!692416 e!4274999))

(declare-fun tp_is_empty!45135 () Bool)

(assert (=> start!692416 tp_is_empty!45135))

(declare-fun inv!87740 (Context!13890) Bool)

(assert (=> start!692416 (and (inv!87740 c!9994) e!4274997)))

(assert (=> start!692416 (and (inv!87740 auxCtx!45) e!4275000)))

(declare-fun b!7113934 () Bool)

(declare-fun res!2902789 () Bool)

(assert (=> b!7113934 (=> (not res!2902789) (not e!4274998))))

(assert (=> b!7113934 (= res!2902789 ((_ is Concat!26796) r!11554))))

(declare-fun b!7113935 () Bool)

(assert (=> b!7113935 (= e!4274999 tp_is_empty!45135)))

(declare-fun b!7113936 () Bool)

(declare-fun tp!1957604 () Bool)

(declare-fun tp!1957607 () Bool)

(assert (=> b!7113936 (= e!4274999 (and tp!1957604 tp!1957607))))

(declare-fun b!7113937 () Bool)

(declare-fun tp!1957602 () Bool)

(assert (=> b!7113937 (= e!4274999 tp!1957602)))

(declare-fun b!7113938 () Bool)

(declare-fun tp!1957606 () Bool)

(declare-fun tp!1957605 () Bool)

(assert (=> b!7113938 (= e!4274999 (and tp!1957606 tp!1957605))))

(assert (= (and start!692416 res!2902790) b!7113929))

(assert (= (and b!7113929 res!2902794) b!7113933))

(assert (= (and b!7113933 (not res!2902788)) b!7113932))

(assert (= (and b!7113933 res!2902791) b!7113934))

(assert (= (and b!7113934 res!2902789) b!7113930))

(assert (= (and b!7113930 res!2902793) b!7113927))

(assert (= (and b!7113927 res!2902792) b!7113931))

(assert (= (and start!692416 ((_ is ElementMatch!17951) r!11554)) b!7113935))

(assert (= (and start!692416 ((_ is Concat!26796) r!11554)) b!7113938))

(assert (= (and start!692416 ((_ is Star!17951) r!11554)) b!7113937))

(assert (= (and start!692416 ((_ is Union!17951) r!11554)) b!7113936))

(assert (= start!692416 b!7113926))

(assert (= start!692416 b!7113928))

(declare-fun m!7833862 () Bool)

(assert (=> b!7113932 m!7833862))

(declare-fun m!7833864 () Bool)

(assert (=> b!7113931 m!7833864))

(declare-fun m!7833866 () Bool)

(assert (=> b!7113927 m!7833866))

(declare-fun m!7833868 () Bool)

(assert (=> b!7113927 m!7833868))

(declare-fun m!7833870 () Bool)

(assert (=> b!7113927 m!7833870))

(declare-fun m!7833872 () Bool)

(assert (=> b!7113930 m!7833872))

(declare-fun m!7833874 () Bool)

(assert (=> b!7113930 m!7833874))

(declare-fun m!7833876 () Bool)

(assert (=> b!7113930 m!7833876))

(assert (=> b!7113930 m!7833876))

(declare-fun m!7833878 () Bool)

(assert (=> start!692416 m!7833878))

(declare-fun m!7833880 () Bool)

(assert (=> start!692416 m!7833880))

(declare-fun m!7833882 () Bool)

(assert (=> start!692416 m!7833882))

(check-sat (not b!7113927) (not b!7113928) (not b!7113926) (not b!7113932) (not b!7113931) (not b!7113937) (not b!7113936) (not start!692416) (not b!7113930) (not b!7113938) tp_is_empty!45135)
(check-sat)
(get-model)

(declare-fun d!2220805 () Bool)

(declare-fun res!2902810 () Bool)

(declare-fun e!4275031 () Bool)

(assert (=> d!2220805 (=> res!2902810 e!4275031)))

(assert (=> d!2220805 (= res!2902810 ((_ is ElementMatch!17951) (regOne!36414 r!11554)))))

(assert (=> d!2220805 (= (validRegex!9224 (regOne!36414 r!11554)) e!4275031)))

(declare-fun bm!649347 () Bool)

(declare-fun call!649354 () Bool)

(declare-fun c!1327593 () Bool)

(assert (=> bm!649347 (= call!649354 (validRegex!9224 (ite c!1327593 (regOne!36415 (regOne!36414 r!11554)) (regTwo!36414 (regOne!36414 r!11554)))))))

(declare-fun b!7113979 () Bool)

(declare-fun e!4275032 () Bool)

(assert (=> b!7113979 (= e!4275031 e!4275032)))

(declare-fun c!1327594 () Bool)

(assert (=> b!7113979 (= c!1327594 ((_ is Star!17951) (regOne!36414 r!11554)))))

(declare-fun b!7113980 () Bool)

(declare-fun e!4275027 () Bool)

(declare-fun call!649352 () Bool)

(assert (=> b!7113980 (= e!4275027 call!649352)))

(declare-fun b!7113981 () Bool)

(declare-fun e!4275028 () Bool)

(declare-fun e!4275030 () Bool)

(assert (=> b!7113981 (= e!4275028 e!4275030)))

(declare-fun res!2902811 () Bool)

(assert (=> b!7113981 (=> (not res!2902811) (not e!4275030))))

(assert (=> b!7113981 (= res!2902811 call!649352)))

(declare-fun b!7113982 () Bool)

(declare-fun e!4275029 () Bool)

(assert (=> b!7113982 (= e!4275032 e!4275029)))

(declare-fun res!2902807 () Bool)

(assert (=> b!7113982 (= res!2902807 (not (nullable!7588 (reg!18280 (regOne!36414 r!11554)))))))

(assert (=> b!7113982 (=> (not res!2902807) (not e!4275029))))

(declare-fun b!7113983 () Bool)

(declare-fun e!4275033 () Bool)

(assert (=> b!7113983 (= e!4275032 e!4275033)))

(assert (=> b!7113983 (= c!1327593 ((_ is Union!17951) (regOne!36414 r!11554)))))

(declare-fun b!7113984 () Bool)

(declare-fun call!649353 () Bool)

(assert (=> b!7113984 (= e!4275029 call!649353)))

(declare-fun b!7113985 () Bool)

(assert (=> b!7113985 (= e!4275030 call!649354)))

(declare-fun bm!649348 () Bool)

(assert (=> bm!649348 (= call!649353 (validRegex!9224 (ite c!1327594 (reg!18280 (regOne!36414 r!11554)) (ite c!1327593 (regTwo!36415 (regOne!36414 r!11554)) (regOne!36414 (regOne!36414 r!11554))))))))

(declare-fun b!7113986 () Bool)

(declare-fun res!2902808 () Bool)

(assert (=> b!7113986 (=> res!2902808 e!4275028)))

(assert (=> b!7113986 (= res!2902808 (not ((_ is Concat!26796) (regOne!36414 r!11554))))))

(assert (=> b!7113986 (= e!4275033 e!4275028)))

(declare-fun bm!649349 () Bool)

(assert (=> bm!649349 (= call!649352 call!649353)))

(declare-fun b!7113987 () Bool)

(declare-fun res!2902809 () Bool)

(assert (=> b!7113987 (=> (not res!2902809) (not e!4275027))))

(assert (=> b!7113987 (= res!2902809 call!649354)))

(assert (=> b!7113987 (= e!4275033 e!4275027)))

(assert (= (and d!2220805 (not res!2902810)) b!7113979))

(assert (= (and b!7113979 c!1327594) b!7113982))

(assert (= (and b!7113979 (not c!1327594)) b!7113983))

(assert (= (and b!7113982 res!2902807) b!7113984))

(assert (= (and b!7113983 c!1327593) b!7113987))

(assert (= (and b!7113983 (not c!1327593)) b!7113986))

(assert (= (and b!7113987 res!2902809) b!7113980))

(assert (= (and b!7113986 (not res!2902808)) b!7113981))

(assert (= (and b!7113981 res!2902811) b!7113985))

(assert (= (or b!7113987 b!7113985) bm!649347))

(assert (= (or b!7113980 b!7113981) bm!649349))

(assert (= (or b!7113984 bm!649349) bm!649348))

(declare-fun m!7833884 () Bool)

(assert (=> bm!649347 m!7833884))

(declare-fun m!7833886 () Bool)

(assert (=> b!7113982 m!7833886))

(declare-fun m!7833888 () Bool)

(assert (=> bm!649348 m!7833888))

(assert (=> b!7113931 d!2220805))

(declare-fun d!2220809 () Bool)

(declare-fun res!2902815 () Bool)

(declare-fun e!4275038 () Bool)

(assert (=> d!2220809 (=> res!2902815 e!4275038)))

(assert (=> d!2220809 (= res!2902815 ((_ is ElementMatch!17951) (regTwo!36414 r!11554)))))

(assert (=> d!2220809 (= (validRegex!9224 (regTwo!36414 r!11554)) e!4275038)))

(declare-fun bm!649354 () Bool)

(declare-fun call!649361 () Bool)

(declare-fun c!1327595 () Bool)

(assert (=> bm!649354 (= call!649361 (validRegex!9224 (ite c!1327595 (regOne!36415 (regTwo!36414 r!11554)) (regTwo!36414 (regTwo!36414 r!11554)))))))

(declare-fun b!7113988 () Bool)

(declare-fun e!4275039 () Bool)

(assert (=> b!7113988 (= e!4275038 e!4275039)))

(declare-fun c!1327596 () Bool)

(assert (=> b!7113988 (= c!1327596 ((_ is Star!17951) (regTwo!36414 r!11554)))))

(declare-fun b!7113989 () Bool)

(declare-fun e!4275034 () Bool)

(declare-fun call!649359 () Bool)

(assert (=> b!7113989 (= e!4275034 call!649359)))

(declare-fun b!7113990 () Bool)

(declare-fun e!4275035 () Bool)

(declare-fun e!4275037 () Bool)

(assert (=> b!7113990 (= e!4275035 e!4275037)))

(declare-fun res!2902816 () Bool)

(assert (=> b!7113990 (=> (not res!2902816) (not e!4275037))))

(assert (=> b!7113990 (= res!2902816 call!649359)))

(declare-fun b!7113991 () Bool)

(declare-fun e!4275036 () Bool)

(assert (=> b!7113991 (= e!4275039 e!4275036)))

(declare-fun res!2902812 () Bool)

(assert (=> b!7113991 (= res!2902812 (not (nullable!7588 (reg!18280 (regTwo!36414 r!11554)))))))

(assert (=> b!7113991 (=> (not res!2902812) (not e!4275036))))

(declare-fun b!7113992 () Bool)

(declare-fun e!4275040 () Bool)

(assert (=> b!7113992 (= e!4275039 e!4275040)))

(assert (=> b!7113992 (= c!1327595 ((_ is Union!17951) (regTwo!36414 r!11554)))))

(declare-fun b!7113993 () Bool)

(declare-fun call!649360 () Bool)

(assert (=> b!7113993 (= e!4275036 call!649360)))

(declare-fun b!7113994 () Bool)

(assert (=> b!7113994 (= e!4275037 call!649361)))

(declare-fun bm!649355 () Bool)

(assert (=> bm!649355 (= call!649360 (validRegex!9224 (ite c!1327596 (reg!18280 (regTwo!36414 r!11554)) (ite c!1327595 (regTwo!36415 (regTwo!36414 r!11554)) (regOne!36414 (regTwo!36414 r!11554))))))))

(declare-fun b!7113995 () Bool)

(declare-fun res!2902813 () Bool)

(assert (=> b!7113995 (=> res!2902813 e!4275035)))

(assert (=> b!7113995 (= res!2902813 (not ((_ is Concat!26796) (regTwo!36414 r!11554))))))

(assert (=> b!7113995 (= e!4275040 e!4275035)))

(declare-fun bm!649356 () Bool)

(assert (=> bm!649356 (= call!649359 call!649360)))

(declare-fun b!7113996 () Bool)

(declare-fun res!2902814 () Bool)

(assert (=> b!7113996 (=> (not res!2902814) (not e!4275034))))

(assert (=> b!7113996 (= res!2902814 call!649361)))

(assert (=> b!7113996 (= e!4275040 e!4275034)))

(assert (= (and d!2220809 (not res!2902815)) b!7113988))

(assert (= (and b!7113988 c!1327596) b!7113991))

(assert (= (and b!7113988 (not c!1327596)) b!7113992))

(assert (= (and b!7113991 res!2902812) b!7113993))

(assert (= (and b!7113992 c!1327595) b!7113996))

(assert (= (and b!7113992 (not c!1327595)) b!7113995))

(assert (= (and b!7113996 res!2902814) b!7113989))

(assert (= (and b!7113995 (not res!2902813)) b!7113990))

(assert (= (and b!7113990 res!2902816) b!7113994))

(assert (= (or b!7113996 b!7113994) bm!649354))

(assert (= (or b!7113989 b!7113990) bm!649356))

(assert (= (or b!7113993 bm!649356) bm!649355))

(declare-fun m!7833890 () Bool)

(assert (=> bm!649354 m!7833890))

(declare-fun m!7833892 () Bool)

(assert (=> b!7113991 m!7833892))

(declare-fun m!7833894 () Bool)

(assert (=> bm!649355 m!7833894))

(assert (=> b!7113930 d!2220809))

(declare-fun d!2220811 () Bool)

(declare-fun e!4275045 () Bool)

(assert (=> d!2220811 e!4275045))

(declare-fun res!2902821 () Bool)

(assert (=> d!2220811 (=> (not res!2902821) (not e!4275045))))

(declare-fun lt!2560345 () List!68912)

(declare-fun content!14030 (List!68912) (InoxSet Regex!17951))

(assert (=> d!2220811 (= res!2902821 (= (content!14030 lt!2560345) ((_ map or) (content!14030 (exprs!7445 c!9994)) (content!14030 (exprs!7445 auxCtx!45)))))))

(declare-fun e!4275046 () List!68912)

(assert (=> d!2220811 (= lt!2560345 e!4275046)))

(declare-fun c!1327599 () Bool)

(assert (=> d!2220811 (= c!1327599 ((_ is Nil!68788) (exprs!7445 c!9994)))))

(assert (=> d!2220811 (= (++!16103 (exprs!7445 c!9994) (exprs!7445 auxCtx!45)) lt!2560345)))

(declare-fun b!7114006 () Bool)

(assert (=> b!7114006 (= e!4275046 (Cons!68788 (h!75236 (exprs!7445 c!9994)) (++!16103 (t!382751 (exprs!7445 c!9994)) (exprs!7445 auxCtx!45))))))

(declare-fun b!7114007 () Bool)

(declare-fun res!2902822 () Bool)

(assert (=> b!7114007 (=> (not res!2902822) (not e!4275045))))

(declare-fun size!41405 (List!68912) Int)

(assert (=> b!7114007 (= res!2902822 (= (size!41405 lt!2560345) (+ (size!41405 (exprs!7445 c!9994)) (size!41405 (exprs!7445 auxCtx!45)))))))

(declare-fun b!7114005 () Bool)

(assert (=> b!7114005 (= e!4275046 (exprs!7445 auxCtx!45))))

(declare-fun b!7114008 () Bool)

(assert (=> b!7114008 (= e!4275045 (or (not (= (exprs!7445 auxCtx!45) Nil!68788)) (= lt!2560345 (exprs!7445 c!9994))))))

(assert (= (and d!2220811 c!1327599) b!7114005))

(assert (= (and d!2220811 (not c!1327599)) b!7114006))

(assert (= (and d!2220811 res!2902821) b!7114007))

(assert (= (and b!7114007 res!2902822) b!7114008))

(declare-fun m!7833896 () Bool)

(assert (=> d!2220811 m!7833896))

(declare-fun m!7833898 () Bool)

(assert (=> d!2220811 m!7833898))

(declare-fun m!7833900 () Bool)

(assert (=> d!2220811 m!7833900))

(declare-fun m!7833902 () Bool)

(assert (=> b!7114006 m!7833902))

(declare-fun m!7833904 () Bool)

(assert (=> b!7114007 m!7833904))

(declare-fun m!7833906 () Bool)

(assert (=> b!7114007 m!7833906))

(declare-fun m!7833908 () Bool)

(assert (=> b!7114007 m!7833908))

(assert (=> b!7113930 d!2220811))

(declare-fun d!2220813 () Bool)

(declare-fun forall!16845 (List!68912 Int) Bool)

(assert (=> d!2220813 (forall!16845 (++!16103 (exprs!7445 c!9994) (exprs!7445 auxCtx!45)) lambda!432199)))

(declare-fun lt!2560348 () Unit!162573)

(declare-fun choose!54874 (List!68912 List!68912 Int) Unit!162573)

(assert (=> d!2220813 (= lt!2560348 (choose!54874 (exprs!7445 c!9994) (exprs!7445 auxCtx!45) lambda!432199))))

(assert (=> d!2220813 (forall!16845 (exprs!7445 c!9994) lambda!432199)))

(assert (=> d!2220813 (= (lemmaConcatPreservesForall!1236 (exprs!7445 c!9994) (exprs!7445 auxCtx!45) lambda!432199) lt!2560348)))

(declare-fun bs!1885391 () Bool)

(assert (= bs!1885391 d!2220813))

(assert (=> bs!1885391 m!7833874))

(assert (=> bs!1885391 m!7833874))

(declare-fun m!7833928 () Bool)

(assert (=> bs!1885391 m!7833928))

(declare-fun m!7833930 () Bool)

(assert (=> bs!1885391 m!7833930))

(declare-fun m!7833932 () Bool)

(assert (=> bs!1885391 m!7833932))

(assert (=> b!7113930 d!2220813))

(declare-fun b!7114088 () Bool)

(declare-fun e!4275099 () Bool)

(assert (=> b!7114088 (= e!4275099 (nullable!7588 (regOne!36414 r!11554)))))

(declare-fun b!7114089 () Bool)

(declare-fun e!4275100 () (InoxSet Context!13890))

(assert (=> b!7114089 (= e!4275100 (store ((as const (Array Context!13890 Bool)) false) (Context!13891 lt!2560341) true))))

(declare-fun c!1327629 () Bool)

(declare-fun bm!649398 () Bool)

(declare-fun c!1327631 () Bool)

(declare-fun call!649403 () List!68912)

(assert (=> bm!649398 (= call!649403 ($colon$colon!2803 (exprs!7445 (Context!13891 lt!2560341)) (ite (or c!1327631 c!1327629) (regTwo!36414 r!11554) r!11554)))))

(declare-fun bm!649399 () Bool)

(declare-fun call!649405 () List!68912)

(assert (=> bm!649399 (= call!649405 call!649403)))

(declare-fun b!7114090 () Bool)

(declare-fun e!4275101 () (InoxSet Context!13890))

(assert (=> b!7114090 (= e!4275101 ((as const (Array Context!13890 Bool)) false))))

(declare-fun call!649408 () (InoxSet Context!13890))

(declare-fun c!1327632 () Bool)

(declare-fun bm!649400 () Bool)

(assert (=> bm!649400 (= call!649408 (derivationStepZipperDown!2458 (ite c!1327632 (regTwo!36415 r!11554) (ite c!1327631 (regTwo!36414 r!11554) (ite c!1327629 (regOne!36414 r!11554) (reg!18280 r!11554)))) (ite (or c!1327632 c!1327631) (Context!13891 lt!2560341) (Context!13891 call!649405)) a!1901))))

(declare-fun b!7114091 () Bool)

(declare-fun e!4275097 () (InoxSet Context!13890))

(declare-fun e!4275098 () (InoxSet Context!13890))

(assert (=> b!7114091 (= e!4275097 e!4275098)))

(assert (=> b!7114091 (= c!1327629 ((_ is Concat!26796) r!11554))))

(declare-fun bm!649401 () Bool)

(declare-fun call!649406 () (InoxSet Context!13890))

(declare-fun call!649407 () (InoxSet Context!13890))

(assert (=> bm!649401 (= call!649406 call!649407)))

(declare-fun bm!649402 () Bool)

(assert (=> bm!649402 (= call!649407 call!649408)))

(declare-fun b!7114092 () Bool)

(assert (=> b!7114092 (= e!4275101 call!649406)))

(declare-fun b!7114093 () Bool)

(declare-fun e!4275096 () (InoxSet Context!13890))

(declare-fun call!649404 () (InoxSet Context!13890))

(assert (=> b!7114093 (= e!4275096 ((_ map or) call!649404 call!649408))))

(declare-fun bm!649403 () Bool)

(assert (=> bm!649403 (= call!649404 (derivationStepZipperDown!2458 (ite c!1327632 (regOne!36415 r!11554) (regOne!36414 r!11554)) (ite c!1327632 (Context!13891 lt!2560341) (Context!13891 call!649403)) a!1901))))

(declare-fun b!7114094 () Bool)

(assert (=> b!7114094 (= e!4275098 call!649406)))

(declare-fun b!7114095 () Bool)

(declare-fun c!1327628 () Bool)

(assert (=> b!7114095 (= c!1327628 ((_ is Star!17951) r!11554))))

(assert (=> b!7114095 (= e!4275098 e!4275101)))

(declare-fun b!7114096 () Bool)

(assert (=> b!7114096 (= c!1327631 e!4275099)))

(declare-fun res!2902846 () Bool)

(assert (=> b!7114096 (=> (not res!2902846) (not e!4275099))))

(assert (=> b!7114096 (= res!2902846 ((_ is Concat!26796) r!11554))))

(assert (=> b!7114096 (= e!4275096 e!4275097)))

(declare-fun d!2220819 () Bool)

(declare-fun c!1327630 () Bool)

(assert (=> d!2220819 (= c!1327630 (and ((_ is ElementMatch!17951) r!11554) (= (c!1327578 r!11554) a!1901)))))

(assert (=> d!2220819 (= (derivationStepZipperDown!2458 r!11554 (Context!13891 lt!2560341) a!1901) e!4275100)))

(declare-fun b!7114097 () Bool)

(assert (=> b!7114097 (= e!4275097 ((_ map or) call!649404 call!649407))))

(declare-fun b!7114098 () Bool)

(assert (=> b!7114098 (= e!4275100 e!4275096)))

(assert (=> b!7114098 (= c!1327632 ((_ is Union!17951) r!11554))))

(assert (= (and d!2220819 c!1327630) b!7114089))

(assert (= (and d!2220819 (not c!1327630)) b!7114098))

(assert (= (and b!7114098 c!1327632) b!7114093))

(assert (= (and b!7114098 (not c!1327632)) b!7114096))

(assert (= (and b!7114096 res!2902846) b!7114088))

(assert (= (and b!7114096 c!1327631) b!7114097))

(assert (= (and b!7114096 (not c!1327631)) b!7114091))

(assert (= (and b!7114091 c!1327629) b!7114094))

(assert (= (and b!7114091 (not c!1327629)) b!7114095))

(assert (= (and b!7114095 c!1327628) b!7114092))

(assert (= (and b!7114095 (not c!1327628)) b!7114090))

(assert (= (or b!7114094 b!7114092) bm!649399))

(assert (= (or b!7114094 b!7114092) bm!649401))

(assert (= (or b!7114097 bm!649401) bm!649402))

(assert (= (or b!7114097 bm!649399) bm!649398))

(assert (= (or b!7114093 bm!649402) bm!649400))

(assert (= (or b!7114093 b!7114097) bm!649403))

(declare-fun m!7833954 () Bool)

(assert (=> bm!649398 m!7833954))

(declare-fun m!7833956 () Bool)

(assert (=> b!7114089 m!7833956))

(declare-fun m!7833958 () Bool)

(assert (=> bm!649403 m!7833958))

(declare-fun m!7833960 () Bool)

(assert (=> bm!649400 m!7833960))

(assert (=> b!7114088 m!7833862))

(assert (=> b!7113927 d!2220819))

(declare-fun b!7114103 () Bool)

(declare-fun e!4275107 () Bool)

(assert (=> b!7114103 (= e!4275107 (nullable!7588 (regOne!36414 (regOne!36414 r!11554))))))

(declare-fun b!7114104 () Bool)

(declare-fun e!4275108 () (InoxSet Context!13890))

(assert (=> b!7114104 (= e!4275108 (store ((as const (Array Context!13890 Bool)) false) (Context!13891 ($colon$colon!2803 lt!2560341 (regTwo!36414 r!11554))) true))))

(declare-fun c!1327637 () Bool)

(declare-fun c!1327635 () Bool)

(declare-fun call!649409 () List!68912)

(declare-fun bm!649404 () Bool)

(assert (=> bm!649404 (= call!649409 ($colon$colon!2803 (exprs!7445 (Context!13891 ($colon$colon!2803 lt!2560341 (regTwo!36414 r!11554)))) (ite (or c!1327637 c!1327635) (regTwo!36414 (regOne!36414 r!11554)) (regOne!36414 r!11554))))))

(declare-fun bm!649405 () Bool)

(declare-fun call!649411 () List!68912)

(assert (=> bm!649405 (= call!649411 call!649409)))

(declare-fun b!7114105 () Bool)

(declare-fun e!4275109 () (InoxSet Context!13890))

(assert (=> b!7114105 (= e!4275109 ((as const (Array Context!13890 Bool)) false))))

(declare-fun bm!649406 () Bool)

(declare-fun c!1327638 () Bool)

(declare-fun call!649414 () (InoxSet Context!13890))

(assert (=> bm!649406 (= call!649414 (derivationStepZipperDown!2458 (ite c!1327638 (regTwo!36415 (regOne!36414 r!11554)) (ite c!1327637 (regTwo!36414 (regOne!36414 r!11554)) (ite c!1327635 (regOne!36414 (regOne!36414 r!11554)) (reg!18280 (regOne!36414 r!11554))))) (ite (or c!1327638 c!1327637) (Context!13891 ($colon$colon!2803 lt!2560341 (regTwo!36414 r!11554))) (Context!13891 call!649411)) a!1901))))

(declare-fun b!7114106 () Bool)

(declare-fun e!4275105 () (InoxSet Context!13890))

(declare-fun e!4275106 () (InoxSet Context!13890))

(assert (=> b!7114106 (= e!4275105 e!4275106)))

(assert (=> b!7114106 (= c!1327635 ((_ is Concat!26796) (regOne!36414 r!11554)))))

(declare-fun bm!649407 () Bool)

(declare-fun call!649412 () (InoxSet Context!13890))

(declare-fun call!649413 () (InoxSet Context!13890))

(assert (=> bm!649407 (= call!649412 call!649413)))

(declare-fun bm!649408 () Bool)

(assert (=> bm!649408 (= call!649413 call!649414)))

(declare-fun b!7114107 () Bool)

(assert (=> b!7114107 (= e!4275109 call!649412)))

(declare-fun b!7114108 () Bool)

(declare-fun e!4275104 () (InoxSet Context!13890))

(declare-fun call!649410 () (InoxSet Context!13890))

(assert (=> b!7114108 (= e!4275104 ((_ map or) call!649410 call!649414))))

(declare-fun bm!649409 () Bool)

(assert (=> bm!649409 (= call!649410 (derivationStepZipperDown!2458 (ite c!1327638 (regOne!36415 (regOne!36414 r!11554)) (regOne!36414 (regOne!36414 r!11554))) (ite c!1327638 (Context!13891 ($colon$colon!2803 lt!2560341 (regTwo!36414 r!11554))) (Context!13891 call!649409)) a!1901))))

(declare-fun b!7114109 () Bool)

(assert (=> b!7114109 (= e!4275106 call!649412)))

(declare-fun b!7114110 () Bool)

(declare-fun c!1327634 () Bool)

(assert (=> b!7114110 (= c!1327634 ((_ is Star!17951) (regOne!36414 r!11554)))))

(assert (=> b!7114110 (= e!4275106 e!4275109)))

(declare-fun b!7114111 () Bool)

(assert (=> b!7114111 (= c!1327637 e!4275107)))

(declare-fun res!2902849 () Bool)

(assert (=> b!7114111 (=> (not res!2902849) (not e!4275107))))

(assert (=> b!7114111 (= res!2902849 ((_ is Concat!26796) (regOne!36414 r!11554)))))

(assert (=> b!7114111 (= e!4275104 e!4275105)))

(declare-fun d!2220827 () Bool)

(declare-fun c!1327636 () Bool)

(assert (=> d!2220827 (= c!1327636 (and ((_ is ElementMatch!17951) (regOne!36414 r!11554)) (= (c!1327578 (regOne!36414 r!11554)) a!1901)))))

(assert (=> d!2220827 (= (derivationStepZipperDown!2458 (regOne!36414 r!11554) (Context!13891 ($colon$colon!2803 lt!2560341 (regTwo!36414 r!11554))) a!1901) e!4275108)))

(declare-fun b!7114112 () Bool)

(assert (=> b!7114112 (= e!4275105 ((_ map or) call!649410 call!649413))))

(declare-fun b!7114113 () Bool)

(assert (=> b!7114113 (= e!4275108 e!4275104)))

(assert (=> b!7114113 (= c!1327638 ((_ is Union!17951) (regOne!36414 r!11554)))))

(assert (= (and d!2220827 c!1327636) b!7114104))

(assert (= (and d!2220827 (not c!1327636)) b!7114113))

(assert (= (and b!7114113 c!1327638) b!7114108))

(assert (= (and b!7114113 (not c!1327638)) b!7114111))

(assert (= (and b!7114111 res!2902849) b!7114103))

(assert (= (and b!7114111 c!1327637) b!7114112))

(assert (= (and b!7114111 (not c!1327637)) b!7114106))

(assert (= (and b!7114106 c!1327635) b!7114109))

(assert (= (and b!7114106 (not c!1327635)) b!7114110))

(assert (= (and b!7114110 c!1327634) b!7114107))

(assert (= (and b!7114110 (not c!1327634)) b!7114105))

(assert (= (or b!7114109 b!7114107) bm!649405))

(assert (= (or b!7114109 b!7114107) bm!649407))

(assert (= (or b!7114112 bm!649407) bm!649408))

(assert (= (or b!7114112 bm!649405) bm!649404))

(assert (= (or b!7114108 bm!649408) bm!649406))

(assert (= (or b!7114108 b!7114112) bm!649409))

(declare-fun m!7833962 () Bool)

(assert (=> bm!649404 m!7833962))

(declare-fun m!7833964 () Bool)

(assert (=> b!7114104 m!7833964))

(declare-fun m!7833966 () Bool)

(assert (=> bm!649409 m!7833966))

(declare-fun m!7833968 () Bool)

(assert (=> bm!649406 m!7833968))

(declare-fun m!7833970 () Bool)

(assert (=> b!7114103 m!7833970))

(assert (=> b!7113927 d!2220827))

(declare-fun d!2220829 () Bool)

(assert (=> d!2220829 (= ($colon$colon!2803 lt!2560341 (regTwo!36414 r!11554)) (Cons!68788 (regTwo!36414 r!11554) lt!2560341))))

(assert (=> b!7113927 d!2220829))

(declare-fun d!2220831 () Bool)

(declare-fun nullableFct!2937 (Regex!17951) Bool)

(assert (=> d!2220831 (= (nullable!7588 (regOne!36414 r!11554)) (nullableFct!2937 (regOne!36414 r!11554)))))

(declare-fun bs!1885393 () Bool)

(assert (= bs!1885393 d!2220831))

(declare-fun m!7833978 () Bool)

(assert (=> bs!1885393 m!7833978))

(assert (=> b!7113932 d!2220831))

(declare-fun d!2220835 () Bool)

(declare-fun res!2902858 () Bool)

(declare-fun e!4275121 () Bool)

(assert (=> d!2220835 (=> res!2902858 e!4275121)))

(assert (=> d!2220835 (= res!2902858 ((_ is ElementMatch!17951) r!11554))))

(assert (=> d!2220835 (= (validRegex!9224 r!11554) e!4275121)))

(declare-fun bm!649413 () Bool)

(declare-fun call!649420 () Bool)

(declare-fun c!1327641 () Bool)

(assert (=> bm!649413 (= call!649420 (validRegex!9224 (ite c!1327641 (regOne!36415 r!11554) (regTwo!36414 r!11554))))))

(declare-fun b!7114123 () Bool)

(declare-fun e!4275122 () Bool)

(assert (=> b!7114123 (= e!4275121 e!4275122)))

(declare-fun c!1327642 () Bool)

(assert (=> b!7114123 (= c!1327642 ((_ is Star!17951) r!11554))))

(declare-fun b!7114124 () Bool)

(declare-fun e!4275115 () Bool)

(declare-fun call!649418 () Bool)

(assert (=> b!7114124 (= e!4275115 call!649418)))

(declare-fun b!7114125 () Bool)

(declare-fun e!4275116 () Bool)

(declare-fun e!4275119 () Bool)

(assert (=> b!7114125 (= e!4275116 e!4275119)))

(declare-fun res!2902859 () Bool)

(assert (=> b!7114125 (=> (not res!2902859) (not e!4275119))))

(assert (=> b!7114125 (= res!2902859 call!649418)))

(declare-fun b!7114126 () Bool)

(declare-fun e!4275118 () Bool)

(assert (=> b!7114126 (= e!4275122 e!4275118)))

(declare-fun res!2902855 () Bool)

(assert (=> b!7114126 (= res!2902855 (not (nullable!7588 (reg!18280 r!11554))))))

(assert (=> b!7114126 (=> (not res!2902855) (not e!4275118))))

(declare-fun b!7114127 () Bool)

(declare-fun e!4275123 () Bool)

(assert (=> b!7114127 (= e!4275122 e!4275123)))

(assert (=> b!7114127 (= c!1327641 ((_ is Union!17951) r!11554))))

(declare-fun b!7114128 () Bool)

(declare-fun call!649419 () Bool)

(assert (=> b!7114128 (= e!4275118 call!649419)))

(declare-fun b!7114129 () Bool)

(assert (=> b!7114129 (= e!4275119 call!649420)))

(declare-fun bm!649414 () Bool)

(assert (=> bm!649414 (= call!649419 (validRegex!9224 (ite c!1327642 (reg!18280 r!11554) (ite c!1327641 (regTwo!36415 r!11554) (regOne!36414 r!11554)))))))

(declare-fun b!7114130 () Bool)

(declare-fun res!2902856 () Bool)

(assert (=> b!7114130 (=> res!2902856 e!4275116)))

(assert (=> b!7114130 (= res!2902856 (not ((_ is Concat!26796) r!11554)))))

(assert (=> b!7114130 (= e!4275123 e!4275116)))

(declare-fun bm!649415 () Bool)

(assert (=> bm!649415 (= call!649418 call!649419)))

(declare-fun b!7114131 () Bool)

(declare-fun res!2902857 () Bool)

(assert (=> b!7114131 (=> (not res!2902857) (not e!4275115))))

(assert (=> b!7114131 (= res!2902857 call!649420)))

(assert (=> b!7114131 (= e!4275123 e!4275115)))

(assert (= (and d!2220835 (not res!2902858)) b!7114123))

(assert (= (and b!7114123 c!1327642) b!7114126))

(assert (= (and b!7114123 (not c!1327642)) b!7114127))

(assert (= (and b!7114126 res!2902855) b!7114128))

(assert (= (and b!7114127 c!1327641) b!7114131))

(assert (= (and b!7114127 (not c!1327641)) b!7114130))

(assert (= (and b!7114131 res!2902857) b!7114124))

(assert (= (and b!7114130 (not res!2902856)) b!7114125))

(assert (= (and b!7114125 res!2902859) b!7114129))

(assert (= (or b!7114131 b!7114129) bm!649413))

(assert (= (or b!7114124 b!7114125) bm!649415))

(assert (= (or b!7114128 bm!649415) bm!649414))

(declare-fun m!7833980 () Bool)

(assert (=> bm!649413 m!7833980))

(declare-fun m!7833984 () Bool)

(assert (=> b!7114126 m!7833984))

(declare-fun m!7833988 () Bool)

(assert (=> bm!649414 m!7833988))

(assert (=> start!692416 d!2220835))

(declare-fun bs!1885394 () Bool)

(declare-fun d!2220837 () Bool)

(assert (= bs!1885394 (and d!2220837 b!7113930)))

(declare-fun lambda!432204 () Int)

(assert (=> bs!1885394 (= lambda!432204 lambda!432199)))

(assert (=> d!2220837 (= (inv!87740 c!9994) (forall!16845 (exprs!7445 c!9994) lambda!432204))))

(declare-fun bs!1885395 () Bool)

(assert (= bs!1885395 d!2220837))

(declare-fun m!7833998 () Bool)

(assert (=> bs!1885395 m!7833998))

(assert (=> start!692416 d!2220837))

(declare-fun bs!1885396 () Bool)

(declare-fun d!2220843 () Bool)

(assert (= bs!1885396 (and d!2220843 b!7113930)))

(declare-fun lambda!432205 () Int)

(assert (=> bs!1885396 (= lambda!432205 lambda!432199)))

(declare-fun bs!1885397 () Bool)

(assert (= bs!1885397 (and d!2220843 d!2220837)))

(assert (=> bs!1885397 (= lambda!432205 lambda!432204)))

(assert (=> d!2220843 (= (inv!87740 auxCtx!45) (forall!16845 (exprs!7445 auxCtx!45) lambda!432205))))

(declare-fun bs!1885399 () Bool)

(assert (= bs!1885399 d!2220843))

(declare-fun m!7834000 () Bool)

(assert (=> bs!1885399 m!7834000))

(assert (=> start!692416 d!2220843))

(declare-fun b!7114153 () Bool)

(declare-fun e!4275133 () Bool)

(declare-fun tp!1957623 () Bool)

(assert (=> b!7114153 (= e!4275133 tp!1957623)))

(assert (=> b!7113936 (= tp!1957604 e!4275133)))

(declare-fun b!7114151 () Bool)

(assert (=> b!7114151 (= e!4275133 tp_is_empty!45135)))

(declare-fun b!7114152 () Bool)

(declare-fun tp!1957620 () Bool)

(declare-fun tp!1957619 () Bool)

(assert (=> b!7114152 (= e!4275133 (and tp!1957620 tp!1957619))))

(declare-fun b!7114154 () Bool)

(declare-fun tp!1957621 () Bool)

(declare-fun tp!1957622 () Bool)

(assert (=> b!7114154 (= e!4275133 (and tp!1957621 tp!1957622))))

(assert (= (and b!7113936 ((_ is ElementMatch!17951) (regOne!36415 r!11554))) b!7114151))

(assert (= (and b!7113936 ((_ is Concat!26796) (regOne!36415 r!11554))) b!7114152))

(assert (= (and b!7113936 ((_ is Star!17951) (regOne!36415 r!11554))) b!7114153))

(assert (= (and b!7113936 ((_ is Union!17951) (regOne!36415 r!11554))) b!7114154))

(declare-fun b!7114161 () Bool)

(declare-fun e!4275136 () Bool)

(declare-fun tp!1957632 () Bool)

(assert (=> b!7114161 (= e!4275136 tp!1957632)))

(assert (=> b!7113936 (= tp!1957607 e!4275136)))

(declare-fun b!7114159 () Bool)

(assert (=> b!7114159 (= e!4275136 tp_is_empty!45135)))

(declare-fun b!7114160 () Bool)

(declare-fun tp!1957629 () Bool)

(declare-fun tp!1957628 () Bool)

(assert (=> b!7114160 (= e!4275136 (and tp!1957629 tp!1957628))))

(declare-fun b!7114162 () Bool)

(declare-fun tp!1957630 () Bool)

(declare-fun tp!1957631 () Bool)

(assert (=> b!7114162 (= e!4275136 (and tp!1957630 tp!1957631))))

(assert (= (and b!7113936 ((_ is ElementMatch!17951) (regTwo!36415 r!11554))) b!7114159))

(assert (= (and b!7113936 ((_ is Concat!26796) (regTwo!36415 r!11554))) b!7114160))

(assert (= (and b!7113936 ((_ is Star!17951) (regTwo!36415 r!11554))) b!7114161))

(assert (= (and b!7113936 ((_ is Union!17951) (regTwo!36415 r!11554))) b!7114162))

(declare-fun b!7114165 () Bool)

(declare-fun e!4275137 () Bool)

(declare-fun tp!1957637 () Bool)

(assert (=> b!7114165 (= e!4275137 tp!1957637)))

(assert (=> b!7113937 (= tp!1957602 e!4275137)))

(declare-fun b!7114163 () Bool)

(assert (=> b!7114163 (= e!4275137 tp_is_empty!45135)))

(declare-fun b!7114164 () Bool)

(declare-fun tp!1957634 () Bool)

(declare-fun tp!1957633 () Bool)

(assert (=> b!7114164 (= e!4275137 (and tp!1957634 tp!1957633))))

(declare-fun b!7114166 () Bool)

(declare-fun tp!1957635 () Bool)

(declare-fun tp!1957636 () Bool)

(assert (=> b!7114166 (= e!4275137 (and tp!1957635 tp!1957636))))

(assert (= (and b!7113937 ((_ is ElementMatch!17951) (reg!18280 r!11554))) b!7114163))

(assert (= (and b!7113937 ((_ is Concat!26796) (reg!18280 r!11554))) b!7114164))

(assert (= (and b!7113937 ((_ is Star!17951) (reg!18280 r!11554))) b!7114165))

(assert (= (and b!7113937 ((_ is Union!17951) (reg!18280 r!11554))) b!7114166))

(declare-fun b!7114182 () Bool)

(declare-fun e!4275143 () Bool)

(declare-fun tp!1957654 () Bool)

(declare-fun tp!1957655 () Bool)

(assert (=> b!7114182 (= e!4275143 (and tp!1957654 tp!1957655))))

(assert (=> b!7113926 (= tp!1957603 e!4275143)))

(assert (= (and b!7113926 ((_ is Cons!68788) (exprs!7445 c!9994))) b!7114182))

(declare-fun b!7114183 () Bool)

(declare-fun e!4275144 () Bool)

(declare-fun tp!1957656 () Bool)

(declare-fun tp!1957657 () Bool)

(assert (=> b!7114183 (= e!4275144 (and tp!1957656 tp!1957657))))

(assert (=> b!7113928 (= tp!1957608 e!4275144)))

(assert (= (and b!7113928 ((_ is Cons!68788) (exprs!7445 auxCtx!45))) b!7114183))

(declare-fun b!7114186 () Bool)

(declare-fun e!4275145 () Bool)

(declare-fun tp!1957662 () Bool)

(assert (=> b!7114186 (= e!4275145 tp!1957662)))

(assert (=> b!7113938 (= tp!1957606 e!4275145)))

(declare-fun b!7114184 () Bool)

(assert (=> b!7114184 (= e!4275145 tp_is_empty!45135)))

(declare-fun b!7114185 () Bool)

(declare-fun tp!1957659 () Bool)

(declare-fun tp!1957658 () Bool)

(assert (=> b!7114185 (= e!4275145 (and tp!1957659 tp!1957658))))

(declare-fun b!7114187 () Bool)

(declare-fun tp!1957660 () Bool)

(declare-fun tp!1957661 () Bool)

(assert (=> b!7114187 (= e!4275145 (and tp!1957660 tp!1957661))))

(assert (= (and b!7113938 ((_ is ElementMatch!17951) (regOne!36414 r!11554))) b!7114184))

(assert (= (and b!7113938 ((_ is Concat!26796) (regOne!36414 r!11554))) b!7114185))

(assert (= (and b!7113938 ((_ is Star!17951) (regOne!36414 r!11554))) b!7114186))

(assert (= (and b!7113938 ((_ is Union!17951) (regOne!36414 r!11554))) b!7114187))

(declare-fun b!7114190 () Bool)

(declare-fun e!4275146 () Bool)

(declare-fun tp!1957667 () Bool)

(assert (=> b!7114190 (= e!4275146 tp!1957667)))

(assert (=> b!7113938 (= tp!1957605 e!4275146)))

(declare-fun b!7114188 () Bool)

(assert (=> b!7114188 (= e!4275146 tp_is_empty!45135)))

(declare-fun b!7114189 () Bool)

(declare-fun tp!1957664 () Bool)

(declare-fun tp!1957663 () Bool)

(assert (=> b!7114189 (= e!4275146 (and tp!1957664 tp!1957663))))

(declare-fun b!7114191 () Bool)

(declare-fun tp!1957665 () Bool)

(declare-fun tp!1957666 () Bool)

(assert (=> b!7114191 (= e!4275146 (and tp!1957665 tp!1957666))))

(assert (= (and b!7113938 ((_ is ElementMatch!17951) (regTwo!36414 r!11554))) b!7114188))

(assert (= (and b!7113938 ((_ is Concat!26796) (regTwo!36414 r!11554))) b!7114189))

(assert (= (and b!7113938 ((_ is Star!17951) (regTwo!36414 r!11554))) b!7114190))

(assert (= (and b!7113938 ((_ is Union!17951) (regTwo!36414 r!11554))) b!7114191))

(check-sat (not bm!649414) (not bm!649409) (not b!7114153) (not bm!649398) (not b!7113982) (not d!2220831) (not bm!649404) (not b!7114161) (not b!7114152) (not b!7114191) (not b!7114187) (not b!7114186) (not b!7114182) (not bm!649347) (not b!7114190) (not bm!649403) (not b!7114166) (not d!2220813) (not b!7114164) (not b!7114088) (not bm!649354) (not bm!649406) (not bm!649348) (not b!7114189) (not b!7113991) (not b!7114165) (not b!7114162) (not b!7114160) (not b!7114185) (not b!7114006) (not b!7114183) (not bm!649413) (not d!2220837) (not b!7114126) (not b!7114007) (not bm!649355) (not d!2220811) (not b!7114154) (not b!7114103) (not d!2220843) (not bm!649400) tp_is_empty!45135)
(check-sat)
