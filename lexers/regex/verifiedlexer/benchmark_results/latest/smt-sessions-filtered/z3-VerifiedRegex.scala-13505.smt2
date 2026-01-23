; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728268 () Bool)

(assert start!728268)

(declare-fun b!7524876 () Bool)

(declare-fun e!4485379 () Bool)

(declare-fun tp!2186537 () Bool)

(declare-fun tp!2186534 () Bool)

(assert (=> b!7524876 (= e!4485379 (and tp!2186537 tp!2186534))))

(declare-fun b!7524877 () Bool)

(declare-fun res!3015960 () Bool)

(declare-fun e!4485376 () Bool)

(assert (=> b!7524877 (=> (not res!3015960) (not e!4485376))))

(declare-fun e!4485378 () Bool)

(assert (=> b!7524877 (= res!3015960 e!4485378)))

(declare-fun res!3015956 () Bool)

(assert (=> b!7524877 (=> res!3015956 e!4485378)))

(declare-datatypes ((C!39936 0))(
  ( (C!39937 (val!30408 Int)) )
))
(declare-datatypes ((Regex!19805 0))(
  ( (ElementMatch!19805 (c!1390130 C!39936)) (Concat!28650 (regOne!40122 Regex!19805) (regTwo!40122 Regex!19805)) (EmptyExpr!19805) (Star!19805 (reg!20134 Regex!19805)) (EmptyLang!19805) (Union!19805 (regOne!40123 Regex!19805) (regTwo!40123 Regex!19805)) )
))
(declare-fun expr!41 () Regex!19805)

(get-info :version)

(assert (=> b!7524877 (= res!3015956 (not ((_ is Concat!28650) expr!41)))))

(declare-fun b!7524878 () Bool)

(declare-fun res!3015957 () Bool)

(assert (=> b!7524878 (=> (not res!3015957) (not e!4485376))))

(declare-fun a!1106 () C!39936)

(assert (=> b!7524878 (= res!3015957 (and (or (not ((_ is ElementMatch!19805) expr!41)) (not (= (c!1390130 expr!41) a!1106))) (not ((_ is Union!19805) expr!41))))))

(declare-fun b!7524879 () Bool)

(declare-fun nullable!8639 (Regex!19805) Bool)

(assert (=> b!7524879 (= e!4485378 (not (nullable!8639 (regOne!40122 expr!41))))))

(declare-fun b!7524880 () Bool)

(declare-fun tp!2186536 () Bool)

(assert (=> b!7524880 (= e!4485379 tp!2186536)))

(declare-fun res!3015958 () Bool)

(assert (=> start!728268 (=> (not res!3015958) (not e!4485376))))

(declare-fun validRegex!10233 (Regex!19805) Bool)

(assert (=> start!728268 (= res!3015958 (validRegex!10233 expr!41))))

(assert (=> start!728268 e!4485376))

(assert (=> start!728268 e!4485379))

(declare-fun tp_is_empty!49965 () Bool)

(assert (=> start!728268 tp_is_empty!49965))

(declare-datatypes ((List!72690 0))(
  ( (Nil!72566) (Cons!72566 (h!79014 Regex!19805) (t!387395 List!72690)) )
))
(declare-datatypes ((Context!17062 0))(
  ( (Context!17063 (exprs!9031 List!72690)) )
))
(declare-fun context!49 () Context!17062)

(declare-fun e!4485377 () Bool)

(declare-fun inv!92779 (Context!17062) Bool)

(assert (=> start!728268 (and (inv!92779 context!49) e!4485377)))

(declare-fun b!7524881 () Bool)

(declare-fun res!3015959 () Bool)

(assert (=> b!7524881 (=> (not res!3015959) (not e!4485376))))

(assert (=> b!7524881 (= res!3015959 (and (not ((_ is Concat!28650) expr!41)) ((_ is Star!19805) expr!41)))))

(declare-fun b!7524882 () Bool)

(declare-fun $colon$colon!3363 (List!72690 Regex!19805) List!72690)

(assert (=> b!7524882 (= e!4485376 (not (inv!92779 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41)))))))

(declare-fun b!7524883 () Bool)

(assert (=> b!7524883 (= e!4485379 tp_is_empty!49965)))

(declare-fun b!7524884 () Bool)

(declare-fun tp!2186535 () Bool)

(assert (=> b!7524884 (= e!4485377 tp!2186535)))

(declare-fun b!7524885 () Bool)

(declare-fun tp!2186538 () Bool)

(declare-fun tp!2186539 () Bool)

(assert (=> b!7524885 (= e!4485379 (and tp!2186538 tp!2186539))))

(assert (= (and start!728268 res!3015958) b!7524878))

(assert (= (and b!7524878 res!3015957) b!7524877))

(assert (= (and b!7524877 (not res!3015956)) b!7524879))

(assert (= (and b!7524877 res!3015960) b!7524881))

(assert (= (and b!7524881 res!3015959) b!7524882))

(assert (= (and start!728268 ((_ is ElementMatch!19805) expr!41)) b!7524883))

(assert (= (and start!728268 ((_ is Concat!28650) expr!41)) b!7524876))

(assert (= (and start!728268 ((_ is Star!19805) expr!41)) b!7524880))

(assert (= (and start!728268 ((_ is Union!19805) expr!41)) b!7524885))

(assert (= start!728268 b!7524884))

(declare-fun m!8101200 () Bool)

(assert (=> b!7524879 m!8101200))

(declare-fun m!8101202 () Bool)

(assert (=> start!728268 m!8101202))

(declare-fun m!8101204 () Bool)

(assert (=> start!728268 m!8101204))

(declare-fun m!8101206 () Bool)

(assert (=> b!7524882 m!8101206))

(declare-fun m!8101208 () Bool)

(assert (=> b!7524882 m!8101208))

(check-sat (not b!7524876) (not b!7524879) (not b!7524880) (not b!7524882) tp_is_empty!49965 (not b!7524884) (not b!7524885) (not start!728268))
(check-sat)
(get-model)

(declare-fun d!2309320 () Bool)

(declare-fun lambda!466448 () Int)

(declare-fun forall!18416 (List!72690 Int) Bool)

(assert (=> d!2309320 (= (inv!92779 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41))) (forall!18416 (exprs!9031 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41))) lambda!466448))))

(declare-fun bs!1939746 () Bool)

(assert (= bs!1939746 d!2309320))

(declare-fun m!8101252 () Bool)

(assert (=> bs!1939746 m!8101252))

(assert (=> b!7524882 d!2309320))

(declare-fun d!2309346 () Bool)

(assert (=> d!2309346 (= ($colon$colon!3363 (exprs!9031 context!49) expr!41) (Cons!72566 expr!41 (exprs!9031 context!49)))))

(assert (=> b!7524882 d!2309346))

(declare-fun b!7525118 () Bool)

(declare-fun e!4485497 () Bool)

(declare-fun call!690334 () Bool)

(assert (=> b!7525118 (= e!4485497 call!690334)))

(declare-fun b!7525119 () Bool)

(declare-fun res!3016020 () Bool)

(declare-fun e!4485493 () Bool)

(assert (=> b!7525119 (=> res!3016020 e!4485493)))

(assert (=> b!7525119 (= res!3016020 (not ((_ is Concat!28650) expr!41)))))

(declare-fun e!4485495 () Bool)

(assert (=> b!7525119 (= e!4485495 e!4485493)))

(declare-fun b!7525120 () Bool)

(declare-fun e!4485494 () Bool)

(declare-fun e!4485492 () Bool)

(assert (=> b!7525120 (= e!4485494 e!4485492)))

(declare-fun c!1390148 () Bool)

(assert (=> b!7525120 (= c!1390148 ((_ is Star!19805) expr!41))))

(declare-fun bm!690329 () Bool)

(declare-fun c!1390149 () Bool)

(assert (=> bm!690329 (= call!690334 (validRegex!10233 (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))))))

(declare-fun b!7525121 () Bool)

(declare-fun e!4485496 () Bool)

(declare-fun call!690335 () Bool)

(assert (=> b!7525121 (= e!4485496 call!690335)))

(declare-fun bm!690330 () Bool)

(assert (=> bm!690330 (= call!690335 call!690334)))

(declare-fun b!7525122 () Bool)

(assert (=> b!7525122 (= e!4485492 e!4485497)))

(declare-fun res!3016021 () Bool)

(assert (=> b!7525122 (= res!3016021 (not (nullable!8639 (reg!20134 expr!41))))))

(assert (=> b!7525122 (=> (not res!3016021) (not e!4485497))))

(declare-fun d!2309348 () Bool)

(declare-fun res!3016023 () Bool)

(assert (=> d!2309348 (=> res!3016023 e!4485494)))

(assert (=> d!2309348 (= res!3016023 ((_ is ElementMatch!19805) expr!41))))

(assert (=> d!2309348 (= (validRegex!10233 expr!41) e!4485494)))

(declare-fun b!7525123 () Bool)

(assert (=> b!7525123 (= e!4485492 e!4485495)))

(assert (=> b!7525123 (= c!1390149 ((_ is Union!19805) expr!41))))

(declare-fun b!7525124 () Bool)

(declare-fun e!4485498 () Bool)

(declare-fun call!690336 () Bool)

(assert (=> b!7525124 (= e!4485498 call!690336)))

(declare-fun b!7525125 () Bool)

(assert (=> b!7525125 (= e!4485493 e!4485498)))

(declare-fun res!3016022 () Bool)

(assert (=> b!7525125 (=> (not res!3016022) (not e!4485498))))

(assert (=> b!7525125 (= res!3016022 call!690335)))

(declare-fun bm!690331 () Bool)

(assert (=> bm!690331 (= call!690336 (validRegex!10233 (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))))))

(declare-fun b!7525126 () Bool)

(declare-fun res!3016019 () Bool)

(assert (=> b!7525126 (=> (not res!3016019) (not e!4485496))))

(assert (=> b!7525126 (= res!3016019 call!690336)))

(assert (=> b!7525126 (= e!4485495 e!4485496)))

(assert (= (and d!2309348 (not res!3016023)) b!7525120))

(assert (= (and b!7525120 c!1390148) b!7525122))

(assert (= (and b!7525120 (not c!1390148)) b!7525123))

(assert (= (and b!7525122 res!3016021) b!7525118))

(assert (= (and b!7525123 c!1390149) b!7525126))

(assert (= (and b!7525123 (not c!1390149)) b!7525119))

(assert (= (and b!7525126 res!3016019) b!7525121))

(assert (= (and b!7525119 (not res!3016020)) b!7525125))

(assert (= (and b!7525125 res!3016022) b!7525124))

(assert (= (or b!7525121 b!7525125) bm!690330))

(assert (= (or b!7525126 b!7525124) bm!690331))

(assert (= (or b!7525118 bm!690330) bm!690329))

(declare-fun m!8101254 () Bool)

(assert (=> bm!690329 m!8101254))

(declare-fun m!8101256 () Bool)

(assert (=> b!7525122 m!8101256))

(declare-fun m!8101258 () Bool)

(assert (=> bm!690331 m!8101258))

(assert (=> start!728268 d!2309348))

(declare-fun bs!1939747 () Bool)

(declare-fun d!2309350 () Bool)

(assert (= bs!1939747 (and d!2309350 d!2309320)))

(declare-fun lambda!466449 () Int)

(assert (=> bs!1939747 (= lambda!466449 lambda!466448)))

(assert (=> d!2309350 (= (inv!92779 context!49) (forall!18416 (exprs!9031 context!49) lambda!466449))))

(declare-fun bs!1939748 () Bool)

(assert (= bs!1939748 d!2309350))

(declare-fun m!8101260 () Bool)

(assert (=> bs!1939748 m!8101260))

(assert (=> start!728268 d!2309350))

(declare-fun d!2309352 () Bool)

(declare-fun nullableFct!3464 (Regex!19805) Bool)

(assert (=> d!2309352 (= (nullable!8639 (regOne!40122 expr!41)) (nullableFct!3464 (regOne!40122 expr!41)))))

(declare-fun bs!1939749 () Bool)

(assert (= bs!1939749 d!2309352))

(declare-fun m!8101262 () Bool)

(assert (=> bs!1939749 m!8101262))

(assert (=> b!7524879 d!2309352))

(declare-fun b!7525140 () Bool)

(declare-fun e!4485501 () Bool)

(declare-fun tp!2186726 () Bool)

(declare-fun tp!2186727 () Bool)

(assert (=> b!7525140 (= e!4485501 (and tp!2186726 tp!2186727))))

(declare-fun b!7525138 () Bool)

(declare-fun tp!2186725 () Bool)

(declare-fun tp!2186724 () Bool)

(assert (=> b!7525138 (= e!4485501 (and tp!2186725 tp!2186724))))

(assert (=> b!7524880 (= tp!2186536 e!4485501)))

(declare-fun b!7525137 () Bool)

(assert (=> b!7525137 (= e!4485501 tp_is_empty!49965)))

(declare-fun b!7525139 () Bool)

(declare-fun tp!2186723 () Bool)

(assert (=> b!7525139 (= e!4485501 tp!2186723)))

(assert (= (and b!7524880 ((_ is ElementMatch!19805) (reg!20134 expr!41))) b!7525137))

(assert (= (and b!7524880 ((_ is Concat!28650) (reg!20134 expr!41))) b!7525138))

(assert (= (and b!7524880 ((_ is Star!19805) (reg!20134 expr!41))) b!7525139))

(assert (= (and b!7524880 ((_ is Union!19805) (reg!20134 expr!41))) b!7525140))

(declare-fun b!7525144 () Bool)

(declare-fun e!4485502 () Bool)

(declare-fun tp!2186731 () Bool)

(declare-fun tp!2186732 () Bool)

(assert (=> b!7525144 (= e!4485502 (and tp!2186731 tp!2186732))))

(declare-fun b!7525142 () Bool)

(declare-fun tp!2186730 () Bool)

(declare-fun tp!2186729 () Bool)

(assert (=> b!7525142 (= e!4485502 (and tp!2186730 tp!2186729))))

(assert (=> b!7524876 (= tp!2186537 e!4485502)))

(declare-fun b!7525141 () Bool)

(assert (=> b!7525141 (= e!4485502 tp_is_empty!49965)))

(declare-fun b!7525143 () Bool)

(declare-fun tp!2186728 () Bool)

(assert (=> b!7525143 (= e!4485502 tp!2186728)))

(assert (= (and b!7524876 ((_ is ElementMatch!19805) (regOne!40122 expr!41))) b!7525141))

(assert (= (and b!7524876 ((_ is Concat!28650) (regOne!40122 expr!41))) b!7525142))

(assert (= (and b!7524876 ((_ is Star!19805) (regOne!40122 expr!41))) b!7525143))

(assert (= (and b!7524876 ((_ is Union!19805) (regOne!40122 expr!41))) b!7525144))

(declare-fun b!7525148 () Bool)

(declare-fun e!4485503 () Bool)

(declare-fun tp!2186736 () Bool)

(declare-fun tp!2186737 () Bool)

(assert (=> b!7525148 (= e!4485503 (and tp!2186736 tp!2186737))))

(declare-fun b!7525146 () Bool)

(declare-fun tp!2186735 () Bool)

(declare-fun tp!2186734 () Bool)

(assert (=> b!7525146 (= e!4485503 (and tp!2186735 tp!2186734))))

(assert (=> b!7524876 (= tp!2186534 e!4485503)))

(declare-fun b!7525145 () Bool)

(assert (=> b!7525145 (= e!4485503 tp_is_empty!49965)))

(declare-fun b!7525147 () Bool)

(declare-fun tp!2186733 () Bool)

(assert (=> b!7525147 (= e!4485503 tp!2186733)))

(assert (= (and b!7524876 ((_ is ElementMatch!19805) (regTwo!40122 expr!41))) b!7525145))

(assert (= (and b!7524876 ((_ is Concat!28650) (regTwo!40122 expr!41))) b!7525146))

(assert (= (and b!7524876 ((_ is Star!19805) (regTwo!40122 expr!41))) b!7525147))

(assert (= (and b!7524876 ((_ is Union!19805) (regTwo!40122 expr!41))) b!7525148))

(declare-fun b!7525153 () Bool)

(declare-fun e!4485506 () Bool)

(declare-fun tp!2186742 () Bool)

(declare-fun tp!2186743 () Bool)

(assert (=> b!7525153 (= e!4485506 (and tp!2186742 tp!2186743))))

(assert (=> b!7524884 (= tp!2186535 e!4485506)))

(assert (= (and b!7524884 ((_ is Cons!72566) (exprs!9031 context!49))) b!7525153))

(declare-fun b!7525157 () Bool)

(declare-fun e!4485507 () Bool)

(declare-fun tp!2186747 () Bool)

(declare-fun tp!2186748 () Bool)

(assert (=> b!7525157 (= e!4485507 (and tp!2186747 tp!2186748))))

(declare-fun b!7525155 () Bool)

(declare-fun tp!2186746 () Bool)

(declare-fun tp!2186745 () Bool)

(assert (=> b!7525155 (= e!4485507 (and tp!2186746 tp!2186745))))

(assert (=> b!7524885 (= tp!2186538 e!4485507)))

(declare-fun b!7525154 () Bool)

(assert (=> b!7525154 (= e!4485507 tp_is_empty!49965)))

(declare-fun b!7525156 () Bool)

(declare-fun tp!2186744 () Bool)

(assert (=> b!7525156 (= e!4485507 tp!2186744)))

(assert (= (and b!7524885 ((_ is ElementMatch!19805) (regOne!40123 expr!41))) b!7525154))

(assert (= (and b!7524885 ((_ is Concat!28650) (regOne!40123 expr!41))) b!7525155))

(assert (= (and b!7524885 ((_ is Star!19805) (regOne!40123 expr!41))) b!7525156))

(assert (= (and b!7524885 ((_ is Union!19805) (regOne!40123 expr!41))) b!7525157))

(declare-fun b!7525161 () Bool)

(declare-fun e!4485508 () Bool)

(declare-fun tp!2186752 () Bool)

(declare-fun tp!2186753 () Bool)

(assert (=> b!7525161 (= e!4485508 (and tp!2186752 tp!2186753))))

(declare-fun b!7525159 () Bool)

(declare-fun tp!2186751 () Bool)

(declare-fun tp!2186750 () Bool)

(assert (=> b!7525159 (= e!4485508 (and tp!2186751 tp!2186750))))

(assert (=> b!7524885 (= tp!2186539 e!4485508)))

(declare-fun b!7525158 () Bool)

(assert (=> b!7525158 (= e!4485508 tp_is_empty!49965)))

(declare-fun b!7525160 () Bool)

(declare-fun tp!2186749 () Bool)

(assert (=> b!7525160 (= e!4485508 tp!2186749)))

(assert (= (and b!7524885 ((_ is ElementMatch!19805) (regTwo!40123 expr!41))) b!7525158))

(assert (= (and b!7524885 ((_ is Concat!28650) (regTwo!40123 expr!41))) b!7525159))

(assert (= (and b!7524885 ((_ is Star!19805) (regTwo!40123 expr!41))) b!7525160))

(assert (= (and b!7524885 ((_ is Union!19805) (regTwo!40123 expr!41))) b!7525161))

(check-sat (not b!7525146) (not b!7525155) (not b!7525122) (not d!2309320) (not b!7525161) (not d!2309352) (not bm!690329) (not b!7525144) tp_is_empty!49965 (not b!7525159) (not b!7525143) (not b!7525157) (not b!7525140) (not b!7525139) (not bm!690331) (not b!7525156) (not b!7525153) (not b!7525160) (not b!7525142) (not d!2309350) (not b!7525147) (not b!7525148) (not b!7525138))
(check-sat)
(get-model)

(declare-fun d!2309354 () Bool)

(declare-fun res!3016028 () Bool)

(declare-fun e!4485513 () Bool)

(assert (=> d!2309354 (=> res!3016028 e!4485513)))

(assert (=> d!2309354 (= res!3016028 ((_ is Nil!72566) (exprs!9031 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41)))))))

(assert (=> d!2309354 (= (forall!18416 (exprs!9031 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41))) lambda!466448) e!4485513)))

(declare-fun b!7525166 () Bool)

(declare-fun e!4485514 () Bool)

(assert (=> b!7525166 (= e!4485513 e!4485514)))

(declare-fun res!3016029 () Bool)

(assert (=> b!7525166 (=> (not res!3016029) (not e!4485514))))

(declare-fun dynLambda!29896 (Int Regex!19805) Bool)

(assert (=> b!7525166 (= res!3016029 (dynLambda!29896 lambda!466448 (h!79014 (exprs!9031 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41))))))))

(declare-fun b!7525167 () Bool)

(assert (=> b!7525167 (= e!4485514 (forall!18416 (t!387395 (exprs!9031 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41)))) lambda!466448))))

(assert (= (and d!2309354 (not res!3016028)) b!7525166))

(assert (= (and b!7525166 res!3016029) b!7525167))

(declare-fun b_lambda!288899 () Bool)

(assert (=> (not b_lambda!288899) (not b!7525166)))

(declare-fun m!8101264 () Bool)

(assert (=> b!7525166 m!8101264))

(declare-fun m!8101266 () Bool)

(assert (=> b!7525167 m!8101266))

(assert (=> d!2309320 d!2309354))

(declare-fun b!7525168 () Bool)

(declare-fun e!4485520 () Bool)

(declare-fun call!690337 () Bool)

(assert (=> b!7525168 (= e!4485520 call!690337)))

(declare-fun b!7525169 () Bool)

(declare-fun res!3016031 () Bool)

(declare-fun e!4485516 () Bool)

(assert (=> b!7525169 (=> res!3016031 e!4485516)))

(assert (=> b!7525169 (= res!3016031 (not ((_ is Concat!28650) (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41))))))))

(declare-fun e!4485518 () Bool)

(assert (=> b!7525169 (= e!4485518 e!4485516)))

(declare-fun b!7525170 () Bool)

(declare-fun e!4485517 () Bool)

(declare-fun e!4485515 () Bool)

(assert (=> b!7525170 (= e!4485517 e!4485515)))

(declare-fun c!1390150 () Bool)

(assert (=> b!7525170 (= c!1390150 ((_ is Star!19805) (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))))))

(declare-fun bm!690332 () Bool)

(declare-fun c!1390151 () Bool)

(assert (=> bm!690332 (= call!690337 (validRegex!10233 (ite c!1390150 (reg!20134 (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))) (ite c!1390151 (regTwo!40123 (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))) (regOne!40122 (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41))))))))))

(declare-fun b!7525171 () Bool)

(declare-fun e!4485519 () Bool)

(declare-fun call!690338 () Bool)

(assert (=> b!7525171 (= e!4485519 call!690338)))

(declare-fun bm!690333 () Bool)

(assert (=> bm!690333 (= call!690338 call!690337)))

(declare-fun b!7525172 () Bool)

(assert (=> b!7525172 (= e!4485515 e!4485520)))

(declare-fun res!3016032 () Bool)

(assert (=> b!7525172 (= res!3016032 (not (nullable!8639 (reg!20134 (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))))))))

(assert (=> b!7525172 (=> (not res!3016032) (not e!4485520))))

(declare-fun d!2309356 () Bool)

(declare-fun res!3016034 () Bool)

(assert (=> d!2309356 (=> res!3016034 e!4485517)))

(assert (=> d!2309356 (= res!3016034 ((_ is ElementMatch!19805) (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))))))

(assert (=> d!2309356 (= (validRegex!10233 (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))) e!4485517)))

(declare-fun b!7525173 () Bool)

(assert (=> b!7525173 (= e!4485515 e!4485518)))

(assert (=> b!7525173 (= c!1390151 ((_ is Union!19805) (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))))))

(declare-fun b!7525174 () Bool)

(declare-fun e!4485521 () Bool)

(declare-fun call!690339 () Bool)

(assert (=> b!7525174 (= e!4485521 call!690339)))

(declare-fun b!7525175 () Bool)

(assert (=> b!7525175 (= e!4485516 e!4485521)))

(declare-fun res!3016033 () Bool)

(assert (=> b!7525175 (=> (not res!3016033) (not e!4485521))))

(assert (=> b!7525175 (= res!3016033 call!690338)))

(declare-fun bm!690334 () Bool)

(assert (=> bm!690334 (= call!690339 (validRegex!10233 (ite c!1390151 (regOne!40123 (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))) (regTwo!40122 (ite c!1390148 (reg!20134 expr!41) (ite c!1390149 (regTwo!40123 expr!41) (regOne!40122 expr!41)))))))))

(declare-fun b!7525176 () Bool)

(declare-fun res!3016030 () Bool)

(assert (=> b!7525176 (=> (not res!3016030) (not e!4485519))))

(assert (=> b!7525176 (= res!3016030 call!690339)))

(assert (=> b!7525176 (= e!4485518 e!4485519)))

(assert (= (and d!2309356 (not res!3016034)) b!7525170))

(assert (= (and b!7525170 c!1390150) b!7525172))

(assert (= (and b!7525170 (not c!1390150)) b!7525173))

(assert (= (and b!7525172 res!3016032) b!7525168))

(assert (= (and b!7525173 c!1390151) b!7525176))

(assert (= (and b!7525173 (not c!1390151)) b!7525169))

(assert (= (and b!7525176 res!3016030) b!7525171))

(assert (= (and b!7525169 (not res!3016031)) b!7525175))

(assert (= (and b!7525175 res!3016033) b!7525174))

(assert (= (or b!7525171 b!7525175) bm!690333))

(assert (= (or b!7525176 b!7525174) bm!690334))

(assert (= (or b!7525168 bm!690333) bm!690332))

(declare-fun m!8101268 () Bool)

(assert (=> bm!690332 m!8101268))

(declare-fun m!8101270 () Bool)

(assert (=> b!7525172 m!8101270))

(declare-fun m!8101272 () Bool)

(assert (=> bm!690334 m!8101272))

(assert (=> bm!690329 d!2309356))

(declare-fun d!2309358 () Bool)

(declare-fun res!3016035 () Bool)

(declare-fun e!4485522 () Bool)

(assert (=> d!2309358 (=> res!3016035 e!4485522)))

(assert (=> d!2309358 (= res!3016035 ((_ is Nil!72566) (exprs!9031 context!49)))))

(assert (=> d!2309358 (= (forall!18416 (exprs!9031 context!49) lambda!466449) e!4485522)))

(declare-fun b!7525177 () Bool)

(declare-fun e!4485523 () Bool)

(assert (=> b!7525177 (= e!4485522 e!4485523)))

(declare-fun res!3016036 () Bool)

(assert (=> b!7525177 (=> (not res!3016036) (not e!4485523))))

(assert (=> b!7525177 (= res!3016036 (dynLambda!29896 lambda!466449 (h!79014 (exprs!9031 context!49))))))

(declare-fun b!7525178 () Bool)

(assert (=> b!7525178 (= e!4485523 (forall!18416 (t!387395 (exprs!9031 context!49)) lambda!466449))))

(assert (= (and d!2309358 (not res!3016035)) b!7525177))

(assert (= (and b!7525177 res!3016036) b!7525178))

(declare-fun b_lambda!288901 () Bool)

(assert (=> (not b_lambda!288901) (not b!7525177)))

(declare-fun m!8101274 () Bool)

(assert (=> b!7525177 m!8101274))

(declare-fun m!8101276 () Bool)

(assert (=> b!7525178 m!8101276))

(assert (=> d!2309350 d!2309358))

(declare-fun b!7525179 () Bool)

(declare-fun e!4485529 () Bool)

(declare-fun call!690340 () Bool)

(assert (=> b!7525179 (= e!4485529 call!690340)))

(declare-fun b!7525180 () Bool)

(declare-fun res!3016038 () Bool)

(declare-fun e!4485525 () Bool)

(assert (=> b!7525180 (=> res!3016038 e!4485525)))

(assert (=> b!7525180 (= res!3016038 (not ((_ is Concat!28650) (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41)))))))

(declare-fun e!4485527 () Bool)

(assert (=> b!7525180 (= e!4485527 e!4485525)))

(declare-fun b!7525181 () Bool)

(declare-fun e!4485526 () Bool)

(declare-fun e!4485524 () Bool)

(assert (=> b!7525181 (= e!4485526 e!4485524)))

(declare-fun c!1390152 () Bool)

(assert (=> b!7525181 (= c!1390152 ((_ is Star!19805) (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))))))

(declare-fun c!1390153 () Bool)

(declare-fun bm!690335 () Bool)

(assert (=> bm!690335 (= call!690340 (validRegex!10233 (ite c!1390152 (reg!20134 (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))) (ite c!1390153 (regTwo!40123 (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))) (regOne!40122 (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41)))))))))

(declare-fun b!7525182 () Bool)

(declare-fun e!4485528 () Bool)

(declare-fun call!690341 () Bool)

(assert (=> b!7525182 (= e!4485528 call!690341)))

(declare-fun bm!690336 () Bool)

(assert (=> bm!690336 (= call!690341 call!690340)))

(declare-fun b!7525183 () Bool)

(assert (=> b!7525183 (= e!4485524 e!4485529)))

(declare-fun res!3016039 () Bool)

(assert (=> b!7525183 (= res!3016039 (not (nullable!8639 (reg!20134 (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))))))))

(assert (=> b!7525183 (=> (not res!3016039) (not e!4485529))))

(declare-fun d!2309360 () Bool)

(declare-fun res!3016041 () Bool)

(assert (=> d!2309360 (=> res!3016041 e!4485526)))

(assert (=> d!2309360 (= res!3016041 ((_ is ElementMatch!19805) (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))))))

(assert (=> d!2309360 (= (validRegex!10233 (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))) e!4485526)))

(declare-fun b!7525184 () Bool)

(assert (=> b!7525184 (= e!4485524 e!4485527)))

(assert (=> b!7525184 (= c!1390153 ((_ is Union!19805) (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))))))

(declare-fun b!7525185 () Bool)

(declare-fun e!4485530 () Bool)

(declare-fun call!690342 () Bool)

(assert (=> b!7525185 (= e!4485530 call!690342)))

(declare-fun b!7525186 () Bool)

(assert (=> b!7525186 (= e!4485525 e!4485530)))

(declare-fun res!3016040 () Bool)

(assert (=> b!7525186 (=> (not res!3016040) (not e!4485530))))

(assert (=> b!7525186 (= res!3016040 call!690341)))

(declare-fun bm!690337 () Bool)

(assert (=> bm!690337 (= call!690342 (validRegex!10233 (ite c!1390153 (regOne!40123 (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))) (regTwo!40122 (ite c!1390149 (regOne!40123 expr!41) (regTwo!40122 expr!41))))))))

(declare-fun b!7525187 () Bool)

(declare-fun res!3016037 () Bool)

(assert (=> b!7525187 (=> (not res!3016037) (not e!4485528))))

(assert (=> b!7525187 (= res!3016037 call!690342)))

(assert (=> b!7525187 (= e!4485527 e!4485528)))

(assert (= (and d!2309360 (not res!3016041)) b!7525181))

(assert (= (and b!7525181 c!1390152) b!7525183))

(assert (= (and b!7525181 (not c!1390152)) b!7525184))

(assert (= (and b!7525183 res!3016039) b!7525179))

(assert (= (and b!7525184 c!1390153) b!7525187))

(assert (= (and b!7525184 (not c!1390153)) b!7525180))

(assert (= (and b!7525187 res!3016037) b!7525182))

(assert (= (and b!7525180 (not res!3016038)) b!7525186))

(assert (= (and b!7525186 res!3016040) b!7525185))

(assert (= (or b!7525182 b!7525186) bm!690336))

(assert (= (or b!7525187 b!7525185) bm!690337))

(assert (= (or b!7525179 bm!690336) bm!690335))

(declare-fun m!8101278 () Bool)

(assert (=> bm!690335 m!8101278))

(declare-fun m!8101280 () Bool)

(assert (=> b!7525183 m!8101280))

(declare-fun m!8101282 () Bool)

(assert (=> bm!690337 m!8101282))

(assert (=> bm!690331 d!2309360))

(declare-fun d!2309362 () Bool)

(declare-fun res!3016054 () Bool)

(declare-fun e!4485544 () Bool)

(assert (=> d!2309362 (=> res!3016054 e!4485544)))

(assert (=> d!2309362 (= res!3016054 ((_ is EmptyExpr!19805) (regOne!40122 expr!41)))))

(assert (=> d!2309362 (= (nullableFct!3464 (regOne!40122 expr!41)) e!4485544)))

(declare-fun b!7525202 () Bool)

(declare-fun e!4485548 () Bool)

(declare-fun e!4485545 () Bool)

(assert (=> b!7525202 (= e!4485548 e!4485545)))

(declare-fun res!3016056 () Bool)

(declare-fun call!690347 () Bool)

(assert (=> b!7525202 (= res!3016056 call!690347)))

(assert (=> b!7525202 (=> (not res!3016056) (not e!4485545))))

(declare-fun b!7525203 () Bool)

(declare-fun e!4485546 () Bool)

(assert (=> b!7525203 (= e!4485544 e!4485546)))

(declare-fun res!3016055 () Bool)

(assert (=> b!7525203 (=> (not res!3016055) (not e!4485546))))

(assert (=> b!7525203 (= res!3016055 (and (not ((_ is EmptyLang!19805) (regOne!40122 expr!41))) (not ((_ is ElementMatch!19805) (regOne!40122 expr!41)))))))

(declare-fun b!7525204 () Bool)

(declare-fun e!4485547 () Bool)

(assert (=> b!7525204 (= e!4485546 e!4485547)))

(declare-fun res!3016052 () Bool)

(assert (=> b!7525204 (=> res!3016052 e!4485547)))

(assert (=> b!7525204 (= res!3016052 ((_ is Star!19805) (regOne!40122 expr!41)))))

(declare-fun b!7525205 () Bool)

(declare-fun e!4485543 () Bool)

(declare-fun call!690348 () Bool)

(assert (=> b!7525205 (= e!4485543 call!690348)))

(declare-fun bm!690342 () Bool)

(declare-fun c!1390156 () Bool)

(assert (=> bm!690342 (= call!690348 (nullable!8639 (ite c!1390156 (regTwo!40123 (regOne!40122 expr!41)) (regTwo!40122 (regOne!40122 expr!41)))))))

(declare-fun b!7525206 () Bool)

(assert (=> b!7525206 (= e!4485548 e!4485543)))

(declare-fun res!3016053 () Bool)

(assert (=> b!7525206 (= res!3016053 call!690347)))

(assert (=> b!7525206 (=> res!3016053 e!4485543)))

(declare-fun b!7525207 () Bool)

(assert (=> b!7525207 (= e!4485545 call!690348)))

(declare-fun b!7525208 () Bool)

(assert (=> b!7525208 (= e!4485547 e!4485548)))

(assert (=> b!7525208 (= c!1390156 ((_ is Union!19805) (regOne!40122 expr!41)))))

(declare-fun bm!690343 () Bool)

(assert (=> bm!690343 (= call!690347 (nullable!8639 (ite c!1390156 (regOne!40123 (regOne!40122 expr!41)) (regOne!40122 (regOne!40122 expr!41)))))))

(assert (= (and d!2309362 (not res!3016054)) b!7525203))

(assert (= (and b!7525203 res!3016055) b!7525204))

(assert (= (and b!7525204 (not res!3016052)) b!7525208))

(assert (= (and b!7525208 c!1390156) b!7525206))

(assert (= (and b!7525208 (not c!1390156)) b!7525202))

(assert (= (and b!7525206 (not res!3016053)) b!7525205))

(assert (= (and b!7525202 res!3016056) b!7525207))

(assert (= (or b!7525206 b!7525202) bm!690343))

(assert (= (or b!7525205 b!7525207) bm!690342))

(declare-fun m!8101284 () Bool)

(assert (=> bm!690342 m!8101284))

(declare-fun m!8101286 () Bool)

(assert (=> bm!690343 m!8101286))

(assert (=> d!2309352 d!2309362))

(declare-fun d!2309364 () Bool)

(assert (=> d!2309364 (= (nullable!8639 (reg!20134 expr!41)) (nullableFct!3464 (reg!20134 expr!41)))))

(declare-fun bs!1939750 () Bool)

(assert (= bs!1939750 d!2309364))

(declare-fun m!8101288 () Bool)

(assert (=> bs!1939750 m!8101288))

(assert (=> b!7525122 d!2309364))

(declare-fun b!7525212 () Bool)

(declare-fun e!4485549 () Bool)

(declare-fun tp!2186757 () Bool)

(declare-fun tp!2186758 () Bool)

(assert (=> b!7525212 (= e!4485549 (and tp!2186757 tp!2186758))))

(declare-fun b!7525210 () Bool)

(declare-fun tp!2186756 () Bool)

(declare-fun tp!2186755 () Bool)

(assert (=> b!7525210 (= e!4485549 (and tp!2186756 tp!2186755))))

(assert (=> b!7525142 (= tp!2186730 e!4485549)))

(declare-fun b!7525209 () Bool)

(assert (=> b!7525209 (= e!4485549 tp_is_empty!49965)))

(declare-fun b!7525211 () Bool)

(declare-fun tp!2186754 () Bool)

(assert (=> b!7525211 (= e!4485549 tp!2186754)))

(assert (= (and b!7525142 ((_ is ElementMatch!19805) (regOne!40122 (regOne!40122 expr!41)))) b!7525209))

(assert (= (and b!7525142 ((_ is Concat!28650) (regOne!40122 (regOne!40122 expr!41)))) b!7525210))

(assert (= (and b!7525142 ((_ is Star!19805) (regOne!40122 (regOne!40122 expr!41)))) b!7525211))

(assert (= (and b!7525142 ((_ is Union!19805) (regOne!40122 (regOne!40122 expr!41)))) b!7525212))

(declare-fun b!7525216 () Bool)

(declare-fun e!4485550 () Bool)

(declare-fun tp!2186762 () Bool)

(declare-fun tp!2186763 () Bool)

(assert (=> b!7525216 (= e!4485550 (and tp!2186762 tp!2186763))))

(declare-fun b!7525214 () Bool)

(declare-fun tp!2186761 () Bool)

(declare-fun tp!2186760 () Bool)

(assert (=> b!7525214 (= e!4485550 (and tp!2186761 tp!2186760))))

(assert (=> b!7525142 (= tp!2186729 e!4485550)))

(declare-fun b!7525213 () Bool)

(assert (=> b!7525213 (= e!4485550 tp_is_empty!49965)))

(declare-fun b!7525215 () Bool)

(declare-fun tp!2186759 () Bool)

(assert (=> b!7525215 (= e!4485550 tp!2186759)))

(assert (= (and b!7525142 ((_ is ElementMatch!19805) (regTwo!40122 (regOne!40122 expr!41)))) b!7525213))

(assert (= (and b!7525142 ((_ is Concat!28650) (regTwo!40122 (regOne!40122 expr!41)))) b!7525214))

(assert (= (and b!7525142 ((_ is Star!19805) (regTwo!40122 (regOne!40122 expr!41)))) b!7525215))

(assert (= (and b!7525142 ((_ is Union!19805) (regTwo!40122 (regOne!40122 expr!41)))) b!7525216))

(declare-fun b!7525220 () Bool)

(declare-fun e!4485551 () Bool)

(declare-fun tp!2186767 () Bool)

(declare-fun tp!2186768 () Bool)

(assert (=> b!7525220 (= e!4485551 (and tp!2186767 tp!2186768))))

(declare-fun b!7525218 () Bool)

(declare-fun tp!2186766 () Bool)

(declare-fun tp!2186765 () Bool)

(assert (=> b!7525218 (= e!4485551 (and tp!2186766 tp!2186765))))

(assert (=> b!7525147 (= tp!2186733 e!4485551)))

(declare-fun b!7525217 () Bool)

(assert (=> b!7525217 (= e!4485551 tp_is_empty!49965)))

(declare-fun b!7525219 () Bool)

(declare-fun tp!2186764 () Bool)

(assert (=> b!7525219 (= e!4485551 tp!2186764)))

(assert (= (and b!7525147 ((_ is ElementMatch!19805) (reg!20134 (regTwo!40122 expr!41)))) b!7525217))

(assert (= (and b!7525147 ((_ is Concat!28650) (reg!20134 (regTwo!40122 expr!41)))) b!7525218))

(assert (= (and b!7525147 ((_ is Star!19805) (reg!20134 (regTwo!40122 expr!41)))) b!7525219))

(assert (= (and b!7525147 ((_ is Union!19805) (reg!20134 (regTwo!40122 expr!41)))) b!7525220))

(declare-fun b!7525224 () Bool)

(declare-fun e!4485552 () Bool)

(declare-fun tp!2186772 () Bool)

(declare-fun tp!2186773 () Bool)

(assert (=> b!7525224 (= e!4485552 (and tp!2186772 tp!2186773))))

(declare-fun b!7525222 () Bool)

(declare-fun tp!2186771 () Bool)

(declare-fun tp!2186770 () Bool)

(assert (=> b!7525222 (= e!4485552 (and tp!2186771 tp!2186770))))

(assert (=> b!7525138 (= tp!2186725 e!4485552)))

(declare-fun b!7525221 () Bool)

(assert (=> b!7525221 (= e!4485552 tp_is_empty!49965)))

(declare-fun b!7525223 () Bool)

(declare-fun tp!2186769 () Bool)

(assert (=> b!7525223 (= e!4485552 tp!2186769)))

(assert (= (and b!7525138 ((_ is ElementMatch!19805) (regOne!40122 (reg!20134 expr!41)))) b!7525221))

(assert (= (and b!7525138 ((_ is Concat!28650) (regOne!40122 (reg!20134 expr!41)))) b!7525222))

(assert (= (and b!7525138 ((_ is Star!19805) (regOne!40122 (reg!20134 expr!41)))) b!7525223))

(assert (= (and b!7525138 ((_ is Union!19805) (regOne!40122 (reg!20134 expr!41)))) b!7525224))

(declare-fun b!7525228 () Bool)

(declare-fun e!4485553 () Bool)

(declare-fun tp!2186777 () Bool)

(declare-fun tp!2186778 () Bool)

(assert (=> b!7525228 (= e!4485553 (and tp!2186777 tp!2186778))))

(declare-fun b!7525226 () Bool)

(declare-fun tp!2186776 () Bool)

(declare-fun tp!2186775 () Bool)

(assert (=> b!7525226 (= e!4485553 (and tp!2186776 tp!2186775))))

(assert (=> b!7525138 (= tp!2186724 e!4485553)))

(declare-fun b!7525225 () Bool)

(assert (=> b!7525225 (= e!4485553 tp_is_empty!49965)))

(declare-fun b!7525227 () Bool)

(declare-fun tp!2186774 () Bool)

(assert (=> b!7525227 (= e!4485553 tp!2186774)))

(assert (= (and b!7525138 ((_ is ElementMatch!19805) (regTwo!40122 (reg!20134 expr!41)))) b!7525225))

(assert (= (and b!7525138 ((_ is Concat!28650) (regTwo!40122 (reg!20134 expr!41)))) b!7525226))

(assert (= (and b!7525138 ((_ is Star!19805) (regTwo!40122 (reg!20134 expr!41)))) b!7525227))

(assert (= (and b!7525138 ((_ is Union!19805) (regTwo!40122 (reg!20134 expr!41)))) b!7525228))

(declare-fun b!7525232 () Bool)

(declare-fun e!4485554 () Bool)

(declare-fun tp!2186782 () Bool)

(declare-fun tp!2186783 () Bool)

(assert (=> b!7525232 (= e!4485554 (and tp!2186782 tp!2186783))))

(declare-fun b!7525230 () Bool)

(declare-fun tp!2186781 () Bool)

(declare-fun tp!2186780 () Bool)

(assert (=> b!7525230 (= e!4485554 (and tp!2186781 tp!2186780))))

(assert (=> b!7525143 (= tp!2186728 e!4485554)))

(declare-fun b!7525229 () Bool)

(assert (=> b!7525229 (= e!4485554 tp_is_empty!49965)))

(declare-fun b!7525231 () Bool)

(declare-fun tp!2186779 () Bool)

(assert (=> b!7525231 (= e!4485554 tp!2186779)))

(assert (= (and b!7525143 ((_ is ElementMatch!19805) (reg!20134 (regOne!40122 expr!41)))) b!7525229))

(assert (= (and b!7525143 ((_ is Concat!28650) (reg!20134 (regOne!40122 expr!41)))) b!7525230))

(assert (= (and b!7525143 ((_ is Star!19805) (reg!20134 (regOne!40122 expr!41)))) b!7525231))

(assert (= (and b!7525143 ((_ is Union!19805) (reg!20134 (regOne!40122 expr!41)))) b!7525232))

(declare-fun b!7525236 () Bool)

(declare-fun e!4485555 () Bool)

(declare-fun tp!2186787 () Bool)

(declare-fun tp!2186788 () Bool)

(assert (=> b!7525236 (= e!4485555 (and tp!2186787 tp!2186788))))

(declare-fun b!7525234 () Bool)

(declare-fun tp!2186786 () Bool)

(declare-fun tp!2186785 () Bool)

(assert (=> b!7525234 (= e!4485555 (and tp!2186786 tp!2186785))))

(assert (=> b!7525148 (= tp!2186736 e!4485555)))

(declare-fun b!7525233 () Bool)

(assert (=> b!7525233 (= e!4485555 tp_is_empty!49965)))

(declare-fun b!7525235 () Bool)

(declare-fun tp!2186784 () Bool)

(assert (=> b!7525235 (= e!4485555 tp!2186784)))

(assert (= (and b!7525148 ((_ is ElementMatch!19805) (regOne!40123 (regTwo!40122 expr!41)))) b!7525233))

(assert (= (and b!7525148 ((_ is Concat!28650) (regOne!40123 (regTwo!40122 expr!41)))) b!7525234))

(assert (= (and b!7525148 ((_ is Star!19805) (regOne!40123 (regTwo!40122 expr!41)))) b!7525235))

(assert (= (and b!7525148 ((_ is Union!19805) (regOne!40123 (regTwo!40122 expr!41)))) b!7525236))

(declare-fun b!7525240 () Bool)

(declare-fun e!4485556 () Bool)

(declare-fun tp!2186792 () Bool)

(declare-fun tp!2186793 () Bool)

(assert (=> b!7525240 (= e!4485556 (and tp!2186792 tp!2186793))))

(declare-fun b!7525238 () Bool)

(declare-fun tp!2186791 () Bool)

(declare-fun tp!2186790 () Bool)

(assert (=> b!7525238 (= e!4485556 (and tp!2186791 tp!2186790))))

(assert (=> b!7525148 (= tp!2186737 e!4485556)))

(declare-fun b!7525237 () Bool)

(assert (=> b!7525237 (= e!4485556 tp_is_empty!49965)))

(declare-fun b!7525239 () Bool)

(declare-fun tp!2186789 () Bool)

(assert (=> b!7525239 (= e!4485556 tp!2186789)))

(assert (= (and b!7525148 ((_ is ElementMatch!19805) (regTwo!40123 (regTwo!40122 expr!41)))) b!7525237))

(assert (= (and b!7525148 ((_ is Concat!28650) (regTwo!40123 (regTwo!40122 expr!41)))) b!7525238))

(assert (= (and b!7525148 ((_ is Star!19805) (regTwo!40123 (regTwo!40122 expr!41)))) b!7525239))

(assert (= (and b!7525148 ((_ is Union!19805) (regTwo!40123 (regTwo!40122 expr!41)))) b!7525240))

(declare-fun b!7525244 () Bool)

(declare-fun e!4485557 () Bool)

(declare-fun tp!2186797 () Bool)

(declare-fun tp!2186798 () Bool)

(assert (=> b!7525244 (= e!4485557 (and tp!2186797 tp!2186798))))

(declare-fun b!7525242 () Bool)

(declare-fun tp!2186796 () Bool)

(declare-fun tp!2186795 () Bool)

(assert (=> b!7525242 (= e!4485557 (and tp!2186796 tp!2186795))))

(assert (=> b!7525139 (= tp!2186723 e!4485557)))

(declare-fun b!7525241 () Bool)

(assert (=> b!7525241 (= e!4485557 tp_is_empty!49965)))

(declare-fun b!7525243 () Bool)

(declare-fun tp!2186794 () Bool)

(assert (=> b!7525243 (= e!4485557 tp!2186794)))

(assert (= (and b!7525139 ((_ is ElementMatch!19805) (reg!20134 (reg!20134 expr!41)))) b!7525241))

(assert (= (and b!7525139 ((_ is Concat!28650) (reg!20134 (reg!20134 expr!41)))) b!7525242))

(assert (= (and b!7525139 ((_ is Star!19805) (reg!20134 (reg!20134 expr!41)))) b!7525243))

(assert (= (and b!7525139 ((_ is Union!19805) (reg!20134 (reg!20134 expr!41)))) b!7525244))

(declare-fun b!7525248 () Bool)

(declare-fun e!4485558 () Bool)

(declare-fun tp!2186802 () Bool)

(declare-fun tp!2186803 () Bool)

(assert (=> b!7525248 (= e!4485558 (and tp!2186802 tp!2186803))))

(declare-fun b!7525246 () Bool)

(declare-fun tp!2186801 () Bool)

(declare-fun tp!2186800 () Bool)

(assert (=> b!7525246 (= e!4485558 (and tp!2186801 tp!2186800))))

(assert (=> b!7525144 (= tp!2186731 e!4485558)))

(declare-fun b!7525245 () Bool)

(assert (=> b!7525245 (= e!4485558 tp_is_empty!49965)))

(declare-fun b!7525247 () Bool)

(declare-fun tp!2186799 () Bool)

(assert (=> b!7525247 (= e!4485558 tp!2186799)))

(assert (= (and b!7525144 ((_ is ElementMatch!19805) (regOne!40123 (regOne!40122 expr!41)))) b!7525245))

(assert (= (and b!7525144 ((_ is Concat!28650) (regOne!40123 (regOne!40122 expr!41)))) b!7525246))

(assert (= (and b!7525144 ((_ is Star!19805) (regOne!40123 (regOne!40122 expr!41)))) b!7525247))

(assert (= (and b!7525144 ((_ is Union!19805) (regOne!40123 (regOne!40122 expr!41)))) b!7525248))

(declare-fun b!7525252 () Bool)

(declare-fun e!4485559 () Bool)

(declare-fun tp!2186807 () Bool)

(declare-fun tp!2186808 () Bool)

(assert (=> b!7525252 (= e!4485559 (and tp!2186807 tp!2186808))))

(declare-fun b!7525250 () Bool)

(declare-fun tp!2186806 () Bool)

(declare-fun tp!2186805 () Bool)

(assert (=> b!7525250 (= e!4485559 (and tp!2186806 tp!2186805))))

(assert (=> b!7525144 (= tp!2186732 e!4485559)))

(declare-fun b!7525249 () Bool)

(assert (=> b!7525249 (= e!4485559 tp_is_empty!49965)))

(declare-fun b!7525251 () Bool)

(declare-fun tp!2186804 () Bool)

(assert (=> b!7525251 (= e!4485559 tp!2186804)))

(assert (= (and b!7525144 ((_ is ElementMatch!19805) (regTwo!40123 (regOne!40122 expr!41)))) b!7525249))

(assert (= (and b!7525144 ((_ is Concat!28650) (regTwo!40123 (regOne!40122 expr!41)))) b!7525250))

(assert (= (and b!7525144 ((_ is Star!19805) (regTwo!40123 (regOne!40122 expr!41)))) b!7525251))

(assert (= (and b!7525144 ((_ is Union!19805) (regTwo!40123 (regOne!40122 expr!41)))) b!7525252))

(declare-fun b!7525256 () Bool)

(declare-fun e!4485560 () Bool)

(declare-fun tp!2186812 () Bool)

(declare-fun tp!2186813 () Bool)

(assert (=> b!7525256 (= e!4485560 (and tp!2186812 tp!2186813))))

(declare-fun b!7525254 () Bool)

(declare-fun tp!2186811 () Bool)

(declare-fun tp!2186810 () Bool)

(assert (=> b!7525254 (= e!4485560 (and tp!2186811 tp!2186810))))

(assert (=> b!7525140 (= tp!2186726 e!4485560)))

(declare-fun b!7525253 () Bool)

(assert (=> b!7525253 (= e!4485560 tp_is_empty!49965)))

(declare-fun b!7525255 () Bool)

(declare-fun tp!2186809 () Bool)

(assert (=> b!7525255 (= e!4485560 tp!2186809)))

(assert (= (and b!7525140 ((_ is ElementMatch!19805) (regOne!40123 (reg!20134 expr!41)))) b!7525253))

(assert (= (and b!7525140 ((_ is Concat!28650) (regOne!40123 (reg!20134 expr!41)))) b!7525254))

(assert (= (and b!7525140 ((_ is Star!19805) (regOne!40123 (reg!20134 expr!41)))) b!7525255))

(assert (= (and b!7525140 ((_ is Union!19805) (regOne!40123 (reg!20134 expr!41)))) b!7525256))

(declare-fun b!7525260 () Bool)

(declare-fun e!4485561 () Bool)

(declare-fun tp!2186817 () Bool)

(declare-fun tp!2186818 () Bool)

(assert (=> b!7525260 (= e!4485561 (and tp!2186817 tp!2186818))))

(declare-fun b!7525258 () Bool)

(declare-fun tp!2186816 () Bool)

(declare-fun tp!2186815 () Bool)

(assert (=> b!7525258 (= e!4485561 (and tp!2186816 tp!2186815))))

(assert (=> b!7525140 (= tp!2186727 e!4485561)))

(declare-fun b!7525257 () Bool)

(assert (=> b!7525257 (= e!4485561 tp_is_empty!49965)))

(declare-fun b!7525259 () Bool)

(declare-fun tp!2186814 () Bool)

(assert (=> b!7525259 (= e!4485561 tp!2186814)))

(assert (= (and b!7525140 ((_ is ElementMatch!19805) (regTwo!40123 (reg!20134 expr!41)))) b!7525257))

(assert (= (and b!7525140 ((_ is Concat!28650) (regTwo!40123 (reg!20134 expr!41)))) b!7525258))

(assert (= (and b!7525140 ((_ is Star!19805) (regTwo!40123 (reg!20134 expr!41)))) b!7525259))

(assert (= (and b!7525140 ((_ is Union!19805) (regTwo!40123 (reg!20134 expr!41)))) b!7525260))

(declare-fun b!7525264 () Bool)

(declare-fun e!4485562 () Bool)

(declare-fun tp!2186822 () Bool)

(declare-fun tp!2186823 () Bool)

(assert (=> b!7525264 (= e!4485562 (and tp!2186822 tp!2186823))))

(declare-fun b!7525262 () Bool)

(declare-fun tp!2186821 () Bool)

(declare-fun tp!2186820 () Bool)

(assert (=> b!7525262 (= e!4485562 (and tp!2186821 tp!2186820))))

(assert (=> b!7525159 (= tp!2186751 e!4485562)))

(declare-fun b!7525261 () Bool)

(assert (=> b!7525261 (= e!4485562 tp_is_empty!49965)))

(declare-fun b!7525263 () Bool)

(declare-fun tp!2186819 () Bool)

(assert (=> b!7525263 (= e!4485562 tp!2186819)))

(assert (= (and b!7525159 ((_ is ElementMatch!19805) (regOne!40122 (regTwo!40123 expr!41)))) b!7525261))

(assert (= (and b!7525159 ((_ is Concat!28650) (regOne!40122 (regTwo!40123 expr!41)))) b!7525262))

(assert (= (and b!7525159 ((_ is Star!19805) (regOne!40122 (regTwo!40123 expr!41)))) b!7525263))

(assert (= (and b!7525159 ((_ is Union!19805) (regOne!40122 (regTwo!40123 expr!41)))) b!7525264))

(declare-fun b!7525268 () Bool)

(declare-fun e!4485563 () Bool)

(declare-fun tp!2186827 () Bool)

(declare-fun tp!2186828 () Bool)

(assert (=> b!7525268 (= e!4485563 (and tp!2186827 tp!2186828))))

(declare-fun b!7525266 () Bool)

(declare-fun tp!2186826 () Bool)

(declare-fun tp!2186825 () Bool)

(assert (=> b!7525266 (= e!4485563 (and tp!2186826 tp!2186825))))

(assert (=> b!7525159 (= tp!2186750 e!4485563)))

(declare-fun b!7525265 () Bool)

(assert (=> b!7525265 (= e!4485563 tp_is_empty!49965)))

(declare-fun b!7525267 () Bool)

(declare-fun tp!2186824 () Bool)

(assert (=> b!7525267 (= e!4485563 tp!2186824)))

(assert (= (and b!7525159 ((_ is ElementMatch!19805) (regTwo!40122 (regTwo!40123 expr!41)))) b!7525265))

(assert (= (and b!7525159 ((_ is Concat!28650) (regTwo!40122 (regTwo!40123 expr!41)))) b!7525266))

(assert (= (and b!7525159 ((_ is Star!19805) (regTwo!40122 (regTwo!40123 expr!41)))) b!7525267))

(assert (= (and b!7525159 ((_ is Union!19805) (regTwo!40122 (regTwo!40123 expr!41)))) b!7525268))

(declare-fun b!7525272 () Bool)

(declare-fun e!4485564 () Bool)

(declare-fun tp!2186832 () Bool)

(declare-fun tp!2186833 () Bool)

(assert (=> b!7525272 (= e!4485564 (and tp!2186832 tp!2186833))))

(declare-fun b!7525270 () Bool)

(declare-fun tp!2186831 () Bool)

(declare-fun tp!2186830 () Bool)

(assert (=> b!7525270 (= e!4485564 (and tp!2186831 tp!2186830))))

(assert (=> b!7525155 (= tp!2186746 e!4485564)))

(declare-fun b!7525269 () Bool)

(assert (=> b!7525269 (= e!4485564 tp_is_empty!49965)))

(declare-fun b!7525271 () Bool)

(declare-fun tp!2186829 () Bool)

(assert (=> b!7525271 (= e!4485564 tp!2186829)))

(assert (= (and b!7525155 ((_ is ElementMatch!19805) (regOne!40122 (regOne!40123 expr!41)))) b!7525269))

(assert (= (and b!7525155 ((_ is Concat!28650) (regOne!40122 (regOne!40123 expr!41)))) b!7525270))

(assert (= (and b!7525155 ((_ is Star!19805) (regOne!40122 (regOne!40123 expr!41)))) b!7525271))

(assert (= (and b!7525155 ((_ is Union!19805) (regOne!40122 (regOne!40123 expr!41)))) b!7525272))

(declare-fun b!7525276 () Bool)

(declare-fun e!4485565 () Bool)

(declare-fun tp!2186837 () Bool)

(declare-fun tp!2186838 () Bool)

(assert (=> b!7525276 (= e!4485565 (and tp!2186837 tp!2186838))))

(declare-fun b!7525274 () Bool)

(declare-fun tp!2186836 () Bool)

(declare-fun tp!2186835 () Bool)

(assert (=> b!7525274 (= e!4485565 (and tp!2186836 tp!2186835))))

(assert (=> b!7525155 (= tp!2186745 e!4485565)))

(declare-fun b!7525273 () Bool)

(assert (=> b!7525273 (= e!4485565 tp_is_empty!49965)))

(declare-fun b!7525275 () Bool)

(declare-fun tp!2186834 () Bool)

(assert (=> b!7525275 (= e!4485565 tp!2186834)))

(assert (= (and b!7525155 ((_ is ElementMatch!19805) (regTwo!40122 (regOne!40123 expr!41)))) b!7525273))

(assert (= (and b!7525155 ((_ is Concat!28650) (regTwo!40122 (regOne!40123 expr!41)))) b!7525274))

(assert (= (and b!7525155 ((_ is Star!19805) (regTwo!40122 (regOne!40123 expr!41)))) b!7525275))

(assert (= (and b!7525155 ((_ is Union!19805) (regTwo!40122 (regOne!40123 expr!41)))) b!7525276))

(declare-fun b!7525280 () Bool)

(declare-fun e!4485566 () Bool)

(declare-fun tp!2186842 () Bool)

(declare-fun tp!2186843 () Bool)

(assert (=> b!7525280 (= e!4485566 (and tp!2186842 tp!2186843))))

(declare-fun b!7525278 () Bool)

(declare-fun tp!2186841 () Bool)

(declare-fun tp!2186840 () Bool)

(assert (=> b!7525278 (= e!4485566 (and tp!2186841 tp!2186840))))

(assert (=> b!7525160 (= tp!2186749 e!4485566)))

(declare-fun b!7525277 () Bool)

(assert (=> b!7525277 (= e!4485566 tp_is_empty!49965)))

(declare-fun b!7525279 () Bool)

(declare-fun tp!2186839 () Bool)

(assert (=> b!7525279 (= e!4485566 tp!2186839)))

(assert (= (and b!7525160 ((_ is ElementMatch!19805) (reg!20134 (regTwo!40123 expr!41)))) b!7525277))

(assert (= (and b!7525160 ((_ is Concat!28650) (reg!20134 (regTwo!40123 expr!41)))) b!7525278))

(assert (= (and b!7525160 ((_ is Star!19805) (reg!20134 (regTwo!40123 expr!41)))) b!7525279))

(assert (= (and b!7525160 ((_ is Union!19805) (reg!20134 (regTwo!40123 expr!41)))) b!7525280))

(declare-fun b!7525284 () Bool)

(declare-fun e!4485567 () Bool)

(declare-fun tp!2186847 () Bool)

(declare-fun tp!2186848 () Bool)

(assert (=> b!7525284 (= e!4485567 (and tp!2186847 tp!2186848))))

(declare-fun b!7525282 () Bool)

(declare-fun tp!2186846 () Bool)

(declare-fun tp!2186845 () Bool)

(assert (=> b!7525282 (= e!4485567 (and tp!2186846 tp!2186845))))

(assert (=> b!7525156 (= tp!2186744 e!4485567)))

(declare-fun b!7525281 () Bool)

(assert (=> b!7525281 (= e!4485567 tp_is_empty!49965)))

(declare-fun b!7525283 () Bool)

(declare-fun tp!2186844 () Bool)

(assert (=> b!7525283 (= e!4485567 tp!2186844)))

(assert (= (and b!7525156 ((_ is ElementMatch!19805) (reg!20134 (regOne!40123 expr!41)))) b!7525281))

(assert (= (and b!7525156 ((_ is Concat!28650) (reg!20134 (regOne!40123 expr!41)))) b!7525282))

(assert (= (and b!7525156 ((_ is Star!19805) (reg!20134 (regOne!40123 expr!41)))) b!7525283))

(assert (= (and b!7525156 ((_ is Union!19805) (reg!20134 (regOne!40123 expr!41)))) b!7525284))

(declare-fun b!7525288 () Bool)

(declare-fun e!4485568 () Bool)

(declare-fun tp!2186852 () Bool)

(declare-fun tp!2186853 () Bool)

(assert (=> b!7525288 (= e!4485568 (and tp!2186852 tp!2186853))))

(declare-fun b!7525286 () Bool)

(declare-fun tp!2186851 () Bool)

(declare-fun tp!2186850 () Bool)

(assert (=> b!7525286 (= e!4485568 (and tp!2186851 tp!2186850))))

(assert (=> b!7525161 (= tp!2186752 e!4485568)))

(declare-fun b!7525285 () Bool)

(assert (=> b!7525285 (= e!4485568 tp_is_empty!49965)))

(declare-fun b!7525287 () Bool)

(declare-fun tp!2186849 () Bool)

(assert (=> b!7525287 (= e!4485568 tp!2186849)))

(assert (= (and b!7525161 ((_ is ElementMatch!19805) (regOne!40123 (regTwo!40123 expr!41)))) b!7525285))

(assert (= (and b!7525161 ((_ is Concat!28650) (regOne!40123 (regTwo!40123 expr!41)))) b!7525286))

(assert (= (and b!7525161 ((_ is Star!19805) (regOne!40123 (regTwo!40123 expr!41)))) b!7525287))

(assert (= (and b!7525161 ((_ is Union!19805) (regOne!40123 (regTwo!40123 expr!41)))) b!7525288))

(declare-fun b!7525292 () Bool)

(declare-fun e!4485569 () Bool)

(declare-fun tp!2186857 () Bool)

(declare-fun tp!2186858 () Bool)

(assert (=> b!7525292 (= e!4485569 (and tp!2186857 tp!2186858))))

(declare-fun b!7525290 () Bool)

(declare-fun tp!2186856 () Bool)

(declare-fun tp!2186855 () Bool)

(assert (=> b!7525290 (= e!4485569 (and tp!2186856 tp!2186855))))

(assert (=> b!7525161 (= tp!2186753 e!4485569)))

(declare-fun b!7525289 () Bool)

(assert (=> b!7525289 (= e!4485569 tp_is_empty!49965)))

(declare-fun b!7525291 () Bool)

(declare-fun tp!2186854 () Bool)

(assert (=> b!7525291 (= e!4485569 tp!2186854)))

(assert (= (and b!7525161 ((_ is ElementMatch!19805) (regTwo!40123 (regTwo!40123 expr!41)))) b!7525289))

(assert (= (and b!7525161 ((_ is Concat!28650) (regTwo!40123 (regTwo!40123 expr!41)))) b!7525290))

(assert (= (and b!7525161 ((_ is Star!19805) (regTwo!40123 (regTwo!40123 expr!41)))) b!7525291))

(assert (= (and b!7525161 ((_ is Union!19805) (regTwo!40123 (regTwo!40123 expr!41)))) b!7525292))

(declare-fun b!7525296 () Bool)

(declare-fun e!4485570 () Bool)

(declare-fun tp!2186862 () Bool)

(declare-fun tp!2186863 () Bool)

(assert (=> b!7525296 (= e!4485570 (and tp!2186862 tp!2186863))))

(declare-fun b!7525294 () Bool)

(declare-fun tp!2186861 () Bool)

(declare-fun tp!2186860 () Bool)

(assert (=> b!7525294 (= e!4485570 (and tp!2186861 tp!2186860))))

(assert (=> b!7525157 (= tp!2186747 e!4485570)))

(declare-fun b!7525293 () Bool)

(assert (=> b!7525293 (= e!4485570 tp_is_empty!49965)))

(declare-fun b!7525295 () Bool)

(declare-fun tp!2186859 () Bool)

(assert (=> b!7525295 (= e!4485570 tp!2186859)))

(assert (= (and b!7525157 ((_ is ElementMatch!19805) (regOne!40123 (regOne!40123 expr!41)))) b!7525293))

(assert (= (and b!7525157 ((_ is Concat!28650) (regOne!40123 (regOne!40123 expr!41)))) b!7525294))

(assert (= (and b!7525157 ((_ is Star!19805) (regOne!40123 (regOne!40123 expr!41)))) b!7525295))

(assert (= (and b!7525157 ((_ is Union!19805) (regOne!40123 (regOne!40123 expr!41)))) b!7525296))

(declare-fun b!7525300 () Bool)

(declare-fun e!4485571 () Bool)

(declare-fun tp!2186867 () Bool)

(declare-fun tp!2186868 () Bool)

(assert (=> b!7525300 (= e!4485571 (and tp!2186867 tp!2186868))))

(declare-fun b!7525298 () Bool)

(declare-fun tp!2186866 () Bool)

(declare-fun tp!2186865 () Bool)

(assert (=> b!7525298 (= e!4485571 (and tp!2186866 tp!2186865))))

(assert (=> b!7525157 (= tp!2186748 e!4485571)))

(declare-fun b!7525297 () Bool)

(assert (=> b!7525297 (= e!4485571 tp_is_empty!49965)))

(declare-fun b!7525299 () Bool)

(declare-fun tp!2186864 () Bool)

(assert (=> b!7525299 (= e!4485571 tp!2186864)))

(assert (= (and b!7525157 ((_ is ElementMatch!19805) (regTwo!40123 (regOne!40123 expr!41)))) b!7525297))

(assert (= (and b!7525157 ((_ is Concat!28650) (regTwo!40123 (regOne!40123 expr!41)))) b!7525298))

(assert (= (and b!7525157 ((_ is Star!19805) (regTwo!40123 (regOne!40123 expr!41)))) b!7525299))

(assert (= (and b!7525157 ((_ is Union!19805) (regTwo!40123 (regOne!40123 expr!41)))) b!7525300))

(declare-fun b!7525304 () Bool)

(declare-fun e!4485572 () Bool)

(declare-fun tp!2186872 () Bool)

(declare-fun tp!2186873 () Bool)

(assert (=> b!7525304 (= e!4485572 (and tp!2186872 tp!2186873))))

(declare-fun b!7525302 () Bool)

(declare-fun tp!2186871 () Bool)

(declare-fun tp!2186870 () Bool)

(assert (=> b!7525302 (= e!4485572 (and tp!2186871 tp!2186870))))

(assert (=> b!7525153 (= tp!2186742 e!4485572)))

(declare-fun b!7525301 () Bool)

(assert (=> b!7525301 (= e!4485572 tp_is_empty!49965)))

(declare-fun b!7525303 () Bool)

(declare-fun tp!2186869 () Bool)

(assert (=> b!7525303 (= e!4485572 tp!2186869)))

(assert (= (and b!7525153 ((_ is ElementMatch!19805) (h!79014 (exprs!9031 context!49)))) b!7525301))

(assert (= (and b!7525153 ((_ is Concat!28650) (h!79014 (exprs!9031 context!49)))) b!7525302))

(assert (= (and b!7525153 ((_ is Star!19805) (h!79014 (exprs!9031 context!49)))) b!7525303))

(assert (= (and b!7525153 ((_ is Union!19805) (h!79014 (exprs!9031 context!49)))) b!7525304))

(declare-fun b!7525305 () Bool)

(declare-fun e!4485573 () Bool)

(declare-fun tp!2186874 () Bool)

(declare-fun tp!2186875 () Bool)

(assert (=> b!7525305 (= e!4485573 (and tp!2186874 tp!2186875))))

(assert (=> b!7525153 (= tp!2186743 e!4485573)))

(assert (= (and b!7525153 ((_ is Cons!72566) (t!387395 (exprs!9031 context!49)))) b!7525305))

(declare-fun b!7525309 () Bool)

(declare-fun e!4485574 () Bool)

(declare-fun tp!2186879 () Bool)

(declare-fun tp!2186880 () Bool)

(assert (=> b!7525309 (= e!4485574 (and tp!2186879 tp!2186880))))

(declare-fun b!7525307 () Bool)

(declare-fun tp!2186878 () Bool)

(declare-fun tp!2186877 () Bool)

(assert (=> b!7525307 (= e!4485574 (and tp!2186878 tp!2186877))))

(assert (=> b!7525146 (= tp!2186735 e!4485574)))

(declare-fun b!7525306 () Bool)

(assert (=> b!7525306 (= e!4485574 tp_is_empty!49965)))

(declare-fun b!7525308 () Bool)

(declare-fun tp!2186876 () Bool)

(assert (=> b!7525308 (= e!4485574 tp!2186876)))

(assert (= (and b!7525146 ((_ is ElementMatch!19805) (regOne!40122 (regTwo!40122 expr!41)))) b!7525306))

(assert (= (and b!7525146 ((_ is Concat!28650) (regOne!40122 (regTwo!40122 expr!41)))) b!7525307))

(assert (= (and b!7525146 ((_ is Star!19805) (regOne!40122 (regTwo!40122 expr!41)))) b!7525308))

(assert (= (and b!7525146 ((_ is Union!19805) (regOne!40122 (regTwo!40122 expr!41)))) b!7525309))

(declare-fun b!7525313 () Bool)

(declare-fun e!4485575 () Bool)

(declare-fun tp!2186884 () Bool)

(declare-fun tp!2186885 () Bool)

(assert (=> b!7525313 (= e!4485575 (and tp!2186884 tp!2186885))))

(declare-fun b!7525311 () Bool)

(declare-fun tp!2186883 () Bool)

(declare-fun tp!2186882 () Bool)

(assert (=> b!7525311 (= e!4485575 (and tp!2186883 tp!2186882))))

(assert (=> b!7525146 (= tp!2186734 e!4485575)))

(declare-fun b!7525310 () Bool)

(assert (=> b!7525310 (= e!4485575 tp_is_empty!49965)))

(declare-fun b!7525312 () Bool)

(declare-fun tp!2186881 () Bool)

(assert (=> b!7525312 (= e!4485575 tp!2186881)))

(assert (= (and b!7525146 ((_ is ElementMatch!19805) (regTwo!40122 (regTwo!40122 expr!41)))) b!7525310))

(assert (= (and b!7525146 ((_ is Concat!28650) (regTwo!40122 (regTwo!40122 expr!41)))) b!7525311))

(assert (= (and b!7525146 ((_ is Star!19805) (regTwo!40122 (regTwo!40122 expr!41)))) b!7525312))

(assert (= (and b!7525146 ((_ is Union!19805) (regTwo!40122 (regTwo!40122 expr!41)))) b!7525313))

(declare-fun b_lambda!288903 () Bool)

(assert (= b_lambda!288901 (or d!2309350 b_lambda!288903)))

(declare-fun bs!1939751 () Bool)

(declare-fun d!2309366 () Bool)

(assert (= bs!1939751 (and d!2309366 d!2309350)))

(assert (=> bs!1939751 (= (dynLambda!29896 lambda!466449 (h!79014 (exprs!9031 context!49))) (validRegex!10233 (h!79014 (exprs!9031 context!49))))))

(declare-fun m!8101290 () Bool)

(assert (=> bs!1939751 m!8101290))

(assert (=> b!7525177 d!2309366))

(declare-fun b_lambda!288905 () Bool)

(assert (= b_lambda!288899 (or d!2309320 b_lambda!288905)))

(declare-fun bs!1939752 () Bool)

(declare-fun d!2309368 () Bool)

(assert (= bs!1939752 (and d!2309368 d!2309320)))

(assert (=> bs!1939752 (= (dynLambda!29896 lambda!466448 (h!79014 (exprs!9031 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41))))) (validRegex!10233 (h!79014 (exprs!9031 (Context!17063 ($colon$colon!3363 (exprs!9031 context!49) expr!41))))))))

(declare-fun m!8101292 () Bool)

(assert (=> bs!1939752 m!8101292))

(assert (=> b!7525166 d!2309368))

(check-sat (not b!7525295) (not b!7525167) (not b!7525278) (not b!7525298) (not b!7525256) (not b!7525212) (not b!7525172) (not b!7525216) (not bm!690343) (not b!7525211) (not b!7525288) (not b!7525242) (not b!7525260) (not b!7525312) (not b!7525304) (not b!7525311) (not b!7525300) (not b!7525303) (not b!7525228) (not b!7525214) (not b!7525309) (not bm!690342) (not b!7525232) (not b!7525259) (not bs!1939752) (not b!7525276) (not b!7525305) (not b!7525264) (not b!7525275) (not b!7525262) (not b!7525235) (not b!7525218) (not b!7525215) (not b!7525238) (not b!7525284) (not b!7525287) (not b!7525178) (not b!7525268) (not b!7525252) (not b!7525239) (not b!7525267) (not b!7525283) (not b!7525230) (not b!7525231) (not b!7525247) (not b!7525254) tp_is_empty!49965 (not b!7525234) (not b!7525236) (not b!7525255) (not b!7525279) (not b!7525250) (not bm!690332) (not b!7525248) (not b!7525296) (not b_lambda!288905) (not b!7525183) (not bm!690335) (not b!7525219) (not b!7525243) (not b!7525290) (not b!7525210) (not bs!1939751) (not b!7525282) (not b!7525244) (not b!7525291) (not bm!690334) (not b!7525274) (not b!7525308) (not b!7525292) (not b_lambda!288903) (not b!7525246) (not b!7525266) (not b!7525226) (not b!7525251) (not bm!690337) (not b!7525280) (not b!7525294) (not b!7525286) (not b!7525299) (not b!7525223) (not b!7525270) (not b!7525222) (not b!7525240) (not d!2309364) (not b!7525313) (not b!7525271) (not b!7525263) (not b!7525224) (not b!7525302) (not b!7525227) (not b!7525258) (not b!7525272) (not b!7525307) (not b!7525220))
(check-sat)
