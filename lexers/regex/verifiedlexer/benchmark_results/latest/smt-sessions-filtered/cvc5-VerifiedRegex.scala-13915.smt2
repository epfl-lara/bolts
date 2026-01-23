; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739042 () Bool)

(assert start!739042)

(declare-fun b!7754042 () Bool)

(declare-fun res!3091597 () Bool)

(declare-fun e!4596435 () Bool)

(assert (=> b!7754042 (=> (not res!3091597) (not e!4596435))))

(declare-datatypes ((C!41574 0))(
  ( (C!41575 (val!31227 Int)) )
))
(declare-datatypes ((List!73469 0))(
  ( (Nil!73345) (Cons!73345 (h!79793 C!41574) (t!388204 List!73469)) )
))
(declare-fun s1!4391 () List!73469)

(assert (=> b!7754042 (= res!3091597 (not (is-Cons!73345 s1!4391)))))

(declare-fun b!7754043 () Bool)

(declare-fun e!4596437 () Bool)

(declare-fun tp_is_empty!51603 () Bool)

(assert (=> b!7754043 (= e!4596437 tp_is_empty!51603)))

(declare-fun b!7754044 () Bool)

(declare-fun tp!2275112 () Bool)

(declare-fun tp!2275108 () Bool)

(assert (=> b!7754044 (= e!4596437 (and tp!2275112 tp!2275108))))

(declare-fun res!3091596 () Bool)

(assert (=> start!739042 (=> (not res!3091596) (not e!4596435))))

(declare-datatypes ((Regex!20624 0))(
  ( (ElementMatch!20624 (c!1430177 C!41574)) (Concat!29469 (regOne!41760 Regex!20624) (regTwo!41760 Regex!20624)) (EmptyExpr!20624) (Star!20624 (reg!20953 Regex!20624)) (EmptyLang!20624) (Union!20624 (regOne!41761 Regex!20624) (regTwo!41761 Regex!20624)) )
))
(declare-fun lt!2669635 () Regex!20624)

(declare-fun validRegex!11042 (Regex!20624) Bool)

(assert (=> start!739042 (= res!3091596 (validRegex!11042 lt!2669635))))

(declare-fun r!25892 () Regex!20624)

(assert (=> start!739042 (= lt!2669635 (Star!20624 r!25892))))

(assert (=> start!739042 e!4596435))

(assert (=> start!739042 e!4596437))

(declare-fun e!4596434 () Bool)

(assert (=> start!739042 e!4596434))

(declare-fun e!4596436 () Bool)

(assert (=> start!739042 e!4596436))

(declare-fun b!7754045 () Bool)

(declare-fun res!3091595 () Bool)

(assert (=> b!7754045 (=> (not res!3091595) (not e!4596435))))

(declare-fun matchR!10114 (Regex!20624 List!73469) Bool)

(assert (=> b!7754045 (= res!3091595 (matchR!10114 r!25892 s1!4391))))

(declare-fun b!7754046 () Bool)

(declare-fun res!3091598 () Bool)

(assert (=> b!7754046 (=> (not res!3091598) (not e!4596435))))

(declare-fun s2!3963 () List!73469)

(assert (=> b!7754046 (= res!3091598 (matchR!10114 lt!2669635 s2!3963))))

(declare-fun b!7754047 () Bool)

(declare-fun tp!2275110 () Bool)

(declare-fun tp!2275109 () Bool)

(assert (=> b!7754047 (= e!4596437 (and tp!2275110 tp!2275109))))

(declare-fun b!7754048 () Bool)

(declare-fun tp!2275111 () Bool)

(assert (=> b!7754048 (= e!4596434 (and tp_is_empty!51603 tp!2275111))))

(declare-fun b!7754049 () Bool)

(declare-fun ++!17805 (List!73469 List!73469) List!73469)

(assert (=> b!7754049 (= e!4596435 (not (matchR!10114 lt!2669635 (++!17805 s1!4391 s2!3963))))))

(declare-fun b!7754050 () Bool)

(declare-fun tp!2275114 () Bool)

(assert (=> b!7754050 (= e!4596437 tp!2275114)))

(declare-fun b!7754051 () Bool)

(declare-fun tp!2275113 () Bool)

(assert (=> b!7754051 (= e!4596436 (and tp_is_empty!51603 tp!2275113))))

(assert (= (and start!739042 res!3091596) b!7754045))

(assert (= (and b!7754045 res!3091595) b!7754046))

(assert (= (and b!7754046 res!3091598) b!7754042))

(assert (= (and b!7754042 res!3091597) b!7754049))

(assert (= (and start!739042 (is-ElementMatch!20624 r!25892)) b!7754043))

(assert (= (and start!739042 (is-Concat!29469 r!25892)) b!7754047))

(assert (= (and start!739042 (is-Star!20624 r!25892)) b!7754050))

(assert (= (and start!739042 (is-Union!20624 r!25892)) b!7754044))

(assert (= (and start!739042 (is-Cons!73345 s1!4391)) b!7754048))

(assert (= (and start!739042 (is-Cons!73345 s2!3963)) b!7754051))

(declare-fun m!8218210 () Bool)

(assert (=> start!739042 m!8218210))

(declare-fun m!8218212 () Bool)

(assert (=> b!7754045 m!8218212))

(declare-fun m!8218214 () Bool)

(assert (=> b!7754046 m!8218214))

(declare-fun m!8218216 () Bool)

(assert (=> b!7754049 m!8218216))

(assert (=> b!7754049 m!8218216))

(declare-fun m!8218218 () Bool)

(assert (=> b!7754049 m!8218218))

(push 1)

(assert (not b!7754048))

(assert (not b!7754047))

(assert (not b!7754050))

(assert (not b!7754044))

(assert (not b!7754046))

(assert tp_is_empty!51603)

(assert (not start!739042))

(assert (not b!7754051))

(assert (not b!7754049))

(assert (not b!7754045))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7754110 () Bool)

(declare-fun e!4596465 () Bool)

(declare-fun head!15841 (List!73469) C!41574)

(assert (=> b!7754110 (= e!4596465 (= (head!15841 s1!4391) (c!1430177 r!25892)))))

(declare-fun b!7754111 () Bool)

(declare-fun e!4596468 () Bool)

(declare-fun e!4596466 () Bool)

(assert (=> b!7754111 (= e!4596468 e!4596466)))

(declare-fun res!3091627 () Bool)

(assert (=> b!7754111 (=> res!3091627 e!4596466)))

(declare-fun call!718825 () Bool)

(assert (=> b!7754111 (= res!3091627 call!718825)))

(declare-fun b!7754112 () Bool)

(declare-fun e!4596469 () Bool)

(declare-fun e!4596467 () Bool)

(assert (=> b!7754112 (= e!4596469 e!4596467)))

(declare-fun c!1430186 () Bool)

(assert (=> b!7754112 (= c!1430186 (is-EmptyLang!20624 r!25892))))

(declare-fun b!7754113 () Bool)

(declare-fun lt!2669641 () Bool)

(assert (=> b!7754113 (= e!4596467 (not lt!2669641))))

(declare-fun bm!718820 () Bool)

(declare-fun isEmpty!42032 (List!73469) Bool)

(assert (=> bm!718820 (= call!718825 (isEmpty!42032 s1!4391))))

(declare-fun b!7754114 () Bool)

(declare-fun e!4596464 () Bool)

(declare-fun nullable!9085 (Regex!20624) Bool)

(assert (=> b!7754114 (= e!4596464 (nullable!9085 r!25892))))

(declare-fun b!7754115 () Bool)

(declare-fun res!3091631 () Bool)

(declare-fun e!4596470 () Bool)

(assert (=> b!7754115 (=> res!3091631 e!4596470)))

(assert (=> b!7754115 (= res!3091631 e!4596465)))

(declare-fun res!3091630 () Bool)

(assert (=> b!7754115 (=> (not res!3091630) (not e!4596465))))

(assert (=> b!7754115 (= res!3091630 lt!2669641)))

(declare-fun b!7754116 () Bool)

(declare-fun res!3091633 () Bool)

(assert (=> b!7754116 (=> (not res!3091633) (not e!4596465))))

(assert (=> b!7754116 (= res!3091633 (not call!718825))))

(declare-fun b!7754117 () Bool)

(assert (=> b!7754117 (= e!4596469 (= lt!2669641 call!718825))))

(declare-fun b!7754118 () Bool)

(declare-fun res!3091628 () Bool)

(assert (=> b!7754118 (=> res!3091628 e!4596470)))

(assert (=> b!7754118 (= res!3091628 (not (is-ElementMatch!20624 r!25892)))))

(assert (=> b!7754118 (= e!4596467 e!4596470)))

(declare-fun d!2343212 () Bool)

(assert (=> d!2343212 e!4596469))

(declare-fun c!1430187 () Bool)

(assert (=> d!2343212 (= c!1430187 (is-EmptyExpr!20624 r!25892))))

(assert (=> d!2343212 (= lt!2669641 e!4596464)))

(declare-fun c!1430185 () Bool)

(assert (=> d!2343212 (= c!1430185 (isEmpty!42032 s1!4391))))

(assert (=> d!2343212 (validRegex!11042 r!25892)))

(assert (=> d!2343212 (= (matchR!10114 r!25892 s1!4391) lt!2669641)))

(declare-fun b!7754119 () Bool)

(declare-fun res!3091629 () Bool)

(assert (=> b!7754119 (=> res!3091629 e!4596466)))

(declare-fun tail!15381 (List!73469) List!73469)

(assert (=> b!7754119 (= res!3091629 (not (isEmpty!42032 (tail!15381 s1!4391))))))

(declare-fun b!7754120 () Bool)

(assert (=> b!7754120 (= e!4596470 e!4596468)))

(declare-fun res!3091634 () Bool)

(assert (=> b!7754120 (=> (not res!3091634) (not e!4596468))))

(assert (=> b!7754120 (= res!3091634 (not lt!2669641))))

(declare-fun b!7754121 () Bool)

(assert (=> b!7754121 (= e!4596466 (not (= (head!15841 s1!4391) (c!1430177 r!25892))))))

(declare-fun b!7754122 () Bool)

(declare-fun res!3091632 () Bool)

(assert (=> b!7754122 (=> (not res!3091632) (not e!4596465))))

(assert (=> b!7754122 (= res!3091632 (isEmpty!42032 (tail!15381 s1!4391)))))

(declare-fun b!7754123 () Bool)

(declare-fun derivativeStep!6045 (Regex!20624 C!41574) Regex!20624)

(assert (=> b!7754123 (= e!4596464 (matchR!10114 (derivativeStep!6045 r!25892 (head!15841 s1!4391)) (tail!15381 s1!4391)))))

(assert (= (and d!2343212 c!1430185) b!7754114))

(assert (= (and d!2343212 (not c!1430185)) b!7754123))

(assert (= (and d!2343212 c!1430187) b!7754117))

(assert (= (and d!2343212 (not c!1430187)) b!7754112))

(assert (= (and b!7754112 c!1430186) b!7754113))

(assert (= (and b!7754112 (not c!1430186)) b!7754118))

(assert (= (and b!7754118 (not res!3091628)) b!7754115))

(assert (= (and b!7754115 res!3091630) b!7754116))

(assert (= (and b!7754116 res!3091633) b!7754122))

(assert (= (and b!7754122 res!3091632) b!7754110))

(assert (= (and b!7754115 (not res!3091631)) b!7754120))

(assert (= (and b!7754120 res!3091634) b!7754111))

(assert (= (and b!7754111 (not res!3091627)) b!7754119))

(assert (= (and b!7754119 (not res!3091629)) b!7754121))

(assert (= (or b!7754117 b!7754111 b!7754116) bm!718820))

(declare-fun m!8218230 () Bool)

(assert (=> b!7754110 m!8218230))

(assert (=> b!7754123 m!8218230))

(assert (=> b!7754123 m!8218230))

(declare-fun m!8218232 () Bool)

(assert (=> b!7754123 m!8218232))

(declare-fun m!8218234 () Bool)

(assert (=> b!7754123 m!8218234))

(assert (=> b!7754123 m!8218232))

(assert (=> b!7754123 m!8218234))

(declare-fun m!8218236 () Bool)

(assert (=> b!7754123 m!8218236))

(declare-fun m!8218238 () Bool)

(assert (=> d!2343212 m!8218238))

(declare-fun m!8218240 () Bool)

(assert (=> d!2343212 m!8218240))

(assert (=> b!7754119 m!8218234))

(assert (=> b!7754119 m!8218234))

(declare-fun m!8218242 () Bool)

(assert (=> b!7754119 m!8218242))

(assert (=> b!7754121 m!8218230))

(assert (=> b!7754122 m!8218234))

(assert (=> b!7754122 m!8218234))

(assert (=> b!7754122 m!8218242))

(assert (=> bm!718820 m!8218238))

(declare-fun m!8218244 () Bool)

(assert (=> b!7754114 m!8218244))

(assert (=> b!7754045 d!2343212))

(declare-fun d!2343216 () Bool)

(declare-fun res!3091647 () Bool)

(declare-fun e!4596489 () Bool)

(assert (=> d!2343216 (=> res!3091647 e!4596489)))

(assert (=> d!2343216 (= res!3091647 (is-ElementMatch!20624 lt!2669635))))

(assert (=> d!2343216 (= (validRegex!11042 lt!2669635) e!4596489)))

(declare-fun b!7754142 () Bool)

(declare-fun e!4596486 () Bool)

(declare-fun e!4596487 () Bool)

(assert (=> b!7754142 (= e!4596486 e!4596487)))

(declare-fun res!3091648 () Bool)

(assert (=> b!7754142 (=> (not res!3091648) (not e!4596487))))

(declare-fun call!718832 () Bool)

(assert (=> b!7754142 (= res!3091648 call!718832)))

(declare-fun bm!718827 () Bool)

(declare-fun call!718834 () Bool)

(declare-fun c!1430193 () Bool)

(assert (=> bm!718827 (= call!718834 (validRegex!11042 (ite c!1430193 (regTwo!41761 lt!2669635) (regTwo!41760 lt!2669635))))))

(declare-fun b!7754143 () Bool)

(declare-fun e!4596485 () Bool)

(declare-fun e!4596488 () Bool)

(assert (=> b!7754143 (= e!4596485 e!4596488)))

(declare-fun res!3091649 () Bool)

(assert (=> b!7754143 (= res!3091649 (not (nullable!9085 (reg!20953 lt!2669635))))))

(assert (=> b!7754143 (=> (not res!3091649) (not e!4596488))))

(declare-fun b!7754144 () Bool)

(declare-fun res!3091645 () Bool)

(assert (=> b!7754144 (=> res!3091645 e!4596486)))

(assert (=> b!7754144 (= res!3091645 (not (is-Concat!29469 lt!2669635)))))

(declare-fun e!4596490 () Bool)

(assert (=> b!7754144 (= e!4596490 e!4596486)))

(declare-fun b!7754145 () Bool)

(assert (=> b!7754145 (= e!4596485 e!4596490)))

(assert (=> b!7754145 (= c!1430193 (is-Union!20624 lt!2669635))))

(declare-fun call!718833 () Bool)

(declare-fun c!1430192 () Bool)

(declare-fun bm!718828 () Bool)

(assert (=> bm!718828 (= call!718833 (validRegex!11042 (ite c!1430192 (reg!20953 lt!2669635) (ite c!1430193 (regOne!41761 lt!2669635) (regOne!41760 lt!2669635)))))))

(declare-fun b!7754146 () Bool)

(declare-fun e!4596491 () Bool)

(assert (=> b!7754146 (= e!4596491 call!718834)))

(declare-fun b!7754147 () Bool)

(declare-fun res!3091646 () Bool)

(assert (=> b!7754147 (=> (not res!3091646) (not e!4596491))))

(assert (=> b!7754147 (= res!3091646 call!718832)))

(assert (=> b!7754147 (= e!4596490 e!4596491)))

(declare-fun b!7754148 () Bool)

(assert (=> b!7754148 (= e!4596488 call!718833)))

(declare-fun b!7754149 () Bool)

(assert (=> b!7754149 (= e!4596487 call!718834)))

(declare-fun b!7754150 () Bool)

(assert (=> b!7754150 (= e!4596489 e!4596485)))

(assert (=> b!7754150 (= c!1430192 (is-Star!20624 lt!2669635))))

(declare-fun bm!718829 () Bool)

(assert (=> bm!718829 (= call!718832 call!718833)))

(assert (= (and d!2343216 (not res!3091647)) b!7754150))

(assert (= (and b!7754150 c!1430192) b!7754143))

(assert (= (and b!7754150 (not c!1430192)) b!7754145))

(assert (= (and b!7754143 res!3091649) b!7754148))

(assert (= (and b!7754145 c!1430193) b!7754147))

(assert (= (and b!7754145 (not c!1430193)) b!7754144))

(assert (= (and b!7754147 res!3091646) b!7754146))

(assert (= (and b!7754144 (not res!3091645)) b!7754142))

(assert (= (and b!7754142 res!3091648) b!7754149))

(assert (= (or b!7754147 b!7754142) bm!718829))

(assert (= (or b!7754146 b!7754149) bm!718827))

(assert (= (or b!7754148 bm!718829) bm!718828))

(declare-fun m!8218246 () Bool)

(assert (=> bm!718827 m!8218246))

(declare-fun m!8218248 () Bool)

(assert (=> b!7754143 m!8218248))

(declare-fun m!8218250 () Bool)

(assert (=> bm!718828 m!8218250))

(assert (=> start!739042 d!2343216))

(declare-fun b!7754151 () Bool)

(declare-fun e!4596493 () Bool)

(assert (=> b!7754151 (= e!4596493 (= (head!15841 s2!3963) (c!1430177 lt!2669635)))))

(declare-fun b!7754152 () Bool)

(declare-fun e!4596496 () Bool)

(declare-fun e!4596494 () Bool)

(assert (=> b!7754152 (= e!4596496 e!4596494)))

(declare-fun res!3091650 () Bool)

(assert (=> b!7754152 (=> res!3091650 e!4596494)))

(declare-fun call!718835 () Bool)

(assert (=> b!7754152 (= res!3091650 call!718835)))

(declare-fun b!7754153 () Bool)

(declare-fun e!4596497 () Bool)

(declare-fun e!4596495 () Bool)

(assert (=> b!7754153 (= e!4596497 e!4596495)))

(declare-fun c!1430195 () Bool)

(assert (=> b!7754153 (= c!1430195 (is-EmptyLang!20624 lt!2669635))))

(declare-fun b!7754154 () Bool)

(declare-fun lt!2669642 () Bool)

(assert (=> b!7754154 (= e!4596495 (not lt!2669642))))

(declare-fun bm!718830 () Bool)

(assert (=> bm!718830 (= call!718835 (isEmpty!42032 s2!3963))))

(declare-fun b!7754155 () Bool)

(declare-fun e!4596492 () Bool)

(assert (=> b!7754155 (= e!4596492 (nullable!9085 lt!2669635))))

(declare-fun b!7754156 () Bool)

(declare-fun res!3091654 () Bool)

(declare-fun e!4596498 () Bool)

(assert (=> b!7754156 (=> res!3091654 e!4596498)))

(assert (=> b!7754156 (= res!3091654 e!4596493)))

(declare-fun res!3091653 () Bool)

(assert (=> b!7754156 (=> (not res!3091653) (not e!4596493))))

(assert (=> b!7754156 (= res!3091653 lt!2669642)))

(declare-fun b!7754157 () Bool)

(declare-fun res!3091656 () Bool)

(assert (=> b!7754157 (=> (not res!3091656) (not e!4596493))))

(assert (=> b!7754157 (= res!3091656 (not call!718835))))

(declare-fun b!7754158 () Bool)

(assert (=> b!7754158 (= e!4596497 (= lt!2669642 call!718835))))

(declare-fun b!7754159 () Bool)

(declare-fun res!3091651 () Bool)

(assert (=> b!7754159 (=> res!3091651 e!4596498)))

(assert (=> b!7754159 (= res!3091651 (not (is-ElementMatch!20624 lt!2669635)))))

(assert (=> b!7754159 (= e!4596495 e!4596498)))

(declare-fun d!2343218 () Bool)

(assert (=> d!2343218 e!4596497))

(declare-fun c!1430196 () Bool)

(assert (=> d!2343218 (= c!1430196 (is-EmptyExpr!20624 lt!2669635))))

(assert (=> d!2343218 (= lt!2669642 e!4596492)))

(declare-fun c!1430194 () Bool)

(assert (=> d!2343218 (= c!1430194 (isEmpty!42032 s2!3963))))

(assert (=> d!2343218 (validRegex!11042 lt!2669635)))

(assert (=> d!2343218 (= (matchR!10114 lt!2669635 s2!3963) lt!2669642)))

(declare-fun b!7754160 () Bool)

(declare-fun res!3091652 () Bool)

(assert (=> b!7754160 (=> res!3091652 e!4596494)))

(assert (=> b!7754160 (= res!3091652 (not (isEmpty!42032 (tail!15381 s2!3963))))))

(declare-fun b!7754161 () Bool)

(assert (=> b!7754161 (= e!4596498 e!4596496)))

(declare-fun res!3091657 () Bool)

(assert (=> b!7754161 (=> (not res!3091657) (not e!4596496))))

(assert (=> b!7754161 (= res!3091657 (not lt!2669642))))

(declare-fun b!7754162 () Bool)

(assert (=> b!7754162 (= e!4596494 (not (= (head!15841 s2!3963) (c!1430177 lt!2669635))))))

(declare-fun b!7754163 () Bool)

(declare-fun res!3091655 () Bool)

(assert (=> b!7754163 (=> (not res!3091655) (not e!4596493))))

(assert (=> b!7754163 (= res!3091655 (isEmpty!42032 (tail!15381 s2!3963)))))

(declare-fun b!7754164 () Bool)

(assert (=> b!7754164 (= e!4596492 (matchR!10114 (derivativeStep!6045 lt!2669635 (head!15841 s2!3963)) (tail!15381 s2!3963)))))

(assert (= (and d!2343218 c!1430194) b!7754155))

(assert (= (and d!2343218 (not c!1430194)) b!7754164))

(assert (= (and d!2343218 c!1430196) b!7754158))

(assert (= (and d!2343218 (not c!1430196)) b!7754153))

(assert (= (and b!7754153 c!1430195) b!7754154))

(assert (= (and b!7754153 (not c!1430195)) b!7754159))

(assert (= (and b!7754159 (not res!3091651)) b!7754156))

(assert (= (and b!7754156 res!3091653) b!7754157))

(assert (= (and b!7754157 res!3091656) b!7754163))

(assert (= (and b!7754163 res!3091655) b!7754151))

(assert (= (and b!7754156 (not res!3091654)) b!7754161))

(assert (= (and b!7754161 res!3091657) b!7754152))

(assert (= (and b!7754152 (not res!3091650)) b!7754160))

(assert (= (and b!7754160 (not res!3091652)) b!7754162))

(assert (= (or b!7754158 b!7754152 b!7754157) bm!718830))

(declare-fun m!8218252 () Bool)

(assert (=> b!7754151 m!8218252))

(assert (=> b!7754164 m!8218252))

(assert (=> b!7754164 m!8218252))

(declare-fun m!8218254 () Bool)

(assert (=> b!7754164 m!8218254))

(declare-fun m!8218256 () Bool)

(assert (=> b!7754164 m!8218256))

(assert (=> b!7754164 m!8218254))

(assert (=> b!7754164 m!8218256))

(declare-fun m!8218258 () Bool)

(assert (=> b!7754164 m!8218258))

(declare-fun m!8218260 () Bool)

(assert (=> d!2343218 m!8218260))

(assert (=> d!2343218 m!8218210))

(assert (=> b!7754160 m!8218256))

(assert (=> b!7754160 m!8218256))

(declare-fun m!8218262 () Bool)

(assert (=> b!7754160 m!8218262))

(assert (=> b!7754162 m!8218252))

(assert (=> b!7754163 m!8218256))

(assert (=> b!7754163 m!8218256))

(assert (=> b!7754163 m!8218262))

(assert (=> bm!718830 m!8218260))

(declare-fun m!8218264 () Bool)

(assert (=> b!7754155 m!8218264))

(assert (=> b!7754046 d!2343218))

(declare-fun e!4596502 () Bool)

(declare-fun b!7754169 () Bool)

(assert (=> b!7754169 (= e!4596502 (= (head!15841 (++!17805 s1!4391 s2!3963)) (c!1430177 lt!2669635)))))

(declare-fun b!7754170 () Bool)

(declare-fun e!4596505 () Bool)

(declare-fun e!4596503 () Bool)

(assert (=> b!7754170 (= e!4596505 e!4596503)))

(declare-fun res!3091658 () Bool)

(assert (=> b!7754170 (=> res!3091658 e!4596503)))

(declare-fun call!718836 () Bool)

(assert (=> b!7754170 (= res!3091658 call!718836)))

(declare-fun b!7754171 () Bool)

(declare-fun e!4596506 () Bool)

(declare-fun e!4596504 () Bool)

(assert (=> b!7754171 (= e!4596506 e!4596504)))

(declare-fun c!1430200 () Bool)

(assert (=> b!7754171 (= c!1430200 (is-EmptyLang!20624 lt!2669635))))

(declare-fun b!7754172 () Bool)

(declare-fun lt!2669645 () Bool)

(assert (=> b!7754172 (= e!4596504 (not lt!2669645))))

(declare-fun bm!718831 () Bool)

(assert (=> bm!718831 (= call!718836 (isEmpty!42032 (++!17805 s1!4391 s2!3963)))))

(declare-fun b!7754173 () Bool)

(declare-fun e!4596501 () Bool)

(assert (=> b!7754173 (= e!4596501 (nullable!9085 lt!2669635))))

(declare-fun b!7754174 () Bool)

(declare-fun res!3091662 () Bool)

(declare-fun e!4596507 () Bool)

(assert (=> b!7754174 (=> res!3091662 e!4596507)))

(assert (=> b!7754174 (= res!3091662 e!4596502)))

(declare-fun res!3091661 () Bool)

(assert (=> b!7754174 (=> (not res!3091661) (not e!4596502))))

(assert (=> b!7754174 (= res!3091661 lt!2669645)))

(declare-fun b!7754175 () Bool)

(declare-fun res!3091664 () Bool)

(assert (=> b!7754175 (=> (not res!3091664) (not e!4596502))))

(assert (=> b!7754175 (= res!3091664 (not call!718836))))

(declare-fun b!7754176 () Bool)

(assert (=> b!7754176 (= e!4596506 (= lt!2669645 call!718836))))

(declare-fun b!7754177 () Bool)

(declare-fun res!3091659 () Bool)

(assert (=> b!7754177 (=> res!3091659 e!4596507)))

(assert (=> b!7754177 (= res!3091659 (not (is-ElementMatch!20624 lt!2669635)))))

(assert (=> b!7754177 (= e!4596504 e!4596507)))

(declare-fun d!2343220 () Bool)

(assert (=> d!2343220 e!4596506))

(declare-fun c!1430201 () Bool)

(assert (=> d!2343220 (= c!1430201 (is-EmptyExpr!20624 lt!2669635))))

(assert (=> d!2343220 (= lt!2669645 e!4596501)))

(declare-fun c!1430199 () Bool)

(assert (=> d!2343220 (= c!1430199 (isEmpty!42032 (++!17805 s1!4391 s2!3963)))))

(assert (=> d!2343220 (validRegex!11042 lt!2669635)))

(assert (=> d!2343220 (= (matchR!10114 lt!2669635 (++!17805 s1!4391 s2!3963)) lt!2669645)))

(declare-fun b!7754178 () Bool)

(declare-fun res!3091660 () Bool)

(assert (=> b!7754178 (=> res!3091660 e!4596503)))

(assert (=> b!7754178 (= res!3091660 (not (isEmpty!42032 (tail!15381 (++!17805 s1!4391 s2!3963)))))))

(declare-fun b!7754179 () Bool)

(assert (=> b!7754179 (= e!4596507 e!4596505)))

(declare-fun res!3091665 () Bool)

(assert (=> b!7754179 (=> (not res!3091665) (not e!4596505))))

(assert (=> b!7754179 (= res!3091665 (not lt!2669645))))

(declare-fun b!7754180 () Bool)

(assert (=> b!7754180 (= e!4596503 (not (= (head!15841 (++!17805 s1!4391 s2!3963)) (c!1430177 lt!2669635))))))

(declare-fun b!7754181 () Bool)

(declare-fun res!3091663 () Bool)

(assert (=> b!7754181 (=> (not res!3091663) (not e!4596502))))

(assert (=> b!7754181 (= res!3091663 (isEmpty!42032 (tail!15381 (++!17805 s1!4391 s2!3963))))))

(declare-fun b!7754182 () Bool)

(assert (=> b!7754182 (= e!4596501 (matchR!10114 (derivativeStep!6045 lt!2669635 (head!15841 (++!17805 s1!4391 s2!3963))) (tail!15381 (++!17805 s1!4391 s2!3963))))))

(assert (= (and d!2343220 c!1430199) b!7754173))

(assert (= (and d!2343220 (not c!1430199)) b!7754182))

(assert (= (and d!2343220 c!1430201) b!7754176))

(assert (= (and d!2343220 (not c!1430201)) b!7754171))

(assert (= (and b!7754171 c!1430200) b!7754172))

(assert (= (and b!7754171 (not c!1430200)) b!7754177))

(assert (= (and b!7754177 (not res!3091659)) b!7754174))

(assert (= (and b!7754174 res!3091661) b!7754175))

(assert (= (and b!7754175 res!3091664) b!7754181))

(assert (= (and b!7754181 res!3091663) b!7754169))

(assert (= (and b!7754174 (not res!3091662)) b!7754179))

(assert (= (and b!7754179 res!3091665) b!7754170))

(assert (= (and b!7754170 (not res!3091658)) b!7754178))

(assert (= (and b!7754178 (not res!3091660)) b!7754180))

(assert (= (or b!7754176 b!7754170 b!7754175) bm!718831))

(assert (=> b!7754169 m!8218216))

(declare-fun m!8218266 () Bool)

(assert (=> b!7754169 m!8218266))

(assert (=> b!7754182 m!8218216))

(assert (=> b!7754182 m!8218266))

(assert (=> b!7754182 m!8218266))

(declare-fun m!8218268 () Bool)

(assert (=> b!7754182 m!8218268))

(assert (=> b!7754182 m!8218216))

(declare-fun m!8218270 () Bool)

(assert (=> b!7754182 m!8218270))

(assert (=> b!7754182 m!8218268))

(assert (=> b!7754182 m!8218270))

(declare-fun m!8218272 () Bool)

(assert (=> b!7754182 m!8218272))

(assert (=> d!2343220 m!8218216))

(declare-fun m!8218274 () Bool)

(assert (=> d!2343220 m!8218274))

(assert (=> d!2343220 m!8218210))

(assert (=> b!7754178 m!8218216))

(assert (=> b!7754178 m!8218270))

(assert (=> b!7754178 m!8218270))

(declare-fun m!8218276 () Bool)

(assert (=> b!7754178 m!8218276))

(assert (=> b!7754180 m!8218216))

(assert (=> b!7754180 m!8218266))

(assert (=> b!7754181 m!8218216))

(assert (=> b!7754181 m!8218270))

(assert (=> b!7754181 m!8218270))

(assert (=> b!7754181 m!8218276))

(assert (=> bm!718831 m!8218216))

(assert (=> bm!718831 m!8218274))

(assert (=> b!7754173 m!8218264))

(assert (=> b!7754049 d!2343220))

(declare-fun b!7754215 () Bool)

(declare-fun e!4596525 () List!73469)

(assert (=> b!7754215 (= e!4596525 s2!3963)))

(declare-fun d!2343222 () Bool)

(declare-fun e!4596524 () Bool)

(assert (=> d!2343222 e!4596524))

(declare-fun res!3091686 () Bool)

(assert (=> d!2343222 (=> (not res!3091686) (not e!4596524))))

(declare-fun lt!2669648 () List!73469)

(declare-fun content!15554 (List!73469) (Set C!41574))

(assert (=> d!2343222 (= res!3091686 (= (content!15554 lt!2669648) (set.union (content!15554 s1!4391) (content!15554 s2!3963))))))

(assert (=> d!2343222 (= lt!2669648 e!4596525)))

(declare-fun c!1430208 () Bool)

(assert (=> d!2343222 (= c!1430208 (is-Nil!73345 s1!4391))))

(assert (=> d!2343222 (= (++!17805 s1!4391 s2!3963) lt!2669648)))

(declare-fun b!7754218 () Bool)

(assert (=> b!7754218 (= e!4596524 (or (not (= s2!3963 Nil!73345)) (= lt!2669648 s1!4391)))))

(declare-fun b!7754217 () Bool)

(declare-fun res!3091687 () Bool)

(assert (=> b!7754217 (=> (not res!3091687) (not e!4596524))))

(declare-fun size!42657 (List!73469) Int)

(assert (=> b!7754217 (= res!3091687 (= (size!42657 lt!2669648) (+ (size!42657 s1!4391) (size!42657 s2!3963))))))

(declare-fun b!7754216 () Bool)

(assert (=> b!7754216 (= e!4596525 (Cons!73345 (h!79793 s1!4391) (++!17805 (t!388204 s1!4391) s2!3963)))))

(assert (= (and d!2343222 c!1430208) b!7754215))

(assert (= (and d!2343222 (not c!1430208)) b!7754216))

(assert (= (and d!2343222 res!3091686) b!7754217))

(assert (= (and b!7754217 res!3091687) b!7754218))

(declare-fun m!8218278 () Bool)

(assert (=> d!2343222 m!8218278))

(declare-fun m!8218280 () Bool)

(assert (=> d!2343222 m!8218280))

(declare-fun m!8218282 () Bool)

(assert (=> d!2343222 m!8218282))

(declare-fun m!8218284 () Bool)

(assert (=> b!7754217 m!8218284))

(declare-fun m!8218286 () Bool)

(assert (=> b!7754217 m!8218286))

(declare-fun m!8218288 () Bool)

(assert (=> b!7754217 m!8218288))

(declare-fun m!8218290 () Bool)

(assert (=> b!7754216 m!8218290))

(assert (=> b!7754049 d!2343222))

(declare-fun b!7754223 () Bool)

(declare-fun e!4596528 () Bool)

(declare-fun tp!2275138 () Bool)

(assert (=> b!7754223 (= e!4596528 (and tp_is_empty!51603 tp!2275138))))

(assert (=> b!7754051 (= tp!2275113 e!4596528)))

(assert (= (and b!7754051 (is-Cons!73345 (t!388204 s2!3963))) b!7754223))

(declare-fun b!7754237 () Bool)

(declare-fun e!4596531 () Bool)

(declare-fun tp!2275149 () Bool)

(declare-fun tp!2275153 () Bool)

(assert (=> b!7754237 (= e!4596531 (and tp!2275149 tp!2275153))))

(declare-fun b!7754235 () Bool)

(declare-fun tp!2275152 () Bool)

(declare-fun tp!2275150 () Bool)

(assert (=> b!7754235 (= e!4596531 (and tp!2275152 tp!2275150))))

(assert (=> b!7754044 (= tp!2275112 e!4596531)))

(declare-fun b!7754234 () Bool)

(assert (=> b!7754234 (= e!4596531 tp_is_empty!51603)))

(declare-fun b!7754236 () Bool)

(declare-fun tp!2275151 () Bool)

(assert (=> b!7754236 (= e!4596531 tp!2275151)))

(assert (= (and b!7754044 (is-ElementMatch!20624 (regOne!41761 r!25892))) b!7754234))

(assert (= (and b!7754044 (is-Concat!29469 (regOne!41761 r!25892))) b!7754235))

(assert (= (and b!7754044 (is-Star!20624 (regOne!41761 r!25892))) b!7754236))

(assert (= (and b!7754044 (is-Union!20624 (regOne!41761 r!25892))) b!7754237))

(declare-fun b!7754241 () Bool)

(declare-fun e!4596532 () Bool)

(declare-fun tp!2275154 () Bool)

(declare-fun tp!2275158 () Bool)

(assert (=> b!7754241 (= e!4596532 (and tp!2275154 tp!2275158))))

(declare-fun b!7754239 () Bool)

(declare-fun tp!2275157 () Bool)

(declare-fun tp!2275155 () Bool)

(assert (=> b!7754239 (= e!4596532 (and tp!2275157 tp!2275155))))

(assert (=> b!7754044 (= tp!2275108 e!4596532)))

(declare-fun b!7754238 () Bool)

(assert (=> b!7754238 (= e!4596532 tp_is_empty!51603)))

(declare-fun b!7754240 () Bool)

(declare-fun tp!2275156 () Bool)

(assert (=> b!7754240 (= e!4596532 tp!2275156)))

(assert (= (and b!7754044 (is-ElementMatch!20624 (regTwo!41761 r!25892))) b!7754238))

(assert (= (and b!7754044 (is-Concat!29469 (regTwo!41761 r!25892))) b!7754239))

(assert (= (and b!7754044 (is-Star!20624 (regTwo!41761 r!25892))) b!7754240))

(assert (= (and b!7754044 (is-Union!20624 (regTwo!41761 r!25892))) b!7754241))

(declare-fun b!7754245 () Bool)

(declare-fun e!4596533 () Bool)

(declare-fun tp!2275159 () Bool)

(declare-fun tp!2275163 () Bool)

(assert (=> b!7754245 (= e!4596533 (and tp!2275159 tp!2275163))))

(declare-fun b!7754243 () Bool)

(declare-fun tp!2275162 () Bool)

(declare-fun tp!2275160 () Bool)

(assert (=> b!7754243 (= e!4596533 (and tp!2275162 tp!2275160))))

(assert (=> b!7754050 (= tp!2275114 e!4596533)))

(declare-fun b!7754242 () Bool)

(assert (=> b!7754242 (= e!4596533 tp_is_empty!51603)))

(declare-fun b!7754244 () Bool)

(declare-fun tp!2275161 () Bool)

(assert (=> b!7754244 (= e!4596533 tp!2275161)))

(assert (= (and b!7754050 (is-ElementMatch!20624 (reg!20953 r!25892))) b!7754242))

(assert (= (and b!7754050 (is-Concat!29469 (reg!20953 r!25892))) b!7754243))

(assert (= (and b!7754050 (is-Star!20624 (reg!20953 r!25892))) b!7754244))

(assert (= (and b!7754050 (is-Union!20624 (reg!20953 r!25892))) b!7754245))

(declare-fun b!7754246 () Bool)

(declare-fun e!4596534 () Bool)

(declare-fun tp!2275164 () Bool)

(assert (=> b!7754246 (= e!4596534 (and tp_is_empty!51603 tp!2275164))))

(assert (=> b!7754048 (= tp!2275111 e!4596534)))

(assert (= (and b!7754048 (is-Cons!73345 (t!388204 s1!4391))) b!7754246))

(declare-fun b!7754250 () Bool)

(declare-fun e!4596535 () Bool)

(declare-fun tp!2275165 () Bool)

(declare-fun tp!2275169 () Bool)

(assert (=> b!7754250 (= e!4596535 (and tp!2275165 tp!2275169))))

(declare-fun b!7754248 () Bool)

(declare-fun tp!2275168 () Bool)

(declare-fun tp!2275166 () Bool)

(assert (=> b!7754248 (= e!4596535 (and tp!2275168 tp!2275166))))

(assert (=> b!7754047 (= tp!2275110 e!4596535)))

(declare-fun b!7754247 () Bool)

(assert (=> b!7754247 (= e!4596535 tp_is_empty!51603)))

(declare-fun b!7754249 () Bool)

(declare-fun tp!2275167 () Bool)

(assert (=> b!7754249 (= e!4596535 tp!2275167)))

(assert (= (and b!7754047 (is-ElementMatch!20624 (regOne!41760 r!25892))) b!7754247))

(assert (= (and b!7754047 (is-Concat!29469 (regOne!41760 r!25892))) b!7754248))

(assert (= (and b!7754047 (is-Star!20624 (regOne!41760 r!25892))) b!7754249))

(assert (= (and b!7754047 (is-Union!20624 (regOne!41760 r!25892))) b!7754250))

(declare-fun b!7754254 () Bool)

(declare-fun e!4596536 () Bool)

(declare-fun tp!2275170 () Bool)

(declare-fun tp!2275174 () Bool)

(assert (=> b!7754254 (= e!4596536 (and tp!2275170 tp!2275174))))

(declare-fun b!7754252 () Bool)

(declare-fun tp!2275173 () Bool)

(declare-fun tp!2275171 () Bool)

(assert (=> b!7754252 (= e!4596536 (and tp!2275173 tp!2275171))))

(assert (=> b!7754047 (= tp!2275109 e!4596536)))

(declare-fun b!7754251 () Bool)

(assert (=> b!7754251 (= e!4596536 tp_is_empty!51603)))

(declare-fun b!7754253 () Bool)

(declare-fun tp!2275172 () Bool)

(assert (=> b!7754253 (= e!4596536 tp!2275172)))

(assert (= (and b!7754047 (is-ElementMatch!20624 (regTwo!41760 r!25892))) b!7754251))

(assert (= (and b!7754047 (is-Concat!29469 (regTwo!41760 r!25892))) b!7754252))

(assert (= (and b!7754047 (is-Star!20624 (regTwo!41760 r!25892))) b!7754253))

(assert (= (and b!7754047 (is-Union!20624 (regTwo!41760 r!25892))) b!7754254))

(push 1)

(assert (not b!7754239))

(assert (not bm!718831))

(assert (not bm!718827))

(assert (not b!7754235))

(assert (not b!7754245))

(assert (not b!7754246))

(assert (not b!7754110))

(assert (not bm!718830))

(assert (not b!7754163))

(assert (not b!7754241))

(assert (not d!2343212))

(assert (not bm!718828))

(assert (not b!7754237))

(assert (not b!7754254))

(assert (not b!7754240))

(assert (not b!7754173))

(assert (not d!2343220))

(assert (not b!7754164))

(assert (not b!7754162))

(assert (not b!7754250))

(assert (not b!7754143))

(assert (not b!7754123))

(assert (not d!2343218))

(assert (not b!7754216))

(assert (not b!7754155))

(assert (not b!7754244))

(assert (not b!7754181))

(assert (not b!7754151))

(assert (not b!7754178))

(assert (not b!7754249))

(assert (not b!7754236))

(assert (not b!7754160))

(assert (not b!7754252))

(assert (not b!7754217))

(assert (not b!7754182))

(assert (not b!7754180))

(assert tp_is_empty!51603)

(assert (not b!7754114))

(assert (not b!7754122))

(assert (not b!7754248))

(assert (not b!7754223))

(assert (not b!7754119))

(assert (not b!7754169))

(assert (not b!7754121))

(assert (not b!7754243))

(assert (not bm!718820))

(assert (not d!2343222))

(assert (not b!7754253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

