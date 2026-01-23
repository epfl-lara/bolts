; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733778 () Bool)

(assert start!733778)

(declare-fun b!7617121 () Bool)

(assert (=> b!7617121 true))

(assert (=> b!7617121 true))

(declare-fun b!7617118 () Bool)

(declare-fun e!4529598 () Bool)

(declare-datatypes ((C!40898 0))(
  ( (C!40899 (val!30889 Int)) )
))
(declare-datatypes ((Regex!20286 0))(
  ( (ElementMatch!20286 (c!1403951 C!40898)) (Concat!29131 (regOne!41084 Regex!20286) (regTwo!41084 Regex!20286)) (EmptyExpr!20286) (Star!20286 (reg!20615 Regex!20286)) (EmptyLang!20286) (Union!20286 (regOne!41085 Regex!20286) (regTwo!41085 Regex!20286)) )
))
(declare-fun lt!2655671 () Regex!20286)

(declare-fun validRegex!10706 (Regex!20286) Bool)

(assert (=> b!7617118 (= e!4529598 (validRegex!10706 lt!2655671))))

(declare-datatypes ((List!73139 0))(
  ( (Nil!73015) (Cons!73015 (h!79463 C!40898) (t!387874 List!73139)) )
))
(declare-datatypes ((tuple2!69134 0))(
  ( (tuple2!69135 (_1!37870 List!73139) (_2!37870 List!73139)) )
))
(declare-fun lt!2655673 () tuple2!69134)

(declare-fun matchR!9793 (Regex!20286 List!73139) Bool)

(declare-fun ++!17596 (List!73139 List!73139) List!73139)

(assert (=> b!7617118 (matchR!9793 lt!2655671 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673)))))

(declare-fun r!14126 () Regex!20286)

(assert (=> b!7617118 (= lt!2655671 (Concat!29131 (reg!20615 r!14126) r!14126))))

(declare-datatypes ((Unit!167404 0))(
  ( (Unit!167405) )
))
(declare-fun lt!2655668 () Unit!167404)

(declare-fun s!9605 () List!73139)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!113 (Regex!20286 Regex!20286 List!73139 List!73139 List!73139) Unit!167404)

(assert (=> b!7617118 (= lt!2655668 (lemmaFindSeparationIsDefinedThenConcatMatches!113 (reg!20615 r!14126) r!14126 (_1!37870 lt!2655673) (_2!37870 lt!2655673) s!9605))))

(declare-fun b!7617119 () Bool)

(declare-fun e!4529596 () Bool)

(declare-fun tp!2224325 () Bool)

(declare-fun tp!2224324 () Bool)

(assert (=> b!7617119 (= e!4529596 (and tp!2224325 tp!2224324))))

(declare-fun b!7617120 () Bool)

(declare-fun res!3049323 () Bool)

(declare-fun e!4529595 () Bool)

(assert (=> b!7617120 (=> (not res!3049323) (not e!4529595))))

(assert (=> b!7617120 (= res!3049323 (and (not (is-EmptyExpr!20286 r!14126)) (not (is-EmptyLang!20286 r!14126)) (not (is-ElementMatch!20286 r!14126)) (not (is-Union!20286 r!14126)) (is-Star!20286 r!14126)))))

(declare-fun b!7617122 () Bool)

(declare-fun tp!2224323 () Bool)

(declare-fun tp!2224321 () Bool)

(assert (=> b!7617122 (= e!4529596 (and tp!2224323 tp!2224321))))

(declare-fun b!7617123 () Bool)

(declare-fun e!4529594 () Bool)

(declare-fun tp_is_empty!50927 () Bool)

(declare-fun tp!2224320 () Bool)

(assert (=> b!7617123 (= e!4529594 (and tp_is_empty!50927 tp!2224320))))

(declare-fun b!7617124 () Bool)

(declare-fun e!4529597 () Bool)

(assert (=> b!7617124 (= e!4529597 e!4529598)))

(declare-fun res!3049325 () Bool)

(assert (=> b!7617124 (=> res!3049325 e!4529598)))

(assert (=> b!7617124 (= res!3049325 (matchR!9793 r!14126 s!9605))))

(declare-fun matchRSpec!4485 (Regex!20286 List!73139) Bool)

(assert (=> b!7617124 (= (matchR!9793 r!14126 (_2!37870 lt!2655673)) (matchRSpec!4485 r!14126 (_2!37870 lt!2655673)))))

(declare-fun lt!2655667 () Unit!167404)

(declare-fun mainMatchTheorem!4479 (Regex!20286 List!73139) Unit!167404)

(assert (=> b!7617124 (= lt!2655667 (mainMatchTheorem!4479 r!14126 (_2!37870 lt!2655673)))))

(assert (=> b!7617124 (= (matchR!9793 (reg!20615 r!14126) (_1!37870 lt!2655673)) (matchRSpec!4485 (reg!20615 r!14126) (_1!37870 lt!2655673)))))

(declare-fun lt!2655672 () Unit!167404)

(assert (=> b!7617124 (= lt!2655672 (mainMatchTheorem!4479 (reg!20615 r!14126) (_1!37870 lt!2655673)))))

(declare-datatypes ((Option!17361 0))(
  ( (None!17360) (Some!17360 (v!54495 tuple2!69134)) )
))
(declare-fun lt!2655669 () Option!17361)

(declare-fun get!25741 (Option!17361) tuple2!69134)

(assert (=> b!7617124 (= lt!2655673 (get!25741 lt!2655669))))

(declare-fun b!7617125 () Bool)

(declare-fun tp!2224322 () Bool)

(assert (=> b!7617125 (= e!4529596 tp!2224322)))

(declare-fun b!7617126 () Bool)

(assert (=> b!7617126 (= e!4529596 tp_is_empty!50927)))

(declare-fun b!7617127 () Bool)

(declare-fun res!3049324 () Bool)

(assert (=> b!7617127 (=> (not res!3049324) (not e!4529595))))

(declare-fun isEmpty!41626 (List!73139) Bool)

(assert (=> b!7617127 (= res!3049324 (not (isEmpty!41626 s!9605)))))

(assert (=> b!7617121 (= e!4529595 (not e!4529597))))

(declare-fun res!3049326 () Bool)

(assert (=> b!7617121 (=> res!3049326 e!4529597)))

(declare-fun lt!2655670 () Bool)

(assert (=> b!7617121 (= res!3049326 (not lt!2655670))))

(declare-fun lambda!468192 () Int)

(declare-fun Exists!4442 (Int) Bool)

(assert (=> b!7617121 (= lt!2655670 (Exists!4442 lambda!468192))))

(declare-fun isDefined!13977 (Option!17361) Bool)

(assert (=> b!7617121 (= lt!2655670 (isDefined!13977 lt!2655669))))

(declare-fun findConcatSeparation!3391 (Regex!20286 Regex!20286 List!73139 List!73139 List!73139) Option!17361)

(assert (=> b!7617121 (= lt!2655669 (findConcatSeparation!3391 (reg!20615 r!14126) r!14126 Nil!73015 s!9605 s!9605))))

(declare-fun lt!2655674 () Unit!167404)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3149 (Regex!20286 Regex!20286 List!73139) Unit!167404)

(assert (=> b!7617121 (= lt!2655674 (lemmaFindConcatSeparationEquivalentToExists!3149 (reg!20615 r!14126) r!14126 s!9605))))

(declare-fun res!3049327 () Bool)

(assert (=> start!733778 (=> (not res!3049327) (not e!4529595))))

(assert (=> start!733778 (= res!3049327 (validRegex!10706 r!14126))))

(assert (=> start!733778 e!4529595))

(assert (=> start!733778 e!4529596))

(assert (=> start!733778 e!4529594))

(assert (= (and start!733778 res!3049327) b!7617120))

(assert (= (and b!7617120 res!3049323) b!7617127))

(assert (= (and b!7617127 res!3049324) b!7617121))

(assert (= (and b!7617121 (not res!3049326)) b!7617124))

(assert (= (and b!7617124 (not res!3049325)) b!7617118))

(assert (= (and start!733778 (is-ElementMatch!20286 r!14126)) b!7617126))

(assert (= (and start!733778 (is-Concat!29131 r!14126)) b!7617119))

(assert (= (and start!733778 (is-Star!20286 r!14126)) b!7617125))

(assert (= (and start!733778 (is-Union!20286 r!14126)) b!7617122))

(assert (= (and start!733778 (is-Cons!73015 s!9605)) b!7617123))

(declare-fun m!8150234 () Bool)

(assert (=> start!733778 m!8150234))

(declare-fun m!8150236 () Bool)

(assert (=> b!7617127 m!8150236))

(declare-fun m!8150238 () Bool)

(assert (=> b!7617121 m!8150238))

(declare-fun m!8150240 () Bool)

(assert (=> b!7617121 m!8150240))

(declare-fun m!8150242 () Bool)

(assert (=> b!7617121 m!8150242))

(declare-fun m!8150244 () Bool)

(assert (=> b!7617121 m!8150244))

(declare-fun m!8150246 () Bool)

(assert (=> b!7617124 m!8150246))

(declare-fun m!8150248 () Bool)

(assert (=> b!7617124 m!8150248))

(declare-fun m!8150250 () Bool)

(assert (=> b!7617124 m!8150250))

(declare-fun m!8150252 () Bool)

(assert (=> b!7617124 m!8150252))

(declare-fun m!8150254 () Bool)

(assert (=> b!7617124 m!8150254))

(declare-fun m!8150256 () Bool)

(assert (=> b!7617124 m!8150256))

(declare-fun m!8150258 () Bool)

(assert (=> b!7617124 m!8150258))

(declare-fun m!8150260 () Bool)

(assert (=> b!7617124 m!8150260))

(declare-fun m!8150262 () Bool)

(assert (=> b!7617118 m!8150262))

(declare-fun m!8150264 () Bool)

(assert (=> b!7617118 m!8150264))

(assert (=> b!7617118 m!8150264))

(declare-fun m!8150266 () Bool)

(assert (=> b!7617118 m!8150266))

(declare-fun m!8150268 () Bool)

(assert (=> b!7617118 m!8150268))

(push 1)

(assert (not b!7617118))

(assert (not b!7617119))

(assert (not b!7617122))

(assert (not start!733778))

(assert (not b!7617123))

(assert (not b!7617124))

(assert (not b!7617127))

(assert tp_is_empty!50927)

(assert (not b!7617121))

(assert (not b!7617125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1403958 () Bool)

(declare-fun c!1403957 () Bool)

(declare-fun bm!699676 () Bool)

(declare-fun call!699682 () Bool)

(assert (=> bm!699676 (= call!699682 (validRegex!10706 (ite c!1403958 (reg!20615 r!14126) (ite c!1403957 (regOne!41085 r!14126) (regOne!41084 r!14126)))))))

(declare-fun bm!699677 () Bool)

(declare-fun call!699683 () Bool)

(assert (=> bm!699677 (= call!699683 (validRegex!10706 (ite c!1403957 (regTwo!41085 r!14126) (regTwo!41084 r!14126))))))

(declare-fun bm!699678 () Bool)

(declare-fun call!699681 () Bool)

(assert (=> bm!699678 (= call!699681 call!699682)))

(declare-fun b!7617188 () Bool)

(declare-fun e!4529635 () Bool)

(declare-fun e!4529631 () Bool)

(assert (=> b!7617188 (= e!4529635 e!4529631)))

(declare-fun res!3049360 () Bool)

(assert (=> b!7617188 (=> (not res!3049360) (not e!4529631))))

(assert (=> b!7617188 (= res!3049360 call!699681)))

(declare-fun b!7617189 () Bool)

(declare-fun e!4529636 () Bool)

(declare-fun e!4529634 () Bool)

(assert (=> b!7617189 (= e!4529636 e!4529634)))

(assert (=> b!7617189 (= c!1403958 (is-Star!20286 r!14126))))

(declare-fun b!7617190 () Bool)

(declare-fun e!4529632 () Bool)

(assert (=> b!7617190 (= e!4529634 e!4529632)))

(assert (=> b!7617190 (= c!1403957 (is-Union!20286 r!14126))))

(declare-fun b!7617191 () Bool)

(declare-fun e!4529630 () Bool)

(assert (=> b!7617191 (= e!4529634 e!4529630)))

(declare-fun res!3049358 () Bool)

(declare-fun nullable!8867 (Regex!20286) Bool)

(assert (=> b!7617191 (= res!3049358 (not (nullable!8867 (reg!20615 r!14126))))))

(assert (=> b!7617191 (=> (not res!3049358) (not e!4529630))))

(declare-fun d!2322783 () Bool)

(declare-fun res!3049361 () Bool)

(assert (=> d!2322783 (=> res!3049361 e!4529636)))

(assert (=> d!2322783 (= res!3049361 (is-ElementMatch!20286 r!14126))))

(assert (=> d!2322783 (= (validRegex!10706 r!14126) e!4529636)))

(declare-fun b!7617192 () Bool)

(declare-fun res!3049359 () Bool)

(assert (=> b!7617192 (=> res!3049359 e!4529635)))

(assert (=> b!7617192 (= res!3049359 (not (is-Concat!29131 r!14126)))))

(assert (=> b!7617192 (= e!4529632 e!4529635)))

(declare-fun b!7617193 () Bool)

(declare-fun res!3049357 () Bool)

(declare-fun e!4529633 () Bool)

(assert (=> b!7617193 (=> (not res!3049357) (not e!4529633))))

(assert (=> b!7617193 (= res!3049357 call!699681)))

(assert (=> b!7617193 (= e!4529632 e!4529633)))

(declare-fun b!7617194 () Bool)

(assert (=> b!7617194 (= e!4529631 call!699683)))

(declare-fun b!7617195 () Bool)

(assert (=> b!7617195 (= e!4529633 call!699683)))

(declare-fun b!7617196 () Bool)

(assert (=> b!7617196 (= e!4529630 call!699682)))

(assert (= (and d!2322783 (not res!3049361)) b!7617189))

(assert (= (and b!7617189 c!1403958) b!7617191))

(assert (= (and b!7617189 (not c!1403958)) b!7617190))

(assert (= (and b!7617191 res!3049358) b!7617196))

(assert (= (and b!7617190 c!1403957) b!7617193))

(assert (= (and b!7617190 (not c!1403957)) b!7617192))

(assert (= (and b!7617193 res!3049357) b!7617195))

(assert (= (and b!7617192 (not res!3049359)) b!7617188))

(assert (= (and b!7617188 res!3049360) b!7617194))

(assert (= (or b!7617193 b!7617188) bm!699678))

(assert (= (or b!7617195 b!7617194) bm!699677))

(assert (= (or b!7617196 bm!699678) bm!699676))

(declare-fun m!8150310 () Bool)

(assert (=> bm!699676 m!8150310))

(declare-fun m!8150312 () Bool)

(assert (=> bm!699677 m!8150312))

(declare-fun m!8150314 () Bool)

(assert (=> b!7617191 m!8150314))

(assert (=> start!733778 d!2322783))

(declare-fun b!7617225 () Bool)

(declare-fun e!4529655 () Bool)

(declare-fun lt!2655701 () Bool)

(assert (=> b!7617225 (= e!4529655 (not lt!2655701))))

(declare-fun b!7617226 () Bool)

(declare-fun e!4529653 () Bool)

(declare-fun call!699686 () Bool)

(assert (=> b!7617226 (= e!4529653 (= lt!2655701 call!699686))))

(declare-fun b!7617227 () Bool)

(declare-fun res!3049384 () Bool)

(declare-fun e!4529657 () Bool)

(assert (=> b!7617227 (=> res!3049384 e!4529657)))

(declare-fun e!4529652 () Bool)

(assert (=> b!7617227 (= res!3049384 e!4529652)))

(declare-fun res!3049381 () Bool)

(assert (=> b!7617227 (=> (not res!3049381) (not e!4529652))))

(assert (=> b!7617227 (= res!3049381 lt!2655701)))

(declare-fun b!7617228 () Bool)

(declare-fun res!3049382 () Bool)

(assert (=> b!7617228 (=> res!3049382 e!4529657)))

(assert (=> b!7617228 (= res!3049382 (not (is-ElementMatch!20286 r!14126)))))

(assert (=> b!7617228 (= e!4529655 e!4529657)))

(declare-fun b!7617229 () Bool)

(declare-fun e!4529656 () Bool)

(declare-fun e!4529654 () Bool)

(assert (=> b!7617229 (= e!4529656 e!4529654)))

(declare-fun res!3049379 () Bool)

(assert (=> b!7617229 (=> res!3049379 e!4529654)))

(assert (=> b!7617229 (= res!3049379 call!699686)))

(declare-fun b!7617230 () Bool)

(assert (=> b!7617230 (= e!4529653 e!4529655)))

(declare-fun c!1403966 () Bool)

(assert (=> b!7617230 (= c!1403966 (is-EmptyLang!20286 r!14126))))

(declare-fun b!7617231 () Bool)

(declare-fun res!3049380 () Bool)

(assert (=> b!7617231 (=> (not res!3049380) (not e!4529652))))

(assert (=> b!7617231 (= res!3049380 (not call!699686))))

(declare-fun bm!699681 () Bool)

(assert (=> bm!699681 (= call!699686 (isEmpty!41626 s!9605))))

(declare-fun b!7617232 () Bool)

(declare-fun head!15647 (List!73139) C!40898)

(assert (=> b!7617232 (= e!4529654 (not (= (head!15647 s!9605) (c!1403951 r!14126))))))

(declare-fun b!7617233 () Bool)

(declare-fun res!3049385 () Bool)

(assert (=> b!7617233 (=> (not res!3049385) (not e!4529652))))

(declare-fun tail!15187 (List!73139) List!73139)

(assert (=> b!7617233 (= res!3049385 (isEmpty!41626 (tail!15187 s!9605)))))

(declare-fun b!7617234 () Bool)

(declare-fun e!4529651 () Bool)

(assert (=> b!7617234 (= e!4529651 (nullable!8867 r!14126))))

(declare-fun b!7617235 () Bool)

(assert (=> b!7617235 (= e!4529652 (= (head!15647 s!9605) (c!1403951 r!14126)))))

(declare-fun b!7617236 () Bool)

(declare-fun derivativeStep!5847 (Regex!20286 C!40898) Regex!20286)

(assert (=> b!7617236 (= e!4529651 (matchR!9793 (derivativeStep!5847 r!14126 (head!15647 s!9605)) (tail!15187 s!9605)))))

(declare-fun b!7617237 () Bool)

(assert (=> b!7617237 (= e!4529657 e!4529656)))

(declare-fun res!3049383 () Bool)

(assert (=> b!7617237 (=> (not res!3049383) (not e!4529656))))

(assert (=> b!7617237 (= res!3049383 (not lt!2655701))))

(declare-fun d!2322791 () Bool)

(assert (=> d!2322791 e!4529653))

(declare-fun c!1403965 () Bool)

(assert (=> d!2322791 (= c!1403965 (is-EmptyExpr!20286 r!14126))))

(assert (=> d!2322791 (= lt!2655701 e!4529651)))

(declare-fun c!1403967 () Bool)

(assert (=> d!2322791 (= c!1403967 (isEmpty!41626 s!9605))))

(assert (=> d!2322791 (validRegex!10706 r!14126)))

(assert (=> d!2322791 (= (matchR!9793 r!14126 s!9605) lt!2655701)))

(declare-fun b!7617238 () Bool)

(declare-fun res!3049378 () Bool)

(assert (=> b!7617238 (=> res!3049378 e!4529654)))

(assert (=> b!7617238 (= res!3049378 (not (isEmpty!41626 (tail!15187 s!9605))))))

(assert (= (and d!2322791 c!1403967) b!7617234))

(assert (= (and d!2322791 (not c!1403967)) b!7617236))

(assert (= (and d!2322791 c!1403965) b!7617226))

(assert (= (and d!2322791 (not c!1403965)) b!7617230))

(assert (= (and b!7617230 c!1403966) b!7617225))

(assert (= (and b!7617230 (not c!1403966)) b!7617228))

(assert (= (and b!7617228 (not res!3049382)) b!7617227))

(assert (= (and b!7617227 res!3049381) b!7617231))

(assert (= (and b!7617231 res!3049380) b!7617233))

(assert (= (and b!7617233 res!3049385) b!7617235))

(assert (= (and b!7617227 (not res!3049384)) b!7617237))

(assert (= (and b!7617237 res!3049383) b!7617229))

(assert (= (and b!7617229 (not res!3049379)) b!7617238))

(assert (= (and b!7617238 (not res!3049378)) b!7617232))

(assert (= (or b!7617226 b!7617231 b!7617229) bm!699681))

(declare-fun m!8150316 () Bool)

(assert (=> b!7617232 m!8150316))

(assert (=> b!7617235 m!8150316))

(declare-fun m!8150318 () Bool)

(assert (=> b!7617233 m!8150318))

(assert (=> b!7617233 m!8150318))

(declare-fun m!8150320 () Bool)

(assert (=> b!7617233 m!8150320))

(declare-fun m!8150322 () Bool)

(assert (=> b!7617234 m!8150322))

(assert (=> d!2322791 m!8150236))

(assert (=> d!2322791 m!8150234))

(assert (=> b!7617236 m!8150316))

(assert (=> b!7617236 m!8150316))

(declare-fun m!8150324 () Bool)

(assert (=> b!7617236 m!8150324))

(assert (=> b!7617236 m!8150318))

(assert (=> b!7617236 m!8150324))

(assert (=> b!7617236 m!8150318))

(declare-fun m!8150326 () Bool)

(assert (=> b!7617236 m!8150326))

(assert (=> b!7617238 m!8150318))

(assert (=> b!7617238 m!8150318))

(assert (=> b!7617238 m!8150320))

(assert (=> bm!699681 m!8150236))

(assert (=> b!7617124 d!2322791))

(declare-fun bs!1943023 () Bool)

(declare-fun b!7617307 () Bool)

(assert (= bs!1943023 (and b!7617307 b!7617121)))

(declare-fun lambda!468200 () Int)

(assert (=> bs!1943023 (not (= lambda!468200 lambda!468192))))

(assert (=> b!7617307 true))

(assert (=> b!7617307 true))

(declare-fun bs!1943024 () Bool)

(declare-fun b!7617302 () Bool)

(assert (= bs!1943024 (and b!7617302 b!7617121)))

(declare-fun lambda!468201 () Int)

(assert (=> bs!1943024 (not (= lambda!468201 lambda!468192))))

(declare-fun bs!1943025 () Bool)

(assert (= bs!1943025 (and b!7617302 b!7617307)))

(assert (=> bs!1943025 (not (= lambda!468201 lambda!468200))))

(assert (=> b!7617302 true))

(assert (=> b!7617302 true))

(declare-fun b!7617298 () Bool)

(declare-fun e!4529693 () Bool)

(assert (=> b!7617298 (= e!4529693 (matchRSpec!4485 (regTwo!41085 r!14126) (_2!37870 lt!2655673)))))

(declare-fun b!7617299 () Bool)

(declare-fun e!4529697 () Bool)

(assert (=> b!7617299 (= e!4529697 (= (_2!37870 lt!2655673) (Cons!73015 (c!1403951 r!14126) Nil!73015)))))

(declare-fun b!7617301 () Bool)

(declare-fun c!1403982 () Bool)

(assert (=> b!7617301 (= c!1403982 (is-Union!20286 r!14126))))

(declare-fun e!4529691 () Bool)

(assert (=> b!7617301 (= e!4529697 e!4529691)))

(declare-fun e!4529692 () Bool)

(declare-fun call!699692 () Bool)

(assert (=> b!7617302 (= e!4529692 call!699692)))

(declare-fun c!1403983 () Bool)

(declare-fun bm!699686 () Bool)

(assert (=> bm!699686 (= call!699692 (Exists!4442 (ite c!1403983 lambda!468200 lambda!468201)))))

(declare-fun bm!699687 () Bool)

(declare-fun call!699691 () Bool)

(assert (=> bm!699687 (= call!699691 (isEmpty!41626 (_2!37870 lt!2655673)))))

(declare-fun d!2322793 () Bool)

(declare-fun c!1403985 () Bool)

(assert (=> d!2322793 (= c!1403985 (is-EmptyExpr!20286 r!14126))))

(declare-fun e!4529694 () Bool)

(assert (=> d!2322793 (= (matchRSpec!4485 r!14126 (_2!37870 lt!2655673)) e!4529694)))

(declare-fun b!7617300 () Bool)

(assert (=> b!7617300 (= e!4529691 e!4529692)))

(assert (=> b!7617300 (= c!1403983 (is-Star!20286 r!14126))))

(declare-fun b!7617303 () Bool)

(assert (=> b!7617303 (= e!4529694 call!699691)))

(declare-fun b!7617304 () Bool)

(declare-fun c!1403984 () Bool)

(assert (=> b!7617304 (= c!1403984 (is-ElementMatch!20286 r!14126))))

(declare-fun e!4529695 () Bool)

(assert (=> b!7617304 (= e!4529695 e!4529697)))

(declare-fun b!7617305 () Bool)

(assert (=> b!7617305 (= e!4529691 e!4529693)))

(declare-fun res!3049418 () Bool)

(assert (=> b!7617305 (= res!3049418 (matchRSpec!4485 (regOne!41085 r!14126) (_2!37870 lt!2655673)))))

(assert (=> b!7617305 (=> res!3049418 e!4529693)))

(declare-fun b!7617306 () Bool)

(declare-fun res!3049417 () Bool)

(declare-fun e!4529696 () Bool)

(assert (=> b!7617306 (=> res!3049417 e!4529696)))

(assert (=> b!7617306 (= res!3049417 call!699691)))

(assert (=> b!7617306 (= e!4529692 e!4529696)))

(assert (=> b!7617307 (= e!4529696 call!699692)))

(declare-fun b!7617308 () Bool)

(assert (=> b!7617308 (= e!4529694 e!4529695)))

(declare-fun res!3049419 () Bool)

(assert (=> b!7617308 (= res!3049419 (not (is-EmptyLang!20286 r!14126)))))

(assert (=> b!7617308 (=> (not res!3049419) (not e!4529695))))

(assert (= (and d!2322793 c!1403985) b!7617303))

(assert (= (and d!2322793 (not c!1403985)) b!7617308))

(assert (= (and b!7617308 res!3049419) b!7617304))

(assert (= (and b!7617304 c!1403984) b!7617299))

(assert (= (and b!7617304 (not c!1403984)) b!7617301))

(assert (= (and b!7617301 c!1403982) b!7617305))

(assert (= (and b!7617301 (not c!1403982)) b!7617300))

(assert (= (and b!7617305 (not res!3049418)) b!7617298))

(assert (= (and b!7617300 c!1403983) b!7617306))

(assert (= (and b!7617300 (not c!1403983)) b!7617302))

(assert (= (and b!7617306 (not res!3049417)) b!7617307))

(assert (= (or b!7617307 b!7617302) bm!699686))

(assert (= (or b!7617303 b!7617306) bm!699687))

(declare-fun m!8150344 () Bool)

(assert (=> b!7617298 m!8150344))

(declare-fun m!8150348 () Bool)

(assert (=> bm!699686 m!8150348))

(declare-fun m!8150350 () Bool)

(assert (=> bm!699687 m!8150350))

(declare-fun m!8150352 () Bool)

(assert (=> b!7617305 m!8150352))

(assert (=> b!7617124 d!2322793))

(declare-fun b!7617309 () Bool)

(declare-fun e!4529702 () Bool)

(declare-fun lt!2655711 () Bool)

(assert (=> b!7617309 (= e!4529702 (not lt!2655711))))

(declare-fun b!7617310 () Bool)

(declare-fun e!4529700 () Bool)

(declare-fun call!699693 () Bool)

(assert (=> b!7617310 (= e!4529700 (= lt!2655711 call!699693))))

(declare-fun b!7617311 () Bool)

(declare-fun res!3049426 () Bool)

(declare-fun e!4529704 () Bool)

(assert (=> b!7617311 (=> res!3049426 e!4529704)))

(declare-fun e!4529699 () Bool)

(assert (=> b!7617311 (= res!3049426 e!4529699)))

(declare-fun res!3049423 () Bool)

(assert (=> b!7617311 (=> (not res!3049423) (not e!4529699))))

(assert (=> b!7617311 (= res!3049423 lt!2655711)))

(declare-fun b!7617312 () Bool)

(declare-fun res!3049424 () Bool)

(assert (=> b!7617312 (=> res!3049424 e!4529704)))

(assert (=> b!7617312 (= res!3049424 (not (is-ElementMatch!20286 (reg!20615 r!14126))))))

(assert (=> b!7617312 (= e!4529702 e!4529704)))

(declare-fun b!7617313 () Bool)

(declare-fun e!4529703 () Bool)

(declare-fun e!4529701 () Bool)

(assert (=> b!7617313 (= e!4529703 e!4529701)))

(declare-fun res!3049421 () Bool)

(assert (=> b!7617313 (=> res!3049421 e!4529701)))

(assert (=> b!7617313 (= res!3049421 call!699693)))

(declare-fun b!7617314 () Bool)

(assert (=> b!7617314 (= e!4529700 e!4529702)))

(declare-fun c!1403987 () Bool)

(assert (=> b!7617314 (= c!1403987 (is-EmptyLang!20286 (reg!20615 r!14126)))))

(declare-fun b!7617315 () Bool)

(declare-fun res!3049422 () Bool)

(assert (=> b!7617315 (=> (not res!3049422) (not e!4529699))))

(assert (=> b!7617315 (= res!3049422 (not call!699693))))

(declare-fun bm!699688 () Bool)

(assert (=> bm!699688 (= call!699693 (isEmpty!41626 (_1!37870 lt!2655673)))))

(declare-fun b!7617316 () Bool)

(assert (=> b!7617316 (= e!4529701 (not (= (head!15647 (_1!37870 lt!2655673)) (c!1403951 (reg!20615 r!14126)))))))

(declare-fun b!7617317 () Bool)

(declare-fun res!3049427 () Bool)

(assert (=> b!7617317 (=> (not res!3049427) (not e!4529699))))

(assert (=> b!7617317 (= res!3049427 (isEmpty!41626 (tail!15187 (_1!37870 lt!2655673))))))

(declare-fun b!7617318 () Bool)

(declare-fun e!4529698 () Bool)

(assert (=> b!7617318 (= e!4529698 (nullable!8867 (reg!20615 r!14126)))))

(declare-fun b!7617319 () Bool)

(assert (=> b!7617319 (= e!4529699 (= (head!15647 (_1!37870 lt!2655673)) (c!1403951 (reg!20615 r!14126))))))

(declare-fun b!7617320 () Bool)

(assert (=> b!7617320 (= e!4529698 (matchR!9793 (derivativeStep!5847 (reg!20615 r!14126) (head!15647 (_1!37870 lt!2655673))) (tail!15187 (_1!37870 lt!2655673))))))

(declare-fun b!7617321 () Bool)

(assert (=> b!7617321 (= e!4529704 e!4529703)))

(declare-fun res!3049425 () Bool)

(assert (=> b!7617321 (=> (not res!3049425) (not e!4529703))))

(assert (=> b!7617321 (= res!3049425 (not lt!2655711))))

(declare-fun d!2322795 () Bool)

(assert (=> d!2322795 e!4529700))

(declare-fun c!1403986 () Bool)

(assert (=> d!2322795 (= c!1403986 (is-EmptyExpr!20286 (reg!20615 r!14126)))))

(assert (=> d!2322795 (= lt!2655711 e!4529698)))

(declare-fun c!1403988 () Bool)

(assert (=> d!2322795 (= c!1403988 (isEmpty!41626 (_1!37870 lt!2655673)))))

(assert (=> d!2322795 (validRegex!10706 (reg!20615 r!14126))))

(assert (=> d!2322795 (= (matchR!9793 (reg!20615 r!14126) (_1!37870 lt!2655673)) lt!2655711)))

(declare-fun b!7617322 () Bool)

(declare-fun res!3049420 () Bool)

(assert (=> b!7617322 (=> res!3049420 e!4529701)))

(assert (=> b!7617322 (= res!3049420 (not (isEmpty!41626 (tail!15187 (_1!37870 lt!2655673)))))))

(assert (= (and d!2322795 c!1403988) b!7617318))

(assert (= (and d!2322795 (not c!1403988)) b!7617320))

(assert (= (and d!2322795 c!1403986) b!7617310))

(assert (= (and d!2322795 (not c!1403986)) b!7617314))

(assert (= (and b!7617314 c!1403987) b!7617309))

(assert (= (and b!7617314 (not c!1403987)) b!7617312))

(assert (= (and b!7617312 (not res!3049424)) b!7617311))

(assert (= (and b!7617311 res!3049423) b!7617315))

(assert (= (and b!7617315 res!3049422) b!7617317))

(assert (= (and b!7617317 res!3049427) b!7617319))

(assert (= (and b!7617311 (not res!3049426)) b!7617321))

(assert (= (and b!7617321 res!3049425) b!7617313))

(assert (= (and b!7617313 (not res!3049421)) b!7617322))

(assert (= (and b!7617322 (not res!3049420)) b!7617316))

(assert (= (or b!7617310 b!7617315 b!7617313) bm!699688))

(declare-fun m!8150358 () Bool)

(assert (=> b!7617316 m!8150358))

(assert (=> b!7617319 m!8150358))

(declare-fun m!8150360 () Bool)

(assert (=> b!7617317 m!8150360))

(assert (=> b!7617317 m!8150360))

(declare-fun m!8150362 () Bool)

(assert (=> b!7617317 m!8150362))

(assert (=> b!7617318 m!8150314))

(declare-fun m!8150364 () Bool)

(assert (=> d!2322795 m!8150364))

(declare-fun m!8150366 () Bool)

(assert (=> d!2322795 m!8150366))

(assert (=> b!7617320 m!8150358))

(assert (=> b!7617320 m!8150358))

(declare-fun m!8150368 () Bool)

(assert (=> b!7617320 m!8150368))

(assert (=> b!7617320 m!8150360))

(assert (=> b!7617320 m!8150368))

(assert (=> b!7617320 m!8150360))

(declare-fun m!8150370 () Bool)

(assert (=> b!7617320 m!8150370))

(assert (=> b!7617322 m!8150360))

(assert (=> b!7617322 m!8150360))

(assert (=> b!7617322 m!8150362))

(assert (=> bm!699688 m!8150364))

(assert (=> b!7617124 d!2322795))

(declare-fun d!2322799 () Bool)

(assert (=> d!2322799 (= (matchR!9793 (reg!20615 r!14126) (_1!37870 lt!2655673)) (matchRSpec!4485 (reg!20615 r!14126) (_1!37870 lt!2655673)))))

(declare-fun lt!2655714 () Unit!167404)

(declare-fun choose!58759 (Regex!20286 List!73139) Unit!167404)

(assert (=> d!2322799 (= lt!2655714 (choose!58759 (reg!20615 r!14126) (_1!37870 lt!2655673)))))

(assert (=> d!2322799 (validRegex!10706 (reg!20615 r!14126))))

(assert (=> d!2322799 (= (mainMatchTheorem!4479 (reg!20615 r!14126) (_1!37870 lt!2655673)) lt!2655714)))

(declare-fun bs!1943026 () Bool)

(assert (= bs!1943026 d!2322799))

(assert (=> bs!1943026 m!8150246))

(assert (=> bs!1943026 m!8150256))

(declare-fun m!8150372 () Bool)

(assert (=> bs!1943026 m!8150372))

(assert (=> bs!1943026 m!8150366))

(assert (=> b!7617124 d!2322799))

(declare-fun d!2322801 () Bool)

(assert (=> d!2322801 (= (get!25741 lt!2655669) (v!54495 lt!2655669))))

(assert (=> b!7617124 d!2322801))

(declare-fun bs!1943027 () Bool)

(declare-fun b!7617332 () Bool)

(assert (= bs!1943027 (and b!7617332 b!7617121)))

(declare-fun lambda!468202 () Int)

(assert (=> bs!1943027 (not (= lambda!468202 lambda!468192))))

(declare-fun bs!1943028 () Bool)

(assert (= bs!1943028 (and b!7617332 b!7617307)))

(assert (=> bs!1943028 (= (and (= (_1!37870 lt!2655673) (_2!37870 lt!2655673)) (= (reg!20615 (reg!20615 r!14126)) (reg!20615 r!14126)) (= (reg!20615 r!14126) r!14126)) (= lambda!468202 lambda!468200))))

(declare-fun bs!1943029 () Bool)

(assert (= bs!1943029 (and b!7617332 b!7617302)))

(assert (=> bs!1943029 (not (= lambda!468202 lambda!468201))))

(assert (=> b!7617332 true))

(assert (=> b!7617332 true))

(declare-fun bs!1943030 () Bool)

(declare-fun b!7617327 () Bool)

(assert (= bs!1943030 (and b!7617327 b!7617121)))

(declare-fun lambda!468203 () Int)

(assert (=> bs!1943030 (not (= lambda!468203 lambda!468192))))

(declare-fun bs!1943031 () Bool)

(assert (= bs!1943031 (and b!7617327 b!7617307)))

(assert (=> bs!1943031 (not (= lambda!468203 lambda!468200))))

(declare-fun bs!1943032 () Bool)

(assert (= bs!1943032 (and b!7617327 b!7617302)))

(assert (=> bs!1943032 (= (and (= (_1!37870 lt!2655673) (_2!37870 lt!2655673)) (= (regOne!41084 (reg!20615 r!14126)) (regOne!41084 r!14126)) (= (regTwo!41084 (reg!20615 r!14126)) (regTwo!41084 r!14126))) (= lambda!468203 lambda!468201))))

(declare-fun bs!1943033 () Bool)

(assert (= bs!1943033 (and b!7617327 b!7617332)))

(assert (=> bs!1943033 (not (= lambda!468203 lambda!468202))))

(assert (=> b!7617327 true))

(assert (=> b!7617327 true))

(declare-fun b!7617323 () Bool)

(declare-fun e!4529707 () Bool)

(assert (=> b!7617323 (= e!4529707 (matchRSpec!4485 (regTwo!41085 (reg!20615 r!14126)) (_1!37870 lt!2655673)))))

(declare-fun b!7617324 () Bool)

(declare-fun e!4529711 () Bool)

(assert (=> b!7617324 (= e!4529711 (= (_1!37870 lt!2655673) (Cons!73015 (c!1403951 (reg!20615 r!14126)) Nil!73015)))))

(declare-fun b!7617326 () Bool)

(declare-fun c!1403989 () Bool)

(assert (=> b!7617326 (= c!1403989 (is-Union!20286 (reg!20615 r!14126)))))

(declare-fun e!4529705 () Bool)

(assert (=> b!7617326 (= e!4529711 e!4529705)))

(declare-fun e!4529706 () Bool)

(declare-fun call!699695 () Bool)

(assert (=> b!7617327 (= e!4529706 call!699695)))

(declare-fun bm!699689 () Bool)

(declare-fun c!1403990 () Bool)

(assert (=> bm!699689 (= call!699695 (Exists!4442 (ite c!1403990 lambda!468202 lambda!468203)))))

(declare-fun bm!699690 () Bool)

(declare-fun call!699694 () Bool)

(assert (=> bm!699690 (= call!699694 (isEmpty!41626 (_1!37870 lt!2655673)))))

(declare-fun d!2322803 () Bool)

(declare-fun c!1403992 () Bool)

(assert (=> d!2322803 (= c!1403992 (is-EmptyExpr!20286 (reg!20615 r!14126)))))

(declare-fun e!4529708 () Bool)

(assert (=> d!2322803 (= (matchRSpec!4485 (reg!20615 r!14126) (_1!37870 lt!2655673)) e!4529708)))

(declare-fun b!7617325 () Bool)

(assert (=> b!7617325 (= e!4529705 e!4529706)))

(assert (=> b!7617325 (= c!1403990 (is-Star!20286 (reg!20615 r!14126)))))

(declare-fun b!7617328 () Bool)

(assert (=> b!7617328 (= e!4529708 call!699694)))

(declare-fun b!7617329 () Bool)

(declare-fun c!1403991 () Bool)

(assert (=> b!7617329 (= c!1403991 (is-ElementMatch!20286 (reg!20615 r!14126)))))

(declare-fun e!4529709 () Bool)

(assert (=> b!7617329 (= e!4529709 e!4529711)))

(declare-fun b!7617330 () Bool)

(assert (=> b!7617330 (= e!4529705 e!4529707)))

(declare-fun res!3049429 () Bool)

(assert (=> b!7617330 (= res!3049429 (matchRSpec!4485 (regOne!41085 (reg!20615 r!14126)) (_1!37870 lt!2655673)))))

(assert (=> b!7617330 (=> res!3049429 e!4529707)))

(declare-fun b!7617331 () Bool)

(declare-fun res!3049428 () Bool)

(declare-fun e!4529710 () Bool)

(assert (=> b!7617331 (=> res!3049428 e!4529710)))

(assert (=> b!7617331 (= res!3049428 call!699694)))

(assert (=> b!7617331 (= e!4529706 e!4529710)))

(assert (=> b!7617332 (= e!4529710 call!699695)))

(declare-fun b!7617333 () Bool)

(assert (=> b!7617333 (= e!4529708 e!4529709)))

(declare-fun res!3049430 () Bool)

(assert (=> b!7617333 (= res!3049430 (not (is-EmptyLang!20286 (reg!20615 r!14126))))))

(assert (=> b!7617333 (=> (not res!3049430) (not e!4529709))))

(assert (= (and d!2322803 c!1403992) b!7617328))

(assert (= (and d!2322803 (not c!1403992)) b!7617333))

(assert (= (and b!7617333 res!3049430) b!7617329))

(assert (= (and b!7617329 c!1403991) b!7617324))

(assert (= (and b!7617329 (not c!1403991)) b!7617326))

(assert (= (and b!7617326 c!1403989) b!7617330))

(assert (= (and b!7617326 (not c!1403989)) b!7617325))

(assert (= (and b!7617330 (not res!3049429)) b!7617323))

(assert (= (and b!7617325 c!1403990) b!7617331))

(assert (= (and b!7617325 (not c!1403990)) b!7617327))

(assert (= (and b!7617331 (not res!3049428)) b!7617332))

(assert (= (or b!7617332 b!7617327) bm!699689))

(assert (= (or b!7617328 b!7617331) bm!699690))

(declare-fun m!8150374 () Bool)

(assert (=> b!7617323 m!8150374))

(declare-fun m!8150376 () Bool)

(assert (=> bm!699689 m!8150376))

(assert (=> bm!699690 m!8150364))

(declare-fun m!8150378 () Bool)

(assert (=> b!7617330 m!8150378))

(assert (=> b!7617124 d!2322803))

(declare-fun d!2322805 () Bool)

(assert (=> d!2322805 (= (matchR!9793 r!14126 (_2!37870 lt!2655673)) (matchRSpec!4485 r!14126 (_2!37870 lt!2655673)))))

(declare-fun lt!2655715 () Unit!167404)

(assert (=> d!2322805 (= lt!2655715 (choose!58759 r!14126 (_2!37870 lt!2655673)))))

(assert (=> d!2322805 (validRegex!10706 r!14126)))

(assert (=> d!2322805 (= (mainMatchTheorem!4479 r!14126 (_2!37870 lt!2655673)) lt!2655715)))

(declare-fun bs!1943034 () Bool)

(assert (= bs!1943034 d!2322805))

(assert (=> bs!1943034 m!8150254))

(assert (=> bs!1943034 m!8150248))

(declare-fun m!8150380 () Bool)

(assert (=> bs!1943034 m!8150380))

(assert (=> bs!1943034 m!8150234))

(assert (=> b!7617124 d!2322805))

(declare-fun b!7617334 () Bool)

(declare-fun e!4529716 () Bool)

(declare-fun lt!2655716 () Bool)

(assert (=> b!7617334 (= e!4529716 (not lt!2655716))))

(declare-fun b!7617335 () Bool)

(declare-fun e!4529714 () Bool)

(declare-fun call!699696 () Bool)

(assert (=> b!7617335 (= e!4529714 (= lt!2655716 call!699696))))

(declare-fun b!7617336 () Bool)

(declare-fun res!3049437 () Bool)

(declare-fun e!4529718 () Bool)

(assert (=> b!7617336 (=> res!3049437 e!4529718)))

(declare-fun e!4529713 () Bool)

(assert (=> b!7617336 (= res!3049437 e!4529713)))

(declare-fun res!3049434 () Bool)

(assert (=> b!7617336 (=> (not res!3049434) (not e!4529713))))

(assert (=> b!7617336 (= res!3049434 lt!2655716)))

(declare-fun b!7617337 () Bool)

(declare-fun res!3049435 () Bool)

(assert (=> b!7617337 (=> res!3049435 e!4529718)))

(assert (=> b!7617337 (= res!3049435 (not (is-ElementMatch!20286 r!14126)))))

(assert (=> b!7617337 (= e!4529716 e!4529718)))

(declare-fun b!7617338 () Bool)

(declare-fun e!4529717 () Bool)

(declare-fun e!4529715 () Bool)

(assert (=> b!7617338 (= e!4529717 e!4529715)))

(declare-fun res!3049432 () Bool)

(assert (=> b!7617338 (=> res!3049432 e!4529715)))

(assert (=> b!7617338 (= res!3049432 call!699696)))

(declare-fun b!7617339 () Bool)

(assert (=> b!7617339 (= e!4529714 e!4529716)))

(declare-fun c!1403994 () Bool)

(assert (=> b!7617339 (= c!1403994 (is-EmptyLang!20286 r!14126))))

(declare-fun b!7617340 () Bool)

(declare-fun res!3049433 () Bool)

(assert (=> b!7617340 (=> (not res!3049433) (not e!4529713))))

(assert (=> b!7617340 (= res!3049433 (not call!699696))))

(declare-fun bm!699691 () Bool)

(assert (=> bm!699691 (= call!699696 (isEmpty!41626 (_2!37870 lt!2655673)))))

(declare-fun b!7617341 () Bool)

(assert (=> b!7617341 (= e!4529715 (not (= (head!15647 (_2!37870 lt!2655673)) (c!1403951 r!14126))))))

(declare-fun b!7617342 () Bool)

(declare-fun res!3049438 () Bool)

(assert (=> b!7617342 (=> (not res!3049438) (not e!4529713))))

(assert (=> b!7617342 (= res!3049438 (isEmpty!41626 (tail!15187 (_2!37870 lt!2655673))))))

(declare-fun b!7617343 () Bool)

(declare-fun e!4529712 () Bool)

(assert (=> b!7617343 (= e!4529712 (nullable!8867 r!14126))))

(declare-fun b!7617344 () Bool)

(assert (=> b!7617344 (= e!4529713 (= (head!15647 (_2!37870 lt!2655673)) (c!1403951 r!14126)))))

(declare-fun b!7617345 () Bool)

(assert (=> b!7617345 (= e!4529712 (matchR!9793 (derivativeStep!5847 r!14126 (head!15647 (_2!37870 lt!2655673))) (tail!15187 (_2!37870 lt!2655673))))))

(declare-fun b!7617346 () Bool)

(assert (=> b!7617346 (= e!4529718 e!4529717)))

(declare-fun res!3049436 () Bool)

(assert (=> b!7617346 (=> (not res!3049436) (not e!4529717))))

(assert (=> b!7617346 (= res!3049436 (not lt!2655716))))

(declare-fun d!2322807 () Bool)

(assert (=> d!2322807 e!4529714))

(declare-fun c!1403993 () Bool)

(assert (=> d!2322807 (= c!1403993 (is-EmptyExpr!20286 r!14126))))

(assert (=> d!2322807 (= lt!2655716 e!4529712)))

(declare-fun c!1403995 () Bool)

(assert (=> d!2322807 (= c!1403995 (isEmpty!41626 (_2!37870 lt!2655673)))))

(assert (=> d!2322807 (validRegex!10706 r!14126)))

(assert (=> d!2322807 (= (matchR!9793 r!14126 (_2!37870 lt!2655673)) lt!2655716)))

(declare-fun b!7617347 () Bool)

(declare-fun res!3049431 () Bool)

(assert (=> b!7617347 (=> res!3049431 e!4529715)))

(assert (=> b!7617347 (= res!3049431 (not (isEmpty!41626 (tail!15187 (_2!37870 lt!2655673)))))))

(assert (= (and d!2322807 c!1403995) b!7617343))

(assert (= (and d!2322807 (not c!1403995)) b!7617345))

(assert (= (and d!2322807 c!1403993) b!7617335))

(assert (= (and d!2322807 (not c!1403993)) b!7617339))

(assert (= (and b!7617339 c!1403994) b!7617334))

(assert (= (and b!7617339 (not c!1403994)) b!7617337))

(assert (= (and b!7617337 (not res!3049435)) b!7617336))

(assert (= (and b!7617336 res!3049434) b!7617340))

(assert (= (and b!7617340 res!3049433) b!7617342))

(assert (= (and b!7617342 res!3049438) b!7617344))

(assert (= (and b!7617336 (not res!3049437)) b!7617346))

(assert (= (and b!7617346 res!3049436) b!7617338))

(assert (= (and b!7617338 (not res!3049432)) b!7617347))

(assert (= (and b!7617347 (not res!3049431)) b!7617341))

(assert (= (or b!7617335 b!7617340 b!7617338) bm!699691))

(declare-fun m!8150382 () Bool)

(assert (=> b!7617341 m!8150382))

(assert (=> b!7617344 m!8150382))

(declare-fun m!8150384 () Bool)

(assert (=> b!7617342 m!8150384))

(assert (=> b!7617342 m!8150384))

(declare-fun m!8150386 () Bool)

(assert (=> b!7617342 m!8150386))

(assert (=> b!7617343 m!8150322))

(assert (=> d!2322807 m!8150350))

(assert (=> d!2322807 m!8150234))

(assert (=> b!7617345 m!8150382))

(assert (=> b!7617345 m!8150382))

(declare-fun m!8150388 () Bool)

(assert (=> b!7617345 m!8150388))

(assert (=> b!7617345 m!8150384))

(assert (=> b!7617345 m!8150388))

(assert (=> b!7617345 m!8150384))

(declare-fun m!8150390 () Bool)

(assert (=> b!7617345 m!8150390))

(assert (=> b!7617347 m!8150384))

(assert (=> b!7617347 m!8150384))

(assert (=> b!7617347 m!8150386))

(assert (=> bm!699691 m!8150350))

(assert (=> b!7617124 d!2322807))

(declare-fun bm!699692 () Bool)

(declare-fun call!699698 () Bool)

(declare-fun c!1403997 () Bool)

(declare-fun c!1403996 () Bool)

(assert (=> bm!699692 (= call!699698 (validRegex!10706 (ite c!1403997 (reg!20615 lt!2655671) (ite c!1403996 (regOne!41085 lt!2655671) (regOne!41084 lt!2655671)))))))

(declare-fun bm!699693 () Bool)

(declare-fun call!699699 () Bool)

(assert (=> bm!699693 (= call!699699 (validRegex!10706 (ite c!1403996 (regTwo!41085 lt!2655671) (regTwo!41084 lt!2655671))))))

(declare-fun bm!699694 () Bool)

(declare-fun call!699697 () Bool)

(assert (=> bm!699694 (= call!699697 call!699698)))

(declare-fun b!7617348 () Bool)

(declare-fun e!4529724 () Bool)

(declare-fun e!4529720 () Bool)

(assert (=> b!7617348 (= e!4529724 e!4529720)))

(declare-fun res!3049442 () Bool)

(assert (=> b!7617348 (=> (not res!3049442) (not e!4529720))))

(assert (=> b!7617348 (= res!3049442 call!699697)))

(declare-fun b!7617349 () Bool)

(declare-fun e!4529725 () Bool)

(declare-fun e!4529723 () Bool)

(assert (=> b!7617349 (= e!4529725 e!4529723)))

(assert (=> b!7617349 (= c!1403997 (is-Star!20286 lt!2655671))))

(declare-fun b!7617350 () Bool)

(declare-fun e!4529721 () Bool)

(assert (=> b!7617350 (= e!4529723 e!4529721)))

(assert (=> b!7617350 (= c!1403996 (is-Union!20286 lt!2655671))))

(declare-fun b!7617351 () Bool)

(declare-fun e!4529719 () Bool)

(assert (=> b!7617351 (= e!4529723 e!4529719)))

(declare-fun res!3049440 () Bool)

(assert (=> b!7617351 (= res!3049440 (not (nullable!8867 (reg!20615 lt!2655671))))))

(assert (=> b!7617351 (=> (not res!3049440) (not e!4529719))))

(declare-fun d!2322809 () Bool)

(declare-fun res!3049443 () Bool)

(assert (=> d!2322809 (=> res!3049443 e!4529725)))

(assert (=> d!2322809 (= res!3049443 (is-ElementMatch!20286 lt!2655671))))

(assert (=> d!2322809 (= (validRegex!10706 lt!2655671) e!4529725)))

(declare-fun b!7617352 () Bool)

(declare-fun res!3049441 () Bool)

(assert (=> b!7617352 (=> res!3049441 e!4529724)))

(assert (=> b!7617352 (= res!3049441 (not (is-Concat!29131 lt!2655671)))))

(assert (=> b!7617352 (= e!4529721 e!4529724)))

(declare-fun b!7617353 () Bool)

(declare-fun res!3049439 () Bool)

(declare-fun e!4529722 () Bool)

(assert (=> b!7617353 (=> (not res!3049439) (not e!4529722))))

(assert (=> b!7617353 (= res!3049439 call!699697)))

(assert (=> b!7617353 (= e!4529721 e!4529722)))

(declare-fun b!7617354 () Bool)

(assert (=> b!7617354 (= e!4529720 call!699699)))

(declare-fun b!7617355 () Bool)

(assert (=> b!7617355 (= e!4529722 call!699699)))

(declare-fun b!7617356 () Bool)

(assert (=> b!7617356 (= e!4529719 call!699698)))

(assert (= (and d!2322809 (not res!3049443)) b!7617349))

(assert (= (and b!7617349 c!1403997) b!7617351))

(assert (= (and b!7617349 (not c!1403997)) b!7617350))

(assert (= (and b!7617351 res!3049440) b!7617356))

(assert (= (and b!7617350 c!1403996) b!7617353))

(assert (= (and b!7617350 (not c!1403996)) b!7617352))

(assert (= (and b!7617353 res!3049439) b!7617355))

(assert (= (and b!7617352 (not res!3049441)) b!7617348))

(assert (= (and b!7617348 res!3049442) b!7617354))

(assert (= (or b!7617353 b!7617348) bm!699694))

(assert (= (or b!7617355 b!7617354) bm!699693))

(assert (= (or b!7617356 bm!699694) bm!699692))

(declare-fun m!8150392 () Bool)

(assert (=> bm!699692 m!8150392))

(declare-fun m!8150394 () Bool)

(assert (=> bm!699693 m!8150394))

(declare-fun m!8150396 () Bool)

(assert (=> b!7617351 m!8150396))

(assert (=> b!7617118 d!2322809))

(declare-fun b!7617357 () Bool)

(declare-fun e!4529730 () Bool)

(declare-fun lt!2655719 () Bool)

(assert (=> b!7617357 (= e!4529730 (not lt!2655719))))

(declare-fun b!7617358 () Bool)

(declare-fun e!4529728 () Bool)

(declare-fun call!699700 () Bool)

(assert (=> b!7617358 (= e!4529728 (= lt!2655719 call!699700))))

(declare-fun b!7617359 () Bool)

(declare-fun res!3049450 () Bool)

(declare-fun e!4529732 () Bool)

(assert (=> b!7617359 (=> res!3049450 e!4529732)))

(declare-fun e!4529727 () Bool)

(assert (=> b!7617359 (= res!3049450 e!4529727)))

(declare-fun res!3049447 () Bool)

(assert (=> b!7617359 (=> (not res!3049447) (not e!4529727))))

(assert (=> b!7617359 (= res!3049447 lt!2655719)))

(declare-fun b!7617360 () Bool)

(declare-fun res!3049448 () Bool)

(assert (=> b!7617360 (=> res!3049448 e!4529732)))

(assert (=> b!7617360 (= res!3049448 (not (is-ElementMatch!20286 lt!2655671)))))

(assert (=> b!7617360 (= e!4529730 e!4529732)))

(declare-fun b!7617361 () Bool)

(declare-fun e!4529731 () Bool)

(declare-fun e!4529729 () Bool)

(assert (=> b!7617361 (= e!4529731 e!4529729)))

(declare-fun res!3049445 () Bool)

(assert (=> b!7617361 (=> res!3049445 e!4529729)))

(assert (=> b!7617361 (= res!3049445 call!699700)))

(declare-fun b!7617362 () Bool)

(assert (=> b!7617362 (= e!4529728 e!4529730)))

(declare-fun c!1403999 () Bool)

(assert (=> b!7617362 (= c!1403999 (is-EmptyLang!20286 lt!2655671))))

(declare-fun b!7617363 () Bool)

(declare-fun res!3049446 () Bool)

(assert (=> b!7617363 (=> (not res!3049446) (not e!4529727))))

(assert (=> b!7617363 (= res!3049446 (not call!699700))))

(declare-fun bm!699695 () Bool)

(assert (=> bm!699695 (= call!699700 (isEmpty!41626 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673))))))

(declare-fun b!7617364 () Bool)

(assert (=> b!7617364 (= e!4529729 (not (= (head!15647 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673))) (c!1403951 lt!2655671))))))

(declare-fun b!7617365 () Bool)

(declare-fun res!3049451 () Bool)

(assert (=> b!7617365 (=> (not res!3049451) (not e!4529727))))

(assert (=> b!7617365 (= res!3049451 (isEmpty!41626 (tail!15187 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673)))))))

(declare-fun b!7617366 () Bool)

(declare-fun e!4529726 () Bool)

(assert (=> b!7617366 (= e!4529726 (nullable!8867 lt!2655671))))

(declare-fun b!7617367 () Bool)

(assert (=> b!7617367 (= e!4529727 (= (head!15647 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673))) (c!1403951 lt!2655671)))))

(declare-fun b!7617368 () Bool)

(assert (=> b!7617368 (= e!4529726 (matchR!9793 (derivativeStep!5847 lt!2655671 (head!15647 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673)))) (tail!15187 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673)))))))

(declare-fun b!7617369 () Bool)

(assert (=> b!7617369 (= e!4529732 e!4529731)))

(declare-fun res!3049449 () Bool)

(assert (=> b!7617369 (=> (not res!3049449) (not e!4529731))))

(assert (=> b!7617369 (= res!3049449 (not lt!2655719))))

(declare-fun d!2322811 () Bool)

(assert (=> d!2322811 e!4529728))

(declare-fun c!1403998 () Bool)

(assert (=> d!2322811 (= c!1403998 (is-EmptyExpr!20286 lt!2655671))))

(assert (=> d!2322811 (= lt!2655719 e!4529726)))

(declare-fun c!1404000 () Bool)

(assert (=> d!2322811 (= c!1404000 (isEmpty!41626 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673))))))

(assert (=> d!2322811 (validRegex!10706 lt!2655671)))

(assert (=> d!2322811 (= (matchR!9793 lt!2655671 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673))) lt!2655719)))

(declare-fun b!7617370 () Bool)

(declare-fun res!3049444 () Bool)

(assert (=> b!7617370 (=> res!3049444 e!4529729)))

(assert (=> b!7617370 (= res!3049444 (not (isEmpty!41626 (tail!15187 (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673))))))))

(assert (= (and d!2322811 c!1404000) b!7617366))

(assert (= (and d!2322811 (not c!1404000)) b!7617368))

(assert (= (and d!2322811 c!1403998) b!7617358))

(assert (= (and d!2322811 (not c!1403998)) b!7617362))

(assert (= (and b!7617362 c!1403999) b!7617357))

(assert (= (and b!7617362 (not c!1403999)) b!7617360))

(assert (= (and b!7617360 (not res!3049448)) b!7617359))

(assert (= (and b!7617359 res!3049447) b!7617363))

(assert (= (and b!7617363 res!3049446) b!7617365))

(assert (= (and b!7617365 res!3049451) b!7617367))

(assert (= (and b!7617359 (not res!3049450)) b!7617369))

(assert (= (and b!7617369 res!3049449) b!7617361))

(assert (= (and b!7617361 (not res!3049445)) b!7617370))

(assert (= (and b!7617370 (not res!3049444)) b!7617364))

(assert (= (or b!7617358 b!7617363 b!7617361) bm!699695))

(assert (=> b!7617364 m!8150264))

(declare-fun m!8150398 () Bool)

(assert (=> b!7617364 m!8150398))

(assert (=> b!7617367 m!8150264))

(assert (=> b!7617367 m!8150398))

(assert (=> b!7617365 m!8150264))

(declare-fun m!8150400 () Bool)

(assert (=> b!7617365 m!8150400))

(assert (=> b!7617365 m!8150400))

(declare-fun m!8150402 () Bool)

(assert (=> b!7617365 m!8150402))

(declare-fun m!8150404 () Bool)

(assert (=> b!7617366 m!8150404))

(assert (=> d!2322811 m!8150264))

(declare-fun m!8150406 () Bool)

(assert (=> d!2322811 m!8150406))

(assert (=> d!2322811 m!8150262))

(assert (=> b!7617368 m!8150264))

(assert (=> b!7617368 m!8150398))

(assert (=> b!7617368 m!8150398))

(declare-fun m!8150408 () Bool)

(assert (=> b!7617368 m!8150408))

(assert (=> b!7617368 m!8150264))

(assert (=> b!7617368 m!8150400))

(assert (=> b!7617368 m!8150408))

(assert (=> b!7617368 m!8150400))

(declare-fun m!8150410 () Bool)

(assert (=> b!7617368 m!8150410))

(assert (=> b!7617370 m!8150264))

(assert (=> b!7617370 m!8150400))

(assert (=> b!7617370 m!8150400))

(assert (=> b!7617370 m!8150402))

(assert (=> bm!699695 m!8150264))

(assert (=> bm!699695 m!8150406))

(assert (=> b!7617118 d!2322811))

(declare-fun b!7617383 () Bool)

(declare-fun e!4529739 () List!73139)

(assert (=> b!7617383 (= e!4529739 (_2!37870 lt!2655673))))

(declare-fun d!2322813 () Bool)

(declare-fun e!4529740 () Bool)

(assert (=> d!2322813 e!4529740))

(declare-fun res!3049461 () Bool)

(assert (=> d!2322813 (=> (not res!3049461) (not e!4529740))))

(declare-fun lt!2655723 () List!73139)

(declare-fun content!15434 (List!73139) (Set C!40898))

(assert (=> d!2322813 (= res!3049461 (= (content!15434 lt!2655723) (set.union (content!15434 (_1!37870 lt!2655673)) (content!15434 (_2!37870 lt!2655673)))))))

(assert (=> d!2322813 (= lt!2655723 e!4529739)))

(declare-fun c!1404003 () Bool)

(assert (=> d!2322813 (= c!1404003 (is-Nil!73015 (_1!37870 lt!2655673)))))

(assert (=> d!2322813 (= (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673)) lt!2655723)))

(declare-fun b!7617386 () Bool)

(assert (=> b!7617386 (= e!4529740 (or (not (= (_2!37870 lt!2655673) Nil!73015)) (= lt!2655723 (_1!37870 lt!2655673))))))

(declare-fun b!7617384 () Bool)

(assert (=> b!7617384 (= e!4529739 (Cons!73015 (h!79463 (_1!37870 lt!2655673)) (++!17596 (t!387874 (_1!37870 lt!2655673)) (_2!37870 lt!2655673))))))

(declare-fun b!7617385 () Bool)

(declare-fun res!3049460 () Bool)

(assert (=> b!7617385 (=> (not res!3049460) (not e!4529740))))

(declare-fun size!42527 (List!73139) Int)

(assert (=> b!7617385 (= res!3049460 (= (size!42527 lt!2655723) (+ (size!42527 (_1!37870 lt!2655673)) (size!42527 (_2!37870 lt!2655673)))))))

(assert (= (and d!2322813 c!1404003) b!7617383))

(assert (= (and d!2322813 (not c!1404003)) b!7617384))

(assert (= (and d!2322813 res!3049461) b!7617385))

(assert (= (and b!7617385 res!3049460) b!7617386))

(declare-fun m!8150418 () Bool)

(assert (=> d!2322813 m!8150418))

(declare-fun m!8150420 () Bool)

(assert (=> d!2322813 m!8150420))

(declare-fun m!8150422 () Bool)

(assert (=> d!2322813 m!8150422))

(declare-fun m!8150424 () Bool)

(assert (=> b!7617384 m!8150424))

(declare-fun m!8150426 () Bool)

(assert (=> b!7617385 m!8150426))

(declare-fun m!8150428 () Bool)

(assert (=> b!7617385 m!8150428))

(declare-fun m!8150430 () Bool)

(assert (=> b!7617385 m!8150430))

(assert (=> b!7617118 d!2322813))

(declare-fun d!2322817 () Bool)

(assert (=> d!2322817 (matchR!9793 (Concat!29131 (reg!20615 r!14126) r!14126) (++!17596 (_1!37870 lt!2655673) (_2!37870 lt!2655673)))))

(declare-fun lt!2655726 () Unit!167404)

(declare-fun choose!58762 (Regex!20286 Regex!20286 List!73139 List!73139 List!73139) Unit!167404)

(assert (=> d!2322817 (= lt!2655726 (choose!58762 (reg!20615 r!14126) r!14126 (_1!37870 lt!2655673) (_2!37870 lt!2655673) s!9605))))

(assert (=> d!2322817 (validRegex!10706 (reg!20615 r!14126))))

(assert (=> d!2322817 (= (lemmaFindSeparationIsDefinedThenConcatMatches!113 (reg!20615 r!14126) r!14126 (_1!37870 lt!2655673) (_2!37870 lt!2655673) s!9605) lt!2655726)))

(declare-fun bs!1943037 () Bool)

(assert (= bs!1943037 d!2322817))

(assert (=> bs!1943037 m!8150264))

(assert (=> bs!1943037 m!8150264))

(declare-fun m!8150432 () Bool)

(assert (=> bs!1943037 m!8150432))

(declare-fun m!8150434 () Bool)

(assert (=> bs!1943037 m!8150434))

(assert (=> bs!1943037 m!8150366))

(assert (=> b!7617118 d!2322817))

(declare-fun d!2322821 () Bool)

(assert (=> d!2322821 (= (isEmpty!41626 s!9605) (is-Nil!73015 s!9605))))

(assert (=> b!7617127 d!2322821))

(declare-fun d!2322823 () Bool)

(declare-fun choose!58763 (Int) Bool)

(assert (=> d!2322823 (= (Exists!4442 lambda!468192) (choose!58763 lambda!468192))))

(declare-fun bs!1943038 () Bool)

(assert (= bs!1943038 d!2322823))

(declare-fun m!8150436 () Bool)

(assert (=> bs!1943038 m!8150436))

(assert (=> b!7617121 d!2322823))

(declare-fun d!2322825 () Bool)

(declare-fun isEmpty!41629 (Option!17361) Bool)

(assert (=> d!2322825 (= (isDefined!13977 lt!2655669) (not (isEmpty!41629 lt!2655669)))))

(declare-fun bs!1943039 () Bool)

(assert (= bs!1943039 d!2322825))

(declare-fun m!8150438 () Bool)

(assert (=> bs!1943039 m!8150438))

(assert (=> b!7617121 d!2322825))

(declare-fun b!7617433 () Bool)

(declare-fun e!4529765 () Bool)

(declare-fun lt!2655735 () Option!17361)

(assert (=> b!7617433 (= e!4529765 (= (++!17596 (_1!37870 (get!25741 lt!2655735)) (_2!37870 (get!25741 lt!2655735))) s!9605))))

(declare-fun b!7617434 () Bool)

(declare-fun e!4529769 () Option!17361)

(assert (=> b!7617434 (= e!4529769 (Some!17360 (tuple2!69135 Nil!73015 s!9605)))))

(declare-fun d!2322827 () Bool)

(declare-fun e!4529767 () Bool)

(assert (=> d!2322827 e!4529767))

(declare-fun res!3049490 () Bool)

(assert (=> d!2322827 (=> res!3049490 e!4529767)))

(assert (=> d!2322827 (= res!3049490 e!4529765)))

(declare-fun res!3049491 () Bool)

(assert (=> d!2322827 (=> (not res!3049491) (not e!4529765))))

(assert (=> d!2322827 (= res!3049491 (isDefined!13977 lt!2655735))))

(assert (=> d!2322827 (= lt!2655735 e!4529769)))

(declare-fun c!1404014 () Bool)

(declare-fun e!4529768 () Bool)

(assert (=> d!2322827 (= c!1404014 e!4529768)))

(declare-fun res!3049492 () Bool)

(assert (=> d!2322827 (=> (not res!3049492) (not e!4529768))))

(assert (=> d!2322827 (= res!3049492 (matchR!9793 (reg!20615 r!14126) Nil!73015))))

(assert (=> d!2322827 (validRegex!10706 (reg!20615 r!14126))))

(assert (=> d!2322827 (= (findConcatSeparation!3391 (reg!20615 r!14126) r!14126 Nil!73015 s!9605 s!9605) lt!2655735)))

(declare-fun b!7617435 () Bool)

(declare-fun e!4529766 () Option!17361)

(assert (=> b!7617435 (= e!4529766 None!17360)))

(declare-fun b!7617436 () Bool)

(assert (=> b!7617436 (= e!4529768 (matchR!9793 r!14126 s!9605))))

(declare-fun b!7617437 () Bool)

(assert (=> b!7617437 (= e!4529767 (not (isDefined!13977 lt!2655735)))))

(declare-fun b!7617438 () Bool)

(assert (=> b!7617438 (= e!4529769 e!4529766)))

(declare-fun c!1404015 () Bool)

(assert (=> b!7617438 (= c!1404015 (is-Nil!73015 s!9605))))

(declare-fun b!7617439 () Bool)

(declare-fun lt!2655737 () Unit!167404)

(declare-fun lt!2655736 () Unit!167404)

(assert (=> b!7617439 (= lt!2655737 lt!2655736)))

(assert (=> b!7617439 (= (++!17596 (++!17596 Nil!73015 (Cons!73015 (h!79463 s!9605) Nil!73015)) (t!387874 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3212 (List!73139 C!40898 List!73139 List!73139) Unit!167404)

(assert (=> b!7617439 (= lt!2655736 (lemmaMoveElementToOtherListKeepsConcatEq!3212 Nil!73015 (h!79463 s!9605) (t!387874 s!9605) s!9605))))

(assert (=> b!7617439 (= e!4529766 (findConcatSeparation!3391 (reg!20615 r!14126) r!14126 (++!17596 Nil!73015 (Cons!73015 (h!79463 s!9605) Nil!73015)) (t!387874 s!9605) s!9605))))

(declare-fun b!7617440 () Bool)

(declare-fun res!3049489 () Bool)

(assert (=> b!7617440 (=> (not res!3049489) (not e!4529765))))

(assert (=> b!7617440 (= res!3049489 (matchR!9793 r!14126 (_2!37870 (get!25741 lt!2655735))))))

(declare-fun b!7617441 () Bool)

(declare-fun res!3049488 () Bool)

(assert (=> b!7617441 (=> (not res!3049488) (not e!4529765))))

(assert (=> b!7617441 (= res!3049488 (matchR!9793 (reg!20615 r!14126) (_1!37870 (get!25741 lt!2655735))))))

(assert (= (and d!2322827 res!3049492) b!7617436))

(assert (= (and d!2322827 c!1404014) b!7617434))

(assert (= (and d!2322827 (not c!1404014)) b!7617438))

(assert (= (and b!7617438 c!1404015) b!7617435))

(assert (= (and b!7617438 (not c!1404015)) b!7617439))

(assert (= (and d!2322827 res!3049491) b!7617441))

(assert (= (and b!7617441 res!3049488) b!7617440))

(assert (= (and b!7617440 res!3049489) b!7617433))

(assert (= (and d!2322827 (not res!3049490)) b!7617437))

(declare-fun m!8150440 () Bool)

(assert (=> b!7617437 m!8150440))

(declare-fun m!8150442 () Bool)

(assert (=> b!7617433 m!8150442))

(declare-fun m!8150444 () Bool)

(assert (=> b!7617433 m!8150444))

(assert (=> d!2322827 m!8150440))

(declare-fun m!8150446 () Bool)

(assert (=> d!2322827 m!8150446))

(assert (=> d!2322827 m!8150366))

(assert (=> b!7617441 m!8150442))

(declare-fun m!8150448 () Bool)

(assert (=> b!7617441 m!8150448))

(declare-fun m!8150450 () Bool)

(assert (=> b!7617439 m!8150450))

(assert (=> b!7617439 m!8150450))

(declare-fun m!8150452 () Bool)

(assert (=> b!7617439 m!8150452))

(declare-fun m!8150454 () Bool)

(assert (=> b!7617439 m!8150454))

(assert (=> b!7617439 m!8150450))

(declare-fun m!8150456 () Bool)

(assert (=> b!7617439 m!8150456))

(assert (=> b!7617440 m!8150442))

(declare-fun m!8150458 () Bool)

(assert (=> b!7617440 m!8150458))

(assert (=> b!7617436 m!8150250))

(assert (=> b!7617121 d!2322827))

(declare-fun bs!1943040 () Bool)

(declare-fun d!2322829 () Bool)

(assert (= bs!1943040 (and d!2322829 b!7617327)))

(declare-fun lambda!468209 () Int)

(assert (=> bs!1943040 (not (= lambda!468209 lambda!468203))))

(declare-fun bs!1943041 () Bool)

(assert (= bs!1943041 (and d!2322829 b!7617302)))

(assert (=> bs!1943041 (not (= lambda!468209 lambda!468201))))

(declare-fun bs!1943042 () Bool)

(assert (= bs!1943042 (and d!2322829 b!7617307)))

(assert (=> bs!1943042 (not (= lambda!468209 lambda!468200))))

(declare-fun bs!1943043 () Bool)

(assert (= bs!1943043 (and d!2322829 b!7617332)))

(assert (=> bs!1943043 (not (= lambda!468209 lambda!468202))))

(declare-fun bs!1943044 () Bool)

(assert (= bs!1943044 (and d!2322829 b!7617121)))

(assert (=> bs!1943044 (= lambda!468209 lambda!468192)))

(assert (=> d!2322829 true))

(assert (=> d!2322829 true))

(assert (=> d!2322829 true))

(assert (=> d!2322829 (= (isDefined!13977 (findConcatSeparation!3391 (reg!20615 r!14126) r!14126 Nil!73015 s!9605 s!9605)) (Exists!4442 lambda!468209))))

(declare-fun lt!2655741 () Unit!167404)

(declare-fun choose!58764 (Regex!20286 Regex!20286 List!73139) Unit!167404)

(assert (=> d!2322829 (= lt!2655741 (choose!58764 (reg!20615 r!14126) r!14126 s!9605))))

(assert (=> d!2322829 (validRegex!10706 (reg!20615 r!14126))))

(assert (=> d!2322829 (= (lemmaFindConcatSeparationEquivalentToExists!3149 (reg!20615 r!14126) r!14126 s!9605) lt!2655741)))

(declare-fun bs!1943045 () Bool)

(assert (= bs!1943045 d!2322829))

(assert (=> bs!1943045 m!8150242))

(assert (=> bs!1943045 m!8150366))

(assert (=> bs!1943045 m!8150242))

(declare-fun m!8150472 () Bool)

(assert (=> bs!1943045 m!8150472))

(declare-fun m!8150474 () Bool)

(assert (=> bs!1943045 m!8150474))

(declare-fun m!8150476 () Bool)

(assert (=> bs!1943045 m!8150476))

(assert (=> b!7617121 d!2322829))

(declare-fun b!7617470 () Bool)

(declare-fun e!4529781 () Bool)

(assert (=> b!7617470 (= e!4529781 tp_is_empty!50927)))

(declare-fun b!7617473 () Bool)

(declare-fun tp!2224357 () Bool)

(declare-fun tp!2224354 () Bool)

(assert (=> b!7617473 (= e!4529781 (and tp!2224357 tp!2224354))))

(declare-fun b!7617471 () Bool)

(declare-fun tp!2224355 () Bool)

(declare-fun tp!2224358 () Bool)

(assert (=> b!7617471 (= e!4529781 (and tp!2224355 tp!2224358))))

(assert (=> b!7617125 (= tp!2224322 e!4529781)))

(declare-fun b!7617472 () Bool)

(declare-fun tp!2224356 () Bool)

(assert (=> b!7617472 (= e!4529781 tp!2224356)))

(assert (= (and b!7617125 (is-ElementMatch!20286 (reg!20615 r!14126))) b!7617470))

(assert (= (and b!7617125 (is-Concat!29131 (reg!20615 r!14126))) b!7617471))

(assert (= (and b!7617125 (is-Star!20286 (reg!20615 r!14126))) b!7617472))

(assert (= (and b!7617125 (is-Union!20286 (reg!20615 r!14126))) b!7617473))

(declare-fun b!7617476 () Bool)

(declare-fun e!4529782 () Bool)

(assert (=> b!7617476 (= e!4529782 tp_is_empty!50927)))

(declare-fun b!7617479 () Bool)

(declare-fun tp!2224362 () Bool)

(declare-fun tp!2224359 () Bool)

(assert (=> b!7617479 (= e!4529782 (and tp!2224362 tp!2224359))))

(declare-fun b!7617477 () Bool)

(declare-fun tp!2224360 () Bool)

(declare-fun tp!2224363 () Bool)

(assert (=> b!7617477 (= e!4529782 (and tp!2224360 tp!2224363))))

(assert (=> b!7617119 (= tp!2224325 e!4529782)))

(declare-fun b!7617478 () Bool)

(declare-fun tp!2224361 () Bool)

(assert (=> b!7617478 (= e!4529782 tp!2224361)))

(assert (= (and b!7617119 (is-ElementMatch!20286 (regOne!41084 r!14126))) b!7617476))

(assert (= (and b!7617119 (is-Concat!29131 (regOne!41084 r!14126))) b!7617477))

(assert (= (and b!7617119 (is-Star!20286 (regOne!41084 r!14126))) b!7617478))

(assert (= (and b!7617119 (is-Union!20286 (regOne!41084 r!14126))) b!7617479))

(declare-fun b!7617482 () Bool)

(declare-fun e!4529785 () Bool)

(assert (=> b!7617482 (= e!4529785 tp_is_empty!50927)))

(declare-fun b!7617485 () Bool)

(declare-fun tp!2224367 () Bool)

(declare-fun tp!2224364 () Bool)

(assert (=> b!7617485 (= e!4529785 (and tp!2224367 tp!2224364))))

(declare-fun b!7617483 () Bool)

(declare-fun tp!2224365 () Bool)

(declare-fun tp!2224368 () Bool)

(assert (=> b!7617483 (= e!4529785 (and tp!2224365 tp!2224368))))

(assert (=> b!7617119 (= tp!2224324 e!4529785)))

(declare-fun b!7617484 () Bool)

(declare-fun tp!2224366 () Bool)

(assert (=> b!7617484 (= e!4529785 tp!2224366)))

(assert (= (and b!7617119 (is-ElementMatch!20286 (regTwo!41084 r!14126))) b!7617482))

(assert (= (and b!7617119 (is-Concat!29131 (regTwo!41084 r!14126))) b!7617483))

(assert (= (and b!7617119 (is-Star!20286 (regTwo!41084 r!14126))) b!7617484))

(assert (= (and b!7617119 (is-Union!20286 (regTwo!41084 r!14126))) b!7617485))

(declare-fun b!7617500 () Bool)

(declare-fun e!4529794 () Bool)

(declare-fun tp!2224371 () Bool)

(assert (=> b!7617500 (= e!4529794 (and tp_is_empty!50927 tp!2224371))))

(assert (=> b!7617123 (= tp!2224320 e!4529794)))

(assert (= (and b!7617123 (is-Cons!73015 (t!387874 s!9605))) b!7617500))

(declare-fun b!7617503 () Bool)

(declare-fun e!4529797 () Bool)

(assert (=> b!7617503 (= e!4529797 tp_is_empty!50927)))

(declare-fun b!7617506 () Bool)

(declare-fun tp!2224375 () Bool)

(declare-fun tp!2224372 () Bool)

(assert (=> b!7617506 (= e!4529797 (and tp!2224375 tp!2224372))))

(declare-fun b!7617504 () Bool)

(declare-fun tp!2224373 () Bool)

(declare-fun tp!2224376 () Bool)

(assert (=> b!7617504 (= e!4529797 (and tp!2224373 tp!2224376))))

(assert (=> b!7617122 (= tp!2224323 e!4529797)))

(declare-fun b!7617505 () Bool)

(declare-fun tp!2224374 () Bool)

(assert (=> b!7617505 (= e!4529797 tp!2224374)))

(assert (= (and b!7617122 (is-ElementMatch!20286 (regOne!41085 r!14126))) b!7617503))

(assert (= (and b!7617122 (is-Concat!29131 (regOne!41085 r!14126))) b!7617504))

(assert (= (and b!7617122 (is-Star!20286 (regOne!41085 r!14126))) b!7617505))

(assert (= (and b!7617122 (is-Union!20286 (regOne!41085 r!14126))) b!7617506))

(declare-fun b!7617511 () Bool)

(declare-fun e!4529800 () Bool)

(assert (=> b!7617511 (= e!4529800 tp_is_empty!50927)))

(declare-fun b!7617514 () Bool)

(declare-fun tp!2224380 () Bool)

(declare-fun tp!2224377 () Bool)

(assert (=> b!7617514 (= e!4529800 (and tp!2224380 tp!2224377))))

(declare-fun b!7617512 () Bool)

(declare-fun tp!2224378 () Bool)

(declare-fun tp!2224381 () Bool)

(assert (=> b!7617512 (= e!4529800 (and tp!2224378 tp!2224381))))

(assert (=> b!7617122 (= tp!2224321 e!4529800)))

(declare-fun b!7617513 () Bool)

(declare-fun tp!2224379 () Bool)

(assert (=> b!7617513 (= e!4529800 tp!2224379)))

(assert (= (and b!7617122 (is-ElementMatch!20286 (regTwo!41085 r!14126))) b!7617511))

(assert (= (and b!7617122 (is-Concat!29131 (regTwo!41085 r!14126))) b!7617512))

(assert (= (and b!7617122 (is-Star!20286 (regTwo!41085 r!14126))) b!7617513))

(assert (= (and b!7617122 (is-Union!20286 (regTwo!41085 r!14126))) b!7617514))

(push 1)

(assert (not d!2322811))

(assert (not b!7617436))

(assert (not b!7617298))

(assert (not b!7617441))

(assert (not d!2322791))

(assert (not b!7617440))

(assert (not d!2322799))

(assert (not b!7617351))

(assert (not d!2322823))

(assert (not bm!699690))

(assert (not b!7617473))

(assert (not b!7617384))

(assert (not b!7617323))

(assert (not b!7617437))

(assert (not b!7617341))

(assert (not b!7617317))

(assert (not b!7617320))

(assert (not b!7617483))

(assert (not b!7617319))

(assert (not b!7617370))

(assert (not d!2322825))

(assert (not b!7617479))

(assert (not b!7617512))

(assert (not b!7617322))

(assert (not b!7617477))

(assert (not b!7617471))

(assert (not b!7617234))

(assert (not bm!699692))

(assert (not b!7617232))

(assert (not b!7617439))

(assert (not b!7617236))

(assert (not b!7617305))

(assert (not b!7617505))

(assert (not bm!699693))

(assert (not b!7617504))

(assert (not d!2322795))

(assert (not b!7617513))

(assert (not b!7617478))

(assert (not b!7617233))

(assert (not b!7617366))

(assert (not bm!699687))

(assert (not d!2322813))

(assert (not b!7617385))

(assert (not b!7617238))

(assert (not b!7617500))

(assert (not b!7617345))

(assert (not bm!699695))

(assert (not b!7617344))

(assert (not b!7617347))

(assert (not b!7617365))

(assert (not b!7617342))

(assert (not d!2322805))

(assert (not b!7617472))

(assert (not bm!699689))

(assert (not b!7617235))

(assert (not bm!699676))

(assert (not d!2322817))

(assert (not b!7617367))

(assert (not b!7617316))

(assert (not bm!699688))

(assert (not b!7617318))

(assert (not bm!699691))

(assert (not b!7617485))

(assert (not bm!699677))

(assert (not d!2322807))

(assert (not bm!699686))

(assert (not b!7617514))

(assert (not b!7617330))

(assert (not b!7617364))

(assert (not b!7617343))

(assert (not b!7617191))

(assert (not b!7617484))

(assert (not b!7617368))

(assert (not d!2322827))

(assert (not b!7617433))

(assert (not b!7617506))

(assert (not d!2322829))

(assert tp_is_empty!50927)

(assert (not bm!699681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

