; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187736 () Bool)

(assert start!187736)

(declare-fun b!1873289 () Bool)

(declare-fun e!1195142 () Bool)

(declare-fun tp!532916 () Bool)

(declare-fun tp!532919 () Bool)

(assert (=> b!1873289 (= e!1195142 (and tp!532916 tp!532919))))

(declare-fun b!1873290 () Bool)

(declare-fun tp_is_empty!8845 () Bool)

(assert (=> b!1873290 (= e!1195142 tp_is_empty!8845)))

(declare-fun b!1873291 () Bool)

(declare-fun tp!532915 () Bool)

(assert (=> b!1873291 (= e!1195142 tp!532915)))

(declare-fun b!1873292 () Bool)

(declare-fun tp!532917 () Bool)

(declare-fun tp!532918 () Bool)

(assert (=> b!1873292 (= e!1195142 (and tp!532917 tp!532918))))

(declare-fun res!838254 () Bool)

(declare-fun e!1195140 () Bool)

(assert (=> start!187736 (=> (not res!838254) (not e!1195140))))

(declare-datatypes ((C!10302 0))(
  ( (C!10303 (val!6039 Int)) )
))
(declare-datatypes ((Regex!5076 0))(
  ( (ElementMatch!5076 (c!305354 C!10302)) (Concat!8895 (regOne!10664 Regex!5076) (regTwo!10664 Regex!5076)) (EmptyExpr!5076) (Star!5076 (reg!5405 Regex!5076)) (EmptyLang!5076) (Union!5076 (regOne!10665 Regex!5076) (regTwo!10665 Regex!5076)) )
))
(declare-fun r!13571 () Regex!5076)

(declare-fun validRegex!2090 (Regex!5076) Bool)

(assert (=> start!187736 (= res!838254 (validRegex!2090 r!13571))))

(assert (=> start!187736 e!1195140))

(assert (=> start!187736 e!1195142))

(declare-fun e!1195141 () Bool)

(assert (=> start!187736 e!1195141))

(declare-fun b!1873293 () Bool)

(declare-datatypes ((List!20864 0))(
  ( (Nil!20782) (Cons!20782 (h!26183 C!10302) (t!173081 List!20864)) )
))
(declare-fun input!6045 () List!20864)

(declare-fun size!16500 (List!20864) Int)

(assert (=> b!1873293 (= e!1195140 (< (size!16500 input!6045) 0))))

(declare-fun b!1873294 () Bool)

(declare-fun tp!532920 () Bool)

(assert (=> b!1873294 (= e!1195141 (and tp_is_empty!8845 tp!532920))))

(assert (= (and start!187736 res!838254) b!1873293))

(assert (= (and start!187736 (is-ElementMatch!5076 r!13571)) b!1873290))

(assert (= (and start!187736 (is-Concat!8895 r!13571)) b!1873289))

(assert (= (and start!187736 (is-Star!5076 r!13571)) b!1873291))

(assert (= (and start!187736 (is-Union!5076 r!13571)) b!1873292))

(assert (= (and start!187736 (is-Cons!20782 input!6045)) b!1873294))

(declare-fun m!2298877 () Bool)

(assert (=> start!187736 m!2298877))

(declare-fun m!2298879 () Bool)

(assert (=> b!1873293 m!2298879))

(push 1)

(assert (not b!1873294))

(assert (not b!1873291))

(assert tp_is_empty!8845)

(assert (not b!1873293))

(assert (not b!1873289))

(assert (not b!1873292))

(assert (not start!187736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572651 () Bool)

(declare-fun lt!719886 () Int)

(assert (=> d!572651 (>= lt!719886 0)))

(declare-fun e!1195154 () Int)

(assert (=> d!572651 (= lt!719886 e!1195154)))

(declare-fun c!305358 () Bool)

(assert (=> d!572651 (= c!305358 (is-Nil!20782 input!6045))))

(assert (=> d!572651 (= (size!16500 input!6045) lt!719886)))

(declare-fun b!1873317 () Bool)

(assert (=> b!1873317 (= e!1195154 0)))

(declare-fun b!1873318 () Bool)

(assert (=> b!1873318 (= e!1195154 (+ 1 (size!16500 (t!173081 input!6045))))))

(assert (= (and d!572651 c!305358) b!1873317))

(assert (= (and d!572651 (not c!305358)) b!1873318))

(declare-fun m!2298885 () Bool)

(assert (=> b!1873318 m!2298885))

(assert (=> b!1873293 d!572651))

(declare-fun b!1873341 () Bool)

(declare-fun e!1195171 () Bool)

(declare-fun e!1195174 () Bool)

(assert (=> b!1873341 (= e!1195171 e!1195174)))

(declare-fun c!305365 () Bool)

(assert (=> b!1873341 (= c!305365 (is-Union!5076 r!13571))))

(declare-fun b!1873342 () Bool)

(declare-fun e!1195173 () Bool)

(assert (=> b!1873342 (= e!1195173 e!1195171)))

(declare-fun c!305366 () Bool)

(assert (=> b!1873342 (= c!305366 (is-Star!5076 r!13571))))

(declare-fun b!1873343 () Bool)

(declare-fun e!1195175 () Bool)

(declare-fun call!116107 () Bool)

(assert (=> b!1873343 (= e!1195175 call!116107)))

(declare-fun b!1873344 () Bool)

(declare-fun e!1195177 () Bool)

(declare-fun call!116105 () Bool)

(assert (=> b!1873344 (= e!1195177 call!116105)))

(declare-fun bm!116101 () Bool)

(declare-fun call!116106 () Bool)

(assert (=> bm!116101 (= call!116106 (validRegex!2090 (ite c!305365 (regTwo!10665 r!13571) (regOne!10664 r!13571))))))

(declare-fun b!1873345 () Bool)

(assert (=> b!1873345 (= e!1195171 e!1195175)))

(declare-fun res!838270 () Bool)

(declare-fun nullable!1571 (Regex!5076) Bool)

(assert (=> b!1873345 (= res!838270 (not (nullable!1571 (reg!5405 r!13571))))))

(assert (=> b!1873345 (=> (not res!838270) (not e!1195175))))

(declare-fun d!572653 () Bool)

(declare-fun res!838272 () Bool)

(assert (=> d!572653 (=> res!838272 e!1195173)))

(assert (=> d!572653 (= res!838272 (is-ElementMatch!5076 r!13571))))

(assert (=> d!572653 (= (validRegex!2090 r!13571) e!1195173)))

(declare-fun bm!116100 () Bool)

(assert (=> bm!116100 (= call!116105 call!116107)))

(declare-fun b!1873346 () Bool)

(declare-fun e!1195176 () Bool)

(assert (=> b!1873346 (= e!1195176 call!116106)))

(declare-fun b!1873347 () Bool)

(declare-fun res!838269 () Bool)

(assert (=> b!1873347 (=> (not res!838269) (not e!1195176))))

(assert (=> b!1873347 (= res!838269 call!116105)))

(assert (=> b!1873347 (= e!1195174 e!1195176)))

(declare-fun bm!116102 () Bool)

(assert (=> bm!116102 (= call!116107 (validRegex!2090 (ite c!305366 (reg!5405 r!13571) (ite c!305365 (regOne!10665 r!13571) (regTwo!10664 r!13571)))))))

(declare-fun b!1873348 () Bool)

(declare-fun res!838271 () Bool)

(declare-fun e!1195172 () Bool)

(assert (=> b!1873348 (=> res!838271 e!1195172)))

(assert (=> b!1873348 (= res!838271 (not (is-Concat!8895 r!13571)))))

(assert (=> b!1873348 (= e!1195174 e!1195172)))

(declare-fun b!1873349 () Bool)

(assert (=> b!1873349 (= e!1195172 e!1195177)))

(declare-fun res!838268 () Bool)

(assert (=> b!1873349 (=> (not res!838268) (not e!1195177))))

(assert (=> b!1873349 (= res!838268 call!116106)))

(assert (= (and d!572653 (not res!838272)) b!1873342))

(assert (= (and b!1873342 c!305366) b!1873345))

(assert (= (and b!1873342 (not c!305366)) b!1873341))

(assert (= (and b!1873345 res!838270) b!1873343))

(assert (= (and b!1873341 c!305365) b!1873347))

(assert (= (and b!1873341 (not c!305365)) b!1873348))

(assert (= (and b!1873347 res!838269) b!1873346))

(assert (= (and b!1873348 (not res!838271)) b!1873349))

(assert (= (and b!1873349 res!838268) b!1873344))

(assert (= (or b!1873347 b!1873344) bm!116100))

(assert (= (or b!1873346 b!1873349) bm!116101))

(assert (= (or b!1873343 bm!116100) bm!116102))

(declare-fun m!2298887 () Bool)

(assert (=> bm!116101 m!2298887))

(declare-fun m!2298889 () Bool)

(assert (=> b!1873345 m!2298889))

(declare-fun m!2298891 () Bool)

(assert (=> bm!116102 m!2298891))

(assert (=> start!187736 d!572653))

(declare-fun b!1873356 () Bool)

(declare-fun e!1195181 () Bool)

(declare-fun tp!532941 () Bool)

(assert (=> b!1873356 (= e!1195181 (and tp_is_empty!8845 tp!532941))))

(assert (=> b!1873294 (= tp!532920 e!1195181)))

(assert (= (and b!1873294 (is-Cons!20782 (t!173081 input!6045))) b!1873356))

(declare-fun b!1873367 () Bool)

(declare-fun e!1195184 () Bool)

(assert (=> b!1873367 (= e!1195184 tp_is_empty!8845)))

(assert (=> b!1873289 (= tp!532916 e!1195184)))

(declare-fun b!1873369 () Bool)

(declare-fun tp!532954 () Bool)

(assert (=> b!1873369 (= e!1195184 tp!532954)))

(declare-fun b!1873368 () Bool)

(declare-fun tp!532952 () Bool)

(declare-fun tp!532956 () Bool)

(assert (=> b!1873368 (= e!1195184 (and tp!532952 tp!532956))))

(declare-fun b!1873370 () Bool)

(declare-fun tp!532953 () Bool)

(declare-fun tp!532955 () Bool)

(assert (=> b!1873370 (= e!1195184 (and tp!532953 tp!532955))))

(assert (= (and b!1873289 (is-ElementMatch!5076 (regOne!10664 r!13571))) b!1873367))

(assert (= (and b!1873289 (is-Concat!8895 (regOne!10664 r!13571))) b!1873368))

(assert (= (and b!1873289 (is-Star!5076 (regOne!10664 r!13571))) b!1873369))

(assert (= (and b!1873289 (is-Union!5076 (regOne!10664 r!13571))) b!1873370))

(declare-fun b!1873371 () Bool)

(declare-fun e!1195185 () Bool)

(assert (=> b!1873371 (= e!1195185 tp_is_empty!8845)))

(assert (=> b!1873289 (= tp!532919 e!1195185)))

(declare-fun b!1873373 () Bool)

(declare-fun tp!532959 () Bool)

(assert (=> b!1873373 (= e!1195185 tp!532959)))

(declare-fun b!1873372 () Bool)

(declare-fun tp!532957 () Bool)

(declare-fun tp!532961 () Bool)

(assert (=> b!1873372 (= e!1195185 (and tp!532957 tp!532961))))

(declare-fun b!1873374 () Bool)

(declare-fun tp!532958 () Bool)

(declare-fun tp!532960 () Bool)

(assert (=> b!1873374 (= e!1195185 (and tp!532958 tp!532960))))

(assert (= (and b!1873289 (is-ElementMatch!5076 (regTwo!10664 r!13571))) b!1873371))

(assert (= (and b!1873289 (is-Concat!8895 (regTwo!10664 r!13571))) b!1873372))

(assert (= (and b!1873289 (is-Star!5076 (regTwo!10664 r!13571))) b!1873373))

(assert (= (and b!1873289 (is-Union!5076 (regTwo!10664 r!13571))) b!1873374))

(declare-fun b!1873375 () Bool)

(declare-fun e!1195186 () Bool)

(assert (=> b!1873375 (= e!1195186 tp_is_empty!8845)))

(assert (=> b!1873291 (= tp!532915 e!1195186)))

(declare-fun b!1873377 () Bool)

(declare-fun tp!532964 () Bool)

(assert (=> b!1873377 (= e!1195186 tp!532964)))

(declare-fun b!1873376 () Bool)

(declare-fun tp!532962 () Bool)

(declare-fun tp!532966 () Bool)

(assert (=> b!1873376 (= e!1195186 (and tp!532962 tp!532966))))

(declare-fun b!1873378 () Bool)

(declare-fun tp!532963 () Bool)

(declare-fun tp!532965 () Bool)

(assert (=> b!1873378 (= e!1195186 (and tp!532963 tp!532965))))

(assert (= (and b!1873291 (is-ElementMatch!5076 (reg!5405 r!13571))) b!1873375))

(assert (= (and b!1873291 (is-Concat!8895 (reg!5405 r!13571))) b!1873376))

(assert (= (and b!1873291 (is-Star!5076 (reg!5405 r!13571))) b!1873377))

(assert (= (and b!1873291 (is-Union!5076 (reg!5405 r!13571))) b!1873378))

(declare-fun b!1873379 () Bool)

(declare-fun e!1195187 () Bool)

(assert (=> b!1873379 (= e!1195187 tp_is_empty!8845)))

(assert (=> b!1873292 (= tp!532917 e!1195187)))

(declare-fun b!1873381 () Bool)

(declare-fun tp!532969 () Bool)

(assert (=> b!1873381 (= e!1195187 tp!532969)))

(declare-fun b!1873380 () Bool)

(declare-fun tp!532967 () Bool)

(declare-fun tp!532971 () Bool)

(assert (=> b!1873380 (= e!1195187 (and tp!532967 tp!532971))))

(declare-fun b!1873382 () Bool)

(declare-fun tp!532968 () Bool)

(declare-fun tp!532970 () Bool)

(assert (=> b!1873382 (= e!1195187 (and tp!532968 tp!532970))))

(assert (= (and b!1873292 (is-ElementMatch!5076 (regOne!10665 r!13571))) b!1873379))

(assert (= (and b!1873292 (is-Concat!8895 (regOne!10665 r!13571))) b!1873380))

(assert (= (and b!1873292 (is-Star!5076 (regOne!10665 r!13571))) b!1873381))

(assert (= (and b!1873292 (is-Union!5076 (regOne!10665 r!13571))) b!1873382))

(declare-fun b!1873383 () Bool)

(declare-fun e!1195188 () Bool)

(assert (=> b!1873383 (= e!1195188 tp_is_empty!8845)))

(assert (=> b!1873292 (= tp!532918 e!1195188)))

(declare-fun b!1873385 () Bool)

(declare-fun tp!532974 () Bool)

(assert (=> b!1873385 (= e!1195188 tp!532974)))

(declare-fun b!1873384 () Bool)

(declare-fun tp!532972 () Bool)

(declare-fun tp!532976 () Bool)

(assert (=> b!1873384 (= e!1195188 (and tp!532972 tp!532976))))

(declare-fun b!1873386 () Bool)

(declare-fun tp!532973 () Bool)

(declare-fun tp!532975 () Bool)

(assert (=> b!1873386 (= e!1195188 (and tp!532973 tp!532975))))

(assert (= (and b!1873292 (is-ElementMatch!5076 (regTwo!10665 r!13571))) b!1873383))

(assert (= (and b!1873292 (is-Concat!8895 (regTwo!10665 r!13571))) b!1873384))

(assert (= (and b!1873292 (is-Star!5076 (regTwo!10665 r!13571))) b!1873385))

(assert (= (and b!1873292 (is-Union!5076 (regTwo!10665 r!13571))) b!1873386))

(push 1)

(assert (not b!1873368))

(assert (not b!1873345))

(assert (not b!1873370))

(assert (not b!1873373))

(assert tp_is_empty!8845)

(assert (not b!1873381))

(assert (not b!1873369))

(assert (not b!1873385))

(assert (not b!1873382))

(assert (not bm!116102))

(assert (not b!1873378))

(assert (not b!1873372))

(assert (not b!1873356))

(assert (not b!1873380))

(assert (not b!1873376))

(assert (not b!1873374))

(assert (not b!1873318))

(assert (not b!1873386))

(assert (not b!1873377))

(assert (not b!1873384))

(assert (not bm!116101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

