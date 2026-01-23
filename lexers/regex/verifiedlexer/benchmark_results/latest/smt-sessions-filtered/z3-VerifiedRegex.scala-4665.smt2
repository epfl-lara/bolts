; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243172 () Bool)

(assert start!243172)

(declare-fun b!2488115 () Bool)

(declare-fun res!1053253 () Bool)

(declare-fun e!1579876 () Bool)

(assert (=> b!2488115 (=> (not res!1053253) (not e!1579876))))

(declare-datatypes ((C!14768 0))(
  ( (C!14769 (val!9036 Int)) )
))
(declare-datatypes ((Regex!7305 0))(
  ( (ElementMatch!7305 (c!395399 C!14768)) (Concat!12001 (regOne!15122 Regex!7305) (regTwo!15122 Regex!7305)) (EmptyExpr!7305) (Star!7305 (reg!7634 Regex!7305)) (EmptyLang!7305) (Union!7305 (regOne!15123 Regex!7305) (regTwo!15123 Regex!7305)) )
))
(declare-fun r!26136 () Regex!7305)

(declare-datatypes ((List!29372 0))(
  ( (Nil!29272) (Cons!29272 (h!34692 C!14768) (t!211071 List!29372)) )
))
(declare-fun s!14955 () List!29372)

(declare-fun matchR!3356 (Regex!7305 List!29372) Bool)

(assert (=> b!2488115 (= res!1053253 (matchR!3356 r!26136 s!14955))))

(declare-fun b!2488116 () Bool)

(assert (=> b!2488116 (= e!1579876 (not (not (= s!14955 Nil!29272))))))

(declare-fun derivative!2 (Regex!7305 List!29372) Regex!7305)

(assert (=> b!2488116 (matchR!3356 (derivative!2 r!26136 s!14955) Nil!29272)))

(declare-datatypes ((Unit!42963 0))(
  ( (Unit!42964) )
))
(declare-fun lt!893706 () Unit!42963)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!2 (Regex!7305 List!29372) Unit!42963)

(assert (=> b!2488116 (= lt!893706 (lemmaMatchRIsSameAsWholeDerivativeAndNil!2 r!26136 s!14955))))

(declare-fun b!2488117 () Bool)

(declare-fun e!1579875 () Bool)

(declare-fun tp!796483 () Bool)

(declare-fun tp!796485 () Bool)

(assert (=> b!2488117 (= e!1579875 (and tp!796483 tp!796485))))

(declare-fun b!2488118 () Bool)

(declare-fun tp!796482 () Bool)

(assert (=> b!2488118 (= e!1579875 tp!796482)))

(declare-fun b!2488119 () Bool)

(declare-fun res!1053252 () Bool)

(assert (=> b!2488119 (=> (not res!1053252) (not e!1579876))))

(declare-fun c!13476 () C!14768)

(declare-fun contains!5281 (List!29372 C!14768) Bool)

(declare-fun firstChars!72 (Regex!7305) List!29372)

(assert (=> b!2488119 (= res!1053252 (not (contains!5281 (firstChars!72 r!26136) c!13476)))))

(declare-fun b!2488120 () Bool)

(declare-fun tp!796481 () Bool)

(declare-fun tp!796484 () Bool)

(assert (=> b!2488120 (= e!1579875 (and tp!796481 tp!796484))))

(declare-fun b!2488121 () Bool)

(declare-fun tp_is_empty!12465 () Bool)

(assert (=> b!2488121 (= e!1579875 tp_is_empty!12465)))

(declare-fun b!2488122 () Bool)

(declare-fun e!1579874 () Bool)

(declare-fun tp!796486 () Bool)

(assert (=> b!2488122 (= e!1579874 (and tp_is_empty!12465 tp!796486))))

(declare-fun res!1053254 () Bool)

(assert (=> start!243172 (=> (not res!1053254) (not e!1579876))))

(declare-fun validRegex!2931 (Regex!7305) Bool)

(assert (=> start!243172 (= res!1053254 (validRegex!2931 r!26136))))

(assert (=> start!243172 e!1579876))

(assert (=> start!243172 e!1579875))

(assert (=> start!243172 e!1579874))

(assert (=> start!243172 tp_is_empty!12465))

(declare-fun b!2488123 () Bool)

(declare-fun res!1053251 () Bool)

(assert (=> b!2488123 (=> (not res!1053251) (not e!1579876))))

(declare-fun head!5661 (List!29372) C!14768)

(assert (=> b!2488123 (= res!1053251 (= (head!5661 s!14955) c!13476))))

(declare-fun b!2488124 () Bool)

(declare-fun res!1053250 () Bool)

(assert (=> b!2488124 (=> (not res!1053250) (not e!1579876))))

(assert (=> b!2488124 (= res!1053250 (contains!5281 s!14955 c!13476))))

(assert (= (and start!243172 res!1053254) b!2488124))

(assert (= (and b!2488124 res!1053250) b!2488123))

(assert (= (and b!2488123 res!1053251) b!2488119))

(assert (= (and b!2488119 res!1053252) b!2488115))

(assert (= (and b!2488115 res!1053253) b!2488116))

(get-info :version)

(assert (= (and start!243172 ((_ is ElementMatch!7305) r!26136)) b!2488121))

(assert (= (and start!243172 ((_ is Concat!12001) r!26136)) b!2488117))

(assert (= (and start!243172 ((_ is Star!7305) r!26136)) b!2488118))

(assert (= (and start!243172 ((_ is Union!7305) r!26136)) b!2488120))

(assert (= (and start!243172 ((_ is Cons!29272) s!14955)) b!2488122))

(declare-fun m!2856743 () Bool)

(assert (=> b!2488123 m!2856743))

(declare-fun m!2856745 () Bool)

(assert (=> b!2488115 m!2856745))

(declare-fun m!2856747 () Bool)

(assert (=> start!243172 m!2856747))

(declare-fun m!2856749 () Bool)

(assert (=> b!2488119 m!2856749))

(assert (=> b!2488119 m!2856749))

(declare-fun m!2856751 () Bool)

(assert (=> b!2488119 m!2856751))

(declare-fun m!2856753 () Bool)

(assert (=> b!2488124 m!2856753))

(declare-fun m!2856755 () Bool)

(assert (=> b!2488116 m!2856755))

(assert (=> b!2488116 m!2856755))

(declare-fun m!2856757 () Bool)

(assert (=> b!2488116 m!2856757))

(declare-fun m!2856759 () Bool)

(assert (=> b!2488116 m!2856759))

(check-sat (not b!2488116) tp_is_empty!12465 (not b!2488117) (not b!2488118) (not b!2488124) (not b!2488119) (not b!2488123) (not b!2488120) (not b!2488122) (not start!243172) (not b!2488115))
(check-sat)
(get-model)

(declare-fun b!2488157 () Bool)

(declare-fun e!1579901 () Bool)

(declare-fun e!1579899 () Bool)

(assert (=> b!2488157 (= e!1579901 e!1579899)))

(declare-fun res!1053282 () Bool)

(assert (=> b!2488157 (=> (not res!1053282) (not e!1579899))))

(declare-fun lt!893711 () Bool)

(assert (=> b!2488157 (= res!1053282 (not lt!893711))))

(declare-fun b!2488158 () Bool)

(declare-fun res!1053278 () Bool)

(assert (=> b!2488158 (=> res!1053278 e!1579901)))

(declare-fun e!1579900 () Bool)

(assert (=> b!2488158 (= res!1053278 e!1579900)))

(declare-fun res!1053279 () Bool)

(assert (=> b!2488158 (=> (not res!1053279) (not e!1579900))))

(assert (=> b!2488158 (= res!1053279 lt!893711)))

(declare-fun b!2488160 () Bool)

(declare-fun e!1579898 () Bool)

(declare-fun e!1579895 () Bool)

(assert (=> b!2488160 (= e!1579898 e!1579895)))

(declare-fun c!395408 () Bool)

(assert (=> b!2488160 (= c!395408 ((_ is EmptyLang!7305) (derivative!2 r!26136 s!14955)))))

(declare-fun b!2488161 () Bool)

(declare-fun e!1579897 () Bool)

(assert (=> b!2488161 (= e!1579899 e!1579897)))

(declare-fun res!1053277 () Bool)

(assert (=> b!2488161 (=> res!1053277 e!1579897)))

(declare-fun call!152630 () Bool)

(assert (=> b!2488161 (= res!1053277 call!152630)))

(declare-fun b!2488162 () Bool)

(declare-fun e!1579896 () Bool)

(declare-fun nullable!2225 (Regex!7305) Bool)

(assert (=> b!2488162 (= e!1579896 (nullable!2225 (derivative!2 r!26136 s!14955)))))

(declare-fun b!2488163 () Bool)

(declare-fun res!1053276 () Bool)

(assert (=> b!2488163 (=> res!1053276 e!1579901)))

(assert (=> b!2488163 (= res!1053276 (not ((_ is ElementMatch!7305) (derivative!2 r!26136 s!14955))))))

(assert (=> b!2488163 (= e!1579895 e!1579901)))

(declare-fun b!2488164 () Bool)

(assert (=> b!2488164 (= e!1579895 (not lt!893711))))

(declare-fun bm!152625 () Bool)

(declare-fun isEmpty!16782 (List!29372) Bool)

(assert (=> bm!152625 (= call!152630 (isEmpty!16782 Nil!29272))))

(declare-fun b!2488165 () Bool)

(declare-fun derivativeStep!1877 (Regex!7305 C!14768) Regex!7305)

(declare-fun tail!3943 (List!29372) List!29372)

(assert (=> b!2488165 (= e!1579896 (matchR!3356 (derivativeStep!1877 (derivative!2 r!26136 s!14955) (head!5661 Nil!29272)) (tail!3943 Nil!29272)))))

(declare-fun b!2488166 () Bool)

(assert (=> b!2488166 (= e!1579898 (= lt!893711 call!152630))))

(declare-fun d!714070 () Bool)

(assert (=> d!714070 e!1579898))

(declare-fun c!395407 () Bool)

(assert (=> d!714070 (= c!395407 ((_ is EmptyExpr!7305) (derivative!2 r!26136 s!14955)))))

(assert (=> d!714070 (= lt!893711 e!1579896)))

(declare-fun c!395406 () Bool)

(assert (=> d!714070 (= c!395406 (isEmpty!16782 Nil!29272))))

(assert (=> d!714070 (validRegex!2931 (derivative!2 r!26136 s!14955))))

(assert (=> d!714070 (= (matchR!3356 (derivative!2 r!26136 s!14955) Nil!29272) lt!893711)))

(declare-fun b!2488159 () Bool)

(declare-fun res!1053280 () Bool)

(assert (=> b!2488159 (=> (not res!1053280) (not e!1579900))))

(assert (=> b!2488159 (= res!1053280 (isEmpty!16782 (tail!3943 Nil!29272)))))

(declare-fun b!2488167 () Bool)

(declare-fun res!1053275 () Bool)

(assert (=> b!2488167 (=> res!1053275 e!1579897)))

(assert (=> b!2488167 (= res!1053275 (not (isEmpty!16782 (tail!3943 Nil!29272))))))

(declare-fun b!2488168 () Bool)

(assert (=> b!2488168 (= e!1579897 (not (= (head!5661 Nil!29272) (c!395399 (derivative!2 r!26136 s!14955)))))))

(declare-fun b!2488169 () Bool)

(assert (=> b!2488169 (= e!1579900 (= (head!5661 Nil!29272) (c!395399 (derivative!2 r!26136 s!14955))))))

(declare-fun b!2488170 () Bool)

(declare-fun res!1053281 () Bool)

(assert (=> b!2488170 (=> (not res!1053281) (not e!1579900))))

(assert (=> b!2488170 (= res!1053281 (not call!152630))))

(assert (= (and d!714070 c!395406) b!2488162))

(assert (= (and d!714070 (not c!395406)) b!2488165))

(assert (= (and d!714070 c!395407) b!2488166))

(assert (= (and d!714070 (not c!395407)) b!2488160))

(assert (= (and b!2488160 c!395408) b!2488164))

(assert (= (and b!2488160 (not c!395408)) b!2488163))

(assert (= (and b!2488163 (not res!1053276)) b!2488158))

(assert (= (and b!2488158 res!1053279) b!2488170))

(assert (= (and b!2488170 res!1053281) b!2488159))

(assert (= (and b!2488159 res!1053280) b!2488169))

(assert (= (and b!2488158 (not res!1053278)) b!2488157))

(assert (= (and b!2488157 res!1053282) b!2488161))

(assert (= (and b!2488161 (not res!1053277)) b!2488167))

(assert (= (and b!2488167 (not res!1053275)) b!2488168))

(assert (= (or b!2488166 b!2488161 b!2488170) bm!152625))

(declare-fun m!2856761 () Bool)

(assert (=> d!714070 m!2856761))

(assert (=> d!714070 m!2856755))

(declare-fun m!2856763 () Bool)

(assert (=> d!714070 m!2856763))

(declare-fun m!2856765 () Bool)

(assert (=> b!2488165 m!2856765))

(assert (=> b!2488165 m!2856755))

(assert (=> b!2488165 m!2856765))

(declare-fun m!2856767 () Bool)

(assert (=> b!2488165 m!2856767))

(declare-fun m!2856769 () Bool)

(assert (=> b!2488165 m!2856769))

(assert (=> b!2488165 m!2856767))

(assert (=> b!2488165 m!2856769))

(declare-fun m!2856771 () Bool)

(assert (=> b!2488165 m!2856771))

(assert (=> b!2488159 m!2856769))

(assert (=> b!2488159 m!2856769))

(declare-fun m!2856773 () Bool)

(assert (=> b!2488159 m!2856773))

(assert (=> b!2488167 m!2856769))

(assert (=> b!2488167 m!2856769))

(assert (=> b!2488167 m!2856773))

(assert (=> b!2488162 m!2856755))

(declare-fun m!2856775 () Bool)

(assert (=> b!2488162 m!2856775))

(assert (=> b!2488168 m!2856765))

(assert (=> bm!152625 m!2856761))

(assert (=> b!2488169 m!2856765))

(assert (=> b!2488116 d!714070))

(declare-fun d!714074 () Bool)

(declare-fun lt!893715 () Regex!7305)

(assert (=> d!714074 (validRegex!2931 lt!893715)))

(declare-fun e!1579906 () Regex!7305)

(assert (=> d!714074 (= lt!893715 e!1579906)))

(declare-fun c!395411 () Bool)

(assert (=> d!714074 (= c!395411 ((_ is Cons!29272) s!14955))))

(assert (=> d!714074 (validRegex!2931 r!26136)))

(assert (=> d!714074 (= (derivative!2 r!26136 s!14955) lt!893715)))

(declare-fun b!2488177 () Bool)

(assert (=> b!2488177 (= e!1579906 (derivative!2 (derivativeStep!1877 r!26136 (h!34692 s!14955)) (t!211071 s!14955)))))

(declare-fun b!2488178 () Bool)

(assert (=> b!2488178 (= e!1579906 r!26136)))

(assert (= (and d!714074 c!395411) b!2488177))

(assert (= (and d!714074 (not c!395411)) b!2488178))

(declare-fun m!2856783 () Bool)

(assert (=> d!714074 m!2856783))

(assert (=> d!714074 m!2856747))

(declare-fun m!2856785 () Bool)

(assert (=> b!2488177 m!2856785))

(assert (=> b!2488177 m!2856785))

(declare-fun m!2856787 () Bool)

(assert (=> b!2488177 m!2856787))

(assert (=> b!2488116 d!714074))

(declare-fun d!714078 () Bool)

(assert (=> d!714078 (= (matchR!3356 r!26136 s!14955) (matchR!3356 (derivative!2 r!26136 s!14955) Nil!29272))))

(declare-fun lt!893718 () Unit!42963)

(declare-fun choose!14729 (Regex!7305 List!29372) Unit!42963)

(assert (=> d!714078 (= lt!893718 (choose!14729 r!26136 s!14955))))

(assert (=> d!714078 (validRegex!2931 r!26136)))

(assert (=> d!714078 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!2 r!26136 s!14955) lt!893718)))

(declare-fun bs!468314 () Bool)

(assert (= bs!468314 d!714078))

(declare-fun m!2856789 () Bool)

(assert (=> bs!468314 m!2856789))

(assert (=> bs!468314 m!2856745))

(assert (=> bs!468314 m!2856755))

(assert (=> bs!468314 m!2856757))

(assert (=> bs!468314 m!2856755))

(assert (=> bs!468314 m!2856747))

(assert (=> b!2488116 d!714078))

(declare-fun bm!152632 () Bool)

(declare-fun call!152639 () Bool)

(declare-fun call!152638 () Bool)

(assert (=> bm!152632 (= call!152639 call!152638)))

(declare-fun c!395417 () Bool)

(declare-fun bm!152633 () Bool)

(declare-fun c!395416 () Bool)

(assert (=> bm!152633 (= call!152638 (validRegex!2931 (ite c!395417 (reg!7634 r!26136) (ite c!395416 (regTwo!15123 r!26136) (regOne!15122 r!26136)))))))

(declare-fun bm!152634 () Bool)

(declare-fun call!152637 () Bool)

(assert (=> bm!152634 (= call!152637 (validRegex!2931 (ite c!395416 (regOne!15123 r!26136) (regTwo!15122 r!26136))))))

(declare-fun b!2488197 () Bool)

(declare-fun e!1579925 () Bool)

(assert (=> b!2488197 (= e!1579925 call!152639)))

(declare-fun b!2488198 () Bool)

(declare-fun e!1579923 () Bool)

(assert (=> b!2488198 (= e!1579923 call!152637)))

(declare-fun b!2488199 () Bool)

(declare-fun res!1053298 () Bool)

(declare-fun e!1579924 () Bool)

(assert (=> b!2488199 (=> res!1053298 e!1579924)))

(assert (=> b!2488199 (= res!1053298 (not ((_ is Concat!12001) r!26136)))))

(declare-fun e!1579927 () Bool)

(assert (=> b!2488199 (= e!1579927 e!1579924)))

(declare-fun b!2488200 () Bool)

(declare-fun e!1579926 () Bool)

(declare-fun e!1579922 () Bool)

(assert (=> b!2488200 (= e!1579926 e!1579922)))

(declare-fun res!1053297 () Bool)

(assert (=> b!2488200 (= res!1053297 (not (nullable!2225 (reg!7634 r!26136))))))

(assert (=> b!2488200 (=> (not res!1053297) (not e!1579922))))

(declare-fun d!714080 () Bool)

(declare-fun res!1053296 () Bool)

(declare-fun e!1579921 () Bool)

(assert (=> d!714080 (=> res!1053296 e!1579921)))

(assert (=> d!714080 (= res!1053296 ((_ is ElementMatch!7305) r!26136))))

(assert (=> d!714080 (= (validRegex!2931 r!26136) e!1579921)))

(declare-fun b!2488201 () Bool)

(declare-fun res!1053299 () Bool)

(assert (=> b!2488201 (=> (not res!1053299) (not e!1579925))))

(assert (=> b!2488201 (= res!1053299 call!152637)))

(assert (=> b!2488201 (= e!1579927 e!1579925)))

(declare-fun b!2488202 () Bool)

(assert (=> b!2488202 (= e!1579924 e!1579923)))

(declare-fun res!1053295 () Bool)

(assert (=> b!2488202 (=> (not res!1053295) (not e!1579923))))

(assert (=> b!2488202 (= res!1053295 call!152639)))

(declare-fun b!2488203 () Bool)

(assert (=> b!2488203 (= e!1579921 e!1579926)))

(assert (=> b!2488203 (= c!395417 ((_ is Star!7305) r!26136))))

(declare-fun b!2488204 () Bool)

(assert (=> b!2488204 (= e!1579922 call!152638)))

(declare-fun b!2488205 () Bool)

(assert (=> b!2488205 (= e!1579926 e!1579927)))

(assert (=> b!2488205 (= c!395416 ((_ is Union!7305) r!26136))))

(assert (= (and d!714080 (not res!1053296)) b!2488203))

(assert (= (and b!2488203 c!395417) b!2488200))

(assert (= (and b!2488203 (not c!395417)) b!2488205))

(assert (= (and b!2488200 res!1053297) b!2488204))

(assert (= (and b!2488205 c!395416) b!2488201))

(assert (= (and b!2488205 (not c!395416)) b!2488199))

(assert (= (and b!2488201 res!1053299) b!2488197))

(assert (= (and b!2488199 (not res!1053298)) b!2488202))

(assert (= (and b!2488202 res!1053295) b!2488198))

(assert (= (or b!2488197 b!2488202) bm!152632))

(assert (= (or b!2488201 b!2488198) bm!152634))

(assert (= (or b!2488204 bm!152632) bm!152633))

(declare-fun m!2856791 () Bool)

(assert (=> bm!152633 m!2856791))

(declare-fun m!2856793 () Bool)

(assert (=> bm!152634 m!2856793))

(declare-fun m!2856795 () Bool)

(assert (=> b!2488200 m!2856795))

(assert (=> start!243172 d!714080))

(declare-fun b!2488206 () Bool)

(declare-fun e!1579934 () Bool)

(declare-fun e!1579932 () Bool)

(assert (=> b!2488206 (= e!1579934 e!1579932)))

(declare-fun res!1053307 () Bool)

(assert (=> b!2488206 (=> (not res!1053307) (not e!1579932))))

(declare-fun lt!893719 () Bool)

(assert (=> b!2488206 (= res!1053307 (not lt!893719))))

(declare-fun b!2488207 () Bool)

(declare-fun res!1053303 () Bool)

(assert (=> b!2488207 (=> res!1053303 e!1579934)))

(declare-fun e!1579933 () Bool)

(assert (=> b!2488207 (= res!1053303 e!1579933)))

(declare-fun res!1053304 () Bool)

(assert (=> b!2488207 (=> (not res!1053304) (not e!1579933))))

(assert (=> b!2488207 (= res!1053304 lt!893719)))

(declare-fun b!2488209 () Bool)

(declare-fun e!1579931 () Bool)

(declare-fun e!1579928 () Bool)

(assert (=> b!2488209 (= e!1579931 e!1579928)))

(declare-fun c!395420 () Bool)

(assert (=> b!2488209 (= c!395420 ((_ is EmptyLang!7305) r!26136))))

(declare-fun b!2488210 () Bool)

(declare-fun e!1579930 () Bool)

(assert (=> b!2488210 (= e!1579932 e!1579930)))

(declare-fun res!1053302 () Bool)

(assert (=> b!2488210 (=> res!1053302 e!1579930)))

(declare-fun call!152640 () Bool)

(assert (=> b!2488210 (= res!1053302 call!152640)))

(declare-fun b!2488211 () Bool)

(declare-fun e!1579929 () Bool)

(assert (=> b!2488211 (= e!1579929 (nullable!2225 r!26136))))

(declare-fun b!2488212 () Bool)

(declare-fun res!1053301 () Bool)

(assert (=> b!2488212 (=> res!1053301 e!1579934)))

(assert (=> b!2488212 (= res!1053301 (not ((_ is ElementMatch!7305) r!26136)))))

(assert (=> b!2488212 (= e!1579928 e!1579934)))

(declare-fun b!2488213 () Bool)

(assert (=> b!2488213 (= e!1579928 (not lt!893719))))

(declare-fun bm!152635 () Bool)

(assert (=> bm!152635 (= call!152640 (isEmpty!16782 s!14955))))

(declare-fun b!2488214 () Bool)

(assert (=> b!2488214 (= e!1579929 (matchR!3356 (derivativeStep!1877 r!26136 (head!5661 s!14955)) (tail!3943 s!14955)))))

(declare-fun b!2488215 () Bool)

(assert (=> b!2488215 (= e!1579931 (= lt!893719 call!152640))))

(declare-fun d!714082 () Bool)

(assert (=> d!714082 e!1579931))

(declare-fun c!395419 () Bool)

(assert (=> d!714082 (= c!395419 ((_ is EmptyExpr!7305) r!26136))))

(assert (=> d!714082 (= lt!893719 e!1579929)))

(declare-fun c!395418 () Bool)

(assert (=> d!714082 (= c!395418 (isEmpty!16782 s!14955))))

(assert (=> d!714082 (validRegex!2931 r!26136)))

(assert (=> d!714082 (= (matchR!3356 r!26136 s!14955) lt!893719)))

(declare-fun b!2488208 () Bool)

(declare-fun res!1053305 () Bool)

(assert (=> b!2488208 (=> (not res!1053305) (not e!1579933))))

(assert (=> b!2488208 (= res!1053305 (isEmpty!16782 (tail!3943 s!14955)))))

(declare-fun b!2488216 () Bool)

(declare-fun res!1053300 () Bool)

(assert (=> b!2488216 (=> res!1053300 e!1579930)))

(assert (=> b!2488216 (= res!1053300 (not (isEmpty!16782 (tail!3943 s!14955))))))

(declare-fun b!2488217 () Bool)

(assert (=> b!2488217 (= e!1579930 (not (= (head!5661 s!14955) (c!395399 r!26136))))))

(declare-fun b!2488218 () Bool)

(assert (=> b!2488218 (= e!1579933 (= (head!5661 s!14955) (c!395399 r!26136)))))

(declare-fun b!2488219 () Bool)

(declare-fun res!1053306 () Bool)

(assert (=> b!2488219 (=> (not res!1053306) (not e!1579933))))

(assert (=> b!2488219 (= res!1053306 (not call!152640))))

(assert (= (and d!714082 c!395418) b!2488211))

(assert (= (and d!714082 (not c!395418)) b!2488214))

(assert (= (and d!714082 c!395419) b!2488215))

(assert (= (and d!714082 (not c!395419)) b!2488209))

(assert (= (and b!2488209 c!395420) b!2488213))

(assert (= (and b!2488209 (not c!395420)) b!2488212))

(assert (= (and b!2488212 (not res!1053301)) b!2488207))

(assert (= (and b!2488207 res!1053304) b!2488219))

(assert (= (and b!2488219 res!1053306) b!2488208))

(assert (= (and b!2488208 res!1053305) b!2488218))

(assert (= (and b!2488207 (not res!1053303)) b!2488206))

(assert (= (and b!2488206 res!1053307) b!2488210))

(assert (= (and b!2488210 (not res!1053302)) b!2488216))

(assert (= (and b!2488216 (not res!1053300)) b!2488217))

(assert (= (or b!2488215 b!2488210 b!2488219) bm!152635))

(declare-fun m!2856797 () Bool)

(assert (=> d!714082 m!2856797))

(assert (=> d!714082 m!2856747))

(assert (=> b!2488214 m!2856743))

(assert (=> b!2488214 m!2856743))

(declare-fun m!2856799 () Bool)

(assert (=> b!2488214 m!2856799))

(declare-fun m!2856801 () Bool)

(assert (=> b!2488214 m!2856801))

(assert (=> b!2488214 m!2856799))

(assert (=> b!2488214 m!2856801))

(declare-fun m!2856803 () Bool)

(assert (=> b!2488214 m!2856803))

(assert (=> b!2488208 m!2856801))

(assert (=> b!2488208 m!2856801))

(declare-fun m!2856805 () Bool)

(assert (=> b!2488208 m!2856805))

(assert (=> b!2488216 m!2856801))

(assert (=> b!2488216 m!2856801))

(assert (=> b!2488216 m!2856805))

(declare-fun m!2856807 () Bool)

(assert (=> b!2488211 m!2856807))

(assert (=> b!2488217 m!2856743))

(assert (=> bm!152635 m!2856797))

(assert (=> b!2488218 m!2856743))

(assert (=> b!2488115 d!714082))

(declare-fun d!714084 () Bool)

(declare-fun lt!893724 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3987 (List!29372) (InoxSet C!14768))

(assert (=> d!714084 (= lt!893724 (select (content!3987 s!14955) c!13476))))

(declare-fun e!1579954 () Bool)

(assert (=> d!714084 (= lt!893724 e!1579954)))

(declare-fun res!1053328 () Bool)

(assert (=> d!714084 (=> (not res!1053328) (not e!1579954))))

(assert (=> d!714084 (= res!1053328 ((_ is Cons!29272) s!14955))))

(assert (=> d!714084 (= (contains!5281 s!14955 c!13476) lt!893724)))

(declare-fun b!2488252 () Bool)

(declare-fun e!1579953 () Bool)

(assert (=> b!2488252 (= e!1579954 e!1579953)))

(declare-fun res!1053329 () Bool)

(assert (=> b!2488252 (=> res!1053329 e!1579953)))

(assert (=> b!2488252 (= res!1053329 (= (h!34692 s!14955) c!13476))))

(declare-fun b!2488253 () Bool)

(assert (=> b!2488253 (= e!1579953 (contains!5281 (t!211071 s!14955) c!13476))))

(assert (= (and d!714084 res!1053328) b!2488252))

(assert (= (and b!2488252 (not res!1053329)) b!2488253))

(declare-fun m!2856809 () Bool)

(assert (=> d!714084 m!2856809))

(declare-fun m!2856811 () Bool)

(assert (=> d!714084 m!2856811))

(declare-fun m!2856813 () Bool)

(assert (=> b!2488253 m!2856813))

(assert (=> b!2488124 d!714084))

(declare-fun d!714086 () Bool)

(declare-fun lt!893725 () Bool)

(assert (=> d!714086 (= lt!893725 (select (content!3987 (firstChars!72 r!26136)) c!13476))))

(declare-fun e!1579956 () Bool)

(assert (=> d!714086 (= lt!893725 e!1579956)))

(declare-fun res!1053330 () Bool)

(assert (=> d!714086 (=> (not res!1053330) (not e!1579956))))

(assert (=> d!714086 (= res!1053330 ((_ is Cons!29272) (firstChars!72 r!26136)))))

(assert (=> d!714086 (= (contains!5281 (firstChars!72 r!26136) c!13476) lt!893725)))

(declare-fun b!2488254 () Bool)

(declare-fun e!1579955 () Bool)

(assert (=> b!2488254 (= e!1579956 e!1579955)))

(declare-fun res!1053331 () Bool)

(assert (=> b!2488254 (=> res!1053331 e!1579955)))

(assert (=> b!2488254 (= res!1053331 (= (h!34692 (firstChars!72 r!26136)) c!13476))))

(declare-fun b!2488255 () Bool)

(assert (=> b!2488255 (= e!1579955 (contains!5281 (t!211071 (firstChars!72 r!26136)) c!13476))))

(assert (= (and d!714086 res!1053330) b!2488254))

(assert (= (and b!2488254 (not res!1053331)) b!2488255))

(assert (=> d!714086 m!2856749))

(declare-fun m!2856815 () Bool)

(assert (=> d!714086 m!2856815))

(declare-fun m!2856817 () Bool)

(assert (=> d!714086 m!2856817))

(declare-fun m!2856819 () Bool)

(assert (=> b!2488255 m!2856819))

(assert (=> b!2488119 d!714086))

(declare-fun b!2488276 () Bool)

(declare-fun e!1579968 () List!29372)

(assert (=> b!2488276 (= e!1579968 Nil!29272)))

(declare-fun b!2488277 () Bool)

(declare-fun e!1579971 () List!29372)

(declare-fun call!152656 () List!29372)

(assert (=> b!2488277 (= e!1579971 call!152656)))

(declare-fun d!714088 () Bool)

(declare-fun c!395437 () Bool)

(assert (=> d!714088 (= c!395437 (or ((_ is EmptyExpr!7305) r!26136) ((_ is EmptyLang!7305) r!26136)))))

(assert (=> d!714088 (= (firstChars!72 r!26136) e!1579968)))

(declare-fun b!2488278 () Bool)

(declare-fun e!1579967 () List!29372)

(declare-fun e!1579970 () List!29372)

(assert (=> b!2488278 (= e!1579967 e!1579970)))

(declare-fun c!395441 () Bool)

(assert (=> b!2488278 (= c!395441 ((_ is Union!7305) r!26136))))

(declare-fun b!2488279 () Bool)

(declare-fun call!152655 () List!29372)

(assert (=> b!2488279 (= e!1579971 call!152655)))

(declare-fun b!2488280 () Bool)

(declare-fun c!395439 () Bool)

(assert (=> b!2488280 (= c!395439 ((_ is Star!7305) r!26136))))

(declare-fun e!1579969 () List!29372)

(assert (=> b!2488280 (= e!1579969 e!1579967)))

(declare-fun b!2488281 () Bool)

(assert (=> b!2488281 (= e!1579969 (Cons!29272 (c!395399 r!26136) Nil!29272))))

(declare-fun b!2488282 () Bool)

(declare-fun call!152654 () List!29372)

(assert (=> b!2488282 (= e!1579967 call!152654)))

(declare-fun bm!152648 () Bool)

(declare-fun call!152653 () List!29372)

(assert (=> bm!152648 (= call!152653 (firstChars!72 (ite c!395441 (regOne!15123 r!26136) (regTwo!15122 r!26136))))))

(declare-fun bm!152649 () Bool)

(declare-fun call!152657 () List!29372)

(assert (=> bm!152649 (= call!152657 call!152654)))

(declare-fun bm!152650 () Bool)

(assert (=> bm!152650 (= call!152656 call!152657)))

(declare-fun bm!152651 () Bool)

(declare-fun ++!7152 (List!29372 List!29372) List!29372)

(assert (=> bm!152651 (= call!152655 (++!7152 (ite c!395441 call!152653 call!152656) (ite c!395441 call!152657 call!152653)))))

(declare-fun bm!152652 () Bool)

(assert (=> bm!152652 (= call!152654 (firstChars!72 (ite c!395439 (reg!7634 r!26136) (ite c!395441 (regTwo!15123 r!26136) (regOne!15122 r!26136)))))))

(declare-fun b!2488283 () Bool)

(assert (=> b!2488283 (= e!1579968 e!1579969)))

(declare-fun c!395440 () Bool)

(assert (=> b!2488283 (= c!395440 ((_ is ElementMatch!7305) r!26136))))

(declare-fun b!2488284 () Bool)

(assert (=> b!2488284 (= e!1579970 call!152655)))

(declare-fun b!2488285 () Bool)

(declare-fun c!395438 () Bool)

(assert (=> b!2488285 (= c!395438 (nullable!2225 (regOne!15122 r!26136)))))

(assert (=> b!2488285 (= e!1579970 e!1579971)))

(assert (= (and d!714088 c!395437) b!2488276))

(assert (= (and d!714088 (not c!395437)) b!2488283))

(assert (= (and b!2488283 c!395440) b!2488281))

(assert (= (and b!2488283 (not c!395440)) b!2488280))

(assert (= (and b!2488280 c!395439) b!2488282))

(assert (= (and b!2488280 (not c!395439)) b!2488278))

(assert (= (and b!2488278 c!395441) b!2488284))

(assert (= (and b!2488278 (not c!395441)) b!2488285))

(assert (= (and b!2488285 c!395438) b!2488279))

(assert (= (and b!2488285 (not c!395438)) b!2488277))

(assert (= (or b!2488279 b!2488277) bm!152650))

(assert (= (or b!2488284 bm!152650) bm!152649))

(assert (= (or b!2488284 b!2488279) bm!152648))

(assert (= (or b!2488284 b!2488279) bm!152651))

(assert (= (or b!2488282 bm!152649) bm!152652))

(declare-fun m!2856821 () Bool)

(assert (=> bm!152648 m!2856821))

(declare-fun m!2856823 () Bool)

(assert (=> bm!152651 m!2856823))

(declare-fun m!2856825 () Bool)

(assert (=> bm!152652 m!2856825))

(declare-fun m!2856827 () Bool)

(assert (=> b!2488285 m!2856827))

(assert (=> b!2488119 d!714088))

(declare-fun d!714090 () Bool)

(assert (=> d!714090 (= (head!5661 s!14955) (h!34692 s!14955))))

(assert (=> b!2488123 d!714090))

(declare-fun b!2488313 () Bool)

(declare-fun e!1579981 () Bool)

(declare-fun tp!796497 () Bool)

(declare-fun tp!796500 () Bool)

(assert (=> b!2488313 (= e!1579981 (and tp!796497 tp!796500))))

(declare-fun b!2488311 () Bool)

(declare-fun tp!796499 () Bool)

(declare-fun tp!796498 () Bool)

(assert (=> b!2488311 (= e!1579981 (and tp!796499 tp!796498))))

(declare-fun b!2488312 () Bool)

(declare-fun tp!796501 () Bool)

(assert (=> b!2488312 (= e!1579981 tp!796501)))

(declare-fun b!2488310 () Bool)

(assert (=> b!2488310 (= e!1579981 tp_is_empty!12465)))

(assert (=> b!2488120 (= tp!796481 e!1579981)))

(assert (= (and b!2488120 ((_ is ElementMatch!7305) (regOne!15123 r!26136))) b!2488310))

(assert (= (and b!2488120 ((_ is Concat!12001) (regOne!15123 r!26136))) b!2488311))

(assert (= (and b!2488120 ((_ is Star!7305) (regOne!15123 r!26136))) b!2488312))

(assert (= (and b!2488120 ((_ is Union!7305) (regOne!15123 r!26136))) b!2488313))

(declare-fun b!2488317 () Bool)

(declare-fun e!1579982 () Bool)

(declare-fun tp!796502 () Bool)

(declare-fun tp!796505 () Bool)

(assert (=> b!2488317 (= e!1579982 (and tp!796502 tp!796505))))

(declare-fun b!2488315 () Bool)

(declare-fun tp!796504 () Bool)

(declare-fun tp!796503 () Bool)

(assert (=> b!2488315 (= e!1579982 (and tp!796504 tp!796503))))

(declare-fun b!2488316 () Bool)

(declare-fun tp!796506 () Bool)

(assert (=> b!2488316 (= e!1579982 tp!796506)))

(declare-fun b!2488314 () Bool)

(assert (=> b!2488314 (= e!1579982 tp_is_empty!12465)))

(assert (=> b!2488120 (= tp!796484 e!1579982)))

(assert (= (and b!2488120 ((_ is ElementMatch!7305) (regTwo!15123 r!26136))) b!2488314))

(assert (= (and b!2488120 ((_ is Concat!12001) (regTwo!15123 r!26136))) b!2488315))

(assert (= (and b!2488120 ((_ is Star!7305) (regTwo!15123 r!26136))) b!2488316))

(assert (= (and b!2488120 ((_ is Union!7305) (regTwo!15123 r!26136))) b!2488317))

(declare-fun b!2488321 () Bool)

(declare-fun e!1579983 () Bool)

(declare-fun tp!796507 () Bool)

(declare-fun tp!796510 () Bool)

(assert (=> b!2488321 (= e!1579983 (and tp!796507 tp!796510))))

(declare-fun b!2488319 () Bool)

(declare-fun tp!796509 () Bool)

(declare-fun tp!796508 () Bool)

(assert (=> b!2488319 (= e!1579983 (and tp!796509 tp!796508))))

(declare-fun b!2488320 () Bool)

(declare-fun tp!796511 () Bool)

(assert (=> b!2488320 (= e!1579983 tp!796511)))

(declare-fun b!2488318 () Bool)

(assert (=> b!2488318 (= e!1579983 tp_is_empty!12465)))

(assert (=> b!2488118 (= tp!796482 e!1579983)))

(assert (= (and b!2488118 ((_ is ElementMatch!7305) (reg!7634 r!26136))) b!2488318))

(assert (= (and b!2488118 ((_ is Concat!12001) (reg!7634 r!26136))) b!2488319))

(assert (= (and b!2488118 ((_ is Star!7305) (reg!7634 r!26136))) b!2488320))

(assert (= (and b!2488118 ((_ is Union!7305) (reg!7634 r!26136))) b!2488321))

(declare-fun b!2488326 () Bool)

(declare-fun e!1579986 () Bool)

(declare-fun tp!796514 () Bool)

(assert (=> b!2488326 (= e!1579986 (and tp_is_empty!12465 tp!796514))))

(assert (=> b!2488122 (= tp!796486 e!1579986)))

(assert (= (and b!2488122 ((_ is Cons!29272) (t!211071 s!14955))) b!2488326))

(declare-fun b!2488330 () Bool)

(declare-fun e!1579987 () Bool)

(declare-fun tp!796515 () Bool)

(declare-fun tp!796518 () Bool)

(assert (=> b!2488330 (= e!1579987 (and tp!796515 tp!796518))))

(declare-fun b!2488328 () Bool)

(declare-fun tp!796517 () Bool)

(declare-fun tp!796516 () Bool)

(assert (=> b!2488328 (= e!1579987 (and tp!796517 tp!796516))))

(declare-fun b!2488329 () Bool)

(declare-fun tp!796519 () Bool)

(assert (=> b!2488329 (= e!1579987 tp!796519)))

(declare-fun b!2488327 () Bool)

(assert (=> b!2488327 (= e!1579987 tp_is_empty!12465)))

(assert (=> b!2488117 (= tp!796483 e!1579987)))

(assert (= (and b!2488117 ((_ is ElementMatch!7305) (regOne!15122 r!26136))) b!2488327))

(assert (= (and b!2488117 ((_ is Concat!12001) (regOne!15122 r!26136))) b!2488328))

(assert (= (and b!2488117 ((_ is Star!7305) (regOne!15122 r!26136))) b!2488329))

(assert (= (and b!2488117 ((_ is Union!7305) (regOne!15122 r!26136))) b!2488330))

(declare-fun b!2488334 () Bool)

(declare-fun e!1579988 () Bool)

(declare-fun tp!796520 () Bool)

(declare-fun tp!796523 () Bool)

(assert (=> b!2488334 (= e!1579988 (and tp!796520 tp!796523))))

(declare-fun b!2488332 () Bool)

(declare-fun tp!796522 () Bool)

(declare-fun tp!796521 () Bool)

(assert (=> b!2488332 (= e!1579988 (and tp!796522 tp!796521))))

(declare-fun b!2488333 () Bool)

(declare-fun tp!796524 () Bool)

(assert (=> b!2488333 (= e!1579988 tp!796524)))

(declare-fun b!2488331 () Bool)

(assert (=> b!2488331 (= e!1579988 tp_is_empty!12465)))

(assert (=> b!2488117 (= tp!796485 e!1579988)))

(assert (= (and b!2488117 ((_ is ElementMatch!7305) (regTwo!15122 r!26136))) b!2488331))

(assert (= (and b!2488117 ((_ is Concat!12001) (regTwo!15122 r!26136))) b!2488332))

(assert (= (and b!2488117 ((_ is Star!7305) (regTwo!15122 r!26136))) b!2488333))

(assert (= (and b!2488117 ((_ is Union!7305) (regTwo!15122 r!26136))) b!2488334))

(check-sat (not b!2488216) (not b!2488333) (not b!2488285) (not b!2488326) (not b!2488320) (not b!2488315) (not b!2488312) (not b!2488321) (not d!714078) (not bm!152634) (not b!2488200) (not b!2488253) (not b!2488319) (not b!2488217) (not b!2488167) (not b!2488317) (not bm!152625) (not b!2488255) (not d!714084) (not bm!152635) tp_is_empty!12465 (not b!2488329) (not b!2488332) (not b!2488330) (not b!2488334) (not b!2488313) (not d!714074) (not b!2488328) (not bm!152633) (not b!2488316) (not bm!152652) (not bm!152651) (not bm!152648) (not d!714082) (not b!2488311) (not d!714086) (not b!2488214) (not b!2488177) (not b!2488211) (not d!714070) (not b!2488168) (not b!2488162) (not b!2488218) (not b!2488169) (not b!2488165) (not b!2488208) (not b!2488159))
(check-sat)
