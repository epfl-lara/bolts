; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734830 () Bool)

(assert start!734830)

(declare-fun b!7631141 () Bool)

(assert (=> b!7631141 true))

(assert (=> b!7631141 true))

(declare-fun b!7631132 () Bool)

(declare-fun e!4536793 () Bool)

(declare-fun tp_is_empty!51119 () Bool)

(declare-fun tp!2227888 () Bool)

(assert (=> b!7631132 (= e!4536793 (and tp_is_empty!51119 tp!2227888))))

(declare-fun b!7631133 () Bool)

(declare-fun e!4536794 () Bool)

(declare-datatypes ((C!41090 0))(
  ( (C!41091 (val!30985 Int)) )
))
(declare-datatypes ((List!73233 0))(
  ( (Nil!73109) (Cons!73109 (h!79557 C!41090) (t!387968 List!73233)) )
))
(declare-fun s!9605 () List!73233)

(declare-fun ++!17664 (List!73233 List!73233) List!73233)

(assert (=> b!7631133 (= e!4536794 (= (++!17664 Nil!73109 s!9605) s!9605))))

(declare-fun b!7631134 () Bool)

(declare-fun e!4536792 () Bool)

(declare-fun tp!2227887 () Bool)

(assert (=> b!7631134 (= e!4536792 tp!2227887)))

(declare-fun b!7631135 () Bool)

(declare-fun res!3056078 () Bool)

(assert (=> b!7631135 (=> res!3056078 e!4536794)))

(declare-datatypes ((Regex!20382 0))(
  ( (ElementMatch!20382 (c!1405911 C!41090)) (Concat!29227 (regOne!41276 Regex!20382) (regTwo!41276 Regex!20382)) (EmptyExpr!20382) (Star!20382 (reg!20711 Regex!20382)) (EmptyLang!20382) (Union!20382 (regOne!41277 Regex!20382) (regTwo!41277 Regex!20382)) )
))
(declare-fun r!14126 () Regex!20382)

(declare-fun validRegex!10800 (Regex!20382) Bool)

(assert (=> b!7631135 (= res!3056078 (not (validRegex!10800 (regTwo!41276 r!14126))))))

(declare-fun b!7631137 () Bool)

(declare-fun res!3056076 () Bool)

(assert (=> b!7631137 (=> res!3056076 e!4536794)))

(assert (=> b!7631137 (= res!3056076 (not (validRegex!10800 (regOne!41276 r!14126))))))

(declare-fun b!7631138 () Bool)

(declare-fun tp!2227890 () Bool)

(declare-fun tp!2227886 () Bool)

(assert (=> b!7631138 (= e!4536792 (and tp!2227890 tp!2227886))))

(declare-fun b!7631139 () Bool)

(assert (=> b!7631139 (= e!4536792 tp_is_empty!51119)))

(declare-fun b!7631140 () Bool)

(declare-fun res!3056075 () Bool)

(declare-fun e!4536795 () Bool)

(assert (=> b!7631140 (=> (not res!3056075) (not e!4536795))))

(assert (=> b!7631140 (= res!3056075 (and (not (is-EmptyExpr!20382 r!14126)) (not (is-EmptyLang!20382 r!14126)) (not (is-ElementMatch!20382 r!14126)) (not (is-Union!20382 r!14126)) (not (is-Star!20382 r!14126))))))

(assert (=> b!7631141 (= e!4536795 (not e!4536794))))

(declare-fun res!3056079 () Bool)

(assert (=> b!7631141 (=> res!3056079 e!4536794)))

(declare-fun matchR!9885 (Regex!20382 List!73233) Bool)

(assert (=> b!7631141 (= res!3056079 (matchR!9885 r!14126 s!9605))))

(declare-fun lambda!469096 () Int)

(declare-datatypes ((tuple2!69322 0))(
  ( (tuple2!69323 (_1!37964 List!73233) (_2!37964 List!73233)) )
))
(declare-datatypes ((Option!17455 0))(
  ( (None!17454) (Some!17454 (v!54589 tuple2!69322)) )
))
(declare-fun isDefined!14071 (Option!17455) Bool)

(declare-fun findConcatSeparation!3485 (Regex!20382 Regex!20382 List!73233 List!73233 List!73233) Option!17455)

(declare-fun Exists!4536 (Int) Bool)

(assert (=> b!7631141 (= (isDefined!14071 (findConcatSeparation!3485 (regOne!41276 r!14126) (regTwo!41276 r!14126) Nil!73109 s!9605 s!9605)) (Exists!4536 lambda!469096))))

(declare-datatypes ((Unit!167692 0))(
  ( (Unit!167693) )
))
(declare-fun lt!2658767 () Unit!167692)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3243 (Regex!20382 Regex!20382 List!73233) Unit!167692)

(assert (=> b!7631141 (= lt!2658767 (lemmaFindConcatSeparationEquivalentToExists!3243 (regOne!41276 r!14126) (regTwo!41276 r!14126) s!9605))))

(declare-fun res!3056077 () Bool)

(assert (=> start!734830 (=> (not res!3056077) (not e!4536795))))

(assert (=> start!734830 (= res!3056077 (validRegex!10800 r!14126))))

(assert (=> start!734830 e!4536795))

(assert (=> start!734830 e!4536792))

(assert (=> start!734830 e!4536793))

(declare-fun b!7631136 () Bool)

(declare-fun tp!2227889 () Bool)

(declare-fun tp!2227891 () Bool)

(assert (=> b!7631136 (= e!4536792 (and tp!2227889 tp!2227891))))

(assert (= (and start!734830 res!3056077) b!7631140))

(assert (= (and b!7631140 res!3056075) b!7631141))

(assert (= (and b!7631141 (not res!3056079)) b!7631137))

(assert (= (and b!7631137 (not res!3056076)) b!7631135))

(assert (= (and b!7631135 (not res!3056078)) b!7631133))

(assert (= (and start!734830 (is-ElementMatch!20382 r!14126)) b!7631139))

(assert (= (and start!734830 (is-Concat!29227 r!14126)) b!7631136))

(assert (= (and start!734830 (is-Star!20382 r!14126)) b!7631134))

(assert (= (and start!734830 (is-Union!20382 r!14126)) b!7631138))

(assert (= (and start!734830 (is-Cons!73109 s!9605)) b!7631132))

(declare-fun m!8158042 () Bool)

(assert (=> b!7631133 m!8158042))

(declare-fun m!8158044 () Bool)

(assert (=> b!7631137 m!8158044))

(declare-fun m!8158046 () Bool)

(assert (=> b!7631141 m!8158046))

(declare-fun m!8158048 () Bool)

(assert (=> b!7631141 m!8158048))

(declare-fun m!8158050 () Bool)

(assert (=> b!7631141 m!8158050))

(declare-fun m!8158052 () Bool)

(assert (=> b!7631141 m!8158052))

(assert (=> b!7631141 m!8158050))

(declare-fun m!8158054 () Bool)

(assert (=> b!7631141 m!8158054))

(declare-fun m!8158056 () Bool)

(assert (=> start!734830 m!8158056))

(declare-fun m!8158058 () Bool)

(assert (=> b!7631135 m!8158058))

(push 1)

(assert (not b!7631138))

(assert (not start!734830))

(assert (not b!7631132))

(assert tp_is_empty!51119)

(assert (not b!7631134))

(assert (not b!7631136))

(assert (not b!7631133))

(assert (not b!7631137))

(assert (not b!7631135))

(assert (not b!7631141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7631194 () Bool)

(declare-fun res!3056104 () Bool)

(declare-fun e!4536815 () Bool)

(assert (=> b!7631194 (=> (not res!3056104) (not e!4536815))))

(declare-fun lt!2658773 () List!73233)

(declare-fun size!42562 (List!73233) Int)

(assert (=> b!7631194 (= res!3056104 (= (size!42562 lt!2658773) (+ (size!42562 Nil!73109) (size!42562 s!9605))))))

(declare-fun b!7631195 () Bool)

(assert (=> b!7631195 (= e!4536815 (or (not (= s!9605 Nil!73109)) (= lt!2658773 Nil!73109)))))

(declare-fun b!7631192 () Bool)

(declare-fun e!4536814 () List!73233)

(assert (=> b!7631192 (= e!4536814 s!9605)))

(declare-fun d!2324183 () Bool)

(assert (=> d!2324183 e!4536815))

(declare-fun res!3056103 () Bool)

(assert (=> d!2324183 (=> (not res!3056103) (not e!4536815))))

(declare-fun content!15469 (List!73233) (Set C!41090))

(assert (=> d!2324183 (= res!3056103 (= (content!15469 lt!2658773) (set.union (content!15469 Nil!73109) (content!15469 s!9605))))))

(assert (=> d!2324183 (= lt!2658773 e!4536814)))

(declare-fun c!1405915 () Bool)

(assert (=> d!2324183 (= c!1405915 (is-Nil!73109 Nil!73109))))

(assert (=> d!2324183 (= (++!17664 Nil!73109 s!9605) lt!2658773)))

(declare-fun b!7631193 () Bool)

(assert (=> b!7631193 (= e!4536814 (Cons!73109 (h!79557 Nil!73109) (++!17664 (t!387968 Nil!73109) s!9605)))))

(assert (= (and d!2324183 c!1405915) b!7631192))

(assert (= (and d!2324183 (not c!1405915)) b!7631193))

(assert (= (and d!2324183 res!3056103) b!7631194))

(assert (= (and b!7631194 res!3056104) b!7631195))

(declare-fun m!8158078 () Bool)

(assert (=> b!7631194 m!8158078))

(declare-fun m!8158080 () Bool)

(assert (=> b!7631194 m!8158080))

(declare-fun m!8158082 () Bool)

(assert (=> b!7631194 m!8158082))

(declare-fun m!8158084 () Bool)

(assert (=> d!2324183 m!8158084))

(declare-fun m!8158086 () Bool)

(assert (=> d!2324183 m!8158086))

(declare-fun m!8158088 () Bool)

(assert (=> d!2324183 m!8158088))

(declare-fun m!8158090 () Bool)

(assert (=> b!7631193 m!8158090))

(assert (=> b!7631133 d!2324183))

(declare-fun b!7631232 () Bool)

(declare-fun res!3056126 () Bool)

(declare-fun e!4536847 () Bool)

(assert (=> b!7631232 (=> res!3056126 e!4536847)))

(assert (=> b!7631232 (= res!3056126 (not (is-Concat!29227 (regOne!41276 r!14126))))))

(declare-fun e!4536845 () Bool)

(assert (=> b!7631232 (= e!4536845 e!4536847)))

(declare-fun b!7631233 () Bool)

(declare-fun e!4536846 () Bool)

(assert (=> b!7631233 (= e!4536846 e!4536845)))

(declare-fun c!1405925 () Bool)

(assert (=> b!7631233 (= c!1405925 (is-Union!20382 (regOne!41276 r!14126)))))

(declare-fun d!2324187 () Bool)

(declare-fun res!3056127 () Bool)

(declare-fun e!4536850 () Bool)

(assert (=> d!2324187 (=> res!3056127 e!4536850)))

(assert (=> d!2324187 (= res!3056127 (is-ElementMatch!20382 (regOne!41276 r!14126)))))

(assert (=> d!2324187 (= (validRegex!10800 (regOne!41276 r!14126)) e!4536850)))

(declare-fun b!7631234 () Bool)

(declare-fun e!4536848 () Bool)

(declare-fun call!700579 () Bool)

(assert (=> b!7631234 (= e!4536848 call!700579)))

(declare-fun b!7631235 () Bool)

(declare-fun e!4536849 () Bool)

(declare-fun call!700578 () Bool)

(assert (=> b!7631235 (= e!4536849 call!700578)))

(declare-fun b!7631236 () Bool)

(assert (=> b!7631236 (= e!4536847 e!4536848)))

(declare-fun res!3056129 () Bool)

(assert (=> b!7631236 (=> (not res!3056129) (not e!4536848))))

(declare-fun call!700577 () Bool)

(assert (=> b!7631236 (= res!3056129 call!700577)))

(declare-fun b!7631237 () Bool)

(assert (=> b!7631237 (= e!4536846 e!4536849)))

(declare-fun res!3056125 () Bool)

(declare-fun nullable!8913 (Regex!20382) Bool)

(assert (=> b!7631237 (= res!3056125 (not (nullable!8913 (reg!20711 (regOne!41276 r!14126)))))))

(assert (=> b!7631237 (=> (not res!3056125) (not e!4536849))))

(declare-fun bm!700572 () Bool)

(declare-fun c!1405924 () Bool)

(assert (=> bm!700572 (= call!700578 (validRegex!10800 (ite c!1405924 (reg!20711 (regOne!41276 r!14126)) (ite c!1405925 (regOne!41277 (regOne!41276 r!14126)) (regOne!41276 (regOne!41276 r!14126))))))))

(declare-fun bm!700573 () Bool)

(assert (=> bm!700573 (= call!700577 call!700578)))

(declare-fun b!7631238 () Bool)

(assert (=> b!7631238 (= e!4536850 e!4536846)))

(assert (=> b!7631238 (= c!1405924 (is-Star!20382 (regOne!41276 r!14126)))))

(declare-fun b!7631239 () Bool)

(declare-fun res!3056128 () Bool)

(declare-fun e!4536844 () Bool)

(assert (=> b!7631239 (=> (not res!3056128) (not e!4536844))))

(assert (=> b!7631239 (= res!3056128 call!700577)))

(assert (=> b!7631239 (= e!4536845 e!4536844)))

(declare-fun bm!700574 () Bool)

(assert (=> bm!700574 (= call!700579 (validRegex!10800 (ite c!1405925 (regTwo!41277 (regOne!41276 r!14126)) (regTwo!41276 (regOne!41276 r!14126)))))))

(declare-fun b!7631240 () Bool)

(assert (=> b!7631240 (= e!4536844 call!700579)))

(assert (= (and d!2324187 (not res!3056127)) b!7631238))

(assert (= (and b!7631238 c!1405924) b!7631237))

(assert (= (and b!7631238 (not c!1405924)) b!7631233))

(assert (= (and b!7631237 res!3056125) b!7631235))

(assert (= (and b!7631233 c!1405925) b!7631239))

(assert (= (and b!7631233 (not c!1405925)) b!7631232))

(assert (= (and b!7631239 res!3056128) b!7631240))

(assert (= (and b!7631232 (not res!3056126)) b!7631236))

(assert (= (and b!7631236 res!3056129) b!7631234))

(assert (= (or b!7631239 b!7631236) bm!700573))

(assert (= (or b!7631240 b!7631234) bm!700574))

(assert (= (or b!7631235 bm!700573) bm!700572))

(declare-fun m!8158092 () Bool)

(assert (=> b!7631237 m!8158092))

(declare-fun m!8158094 () Bool)

(assert (=> bm!700572 m!8158094))

(declare-fun m!8158096 () Bool)

(assert (=> bm!700574 m!8158096))

(assert (=> b!7631137 d!2324187))

(declare-fun b!7631278 () Bool)

(declare-fun res!3056152 () Bool)

(declare-fun e!4536874 () Bool)

(assert (=> b!7631278 (=> res!3056152 e!4536874)))

(declare-fun e!4536872 () Bool)

(assert (=> b!7631278 (= res!3056152 e!4536872)))

(declare-fun res!3056158 () Bool)

(assert (=> b!7631278 (=> (not res!3056158) (not e!4536872))))

(declare-fun lt!2658776 () Bool)

(assert (=> b!7631278 (= res!3056158 lt!2658776)))

(declare-fun b!7631279 () Bool)

(declare-fun e!4536875 () Bool)

(assert (=> b!7631279 (= e!4536875 (not lt!2658776))))

(declare-fun b!7631280 () Bool)

(declare-fun res!3056153 () Bool)

(assert (=> b!7631280 (=> (not res!3056153) (not e!4536872))))

(declare-fun isEmpty!41741 (List!73233) Bool)

(declare-fun tail!15226 (List!73233) List!73233)

(assert (=> b!7631280 (= res!3056153 (isEmpty!41741 (tail!15226 s!9605)))))

(declare-fun b!7631281 () Bool)

(declare-fun e!4536873 () Bool)

(declare-fun e!4536876 () Bool)

(assert (=> b!7631281 (= e!4536873 e!4536876)))

(declare-fun res!3056156 () Bool)

(assert (=> b!7631281 (=> res!3056156 e!4536876)))

(declare-fun call!700585 () Bool)

(assert (=> b!7631281 (= res!3056156 call!700585)))

(declare-fun b!7631282 () Bool)

(declare-fun res!3056151 () Bool)

(assert (=> b!7631282 (=> res!3056151 e!4536876)))

(assert (=> b!7631282 (= res!3056151 (not (isEmpty!41741 (tail!15226 s!9605))))))

(declare-fun b!7631283 () Bool)

(declare-fun head!15686 (List!73233) C!41090)

(assert (=> b!7631283 (= e!4536872 (= (head!15686 s!9605) (c!1405911 r!14126)))))

(declare-fun b!7631284 () Bool)

(declare-fun res!3056155 () Bool)

(assert (=> b!7631284 (=> res!3056155 e!4536874)))

(assert (=> b!7631284 (= res!3056155 (not (is-ElementMatch!20382 r!14126)))))

(assert (=> b!7631284 (= e!4536875 e!4536874)))

(declare-fun b!7631285 () Bool)

(declare-fun e!4536878 () Bool)

(declare-fun derivativeStep!5886 (Regex!20382 C!41090) Regex!20382)

(assert (=> b!7631285 (= e!4536878 (matchR!9885 (derivativeStep!5886 r!14126 (head!15686 s!9605)) (tail!15226 s!9605)))))

(declare-fun b!7631286 () Bool)

(declare-fun e!4536877 () Bool)

(assert (=> b!7631286 (= e!4536877 e!4536875)))

(declare-fun c!1405935 () Bool)

(assert (=> b!7631286 (= c!1405935 (is-EmptyLang!20382 r!14126))))

(declare-fun bm!700580 () Bool)

(assert (=> bm!700580 (= call!700585 (isEmpty!41741 s!9605))))

(declare-fun d!2324189 () Bool)

(assert (=> d!2324189 e!4536877))

(declare-fun c!1405936 () Bool)

(assert (=> d!2324189 (= c!1405936 (is-EmptyExpr!20382 r!14126))))

(assert (=> d!2324189 (= lt!2658776 e!4536878)))

(declare-fun c!1405934 () Bool)

(assert (=> d!2324189 (= c!1405934 (isEmpty!41741 s!9605))))

(assert (=> d!2324189 (validRegex!10800 r!14126)))

(assert (=> d!2324189 (= (matchR!9885 r!14126 s!9605) lt!2658776)))

(declare-fun b!7631287 () Bool)

(assert (=> b!7631287 (= e!4536878 (nullable!8913 r!14126))))

(declare-fun b!7631288 () Bool)

(assert (=> b!7631288 (= e!4536877 (= lt!2658776 call!700585))))

(declare-fun b!7631289 () Bool)

(assert (=> b!7631289 (= e!4536874 e!4536873)))

(declare-fun res!3056154 () Bool)

(assert (=> b!7631289 (=> (not res!3056154) (not e!4536873))))

(assert (=> b!7631289 (= res!3056154 (not lt!2658776))))

(declare-fun b!7631290 () Bool)

(assert (=> b!7631290 (= e!4536876 (not (= (head!15686 s!9605) (c!1405911 r!14126))))))

(declare-fun b!7631291 () Bool)

(declare-fun res!3056157 () Bool)

(assert (=> b!7631291 (=> (not res!3056157) (not e!4536872))))

(assert (=> b!7631291 (= res!3056157 (not call!700585))))

(assert (= (and d!2324189 c!1405934) b!7631287))

(assert (= (and d!2324189 (not c!1405934)) b!7631285))

(assert (= (and d!2324189 c!1405936) b!7631288))

(assert (= (and d!2324189 (not c!1405936)) b!7631286))

(assert (= (and b!7631286 c!1405935) b!7631279))

(assert (= (and b!7631286 (not c!1405935)) b!7631284))

(assert (= (and b!7631284 (not res!3056155)) b!7631278))

(assert (= (and b!7631278 res!3056158) b!7631291))

(assert (= (and b!7631291 res!3056157) b!7631280))

(assert (= (and b!7631280 res!3056153) b!7631283))

(assert (= (and b!7631278 (not res!3056152)) b!7631289))

(assert (= (and b!7631289 res!3056154) b!7631281))

(assert (= (and b!7631281 (not res!3056156)) b!7631282))

(assert (= (and b!7631282 (not res!3056151)) b!7631290))

(assert (= (or b!7631288 b!7631281 b!7631291) bm!700580))

(declare-fun m!8158104 () Bool)

(assert (=> bm!700580 m!8158104))

(declare-fun m!8158106 () Bool)

(assert (=> b!7631283 m!8158106))

(declare-fun m!8158108 () Bool)

(assert (=> b!7631280 m!8158108))

(assert (=> b!7631280 m!8158108))

(declare-fun m!8158110 () Bool)

(assert (=> b!7631280 m!8158110))

(assert (=> b!7631285 m!8158106))

(assert (=> b!7631285 m!8158106))

(declare-fun m!8158112 () Bool)

(assert (=> b!7631285 m!8158112))

(assert (=> b!7631285 m!8158108))

(assert (=> b!7631285 m!8158112))

(assert (=> b!7631285 m!8158108))

(declare-fun m!8158114 () Bool)

(assert (=> b!7631285 m!8158114))

(assert (=> b!7631290 m!8158106))

(declare-fun m!8158116 () Bool)

(assert (=> b!7631287 m!8158116))

(assert (=> b!7631282 m!8158108))

(assert (=> b!7631282 m!8158108))

(assert (=> b!7631282 m!8158110))

(assert (=> d!2324189 m!8158104))

(assert (=> d!2324189 m!8158056))

(assert (=> b!7631141 d!2324189))

(declare-fun bs!1944041 () Bool)

(declare-fun d!2324193 () Bool)

(assert (= bs!1944041 (and d!2324193 b!7631141)))

(declare-fun lambda!469102 () Int)

(assert (=> bs!1944041 (= lambda!469102 lambda!469096)))

(assert (=> d!2324193 true))

(assert (=> d!2324193 true))

(assert (=> d!2324193 true))

(assert (=> d!2324193 (= (isDefined!14071 (findConcatSeparation!3485 (regOne!41276 r!14126) (regTwo!41276 r!14126) Nil!73109 s!9605 s!9605)) (Exists!4536 lambda!469102))))

(declare-fun lt!2658782 () Unit!167692)

(declare-fun choose!58911 (Regex!20382 Regex!20382 List!73233) Unit!167692)

(assert (=> d!2324193 (= lt!2658782 (choose!58911 (regOne!41276 r!14126) (regTwo!41276 r!14126) s!9605))))

(assert (=> d!2324193 (validRegex!10800 (regOne!41276 r!14126))))

(assert (=> d!2324193 (= (lemmaFindConcatSeparationEquivalentToExists!3243 (regOne!41276 r!14126) (regTwo!41276 r!14126) s!9605) lt!2658782)))

(declare-fun bs!1944042 () Bool)

(assert (= bs!1944042 d!2324193))

(assert (=> bs!1944042 m!8158044))

(assert (=> bs!1944042 m!8158050))

(declare-fun m!8158138 () Bool)

(assert (=> bs!1944042 m!8158138))

(declare-fun m!8158140 () Bool)

(assert (=> bs!1944042 m!8158140))

(assert (=> bs!1944042 m!8158050))

(assert (=> bs!1944042 m!8158054))

(assert (=> b!7631141 d!2324193))

(declare-fun d!2324199 () Bool)

(declare-fun choose!58912 (Int) Bool)

(assert (=> d!2324199 (= (Exists!4536 lambda!469096) (choose!58912 lambda!469096))))

(declare-fun bs!1944043 () Bool)

(assert (= bs!1944043 d!2324199))

(declare-fun m!8158144 () Bool)

(assert (=> bs!1944043 m!8158144))

(assert (=> b!7631141 d!2324199))

(declare-fun d!2324201 () Bool)

(declare-fun isEmpty!41742 (Option!17455) Bool)

(assert (=> d!2324201 (= (isDefined!14071 (findConcatSeparation!3485 (regOne!41276 r!14126) (regTwo!41276 r!14126) Nil!73109 s!9605 s!9605)) (not (isEmpty!41742 (findConcatSeparation!3485 (regOne!41276 r!14126) (regTwo!41276 r!14126) Nil!73109 s!9605 s!9605))))))

(declare-fun bs!1944044 () Bool)

(assert (= bs!1944044 d!2324201))

(assert (=> bs!1944044 m!8158050))

(declare-fun m!8158150 () Bool)

(assert (=> bs!1944044 m!8158150))

(assert (=> b!7631141 d!2324201))

(declare-fun b!7631372 () Bool)

(declare-fun e!4536929 () Bool)

(assert (=> b!7631372 (= e!4536929 (matchR!9885 (regTwo!41276 r!14126) s!9605))))

(declare-fun b!7631373 () Bool)

(declare-fun e!4536928 () Option!17455)

(assert (=> b!7631373 (= e!4536928 None!17454)))

(declare-fun b!7631374 () Bool)

(declare-fun e!4536925 () Bool)

(declare-fun lt!2658792 () Option!17455)

(assert (=> b!7631374 (= e!4536925 (not (isDefined!14071 lt!2658792)))))

(declare-fun b!7631375 () Bool)

(declare-fun e!4536927 () Option!17455)

(assert (=> b!7631375 (= e!4536927 (Some!17454 (tuple2!69323 Nil!73109 s!9605)))))

(declare-fun b!7631376 () Bool)

(assert (=> b!7631376 (= e!4536927 e!4536928)))

(declare-fun c!1405955 () Bool)

(assert (=> b!7631376 (= c!1405955 (is-Nil!73109 s!9605))))

(declare-fun b!7631377 () Bool)

(declare-fun res!3056205 () Bool)

(declare-fun e!4536926 () Bool)

(assert (=> b!7631377 (=> (not res!3056205) (not e!4536926))))

(declare-fun get!25841 (Option!17455) tuple2!69322)

(assert (=> b!7631377 (= res!3056205 (matchR!9885 (regOne!41276 r!14126) (_1!37964 (get!25841 lt!2658792))))))

(declare-fun b!7631378 () Bool)

(declare-fun lt!2658793 () Unit!167692)

(declare-fun lt!2658791 () Unit!167692)

(assert (=> b!7631378 (= lt!2658793 lt!2658791)))

(assert (=> b!7631378 (= (++!17664 (++!17664 Nil!73109 (Cons!73109 (h!79557 s!9605) Nil!73109)) (t!387968 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3242 (List!73233 C!41090 List!73233 List!73233) Unit!167692)

(assert (=> b!7631378 (= lt!2658791 (lemmaMoveElementToOtherListKeepsConcatEq!3242 Nil!73109 (h!79557 s!9605) (t!387968 s!9605) s!9605))))

(assert (=> b!7631378 (= e!4536928 (findConcatSeparation!3485 (regOne!41276 r!14126) (regTwo!41276 r!14126) (++!17664 Nil!73109 (Cons!73109 (h!79557 s!9605) Nil!73109)) (t!387968 s!9605) s!9605))))

(declare-fun d!2324205 () Bool)

(assert (=> d!2324205 e!4536925))

(declare-fun res!3056209 () Bool)

(assert (=> d!2324205 (=> res!3056209 e!4536925)))

(assert (=> d!2324205 (= res!3056209 e!4536926)))

(declare-fun res!3056207 () Bool)

(assert (=> d!2324205 (=> (not res!3056207) (not e!4536926))))

(assert (=> d!2324205 (= res!3056207 (isDefined!14071 lt!2658792))))

(assert (=> d!2324205 (= lt!2658792 e!4536927)))

(declare-fun c!1405954 () Bool)

(assert (=> d!2324205 (= c!1405954 e!4536929)))

(declare-fun res!3056206 () Bool)

(assert (=> d!2324205 (=> (not res!3056206) (not e!4536929))))

(assert (=> d!2324205 (= res!3056206 (matchR!9885 (regOne!41276 r!14126) Nil!73109))))

(assert (=> d!2324205 (validRegex!10800 (regOne!41276 r!14126))))

(assert (=> d!2324205 (= (findConcatSeparation!3485 (regOne!41276 r!14126) (regTwo!41276 r!14126) Nil!73109 s!9605 s!9605) lt!2658792)))

(declare-fun b!7631379 () Bool)

(assert (=> b!7631379 (= e!4536926 (= (++!17664 (_1!37964 (get!25841 lt!2658792)) (_2!37964 (get!25841 lt!2658792))) s!9605))))

(declare-fun b!7631380 () Bool)

(declare-fun res!3056208 () Bool)

(assert (=> b!7631380 (=> (not res!3056208) (not e!4536926))))

(assert (=> b!7631380 (= res!3056208 (matchR!9885 (regTwo!41276 r!14126) (_2!37964 (get!25841 lt!2658792))))))

(assert (= (and d!2324205 res!3056206) b!7631372))

(assert (= (and d!2324205 c!1405954) b!7631375))

(assert (= (and d!2324205 (not c!1405954)) b!7631376))

(assert (= (and b!7631376 c!1405955) b!7631373))

(assert (= (and b!7631376 (not c!1405955)) b!7631378))

(assert (= (and d!2324205 res!3056207) b!7631377))

(assert (= (and b!7631377 res!3056205) b!7631380))

(assert (= (and b!7631380 res!3056208) b!7631379))

(assert (= (and d!2324205 (not res!3056209)) b!7631374))

(declare-fun m!8158152 () Bool)

(assert (=> b!7631380 m!8158152))

(declare-fun m!8158154 () Bool)

(assert (=> b!7631380 m!8158154))

(declare-fun m!8158156 () Bool)

(assert (=> b!7631378 m!8158156))

(assert (=> b!7631378 m!8158156))

(declare-fun m!8158158 () Bool)

(assert (=> b!7631378 m!8158158))

(declare-fun m!8158160 () Bool)

(assert (=> b!7631378 m!8158160))

(assert (=> b!7631378 m!8158156))

(declare-fun m!8158162 () Bool)

(assert (=> b!7631378 m!8158162))

(declare-fun m!8158164 () Bool)

(assert (=> d!2324205 m!8158164))

(declare-fun m!8158166 () Bool)

(assert (=> d!2324205 m!8158166))

(assert (=> d!2324205 m!8158044))

(assert (=> b!7631379 m!8158152))

(declare-fun m!8158168 () Bool)

(assert (=> b!7631379 m!8158168))

(assert (=> b!7631374 m!8158164))

(declare-fun m!8158170 () Bool)

(assert (=> b!7631372 m!8158170))

(assert (=> b!7631377 m!8158152))

(declare-fun m!8158172 () Bool)

(assert (=> b!7631377 m!8158172))

(assert (=> b!7631141 d!2324205))

(declare-fun b!7631381 () Bool)

(declare-fun res!3056211 () Bool)

(declare-fun e!4536933 () Bool)

(assert (=> b!7631381 (=> res!3056211 e!4536933)))

(assert (=> b!7631381 (= res!3056211 (not (is-Concat!29227 r!14126)))))

(declare-fun e!4536931 () Bool)

(assert (=> b!7631381 (= e!4536931 e!4536933)))

(declare-fun b!7631382 () Bool)

(declare-fun e!4536932 () Bool)

(assert (=> b!7631382 (= e!4536932 e!4536931)))

(declare-fun c!1405957 () Bool)

(assert (=> b!7631382 (= c!1405957 (is-Union!20382 r!14126))))

(declare-fun d!2324207 () Bool)

(declare-fun res!3056212 () Bool)

(declare-fun e!4536936 () Bool)

(assert (=> d!2324207 (=> res!3056212 e!4536936)))

(assert (=> d!2324207 (= res!3056212 (is-ElementMatch!20382 r!14126))))

(assert (=> d!2324207 (= (validRegex!10800 r!14126) e!4536936)))

(declare-fun b!7631383 () Bool)

(declare-fun e!4536934 () Bool)

(declare-fun call!700596 () Bool)

(assert (=> b!7631383 (= e!4536934 call!700596)))

(declare-fun b!7631384 () Bool)

(declare-fun e!4536935 () Bool)

(declare-fun call!700595 () Bool)

(assert (=> b!7631384 (= e!4536935 call!700595)))

(declare-fun b!7631385 () Bool)

(assert (=> b!7631385 (= e!4536933 e!4536934)))

(declare-fun res!3056214 () Bool)

(assert (=> b!7631385 (=> (not res!3056214) (not e!4536934))))

(declare-fun call!700594 () Bool)

(assert (=> b!7631385 (= res!3056214 call!700594)))

(declare-fun b!7631386 () Bool)

(assert (=> b!7631386 (= e!4536932 e!4536935)))

(declare-fun res!3056210 () Bool)

(assert (=> b!7631386 (= res!3056210 (not (nullable!8913 (reg!20711 r!14126))))))

(assert (=> b!7631386 (=> (not res!3056210) (not e!4536935))))

(declare-fun bm!700589 () Bool)

(declare-fun c!1405956 () Bool)

(assert (=> bm!700589 (= call!700595 (validRegex!10800 (ite c!1405956 (reg!20711 r!14126) (ite c!1405957 (regOne!41277 r!14126) (regOne!41276 r!14126)))))))

(declare-fun bm!700590 () Bool)

(assert (=> bm!700590 (= call!700594 call!700595)))

(declare-fun b!7631387 () Bool)

(assert (=> b!7631387 (= e!4536936 e!4536932)))

(assert (=> b!7631387 (= c!1405956 (is-Star!20382 r!14126))))

(declare-fun b!7631388 () Bool)

(declare-fun res!3056213 () Bool)

(declare-fun e!4536930 () Bool)

(assert (=> b!7631388 (=> (not res!3056213) (not e!4536930))))

(assert (=> b!7631388 (= res!3056213 call!700594)))

(assert (=> b!7631388 (= e!4536931 e!4536930)))

(declare-fun bm!700591 () Bool)

(assert (=> bm!700591 (= call!700596 (validRegex!10800 (ite c!1405957 (regTwo!41277 r!14126) (regTwo!41276 r!14126))))))

(declare-fun b!7631389 () Bool)

(assert (=> b!7631389 (= e!4536930 call!700596)))

(assert (= (and d!2324207 (not res!3056212)) b!7631387))

(assert (= (and b!7631387 c!1405956) b!7631386))

(assert (= (and b!7631387 (not c!1405956)) b!7631382))

(assert (= (and b!7631386 res!3056210) b!7631384))

(assert (= (and b!7631382 c!1405957) b!7631388))

(assert (= (and b!7631382 (not c!1405957)) b!7631381))

(assert (= (and b!7631388 res!3056213) b!7631389))

(assert (= (and b!7631381 (not res!3056211)) b!7631385))

(assert (= (and b!7631385 res!3056214) b!7631383))

(assert (= (or b!7631388 b!7631385) bm!700590))

(assert (= (or b!7631389 b!7631383) bm!700591))

(assert (= (or b!7631384 bm!700590) bm!700589))

(declare-fun m!8158174 () Bool)

(assert (=> b!7631386 m!8158174))

(declare-fun m!8158176 () Bool)

(assert (=> bm!700589 m!8158176))

(declare-fun m!8158178 () Bool)

(assert (=> bm!700591 m!8158178))

(assert (=> start!734830 d!2324207))

(declare-fun b!7631390 () Bool)

(declare-fun res!3056216 () Bool)

(declare-fun e!4536940 () Bool)

(assert (=> b!7631390 (=> res!3056216 e!4536940)))

(assert (=> b!7631390 (= res!3056216 (not (is-Concat!29227 (regTwo!41276 r!14126))))))

(declare-fun e!4536938 () Bool)

(assert (=> b!7631390 (= e!4536938 e!4536940)))

(declare-fun b!7631391 () Bool)

(declare-fun e!4536939 () Bool)

(assert (=> b!7631391 (= e!4536939 e!4536938)))

(declare-fun c!1405959 () Bool)

(assert (=> b!7631391 (= c!1405959 (is-Union!20382 (regTwo!41276 r!14126)))))

(declare-fun d!2324209 () Bool)

(declare-fun res!3056217 () Bool)

(declare-fun e!4536943 () Bool)

(assert (=> d!2324209 (=> res!3056217 e!4536943)))

(assert (=> d!2324209 (= res!3056217 (is-ElementMatch!20382 (regTwo!41276 r!14126)))))

(assert (=> d!2324209 (= (validRegex!10800 (regTwo!41276 r!14126)) e!4536943)))

(declare-fun b!7631392 () Bool)

(declare-fun e!4536941 () Bool)

(declare-fun call!700599 () Bool)

(assert (=> b!7631392 (= e!4536941 call!700599)))

(declare-fun b!7631393 () Bool)

(declare-fun e!4536942 () Bool)

(declare-fun call!700598 () Bool)

(assert (=> b!7631393 (= e!4536942 call!700598)))

(declare-fun b!7631394 () Bool)

(assert (=> b!7631394 (= e!4536940 e!4536941)))

(declare-fun res!3056219 () Bool)

(assert (=> b!7631394 (=> (not res!3056219) (not e!4536941))))

(declare-fun call!700597 () Bool)

(assert (=> b!7631394 (= res!3056219 call!700597)))

(declare-fun b!7631395 () Bool)

(assert (=> b!7631395 (= e!4536939 e!4536942)))

(declare-fun res!3056215 () Bool)

(assert (=> b!7631395 (= res!3056215 (not (nullable!8913 (reg!20711 (regTwo!41276 r!14126)))))))

(assert (=> b!7631395 (=> (not res!3056215) (not e!4536942))))

(declare-fun c!1405958 () Bool)

(declare-fun bm!700592 () Bool)

(assert (=> bm!700592 (= call!700598 (validRegex!10800 (ite c!1405958 (reg!20711 (regTwo!41276 r!14126)) (ite c!1405959 (regOne!41277 (regTwo!41276 r!14126)) (regOne!41276 (regTwo!41276 r!14126))))))))

(declare-fun bm!700593 () Bool)

(assert (=> bm!700593 (= call!700597 call!700598)))

(declare-fun b!7631396 () Bool)

(assert (=> b!7631396 (= e!4536943 e!4536939)))

(assert (=> b!7631396 (= c!1405958 (is-Star!20382 (regTwo!41276 r!14126)))))

(declare-fun b!7631397 () Bool)

(declare-fun res!3056218 () Bool)

(declare-fun e!4536937 () Bool)

(assert (=> b!7631397 (=> (not res!3056218) (not e!4536937))))

(assert (=> b!7631397 (= res!3056218 call!700597)))

(assert (=> b!7631397 (= e!4536938 e!4536937)))

(declare-fun bm!700594 () Bool)

(assert (=> bm!700594 (= call!700599 (validRegex!10800 (ite c!1405959 (regTwo!41277 (regTwo!41276 r!14126)) (regTwo!41276 (regTwo!41276 r!14126)))))))

(declare-fun b!7631398 () Bool)

(assert (=> b!7631398 (= e!4536937 call!700599)))

(assert (= (and d!2324209 (not res!3056217)) b!7631396))

(assert (= (and b!7631396 c!1405958) b!7631395))

(assert (= (and b!7631396 (not c!1405958)) b!7631391))

(assert (= (and b!7631395 res!3056215) b!7631393))

(assert (= (and b!7631391 c!1405959) b!7631397))

(assert (= (and b!7631391 (not c!1405959)) b!7631390))

(assert (= (and b!7631397 res!3056218) b!7631398))

(assert (= (and b!7631390 (not res!3056216)) b!7631394))

(assert (= (and b!7631394 res!3056219) b!7631392))

(assert (= (or b!7631397 b!7631394) bm!700593))

(assert (= (or b!7631398 b!7631392) bm!700594))

(assert (= (or b!7631393 bm!700593) bm!700592))

(declare-fun m!8158180 () Bool)

(assert (=> b!7631395 m!8158180))

(declare-fun m!8158182 () Bool)

(assert (=> bm!700592 m!8158182))

(declare-fun m!8158184 () Bool)

(assert (=> bm!700594 m!8158184))

(assert (=> b!7631135 d!2324209))

(declare-fun b!7631409 () Bool)

(declare-fun e!4536946 () Bool)

(assert (=> b!7631409 (= e!4536946 tp_is_empty!51119)))

(declare-fun b!7631410 () Bool)

(declare-fun tp!2227920 () Bool)

(declare-fun tp!2227924 () Bool)

(assert (=> b!7631410 (= e!4536946 (and tp!2227920 tp!2227924))))

(assert (=> b!7631138 (= tp!2227890 e!4536946)))

(declare-fun b!7631412 () Bool)

(declare-fun tp!2227922 () Bool)

(declare-fun tp!2227921 () Bool)

(assert (=> b!7631412 (= e!4536946 (and tp!2227922 tp!2227921))))

(declare-fun b!7631411 () Bool)

(declare-fun tp!2227923 () Bool)

(assert (=> b!7631411 (= e!4536946 tp!2227923)))

(assert (= (and b!7631138 (is-ElementMatch!20382 (regOne!41277 r!14126))) b!7631409))

(assert (= (and b!7631138 (is-Concat!29227 (regOne!41277 r!14126))) b!7631410))

(assert (= (and b!7631138 (is-Star!20382 (regOne!41277 r!14126))) b!7631411))

(assert (= (and b!7631138 (is-Union!20382 (regOne!41277 r!14126))) b!7631412))

(declare-fun b!7631413 () Bool)

(declare-fun e!4536947 () Bool)

(assert (=> b!7631413 (= e!4536947 tp_is_empty!51119)))

(declare-fun b!7631414 () Bool)

(declare-fun tp!2227925 () Bool)

(declare-fun tp!2227929 () Bool)

(assert (=> b!7631414 (= e!4536947 (and tp!2227925 tp!2227929))))

(assert (=> b!7631138 (= tp!2227886 e!4536947)))

(declare-fun b!7631416 () Bool)

(declare-fun tp!2227927 () Bool)

(declare-fun tp!2227926 () Bool)

(assert (=> b!7631416 (= e!4536947 (and tp!2227927 tp!2227926))))

(declare-fun b!7631415 () Bool)

(declare-fun tp!2227928 () Bool)

(assert (=> b!7631415 (= e!4536947 tp!2227928)))

(assert (= (and b!7631138 (is-ElementMatch!20382 (regTwo!41277 r!14126))) b!7631413))

(assert (= (and b!7631138 (is-Concat!29227 (regTwo!41277 r!14126))) b!7631414))

(assert (= (and b!7631138 (is-Star!20382 (regTwo!41277 r!14126))) b!7631415))

(assert (= (and b!7631138 (is-Union!20382 (regTwo!41277 r!14126))) b!7631416))

(declare-fun b!7631421 () Bool)

(declare-fun e!4536950 () Bool)

(declare-fun tp!2227932 () Bool)

(assert (=> b!7631421 (= e!4536950 (and tp_is_empty!51119 tp!2227932))))

(assert (=> b!7631132 (= tp!2227888 e!4536950)))

(assert (= (and b!7631132 (is-Cons!73109 (t!387968 s!9605))) b!7631421))

(declare-fun b!7631422 () Bool)

(declare-fun e!4536951 () Bool)

(assert (=> b!7631422 (= e!4536951 tp_is_empty!51119)))

(declare-fun b!7631423 () Bool)

(declare-fun tp!2227933 () Bool)

(declare-fun tp!2227937 () Bool)

(assert (=> b!7631423 (= e!4536951 (and tp!2227933 tp!2227937))))

(assert (=> b!7631136 (= tp!2227889 e!4536951)))

(declare-fun b!7631425 () Bool)

(declare-fun tp!2227935 () Bool)

(declare-fun tp!2227934 () Bool)

(assert (=> b!7631425 (= e!4536951 (and tp!2227935 tp!2227934))))

(declare-fun b!7631424 () Bool)

(declare-fun tp!2227936 () Bool)

(assert (=> b!7631424 (= e!4536951 tp!2227936)))

(assert (= (and b!7631136 (is-ElementMatch!20382 (regOne!41276 r!14126))) b!7631422))

(assert (= (and b!7631136 (is-Concat!29227 (regOne!41276 r!14126))) b!7631423))

(assert (= (and b!7631136 (is-Star!20382 (regOne!41276 r!14126))) b!7631424))

(assert (= (and b!7631136 (is-Union!20382 (regOne!41276 r!14126))) b!7631425))

(declare-fun b!7631426 () Bool)

(declare-fun e!4536952 () Bool)

(assert (=> b!7631426 (= e!4536952 tp_is_empty!51119)))

(declare-fun b!7631427 () Bool)

(declare-fun tp!2227938 () Bool)

(declare-fun tp!2227942 () Bool)

(assert (=> b!7631427 (= e!4536952 (and tp!2227938 tp!2227942))))

(assert (=> b!7631136 (= tp!2227891 e!4536952)))

(declare-fun b!7631429 () Bool)

(declare-fun tp!2227940 () Bool)

(declare-fun tp!2227939 () Bool)

(assert (=> b!7631429 (= e!4536952 (and tp!2227940 tp!2227939))))

(declare-fun b!7631428 () Bool)

(declare-fun tp!2227941 () Bool)

(assert (=> b!7631428 (= e!4536952 tp!2227941)))

(assert (= (and b!7631136 (is-ElementMatch!20382 (regTwo!41276 r!14126))) b!7631426))

(assert (= (and b!7631136 (is-Concat!29227 (regTwo!41276 r!14126))) b!7631427))

(assert (= (and b!7631136 (is-Star!20382 (regTwo!41276 r!14126))) b!7631428))

(assert (= (and b!7631136 (is-Union!20382 (regTwo!41276 r!14126))) b!7631429))

(declare-fun b!7631430 () Bool)

(declare-fun e!4536953 () Bool)

(assert (=> b!7631430 (= e!4536953 tp_is_empty!51119)))

(declare-fun b!7631431 () Bool)

(declare-fun tp!2227943 () Bool)

(declare-fun tp!2227947 () Bool)

(assert (=> b!7631431 (= e!4536953 (and tp!2227943 tp!2227947))))

(assert (=> b!7631134 (= tp!2227887 e!4536953)))

(declare-fun b!7631433 () Bool)

(declare-fun tp!2227945 () Bool)

(declare-fun tp!2227944 () Bool)

(assert (=> b!7631433 (= e!4536953 (and tp!2227945 tp!2227944))))

(declare-fun b!7631432 () Bool)

(declare-fun tp!2227946 () Bool)

(assert (=> b!7631432 (= e!4536953 tp!2227946)))

(assert (= (and b!7631134 (is-ElementMatch!20382 (reg!20711 r!14126))) b!7631430))

(assert (= (and b!7631134 (is-Concat!29227 (reg!20711 r!14126))) b!7631431))

(assert (= (and b!7631134 (is-Star!20382 (reg!20711 r!14126))) b!7631432))

(assert (= (and b!7631134 (is-Union!20382 (reg!20711 r!14126))) b!7631433))

(push 1)

(assert (not d!2324201))

(assert (not b!7631424))

(assert (not b!7631416))

(assert (not b!7631414))

(assert (not d!2324193))

(assert (not b!7631290))

(assert (not d!2324189))

(assert (not b!7631193))

(assert (not b!7631386))

(assert (not bm!700594))

(assert (not bm!700574))

(assert (not b!7631285))

(assert (not d!2324199))

(assert (not b!7631433))

(assert (not d!2324205))

(assert tp_is_empty!51119)

(assert (not b!7631380))

(assert (not bm!700589))

(assert (not b!7631237))

(assert (not b!7631283))

(assert (not b!7631378))

(assert (not bm!700592))

(assert (not bm!700580))

(assert (not b!7631428))

(assert (not b!7631410))

(assert (not b!7631427))

(assert (not b!7631379))

(assert (not b!7631194))

(assert (not b!7631287))

(assert (not b!7631280))

(assert (not b!7631421))

(assert (not b!7631415))

(assert (not bm!700591))

(assert (not b!7631432))

(assert (not b!7631429))

(assert (not b!7631374))

(assert (not b!7631423))

(assert (not b!7631372))

(assert (not b!7631395))

(assert (not b!7631377))

(assert (not b!7631411))

(assert (not b!7631282))

(assert (not b!7631425))

(assert (not d!2324183))

(assert (not b!7631412))

(assert (not b!7631431))

(assert (not bm!700572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

