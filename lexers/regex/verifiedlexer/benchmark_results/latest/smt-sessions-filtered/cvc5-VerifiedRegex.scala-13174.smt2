; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718810 () Bool)

(assert start!718810)

(declare-fun b!7362160 () Bool)

(declare-fun e!4407863 () Bool)

(declare-fun tp!2092134 () Bool)

(declare-fun tp!2092141 () Bool)

(assert (=> b!7362160 (= e!4407863 (and tp!2092134 tp!2092141))))

(declare-fun b!7362161 () Bool)

(declare-fun e!4407865 () Bool)

(declare-fun e!4407867 () Bool)

(assert (=> b!7362161 (= e!4407865 e!4407867)))

(declare-fun res!2971959 () Bool)

(assert (=> b!7362161 (=> (not res!2971959) (not e!4407867))))

(declare-datatypes ((C!38746 0))(
  ( (C!38747 (val!29733 Int)) )
))
(declare-datatypes ((Regex!19236 0))(
  ( (ElementMatch!19236 (c!1367922 C!38746)) (Concat!28081 (regOne!38984 Regex!19236) (regTwo!38984 Regex!19236)) (EmptyExpr!19236) (Star!19236 (reg!19565 Regex!19236)) (EmptyLang!19236) (Union!19236 (regOne!38985 Regex!19236) (regTwo!38985 Regex!19236)) )
))
(declare-datatypes ((List!71732 0))(
  ( (Nil!71608) (Cons!71608 (h!78056 Regex!19236) (t!386181 List!71732)) )
))
(declare-datatypes ((Context!16352 0))(
  ( (Context!16353 (exprs!8676 List!71732)) )
))
(declare-fun cWitness!61 () Context!16352)

(declare-fun lt!2614094 () (Set Context!16352))

(assert (=> b!7362161 (= res!2971959 (set.member cWitness!61 lt!2614094))))

(declare-fun r1!2370 () Regex!19236)

(declare-fun c!10362 () C!38746)

(declare-fun ct1!282 () Context!16352)

(declare-fun derivationStepZipperDown!3062 (Regex!19236 Context!16352 C!38746) (Set Context!16352))

(assert (=> b!7362161 (= lt!2614094 (derivationStepZipperDown!3062 r1!2370 ct1!282 c!10362))))

(declare-fun b!7362162 () Bool)

(declare-fun tp!2092140 () Bool)

(assert (=> b!7362162 (= e!4407863 tp!2092140)))

(declare-fun b!7362163 () Bool)

(declare-fun e!4407869 () Bool)

(declare-fun tp!2092139 () Bool)

(assert (=> b!7362163 (= e!4407869 tp!2092139)))

(declare-fun b!7362164 () Bool)

(declare-fun e!4407866 () Bool)

(declare-fun e!4407868 () Bool)

(assert (=> b!7362164 (= e!4407866 e!4407868)))

(declare-fun res!2971962 () Bool)

(assert (=> b!7362164 (=> (not res!2971962) (not e!4407868))))

(declare-fun lt!2614095 () (Set Context!16352))

(assert (=> b!7362164 (= res!2971962 (= lt!2614094 (set.union lt!2614095 (derivationStepZipperDown!3062 (regTwo!38985 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7362164 (= lt!2614095 (derivationStepZipperDown!3062 (regOne!38985 r1!2370) ct1!282 c!10362))))

(declare-fun b!7362165 () Bool)

(assert (=> b!7362165 (= e!4407867 e!4407866)))

(declare-fun res!2971964 () Bool)

(assert (=> b!7362165 (=> (not res!2971964) (not e!4407866))))

(assert (=> b!7362165 (= res!2971964 (and (or (not (is-ElementMatch!19236 r1!2370)) (not (= c!10362 (c!1367922 r1!2370)))) (is-Union!19236 r1!2370)))))

(declare-fun lt!2614093 () (Set Context!16352))

(declare-fun ct2!378 () Context!16352)

(declare-fun ++!17052 (List!71732 List!71732) List!71732)

(assert (=> b!7362165 (= lt!2614093 (derivationStepZipperDown!3062 r1!2370 (Context!16353 (++!17052 (exprs!8676 ct1!282) (exprs!8676 ct2!378))) c!10362))))

(declare-fun lambda!457432 () Int)

(declare-datatypes ((Unit!165421 0))(
  ( (Unit!165422) )
))
(declare-fun lt!2614092 () Unit!165421)

(declare-fun lemmaConcatPreservesForall!1909 (List!71732 List!71732 Int) Unit!165421)

(assert (=> b!7362165 (= lt!2614092 (lemmaConcatPreservesForall!1909 (exprs!8676 ct1!282) (exprs!8676 ct2!378) lambda!457432))))

(declare-fun b!7362166 () Bool)

(declare-fun tp_is_empty!48717 () Bool)

(assert (=> b!7362166 (= e!4407863 tp_is_empty!48717)))

(declare-fun b!7362167 () Bool)

(declare-fun regexDepth!434 (Regex!19236) Int)

(assert (=> b!7362167 (= e!4407868 (>= (regexDepth!434 (regOne!38985 r1!2370)) (regexDepth!434 r1!2370)))))

(declare-fun b!7362168 () Bool)

(declare-fun tp!2092136 () Bool)

(declare-fun tp!2092135 () Bool)

(assert (=> b!7362168 (= e!4407863 (and tp!2092136 tp!2092135))))

(declare-fun b!7362169 () Bool)

(declare-fun e!4407864 () Bool)

(declare-fun tp!2092138 () Bool)

(assert (=> b!7362169 (= e!4407864 tp!2092138)))

(declare-fun b!7362170 () Bool)

(declare-fun e!4407870 () Bool)

(declare-fun tp!2092137 () Bool)

(assert (=> b!7362170 (= e!4407870 tp!2092137)))

(declare-fun b!7362171 () Bool)

(declare-fun res!2971963 () Bool)

(assert (=> b!7362171 (=> (not res!2971963) (not e!4407868))))

(declare-fun validRegex!9832 (Regex!19236) Bool)

(assert (=> b!7362171 (= res!2971963 (validRegex!9832 (regOne!38985 r1!2370)))))

(declare-fun b!7362172 () Bool)

(declare-fun res!2971961 () Bool)

(assert (=> b!7362172 (=> (not res!2971961) (not e!4407868))))

(assert (=> b!7362172 (= res!2971961 (set.member cWitness!61 lt!2614095))))

(declare-fun res!2971960 () Bool)

(assert (=> start!718810 (=> (not res!2971960) (not e!4407865))))

(assert (=> start!718810 (= res!2971960 (validRegex!9832 r1!2370))))

(assert (=> start!718810 e!4407865))

(assert (=> start!718810 tp_is_empty!48717))

(declare-fun inv!91431 (Context!16352) Bool)

(assert (=> start!718810 (and (inv!91431 cWitness!61) e!4407864)))

(assert (=> start!718810 (and (inv!91431 ct1!282) e!4407869)))

(assert (=> start!718810 e!4407863))

(assert (=> start!718810 (and (inv!91431 ct2!378) e!4407870)))

(assert (= (and start!718810 res!2971960) b!7362161))

(assert (= (and b!7362161 res!2971959) b!7362165))

(assert (= (and b!7362165 res!2971964) b!7362164))

(assert (= (and b!7362164 res!2971962) b!7362172))

(assert (= (and b!7362172 res!2971961) b!7362171))

(assert (= (and b!7362171 res!2971963) b!7362167))

(assert (= start!718810 b!7362169))

(assert (= start!718810 b!7362163))

(assert (= (and start!718810 (is-ElementMatch!19236 r1!2370)) b!7362166))

(assert (= (and start!718810 (is-Concat!28081 r1!2370)) b!7362168))

(assert (= (and start!718810 (is-Star!19236 r1!2370)) b!7362162))

(assert (= (and start!718810 (is-Union!19236 r1!2370)) b!7362160))

(assert (= start!718810 b!7362170))

(declare-fun m!8019198 () Bool)

(assert (=> b!7362172 m!8019198))

(declare-fun m!8019200 () Bool)

(assert (=> start!718810 m!8019200))

(declare-fun m!8019202 () Bool)

(assert (=> start!718810 m!8019202))

(declare-fun m!8019204 () Bool)

(assert (=> start!718810 m!8019204))

(declare-fun m!8019206 () Bool)

(assert (=> start!718810 m!8019206))

(declare-fun m!8019208 () Bool)

(assert (=> b!7362165 m!8019208))

(declare-fun m!8019210 () Bool)

(assert (=> b!7362165 m!8019210))

(declare-fun m!8019212 () Bool)

(assert (=> b!7362165 m!8019212))

(declare-fun m!8019214 () Bool)

(assert (=> b!7362164 m!8019214))

(declare-fun m!8019216 () Bool)

(assert (=> b!7362164 m!8019216))

(declare-fun m!8019218 () Bool)

(assert (=> b!7362171 m!8019218))

(declare-fun m!8019220 () Bool)

(assert (=> b!7362167 m!8019220))

(declare-fun m!8019222 () Bool)

(assert (=> b!7362167 m!8019222))

(declare-fun m!8019224 () Bool)

(assert (=> b!7362161 m!8019224))

(declare-fun m!8019226 () Bool)

(assert (=> b!7362161 m!8019226))

(push 1)

(assert (not b!7362165))

(assert (not b!7362160))

(assert (not b!7362161))

(assert (not b!7362171))

(assert (not start!718810))

(assert (not b!7362164))

(assert (not b!7362169))

(assert (not b!7362163))

(assert (not b!7362167))

(assert (not b!7362162))

(assert (not b!7362168))

(assert tp_is_empty!48717)

(assert (not b!7362170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1367929 () Bool)

(declare-fun bm!674803 () Bool)

(declare-fun call!674810 () Bool)

(declare-fun c!1367928 () Bool)

(assert (=> bm!674803 (= call!674810 (validRegex!9832 (ite c!1367928 (reg!19565 r1!2370) (ite c!1367929 (regTwo!38985 r1!2370) (regOne!38984 r1!2370)))))))

(declare-fun b!7362230 () Bool)

(declare-fun e!4407912 () Bool)

(declare-fun call!674808 () Bool)

(assert (=> b!7362230 (= e!4407912 call!674808)))

(declare-fun b!7362231 () Bool)

(declare-fun e!4407915 () Bool)

(declare-fun e!4407909 () Bool)

(assert (=> b!7362231 (= e!4407915 e!4407909)))

(assert (=> b!7362231 (= c!1367928 (is-Star!19236 r1!2370))))

(declare-fun bm!674805 () Bool)

(declare-fun call!674809 () Bool)

(assert (=> bm!674805 (= call!674809 call!674810)))

(declare-fun b!7362232 () Bool)

(declare-fun e!4407911 () Bool)

(assert (=> b!7362232 (= e!4407909 e!4407911)))

(declare-fun res!2971996 () Bool)

(declare-fun nullable!8318 (Regex!19236) Bool)

(assert (=> b!7362232 (= res!2971996 (not (nullable!8318 (reg!19565 r1!2370))))))

(assert (=> b!7362232 (=> (not res!2971996) (not e!4407911))))

(declare-fun b!7362233 () Bool)

(declare-fun e!4407913 () Bool)

(assert (=> b!7362233 (= e!4407913 e!4407912)))

(declare-fun res!2971994 () Bool)

(assert (=> b!7362233 (=> (not res!2971994) (not e!4407912))))

(assert (=> b!7362233 (= res!2971994 call!674809)))

(declare-fun b!7362234 () Bool)

(declare-fun e!4407910 () Bool)

(assert (=> b!7362234 (= e!4407909 e!4407910)))

(assert (=> b!7362234 (= c!1367929 (is-Union!19236 r1!2370))))

(declare-fun b!7362235 () Bool)

(assert (=> b!7362235 (= e!4407911 call!674810)))

(declare-fun b!7362236 () Bool)

(declare-fun res!2971997 () Bool)

(assert (=> b!7362236 (=> res!2971997 e!4407913)))

(assert (=> b!7362236 (= res!2971997 (not (is-Concat!28081 r1!2370)))))

(assert (=> b!7362236 (= e!4407910 e!4407913)))

(declare-fun b!7362237 () Bool)

(declare-fun res!2971993 () Bool)

(declare-fun e!4407914 () Bool)

(assert (=> b!7362237 (=> (not res!2971993) (not e!4407914))))

(assert (=> b!7362237 (= res!2971993 call!674808)))

(assert (=> b!7362237 (= e!4407910 e!4407914)))

(declare-fun b!7362238 () Bool)

(assert (=> b!7362238 (= e!4407914 call!674809)))

(declare-fun d!2282277 () Bool)

(declare-fun res!2971995 () Bool)

(assert (=> d!2282277 (=> res!2971995 e!4407915)))

(assert (=> d!2282277 (= res!2971995 (is-ElementMatch!19236 r1!2370))))

(assert (=> d!2282277 (= (validRegex!9832 r1!2370) e!4407915)))

(declare-fun bm!674804 () Bool)

(assert (=> bm!674804 (= call!674808 (validRegex!9832 (ite c!1367929 (regOne!38985 r1!2370) (regTwo!38984 r1!2370))))))

(assert (= (and d!2282277 (not res!2971995)) b!7362231))

(assert (= (and b!7362231 c!1367928) b!7362232))

(assert (= (and b!7362231 (not c!1367928)) b!7362234))

(assert (= (and b!7362232 res!2971996) b!7362235))

(assert (= (and b!7362234 c!1367929) b!7362237))

(assert (= (and b!7362234 (not c!1367929)) b!7362236))

(assert (= (and b!7362237 res!2971993) b!7362238))

(assert (= (and b!7362236 (not res!2971997)) b!7362233))

(assert (= (and b!7362233 res!2971994) b!7362230))

(assert (= (or b!7362237 b!7362230) bm!674804))

(assert (= (or b!7362238 b!7362233) bm!674805))

(assert (= (or b!7362235 bm!674805) bm!674803))

(declare-fun m!8019258 () Bool)

(assert (=> bm!674803 m!8019258))

(declare-fun m!8019260 () Bool)

(assert (=> b!7362232 m!8019260))

(declare-fun m!8019262 () Bool)

(assert (=> bm!674804 m!8019262))

(assert (=> start!718810 d!2282277))

(declare-fun bs!1920228 () Bool)

(declare-fun d!2282279 () Bool)

(assert (= bs!1920228 (and d!2282279 b!7362165)))

(declare-fun lambda!457438 () Int)

(assert (=> bs!1920228 (= lambda!457438 lambda!457432)))

(declare-fun forall!18048 (List!71732 Int) Bool)

(assert (=> d!2282279 (= (inv!91431 cWitness!61) (forall!18048 (exprs!8676 cWitness!61) lambda!457438))))

(declare-fun bs!1920229 () Bool)

(assert (= bs!1920229 d!2282279))

(declare-fun m!8019264 () Bool)

(assert (=> bs!1920229 m!8019264))

(assert (=> start!718810 d!2282279))

(declare-fun bs!1920230 () Bool)

(declare-fun d!2282281 () Bool)

(assert (= bs!1920230 (and d!2282281 b!7362165)))

(declare-fun lambda!457439 () Int)

(assert (=> bs!1920230 (= lambda!457439 lambda!457432)))

(declare-fun bs!1920231 () Bool)

(assert (= bs!1920231 (and d!2282281 d!2282279)))

(assert (=> bs!1920231 (= lambda!457439 lambda!457438)))

(assert (=> d!2282281 (= (inv!91431 ct1!282) (forall!18048 (exprs!8676 ct1!282) lambda!457439))))

(declare-fun bs!1920232 () Bool)

(assert (= bs!1920232 d!2282281))

(declare-fun m!8019266 () Bool)

(assert (=> bs!1920232 m!8019266))

(assert (=> start!718810 d!2282281))

(declare-fun bs!1920233 () Bool)

(declare-fun d!2282283 () Bool)

(assert (= bs!1920233 (and d!2282283 b!7362165)))

(declare-fun lambda!457440 () Int)

(assert (=> bs!1920233 (= lambda!457440 lambda!457432)))

(declare-fun bs!1920234 () Bool)

(assert (= bs!1920234 (and d!2282283 d!2282279)))

(assert (=> bs!1920234 (= lambda!457440 lambda!457438)))

(declare-fun bs!1920235 () Bool)

(assert (= bs!1920235 (and d!2282283 d!2282281)))

(assert (=> bs!1920235 (= lambda!457440 lambda!457439)))

(assert (=> d!2282283 (= (inv!91431 ct2!378) (forall!18048 (exprs!8676 ct2!378) lambda!457440))))

(declare-fun bs!1920236 () Bool)

(assert (= bs!1920236 d!2282283))

(declare-fun m!8019268 () Bool)

(assert (=> bs!1920236 m!8019268))

(assert (=> start!718810 d!2282283))

(declare-fun b!7362291 () Bool)

(declare-fun e!4407955 () Bool)

(declare-fun e!4407951 () Bool)

(assert (=> b!7362291 (= e!4407955 e!4407951)))

(declare-fun res!2972016 () Bool)

(declare-fun lt!2614110 () Int)

(declare-fun call!674835 () Int)

(assert (=> b!7362291 (= res!2972016 (> lt!2614110 call!674835))))

(assert (=> b!7362291 (=> (not res!2972016) (not e!4407951))))

(declare-fun b!7362292 () Bool)

(declare-fun e!4407958 () Int)

(assert (=> b!7362292 (= e!4407958 1)))

(declare-fun b!7362293 () Bool)

(declare-fun e!4407959 () Int)

(declare-fun call!674834 () Int)

(assert (=> b!7362293 (= e!4407959 (+ 1 call!674834))))

(declare-fun c!1367948 () Bool)

(declare-fun c!1367954 () Bool)

(declare-fun bm!674827 () Bool)

(declare-fun call!674832 () Int)

(assert (=> bm!674827 (= call!674832 (regexDepth!434 (ite c!1367948 (reg!19565 (regOne!38985 r1!2370)) (ite c!1367954 (regOne!38985 (regOne!38985 r1!2370)) (regTwo!38984 (regOne!38985 r1!2370))))))))

(declare-fun b!7362294 () Bool)

(declare-fun c!1367951 () Bool)

(assert (=> b!7362294 (= c!1367951 (is-Star!19236 (regOne!38985 r1!2370)))))

(declare-fun e!4407950 () Bool)

(declare-fun e!4407957 () Bool)

(assert (=> b!7362294 (= e!4407950 e!4407957)))

(declare-fun b!7362295 () Bool)

(assert (=> b!7362295 (= c!1367954 (is-Union!19236 (regOne!38985 r1!2370)))))

(declare-fun e!4407956 () Int)

(declare-fun e!4407954 () Int)

(assert (=> b!7362295 (= e!4407956 e!4407954)))

(declare-fun b!7362296 () Bool)

(assert (=> b!7362296 (= e!4407959 1)))

(declare-fun b!7362297 () Bool)

(declare-fun e!4407952 () Bool)

(assert (=> b!7362297 (= e!4407952 e!4407955)))

(declare-fun c!1367949 () Bool)

(assert (=> b!7362297 (= c!1367949 (is-Union!19236 (regOne!38985 r1!2370)))))

(declare-fun b!7362298 () Bool)

(assert (=> b!7362298 (= e!4407954 (+ 1 call!674834))))

(declare-fun d!2282285 () Bool)

(assert (=> d!2282285 e!4407952))

(declare-fun res!2972015 () Bool)

(assert (=> d!2282285 (=> (not res!2972015) (not e!4407952))))

(assert (=> d!2282285 (= res!2972015 (> lt!2614110 0))))

(assert (=> d!2282285 (= lt!2614110 e!4407958)))

(declare-fun c!1367950 () Bool)

(assert (=> d!2282285 (= c!1367950 (is-ElementMatch!19236 (regOne!38985 r1!2370)))))

(assert (=> d!2282285 (= (regexDepth!434 (regOne!38985 r1!2370)) lt!2614110)))

(declare-fun bm!674826 () Bool)

(declare-fun call!674836 () Int)

(assert (=> bm!674826 (= call!674836 (regexDepth!434 (ite c!1367954 (regTwo!38985 (regOne!38985 r1!2370)) (regOne!38984 (regOne!38985 r1!2370)))))))

(declare-fun b!7362299 () Bool)

(declare-fun res!2972014 () Bool)

(declare-fun e!4407953 () Bool)

(assert (=> b!7362299 (=> (not res!2972014) (not e!4407953))))

(declare-fun call!674837 () Int)

(assert (=> b!7362299 (= res!2972014 (> lt!2614110 call!674837))))

(assert (=> b!7362299 (= e!4407950 e!4407953)))

(declare-fun b!7362300 () Bool)

(assert (=> b!7362300 (= e!4407958 e!4407956)))

(assert (=> b!7362300 (= c!1367948 (is-Star!19236 (regOne!38985 r1!2370)))))

(declare-fun b!7362301 () Bool)

(assert (=> b!7362301 (= e!4407955 e!4407950)))

(declare-fun c!1367952 () Bool)

(assert (=> b!7362301 (= c!1367952 (is-Concat!28081 (regOne!38985 r1!2370)))))

(declare-fun b!7362302 () Bool)

(assert (=> b!7362302 (= e!4407956 (+ 1 call!674832))))

(declare-fun bm!674828 () Bool)

(declare-fun call!674833 () Int)

(assert (=> bm!674828 (= call!674837 call!674833)))

(declare-fun bm!674829 () Bool)

(declare-fun call!674831 () Int)

(assert (=> bm!674829 (= call!674831 call!674832)))

(declare-fun bm!674830 () Bool)

(assert (=> bm!674830 (= call!674833 (regexDepth!434 (ite c!1367949 (regTwo!38985 (regOne!38985 r1!2370)) (ite c!1367952 (regOne!38984 (regOne!38985 r1!2370)) (reg!19565 (regOne!38985 r1!2370))))))))

(declare-fun b!7362303 () Bool)

(assert (=> b!7362303 (= e!4407953 (> lt!2614110 call!674835))))

(declare-fun b!7362304 () Bool)

(assert (=> b!7362304 (= e!4407957 (= lt!2614110 1))))

(declare-fun b!7362305 () Bool)

(assert (=> b!7362305 (= e!4407957 (> lt!2614110 call!674837))))

(declare-fun b!7362306 () Bool)

(assert (=> b!7362306 (= e!4407951 (> lt!2614110 call!674833))))

(declare-fun b!7362307 () Bool)

(assert (=> b!7362307 (= e!4407954 e!4407959)))

(declare-fun c!1367953 () Bool)

(assert (=> b!7362307 (= c!1367953 (is-Concat!28081 (regOne!38985 r1!2370)))))

(declare-fun bm!674831 () Bool)

(assert (=> bm!674831 (= call!674835 (regexDepth!434 (ite c!1367949 (regOne!38985 (regOne!38985 r1!2370)) (regTwo!38984 (regOne!38985 r1!2370)))))))

(declare-fun bm!674832 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!674832 (= call!674834 (maxBigInt!0 (ite c!1367954 call!674831 call!674836) (ite c!1367954 call!674836 call!674831)))))

(assert (= (and d!2282285 c!1367950) b!7362292))

(assert (= (and d!2282285 (not c!1367950)) b!7362300))

(assert (= (and b!7362300 c!1367948) b!7362302))

(assert (= (and b!7362300 (not c!1367948)) b!7362295))

(assert (= (and b!7362295 c!1367954) b!7362298))

(assert (= (and b!7362295 (not c!1367954)) b!7362307))

(assert (= (and b!7362307 c!1367953) b!7362293))

(assert (= (and b!7362307 (not c!1367953)) b!7362296))

(assert (= (or b!7362298 b!7362293) bm!674826))

(assert (= (or b!7362298 b!7362293) bm!674829))

(assert (= (or b!7362298 b!7362293) bm!674832))

(assert (= (or b!7362302 bm!674829) bm!674827))

(assert (= (and d!2282285 res!2972015) b!7362297))

(assert (= (and b!7362297 c!1367949) b!7362291))

(assert (= (and b!7362297 (not c!1367949)) b!7362301))

(assert (= (and b!7362291 res!2972016) b!7362306))

(assert (= (and b!7362301 c!1367952) b!7362299))

(assert (= (and b!7362301 (not c!1367952)) b!7362294))

(assert (= (and b!7362299 res!2972014) b!7362303))

(assert (= (and b!7362294 c!1367951) b!7362305))

(assert (= (and b!7362294 (not c!1367951)) b!7362304))

(assert (= (or b!7362299 b!7362305) bm!674828))

(assert (= (or b!7362306 bm!674828) bm!674830))

(assert (= (or b!7362291 b!7362303) bm!674831))

(declare-fun m!8019270 () Bool)

(assert (=> bm!674826 m!8019270))

(declare-fun m!8019272 () Bool)

(assert (=> bm!674830 m!8019272))

(declare-fun m!8019274 () Bool)

(assert (=> bm!674831 m!8019274))

(declare-fun m!8019276 () Bool)

(assert (=> bm!674827 m!8019276))

(declare-fun m!8019278 () Bool)

(assert (=> bm!674832 m!8019278))

(assert (=> b!7362167 d!2282285))

(declare-fun b!7362308 () Bool)

(declare-fun e!4407965 () Bool)

(declare-fun e!4407961 () Bool)

(assert (=> b!7362308 (= e!4407965 e!4407961)))

(declare-fun res!2972019 () Bool)

(declare-fun lt!2614111 () Int)

(declare-fun call!674842 () Int)

(assert (=> b!7362308 (= res!2972019 (> lt!2614111 call!674842))))

(assert (=> b!7362308 (=> (not res!2972019) (not e!4407961))))

(declare-fun b!7362309 () Bool)

(declare-fun e!4407968 () Int)

(assert (=> b!7362309 (= e!4407968 1)))

(declare-fun b!7362310 () Bool)

(declare-fun e!4407969 () Int)

(declare-fun call!674841 () Int)

(assert (=> b!7362310 (= e!4407969 (+ 1 call!674841))))

(declare-fun bm!674834 () Bool)

(declare-fun c!1367955 () Bool)

(declare-fun c!1367961 () Bool)

(declare-fun call!674839 () Int)

(assert (=> bm!674834 (= call!674839 (regexDepth!434 (ite c!1367955 (reg!19565 r1!2370) (ite c!1367961 (regOne!38985 r1!2370) (regTwo!38984 r1!2370)))))))

(declare-fun b!7362311 () Bool)

(declare-fun c!1367958 () Bool)

(assert (=> b!7362311 (= c!1367958 (is-Star!19236 r1!2370))))

(declare-fun e!4407960 () Bool)

(declare-fun e!4407967 () Bool)

(assert (=> b!7362311 (= e!4407960 e!4407967)))

(declare-fun b!7362312 () Bool)

(assert (=> b!7362312 (= c!1367961 (is-Union!19236 r1!2370))))

(declare-fun e!4407966 () Int)

(declare-fun e!4407964 () Int)

(assert (=> b!7362312 (= e!4407966 e!4407964)))

(declare-fun b!7362313 () Bool)

(assert (=> b!7362313 (= e!4407969 1)))

(declare-fun b!7362314 () Bool)

(declare-fun e!4407962 () Bool)

(assert (=> b!7362314 (= e!4407962 e!4407965)))

(declare-fun c!1367956 () Bool)

(assert (=> b!7362314 (= c!1367956 (is-Union!19236 r1!2370))))

(declare-fun b!7362315 () Bool)

(assert (=> b!7362315 (= e!4407964 (+ 1 call!674841))))

(declare-fun d!2282289 () Bool)

(assert (=> d!2282289 e!4407962))

(declare-fun res!2972018 () Bool)

(assert (=> d!2282289 (=> (not res!2972018) (not e!4407962))))

(assert (=> d!2282289 (= res!2972018 (> lt!2614111 0))))

(assert (=> d!2282289 (= lt!2614111 e!4407968)))

(declare-fun c!1367957 () Bool)

(assert (=> d!2282289 (= c!1367957 (is-ElementMatch!19236 r1!2370))))

(assert (=> d!2282289 (= (regexDepth!434 r1!2370) lt!2614111)))

(declare-fun bm!674833 () Bool)

(declare-fun call!674843 () Int)

(assert (=> bm!674833 (= call!674843 (regexDepth!434 (ite c!1367961 (regTwo!38985 r1!2370) (regOne!38984 r1!2370))))))

(declare-fun b!7362316 () Bool)

(declare-fun res!2972017 () Bool)

(declare-fun e!4407963 () Bool)

(assert (=> b!7362316 (=> (not res!2972017) (not e!4407963))))

(declare-fun call!674844 () Int)

(assert (=> b!7362316 (= res!2972017 (> lt!2614111 call!674844))))

(assert (=> b!7362316 (= e!4407960 e!4407963)))

(declare-fun b!7362317 () Bool)

(assert (=> b!7362317 (= e!4407968 e!4407966)))

(assert (=> b!7362317 (= c!1367955 (is-Star!19236 r1!2370))))

(declare-fun b!7362318 () Bool)

(assert (=> b!7362318 (= e!4407965 e!4407960)))

(declare-fun c!1367959 () Bool)

(assert (=> b!7362318 (= c!1367959 (is-Concat!28081 r1!2370))))

(declare-fun b!7362319 () Bool)

(assert (=> b!7362319 (= e!4407966 (+ 1 call!674839))))

(declare-fun bm!674835 () Bool)

(declare-fun call!674840 () Int)

(assert (=> bm!674835 (= call!674844 call!674840)))

(declare-fun bm!674836 () Bool)

(declare-fun call!674838 () Int)

(assert (=> bm!674836 (= call!674838 call!674839)))

(declare-fun bm!674837 () Bool)

(assert (=> bm!674837 (= call!674840 (regexDepth!434 (ite c!1367956 (regTwo!38985 r1!2370) (ite c!1367959 (regOne!38984 r1!2370) (reg!19565 r1!2370)))))))

(declare-fun b!7362320 () Bool)

(assert (=> b!7362320 (= e!4407963 (> lt!2614111 call!674842))))

(declare-fun b!7362321 () Bool)

(assert (=> b!7362321 (= e!4407967 (= lt!2614111 1))))

(declare-fun b!7362322 () Bool)

(assert (=> b!7362322 (= e!4407967 (> lt!2614111 call!674844))))

(declare-fun b!7362323 () Bool)

(assert (=> b!7362323 (= e!4407961 (> lt!2614111 call!674840))))

(declare-fun b!7362324 () Bool)

(assert (=> b!7362324 (= e!4407964 e!4407969)))

(declare-fun c!1367960 () Bool)

(assert (=> b!7362324 (= c!1367960 (is-Concat!28081 r1!2370))))

(declare-fun bm!674838 () Bool)

(assert (=> bm!674838 (= call!674842 (regexDepth!434 (ite c!1367956 (regOne!38985 r1!2370) (regTwo!38984 r1!2370))))))

(declare-fun bm!674839 () Bool)

(assert (=> bm!674839 (= call!674841 (maxBigInt!0 (ite c!1367961 call!674838 call!674843) (ite c!1367961 call!674843 call!674838)))))

(assert (= (and d!2282289 c!1367957) b!7362309))

(assert (= (and d!2282289 (not c!1367957)) b!7362317))

(assert (= (and b!7362317 c!1367955) b!7362319))

(assert (= (and b!7362317 (not c!1367955)) b!7362312))

(assert (= (and b!7362312 c!1367961) b!7362315))

(assert (= (and b!7362312 (not c!1367961)) b!7362324))

(assert (= (and b!7362324 c!1367960) b!7362310))

(assert (= (and b!7362324 (not c!1367960)) b!7362313))

(assert (= (or b!7362315 b!7362310) bm!674833))

(assert (= (or b!7362315 b!7362310) bm!674836))

(assert (= (or b!7362315 b!7362310) bm!674839))

(assert (= (or b!7362319 bm!674836) bm!674834))

(assert (= (and d!2282289 res!2972018) b!7362314))

(assert (= (and b!7362314 c!1367956) b!7362308))

(assert (= (and b!7362314 (not c!1367956)) b!7362318))

(assert (= (and b!7362308 res!2972019) b!7362323))

(assert (= (and b!7362318 c!1367959) b!7362316))

(assert (= (and b!7362318 (not c!1367959)) b!7362311))

(assert (= (and b!7362316 res!2972017) b!7362320))

(assert (= (and b!7362311 c!1367958) b!7362322))

(assert (= (and b!7362311 (not c!1367958)) b!7362321))

(assert (= (or b!7362316 b!7362322) bm!674835))

(assert (= (or b!7362323 bm!674835) bm!674837))

(assert (= (or b!7362308 b!7362320) bm!674838))

(declare-fun m!8019280 () Bool)

(assert (=> bm!674833 m!8019280))

(declare-fun m!8019282 () Bool)

(assert (=> bm!674837 m!8019282))

(declare-fun m!8019284 () Bool)

(assert (=> bm!674838 m!8019284))

(declare-fun m!8019286 () Bool)

(assert (=> bm!674834 m!8019286))

(declare-fun m!8019288 () Bool)

(assert (=> bm!674839 m!8019288))

(assert (=> b!7362167 d!2282289))

(declare-fun call!674864 () (Set Context!16352))

(declare-fun c!1367974 () Bool)

(declare-fun call!674863 () List!71732)

(declare-fun bm!674855 () Bool)

(assert (=> bm!674855 (= call!674864 (derivationStepZipperDown!3062 (ite c!1367974 (regOne!38985 (regTwo!38985 r1!2370)) (regOne!38984 (regTwo!38985 r1!2370))) (ite c!1367974 ct1!282 (Context!16353 call!674863)) c!10362))))

(declare-fun b!7362356 () Bool)

(declare-fun c!1367977 () Bool)

(declare-fun e!4407994 () Bool)

(assert (=> b!7362356 (= c!1367977 e!4407994)))

(declare-fun res!2972027 () Bool)

(assert (=> b!7362356 (=> (not res!2972027) (not e!4407994))))

(assert (=> b!7362356 (= res!2972027 (is-Concat!28081 (regTwo!38985 r1!2370)))))

(declare-fun e!4407989 () (Set Context!16352))

(declare-fun e!4407991 () (Set Context!16352))

(assert (=> b!7362356 (= e!4407989 e!4407991)))

(declare-fun b!7362357 () Bool)

(declare-fun call!674860 () (Set Context!16352))

(assert (=> b!7362357 (= e!4407989 (set.union call!674864 call!674860))))

(declare-fun b!7362358 () Bool)

(declare-fun call!674865 () (Set Context!16352))

(assert (=> b!7362358 (= e!4407991 (set.union call!674864 call!674865))))

(declare-fun bm!674856 () Bool)

(declare-fun call!674862 () (Set Context!16352))

(assert (=> bm!674856 (= call!674862 call!674865)))

(declare-fun bm!674857 () Bool)

(assert (=> bm!674857 (= call!674865 call!674860)))

(declare-fun call!674861 () List!71732)

(declare-fun c!1367975 () Bool)

(declare-fun bm!674858 () Bool)

(assert (=> bm!674858 (= call!674860 (derivationStepZipperDown!3062 (ite c!1367974 (regTwo!38985 (regTwo!38985 r1!2370)) (ite c!1367977 (regTwo!38984 (regTwo!38985 r1!2370)) (ite c!1367975 (regOne!38984 (regTwo!38985 r1!2370)) (reg!19565 (regTwo!38985 r1!2370))))) (ite (or c!1367974 c!1367977) ct1!282 (Context!16353 call!674861)) c!10362))))

(declare-fun b!7362359 () Bool)

(declare-fun e!4407990 () (Set Context!16352))

(assert (=> b!7362359 (= e!4407990 e!4407989)))

(assert (=> b!7362359 (= c!1367974 (is-Union!19236 (regTwo!38985 r1!2370)))))

(declare-fun b!7362360 () Bool)

(declare-fun e!4407993 () (Set Context!16352))

(assert (=> b!7362360 (= e!4407993 call!674862)))

(declare-fun b!7362361 () Bool)

(assert (=> b!7362361 (= e!4407994 (nullable!8318 (regOne!38984 (regTwo!38985 r1!2370))))))

(declare-fun b!7362362 () Bool)

(assert (=> b!7362362 (= e!4407991 e!4407993)))

(assert (=> b!7362362 (= c!1367975 (is-Concat!28081 (regTwo!38985 r1!2370)))))

(declare-fun d!2282291 () Bool)

(declare-fun c!1367978 () Bool)

(assert (=> d!2282291 (= c!1367978 (and (is-ElementMatch!19236 (regTwo!38985 r1!2370)) (= (c!1367922 (regTwo!38985 r1!2370)) c!10362)))))

(assert (=> d!2282291 (= (derivationStepZipperDown!3062 (regTwo!38985 r1!2370) ct1!282 c!10362) e!4407990)))

(declare-fun b!7362363 () Bool)

(declare-fun e!4407992 () (Set Context!16352))

(assert (=> b!7362363 (= e!4407992 call!674862)))

(declare-fun b!7362364 () Bool)

(assert (=> b!7362364 (= e!4407992 (as set.empty (Set Context!16352)))))

(declare-fun b!7362365 () Bool)

(assert (=> b!7362365 (= e!4407990 (set.insert ct1!282 (as set.empty (Set Context!16352))))))

(declare-fun bm!674859 () Bool)

(assert (=> bm!674859 (= call!674861 call!674863)))

(declare-fun bm!674860 () Bool)

(declare-fun $colon$colon!3224 (List!71732 Regex!19236) List!71732)

(assert (=> bm!674860 (= call!674863 ($colon$colon!3224 (exprs!8676 ct1!282) (ite (or c!1367977 c!1367975) (regTwo!38984 (regTwo!38985 r1!2370)) (regTwo!38985 r1!2370))))))

(declare-fun b!7362366 () Bool)

(declare-fun c!1367976 () Bool)

(assert (=> b!7362366 (= c!1367976 (is-Star!19236 (regTwo!38985 r1!2370)))))

(assert (=> b!7362366 (= e!4407993 e!4407992)))

(assert (= (and d!2282291 c!1367978) b!7362365))

(assert (= (and d!2282291 (not c!1367978)) b!7362359))

(assert (= (and b!7362359 c!1367974) b!7362357))

(assert (= (and b!7362359 (not c!1367974)) b!7362356))

(assert (= (and b!7362356 res!2972027) b!7362361))

(assert (= (and b!7362356 c!1367977) b!7362358))

(assert (= (and b!7362356 (not c!1367977)) b!7362362))

(assert (= (and b!7362362 c!1367975) b!7362360))

(assert (= (and b!7362362 (not c!1367975)) b!7362366))

(assert (= (and b!7362366 c!1367976) b!7362363))

(assert (= (and b!7362366 (not c!1367976)) b!7362364))

(assert (= (or b!7362360 b!7362363) bm!674859))

(assert (= (or b!7362360 b!7362363) bm!674856))

(assert (= (or b!7362358 bm!674856) bm!674857))

(assert (= (or b!7362358 bm!674859) bm!674860))

(assert (= (or b!7362357 bm!674857) bm!674858))

(assert (= (or b!7362357 b!7362358) bm!674855))

(declare-fun m!8019302 () Bool)

(assert (=> bm!674855 m!8019302))

(declare-fun m!8019304 () Bool)

(assert (=> bm!674860 m!8019304))

(declare-fun m!8019306 () Bool)

(assert (=> b!7362361 m!8019306))

(declare-fun m!8019308 () Bool)

(assert (=> b!7362365 m!8019308))

(declare-fun m!8019310 () Bool)

(assert (=> bm!674858 m!8019310))

(assert (=> b!7362164 d!2282291))

(declare-fun bm!674861 () Bool)

(declare-fun call!674869 () List!71732)

(declare-fun call!674870 () (Set Context!16352))

(declare-fun c!1367979 () Bool)

(assert (=> bm!674861 (= call!674870 (derivationStepZipperDown!3062 (ite c!1367979 (regOne!38985 (regOne!38985 r1!2370)) (regOne!38984 (regOne!38985 r1!2370))) (ite c!1367979 ct1!282 (Context!16353 call!674869)) c!10362))))

(declare-fun b!7362367 () Bool)

(declare-fun c!1367982 () Bool)

(declare-fun e!4408000 () Bool)

(assert (=> b!7362367 (= c!1367982 e!4408000)))

(declare-fun res!2972028 () Bool)

(assert (=> b!7362367 (=> (not res!2972028) (not e!4408000))))

(assert (=> b!7362367 (= res!2972028 (is-Concat!28081 (regOne!38985 r1!2370)))))

(declare-fun e!4407995 () (Set Context!16352))

(declare-fun e!4407997 () (Set Context!16352))

(assert (=> b!7362367 (= e!4407995 e!4407997)))

(declare-fun b!7362368 () Bool)

(declare-fun call!674866 () (Set Context!16352))

(assert (=> b!7362368 (= e!4407995 (set.union call!674870 call!674866))))

(declare-fun b!7362369 () Bool)

(declare-fun call!674871 () (Set Context!16352))

(assert (=> b!7362369 (= e!4407997 (set.union call!674870 call!674871))))

(declare-fun bm!674862 () Bool)

(declare-fun call!674868 () (Set Context!16352))

(assert (=> bm!674862 (= call!674868 call!674871)))

(declare-fun bm!674863 () Bool)

(assert (=> bm!674863 (= call!674871 call!674866)))

(declare-fun bm!674864 () Bool)

(declare-fun c!1367980 () Bool)

(declare-fun call!674867 () List!71732)

(assert (=> bm!674864 (= call!674866 (derivationStepZipperDown!3062 (ite c!1367979 (regTwo!38985 (regOne!38985 r1!2370)) (ite c!1367982 (regTwo!38984 (regOne!38985 r1!2370)) (ite c!1367980 (regOne!38984 (regOne!38985 r1!2370)) (reg!19565 (regOne!38985 r1!2370))))) (ite (or c!1367979 c!1367982) ct1!282 (Context!16353 call!674867)) c!10362))))

(declare-fun b!7362370 () Bool)

(declare-fun e!4407996 () (Set Context!16352))

(assert (=> b!7362370 (= e!4407996 e!4407995)))

(assert (=> b!7362370 (= c!1367979 (is-Union!19236 (regOne!38985 r1!2370)))))

(declare-fun b!7362371 () Bool)

(declare-fun e!4407999 () (Set Context!16352))

(assert (=> b!7362371 (= e!4407999 call!674868)))

(declare-fun b!7362372 () Bool)

(assert (=> b!7362372 (= e!4408000 (nullable!8318 (regOne!38984 (regOne!38985 r1!2370))))))

(declare-fun b!7362373 () Bool)

(assert (=> b!7362373 (= e!4407997 e!4407999)))

(assert (=> b!7362373 (= c!1367980 (is-Concat!28081 (regOne!38985 r1!2370)))))

(declare-fun d!2282301 () Bool)

(declare-fun c!1367983 () Bool)

(assert (=> d!2282301 (= c!1367983 (and (is-ElementMatch!19236 (regOne!38985 r1!2370)) (= (c!1367922 (regOne!38985 r1!2370)) c!10362)))))

(assert (=> d!2282301 (= (derivationStepZipperDown!3062 (regOne!38985 r1!2370) ct1!282 c!10362) e!4407996)))

(declare-fun b!7362374 () Bool)

(declare-fun e!4407998 () (Set Context!16352))

(assert (=> b!7362374 (= e!4407998 call!674868)))

(declare-fun b!7362375 () Bool)

(assert (=> b!7362375 (= e!4407998 (as set.empty (Set Context!16352)))))

(declare-fun b!7362376 () Bool)

(assert (=> b!7362376 (= e!4407996 (set.insert ct1!282 (as set.empty (Set Context!16352))))))

(declare-fun bm!674865 () Bool)

(assert (=> bm!674865 (= call!674867 call!674869)))

(declare-fun bm!674866 () Bool)

(assert (=> bm!674866 (= call!674869 ($colon$colon!3224 (exprs!8676 ct1!282) (ite (or c!1367982 c!1367980) (regTwo!38984 (regOne!38985 r1!2370)) (regOne!38985 r1!2370))))))

(declare-fun b!7362377 () Bool)

(declare-fun c!1367981 () Bool)

(assert (=> b!7362377 (= c!1367981 (is-Star!19236 (regOne!38985 r1!2370)))))

(assert (=> b!7362377 (= e!4407999 e!4407998)))

(assert (= (and d!2282301 c!1367983) b!7362376))

(assert (= (and d!2282301 (not c!1367983)) b!7362370))

(assert (= (and b!7362370 c!1367979) b!7362368))

(assert (= (and b!7362370 (not c!1367979)) b!7362367))

(assert (= (and b!7362367 res!2972028) b!7362372))

(assert (= (and b!7362367 c!1367982) b!7362369))

(assert (= (and b!7362367 (not c!1367982)) b!7362373))

(assert (= (and b!7362373 c!1367980) b!7362371))

(assert (= (and b!7362373 (not c!1367980)) b!7362377))

(assert (= (and b!7362377 c!1367981) b!7362374))

(assert (= (and b!7362377 (not c!1367981)) b!7362375))

(assert (= (or b!7362371 b!7362374) bm!674865))

(assert (= (or b!7362371 b!7362374) bm!674862))

(assert (= (or b!7362369 bm!674862) bm!674863))

(assert (= (or b!7362369 bm!674865) bm!674866))

(assert (= (or b!7362368 bm!674863) bm!674864))

(assert (= (or b!7362368 b!7362369) bm!674861))

(declare-fun m!8019312 () Bool)

(assert (=> bm!674861 m!8019312))

(declare-fun m!8019314 () Bool)

(assert (=> bm!674866 m!8019314))

(declare-fun m!8019316 () Bool)

(assert (=> b!7362372 m!8019316))

(assert (=> b!7362376 m!8019308))

(declare-fun m!8019318 () Bool)

(assert (=> bm!674864 m!8019318))

(assert (=> b!7362164 d!2282301))

(declare-fun bm!674867 () Bool)

(declare-fun call!674876 () (Set Context!16352))

(declare-fun call!674875 () List!71732)

(declare-fun c!1367984 () Bool)

(assert (=> bm!674867 (= call!674876 (derivationStepZipperDown!3062 (ite c!1367984 (regOne!38985 r1!2370) (regOne!38984 r1!2370)) (ite c!1367984 (Context!16353 (++!17052 (exprs!8676 ct1!282) (exprs!8676 ct2!378))) (Context!16353 call!674875)) c!10362))))

(declare-fun b!7362378 () Bool)

(declare-fun c!1367987 () Bool)

(declare-fun e!4408006 () Bool)

(assert (=> b!7362378 (= c!1367987 e!4408006)))

(declare-fun res!2972029 () Bool)

(assert (=> b!7362378 (=> (not res!2972029) (not e!4408006))))

(assert (=> b!7362378 (= res!2972029 (is-Concat!28081 r1!2370))))

(declare-fun e!4408001 () (Set Context!16352))

(declare-fun e!4408003 () (Set Context!16352))

(assert (=> b!7362378 (= e!4408001 e!4408003)))

(declare-fun b!7362379 () Bool)

(declare-fun call!674872 () (Set Context!16352))

(assert (=> b!7362379 (= e!4408001 (set.union call!674876 call!674872))))

(declare-fun b!7362380 () Bool)

(declare-fun call!674877 () (Set Context!16352))

(assert (=> b!7362380 (= e!4408003 (set.union call!674876 call!674877))))

(declare-fun bm!674868 () Bool)

(declare-fun call!674874 () (Set Context!16352))

(assert (=> bm!674868 (= call!674874 call!674877)))

(declare-fun bm!674869 () Bool)

(assert (=> bm!674869 (= call!674877 call!674872)))

(declare-fun call!674873 () List!71732)

(declare-fun bm!674870 () Bool)

(declare-fun c!1367985 () Bool)

(assert (=> bm!674870 (= call!674872 (derivationStepZipperDown!3062 (ite c!1367984 (regTwo!38985 r1!2370) (ite c!1367987 (regTwo!38984 r1!2370) (ite c!1367985 (regOne!38984 r1!2370) (reg!19565 r1!2370)))) (ite (or c!1367984 c!1367987) (Context!16353 (++!17052 (exprs!8676 ct1!282) (exprs!8676 ct2!378))) (Context!16353 call!674873)) c!10362))))

(declare-fun b!7362381 () Bool)

(declare-fun e!4408002 () (Set Context!16352))

(assert (=> b!7362381 (= e!4408002 e!4408001)))

(assert (=> b!7362381 (= c!1367984 (is-Union!19236 r1!2370))))

(declare-fun b!7362382 () Bool)

(declare-fun e!4408005 () (Set Context!16352))

(assert (=> b!7362382 (= e!4408005 call!674874)))

(declare-fun b!7362383 () Bool)

(assert (=> b!7362383 (= e!4408006 (nullable!8318 (regOne!38984 r1!2370)))))

(declare-fun b!7362384 () Bool)

(assert (=> b!7362384 (= e!4408003 e!4408005)))

(assert (=> b!7362384 (= c!1367985 (is-Concat!28081 r1!2370))))

(declare-fun d!2282303 () Bool)

(declare-fun c!1367988 () Bool)

(assert (=> d!2282303 (= c!1367988 (and (is-ElementMatch!19236 r1!2370) (= (c!1367922 r1!2370) c!10362)))))

(assert (=> d!2282303 (= (derivationStepZipperDown!3062 r1!2370 (Context!16353 (++!17052 (exprs!8676 ct1!282) (exprs!8676 ct2!378))) c!10362) e!4408002)))

(declare-fun b!7362385 () Bool)

(declare-fun e!4408004 () (Set Context!16352))

(assert (=> b!7362385 (= e!4408004 call!674874)))

(declare-fun b!7362386 () Bool)

(assert (=> b!7362386 (= e!4408004 (as set.empty (Set Context!16352)))))

(declare-fun b!7362387 () Bool)

(assert (=> b!7362387 (= e!4408002 (set.insert (Context!16353 (++!17052 (exprs!8676 ct1!282) (exprs!8676 ct2!378))) (as set.empty (Set Context!16352))))))

(declare-fun bm!674871 () Bool)

(assert (=> bm!674871 (= call!674873 call!674875)))

(declare-fun bm!674872 () Bool)

(assert (=> bm!674872 (= call!674875 ($colon$colon!3224 (exprs!8676 (Context!16353 (++!17052 (exprs!8676 ct1!282) (exprs!8676 ct2!378)))) (ite (or c!1367987 c!1367985) (regTwo!38984 r1!2370) r1!2370)))))

(declare-fun b!7362388 () Bool)

(declare-fun c!1367986 () Bool)

(assert (=> b!7362388 (= c!1367986 (is-Star!19236 r1!2370))))

(assert (=> b!7362388 (= e!4408005 e!4408004)))

(assert (= (and d!2282303 c!1367988) b!7362387))

(assert (= (and d!2282303 (not c!1367988)) b!7362381))

(assert (= (and b!7362381 c!1367984) b!7362379))

(assert (= (and b!7362381 (not c!1367984)) b!7362378))

(assert (= (and b!7362378 res!2972029) b!7362383))

(assert (= (and b!7362378 c!1367987) b!7362380))

(assert (= (and b!7362378 (not c!1367987)) b!7362384))

(assert (= (and b!7362384 c!1367985) b!7362382))

(assert (= (and b!7362384 (not c!1367985)) b!7362388))

(assert (= (and b!7362388 c!1367986) b!7362385))

(assert (= (and b!7362388 (not c!1367986)) b!7362386))

(assert (= (or b!7362382 b!7362385) bm!674871))

(assert (= (or b!7362382 b!7362385) bm!674868))

(assert (= (or b!7362380 bm!674868) bm!674869))

(assert (= (or b!7362380 bm!674871) bm!674872))

(assert (= (or b!7362379 bm!674869) bm!674870))

(assert (= (or b!7362379 b!7362380) bm!674867))

(declare-fun m!8019320 () Bool)

(assert (=> bm!674867 m!8019320))

(declare-fun m!8019322 () Bool)

(assert (=> bm!674872 m!8019322))

(declare-fun m!8019324 () Bool)

(assert (=> b!7362383 m!8019324))

(declare-fun m!8019326 () Bool)

(assert (=> b!7362387 m!8019326))

(declare-fun m!8019328 () Bool)

(assert (=> bm!674870 m!8019328))

(assert (=> b!7362165 d!2282303))

(declare-fun b!7362414 () Bool)

(declare-fun e!4408019 () List!71732)

(assert (=> b!7362414 (= e!4408019 (Cons!71608 (h!78056 (exprs!8676 ct1!282)) (++!17052 (t!386181 (exprs!8676 ct1!282)) (exprs!8676 ct2!378))))))

(declare-fun d!2282305 () Bool)

(declare-fun e!4408020 () Bool)

(assert (=> d!2282305 e!4408020))

(declare-fun res!2972035 () Bool)

(assert (=> d!2282305 (=> (not res!2972035) (not e!4408020))))

(declare-fun lt!2614116 () List!71732)

(declare-fun content!15124 (List!71732) (Set Regex!19236))

(assert (=> d!2282305 (= res!2972035 (= (content!15124 lt!2614116) (set.union (content!15124 (exprs!8676 ct1!282)) (content!15124 (exprs!8676 ct2!378)))))))

(assert (=> d!2282305 (= lt!2614116 e!4408019)))

(declare-fun c!1367999 () Bool)

(assert (=> d!2282305 (= c!1367999 (is-Nil!71608 (exprs!8676 ct1!282)))))

(assert (=> d!2282305 (= (++!17052 (exprs!8676 ct1!282) (exprs!8676 ct2!378)) lt!2614116)))

(declare-fun b!7362413 () Bool)

(assert (=> b!7362413 (= e!4408019 (exprs!8676 ct2!378))))

(declare-fun b!7362415 () Bool)

(declare-fun res!2972034 () Bool)

(assert (=> b!7362415 (=> (not res!2972034) (not e!4408020))))

(declare-fun size!42102 (List!71732) Int)

(assert (=> b!7362415 (= res!2972034 (= (size!42102 lt!2614116) (+ (size!42102 (exprs!8676 ct1!282)) (size!42102 (exprs!8676 ct2!378)))))))

(declare-fun b!7362416 () Bool)

(assert (=> b!7362416 (= e!4408020 (or (not (= (exprs!8676 ct2!378) Nil!71608)) (= lt!2614116 (exprs!8676 ct1!282))))))

(assert (= (and d!2282305 c!1367999) b!7362413))

(assert (= (and d!2282305 (not c!1367999)) b!7362414))

(assert (= (and d!2282305 res!2972035) b!7362415))

(assert (= (and b!7362415 res!2972034) b!7362416))

(declare-fun m!8019330 () Bool)

(assert (=> b!7362414 m!8019330))

(declare-fun m!8019332 () Bool)

(assert (=> d!2282305 m!8019332))

(declare-fun m!8019334 () Bool)

(assert (=> d!2282305 m!8019334))

(declare-fun m!8019336 () Bool)

(assert (=> d!2282305 m!8019336))

(declare-fun m!8019338 () Bool)

(assert (=> b!7362415 m!8019338))

(declare-fun m!8019340 () Bool)

(assert (=> b!7362415 m!8019340))

(declare-fun m!8019342 () Bool)

(assert (=> b!7362415 m!8019342))

(assert (=> b!7362165 d!2282305))

(declare-fun d!2282307 () Bool)

(assert (=> d!2282307 (forall!18048 (++!17052 (exprs!8676 ct1!282) (exprs!8676 ct2!378)) lambda!457432)))

(declare-fun lt!2614119 () Unit!165421)

(declare-fun choose!57255 (List!71732 List!71732 Int) Unit!165421)

(assert (=> d!2282307 (= lt!2614119 (choose!57255 (exprs!8676 ct1!282) (exprs!8676 ct2!378) lambda!457432))))

(assert (=> d!2282307 (forall!18048 (exprs!8676 ct1!282) lambda!457432)))

(assert (=> d!2282307 (= (lemmaConcatPreservesForall!1909 (exprs!8676 ct1!282) (exprs!8676 ct2!378) lambda!457432) lt!2614119)))

(declare-fun bs!1920246 () Bool)

(assert (= bs!1920246 d!2282307))

(assert (=> bs!1920246 m!8019208))

(assert (=> bs!1920246 m!8019208))

(declare-fun m!8019344 () Bool)

(assert (=> bs!1920246 m!8019344))

(declare-fun m!8019346 () Bool)

(assert (=> bs!1920246 m!8019346))

(declare-fun m!8019348 () Bool)

(assert (=> bs!1920246 m!8019348))

(assert (=> b!7362165 d!2282307))

(declare-fun call!674895 () List!71732)

(declare-fun c!1368006 () Bool)

(declare-fun call!674896 () (Set Context!16352))

(declare-fun bm!674887 () Bool)

(assert (=> bm!674887 (= call!674896 (derivationStepZipperDown!3062 (ite c!1368006 (regOne!38985 r1!2370) (regOne!38984 r1!2370)) (ite c!1368006 ct1!282 (Context!16353 call!674895)) c!10362))))

(declare-fun b!7362435 () Bool)

(declare-fun c!1368009 () Bool)

(declare-fun e!4408038 () Bool)

(assert (=> b!7362435 (= c!1368009 e!4408038)))

(declare-fun res!2972042 () Bool)

(assert (=> b!7362435 (=> (not res!2972042) (not e!4408038))))

(assert (=> b!7362435 (= res!2972042 (is-Concat!28081 r1!2370))))

(declare-fun e!4408033 () (Set Context!16352))

(declare-fun e!4408035 () (Set Context!16352))

(assert (=> b!7362435 (= e!4408033 e!4408035)))

(declare-fun b!7362436 () Bool)

(declare-fun call!674892 () (Set Context!16352))

(assert (=> b!7362436 (= e!4408033 (set.union call!674896 call!674892))))

(declare-fun b!7362437 () Bool)

(declare-fun call!674897 () (Set Context!16352))

(assert (=> b!7362437 (= e!4408035 (set.union call!674896 call!674897))))

(declare-fun bm!674888 () Bool)

(declare-fun call!674894 () (Set Context!16352))

(assert (=> bm!674888 (= call!674894 call!674897)))

(declare-fun bm!674889 () Bool)

(assert (=> bm!674889 (= call!674897 call!674892)))

(declare-fun c!1368007 () Bool)

(declare-fun call!674893 () List!71732)

(declare-fun bm!674890 () Bool)

(assert (=> bm!674890 (= call!674892 (derivationStepZipperDown!3062 (ite c!1368006 (regTwo!38985 r1!2370) (ite c!1368009 (regTwo!38984 r1!2370) (ite c!1368007 (regOne!38984 r1!2370) (reg!19565 r1!2370)))) (ite (or c!1368006 c!1368009) ct1!282 (Context!16353 call!674893)) c!10362))))

(declare-fun b!7362438 () Bool)

(declare-fun e!4408034 () (Set Context!16352))

(assert (=> b!7362438 (= e!4408034 e!4408033)))

(assert (=> b!7362438 (= c!1368006 (is-Union!19236 r1!2370))))

(declare-fun b!7362439 () Bool)

(declare-fun e!4408037 () (Set Context!16352))

(assert (=> b!7362439 (= e!4408037 call!674894)))

(declare-fun b!7362440 () Bool)

(assert (=> b!7362440 (= e!4408038 (nullable!8318 (regOne!38984 r1!2370)))))

(declare-fun b!7362441 () Bool)

(assert (=> b!7362441 (= e!4408035 e!4408037)))

(assert (=> b!7362441 (= c!1368007 (is-Concat!28081 r1!2370))))

(declare-fun d!2282309 () Bool)

(declare-fun c!1368010 () Bool)

(assert (=> d!2282309 (= c!1368010 (and (is-ElementMatch!19236 r1!2370) (= (c!1367922 r1!2370) c!10362)))))

(assert (=> d!2282309 (= (derivationStepZipperDown!3062 r1!2370 ct1!282 c!10362) e!4408034)))

(declare-fun b!7362442 () Bool)

(declare-fun e!4408036 () (Set Context!16352))

(assert (=> b!7362442 (= e!4408036 call!674894)))

(declare-fun b!7362443 () Bool)

(assert (=> b!7362443 (= e!4408036 (as set.empty (Set Context!16352)))))

(declare-fun b!7362444 () Bool)

(assert (=> b!7362444 (= e!4408034 (set.insert ct1!282 (as set.empty (Set Context!16352))))))

(declare-fun bm!674891 () Bool)

(assert (=> bm!674891 (= call!674893 call!674895)))

(declare-fun bm!674892 () Bool)

(assert (=> bm!674892 (= call!674895 ($colon$colon!3224 (exprs!8676 ct1!282) (ite (or c!1368009 c!1368007) (regTwo!38984 r1!2370) r1!2370)))))

(declare-fun b!7362445 () Bool)

(declare-fun c!1368008 () Bool)

(assert (=> b!7362445 (= c!1368008 (is-Star!19236 r1!2370))))

(assert (=> b!7362445 (= e!4408037 e!4408036)))

(assert (= (and d!2282309 c!1368010) b!7362444))

(assert (= (and d!2282309 (not c!1368010)) b!7362438))

(assert (= (and b!7362438 c!1368006) b!7362436))

(assert (= (and b!7362438 (not c!1368006)) b!7362435))

(assert (= (and b!7362435 res!2972042) b!7362440))

(assert (= (and b!7362435 c!1368009) b!7362437))

(assert (= (and b!7362435 (not c!1368009)) b!7362441))

(assert (= (and b!7362441 c!1368007) b!7362439))

(assert (= (and b!7362441 (not c!1368007)) b!7362445))

(assert (= (and b!7362445 c!1368008) b!7362442))

(assert (= (and b!7362445 (not c!1368008)) b!7362443))

(assert (= (or b!7362439 b!7362442) bm!674891))

(assert (= (or b!7362439 b!7362442) bm!674888))

(assert (= (or b!7362437 bm!674888) bm!674889))

(assert (= (or b!7362437 bm!674891) bm!674892))

(assert (= (or b!7362436 bm!674889) bm!674890))

(assert (= (or b!7362436 b!7362437) bm!674887))

(declare-fun m!8019350 () Bool)

(assert (=> bm!674887 m!8019350))

(declare-fun m!8019352 () Bool)

(assert (=> bm!674892 m!8019352))

(assert (=> b!7362440 m!8019324))

(assert (=> b!7362444 m!8019308))

(declare-fun m!8019354 () Bool)

(assert (=> bm!674890 m!8019354))

(assert (=> b!7362161 d!2282309))

(declare-fun c!1368012 () Bool)

(declare-fun c!1368011 () Bool)

(declare-fun call!674900 () Bool)

(declare-fun bm!674893 () Bool)

(assert (=> bm!674893 (= call!674900 (validRegex!9832 (ite c!1368011 (reg!19565 (regOne!38985 r1!2370)) (ite c!1368012 (regTwo!38985 (regOne!38985 r1!2370)) (regOne!38984 (regOne!38985 r1!2370))))))))

(declare-fun b!7362446 () Bool)

(declare-fun e!4408042 () Bool)

(declare-fun call!674898 () Bool)

(assert (=> b!7362446 (= e!4408042 call!674898)))

(declare-fun b!7362447 () Bool)

(declare-fun e!4408045 () Bool)

(declare-fun e!4408039 () Bool)

(assert (=> b!7362447 (= e!4408045 e!4408039)))

(assert (=> b!7362447 (= c!1368011 (is-Star!19236 (regOne!38985 r1!2370)))))

(declare-fun bm!674895 () Bool)

(declare-fun call!674899 () Bool)

(assert (=> bm!674895 (= call!674899 call!674900)))

(declare-fun b!7362448 () Bool)

(declare-fun e!4408041 () Bool)

(assert (=> b!7362448 (= e!4408039 e!4408041)))

(declare-fun res!2972046 () Bool)

(assert (=> b!7362448 (= res!2972046 (not (nullable!8318 (reg!19565 (regOne!38985 r1!2370)))))))

(assert (=> b!7362448 (=> (not res!2972046) (not e!4408041))))

(declare-fun b!7362449 () Bool)

(declare-fun e!4408043 () Bool)

(assert (=> b!7362449 (= e!4408043 e!4408042)))

(declare-fun res!2972044 () Bool)

(assert (=> b!7362449 (=> (not res!2972044) (not e!4408042))))

(assert (=> b!7362449 (= res!2972044 call!674899)))

(declare-fun b!7362450 () Bool)

(declare-fun e!4408040 () Bool)

(assert (=> b!7362450 (= e!4408039 e!4408040)))

(assert (=> b!7362450 (= c!1368012 (is-Union!19236 (regOne!38985 r1!2370)))))

(declare-fun b!7362451 () Bool)

(assert (=> b!7362451 (= e!4408041 call!674900)))

(declare-fun b!7362452 () Bool)

(declare-fun res!2972047 () Bool)

(assert (=> b!7362452 (=> res!2972047 e!4408043)))

(assert (=> b!7362452 (= res!2972047 (not (is-Concat!28081 (regOne!38985 r1!2370))))))

(assert (=> b!7362452 (= e!4408040 e!4408043)))

(declare-fun b!7362453 () Bool)

(declare-fun res!2972043 () Bool)

(declare-fun e!4408044 () Bool)

(assert (=> b!7362453 (=> (not res!2972043) (not e!4408044))))

(assert (=> b!7362453 (= res!2972043 call!674898)))

(assert (=> b!7362453 (= e!4408040 e!4408044)))

(declare-fun b!7362454 () Bool)

(assert (=> b!7362454 (= e!4408044 call!674899)))

(declare-fun d!2282311 () Bool)

(declare-fun res!2972045 () Bool)

(assert (=> d!2282311 (=> res!2972045 e!4408045)))

(assert (=> d!2282311 (= res!2972045 (is-ElementMatch!19236 (regOne!38985 r1!2370)))))

(assert (=> d!2282311 (= (validRegex!9832 (regOne!38985 r1!2370)) e!4408045)))

(declare-fun bm!674894 () Bool)

(assert (=> bm!674894 (= call!674898 (validRegex!9832 (ite c!1368012 (regOne!38985 (regOne!38985 r1!2370)) (regTwo!38984 (regOne!38985 r1!2370)))))))

(assert (= (and d!2282311 (not res!2972045)) b!7362447))

(assert (= (and b!7362447 c!1368011) b!7362448))

(assert (= (and b!7362447 (not c!1368011)) b!7362450))

(assert (= (and b!7362448 res!2972046) b!7362451))

(assert (= (and b!7362450 c!1368012) b!7362453))

(assert (= (and b!7362450 (not c!1368012)) b!7362452))

(assert (= (and b!7362453 res!2972043) b!7362454))

(assert (= (and b!7362452 (not res!2972047)) b!7362449))

(assert (= (and b!7362449 res!2972044) b!7362446))

(assert (= (or b!7362453 b!7362446) bm!674894))

(assert (= (or b!7362454 b!7362449) bm!674895))

(assert (= (or b!7362451 bm!674895) bm!674893))

(declare-fun m!8019356 () Bool)

(assert (=> bm!674893 m!8019356))

(declare-fun m!8019358 () Bool)

(assert (=> b!7362448 m!8019358))

(declare-fun m!8019360 () Bool)

(assert (=> bm!674894 m!8019360))

(assert (=> b!7362171 d!2282311))

(declare-fun b!7362467 () Bool)

(declare-fun e!4408048 () Bool)

(declare-fun tp!2092180 () Bool)

(assert (=> b!7362467 (= e!4408048 tp!2092180)))

(assert (=> b!7362168 (= tp!2092136 e!4408048)))

(declare-fun b!7362465 () Bool)

(assert (=> b!7362465 (= e!4408048 tp_is_empty!48717)))

(declare-fun b!7362466 () Bool)

(declare-fun tp!2092179 () Bool)

(declare-fun tp!2092176 () Bool)

(assert (=> b!7362466 (= e!4408048 (and tp!2092179 tp!2092176))))

(declare-fun b!7362468 () Bool)

(declare-fun tp!2092177 () Bool)

(declare-fun tp!2092178 () Bool)

(assert (=> b!7362468 (= e!4408048 (and tp!2092177 tp!2092178))))

(assert (= (and b!7362168 (is-ElementMatch!19236 (regOne!38984 r1!2370))) b!7362465))

(assert (= (and b!7362168 (is-Concat!28081 (regOne!38984 r1!2370))) b!7362466))

(assert (= (and b!7362168 (is-Star!19236 (regOne!38984 r1!2370))) b!7362467))

(assert (= (and b!7362168 (is-Union!19236 (regOne!38984 r1!2370))) b!7362468))

(declare-fun b!7362471 () Bool)

(declare-fun e!4408049 () Bool)

(declare-fun tp!2092185 () Bool)

(assert (=> b!7362471 (= e!4408049 tp!2092185)))

(assert (=> b!7362168 (= tp!2092135 e!4408049)))

(declare-fun b!7362469 () Bool)

(assert (=> b!7362469 (= e!4408049 tp_is_empty!48717)))

(declare-fun b!7362470 () Bool)

(declare-fun tp!2092184 () Bool)

(declare-fun tp!2092181 () Bool)

(assert (=> b!7362470 (= e!4408049 (and tp!2092184 tp!2092181))))

(declare-fun b!7362472 () Bool)

(declare-fun tp!2092182 () Bool)

(declare-fun tp!2092183 () Bool)

(assert (=> b!7362472 (= e!4408049 (and tp!2092182 tp!2092183))))

(assert (= (and b!7362168 (is-ElementMatch!19236 (regTwo!38984 r1!2370))) b!7362469))

(assert (= (and b!7362168 (is-Concat!28081 (regTwo!38984 r1!2370))) b!7362470))

(assert (= (and b!7362168 (is-Star!19236 (regTwo!38984 r1!2370))) b!7362471))

(assert (= (and b!7362168 (is-Union!19236 (regTwo!38984 r1!2370))) b!7362472))

(declare-fun b!7362475 () Bool)

(declare-fun e!4408050 () Bool)

(declare-fun tp!2092190 () Bool)

(assert (=> b!7362475 (= e!4408050 tp!2092190)))

(assert (=> b!7362162 (= tp!2092140 e!4408050)))

(declare-fun b!7362473 () Bool)

(assert (=> b!7362473 (= e!4408050 tp_is_empty!48717)))

(declare-fun b!7362474 () Bool)

(declare-fun tp!2092189 () Bool)

(declare-fun tp!2092186 () Bool)

(assert (=> b!7362474 (= e!4408050 (and tp!2092189 tp!2092186))))

(declare-fun b!7362476 () Bool)

(declare-fun tp!2092187 () Bool)

(declare-fun tp!2092188 () Bool)

(assert (=> b!7362476 (= e!4408050 (and tp!2092187 tp!2092188))))

(assert (= (and b!7362162 (is-ElementMatch!19236 (reg!19565 r1!2370))) b!7362473))

(assert (= (and b!7362162 (is-Concat!28081 (reg!19565 r1!2370))) b!7362474))

(assert (= (and b!7362162 (is-Star!19236 (reg!19565 r1!2370))) b!7362475))

(assert (= (and b!7362162 (is-Union!19236 (reg!19565 r1!2370))) b!7362476))

(declare-fun b!7362481 () Bool)

(declare-fun e!4408053 () Bool)

(declare-fun tp!2092195 () Bool)

(declare-fun tp!2092196 () Bool)

(assert (=> b!7362481 (= e!4408053 (and tp!2092195 tp!2092196))))

(assert (=> b!7362169 (= tp!2092138 e!4408053)))

(assert (= (and b!7362169 (is-Cons!71608 (exprs!8676 cWitness!61))) b!7362481))

(declare-fun b!7362482 () Bool)

(declare-fun e!4408054 () Bool)

(declare-fun tp!2092197 () Bool)

(declare-fun tp!2092198 () Bool)

(assert (=> b!7362482 (= e!4408054 (and tp!2092197 tp!2092198))))

(assert (=> b!7362163 (= tp!2092139 e!4408054)))

(assert (= (and b!7362163 (is-Cons!71608 (exprs!8676 ct1!282))) b!7362482))

(declare-fun b!7362485 () Bool)

(declare-fun e!4408055 () Bool)

(declare-fun tp!2092203 () Bool)

(assert (=> b!7362485 (= e!4408055 tp!2092203)))

(assert (=> b!7362160 (= tp!2092134 e!4408055)))

(declare-fun b!7362483 () Bool)

(assert (=> b!7362483 (= e!4408055 tp_is_empty!48717)))

(declare-fun b!7362484 () Bool)

(declare-fun tp!2092202 () Bool)

(declare-fun tp!2092199 () Bool)

(assert (=> b!7362484 (= e!4408055 (and tp!2092202 tp!2092199))))

(declare-fun b!7362486 () Bool)

(declare-fun tp!2092200 () Bool)

(declare-fun tp!2092201 () Bool)

(assert (=> b!7362486 (= e!4408055 (and tp!2092200 tp!2092201))))

(assert (= (and b!7362160 (is-ElementMatch!19236 (regOne!38985 r1!2370))) b!7362483))

(assert (= (and b!7362160 (is-Concat!28081 (regOne!38985 r1!2370))) b!7362484))

(assert (= (and b!7362160 (is-Star!19236 (regOne!38985 r1!2370))) b!7362485))

(assert (= (and b!7362160 (is-Union!19236 (regOne!38985 r1!2370))) b!7362486))

(declare-fun b!7362489 () Bool)

(declare-fun e!4408056 () Bool)

(declare-fun tp!2092208 () Bool)

(assert (=> b!7362489 (= e!4408056 tp!2092208)))

(assert (=> b!7362160 (= tp!2092141 e!4408056)))

(declare-fun b!7362487 () Bool)

(assert (=> b!7362487 (= e!4408056 tp_is_empty!48717)))

(declare-fun b!7362488 () Bool)

(declare-fun tp!2092207 () Bool)

(declare-fun tp!2092204 () Bool)

(assert (=> b!7362488 (= e!4408056 (and tp!2092207 tp!2092204))))

(declare-fun b!7362490 () Bool)

(declare-fun tp!2092205 () Bool)

(declare-fun tp!2092206 () Bool)

(assert (=> b!7362490 (= e!4408056 (and tp!2092205 tp!2092206))))

(assert (= (and b!7362160 (is-ElementMatch!19236 (regTwo!38985 r1!2370))) b!7362487))

(assert (= (and b!7362160 (is-Concat!28081 (regTwo!38985 r1!2370))) b!7362488))

(assert (= (and b!7362160 (is-Star!19236 (regTwo!38985 r1!2370))) b!7362489))

(assert (= (and b!7362160 (is-Union!19236 (regTwo!38985 r1!2370))) b!7362490))

(declare-fun b!7362491 () Bool)

(declare-fun e!4408057 () Bool)

(declare-fun tp!2092209 () Bool)

(declare-fun tp!2092210 () Bool)

(assert (=> b!7362491 (= e!4408057 (and tp!2092209 tp!2092210))))

(assert (=> b!7362170 (= tp!2092137 e!4408057)))

(assert (= (and b!7362170 (is-Cons!71608 (exprs!8676 ct2!378))) b!7362491))

(push 1)

(assert (not bm!674803))

(assert (not b!7362485))

(assert (not b!7362472))

(assert (not b!7362488))

(assert (not b!7362489))

(assert (not b!7362466))

(assert (not b!7362361))

(assert (not bm!674864))

(assert (not bm!674833))

(assert tp_is_empty!48717)

(assert (not b!7362486))

(assert (not bm!674838))

(assert (not d!2282283))

(assert (not bm!674892))

(assert (not d!2282281))

(assert (not bm!674837))

(assert (not bm!674870))

(assert (not b!7362476))

(assert (not bm!674834))

(assert (not bm!674855))

(assert (not b!7362414))

(assert (not bm!674830))

(assert (not d!2282305))

(assert (not bm!674831))

(assert (not b!7362481))

(assert (not b!7362467))

(assert (not b!7362468))

(assert (not bm!674858))

(assert (not bm!674894))

(assert (not bm!674893))

(assert (not b!7362372))

(assert (not b!7362415))

(assert (not bm!674827))

(assert (not bm!674872))

(assert (not b!7362484))

(assert (not bm!674832))

(assert (not b!7362470))

(assert (not bm!674887))

(assert (not b!7362482))

(assert (not bm!674890))

(assert (not bm!674866))

(assert (not b!7362474))

(assert (not bm!674804))

(assert (not b!7362232))

(assert (not bm!674826))

(assert (not b!7362440))

(assert (not d!2282307))

(assert (not b!7362491))

(assert (not bm!674867))

(assert (not b!7362471))

(assert (not b!7362475))

(assert (not bm!674860))

(assert (not bm!674861))

(assert (not bm!674839))

(assert (not b!7362448))

(assert (not b!7362490))

(assert (not b!7362383))

(assert (not d!2282279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

