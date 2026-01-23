; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742116 () Bool)

(assert start!742116)

(declare-fun b!7827098 () Bool)

(declare-fun e!4629808 () Bool)

(declare-fun tp!2312501 () Bool)

(declare-fun tp!2312504 () Bool)

(assert (=> b!7827098 (= e!4629808 (and tp!2312501 tp!2312504))))

(declare-fun b!7827099 () Bool)

(declare-fun e!4629807 () Bool)

(declare-fun tp!2312496 () Bool)

(declare-fun tp!2312500 () Bool)

(assert (=> b!7827099 (= e!4629807 (and tp!2312496 tp!2312500))))

(declare-fun b!7827100 () Bool)

(declare-fun res!3114298 () Bool)

(declare-fun e!4629801 () Bool)

(assert (=> b!7827100 (=> (not res!3114298) (not e!4629801))))

(declare-datatypes ((C!42234 0))(
  ( (C!42235 (val!31557 Int)) )
))
(declare-datatypes ((List!73791 0))(
  ( (Nil!73667) (Cons!73667 (h!80115 C!42234) (t!388526 List!73791)) )
))
(declare-fun s1!4101 () List!73791)

(declare-fun s!14274 () List!73791)

(declare-fun s2!3721 () List!73791)

(declare-fun ++!17988 (List!73791 List!73791) List!73791)

(assert (=> b!7827100 (= res!3114298 (= (++!17988 s1!4101 s2!3721) s!14274))))

(declare-fun b!7827101 () Bool)

(declare-fun res!3114296 () Bool)

(assert (=> b!7827101 (=> (not res!3114296) (not e!4629801))))

(declare-datatypes ((Regex!20954 0))(
  ( (ElementMatch!20954 (c!1440089 C!42234)) (Concat!29799 (regOne!42420 Regex!20954) (regTwo!42420 Regex!20954)) (EmptyExpr!20954) (Star!20954 (reg!21283 Regex!20954)) (EmptyLang!20954) (Union!20954 (regOne!42421 Regex!20954) (regTwo!42421 Regex!20954)) )
))
(declare-fun r2!6199 () Regex!20954)

(declare-fun validRegex!11368 (Regex!20954) Bool)

(assert (=> b!7827101 (= res!3114296 (validRegex!11368 r2!6199))))

(declare-fun s1Rec!453 () List!73791)

(declare-fun s2Rec!453 () List!73791)

(declare-fun e!4629803 () Bool)

(declare-fun b!7827102 () Bool)

(assert (=> b!7827102 (= e!4629803 (and (= s1Rec!453 s1!4101) (not (= s2Rec!453 s2!3721))))))

(declare-fun b!7827103 () Bool)

(declare-fun e!4629804 () Bool)

(declare-fun matchR!10410 (Regex!20954 List!73791) Bool)

(assert (=> b!7827103 (= e!4629804 (not (matchR!10410 r2!6199 s2Rec!453)))))

(declare-fun b!7827104 () Bool)

(declare-fun tp!2312497 () Bool)

(assert (=> b!7827104 (= e!4629808 tp!2312497)))

(declare-fun b!7827105 () Bool)

(declare-fun res!3114299 () Bool)

(assert (=> b!7827105 (=> (not res!3114299) (not e!4629801))))

(assert (=> b!7827105 (= res!3114299 (= (++!17988 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7827106 () Bool)

(declare-fun tp!2312491 () Bool)

(declare-fun tp!2312495 () Bool)

(assert (=> b!7827106 (= e!4629808 (and tp!2312491 tp!2312495))))

(declare-fun b!7827107 () Bool)

(declare-fun e!4629805 () Bool)

(declare-fun tp_is_empty!52263 () Bool)

(declare-fun tp!2312494 () Bool)

(assert (=> b!7827107 (= e!4629805 (and tp_is_empty!52263 tp!2312494))))

(declare-fun b!7827108 () Bool)

(declare-fun e!4629809 () Bool)

(declare-fun tp!2312499 () Bool)

(assert (=> b!7827108 (= e!4629809 (and tp_is_empty!52263 tp!2312499))))

(declare-fun b!7827109 () Bool)

(assert (=> b!7827109 (= e!4629807 tp_is_empty!52263)))

(declare-fun b!7827110 () Bool)

(declare-fun res!3114297 () Bool)

(assert (=> b!7827110 (=> (not res!3114297) (not e!4629801))))

(assert (=> b!7827110 (= res!3114297 (is-Nil!73667 s2Rec!453))))

(declare-fun b!7827111 () Bool)

(declare-fun tp!2312493 () Bool)

(assert (=> b!7827111 (= e!4629807 tp!2312493)))

(declare-fun b!7827112 () Bool)

(declare-fun res!3114295 () Bool)

(assert (=> b!7827112 (=> (not res!3114295) (not e!4629801))))

(assert (=> b!7827112 (= res!3114295 (matchR!10410 r2!6199 s2!3721))))

(declare-fun res!3114301 () Bool)

(assert (=> start!742116 (=> (not res!3114301) (not e!4629801))))

(declare-fun r1!6261 () Regex!20954)

(assert (=> start!742116 (= res!3114301 (validRegex!11368 r1!6261))))

(assert (=> start!742116 e!4629801))

(assert (=> start!742116 e!4629808))

(declare-fun e!4629802 () Bool)

(assert (=> start!742116 e!4629802))

(assert (=> start!742116 e!4629805))

(assert (=> start!742116 e!4629809))

(declare-fun e!4629806 () Bool)

(assert (=> start!742116 e!4629806))

(assert (=> start!742116 e!4629807))

(declare-fun e!4629800 () Bool)

(assert (=> start!742116 e!4629800))

(declare-fun b!7827113 () Bool)

(assert (=> b!7827113 (= e!4629801 e!4629803)))

(declare-fun res!3114291 () Bool)

(assert (=> b!7827113 (=> (not res!3114291) (not e!4629803))))

(declare-fun lt!2676789 () Int)

(declare-fun size!42754 (List!73791) Int)

(assert (=> b!7827113 (= res!3114291 (= lt!2676789 (size!42754 s!14274)))))

(assert (=> b!7827113 (= lt!2676789 (size!42754 s1Rec!453))))

(declare-fun b!7827114 () Bool)

(declare-fun res!3114293 () Bool)

(assert (=> b!7827114 (=> (not res!3114293) (not e!4629801))))

(assert (=> b!7827114 (= res!3114293 e!4629804)))

(declare-fun res!3114294 () Bool)

(assert (=> b!7827114 (=> res!3114294 e!4629804)))

(assert (=> b!7827114 (= res!3114294 (not (matchR!10410 r1!6261 s1Rec!453)))))

(declare-fun b!7827115 () Bool)

(declare-fun tp!2312498 () Bool)

(assert (=> b!7827115 (= e!4629806 (and tp_is_empty!52263 tp!2312498))))

(declare-fun b!7827116 () Bool)

(assert (=> b!7827116 (= e!4629808 tp_is_empty!52263)))

(declare-fun b!7827117 () Bool)

(declare-fun res!3114300 () Bool)

(assert (=> b!7827117 (=> (not res!3114300) (not e!4629801))))

(declare-fun isPrefix!6304 (List!73791 List!73791) Bool)

(assert (=> b!7827117 (= res!3114300 (isPrefix!6304 s1Rec!453 s1!4101))))

(declare-fun b!7827118 () Bool)

(declare-fun tp!2312502 () Bool)

(declare-fun tp!2312490 () Bool)

(assert (=> b!7827118 (= e!4629807 (and tp!2312502 tp!2312490))))

(declare-fun b!7827119 () Bool)

(declare-fun res!3114302 () Bool)

(assert (=> b!7827119 (=> (not res!3114302) (not e!4629803))))

(assert (=> b!7827119 (= res!3114302 (= lt!2676789 (size!42754 s1!4101)))))

(declare-fun b!7827120 () Bool)

(declare-fun tp!2312492 () Bool)

(assert (=> b!7827120 (= e!4629802 (and tp_is_empty!52263 tp!2312492))))

(declare-fun b!7827121 () Bool)

(declare-fun res!3114292 () Bool)

(assert (=> b!7827121 (=> (not res!3114292) (not e!4629801))))

(assert (=> b!7827121 (= res!3114292 (matchR!10410 r1!6261 s1!4101))))

(declare-fun b!7827122 () Bool)

(declare-fun tp!2312503 () Bool)

(assert (=> b!7827122 (= e!4629800 (and tp_is_empty!52263 tp!2312503))))

(assert (= (and start!742116 res!3114301) b!7827101))

(assert (= (and b!7827101 res!3114296) b!7827100))

(assert (= (and b!7827100 res!3114298) b!7827117))

(assert (= (and b!7827117 res!3114300) b!7827105))

(assert (= (and b!7827105 res!3114299) b!7827121))

(assert (= (and b!7827121 res!3114292) b!7827112))

(assert (= (and b!7827112 res!3114295) b!7827114))

(assert (= (and b!7827114 (not res!3114294)) b!7827103))

(assert (= (and b!7827114 res!3114293) b!7827110))

(assert (= (and b!7827110 res!3114297) b!7827113))

(assert (= (and b!7827113 res!3114291) b!7827119))

(assert (= (and b!7827119 res!3114302) b!7827102))

(assert (= (and start!742116 (is-ElementMatch!20954 r2!6199)) b!7827116))

(assert (= (and start!742116 (is-Concat!29799 r2!6199)) b!7827098))

(assert (= (and start!742116 (is-Star!20954 r2!6199)) b!7827104))

(assert (= (and start!742116 (is-Union!20954 r2!6199)) b!7827106))

(assert (= (and start!742116 (is-Cons!73667 s1!4101)) b!7827120))

(assert (= (and start!742116 (is-Cons!73667 s2!3721)) b!7827107))

(assert (= (and start!742116 (is-Cons!73667 s2Rec!453)) b!7827108))

(assert (= (and start!742116 (is-Cons!73667 s!14274)) b!7827115))

(assert (= (and start!742116 (is-ElementMatch!20954 r1!6261)) b!7827109))

(assert (= (and start!742116 (is-Concat!29799 r1!6261)) b!7827118))

(assert (= (and start!742116 (is-Star!20954 r1!6261)) b!7827111))

(assert (= (and start!742116 (is-Union!20954 r1!6261)) b!7827099))

(assert (= (and start!742116 (is-Cons!73667 s1Rec!453)) b!7827122))

(declare-fun m!8247318 () Bool)

(assert (=> b!7827114 m!8247318))

(declare-fun m!8247320 () Bool)

(assert (=> b!7827117 m!8247320))

(declare-fun m!8247322 () Bool)

(assert (=> start!742116 m!8247322))

(declare-fun m!8247324 () Bool)

(assert (=> b!7827100 m!8247324))

(declare-fun m!8247326 () Bool)

(assert (=> b!7827113 m!8247326))

(declare-fun m!8247328 () Bool)

(assert (=> b!7827113 m!8247328))

(declare-fun m!8247330 () Bool)

(assert (=> b!7827112 m!8247330))

(declare-fun m!8247332 () Bool)

(assert (=> b!7827105 m!8247332))

(declare-fun m!8247334 () Bool)

(assert (=> b!7827119 m!8247334))

(declare-fun m!8247336 () Bool)

(assert (=> b!7827121 m!8247336))

(declare-fun m!8247338 () Bool)

(assert (=> b!7827101 m!8247338))

(declare-fun m!8247340 () Bool)

(assert (=> b!7827103 m!8247340))

(push 1)

(assert (not b!7827101))

(assert (not b!7827118))

(assert (not b!7827114))

(assert (not b!7827100))

(assert (not b!7827099))

(assert (not b!7827105))

(assert (not start!742116))

(assert (not b!7827103))

(assert (not b!7827112))

(assert tp_is_empty!52263)

(assert (not b!7827119))

(assert (not b!7827117))

(assert (not b!7827115))

(assert (not b!7827104))

(assert (not b!7827108))

(assert (not b!7827098))

(assert (not b!7827120))

(assert (not b!7827122))

(assert (not b!7827107))

(assert (not b!7827111))

(assert (not b!7827121))

(assert (not b!7827106))

(assert (not b!7827113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7827232 () Bool)

(declare-fun e!4629871 () Bool)

(declare-fun e!4629868 () Bool)

(assert (=> b!7827232 (= e!4629871 e!4629868)))

(declare-fun res!3114358 () Bool)

(assert (=> b!7827232 (=> (not res!3114358) (not e!4629868))))

(declare-fun call!725934 () Bool)

(assert (=> b!7827232 (= res!3114358 call!725934)))

(declare-fun b!7827234 () Bool)

(declare-fun call!725935 () Bool)

(assert (=> b!7827234 (= e!4629868 call!725935)))

(declare-fun b!7827235 () Bool)

(declare-fun res!3114361 () Bool)

(declare-fun e!4629869 () Bool)

(assert (=> b!7827235 (=> (not res!3114361) (not e!4629869))))

(assert (=> b!7827235 (= res!3114361 call!725935)))

(declare-fun e!4629872 () Bool)

(assert (=> b!7827235 (= e!4629872 e!4629869)))

(declare-fun b!7827236 () Bool)

(declare-fun e!4629867 () Bool)

(declare-fun e!4629870 () Bool)

(assert (=> b!7827236 (= e!4629867 e!4629870)))

(declare-fun c!1440100 () Bool)

(assert (=> b!7827236 (= c!1440100 (is-Star!20954 r1!6261))))

(declare-fun b!7827237 () Bool)

(declare-fun e!4629866 () Bool)

(declare-fun call!725933 () Bool)

(assert (=> b!7827237 (= e!4629866 call!725933)))

(declare-fun b!7827238 () Bool)

(assert (=> b!7827238 (= e!4629870 e!4629866)))

(declare-fun res!3114360 () Bool)

(declare-fun nullable!9298 (Regex!20954) Bool)

(assert (=> b!7827238 (= res!3114360 (not (nullable!9298 (reg!21283 r1!6261))))))

(assert (=> b!7827238 (=> (not res!3114360) (not e!4629866))))

(declare-fun bm!725928 () Bool)

(assert (=> bm!725928 (= call!725935 call!725933)))

(declare-fun bm!725929 () Bool)

(declare-fun c!1440099 () Bool)

(assert (=> bm!725929 (= call!725934 (validRegex!11368 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))

(declare-fun bm!725930 () Bool)

(assert (=> bm!725930 (= call!725933 (validRegex!11368 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))

(declare-fun d!2350395 () Bool)

(declare-fun res!3114359 () Bool)

(assert (=> d!2350395 (=> res!3114359 e!4629867)))

(assert (=> d!2350395 (= res!3114359 (is-ElementMatch!20954 r1!6261))))

(assert (=> d!2350395 (= (validRegex!11368 r1!6261) e!4629867)))

(declare-fun b!7827233 () Bool)

(assert (=> b!7827233 (= e!4629869 call!725934)))

(declare-fun b!7827239 () Bool)

(declare-fun res!3114357 () Bool)

(assert (=> b!7827239 (=> res!3114357 e!4629871)))

(assert (=> b!7827239 (= res!3114357 (not (is-Concat!29799 r1!6261)))))

(assert (=> b!7827239 (= e!4629872 e!4629871)))

(declare-fun b!7827240 () Bool)

(assert (=> b!7827240 (= e!4629870 e!4629872)))

(assert (=> b!7827240 (= c!1440099 (is-Union!20954 r1!6261))))

(assert (= (and d!2350395 (not res!3114359)) b!7827236))

(assert (= (and b!7827236 c!1440100) b!7827238))

(assert (= (and b!7827236 (not c!1440100)) b!7827240))

(assert (= (and b!7827238 res!3114360) b!7827237))

(assert (= (and b!7827240 c!1440099) b!7827235))

(assert (= (and b!7827240 (not c!1440099)) b!7827239))

(assert (= (and b!7827235 res!3114361) b!7827233))

(assert (= (and b!7827239 (not res!3114357)) b!7827232))

(assert (= (and b!7827232 res!3114358) b!7827234))

(assert (= (or b!7827233 b!7827232) bm!725929))

(assert (= (or b!7827235 b!7827234) bm!725928))

(assert (= (or b!7827237 bm!725928) bm!725930))

(declare-fun m!8247366 () Bool)

(assert (=> b!7827238 m!8247366))

(declare-fun m!8247368 () Bool)

(assert (=> bm!725929 m!8247368))

(declare-fun m!8247370 () Bool)

(assert (=> bm!725930 m!8247370))

(assert (=> start!742116 d!2350395))

(declare-fun b!7827280 () Bool)

(declare-fun e!4629897 () Bool)

(declare-fun head!15987 (List!73791) C!42234)

(assert (=> b!7827280 (= e!4629897 (= (head!15987 s2!3721) (c!1440089 r2!6199)))))

(declare-fun b!7827281 () Bool)

(declare-fun e!4629899 () Bool)

(declare-fun e!4629900 () Bool)

(assert (=> b!7827281 (= e!4629899 e!4629900)))

(declare-fun res!3114385 () Bool)

(assert (=> b!7827281 (=> (not res!3114385) (not e!4629900))))

(declare-fun lt!2676795 () Bool)

(assert (=> b!7827281 (= res!3114385 (not lt!2676795))))

(declare-fun b!7827282 () Bool)

(declare-fun e!4629902 () Bool)

(assert (=> b!7827282 (= e!4629902 (not (= (head!15987 s2!3721) (c!1440089 r2!6199))))))

(declare-fun b!7827283 () Bool)

(declare-fun res!3114386 () Bool)

(assert (=> b!7827283 (=> (not res!3114386) (not e!4629897))))

(declare-fun isEmpty!42286 (List!73791) Bool)

(declare-fun tail!15528 (List!73791) List!73791)

(assert (=> b!7827283 (= res!3114386 (isEmpty!42286 (tail!15528 s2!3721)))))

(declare-fun b!7827284 () Bool)

(declare-fun e!4629901 () Bool)

(assert (=> b!7827284 (= e!4629901 (not lt!2676795))))

(declare-fun b!7827285 () Bool)

(declare-fun res!3114388 () Bool)

(assert (=> b!7827285 (=> res!3114388 e!4629899)))

(assert (=> b!7827285 (= res!3114388 e!4629897)))

(declare-fun res!3114392 () Bool)

(assert (=> b!7827285 (=> (not res!3114392) (not e!4629897))))

(assert (=> b!7827285 (= res!3114392 lt!2676795)))

(declare-fun b!7827286 () Bool)

(declare-fun res!3114389 () Bool)

(assert (=> b!7827286 (=> res!3114389 e!4629899)))

(assert (=> b!7827286 (= res!3114389 (not (is-ElementMatch!20954 r2!6199)))))

(assert (=> b!7827286 (= e!4629901 e!4629899)))

(declare-fun b!7827287 () Bool)

(declare-fun e!4629898 () Bool)

(declare-fun call!725947 () Bool)

(assert (=> b!7827287 (= e!4629898 (= lt!2676795 call!725947))))

(declare-fun b!7827288 () Bool)

(assert (=> b!7827288 (= e!4629900 e!4629902)))

(declare-fun res!3114387 () Bool)

(assert (=> b!7827288 (=> res!3114387 e!4629902)))

(assert (=> b!7827288 (= res!3114387 call!725947)))

(declare-fun b!7827289 () Bool)

(declare-fun res!3114391 () Bool)

(assert (=> b!7827289 (=> res!3114391 e!4629902)))

(assert (=> b!7827289 (= res!3114391 (not (isEmpty!42286 (tail!15528 s2!3721))))))

(declare-fun b!7827290 () Bool)

(declare-fun e!4629896 () Bool)

(declare-fun derivativeStep!6257 (Regex!20954 C!42234) Regex!20954)

(assert (=> b!7827290 (= e!4629896 (matchR!10410 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (tail!15528 s2!3721)))))

(declare-fun d!2350397 () Bool)

(assert (=> d!2350397 e!4629898))

(declare-fun c!1440110 () Bool)

(assert (=> d!2350397 (= c!1440110 (is-EmptyExpr!20954 r2!6199))))

(assert (=> d!2350397 (= lt!2676795 e!4629896)))

(declare-fun c!1440111 () Bool)

(assert (=> d!2350397 (= c!1440111 (isEmpty!42286 s2!3721))))

(assert (=> d!2350397 (validRegex!11368 r2!6199)))

(assert (=> d!2350397 (= (matchR!10410 r2!6199 s2!3721) lt!2676795)))

(declare-fun bm!725942 () Bool)

(assert (=> bm!725942 (= call!725947 (isEmpty!42286 s2!3721))))

(declare-fun b!7827291 () Bool)

(assert (=> b!7827291 (= e!4629898 e!4629901)))

(declare-fun c!1440109 () Bool)

(assert (=> b!7827291 (= c!1440109 (is-EmptyLang!20954 r2!6199))))

(declare-fun b!7827292 () Bool)

(declare-fun res!3114390 () Bool)

(assert (=> b!7827292 (=> (not res!3114390) (not e!4629897))))

(assert (=> b!7827292 (= res!3114390 (not call!725947))))

(declare-fun b!7827293 () Bool)

(assert (=> b!7827293 (= e!4629896 (nullable!9298 r2!6199))))

(assert (= (and d!2350397 c!1440111) b!7827293))

(assert (= (and d!2350397 (not c!1440111)) b!7827290))

(assert (= (and d!2350397 c!1440110) b!7827287))

(assert (= (and d!2350397 (not c!1440110)) b!7827291))

(assert (= (and b!7827291 c!1440109) b!7827284))

(assert (= (and b!7827291 (not c!1440109)) b!7827286))

(assert (= (and b!7827286 (not res!3114389)) b!7827285))

(assert (= (and b!7827285 res!3114392) b!7827292))

(assert (= (and b!7827292 res!3114390) b!7827283))

(assert (= (and b!7827283 res!3114386) b!7827280))

(assert (= (and b!7827285 (not res!3114388)) b!7827281))

(assert (= (and b!7827281 res!3114385) b!7827288))

(assert (= (and b!7827288 (not res!3114387)) b!7827289))

(assert (= (and b!7827289 (not res!3114391)) b!7827282))

(assert (= (or b!7827287 b!7827288 b!7827292) bm!725942))

(declare-fun m!8247378 () Bool)

(assert (=> b!7827289 m!8247378))

(assert (=> b!7827289 m!8247378))

(declare-fun m!8247380 () Bool)

(assert (=> b!7827289 m!8247380))

(declare-fun m!8247382 () Bool)

(assert (=> b!7827280 m!8247382))

(declare-fun m!8247384 () Bool)

(assert (=> d!2350397 m!8247384))

(assert (=> d!2350397 m!8247338))

(declare-fun m!8247386 () Bool)

(assert (=> b!7827293 m!8247386))

(assert (=> bm!725942 m!8247384))

(assert (=> b!7827283 m!8247378))

(assert (=> b!7827283 m!8247378))

(assert (=> b!7827283 m!8247380))

(assert (=> b!7827282 m!8247382))

(assert (=> b!7827290 m!8247382))

(assert (=> b!7827290 m!8247382))

(declare-fun m!8247388 () Bool)

(assert (=> b!7827290 m!8247388))

(assert (=> b!7827290 m!8247378))

(assert (=> b!7827290 m!8247388))

(assert (=> b!7827290 m!8247378))

(declare-fun m!8247390 () Bool)

(assert (=> b!7827290 m!8247390))

(assert (=> b!7827112 d!2350397))

(declare-fun b!7827294 () Bool)

(declare-fun e!4629908 () Bool)

(declare-fun e!4629905 () Bool)

(assert (=> b!7827294 (= e!4629908 e!4629905)))

(declare-fun res!3114394 () Bool)

(assert (=> b!7827294 (=> (not res!3114394) (not e!4629905))))

(declare-fun call!725949 () Bool)

(assert (=> b!7827294 (= res!3114394 call!725949)))

(declare-fun b!7827296 () Bool)

(declare-fun call!725950 () Bool)

(assert (=> b!7827296 (= e!4629905 call!725950)))

(declare-fun b!7827297 () Bool)

(declare-fun res!3114397 () Bool)

(declare-fun e!4629906 () Bool)

(assert (=> b!7827297 (=> (not res!3114397) (not e!4629906))))

(assert (=> b!7827297 (= res!3114397 call!725950)))

(declare-fun e!4629909 () Bool)

(assert (=> b!7827297 (= e!4629909 e!4629906)))

(declare-fun b!7827298 () Bool)

(declare-fun e!4629904 () Bool)

(declare-fun e!4629907 () Bool)

(assert (=> b!7827298 (= e!4629904 e!4629907)))

(declare-fun c!1440113 () Bool)

(assert (=> b!7827298 (= c!1440113 (is-Star!20954 r2!6199))))

(declare-fun b!7827299 () Bool)

(declare-fun e!4629903 () Bool)

(declare-fun call!725948 () Bool)

(assert (=> b!7827299 (= e!4629903 call!725948)))

(declare-fun b!7827300 () Bool)

(assert (=> b!7827300 (= e!4629907 e!4629903)))

(declare-fun res!3114396 () Bool)

(assert (=> b!7827300 (= res!3114396 (not (nullable!9298 (reg!21283 r2!6199))))))

(assert (=> b!7827300 (=> (not res!3114396) (not e!4629903))))

(declare-fun bm!725943 () Bool)

(assert (=> bm!725943 (= call!725950 call!725948)))

(declare-fun bm!725944 () Bool)

(declare-fun c!1440112 () Bool)

(assert (=> bm!725944 (= call!725949 (validRegex!11368 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))

(declare-fun bm!725945 () Bool)

(assert (=> bm!725945 (= call!725948 (validRegex!11368 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))

(declare-fun d!2350401 () Bool)

(declare-fun res!3114395 () Bool)

(assert (=> d!2350401 (=> res!3114395 e!4629904)))

(assert (=> d!2350401 (= res!3114395 (is-ElementMatch!20954 r2!6199))))

(assert (=> d!2350401 (= (validRegex!11368 r2!6199) e!4629904)))

(declare-fun b!7827295 () Bool)

(assert (=> b!7827295 (= e!4629906 call!725949)))

(declare-fun b!7827301 () Bool)

(declare-fun res!3114393 () Bool)

(assert (=> b!7827301 (=> res!3114393 e!4629908)))

(assert (=> b!7827301 (= res!3114393 (not (is-Concat!29799 r2!6199)))))

(assert (=> b!7827301 (= e!4629909 e!4629908)))

(declare-fun b!7827302 () Bool)

(assert (=> b!7827302 (= e!4629907 e!4629909)))

(assert (=> b!7827302 (= c!1440112 (is-Union!20954 r2!6199))))

(assert (= (and d!2350401 (not res!3114395)) b!7827298))

(assert (= (and b!7827298 c!1440113) b!7827300))

(assert (= (and b!7827298 (not c!1440113)) b!7827302))

(assert (= (and b!7827300 res!3114396) b!7827299))

(assert (= (and b!7827302 c!1440112) b!7827297))

(assert (= (and b!7827302 (not c!1440112)) b!7827301))

(assert (= (and b!7827297 res!3114397) b!7827295))

(assert (= (and b!7827301 (not res!3114393)) b!7827294))

(assert (= (and b!7827294 res!3114394) b!7827296))

(assert (= (or b!7827295 b!7827294) bm!725944))

(assert (= (or b!7827297 b!7827296) bm!725943))

(assert (= (or b!7827299 bm!725943) bm!725945))

(declare-fun m!8247392 () Bool)

(assert (=> b!7827300 m!8247392))

(declare-fun m!8247394 () Bool)

(assert (=> bm!725944 m!8247394))

(declare-fun m!8247396 () Bool)

(assert (=> bm!725945 m!8247396))

(assert (=> b!7827101 d!2350401))

(declare-fun b!7827322 () Bool)

(declare-fun e!4629920 () Bool)

(assert (=> b!7827322 (= e!4629920 (>= (size!42754 s1!4101) (size!42754 s1Rec!453)))))

(declare-fun b!7827320 () Bool)

(declare-fun res!3114413 () Bool)

(declare-fun e!4629921 () Bool)

(assert (=> b!7827320 (=> (not res!3114413) (not e!4629921))))

(assert (=> b!7827320 (= res!3114413 (= (head!15987 s1Rec!453) (head!15987 s1!4101)))))

(declare-fun d!2350403 () Bool)

(assert (=> d!2350403 e!4629920))

(declare-fun res!3114411 () Bool)

(assert (=> d!2350403 (=> res!3114411 e!4629920)))

(declare-fun lt!2676800 () Bool)

(assert (=> d!2350403 (= res!3114411 (not lt!2676800))))

(declare-fun e!4629922 () Bool)

(assert (=> d!2350403 (= lt!2676800 e!4629922)))

(declare-fun res!3114412 () Bool)

(assert (=> d!2350403 (=> res!3114412 e!4629922)))

(assert (=> d!2350403 (= res!3114412 (is-Nil!73667 s1Rec!453))))

(assert (=> d!2350403 (= (isPrefix!6304 s1Rec!453 s1!4101) lt!2676800)))

(declare-fun b!7827319 () Bool)

(assert (=> b!7827319 (= e!4629922 e!4629921)))

(declare-fun res!3114410 () Bool)

(assert (=> b!7827319 (=> (not res!3114410) (not e!4629921))))

(assert (=> b!7827319 (= res!3114410 (not (is-Nil!73667 s1!4101)))))

(declare-fun b!7827321 () Bool)

(assert (=> b!7827321 (= e!4629921 (isPrefix!6304 (tail!15528 s1Rec!453) (tail!15528 s1!4101)))))

(assert (= (and d!2350403 (not res!3114412)) b!7827319))

(assert (= (and b!7827319 res!3114410) b!7827320))

(assert (= (and b!7827320 res!3114413) b!7827321))

(assert (= (and d!2350403 (not res!3114411)) b!7827322))

(assert (=> b!7827322 m!8247334))

(assert (=> b!7827322 m!8247328))

(declare-fun m!8247398 () Bool)

(assert (=> b!7827320 m!8247398))

(declare-fun m!8247400 () Bool)

(assert (=> b!7827320 m!8247400))

(declare-fun m!8247402 () Bool)

(assert (=> b!7827321 m!8247402))

(declare-fun m!8247404 () Bool)

(assert (=> b!7827321 m!8247404))

(assert (=> b!7827321 m!8247402))

(assert (=> b!7827321 m!8247404))

(declare-fun m!8247406 () Bool)

(assert (=> b!7827321 m!8247406))

(assert (=> b!7827117 d!2350403))

(declare-fun d!2350405 () Bool)

(declare-fun lt!2676803 () Int)

(assert (=> d!2350405 (>= lt!2676803 0)))

(declare-fun e!4629925 () Int)

(assert (=> d!2350405 (= lt!2676803 e!4629925)))

(declare-fun c!1440118 () Bool)

(assert (=> d!2350405 (= c!1440118 (is-Nil!73667 s1!4101))))

(assert (=> d!2350405 (= (size!42754 s1!4101) lt!2676803)))

(declare-fun b!7827327 () Bool)

(assert (=> b!7827327 (= e!4629925 0)))

(declare-fun b!7827328 () Bool)

(assert (=> b!7827328 (= e!4629925 (+ 1 (size!42754 (t!388526 s1!4101))))))

(assert (= (and d!2350405 c!1440118) b!7827327))

(assert (= (and d!2350405 (not c!1440118)) b!7827328))

(declare-fun m!8247408 () Bool)

(assert (=> b!7827328 m!8247408))

(assert (=> b!7827119 d!2350405))

(declare-fun b!7827329 () Bool)

(declare-fun e!4629927 () Bool)

(assert (=> b!7827329 (= e!4629927 (= (head!15987 s2Rec!453) (c!1440089 r2!6199)))))

(declare-fun b!7827330 () Bool)

(declare-fun e!4629929 () Bool)

(declare-fun e!4629930 () Bool)

(assert (=> b!7827330 (= e!4629929 e!4629930)))

(declare-fun res!3114414 () Bool)

(assert (=> b!7827330 (=> (not res!3114414) (not e!4629930))))

(declare-fun lt!2676804 () Bool)

(assert (=> b!7827330 (= res!3114414 (not lt!2676804))))

(declare-fun b!7827331 () Bool)

(declare-fun e!4629932 () Bool)

(assert (=> b!7827331 (= e!4629932 (not (= (head!15987 s2Rec!453) (c!1440089 r2!6199))))))

(declare-fun b!7827332 () Bool)

(declare-fun res!3114415 () Bool)

(assert (=> b!7827332 (=> (not res!3114415) (not e!4629927))))

(assert (=> b!7827332 (= res!3114415 (isEmpty!42286 (tail!15528 s2Rec!453)))))

(declare-fun b!7827333 () Bool)

(declare-fun e!4629931 () Bool)

(assert (=> b!7827333 (= e!4629931 (not lt!2676804))))

(declare-fun b!7827334 () Bool)

(declare-fun res!3114417 () Bool)

(assert (=> b!7827334 (=> res!3114417 e!4629929)))

(assert (=> b!7827334 (= res!3114417 e!4629927)))

(declare-fun res!3114421 () Bool)

(assert (=> b!7827334 (=> (not res!3114421) (not e!4629927))))

(assert (=> b!7827334 (= res!3114421 lt!2676804)))

(declare-fun b!7827335 () Bool)

(declare-fun res!3114418 () Bool)

(assert (=> b!7827335 (=> res!3114418 e!4629929)))

(assert (=> b!7827335 (= res!3114418 (not (is-ElementMatch!20954 r2!6199)))))

(assert (=> b!7827335 (= e!4629931 e!4629929)))

(declare-fun b!7827336 () Bool)

(declare-fun e!4629928 () Bool)

(declare-fun call!725951 () Bool)

(assert (=> b!7827336 (= e!4629928 (= lt!2676804 call!725951))))

(declare-fun b!7827337 () Bool)

(assert (=> b!7827337 (= e!4629930 e!4629932)))

(declare-fun res!3114416 () Bool)

(assert (=> b!7827337 (=> res!3114416 e!4629932)))

(assert (=> b!7827337 (= res!3114416 call!725951)))

(declare-fun b!7827338 () Bool)

(declare-fun res!3114420 () Bool)

(assert (=> b!7827338 (=> res!3114420 e!4629932)))

(assert (=> b!7827338 (= res!3114420 (not (isEmpty!42286 (tail!15528 s2Rec!453))))))

(declare-fun b!7827339 () Bool)

(declare-fun e!4629926 () Bool)

(assert (=> b!7827339 (= e!4629926 (matchR!10410 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (tail!15528 s2Rec!453)))))

(declare-fun d!2350407 () Bool)

(assert (=> d!2350407 e!4629928))

(declare-fun c!1440120 () Bool)

(assert (=> d!2350407 (= c!1440120 (is-EmptyExpr!20954 r2!6199))))

(assert (=> d!2350407 (= lt!2676804 e!4629926)))

(declare-fun c!1440121 () Bool)

(assert (=> d!2350407 (= c!1440121 (isEmpty!42286 s2Rec!453))))

(assert (=> d!2350407 (validRegex!11368 r2!6199)))

(assert (=> d!2350407 (= (matchR!10410 r2!6199 s2Rec!453) lt!2676804)))

(declare-fun bm!725946 () Bool)

(assert (=> bm!725946 (= call!725951 (isEmpty!42286 s2Rec!453))))

(declare-fun b!7827340 () Bool)

(assert (=> b!7827340 (= e!4629928 e!4629931)))

(declare-fun c!1440119 () Bool)

(assert (=> b!7827340 (= c!1440119 (is-EmptyLang!20954 r2!6199))))

(declare-fun b!7827341 () Bool)

(declare-fun res!3114419 () Bool)

(assert (=> b!7827341 (=> (not res!3114419) (not e!4629927))))

(assert (=> b!7827341 (= res!3114419 (not call!725951))))

(declare-fun b!7827342 () Bool)

(assert (=> b!7827342 (= e!4629926 (nullable!9298 r2!6199))))

(assert (= (and d!2350407 c!1440121) b!7827342))

(assert (= (and d!2350407 (not c!1440121)) b!7827339))

(assert (= (and d!2350407 c!1440120) b!7827336))

(assert (= (and d!2350407 (not c!1440120)) b!7827340))

(assert (= (and b!7827340 c!1440119) b!7827333))

(assert (= (and b!7827340 (not c!1440119)) b!7827335))

(assert (= (and b!7827335 (not res!3114418)) b!7827334))

(assert (= (and b!7827334 res!3114421) b!7827341))

(assert (= (and b!7827341 res!3114419) b!7827332))

(assert (= (and b!7827332 res!3114415) b!7827329))

(assert (= (and b!7827334 (not res!3114417)) b!7827330))

(assert (= (and b!7827330 res!3114414) b!7827337))

(assert (= (and b!7827337 (not res!3114416)) b!7827338))

(assert (= (and b!7827338 (not res!3114420)) b!7827331))

(assert (= (or b!7827336 b!7827337 b!7827341) bm!725946))

(declare-fun m!8247410 () Bool)

(assert (=> b!7827338 m!8247410))

(assert (=> b!7827338 m!8247410))

(declare-fun m!8247412 () Bool)

(assert (=> b!7827338 m!8247412))

(declare-fun m!8247414 () Bool)

(assert (=> b!7827329 m!8247414))

(declare-fun m!8247416 () Bool)

(assert (=> d!2350407 m!8247416))

(assert (=> d!2350407 m!8247338))

(assert (=> b!7827342 m!8247386))

(assert (=> bm!725946 m!8247416))

(assert (=> b!7827332 m!8247410))

(assert (=> b!7827332 m!8247410))

(assert (=> b!7827332 m!8247412))

(assert (=> b!7827331 m!8247414))

(assert (=> b!7827339 m!8247414))

(assert (=> b!7827339 m!8247414))

(declare-fun m!8247418 () Bool)

(assert (=> b!7827339 m!8247418))

(assert (=> b!7827339 m!8247410))

(assert (=> b!7827339 m!8247418))

(assert (=> b!7827339 m!8247410))

(declare-fun m!8247420 () Bool)

(assert (=> b!7827339 m!8247420))

(assert (=> b!7827103 d!2350407))

(declare-fun d!2350409 () Bool)

(declare-fun lt!2676806 () Int)

(assert (=> d!2350409 (>= lt!2676806 0)))

(declare-fun e!4629935 () Int)

(assert (=> d!2350409 (= lt!2676806 e!4629935)))

(declare-fun c!1440123 () Bool)

(assert (=> d!2350409 (= c!1440123 (is-Nil!73667 s!14274))))

(assert (=> d!2350409 (= (size!42754 s!14274) lt!2676806)))

(declare-fun b!7827347 () Bool)

(assert (=> b!7827347 (= e!4629935 0)))

(declare-fun b!7827348 () Bool)

(assert (=> b!7827348 (= e!4629935 (+ 1 (size!42754 (t!388526 s!14274))))))

(assert (= (and d!2350409 c!1440123) b!7827347))

(assert (= (and d!2350409 (not c!1440123)) b!7827348))

(declare-fun m!8247422 () Bool)

(assert (=> b!7827348 m!8247422))

(assert (=> b!7827113 d!2350409))

(declare-fun d!2350411 () Bool)

(declare-fun lt!2676807 () Int)

(assert (=> d!2350411 (>= lt!2676807 0)))

(declare-fun e!4629936 () Int)

(assert (=> d!2350411 (= lt!2676807 e!4629936)))

(declare-fun c!1440124 () Bool)

(assert (=> d!2350411 (= c!1440124 (is-Nil!73667 s1Rec!453))))

(assert (=> d!2350411 (= (size!42754 s1Rec!453) lt!2676807)))

(declare-fun b!7827349 () Bool)

(assert (=> b!7827349 (= e!4629936 0)))

(declare-fun b!7827350 () Bool)

(assert (=> b!7827350 (= e!4629936 (+ 1 (size!42754 (t!388526 s1Rec!453))))))

(assert (= (and d!2350411 c!1440124) b!7827349))

(assert (= (and d!2350411 (not c!1440124)) b!7827350))

(declare-fun m!8247424 () Bool)

(assert (=> b!7827350 m!8247424))

(assert (=> b!7827113 d!2350411))

(declare-fun b!7827351 () Bool)

(declare-fun e!4629938 () Bool)

(assert (=> b!7827351 (= e!4629938 (= (head!15987 s1Rec!453) (c!1440089 r1!6261)))))

(declare-fun b!7827352 () Bool)

(declare-fun e!4629940 () Bool)

(declare-fun e!4629941 () Bool)

(assert (=> b!7827352 (= e!4629940 e!4629941)))

(declare-fun res!3114424 () Bool)

(assert (=> b!7827352 (=> (not res!3114424) (not e!4629941))))

(declare-fun lt!2676808 () Bool)

(assert (=> b!7827352 (= res!3114424 (not lt!2676808))))

(declare-fun b!7827353 () Bool)

(declare-fun e!4629943 () Bool)

(assert (=> b!7827353 (= e!4629943 (not (= (head!15987 s1Rec!453) (c!1440089 r1!6261))))))

(declare-fun b!7827354 () Bool)

(declare-fun res!3114425 () Bool)

(assert (=> b!7827354 (=> (not res!3114425) (not e!4629938))))

(assert (=> b!7827354 (= res!3114425 (isEmpty!42286 (tail!15528 s1Rec!453)))))

(declare-fun b!7827355 () Bool)

(declare-fun e!4629942 () Bool)

(assert (=> b!7827355 (= e!4629942 (not lt!2676808))))

(declare-fun b!7827356 () Bool)

(declare-fun res!3114427 () Bool)

(assert (=> b!7827356 (=> res!3114427 e!4629940)))

(assert (=> b!7827356 (= res!3114427 e!4629938)))

(declare-fun res!3114431 () Bool)

(assert (=> b!7827356 (=> (not res!3114431) (not e!4629938))))

(assert (=> b!7827356 (= res!3114431 lt!2676808)))

(declare-fun b!7827357 () Bool)

(declare-fun res!3114428 () Bool)

(assert (=> b!7827357 (=> res!3114428 e!4629940)))

(assert (=> b!7827357 (= res!3114428 (not (is-ElementMatch!20954 r1!6261)))))

(assert (=> b!7827357 (= e!4629942 e!4629940)))

(declare-fun b!7827358 () Bool)

(declare-fun e!4629939 () Bool)

(declare-fun call!725952 () Bool)

(assert (=> b!7827358 (= e!4629939 (= lt!2676808 call!725952))))

(declare-fun b!7827359 () Bool)

(assert (=> b!7827359 (= e!4629941 e!4629943)))

(declare-fun res!3114426 () Bool)

(assert (=> b!7827359 (=> res!3114426 e!4629943)))

(assert (=> b!7827359 (= res!3114426 call!725952)))

(declare-fun b!7827360 () Bool)

(declare-fun res!3114430 () Bool)

(assert (=> b!7827360 (=> res!3114430 e!4629943)))

(assert (=> b!7827360 (= res!3114430 (not (isEmpty!42286 (tail!15528 s1Rec!453))))))

(declare-fun b!7827361 () Bool)

(declare-fun e!4629937 () Bool)

(assert (=> b!7827361 (= e!4629937 (matchR!10410 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (tail!15528 s1Rec!453)))))

(declare-fun d!2350413 () Bool)

(assert (=> d!2350413 e!4629939))

(declare-fun c!1440126 () Bool)

(assert (=> d!2350413 (= c!1440126 (is-EmptyExpr!20954 r1!6261))))

(assert (=> d!2350413 (= lt!2676808 e!4629937)))

(declare-fun c!1440127 () Bool)

(assert (=> d!2350413 (= c!1440127 (isEmpty!42286 s1Rec!453))))

(assert (=> d!2350413 (validRegex!11368 r1!6261)))

(assert (=> d!2350413 (= (matchR!10410 r1!6261 s1Rec!453) lt!2676808)))

(declare-fun bm!725947 () Bool)

(assert (=> bm!725947 (= call!725952 (isEmpty!42286 s1Rec!453))))

(declare-fun b!7827362 () Bool)

(assert (=> b!7827362 (= e!4629939 e!4629942)))

(declare-fun c!1440125 () Bool)

(assert (=> b!7827362 (= c!1440125 (is-EmptyLang!20954 r1!6261))))

(declare-fun b!7827363 () Bool)

(declare-fun res!3114429 () Bool)

(assert (=> b!7827363 (=> (not res!3114429) (not e!4629938))))

(assert (=> b!7827363 (= res!3114429 (not call!725952))))

(declare-fun b!7827364 () Bool)

(assert (=> b!7827364 (= e!4629937 (nullable!9298 r1!6261))))

(assert (= (and d!2350413 c!1440127) b!7827364))

(assert (= (and d!2350413 (not c!1440127)) b!7827361))

(assert (= (and d!2350413 c!1440126) b!7827358))

(assert (= (and d!2350413 (not c!1440126)) b!7827362))

(assert (= (and b!7827362 c!1440125) b!7827355))

(assert (= (and b!7827362 (not c!1440125)) b!7827357))

(assert (= (and b!7827357 (not res!3114428)) b!7827356))

(assert (= (and b!7827356 res!3114431) b!7827363))

(assert (= (and b!7827363 res!3114429) b!7827354))

(assert (= (and b!7827354 res!3114425) b!7827351))

(assert (= (and b!7827356 (not res!3114427)) b!7827352))

(assert (= (and b!7827352 res!3114424) b!7827359))

(assert (= (and b!7827359 (not res!3114426)) b!7827360))

(assert (= (and b!7827360 (not res!3114430)) b!7827353))

(assert (= (or b!7827358 b!7827359 b!7827363) bm!725947))

(assert (=> b!7827360 m!8247402))

(assert (=> b!7827360 m!8247402))

(declare-fun m!8247438 () Bool)

(assert (=> b!7827360 m!8247438))

(assert (=> b!7827351 m!8247398))

(declare-fun m!8247440 () Bool)

(assert (=> d!2350413 m!8247440))

(assert (=> d!2350413 m!8247322))

(declare-fun m!8247442 () Bool)

(assert (=> b!7827364 m!8247442))

(assert (=> bm!725947 m!8247440))

(assert (=> b!7827354 m!8247402))

(assert (=> b!7827354 m!8247402))

(assert (=> b!7827354 m!8247438))

(assert (=> b!7827353 m!8247398))

(assert (=> b!7827361 m!8247398))

(assert (=> b!7827361 m!8247398))

(declare-fun m!8247444 () Bool)

(assert (=> b!7827361 m!8247444))

(assert (=> b!7827361 m!8247402))

(assert (=> b!7827361 m!8247444))

(assert (=> b!7827361 m!8247402))

(declare-fun m!8247446 () Bool)

(assert (=> b!7827361 m!8247446))

(assert (=> b!7827114 d!2350413))

(declare-fun b!7827376 () Bool)

(declare-fun lt!2676811 () List!73791)

(declare-fun e!4629949 () Bool)

(assert (=> b!7827376 (= e!4629949 (or (not (= s2!3721 Nil!73667)) (= lt!2676811 s1!4101)))))

(declare-fun b!7827375 () Bool)

(declare-fun res!3114437 () Bool)

(assert (=> b!7827375 (=> (not res!3114437) (not e!4629949))))

(assert (=> b!7827375 (= res!3114437 (= (size!42754 lt!2676811) (+ (size!42754 s1!4101) (size!42754 s2!3721))))))

(declare-fun b!7827374 () Bool)

(declare-fun e!4629948 () List!73791)

(assert (=> b!7827374 (= e!4629948 (Cons!73667 (h!80115 s1!4101) (++!17988 (t!388526 s1!4101) s2!3721)))))

(declare-fun d!2350417 () Bool)

(assert (=> d!2350417 e!4629949))

(declare-fun res!3114436 () Bool)

(assert (=> d!2350417 (=> (not res!3114436) (not e!4629949))))

(declare-fun content!15639 (List!73791) (Set C!42234))

(assert (=> d!2350417 (= res!3114436 (= (content!15639 lt!2676811) (set.union (content!15639 s1!4101) (content!15639 s2!3721))))))

(assert (=> d!2350417 (= lt!2676811 e!4629948)))

(declare-fun c!1440130 () Bool)

(assert (=> d!2350417 (= c!1440130 (is-Nil!73667 s1!4101))))

(assert (=> d!2350417 (= (++!17988 s1!4101 s2!3721) lt!2676811)))

(declare-fun b!7827373 () Bool)

(assert (=> b!7827373 (= e!4629948 s2!3721)))

(assert (= (and d!2350417 c!1440130) b!7827373))

(assert (= (and d!2350417 (not c!1440130)) b!7827374))

(assert (= (and d!2350417 res!3114436) b!7827375))

(assert (= (and b!7827375 res!3114437) b!7827376))

(declare-fun m!8247448 () Bool)

(assert (=> b!7827375 m!8247448))

(assert (=> b!7827375 m!8247334))

(declare-fun m!8247450 () Bool)

(assert (=> b!7827375 m!8247450))

(declare-fun m!8247452 () Bool)

(assert (=> b!7827374 m!8247452))

(declare-fun m!8247454 () Bool)

(assert (=> d!2350417 m!8247454))

(declare-fun m!8247456 () Bool)

(assert (=> d!2350417 m!8247456))

(declare-fun m!8247458 () Bool)

(assert (=> d!2350417 m!8247458))

(assert (=> b!7827100 d!2350417))

(declare-fun b!7827377 () Bool)

(declare-fun e!4629951 () Bool)

(assert (=> b!7827377 (= e!4629951 (= (head!15987 s1!4101) (c!1440089 r1!6261)))))

(declare-fun b!7827378 () Bool)

(declare-fun e!4629953 () Bool)

(declare-fun e!4629954 () Bool)

(assert (=> b!7827378 (= e!4629953 e!4629954)))

(declare-fun res!3114438 () Bool)

(assert (=> b!7827378 (=> (not res!3114438) (not e!4629954))))

(declare-fun lt!2676812 () Bool)

(assert (=> b!7827378 (= res!3114438 (not lt!2676812))))

(declare-fun b!7827379 () Bool)

(declare-fun e!4629956 () Bool)

(assert (=> b!7827379 (= e!4629956 (not (= (head!15987 s1!4101) (c!1440089 r1!6261))))))

(declare-fun b!7827380 () Bool)

(declare-fun res!3114439 () Bool)

(assert (=> b!7827380 (=> (not res!3114439) (not e!4629951))))

(assert (=> b!7827380 (= res!3114439 (isEmpty!42286 (tail!15528 s1!4101)))))

(declare-fun b!7827381 () Bool)

(declare-fun e!4629955 () Bool)

(assert (=> b!7827381 (= e!4629955 (not lt!2676812))))

(declare-fun b!7827382 () Bool)

(declare-fun res!3114441 () Bool)

(assert (=> b!7827382 (=> res!3114441 e!4629953)))

(assert (=> b!7827382 (= res!3114441 e!4629951)))

(declare-fun res!3114445 () Bool)

(assert (=> b!7827382 (=> (not res!3114445) (not e!4629951))))

(assert (=> b!7827382 (= res!3114445 lt!2676812)))

(declare-fun b!7827383 () Bool)

(declare-fun res!3114442 () Bool)

(assert (=> b!7827383 (=> res!3114442 e!4629953)))

(assert (=> b!7827383 (= res!3114442 (not (is-ElementMatch!20954 r1!6261)))))

(assert (=> b!7827383 (= e!4629955 e!4629953)))

(declare-fun b!7827384 () Bool)

(declare-fun e!4629952 () Bool)

(declare-fun call!725953 () Bool)

(assert (=> b!7827384 (= e!4629952 (= lt!2676812 call!725953))))

(declare-fun b!7827385 () Bool)

(assert (=> b!7827385 (= e!4629954 e!4629956)))

(declare-fun res!3114440 () Bool)

(assert (=> b!7827385 (=> res!3114440 e!4629956)))

(assert (=> b!7827385 (= res!3114440 call!725953)))

(declare-fun b!7827386 () Bool)

(declare-fun res!3114444 () Bool)

(assert (=> b!7827386 (=> res!3114444 e!4629956)))

(assert (=> b!7827386 (= res!3114444 (not (isEmpty!42286 (tail!15528 s1!4101))))))

(declare-fun b!7827387 () Bool)

(declare-fun e!4629950 () Bool)

(assert (=> b!7827387 (= e!4629950 (matchR!10410 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (tail!15528 s1!4101)))))

(declare-fun d!2350419 () Bool)

(assert (=> d!2350419 e!4629952))

(declare-fun c!1440132 () Bool)

(assert (=> d!2350419 (= c!1440132 (is-EmptyExpr!20954 r1!6261))))

(assert (=> d!2350419 (= lt!2676812 e!4629950)))

(declare-fun c!1440133 () Bool)

(assert (=> d!2350419 (= c!1440133 (isEmpty!42286 s1!4101))))

(assert (=> d!2350419 (validRegex!11368 r1!6261)))

(assert (=> d!2350419 (= (matchR!10410 r1!6261 s1!4101) lt!2676812)))

(declare-fun bm!725948 () Bool)

(assert (=> bm!725948 (= call!725953 (isEmpty!42286 s1!4101))))

(declare-fun b!7827388 () Bool)

(assert (=> b!7827388 (= e!4629952 e!4629955)))

(declare-fun c!1440131 () Bool)

(assert (=> b!7827388 (= c!1440131 (is-EmptyLang!20954 r1!6261))))

(declare-fun b!7827389 () Bool)

(declare-fun res!3114443 () Bool)

(assert (=> b!7827389 (=> (not res!3114443) (not e!4629951))))

(assert (=> b!7827389 (= res!3114443 (not call!725953))))

(declare-fun b!7827390 () Bool)

(assert (=> b!7827390 (= e!4629950 (nullable!9298 r1!6261))))

(assert (= (and d!2350419 c!1440133) b!7827390))

(assert (= (and d!2350419 (not c!1440133)) b!7827387))

(assert (= (and d!2350419 c!1440132) b!7827384))

(assert (= (and d!2350419 (not c!1440132)) b!7827388))

(assert (= (and b!7827388 c!1440131) b!7827381))

(assert (= (and b!7827388 (not c!1440131)) b!7827383))

(assert (= (and b!7827383 (not res!3114442)) b!7827382))

(assert (= (and b!7827382 res!3114445) b!7827389))

(assert (= (and b!7827389 res!3114443) b!7827380))

(assert (= (and b!7827380 res!3114439) b!7827377))

(assert (= (and b!7827382 (not res!3114441)) b!7827378))

(assert (= (and b!7827378 res!3114438) b!7827385))

(assert (= (and b!7827385 (not res!3114440)) b!7827386))

(assert (= (and b!7827386 (not res!3114444)) b!7827379))

(assert (= (or b!7827384 b!7827385 b!7827389) bm!725948))

(assert (=> b!7827386 m!8247404))

(assert (=> b!7827386 m!8247404))

(declare-fun m!8247460 () Bool)

(assert (=> b!7827386 m!8247460))

(assert (=> b!7827377 m!8247400))

(declare-fun m!8247462 () Bool)

(assert (=> d!2350419 m!8247462))

(assert (=> d!2350419 m!8247322))

(assert (=> b!7827390 m!8247442))

(assert (=> bm!725948 m!8247462))

(assert (=> b!7827380 m!8247404))

(assert (=> b!7827380 m!8247404))

(assert (=> b!7827380 m!8247460))

(assert (=> b!7827379 m!8247400))

(assert (=> b!7827387 m!8247400))

(assert (=> b!7827387 m!8247400))

(declare-fun m!8247464 () Bool)

(assert (=> b!7827387 m!8247464))

(assert (=> b!7827387 m!8247404))

(assert (=> b!7827387 m!8247464))

(assert (=> b!7827387 m!8247404))

(declare-fun m!8247466 () Bool)

(assert (=> b!7827387 m!8247466))

(assert (=> b!7827121 d!2350419))

(declare-fun e!4629958 () Bool)

(declare-fun lt!2676813 () List!73791)

(declare-fun b!7827394 () Bool)

(assert (=> b!7827394 (= e!4629958 (or (not (= s2Rec!453 Nil!73667)) (= lt!2676813 s1Rec!453)))))

(declare-fun b!7827393 () Bool)

(declare-fun res!3114447 () Bool)

(assert (=> b!7827393 (=> (not res!3114447) (not e!4629958))))

(assert (=> b!7827393 (= res!3114447 (= (size!42754 lt!2676813) (+ (size!42754 s1Rec!453) (size!42754 s2Rec!453))))))

(declare-fun b!7827392 () Bool)

(declare-fun e!4629957 () List!73791)

(assert (=> b!7827392 (= e!4629957 (Cons!73667 (h!80115 s1Rec!453) (++!17988 (t!388526 s1Rec!453) s2Rec!453)))))

(declare-fun d!2350421 () Bool)

(assert (=> d!2350421 e!4629958))

(declare-fun res!3114446 () Bool)

(assert (=> d!2350421 (=> (not res!3114446) (not e!4629958))))

(assert (=> d!2350421 (= res!3114446 (= (content!15639 lt!2676813) (set.union (content!15639 s1Rec!453) (content!15639 s2Rec!453))))))

(assert (=> d!2350421 (= lt!2676813 e!4629957)))

(declare-fun c!1440134 () Bool)

(assert (=> d!2350421 (= c!1440134 (is-Nil!73667 s1Rec!453))))

(assert (=> d!2350421 (= (++!17988 s1Rec!453 s2Rec!453) lt!2676813)))

(declare-fun b!7827391 () Bool)

(assert (=> b!7827391 (= e!4629957 s2Rec!453)))

(assert (= (and d!2350421 c!1440134) b!7827391))

(assert (= (and d!2350421 (not c!1440134)) b!7827392))

(assert (= (and d!2350421 res!3114446) b!7827393))

(assert (= (and b!7827393 res!3114447) b!7827394))

(declare-fun m!8247468 () Bool)

(assert (=> b!7827393 m!8247468))

(assert (=> b!7827393 m!8247328))

(declare-fun m!8247470 () Bool)

(assert (=> b!7827393 m!8247470))

(declare-fun m!8247472 () Bool)

(assert (=> b!7827392 m!8247472))

(declare-fun m!8247474 () Bool)

(assert (=> d!2350421 m!8247474))

(declare-fun m!8247476 () Bool)

(assert (=> d!2350421 m!8247476))

(declare-fun m!8247478 () Bool)

(assert (=> d!2350421 m!8247478))

(assert (=> b!7827105 d!2350421))

(declare-fun b!7827399 () Bool)

(declare-fun e!4629961 () Bool)

(declare-fun tp!2312552 () Bool)

(assert (=> b!7827399 (= e!4629961 (and tp_is_empty!52263 tp!2312552))))

(assert (=> b!7827122 (= tp!2312503 e!4629961)))

(assert (= (and b!7827122 (is-Cons!73667 (t!388526 s1Rec!453))) b!7827399))

(declare-fun b!7827413 () Bool)

(declare-fun e!4629964 () Bool)

(declare-fun tp!2312565 () Bool)

(declare-fun tp!2312564 () Bool)

(assert (=> b!7827413 (= e!4629964 (and tp!2312565 tp!2312564))))

(declare-fun b!7827410 () Bool)

(assert (=> b!7827410 (= e!4629964 tp_is_empty!52263)))

(declare-fun b!7827412 () Bool)

(declare-fun tp!2312566 () Bool)

(assert (=> b!7827412 (= e!4629964 tp!2312566)))

(assert (=> b!7827099 (= tp!2312496 e!4629964)))

(declare-fun b!7827411 () Bool)

(declare-fun tp!2312563 () Bool)

(declare-fun tp!2312567 () Bool)

(assert (=> b!7827411 (= e!4629964 (and tp!2312563 tp!2312567))))

(assert (= (and b!7827099 (is-ElementMatch!20954 (regOne!42421 r1!6261))) b!7827410))

(assert (= (and b!7827099 (is-Concat!29799 (regOne!42421 r1!6261))) b!7827411))

(assert (= (and b!7827099 (is-Star!20954 (regOne!42421 r1!6261))) b!7827412))

(assert (= (and b!7827099 (is-Union!20954 (regOne!42421 r1!6261))) b!7827413))

(declare-fun b!7827417 () Bool)

(declare-fun e!4629965 () Bool)

(declare-fun tp!2312570 () Bool)

(declare-fun tp!2312569 () Bool)

(assert (=> b!7827417 (= e!4629965 (and tp!2312570 tp!2312569))))

(declare-fun b!7827414 () Bool)

(assert (=> b!7827414 (= e!4629965 tp_is_empty!52263)))

(declare-fun b!7827416 () Bool)

(declare-fun tp!2312571 () Bool)

(assert (=> b!7827416 (= e!4629965 tp!2312571)))

(assert (=> b!7827099 (= tp!2312500 e!4629965)))

(declare-fun b!7827415 () Bool)

(declare-fun tp!2312568 () Bool)

(declare-fun tp!2312572 () Bool)

(assert (=> b!7827415 (= e!4629965 (and tp!2312568 tp!2312572))))

(assert (= (and b!7827099 (is-ElementMatch!20954 (regTwo!42421 r1!6261))) b!7827414))

(assert (= (and b!7827099 (is-Concat!29799 (regTwo!42421 r1!6261))) b!7827415))

(assert (= (and b!7827099 (is-Star!20954 (regTwo!42421 r1!6261))) b!7827416))

(assert (= (and b!7827099 (is-Union!20954 (regTwo!42421 r1!6261))) b!7827417))

(declare-fun b!7827418 () Bool)

(declare-fun e!4629966 () Bool)

(declare-fun tp!2312573 () Bool)

(assert (=> b!7827418 (= e!4629966 (and tp_is_empty!52263 tp!2312573))))

(assert (=> b!7827120 (= tp!2312492 e!4629966)))

(assert (= (and b!7827120 (is-Cons!73667 (t!388526 s1!4101))) b!7827418))

(declare-fun b!7827422 () Bool)

(declare-fun e!4629967 () Bool)

(declare-fun tp!2312576 () Bool)

(declare-fun tp!2312575 () Bool)

(assert (=> b!7827422 (= e!4629967 (and tp!2312576 tp!2312575))))

(declare-fun b!7827419 () Bool)

(assert (=> b!7827419 (= e!4629967 tp_is_empty!52263)))

(declare-fun b!7827421 () Bool)

(declare-fun tp!2312577 () Bool)

(assert (=> b!7827421 (= e!4629967 tp!2312577)))

(assert (=> b!7827098 (= tp!2312501 e!4629967)))

(declare-fun b!7827420 () Bool)

(declare-fun tp!2312574 () Bool)

(declare-fun tp!2312578 () Bool)

(assert (=> b!7827420 (= e!4629967 (and tp!2312574 tp!2312578))))

(assert (= (and b!7827098 (is-ElementMatch!20954 (regOne!42420 r2!6199))) b!7827419))

(assert (= (and b!7827098 (is-Concat!29799 (regOne!42420 r2!6199))) b!7827420))

(assert (= (and b!7827098 (is-Star!20954 (regOne!42420 r2!6199))) b!7827421))

(assert (= (and b!7827098 (is-Union!20954 (regOne!42420 r2!6199))) b!7827422))

(declare-fun b!7827426 () Bool)

(declare-fun e!4629968 () Bool)

(declare-fun tp!2312581 () Bool)

(declare-fun tp!2312580 () Bool)

(assert (=> b!7827426 (= e!4629968 (and tp!2312581 tp!2312580))))

(declare-fun b!7827423 () Bool)

(assert (=> b!7827423 (= e!4629968 tp_is_empty!52263)))

(declare-fun b!7827425 () Bool)

(declare-fun tp!2312582 () Bool)

(assert (=> b!7827425 (= e!4629968 tp!2312582)))

(assert (=> b!7827098 (= tp!2312504 e!4629968)))

(declare-fun b!7827424 () Bool)

(declare-fun tp!2312579 () Bool)

(declare-fun tp!2312583 () Bool)

(assert (=> b!7827424 (= e!4629968 (and tp!2312579 tp!2312583))))

(assert (= (and b!7827098 (is-ElementMatch!20954 (regTwo!42420 r2!6199))) b!7827423))

(assert (= (and b!7827098 (is-Concat!29799 (regTwo!42420 r2!6199))) b!7827424))

(assert (= (and b!7827098 (is-Star!20954 (regTwo!42420 r2!6199))) b!7827425))

(assert (= (and b!7827098 (is-Union!20954 (regTwo!42420 r2!6199))) b!7827426))

(declare-fun b!7827430 () Bool)

(declare-fun e!4629969 () Bool)

(declare-fun tp!2312586 () Bool)

(declare-fun tp!2312585 () Bool)

(assert (=> b!7827430 (= e!4629969 (and tp!2312586 tp!2312585))))

(declare-fun b!7827427 () Bool)

(assert (=> b!7827427 (= e!4629969 tp_is_empty!52263)))

(declare-fun b!7827429 () Bool)

(declare-fun tp!2312587 () Bool)

(assert (=> b!7827429 (= e!4629969 tp!2312587)))

(assert (=> b!7827111 (= tp!2312493 e!4629969)))

(declare-fun b!7827428 () Bool)

(declare-fun tp!2312584 () Bool)

(declare-fun tp!2312588 () Bool)

(assert (=> b!7827428 (= e!4629969 (and tp!2312584 tp!2312588))))

(assert (= (and b!7827111 (is-ElementMatch!20954 (reg!21283 r1!6261))) b!7827427))

(assert (= (and b!7827111 (is-Concat!29799 (reg!21283 r1!6261))) b!7827428))

(assert (= (and b!7827111 (is-Star!20954 (reg!21283 r1!6261))) b!7827429))

(assert (= (and b!7827111 (is-Union!20954 (reg!21283 r1!6261))) b!7827430))

(declare-fun b!7827431 () Bool)

(declare-fun e!4629970 () Bool)

(declare-fun tp!2312589 () Bool)

(assert (=> b!7827431 (= e!4629970 (and tp_is_empty!52263 tp!2312589))))

(assert (=> b!7827107 (= tp!2312494 e!4629970)))

(assert (= (and b!7827107 (is-Cons!73667 (t!388526 s2!3721))) b!7827431))

(declare-fun b!7827435 () Bool)

(declare-fun e!4629971 () Bool)

(declare-fun tp!2312592 () Bool)

(declare-fun tp!2312591 () Bool)

(assert (=> b!7827435 (= e!4629971 (and tp!2312592 tp!2312591))))

(declare-fun b!7827432 () Bool)

(assert (=> b!7827432 (= e!4629971 tp_is_empty!52263)))

(declare-fun b!7827434 () Bool)

(declare-fun tp!2312593 () Bool)

(assert (=> b!7827434 (= e!4629971 tp!2312593)))

(assert (=> b!7827106 (= tp!2312491 e!4629971)))

(declare-fun b!7827433 () Bool)

(declare-fun tp!2312590 () Bool)

(declare-fun tp!2312594 () Bool)

(assert (=> b!7827433 (= e!4629971 (and tp!2312590 tp!2312594))))

(assert (= (and b!7827106 (is-ElementMatch!20954 (regOne!42421 r2!6199))) b!7827432))

(assert (= (and b!7827106 (is-Concat!29799 (regOne!42421 r2!6199))) b!7827433))

(assert (= (and b!7827106 (is-Star!20954 (regOne!42421 r2!6199))) b!7827434))

(assert (= (and b!7827106 (is-Union!20954 (regOne!42421 r2!6199))) b!7827435))

(declare-fun b!7827439 () Bool)

(declare-fun e!4629972 () Bool)

(declare-fun tp!2312597 () Bool)

(declare-fun tp!2312596 () Bool)

(assert (=> b!7827439 (= e!4629972 (and tp!2312597 tp!2312596))))

(declare-fun b!7827436 () Bool)

(assert (=> b!7827436 (= e!4629972 tp_is_empty!52263)))

(declare-fun b!7827438 () Bool)

(declare-fun tp!2312598 () Bool)

(assert (=> b!7827438 (= e!4629972 tp!2312598)))

(assert (=> b!7827106 (= tp!2312495 e!4629972)))

(declare-fun b!7827437 () Bool)

(declare-fun tp!2312595 () Bool)

(declare-fun tp!2312599 () Bool)

(assert (=> b!7827437 (= e!4629972 (and tp!2312595 tp!2312599))))

(assert (= (and b!7827106 (is-ElementMatch!20954 (regTwo!42421 r2!6199))) b!7827436))

(assert (= (and b!7827106 (is-Concat!29799 (regTwo!42421 r2!6199))) b!7827437))

(assert (= (and b!7827106 (is-Star!20954 (regTwo!42421 r2!6199))) b!7827438))

(assert (= (and b!7827106 (is-Union!20954 (regTwo!42421 r2!6199))) b!7827439))

(declare-fun b!7827440 () Bool)

(declare-fun e!4629973 () Bool)

(declare-fun tp!2312600 () Bool)

(assert (=> b!7827440 (= e!4629973 (and tp_is_empty!52263 tp!2312600))))

(assert (=> b!7827108 (= tp!2312499 e!4629973)))

(assert (= (and b!7827108 (is-Cons!73667 (t!388526 s2Rec!453))) b!7827440))

(declare-fun b!7827444 () Bool)

(declare-fun e!4629974 () Bool)

(declare-fun tp!2312603 () Bool)

(declare-fun tp!2312602 () Bool)

(assert (=> b!7827444 (= e!4629974 (and tp!2312603 tp!2312602))))

(declare-fun b!7827441 () Bool)

(assert (=> b!7827441 (= e!4629974 tp_is_empty!52263)))

(declare-fun b!7827443 () Bool)

(declare-fun tp!2312604 () Bool)

(assert (=> b!7827443 (= e!4629974 tp!2312604)))

(assert (=> b!7827118 (= tp!2312502 e!4629974)))

(declare-fun b!7827442 () Bool)

(declare-fun tp!2312601 () Bool)

(declare-fun tp!2312605 () Bool)

(assert (=> b!7827442 (= e!4629974 (and tp!2312601 tp!2312605))))

(assert (= (and b!7827118 (is-ElementMatch!20954 (regOne!42420 r1!6261))) b!7827441))

(assert (= (and b!7827118 (is-Concat!29799 (regOne!42420 r1!6261))) b!7827442))

(assert (= (and b!7827118 (is-Star!20954 (regOne!42420 r1!6261))) b!7827443))

(assert (= (and b!7827118 (is-Union!20954 (regOne!42420 r1!6261))) b!7827444))

(declare-fun b!7827448 () Bool)

(declare-fun e!4629975 () Bool)

(declare-fun tp!2312608 () Bool)

(declare-fun tp!2312607 () Bool)

(assert (=> b!7827448 (= e!4629975 (and tp!2312608 tp!2312607))))

(declare-fun b!7827445 () Bool)

(assert (=> b!7827445 (= e!4629975 tp_is_empty!52263)))

(declare-fun b!7827447 () Bool)

(declare-fun tp!2312609 () Bool)

(assert (=> b!7827447 (= e!4629975 tp!2312609)))

(assert (=> b!7827118 (= tp!2312490 e!4629975)))

(declare-fun b!7827446 () Bool)

(declare-fun tp!2312606 () Bool)

(declare-fun tp!2312610 () Bool)

(assert (=> b!7827446 (= e!4629975 (and tp!2312606 tp!2312610))))

(assert (= (and b!7827118 (is-ElementMatch!20954 (regTwo!42420 r1!6261))) b!7827445))

(assert (= (and b!7827118 (is-Concat!29799 (regTwo!42420 r1!6261))) b!7827446))

(assert (= (and b!7827118 (is-Star!20954 (regTwo!42420 r1!6261))) b!7827447))

(assert (= (and b!7827118 (is-Union!20954 (regTwo!42420 r1!6261))) b!7827448))

(declare-fun b!7827449 () Bool)

(declare-fun e!4629976 () Bool)

(declare-fun tp!2312611 () Bool)

(assert (=> b!7827449 (= e!4629976 (and tp_is_empty!52263 tp!2312611))))

(assert (=> b!7827115 (= tp!2312498 e!4629976)))

(assert (= (and b!7827115 (is-Cons!73667 (t!388526 s!14274))) b!7827449))

(declare-fun b!7827453 () Bool)

(declare-fun e!4629977 () Bool)

(declare-fun tp!2312614 () Bool)

(declare-fun tp!2312613 () Bool)

(assert (=> b!7827453 (= e!4629977 (and tp!2312614 tp!2312613))))

(declare-fun b!7827450 () Bool)

(assert (=> b!7827450 (= e!4629977 tp_is_empty!52263)))

(declare-fun b!7827452 () Bool)

(declare-fun tp!2312615 () Bool)

(assert (=> b!7827452 (= e!4629977 tp!2312615)))

(assert (=> b!7827104 (= tp!2312497 e!4629977)))

(declare-fun b!7827451 () Bool)

(declare-fun tp!2312612 () Bool)

(declare-fun tp!2312616 () Bool)

(assert (=> b!7827451 (= e!4629977 (and tp!2312612 tp!2312616))))

(assert (= (and b!7827104 (is-ElementMatch!20954 (reg!21283 r2!6199))) b!7827450))

(assert (= (and b!7827104 (is-Concat!29799 (reg!21283 r2!6199))) b!7827451))

(assert (= (and b!7827104 (is-Star!20954 (reg!21283 r2!6199))) b!7827452))

(assert (= (and b!7827104 (is-Union!20954 (reg!21283 r2!6199))) b!7827453))

(push 1)

(assert (not b!7827390))

(assert (not b!7827420))

(assert (not b!7827416))

(assert (not b!7827453))

(assert (not d!2350419))

(assert (not b!7827353))

(assert (not b!7827422))

(assert (not b!7827429))

(assert (not b!7827428))

(assert (not b!7827374))

(assert (not b!7827437))

(assert (not bm!725944))

(assert (not bm!725946))

(assert (not b!7827360))

(assert (not b!7827434))

(assert (not b!7827415))

(assert (not b!7827290))

(assert (not b!7827411))

(assert (not b!7827332))

(assert (not bm!725947))

(assert (not b!7827238))

(assert (not b!7827354))

(assert (not b!7827293))

(assert (not d!2350413))

(assert (not b!7827361))

(assert (not b!7827300))

(assert (not b!7827348))

(assert (not bm!725930))

(assert (not b!7827380))

(assert (not b!7827386))

(assert (not b!7827282))

(assert (not d!2350421))

(assert (not b!7827435))

(assert (not d!2350407))

(assert (not b!7827375))

(assert (not b!7827393))

(assert (not b!7827399))

(assert (not b!7827379))

(assert (not b!7827447))

(assert (not b!7827442))

(assert (not b!7827283))

(assert (not b!7827430))

(assert (not d!2350417))

(assert (not b!7827433))

(assert (not b!7827418))

(assert (not b!7827280))

(assert (not b!7827289))

(assert (not b!7827439))

(assert (not b!7827452))

(assert (not b!7827331))

(assert (not b!7827342))

(assert (not b!7827424))

(assert (not bm!725929))

(assert (not b!7827438))

(assert (not b!7827350))

(assert (not bm!725942))

(assert (not d!2350397))

(assert (not b!7827449))

(assert (not b!7827364))

(assert (not b!7827377))

(assert (not b!7827322))

(assert (not b!7827440))

(assert (not bm!725945))

(assert (not b!7827413))

(assert (not b!7827451))

(assert (not b!7827321))

(assert (not b!7827417))

(assert (not b!7827351))

(assert (not b!7827329))

(assert (not b!7827448))

(assert tp_is_empty!52263)

(assert (not b!7827421))

(assert (not b!7827443))

(assert (not b!7827339))

(assert (not b!7827444))

(assert (not b!7827320))

(assert (not b!7827426))

(assert (not bm!725948))

(assert (not b!7827338))

(assert (not b!7827446))

(assert (not b!7827387))

(assert (not b!7827328))

(assert (not b!7827425))

(assert (not b!7827392))

(assert (not b!7827412))

(assert (not b!7827431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2350441 () Bool)

(declare-fun lt!2676829 () Int)

(assert (=> d!2350441 (>= lt!2676829 0)))

(declare-fun e!4630062 () Int)

(assert (=> d!2350441 (= lt!2676829 e!4630062)))

(declare-fun c!1440161 () Bool)

(assert (=> d!2350441 (= c!1440161 (is-Nil!73667 lt!2676813))))

(assert (=> d!2350441 (= (size!42754 lt!2676813) lt!2676829)))

(declare-fun b!7827632 () Bool)

(assert (=> b!7827632 (= e!4630062 0)))

(declare-fun b!7827633 () Bool)

(assert (=> b!7827633 (= e!4630062 (+ 1 (size!42754 (t!388526 lt!2676813))))))

(assert (= (and d!2350441 c!1440161) b!7827632))

(assert (= (and d!2350441 (not c!1440161)) b!7827633))

(declare-fun m!8247558 () Bool)

(assert (=> b!7827633 m!8247558))

(assert (=> b!7827393 d!2350441))

(assert (=> b!7827393 d!2350411))

(declare-fun d!2350443 () Bool)

(declare-fun lt!2676830 () Int)

(assert (=> d!2350443 (>= lt!2676830 0)))

(declare-fun e!4630063 () Int)

(assert (=> d!2350443 (= lt!2676830 e!4630063)))

(declare-fun c!1440162 () Bool)

(assert (=> d!2350443 (= c!1440162 (is-Nil!73667 s2Rec!453))))

(assert (=> d!2350443 (= (size!42754 s2Rec!453) lt!2676830)))

(declare-fun b!7827634 () Bool)

(assert (=> b!7827634 (= e!4630063 0)))

(declare-fun b!7827635 () Bool)

(assert (=> b!7827635 (= e!4630063 (+ 1 (size!42754 (t!388526 s2Rec!453))))))

(assert (= (and d!2350443 c!1440162) b!7827634))

(assert (= (and d!2350443 (not c!1440162)) b!7827635))

(declare-fun m!8247560 () Bool)

(assert (=> b!7827635 m!8247560))

(assert (=> b!7827393 d!2350443))

(declare-fun d!2350445 () Bool)

(declare-fun nullableFct!3667 (Regex!20954) Bool)

(assert (=> d!2350445 (= (nullable!9298 r1!6261) (nullableFct!3667 r1!6261))))

(declare-fun bs!1966782 () Bool)

(assert (= bs!1966782 d!2350445))

(declare-fun m!8247562 () Bool)

(assert (=> bs!1966782 m!8247562))

(assert (=> b!7827364 d!2350445))

(declare-fun d!2350447 () Bool)

(assert (=> d!2350447 (= (head!15987 s2!3721) (h!80115 s2!3721))))

(assert (=> b!7827280 d!2350447))

(declare-fun d!2350449 () Bool)

(assert (=> d!2350449 (= (isEmpty!42286 (tail!15528 s2Rec!453)) (is-Nil!73667 (tail!15528 s2Rec!453)))))

(assert (=> b!7827332 d!2350449))

(declare-fun d!2350451 () Bool)

(assert (=> d!2350451 (= (tail!15528 s2Rec!453) (t!388526 s2Rec!453))))

(assert (=> b!7827332 d!2350451))

(declare-fun b!7827636 () Bool)

(declare-fun e!4630065 () Bool)

(assert (=> b!7827636 (= e!4630065 (= (head!15987 (tail!15528 s1!4101)) (c!1440089 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))))))

(declare-fun b!7827637 () Bool)

(declare-fun e!4630067 () Bool)

(declare-fun e!4630068 () Bool)

(assert (=> b!7827637 (= e!4630067 e!4630068)))

(declare-fun res!3114515 () Bool)

(assert (=> b!7827637 (=> (not res!3114515) (not e!4630068))))

(declare-fun lt!2676831 () Bool)

(assert (=> b!7827637 (= res!3114515 (not lt!2676831))))

(declare-fun b!7827638 () Bool)

(declare-fun e!4630070 () Bool)

(assert (=> b!7827638 (= e!4630070 (not (= (head!15987 (tail!15528 s1!4101)) (c!1440089 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))))

(declare-fun b!7827639 () Bool)

(declare-fun res!3114516 () Bool)

(assert (=> b!7827639 (=> (not res!3114516) (not e!4630065))))

(assert (=> b!7827639 (= res!3114516 (isEmpty!42286 (tail!15528 (tail!15528 s1!4101))))))

(declare-fun b!7827640 () Bool)

(declare-fun e!4630069 () Bool)

(assert (=> b!7827640 (= e!4630069 (not lt!2676831))))

(declare-fun b!7827641 () Bool)

(declare-fun res!3114518 () Bool)

(assert (=> b!7827641 (=> res!3114518 e!4630067)))

(assert (=> b!7827641 (= res!3114518 e!4630065)))

(declare-fun res!3114522 () Bool)

(assert (=> b!7827641 (=> (not res!3114522) (not e!4630065))))

(assert (=> b!7827641 (= res!3114522 lt!2676831)))

(declare-fun b!7827642 () Bool)

(declare-fun res!3114519 () Bool)

(assert (=> b!7827642 (=> res!3114519 e!4630067)))

(assert (=> b!7827642 (= res!3114519 (not (is-ElementMatch!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))))))

(assert (=> b!7827642 (= e!4630069 e!4630067)))

(declare-fun b!7827643 () Bool)

(declare-fun e!4630066 () Bool)

(declare-fun call!725963 () Bool)

(assert (=> b!7827643 (= e!4630066 (= lt!2676831 call!725963))))

(declare-fun b!7827644 () Bool)

(assert (=> b!7827644 (= e!4630068 e!4630070)))

(declare-fun res!3114517 () Bool)

(assert (=> b!7827644 (=> res!3114517 e!4630070)))

(assert (=> b!7827644 (= res!3114517 call!725963)))

(declare-fun b!7827645 () Bool)

(declare-fun res!3114521 () Bool)

(assert (=> b!7827645 (=> res!3114521 e!4630070)))

(assert (=> b!7827645 (= res!3114521 (not (isEmpty!42286 (tail!15528 (tail!15528 s1!4101)))))))

(declare-fun b!7827646 () Bool)

(declare-fun e!4630064 () Bool)

(assert (=> b!7827646 (= e!4630064 (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101))) (tail!15528 (tail!15528 s1!4101))))))

(declare-fun d!2350453 () Bool)

(assert (=> d!2350453 e!4630066))

(declare-fun c!1440164 () Bool)

(assert (=> d!2350453 (= c!1440164 (is-EmptyExpr!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(assert (=> d!2350453 (= lt!2676831 e!4630064)))

(declare-fun c!1440165 () Bool)

(assert (=> d!2350453 (= c!1440165 (isEmpty!42286 (tail!15528 s1!4101)))))

(assert (=> d!2350453 (validRegex!11368 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))))

(assert (=> d!2350453 (= (matchR!10410 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (tail!15528 s1!4101)) lt!2676831)))

(declare-fun bm!725958 () Bool)

(assert (=> bm!725958 (= call!725963 (isEmpty!42286 (tail!15528 s1!4101)))))

(declare-fun b!7827647 () Bool)

(assert (=> b!7827647 (= e!4630066 e!4630069)))

(declare-fun c!1440163 () Bool)

(assert (=> b!7827647 (= c!1440163 (is-EmptyLang!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(declare-fun b!7827648 () Bool)

(declare-fun res!3114520 () Bool)

(assert (=> b!7827648 (=> (not res!3114520) (not e!4630065))))

(assert (=> b!7827648 (= res!3114520 (not call!725963))))

(declare-fun b!7827649 () Bool)

(assert (=> b!7827649 (= e!4630064 (nullable!9298 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(assert (= (and d!2350453 c!1440165) b!7827649))

(assert (= (and d!2350453 (not c!1440165)) b!7827646))

(assert (= (and d!2350453 c!1440164) b!7827643))

(assert (= (and d!2350453 (not c!1440164)) b!7827647))

(assert (= (and b!7827647 c!1440163) b!7827640))

(assert (= (and b!7827647 (not c!1440163)) b!7827642))

(assert (= (and b!7827642 (not res!3114519)) b!7827641))

(assert (= (and b!7827641 res!3114522) b!7827648))

(assert (= (and b!7827648 res!3114520) b!7827639))

(assert (= (and b!7827639 res!3114516) b!7827636))

(assert (= (and b!7827641 (not res!3114518)) b!7827637))

(assert (= (and b!7827637 res!3114515) b!7827644))

(assert (= (and b!7827644 (not res!3114517)) b!7827645))

(assert (= (and b!7827645 (not res!3114521)) b!7827638))

(assert (= (or b!7827643 b!7827644 b!7827648) bm!725958))

(assert (=> b!7827645 m!8247404))

(declare-fun m!8247564 () Bool)

(assert (=> b!7827645 m!8247564))

(assert (=> b!7827645 m!8247564))

(declare-fun m!8247566 () Bool)

(assert (=> b!7827645 m!8247566))

(assert (=> b!7827636 m!8247404))

(declare-fun m!8247568 () Bool)

(assert (=> b!7827636 m!8247568))

(assert (=> d!2350453 m!8247404))

(assert (=> d!2350453 m!8247460))

(assert (=> d!2350453 m!8247464))

(declare-fun m!8247570 () Bool)

(assert (=> d!2350453 m!8247570))

(assert (=> b!7827649 m!8247464))

(declare-fun m!8247572 () Bool)

(assert (=> b!7827649 m!8247572))

(assert (=> bm!725958 m!8247404))

(assert (=> bm!725958 m!8247460))

(assert (=> b!7827639 m!8247404))

(assert (=> b!7827639 m!8247564))

(assert (=> b!7827639 m!8247564))

(assert (=> b!7827639 m!8247566))

(assert (=> b!7827638 m!8247404))

(assert (=> b!7827638 m!8247568))

(assert (=> b!7827646 m!8247404))

(assert (=> b!7827646 m!8247568))

(assert (=> b!7827646 m!8247464))

(assert (=> b!7827646 m!8247568))

(declare-fun m!8247574 () Bool)

(assert (=> b!7827646 m!8247574))

(assert (=> b!7827646 m!8247404))

(assert (=> b!7827646 m!8247564))

(assert (=> b!7827646 m!8247574))

(assert (=> b!7827646 m!8247564))

(declare-fun m!8247576 () Bool)

(assert (=> b!7827646 m!8247576))

(assert (=> b!7827387 d!2350453))

(declare-fun b!7827670 () Bool)

(declare-fun e!4630083 () Regex!20954)

(declare-fun e!4630085 () Regex!20954)

(assert (=> b!7827670 (= e!4630083 e!4630085)))

(declare-fun c!1440178 () Bool)

(assert (=> b!7827670 (= c!1440178 (is-Star!20954 r1!6261))))

(declare-fun b!7827671 () Bool)

(declare-fun call!725973 () Regex!20954)

(declare-fun call!725974 () Regex!20954)

(assert (=> b!7827671 (= e!4630083 (Union!20954 call!725973 call!725974))))

(declare-fun c!1440176 () Bool)

(declare-fun bm!725967 () Bool)

(assert (=> bm!725967 (= call!725974 (derivativeStep!6257 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)) (head!15987 s1!4101)))))

(declare-fun b!7827672 () Bool)

(declare-fun e!4630081 () Regex!20954)

(declare-fun call!725975 () Regex!20954)

(assert (=> b!7827672 (= e!4630081 (Union!20954 (Concat!29799 call!725975 (regTwo!42420 r1!6261)) EmptyLang!20954))))

(declare-fun bm!725968 () Bool)

(declare-fun call!725972 () Regex!20954)

(assert (=> bm!725968 (= call!725975 call!725972)))

(declare-fun d!2350455 () Bool)

(declare-fun lt!2676834 () Regex!20954)

(assert (=> d!2350455 (validRegex!11368 lt!2676834)))

(declare-fun e!4630082 () Regex!20954)

(assert (=> d!2350455 (= lt!2676834 e!4630082)))

(declare-fun c!1440177 () Bool)

(assert (=> d!2350455 (= c!1440177 (or (is-EmptyExpr!20954 r1!6261) (is-EmptyLang!20954 r1!6261)))))

(assert (=> d!2350455 (validRegex!11368 r1!6261)))

(assert (=> d!2350455 (= (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) lt!2676834)))

(declare-fun bm!725969 () Bool)

(assert (=> bm!725969 (= call!725973 (derivativeStep!6257 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))) (head!15987 s1!4101)))))

(declare-fun b!7827673 () Bool)

(declare-fun e!4630084 () Regex!20954)

(assert (=> b!7827673 (= e!4630082 e!4630084)))

(declare-fun c!1440179 () Bool)

(assert (=> b!7827673 (= c!1440179 (is-ElementMatch!20954 r1!6261))))

(declare-fun b!7827674 () Bool)

(assert (=> b!7827674 (= e!4630084 (ite (= (head!15987 s1!4101) (c!1440089 r1!6261)) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7827675 () Bool)

(assert (=> b!7827675 (= e!4630081 (Union!20954 (Concat!29799 call!725975 (regTwo!42420 r1!6261)) call!725974))))

(declare-fun b!7827676 () Bool)

(assert (=> b!7827676 (= e!4630082 EmptyLang!20954)))

(declare-fun b!7827677 () Bool)

(assert (=> b!7827677 (= e!4630085 (Concat!29799 call!725972 r1!6261))))

(declare-fun b!7827678 () Bool)

(declare-fun c!1440180 () Bool)

(assert (=> b!7827678 (= c!1440180 (nullable!9298 (regOne!42420 r1!6261)))))

(assert (=> b!7827678 (= e!4630085 e!4630081)))

(declare-fun bm!725970 () Bool)

(assert (=> bm!725970 (= call!725972 call!725973)))

(declare-fun b!7827679 () Bool)

(assert (=> b!7827679 (= c!1440176 (is-Union!20954 r1!6261))))

(assert (=> b!7827679 (= e!4630084 e!4630083)))

(assert (= (and d!2350455 c!1440177) b!7827676))

(assert (= (and d!2350455 (not c!1440177)) b!7827673))

(assert (= (and b!7827673 c!1440179) b!7827674))

(assert (= (and b!7827673 (not c!1440179)) b!7827679))

(assert (= (and b!7827679 c!1440176) b!7827671))

(assert (= (and b!7827679 (not c!1440176)) b!7827670))

(assert (= (and b!7827670 c!1440178) b!7827677))

(assert (= (and b!7827670 (not c!1440178)) b!7827678))

(assert (= (and b!7827678 c!1440180) b!7827675))

(assert (= (and b!7827678 (not c!1440180)) b!7827672))

(assert (= (or b!7827675 b!7827672) bm!725968))

(assert (= (or b!7827677 bm!725968) bm!725970))

(assert (= (or b!7827671 bm!725970) bm!725969))

(assert (= (or b!7827671 b!7827675) bm!725967))

(assert (=> bm!725967 m!8247400))

(declare-fun m!8247578 () Bool)

(assert (=> bm!725967 m!8247578))

(declare-fun m!8247580 () Bool)

(assert (=> d!2350455 m!8247580))

(assert (=> d!2350455 m!8247322))

(assert (=> bm!725969 m!8247400))

(declare-fun m!8247582 () Bool)

(assert (=> bm!725969 m!8247582))

(declare-fun m!8247584 () Bool)

(assert (=> b!7827678 m!8247584))

(assert (=> b!7827387 d!2350455))

(declare-fun d!2350457 () Bool)

(assert (=> d!2350457 (= (head!15987 s1!4101) (h!80115 s1!4101))))

(assert (=> b!7827387 d!2350457))

(declare-fun d!2350459 () Bool)

(assert (=> d!2350459 (= (tail!15528 s1!4101) (t!388526 s1!4101))))

(assert (=> b!7827387 d!2350459))

(declare-fun d!2350461 () Bool)

(declare-fun lt!2676835 () Int)

(assert (=> d!2350461 (>= lt!2676835 0)))

(declare-fun e!4630086 () Int)

(assert (=> d!2350461 (= lt!2676835 e!4630086)))

(declare-fun c!1440181 () Bool)

(assert (=> d!2350461 (= c!1440181 (is-Nil!73667 (t!388526 s!14274)))))

(assert (=> d!2350461 (= (size!42754 (t!388526 s!14274)) lt!2676835)))

(declare-fun b!7827680 () Bool)

(assert (=> b!7827680 (= e!4630086 0)))

(declare-fun b!7827681 () Bool)

(assert (=> b!7827681 (= e!4630086 (+ 1 (size!42754 (t!388526 (t!388526 s!14274)))))))

(assert (= (and d!2350461 c!1440181) b!7827680))

(assert (= (and d!2350461 (not c!1440181)) b!7827681))

(declare-fun m!8247586 () Bool)

(assert (=> b!7827681 m!8247586))

(assert (=> b!7827348 d!2350461))

(declare-fun b!7827682 () Bool)

(declare-fun e!4630088 () Bool)

(assert (=> b!7827682 (= e!4630088 (= (head!15987 (tail!15528 s1Rec!453)) (c!1440089 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))))))

(declare-fun b!7827683 () Bool)

(declare-fun e!4630090 () Bool)

(declare-fun e!4630091 () Bool)

(assert (=> b!7827683 (= e!4630090 e!4630091)))

(declare-fun res!3114523 () Bool)

(assert (=> b!7827683 (=> (not res!3114523) (not e!4630091))))

(declare-fun lt!2676836 () Bool)

(assert (=> b!7827683 (= res!3114523 (not lt!2676836))))

(declare-fun b!7827684 () Bool)

(declare-fun e!4630093 () Bool)

(assert (=> b!7827684 (= e!4630093 (not (= (head!15987 (tail!15528 s1Rec!453)) (c!1440089 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))))

(declare-fun b!7827685 () Bool)

(declare-fun res!3114524 () Bool)

(assert (=> b!7827685 (=> (not res!3114524) (not e!4630088))))

(assert (=> b!7827685 (= res!3114524 (isEmpty!42286 (tail!15528 (tail!15528 s1Rec!453))))))

(declare-fun b!7827686 () Bool)

(declare-fun e!4630092 () Bool)

(assert (=> b!7827686 (= e!4630092 (not lt!2676836))))

(declare-fun b!7827687 () Bool)

(declare-fun res!3114526 () Bool)

(assert (=> b!7827687 (=> res!3114526 e!4630090)))

(assert (=> b!7827687 (= res!3114526 e!4630088)))

(declare-fun res!3114530 () Bool)

(assert (=> b!7827687 (=> (not res!3114530) (not e!4630088))))

(assert (=> b!7827687 (= res!3114530 lt!2676836)))

(declare-fun b!7827688 () Bool)

(declare-fun res!3114527 () Bool)

(assert (=> b!7827688 (=> res!3114527 e!4630090)))

(assert (=> b!7827688 (= res!3114527 (not (is-ElementMatch!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))))))

(assert (=> b!7827688 (= e!4630092 e!4630090)))

(declare-fun b!7827689 () Bool)

(declare-fun e!4630089 () Bool)

(declare-fun call!725976 () Bool)

(assert (=> b!7827689 (= e!4630089 (= lt!2676836 call!725976))))

(declare-fun b!7827690 () Bool)

(assert (=> b!7827690 (= e!4630091 e!4630093)))

(declare-fun res!3114525 () Bool)

(assert (=> b!7827690 (=> res!3114525 e!4630093)))

(assert (=> b!7827690 (= res!3114525 call!725976)))

(declare-fun b!7827691 () Bool)

(declare-fun res!3114529 () Bool)

(assert (=> b!7827691 (=> res!3114529 e!4630093)))

(assert (=> b!7827691 (= res!3114529 (not (isEmpty!42286 (tail!15528 (tail!15528 s1Rec!453)))))))

(declare-fun b!7827692 () Bool)

(declare-fun e!4630087 () Bool)

(assert (=> b!7827692 (= e!4630087 (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453))) (tail!15528 (tail!15528 s1Rec!453))))))

(declare-fun d!2350463 () Bool)

(assert (=> d!2350463 e!4630089))

(declare-fun c!1440183 () Bool)

(assert (=> d!2350463 (= c!1440183 (is-EmptyExpr!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(assert (=> d!2350463 (= lt!2676836 e!4630087)))

(declare-fun c!1440184 () Bool)

(assert (=> d!2350463 (= c!1440184 (isEmpty!42286 (tail!15528 s1Rec!453)))))

(assert (=> d!2350463 (validRegex!11368 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))))

(assert (=> d!2350463 (= (matchR!10410 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (tail!15528 s1Rec!453)) lt!2676836)))

(declare-fun bm!725971 () Bool)

(assert (=> bm!725971 (= call!725976 (isEmpty!42286 (tail!15528 s1Rec!453)))))

(declare-fun b!7827693 () Bool)

(assert (=> b!7827693 (= e!4630089 e!4630092)))

(declare-fun c!1440182 () Bool)

(assert (=> b!7827693 (= c!1440182 (is-EmptyLang!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(declare-fun b!7827694 () Bool)

(declare-fun res!3114528 () Bool)

(assert (=> b!7827694 (=> (not res!3114528) (not e!4630088))))

(assert (=> b!7827694 (= res!3114528 (not call!725976))))

(declare-fun b!7827695 () Bool)

(assert (=> b!7827695 (= e!4630087 (nullable!9298 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(assert (= (and d!2350463 c!1440184) b!7827695))

(assert (= (and d!2350463 (not c!1440184)) b!7827692))

(assert (= (and d!2350463 c!1440183) b!7827689))

(assert (= (and d!2350463 (not c!1440183)) b!7827693))

(assert (= (and b!7827693 c!1440182) b!7827686))

(assert (= (and b!7827693 (not c!1440182)) b!7827688))

(assert (= (and b!7827688 (not res!3114527)) b!7827687))

(assert (= (and b!7827687 res!3114530) b!7827694))

(assert (= (and b!7827694 res!3114528) b!7827685))

(assert (= (and b!7827685 res!3114524) b!7827682))

(assert (= (and b!7827687 (not res!3114526)) b!7827683))

(assert (= (and b!7827683 res!3114523) b!7827690))

(assert (= (and b!7827690 (not res!3114525)) b!7827691))

(assert (= (and b!7827691 (not res!3114529)) b!7827684))

(assert (= (or b!7827689 b!7827690 b!7827694) bm!725971))

(assert (=> b!7827691 m!8247402))

(declare-fun m!8247588 () Bool)

(assert (=> b!7827691 m!8247588))

(assert (=> b!7827691 m!8247588))

(declare-fun m!8247590 () Bool)

(assert (=> b!7827691 m!8247590))

(assert (=> b!7827682 m!8247402))

(declare-fun m!8247592 () Bool)

(assert (=> b!7827682 m!8247592))

(assert (=> d!2350463 m!8247402))

(assert (=> d!2350463 m!8247438))

(assert (=> d!2350463 m!8247444))

(declare-fun m!8247594 () Bool)

(assert (=> d!2350463 m!8247594))

(assert (=> b!7827695 m!8247444))

(declare-fun m!8247596 () Bool)

(assert (=> b!7827695 m!8247596))

(assert (=> bm!725971 m!8247402))

(assert (=> bm!725971 m!8247438))

(assert (=> b!7827685 m!8247402))

(assert (=> b!7827685 m!8247588))

(assert (=> b!7827685 m!8247588))

(assert (=> b!7827685 m!8247590))

(assert (=> b!7827684 m!8247402))

(assert (=> b!7827684 m!8247592))

(assert (=> b!7827692 m!8247402))

(assert (=> b!7827692 m!8247592))

(assert (=> b!7827692 m!8247444))

(assert (=> b!7827692 m!8247592))

(declare-fun m!8247598 () Bool)

(assert (=> b!7827692 m!8247598))

(assert (=> b!7827692 m!8247402))

(assert (=> b!7827692 m!8247588))

(assert (=> b!7827692 m!8247598))

(assert (=> b!7827692 m!8247588))

(declare-fun m!8247600 () Bool)

(assert (=> b!7827692 m!8247600))

(assert (=> b!7827361 d!2350463))

(declare-fun b!7827696 () Bool)

(declare-fun e!4630096 () Regex!20954)

(declare-fun e!4630098 () Regex!20954)

(assert (=> b!7827696 (= e!4630096 e!4630098)))

(declare-fun c!1440187 () Bool)

(assert (=> b!7827696 (= c!1440187 (is-Star!20954 r1!6261))))

(declare-fun b!7827697 () Bool)

(declare-fun call!725978 () Regex!20954)

(declare-fun call!725979 () Regex!20954)

(assert (=> b!7827697 (= e!4630096 (Union!20954 call!725978 call!725979))))

(declare-fun c!1440185 () Bool)

(declare-fun bm!725972 () Bool)

(assert (=> bm!725972 (= call!725979 (derivativeStep!6257 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)) (head!15987 s1Rec!453)))))

(declare-fun b!7827698 () Bool)

(declare-fun e!4630094 () Regex!20954)

(declare-fun call!725980 () Regex!20954)

(assert (=> b!7827698 (= e!4630094 (Union!20954 (Concat!29799 call!725980 (regTwo!42420 r1!6261)) EmptyLang!20954))))

(declare-fun bm!725973 () Bool)

(declare-fun call!725977 () Regex!20954)

(assert (=> bm!725973 (= call!725980 call!725977)))

(declare-fun d!2350465 () Bool)

(declare-fun lt!2676837 () Regex!20954)

(assert (=> d!2350465 (validRegex!11368 lt!2676837)))

(declare-fun e!4630095 () Regex!20954)

(assert (=> d!2350465 (= lt!2676837 e!4630095)))

(declare-fun c!1440186 () Bool)

(assert (=> d!2350465 (= c!1440186 (or (is-EmptyExpr!20954 r1!6261) (is-EmptyLang!20954 r1!6261)))))

(assert (=> d!2350465 (validRegex!11368 r1!6261)))

(assert (=> d!2350465 (= (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) lt!2676837)))

(declare-fun bm!725974 () Bool)

(assert (=> bm!725974 (= call!725978 (derivativeStep!6257 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))) (head!15987 s1Rec!453)))))

(declare-fun b!7827699 () Bool)

(declare-fun e!4630097 () Regex!20954)

(assert (=> b!7827699 (= e!4630095 e!4630097)))

(declare-fun c!1440188 () Bool)

(assert (=> b!7827699 (= c!1440188 (is-ElementMatch!20954 r1!6261))))

(declare-fun b!7827700 () Bool)

(assert (=> b!7827700 (= e!4630097 (ite (= (head!15987 s1Rec!453) (c!1440089 r1!6261)) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7827701 () Bool)

(assert (=> b!7827701 (= e!4630094 (Union!20954 (Concat!29799 call!725980 (regTwo!42420 r1!6261)) call!725979))))

(declare-fun b!7827702 () Bool)

(assert (=> b!7827702 (= e!4630095 EmptyLang!20954)))

(declare-fun b!7827703 () Bool)

(assert (=> b!7827703 (= e!4630098 (Concat!29799 call!725977 r1!6261))))

(declare-fun b!7827704 () Bool)

(declare-fun c!1440189 () Bool)

(assert (=> b!7827704 (= c!1440189 (nullable!9298 (regOne!42420 r1!6261)))))

(assert (=> b!7827704 (= e!4630098 e!4630094)))

(declare-fun bm!725975 () Bool)

(assert (=> bm!725975 (= call!725977 call!725978)))

(declare-fun b!7827705 () Bool)

(assert (=> b!7827705 (= c!1440185 (is-Union!20954 r1!6261))))

(assert (=> b!7827705 (= e!4630097 e!4630096)))

(assert (= (and d!2350465 c!1440186) b!7827702))

(assert (= (and d!2350465 (not c!1440186)) b!7827699))

(assert (= (and b!7827699 c!1440188) b!7827700))

(assert (= (and b!7827699 (not c!1440188)) b!7827705))

(assert (= (and b!7827705 c!1440185) b!7827697))

(assert (= (and b!7827705 (not c!1440185)) b!7827696))

(assert (= (and b!7827696 c!1440187) b!7827703))

(assert (= (and b!7827696 (not c!1440187)) b!7827704))

(assert (= (and b!7827704 c!1440189) b!7827701))

(assert (= (and b!7827704 (not c!1440189)) b!7827698))

(assert (= (or b!7827701 b!7827698) bm!725973))

(assert (= (or b!7827703 bm!725973) bm!725975))

(assert (= (or b!7827697 bm!725975) bm!725974))

(assert (= (or b!7827697 b!7827701) bm!725972))

(assert (=> bm!725972 m!8247398))

(declare-fun m!8247602 () Bool)

(assert (=> bm!725972 m!8247602))

(declare-fun m!8247604 () Bool)

(assert (=> d!2350465 m!8247604))

(assert (=> d!2350465 m!8247322))

(assert (=> bm!725974 m!8247398))

(declare-fun m!8247606 () Bool)

(assert (=> bm!725974 m!8247606))

(assert (=> b!7827704 m!8247584))

(assert (=> b!7827361 d!2350465))

(declare-fun d!2350467 () Bool)

(assert (=> d!2350467 (= (head!15987 s1Rec!453) (h!80115 s1Rec!453))))

(assert (=> b!7827361 d!2350467))

(declare-fun d!2350469 () Bool)

(assert (=> d!2350469 (= (tail!15528 s1Rec!453) (t!388526 s1Rec!453))))

(assert (=> b!7827361 d!2350469))

(declare-fun d!2350471 () Bool)

(declare-fun lt!2676838 () Int)

(assert (=> d!2350471 (>= lt!2676838 0)))

(declare-fun e!4630099 () Int)

(assert (=> d!2350471 (= lt!2676838 e!4630099)))

(declare-fun c!1440190 () Bool)

(assert (=> d!2350471 (= c!1440190 (is-Nil!73667 lt!2676811))))

(assert (=> d!2350471 (= (size!42754 lt!2676811) lt!2676838)))

(declare-fun b!7827706 () Bool)

(assert (=> b!7827706 (= e!4630099 0)))

(declare-fun b!7827707 () Bool)

(assert (=> b!7827707 (= e!4630099 (+ 1 (size!42754 (t!388526 lt!2676811))))))

(assert (= (and d!2350471 c!1440190) b!7827706))

(assert (= (and d!2350471 (not c!1440190)) b!7827707))

(declare-fun m!8247608 () Bool)

(assert (=> b!7827707 m!8247608))

(assert (=> b!7827375 d!2350471))

(assert (=> b!7827375 d!2350405))

(declare-fun d!2350473 () Bool)

(declare-fun lt!2676839 () Int)

(assert (=> d!2350473 (>= lt!2676839 0)))

(declare-fun e!4630100 () Int)

(assert (=> d!2350473 (= lt!2676839 e!4630100)))

(declare-fun c!1440191 () Bool)

(assert (=> d!2350473 (= c!1440191 (is-Nil!73667 s2!3721))))

(assert (=> d!2350473 (= (size!42754 s2!3721) lt!2676839)))

(declare-fun b!7827708 () Bool)

(assert (=> b!7827708 (= e!4630100 0)))

(declare-fun b!7827709 () Bool)

(assert (=> b!7827709 (= e!4630100 (+ 1 (size!42754 (t!388526 s2!3721))))))

(assert (= (and d!2350473 c!1440191) b!7827708))

(assert (= (and d!2350473 (not c!1440191)) b!7827709))

(declare-fun m!8247610 () Bool)

(assert (=> b!7827709 m!8247610))

(assert (=> b!7827375 d!2350473))

(declare-fun b!7827710 () Bool)

(declare-fun e!4630106 () Bool)

(declare-fun e!4630103 () Bool)

(assert (=> b!7827710 (= e!4630106 e!4630103)))

(declare-fun res!3114532 () Bool)

(assert (=> b!7827710 (=> (not res!3114532) (not e!4630103))))

(declare-fun call!725982 () Bool)

(assert (=> b!7827710 (= res!3114532 call!725982)))

(declare-fun b!7827712 () Bool)

(declare-fun call!725983 () Bool)

(assert (=> b!7827712 (= e!4630103 call!725983)))

(declare-fun b!7827713 () Bool)

(declare-fun res!3114535 () Bool)

(declare-fun e!4630104 () Bool)

(assert (=> b!7827713 (=> (not res!3114535) (not e!4630104))))

(assert (=> b!7827713 (= res!3114535 call!725983)))

(declare-fun e!4630107 () Bool)

(assert (=> b!7827713 (= e!4630107 e!4630104)))

(declare-fun b!7827714 () Bool)

(declare-fun e!4630102 () Bool)

(declare-fun e!4630105 () Bool)

(assert (=> b!7827714 (= e!4630102 e!4630105)))

(declare-fun c!1440193 () Bool)

(assert (=> b!7827714 (= c!1440193 (is-Star!20954 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))

(declare-fun b!7827715 () Bool)

(declare-fun e!4630101 () Bool)

(declare-fun call!725981 () Bool)

(assert (=> b!7827715 (= e!4630101 call!725981)))

(declare-fun b!7827716 () Bool)

(assert (=> b!7827716 (= e!4630105 e!4630101)))

(declare-fun res!3114534 () Bool)

(assert (=> b!7827716 (= res!3114534 (not (nullable!9298 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))

(assert (=> b!7827716 (=> (not res!3114534) (not e!4630101))))

(declare-fun bm!725976 () Bool)

(assert (=> bm!725976 (= call!725983 call!725981)))

(declare-fun bm!725977 () Bool)

(declare-fun c!1440192 () Bool)

(assert (=> bm!725977 (= call!725982 (validRegex!11368 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))

(declare-fun bm!725978 () Bool)

(assert (=> bm!725978 (= call!725981 (validRegex!11368 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))))

(declare-fun d!2350475 () Bool)

(declare-fun res!3114533 () Bool)

(assert (=> d!2350475 (=> res!3114533 e!4630102)))

(assert (=> d!2350475 (= res!3114533 (is-ElementMatch!20954 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))

(assert (=> d!2350475 (= (validRegex!11368 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) e!4630102)))

(declare-fun b!7827711 () Bool)

(assert (=> b!7827711 (= e!4630104 call!725982)))

(declare-fun b!7827717 () Bool)

(declare-fun res!3114531 () Bool)

(assert (=> b!7827717 (=> res!3114531 e!4630106)))

(assert (=> b!7827717 (= res!3114531 (not (is-Concat!29799 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))

(assert (=> b!7827717 (= e!4630107 e!4630106)))

(declare-fun b!7827718 () Bool)

(assert (=> b!7827718 (= e!4630105 e!4630107)))

(assert (=> b!7827718 (= c!1440192 (is-Union!20954 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))

(assert (= (and d!2350475 (not res!3114533)) b!7827714))

(assert (= (and b!7827714 c!1440193) b!7827716))

(assert (= (and b!7827714 (not c!1440193)) b!7827718))

(assert (= (and b!7827716 res!3114534) b!7827715))

(assert (= (and b!7827718 c!1440192) b!7827713))

(assert (= (and b!7827718 (not c!1440192)) b!7827717))

(assert (= (and b!7827713 res!3114535) b!7827711))

(assert (= (and b!7827717 (not res!3114531)) b!7827710))

(assert (= (and b!7827710 res!3114532) b!7827712))

(assert (= (or b!7827711 b!7827710) bm!725977))

(assert (= (or b!7827713 b!7827712) bm!725976))

(assert (= (or b!7827715 bm!725976) bm!725978))

(declare-fun m!8247612 () Bool)

(assert (=> b!7827716 m!8247612))

(declare-fun m!8247614 () Bool)

(assert (=> bm!725977 m!8247614))

(declare-fun m!8247616 () Bool)

(assert (=> bm!725978 m!8247616))

(assert (=> bm!725945 d!2350475))

(declare-fun b!7827719 () Bool)

(declare-fun e!4630113 () Bool)

(declare-fun e!4630110 () Bool)

(assert (=> b!7827719 (= e!4630113 e!4630110)))

(declare-fun res!3114537 () Bool)

(assert (=> b!7827719 (=> (not res!3114537) (not e!4630110))))

(declare-fun call!725985 () Bool)

(assert (=> b!7827719 (= res!3114537 call!725985)))

(declare-fun b!7827721 () Bool)

(declare-fun call!725986 () Bool)

(assert (=> b!7827721 (= e!4630110 call!725986)))

(declare-fun b!7827722 () Bool)

(declare-fun res!3114540 () Bool)

(declare-fun e!4630111 () Bool)

(assert (=> b!7827722 (=> (not res!3114540) (not e!4630111))))

(assert (=> b!7827722 (= res!3114540 call!725986)))

(declare-fun e!4630114 () Bool)

(assert (=> b!7827722 (= e!4630114 e!4630111)))

(declare-fun b!7827723 () Bool)

(declare-fun e!4630109 () Bool)

(declare-fun e!4630112 () Bool)

(assert (=> b!7827723 (= e!4630109 e!4630112)))

(declare-fun c!1440195 () Bool)

(assert (=> b!7827723 (= c!1440195 (is-Star!20954 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))

(declare-fun b!7827724 () Bool)

(declare-fun e!4630108 () Bool)

(declare-fun call!725984 () Bool)

(assert (=> b!7827724 (= e!4630108 call!725984)))

(declare-fun b!7827725 () Bool)

(assert (=> b!7827725 (= e!4630112 e!4630108)))

(declare-fun res!3114539 () Bool)

(assert (=> b!7827725 (= res!3114539 (not (nullable!9298 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))

(assert (=> b!7827725 (=> (not res!3114539) (not e!4630108))))

(declare-fun bm!725979 () Bool)

(assert (=> bm!725979 (= call!725986 call!725984)))

(declare-fun c!1440194 () Bool)

(declare-fun bm!725980 () Bool)

(assert (=> bm!725980 (= call!725985 (validRegex!11368 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))

(declare-fun bm!725981 () Bool)

(assert (=> bm!725981 (= call!725984 (validRegex!11368 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))))

(declare-fun d!2350477 () Bool)

(declare-fun res!3114538 () Bool)

(assert (=> d!2350477 (=> res!3114538 e!4630109)))

(assert (=> d!2350477 (= res!3114538 (is-ElementMatch!20954 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))

(assert (=> d!2350477 (= (validRegex!11368 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) e!4630109)))

(declare-fun b!7827720 () Bool)

(assert (=> b!7827720 (= e!4630111 call!725985)))

(declare-fun b!7827726 () Bool)

(declare-fun res!3114536 () Bool)

(assert (=> b!7827726 (=> res!3114536 e!4630113)))

(assert (=> b!7827726 (= res!3114536 (not (is-Concat!29799 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))

(assert (=> b!7827726 (= e!4630114 e!4630113)))

(declare-fun b!7827727 () Bool)

(assert (=> b!7827727 (= e!4630112 e!4630114)))

(assert (=> b!7827727 (= c!1440194 (is-Union!20954 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))

(assert (= (and d!2350477 (not res!3114538)) b!7827723))

(assert (= (and b!7827723 c!1440195) b!7827725))

(assert (= (and b!7827723 (not c!1440195)) b!7827727))

(assert (= (and b!7827725 res!3114539) b!7827724))

(assert (= (and b!7827727 c!1440194) b!7827722))

(assert (= (and b!7827727 (not c!1440194)) b!7827726))

(assert (= (and b!7827722 res!3114540) b!7827720))

(assert (= (and b!7827726 (not res!3114536)) b!7827719))

(assert (= (and b!7827719 res!3114537) b!7827721))

(assert (= (or b!7827720 b!7827719) bm!725980))

(assert (= (or b!7827722 b!7827721) bm!725979))

(assert (= (or b!7827724 bm!725979) bm!725981))

(declare-fun m!8247618 () Bool)

(assert (=> b!7827725 m!8247618))

(declare-fun m!8247620 () Bool)

(assert (=> bm!725980 m!8247620))

(declare-fun m!8247622 () Bool)

(assert (=> bm!725981 m!8247622))

(assert (=> bm!725929 d!2350477))

(assert (=> b!7827377 d!2350457))

(declare-fun d!2350479 () Bool)

(assert (=> d!2350479 (= (isEmpty!42286 s1!4101) (is-Nil!73667 s1!4101))))

(assert (=> d!2350419 d!2350479))

(assert (=> d!2350419 d!2350395))

(assert (=> b!7827379 d!2350457))

(declare-fun d!2350481 () Bool)

(assert (=> d!2350481 (= (nullable!9298 (reg!21283 r1!6261)) (nullableFct!3667 (reg!21283 r1!6261)))))

(declare-fun bs!1966783 () Bool)

(assert (= bs!1966783 d!2350481))

(declare-fun m!8247624 () Bool)

(assert (=> bs!1966783 m!8247624))

(assert (=> b!7827238 d!2350481))

(declare-fun d!2350483 () Bool)

(assert (=> d!2350483 (= (isEmpty!42286 s2!3721) (is-Nil!73667 s2!3721))))

(assert (=> bm!725942 d!2350483))

(assert (=> d!2350397 d!2350483))

(assert (=> d!2350397 d!2350401))

(declare-fun d!2350485 () Bool)

(assert (=> d!2350485 (= (isEmpty!42286 s1Rec!453) (is-Nil!73667 s1Rec!453))))

(assert (=> d!2350413 d!2350485))

(assert (=> d!2350413 d!2350395))

(assert (=> b!7827351 d!2350467))

(declare-fun d!2350487 () Bool)

(assert (=> d!2350487 (= (isEmpty!42286 (tail!15528 s2!3721)) (is-Nil!73667 (tail!15528 s2!3721)))))

(assert (=> b!7827289 d!2350487))

(declare-fun d!2350489 () Bool)

(assert (=> d!2350489 (= (tail!15528 s2!3721) (t!388526 s2!3721))))

(assert (=> b!7827289 d!2350489))

(assert (=> b!7827353 d!2350467))

(declare-fun d!2350491 () Bool)

(assert (=> d!2350491 (= (nullable!9298 r2!6199) (nullableFct!3667 r2!6199))))

(declare-fun bs!1966784 () Bool)

(assert (= bs!1966784 d!2350491))

(declare-fun m!8247626 () Bool)

(assert (=> bs!1966784 m!8247626))

(assert (=> b!7827342 d!2350491))

(declare-fun b!7827728 () Bool)

(declare-fun e!4630116 () Bool)

(assert (=> b!7827728 (= e!4630116 (= (head!15987 (tail!15528 s2Rec!453)) (c!1440089 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))))))

(declare-fun b!7827729 () Bool)

(declare-fun e!4630118 () Bool)

(declare-fun e!4630119 () Bool)

(assert (=> b!7827729 (= e!4630118 e!4630119)))

(declare-fun res!3114541 () Bool)

(assert (=> b!7827729 (=> (not res!3114541) (not e!4630119))))

(declare-fun lt!2676840 () Bool)

(assert (=> b!7827729 (= res!3114541 (not lt!2676840))))

(declare-fun b!7827730 () Bool)

(declare-fun e!4630121 () Bool)

(assert (=> b!7827730 (= e!4630121 (not (= (head!15987 (tail!15528 s2Rec!453)) (c!1440089 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))))

(declare-fun b!7827731 () Bool)

(declare-fun res!3114542 () Bool)

(assert (=> b!7827731 (=> (not res!3114542) (not e!4630116))))

(assert (=> b!7827731 (= res!3114542 (isEmpty!42286 (tail!15528 (tail!15528 s2Rec!453))))))

(declare-fun b!7827732 () Bool)

(declare-fun e!4630120 () Bool)

(assert (=> b!7827732 (= e!4630120 (not lt!2676840))))

(declare-fun b!7827733 () Bool)

(declare-fun res!3114544 () Bool)

(assert (=> b!7827733 (=> res!3114544 e!4630118)))

(assert (=> b!7827733 (= res!3114544 e!4630116)))

(declare-fun res!3114548 () Bool)

(assert (=> b!7827733 (=> (not res!3114548) (not e!4630116))))

(assert (=> b!7827733 (= res!3114548 lt!2676840)))

(declare-fun b!7827734 () Bool)

(declare-fun res!3114545 () Bool)

(assert (=> b!7827734 (=> res!3114545 e!4630118)))

(assert (=> b!7827734 (= res!3114545 (not (is-ElementMatch!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))))))

(assert (=> b!7827734 (= e!4630120 e!4630118)))

(declare-fun b!7827735 () Bool)

(declare-fun e!4630117 () Bool)

(declare-fun call!725987 () Bool)

(assert (=> b!7827735 (= e!4630117 (= lt!2676840 call!725987))))

(declare-fun b!7827736 () Bool)

(assert (=> b!7827736 (= e!4630119 e!4630121)))

(declare-fun res!3114543 () Bool)

(assert (=> b!7827736 (=> res!3114543 e!4630121)))

(assert (=> b!7827736 (= res!3114543 call!725987)))

(declare-fun b!7827737 () Bool)

(declare-fun res!3114547 () Bool)

(assert (=> b!7827737 (=> res!3114547 e!4630121)))

(assert (=> b!7827737 (= res!3114547 (not (isEmpty!42286 (tail!15528 (tail!15528 s2Rec!453)))))))

(declare-fun b!7827738 () Bool)

(declare-fun e!4630115 () Bool)

(assert (=> b!7827738 (= e!4630115 (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453))) (tail!15528 (tail!15528 s2Rec!453))))))

(declare-fun d!2350493 () Bool)

(assert (=> d!2350493 e!4630117))

(declare-fun c!1440197 () Bool)

(assert (=> d!2350493 (= c!1440197 (is-EmptyExpr!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(assert (=> d!2350493 (= lt!2676840 e!4630115)))

(declare-fun c!1440198 () Bool)

(assert (=> d!2350493 (= c!1440198 (isEmpty!42286 (tail!15528 s2Rec!453)))))

(assert (=> d!2350493 (validRegex!11368 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))))

(assert (=> d!2350493 (= (matchR!10410 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (tail!15528 s2Rec!453)) lt!2676840)))

(declare-fun bm!725982 () Bool)

(assert (=> bm!725982 (= call!725987 (isEmpty!42286 (tail!15528 s2Rec!453)))))

(declare-fun b!7827739 () Bool)

(assert (=> b!7827739 (= e!4630117 e!4630120)))

(declare-fun c!1440196 () Bool)

(assert (=> b!7827739 (= c!1440196 (is-EmptyLang!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(declare-fun b!7827740 () Bool)

(declare-fun res!3114546 () Bool)

(assert (=> b!7827740 (=> (not res!3114546) (not e!4630116))))

(assert (=> b!7827740 (= res!3114546 (not call!725987))))

(declare-fun b!7827741 () Bool)

(assert (=> b!7827741 (= e!4630115 (nullable!9298 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(assert (= (and d!2350493 c!1440198) b!7827741))

(assert (= (and d!2350493 (not c!1440198)) b!7827738))

(assert (= (and d!2350493 c!1440197) b!7827735))

(assert (= (and d!2350493 (not c!1440197)) b!7827739))

(assert (= (and b!7827739 c!1440196) b!7827732))

(assert (= (and b!7827739 (not c!1440196)) b!7827734))

(assert (= (and b!7827734 (not res!3114545)) b!7827733))

(assert (= (and b!7827733 res!3114548) b!7827740))

(assert (= (and b!7827740 res!3114546) b!7827731))

(assert (= (and b!7827731 res!3114542) b!7827728))

(assert (= (and b!7827733 (not res!3114544)) b!7827729))

(assert (= (and b!7827729 res!3114541) b!7827736))

(assert (= (and b!7827736 (not res!3114543)) b!7827737))

(assert (= (and b!7827737 (not res!3114547)) b!7827730))

(assert (= (or b!7827735 b!7827736 b!7827740) bm!725982))

(assert (=> b!7827737 m!8247410))

(declare-fun m!8247628 () Bool)

(assert (=> b!7827737 m!8247628))

(assert (=> b!7827737 m!8247628))

(declare-fun m!8247630 () Bool)

(assert (=> b!7827737 m!8247630))

(assert (=> b!7827728 m!8247410))

(declare-fun m!8247632 () Bool)

(assert (=> b!7827728 m!8247632))

(assert (=> d!2350493 m!8247410))

(assert (=> d!2350493 m!8247412))

(assert (=> d!2350493 m!8247418))

(declare-fun m!8247634 () Bool)

(assert (=> d!2350493 m!8247634))

(assert (=> b!7827741 m!8247418))

(declare-fun m!8247636 () Bool)

(assert (=> b!7827741 m!8247636))

(assert (=> bm!725982 m!8247410))

(assert (=> bm!725982 m!8247412))

(assert (=> b!7827731 m!8247410))

(assert (=> b!7827731 m!8247628))

(assert (=> b!7827731 m!8247628))

(assert (=> b!7827731 m!8247630))

(assert (=> b!7827730 m!8247410))

(assert (=> b!7827730 m!8247632))

(assert (=> b!7827738 m!8247410))

(assert (=> b!7827738 m!8247632))

(assert (=> b!7827738 m!8247418))

(assert (=> b!7827738 m!8247632))

(declare-fun m!8247638 () Bool)

(assert (=> b!7827738 m!8247638))

(assert (=> b!7827738 m!8247410))

(assert (=> b!7827738 m!8247628))

(assert (=> b!7827738 m!8247638))

(assert (=> b!7827738 m!8247628))

(declare-fun m!8247640 () Bool)

(assert (=> b!7827738 m!8247640))

(assert (=> b!7827339 d!2350493))

(declare-fun b!7827742 () Bool)

(declare-fun e!4630124 () Regex!20954)

(declare-fun e!4630126 () Regex!20954)

(assert (=> b!7827742 (= e!4630124 e!4630126)))

(declare-fun c!1440201 () Bool)

(assert (=> b!7827742 (= c!1440201 (is-Star!20954 r2!6199))))

(declare-fun b!7827743 () Bool)

(declare-fun call!725989 () Regex!20954)

(declare-fun call!725990 () Regex!20954)

(assert (=> b!7827743 (= e!4630124 (Union!20954 call!725989 call!725990))))

(declare-fun c!1440199 () Bool)

(declare-fun bm!725983 () Bool)

(assert (=> bm!725983 (= call!725990 (derivativeStep!6257 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)) (head!15987 s2Rec!453)))))

(declare-fun b!7827744 () Bool)

(declare-fun e!4630122 () Regex!20954)

(declare-fun call!725991 () Regex!20954)

(assert (=> b!7827744 (= e!4630122 (Union!20954 (Concat!29799 call!725991 (regTwo!42420 r2!6199)) EmptyLang!20954))))

(declare-fun bm!725984 () Bool)

(declare-fun call!725988 () Regex!20954)

(assert (=> bm!725984 (= call!725991 call!725988)))

(declare-fun d!2350495 () Bool)

(declare-fun lt!2676841 () Regex!20954)

(assert (=> d!2350495 (validRegex!11368 lt!2676841)))

(declare-fun e!4630123 () Regex!20954)

(assert (=> d!2350495 (= lt!2676841 e!4630123)))

(declare-fun c!1440200 () Bool)

(assert (=> d!2350495 (= c!1440200 (or (is-EmptyExpr!20954 r2!6199) (is-EmptyLang!20954 r2!6199)))))

(assert (=> d!2350495 (validRegex!11368 r2!6199)))

(assert (=> d!2350495 (= (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) lt!2676841)))

(declare-fun bm!725985 () Bool)

(assert (=> bm!725985 (= call!725989 (derivativeStep!6257 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))) (head!15987 s2Rec!453)))))

(declare-fun b!7827745 () Bool)

(declare-fun e!4630125 () Regex!20954)

(assert (=> b!7827745 (= e!4630123 e!4630125)))

(declare-fun c!1440202 () Bool)

(assert (=> b!7827745 (= c!1440202 (is-ElementMatch!20954 r2!6199))))

(declare-fun b!7827746 () Bool)

(assert (=> b!7827746 (= e!4630125 (ite (= (head!15987 s2Rec!453) (c!1440089 r2!6199)) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7827747 () Bool)

(assert (=> b!7827747 (= e!4630122 (Union!20954 (Concat!29799 call!725991 (regTwo!42420 r2!6199)) call!725990))))

(declare-fun b!7827748 () Bool)

(assert (=> b!7827748 (= e!4630123 EmptyLang!20954)))

(declare-fun b!7827749 () Bool)

(assert (=> b!7827749 (= e!4630126 (Concat!29799 call!725988 r2!6199))))

(declare-fun b!7827750 () Bool)

(declare-fun c!1440203 () Bool)

(assert (=> b!7827750 (= c!1440203 (nullable!9298 (regOne!42420 r2!6199)))))

(assert (=> b!7827750 (= e!4630126 e!4630122)))

(declare-fun bm!725986 () Bool)

(assert (=> bm!725986 (= call!725988 call!725989)))

(declare-fun b!7827751 () Bool)

(assert (=> b!7827751 (= c!1440199 (is-Union!20954 r2!6199))))

(assert (=> b!7827751 (= e!4630125 e!4630124)))

(assert (= (and d!2350495 c!1440200) b!7827748))

(assert (= (and d!2350495 (not c!1440200)) b!7827745))

(assert (= (and b!7827745 c!1440202) b!7827746))

(assert (= (and b!7827745 (not c!1440202)) b!7827751))

(assert (= (and b!7827751 c!1440199) b!7827743))

(assert (= (and b!7827751 (not c!1440199)) b!7827742))

(assert (= (and b!7827742 c!1440201) b!7827749))

(assert (= (and b!7827742 (not c!1440201)) b!7827750))

(assert (= (and b!7827750 c!1440203) b!7827747))

(assert (= (and b!7827750 (not c!1440203)) b!7827744))

(assert (= (or b!7827747 b!7827744) bm!725984))

(assert (= (or b!7827749 bm!725984) bm!725986))

(assert (= (or b!7827743 bm!725986) bm!725985))

(assert (= (or b!7827743 b!7827747) bm!725983))

(assert (=> bm!725983 m!8247414))

(declare-fun m!8247642 () Bool)

(assert (=> bm!725983 m!8247642))

(declare-fun m!8247644 () Bool)

(assert (=> d!2350495 m!8247644))

(assert (=> d!2350495 m!8247338))

(assert (=> bm!725985 m!8247414))

(declare-fun m!8247646 () Bool)

(assert (=> bm!725985 m!8247646))

(declare-fun m!8247648 () Bool)

(assert (=> b!7827750 m!8247648))

(assert (=> b!7827339 d!2350495))

(declare-fun d!2350497 () Bool)

(assert (=> d!2350497 (= (head!15987 s2Rec!453) (h!80115 s2Rec!453))))

(assert (=> b!7827339 d!2350497))

(assert (=> b!7827339 d!2350451))

(declare-fun d!2350499 () Bool)

(declare-fun c!1440206 () Bool)

(assert (=> d!2350499 (= c!1440206 (is-Nil!73667 lt!2676811))))

(declare-fun e!4630129 () (Set C!42234))

(assert (=> d!2350499 (= (content!15639 lt!2676811) e!4630129)))

(declare-fun b!7827756 () Bool)

(assert (=> b!7827756 (= e!4630129 (as set.empty (Set C!42234)))))

(declare-fun b!7827757 () Bool)

(assert (=> b!7827757 (= e!4630129 (set.union (set.insert (h!80115 lt!2676811) (as set.empty (Set C!42234))) (content!15639 (t!388526 lt!2676811))))))

(assert (= (and d!2350499 c!1440206) b!7827756))

(assert (= (and d!2350499 (not c!1440206)) b!7827757))

(declare-fun m!8247650 () Bool)

(assert (=> b!7827757 m!8247650))

(declare-fun m!8247652 () Bool)

(assert (=> b!7827757 m!8247652))

(assert (=> d!2350417 d!2350499))

(declare-fun d!2350501 () Bool)

(declare-fun c!1440207 () Bool)

(assert (=> d!2350501 (= c!1440207 (is-Nil!73667 s1!4101))))

(declare-fun e!4630130 () (Set C!42234))

(assert (=> d!2350501 (= (content!15639 s1!4101) e!4630130)))

(declare-fun b!7827758 () Bool)

(assert (=> b!7827758 (= e!4630130 (as set.empty (Set C!42234)))))

(declare-fun b!7827759 () Bool)

(assert (=> b!7827759 (= e!4630130 (set.union (set.insert (h!80115 s1!4101) (as set.empty (Set C!42234))) (content!15639 (t!388526 s1!4101))))))

(assert (= (and d!2350501 c!1440207) b!7827758))

(assert (= (and d!2350501 (not c!1440207)) b!7827759))

(declare-fun m!8247654 () Bool)

(assert (=> b!7827759 m!8247654))

(declare-fun m!8247656 () Bool)

(assert (=> b!7827759 m!8247656))

(assert (=> d!2350417 d!2350501))

(declare-fun d!2350503 () Bool)

(declare-fun c!1440208 () Bool)

(assert (=> d!2350503 (= c!1440208 (is-Nil!73667 s2!3721))))

(declare-fun e!4630131 () (Set C!42234))

(assert (=> d!2350503 (= (content!15639 s2!3721) e!4630131)))

(declare-fun b!7827760 () Bool)

(assert (=> b!7827760 (= e!4630131 (as set.empty (Set C!42234)))))

(declare-fun b!7827761 () Bool)

(assert (=> b!7827761 (= e!4630131 (set.union (set.insert (h!80115 s2!3721) (as set.empty (Set C!42234))) (content!15639 (t!388526 s2!3721))))))

(assert (= (and d!2350503 c!1440208) b!7827760))

(assert (= (and d!2350503 (not c!1440208)) b!7827761))

(declare-fun m!8247658 () Bool)

(assert (=> b!7827761 m!8247658))

(declare-fun m!8247660 () Bool)

(assert (=> b!7827761 m!8247660))

(assert (=> d!2350417 d!2350503))

(declare-fun d!2350505 () Bool)

(declare-fun lt!2676842 () Int)

(assert (=> d!2350505 (>= lt!2676842 0)))

(declare-fun e!4630132 () Int)

(assert (=> d!2350505 (= lt!2676842 e!4630132)))

(declare-fun c!1440209 () Bool)

(assert (=> d!2350505 (= c!1440209 (is-Nil!73667 (t!388526 s1Rec!453)))))

(assert (=> d!2350505 (= (size!42754 (t!388526 s1Rec!453)) lt!2676842)))

(declare-fun b!7827762 () Bool)

(assert (=> b!7827762 (= e!4630132 0)))

(declare-fun b!7827763 () Bool)

(assert (=> b!7827763 (= e!4630132 (+ 1 (size!42754 (t!388526 (t!388526 s1Rec!453)))))))

(assert (= (and d!2350505 c!1440209) b!7827762))

(assert (= (and d!2350505 (not c!1440209)) b!7827763))

(declare-fun m!8247662 () Bool)

(assert (=> b!7827763 m!8247662))

(assert (=> b!7827350 d!2350505))

(assert (=> b!7827283 d!2350487))

(assert (=> b!7827283 d!2350489))

(assert (=> b!7827322 d!2350405))

(assert (=> b!7827322 d!2350411))

(declare-fun b!7827767 () Bool)

(declare-fun lt!2676843 () List!73791)

(declare-fun e!4630134 () Bool)

(assert (=> b!7827767 (= e!4630134 (or (not (= s2Rec!453 Nil!73667)) (= lt!2676843 (t!388526 s1Rec!453))))))

(declare-fun b!7827766 () Bool)

(declare-fun res!3114550 () Bool)

(assert (=> b!7827766 (=> (not res!3114550) (not e!4630134))))

(assert (=> b!7827766 (= res!3114550 (= (size!42754 lt!2676843) (+ (size!42754 (t!388526 s1Rec!453)) (size!42754 s2Rec!453))))))

(declare-fun b!7827765 () Bool)

(declare-fun e!4630133 () List!73791)

(assert (=> b!7827765 (= e!4630133 (Cons!73667 (h!80115 (t!388526 s1Rec!453)) (++!17988 (t!388526 (t!388526 s1Rec!453)) s2Rec!453)))))

(declare-fun d!2350507 () Bool)

(assert (=> d!2350507 e!4630134))

(declare-fun res!3114549 () Bool)

(assert (=> d!2350507 (=> (not res!3114549) (not e!4630134))))

(assert (=> d!2350507 (= res!3114549 (= (content!15639 lt!2676843) (set.union (content!15639 (t!388526 s1Rec!453)) (content!15639 s2Rec!453))))))

(assert (=> d!2350507 (= lt!2676843 e!4630133)))

(declare-fun c!1440210 () Bool)

(assert (=> d!2350507 (= c!1440210 (is-Nil!73667 (t!388526 s1Rec!453)))))

(assert (=> d!2350507 (= (++!17988 (t!388526 s1Rec!453) s2Rec!453) lt!2676843)))

(declare-fun b!7827764 () Bool)

(assert (=> b!7827764 (= e!4630133 s2Rec!453)))

(assert (= (and d!2350507 c!1440210) b!7827764))

(assert (= (and d!2350507 (not c!1440210)) b!7827765))

(assert (= (and d!2350507 res!3114549) b!7827766))

(assert (= (and b!7827766 res!3114550) b!7827767))

(declare-fun m!8247664 () Bool)

(assert (=> b!7827766 m!8247664))

(assert (=> b!7827766 m!8247424))

(assert (=> b!7827766 m!8247470))

(declare-fun m!8247666 () Bool)

(assert (=> b!7827765 m!8247666))

(declare-fun m!8247668 () Bool)

(assert (=> d!2350507 m!8247668))

(declare-fun m!8247670 () Bool)

(assert (=> d!2350507 m!8247670))

(assert (=> d!2350507 m!8247478))

(assert (=> b!7827392 d!2350507))

(assert (=> bm!725948 d!2350479))

(assert (=> b!7827320 d!2350467))

(assert (=> b!7827320 d!2350457))

(assert (=> bm!725947 d!2350485))

(declare-fun d!2350509 () Bool)

(assert (=> d!2350509 (= (isEmpty!42286 (tail!15528 s1!4101)) (is-Nil!73667 (tail!15528 s1!4101)))))

(assert (=> b!7827386 d!2350509))

(assert (=> b!7827386 d!2350459))

(assert (=> b!7827331 d!2350497))

(assert (=> b!7827329 d!2350497))

(declare-fun d!2350511 () Bool)

(assert (=> d!2350511 (= (isEmpty!42286 s2Rec!453) (is-Nil!73667 s2Rec!453))))

(assert (=> d!2350407 d!2350511))

(assert (=> d!2350407 d!2350401))

(declare-fun b!7827768 () Bool)

(declare-fun e!4630140 () Bool)

(declare-fun e!4630137 () Bool)

(assert (=> b!7827768 (= e!4630140 e!4630137)))

(declare-fun res!3114552 () Bool)

(assert (=> b!7827768 (=> (not res!3114552) (not e!4630137))))

(declare-fun call!725993 () Bool)

(assert (=> b!7827768 (= res!3114552 call!725993)))

(declare-fun b!7827770 () Bool)

(declare-fun call!725994 () Bool)

(assert (=> b!7827770 (= e!4630137 call!725994)))

(declare-fun b!7827771 () Bool)

(declare-fun res!3114555 () Bool)

(declare-fun e!4630138 () Bool)

(assert (=> b!7827771 (=> (not res!3114555) (not e!4630138))))

(assert (=> b!7827771 (= res!3114555 call!725994)))

(declare-fun e!4630141 () Bool)

(assert (=> b!7827771 (= e!4630141 e!4630138)))

(declare-fun b!7827772 () Bool)

(declare-fun e!4630136 () Bool)

(declare-fun e!4630139 () Bool)

(assert (=> b!7827772 (= e!4630136 e!4630139)))

(declare-fun c!1440212 () Bool)

(assert (=> b!7827772 (= c!1440212 (is-Star!20954 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))

(declare-fun b!7827773 () Bool)

(declare-fun e!4630135 () Bool)

(declare-fun call!725992 () Bool)

(assert (=> b!7827773 (= e!4630135 call!725992)))

(declare-fun b!7827774 () Bool)

(assert (=> b!7827774 (= e!4630139 e!4630135)))

(declare-fun res!3114554 () Bool)

(assert (=> b!7827774 (= res!3114554 (not (nullable!9298 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))

(assert (=> b!7827774 (=> (not res!3114554) (not e!4630135))))

(declare-fun bm!725987 () Bool)

(assert (=> bm!725987 (= call!725994 call!725992)))

(declare-fun bm!725988 () Bool)

(declare-fun c!1440211 () Bool)

(assert (=> bm!725988 (= call!725993 (validRegex!11368 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))

(declare-fun bm!725989 () Bool)

(assert (=> bm!725989 (= call!725992 (validRegex!11368 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))))

(declare-fun d!2350513 () Bool)

(declare-fun res!3114553 () Bool)

(assert (=> d!2350513 (=> res!3114553 e!4630136)))

(assert (=> d!2350513 (= res!3114553 (is-ElementMatch!20954 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))

(assert (=> d!2350513 (= (validRegex!11368 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) e!4630136)))

(declare-fun b!7827769 () Bool)

(assert (=> b!7827769 (= e!4630138 call!725993)))

(declare-fun b!7827775 () Bool)

(declare-fun res!3114551 () Bool)

(assert (=> b!7827775 (=> res!3114551 e!4630140)))

(assert (=> b!7827775 (= res!3114551 (not (is-Concat!29799 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))

(assert (=> b!7827775 (= e!4630141 e!4630140)))

(declare-fun b!7827776 () Bool)

(assert (=> b!7827776 (= e!4630139 e!4630141)))

(assert (=> b!7827776 (= c!1440211 (is-Union!20954 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))

(assert (= (and d!2350513 (not res!3114553)) b!7827772))

(assert (= (and b!7827772 c!1440212) b!7827774))

(assert (= (and b!7827772 (not c!1440212)) b!7827776))

(assert (= (and b!7827774 res!3114554) b!7827773))

(assert (= (and b!7827776 c!1440211) b!7827771))

(assert (= (and b!7827776 (not c!1440211)) b!7827775))

(assert (= (and b!7827771 res!3114555) b!7827769))

(assert (= (and b!7827775 (not res!3114551)) b!7827768))

(assert (= (and b!7827768 res!3114552) b!7827770))

(assert (= (or b!7827769 b!7827768) bm!725988))

(assert (= (or b!7827771 b!7827770) bm!725987))

(assert (= (or b!7827773 bm!725987) bm!725989))

(declare-fun m!8247672 () Bool)

(assert (=> b!7827774 m!8247672))

(declare-fun m!8247674 () Bool)

(assert (=> bm!725988 m!8247674))

(declare-fun m!8247676 () Bool)

(assert (=> bm!725989 m!8247676))

(assert (=> bm!725930 d!2350513))

(declare-fun b!7827780 () Bool)

(declare-fun e!4630143 () Bool)

(declare-fun lt!2676844 () List!73791)

(assert (=> b!7827780 (= e!4630143 (or (not (= s2!3721 Nil!73667)) (= lt!2676844 (t!388526 s1!4101))))))

(declare-fun b!7827779 () Bool)

(declare-fun res!3114557 () Bool)

(assert (=> b!7827779 (=> (not res!3114557) (not e!4630143))))

(assert (=> b!7827779 (= res!3114557 (= (size!42754 lt!2676844) (+ (size!42754 (t!388526 s1!4101)) (size!42754 s2!3721))))))

(declare-fun b!7827778 () Bool)

(declare-fun e!4630142 () List!73791)

(assert (=> b!7827778 (= e!4630142 (Cons!73667 (h!80115 (t!388526 s1!4101)) (++!17988 (t!388526 (t!388526 s1!4101)) s2!3721)))))

(declare-fun d!2350515 () Bool)

(assert (=> d!2350515 e!4630143))

(declare-fun res!3114556 () Bool)

(assert (=> d!2350515 (=> (not res!3114556) (not e!4630143))))

(assert (=> d!2350515 (= res!3114556 (= (content!15639 lt!2676844) (set.union (content!15639 (t!388526 s1!4101)) (content!15639 s2!3721))))))

(assert (=> d!2350515 (= lt!2676844 e!4630142)))

(declare-fun c!1440213 () Bool)

(assert (=> d!2350515 (= c!1440213 (is-Nil!73667 (t!388526 s1!4101)))))

(assert (=> d!2350515 (= (++!17988 (t!388526 s1!4101) s2!3721) lt!2676844)))

(declare-fun b!7827777 () Bool)

(assert (=> b!7827777 (= e!4630142 s2!3721)))

(assert (= (and d!2350515 c!1440213) b!7827777))

(assert (= (and d!2350515 (not c!1440213)) b!7827778))

(assert (= (and d!2350515 res!3114556) b!7827779))

(assert (= (and b!7827779 res!3114557) b!7827780))

(declare-fun m!8247678 () Bool)

(assert (=> b!7827779 m!8247678))

(assert (=> b!7827779 m!8247408))

(assert (=> b!7827779 m!8247450))

(declare-fun m!8247680 () Bool)

(assert (=> b!7827778 m!8247680))

(declare-fun m!8247682 () Bool)

(assert (=> d!2350515 m!8247682))

(assert (=> d!2350515 m!8247656))

(assert (=> d!2350515 m!8247458))

(assert (=> b!7827374 d!2350515))

(declare-fun d!2350517 () Bool)

(assert (=> d!2350517 (= (isEmpty!42286 (tail!15528 s1Rec!453)) (is-Nil!73667 (tail!15528 s1Rec!453)))))

(assert (=> b!7827360 d!2350517))

(assert (=> b!7827360 d!2350469))

(declare-fun d!2350519 () Bool)

(declare-fun c!1440214 () Bool)

(assert (=> d!2350519 (= c!1440214 (is-Nil!73667 lt!2676813))))

(declare-fun e!4630144 () (Set C!42234))

(assert (=> d!2350519 (= (content!15639 lt!2676813) e!4630144)))

(declare-fun b!7827781 () Bool)

(assert (=> b!7827781 (= e!4630144 (as set.empty (Set C!42234)))))

(declare-fun b!7827782 () Bool)

(assert (=> b!7827782 (= e!4630144 (set.union (set.insert (h!80115 lt!2676813) (as set.empty (Set C!42234))) (content!15639 (t!388526 lt!2676813))))))

(assert (= (and d!2350519 c!1440214) b!7827781))

(assert (= (and d!2350519 (not c!1440214)) b!7827782))

(declare-fun m!8247684 () Bool)

(assert (=> b!7827782 m!8247684))

(declare-fun m!8247686 () Bool)

(assert (=> b!7827782 m!8247686))

(assert (=> d!2350421 d!2350519))

(declare-fun d!2350521 () Bool)

(declare-fun c!1440215 () Bool)

(assert (=> d!2350521 (= c!1440215 (is-Nil!73667 s1Rec!453))))

(declare-fun e!4630145 () (Set C!42234))

(assert (=> d!2350521 (= (content!15639 s1Rec!453) e!4630145)))

(declare-fun b!7827783 () Bool)

(assert (=> b!7827783 (= e!4630145 (as set.empty (Set C!42234)))))

(declare-fun b!7827784 () Bool)

(assert (=> b!7827784 (= e!4630145 (set.union (set.insert (h!80115 s1Rec!453) (as set.empty (Set C!42234))) (content!15639 (t!388526 s1Rec!453))))))

(assert (= (and d!2350521 c!1440215) b!7827783))

(assert (= (and d!2350521 (not c!1440215)) b!7827784))

(declare-fun m!8247688 () Bool)

(assert (=> b!7827784 m!8247688))

(assert (=> b!7827784 m!8247670))

(assert (=> d!2350421 d!2350521))

(declare-fun d!2350523 () Bool)

(declare-fun c!1440216 () Bool)

(assert (=> d!2350523 (= c!1440216 (is-Nil!73667 s2Rec!453))))

(declare-fun e!4630146 () (Set C!42234))

(assert (=> d!2350523 (= (content!15639 s2Rec!453) e!4630146)))

(declare-fun b!7827785 () Bool)

(assert (=> b!7827785 (= e!4630146 (as set.empty (Set C!42234)))))

(declare-fun b!7827786 () Bool)

(assert (=> b!7827786 (= e!4630146 (set.union (set.insert (h!80115 s2Rec!453) (as set.empty (Set C!42234))) (content!15639 (t!388526 s2Rec!453))))))

(assert (= (and d!2350523 c!1440216) b!7827785))

(assert (= (and d!2350523 (not c!1440216)) b!7827786))

(declare-fun m!8247690 () Bool)

(assert (=> b!7827786 m!8247690))

(declare-fun m!8247692 () Bool)

(assert (=> b!7827786 m!8247692))

(assert (=> d!2350421 d!2350523))

(assert (=> b!7827380 d!2350509))

(assert (=> b!7827380 d!2350459))

(assert (=> b!7827293 d!2350491))

(declare-fun b!7827787 () Bool)

(declare-fun e!4630152 () Bool)

(declare-fun e!4630149 () Bool)

(assert (=> b!7827787 (= e!4630152 e!4630149)))

(declare-fun res!3114559 () Bool)

(assert (=> b!7827787 (=> (not res!3114559) (not e!4630149))))

(declare-fun call!725996 () Bool)

(assert (=> b!7827787 (= res!3114559 call!725996)))

(declare-fun b!7827789 () Bool)

(declare-fun call!725997 () Bool)

(assert (=> b!7827789 (= e!4630149 call!725997)))

(declare-fun b!7827790 () Bool)

(declare-fun res!3114562 () Bool)

(declare-fun e!4630150 () Bool)

(assert (=> b!7827790 (=> (not res!3114562) (not e!4630150))))

(assert (=> b!7827790 (= res!3114562 call!725997)))

(declare-fun e!4630153 () Bool)

(assert (=> b!7827790 (= e!4630153 e!4630150)))

(declare-fun b!7827791 () Bool)

(declare-fun e!4630148 () Bool)

(declare-fun e!4630151 () Bool)

(assert (=> b!7827791 (= e!4630148 e!4630151)))

(declare-fun c!1440218 () Bool)

(assert (=> b!7827791 (= c!1440218 (is-Star!20954 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))

(declare-fun b!7827792 () Bool)

(declare-fun e!4630147 () Bool)

(declare-fun call!725995 () Bool)

(assert (=> b!7827792 (= e!4630147 call!725995)))

(declare-fun b!7827793 () Bool)

(assert (=> b!7827793 (= e!4630151 e!4630147)))

(declare-fun res!3114561 () Bool)

(assert (=> b!7827793 (= res!3114561 (not (nullable!9298 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))

(assert (=> b!7827793 (=> (not res!3114561) (not e!4630147))))

(declare-fun bm!725990 () Bool)

(assert (=> bm!725990 (= call!725997 call!725995)))

(declare-fun c!1440217 () Bool)

(declare-fun bm!725991 () Bool)

(assert (=> bm!725991 (= call!725996 (validRegex!11368 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))

(declare-fun bm!725992 () Bool)

(assert (=> bm!725992 (= call!725995 (validRegex!11368 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))))

(declare-fun d!2350525 () Bool)

(declare-fun res!3114560 () Bool)

(assert (=> d!2350525 (=> res!3114560 e!4630148)))

(assert (=> d!2350525 (= res!3114560 (is-ElementMatch!20954 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))

(assert (=> d!2350525 (= (validRegex!11368 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) e!4630148)))

(declare-fun b!7827788 () Bool)

(assert (=> b!7827788 (= e!4630150 call!725996)))

(declare-fun b!7827794 () Bool)

(declare-fun res!3114558 () Bool)

(assert (=> b!7827794 (=> res!3114558 e!4630152)))

(assert (=> b!7827794 (= res!3114558 (not (is-Concat!29799 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))

(assert (=> b!7827794 (= e!4630153 e!4630152)))

(declare-fun b!7827795 () Bool)

(assert (=> b!7827795 (= e!4630151 e!4630153)))

(assert (=> b!7827795 (= c!1440217 (is-Union!20954 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))

(assert (= (and d!2350525 (not res!3114560)) b!7827791))

(assert (= (and b!7827791 c!1440218) b!7827793))

(assert (= (and b!7827791 (not c!1440218)) b!7827795))

(assert (= (and b!7827793 res!3114561) b!7827792))

(assert (= (and b!7827795 c!1440217) b!7827790))

(assert (= (and b!7827795 (not c!1440217)) b!7827794))

(assert (= (and b!7827790 res!3114562) b!7827788))

(assert (= (and b!7827794 (not res!3114558)) b!7827787))

(assert (= (and b!7827787 res!3114559) b!7827789))

(assert (= (or b!7827788 b!7827787) bm!725991))

(assert (= (or b!7827790 b!7827789) bm!725990))

(assert (= (or b!7827792 bm!725990) bm!725992))

(declare-fun m!8247694 () Bool)

(assert (=> b!7827793 m!8247694))

(declare-fun m!8247696 () Bool)

(assert (=> bm!725991 m!8247696))

(declare-fun m!8247698 () Bool)

(assert (=> bm!725992 m!8247698))

(assert (=> bm!725944 d!2350525))

(declare-fun b!7827796 () Bool)

(declare-fun e!4630155 () Bool)

(assert (=> b!7827796 (= e!4630155 (= (head!15987 (tail!15528 s2!3721)) (c!1440089 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))))))

(declare-fun b!7827797 () Bool)

(declare-fun e!4630157 () Bool)

(declare-fun e!4630158 () Bool)

(assert (=> b!7827797 (= e!4630157 e!4630158)))

(declare-fun res!3114563 () Bool)

(assert (=> b!7827797 (=> (not res!3114563) (not e!4630158))))

(declare-fun lt!2676845 () Bool)

(assert (=> b!7827797 (= res!3114563 (not lt!2676845))))

(declare-fun b!7827798 () Bool)

(declare-fun e!4630160 () Bool)

(assert (=> b!7827798 (= e!4630160 (not (= (head!15987 (tail!15528 s2!3721)) (c!1440089 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))))

(declare-fun b!7827799 () Bool)

(declare-fun res!3114564 () Bool)

(assert (=> b!7827799 (=> (not res!3114564) (not e!4630155))))

(assert (=> b!7827799 (= res!3114564 (isEmpty!42286 (tail!15528 (tail!15528 s2!3721))))))

(declare-fun b!7827800 () Bool)

(declare-fun e!4630159 () Bool)

(assert (=> b!7827800 (= e!4630159 (not lt!2676845))))

(declare-fun b!7827801 () Bool)

(declare-fun res!3114566 () Bool)

(assert (=> b!7827801 (=> res!3114566 e!4630157)))

(assert (=> b!7827801 (= res!3114566 e!4630155)))

(declare-fun res!3114570 () Bool)

(assert (=> b!7827801 (=> (not res!3114570) (not e!4630155))))

(assert (=> b!7827801 (= res!3114570 lt!2676845)))

(declare-fun b!7827802 () Bool)

(declare-fun res!3114567 () Bool)

(assert (=> b!7827802 (=> res!3114567 e!4630157)))

(assert (=> b!7827802 (= res!3114567 (not (is-ElementMatch!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))))))

(assert (=> b!7827802 (= e!4630159 e!4630157)))

(declare-fun b!7827803 () Bool)

(declare-fun e!4630156 () Bool)

(declare-fun call!725998 () Bool)

(assert (=> b!7827803 (= e!4630156 (= lt!2676845 call!725998))))

(declare-fun b!7827804 () Bool)

(assert (=> b!7827804 (= e!4630158 e!4630160)))

(declare-fun res!3114565 () Bool)

(assert (=> b!7827804 (=> res!3114565 e!4630160)))

(assert (=> b!7827804 (= res!3114565 call!725998)))

(declare-fun b!7827805 () Bool)

(declare-fun res!3114569 () Bool)

(assert (=> b!7827805 (=> res!3114569 e!4630160)))

(assert (=> b!7827805 (= res!3114569 (not (isEmpty!42286 (tail!15528 (tail!15528 s2!3721)))))))

(declare-fun b!7827806 () Bool)

(declare-fun e!4630154 () Bool)

(assert (=> b!7827806 (= e!4630154 (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721))) (tail!15528 (tail!15528 s2!3721))))))

(declare-fun d!2350527 () Bool)

(assert (=> d!2350527 e!4630156))

(declare-fun c!1440220 () Bool)

(assert (=> d!2350527 (= c!1440220 (is-EmptyExpr!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(assert (=> d!2350527 (= lt!2676845 e!4630154)))

(declare-fun c!1440221 () Bool)

(assert (=> d!2350527 (= c!1440221 (isEmpty!42286 (tail!15528 s2!3721)))))

(assert (=> d!2350527 (validRegex!11368 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))))

(assert (=> d!2350527 (= (matchR!10410 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (tail!15528 s2!3721)) lt!2676845)))

(declare-fun bm!725993 () Bool)

(assert (=> bm!725993 (= call!725998 (isEmpty!42286 (tail!15528 s2!3721)))))

(declare-fun b!7827807 () Bool)

(assert (=> b!7827807 (= e!4630156 e!4630159)))

(declare-fun c!1440219 () Bool)

(assert (=> b!7827807 (= c!1440219 (is-EmptyLang!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(declare-fun b!7827808 () Bool)

(declare-fun res!3114568 () Bool)

(assert (=> b!7827808 (=> (not res!3114568) (not e!4630155))))

(assert (=> b!7827808 (= res!3114568 (not call!725998))))

(declare-fun b!7827809 () Bool)

(assert (=> b!7827809 (= e!4630154 (nullable!9298 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(assert (= (and d!2350527 c!1440221) b!7827809))

(assert (= (and d!2350527 (not c!1440221)) b!7827806))

(assert (= (and d!2350527 c!1440220) b!7827803))

(assert (= (and d!2350527 (not c!1440220)) b!7827807))

(assert (= (and b!7827807 c!1440219) b!7827800))

(assert (= (and b!7827807 (not c!1440219)) b!7827802))

(assert (= (and b!7827802 (not res!3114567)) b!7827801))

(assert (= (and b!7827801 res!3114570) b!7827808))

(assert (= (and b!7827808 res!3114568) b!7827799))

(assert (= (and b!7827799 res!3114564) b!7827796))

(assert (= (and b!7827801 (not res!3114566)) b!7827797))

(assert (= (and b!7827797 res!3114563) b!7827804))

(assert (= (and b!7827804 (not res!3114565)) b!7827805))

(assert (= (and b!7827805 (not res!3114569)) b!7827798))

(assert (= (or b!7827803 b!7827804 b!7827808) bm!725993))

(assert (=> b!7827805 m!8247378))

(declare-fun m!8247700 () Bool)

(assert (=> b!7827805 m!8247700))

(assert (=> b!7827805 m!8247700))

(declare-fun m!8247702 () Bool)

(assert (=> b!7827805 m!8247702))

(assert (=> b!7827796 m!8247378))

(declare-fun m!8247704 () Bool)

(assert (=> b!7827796 m!8247704))

(assert (=> d!2350527 m!8247378))

(assert (=> d!2350527 m!8247380))

(assert (=> d!2350527 m!8247388))

(declare-fun m!8247706 () Bool)

(assert (=> d!2350527 m!8247706))

(assert (=> b!7827809 m!8247388))

(declare-fun m!8247708 () Bool)

(assert (=> b!7827809 m!8247708))

(assert (=> bm!725993 m!8247378))

(assert (=> bm!725993 m!8247380))

(assert (=> b!7827799 m!8247378))

(assert (=> b!7827799 m!8247700))

(assert (=> b!7827799 m!8247700))

(assert (=> b!7827799 m!8247702))

(assert (=> b!7827798 m!8247378))

(assert (=> b!7827798 m!8247704))

(assert (=> b!7827806 m!8247378))

(assert (=> b!7827806 m!8247704))

(assert (=> b!7827806 m!8247388))

(assert (=> b!7827806 m!8247704))

(declare-fun m!8247710 () Bool)

(assert (=> b!7827806 m!8247710))

(assert (=> b!7827806 m!8247378))

(assert (=> b!7827806 m!8247700))

(assert (=> b!7827806 m!8247710))

(assert (=> b!7827806 m!8247700))

(declare-fun m!8247712 () Bool)

(assert (=> b!7827806 m!8247712))

(assert (=> b!7827290 d!2350527))

(declare-fun b!7827810 () Bool)

(declare-fun e!4630163 () Regex!20954)

(declare-fun e!4630165 () Regex!20954)

(assert (=> b!7827810 (= e!4630163 e!4630165)))

(declare-fun c!1440224 () Bool)

(assert (=> b!7827810 (= c!1440224 (is-Star!20954 r2!6199))))

(declare-fun b!7827811 () Bool)

(declare-fun call!726000 () Regex!20954)

(declare-fun call!726001 () Regex!20954)

(assert (=> b!7827811 (= e!4630163 (Union!20954 call!726000 call!726001))))

(declare-fun c!1440222 () Bool)

(declare-fun bm!725994 () Bool)

(assert (=> bm!725994 (= call!726001 (derivativeStep!6257 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)) (head!15987 s2!3721)))))

(declare-fun b!7827812 () Bool)

(declare-fun e!4630161 () Regex!20954)

(declare-fun call!726002 () Regex!20954)

(assert (=> b!7827812 (= e!4630161 (Union!20954 (Concat!29799 call!726002 (regTwo!42420 r2!6199)) EmptyLang!20954))))

(declare-fun bm!725995 () Bool)

(declare-fun call!725999 () Regex!20954)

(assert (=> bm!725995 (= call!726002 call!725999)))

(declare-fun d!2350529 () Bool)

(declare-fun lt!2676846 () Regex!20954)

(assert (=> d!2350529 (validRegex!11368 lt!2676846)))

(declare-fun e!4630162 () Regex!20954)

(assert (=> d!2350529 (= lt!2676846 e!4630162)))

(declare-fun c!1440223 () Bool)

(assert (=> d!2350529 (= c!1440223 (or (is-EmptyExpr!20954 r2!6199) (is-EmptyLang!20954 r2!6199)))))

(assert (=> d!2350529 (validRegex!11368 r2!6199)))

(assert (=> d!2350529 (= (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) lt!2676846)))

(declare-fun bm!725996 () Bool)

(assert (=> bm!725996 (= call!726000 (derivativeStep!6257 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))) (head!15987 s2!3721)))))

(declare-fun b!7827813 () Bool)

(declare-fun e!4630164 () Regex!20954)

(assert (=> b!7827813 (= e!4630162 e!4630164)))

(declare-fun c!1440225 () Bool)

(assert (=> b!7827813 (= c!1440225 (is-ElementMatch!20954 r2!6199))))

(declare-fun b!7827814 () Bool)

(assert (=> b!7827814 (= e!4630164 (ite (= (head!15987 s2!3721) (c!1440089 r2!6199)) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7827815 () Bool)

(assert (=> b!7827815 (= e!4630161 (Union!20954 (Concat!29799 call!726002 (regTwo!42420 r2!6199)) call!726001))))

(declare-fun b!7827816 () Bool)

(assert (=> b!7827816 (= e!4630162 EmptyLang!20954)))

(declare-fun b!7827817 () Bool)

(assert (=> b!7827817 (= e!4630165 (Concat!29799 call!725999 r2!6199))))

(declare-fun b!7827818 () Bool)

(declare-fun c!1440226 () Bool)

(assert (=> b!7827818 (= c!1440226 (nullable!9298 (regOne!42420 r2!6199)))))

(assert (=> b!7827818 (= e!4630165 e!4630161)))

(declare-fun bm!725997 () Bool)

(assert (=> bm!725997 (= call!725999 call!726000)))

(declare-fun b!7827819 () Bool)

(assert (=> b!7827819 (= c!1440222 (is-Union!20954 r2!6199))))

(assert (=> b!7827819 (= e!4630164 e!4630163)))

(assert (= (and d!2350529 c!1440223) b!7827816))

(assert (= (and d!2350529 (not c!1440223)) b!7827813))

(assert (= (and b!7827813 c!1440225) b!7827814))

(assert (= (and b!7827813 (not c!1440225)) b!7827819))

(assert (= (and b!7827819 c!1440222) b!7827811))

(assert (= (and b!7827819 (not c!1440222)) b!7827810))

(assert (= (and b!7827810 c!1440224) b!7827817))

(assert (= (and b!7827810 (not c!1440224)) b!7827818))

(assert (= (and b!7827818 c!1440226) b!7827815))

(assert (= (and b!7827818 (not c!1440226)) b!7827812))

(assert (= (or b!7827815 b!7827812) bm!725995))

(assert (= (or b!7827817 bm!725995) bm!725997))

(assert (= (or b!7827811 bm!725997) bm!725996))

(assert (= (or b!7827811 b!7827815) bm!725994))

(assert (=> bm!725994 m!8247382))

(declare-fun m!8247714 () Bool)

(assert (=> bm!725994 m!8247714))

(declare-fun m!8247716 () Bool)

(assert (=> d!2350529 m!8247716))

(assert (=> d!2350529 m!8247338))

(assert (=> bm!725996 m!8247382))

(declare-fun m!8247718 () Bool)

(assert (=> bm!725996 m!8247718))

(assert (=> b!7827818 m!8247648))

(assert (=> b!7827290 d!2350529))

(assert (=> b!7827290 d!2350447))

(assert (=> b!7827290 d!2350489))

(assert (=> b!7827354 d!2350517))

(assert (=> b!7827354 d!2350469))

(declare-fun d!2350531 () Bool)

(assert (=> d!2350531 (= (nullable!9298 (reg!21283 r2!6199)) (nullableFct!3667 (reg!21283 r2!6199)))))

(declare-fun bs!1966785 () Bool)

(assert (= bs!1966785 d!2350531))

(declare-fun m!8247720 () Bool)

(assert (=> bs!1966785 m!8247720))

(assert (=> b!7827300 d!2350531))

(declare-fun d!2350533 () Bool)

(declare-fun lt!2676847 () Int)

(assert (=> d!2350533 (>= lt!2676847 0)))

(declare-fun e!4630166 () Int)

(assert (=> d!2350533 (= lt!2676847 e!4630166)))

(declare-fun c!1440227 () Bool)

(assert (=> d!2350533 (= c!1440227 (is-Nil!73667 (t!388526 s1!4101)))))

(assert (=> d!2350533 (= (size!42754 (t!388526 s1!4101)) lt!2676847)))

(declare-fun b!7827820 () Bool)

(assert (=> b!7827820 (= e!4630166 0)))

(declare-fun b!7827821 () Bool)

(assert (=> b!7827821 (= e!4630166 (+ 1 (size!42754 (t!388526 (t!388526 s1!4101)))))))

(assert (= (and d!2350533 c!1440227) b!7827820))

(assert (= (and d!2350533 (not c!1440227)) b!7827821))

(declare-fun m!8247722 () Bool)

(assert (=> b!7827821 m!8247722))

(assert (=> b!7827328 d!2350533))

(assert (=> bm!725946 d!2350511))

(assert (=> b!7827390 d!2350445))

(assert (=> b!7827282 d!2350447))

(declare-fun b!7827825 () Bool)

(declare-fun e!4630167 () Bool)

(assert (=> b!7827825 (= e!4630167 (>= (size!42754 (tail!15528 s1!4101)) (size!42754 (tail!15528 s1Rec!453))))))

(declare-fun b!7827823 () Bool)

(declare-fun res!3114574 () Bool)

(declare-fun e!4630168 () Bool)

(assert (=> b!7827823 (=> (not res!3114574) (not e!4630168))))

(assert (=> b!7827823 (= res!3114574 (= (head!15987 (tail!15528 s1Rec!453)) (head!15987 (tail!15528 s1!4101))))))

(declare-fun d!2350535 () Bool)

(assert (=> d!2350535 e!4630167))

(declare-fun res!3114572 () Bool)

(assert (=> d!2350535 (=> res!3114572 e!4630167)))

(declare-fun lt!2676848 () Bool)

(assert (=> d!2350535 (= res!3114572 (not lt!2676848))))

(declare-fun e!4630169 () Bool)

(assert (=> d!2350535 (= lt!2676848 e!4630169)))

(declare-fun res!3114573 () Bool)

(assert (=> d!2350535 (=> res!3114573 e!4630169)))

(assert (=> d!2350535 (= res!3114573 (is-Nil!73667 (tail!15528 s1Rec!453)))))

(assert (=> d!2350535 (= (isPrefix!6304 (tail!15528 s1Rec!453) (tail!15528 s1!4101)) lt!2676848)))

(declare-fun b!7827822 () Bool)

(assert (=> b!7827822 (= e!4630169 e!4630168)))

(declare-fun res!3114571 () Bool)

(assert (=> b!7827822 (=> (not res!3114571) (not e!4630168))))

(assert (=> b!7827822 (= res!3114571 (not (is-Nil!73667 (tail!15528 s1!4101))))))

(declare-fun b!7827824 () Bool)

(assert (=> b!7827824 (= e!4630168 (isPrefix!6304 (tail!15528 (tail!15528 s1Rec!453)) (tail!15528 (tail!15528 s1!4101))))))

(assert (= (and d!2350535 (not res!3114573)) b!7827822))

(assert (= (and b!7827822 res!3114571) b!7827823))

(assert (= (and b!7827823 res!3114574) b!7827824))

(assert (= (and d!2350535 (not res!3114572)) b!7827825))

(assert (=> b!7827825 m!8247404))

(declare-fun m!8247724 () Bool)

(assert (=> b!7827825 m!8247724))

(assert (=> b!7827825 m!8247402))

(declare-fun m!8247726 () Bool)

(assert (=> b!7827825 m!8247726))

(assert (=> b!7827823 m!8247402))

(assert (=> b!7827823 m!8247592))

(assert (=> b!7827823 m!8247404))

(assert (=> b!7827823 m!8247568))

(assert (=> b!7827824 m!8247402))

(assert (=> b!7827824 m!8247588))

(assert (=> b!7827824 m!8247404))

(assert (=> b!7827824 m!8247564))

(assert (=> b!7827824 m!8247588))

(assert (=> b!7827824 m!8247564))

(declare-fun m!8247728 () Bool)

(assert (=> b!7827824 m!8247728))

(assert (=> b!7827321 d!2350535))

(assert (=> b!7827321 d!2350469))

(assert (=> b!7827321 d!2350459))

(assert (=> b!7827338 d!2350449))

(assert (=> b!7827338 d!2350451))

(declare-fun b!7827829 () Bool)

(declare-fun e!4630170 () Bool)

(declare-fun tp!2312686 () Bool)

(declare-fun tp!2312685 () Bool)

(assert (=> b!7827829 (= e!4630170 (and tp!2312686 tp!2312685))))

(declare-fun b!7827826 () Bool)

(assert (=> b!7827826 (= e!4630170 tp_is_empty!52263)))

(declare-fun b!7827828 () Bool)

(declare-fun tp!2312687 () Bool)

(assert (=> b!7827828 (= e!4630170 tp!2312687)))

(assert (=> b!7827420 (= tp!2312574 e!4630170)))

(declare-fun b!7827827 () Bool)

(declare-fun tp!2312684 () Bool)

(declare-fun tp!2312688 () Bool)

(assert (=> b!7827827 (= e!4630170 (and tp!2312684 tp!2312688))))

(assert (= (and b!7827420 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 r2!6199)))) b!7827826))

(assert (= (and b!7827420 (is-Concat!29799 (regOne!42420 (regOne!42420 r2!6199)))) b!7827827))

(assert (= (and b!7827420 (is-Star!20954 (regOne!42420 (regOne!42420 r2!6199)))) b!7827828))

(assert (= (and b!7827420 (is-Union!20954 (regOne!42420 (regOne!42420 r2!6199)))) b!7827829))

(declare-fun b!7827833 () Bool)

(declare-fun e!4630171 () Bool)

(declare-fun tp!2312691 () Bool)

(declare-fun tp!2312690 () Bool)

(assert (=> b!7827833 (= e!4630171 (and tp!2312691 tp!2312690))))

(declare-fun b!7827830 () Bool)

(assert (=> b!7827830 (= e!4630171 tp_is_empty!52263)))

(declare-fun b!7827832 () Bool)

(declare-fun tp!2312692 () Bool)

(assert (=> b!7827832 (= e!4630171 tp!2312692)))

(assert (=> b!7827420 (= tp!2312578 e!4630171)))

(declare-fun b!7827831 () Bool)

(declare-fun tp!2312689 () Bool)

(declare-fun tp!2312693 () Bool)

(assert (=> b!7827831 (= e!4630171 (and tp!2312689 tp!2312693))))

(assert (= (and b!7827420 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 r2!6199)))) b!7827830))

(assert (= (and b!7827420 (is-Concat!29799 (regTwo!42420 (regOne!42420 r2!6199)))) b!7827831))

(assert (= (and b!7827420 (is-Star!20954 (regTwo!42420 (regOne!42420 r2!6199)))) b!7827832))

(assert (= (and b!7827420 (is-Union!20954 (regTwo!42420 (regOne!42420 r2!6199)))) b!7827833))

(declare-fun b!7827837 () Bool)

(declare-fun e!4630172 () Bool)

(declare-fun tp!2312696 () Bool)

(declare-fun tp!2312695 () Bool)

(assert (=> b!7827837 (= e!4630172 (and tp!2312696 tp!2312695))))

(declare-fun b!7827834 () Bool)

(assert (=> b!7827834 (= e!4630172 tp_is_empty!52263)))

(declare-fun b!7827836 () Bool)

(declare-fun tp!2312697 () Bool)

(assert (=> b!7827836 (= e!4630172 tp!2312697)))

(assert (=> b!7827437 (= tp!2312595 e!4630172)))

(declare-fun b!7827835 () Bool)

(declare-fun tp!2312694 () Bool)

(declare-fun tp!2312698 () Bool)

(assert (=> b!7827835 (= e!4630172 (and tp!2312694 tp!2312698))))

(assert (= (and b!7827437 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 r2!6199)))) b!7827834))

(assert (= (and b!7827437 (is-Concat!29799 (regOne!42420 (regTwo!42421 r2!6199)))) b!7827835))

(assert (= (and b!7827437 (is-Star!20954 (regOne!42420 (regTwo!42421 r2!6199)))) b!7827836))

(assert (= (and b!7827437 (is-Union!20954 (regOne!42420 (regTwo!42421 r2!6199)))) b!7827837))

(declare-fun b!7827841 () Bool)

(declare-fun e!4630173 () Bool)

(declare-fun tp!2312701 () Bool)

(declare-fun tp!2312700 () Bool)

(assert (=> b!7827841 (= e!4630173 (and tp!2312701 tp!2312700))))

(declare-fun b!7827838 () Bool)

(assert (=> b!7827838 (= e!4630173 tp_is_empty!52263)))

(declare-fun b!7827840 () Bool)

(declare-fun tp!2312702 () Bool)

(assert (=> b!7827840 (= e!4630173 tp!2312702)))

(assert (=> b!7827437 (= tp!2312599 e!4630173)))

(declare-fun b!7827839 () Bool)

(declare-fun tp!2312699 () Bool)

(declare-fun tp!2312703 () Bool)

(assert (=> b!7827839 (= e!4630173 (and tp!2312699 tp!2312703))))

(assert (= (and b!7827437 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 r2!6199)))) b!7827838))

(assert (= (and b!7827437 (is-Concat!29799 (regTwo!42420 (regTwo!42421 r2!6199)))) b!7827839))

(assert (= (and b!7827437 (is-Star!20954 (regTwo!42420 (regTwo!42421 r2!6199)))) b!7827840))

(assert (= (and b!7827437 (is-Union!20954 (regTwo!42420 (regTwo!42421 r2!6199)))) b!7827841))

(declare-fun b!7827845 () Bool)

(declare-fun e!4630174 () Bool)

(declare-fun tp!2312706 () Bool)

(declare-fun tp!2312705 () Bool)

(assert (=> b!7827845 (= e!4630174 (and tp!2312706 tp!2312705))))

(declare-fun b!7827842 () Bool)

(assert (=> b!7827842 (= e!4630174 tp_is_empty!52263)))

(declare-fun b!7827844 () Bool)

(declare-fun tp!2312707 () Bool)

(assert (=> b!7827844 (= e!4630174 tp!2312707)))

(assert (=> b!7827413 (= tp!2312565 e!4630174)))

(declare-fun b!7827843 () Bool)

(declare-fun tp!2312704 () Bool)

(declare-fun tp!2312708 () Bool)

(assert (=> b!7827843 (= e!4630174 (and tp!2312704 tp!2312708))))

(assert (= (and b!7827413 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 r1!6261)))) b!7827842))

(assert (= (and b!7827413 (is-Concat!29799 (regOne!42421 (regOne!42421 r1!6261)))) b!7827843))

(assert (= (and b!7827413 (is-Star!20954 (regOne!42421 (regOne!42421 r1!6261)))) b!7827844))

(assert (= (and b!7827413 (is-Union!20954 (regOne!42421 (regOne!42421 r1!6261)))) b!7827845))

(declare-fun b!7827849 () Bool)

(declare-fun e!4630175 () Bool)

(declare-fun tp!2312711 () Bool)

(declare-fun tp!2312710 () Bool)

(assert (=> b!7827849 (= e!4630175 (and tp!2312711 tp!2312710))))

(declare-fun b!7827846 () Bool)

(assert (=> b!7827846 (= e!4630175 tp_is_empty!52263)))

(declare-fun b!7827848 () Bool)

(declare-fun tp!2312712 () Bool)

(assert (=> b!7827848 (= e!4630175 tp!2312712)))

(assert (=> b!7827413 (= tp!2312564 e!4630175)))

(declare-fun b!7827847 () Bool)

(declare-fun tp!2312709 () Bool)

(declare-fun tp!2312713 () Bool)

(assert (=> b!7827847 (= e!4630175 (and tp!2312709 tp!2312713))))

(assert (= (and b!7827413 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 r1!6261)))) b!7827846))

(assert (= (and b!7827413 (is-Concat!29799 (regTwo!42421 (regOne!42421 r1!6261)))) b!7827847))

(assert (= (and b!7827413 (is-Star!20954 (regTwo!42421 (regOne!42421 r1!6261)))) b!7827848))

(assert (= (and b!7827413 (is-Union!20954 (regTwo!42421 (regOne!42421 r1!6261)))) b!7827849))

(declare-fun b!7827853 () Bool)

(declare-fun e!4630176 () Bool)

(declare-fun tp!2312716 () Bool)

(declare-fun tp!2312715 () Bool)

(assert (=> b!7827853 (= e!4630176 (and tp!2312716 tp!2312715))))

(declare-fun b!7827850 () Bool)

(assert (=> b!7827850 (= e!4630176 tp_is_empty!52263)))

(declare-fun b!7827852 () Bool)

(declare-fun tp!2312717 () Bool)

(assert (=> b!7827852 (= e!4630176 tp!2312717)))

(assert (=> b!7827412 (= tp!2312566 e!4630176)))

(declare-fun b!7827851 () Bool)

(declare-fun tp!2312714 () Bool)

(declare-fun tp!2312718 () Bool)

(assert (=> b!7827851 (= e!4630176 (and tp!2312714 tp!2312718))))

(assert (= (and b!7827412 (is-ElementMatch!20954 (reg!21283 (regOne!42421 r1!6261)))) b!7827850))

(assert (= (and b!7827412 (is-Concat!29799 (reg!21283 (regOne!42421 r1!6261)))) b!7827851))

(assert (= (and b!7827412 (is-Star!20954 (reg!21283 (regOne!42421 r1!6261)))) b!7827852))

(assert (= (and b!7827412 (is-Union!20954 (reg!21283 (regOne!42421 r1!6261)))) b!7827853))

(declare-fun b!7827857 () Bool)

(declare-fun e!4630177 () Bool)

(declare-fun tp!2312721 () Bool)

(declare-fun tp!2312720 () Bool)

(assert (=> b!7827857 (= e!4630177 (and tp!2312721 tp!2312720))))

(declare-fun b!7827854 () Bool)

(assert (=> b!7827854 (= e!4630177 tp_is_empty!52263)))

(declare-fun b!7827856 () Bool)

(declare-fun tp!2312722 () Bool)

(assert (=> b!7827856 (= e!4630177 tp!2312722)))

(assert (=> b!7827429 (= tp!2312587 e!4630177)))

(declare-fun b!7827855 () Bool)

(declare-fun tp!2312719 () Bool)

(declare-fun tp!2312723 () Bool)

(assert (=> b!7827855 (= e!4630177 (and tp!2312719 tp!2312723))))

(assert (= (and b!7827429 (is-ElementMatch!20954 (reg!21283 (reg!21283 r1!6261)))) b!7827854))

(assert (= (and b!7827429 (is-Concat!29799 (reg!21283 (reg!21283 r1!6261)))) b!7827855))

(assert (= (and b!7827429 (is-Star!20954 (reg!21283 (reg!21283 r1!6261)))) b!7827856))

(assert (= (and b!7827429 (is-Union!20954 (reg!21283 (reg!21283 r1!6261)))) b!7827857))

(declare-fun b!7827861 () Bool)

(declare-fun e!4630178 () Bool)

(declare-fun tp!2312726 () Bool)

(declare-fun tp!2312725 () Bool)

(assert (=> b!7827861 (= e!4630178 (and tp!2312726 tp!2312725))))

(declare-fun b!7827858 () Bool)

(assert (=> b!7827858 (= e!4630178 tp_is_empty!52263)))

(declare-fun b!7827860 () Bool)

(declare-fun tp!2312727 () Bool)

(assert (=> b!7827860 (= e!4630178 tp!2312727)))

(assert (=> b!7827438 (= tp!2312598 e!4630178)))

(declare-fun b!7827859 () Bool)

(declare-fun tp!2312724 () Bool)

(declare-fun tp!2312728 () Bool)

(assert (=> b!7827859 (= e!4630178 (and tp!2312724 tp!2312728))))

(assert (= (and b!7827438 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 r2!6199)))) b!7827858))

(assert (= (and b!7827438 (is-Concat!29799 (reg!21283 (regTwo!42421 r2!6199)))) b!7827859))

(assert (= (and b!7827438 (is-Star!20954 (reg!21283 (regTwo!42421 r2!6199)))) b!7827860))

(assert (= (and b!7827438 (is-Union!20954 (reg!21283 (regTwo!42421 r2!6199)))) b!7827861))

(declare-fun b!7827865 () Bool)

(declare-fun e!4630179 () Bool)

(declare-fun tp!2312731 () Bool)

(declare-fun tp!2312730 () Bool)

(assert (=> b!7827865 (= e!4630179 (and tp!2312731 tp!2312730))))

(declare-fun b!7827862 () Bool)

(assert (=> b!7827862 (= e!4630179 tp_is_empty!52263)))

(declare-fun b!7827864 () Bool)

(declare-fun tp!2312732 () Bool)

(assert (=> b!7827864 (= e!4630179 tp!2312732)))

(assert (=> b!7827430 (= tp!2312586 e!4630179)))

(declare-fun b!7827863 () Bool)

(declare-fun tp!2312729 () Bool)

(declare-fun tp!2312733 () Bool)

(assert (=> b!7827863 (= e!4630179 (and tp!2312729 tp!2312733))))

(assert (= (and b!7827430 (is-ElementMatch!20954 (regOne!42421 (reg!21283 r1!6261)))) b!7827862))

(assert (= (and b!7827430 (is-Concat!29799 (regOne!42421 (reg!21283 r1!6261)))) b!7827863))

(assert (= (and b!7827430 (is-Star!20954 (regOne!42421 (reg!21283 r1!6261)))) b!7827864))

(assert (= (and b!7827430 (is-Union!20954 (regOne!42421 (reg!21283 r1!6261)))) b!7827865))

(declare-fun b!7827869 () Bool)

(declare-fun e!4630180 () Bool)

(declare-fun tp!2312736 () Bool)

(declare-fun tp!2312735 () Bool)

(assert (=> b!7827869 (= e!4630180 (and tp!2312736 tp!2312735))))

(declare-fun b!7827866 () Bool)

(assert (=> b!7827866 (= e!4630180 tp_is_empty!52263)))

(declare-fun b!7827868 () Bool)

(declare-fun tp!2312737 () Bool)

(assert (=> b!7827868 (= e!4630180 tp!2312737)))

(assert (=> b!7827430 (= tp!2312585 e!4630180)))

(declare-fun b!7827867 () Bool)

(declare-fun tp!2312734 () Bool)

(declare-fun tp!2312738 () Bool)

(assert (=> b!7827867 (= e!4630180 (and tp!2312734 tp!2312738))))

(assert (= (and b!7827430 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 r1!6261)))) b!7827866))

(assert (= (and b!7827430 (is-Concat!29799 (regTwo!42421 (reg!21283 r1!6261)))) b!7827867))

(assert (= (and b!7827430 (is-Star!20954 (regTwo!42421 (reg!21283 r1!6261)))) b!7827868))

(assert (= (and b!7827430 (is-Union!20954 (regTwo!42421 (reg!21283 r1!6261)))) b!7827869))

(declare-fun b!7827873 () Bool)

(declare-fun e!4630181 () Bool)

(declare-fun tp!2312741 () Bool)

(declare-fun tp!2312740 () Bool)

(assert (=> b!7827873 (= e!4630181 (and tp!2312741 tp!2312740))))

(declare-fun b!7827870 () Bool)

(assert (=> b!7827870 (= e!4630181 tp_is_empty!52263)))

(declare-fun b!7827872 () Bool)

(declare-fun tp!2312742 () Bool)

(assert (=> b!7827872 (= e!4630181 tp!2312742)))

(assert (=> b!7827421 (= tp!2312577 e!4630181)))

(declare-fun b!7827871 () Bool)

(declare-fun tp!2312739 () Bool)

(declare-fun tp!2312743 () Bool)

(assert (=> b!7827871 (= e!4630181 (and tp!2312739 tp!2312743))))

(assert (= (and b!7827421 (is-ElementMatch!20954 (reg!21283 (regOne!42420 r2!6199)))) b!7827870))

(assert (= (and b!7827421 (is-Concat!29799 (reg!21283 (regOne!42420 r2!6199)))) b!7827871))

(assert (= (and b!7827421 (is-Star!20954 (reg!21283 (regOne!42420 r2!6199)))) b!7827872))

(assert (= (and b!7827421 (is-Union!20954 (reg!21283 (regOne!42420 r2!6199)))) b!7827873))

(declare-fun b!7827877 () Bool)

(declare-fun e!4630182 () Bool)

(declare-fun tp!2312746 () Bool)

(declare-fun tp!2312745 () Bool)

(assert (=> b!7827877 (= e!4630182 (and tp!2312746 tp!2312745))))

(declare-fun b!7827874 () Bool)

(assert (=> b!7827874 (= e!4630182 tp_is_empty!52263)))

(declare-fun b!7827876 () Bool)

(declare-fun tp!2312747 () Bool)

(assert (=> b!7827876 (= e!4630182 tp!2312747)))

(assert (=> b!7827428 (= tp!2312584 e!4630182)))

(declare-fun b!7827875 () Bool)

(declare-fun tp!2312744 () Bool)

(declare-fun tp!2312748 () Bool)

(assert (=> b!7827875 (= e!4630182 (and tp!2312744 tp!2312748))))

(assert (= (and b!7827428 (is-ElementMatch!20954 (regOne!42420 (reg!21283 r1!6261)))) b!7827874))

(assert (= (and b!7827428 (is-Concat!29799 (regOne!42420 (reg!21283 r1!6261)))) b!7827875))

(assert (= (and b!7827428 (is-Star!20954 (regOne!42420 (reg!21283 r1!6261)))) b!7827876))

(assert (= (and b!7827428 (is-Union!20954 (regOne!42420 (reg!21283 r1!6261)))) b!7827877))

(declare-fun b!7827881 () Bool)

(declare-fun e!4630183 () Bool)

(declare-fun tp!2312751 () Bool)

(declare-fun tp!2312750 () Bool)

(assert (=> b!7827881 (= e!4630183 (and tp!2312751 tp!2312750))))

(declare-fun b!7827878 () Bool)

(assert (=> b!7827878 (= e!4630183 tp_is_empty!52263)))

(declare-fun b!7827880 () Bool)

(declare-fun tp!2312752 () Bool)

(assert (=> b!7827880 (= e!4630183 tp!2312752)))

(assert (=> b!7827428 (= tp!2312588 e!4630183)))

(declare-fun b!7827879 () Bool)

(declare-fun tp!2312749 () Bool)

(declare-fun tp!2312753 () Bool)

(assert (=> b!7827879 (= e!4630183 (and tp!2312749 tp!2312753))))

(assert (= (and b!7827428 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 r1!6261)))) b!7827878))

(assert (= (and b!7827428 (is-Concat!29799 (regTwo!42420 (reg!21283 r1!6261)))) b!7827879))

(assert (= (and b!7827428 (is-Star!20954 (regTwo!42420 (reg!21283 r1!6261)))) b!7827880))

(assert (= (and b!7827428 (is-Union!20954 (regTwo!42420 (reg!21283 r1!6261)))) b!7827881))

(declare-fun b!7827885 () Bool)

(declare-fun e!4630184 () Bool)

(declare-fun tp!2312756 () Bool)

(declare-fun tp!2312755 () Bool)

(assert (=> b!7827885 (= e!4630184 (and tp!2312756 tp!2312755))))

(declare-fun b!7827882 () Bool)

(assert (=> b!7827882 (= e!4630184 tp_is_empty!52263)))

(declare-fun b!7827884 () Bool)

(declare-fun tp!2312757 () Bool)

(assert (=> b!7827884 (= e!4630184 tp!2312757)))

(assert (=> b!7827411 (= tp!2312563 e!4630184)))

(declare-fun b!7827883 () Bool)

(declare-fun tp!2312754 () Bool)

(declare-fun tp!2312758 () Bool)

(assert (=> b!7827883 (= e!4630184 (and tp!2312754 tp!2312758))))

(assert (= (and b!7827411 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 r1!6261)))) b!7827882))

(assert (= (and b!7827411 (is-Concat!29799 (regOne!42420 (regOne!42421 r1!6261)))) b!7827883))

(assert (= (and b!7827411 (is-Star!20954 (regOne!42420 (regOne!42421 r1!6261)))) b!7827884))

(assert (= (and b!7827411 (is-Union!20954 (regOne!42420 (regOne!42421 r1!6261)))) b!7827885))

(declare-fun b!7827889 () Bool)

(declare-fun e!4630185 () Bool)

(declare-fun tp!2312761 () Bool)

(declare-fun tp!2312760 () Bool)

(assert (=> b!7827889 (= e!4630185 (and tp!2312761 tp!2312760))))

(declare-fun b!7827886 () Bool)

(assert (=> b!7827886 (= e!4630185 tp_is_empty!52263)))

(declare-fun b!7827888 () Bool)

(declare-fun tp!2312762 () Bool)

(assert (=> b!7827888 (= e!4630185 tp!2312762)))

(assert (=> b!7827411 (= tp!2312567 e!4630185)))

(declare-fun b!7827887 () Bool)

(declare-fun tp!2312759 () Bool)

(declare-fun tp!2312763 () Bool)

(assert (=> b!7827887 (= e!4630185 (and tp!2312759 tp!2312763))))

(assert (= (and b!7827411 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 r1!6261)))) b!7827886))

(assert (= (and b!7827411 (is-Concat!29799 (regTwo!42420 (regOne!42421 r1!6261)))) b!7827887))

(assert (= (and b!7827411 (is-Star!20954 (regTwo!42420 (regOne!42421 r1!6261)))) b!7827888))

(assert (= (and b!7827411 (is-Union!20954 (regTwo!42420 (regOne!42421 r1!6261)))) b!7827889))

(declare-fun b!7827893 () Bool)

(declare-fun e!4630186 () Bool)

(declare-fun tp!2312766 () Bool)

(declare-fun tp!2312765 () Bool)

(assert (=> b!7827893 (= e!4630186 (and tp!2312766 tp!2312765))))

(declare-fun b!7827890 () Bool)

(assert (=> b!7827890 (= e!4630186 tp_is_empty!52263)))

(declare-fun b!7827892 () Bool)

(declare-fun tp!2312767 () Bool)

(assert (=> b!7827892 (= e!4630186 tp!2312767)))

(assert (=> b!7827452 (= tp!2312615 e!4630186)))

(declare-fun b!7827891 () Bool)

(declare-fun tp!2312764 () Bool)

(declare-fun tp!2312768 () Bool)

(assert (=> b!7827891 (= e!4630186 (and tp!2312764 tp!2312768))))

(assert (= (and b!7827452 (is-ElementMatch!20954 (reg!21283 (reg!21283 r2!6199)))) b!7827890))

(assert (= (and b!7827452 (is-Concat!29799 (reg!21283 (reg!21283 r2!6199)))) b!7827891))

(assert (= (and b!7827452 (is-Star!20954 (reg!21283 (reg!21283 r2!6199)))) b!7827892))

(assert (= (and b!7827452 (is-Union!20954 (reg!21283 (reg!21283 r2!6199)))) b!7827893))

(declare-fun b!7827897 () Bool)

(declare-fun e!4630187 () Bool)

(declare-fun tp!2312771 () Bool)

(declare-fun tp!2312770 () Bool)

(assert (=> b!7827897 (= e!4630187 (and tp!2312771 tp!2312770))))

(declare-fun b!7827894 () Bool)

(assert (=> b!7827894 (= e!4630187 tp_is_empty!52263)))

(declare-fun b!7827896 () Bool)

(declare-fun tp!2312772 () Bool)

(assert (=> b!7827896 (= e!4630187 tp!2312772)))

(assert (=> b!7827444 (= tp!2312603 e!4630187)))

(declare-fun b!7827895 () Bool)

(declare-fun tp!2312769 () Bool)

(declare-fun tp!2312773 () Bool)

(assert (=> b!7827895 (= e!4630187 (and tp!2312769 tp!2312773))))

(assert (= (and b!7827444 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 r1!6261)))) b!7827894))

(assert (= (and b!7827444 (is-Concat!29799 (regOne!42421 (regOne!42420 r1!6261)))) b!7827895))

(assert (= (and b!7827444 (is-Star!20954 (regOne!42421 (regOne!42420 r1!6261)))) b!7827896))

(assert (= (and b!7827444 (is-Union!20954 (regOne!42421 (regOne!42420 r1!6261)))) b!7827897))

(declare-fun b!7827901 () Bool)

(declare-fun e!4630188 () Bool)

(declare-fun tp!2312776 () Bool)

(declare-fun tp!2312775 () Bool)

(assert (=> b!7827901 (= e!4630188 (and tp!2312776 tp!2312775))))

(declare-fun b!7827898 () Bool)

(assert (=> b!7827898 (= e!4630188 tp_is_empty!52263)))

(declare-fun b!7827900 () Bool)

(declare-fun tp!2312777 () Bool)

(assert (=> b!7827900 (= e!4630188 tp!2312777)))

(assert (=> b!7827444 (= tp!2312602 e!4630188)))

(declare-fun b!7827899 () Bool)

(declare-fun tp!2312774 () Bool)

(declare-fun tp!2312778 () Bool)

(assert (=> b!7827899 (= e!4630188 (and tp!2312774 tp!2312778))))

(assert (= (and b!7827444 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 r1!6261)))) b!7827898))

(assert (= (and b!7827444 (is-Concat!29799 (regTwo!42421 (regOne!42420 r1!6261)))) b!7827899))

(assert (= (and b!7827444 (is-Star!20954 (regTwo!42421 (regOne!42420 r1!6261)))) b!7827900))

(assert (= (and b!7827444 (is-Union!20954 (regTwo!42421 (regOne!42420 r1!6261)))) b!7827901))

(declare-fun b!7827905 () Bool)

(declare-fun e!4630189 () Bool)

(declare-fun tp!2312781 () Bool)

(declare-fun tp!2312780 () Bool)

(assert (=> b!7827905 (= e!4630189 (and tp!2312781 tp!2312780))))

(declare-fun b!7827902 () Bool)

(assert (=> b!7827902 (= e!4630189 tp_is_empty!52263)))

(declare-fun b!7827904 () Bool)

(declare-fun tp!2312782 () Bool)

(assert (=> b!7827904 (= e!4630189 tp!2312782)))

(assert (=> b!7827453 (= tp!2312614 e!4630189)))

(declare-fun b!7827903 () Bool)

(declare-fun tp!2312779 () Bool)

(declare-fun tp!2312783 () Bool)

(assert (=> b!7827903 (= e!4630189 (and tp!2312779 tp!2312783))))

(assert (= (and b!7827453 (is-ElementMatch!20954 (regOne!42421 (reg!21283 r2!6199)))) b!7827902))

(assert (= (and b!7827453 (is-Concat!29799 (regOne!42421 (reg!21283 r2!6199)))) b!7827903))

(assert (= (and b!7827453 (is-Star!20954 (regOne!42421 (reg!21283 r2!6199)))) b!7827904))

(assert (= (and b!7827453 (is-Union!20954 (regOne!42421 (reg!21283 r2!6199)))) b!7827905))

(declare-fun b!7827909 () Bool)

(declare-fun e!4630190 () Bool)

(declare-fun tp!2312786 () Bool)

(declare-fun tp!2312785 () Bool)

(assert (=> b!7827909 (= e!4630190 (and tp!2312786 tp!2312785))))

(declare-fun b!7827906 () Bool)

(assert (=> b!7827906 (= e!4630190 tp_is_empty!52263)))

(declare-fun b!7827908 () Bool)

(declare-fun tp!2312787 () Bool)

(assert (=> b!7827908 (= e!4630190 tp!2312787)))

(assert (=> b!7827453 (= tp!2312613 e!4630190)))

(declare-fun b!7827907 () Bool)

(declare-fun tp!2312784 () Bool)

(declare-fun tp!2312788 () Bool)

(assert (=> b!7827907 (= e!4630190 (and tp!2312784 tp!2312788))))

(assert (= (and b!7827453 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 r2!6199)))) b!7827906))

(assert (= (and b!7827453 (is-Concat!29799 (regTwo!42421 (reg!21283 r2!6199)))) b!7827907))

(assert (= (and b!7827453 (is-Star!20954 (regTwo!42421 (reg!21283 r2!6199)))) b!7827908))

(assert (= (and b!7827453 (is-Union!20954 (regTwo!42421 (reg!21283 r2!6199)))) b!7827909))

(declare-fun b!7827913 () Bool)

(declare-fun e!4630191 () Bool)

(declare-fun tp!2312791 () Bool)

(declare-fun tp!2312790 () Bool)

(assert (=> b!7827913 (= e!4630191 (and tp!2312791 tp!2312790))))

(declare-fun b!7827910 () Bool)

(assert (=> b!7827910 (= e!4630191 tp_is_empty!52263)))

(declare-fun b!7827912 () Bool)

(declare-fun tp!2312792 () Bool)

(assert (=> b!7827912 (= e!4630191 tp!2312792)))

(assert (=> b!7827442 (= tp!2312601 e!4630191)))

(declare-fun b!7827911 () Bool)

(declare-fun tp!2312789 () Bool)

(declare-fun tp!2312793 () Bool)

(assert (=> b!7827911 (= e!4630191 (and tp!2312789 tp!2312793))))

(assert (= (and b!7827442 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 r1!6261)))) b!7827910))

(assert (= (and b!7827442 (is-Concat!29799 (regOne!42420 (regOne!42420 r1!6261)))) b!7827911))

(assert (= (and b!7827442 (is-Star!20954 (regOne!42420 (regOne!42420 r1!6261)))) b!7827912))

(assert (= (and b!7827442 (is-Union!20954 (regOne!42420 (regOne!42420 r1!6261)))) b!7827913))

(declare-fun b!7827917 () Bool)

(declare-fun e!4630192 () Bool)

(declare-fun tp!2312796 () Bool)

(declare-fun tp!2312795 () Bool)

(assert (=> b!7827917 (= e!4630192 (and tp!2312796 tp!2312795))))

(declare-fun b!7827914 () Bool)

(assert (=> b!7827914 (= e!4630192 tp_is_empty!52263)))

(declare-fun b!7827916 () Bool)

(declare-fun tp!2312797 () Bool)

(assert (=> b!7827916 (= e!4630192 tp!2312797)))

(assert (=> b!7827442 (= tp!2312605 e!4630192)))

(declare-fun b!7827915 () Bool)

(declare-fun tp!2312794 () Bool)

(declare-fun tp!2312798 () Bool)

(assert (=> b!7827915 (= e!4630192 (and tp!2312794 tp!2312798))))

(assert (= (and b!7827442 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 r1!6261)))) b!7827914))

(assert (= (and b!7827442 (is-Concat!29799 (regTwo!42420 (regOne!42420 r1!6261)))) b!7827915))

(assert (= (and b!7827442 (is-Star!20954 (regTwo!42420 (regOne!42420 r1!6261)))) b!7827916))

(assert (= (and b!7827442 (is-Union!20954 (regTwo!42420 (regOne!42420 r1!6261)))) b!7827917))

(declare-fun b!7827918 () Bool)

(declare-fun e!4630193 () Bool)

(declare-fun tp!2312799 () Bool)

(assert (=> b!7827918 (= e!4630193 (and tp_is_empty!52263 tp!2312799))))

(assert (=> b!7827418 (= tp!2312573 e!4630193)))

(assert (= (and b!7827418 (is-Cons!73667 (t!388526 (t!388526 s1!4101)))) b!7827918))

(declare-fun b!7827922 () Bool)

(declare-fun e!4630194 () Bool)

(declare-fun tp!2312802 () Bool)

(declare-fun tp!2312801 () Bool)

(assert (=> b!7827922 (= e!4630194 (and tp!2312802 tp!2312801))))

(declare-fun b!7827919 () Bool)

(assert (=> b!7827919 (= e!4630194 tp_is_empty!52263)))

(declare-fun b!7827921 () Bool)

(declare-fun tp!2312803 () Bool)

(assert (=> b!7827921 (= e!4630194 tp!2312803)))

(assert (=> b!7827435 (= tp!2312592 e!4630194)))

(declare-fun b!7827920 () Bool)

(declare-fun tp!2312800 () Bool)

(declare-fun tp!2312804 () Bool)

(assert (=> b!7827920 (= e!4630194 (and tp!2312800 tp!2312804))))

(assert (= (and b!7827435 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 r2!6199)))) b!7827919))

(assert (= (and b!7827435 (is-Concat!29799 (regOne!42421 (regOne!42421 r2!6199)))) b!7827920))

(assert (= (and b!7827435 (is-Star!20954 (regOne!42421 (regOne!42421 r2!6199)))) b!7827921))

(assert (= (and b!7827435 (is-Union!20954 (regOne!42421 (regOne!42421 r2!6199)))) b!7827922))

(declare-fun b!7827926 () Bool)

(declare-fun e!4630195 () Bool)

(declare-fun tp!2312807 () Bool)

(declare-fun tp!2312806 () Bool)

(assert (=> b!7827926 (= e!4630195 (and tp!2312807 tp!2312806))))

(declare-fun b!7827923 () Bool)

(assert (=> b!7827923 (= e!4630195 tp_is_empty!52263)))

(declare-fun b!7827925 () Bool)

(declare-fun tp!2312808 () Bool)

(assert (=> b!7827925 (= e!4630195 tp!2312808)))

(assert (=> b!7827435 (= tp!2312591 e!4630195)))

(declare-fun b!7827924 () Bool)

(declare-fun tp!2312805 () Bool)

(declare-fun tp!2312809 () Bool)

(assert (=> b!7827924 (= e!4630195 (and tp!2312805 tp!2312809))))

(assert (= (and b!7827435 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 r2!6199)))) b!7827923))

(assert (= (and b!7827435 (is-Concat!29799 (regTwo!42421 (regOne!42421 r2!6199)))) b!7827924))

(assert (= (and b!7827435 (is-Star!20954 (regTwo!42421 (regOne!42421 r2!6199)))) b!7827925))

(assert (= (and b!7827435 (is-Union!20954 (regTwo!42421 (regOne!42421 r2!6199)))) b!7827926))

(declare-fun b!7827930 () Bool)

(declare-fun e!4630196 () Bool)

(declare-fun tp!2312812 () Bool)

(declare-fun tp!2312811 () Bool)

(assert (=> b!7827930 (= e!4630196 (and tp!2312812 tp!2312811))))

(declare-fun b!7827927 () Bool)

(assert (=> b!7827927 (= e!4630196 tp_is_empty!52263)))

(declare-fun b!7827929 () Bool)

(declare-fun tp!2312813 () Bool)

(assert (=> b!7827929 (= e!4630196 tp!2312813)))

(assert (=> b!7827434 (= tp!2312593 e!4630196)))

(declare-fun b!7827928 () Bool)

(declare-fun tp!2312810 () Bool)

(declare-fun tp!2312814 () Bool)

(assert (=> b!7827928 (= e!4630196 (and tp!2312810 tp!2312814))))

(assert (= (and b!7827434 (is-ElementMatch!20954 (reg!21283 (regOne!42421 r2!6199)))) b!7827927))

(assert (= (and b!7827434 (is-Concat!29799 (reg!21283 (regOne!42421 r2!6199)))) b!7827928))

(assert (= (and b!7827434 (is-Star!20954 (reg!21283 (regOne!42421 r2!6199)))) b!7827929))

(assert (= (and b!7827434 (is-Union!20954 (reg!21283 (regOne!42421 r2!6199)))) b!7827930))

(declare-fun b!7827934 () Bool)

(declare-fun e!4630197 () Bool)

(declare-fun tp!2312817 () Bool)

(declare-fun tp!2312816 () Bool)

(assert (=> b!7827934 (= e!4630197 (and tp!2312817 tp!2312816))))

(declare-fun b!7827931 () Bool)

(assert (=> b!7827931 (= e!4630197 tp_is_empty!52263)))

(declare-fun b!7827933 () Bool)

(declare-fun tp!2312818 () Bool)

(assert (=> b!7827933 (= e!4630197 tp!2312818)))

(assert (=> b!7827451 (= tp!2312612 e!4630197)))

(declare-fun b!7827932 () Bool)

(declare-fun tp!2312815 () Bool)

(declare-fun tp!2312819 () Bool)

(assert (=> b!7827932 (= e!4630197 (and tp!2312815 tp!2312819))))

(assert (= (and b!7827451 (is-ElementMatch!20954 (regOne!42420 (reg!21283 r2!6199)))) b!7827931))

(assert (= (and b!7827451 (is-Concat!29799 (regOne!42420 (reg!21283 r2!6199)))) b!7827932))

(assert (= (and b!7827451 (is-Star!20954 (regOne!42420 (reg!21283 r2!6199)))) b!7827933))

(assert (= (and b!7827451 (is-Union!20954 (regOne!42420 (reg!21283 r2!6199)))) b!7827934))

(declare-fun b!7827938 () Bool)

(declare-fun e!4630198 () Bool)

(declare-fun tp!2312822 () Bool)

(declare-fun tp!2312821 () Bool)

(assert (=> b!7827938 (= e!4630198 (and tp!2312822 tp!2312821))))

(declare-fun b!7827935 () Bool)

(assert (=> b!7827935 (= e!4630198 tp_is_empty!52263)))

(declare-fun b!7827937 () Bool)

(declare-fun tp!2312823 () Bool)

(assert (=> b!7827937 (= e!4630198 tp!2312823)))

(assert (=> b!7827451 (= tp!2312616 e!4630198)))

(declare-fun b!7827936 () Bool)

(declare-fun tp!2312820 () Bool)

(declare-fun tp!2312824 () Bool)

(assert (=> b!7827936 (= e!4630198 (and tp!2312820 tp!2312824))))

(assert (= (and b!7827451 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 r2!6199)))) b!7827935))

(assert (= (and b!7827451 (is-Concat!29799 (regTwo!42420 (reg!21283 r2!6199)))) b!7827936))

(assert (= (and b!7827451 (is-Star!20954 (regTwo!42420 (reg!21283 r2!6199)))) b!7827937))

(assert (= (and b!7827451 (is-Union!20954 (regTwo!42420 (reg!21283 r2!6199)))) b!7827938))

(declare-fun b!7827942 () Bool)

(declare-fun e!4630199 () Bool)

(declare-fun tp!2312827 () Bool)

(declare-fun tp!2312826 () Bool)

(assert (=> b!7827942 (= e!4630199 (and tp!2312827 tp!2312826))))

(declare-fun b!7827939 () Bool)

(assert (=> b!7827939 (= e!4630199 tp_is_empty!52263)))

(declare-fun b!7827941 () Bool)

(declare-fun tp!2312828 () Bool)

(assert (=> b!7827941 (= e!4630199 tp!2312828)))

(assert (=> b!7827443 (= tp!2312604 e!4630199)))

(declare-fun b!7827940 () Bool)

(declare-fun tp!2312825 () Bool)

(declare-fun tp!2312829 () Bool)

(assert (=> b!7827940 (= e!4630199 (and tp!2312825 tp!2312829))))

(assert (= (and b!7827443 (is-ElementMatch!20954 (reg!21283 (regOne!42420 r1!6261)))) b!7827939))

(assert (= (and b!7827443 (is-Concat!29799 (reg!21283 (regOne!42420 r1!6261)))) b!7827940))

(assert (= (and b!7827443 (is-Star!20954 (reg!21283 (regOne!42420 r1!6261)))) b!7827941))

(assert (= (and b!7827443 (is-Union!20954 (reg!21283 (regOne!42420 r1!6261)))) b!7827942))

(declare-fun b!7827946 () Bool)

(declare-fun e!4630200 () Bool)

(declare-fun tp!2312832 () Bool)

(declare-fun tp!2312831 () Bool)

(assert (=> b!7827946 (= e!4630200 (and tp!2312832 tp!2312831))))

(declare-fun b!7827943 () Bool)

(assert (=> b!7827943 (= e!4630200 tp_is_empty!52263)))

(declare-fun b!7827945 () Bool)

(declare-fun tp!2312833 () Bool)

(assert (=> b!7827945 (= e!4630200 tp!2312833)))

(assert (=> b!7827425 (= tp!2312582 e!4630200)))

(declare-fun b!7827944 () Bool)

(declare-fun tp!2312830 () Bool)

(declare-fun tp!2312834 () Bool)

(assert (=> b!7827944 (= e!4630200 (and tp!2312830 tp!2312834))))

(assert (= (and b!7827425 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 r2!6199)))) b!7827943))

(assert (= (and b!7827425 (is-Concat!29799 (reg!21283 (regTwo!42420 r2!6199)))) b!7827944))

(assert (= (and b!7827425 (is-Star!20954 (reg!21283 (regTwo!42420 r2!6199)))) b!7827945))

(assert (= (and b!7827425 (is-Union!20954 (reg!21283 (regTwo!42420 r2!6199)))) b!7827946))

(declare-fun b!7827950 () Bool)

(declare-fun e!4630201 () Bool)

(declare-fun tp!2312837 () Bool)

(declare-fun tp!2312836 () Bool)

(assert (=> b!7827950 (= e!4630201 (and tp!2312837 tp!2312836))))

(declare-fun b!7827947 () Bool)

(assert (=> b!7827947 (= e!4630201 tp_is_empty!52263)))

(declare-fun b!7827949 () Bool)

(declare-fun tp!2312838 () Bool)

(assert (=> b!7827949 (= e!4630201 tp!2312838)))

(assert (=> b!7827424 (= tp!2312579 e!4630201)))

(declare-fun b!7827948 () Bool)

(declare-fun tp!2312835 () Bool)

(declare-fun tp!2312839 () Bool)

(assert (=> b!7827948 (= e!4630201 (and tp!2312835 tp!2312839))))

(assert (= (and b!7827424 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 r2!6199)))) b!7827947))

(assert (= (and b!7827424 (is-Concat!29799 (regOne!42420 (regTwo!42420 r2!6199)))) b!7827948))

(assert (= (and b!7827424 (is-Star!20954 (regOne!42420 (regTwo!42420 r2!6199)))) b!7827949))

(assert (= (and b!7827424 (is-Union!20954 (regOne!42420 (regTwo!42420 r2!6199)))) b!7827950))

(declare-fun b!7827954 () Bool)

(declare-fun e!4630202 () Bool)

(declare-fun tp!2312842 () Bool)

(declare-fun tp!2312841 () Bool)

(assert (=> b!7827954 (= e!4630202 (and tp!2312842 tp!2312841))))

(declare-fun b!7827951 () Bool)

(assert (=> b!7827951 (= e!4630202 tp_is_empty!52263)))

(declare-fun b!7827953 () Bool)

(declare-fun tp!2312843 () Bool)

(assert (=> b!7827953 (= e!4630202 tp!2312843)))

(assert (=> b!7827424 (= tp!2312583 e!4630202)))

(declare-fun b!7827952 () Bool)

(declare-fun tp!2312840 () Bool)

(declare-fun tp!2312844 () Bool)

(assert (=> b!7827952 (= e!4630202 (and tp!2312840 tp!2312844))))

(assert (= (and b!7827424 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 r2!6199)))) b!7827951))

(assert (= (and b!7827424 (is-Concat!29799 (regTwo!42420 (regTwo!42420 r2!6199)))) b!7827952))

(assert (= (and b!7827424 (is-Star!20954 (regTwo!42420 (regTwo!42420 r2!6199)))) b!7827953))

(assert (= (and b!7827424 (is-Union!20954 (regTwo!42420 (regTwo!42420 r2!6199)))) b!7827954))

(declare-fun b!7827958 () Bool)

(declare-fun e!4630203 () Bool)

(declare-fun tp!2312847 () Bool)

(declare-fun tp!2312846 () Bool)

(assert (=> b!7827958 (= e!4630203 (and tp!2312847 tp!2312846))))

(declare-fun b!7827955 () Bool)

(assert (=> b!7827955 (= e!4630203 tp_is_empty!52263)))

(declare-fun b!7827957 () Bool)

(declare-fun tp!2312848 () Bool)

(assert (=> b!7827957 (= e!4630203 tp!2312848)))

(assert (=> b!7827417 (= tp!2312570 e!4630203)))

(declare-fun b!7827956 () Bool)

(declare-fun tp!2312845 () Bool)

(declare-fun tp!2312849 () Bool)

(assert (=> b!7827956 (= e!4630203 (and tp!2312845 tp!2312849))))

(assert (= (and b!7827417 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 r1!6261)))) b!7827955))

(assert (= (and b!7827417 (is-Concat!29799 (regOne!42421 (regTwo!42421 r1!6261)))) b!7827956))

(assert (= (and b!7827417 (is-Star!20954 (regOne!42421 (regTwo!42421 r1!6261)))) b!7827957))

(assert (= (and b!7827417 (is-Union!20954 (regOne!42421 (regTwo!42421 r1!6261)))) b!7827958))

(declare-fun b!7827962 () Bool)

(declare-fun e!4630204 () Bool)

(declare-fun tp!2312852 () Bool)

(declare-fun tp!2312851 () Bool)

(assert (=> b!7827962 (= e!4630204 (and tp!2312852 tp!2312851))))

(declare-fun b!7827959 () Bool)

(assert (=> b!7827959 (= e!4630204 tp_is_empty!52263)))

(declare-fun b!7827961 () Bool)

(declare-fun tp!2312853 () Bool)

(assert (=> b!7827961 (= e!4630204 tp!2312853)))

(assert (=> b!7827417 (= tp!2312569 e!4630204)))

(declare-fun b!7827960 () Bool)

(declare-fun tp!2312850 () Bool)

(declare-fun tp!2312854 () Bool)

(assert (=> b!7827960 (= e!4630204 (and tp!2312850 tp!2312854))))

(assert (= (and b!7827417 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 r1!6261)))) b!7827959))

(assert (= (and b!7827417 (is-Concat!29799 (regTwo!42421 (regTwo!42421 r1!6261)))) b!7827960))

(assert (= (and b!7827417 (is-Star!20954 (regTwo!42421 (regTwo!42421 r1!6261)))) b!7827961))

(assert (= (and b!7827417 (is-Union!20954 (regTwo!42421 (regTwo!42421 r1!6261)))) b!7827962))

(declare-fun b!7827966 () Bool)

(declare-fun e!4630205 () Bool)

(declare-fun tp!2312857 () Bool)

(declare-fun tp!2312856 () Bool)

(assert (=> b!7827966 (= e!4630205 (and tp!2312857 tp!2312856))))

(declare-fun b!7827963 () Bool)

(assert (=> b!7827963 (= e!4630205 tp_is_empty!52263)))

(declare-fun b!7827965 () Bool)

(declare-fun tp!2312858 () Bool)

(assert (=> b!7827965 (= e!4630205 tp!2312858)))

(assert (=> b!7827426 (= tp!2312581 e!4630205)))

(declare-fun b!7827964 () Bool)

(declare-fun tp!2312855 () Bool)

(declare-fun tp!2312859 () Bool)

(assert (=> b!7827964 (= e!4630205 (and tp!2312855 tp!2312859))))

(assert (= (and b!7827426 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 r2!6199)))) b!7827963))

(assert (= (and b!7827426 (is-Concat!29799 (regOne!42421 (regTwo!42420 r2!6199)))) b!7827964))

(assert (= (and b!7827426 (is-Star!20954 (regOne!42421 (regTwo!42420 r2!6199)))) b!7827965))

(assert (= (and b!7827426 (is-Union!20954 (regOne!42421 (regTwo!42420 r2!6199)))) b!7827966))

(declare-fun b!7827970 () Bool)

(declare-fun e!4630206 () Bool)

(declare-fun tp!2312862 () Bool)

(declare-fun tp!2312861 () Bool)

(assert (=> b!7827970 (= e!4630206 (and tp!2312862 tp!2312861))))

(declare-fun b!7827967 () Bool)

(assert (=> b!7827967 (= e!4630206 tp_is_empty!52263)))

(declare-fun b!7827969 () Bool)

(declare-fun tp!2312863 () Bool)

(assert (=> b!7827969 (= e!4630206 tp!2312863)))

(assert (=> b!7827426 (= tp!2312580 e!4630206)))

(declare-fun b!7827968 () Bool)

(declare-fun tp!2312860 () Bool)

(declare-fun tp!2312864 () Bool)

(assert (=> b!7827968 (= e!4630206 (and tp!2312860 tp!2312864))))

(assert (= (and b!7827426 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 r2!6199)))) b!7827967))

(assert (= (and b!7827426 (is-Concat!29799 (regTwo!42421 (regTwo!42420 r2!6199)))) b!7827968))

(assert (= (and b!7827426 (is-Star!20954 (regTwo!42421 (regTwo!42420 r2!6199)))) b!7827969))

(assert (= (and b!7827426 (is-Union!20954 (regTwo!42421 (regTwo!42420 r2!6199)))) b!7827970))

(declare-fun b!7827974 () Bool)

(declare-fun e!4630207 () Bool)

(declare-fun tp!2312867 () Bool)

(declare-fun tp!2312866 () Bool)

(assert (=> b!7827974 (= e!4630207 (and tp!2312867 tp!2312866))))

(declare-fun b!7827971 () Bool)

(assert (=> b!7827971 (= e!4630207 tp_is_empty!52263)))

(declare-fun b!7827973 () Bool)

(declare-fun tp!2312868 () Bool)

(assert (=> b!7827973 (= e!4630207 tp!2312868)))

(assert (=> b!7827433 (= tp!2312590 e!4630207)))

(declare-fun b!7827972 () Bool)

(declare-fun tp!2312865 () Bool)

(declare-fun tp!2312869 () Bool)

(assert (=> b!7827972 (= e!4630207 (and tp!2312865 tp!2312869))))

(assert (= (and b!7827433 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 r2!6199)))) b!7827971))

(assert (= (and b!7827433 (is-Concat!29799 (regOne!42420 (regOne!42421 r2!6199)))) b!7827972))

(assert (= (and b!7827433 (is-Star!20954 (regOne!42420 (regOne!42421 r2!6199)))) b!7827973))

(assert (= (and b!7827433 (is-Union!20954 (regOne!42420 (regOne!42421 r2!6199)))) b!7827974))

(declare-fun b!7827978 () Bool)

(declare-fun e!4630208 () Bool)

(declare-fun tp!2312872 () Bool)

(declare-fun tp!2312871 () Bool)

(assert (=> b!7827978 (= e!4630208 (and tp!2312872 tp!2312871))))

(declare-fun b!7827975 () Bool)

(assert (=> b!7827975 (= e!4630208 tp_is_empty!52263)))

(declare-fun b!7827977 () Bool)

(declare-fun tp!2312873 () Bool)

(assert (=> b!7827977 (= e!4630208 tp!2312873)))

(assert (=> b!7827433 (= tp!2312594 e!4630208)))

(declare-fun b!7827976 () Bool)

(declare-fun tp!2312870 () Bool)

(declare-fun tp!2312874 () Bool)

(assert (=> b!7827976 (= e!4630208 (and tp!2312870 tp!2312874))))

(assert (= (and b!7827433 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 r2!6199)))) b!7827975))

(assert (= (and b!7827433 (is-Concat!29799 (regTwo!42420 (regOne!42421 r2!6199)))) b!7827976))

(assert (= (and b!7827433 (is-Star!20954 (regTwo!42420 (regOne!42421 r2!6199)))) b!7827977))

(assert (= (and b!7827433 (is-Union!20954 (regTwo!42420 (regOne!42421 r2!6199)))) b!7827978))

(declare-fun b!7827982 () Bool)

(declare-fun e!4630209 () Bool)

(declare-fun tp!2312877 () Bool)

(declare-fun tp!2312876 () Bool)

(assert (=> b!7827982 (= e!4630209 (and tp!2312877 tp!2312876))))

(declare-fun b!7827979 () Bool)

(assert (=> b!7827979 (= e!4630209 tp_is_empty!52263)))

(declare-fun b!7827981 () Bool)

(declare-fun tp!2312878 () Bool)

(assert (=> b!7827981 (= e!4630209 tp!2312878)))

(assert (=> b!7827415 (= tp!2312568 e!4630209)))

(declare-fun b!7827980 () Bool)

(declare-fun tp!2312875 () Bool)

(declare-fun tp!2312879 () Bool)

(assert (=> b!7827980 (= e!4630209 (and tp!2312875 tp!2312879))))

(assert (= (and b!7827415 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 r1!6261)))) b!7827979))

(assert (= (and b!7827415 (is-Concat!29799 (regOne!42420 (regTwo!42421 r1!6261)))) b!7827980))

(assert (= (and b!7827415 (is-Star!20954 (regOne!42420 (regTwo!42421 r1!6261)))) b!7827981))

(assert (= (and b!7827415 (is-Union!20954 (regOne!42420 (regTwo!42421 r1!6261)))) b!7827982))

(declare-fun b!7827986 () Bool)

(declare-fun e!4630210 () Bool)

(declare-fun tp!2312882 () Bool)

(declare-fun tp!2312881 () Bool)

(assert (=> b!7827986 (= e!4630210 (and tp!2312882 tp!2312881))))

(declare-fun b!7827983 () Bool)

(assert (=> b!7827983 (= e!4630210 tp_is_empty!52263)))

(declare-fun b!7827985 () Bool)

(declare-fun tp!2312883 () Bool)

(assert (=> b!7827985 (= e!4630210 tp!2312883)))

(assert (=> b!7827415 (= tp!2312572 e!4630210)))

(declare-fun b!7827984 () Bool)

(declare-fun tp!2312880 () Bool)

(declare-fun tp!2312884 () Bool)

(assert (=> b!7827984 (= e!4630210 (and tp!2312880 tp!2312884))))

(assert (= (and b!7827415 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 r1!6261)))) b!7827983))

(assert (= (and b!7827415 (is-Concat!29799 (regTwo!42420 (regTwo!42421 r1!6261)))) b!7827984))

(assert (= (and b!7827415 (is-Star!20954 (regTwo!42420 (regTwo!42421 r1!6261)))) b!7827985))

(assert (= (and b!7827415 (is-Union!20954 (regTwo!42420 (regTwo!42421 r1!6261)))) b!7827986))

(declare-fun b!7827990 () Bool)

(declare-fun e!4630211 () Bool)

(declare-fun tp!2312887 () Bool)

(declare-fun tp!2312886 () Bool)

(assert (=> b!7827990 (= e!4630211 (and tp!2312887 tp!2312886))))

(declare-fun b!7827987 () Bool)

(assert (=> b!7827987 (= e!4630211 tp_is_empty!52263)))

(declare-fun b!7827989 () Bool)

(declare-fun tp!2312888 () Bool)

(assert (=> b!7827989 (= e!4630211 tp!2312888)))

(assert (=> b!7827416 (= tp!2312571 e!4630211)))

(declare-fun b!7827988 () Bool)

(declare-fun tp!2312885 () Bool)

(declare-fun tp!2312889 () Bool)

(assert (=> b!7827988 (= e!4630211 (and tp!2312885 tp!2312889))))

(assert (= (and b!7827416 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 r1!6261)))) b!7827987))

(assert (= (and b!7827416 (is-Concat!29799 (reg!21283 (regTwo!42421 r1!6261)))) b!7827988))

(assert (= (and b!7827416 (is-Star!20954 (reg!21283 (regTwo!42421 r1!6261)))) b!7827989))

(assert (= (and b!7827416 (is-Union!20954 (reg!21283 (regTwo!42421 r1!6261)))) b!7827990))

(declare-fun b!7827991 () Bool)

(declare-fun e!4630212 () Bool)

(declare-fun tp!2312890 () Bool)

(assert (=> b!7827991 (= e!4630212 (and tp_is_empty!52263 tp!2312890))))

(assert (=> b!7827440 (= tp!2312600 e!4630212)))

(assert (= (and b!7827440 (is-Cons!73667 (t!388526 (t!388526 s2Rec!453)))) b!7827991))

(declare-fun b!7827992 () Bool)

(declare-fun e!4630213 () Bool)

(declare-fun tp!2312891 () Bool)

(assert (=> b!7827992 (= e!4630213 (and tp_is_empty!52263 tp!2312891))))

(assert (=> b!7827399 (= tp!2312552 e!4630213)))

(assert (= (and b!7827399 (is-Cons!73667 (t!388526 (t!388526 s1Rec!453)))) b!7827992))

(declare-fun b!7827993 () Bool)

(declare-fun e!4630214 () Bool)

(declare-fun tp!2312892 () Bool)

(assert (=> b!7827993 (= e!4630214 (and tp_is_empty!52263 tp!2312892))))

(assert (=> b!7827449 (= tp!2312611 e!4630214)))

(assert (= (and b!7827449 (is-Cons!73667 (t!388526 (t!388526 s!14274)))) b!7827993))

(declare-fun b!7827997 () Bool)

(declare-fun e!4630215 () Bool)

(declare-fun tp!2312895 () Bool)

(declare-fun tp!2312894 () Bool)

(assert (=> b!7827997 (= e!4630215 (and tp!2312895 tp!2312894))))

(declare-fun b!7827994 () Bool)

(assert (=> b!7827994 (= e!4630215 tp_is_empty!52263)))

(declare-fun b!7827996 () Bool)

(declare-fun tp!2312896 () Bool)

(assert (=> b!7827996 (= e!4630215 tp!2312896)))

(assert (=> b!7827447 (= tp!2312609 e!4630215)))

(declare-fun b!7827995 () Bool)

(declare-fun tp!2312893 () Bool)

(declare-fun tp!2312897 () Bool)

(assert (=> b!7827995 (= e!4630215 (and tp!2312893 tp!2312897))))

(assert (= (and b!7827447 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 r1!6261)))) b!7827994))

(assert (= (and b!7827447 (is-Concat!29799 (reg!21283 (regTwo!42420 r1!6261)))) b!7827995))

(assert (= (and b!7827447 (is-Star!20954 (reg!21283 (regTwo!42420 r1!6261)))) b!7827996))

(assert (= (and b!7827447 (is-Union!20954 (reg!21283 (regTwo!42420 r1!6261)))) b!7827997))

(declare-fun b!7828001 () Bool)

(declare-fun e!4630216 () Bool)

(declare-fun tp!2312900 () Bool)

(declare-fun tp!2312899 () Bool)

(assert (=> b!7828001 (= e!4630216 (and tp!2312900 tp!2312899))))

(declare-fun b!7827998 () Bool)

(assert (=> b!7827998 (= e!4630216 tp_is_empty!52263)))

(declare-fun b!7828000 () Bool)

(declare-fun tp!2312901 () Bool)

(assert (=> b!7828000 (= e!4630216 tp!2312901)))

(assert (=> b!7827446 (= tp!2312606 e!4630216)))

(declare-fun b!7827999 () Bool)

(declare-fun tp!2312898 () Bool)

(declare-fun tp!2312902 () Bool)

(assert (=> b!7827999 (= e!4630216 (and tp!2312898 tp!2312902))))

(assert (= (and b!7827446 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 r1!6261)))) b!7827998))

(assert (= (and b!7827446 (is-Concat!29799 (regOne!42420 (regTwo!42420 r1!6261)))) b!7827999))

(assert (= (and b!7827446 (is-Star!20954 (regOne!42420 (regTwo!42420 r1!6261)))) b!7828000))

(assert (= (and b!7827446 (is-Union!20954 (regOne!42420 (regTwo!42420 r1!6261)))) b!7828001))

(declare-fun b!7828005 () Bool)

(declare-fun e!4630217 () Bool)

(declare-fun tp!2312905 () Bool)

(declare-fun tp!2312904 () Bool)

(assert (=> b!7828005 (= e!4630217 (and tp!2312905 tp!2312904))))

(declare-fun b!7828002 () Bool)

(assert (=> b!7828002 (= e!4630217 tp_is_empty!52263)))

(declare-fun b!7828004 () Bool)

(declare-fun tp!2312906 () Bool)

(assert (=> b!7828004 (= e!4630217 tp!2312906)))

(assert (=> b!7827446 (= tp!2312610 e!4630217)))

(declare-fun b!7828003 () Bool)

(declare-fun tp!2312903 () Bool)

(declare-fun tp!2312907 () Bool)

(assert (=> b!7828003 (= e!4630217 (and tp!2312903 tp!2312907))))

(assert (= (and b!7827446 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 r1!6261)))) b!7828002))

(assert (= (and b!7827446 (is-Concat!29799 (regTwo!42420 (regTwo!42420 r1!6261)))) b!7828003))

(assert (= (and b!7827446 (is-Star!20954 (regTwo!42420 (regTwo!42420 r1!6261)))) b!7828004))

(assert (= (and b!7827446 (is-Union!20954 (regTwo!42420 (regTwo!42420 r1!6261)))) b!7828005))

(declare-fun b!7828009 () Bool)

(declare-fun e!4630218 () Bool)

(declare-fun tp!2312910 () Bool)

(declare-fun tp!2312909 () Bool)

(assert (=> b!7828009 (= e!4630218 (and tp!2312910 tp!2312909))))

(declare-fun b!7828006 () Bool)

(assert (=> b!7828006 (= e!4630218 tp_is_empty!52263)))

(declare-fun b!7828008 () Bool)

(declare-fun tp!2312911 () Bool)

(assert (=> b!7828008 (= e!4630218 tp!2312911)))

(assert (=> b!7827422 (= tp!2312576 e!4630218)))

(declare-fun b!7828007 () Bool)

(declare-fun tp!2312908 () Bool)

(declare-fun tp!2312912 () Bool)

(assert (=> b!7828007 (= e!4630218 (and tp!2312908 tp!2312912))))

(assert (= (and b!7827422 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 r2!6199)))) b!7828006))

(assert (= (and b!7827422 (is-Concat!29799 (regOne!42421 (regOne!42420 r2!6199)))) b!7828007))

(assert (= (and b!7827422 (is-Star!20954 (regOne!42421 (regOne!42420 r2!6199)))) b!7828008))

(assert (= (and b!7827422 (is-Union!20954 (regOne!42421 (regOne!42420 r2!6199)))) b!7828009))

(declare-fun b!7828013 () Bool)

(declare-fun e!4630219 () Bool)

(declare-fun tp!2312915 () Bool)

(declare-fun tp!2312914 () Bool)

(assert (=> b!7828013 (= e!4630219 (and tp!2312915 tp!2312914))))

(declare-fun b!7828010 () Bool)

(assert (=> b!7828010 (= e!4630219 tp_is_empty!52263)))

(declare-fun b!7828012 () Bool)

(declare-fun tp!2312916 () Bool)

(assert (=> b!7828012 (= e!4630219 tp!2312916)))

(assert (=> b!7827422 (= tp!2312575 e!4630219)))

(declare-fun b!7828011 () Bool)

(declare-fun tp!2312913 () Bool)

(declare-fun tp!2312917 () Bool)

(assert (=> b!7828011 (= e!4630219 (and tp!2312913 tp!2312917))))

(assert (= (and b!7827422 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 r2!6199)))) b!7828010))

(assert (= (and b!7827422 (is-Concat!29799 (regTwo!42421 (regOne!42420 r2!6199)))) b!7828011))

(assert (= (and b!7827422 (is-Star!20954 (regTwo!42421 (regOne!42420 r2!6199)))) b!7828012))

(assert (= (and b!7827422 (is-Union!20954 (regTwo!42421 (regOne!42420 r2!6199)))) b!7828013))

(declare-fun b!7828017 () Bool)

(declare-fun e!4630220 () Bool)

(declare-fun tp!2312920 () Bool)

(declare-fun tp!2312919 () Bool)

(assert (=> b!7828017 (= e!4630220 (and tp!2312920 tp!2312919))))

(declare-fun b!7828014 () Bool)

(assert (=> b!7828014 (= e!4630220 tp_is_empty!52263)))

(declare-fun b!7828016 () Bool)

(declare-fun tp!2312921 () Bool)

(assert (=> b!7828016 (= e!4630220 tp!2312921)))

(assert (=> b!7827439 (= tp!2312597 e!4630220)))

(declare-fun b!7828015 () Bool)

(declare-fun tp!2312918 () Bool)

(declare-fun tp!2312922 () Bool)

(assert (=> b!7828015 (= e!4630220 (and tp!2312918 tp!2312922))))

(assert (= (and b!7827439 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 r2!6199)))) b!7828014))

(assert (= (and b!7827439 (is-Concat!29799 (regOne!42421 (regTwo!42421 r2!6199)))) b!7828015))

(assert (= (and b!7827439 (is-Star!20954 (regOne!42421 (regTwo!42421 r2!6199)))) b!7828016))

(assert (= (and b!7827439 (is-Union!20954 (regOne!42421 (regTwo!42421 r2!6199)))) b!7828017))

(declare-fun b!7828021 () Bool)

(declare-fun e!4630221 () Bool)

(declare-fun tp!2312925 () Bool)

(declare-fun tp!2312924 () Bool)

(assert (=> b!7828021 (= e!4630221 (and tp!2312925 tp!2312924))))

(declare-fun b!7828018 () Bool)

(assert (=> b!7828018 (= e!4630221 tp_is_empty!52263)))

(declare-fun b!7828020 () Bool)

(declare-fun tp!2312926 () Bool)

(assert (=> b!7828020 (= e!4630221 tp!2312926)))

(assert (=> b!7827439 (= tp!2312596 e!4630221)))

(declare-fun b!7828019 () Bool)

(declare-fun tp!2312923 () Bool)

(declare-fun tp!2312927 () Bool)

(assert (=> b!7828019 (= e!4630221 (and tp!2312923 tp!2312927))))

(assert (= (and b!7827439 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 r2!6199)))) b!7828018))

(assert (= (and b!7827439 (is-Concat!29799 (regTwo!42421 (regTwo!42421 r2!6199)))) b!7828019))

(assert (= (and b!7827439 (is-Star!20954 (regTwo!42421 (regTwo!42421 r2!6199)))) b!7828020))

(assert (= (and b!7827439 (is-Union!20954 (regTwo!42421 (regTwo!42421 r2!6199)))) b!7828021))

(declare-fun b!7828025 () Bool)

(declare-fun e!4630222 () Bool)

(declare-fun tp!2312930 () Bool)

(declare-fun tp!2312929 () Bool)

(assert (=> b!7828025 (= e!4630222 (and tp!2312930 tp!2312929))))

(declare-fun b!7828022 () Bool)

(assert (=> b!7828022 (= e!4630222 tp_is_empty!52263)))

(declare-fun b!7828024 () Bool)

(declare-fun tp!2312931 () Bool)

(assert (=> b!7828024 (= e!4630222 tp!2312931)))

(assert (=> b!7827448 (= tp!2312608 e!4630222)))

(declare-fun b!7828023 () Bool)

(declare-fun tp!2312928 () Bool)

(declare-fun tp!2312932 () Bool)

(assert (=> b!7828023 (= e!4630222 (and tp!2312928 tp!2312932))))

(assert (= (and b!7827448 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 r1!6261)))) b!7828022))

(assert (= (and b!7827448 (is-Concat!29799 (regOne!42421 (regTwo!42420 r1!6261)))) b!7828023))

(assert (= (and b!7827448 (is-Star!20954 (regOne!42421 (regTwo!42420 r1!6261)))) b!7828024))

(assert (= (and b!7827448 (is-Union!20954 (regOne!42421 (regTwo!42420 r1!6261)))) b!7828025))

(declare-fun b!7828029 () Bool)

(declare-fun e!4630223 () Bool)

(declare-fun tp!2312935 () Bool)

(declare-fun tp!2312934 () Bool)

(assert (=> b!7828029 (= e!4630223 (and tp!2312935 tp!2312934))))

(declare-fun b!7828026 () Bool)

(assert (=> b!7828026 (= e!4630223 tp_is_empty!52263)))

(declare-fun b!7828028 () Bool)

(declare-fun tp!2312936 () Bool)

(assert (=> b!7828028 (= e!4630223 tp!2312936)))

(assert (=> b!7827448 (= tp!2312607 e!4630223)))

(declare-fun b!7828027 () Bool)

(declare-fun tp!2312933 () Bool)

(declare-fun tp!2312937 () Bool)

(assert (=> b!7828027 (= e!4630223 (and tp!2312933 tp!2312937))))

(assert (= (and b!7827448 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 r1!6261)))) b!7828026))

(assert (= (and b!7827448 (is-Concat!29799 (regTwo!42421 (regTwo!42420 r1!6261)))) b!7828027))

(assert (= (and b!7827448 (is-Star!20954 (regTwo!42421 (regTwo!42420 r1!6261)))) b!7828028))

(assert (= (and b!7827448 (is-Union!20954 (regTwo!42421 (regTwo!42420 r1!6261)))) b!7828029))

(declare-fun b!7828030 () Bool)

(declare-fun e!4630224 () Bool)

(declare-fun tp!2312938 () Bool)

(assert (=> b!7828030 (= e!4630224 (and tp_is_empty!52263 tp!2312938))))

(assert (=> b!7827431 (= tp!2312589 e!4630224)))

(assert (= (and b!7827431 (is-Cons!73667 (t!388526 (t!388526 s2!3721)))) b!7828030))

(push 1)

(assert (not b!7827851))

(assert (not b!7828000))

(assert (not bm!725981))

(assert (not b!7827824))

(assert (not b!7827833))

(assert (not d!2350445))

(assert (not b!7827877))

(assert (not b!7827978))

(assert (not b!7827976))

(assert (not b!7827678))

(assert (not b!7827646))

(assert (not b!7828013))

(assert (not b!7827887))

(assert (not b!7827917))

(assert (not b!7827796))

(assert (not b!7827741))

(assert (not d!2350453))

(assert (not b!7827766))

(assert (not b!7827952))

(assert (not b!7827880))

(assert (not b!7827798))

(assert (not b!7827864))

(assert (not b!7827823))

(assert (not b!7827908))

(assert (not b!7827868))

(assert (not b!7827928))

(assert (not b!7828009))

(assert (not b!7827856))

(assert (not b!7827837))

(assert (not b!7827891))

(assert (not b!7827985))

(assert (not b!7827889))

(assert (not b!7827918))

(assert (not b!7827845))

(assert (not b!7827897))

(assert (not b!7827825))

(assert (not b!7827784))

(assert (not b!7827682))

(assert (not b!7827933))

(assert (not b!7827905))

(assert (not b!7827779))

(assert (not b!7827695))

(assert (not b!7827832))

(assert (not b!7827869))

(assert (not b!7827865))

(assert (not b!7827954))

(assert (not b!7827847))

(assert (not b!7827831))

(assert (not bm!725994))

(assert (not b!7827995))

(assert (not b!7827958))

(assert (not d!2350481))

(assert (not b!7827835))

(assert (not b!7827944))

(assert (not b!7827728))

(assert (not b!7827909))

(assert (not b!7827704))

(assert (not b!7827989))

(assert (not b!7827915))

(assert (not b!7827940))

(assert (not b!7827904))

(assert (not b!7827903))

(assert (not b!7828001))

(assert (not b!7828025))

(assert (not d!2350507))

(assert (not b!7827922))

(assert (not b!7827962))

(assert (not b!7827965))

(assert (not bm!725967))

(assert (not b!7827848))

(assert (not bm!725972))

(assert (not b!7827635))

(assert (not b!7827638))

(assert (not b!7828023))

(assert (not b!7827907))

(assert (not b!7827888))

(assert (not bm!725982))

(assert (not b!7828003))

(assert (not b!7827964))

(assert (not b!7827871))

(assert (not b!7827839))

(assert (not bm!725958))

(assert (not b!7827691))

(assert (not bm!725993))

(assert (not b!7827855))

(assert (not b!7827949))

(assert (not b!7827636))

(assert (not b!7827879))

(assert (not b!7827757))

(assert (not b!7827806))

(assert (not b!7827778))

(assert (not d!2350529))

(assert (not b!7827827))

(assert (not b!7827818))

(assert (not b!7827948))

(assert (not b!7827912))

(assert (not b!7827875))

(assert (not b!7827843))

(assert (not b!7827863))

(assert (not b!7827853))

(assert (not b!7827840))

(assert (not b!7827993))

(assert (not b!7827881))

(assert (not b!7828015))

(assert (not b!7827872))

(assert (not b!7827926))

(assert (not b!7827730))

(assert (not b!7827725))

(assert (not b!7827844))

(assert (not b!7828005))

(assert (not b!7827977))

(assert (not b!7827873))

(assert (not bm!725969))

(assert (not b!7827639))

(assert (not bm!725977))

(assert (not b!7827997))

(assert (not b!7827841))

(assert (not b!7827884))

(assert (not b!7828008))

(assert (not b!7827793))

(assert (not b!7827916))

(assert (not d!2350465))

(assert (not b!7827988))

(assert (not b!7827942))

(assert (not b!7828029))

(assert (not b!7828004))

(assert (not bm!725992))

(assert (not d!2350463))

(assert (not b!7827920))

(assert (not b!7828016))

(assert (not b!7827900))

(assert (not b!7827950))

(assert (not b!7827892))

(assert (not b!7827986))

(assert (not b!7827805))

(assert (not b!7827996))

(assert (not b!7828028))

(assert (not b!7827645))

(assert (not b!7827737))

(assert (not b!7827849))

(assert (not b!7827707))

(assert (not b!7827731))

(assert (not b!7827924))

(assert (not b!7827709))

(assert (not b!7827716))

(assert (not d!2350455))

(assert (not b!7827649))

(assert (not bm!725978))

(assert (not b!7827684))

(assert (not b!7827852))

(assert (not b!7827692))

(assert (not b!7827685))

(assert (not b!7828007))

(assert (not d!2350493))

(assert (not b!7827972))

(assert (not b!7828012))

(assert (not b!7827999))

(assert (not bm!725996))

(assert (not b!7827992))

(assert (not b!7827829))

(assert (not b!7827973))

(assert (not b!7827929))

(assert (not b!7827932))

(assert (not b!7827982))

(assert (not b!7827921))

(assert (not b!7827896))

(assert (not bm!725988))

(assert (not bm!725989))

(assert (not b!7827859))

(assert (not b!7827885))

(assert (not b!7827821))

(assert (not b!7827956))

(assert (not b!7827945))

(assert (not b!7827946))

(assert (not b!7827836))

(assert (not b!7827799))

(assert (not b!7827763))

(assert (not b!7827893))

(assert (not b!7828019))

(assert (not b!7827809))

(assert (not b!7827966))

(assert (not b!7828030))

(assert tp_is_empty!52263)

(assert (not b!7827960))

(assert (not b!7827911))

(assert (not b!7828017))

(assert (not b!7827970))

(assert (not d!2350515))

(assert (not d!2350531))

(assert (not bm!725974))

(assert (not b!7827934))

(assert (not b!7827984))

(assert (not d!2350491))

(assert (not b!7827681))

(assert (not b!7827930))

(assert (not b!7827981))

(assert (not b!7827957))

(assert (not b!7827938))

(assert (not b!7827883))

(assert (not b!7828011))

(assert (not d!2350527))

(assert (not b!7827828))

(assert (not b!7827991))

(assert (not b!7828020))

(assert (not b!7827968))

(assert (not b!7827761))

(assert (not bm!725991))

(assert (not b!7827867))

(assert (not b!7827936))

(assert (not b!7827953))

(assert (not b!7827980))

(assert (not b!7828027))

(assert (not b!7827786))

(assert (not b!7827937))

(assert (not b!7827861))

(assert (not b!7827961))

(assert (not bm!725983))

(assert (not b!7827738))

(assert (not b!7827969))

(assert (not b!7827901))

(assert (not b!7827990))

(assert (not b!7827774))

(assert (not d!2350495))

(assert (not b!7827899))

(assert (not b!7827857))

(assert (not b!7827633))

(assert (not b!7828021))

(assert (not bm!725980))

(assert (not b!7827876))

(assert (not bm!725971))

(assert (not b!7827941))

(assert (not b!7827860))

(assert (not b!7827925))

(assert (not b!7827895))

(assert (not b!7827750))

(assert (not bm!725985))

(assert (not b!7827913))

(assert (not b!7827765))

(assert (not b!7827759))

(assert (not b!7827782))

(assert (not b!7828024))

(assert (not b!7827974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2350633 () Bool)

(assert (=> d!2350633 (= (head!15987 (tail!15528 s2!3721)) (h!80115 (tail!15528 s2!3721)))))

(assert (=> b!7827798 d!2350633))

(declare-fun b!7828444 () Bool)

(declare-fun e!4630404 () Bool)

(declare-fun e!4630405 () Bool)

(assert (=> b!7828444 (= e!4630404 e!4630405)))

(declare-fun res!3114646 () Bool)

(declare-fun call!726048 () Bool)

(assert (=> b!7828444 (= res!3114646 call!726048)))

(assert (=> b!7828444 (=> (not res!3114646) (not e!4630405))))

(declare-fun b!7828445 () Bool)

(declare-fun e!4630401 () Bool)

(assert (=> b!7828445 (= e!4630401 e!4630404)))

(declare-fun c!1440297 () Bool)

(assert (=> b!7828445 (= c!1440297 (is-Union!20954 (reg!21283 r2!6199)))))

(declare-fun d!2350635 () Bool)

(declare-fun res!3114645 () Bool)

(declare-fun e!4630403 () Bool)

(assert (=> d!2350635 (=> res!3114645 e!4630403)))

(assert (=> d!2350635 (= res!3114645 (is-EmptyExpr!20954 (reg!21283 r2!6199)))))

(assert (=> d!2350635 (= (nullableFct!3667 (reg!21283 r2!6199)) e!4630403)))

(declare-fun bm!726042 () Bool)

(declare-fun call!726047 () Bool)

(assert (=> bm!726042 (= call!726047 (nullable!9298 (ite c!1440297 (regTwo!42421 (reg!21283 r2!6199)) (regTwo!42420 (reg!21283 r2!6199)))))))

(declare-fun bm!726043 () Bool)

(assert (=> bm!726043 (= call!726048 (nullable!9298 (ite c!1440297 (regOne!42421 (reg!21283 r2!6199)) (regOne!42420 (reg!21283 r2!6199)))))))

(declare-fun b!7828446 () Bool)

(declare-fun e!4630400 () Bool)

(assert (=> b!7828446 (= e!4630404 e!4630400)))

(declare-fun res!3114648 () Bool)

(assert (=> b!7828446 (= res!3114648 call!726048)))

(assert (=> b!7828446 (=> res!3114648 e!4630400)))

(declare-fun b!7828447 () Bool)

(assert (=> b!7828447 (= e!4630400 call!726047)))

(declare-fun b!7828448 () Bool)

(declare-fun e!4630402 () Bool)

(assert (=> b!7828448 (= e!4630402 e!4630401)))

(declare-fun res!3114649 () Bool)

(assert (=> b!7828448 (=> res!3114649 e!4630401)))

(assert (=> b!7828448 (= res!3114649 (is-Star!20954 (reg!21283 r2!6199)))))

(declare-fun b!7828449 () Bool)

(assert (=> b!7828449 (= e!4630405 call!726047)))

(declare-fun b!7828450 () Bool)

(assert (=> b!7828450 (= e!4630403 e!4630402)))

(declare-fun res!3114647 () Bool)

(assert (=> b!7828450 (=> (not res!3114647) (not e!4630402))))

(assert (=> b!7828450 (= res!3114647 (and (not (is-EmptyLang!20954 (reg!21283 r2!6199))) (not (is-ElementMatch!20954 (reg!21283 r2!6199)))))))

(assert (= (and d!2350635 (not res!3114645)) b!7828450))

(assert (= (and b!7828450 res!3114647) b!7828448))

(assert (= (and b!7828448 (not res!3114649)) b!7828445))

(assert (= (and b!7828445 c!1440297) b!7828446))

(assert (= (and b!7828445 (not c!1440297)) b!7828444))

(assert (= (and b!7828446 (not res!3114648)) b!7828447))

(assert (= (and b!7828444 res!3114646) b!7828449))

(assert (= (or b!7828447 b!7828449) bm!726042))

(assert (= (or b!7828446 b!7828444) bm!726043))

(declare-fun m!8247902 () Bool)

(assert (=> bm!726042 m!8247902))

(declare-fun m!8247904 () Bool)

(assert (=> bm!726043 m!8247904))

(assert (=> d!2350531 d!2350635))

(declare-fun b!7828451 () Bool)

(declare-fun e!4630410 () Bool)

(declare-fun e!4630411 () Bool)

(assert (=> b!7828451 (= e!4630410 e!4630411)))

(declare-fun res!3114651 () Bool)

(declare-fun call!726050 () Bool)

(assert (=> b!7828451 (= res!3114651 call!726050)))

(assert (=> b!7828451 (=> (not res!3114651) (not e!4630411))))

(declare-fun b!7828452 () Bool)

(declare-fun e!4630407 () Bool)

(assert (=> b!7828452 (= e!4630407 e!4630410)))

(declare-fun c!1440298 () Bool)

(assert (=> b!7828452 (= c!1440298 (is-Union!20954 r1!6261))))

(declare-fun d!2350637 () Bool)

(declare-fun res!3114650 () Bool)

(declare-fun e!4630409 () Bool)

(assert (=> d!2350637 (=> res!3114650 e!4630409)))

(assert (=> d!2350637 (= res!3114650 (is-EmptyExpr!20954 r1!6261))))

(assert (=> d!2350637 (= (nullableFct!3667 r1!6261) e!4630409)))

(declare-fun bm!726044 () Bool)

(declare-fun call!726049 () Bool)

(assert (=> bm!726044 (= call!726049 (nullable!9298 (ite c!1440298 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(declare-fun bm!726045 () Bool)

(assert (=> bm!726045 (= call!726050 (nullable!9298 (ite c!1440298 (regOne!42421 r1!6261) (regOne!42420 r1!6261))))))

(declare-fun b!7828453 () Bool)

(declare-fun e!4630406 () Bool)

(assert (=> b!7828453 (= e!4630410 e!4630406)))

(declare-fun res!3114653 () Bool)

(assert (=> b!7828453 (= res!3114653 call!726050)))

(assert (=> b!7828453 (=> res!3114653 e!4630406)))

(declare-fun b!7828454 () Bool)

(assert (=> b!7828454 (= e!4630406 call!726049)))

(declare-fun b!7828455 () Bool)

(declare-fun e!4630408 () Bool)

(assert (=> b!7828455 (= e!4630408 e!4630407)))

(declare-fun res!3114654 () Bool)

(assert (=> b!7828455 (=> res!3114654 e!4630407)))

(assert (=> b!7828455 (= res!3114654 (is-Star!20954 r1!6261))))

(declare-fun b!7828456 () Bool)

(assert (=> b!7828456 (= e!4630411 call!726049)))

(declare-fun b!7828457 () Bool)

(assert (=> b!7828457 (= e!4630409 e!4630408)))

(declare-fun res!3114652 () Bool)

(assert (=> b!7828457 (=> (not res!3114652) (not e!4630408))))

(assert (=> b!7828457 (= res!3114652 (and (not (is-EmptyLang!20954 r1!6261)) (not (is-ElementMatch!20954 r1!6261))))))

(assert (= (and d!2350637 (not res!3114650)) b!7828457))

(assert (= (and b!7828457 res!3114652) b!7828455))

(assert (= (and b!7828455 (not res!3114654)) b!7828452))

(assert (= (and b!7828452 c!1440298) b!7828453))

(assert (= (and b!7828452 (not c!1440298)) b!7828451))

(assert (= (and b!7828453 (not res!3114653)) b!7828454))

(assert (= (and b!7828451 res!3114651) b!7828456))

(assert (= (or b!7828454 b!7828456) bm!726044))

(assert (= (or b!7828453 b!7828451) bm!726045))

(declare-fun m!8247906 () Bool)

(assert (=> bm!726044 m!8247906))

(declare-fun m!8247908 () Bool)

(assert (=> bm!726045 m!8247908))

(assert (=> d!2350445 d!2350637))

(declare-fun d!2350639 () Bool)

(assert (=> d!2350639 (= (nullable!9298 (regOne!42420 r2!6199)) (nullableFct!3667 (regOne!42420 r2!6199)))))

(declare-fun bs!1966790 () Bool)

(assert (= bs!1966790 d!2350639))

(declare-fun m!8247910 () Bool)

(assert (=> bs!1966790 m!8247910))

(assert (=> b!7827750 d!2350639))

(declare-fun d!2350641 () Bool)

(declare-fun c!1440299 () Bool)

(assert (=> d!2350641 (= c!1440299 (is-Nil!73667 (t!388526 lt!2676813)))))

(declare-fun e!4630412 () (Set C!42234))

(assert (=> d!2350641 (= (content!15639 (t!388526 lt!2676813)) e!4630412)))

(declare-fun b!7828458 () Bool)

(assert (=> b!7828458 (= e!4630412 (as set.empty (Set C!42234)))))

(declare-fun b!7828459 () Bool)

(assert (=> b!7828459 (= e!4630412 (set.union (set.insert (h!80115 (t!388526 lt!2676813)) (as set.empty (Set C!42234))) (content!15639 (t!388526 (t!388526 lt!2676813)))))))

(assert (= (and d!2350641 c!1440299) b!7828458))

(assert (= (and d!2350641 (not c!1440299)) b!7828459))

(declare-fun m!8247912 () Bool)

(assert (=> b!7828459 m!8247912))

(declare-fun m!8247914 () Bool)

(assert (=> b!7828459 m!8247914))

(assert (=> b!7827782 d!2350641))

(declare-fun d!2350643 () Bool)

(assert (=> d!2350643 (= (head!15987 (tail!15528 s1!4101)) (h!80115 (tail!15528 s1!4101)))))

(assert (=> b!7827636 d!2350643))

(declare-fun d!2350645 () Bool)

(assert (=> d!2350645 (= (nullable!9298 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))) (nullableFct!3667 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))

(declare-fun bs!1966791 () Bool)

(assert (= bs!1966791 d!2350645))

(declare-fun m!8247916 () Bool)

(assert (=> bs!1966791 m!8247916))

(assert (=> b!7827725 d!2350645))

(assert (=> bm!725982 d!2350449))

(assert (=> d!2350527 d!2350487))

(declare-fun b!7828460 () Bool)

(declare-fun e!4630418 () Bool)

(declare-fun e!4630415 () Bool)

(assert (=> b!7828460 (= e!4630418 e!4630415)))

(declare-fun res!3114656 () Bool)

(assert (=> b!7828460 (=> (not res!3114656) (not e!4630415))))

(declare-fun call!726052 () Bool)

(assert (=> b!7828460 (= res!3114656 call!726052)))

(declare-fun b!7828462 () Bool)

(declare-fun call!726053 () Bool)

(assert (=> b!7828462 (= e!4630415 call!726053)))

(declare-fun b!7828463 () Bool)

(declare-fun res!3114659 () Bool)

(declare-fun e!4630416 () Bool)

(assert (=> b!7828463 (=> (not res!3114659) (not e!4630416))))

(assert (=> b!7828463 (= res!3114659 call!726053)))

(declare-fun e!4630419 () Bool)

(assert (=> b!7828463 (= e!4630419 e!4630416)))

(declare-fun b!7828464 () Bool)

(declare-fun e!4630414 () Bool)

(declare-fun e!4630417 () Bool)

(assert (=> b!7828464 (= e!4630414 e!4630417)))

(declare-fun c!1440301 () Bool)

(assert (=> b!7828464 (= c!1440301 (is-Star!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(declare-fun b!7828465 () Bool)

(declare-fun e!4630413 () Bool)

(declare-fun call!726051 () Bool)

(assert (=> b!7828465 (= e!4630413 call!726051)))

(declare-fun b!7828466 () Bool)

(assert (=> b!7828466 (= e!4630417 e!4630413)))

(declare-fun res!3114658 () Bool)

(assert (=> b!7828466 (= res!3114658 (not (nullable!9298 (reg!21283 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))))

(assert (=> b!7828466 (=> (not res!3114658) (not e!4630413))))

(declare-fun bm!726046 () Bool)

(assert (=> bm!726046 (= call!726053 call!726051)))

(declare-fun c!1440300 () Bool)

(declare-fun bm!726047 () Bool)

(assert (=> bm!726047 (= call!726052 (validRegex!11368 (ite c!1440300 (regTwo!42421 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) (regOne!42420 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))))

(declare-fun bm!726048 () Bool)

(assert (=> bm!726048 (= call!726051 (validRegex!11368 (ite c!1440301 (reg!21283 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) (ite c!1440300 (regOne!42421 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) (regTwo!42420 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))))))))

(declare-fun d!2350647 () Bool)

(declare-fun res!3114657 () Bool)

(assert (=> d!2350647 (=> res!3114657 e!4630414)))

(assert (=> d!2350647 (= res!3114657 (is-ElementMatch!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(assert (=> d!2350647 (= (validRegex!11368 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) e!4630414)))

(declare-fun b!7828461 () Bool)

(assert (=> b!7828461 (= e!4630416 call!726052)))

(declare-fun b!7828467 () Bool)

(declare-fun res!3114655 () Bool)

(assert (=> b!7828467 (=> res!3114655 e!4630418)))

(assert (=> b!7828467 (= res!3114655 (not (is-Concat!29799 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))))))

(assert (=> b!7828467 (= e!4630419 e!4630418)))

(declare-fun b!7828468 () Bool)

(assert (=> b!7828468 (= e!4630417 e!4630419)))

(assert (=> b!7828468 (= c!1440300 (is-Union!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(assert (= (and d!2350647 (not res!3114657)) b!7828464))

(assert (= (and b!7828464 c!1440301) b!7828466))

(assert (= (and b!7828464 (not c!1440301)) b!7828468))

(assert (= (and b!7828466 res!3114658) b!7828465))

(assert (= (and b!7828468 c!1440300) b!7828463))

(assert (= (and b!7828468 (not c!1440300)) b!7828467))

(assert (= (and b!7828463 res!3114659) b!7828461))

(assert (= (and b!7828467 (not res!3114655)) b!7828460))

(assert (= (and b!7828460 res!3114656) b!7828462))

(assert (= (or b!7828461 b!7828460) bm!726047))

(assert (= (or b!7828463 b!7828462) bm!726046))

(assert (= (or b!7828465 bm!726046) bm!726048))

(declare-fun m!8247918 () Bool)

(assert (=> b!7828466 m!8247918))

(declare-fun m!8247920 () Bool)

(assert (=> bm!726047 m!8247920))

(declare-fun m!8247922 () Bool)

(assert (=> bm!726048 m!8247922))

(assert (=> d!2350527 d!2350647))

(assert (=> b!7827796 d!2350633))

(declare-fun d!2350649 () Bool)

(assert (=> d!2350649 (= (isEmpty!42286 (tail!15528 (tail!15528 s1Rec!453))) (is-Nil!73667 (tail!15528 (tail!15528 s1Rec!453))))))

(assert (=> b!7827685 d!2350649))

(declare-fun d!2350651 () Bool)

(assert (=> d!2350651 (= (tail!15528 (tail!15528 s1Rec!453)) (t!388526 (tail!15528 s1Rec!453)))))

(assert (=> b!7827685 d!2350651))

(declare-fun b!7828469 () Bool)

(declare-fun e!4630425 () Bool)

(declare-fun e!4630422 () Bool)

(assert (=> b!7828469 (= e!4630425 e!4630422)))

(declare-fun res!3114661 () Bool)

(assert (=> b!7828469 (=> (not res!3114661) (not e!4630422))))

(declare-fun call!726055 () Bool)

(assert (=> b!7828469 (= res!3114661 call!726055)))

(declare-fun b!7828471 () Bool)

(declare-fun call!726056 () Bool)

(assert (=> b!7828471 (= e!4630422 call!726056)))

(declare-fun b!7828472 () Bool)

(declare-fun res!3114664 () Bool)

(declare-fun e!4630423 () Bool)

(assert (=> b!7828472 (=> (not res!3114664) (not e!4630423))))

(assert (=> b!7828472 (= res!3114664 call!726056)))

(declare-fun e!4630426 () Bool)

(assert (=> b!7828472 (= e!4630426 e!4630423)))

(declare-fun b!7828473 () Bool)

(declare-fun e!4630421 () Bool)

(declare-fun e!4630424 () Bool)

(assert (=> b!7828473 (= e!4630421 e!4630424)))

(declare-fun c!1440303 () Bool)

(assert (=> b!7828473 (= c!1440303 (is-Star!20954 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))

(declare-fun b!7828474 () Bool)

(declare-fun e!4630420 () Bool)

(declare-fun call!726054 () Bool)

(assert (=> b!7828474 (= e!4630420 call!726054)))

(declare-fun b!7828475 () Bool)

(assert (=> b!7828475 (= e!4630424 e!4630420)))

(declare-fun res!3114663 () Bool)

(assert (=> b!7828475 (= res!3114663 (not (nullable!9298 (reg!21283 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))))

(assert (=> b!7828475 (=> (not res!3114663) (not e!4630420))))

(declare-fun bm!726049 () Bool)

(assert (=> bm!726049 (= call!726056 call!726054)))

(declare-fun bm!726050 () Bool)

(declare-fun c!1440302 () Bool)

(assert (=> bm!726050 (= call!726055 (validRegex!11368 (ite c!1440302 (regTwo!42421 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))) (regOne!42420 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))))

(declare-fun bm!726051 () Bool)

(assert (=> bm!726051 (= call!726054 (validRegex!11368 (ite c!1440303 (reg!21283 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))) (ite c!1440302 (regOne!42421 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))) (regTwo!42420 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))))))

(declare-fun d!2350653 () Bool)

(declare-fun res!3114662 () Bool)

(assert (=> d!2350653 (=> res!3114662 e!4630421)))

(assert (=> d!2350653 (= res!3114662 (is-ElementMatch!20954 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))

(assert (=> d!2350653 (= (validRegex!11368 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))) e!4630421)))

(declare-fun b!7828470 () Bool)

(assert (=> b!7828470 (= e!4630423 call!726055)))

(declare-fun b!7828476 () Bool)

(declare-fun res!3114660 () Bool)

(assert (=> b!7828476 (=> res!3114660 e!4630425)))

(assert (=> b!7828476 (= res!3114660 (not (is-Concat!29799 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))))

(assert (=> b!7828476 (= e!4630426 e!4630425)))

(declare-fun b!7828477 () Bool)

(assert (=> b!7828477 (= e!4630424 e!4630426)))

(assert (=> b!7828477 (= c!1440302 (is-Union!20954 (ite c!1440194 (regTwo!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regOne!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))

(assert (= (and d!2350653 (not res!3114662)) b!7828473))

(assert (= (and b!7828473 c!1440303) b!7828475))

(assert (= (and b!7828473 (not c!1440303)) b!7828477))

(assert (= (and b!7828475 res!3114663) b!7828474))

(assert (= (and b!7828477 c!1440302) b!7828472))

(assert (= (and b!7828477 (not c!1440302)) b!7828476))

(assert (= (and b!7828472 res!3114664) b!7828470))

(assert (= (and b!7828476 (not res!3114660)) b!7828469))

(assert (= (and b!7828469 res!3114661) b!7828471))

(assert (= (or b!7828470 b!7828469) bm!726050))

(assert (= (or b!7828472 b!7828471) bm!726049))

(assert (= (or b!7828474 bm!726049) bm!726051))

(declare-fun m!8247924 () Bool)

(assert (=> b!7828475 m!8247924))

(declare-fun m!8247926 () Bool)

(assert (=> bm!726050 m!8247926))

(declare-fun m!8247928 () Bool)

(assert (=> bm!726051 m!8247928))

(assert (=> bm!725980 d!2350653))

(declare-fun b!7828478 () Bool)

(declare-fun e!4630429 () Regex!20954)

(declare-fun e!4630431 () Regex!20954)

(assert (=> b!7828478 (= e!4630429 e!4630431)))

(declare-fun c!1440306 () Bool)

(assert (=> b!7828478 (= c!1440306 (is-Star!20954 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))))

(declare-fun b!7828479 () Bool)

(declare-fun call!726058 () Regex!20954)

(declare-fun call!726059 () Regex!20954)

(assert (=> b!7828479 (= e!4630429 (Union!20954 call!726058 call!726059))))

(declare-fun bm!726052 () Bool)

(declare-fun c!1440304 () Bool)

(assert (=> bm!726052 (= call!726059 (derivativeStep!6257 (ite c!1440304 (regTwo!42421 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))) (regTwo!42420 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))))) (head!15987 s2Rec!453)))))

(declare-fun call!726060 () Regex!20954)

(declare-fun b!7828480 () Bool)

(declare-fun e!4630427 () Regex!20954)

(assert (=> b!7828480 (= e!4630427 (Union!20954 (Concat!29799 call!726060 (regTwo!42420 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))))) EmptyLang!20954))))

(declare-fun bm!726053 () Bool)

(declare-fun call!726057 () Regex!20954)

(assert (=> bm!726053 (= call!726060 call!726057)))

(declare-fun d!2350655 () Bool)

(declare-fun lt!2676869 () Regex!20954)

(assert (=> d!2350655 (validRegex!11368 lt!2676869)))

(declare-fun e!4630428 () Regex!20954)

(assert (=> d!2350655 (= lt!2676869 e!4630428)))

(declare-fun c!1440305 () Bool)

(assert (=> d!2350655 (= c!1440305 (or (is-EmptyExpr!20954 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))) (is-EmptyLang!20954 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))))))))

(assert (=> d!2350655 (validRegex!11368 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))))))

(assert (=> d!2350655 (= (derivativeStep!6257 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))) (head!15987 s2Rec!453)) lt!2676869)))

(declare-fun bm!726054 () Bool)

(assert (=> bm!726054 (= call!726058 (derivativeStep!6257 (ite c!1440304 (regOne!42421 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))) (ite c!1440306 (reg!21283 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))) (regOne!42420 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))) (head!15987 s2Rec!453)))))

(declare-fun b!7828481 () Bool)

(declare-fun e!4630430 () Regex!20954)

(assert (=> b!7828481 (= e!4630428 e!4630430)))

(declare-fun c!1440307 () Bool)

(assert (=> b!7828481 (= c!1440307 (is-ElementMatch!20954 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))))

(declare-fun b!7828482 () Bool)

(assert (=> b!7828482 (= e!4630430 (ite (= (head!15987 s2Rec!453) (c!1440089 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828483 () Bool)

(assert (=> b!7828483 (= e!4630427 (Union!20954 (Concat!29799 call!726060 (regTwo!42420 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))))) call!726059))))

(declare-fun b!7828484 () Bool)

(assert (=> b!7828484 (= e!4630428 EmptyLang!20954)))

(declare-fun b!7828485 () Bool)

(assert (=> b!7828485 (= e!4630431 (Concat!29799 call!726057 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))))

(declare-fun c!1440308 () Bool)

(declare-fun b!7828486 () Bool)

(assert (=> b!7828486 (= c!1440308 (nullable!9298 (regOne!42420 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199))))))))

(assert (=> b!7828486 (= e!4630431 e!4630427)))

(declare-fun bm!726055 () Bool)

(assert (=> bm!726055 (= call!726057 call!726058)))

(declare-fun b!7828487 () Bool)

(assert (=> b!7828487 (= c!1440304 (is-Union!20954 (ite c!1440199 (regOne!42421 r2!6199) (ite c!1440201 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))))

(assert (=> b!7828487 (= e!4630430 e!4630429)))

(assert (= (and d!2350655 c!1440305) b!7828484))

(assert (= (and d!2350655 (not c!1440305)) b!7828481))

(assert (= (and b!7828481 c!1440307) b!7828482))

(assert (= (and b!7828481 (not c!1440307)) b!7828487))

(assert (= (and b!7828487 c!1440304) b!7828479))

(assert (= (and b!7828487 (not c!1440304)) b!7828478))

(assert (= (and b!7828478 c!1440306) b!7828485))

(assert (= (and b!7828478 (not c!1440306)) b!7828486))

(assert (= (and b!7828486 c!1440308) b!7828483))

(assert (= (and b!7828486 (not c!1440308)) b!7828480))

(assert (= (or b!7828483 b!7828480) bm!726053))

(assert (= (or b!7828485 bm!726053) bm!726055))

(assert (= (or b!7828479 bm!726055) bm!726054))

(assert (= (or b!7828479 b!7828483) bm!726052))

(assert (=> bm!726052 m!8247414))

(declare-fun m!8247930 () Bool)

(assert (=> bm!726052 m!8247930))

(declare-fun m!8247932 () Bool)

(assert (=> d!2350655 m!8247932))

(declare-fun m!8247934 () Bool)

(assert (=> d!2350655 m!8247934))

(assert (=> bm!726054 m!8247414))

(declare-fun m!8247936 () Bool)

(assert (=> bm!726054 m!8247936))

(declare-fun m!8247938 () Bool)

(assert (=> b!7828486 m!8247938))

(assert (=> bm!725985 d!2350655))

(declare-fun d!2350657 () Bool)

(declare-fun lt!2676870 () Int)

(assert (=> d!2350657 (>= lt!2676870 0)))

(declare-fun e!4630432 () Int)

(assert (=> d!2350657 (= lt!2676870 e!4630432)))

(declare-fun c!1440309 () Bool)

(assert (=> d!2350657 (= c!1440309 (is-Nil!73667 (t!388526 s2!3721)))))

(assert (=> d!2350657 (= (size!42754 (t!388526 s2!3721)) lt!2676870)))

(declare-fun b!7828488 () Bool)

(assert (=> b!7828488 (= e!4630432 0)))

(declare-fun b!7828489 () Bool)

(assert (=> b!7828489 (= e!4630432 (+ 1 (size!42754 (t!388526 (t!388526 s2!3721)))))))

(assert (= (and d!2350657 c!1440309) b!7828488))

(assert (= (and d!2350657 (not c!1440309)) b!7828489))

(declare-fun m!8247940 () Bool)

(assert (=> b!7828489 m!8247940))

(assert (=> b!7827709 d!2350657))

(declare-fun d!2350659 () Bool)

(assert (=> d!2350659 (= (isEmpty!42286 (tail!15528 (tail!15528 s2Rec!453))) (is-Nil!73667 (tail!15528 (tail!15528 s2Rec!453))))))

(assert (=> b!7827737 d!2350659))

(declare-fun d!2350661 () Bool)

(assert (=> d!2350661 (= (tail!15528 (tail!15528 s2Rec!453)) (t!388526 (tail!15528 s2Rec!453)))))

(assert (=> b!7827737 d!2350661))

(declare-fun b!7828490 () Bool)

(declare-fun e!4630438 () Bool)

(declare-fun e!4630435 () Bool)

(assert (=> b!7828490 (= e!4630438 e!4630435)))

(declare-fun res!3114666 () Bool)

(assert (=> b!7828490 (=> (not res!3114666) (not e!4630435))))

(declare-fun call!726062 () Bool)

(assert (=> b!7828490 (= res!3114666 call!726062)))

(declare-fun b!7828492 () Bool)

(declare-fun call!726063 () Bool)

(assert (=> b!7828492 (= e!4630435 call!726063)))

(declare-fun b!7828493 () Bool)

(declare-fun res!3114669 () Bool)

(declare-fun e!4630436 () Bool)

(assert (=> b!7828493 (=> (not res!3114669) (not e!4630436))))

(assert (=> b!7828493 (= res!3114669 call!726063)))

(declare-fun e!4630439 () Bool)

(assert (=> b!7828493 (= e!4630439 e!4630436)))

(declare-fun b!7828494 () Bool)

(declare-fun e!4630434 () Bool)

(declare-fun e!4630437 () Bool)

(assert (=> b!7828494 (= e!4630434 e!4630437)))

(declare-fun c!1440311 () Bool)

(assert (=> b!7828494 (= c!1440311 (is-Star!20954 lt!2676841))))

(declare-fun b!7828495 () Bool)

(declare-fun e!4630433 () Bool)

(declare-fun call!726061 () Bool)

(assert (=> b!7828495 (= e!4630433 call!726061)))

(declare-fun b!7828496 () Bool)

(assert (=> b!7828496 (= e!4630437 e!4630433)))

(declare-fun res!3114668 () Bool)

(assert (=> b!7828496 (= res!3114668 (not (nullable!9298 (reg!21283 lt!2676841))))))

(assert (=> b!7828496 (=> (not res!3114668) (not e!4630433))))

(declare-fun bm!726056 () Bool)

(assert (=> bm!726056 (= call!726063 call!726061)))

(declare-fun bm!726057 () Bool)

(declare-fun c!1440310 () Bool)

(assert (=> bm!726057 (= call!726062 (validRegex!11368 (ite c!1440310 (regTwo!42421 lt!2676841) (regOne!42420 lt!2676841))))))

(declare-fun bm!726058 () Bool)

(assert (=> bm!726058 (= call!726061 (validRegex!11368 (ite c!1440311 (reg!21283 lt!2676841) (ite c!1440310 (regOne!42421 lt!2676841) (regTwo!42420 lt!2676841)))))))

(declare-fun d!2350663 () Bool)

(declare-fun res!3114667 () Bool)

(assert (=> d!2350663 (=> res!3114667 e!4630434)))

(assert (=> d!2350663 (= res!3114667 (is-ElementMatch!20954 lt!2676841))))

(assert (=> d!2350663 (= (validRegex!11368 lt!2676841) e!4630434)))

(declare-fun b!7828491 () Bool)

(assert (=> b!7828491 (= e!4630436 call!726062)))

(declare-fun b!7828497 () Bool)

(declare-fun res!3114665 () Bool)

(assert (=> b!7828497 (=> res!3114665 e!4630438)))

(assert (=> b!7828497 (= res!3114665 (not (is-Concat!29799 lt!2676841)))))

(assert (=> b!7828497 (= e!4630439 e!4630438)))

(declare-fun b!7828498 () Bool)

(assert (=> b!7828498 (= e!4630437 e!4630439)))

(assert (=> b!7828498 (= c!1440310 (is-Union!20954 lt!2676841))))

(assert (= (and d!2350663 (not res!3114667)) b!7828494))

(assert (= (and b!7828494 c!1440311) b!7828496))

(assert (= (and b!7828494 (not c!1440311)) b!7828498))

(assert (= (and b!7828496 res!3114668) b!7828495))

(assert (= (and b!7828498 c!1440310) b!7828493))

(assert (= (and b!7828498 (not c!1440310)) b!7828497))

(assert (= (and b!7828493 res!3114669) b!7828491))

(assert (= (and b!7828497 (not res!3114665)) b!7828490))

(assert (= (and b!7828490 res!3114666) b!7828492))

(assert (= (or b!7828491 b!7828490) bm!726057))

(assert (= (or b!7828493 b!7828492) bm!726056))

(assert (= (or b!7828495 bm!726056) bm!726058))

(declare-fun m!8247942 () Bool)

(assert (=> b!7828496 m!8247942))

(declare-fun m!8247944 () Bool)

(assert (=> bm!726057 m!8247944))

(declare-fun m!8247946 () Bool)

(assert (=> bm!726058 m!8247946))

(assert (=> d!2350495 d!2350663))

(assert (=> d!2350495 d!2350401))

(declare-fun d!2350665 () Bool)

(declare-fun lt!2676871 () Int)

(assert (=> d!2350665 (>= lt!2676871 0)))

(declare-fun e!4630440 () Int)

(assert (=> d!2350665 (= lt!2676871 e!4630440)))

(declare-fun c!1440312 () Bool)

(assert (=> d!2350665 (= c!1440312 (is-Nil!73667 (t!388526 s2Rec!453)))))

(assert (=> d!2350665 (= (size!42754 (t!388526 s2Rec!453)) lt!2676871)))

(declare-fun b!7828499 () Bool)

(assert (=> b!7828499 (= e!4630440 0)))

(declare-fun b!7828500 () Bool)

(assert (=> b!7828500 (= e!4630440 (+ 1 (size!42754 (t!388526 (t!388526 s2Rec!453)))))))

(assert (= (and d!2350665 c!1440312) b!7828499))

(assert (= (and d!2350665 (not c!1440312)) b!7828500))

(declare-fun m!8247948 () Bool)

(assert (=> b!7828500 m!8247948))

(assert (=> b!7827635 d!2350665))

(assert (=> bm!725958 d!2350509))

(declare-fun b!7828501 () Bool)

(declare-fun e!4630446 () Bool)

(declare-fun e!4630443 () Bool)

(assert (=> b!7828501 (= e!4630446 e!4630443)))

(declare-fun res!3114671 () Bool)

(assert (=> b!7828501 (=> (not res!3114671) (not e!4630443))))

(declare-fun call!726065 () Bool)

(assert (=> b!7828501 (= res!3114671 call!726065)))

(declare-fun b!7828503 () Bool)

(declare-fun call!726066 () Bool)

(assert (=> b!7828503 (= e!4630443 call!726066)))

(declare-fun b!7828504 () Bool)

(declare-fun res!3114674 () Bool)

(declare-fun e!4630444 () Bool)

(assert (=> b!7828504 (=> (not res!3114674) (not e!4630444))))

(assert (=> b!7828504 (= res!3114674 call!726066)))

(declare-fun e!4630447 () Bool)

(assert (=> b!7828504 (= e!4630447 e!4630444)))

(declare-fun b!7828505 () Bool)

(declare-fun e!4630442 () Bool)

(declare-fun e!4630445 () Bool)

(assert (=> b!7828505 (= e!4630442 e!4630445)))

(declare-fun c!1440314 () Bool)

(assert (=> b!7828505 (= c!1440314 (is-Star!20954 lt!2676834))))

(declare-fun b!7828506 () Bool)

(declare-fun e!4630441 () Bool)

(declare-fun call!726064 () Bool)

(assert (=> b!7828506 (= e!4630441 call!726064)))

(declare-fun b!7828507 () Bool)

(assert (=> b!7828507 (= e!4630445 e!4630441)))

(declare-fun res!3114673 () Bool)

(assert (=> b!7828507 (= res!3114673 (not (nullable!9298 (reg!21283 lt!2676834))))))

(assert (=> b!7828507 (=> (not res!3114673) (not e!4630441))))

(declare-fun bm!726059 () Bool)

(assert (=> bm!726059 (= call!726066 call!726064)))

(declare-fun bm!726060 () Bool)

(declare-fun c!1440313 () Bool)

(assert (=> bm!726060 (= call!726065 (validRegex!11368 (ite c!1440313 (regTwo!42421 lt!2676834) (regOne!42420 lt!2676834))))))

(declare-fun bm!726061 () Bool)

(assert (=> bm!726061 (= call!726064 (validRegex!11368 (ite c!1440314 (reg!21283 lt!2676834) (ite c!1440313 (regOne!42421 lt!2676834) (regTwo!42420 lt!2676834)))))))

(declare-fun d!2350667 () Bool)

(declare-fun res!3114672 () Bool)

(assert (=> d!2350667 (=> res!3114672 e!4630442)))

(assert (=> d!2350667 (= res!3114672 (is-ElementMatch!20954 lt!2676834))))

(assert (=> d!2350667 (= (validRegex!11368 lt!2676834) e!4630442)))

(declare-fun b!7828502 () Bool)

(assert (=> b!7828502 (= e!4630444 call!726065)))

(declare-fun b!7828508 () Bool)

(declare-fun res!3114670 () Bool)

(assert (=> b!7828508 (=> res!3114670 e!4630446)))

(assert (=> b!7828508 (= res!3114670 (not (is-Concat!29799 lt!2676834)))))

(assert (=> b!7828508 (= e!4630447 e!4630446)))

(declare-fun b!7828509 () Bool)

(assert (=> b!7828509 (= e!4630445 e!4630447)))

(assert (=> b!7828509 (= c!1440313 (is-Union!20954 lt!2676834))))

(assert (= (and d!2350667 (not res!3114672)) b!7828505))

(assert (= (and b!7828505 c!1440314) b!7828507))

(assert (= (and b!7828505 (not c!1440314)) b!7828509))

(assert (= (and b!7828507 res!3114673) b!7828506))

(assert (= (and b!7828509 c!1440313) b!7828504))

(assert (= (and b!7828509 (not c!1440313)) b!7828508))

(assert (= (and b!7828504 res!3114674) b!7828502))

(assert (= (and b!7828508 (not res!3114670)) b!7828501))

(assert (= (and b!7828501 res!3114671) b!7828503))

(assert (= (or b!7828502 b!7828501) bm!726060))

(assert (= (or b!7828504 b!7828503) bm!726059))

(assert (= (or b!7828506 bm!726059) bm!726061))

(declare-fun m!8247950 () Bool)

(assert (=> b!7828507 m!8247950))

(declare-fun m!8247952 () Bool)

(assert (=> bm!726060 m!8247952))

(declare-fun m!8247954 () Bool)

(assert (=> bm!726061 m!8247954))

(assert (=> d!2350455 d!2350667))

(assert (=> d!2350455 d!2350395))

(declare-fun d!2350669 () Bool)

(assert (=> d!2350669 (= (nullable!9298 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) (nullableFct!3667 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(declare-fun bs!1966792 () Bool)

(assert (= bs!1966792 d!2350669))

(assert (=> bs!1966792 m!8247444))

(declare-fun m!8247956 () Bool)

(assert (=> bs!1966792 m!8247956))

(assert (=> b!7827695 d!2350669))

(assert (=> b!7827731 d!2350659))

(assert (=> b!7827731 d!2350661))

(declare-fun d!2350671 () Bool)

(assert (=> d!2350671 (= (isEmpty!42286 (tail!15528 (tail!15528 s1!4101))) (is-Nil!73667 (tail!15528 (tail!15528 s1!4101))))))

(assert (=> b!7827645 d!2350671))

(declare-fun d!2350673 () Bool)

(assert (=> d!2350673 (= (tail!15528 (tail!15528 s1!4101)) (t!388526 (tail!15528 s1!4101)))))

(assert (=> b!7827645 d!2350673))

(declare-fun b!7828510 () Bool)

(declare-fun e!4630452 () Bool)

(declare-fun e!4630453 () Bool)

(assert (=> b!7828510 (= e!4630452 e!4630453)))

(declare-fun res!3114676 () Bool)

(declare-fun call!726068 () Bool)

(assert (=> b!7828510 (= res!3114676 call!726068)))

(assert (=> b!7828510 (=> (not res!3114676) (not e!4630453))))

(declare-fun b!7828511 () Bool)

(declare-fun e!4630449 () Bool)

(assert (=> b!7828511 (= e!4630449 e!4630452)))

(declare-fun c!1440315 () Bool)

(assert (=> b!7828511 (= c!1440315 (is-Union!20954 (reg!21283 r1!6261)))))

(declare-fun d!2350675 () Bool)

(declare-fun res!3114675 () Bool)

(declare-fun e!4630451 () Bool)

(assert (=> d!2350675 (=> res!3114675 e!4630451)))

(assert (=> d!2350675 (= res!3114675 (is-EmptyExpr!20954 (reg!21283 r1!6261)))))

(assert (=> d!2350675 (= (nullableFct!3667 (reg!21283 r1!6261)) e!4630451)))

(declare-fun bm!726062 () Bool)

(declare-fun call!726067 () Bool)

(assert (=> bm!726062 (= call!726067 (nullable!9298 (ite c!1440315 (regTwo!42421 (reg!21283 r1!6261)) (regTwo!42420 (reg!21283 r1!6261)))))))

(declare-fun bm!726063 () Bool)

(assert (=> bm!726063 (= call!726068 (nullable!9298 (ite c!1440315 (regOne!42421 (reg!21283 r1!6261)) (regOne!42420 (reg!21283 r1!6261)))))))

(declare-fun b!7828512 () Bool)

(declare-fun e!4630448 () Bool)

(assert (=> b!7828512 (= e!4630452 e!4630448)))

(declare-fun res!3114678 () Bool)

(assert (=> b!7828512 (= res!3114678 call!726068)))

(assert (=> b!7828512 (=> res!3114678 e!4630448)))

(declare-fun b!7828513 () Bool)

(assert (=> b!7828513 (= e!4630448 call!726067)))

(declare-fun b!7828514 () Bool)

(declare-fun e!4630450 () Bool)

(assert (=> b!7828514 (= e!4630450 e!4630449)))

(declare-fun res!3114679 () Bool)

(assert (=> b!7828514 (=> res!3114679 e!4630449)))

(assert (=> b!7828514 (= res!3114679 (is-Star!20954 (reg!21283 r1!6261)))))

(declare-fun b!7828515 () Bool)

(assert (=> b!7828515 (= e!4630453 call!726067)))

(declare-fun b!7828516 () Bool)

(assert (=> b!7828516 (= e!4630451 e!4630450)))

(declare-fun res!3114677 () Bool)

(assert (=> b!7828516 (=> (not res!3114677) (not e!4630450))))

(assert (=> b!7828516 (= res!3114677 (and (not (is-EmptyLang!20954 (reg!21283 r1!6261))) (not (is-ElementMatch!20954 (reg!21283 r1!6261)))))))

(assert (= (and d!2350675 (not res!3114675)) b!7828516))

(assert (= (and b!7828516 res!3114677) b!7828514))

(assert (= (and b!7828514 (not res!3114679)) b!7828511))

(assert (= (and b!7828511 c!1440315) b!7828512))

(assert (= (and b!7828511 (not c!1440315)) b!7828510))

(assert (= (and b!7828512 (not res!3114678)) b!7828513))

(assert (= (and b!7828510 res!3114676) b!7828515))

(assert (= (or b!7828513 b!7828515) bm!726062))

(assert (= (or b!7828512 b!7828510) bm!726063))

(declare-fun m!8247958 () Bool)

(assert (=> bm!726062 m!8247958))

(declare-fun m!8247960 () Bool)

(assert (=> bm!726063 m!8247960))

(assert (=> d!2350481 d!2350675))

(assert (=> b!7827818 d!2350639))

(declare-fun d!2350677 () Bool)

(declare-fun c!1440316 () Bool)

(assert (=> d!2350677 (= c!1440316 (is-Nil!73667 (t!388526 s2!3721)))))

(declare-fun e!4630454 () (Set C!42234))

(assert (=> d!2350677 (= (content!15639 (t!388526 s2!3721)) e!4630454)))

(declare-fun b!7828517 () Bool)

(assert (=> b!7828517 (= e!4630454 (as set.empty (Set C!42234)))))

(declare-fun b!7828518 () Bool)

(assert (=> b!7828518 (= e!4630454 (set.union (set.insert (h!80115 (t!388526 s2!3721)) (as set.empty (Set C!42234))) (content!15639 (t!388526 (t!388526 s2!3721)))))))

(assert (= (and d!2350677 c!1440316) b!7828517))

(assert (= (and d!2350677 (not c!1440316)) b!7828518))

(declare-fun m!8247962 () Bool)

(assert (=> b!7828518 m!8247962))

(declare-fun m!8247964 () Bool)

(assert (=> b!7828518 m!8247964))

(assert (=> b!7827761 d!2350677))

(declare-fun b!7828519 () Bool)

(declare-fun e!4630460 () Bool)

(declare-fun e!4630457 () Bool)

(assert (=> b!7828519 (= e!4630460 e!4630457)))

(declare-fun res!3114681 () Bool)

(assert (=> b!7828519 (=> (not res!3114681) (not e!4630457))))

(declare-fun call!726070 () Bool)

(assert (=> b!7828519 (= res!3114681 call!726070)))

(declare-fun b!7828521 () Bool)

(declare-fun call!726071 () Bool)

(assert (=> b!7828521 (= e!4630457 call!726071)))

(declare-fun b!7828522 () Bool)

(declare-fun res!3114684 () Bool)

(declare-fun e!4630458 () Bool)

(assert (=> b!7828522 (=> (not res!3114684) (not e!4630458))))

(assert (=> b!7828522 (= res!3114684 call!726071)))

(declare-fun e!4630461 () Bool)

(assert (=> b!7828522 (= e!4630461 e!4630458)))

(declare-fun b!7828523 () Bool)

(declare-fun e!4630456 () Bool)

(declare-fun e!4630459 () Bool)

(assert (=> b!7828523 (= e!4630456 e!4630459)))

(declare-fun c!1440318 () Bool)

(assert (=> b!7828523 (= c!1440318 (is-Star!20954 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))

(declare-fun b!7828524 () Bool)

(declare-fun e!4630455 () Bool)

(declare-fun call!726069 () Bool)

(assert (=> b!7828524 (= e!4630455 call!726069)))

(declare-fun b!7828525 () Bool)

(assert (=> b!7828525 (= e!4630459 e!4630455)))

(declare-fun res!3114683 () Bool)

(assert (=> b!7828525 (= res!3114683 (not (nullable!9298 (reg!21283 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))))

(assert (=> b!7828525 (=> (not res!3114683) (not e!4630455))))

(declare-fun bm!726064 () Bool)

(assert (=> bm!726064 (= call!726071 call!726069)))

(declare-fun c!1440317 () Bool)

(declare-fun bm!726065 () Bool)

(assert (=> bm!726065 (= call!726070 (validRegex!11368 (ite c!1440317 (regTwo!42421 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))) (regOne!42420 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))))

(declare-fun bm!726066 () Bool)

(assert (=> bm!726066 (= call!726069 (validRegex!11368 (ite c!1440318 (reg!21283 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))) (ite c!1440317 (regOne!42421 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))) (regTwo!42420 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))))))

(declare-fun d!2350679 () Bool)

(declare-fun res!3114682 () Bool)

(assert (=> d!2350679 (=> res!3114682 e!4630456)))

(assert (=> d!2350679 (= res!3114682 (is-ElementMatch!20954 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))

(assert (=> d!2350679 (= (validRegex!11368 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))) e!4630456)))

(declare-fun b!7828520 () Bool)

(assert (=> b!7828520 (= e!4630458 call!726070)))

(declare-fun b!7828526 () Bool)

(declare-fun res!3114680 () Bool)

(assert (=> b!7828526 (=> res!3114680 e!4630460)))

(assert (=> b!7828526 (= res!3114680 (not (is-Concat!29799 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))))

(assert (=> b!7828526 (= e!4630461 e!4630460)))

(declare-fun b!7828527 () Bool)

(assert (=> b!7828527 (= e!4630459 e!4630461)))

(assert (=> b!7828527 (= c!1440317 (is-Union!20954 (ite c!1440211 (regTwo!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regOne!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))

(assert (= (and d!2350679 (not res!3114682)) b!7828523))

(assert (= (and b!7828523 c!1440318) b!7828525))

(assert (= (and b!7828523 (not c!1440318)) b!7828527))

(assert (= (and b!7828525 res!3114683) b!7828524))

(assert (= (and b!7828527 c!1440317) b!7828522))

(assert (= (and b!7828527 (not c!1440317)) b!7828526))

(assert (= (and b!7828522 res!3114684) b!7828520))

(assert (= (and b!7828526 (not res!3114680)) b!7828519))

(assert (= (and b!7828519 res!3114681) b!7828521))

(assert (= (or b!7828520 b!7828519) bm!726065))

(assert (= (or b!7828522 b!7828521) bm!726064))

(assert (= (or b!7828524 bm!726064) bm!726066))

(declare-fun m!8247966 () Bool)

(assert (=> b!7828525 m!8247966))

(declare-fun m!8247968 () Bool)

(assert (=> bm!726065 m!8247968))

(declare-fun m!8247970 () Bool)

(assert (=> bm!726066 m!8247970))

(assert (=> bm!725988 d!2350679))

(assert (=> bm!725993 d!2350487))

(declare-fun lt!2676872 () List!73791)

(declare-fun e!4630463 () Bool)

(declare-fun b!7828531 () Bool)

(assert (=> b!7828531 (= e!4630463 (or (not (= s2Rec!453 Nil!73667)) (= lt!2676872 (t!388526 (t!388526 s1Rec!453)))))))

(declare-fun b!7828530 () Bool)

(declare-fun res!3114686 () Bool)

(assert (=> b!7828530 (=> (not res!3114686) (not e!4630463))))

(assert (=> b!7828530 (= res!3114686 (= (size!42754 lt!2676872) (+ (size!42754 (t!388526 (t!388526 s1Rec!453))) (size!42754 s2Rec!453))))))

(declare-fun b!7828529 () Bool)

(declare-fun e!4630462 () List!73791)

(assert (=> b!7828529 (= e!4630462 (Cons!73667 (h!80115 (t!388526 (t!388526 s1Rec!453))) (++!17988 (t!388526 (t!388526 (t!388526 s1Rec!453))) s2Rec!453)))))

(declare-fun d!2350681 () Bool)

(assert (=> d!2350681 e!4630463))

(declare-fun res!3114685 () Bool)

(assert (=> d!2350681 (=> (not res!3114685) (not e!4630463))))

(assert (=> d!2350681 (= res!3114685 (= (content!15639 lt!2676872) (set.union (content!15639 (t!388526 (t!388526 s1Rec!453))) (content!15639 s2Rec!453))))))

(assert (=> d!2350681 (= lt!2676872 e!4630462)))

(declare-fun c!1440319 () Bool)

(assert (=> d!2350681 (= c!1440319 (is-Nil!73667 (t!388526 (t!388526 s1Rec!453))))))

(assert (=> d!2350681 (= (++!17988 (t!388526 (t!388526 s1Rec!453)) s2Rec!453) lt!2676872)))

(declare-fun b!7828528 () Bool)

(assert (=> b!7828528 (= e!4630462 s2Rec!453)))

(assert (= (and d!2350681 c!1440319) b!7828528))

(assert (= (and d!2350681 (not c!1440319)) b!7828529))

(assert (= (and d!2350681 res!3114685) b!7828530))

(assert (= (and b!7828530 res!3114686) b!7828531))

(declare-fun m!8247972 () Bool)

(assert (=> b!7828530 m!8247972))

(assert (=> b!7828530 m!8247662))

(assert (=> b!7828530 m!8247470))

(declare-fun m!8247974 () Bool)

(assert (=> b!7828529 m!8247974))

(declare-fun m!8247976 () Bool)

(assert (=> d!2350681 m!8247976))

(declare-fun m!8247978 () Bool)

(assert (=> d!2350681 m!8247978))

(assert (=> d!2350681 m!8247478))

(assert (=> b!7827765 d!2350681))

(declare-fun b!7828532 () Bool)

(declare-fun e!4630469 () Bool)

(declare-fun e!4630466 () Bool)

(assert (=> b!7828532 (= e!4630469 e!4630466)))

(declare-fun res!3114688 () Bool)

(assert (=> b!7828532 (=> (not res!3114688) (not e!4630466))))

(declare-fun call!726073 () Bool)

(assert (=> b!7828532 (= res!3114688 call!726073)))

(declare-fun b!7828534 () Bool)

(declare-fun call!726074 () Bool)

(assert (=> b!7828534 (= e!4630466 call!726074)))

(declare-fun b!7828535 () Bool)

(declare-fun res!3114691 () Bool)

(declare-fun e!4630467 () Bool)

(assert (=> b!7828535 (=> (not res!3114691) (not e!4630467))))

(assert (=> b!7828535 (= res!3114691 call!726074)))

(declare-fun e!4630470 () Bool)

(assert (=> b!7828535 (= e!4630470 e!4630467)))

(declare-fun b!7828536 () Bool)

(declare-fun e!4630465 () Bool)

(declare-fun e!4630468 () Bool)

(assert (=> b!7828536 (= e!4630465 e!4630468)))

(declare-fun c!1440321 () Bool)

(assert (=> b!7828536 (= c!1440321 (is-Star!20954 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))))

(declare-fun b!7828537 () Bool)

(declare-fun e!4630464 () Bool)

(declare-fun call!726072 () Bool)

(assert (=> b!7828537 (= e!4630464 call!726072)))

(declare-fun b!7828538 () Bool)

(assert (=> b!7828538 (= e!4630468 e!4630464)))

(declare-fun res!3114690 () Bool)

(assert (=> b!7828538 (= res!3114690 (not (nullable!9298 (reg!21283 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))))))

(assert (=> b!7828538 (=> (not res!3114690) (not e!4630464))))

(declare-fun bm!726067 () Bool)

(assert (=> bm!726067 (= call!726074 call!726072)))

(declare-fun c!1440320 () Bool)

(declare-fun bm!726068 () Bool)

(assert (=> bm!726068 (= call!726073 (validRegex!11368 (ite c!1440320 (regTwo!42421 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))) (regOne!42420 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))))))

(declare-fun bm!726069 () Bool)

(assert (=> bm!726069 (= call!726072 (validRegex!11368 (ite c!1440321 (reg!21283 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))) (ite c!1440320 (regOne!42421 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))) (regTwo!42420 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))))))

(declare-fun d!2350683 () Bool)

(declare-fun res!3114689 () Bool)

(assert (=> d!2350683 (=> res!3114689 e!4630465)))

(assert (=> d!2350683 (= res!3114689 (is-ElementMatch!20954 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))))

(assert (=> d!2350683 (= (validRegex!11368 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))) e!4630465)))

(declare-fun b!7828533 () Bool)

(assert (=> b!7828533 (= e!4630467 call!726073)))

(declare-fun b!7828539 () Bool)

(declare-fun res!3114687 () Bool)

(assert (=> b!7828539 (=> res!3114687 e!4630469)))

(assert (=> b!7828539 (= res!3114687 (not (is-Concat!29799 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))))

(assert (=> b!7828539 (= e!4630470 e!4630469)))

(declare-fun b!7828540 () Bool)

(assert (=> b!7828540 (= e!4630468 e!4630470)))

(assert (=> b!7828540 (= c!1440320 (is-Union!20954 (ite c!1440218 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (ite c!1440217 (regOne!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regTwo!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))))

(assert (= (and d!2350683 (not res!3114689)) b!7828536))

(assert (= (and b!7828536 c!1440321) b!7828538))

(assert (= (and b!7828536 (not c!1440321)) b!7828540))

(assert (= (and b!7828538 res!3114690) b!7828537))

(assert (= (and b!7828540 c!1440320) b!7828535))

(assert (= (and b!7828540 (not c!1440320)) b!7828539))

(assert (= (and b!7828535 res!3114691) b!7828533))

(assert (= (and b!7828539 (not res!3114687)) b!7828532))

(assert (= (and b!7828532 res!3114688) b!7828534))

(assert (= (or b!7828533 b!7828532) bm!726068))

(assert (= (or b!7828535 b!7828534) bm!726067))

(assert (= (or b!7828537 bm!726067) bm!726069))

(declare-fun m!8247980 () Bool)

(assert (=> b!7828538 m!8247980))

(declare-fun m!8247982 () Bool)

(assert (=> bm!726068 m!8247982))

(declare-fun m!8247984 () Bool)

(assert (=> bm!726069 m!8247984))

(assert (=> bm!725992 d!2350683))

(declare-fun b!7828541 () Bool)

(declare-fun e!4630473 () Regex!20954)

(declare-fun e!4630475 () Regex!20954)

(assert (=> b!7828541 (= e!4630473 e!4630475)))

(declare-fun c!1440324 () Bool)

(assert (=> b!7828541 (= c!1440324 (is-Star!20954 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(declare-fun b!7828542 () Bool)

(declare-fun call!726076 () Regex!20954)

(declare-fun call!726077 () Regex!20954)

(assert (=> b!7828542 (= e!4630473 (Union!20954 call!726076 call!726077))))

(declare-fun c!1440322 () Bool)

(declare-fun bm!726070 () Bool)

(assert (=> bm!726070 (= call!726077 (derivativeStep!6257 (ite c!1440322 (regTwo!42421 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))) (regTwo!42420 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))) (head!15987 s1!4101)))))

(declare-fun e!4630471 () Regex!20954)

(declare-fun b!7828543 () Bool)

(declare-fun call!726078 () Regex!20954)

(assert (=> b!7828543 (= e!4630471 (Union!20954 (Concat!29799 call!726078 (regTwo!42420 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))) EmptyLang!20954))))

(declare-fun bm!726071 () Bool)

(declare-fun call!726075 () Regex!20954)

(assert (=> bm!726071 (= call!726078 call!726075)))

(declare-fun d!2350685 () Bool)

(declare-fun lt!2676873 () Regex!20954)

(assert (=> d!2350685 (validRegex!11368 lt!2676873)))

(declare-fun e!4630472 () Regex!20954)

(assert (=> d!2350685 (= lt!2676873 e!4630472)))

(declare-fun c!1440323 () Bool)

(assert (=> d!2350685 (= c!1440323 (or (is-EmptyExpr!20954 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))) (is-EmptyLang!20954 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))))))

(assert (=> d!2350685 (validRegex!11368 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))))

(assert (=> d!2350685 (= (derivativeStep!6257 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)) (head!15987 s1!4101)) lt!2676873)))

(declare-fun bm!726072 () Bool)

(assert (=> bm!726072 (= call!726076 (derivativeStep!6257 (ite c!1440322 (regOne!42421 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))) (ite c!1440324 (reg!21283 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))) (regOne!42420 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))) (head!15987 s1!4101)))))

(declare-fun b!7828544 () Bool)

(declare-fun e!4630474 () Regex!20954)

(assert (=> b!7828544 (= e!4630472 e!4630474)))

(declare-fun c!1440325 () Bool)

(assert (=> b!7828544 (= c!1440325 (is-ElementMatch!20954 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(declare-fun b!7828545 () Bool)

(assert (=> b!7828545 (= e!4630474 (ite (= (head!15987 s1!4101) (c!1440089 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828546 () Bool)

(assert (=> b!7828546 (= e!4630471 (Union!20954 (Concat!29799 call!726078 (regTwo!42420 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))) call!726077))))

(declare-fun b!7828547 () Bool)

(assert (=> b!7828547 (= e!4630472 EmptyLang!20954)))

(declare-fun b!7828548 () Bool)

(assert (=> b!7828548 (= e!4630475 (Concat!29799 call!726075 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(declare-fun b!7828549 () Bool)

(declare-fun c!1440326 () Bool)

(assert (=> b!7828549 (= c!1440326 (nullable!9298 (regOne!42420 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))))))

(assert (=> b!7828549 (= e!4630475 e!4630471)))

(declare-fun bm!726073 () Bool)

(assert (=> bm!726073 (= call!726075 call!726076)))

(declare-fun b!7828550 () Bool)

(assert (=> b!7828550 (= c!1440322 (is-Union!20954 (ite c!1440176 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(assert (=> b!7828550 (= e!4630474 e!4630473)))

(assert (= (and d!2350685 c!1440323) b!7828547))

(assert (= (and d!2350685 (not c!1440323)) b!7828544))

(assert (= (and b!7828544 c!1440325) b!7828545))

(assert (= (and b!7828544 (not c!1440325)) b!7828550))

(assert (= (and b!7828550 c!1440322) b!7828542))

(assert (= (and b!7828550 (not c!1440322)) b!7828541))

(assert (= (and b!7828541 c!1440324) b!7828548))

(assert (= (and b!7828541 (not c!1440324)) b!7828549))

(assert (= (and b!7828549 c!1440326) b!7828546))

(assert (= (and b!7828549 (not c!1440326)) b!7828543))

(assert (= (or b!7828546 b!7828543) bm!726071))

(assert (= (or b!7828548 bm!726071) bm!726073))

(assert (= (or b!7828542 bm!726073) bm!726072))

(assert (= (or b!7828542 b!7828546) bm!726070))

(assert (=> bm!726070 m!8247400))

(declare-fun m!8247986 () Bool)

(assert (=> bm!726070 m!8247986))

(declare-fun m!8247988 () Bool)

(assert (=> d!2350685 m!8247988))

(declare-fun m!8247990 () Bool)

(assert (=> d!2350685 m!8247990))

(assert (=> bm!726072 m!8247400))

(declare-fun m!8247992 () Bool)

(assert (=> bm!726072 m!8247992))

(declare-fun m!8247994 () Bool)

(assert (=> b!7828549 m!8247994))

(assert (=> bm!725967 d!2350685))

(assert (=> b!7827639 d!2350671))

(assert (=> b!7827639 d!2350673))

(declare-fun d!2350687 () Bool)

(declare-fun lt!2676874 () Int)

(assert (=> d!2350687 (>= lt!2676874 0)))

(declare-fun e!4630476 () Int)

(assert (=> d!2350687 (= lt!2676874 e!4630476)))

(declare-fun c!1440327 () Bool)

(assert (=> d!2350687 (= c!1440327 (is-Nil!73667 (tail!15528 s1!4101)))))

(assert (=> d!2350687 (= (size!42754 (tail!15528 s1!4101)) lt!2676874)))

(declare-fun b!7828551 () Bool)

(assert (=> b!7828551 (= e!4630476 0)))

(declare-fun b!7828552 () Bool)

(assert (=> b!7828552 (= e!4630476 (+ 1 (size!42754 (t!388526 (tail!15528 s1!4101)))))))

(assert (= (and d!2350687 c!1440327) b!7828551))

(assert (= (and d!2350687 (not c!1440327)) b!7828552))

(declare-fun m!8247996 () Bool)

(assert (=> b!7828552 m!8247996))

(assert (=> b!7827825 d!2350687))

(declare-fun d!2350689 () Bool)

(declare-fun lt!2676875 () Int)

(assert (=> d!2350689 (>= lt!2676875 0)))

(declare-fun e!4630477 () Int)

(assert (=> d!2350689 (= lt!2676875 e!4630477)))

(declare-fun c!1440328 () Bool)

(assert (=> d!2350689 (= c!1440328 (is-Nil!73667 (tail!15528 s1Rec!453)))))

(assert (=> d!2350689 (= (size!42754 (tail!15528 s1Rec!453)) lt!2676875)))

(declare-fun b!7828553 () Bool)

(assert (=> b!7828553 (= e!4630477 0)))

(declare-fun b!7828554 () Bool)

(assert (=> b!7828554 (= e!4630477 (+ 1 (size!42754 (t!388526 (tail!15528 s1Rec!453)))))))

(assert (= (and d!2350689 c!1440328) b!7828553))

(assert (= (and d!2350689 (not c!1440328)) b!7828554))

(declare-fun m!8247998 () Bool)

(assert (=> b!7828554 m!8247998))

(assert (=> b!7827825 d!2350689))

(declare-fun b!7828555 () Bool)

(declare-fun e!4630480 () Regex!20954)

(declare-fun e!4630482 () Regex!20954)

(assert (=> b!7828555 (= e!4630480 e!4630482)))

(declare-fun c!1440331 () Bool)

(assert (=> b!7828555 (= c!1440331 (is-Star!20954 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))))

(declare-fun b!7828556 () Bool)

(declare-fun call!726080 () Regex!20954)

(declare-fun call!726081 () Regex!20954)

(assert (=> b!7828556 (= e!4630480 (Union!20954 call!726080 call!726081))))

(declare-fun bm!726074 () Bool)

(declare-fun c!1440329 () Bool)

(assert (=> bm!726074 (= call!726081 (derivativeStep!6257 (ite c!1440329 (regTwo!42421 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))) (regTwo!42420 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))))) (head!15987 s2!3721)))))

(declare-fun call!726082 () Regex!20954)

(declare-fun b!7828557 () Bool)

(declare-fun e!4630478 () Regex!20954)

(assert (=> b!7828557 (= e!4630478 (Union!20954 (Concat!29799 call!726082 (regTwo!42420 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))))) EmptyLang!20954))))

(declare-fun bm!726075 () Bool)

(declare-fun call!726079 () Regex!20954)

(assert (=> bm!726075 (= call!726082 call!726079)))

(declare-fun d!2350691 () Bool)

(declare-fun lt!2676876 () Regex!20954)

(assert (=> d!2350691 (validRegex!11368 lt!2676876)))

(declare-fun e!4630479 () Regex!20954)

(assert (=> d!2350691 (= lt!2676876 e!4630479)))

(declare-fun c!1440330 () Bool)

(assert (=> d!2350691 (= c!1440330 (or (is-EmptyExpr!20954 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))) (is-EmptyLang!20954 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))))))))

(assert (=> d!2350691 (validRegex!11368 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))))))

(assert (=> d!2350691 (= (derivativeStep!6257 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))) (head!15987 s2!3721)) lt!2676876)))

(declare-fun bm!726076 () Bool)

(assert (=> bm!726076 (= call!726080 (derivativeStep!6257 (ite c!1440329 (regOne!42421 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))) (ite c!1440331 (reg!21283 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))) (regOne!42420 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))) (head!15987 s2!3721)))))

(declare-fun b!7828558 () Bool)

(declare-fun e!4630481 () Regex!20954)

(assert (=> b!7828558 (= e!4630479 e!4630481)))

(declare-fun c!1440332 () Bool)

(assert (=> b!7828558 (= c!1440332 (is-ElementMatch!20954 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))))

(declare-fun b!7828559 () Bool)

(assert (=> b!7828559 (= e!4630481 (ite (= (head!15987 s2!3721) (c!1440089 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828560 () Bool)

(assert (=> b!7828560 (= e!4630478 (Union!20954 (Concat!29799 call!726082 (regTwo!42420 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))))) call!726081))))

(declare-fun b!7828561 () Bool)

(assert (=> b!7828561 (= e!4630479 EmptyLang!20954)))

(declare-fun b!7828562 () Bool)

(assert (=> b!7828562 (= e!4630482 (Concat!29799 call!726079 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))))

(declare-fun b!7828563 () Bool)

(declare-fun c!1440333 () Bool)

(assert (=> b!7828563 (= c!1440333 (nullable!9298 (regOne!42420 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199))))))))

(assert (=> b!7828563 (= e!4630482 e!4630478)))

(declare-fun bm!726077 () Bool)

(assert (=> bm!726077 (= call!726079 call!726080)))

(declare-fun b!7828564 () Bool)

(assert (=> b!7828564 (= c!1440329 (is-Union!20954 (ite c!1440222 (regOne!42421 r2!6199) (ite c!1440224 (reg!21283 r2!6199) (regOne!42420 r2!6199)))))))

(assert (=> b!7828564 (= e!4630481 e!4630480)))

(assert (= (and d!2350691 c!1440330) b!7828561))

(assert (= (and d!2350691 (not c!1440330)) b!7828558))

(assert (= (and b!7828558 c!1440332) b!7828559))

(assert (= (and b!7828558 (not c!1440332)) b!7828564))

(assert (= (and b!7828564 c!1440329) b!7828556))

(assert (= (and b!7828564 (not c!1440329)) b!7828555))

(assert (= (and b!7828555 c!1440331) b!7828562))

(assert (= (and b!7828555 (not c!1440331)) b!7828563))

(assert (= (and b!7828563 c!1440333) b!7828560))

(assert (= (and b!7828563 (not c!1440333)) b!7828557))

(assert (= (or b!7828560 b!7828557) bm!726075))

(assert (= (or b!7828562 bm!726075) bm!726077))

(assert (= (or b!7828556 bm!726077) bm!726076))

(assert (= (or b!7828556 b!7828560) bm!726074))

(assert (=> bm!726074 m!8247382))

(declare-fun m!8248000 () Bool)

(assert (=> bm!726074 m!8248000))

(declare-fun m!8248002 () Bool)

(assert (=> d!2350691 m!8248002))

(declare-fun m!8248004 () Bool)

(assert (=> d!2350691 m!8248004))

(assert (=> bm!726076 m!8247382))

(declare-fun m!8248006 () Bool)

(assert (=> bm!726076 m!8248006))

(declare-fun m!8248008 () Bool)

(assert (=> b!7828563 m!8248008))

(assert (=> bm!725996 d!2350691))

(declare-fun d!2350693 () Bool)

(assert (=> d!2350693 (= (nullable!9298 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))) (nullableFct!3667 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))

(declare-fun bs!1966793 () Bool)

(assert (= bs!1966793 d!2350693))

(declare-fun m!8248010 () Bool)

(assert (=> bs!1966793 m!8248010))

(assert (=> b!7827774 d!2350693))

(declare-fun d!2350695 () Bool)

(assert (=> d!2350695 (= (isEmpty!42286 (tail!15528 (tail!15528 s2!3721))) (is-Nil!73667 (tail!15528 (tail!15528 s2!3721))))))

(assert (=> b!7827805 d!2350695))

(declare-fun d!2350697 () Bool)

(assert (=> d!2350697 (= (tail!15528 (tail!15528 s2!3721)) (t!388526 (tail!15528 s2!3721)))))

(assert (=> b!7827805 d!2350697))

(declare-fun e!4630484 () Bool)

(declare-fun lt!2676877 () List!73791)

(declare-fun b!7828568 () Bool)

(assert (=> b!7828568 (= e!4630484 (or (not (= s2!3721 Nil!73667)) (= lt!2676877 (t!388526 (t!388526 s1!4101)))))))

(declare-fun b!7828567 () Bool)

(declare-fun res!3114693 () Bool)

(assert (=> b!7828567 (=> (not res!3114693) (not e!4630484))))

(assert (=> b!7828567 (= res!3114693 (= (size!42754 lt!2676877) (+ (size!42754 (t!388526 (t!388526 s1!4101))) (size!42754 s2!3721))))))

(declare-fun b!7828566 () Bool)

(declare-fun e!4630483 () List!73791)

(assert (=> b!7828566 (= e!4630483 (Cons!73667 (h!80115 (t!388526 (t!388526 s1!4101))) (++!17988 (t!388526 (t!388526 (t!388526 s1!4101))) s2!3721)))))

(declare-fun d!2350699 () Bool)

(assert (=> d!2350699 e!4630484))

(declare-fun res!3114692 () Bool)

(assert (=> d!2350699 (=> (not res!3114692) (not e!4630484))))

(assert (=> d!2350699 (= res!3114692 (= (content!15639 lt!2676877) (set.union (content!15639 (t!388526 (t!388526 s1!4101))) (content!15639 s2!3721))))))

(assert (=> d!2350699 (= lt!2676877 e!4630483)))

(declare-fun c!1440334 () Bool)

(assert (=> d!2350699 (= c!1440334 (is-Nil!73667 (t!388526 (t!388526 s1!4101))))))

(assert (=> d!2350699 (= (++!17988 (t!388526 (t!388526 s1!4101)) s2!3721) lt!2676877)))

(declare-fun b!7828565 () Bool)

(assert (=> b!7828565 (= e!4630483 s2!3721)))

(assert (= (and d!2350699 c!1440334) b!7828565))

(assert (= (and d!2350699 (not c!1440334)) b!7828566))

(assert (= (and d!2350699 res!3114692) b!7828567))

(assert (= (and b!7828567 res!3114693) b!7828568))

(declare-fun m!8248012 () Bool)

(assert (=> b!7828567 m!8248012))

(assert (=> b!7828567 m!8247722))

(assert (=> b!7828567 m!8247450))

(declare-fun m!8248014 () Bool)

(assert (=> b!7828566 m!8248014))

(declare-fun m!8248016 () Bool)

(assert (=> d!2350699 m!8248016))

(declare-fun m!8248018 () Bool)

(assert (=> d!2350699 m!8248018))

(assert (=> d!2350699 m!8247458))

(assert (=> b!7827778 d!2350699))

(declare-fun b!7828569 () Bool)

(declare-fun e!4630490 () Bool)

(declare-fun e!4630487 () Bool)

(assert (=> b!7828569 (= e!4630490 e!4630487)))

(declare-fun res!3114695 () Bool)

(assert (=> b!7828569 (=> (not res!3114695) (not e!4630487))))

(declare-fun call!726084 () Bool)

(assert (=> b!7828569 (= res!3114695 call!726084)))

(declare-fun b!7828571 () Bool)

(declare-fun call!726085 () Bool)

(assert (=> b!7828571 (= e!4630487 call!726085)))

(declare-fun b!7828572 () Bool)

(declare-fun res!3114698 () Bool)

(declare-fun e!4630488 () Bool)

(assert (=> b!7828572 (=> (not res!3114698) (not e!4630488))))

(assert (=> b!7828572 (= res!3114698 call!726085)))

(declare-fun e!4630491 () Bool)

(assert (=> b!7828572 (= e!4630491 e!4630488)))

(declare-fun b!7828573 () Bool)

(declare-fun e!4630486 () Bool)

(declare-fun e!4630489 () Bool)

(assert (=> b!7828573 (= e!4630486 e!4630489)))

(declare-fun c!1440336 () Bool)

(assert (=> b!7828573 (= c!1440336 (is-Star!20954 lt!2676846))))

(declare-fun b!7828574 () Bool)

(declare-fun e!4630485 () Bool)

(declare-fun call!726083 () Bool)

(assert (=> b!7828574 (= e!4630485 call!726083)))

(declare-fun b!7828575 () Bool)

(assert (=> b!7828575 (= e!4630489 e!4630485)))

(declare-fun res!3114697 () Bool)

(assert (=> b!7828575 (= res!3114697 (not (nullable!9298 (reg!21283 lt!2676846))))))

(assert (=> b!7828575 (=> (not res!3114697) (not e!4630485))))

(declare-fun bm!726078 () Bool)

(assert (=> bm!726078 (= call!726085 call!726083)))

(declare-fun bm!726079 () Bool)

(declare-fun c!1440335 () Bool)

(assert (=> bm!726079 (= call!726084 (validRegex!11368 (ite c!1440335 (regTwo!42421 lt!2676846) (regOne!42420 lt!2676846))))))

(declare-fun bm!726080 () Bool)

(assert (=> bm!726080 (= call!726083 (validRegex!11368 (ite c!1440336 (reg!21283 lt!2676846) (ite c!1440335 (regOne!42421 lt!2676846) (regTwo!42420 lt!2676846)))))))

(declare-fun d!2350701 () Bool)

(declare-fun res!3114696 () Bool)

(assert (=> d!2350701 (=> res!3114696 e!4630486)))

(assert (=> d!2350701 (= res!3114696 (is-ElementMatch!20954 lt!2676846))))

(assert (=> d!2350701 (= (validRegex!11368 lt!2676846) e!4630486)))

(declare-fun b!7828570 () Bool)

(assert (=> b!7828570 (= e!4630488 call!726084)))

(declare-fun b!7828576 () Bool)

(declare-fun res!3114694 () Bool)

(assert (=> b!7828576 (=> res!3114694 e!4630490)))

(assert (=> b!7828576 (= res!3114694 (not (is-Concat!29799 lt!2676846)))))

(assert (=> b!7828576 (= e!4630491 e!4630490)))

(declare-fun b!7828577 () Bool)

(assert (=> b!7828577 (= e!4630489 e!4630491)))

(assert (=> b!7828577 (= c!1440335 (is-Union!20954 lt!2676846))))

(assert (= (and d!2350701 (not res!3114696)) b!7828573))

(assert (= (and b!7828573 c!1440336) b!7828575))

(assert (= (and b!7828573 (not c!1440336)) b!7828577))

(assert (= (and b!7828575 res!3114697) b!7828574))

(assert (= (and b!7828577 c!1440335) b!7828572))

(assert (= (and b!7828577 (not c!1440335)) b!7828576))

(assert (= (and b!7828572 res!3114698) b!7828570))

(assert (= (and b!7828576 (not res!3114694)) b!7828569))

(assert (= (and b!7828569 res!3114695) b!7828571))

(assert (= (or b!7828570 b!7828569) bm!726079))

(assert (= (or b!7828572 b!7828571) bm!726078))

(assert (= (or b!7828574 bm!726078) bm!726080))

(declare-fun m!8248020 () Bool)

(assert (=> b!7828575 m!8248020))

(declare-fun m!8248022 () Bool)

(assert (=> bm!726079 m!8248022))

(declare-fun m!8248024 () Bool)

(assert (=> bm!726080 m!8248024))

(assert (=> d!2350529 d!2350701))

(assert (=> d!2350529 d!2350401))

(declare-fun b!7828578 () Bool)

(declare-fun e!4630493 () Bool)

(assert (=> b!7828578 (= e!4630493 (= (head!15987 (tail!15528 (tail!15528 s1Rec!453))) (c!1440089 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453))))))))

(declare-fun b!7828579 () Bool)

(declare-fun e!4630495 () Bool)

(declare-fun e!4630496 () Bool)

(assert (=> b!7828579 (= e!4630495 e!4630496)))

(declare-fun res!3114699 () Bool)

(assert (=> b!7828579 (=> (not res!3114699) (not e!4630496))))

(declare-fun lt!2676878 () Bool)

(assert (=> b!7828579 (= res!3114699 (not lt!2676878))))

(declare-fun b!7828580 () Bool)

(declare-fun e!4630498 () Bool)

(assert (=> b!7828580 (= e!4630498 (not (= (head!15987 (tail!15528 (tail!15528 s1Rec!453))) (c!1440089 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453)))))))))

(declare-fun b!7828581 () Bool)

(declare-fun res!3114700 () Bool)

(assert (=> b!7828581 (=> (not res!3114700) (not e!4630493))))

(assert (=> b!7828581 (= res!3114700 (isEmpty!42286 (tail!15528 (tail!15528 (tail!15528 s1Rec!453)))))))

(declare-fun b!7828582 () Bool)

(declare-fun e!4630497 () Bool)

(assert (=> b!7828582 (= e!4630497 (not lt!2676878))))

(declare-fun b!7828583 () Bool)

(declare-fun res!3114702 () Bool)

(assert (=> b!7828583 (=> res!3114702 e!4630495)))

(assert (=> b!7828583 (= res!3114702 e!4630493)))

(declare-fun res!3114706 () Bool)

(assert (=> b!7828583 (=> (not res!3114706) (not e!4630493))))

(assert (=> b!7828583 (= res!3114706 lt!2676878)))

(declare-fun b!7828584 () Bool)

(declare-fun res!3114703 () Bool)

(assert (=> b!7828584 (=> res!3114703 e!4630495)))

(assert (=> b!7828584 (= res!3114703 (not (is-ElementMatch!20954 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453))))))))

(assert (=> b!7828584 (= e!4630497 e!4630495)))

(declare-fun b!7828585 () Bool)

(declare-fun e!4630494 () Bool)

(declare-fun call!726086 () Bool)

(assert (=> b!7828585 (= e!4630494 (= lt!2676878 call!726086))))

(declare-fun b!7828586 () Bool)

(assert (=> b!7828586 (= e!4630496 e!4630498)))

(declare-fun res!3114701 () Bool)

(assert (=> b!7828586 (=> res!3114701 e!4630498)))

(assert (=> b!7828586 (= res!3114701 call!726086)))

(declare-fun b!7828587 () Bool)

(declare-fun res!3114705 () Bool)

(assert (=> b!7828587 (=> res!3114705 e!4630498)))

(assert (=> b!7828587 (= res!3114705 (not (isEmpty!42286 (tail!15528 (tail!15528 (tail!15528 s1Rec!453))))))))

(declare-fun b!7828588 () Bool)

(declare-fun e!4630492 () Bool)

(assert (=> b!7828588 (= e!4630492 (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453))) (head!15987 (tail!15528 (tail!15528 s1Rec!453)))) (tail!15528 (tail!15528 (tail!15528 s1Rec!453)))))))

(declare-fun d!2350703 () Bool)

(assert (=> d!2350703 e!4630494))

(declare-fun c!1440338 () Bool)

(assert (=> d!2350703 (= c!1440338 (is-EmptyExpr!20954 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453)))))))

(assert (=> d!2350703 (= lt!2676878 e!4630492)))

(declare-fun c!1440339 () Bool)

(assert (=> d!2350703 (= c!1440339 (isEmpty!42286 (tail!15528 (tail!15528 s1Rec!453))))))

(assert (=> d!2350703 (validRegex!11368 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453))))))

(assert (=> d!2350703 (= (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453))) (tail!15528 (tail!15528 s1Rec!453))) lt!2676878)))

(declare-fun bm!726081 () Bool)

(assert (=> bm!726081 (= call!726086 (isEmpty!42286 (tail!15528 (tail!15528 s1Rec!453))))))

(declare-fun b!7828589 () Bool)

(assert (=> b!7828589 (= e!4630494 e!4630497)))

(declare-fun c!1440337 () Bool)

(assert (=> b!7828589 (= c!1440337 (is-EmptyLang!20954 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453)))))))

(declare-fun b!7828590 () Bool)

(declare-fun res!3114704 () Bool)

(assert (=> b!7828590 (=> (not res!3114704) (not e!4630493))))

(assert (=> b!7828590 (= res!3114704 (not call!726086))))

(declare-fun b!7828591 () Bool)

(assert (=> b!7828591 (= e!4630492 (nullable!9298 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453)))))))

(assert (= (and d!2350703 c!1440339) b!7828591))

(assert (= (and d!2350703 (not c!1440339)) b!7828588))

(assert (= (and d!2350703 c!1440338) b!7828585))

(assert (= (and d!2350703 (not c!1440338)) b!7828589))

(assert (= (and b!7828589 c!1440337) b!7828582))

(assert (= (and b!7828589 (not c!1440337)) b!7828584))

(assert (= (and b!7828584 (not res!3114703)) b!7828583))

(assert (= (and b!7828583 res!3114706) b!7828590))

(assert (= (and b!7828590 res!3114704) b!7828581))

(assert (= (and b!7828581 res!3114700) b!7828578))

(assert (= (and b!7828583 (not res!3114702)) b!7828579))

(assert (= (and b!7828579 res!3114699) b!7828586))

(assert (= (and b!7828586 (not res!3114701)) b!7828587))

(assert (= (and b!7828587 (not res!3114705)) b!7828580))

(assert (= (or b!7828585 b!7828586 b!7828590) bm!726081))

(assert (=> b!7828587 m!8247588))

(declare-fun m!8248026 () Bool)

(assert (=> b!7828587 m!8248026))

(assert (=> b!7828587 m!8248026))

(declare-fun m!8248028 () Bool)

(assert (=> b!7828587 m!8248028))

(assert (=> b!7828578 m!8247588))

(declare-fun m!8248030 () Bool)

(assert (=> b!7828578 m!8248030))

(assert (=> d!2350703 m!8247588))

(assert (=> d!2350703 m!8247590))

(assert (=> d!2350703 m!8247598))

(declare-fun m!8248032 () Bool)

(assert (=> d!2350703 m!8248032))

(assert (=> b!7828591 m!8247598))

(declare-fun m!8248034 () Bool)

(assert (=> b!7828591 m!8248034))

(assert (=> bm!726081 m!8247588))

(assert (=> bm!726081 m!8247590))

(assert (=> b!7828581 m!8247588))

(assert (=> b!7828581 m!8248026))

(assert (=> b!7828581 m!8248026))

(assert (=> b!7828581 m!8248028))

(assert (=> b!7828580 m!8247588))

(assert (=> b!7828580 m!8248030))

(assert (=> b!7828588 m!8247588))

(assert (=> b!7828588 m!8248030))

(assert (=> b!7828588 m!8247598))

(assert (=> b!7828588 m!8248030))

(declare-fun m!8248036 () Bool)

(assert (=> b!7828588 m!8248036))

(assert (=> b!7828588 m!8247588))

(assert (=> b!7828588 m!8248026))

(assert (=> b!7828588 m!8248036))

(assert (=> b!7828588 m!8248026))

(declare-fun m!8248038 () Bool)

(assert (=> b!7828588 m!8248038))

(assert (=> b!7827692 d!2350703))

(declare-fun b!7828592 () Bool)

(declare-fun e!4630501 () Regex!20954)

(declare-fun e!4630503 () Regex!20954)

(assert (=> b!7828592 (= e!4630501 e!4630503)))

(declare-fun c!1440342 () Bool)

(assert (=> b!7828592 (= c!1440342 (is-Star!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(declare-fun b!7828593 () Bool)

(declare-fun call!726088 () Regex!20954)

(declare-fun call!726089 () Regex!20954)

(assert (=> b!7828593 (= e!4630501 (Union!20954 call!726088 call!726089))))

(declare-fun c!1440340 () Bool)

(declare-fun bm!726082 () Bool)

(assert (=> bm!726082 (= call!726089 (derivativeStep!6257 (ite c!1440340 (regTwo!42421 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) (regTwo!42420 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))) (head!15987 (tail!15528 s1Rec!453))))))

(declare-fun b!7828594 () Bool)

(declare-fun e!4630499 () Regex!20954)

(declare-fun call!726090 () Regex!20954)

(assert (=> b!7828594 (= e!4630499 (Union!20954 (Concat!29799 call!726090 (regTwo!42420 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))) EmptyLang!20954))))

(declare-fun bm!726083 () Bool)

(declare-fun call!726087 () Regex!20954)

(assert (=> bm!726083 (= call!726090 call!726087)))

(declare-fun d!2350705 () Bool)

(declare-fun lt!2676879 () Regex!20954)

(assert (=> d!2350705 (validRegex!11368 lt!2676879)))

(declare-fun e!4630500 () Regex!20954)

(assert (=> d!2350705 (= lt!2676879 e!4630500)))

(declare-fun c!1440341 () Bool)

(assert (=> d!2350705 (= c!1440341 (or (is-EmptyExpr!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) (is-EmptyLang!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))))))

(assert (=> d!2350705 (validRegex!11368 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))))

(assert (=> d!2350705 (= (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)) (head!15987 (tail!15528 s1Rec!453))) lt!2676879)))

(declare-fun bm!726084 () Bool)

(assert (=> bm!726084 (= call!726088 (derivativeStep!6257 (ite c!1440340 (regOne!42421 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) (ite c!1440342 (reg!21283 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) (regOne!42420 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))) (head!15987 (tail!15528 s1Rec!453))))))

(declare-fun b!7828595 () Bool)

(declare-fun e!4630502 () Regex!20954)

(assert (=> b!7828595 (= e!4630500 e!4630502)))

(declare-fun c!1440343 () Bool)

(assert (=> b!7828595 (= c!1440343 (is-ElementMatch!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(declare-fun b!7828596 () Bool)

(assert (=> b!7828596 (= e!4630502 (ite (= (head!15987 (tail!15528 s1Rec!453)) (c!1440089 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828597 () Bool)

(assert (=> b!7828597 (= e!4630499 (Union!20954 (Concat!29799 call!726090 (regTwo!42420 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))) call!726089))))

(declare-fun b!7828598 () Bool)

(assert (=> b!7828598 (= e!4630500 EmptyLang!20954)))

(declare-fun b!7828599 () Bool)

(assert (=> b!7828599 (= e!4630503 (Concat!29799 call!726087 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(declare-fun b!7828600 () Bool)

(declare-fun c!1440344 () Bool)

(assert (=> b!7828600 (= c!1440344 (nullable!9298 (regOne!42420 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))))))

(assert (=> b!7828600 (= e!4630503 e!4630499)))

(declare-fun bm!726085 () Bool)

(assert (=> bm!726085 (= call!726087 call!726088)))

(declare-fun b!7828601 () Bool)

(assert (=> b!7828601 (= c!1440340 (is-Union!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(assert (=> b!7828601 (= e!4630502 e!4630501)))

(assert (= (and d!2350705 c!1440341) b!7828598))

(assert (= (and d!2350705 (not c!1440341)) b!7828595))

(assert (= (and b!7828595 c!1440343) b!7828596))

(assert (= (and b!7828595 (not c!1440343)) b!7828601))

(assert (= (and b!7828601 c!1440340) b!7828593))

(assert (= (and b!7828601 (not c!1440340)) b!7828592))

(assert (= (and b!7828592 c!1440342) b!7828599))

(assert (= (and b!7828592 (not c!1440342)) b!7828600))

(assert (= (and b!7828600 c!1440344) b!7828597))

(assert (= (and b!7828600 (not c!1440344)) b!7828594))

(assert (= (or b!7828597 b!7828594) bm!726083))

(assert (= (or b!7828599 bm!726083) bm!726085))

(assert (= (or b!7828593 bm!726085) bm!726084))

(assert (= (or b!7828593 b!7828597) bm!726082))

(assert (=> bm!726082 m!8247592))

(declare-fun m!8248040 () Bool)

(assert (=> bm!726082 m!8248040))

(declare-fun m!8248042 () Bool)

(assert (=> d!2350705 m!8248042))

(assert (=> d!2350705 m!8247444))

(assert (=> d!2350705 m!8247594))

(assert (=> bm!726084 m!8247592))

(declare-fun m!8248044 () Bool)

(assert (=> bm!726084 m!8248044))

(declare-fun m!8248046 () Bool)

(assert (=> b!7828600 m!8248046))

(assert (=> b!7827692 d!2350705))

(declare-fun d!2350707 () Bool)

(assert (=> d!2350707 (= (head!15987 (tail!15528 s1Rec!453)) (h!80115 (tail!15528 s1Rec!453)))))

(assert (=> b!7827692 d!2350707))

(assert (=> b!7827692 d!2350651))

(declare-fun d!2350709 () Bool)

(assert (=> d!2350709 (= (nullable!9298 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))) (nullableFct!3667 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))

(declare-fun bs!1966794 () Bool)

(assert (= bs!1966794 d!2350709))

(declare-fun m!8248048 () Bool)

(assert (=> bs!1966794 m!8248048))

(assert (=> b!7827716 d!2350709))

(assert (=> b!7827823 d!2350707))

(assert (=> b!7827823 d!2350643))

(declare-fun b!7828602 () Bool)

(declare-fun e!4630508 () Bool)

(declare-fun e!4630509 () Bool)

(assert (=> b!7828602 (= e!4630508 e!4630509)))

(declare-fun res!3114708 () Bool)

(declare-fun call!726092 () Bool)

(assert (=> b!7828602 (= res!3114708 call!726092)))

(assert (=> b!7828602 (=> (not res!3114708) (not e!4630509))))

(declare-fun b!7828603 () Bool)

(declare-fun e!4630505 () Bool)

(assert (=> b!7828603 (= e!4630505 e!4630508)))

(declare-fun c!1440345 () Bool)

(assert (=> b!7828603 (= c!1440345 (is-Union!20954 r2!6199))))

(declare-fun d!2350711 () Bool)

(declare-fun res!3114707 () Bool)

(declare-fun e!4630507 () Bool)

(assert (=> d!2350711 (=> res!3114707 e!4630507)))

(assert (=> d!2350711 (= res!3114707 (is-EmptyExpr!20954 r2!6199))))

(assert (=> d!2350711 (= (nullableFct!3667 r2!6199) e!4630507)))

(declare-fun bm!726086 () Bool)

(declare-fun call!726091 () Bool)

(assert (=> bm!726086 (= call!726091 (nullable!9298 (ite c!1440345 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(declare-fun bm!726087 () Bool)

(assert (=> bm!726087 (= call!726092 (nullable!9298 (ite c!1440345 (regOne!42421 r2!6199) (regOne!42420 r2!6199))))))

(declare-fun b!7828604 () Bool)

(declare-fun e!4630504 () Bool)

(assert (=> b!7828604 (= e!4630508 e!4630504)))

(declare-fun res!3114710 () Bool)

(assert (=> b!7828604 (= res!3114710 call!726092)))

(assert (=> b!7828604 (=> res!3114710 e!4630504)))

(declare-fun b!7828605 () Bool)

(assert (=> b!7828605 (= e!4630504 call!726091)))

(declare-fun b!7828606 () Bool)

(declare-fun e!4630506 () Bool)

(assert (=> b!7828606 (= e!4630506 e!4630505)))

(declare-fun res!3114711 () Bool)

(assert (=> b!7828606 (=> res!3114711 e!4630505)))

(assert (=> b!7828606 (= res!3114711 (is-Star!20954 r2!6199))))

(declare-fun b!7828607 () Bool)

(assert (=> b!7828607 (= e!4630509 call!726091)))

(declare-fun b!7828608 () Bool)

(assert (=> b!7828608 (= e!4630507 e!4630506)))

(declare-fun res!3114709 () Bool)

(assert (=> b!7828608 (=> (not res!3114709) (not e!4630506))))

(assert (=> b!7828608 (= res!3114709 (and (not (is-EmptyLang!20954 r2!6199)) (not (is-ElementMatch!20954 r2!6199))))))

(assert (= (and d!2350711 (not res!3114707)) b!7828608))

(assert (= (and b!7828608 res!3114709) b!7828606))

(assert (= (and b!7828606 (not res!3114711)) b!7828603))

(assert (= (and b!7828603 c!1440345) b!7828604))

(assert (= (and b!7828603 (not c!1440345)) b!7828602))

(assert (= (and b!7828604 (not res!3114710)) b!7828605))

(assert (= (and b!7828602 res!3114708) b!7828607))

(assert (= (or b!7828605 b!7828607) bm!726086))

(assert (= (or b!7828604 b!7828602) bm!726087))

(declare-fun m!8248050 () Bool)

(assert (=> bm!726086 m!8248050))

(declare-fun m!8248052 () Bool)

(assert (=> bm!726087 m!8248052))

(assert (=> d!2350491 d!2350711))

(declare-fun b!7828609 () Bool)

(declare-fun e!4630515 () Bool)

(declare-fun e!4630512 () Bool)

(assert (=> b!7828609 (= e!4630515 e!4630512)))

(declare-fun res!3114713 () Bool)

(assert (=> b!7828609 (=> (not res!3114713) (not e!4630512))))

(declare-fun call!726094 () Bool)

(assert (=> b!7828609 (= res!3114713 call!726094)))

(declare-fun b!7828611 () Bool)

(declare-fun call!726095 () Bool)

(assert (=> b!7828611 (= e!4630512 call!726095)))

(declare-fun b!7828612 () Bool)

(declare-fun res!3114716 () Bool)

(declare-fun e!4630513 () Bool)

(assert (=> b!7828612 (=> (not res!3114716) (not e!4630513))))

(assert (=> b!7828612 (= res!3114716 call!726095)))

(declare-fun e!4630516 () Bool)

(assert (=> b!7828612 (= e!4630516 e!4630513)))

(declare-fun b!7828613 () Bool)

(declare-fun e!4630511 () Bool)

(declare-fun e!4630514 () Bool)

(assert (=> b!7828613 (= e!4630511 e!4630514)))

(declare-fun c!1440347 () Bool)

(assert (=> b!7828613 (= c!1440347 (is-Star!20954 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))

(declare-fun b!7828614 () Bool)

(declare-fun e!4630510 () Bool)

(declare-fun call!726093 () Bool)

(assert (=> b!7828614 (= e!4630510 call!726093)))

(declare-fun b!7828615 () Bool)

(assert (=> b!7828615 (= e!4630514 e!4630510)))

(declare-fun res!3114715 () Bool)

(assert (=> b!7828615 (= res!3114715 (not (nullable!9298 (reg!21283 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))))

(assert (=> b!7828615 (=> (not res!3114715) (not e!4630510))))

(declare-fun bm!726088 () Bool)

(assert (=> bm!726088 (= call!726095 call!726093)))

(declare-fun bm!726089 () Bool)

(declare-fun c!1440346 () Bool)

(assert (=> bm!726089 (= call!726094 (validRegex!11368 (ite c!1440346 (regTwo!42421 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))) (regOne!42420 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))))

(declare-fun bm!726090 () Bool)

(assert (=> bm!726090 (= call!726093 (validRegex!11368 (ite c!1440347 (reg!21283 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))) (ite c!1440346 (regOne!42421 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))) (regTwo!42420 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))))))

(declare-fun d!2350713 () Bool)

(declare-fun res!3114714 () Bool)

(assert (=> d!2350713 (=> res!3114714 e!4630511)))

(assert (=> d!2350713 (= res!3114714 (is-ElementMatch!20954 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))

(assert (=> d!2350713 (= (validRegex!11368 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))) e!4630511)))

(declare-fun b!7828610 () Bool)

(assert (=> b!7828610 (= e!4630513 call!726094)))

(declare-fun b!7828616 () Bool)

(declare-fun res!3114712 () Bool)

(assert (=> b!7828616 (=> res!3114712 e!4630515)))

(assert (=> b!7828616 (= res!3114712 (not (is-Concat!29799 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))))

(assert (=> b!7828616 (= e!4630516 e!4630515)))

(declare-fun b!7828617 () Bool)

(assert (=> b!7828617 (= e!4630514 e!4630516)))

(assert (=> b!7828617 (= c!1440346 (is-Union!20954 (ite c!1440192 (regTwo!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regOne!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))

(assert (= (and d!2350713 (not res!3114714)) b!7828613))

(assert (= (and b!7828613 c!1440347) b!7828615))

(assert (= (and b!7828613 (not c!1440347)) b!7828617))

(assert (= (and b!7828615 res!3114715) b!7828614))

(assert (= (and b!7828617 c!1440346) b!7828612))

(assert (= (and b!7828617 (not c!1440346)) b!7828616))

(assert (= (and b!7828612 res!3114716) b!7828610))

(assert (= (and b!7828616 (not res!3114712)) b!7828609))

(assert (= (and b!7828609 res!3114713) b!7828611))

(assert (= (or b!7828610 b!7828609) bm!726089))

(assert (= (or b!7828612 b!7828611) bm!726088))

(assert (= (or b!7828614 bm!726088) bm!726090))

(declare-fun m!8248054 () Bool)

(assert (=> b!7828615 m!8248054))

(declare-fun m!8248056 () Bool)

(assert (=> bm!726089 m!8248056))

(declare-fun m!8248058 () Bool)

(assert (=> bm!726090 m!8248058))

(assert (=> bm!725977 d!2350713))

(declare-fun b!7828618 () Bool)

(declare-fun e!4630522 () Bool)

(declare-fun e!4630519 () Bool)

(assert (=> b!7828618 (= e!4630522 e!4630519)))

(declare-fun res!3114718 () Bool)

(assert (=> b!7828618 (=> (not res!3114718) (not e!4630519))))

(declare-fun call!726097 () Bool)

(assert (=> b!7828618 (= res!3114718 call!726097)))

(declare-fun b!7828620 () Bool)

(declare-fun call!726098 () Bool)

(assert (=> b!7828620 (= e!4630519 call!726098)))

(declare-fun b!7828621 () Bool)

(declare-fun res!3114721 () Bool)

(declare-fun e!4630520 () Bool)

(assert (=> b!7828621 (=> (not res!3114721) (not e!4630520))))

(assert (=> b!7828621 (= res!3114721 call!726098)))

(declare-fun e!4630523 () Bool)

(assert (=> b!7828621 (= e!4630523 e!4630520)))

(declare-fun b!7828622 () Bool)

(declare-fun e!4630518 () Bool)

(declare-fun e!4630521 () Bool)

(assert (=> b!7828622 (= e!4630518 e!4630521)))

(declare-fun c!1440349 () Bool)

(assert (=> b!7828622 (= c!1440349 (is-Star!20954 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))))

(declare-fun b!7828623 () Bool)

(declare-fun e!4630517 () Bool)

(declare-fun call!726096 () Bool)

(assert (=> b!7828623 (= e!4630517 call!726096)))

(declare-fun b!7828624 () Bool)

(assert (=> b!7828624 (= e!4630521 e!4630517)))

(declare-fun res!3114720 () Bool)

(assert (=> b!7828624 (= res!3114720 (not (nullable!9298 (reg!21283 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))))))

(assert (=> b!7828624 (=> (not res!3114720) (not e!4630517))))

(declare-fun bm!726091 () Bool)

(assert (=> bm!726091 (= call!726098 call!726096)))

(declare-fun bm!726092 () Bool)

(declare-fun c!1440348 () Bool)

(assert (=> bm!726092 (= call!726097 (validRegex!11368 (ite c!1440348 (regTwo!42421 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))) (regOne!42420 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))))))

(declare-fun bm!726093 () Bool)

(assert (=> bm!726093 (= call!726096 (validRegex!11368 (ite c!1440349 (reg!21283 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))) (ite c!1440348 (regOne!42421 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))) (regTwo!42420 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))))))

(declare-fun d!2350715 () Bool)

(declare-fun res!3114719 () Bool)

(assert (=> d!2350715 (=> res!3114719 e!4630518)))

(assert (=> d!2350715 (= res!3114719 (is-ElementMatch!20954 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))))

(assert (=> d!2350715 (= (validRegex!11368 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))) e!4630518)))

(declare-fun b!7828619 () Bool)

(assert (=> b!7828619 (= e!4630520 call!726097)))

(declare-fun b!7828625 () Bool)

(declare-fun res!3114717 () Bool)

(assert (=> b!7828625 (=> res!3114717 e!4630522)))

(assert (=> b!7828625 (= res!3114717 (not (is-Concat!29799 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))))))))))

(assert (=> b!7828625 (= e!4630523 e!4630522)))

(declare-fun b!7828626 () Bool)

(assert (=> b!7828626 (= e!4630521 e!4630523)))

(assert (=> b!7828626 (= c!1440348 (is-Union!20954 (ite c!1440195 (reg!21283 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (ite c!1440194 (regOne!42421 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261))) (regTwo!42420 (ite c!1440099 (regTwo!42421 r1!6261) (regOne!42420 r1!6261)))))))))

(assert (= (and d!2350715 (not res!3114719)) b!7828622))

(assert (= (and b!7828622 c!1440349) b!7828624))

(assert (= (and b!7828622 (not c!1440349)) b!7828626))

(assert (= (and b!7828624 res!3114720) b!7828623))

(assert (= (and b!7828626 c!1440348) b!7828621))

(assert (= (and b!7828626 (not c!1440348)) b!7828625))

(assert (= (and b!7828621 res!3114721) b!7828619))

(assert (= (and b!7828625 (not res!3114717)) b!7828618))

(assert (= (and b!7828618 res!3114718) b!7828620))

(assert (= (or b!7828619 b!7828618) bm!726092))

(assert (= (or b!7828621 b!7828620) bm!726091))

(assert (= (or b!7828623 bm!726091) bm!726093))

(declare-fun m!8248060 () Bool)

(assert (=> b!7828624 m!8248060))

(declare-fun m!8248062 () Bool)

(assert (=> bm!726092 m!8248062))

(declare-fun m!8248064 () Bool)

(assert (=> bm!726093 m!8248064))

(assert (=> bm!725981 d!2350715))

(assert (=> b!7827799 d!2350695))

(assert (=> b!7827799 d!2350697))

(declare-fun d!2350717 () Bool)

(declare-fun c!1440350 () Bool)

(assert (=> d!2350717 (= c!1440350 (is-Nil!73667 lt!2676843))))

(declare-fun e!4630524 () (Set C!42234))

(assert (=> d!2350717 (= (content!15639 lt!2676843) e!4630524)))

(declare-fun b!7828627 () Bool)

(assert (=> b!7828627 (= e!4630524 (as set.empty (Set C!42234)))))

(declare-fun b!7828628 () Bool)

(assert (=> b!7828628 (= e!4630524 (set.union (set.insert (h!80115 lt!2676843) (as set.empty (Set C!42234))) (content!15639 (t!388526 lt!2676843))))))

(assert (= (and d!2350717 c!1440350) b!7828627))

(assert (= (and d!2350717 (not c!1440350)) b!7828628))

(declare-fun m!8248066 () Bool)

(assert (=> b!7828628 m!8248066))

(declare-fun m!8248068 () Bool)

(assert (=> b!7828628 m!8248068))

(assert (=> d!2350507 d!2350717))

(declare-fun d!2350719 () Bool)

(declare-fun c!1440351 () Bool)

(assert (=> d!2350719 (= c!1440351 (is-Nil!73667 (t!388526 s1Rec!453)))))

(declare-fun e!4630525 () (Set C!42234))

(assert (=> d!2350719 (= (content!15639 (t!388526 s1Rec!453)) e!4630525)))

(declare-fun b!7828629 () Bool)

(assert (=> b!7828629 (= e!4630525 (as set.empty (Set C!42234)))))

(declare-fun b!7828630 () Bool)

(assert (=> b!7828630 (= e!4630525 (set.union (set.insert (h!80115 (t!388526 s1Rec!453)) (as set.empty (Set C!42234))) (content!15639 (t!388526 (t!388526 s1Rec!453)))))))

(assert (= (and d!2350719 c!1440351) b!7828629))

(assert (= (and d!2350719 (not c!1440351)) b!7828630))

(declare-fun m!8248070 () Bool)

(assert (=> b!7828630 m!8248070))

(assert (=> b!7828630 m!8247978))

(assert (=> d!2350507 d!2350719))

(assert (=> d!2350507 d!2350523))

(declare-fun d!2350721 () Bool)

(assert (=> d!2350721 (= (nullable!9298 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) (nullableFct!3667 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(declare-fun bs!1966795 () Bool)

(assert (= bs!1966795 d!2350721))

(assert (=> bs!1966795 m!8247418))

(declare-fun m!8248072 () Bool)

(assert (=> bs!1966795 m!8248072))

(assert (=> b!7827741 d!2350721))

(declare-fun b!7828631 () Bool)

(declare-fun e!4630528 () Regex!20954)

(declare-fun e!4630530 () Regex!20954)

(assert (=> b!7828631 (= e!4630528 e!4630530)))

(declare-fun c!1440354 () Bool)

(assert (=> b!7828631 (= c!1440354 (is-Star!20954 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(declare-fun b!7828632 () Bool)

(declare-fun call!726100 () Regex!20954)

(declare-fun call!726101 () Regex!20954)

(assert (=> b!7828632 (= e!4630528 (Union!20954 call!726100 call!726101))))

(declare-fun bm!726094 () Bool)

(declare-fun c!1440352 () Bool)

(assert (=> bm!726094 (= call!726101 (derivativeStep!6257 (ite c!1440352 (regTwo!42421 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))) (regTwo!42420 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))) (head!15987 s1Rec!453)))))

(declare-fun call!726102 () Regex!20954)

(declare-fun e!4630526 () Regex!20954)

(declare-fun b!7828633 () Bool)

(assert (=> b!7828633 (= e!4630526 (Union!20954 (Concat!29799 call!726102 (regTwo!42420 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))) EmptyLang!20954))))

(declare-fun bm!726095 () Bool)

(declare-fun call!726099 () Regex!20954)

(assert (=> bm!726095 (= call!726102 call!726099)))

(declare-fun d!2350723 () Bool)

(declare-fun lt!2676880 () Regex!20954)

(assert (=> d!2350723 (validRegex!11368 lt!2676880)))

(declare-fun e!4630527 () Regex!20954)

(assert (=> d!2350723 (= lt!2676880 e!4630527)))

(declare-fun c!1440353 () Bool)

(assert (=> d!2350723 (= c!1440353 (or (is-EmptyExpr!20954 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))) (is-EmptyLang!20954 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))))))

(assert (=> d!2350723 (validRegex!11368 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))))

(assert (=> d!2350723 (= (derivativeStep!6257 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)) (head!15987 s1Rec!453)) lt!2676880)))

(declare-fun bm!726096 () Bool)

(assert (=> bm!726096 (= call!726100 (derivativeStep!6257 (ite c!1440352 (regOne!42421 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))) (ite c!1440354 (reg!21283 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))) (regOne!42420 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))) (head!15987 s1Rec!453)))))

(declare-fun b!7828634 () Bool)

(declare-fun e!4630529 () Regex!20954)

(assert (=> b!7828634 (= e!4630527 e!4630529)))

(declare-fun c!1440355 () Bool)

(assert (=> b!7828634 (= c!1440355 (is-ElementMatch!20954 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(declare-fun b!7828635 () Bool)

(assert (=> b!7828635 (= e!4630529 (ite (= (head!15987 s1Rec!453) (c!1440089 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828636 () Bool)

(assert (=> b!7828636 (= e!4630526 (Union!20954 (Concat!29799 call!726102 (regTwo!42420 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))) call!726101))))

(declare-fun b!7828637 () Bool)

(assert (=> b!7828637 (= e!4630527 EmptyLang!20954)))

(declare-fun b!7828638 () Bool)

(assert (=> b!7828638 (= e!4630530 (Concat!29799 call!726099 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(declare-fun b!7828639 () Bool)

(declare-fun c!1440356 () Bool)

(assert (=> b!7828639 (= c!1440356 (nullable!9298 (regOne!42420 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261)))))))

(assert (=> b!7828639 (= e!4630530 e!4630526)))

(declare-fun bm!726097 () Bool)

(assert (=> bm!726097 (= call!726099 call!726100)))

(declare-fun b!7828640 () Bool)

(assert (=> b!7828640 (= c!1440352 (is-Union!20954 (ite c!1440185 (regTwo!42421 r1!6261) (regTwo!42420 r1!6261))))))

(assert (=> b!7828640 (= e!4630529 e!4630528)))

(assert (= (and d!2350723 c!1440353) b!7828637))

(assert (= (and d!2350723 (not c!1440353)) b!7828634))

(assert (= (and b!7828634 c!1440355) b!7828635))

(assert (= (and b!7828634 (not c!1440355)) b!7828640))

(assert (= (and b!7828640 c!1440352) b!7828632))

(assert (= (and b!7828640 (not c!1440352)) b!7828631))

(assert (= (and b!7828631 c!1440354) b!7828638))

(assert (= (and b!7828631 (not c!1440354)) b!7828639))

(assert (= (and b!7828639 c!1440356) b!7828636))

(assert (= (and b!7828639 (not c!1440356)) b!7828633))

(assert (= (or b!7828636 b!7828633) bm!726095))

(assert (= (or b!7828638 bm!726095) bm!726097))

(assert (= (or b!7828632 bm!726097) bm!726096))

(assert (= (or b!7828632 b!7828636) bm!726094))

(assert (=> bm!726094 m!8247398))

(declare-fun m!8248074 () Bool)

(assert (=> bm!726094 m!8248074))

(declare-fun m!8248076 () Bool)

(assert (=> d!2350723 m!8248076))

(declare-fun m!8248078 () Bool)

(assert (=> d!2350723 m!8248078))

(assert (=> bm!726096 m!8247398))

(declare-fun m!8248080 () Bool)

(assert (=> bm!726096 m!8248080))

(declare-fun m!8248082 () Bool)

(assert (=> b!7828639 m!8248082))

(assert (=> bm!725972 d!2350723))

(declare-fun d!2350725 () Bool)

(declare-fun lt!2676881 () Int)

(assert (=> d!2350725 (>= lt!2676881 0)))

(declare-fun e!4630531 () Int)

(assert (=> d!2350725 (= lt!2676881 e!4630531)))

(declare-fun c!1440357 () Bool)

(assert (=> d!2350725 (= c!1440357 (is-Nil!73667 (t!388526 (t!388526 s1Rec!453))))))

(assert (=> d!2350725 (= (size!42754 (t!388526 (t!388526 s1Rec!453))) lt!2676881)))

(declare-fun b!7828641 () Bool)

(assert (=> b!7828641 (= e!4630531 0)))

(declare-fun b!7828642 () Bool)

(assert (=> b!7828642 (= e!4630531 (+ 1 (size!42754 (t!388526 (t!388526 (t!388526 s1Rec!453))))))))

(assert (= (and d!2350725 c!1440357) b!7828641))

(assert (= (and d!2350725 (not c!1440357)) b!7828642))

(declare-fun m!8248084 () Bool)

(assert (=> b!7828642 m!8248084))

(assert (=> b!7827763 d!2350725))

(declare-fun b!7828643 () Bool)

(declare-fun e!4630533 () Bool)

(assert (=> b!7828643 (= e!4630533 (= (head!15987 (tail!15528 (tail!15528 s2Rec!453))) (c!1440089 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453))))))))

(declare-fun b!7828644 () Bool)

(declare-fun e!4630535 () Bool)

(declare-fun e!4630536 () Bool)

(assert (=> b!7828644 (= e!4630535 e!4630536)))

(declare-fun res!3114722 () Bool)

(assert (=> b!7828644 (=> (not res!3114722) (not e!4630536))))

(declare-fun lt!2676882 () Bool)

(assert (=> b!7828644 (= res!3114722 (not lt!2676882))))

(declare-fun b!7828645 () Bool)

(declare-fun e!4630538 () Bool)

(assert (=> b!7828645 (= e!4630538 (not (= (head!15987 (tail!15528 (tail!15528 s2Rec!453))) (c!1440089 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453)))))))))

(declare-fun b!7828646 () Bool)

(declare-fun res!3114723 () Bool)

(assert (=> b!7828646 (=> (not res!3114723) (not e!4630533))))

(assert (=> b!7828646 (= res!3114723 (isEmpty!42286 (tail!15528 (tail!15528 (tail!15528 s2Rec!453)))))))

(declare-fun b!7828647 () Bool)

(declare-fun e!4630537 () Bool)

(assert (=> b!7828647 (= e!4630537 (not lt!2676882))))

(declare-fun b!7828648 () Bool)

(declare-fun res!3114725 () Bool)

(assert (=> b!7828648 (=> res!3114725 e!4630535)))

(assert (=> b!7828648 (= res!3114725 e!4630533)))

(declare-fun res!3114729 () Bool)

(assert (=> b!7828648 (=> (not res!3114729) (not e!4630533))))

(assert (=> b!7828648 (= res!3114729 lt!2676882)))

(declare-fun b!7828649 () Bool)

(declare-fun res!3114726 () Bool)

(assert (=> b!7828649 (=> res!3114726 e!4630535)))

(assert (=> b!7828649 (= res!3114726 (not (is-ElementMatch!20954 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453))))))))

(assert (=> b!7828649 (= e!4630537 e!4630535)))

(declare-fun b!7828650 () Bool)

(declare-fun e!4630534 () Bool)

(declare-fun call!726103 () Bool)

(assert (=> b!7828650 (= e!4630534 (= lt!2676882 call!726103))))

(declare-fun b!7828651 () Bool)

(assert (=> b!7828651 (= e!4630536 e!4630538)))

(declare-fun res!3114724 () Bool)

(assert (=> b!7828651 (=> res!3114724 e!4630538)))

(assert (=> b!7828651 (= res!3114724 call!726103)))

(declare-fun b!7828652 () Bool)

(declare-fun res!3114728 () Bool)

(assert (=> b!7828652 (=> res!3114728 e!4630538)))

(assert (=> b!7828652 (= res!3114728 (not (isEmpty!42286 (tail!15528 (tail!15528 (tail!15528 s2Rec!453))))))))

(declare-fun b!7828653 () Bool)

(declare-fun e!4630532 () Bool)

(assert (=> b!7828653 (= e!4630532 (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453))) (head!15987 (tail!15528 (tail!15528 s2Rec!453)))) (tail!15528 (tail!15528 (tail!15528 s2Rec!453)))))))

(declare-fun d!2350727 () Bool)

(assert (=> d!2350727 e!4630534))

(declare-fun c!1440359 () Bool)

(assert (=> d!2350727 (= c!1440359 (is-EmptyExpr!20954 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453)))))))

(assert (=> d!2350727 (= lt!2676882 e!4630532)))

(declare-fun c!1440360 () Bool)

(assert (=> d!2350727 (= c!1440360 (isEmpty!42286 (tail!15528 (tail!15528 s2Rec!453))))))

(assert (=> d!2350727 (validRegex!11368 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453))))))

(assert (=> d!2350727 (= (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453))) (tail!15528 (tail!15528 s2Rec!453))) lt!2676882)))

(declare-fun bm!726098 () Bool)

(assert (=> bm!726098 (= call!726103 (isEmpty!42286 (tail!15528 (tail!15528 s2Rec!453))))))

(declare-fun b!7828654 () Bool)

(assert (=> b!7828654 (= e!4630534 e!4630537)))

(declare-fun c!1440358 () Bool)

(assert (=> b!7828654 (= c!1440358 (is-EmptyLang!20954 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453)))))))

(declare-fun b!7828655 () Bool)

(declare-fun res!3114727 () Bool)

(assert (=> b!7828655 (=> (not res!3114727) (not e!4630533))))

(assert (=> b!7828655 (= res!3114727 (not call!726103))))

(declare-fun b!7828656 () Bool)

(assert (=> b!7828656 (= e!4630532 (nullable!9298 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453)))))))

(assert (= (and d!2350727 c!1440360) b!7828656))

(assert (= (and d!2350727 (not c!1440360)) b!7828653))

(assert (= (and d!2350727 c!1440359) b!7828650))

(assert (= (and d!2350727 (not c!1440359)) b!7828654))

(assert (= (and b!7828654 c!1440358) b!7828647))

(assert (= (and b!7828654 (not c!1440358)) b!7828649))

(assert (= (and b!7828649 (not res!3114726)) b!7828648))

(assert (= (and b!7828648 res!3114729) b!7828655))

(assert (= (and b!7828655 res!3114727) b!7828646))

(assert (= (and b!7828646 res!3114723) b!7828643))

(assert (= (and b!7828648 (not res!3114725)) b!7828644))

(assert (= (and b!7828644 res!3114722) b!7828651))

(assert (= (and b!7828651 (not res!3114724)) b!7828652))

(assert (= (and b!7828652 (not res!3114728)) b!7828645))

(assert (= (or b!7828650 b!7828651 b!7828655) bm!726098))

(assert (=> b!7828652 m!8247628))

(declare-fun m!8248086 () Bool)

(assert (=> b!7828652 m!8248086))

(assert (=> b!7828652 m!8248086))

(declare-fun m!8248088 () Bool)

(assert (=> b!7828652 m!8248088))

(assert (=> b!7828643 m!8247628))

(declare-fun m!8248090 () Bool)

(assert (=> b!7828643 m!8248090))

(assert (=> d!2350727 m!8247628))

(assert (=> d!2350727 m!8247630))

(assert (=> d!2350727 m!8247638))

(declare-fun m!8248092 () Bool)

(assert (=> d!2350727 m!8248092))

(assert (=> b!7828656 m!8247638))

(declare-fun m!8248094 () Bool)

(assert (=> b!7828656 m!8248094))

(assert (=> bm!726098 m!8247628))

(assert (=> bm!726098 m!8247630))

(assert (=> b!7828646 m!8247628))

(assert (=> b!7828646 m!8248086))

(assert (=> b!7828646 m!8248086))

(assert (=> b!7828646 m!8248088))

(assert (=> b!7828645 m!8247628))

(assert (=> b!7828645 m!8248090))

(assert (=> b!7828653 m!8247628))

(assert (=> b!7828653 m!8248090))

(assert (=> b!7828653 m!8247638))

(assert (=> b!7828653 m!8248090))

(declare-fun m!8248096 () Bool)

(assert (=> b!7828653 m!8248096))

(assert (=> b!7828653 m!8247628))

(assert (=> b!7828653 m!8248086))

(assert (=> b!7828653 m!8248096))

(assert (=> b!7828653 m!8248086))

(declare-fun m!8248098 () Bool)

(assert (=> b!7828653 m!8248098))

(assert (=> b!7827738 d!2350727))

(declare-fun b!7828657 () Bool)

(declare-fun e!4630541 () Regex!20954)

(declare-fun e!4630543 () Regex!20954)

(assert (=> b!7828657 (= e!4630541 e!4630543)))

(declare-fun c!1440363 () Bool)

(assert (=> b!7828657 (= c!1440363 (is-Star!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(declare-fun b!7828658 () Bool)

(declare-fun call!726105 () Regex!20954)

(declare-fun call!726106 () Regex!20954)

(assert (=> b!7828658 (= e!4630541 (Union!20954 call!726105 call!726106))))

(declare-fun c!1440361 () Bool)

(declare-fun bm!726099 () Bool)

(assert (=> bm!726099 (= call!726106 (derivativeStep!6257 (ite c!1440361 (regTwo!42421 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) (regTwo!42420 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))) (head!15987 (tail!15528 s2Rec!453))))))

(declare-fun b!7828659 () Bool)

(declare-fun e!4630539 () Regex!20954)

(declare-fun call!726107 () Regex!20954)

(assert (=> b!7828659 (= e!4630539 (Union!20954 (Concat!29799 call!726107 (regTwo!42420 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))) EmptyLang!20954))))

(declare-fun bm!726100 () Bool)

(declare-fun call!726104 () Regex!20954)

(assert (=> bm!726100 (= call!726107 call!726104)))

(declare-fun d!2350729 () Bool)

(declare-fun lt!2676883 () Regex!20954)

(assert (=> d!2350729 (validRegex!11368 lt!2676883)))

(declare-fun e!4630540 () Regex!20954)

(assert (=> d!2350729 (= lt!2676883 e!4630540)))

(declare-fun c!1440362 () Bool)

(assert (=> d!2350729 (= c!1440362 (or (is-EmptyExpr!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) (is-EmptyLang!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))))))

(assert (=> d!2350729 (validRegex!11368 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))))

(assert (=> d!2350729 (= (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)) (head!15987 (tail!15528 s2Rec!453))) lt!2676883)))

(declare-fun bm!726101 () Bool)

(assert (=> bm!726101 (= call!726105 (derivativeStep!6257 (ite c!1440361 (regOne!42421 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) (ite c!1440363 (reg!21283 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) (regOne!42420 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))) (head!15987 (tail!15528 s2Rec!453))))))

(declare-fun b!7828660 () Bool)

(declare-fun e!4630542 () Regex!20954)

(assert (=> b!7828660 (= e!4630540 e!4630542)))

(declare-fun c!1440364 () Bool)

(assert (=> b!7828660 (= c!1440364 (is-ElementMatch!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(declare-fun b!7828661 () Bool)

(assert (=> b!7828661 (= e!4630542 (ite (= (head!15987 (tail!15528 s2Rec!453)) (c!1440089 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828662 () Bool)

(assert (=> b!7828662 (= e!4630539 (Union!20954 (Concat!29799 call!726107 (regTwo!42420 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))) call!726106))))

(declare-fun b!7828663 () Bool)

(assert (=> b!7828663 (= e!4630540 EmptyLang!20954)))

(declare-fun b!7828664 () Bool)

(assert (=> b!7828664 (= e!4630543 (Concat!29799 call!726104 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(declare-fun b!7828665 () Bool)

(declare-fun c!1440365 () Bool)

(assert (=> b!7828665 (= c!1440365 (nullable!9298 (regOne!42420 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))))))

(assert (=> b!7828665 (= e!4630543 e!4630539)))

(declare-fun bm!726102 () Bool)

(assert (=> bm!726102 (= call!726104 call!726105)))

(declare-fun b!7828666 () Bool)

(assert (=> b!7828666 (= c!1440361 (is-Union!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(assert (=> b!7828666 (= e!4630542 e!4630541)))

(assert (= (and d!2350729 c!1440362) b!7828663))

(assert (= (and d!2350729 (not c!1440362)) b!7828660))

(assert (= (and b!7828660 c!1440364) b!7828661))

(assert (= (and b!7828660 (not c!1440364)) b!7828666))

(assert (= (and b!7828666 c!1440361) b!7828658))

(assert (= (and b!7828666 (not c!1440361)) b!7828657))

(assert (= (and b!7828657 c!1440363) b!7828664))

(assert (= (and b!7828657 (not c!1440363)) b!7828665))

(assert (= (and b!7828665 c!1440365) b!7828662))

(assert (= (and b!7828665 (not c!1440365)) b!7828659))

(assert (= (or b!7828662 b!7828659) bm!726100))

(assert (= (or b!7828664 bm!726100) bm!726102))

(assert (= (or b!7828658 bm!726102) bm!726101))

(assert (= (or b!7828658 b!7828662) bm!726099))

(assert (=> bm!726099 m!8247632))

(declare-fun m!8248100 () Bool)

(assert (=> bm!726099 m!8248100))

(declare-fun m!8248102 () Bool)

(assert (=> d!2350729 m!8248102))

(assert (=> d!2350729 m!8247418))

(assert (=> d!2350729 m!8247634))

(assert (=> bm!726101 m!8247632))

(declare-fun m!8248104 () Bool)

(assert (=> bm!726101 m!8248104))

(declare-fun m!8248106 () Bool)

(assert (=> b!7828665 m!8248106))

(assert (=> b!7827738 d!2350729))

(declare-fun d!2350731 () Bool)

(assert (=> d!2350731 (= (head!15987 (tail!15528 s2Rec!453)) (h!80115 (tail!15528 s2Rec!453)))))

(assert (=> b!7827738 d!2350731))

(assert (=> b!7827738 d!2350661))

(declare-fun d!2350733 () Bool)

(declare-fun c!1440366 () Bool)

(assert (=> d!2350733 (= c!1440366 (is-Nil!73667 (t!388526 s1!4101)))))

(declare-fun e!4630544 () (Set C!42234))

(assert (=> d!2350733 (= (content!15639 (t!388526 s1!4101)) e!4630544)))

(declare-fun b!7828667 () Bool)

(assert (=> b!7828667 (= e!4630544 (as set.empty (Set C!42234)))))

(declare-fun b!7828668 () Bool)

(assert (=> b!7828668 (= e!4630544 (set.union (set.insert (h!80115 (t!388526 s1!4101)) (as set.empty (Set C!42234))) (content!15639 (t!388526 (t!388526 s1!4101)))))))

(assert (= (and d!2350733 c!1440366) b!7828667))

(assert (= (and d!2350733 (not c!1440366)) b!7828668))

(declare-fun m!8248108 () Bool)

(assert (=> b!7828668 m!8248108))

(assert (=> b!7828668 m!8248018))

(assert (=> b!7827759 d!2350733))

(declare-fun d!2350735 () Bool)

(declare-fun c!1440367 () Bool)

(assert (=> d!2350735 (= c!1440367 (is-Nil!73667 (t!388526 s2Rec!453)))))

(declare-fun e!4630545 () (Set C!42234))

(assert (=> d!2350735 (= (content!15639 (t!388526 s2Rec!453)) e!4630545)))

(declare-fun b!7828669 () Bool)

(assert (=> b!7828669 (= e!4630545 (as set.empty (Set C!42234)))))

(declare-fun b!7828670 () Bool)

(assert (=> b!7828670 (= e!4630545 (set.union (set.insert (h!80115 (t!388526 s2Rec!453)) (as set.empty (Set C!42234))) (content!15639 (t!388526 (t!388526 s2Rec!453)))))))

(assert (= (and d!2350735 c!1440367) b!7828669))

(assert (= (and d!2350735 (not c!1440367)) b!7828670))

(declare-fun m!8248110 () Bool)

(assert (=> b!7828670 m!8248110))

(declare-fun m!8248112 () Bool)

(assert (=> b!7828670 m!8248112))

(assert (=> b!7827786 d!2350735))

(declare-fun d!2350737 () Bool)

(declare-fun c!1440368 () Bool)

(assert (=> d!2350737 (= c!1440368 (is-Nil!73667 lt!2676844))))

(declare-fun e!4630546 () (Set C!42234))

(assert (=> d!2350737 (= (content!15639 lt!2676844) e!4630546)))

(declare-fun b!7828671 () Bool)

(assert (=> b!7828671 (= e!4630546 (as set.empty (Set C!42234)))))

(declare-fun b!7828672 () Bool)

(assert (=> b!7828672 (= e!4630546 (set.union (set.insert (h!80115 lt!2676844) (as set.empty (Set C!42234))) (content!15639 (t!388526 lt!2676844))))))

(assert (= (and d!2350737 c!1440368) b!7828671))

(assert (= (and d!2350737 (not c!1440368)) b!7828672))

(declare-fun m!8248114 () Bool)

(assert (=> b!7828672 m!8248114))

(declare-fun m!8248116 () Bool)

(assert (=> b!7828672 m!8248116))

(assert (=> d!2350515 d!2350737))

(assert (=> d!2350515 d!2350733))

(assert (=> d!2350515 d!2350503))

(assert (=> b!7827684 d!2350707))

(declare-fun d!2350739 () Bool)

(assert (=> d!2350739 (= (nullable!9298 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) (nullableFct!3667 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(declare-fun bs!1966796 () Bool)

(assert (= bs!1966796 d!2350739))

(assert (=> bs!1966796 m!8247464))

(declare-fun m!8248118 () Bool)

(assert (=> bs!1966796 m!8248118))

(assert (=> b!7827649 d!2350739))

(assert (=> d!2350463 d!2350517))

(declare-fun b!7828673 () Bool)

(declare-fun e!4630552 () Bool)

(declare-fun e!4630549 () Bool)

(assert (=> b!7828673 (= e!4630552 e!4630549)))

(declare-fun res!3114731 () Bool)

(assert (=> b!7828673 (=> (not res!3114731) (not e!4630549))))

(declare-fun call!726109 () Bool)

(assert (=> b!7828673 (= res!3114731 call!726109)))

(declare-fun b!7828675 () Bool)

(declare-fun call!726110 () Bool)

(assert (=> b!7828675 (= e!4630549 call!726110)))

(declare-fun b!7828676 () Bool)

(declare-fun res!3114734 () Bool)

(declare-fun e!4630550 () Bool)

(assert (=> b!7828676 (=> (not res!3114734) (not e!4630550))))

(assert (=> b!7828676 (= res!3114734 call!726110)))

(declare-fun e!4630553 () Bool)

(assert (=> b!7828676 (= e!4630553 e!4630550)))

(declare-fun b!7828677 () Bool)

(declare-fun e!4630548 () Bool)

(declare-fun e!4630551 () Bool)

(assert (=> b!7828677 (= e!4630548 e!4630551)))

(declare-fun c!1440370 () Bool)

(assert (=> b!7828677 (= c!1440370 (is-Star!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(declare-fun b!7828678 () Bool)

(declare-fun e!4630547 () Bool)

(declare-fun call!726108 () Bool)

(assert (=> b!7828678 (= e!4630547 call!726108)))

(declare-fun b!7828679 () Bool)

(assert (=> b!7828679 (= e!4630551 e!4630547)))

(declare-fun res!3114733 () Bool)

(assert (=> b!7828679 (= res!3114733 (not (nullable!9298 (reg!21283 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))))

(assert (=> b!7828679 (=> (not res!3114733) (not e!4630547))))

(declare-fun bm!726103 () Bool)

(assert (=> bm!726103 (= call!726110 call!726108)))

(declare-fun bm!726104 () Bool)

(declare-fun c!1440369 () Bool)

(assert (=> bm!726104 (= call!726109 (validRegex!11368 (ite c!1440369 (regTwo!42421 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) (regOne!42420 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))))

(declare-fun bm!726105 () Bool)

(assert (=> bm!726105 (= call!726108 (validRegex!11368 (ite c!1440370 (reg!21283 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) (ite c!1440369 (regOne!42421 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) (regTwo!42420 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))))))))

(declare-fun d!2350741 () Bool)

(declare-fun res!3114732 () Bool)

(assert (=> d!2350741 (=> res!3114732 e!4630548)))

(assert (=> d!2350741 (= res!3114732 (is-ElementMatch!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(assert (=> d!2350741 (= (validRegex!11368 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))) e!4630548)))

(declare-fun b!7828674 () Bool)

(assert (=> b!7828674 (= e!4630550 call!726109)))

(declare-fun b!7828680 () Bool)

(declare-fun res!3114730 () Bool)

(assert (=> b!7828680 (=> res!3114730 e!4630552)))

(assert (=> b!7828680 (= res!3114730 (not (is-Concat!29799 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453)))))))

(assert (=> b!7828680 (= e!4630553 e!4630552)))

(declare-fun b!7828681 () Bool)

(assert (=> b!7828681 (= e!4630551 e!4630553)))

(assert (=> b!7828681 (= c!1440369 (is-Union!20954 (derivativeStep!6257 r1!6261 (head!15987 s1Rec!453))))))

(assert (= (and d!2350741 (not res!3114732)) b!7828677))

(assert (= (and b!7828677 c!1440370) b!7828679))

(assert (= (and b!7828677 (not c!1440370)) b!7828681))

(assert (= (and b!7828679 res!3114733) b!7828678))

(assert (= (and b!7828681 c!1440369) b!7828676))

(assert (= (and b!7828681 (not c!1440369)) b!7828680))

(assert (= (and b!7828676 res!3114734) b!7828674))

(assert (= (and b!7828680 (not res!3114730)) b!7828673))

(assert (= (and b!7828673 res!3114731) b!7828675))

(assert (= (or b!7828674 b!7828673) bm!726104))

(assert (= (or b!7828676 b!7828675) bm!726103))

(assert (= (or b!7828678 bm!726103) bm!726105))

(declare-fun m!8248120 () Bool)

(assert (=> b!7828679 m!8248120))

(declare-fun m!8248122 () Bool)

(assert (=> bm!726104 m!8248122))

(declare-fun m!8248124 () Bool)

(assert (=> bm!726105 m!8248124))

(assert (=> d!2350463 d!2350741))

(assert (=> b!7827682 d!2350707))

(declare-fun d!2350743 () Bool)

(declare-fun lt!2676884 () Int)

(assert (=> d!2350743 (>= lt!2676884 0)))

(declare-fun e!4630554 () Int)

(assert (=> d!2350743 (= lt!2676884 e!4630554)))

(declare-fun c!1440371 () Bool)

(assert (=> d!2350743 (= c!1440371 (is-Nil!73667 (t!388526 (t!388526 s!14274))))))

(assert (=> d!2350743 (= (size!42754 (t!388526 (t!388526 s!14274))) lt!2676884)))

(declare-fun b!7828682 () Bool)

(assert (=> b!7828682 (= e!4630554 0)))

(declare-fun b!7828683 () Bool)

(assert (=> b!7828683 (= e!4630554 (+ 1 (size!42754 (t!388526 (t!388526 (t!388526 s!14274))))))))

(assert (= (and d!2350743 c!1440371) b!7828682))

(assert (= (and d!2350743 (not c!1440371)) b!7828683))

(declare-fun m!8248126 () Bool)

(assert (=> b!7828683 m!8248126))

(assert (=> b!7827681 d!2350743))

(declare-fun b!7828684 () Bool)

(declare-fun e!4630557 () Regex!20954)

(declare-fun e!4630559 () Regex!20954)

(assert (=> b!7828684 (= e!4630557 e!4630559)))

(declare-fun c!1440374 () Bool)

(assert (=> b!7828684 (= c!1440374 (is-Star!20954 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(declare-fun b!7828685 () Bool)

(declare-fun call!726112 () Regex!20954)

(declare-fun call!726113 () Regex!20954)

(assert (=> b!7828685 (= e!4630557 (Union!20954 call!726112 call!726113))))

(declare-fun bm!726106 () Bool)

(declare-fun c!1440372 () Bool)

(assert (=> bm!726106 (= call!726113 (derivativeStep!6257 (ite c!1440372 (regTwo!42421 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))) (regTwo!42420 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))) (head!15987 s2Rec!453)))))

(declare-fun call!726114 () Regex!20954)

(declare-fun b!7828686 () Bool)

(declare-fun e!4630555 () Regex!20954)

(assert (=> b!7828686 (= e!4630555 (Union!20954 (Concat!29799 call!726114 (regTwo!42420 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))) EmptyLang!20954))))

(declare-fun bm!726107 () Bool)

(declare-fun call!726111 () Regex!20954)

(assert (=> bm!726107 (= call!726114 call!726111)))

(declare-fun d!2350745 () Bool)

(declare-fun lt!2676885 () Regex!20954)

(assert (=> d!2350745 (validRegex!11368 lt!2676885)))

(declare-fun e!4630556 () Regex!20954)

(assert (=> d!2350745 (= lt!2676885 e!4630556)))

(declare-fun c!1440373 () Bool)

(assert (=> d!2350745 (= c!1440373 (or (is-EmptyExpr!20954 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))) (is-EmptyLang!20954 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))))))

(assert (=> d!2350745 (validRegex!11368 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))))

(assert (=> d!2350745 (= (derivativeStep!6257 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)) (head!15987 s2Rec!453)) lt!2676885)))

(declare-fun bm!726108 () Bool)

(assert (=> bm!726108 (= call!726112 (derivativeStep!6257 (ite c!1440372 (regOne!42421 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))) (ite c!1440374 (reg!21283 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))) (regOne!42420 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))) (head!15987 s2Rec!453)))))

(declare-fun b!7828687 () Bool)

(declare-fun e!4630558 () Regex!20954)

(assert (=> b!7828687 (= e!4630556 e!4630558)))

(declare-fun c!1440375 () Bool)

(assert (=> b!7828687 (= c!1440375 (is-ElementMatch!20954 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(declare-fun b!7828688 () Bool)

(assert (=> b!7828688 (= e!4630558 (ite (= (head!15987 s2Rec!453) (c!1440089 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828689 () Bool)

(assert (=> b!7828689 (= e!4630555 (Union!20954 (Concat!29799 call!726114 (regTwo!42420 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))) call!726113))))

(declare-fun b!7828690 () Bool)

(assert (=> b!7828690 (= e!4630556 EmptyLang!20954)))

(declare-fun b!7828691 () Bool)

(assert (=> b!7828691 (= e!4630559 (Concat!29799 call!726111 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(declare-fun b!7828692 () Bool)

(declare-fun c!1440376 () Bool)

(assert (=> b!7828692 (= c!1440376 (nullable!9298 (regOne!42420 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))))))

(assert (=> b!7828692 (= e!4630559 e!4630555)))

(declare-fun bm!726109 () Bool)

(assert (=> bm!726109 (= call!726111 call!726112)))

(declare-fun b!7828693 () Bool)

(assert (=> b!7828693 (= c!1440372 (is-Union!20954 (ite c!1440199 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(assert (=> b!7828693 (= e!4630558 e!4630557)))

(assert (= (and d!2350745 c!1440373) b!7828690))

(assert (= (and d!2350745 (not c!1440373)) b!7828687))

(assert (= (and b!7828687 c!1440375) b!7828688))

(assert (= (and b!7828687 (not c!1440375)) b!7828693))

(assert (= (and b!7828693 c!1440372) b!7828685))

(assert (= (and b!7828693 (not c!1440372)) b!7828684))

(assert (= (and b!7828684 c!1440374) b!7828691))

(assert (= (and b!7828684 (not c!1440374)) b!7828692))

(assert (= (and b!7828692 c!1440376) b!7828689))

(assert (= (and b!7828692 (not c!1440376)) b!7828686))

(assert (= (or b!7828689 b!7828686) bm!726107))

(assert (= (or b!7828691 bm!726107) bm!726109))

(assert (= (or b!7828685 bm!726109) bm!726108))

(assert (= (or b!7828685 b!7828689) bm!726106))

(assert (=> bm!726106 m!8247414))

(declare-fun m!8248128 () Bool)

(assert (=> bm!726106 m!8248128))

(declare-fun m!8248130 () Bool)

(assert (=> d!2350745 m!8248130))

(declare-fun m!8248132 () Bool)

(assert (=> d!2350745 m!8248132))

(assert (=> bm!726108 m!8247414))

(declare-fun m!8248134 () Bool)

(assert (=> bm!726108 m!8248134))

(declare-fun m!8248136 () Bool)

(assert (=> b!7828692 m!8248136))

(assert (=> bm!725983 d!2350745))

(declare-fun d!2350747 () Bool)

(assert (=> d!2350747 (= (nullable!9298 (regOne!42420 r1!6261)) (nullableFct!3667 (regOne!42420 r1!6261)))))

(declare-fun bs!1966797 () Bool)

(assert (= bs!1966797 d!2350747))

(declare-fun m!8248138 () Bool)

(assert (=> bs!1966797 m!8248138))

(assert (=> b!7827678 d!2350747))

(assert (=> b!7827704 d!2350747))

(assert (=> b!7827730 d!2350731))

(declare-fun d!2350749 () Bool)

(declare-fun lt!2676886 () Int)

(assert (=> d!2350749 (>= lt!2676886 0)))

(declare-fun e!4630560 () Int)

(assert (=> d!2350749 (= lt!2676886 e!4630560)))

(declare-fun c!1440377 () Bool)

(assert (=> d!2350749 (= c!1440377 (is-Nil!73667 lt!2676843))))

(assert (=> d!2350749 (= (size!42754 lt!2676843) lt!2676886)))

(declare-fun b!7828694 () Bool)

(assert (=> b!7828694 (= e!4630560 0)))

(declare-fun b!7828695 () Bool)

(assert (=> b!7828695 (= e!4630560 (+ 1 (size!42754 (t!388526 lt!2676843))))))

(assert (= (and d!2350749 c!1440377) b!7828694))

(assert (= (and d!2350749 (not c!1440377)) b!7828695))

(declare-fun m!8248140 () Bool)

(assert (=> b!7828695 m!8248140))

(assert (=> b!7827766 d!2350749))

(assert (=> b!7827766 d!2350505))

(assert (=> b!7827766 d!2350443))

(declare-fun d!2350751 () Bool)

(declare-fun lt!2676887 () Int)

(assert (=> d!2350751 (>= lt!2676887 0)))

(declare-fun e!4630561 () Int)

(assert (=> d!2350751 (= lt!2676887 e!4630561)))

(declare-fun c!1440378 () Bool)

(assert (=> d!2350751 (= c!1440378 (is-Nil!73667 (t!388526 (t!388526 s1!4101))))))

(assert (=> d!2350751 (= (size!42754 (t!388526 (t!388526 s1!4101))) lt!2676887)))

(declare-fun b!7828696 () Bool)

(assert (=> b!7828696 (= e!4630561 0)))

(declare-fun b!7828697 () Bool)

(assert (=> b!7828697 (= e!4630561 (+ 1 (size!42754 (t!388526 (t!388526 (t!388526 s1!4101))))))))

(assert (= (and d!2350751 c!1440378) b!7828696))

(assert (= (and d!2350751 (not c!1440378)) b!7828697))

(declare-fun m!8248142 () Bool)

(assert (=> b!7828697 m!8248142))

(assert (=> b!7827821 d!2350751))

(assert (=> b!7827784 d!2350719))

(declare-fun b!7828698 () Bool)

(declare-fun e!4630563 () Bool)

(assert (=> b!7828698 (= e!4630563 (= (head!15987 (tail!15528 (tail!15528 s1!4101))) (c!1440089 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101))))))))

(declare-fun b!7828699 () Bool)

(declare-fun e!4630565 () Bool)

(declare-fun e!4630566 () Bool)

(assert (=> b!7828699 (= e!4630565 e!4630566)))

(declare-fun res!3114735 () Bool)

(assert (=> b!7828699 (=> (not res!3114735) (not e!4630566))))

(declare-fun lt!2676888 () Bool)

(assert (=> b!7828699 (= res!3114735 (not lt!2676888))))

(declare-fun b!7828700 () Bool)

(declare-fun e!4630568 () Bool)

(assert (=> b!7828700 (= e!4630568 (not (= (head!15987 (tail!15528 (tail!15528 s1!4101))) (c!1440089 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101)))))))))

(declare-fun b!7828701 () Bool)

(declare-fun res!3114736 () Bool)

(assert (=> b!7828701 (=> (not res!3114736) (not e!4630563))))

(assert (=> b!7828701 (= res!3114736 (isEmpty!42286 (tail!15528 (tail!15528 (tail!15528 s1!4101)))))))

(declare-fun b!7828702 () Bool)

(declare-fun e!4630567 () Bool)

(assert (=> b!7828702 (= e!4630567 (not lt!2676888))))

(declare-fun b!7828703 () Bool)

(declare-fun res!3114738 () Bool)

(assert (=> b!7828703 (=> res!3114738 e!4630565)))

(assert (=> b!7828703 (= res!3114738 e!4630563)))

(declare-fun res!3114742 () Bool)

(assert (=> b!7828703 (=> (not res!3114742) (not e!4630563))))

(assert (=> b!7828703 (= res!3114742 lt!2676888)))

(declare-fun b!7828704 () Bool)

(declare-fun res!3114739 () Bool)

(assert (=> b!7828704 (=> res!3114739 e!4630565)))

(assert (=> b!7828704 (= res!3114739 (not (is-ElementMatch!20954 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101))))))))

(assert (=> b!7828704 (= e!4630567 e!4630565)))

(declare-fun b!7828705 () Bool)

(declare-fun e!4630564 () Bool)

(declare-fun call!726115 () Bool)

(assert (=> b!7828705 (= e!4630564 (= lt!2676888 call!726115))))

(declare-fun b!7828706 () Bool)

(assert (=> b!7828706 (= e!4630566 e!4630568)))

(declare-fun res!3114737 () Bool)

(assert (=> b!7828706 (=> res!3114737 e!4630568)))

(assert (=> b!7828706 (= res!3114737 call!726115)))

(declare-fun b!7828707 () Bool)

(declare-fun res!3114741 () Bool)

(assert (=> b!7828707 (=> res!3114741 e!4630568)))

(assert (=> b!7828707 (= res!3114741 (not (isEmpty!42286 (tail!15528 (tail!15528 (tail!15528 s1!4101))))))))

(declare-fun b!7828708 () Bool)

(declare-fun e!4630562 () Bool)

(assert (=> b!7828708 (= e!4630562 (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101))) (head!15987 (tail!15528 (tail!15528 s1!4101)))) (tail!15528 (tail!15528 (tail!15528 s1!4101)))))))

(declare-fun d!2350753 () Bool)

(assert (=> d!2350753 e!4630564))

(declare-fun c!1440380 () Bool)

(assert (=> d!2350753 (= c!1440380 (is-EmptyExpr!20954 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101)))))))

(assert (=> d!2350753 (= lt!2676888 e!4630562)))

(declare-fun c!1440381 () Bool)

(assert (=> d!2350753 (= c!1440381 (isEmpty!42286 (tail!15528 (tail!15528 s1!4101))))))

(assert (=> d!2350753 (validRegex!11368 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101))))))

(assert (=> d!2350753 (= (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101))) (tail!15528 (tail!15528 s1!4101))) lt!2676888)))

(declare-fun bm!726110 () Bool)

(assert (=> bm!726110 (= call!726115 (isEmpty!42286 (tail!15528 (tail!15528 s1!4101))))))

(declare-fun b!7828709 () Bool)

(assert (=> b!7828709 (= e!4630564 e!4630567)))

(declare-fun c!1440379 () Bool)

(assert (=> b!7828709 (= c!1440379 (is-EmptyLang!20954 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101)))))))

(declare-fun b!7828710 () Bool)

(declare-fun res!3114740 () Bool)

(assert (=> b!7828710 (=> (not res!3114740) (not e!4630563))))

(assert (=> b!7828710 (= res!3114740 (not call!726115))))

(declare-fun b!7828711 () Bool)

(assert (=> b!7828711 (= e!4630562 (nullable!9298 (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101)))))))

(assert (= (and d!2350753 c!1440381) b!7828711))

(assert (= (and d!2350753 (not c!1440381)) b!7828708))

(assert (= (and d!2350753 c!1440380) b!7828705))

(assert (= (and d!2350753 (not c!1440380)) b!7828709))

(assert (= (and b!7828709 c!1440379) b!7828702))

(assert (= (and b!7828709 (not c!1440379)) b!7828704))

(assert (= (and b!7828704 (not res!3114739)) b!7828703))

(assert (= (and b!7828703 res!3114742) b!7828710))

(assert (= (and b!7828710 res!3114740) b!7828701))

(assert (= (and b!7828701 res!3114736) b!7828698))

(assert (= (and b!7828703 (not res!3114738)) b!7828699))

(assert (= (and b!7828699 res!3114735) b!7828706))

(assert (= (and b!7828706 (not res!3114737)) b!7828707))

(assert (= (and b!7828707 (not res!3114741)) b!7828700))

(assert (= (or b!7828705 b!7828706 b!7828710) bm!726110))

(assert (=> b!7828707 m!8247564))

(declare-fun m!8248144 () Bool)

(assert (=> b!7828707 m!8248144))

(assert (=> b!7828707 m!8248144))

(declare-fun m!8248146 () Bool)

(assert (=> b!7828707 m!8248146))

(assert (=> b!7828698 m!8247564))

(declare-fun m!8248148 () Bool)

(assert (=> b!7828698 m!8248148))

(assert (=> d!2350753 m!8247564))

(assert (=> d!2350753 m!8247566))

(assert (=> d!2350753 m!8247574))

(declare-fun m!8248150 () Bool)

(assert (=> d!2350753 m!8248150))

(assert (=> b!7828711 m!8247574))

(declare-fun m!8248152 () Bool)

(assert (=> b!7828711 m!8248152))

(assert (=> bm!726110 m!8247564))

(assert (=> bm!726110 m!8247566))

(assert (=> b!7828701 m!8247564))

(assert (=> b!7828701 m!8248144))

(assert (=> b!7828701 m!8248144))

(assert (=> b!7828701 m!8248146))

(assert (=> b!7828700 m!8247564))

(assert (=> b!7828700 m!8248148))

(assert (=> b!7828708 m!8247564))

(assert (=> b!7828708 m!8248148))

(assert (=> b!7828708 m!8247574))

(assert (=> b!7828708 m!8248148))

(declare-fun m!8248154 () Bool)

(assert (=> b!7828708 m!8248154))

(assert (=> b!7828708 m!8247564))

(assert (=> b!7828708 m!8248144))

(assert (=> b!7828708 m!8248154))

(assert (=> b!7828708 m!8248144))

(declare-fun m!8248156 () Bool)

(assert (=> b!7828708 m!8248156))

(assert (=> b!7827646 d!2350753))

(declare-fun b!7828712 () Bool)

(declare-fun e!4630571 () Regex!20954)

(declare-fun e!4630573 () Regex!20954)

(assert (=> b!7828712 (= e!4630571 e!4630573)))

(declare-fun c!1440384 () Bool)

(assert (=> b!7828712 (= c!1440384 (is-Star!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(declare-fun b!7828713 () Bool)

(declare-fun call!726117 () Regex!20954)

(declare-fun call!726118 () Regex!20954)

(assert (=> b!7828713 (= e!4630571 (Union!20954 call!726117 call!726118))))

(declare-fun bm!726111 () Bool)

(declare-fun c!1440382 () Bool)

(assert (=> bm!726111 (= call!726118 (derivativeStep!6257 (ite c!1440382 (regTwo!42421 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) (regTwo!42420 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))) (head!15987 (tail!15528 s1!4101))))))

(declare-fun call!726119 () Regex!20954)

(declare-fun e!4630569 () Regex!20954)

(declare-fun b!7828714 () Bool)

(assert (=> b!7828714 (= e!4630569 (Union!20954 (Concat!29799 call!726119 (regTwo!42420 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))) EmptyLang!20954))))

(declare-fun bm!726112 () Bool)

(declare-fun call!726116 () Regex!20954)

(assert (=> bm!726112 (= call!726119 call!726116)))

(declare-fun d!2350755 () Bool)

(declare-fun lt!2676889 () Regex!20954)

(assert (=> d!2350755 (validRegex!11368 lt!2676889)))

(declare-fun e!4630570 () Regex!20954)

(assert (=> d!2350755 (= lt!2676889 e!4630570)))

(declare-fun c!1440383 () Bool)

(assert (=> d!2350755 (= c!1440383 (or (is-EmptyExpr!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) (is-EmptyLang!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))))))

(assert (=> d!2350755 (validRegex!11368 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))))

(assert (=> d!2350755 (= (derivativeStep!6257 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)) (head!15987 (tail!15528 s1!4101))) lt!2676889)))

(declare-fun bm!726113 () Bool)

(assert (=> bm!726113 (= call!726117 (derivativeStep!6257 (ite c!1440382 (regOne!42421 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) (ite c!1440384 (reg!21283 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) (regOne!42420 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))) (head!15987 (tail!15528 s1!4101))))))

(declare-fun b!7828715 () Bool)

(declare-fun e!4630572 () Regex!20954)

(assert (=> b!7828715 (= e!4630570 e!4630572)))

(declare-fun c!1440385 () Bool)

(assert (=> b!7828715 (= c!1440385 (is-ElementMatch!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(declare-fun b!7828716 () Bool)

(assert (=> b!7828716 (= e!4630572 (ite (= (head!15987 (tail!15528 s1!4101)) (c!1440089 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828717 () Bool)

(assert (=> b!7828717 (= e!4630569 (Union!20954 (Concat!29799 call!726119 (regTwo!42420 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))) call!726118))))

(declare-fun b!7828718 () Bool)

(assert (=> b!7828718 (= e!4630570 EmptyLang!20954)))

(declare-fun b!7828719 () Bool)

(assert (=> b!7828719 (= e!4630573 (Concat!29799 call!726116 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(declare-fun b!7828720 () Bool)

(declare-fun c!1440386 () Bool)

(assert (=> b!7828720 (= c!1440386 (nullable!9298 (regOne!42420 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))))))

(assert (=> b!7828720 (= e!4630573 e!4630569)))

(declare-fun bm!726114 () Bool)

(assert (=> bm!726114 (= call!726116 call!726117)))

(declare-fun b!7828721 () Bool)

(assert (=> b!7828721 (= c!1440382 (is-Union!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(assert (=> b!7828721 (= e!4630572 e!4630571)))

(assert (= (and d!2350755 c!1440383) b!7828718))

(assert (= (and d!2350755 (not c!1440383)) b!7828715))

(assert (= (and b!7828715 c!1440385) b!7828716))

(assert (= (and b!7828715 (not c!1440385)) b!7828721))

(assert (= (and b!7828721 c!1440382) b!7828713))

(assert (= (and b!7828721 (not c!1440382)) b!7828712))

(assert (= (and b!7828712 c!1440384) b!7828719))

(assert (= (and b!7828712 (not c!1440384)) b!7828720))

(assert (= (and b!7828720 c!1440386) b!7828717))

(assert (= (and b!7828720 (not c!1440386)) b!7828714))

(assert (= (or b!7828717 b!7828714) bm!726112))

(assert (= (or b!7828719 bm!726112) bm!726114))

(assert (= (or b!7828713 bm!726114) bm!726113))

(assert (= (or b!7828713 b!7828717) bm!726111))

(assert (=> bm!726111 m!8247568))

(declare-fun m!8248158 () Bool)

(assert (=> bm!726111 m!8248158))

(declare-fun m!8248160 () Bool)

(assert (=> d!2350755 m!8248160))

(assert (=> d!2350755 m!8247464))

(assert (=> d!2350755 m!8247570))

(assert (=> bm!726113 m!8247568))

(declare-fun m!8248162 () Bool)

(assert (=> bm!726113 m!8248162))

(declare-fun m!8248164 () Bool)

(assert (=> b!7828720 m!8248164))

(assert (=> b!7827646 d!2350755))

(assert (=> b!7827646 d!2350643))

(assert (=> b!7827646 d!2350673))

(declare-fun d!2350757 () Bool)

(assert (=> d!2350757 (= (nullable!9298 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) (nullableFct!3667 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(declare-fun bs!1966798 () Bool)

(assert (= bs!1966798 d!2350757))

(assert (=> bs!1966798 m!8247388))

(declare-fun m!8248166 () Bool)

(assert (=> bs!1966798 m!8248166))

(assert (=> b!7827809 d!2350757))

(declare-fun b!7828722 () Bool)

(declare-fun e!4630575 () Bool)

(assert (=> b!7828722 (= e!4630575 (= (head!15987 (tail!15528 (tail!15528 s2!3721))) (c!1440089 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721))))))))

(declare-fun b!7828723 () Bool)

(declare-fun e!4630577 () Bool)

(declare-fun e!4630578 () Bool)

(assert (=> b!7828723 (= e!4630577 e!4630578)))

(declare-fun res!3114743 () Bool)

(assert (=> b!7828723 (=> (not res!3114743) (not e!4630578))))

(declare-fun lt!2676890 () Bool)

(assert (=> b!7828723 (= res!3114743 (not lt!2676890))))

(declare-fun b!7828724 () Bool)

(declare-fun e!4630580 () Bool)

(assert (=> b!7828724 (= e!4630580 (not (= (head!15987 (tail!15528 (tail!15528 s2!3721))) (c!1440089 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721)))))))))

(declare-fun b!7828725 () Bool)

(declare-fun res!3114744 () Bool)

(assert (=> b!7828725 (=> (not res!3114744) (not e!4630575))))

(assert (=> b!7828725 (= res!3114744 (isEmpty!42286 (tail!15528 (tail!15528 (tail!15528 s2!3721)))))))

(declare-fun b!7828726 () Bool)

(declare-fun e!4630579 () Bool)

(assert (=> b!7828726 (= e!4630579 (not lt!2676890))))

(declare-fun b!7828727 () Bool)

(declare-fun res!3114746 () Bool)

(assert (=> b!7828727 (=> res!3114746 e!4630577)))

(assert (=> b!7828727 (= res!3114746 e!4630575)))

(declare-fun res!3114750 () Bool)

(assert (=> b!7828727 (=> (not res!3114750) (not e!4630575))))

(assert (=> b!7828727 (= res!3114750 lt!2676890)))

(declare-fun b!7828728 () Bool)

(declare-fun res!3114747 () Bool)

(assert (=> b!7828728 (=> res!3114747 e!4630577)))

(assert (=> b!7828728 (= res!3114747 (not (is-ElementMatch!20954 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721))))))))

(assert (=> b!7828728 (= e!4630579 e!4630577)))

(declare-fun b!7828729 () Bool)

(declare-fun e!4630576 () Bool)

(declare-fun call!726120 () Bool)

(assert (=> b!7828729 (= e!4630576 (= lt!2676890 call!726120))))

(declare-fun b!7828730 () Bool)

(assert (=> b!7828730 (= e!4630578 e!4630580)))

(declare-fun res!3114745 () Bool)

(assert (=> b!7828730 (=> res!3114745 e!4630580)))

(assert (=> b!7828730 (= res!3114745 call!726120)))

(declare-fun b!7828731 () Bool)

(declare-fun res!3114749 () Bool)

(assert (=> b!7828731 (=> res!3114749 e!4630580)))

(assert (=> b!7828731 (= res!3114749 (not (isEmpty!42286 (tail!15528 (tail!15528 (tail!15528 s2!3721))))))))

(declare-fun b!7828732 () Bool)

(declare-fun e!4630574 () Bool)

(assert (=> b!7828732 (= e!4630574 (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721))) (head!15987 (tail!15528 (tail!15528 s2!3721)))) (tail!15528 (tail!15528 (tail!15528 s2!3721)))))))

(declare-fun d!2350759 () Bool)

(assert (=> d!2350759 e!4630576))

(declare-fun c!1440388 () Bool)

(assert (=> d!2350759 (= c!1440388 (is-EmptyExpr!20954 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721)))))))

(assert (=> d!2350759 (= lt!2676890 e!4630574)))

(declare-fun c!1440389 () Bool)

(assert (=> d!2350759 (= c!1440389 (isEmpty!42286 (tail!15528 (tail!15528 s2!3721))))))

(assert (=> d!2350759 (validRegex!11368 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721))))))

(assert (=> d!2350759 (= (matchR!10410 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721))) (tail!15528 (tail!15528 s2!3721))) lt!2676890)))

(declare-fun bm!726115 () Bool)

(assert (=> bm!726115 (= call!726120 (isEmpty!42286 (tail!15528 (tail!15528 s2!3721))))))

(declare-fun b!7828733 () Bool)

(assert (=> b!7828733 (= e!4630576 e!4630579)))

(declare-fun c!1440387 () Bool)

(assert (=> b!7828733 (= c!1440387 (is-EmptyLang!20954 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721)))))))

(declare-fun b!7828734 () Bool)

(declare-fun res!3114748 () Bool)

(assert (=> b!7828734 (=> (not res!3114748) (not e!4630575))))

(assert (=> b!7828734 (= res!3114748 (not call!726120))))

(declare-fun b!7828735 () Bool)

(assert (=> b!7828735 (= e!4630574 (nullable!9298 (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721)))))))

(assert (= (and d!2350759 c!1440389) b!7828735))

(assert (= (and d!2350759 (not c!1440389)) b!7828732))

(assert (= (and d!2350759 c!1440388) b!7828729))

(assert (= (and d!2350759 (not c!1440388)) b!7828733))

(assert (= (and b!7828733 c!1440387) b!7828726))

(assert (= (and b!7828733 (not c!1440387)) b!7828728))

(assert (= (and b!7828728 (not res!3114747)) b!7828727))

(assert (= (and b!7828727 res!3114750) b!7828734))

(assert (= (and b!7828734 res!3114748) b!7828725))

(assert (= (and b!7828725 res!3114744) b!7828722))

(assert (= (and b!7828727 (not res!3114746)) b!7828723))

(assert (= (and b!7828723 res!3114743) b!7828730))

(assert (= (and b!7828730 (not res!3114745)) b!7828731))

(assert (= (and b!7828731 (not res!3114749)) b!7828724))

(assert (= (or b!7828729 b!7828730 b!7828734) bm!726115))

(assert (=> b!7828731 m!8247700))

(declare-fun m!8248168 () Bool)

(assert (=> b!7828731 m!8248168))

(assert (=> b!7828731 m!8248168))

(declare-fun m!8248170 () Bool)

(assert (=> b!7828731 m!8248170))

(assert (=> b!7828722 m!8247700))

(declare-fun m!8248172 () Bool)

(assert (=> b!7828722 m!8248172))

(assert (=> d!2350759 m!8247700))

(assert (=> d!2350759 m!8247702))

(assert (=> d!2350759 m!8247710))

(declare-fun m!8248174 () Bool)

(assert (=> d!2350759 m!8248174))

(assert (=> b!7828735 m!8247710))

(declare-fun m!8248176 () Bool)

(assert (=> b!7828735 m!8248176))

(assert (=> bm!726115 m!8247700))

(assert (=> bm!726115 m!8247702))

(assert (=> b!7828725 m!8247700))

(assert (=> b!7828725 m!8248168))

(assert (=> b!7828725 m!8248168))

(assert (=> b!7828725 m!8248170))

(assert (=> b!7828724 m!8247700))

(assert (=> b!7828724 m!8248172))

(assert (=> b!7828732 m!8247700))

(assert (=> b!7828732 m!8248172))

(assert (=> b!7828732 m!8247710))

(assert (=> b!7828732 m!8248172))

(declare-fun m!8248178 () Bool)

(assert (=> b!7828732 m!8248178))

(assert (=> b!7828732 m!8247700))

(assert (=> b!7828732 m!8248168))

(assert (=> b!7828732 m!8248178))

(assert (=> b!7828732 m!8248168))

(declare-fun m!8248180 () Bool)

(assert (=> b!7828732 m!8248180))

(assert (=> b!7827806 d!2350759))

(declare-fun b!7828736 () Bool)

(declare-fun e!4630583 () Regex!20954)

(declare-fun e!4630585 () Regex!20954)

(assert (=> b!7828736 (= e!4630583 e!4630585)))

(declare-fun c!1440392 () Bool)

(assert (=> b!7828736 (= c!1440392 (is-Star!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(declare-fun b!7828737 () Bool)

(declare-fun call!726122 () Regex!20954)

(declare-fun call!726123 () Regex!20954)

(assert (=> b!7828737 (= e!4630583 (Union!20954 call!726122 call!726123))))

(declare-fun bm!726116 () Bool)

(declare-fun c!1440390 () Bool)

(assert (=> bm!726116 (= call!726123 (derivativeStep!6257 (ite c!1440390 (regTwo!42421 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) (regTwo!42420 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))) (head!15987 (tail!15528 s2!3721))))))

(declare-fun b!7828738 () Bool)

(declare-fun e!4630581 () Regex!20954)

(declare-fun call!726124 () Regex!20954)

(assert (=> b!7828738 (= e!4630581 (Union!20954 (Concat!29799 call!726124 (regTwo!42420 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))) EmptyLang!20954))))

(declare-fun bm!726117 () Bool)

(declare-fun call!726121 () Regex!20954)

(assert (=> bm!726117 (= call!726124 call!726121)))

(declare-fun d!2350761 () Bool)

(declare-fun lt!2676891 () Regex!20954)

(assert (=> d!2350761 (validRegex!11368 lt!2676891)))

(declare-fun e!4630582 () Regex!20954)

(assert (=> d!2350761 (= lt!2676891 e!4630582)))

(declare-fun c!1440391 () Bool)

(assert (=> d!2350761 (= c!1440391 (or (is-EmptyExpr!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) (is-EmptyLang!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))))))

(assert (=> d!2350761 (validRegex!11368 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))))

(assert (=> d!2350761 (= (derivativeStep!6257 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)) (head!15987 (tail!15528 s2!3721))) lt!2676891)))

(declare-fun bm!726118 () Bool)

(assert (=> bm!726118 (= call!726122 (derivativeStep!6257 (ite c!1440390 (regOne!42421 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) (ite c!1440392 (reg!21283 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))) (regOne!42420 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))) (head!15987 (tail!15528 s2!3721))))))

(declare-fun b!7828739 () Bool)

(declare-fun e!4630584 () Regex!20954)

(assert (=> b!7828739 (= e!4630582 e!4630584)))

(declare-fun c!1440393 () Bool)

(assert (=> b!7828739 (= c!1440393 (is-ElementMatch!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(declare-fun b!7828740 () Bool)

(assert (=> b!7828740 (= e!4630584 (ite (= (head!15987 (tail!15528 s2!3721)) (c!1440089 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828741 () Bool)

(assert (=> b!7828741 (= e!4630581 (Union!20954 (Concat!29799 call!726124 (regTwo!42420 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))) call!726123))))

(declare-fun b!7828742 () Bool)

(assert (=> b!7828742 (= e!4630582 EmptyLang!20954)))

(declare-fun b!7828743 () Bool)

(assert (=> b!7828743 (= e!4630585 (Concat!29799 call!726121 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(declare-fun b!7828744 () Bool)

(declare-fun c!1440394 () Bool)

(assert (=> b!7828744 (= c!1440394 (nullable!9298 (regOne!42420 (derivativeStep!6257 r2!6199 (head!15987 s2!3721)))))))

(assert (=> b!7828744 (= e!4630585 e!4630581)))

(declare-fun bm!726119 () Bool)

(assert (=> bm!726119 (= call!726121 call!726122)))

(declare-fun b!7828745 () Bool)

(assert (=> b!7828745 (= c!1440390 (is-Union!20954 (derivativeStep!6257 r2!6199 (head!15987 s2!3721))))))

(assert (=> b!7828745 (= e!4630584 e!4630583)))

(assert (= (and d!2350761 c!1440391) b!7828742))

(assert (= (and d!2350761 (not c!1440391)) b!7828739))

(assert (= (and b!7828739 c!1440393) b!7828740))

(assert (= (and b!7828739 (not c!1440393)) b!7828745))

(assert (= (and b!7828745 c!1440390) b!7828737))

(assert (= (and b!7828745 (not c!1440390)) b!7828736))

(assert (= (and b!7828736 c!1440392) b!7828743))

(assert (= (and b!7828736 (not c!1440392)) b!7828744))

(assert (= (and b!7828744 c!1440394) b!7828741))

(assert (= (and b!7828744 (not c!1440394)) b!7828738))

(assert (= (or b!7828741 b!7828738) bm!726117))

(assert (= (or b!7828743 bm!726117) bm!726119))

(assert (= (or b!7828737 bm!726119) bm!726118))

(assert (= (or b!7828737 b!7828741) bm!726116))

(assert (=> bm!726116 m!8247704))

(declare-fun m!8248182 () Bool)

(assert (=> bm!726116 m!8248182))

(declare-fun m!8248184 () Bool)

(assert (=> d!2350761 m!8248184))

(assert (=> d!2350761 m!8247388))

(assert (=> d!2350761 m!8247706))

(assert (=> bm!726118 m!8247704))

(declare-fun m!8248186 () Bool)

(assert (=> bm!726118 m!8248186))

(declare-fun m!8248188 () Bool)

(assert (=> b!7828744 m!8248188))

(assert (=> b!7827806 d!2350761))

(assert (=> b!7827806 d!2350633))

(assert (=> b!7827806 d!2350697))

(assert (=> d!2350493 d!2350449))

(declare-fun b!7828746 () Bool)

(declare-fun e!4630591 () Bool)

(declare-fun e!4630588 () Bool)

(assert (=> b!7828746 (= e!4630591 e!4630588)))

(declare-fun res!3114752 () Bool)

(assert (=> b!7828746 (=> (not res!3114752) (not e!4630588))))

(declare-fun call!726126 () Bool)

(assert (=> b!7828746 (= res!3114752 call!726126)))

(declare-fun b!7828748 () Bool)

(declare-fun call!726127 () Bool)

(assert (=> b!7828748 (= e!4630588 call!726127)))

(declare-fun b!7828749 () Bool)

(declare-fun res!3114755 () Bool)

(declare-fun e!4630589 () Bool)

(assert (=> b!7828749 (=> (not res!3114755) (not e!4630589))))

(assert (=> b!7828749 (= res!3114755 call!726127)))

(declare-fun e!4630592 () Bool)

(assert (=> b!7828749 (= e!4630592 e!4630589)))

(declare-fun b!7828750 () Bool)

(declare-fun e!4630587 () Bool)

(declare-fun e!4630590 () Bool)

(assert (=> b!7828750 (= e!4630587 e!4630590)))

(declare-fun c!1440396 () Bool)

(assert (=> b!7828750 (= c!1440396 (is-Star!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(declare-fun b!7828751 () Bool)

(declare-fun e!4630586 () Bool)

(declare-fun call!726125 () Bool)

(assert (=> b!7828751 (= e!4630586 call!726125)))

(declare-fun b!7828752 () Bool)

(assert (=> b!7828752 (= e!4630590 e!4630586)))

(declare-fun res!3114754 () Bool)

(assert (=> b!7828752 (= res!3114754 (not (nullable!9298 (reg!21283 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))))

(assert (=> b!7828752 (=> (not res!3114754) (not e!4630586))))

(declare-fun bm!726120 () Bool)

(assert (=> bm!726120 (= call!726127 call!726125)))

(declare-fun bm!726121 () Bool)

(declare-fun c!1440395 () Bool)

(assert (=> bm!726121 (= call!726126 (validRegex!11368 (ite c!1440395 (regTwo!42421 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) (regOne!42420 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))))

(declare-fun bm!726122 () Bool)

(assert (=> bm!726122 (= call!726125 (validRegex!11368 (ite c!1440396 (reg!21283 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) (ite c!1440395 (regOne!42421 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) (regTwo!42420 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))))))))

(declare-fun d!2350763 () Bool)

(declare-fun res!3114753 () Bool)

(assert (=> d!2350763 (=> res!3114753 e!4630587)))

(assert (=> d!2350763 (= res!3114753 (is-ElementMatch!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(assert (=> d!2350763 (= (validRegex!11368 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))) e!4630587)))

(declare-fun b!7828747 () Bool)

(assert (=> b!7828747 (= e!4630589 call!726126)))

(declare-fun b!7828753 () Bool)

(declare-fun res!3114751 () Bool)

(assert (=> b!7828753 (=> res!3114751 e!4630591)))

(assert (=> b!7828753 (= res!3114751 (not (is-Concat!29799 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453)))))))

(assert (=> b!7828753 (= e!4630592 e!4630591)))

(declare-fun b!7828754 () Bool)

(assert (=> b!7828754 (= e!4630590 e!4630592)))

(assert (=> b!7828754 (= c!1440395 (is-Union!20954 (derivativeStep!6257 r2!6199 (head!15987 s2Rec!453))))))

(assert (= (and d!2350763 (not res!3114753)) b!7828750))

(assert (= (and b!7828750 c!1440396) b!7828752))

(assert (= (and b!7828750 (not c!1440396)) b!7828754))

(assert (= (and b!7828752 res!3114754) b!7828751))

(assert (= (and b!7828754 c!1440395) b!7828749))

(assert (= (and b!7828754 (not c!1440395)) b!7828753))

(assert (= (and b!7828749 res!3114755) b!7828747))

(assert (= (and b!7828753 (not res!3114751)) b!7828746))

(assert (= (and b!7828746 res!3114752) b!7828748))

(assert (= (or b!7828747 b!7828746) bm!726121))

(assert (= (or b!7828749 b!7828748) bm!726120))

(assert (= (or b!7828751 bm!726120) bm!726122))

(declare-fun m!8248190 () Bool)

(assert (=> b!7828752 m!8248190))

(declare-fun m!8248192 () Bool)

(assert (=> bm!726121 m!8248192))

(declare-fun m!8248194 () Bool)

(assert (=> bm!726122 m!8248194))

(assert (=> d!2350493 d!2350763))

(declare-fun d!2350765 () Bool)

(declare-fun lt!2676892 () Int)

(assert (=> d!2350765 (>= lt!2676892 0)))

(declare-fun e!4630593 () Int)

(assert (=> d!2350765 (= lt!2676892 e!4630593)))

(declare-fun c!1440397 () Bool)

(assert (=> d!2350765 (= c!1440397 (is-Nil!73667 (t!388526 lt!2676811)))))

(assert (=> d!2350765 (= (size!42754 (t!388526 lt!2676811)) lt!2676892)))

(declare-fun b!7828755 () Bool)

(assert (=> b!7828755 (= e!4630593 0)))

(declare-fun b!7828756 () Bool)

(assert (=> b!7828756 (= e!4630593 (+ 1 (size!42754 (t!388526 (t!388526 lt!2676811)))))))

(assert (= (and d!2350765 c!1440397) b!7828755))

(assert (= (and d!2350765 (not c!1440397)) b!7828756))

(declare-fun m!8248196 () Bool)

(assert (=> b!7828756 m!8248196))

(assert (=> b!7827707 d!2350765))

(assert (=> b!7827728 d!2350731))

(declare-fun b!7828757 () Bool)

(declare-fun e!4630599 () Bool)

(declare-fun e!4630596 () Bool)

(assert (=> b!7828757 (= e!4630599 e!4630596)))

(declare-fun res!3114757 () Bool)

(assert (=> b!7828757 (=> (not res!3114757) (not e!4630596))))

(declare-fun call!726129 () Bool)

(assert (=> b!7828757 (= res!3114757 call!726129)))

(declare-fun b!7828759 () Bool)

(declare-fun call!726130 () Bool)

(assert (=> b!7828759 (= e!4630596 call!726130)))

(declare-fun b!7828760 () Bool)

(declare-fun res!3114760 () Bool)

(declare-fun e!4630597 () Bool)

(assert (=> b!7828760 (=> (not res!3114760) (not e!4630597))))

(assert (=> b!7828760 (= res!3114760 call!726130)))

(declare-fun e!4630600 () Bool)

(assert (=> b!7828760 (= e!4630600 e!4630597)))

(declare-fun b!7828761 () Bool)

(declare-fun e!4630595 () Bool)

(declare-fun e!4630598 () Bool)

(assert (=> b!7828761 (= e!4630595 e!4630598)))

(declare-fun c!1440399 () Bool)

(assert (=> b!7828761 (= c!1440399 (is-Star!20954 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))

(declare-fun b!7828762 () Bool)

(declare-fun e!4630594 () Bool)

(declare-fun call!726128 () Bool)

(assert (=> b!7828762 (= e!4630594 call!726128)))

(declare-fun b!7828763 () Bool)

(assert (=> b!7828763 (= e!4630598 e!4630594)))

(declare-fun res!3114759 () Bool)

(assert (=> b!7828763 (= res!3114759 (not (nullable!9298 (reg!21283 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))))

(assert (=> b!7828763 (=> (not res!3114759) (not e!4630594))))

(declare-fun bm!726123 () Bool)

(assert (=> bm!726123 (= call!726130 call!726128)))

(declare-fun c!1440398 () Bool)

(declare-fun bm!726124 () Bool)

(assert (=> bm!726124 (= call!726129 (validRegex!11368 (ite c!1440398 (regTwo!42421 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))) (regOne!42420 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))))

(declare-fun bm!726125 () Bool)

(assert (=> bm!726125 (= call!726128 (validRegex!11368 (ite c!1440399 (reg!21283 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))) (ite c!1440398 (regOne!42421 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))) (regTwo!42420 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))))))

(declare-fun d!2350767 () Bool)

(declare-fun res!3114758 () Bool)

(assert (=> d!2350767 (=> res!3114758 e!4630595)))

(assert (=> d!2350767 (= res!3114758 (is-ElementMatch!20954 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))

(assert (=> d!2350767 (= (validRegex!11368 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))) e!4630595)))

(declare-fun b!7828758 () Bool)

(assert (=> b!7828758 (= e!4630597 call!726129)))

(declare-fun b!7828764 () Bool)

(declare-fun res!3114756 () Bool)

(assert (=> b!7828764 (=> res!3114756 e!4630599)))

(assert (=> b!7828764 (= res!3114756 (not (is-Concat!29799 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))))

(assert (=> b!7828764 (= e!4630600 e!4630599)))

(declare-fun b!7828765 () Bool)

(assert (=> b!7828765 (= e!4630598 e!4630600)))

(assert (=> b!7828765 (= c!1440398 (is-Union!20954 (ite c!1440217 (regTwo!42421 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))) (regOne!42420 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199))))))))

(assert (= (and d!2350767 (not res!3114758)) b!7828761))

(assert (= (and b!7828761 c!1440399) b!7828763))

(assert (= (and b!7828761 (not c!1440399)) b!7828765))

(assert (= (and b!7828763 res!3114759) b!7828762))

(assert (= (and b!7828765 c!1440398) b!7828760))

(assert (= (and b!7828765 (not c!1440398)) b!7828764))

(assert (= (and b!7828760 res!3114760) b!7828758))

(assert (= (and b!7828764 (not res!3114756)) b!7828757))

(assert (= (and b!7828757 res!3114757) b!7828759))

(assert (= (or b!7828758 b!7828757) bm!726124))

(assert (= (or b!7828760 b!7828759) bm!726123))

(assert (= (or b!7828762 bm!726123) bm!726125))

(declare-fun m!8248198 () Bool)

(assert (=> b!7828763 m!8248198))

(declare-fun m!8248200 () Bool)

(assert (=> bm!726124 m!8248200))

(declare-fun m!8248202 () Bool)

(assert (=> bm!726125 m!8248202))

(assert (=> bm!725991 d!2350767))

(declare-fun b!7828766 () Bool)

(declare-fun e!4630603 () Regex!20954)

(declare-fun e!4630605 () Regex!20954)

(assert (=> b!7828766 (= e!4630603 e!4630605)))

(declare-fun c!1440402 () Bool)

(assert (=> b!7828766 (= c!1440402 (is-Star!20954 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))))

(declare-fun b!7828767 () Bool)

(declare-fun call!726132 () Regex!20954)

(declare-fun call!726133 () Regex!20954)

(assert (=> b!7828767 (= e!4630603 (Union!20954 call!726132 call!726133))))

(declare-fun c!1440400 () Bool)

(declare-fun bm!726126 () Bool)

(assert (=> bm!726126 (= call!726133 (derivativeStep!6257 (ite c!1440400 (regTwo!42421 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))) (regTwo!42420 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))))) (head!15987 s1!4101)))))

(declare-fun call!726134 () Regex!20954)

(declare-fun b!7828768 () Bool)

(declare-fun e!4630601 () Regex!20954)

(assert (=> b!7828768 (= e!4630601 (Union!20954 (Concat!29799 call!726134 (regTwo!42420 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))))) EmptyLang!20954))))

(declare-fun bm!726127 () Bool)

(declare-fun call!726131 () Regex!20954)

(assert (=> bm!726127 (= call!726134 call!726131)))

(declare-fun d!2350769 () Bool)

(declare-fun lt!2676893 () Regex!20954)

(assert (=> d!2350769 (validRegex!11368 lt!2676893)))

(declare-fun e!4630602 () Regex!20954)

(assert (=> d!2350769 (= lt!2676893 e!4630602)))

(declare-fun c!1440401 () Bool)

(assert (=> d!2350769 (= c!1440401 (or (is-EmptyExpr!20954 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))) (is-EmptyLang!20954 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))))))))

(assert (=> d!2350769 (validRegex!11368 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))))))

(assert (=> d!2350769 (= (derivativeStep!6257 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))) (head!15987 s1!4101)) lt!2676893)))

(declare-fun bm!726128 () Bool)

(assert (=> bm!726128 (= call!726132 (derivativeStep!6257 (ite c!1440400 (regOne!42421 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))) (ite c!1440402 (reg!21283 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))) (regOne!42420 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))) (head!15987 s1!4101)))))

(declare-fun b!7828769 () Bool)

(declare-fun e!4630604 () Regex!20954)

(assert (=> b!7828769 (= e!4630602 e!4630604)))

(declare-fun c!1440403 () Bool)

(assert (=> b!7828769 (= c!1440403 (is-ElementMatch!20954 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))))

(declare-fun b!7828770 () Bool)

(assert (=> b!7828770 (= e!4630604 (ite (= (head!15987 s1!4101) (c!1440089 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828771 () Bool)

(assert (=> b!7828771 (= e!4630601 (Union!20954 (Concat!29799 call!726134 (regTwo!42420 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))))) call!726133))))

(declare-fun b!7828772 () Bool)

(assert (=> b!7828772 (= e!4630602 EmptyLang!20954)))

(declare-fun b!7828773 () Bool)

(assert (=> b!7828773 (= e!4630605 (Concat!29799 call!726131 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))))

(declare-fun b!7828774 () Bool)

(declare-fun c!1440404 () Bool)

(assert (=> b!7828774 (= c!1440404 (nullable!9298 (regOne!42420 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261))))))))

(assert (=> b!7828774 (= e!4630605 e!4630601)))

(declare-fun bm!726129 () Bool)

(assert (=> bm!726129 (= call!726131 call!726132)))

(declare-fun b!7828775 () Bool)

(assert (=> b!7828775 (= c!1440400 (is-Union!20954 (ite c!1440176 (regOne!42421 r1!6261) (ite c!1440178 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))))

(assert (=> b!7828775 (= e!4630604 e!4630603)))

(assert (= (and d!2350769 c!1440401) b!7828772))

(assert (= (and d!2350769 (not c!1440401)) b!7828769))

(assert (= (and b!7828769 c!1440403) b!7828770))

(assert (= (and b!7828769 (not c!1440403)) b!7828775))

(assert (= (and b!7828775 c!1440400) b!7828767))

(assert (= (and b!7828775 (not c!1440400)) b!7828766))

(assert (= (and b!7828766 c!1440402) b!7828773))

(assert (= (and b!7828766 (not c!1440402)) b!7828774))

(assert (= (and b!7828774 c!1440404) b!7828771))

(assert (= (and b!7828774 (not c!1440404)) b!7828768))

(assert (= (or b!7828771 b!7828768) bm!726127))

(assert (= (or b!7828773 bm!726127) bm!726129))

(assert (= (or b!7828767 bm!726129) bm!726128))

(assert (= (or b!7828767 b!7828771) bm!726126))

(assert (=> bm!726126 m!8247400))

(declare-fun m!8248204 () Bool)

(assert (=> bm!726126 m!8248204))

(declare-fun m!8248206 () Bool)

(assert (=> d!2350769 m!8248206))

(declare-fun m!8248208 () Bool)

(assert (=> d!2350769 m!8248208))

(assert (=> bm!726128 m!8247400))

(declare-fun m!8248210 () Bool)

(assert (=> bm!726128 m!8248210))

(declare-fun m!8248212 () Bool)

(assert (=> b!7828774 m!8248212))

(assert (=> bm!725969 d!2350769))

(declare-fun d!2350771 () Bool)

(declare-fun c!1440405 () Bool)

(assert (=> d!2350771 (= c!1440405 (is-Nil!73667 (t!388526 lt!2676811)))))

(declare-fun e!4630606 () (Set C!42234))

(assert (=> d!2350771 (= (content!15639 (t!388526 lt!2676811)) e!4630606)))

(declare-fun b!7828776 () Bool)

(assert (=> b!7828776 (= e!4630606 (as set.empty (Set C!42234)))))

(declare-fun b!7828777 () Bool)

(assert (=> b!7828777 (= e!4630606 (set.union (set.insert (h!80115 (t!388526 lt!2676811)) (as set.empty (Set C!42234))) (content!15639 (t!388526 (t!388526 lt!2676811)))))))

(assert (= (and d!2350771 c!1440405) b!7828776))

(assert (= (and d!2350771 (not c!1440405)) b!7828777))

(declare-fun m!8248214 () Bool)

(assert (=> b!7828777 m!8248214))

(declare-fun m!8248216 () Bool)

(assert (=> b!7828777 m!8248216))

(assert (=> b!7827757 d!2350771))

(declare-fun d!2350773 () Bool)

(declare-fun lt!2676894 () Int)

(assert (=> d!2350773 (>= lt!2676894 0)))

(declare-fun e!4630607 () Int)

(assert (=> d!2350773 (= lt!2676894 e!4630607)))

(declare-fun c!1440406 () Bool)

(assert (=> d!2350773 (= c!1440406 (is-Nil!73667 (t!388526 lt!2676813)))))

(assert (=> d!2350773 (= (size!42754 (t!388526 lt!2676813)) lt!2676894)))

(declare-fun b!7828778 () Bool)

(assert (=> b!7828778 (= e!4630607 0)))

(declare-fun b!7828779 () Bool)

(assert (=> b!7828779 (= e!4630607 (+ 1 (size!42754 (t!388526 (t!388526 lt!2676813)))))))

(assert (= (and d!2350773 c!1440406) b!7828778))

(assert (= (and d!2350773 (not c!1440406)) b!7828779))

(declare-fun m!8248218 () Bool)

(assert (=> b!7828779 m!8248218))

(assert (=> b!7827633 d!2350773))

(declare-fun b!7828780 () Bool)

(declare-fun e!4630613 () Bool)

(declare-fun e!4630610 () Bool)

(assert (=> b!7828780 (= e!4630613 e!4630610)))

(declare-fun res!3114762 () Bool)

(assert (=> b!7828780 (=> (not res!3114762) (not e!4630610))))

(declare-fun call!726136 () Bool)

(assert (=> b!7828780 (= res!3114762 call!726136)))

(declare-fun b!7828782 () Bool)

(declare-fun call!726137 () Bool)

(assert (=> b!7828782 (= e!4630610 call!726137)))

(declare-fun b!7828783 () Bool)

(declare-fun res!3114765 () Bool)

(declare-fun e!4630611 () Bool)

(assert (=> b!7828783 (=> (not res!3114765) (not e!4630611))))

(assert (=> b!7828783 (= res!3114765 call!726137)))

(declare-fun e!4630614 () Bool)

(assert (=> b!7828783 (= e!4630614 e!4630611)))

(declare-fun b!7828784 () Bool)

(declare-fun e!4630609 () Bool)

(declare-fun e!4630612 () Bool)

(assert (=> b!7828784 (= e!4630609 e!4630612)))

(declare-fun c!1440408 () Bool)

(assert (=> b!7828784 (= c!1440408 (is-Star!20954 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))))

(declare-fun b!7828785 () Bool)

(declare-fun e!4630608 () Bool)

(declare-fun call!726135 () Bool)

(assert (=> b!7828785 (= e!4630608 call!726135)))

(declare-fun b!7828786 () Bool)

(assert (=> b!7828786 (= e!4630612 e!4630608)))

(declare-fun res!3114764 () Bool)

(assert (=> b!7828786 (= res!3114764 (not (nullable!9298 (reg!21283 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))))))

(assert (=> b!7828786 (=> (not res!3114764) (not e!4630608))))

(declare-fun bm!726130 () Bool)

(assert (=> bm!726130 (= call!726137 call!726135)))

(declare-fun bm!726131 () Bool)

(declare-fun c!1440407 () Bool)

(assert (=> bm!726131 (= call!726136 (validRegex!11368 (ite c!1440407 (regTwo!42421 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))) (regOne!42420 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))))))

(declare-fun bm!726132 () Bool)

(assert (=> bm!726132 (= call!726135 (validRegex!11368 (ite c!1440408 (reg!21283 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))) (ite c!1440407 (regOne!42421 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))) (regTwo!42420 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))))))

(declare-fun d!2350775 () Bool)

(declare-fun res!3114763 () Bool)

(assert (=> d!2350775 (=> res!3114763 e!4630609)))

(assert (=> d!2350775 (= res!3114763 (is-ElementMatch!20954 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))))

(assert (=> d!2350775 (= (validRegex!11368 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))) e!4630609)))

(declare-fun b!7828781 () Bool)

(assert (=> b!7828781 (= e!4630611 call!726136)))

(declare-fun b!7828787 () Bool)

(declare-fun res!3114761 () Bool)

(assert (=> b!7828787 (=> res!3114761 e!4630613)))

(assert (=> b!7828787 (= res!3114761 (not (is-Concat!29799 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))))))))))

(assert (=> b!7828787 (= e!4630614 e!4630613)))

(declare-fun b!7828788 () Bool)

(assert (=> b!7828788 (= e!4630612 e!4630614)))

(assert (=> b!7828788 (= c!1440407 (is-Union!20954 (ite c!1440212 (reg!21283 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (ite c!1440211 (regOne!42421 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261)))) (regTwo!42420 (ite c!1440100 (reg!21283 r1!6261) (ite c!1440099 (regOne!42421 r1!6261) (regTwo!42420 r1!6261))))))))))

(assert (= (and d!2350775 (not res!3114763)) b!7828784))

(assert (= (and b!7828784 c!1440408) b!7828786))

(assert (= (and b!7828784 (not c!1440408)) b!7828788))

(assert (= (and b!7828786 res!3114764) b!7828785))

(assert (= (and b!7828788 c!1440407) b!7828783))

(assert (= (and b!7828788 (not c!1440407)) b!7828787))

(assert (= (and b!7828783 res!3114765) b!7828781))

(assert (= (and b!7828787 (not res!3114761)) b!7828780))

(assert (= (and b!7828780 res!3114762) b!7828782))

(assert (= (or b!7828781 b!7828780) bm!726131))

(assert (= (or b!7828783 b!7828782) bm!726130))

(assert (= (or b!7828785 bm!726130) bm!726132))

(declare-fun m!8248220 () Bool)

(assert (=> b!7828786 m!8248220))

(declare-fun m!8248222 () Bool)

(assert (=> bm!726131 m!8248222))

(declare-fun m!8248224 () Bool)

(assert (=> bm!726132 m!8248224))

(assert (=> bm!725989 d!2350775))

(assert (=> b!7827691 d!2350649))

(assert (=> b!7827691 d!2350651))

(declare-fun b!7828789 () Bool)

(declare-fun e!4630620 () Bool)

(declare-fun e!4630617 () Bool)

(assert (=> b!7828789 (= e!4630620 e!4630617)))

(declare-fun res!3114767 () Bool)

(assert (=> b!7828789 (=> (not res!3114767) (not e!4630617))))

(declare-fun call!726139 () Bool)

(assert (=> b!7828789 (= res!3114767 call!726139)))

(declare-fun b!7828791 () Bool)

(declare-fun call!726140 () Bool)

(assert (=> b!7828791 (= e!4630617 call!726140)))

(declare-fun b!7828792 () Bool)

(declare-fun res!3114770 () Bool)

(declare-fun e!4630618 () Bool)

(assert (=> b!7828792 (=> (not res!3114770) (not e!4630618))))

(assert (=> b!7828792 (= res!3114770 call!726140)))

(declare-fun e!4630621 () Bool)

(assert (=> b!7828792 (= e!4630621 e!4630618)))

(declare-fun b!7828793 () Bool)

(declare-fun e!4630616 () Bool)

(declare-fun e!4630619 () Bool)

(assert (=> b!7828793 (= e!4630616 e!4630619)))

(declare-fun c!1440410 () Bool)

(assert (=> b!7828793 (= c!1440410 (is-Star!20954 lt!2676837))))

(declare-fun b!7828794 () Bool)

(declare-fun e!4630615 () Bool)

(declare-fun call!726138 () Bool)

(assert (=> b!7828794 (= e!4630615 call!726138)))

(declare-fun b!7828795 () Bool)

(assert (=> b!7828795 (= e!4630619 e!4630615)))

(declare-fun res!3114769 () Bool)

(assert (=> b!7828795 (= res!3114769 (not (nullable!9298 (reg!21283 lt!2676837))))))

(assert (=> b!7828795 (=> (not res!3114769) (not e!4630615))))

(declare-fun bm!726133 () Bool)

(assert (=> bm!726133 (= call!726140 call!726138)))

(declare-fun bm!726134 () Bool)

(declare-fun c!1440409 () Bool)

(assert (=> bm!726134 (= call!726139 (validRegex!11368 (ite c!1440409 (regTwo!42421 lt!2676837) (regOne!42420 lt!2676837))))))

(declare-fun bm!726135 () Bool)

(assert (=> bm!726135 (= call!726138 (validRegex!11368 (ite c!1440410 (reg!21283 lt!2676837) (ite c!1440409 (regOne!42421 lt!2676837) (regTwo!42420 lt!2676837)))))))

(declare-fun d!2350777 () Bool)

(declare-fun res!3114768 () Bool)

(assert (=> d!2350777 (=> res!3114768 e!4630616)))

(assert (=> d!2350777 (= res!3114768 (is-ElementMatch!20954 lt!2676837))))

(assert (=> d!2350777 (= (validRegex!11368 lt!2676837) e!4630616)))

(declare-fun b!7828790 () Bool)

(assert (=> b!7828790 (= e!4630618 call!726139)))

(declare-fun b!7828796 () Bool)

(declare-fun res!3114766 () Bool)

(assert (=> b!7828796 (=> res!3114766 e!4630620)))

(assert (=> b!7828796 (= res!3114766 (not (is-Concat!29799 lt!2676837)))))

(assert (=> b!7828796 (= e!4630621 e!4630620)))

(declare-fun b!7828797 () Bool)

(assert (=> b!7828797 (= e!4630619 e!4630621)))

(assert (=> b!7828797 (= c!1440409 (is-Union!20954 lt!2676837))))

(assert (= (and d!2350777 (not res!3114768)) b!7828793))

(assert (= (and b!7828793 c!1440410) b!7828795))

(assert (= (and b!7828793 (not c!1440410)) b!7828797))

(assert (= (and b!7828795 res!3114769) b!7828794))

(assert (= (and b!7828797 c!1440409) b!7828792))

(assert (= (and b!7828797 (not c!1440409)) b!7828796))

(assert (= (and b!7828792 res!3114770) b!7828790))

(assert (= (and b!7828796 (not res!3114766)) b!7828789))

(assert (= (and b!7828789 res!3114767) b!7828791))

(assert (= (or b!7828790 b!7828789) bm!726134))

(assert (= (or b!7828792 b!7828791) bm!726133))

(assert (= (or b!7828794 bm!726133) bm!726135))

(declare-fun m!8248226 () Bool)

(assert (=> b!7828795 m!8248226))

(declare-fun m!8248228 () Bool)

(assert (=> bm!726134 m!8248228))

(declare-fun m!8248230 () Bool)

(assert (=> bm!726135 m!8248230))

(assert (=> d!2350465 d!2350777))

(assert (=> d!2350465 d!2350395))

(declare-fun b!7828798 () Bool)

(declare-fun e!4630627 () Bool)

(declare-fun e!4630624 () Bool)

(assert (=> b!7828798 (= e!4630627 e!4630624)))

(declare-fun res!3114772 () Bool)

(assert (=> b!7828798 (=> (not res!3114772) (not e!4630624))))

(declare-fun call!726142 () Bool)

(assert (=> b!7828798 (= res!3114772 call!726142)))

(declare-fun b!7828800 () Bool)

(declare-fun call!726143 () Bool)

(assert (=> b!7828800 (= e!4630624 call!726143)))

(declare-fun b!7828801 () Bool)

(declare-fun res!3114775 () Bool)

(declare-fun e!4630625 () Bool)

(assert (=> b!7828801 (=> (not res!3114775) (not e!4630625))))

(assert (=> b!7828801 (= res!3114775 call!726143)))

(declare-fun e!4630628 () Bool)

(assert (=> b!7828801 (= e!4630628 e!4630625)))

(declare-fun b!7828802 () Bool)

(declare-fun e!4630623 () Bool)

(declare-fun e!4630626 () Bool)

(assert (=> b!7828802 (= e!4630623 e!4630626)))

(declare-fun c!1440412 () Bool)

(assert (=> b!7828802 (= c!1440412 (is-Star!20954 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))))

(declare-fun b!7828803 () Bool)

(declare-fun e!4630622 () Bool)

(declare-fun call!726141 () Bool)

(assert (=> b!7828803 (= e!4630622 call!726141)))

(declare-fun b!7828804 () Bool)

(assert (=> b!7828804 (= e!4630626 e!4630622)))

(declare-fun res!3114774 () Bool)

(assert (=> b!7828804 (= res!3114774 (not (nullable!9298 (reg!21283 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))))))

(assert (=> b!7828804 (=> (not res!3114774) (not e!4630622))))

(declare-fun bm!726136 () Bool)

(assert (=> bm!726136 (= call!726143 call!726141)))

(declare-fun c!1440411 () Bool)

(declare-fun bm!726137 () Bool)

(assert (=> bm!726137 (= call!726142 (validRegex!11368 (ite c!1440411 (regTwo!42421 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))) (regOne!42420 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))))))

(declare-fun bm!726138 () Bool)

(assert (=> bm!726138 (= call!726141 (validRegex!11368 (ite c!1440412 (reg!21283 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))) (ite c!1440411 (regOne!42421 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))) (regTwo!42420 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))))))

(declare-fun d!2350779 () Bool)

(declare-fun res!3114773 () Bool)

(assert (=> d!2350779 (=> res!3114773 e!4630623)))

(assert (=> d!2350779 (= res!3114773 (is-ElementMatch!20954 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))))

(assert (=> d!2350779 (= (validRegex!11368 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))) e!4630623)))

(declare-fun b!7828799 () Bool)

(assert (=> b!7828799 (= e!4630625 call!726142)))

(declare-fun b!7828805 () Bool)

(declare-fun res!3114771 () Bool)

(assert (=> b!7828805 (=> res!3114771 e!4630627)))

(assert (=> b!7828805 (= res!3114771 (not (is-Concat!29799 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))))))))))

(assert (=> b!7828805 (= e!4630628 e!4630627)))

(declare-fun b!7828806 () Bool)

(assert (=> b!7828806 (= e!4630626 e!4630628)))

(assert (=> b!7828806 (= c!1440411 (is-Union!20954 (ite c!1440193 (reg!21283 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (ite c!1440192 (regOne!42421 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199)))) (regTwo!42420 (ite c!1440113 (reg!21283 r2!6199) (ite c!1440112 (regOne!42421 r2!6199) (regTwo!42420 r2!6199))))))))))

(assert (= (and d!2350779 (not res!3114773)) b!7828802))

(assert (= (and b!7828802 c!1440412) b!7828804))

(assert (= (and b!7828802 (not c!1440412)) b!7828806))

(assert (= (and b!7828804 res!3114774) b!7828803))

(assert (= (and b!7828806 c!1440411) b!7828801))

(assert (= (and b!7828806 (not c!1440411)) b!7828805))

(assert (= (and b!7828801 res!3114775) b!7828799))

(assert (= (and b!7828805 (not res!3114771)) b!7828798))

(assert (= (and b!7828798 res!3114772) b!7828800))

(assert (= (or b!7828799 b!7828798) bm!726137))

(assert (= (or b!7828801 b!7828800) bm!726136))

(assert (= (or b!7828803 bm!726136) bm!726138))

(declare-fun m!8248232 () Bool)

(assert (=> b!7828804 m!8248232))

(declare-fun m!8248234 () Bool)

(assert (=> bm!726137 m!8248234))

(declare-fun m!8248236 () Bool)

(assert (=> bm!726138 m!8248236))

(assert (=> bm!725978 d!2350779))

(declare-fun d!2350781 () Bool)

(assert (=> d!2350781 (= (nullable!9298 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))) (nullableFct!3667 (reg!21283 (ite c!1440112 (regTwo!42421 r2!6199) (regOne!42420 r2!6199)))))))

(declare-fun bs!1966799 () Bool)

(assert (= bs!1966799 d!2350781))

(declare-fun m!8248238 () Bool)

(assert (=> bs!1966799 m!8248238))

(assert (=> b!7827793 d!2350781))

(declare-fun d!2350783 () Bool)

(declare-fun lt!2676895 () Int)

(assert (=> d!2350783 (>= lt!2676895 0)))

(declare-fun e!4630629 () Int)

(assert (=> d!2350783 (= lt!2676895 e!4630629)))

(declare-fun c!1440413 () Bool)

(assert (=> d!2350783 (= c!1440413 (is-Nil!73667 lt!2676844))))

(assert (=> d!2350783 (= (size!42754 lt!2676844) lt!2676895)))

(declare-fun b!7828807 () Bool)

(assert (=> b!7828807 (= e!4630629 0)))

(declare-fun b!7828808 () Bool)

(assert (=> b!7828808 (= e!4630629 (+ 1 (size!42754 (t!388526 lt!2676844))))))

(assert (= (and d!2350783 c!1440413) b!7828807))

(assert (= (and d!2350783 (not c!1440413)) b!7828808))

(declare-fun m!8248240 () Bool)

(assert (=> b!7828808 m!8248240))

(assert (=> b!7827779 d!2350783))

(assert (=> b!7827779 d!2350533))

(assert (=> b!7827779 d!2350473))

(assert (=> bm!725971 d!2350517))

(assert (=> d!2350453 d!2350509))

(declare-fun b!7828809 () Bool)

(declare-fun e!4630635 () Bool)

(declare-fun e!4630632 () Bool)

(assert (=> b!7828809 (= e!4630635 e!4630632)))

(declare-fun res!3114777 () Bool)

(assert (=> b!7828809 (=> (not res!3114777) (not e!4630632))))

(declare-fun call!726145 () Bool)

(assert (=> b!7828809 (= res!3114777 call!726145)))

(declare-fun b!7828811 () Bool)

(declare-fun call!726146 () Bool)

(assert (=> b!7828811 (= e!4630632 call!726146)))

(declare-fun b!7828812 () Bool)

(declare-fun res!3114780 () Bool)

(declare-fun e!4630633 () Bool)

(assert (=> b!7828812 (=> (not res!3114780) (not e!4630633))))

(assert (=> b!7828812 (= res!3114780 call!726146)))

(declare-fun e!4630636 () Bool)

(assert (=> b!7828812 (= e!4630636 e!4630633)))

(declare-fun b!7828813 () Bool)

(declare-fun e!4630631 () Bool)

(declare-fun e!4630634 () Bool)

(assert (=> b!7828813 (= e!4630631 e!4630634)))

(declare-fun c!1440415 () Bool)

(assert (=> b!7828813 (= c!1440415 (is-Star!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(declare-fun b!7828814 () Bool)

(declare-fun e!4630630 () Bool)

(declare-fun call!726144 () Bool)

(assert (=> b!7828814 (= e!4630630 call!726144)))

(declare-fun b!7828815 () Bool)

(assert (=> b!7828815 (= e!4630634 e!4630630)))

(declare-fun res!3114779 () Bool)

(assert (=> b!7828815 (= res!3114779 (not (nullable!9298 (reg!21283 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))))

(assert (=> b!7828815 (=> (not res!3114779) (not e!4630630))))

(declare-fun bm!726139 () Bool)

(assert (=> bm!726139 (= call!726146 call!726144)))

(declare-fun c!1440414 () Bool)

(declare-fun bm!726140 () Bool)

(assert (=> bm!726140 (= call!726145 (validRegex!11368 (ite c!1440414 (regTwo!42421 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) (regOne!42420 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))))

(declare-fun bm!726141 () Bool)

(assert (=> bm!726141 (= call!726144 (validRegex!11368 (ite c!1440415 (reg!21283 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) (ite c!1440414 (regOne!42421 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) (regTwo!42420 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))))))))

(declare-fun d!2350785 () Bool)

(declare-fun res!3114778 () Bool)

(assert (=> d!2350785 (=> res!3114778 e!4630631)))

(assert (=> d!2350785 (= res!3114778 (is-ElementMatch!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(assert (=> d!2350785 (= (validRegex!11368 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))) e!4630631)))

(declare-fun b!7828810 () Bool)

(assert (=> b!7828810 (= e!4630633 call!726145)))

(declare-fun b!7828816 () Bool)

(declare-fun res!3114776 () Bool)

(assert (=> b!7828816 (=> res!3114776 e!4630635)))

(assert (=> b!7828816 (= res!3114776 (not (is-Concat!29799 (derivativeStep!6257 r1!6261 (head!15987 s1!4101)))))))

(assert (=> b!7828816 (= e!4630636 e!4630635)))

(declare-fun b!7828817 () Bool)

(assert (=> b!7828817 (= e!4630634 e!4630636)))

(assert (=> b!7828817 (= c!1440414 (is-Union!20954 (derivativeStep!6257 r1!6261 (head!15987 s1!4101))))))

(assert (= (and d!2350785 (not res!3114778)) b!7828813))

(assert (= (and b!7828813 c!1440415) b!7828815))

(assert (= (and b!7828813 (not c!1440415)) b!7828817))

(assert (= (and b!7828815 res!3114779) b!7828814))

(assert (= (and b!7828817 c!1440414) b!7828812))

(assert (= (and b!7828817 (not c!1440414)) b!7828816))

(assert (= (and b!7828812 res!3114780) b!7828810))

(assert (= (and b!7828816 (not res!3114776)) b!7828809))

(assert (= (and b!7828809 res!3114777) b!7828811))

(assert (= (or b!7828810 b!7828809) bm!726140))

(assert (= (or b!7828812 b!7828811) bm!726139))

(assert (= (or b!7828814 bm!726139) bm!726141))

(declare-fun m!8248242 () Bool)

(assert (=> b!7828815 m!8248242))

(declare-fun m!8248244 () Bool)

(assert (=> bm!726140 m!8248244))

(declare-fun m!8248246 () Bool)

(assert (=> bm!726141 m!8248246))

(assert (=> d!2350453 d!2350785))

(declare-fun b!7828818 () Bool)

(declare-fun e!4630639 () Regex!20954)

(declare-fun e!4630641 () Regex!20954)

(assert (=> b!7828818 (= e!4630639 e!4630641)))

(declare-fun c!1440418 () Bool)

(assert (=> b!7828818 (= c!1440418 (is-Star!20954 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(declare-fun b!7828819 () Bool)

(declare-fun call!726148 () Regex!20954)

(declare-fun call!726149 () Regex!20954)

(assert (=> b!7828819 (= e!4630639 (Union!20954 call!726148 call!726149))))

(declare-fun c!1440416 () Bool)

(declare-fun bm!726142 () Bool)

(assert (=> bm!726142 (= call!726149 (derivativeStep!6257 (ite c!1440416 (regTwo!42421 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))) (regTwo!42420 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))) (head!15987 s2!3721)))))

(declare-fun call!726150 () Regex!20954)

(declare-fun e!4630637 () Regex!20954)

(declare-fun b!7828820 () Bool)

(assert (=> b!7828820 (= e!4630637 (Union!20954 (Concat!29799 call!726150 (regTwo!42420 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))) EmptyLang!20954))))

(declare-fun bm!726143 () Bool)

(declare-fun call!726147 () Regex!20954)

(assert (=> bm!726143 (= call!726150 call!726147)))

(declare-fun d!2350787 () Bool)

(declare-fun lt!2676896 () Regex!20954)

(assert (=> d!2350787 (validRegex!11368 lt!2676896)))

(declare-fun e!4630638 () Regex!20954)

(assert (=> d!2350787 (= lt!2676896 e!4630638)))

(declare-fun c!1440417 () Bool)

(assert (=> d!2350787 (= c!1440417 (or (is-EmptyExpr!20954 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))) (is-EmptyLang!20954 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))))))

(assert (=> d!2350787 (validRegex!11368 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))))

(assert (=> d!2350787 (= (derivativeStep!6257 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)) (head!15987 s2!3721)) lt!2676896)))

(declare-fun bm!726144 () Bool)

(assert (=> bm!726144 (= call!726148 (derivativeStep!6257 (ite c!1440416 (regOne!42421 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))) (ite c!1440418 (reg!21283 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))) (regOne!42420 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))) (head!15987 s2!3721)))))

(declare-fun b!7828821 () Bool)

(declare-fun e!4630640 () Regex!20954)

(assert (=> b!7828821 (= e!4630638 e!4630640)))

(declare-fun c!1440419 () Bool)

(assert (=> b!7828821 (= c!1440419 (is-ElementMatch!20954 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(declare-fun b!7828822 () Bool)

(assert (=> b!7828822 (= e!4630640 (ite (= (head!15987 s2!3721) (c!1440089 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828823 () Bool)

(assert (=> b!7828823 (= e!4630637 (Union!20954 (Concat!29799 call!726150 (regTwo!42420 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))) call!726149))))

(declare-fun b!7828824 () Bool)

(assert (=> b!7828824 (= e!4630638 EmptyLang!20954)))

(declare-fun b!7828825 () Bool)

(assert (=> b!7828825 (= e!4630641 (Concat!29799 call!726147 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(declare-fun b!7828826 () Bool)

(declare-fun c!1440420 () Bool)

(assert (=> b!7828826 (= c!1440420 (nullable!9298 (regOne!42420 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199)))))))

(assert (=> b!7828826 (= e!4630641 e!4630637)))

(declare-fun bm!726145 () Bool)

(assert (=> bm!726145 (= call!726147 call!726148)))

(declare-fun b!7828827 () Bool)

(assert (=> b!7828827 (= c!1440416 (is-Union!20954 (ite c!1440222 (regTwo!42421 r2!6199) (regTwo!42420 r2!6199))))))

(assert (=> b!7828827 (= e!4630640 e!4630639)))

(assert (= (and d!2350787 c!1440417) b!7828824))

(assert (= (and d!2350787 (not c!1440417)) b!7828821))

(assert (= (and b!7828821 c!1440419) b!7828822))

(assert (= (and b!7828821 (not c!1440419)) b!7828827))

(assert (= (and b!7828827 c!1440416) b!7828819))

(assert (= (and b!7828827 (not c!1440416)) b!7828818))

(assert (= (and b!7828818 c!1440418) b!7828825))

(assert (= (and b!7828818 (not c!1440418)) b!7828826))

(assert (= (and b!7828826 c!1440420) b!7828823))

(assert (= (and b!7828826 (not c!1440420)) b!7828820))

(assert (= (or b!7828823 b!7828820) bm!726143))

(assert (= (or b!7828825 bm!726143) bm!726145))

(assert (= (or b!7828819 bm!726145) bm!726144))

(assert (= (or b!7828819 b!7828823) bm!726142))

(assert (=> bm!726142 m!8247382))

(declare-fun m!8248248 () Bool)

(assert (=> bm!726142 m!8248248))

(declare-fun m!8248250 () Bool)

(assert (=> d!2350787 m!8248250))

(declare-fun m!8248252 () Bool)

(assert (=> d!2350787 m!8248252))

(assert (=> bm!726144 m!8247382))

(declare-fun m!8248254 () Bool)

(assert (=> bm!726144 m!8248254))

(declare-fun m!8248256 () Bool)

(assert (=> b!7828826 m!8248256))

(assert (=> bm!725994 d!2350787))

(assert (=> b!7827638 d!2350643))

(declare-fun b!7828828 () Bool)

(declare-fun e!4630644 () Regex!20954)

(declare-fun e!4630646 () Regex!20954)

(assert (=> b!7828828 (= e!4630644 e!4630646)))

(declare-fun c!1440423 () Bool)

(assert (=> b!7828828 (= c!1440423 (is-Star!20954 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))))

(declare-fun b!7828829 () Bool)

(declare-fun call!726152 () Regex!20954)

(declare-fun call!726153 () Regex!20954)

(assert (=> b!7828829 (= e!4630644 (Union!20954 call!726152 call!726153))))

(declare-fun bm!726146 () Bool)

(declare-fun c!1440421 () Bool)

(assert (=> bm!726146 (= call!726153 (derivativeStep!6257 (ite c!1440421 (regTwo!42421 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))) (regTwo!42420 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))))) (head!15987 s1Rec!453)))))

(declare-fun e!4630642 () Regex!20954)

(declare-fun call!726154 () Regex!20954)

(declare-fun b!7828830 () Bool)

(assert (=> b!7828830 (= e!4630642 (Union!20954 (Concat!29799 call!726154 (regTwo!42420 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))))) EmptyLang!20954))))

(declare-fun bm!726147 () Bool)

(declare-fun call!726151 () Regex!20954)

(assert (=> bm!726147 (= call!726154 call!726151)))

(declare-fun d!2350789 () Bool)

(declare-fun lt!2676897 () Regex!20954)

(assert (=> d!2350789 (validRegex!11368 lt!2676897)))

(declare-fun e!4630643 () Regex!20954)

(assert (=> d!2350789 (= lt!2676897 e!4630643)))

(declare-fun c!1440422 () Bool)

(assert (=> d!2350789 (= c!1440422 (or (is-EmptyExpr!20954 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))) (is-EmptyLang!20954 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))))))))

(assert (=> d!2350789 (validRegex!11368 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))))))

(assert (=> d!2350789 (= (derivativeStep!6257 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))) (head!15987 s1Rec!453)) lt!2676897)))

(declare-fun bm!726148 () Bool)

(assert (=> bm!726148 (= call!726152 (derivativeStep!6257 (ite c!1440421 (regOne!42421 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))) (ite c!1440423 (reg!21283 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))) (regOne!42420 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))) (head!15987 s1Rec!453)))))

(declare-fun b!7828831 () Bool)

(declare-fun e!4630645 () Regex!20954)

(assert (=> b!7828831 (= e!4630643 e!4630645)))

(declare-fun c!1440424 () Bool)

(assert (=> b!7828831 (= c!1440424 (is-ElementMatch!20954 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))))

(declare-fun b!7828832 () Bool)

(assert (=> b!7828832 (= e!4630645 (ite (= (head!15987 s1Rec!453) (c!1440089 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))))) EmptyExpr!20954 EmptyLang!20954))))

(declare-fun b!7828833 () Bool)

(assert (=> b!7828833 (= e!4630642 (Union!20954 (Concat!29799 call!726154 (regTwo!42420 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))))) call!726153))))

(declare-fun b!7828834 () Bool)

(assert (=> b!7828834 (= e!4630643 EmptyLang!20954)))

(declare-fun b!7828835 () Bool)

(assert (=> b!7828835 (= e!4630646 (Concat!29799 call!726151 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))))

(declare-fun b!7828836 () Bool)

(declare-fun c!1440425 () Bool)

(assert (=> b!7828836 (= c!1440425 (nullable!9298 (regOne!42420 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261))))))))

(assert (=> b!7828836 (= e!4630646 e!4630642)))

(declare-fun bm!726149 () Bool)

(assert (=> bm!726149 (= call!726151 call!726152)))

(declare-fun b!7828837 () Bool)

(assert (=> b!7828837 (= c!1440421 (is-Union!20954 (ite c!1440185 (regOne!42421 r1!6261) (ite c!1440187 (reg!21283 r1!6261) (regOne!42420 r1!6261)))))))

(assert (=> b!7828837 (= e!4630645 e!4630644)))

(assert (= (and d!2350789 c!1440422) b!7828834))

(assert (= (and d!2350789 (not c!1440422)) b!7828831))

(assert (= (and b!7828831 c!1440424) b!7828832))

(assert (= (and b!7828831 (not c!1440424)) b!7828837))

(assert (= (and b!7828837 c!1440421) b!7828829))

(assert (= (and b!7828837 (not c!1440421)) b!7828828))

(assert (= (and b!7828828 c!1440423) b!7828835))

(assert (= (and b!7828828 (not c!1440423)) b!7828836))

(assert (= (and b!7828836 c!1440425) b!7828833))

(assert (= (and b!7828836 (not c!1440425)) b!7828830))

(assert (= (or b!7828833 b!7828830) bm!726147))

(assert (= (or b!7828835 bm!726147) bm!726149))

(assert (= (or b!7828829 bm!726149) bm!726148))

(assert (= (or b!7828829 b!7828833) bm!726146))

(assert (=> bm!726146 m!8247398))

(declare-fun m!8248258 () Bool)

(assert (=> bm!726146 m!8248258))

(declare-fun m!8248260 () Bool)

(assert (=> d!2350789 m!8248260))

(declare-fun m!8248262 () Bool)

(assert (=> d!2350789 m!8248262))

(assert (=> bm!726148 m!8247398))

(declare-fun m!8248264 () Bool)

(assert (=> bm!726148 m!8248264))

(declare-fun m!8248266 () Bool)

(assert (=> b!7828836 m!8248266))

(assert (=> bm!725974 d!2350789))

(declare-fun b!7828841 () Bool)

(declare-fun e!4630647 () Bool)

(assert (=> b!7828841 (= e!4630647 (>= (size!42754 (tail!15528 (tail!15528 s1!4101))) (size!42754 (tail!15528 (tail!15528 s1Rec!453)))))))

(declare-fun b!7828839 () Bool)

(declare-fun res!3114784 () Bool)

(declare-fun e!4630648 () Bool)

(assert (=> b!7828839 (=> (not res!3114784) (not e!4630648))))

(assert (=> b!7828839 (= res!3114784 (= (head!15987 (tail!15528 (tail!15528 s1Rec!453))) (head!15987 (tail!15528 (tail!15528 s1!4101)))))))

(declare-fun d!2350791 () Bool)

(assert (=> d!2350791 e!4630647))

(declare-fun res!3114782 () Bool)

(assert (=> d!2350791 (=> res!3114782 e!4630647)))

(declare-fun lt!2676898 () Bool)

(assert (=> d!2350791 (= res!3114782 (not lt!2676898))))

(declare-fun e!4630649 () Bool)

(assert (=> d!2350791 (= lt!2676898 e!4630649)))

(declare-fun res!3114783 () Bool)

(assert (=> d!2350791 (=> res!3114783 e!4630649)))

(assert (=> d!2350791 (= res!3114783 (is-Nil!73667 (tail!15528 (tail!15528 s1Rec!453))))))

(assert (=> d!2350791 (= (isPrefix!6304 (tail!15528 (tail!15528 s1Rec!453)) (tail!15528 (tail!15528 s1!4101))) lt!2676898)))

(declare-fun b!7828838 () Bool)

(assert (=> b!7828838 (= e!4630649 e!4630648)))

(declare-fun res!3114781 () Bool)

(assert (=> b!7828838 (=> (not res!3114781) (not e!4630648))))

(assert (=> b!7828838 (= res!3114781 (not (is-Nil!73667 (tail!15528 (tail!15528 s1!4101)))))))

(declare-fun b!7828840 () Bool)

(assert (=> b!7828840 (= e!4630648 (isPrefix!6304 (tail!15528 (tail!15528 (tail!15528 s1Rec!453))) (tail!15528 (tail!15528 (tail!15528 s1!4101)))))))

(assert (= (and d!2350791 (not res!3114783)) b!7828838))

(assert (= (and b!7828838 res!3114781) b!7828839))

(assert (= (and b!7828839 res!3114784) b!7828840))

(assert (= (and d!2350791 (not res!3114782)) b!7828841))

(assert (=> b!7828841 m!8247564))

(declare-fun m!8248268 () Bool)

(assert (=> b!7828841 m!8248268))

(assert (=> b!7828841 m!8247588))

(declare-fun m!8248270 () Bool)

(assert (=> b!7828841 m!8248270))

(assert (=> b!7828839 m!8247588))

(assert (=> b!7828839 m!8248030))

(assert (=> b!7828839 m!8247564))

(assert (=> b!7828839 m!8248148))

(assert (=> b!7828840 m!8247588))

(assert (=> b!7828840 m!8248026))

(assert (=> b!7828840 m!8247564))

(assert (=> b!7828840 m!8248144))

(assert (=> b!7828840 m!8248026))

(assert (=> b!7828840 m!8248144))

(declare-fun m!8248272 () Bool)

(assert (=> b!7828840 m!8248272))

(assert (=> b!7827824 d!2350791))

(assert (=> b!7827824 d!2350651))

(assert (=> b!7827824 d!2350673))

(declare-fun b!7828845 () Bool)

(declare-fun e!4630650 () Bool)

(declare-fun tp!2313196 () Bool)

(declare-fun tp!2313195 () Bool)

(assert (=> b!7828845 (= e!4630650 (and tp!2313196 tp!2313195))))

(declare-fun b!7828842 () Bool)

(assert (=> b!7828842 (= e!4630650 tp_is_empty!52263)))

(declare-fun b!7828844 () Bool)

(declare-fun tp!2313197 () Bool)

(assert (=> b!7828844 (= e!4630650 tp!2313197)))

(assert (=> b!7827829 (= tp!2312686 e!4630650)))

(declare-fun b!7828843 () Bool)

(declare-fun tp!2313194 () Bool)

(declare-fun tp!2313198 () Bool)

(assert (=> b!7828843 (= e!4630650 (and tp!2313194 tp!2313198))))

(assert (= (and b!7827829 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (regOne!42420 r2!6199))))) b!7828842))

(assert (= (and b!7827829 (is-Concat!29799 (regOne!42421 (regOne!42420 (regOne!42420 r2!6199))))) b!7828843))

(assert (= (and b!7827829 (is-Star!20954 (regOne!42421 (regOne!42420 (regOne!42420 r2!6199))))) b!7828844))

(assert (= (and b!7827829 (is-Union!20954 (regOne!42421 (regOne!42420 (regOne!42420 r2!6199))))) b!7828845))

(declare-fun b!7828849 () Bool)

(declare-fun e!4630651 () Bool)

(declare-fun tp!2313201 () Bool)

(declare-fun tp!2313200 () Bool)

(assert (=> b!7828849 (= e!4630651 (and tp!2313201 tp!2313200))))

(declare-fun b!7828846 () Bool)

(assert (=> b!7828846 (= e!4630651 tp_is_empty!52263)))

(declare-fun b!7828848 () Bool)

(declare-fun tp!2313202 () Bool)

(assert (=> b!7828848 (= e!4630651 tp!2313202)))

(assert (=> b!7827829 (= tp!2312685 e!4630651)))

(declare-fun b!7828847 () Bool)

(declare-fun tp!2313199 () Bool)

(declare-fun tp!2313203 () Bool)

(assert (=> b!7828847 (= e!4630651 (and tp!2313199 tp!2313203))))

(assert (= (and b!7827829 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (regOne!42420 r2!6199))))) b!7828846))

(assert (= (and b!7827829 (is-Concat!29799 (regTwo!42421 (regOne!42420 (regOne!42420 r2!6199))))) b!7828847))

(assert (= (and b!7827829 (is-Star!20954 (regTwo!42421 (regOne!42420 (regOne!42420 r2!6199))))) b!7828848))

(assert (= (and b!7827829 (is-Union!20954 (regTwo!42421 (regOne!42420 (regOne!42420 r2!6199))))) b!7828849))

(declare-fun b!7828853 () Bool)

(declare-fun e!4630652 () Bool)

(declare-fun tp!2313206 () Bool)

(declare-fun tp!2313205 () Bool)

(assert (=> b!7828853 (= e!4630652 (and tp!2313206 tp!2313205))))

(declare-fun b!7828850 () Bool)

(assert (=> b!7828850 (= e!4630652 tp_is_empty!52263)))

(declare-fun b!7828852 () Bool)

(declare-fun tp!2313207 () Bool)

(assert (=> b!7828852 (= e!4630652 tp!2313207)))

(assert (=> b!7828024 (= tp!2312931 e!4630652)))

(declare-fun b!7828851 () Bool)

(declare-fun tp!2313204 () Bool)

(declare-fun tp!2313208 () Bool)

(assert (=> b!7828851 (= e!4630652 (and tp!2313204 tp!2313208))))

(assert (= (and b!7828024 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (regTwo!42420 r1!6261))))) b!7828850))

(assert (= (and b!7828024 (is-Concat!29799 (reg!21283 (regOne!42421 (regTwo!42420 r1!6261))))) b!7828851))

(assert (= (and b!7828024 (is-Star!20954 (reg!21283 (regOne!42421 (regTwo!42420 r1!6261))))) b!7828852))

(assert (= (and b!7828024 (is-Union!20954 (reg!21283 (regOne!42421 (regTwo!42420 r1!6261))))) b!7828853))

(declare-fun b!7828857 () Bool)

(declare-fun e!4630653 () Bool)

(declare-fun tp!2313211 () Bool)

(declare-fun tp!2313210 () Bool)

(assert (=> b!7828857 (= e!4630653 (and tp!2313211 tp!2313210))))

(declare-fun b!7828854 () Bool)

(assert (=> b!7828854 (= e!4630653 tp_is_empty!52263)))

(declare-fun b!7828856 () Bool)

(declare-fun tp!2313212 () Bool)

(assert (=> b!7828856 (= e!4630653 tp!2313212)))

(assert (=> b!7828015 (= tp!2312918 e!4630653)))

(declare-fun b!7828855 () Bool)

(declare-fun tp!2313209 () Bool)

(declare-fun tp!2313213 () Bool)

(assert (=> b!7828855 (= e!4630653 (and tp!2313209 tp!2313213))))

(assert (= (and b!7828015 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (regTwo!42421 r2!6199))))) b!7828854))

(assert (= (and b!7828015 (is-Concat!29799 (regOne!42420 (regOne!42421 (regTwo!42421 r2!6199))))) b!7828855))

(assert (= (and b!7828015 (is-Star!20954 (regOne!42420 (regOne!42421 (regTwo!42421 r2!6199))))) b!7828856))

(assert (= (and b!7828015 (is-Union!20954 (regOne!42420 (regOne!42421 (regTwo!42421 r2!6199))))) b!7828857))

(declare-fun b!7828861 () Bool)

(declare-fun e!4630654 () Bool)

(declare-fun tp!2313216 () Bool)

(declare-fun tp!2313215 () Bool)

(assert (=> b!7828861 (= e!4630654 (and tp!2313216 tp!2313215))))

(declare-fun b!7828858 () Bool)

(assert (=> b!7828858 (= e!4630654 tp_is_empty!52263)))

(declare-fun b!7828860 () Bool)

(declare-fun tp!2313217 () Bool)

(assert (=> b!7828860 (= e!4630654 tp!2313217)))

(assert (=> b!7828015 (= tp!2312922 e!4630654)))

(declare-fun b!7828859 () Bool)

(declare-fun tp!2313214 () Bool)

(declare-fun tp!2313218 () Bool)

(assert (=> b!7828859 (= e!4630654 (and tp!2313214 tp!2313218))))

(assert (= (and b!7828015 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (regTwo!42421 r2!6199))))) b!7828858))

(assert (= (and b!7828015 (is-Concat!29799 (regTwo!42420 (regOne!42421 (regTwo!42421 r2!6199))))) b!7828859))

(assert (= (and b!7828015 (is-Star!20954 (regTwo!42420 (regOne!42421 (regTwo!42421 r2!6199))))) b!7828860))

(assert (= (and b!7828015 (is-Union!20954 (regTwo!42420 (regOne!42421 (regTwo!42421 r2!6199))))) b!7828861))

(declare-fun b!7828865 () Bool)

(declare-fun e!4630655 () Bool)

(declare-fun tp!2313221 () Bool)

(declare-fun tp!2313220 () Bool)

(assert (=> b!7828865 (= e!4630655 (and tp!2313221 tp!2313220))))

(declare-fun b!7828862 () Bool)

(assert (=> b!7828862 (= e!4630655 tp_is_empty!52263)))

(declare-fun b!7828864 () Bool)

(declare-fun tp!2313222 () Bool)

(assert (=> b!7828864 (= e!4630655 tp!2313222)))

(assert (=> b!7827881 (= tp!2312751 e!4630655)))

(declare-fun b!7828863 () Bool)

(declare-fun tp!2313219 () Bool)

(declare-fun tp!2313223 () Bool)

(assert (=> b!7828863 (= e!4630655 (and tp!2313219 tp!2313223))))

(assert (= (and b!7827881 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (reg!21283 r1!6261))))) b!7828862))

(assert (= (and b!7827881 (is-Concat!29799 (regOne!42421 (regTwo!42420 (reg!21283 r1!6261))))) b!7828863))

(assert (= (and b!7827881 (is-Star!20954 (regOne!42421 (regTwo!42420 (reg!21283 r1!6261))))) b!7828864))

(assert (= (and b!7827881 (is-Union!20954 (regOne!42421 (regTwo!42420 (reg!21283 r1!6261))))) b!7828865))

(declare-fun b!7828869 () Bool)

(declare-fun e!4630656 () Bool)

(declare-fun tp!2313226 () Bool)

(declare-fun tp!2313225 () Bool)

(assert (=> b!7828869 (= e!4630656 (and tp!2313226 tp!2313225))))

(declare-fun b!7828866 () Bool)

(assert (=> b!7828866 (= e!4630656 tp_is_empty!52263)))

(declare-fun b!7828868 () Bool)

(declare-fun tp!2313227 () Bool)

(assert (=> b!7828868 (= e!4630656 tp!2313227)))

(assert (=> b!7827881 (= tp!2312750 e!4630656)))

(declare-fun b!7828867 () Bool)

(declare-fun tp!2313224 () Bool)

(declare-fun tp!2313228 () Bool)

(assert (=> b!7828867 (= e!4630656 (and tp!2313224 tp!2313228))))

(assert (= (and b!7827881 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (reg!21283 r1!6261))))) b!7828866))

(assert (= (and b!7827881 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (reg!21283 r1!6261))))) b!7828867))

(assert (= (and b!7827881 (is-Star!20954 (regTwo!42421 (regTwo!42420 (reg!21283 r1!6261))))) b!7828868))

(assert (= (and b!7827881 (is-Union!20954 (regTwo!42421 (regTwo!42420 (reg!21283 r1!6261))))) b!7828869))

(declare-fun b!7828873 () Bool)

(declare-fun e!4630657 () Bool)

(declare-fun tp!2313231 () Bool)

(declare-fun tp!2313230 () Bool)

(assert (=> b!7828873 (= e!4630657 (and tp!2313231 tp!2313230))))

(declare-fun b!7828870 () Bool)

(assert (=> b!7828870 (= e!4630657 tp_is_empty!52263)))

(declare-fun b!7828872 () Bool)

(declare-fun tp!2313232 () Bool)

(assert (=> b!7828872 (= e!4630657 tp!2313232)))

(assert (=> b!7827904 (= tp!2312782 e!4630657)))

(declare-fun b!7828871 () Bool)

(declare-fun tp!2313229 () Bool)

(declare-fun tp!2313233 () Bool)

(assert (=> b!7828871 (= e!4630657 (and tp!2313229 tp!2313233))))

(assert (= (and b!7827904 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (reg!21283 r2!6199))))) b!7828870))

(assert (= (and b!7827904 (is-Concat!29799 (reg!21283 (regOne!42421 (reg!21283 r2!6199))))) b!7828871))

(assert (= (and b!7827904 (is-Star!20954 (reg!21283 (regOne!42421 (reg!21283 r2!6199))))) b!7828872))

(assert (= (and b!7827904 (is-Union!20954 (reg!21283 (regOne!42421 (reg!21283 r2!6199))))) b!7828873))

(declare-fun b!7828877 () Bool)

(declare-fun e!4630658 () Bool)

(declare-fun tp!2313236 () Bool)

(declare-fun tp!2313235 () Bool)

(assert (=> b!7828877 (= e!4630658 (and tp!2313236 tp!2313235))))

(declare-fun b!7828874 () Bool)

(assert (=> b!7828874 (= e!4630658 tp_is_empty!52263)))

(declare-fun b!7828876 () Bool)

(declare-fun tp!2313237 () Bool)

(assert (=> b!7828876 (= e!4630658 tp!2313237)))

(assert (=> b!7827895 (= tp!2312769 e!4630658)))

(declare-fun b!7828875 () Bool)

(declare-fun tp!2313234 () Bool)

(declare-fun tp!2313238 () Bool)

(assert (=> b!7828875 (= e!4630658 (and tp!2313234 tp!2313238))))

(assert (= (and b!7827895 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (regOne!42420 r1!6261))))) b!7828874))

(assert (= (and b!7827895 (is-Concat!29799 (regOne!42420 (regOne!42421 (regOne!42420 r1!6261))))) b!7828875))

(assert (= (and b!7827895 (is-Star!20954 (regOne!42420 (regOne!42421 (regOne!42420 r1!6261))))) b!7828876))

(assert (= (and b!7827895 (is-Union!20954 (regOne!42420 (regOne!42421 (regOne!42420 r1!6261))))) b!7828877))

(declare-fun b!7828881 () Bool)

(declare-fun e!4630659 () Bool)

(declare-fun tp!2313241 () Bool)

(declare-fun tp!2313240 () Bool)

(assert (=> b!7828881 (= e!4630659 (and tp!2313241 tp!2313240))))

(declare-fun b!7828878 () Bool)

(assert (=> b!7828878 (= e!4630659 tp_is_empty!52263)))

(declare-fun b!7828880 () Bool)

(declare-fun tp!2313242 () Bool)

(assert (=> b!7828880 (= e!4630659 tp!2313242)))

(assert (=> b!7827895 (= tp!2312773 e!4630659)))

(declare-fun b!7828879 () Bool)

(declare-fun tp!2313239 () Bool)

(declare-fun tp!2313243 () Bool)

(assert (=> b!7828879 (= e!4630659 (and tp!2313239 tp!2313243))))

(assert (= (and b!7827895 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (regOne!42420 r1!6261))))) b!7828878))

(assert (= (and b!7827895 (is-Concat!29799 (regTwo!42420 (regOne!42421 (regOne!42420 r1!6261))))) b!7828879))

(assert (= (and b!7827895 (is-Star!20954 (regTwo!42420 (regOne!42421 (regOne!42420 r1!6261))))) b!7828880))

(assert (= (and b!7827895 (is-Union!20954 (regTwo!42420 (regOne!42421 (regOne!42420 r1!6261))))) b!7828881))

(declare-fun b!7828885 () Bool)

(declare-fun e!4630660 () Bool)

(declare-fun tp!2313246 () Bool)

(declare-fun tp!2313245 () Bool)

(assert (=> b!7828885 (= e!4630660 (and tp!2313246 tp!2313245))))

(declare-fun b!7828882 () Bool)

(assert (=> b!7828882 (= e!4630660 tp_is_empty!52263)))

(declare-fun b!7828884 () Bool)

(declare-fun tp!2313247 () Bool)

(assert (=> b!7828884 (= e!4630660 tp!2313247)))

(assert (=> b!7827990 (= tp!2312887 e!4630660)))

(declare-fun b!7828883 () Bool)

(declare-fun tp!2313244 () Bool)

(declare-fun tp!2313248 () Bool)

(assert (=> b!7828883 (= e!4630660 (and tp!2313244 tp!2313248))))

(assert (= (and b!7827990 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (regTwo!42421 r1!6261))))) b!7828882))

(assert (= (and b!7827990 (is-Concat!29799 (regOne!42421 (reg!21283 (regTwo!42421 r1!6261))))) b!7828883))

(assert (= (and b!7827990 (is-Star!20954 (regOne!42421 (reg!21283 (regTwo!42421 r1!6261))))) b!7828884))

(assert (= (and b!7827990 (is-Union!20954 (regOne!42421 (reg!21283 (regTwo!42421 r1!6261))))) b!7828885))

(declare-fun b!7828889 () Bool)

(declare-fun e!4630661 () Bool)

(declare-fun tp!2313251 () Bool)

(declare-fun tp!2313250 () Bool)

(assert (=> b!7828889 (= e!4630661 (and tp!2313251 tp!2313250))))

(declare-fun b!7828886 () Bool)

(assert (=> b!7828886 (= e!4630661 tp_is_empty!52263)))

(declare-fun b!7828888 () Bool)

(declare-fun tp!2313252 () Bool)

(assert (=> b!7828888 (= e!4630661 tp!2313252)))

(assert (=> b!7827990 (= tp!2312886 e!4630661)))

(declare-fun b!7828887 () Bool)

(declare-fun tp!2313249 () Bool)

(declare-fun tp!2313253 () Bool)

(assert (=> b!7828887 (= e!4630661 (and tp!2313249 tp!2313253))))

(assert (= (and b!7827990 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (regTwo!42421 r1!6261))))) b!7828886))

(assert (= (and b!7827990 (is-Concat!29799 (regTwo!42421 (reg!21283 (regTwo!42421 r1!6261))))) b!7828887))

(assert (= (and b!7827990 (is-Star!20954 (regTwo!42421 (reg!21283 (regTwo!42421 r1!6261))))) b!7828888))

(assert (= (and b!7827990 (is-Union!20954 (regTwo!42421 (reg!21283 (regTwo!42421 r1!6261))))) b!7828889))

(declare-fun b!7828893 () Bool)

(declare-fun e!4630662 () Bool)

(declare-fun tp!2313256 () Bool)

(declare-fun tp!2313255 () Bool)

(assert (=> b!7828893 (= e!4630662 (and tp!2313256 tp!2313255))))

(declare-fun b!7828890 () Bool)

(assert (=> b!7828890 (= e!4630662 tp_is_empty!52263)))

(declare-fun b!7828892 () Bool)

(declare-fun tp!2313257 () Bool)

(assert (=> b!7828892 (= e!4630662 tp!2313257)))

(assert (=> b!7827981 (= tp!2312878 e!4630662)))

(declare-fun b!7828891 () Bool)

(declare-fun tp!2313254 () Bool)

(declare-fun tp!2313258 () Bool)

(assert (=> b!7828891 (= e!4630662 (and tp!2313254 tp!2313258))))

(assert (= (and b!7827981 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (regTwo!42421 r1!6261))))) b!7828890))

(assert (= (and b!7827981 (is-Concat!29799 (reg!21283 (regOne!42420 (regTwo!42421 r1!6261))))) b!7828891))

(assert (= (and b!7827981 (is-Star!20954 (reg!21283 (regOne!42420 (regTwo!42421 r1!6261))))) b!7828892))

(assert (= (and b!7827981 (is-Union!20954 (reg!21283 (regOne!42420 (regTwo!42421 r1!6261))))) b!7828893))

(declare-fun b!7828897 () Bool)

(declare-fun e!4630663 () Bool)

(declare-fun tp!2313261 () Bool)

(declare-fun tp!2313260 () Bool)

(assert (=> b!7828897 (= e!4630663 (and tp!2313261 tp!2313260))))

(declare-fun b!7828894 () Bool)

(assert (=> b!7828894 (= e!4630663 tp_is_empty!52263)))

(declare-fun b!7828896 () Bool)

(declare-fun tp!2313262 () Bool)

(assert (=> b!7828896 (= e!4630663 tp!2313262)))

(assert (=> b!7827972 (= tp!2312865 e!4630663)))

(declare-fun b!7828895 () Bool)

(declare-fun tp!2313259 () Bool)

(declare-fun tp!2313263 () Bool)

(assert (=> b!7828895 (= e!4630663 (and tp!2313259 tp!2313263))))

(assert (= (and b!7827972 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (regOne!42421 r2!6199))))) b!7828894))

(assert (= (and b!7827972 (is-Concat!29799 (regOne!42420 (regOne!42420 (regOne!42421 r2!6199))))) b!7828895))

(assert (= (and b!7827972 (is-Star!20954 (regOne!42420 (regOne!42420 (regOne!42421 r2!6199))))) b!7828896))

(assert (= (and b!7827972 (is-Union!20954 (regOne!42420 (regOne!42420 (regOne!42421 r2!6199))))) b!7828897))

(declare-fun b!7828901 () Bool)

(declare-fun e!4630664 () Bool)

(declare-fun tp!2313266 () Bool)

(declare-fun tp!2313265 () Bool)

(assert (=> b!7828901 (= e!4630664 (and tp!2313266 tp!2313265))))

(declare-fun b!7828898 () Bool)

(assert (=> b!7828898 (= e!4630664 tp_is_empty!52263)))

(declare-fun b!7828900 () Bool)

(declare-fun tp!2313267 () Bool)

(assert (=> b!7828900 (= e!4630664 tp!2313267)))

(assert (=> b!7827972 (= tp!2312869 e!4630664)))

(declare-fun b!7828899 () Bool)

(declare-fun tp!2313264 () Bool)

(declare-fun tp!2313268 () Bool)

(assert (=> b!7828899 (= e!4630664 (and tp!2313264 tp!2313268))))

(assert (= (and b!7827972 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (regOne!42421 r2!6199))))) b!7828898))

(assert (= (and b!7827972 (is-Concat!29799 (regTwo!42420 (regOne!42420 (regOne!42421 r2!6199))))) b!7828899))

(assert (= (and b!7827972 (is-Star!20954 (regTwo!42420 (regOne!42420 (regOne!42421 r2!6199))))) b!7828900))

(assert (= (and b!7827972 (is-Union!20954 (regTwo!42420 (regOne!42420 (regOne!42421 r2!6199))))) b!7828901))

(declare-fun b!7828905 () Bool)

(declare-fun e!4630665 () Bool)

(declare-fun tp!2313271 () Bool)

(declare-fun tp!2313270 () Bool)

(assert (=> b!7828905 (= e!4630665 (and tp!2313271 tp!2313270))))

(declare-fun b!7828902 () Bool)

(assert (=> b!7828902 (= e!4630665 tp_is_empty!52263)))

(declare-fun b!7828904 () Bool)

(declare-fun tp!2313272 () Bool)

(assert (=> b!7828904 (= e!4630665 tp!2313272)))

(assert (=> b!7827861 (= tp!2312726 e!4630665)))

(declare-fun b!7828903 () Bool)

(declare-fun tp!2313269 () Bool)

(declare-fun tp!2313273 () Bool)

(assert (=> b!7828903 (= e!4630665 (and tp!2313269 tp!2313273))))

(assert (= (and b!7827861 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (regTwo!42421 r2!6199))))) b!7828902))

(assert (= (and b!7827861 (is-Concat!29799 (regOne!42421 (reg!21283 (regTwo!42421 r2!6199))))) b!7828903))

(assert (= (and b!7827861 (is-Star!20954 (regOne!42421 (reg!21283 (regTwo!42421 r2!6199))))) b!7828904))

(assert (= (and b!7827861 (is-Union!20954 (regOne!42421 (reg!21283 (regTwo!42421 r2!6199))))) b!7828905))

(declare-fun b!7828909 () Bool)

(declare-fun e!4630666 () Bool)

(declare-fun tp!2313276 () Bool)

(declare-fun tp!2313275 () Bool)

(assert (=> b!7828909 (= e!4630666 (and tp!2313276 tp!2313275))))

(declare-fun b!7828906 () Bool)

(assert (=> b!7828906 (= e!4630666 tp_is_empty!52263)))

(declare-fun b!7828908 () Bool)

(declare-fun tp!2313277 () Bool)

(assert (=> b!7828908 (= e!4630666 tp!2313277)))

(assert (=> b!7827861 (= tp!2312725 e!4630666)))

(declare-fun b!7828907 () Bool)

(declare-fun tp!2313274 () Bool)

(declare-fun tp!2313278 () Bool)

(assert (=> b!7828907 (= e!4630666 (and tp!2313274 tp!2313278))))

(assert (= (and b!7827861 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (regTwo!42421 r2!6199))))) b!7828906))

(assert (= (and b!7827861 (is-Concat!29799 (regTwo!42421 (reg!21283 (regTwo!42421 r2!6199))))) b!7828907))

(assert (= (and b!7827861 (is-Star!20954 (regTwo!42421 (reg!21283 (regTwo!42421 r2!6199))))) b!7828908))

(assert (= (and b!7827861 (is-Union!20954 (regTwo!42421 (reg!21283 (regTwo!42421 r2!6199))))) b!7828909))

(declare-fun b!7828913 () Bool)

(declare-fun e!4630667 () Bool)

(declare-fun tp!2313281 () Bool)

(declare-fun tp!2313280 () Bool)

(assert (=> b!7828913 (= e!4630667 (and tp!2313281 tp!2313280))))

(declare-fun b!7828910 () Bool)

(assert (=> b!7828910 (= e!4630667 tp_is_empty!52263)))

(declare-fun b!7828912 () Bool)

(declare-fun tp!2313282 () Bool)

(assert (=> b!7828912 (= e!4630667 tp!2313282)))

(assert (=> b!7827852 (= tp!2312717 e!4630667)))

(declare-fun b!7828911 () Bool)

(declare-fun tp!2313279 () Bool)

(declare-fun tp!2313283 () Bool)

(assert (=> b!7828911 (= e!4630667 (and tp!2313279 tp!2313283))))

(assert (= (and b!7827852 (is-ElementMatch!20954 (reg!21283 (reg!21283 (regOne!42421 r1!6261))))) b!7828910))

(assert (= (and b!7827852 (is-Concat!29799 (reg!21283 (reg!21283 (regOne!42421 r1!6261))))) b!7828911))

(assert (= (and b!7827852 (is-Star!20954 (reg!21283 (reg!21283 (regOne!42421 r1!6261))))) b!7828912))

(assert (= (and b!7827852 (is-Union!20954 (reg!21283 (reg!21283 (regOne!42421 r1!6261))))) b!7828913))

(declare-fun b!7828917 () Bool)

(declare-fun e!4630668 () Bool)

(declare-fun tp!2313286 () Bool)

(declare-fun tp!2313285 () Bool)

(assert (=> b!7828917 (= e!4630668 (and tp!2313286 tp!2313285))))

(declare-fun b!7828914 () Bool)

(assert (=> b!7828914 (= e!4630668 tp_is_empty!52263)))

(declare-fun b!7828916 () Bool)

(declare-fun tp!2313287 () Bool)

(assert (=> b!7828916 (= e!4630668 tp!2313287)))

(assert (=> b!7827843 (= tp!2312704 e!4630668)))

(declare-fun b!7828915 () Bool)

(declare-fun tp!2313284 () Bool)

(declare-fun tp!2313288 () Bool)

(assert (=> b!7828915 (= e!4630668 (and tp!2313284 tp!2313288))))

(assert (= (and b!7827843 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (regOne!42421 r1!6261))))) b!7828914))

(assert (= (and b!7827843 (is-Concat!29799 (regOne!42420 (regOne!42421 (regOne!42421 r1!6261))))) b!7828915))

(assert (= (and b!7827843 (is-Star!20954 (regOne!42420 (regOne!42421 (regOne!42421 r1!6261))))) b!7828916))

(assert (= (and b!7827843 (is-Union!20954 (regOne!42420 (regOne!42421 (regOne!42421 r1!6261))))) b!7828917))

(declare-fun b!7828921 () Bool)

(declare-fun e!4630669 () Bool)

(declare-fun tp!2313291 () Bool)

(declare-fun tp!2313290 () Bool)

(assert (=> b!7828921 (= e!4630669 (and tp!2313291 tp!2313290))))

(declare-fun b!7828918 () Bool)

(assert (=> b!7828918 (= e!4630669 tp_is_empty!52263)))

(declare-fun b!7828920 () Bool)

(declare-fun tp!2313292 () Bool)

(assert (=> b!7828920 (= e!4630669 tp!2313292)))

(assert (=> b!7827843 (= tp!2312708 e!4630669)))

(declare-fun b!7828919 () Bool)

(declare-fun tp!2313289 () Bool)

(declare-fun tp!2313293 () Bool)

(assert (=> b!7828919 (= e!4630669 (and tp!2313289 tp!2313293))))

(assert (= (and b!7827843 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (regOne!42421 r1!6261))))) b!7828918))

(assert (= (and b!7827843 (is-Concat!29799 (regTwo!42420 (regOne!42421 (regOne!42421 r1!6261))))) b!7828919))

(assert (= (and b!7827843 (is-Star!20954 (regTwo!42420 (regOne!42421 (regOne!42421 r1!6261))))) b!7828920))

(assert (= (and b!7827843 (is-Union!20954 (regTwo!42420 (regOne!42421 (regOne!42421 r1!6261))))) b!7828921))

(declare-fun b!7828925 () Bool)

(declare-fun e!4630670 () Bool)

(declare-fun tp!2313296 () Bool)

(declare-fun tp!2313295 () Bool)

(assert (=> b!7828925 (= e!4630670 (and tp!2313296 tp!2313295))))

(declare-fun b!7828922 () Bool)

(assert (=> b!7828922 (= e!4630670 tp_is_empty!52263)))

(declare-fun b!7828924 () Bool)

(declare-fun tp!2313297 () Bool)

(assert (=> b!7828924 (= e!4630670 tp!2313297)))

(assert (=> b!7827938 (= tp!2312822 e!4630670)))

(declare-fun b!7828923 () Bool)

(declare-fun tp!2313294 () Bool)

(declare-fun tp!2313298 () Bool)

(assert (=> b!7828923 (= e!4630670 (and tp!2313294 tp!2313298))))

(assert (= (and b!7827938 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (reg!21283 r2!6199))))) b!7828922))

(assert (= (and b!7827938 (is-Concat!29799 (regOne!42421 (regTwo!42420 (reg!21283 r2!6199))))) b!7828923))

(assert (= (and b!7827938 (is-Star!20954 (regOne!42421 (regTwo!42420 (reg!21283 r2!6199))))) b!7828924))

(assert (= (and b!7827938 (is-Union!20954 (regOne!42421 (regTwo!42420 (reg!21283 r2!6199))))) b!7828925))

(declare-fun b!7828929 () Bool)

(declare-fun e!4630671 () Bool)

(declare-fun tp!2313301 () Bool)

(declare-fun tp!2313300 () Bool)

(assert (=> b!7828929 (= e!4630671 (and tp!2313301 tp!2313300))))

(declare-fun b!7828926 () Bool)

(assert (=> b!7828926 (= e!4630671 tp_is_empty!52263)))

(declare-fun b!7828928 () Bool)

(declare-fun tp!2313302 () Bool)

(assert (=> b!7828928 (= e!4630671 tp!2313302)))

(assert (=> b!7827938 (= tp!2312821 e!4630671)))

(declare-fun b!7828927 () Bool)

(declare-fun tp!2313299 () Bool)

(declare-fun tp!2313303 () Bool)

(assert (=> b!7828927 (= e!4630671 (and tp!2313299 tp!2313303))))

(assert (= (and b!7827938 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (reg!21283 r2!6199))))) b!7828926))

(assert (= (and b!7827938 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (reg!21283 r2!6199))))) b!7828927))

(assert (= (and b!7827938 (is-Star!20954 (regTwo!42421 (regTwo!42420 (reg!21283 r2!6199))))) b!7828928))

(assert (= (and b!7827938 (is-Union!20954 (regTwo!42421 (regTwo!42420 (reg!21283 r2!6199))))) b!7828929))

(declare-fun b!7828933 () Bool)

(declare-fun e!4630672 () Bool)

(declare-fun tp!2313306 () Bool)

(declare-fun tp!2313305 () Bool)

(assert (=> b!7828933 (= e!4630672 (and tp!2313306 tp!2313305))))

(declare-fun b!7828930 () Bool)

(assert (=> b!7828930 (= e!4630672 tp_is_empty!52263)))

(declare-fun b!7828932 () Bool)

(declare-fun tp!2313307 () Bool)

(assert (=> b!7828932 (= e!4630672 tp!2313307)))

(assert (=> b!7827929 (= tp!2312813 e!4630672)))

(declare-fun b!7828931 () Bool)

(declare-fun tp!2313304 () Bool)

(declare-fun tp!2313308 () Bool)

(assert (=> b!7828931 (= e!4630672 (and tp!2313304 tp!2313308))))

(assert (= (and b!7827929 (is-ElementMatch!20954 (reg!21283 (reg!21283 (regOne!42421 r2!6199))))) b!7828930))

(assert (= (and b!7827929 (is-Concat!29799 (reg!21283 (reg!21283 (regOne!42421 r2!6199))))) b!7828931))

(assert (= (and b!7827929 (is-Star!20954 (reg!21283 (reg!21283 (regOne!42421 r2!6199))))) b!7828932))

(assert (= (and b!7827929 (is-Union!20954 (reg!21283 (reg!21283 (regOne!42421 r2!6199))))) b!7828933))

(declare-fun b!7828937 () Bool)

(declare-fun e!4630673 () Bool)

(declare-fun tp!2313311 () Bool)

(declare-fun tp!2313310 () Bool)

(assert (=> b!7828937 (= e!4630673 (and tp!2313311 tp!2313310))))

(declare-fun b!7828934 () Bool)

(assert (=> b!7828934 (= e!4630673 tp_is_empty!52263)))

(declare-fun b!7828936 () Bool)

(declare-fun tp!2313312 () Bool)

(assert (=> b!7828936 (= e!4630673 tp!2313312)))

(assert (=> b!7827920 (= tp!2312800 e!4630673)))

(declare-fun b!7828935 () Bool)

(declare-fun tp!2313309 () Bool)

(declare-fun tp!2313313 () Bool)

(assert (=> b!7828935 (= e!4630673 (and tp!2313309 tp!2313313))))

(assert (= (and b!7827920 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (regOne!42421 r2!6199))))) b!7828934))

(assert (= (and b!7827920 (is-Concat!29799 (regOne!42420 (regOne!42421 (regOne!42421 r2!6199))))) b!7828935))

(assert (= (and b!7827920 (is-Star!20954 (regOne!42420 (regOne!42421 (regOne!42421 r2!6199))))) b!7828936))

(assert (= (and b!7827920 (is-Union!20954 (regOne!42420 (regOne!42421 (regOne!42421 r2!6199))))) b!7828937))

(declare-fun b!7828941 () Bool)

(declare-fun e!4630674 () Bool)

(declare-fun tp!2313316 () Bool)

(declare-fun tp!2313315 () Bool)

(assert (=> b!7828941 (= e!4630674 (and tp!2313316 tp!2313315))))

(declare-fun b!7828938 () Bool)

(assert (=> b!7828938 (= e!4630674 tp_is_empty!52263)))

(declare-fun b!7828940 () Bool)

(declare-fun tp!2313317 () Bool)

(assert (=> b!7828940 (= e!4630674 tp!2313317)))

(assert (=> b!7827920 (= tp!2312804 e!4630674)))

(declare-fun b!7828939 () Bool)

(declare-fun tp!2313314 () Bool)

(declare-fun tp!2313318 () Bool)

(assert (=> b!7828939 (= e!4630674 (and tp!2313314 tp!2313318))))

(assert (= (and b!7827920 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (regOne!42421 r2!6199))))) b!7828938))

(assert (= (and b!7827920 (is-Concat!29799 (regTwo!42420 (regOne!42421 (regOne!42421 r2!6199))))) b!7828939))

(assert (= (and b!7827920 (is-Star!20954 (regTwo!42420 (regOne!42421 (regOne!42421 r2!6199))))) b!7828940))

(assert (= (and b!7827920 (is-Union!20954 (regTwo!42420 (regOne!42421 (regOne!42421 r2!6199))))) b!7828941))

(declare-fun b!7828945 () Bool)

(declare-fun e!4630675 () Bool)

(declare-fun tp!2313321 () Bool)

(declare-fun tp!2313320 () Bool)

(assert (=> b!7828945 (= e!4630675 (and tp!2313321 tp!2313320))))

(declare-fun b!7828942 () Bool)

(assert (=> b!7828942 (= e!4630675 tp_is_empty!52263)))

(declare-fun b!7828944 () Bool)

(declare-fun tp!2313322 () Bool)

(assert (=> b!7828944 (= e!4630675 tp!2313322)))

(assert (=> b!7827913 (= tp!2312791 e!4630675)))

(declare-fun b!7828943 () Bool)

(declare-fun tp!2313319 () Bool)

(declare-fun tp!2313323 () Bool)

(assert (=> b!7828943 (= e!4630675 (and tp!2313319 tp!2313323))))

(assert (= (and b!7827913 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (regOne!42420 r1!6261))))) b!7828942))

(assert (= (and b!7827913 (is-Concat!29799 (regOne!42421 (regOne!42420 (regOne!42420 r1!6261))))) b!7828943))

(assert (= (and b!7827913 (is-Star!20954 (regOne!42421 (regOne!42420 (regOne!42420 r1!6261))))) b!7828944))

(assert (= (and b!7827913 (is-Union!20954 (regOne!42421 (regOne!42420 (regOne!42420 r1!6261))))) b!7828945))

(declare-fun b!7828949 () Bool)

(declare-fun e!4630676 () Bool)

(declare-fun tp!2313326 () Bool)

(declare-fun tp!2313325 () Bool)

(assert (=> b!7828949 (= e!4630676 (and tp!2313326 tp!2313325))))

(declare-fun b!7828946 () Bool)

(assert (=> b!7828946 (= e!4630676 tp_is_empty!52263)))

(declare-fun b!7828948 () Bool)

(declare-fun tp!2313327 () Bool)

(assert (=> b!7828948 (= e!4630676 tp!2313327)))

(assert (=> b!7827913 (= tp!2312790 e!4630676)))

(declare-fun b!7828947 () Bool)

(declare-fun tp!2313324 () Bool)

(declare-fun tp!2313328 () Bool)

(assert (=> b!7828947 (= e!4630676 (and tp!2313324 tp!2313328))))

(assert (= (and b!7827913 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (regOne!42420 r1!6261))))) b!7828946))

(assert (= (and b!7827913 (is-Concat!29799 (regTwo!42421 (regOne!42420 (regOne!42420 r1!6261))))) b!7828947))

(assert (= (and b!7827913 (is-Star!20954 (regTwo!42421 (regOne!42420 (regOne!42420 r1!6261))))) b!7828948))

(assert (= (and b!7827913 (is-Union!20954 (regTwo!42421 (regOne!42420 (regOne!42420 r1!6261))))) b!7828949))

(declare-fun b!7828953 () Bool)

(declare-fun e!4630677 () Bool)

(declare-fun tp!2313331 () Bool)

(declare-fun tp!2313330 () Bool)

(assert (=> b!7828953 (= e!4630677 (and tp!2313331 tp!2313330))))

(declare-fun b!7828950 () Bool)

(assert (=> b!7828950 (= e!4630677 tp_is_empty!52263)))

(declare-fun b!7828952 () Bool)

(declare-fun tp!2313332 () Bool)

(assert (=> b!7828952 (= e!4630677 tp!2313332)))

(assert (=> b!7828013 (= tp!2312915 e!4630677)))

(declare-fun b!7828951 () Bool)

(declare-fun tp!2313329 () Bool)

(declare-fun tp!2313333 () Bool)

(assert (=> b!7828951 (= e!4630677 (and tp!2313329 tp!2313333))))

(assert (= (and b!7828013 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (regOne!42420 r2!6199))))) b!7828950))

(assert (= (and b!7828013 (is-Concat!29799 (regOne!42421 (regTwo!42421 (regOne!42420 r2!6199))))) b!7828951))

(assert (= (and b!7828013 (is-Star!20954 (regOne!42421 (regTwo!42421 (regOne!42420 r2!6199))))) b!7828952))

(assert (= (and b!7828013 (is-Union!20954 (regOne!42421 (regTwo!42421 (regOne!42420 r2!6199))))) b!7828953))

(declare-fun b!7828957 () Bool)

(declare-fun e!4630678 () Bool)

(declare-fun tp!2313336 () Bool)

(declare-fun tp!2313335 () Bool)

(assert (=> b!7828957 (= e!4630678 (and tp!2313336 tp!2313335))))

(declare-fun b!7828954 () Bool)

(assert (=> b!7828954 (= e!4630678 tp_is_empty!52263)))

(declare-fun b!7828956 () Bool)

(declare-fun tp!2313337 () Bool)

(assert (=> b!7828956 (= e!4630678 tp!2313337)))

(assert (=> b!7828013 (= tp!2312914 e!4630678)))

(declare-fun b!7828955 () Bool)

(declare-fun tp!2313334 () Bool)

(declare-fun tp!2313338 () Bool)

(assert (=> b!7828955 (= e!4630678 (and tp!2313334 tp!2313338))))

(assert (= (and b!7828013 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (regOne!42420 r2!6199))))) b!7828954))

(assert (= (and b!7828013 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (regOne!42420 r2!6199))))) b!7828955))

(assert (= (and b!7828013 (is-Star!20954 (regTwo!42421 (regTwo!42421 (regOne!42420 r2!6199))))) b!7828956))

(assert (= (and b!7828013 (is-Union!20954 (regTwo!42421 (regTwo!42421 (regOne!42420 r2!6199))))) b!7828957))

(declare-fun b!7828961 () Bool)

(declare-fun e!4630679 () Bool)

(declare-fun tp!2313341 () Bool)

(declare-fun tp!2313340 () Bool)

(assert (=> b!7828961 (= e!4630679 (and tp!2313341 tp!2313340))))

(declare-fun b!7828958 () Bool)

(assert (=> b!7828958 (= e!4630679 tp_is_empty!52263)))

(declare-fun b!7828960 () Bool)

(declare-fun tp!2313342 () Bool)

(assert (=> b!7828960 (= e!4630679 tp!2313342)))

(assert (=> b!7828004 (= tp!2312906 e!4630679)))

(declare-fun b!7828959 () Bool)

(declare-fun tp!2313339 () Bool)

(declare-fun tp!2313343 () Bool)

(assert (=> b!7828959 (= e!4630679 (and tp!2313339 tp!2313343))))

(assert (= (and b!7828004 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7828958))

(assert (= (and b!7828004 (is-Concat!29799 (reg!21283 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7828959))

(assert (= (and b!7828004 (is-Star!20954 (reg!21283 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7828960))

(assert (= (and b!7828004 (is-Union!20954 (reg!21283 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7828961))

(declare-fun b!7828965 () Bool)

(declare-fun e!4630680 () Bool)

(declare-fun tp!2313346 () Bool)

(declare-fun tp!2313345 () Bool)

(assert (=> b!7828965 (= e!4630680 (and tp!2313346 tp!2313345))))

(declare-fun b!7828962 () Bool)

(assert (=> b!7828962 (= e!4630680 tp_is_empty!52263)))

(declare-fun b!7828964 () Bool)

(declare-fun tp!2313347 () Bool)

(assert (=> b!7828964 (= e!4630680 tp!2313347)))

(assert (=> b!7827995 (= tp!2312893 e!4630680)))

(declare-fun b!7828963 () Bool)

(declare-fun tp!2313344 () Bool)

(declare-fun tp!2313348 () Bool)

(assert (=> b!7828963 (= e!4630680 (and tp!2313344 tp!2313348))))

(assert (= (and b!7827995 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (regTwo!42420 r1!6261))))) b!7828962))

(assert (= (and b!7827995 (is-Concat!29799 (regOne!42420 (reg!21283 (regTwo!42420 r1!6261))))) b!7828963))

(assert (= (and b!7827995 (is-Star!20954 (regOne!42420 (reg!21283 (regTwo!42420 r1!6261))))) b!7828964))

(assert (= (and b!7827995 (is-Union!20954 (regOne!42420 (reg!21283 (regTwo!42420 r1!6261))))) b!7828965))

(declare-fun b!7828969 () Bool)

(declare-fun e!4630681 () Bool)

(declare-fun tp!2313351 () Bool)

(declare-fun tp!2313350 () Bool)

(assert (=> b!7828969 (= e!4630681 (and tp!2313351 tp!2313350))))

(declare-fun b!7828966 () Bool)

(assert (=> b!7828966 (= e!4630681 tp_is_empty!52263)))

(declare-fun b!7828968 () Bool)

(declare-fun tp!2313352 () Bool)

(assert (=> b!7828968 (= e!4630681 tp!2313352)))

(assert (=> b!7827995 (= tp!2312897 e!4630681)))

(declare-fun b!7828967 () Bool)

(declare-fun tp!2313349 () Bool)

(declare-fun tp!2313353 () Bool)

(assert (=> b!7828967 (= e!4630681 (and tp!2313349 tp!2313353))))

(assert (= (and b!7827995 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (regTwo!42420 r1!6261))))) b!7828966))

(assert (= (and b!7827995 (is-Concat!29799 (regTwo!42420 (reg!21283 (regTwo!42420 r1!6261))))) b!7828967))

(assert (= (and b!7827995 (is-Star!20954 (regTwo!42420 (reg!21283 (regTwo!42420 r1!6261))))) b!7828968))

(assert (= (and b!7827995 (is-Union!20954 (regTwo!42420 (reg!21283 (regTwo!42420 r1!6261))))) b!7828969))

(declare-fun b!7828973 () Bool)

(declare-fun e!4630682 () Bool)

(declare-fun tp!2313356 () Bool)

(declare-fun tp!2313355 () Bool)

(assert (=> b!7828973 (= e!4630682 (and tp!2313356 tp!2313355))))

(declare-fun b!7828970 () Bool)

(assert (=> b!7828970 (= e!4630682 tp_is_empty!52263)))

(declare-fun b!7828972 () Bool)

(declare-fun tp!2313357 () Bool)

(assert (=> b!7828972 (= e!4630682 tp!2313357)))

(assert (=> b!7827893 (= tp!2312766 e!4630682)))

(declare-fun b!7828971 () Bool)

(declare-fun tp!2313354 () Bool)

(declare-fun tp!2313358 () Bool)

(assert (=> b!7828971 (= e!4630682 (and tp!2313354 tp!2313358))))

(assert (= (and b!7827893 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (reg!21283 r2!6199))))) b!7828970))

(assert (= (and b!7827893 (is-Concat!29799 (regOne!42421 (reg!21283 (reg!21283 r2!6199))))) b!7828971))

(assert (= (and b!7827893 (is-Star!20954 (regOne!42421 (reg!21283 (reg!21283 r2!6199))))) b!7828972))

(assert (= (and b!7827893 (is-Union!20954 (regOne!42421 (reg!21283 (reg!21283 r2!6199))))) b!7828973))

(declare-fun b!7828977 () Bool)

(declare-fun e!4630683 () Bool)

(declare-fun tp!2313361 () Bool)

(declare-fun tp!2313360 () Bool)

(assert (=> b!7828977 (= e!4630683 (and tp!2313361 tp!2313360))))

(declare-fun b!7828974 () Bool)

(assert (=> b!7828974 (= e!4630683 tp_is_empty!52263)))

(declare-fun b!7828976 () Bool)

(declare-fun tp!2313362 () Bool)

(assert (=> b!7828976 (= e!4630683 tp!2313362)))

(assert (=> b!7827893 (= tp!2312765 e!4630683)))

(declare-fun b!7828975 () Bool)

(declare-fun tp!2313359 () Bool)

(declare-fun tp!2313363 () Bool)

(assert (=> b!7828975 (= e!4630683 (and tp!2313359 tp!2313363))))

(assert (= (and b!7827893 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (reg!21283 r2!6199))))) b!7828974))

(assert (= (and b!7827893 (is-Concat!29799 (regTwo!42421 (reg!21283 (reg!21283 r2!6199))))) b!7828975))

(assert (= (and b!7827893 (is-Star!20954 (regTwo!42421 (reg!21283 (reg!21283 r2!6199))))) b!7828976))

(assert (= (and b!7827893 (is-Union!20954 (regTwo!42421 (reg!21283 (reg!21283 r2!6199))))) b!7828977))

(declare-fun b!7828981 () Bool)

(declare-fun e!4630684 () Bool)

(declare-fun tp!2313366 () Bool)

(declare-fun tp!2313365 () Bool)

(assert (=> b!7828981 (= e!4630684 (and tp!2313366 tp!2313365))))

(declare-fun b!7828978 () Bool)

(assert (=> b!7828978 (= e!4630684 tp_is_empty!52263)))

(declare-fun b!7828980 () Bool)

(declare-fun tp!2313367 () Bool)

(assert (=> b!7828980 (= e!4630684 tp!2313367)))

(assert (=> b!7827884 (= tp!2312757 e!4630684)))

(declare-fun b!7828979 () Bool)

(declare-fun tp!2313364 () Bool)

(declare-fun tp!2313368 () Bool)

(assert (=> b!7828979 (= e!4630684 (and tp!2313364 tp!2313368))))

(assert (= (and b!7827884 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (regOne!42421 r1!6261))))) b!7828978))

(assert (= (and b!7827884 (is-Concat!29799 (reg!21283 (regOne!42420 (regOne!42421 r1!6261))))) b!7828979))

(assert (= (and b!7827884 (is-Star!20954 (reg!21283 (regOne!42420 (regOne!42421 r1!6261))))) b!7828980))

(assert (= (and b!7827884 (is-Union!20954 (reg!21283 (regOne!42420 (regOne!42421 r1!6261))))) b!7828981))

(declare-fun b!7828985 () Bool)

(declare-fun e!4630685 () Bool)

(declare-fun tp!2313371 () Bool)

(declare-fun tp!2313370 () Bool)

(assert (=> b!7828985 (= e!4630685 (and tp!2313371 tp!2313370))))

(declare-fun b!7828982 () Bool)

(assert (=> b!7828982 (= e!4630685 tp_is_empty!52263)))

(declare-fun b!7828984 () Bool)

(declare-fun tp!2313372 () Bool)

(assert (=> b!7828984 (= e!4630685 tp!2313372)))

(assert (=> b!7827875 (= tp!2312744 e!4630685)))

(declare-fun b!7828983 () Bool)

(declare-fun tp!2313369 () Bool)

(declare-fun tp!2313373 () Bool)

(assert (=> b!7828983 (= e!4630685 (and tp!2313369 tp!2313373))))

(assert (= (and b!7827875 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (reg!21283 r1!6261))))) b!7828982))

(assert (= (and b!7827875 (is-Concat!29799 (regOne!42420 (regOne!42420 (reg!21283 r1!6261))))) b!7828983))

(assert (= (and b!7827875 (is-Star!20954 (regOne!42420 (regOne!42420 (reg!21283 r1!6261))))) b!7828984))

(assert (= (and b!7827875 (is-Union!20954 (regOne!42420 (regOne!42420 (reg!21283 r1!6261))))) b!7828985))

(declare-fun b!7828989 () Bool)

(declare-fun e!4630686 () Bool)

(declare-fun tp!2313376 () Bool)

(declare-fun tp!2313375 () Bool)

(assert (=> b!7828989 (= e!4630686 (and tp!2313376 tp!2313375))))

(declare-fun b!7828986 () Bool)

(assert (=> b!7828986 (= e!4630686 tp_is_empty!52263)))

(declare-fun b!7828988 () Bool)

(declare-fun tp!2313377 () Bool)

(assert (=> b!7828988 (= e!4630686 tp!2313377)))

(assert (=> b!7827875 (= tp!2312748 e!4630686)))

(declare-fun b!7828987 () Bool)

(declare-fun tp!2313374 () Bool)

(declare-fun tp!2313378 () Bool)

(assert (=> b!7828987 (= e!4630686 (and tp!2313374 tp!2313378))))

(assert (= (and b!7827875 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (reg!21283 r1!6261))))) b!7828986))

(assert (= (and b!7827875 (is-Concat!29799 (regTwo!42420 (regOne!42420 (reg!21283 r1!6261))))) b!7828987))

(assert (= (and b!7827875 (is-Star!20954 (regTwo!42420 (regOne!42420 (reg!21283 r1!6261))))) b!7828988))

(assert (= (and b!7827875 (is-Union!20954 (regTwo!42420 (regOne!42420 (reg!21283 r1!6261))))) b!7828989))

(declare-fun b!7828993 () Bool)

(declare-fun e!4630687 () Bool)

(declare-fun tp!2313381 () Bool)

(declare-fun tp!2313380 () Bool)

(assert (=> b!7828993 (= e!4630687 (and tp!2313381 tp!2313380))))

(declare-fun b!7828990 () Bool)

(assert (=> b!7828990 (= e!4630687 tp_is_empty!52263)))

(declare-fun b!7828992 () Bool)

(declare-fun tp!2313382 () Bool)

(assert (=> b!7828992 (= e!4630687 tp!2313382)))

(assert (=> b!7827970 (= tp!2312862 e!4630687)))

(declare-fun b!7828991 () Bool)

(declare-fun tp!2313379 () Bool)

(declare-fun tp!2313383 () Bool)

(assert (=> b!7828991 (= e!4630687 (and tp!2313379 tp!2313383))))

(assert (= (and b!7827970 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7828990))

(assert (= (and b!7827970 (is-Concat!29799 (regOne!42421 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7828991))

(assert (= (and b!7827970 (is-Star!20954 (regOne!42421 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7828992))

(assert (= (and b!7827970 (is-Union!20954 (regOne!42421 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7828993))

(declare-fun b!7828997 () Bool)

(declare-fun e!4630688 () Bool)

(declare-fun tp!2313386 () Bool)

(declare-fun tp!2313385 () Bool)

(assert (=> b!7828997 (= e!4630688 (and tp!2313386 tp!2313385))))

(declare-fun b!7828994 () Bool)

(assert (=> b!7828994 (= e!4630688 tp_is_empty!52263)))

(declare-fun b!7828996 () Bool)

(declare-fun tp!2313387 () Bool)

(assert (=> b!7828996 (= e!4630688 tp!2313387)))

(assert (=> b!7827970 (= tp!2312861 e!4630688)))

(declare-fun b!7828995 () Bool)

(declare-fun tp!2313384 () Bool)

(declare-fun tp!2313388 () Bool)

(assert (=> b!7828995 (= e!4630688 (and tp!2313384 tp!2313388))))

(assert (= (and b!7827970 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7828994))

(assert (= (and b!7827970 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7828995))

(assert (= (and b!7827970 (is-Star!20954 (regTwo!42421 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7828996))

(assert (= (and b!7827970 (is-Union!20954 (regTwo!42421 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7828997))

(declare-fun b!7829001 () Bool)

(declare-fun e!4630689 () Bool)

(declare-fun tp!2313391 () Bool)

(declare-fun tp!2313390 () Bool)

(assert (=> b!7829001 (= e!4630689 (and tp!2313391 tp!2313390))))

(declare-fun b!7828998 () Bool)

(assert (=> b!7828998 (= e!4630689 tp_is_empty!52263)))

(declare-fun b!7829000 () Bool)

(declare-fun tp!2313392 () Bool)

(assert (=> b!7829000 (= e!4630689 tp!2313392)))

(assert (=> b!7827961 (= tp!2312853 e!4630689)))

(declare-fun b!7828999 () Bool)

(declare-fun tp!2313389 () Bool)

(declare-fun tp!2313393 () Bool)

(assert (=> b!7828999 (= e!4630689 (and tp!2313389 tp!2313393))))

(assert (= (and b!7827961 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7828998))

(assert (= (and b!7827961 (is-Concat!29799 (reg!21283 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7828999))

(assert (= (and b!7827961 (is-Star!20954 (reg!21283 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829000))

(assert (= (and b!7827961 (is-Union!20954 (reg!21283 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829001))

(declare-fun b!7829005 () Bool)

(declare-fun e!4630690 () Bool)

(declare-fun tp!2313396 () Bool)

(declare-fun tp!2313395 () Bool)

(assert (=> b!7829005 (= e!4630690 (and tp!2313396 tp!2313395))))

(declare-fun b!7829002 () Bool)

(assert (=> b!7829002 (= e!4630690 tp_is_empty!52263)))

(declare-fun b!7829004 () Bool)

(declare-fun tp!2313397 () Bool)

(assert (=> b!7829004 (= e!4630690 tp!2313397)))

(assert (=> b!7827952 (= tp!2312840 e!4630690)))

(declare-fun b!7829003 () Bool)

(declare-fun tp!2313394 () Bool)

(declare-fun tp!2313398 () Bool)

(assert (=> b!7829003 (= e!4630690 (and tp!2313394 tp!2313398))))

(assert (= (and b!7827952 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829002))

(assert (= (and b!7827952 (is-Concat!29799 (regOne!42420 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829003))

(assert (= (and b!7827952 (is-Star!20954 (regOne!42420 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829004))

(assert (= (and b!7827952 (is-Union!20954 (regOne!42420 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829005))

(declare-fun b!7829009 () Bool)

(declare-fun e!4630691 () Bool)

(declare-fun tp!2313401 () Bool)

(declare-fun tp!2313400 () Bool)

(assert (=> b!7829009 (= e!4630691 (and tp!2313401 tp!2313400))))

(declare-fun b!7829006 () Bool)

(assert (=> b!7829006 (= e!4630691 tp_is_empty!52263)))

(declare-fun b!7829008 () Bool)

(declare-fun tp!2313402 () Bool)

(assert (=> b!7829008 (= e!4630691 tp!2313402)))

(assert (=> b!7827952 (= tp!2312844 e!4630691)))

(declare-fun b!7829007 () Bool)

(declare-fun tp!2313399 () Bool)

(declare-fun tp!2313403 () Bool)

(assert (=> b!7829007 (= e!4630691 (and tp!2313399 tp!2313403))))

(assert (= (and b!7827952 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829006))

(assert (= (and b!7827952 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829007))

(assert (= (and b!7827952 (is-Star!20954 (regTwo!42420 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829008))

(assert (= (and b!7827952 (is-Union!20954 (regTwo!42420 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829009))

(declare-fun b!7829013 () Bool)

(declare-fun e!4630692 () Bool)

(declare-fun tp!2313406 () Bool)

(declare-fun tp!2313405 () Bool)

(assert (=> b!7829013 (= e!4630692 (and tp!2313406 tp!2313405))))

(declare-fun b!7829010 () Bool)

(assert (=> b!7829010 (= e!4630692 tp_is_empty!52263)))

(declare-fun b!7829012 () Bool)

(declare-fun tp!2313407 () Bool)

(assert (=> b!7829012 (= e!4630692 tp!2313407)))

(assert (=> b!7827841 (= tp!2312701 e!4630692)))

(declare-fun b!7829011 () Bool)

(declare-fun tp!2313404 () Bool)

(declare-fun tp!2313408 () Bool)

(assert (=> b!7829011 (= e!4630692 (and tp!2313404 tp!2313408))))

(assert (= (and b!7827841 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829010))

(assert (= (and b!7827841 (is-Concat!29799 (regOne!42421 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829011))

(assert (= (and b!7827841 (is-Star!20954 (regOne!42421 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829012))

(assert (= (and b!7827841 (is-Union!20954 (regOne!42421 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829013))

(declare-fun b!7829017 () Bool)

(declare-fun e!4630693 () Bool)

(declare-fun tp!2313411 () Bool)

(declare-fun tp!2313410 () Bool)

(assert (=> b!7829017 (= e!4630693 (and tp!2313411 tp!2313410))))

(declare-fun b!7829014 () Bool)

(assert (=> b!7829014 (= e!4630693 tp_is_empty!52263)))

(declare-fun b!7829016 () Bool)

(declare-fun tp!2313412 () Bool)

(assert (=> b!7829016 (= e!4630693 tp!2313412)))

(assert (=> b!7827841 (= tp!2312700 e!4630693)))

(declare-fun b!7829015 () Bool)

(declare-fun tp!2313409 () Bool)

(declare-fun tp!2313413 () Bool)

(assert (=> b!7829015 (= e!4630693 (and tp!2313409 tp!2313413))))

(assert (= (and b!7827841 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829014))

(assert (= (and b!7827841 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829015))

(assert (= (and b!7827841 (is-Star!20954 (regTwo!42421 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829016))

(assert (= (and b!7827841 (is-Union!20954 (regTwo!42421 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829017))

(declare-fun b!7829021 () Bool)

(declare-fun e!4630694 () Bool)

(declare-fun tp!2313416 () Bool)

(declare-fun tp!2313415 () Bool)

(assert (=> b!7829021 (= e!4630694 (and tp!2313416 tp!2313415))))

(declare-fun b!7829018 () Bool)

(assert (=> b!7829018 (= e!4630694 tp_is_empty!52263)))

(declare-fun b!7829020 () Bool)

(declare-fun tp!2313417 () Bool)

(assert (=> b!7829020 (= e!4630694 tp!2313417)))

(assert (=> b!7827832 (= tp!2312692 e!4630694)))

(declare-fun b!7829019 () Bool)

(declare-fun tp!2313414 () Bool)

(declare-fun tp!2313418 () Bool)

(assert (=> b!7829019 (= e!4630694 (and tp!2313414 tp!2313418))))

(assert (= (and b!7827832 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829018))

(assert (= (and b!7827832 (is-Concat!29799 (reg!21283 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829019))

(assert (= (and b!7827832 (is-Star!20954 (reg!21283 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829020))

(assert (= (and b!7827832 (is-Union!20954 (reg!21283 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829021))

(declare-fun b!7829025 () Bool)

(declare-fun e!4630695 () Bool)

(declare-fun tp!2313421 () Bool)

(declare-fun tp!2313420 () Bool)

(assert (=> b!7829025 (= e!4630695 (and tp!2313421 tp!2313420))))

(declare-fun b!7829022 () Bool)

(assert (=> b!7829022 (= e!4630695 tp_is_empty!52263)))

(declare-fun b!7829024 () Bool)

(declare-fun tp!2313422 () Bool)

(assert (=> b!7829024 (= e!4630695 tp!2313422)))

(assert (=> b!7828027 (= tp!2312933 e!4630695)))

(declare-fun b!7829023 () Bool)

(declare-fun tp!2313419 () Bool)

(declare-fun tp!2313423 () Bool)

(assert (=> b!7829023 (= e!4630695 (and tp!2313419 tp!2313423))))

(assert (= (and b!7828027 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829022))

(assert (= (and b!7828027 (is-Concat!29799 (regOne!42420 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829023))

(assert (= (and b!7828027 (is-Star!20954 (regOne!42420 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829024))

(assert (= (and b!7828027 (is-Union!20954 (regOne!42420 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829025))

(declare-fun b!7829029 () Bool)

(declare-fun e!4630696 () Bool)

(declare-fun tp!2313426 () Bool)

(declare-fun tp!2313425 () Bool)

(assert (=> b!7829029 (= e!4630696 (and tp!2313426 tp!2313425))))

(declare-fun b!7829026 () Bool)

(assert (=> b!7829026 (= e!4630696 tp_is_empty!52263)))

(declare-fun b!7829028 () Bool)

(declare-fun tp!2313427 () Bool)

(assert (=> b!7829028 (= e!4630696 tp!2313427)))

(assert (=> b!7828027 (= tp!2312937 e!4630696)))

(declare-fun b!7829027 () Bool)

(declare-fun tp!2313424 () Bool)

(declare-fun tp!2313428 () Bool)

(assert (=> b!7829027 (= e!4630696 (and tp!2313424 tp!2313428))))

(assert (= (and b!7828027 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829026))

(assert (= (and b!7828027 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829027))

(assert (= (and b!7828027 (is-Star!20954 (regTwo!42420 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829028))

(assert (= (and b!7828027 (is-Union!20954 (regTwo!42420 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829029))

(declare-fun b!7829030 () Bool)

(declare-fun e!4630697 () Bool)

(declare-fun tp!2313429 () Bool)

(assert (=> b!7829030 (= e!4630697 (and tp_is_empty!52263 tp!2313429))))

(assert (=> b!7827918 (= tp!2312799 e!4630697)))

(assert (= (and b!7827918 (is-Cons!73667 (t!388526 (t!388526 (t!388526 s1!4101))))) b!7829030))

(declare-fun b!7829034 () Bool)

(declare-fun e!4630698 () Bool)

(declare-fun tp!2313432 () Bool)

(declare-fun tp!2313431 () Bool)

(assert (=> b!7829034 (= e!4630698 (and tp!2313432 tp!2313431))))

(declare-fun b!7829031 () Bool)

(assert (=> b!7829031 (= e!4630698 tp_is_empty!52263)))

(declare-fun b!7829033 () Bool)

(declare-fun tp!2313433 () Bool)

(assert (=> b!7829033 (= e!4630698 tp!2313433)))

(assert (=> b!7827932 (= tp!2312815 e!4630698)))

(declare-fun b!7829032 () Bool)

(declare-fun tp!2313430 () Bool)

(declare-fun tp!2313434 () Bool)

(assert (=> b!7829032 (= e!4630698 (and tp!2313430 tp!2313434))))

(assert (= (and b!7827932 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (reg!21283 r2!6199))))) b!7829031))

(assert (= (and b!7827932 (is-Concat!29799 (regOne!42420 (regOne!42420 (reg!21283 r2!6199))))) b!7829032))

(assert (= (and b!7827932 (is-Star!20954 (regOne!42420 (regOne!42420 (reg!21283 r2!6199))))) b!7829033))

(assert (= (and b!7827932 (is-Union!20954 (regOne!42420 (regOne!42420 (reg!21283 r2!6199))))) b!7829034))

(declare-fun b!7829038 () Bool)

(declare-fun e!4630699 () Bool)

(declare-fun tp!2313437 () Bool)

(declare-fun tp!2313436 () Bool)

(assert (=> b!7829038 (= e!4630699 (and tp!2313437 tp!2313436))))

(declare-fun b!7829035 () Bool)

(assert (=> b!7829035 (= e!4630699 tp_is_empty!52263)))

(declare-fun b!7829037 () Bool)

(declare-fun tp!2313438 () Bool)

(assert (=> b!7829037 (= e!4630699 tp!2313438)))

(assert (=> b!7827932 (= tp!2312819 e!4630699)))

(declare-fun b!7829036 () Bool)

(declare-fun tp!2313435 () Bool)

(declare-fun tp!2313439 () Bool)

(assert (=> b!7829036 (= e!4630699 (and tp!2313435 tp!2313439))))

(assert (= (and b!7827932 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (reg!21283 r2!6199))))) b!7829035))

(assert (= (and b!7827932 (is-Concat!29799 (regTwo!42420 (regOne!42420 (reg!21283 r2!6199))))) b!7829036))

(assert (= (and b!7827932 (is-Star!20954 (regTwo!42420 (regOne!42420 (reg!21283 r2!6199))))) b!7829037))

(assert (= (and b!7827932 (is-Union!20954 (regTwo!42420 (regOne!42420 (reg!21283 r2!6199))))) b!7829038))

(declare-fun b!7829042 () Bool)

(declare-fun e!4630700 () Bool)

(declare-fun tp!2313442 () Bool)

(declare-fun tp!2313441 () Bool)

(assert (=> b!7829042 (= e!4630700 (and tp!2313442 tp!2313441))))

(declare-fun b!7829039 () Bool)

(assert (=> b!7829039 (= e!4630700 tp_is_empty!52263)))

(declare-fun b!7829041 () Bool)

(declare-fun tp!2313443 () Bool)

(assert (=> b!7829041 (= e!4630700 tp!2313443)))

(assert (=> b!7827916 (= tp!2312797 e!4630700)))

(declare-fun b!7829040 () Bool)

(declare-fun tp!2313440 () Bool)

(declare-fun tp!2313444 () Bool)

(assert (=> b!7829040 (= e!4630700 (and tp!2313440 tp!2313444))))

(assert (= (and b!7827916 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829039))

(assert (= (and b!7827916 (is-Concat!29799 (reg!21283 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829040))

(assert (= (and b!7827916 (is-Star!20954 (reg!21283 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829041))

(assert (= (and b!7827916 (is-Union!20954 (reg!21283 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829042))

(declare-fun b!7829046 () Bool)

(declare-fun e!4630701 () Bool)

(declare-fun tp!2313447 () Bool)

(declare-fun tp!2313446 () Bool)

(assert (=> b!7829046 (= e!4630701 (and tp!2313447 tp!2313446))))

(declare-fun b!7829043 () Bool)

(assert (=> b!7829043 (= e!4630701 tp_is_empty!52263)))

(declare-fun b!7829045 () Bool)

(declare-fun tp!2313448 () Bool)

(assert (=> b!7829045 (= e!4630701 tp!2313448)))

(assert (=> b!7827907 (= tp!2312784 e!4630701)))

(declare-fun b!7829044 () Bool)

(declare-fun tp!2313445 () Bool)

(declare-fun tp!2313449 () Bool)

(assert (=> b!7829044 (= e!4630701 (and tp!2313445 tp!2313449))))

(assert (= (and b!7827907 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (reg!21283 r2!6199))))) b!7829043))

(assert (= (and b!7827907 (is-Concat!29799 (regOne!42420 (regTwo!42421 (reg!21283 r2!6199))))) b!7829044))

(assert (= (and b!7827907 (is-Star!20954 (regOne!42420 (regTwo!42421 (reg!21283 r2!6199))))) b!7829045))

(assert (= (and b!7827907 (is-Union!20954 (regOne!42420 (regTwo!42421 (reg!21283 r2!6199))))) b!7829046))

(declare-fun b!7829050 () Bool)

(declare-fun e!4630702 () Bool)

(declare-fun tp!2313452 () Bool)

(declare-fun tp!2313451 () Bool)

(assert (=> b!7829050 (= e!4630702 (and tp!2313452 tp!2313451))))

(declare-fun b!7829047 () Bool)

(assert (=> b!7829047 (= e!4630702 tp_is_empty!52263)))

(declare-fun b!7829049 () Bool)

(declare-fun tp!2313453 () Bool)

(assert (=> b!7829049 (= e!4630702 tp!2313453)))

(assert (=> b!7827907 (= tp!2312788 e!4630702)))

(declare-fun b!7829048 () Bool)

(declare-fun tp!2313450 () Bool)

(declare-fun tp!2313454 () Bool)

(assert (=> b!7829048 (= e!4630702 (and tp!2313450 tp!2313454))))

(assert (= (and b!7827907 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (reg!21283 r2!6199))))) b!7829047))

(assert (= (and b!7827907 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (reg!21283 r2!6199))))) b!7829048))

(assert (= (and b!7827907 (is-Star!20954 (regTwo!42420 (regTwo!42421 (reg!21283 r2!6199))))) b!7829049))

(assert (= (and b!7827907 (is-Union!20954 (regTwo!42420 (regTwo!42421 (reg!21283 r2!6199))))) b!7829050))

(declare-fun b!7829051 () Bool)

(declare-fun e!4630703 () Bool)

(declare-fun tp!2313455 () Bool)

(assert (=> b!7829051 (= e!4630703 (and tp_is_empty!52263 tp!2313455))))

(assert (=> b!7827993 (= tp!2312892 e!4630703)))

(assert (= (and b!7827993 (is-Cons!73667 (t!388526 (t!388526 (t!388526 s!14274))))) b!7829051))

(declare-fun b!7829055 () Bool)

(declare-fun e!4630704 () Bool)

(declare-fun tp!2313458 () Bool)

(declare-fun tp!2313457 () Bool)

(assert (=> b!7829055 (= e!4630704 (and tp!2313458 tp!2313457))))

(declare-fun b!7829052 () Bool)

(assert (=> b!7829052 (= e!4630704 tp_is_empty!52263)))

(declare-fun b!7829054 () Bool)

(declare-fun tp!2313459 () Bool)

(assert (=> b!7829054 (= e!4630704 tp!2313459)))

(assert (=> b!7827984 (= tp!2312880 e!4630704)))

(declare-fun b!7829053 () Bool)

(declare-fun tp!2313456 () Bool)

(declare-fun tp!2313460 () Bool)

(assert (=> b!7829053 (= e!4630704 (and tp!2313456 tp!2313460))))

(assert (= (and b!7827984 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829052))

(assert (= (and b!7827984 (is-Concat!29799 (regOne!42420 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829053))

(assert (= (and b!7827984 (is-Star!20954 (regOne!42420 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829054))

(assert (= (and b!7827984 (is-Union!20954 (regOne!42420 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829055))

(declare-fun b!7829059 () Bool)

(declare-fun e!4630705 () Bool)

(declare-fun tp!2313463 () Bool)

(declare-fun tp!2313462 () Bool)

(assert (=> b!7829059 (= e!4630705 (and tp!2313463 tp!2313462))))

(declare-fun b!7829056 () Bool)

(assert (=> b!7829056 (= e!4630705 tp_is_empty!52263)))

(declare-fun b!7829058 () Bool)

(declare-fun tp!2313464 () Bool)

(assert (=> b!7829058 (= e!4630705 tp!2313464)))

(assert (=> b!7827984 (= tp!2312884 e!4630705)))

(declare-fun b!7829057 () Bool)

(declare-fun tp!2313461 () Bool)

(declare-fun tp!2313465 () Bool)

(assert (=> b!7829057 (= e!4630705 (and tp!2313461 tp!2313465))))

(assert (= (and b!7827984 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829056))

(assert (= (and b!7827984 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829057))

(assert (= (and b!7827984 (is-Star!20954 (regTwo!42420 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829058))

(assert (= (and b!7827984 (is-Union!20954 (regTwo!42420 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829059))

(declare-fun b!7829063 () Bool)

(declare-fun e!4630706 () Bool)

(declare-fun tp!2313468 () Bool)

(declare-fun tp!2313467 () Bool)

(assert (=> b!7829063 (= e!4630706 (and tp!2313468 tp!2313467))))

(declare-fun b!7829060 () Bool)

(assert (=> b!7829060 (= e!4630706 tp_is_empty!52263)))

(declare-fun b!7829062 () Bool)

(declare-fun tp!2313469 () Bool)

(assert (=> b!7829062 (= e!4630706 tp!2313469)))

(assert (=> b!7827873 (= tp!2312741 e!4630706)))

(declare-fun b!7829061 () Bool)

(declare-fun tp!2313466 () Bool)

(declare-fun tp!2313470 () Bool)

(assert (=> b!7829061 (= e!4630706 (and tp!2313466 tp!2313470))))

(assert (= (and b!7827873 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (regOne!42420 r2!6199))))) b!7829060))

(assert (= (and b!7827873 (is-Concat!29799 (regOne!42421 (reg!21283 (regOne!42420 r2!6199))))) b!7829061))

(assert (= (and b!7827873 (is-Star!20954 (regOne!42421 (reg!21283 (regOne!42420 r2!6199))))) b!7829062))

(assert (= (and b!7827873 (is-Union!20954 (regOne!42421 (reg!21283 (regOne!42420 r2!6199))))) b!7829063))

(declare-fun b!7829067 () Bool)

(declare-fun e!4630707 () Bool)

(declare-fun tp!2313473 () Bool)

(declare-fun tp!2313472 () Bool)

(assert (=> b!7829067 (= e!4630707 (and tp!2313473 tp!2313472))))

(declare-fun b!7829064 () Bool)

(assert (=> b!7829064 (= e!4630707 tp_is_empty!52263)))

(declare-fun b!7829066 () Bool)

(declare-fun tp!2313474 () Bool)

(assert (=> b!7829066 (= e!4630707 tp!2313474)))

(assert (=> b!7827873 (= tp!2312740 e!4630707)))

(declare-fun b!7829065 () Bool)

(declare-fun tp!2313471 () Bool)

(declare-fun tp!2313475 () Bool)

(assert (=> b!7829065 (= e!4630707 (and tp!2313471 tp!2313475))))

(assert (= (and b!7827873 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (regOne!42420 r2!6199))))) b!7829064))

(assert (= (and b!7827873 (is-Concat!29799 (regTwo!42421 (reg!21283 (regOne!42420 r2!6199))))) b!7829065))

(assert (= (and b!7827873 (is-Star!20954 (regTwo!42421 (reg!21283 (regOne!42420 r2!6199))))) b!7829066))

(assert (= (and b!7827873 (is-Union!20954 (regTwo!42421 (reg!21283 (regOne!42420 r2!6199))))) b!7829067))

(declare-fun b!7829071 () Bool)

(declare-fun e!4630708 () Bool)

(declare-fun tp!2313478 () Bool)

(declare-fun tp!2313477 () Bool)

(assert (=> b!7829071 (= e!4630708 (and tp!2313478 tp!2313477))))

(declare-fun b!7829068 () Bool)

(assert (=> b!7829068 (= e!4630708 tp_is_empty!52263)))

(declare-fun b!7829070 () Bool)

(declare-fun tp!2313479 () Bool)

(assert (=> b!7829070 (= e!4630708 tp!2313479)))

(assert (=> b!7827864 (= tp!2312732 e!4630708)))

(declare-fun b!7829069 () Bool)

(declare-fun tp!2313476 () Bool)

(declare-fun tp!2313480 () Bool)

(assert (=> b!7829069 (= e!4630708 (and tp!2313476 tp!2313480))))

(assert (= (and b!7827864 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (reg!21283 r1!6261))))) b!7829068))

(assert (= (and b!7827864 (is-Concat!29799 (reg!21283 (regOne!42421 (reg!21283 r1!6261))))) b!7829069))

(assert (= (and b!7827864 (is-Star!20954 (reg!21283 (regOne!42421 (reg!21283 r1!6261))))) b!7829070))

(assert (= (and b!7827864 (is-Union!20954 (reg!21283 (regOne!42421 (reg!21283 r1!6261))))) b!7829071))

(declare-fun b!7829075 () Bool)

(declare-fun e!4630709 () Bool)

(declare-fun tp!2313483 () Bool)

(declare-fun tp!2313482 () Bool)

(assert (=> b!7829075 (= e!4630709 (and tp!2313483 tp!2313482))))

(declare-fun b!7829072 () Bool)

(assert (=> b!7829072 (= e!4630709 tp_is_empty!52263)))

(declare-fun b!7829074 () Bool)

(declare-fun tp!2313484 () Bool)

(assert (=> b!7829074 (= e!4630709 tp!2313484)))

(assert (=> b!7827855 (= tp!2312719 e!4630709)))

(declare-fun b!7829073 () Bool)

(declare-fun tp!2313481 () Bool)

(declare-fun tp!2313485 () Bool)

(assert (=> b!7829073 (= e!4630709 (and tp!2313481 tp!2313485))))

(assert (= (and b!7827855 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (reg!21283 r1!6261))))) b!7829072))

(assert (= (and b!7827855 (is-Concat!29799 (regOne!42420 (reg!21283 (reg!21283 r1!6261))))) b!7829073))

(assert (= (and b!7827855 (is-Star!20954 (regOne!42420 (reg!21283 (reg!21283 r1!6261))))) b!7829074))

(assert (= (and b!7827855 (is-Union!20954 (regOne!42420 (reg!21283 (reg!21283 r1!6261))))) b!7829075))

(declare-fun b!7829079 () Bool)

(declare-fun e!4630710 () Bool)

(declare-fun tp!2313488 () Bool)

(declare-fun tp!2313487 () Bool)

(assert (=> b!7829079 (= e!4630710 (and tp!2313488 tp!2313487))))

(declare-fun b!7829076 () Bool)

(assert (=> b!7829076 (= e!4630710 tp_is_empty!52263)))

(declare-fun b!7829078 () Bool)

(declare-fun tp!2313489 () Bool)

(assert (=> b!7829078 (= e!4630710 tp!2313489)))

(assert (=> b!7827855 (= tp!2312723 e!4630710)))

(declare-fun b!7829077 () Bool)

(declare-fun tp!2313486 () Bool)

(declare-fun tp!2313490 () Bool)

(assert (=> b!7829077 (= e!4630710 (and tp!2313486 tp!2313490))))

(assert (= (and b!7827855 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (reg!21283 r1!6261))))) b!7829076))

(assert (= (and b!7827855 (is-Concat!29799 (regTwo!42420 (reg!21283 (reg!21283 r1!6261))))) b!7829077))

(assert (= (and b!7827855 (is-Star!20954 (regTwo!42420 (reg!21283 (reg!21283 r1!6261))))) b!7829078))

(assert (= (and b!7827855 (is-Union!20954 (regTwo!42420 (reg!21283 (reg!21283 r1!6261))))) b!7829079))

(declare-fun b!7829083 () Bool)

(declare-fun e!4630711 () Bool)

(declare-fun tp!2313493 () Bool)

(declare-fun tp!2313492 () Bool)

(assert (=> b!7829083 (= e!4630711 (and tp!2313493 tp!2313492))))

(declare-fun b!7829080 () Bool)

(assert (=> b!7829080 (= e!4630711 tp_is_empty!52263)))

(declare-fun b!7829082 () Bool)

(declare-fun tp!2313494 () Bool)

(assert (=> b!7829082 (= e!4630711 tp!2313494)))

(assert (=> b!7827950 (= tp!2312837 e!4630711)))

(declare-fun b!7829081 () Bool)

(declare-fun tp!2313491 () Bool)

(declare-fun tp!2313495 () Bool)

(assert (=> b!7829081 (= e!4630711 (and tp!2313491 tp!2313495))))

(assert (= (and b!7827950 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829080))

(assert (= (and b!7827950 (is-Concat!29799 (regOne!42421 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829081))

(assert (= (and b!7827950 (is-Star!20954 (regOne!42421 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829082))

(assert (= (and b!7827950 (is-Union!20954 (regOne!42421 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829083))

(declare-fun b!7829087 () Bool)

(declare-fun e!4630712 () Bool)

(declare-fun tp!2313498 () Bool)

(declare-fun tp!2313497 () Bool)

(assert (=> b!7829087 (= e!4630712 (and tp!2313498 tp!2313497))))

(declare-fun b!7829084 () Bool)

(assert (=> b!7829084 (= e!4630712 tp_is_empty!52263)))

(declare-fun b!7829086 () Bool)

(declare-fun tp!2313499 () Bool)

(assert (=> b!7829086 (= e!4630712 tp!2313499)))

(assert (=> b!7827950 (= tp!2312836 e!4630712)))

(declare-fun b!7829085 () Bool)

(declare-fun tp!2313496 () Bool)

(declare-fun tp!2313500 () Bool)

(assert (=> b!7829085 (= e!4630712 (and tp!2313496 tp!2313500))))

(assert (= (and b!7827950 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829084))

(assert (= (and b!7827950 (is-Concat!29799 (regTwo!42421 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829085))

(assert (= (and b!7827950 (is-Star!20954 (regTwo!42421 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829086))

(assert (= (and b!7827950 (is-Union!20954 (regTwo!42421 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829087))

(declare-fun b!7829091 () Bool)

(declare-fun e!4630713 () Bool)

(declare-fun tp!2313503 () Bool)

(declare-fun tp!2313502 () Bool)

(assert (=> b!7829091 (= e!4630713 (and tp!2313503 tp!2313502))))

(declare-fun b!7829088 () Bool)

(assert (=> b!7829088 (= e!4630713 tp_is_empty!52263)))

(declare-fun b!7829090 () Bool)

(declare-fun tp!2313504 () Bool)

(assert (=> b!7829090 (= e!4630713 tp!2313504)))

(assert (=> b!7827941 (= tp!2312828 e!4630713)))

(declare-fun b!7829089 () Bool)

(declare-fun tp!2313501 () Bool)

(declare-fun tp!2313505 () Bool)

(assert (=> b!7829089 (= e!4630713 (and tp!2313501 tp!2313505))))

(assert (= (and b!7827941 (is-ElementMatch!20954 (reg!21283 (reg!21283 (regOne!42420 r1!6261))))) b!7829088))

(assert (= (and b!7827941 (is-Concat!29799 (reg!21283 (reg!21283 (regOne!42420 r1!6261))))) b!7829089))

(assert (= (and b!7827941 (is-Star!20954 (reg!21283 (reg!21283 (regOne!42420 r1!6261))))) b!7829090))

(assert (= (and b!7827941 (is-Union!20954 (reg!21283 (reg!21283 (regOne!42420 r1!6261))))) b!7829091))

(declare-fun b!7829095 () Bool)

(declare-fun e!4630714 () Bool)

(declare-fun tp!2313508 () Bool)

(declare-fun tp!2313507 () Bool)

(assert (=> b!7829095 (= e!4630714 (and tp!2313508 tp!2313507))))

(declare-fun b!7829092 () Bool)

(assert (=> b!7829092 (= e!4630714 tp_is_empty!52263)))

(declare-fun b!7829094 () Bool)

(declare-fun tp!2313509 () Bool)

(assert (=> b!7829094 (= e!4630714 tp!2313509)))

(assert (=> b!7827964 (= tp!2312855 e!4630714)))

(declare-fun b!7829093 () Bool)

(declare-fun tp!2313506 () Bool)

(declare-fun tp!2313510 () Bool)

(assert (=> b!7829093 (= e!4630714 (and tp!2313506 tp!2313510))))

(assert (= (and b!7827964 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829092))

(assert (= (and b!7827964 (is-Concat!29799 (regOne!42420 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829093))

(assert (= (and b!7827964 (is-Star!20954 (regOne!42420 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829094))

(assert (= (and b!7827964 (is-Union!20954 (regOne!42420 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829095))

(declare-fun b!7829099 () Bool)

(declare-fun e!4630715 () Bool)

(declare-fun tp!2313513 () Bool)

(declare-fun tp!2313512 () Bool)

(assert (=> b!7829099 (= e!4630715 (and tp!2313513 tp!2313512))))

(declare-fun b!7829096 () Bool)

(assert (=> b!7829096 (= e!4630715 tp_is_empty!52263)))

(declare-fun b!7829098 () Bool)

(declare-fun tp!2313514 () Bool)

(assert (=> b!7829098 (= e!4630715 tp!2313514)))

(assert (=> b!7827964 (= tp!2312859 e!4630715)))

(declare-fun b!7829097 () Bool)

(declare-fun tp!2313511 () Bool)

(declare-fun tp!2313515 () Bool)

(assert (=> b!7829097 (= e!4630715 (and tp!2313511 tp!2313515))))

(assert (= (and b!7827964 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829096))

(assert (= (and b!7827964 (is-Concat!29799 (regTwo!42420 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829097))

(assert (= (and b!7827964 (is-Star!20954 (regTwo!42420 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829098))

(assert (= (and b!7827964 (is-Union!20954 (regTwo!42420 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829099))

(declare-fun b!7829103 () Bool)

(declare-fun e!4630716 () Bool)

(declare-fun tp!2313518 () Bool)

(declare-fun tp!2313517 () Bool)

(assert (=> b!7829103 (= e!4630716 (and tp!2313518 tp!2313517))))

(declare-fun b!7829100 () Bool)

(assert (=> b!7829100 (= e!4630716 tp_is_empty!52263)))

(declare-fun b!7829102 () Bool)

(declare-fun tp!2313519 () Bool)

(assert (=> b!7829102 (= e!4630716 tp!2313519)))

(assert (=> b!7828025 (= tp!2312930 e!4630716)))

(declare-fun b!7829101 () Bool)

(declare-fun tp!2313516 () Bool)

(declare-fun tp!2313520 () Bool)

(assert (=> b!7829101 (= e!4630716 (and tp!2313516 tp!2313520))))

(assert (= (and b!7828025 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829100))

(assert (= (and b!7828025 (is-Concat!29799 (regOne!42421 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829101))

(assert (= (and b!7828025 (is-Star!20954 (regOne!42421 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829102))

(assert (= (and b!7828025 (is-Union!20954 (regOne!42421 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829103))

(declare-fun b!7829107 () Bool)

(declare-fun e!4630717 () Bool)

(declare-fun tp!2313523 () Bool)

(declare-fun tp!2313522 () Bool)

(assert (=> b!7829107 (= e!4630717 (and tp!2313523 tp!2313522))))

(declare-fun b!7829104 () Bool)

(assert (=> b!7829104 (= e!4630717 tp_is_empty!52263)))

(declare-fun b!7829106 () Bool)

(declare-fun tp!2313524 () Bool)

(assert (=> b!7829106 (= e!4630717 tp!2313524)))

(assert (=> b!7828025 (= tp!2312929 e!4630717)))

(declare-fun b!7829105 () Bool)

(declare-fun tp!2313521 () Bool)

(declare-fun tp!2313525 () Bool)

(assert (=> b!7829105 (= e!4630717 (and tp!2313521 tp!2313525))))

(assert (= (and b!7828025 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829104))

(assert (= (and b!7828025 (is-Concat!29799 (regTwo!42421 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829105))

(assert (= (and b!7828025 (is-Star!20954 (regTwo!42421 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829106))

(assert (= (and b!7828025 (is-Union!20954 (regTwo!42421 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829107))

(declare-fun b!7829111 () Bool)

(declare-fun e!4630718 () Bool)

(declare-fun tp!2313528 () Bool)

(declare-fun tp!2313527 () Bool)

(assert (=> b!7829111 (= e!4630718 (and tp!2313528 tp!2313527))))

(declare-fun b!7829108 () Bool)

(assert (=> b!7829108 (= e!4630718 tp_is_empty!52263)))

(declare-fun b!7829110 () Bool)

(declare-fun tp!2313529 () Bool)

(assert (=> b!7829110 (= e!4630718 tp!2313529)))

(assert (=> b!7828016 (= tp!2312921 e!4630718)))

(declare-fun b!7829109 () Bool)

(declare-fun tp!2313526 () Bool)

(declare-fun tp!2313530 () Bool)

(assert (=> b!7829109 (= e!4630718 (and tp!2313526 tp!2313530))))

(assert (= (and b!7828016 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829108))

(assert (= (and b!7828016 (is-Concat!29799 (reg!21283 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829109))

(assert (= (and b!7828016 (is-Star!20954 (reg!21283 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829110))

(assert (= (and b!7828016 (is-Union!20954 (reg!21283 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829111))

(declare-fun b!7829115 () Bool)

(declare-fun e!4630719 () Bool)

(declare-fun tp!2313533 () Bool)

(declare-fun tp!2313532 () Bool)

(assert (=> b!7829115 (= e!4630719 (and tp!2313533 tp!2313532))))

(declare-fun b!7829112 () Bool)

(assert (=> b!7829112 (= e!4630719 tp_is_empty!52263)))

(declare-fun b!7829114 () Bool)

(declare-fun tp!2313534 () Bool)

(assert (=> b!7829114 (= e!4630719 tp!2313534)))

(assert (=> b!7828007 (= tp!2312908 e!4630719)))

(declare-fun b!7829113 () Bool)

(declare-fun tp!2313531 () Bool)

(declare-fun tp!2313535 () Bool)

(assert (=> b!7829113 (= e!4630719 (and tp!2313531 tp!2313535))))

(assert (= (and b!7828007 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (regOne!42420 r2!6199))))) b!7829112))

(assert (= (and b!7828007 (is-Concat!29799 (regOne!42420 (regOne!42421 (regOne!42420 r2!6199))))) b!7829113))

(assert (= (and b!7828007 (is-Star!20954 (regOne!42420 (regOne!42421 (regOne!42420 r2!6199))))) b!7829114))

(assert (= (and b!7828007 (is-Union!20954 (regOne!42420 (regOne!42421 (regOne!42420 r2!6199))))) b!7829115))

(declare-fun b!7829119 () Bool)

(declare-fun e!4630720 () Bool)

(declare-fun tp!2313538 () Bool)

(declare-fun tp!2313537 () Bool)

(assert (=> b!7829119 (= e!4630720 (and tp!2313538 tp!2313537))))

(declare-fun b!7829116 () Bool)

(assert (=> b!7829116 (= e!4630720 tp_is_empty!52263)))

(declare-fun b!7829118 () Bool)

(declare-fun tp!2313539 () Bool)

(assert (=> b!7829118 (= e!4630720 tp!2313539)))

(assert (=> b!7828007 (= tp!2312912 e!4630720)))

(declare-fun b!7829117 () Bool)

(declare-fun tp!2313536 () Bool)

(declare-fun tp!2313540 () Bool)

(assert (=> b!7829117 (= e!4630720 (and tp!2313536 tp!2313540))))

(assert (= (and b!7828007 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (regOne!42420 r2!6199))))) b!7829116))

(assert (= (and b!7828007 (is-Concat!29799 (regTwo!42420 (regOne!42421 (regOne!42420 r2!6199))))) b!7829117))

(assert (= (and b!7828007 (is-Star!20954 (regTwo!42420 (regOne!42421 (regOne!42420 r2!6199))))) b!7829118))

(assert (= (and b!7828007 (is-Union!20954 (regTwo!42420 (regOne!42421 (regOne!42420 r2!6199))))) b!7829119))

(declare-fun b!7829123 () Bool)

(declare-fun e!4630721 () Bool)

(declare-fun tp!2313543 () Bool)

(declare-fun tp!2313542 () Bool)

(assert (=> b!7829123 (= e!4630721 (and tp!2313543 tp!2313542))))

(declare-fun b!7829120 () Bool)

(assert (=> b!7829120 (= e!4630721 tp_is_empty!52263)))

(declare-fun b!7829122 () Bool)

(declare-fun tp!2313544 () Bool)

(assert (=> b!7829122 (= e!4630721 tp!2313544)))

(assert (=> b!7827930 (= tp!2312812 e!4630721)))

(declare-fun b!7829121 () Bool)

(declare-fun tp!2313541 () Bool)

(declare-fun tp!2313545 () Bool)

(assert (=> b!7829121 (= e!4630721 (and tp!2313541 tp!2313545))))

(assert (= (and b!7827930 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (regOne!42421 r2!6199))))) b!7829120))

(assert (= (and b!7827930 (is-Concat!29799 (regOne!42421 (reg!21283 (regOne!42421 r2!6199))))) b!7829121))

(assert (= (and b!7827930 (is-Star!20954 (regOne!42421 (reg!21283 (regOne!42421 r2!6199))))) b!7829122))

(assert (= (and b!7827930 (is-Union!20954 (regOne!42421 (reg!21283 (regOne!42421 r2!6199))))) b!7829123))

(declare-fun b!7829127 () Bool)

(declare-fun e!4630722 () Bool)

(declare-fun tp!2313548 () Bool)

(declare-fun tp!2313547 () Bool)

(assert (=> b!7829127 (= e!4630722 (and tp!2313548 tp!2313547))))

(declare-fun b!7829124 () Bool)

(assert (=> b!7829124 (= e!4630722 tp_is_empty!52263)))

(declare-fun b!7829126 () Bool)

(declare-fun tp!2313549 () Bool)

(assert (=> b!7829126 (= e!4630722 tp!2313549)))

(assert (=> b!7827930 (= tp!2312811 e!4630722)))

(declare-fun b!7829125 () Bool)

(declare-fun tp!2313546 () Bool)

(declare-fun tp!2313550 () Bool)

(assert (=> b!7829125 (= e!4630722 (and tp!2313546 tp!2313550))))

(assert (= (and b!7827930 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (regOne!42421 r2!6199))))) b!7829124))

(assert (= (and b!7827930 (is-Concat!29799 (regTwo!42421 (reg!21283 (regOne!42421 r2!6199))))) b!7829125))

(assert (= (and b!7827930 (is-Star!20954 (regTwo!42421 (reg!21283 (regOne!42421 r2!6199))))) b!7829126))

(assert (= (and b!7827930 (is-Union!20954 (regTwo!42421 (reg!21283 (regOne!42421 r2!6199))))) b!7829127))

(declare-fun b!7829131 () Bool)

(declare-fun e!4630723 () Bool)

(declare-fun tp!2313553 () Bool)

(declare-fun tp!2313552 () Bool)

(assert (=> b!7829131 (= e!4630723 (and tp!2313553 tp!2313552))))

(declare-fun b!7829128 () Bool)

(assert (=> b!7829128 (= e!4630723 tp_is_empty!52263)))

(declare-fun b!7829130 () Bool)

(declare-fun tp!2313554 () Bool)

(assert (=> b!7829130 (= e!4630723 tp!2313554)))

(assert (=> b!7827921 (= tp!2312803 e!4630723)))

(declare-fun b!7829129 () Bool)

(declare-fun tp!2313551 () Bool)

(declare-fun tp!2313555 () Bool)

(assert (=> b!7829129 (= e!4630723 (and tp!2313551 tp!2313555))))

(assert (= (and b!7827921 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (regOne!42421 r2!6199))))) b!7829128))

(assert (= (and b!7827921 (is-Concat!29799 (reg!21283 (regOne!42421 (regOne!42421 r2!6199))))) b!7829129))

(assert (= (and b!7827921 (is-Star!20954 (reg!21283 (regOne!42421 (regOne!42421 r2!6199))))) b!7829130))

(assert (= (and b!7827921 (is-Union!20954 (reg!21283 (regOne!42421 (regOne!42421 r2!6199))))) b!7829131))

(declare-fun b!7829135 () Bool)

(declare-fun e!4630724 () Bool)

(declare-fun tp!2313558 () Bool)

(declare-fun tp!2313557 () Bool)

(assert (=> b!7829135 (= e!4630724 (and tp!2313558 tp!2313557))))

(declare-fun b!7829132 () Bool)

(assert (=> b!7829132 (= e!4630724 tp_is_empty!52263)))

(declare-fun b!7829134 () Bool)

(declare-fun tp!2313559 () Bool)

(assert (=> b!7829134 (= e!4630724 tp!2313559)))

(assert (=> b!7827905 (= tp!2312781 e!4630724)))

(declare-fun b!7829133 () Bool)

(declare-fun tp!2313556 () Bool)

(declare-fun tp!2313560 () Bool)

(assert (=> b!7829133 (= e!4630724 (and tp!2313556 tp!2313560))))

(assert (= (and b!7827905 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (reg!21283 r2!6199))))) b!7829132))

(assert (= (and b!7827905 (is-Concat!29799 (regOne!42421 (regOne!42421 (reg!21283 r2!6199))))) b!7829133))

(assert (= (and b!7827905 (is-Star!20954 (regOne!42421 (regOne!42421 (reg!21283 r2!6199))))) b!7829134))

(assert (= (and b!7827905 (is-Union!20954 (regOne!42421 (regOne!42421 (reg!21283 r2!6199))))) b!7829135))

(declare-fun b!7829139 () Bool)

(declare-fun e!4630725 () Bool)

(declare-fun tp!2313563 () Bool)

(declare-fun tp!2313562 () Bool)

(assert (=> b!7829139 (= e!4630725 (and tp!2313563 tp!2313562))))

(declare-fun b!7829136 () Bool)

(assert (=> b!7829136 (= e!4630725 tp_is_empty!52263)))

(declare-fun b!7829138 () Bool)

(declare-fun tp!2313564 () Bool)

(assert (=> b!7829138 (= e!4630725 tp!2313564)))

(assert (=> b!7827905 (= tp!2312780 e!4630725)))

(declare-fun b!7829137 () Bool)

(declare-fun tp!2313561 () Bool)

(declare-fun tp!2313565 () Bool)

(assert (=> b!7829137 (= e!4630725 (and tp!2313561 tp!2313565))))

(assert (= (and b!7827905 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (reg!21283 r2!6199))))) b!7829136))

(assert (= (and b!7827905 (is-Concat!29799 (regTwo!42421 (regOne!42421 (reg!21283 r2!6199))))) b!7829137))

(assert (= (and b!7827905 (is-Star!20954 (regTwo!42421 (regOne!42421 (reg!21283 r2!6199))))) b!7829138))

(assert (= (and b!7827905 (is-Union!20954 (regTwo!42421 (regOne!42421 (reg!21283 r2!6199))))) b!7829139))

(declare-fun b!7829143 () Bool)

(declare-fun e!4630726 () Bool)

(declare-fun tp!2313568 () Bool)

(declare-fun tp!2313567 () Bool)

(assert (=> b!7829143 (= e!4630726 (and tp!2313568 tp!2313567))))

(declare-fun b!7829140 () Bool)

(assert (=> b!7829140 (= e!4630726 tp_is_empty!52263)))

(declare-fun b!7829142 () Bool)

(declare-fun tp!2313569 () Bool)

(assert (=> b!7829142 (= e!4630726 tp!2313569)))

(assert (=> b!7827896 (= tp!2312772 e!4630726)))

(declare-fun b!7829141 () Bool)

(declare-fun tp!2313566 () Bool)

(declare-fun tp!2313570 () Bool)

(assert (=> b!7829141 (= e!4630726 (and tp!2313566 tp!2313570))))

(assert (= (and b!7827896 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (regOne!42420 r1!6261))))) b!7829140))

(assert (= (and b!7827896 (is-Concat!29799 (reg!21283 (regOne!42421 (regOne!42420 r1!6261))))) b!7829141))

(assert (= (and b!7827896 (is-Star!20954 (reg!21283 (regOne!42421 (regOne!42420 r1!6261))))) b!7829142))

(assert (= (and b!7827896 (is-Union!20954 (reg!21283 (regOne!42421 (regOne!42420 r1!6261))))) b!7829143))

(declare-fun b!7829147 () Bool)

(declare-fun e!4630727 () Bool)

(declare-fun tp!2313573 () Bool)

(declare-fun tp!2313572 () Bool)

(assert (=> b!7829147 (= e!4630727 (and tp!2313573 tp!2313572))))

(declare-fun b!7829144 () Bool)

(assert (=> b!7829144 (= e!4630727 tp_is_empty!52263)))

(declare-fun b!7829146 () Bool)

(declare-fun tp!2313574 () Bool)

(assert (=> b!7829146 (= e!4630727 tp!2313574)))

(assert (=> b!7827887 (= tp!2312759 e!4630727)))

(declare-fun b!7829145 () Bool)

(declare-fun tp!2313571 () Bool)

(declare-fun tp!2313575 () Bool)

(assert (=> b!7829145 (= e!4630727 (and tp!2313571 tp!2313575))))

(assert (= (and b!7827887 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829144))

(assert (= (and b!7827887 (is-Concat!29799 (regOne!42420 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829145))

(assert (= (and b!7827887 (is-Star!20954 (regOne!42420 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829146))

(assert (= (and b!7827887 (is-Union!20954 (regOne!42420 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829147))

(declare-fun b!7829151 () Bool)

(declare-fun e!4630728 () Bool)

(declare-fun tp!2313578 () Bool)

(declare-fun tp!2313577 () Bool)

(assert (=> b!7829151 (= e!4630728 (and tp!2313578 tp!2313577))))

(declare-fun b!7829148 () Bool)

(assert (=> b!7829148 (= e!4630728 tp_is_empty!52263)))

(declare-fun b!7829150 () Bool)

(declare-fun tp!2313579 () Bool)

(assert (=> b!7829150 (= e!4630728 tp!2313579)))

(assert (=> b!7827887 (= tp!2312763 e!4630728)))

(declare-fun b!7829149 () Bool)

(declare-fun tp!2313576 () Bool)

(declare-fun tp!2313580 () Bool)

(assert (=> b!7829149 (= e!4630728 (and tp!2313576 tp!2313580))))

(assert (= (and b!7827887 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829148))

(assert (= (and b!7827887 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829149))

(assert (= (and b!7827887 (is-Star!20954 (regTwo!42420 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829150))

(assert (= (and b!7827887 (is-Union!20954 (regTwo!42420 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829151))

(declare-fun b!7829155 () Bool)

(declare-fun e!4630729 () Bool)

(declare-fun tp!2313583 () Bool)

(declare-fun tp!2313582 () Bool)

(assert (=> b!7829155 (= e!4630729 (and tp!2313583 tp!2313582))))

(declare-fun b!7829152 () Bool)

(assert (=> b!7829152 (= e!4630729 tp_is_empty!52263)))

(declare-fun b!7829154 () Bool)

(declare-fun tp!2313584 () Bool)

(assert (=> b!7829154 (= e!4630729 tp!2313584)))

(assert (=> b!7827982 (= tp!2312877 e!4630729)))

(declare-fun b!7829153 () Bool)

(declare-fun tp!2313581 () Bool)

(declare-fun tp!2313585 () Bool)

(assert (=> b!7829153 (= e!4630729 (and tp!2313581 tp!2313585))))

(assert (= (and b!7827982 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829152))

(assert (= (and b!7827982 (is-Concat!29799 (regOne!42421 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829153))

(assert (= (and b!7827982 (is-Star!20954 (regOne!42421 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829154))

(assert (= (and b!7827982 (is-Union!20954 (regOne!42421 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829155))

(declare-fun b!7829159 () Bool)

(declare-fun e!4630730 () Bool)

(declare-fun tp!2313588 () Bool)

(declare-fun tp!2313587 () Bool)

(assert (=> b!7829159 (= e!4630730 (and tp!2313588 tp!2313587))))

(declare-fun b!7829156 () Bool)

(assert (=> b!7829156 (= e!4630730 tp_is_empty!52263)))

(declare-fun b!7829158 () Bool)

(declare-fun tp!2313589 () Bool)

(assert (=> b!7829158 (= e!4630730 tp!2313589)))

(assert (=> b!7827982 (= tp!2312876 e!4630730)))

(declare-fun b!7829157 () Bool)

(declare-fun tp!2313586 () Bool)

(declare-fun tp!2313590 () Bool)

(assert (=> b!7829157 (= e!4630730 (and tp!2313586 tp!2313590))))

(assert (= (and b!7827982 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829156))

(assert (= (and b!7827982 (is-Concat!29799 (regTwo!42421 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829157))

(assert (= (and b!7827982 (is-Star!20954 (regTwo!42421 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829158))

(assert (= (and b!7827982 (is-Union!20954 (regTwo!42421 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829159))

(declare-fun b!7829163 () Bool)

(declare-fun e!4630731 () Bool)

(declare-fun tp!2313593 () Bool)

(declare-fun tp!2313592 () Bool)

(assert (=> b!7829163 (= e!4630731 (and tp!2313593 tp!2313592))))

(declare-fun b!7829160 () Bool)

(assert (=> b!7829160 (= e!4630731 tp_is_empty!52263)))

(declare-fun b!7829162 () Bool)

(declare-fun tp!2313594 () Bool)

(assert (=> b!7829162 (= e!4630731 tp!2313594)))

(assert (=> b!7827973 (= tp!2312868 e!4630731)))

(declare-fun b!7829161 () Bool)

(declare-fun tp!2313591 () Bool)

(declare-fun tp!2313595 () Bool)

(assert (=> b!7829161 (= e!4630731 (and tp!2313591 tp!2313595))))

(assert (= (and b!7827973 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (regOne!42421 r2!6199))))) b!7829160))

(assert (= (and b!7827973 (is-Concat!29799 (reg!21283 (regOne!42420 (regOne!42421 r2!6199))))) b!7829161))

(assert (= (and b!7827973 (is-Star!20954 (reg!21283 (regOne!42420 (regOne!42421 r2!6199))))) b!7829162))

(assert (= (and b!7827973 (is-Union!20954 (reg!21283 (regOne!42420 (regOne!42421 r2!6199))))) b!7829163))

(declare-fun b!7829167 () Bool)

(declare-fun e!4630732 () Bool)

(declare-fun tp!2313598 () Bool)

(declare-fun tp!2313597 () Bool)

(assert (=> b!7829167 (= e!4630732 (and tp!2313598 tp!2313597))))

(declare-fun b!7829164 () Bool)

(assert (=> b!7829164 (= e!4630732 tp_is_empty!52263)))

(declare-fun b!7829166 () Bool)

(declare-fun tp!2313599 () Bool)

(assert (=> b!7829166 (= e!4630732 tp!2313599)))

(assert (=> b!7827996 (= tp!2312896 e!4630732)))

(declare-fun b!7829165 () Bool)

(declare-fun tp!2313596 () Bool)

(declare-fun tp!2313600 () Bool)

(assert (=> b!7829165 (= e!4630732 (and tp!2313596 tp!2313600))))

(assert (= (and b!7827996 (is-ElementMatch!20954 (reg!21283 (reg!21283 (regTwo!42420 r1!6261))))) b!7829164))

(assert (= (and b!7827996 (is-Concat!29799 (reg!21283 (reg!21283 (regTwo!42420 r1!6261))))) b!7829165))

(assert (= (and b!7827996 (is-Star!20954 (reg!21283 (reg!21283 (regTwo!42420 r1!6261))))) b!7829166))

(assert (= (and b!7827996 (is-Union!20954 (reg!21283 (reg!21283 (regTwo!42420 r1!6261))))) b!7829167))

(declare-fun b!7829171 () Bool)

(declare-fun e!4630733 () Bool)

(declare-fun tp!2313603 () Bool)

(declare-fun tp!2313602 () Bool)

(assert (=> b!7829171 (= e!4630733 (and tp!2313603 tp!2313602))))

(declare-fun b!7829168 () Bool)

(assert (=> b!7829168 (= e!4630733 tp_is_empty!52263)))

(declare-fun b!7829170 () Bool)

(declare-fun tp!2313604 () Bool)

(assert (=> b!7829170 (= e!4630733 tp!2313604)))

(assert (=> b!7827853 (= tp!2312716 e!4630733)))

(declare-fun b!7829169 () Bool)

(declare-fun tp!2313601 () Bool)

(declare-fun tp!2313605 () Bool)

(assert (=> b!7829169 (= e!4630733 (and tp!2313601 tp!2313605))))

(assert (= (and b!7827853 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (regOne!42421 r1!6261))))) b!7829168))

(assert (= (and b!7827853 (is-Concat!29799 (regOne!42421 (reg!21283 (regOne!42421 r1!6261))))) b!7829169))

(assert (= (and b!7827853 (is-Star!20954 (regOne!42421 (reg!21283 (regOne!42421 r1!6261))))) b!7829170))

(assert (= (and b!7827853 (is-Union!20954 (regOne!42421 (reg!21283 (regOne!42421 r1!6261))))) b!7829171))

(declare-fun b!7829175 () Bool)

(declare-fun e!4630734 () Bool)

(declare-fun tp!2313608 () Bool)

(declare-fun tp!2313607 () Bool)

(assert (=> b!7829175 (= e!4630734 (and tp!2313608 tp!2313607))))

(declare-fun b!7829172 () Bool)

(assert (=> b!7829172 (= e!4630734 tp_is_empty!52263)))

(declare-fun b!7829174 () Bool)

(declare-fun tp!2313609 () Bool)

(assert (=> b!7829174 (= e!4630734 tp!2313609)))

(assert (=> b!7827853 (= tp!2312715 e!4630734)))

(declare-fun b!7829173 () Bool)

(declare-fun tp!2313606 () Bool)

(declare-fun tp!2313610 () Bool)

(assert (=> b!7829173 (= e!4630734 (and tp!2313606 tp!2313610))))

(assert (= (and b!7827853 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (regOne!42421 r1!6261))))) b!7829172))

(assert (= (and b!7827853 (is-Concat!29799 (regTwo!42421 (reg!21283 (regOne!42421 r1!6261))))) b!7829173))

(assert (= (and b!7827853 (is-Star!20954 (regTwo!42421 (reg!21283 (regOne!42421 r1!6261))))) b!7829174))

(assert (= (and b!7827853 (is-Union!20954 (regTwo!42421 (reg!21283 (regOne!42421 r1!6261))))) b!7829175))

(declare-fun b!7829179 () Bool)

(declare-fun e!4630735 () Bool)

(declare-fun tp!2313613 () Bool)

(declare-fun tp!2313612 () Bool)

(assert (=> b!7829179 (= e!4630735 (and tp!2313613 tp!2313612))))

(declare-fun b!7829176 () Bool)

(assert (=> b!7829176 (= e!4630735 tp_is_empty!52263)))

(declare-fun b!7829178 () Bool)

(declare-fun tp!2313614 () Bool)

(assert (=> b!7829178 (= e!4630735 tp!2313614)))

(assert (=> b!7827844 (= tp!2312707 e!4630735)))

(declare-fun b!7829177 () Bool)

(declare-fun tp!2313611 () Bool)

(declare-fun tp!2313615 () Bool)

(assert (=> b!7829177 (= e!4630735 (and tp!2313611 tp!2313615))))

(assert (= (and b!7827844 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (regOne!42421 r1!6261))))) b!7829176))

(assert (= (and b!7827844 (is-Concat!29799 (reg!21283 (regOne!42421 (regOne!42421 r1!6261))))) b!7829177))

(assert (= (and b!7827844 (is-Star!20954 (reg!21283 (regOne!42421 (regOne!42421 r1!6261))))) b!7829178))

(assert (= (and b!7827844 (is-Union!20954 (reg!21283 (regOne!42421 (regOne!42421 r1!6261))))) b!7829179))

(declare-fun b!7829183 () Bool)

(declare-fun e!4630736 () Bool)

(declare-fun tp!2313618 () Bool)

(declare-fun tp!2313617 () Bool)

(assert (=> b!7829183 (= e!4630736 (and tp!2313618 tp!2313617))))

(declare-fun b!7829180 () Bool)

(assert (=> b!7829180 (= e!4630736 tp_is_empty!52263)))

(declare-fun b!7829182 () Bool)

(declare-fun tp!2313619 () Bool)

(assert (=> b!7829182 (= e!4630736 tp!2313619)))

(assert (=> b!7827835 (= tp!2312694 e!4630736)))

(declare-fun b!7829181 () Bool)

(declare-fun tp!2313616 () Bool)

(declare-fun tp!2313620 () Bool)

(assert (=> b!7829181 (= e!4630736 (and tp!2313616 tp!2313620))))

(assert (= (and b!7827835 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829180))

(assert (= (and b!7827835 (is-Concat!29799 (regOne!42420 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829181))

(assert (= (and b!7827835 (is-Star!20954 (regOne!42420 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829182))

(assert (= (and b!7827835 (is-Union!20954 (regOne!42420 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829183))

(declare-fun b!7829187 () Bool)

(declare-fun e!4630737 () Bool)

(declare-fun tp!2313623 () Bool)

(declare-fun tp!2313622 () Bool)

(assert (=> b!7829187 (= e!4630737 (and tp!2313623 tp!2313622))))

(declare-fun b!7829184 () Bool)

(assert (=> b!7829184 (= e!4630737 tp_is_empty!52263)))

(declare-fun b!7829186 () Bool)

(declare-fun tp!2313624 () Bool)

(assert (=> b!7829186 (= e!4630737 tp!2313624)))

(assert (=> b!7827835 (= tp!2312698 e!4630737)))

(declare-fun b!7829185 () Bool)

(declare-fun tp!2313621 () Bool)

(declare-fun tp!2313625 () Bool)

(assert (=> b!7829185 (= e!4630737 (and tp!2313621 tp!2313625))))

(assert (= (and b!7827835 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829184))

(assert (= (and b!7827835 (is-Concat!29799 (regTwo!42420 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829185))

(assert (= (and b!7827835 (is-Star!20954 (regTwo!42420 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829186))

(assert (= (and b!7827835 (is-Union!20954 (regTwo!42420 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829187))

(declare-fun b!7829191 () Bool)

(declare-fun e!4630738 () Bool)

(declare-fun tp!2313628 () Bool)

(declare-fun tp!2313627 () Bool)

(assert (=> b!7829191 (= e!4630738 (and tp!2313628 tp!2313627))))

(declare-fun b!7829188 () Bool)

(assert (=> b!7829188 (= e!4630738 tp_is_empty!52263)))

(declare-fun b!7829190 () Bool)

(declare-fun tp!2313629 () Bool)

(assert (=> b!7829190 (= e!4630738 tp!2313629)))

(assert (=> b!7827962 (= tp!2312852 e!4630738)))

(declare-fun b!7829189 () Bool)

(declare-fun tp!2313626 () Bool)

(declare-fun tp!2313630 () Bool)

(assert (=> b!7829189 (= e!4630738 (and tp!2313626 tp!2313630))))

(assert (= (and b!7827962 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829188))

(assert (= (and b!7827962 (is-Concat!29799 (regOne!42421 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829189))

(assert (= (and b!7827962 (is-Star!20954 (regOne!42421 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829190))

(assert (= (and b!7827962 (is-Union!20954 (regOne!42421 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829191))

(declare-fun b!7829195 () Bool)

(declare-fun e!4630739 () Bool)

(declare-fun tp!2313633 () Bool)

(declare-fun tp!2313632 () Bool)

(assert (=> b!7829195 (= e!4630739 (and tp!2313633 tp!2313632))))

(declare-fun b!7829192 () Bool)

(assert (=> b!7829192 (= e!4630739 tp_is_empty!52263)))

(declare-fun b!7829194 () Bool)

(declare-fun tp!2313634 () Bool)

(assert (=> b!7829194 (= e!4630739 tp!2313634)))

(assert (=> b!7827962 (= tp!2312851 e!4630739)))

(declare-fun b!7829193 () Bool)

(declare-fun tp!2313631 () Bool)

(declare-fun tp!2313635 () Bool)

(assert (=> b!7829193 (= e!4630739 (and tp!2313631 tp!2313635))))

(assert (= (and b!7827962 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829192))

(assert (= (and b!7827962 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829193))

(assert (= (and b!7827962 (is-Star!20954 (regTwo!42421 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829194))

(assert (= (and b!7827962 (is-Union!20954 (regTwo!42421 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829195))

(declare-fun b!7829199 () Bool)

(declare-fun e!4630740 () Bool)

(declare-fun tp!2313638 () Bool)

(declare-fun tp!2313637 () Bool)

(assert (=> b!7829199 (= e!4630740 (and tp!2313638 tp!2313637))))

(declare-fun b!7829196 () Bool)

(assert (=> b!7829196 (= e!4630740 tp_is_empty!52263)))

(declare-fun b!7829198 () Bool)

(declare-fun tp!2313639 () Bool)

(assert (=> b!7829198 (= e!4630740 tp!2313639)))

(assert (=> b!7827953 (= tp!2312843 e!4630740)))

(declare-fun b!7829197 () Bool)

(declare-fun tp!2313636 () Bool)

(declare-fun tp!2313640 () Bool)

(assert (=> b!7829197 (= e!4630740 (and tp!2313636 tp!2313640))))

(assert (= (and b!7827953 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829196))

(assert (= (and b!7827953 (is-Concat!29799 (reg!21283 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829197))

(assert (= (and b!7827953 (is-Star!20954 (reg!21283 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829198))

(assert (= (and b!7827953 (is-Union!20954 (reg!21283 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829199))

(declare-fun b!7829203 () Bool)

(declare-fun e!4630741 () Bool)

(declare-fun tp!2313643 () Bool)

(declare-fun tp!2313642 () Bool)

(assert (=> b!7829203 (= e!4630741 (and tp!2313643 tp!2313642))))

(declare-fun b!7829200 () Bool)

(assert (=> b!7829200 (= e!4630741 tp_is_empty!52263)))

(declare-fun b!7829202 () Bool)

(declare-fun tp!2313644 () Bool)

(assert (=> b!7829202 (= e!4630741 tp!2313644)))

(assert (=> b!7827944 (= tp!2312830 e!4630741)))

(declare-fun b!7829201 () Bool)

(declare-fun tp!2313641 () Bool)

(declare-fun tp!2313645 () Bool)

(assert (=> b!7829201 (= e!4630741 (and tp!2313641 tp!2313645))))

(assert (= (and b!7827944 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (regTwo!42420 r2!6199))))) b!7829200))

(assert (= (and b!7827944 (is-Concat!29799 (regOne!42420 (reg!21283 (regTwo!42420 r2!6199))))) b!7829201))

(assert (= (and b!7827944 (is-Star!20954 (regOne!42420 (reg!21283 (regTwo!42420 r2!6199))))) b!7829202))

(assert (= (and b!7827944 (is-Union!20954 (regOne!42420 (reg!21283 (regTwo!42420 r2!6199))))) b!7829203))

(declare-fun b!7829207 () Bool)

(declare-fun e!4630742 () Bool)

(declare-fun tp!2313648 () Bool)

(declare-fun tp!2313647 () Bool)

(assert (=> b!7829207 (= e!4630742 (and tp!2313648 tp!2313647))))

(declare-fun b!7829204 () Bool)

(assert (=> b!7829204 (= e!4630742 tp_is_empty!52263)))

(declare-fun b!7829206 () Bool)

(declare-fun tp!2313649 () Bool)

(assert (=> b!7829206 (= e!4630742 tp!2313649)))

(assert (=> b!7827944 (= tp!2312834 e!4630742)))

(declare-fun b!7829205 () Bool)

(declare-fun tp!2313646 () Bool)

(declare-fun tp!2313650 () Bool)

(assert (=> b!7829205 (= e!4630742 (and tp!2313646 tp!2313650))))

(assert (= (and b!7827944 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (regTwo!42420 r2!6199))))) b!7829204))

(assert (= (and b!7827944 (is-Concat!29799 (regTwo!42420 (reg!21283 (regTwo!42420 r2!6199))))) b!7829205))

(assert (= (and b!7827944 (is-Star!20954 (regTwo!42420 (reg!21283 (regTwo!42420 r2!6199))))) b!7829206))

(assert (= (and b!7827944 (is-Union!20954 (regTwo!42420 (reg!21283 (regTwo!42420 r2!6199))))) b!7829207))

(declare-fun b!7829208 () Bool)

(declare-fun e!4630743 () Bool)

(declare-fun tp!2313651 () Bool)

(assert (=> b!7829208 (= e!4630743 (and tp_is_empty!52263 tp!2313651))))

(assert (=> b!7828030 (= tp!2312938 e!4630743)))

(assert (= (and b!7828030 (is-Cons!73667 (t!388526 (t!388526 (t!388526 s2!3721))))) b!7829208))

(declare-fun b!7829212 () Bool)

(declare-fun e!4630744 () Bool)

(declare-fun tp!2313654 () Bool)

(declare-fun tp!2313653 () Bool)

(assert (=> b!7829212 (= e!4630744 (and tp!2313654 tp!2313653))))

(declare-fun b!7829209 () Bool)

(assert (=> b!7829209 (= e!4630744 tp_is_empty!52263)))

(declare-fun b!7829211 () Bool)

(declare-fun tp!2313655 () Bool)

(assert (=> b!7829211 (= e!4630744 tp!2313655)))

(assert (=> b!7828005 (= tp!2312905 e!4630744)))

(declare-fun b!7829210 () Bool)

(declare-fun tp!2313652 () Bool)

(declare-fun tp!2313656 () Bool)

(assert (=> b!7829210 (= e!4630744 (and tp!2313652 tp!2313656))))

(assert (= (and b!7828005 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829209))

(assert (= (and b!7828005 (is-Concat!29799 (regOne!42421 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829210))

(assert (= (and b!7828005 (is-Star!20954 (regOne!42421 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829211))

(assert (= (and b!7828005 (is-Union!20954 (regOne!42421 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829212))

(declare-fun b!7829216 () Bool)

(declare-fun e!4630745 () Bool)

(declare-fun tp!2313659 () Bool)

(declare-fun tp!2313658 () Bool)

(assert (=> b!7829216 (= e!4630745 (and tp!2313659 tp!2313658))))

(declare-fun b!7829213 () Bool)

(assert (=> b!7829213 (= e!4630745 tp_is_empty!52263)))

(declare-fun b!7829215 () Bool)

(declare-fun tp!2313660 () Bool)

(assert (=> b!7829215 (= e!4630745 tp!2313660)))

(assert (=> b!7828005 (= tp!2312904 e!4630745)))

(declare-fun b!7829214 () Bool)

(declare-fun tp!2313657 () Bool)

(declare-fun tp!2313661 () Bool)

(assert (=> b!7829214 (= e!4630745 (and tp!2313657 tp!2313661))))

(assert (= (and b!7828005 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829213))

(assert (= (and b!7828005 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829214))

(assert (= (and b!7828005 (is-Star!20954 (regTwo!42421 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829215))

(assert (= (and b!7828005 (is-Union!20954 (regTwo!42421 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829216))

(declare-fun b!7829220 () Bool)

(declare-fun e!4630746 () Bool)

(declare-fun tp!2313664 () Bool)

(declare-fun tp!2313663 () Bool)

(assert (=> b!7829220 (= e!4630746 (and tp!2313664 tp!2313663))))

(declare-fun b!7829217 () Bool)

(assert (=> b!7829217 (= e!4630746 tp_is_empty!52263)))

(declare-fun b!7829219 () Bool)

(declare-fun tp!2313665 () Bool)

(assert (=> b!7829219 (= e!4630746 tp!2313665)))

(assert (=> b!7828028 (= tp!2312936 e!4630746)))

(declare-fun b!7829218 () Bool)

(declare-fun tp!2313662 () Bool)

(declare-fun tp!2313666 () Bool)

(assert (=> b!7829218 (= e!4630746 (and tp!2313662 tp!2313666))))

(assert (= (and b!7828028 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829217))

(assert (= (and b!7828028 (is-Concat!29799 (reg!21283 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829218))

(assert (= (and b!7828028 (is-Star!20954 (reg!21283 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829219))

(assert (= (and b!7828028 (is-Union!20954 (reg!21283 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829220))

(declare-fun b!7829224 () Bool)

(declare-fun e!4630747 () Bool)

(declare-fun tp!2313669 () Bool)

(declare-fun tp!2313668 () Bool)

(assert (=> b!7829224 (= e!4630747 (and tp!2313669 tp!2313668))))

(declare-fun b!7829221 () Bool)

(assert (=> b!7829221 (= e!4630747 tp_is_empty!52263)))

(declare-fun b!7829223 () Bool)

(declare-fun tp!2313670 () Bool)

(assert (=> b!7829223 (= e!4630747 tp!2313670)))

(assert (=> b!7828019 (= tp!2312923 e!4630747)))

(declare-fun b!7829222 () Bool)

(declare-fun tp!2313667 () Bool)

(declare-fun tp!2313671 () Bool)

(assert (=> b!7829222 (= e!4630747 (and tp!2313667 tp!2313671))))

(assert (= (and b!7828019 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829221))

(assert (= (and b!7828019 (is-Concat!29799 (regOne!42420 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829222))

(assert (= (and b!7828019 (is-Star!20954 (regOne!42420 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829223))

(assert (= (and b!7828019 (is-Union!20954 (regOne!42420 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829224))

(declare-fun b!7829228 () Bool)

(declare-fun e!4630748 () Bool)

(declare-fun tp!2313674 () Bool)

(declare-fun tp!2313673 () Bool)

(assert (=> b!7829228 (= e!4630748 (and tp!2313674 tp!2313673))))

(declare-fun b!7829225 () Bool)

(assert (=> b!7829225 (= e!4630748 tp_is_empty!52263)))

(declare-fun b!7829227 () Bool)

(declare-fun tp!2313675 () Bool)

(assert (=> b!7829227 (= e!4630748 tp!2313675)))

(assert (=> b!7828019 (= tp!2312927 e!4630748)))

(declare-fun b!7829226 () Bool)

(declare-fun tp!2313672 () Bool)

(declare-fun tp!2313676 () Bool)

(assert (=> b!7829226 (= e!4630748 (and tp!2313672 tp!2313676))))

(assert (= (and b!7828019 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829225))

(assert (= (and b!7828019 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829226))

(assert (= (and b!7828019 (is-Star!20954 (regTwo!42420 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829227))

(assert (= (and b!7828019 (is-Union!20954 (regTwo!42420 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829228))

(declare-fun b!7829232 () Bool)

(declare-fun e!4630749 () Bool)

(declare-fun tp!2313679 () Bool)

(declare-fun tp!2313678 () Bool)

(assert (=> b!7829232 (= e!4630749 (and tp!2313679 tp!2313678))))

(declare-fun b!7829229 () Bool)

(assert (=> b!7829229 (= e!4630749 tp_is_empty!52263)))

(declare-fun b!7829231 () Bool)

(declare-fun tp!2313680 () Bool)

(assert (=> b!7829231 (= e!4630749 tp!2313680)))

(assert (=> b!7827885 (= tp!2312756 e!4630749)))

(declare-fun b!7829230 () Bool)

(declare-fun tp!2313677 () Bool)

(declare-fun tp!2313681 () Bool)

(assert (=> b!7829230 (= e!4630749 (and tp!2313677 tp!2313681))))

(assert (= (and b!7827885 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (regOne!42421 r1!6261))))) b!7829229))

(assert (= (and b!7827885 (is-Concat!29799 (regOne!42421 (regOne!42420 (regOne!42421 r1!6261))))) b!7829230))

(assert (= (and b!7827885 (is-Star!20954 (regOne!42421 (regOne!42420 (regOne!42421 r1!6261))))) b!7829231))

(assert (= (and b!7827885 (is-Union!20954 (regOne!42421 (regOne!42420 (regOne!42421 r1!6261))))) b!7829232))

(declare-fun b!7829236 () Bool)

(declare-fun e!4630750 () Bool)

(declare-fun tp!2313684 () Bool)

(declare-fun tp!2313683 () Bool)

(assert (=> b!7829236 (= e!4630750 (and tp!2313684 tp!2313683))))

(declare-fun b!7829233 () Bool)

(assert (=> b!7829233 (= e!4630750 tp_is_empty!52263)))

(declare-fun b!7829235 () Bool)

(declare-fun tp!2313685 () Bool)

(assert (=> b!7829235 (= e!4630750 tp!2313685)))

(assert (=> b!7827885 (= tp!2312755 e!4630750)))

(declare-fun b!7829234 () Bool)

(declare-fun tp!2313682 () Bool)

(declare-fun tp!2313686 () Bool)

(assert (=> b!7829234 (= e!4630750 (and tp!2313682 tp!2313686))))

(assert (= (and b!7827885 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (regOne!42421 r1!6261))))) b!7829233))

(assert (= (and b!7827885 (is-Concat!29799 (regTwo!42421 (regOne!42420 (regOne!42421 r1!6261))))) b!7829234))

(assert (= (and b!7827885 (is-Star!20954 (regTwo!42421 (regOne!42420 (regOne!42421 r1!6261))))) b!7829235))

(assert (= (and b!7827885 (is-Union!20954 (regTwo!42421 (regOne!42420 (regOne!42421 r1!6261))))) b!7829236))

(declare-fun b!7829240 () Bool)

(declare-fun e!4630751 () Bool)

(declare-fun tp!2313689 () Bool)

(declare-fun tp!2313688 () Bool)

(assert (=> b!7829240 (= e!4630751 (and tp!2313689 tp!2313688))))

(declare-fun b!7829237 () Bool)

(assert (=> b!7829237 (= e!4630751 tp_is_empty!52263)))

(declare-fun b!7829239 () Bool)

(declare-fun tp!2313690 () Bool)

(assert (=> b!7829239 (= e!4630751 tp!2313690)))

(assert (=> b!7827876 (= tp!2312747 e!4630751)))

(declare-fun b!7829238 () Bool)

(declare-fun tp!2313687 () Bool)

(declare-fun tp!2313691 () Bool)

(assert (=> b!7829238 (= e!4630751 (and tp!2313687 tp!2313691))))

(assert (= (and b!7827876 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (reg!21283 r1!6261))))) b!7829237))

(assert (= (and b!7827876 (is-Concat!29799 (reg!21283 (regOne!42420 (reg!21283 r1!6261))))) b!7829238))

(assert (= (and b!7827876 (is-Star!20954 (reg!21283 (regOne!42420 (reg!21283 r1!6261))))) b!7829239))

(assert (= (and b!7827876 (is-Union!20954 (reg!21283 (regOne!42420 (reg!21283 r1!6261))))) b!7829240))

(declare-fun b!7829244 () Bool)

(declare-fun e!4630752 () Bool)

(declare-fun tp!2313694 () Bool)

(declare-fun tp!2313693 () Bool)

(assert (=> b!7829244 (= e!4630752 (and tp!2313694 tp!2313693))))

(declare-fun b!7829241 () Bool)

(assert (=> b!7829241 (= e!4630752 tp_is_empty!52263)))

(declare-fun b!7829243 () Bool)

(declare-fun tp!2313695 () Bool)

(assert (=> b!7829243 (= e!4630752 tp!2313695)))

(assert (=> b!7827867 (= tp!2312734 e!4630752)))

(declare-fun b!7829242 () Bool)

(declare-fun tp!2313692 () Bool)

(declare-fun tp!2313696 () Bool)

(assert (=> b!7829242 (= e!4630752 (and tp!2313692 tp!2313696))))

(assert (= (and b!7827867 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (reg!21283 r1!6261))))) b!7829241))

(assert (= (and b!7827867 (is-Concat!29799 (regOne!42420 (regTwo!42421 (reg!21283 r1!6261))))) b!7829242))

(assert (= (and b!7827867 (is-Star!20954 (regOne!42420 (regTwo!42421 (reg!21283 r1!6261))))) b!7829243))

(assert (= (and b!7827867 (is-Union!20954 (regOne!42420 (regTwo!42421 (reg!21283 r1!6261))))) b!7829244))

(declare-fun b!7829248 () Bool)

(declare-fun e!4630753 () Bool)

(declare-fun tp!2313699 () Bool)

(declare-fun tp!2313698 () Bool)

(assert (=> b!7829248 (= e!4630753 (and tp!2313699 tp!2313698))))

(declare-fun b!7829245 () Bool)

(assert (=> b!7829245 (= e!4630753 tp_is_empty!52263)))

(declare-fun b!7829247 () Bool)

(declare-fun tp!2313700 () Bool)

(assert (=> b!7829247 (= e!4630753 tp!2313700)))

(assert (=> b!7827867 (= tp!2312738 e!4630753)))

(declare-fun b!7829246 () Bool)

(declare-fun tp!2313697 () Bool)

(declare-fun tp!2313701 () Bool)

(assert (=> b!7829246 (= e!4630753 (and tp!2313697 tp!2313701))))

(assert (= (and b!7827867 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (reg!21283 r1!6261))))) b!7829245))

(assert (= (and b!7827867 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (reg!21283 r1!6261))))) b!7829246))

(assert (= (and b!7827867 (is-Star!20954 (regTwo!42420 (regTwo!42421 (reg!21283 r1!6261))))) b!7829247))

(assert (= (and b!7827867 (is-Union!20954 (regTwo!42420 (regTwo!42421 (reg!21283 r1!6261))))) b!7829248))

(declare-fun b!7829252 () Bool)

(declare-fun e!4630754 () Bool)

(declare-fun tp!2313704 () Bool)

(declare-fun tp!2313703 () Bool)

(assert (=> b!7829252 (= e!4630754 (and tp!2313704 tp!2313703))))

(declare-fun b!7829249 () Bool)

(assert (=> b!7829249 (= e!4630754 tp_is_empty!52263)))

(declare-fun b!7829251 () Bool)

(declare-fun tp!2313705 () Bool)

(assert (=> b!7829251 (= e!4630754 tp!2313705)))

(assert (=> b!7827985 (= tp!2312883 e!4630754)))

(declare-fun b!7829250 () Bool)

(declare-fun tp!2313702 () Bool)

(declare-fun tp!2313706 () Bool)

(assert (=> b!7829250 (= e!4630754 (and tp!2313702 tp!2313706))))

(assert (= (and b!7827985 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829249))

(assert (= (and b!7827985 (is-Concat!29799 (reg!21283 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829250))

(assert (= (and b!7827985 (is-Star!20954 (reg!21283 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829251))

(assert (= (and b!7827985 (is-Union!20954 (reg!21283 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829252))

(declare-fun b!7829256 () Bool)

(declare-fun e!4630755 () Bool)

(declare-fun tp!2313709 () Bool)

(declare-fun tp!2313708 () Bool)

(assert (=> b!7829256 (= e!4630755 (and tp!2313709 tp!2313708))))

(declare-fun b!7829253 () Bool)

(assert (=> b!7829253 (= e!4630755 tp_is_empty!52263)))

(declare-fun b!7829255 () Bool)

(declare-fun tp!2313710 () Bool)

(assert (=> b!7829255 (= e!4630755 tp!2313710)))

(assert (=> b!7827976 (= tp!2312870 e!4630755)))

(declare-fun b!7829254 () Bool)

(declare-fun tp!2313707 () Bool)

(declare-fun tp!2313711 () Bool)

(assert (=> b!7829254 (= e!4630755 (and tp!2313707 tp!2313711))))

(assert (= (and b!7827976 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829253))

(assert (= (and b!7827976 (is-Concat!29799 (regOne!42420 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829254))

(assert (= (and b!7827976 (is-Star!20954 (regOne!42420 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829255))

(assert (= (and b!7827976 (is-Union!20954 (regOne!42420 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829256))

(declare-fun b!7829260 () Bool)

(declare-fun e!4630756 () Bool)

(declare-fun tp!2313714 () Bool)

(declare-fun tp!2313713 () Bool)

(assert (=> b!7829260 (= e!4630756 (and tp!2313714 tp!2313713))))

(declare-fun b!7829257 () Bool)

(assert (=> b!7829257 (= e!4630756 tp_is_empty!52263)))

(declare-fun b!7829259 () Bool)

(declare-fun tp!2313715 () Bool)

(assert (=> b!7829259 (= e!4630756 tp!2313715)))

(assert (=> b!7827976 (= tp!2312874 e!4630756)))

(declare-fun b!7829258 () Bool)

(declare-fun tp!2313712 () Bool)

(declare-fun tp!2313716 () Bool)

(assert (=> b!7829258 (= e!4630756 (and tp!2313712 tp!2313716))))

(assert (= (and b!7827976 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829257))

(assert (= (and b!7827976 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829258))

(assert (= (and b!7827976 (is-Star!20954 (regTwo!42420 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829259))

(assert (= (and b!7827976 (is-Union!20954 (regTwo!42420 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829260))

(declare-fun b!7829264 () Bool)

(declare-fun e!4630757 () Bool)

(declare-fun tp!2313719 () Bool)

(declare-fun tp!2313718 () Bool)

(assert (=> b!7829264 (= e!4630757 (and tp!2313719 tp!2313718))))

(declare-fun b!7829261 () Bool)

(assert (=> b!7829261 (= e!4630757 tp_is_empty!52263)))

(declare-fun b!7829263 () Bool)

(declare-fun tp!2313720 () Bool)

(assert (=> b!7829263 (= e!4630757 tp!2313720)))

(assert (=> b!7827833 (= tp!2312691 e!4630757)))

(declare-fun b!7829262 () Bool)

(declare-fun tp!2313717 () Bool)

(declare-fun tp!2313721 () Bool)

(assert (=> b!7829262 (= e!4630757 (and tp!2313717 tp!2313721))))

(assert (= (and b!7827833 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829261))

(assert (= (and b!7827833 (is-Concat!29799 (regOne!42421 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829262))

(assert (= (and b!7827833 (is-Star!20954 (regOne!42421 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829263))

(assert (= (and b!7827833 (is-Union!20954 (regOne!42421 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829264))

(declare-fun b!7829268 () Bool)

(declare-fun e!4630758 () Bool)

(declare-fun tp!2313724 () Bool)

(declare-fun tp!2313723 () Bool)

(assert (=> b!7829268 (= e!4630758 (and tp!2313724 tp!2313723))))

(declare-fun b!7829265 () Bool)

(assert (=> b!7829265 (= e!4630758 tp_is_empty!52263)))

(declare-fun b!7829267 () Bool)

(declare-fun tp!2313725 () Bool)

(assert (=> b!7829267 (= e!4630758 tp!2313725)))

(assert (=> b!7827833 (= tp!2312690 e!4630758)))

(declare-fun b!7829266 () Bool)

(declare-fun tp!2313722 () Bool)

(declare-fun tp!2313726 () Bool)

(assert (=> b!7829266 (= e!4630758 (and tp!2313722 tp!2313726))))

(assert (= (and b!7827833 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829265))

(assert (= (and b!7827833 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829266))

(assert (= (and b!7827833 (is-Star!20954 (regTwo!42421 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829267))

(assert (= (and b!7827833 (is-Union!20954 (regTwo!42421 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829268))

(declare-fun b!7829272 () Bool)

(declare-fun e!4630759 () Bool)

(declare-fun tp!2313729 () Bool)

(declare-fun tp!2313728 () Bool)

(assert (=> b!7829272 (= e!4630759 (and tp!2313729 tp!2313728))))

(declare-fun b!7829269 () Bool)

(assert (=> b!7829269 (= e!4630759 tp_is_empty!52263)))

(declare-fun b!7829271 () Bool)

(declare-fun tp!2313730 () Bool)

(assert (=> b!7829271 (= e!4630759 tp!2313730)))

(assert (=> b!7827856 (= tp!2312722 e!4630759)))

(declare-fun b!7829270 () Bool)

(declare-fun tp!2313727 () Bool)

(declare-fun tp!2313731 () Bool)

(assert (=> b!7829270 (= e!4630759 (and tp!2313727 tp!2313731))))

(assert (= (and b!7827856 (is-ElementMatch!20954 (reg!21283 (reg!21283 (reg!21283 r1!6261))))) b!7829269))

(assert (= (and b!7827856 (is-Concat!29799 (reg!21283 (reg!21283 (reg!21283 r1!6261))))) b!7829270))

(assert (= (and b!7827856 (is-Star!20954 (reg!21283 (reg!21283 (reg!21283 r1!6261))))) b!7829271))

(assert (= (and b!7827856 (is-Union!20954 (reg!21283 (reg!21283 (reg!21283 r1!6261))))) b!7829272))

(declare-fun b!7829276 () Bool)

(declare-fun e!4630760 () Bool)

(declare-fun tp!2313734 () Bool)

(declare-fun tp!2313733 () Bool)

(assert (=> b!7829276 (= e!4630760 (and tp!2313734 tp!2313733))))

(declare-fun b!7829273 () Bool)

(assert (=> b!7829273 (= e!4630760 tp_is_empty!52263)))

(declare-fun b!7829275 () Bool)

(declare-fun tp!2313735 () Bool)

(assert (=> b!7829275 (= e!4630760 tp!2313735)))

(assert (=> b!7827847 (= tp!2312709 e!4630760)))

(declare-fun b!7829274 () Bool)

(declare-fun tp!2313732 () Bool)

(declare-fun tp!2313736 () Bool)

(assert (=> b!7829274 (= e!4630760 (and tp!2313732 tp!2313736))))

(assert (= (and b!7827847 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829273))

(assert (= (and b!7827847 (is-Concat!29799 (regOne!42420 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829274))

(assert (= (and b!7827847 (is-Star!20954 (regOne!42420 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829275))

(assert (= (and b!7827847 (is-Union!20954 (regOne!42420 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829276))

(declare-fun b!7829280 () Bool)

(declare-fun e!4630761 () Bool)

(declare-fun tp!2313739 () Bool)

(declare-fun tp!2313738 () Bool)

(assert (=> b!7829280 (= e!4630761 (and tp!2313739 tp!2313738))))

(declare-fun b!7829277 () Bool)

(assert (=> b!7829277 (= e!4630761 tp_is_empty!52263)))

(declare-fun b!7829279 () Bool)

(declare-fun tp!2313740 () Bool)

(assert (=> b!7829279 (= e!4630761 tp!2313740)))

(assert (=> b!7827847 (= tp!2312713 e!4630761)))

(declare-fun b!7829278 () Bool)

(declare-fun tp!2313737 () Bool)

(declare-fun tp!2313741 () Bool)

(assert (=> b!7829278 (= e!4630761 (and tp!2313737 tp!2313741))))

(assert (= (and b!7827847 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829277))

(assert (= (and b!7827847 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829278))

(assert (= (and b!7827847 (is-Star!20954 (regTwo!42420 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829279))

(assert (= (and b!7827847 (is-Union!20954 (regTwo!42420 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829280))

(declare-fun b!7829284 () Bool)

(declare-fun e!4630762 () Bool)

(declare-fun tp!2313744 () Bool)

(declare-fun tp!2313743 () Bool)

(assert (=> b!7829284 (= e!4630762 (and tp!2313744 tp!2313743))))

(declare-fun b!7829281 () Bool)

(assert (=> b!7829281 (= e!4630762 tp_is_empty!52263)))

(declare-fun b!7829283 () Bool)

(declare-fun tp!2313745 () Bool)

(assert (=> b!7829283 (= e!4630762 tp!2313745)))

(assert (=> b!7827942 (= tp!2312827 e!4630762)))

(declare-fun b!7829282 () Bool)

(declare-fun tp!2313742 () Bool)

(declare-fun tp!2313746 () Bool)

(assert (=> b!7829282 (= e!4630762 (and tp!2313742 tp!2313746))))

(assert (= (and b!7827942 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (regOne!42420 r1!6261))))) b!7829281))

(assert (= (and b!7827942 (is-Concat!29799 (regOne!42421 (reg!21283 (regOne!42420 r1!6261))))) b!7829282))

(assert (= (and b!7827942 (is-Star!20954 (regOne!42421 (reg!21283 (regOne!42420 r1!6261))))) b!7829283))

(assert (= (and b!7827942 (is-Union!20954 (regOne!42421 (reg!21283 (regOne!42420 r1!6261))))) b!7829284))

(declare-fun b!7829288 () Bool)

(declare-fun e!4630763 () Bool)

(declare-fun tp!2313749 () Bool)

(declare-fun tp!2313748 () Bool)

(assert (=> b!7829288 (= e!4630763 (and tp!2313749 tp!2313748))))

(declare-fun b!7829285 () Bool)

(assert (=> b!7829285 (= e!4630763 tp_is_empty!52263)))

(declare-fun b!7829287 () Bool)

(declare-fun tp!2313750 () Bool)

(assert (=> b!7829287 (= e!4630763 tp!2313750)))

(assert (=> b!7827942 (= tp!2312826 e!4630763)))

(declare-fun b!7829286 () Bool)

(declare-fun tp!2313747 () Bool)

(declare-fun tp!2313751 () Bool)

(assert (=> b!7829286 (= e!4630763 (and tp!2313747 tp!2313751))))

(assert (= (and b!7827942 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (regOne!42420 r1!6261))))) b!7829285))

(assert (= (and b!7827942 (is-Concat!29799 (regTwo!42421 (reg!21283 (regOne!42420 r1!6261))))) b!7829286))

(assert (= (and b!7827942 (is-Star!20954 (regTwo!42421 (reg!21283 (regOne!42420 r1!6261))))) b!7829287))

(assert (= (and b!7827942 (is-Union!20954 (regTwo!42421 (reg!21283 (regOne!42420 r1!6261))))) b!7829288))

(declare-fun b!7829292 () Bool)

(declare-fun e!4630764 () Bool)

(declare-fun tp!2313754 () Bool)

(declare-fun tp!2313753 () Bool)

(assert (=> b!7829292 (= e!4630764 (and tp!2313754 tp!2313753))))

(declare-fun b!7829289 () Bool)

(assert (=> b!7829289 (= e!4630764 tp_is_empty!52263)))

(declare-fun b!7829291 () Bool)

(declare-fun tp!2313755 () Bool)

(assert (=> b!7829291 (= e!4630764 tp!2313755)))

(assert (=> b!7827933 (= tp!2312818 e!4630764)))

(declare-fun b!7829290 () Bool)

(declare-fun tp!2313752 () Bool)

(declare-fun tp!2313756 () Bool)

(assert (=> b!7829290 (= e!4630764 (and tp!2313752 tp!2313756))))

(assert (= (and b!7827933 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (reg!21283 r2!6199))))) b!7829289))

(assert (= (and b!7827933 (is-Concat!29799 (reg!21283 (regOne!42420 (reg!21283 r2!6199))))) b!7829290))

(assert (= (and b!7827933 (is-Star!20954 (reg!21283 (regOne!42420 (reg!21283 r2!6199))))) b!7829291))

(assert (= (and b!7827933 (is-Union!20954 (reg!21283 (regOne!42420 (reg!21283 r2!6199))))) b!7829292))

(declare-fun b!7829296 () Bool)

(declare-fun e!4630765 () Bool)

(declare-fun tp!2313759 () Bool)

(declare-fun tp!2313758 () Bool)

(assert (=> b!7829296 (= e!4630765 (and tp!2313759 tp!2313758))))

(declare-fun b!7829293 () Bool)

(assert (=> b!7829293 (= e!4630765 tp_is_empty!52263)))

(declare-fun b!7829295 () Bool)

(declare-fun tp!2313760 () Bool)

(assert (=> b!7829295 (= e!4630765 tp!2313760)))

(assert (=> b!7827924 (= tp!2312805 e!4630765)))

(declare-fun b!7829294 () Bool)

(declare-fun tp!2313757 () Bool)

(declare-fun tp!2313761 () Bool)

(assert (=> b!7829294 (= e!4630765 (and tp!2313757 tp!2313761))))

(assert (= (and b!7827924 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829293))

(assert (= (and b!7827924 (is-Concat!29799 (regOne!42420 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829294))

(assert (= (and b!7827924 (is-Star!20954 (regOne!42420 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829295))

(assert (= (and b!7827924 (is-Union!20954 (regOne!42420 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829296))

(declare-fun b!7829300 () Bool)

(declare-fun e!4630766 () Bool)

(declare-fun tp!2313764 () Bool)

(declare-fun tp!2313763 () Bool)

(assert (=> b!7829300 (= e!4630766 (and tp!2313764 tp!2313763))))

(declare-fun b!7829297 () Bool)

(assert (=> b!7829297 (= e!4630766 tp_is_empty!52263)))

(declare-fun b!7829299 () Bool)

(declare-fun tp!2313765 () Bool)

(assert (=> b!7829299 (= e!4630766 tp!2313765)))

(assert (=> b!7827924 (= tp!2312809 e!4630766)))

(declare-fun b!7829298 () Bool)

(declare-fun tp!2313762 () Bool)

(declare-fun tp!2313766 () Bool)

(assert (=> b!7829298 (= e!4630766 (and tp!2313762 tp!2313766))))

(assert (= (and b!7827924 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829297))

(assert (= (and b!7827924 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829298))

(assert (= (and b!7827924 (is-Star!20954 (regTwo!42420 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829299))

(assert (= (and b!7827924 (is-Union!20954 (regTwo!42420 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829300))

(declare-fun b!7829304 () Bool)

(declare-fun e!4630767 () Bool)

(declare-fun tp!2313769 () Bool)

(declare-fun tp!2313768 () Bool)

(assert (=> b!7829304 (= e!4630767 (and tp!2313769 tp!2313768))))

(declare-fun b!7829301 () Bool)

(assert (=> b!7829301 (= e!4630767 tp_is_empty!52263)))

(declare-fun b!7829303 () Bool)

(declare-fun tp!2313770 () Bool)

(assert (=> b!7829303 (= e!4630767 tp!2313770)))

(assert (=> b!7827917 (= tp!2312796 e!4630767)))

(declare-fun b!7829302 () Bool)

(declare-fun tp!2313767 () Bool)

(declare-fun tp!2313771 () Bool)

(assert (=> b!7829302 (= e!4630767 (and tp!2313767 tp!2313771))))

(assert (= (and b!7827917 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829301))

(assert (= (and b!7827917 (is-Concat!29799 (regOne!42421 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829302))

(assert (= (and b!7827917 (is-Star!20954 (regOne!42421 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829303))

(assert (= (and b!7827917 (is-Union!20954 (regOne!42421 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829304))

(declare-fun b!7829308 () Bool)

(declare-fun e!4630768 () Bool)

(declare-fun tp!2313774 () Bool)

(declare-fun tp!2313773 () Bool)

(assert (=> b!7829308 (= e!4630768 (and tp!2313774 tp!2313773))))

(declare-fun b!7829305 () Bool)

(assert (=> b!7829305 (= e!4630768 tp_is_empty!52263)))

(declare-fun b!7829307 () Bool)

(declare-fun tp!2313775 () Bool)

(assert (=> b!7829307 (= e!4630768 tp!2313775)))

(assert (=> b!7827917 (= tp!2312795 e!4630768)))

(declare-fun b!7829306 () Bool)

(declare-fun tp!2313772 () Bool)

(declare-fun tp!2313776 () Bool)

(assert (=> b!7829306 (= e!4630768 (and tp!2313772 tp!2313776))))

(assert (= (and b!7827917 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829305))

(assert (= (and b!7827917 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829306))

(assert (= (and b!7827917 (is-Star!20954 (regTwo!42421 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829307))

(assert (= (and b!7827917 (is-Union!20954 (regTwo!42421 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829308))

(declare-fun b!7829312 () Bool)

(declare-fun e!4630769 () Bool)

(declare-fun tp!2313779 () Bool)

(declare-fun tp!2313778 () Bool)

(assert (=> b!7829312 (= e!4630769 (and tp!2313779 tp!2313778))))

(declare-fun b!7829309 () Bool)

(assert (=> b!7829309 (= e!4630769 tp_is_empty!52263)))

(declare-fun b!7829311 () Bool)

(declare-fun tp!2313780 () Bool)

(assert (=> b!7829311 (= e!4630769 tp!2313780)))

(assert (=> b!7827908 (= tp!2312787 e!4630769)))

(declare-fun b!7829310 () Bool)

(declare-fun tp!2313777 () Bool)

(declare-fun tp!2313781 () Bool)

(assert (=> b!7829310 (= e!4630769 (and tp!2313777 tp!2313781))))

(assert (= (and b!7827908 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (reg!21283 r2!6199))))) b!7829309))

(assert (= (and b!7827908 (is-Concat!29799 (reg!21283 (regTwo!42421 (reg!21283 r2!6199))))) b!7829310))

(assert (= (and b!7827908 (is-Star!20954 (reg!21283 (regTwo!42421 (reg!21283 r2!6199))))) b!7829311))

(assert (= (and b!7827908 (is-Union!20954 (reg!21283 (regTwo!42421 (reg!21283 r2!6199))))) b!7829312))

(declare-fun b!7829316 () Bool)

(declare-fun e!4630770 () Bool)

(declare-fun tp!2313784 () Bool)

(declare-fun tp!2313783 () Bool)

(assert (=> b!7829316 (= e!4630770 (and tp!2313784 tp!2313783))))

(declare-fun b!7829313 () Bool)

(assert (=> b!7829313 (= e!4630770 tp_is_empty!52263)))

(declare-fun b!7829315 () Bool)

(declare-fun tp!2313785 () Bool)

(assert (=> b!7829315 (= e!4630770 tp!2313785)))

(assert (=> b!7827899 (= tp!2312774 e!4630770)))

(declare-fun b!7829314 () Bool)

(declare-fun tp!2313782 () Bool)

(declare-fun tp!2313786 () Bool)

(assert (=> b!7829314 (= e!4630770 (and tp!2313782 tp!2313786))))

(assert (= (and b!7827899 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829313))

(assert (= (and b!7827899 (is-Concat!29799 (regOne!42420 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829314))

(assert (= (and b!7827899 (is-Star!20954 (regOne!42420 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829315))

(assert (= (and b!7827899 (is-Union!20954 (regOne!42420 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829316))

(declare-fun b!7829320 () Bool)

(declare-fun e!4630771 () Bool)

(declare-fun tp!2313789 () Bool)

(declare-fun tp!2313788 () Bool)

(assert (=> b!7829320 (= e!4630771 (and tp!2313789 tp!2313788))))

(declare-fun b!7829317 () Bool)

(assert (=> b!7829317 (= e!4630771 tp_is_empty!52263)))

(declare-fun b!7829319 () Bool)

(declare-fun tp!2313790 () Bool)

(assert (=> b!7829319 (= e!4630771 tp!2313790)))

(assert (=> b!7827899 (= tp!2312778 e!4630771)))

(declare-fun b!7829318 () Bool)

(declare-fun tp!2313787 () Bool)

(declare-fun tp!2313791 () Bool)

(assert (=> b!7829318 (= e!4630771 (and tp!2313787 tp!2313791))))

(assert (= (and b!7827899 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829317))

(assert (= (and b!7827899 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829318))

(assert (= (and b!7827899 (is-Star!20954 (regTwo!42420 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829319))

(assert (= (and b!7827899 (is-Union!20954 (regTwo!42420 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829320))

(declare-fun b!7829324 () Bool)

(declare-fun e!4630772 () Bool)

(declare-fun tp!2313794 () Bool)

(declare-fun tp!2313793 () Bool)

(assert (=> b!7829324 (= e!4630772 (and tp!2313794 tp!2313793))))

(declare-fun b!7829321 () Bool)

(assert (=> b!7829321 (= e!4630772 tp_is_empty!52263)))

(declare-fun b!7829323 () Bool)

(declare-fun tp!2313795 () Bool)

(assert (=> b!7829323 (= e!4630772 tp!2313795)))

(assert (=> b!7828017 (= tp!2312920 e!4630772)))

(declare-fun b!7829322 () Bool)

(declare-fun tp!2313792 () Bool)

(declare-fun tp!2313796 () Bool)

(assert (=> b!7829322 (= e!4630772 (and tp!2313792 tp!2313796))))

(assert (= (and b!7828017 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829321))

(assert (= (and b!7828017 (is-Concat!29799 (regOne!42421 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829322))

(assert (= (and b!7828017 (is-Star!20954 (regOne!42421 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829323))

(assert (= (and b!7828017 (is-Union!20954 (regOne!42421 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829324))

(declare-fun b!7829328 () Bool)

(declare-fun e!4630773 () Bool)

(declare-fun tp!2313799 () Bool)

(declare-fun tp!2313798 () Bool)

(assert (=> b!7829328 (= e!4630773 (and tp!2313799 tp!2313798))))

(declare-fun b!7829325 () Bool)

(assert (=> b!7829325 (= e!4630773 tp_is_empty!52263)))

(declare-fun b!7829327 () Bool)

(declare-fun tp!2313800 () Bool)

(assert (=> b!7829327 (= e!4630773 tp!2313800)))

(assert (=> b!7828017 (= tp!2312919 e!4630773)))

(declare-fun b!7829326 () Bool)

(declare-fun tp!2313797 () Bool)

(declare-fun tp!2313801 () Bool)

(assert (=> b!7829326 (= e!4630773 (and tp!2313797 tp!2313801))))

(assert (= (and b!7828017 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829325))

(assert (= (and b!7828017 (is-Concat!29799 (regTwo!42421 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829326))

(assert (= (and b!7828017 (is-Star!20954 (regTwo!42421 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829327))

(assert (= (and b!7828017 (is-Union!20954 (regTwo!42421 (regOne!42421 (regTwo!42421 r2!6199))))) b!7829328))

(declare-fun b!7829332 () Bool)

(declare-fun e!4630774 () Bool)

(declare-fun tp!2313804 () Bool)

(declare-fun tp!2313803 () Bool)

(assert (=> b!7829332 (= e!4630774 (and tp!2313804 tp!2313803))))

(declare-fun b!7829329 () Bool)

(assert (=> b!7829329 (= e!4630774 tp_is_empty!52263)))

(declare-fun b!7829331 () Bool)

(declare-fun tp!2313805 () Bool)

(assert (=> b!7829331 (= e!4630774 tp!2313805)))

(assert (=> b!7828008 (= tp!2312911 e!4630774)))

(declare-fun b!7829330 () Bool)

(declare-fun tp!2313802 () Bool)

(declare-fun tp!2313806 () Bool)

(assert (=> b!7829330 (= e!4630774 (and tp!2313802 tp!2313806))))

(assert (= (and b!7828008 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (regOne!42420 r2!6199))))) b!7829329))

(assert (= (and b!7828008 (is-Concat!29799 (reg!21283 (regOne!42421 (regOne!42420 r2!6199))))) b!7829330))

(assert (= (and b!7828008 (is-Star!20954 (reg!21283 (regOne!42421 (regOne!42420 r2!6199))))) b!7829331))

(assert (= (and b!7828008 (is-Union!20954 (reg!21283 (regOne!42421 (regOne!42420 r2!6199))))) b!7829332))

(declare-fun b!7829336 () Bool)

(declare-fun e!4630775 () Bool)

(declare-fun tp!2313809 () Bool)

(declare-fun tp!2313808 () Bool)

(assert (=> b!7829336 (= e!4630775 (and tp!2313809 tp!2313808))))

(declare-fun b!7829333 () Bool)

(assert (=> b!7829333 (= e!4630775 tp_is_empty!52263)))

(declare-fun b!7829335 () Bool)

(declare-fun tp!2313810 () Bool)

(assert (=> b!7829335 (= e!4630775 tp!2313810)))

(assert (=> b!7827999 (= tp!2312898 e!4630775)))

(declare-fun b!7829334 () Bool)

(declare-fun tp!2313807 () Bool)

(declare-fun tp!2313811 () Bool)

(assert (=> b!7829334 (= e!4630775 (and tp!2313807 tp!2313811))))

(assert (= (and b!7827999 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829333))

(assert (= (and b!7827999 (is-Concat!29799 (regOne!42420 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829334))

(assert (= (and b!7827999 (is-Star!20954 (regOne!42420 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829335))

(assert (= (and b!7827999 (is-Union!20954 (regOne!42420 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829336))

(declare-fun b!7829340 () Bool)

(declare-fun e!4630776 () Bool)

(declare-fun tp!2313814 () Bool)

(declare-fun tp!2313813 () Bool)

(assert (=> b!7829340 (= e!4630776 (and tp!2313814 tp!2313813))))

(declare-fun b!7829337 () Bool)

(assert (=> b!7829337 (= e!4630776 tp_is_empty!52263)))

(declare-fun b!7829339 () Bool)

(declare-fun tp!2313815 () Bool)

(assert (=> b!7829339 (= e!4630776 tp!2313815)))

(assert (=> b!7827999 (= tp!2312902 e!4630776)))

(declare-fun b!7829338 () Bool)

(declare-fun tp!2313812 () Bool)

(declare-fun tp!2313816 () Bool)

(assert (=> b!7829338 (= e!4630776 (and tp!2313812 tp!2313816))))

(assert (= (and b!7827999 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829337))

(assert (= (and b!7827999 (is-Concat!29799 (regTwo!42420 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829338))

(assert (= (and b!7827999 (is-Star!20954 (regTwo!42420 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829339))

(assert (= (and b!7827999 (is-Union!20954 (regTwo!42420 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829340))

(declare-fun b!7829341 () Bool)

(declare-fun e!4630777 () Bool)

(declare-fun tp!2313817 () Bool)

(assert (=> b!7829341 (= e!4630777 (and tp_is_empty!52263 tp!2313817))))

(assert (=> b!7827992 (= tp!2312891 e!4630777)))

(assert (= (and b!7827992 (is-Cons!73667 (t!388526 (t!388526 (t!388526 s1Rec!453))))) b!7829341))

(declare-fun b!7829345 () Bool)

(declare-fun e!4630778 () Bool)

(declare-fun tp!2313820 () Bool)

(declare-fun tp!2313819 () Bool)

(assert (=> b!7829345 (= e!4630778 (and tp!2313820 tp!2313819))))

(declare-fun b!7829342 () Bool)

(assert (=> b!7829342 (= e!4630778 tp_is_empty!52263)))

(declare-fun b!7829344 () Bool)

(declare-fun tp!2313821 () Bool)

(assert (=> b!7829344 (= e!4630778 tp!2313821)))

(assert (=> b!7827865 (= tp!2312731 e!4630778)))

(declare-fun b!7829343 () Bool)

(declare-fun tp!2313818 () Bool)

(declare-fun tp!2313822 () Bool)

(assert (=> b!7829343 (= e!4630778 (and tp!2313818 tp!2313822))))

(assert (= (and b!7827865 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (reg!21283 r1!6261))))) b!7829342))

(assert (= (and b!7827865 (is-Concat!29799 (regOne!42421 (regOne!42421 (reg!21283 r1!6261))))) b!7829343))

(assert (= (and b!7827865 (is-Star!20954 (regOne!42421 (regOne!42421 (reg!21283 r1!6261))))) b!7829344))

(assert (= (and b!7827865 (is-Union!20954 (regOne!42421 (regOne!42421 (reg!21283 r1!6261))))) b!7829345))

(declare-fun b!7829349 () Bool)

(declare-fun e!4630779 () Bool)

(declare-fun tp!2313825 () Bool)

(declare-fun tp!2313824 () Bool)

(assert (=> b!7829349 (= e!4630779 (and tp!2313825 tp!2313824))))

(declare-fun b!7829346 () Bool)

(assert (=> b!7829346 (= e!4630779 tp_is_empty!52263)))

(declare-fun b!7829348 () Bool)

(declare-fun tp!2313826 () Bool)

(assert (=> b!7829348 (= e!4630779 tp!2313826)))

(assert (=> b!7827865 (= tp!2312730 e!4630779)))

(declare-fun b!7829347 () Bool)

(declare-fun tp!2313823 () Bool)

(declare-fun tp!2313827 () Bool)

(assert (=> b!7829347 (= e!4630779 (and tp!2313823 tp!2313827))))

(assert (= (and b!7827865 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (reg!21283 r1!6261))))) b!7829346))

(assert (= (and b!7827865 (is-Concat!29799 (regTwo!42421 (regOne!42421 (reg!21283 r1!6261))))) b!7829347))

(assert (= (and b!7827865 (is-Star!20954 (regTwo!42421 (regOne!42421 (reg!21283 r1!6261))))) b!7829348))

(assert (= (and b!7827865 (is-Union!20954 (regTwo!42421 (regOne!42421 (reg!21283 r1!6261))))) b!7829349))

(declare-fun b!7829353 () Bool)

(declare-fun e!4630780 () Bool)

(declare-fun tp!2313830 () Bool)

(declare-fun tp!2313829 () Bool)

(assert (=> b!7829353 (= e!4630780 (and tp!2313830 tp!2313829))))

(declare-fun b!7829350 () Bool)

(assert (=> b!7829350 (= e!4630780 tp_is_empty!52263)))

(declare-fun b!7829352 () Bool)

(declare-fun tp!2313831 () Bool)

(assert (=> b!7829352 (= e!4630780 tp!2313831)))

(assert (=> b!7827888 (= tp!2312762 e!4630780)))

(declare-fun b!7829351 () Bool)

(declare-fun tp!2313828 () Bool)

(declare-fun tp!2313832 () Bool)

(assert (=> b!7829351 (= e!4630780 (and tp!2313828 tp!2313832))))

(assert (= (and b!7827888 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829350))

(assert (= (and b!7827888 (is-Concat!29799 (reg!21283 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829351))

(assert (= (and b!7827888 (is-Star!20954 (reg!21283 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829352))

(assert (= (and b!7827888 (is-Union!20954 (reg!21283 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829353))

(declare-fun b!7829357 () Bool)

(declare-fun e!4630781 () Bool)

(declare-fun tp!2313835 () Bool)

(declare-fun tp!2313834 () Bool)

(assert (=> b!7829357 (= e!4630781 (and tp!2313835 tp!2313834))))

(declare-fun b!7829354 () Bool)

(assert (=> b!7829354 (= e!4630781 tp_is_empty!52263)))

(declare-fun b!7829356 () Bool)

(declare-fun tp!2313836 () Bool)

(assert (=> b!7829356 (= e!4630781 tp!2313836)))

(assert (=> b!7827879 (= tp!2312749 e!4630781)))

(declare-fun b!7829355 () Bool)

(declare-fun tp!2313833 () Bool)

(declare-fun tp!2313837 () Bool)

(assert (=> b!7829355 (= e!4630781 (and tp!2313833 tp!2313837))))

(assert (= (and b!7827879 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (reg!21283 r1!6261))))) b!7829354))

(assert (= (and b!7827879 (is-Concat!29799 (regOne!42420 (regTwo!42420 (reg!21283 r1!6261))))) b!7829355))

(assert (= (and b!7827879 (is-Star!20954 (regOne!42420 (regTwo!42420 (reg!21283 r1!6261))))) b!7829356))

(assert (= (and b!7827879 (is-Union!20954 (regOne!42420 (regTwo!42420 (reg!21283 r1!6261))))) b!7829357))

(declare-fun b!7829361 () Bool)

(declare-fun e!4630782 () Bool)

(declare-fun tp!2313840 () Bool)

(declare-fun tp!2313839 () Bool)

(assert (=> b!7829361 (= e!4630782 (and tp!2313840 tp!2313839))))

(declare-fun b!7829358 () Bool)

(assert (=> b!7829358 (= e!4630782 tp_is_empty!52263)))

(declare-fun b!7829360 () Bool)

(declare-fun tp!2313841 () Bool)

(assert (=> b!7829360 (= e!4630782 tp!2313841)))

(assert (=> b!7827879 (= tp!2312753 e!4630782)))

(declare-fun b!7829359 () Bool)

(declare-fun tp!2313838 () Bool)

(declare-fun tp!2313842 () Bool)

(assert (=> b!7829359 (= e!4630782 (and tp!2313838 tp!2313842))))

(assert (= (and b!7827879 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (reg!21283 r1!6261))))) b!7829358))

(assert (= (and b!7827879 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (reg!21283 r1!6261))))) b!7829359))

(assert (= (and b!7827879 (is-Star!20954 (regTwo!42420 (regTwo!42420 (reg!21283 r1!6261))))) b!7829360))

(assert (= (and b!7827879 (is-Union!20954 (regTwo!42420 (regTwo!42420 (reg!21283 r1!6261))))) b!7829361))

(declare-fun b!7829365 () Bool)

(declare-fun e!4630783 () Bool)

(declare-fun tp!2313845 () Bool)

(declare-fun tp!2313844 () Bool)

(assert (=> b!7829365 (= e!4630783 (and tp!2313845 tp!2313844))))

(declare-fun b!7829362 () Bool)

(assert (=> b!7829362 (= e!4630783 tp_is_empty!52263)))

(declare-fun b!7829364 () Bool)

(declare-fun tp!2313846 () Bool)

(assert (=> b!7829364 (= e!4630783 tp!2313846)))

(assert (=> b!7827974 (= tp!2312867 e!4630783)))

(declare-fun b!7829363 () Bool)

(declare-fun tp!2313843 () Bool)

(declare-fun tp!2313847 () Bool)

(assert (=> b!7829363 (= e!4630783 (and tp!2313843 tp!2313847))))

(assert (= (and b!7827974 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (regOne!42421 r2!6199))))) b!7829362))

(assert (= (and b!7827974 (is-Concat!29799 (regOne!42421 (regOne!42420 (regOne!42421 r2!6199))))) b!7829363))

(assert (= (and b!7827974 (is-Star!20954 (regOne!42421 (regOne!42420 (regOne!42421 r2!6199))))) b!7829364))

(assert (= (and b!7827974 (is-Union!20954 (regOne!42421 (regOne!42420 (regOne!42421 r2!6199))))) b!7829365))

(declare-fun b!7829369 () Bool)

(declare-fun e!4630784 () Bool)

(declare-fun tp!2313850 () Bool)

(declare-fun tp!2313849 () Bool)

(assert (=> b!7829369 (= e!4630784 (and tp!2313850 tp!2313849))))

(declare-fun b!7829366 () Bool)

(assert (=> b!7829366 (= e!4630784 tp_is_empty!52263)))

(declare-fun b!7829368 () Bool)

(declare-fun tp!2313851 () Bool)

(assert (=> b!7829368 (= e!4630784 tp!2313851)))

(assert (=> b!7827974 (= tp!2312866 e!4630784)))

(declare-fun b!7829367 () Bool)

(declare-fun tp!2313848 () Bool)

(declare-fun tp!2313852 () Bool)

(assert (=> b!7829367 (= e!4630784 (and tp!2313848 tp!2313852))))

(assert (= (and b!7827974 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (regOne!42421 r2!6199))))) b!7829366))

(assert (= (and b!7827974 (is-Concat!29799 (regTwo!42421 (regOne!42420 (regOne!42421 r2!6199))))) b!7829367))

(assert (= (and b!7827974 (is-Star!20954 (regTwo!42421 (regOne!42420 (regOne!42421 r2!6199))))) b!7829368))

(assert (= (and b!7827974 (is-Union!20954 (regTwo!42421 (regOne!42420 (regOne!42421 r2!6199))))) b!7829369))

(declare-fun b!7829373 () Bool)

(declare-fun e!4630785 () Bool)

(declare-fun tp!2313855 () Bool)

(declare-fun tp!2313854 () Bool)

(assert (=> b!7829373 (= e!4630785 (and tp!2313855 tp!2313854))))

(declare-fun b!7829370 () Bool)

(assert (=> b!7829370 (= e!4630785 tp_is_empty!52263)))

(declare-fun b!7829372 () Bool)

(declare-fun tp!2313856 () Bool)

(assert (=> b!7829372 (= e!4630785 tp!2313856)))

(assert (=> b!7827965 (= tp!2312858 e!4630785)))

(declare-fun b!7829371 () Bool)

(declare-fun tp!2313853 () Bool)

(declare-fun tp!2313857 () Bool)

(assert (=> b!7829371 (= e!4630785 (and tp!2313853 tp!2313857))))

(assert (= (and b!7827965 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829370))

(assert (= (and b!7827965 (is-Concat!29799 (reg!21283 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829371))

(assert (= (and b!7827965 (is-Star!20954 (reg!21283 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829372))

(assert (= (and b!7827965 (is-Union!20954 (reg!21283 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829373))

(declare-fun b!7829377 () Bool)

(declare-fun e!4630786 () Bool)

(declare-fun tp!2313860 () Bool)

(declare-fun tp!2313859 () Bool)

(assert (=> b!7829377 (= e!4630786 (and tp!2313860 tp!2313859))))

(declare-fun b!7829374 () Bool)

(assert (=> b!7829374 (= e!4630786 tp_is_empty!52263)))

(declare-fun b!7829376 () Bool)

(declare-fun tp!2313861 () Bool)

(assert (=> b!7829376 (= e!4630786 tp!2313861)))

(assert (=> b!7827956 (= tp!2312845 e!4630786)))

(declare-fun b!7829375 () Bool)

(declare-fun tp!2313858 () Bool)

(declare-fun tp!2313862 () Bool)

(assert (=> b!7829375 (= e!4630786 (and tp!2313858 tp!2313862))))

(assert (= (and b!7827956 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829374))

(assert (= (and b!7827956 (is-Concat!29799 (regOne!42420 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829375))

(assert (= (and b!7827956 (is-Star!20954 (regOne!42420 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829376))

(assert (= (and b!7827956 (is-Union!20954 (regOne!42420 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829377))

(declare-fun b!7829381 () Bool)

(declare-fun e!4630787 () Bool)

(declare-fun tp!2313865 () Bool)

(declare-fun tp!2313864 () Bool)

(assert (=> b!7829381 (= e!4630787 (and tp!2313865 tp!2313864))))

(declare-fun b!7829378 () Bool)

(assert (=> b!7829378 (= e!4630787 tp_is_empty!52263)))

(declare-fun b!7829380 () Bool)

(declare-fun tp!2313866 () Bool)

(assert (=> b!7829380 (= e!4630787 tp!2313866)))

(assert (=> b!7827956 (= tp!2312849 e!4630787)))

(declare-fun b!7829379 () Bool)

(declare-fun tp!2313863 () Bool)

(declare-fun tp!2313867 () Bool)

(assert (=> b!7829379 (= e!4630787 (and tp!2313863 tp!2313867))))

(assert (= (and b!7827956 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829378))

(assert (= (and b!7827956 (is-Concat!29799 (regTwo!42420 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829379))

(assert (= (and b!7827956 (is-Star!20954 (regTwo!42420 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829380))

(assert (= (and b!7827956 (is-Union!20954 (regTwo!42420 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829381))

(declare-fun b!7829385 () Bool)

(declare-fun e!4630788 () Bool)

(declare-fun tp!2313870 () Bool)

(declare-fun tp!2313869 () Bool)

(assert (=> b!7829385 (= e!4630788 (and tp!2313870 tp!2313869))))

(declare-fun b!7829382 () Bool)

(assert (=> b!7829382 (= e!4630788 tp_is_empty!52263)))

(declare-fun b!7829384 () Bool)

(declare-fun tp!2313871 () Bool)

(assert (=> b!7829384 (= e!4630788 tp!2313871)))

(assert (=> b!7827845 (= tp!2312706 e!4630788)))

(declare-fun b!7829383 () Bool)

(declare-fun tp!2313868 () Bool)

(declare-fun tp!2313872 () Bool)

(assert (=> b!7829383 (= e!4630788 (and tp!2313868 tp!2313872))))

(assert (= (and b!7827845 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (regOne!42421 r1!6261))))) b!7829382))

(assert (= (and b!7827845 (is-Concat!29799 (regOne!42421 (regOne!42421 (regOne!42421 r1!6261))))) b!7829383))

(assert (= (and b!7827845 (is-Star!20954 (regOne!42421 (regOne!42421 (regOne!42421 r1!6261))))) b!7829384))

(assert (= (and b!7827845 (is-Union!20954 (regOne!42421 (regOne!42421 (regOne!42421 r1!6261))))) b!7829385))

(declare-fun b!7829389 () Bool)

(declare-fun e!4630789 () Bool)

(declare-fun tp!2313875 () Bool)

(declare-fun tp!2313874 () Bool)

(assert (=> b!7829389 (= e!4630789 (and tp!2313875 tp!2313874))))

(declare-fun b!7829386 () Bool)

(assert (=> b!7829386 (= e!4630789 tp_is_empty!52263)))

(declare-fun b!7829388 () Bool)

(declare-fun tp!2313876 () Bool)

(assert (=> b!7829388 (= e!4630789 tp!2313876)))

(assert (=> b!7827845 (= tp!2312705 e!4630789)))

(declare-fun b!7829387 () Bool)

(declare-fun tp!2313873 () Bool)

(declare-fun tp!2313877 () Bool)

(assert (=> b!7829387 (= e!4630789 (and tp!2313873 tp!2313877))))

(assert (= (and b!7827845 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (regOne!42421 r1!6261))))) b!7829386))

(assert (= (and b!7827845 (is-Concat!29799 (regTwo!42421 (regOne!42421 (regOne!42421 r1!6261))))) b!7829387))

(assert (= (and b!7827845 (is-Star!20954 (regTwo!42421 (regOne!42421 (regOne!42421 r1!6261))))) b!7829388))

(assert (= (and b!7827845 (is-Union!20954 (regTwo!42421 (regOne!42421 (regOne!42421 r1!6261))))) b!7829389))

(declare-fun b!7829393 () Bool)

(declare-fun e!4630790 () Bool)

(declare-fun tp!2313880 () Bool)

(declare-fun tp!2313879 () Bool)

(assert (=> b!7829393 (= e!4630790 (and tp!2313880 tp!2313879))))

(declare-fun b!7829390 () Bool)

(assert (=> b!7829390 (= e!4630790 tp_is_empty!52263)))

(declare-fun b!7829392 () Bool)

(declare-fun tp!2313881 () Bool)

(assert (=> b!7829392 (= e!4630790 tp!2313881)))

(assert (=> b!7827836 (= tp!2312697 e!4630790)))

(declare-fun b!7829391 () Bool)

(declare-fun tp!2313878 () Bool)

(declare-fun tp!2313882 () Bool)

(assert (=> b!7829391 (= e!4630790 (and tp!2313878 tp!2313882))))

(assert (= (and b!7827836 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829390))

(assert (= (and b!7827836 (is-Concat!29799 (reg!21283 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829391))

(assert (= (and b!7827836 (is-Star!20954 (reg!21283 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829392))

(assert (= (and b!7827836 (is-Union!20954 (reg!21283 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829393))

(declare-fun b!7829397 () Bool)

(declare-fun e!4630791 () Bool)

(declare-fun tp!2313885 () Bool)

(declare-fun tp!2313884 () Bool)

(assert (=> b!7829397 (= e!4630791 (and tp!2313885 tp!2313884))))

(declare-fun b!7829394 () Bool)

(assert (=> b!7829394 (= e!4630791 tp_is_empty!52263)))

(declare-fun b!7829396 () Bool)

(declare-fun tp!2313886 () Bool)

(assert (=> b!7829396 (= e!4630791 tp!2313886)))

(assert (=> b!7827827 (= tp!2312684 e!4630791)))

(declare-fun b!7829395 () Bool)

(declare-fun tp!2313883 () Bool)

(declare-fun tp!2313887 () Bool)

(assert (=> b!7829395 (= e!4630791 (and tp!2313883 tp!2313887))))

(assert (= (and b!7827827 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (regOne!42420 r2!6199))))) b!7829394))

(assert (= (and b!7827827 (is-Concat!29799 (regOne!42420 (regOne!42420 (regOne!42420 r2!6199))))) b!7829395))

(assert (= (and b!7827827 (is-Star!20954 (regOne!42420 (regOne!42420 (regOne!42420 r2!6199))))) b!7829396))

(assert (= (and b!7827827 (is-Union!20954 (regOne!42420 (regOne!42420 (regOne!42420 r2!6199))))) b!7829397))

(declare-fun b!7829401 () Bool)

(declare-fun e!4630792 () Bool)

(declare-fun tp!2313890 () Bool)

(declare-fun tp!2313889 () Bool)

(assert (=> b!7829401 (= e!4630792 (and tp!2313890 tp!2313889))))

(declare-fun b!7829398 () Bool)

(assert (=> b!7829398 (= e!4630792 tp_is_empty!52263)))

(declare-fun b!7829400 () Bool)

(declare-fun tp!2313891 () Bool)

(assert (=> b!7829400 (= e!4630792 tp!2313891)))

(assert (=> b!7827827 (= tp!2312688 e!4630792)))

(declare-fun b!7829399 () Bool)

(declare-fun tp!2313888 () Bool)

(declare-fun tp!2313892 () Bool)

(assert (=> b!7829399 (= e!4630792 (and tp!2313888 tp!2313892))))

(assert (= (and b!7827827 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (regOne!42420 r2!6199))))) b!7829398))

(assert (= (and b!7827827 (is-Concat!29799 (regTwo!42420 (regOne!42420 (regOne!42420 r2!6199))))) b!7829399))

(assert (= (and b!7827827 (is-Star!20954 (regTwo!42420 (regOne!42420 (regOne!42420 r2!6199))))) b!7829400))

(assert (= (and b!7827827 (is-Union!20954 (regTwo!42420 (regOne!42420 (regOne!42420 r2!6199))))) b!7829401))

(declare-fun b!7829405 () Bool)

(declare-fun e!4630793 () Bool)

(declare-fun tp!2313895 () Bool)

(declare-fun tp!2313894 () Bool)

(assert (=> b!7829405 (= e!4630793 (and tp!2313895 tp!2313894))))

(declare-fun b!7829402 () Bool)

(assert (=> b!7829402 (= e!4630793 tp_is_empty!52263)))

(declare-fun b!7829404 () Bool)

(declare-fun tp!2313896 () Bool)

(assert (=> b!7829404 (= e!4630793 tp!2313896)))

(assert (=> b!7827922 (= tp!2312802 e!4630793)))

(declare-fun b!7829403 () Bool)

(declare-fun tp!2313893 () Bool)

(declare-fun tp!2313897 () Bool)

(assert (=> b!7829403 (= e!4630793 (and tp!2313893 tp!2313897))))

(assert (= (and b!7827922 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (regOne!42421 r2!6199))))) b!7829402))

(assert (= (and b!7827922 (is-Concat!29799 (regOne!42421 (regOne!42421 (regOne!42421 r2!6199))))) b!7829403))

(assert (= (and b!7827922 (is-Star!20954 (regOne!42421 (regOne!42421 (regOne!42421 r2!6199))))) b!7829404))

(assert (= (and b!7827922 (is-Union!20954 (regOne!42421 (regOne!42421 (regOne!42421 r2!6199))))) b!7829405))

(declare-fun b!7829409 () Bool)

(declare-fun e!4630794 () Bool)

(declare-fun tp!2313900 () Bool)

(declare-fun tp!2313899 () Bool)

(assert (=> b!7829409 (= e!4630794 (and tp!2313900 tp!2313899))))

(declare-fun b!7829406 () Bool)

(assert (=> b!7829406 (= e!4630794 tp_is_empty!52263)))

(declare-fun b!7829408 () Bool)

(declare-fun tp!2313901 () Bool)

(assert (=> b!7829408 (= e!4630794 tp!2313901)))

(assert (=> b!7827922 (= tp!2312801 e!4630794)))

(declare-fun b!7829407 () Bool)

(declare-fun tp!2313898 () Bool)

(declare-fun tp!2313902 () Bool)

(assert (=> b!7829407 (= e!4630794 (and tp!2313898 tp!2313902))))

(assert (= (and b!7827922 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (regOne!42421 r2!6199))))) b!7829406))

(assert (= (and b!7827922 (is-Concat!29799 (regTwo!42421 (regOne!42421 (regOne!42421 r2!6199))))) b!7829407))

(assert (= (and b!7827922 (is-Star!20954 (regTwo!42421 (regOne!42421 (regOne!42421 r2!6199))))) b!7829408))

(assert (= (and b!7827922 (is-Union!20954 (regTwo!42421 (regOne!42421 (regOne!42421 r2!6199))))) b!7829409))

(declare-fun b!7829413 () Bool)

(declare-fun e!4630795 () Bool)

(declare-fun tp!2313905 () Bool)

(declare-fun tp!2313904 () Bool)

(assert (=> b!7829413 (= e!4630795 (and tp!2313905 tp!2313904))))

(declare-fun b!7829410 () Bool)

(assert (=> b!7829410 (= e!4630795 tp_is_empty!52263)))

(declare-fun b!7829412 () Bool)

(declare-fun tp!2313906 () Bool)

(assert (=> b!7829412 (= e!4630795 tp!2313906)))

(assert (=> b!7827897 (= tp!2312771 e!4630795)))

(declare-fun b!7829411 () Bool)

(declare-fun tp!2313903 () Bool)

(declare-fun tp!2313907 () Bool)

(assert (=> b!7829411 (= e!4630795 (and tp!2313903 tp!2313907))))

(assert (= (and b!7827897 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (regOne!42420 r1!6261))))) b!7829410))

(assert (= (and b!7827897 (is-Concat!29799 (regOne!42421 (regOne!42421 (regOne!42420 r1!6261))))) b!7829411))

(assert (= (and b!7827897 (is-Star!20954 (regOne!42421 (regOne!42421 (regOne!42420 r1!6261))))) b!7829412))

(assert (= (and b!7827897 (is-Union!20954 (regOne!42421 (regOne!42421 (regOne!42420 r1!6261))))) b!7829413))

(declare-fun b!7829417 () Bool)

(declare-fun e!4630796 () Bool)

(declare-fun tp!2313910 () Bool)

(declare-fun tp!2313909 () Bool)

(assert (=> b!7829417 (= e!4630796 (and tp!2313910 tp!2313909))))

(declare-fun b!7829414 () Bool)

(assert (=> b!7829414 (= e!4630796 tp_is_empty!52263)))

(declare-fun b!7829416 () Bool)

(declare-fun tp!2313911 () Bool)

(assert (=> b!7829416 (= e!4630796 tp!2313911)))

(assert (=> b!7827897 (= tp!2312770 e!4630796)))

(declare-fun b!7829415 () Bool)

(declare-fun tp!2313908 () Bool)

(declare-fun tp!2313912 () Bool)

(assert (=> b!7829415 (= e!4630796 (and tp!2313908 tp!2313912))))

(assert (= (and b!7827897 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (regOne!42420 r1!6261))))) b!7829414))

(assert (= (and b!7827897 (is-Concat!29799 (regTwo!42421 (regOne!42421 (regOne!42420 r1!6261))))) b!7829415))

(assert (= (and b!7827897 (is-Star!20954 (regTwo!42421 (regOne!42421 (regOne!42420 r1!6261))))) b!7829416))

(assert (= (and b!7827897 (is-Union!20954 (regTwo!42421 (regOne!42421 (regOne!42420 r1!6261))))) b!7829417))

(declare-fun b!7829421 () Bool)

(declare-fun e!4630797 () Bool)

(declare-fun tp!2313915 () Bool)

(declare-fun tp!2313914 () Bool)

(assert (=> b!7829421 (= e!4630797 (and tp!2313915 tp!2313914))))

(declare-fun b!7829418 () Bool)

(assert (=> b!7829418 (= e!4630797 tp_is_empty!52263)))

(declare-fun b!7829420 () Bool)

(declare-fun tp!2313916 () Bool)

(assert (=> b!7829420 (= e!4630797 tp!2313916)))

(assert (=> b!7827911 (= tp!2312789 e!4630797)))

(declare-fun b!7829419 () Bool)

(declare-fun tp!2313913 () Bool)

(declare-fun tp!2313917 () Bool)

(assert (=> b!7829419 (= e!4630797 (and tp!2313913 tp!2313917))))

(assert (= (and b!7827911 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (regOne!42420 r1!6261))))) b!7829418))

(assert (= (and b!7827911 (is-Concat!29799 (regOne!42420 (regOne!42420 (regOne!42420 r1!6261))))) b!7829419))

(assert (= (and b!7827911 (is-Star!20954 (regOne!42420 (regOne!42420 (regOne!42420 r1!6261))))) b!7829420))

(assert (= (and b!7827911 (is-Union!20954 (regOne!42420 (regOne!42420 (regOne!42420 r1!6261))))) b!7829421))

(declare-fun b!7829425 () Bool)

(declare-fun e!4630798 () Bool)

(declare-fun tp!2313920 () Bool)

(declare-fun tp!2313919 () Bool)

(assert (=> b!7829425 (= e!4630798 (and tp!2313920 tp!2313919))))

(declare-fun b!7829422 () Bool)

(assert (=> b!7829422 (= e!4630798 tp_is_empty!52263)))

(declare-fun b!7829424 () Bool)

(declare-fun tp!2313921 () Bool)

(assert (=> b!7829424 (= e!4630798 tp!2313921)))

(assert (=> b!7827911 (= tp!2312793 e!4630798)))

(declare-fun b!7829423 () Bool)

(declare-fun tp!2313918 () Bool)

(declare-fun tp!2313922 () Bool)

(assert (=> b!7829423 (= e!4630798 (and tp!2313918 tp!2313922))))

(assert (= (and b!7827911 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (regOne!42420 r1!6261))))) b!7829422))

(assert (= (and b!7827911 (is-Concat!29799 (regTwo!42420 (regOne!42420 (regOne!42420 r1!6261))))) b!7829423))

(assert (= (and b!7827911 (is-Star!20954 (regTwo!42420 (regOne!42420 (regOne!42420 r1!6261))))) b!7829424))

(assert (= (and b!7827911 (is-Union!20954 (regTwo!42420 (regOne!42420 (regOne!42420 r1!6261))))) b!7829425))

(declare-fun b!7829429 () Bool)

(declare-fun e!4630799 () Bool)

(declare-fun tp!2313925 () Bool)

(declare-fun tp!2313924 () Bool)

(assert (=> b!7829429 (= e!4630799 (and tp!2313925 tp!2313924))))

(declare-fun b!7829426 () Bool)

(assert (=> b!7829426 (= e!4630799 tp_is_empty!52263)))

(declare-fun b!7829428 () Bool)

(declare-fun tp!2313926 () Bool)

(assert (=> b!7829428 (= e!4630799 tp!2313926)))

(assert (=> b!7827997 (= tp!2312895 e!4630799)))

(declare-fun b!7829427 () Bool)

(declare-fun tp!2313923 () Bool)

(declare-fun tp!2313927 () Bool)

(assert (=> b!7829427 (= e!4630799 (and tp!2313923 tp!2313927))))

(assert (= (and b!7827997 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (regTwo!42420 r1!6261))))) b!7829426))

(assert (= (and b!7827997 (is-Concat!29799 (regOne!42421 (reg!21283 (regTwo!42420 r1!6261))))) b!7829427))

(assert (= (and b!7827997 (is-Star!20954 (regOne!42421 (reg!21283 (regTwo!42420 r1!6261))))) b!7829428))

(assert (= (and b!7827997 (is-Union!20954 (regOne!42421 (reg!21283 (regTwo!42420 r1!6261))))) b!7829429))

(declare-fun b!7829433 () Bool)

(declare-fun e!4630800 () Bool)

(declare-fun tp!2313930 () Bool)

(declare-fun tp!2313929 () Bool)

(assert (=> b!7829433 (= e!4630800 (and tp!2313930 tp!2313929))))

(declare-fun b!7829430 () Bool)

(assert (=> b!7829430 (= e!4630800 tp_is_empty!52263)))

(declare-fun b!7829432 () Bool)

(declare-fun tp!2313931 () Bool)

(assert (=> b!7829432 (= e!4630800 tp!2313931)))

(assert (=> b!7827997 (= tp!2312894 e!4630800)))

(declare-fun b!7829431 () Bool)

(declare-fun tp!2313928 () Bool)

(declare-fun tp!2313932 () Bool)

(assert (=> b!7829431 (= e!4630800 (and tp!2313928 tp!2313932))))

(assert (= (and b!7827997 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (regTwo!42420 r1!6261))))) b!7829430))

(assert (= (and b!7827997 (is-Concat!29799 (regTwo!42421 (reg!21283 (regTwo!42420 r1!6261))))) b!7829431))

(assert (= (and b!7827997 (is-Star!20954 (regTwo!42421 (reg!21283 (regTwo!42420 r1!6261))))) b!7829432))

(assert (= (and b!7827997 (is-Union!20954 (regTwo!42421 (reg!21283 (regTwo!42420 r1!6261))))) b!7829433))

(declare-fun b!7829437 () Bool)

(declare-fun e!4630801 () Bool)

(declare-fun tp!2313935 () Bool)

(declare-fun tp!2313934 () Bool)

(assert (=> b!7829437 (= e!4630801 (and tp!2313935 tp!2313934))))

(declare-fun b!7829434 () Bool)

(assert (=> b!7829434 (= e!4630801 tp_is_empty!52263)))

(declare-fun b!7829436 () Bool)

(declare-fun tp!2313936 () Bool)

(assert (=> b!7829436 (= e!4630801 tp!2313936)))

(assert (=> b!7827988 (= tp!2312885 e!4630801)))

(declare-fun b!7829435 () Bool)

(declare-fun tp!2313933 () Bool)

(declare-fun tp!2313937 () Bool)

(assert (=> b!7829435 (= e!4630801 (and tp!2313933 tp!2313937))))

(assert (= (and b!7827988 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (regTwo!42421 r1!6261))))) b!7829434))

(assert (= (and b!7827988 (is-Concat!29799 (regOne!42420 (reg!21283 (regTwo!42421 r1!6261))))) b!7829435))

(assert (= (and b!7827988 (is-Star!20954 (regOne!42420 (reg!21283 (regTwo!42421 r1!6261))))) b!7829436))

(assert (= (and b!7827988 (is-Union!20954 (regOne!42420 (reg!21283 (regTwo!42421 r1!6261))))) b!7829437))

(declare-fun b!7829441 () Bool)

(declare-fun e!4630802 () Bool)

(declare-fun tp!2313940 () Bool)

(declare-fun tp!2313939 () Bool)

(assert (=> b!7829441 (= e!4630802 (and tp!2313940 tp!2313939))))

(declare-fun b!7829438 () Bool)

(assert (=> b!7829438 (= e!4630802 tp_is_empty!52263)))

(declare-fun b!7829440 () Bool)

(declare-fun tp!2313941 () Bool)

(assert (=> b!7829440 (= e!4630802 tp!2313941)))

(assert (=> b!7827988 (= tp!2312889 e!4630802)))

(declare-fun b!7829439 () Bool)

(declare-fun tp!2313938 () Bool)

(declare-fun tp!2313942 () Bool)

(assert (=> b!7829439 (= e!4630802 (and tp!2313938 tp!2313942))))

(assert (= (and b!7827988 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (regTwo!42421 r1!6261))))) b!7829438))

(assert (= (and b!7827988 (is-Concat!29799 (regTwo!42420 (reg!21283 (regTwo!42421 r1!6261))))) b!7829439))

(assert (= (and b!7827988 (is-Star!20954 (regTwo!42420 (reg!21283 (regTwo!42421 r1!6261))))) b!7829440))

(assert (= (and b!7827988 (is-Union!20954 (regTwo!42420 (reg!21283 (regTwo!42421 r1!6261))))) b!7829441))

(declare-fun b!7829445 () Bool)

(declare-fun e!4630803 () Bool)

(declare-fun tp!2313945 () Bool)

(declare-fun tp!2313944 () Bool)

(assert (=> b!7829445 (= e!4630803 (and tp!2313945 tp!2313944))))

(declare-fun b!7829442 () Bool)

(assert (=> b!7829442 (= e!4630803 tp_is_empty!52263)))

(declare-fun b!7829444 () Bool)

(declare-fun tp!2313946 () Bool)

(assert (=> b!7829444 (= e!4630803 tp!2313946)))

(assert (=> b!7827877 (= tp!2312746 e!4630803)))

(declare-fun b!7829443 () Bool)

(declare-fun tp!2313943 () Bool)

(declare-fun tp!2313947 () Bool)

(assert (=> b!7829443 (= e!4630803 (and tp!2313943 tp!2313947))))

(assert (= (and b!7827877 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (reg!21283 r1!6261))))) b!7829442))

(assert (= (and b!7827877 (is-Concat!29799 (regOne!42421 (regOne!42420 (reg!21283 r1!6261))))) b!7829443))

(assert (= (and b!7827877 (is-Star!20954 (regOne!42421 (regOne!42420 (reg!21283 r1!6261))))) b!7829444))

(assert (= (and b!7827877 (is-Union!20954 (regOne!42421 (regOne!42420 (reg!21283 r1!6261))))) b!7829445))

(declare-fun b!7829449 () Bool)

(declare-fun e!4630804 () Bool)

(declare-fun tp!2313950 () Bool)

(declare-fun tp!2313949 () Bool)

(assert (=> b!7829449 (= e!4630804 (and tp!2313950 tp!2313949))))

(declare-fun b!7829446 () Bool)

(assert (=> b!7829446 (= e!4630804 tp_is_empty!52263)))

(declare-fun b!7829448 () Bool)

(declare-fun tp!2313951 () Bool)

(assert (=> b!7829448 (= e!4630804 tp!2313951)))

(assert (=> b!7827877 (= tp!2312745 e!4630804)))

(declare-fun b!7829447 () Bool)

(declare-fun tp!2313948 () Bool)

(declare-fun tp!2313952 () Bool)

(assert (=> b!7829447 (= e!4630804 (and tp!2313948 tp!2313952))))

(assert (= (and b!7827877 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (reg!21283 r1!6261))))) b!7829446))

(assert (= (and b!7827877 (is-Concat!29799 (regTwo!42421 (regOne!42420 (reg!21283 r1!6261))))) b!7829447))

(assert (= (and b!7827877 (is-Star!20954 (regTwo!42421 (regOne!42420 (reg!21283 r1!6261))))) b!7829448))

(assert (= (and b!7827877 (is-Union!20954 (regTwo!42421 (regOne!42420 (reg!21283 r1!6261))))) b!7829449))

(declare-fun b!7829453 () Bool)

(declare-fun e!4630805 () Bool)

(declare-fun tp!2313955 () Bool)

(declare-fun tp!2313954 () Bool)

(assert (=> b!7829453 (= e!4630805 (and tp!2313955 tp!2313954))))

(declare-fun b!7829450 () Bool)

(assert (=> b!7829450 (= e!4630805 tp_is_empty!52263)))

(declare-fun b!7829452 () Bool)

(declare-fun tp!2313956 () Bool)

(assert (=> b!7829452 (= e!4630805 tp!2313956)))

(assert (=> b!7827868 (= tp!2312737 e!4630805)))

(declare-fun b!7829451 () Bool)

(declare-fun tp!2313953 () Bool)

(declare-fun tp!2313957 () Bool)

(assert (=> b!7829451 (= e!4630805 (and tp!2313953 tp!2313957))))

(assert (= (and b!7827868 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (reg!21283 r1!6261))))) b!7829450))

(assert (= (and b!7827868 (is-Concat!29799 (reg!21283 (regTwo!42421 (reg!21283 r1!6261))))) b!7829451))

(assert (= (and b!7827868 (is-Star!20954 (reg!21283 (regTwo!42421 (reg!21283 r1!6261))))) b!7829452))

(assert (= (and b!7827868 (is-Union!20954 (reg!21283 (regTwo!42421 (reg!21283 r1!6261))))) b!7829453))

(declare-fun b!7829457 () Bool)

(declare-fun e!4630806 () Bool)

(declare-fun tp!2313960 () Bool)

(declare-fun tp!2313959 () Bool)

(assert (=> b!7829457 (= e!4630806 (and tp!2313960 tp!2313959))))

(declare-fun b!7829454 () Bool)

(assert (=> b!7829454 (= e!4630806 tp_is_empty!52263)))

(declare-fun b!7829456 () Bool)

(declare-fun tp!2313961 () Bool)

(assert (=> b!7829456 (= e!4630806 tp!2313961)))

(assert (=> b!7827859 (= tp!2312724 e!4630806)))

(declare-fun b!7829455 () Bool)

(declare-fun tp!2313958 () Bool)

(declare-fun tp!2313962 () Bool)

(assert (=> b!7829455 (= e!4630806 (and tp!2313958 tp!2313962))))

(assert (= (and b!7827859 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (regTwo!42421 r2!6199))))) b!7829454))

(assert (= (and b!7827859 (is-Concat!29799 (regOne!42420 (reg!21283 (regTwo!42421 r2!6199))))) b!7829455))

(assert (= (and b!7827859 (is-Star!20954 (regOne!42420 (reg!21283 (regTwo!42421 r2!6199))))) b!7829456))

(assert (= (and b!7827859 (is-Union!20954 (regOne!42420 (reg!21283 (regTwo!42421 r2!6199))))) b!7829457))

(declare-fun b!7829461 () Bool)

(declare-fun e!4630807 () Bool)

(declare-fun tp!2313965 () Bool)

(declare-fun tp!2313964 () Bool)

(assert (=> b!7829461 (= e!4630807 (and tp!2313965 tp!2313964))))

(declare-fun b!7829458 () Bool)

(assert (=> b!7829458 (= e!4630807 tp_is_empty!52263)))

(declare-fun b!7829460 () Bool)

(declare-fun tp!2313966 () Bool)

(assert (=> b!7829460 (= e!4630807 tp!2313966)))

(assert (=> b!7827859 (= tp!2312728 e!4630807)))

(declare-fun b!7829459 () Bool)

(declare-fun tp!2313963 () Bool)

(declare-fun tp!2313967 () Bool)

(assert (=> b!7829459 (= e!4630807 (and tp!2313963 tp!2313967))))

(assert (= (and b!7827859 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (regTwo!42421 r2!6199))))) b!7829458))

(assert (= (and b!7827859 (is-Concat!29799 (regTwo!42420 (reg!21283 (regTwo!42421 r2!6199))))) b!7829459))

(assert (= (and b!7827859 (is-Star!20954 (regTwo!42420 (reg!21283 (regTwo!42421 r2!6199))))) b!7829460))

(assert (= (and b!7827859 (is-Union!20954 (regTwo!42420 (reg!21283 (regTwo!42421 r2!6199))))) b!7829461))

(declare-fun b!7829465 () Bool)

(declare-fun e!4630808 () Bool)

(declare-fun tp!2313970 () Bool)

(declare-fun tp!2313969 () Bool)

(assert (=> b!7829465 (= e!4630808 (and tp!2313970 tp!2313969))))

(declare-fun b!7829462 () Bool)

(assert (=> b!7829462 (= e!4630808 tp_is_empty!52263)))

(declare-fun b!7829464 () Bool)

(declare-fun tp!2313971 () Bool)

(assert (=> b!7829464 (= e!4630808 tp!2313971)))

(assert (=> b!7827954 (= tp!2312842 e!4630808)))

(declare-fun b!7829463 () Bool)

(declare-fun tp!2313968 () Bool)

(declare-fun tp!2313972 () Bool)

(assert (=> b!7829463 (= e!4630808 (and tp!2313968 tp!2313972))))

(assert (= (and b!7827954 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829462))

(assert (= (and b!7827954 (is-Concat!29799 (regOne!42421 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829463))

(assert (= (and b!7827954 (is-Star!20954 (regOne!42421 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829464))

(assert (= (and b!7827954 (is-Union!20954 (regOne!42421 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829465))

(declare-fun b!7829469 () Bool)

(declare-fun e!4630809 () Bool)

(declare-fun tp!2313975 () Bool)

(declare-fun tp!2313974 () Bool)

(assert (=> b!7829469 (= e!4630809 (and tp!2313975 tp!2313974))))

(declare-fun b!7829466 () Bool)

(assert (=> b!7829466 (= e!4630809 tp_is_empty!52263)))

(declare-fun b!7829468 () Bool)

(declare-fun tp!2313976 () Bool)

(assert (=> b!7829468 (= e!4630809 tp!2313976)))

(assert (=> b!7827954 (= tp!2312841 e!4630809)))

(declare-fun b!7829467 () Bool)

(declare-fun tp!2313973 () Bool)

(declare-fun tp!2313977 () Bool)

(assert (=> b!7829467 (= e!4630809 (and tp!2313973 tp!2313977))))

(assert (= (and b!7827954 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829466))

(assert (= (and b!7827954 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829467))

(assert (= (and b!7827954 (is-Star!20954 (regTwo!42421 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829468))

(assert (= (and b!7827954 (is-Union!20954 (regTwo!42421 (regTwo!42420 (regTwo!42420 r2!6199))))) b!7829469))

(declare-fun b!7829473 () Bool)

(declare-fun e!4630810 () Bool)

(declare-fun tp!2313980 () Bool)

(declare-fun tp!2313979 () Bool)

(assert (=> b!7829473 (= e!4630810 (and tp!2313980 tp!2313979))))

(declare-fun b!7829470 () Bool)

(assert (=> b!7829470 (= e!4630810 tp_is_empty!52263)))

(declare-fun b!7829472 () Bool)

(declare-fun tp!2313981 () Bool)

(assert (=> b!7829472 (= e!4630810 tp!2313981)))

(assert (=> b!7827945 (= tp!2312833 e!4630810)))

(declare-fun b!7829471 () Bool)

(declare-fun tp!2313978 () Bool)

(declare-fun tp!2313982 () Bool)

(assert (=> b!7829471 (= e!4630810 (and tp!2313978 tp!2313982))))

(assert (= (and b!7827945 (is-ElementMatch!20954 (reg!21283 (reg!21283 (regTwo!42420 r2!6199))))) b!7829470))

(assert (= (and b!7827945 (is-Concat!29799 (reg!21283 (reg!21283 (regTwo!42420 r2!6199))))) b!7829471))

(assert (= (and b!7827945 (is-Star!20954 (reg!21283 (reg!21283 (regTwo!42420 r2!6199))))) b!7829472))

(assert (= (and b!7827945 (is-Union!20954 (reg!21283 (reg!21283 (regTwo!42420 r2!6199))))) b!7829473))

(declare-fun b!7829477 () Bool)

(declare-fun e!4630811 () Bool)

(declare-fun tp!2313985 () Bool)

(declare-fun tp!2313984 () Bool)

(assert (=> b!7829477 (= e!4630811 (and tp!2313985 tp!2313984))))

(declare-fun b!7829474 () Bool)

(assert (=> b!7829474 (= e!4630811 tp_is_empty!52263)))

(declare-fun b!7829476 () Bool)

(declare-fun tp!2313986 () Bool)

(assert (=> b!7829476 (= e!4630811 tp!2313986)))

(assert (=> b!7827936 (= tp!2312820 e!4630811)))

(declare-fun b!7829475 () Bool)

(declare-fun tp!2313983 () Bool)

(declare-fun tp!2313987 () Bool)

(assert (=> b!7829475 (= e!4630811 (and tp!2313983 tp!2313987))))

(assert (= (and b!7827936 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (reg!21283 r2!6199))))) b!7829474))

(assert (= (and b!7827936 (is-Concat!29799 (regOne!42420 (regTwo!42420 (reg!21283 r2!6199))))) b!7829475))

(assert (= (and b!7827936 (is-Star!20954 (regOne!42420 (regTwo!42420 (reg!21283 r2!6199))))) b!7829476))

(assert (= (and b!7827936 (is-Union!20954 (regOne!42420 (regTwo!42420 (reg!21283 r2!6199))))) b!7829477))

(declare-fun b!7829481 () Bool)

(declare-fun e!4630812 () Bool)

(declare-fun tp!2313990 () Bool)

(declare-fun tp!2313989 () Bool)

(assert (=> b!7829481 (= e!4630812 (and tp!2313990 tp!2313989))))

(declare-fun b!7829478 () Bool)

(assert (=> b!7829478 (= e!4630812 tp_is_empty!52263)))

(declare-fun b!7829480 () Bool)

(declare-fun tp!2313991 () Bool)

(assert (=> b!7829480 (= e!4630812 tp!2313991)))

(assert (=> b!7827936 (= tp!2312824 e!4630812)))

(declare-fun b!7829479 () Bool)

(declare-fun tp!2313988 () Bool)

(declare-fun tp!2313992 () Bool)

(assert (=> b!7829479 (= e!4630812 (and tp!2313988 tp!2313992))))

(assert (= (and b!7827936 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (reg!21283 r2!6199))))) b!7829478))

(assert (= (and b!7827936 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (reg!21283 r2!6199))))) b!7829479))

(assert (= (and b!7827936 (is-Star!20954 (regTwo!42420 (regTwo!42420 (reg!21283 r2!6199))))) b!7829480))

(assert (= (and b!7827936 (is-Union!20954 (regTwo!42420 (regTwo!42420 (reg!21283 r2!6199))))) b!7829481))

(declare-fun b!7829485 () Bool)

(declare-fun e!4630813 () Bool)

(declare-fun tp!2313995 () Bool)

(declare-fun tp!2313994 () Bool)

(assert (=> b!7829485 (= e!4630813 (and tp!2313995 tp!2313994))))

(declare-fun b!7829482 () Bool)

(assert (=> b!7829482 (= e!4630813 tp_is_empty!52263)))

(declare-fun b!7829484 () Bool)

(declare-fun tp!2313996 () Bool)

(assert (=> b!7829484 (= e!4630813 tp!2313996)))

(assert (=> b!7828029 (= tp!2312935 e!4630813)))

(declare-fun b!7829483 () Bool)

(declare-fun tp!2313993 () Bool)

(declare-fun tp!2313997 () Bool)

(assert (=> b!7829483 (= e!4630813 (and tp!2313993 tp!2313997))))

(assert (= (and b!7828029 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829482))

(assert (= (and b!7828029 (is-Concat!29799 (regOne!42421 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829483))

(assert (= (and b!7828029 (is-Star!20954 (regOne!42421 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829484))

(assert (= (and b!7828029 (is-Union!20954 (regOne!42421 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829485))

(declare-fun b!7829489 () Bool)

(declare-fun e!4630814 () Bool)

(declare-fun tp!2314000 () Bool)

(declare-fun tp!2313999 () Bool)

(assert (=> b!7829489 (= e!4630814 (and tp!2314000 tp!2313999))))

(declare-fun b!7829486 () Bool)

(assert (=> b!7829486 (= e!4630814 tp_is_empty!52263)))

(declare-fun b!7829488 () Bool)

(declare-fun tp!2314001 () Bool)

(assert (=> b!7829488 (= e!4630814 tp!2314001)))

(assert (=> b!7828029 (= tp!2312934 e!4630814)))

(declare-fun b!7829487 () Bool)

(declare-fun tp!2313998 () Bool)

(declare-fun tp!2314002 () Bool)

(assert (=> b!7829487 (= e!4630814 (and tp!2313998 tp!2314002))))

(assert (= (and b!7828029 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829486))

(assert (= (and b!7828029 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829487))

(assert (= (and b!7828029 (is-Star!20954 (regTwo!42421 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829488))

(assert (= (and b!7828029 (is-Union!20954 (regTwo!42421 (regTwo!42421 (regTwo!42420 r1!6261))))) b!7829489))

(declare-fun b!7829493 () Bool)

(declare-fun e!4630815 () Bool)

(declare-fun tp!2314005 () Bool)

(declare-fun tp!2314004 () Bool)

(assert (=> b!7829493 (= e!4630815 (and tp!2314005 tp!2314004))))

(declare-fun b!7829490 () Bool)

(assert (=> b!7829490 (= e!4630815 tp_is_empty!52263)))

(declare-fun b!7829492 () Bool)

(declare-fun tp!2314006 () Bool)

(assert (=> b!7829492 (= e!4630815 tp!2314006)))

(assert (=> b!7828020 (= tp!2312926 e!4630815)))

(declare-fun b!7829491 () Bool)

(declare-fun tp!2314003 () Bool)

(declare-fun tp!2314007 () Bool)

(assert (=> b!7829491 (= e!4630815 (and tp!2314003 tp!2314007))))

(assert (= (and b!7828020 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829490))

(assert (= (and b!7828020 (is-Concat!29799 (reg!21283 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829491))

(assert (= (and b!7828020 (is-Star!20954 (reg!21283 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829492))

(assert (= (and b!7828020 (is-Union!20954 (reg!21283 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829493))

(declare-fun b!7829497 () Bool)

(declare-fun e!4630816 () Bool)

(declare-fun tp!2314010 () Bool)

(declare-fun tp!2314009 () Bool)

(assert (=> b!7829497 (= e!4630816 (and tp!2314010 tp!2314009))))

(declare-fun b!7829494 () Bool)

(assert (=> b!7829494 (= e!4630816 tp_is_empty!52263)))

(declare-fun b!7829496 () Bool)

(declare-fun tp!2314011 () Bool)

(assert (=> b!7829496 (= e!4630816 tp!2314011)))

(assert (=> b!7828011 (= tp!2312913 e!4630816)))

(declare-fun b!7829495 () Bool)

(declare-fun tp!2314008 () Bool)

(declare-fun tp!2314012 () Bool)

(assert (=> b!7829495 (= e!4630816 (and tp!2314008 tp!2314012))))

(assert (= (and b!7828011 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829494))

(assert (= (and b!7828011 (is-Concat!29799 (regOne!42420 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829495))

(assert (= (and b!7828011 (is-Star!20954 (regOne!42420 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829496))

(assert (= (and b!7828011 (is-Union!20954 (regOne!42420 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829497))

(declare-fun b!7829501 () Bool)

(declare-fun e!4630817 () Bool)

(declare-fun tp!2314015 () Bool)

(declare-fun tp!2314014 () Bool)

(assert (=> b!7829501 (= e!4630817 (and tp!2314015 tp!2314014))))

(declare-fun b!7829498 () Bool)

(assert (=> b!7829498 (= e!4630817 tp_is_empty!52263)))

(declare-fun b!7829500 () Bool)

(declare-fun tp!2314016 () Bool)

(assert (=> b!7829500 (= e!4630817 tp!2314016)))

(assert (=> b!7828011 (= tp!2312917 e!4630817)))

(declare-fun b!7829499 () Bool)

(declare-fun tp!2314013 () Bool)

(declare-fun tp!2314017 () Bool)

(assert (=> b!7829499 (= e!4630817 (and tp!2314013 tp!2314017))))

(assert (= (and b!7828011 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829498))

(assert (= (and b!7828011 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829499))

(assert (= (and b!7828011 (is-Star!20954 (regTwo!42420 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829500))

(assert (= (and b!7828011 (is-Union!20954 (regTwo!42420 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829501))

(declare-fun b!7829505 () Bool)

(declare-fun e!4630818 () Bool)

(declare-fun tp!2314020 () Bool)

(declare-fun tp!2314019 () Bool)

(assert (=> b!7829505 (= e!4630818 (and tp!2314020 tp!2314019))))

(declare-fun b!7829502 () Bool)

(assert (=> b!7829502 (= e!4630818 tp_is_empty!52263)))

(declare-fun b!7829504 () Bool)

(declare-fun tp!2314021 () Bool)

(assert (=> b!7829504 (= e!4630818 tp!2314021)))

(assert (=> b!7827909 (= tp!2312786 e!4630818)))

(declare-fun b!7829503 () Bool)

(declare-fun tp!2314018 () Bool)

(declare-fun tp!2314022 () Bool)

(assert (=> b!7829503 (= e!4630818 (and tp!2314018 tp!2314022))))

(assert (= (and b!7827909 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (reg!21283 r2!6199))))) b!7829502))

(assert (= (and b!7827909 (is-Concat!29799 (regOne!42421 (regTwo!42421 (reg!21283 r2!6199))))) b!7829503))

(assert (= (and b!7827909 (is-Star!20954 (regOne!42421 (regTwo!42421 (reg!21283 r2!6199))))) b!7829504))

(assert (= (and b!7827909 (is-Union!20954 (regOne!42421 (regTwo!42421 (reg!21283 r2!6199))))) b!7829505))

(declare-fun b!7829509 () Bool)

(declare-fun e!4630819 () Bool)

(declare-fun tp!2314025 () Bool)

(declare-fun tp!2314024 () Bool)

(assert (=> b!7829509 (= e!4630819 (and tp!2314025 tp!2314024))))

(declare-fun b!7829506 () Bool)

(assert (=> b!7829506 (= e!4630819 tp_is_empty!52263)))

(declare-fun b!7829508 () Bool)

(declare-fun tp!2314026 () Bool)

(assert (=> b!7829508 (= e!4630819 tp!2314026)))

(assert (=> b!7827909 (= tp!2312785 e!4630819)))

(declare-fun b!7829507 () Bool)

(declare-fun tp!2314023 () Bool)

(declare-fun tp!2314027 () Bool)

(assert (=> b!7829507 (= e!4630819 (and tp!2314023 tp!2314027))))

(assert (= (and b!7827909 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (reg!21283 r2!6199))))) b!7829506))

(assert (= (and b!7827909 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (reg!21283 r2!6199))))) b!7829507))

(assert (= (and b!7827909 (is-Star!20954 (regTwo!42421 (regTwo!42421 (reg!21283 r2!6199))))) b!7829508))

(assert (= (and b!7827909 (is-Union!20954 (regTwo!42421 (regTwo!42421 (reg!21283 r2!6199))))) b!7829509))

(declare-fun b!7829513 () Bool)

(declare-fun e!4630820 () Bool)

(declare-fun tp!2314030 () Bool)

(declare-fun tp!2314029 () Bool)

(assert (=> b!7829513 (= e!4630820 (and tp!2314030 tp!2314029))))

(declare-fun b!7829510 () Bool)

(assert (=> b!7829510 (= e!4630820 tp_is_empty!52263)))

(declare-fun b!7829512 () Bool)

(declare-fun tp!2314031 () Bool)

(assert (=> b!7829512 (= e!4630820 tp!2314031)))

(assert (=> b!7827900 (= tp!2312777 e!4630820)))

(declare-fun b!7829511 () Bool)

(declare-fun tp!2314028 () Bool)

(declare-fun tp!2314032 () Bool)

(assert (=> b!7829511 (= e!4630820 (and tp!2314028 tp!2314032))))

(assert (= (and b!7827900 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829510))

(assert (= (and b!7827900 (is-Concat!29799 (reg!21283 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829511))

(assert (= (and b!7827900 (is-Star!20954 (reg!21283 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829512))

(assert (= (and b!7827900 (is-Union!20954 (reg!21283 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829513))

(declare-fun b!7829517 () Bool)

(declare-fun e!4630821 () Bool)

(declare-fun tp!2314035 () Bool)

(declare-fun tp!2314034 () Bool)

(assert (=> b!7829517 (= e!4630821 (and tp!2314035 tp!2314034))))

(declare-fun b!7829514 () Bool)

(assert (=> b!7829514 (= e!4630821 tp_is_empty!52263)))

(declare-fun b!7829516 () Bool)

(declare-fun tp!2314036 () Bool)

(assert (=> b!7829516 (= e!4630821 tp!2314036)))

(assert (=> b!7827891 (= tp!2312764 e!4630821)))

(declare-fun b!7829515 () Bool)

(declare-fun tp!2314033 () Bool)

(declare-fun tp!2314037 () Bool)

(assert (=> b!7829515 (= e!4630821 (and tp!2314033 tp!2314037))))

(assert (= (and b!7827891 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (reg!21283 r2!6199))))) b!7829514))

(assert (= (and b!7827891 (is-Concat!29799 (regOne!42420 (reg!21283 (reg!21283 r2!6199))))) b!7829515))

(assert (= (and b!7827891 (is-Star!20954 (regOne!42420 (reg!21283 (reg!21283 r2!6199))))) b!7829516))

(assert (= (and b!7827891 (is-Union!20954 (regOne!42420 (reg!21283 (reg!21283 r2!6199))))) b!7829517))

(declare-fun b!7829521 () Bool)

(declare-fun e!4630822 () Bool)

(declare-fun tp!2314040 () Bool)

(declare-fun tp!2314039 () Bool)

(assert (=> b!7829521 (= e!4630822 (and tp!2314040 tp!2314039))))

(declare-fun b!7829518 () Bool)

(assert (=> b!7829518 (= e!4630822 tp_is_empty!52263)))

(declare-fun b!7829520 () Bool)

(declare-fun tp!2314041 () Bool)

(assert (=> b!7829520 (= e!4630822 tp!2314041)))

(assert (=> b!7827891 (= tp!2312768 e!4630822)))

(declare-fun b!7829519 () Bool)

(declare-fun tp!2314038 () Bool)

(declare-fun tp!2314042 () Bool)

(assert (=> b!7829519 (= e!4630822 (and tp!2314038 tp!2314042))))

(assert (= (and b!7827891 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (reg!21283 r2!6199))))) b!7829518))

(assert (= (and b!7827891 (is-Concat!29799 (regTwo!42420 (reg!21283 (reg!21283 r2!6199))))) b!7829519))

(assert (= (and b!7827891 (is-Star!20954 (regTwo!42420 (reg!21283 (reg!21283 r2!6199))))) b!7829520))

(assert (= (and b!7827891 (is-Union!20954 (regTwo!42420 (reg!21283 (reg!21283 r2!6199))))) b!7829521))

(declare-fun b!7829525 () Bool)

(declare-fun e!4630823 () Bool)

(declare-fun tp!2314045 () Bool)

(declare-fun tp!2314044 () Bool)

(assert (=> b!7829525 (= e!4630823 (and tp!2314045 tp!2314044))))

(declare-fun b!7829522 () Bool)

(assert (=> b!7829522 (= e!4630823 tp_is_empty!52263)))

(declare-fun b!7829524 () Bool)

(declare-fun tp!2314046 () Bool)

(assert (=> b!7829524 (= e!4630823 tp!2314046)))

(assert (=> b!7827986 (= tp!2312882 e!4630823)))

(declare-fun b!7829523 () Bool)

(declare-fun tp!2314043 () Bool)

(declare-fun tp!2314047 () Bool)

(assert (=> b!7829523 (= e!4630823 (and tp!2314043 tp!2314047))))

(assert (= (and b!7827986 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829522))

(assert (= (and b!7827986 (is-Concat!29799 (regOne!42421 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829523))

(assert (= (and b!7827986 (is-Star!20954 (regOne!42421 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829524))

(assert (= (and b!7827986 (is-Union!20954 (regOne!42421 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829525))

(declare-fun b!7829529 () Bool)

(declare-fun e!4630824 () Bool)

(declare-fun tp!2314050 () Bool)

(declare-fun tp!2314049 () Bool)

(assert (=> b!7829529 (= e!4630824 (and tp!2314050 tp!2314049))))

(declare-fun b!7829526 () Bool)

(assert (=> b!7829526 (= e!4630824 tp_is_empty!52263)))

(declare-fun b!7829528 () Bool)

(declare-fun tp!2314051 () Bool)

(assert (=> b!7829528 (= e!4630824 tp!2314051)))

(assert (=> b!7827986 (= tp!2312881 e!4630824)))

(declare-fun b!7829527 () Bool)

(declare-fun tp!2314048 () Bool)

(declare-fun tp!2314052 () Bool)

(assert (=> b!7829527 (= e!4630824 (and tp!2314048 tp!2314052))))

(assert (= (and b!7827986 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829526))

(assert (= (and b!7827986 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829527))

(assert (= (and b!7827986 (is-Star!20954 (regTwo!42421 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829528))

(assert (= (and b!7827986 (is-Union!20954 (regTwo!42421 (regTwo!42420 (regTwo!42421 r1!6261))))) b!7829529))

(declare-fun b!7829533 () Bool)

(declare-fun e!4630825 () Bool)

(declare-fun tp!2314055 () Bool)

(declare-fun tp!2314054 () Bool)

(assert (=> b!7829533 (= e!4630825 (and tp!2314055 tp!2314054))))

(declare-fun b!7829530 () Bool)

(assert (=> b!7829530 (= e!4630825 tp_is_empty!52263)))

(declare-fun b!7829532 () Bool)

(declare-fun tp!2314056 () Bool)

(assert (=> b!7829532 (= e!4630825 tp!2314056)))

(assert (=> b!7827977 (= tp!2312873 e!4630825)))

(declare-fun b!7829531 () Bool)

(declare-fun tp!2314053 () Bool)

(declare-fun tp!2314057 () Bool)

(assert (=> b!7829531 (= e!4630825 (and tp!2314053 tp!2314057))))

(assert (= (and b!7827977 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829530))

(assert (= (and b!7827977 (is-Concat!29799 (reg!21283 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829531))

(assert (= (and b!7827977 (is-Star!20954 (reg!21283 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829532))

(assert (= (and b!7827977 (is-Union!20954 (reg!21283 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829533))

(declare-fun b!7829537 () Bool)

(declare-fun e!4630826 () Bool)

(declare-fun tp!2314060 () Bool)

(declare-fun tp!2314059 () Bool)

(assert (=> b!7829537 (= e!4630826 (and tp!2314060 tp!2314059))))

(declare-fun b!7829534 () Bool)

(assert (=> b!7829534 (= e!4630826 tp_is_empty!52263)))

(declare-fun b!7829536 () Bool)

(declare-fun tp!2314061 () Bool)

(assert (=> b!7829536 (= e!4630826 tp!2314061)))

(assert (=> b!7827968 (= tp!2312860 e!4630826)))

(declare-fun b!7829535 () Bool)

(declare-fun tp!2314058 () Bool)

(declare-fun tp!2314062 () Bool)

(assert (=> b!7829535 (= e!4630826 (and tp!2314058 tp!2314062))))

(assert (= (and b!7827968 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829534))

(assert (= (and b!7827968 (is-Concat!29799 (regOne!42420 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829535))

(assert (= (and b!7827968 (is-Star!20954 (regOne!42420 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829536))

(assert (= (and b!7827968 (is-Union!20954 (regOne!42420 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829537))

(declare-fun b!7829541 () Bool)

(declare-fun e!4630827 () Bool)

(declare-fun tp!2314065 () Bool)

(declare-fun tp!2314064 () Bool)

(assert (=> b!7829541 (= e!4630827 (and tp!2314065 tp!2314064))))

(declare-fun b!7829538 () Bool)

(assert (=> b!7829538 (= e!4630827 tp_is_empty!52263)))

(declare-fun b!7829540 () Bool)

(declare-fun tp!2314066 () Bool)

(assert (=> b!7829540 (= e!4630827 tp!2314066)))

(assert (=> b!7827968 (= tp!2312864 e!4630827)))

(declare-fun b!7829539 () Bool)

(declare-fun tp!2314063 () Bool)

(declare-fun tp!2314067 () Bool)

(assert (=> b!7829539 (= e!4630827 (and tp!2314063 tp!2314067))))

(assert (= (and b!7827968 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829538))

(assert (= (and b!7827968 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829539))

(assert (= (and b!7827968 (is-Star!20954 (regTwo!42420 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829540))

(assert (= (and b!7827968 (is-Union!20954 (regTwo!42420 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829541))

(declare-fun b!7829545 () Bool)

(declare-fun e!4630828 () Bool)

(declare-fun tp!2314070 () Bool)

(declare-fun tp!2314069 () Bool)

(assert (=> b!7829545 (= e!4630828 (and tp!2314070 tp!2314069))))

(declare-fun b!7829542 () Bool)

(assert (=> b!7829542 (= e!4630828 tp_is_empty!52263)))

(declare-fun b!7829544 () Bool)

(declare-fun tp!2314071 () Bool)

(assert (=> b!7829544 (= e!4630828 tp!2314071)))

(assert (=> b!7827857 (= tp!2312721 e!4630828)))

(declare-fun b!7829543 () Bool)

(declare-fun tp!2314068 () Bool)

(declare-fun tp!2314072 () Bool)

(assert (=> b!7829543 (= e!4630828 (and tp!2314068 tp!2314072))))

(assert (= (and b!7827857 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (reg!21283 r1!6261))))) b!7829542))

(assert (= (and b!7827857 (is-Concat!29799 (regOne!42421 (reg!21283 (reg!21283 r1!6261))))) b!7829543))

(assert (= (and b!7827857 (is-Star!20954 (regOne!42421 (reg!21283 (reg!21283 r1!6261))))) b!7829544))

(assert (= (and b!7827857 (is-Union!20954 (regOne!42421 (reg!21283 (reg!21283 r1!6261))))) b!7829545))

(declare-fun b!7829549 () Bool)

(declare-fun e!4630829 () Bool)

(declare-fun tp!2314075 () Bool)

(declare-fun tp!2314074 () Bool)

(assert (=> b!7829549 (= e!4630829 (and tp!2314075 tp!2314074))))

(declare-fun b!7829546 () Bool)

(assert (=> b!7829546 (= e!4630829 tp_is_empty!52263)))

(declare-fun b!7829548 () Bool)

(declare-fun tp!2314076 () Bool)

(assert (=> b!7829548 (= e!4630829 tp!2314076)))

(assert (=> b!7827857 (= tp!2312720 e!4630829)))

(declare-fun b!7829547 () Bool)

(declare-fun tp!2314073 () Bool)

(declare-fun tp!2314077 () Bool)

(assert (=> b!7829547 (= e!4630829 (and tp!2314073 tp!2314077))))

(assert (= (and b!7827857 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (reg!21283 r1!6261))))) b!7829546))

(assert (= (and b!7827857 (is-Concat!29799 (regTwo!42421 (reg!21283 (reg!21283 r1!6261))))) b!7829547))

(assert (= (and b!7827857 (is-Star!20954 (regTwo!42421 (reg!21283 (reg!21283 r1!6261))))) b!7829548))

(assert (= (and b!7827857 (is-Union!20954 (regTwo!42421 (reg!21283 (reg!21283 r1!6261))))) b!7829549))

(declare-fun b!7829553 () Bool)

(declare-fun e!4630830 () Bool)

(declare-fun tp!2314080 () Bool)

(declare-fun tp!2314079 () Bool)

(assert (=> b!7829553 (= e!4630830 (and tp!2314080 tp!2314079))))

(declare-fun b!7829550 () Bool)

(assert (=> b!7829550 (= e!4630830 tp_is_empty!52263)))

(declare-fun b!7829552 () Bool)

(declare-fun tp!2314081 () Bool)

(assert (=> b!7829552 (= e!4630830 tp!2314081)))

(assert (=> b!7827848 (= tp!2312712 e!4630830)))

(declare-fun b!7829551 () Bool)

(declare-fun tp!2314078 () Bool)

(declare-fun tp!2314082 () Bool)

(assert (=> b!7829551 (= e!4630830 (and tp!2314078 tp!2314082))))

(assert (= (and b!7827848 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829550))

(assert (= (and b!7827848 (is-Concat!29799 (reg!21283 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829551))

(assert (= (and b!7827848 (is-Star!20954 (reg!21283 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829552))

(assert (= (and b!7827848 (is-Union!20954 (reg!21283 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829553))

(declare-fun b!7829557 () Bool)

(declare-fun e!4630831 () Bool)

(declare-fun tp!2314085 () Bool)

(declare-fun tp!2314084 () Bool)

(assert (=> b!7829557 (= e!4630831 (and tp!2314085 tp!2314084))))

(declare-fun b!7829554 () Bool)

(assert (=> b!7829554 (= e!4630831 tp_is_empty!52263)))

(declare-fun b!7829556 () Bool)

(declare-fun tp!2314086 () Bool)

(assert (=> b!7829556 (= e!4630831 tp!2314086)))

(assert (=> b!7827839 (= tp!2312699 e!4630831)))

(declare-fun b!7829555 () Bool)

(declare-fun tp!2314083 () Bool)

(declare-fun tp!2314087 () Bool)

(assert (=> b!7829555 (= e!4630831 (and tp!2314083 tp!2314087))))

(assert (= (and b!7827839 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829554))

(assert (= (and b!7827839 (is-Concat!29799 (regOne!42420 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829555))

(assert (= (and b!7827839 (is-Star!20954 (regOne!42420 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829556))

(assert (= (and b!7827839 (is-Union!20954 (regOne!42420 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829557))

(declare-fun b!7829561 () Bool)

(declare-fun e!4630832 () Bool)

(declare-fun tp!2314090 () Bool)

(declare-fun tp!2314089 () Bool)

(assert (=> b!7829561 (= e!4630832 (and tp!2314090 tp!2314089))))

(declare-fun b!7829558 () Bool)

(assert (=> b!7829558 (= e!4630832 tp_is_empty!52263)))

(declare-fun b!7829560 () Bool)

(declare-fun tp!2314091 () Bool)

(assert (=> b!7829560 (= e!4630832 tp!2314091)))

(assert (=> b!7827839 (= tp!2312703 e!4630832)))

(declare-fun b!7829559 () Bool)

(declare-fun tp!2314088 () Bool)

(declare-fun tp!2314092 () Bool)

(assert (=> b!7829559 (= e!4630832 (and tp!2314088 tp!2314092))))

(assert (= (and b!7827839 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829558))

(assert (= (and b!7827839 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829559))

(assert (= (and b!7827839 (is-Star!20954 (regTwo!42420 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829560))

(assert (= (and b!7827839 (is-Union!20954 (regTwo!42420 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829561))

(declare-fun b!7829565 () Bool)

(declare-fun e!4630833 () Bool)

(declare-fun tp!2314095 () Bool)

(declare-fun tp!2314094 () Bool)

(assert (=> b!7829565 (= e!4630833 (and tp!2314095 tp!2314094))))

(declare-fun b!7829562 () Bool)

(assert (=> b!7829562 (= e!4630833 tp_is_empty!52263)))

(declare-fun b!7829564 () Bool)

(declare-fun tp!2314096 () Bool)

(assert (=> b!7829564 (= e!4630833 tp!2314096)))

(assert (=> b!7827934 (= tp!2312817 e!4630833)))

(declare-fun b!7829563 () Bool)

(declare-fun tp!2314093 () Bool)

(declare-fun tp!2314097 () Bool)

(assert (=> b!7829563 (= e!4630833 (and tp!2314093 tp!2314097))))

(assert (= (and b!7827934 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (reg!21283 r2!6199))))) b!7829562))

(assert (= (and b!7827934 (is-Concat!29799 (regOne!42421 (regOne!42420 (reg!21283 r2!6199))))) b!7829563))

(assert (= (and b!7827934 (is-Star!20954 (regOne!42421 (regOne!42420 (reg!21283 r2!6199))))) b!7829564))

(assert (= (and b!7827934 (is-Union!20954 (regOne!42421 (regOne!42420 (reg!21283 r2!6199))))) b!7829565))

(declare-fun b!7829569 () Bool)

(declare-fun e!4630834 () Bool)

(declare-fun tp!2314100 () Bool)

(declare-fun tp!2314099 () Bool)

(assert (=> b!7829569 (= e!4630834 (and tp!2314100 tp!2314099))))

(declare-fun b!7829566 () Bool)

(assert (=> b!7829566 (= e!4630834 tp_is_empty!52263)))

(declare-fun b!7829568 () Bool)

(declare-fun tp!2314101 () Bool)

(assert (=> b!7829568 (= e!4630834 tp!2314101)))

(assert (=> b!7827934 (= tp!2312816 e!4630834)))

(declare-fun b!7829567 () Bool)

(declare-fun tp!2314098 () Bool)

(declare-fun tp!2314102 () Bool)

(assert (=> b!7829567 (= e!4630834 (and tp!2314098 tp!2314102))))

(assert (= (and b!7827934 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (reg!21283 r2!6199))))) b!7829566))

(assert (= (and b!7827934 (is-Concat!29799 (regTwo!42421 (regOne!42420 (reg!21283 r2!6199))))) b!7829567))

(assert (= (and b!7827934 (is-Star!20954 (regTwo!42421 (regOne!42420 (reg!21283 r2!6199))))) b!7829568))

(assert (= (and b!7827934 (is-Union!20954 (regTwo!42421 (regOne!42420 (reg!21283 r2!6199))))) b!7829569))

(declare-fun b!7829573 () Bool)

(declare-fun e!4630835 () Bool)

(declare-fun tp!2314105 () Bool)

(declare-fun tp!2314104 () Bool)

(assert (=> b!7829573 (= e!4630835 (and tp!2314105 tp!2314104))))

(declare-fun b!7829570 () Bool)

(assert (=> b!7829570 (= e!4630835 tp_is_empty!52263)))

(declare-fun b!7829572 () Bool)

(declare-fun tp!2314106 () Bool)

(assert (=> b!7829572 (= e!4630835 tp!2314106)))

(assert (=> b!7827925 (= tp!2312808 e!4630835)))

(declare-fun b!7829571 () Bool)

(declare-fun tp!2314103 () Bool)

(declare-fun tp!2314107 () Bool)

(assert (=> b!7829571 (= e!4630835 (and tp!2314103 tp!2314107))))

(assert (= (and b!7827925 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829570))

(assert (= (and b!7827925 (is-Concat!29799 (reg!21283 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829571))

(assert (= (and b!7827925 (is-Star!20954 (reg!21283 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829572))

(assert (= (and b!7827925 (is-Union!20954 (reg!21283 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829573))

(declare-fun b!7829577 () Bool)

(declare-fun e!4630836 () Bool)

(declare-fun tp!2314110 () Bool)

(declare-fun tp!2314109 () Bool)

(assert (=> b!7829577 (= e!4630836 (and tp!2314110 tp!2314109))))

(declare-fun b!7829574 () Bool)

(assert (=> b!7829574 (= e!4630836 tp_is_empty!52263)))

(declare-fun b!7829576 () Bool)

(declare-fun tp!2314111 () Bool)

(assert (=> b!7829576 (= e!4630836 tp!2314111)))

(assert (=> b!7827948 (= tp!2312835 e!4630836)))

(declare-fun b!7829575 () Bool)

(declare-fun tp!2314108 () Bool)

(declare-fun tp!2314112 () Bool)

(assert (=> b!7829575 (= e!4630836 (and tp!2314108 tp!2314112))))

(assert (= (and b!7827948 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829574))

(assert (= (and b!7827948 (is-Concat!29799 (regOne!42420 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829575))

(assert (= (and b!7827948 (is-Star!20954 (regOne!42420 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829576))

(assert (= (and b!7827948 (is-Union!20954 (regOne!42420 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829577))

(declare-fun b!7829581 () Bool)

(declare-fun e!4630837 () Bool)

(declare-fun tp!2314115 () Bool)

(declare-fun tp!2314114 () Bool)

(assert (=> b!7829581 (= e!4630837 (and tp!2314115 tp!2314114))))

(declare-fun b!7829578 () Bool)

(assert (=> b!7829578 (= e!4630837 tp_is_empty!52263)))

(declare-fun b!7829580 () Bool)

(declare-fun tp!2314116 () Bool)

(assert (=> b!7829580 (= e!4630837 tp!2314116)))

(assert (=> b!7827948 (= tp!2312839 e!4630837)))

(declare-fun b!7829579 () Bool)

(declare-fun tp!2314113 () Bool)

(declare-fun tp!2314117 () Bool)

(assert (=> b!7829579 (= e!4630837 (and tp!2314113 tp!2314117))))

(assert (= (and b!7827948 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829578))

(assert (= (and b!7827948 (is-Concat!29799 (regTwo!42420 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829579))

(assert (= (and b!7827948 (is-Star!20954 (regTwo!42420 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829580))

(assert (= (and b!7827948 (is-Union!20954 (regTwo!42420 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829581))

(declare-fun b!7829585 () Bool)

(declare-fun e!4630838 () Bool)

(declare-fun tp!2314120 () Bool)

(declare-fun tp!2314119 () Bool)

(assert (=> b!7829585 (= e!4630838 (and tp!2314120 tp!2314119))))

(declare-fun b!7829582 () Bool)

(assert (=> b!7829582 (= e!4630838 tp_is_empty!52263)))

(declare-fun b!7829584 () Bool)

(declare-fun tp!2314121 () Bool)

(assert (=> b!7829584 (= e!4630838 tp!2314121)))

(assert (=> b!7828009 (= tp!2312910 e!4630838)))

(declare-fun b!7829583 () Bool)

(declare-fun tp!2314118 () Bool)

(declare-fun tp!2314122 () Bool)

(assert (=> b!7829583 (= e!4630838 (and tp!2314118 tp!2314122))))

(assert (= (and b!7828009 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (regOne!42420 r2!6199))))) b!7829582))

(assert (= (and b!7828009 (is-Concat!29799 (regOne!42421 (regOne!42421 (regOne!42420 r2!6199))))) b!7829583))

(assert (= (and b!7828009 (is-Star!20954 (regOne!42421 (regOne!42421 (regOne!42420 r2!6199))))) b!7829584))

(assert (= (and b!7828009 (is-Union!20954 (regOne!42421 (regOne!42421 (regOne!42420 r2!6199))))) b!7829585))

(declare-fun b!7829589 () Bool)

(declare-fun e!4630839 () Bool)

(declare-fun tp!2314125 () Bool)

(declare-fun tp!2314124 () Bool)

(assert (=> b!7829589 (= e!4630839 (and tp!2314125 tp!2314124))))

(declare-fun b!7829586 () Bool)

(assert (=> b!7829586 (= e!4630839 tp_is_empty!52263)))

(declare-fun b!7829588 () Bool)

(declare-fun tp!2314126 () Bool)

(assert (=> b!7829588 (= e!4630839 tp!2314126)))

(assert (=> b!7828009 (= tp!2312909 e!4630839)))

(declare-fun b!7829587 () Bool)

(declare-fun tp!2314123 () Bool)

(declare-fun tp!2314127 () Bool)

(assert (=> b!7829587 (= e!4630839 (and tp!2314123 tp!2314127))))

(assert (= (and b!7828009 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (regOne!42420 r2!6199))))) b!7829586))

(assert (= (and b!7828009 (is-Concat!29799 (regTwo!42421 (regOne!42421 (regOne!42420 r2!6199))))) b!7829587))

(assert (= (and b!7828009 (is-Star!20954 (regTwo!42421 (regOne!42421 (regOne!42420 r2!6199))))) b!7829588))

(assert (= (and b!7828009 (is-Union!20954 (regTwo!42421 (regOne!42421 (regOne!42420 r2!6199))))) b!7829589))

(declare-fun b!7829593 () Bool)

(declare-fun e!4630840 () Bool)

(declare-fun tp!2314130 () Bool)

(declare-fun tp!2314129 () Bool)

(assert (=> b!7829593 (= e!4630840 (and tp!2314130 tp!2314129))))

(declare-fun b!7829590 () Bool)

(assert (=> b!7829590 (= e!4630840 tp_is_empty!52263)))

(declare-fun b!7829592 () Bool)

(declare-fun tp!2314131 () Bool)

(assert (=> b!7829592 (= e!4630840 tp!2314131)))

(assert (=> b!7828000 (= tp!2312901 e!4630840)))

(declare-fun b!7829591 () Bool)

(declare-fun tp!2314128 () Bool)

(declare-fun tp!2314132 () Bool)

(assert (=> b!7829591 (= e!4630840 (and tp!2314128 tp!2314132))))

(assert (= (and b!7828000 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829590))

(assert (= (and b!7828000 (is-Concat!29799 (reg!21283 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829591))

(assert (= (and b!7828000 (is-Star!20954 (reg!21283 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829592))

(assert (= (and b!7828000 (is-Union!20954 (reg!21283 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829593))

(declare-fun b!7829597 () Bool)

(declare-fun e!4630841 () Bool)

(declare-fun tp!2314135 () Bool)

(declare-fun tp!2314134 () Bool)

(assert (=> b!7829597 (= e!4630841 (and tp!2314135 tp!2314134))))

(declare-fun b!7829594 () Bool)

(assert (=> b!7829594 (= e!4630841 tp_is_empty!52263)))

(declare-fun b!7829596 () Bool)

(declare-fun tp!2314136 () Bool)

(assert (=> b!7829596 (= e!4630841 tp!2314136)))

(assert (=> b!7827889 (= tp!2312761 e!4630841)))

(declare-fun b!7829595 () Bool)

(declare-fun tp!2314133 () Bool)

(declare-fun tp!2314137 () Bool)

(assert (=> b!7829595 (= e!4630841 (and tp!2314133 tp!2314137))))

(assert (= (and b!7827889 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829594))

(assert (= (and b!7827889 (is-Concat!29799 (regOne!42421 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829595))

(assert (= (and b!7827889 (is-Star!20954 (regOne!42421 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829596))

(assert (= (and b!7827889 (is-Union!20954 (regOne!42421 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829597))

(declare-fun b!7829601 () Bool)

(declare-fun e!4630842 () Bool)

(declare-fun tp!2314140 () Bool)

(declare-fun tp!2314139 () Bool)

(assert (=> b!7829601 (= e!4630842 (and tp!2314140 tp!2314139))))

(declare-fun b!7829598 () Bool)

(assert (=> b!7829598 (= e!4630842 tp_is_empty!52263)))

(declare-fun b!7829600 () Bool)

(declare-fun tp!2314141 () Bool)

(assert (=> b!7829600 (= e!4630842 tp!2314141)))

(assert (=> b!7827889 (= tp!2312760 e!4630842)))

(declare-fun b!7829599 () Bool)

(declare-fun tp!2314138 () Bool)

(declare-fun tp!2314142 () Bool)

(assert (=> b!7829599 (= e!4630842 (and tp!2314138 tp!2314142))))

(assert (= (and b!7827889 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829598))

(assert (= (and b!7827889 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829599))

(assert (= (and b!7827889 (is-Star!20954 (regTwo!42421 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829600))

(assert (= (and b!7827889 (is-Union!20954 (regTwo!42421 (regTwo!42420 (regOne!42421 r1!6261))))) b!7829601))

(declare-fun b!7829602 () Bool)

(declare-fun e!4630843 () Bool)

(declare-fun tp!2314143 () Bool)

(assert (=> b!7829602 (= e!4630843 (and tp_is_empty!52263 tp!2314143))))

(assert (=> b!7827991 (= tp!2312890 e!4630843)))

(assert (= (and b!7827991 (is-Cons!73667 (t!388526 (t!388526 (t!388526 s2Rec!453))))) b!7829602))

(declare-fun b!7829606 () Bool)

(declare-fun e!4630844 () Bool)

(declare-fun tp!2314146 () Bool)

(declare-fun tp!2314145 () Bool)

(assert (=> b!7829606 (= e!4630844 (and tp!2314146 tp!2314145))))

(declare-fun b!7829603 () Bool)

(assert (=> b!7829603 (= e!4630844 tp_is_empty!52263)))

(declare-fun b!7829605 () Bool)

(declare-fun tp!2314147 () Bool)

(assert (=> b!7829605 (= e!4630844 tp!2314147)))

(assert (=> b!7827880 (= tp!2312752 e!4630844)))

(declare-fun b!7829604 () Bool)

(declare-fun tp!2314144 () Bool)

(declare-fun tp!2314148 () Bool)

(assert (=> b!7829604 (= e!4630844 (and tp!2314144 tp!2314148))))

(assert (= (and b!7827880 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (reg!21283 r1!6261))))) b!7829603))

(assert (= (and b!7827880 (is-Concat!29799 (reg!21283 (regTwo!42420 (reg!21283 r1!6261))))) b!7829604))

(assert (= (and b!7827880 (is-Star!20954 (reg!21283 (regTwo!42420 (reg!21283 r1!6261))))) b!7829605))

(assert (= (and b!7827880 (is-Union!20954 (reg!21283 (regTwo!42420 (reg!21283 r1!6261))))) b!7829606))

(declare-fun b!7829610 () Bool)

(declare-fun e!4630845 () Bool)

(declare-fun tp!2314151 () Bool)

(declare-fun tp!2314150 () Bool)

(assert (=> b!7829610 (= e!4630845 (and tp!2314151 tp!2314150))))

(declare-fun b!7829607 () Bool)

(assert (=> b!7829607 (= e!4630845 tp_is_empty!52263)))

(declare-fun b!7829609 () Bool)

(declare-fun tp!2314152 () Bool)

(assert (=> b!7829609 (= e!4630845 tp!2314152)))

(assert (=> b!7827871 (= tp!2312739 e!4630845)))

(declare-fun b!7829608 () Bool)

(declare-fun tp!2314149 () Bool)

(declare-fun tp!2314153 () Bool)

(assert (=> b!7829608 (= e!4630845 (and tp!2314149 tp!2314153))))

(assert (= (and b!7827871 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (regOne!42420 r2!6199))))) b!7829607))

(assert (= (and b!7827871 (is-Concat!29799 (regOne!42420 (reg!21283 (regOne!42420 r2!6199))))) b!7829608))

(assert (= (and b!7827871 (is-Star!20954 (regOne!42420 (reg!21283 (regOne!42420 r2!6199))))) b!7829609))

(assert (= (and b!7827871 (is-Union!20954 (regOne!42420 (reg!21283 (regOne!42420 r2!6199))))) b!7829610))

(declare-fun b!7829614 () Bool)

(declare-fun e!4630846 () Bool)

(declare-fun tp!2314156 () Bool)

(declare-fun tp!2314155 () Bool)

(assert (=> b!7829614 (= e!4630846 (and tp!2314156 tp!2314155))))

(declare-fun b!7829611 () Bool)

(assert (=> b!7829611 (= e!4630846 tp_is_empty!52263)))

(declare-fun b!7829613 () Bool)

(declare-fun tp!2314157 () Bool)

(assert (=> b!7829613 (= e!4630846 tp!2314157)))

(assert (=> b!7827871 (= tp!2312743 e!4630846)))

(declare-fun b!7829612 () Bool)

(declare-fun tp!2314154 () Bool)

(declare-fun tp!2314158 () Bool)

(assert (=> b!7829612 (= e!4630846 (and tp!2314154 tp!2314158))))

(assert (= (and b!7827871 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (regOne!42420 r2!6199))))) b!7829611))

(assert (= (and b!7827871 (is-Concat!29799 (regTwo!42420 (reg!21283 (regOne!42420 r2!6199))))) b!7829612))

(assert (= (and b!7827871 (is-Star!20954 (regTwo!42420 (reg!21283 (regOne!42420 r2!6199))))) b!7829613))

(assert (= (and b!7827871 (is-Union!20954 (regTwo!42420 (reg!21283 (regOne!42420 r2!6199))))) b!7829614))

(declare-fun b!7829618 () Bool)

(declare-fun e!4630847 () Bool)

(declare-fun tp!2314161 () Bool)

(declare-fun tp!2314160 () Bool)

(assert (=> b!7829618 (= e!4630847 (and tp!2314161 tp!2314160))))

(declare-fun b!7829615 () Bool)

(assert (=> b!7829615 (= e!4630847 tp_is_empty!52263)))

(declare-fun b!7829617 () Bool)

(declare-fun tp!2314162 () Bool)

(assert (=> b!7829617 (= e!4630847 tp!2314162)))

(assert (=> b!7827966 (= tp!2312857 e!4630847)))

(declare-fun b!7829616 () Bool)

(declare-fun tp!2314159 () Bool)

(declare-fun tp!2314163 () Bool)

(assert (=> b!7829616 (= e!4630847 (and tp!2314159 tp!2314163))))

(assert (= (and b!7827966 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829615))

(assert (= (and b!7827966 (is-Concat!29799 (regOne!42421 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829616))

(assert (= (and b!7827966 (is-Star!20954 (regOne!42421 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829617))

(assert (= (and b!7827966 (is-Union!20954 (regOne!42421 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829618))

(declare-fun b!7829622 () Bool)

(declare-fun e!4630848 () Bool)

(declare-fun tp!2314166 () Bool)

(declare-fun tp!2314165 () Bool)

(assert (=> b!7829622 (= e!4630848 (and tp!2314166 tp!2314165))))

(declare-fun b!7829619 () Bool)

(assert (=> b!7829619 (= e!4630848 tp_is_empty!52263)))

(declare-fun b!7829621 () Bool)

(declare-fun tp!2314167 () Bool)

(assert (=> b!7829621 (= e!4630848 tp!2314167)))

(assert (=> b!7827966 (= tp!2312856 e!4630848)))

(declare-fun b!7829620 () Bool)

(declare-fun tp!2314164 () Bool)

(declare-fun tp!2314168 () Bool)

(assert (=> b!7829620 (= e!4630848 (and tp!2314164 tp!2314168))))

(assert (= (and b!7827966 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829619))

(assert (= (and b!7827966 (is-Concat!29799 (regTwo!42421 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829620))

(assert (= (and b!7827966 (is-Star!20954 (regTwo!42421 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829621))

(assert (= (and b!7827966 (is-Union!20954 (regTwo!42421 (regOne!42421 (regTwo!42420 r2!6199))))) b!7829622))

(declare-fun b!7829626 () Bool)

(declare-fun e!4630849 () Bool)

(declare-fun tp!2314171 () Bool)

(declare-fun tp!2314170 () Bool)

(assert (=> b!7829626 (= e!4630849 (and tp!2314171 tp!2314170))))

(declare-fun b!7829623 () Bool)

(assert (=> b!7829623 (= e!4630849 tp_is_empty!52263)))

(declare-fun b!7829625 () Bool)

(declare-fun tp!2314172 () Bool)

(assert (=> b!7829625 (= e!4630849 tp!2314172)))

(assert (=> b!7827957 (= tp!2312848 e!4630849)))

(declare-fun b!7829624 () Bool)

(declare-fun tp!2314169 () Bool)

(declare-fun tp!2314173 () Bool)

(assert (=> b!7829624 (= e!4630849 (and tp!2314169 tp!2314173))))

(assert (= (and b!7827957 (is-ElementMatch!20954 (reg!21283 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829623))

(assert (= (and b!7827957 (is-Concat!29799 (reg!21283 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829624))

(assert (= (and b!7827957 (is-Star!20954 (reg!21283 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829625))

(assert (= (and b!7827957 (is-Union!20954 (reg!21283 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829626))

(declare-fun b!7829630 () Bool)

(declare-fun e!4630850 () Bool)

(declare-fun tp!2314176 () Bool)

(declare-fun tp!2314175 () Bool)

(assert (=> b!7829630 (= e!4630850 (and tp!2314176 tp!2314175))))

(declare-fun b!7829627 () Bool)

(assert (=> b!7829627 (= e!4630850 tp_is_empty!52263)))

(declare-fun b!7829629 () Bool)

(declare-fun tp!2314177 () Bool)

(assert (=> b!7829629 (= e!4630850 tp!2314177)))

(assert (=> b!7827980 (= tp!2312875 e!4630850)))

(declare-fun b!7829628 () Bool)

(declare-fun tp!2314174 () Bool)

(declare-fun tp!2314178 () Bool)

(assert (=> b!7829628 (= e!4630850 (and tp!2314174 tp!2314178))))

(assert (= (and b!7827980 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829627))

(assert (= (and b!7827980 (is-Concat!29799 (regOne!42420 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829628))

(assert (= (and b!7827980 (is-Star!20954 (regOne!42420 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829629))

(assert (= (and b!7827980 (is-Union!20954 (regOne!42420 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829630))

(declare-fun b!7829634 () Bool)

(declare-fun e!4630851 () Bool)

(declare-fun tp!2314181 () Bool)

(declare-fun tp!2314180 () Bool)

(assert (=> b!7829634 (= e!4630851 (and tp!2314181 tp!2314180))))

(declare-fun b!7829631 () Bool)

(assert (=> b!7829631 (= e!4630851 tp_is_empty!52263)))

(declare-fun b!7829633 () Bool)

(declare-fun tp!2314182 () Bool)

(assert (=> b!7829633 (= e!4630851 tp!2314182)))

(assert (=> b!7827980 (= tp!2312879 e!4630851)))

(declare-fun b!7829632 () Bool)

(declare-fun tp!2314179 () Bool)

(declare-fun tp!2314183 () Bool)

(assert (=> b!7829632 (= e!4630851 (and tp!2314179 tp!2314183))))

(assert (= (and b!7827980 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829631))

(assert (= (and b!7827980 (is-Concat!29799 (regTwo!42420 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829632))

(assert (= (and b!7827980 (is-Star!20954 (regTwo!42420 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829633))

(assert (= (and b!7827980 (is-Union!20954 (regTwo!42420 (regOne!42420 (regTwo!42421 r1!6261))))) b!7829634))

(declare-fun b!7829638 () Bool)

(declare-fun e!4630852 () Bool)

(declare-fun tp!2314186 () Bool)

(declare-fun tp!2314185 () Bool)

(assert (=> b!7829638 (= e!4630852 (and tp!2314186 tp!2314185))))

(declare-fun b!7829635 () Bool)

(assert (=> b!7829635 (= e!4630852 tp_is_empty!52263)))

(declare-fun b!7829637 () Bool)

(declare-fun tp!2314187 () Bool)

(assert (=> b!7829637 (= e!4630852 tp!2314187)))

(assert (=> b!7827837 (= tp!2312696 e!4630852)))

(declare-fun b!7829636 () Bool)

(declare-fun tp!2314184 () Bool)

(declare-fun tp!2314188 () Bool)

(assert (=> b!7829636 (= e!4630852 (and tp!2314184 tp!2314188))))

(assert (= (and b!7827837 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829635))

(assert (= (and b!7827837 (is-Concat!29799 (regOne!42421 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829636))

(assert (= (and b!7827837 (is-Star!20954 (regOne!42421 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829637))

(assert (= (and b!7827837 (is-Union!20954 (regOne!42421 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829638))

(declare-fun b!7829642 () Bool)

(declare-fun e!4630853 () Bool)

(declare-fun tp!2314191 () Bool)

(declare-fun tp!2314190 () Bool)

(assert (=> b!7829642 (= e!4630853 (and tp!2314191 tp!2314190))))

(declare-fun b!7829639 () Bool)

(assert (=> b!7829639 (= e!4630853 tp_is_empty!52263)))

(declare-fun b!7829641 () Bool)

(declare-fun tp!2314192 () Bool)

(assert (=> b!7829641 (= e!4630853 tp!2314192)))

(assert (=> b!7827837 (= tp!2312695 e!4630853)))

(declare-fun b!7829640 () Bool)

(declare-fun tp!2314189 () Bool)

(declare-fun tp!2314193 () Bool)

(assert (=> b!7829640 (= e!4630853 (and tp!2314189 tp!2314193))))

(assert (= (and b!7827837 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829639))

(assert (= (and b!7827837 (is-Concat!29799 (regTwo!42421 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829640))

(assert (= (and b!7827837 (is-Star!20954 (regTwo!42421 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829641))

(assert (= (and b!7827837 (is-Union!20954 (regTwo!42421 (regOne!42420 (regTwo!42421 r2!6199))))) b!7829642))

(declare-fun b!7829646 () Bool)

(declare-fun e!4630854 () Bool)

(declare-fun tp!2314196 () Bool)

(declare-fun tp!2314195 () Bool)

(assert (=> b!7829646 (= e!4630854 (and tp!2314196 tp!2314195))))

(declare-fun b!7829643 () Bool)

(assert (=> b!7829643 (= e!4630854 tp_is_empty!52263)))

(declare-fun b!7829645 () Bool)

(declare-fun tp!2314197 () Bool)

(assert (=> b!7829645 (= e!4630854 tp!2314197)))

(assert (=> b!7827828 (= tp!2312687 e!4630854)))

(declare-fun b!7829644 () Bool)

(declare-fun tp!2314194 () Bool)

(declare-fun tp!2314198 () Bool)

(assert (=> b!7829644 (= e!4630854 (and tp!2314194 tp!2314198))))

(assert (= (and b!7827828 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (regOne!42420 r2!6199))))) b!7829643))

(assert (= (and b!7827828 (is-Concat!29799 (reg!21283 (regOne!42420 (regOne!42420 r2!6199))))) b!7829644))

(assert (= (and b!7827828 (is-Star!20954 (reg!21283 (regOne!42420 (regOne!42420 r2!6199))))) b!7829645))

(assert (= (and b!7827828 (is-Union!20954 (reg!21283 (regOne!42420 (regOne!42420 r2!6199))))) b!7829646))

(declare-fun b!7829650 () Bool)

(declare-fun e!4630855 () Bool)

(declare-fun tp!2314201 () Bool)

(declare-fun tp!2314200 () Bool)

(assert (=> b!7829650 (= e!4630855 (and tp!2314201 tp!2314200))))

(declare-fun b!7829647 () Bool)

(assert (=> b!7829647 (= e!4630855 tp_is_empty!52263)))

(declare-fun b!7829649 () Bool)

(declare-fun tp!2314202 () Bool)

(assert (=> b!7829649 (= e!4630855 tp!2314202)))

(assert (=> b!7828023 (= tp!2312928 e!4630855)))

(declare-fun b!7829648 () Bool)

(declare-fun tp!2314199 () Bool)

(declare-fun tp!2314203 () Bool)

(assert (=> b!7829648 (= e!4630855 (and tp!2314199 tp!2314203))))

(assert (= (and b!7828023 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829647))

(assert (= (and b!7828023 (is-Concat!29799 (regOne!42420 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829648))

(assert (= (and b!7828023 (is-Star!20954 (regOne!42420 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829649))

(assert (= (and b!7828023 (is-Union!20954 (regOne!42420 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829650))

(declare-fun b!7829654 () Bool)

(declare-fun e!4630856 () Bool)

(declare-fun tp!2314206 () Bool)

(declare-fun tp!2314205 () Bool)

(assert (=> b!7829654 (= e!4630856 (and tp!2314206 tp!2314205))))

(declare-fun b!7829651 () Bool)

(assert (=> b!7829651 (= e!4630856 tp_is_empty!52263)))

(declare-fun b!7829653 () Bool)

(declare-fun tp!2314207 () Bool)

(assert (=> b!7829653 (= e!4630856 tp!2314207)))

(assert (=> b!7828023 (= tp!2312932 e!4630856)))

(declare-fun b!7829652 () Bool)

(declare-fun tp!2314204 () Bool)

(declare-fun tp!2314208 () Bool)

(assert (=> b!7829652 (= e!4630856 (and tp!2314204 tp!2314208))))

(assert (= (and b!7828023 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829651))

(assert (= (and b!7828023 (is-Concat!29799 (regTwo!42420 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829652))

(assert (= (and b!7828023 (is-Star!20954 (regTwo!42420 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829653))

(assert (= (and b!7828023 (is-Union!20954 (regTwo!42420 (regOne!42421 (regTwo!42420 r1!6261))))) b!7829654))

(declare-fun b!7829658 () Bool)

(declare-fun e!4630857 () Bool)

(declare-fun tp!2314211 () Bool)

(declare-fun tp!2314210 () Bool)

(assert (=> b!7829658 (= e!4630857 (and tp!2314211 tp!2314210))))

(declare-fun b!7829655 () Bool)

(assert (=> b!7829655 (= e!4630857 tp_is_empty!52263)))

(declare-fun b!7829657 () Bool)

(declare-fun tp!2314212 () Bool)

(assert (=> b!7829657 (= e!4630857 tp!2314212)))

(assert (=> b!7827946 (= tp!2312832 e!4630857)))

(declare-fun b!7829656 () Bool)

(declare-fun tp!2314209 () Bool)

(declare-fun tp!2314213 () Bool)

(assert (=> b!7829656 (= e!4630857 (and tp!2314209 tp!2314213))))

(assert (= (and b!7827946 (is-ElementMatch!20954 (regOne!42421 (reg!21283 (regTwo!42420 r2!6199))))) b!7829655))

(assert (= (and b!7827946 (is-Concat!29799 (regOne!42421 (reg!21283 (regTwo!42420 r2!6199))))) b!7829656))

(assert (= (and b!7827946 (is-Star!20954 (regOne!42421 (reg!21283 (regTwo!42420 r2!6199))))) b!7829657))

(assert (= (and b!7827946 (is-Union!20954 (regOne!42421 (reg!21283 (regTwo!42420 r2!6199))))) b!7829658))

(declare-fun b!7829662 () Bool)

(declare-fun e!4630858 () Bool)

(declare-fun tp!2314216 () Bool)

(declare-fun tp!2314215 () Bool)

(assert (=> b!7829662 (= e!4630858 (and tp!2314216 tp!2314215))))

(declare-fun b!7829659 () Bool)

(assert (=> b!7829659 (= e!4630858 tp_is_empty!52263)))

(declare-fun b!7829661 () Bool)

(declare-fun tp!2314217 () Bool)

(assert (=> b!7829661 (= e!4630858 tp!2314217)))

(assert (=> b!7827946 (= tp!2312831 e!4630858)))

(declare-fun b!7829660 () Bool)

(declare-fun tp!2314214 () Bool)

(declare-fun tp!2314218 () Bool)

(assert (=> b!7829660 (= e!4630858 (and tp!2314214 tp!2314218))))

(assert (= (and b!7827946 (is-ElementMatch!20954 (regTwo!42421 (reg!21283 (regTwo!42420 r2!6199))))) b!7829659))

(assert (= (and b!7827946 (is-Concat!29799 (regTwo!42421 (reg!21283 (regTwo!42420 r2!6199))))) b!7829660))

(assert (= (and b!7827946 (is-Star!20954 (regTwo!42421 (reg!21283 (regTwo!42420 r2!6199))))) b!7829661))

(assert (= (and b!7827946 (is-Union!20954 (regTwo!42421 (reg!21283 (regTwo!42420 r2!6199))))) b!7829662))

(declare-fun b!7829666 () Bool)

(declare-fun e!4630859 () Bool)

(declare-fun tp!2314221 () Bool)

(declare-fun tp!2314220 () Bool)

(assert (=> b!7829666 (= e!4630859 (and tp!2314221 tp!2314220))))

(declare-fun b!7829663 () Bool)

(assert (=> b!7829663 (= e!4630859 tp_is_empty!52263)))

(declare-fun b!7829665 () Bool)

(declare-fun tp!2314222 () Bool)

(assert (=> b!7829665 (= e!4630859 tp!2314222)))

(assert (=> b!7827937 (= tp!2312823 e!4630859)))

(declare-fun b!7829664 () Bool)

(declare-fun tp!2314219 () Bool)

(declare-fun tp!2314223 () Bool)

(assert (=> b!7829664 (= e!4630859 (and tp!2314219 tp!2314223))))

(assert (= (and b!7827937 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (reg!21283 r2!6199))))) b!7829663))

(assert (= (and b!7827937 (is-Concat!29799 (reg!21283 (regTwo!42420 (reg!21283 r2!6199))))) b!7829664))

(assert (= (and b!7827937 (is-Star!20954 (reg!21283 (regTwo!42420 (reg!21283 r2!6199))))) b!7829665))

(assert (= (and b!7827937 (is-Union!20954 (reg!21283 (regTwo!42420 (reg!21283 r2!6199))))) b!7829666))

(declare-fun b!7829670 () Bool)

(declare-fun e!4630860 () Bool)

(declare-fun tp!2314226 () Bool)

(declare-fun tp!2314225 () Bool)

(assert (=> b!7829670 (= e!4630860 (and tp!2314226 tp!2314225))))

(declare-fun b!7829667 () Bool)

(assert (=> b!7829667 (= e!4630860 tp_is_empty!52263)))

(declare-fun b!7829669 () Bool)

(declare-fun tp!2314227 () Bool)

(assert (=> b!7829669 (= e!4630860 tp!2314227)))

(assert (=> b!7827928 (= tp!2312810 e!4630860)))

(declare-fun b!7829668 () Bool)

(declare-fun tp!2314224 () Bool)

(declare-fun tp!2314228 () Bool)

(assert (=> b!7829668 (= e!4630860 (and tp!2314224 tp!2314228))))

(assert (= (and b!7827928 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (regOne!42421 r2!6199))))) b!7829667))

(assert (= (and b!7827928 (is-Concat!29799 (regOne!42420 (reg!21283 (regOne!42421 r2!6199))))) b!7829668))

(assert (= (and b!7827928 (is-Star!20954 (regOne!42420 (reg!21283 (regOne!42421 r2!6199))))) b!7829669))

(assert (= (and b!7827928 (is-Union!20954 (regOne!42420 (reg!21283 (regOne!42421 r2!6199))))) b!7829670))

(declare-fun b!7829674 () Bool)

(declare-fun e!4630861 () Bool)

(declare-fun tp!2314231 () Bool)

(declare-fun tp!2314230 () Bool)

(assert (=> b!7829674 (= e!4630861 (and tp!2314231 tp!2314230))))

(declare-fun b!7829671 () Bool)

(assert (=> b!7829671 (= e!4630861 tp_is_empty!52263)))

(declare-fun b!7829673 () Bool)

(declare-fun tp!2314232 () Bool)

(assert (=> b!7829673 (= e!4630861 tp!2314232)))

(assert (=> b!7827928 (= tp!2312814 e!4630861)))

(declare-fun b!7829672 () Bool)

(declare-fun tp!2314229 () Bool)

(declare-fun tp!2314233 () Bool)

(assert (=> b!7829672 (= e!4630861 (and tp!2314229 tp!2314233))))

(assert (= (and b!7827928 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (regOne!42421 r2!6199))))) b!7829671))

(assert (= (and b!7827928 (is-Concat!29799 (regTwo!42420 (reg!21283 (regOne!42421 r2!6199))))) b!7829672))

(assert (= (and b!7827928 (is-Star!20954 (regTwo!42420 (reg!21283 (regOne!42421 r2!6199))))) b!7829673))

(assert (= (and b!7827928 (is-Union!20954 (regTwo!42420 (reg!21283 (regOne!42421 r2!6199))))) b!7829674))

(declare-fun b!7829678 () Bool)

(declare-fun e!4630862 () Bool)

(declare-fun tp!2314236 () Bool)

(declare-fun tp!2314235 () Bool)

(assert (=> b!7829678 (= e!4630862 (and tp!2314236 tp!2314235))))

(declare-fun b!7829675 () Bool)

(assert (=> b!7829675 (= e!4630862 tp_is_empty!52263)))

(declare-fun b!7829677 () Bool)

(declare-fun tp!2314237 () Bool)

(assert (=> b!7829677 (= e!4630862 tp!2314237)))

(assert (=> b!7827912 (= tp!2312792 e!4630862)))

(declare-fun b!7829676 () Bool)

(declare-fun tp!2314234 () Bool)

(declare-fun tp!2314238 () Bool)

(assert (=> b!7829676 (= e!4630862 (and tp!2314234 tp!2314238))))

(assert (= (and b!7827912 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (regOne!42420 r1!6261))))) b!7829675))

(assert (= (and b!7827912 (is-Concat!29799 (reg!21283 (regOne!42420 (regOne!42420 r1!6261))))) b!7829676))

(assert (= (and b!7827912 (is-Star!20954 (reg!21283 (regOne!42420 (regOne!42420 r1!6261))))) b!7829677))

(assert (= (and b!7827912 (is-Union!20954 (reg!21283 (regOne!42420 (regOne!42420 r1!6261))))) b!7829678))

(declare-fun b!7829682 () Bool)

(declare-fun e!4630863 () Bool)

(declare-fun tp!2314241 () Bool)

(declare-fun tp!2314240 () Bool)

(assert (=> b!7829682 (= e!4630863 (and tp!2314241 tp!2314240))))

(declare-fun b!7829679 () Bool)

(assert (=> b!7829679 (= e!4630863 tp_is_empty!52263)))

(declare-fun b!7829681 () Bool)

(declare-fun tp!2314242 () Bool)

(assert (=> b!7829681 (= e!4630863 tp!2314242)))

(assert (=> b!7827903 (= tp!2312779 e!4630863)))

(declare-fun b!7829680 () Bool)

(declare-fun tp!2314239 () Bool)

(declare-fun tp!2314243 () Bool)

(assert (=> b!7829680 (= e!4630863 (and tp!2314239 tp!2314243))))

(assert (= (and b!7827903 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (reg!21283 r2!6199))))) b!7829679))

(assert (= (and b!7827903 (is-Concat!29799 (regOne!42420 (regOne!42421 (reg!21283 r2!6199))))) b!7829680))

(assert (= (and b!7827903 (is-Star!20954 (regOne!42420 (regOne!42421 (reg!21283 r2!6199))))) b!7829681))

(assert (= (and b!7827903 (is-Union!20954 (regOne!42420 (regOne!42421 (reg!21283 r2!6199))))) b!7829682))

(declare-fun b!7829686 () Bool)

(declare-fun e!4630864 () Bool)

(declare-fun tp!2314246 () Bool)

(declare-fun tp!2314245 () Bool)

(assert (=> b!7829686 (= e!4630864 (and tp!2314246 tp!2314245))))

(declare-fun b!7829683 () Bool)

(assert (=> b!7829683 (= e!4630864 tp_is_empty!52263)))

(declare-fun b!7829685 () Bool)

(declare-fun tp!2314247 () Bool)

(assert (=> b!7829685 (= e!4630864 tp!2314247)))

(assert (=> b!7827903 (= tp!2312783 e!4630864)))

(declare-fun b!7829684 () Bool)

(declare-fun tp!2314244 () Bool)

(declare-fun tp!2314248 () Bool)

(assert (=> b!7829684 (= e!4630864 (and tp!2314244 tp!2314248))))

(assert (= (and b!7827903 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (reg!21283 r2!6199))))) b!7829683))

(assert (= (and b!7827903 (is-Concat!29799 (regTwo!42420 (regOne!42421 (reg!21283 r2!6199))))) b!7829684))

(assert (= (and b!7827903 (is-Star!20954 (regTwo!42420 (regOne!42421 (reg!21283 r2!6199))))) b!7829685))

(assert (= (and b!7827903 (is-Union!20954 (regTwo!42420 (regOne!42421 (reg!21283 r2!6199))))) b!7829686))

(declare-fun b!7829690 () Bool)

(declare-fun e!4630865 () Bool)

(declare-fun tp!2314251 () Bool)

(declare-fun tp!2314250 () Bool)

(assert (=> b!7829690 (= e!4630865 (and tp!2314251 tp!2314250))))

(declare-fun b!7829687 () Bool)

(assert (=> b!7829687 (= e!4630865 tp_is_empty!52263)))

(declare-fun b!7829689 () Bool)

(declare-fun tp!2314252 () Bool)

(assert (=> b!7829689 (= e!4630865 tp!2314252)))

(assert (=> b!7827989 (= tp!2312888 e!4630865)))

(declare-fun b!7829688 () Bool)

(declare-fun tp!2314249 () Bool)

(declare-fun tp!2314253 () Bool)

(assert (=> b!7829688 (= e!4630865 (and tp!2314249 tp!2314253))))

(assert (= (and b!7827989 (is-ElementMatch!20954 (reg!21283 (reg!21283 (regTwo!42421 r1!6261))))) b!7829687))

(assert (= (and b!7827989 (is-Concat!29799 (reg!21283 (reg!21283 (regTwo!42421 r1!6261))))) b!7829688))

(assert (= (and b!7827989 (is-Star!20954 (reg!21283 (reg!21283 (regTwo!42421 r1!6261))))) b!7829689))

(assert (= (and b!7827989 (is-Union!20954 (reg!21283 (reg!21283 (regTwo!42421 r1!6261))))) b!7829690))

(declare-fun b!7829694 () Bool)

(declare-fun e!4630866 () Bool)

(declare-fun tp!2314256 () Bool)

(declare-fun tp!2314255 () Bool)

(assert (=> b!7829694 (= e!4630866 (and tp!2314256 tp!2314255))))

(declare-fun b!7829691 () Bool)

(assert (=> b!7829691 (= e!4630866 tp_is_empty!52263)))

(declare-fun b!7829693 () Bool)

(declare-fun tp!2314257 () Bool)

(assert (=> b!7829693 (= e!4630866 tp!2314257)))

(assert (=> b!7828012 (= tp!2312916 e!4630866)))

(declare-fun b!7829692 () Bool)

(declare-fun tp!2314254 () Bool)

(declare-fun tp!2314258 () Bool)

(assert (=> b!7829692 (= e!4630866 (and tp!2314254 tp!2314258))))

(assert (= (and b!7828012 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829691))

(assert (= (and b!7828012 (is-Concat!29799 (reg!21283 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829692))

(assert (= (and b!7828012 (is-Star!20954 (reg!21283 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829693))

(assert (= (and b!7828012 (is-Union!20954 (reg!21283 (regTwo!42421 (regOne!42420 r2!6199))))) b!7829694))

(declare-fun b!7829698 () Bool)

(declare-fun e!4630867 () Bool)

(declare-fun tp!2314261 () Bool)

(declare-fun tp!2314260 () Bool)

(assert (=> b!7829698 (= e!4630867 (and tp!2314261 tp!2314260))))

(declare-fun b!7829695 () Bool)

(assert (=> b!7829695 (= e!4630867 tp_is_empty!52263)))

(declare-fun b!7829697 () Bool)

(declare-fun tp!2314262 () Bool)

(assert (=> b!7829697 (= e!4630867 tp!2314262)))

(assert (=> b!7828003 (= tp!2312903 e!4630867)))

(declare-fun b!7829696 () Bool)

(declare-fun tp!2314259 () Bool)

(declare-fun tp!2314263 () Bool)

(assert (=> b!7829696 (= e!4630867 (and tp!2314259 tp!2314263))))

(assert (= (and b!7828003 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829695))

(assert (= (and b!7828003 (is-Concat!29799 (regOne!42420 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829696))

(assert (= (and b!7828003 (is-Star!20954 (regOne!42420 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829697))

(assert (= (and b!7828003 (is-Union!20954 (regOne!42420 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829698))

(declare-fun b!7829702 () Bool)

(declare-fun e!4630868 () Bool)

(declare-fun tp!2314266 () Bool)

(declare-fun tp!2314265 () Bool)

(assert (=> b!7829702 (= e!4630868 (and tp!2314266 tp!2314265))))

(declare-fun b!7829699 () Bool)

(assert (=> b!7829699 (= e!4630868 tp_is_empty!52263)))

(declare-fun b!7829701 () Bool)

(declare-fun tp!2314267 () Bool)

(assert (=> b!7829701 (= e!4630868 tp!2314267)))

(assert (=> b!7828003 (= tp!2312907 e!4630868)))

(declare-fun b!7829700 () Bool)

(declare-fun tp!2314264 () Bool)

(declare-fun tp!2314268 () Bool)

(assert (=> b!7829700 (= e!4630868 (and tp!2314264 tp!2314268))))

(assert (= (and b!7828003 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829699))

(assert (= (and b!7828003 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829700))

(assert (= (and b!7828003 (is-Star!20954 (regTwo!42420 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829701))

(assert (= (and b!7828003 (is-Union!20954 (regTwo!42420 (regTwo!42420 (regTwo!42420 r1!6261))))) b!7829702))

(declare-fun b!7829706 () Bool)

(declare-fun e!4630869 () Bool)

(declare-fun tp!2314271 () Bool)

(declare-fun tp!2314270 () Bool)

(assert (=> b!7829706 (= e!4630869 (and tp!2314271 tp!2314270))))

(declare-fun b!7829703 () Bool)

(assert (=> b!7829703 (= e!4630869 tp_is_empty!52263)))

(declare-fun b!7829705 () Bool)

(declare-fun tp!2314272 () Bool)

(assert (=> b!7829705 (= e!4630869 tp!2314272)))

(assert (=> b!7827869 (= tp!2312736 e!4630869)))

(declare-fun b!7829704 () Bool)

(declare-fun tp!2314269 () Bool)

(declare-fun tp!2314273 () Bool)

(assert (=> b!7829704 (= e!4630869 (and tp!2314269 tp!2314273))))

(assert (= (and b!7827869 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (reg!21283 r1!6261))))) b!7829703))

(assert (= (and b!7827869 (is-Concat!29799 (regOne!42421 (regTwo!42421 (reg!21283 r1!6261))))) b!7829704))

(assert (= (and b!7827869 (is-Star!20954 (regOne!42421 (regTwo!42421 (reg!21283 r1!6261))))) b!7829705))

(assert (= (and b!7827869 (is-Union!20954 (regOne!42421 (regTwo!42421 (reg!21283 r1!6261))))) b!7829706))

(declare-fun b!7829710 () Bool)

(declare-fun e!4630870 () Bool)

(declare-fun tp!2314276 () Bool)

(declare-fun tp!2314275 () Bool)

(assert (=> b!7829710 (= e!4630870 (and tp!2314276 tp!2314275))))

(declare-fun b!7829707 () Bool)

(assert (=> b!7829707 (= e!4630870 tp_is_empty!52263)))

(declare-fun b!7829709 () Bool)

(declare-fun tp!2314277 () Bool)

(assert (=> b!7829709 (= e!4630870 tp!2314277)))

(assert (=> b!7827869 (= tp!2312735 e!4630870)))

(declare-fun b!7829708 () Bool)

(declare-fun tp!2314274 () Bool)

(declare-fun tp!2314278 () Bool)

(assert (=> b!7829708 (= e!4630870 (and tp!2314274 tp!2314278))))

(assert (= (and b!7827869 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (reg!21283 r1!6261))))) b!7829707))

(assert (= (and b!7827869 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (reg!21283 r1!6261))))) b!7829708))

(assert (= (and b!7827869 (is-Star!20954 (regTwo!42421 (regTwo!42421 (reg!21283 r1!6261))))) b!7829709))

(assert (= (and b!7827869 (is-Union!20954 (regTwo!42421 (regTwo!42421 (reg!21283 r1!6261))))) b!7829710))

(declare-fun b!7829714 () Bool)

(declare-fun e!4630871 () Bool)

(declare-fun tp!2314281 () Bool)

(declare-fun tp!2314280 () Bool)

(assert (=> b!7829714 (= e!4630871 (and tp!2314281 tp!2314280))))

(declare-fun b!7829711 () Bool)

(assert (=> b!7829711 (= e!4630871 tp_is_empty!52263)))

(declare-fun b!7829713 () Bool)

(declare-fun tp!2314282 () Bool)

(assert (=> b!7829713 (= e!4630871 tp!2314282)))

(assert (=> b!7827860 (= tp!2312727 e!4630871)))

(declare-fun b!7829712 () Bool)

(declare-fun tp!2314279 () Bool)

(declare-fun tp!2314283 () Bool)

(assert (=> b!7829712 (= e!4630871 (and tp!2314279 tp!2314283))))

(assert (= (and b!7827860 (is-ElementMatch!20954 (reg!21283 (reg!21283 (regTwo!42421 r2!6199))))) b!7829711))

(assert (= (and b!7827860 (is-Concat!29799 (reg!21283 (reg!21283 (regTwo!42421 r2!6199))))) b!7829712))

(assert (= (and b!7827860 (is-Star!20954 (reg!21283 (reg!21283 (regTwo!42421 r2!6199))))) b!7829713))

(assert (= (and b!7827860 (is-Union!20954 (reg!21283 (reg!21283 (regTwo!42421 r2!6199))))) b!7829714))

(declare-fun b!7829718 () Bool)

(declare-fun e!4630872 () Bool)

(declare-fun tp!2314286 () Bool)

(declare-fun tp!2314285 () Bool)

(assert (=> b!7829718 (= e!4630872 (and tp!2314286 tp!2314285))))

(declare-fun b!7829715 () Bool)

(assert (=> b!7829715 (= e!4630872 tp_is_empty!52263)))

(declare-fun b!7829717 () Bool)

(declare-fun tp!2314287 () Bool)

(assert (=> b!7829717 (= e!4630872 tp!2314287)))

(assert (=> b!7827851 (= tp!2312714 e!4630872)))

(declare-fun b!7829716 () Bool)

(declare-fun tp!2314284 () Bool)

(declare-fun tp!2314288 () Bool)

(assert (=> b!7829716 (= e!4630872 (and tp!2314284 tp!2314288))))

(assert (= (and b!7827851 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (regOne!42421 r1!6261))))) b!7829715))

(assert (= (and b!7827851 (is-Concat!29799 (regOne!42420 (reg!21283 (regOne!42421 r1!6261))))) b!7829716))

(assert (= (and b!7827851 (is-Star!20954 (regOne!42420 (reg!21283 (regOne!42421 r1!6261))))) b!7829717))

(assert (= (and b!7827851 (is-Union!20954 (regOne!42420 (reg!21283 (regOne!42421 r1!6261))))) b!7829718))

(declare-fun b!7829722 () Bool)

(declare-fun e!4630873 () Bool)

(declare-fun tp!2314291 () Bool)

(declare-fun tp!2314290 () Bool)

(assert (=> b!7829722 (= e!4630873 (and tp!2314291 tp!2314290))))

(declare-fun b!7829719 () Bool)

(assert (=> b!7829719 (= e!4630873 tp_is_empty!52263)))

(declare-fun b!7829721 () Bool)

(declare-fun tp!2314292 () Bool)

(assert (=> b!7829721 (= e!4630873 tp!2314292)))

(assert (=> b!7827851 (= tp!2312718 e!4630873)))

(declare-fun b!7829720 () Bool)

(declare-fun tp!2314289 () Bool)

(declare-fun tp!2314293 () Bool)

(assert (=> b!7829720 (= e!4630873 (and tp!2314289 tp!2314293))))

(assert (= (and b!7827851 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (regOne!42421 r1!6261))))) b!7829719))

(assert (= (and b!7827851 (is-Concat!29799 (regTwo!42420 (reg!21283 (regOne!42421 r1!6261))))) b!7829720))

(assert (= (and b!7827851 (is-Star!20954 (regTwo!42420 (reg!21283 (regOne!42421 r1!6261))))) b!7829721))

(assert (= (and b!7827851 (is-Union!20954 (regTwo!42420 (reg!21283 (regOne!42421 r1!6261))))) b!7829722))

(declare-fun b!7829726 () Bool)

(declare-fun e!4630874 () Bool)

(declare-fun tp!2314296 () Bool)

(declare-fun tp!2314295 () Bool)

(assert (=> b!7829726 (= e!4630874 (and tp!2314296 tp!2314295))))

(declare-fun b!7829723 () Bool)

(assert (=> b!7829723 (= e!4630874 tp_is_empty!52263)))

(declare-fun b!7829725 () Bool)

(declare-fun tp!2314297 () Bool)

(assert (=> b!7829725 (= e!4630874 tp!2314297)))

(assert (=> b!7827978 (= tp!2312872 e!4630874)))

(declare-fun b!7829724 () Bool)

(declare-fun tp!2314294 () Bool)

(declare-fun tp!2314298 () Bool)

(assert (=> b!7829724 (= e!4630874 (and tp!2314294 tp!2314298))))

(assert (= (and b!7827978 (is-ElementMatch!20954 (regOne!42421 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829723))

(assert (= (and b!7827978 (is-Concat!29799 (regOne!42421 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829724))

(assert (= (and b!7827978 (is-Star!20954 (regOne!42421 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829725))

(assert (= (and b!7827978 (is-Union!20954 (regOne!42421 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829726))

(declare-fun b!7829730 () Bool)

(declare-fun e!4630875 () Bool)

(declare-fun tp!2314301 () Bool)

(declare-fun tp!2314300 () Bool)

(assert (=> b!7829730 (= e!4630875 (and tp!2314301 tp!2314300))))

(declare-fun b!7829727 () Bool)

(assert (=> b!7829727 (= e!4630875 tp_is_empty!52263)))

(declare-fun b!7829729 () Bool)

(declare-fun tp!2314302 () Bool)

(assert (=> b!7829729 (= e!4630875 tp!2314302)))

(assert (=> b!7827978 (= tp!2312871 e!4630875)))

(declare-fun b!7829728 () Bool)

(declare-fun tp!2314299 () Bool)

(declare-fun tp!2314303 () Bool)

(assert (=> b!7829728 (= e!4630875 (and tp!2314299 tp!2314303))))

(assert (= (and b!7827978 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829727))

(assert (= (and b!7827978 (is-Concat!29799 (regTwo!42421 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829728))

(assert (= (and b!7827978 (is-Star!20954 (regTwo!42421 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829729))

(assert (= (and b!7827978 (is-Union!20954 (regTwo!42421 (regTwo!42420 (regOne!42421 r2!6199))))) b!7829730))

(declare-fun b!7829734 () Bool)

(declare-fun e!4630876 () Bool)

(declare-fun tp!2314306 () Bool)

(declare-fun tp!2314305 () Bool)

(assert (=> b!7829734 (= e!4630876 (and tp!2314306 tp!2314305))))

(declare-fun b!7829731 () Bool)

(assert (=> b!7829731 (= e!4630876 tp_is_empty!52263)))

(declare-fun b!7829733 () Bool)

(declare-fun tp!2314307 () Bool)

(assert (=> b!7829733 (= e!4630876 tp!2314307)))

(assert (=> b!7827969 (= tp!2312863 e!4630876)))

(declare-fun b!7829732 () Bool)

(declare-fun tp!2314304 () Bool)

(declare-fun tp!2314308 () Bool)

(assert (=> b!7829732 (= e!4630876 (and tp!2314304 tp!2314308))))

(assert (= (and b!7827969 (is-ElementMatch!20954 (reg!21283 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829731))

(assert (= (and b!7827969 (is-Concat!29799 (reg!21283 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829732))

(assert (= (and b!7827969 (is-Star!20954 (reg!21283 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829733))

(assert (= (and b!7827969 (is-Union!20954 (reg!21283 (regTwo!42421 (regTwo!42420 r2!6199))))) b!7829734))

(declare-fun b!7829738 () Bool)

(declare-fun e!4630877 () Bool)

(declare-fun tp!2314311 () Bool)

(declare-fun tp!2314310 () Bool)

(assert (=> b!7829738 (= e!4630877 (and tp!2314311 tp!2314310))))

(declare-fun b!7829735 () Bool)

(assert (=> b!7829735 (= e!4630877 tp_is_empty!52263)))

(declare-fun b!7829737 () Bool)

(declare-fun tp!2314312 () Bool)

(assert (=> b!7829737 (= e!4630877 tp!2314312)))

(assert (=> b!7827960 (= tp!2312850 e!4630877)))

(declare-fun b!7829736 () Bool)

(declare-fun tp!2314309 () Bool)

(declare-fun tp!2314313 () Bool)

(assert (=> b!7829736 (= e!4630877 (and tp!2314309 tp!2314313))))

(assert (= (and b!7827960 (is-ElementMatch!20954 (regOne!42420 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829735))

(assert (= (and b!7827960 (is-Concat!29799 (regOne!42420 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829736))

(assert (= (and b!7827960 (is-Star!20954 (regOne!42420 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829737))

(assert (= (and b!7827960 (is-Union!20954 (regOne!42420 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829738))

(declare-fun b!7829742 () Bool)

(declare-fun e!4630878 () Bool)

(declare-fun tp!2314316 () Bool)

(declare-fun tp!2314315 () Bool)

(assert (=> b!7829742 (= e!4630878 (and tp!2314316 tp!2314315))))

(declare-fun b!7829739 () Bool)

(assert (=> b!7829739 (= e!4630878 tp_is_empty!52263)))

(declare-fun b!7829741 () Bool)

(declare-fun tp!2314317 () Bool)

(assert (=> b!7829741 (= e!4630878 tp!2314317)))

(assert (=> b!7827960 (= tp!2312854 e!4630878)))

(declare-fun b!7829740 () Bool)

(declare-fun tp!2314314 () Bool)

(declare-fun tp!2314318 () Bool)

(assert (=> b!7829740 (= e!4630878 (and tp!2314314 tp!2314318))))

(assert (= (and b!7827960 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829739))

(assert (= (and b!7827960 (is-Concat!29799 (regTwo!42420 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829740))

(assert (= (and b!7827960 (is-Star!20954 (regTwo!42420 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829741))

(assert (= (and b!7827960 (is-Union!20954 (regTwo!42420 (regTwo!42421 (regTwo!42421 r1!6261))))) b!7829742))

(declare-fun b!7829746 () Bool)

(declare-fun e!4630879 () Bool)

(declare-fun tp!2314321 () Bool)

(declare-fun tp!2314320 () Bool)

(assert (=> b!7829746 (= e!4630879 (and tp!2314321 tp!2314320))))

(declare-fun b!7829743 () Bool)

(assert (=> b!7829743 (= e!4630879 tp_is_empty!52263)))

(declare-fun b!7829745 () Bool)

(declare-fun tp!2314322 () Bool)

(assert (=> b!7829745 (= e!4630879 tp!2314322)))

(assert (=> b!7828021 (= tp!2312925 e!4630879)))

(declare-fun b!7829744 () Bool)

(declare-fun tp!2314319 () Bool)

(declare-fun tp!2314323 () Bool)

(assert (=> b!7829744 (= e!4630879 (and tp!2314319 tp!2314323))))

(assert (= (and b!7828021 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829743))

(assert (= (and b!7828021 (is-Concat!29799 (regOne!42421 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829744))

(assert (= (and b!7828021 (is-Star!20954 (regOne!42421 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829745))

(assert (= (and b!7828021 (is-Union!20954 (regOne!42421 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829746))

(declare-fun b!7829750 () Bool)

(declare-fun e!4630880 () Bool)

(declare-fun tp!2314326 () Bool)

(declare-fun tp!2314325 () Bool)

(assert (=> b!7829750 (= e!4630880 (and tp!2314326 tp!2314325))))

(declare-fun b!7829747 () Bool)

(assert (=> b!7829747 (= e!4630880 tp_is_empty!52263)))

(declare-fun b!7829749 () Bool)

(declare-fun tp!2314327 () Bool)

(assert (=> b!7829749 (= e!4630880 tp!2314327)))

(assert (=> b!7828021 (= tp!2312924 e!4630880)))

(declare-fun b!7829748 () Bool)

(declare-fun tp!2314324 () Bool)

(declare-fun tp!2314328 () Bool)

(assert (=> b!7829748 (= e!4630880 (and tp!2314324 tp!2314328))))

(assert (= (and b!7828021 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829747))

(assert (= (and b!7828021 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829748))

(assert (= (and b!7828021 (is-Star!20954 (regTwo!42421 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829749))

(assert (= (and b!7828021 (is-Union!20954 (regTwo!42421 (regTwo!42421 (regTwo!42421 r2!6199))))) b!7829750))

(declare-fun b!7829754 () Bool)

(declare-fun e!4630881 () Bool)

(declare-fun tp!2314331 () Bool)

(declare-fun tp!2314330 () Bool)

(assert (=> b!7829754 (= e!4630881 (and tp!2314331 tp!2314330))))

(declare-fun b!7829751 () Bool)

(assert (=> b!7829751 (= e!4630881 tp_is_empty!52263)))

(declare-fun b!7829753 () Bool)

(declare-fun tp!2314332 () Bool)

(assert (=> b!7829753 (= e!4630881 tp!2314332)))

(assert (=> b!7827840 (= tp!2312702 e!4630881)))

(declare-fun b!7829752 () Bool)

(declare-fun tp!2314329 () Bool)

(declare-fun tp!2314333 () Bool)

(assert (=> b!7829752 (= e!4630881 (and tp!2314329 tp!2314333))))

(assert (= (and b!7827840 (is-ElementMatch!20954 (reg!21283 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829751))

(assert (= (and b!7827840 (is-Concat!29799 (reg!21283 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829752))

(assert (= (and b!7827840 (is-Star!20954 (reg!21283 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829753))

(assert (= (and b!7827840 (is-Union!20954 (reg!21283 (regTwo!42420 (regTwo!42421 r2!6199))))) b!7829754))

(declare-fun b!7829758 () Bool)

(declare-fun e!4630882 () Bool)

(declare-fun tp!2314336 () Bool)

(declare-fun tp!2314335 () Bool)

(assert (=> b!7829758 (= e!4630882 (and tp!2314336 tp!2314335))))

(declare-fun b!7829755 () Bool)

(assert (=> b!7829755 (= e!4630882 tp_is_empty!52263)))

(declare-fun b!7829757 () Bool)

(declare-fun tp!2314337 () Bool)

(assert (=> b!7829757 (= e!4630882 tp!2314337)))

(assert (=> b!7827831 (= tp!2312689 e!4630882)))

(declare-fun b!7829756 () Bool)

(declare-fun tp!2314334 () Bool)

(declare-fun tp!2314338 () Bool)

(assert (=> b!7829756 (= e!4630882 (and tp!2314334 tp!2314338))))

(assert (= (and b!7827831 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829755))

(assert (= (and b!7827831 (is-Concat!29799 (regOne!42420 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829756))

(assert (= (and b!7827831 (is-Star!20954 (regOne!42420 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829757))

(assert (= (and b!7827831 (is-Union!20954 (regOne!42420 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829758))

(declare-fun b!7829762 () Bool)

(declare-fun e!4630883 () Bool)

(declare-fun tp!2314341 () Bool)

(declare-fun tp!2314340 () Bool)

(assert (=> b!7829762 (= e!4630883 (and tp!2314341 tp!2314340))))

(declare-fun b!7829759 () Bool)

(assert (=> b!7829759 (= e!4630883 tp_is_empty!52263)))

(declare-fun b!7829761 () Bool)

(declare-fun tp!2314342 () Bool)

(assert (=> b!7829761 (= e!4630883 tp!2314342)))

(assert (=> b!7827831 (= tp!2312693 e!4630883)))

(declare-fun b!7829760 () Bool)

(declare-fun tp!2314339 () Bool)

(declare-fun tp!2314343 () Bool)

(assert (=> b!7829760 (= e!4630883 (and tp!2314339 tp!2314343))))

(assert (= (and b!7827831 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829759))

(assert (= (and b!7827831 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829760))

(assert (= (and b!7827831 (is-Star!20954 (regTwo!42420 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829761))

(assert (= (and b!7827831 (is-Union!20954 (regTwo!42420 (regTwo!42420 (regOne!42420 r2!6199))))) b!7829762))

(declare-fun b!7829766 () Bool)

(declare-fun e!4630884 () Bool)

(declare-fun tp!2314346 () Bool)

(declare-fun tp!2314345 () Bool)

(assert (=> b!7829766 (= e!4630884 (and tp!2314346 tp!2314345))))

(declare-fun b!7829763 () Bool)

(assert (=> b!7829763 (= e!4630884 tp_is_empty!52263)))

(declare-fun b!7829765 () Bool)

(declare-fun tp!2314347 () Bool)

(assert (=> b!7829765 (= e!4630884 tp!2314347)))

(assert (=> b!7827926 (= tp!2312807 e!4630884)))

(declare-fun b!7829764 () Bool)

(declare-fun tp!2314344 () Bool)

(declare-fun tp!2314348 () Bool)

(assert (=> b!7829764 (= e!4630884 (and tp!2314344 tp!2314348))))

(assert (= (and b!7827926 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829763))

(assert (= (and b!7827926 (is-Concat!29799 (regOne!42421 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829764))

(assert (= (and b!7827926 (is-Star!20954 (regOne!42421 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829765))

(assert (= (and b!7827926 (is-Union!20954 (regOne!42421 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829766))

(declare-fun b!7829770 () Bool)

(declare-fun e!4630885 () Bool)

(declare-fun tp!2314351 () Bool)

(declare-fun tp!2314350 () Bool)

(assert (=> b!7829770 (= e!4630885 (and tp!2314351 tp!2314350))))

(declare-fun b!7829767 () Bool)

(assert (=> b!7829767 (= e!4630885 tp_is_empty!52263)))

(declare-fun b!7829769 () Bool)

(declare-fun tp!2314352 () Bool)

(assert (=> b!7829769 (= e!4630885 tp!2314352)))

(assert (=> b!7827926 (= tp!2312806 e!4630885)))

(declare-fun b!7829768 () Bool)

(declare-fun tp!2314349 () Bool)

(declare-fun tp!2314353 () Bool)

(assert (=> b!7829768 (= e!4630885 (and tp!2314349 tp!2314353))))

(assert (= (and b!7827926 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829767))

(assert (= (and b!7827926 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829768))

(assert (= (and b!7827926 (is-Star!20954 (regTwo!42421 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829769))

(assert (= (and b!7827926 (is-Union!20954 (regTwo!42421 (regTwo!42421 (regOne!42421 r2!6199))))) b!7829770))

(declare-fun b!7829774 () Bool)

(declare-fun e!4630886 () Bool)

(declare-fun tp!2314356 () Bool)

(declare-fun tp!2314355 () Bool)

(assert (=> b!7829774 (= e!4630886 (and tp!2314356 tp!2314355))))

(declare-fun b!7829771 () Bool)

(assert (=> b!7829771 (= e!4630886 tp_is_empty!52263)))

(declare-fun b!7829773 () Bool)

(declare-fun tp!2314357 () Bool)

(assert (=> b!7829773 (= e!4630886 tp!2314357)))

(assert (=> b!7827901 (= tp!2312776 e!4630886)))

(declare-fun b!7829772 () Bool)

(declare-fun tp!2314354 () Bool)

(declare-fun tp!2314358 () Bool)

(assert (=> b!7829772 (= e!4630886 (and tp!2314354 tp!2314358))))

(assert (= (and b!7827901 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829771))

(assert (= (and b!7827901 (is-Concat!29799 (regOne!42421 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829772))

(assert (= (and b!7827901 (is-Star!20954 (regOne!42421 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829773))

(assert (= (and b!7827901 (is-Union!20954 (regOne!42421 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829774))

(declare-fun b!7829778 () Bool)

(declare-fun e!4630887 () Bool)

(declare-fun tp!2314361 () Bool)

(declare-fun tp!2314360 () Bool)

(assert (=> b!7829778 (= e!4630887 (and tp!2314361 tp!2314360))))

(declare-fun b!7829775 () Bool)

(assert (=> b!7829775 (= e!4630887 tp_is_empty!52263)))

(declare-fun b!7829777 () Bool)

(declare-fun tp!2314362 () Bool)

(assert (=> b!7829777 (= e!4630887 tp!2314362)))

(assert (=> b!7827901 (= tp!2312775 e!4630887)))

(declare-fun b!7829776 () Bool)

(declare-fun tp!2314359 () Bool)

(declare-fun tp!2314363 () Bool)

(assert (=> b!7829776 (= e!4630887 (and tp!2314359 tp!2314363))))

(assert (= (and b!7827901 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829775))

(assert (= (and b!7827901 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829776))

(assert (= (and b!7827901 (is-Star!20954 (regTwo!42421 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829777))

(assert (= (and b!7827901 (is-Union!20954 (regTwo!42421 (regTwo!42421 (regOne!42420 r1!6261))))) b!7829778))

(declare-fun b!7829782 () Bool)

(declare-fun e!4630888 () Bool)

(declare-fun tp!2314366 () Bool)

(declare-fun tp!2314365 () Bool)

(assert (=> b!7829782 (= e!4630888 (and tp!2314366 tp!2314365))))

(declare-fun b!7829779 () Bool)

(assert (=> b!7829779 (= e!4630888 tp_is_empty!52263)))

(declare-fun b!7829781 () Bool)

(declare-fun tp!2314367 () Bool)

(assert (=> b!7829781 (= e!4630888 tp!2314367)))

(assert (=> b!7827892 (= tp!2312767 e!4630888)))

(declare-fun b!7829780 () Bool)

(declare-fun tp!2314364 () Bool)

(declare-fun tp!2314368 () Bool)

(assert (=> b!7829780 (= e!4630888 (and tp!2314364 tp!2314368))))

(assert (= (and b!7827892 (is-ElementMatch!20954 (reg!21283 (reg!21283 (reg!21283 r2!6199))))) b!7829779))

(assert (= (and b!7827892 (is-Concat!29799 (reg!21283 (reg!21283 (reg!21283 r2!6199))))) b!7829780))

(assert (= (and b!7827892 (is-Star!20954 (reg!21283 (reg!21283 (reg!21283 r2!6199))))) b!7829781))

(assert (= (and b!7827892 (is-Union!20954 (reg!21283 (reg!21283 (reg!21283 r2!6199))))) b!7829782))

(declare-fun b!7829786 () Bool)

(declare-fun e!4630889 () Bool)

(declare-fun tp!2314371 () Bool)

(declare-fun tp!2314370 () Bool)

(assert (=> b!7829786 (= e!4630889 (and tp!2314371 tp!2314370))))

(declare-fun b!7829783 () Bool)

(assert (=> b!7829783 (= e!4630889 tp_is_empty!52263)))

(declare-fun b!7829785 () Bool)

(declare-fun tp!2314372 () Bool)

(assert (=> b!7829785 (= e!4630889 tp!2314372)))

(assert (=> b!7827883 (= tp!2312754 e!4630889)))

(declare-fun b!7829784 () Bool)

(declare-fun tp!2314369 () Bool)

(declare-fun tp!2314373 () Bool)

(assert (=> b!7829784 (= e!4630889 (and tp!2314369 tp!2314373))))

(assert (= (and b!7827883 (is-ElementMatch!20954 (regOne!42420 (regOne!42420 (regOne!42421 r1!6261))))) b!7829783))

(assert (= (and b!7827883 (is-Concat!29799 (regOne!42420 (regOne!42420 (regOne!42421 r1!6261))))) b!7829784))

(assert (= (and b!7827883 (is-Star!20954 (regOne!42420 (regOne!42420 (regOne!42421 r1!6261))))) b!7829785))

(assert (= (and b!7827883 (is-Union!20954 (regOne!42420 (regOne!42420 (regOne!42421 r1!6261))))) b!7829786))

(declare-fun b!7829790 () Bool)

(declare-fun e!4630890 () Bool)

(declare-fun tp!2314376 () Bool)

(declare-fun tp!2314375 () Bool)

(assert (=> b!7829790 (= e!4630890 (and tp!2314376 tp!2314375))))

(declare-fun b!7829787 () Bool)

(assert (=> b!7829787 (= e!4630890 tp_is_empty!52263)))

(declare-fun b!7829789 () Bool)

(declare-fun tp!2314377 () Bool)

(assert (=> b!7829789 (= e!4630890 tp!2314377)))

(assert (=> b!7827883 (= tp!2312758 e!4630890)))

(declare-fun b!7829788 () Bool)

(declare-fun tp!2314374 () Bool)

(declare-fun tp!2314378 () Bool)

(assert (=> b!7829788 (= e!4630890 (and tp!2314374 tp!2314378))))

(assert (= (and b!7827883 (is-ElementMatch!20954 (regTwo!42420 (regOne!42420 (regOne!42421 r1!6261))))) b!7829787))

(assert (= (and b!7827883 (is-Concat!29799 (regTwo!42420 (regOne!42420 (regOne!42421 r1!6261))))) b!7829788))

(assert (= (and b!7827883 (is-Star!20954 (regTwo!42420 (regOne!42420 (regOne!42421 r1!6261))))) b!7829789))

(assert (= (and b!7827883 (is-Union!20954 (regTwo!42420 (regOne!42420 (regOne!42421 r1!6261))))) b!7829790))

(declare-fun b!7829794 () Bool)

(declare-fun e!4630891 () Bool)

(declare-fun tp!2314381 () Bool)

(declare-fun tp!2314380 () Bool)

(assert (=> b!7829794 (= e!4630891 (and tp!2314381 tp!2314380))))

(declare-fun b!7829791 () Bool)

(assert (=> b!7829791 (= e!4630891 tp_is_empty!52263)))

(declare-fun b!7829793 () Bool)

(declare-fun tp!2314382 () Bool)

(assert (=> b!7829793 (= e!4630891 tp!2314382)))

(assert (=> b!7828001 (= tp!2312900 e!4630891)))

(declare-fun b!7829792 () Bool)

(declare-fun tp!2314379 () Bool)

(declare-fun tp!2314383 () Bool)

(assert (=> b!7829792 (= e!4630891 (and tp!2314379 tp!2314383))))

(assert (= (and b!7828001 (is-ElementMatch!20954 (regOne!42421 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829791))

(assert (= (and b!7828001 (is-Concat!29799 (regOne!42421 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829792))

(assert (= (and b!7828001 (is-Star!20954 (regOne!42421 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829793))

(assert (= (and b!7828001 (is-Union!20954 (regOne!42421 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829794))

(declare-fun b!7829798 () Bool)

(declare-fun e!4630892 () Bool)

(declare-fun tp!2314386 () Bool)

(declare-fun tp!2314385 () Bool)

(assert (=> b!7829798 (= e!4630892 (and tp!2314386 tp!2314385))))

(declare-fun b!7829795 () Bool)

(assert (=> b!7829795 (= e!4630892 tp_is_empty!52263)))

(declare-fun b!7829797 () Bool)

(declare-fun tp!2314387 () Bool)

(assert (=> b!7829797 (= e!4630892 tp!2314387)))

(assert (=> b!7828001 (= tp!2312899 e!4630892)))

(declare-fun b!7829796 () Bool)

(declare-fun tp!2314384 () Bool)

(declare-fun tp!2314388 () Bool)

(assert (=> b!7829796 (= e!4630892 (and tp!2314384 tp!2314388))))

(assert (= (and b!7828001 (is-ElementMatch!20954 (regTwo!42421 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829795))

(assert (= (and b!7828001 (is-Concat!29799 (regTwo!42421 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829796))

(assert (= (and b!7828001 (is-Star!20954 (regTwo!42421 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829797))

(assert (= (and b!7828001 (is-Union!20954 (regTwo!42421 (regOne!42420 (regTwo!42420 r1!6261))))) b!7829798))

(declare-fun b!7829802 () Bool)

(declare-fun e!4630893 () Bool)

(declare-fun tp!2314391 () Bool)

(declare-fun tp!2314390 () Bool)

(assert (=> b!7829802 (= e!4630893 (and tp!2314391 tp!2314390))))

(declare-fun b!7829799 () Bool)

(assert (=> b!7829799 (= e!4630893 tp_is_empty!52263)))

(declare-fun b!7829801 () Bool)

(declare-fun tp!2314392 () Bool)

(assert (=> b!7829801 (= e!4630893 tp!2314392)))

(assert (=> b!7827849 (= tp!2312711 e!4630893)))

(declare-fun b!7829800 () Bool)

(declare-fun tp!2314389 () Bool)

(declare-fun tp!2314393 () Bool)

(assert (=> b!7829800 (= e!4630893 (and tp!2314389 tp!2314393))))

(assert (= (and b!7827849 (is-ElementMatch!20954 (regOne!42421 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829799))

(assert (= (and b!7827849 (is-Concat!29799 (regOne!42421 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829800))

(assert (= (and b!7827849 (is-Star!20954 (regOne!42421 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829801))

(assert (= (and b!7827849 (is-Union!20954 (regOne!42421 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829802))

(declare-fun b!7829806 () Bool)

(declare-fun e!4630894 () Bool)

(declare-fun tp!2314396 () Bool)

(declare-fun tp!2314395 () Bool)

(assert (=> b!7829806 (= e!4630894 (and tp!2314396 tp!2314395))))

(declare-fun b!7829803 () Bool)

(assert (=> b!7829803 (= e!4630894 tp_is_empty!52263)))

(declare-fun b!7829805 () Bool)

(declare-fun tp!2314397 () Bool)

(assert (=> b!7829805 (= e!4630894 tp!2314397)))

(assert (=> b!7827849 (= tp!2312710 e!4630894)))

(declare-fun b!7829804 () Bool)

(declare-fun tp!2314394 () Bool)

(declare-fun tp!2314398 () Bool)

(assert (=> b!7829804 (= e!4630894 (and tp!2314394 tp!2314398))))

(assert (= (and b!7827849 (is-ElementMatch!20954 (regTwo!42421 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829803))

(assert (= (and b!7827849 (is-Concat!29799 (regTwo!42421 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829804))

(assert (= (and b!7827849 (is-Star!20954 (regTwo!42421 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829805))

(assert (= (and b!7827849 (is-Union!20954 (regTwo!42421 (regTwo!42421 (regOne!42421 r1!6261))))) b!7829806))

(declare-fun b!7829810 () Bool)

(declare-fun e!4630895 () Bool)

(declare-fun tp!2314401 () Bool)

(declare-fun tp!2314400 () Bool)

(assert (=> b!7829810 (= e!4630895 (and tp!2314401 tp!2314400))))

(declare-fun b!7829807 () Bool)

(assert (=> b!7829807 (= e!4630895 tp_is_empty!52263)))

(declare-fun b!7829809 () Bool)

(declare-fun tp!2314402 () Bool)

(assert (=> b!7829809 (= e!4630895 tp!2314402)))

(assert (=> b!7827872 (= tp!2312742 e!4630895)))

(declare-fun b!7829808 () Bool)

(declare-fun tp!2314399 () Bool)

(declare-fun tp!2314403 () Bool)

(assert (=> b!7829808 (= e!4630895 (and tp!2314399 tp!2314403))))

(assert (= (and b!7827872 (is-ElementMatch!20954 (reg!21283 (reg!21283 (regOne!42420 r2!6199))))) b!7829807))

(assert (= (and b!7827872 (is-Concat!29799 (reg!21283 (reg!21283 (regOne!42420 r2!6199))))) b!7829808))

(assert (= (and b!7827872 (is-Star!20954 (reg!21283 (reg!21283 (regOne!42420 r2!6199))))) b!7829809))

(assert (= (and b!7827872 (is-Union!20954 (reg!21283 (reg!21283 (regOne!42420 r2!6199))))) b!7829810))

(declare-fun b!7829814 () Bool)

(declare-fun e!4630896 () Bool)

(declare-fun tp!2314406 () Bool)

(declare-fun tp!2314405 () Bool)

(assert (=> b!7829814 (= e!4630896 (and tp!2314406 tp!2314405))))

(declare-fun b!7829811 () Bool)

(assert (=> b!7829811 (= e!4630896 tp_is_empty!52263)))

(declare-fun b!7829813 () Bool)

(declare-fun tp!2314407 () Bool)

(assert (=> b!7829813 (= e!4630896 tp!2314407)))

(assert (=> b!7827863 (= tp!2312729 e!4630896)))

(declare-fun b!7829812 () Bool)

(declare-fun tp!2314404 () Bool)

(declare-fun tp!2314408 () Bool)

(assert (=> b!7829812 (= e!4630896 (and tp!2314404 tp!2314408))))

(assert (= (and b!7827863 (is-ElementMatch!20954 (regOne!42420 (regOne!42421 (reg!21283 r1!6261))))) b!7829811))

(assert (= (and b!7827863 (is-Concat!29799 (regOne!42420 (regOne!42421 (reg!21283 r1!6261))))) b!7829812))

(assert (= (and b!7827863 (is-Star!20954 (regOne!42420 (regOne!42421 (reg!21283 r1!6261))))) b!7829813))

(assert (= (and b!7827863 (is-Union!20954 (regOne!42420 (regOne!42421 (reg!21283 r1!6261))))) b!7829814))

(declare-fun b!7829818 () Bool)

(declare-fun e!4630897 () Bool)

(declare-fun tp!2314411 () Bool)

(declare-fun tp!2314410 () Bool)

(assert (=> b!7829818 (= e!4630897 (and tp!2314411 tp!2314410))))

(declare-fun b!7829815 () Bool)

(assert (=> b!7829815 (= e!4630897 tp_is_empty!52263)))

(declare-fun b!7829817 () Bool)

(declare-fun tp!2314412 () Bool)

(assert (=> b!7829817 (= e!4630897 tp!2314412)))

(assert (=> b!7827863 (= tp!2312733 e!4630897)))

(declare-fun b!7829816 () Bool)

(declare-fun tp!2314409 () Bool)

(declare-fun tp!2314413 () Bool)

(assert (=> b!7829816 (= e!4630897 (and tp!2314409 tp!2314413))))

(assert (= (and b!7827863 (is-ElementMatch!20954 (regTwo!42420 (regOne!42421 (reg!21283 r1!6261))))) b!7829815))

(assert (= (and b!7827863 (is-Concat!29799 (regTwo!42420 (regOne!42421 (reg!21283 r1!6261))))) b!7829816))

(assert (= (and b!7827863 (is-Star!20954 (regTwo!42420 (regOne!42421 (reg!21283 r1!6261))))) b!7829817))

(assert (= (and b!7827863 (is-Union!20954 (regTwo!42420 (regOne!42421 (reg!21283 r1!6261))))) b!7829818))

(declare-fun b!7829822 () Bool)

(declare-fun e!4630898 () Bool)

(declare-fun tp!2314416 () Bool)

(declare-fun tp!2314415 () Bool)

(assert (=> b!7829822 (= e!4630898 (and tp!2314416 tp!2314415))))

(declare-fun b!7829819 () Bool)

(assert (=> b!7829819 (= e!4630898 tp_is_empty!52263)))

(declare-fun b!7829821 () Bool)

(declare-fun tp!2314417 () Bool)

(assert (=> b!7829821 (= e!4630898 tp!2314417)))

(assert (=> b!7827958 (= tp!2312847 e!4630898)))

(declare-fun b!7829820 () Bool)

(declare-fun tp!2314414 () Bool)

(declare-fun tp!2314418 () Bool)

(assert (=> b!7829820 (= e!4630898 (and tp!2314414 tp!2314418))))

(assert (= (and b!7827958 (is-ElementMatch!20954 (regOne!42421 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829819))

(assert (= (and b!7827958 (is-Concat!29799 (regOne!42421 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829820))

(assert (= (and b!7827958 (is-Star!20954 (regOne!42421 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829821))

(assert (= (and b!7827958 (is-Union!20954 (regOne!42421 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829822))

(declare-fun b!7829826 () Bool)

(declare-fun e!4630899 () Bool)

(declare-fun tp!2314421 () Bool)

(declare-fun tp!2314420 () Bool)

(assert (=> b!7829826 (= e!4630899 (and tp!2314421 tp!2314420))))

(declare-fun b!7829823 () Bool)

(assert (=> b!7829823 (= e!4630899 tp_is_empty!52263)))

(declare-fun b!7829825 () Bool)

(declare-fun tp!2314422 () Bool)

(assert (=> b!7829825 (= e!4630899 tp!2314422)))

(assert (=> b!7827958 (= tp!2312846 e!4630899)))

(declare-fun b!7829824 () Bool)

(declare-fun tp!2314419 () Bool)

(declare-fun tp!2314423 () Bool)

(assert (=> b!7829824 (= e!4630899 (and tp!2314419 tp!2314423))))

(assert (= (and b!7827958 (is-ElementMatch!20954 (regTwo!42421 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829823))

(assert (= (and b!7827958 (is-Concat!29799 (regTwo!42421 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829824))

(assert (= (and b!7827958 (is-Star!20954 (regTwo!42421 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829825))

(assert (= (and b!7827958 (is-Union!20954 (regTwo!42421 (regOne!42421 (regTwo!42421 r1!6261))))) b!7829826))

(declare-fun b!7829830 () Bool)

(declare-fun e!4630900 () Bool)

(declare-fun tp!2314426 () Bool)

(declare-fun tp!2314425 () Bool)

(assert (=> b!7829830 (= e!4630900 (and tp!2314426 tp!2314425))))

(declare-fun b!7829827 () Bool)

(assert (=> b!7829827 (= e!4630900 tp_is_empty!52263)))

(declare-fun b!7829829 () Bool)

(declare-fun tp!2314427 () Bool)

(assert (=> b!7829829 (= e!4630900 tp!2314427)))

(assert (=> b!7827949 (= tp!2312838 e!4630900)))

(declare-fun b!7829828 () Bool)

(declare-fun tp!2314424 () Bool)

(declare-fun tp!2314428 () Bool)

(assert (=> b!7829828 (= e!4630900 (and tp!2314424 tp!2314428))))

(assert (= (and b!7827949 (is-ElementMatch!20954 (reg!21283 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829827))

(assert (= (and b!7827949 (is-Concat!29799 (reg!21283 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829828))

(assert (= (and b!7827949 (is-Star!20954 (reg!21283 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829829))

(assert (= (and b!7827949 (is-Union!20954 (reg!21283 (regOne!42420 (regTwo!42420 r2!6199))))) b!7829830))

(declare-fun b!7829834 () Bool)

(declare-fun e!4630901 () Bool)

(declare-fun tp!2314431 () Bool)

(declare-fun tp!2314430 () Bool)

(assert (=> b!7829834 (= e!4630901 (and tp!2314431 tp!2314430))))

(declare-fun b!7829831 () Bool)

(assert (=> b!7829831 (= e!4630901 tp_is_empty!52263)))

(declare-fun b!7829833 () Bool)

(declare-fun tp!2314432 () Bool)

(assert (=> b!7829833 (= e!4630901 tp!2314432)))

(assert (=> b!7827940 (= tp!2312825 e!4630901)))

(declare-fun b!7829832 () Bool)

(declare-fun tp!2314429 () Bool)

(declare-fun tp!2314433 () Bool)

(assert (=> b!7829832 (= e!4630901 (and tp!2314429 tp!2314433))))

(assert (= (and b!7827940 (is-ElementMatch!20954 (regOne!42420 (reg!21283 (regOne!42420 r1!6261))))) b!7829831))

(assert (= (and b!7827940 (is-Concat!29799 (regOne!42420 (reg!21283 (regOne!42420 r1!6261))))) b!7829832))

(assert (= (and b!7827940 (is-Star!20954 (regOne!42420 (reg!21283 (regOne!42420 r1!6261))))) b!7829833))

(assert (= (and b!7827940 (is-Union!20954 (regOne!42420 (reg!21283 (regOne!42420 r1!6261))))) b!7829834))

(declare-fun b!7829838 () Bool)

(declare-fun e!4630902 () Bool)

(declare-fun tp!2314436 () Bool)

(declare-fun tp!2314435 () Bool)

(assert (=> b!7829838 (= e!4630902 (and tp!2314436 tp!2314435))))

(declare-fun b!7829835 () Bool)

(assert (=> b!7829835 (= e!4630902 tp_is_empty!52263)))

(declare-fun b!7829837 () Bool)

(declare-fun tp!2314437 () Bool)

(assert (=> b!7829837 (= e!4630902 tp!2314437)))

(assert (=> b!7827940 (= tp!2312829 e!4630902)))

(declare-fun b!7829836 () Bool)

(declare-fun tp!2314434 () Bool)

(declare-fun tp!2314438 () Bool)

(assert (=> b!7829836 (= e!4630902 (and tp!2314434 tp!2314438))))

(assert (= (and b!7827940 (is-ElementMatch!20954 (regTwo!42420 (reg!21283 (regOne!42420 r1!6261))))) b!7829835))

(assert (= (and b!7827940 (is-Concat!29799 (regTwo!42420 (reg!21283 (regOne!42420 r1!6261))))) b!7829836))

(assert (= (and b!7827940 (is-Star!20954 (regTwo!42420 (reg!21283 (regOne!42420 r1!6261))))) b!7829837))

(assert (= (and b!7827940 (is-Union!20954 (regTwo!42420 (reg!21283 (regOne!42420 r1!6261))))) b!7829838))

(declare-fun b!7829842 () Bool)

(declare-fun e!4630903 () Bool)

(declare-fun tp!2314441 () Bool)

(declare-fun tp!2314440 () Bool)

(assert (=> b!7829842 (= e!4630903 (and tp!2314441 tp!2314440))))

(declare-fun b!7829839 () Bool)

(assert (=> b!7829839 (= e!4630903 tp_is_empty!52263)))

(declare-fun b!7829841 () Bool)

(declare-fun tp!2314442 () Bool)

(assert (=> b!7829841 (= e!4630903 tp!2314442)))

(assert (=> b!7827915 (= tp!2312794 e!4630903)))

(declare-fun b!7829840 () Bool)

(declare-fun tp!2314439 () Bool)

(declare-fun tp!2314443 () Bool)

(assert (=> b!7829840 (= e!4630903 (and tp!2314439 tp!2314443))))

(assert (= (and b!7827915 (is-ElementMatch!20954 (regOne!42420 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829839))

(assert (= (and b!7827915 (is-Concat!29799 (regOne!42420 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829840))

(assert (= (and b!7827915 (is-Star!20954 (regOne!42420 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829841))

(assert (= (and b!7827915 (is-Union!20954 (regOne!42420 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829842))

(declare-fun b!7829846 () Bool)

(declare-fun e!4630904 () Bool)

(declare-fun tp!2314446 () Bool)

(declare-fun tp!2314445 () Bool)

(assert (=> b!7829846 (= e!4630904 (and tp!2314446 tp!2314445))))

(declare-fun b!7829843 () Bool)

(assert (=> b!7829843 (= e!4630904 tp_is_empty!52263)))

(declare-fun b!7829845 () Bool)

(declare-fun tp!2314447 () Bool)

(assert (=> b!7829845 (= e!4630904 tp!2314447)))

(assert (=> b!7827915 (= tp!2312798 e!4630904)))

(declare-fun b!7829844 () Bool)

(declare-fun tp!2314444 () Bool)

(declare-fun tp!2314448 () Bool)

(assert (=> b!7829844 (= e!4630904 (and tp!2314444 tp!2314448))))

(assert (= (and b!7827915 (is-ElementMatch!20954 (regTwo!42420 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829843))

(assert (= (and b!7827915 (is-Concat!29799 (regTwo!42420 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829844))

(assert (= (and b!7827915 (is-Star!20954 (regTwo!42420 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829845))

(assert (= (and b!7827915 (is-Union!20954 (regTwo!42420 (regTwo!42420 (regOne!42420 r1!6261))))) b!7829846))

(push 1)

(assert (not b!7829786))

(assert (not b!7829339))

(assert (not b!7829219))

(assert (not b!7828996))

(assert (not b!7828889))

(assert (not b!7829472))

(assert (not b!7829744))

(assert (not b!7829040))

(assert (not b!7829158))

(assert (not b!7829532))

(assert (not b!7829353))

(assert (not b!7829797))

(assert (not b!7829760))

(assert (not b!7829555))

(assert (not bm!726118))

(assert (not b!7829262))

(assert (not bm!726126))

(assert (not b!7829011))

(assert (not b!7829519))

(assert (not b!7829163))

(assert (not bm!726144))

(assert (not b!7829415))

(assert (not d!2350703))

(assert (not b!7829345))

(assert (not b!7828841))

(assert (not bm!726090))

(assert (not b!7829024))

(assert (not b!7828873))

(assert (not b!7829408))

(assert (not b!7828917))

(assert (not b!7829328))

(assert (not b!7829489))

(assert (not b!7829573))

(assert (not d!2350755))

(assert (not b!7829680))

(assert (not b!7828580))

(assert (not b!7829352))

(assert (not b!7829400))

(assert (not b!7828975))

(assert (not b!7829738))

(assert (not b!7829529))

(assert (not b!7829593))

(assert (not b!7828567))

(assert (not b!7829183))

(assert (not b!7829316))

(assert (not b!7828864))

(assert (not b!7829391))

(assert (not b!7829203))

(assert (not b!7828883))

(assert (not b!7828980))

(assert (not b!7828711))

(assert (not b!7828925))

(assert (not b!7828777))

(assert (not b!7829463))

(assert (not b!7829822))

(assert (not b!7829361))

(assert (not b!7828941))

(assert (not b!7828588))

(assert (not b!7829535))

(assert (not b!7828991))

(assert (not b!7829397))

(assert (not bm!726065))

(assert (not b!7829048))

(assert (not b!7829137))

(assert (not b!7829044))

(assert (not b!7829742))

(assert (not b!7829439))

(assert (not b!7828720))

(assert (not b!7829214))

(assert (not b!7828581))

(assert (not b!7829596))

(assert (not b!7829630))

(assert (not b!7829800))

(assert (not b!7829007))

(assert (not b!7828849))

(assert (not b!7828956))

(assert (not b!7829235))

(assert (not b!7829312))

(assert (not b!7828903))

(assert (not b!7829070))

(assert (not b!7828955))

(assert (not b!7829468))

(assert (not bm!726093))

(assert (not b!7829065))

(assert (not b!7829243))

(assert (not b!7828668))

(assert (not b!7829644))

(assert (not b!7829403))

(assert (not b!7829059))

(assert (not b!7829480))

(assert (not b!7828852))

(assert (not b!7828575))

(assert (not b!7829710))

(assert (not b!7829589))

(assert (not b!7829752))

(assert (not b!7828863))

(assert (not b!7829189))

(assert (not b!7829733))

(assert (not b!7829565))

(assert (not b!7829090))

(assert (not b!7829425))

(assert (not b!7828839))

(assert (not b!7829021))

(assert (not b!7829445))

(assert (not b!7829207))

(assert (not b!7829484))

(assert (not b!7828937))

(assert (not b!7829745))

(assert (not b!7829103))

(assert (not b!7829508))

(assert (not b!7828984))

(assert (not b!7828896))

(assert (not bm!726131))

(assert (not b!7829676))

(assert (not b!7828566))

(assert (not b!7828538))

(assert (not b!7829223))

(assert (not b!7828554))

(assert (not b!7829686))

(assert (not b!7829568))

(assert (not b!7829061))

(assert (not bm!726108))

(assert (not b!7829483))

(assert (not b!7829693))

(assert (not b!7829545))

(assert (not d!2350669))

(assert (not bm!726068))

(assert (not b!7829758))

(assert (not b!7829495))

(assert (not b!7829049))

(assert (not b!7829444))

(assert (not bm!726069))

(assert (not bm!726044))

(assert (not b!7828860))

(assert (not b!7829435))

(assert (not b!7828948))

(assert (not b!7828993))

(assert (not b!7828630))

(assert (not b!7829473))

(assert (not b!7829841))

(assert (not b!7829030))

(assert (not b!7829171))

(assert (not b!7829365))

(assert (not b!7829453))

(assert (not b!7829256))

(assert (not b!7829283))

(assert (not b!7828947))

(assert (not d!2350705))

(assert (not bm!726086))

(assert (not b!7829543))

(assert (not b!7829179))

(assert (not b!7828875))

(assert (not b!7829656))

(assert (not b!7829512))

(assert (not b!7829503))

(assert (not b!7828735))

(assert (not b!7829773))

(assert (not b!7828563))

(assert (not b!7829181))

(assert (not b!7829808))

(assert (not b!7829701))

(assert (not b!7829437))

(assert (not b!7829327))

(assert (not b!7829818))

(assert (not b!7829513))

(assert (not b!7829215))

(assert (not b!7829497))

(assert (not b!7829765))

(assert (not bm!726099))

(assert (not b!7829177))

(assert (not b!7829169))

(assert (not b!7829832))

(assert (not b!7829139))

(assert (not b!7828475))

(assert (not b!7829804))

(assert (not b!7828489))

(assert (not b!7829343))

(assert (not b!7829673))

(assert (not b!7828997))

(assert (not b!7829093))

(assert (not b!7829524))

(assert (not b!7829572))

(assert (not bm!726060))

(assert (not b!7829182))

(assert (not b!7829318))

(assert (not b!7828971))

(assert (not b!7829055))

(assert (not b!7829220))

(assert (not b!7829381))

(assert (not b!7829814))

(assert (not b!7828877))

(assert (not b!7829705))

(assert (not b!7829737))

(assert (not b!7828808))

(assert (not bm!726084))

(assert (not b!7829247))

(assert (not d!2350753))

(assert (not b!7828965))

(assert (not b!7829063))

(assert (not b!7829622))

(assert (not d!2350787))

(assert (not b!7829125))

(assert (not b!7829785))

(assert (not b!7829284))

(assert (not b!7829003))

(assert (not b!7829228))

(assert (not bm!726138))

(assert (not b!7829657))

(assert (not b!7829722))

(assert (not b!7829094))

(assert (not b!7828988))

(assert (not b!7829359))

(assert (not bm!726042))

(assert (not b!7828885))

(assert (not b!7828904))

(assert (not b!7829548))

(assert (not b!7829424))

(assert (not b!7829420))

(assert (not b!7829173))

(assert (not b!7829732))

(assert (not b!7828932))

(assert (not b!7828944))

(assert (not b!7829449))

(assert (not b!7829098))

(assert (not b!7829507))

(assert (not b!7829429))

(assert (not b!7829640))

(assert (not b!7829311))

(assert (not b!7829071))

(assert (not b!7829091))

(assert (not b!7829340))

(assert (not b!7829315))

(assert (not b!7829712))

(assert (not b!7828952))

(assert (not b!7829629))

(assert (not b!7829493))

(assert (not d!2350655))

(assert (not b!7829645))

(assert (not b!7829274))

(assert (not b!7829086))

(assert (not b!7828989))

(assert (not b!7829151))

(assert (not bm!726048))

(assert (not b!7829292))

(assert (not b!7828698))

(assert (not b!7829564))

(assert (not b!7829276))

(assert (not b!7829360))

(assert (not b!7828979))

(assert (not b!7829073))

(assert (not b!7829263))

(assert (not b!7829320))

(assert (not b!7828826))

(assert (not b!7829700))

(assert (not b!7829736))

(assert (not b!7829383))

(assert (not b!7829165))

(assert (not b!7829770))

(assert (not b!7829576))

(assert (not b!7829608))

(assert (not b!7829282))

(assert (not b!7829846))

(assert (not b!7829296))

(assert (not b!7828931))

(assert (not b!7829682))

(assert (not b!7829127))

(assert (not b!7829246))

(assert (not b!7829407))

(assert (not b!7829824))

(assert (not b!7829501))

(assert (not b!7829117))

(assert (not b!7829788))

(assert (not b!7829456))

(assert (not b!7829134))

(assert (not b!7828600))

(assert (not b!7828961))

(assert (not b!7828624))

(assert (not b!7829174))

(assert (not b!7829162))

(assert (not b!7828939))

(assert (not b!7829303))

(assert (not b!7829531))

(assert (not b!7829175))

(assert (not b!7829083))

(assert (not b!7829634))

(assert (not b!7829364))

(assert (not b!7829105))

(assert (not b!7829348))

(assert (not b!7829844))

(assert (not b!7829471))

(assert (not b!7829275))

(assert (not b!7828983))

(assert (not b!7829666))

(assert (not b!7829367))

(assert (not b!7829451))

(assert (not d!2350759))

(assert (not b!7828653))

(assert (not b!7829433))

(assert (not b!7829015))

(assert (not b!7829095))

(assert (not b!7829749))

(assert (not bm!726141))

(assert (not b!7829624))

(assert (not b!7829625))

(assert (not b!7828857))

(assert (not b!7829025))

(assert (not b!7828843))

(assert (not b!7829648))

(assert (not b!7829720))

(assert (not b!7829019))

(assert (not b!7829389))

(assert (not bm!726110))

(assert (not b!7829286))

(assert (not b!7828643))

(assert (not b!7829004))

(assert (not b!7829178))

(assert (not b!7829032))

(assert (not b!7828900))

(assert (not b!7829618))

(assert (not b!7829541))

(assert (not bm!726087))

(assert (not b!7829812))

(assert (not b!7829078))

(assert (not b!7829632))

(assert (not b!7829411))

(assert (not b!7829664))

(assert (not bm!726079))

(assert (not d!2350745))

(assert (not b!7829081))

(assert (not b!7829322))

(assert (not b!7829379))

(assert (not bm!726080))

(assert (not b!7829153))

(assert (not b!7829595))

(assert (not b!7828795))

(assert (not b!7829697))

(assert (not b!7829334))

(assert (not b!7829443))

(assert (not b!7828949))

(assert (not b!7829461))

(assert (not b!7829254))

(assert (not bm!726124))

(assert (not b!7829372))

(assert (not b!7829828))

(assert (not b!7829552))

(assert (not b!7829121))

(assert (not b!7829829))

(assert (not b!7829332))

(assert (not b!7829796))

(assert (not b!7829349))

(assert (not b!7829677))

(assert (not b!7829579))

(assert (not b!7829307))

(assert (not b!7829102))

(assert (not b!7829395))

(assert (not b!7829810))

(assert (not b!7829580))

(assert (not b!7829409))

(assert (not b!7829690))

(assert (not b!7829300))

(assert (not b!7829167))

(assert (not b!7828879))

(assert (not b!7829684))

(assert (not b!7829561))

(assert (not b!7829099))

(assert (not b!7829764))

(assert (not d!2350693))

(assert (not b!7829201))

(assert (not b!7829074))

(assert (not b!7829672))

(assert (not b!7829230))

(assert (not bm!726140))

(assert (not b!7829231))

(assert (not b!7828929))

(assert (not b!7829412))

(assert (not b!7829405))

(assert (not b!7829621))

(assert (not b!7829046))

(assert (not b!7829571))

(assert (not b!7829836))

(assert (not b!7829504))

(assert (not b!7829399))

(assert (not b!7829681))

(assert (not b!7829840))

(assert (not d!2350723))

(assert (not b!7828951))

(assert (not b!7829428))

(assert (not b!7829628))

(assert (not b!7829674))

(assert (not b!7829591))

(assert (not b!7829750))

(assert (not b!7829553))

(assert (not b!7828881))

(assert (not b!7828701))

(assert (not b!7828836))

(assert (not b!7829205))

(assert (not b!7828692))

(assert (not d!2350727))

(assert (not b!7829806))

(assert (not b!7829698))

(assert (not b!7829326))

(assert (not b!7829001))

(assert (not b!7829310))

(assert (not b!7829393))

(assert (not b!7828976))

(assert (not b!7829067))

(assert (not b!7829272))

(assert (not b!7829563))

(assert (not b!7828907))

(assert (not b!7829146))

(assert (not b!7829069))

(assert (not b!7829234))

(assert (not bm!726043))

(assert (not bm!726148))

(assert (not b!7828665))

(assert (not b!7829191))

(assert (not bm!726089))

(assert (not b!7829336))

(assert (not bm!726098))

(assert (not d!2350639))

(assert (not b!7829440))

(assert (not b!7828913))

(assert (not b!7829533))

(assert (not b!7829547))

(assert (not b!7828628))

(assert (not b!7829477))

(assert (not b!7829592))

(assert (not d!2350757))

(assert (not b!7829202))

(assert (not b!7828945))

(assert (not b!7829421))

(assert (not b!7828981))

(assert (not b!7829441))

(assert (not b!7829539))

(assert (not b!7829331))

(assert (not b!7828700))

(assert (not bm!726066))

(assert (not b!7829347))

(assert (not b!7829597))

(assert (not b!7828908))

(assert (not d!2350781))

(assert (not b!7829813))

(assert (not bm!726121))

(assert (not b!7828672))

(assert (not b!7829050))

(assert (not b!7829523))

(assert (not b!7829355))

(assert (not b!7829467))

(assert (not b!7829702))

(assert (not b!7829721))

(assert (not b!7829404))

(assert (not b!7829266))

(assert (not b!7829299))

(assert (not b!7829464))

(assert (not b!7829669))

(assert (not bm!726146))

(assert (not b!7829537))

(assert (not b!7828972))

(assert (not b!7829557))

(assert (not b!7829726))

(assert (not b!7829612))

(assert (not d!2350681))

(assert (not b!7829448))

(assert (not b!7829488))

(assert (not b!7829087))

(assert (not b!7828578))

(assert (not b!7829685))

(assert (not b!7829351))

(assert (not b!7829101))

(assert (not b!7828884))

(assert (not b!7829157))

(assert (not bm!726111))

(assert (not b!7829054))

(assert (not b!7829118))

(assert (not b!7829106))

(assert (not b!7829551))

(assert (not b!7829109))

(assert (not b!7829155))

(assert (not b!7829242))

(assert (not b!7829384))

(assert (not b!7829290))

(assert (not b!7829141))

(assert (not b!7828933))

(assert (not b!7828695))

(assert (not bm!726045))

(assert (not b!7829197))

(assert (not b!7828724))

(assert (not b!7828940))

(assert (not bm!726050))

(assert (not b!7829291))

(assert (not b!7829692))

(assert (not b!7828652))

(assert (not b!7829670))

(assert (not b!7829609))

(assert (not b!7829781))

(assert (not b!7829754))

(assert (not b!7828859))

(assert (not b!7829252))

(assert (not b!7829387))

(assert (not b!7829239))

(assert (not b!7829465))

(assert (not b!7829616))

(assert (not d!2350709))

(assert (not b!7829569))

(assert (not b!7828876))

(assert (not b!7828529))

(assert (not b!7828892))

(assert (not b!7828486))

(assert (not b!7829782))

(assert (not b!7829688))

(assert (not b!7828683))

(assert (not d!2350685))

(assert (not b!7829431))

(assert (not b!7828851))

(assert (not b!7829338))

(assert (not b!7829034))

(assert (not b!7829017))

(assert (not b!7828507))

(assert (not bm!726135))

(assert (not b!7829166))

(assert (not b!7829479))

(assert (not d!2350691))

(assert (not b!7829485))

(assert (not b!7829062))

(assert (not b!7829617))

(assert (not b!7829357))

(assert (not b!7828992))

(assert (not b!7829149))

(assert (not b!7829045))

(assert (not b!7828779))

(assert (not b!7828959))

(assert (not b!7829757))

(assert (not b!7829637))

(assert (not d!2350789))

(assert (not b!7828985))

(assert (not b!7829373))

(assert (not b!7828927))

(assert (not b!7829509))

(assert (not b!7829396))

(assert (not b!7828549))

(assert (not b!7829419))

(assert (not b!7828697))

(assert (not b!7828848))

(assert (not b!7829306))

(assert (not b!7828861))

(assert (not b!7828646))

(assert (not b!7829689))

(assert (not b!7829279))

(assert (not b!7828731))

(assert (not b!7828901))

(assert (not bm!726115))

(assert (not b!7829380))

(assert (not b!7829038))

(assert (not b!7828845))

(assert (not b!7829777))

(assert (not b!7829636))

(assert (not b!7828987))

(assert (not b!7829481))

(assert (not bm!726142))

(assert (not b!7829762))

(assert (not bm!726072))

(assert (not b!7829830))

(assert (not b!7829115))

(assert (not b!7829119))

(assert (not b!7829521))

(assert (not b!7829111))

(assert (not b!7828853))

(assert (not b!7829708))

(assert (not b!7829606))

(assert (not b!7829369))

(assert (not b!7829029))

(assert (not b!7829605))

(assert (not b!7829240))

(assert (not b!7828865))

(assert (not b!7829798))

(assert (not b!7829652))

(assert (not b!7829271))

(assert (not b!7829729))

(assert (not b!7828977))

(assert (not b!7829324))

(assert (not b!7829195))

(assert (not b!7829133))

(assert (not b!7828957))

(assert (not b!7829222))

(assert (not b!7829143))

(assert (not b!7829376))

(assert (not bm!726058))

(assert (not d!2350761))

(assert (not b!7829238))

(assert (not b!7829344))

(assert (not b!7829377))

(assert (not b!7829053))

(assert (not b!7828867))

(assert (not b!7829005))

(assert (not b!7829278))

(assert (not b!7829642))

(assert (not b!7829769))

(assert (not b!7829037))

(assert (not b!7829525))

(assert (not b!7828936))

(assert (not b!7828855))

(assert (not b!7829633))

(assert (not b!7829491))

(assert (not b!7829600))

(assert (not b!7829662))

(assert (not b!7829587))

(assert (not b!7828905))

(assert (not b!7829248))

(assert (not b!7829042))

(assert (not b!7828911))

(assert (not b!7828923))

(assert (not b!7828943))

(assert (not b!7829268))

(assert (not b!7829436))

(assert (not b!7828928))

(assert (not b!7829255))

(assert (not d!2350747))

(assert (not b!7829260))

(assert (not b!7829368))

(assert (not b!7829075))

(assert (not b!7828679))

(assert (not b!7829417))

(assert (not d!2350645))

(assert (not b!7829661))

(assert (not b!7829487))

(assert (not b!7828916))

(assert (not bm!726051))

(assert (not b!7828921))

(assert (not b!7829129))

(assert (not b!7829413))

(assert (not b!7829363))

(assert (not b!7829227))

(assert (not b!7829226))

(assert (not b!7829388))

(assert (not b!7828920))

(assert (not b!7829833))

(assert (not b!7829717))

(assert (not b!7829170))

(assert (not b!7828591))

(assert (not b!7829280))

(assert (not b!7829805))

(assert (not b!7829028))

(assert (not b!7829126))

(assert (not b!7829741))

(assert (not b!7829267))

(assert (not b!7829208))

(assert (not b!7828844))

(assert (not d!2350729))

(assert (not b!7829790))

(assert (not b!7829085))

(assert (not b!7828500))

(assert (not b!7829559))

(assert (not b!7829713))

(assert (not d!2350769))

(assert (not b!7828960))

(assert (not bm!726113))

(assert (not bm!726116))

(assert (not b!7829730))

(assert (not bm!726125))

(assert (not b!7829147))

(assert (not bm!726076))

(assert (not b!7829585))

(assert (not b!7829319))

(assert (not b!7829520))

(assert (not bm!726061))

(assert (not b!7829459))

(assert (not b!7828868))

(assert (not b!7828732))

(assert (not b!7828999))

(assert (not b!7829150))

(assert (not b!7829753))

(assert (not b!7829826))

(assert (not b!7829371))

(assert (not b!7829036))

(assert (not b!7829335))

(assert (not b!7828924))

(assert (not b!7828587))

(assert (not bm!726106))

(assert (not bm!726096))

(assert (not bm!726074))

(assert (not b!7829186))

(assert (not b!7829023))

(assert (not b!7828645))

(assert (not b!7829716))

(assert (not bm!726082))

(assert (not b!7829185))

(assert (not b!7828804))

(assert (not b!7829780))

(assert (not b!7828774))

(assert (not b!7829016))

(assert (not b!7829212))

(assert (not b!7829820))

(assert (not b!7828909))

(assert (not b!7829138))

(assert (not b!7828869))

(assert (not b!7828967))

(assert (not b!7829500))

(assert (not b!7829809))

(assert (not b!7828969))

(assert (not b!7829658))

(assert (not b!7829845))

(assert (not b!7829013))

(assert (not b!7828888))

(assert (not b!7829159))

(assert (not b!7829198))

(assert (not b!7828895))

(assert (not b!7828963))

(assert (not b!7829575))

(assert (not b!7828615))

(assert (not b!7829258))

(assert (not b!7828552))

(assert (not b!7829714))

(assert (not b!7829511))

(assert (not b!7828756))

(assert (not b!7829706))

(assert (not b!7829375))

(assert (not b!7829567))

(assert (not b!7829251))

(assert (not b!7828919))

(assert (not b!7828899))

(assert (not b!7829789))

(assert (not b!7829432))

(assert (not b!7829536))

(assert (not b!7829793))

(assert (not b!7829834))

(assert (not b!7829668))

(assert (not b!7829654))

(assert (not b!7829187))

(assert (not b!7829601))

(assert (not b!7829314))

(assert (not b!7829792))

(assert (not b!7829817))

(assert (not b!7829583))

(assert tp_is_empty!52263)

(assert (not b!7828642))

(assert (not bm!726070))

(assert (not b!7829131))

(assert (not b!7829193))

(assert (not b!7829584))

(assert (not b!7829000))

(assert (not b!7829802))

(assert (not b!7829033))

(assert (not b!7829330))

(assert (not b!7829613))

(assert (not bm!726057))

(assert (not b!7829588))

(assert (not b!7828871))

(assert (not bm!726105))

(assert (not b!7828786))

(assert (not b!7828763))

(assert (not b!7829142))

(assert (not b!7829772))

(assert (not b!7828707))

(assert (not b!7829113))

(assert (not b!7829304))

(assert (not b!7829475))

(assert (not b!7829079))

(assert (not b!7828530))

(assert (not b!7829270))

(assert (not b!7829161))

(assert (not b!7829123))

(assert (not b!7829051))

(assert (not b!7829516))

(assert (not b!7828525))

(assert (not b!7829020))

(assert (not b!7829302))

(assert (not b!7829725))

(assert (not b!7829653))

(assert (not b!7829610))

(assert (not b!7829012))

(assert (not b!7829517))

(assert (not b!7828995))

(assert (not b!7829122))

(assert (not b!7829154))

(assert (not b!7828670))

(assert (not b!7829626))

(assert (not b!7828722))

(assert (not b!7829218))

(assert (not b!7828752))

(assert (not b!7829341))

(assert (not b!7829135))

(assert (not b!7829778))

(assert (not b!7829008))

(assert (not b!7829385))

(assert (not b!7829641))

(assert (not b!7829145))

(assert (not b!7829527))

(assert (not b!7829097))

(assert (not b!7829784))

(assert (not b!7829768))

(assert (not bm!726132))

(assert (not b!7829114))

(assert (not b!7828968))

(assert (not b!7829232))

(assert (not b!7829427))

(assert (not b!7829190))

(assert (not bm!726094))

(assert (not b!7829455))

(assert (not b!7829694))

(assert (not d!2350739))

(assert (not b!7829837))

(assert (not b!7829089))

(assert (not b!7829774))

(assert (not b!7828847))

(assert (not bm!726137))

(assert (not b!7829469))

(assert (not b!7829724))

(assert (not b!7829734))

(assert (not b!7829614))

(assert (not b!7829794))

(assert (not b!7828964))

(assert (not b!7829801))

(assert (not b!7828897))

(assert (not b!7829581))

(assert (not b!7829678))

(assert (not b!7829416))

(assert (not b!7828639))

(assert (not b!7829544))

(assert (not bm!726062))

(assert (not b!7829704))

(assert (not b!7829298))

(assert (not b!7829696))

(assert (not b!7829505))

(assert (not b!7828856))

(assert (not b!7829556))

(assert (not b!7829194))

(assert (not b!7829748))

(assert (not b!7829728))

(assert (not b!7828915))

(assert (not b!7829423))

(assert (not b!7829620))

(assert (not b!7829646))

(assert (not bm!726092))

(assert (not b!7829457))

(assert (not b!7829294))

(assert (not b!7829452))

(assert (not b!7829259))

(assert (not b!7829838))

(assert (not b!7828891))

(assert (not b!7829604))

(assert (not b!7829264))

(assert (not b!7828887))

(assert (not b!7829577))

(assert (not b!7829288))

(assert (not b!7829460))

(assert (not d!2350721))

(assert (not b!7829766))

(assert (not b!7828953))

(assert (not b!7828518))

(assert (not b!7829761))

(assert (not bm!726104))

(assert (not b!7828656))

(assert (not b!7829250))

(assert (not b!7828840))

(assert (not b!7829515))

(assert (not b!7829041))

(assert (not b!7829447))

(assert (not b!7829244))

(assert (not b!7829206))

(assert (not b!7828935))

(assert (not b!7829356))

(assert (not b!7828912))

(assert (not b!7828973))

(assert (not b!7829057))

(assert (not b!7829816))

(assert (not b!7829776))

(assert (not b!7828872))

(assert (not bm!726101))

(assert (not bm!726081))

(assert (not b!7828815))

(assert (not b!7828880))

(assert (not b!7829665))

(assert (not b!7829224))

(assert (not b!7828893))

(assert (not b!7829549))

(assert (not b!7829110))

(assert (not bm!726052))

(assert (not b!7829756))

(assert (not b!7828496))

(assert (not b!7829082))

(assert (not b!7829821))

(assert (not b!7829746))

(assert (not b!7829740))

(assert (not bm!726047))

(assert (not b!7829499))

(assert (not bm!726128))

(assert (not b!7829602))

(assert (not b!7829287))

(assert (not b!7829660))

(assert (not b!7829599))

(assert (not b!7829199))

(assert (not b!7829107))

(assert (not bm!726063))

(assert (not b!7828744))

(assert (not b!7828725))

(assert (not b!7829323))

(assert (not b!7829560))

(assert (not b!7829130))

(assert (not b!7829066))

(assert (not b!7829308))

(assert (not b!7829295))

(assert (not b!7829077))

(assert (not d!2350699))

(assert (not b!7829476))

(assert (not b!7829216))

(assert (not b!7828466))

(assert (not b!7829718))

(assert (not b!7829649))

(assert (not b!7829210))

(assert (not b!7829009))

(assert (not b!7829492))

(assert (not b!7829825))

(assert (not b!7829058))

(assert (not b!7829027))

(assert (not b!7829709))

(assert (not bm!726134))

(assert (not b!7829401))

(assert (not b!7829638))

(assert (not b!7829528))

(assert (not b!7829540))

(assert (not b!7828459))

(assert (not bm!726054))

(assert (not b!7829211))

(assert (not b!7829236))

(assert (not b!7829496))

(assert (not b!7829842))

(assert (not b!7828708))

(assert (not b!7829392))

(assert (not bm!726122))

(assert (not b!7829650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

