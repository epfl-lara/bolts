; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!280198 () Bool)

(assert start!280198)

(declare-fun b!2870310 () Bool)

(declare-fun e!1816750 () Bool)

(declare-fun tp!923351 () Bool)

(assert (=> b!2870310 (= e!1816750 tp!923351)))

(declare-fun b!2870311 () Bool)

(declare-fun e!1816746 () Bool)

(declare-datatypes ((C!17650 0))(
  ( (C!17651 (val!10859 Int)) )
))
(declare-datatypes ((Regex!8734 0))(
  ( (ElementMatch!8734 (c!464165 C!17650)) (Concat!14055 (regOne!17980 Regex!8734) (regTwo!17980 Regex!8734)) (EmptyExpr!8734) (Star!8734 (reg!9063 Regex!8734)) (EmptyLang!8734) (Union!8734 (regOne!17981 Regex!8734) (regTwo!17981 Regex!8734)) )
))
(declare-datatypes ((List!34495 0))(
  ( (Nil!34371) (Cons!34371 (h!39791 Regex!8734) (t!233538 List!34495)) )
))
(declare-datatypes ((Context!5388 0))(
  ( (Context!5389 (exprs!3194 List!34495)) )
))
(declare-fun c!7184 () Context!5388)

(declare-fun inv!46423 (Context!5388) Bool)

(assert (=> b!2870311 (= e!1816746 (inv!46423 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))

(declare-fun b!2870312 () Bool)

(declare-fun res!1191010 () Bool)

(declare-fun e!1816748 () Bool)

(assert (=> b!2870312 (=> (not res!1191010) (not e!1816748))))

(assert (=> b!2870312 (= res!1191010 (is-Cons!34371 (exprs!3194 c!7184)))))

(declare-fun b!2870313 () Bool)

(declare-fun e!1816747 () Bool)

(assert (=> b!2870313 (= e!1816747 (not e!1816746))))

(declare-fun res!1191012 () Bool)

(assert (=> b!2870313 (=> res!1191012 e!1816746)))

(declare-datatypes ((List!34496 0))(
  ( (Nil!34372) (Cons!34372 (h!39792 C!17650) (t!233539 List!34496)) )
))
(declare-datatypes ((Option!6409 0))(
  ( (None!6408) (Some!6408 (v!34530 List!34496)) )
))
(declare-fun lt!1017835 () Option!6409)

(declare-fun matchR!3734 (Regex!8734 List!34496) Bool)

(assert (=> b!2870313 (= res!1191012 (not (matchR!3734 (h!39791 (exprs!3194 c!7184)) (v!34530 lt!1017835))))))

(declare-fun lt!1017833 () Context!5388)

(declare-fun lt!1017832 () Option!6409)

(declare-fun matchZipper!476 ((Set Context!5388) List!34496) Bool)

(declare-fun get!10328 (Option!6409) List!34496)

(assert (=> b!2870313 (matchZipper!476 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (get!10328 lt!1017832))))

(declare-datatypes ((Unit!47969 0))(
  ( (Unit!47970) )
))
(declare-fun lt!1017834 () Unit!47969)

(declare-fun lemmaGetWitnessMatchesContext!33 (Context!5388) Unit!47969)

(assert (=> b!2870313 (= lt!1017834 (lemmaGetWitnessMatchesContext!33 lt!1017833))))

(assert (=> b!2870313 (matchR!3734 (h!39791 (exprs!3194 c!7184)) (get!10328 lt!1017835))))

(declare-fun lt!1017836 () Unit!47969)

(declare-fun lemmaGetWitnessMatches!41 (Regex!8734) Unit!47969)

(assert (=> b!2870313 (= lt!1017836 (lemmaGetWitnessMatches!41 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870314 () Bool)

(declare-fun e!1816749 () Bool)

(assert (=> b!2870314 (= e!1816748 e!1816749)))

(declare-fun res!1191014 () Bool)

(assert (=> b!2870314 (=> (not res!1191014) (not e!1816749))))

(assert (=> b!2870314 (= res!1191014 (is-Some!6408 lt!1017835))))

(declare-fun getLanguageWitness!419 (Regex!8734) Option!6409)

(assert (=> b!2870314 (= lt!1017835 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870315 () Bool)

(assert (=> b!2870315 (= e!1816749 e!1816747)))

(declare-fun res!1191013 () Bool)

(assert (=> b!2870315 (=> (not res!1191013) (not e!1816747))))

(assert (=> b!2870315 (= res!1191013 (is-Some!6408 lt!1017832))))

(declare-fun getLanguageWitness!420 (Context!5388) Option!6409)

(assert (=> b!2870315 (= lt!1017832 (getLanguageWitness!420 lt!1017833))))

(assert (=> b!2870315 (= lt!1017833 (Context!5389 (t!233538 (exprs!3194 c!7184))))))

(declare-fun res!1191011 () Bool)

(assert (=> start!280198 (=> (not res!1191011) (not e!1816748))))

(declare-fun lostCause!826 (Context!5388) Bool)

(assert (=> start!280198 (= res!1191011 (not (lostCause!826 c!7184)))))

(assert (=> start!280198 e!1816748))

(assert (=> start!280198 (and (inv!46423 c!7184) e!1816750)))

(assert (= (and start!280198 res!1191011) b!2870312))

(assert (= (and b!2870312 res!1191010) b!2870314))

(assert (= (and b!2870314 res!1191014) b!2870315))

(assert (= (and b!2870315 res!1191013) b!2870313))

(assert (= (and b!2870313 (not res!1191012)) b!2870311))

(assert (= start!280198 b!2870310))

(declare-fun m!3289035 () Bool)

(assert (=> b!2870315 m!3289035))

(declare-fun m!3289037 () Bool)

(assert (=> b!2870314 m!3289037))

(declare-fun m!3289039 () Bool)

(assert (=> start!280198 m!3289039))

(declare-fun m!3289041 () Bool)

(assert (=> start!280198 m!3289041))

(declare-fun m!3289043 () Bool)

(assert (=> b!2870313 m!3289043))

(declare-fun m!3289045 () Bool)

(assert (=> b!2870313 m!3289045))

(declare-fun m!3289047 () Bool)

(assert (=> b!2870313 m!3289047))

(declare-fun m!3289049 () Bool)

(assert (=> b!2870313 m!3289049))

(assert (=> b!2870313 m!3289049))

(assert (=> b!2870313 m!3289045))

(declare-fun m!3289051 () Bool)

(assert (=> b!2870313 m!3289051))

(declare-fun m!3289053 () Bool)

(assert (=> b!2870313 m!3289053))

(assert (=> b!2870313 m!3289053))

(declare-fun m!3289055 () Bool)

(assert (=> b!2870313 m!3289055))

(declare-fun m!3289057 () Bool)

(assert (=> b!2870313 m!3289057))

(declare-fun m!3289059 () Bool)

(assert (=> b!2870311 m!3289059))

(push 1)

(assert (not b!2870313))

(assert (not b!2870311))

(assert (not b!2870315))

(assert (not b!2870314))

(assert (not b!2870310))

(assert (not start!280198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2870346 () Bool)

(declare-fun e!1816772 () Option!6409)

(assert (=> b!2870346 (= e!1816772 None!6408)))

(declare-fun b!2870347 () Bool)

(declare-fun e!1816774 () Option!6409)

(assert (=> b!2870347 (= e!1816774 e!1816772)))

(declare-fun lt!1017859 () Option!6409)

(assert (=> b!2870347 (= lt!1017859 (getLanguageWitness!419 (h!39791 (exprs!3194 lt!1017833))))))

(declare-fun c!464174 () Bool)

(assert (=> b!2870347 (= c!464174 (is-Some!6408 lt!1017859))))

(declare-fun d!829481 () Bool)

(declare-fun lt!1017858 () Option!6409)

(declare-fun lambda!107057 () Int)

(declare-fun isEmpty!18710 (Option!6409) Bool)

(declare-fun exists!1153 (List!34495 Int) Bool)

(assert (=> d!829481 (= (isEmpty!18710 lt!1017858) (exists!1153 (exprs!3194 lt!1017833) lambda!107057))))

(assert (=> d!829481 (= lt!1017858 e!1816774)))

(declare-fun c!464175 () Bool)

(assert (=> d!829481 (= c!464175 (is-Cons!34371 (exprs!3194 lt!1017833)))))

(assert (=> d!829481 (= (getLanguageWitness!420 lt!1017833) lt!1017858)))

(declare-fun b!2870348 () Bool)

(declare-fun c!464176 () Bool)

(declare-fun lt!1017860 () Option!6409)

(assert (=> b!2870348 (= c!464176 (is-Some!6408 lt!1017860))))

(assert (=> b!2870348 (= lt!1017860 (getLanguageWitness!420 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))

(declare-fun e!1816773 () Option!6409)

(assert (=> b!2870348 (= e!1816772 e!1816773)))

(declare-fun b!2870349 () Bool)

(assert (=> b!2870349 (= e!1816774 (Some!6408 Nil!34372))))

(declare-fun b!2870350 () Bool)

(declare-fun ++!8171 (List!34496 List!34496) List!34496)

(assert (=> b!2870350 (= e!1816773 (Some!6408 (++!8171 (v!34530 lt!1017859) (v!34530 lt!1017860))))))

(declare-fun b!2870351 () Bool)

(assert (=> b!2870351 (= e!1816773 None!6408)))

(assert (= (and d!829481 c!464175) b!2870347))

(assert (= (and d!829481 (not c!464175)) b!2870349))

(assert (= (and b!2870347 c!464174) b!2870348))

(assert (= (and b!2870347 (not c!464174)) b!2870346))

(assert (= (and b!2870348 c!464176) b!2870350))

(assert (= (and b!2870348 (not c!464176)) b!2870351))

(declare-fun m!3289087 () Bool)

(assert (=> b!2870347 m!3289087))

(declare-fun m!3289089 () Bool)

(assert (=> d!829481 m!3289089))

(declare-fun m!3289091 () Bool)

(assert (=> d!829481 m!3289091))

(declare-fun m!3289093 () Bool)

(assert (=> b!2870348 m!3289093))

(declare-fun m!3289095 () Bool)

(assert (=> b!2870350 m!3289095))

(assert (=> b!2870315 d!829481))

(declare-fun b!2870384 () Bool)

(declare-fun e!1816796 () Option!6409)

(assert (=> b!2870384 (= e!1816796 (Some!6408 (Cons!34372 (c!464165 (h!39791 (exprs!3194 c!7184))) Nil!34372)))))

(declare-fun b!2870385 () Bool)

(declare-fun e!1816791 () Option!6409)

(declare-fun lt!1017869 () Option!6409)

(declare-fun lt!1017867 () Option!6409)

(assert (=> b!2870385 (= e!1816791 (Some!6408 (++!8171 (v!34530 lt!1017869) (v!34530 lt!1017867))))))

(declare-fun b!2870386 () Bool)

(declare-fun e!1816797 () Option!6409)

(assert (=> b!2870386 (= e!1816797 None!6408)))

(declare-fun b!2870387 () Bool)

(declare-fun c!464198 () Bool)

(assert (=> b!2870387 (= c!464198 (is-Some!6408 lt!1017867))))

(declare-fun call!185302 () Option!6409)

(assert (=> b!2870387 (= lt!1017867 call!185302)))

(assert (=> b!2870387 (= e!1816797 e!1816791)))

(declare-fun b!2870388 () Bool)

(declare-fun e!1816795 () Option!6409)

(declare-fun e!1816794 () Option!6409)

(assert (=> b!2870388 (= e!1816795 e!1816794)))

(declare-fun c!464194 () Bool)

(assert (=> b!2870388 (= c!464194 (is-EmptyLang!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun bm!185296 () Bool)

(declare-fun call!185301 () Option!6409)

(declare-fun c!464199 () Bool)

(assert (=> bm!185296 (= call!185301 (getLanguageWitness!419 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2870389 () Bool)

(declare-fun e!1816798 () Option!6409)

(assert (=> b!2870389 (= e!1816796 e!1816798)))

(declare-fun c!464197 () Bool)

(assert (=> b!2870389 (= c!464197 (is-Star!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870390 () Bool)

(assert (=> b!2870390 (= e!1816794 None!6408)))

(declare-fun b!2870391 () Bool)

(declare-fun e!1816792 () Option!6409)

(declare-fun e!1816793 () Option!6409)

(assert (=> b!2870391 (= e!1816792 e!1816793)))

(declare-fun lt!1017868 () Option!6409)

(assert (=> b!2870391 (= lt!1017868 call!185301)))

(declare-fun c!464200 () Bool)

(assert (=> b!2870391 (= c!464200 (is-Some!6408 lt!1017868))))

(declare-fun b!2870392 () Bool)

(assert (=> b!2870392 (= e!1816795 (Some!6408 Nil!34372))))

(declare-fun bm!185297 () Bool)

(assert (=> bm!185297 (= call!185302 (getLanguageWitness!419 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun d!829483 () Bool)

(declare-fun c!464195 () Bool)

(assert (=> d!829483 (= c!464195 (is-EmptyExpr!8734 (h!39791 (exprs!3194 c!7184))))))

(assert (=> d!829483 (= (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))) e!1816795)))

(declare-fun b!2870393 () Bool)

(declare-fun c!464196 () Bool)

(assert (=> b!2870393 (= c!464196 (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184))))))

(assert (=> b!2870393 (= e!1816794 e!1816796)))

(declare-fun b!2870394 () Bool)

(assert (=> b!2870394 (= c!464199 (is-Union!8734 (h!39791 (exprs!3194 c!7184))))))

(assert (=> b!2870394 (= e!1816798 e!1816792)))

(declare-fun b!2870395 () Bool)

(assert (=> b!2870395 (= e!1816792 e!1816797)))

(assert (=> b!2870395 (= lt!1017869 call!185301)))

(declare-fun c!464193 () Bool)

(assert (=> b!2870395 (= c!464193 (is-Some!6408 lt!1017869))))

(declare-fun b!2870396 () Bool)

(assert (=> b!2870396 (= e!1816793 lt!1017868)))

(declare-fun b!2870397 () Bool)

(assert (=> b!2870397 (= e!1816798 (Some!6408 Nil!34372))))

(declare-fun b!2870398 () Bool)

(assert (=> b!2870398 (= e!1816793 call!185302)))

(declare-fun b!2870399 () Bool)

(assert (=> b!2870399 (= e!1816791 None!6408)))

(assert (= (and d!829483 c!464195) b!2870392))

(assert (= (and d!829483 (not c!464195)) b!2870388))

(assert (= (and b!2870388 c!464194) b!2870390))

(assert (= (and b!2870388 (not c!464194)) b!2870393))

(assert (= (and b!2870393 c!464196) b!2870384))

(assert (= (and b!2870393 (not c!464196)) b!2870389))

(assert (= (and b!2870389 c!464197) b!2870397))

(assert (= (and b!2870389 (not c!464197)) b!2870394))

(assert (= (and b!2870394 c!464199) b!2870391))

(assert (= (and b!2870394 (not c!464199)) b!2870395))

(assert (= (and b!2870391 c!464200) b!2870396))

(assert (= (and b!2870391 (not c!464200)) b!2870398))

(assert (= (and b!2870395 c!464193) b!2870387))

(assert (= (and b!2870395 (not c!464193)) b!2870386))

(assert (= (and b!2870387 c!464198) b!2870385))

(assert (= (and b!2870387 (not c!464198)) b!2870399))

(assert (= (or b!2870398 b!2870387) bm!185297))

(assert (= (or b!2870391 b!2870395) bm!185296))

(declare-fun m!3289097 () Bool)

(assert (=> b!2870385 m!3289097))

(declare-fun m!3289099 () Bool)

(assert (=> bm!185296 m!3289099))

(declare-fun m!3289101 () Bool)

(assert (=> bm!185297 m!3289101))

(assert (=> b!2870314 d!829483))

(declare-fun bs!521982 () Bool)

(declare-fun d!829485 () Bool)

(assert (= bs!521982 (and d!829485 d!829481)))

(declare-fun lambda!107060 () Int)

(assert (=> bs!521982 (= lambda!107060 lambda!107057)))

(assert (=> d!829485 (= (lostCause!826 c!7184) (exists!1153 (exprs!3194 c!7184) lambda!107060))))

(declare-fun bs!521983 () Bool)

(assert (= bs!521983 d!829485))

(declare-fun m!3289103 () Bool)

(assert (=> bs!521983 m!3289103))

(assert (=> start!280198 d!829485))

(declare-fun bs!521984 () Bool)

(declare-fun d!829487 () Bool)

(assert (= bs!521984 (and d!829487 d!829481)))

(declare-fun lambda!107063 () Int)

(assert (=> bs!521984 (not (= lambda!107063 lambda!107057))))

(declare-fun bs!521985 () Bool)

(assert (= bs!521985 (and d!829487 d!829485)))

(assert (=> bs!521985 (not (= lambda!107063 lambda!107060))))

(declare-fun forall!7079 (List!34495 Int) Bool)

(assert (=> d!829487 (= (inv!46423 c!7184) (forall!7079 (exprs!3194 c!7184) lambda!107063))))

(declare-fun bs!521986 () Bool)

(assert (= bs!521986 d!829487))

(declare-fun m!3289105 () Bool)

(assert (=> bs!521986 m!3289105))

(assert (=> start!280198 d!829487))

(declare-fun b!2870428 () Bool)

(declare-fun res!1191046 () Bool)

(declare-fun e!1816813 () Bool)

(assert (=> b!2870428 (=> res!1191046 e!1816813)))

(declare-fun isEmpty!18711 (List!34496) Bool)

(declare-fun tail!4564 (List!34496) List!34496)

(assert (=> b!2870428 (= res!1191046 (not (isEmpty!18711 (tail!4564 (v!34530 lt!1017835)))))))

(declare-fun b!2870429 () Bool)

(declare-fun e!1816818 () Bool)

(declare-fun head!6339 (List!34496) C!17650)

(assert (=> b!2870429 (= e!1816818 (= (head!6339 (v!34530 lt!1017835)) (c!464165 (h!39791 (exprs!3194 c!7184)))))))

(declare-fun d!829489 () Bool)

(declare-fun e!1816817 () Bool)

(assert (=> d!829489 e!1816817))

(declare-fun c!464208 () Bool)

(assert (=> d!829489 (= c!464208 (is-EmptyExpr!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun lt!1017872 () Bool)

(declare-fun e!1816816 () Bool)

(assert (=> d!829489 (= lt!1017872 e!1816816)))

(declare-fun c!464207 () Bool)

(assert (=> d!829489 (= c!464207 (isEmpty!18711 (v!34530 lt!1017835)))))

(declare-fun validRegex!3512 (Regex!8734) Bool)

(assert (=> d!829489 (validRegex!3512 (h!39791 (exprs!3194 c!7184)))))

(assert (=> d!829489 (= (matchR!3734 (h!39791 (exprs!3194 c!7184)) (v!34530 lt!1017835)) lt!1017872)))

(declare-fun bm!185300 () Bool)

(declare-fun call!185305 () Bool)

(assert (=> bm!185300 (= call!185305 (isEmpty!18711 (v!34530 lt!1017835)))))

(declare-fun b!2870430 () Bool)

(declare-fun e!1816814 () Bool)

(assert (=> b!2870430 (= e!1816817 e!1816814)))

(declare-fun c!464209 () Bool)

(assert (=> b!2870430 (= c!464209 (is-EmptyLang!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870431 () Bool)

(declare-fun e!1816819 () Bool)

(declare-fun e!1816815 () Bool)

(assert (=> b!2870431 (= e!1816819 e!1816815)))

(declare-fun res!1191053 () Bool)

(assert (=> b!2870431 (=> (not res!1191053) (not e!1816815))))

(assert (=> b!2870431 (= res!1191053 (not lt!1017872))))

(declare-fun b!2870432 () Bool)

(declare-fun res!1191051 () Bool)

(assert (=> b!2870432 (=> res!1191051 e!1816819)))

(assert (=> b!2870432 (= res!1191051 e!1816818)))

(declare-fun res!1191052 () Bool)

(assert (=> b!2870432 (=> (not res!1191052) (not e!1816818))))

(assert (=> b!2870432 (= res!1191052 lt!1017872)))

(declare-fun b!2870433 () Bool)

(assert (=> b!2870433 (= e!1816813 (not (= (head!6339 (v!34530 lt!1017835)) (c!464165 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2870434 () Bool)

(assert (=> b!2870434 (= e!1816814 (not lt!1017872))))

(declare-fun b!2870435 () Bool)

(assert (=> b!2870435 (= e!1816815 e!1816813)))

(declare-fun res!1191048 () Bool)

(assert (=> b!2870435 (=> res!1191048 e!1816813)))

(assert (=> b!2870435 (= res!1191048 call!185305)))

(declare-fun b!2870436 () Bool)

(declare-fun nullable!2684 (Regex!8734) Bool)

(assert (=> b!2870436 (= e!1816816 (nullable!2684 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870437 () Bool)

(declare-fun res!1191049 () Bool)

(assert (=> b!2870437 (=> (not res!1191049) (not e!1816818))))

(assert (=> b!2870437 (= res!1191049 (not call!185305))))

(declare-fun b!2870438 () Bool)

(assert (=> b!2870438 (= e!1816817 (= lt!1017872 call!185305))))

(declare-fun b!2870439 () Bool)

(declare-fun derivativeStep!2317 (Regex!8734 C!17650) Regex!8734)

(assert (=> b!2870439 (= e!1816816 (matchR!3734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (tail!4564 (v!34530 lt!1017835))))))

(declare-fun b!2870440 () Bool)

(declare-fun res!1191050 () Bool)

(assert (=> b!2870440 (=> res!1191050 e!1816819)))

(assert (=> b!2870440 (= res!1191050 (not (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> b!2870440 (= e!1816814 e!1816819)))

(declare-fun b!2870441 () Bool)

(declare-fun res!1191047 () Bool)

(assert (=> b!2870441 (=> (not res!1191047) (not e!1816818))))

(assert (=> b!2870441 (= res!1191047 (isEmpty!18711 (tail!4564 (v!34530 lt!1017835))))))

(assert (= (and d!829489 c!464207) b!2870436))

(assert (= (and d!829489 (not c!464207)) b!2870439))

(assert (= (and d!829489 c!464208) b!2870438))

(assert (= (and d!829489 (not c!464208)) b!2870430))

(assert (= (and b!2870430 c!464209) b!2870434))

(assert (= (and b!2870430 (not c!464209)) b!2870440))

(assert (= (and b!2870440 (not res!1191050)) b!2870432))

(assert (= (and b!2870432 res!1191052) b!2870437))

(assert (= (and b!2870437 res!1191049) b!2870441))

(assert (= (and b!2870441 res!1191047) b!2870429))

(assert (= (and b!2870432 (not res!1191051)) b!2870431))

(assert (= (and b!2870431 res!1191053) b!2870435))

(assert (= (and b!2870435 (not res!1191048)) b!2870428))

(assert (= (and b!2870428 (not res!1191046)) b!2870433))

(assert (= (or b!2870438 b!2870437 b!2870435) bm!185300))

(declare-fun m!3289109 () Bool)

(assert (=> b!2870433 m!3289109))

(declare-fun m!3289111 () Bool)

(assert (=> b!2870441 m!3289111))

(assert (=> b!2870441 m!3289111))

(declare-fun m!3289113 () Bool)

(assert (=> b!2870441 m!3289113))

(declare-fun m!3289115 () Bool)

(assert (=> bm!185300 m!3289115))

(assert (=> b!2870428 m!3289111))

(assert (=> b!2870428 m!3289111))

(assert (=> b!2870428 m!3289113))

(assert (=> b!2870439 m!3289109))

(assert (=> b!2870439 m!3289109))

(declare-fun m!3289117 () Bool)

(assert (=> b!2870439 m!3289117))

(assert (=> b!2870439 m!3289111))

(assert (=> b!2870439 m!3289117))

(assert (=> b!2870439 m!3289111))

(declare-fun m!3289119 () Bool)

(assert (=> b!2870439 m!3289119))

(assert (=> d!829489 m!3289115))

(declare-fun m!3289121 () Bool)

(assert (=> d!829489 m!3289121))

(assert (=> b!2870429 m!3289109))

(declare-fun m!3289123 () Bool)

(assert (=> b!2870436 m!3289123))

(assert (=> b!2870313 d!829489))

(declare-fun d!829493 () Bool)

(assert (=> d!829493 (= (get!10328 lt!1017835) (v!34530 lt!1017835))))

(assert (=> b!2870313 d!829493))

(declare-fun d!829495 () Bool)

(declare-fun c!464212 () Bool)

(assert (=> d!829495 (= c!464212 (isEmpty!18711 (get!10328 lt!1017832)))))

(declare-fun e!1816822 () Bool)

(assert (=> d!829495 (= (matchZipper!476 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (get!10328 lt!1017832)) e!1816822)))

(declare-fun b!2870446 () Bool)

(declare-fun nullableZipper!712 ((Set Context!5388)) Bool)

(assert (=> b!2870446 (= e!1816822 (nullableZipper!712 (set.insert lt!1017833 (as set.empty (Set Context!5388)))))))

(declare-fun b!2870447 () Bool)

(declare-fun derivationStepZipper!468 ((Set Context!5388) C!17650) (Set Context!5388))

(assert (=> b!2870447 (= e!1816822 (matchZipper!476 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) (tail!4564 (get!10328 lt!1017832))))))

(assert (= (and d!829495 c!464212) b!2870446))

(assert (= (and d!829495 (not c!464212)) b!2870447))

(assert (=> d!829495 m!3289045))

(declare-fun m!3289125 () Bool)

(assert (=> d!829495 m!3289125))

(assert (=> b!2870446 m!3289049))

(declare-fun m!3289127 () Bool)

(assert (=> b!2870446 m!3289127))

(assert (=> b!2870447 m!3289045))

(declare-fun m!3289129 () Bool)

(assert (=> b!2870447 m!3289129))

(assert (=> b!2870447 m!3289049))

(assert (=> b!2870447 m!3289129))

(declare-fun m!3289131 () Bool)

(assert (=> b!2870447 m!3289131))

(assert (=> b!2870447 m!3289045))

(declare-fun m!3289133 () Bool)

(assert (=> b!2870447 m!3289133))

(assert (=> b!2870447 m!3289131))

(assert (=> b!2870447 m!3289133))

(declare-fun m!3289135 () Bool)

(assert (=> b!2870447 m!3289135))

(assert (=> b!2870313 d!829495))

(declare-fun d!829497 () Bool)

(assert (=> d!829497 (matchZipper!476 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (get!10328 (getLanguageWitness!420 lt!1017833)))))

(declare-fun lt!1017884 () Unit!47969)

(declare-fun choose!16972 (Context!5388) Unit!47969)

(assert (=> d!829497 (= lt!1017884 (choose!16972 lt!1017833))))

(assert (=> d!829497 (not (lostCause!826 lt!1017833))))

(assert (=> d!829497 (= (lemmaGetWitnessMatchesContext!33 lt!1017833) lt!1017884)))

(declare-fun bs!521989 () Bool)

(assert (= bs!521989 d!829497))

(assert (=> bs!521989 m!3289035))

(declare-fun m!3289141 () Bool)

(assert (=> bs!521989 m!3289141))

(assert (=> bs!521989 m!3289035))

(declare-fun m!3289145 () Bool)

(assert (=> bs!521989 m!3289145))

(assert (=> bs!521989 m!3289049))

(assert (=> bs!521989 m!3289145))

(declare-fun m!3289151 () Bool)

(assert (=> bs!521989 m!3289151))

(assert (=> bs!521989 m!3289049))

(declare-fun m!3289153 () Bool)

(assert (=> bs!521989 m!3289153))

(assert (=> b!2870313 d!829497))

(declare-fun d!829501 () Bool)

(assert (=> d!829501 (matchR!3734 (h!39791 (exprs!3194 c!7184)) (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))

(declare-fun lt!1017887 () Unit!47969)

(declare-fun choose!16973 (Regex!8734) Unit!47969)

(assert (=> d!829501 (= lt!1017887 (choose!16973 (h!39791 (exprs!3194 c!7184))))))

(assert (=> d!829501 (validRegex!3512 (h!39791 (exprs!3194 c!7184)))))

(assert (=> d!829501 (= (lemmaGetWitnessMatches!41 (h!39791 (exprs!3194 c!7184))) lt!1017887)))

(declare-fun bs!521990 () Bool)

(assert (= bs!521990 d!829501))

(declare-fun m!3289155 () Bool)

(assert (=> bs!521990 m!3289155))

(declare-fun m!3289157 () Bool)

(assert (=> bs!521990 m!3289157))

(assert (=> bs!521990 m!3289121))

(assert (=> bs!521990 m!3289037))

(declare-fun m!3289159 () Bool)

(assert (=> bs!521990 m!3289159))

(assert (=> bs!521990 m!3289037))

(assert (=> bs!521990 m!3289155))

(assert (=> b!2870313 d!829501))

(declare-fun d!829503 () Bool)

(assert (=> d!829503 (= (get!10328 lt!1017832) (v!34530 lt!1017832))))

(assert (=> b!2870313 d!829503))

(declare-fun b!2870470 () Bool)

(declare-fun res!1191054 () Bool)

(declare-fun e!1816834 () Bool)

(assert (=> b!2870470 (=> res!1191054 e!1816834)))

(assert (=> b!2870470 (= res!1191054 (not (isEmpty!18711 (tail!4564 (get!10328 lt!1017835)))))))

(declare-fun b!2870471 () Bool)

(declare-fun e!1816839 () Bool)

(assert (=> b!2870471 (= e!1816839 (= (head!6339 (get!10328 lt!1017835)) (c!464165 (h!39791 (exprs!3194 c!7184)))))))

(declare-fun d!829505 () Bool)

(declare-fun e!1816838 () Bool)

(assert (=> d!829505 e!1816838))

(declare-fun c!464227 () Bool)

(assert (=> d!829505 (= c!464227 (is-EmptyExpr!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun lt!1017888 () Bool)

(declare-fun e!1816837 () Bool)

(assert (=> d!829505 (= lt!1017888 e!1816837)))

(declare-fun c!464226 () Bool)

(assert (=> d!829505 (= c!464226 (isEmpty!18711 (get!10328 lt!1017835)))))

(assert (=> d!829505 (validRegex!3512 (h!39791 (exprs!3194 c!7184)))))

(assert (=> d!829505 (= (matchR!3734 (h!39791 (exprs!3194 c!7184)) (get!10328 lt!1017835)) lt!1017888)))

(declare-fun bm!185301 () Bool)

(declare-fun call!185306 () Bool)

(assert (=> bm!185301 (= call!185306 (isEmpty!18711 (get!10328 lt!1017835)))))

(declare-fun b!2870472 () Bool)

(declare-fun e!1816835 () Bool)

(assert (=> b!2870472 (= e!1816838 e!1816835)))

(declare-fun c!464228 () Bool)

(assert (=> b!2870472 (= c!464228 (is-EmptyLang!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870473 () Bool)

(declare-fun e!1816840 () Bool)

(declare-fun e!1816836 () Bool)

(assert (=> b!2870473 (= e!1816840 e!1816836)))

(declare-fun res!1191061 () Bool)

(assert (=> b!2870473 (=> (not res!1191061) (not e!1816836))))

(assert (=> b!2870473 (= res!1191061 (not lt!1017888))))

(declare-fun b!2870474 () Bool)

(declare-fun res!1191059 () Bool)

(assert (=> b!2870474 (=> res!1191059 e!1816840)))

(assert (=> b!2870474 (= res!1191059 e!1816839)))

(declare-fun res!1191060 () Bool)

(assert (=> b!2870474 (=> (not res!1191060) (not e!1816839))))

(assert (=> b!2870474 (= res!1191060 lt!1017888)))

(declare-fun b!2870475 () Bool)

(assert (=> b!2870475 (= e!1816834 (not (= (head!6339 (get!10328 lt!1017835)) (c!464165 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2870476 () Bool)

(assert (=> b!2870476 (= e!1816835 (not lt!1017888))))

(declare-fun b!2870477 () Bool)

(assert (=> b!2870477 (= e!1816836 e!1816834)))

(declare-fun res!1191056 () Bool)

(assert (=> b!2870477 (=> res!1191056 e!1816834)))

(assert (=> b!2870477 (= res!1191056 call!185306)))

(declare-fun b!2870478 () Bool)

(assert (=> b!2870478 (= e!1816837 (nullable!2684 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870479 () Bool)

(declare-fun res!1191057 () Bool)

(assert (=> b!2870479 (=> (not res!1191057) (not e!1816839))))

(assert (=> b!2870479 (= res!1191057 (not call!185306))))

(declare-fun b!2870480 () Bool)

(assert (=> b!2870480 (= e!1816838 (= lt!1017888 call!185306))))

(declare-fun b!2870481 () Bool)

(assert (=> b!2870481 (= e!1816837 (matchR!3734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (tail!4564 (get!10328 lt!1017835))))))

(declare-fun b!2870482 () Bool)

(declare-fun res!1191058 () Bool)

(assert (=> b!2870482 (=> res!1191058 e!1816840)))

(assert (=> b!2870482 (= res!1191058 (not (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> b!2870482 (= e!1816835 e!1816840)))

(declare-fun b!2870483 () Bool)

(declare-fun res!1191055 () Bool)

(assert (=> b!2870483 (=> (not res!1191055) (not e!1816839))))

(assert (=> b!2870483 (= res!1191055 (isEmpty!18711 (tail!4564 (get!10328 lt!1017835))))))

(assert (= (and d!829505 c!464226) b!2870478))

(assert (= (and d!829505 (not c!464226)) b!2870481))

(assert (= (and d!829505 c!464227) b!2870480))

(assert (= (and d!829505 (not c!464227)) b!2870472))

(assert (= (and b!2870472 c!464228) b!2870476))

(assert (= (and b!2870472 (not c!464228)) b!2870482))

(assert (= (and b!2870482 (not res!1191058)) b!2870474))

(assert (= (and b!2870474 res!1191060) b!2870479))

(assert (= (and b!2870479 res!1191057) b!2870483))

(assert (= (and b!2870483 res!1191055) b!2870471))

(assert (= (and b!2870474 (not res!1191059)) b!2870473))

(assert (= (and b!2870473 res!1191061) b!2870477))

(assert (= (and b!2870477 (not res!1191056)) b!2870470))

(assert (= (and b!2870470 (not res!1191054)) b!2870475))

(assert (= (or b!2870480 b!2870479 b!2870477) bm!185301))

(assert (=> b!2870475 m!3289053))

(declare-fun m!3289167 () Bool)

(assert (=> b!2870475 m!3289167))

(assert (=> b!2870483 m!3289053))

(declare-fun m!3289169 () Bool)

(assert (=> b!2870483 m!3289169))

(assert (=> b!2870483 m!3289169))

(declare-fun m!3289173 () Bool)

(assert (=> b!2870483 m!3289173))

(assert (=> bm!185301 m!3289053))

(declare-fun m!3289177 () Bool)

(assert (=> bm!185301 m!3289177))

(assert (=> b!2870470 m!3289053))

(assert (=> b!2870470 m!3289169))

(assert (=> b!2870470 m!3289169))

(assert (=> b!2870470 m!3289173))

(assert (=> b!2870481 m!3289053))

(assert (=> b!2870481 m!3289167))

(assert (=> b!2870481 m!3289167))

(declare-fun m!3289181 () Bool)

(assert (=> b!2870481 m!3289181))

(assert (=> b!2870481 m!3289053))

(assert (=> b!2870481 m!3289169))

(assert (=> b!2870481 m!3289181))

(assert (=> b!2870481 m!3289169))

(declare-fun m!3289183 () Bool)

(assert (=> b!2870481 m!3289183))

(assert (=> d!829505 m!3289053))

(assert (=> d!829505 m!3289177))

(assert (=> d!829505 m!3289121))

(assert (=> b!2870471 m!3289053))

(assert (=> b!2870471 m!3289167))

(assert (=> b!2870478 m!3289123))

(assert (=> b!2870313 d!829505))

(declare-fun bs!521991 () Bool)

(declare-fun d!829509 () Bool)

(assert (= bs!521991 (and d!829509 d!829481)))

(declare-fun lambda!107070 () Int)

(assert (=> bs!521991 (not (= lambda!107070 lambda!107057))))

(declare-fun bs!521992 () Bool)

(assert (= bs!521992 (and d!829509 d!829485)))

(assert (=> bs!521992 (not (= lambda!107070 lambda!107060))))

(declare-fun bs!521993 () Bool)

(assert (= bs!521993 (and d!829509 d!829487)))

(assert (=> bs!521993 (= lambda!107070 lambda!107063)))

(assert (=> d!829509 (= (inv!46423 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))) (forall!7079 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))) lambda!107070))))

(declare-fun bs!521994 () Bool)

(assert (= bs!521994 d!829509))

(declare-fun m!3289185 () Bool)

(assert (=> bs!521994 m!3289185))

(assert (=> b!2870311 d!829509))

(declare-fun b!2870490 () Bool)

(declare-fun e!1816844 () Bool)

(declare-fun tp!923359 () Bool)

(declare-fun tp!923360 () Bool)

(assert (=> b!2870490 (= e!1816844 (and tp!923359 tp!923360))))

(assert (=> b!2870310 (= tp!923351 e!1816844)))

(assert (= (and b!2870310 (is-Cons!34371 (exprs!3194 c!7184))) b!2870490))

(push 1)

(assert (not b!2870475))

(assert (not d!829505))

(assert (not b!2870439))

(assert (not bm!185296))

(assert (not b!2870478))

(assert (not b!2870483))

(assert (not b!2870385))

(assert (not bm!185301))

(assert (not b!2870447))

(assert (not b!2870471))

(assert (not b!2870481))

(assert (not d!829497))

(assert (not d!829485))

(assert (not b!2870433))

(assert (not b!2870441))

(assert (not d!829501))

(assert (not bm!185297))

(assert (not d!829495))

(assert (not b!2870429))

(assert (not b!2870436))

(assert (not b!2870348))

(assert (not b!2870350))

(assert (not bm!185300))

(assert (not b!2870470))

(assert (not d!829489))

(assert (not b!2870446))

(assert (not d!829481))

(assert (not d!829487))

(assert (not b!2870428))

(assert (not b!2870490))

(assert (not d!829509))

(assert (not b!2870347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2870610 () Bool)

(declare-fun res!1191099 () Bool)

(declare-fun e!1816904 () Bool)

(assert (=> b!2870610 (=> (not res!1191099) (not e!1816904))))

(declare-fun lt!1017910 () List!34496)

(declare-fun size!26319 (List!34496) Int)

(assert (=> b!2870610 (= res!1191099 (= (size!26319 lt!1017910) (+ (size!26319 (v!34530 lt!1017869)) (size!26319 (v!34530 lt!1017867)))))))

(declare-fun b!2870611 () Bool)

(assert (=> b!2870611 (= e!1816904 (or (not (= (v!34530 lt!1017867) Nil!34372)) (= lt!1017910 (v!34530 lt!1017869))))))

(declare-fun b!2870608 () Bool)

(declare-fun e!1816905 () List!34496)

(assert (=> b!2870608 (= e!1816905 (v!34530 lt!1017867))))

(declare-fun b!2870609 () Bool)

(assert (=> b!2870609 (= e!1816905 (Cons!34372 (h!39792 (v!34530 lt!1017869)) (++!8171 (t!233539 (v!34530 lt!1017869)) (v!34530 lt!1017867))))))

(declare-fun d!829527 () Bool)

(assert (=> d!829527 e!1816904))

(declare-fun res!1191098 () Bool)

(assert (=> d!829527 (=> (not res!1191098) (not e!1816904))))

(declare-fun content!4696 (List!34496) (Set C!17650))

(assert (=> d!829527 (= res!1191098 (= (content!4696 lt!1017910) (set.union (content!4696 (v!34530 lt!1017869)) (content!4696 (v!34530 lt!1017867)))))))

(assert (=> d!829527 (= lt!1017910 e!1816905)))

(declare-fun c!464269 () Bool)

(assert (=> d!829527 (= c!464269 (is-Nil!34372 (v!34530 lt!1017869)))))

(assert (=> d!829527 (= (++!8171 (v!34530 lt!1017869) (v!34530 lt!1017867)) lt!1017910)))

(assert (= (and d!829527 c!464269) b!2870608))

(assert (= (and d!829527 (not c!464269)) b!2870609))

(assert (= (and d!829527 res!1191098) b!2870610))

(assert (= (and b!2870610 res!1191099) b!2870611))

(declare-fun m!3289239 () Bool)

(assert (=> b!2870610 m!3289239))

(declare-fun m!3289241 () Bool)

(assert (=> b!2870610 m!3289241))

(declare-fun m!3289243 () Bool)

(assert (=> b!2870610 m!3289243))

(declare-fun m!3289245 () Bool)

(assert (=> b!2870609 m!3289245))

(declare-fun m!3289247 () Bool)

(assert (=> d!829527 m!3289247))

(declare-fun m!3289249 () Bool)

(assert (=> d!829527 m!3289249))

(declare-fun m!3289251 () Bool)

(assert (=> d!829527 m!3289251))

(assert (=> b!2870385 d!829527))

(declare-fun d!829529 () Bool)

(declare-fun c!464270 () Bool)

(assert (=> d!829529 (= c!464270 (isEmpty!18711 (tail!4564 (get!10328 lt!1017832))))))

(declare-fun e!1816906 () Bool)

(assert (=> d!829529 (= (matchZipper!476 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) (tail!4564 (get!10328 lt!1017832))) e!1816906)))

(declare-fun b!2870612 () Bool)

(assert (=> b!2870612 (= e!1816906 (nullableZipper!712 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832)))))))

(declare-fun b!2870613 () Bool)

(assert (=> b!2870613 (= e!1816906 (matchZipper!476 (derivationStepZipper!468 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) (head!6339 (tail!4564 (get!10328 lt!1017832)))) (tail!4564 (tail!4564 (get!10328 lt!1017832)))))))

(assert (= (and d!829529 c!464270) b!2870612))

(assert (= (and d!829529 (not c!464270)) b!2870613))

(assert (=> d!829529 m!3289133))

(declare-fun m!3289253 () Bool)

(assert (=> d!829529 m!3289253))

(assert (=> b!2870612 m!3289131))

(declare-fun m!3289255 () Bool)

(assert (=> b!2870612 m!3289255))

(assert (=> b!2870613 m!3289133))

(declare-fun m!3289257 () Bool)

(assert (=> b!2870613 m!3289257))

(assert (=> b!2870613 m!3289131))

(assert (=> b!2870613 m!3289257))

(declare-fun m!3289259 () Bool)

(assert (=> b!2870613 m!3289259))

(assert (=> b!2870613 m!3289133))

(declare-fun m!3289261 () Bool)

(assert (=> b!2870613 m!3289261))

(assert (=> b!2870613 m!3289259))

(assert (=> b!2870613 m!3289261))

(declare-fun m!3289263 () Bool)

(assert (=> b!2870613 m!3289263))

(assert (=> b!2870447 d!829529))

(declare-fun d!829531 () Bool)

(assert (=> d!829531 true))

(declare-fun lambda!107077 () Int)

(declare-fun flatMap!217 ((Set Context!5388) Int) (Set Context!5388))

(assert (=> d!829531 (= (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) (flatMap!217 (set.insert lt!1017833 (as set.empty (Set Context!5388))) lambda!107077))))

(declare-fun bs!522004 () Bool)

(assert (= bs!522004 d!829531))

(assert (=> bs!522004 m!3289049))

(declare-fun m!3289265 () Bool)

(assert (=> bs!522004 m!3289265))

(assert (=> b!2870447 d!829531))

(declare-fun d!829533 () Bool)

(assert (=> d!829533 (= (head!6339 (get!10328 lt!1017832)) (h!39792 (get!10328 lt!1017832)))))

(assert (=> b!2870447 d!829533))

(declare-fun d!829535 () Bool)

(assert (=> d!829535 (= (tail!4564 (get!10328 lt!1017832)) (t!233539 (get!10328 lt!1017832)))))

(assert (=> b!2870447 d!829535))

(declare-fun d!829537 () Bool)

(assert (=> d!829537 (= (isEmpty!18711 (get!10328 lt!1017835)) (is-Nil!34372 (get!10328 lt!1017835)))))

(assert (=> bm!185301 d!829537))

(declare-fun d!829539 () Bool)

(assert (=> d!829539 (= (head!6339 (get!10328 lt!1017835)) (h!39792 (get!10328 lt!1017835)))))

(assert (=> b!2870471 d!829539))

(declare-fun d!829541 () Bool)

(assert (=> d!829541 (= (isEmpty!18711 (tail!4564 (v!34530 lt!1017835))) (is-Nil!34372 (tail!4564 (v!34530 lt!1017835))))))

(assert (=> b!2870441 d!829541))

(declare-fun d!829543 () Bool)

(assert (=> d!829543 (= (tail!4564 (v!34530 lt!1017835)) (t!233539 (v!34530 lt!1017835)))))

(assert (=> b!2870441 d!829543))

(declare-fun d!829545 () Bool)

(declare-fun lambda!107080 () Int)

(declare-fun exists!1155 ((Set Context!5388) Int) Bool)

(assert (=> d!829545 (= (nullableZipper!712 (set.insert lt!1017833 (as set.empty (Set Context!5388)))) (exists!1155 (set.insert lt!1017833 (as set.empty (Set Context!5388))) lambda!107080))))

(declare-fun bs!522005 () Bool)

(assert (= bs!522005 d!829545))

(assert (=> bs!522005 m!3289049))

(declare-fun m!3289267 () Bool)

(assert (=> bs!522005 m!3289267))

(assert (=> b!2870446 d!829545))

(assert (=> d!829505 d!829537))

(declare-fun b!2870634 () Bool)

(declare-fun e!1816921 () Bool)

(declare-fun e!1816924 () Bool)

(assert (=> b!2870634 (= e!1816921 e!1816924)))

(declare-fun res!1191111 () Bool)

(assert (=> b!2870634 (= res!1191111 (not (nullable!2684 (reg!9063 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> b!2870634 (=> (not res!1191111) (not e!1816924))))

(declare-fun b!2870635 () Bool)

(declare-fun e!1816923 () Bool)

(declare-fun call!185323 () Bool)

(assert (=> b!2870635 (= e!1816923 call!185323)))

(declare-fun bm!185318 () Bool)

(declare-fun call!185325 () Bool)

(declare-fun c!464280 () Bool)

(assert (=> bm!185318 (= call!185325 (validRegex!3512 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun d!829547 () Bool)

(declare-fun res!1191113 () Bool)

(declare-fun e!1816927 () Bool)

(assert (=> d!829547 (=> res!1191113 e!1816927)))

(assert (=> d!829547 (= res!1191113 (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184))))))

(assert (=> d!829547 (= (validRegex!3512 (h!39791 (exprs!3194 c!7184))) e!1816927)))

(declare-fun bm!185319 () Bool)

(declare-fun call!185324 () Bool)

(assert (=> bm!185319 (= call!185323 call!185324)))

(declare-fun c!464279 () Bool)

(declare-fun bm!185320 () Bool)

(assert (=> bm!185320 (= call!185324 (validRegex!3512 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2870636 () Bool)

(declare-fun res!1191110 () Bool)

(declare-fun e!1816926 () Bool)

(assert (=> b!2870636 (=> res!1191110 e!1816926)))

(assert (=> b!2870636 (= res!1191110 (not (is-Concat!14055 (h!39791 (exprs!3194 c!7184)))))))

(declare-fun e!1816922 () Bool)

(assert (=> b!2870636 (= e!1816922 e!1816926)))

(declare-fun b!2870637 () Bool)

(assert (=> b!2870637 (= e!1816921 e!1816922)))

(assert (=> b!2870637 (= c!464280 (is-Union!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870638 () Bool)

(assert (=> b!2870638 (= e!1816927 e!1816921)))

(assert (=> b!2870638 (= c!464279 (is-Star!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870639 () Bool)

(declare-fun res!1191114 () Bool)

(declare-fun e!1816925 () Bool)

(assert (=> b!2870639 (=> (not res!1191114) (not e!1816925))))

(assert (=> b!2870639 (= res!1191114 call!185323)))

(assert (=> b!2870639 (= e!1816922 e!1816925)))

(declare-fun b!2870640 () Bool)

(assert (=> b!2870640 (= e!1816926 e!1816923)))

(declare-fun res!1191112 () Bool)

(assert (=> b!2870640 (=> (not res!1191112) (not e!1816923))))

(assert (=> b!2870640 (= res!1191112 call!185325)))

(declare-fun b!2870641 () Bool)

(assert (=> b!2870641 (= e!1816924 call!185324)))

(declare-fun b!2870642 () Bool)

(assert (=> b!2870642 (= e!1816925 call!185325)))

(assert (= (and d!829547 (not res!1191113)) b!2870638))

(assert (= (and b!2870638 c!464279) b!2870634))

(assert (= (and b!2870638 (not c!464279)) b!2870637))

(assert (= (and b!2870634 res!1191111) b!2870641))

(assert (= (and b!2870637 c!464280) b!2870639))

(assert (= (and b!2870637 (not c!464280)) b!2870636))

(assert (= (and b!2870639 res!1191114) b!2870642))

(assert (= (and b!2870636 (not res!1191110)) b!2870640))

(assert (= (and b!2870640 res!1191112) b!2870635))

(assert (= (or b!2870642 b!2870640) bm!185318))

(assert (= (or b!2870639 b!2870635) bm!185319))

(assert (= (or b!2870641 bm!185319) bm!185320))

(declare-fun m!3289269 () Bool)

(assert (=> b!2870634 m!3289269))

(declare-fun m!3289271 () Bool)

(assert (=> bm!185318 m!3289271))

(declare-fun m!3289273 () Bool)

(assert (=> bm!185320 m!3289273))

(assert (=> d!829505 d!829547))

(declare-fun d!829549 () Bool)

(assert (=> d!829549 (= (isEmpty!18710 lt!1017858) (not (is-Some!6408 lt!1017858)))))

(assert (=> d!829481 d!829549))

(declare-fun bs!522006 () Bool)

(declare-fun d!829551 () Bool)

(assert (= bs!522006 (and d!829551 d!829481)))

(declare-fun lambda!107083 () Int)

(assert (=> bs!522006 (not (= lambda!107083 lambda!107057))))

(declare-fun bs!522007 () Bool)

(assert (= bs!522007 (and d!829551 d!829485)))

(assert (=> bs!522007 (not (= lambda!107083 lambda!107060))))

(declare-fun bs!522008 () Bool)

(assert (= bs!522008 (and d!829551 d!829487)))

(assert (=> bs!522008 (not (= lambda!107083 lambda!107063))))

(declare-fun bs!522009 () Bool)

(assert (= bs!522009 (and d!829551 d!829509)))

(assert (=> bs!522009 (not (= lambda!107083 lambda!107070))))

(assert (=> d!829551 true))

(declare-fun order!18125 () Int)

(declare-fun dynLambda!14306 (Int Int) Int)

(assert (=> d!829551 (< (dynLambda!14306 order!18125 lambda!107057) (dynLambda!14306 order!18125 lambda!107083))))

(assert (=> d!829551 (= (exists!1153 (exprs!3194 lt!1017833) lambda!107057) (not (forall!7079 (exprs!3194 lt!1017833) lambda!107083)))))

(declare-fun bs!522010 () Bool)

(assert (= bs!522010 d!829551))

(declare-fun m!3289275 () Bool)

(assert (=> bs!522010 m!3289275))

(assert (=> d!829481 d!829551))

(declare-fun d!829553 () Bool)

(assert (=> d!829553 (= (isEmpty!18711 (tail!4564 (get!10328 lt!1017835))) (is-Nil!34372 (tail!4564 (get!10328 lt!1017835))))))

(assert (=> b!2870470 d!829553))

(declare-fun d!829555 () Bool)

(assert (=> d!829555 (= (tail!4564 (get!10328 lt!1017835)) (t!233539 (get!10328 lt!1017835)))))

(assert (=> b!2870470 d!829555))

(declare-fun b!2870645 () Bool)

(declare-fun res!1191115 () Bool)

(declare-fun e!1816928 () Bool)

(assert (=> b!2870645 (=> res!1191115 e!1816928)))

(assert (=> b!2870645 (= res!1191115 (not (isEmpty!18711 (tail!4564 (tail!4564 (v!34530 lt!1017835))))))))

(declare-fun b!2870646 () Bool)

(declare-fun e!1816933 () Bool)

(assert (=> b!2870646 (= e!1816933 (= (head!6339 (tail!4564 (v!34530 lt!1017835))) (c!464165 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))))))

(declare-fun d!829557 () Bool)

(declare-fun e!1816932 () Bool)

(assert (=> d!829557 e!1816932))

(declare-fun c!464282 () Bool)

(assert (=> d!829557 (= c!464282 (is-EmptyExpr!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun lt!1017911 () Bool)

(declare-fun e!1816931 () Bool)

(assert (=> d!829557 (= lt!1017911 e!1816931)))

(declare-fun c!464281 () Bool)

(assert (=> d!829557 (= c!464281 (isEmpty!18711 (tail!4564 (v!34530 lt!1017835))))))

(assert (=> d!829557 (validRegex!3512 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))))

(assert (=> d!829557 (= (matchR!3734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (tail!4564 (v!34530 lt!1017835))) lt!1017911)))

(declare-fun bm!185321 () Bool)

(declare-fun call!185326 () Bool)

(assert (=> bm!185321 (= call!185326 (isEmpty!18711 (tail!4564 (v!34530 lt!1017835))))))

(declare-fun b!2870647 () Bool)

(declare-fun e!1816929 () Bool)

(assert (=> b!2870647 (= e!1816932 e!1816929)))

(declare-fun c!464283 () Bool)

(assert (=> b!2870647 (= c!464283 (is-EmptyLang!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun b!2870648 () Bool)

(declare-fun e!1816934 () Bool)

(declare-fun e!1816930 () Bool)

(assert (=> b!2870648 (= e!1816934 e!1816930)))

(declare-fun res!1191122 () Bool)

(assert (=> b!2870648 (=> (not res!1191122) (not e!1816930))))

(assert (=> b!2870648 (= res!1191122 (not lt!1017911))))

(declare-fun b!2870649 () Bool)

(declare-fun res!1191120 () Bool)

(assert (=> b!2870649 (=> res!1191120 e!1816934)))

(assert (=> b!2870649 (= res!1191120 e!1816933)))

(declare-fun res!1191121 () Bool)

(assert (=> b!2870649 (=> (not res!1191121) (not e!1816933))))

(assert (=> b!2870649 (= res!1191121 lt!1017911)))

(declare-fun b!2870650 () Bool)

(assert (=> b!2870650 (= e!1816928 (not (= (head!6339 (tail!4564 (v!34530 lt!1017835))) (c!464165 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))))

(declare-fun b!2870651 () Bool)

(assert (=> b!2870651 (= e!1816929 (not lt!1017911))))

(declare-fun b!2870652 () Bool)

(assert (=> b!2870652 (= e!1816930 e!1816928)))

(declare-fun res!1191117 () Bool)

(assert (=> b!2870652 (=> res!1191117 e!1816928)))

(assert (=> b!2870652 (= res!1191117 call!185326)))

(declare-fun b!2870653 () Bool)

(assert (=> b!2870653 (= e!1816931 (nullable!2684 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun b!2870654 () Bool)

(declare-fun res!1191118 () Bool)

(assert (=> b!2870654 (=> (not res!1191118) (not e!1816933))))

(assert (=> b!2870654 (= res!1191118 (not call!185326))))

(declare-fun b!2870655 () Bool)

(assert (=> b!2870655 (= e!1816932 (= lt!1017911 call!185326))))

(declare-fun b!2870656 () Bool)

(assert (=> b!2870656 (= e!1816931 (matchR!3734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835)))) (tail!4564 (tail!4564 (v!34530 lt!1017835)))))))

(declare-fun b!2870657 () Bool)

(declare-fun res!1191119 () Bool)

(assert (=> b!2870657 (=> res!1191119 e!1816934)))

(assert (=> b!2870657 (= res!1191119 (not (is-ElementMatch!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))))))

(assert (=> b!2870657 (= e!1816929 e!1816934)))

(declare-fun b!2870658 () Bool)

(declare-fun res!1191116 () Bool)

(assert (=> b!2870658 (=> (not res!1191116) (not e!1816933))))

(assert (=> b!2870658 (= res!1191116 (isEmpty!18711 (tail!4564 (tail!4564 (v!34530 lt!1017835)))))))

(assert (= (and d!829557 c!464281) b!2870653))

(assert (= (and d!829557 (not c!464281)) b!2870656))

(assert (= (and d!829557 c!464282) b!2870655))

(assert (= (and d!829557 (not c!464282)) b!2870647))

(assert (= (and b!2870647 c!464283) b!2870651))

(assert (= (and b!2870647 (not c!464283)) b!2870657))

(assert (= (and b!2870657 (not res!1191119)) b!2870649))

(assert (= (and b!2870649 res!1191121) b!2870654))

(assert (= (and b!2870654 res!1191118) b!2870658))

(assert (= (and b!2870658 res!1191116) b!2870646))

(assert (= (and b!2870649 (not res!1191120)) b!2870648))

(assert (= (and b!2870648 res!1191122) b!2870652))

(assert (= (and b!2870652 (not res!1191117)) b!2870645))

(assert (= (and b!2870645 (not res!1191115)) b!2870650))

(assert (= (or b!2870655 b!2870654 b!2870652) bm!185321))

(assert (=> b!2870650 m!3289111))

(declare-fun m!3289277 () Bool)

(assert (=> b!2870650 m!3289277))

(assert (=> b!2870658 m!3289111))

(declare-fun m!3289279 () Bool)

(assert (=> b!2870658 m!3289279))

(assert (=> b!2870658 m!3289279))

(declare-fun m!3289281 () Bool)

(assert (=> b!2870658 m!3289281))

(assert (=> bm!185321 m!3289111))

(assert (=> bm!185321 m!3289113))

(assert (=> b!2870645 m!3289111))

(assert (=> b!2870645 m!3289279))

(assert (=> b!2870645 m!3289279))

(assert (=> b!2870645 m!3289281))

(assert (=> b!2870656 m!3289111))

(assert (=> b!2870656 m!3289277))

(assert (=> b!2870656 m!3289117))

(assert (=> b!2870656 m!3289277))

(declare-fun m!3289283 () Bool)

(assert (=> b!2870656 m!3289283))

(assert (=> b!2870656 m!3289111))

(assert (=> b!2870656 m!3289279))

(assert (=> b!2870656 m!3289283))

(assert (=> b!2870656 m!3289279))

(declare-fun m!3289285 () Bool)

(assert (=> b!2870656 m!3289285))

(assert (=> d!829557 m!3289111))

(assert (=> d!829557 m!3289113))

(assert (=> d!829557 m!3289117))

(declare-fun m!3289287 () Bool)

(assert (=> d!829557 m!3289287))

(assert (=> b!2870646 m!3289111))

(assert (=> b!2870646 m!3289277))

(assert (=> b!2870653 m!3289117))

(declare-fun m!3289289 () Bool)

(assert (=> b!2870653 m!3289289))

(assert (=> b!2870439 d!829557))

(declare-fun e!1816948 () Regex!8734)

(declare-fun b!2870679 () Bool)

(declare-fun call!185337 () Regex!8734)

(declare-fun call!185335 () Regex!8734)

(assert (=> b!2870679 (= e!1816948 (Union!8734 (Concat!14055 call!185335 (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) call!185337))))

(declare-fun d!829559 () Bool)

(declare-fun lt!1017914 () Regex!8734)

(assert (=> d!829559 (validRegex!3512 lt!1017914)))

(declare-fun e!1816945 () Regex!8734)

(assert (=> d!829559 (= lt!1017914 e!1816945)))

(declare-fun c!464295 () Bool)

(assert (=> d!829559 (= c!464295 (or (is-EmptyExpr!8734 (h!39791 (exprs!3194 c!7184))) (is-EmptyLang!8734 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> d!829559 (validRegex!3512 (h!39791 (exprs!3194 c!7184)))))

(assert (=> d!829559 (= (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) lt!1017914)))

(declare-fun b!2870680 () Bool)

(assert (=> b!2870680 (= e!1816945 EmptyLang!8734)))

(declare-fun b!2870681 () Bool)

(declare-fun c!464297 () Bool)

(assert (=> b!2870681 (= c!464297 (is-Union!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun e!1816946 () Regex!8734)

(declare-fun e!1816949 () Regex!8734)

(assert (=> b!2870681 (= e!1816946 e!1816949)))

(declare-fun call!185338 () Regex!8734)

(declare-fun c!464296 () Bool)

(declare-fun bm!185330 () Bool)

(assert (=> bm!185330 (= call!185338 (derivativeStep!2317 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (head!6339 (v!34530 lt!1017835))))))

(declare-fun b!2870682 () Bool)

(declare-fun e!1816947 () Regex!8734)

(declare-fun call!185336 () Regex!8734)

(assert (=> b!2870682 (= e!1816947 (Concat!14055 call!185336 (h!39791 (exprs!3194 c!7184))))))

(declare-fun bm!185331 () Bool)

(assert (=> bm!185331 (= call!185336 call!185338)))

(declare-fun b!2870683 () Bool)

(declare-fun c!464294 () Bool)

(assert (=> b!2870683 (= c!464294 (nullable!2684 (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> b!2870683 (= e!1816947 e!1816948)))

(declare-fun b!2870684 () Bool)

(assert (=> b!2870684 (= e!1816949 e!1816947)))

(assert (=> b!2870684 (= c!464296 (is-Star!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870685 () Bool)

(assert (=> b!2870685 (= e!1816945 e!1816946)))

(declare-fun c!464298 () Bool)

(assert (=> b!2870685 (= c!464298 (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870686 () Bool)

(assert (=> b!2870686 (= e!1816948 (Union!8734 (Concat!14055 call!185335 (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) EmptyLang!8734))))

(declare-fun b!2870687 () Bool)

(assert (=> b!2870687 (= e!1816949 (Union!8734 call!185338 call!185337))))

(declare-fun bm!185332 () Bool)

(assert (=> bm!185332 (= call!185335 call!185336)))

(declare-fun b!2870688 () Bool)

(assert (=> b!2870688 (= e!1816946 (ite (= (head!6339 (v!34530 lt!1017835)) (c!464165 (h!39791 (exprs!3194 c!7184)))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185333 () Bool)

(assert (=> bm!185333 (= call!185337 (derivativeStep!2317 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) (head!6339 (v!34530 lt!1017835))))))

(assert (= (and d!829559 c!464295) b!2870680))

(assert (= (and d!829559 (not c!464295)) b!2870685))

(assert (= (and b!2870685 c!464298) b!2870688))

(assert (= (and b!2870685 (not c!464298)) b!2870681))

(assert (= (and b!2870681 c!464297) b!2870687))

(assert (= (and b!2870681 (not c!464297)) b!2870684))

(assert (= (and b!2870684 c!464296) b!2870682))

(assert (= (and b!2870684 (not c!464296)) b!2870683))

(assert (= (and b!2870683 c!464294) b!2870679))

(assert (= (and b!2870683 (not c!464294)) b!2870686))

(assert (= (or b!2870679 b!2870686) bm!185332))

(assert (= (or b!2870682 bm!185332) bm!185331))

(assert (= (or b!2870687 bm!185331) bm!185330))

(assert (= (or b!2870687 b!2870679) bm!185333))

(declare-fun m!3289291 () Bool)

(assert (=> d!829559 m!3289291))

(assert (=> d!829559 m!3289121))

(assert (=> bm!185330 m!3289109))

(declare-fun m!3289293 () Bool)

(assert (=> bm!185330 m!3289293))

(declare-fun m!3289295 () Bool)

(assert (=> b!2870683 m!3289295))

(assert (=> bm!185333 m!3289109))

(declare-fun m!3289297 () Bool)

(assert (=> bm!185333 m!3289297))

(assert (=> b!2870439 d!829559))

(declare-fun d!829561 () Bool)

(assert (=> d!829561 (= (head!6339 (v!34530 lt!1017835)) (h!39792 (v!34530 lt!1017835)))))

(assert (=> b!2870439 d!829561))

(assert (=> b!2870439 d!829543))

(declare-fun d!829563 () Bool)

(declare-fun res!1191127 () Bool)

(declare-fun e!1816954 () Bool)

(assert (=> d!829563 (=> res!1191127 e!1816954)))

(assert (=> d!829563 (= res!1191127 (is-Nil!34371 (exprs!3194 c!7184)))))

(assert (=> d!829563 (= (forall!7079 (exprs!3194 c!7184) lambda!107063) e!1816954)))

(declare-fun b!2870693 () Bool)

(declare-fun e!1816955 () Bool)

(assert (=> b!2870693 (= e!1816954 e!1816955)))

(declare-fun res!1191128 () Bool)

(assert (=> b!2870693 (=> (not res!1191128) (not e!1816955))))

(declare-fun dynLambda!14307 (Int Regex!8734) Bool)

(assert (=> b!2870693 (= res!1191128 (dynLambda!14307 lambda!107063 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870694 () Bool)

(assert (=> b!2870694 (= e!1816955 (forall!7079 (t!233538 (exprs!3194 c!7184)) lambda!107063))))

(assert (= (and d!829563 (not res!1191127)) b!2870693))

(assert (= (and b!2870693 res!1191128) b!2870694))

(declare-fun b_lambda!85995 () Bool)

(assert (=> (not b_lambda!85995) (not b!2870693)))

(declare-fun m!3289299 () Bool)

(assert (=> b!2870693 m!3289299))

(declare-fun m!3289301 () Bool)

(assert (=> b!2870694 m!3289301))

(assert (=> d!829487 d!829563))

(declare-fun d!829565 () Bool)

(assert (=> d!829565 (= (isEmpty!18711 (get!10328 lt!1017832)) (is-Nil!34372 (get!10328 lt!1017832)))))

(assert (=> d!829495 d!829565))

(declare-fun b!2870695 () Bool)

(declare-fun e!1816961 () Option!6409)

(assert (=> b!2870695 (= e!1816961 (Some!6408 (Cons!34372 (c!464165 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) Nil!34372)))))

(declare-fun b!2870696 () Bool)

(declare-fun e!1816956 () Option!6409)

(declare-fun lt!1017917 () Option!6409)

(declare-fun lt!1017915 () Option!6409)

(assert (=> b!2870696 (= e!1816956 (Some!6408 (++!8171 (v!34530 lt!1017917) (v!34530 lt!1017915))))))

(declare-fun b!2870697 () Bool)

(declare-fun e!1816962 () Option!6409)

(assert (=> b!2870697 (= e!1816962 None!6408)))

(declare-fun b!2870698 () Bool)

(declare-fun c!464304 () Bool)

(assert (=> b!2870698 (= c!464304 (is-Some!6408 lt!1017915))))

(declare-fun call!185340 () Option!6409)

(assert (=> b!2870698 (= lt!1017915 call!185340)))

(assert (=> b!2870698 (= e!1816962 e!1816956)))

(declare-fun b!2870699 () Bool)

(declare-fun e!1816960 () Option!6409)

(declare-fun e!1816959 () Option!6409)

(assert (=> b!2870699 (= e!1816960 e!1816959)))

(declare-fun c!464300 () Bool)

(assert (=> b!2870699 (= c!464300 (is-EmptyLang!8734 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun c!464305 () Bool)

(declare-fun call!185339 () Option!6409)

(declare-fun bm!185334 () Bool)

(assert (=> bm!185334 (= call!185339 (getLanguageWitness!419 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2870700 () Bool)

(declare-fun e!1816963 () Option!6409)

(assert (=> b!2870700 (= e!1816961 e!1816963)))

(declare-fun c!464303 () Bool)

(assert (=> b!2870700 (= c!464303 (is-Star!8734 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2870701 () Bool)

(assert (=> b!2870701 (= e!1816959 None!6408)))

(declare-fun b!2870702 () Bool)

(declare-fun e!1816957 () Option!6409)

(declare-fun e!1816958 () Option!6409)

(assert (=> b!2870702 (= e!1816957 e!1816958)))

(declare-fun lt!1017916 () Option!6409)

(assert (=> b!2870702 (= lt!1017916 call!185339)))

(declare-fun c!464306 () Bool)

(assert (=> b!2870702 (= c!464306 (is-Some!6408 lt!1017916))))

(declare-fun b!2870703 () Bool)

(assert (=> b!2870703 (= e!1816960 (Some!6408 Nil!34372))))

(declare-fun bm!185335 () Bool)

(assert (=> bm!185335 (= call!185340 (getLanguageWitness!419 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun d!829567 () Bool)

(declare-fun c!464301 () Bool)

(assert (=> d!829567 (= c!464301 (is-EmptyExpr!8734 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> d!829567 (= (getLanguageWitness!419 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) e!1816960)))

(declare-fun b!2870704 () Bool)

(declare-fun c!464302 () Bool)

(assert (=> b!2870704 (= c!464302 (is-ElementMatch!8734 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> b!2870704 (= e!1816959 e!1816961)))

(declare-fun b!2870705 () Bool)

(assert (=> b!2870705 (= c!464305 (is-Union!8734 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> b!2870705 (= e!1816963 e!1816957)))

(declare-fun b!2870706 () Bool)

(assert (=> b!2870706 (= e!1816957 e!1816962)))

(assert (=> b!2870706 (= lt!1017917 call!185339)))

(declare-fun c!464299 () Bool)

(assert (=> b!2870706 (= c!464299 (is-Some!6408 lt!1017917))))

(declare-fun b!2870707 () Bool)

(assert (=> b!2870707 (= e!1816958 lt!1017916)))

(declare-fun b!2870708 () Bool)

(assert (=> b!2870708 (= e!1816963 (Some!6408 Nil!34372))))

(declare-fun b!2870709 () Bool)

(assert (=> b!2870709 (= e!1816958 call!185340)))

(declare-fun b!2870710 () Bool)

(assert (=> b!2870710 (= e!1816956 None!6408)))

(assert (= (and d!829567 c!464301) b!2870703))

(assert (= (and d!829567 (not c!464301)) b!2870699))

(assert (= (and b!2870699 c!464300) b!2870701))

(assert (= (and b!2870699 (not c!464300)) b!2870704))

(assert (= (and b!2870704 c!464302) b!2870695))

(assert (= (and b!2870704 (not c!464302)) b!2870700))

(assert (= (and b!2870700 c!464303) b!2870708))

(assert (= (and b!2870700 (not c!464303)) b!2870705))

(assert (= (and b!2870705 c!464305) b!2870702))

(assert (= (and b!2870705 (not c!464305)) b!2870706))

(assert (= (and b!2870702 c!464306) b!2870707))

(assert (= (and b!2870702 (not c!464306)) b!2870709))

(assert (= (and b!2870706 c!464299) b!2870698))

(assert (= (and b!2870706 (not c!464299)) b!2870697))

(assert (= (and b!2870698 c!464304) b!2870696))

(assert (= (and b!2870698 (not c!464304)) b!2870710))

(assert (= (or b!2870709 b!2870698) bm!185335))

(assert (= (or b!2870702 b!2870706) bm!185334))

(declare-fun m!3289303 () Bool)

(assert (=> b!2870696 m!3289303))

(declare-fun m!3289305 () Bool)

(assert (=> bm!185334 m!3289305))

(declare-fun m!3289307 () Bool)

(assert (=> bm!185335 m!3289307))

(assert (=> bm!185296 d!829567))

(declare-fun d!829569 () Bool)

(declare-fun res!1191129 () Bool)

(declare-fun e!1816964 () Bool)

(assert (=> d!829569 (=> res!1191129 e!1816964)))

(assert (=> d!829569 (= res!1191129 (is-Nil!34371 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371)))))))

(assert (=> d!829569 (= (forall!7079 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))) lambda!107070) e!1816964)))

(declare-fun b!2870711 () Bool)

(declare-fun e!1816965 () Bool)

(assert (=> b!2870711 (= e!1816964 e!1816965)))

(declare-fun res!1191130 () Bool)

(assert (=> b!2870711 (=> (not res!1191130) (not e!1816965))))

(assert (=> b!2870711 (= res!1191130 (dynLambda!14307 lambda!107070 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))))

(declare-fun b!2870712 () Bool)

(assert (=> b!2870712 (= e!1816965 (forall!7079 (t!233538 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371)))) lambda!107070))))

(assert (= (and d!829569 (not res!1191129)) b!2870711))

(assert (= (and b!2870711 res!1191130) b!2870712))

(declare-fun b_lambda!85997 () Bool)

(assert (=> (not b_lambda!85997) (not b!2870711)))

(declare-fun m!3289309 () Bool)

(assert (=> b!2870711 m!3289309))

(declare-fun m!3289311 () Bool)

(assert (=> b!2870712 m!3289311))

(assert (=> d!829509 d!829569))

(assert (=> b!2870475 d!829539))

(declare-fun bs!522011 () Bool)

(declare-fun d!829571 () Bool)

(assert (= bs!522011 (and d!829571 d!829551)))

(declare-fun lambda!107084 () Int)

(assert (=> bs!522011 (= (= lambda!107060 lambda!107057) (= lambda!107084 lambda!107083))))

(declare-fun bs!522012 () Bool)

(assert (= bs!522012 (and d!829571 d!829481)))

(assert (=> bs!522012 (not (= lambda!107084 lambda!107057))))

(declare-fun bs!522013 () Bool)

(assert (= bs!522013 (and d!829571 d!829485)))

(assert (=> bs!522013 (not (= lambda!107084 lambda!107060))))

(declare-fun bs!522014 () Bool)

(assert (= bs!522014 (and d!829571 d!829509)))

(assert (=> bs!522014 (not (= lambda!107084 lambda!107070))))

(declare-fun bs!522015 () Bool)

(assert (= bs!522015 (and d!829571 d!829487)))

(assert (=> bs!522015 (not (= lambda!107084 lambda!107063))))

(assert (=> d!829571 true))

(assert (=> d!829571 (< (dynLambda!14306 order!18125 lambda!107060) (dynLambda!14306 order!18125 lambda!107084))))

(assert (=> d!829571 (= (exists!1153 (exprs!3194 c!7184) lambda!107060) (not (forall!7079 (exprs!3194 c!7184) lambda!107084)))))

(declare-fun bs!522016 () Bool)

(assert (= bs!522016 d!829571))

(declare-fun m!3289313 () Bool)

(assert (=> bs!522016 m!3289313))

(assert (=> d!829485 d!829571))

(declare-fun d!829573 () Bool)

(assert (=> d!829573 (= (isEmpty!18711 (v!34530 lt!1017835)) (is-Nil!34372 (v!34530 lt!1017835)))))

(assert (=> d!829489 d!829573))

(assert (=> d!829489 d!829547))

(declare-fun b!2870715 () Bool)

(declare-fun res!1191132 () Bool)

(declare-fun e!1816966 () Bool)

(assert (=> b!2870715 (=> (not res!1191132) (not e!1816966))))

(declare-fun lt!1017918 () List!34496)

(assert (=> b!2870715 (= res!1191132 (= (size!26319 lt!1017918) (+ (size!26319 (v!34530 lt!1017859)) (size!26319 (v!34530 lt!1017860)))))))

(declare-fun b!2870716 () Bool)

(assert (=> b!2870716 (= e!1816966 (or (not (= (v!34530 lt!1017860) Nil!34372)) (= lt!1017918 (v!34530 lt!1017859))))))

(declare-fun b!2870713 () Bool)

(declare-fun e!1816967 () List!34496)

(assert (=> b!2870713 (= e!1816967 (v!34530 lt!1017860))))

(declare-fun b!2870714 () Bool)

(assert (=> b!2870714 (= e!1816967 (Cons!34372 (h!39792 (v!34530 lt!1017859)) (++!8171 (t!233539 (v!34530 lt!1017859)) (v!34530 lt!1017860))))))

(declare-fun d!829575 () Bool)

(assert (=> d!829575 e!1816966))

(declare-fun res!1191131 () Bool)

(assert (=> d!829575 (=> (not res!1191131) (not e!1816966))))

(assert (=> d!829575 (= res!1191131 (= (content!4696 lt!1017918) (set.union (content!4696 (v!34530 lt!1017859)) (content!4696 (v!34530 lt!1017860)))))))

(assert (=> d!829575 (= lt!1017918 e!1816967)))

(declare-fun c!464307 () Bool)

(assert (=> d!829575 (= c!464307 (is-Nil!34372 (v!34530 lt!1017859)))))

(assert (=> d!829575 (= (++!8171 (v!34530 lt!1017859) (v!34530 lt!1017860)) lt!1017918)))

(assert (= (and d!829575 c!464307) b!2870713))

(assert (= (and d!829575 (not c!464307)) b!2870714))

(assert (= (and d!829575 res!1191131) b!2870715))

(assert (= (and b!2870715 res!1191132) b!2870716))

(declare-fun m!3289315 () Bool)

(assert (=> b!2870715 m!3289315))

(declare-fun m!3289317 () Bool)

(assert (=> b!2870715 m!3289317))

(declare-fun m!3289319 () Bool)

(assert (=> b!2870715 m!3289319))

(declare-fun m!3289321 () Bool)

(assert (=> b!2870714 m!3289321))

(declare-fun m!3289323 () Bool)

(assert (=> d!829575 m!3289323))

(declare-fun m!3289325 () Bool)

(assert (=> d!829575 m!3289325))

(declare-fun m!3289327 () Bool)

(assert (=> d!829575 m!3289327))

(assert (=> b!2870350 d!829575))

(declare-fun b!2870717 () Bool)

(declare-fun e!1816973 () Option!6409)

(assert (=> b!2870717 (= e!1816973 (Some!6408 (Cons!34372 (c!464165 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) Nil!34372)))))

(declare-fun b!2870718 () Bool)

(declare-fun e!1816968 () Option!6409)

(declare-fun lt!1017921 () Option!6409)

(declare-fun lt!1017919 () Option!6409)

(assert (=> b!2870718 (= e!1816968 (Some!6408 (++!8171 (v!34530 lt!1017921) (v!34530 lt!1017919))))))

(declare-fun b!2870719 () Bool)

(declare-fun e!1816974 () Option!6409)

(assert (=> b!2870719 (= e!1816974 None!6408)))

(declare-fun b!2870720 () Bool)

(declare-fun c!464313 () Bool)

(assert (=> b!2870720 (= c!464313 (is-Some!6408 lt!1017919))))

(declare-fun call!185342 () Option!6409)

(assert (=> b!2870720 (= lt!1017919 call!185342)))

(assert (=> b!2870720 (= e!1816974 e!1816968)))

(declare-fun b!2870721 () Bool)

(declare-fun e!1816972 () Option!6409)

(declare-fun e!1816971 () Option!6409)

(assert (=> b!2870721 (= e!1816972 e!1816971)))

(declare-fun c!464309 () Bool)

(assert (=> b!2870721 (= c!464309 (is-EmptyLang!8734 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun bm!185336 () Bool)

(declare-fun c!464314 () Bool)

(declare-fun call!185341 () Option!6409)

(assert (=> bm!185336 (= call!185341 (getLanguageWitness!419 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2870722 () Bool)

(declare-fun e!1816975 () Option!6409)

(assert (=> b!2870722 (= e!1816973 e!1816975)))

(declare-fun c!464312 () Bool)

(assert (=> b!2870722 (= c!464312 (is-Star!8734 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2870723 () Bool)

(assert (=> b!2870723 (= e!1816971 None!6408)))

(declare-fun b!2870724 () Bool)

(declare-fun e!1816969 () Option!6409)

(declare-fun e!1816970 () Option!6409)

(assert (=> b!2870724 (= e!1816969 e!1816970)))

(declare-fun lt!1017920 () Option!6409)

(assert (=> b!2870724 (= lt!1017920 call!185341)))

(declare-fun c!464315 () Bool)

(assert (=> b!2870724 (= c!464315 (is-Some!6408 lt!1017920))))

(declare-fun b!2870725 () Bool)

(assert (=> b!2870725 (= e!1816972 (Some!6408 Nil!34372))))

(declare-fun bm!185337 () Bool)

(assert (=> bm!185337 (= call!185342 (getLanguageWitness!419 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun d!829577 () Bool)

(declare-fun c!464310 () Bool)

(assert (=> d!829577 (= c!464310 (is-EmptyExpr!8734 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> d!829577 (= (getLanguageWitness!419 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) e!1816972)))

(declare-fun b!2870726 () Bool)

(declare-fun c!464311 () Bool)

(assert (=> b!2870726 (= c!464311 (is-ElementMatch!8734 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> b!2870726 (= e!1816971 e!1816973)))

(declare-fun b!2870727 () Bool)

(assert (=> b!2870727 (= c!464314 (is-Union!8734 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> b!2870727 (= e!1816975 e!1816969)))

(declare-fun b!2870728 () Bool)

(assert (=> b!2870728 (= e!1816969 e!1816974)))

(assert (=> b!2870728 (= lt!1017921 call!185341)))

(declare-fun c!464308 () Bool)

(assert (=> b!2870728 (= c!464308 (is-Some!6408 lt!1017921))))

(declare-fun b!2870729 () Bool)

(assert (=> b!2870729 (= e!1816970 lt!1017920)))

(declare-fun b!2870730 () Bool)

(assert (=> b!2870730 (= e!1816975 (Some!6408 Nil!34372))))

(declare-fun b!2870731 () Bool)

(assert (=> b!2870731 (= e!1816970 call!185342)))

(declare-fun b!2870732 () Bool)

(assert (=> b!2870732 (= e!1816968 None!6408)))

(assert (= (and d!829577 c!464310) b!2870725))

(assert (= (and d!829577 (not c!464310)) b!2870721))

(assert (= (and b!2870721 c!464309) b!2870723))

(assert (= (and b!2870721 (not c!464309)) b!2870726))

(assert (= (and b!2870726 c!464311) b!2870717))

(assert (= (and b!2870726 (not c!464311)) b!2870722))

(assert (= (and b!2870722 c!464312) b!2870730))

(assert (= (and b!2870722 (not c!464312)) b!2870727))

(assert (= (and b!2870727 c!464314) b!2870724))

(assert (= (and b!2870727 (not c!464314)) b!2870728))

(assert (= (and b!2870724 c!464315) b!2870729))

(assert (= (and b!2870724 (not c!464315)) b!2870731))

(assert (= (and b!2870728 c!464308) b!2870720))

(assert (= (and b!2870728 (not c!464308)) b!2870719))

(assert (= (and b!2870720 c!464313) b!2870718))

(assert (= (and b!2870720 (not c!464313)) b!2870732))

(assert (= (or b!2870731 b!2870720) bm!185337))

(assert (= (or b!2870724 b!2870728) bm!185336))

(declare-fun m!3289329 () Bool)

(assert (=> b!2870718 m!3289329))

(declare-fun m!3289331 () Bool)

(assert (=> bm!185336 m!3289331))

(declare-fun m!3289333 () Bool)

(assert (=> bm!185337 m!3289333))

(assert (=> bm!185297 d!829577))

(declare-fun b!2870733 () Bool)

(declare-fun res!1191133 () Bool)

(declare-fun e!1816976 () Bool)

(assert (=> b!2870733 (=> res!1191133 e!1816976)))

(assert (=> b!2870733 (= res!1191133 (not (isEmpty!18711 (tail!4564 (tail!4564 (get!10328 lt!1017835))))))))

(declare-fun b!2870734 () Bool)

(declare-fun e!1816981 () Bool)

(assert (=> b!2870734 (= e!1816981 (= (head!6339 (tail!4564 (get!10328 lt!1017835))) (c!464165 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))))))

(declare-fun d!829579 () Bool)

(declare-fun e!1816980 () Bool)

(assert (=> d!829579 e!1816980))

(declare-fun c!464317 () Bool)

(assert (=> d!829579 (= c!464317 (is-EmptyExpr!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun lt!1017922 () Bool)

(declare-fun e!1816979 () Bool)

(assert (=> d!829579 (= lt!1017922 e!1816979)))

(declare-fun c!464316 () Bool)

(assert (=> d!829579 (= c!464316 (isEmpty!18711 (tail!4564 (get!10328 lt!1017835))))))

(assert (=> d!829579 (validRegex!3512 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))))

(assert (=> d!829579 (= (matchR!3734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (tail!4564 (get!10328 lt!1017835))) lt!1017922)))

(declare-fun bm!185338 () Bool)

(declare-fun call!185343 () Bool)

(assert (=> bm!185338 (= call!185343 (isEmpty!18711 (tail!4564 (get!10328 lt!1017835))))))

(declare-fun b!2870735 () Bool)

(declare-fun e!1816977 () Bool)

(assert (=> b!2870735 (= e!1816980 e!1816977)))

(declare-fun c!464318 () Bool)

(assert (=> b!2870735 (= c!464318 (is-EmptyLang!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun b!2870736 () Bool)

(declare-fun e!1816982 () Bool)

(declare-fun e!1816978 () Bool)

(assert (=> b!2870736 (= e!1816982 e!1816978)))

(declare-fun res!1191140 () Bool)

(assert (=> b!2870736 (=> (not res!1191140) (not e!1816978))))

(assert (=> b!2870736 (= res!1191140 (not lt!1017922))))

(declare-fun b!2870737 () Bool)

(declare-fun res!1191138 () Bool)

(assert (=> b!2870737 (=> res!1191138 e!1816982)))

(assert (=> b!2870737 (= res!1191138 e!1816981)))

(declare-fun res!1191139 () Bool)

(assert (=> b!2870737 (=> (not res!1191139) (not e!1816981))))

(assert (=> b!2870737 (= res!1191139 lt!1017922)))

(declare-fun b!2870738 () Bool)

(assert (=> b!2870738 (= e!1816976 (not (= (head!6339 (tail!4564 (get!10328 lt!1017835))) (c!464165 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))))

(declare-fun b!2870739 () Bool)

(assert (=> b!2870739 (= e!1816977 (not lt!1017922))))

(declare-fun b!2870740 () Bool)

(assert (=> b!2870740 (= e!1816978 e!1816976)))

(declare-fun res!1191135 () Bool)

(assert (=> b!2870740 (=> res!1191135 e!1816976)))

(assert (=> b!2870740 (= res!1191135 call!185343)))

(declare-fun b!2870741 () Bool)

(assert (=> b!2870741 (= e!1816979 (nullable!2684 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun b!2870742 () Bool)

(declare-fun res!1191136 () Bool)

(assert (=> b!2870742 (=> (not res!1191136) (not e!1816981))))

(assert (=> b!2870742 (= res!1191136 (not call!185343))))

(declare-fun b!2870743 () Bool)

(assert (=> b!2870743 (= e!1816980 (= lt!1017922 call!185343))))

(declare-fun b!2870744 () Bool)

(assert (=> b!2870744 (= e!1816979 (matchR!3734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835)))) (tail!4564 (tail!4564 (get!10328 lt!1017835)))))))

(declare-fun b!2870745 () Bool)

(declare-fun res!1191137 () Bool)

(assert (=> b!2870745 (=> res!1191137 e!1816982)))

(assert (=> b!2870745 (= res!1191137 (not (is-ElementMatch!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))))))

(assert (=> b!2870745 (= e!1816977 e!1816982)))

(declare-fun b!2870746 () Bool)

(declare-fun res!1191134 () Bool)

(assert (=> b!2870746 (=> (not res!1191134) (not e!1816981))))

(assert (=> b!2870746 (= res!1191134 (isEmpty!18711 (tail!4564 (tail!4564 (get!10328 lt!1017835)))))))

(assert (= (and d!829579 c!464316) b!2870741))

(assert (= (and d!829579 (not c!464316)) b!2870744))

(assert (= (and d!829579 c!464317) b!2870743))

(assert (= (and d!829579 (not c!464317)) b!2870735))

(assert (= (and b!2870735 c!464318) b!2870739))

(assert (= (and b!2870735 (not c!464318)) b!2870745))

(assert (= (and b!2870745 (not res!1191137)) b!2870737))

(assert (= (and b!2870737 res!1191139) b!2870742))

(assert (= (and b!2870742 res!1191136) b!2870746))

(assert (= (and b!2870746 res!1191134) b!2870734))

(assert (= (and b!2870737 (not res!1191138)) b!2870736))

(assert (= (and b!2870736 res!1191140) b!2870740))

(assert (= (and b!2870740 (not res!1191135)) b!2870733))

(assert (= (and b!2870733 (not res!1191133)) b!2870738))

(assert (= (or b!2870743 b!2870742 b!2870740) bm!185338))

(assert (=> b!2870738 m!3289169))

(declare-fun m!3289335 () Bool)

(assert (=> b!2870738 m!3289335))

(assert (=> b!2870746 m!3289169))

(declare-fun m!3289337 () Bool)

(assert (=> b!2870746 m!3289337))

(assert (=> b!2870746 m!3289337))

(declare-fun m!3289339 () Bool)

(assert (=> b!2870746 m!3289339))

(assert (=> bm!185338 m!3289169))

(assert (=> bm!185338 m!3289173))

(assert (=> b!2870733 m!3289169))

(assert (=> b!2870733 m!3289337))

(assert (=> b!2870733 m!3289337))

(assert (=> b!2870733 m!3289339))

(assert (=> b!2870744 m!3289169))

(assert (=> b!2870744 m!3289335))

(assert (=> b!2870744 m!3289181))

(assert (=> b!2870744 m!3289335))

(declare-fun m!3289341 () Bool)

(assert (=> b!2870744 m!3289341))

(assert (=> b!2870744 m!3289169))

(assert (=> b!2870744 m!3289337))

(assert (=> b!2870744 m!3289341))

(assert (=> b!2870744 m!3289337))

(declare-fun m!3289343 () Bool)

(assert (=> b!2870744 m!3289343))

(assert (=> d!829579 m!3289169))

(assert (=> d!829579 m!3289173))

(assert (=> d!829579 m!3289181))

(declare-fun m!3289345 () Bool)

(assert (=> d!829579 m!3289345))

(assert (=> b!2870734 m!3289169))

(assert (=> b!2870734 m!3289335))

(assert (=> b!2870741 m!3289181))

(declare-fun m!3289347 () Bool)

(assert (=> b!2870741 m!3289347))

(assert (=> b!2870481 d!829579))

(declare-fun call!185346 () Regex!8734)

(declare-fun e!1816986 () Regex!8734)

(declare-fun call!185344 () Regex!8734)

(declare-fun b!2870747 () Bool)

(assert (=> b!2870747 (= e!1816986 (Union!8734 (Concat!14055 call!185344 (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) call!185346))))

(declare-fun d!829581 () Bool)

(declare-fun lt!1017923 () Regex!8734)

(assert (=> d!829581 (validRegex!3512 lt!1017923)))

(declare-fun e!1816983 () Regex!8734)

(assert (=> d!829581 (= lt!1017923 e!1816983)))

(declare-fun c!464320 () Bool)

(assert (=> d!829581 (= c!464320 (or (is-EmptyExpr!8734 (h!39791 (exprs!3194 c!7184))) (is-EmptyLang!8734 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> d!829581 (validRegex!3512 (h!39791 (exprs!3194 c!7184)))))

(assert (=> d!829581 (= (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) lt!1017923)))

(declare-fun b!2870748 () Bool)

(assert (=> b!2870748 (= e!1816983 EmptyLang!8734)))

(declare-fun b!2870749 () Bool)

(declare-fun c!464322 () Bool)

(assert (=> b!2870749 (= c!464322 (is-Union!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun e!1816984 () Regex!8734)

(declare-fun e!1816987 () Regex!8734)

(assert (=> b!2870749 (= e!1816984 e!1816987)))

(declare-fun bm!185339 () Bool)

(declare-fun call!185347 () Regex!8734)

(declare-fun c!464321 () Bool)

(assert (=> bm!185339 (= call!185347 (derivativeStep!2317 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (head!6339 (get!10328 lt!1017835))))))

(declare-fun b!2870750 () Bool)

(declare-fun e!1816985 () Regex!8734)

(declare-fun call!185345 () Regex!8734)

(assert (=> b!2870750 (= e!1816985 (Concat!14055 call!185345 (h!39791 (exprs!3194 c!7184))))))

(declare-fun bm!185340 () Bool)

(assert (=> bm!185340 (= call!185345 call!185347)))

(declare-fun b!2870751 () Bool)

(declare-fun c!464319 () Bool)

(assert (=> b!2870751 (= c!464319 (nullable!2684 (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> b!2870751 (= e!1816985 e!1816986)))

(declare-fun b!2870752 () Bool)

(assert (=> b!2870752 (= e!1816987 e!1816985)))

(assert (=> b!2870752 (= c!464321 (is-Star!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870753 () Bool)

(assert (=> b!2870753 (= e!1816983 e!1816984)))

(declare-fun c!464323 () Bool)

(assert (=> b!2870753 (= c!464323 (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870754 () Bool)

(assert (=> b!2870754 (= e!1816986 (Union!8734 (Concat!14055 call!185344 (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) EmptyLang!8734))))

(declare-fun b!2870755 () Bool)

(assert (=> b!2870755 (= e!1816987 (Union!8734 call!185347 call!185346))))

(declare-fun bm!185341 () Bool)

(assert (=> bm!185341 (= call!185344 call!185345)))

(declare-fun b!2870756 () Bool)

(assert (=> b!2870756 (= e!1816984 (ite (= (head!6339 (get!10328 lt!1017835)) (c!464165 (h!39791 (exprs!3194 c!7184)))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185342 () Bool)

(assert (=> bm!185342 (= call!185346 (derivativeStep!2317 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) (head!6339 (get!10328 lt!1017835))))))

(assert (= (and d!829581 c!464320) b!2870748))

(assert (= (and d!829581 (not c!464320)) b!2870753))

(assert (= (and b!2870753 c!464323) b!2870756))

(assert (= (and b!2870753 (not c!464323)) b!2870749))

(assert (= (and b!2870749 c!464322) b!2870755))

(assert (= (and b!2870749 (not c!464322)) b!2870752))

(assert (= (and b!2870752 c!464321) b!2870750))

(assert (= (and b!2870752 (not c!464321)) b!2870751))

(assert (= (and b!2870751 c!464319) b!2870747))

(assert (= (and b!2870751 (not c!464319)) b!2870754))

(assert (= (or b!2870747 b!2870754) bm!185341))

(assert (= (or b!2870750 bm!185341) bm!185340))

(assert (= (or b!2870755 bm!185340) bm!185339))

(assert (= (or b!2870755 b!2870747) bm!185342))

(declare-fun m!3289349 () Bool)

(assert (=> d!829581 m!3289349))

(assert (=> d!829581 m!3289121))

(assert (=> bm!185339 m!3289167))

(declare-fun m!3289351 () Bool)

(assert (=> bm!185339 m!3289351))

(assert (=> b!2870751 m!3289295))

(assert (=> bm!185342 m!3289167))

(declare-fun m!3289353 () Bool)

(assert (=> bm!185342 m!3289353))

(assert (=> b!2870481 d!829581))

(assert (=> b!2870481 d!829539))

(assert (=> b!2870481 d!829555))

(declare-fun bs!522017 () Bool)

(declare-fun d!829583 () Bool)

(assert (= bs!522017 (and d!829583 d!829551)))

(declare-fun lambda!107085 () Int)

(assert (=> bs!522017 (not (= lambda!107085 lambda!107083))))

(declare-fun bs!522018 () Bool)

(assert (= bs!522018 (and d!829583 d!829481)))

(assert (=> bs!522018 (= lambda!107085 lambda!107057)))

(declare-fun bs!522019 () Bool)

(assert (= bs!522019 (and d!829583 d!829571)))

(assert (=> bs!522019 (not (= lambda!107085 lambda!107084))))

(declare-fun bs!522020 () Bool)

(assert (= bs!522020 (and d!829583 d!829485)))

(assert (=> bs!522020 (= lambda!107085 lambda!107060)))

(declare-fun bs!522021 () Bool)

(assert (= bs!522021 (and d!829583 d!829509)))

(assert (=> bs!522021 (not (= lambda!107085 lambda!107070))))

(declare-fun bs!522022 () Bool)

(assert (= bs!522022 (and d!829583 d!829487)))

(assert (=> bs!522022 (not (= lambda!107085 lambda!107063))))

(declare-fun b!2870757 () Bool)

(declare-fun e!1816988 () Option!6409)

(assert (=> b!2870757 (= e!1816988 None!6408)))

(declare-fun b!2870758 () Bool)

(declare-fun e!1816990 () Option!6409)

(assert (=> b!2870758 (= e!1816990 e!1816988)))

(declare-fun lt!1017925 () Option!6409)

(assert (=> b!2870758 (= lt!1017925 (getLanguageWitness!419 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))

(declare-fun c!464324 () Bool)

(assert (=> b!2870758 (= c!464324 (is-Some!6408 lt!1017925))))

(declare-fun lt!1017924 () Option!6409)

(assert (=> d!829583 (= (isEmpty!18710 lt!1017924) (exists!1153 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))) lambda!107085))))

(assert (=> d!829583 (= lt!1017924 e!1816990)))

(declare-fun c!464325 () Bool)

(assert (=> d!829583 (= c!464325 (is-Cons!34371 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833))))))))

(assert (=> d!829583 (= (getLanguageWitness!420 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))) lt!1017924)))

(declare-fun b!2870759 () Bool)

(declare-fun c!464326 () Bool)

(declare-fun lt!1017926 () Option!6409)

(assert (=> b!2870759 (= c!464326 (is-Some!6408 lt!1017926))))

(assert (=> b!2870759 (= lt!1017926 (getLanguageWitness!420 (Context!5389 (t!233538 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833))))))))))

(declare-fun e!1816989 () Option!6409)

(assert (=> b!2870759 (= e!1816988 e!1816989)))

(declare-fun b!2870760 () Bool)

(assert (=> b!2870760 (= e!1816990 (Some!6408 Nil!34372))))

(declare-fun b!2870761 () Bool)

(assert (=> b!2870761 (= e!1816989 (Some!6408 (++!8171 (v!34530 lt!1017925) (v!34530 lt!1017926))))))

(declare-fun b!2870762 () Bool)

(assert (=> b!2870762 (= e!1816989 None!6408)))

(assert (= (and d!829583 c!464325) b!2870758))

(assert (= (and d!829583 (not c!464325)) b!2870760))

(assert (= (and b!2870758 c!464324) b!2870759))

(assert (= (and b!2870758 (not c!464324)) b!2870757))

(assert (= (and b!2870759 c!464326) b!2870761))

(assert (= (and b!2870759 (not c!464326)) b!2870762))

(declare-fun m!3289355 () Bool)

(assert (=> b!2870758 m!3289355))

(declare-fun m!3289357 () Bool)

(assert (=> d!829583 m!3289357))

(declare-fun m!3289359 () Bool)

(assert (=> d!829583 m!3289359))

(declare-fun m!3289361 () Bool)

(assert (=> b!2870759 m!3289361))

(declare-fun m!3289363 () Bool)

(assert (=> b!2870761 m!3289363))

(assert (=> b!2870348 d!829583))

(assert (=> bm!185300 d!829573))

(declare-fun b!2870763 () Bool)

(declare-fun e!1816996 () Option!6409)

(assert (=> b!2870763 (= e!1816996 (Some!6408 (Cons!34372 (c!464165 (h!39791 (exprs!3194 lt!1017833))) Nil!34372)))))

(declare-fun b!2870764 () Bool)

(declare-fun e!1816991 () Option!6409)

(declare-fun lt!1017929 () Option!6409)

(declare-fun lt!1017927 () Option!6409)

(assert (=> b!2870764 (= e!1816991 (Some!6408 (++!8171 (v!34530 lt!1017929) (v!34530 lt!1017927))))))

(declare-fun b!2870765 () Bool)

(declare-fun e!1816997 () Option!6409)

(assert (=> b!2870765 (= e!1816997 None!6408)))

(declare-fun b!2870766 () Bool)

(declare-fun c!464332 () Bool)

(assert (=> b!2870766 (= c!464332 (is-Some!6408 lt!1017927))))

(declare-fun call!185349 () Option!6409)

(assert (=> b!2870766 (= lt!1017927 call!185349)))

(assert (=> b!2870766 (= e!1816997 e!1816991)))

(declare-fun b!2870767 () Bool)

(declare-fun e!1816995 () Option!6409)

(declare-fun e!1816994 () Option!6409)

(assert (=> b!2870767 (= e!1816995 e!1816994)))

(declare-fun c!464328 () Bool)

(assert (=> b!2870767 (= c!464328 (is-EmptyLang!8734 (h!39791 (exprs!3194 lt!1017833))))))

(declare-fun bm!185343 () Bool)

(declare-fun call!185348 () Option!6409)

(declare-fun c!464333 () Bool)

(assert (=> bm!185343 (= call!185348 (getLanguageWitness!419 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(declare-fun b!2870768 () Bool)

(declare-fun e!1816998 () Option!6409)

(assert (=> b!2870768 (= e!1816996 e!1816998)))

(declare-fun c!464331 () Bool)

(assert (=> b!2870768 (= c!464331 (is-Star!8734 (h!39791 (exprs!3194 lt!1017833))))))

(declare-fun b!2870769 () Bool)

(assert (=> b!2870769 (= e!1816994 None!6408)))

(declare-fun b!2870770 () Bool)

(declare-fun e!1816992 () Option!6409)

(declare-fun e!1816993 () Option!6409)

(assert (=> b!2870770 (= e!1816992 e!1816993)))

(declare-fun lt!1017928 () Option!6409)

(assert (=> b!2870770 (= lt!1017928 call!185348)))

(declare-fun c!464334 () Bool)

(assert (=> b!2870770 (= c!464334 (is-Some!6408 lt!1017928))))

(declare-fun b!2870771 () Bool)

(assert (=> b!2870771 (= e!1816995 (Some!6408 Nil!34372))))

(declare-fun bm!185344 () Bool)

(assert (=> bm!185344 (= call!185349 (getLanguageWitness!419 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(declare-fun d!829585 () Bool)

(declare-fun c!464329 () Bool)

(assert (=> d!829585 (= c!464329 (is-EmptyExpr!8734 (h!39791 (exprs!3194 lt!1017833))))))

(assert (=> d!829585 (= (getLanguageWitness!419 (h!39791 (exprs!3194 lt!1017833))) e!1816995)))

(declare-fun b!2870772 () Bool)

(declare-fun c!464330 () Bool)

(assert (=> b!2870772 (= c!464330 (is-ElementMatch!8734 (h!39791 (exprs!3194 lt!1017833))))))

(assert (=> b!2870772 (= e!1816994 e!1816996)))

(declare-fun b!2870773 () Bool)

(assert (=> b!2870773 (= c!464333 (is-Union!8734 (h!39791 (exprs!3194 lt!1017833))))))

(assert (=> b!2870773 (= e!1816998 e!1816992)))

(declare-fun b!2870774 () Bool)

(assert (=> b!2870774 (= e!1816992 e!1816997)))

(assert (=> b!2870774 (= lt!1017929 call!185348)))

(declare-fun c!464327 () Bool)

(assert (=> b!2870774 (= c!464327 (is-Some!6408 lt!1017929))))

(declare-fun b!2870775 () Bool)

(assert (=> b!2870775 (= e!1816993 lt!1017928)))

(declare-fun b!2870776 () Bool)

(assert (=> b!2870776 (= e!1816998 (Some!6408 Nil!34372))))

(declare-fun b!2870777 () Bool)

(assert (=> b!2870777 (= e!1816993 call!185349)))

(declare-fun b!2870778 () Bool)

(assert (=> b!2870778 (= e!1816991 None!6408)))

(assert (= (and d!829585 c!464329) b!2870771))

(assert (= (and d!829585 (not c!464329)) b!2870767))

(assert (= (and b!2870767 c!464328) b!2870769))

(assert (= (and b!2870767 (not c!464328)) b!2870772))

(assert (= (and b!2870772 c!464330) b!2870763))

(assert (= (and b!2870772 (not c!464330)) b!2870768))

(assert (= (and b!2870768 c!464331) b!2870776))

(assert (= (and b!2870768 (not c!464331)) b!2870773))

(assert (= (and b!2870773 c!464333) b!2870770))

(assert (= (and b!2870773 (not c!464333)) b!2870774))

(assert (= (and b!2870770 c!464334) b!2870775))

(assert (= (and b!2870770 (not c!464334)) b!2870777))

(assert (= (and b!2870774 c!464327) b!2870766))

(assert (= (and b!2870774 (not c!464327)) b!2870765))

(assert (= (and b!2870766 c!464332) b!2870764))

(assert (= (and b!2870766 (not c!464332)) b!2870778))

(assert (= (or b!2870777 b!2870766) bm!185344))

(assert (= (or b!2870770 b!2870774) bm!185343))

(declare-fun m!3289365 () Bool)

(assert (=> b!2870764 m!3289365))

(declare-fun m!3289367 () Bool)

(assert (=> bm!185343 m!3289367))

(declare-fun m!3289369 () Bool)

(assert (=> bm!185344 m!3289369))

(assert (=> b!2870347 d!829585))

(assert (=> b!2870429 d!829561))

(declare-fun d!829587 () Bool)

(declare-fun nullableFct!814 (Regex!8734) Bool)

(assert (=> d!829587 (= (nullable!2684 (h!39791 (exprs!3194 c!7184))) (nullableFct!814 (h!39791 (exprs!3194 c!7184))))))

(declare-fun bs!522023 () Bool)

(assert (= bs!522023 d!829587))

(declare-fun m!3289371 () Bool)

(assert (=> bs!522023 m!3289371))

(assert (=> b!2870478 d!829587))

(assert (=> b!2870428 d!829541))

(assert (=> b!2870428 d!829543))

(assert (=> b!2870436 d!829587))

(declare-fun d!829589 () Bool)

(declare-fun c!464335 () Bool)

(assert (=> d!829589 (= c!464335 (isEmpty!18711 (get!10328 (getLanguageWitness!420 lt!1017833))))))

(declare-fun e!1816999 () Bool)

(assert (=> d!829589 (= (matchZipper!476 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (get!10328 (getLanguageWitness!420 lt!1017833))) e!1816999)))

(declare-fun b!2870779 () Bool)

(assert (=> b!2870779 (= e!1816999 (nullableZipper!712 (set.insert lt!1017833 (as set.empty (Set Context!5388)))))))

(declare-fun b!2870780 () Bool)

(assert (=> b!2870780 (= e!1816999 (matchZipper!476 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 (getLanguageWitness!420 lt!1017833)))) (tail!4564 (get!10328 (getLanguageWitness!420 lt!1017833)))))))

(assert (= (and d!829589 c!464335) b!2870779))

(assert (= (and d!829589 (not c!464335)) b!2870780))

(assert (=> d!829589 m!3289145))

(declare-fun m!3289373 () Bool)

(assert (=> d!829589 m!3289373))

(assert (=> b!2870779 m!3289049))

(assert (=> b!2870779 m!3289127))

(assert (=> b!2870780 m!3289145))

(declare-fun m!3289375 () Bool)

(assert (=> b!2870780 m!3289375))

(assert (=> b!2870780 m!3289049))

(assert (=> b!2870780 m!3289375))

(declare-fun m!3289377 () Bool)

(assert (=> b!2870780 m!3289377))

(assert (=> b!2870780 m!3289145))

(declare-fun m!3289379 () Bool)

(assert (=> b!2870780 m!3289379))

(assert (=> b!2870780 m!3289377))

(assert (=> b!2870780 m!3289379))

(declare-fun m!3289381 () Bool)

(assert (=> b!2870780 m!3289381))

(assert (=> d!829497 d!829589))

(declare-fun bs!522024 () Bool)

(declare-fun d!829591 () Bool)

(assert (= bs!522024 (and d!829591 d!829551)))

(declare-fun lambda!107086 () Int)

(assert (=> bs!522024 (not (= lambda!107086 lambda!107083))))

(declare-fun bs!522025 () Bool)

(assert (= bs!522025 (and d!829591 d!829481)))

(assert (=> bs!522025 (= lambda!107086 lambda!107057)))

(declare-fun bs!522026 () Bool)

(assert (= bs!522026 (and d!829591 d!829583)))

(assert (=> bs!522026 (= lambda!107086 lambda!107085)))

(declare-fun bs!522027 () Bool)

(assert (= bs!522027 (and d!829591 d!829571)))

(assert (=> bs!522027 (not (= lambda!107086 lambda!107084))))

(declare-fun bs!522028 () Bool)

(assert (= bs!522028 (and d!829591 d!829485)))

(assert (=> bs!522028 (= lambda!107086 lambda!107060)))

(declare-fun bs!522029 () Bool)

(assert (= bs!522029 (and d!829591 d!829509)))

(assert (=> bs!522029 (not (= lambda!107086 lambda!107070))))

(declare-fun bs!522030 () Bool)

(assert (= bs!522030 (and d!829591 d!829487)))

(assert (=> bs!522030 (not (= lambda!107086 lambda!107063))))

(assert (=> d!829591 (= (lostCause!826 lt!1017833) (exists!1153 (exprs!3194 lt!1017833) lambda!107086))))

(declare-fun bs!522031 () Bool)

(assert (= bs!522031 d!829591))

(declare-fun m!3289383 () Bool)

(assert (=> bs!522031 m!3289383))

(assert (=> d!829497 d!829591))

(declare-fun d!829593 () Bool)

(assert (=> d!829593 (matchZipper!476 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (get!10328 (getLanguageWitness!420 lt!1017833)))))

(assert (=> d!829593 true))

(declare-fun _$31!139 () Unit!47969)

(assert (=> d!829593 (= (choose!16972 lt!1017833) _$31!139)))

(declare-fun bs!522032 () Bool)

(assert (= bs!522032 d!829593))

(assert (=> bs!522032 m!3289049))

(assert (=> bs!522032 m!3289035))

(assert (=> bs!522032 m!3289035))

(assert (=> bs!522032 m!3289145))

(assert (=> bs!522032 m!3289049))

(assert (=> bs!522032 m!3289145))

(assert (=> bs!522032 m!3289151))

(assert (=> d!829497 d!829593))

(assert (=> d!829497 d!829481))

(declare-fun d!829595 () Bool)

(assert (=> d!829595 (= (get!10328 (getLanguageWitness!420 lt!1017833)) (v!34530 (getLanguageWitness!420 lt!1017833)))))

(assert (=> d!829497 d!829595))

(assert (=> b!2870433 d!829561))

(assert (=> b!2870483 d!829553))

(assert (=> b!2870483 d!829555))

(assert (=> d!829501 d!829547))

(declare-fun d!829597 () Bool)

(assert (=> d!829597 (= (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))) (v!34530 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> d!829501 d!829597))

(assert (=> d!829501 d!829483))

(declare-fun b!2870781 () Bool)

(declare-fun res!1191141 () Bool)

(declare-fun e!1817000 () Bool)

(assert (=> b!2870781 (=> res!1191141 e!1817000)))

(assert (=> b!2870781 (= res!1191141 (not (isEmpty!18711 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2870782 () Bool)

(declare-fun e!1817005 () Bool)

(assert (=> b!2870782 (= e!1817005 (= (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))) (c!464165 (h!39791 (exprs!3194 c!7184)))))))

(declare-fun d!829599 () Bool)

(declare-fun e!1817004 () Bool)

(assert (=> d!829599 e!1817004))

(declare-fun c!464338 () Bool)

(assert (=> d!829599 (= c!464338 (is-EmptyExpr!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun lt!1017930 () Bool)

(declare-fun e!1817003 () Bool)

(assert (=> d!829599 (= lt!1017930 e!1817003)))

(declare-fun c!464337 () Bool)

(assert (=> d!829599 (= c!464337 (isEmpty!18711 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> d!829599 (validRegex!3512 (h!39791 (exprs!3194 c!7184)))))

(assert (=> d!829599 (= (matchR!3734 (h!39791 (exprs!3194 c!7184)) (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))) lt!1017930)))

(declare-fun bm!185345 () Bool)

(declare-fun call!185350 () Bool)

(assert (=> bm!185345 (= call!185350 (isEmpty!18711 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2870783 () Bool)

(declare-fun e!1817001 () Bool)

(assert (=> b!2870783 (= e!1817004 e!1817001)))

(declare-fun c!464339 () Bool)

(assert (=> b!2870783 (= c!464339 (is-EmptyLang!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870784 () Bool)

(declare-fun e!1817006 () Bool)

(declare-fun e!1817002 () Bool)

(assert (=> b!2870784 (= e!1817006 e!1817002)))

(declare-fun res!1191148 () Bool)

(assert (=> b!2870784 (=> (not res!1191148) (not e!1817002))))

(assert (=> b!2870784 (= res!1191148 (not lt!1017930))))

(declare-fun b!2870785 () Bool)

(declare-fun res!1191146 () Bool)

(assert (=> b!2870785 (=> res!1191146 e!1817006)))

(assert (=> b!2870785 (= res!1191146 e!1817005)))

(declare-fun res!1191147 () Bool)

(assert (=> b!2870785 (=> (not res!1191147) (not e!1817005))))

(assert (=> b!2870785 (= res!1191147 lt!1017930)))

(declare-fun b!2870786 () Bool)

(assert (=> b!2870786 (= e!1817000 (not (= (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))) (c!464165 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2870787 () Bool)

(assert (=> b!2870787 (= e!1817001 (not lt!1017930))))

(declare-fun b!2870788 () Bool)

(assert (=> b!2870788 (= e!1817002 e!1817000)))

(declare-fun res!1191143 () Bool)

(assert (=> b!2870788 (=> res!1191143 e!1817000)))

(assert (=> b!2870788 (= res!1191143 call!185350)))

(declare-fun b!2870789 () Bool)

(assert (=> b!2870789 (= e!1817003 (nullable!2684 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2870790 () Bool)

(declare-fun res!1191144 () Bool)

(assert (=> b!2870790 (=> (not res!1191144) (not e!1817005))))

(assert (=> b!2870790 (= res!1191144 (not call!185350))))

(declare-fun b!2870791 () Bool)

(assert (=> b!2870791 (= e!1817004 (= lt!1017930 call!185350))))

(declare-fun b!2870792 () Bool)

(assert (=> b!2870792 (= e!1817003 (matchR!3734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))) (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2870793 () Bool)

(declare-fun res!1191145 () Bool)

(assert (=> b!2870793 (=> res!1191145 e!1817006)))

(assert (=> b!2870793 (= res!1191145 (not (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> b!2870793 (= e!1817001 e!1817006)))

(declare-fun b!2870794 () Bool)

(declare-fun res!1191142 () Bool)

(assert (=> b!2870794 (=> (not res!1191142) (not e!1817005))))

(assert (=> b!2870794 (= res!1191142 (isEmpty!18711 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))

(assert (= (and d!829599 c!464337) b!2870789))

(assert (= (and d!829599 (not c!464337)) b!2870792))

(assert (= (and d!829599 c!464338) b!2870791))

(assert (= (and d!829599 (not c!464338)) b!2870783))

(assert (= (and b!2870783 c!464339) b!2870787))

(assert (= (and b!2870783 (not c!464339)) b!2870793))

(assert (= (and b!2870793 (not res!1191145)) b!2870785))

(assert (= (and b!2870785 res!1191147) b!2870790))

(assert (= (and b!2870790 res!1191144) b!2870794))

(assert (= (and b!2870794 res!1191142) b!2870782))

(assert (= (and b!2870785 (not res!1191146)) b!2870784))

(assert (= (and b!2870784 res!1191148) b!2870788))

(assert (= (and b!2870788 (not res!1191143)) b!2870781))

(assert (= (and b!2870781 (not res!1191141)) b!2870786))

(assert (= (or b!2870791 b!2870790 b!2870788) bm!185345))

(assert (=> b!2870786 m!3289155))

(declare-fun m!3289385 () Bool)

(assert (=> b!2870786 m!3289385))

(assert (=> b!2870794 m!3289155))

(declare-fun m!3289387 () Bool)

(assert (=> b!2870794 m!3289387))

(assert (=> b!2870794 m!3289387))

(declare-fun m!3289389 () Bool)

(assert (=> b!2870794 m!3289389))

(assert (=> bm!185345 m!3289155))

(declare-fun m!3289391 () Bool)

(assert (=> bm!185345 m!3289391))

(assert (=> b!2870781 m!3289155))

(assert (=> b!2870781 m!3289387))

(assert (=> b!2870781 m!3289387))

(assert (=> b!2870781 m!3289389))

(assert (=> b!2870792 m!3289155))

(assert (=> b!2870792 m!3289385))

(assert (=> b!2870792 m!3289385))

(declare-fun m!3289393 () Bool)

(assert (=> b!2870792 m!3289393))

(assert (=> b!2870792 m!3289155))

(assert (=> b!2870792 m!3289387))

(assert (=> b!2870792 m!3289393))

(assert (=> b!2870792 m!3289387))

(declare-fun m!3289395 () Bool)

(assert (=> b!2870792 m!3289395))

(assert (=> d!829599 m!3289155))

(assert (=> d!829599 m!3289391))

(assert (=> d!829599 m!3289121))

(assert (=> b!2870782 m!3289155))

(assert (=> b!2870782 m!3289385))

(assert (=> b!2870789 m!3289123))

(assert (=> d!829501 d!829599))

(declare-fun d!829601 () Bool)

(assert (=> d!829601 (matchR!3734 (h!39791 (exprs!3194 c!7184)) (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> d!829601 true))

(declare-fun _$101!90 () Unit!47969)

(assert (=> d!829601 (= (choose!16973 (h!39791 (exprs!3194 c!7184))) _$101!90)))

(declare-fun bs!522033 () Bool)

(assert (= bs!522033 d!829601))

(assert (=> bs!522033 m!3289037))

(assert (=> bs!522033 m!3289037))

(assert (=> bs!522033 m!3289155))

(assert (=> bs!522033 m!3289155))

(assert (=> bs!522033 m!3289157))

(assert (=> d!829501 d!829601))

(declare-fun e!1817009 () Bool)

(assert (=> b!2870490 (= tp!923359 e!1817009)))

(declare-fun b!2870807 () Bool)

(declare-fun tp!923379 () Bool)

(assert (=> b!2870807 (= e!1817009 tp!923379)))

(declare-fun b!2870805 () Bool)

(declare-fun tp_is_empty!15069 () Bool)

(assert (=> b!2870805 (= e!1817009 tp_is_empty!15069)))

(declare-fun b!2870808 () Bool)

(declare-fun tp!923377 () Bool)

(declare-fun tp!923380 () Bool)

(assert (=> b!2870808 (= e!1817009 (and tp!923377 tp!923380))))

(declare-fun b!2870806 () Bool)

(declare-fun tp!923378 () Bool)

(declare-fun tp!923381 () Bool)

(assert (=> b!2870806 (= e!1817009 (and tp!923378 tp!923381))))

(assert (= (and b!2870490 (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184)))) b!2870805))

(assert (= (and b!2870490 (is-Concat!14055 (h!39791 (exprs!3194 c!7184)))) b!2870806))

(assert (= (and b!2870490 (is-Star!8734 (h!39791 (exprs!3194 c!7184)))) b!2870807))

(assert (= (and b!2870490 (is-Union!8734 (h!39791 (exprs!3194 c!7184)))) b!2870808))

(declare-fun b!2870809 () Bool)

(declare-fun e!1817010 () Bool)

(declare-fun tp!923382 () Bool)

(declare-fun tp!923383 () Bool)

(assert (=> b!2870809 (= e!1817010 (and tp!923382 tp!923383))))

(assert (=> b!2870490 (= tp!923360 e!1817010)))

(assert (= (and b!2870490 (is-Cons!34371 (t!233538 (exprs!3194 c!7184)))) b!2870809))

(declare-fun b_lambda!85999 () Bool)

(assert (= b_lambda!85995 (or d!829487 b_lambda!85999)))

(declare-fun bs!522034 () Bool)

(declare-fun d!829607 () Bool)

(assert (= bs!522034 (and d!829607 d!829487)))

(assert (=> bs!522034 (= (dynLambda!14307 lambda!107063 (h!39791 (exprs!3194 c!7184))) (validRegex!3512 (h!39791 (exprs!3194 c!7184))))))

(assert (=> bs!522034 m!3289121))

(assert (=> b!2870693 d!829607))

(declare-fun b_lambda!86001 () Bool)

(assert (= b_lambda!85997 (or d!829509 b_lambda!86001)))

(declare-fun bs!522035 () Bool)

(declare-fun d!829609 () Bool)

(assert (= bs!522035 (and d!829609 d!829509)))

(assert (=> bs!522035 (= (dynLambda!14307 lambda!107070 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))) (validRegex!3512 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))))

(declare-fun m!3289397 () Bool)

(assert (=> bs!522035 m!3289397))

(assert (=> b!2870711 d!829609))

(push 1)

(assert (not bs!522035))

(assert (not d!829591))

(assert (not bm!185334))

(assert (not d!829551))

(assert (not b_lambda!85999))

(assert (not bm!185342))

(assert (not b!2870780))

(assert (not d!829531))

(assert (not bm!185338))

(assert (not b!2870714))

(assert (not bm!185336))

(assert (not d!829589))

(assert (not d!829593))

(assert (not b!2870807))

(assert (not b!2870751))

(assert (not b!2870734))

(assert (not d!829599))

(assert (not b!2870808))

(assert (not b!2870634))

(assert (not d!829601))

(assert (not b!2870806))

(assert (not d!829571))

(assert (not b_lambda!86001))

(assert (not bs!522034))

(assert (not b!2870683))

(assert (not b!2870761))

(assert (not b!2870733))

(assert (not b!2870613))

(assert (not b!2870645))

(assert (not b!2870759))

(assert (not b!2870715))

(assert (not b!2870656))

(assert (not d!829559))

(assert (not bm!185339))

(assert (not b!2870794))

(assert (not d!829587))

(assert (not b!2870718))

(assert (not b!2870792))

(assert (not b!2870612))

(assert (not b!2870786))

(assert (not b!2870781))

(assert (not b!2870653))

(assert (not d!829579))

(assert (not b!2870764))

(assert (not d!829583))

(assert (not bm!185335))

(assert (not d!829545))

(assert (not b!2870758))

(assert tp_is_empty!15069)

(assert (not b!2870741))

(assert (not b!2870779))

(assert (not b!2870609))

(assert (not b!2870746))

(assert (not bm!185343))

(assert (not d!829557))

(assert (not bm!185321))

(assert (not b!2870694))

(assert (not b!2870646))

(assert (not b!2870650))

(assert (not b!2870738))

(assert (not b!2870782))

(assert (not b!2870744))

(assert (not d!829581))

(assert (not b!2870712))

(assert (not b!2870696))

(assert (not bm!185333))

(assert (not bm!185330))

(assert (not b!2870658))

(assert (not d!829527))

(assert (not b!2870809))

(assert (not b!2870610))

(assert (not d!829529))

(assert (not b!2870789))

(assert (not bm!185345))

(assert (not bm!185344))

(assert (not bm!185320))

(assert (not bm!185337))

(assert (not bm!185318))

(assert (not d!829575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!829687 () Bool)

(assert (=> d!829687 (= (isEmpty!18711 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))) (is-Nil!34372 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))

(assert (=> b!2870794 d!829687))

(declare-fun d!829689 () Bool)

(assert (=> d!829689 (= (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))) (t!233539 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> b!2870794 d!829689))

(declare-fun d!829691 () Bool)

(assert (=> d!829691 (= (nullable!2684 (regOne!17980 (h!39791 (exprs!3194 c!7184)))) (nullableFct!814 (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))

(declare-fun bs!522068 () Bool)

(assert (= bs!522068 d!829691))

(declare-fun m!3289559 () Bool)

(assert (=> bs!522068 m!3289559))

(assert (=> b!2870683 d!829691))

(declare-fun b!2871020 () Bool)

(declare-fun res!1191204 () Bool)

(declare-fun e!1817122 () Bool)

(assert (=> b!2871020 (=> res!1191204 e!1817122)))

(assert (=> b!2871020 (= res!1191204 (not (isEmpty!18711 (tail!4564 (tail!4564 (tail!4564 (get!10328 lt!1017835)))))))))

(declare-fun b!2871021 () Bool)

(declare-fun e!1817127 () Bool)

(assert (=> b!2871021 (= e!1817127 (= (head!6339 (tail!4564 (tail!4564 (get!10328 lt!1017835)))) (c!464165 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835)))))))))

(declare-fun d!829693 () Bool)

(declare-fun e!1817126 () Bool)

(assert (=> d!829693 e!1817126))

(declare-fun c!464414 () Bool)

(assert (=> d!829693 (= c!464414 (is-EmptyExpr!8734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835))))))))

(declare-fun lt!1017954 () Bool)

(declare-fun e!1817125 () Bool)

(assert (=> d!829693 (= lt!1017954 e!1817125)))

(declare-fun c!464413 () Bool)

(assert (=> d!829693 (= c!464413 (isEmpty!18711 (tail!4564 (tail!4564 (get!10328 lt!1017835)))))))

(assert (=> d!829693 (validRegex!3512 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835)))))))

(assert (=> d!829693 (= (matchR!3734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835)))) (tail!4564 (tail!4564 (get!10328 lt!1017835)))) lt!1017954)))

(declare-fun bm!185380 () Bool)

(declare-fun call!185385 () Bool)

(assert (=> bm!185380 (= call!185385 (isEmpty!18711 (tail!4564 (tail!4564 (get!10328 lt!1017835)))))))

(declare-fun b!2871022 () Bool)

(declare-fun e!1817123 () Bool)

(assert (=> b!2871022 (= e!1817126 e!1817123)))

(declare-fun c!464415 () Bool)

(assert (=> b!2871022 (= c!464415 (is-EmptyLang!8734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835))))))))

(declare-fun b!2871023 () Bool)

(declare-fun e!1817128 () Bool)

(declare-fun e!1817124 () Bool)

(assert (=> b!2871023 (= e!1817128 e!1817124)))

(declare-fun res!1191211 () Bool)

(assert (=> b!2871023 (=> (not res!1191211) (not e!1817124))))

(assert (=> b!2871023 (= res!1191211 (not lt!1017954))))

(declare-fun b!2871024 () Bool)

(declare-fun res!1191209 () Bool)

(assert (=> b!2871024 (=> res!1191209 e!1817128)))

(assert (=> b!2871024 (= res!1191209 e!1817127)))

(declare-fun res!1191210 () Bool)

(assert (=> b!2871024 (=> (not res!1191210) (not e!1817127))))

(assert (=> b!2871024 (= res!1191210 lt!1017954)))

(declare-fun b!2871025 () Bool)

(assert (=> b!2871025 (= e!1817122 (not (= (head!6339 (tail!4564 (tail!4564 (get!10328 lt!1017835)))) (c!464165 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835))))))))))

(declare-fun b!2871026 () Bool)

(assert (=> b!2871026 (= e!1817123 (not lt!1017954))))

(declare-fun b!2871027 () Bool)

(assert (=> b!2871027 (= e!1817124 e!1817122)))

(declare-fun res!1191206 () Bool)

(assert (=> b!2871027 (=> res!1191206 e!1817122)))

(assert (=> b!2871027 (= res!1191206 call!185385)))

(declare-fun b!2871028 () Bool)

(assert (=> b!2871028 (= e!1817125 (nullable!2684 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835))))))))

(declare-fun b!2871029 () Bool)

(declare-fun res!1191207 () Bool)

(assert (=> b!2871029 (=> (not res!1191207) (not e!1817127))))

(assert (=> b!2871029 (= res!1191207 (not call!185385))))

(declare-fun b!2871030 () Bool)

(assert (=> b!2871030 (= e!1817126 (= lt!1017954 call!185385))))

(declare-fun b!2871031 () Bool)

(assert (=> b!2871031 (= e!1817125 (matchR!3734 (derivativeStep!2317 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835)))) (head!6339 (tail!4564 (tail!4564 (get!10328 lt!1017835))))) (tail!4564 (tail!4564 (tail!4564 (get!10328 lt!1017835))))))))

(declare-fun b!2871032 () Bool)

(declare-fun res!1191208 () Bool)

(assert (=> b!2871032 (=> res!1191208 e!1817128)))

(assert (=> b!2871032 (= res!1191208 (not (is-ElementMatch!8734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835)))))))))

(assert (=> b!2871032 (= e!1817123 e!1817128)))

(declare-fun b!2871033 () Bool)

(declare-fun res!1191205 () Bool)

(assert (=> b!2871033 (=> (not res!1191205) (not e!1817127))))

(assert (=> b!2871033 (= res!1191205 (isEmpty!18711 (tail!4564 (tail!4564 (tail!4564 (get!10328 lt!1017835))))))))

(assert (= (and d!829693 c!464413) b!2871028))

(assert (= (and d!829693 (not c!464413)) b!2871031))

(assert (= (and d!829693 c!464414) b!2871030))

(assert (= (and d!829693 (not c!464414)) b!2871022))

(assert (= (and b!2871022 c!464415) b!2871026))

(assert (= (and b!2871022 (not c!464415)) b!2871032))

(assert (= (and b!2871032 (not res!1191208)) b!2871024))

(assert (= (and b!2871024 res!1191210) b!2871029))

(assert (= (and b!2871029 res!1191207) b!2871033))

(assert (= (and b!2871033 res!1191205) b!2871021))

(assert (= (and b!2871024 (not res!1191209)) b!2871023))

(assert (= (and b!2871023 res!1191211) b!2871027))

(assert (= (and b!2871027 (not res!1191206)) b!2871020))

(assert (= (and b!2871020 (not res!1191204)) b!2871025))

(assert (= (or b!2871030 b!2871029 b!2871027) bm!185380))

(assert (=> b!2871025 m!3289337))

(declare-fun m!3289561 () Bool)

(assert (=> b!2871025 m!3289561))

(assert (=> b!2871033 m!3289337))

(declare-fun m!3289563 () Bool)

(assert (=> b!2871033 m!3289563))

(assert (=> b!2871033 m!3289563))

(declare-fun m!3289565 () Bool)

(assert (=> b!2871033 m!3289565))

(assert (=> bm!185380 m!3289337))

(assert (=> bm!185380 m!3289339))

(assert (=> b!2871020 m!3289337))

(assert (=> b!2871020 m!3289563))

(assert (=> b!2871020 m!3289563))

(assert (=> b!2871020 m!3289565))

(assert (=> b!2871031 m!3289337))

(assert (=> b!2871031 m!3289561))

(assert (=> b!2871031 m!3289341))

(assert (=> b!2871031 m!3289561))

(declare-fun m!3289567 () Bool)

(assert (=> b!2871031 m!3289567))

(assert (=> b!2871031 m!3289337))

(assert (=> b!2871031 m!3289563))

(assert (=> b!2871031 m!3289567))

(assert (=> b!2871031 m!3289563))

(declare-fun m!3289569 () Bool)

(assert (=> b!2871031 m!3289569))

(assert (=> d!829693 m!3289337))

(assert (=> d!829693 m!3289339))

(assert (=> d!829693 m!3289341))

(declare-fun m!3289571 () Bool)

(assert (=> d!829693 m!3289571))

(assert (=> b!2871021 m!3289337))

(assert (=> b!2871021 m!3289561))

(assert (=> b!2871028 m!3289341))

(declare-fun m!3289573 () Bool)

(assert (=> b!2871028 m!3289573))

(assert (=> b!2870744 d!829693))

(declare-fun call!185386 () Regex!8734)

(declare-fun b!2871034 () Bool)

(declare-fun e!1817132 () Regex!8734)

(declare-fun call!185388 () Regex!8734)

(assert (=> b!2871034 (= e!1817132 (Union!8734 (Concat!14055 call!185386 (regTwo!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))) call!185388))))

(declare-fun d!829695 () Bool)

(declare-fun lt!1017955 () Regex!8734)

(assert (=> d!829695 (validRegex!3512 lt!1017955)))

(declare-fun e!1817129 () Regex!8734)

(assert (=> d!829695 (= lt!1017955 e!1817129)))

(declare-fun c!464417 () Bool)

(assert (=> d!829695 (= c!464417 (or (is-EmptyExpr!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) (is-EmptyLang!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))))))

(assert (=> d!829695 (validRegex!3512 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))))

(assert (=> d!829695 (= (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))) (head!6339 (tail!4564 (get!10328 lt!1017835)))) lt!1017955)))

(declare-fun b!2871035 () Bool)

(assert (=> b!2871035 (= e!1817129 EmptyLang!8734)))

(declare-fun b!2871036 () Bool)

(declare-fun c!464419 () Bool)

(assert (=> b!2871036 (= c!464419 (is-Union!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun e!1817130 () Regex!8734)

(declare-fun e!1817133 () Regex!8734)

(assert (=> b!2871036 (= e!1817130 e!1817133)))

(declare-fun c!464418 () Bool)

(declare-fun bm!185381 () Bool)

(declare-fun call!185389 () Regex!8734)

(assert (=> bm!185381 (= call!185389 (derivativeStep!2317 (ite c!464419 (regOne!17981 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) (ite c!464418 (reg!9063 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) (regOne!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))) (head!6339 (tail!4564 (get!10328 lt!1017835)))))))

(declare-fun b!2871037 () Bool)

(declare-fun call!185387 () Regex!8734)

(declare-fun e!1817131 () Regex!8734)

(assert (=> b!2871037 (= e!1817131 (Concat!14055 call!185387 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun bm!185382 () Bool)

(assert (=> bm!185382 (= call!185387 call!185389)))

(declare-fun b!2871038 () Bool)

(declare-fun c!464416 () Bool)

(assert (=> b!2871038 (= c!464416 (nullable!2684 (regOne!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))))))

(assert (=> b!2871038 (= e!1817131 e!1817132)))

(declare-fun b!2871039 () Bool)

(assert (=> b!2871039 (= e!1817133 e!1817131)))

(assert (=> b!2871039 (= c!464418 (is-Star!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun b!2871040 () Bool)

(assert (=> b!2871040 (= e!1817129 e!1817130)))

(declare-fun c!464420 () Bool)

(assert (=> b!2871040 (= c!464420 (is-ElementMatch!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun b!2871041 () Bool)

(assert (=> b!2871041 (= e!1817132 (Union!8734 (Concat!14055 call!185386 (regTwo!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))) EmptyLang!8734))))

(declare-fun b!2871042 () Bool)

(assert (=> b!2871042 (= e!1817133 (Union!8734 call!185389 call!185388))))

(declare-fun bm!185383 () Bool)

(assert (=> bm!185383 (= call!185386 call!185387)))

(declare-fun b!2871043 () Bool)

(assert (=> b!2871043 (= e!1817130 (ite (= (head!6339 (tail!4564 (get!10328 lt!1017835))) (c!464165 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185384 () Bool)

(assert (=> bm!185384 (= call!185388 (derivativeStep!2317 (ite c!464419 (regTwo!17981 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) (regTwo!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))) (head!6339 (tail!4564 (get!10328 lt!1017835)))))))

(assert (= (and d!829695 c!464417) b!2871035))

(assert (= (and d!829695 (not c!464417)) b!2871040))

(assert (= (and b!2871040 c!464420) b!2871043))

(assert (= (and b!2871040 (not c!464420)) b!2871036))

(assert (= (and b!2871036 c!464419) b!2871042))

(assert (= (and b!2871036 (not c!464419)) b!2871039))

(assert (= (and b!2871039 c!464418) b!2871037))

(assert (= (and b!2871039 (not c!464418)) b!2871038))

(assert (= (and b!2871038 c!464416) b!2871034))

(assert (= (and b!2871038 (not c!464416)) b!2871041))

(assert (= (or b!2871034 b!2871041) bm!185383))

(assert (= (or b!2871037 bm!185383) bm!185382))

(assert (= (or b!2871042 bm!185382) bm!185381))

(assert (= (or b!2871042 b!2871034) bm!185384))

(declare-fun m!3289575 () Bool)

(assert (=> d!829695 m!3289575))

(assert (=> d!829695 m!3289181))

(assert (=> d!829695 m!3289345))

(assert (=> bm!185381 m!3289335))

(declare-fun m!3289577 () Bool)

(assert (=> bm!185381 m!3289577))

(declare-fun m!3289579 () Bool)

(assert (=> b!2871038 m!3289579))

(assert (=> bm!185384 m!3289335))

(declare-fun m!3289581 () Bool)

(assert (=> bm!185384 m!3289581))

(assert (=> b!2870744 d!829695))

(declare-fun d!829697 () Bool)

(assert (=> d!829697 (= (head!6339 (tail!4564 (get!10328 lt!1017835))) (h!39792 (tail!4564 (get!10328 lt!1017835))))))

(assert (=> b!2870744 d!829697))

(declare-fun d!829699 () Bool)

(assert (=> d!829699 (= (tail!4564 (tail!4564 (get!10328 lt!1017835))) (t!233539 (tail!4564 (get!10328 lt!1017835))))))

(assert (=> b!2870744 d!829699))

(declare-fun b!2871044 () Bool)

(declare-fun res!1191212 () Bool)

(declare-fun e!1817134 () Bool)

(assert (=> b!2871044 (=> res!1191212 e!1817134)))

(assert (=> b!2871044 (= res!1191212 (not (isEmpty!18711 (tail!4564 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))))

(declare-fun b!2871045 () Bool)

(declare-fun e!1817139 () Bool)

(assert (=> b!2871045 (= e!1817139 (= (head!6339 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))) (c!464165 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))))

(declare-fun d!829701 () Bool)

(declare-fun e!1817138 () Bool)

(assert (=> d!829701 e!1817138))

(declare-fun c!464422 () Bool)

(assert (=> d!829701 (= c!464422 (is-EmptyExpr!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun lt!1017956 () Bool)

(declare-fun e!1817137 () Bool)

(assert (=> d!829701 (= lt!1017956 e!1817137)))

(declare-fun c!464421 () Bool)

(assert (=> d!829701 (= c!464421 (isEmpty!18711 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))

(assert (=> d!829701 (validRegex!3512 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))

(assert (=> d!829701 (= (matchR!3734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))) (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))) lt!1017956)))

(declare-fun bm!185385 () Bool)

(declare-fun call!185390 () Bool)

(assert (=> bm!185385 (= call!185390 (isEmpty!18711 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2871046 () Bool)

(declare-fun e!1817135 () Bool)

(assert (=> b!2871046 (= e!1817138 e!1817135)))

(declare-fun c!464423 () Bool)

(assert (=> b!2871046 (= c!464423 (is-EmptyLang!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2871047 () Bool)

(declare-fun e!1817140 () Bool)

(declare-fun e!1817136 () Bool)

(assert (=> b!2871047 (= e!1817140 e!1817136)))

(declare-fun res!1191219 () Bool)

(assert (=> b!2871047 (=> (not res!1191219) (not e!1817136))))

(assert (=> b!2871047 (= res!1191219 (not lt!1017956))))

(declare-fun b!2871048 () Bool)

(declare-fun res!1191217 () Bool)

(assert (=> b!2871048 (=> res!1191217 e!1817140)))

(assert (=> b!2871048 (= res!1191217 e!1817139)))

(declare-fun res!1191218 () Bool)

(assert (=> b!2871048 (=> (not res!1191218) (not e!1817139))))

(assert (=> b!2871048 (= res!1191218 lt!1017956)))

(declare-fun b!2871049 () Bool)

(assert (=> b!2871049 (= e!1817134 (not (= (head!6339 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))) (c!464165 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun b!2871050 () Bool)

(assert (=> b!2871050 (= e!1817135 (not lt!1017956))))

(declare-fun b!2871051 () Bool)

(assert (=> b!2871051 (= e!1817136 e!1817134)))

(declare-fun res!1191214 () Bool)

(assert (=> b!2871051 (=> res!1191214 e!1817134)))

(assert (=> b!2871051 (= res!1191214 call!185390)))

(declare-fun b!2871052 () Bool)

(assert (=> b!2871052 (= e!1817137 (nullable!2684 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2871053 () Bool)

(declare-fun res!1191215 () Bool)

(assert (=> b!2871053 (=> (not res!1191215) (not e!1817139))))

(assert (=> b!2871053 (= res!1191215 (not call!185390))))

(declare-fun b!2871054 () Bool)

(assert (=> b!2871054 (= e!1817138 (= lt!1017956 call!185390))))

(declare-fun b!2871055 () Bool)

(assert (=> b!2871055 (= e!1817137 (matchR!3734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))) (head!6339 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))) (tail!4564 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2871056 () Bool)

(declare-fun res!1191216 () Bool)

(assert (=> b!2871056 (=> res!1191216 e!1817140)))

(assert (=> b!2871056 (= res!1191216 (not (is-ElementMatch!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))))

(assert (=> b!2871056 (= e!1817135 e!1817140)))

(declare-fun b!2871057 () Bool)

(declare-fun res!1191213 () Bool)

(assert (=> b!2871057 (=> (not res!1191213) (not e!1817139))))

(assert (=> b!2871057 (= res!1191213 (isEmpty!18711 (tail!4564 (tail!4564 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))))

(assert (= (and d!829701 c!464421) b!2871052))

(assert (= (and d!829701 (not c!464421)) b!2871055))

(assert (= (and d!829701 c!464422) b!2871054))

(assert (= (and d!829701 (not c!464422)) b!2871046))

(assert (= (and b!2871046 c!464423) b!2871050))

(assert (= (and b!2871046 (not c!464423)) b!2871056))

(assert (= (and b!2871056 (not res!1191216)) b!2871048))

(assert (= (and b!2871048 res!1191218) b!2871053))

(assert (= (and b!2871053 res!1191215) b!2871057))

(assert (= (and b!2871057 res!1191213) b!2871045))

(assert (= (and b!2871048 (not res!1191217)) b!2871047))

(assert (= (and b!2871047 res!1191219) b!2871051))

(assert (= (and b!2871051 (not res!1191214)) b!2871044))

(assert (= (and b!2871044 (not res!1191212)) b!2871049))

(assert (= (or b!2871054 b!2871053 b!2871051) bm!185385))

(assert (=> b!2871049 m!3289387))

(declare-fun m!3289583 () Bool)

(assert (=> b!2871049 m!3289583))

(assert (=> b!2871057 m!3289387))

(declare-fun m!3289585 () Bool)

(assert (=> b!2871057 m!3289585))

(assert (=> b!2871057 m!3289585))

(declare-fun m!3289587 () Bool)

(assert (=> b!2871057 m!3289587))

(assert (=> bm!185385 m!3289387))

(assert (=> bm!185385 m!3289389))

(assert (=> b!2871044 m!3289387))

(assert (=> b!2871044 m!3289585))

(assert (=> b!2871044 m!3289585))

(assert (=> b!2871044 m!3289587))

(assert (=> b!2871055 m!3289387))

(assert (=> b!2871055 m!3289583))

(assert (=> b!2871055 m!3289393))

(assert (=> b!2871055 m!3289583))

(declare-fun m!3289589 () Bool)

(assert (=> b!2871055 m!3289589))

(assert (=> b!2871055 m!3289387))

(assert (=> b!2871055 m!3289585))

(assert (=> b!2871055 m!3289589))

(assert (=> b!2871055 m!3289585))

(declare-fun m!3289591 () Bool)

(assert (=> b!2871055 m!3289591))

(assert (=> d!829701 m!3289387))

(assert (=> d!829701 m!3289389))

(assert (=> d!829701 m!3289393))

(declare-fun m!3289593 () Bool)

(assert (=> d!829701 m!3289593))

(assert (=> b!2871045 m!3289387))

(assert (=> b!2871045 m!3289583))

(assert (=> b!2871052 m!3289393))

(declare-fun m!3289595 () Bool)

(assert (=> b!2871052 m!3289595))

(assert (=> b!2870792 d!829701))

(declare-fun b!2871058 () Bool)

(declare-fun call!185391 () Regex!8734)

(declare-fun e!1817144 () Regex!8734)

(declare-fun call!185393 () Regex!8734)

(assert (=> b!2871058 (= e!1817144 (Union!8734 (Concat!14055 call!185391 (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) call!185393))))

(declare-fun d!829703 () Bool)

(declare-fun lt!1017957 () Regex!8734)

(assert (=> d!829703 (validRegex!3512 lt!1017957)))

(declare-fun e!1817141 () Regex!8734)

(assert (=> d!829703 (= lt!1017957 e!1817141)))

(declare-fun c!464425 () Bool)

(assert (=> d!829703 (= c!464425 (or (is-EmptyExpr!8734 (h!39791 (exprs!3194 c!7184))) (is-EmptyLang!8734 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> d!829703 (validRegex!3512 (h!39791 (exprs!3194 c!7184)))))

(assert (=> d!829703 (= (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))) lt!1017957)))

(declare-fun b!2871059 () Bool)

(assert (=> b!2871059 (= e!1817141 EmptyLang!8734)))

(declare-fun b!2871060 () Bool)

(declare-fun c!464427 () Bool)

(assert (=> b!2871060 (= c!464427 (is-Union!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun e!1817142 () Regex!8734)

(declare-fun e!1817145 () Regex!8734)

(assert (=> b!2871060 (= e!1817142 e!1817145)))

(declare-fun bm!185386 () Bool)

(declare-fun call!185394 () Regex!8734)

(declare-fun c!464426 () Bool)

(assert (=> bm!185386 (= call!185394 (derivativeStep!2317 (ite c!464427 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464426 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2871061 () Bool)

(declare-fun e!1817143 () Regex!8734)

(declare-fun call!185392 () Regex!8734)

(assert (=> b!2871061 (= e!1817143 (Concat!14055 call!185392 (h!39791 (exprs!3194 c!7184))))))

(declare-fun bm!185387 () Bool)

(assert (=> bm!185387 (= call!185392 call!185394)))

(declare-fun b!2871062 () Bool)

(declare-fun c!464424 () Bool)

(assert (=> b!2871062 (= c!464424 (nullable!2684 (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> b!2871062 (= e!1817143 e!1817144)))

(declare-fun b!2871063 () Bool)

(assert (=> b!2871063 (= e!1817145 e!1817143)))

(assert (=> b!2871063 (= c!464426 (is-Star!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2871064 () Bool)

(assert (=> b!2871064 (= e!1817141 e!1817142)))

(declare-fun c!464428 () Bool)

(assert (=> b!2871064 (= c!464428 (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2871065 () Bool)

(assert (=> b!2871065 (= e!1817144 (Union!8734 (Concat!14055 call!185391 (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) EmptyLang!8734))))

(declare-fun b!2871066 () Bool)

(assert (=> b!2871066 (= e!1817145 (Union!8734 call!185394 call!185393))))

(declare-fun bm!185388 () Bool)

(assert (=> bm!185388 (= call!185391 call!185392)))

(declare-fun b!2871067 () Bool)

(assert (=> b!2871067 (= e!1817142 (ite (= (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))) (c!464165 (h!39791 (exprs!3194 c!7184)))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185389 () Bool)

(assert (=> bm!185389 (= call!185393 (derivativeStep!2317 (ite c!464427 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184)))))))))

(assert (= (and d!829703 c!464425) b!2871059))

(assert (= (and d!829703 (not c!464425)) b!2871064))

(assert (= (and b!2871064 c!464428) b!2871067))

(assert (= (and b!2871064 (not c!464428)) b!2871060))

(assert (= (and b!2871060 c!464427) b!2871066))

(assert (= (and b!2871060 (not c!464427)) b!2871063))

(assert (= (and b!2871063 c!464426) b!2871061))

(assert (= (and b!2871063 (not c!464426)) b!2871062))

(assert (= (and b!2871062 c!464424) b!2871058))

(assert (= (and b!2871062 (not c!464424)) b!2871065))

(assert (= (or b!2871058 b!2871065) bm!185388))

(assert (= (or b!2871061 bm!185388) bm!185387))

(assert (= (or b!2871066 bm!185387) bm!185386))

(assert (= (or b!2871066 b!2871058) bm!185389))

(declare-fun m!3289597 () Bool)

(assert (=> d!829703 m!3289597))

(assert (=> d!829703 m!3289121))

(assert (=> bm!185386 m!3289385))

(declare-fun m!3289599 () Bool)

(assert (=> bm!185386 m!3289599))

(assert (=> b!2871062 m!3289295))

(assert (=> bm!185389 m!3289385))

(declare-fun m!3289601 () Bool)

(assert (=> bm!185389 m!3289601))

(assert (=> b!2870792 d!829703))

(declare-fun d!829705 () Bool)

(assert (=> d!829705 (= (head!6339 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))) (h!39792 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> b!2870792 d!829705))

(assert (=> b!2870792 d!829689))

(assert (=> b!2870751 d!829691))

(declare-fun d!829707 () Bool)

(declare-fun lt!1017960 () Int)

(assert (=> d!829707 (>= lt!1017960 0)))

(declare-fun e!1817148 () Int)

(assert (=> d!829707 (= lt!1017960 e!1817148)))

(declare-fun c!464431 () Bool)

(assert (=> d!829707 (= c!464431 (is-Nil!34372 lt!1017918))))

(assert (=> d!829707 (= (size!26319 lt!1017918) lt!1017960)))

(declare-fun b!2871072 () Bool)

(assert (=> b!2871072 (= e!1817148 0)))

(declare-fun b!2871073 () Bool)

(assert (=> b!2871073 (= e!1817148 (+ 1 (size!26319 (t!233539 lt!1017918))))))

(assert (= (and d!829707 c!464431) b!2871072))

(assert (= (and d!829707 (not c!464431)) b!2871073))

(declare-fun m!3289603 () Bool)

(assert (=> b!2871073 m!3289603))

(assert (=> b!2870715 d!829707))

(declare-fun d!829709 () Bool)

(declare-fun lt!1017961 () Int)

(assert (=> d!829709 (>= lt!1017961 0)))

(declare-fun e!1817149 () Int)

(assert (=> d!829709 (= lt!1017961 e!1817149)))

(declare-fun c!464432 () Bool)

(assert (=> d!829709 (= c!464432 (is-Nil!34372 (v!34530 lt!1017859)))))

(assert (=> d!829709 (= (size!26319 (v!34530 lt!1017859)) lt!1017961)))

(declare-fun b!2871074 () Bool)

(assert (=> b!2871074 (= e!1817149 0)))

(declare-fun b!2871075 () Bool)

(assert (=> b!2871075 (= e!1817149 (+ 1 (size!26319 (t!233539 (v!34530 lt!1017859)))))))

(assert (= (and d!829709 c!464432) b!2871074))

(assert (= (and d!829709 (not c!464432)) b!2871075))

(declare-fun m!3289605 () Bool)

(assert (=> b!2871075 m!3289605))

(assert (=> b!2870715 d!829709))

(declare-fun d!829711 () Bool)

(declare-fun lt!1017962 () Int)

(assert (=> d!829711 (>= lt!1017962 0)))

(declare-fun e!1817150 () Int)

(assert (=> d!829711 (= lt!1017962 e!1817150)))

(declare-fun c!464433 () Bool)

(assert (=> d!829711 (= c!464433 (is-Nil!34372 (v!34530 lt!1017860)))))

(assert (=> d!829711 (= (size!26319 (v!34530 lt!1017860)) lt!1017962)))

(declare-fun b!2871076 () Bool)

(assert (=> b!2871076 (= e!1817150 0)))

(declare-fun b!2871077 () Bool)

(assert (=> b!2871077 (= e!1817150 (+ 1 (size!26319 (t!233539 (v!34530 lt!1017860)))))))

(assert (= (and d!829711 c!464433) b!2871076))

(assert (= (and d!829711 (not c!464433)) b!2871077))

(declare-fun m!3289607 () Bool)

(assert (=> b!2871077 m!3289607))

(assert (=> b!2870715 d!829711))

(declare-fun d!829713 () Bool)

(declare-fun choose!16976 ((Set Context!5388) Int) (Set Context!5388))

(assert (=> d!829713 (= (flatMap!217 (set.insert lt!1017833 (as set.empty (Set Context!5388))) lambda!107077) (choose!16976 (set.insert lt!1017833 (as set.empty (Set Context!5388))) lambda!107077))))

(declare-fun bs!522069 () Bool)

(assert (= bs!522069 d!829713))

(assert (=> bs!522069 m!3289049))

(declare-fun m!3289609 () Bool)

(assert (=> bs!522069 m!3289609))

(assert (=> d!829531 d!829713))

(declare-fun d!829715 () Bool)

(assert (=> d!829715 (= (isEmpty!18711 (tail!4564 (tail!4564 (get!10328 lt!1017835)))) (is-Nil!34372 (tail!4564 (tail!4564 (get!10328 lt!1017835)))))))

(assert (=> b!2870746 d!829715))

(assert (=> b!2870746 d!829699))

(declare-fun b!2871080 () Bool)

(declare-fun res!1191221 () Bool)

(declare-fun e!1817151 () Bool)

(assert (=> b!2871080 (=> (not res!1191221) (not e!1817151))))

(declare-fun lt!1017963 () List!34496)

(assert (=> b!2871080 (= res!1191221 (= (size!26319 lt!1017963) (+ (size!26319 (v!34530 lt!1017921)) (size!26319 (v!34530 lt!1017919)))))))

(declare-fun b!2871081 () Bool)

(assert (=> b!2871081 (= e!1817151 (or (not (= (v!34530 lt!1017919) Nil!34372)) (= lt!1017963 (v!34530 lt!1017921))))))

(declare-fun b!2871078 () Bool)

(declare-fun e!1817152 () List!34496)

(assert (=> b!2871078 (= e!1817152 (v!34530 lt!1017919))))

(declare-fun b!2871079 () Bool)

(assert (=> b!2871079 (= e!1817152 (Cons!34372 (h!39792 (v!34530 lt!1017921)) (++!8171 (t!233539 (v!34530 lt!1017921)) (v!34530 lt!1017919))))))

(declare-fun d!829717 () Bool)

(assert (=> d!829717 e!1817151))

(declare-fun res!1191220 () Bool)

(assert (=> d!829717 (=> (not res!1191220) (not e!1817151))))

(assert (=> d!829717 (= res!1191220 (= (content!4696 lt!1017963) (set.union (content!4696 (v!34530 lt!1017921)) (content!4696 (v!34530 lt!1017919)))))))

(assert (=> d!829717 (= lt!1017963 e!1817152)))

(declare-fun c!464434 () Bool)

(assert (=> d!829717 (= c!464434 (is-Nil!34372 (v!34530 lt!1017921)))))

(assert (=> d!829717 (= (++!8171 (v!34530 lt!1017921) (v!34530 lt!1017919)) lt!1017963)))

(assert (= (and d!829717 c!464434) b!2871078))

(assert (= (and d!829717 (not c!464434)) b!2871079))

(assert (= (and d!829717 res!1191220) b!2871080))

(assert (= (and b!2871080 res!1191221) b!2871081))

(declare-fun m!3289611 () Bool)

(assert (=> b!2871080 m!3289611))

(declare-fun m!3289613 () Bool)

(assert (=> b!2871080 m!3289613))

(declare-fun m!3289615 () Bool)

(assert (=> b!2871080 m!3289615))

(declare-fun m!3289617 () Bool)

(assert (=> b!2871079 m!3289617))

(declare-fun m!3289619 () Bool)

(assert (=> d!829717 m!3289619))

(declare-fun m!3289621 () Bool)

(assert (=> d!829717 m!3289621))

(declare-fun m!3289623 () Bool)

(assert (=> d!829717 m!3289623))

(assert (=> b!2870718 d!829717))

(declare-fun d!829719 () Bool)

(declare-fun res!1191222 () Bool)

(declare-fun e!1817153 () Bool)

(assert (=> d!829719 (=> res!1191222 e!1817153)))

(assert (=> d!829719 (= res!1191222 (is-Nil!34371 (exprs!3194 lt!1017833)))))

(assert (=> d!829719 (= (forall!7079 (exprs!3194 lt!1017833) lambda!107083) e!1817153)))

(declare-fun b!2871082 () Bool)

(declare-fun e!1817154 () Bool)

(assert (=> b!2871082 (= e!1817153 e!1817154)))

(declare-fun res!1191223 () Bool)

(assert (=> b!2871082 (=> (not res!1191223) (not e!1817154))))

(assert (=> b!2871082 (= res!1191223 (dynLambda!14307 lambda!107083 (h!39791 (exprs!3194 lt!1017833))))))

(declare-fun b!2871083 () Bool)

(assert (=> b!2871083 (= e!1817154 (forall!7079 (t!233538 (exprs!3194 lt!1017833)) lambda!107083))))

(assert (= (and d!829719 (not res!1191222)) b!2871082))

(assert (= (and b!2871082 res!1191223) b!2871083))

(declare-fun b_lambda!86011 () Bool)

(assert (=> (not b_lambda!86011) (not b!2871082)))

(declare-fun m!3289625 () Bool)

(assert (=> b!2871082 m!3289625))

(declare-fun m!3289627 () Bool)

(assert (=> b!2871083 m!3289627))

(assert (=> d!829551 d!829719))

(declare-fun d!829721 () Bool)

(assert (=> d!829721 (= (nullable!2684 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) (nullableFct!814 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun bs!522070 () Bool)

(assert (= bs!522070 d!829721))

(assert (=> bs!522070 m!3289117))

(declare-fun m!3289629 () Bool)

(assert (=> bs!522070 m!3289629))

(assert (=> b!2870653 d!829721))

(assert (=> b!2870779 d!829545))

(declare-fun b!2871084 () Bool)

(declare-fun e!1817155 () Bool)

(declare-fun e!1817158 () Bool)

(assert (=> b!2871084 (= e!1817155 e!1817158)))

(declare-fun res!1191225 () Bool)

(assert (=> b!2871084 (= res!1191225 (not (nullable!2684 (reg!9063 lt!1017914))))))

(assert (=> b!2871084 (=> (not res!1191225) (not e!1817158))))

(declare-fun b!2871085 () Bool)

(declare-fun e!1817157 () Bool)

(declare-fun call!185395 () Bool)

(assert (=> b!2871085 (= e!1817157 call!185395)))

(declare-fun bm!185390 () Bool)

(declare-fun call!185397 () Bool)

(declare-fun c!464436 () Bool)

(assert (=> bm!185390 (= call!185397 (validRegex!3512 (ite c!464436 (regTwo!17981 lt!1017914) (regOne!17980 lt!1017914))))))

(declare-fun d!829723 () Bool)

(declare-fun res!1191227 () Bool)

(declare-fun e!1817161 () Bool)

(assert (=> d!829723 (=> res!1191227 e!1817161)))

(assert (=> d!829723 (= res!1191227 (is-ElementMatch!8734 lt!1017914))))

(assert (=> d!829723 (= (validRegex!3512 lt!1017914) e!1817161)))

(declare-fun bm!185391 () Bool)

(declare-fun call!185396 () Bool)

(assert (=> bm!185391 (= call!185395 call!185396)))

(declare-fun c!464435 () Bool)

(declare-fun bm!185392 () Bool)

(assert (=> bm!185392 (= call!185396 (validRegex!3512 (ite c!464435 (reg!9063 lt!1017914) (ite c!464436 (regOne!17981 lt!1017914) (regTwo!17980 lt!1017914)))))))

(declare-fun b!2871086 () Bool)

(declare-fun res!1191224 () Bool)

(declare-fun e!1817160 () Bool)

(assert (=> b!2871086 (=> res!1191224 e!1817160)))

(assert (=> b!2871086 (= res!1191224 (not (is-Concat!14055 lt!1017914)))))

(declare-fun e!1817156 () Bool)

(assert (=> b!2871086 (= e!1817156 e!1817160)))

(declare-fun b!2871087 () Bool)

(assert (=> b!2871087 (= e!1817155 e!1817156)))

(assert (=> b!2871087 (= c!464436 (is-Union!8734 lt!1017914))))

(declare-fun b!2871088 () Bool)

(assert (=> b!2871088 (= e!1817161 e!1817155)))

(assert (=> b!2871088 (= c!464435 (is-Star!8734 lt!1017914))))

(declare-fun b!2871089 () Bool)

(declare-fun res!1191228 () Bool)

(declare-fun e!1817159 () Bool)

(assert (=> b!2871089 (=> (not res!1191228) (not e!1817159))))

(assert (=> b!2871089 (= res!1191228 call!185395)))

(assert (=> b!2871089 (= e!1817156 e!1817159)))

(declare-fun b!2871090 () Bool)

(assert (=> b!2871090 (= e!1817160 e!1817157)))

(declare-fun res!1191226 () Bool)

(assert (=> b!2871090 (=> (not res!1191226) (not e!1817157))))

(assert (=> b!2871090 (= res!1191226 call!185397)))

(declare-fun b!2871091 () Bool)

(assert (=> b!2871091 (= e!1817158 call!185396)))

(declare-fun b!2871092 () Bool)

(assert (=> b!2871092 (= e!1817159 call!185397)))

(assert (= (and d!829723 (not res!1191227)) b!2871088))

(assert (= (and b!2871088 c!464435) b!2871084))

(assert (= (and b!2871088 (not c!464435)) b!2871087))

(assert (= (and b!2871084 res!1191225) b!2871091))

(assert (= (and b!2871087 c!464436) b!2871089))

(assert (= (and b!2871087 (not c!464436)) b!2871086))

(assert (= (and b!2871089 res!1191228) b!2871092))

(assert (= (and b!2871086 (not res!1191224)) b!2871090))

(assert (= (and b!2871090 res!1191226) b!2871085))

(assert (= (or b!2871092 b!2871090) bm!185390))

(assert (= (or b!2871089 b!2871085) bm!185391))

(assert (= (or b!2871091 bm!185391) bm!185392))

(declare-fun m!3289631 () Bool)

(assert (=> b!2871084 m!3289631))

(declare-fun m!3289633 () Bool)

(assert (=> bm!185390 m!3289633))

(declare-fun m!3289635 () Bool)

(assert (=> bm!185392 m!3289635))

(assert (=> d!829559 d!829723))

(assert (=> d!829559 d!829547))

(assert (=> b!2870734 d!829697))

(declare-fun d!829725 () Bool)

(declare-fun lt!1017966 () Bool)

(declare-datatypes ((List!34499 0))(
  ( (Nil!34375) (Cons!34375 (h!39795 Context!5388) (t!233542 List!34499)) )
))
(declare-fun exists!1157 (List!34499 Int) Bool)

(declare-fun toList!2021 ((Set Context!5388)) List!34499)

(assert (=> d!829725 (= lt!1017966 (exists!1157 (toList!2021 (set.insert lt!1017833 (as set.empty (Set Context!5388)))) lambda!107080))))

(declare-fun choose!16977 ((Set Context!5388) Int) Bool)

(assert (=> d!829725 (= lt!1017966 (choose!16977 (set.insert lt!1017833 (as set.empty (Set Context!5388))) lambda!107080))))

(assert (=> d!829725 (= (exists!1155 (set.insert lt!1017833 (as set.empty (Set Context!5388))) lambda!107080) lt!1017966)))

(declare-fun bs!522071 () Bool)

(assert (= bs!522071 d!829725))

(assert (=> bs!522071 m!3289049))

(declare-fun m!3289637 () Bool)

(assert (=> bs!522071 m!3289637))

(assert (=> bs!522071 m!3289637))

(declare-fun m!3289639 () Bool)

(assert (=> bs!522071 m!3289639))

(assert (=> bs!522071 m!3289049))

(declare-fun m!3289641 () Bool)

(assert (=> bs!522071 m!3289641))

(assert (=> d!829545 d!829725))

(declare-fun bs!522072 () Bool)

(declare-fun d!829727 () Bool)

(assert (= bs!522072 (and d!829727 d!829545)))

(declare-fun lambda!107099 () Int)

(assert (=> bs!522072 (= lambda!107099 lambda!107080)))

(assert (=> d!829727 (= (nullableZipper!712 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832)))) (exists!1155 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) lambda!107099))))

(declare-fun bs!522073 () Bool)

(assert (= bs!522073 d!829727))

(assert (=> bs!522073 m!3289131))

(declare-fun m!3289643 () Bool)

(assert (=> bs!522073 m!3289643))

(assert (=> b!2870612 d!829727))

(declare-fun b!2871095 () Bool)

(declare-fun res!1191230 () Bool)

(declare-fun e!1817162 () Bool)

(assert (=> b!2871095 (=> (not res!1191230) (not e!1817162))))

(declare-fun lt!1017967 () List!34496)

(assert (=> b!2871095 (= res!1191230 (= (size!26319 lt!1017967) (+ (size!26319 (v!34530 lt!1017925)) (size!26319 (v!34530 lt!1017926)))))))

(declare-fun b!2871096 () Bool)

(assert (=> b!2871096 (= e!1817162 (or (not (= (v!34530 lt!1017926) Nil!34372)) (= lt!1017967 (v!34530 lt!1017925))))))

(declare-fun b!2871093 () Bool)

(declare-fun e!1817163 () List!34496)

(assert (=> b!2871093 (= e!1817163 (v!34530 lt!1017926))))

(declare-fun b!2871094 () Bool)

(assert (=> b!2871094 (= e!1817163 (Cons!34372 (h!39792 (v!34530 lt!1017925)) (++!8171 (t!233539 (v!34530 lt!1017925)) (v!34530 lt!1017926))))))

(declare-fun d!829729 () Bool)

(assert (=> d!829729 e!1817162))

(declare-fun res!1191229 () Bool)

(assert (=> d!829729 (=> (not res!1191229) (not e!1817162))))

(assert (=> d!829729 (= res!1191229 (= (content!4696 lt!1017967) (set.union (content!4696 (v!34530 lt!1017925)) (content!4696 (v!34530 lt!1017926)))))))

(assert (=> d!829729 (= lt!1017967 e!1817163)))

(declare-fun c!464437 () Bool)

(assert (=> d!829729 (= c!464437 (is-Nil!34372 (v!34530 lt!1017925)))))

(assert (=> d!829729 (= (++!8171 (v!34530 lt!1017925) (v!34530 lt!1017926)) lt!1017967)))

(assert (= (and d!829729 c!464437) b!2871093))

(assert (= (and d!829729 (not c!464437)) b!2871094))

(assert (= (and d!829729 res!1191229) b!2871095))

(assert (= (and b!2871095 res!1191230) b!2871096))

(declare-fun m!3289645 () Bool)

(assert (=> b!2871095 m!3289645))

(declare-fun m!3289647 () Bool)

(assert (=> b!2871095 m!3289647))

(declare-fun m!3289649 () Bool)

(assert (=> b!2871095 m!3289649))

(declare-fun m!3289651 () Bool)

(assert (=> b!2871094 m!3289651))

(declare-fun m!3289653 () Bool)

(assert (=> d!829729 m!3289653))

(declare-fun m!3289655 () Bool)

(assert (=> d!829729 m!3289655))

(declare-fun m!3289657 () Bool)

(assert (=> d!829729 m!3289657))

(assert (=> b!2870761 d!829729))

(declare-fun b!2871099 () Bool)

(declare-fun res!1191232 () Bool)

(declare-fun e!1817164 () Bool)

(assert (=> b!2871099 (=> (not res!1191232) (not e!1817164))))

(declare-fun lt!1017968 () List!34496)

(assert (=> b!2871099 (= res!1191232 (= (size!26319 lt!1017968) (+ (size!26319 (t!233539 (v!34530 lt!1017869))) (size!26319 (v!34530 lt!1017867)))))))

(declare-fun b!2871100 () Bool)

(assert (=> b!2871100 (= e!1817164 (or (not (= (v!34530 lt!1017867) Nil!34372)) (= lt!1017968 (t!233539 (v!34530 lt!1017869)))))))

(declare-fun b!2871097 () Bool)

(declare-fun e!1817165 () List!34496)

(assert (=> b!2871097 (= e!1817165 (v!34530 lt!1017867))))

(declare-fun b!2871098 () Bool)

(assert (=> b!2871098 (= e!1817165 (Cons!34372 (h!39792 (t!233539 (v!34530 lt!1017869))) (++!8171 (t!233539 (t!233539 (v!34530 lt!1017869))) (v!34530 lt!1017867))))))

(declare-fun d!829731 () Bool)

(assert (=> d!829731 e!1817164))

(declare-fun res!1191231 () Bool)

(assert (=> d!829731 (=> (not res!1191231) (not e!1817164))))

(assert (=> d!829731 (= res!1191231 (= (content!4696 lt!1017968) (set.union (content!4696 (t!233539 (v!34530 lt!1017869))) (content!4696 (v!34530 lt!1017867)))))))

(assert (=> d!829731 (= lt!1017968 e!1817165)))

(declare-fun c!464438 () Bool)

(assert (=> d!829731 (= c!464438 (is-Nil!34372 (t!233539 (v!34530 lt!1017869))))))

(assert (=> d!829731 (= (++!8171 (t!233539 (v!34530 lt!1017869)) (v!34530 lt!1017867)) lt!1017968)))

(assert (= (and d!829731 c!464438) b!2871097))

(assert (= (and d!829731 (not c!464438)) b!2871098))

(assert (= (and d!829731 res!1191231) b!2871099))

(assert (= (and b!2871099 res!1191232) b!2871100))

(declare-fun m!3289659 () Bool)

(assert (=> b!2871099 m!3289659))

(declare-fun m!3289661 () Bool)

(assert (=> b!2871099 m!3289661))

(assert (=> b!2871099 m!3289243))

(declare-fun m!3289663 () Bool)

(assert (=> b!2871098 m!3289663))

(declare-fun m!3289665 () Bool)

(assert (=> d!829731 m!3289665))

(declare-fun m!3289667 () Bool)

(assert (=> d!829731 m!3289667))

(assert (=> d!829731 m!3289251))

(assert (=> b!2870609 d!829731))

(assert (=> b!2870782 d!829705))

(declare-fun b!2871101 () Bool)

(declare-fun e!1817171 () Option!6409)

(assert (=> b!2871101 (= e!1817171 (Some!6408 (Cons!34372 (c!464165 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) Nil!34372)))))

(declare-fun b!2871102 () Bool)

(declare-fun e!1817166 () Option!6409)

(declare-fun lt!1017971 () Option!6409)

(declare-fun lt!1017969 () Option!6409)

(assert (=> b!2871102 (= e!1817166 (Some!6408 (++!8171 (v!34530 lt!1017971) (v!34530 lt!1017969))))))

(declare-fun b!2871103 () Bool)

(declare-fun e!1817172 () Option!6409)

(assert (=> b!2871103 (= e!1817172 None!6408)))

(declare-fun b!2871104 () Bool)

(declare-fun c!464444 () Bool)

(assert (=> b!2871104 (= c!464444 (is-Some!6408 lt!1017969))))

(declare-fun call!185399 () Option!6409)

(assert (=> b!2871104 (= lt!1017969 call!185399)))

(assert (=> b!2871104 (= e!1817172 e!1817166)))

(declare-fun b!2871105 () Bool)

(declare-fun e!1817170 () Option!6409)

(declare-fun e!1817169 () Option!6409)

(assert (=> b!2871105 (= e!1817170 e!1817169)))

(declare-fun c!464440 () Bool)

(assert (=> b!2871105 (= c!464440 (is-EmptyLang!8734 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun call!185398 () Option!6409)

(declare-fun c!464445 () Bool)

(declare-fun bm!185393 () Bool)

(assert (=> bm!185393 (= call!185398 (getLanguageWitness!419 (ite c!464445 (regOne!17981 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) (regOne!17980 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun b!2871106 () Bool)

(declare-fun e!1817173 () Option!6409)

(assert (=> b!2871106 (= e!1817171 e!1817173)))

(declare-fun c!464443 () Bool)

(assert (=> b!2871106 (= c!464443 (is-Star!8734 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2871107 () Bool)

(assert (=> b!2871107 (= e!1817169 None!6408)))

(declare-fun b!2871108 () Bool)

(declare-fun e!1817167 () Option!6409)

(declare-fun e!1817168 () Option!6409)

(assert (=> b!2871108 (= e!1817167 e!1817168)))

(declare-fun lt!1017970 () Option!6409)

(assert (=> b!2871108 (= lt!1017970 call!185398)))

(declare-fun c!464446 () Bool)

(assert (=> b!2871108 (= c!464446 (is-Some!6408 lt!1017970))))

(declare-fun b!2871109 () Bool)

(assert (=> b!2871109 (= e!1817170 (Some!6408 Nil!34372))))

(declare-fun bm!185394 () Bool)

(assert (=> bm!185394 (= call!185399 (getLanguageWitness!419 (ite c!464445 (regTwo!17981 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) (regTwo!17980 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun c!464441 () Bool)

(declare-fun d!829733 () Bool)

(assert (=> d!829733 (= c!464441 (is-EmptyExpr!8734 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> d!829733 (= (getLanguageWitness!419 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) e!1817170)))

(declare-fun c!464442 () Bool)

(declare-fun b!2871110 () Bool)

(assert (=> b!2871110 (= c!464442 (is-ElementMatch!8734 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871110 (= e!1817169 e!1817171)))

(declare-fun b!2871111 () Bool)

(assert (=> b!2871111 (= c!464445 (is-Union!8734 (ite c!464314 (regOne!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871111 (= e!1817173 e!1817167)))

(declare-fun b!2871112 () Bool)

(assert (=> b!2871112 (= e!1817167 e!1817172)))

(assert (=> b!2871112 (= lt!1017971 call!185398)))

(declare-fun c!464439 () Bool)

(assert (=> b!2871112 (= c!464439 (is-Some!6408 lt!1017971))))

(declare-fun b!2871113 () Bool)

(assert (=> b!2871113 (= e!1817168 lt!1017970)))

(declare-fun b!2871114 () Bool)

(assert (=> b!2871114 (= e!1817173 (Some!6408 Nil!34372))))

(declare-fun b!2871115 () Bool)

(assert (=> b!2871115 (= e!1817168 call!185399)))

(declare-fun b!2871116 () Bool)

(assert (=> b!2871116 (= e!1817166 None!6408)))

(assert (= (and d!829733 c!464441) b!2871109))

(assert (= (and d!829733 (not c!464441)) b!2871105))

(assert (= (and b!2871105 c!464440) b!2871107))

(assert (= (and b!2871105 (not c!464440)) b!2871110))

(assert (= (and b!2871110 c!464442) b!2871101))

(assert (= (and b!2871110 (not c!464442)) b!2871106))

(assert (= (and b!2871106 c!464443) b!2871114))

(assert (= (and b!2871106 (not c!464443)) b!2871111))

(assert (= (and b!2871111 c!464445) b!2871108))

(assert (= (and b!2871111 (not c!464445)) b!2871112))

(assert (= (and b!2871108 c!464446) b!2871113))

(assert (= (and b!2871108 (not c!464446)) b!2871115))

(assert (= (and b!2871112 c!464439) b!2871104))

(assert (= (and b!2871112 (not c!464439)) b!2871103))

(assert (= (and b!2871104 c!464444) b!2871102))

(assert (= (and b!2871104 (not c!464444)) b!2871116))

(assert (= (or b!2871115 b!2871104) bm!185394))

(assert (= (or b!2871108 b!2871112) bm!185393))

(declare-fun m!3289669 () Bool)

(assert (=> b!2871102 m!3289669))

(declare-fun m!3289671 () Bool)

(assert (=> bm!185393 m!3289671))

(declare-fun m!3289673 () Bool)

(assert (=> bm!185394 m!3289673))

(assert (=> bm!185336 d!829733))

(declare-fun bs!522074 () Bool)

(declare-fun d!829735 () Bool)

(assert (= bs!522074 (and d!829735 d!829551)))

(declare-fun lambda!107100 () Int)

(assert (=> bs!522074 (not (= lambda!107100 lambda!107083))))

(declare-fun bs!522075 () Bool)

(assert (= bs!522075 (and d!829735 d!829481)))

(assert (=> bs!522075 (= lambda!107100 lambda!107057)))

(declare-fun bs!522076 () Bool)

(assert (= bs!522076 (and d!829735 d!829583)))

(assert (=> bs!522076 (= lambda!107100 lambda!107085)))

(declare-fun bs!522077 () Bool)

(assert (= bs!522077 (and d!829735 d!829571)))

(assert (=> bs!522077 (not (= lambda!107100 lambda!107084))))

(declare-fun bs!522078 () Bool)

(assert (= bs!522078 (and d!829735 d!829485)))

(assert (=> bs!522078 (= lambda!107100 lambda!107060)))

(declare-fun bs!522079 () Bool)

(assert (= bs!522079 (and d!829735 d!829591)))

(assert (=> bs!522079 (= lambda!107100 lambda!107086)))

(declare-fun bs!522080 () Bool)

(assert (= bs!522080 (and d!829735 d!829509)))

(assert (=> bs!522080 (not (= lambda!107100 lambda!107070))))

(declare-fun bs!522081 () Bool)

(assert (= bs!522081 (and d!829735 d!829487)))

(assert (=> bs!522081 (not (= lambda!107100 lambda!107063))))

(declare-fun b!2871117 () Bool)

(declare-fun e!1817174 () Option!6409)

(assert (=> b!2871117 (= e!1817174 None!6408)))

(declare-fun b!2871118 () Bool)

(declare-fun e!1817176 () Option!6409)

(assert (=> b!2871118 (= e!1817176 e!1817174)))

(declare-fun lt!1017973 () Option!6409)

(assert (=> b!2871118 (= lt!1017973 (getLanguageWitness!419 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833))))))))))))

(declare-fun c!464447 () Bool)

(assert (=> b!2871118 (= c!464447 (is-Some!6408 lt!1017973))))

(declare-fun lt!1017972 () Option!6409)

(assert (=> d!829735 (= (isEmpty!18710 lt!1017972) (exists!1153 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833))))))) lambda!107100))))

(assert (=> d!829735 (= lt!1017972 e!1817176)))

(declare-fun c!464448 () Bool)

(assert (=> d!829735 (= c!464448 (is-Cons!34371 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))))

(assert (=> d!829735 (= (getLanguageWitness!420 (Context!5389 (t!233538 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833))))))) lt!1017972)))

(declare-fun b!2871119 () Bool)

(declare-fun c!464449 () Bool)

(declare-fun lt!1017974 () Option!6409)

(assert (=> b!2871119 (= c!464449 (is-Some!6408 lt!1017974))))

(assert (=> b!2871119 (= lt!1017974 (getLanguageWitness!420 (Context!5389 (t!233538 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))))))

(declare-fun e!1817175 () Option!6409)

(assert (=> b!2871119 (= e!1817174 e!1817175)))

(declare-fun b!2871120 () Bool)

(assert (=> b!2871120 (= e!1817176 (Some!6408 Nil!34372))))

(declare-fun b!2871121 () Bool)

(assert (=> b!2871121 (= e!1817175 (Some!6408 (++!8171 (v!34530 lt!1017973) (v!34530 lt!1017974))))))

(declare-fun b!2871122 () Bool)

(assert (=> b!2871122 (= e!1817175 None!6408)))

(assert (= (and d!829735 c!464448) b!2871118))

(assert (= (and d!829735 (not c!464448)) b!2871120))

(assert (= (and b!2871118 c!464447) b!2871119))

(assert (= (and b!2871118 (not c!464447)) b!2871117))

(assert (= (and b!2871119 c!464449) b!2871121))

(assert (= (and b!2871119 (not c!464449)) b!2871122))

(declare-fun m!3289675 () Bool)

(assert (=> b!2871118 m!3289675))

(declare-fun m!3289677 () Bool)

(assert (=> d!829735 m!3289677))

(declare-fun m!3289679 () Bool)

(assert (=> d!829735 m!3289679))

(declare-fun m!3289681 () Bool)

(assert (=> b!2871119 m!3289681))

(declare-fun m!3289683 () Bool)

(assert (=> b!2871121 m!3289683))

(assert (=> b!2870759 d!829735))

(declare-fun b!2871123 () Bool)

(declare-fun e!1817180 () Regex!8734)

(declare-fun call!185400 () Regex!8734)

(declare-fun call!185402 () Regex!8734)

(assert (=> b!2871123 (= e!1817180 (Union!8734 (Concat!14055 call!185400 (regTwo!17980 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) call!185402))))

(declare-fun d!829737 () Bool)

(declare-fun lt!1017975 () Regex!8734)

(assert (=> d!829737 (validRegex!3512 lt!1017975)))

(declare-fun e!1817177 () Regex!8734)

(assert (=> d!829737 (= lt!1017975 e!1817177)))

(declare-fun c!464451 () Bool)

(assert (=> d!829737 (= c!464451 (or (is-EmptyExpr!8734 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))) (is-EmptyLang!8734 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> d!829737 (validRegex!3512 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> d!829737 (= (derivativeStep!2317 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (head!6339 (get!10328 lt!1017835))) lt!1017975)))

(declare-fun b!2871124 () Bool)

(assert (=> b!2871124 (= e!1817177 EmptyLang!8734)))

(declare-fun b!2871125 () Bool)

(declare-fun c!464453 () Bool)

(assert (=> b!2871125 (= c!464453 (is-Union!8734 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun e!1817178 () Regex!8734)

(declare-fun e!1817181 () Regex!8734)

(assert (=> b!2871125 (= e!1817178 e!1817181)))

(declare-fun call!185403 () Regex!8734)

(declare-fun c!464452 () Bool)

(declare-fun bm!185395 () Bool)

(assert (=> bm!185395 (= call!185403 (derivativeStep!2317 (ite c!464453 (regOne!17981 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))) (ite c!464452 (reg!9063 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))) (regOne!17980 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))) (head!6339 (get!10328 lt!1017835))))))

(declare-fun e!1817179 () Regex!8734)

(declare-fun call!185401 () Regex!8734)

(declare-fun b!2871126 () Bool)

(assert (=> b!2871126 (= e!1817179 (Concat!14055 call!185401 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun bm!185396 () Bool)

(assert (=> bm!185396 (= call!185401 call!185403)))

(declare-fun c!464450 () Bool)

(declare-fun b!2871127 () Bool)

(assert (=> b!2871127 (= c!464450 (nullable!2684 (regOne!17980 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871127 (= e!1817179 e!1817180)))

(declare-fun b!2871128 () Bool)

(assert (=> b!2871128 (= e!1817181 e!1817179)))

(assert (=> b!2871128 (= c!464452 (is-Star!8734 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2871129 () Bool)

(assert (=> b!2871129 (= e!1817177 e!1817178)))

(declare-fun c!464454 () Bool)

(assert (=> b!2871129 (= c!464454 (is-ElementMatch!8734 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2871130 () Bool)

(assert (=> b!2871130 (= e!1817180 (Union!8734 (Concat!14055 call!185400 (regTwo!17980 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) EmptyLang!8734))))

(declare-fun b!2871131 () Bool)

(assert (=> b!2871131 (= e!1817181 (Union!8734 call!185403 call!185402))))

(declare-fun bm!185397 () Bool)

(assert (=> bm!185397 (= call!185400 call!185401)))

(declare-fun b!2871132 () Bool)

(assert (=> b!2871132 (= e!1817178 (ite (= (head!6339 (get!10328 lt!1017835)) (c!464165 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185398 () Bool)

(assert (=> bm!185398 (= call!185402 (derivativeStep!2317 (ite c!464453 (regTwo!17981 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))) (regTwo!17980 (ite c!464322 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464321 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) (head!6339 (get!10328 lt!1017835))))))

(assert (= (and d!829737 c!464451) b!2871124))

(assert (= (and d!829737 (not c!464451)) b!2871129))

(assert (= (and b!2871129 c!464454) b!2871132))

(assert (= (and b!2871129 (not c!464454)) b!2871125))

(assert (= (and b!2871125 c!464453) b!2871131))

(assert (= (and b!2871125 (not c!464453)) b!2871128))

(assert (= (and b!2871128 c!464452) b!2871126))

(assert (= (and b!2871128 (not c!464452)) b!2871127))

(assert (= (and b!2871127 c!464450) b!2871123))

(assert (= (and b!2871127 (not c!464450)) b!2871130))

(assert (= (or b!2871123 b!2871130) bm!185397))

(assert (= (or b!2871126 bm!185397) bm!185396))

(assert (= (or b!2871131 bm!185396) bm!185395))

(assert (= (or b!2871131 b!2871123) bm!185398))

(declare-fun m!3289685 () Bool)

(assert (=> d!829737 m!3289685))

(declare-fun m!3289687 () Bool)

(assert (=> d!829737 m!3289687))

(assert (=> bm!185395 m!3289167))

(declare-fun m!3289689 () Bool)

(assert (=> bm!185395 m!3289689))

(declare-fun m!3289691 () Bool)

(assert (=> b!2871127 m!3289691))

(assert (=> bm!185398 m!3289167))

(declare-fun m!3289693 () Bool)

(assert (=> bm!185398 m!3289693))

(assert (=> bm!185339 d!829737))

(assert (=> bm!185321 d!829541))

(assert (=> d!829557 d!829541))

(declare-fun b!2871133 () Bool)

(declare-fun e!1817182 () Bool)

(declare-fun e!1817185 () Bool)

(assert (=> b!2871133 (= e!1817182 e!1817185)))

(declare-fun res!1191234 () Bool)

(assert (=> b!2871133 (= res!1191234 (not (nullable!2684 (reg!9063 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))))

(assert (=> b!2871133 (=> (not res!1191234) (not e!1817185))))

(declare-fun b!2871134 () Bool)

(declare-fun e!1817184 () Bool)

(declare-fun call!185404 () Bool)

(assert (=> b!2871134 (= e!1817184 call!185404)))

(declare-fun bm!185399 () Bool)

(declare-fun c!464456 () Bool)

(declare-fun call!185406 () Bool)

(assert (=> bm!185399 (= call!185406 (validRegex!3512 (ite c!464456 (regTwo!17981 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) (regOne!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))))

(declare-fun d!829739 () Bool)

(declare-fun res!1191236 () Bool)

(declare-fun e!1817188 () Bool)

(assert (=> d!829739 (=> res!1191236 e!1817188)))

(assert (=> d!829739 (= res!1191236 (is-ElementMatch!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(assert (=> d!829739 (= (validRegex!3512 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) e!1817188)))

(declare-fun bm!185400 () Bool)

(declare-fun call!185405 () Bool)

(assert (=> bm!185400 (= call!185404 call!185405)))

(declare-fun c!464455 () Bool)

(declare-fun bm!185401 () Bool)

(assert (=> bm!185401 (= call!185405 (validRegex!3512 (ite c!464455 (reg!9063 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) (ite c!464456 (regOne!17981 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) (regTwo!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))))))))

(declare-fun b!2871135 () Bool)

(declare-fun res!1191233 () Bool)

(declare-fun e!1817187 () Bool)

(assert (=> b!2871135 (=> res!1191233 e!1817187)))

(assert (=> b!2871135 (= res!1191233 (not (is-Concat!14055 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))))))

(declare-fun e!1817183 () Bool)

(assert (=> b!2871135 (= e!1817183 e!1817187)))

(declare-fun b!2871136 () Bool)

(assert (=> b!2871136 (= e!1817182 e!1817183)))

(assert (=> b!2871136 (= c!464456 (is-Union!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun b!2871137 () Bool)

(assert (=> b!2871137 (= e!1817188 e!1817182)))

(assert (=> b!2871137 (= c!464455 (is-Star!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun b!2871138 () Bool)

(declare-fun res!1191237 () Bool)

(declare-fun e!1817186 () Bool)

(assert (=> b!2871138 (=> (not res!1191237) (not e!1817186))))

(assert (=> b!2871138 (= res!1191237 call!185404)))

(assert (=> b!2871138 (= e!1817183 e!1817186)))

(declare-fun b!2871139 () Bool)

(assert (=> b!2871139 (= e!1817187 e!1817184)))

(declare-fun res!1191235 () Bool)

(assert (=> b!2871139 (=> (not res!1191235) (not e!1817184))))

(assert (=> b!2871139 (= res!1191235 call!185406)))

(declare-fun b!2871140 () Bool)

(assert (=> b!2871140 (= e!1817185 call!185405)))

(declare-fun b!2871141 () Bool)

(assert (=> b!2871141 (= e!1817186 call!185406)))

(assert (= (and d!829739 (not res!1191236)) b!2871137))

(assert (= (and b!2871137 c!464455) b!2871133))

(assert (= (and b!2871137 (not c!464455)) b!2871136))

(assert (= (and b!2871133 res!1191234) b!2871140))

(assert (= (and b!2871136 c!464456) b!2871138))

(assert (= (and b!2871136 (not c!464456)) b!2871135))

(assert (= (and b!2871138 res!1191237) b!2871141))

(assert (= (and b!2871135 (not res!1191233)) b!2871139))

(assert (= (and b!2871139 res!1191235) b!2871134))

(assert (= (or b!2871141 b!2871139) bm!185399))

(assert (= (or b!2871138 b!2871134) bm!185400))

(assert (= (or b!2871140 bm!185400) bm!185401))

(declare-fun m!3289695 () Bool)

(assert (=> b!2871133 m!3289695))

(declare-fun m!3289697 () Bool)

(assert (=> bm!185399 m!3289697))

(declare-fun m!3289699 () Bool)

(assert (=> bm!185401 m!3289699))

(assert (=> d!829557 d!829739))

(assert (=> bs!522034 d!829547))

(declare-fun d!829741 () Bool)

(assert (=> d!829741 (= (isEmpty!18711 (tail!4564 (tail!4564 (v!34530 lt!1017835)))) (is-Nil!34372 (tail!4564 (tail!4564 (v!34530 lt!1017835)))))))

(assert (=> b!2870645 d!829741))

(declare-fun d!829743 () Bool)

(assert (=> d!829743 (= (tail!4564 (tail!4564 (v!34530 lt!1017835))) (t!233539 (tail!4564 (v!34530 lt!1017835))))))

(assert (=> b!2870645 d!829743))

(declare-fun d!829745 () Bool)

(declare-fun res!1191249 () Bool)

(declare-fun e!1817201 () Bool)

(assert (=> d!829745 (=> res!1191249 e!1817201)))

(assert (=> d!829745 (= res!1191249 (is-EmptyExpr!8734 (h!39791 (exprs!3194 c!7184))))))

(assert (=> d!829745 (= (nullableFct!814 (h!39791 (exprs!3194 c!7184))) e!1817201)))

(declare-fun bm!185406 () Bool)

(declare-fun call!185411 () Bool)

(declare-fun c!464459 () Bool)

(assert (=> bm!185406 (= call!185411 (nullable!2684 (ite c!464459 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2871156 () Bool)

(declare-fun e!1817203 () Bool)

(assert (=> b!2871156 (= e!1817201 e!1817203)))

(declare-fun res!1191251 () Bool)

(assert (=> b!2871156 (=> (not res!1191251) (not e!1817203))))

(assert (=> b!2871156 (= res!1191251 (and (not (is-EmptyLang!8734 (h!39791 (exprs!3194 c!7184)))) (not (is-ElementMatch!8734 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2871157 () Bool)

(declare-fun e!1817204 () Bool)

(declare-fun e!1817205 () Bool)

(assert (=> b!2871157 (= e!1817204 e!1817205)))

(assert (=> b!2871157 (= c!464459 (is-Union!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2871158 () Bool)

(assert (=> b!2871158 (= e!1817203 e!1817204)))

(declare-fun res!1191252 () Bool)

(assert (=> b!2871158 (=> res!1191252 e!1817204)))

(assert (=> b!2871158 (= res!1191252 (is-Star!8734 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2871159 () Bool)

(declare-fun e!1817206 () Bool)

(assert (=> b!2871159 (= e!1817205 e!1817206)))

(declare-fun res!1191248 () Bool)

(declare-fun call!185412 () Bool)

(assert (=> b!2871159 (= res!1191248 call!185412)))

(assert (=> b!2871159 (=> res!1191248 e!1817206)))

(declare-fun b!2871160 () Bool)

(declare-fun e!1817202 () Bool)

(assert (=> b!2871160 (= e!1817202 call!185411)))

(declare-fun b!2871161 () Bool)

(assert (=> b!2871161 (= e!1817205 e!1817202)))

(declare-fun res!1191250 () Bool)

(assert (=> b!2871161 (= res!1191250 call!185412)))

(assert (=> b!2871161 (=> (not res!1191250) (not e!1817202))))

(declare-fun b!2871162 () Bool)

(assert (=> b!2871162 (= e!1817206 call!185411)))

(declare-fun bm!185407 () Bool)

(assert (=> bm!185407 (= call!185412 (nullable!2684 (ite c!464459 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (= (and d!829745 (not res!1191249)) b!2871156))

(assert (= (and b!2871156 res!1191251) b!2871158))

(assert (= (and b!2871158 (not res!1191252)) b!2871157))

(assert (= (and b!2871157 c!464459) b!2871159))

(assert (= (and b!2871157 (not c!464459)) b!2871161))

(assert (= (and b!2871159 (not res!1191248)) b!2871162))

(assert (= (and b!2871161 res!1191250) b!2871160))

(assert (= (or b!2871159 b!2871161) bm!185407))

(assert (= (or b!2871162 b!2871160) bm!185406))

(declare-fun m!3289701 () Bool)

(assert (=> bm!185406 m!3289701))

(declare-fun m!3289703 () Bool)

(assert (=> bm!185407 m!3289703))

(assert (=> d!829587 d!829745))

(declare-fun d!829747 () Bool)

(assert (=> d!829747 (= (nullable!2684 (reg!9063 (h!39791 (exprs!3194 c!7184)))) (nullableFct!814 (reg!9063 (h!39791 (exprs!3194 c!7184)))))))

(declare-fun bs!522082 () Bool)

(assert (= bs!522082 d!829747))

(declare-fun m!3289705 () Bool)

(assert (=> bs!522082 m!3289705))

(assert (=> b!2870634 d!829747))

(declare-fun d!829749 () Bool)

(declare-fun c!464462 () Bool)

(assert (=> d!829749 (= c!464462 (is-Nil!34372 lt!1017910))))

(declare-fun e!1817209 () (Set C!17650))

(assert (=> d!829749 (= (content!4696 lt!1017910) e!1817209)))

(declare-fun b!2871167 () Bool)

(assert (=> b!2871167 (= e!1817209 (as set.empty (Set C!17650)))))

(declare-fun b!2871168 () Bool)

(assert (=> b!2871168 (= e!1817209 (set.union (set.insert (h!39792 lt!1017910) (as set.empty (Set C!17650))) (content!4696 (t!233539 lt!1017910))))))

(assert (= (and d!829749 c!464462) b!2871167))

(assert (= (and d!829749 (not c!464462)) b!2871168))

(declare-fun m!3289707 () Bool)

(assert (=> b!2871168 m!3289707))

(declare-fun m!3289709 () Bool)

(assert (=> b!2871168 m!3289709))

(assert (=> d!829527 d!829749))

(declare-fun d!829751 () Bool)

(declare-fun c!464463 () Bool)

(assert (=> d!829751 (= c!464463 (is-Nil!34372 (v!34530 lt!1017869)))))

(declare-fun e!1817210 () (Set C!17650))

(assert (=> d!829751 (= (content!4696 (v!34530 lt!1017869)) e!1817210)))

(declare-fun b!2871169 () Bool)

(assert (=> b!2871169 (= e!1817210 (as set.empty (Set C!17650)))))

(declare-fun b!2871170 () Bool)

(assert (=> b!2871170 (= e!1817210 (set.union (set.insert (h!39792 (v!34530 lt!1017869)) (as set.empty (Set C!17650))) (content!4696 (t!233539 (v!34530 lt!1017869)))))))

(assert (= (and d!829751 c!464463) b!2871169))

(assert (= (and d!829751 (not c!464463)) b!2871170))

(declare-fun m!3289711 () Bool)

(assert (=> b!2871170 m!3289711))

(assert (=> b!2871170 m!3289667))

(assert (=> d!829527 d!829751))

(declare-fun d!829753 () Bool)

(declare-fun c!464464 () Bool)

(assert (=> d!829753 (= c!464464 (is-Nil!34372 (v!34530 lt!1017867)))))

(declare-fun e!1817211 () (Set C!17650))

(assert (=> d!829753 (= (content!4696 (v!34530 lt!1017867)) e!1817211)))

(declare-fun b!2871171 () Bool)

(assert (=> b!2871171 (= e!1817211 (as set.empty (Set C!17650)))))

(declare-fun b!2871172 () Bool)

(assert (=> b!2871172 (= e!1817211 (set.union (set.insert (h!39792 (v!34530 lt!1017867)) (as set.empty (Set C!17650))) (content!4696 (t!233539 (v!34530 lt!1017867)))))))

(assert (= (and d!829753 c!464464) b!2871171))

(assert (= (and d!829753 (not c!464464)) b!2871172))

(declare-fun m!3289713 () Bool)

(assert (=> b!2871172 m!3289713))

(declare-fun m!3289715 () Bool)

(assert (=> b!2871172 m!3289715))

(assert (=> d!829527 d!829753))

(declare-fun d!829755 () Bool)

(declare-fun res!1191253 () Bool)

(declare-fun e!1817212 () Bool)

(assert (=> d!829755 (=> res!1191253 e!1817212)))

(assert (=> d!829755 (= res!1191253 (is-Nil!34371 (t!233538 (exprs!3194 c!7184))))))

(assert (=> d!829755 (= (forall!7079 (t!233538 (exprs!3194 c!7184)) lambda!107063) e!1817212)))

(declare-fun b!2871173 () Bool)

(declare-fun e!1817213 () Bool)

(assert (=> b!2871173 (= e!1817212 e!1817213)))

(declare-fun res!1191254 () Bool)

(assert (=> b!2871173 (=> (not res!1191254) (not e!1817213))))

(assert (=> b!2871173 (= res!1191254 (dynLambda!14307 lambda!107063 (h!39791 (t!233538 (exprs!3194 c!7184)))))))

(declare-fun b!2871174 () Bool)

(assert (=> b!2871174 (= e!1817213 (forall!7079 (t!233538 (t!233538 (exprs!3194 c!7184))) lambda!107063))))

(assert (= (and d!829755 (not res!1191253)) b!2871173))

(assert (= (and b!2871173 res!1191254) b!2871174))

(declare-fun b_lambda!86013 () Bool)

(assert (=> (not b_lambda!86013) (not b!2871173)))

(declare-fun m!3289717 () Bool)

(assert (=> b!2871173 m!3289717))

(declare-fun m!3289719 () Bool)

(assert (=> b!2871174 m!3289719))

(assert (=> b!2870694 d!829755))

(declare-fun d!829757 () Bool)

(assert (=> d!829757 (= (head!6339 (tail!4564 (v!34530 lt!1017835))) (h!39792 (tail!4564 (v!34530 lt!1017835))))))

(assert (=> b!2870650 d!829757))

(declare-fun d!829759 () Bool)

(assert (=> d!829759 (= (isEmpty!18711 (get!10328 (getLanguageWitness!420 lt!1017833))) (is-Nil!34372 (get!10328 (getLanguageWitness!420 lt!1017833))))))

(assert (=> d!829589 d!829759))

(declare-fun d!829761 () Bool)

(assert (=> d!829761 (= (nullable!2684 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) (nullableFct!814 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun bs!522083 () Bool)

(assert (= bs!522083 d!829761))

(assert (=> bs!522083 m!3289181))

(declare-fun m!3289721 () Bool)

(assert (=> bs!522083 m!3289721))

(assert (=> b!2870741 d!829761))

(declare-fun d!829763 () Bool)

(declare-fun res!1191255 () Bool)

(declare-fun e!1817214 () Bool)

(assert (=> d!829763 (=> res!1191255 e!1817214)))

(assert (=> d!829763 (= res!1191255 (is-Nil!34371 (t!233538 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))))

(assert (=> d!829763 (= (forall!7079 (t!233538 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371)))) lambda!107070) e!1817214)))

(declare-fun b!2871175 () Bool)

(declare-fun e!1817215 () Bool)

(assert (=> b!2871175 (= e!1817214 e!1817215)))

(declare-fun res!1191256 () Bool)

(assert (=> b!2871175 (=> (not res!1191256) (not e!1817215))))

(assert (=> b!2871175 (= res!1191256 (dynLambda!14307 lambda!107070 (h!39791 (t!233538 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371)))))))))

(declare-fun b!2871176 () Bool)

(assert (=> b!2871176 (= e!1817215 (forall!7079 (t!233538 (t!233538 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))) lambda!107070))))

(assert (= (and d!829763 (not res!1191255)) b!2871175))

(assert (= (and b!2871175 res!1191256) b!2871176))

(declare-fun b_lambda!86015 () Bool)

(assert (=> (not b_lambda!86015) (not b!2871175)))

(declare-fun m!3289723 () Bool)

(assert (=> b!2871175 m!3289723))

(declare-fun m!3289725 () Bool)

(assert (=> b!2871176 m!3289725))

(assert (=> b!2870712 d!829763))

(assert (=> d!829601 d!829599))

(assert (=> d!829601 d!829597))

(assert (=> d!829601 d!829483))

(declare-fun b!2871177 () Bool)

(declare-fun e!1817221 () Option!6409)

(assert (=> b!2871177 (= e!1817221 (Some!6408 (Cons!34372 (c!464165 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))) Nil!34372)))))

(declare-fun b!2871178 () Bool)

(declare-fun e!1817216 () Option!6409)

(declare-fun lt!1017978 () Option!6409)

(declare-fun lt!1017976 () Option!6409)

(assert (=> b!2871178 (= e!1817216 (Some!6408 (++!8171 (v!34530 lt!1017978) (v!34530 lt!1017976))))))

(declare-fun b!2871179 () Bool)

(declare-fun e!1817222 () Option!6409)

(assert (=> b!2871179 (= e!1817222 None!6408)))

(declare-fun b!2871180 () Bool)

(declare-fun c!464470 () Bool)

(assert (=> b!2871180 (= c!464470 (is-Some!6408 lt!1017976))))

(declare-fun call!185414 () Option!6409)

(assert (=> b!2871180 (= lt!1017976 call!185414)))

(assert (=> b!2871180 (= e!1817222 e!1817216)))

(declare-fun b!2871181 () Bool)

(declare-fun e!1817220 () Option!6409)

(declare-fun e!1817219 () Option!6409)

(assert (=> b!2871181 (= e!1817220 e!1817219)))

(declare-fun c!464466 () Bool)

(assert (=> b!2871181 (= c!464466 (is-EmptyLang!8734 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(declare-fun call!185413 () Option!6409)

(declare-fun bm!185408 () Bool)

(declare-fun c!464471 () Bool)

(assert (=> bm!185408 (= call!185413 (getLanguageWitness!419 (ite c!464471 (regOne!17981 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))) (regOne!17980 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))))))))

(declare-fun b!2871182 () Bool)

(declare-fun e!1817223 () Option!6409)

(assert (=> b!2871182 (= e!1817221 e!1817223)))

(declare-fun c!464469 () Bool)

(assert (=> b!2871182 (= c!464469 (is-Star!8734 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(declare-fun b!2871183 () Bool)

(assert (=> b!2871183 (= e!1817219 None!6408)))

(declare-fun b!2871184 () Bool)

(declare-fun e!1817217 () Option!6409)

(declare-fun e!1817218 () Option!6409)

(assert (=> b!2871184 (= e!1817217 e!1817218)))

(declare-fun lt!1017977 () Option!6409)

(assert (=> b!2871184 (= lt!1017977 call!185413)))

(declare-fun c!464472 () Bool)

(assert (=> b!2871184 (= c!464472 (is-Some!6408 lt!1017977))))

(declare-fun b!2871185 () Bool)

(assert (=> b!2871185 (= e!1817220 (Some!6408 Nil!34372))))

(declare-fun bm!185409 () Bool)

(assert (=> bm!185409 (= call!185414 (getLanguageWitness!419 (ite c!464471 (regTwo!17981 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))) (regTwo!17980 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))))))))

(declare-fun d!829765 () Bool)

(declare-fun c!464467 () Bool)

(assert (=> d!829765 (= c!464467 (is-EmptyExpr!8734 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(assert (=> d!829765 (= (getLanguageWitness!419 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))) e!1817220)))

(declare-fun b!2871186 () Bool)

(declare-fun c!464468 () Bool)

(assert (=> b!2871186 (= c!464468 (is-ElementMatch!8734 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(assert (=> b!2871186 (= e!1817219 e!1817221)))

(declare-fun b!2871187 () Bool)

(assert (=> b!2871187 (= c!464471 (is-Union!8734 (ite c!464333 (regTwo!17981 (h!39791 (exprs!3194 lt!1017833))) (regTwo!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(assert (=> b!2871187 (= e!1817223 e!1817217)))

(declare-fun b!2871188 () Bool)

(assert (=> b!2871188 (= e!1817217 e!1817222)))

(assert (=> b!2871188 (= lt!1017978 call!185413)))

(declare-fun c!464465 () Bool)

(assert (=> b!2871188 (= c!464465 (is-Some!6408 lt!1017978))))

(declare-fun b!2871189 () Bool)

(assert (=> b!2871189 (= e!1817218 lt!1017977)))

(declare-fun b!2871190 () Bool)

(assert (=> b!2871190 (= e!1817223 (Some!6408 Nil!34372))))

(declare-fun b!2871191 () Bool)

(assert (=> b!2871191 (= e!1817218 call!185414)))

(declare-fun b!2871192 () Bool)

(assert (=> b!2871192 (= e!1817216 None!6408)))

(assert (= (and d!829765 c!464467) b!2871185))

(assert (= (and d!829765 (not c!464467)) b!2871181))

(assert (= (and b!2871181 c!464466) b!2871183))

(assert (= (and b!2871181 (not c!464466)) b!2871186))

(assert (= (and b!2871186 c!464468) b!2871177))

(assert (= (and b!2871186 (not c!464468)) b!2871182))

(assert (= (and b!2871182 c!464469) b!2871190))

(assert (= (and b!2871182 (not c!464469)) b!2871187))

(assert (= (and b!2871187 c!464471) b!2871184))

(assert (= (and b!2871187 (not c!464471)) b!2871188))

(assert (= (and b!2871184 c!464472) b!2871189))

(assert (= (and b!2871184 (not c!464472)) b!2871191))

(assert (= (and b!2871188 c!464465) b!2871180))

(assert (= (and b!2871188 (not c!464465)) b!2871179))

(assert (= (and b!2871180 c!464470) b!2871178))

(assert (= (and b!2871180 (not c!464470)) b!2871192))

(assert (= (or b!2871191 b!2871180) bm!185409))

(assert (= (or b!2871184 b!2871188) bm!185408))

(declare-fun m!3289727 () Bool)

(assert (=> b!2871178 m!3289727))

(declare-fun m!3289729 () Bool)

(assert (=> bm!185408 m!3289729))

(declare-fun m!3289731 () Bool)

(assert (=> bm!185409 m!3289731))

(assert (=> bm!185344 d!829765))

(declare-fun b!2871193 () Bool)

(declare-fun e!1817224 () Bool)

(declare-fun e!1817227 () Bool)

(assert (=> b!2871193 (= e!1817224 e!1817227)))

(declare-fun res!1191258 () Bool)

(assert (=> b!2871193 (= res!1191258 (not (nullable!2684 (reg!9063 lt!1017923))))))

(assert (=> b!2871193 (=> (not res!1191258) (not e!1817227))))

(declare-fun b!2871194 () Bool)

(declare-fun e!1817226 () Bool)

(declare-fun call!185415 () Bool)

(assert (=> b!2871194 (= e!1817226 call!185415)))

(declare-fun bm!185410 () Bool)

(declare-fun call!185417 () Bool)

(declare-fun c!464474 () Bool)

(assert (=> bm!185410 (= call!185417 (validRegex!3512 (ite c!464474 (regTwo!17981 lt!1017923) (regOne!17980 lt!1017923))))))

(declare-fun d!829767 () Bool)

(declare-fun res!1191260 () Bool)

(declare-fun e!1817230 () Bool)

(assert (=> d!829767 (=> res!1191260 e!1817230)))

(assert (=> d!829767 (= res!1191260 (is-ElementMatch!8734 lt!1017923))))

(assert (=> d!829767 (= (validRegex!3512 lt!1017923) e!1817230)))

(declare-fun bm!185411 () Bool)

(declare-fun call!185416 () Bool)

(assert (=> bm!185411 (= call!185415 call!185416)))

(declare-fun bm!185412 () Bool)

(declare-fun c!464473 () Bool)

(assert (=> bm!185412 (= call!185416 (validRegex!3512 (ite c!464473 (reg!9063 lt!1017923) (ite c!464474 (regOne!17981 lt!1017923) (regTwo!17980 lt!1017923)))))))

(declare-fun b!2871195 () Bool)

(declare-fun res!1191257 () Bool)

(declare-fun e!1817229 () Bool)

(assert (=> b!2871195 (=> res!1191257 e!1817229)))

(assert (=> b!2871195 (= res!1191257 (not (is-Concat!14055 lt!1017923)))))

(declare-fun e!1817225 () Bool)

(assert (=> b!2871195 (= e!1817225 e!1817229)))

(declare-fun b!2871196 () Bool)

(assert (=> b!2871196 (= e!1817224 e!1817225)))

(assert (=> b!2871196 (= c!464474 (is-Union!8734 lt!1017923))))

(declare-fun b!2871197 () Bool)

(assert (=> b!2871197 (= e!1817230 e!1817224)))

(assert (=> b!2871197 (= c!464473 (is-Star!8734 lt!1017923))))

(declare-fun b!2871198 () Bool)

(declare-fun res!1191261 () Bool)

(declare-fun e!1817228 () Bool)

(assert (=> b!2871198 (=> (not res!1191261) (not e!1817228))))

(assert (=> b!2871198 (= res!1191261 call!185415)))

(assert (=> b!2871198 (= e!1817225 e!1817228)))

(declare-fun b!2871199 () Bool)

(assert (=> b!2871199 (= e!1817229 e!1817226)))

(declare-fun res!1191259 () Bool)

(assert (=> b!2871199 (=> (not res!1191259) (not e!1817226))))

(assert (=> b!2871199 (= res!1191259 call!185417)))

(declare-fun b!2871200 () Bool)

(assert (=> b!2871200 (= e!1817227 call!185416)))

(declare-fun b!2871201 () Bool)

(assert (=> b!2871201 (= e!1817228 call!185417)))

(assert (= (and d!829767 (not res!1191260)) b!2871197))

(assert (= (and b!2871197 c!464473) b!2871193))

(assert (= (and b!2871197 (not c!464473)) b!2871196))

(assert (= (and b!2871193 res!1191258) b!2871200))

(assert (= (and b!2871196 c!464474) b!2871198))

(assert (= (and b!2871196 (not c!464474)) b!2871195))

(assert (= (and b!2871198 res!1191261) b!2871201))

(assert (= (and b!2871195 (not res!1191257)) b!2871199))

(assert (= (and b!2871199 res!1191259) b!2871194))

(assert (= (or b!2871201 b!2871199) bm!185410))

(assert (= (or b!2871198 b!2871194) bm!185411))

(assert (= (or b!2871200 bm!185411) bm!185412))

(declare-fun m!3289733 () Bool)

(assert (=> b!2871193 m!3289733))

(declare-fun m!3289735 () Bool)

(assert (=> bm!185410 m!3289735))

(declare-fun m!3289737 () Bool)

(assert (=> bm!185412 m!3289737))

(assert (=> d!829581 d!829767))

(assert (=> d!829581 d!829547))

(declare-fun d!829769 () Bool)

(declare-fun c!464475 () Bool)

(assert (=> d!829769 (= c!464475 (is-Nil!34372 lt!1017918))))

(declare-fun e!1817231 () (Set C!17650))

(assert (=> d!829769 (= (content!4696 lt!1017918) e!1817231)))

(declare-fun b!2871202 () Bool)

(assert (=> b!2871202 (= e!1817231 (as set.empty (Set C!17650)))))

(declare-fun b!2871203 () Bool)

(assert (=> b!2871203 (= e!1817231 (set.union (set.insert (h!39792 lt!1017918) (as set.empty (Set C!17650))) (content!4696 (t!233539 lt!1017918))))))

(assert (= (and d!829769 c!464475) b!2871202))

(assert (= (and d!829769 (not c!464475)) b!2871203))

(declare-fun m!3289739 () Bool)

(assert (=> b!2871203 m!3289739))

(declare-fun m!3289741 () Bool)

(assert (=> b!2871203 m!3289741))

(assert (=> d!829575 d!829769))

(declare-fun d!829771 () Bool)

(declare-fun c!464476 () Bool)

(assert (=> d!829771 (= c!464476 (is-Nil!34372 (v!34530 lt!1017859)))))

(declare-fun e!1817232 () (Set C!17650))

(assert (=> d!829771 (= (content!4696 (v!34530 lt!1017859)) e!1817232)))

(declare-fun b!2871204 () Bool)

(assert (=> b!2871204 (= e!1817232 (as set.empty (Set C!17650)))))

(declare-fun b!2871205 () Bool)

(assert (=> b!2871205 (= e!1817232 (set.union (set.insert (h!39792 (v!34530 lt!1017859)) (as set.empty (Set C!17650))) (content!4696 (t!233539 (v!34530 lt!1017859)))))))

(assert (= (and d!829771 c!464476) b!2871204))

(assert (= (and d!829771 (not c!464476)) b!2871205))

(declare-fun m!3289743 () Bool)

(assert (=> b!2871205 m!3289743))

(declare-fun m!3289745 () Bool)

(assert (=> b!2871205 m!3289745))

(assert (=> d!829575 d!829771))

(declare-fun d!829773 () Bool)

(declare-fun c!464477 () Bool)

(assert (=> d!829773 (= c!464477 (is-Nil!34372 (v!34530 lt!1017860)))))

(declare-fun e!1817233 () (Set C!17650))

(assert (=> d!829773 (= (content!4696 (v!34530 lt!1017860)) e!1817233)))

(declare-fun b!2871206 () Bool)

(assert (=> b!2871206 (= e!1817233 (as set.empty (Set C!17650)))))

(declare-fun b!2871207 () Bool)

(assert (=> b!2871207 (= e!1817233 (set.union (set.insert (h!39792 (v!34530 lt!1017860)) (as set.empty (Set C!17650))) (content!4696 (t!233539 (v!34530 lt!1017860)))))))

(assert (= (and d!829773 c!464477) b!2871206))

(assert (= (and d!829773 (not c!464477)) b!2871207))

(declare-fun m!3289747 () Bool)

(assert (=> b!2871207 m!3289747))

(declare-fun m!3289749 () Bool)

(assert (=> b!2871207 m!3289749))

(assert (=> d!829575 d!829773))

(declare-fun call!185418 () Regex!8734)

(declare-fun b!2871208 () Bool)

(declare-fun e!1817237 () Regex!8734)

(declare-fun call!185420 () Regex!8734)

(assert (=> b!2871208 (= e!1817237 (Union!8734 (Concat!14055 call!185418 (regTwo!17980 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) call!185420))))

(declare-fun d!829775 () Bool)

(declare-fun lt!1017979 () Regex!8734)

(assert (=> d!829775 (validRegex!3512 lt!1017979)))

(declare-fun e!1817234 () Regex!8734)

(assert (=> d!829775 (= lt!1017979 e!1817234)))

(declare-fun c!464479 () Bool)

(assert (=> d!829775 (= c!464479 (or (is-EmptyExpr!8734 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))) (is-EmptyLang!8734 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> d!829775 (validRegex!3512 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> d!829775 (= (derivativeStep!2317 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (head!6339 (v!34530 lt!1017835))) lt!1017979)))

(declare-fun b!2871209 () Bool)

(assert (=> b!2871209 (= e!1817234 EmptyLang!8734)))

(declare-fun b!2871210 () Bool)

(declare-fun c!464481 () Bool)

(assert (=> b!2871210 (= c!464481 (is-Union!8734 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun e!1817235 () Regex!8734)

(declare-fun e!1817238 () Regex!8734)

(assert (=> b!2871210 (= e!1817235 e!1817238)))

(declare-fun call!185421 () Regex!8734)

(declare-fun c!464480 () Bool)

(declare-fun bm!185413 () Bool)

(assert (=> bm!185413 (= call!185421 (derivativeStep!2317 (ite c!464481 (regOne!17981 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))) (ite c!464480 (reg!9063 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))) (regOne!17980 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))) (head!6339 (v!34530 lt!1017835))))))

(declare-fun b!2871211 () Bool)

(declare-fun e!1817236 () Regex!8734)

(declare-fun call!185419 () Regex!8734)

(assert (=> b!2871211 (= e!1817236 (Concat!14055 call!185419 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun bm!185414 () Bool)

(assert (=> bm!185414 (= call!185419 call!185421)))

(declare-fun c!464478 () Bool)

(declare-fun b!2871212 () Bool)

(assert (=> b!2871212 (= c!464478 (nullable!2684 (regOne!17980 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871212 (= e!1817236 e!1817237)))

(declare-fun b!2871213 () Bool)

(assert (=> b!2871213 (= e!1817238 e!1817236)))

(assert (=> b!2871213 (= c!464480 (is-Star!8734 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2871214 () Bool)

(assert (=> b!2871214 (= e!1817234 e!1817235)))

(declare-fun c!464482 () Bool)

(assert (=> b!2871214 (= c!464482 (is-ElementMatch!8734 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2871215 () Bool)

(assert (=> b!2871215 (= e!1817237 (Union!8734 (Concat!14055 call!185418 (regTwo!17980 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) EmptyLang!8734))))

(declare-fun b!2871216 () Bool)

(assert (=> b!2871216 (= e!1817238 (Union!8734 call!185421 call!185420))))

(declare-fun bm!185415 () Bool)

(assert (=> bm!185415 (= call!185418 call!185419)))

(declare-fun b!2871217 () Bool)

(assert (=> b!2871217 (= e!1817235 (ite (= (head!6339 (v!34530 lt!1017835)) (c!464165 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185416 () Bool)

(assert (=> bm!185416 (= call!185420 (derivativeStep!2317 (ite c!464481 (regTwo!17981 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))) (regTwo!17980 (ite c!464297 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (ite c!464296 (reg!9063 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) (head!6339 (v!34530 lt!1017835))))))

(assert (= (and d!829775 c!464479) b!2871209))

(assert (= (and d!829775 (not c!464479)) b!2871214))

(assert (= (and b!2871214 c!464482) b!2871217))

(assert (= (and b!2871214 (not c!464482)) b!2871210))

(assert (= (and b!2871210 c!464481) b!2871216))

(assert (= (and b!2871210 (not c!464481)) b!2871213))

(assert (= (and b!2871213 c!464480) b!2871211))

(assert (= (and b!2871213 (not c!464480)) b!2871212))

(assert (= (and b!2871212 c!464478) b!2871208))

(assert (= (and b!2871212 (not c!464478)) b!2871215))

(assert (= (or b!2871208 b!2871215) bm!185415))

(assert (= (or b!2871211 bm!185415) bm!185414))

(assert (= (or b!2871216 bm!185414) bm!185413))

(assert (= (or b!2871216 b!2871208) bm!185416))

(declare-fun m!3289751 () Bool)

(assert (=> d!829775 m!3289751))

(declare-fun m!3289753 () Bool)

(assert (=> d!829775 m!3289753))

(assert (=> bm!185413 m!3289109))

(declare-fun m!3289755 () Bool)

(assert (=> bm!185413 m!3289755))

(declare-fun m!3289757 () Bool)

(assert (=> b!2871212 m!3289757))

(assert (=> bm!185416 m!3289109))

(declare-fun m!3289759 () Bool)

(assert (=> bm!185416 m!3289759))

(assert (=> bm!185330 d!829775))

(declare-fun e!1817244 () Option!6409)

(declare-fun b!2871218 () Bool)

(assert (=> b!2871218 (= e!1817244 (Some!6408 (Cons!34372 (c!464165 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) Nil!34372)))))

(declare-fun b!2871219 () Bool)

(declare-fun e!1817239 () Option!6409)

(declare-fun lt!1017982 () Option!6409)

(declare-fun lt!1017980 () Option!6409)

(assert (=> b!2871219 (= e!1817239 (Some!6408 (++!8171 (v!34530 lt!1017982) (v!34530 lt!1017980))))))

(declare-fun b!2871220 () Bool)

(declare-fun e!1817245 () Option!6409)

(assert (=> b!2871220 (= e!1817245 None!6408)))

(declare-fun b!2871221 () Bool)

(declare-fun c!464488 () Bool)

(assert (=> b!2871221 (= c!464488 (is-Some!6408 lt!1017980))))

(declare-fun call!185423 () Option!6409)

(assert (=> b!2871221 (= lt!1017980 call!185423)))

(assert (=> b!2871221 (= e!1817245 e!1817239)))

(declare-fun b!2871222 () Bool)

(declare-fun e!1817243 () Option!6409)

(declare-fun e!1817242 () Option!6409)

(assert (=> b!2871222 (= e!1817243 e!1817242)))

(declare-fun c!464484 () Bool)

(assert (=> b!2871222 (= c!464484 (is-EmptyLang!8734 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun bm!185417 () Bool)

(declare-fun call!185422 () Option!6409)

(declare-fun c!464489 () Bool)

(assert (=> bm!185417 (= call!185422 (getLanguageWitness!419 (ite c!464489 (regOne!17981 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) (regOne!17980 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun b!2871223 () Bool)

(declare-fun e!1817246 () Option!6409)

(assert (=> b!2871223 (= e!1817244 e!1817246)))

(declare-fun c!464487 () Bool)

(assert (=> b!2871223 (= c!464487 (is-Star!8734 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2871224 () Bool)

(assert (=> b!2871224 (= e!1817242 None!6408)))

(declare-fun b!2871225 () Bool)

(declare-fun e!1817240 () Option!6409)

(declare-fun e!1817241 () Option!6409)

(assert (=> b!2871225 (= e!1817240 e!1817241)))

(declare-fun lt!1017981 () Option!6409)

(assert (=> b!2871225 (= lt!1017981 call!185422)))

(declare-fun c!464490 () Bool)

(assert (=> b!2871225 (= c!464490 (is-Some!6408 lt!1017981))))

(declare-fun b!2871226 () Bool)

(assert (=> b!2871226 (= e!1817243 (Some!6408 Nil!34372))))

(declare-fun bm!185418 () Bool)

(assert (=> bm!185418 (= call!185423 (getLanguageWitness!419 (ite c!464489 (regTwo!17981 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) (regTwo!17980 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun c!464485 () Bool)

(declare-fun d!829777 () Bool)

(assert (=> d!829777 (= c!464485 (is-EmptyExpr!8734 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> d!829777 (= (getLanguageWitness!419 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) e!1817243)))

(declare-fun c!464486 () Bool)

(declare-fun b!2871227 () Bool)

(assert (=> b!2871227 (= c!464486 (is-ElementMatch!8734 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871227 (= e!1817242 e!1817244)))

(declare-fun b!2871228 () Bool)

(assert (=> b!2871228 (= c!464489 (is-Union!8734 (ite c!464305 (regTwo!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871228 (= e!1817246 e!1817240)))

(declare-fun b!2871229 () Bool)

(assert (=> b!2871229 (= e!1817240 e!1817245)))

(assert (=> b!2871229 (= lt!1017982 call!185422)))

(declare-fun c!464483 () Bool)

(assert (=> b!2871229 (= c!464483 (is-Some!6408 lt!1017982))))

(declare-fun b!2871230 () Bool)

(assert (=> b!2871230 (= e!1817241 lt!1017981)))

(declare-fun b!2871231 () Bool)

(assert (=> b!2871231 (= e!1817246 (Some!6408 Nil!34372))))

(declare-fun b!2871232 () Bool)

(assert (=> b!2871232 (= e!1817241 call!185423)))

(declare-fun b!2871233 () Bool)

(assert (=> b!2871233 (= e!1817239 None!6408)))

(assert (= (and d!829777 c!464485) b!2871226))

(assert (= (and d!829777 (not c!464485)) b!2871222))

(assert (= (and b!2871222 c!464484) b!2871224))

(assert (= (and b!2871222 (not c!464484)) b!2871227))

(assert (= (and b!2871227 c!464486) b!2871218))

(assert (= (and b!2871227 (not c!464486)) b!2871223))

(assert (= (and b!2871223 c!464487) b!2871231))

(assert (= (and b!2871223 (not c!464487)) b!2871228))

(assert (= (and b!2871228 c!464489) b!2871225))

(assert (= (and b!2871228 (not c!464489)) b!2871229))

(assert (= (and b!2871225 c!464490) b!2871230))

(assert (= (and b!2871225 (not c!464490)) b!2871232))

(assert (= (and b!2871229 c!464483) b!2871221))

(assert (= (and b!2871229 (not c!464483)) b!2871220))

(assert (= (and b!2871221 c!464488) b!2871219))

(assert (= (and b!2871221 (not c!464488)) b!2871233))

(assert (= (or b!2871232 b!2871221) bm!185418))

(assert (= (or b!2871225 b!2871229) bm!185417))

(declare-fun m!3289761 () Bool)

(assert (=> b!2871219 m!3289761))

(declare-fun m!3289763 () Bool)

(assert (=> bm!185417 m!3289763))

(declare-fun m!3289765 () Bool)

(assert (=> bm!185418 m!3289765))

(assert (=> bm!185335 d!829777))

(assert (=> b!2870789 d!829587))

(declare-fun d!829779 () Bool)

(declare-fun res!1191262 () Bool)

(declare-fun e!1817247 () Bool)

(assert (=> d!829779 (=> res!1191262 e!1817247)))

(assert (=> d!829779 (= res!1191262 (is-Nil!34371 (exprs!3194 c!7184)))))

(assert (=> d!829779 (= (forall!7079 (exprs!3194 c!7184) lambda!107084) e!1817247)))

(declare-fun b!2871234 () Bool)

(declare-fun e!1817248 () Bool)

(assert (=> b!2871234 (= e!1817247 e!1817248)))

(declare-fun res!1191263 () Bool)

(assert (=> b!2871234 (=> (not res!1191263) (not e!1817248))))

(assert (=> b!2871234 (= res!1191263 (dynLambda!14307 lambda!107084 (h!39791 (exprs!3194 c!7184))))))

(declare-fun b!2871235 () Bool)

(assert (=> b!2871235 (= e!1817248 (forall!7079 (t!233538 (exprs!3194 c!7184)) lambda!107084))))

(assert (= (and d!829779 (not res!1191262)) b!2871234))

(assert (= (and b!2871234 res!1191263) b!2871235))

(declare-fun b_lambda!86017 () Bool)

(assert (=> (not b_lambda!86017) (not b!2871234)))

(declare-fun m!3289767 () Bool)

(assert (=> b!2871234 m!3289767))

(declare-fun m!3289769 () Bool)

(assert (=> b!2871235 m!3289769))

(assert (=> d!829571 d!829779))

(declare-fun b!2871238 () Bool)

(declare-fun res!1191265 () Bool)

(declare-fun e!1817249 () Bool)

(assert (=> b!2871238 (=> (not res!1191265) (not e!1817249))))

(declare-fun lt!1017983 () List!34496)

(assert (=> b!2871238 (= res!1191265 (= (size!26319 lt!1017983) (+ (size!26319 (t!233539 (v!34530 lt!1017859))) (size!26319 (v!34530 lt!1017860)))))))

(declare-fun b!2871239 () Bool)

(assert (=> b!2871239 (= e!1817249 (or (not (= (v!34530 lt!1017860) Nil!34372)) (= lt!1017983 (t!233539 (v!34530 lt!1017859)))))))

(declare-fun b!2871236 () Bool)

(declare-fun e!1817250 () List!34496)

(assert (=> b!2871236 (= e!1817250 (v!34530 lt!1017860))))

(declare-fun b!2871237 () Bool)

(assert (=> b!2871237 (= e!1817250 (Cons!34372 (h!39792 (t!233539 (v!34530 lt!1017859))) (++!8171 (t!233539 (t!233539 (v!34530 lt!1017859))) (v!34530 lt!1017860))))))

(declare-fun d!829781 () Bool)

(assert (=> d!829781 e!1817249))

(declare-fun res!1191264 () Bool)

(assert (=> d!829781 (=> (not res!1191264) (not e!1817249))))

(assert (=> d!829781 (= res!1191264 (= (content!4696 lt!1017983) (set.union (content!4696 (t!233539 (v!34530 lt!1017859))) (content!4696 (v!34530 lt!1017860)))))))

(assert (=> d!829781 (= lt!1017983 e!1817250)))

(declare-fun c!464491 () Bool)

(assert (=> d!829781 (= c!464491 (is-Nil!34372 (t!233539 (v!34530 lt!1017859))))))

(assert (=> d!829781 (= (++!8171 (t!233539 (v!34530 lt!1017859)) (v!34530 lt!1017860)) lt!1017983)))

(assert (= (and d!829781 c!464491) b!2871236))

(assert (= (and d!829781 (not c!464491)) b!2871237))

(assert (= (and d!829781 res!1191264) b!2871238))

(assert (= (and b!2871238 res!1191265) b!2871239))

(declare-fun m!3289771 () Bool)

(assert (=> b!2871238 m!3289771))

(assert (=> b!2871238 m!3289605))

(assert (=> b!2871238 m!3289319))

(declare-fun m!3289773 () Bool)

(assert (=> b!2871237 m!3289773))

(declare-fun m!3289775 () Bool)

(assert (=> d!829781 m!3289775))

(assert (=> d!829781 m!3289745))

(assert (=> d!829781 m!3289327))

(assert (=> b!2870714 d!829781))

(declare-fun b!2871240 () Bool)

(declare-fun res!1191266 () Bool)

(declare-fun e!1817251 () Bool)

(assert (=> b!2871240 (=> res!1191266 e!1817251)))

(assert (=> b!2871240 (= res!1191266 (not (isEmpty!18711 (tail!4564 (tail!4564 (tail!4564 (v!34530 lt!1017835)))))))))

(declare-fun b!2871241 () Bool)

(declare-fun e!1817256 () Bool)

(assert (=> b!2871241 (= e!1817256 (= (head!6339 (tail!4564 (tail!4564 (v!34530 lt!1017835)))) (c!464165 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835)))))))))

(declare-fun d!829783 () Bool)

(declare-fun e!1817255 () Bool)

(assert (=> d!829783 e!1817255))

(declare-fun c!464493 () Bool)

(assert (=> d!829783 (= c!464493 (is-EmptyExpr!8734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835))))))))

(declare-fun lt!1017984 () Bool)

(declare-fun e!1817254 () Bool)

(assert (=> d!829783 (= lt!1017984 e!1817254)))

(declare-fun c!464492 () Bool)

(assert (=> d!829783 (= c!464492 (isEmpty!18711 (tail!4564 (tail!4564 (v!34530 lt!1017835)))))))

(assert (=> d!829783 (validRegex!3512 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835)))))))

(assert (=> d!829783 (= (matchR!3734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835)))) (tail!4564 (tail!4564 (v!34530 lt!1017835)))) lt!1017984)))

(declare-fun bm!185419 () Bool)

(declare-fun call!185424 () Bool)

(assert (=> bm!185419 (= call!185424 (isEmpty!18711 (tail!4564 (tail!4564 (v!34530 lt!1017835)))))))

(declare-fun b!2871242 () Bool)

(declare-fun e!1817252 () Bool)

(assert (=> b!2871242 (= e!1817255 e!1817252)))

(declare-fun c!464494 () Bool)

(assert (=> b!2871242 (= c!464494 (is-EmptyLang!8734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835))))))))

(declare-fun b!2871243 () Bool)

(declare-fun e!1817257 () Bool)

(declare-fun e!1817253 () Bool)

(assert (=> b!2871243 (= e!1817257 e!1817253)))

(declare-fun res!1191273 () Bool)

(assert (=> b!2871243 (=> (not res!1191273) (not e!1817253))))

(assert (=> b!2871243 (= res!1191273 (not lt!1017984))))

(declare-fun b!2871244 () Bool)

(declare-fun res!1191271 () Bool)

(assert (=> b!2871244 (=> res!1191271 e!1817257)))

(assert (=> b!2871244 (= res!1191271 e!1817256)))

(declare-fun res!1191272 () Bool)

(assert (=> b!2871244 (=> (not res!1191272) (not e!1817256))))

(assert (=> b!2871244 (= res!1191272 lt!1017984)))

(declare-fun b!2871245 () Bool)

(assert (=> b!2871245 (= e!1817251 (not (= (head!6339 (tail!4564 (tail!4564 (v!34530 lt!1017835)))) (c!464165 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835))))))))))

(declare-fun b!2871246 () Bool)

(assert (=> b!2871246 (= e!1817252 (not lt!1017984))))

(declare-fun b!2871247 () Bool)

(assert (=> b!2871247 (= e!1817253 e!1817251)))

(declare-fun res!1191268 () Bool)

(assert (=> b!2871247 (=> res!1191268 e!1817251)))

(assert (=> b!2871247 (= res!1191268 call!185424)))

(declare-fun b!2871248 () Bool)

(assert (=> b!2871248 (= e!1817254 (nullable!2684 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835))))))))

(declare-fun b!2871249 () Bool)

(declare-fun res!1191269 () Bool)

(assert (=> b!2871249 (=> (not res!1191269) (not e!1817256))))

(assert (=> b!2871249 (= res!1191269 (not call!185424))))

(declare-fun b!2871250 () Bool)

(assert (=> b!2871250 (= e!1817255 (= lt!1017984 call!185424))))

(declare-fun b!2871251 () Bool)

(assert (=> b!2871251 (= e!1817254 (matchR!3734 (derivativeStep!2317 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835)))) (head!6339 (tail!4564 (tail!4564 (v!34530 lt!1017835))))) (tail!4564 (tail!4564 (tail!4564 (v!34530 lt!1017835))))))))

(declare-fun b!2871252 () Bool)

(declare-fun res!1191270 () Bool)

(assert (=> b!2871252 (=> res!1191270 e!1817257)))

(assert (=> b!2871252 (= res!1191270 (not (is-ElementMatch!8734 (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835)))))))))

(assert (=> b!2871252 (= e!1817252 e!1817257)))

(declare-fun b!2871253 () Bool)

(declare-fun res!1191267 () Bool)

(assert (=> b!2871253 (=> (not res!1191267) (not e!1817256))))

(assert (=> b!2871253 (= res!1191267 (isEmpty!18711 (tail!4564 (tail!4564 (tail!4564 (v!34530 lt!1017835))))))))

(assert (= (and d!829783 c!464492) b!2871248))

(assert (= (and d!829783 (not c!464492)) b!2871251))

(assert (= (and d!829783 c!464493) b!2871250))

(assert (= (and d!829783 (not c!464493)) b!2871242))

(assert (= (and b!2871242 c!464494) b!2871246))

(assert (= (and b!2871242 (not c!464494)) b!2871252))

(assert (= (and b!2871252 (not res!1191270)) b!2871244))

(assert (= (and b!2871244 res!1191272) b!2871249))

(assert (= (and b!2871249 res!1191269) b!2871253))

(assert (= (and b!2871253 res!1191267) b!2871241))

(assert (= (and b!2871244 (not res!1191271)) b!2871243))

(assert (= (and b!2871243 res!1191273) b!2871247))

(assert (= (and b!2871247 (not res!1191268)) b!2871240))

(assert (= (and b!2871240 (not res!1191266)) b!2871245))

(assert (= (or b!2871250 b!2871249 b!2871247) bm!185419))

(assert (=> b!2871245 m!3289279))

(declare-fun m!3289777 () Bool)

(assert (=> b!2871245 m!3289777))

(assert (=> b!2871253 m!3289279))

(declare-fun m!3289779 () Bool)

(assert (=> b!2871253 m!3289779))

(assert (=> b!2871253 m!3289779))

(declare-fun m!3289781 () Bool)

(assert (=> b!2871253 m!3289781))

(assert (=> bm!185419 m!3289279))

(assert (=> bm!185419 m!3289281))

(assert (=> b!2871240 m!3289279))

(assert (=> b!2871240 m!3289779))

(assert (=> b!2871240 m!3289779))

(assert (=> b!2871240 m!3289781))

(assert (=> b!2871251 m!3289279))

(assert (=> b!2871251 m!3289777))

(assert (=> b!2871251 m!3289283))

(assert (=> b!2871251 m!3289777))

(declare-fun m!3289783 () Bool)

(assert (=> b!2871251 m!3289783))

(assert (=> b!2871251 m!3289279))

(assert (=> b!2871251 m!3289779))

(assert (=> b!2871251 m!3289783))

(assert (=> b!2871251 m!3289779))

(declare-fun m!3289785 () Bool)

(assert (=> b!2871251 m!3289785))

(assert (=> d!829783 m!3289279))

(assert (=> d!829783 m!3289281))

(assert (=> d!829783 m!3289283))

(declare-fun m!3289787 () Bool)

(assert (=> d!829783 m!3289787))

(assert (=> b!2871241 m!3289279))

(assert (=> b!2871241 m!3289777))

(assert (=> b!2871248 m!3289283))

(declare-fun m!3289789 () Bool)

(assert (=> b!2871248 m!3289789))

(assert (=> b!2870656 d!829783))

(declare-fun call!185425 () Regex!8734)

(declare-fun call!185427 () Regex!8734)

(declare-fun b!2871254 () Bool)

(declare-fun e!1817261 () Regex!8734)

(assert (=> b!2871254 (= e!1817261 (Union!8734 (Concat!14055 call!185425 (regTwo!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))) call!185427))))

(declare-fun d!829785 () Bool)

(declare-fun lt!1017985 () Regex!8734)

(assert (=> d!829785 (validRegex!3512 lt!1017985)))

(declare-fun e!1817258 () Regex!8734)

(assert (=> d!829785 (= lt!1017985 e!1817258)))

(declare-fun c!464496 () Bool)

(assert (=> d!829785 (= c!464496 (or (is-EmptyExpr!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) (is-EmptyLang!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))))))

(assert (=> d!829785 (validRegex!3512 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))))

(assert (=> d!829785 (= (derivativeStep!2317 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))) (head!6339 (tail!4564 (v!34530 lt!1017835)))) lt!1017985)))

(declare-fun b!2871255 () Bool)

(assert (=> b!2871255 (= e!1817258 EmptyLang!8734)))

(declare-fun b!2871256 () Bool)

(declare-fun c!464498 () Bool)

(assert (=> b!2871256 (= c!464498 (is-Union!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun e!1817259 () Regex!8734)

(declare-fun e!1817262 () Regex!8734)

(assert (=> b!2871256 (= e!1817259 e!1817262)))

(declare-fun call!185428 () Regex!8734)

(declare-fun c!464497 () Bool)

(declare-fun bm!185420 () Bool)

(assert (=> bm!185420 (= call!185428 (derivativeStep!2317 (ite c!464498 (regOne!17981 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) (ite c!464497 (reg!9063 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) (regOne!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))) (head!6339 (tail!4564 (v!34530 lt!1017835)))))))

(declare-fun e!1817260 () Regex!8734)

(declare-fun b!2871257 () Bool)

(declare-fun call!185426 () Regex!8734)

(assert (=> b!2871257 (= e!1817260 (Concat!14055 call!185426 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun bm!185421 () Bool)

(assert (=> bm!185421 (= call!185426 call!185428)))

(declare-fun b!2871258 () Bool)

(declare-fun c!464495 () Bool)

(assert (=> b!2871258 (= c!464495 (nullable!2684 (regOne!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))))))

(assert (=> b!2871258 (= e!1817260 e!1817261)))

(declare-fun b!2871259 () Bool)

(assert (=> b!2871259 (= e!1817262 e!1817260)))

(assert (=> b!2871259 (= c!464497 (is-Star!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun b!2871260 () Bool)

(assert (=> b!2871260 (= e!1817258 e!1817259)))

(declare-fun c!464499 () Bool)

(assert (=> b!2871260 (= c!464499 (is-ElementMatch!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))))))

(declare-fun b!2871261 () Bool)

(assert (=> b!2871261 (= e!1817261 (Union!8734 (Concat!14055 call!185425 (regTwo!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))) EmptyLang!8734))))

(declare-fun b!2871262 () Bool)

(assert (=> b!2871262 (= e!1817262 (Union!8734 call!185428 call!185427))))

(declare-fun bm!185422 () Bool)

(assert (=> bm!185422 (= call!185425 call!185426)))

(declare-fun b!2871263 () Bool)

(assert (=> b!2871263 (= e!1817259 (ite (= (head!6339 (tail!4564 (v!34530 lt!1017835))) (c!464165 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185423 () Bool)

(assert (=> bm!185423 (= call!185427 (derivativeStep!2317 (ite c!464498 (regTwo!17981 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835)))) (regTwo!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (v!34530 lt!1017835))))) (head!6339 (tail!4564 (v!34530 lt!1017835)))))))

(assert (= (and d!829785 c!464496) b!2871255))

(assert (= (and d!829785 (not c!464496)) b!2871260))

(assert (= (and b!2871260 c!464499) b!2871263))

(assert (= (and b!2871260 (not c!464499)) b!2871256))

(assert (= (and b!2871256 c!464498) b!2871262))

(assert (= (and b!2871256 (not c!464498)) b!2871259))

(assert (= (and b!2871259 c!464497) b!2871257))

(assert (= (and b!2871259 (not c!464497)) b!2871258))

(assert (= (and b!2871258 c!464495) b!2871254))

(assert (= (and b!2871258 (not c!464495)) b!2871261))

(assert (= (or b!2871254 b!2871261) bm!185422))

(assert (= (or b!2871257 bm!185422) bm!185421))

(assert (= (or b!2871262 bm!185421) bm!185420))

(assert (= (or b!2871262 b!2871254) bm!185423))

(declare-fun m!3289791 () Bool)

(assert (=> d!829785 m!3289791))

(assert (=> d!829785 m!3289117))

(assert (=> d!829785 m!3289287))

(assert (=> bm!185420 m!3289277))

(declare-fun m!3289793 () Bool)

(assert (=> bm!185420 m!3289793))

(declare-fun m!3289795 () Bool)

(assert (=> b!2871258 m!3289795))

(assert (=> bm!185423 m!3289277))

(declare-fun m!3289797 () Bool)

(assert (=> bm!185423 m!3289797))

(assert (=> b!2870656 d!829785))

(assert (=> b!2870656 d!829757))

(assert (=> b!2870656 d!829743))

(declare-fun call!185431 () Regex!8734)

(declare-fun b!2871264 () Bool)

(declare-fun e!1817266 () Regex!8734)

(declare-fun call!185429 () Regex!8734)

(assert (=> b!2871264 (= e!1817266 (Union!8734 (Concat!14055 call!185429 (regTwo!17980 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) call!185431))))

(declare-fun d!829787 () Bool)

(declare-fun lt!1017986 () Regex!8734)

(assert (=> d!829787 (validRegex!3512 lt!1017986)))

(declare-fun e!1817263 () Regex!8734)

(assert (=> d!829787 (= lt!1017986 e!1817263)))

(declare-fun c!464501 () Bool)

(assert (=> d!829787 (= c!464501 (or (is-EmptyExpr!8734 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (is-EmptyLang!8734 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))

(assert (=> d!829787 (validRegex!3512 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> d!829787 (= (derivativeStep!2317 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) (head!6339 (get!10328 lt!1017835))) lt!1017986)))

(declare-fun b!2871265 () Bool)

(assert (=> b!2871265 (= e!1817263 EmptyLang!8734)))

(declare-fun b!2871266 () Bool)

(declare-fun c!464503 () Bool)

(assert (=> b!2871266 (= c!464503 (is-Union!8734 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun e!1817264 () Regex!8734)

(declare-fun e!1817267 () Regex!8734)

(assert (=> b!2871266 (= e!1817264 e!1817267)))

(declare-fun call!185432 () Regex!8734)

(declare-fun bm!185424 () Bool)

(declare-fun c!464502 () Bool)

(assert (=> bm!185424 (= call!185432 (derivativeStep!2317 (ite c!464503 (regOne!17981 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (ite c!464502 (reg!9063 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) (head!6339 (get!10328 lt!1017835))))))

(declare-fun b!2871267 () Bool)

(declare-fun e!1817265 () Regex!8734)

(declare-fun call!185430 () Regex!8734)

(assert (=> b!2871267 (= e!1817265 (Concat!14055 call!185430 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun bm!185425 () Bool)

(assert (=> bm!185425 (= call!185430 call!185432)))

(declare-fun b!2871268 () Bool)

(declare-fun c!464500 () Bool)

(assert (=> b!2871268 (= c!464500 (nullable!2684 (regOne!17980 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))

(assert (=> b!2871268 (= e!1817265 e!1817266)))

(declare-fun b!2871269 () Bool)

(assert (=> b!2871269 (= e!1817267 e!1817265)))

(assert (=> b!2871269 (= c!464502 (is-Star!8734 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2871270 () Bool)

(assert (=> b!2871270 (= e!1817263 e!1817264)))

(declare-fun c!464504 () Bool)

(assert (=> b!2871270 (= c!464504 (is-ElementMatch!8734 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2871271 () Bool)

(assert (=> b!2871271 (= e!1817266 (Union!8734 (Concat!14055 call!185429 (regTwo!17980 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) EmptyLang!8734))))

(declare-fun b!2871272 () Bool)

(assert (=> b!2871272 (= e!1817267 (Union!8734 call!185432 call!185431))))

(declare-fun bm!185426 () Bool)

(assert (=> bm!185426 (= call!185429 call!185430)))

(declare-fun b!2871273 () Bool)

(assert (=> b!2871273 (= e!1817264 (ite (= (head!6339 (get!10328 lt!1017835)) (c!464165 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185427 () Bool)

(assert (=> bm!185427 (= call!185431 (derivativeStep!2317 (ite c!464503 (regTwo!17981 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464322 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) (head!6339 (get!10328 lt!1017835))))))

(assert (= (and d!829787 c!464501) b!2871265))

(assert (= (and d!829787 (not c!464501)) b!2871270))

(assert (= (and b!2871270 c!464504) b!2871273))

(assert (= (and b!2871270 (not c!464504)) b!2871266))

(assert (= (and b!2871266 c!464503) b!2871272))

(assert (= (and b!2871266 (not c!464503)) b!2871269))

(assert (= (and b!2871269 c!464502) b!2871267))

(assert (= (and b!2871269 (not c!464502)) b!2871268))

(assert (= (and b!2871268 c!464500) b!2871264))

(assert (= (and b!2871268 (not c!464500)) b!2871271))

(assert (= (or b!2871264 b!2871271) bm!185426))

(assert (= (or b!2871267 bm!185426) bm!185425))

(assert (= (or b!2871272 bm!185425) bm!185424))

(assert (= (or b!2871272 b!2871264) bm!185427))

(declare-fun m!3289799 () Bool)

(assert (=> d!829787 m!3289799))

(declare-fun m!3289801 () Bool)

(assert (=> d!829787 m!3289801))

(assert (=> bm!185424 m!3289167))

(declare-fun m!3289803 () Bool)

(assert (=> bm!185424 m!3289803))

(declare-fun m!3289805 () Bool)

(assert (=> b!2871268 m!3289805))

(assert (=> bm!185427 m!3289167))

(declare-fun m!3289807 () Bool)

(assert (=> bm!185427 m!3289807))

(assert (=> bm!185342 d!829787))

(declare-fun b!2871274 () Bool)

(declare-fun e!1817268 () Bool)

(declare-fun e!1817271 () Bool)

(assert (=> b!2871274 (= e!1817268 e!1817271)))

(declare-fun res!1191275 () Bool)

(assert (=> b!2871274 (= res!1191275 (not (nullable!2684 (reg!9063 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))))

(assert (=> b!2871274 (=> (not res!1191275) (not e!1817271))))

(declare-fun b!2871275 () Bool)

(declare-fun e!1817270 () Bool)

(declare-fun call!185433 () Bool)

(assert (=> b!2871275 (= e!1817270 call!185433)))

(declare-fun bm!185428 () Bool)

(declare-fun c!464506 () Bool)

(declare-fun call!185435 () Bool)

(assert (=> bm!185428 (= call!185435 (validRegex!3512 (ite c!464506 (regTwo!17981 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) (regOne!17980 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))))

(declare-fun d!829789 () Bool)

(declare-fun res!1191277 () Bool)

(declare-fun e!1817274 () Bool)

(assert (=> d!829789 (=> res!1191277 e!1817274)))

(assert (=> d!829789 (= res!1191277 (is-ElementMatch!8734 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))

(assert (=> d!829789 (= (validRegex!3512 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) e!1817274)))

(declare-fun bm!185429 () Bool)

(declare-fun call!185434 () Bool)

(assert (=> bm!185429 (= call!185433 call!185434)))

(declare-fun bm!185430 () Bool)

(declare-fun c!464505 () Bool)

(assert (=> bm!185430 (= call!185434 (validRegex!3512 (ite c!464505 (reg!9063 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) (ite c!464506 (regOne!17981 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) (regTwo!17980 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun b!2871276 () Bool)

(declare-fun res!1191274 () Bool)

(declare-fun e!1817273 () Bool)

(assert (=> b!2871276 (=> res!1191274 e!1817273)))

(assert (=> b!2871276 (= res!1191274 (not (is-Concat!14055 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun e!1817269 () Bool)

(assert (=> b!2871276 (= e!1817269 e!1817273)))

(declare-fun b!2871277 () Bool)

(assert (=> b!2871277 (= e!1817268 e!1817269)))

(assert (=> b!2871277 (= c!464506 (is-Union!8734 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2871278 () Bool)

(assert (=> b!2871278 (= e!1817274 e!1817268)))

(assert (=> b!2871278 (= c!464505 (is-Star!8734 (ite c!464279 (reg!9063 (h!39791 (exprs!3194 c!7184))) (ite c!464280 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun b!2871279 () Bool)

(declare-fun res!1191278 () Bool)

(declare-fun e!1817272 () Bool)

(assert (=> b!2871279 (=> (not res!1191278) (not e!1817272))))

(assert (=> b!2871279 (= res!1191278 call!185433)))

(assert (=> b!2871279 (= e!1817269 e!1817272)))

(declare-fun b!2871280 () Bool)

(assert (=> b!2871280 (= e!1817273 e!1817270)))

(declare-fun res!1191276 () Bool)

(assert (=> b!2871280 (=> (not res!1191276) (not e!1817270))))

(assert (=> b!2871280 (= res!1191276 call!185435)))

(declare-fun b!2871281 () Bool)

(assert (=> b!2871281 (= e!1817271 call!185434)))

(declare-fun b!2871282 () Bool)

(assert (=> b!2871282 (= e!1817272 call!185435)))

(assert (= (and d!829789 (not res!1191277)) b!2871278))

(assert (= (and b!2871278 c!464505) b!2871274))

(assert (= (and b!2871278 (not c!464505)) b!2871277))

(assert (= (and b!2871274 res!1191275) b!2871281))

(assert (= (and b!2871277 c!464506) b!2871279))

(assert (= (and b!2871277 (not c!464506)) b!2871276))

(assert (= (and b!2871279 res!1191278) b!2871282))

(assert (= (and b!2871276 (not res!1191274)) b!2871280))

(assert (= (and b!2871280 res!1191276) b!2871275))

(assert (= (or b!2871282 b!2871280) bm!185428))

(assert (= (or b!2871279 b!2871275) bm!185429))

(assert (= (or b!2871281 bm!185429) bm!185430))

(declare-fun m!3289809 () Bool)

(assert (=> b!2871274 m!3289809))

(declare-fun m!3289811 () Bool)

(assert (=> bm!185428 m!3289811))

(declare-fun m!3289813 () Bool)

(assert (=> bm!185430 m!3289813))

(assert (=> bm!185320 d!829789))

(declare-fun d!829791 () Bool)

(declare-fun c!464507 () Bool)

(assert (=> d!829791 (= c!464507 (isEmpty!18711 (tail!4564 (get!10328 (getLanguageWitness!420 lt!1017833)))))))

(declare-fun e!1817275 () Bool)

(assert (=> d!829791 (= (matchZipper!476 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 (getLanguageWitness!420 lt!1017833)))) (tail!4564 (get!10328 (getLanguageWitness!420 lt!1017833)))) e!1817275)))

(declare-fun b!2871283 () Bool)

(assert (=> b!2871283 (= e!1817275 (nullableZipper!712 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 (getLanguageWitness!420 lt!1017833))))))))

(declare-fun b!2871284 () Bool)

(assert (=> b!2871284 (= e!1817275 (matchZipper!476 (derivationStepZipper!468 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 (getLanguageWitness!420 lt!1017833)))) (head!6339 (tail!4564 (get!10328 (getLanguageWitness!420 lt!1017833))))) (tail!4564 (tail!4564 (get!10328 (getLanguageWitness!420 lt!1017833))))))))

(assert (= (and d!829791 c!464507) b!2871283))

(assert (= (and d!829791 (not c!464507)) b!2871284))

(assert (=> d!829791 m!3289379))

(declare-fun m!3289815 () Bool)

(assert (=> d!829791 m!3289815))

(assert (=> b!2871283 m!3289377))

(declare-fun m!3289817 () Bool)

(assert (=> b!2871283 m!3289817))

(assert (=> b!2871284 m!3289379))

(declare-fun m!3289819 () Bool)

(assert (=> b!2871284 m!3289819))

(assert (=> b!2871284 m!3289377))

(assert (=> b!2871284 m!3289819))

(declare-fun m!3289821 () Bool)

(assert (=> b!2871284 m!3289821))

(assert (=> b!2871284 m!3289379))

(declare-fun m!3289823 () Bool)

(assert (=> b!2871284 m!3289823))

(assert (=> b!2871284 m!3289821))

(assert (=> b!2871284 m!3289823))

(declare-fun m!3289825 () Bool)

(assert (=> b!2871284 m!3289825))

(assert (=> b!2870780 d!829791))

(declare-fun bs!522084 () Bool)

(declare-fun d!829793 () Bool)

(assert (= bs!522084 (and d!829793 d!829531)))

(declare-fun lambda!107101 () Int)

(assert (=> bs!522084 (= (= (head!6339 (get!10328 (getLanguageWitness!420 lt!1017833))) (head!6339 (get!10328 lt!1017832))) (= lambda!107101 lambda!107077))))

(assert (=> d!829793 true))

(assert (=> d!829793 (= (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 (getLanguageWitness!420 lt!1017833)))) (flatMap!217 (set.insert lt!1017833 (as set.empty (Set Context!5388))) lambda!107101))))

(declare-fun bs!522085 () Bool)

(assert (= bs!522085 d!829793))

(assert (=> bs!522085 m!3289049))

(declare-fun m!3289827 () Bool)

(assert (=> bs!522085 m!3289827))

(assert (=> b!2870780 d!829793))

(declare-fun d!829795 () Bool)

(assert (=> d!829795 (= (head!6339 (get!10328 (getLanguageWitness!420 lt!1017833))) (h!39792 (get!10328 (getLanguageWitness!420 lt!1017833))))))

(assert (=> b!2870780 d!829795))

(declare-fun d!829797 () Bool)

(assert (=> d!829797 (= (tail!4564 (get!10328 (getLanguageWitness!420 lt!1017833))) (t!233539 (get!10328 (getLanguageWitness!420 lt!1017833))))))

(assert (=> b!2870780 d!829797))

(declare-fun b!2871285 () Bool)

(declare-fun e!1817276 () Bool)

(declare-fun e!1817279 () Bool)

(assert (=> b!2871285 (= e!1817276 e!1817279)))

(declare-fun res!1191280 () Bool)

(assert (=> b!2871285 (= res!1191280 (not (nullable!2684 (reg!9063 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871285 (=> (not res!1191280) (not e!1817279))))

(declare-fun b!2871286 () Bool)

(declare-fun e!1817278 () Bool)

(declare-fun call!185436 () Bool)

(assert (=> b!2871286 (= e!1817278 call!185436)))

(declare-fun bm!185431 () Bool)

(declare-fun c!464509 () Bool)

(declare-fun call!185438 () Bool)

(assert (=> bm!185431 (= call!185438 (validRegex!3512 (ite c!464509 (regTwo!17981 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun d!829799 () Bool)

(declare-fun res!1191282 () Bool)

(declare-fun e!1817282 () Bool)

(assert (=> d!829799 (=> res!1191282 e!1817282)))

(assert (=> d!829799 (= res!1191282 (is-ElementMatch!8734 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> d!829799 (= (validRegex!3512 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) e!1817282)))

(declare-fun bm!185432 () Bool)

(declare-fun call!185437 () Bool)

(assert (=> bm!185432 (= call!185436 call!185437)))

(declare-fun c!464508 () Bool)

(declare-fun bm!185433 () Bool)

(assert (=> bm!185433 (= call!185437 (validRegex!3512 (ite c!464508 (reg!9063 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (ite c!464509 (regOne!17981 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))))

(declare-fun b!2871287 () Bool)

(declare-fun res!1191279 () Bool)

(declare-fun e!1817281 () Bool)

(assert (=> b!2871287 (=> res!1191279 e!1817281)))

(assert (=> b!2871287 (= res!1191279 (not (is-Concat!14055 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184)))))))))

(declare-fun e!1817277 () Bool)

(assert (=> b!2871287 (= e!1817277 e!1817281)))

(declare-fun b!2871288 () Bool)

(assert (=> b!2871288 (= e!1817276 e!1817277)))

(assert (=> b!2871288 (= c!464509 (is-Union!8734 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2871289 () Bool)

(assert (=> b!2871289 (= e!1817282 e!1817276)))

(assert (=> b!2871289 (= c!464508 (is-Star!8734 (ite c!464280 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2871290 () Bool)

(declare-fun res!1191283 () Bool)

(declare-fun e!1817280 () Bool)

(assert (=> b!2871290 (=> (not res!1191283) (not e!1817280))))

(assert (=> b!2871290 (= res!1191283 call!185436)))

(assert (=> b!2871290 (= e!1817277 e!1817280)))

(declare-fun b!2871291 () Bool)

(assert (=> b!2871291 (= e!1817281 e!1817278)))

(declare-fun res!1191281 () Bool)

(assert (=> b!2871291 (=> (not res!1191281) (not e!1817278))))

(assert (=> b!2871291 (= res!1191281 call!185438)))

(declare-fun b!2871292 () Bool)

(assert (=> b!2871292 (= e!1817279 call!185437)))

(declare-fun b!2871293 () Bool)

(assert (=> b!2871293 (= e!1817280 call!185438)))

(assert (= (and d!829799 (not res!1191282)) b!2871289))

(assert (= (and b!2871289 c!464508) b!2871285))

(assert (= (and b!2871289 (not c!464508)) b!2871288))

(assert (= (and b!2871285 res!1191280) b!2871292))

(assert (= (and b!2871288 c!464509) b!2871290))

(assert (= (and b!2871288 (not c!464509)) b!2871287))

(assert (= (and b!2871290 res!1191283) b!2871293))

(assert (= (and b!2871287 (not res!1191279)) b!2871291))

(assert (= (and b!2871291 res!1191281) b!2871286))

(assert (= (or b!2871293 b!2871291) bm!185431))

(assert (= (or b!2871290 b!2871286) bm!185432))

(assert (= (or b!2871292 bm!185432) bm!185433))

(declare-fun m!3289829 () Bool)

(assert (=> b!2871285 m!3289829))

(declare-fun m!3289831 () Bool)

(assert (=> bm!185431 m!3289831))

(declare-fun m!3289833 () Bool)

(assert (=> bm!185433 m!3289833))

(assert (=> bm!185318 d!829799))

(declare-fun d!829801 () Bool)

(declare-fun lt!1017987 () Int)

(assert (=> d!829801 (>= lt!1017987 0)))

(declare-fun e!1817283 () Int)

(assert (=> d!829801 (= lt!1017987 e!1817283)))

(declare-fun c!464510 () Bool)

(assert (=> d!829801 (= c!464510 (is-Nil!34372 lt!1017910))))

(assert (=> d!829801 (= (size!26319 lt!1017910) lt!1017987)))

(declare-fun b!2871294 () Bool)

(assert (=> b!2871294 (= e!1817283 0)))

(declare-fun b!2871295 () Bool)

(assert (=> b!2871295 (= e!1817283 (+ 1 (size!26319 (t!233539 lt!1017910))))))

(assert (= (and d!829801 c!464510) b!2871294))

(assert (= (and d!829801 (not c!464510)) b!2871295))

(declare-fun m!3289835 () Bool)

(assert (=> b!2871295 m!3289835))

(assert (=> b!2870610 d!829801))

(declare-fun d!829803 () Bool)

(declare-fun lt!1017988 () Int)

(assert (=> d!829803 (>= lt!1017988 0)))

(declare-fun e!1817284 () Int)

(assert (=> d!829803 (= lt!1017988 e!1817284)))

(declare-fun c!464511 () Bool)

(assert (=> d!829803 (= c!464511 (is-Nil!34372 (v!34530 lt!1017869)))))

(assert (=> d!829803 (= (size!26319 (v!34530 lt!1017869)) lt!1017988)))

(declare-fun b!2871296 () Bool)

(assert (=> b!2871296 (= e!1817284 0)))

(declare-fun b!2871297 () Bool)

(assert (=> b!2871297 (= e!1817284 (+ 1 (size!26319 (t!233539 (v!34530 lt!1017869)))))))

(assert (= (and d!829803 c!464511) b!2871296))

(assert (= (and d!829803 (not c!464511)) b!2871297))

(assert (=> b!2871297 m!3289661))

(assert (=> b!2870610 d!829803))

(declare-fun d!829805 () Bool)

(declare-fun lt!1017989 () Int)

(assert (=> d!829805 (>= lt!1017989 0)))

(declare-fun e!1817285 () Int)

(assert (=> d!829805 (= lt!1017989 e!1817285)))

(declare-fun c!464512 () Bool)

(assert (=> d!829805 (= c!464512 (is-Nil!34372 (v!34530 lt!1017867)))))

(assert (=> d!829805 (= (size!26319 (v!34530 lt!1017867)) lt!1017989)))

(declare-fun b!2871298 () Bool)

(assert (=> b!2871298 (= e!1817285 0)))

(declare-fun b!2871299 () Bool)

(assert (=> b!2871299 (= e!1817285 (+ 1 (size!26319 (t!233539 (v!34530 lt!1017867)))))))

(assert (= (and d!829805 c!464512) b!2871298))

(assert (= (and d!829805 (not c!464512)) b!2871299))

(declare-fun m!3289837 () Bool)

(assert (=> b!2871299 m!3289837))

(assert (=> b!2870610 d!829805))

(declare-fun d!829807 () Bool)

(declare-fun c!464513 () Bool)

(assert (=> d!829807 (= c!464513 (isEmpty!18711 (tail!4564 (tail!4564 (get!10328 lt!1017832)))))))

(declare-fun e!1817286 () Bool)

(assert (=> d!829807 (= (matchZipper!476 (derivationStepZipper!468 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) (head!6339 (tail!4564 (get!10328 lt!1017832)))) (tail!4564 (tail!4564 (get!10328 lt!1017832)))) e!1817286)))

(declare-fun b!2871300 () Bool)

(assert (=> b!2871300 (= e!1817286 (nullableZipper!712 (derivationStepZipper!468 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) (head!6339 (tail!4564 (get!10328 lt!1017832))))))))

(declare-fun b!2871301 () Bool)

(assert (=> b!2871301 (= e!1817286 (matchZipper!476 (derivationStepZipper!468 (derivationStepZipper!468 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) (head!6339 (tail!4564 (get!10328 lt!1017832)))) (head!6339 (tail!4564 (tail!4564 (get!10328 lt!1017832))))) (tail!4564 (tail!4564 (tail!4564 (get!10328 lt!1017832))))))))

(assert (= (and d!829807 c!464513) b!2871300))

(assert (= (and d!829807 (not c!464513)) b!2871301))

(assert (=> d!829807 m!3289261))

(declare-fun m!3289839 () Bool)

(assert (=> d!829807 m!3289839))

(assert (=> b!2871300 m!3289259))

(declare-fun m!3289841 () Bool)

(assert (=> b!2871300 m!3289841))

(assert (=> b!2871301 m!3289261))

(declare-fun m!3289843 () Bool)

(assert (=> b!2871301 m!3289843))

(assert (=> b!2871301 m!3289259))

(assert (=> b!2871301 m!3289843))

(declare-fun m!3289845 () Bool)

(assert (=> b!2871301 m!3289845))

(assert (=> b!2871301 m!3289261))

(declare-fun m!3289847 () Bool)

(assert (=> b!2871301 m!3289847))

(assert (=> b!2871301 m!3289845))

(assert (=> b!2871301 m!3289847))

(declare-fun m!3289849 () Bool)

(assert (=> b!2871301 m!3289849))

(assert (=> b!2870613 d!829807))

(declare-fun bs!522086 () Bool)

(declare-fun d!829809 () Bool)

(assert (= bs!522086 (and d!829809 d!829531)))

(declare-fun lambda!107102 () Int)

(assert (=> bs!522086 (= (= (head!6339 (tail!4564 (get!10328 lt!1017832))) (head!6339 (get!10328 lt!1017832))) (= lambda!107102 lambda!107077))))

(declare-fun bs!522087 () Bool)

(assert (= bs!522087 (and d!829809 d!829793)))

(assert (=> bs!522087 (= (= (head!6339 (tail!4564 (get!10328 lt!1017832))) (head!6339 (get!10328 (getLanguageWitness!420 lt!1017833)))) (= lambda!107102 lambda!107101))))

(assert (=> d!829809 true))

(assert (=> d!829809 (= (derivationStepZipper!468 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) (head!6339 (tail!4564 (get!10328 lt!1017832)))) (flatMap!217 (derivationStepZipper!468 (set.insert lt!1017833 (as set.empty (Set Context!5388))) (head!6339 (get!10328 lt!1017832))) lambda!107102))))

(declare-fun bs!522088 () Bool)

(assert (= bs!522088 d!829809))

(assert (=> bs!522088 m!3289131))

(declare-fun m!3289851 () Bool)

(assert (=> bs!522088 m!3289851))

(assert (=> b!2870613 d!829809))

(declare-fun d!829811 () Bool)

(assert (=> d!829811 (= (head!6339 (tail!4564 (get!10328 lt!1017832))) (h!39792 (tail!4564 (get!10328 lt!1017832))))))

(assert (=> b!2870613 d!829811))

(declare-fun d!829813 () Bool)

(assert (=> d!829813 (= (tail!4564 (tail!4564 (get!10328 lt!1017832))) (t!233539 (tail!4564 (get!10328 lt!1017832))))))

(assert (=> b!2870613 d!829813))

(assert (=> d!829579 d!829553))

(declare-fun b!2871302 () Bool)

(declare-fun e!1817287 () Bool)

(declare-fun e!1817290 () Bool)

(assert (=> b!2871302 (= e!1817287 e!1817290)))

(declare-fun res!1191285 () Bool)

(assert (=> b!2871302 (= res!1191285 (not (nullable!2684 (reg!9063 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))))

(assert (=> b!2871302 (=> (not res!1191285) (not e!1817290))))

(declare-fun b!2871303 () Bool)

(declare-fun e!1817289 () Bool)

(declare-fun call!185439 () Bool)

(assert (=> b!2871303 (= e!1817289 call!185439)))

(declare-fun bm!185434 () Bool)

(declare-fun c!464515 () Bool)

(declare-fun call!185441 () Bool)

(assert (=> bm!185434 (= call!185441 (validRegex!3512 (ite c!464515 (regTwo!17981 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) (regOne!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))))

(declare-fun d!829815 () Bool)

(declare-fun res!1191287 () Bool)

(declare-fun e!1817293 () Bool)

(assert (=> d!829815 (=> res!1191287 e!1817293)))

(assert (=> d!829815 (= res!1191287 (is-ElementMatch!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(assert (=> d!829815 (= (validRegex!3512 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) e!1817293)))

(declare-fun bm!185435 () Bool)

(declare-fun call!185440 () Bool)

(assert (=> bm!185435 (= call!185439 call!185440)))

(declare-fun c!464514 () Bool)

(declare-fun bm!185436 () Bool)

(assert (=> bm!185436 (= call!185440 (validRegex!3512 (ite c!464514 (reg!9063 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) (ite c!464515 (regOne!17981 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))) (regTwo!17980 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))))))))

(declare-fun b!2871304 () Bool)

(declare-fun res!1191284 () Bool)

(declare-fun e!1817292 () Bool)

(assert (=> b!2871304 (=> res!1191284 e!1817292)))

(assert (=> b!2871304 (= res!1191284 (not (is-Concat!14055 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835))))))))

(declare-fun e!1817288 () Bool)

(assert (=> b!2871304 (= e!1817288 e!1817292)))

(declare-fun b!2871305 () Bool)

(assert (=> b!2871305 (= e!1817287 e!1817288)))

(assert (=> b!2871305 (= c!464515 (is-Union!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun b!2871306 () Bool)

(assert (=> b!2871306 (= e!1817293 e!1817287)))

(assert (=> b!2871306 (= c!464514 (is-Star!8734 (derivativeStep!2317 (h!39791 (exprs!3194 c!7184)) (head!6339 (get!10328 lt!1017835)))))))

(declare-fun b!2871307 () Bool)

(declare-fun res!1191288 () Bool)

(declare-fun e!1817291 () Bool)

(assert (=> b!2871307 (=> (not res!1191288) (not e!1817291))))

(assert (=> b!2871307 (= res!1191288 call!185439)))

(assert (=> b!2871307 (= e!1817288 e!1817291)))

(declare-fun b!2871308 () Bool)

(assert (=> b!2871308 (= e!1817292 e!1817289)))

(declare-fun res!1191286 () Bool)

(assert (=> b!2871308 (=> (not res!1191286) (not e!1817289))))

(assert (=> b!2871308 (= res!1191286 call!185441)))

(declare-fun b!2871309 () Bool)

(assert (=> b!2871309 (= e!1817290 call!185440)))

(declare-fun b!2871310 () Bool)

(assert (=> b!2871310 (= e!1817291 call!185441)))

(assert (= (and d!829815 (not res!1191287)) b!2871306))

(assert (= (and b!2871306 c!464514) b!2871302))

(assert (= (and b!2871306 (not c!464514)) b!2871305))

(assert (= (and b!2871302 res!1191285) b!2871309))

(assert (= (and b!2871305 c!464515) b!2871307))

(assert (= (and b!2871305 (not c!464515)) b!2871304))

(assert (= (and b!2871307 res!1191288) b!2871310))

(assert (= (and b!2871304 (not res!1191284)) b!2871308))

(assert (= (and b!2871308 res!1191286) b!2871303))

(assert (= (or b!2871310 b!2871308) bm!185434))

(assert (= (or b!2871307 b!2871303) bm!185435))

(assert (= (or b!2871309 bm!185435) bm!185436))

(declare-fun m!3289853 () Bool)

(assert (=> b!2871302 m!3289853))

(declare-fun m!3289855 () Bool)

(assert (=> bm!185434 m!3289855))

(declare-fun m!3289857 () Bool)

(assert (=> bm!185436 m!3289857))

(assert (=> d!829579 d!829815))

(declare-fun b!2871313 () Bool)

(declare-fun res!1191290 () Bool)

(declare-fun e!1817294 () Bool)

(assert (=> b!2871313 (=> (not res!1191290) (not e!1817294))))

(declare-fun lt!1017990 () List!34496)

(assert (=> b!2871313 (= res!1191290 (= (size!26319 lt!1017990) (+ (size!26319 (v!34530 lt!1017917)) (size!26319 (v!34530 lt!1017915)))))))

(declare-fun b!2871314 () Bool)

(assert (=> b!2871314 (= e!1817294 (or (not (= (v!34530 lt!1017915) Nil!34372)) (= lt!1017990 (v!34530 lt!1017917))))))

(declare-fun b!2871311 () Bool)

(declare-fun e!1817295 () List!34496)

(assert (=> b!2871311 (= e!1817295 (v!34530 lt!1017915))))

(declare-fun b!2871312 () Bool)

(assert (=> b!2871312 (= e!1817295 (Cons!34372 (h!39792 (v!34530 lt!1017917)) (++!8171 (t!233539 (v!34530 lt!1017917)) (v!34530 lt!1017915))))))

(declare-fun d!829817 () Bool)

(assert (=> d!829817 e!1817294))

(declare-fun res!1191289 () Bool)

(assert (=> d!829817 (=> (not res!1191289) (not e!1817294))))

(assert (=> d!829817 (= res!1191289 (= (content!4696 lt!1017990) (set.union (content!4696 (v!34530 lt!1017917)) (content!4696 (v!34530 lt!1017915)))))))

(assert (=> d!829817 (= lt!1017990 e!1817295)))

(declare-fun c!464516 () Bool)

(assert (=> d!829817 (= c!464516 (is-Nil!34372 (v!34530 lt!1017917)))))

(assert (=> d!829817 (= (++!8171 (v!34530 lt!1017917) (v!34530 lt!1017915)) lt!1017990)))

(assert (= (and d!829817 c!464516) b!2871311))

(assert (= (and d!829817 (not c!464516)) b!2871312))

(assert (= (and d!829817 res!1191289) b!2871313))

(assert (= (and b!2871313 res!1191290) b!2871314))

(declare-fun m!3289859 () Bool)

(assert (=> b!2871313 m!3289859))

(declare-fun m!3289861 () Bool)

(assert (=> b!2871313 m!3289861))

(declare-fun m!3289863 () Bool)

(assert (=> b!2871313 m!3289863))

(declare-fun m!3289865 () Bool)

(assert (=> b!2871312 m!3289865))

(declare-fun m!3289867 () Bool)

(assert (=> d!829817 m!3289867))

(declare-fun m!3289869 () Bool)

(assert (=> d!829817 m!3289869))

(declare-fun m!3289871 () Bool)

(assert (=> d!829817 m!3289871))

(assert (=> b!2870696 d!829817))

(declare-fun d!829819 () Bool)

(assert (=> d!829819 (= (isEmpty!18711 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))) (is-Nil!34372 (get!10328 (getLanguageWitness!419 (h!39791 (exprs!3194 c!7184))))))))

(assert (=> bm!185345 d!829819))

(assert (=> b!2870733 d!829715))

(assert (=> b!2870733 d!829699))

(declare-fun b!2871317 () Bool)

(declare-fun res!1191292 () Bool)

(declare-fun e!1817296 () Bool)

(assert (=> b!2871317 (=> (not res!1191292) (not e!1817296))))

(declare-fun lt!1017991 () List!34496)

(assert (=> b!2871317 (= res!1191292 (= (size!26319 lt!1017991) (+ (size!26319 (v!34530 lt!1017929)) (size!26319 (v!34530 lt!1017927)))))))

(declare-fun b!2871318 () Bool)

(assert (=> b!2871318 (= e!1817296 (or (not (= (v!34530 lt!1017927) Nil!34372)) (= lt!1017991 (v!34530 lt!1017929))))))

(declare-fun b!2871315 () Bool)

(declare-fun e!1817297 () List!34496)

(assert (=> b!2871315 (= e!1817297 (v!34530 lt!1017927))))

(declare-fun b!2871316 () Bool)

(assert (=> b!2871316 (= e!1817297 (Cons!34372 (h!39792 (v!34530 lt!1017929)) (++!8171 (t!233539 (v!34530 lt!1017929)) (v!34530 lt!1017927))))))

(declare-fun d!829821 () Bool)

(assert (=> d!829821 e!1817296))

(declare-fun res!1191291 () Bool)

(assert (=> d!829821 (=> (not res!1191291) (not e!1817296))))

(assert (=> d!829821 (= res!1191291 (= (content!4696 lt!1017991) (set.union (content!4696 (v!34530 lt!1017929)) (content!4696 (v!34530 lt!1017927)))))))

(assert (=> d!829821 (= lt!1017991 e!1817297)))

(declare-fun c!464517 () Bool)

(assert (=> d!829821 (= c!464517 (is-Nil!34372 (v!34530 lt!1017929)))))

(assert (=> d!829821 (= (++!8171 (v!34530 lt!1017929) (v!34530 lt!1017927)) lt!1017991)))

(assert (= (and d!829821 c!464517) b!2871315))

(assert (= (and d!829821 (not c!464517)) b!2871316))

(assert (= (and d!829821 res!1191291) b!2871317))

(assert (= (and b!2871317 res!1191292) b!2871318))

(declare-fun m!3289873 () Bool)

(assert (=> b!2871317 m!3289873))

(declare-fun m!3289875 () Bool)

(assert (=> b!2871317 m!3289875))

(declare-fun m!3289877 () Bool)

(assert (=> b!2871317 m!3289877))

(declare-fun m!3289879 () Bool)

(assert (=> b!2871316 m!3289879))

(declare-fun m!3289881 () Bool)

(assert (=> d!829821 m!3289881))

(declare-fun m!3289883 () Bool)

(assert (=> d!829821 m!3289883))

(declare-fun m!3289885 () Bool)

(assert (=> d!829821 m!3289885))

(assert (=> b!2870764 d!829821))

(assert (=> b!2870781 d!829687))

(assert (=> b!2870781 d!829689))

(assert (=> d!829599 d!829819))

(assert (=> d!829599 d!829547))

(assert (=> d!829593 d!829589))

(assert (=> d!829593 d!829595))

(assert (=> d!829593 d!829481))

(declare-fun b!2871319 () Bool)

(declare-fun e!1817303 () Option!6409)

(assert (=> b!2871319 (= e!1817303 (Some!6408 (Cons!34372 (c!464165 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))) Nil!34372)))))

(declare-fun b!2871320 () Bool)

(declare-fun e!1817298 () Option!6409)

(declare-fun lt!1017994 () Option!6409)

(declare-fun lt!1017992 () Option!6409)

(assert (=> b!2871320 (= e!1817298 (Some!6408 (++!8171 (v!34530 lt!1017994) (v!34530 lt!1017992))))))

(declare-fun b!2871321 () Bool)

(declare-fun e!1817304 () Option!6409)

(assert (=> b!2871321 (= e!1817304 None!6408)))

(declare-fun b!2871322 () Bool)

(declare-fun c!464523 () Bool)

(assert (=> b!2871322 (= c!464523 (is-Some!6408 lt!1017992))))

(declare-fun call!185443 () Option!6409)

(assert (=> b!2871322 (= lt!1017992 call!185443)))

(assert (=> b!2871322 (= e!1817304 e!1817298)))

(declare-fun b!2871323 () Bool)

(declare-fun e!1817302 () Option!6409)

(declare-fun e!1817301 () Option!6409)

(assert (=> b!2871323 (= e!1817302 e!1817301)))

(declare-fun c!464519 () Bool)

(assert (=> b!2871323 (= c!464519 (is-EmptyLang!8734 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))

(declare-fun bm!185437 () Bool)

(declare-fun call!185442 () Option!6409)

(declare-fun c!464524 () Bool)

(assert (=> bm!185437 (= call!185442 (getLanguageWitness!419 (ite c!464524 (regOne!17981 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))) (regOne!17980 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))))

(declare-fun b!2871324 () Bool)

(declare-fun e!1817305 () Option!6409)

(assert (=> b!2871324 (= e!1817303 e!1817305)))

(declare-fun c!464522 () Bool)

(assert (=> b!2871324 (= c!464522 (is-Star!8734 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))

(declare-fun b!2871325 () Bool)

(assert (=> b!2871325 (= e!1817301 None!6408)))

(declare-fun b!2871326 () Bool)

(declare-fun e!1817299 () Option!6409)

(declare-fun e!1817300 () Option!6409)

(assert (=> b!2871326 (= e!1817299 e!1817300)))

(declare-fun lt!1017993 () Option!6409)

(assert (=> b!2871326 (= lt!1017993 call!185442)))

(declare-fun c!464525 () Bool)

(assert (=> b!2871326 (= c!464525 (is-Some!6408 lt!1017993))))

(declare-fun b!2871327 () Bool)

(assert (=> b!2871327 (= e!1817302 (Some!6408 Nil!34372))))

(declare-fun bm!185438 () Bool)

(assert (=> bm!185438 (= call!185443 (getLanguageWitness!419 (ite c!464524 (regTwo!17981 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))) (regTwo!17980 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))))

(declare-fun d!829823 () Bool)

(declare-fun c!464520 () Bool)

(assert (=> d!829823 (= c!464520 (is-EmptyExpr!8734 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))

(assert (=> d!829823 (= (getLanguageWitness!419 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))) e!1817302)))

(declare-fun b!2871328 () Bool)

(declare-fun c!464521 () Bool)

(assert (=> b!2871328 (= c!464521 (is-ElementMatch!8734 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))

(assert (=> b!2871328 (= e!1817301 e!1817303)))

(declare-fun b!2871329 () Bool)

(assert (=> b!2871329 (= c!464524 (is-Union!8734 (h!39791 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))))))))

(assert (=> b!2871329 (= e!1817305 e!1817299)))

(declare-fun b!2871330 () Bool)

(assert (=> b!2871330 (= e!1817299 e!1817304)))

(assert (=> b!2871330 (= lt!1017994 call!185442)))

(declare-fun c!464518 () Bool)

(assert (=> b!2871330 (= c!464518 (is-Some!6408 lt!1017994))))

(declare-fun b!2871331 () Bool)

(assert (=> b!2871331 (= e!1817300 lt!1017993)))

(declare-fun b!2871332 () Bool)

(assert (=> b!2871332 (= e!1817305 (Some!6408 Nil!34372))))

(declare-fun b!2871333 () Bool)

(assert (=> b!2871333 (= e!1817300 call!185443)))

(declare-fun b!2871334 () Bool)

(assert (=> b!2871334 (= e!1817298 None!6408)))

(assert (= (and d!829823 c!464520) b!2871327))

(assert (= (and d!829823 (not c!464520)) b!2871323))

(assert (= (and b!2871323 c!464519) b!2871325))

(assert (= (and b!2871323 (not c!464519)) b!2871328))

(assert (= (and b!2871328 c!464521) b!2871319))

(assert (= (and b!2871328 (not c!464521)) b!2871324))

(assert (= (and b!2871324 c!464522) b!2871332))

(assert (= (and b!2871324 (not c!464522)) b!2871329))

(assert (= (and b!2871329 c!464524) b!2871326))

(assert (= (and b!2871329 (not c!464524)) b!2871330))

(assert (= (and b!2871326 c!464525) b!2871331))

(assert (= (and b!2871326 (not c!464525)) b!2871333))

(assert (= (and b!2871330 c!464518) b!2871322))

(assert (= (and b!2871330 (not c!464518)) b!2871321))

(assert (= (and b!2871322 c!464523) b!2871320))

(assert (= (and b!2871322 (not c!464523)) b!2871334))

(assert (= (or b!2871333 b!2871322) bm!185438))

(assert (= (or b!2871326 b!2871330) bm!185437))

(declare-fun m!3289887 () Bool)

(assert (=> b!2871320 m!3289887))

(declare-fun m!3289889 () Bool)

(assert (=> bm!185437 m!3289889))

(declare-fun m!3289891 () Bool)

(assert (=> bm!185438 m!3289891))

(assert (=> b!2870758 d!829823))

(declare-fun d!829825 () Bool)

(assert (=> d!829825 (= (isEmpty!18711 (tail!4564 (get!10328 lt!1017832))) (is-Nil!34372 (tail!4564 (get!10328 lt!1017832))))))

(assert (=> d!829529 d!829825))

(assert (=> b!2870658 d!829741))

(assert (=> b!2870658 d!829743))

(declare-fun e!1817309 () Regex!8734)

(declare-fun call!185444 () Regex!8734)

(declare-fun call!185446 () Regex!8734)

(declare-fun b!2871335 () Bool)

(assert (=> b!2871335 (= e!1817309 (Union!8734 (Concat!14055 call!185444 (regTwo!17980 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) call!185446))))

(declare-fun d!829827 () Bool)

(declare-fun lt!1017995 () Regex!8734)

(assert (=> d!829827 (validRegex!3512 lt!1017995)))

(declare-fun e!1817306 () Regex!8734)

(assert (=> d!829827 (= lt!1017995 e!1817306)))

(declare-fun c!464527 () Bool)

(assert (=> d!829827 (= c!464527 (or (is-EmptyExpr!8734 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (is-EmptyLang!8734 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))

(assert (=> d!829827 (validRegex!3512 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))

(assert (=> d!829827 (= (derivativeStep!2317 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))) (head!6339 (v!34530 lt!1017835))) lt!1017995)))

(declare-fun b!2871336 () Bool)

(assert (=> b!2871336 (= e!1817306 EmptyLang!8734)))

(declare-fun b!2871337 () Bool)

(declare-fun c!464529 () Bool)

(assert (=> b!2871337 (= c!464529 (is-Union!8734 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun e!1817307 () Regex!8734)

(declare-fun e!1817310 () Regex!8734)

(assert (=> b!2871337 (= e!1817307 e!1817310)))

(declare-fun call!185447 () Regex!8734)

(declare-fun c!464528 () Bool)

(declare-fun bm!185439 () Bool)

(assert (=> bm!185439 (= call!185447 (derivativeStep!2317 (ite c!464529 (regOne!17981 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (ite c!464528 (reg!9063 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) (head!6339 (v!34530 lt!1017835))))))

(declare-fun b!2871338 () Bool)

(declare-fun e!1817308 () Regex!8734)

(declare-fun call!185445 () Regex!8734)

(assert (=> b!2871338 (= e!1817308 (Concat!14055 call!185445 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun bm!185440 () Bool)

(assert (=> bm!185440 (= call!185445 call!185447)))

(declare-fun b!2871339 () Bool)

(declare-fun c!464526 () Bool)

(assert (=> b!2871339 (= c!464526 (nullable!2684 (regOne!17980 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))))))

(assert (=> b!2871339 (= e!1817308 e!1817309)))

(declare-fun b!2871340 () Bool)

(assert (=> b!2871340 (= e!1817310 e!1817308)))

(assert (=> b!2871340 (= c!464528 (is-Star!8734 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2871341 () Bool)

(assert (=> b!2871341 (= e!1817306 e!1817307)))

(declare-fun c!464530 () Bool)

(assert (=> b!2871341 (= c!464530 (is-ElementMatch!8734 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))

(declare-fun b!2871342 () Bool)

(assert (=> b!2871342 (= e!1817309 (Union!8734 (Concat!14055 call!185444 (regTwo!17980 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) EmptyLang!8734))))

(declare-fun b!2871343 () Bool)

(assert (=> b!2871343 (= e!1817310 (Union!8734 call!185447 call!185446))))

(declare-fun bm!185441 () Bool)

(assert (=> bm!185441 (= call!185444 call!185445)))

(declare-fun b!2871344 () Bool)

(assert (=> b!2871344 (= e!1817307 (ite (= (head!6339 (v!34530 lt!1017835)) (c!464165 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) EmptyExpr!8734 EmptyLang!8734))))

(declare-fun bm!185442 () Bool)

(assert (=> bm!185442 (= call!185446 (derivativeStep!2317 (ite c!464529 (regTwo!17981 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464297 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184)))))) (head!6339 (v!34530 lt!1017835))))))

(assert (= (and d!829827 c!464527) b!2871336))

(assert (= (and d!829827 (not c!464527)) b!2871341))

(assert (= (and b!2871341 c!464530) b!2871344))

(assert (= (and b!2871341 (not c!464530)) b!2871337))

(assert (= (and b!2871337 c!464529) b!2871343))

(assert (= (and b!2871337 (not c!464529)) b!2871340))

(assert (= (and b!2871340 c!464528) b!2871338))

(assert (= (and b!2871340 (not c!464528)) b!2871339))

(assert (= (and b!2871339 c!464526) b!2871335))

(assert (= (and b!2871339 (not c!464526)) b!2871342))

(assert (= (or b!2871335 b!2871342) bm!185441))

(assert (= (or b!2871338 bm!185441) bm!185440))

(assert (= (or b!2871343 bm!185440) bm!185439))

(assert (= (or b!2871343 b!2871335) bm!185442))

(declare-fun m!3289893 () Bool)

(assert (=> d!829827 m!3289893))

(declare-fun m!3289895 () Bool)

(assert (=> d!829827 m!3289895))

(assert (=> bm!185439 m!3289109))

(declare-fun m!3289897 () Bool)

(assert (=> bm!185439 m!3289897))

(declare-fun m!3289899 () Bool)

(assert (=> b!2871339 m!3289899))

(assert (=> bm!185442 m!3289109))

(declare-fun m!3289901 () Bool)

(assert (=> bm!185442 m!3289901))

(assert (=> bm!185333 d!829827))

(assert (=> b!2870738 d!829697))

(declare-fun d!829829 () Bool)

(assert (=> d!829829 (= (isEmpty!18710 lt!1017924) (not (is-Some!6408 lt!1017924)))))

(assert (=> d!829583 d!829829))

(declare-fun bs!522089 () Bool)

(declare-fun d!829831 () Bool)

(assert (= bs!522089 (and d!829831 d!829551)))

(declare-fun lambda!107103 () Int)

(assert (=> bs!522089 (= (= lambda!107085 lambda!107057) (= lambda!107103 lambda!107083))))

(declare-fun bs!522090 () Bool)

(assert (= bs!522090 (and d!829831 d!829481)))

(assert (=> bs!522090 (not (= lambda!107103 lambda!107057))))

(declare-fun bs!522091 () Bool)

(assert (= bs!522091 (and d!829831 d!829583)))

(assert (=> bs!522091 (not (= lambda!107103 lambda!107085))))

(declare-fun bs!522092 () Bool)

(assert (= bs!522092 (and d!829831 d!829571)))

(assert (=> bs!522092 (= (= lambda!107085 lambda!107060) (= lambda!107103 lambda!107084))))

(declare-fun bs!522093 () Bool)

(assert (= bs!522093 (and d!829831 d!829485)))

(assert (=> bs!522093 (not (= lambda!107103 lambda!107060))))

(declare-fun bs!522094 () Bool)

(assert (= bs!522094 (and d!829831 d!829591)))

(assert (=> bs!522094 (not (= lambda!107103 lambda!107086))))

(declare-fun bs!522095 () Bool)

(assert (= bs!522095 (and d!829831 d!829509)))

(assert (=> bs!522095 (not (= lambda!107103 lambda!107070))))

(declare-fun bs!522096 () Bool)

(assert (= bs!522096 (and d!829831 d!829487)))

(assert (=> bs!522096 (not (= lambda!107103 lambda!107063))))

(declare-fun bs!522097 () Bool)

(assert (= bs!522097 (and d!829831 d!829735)))

(assert (=> bs!522097 (not (= lambda!107103 lambda!107100))))

(assert (=> d!829831 true))

(assert (=> d!829831 (< (dynLambda!14306 order!18125 lambda!107085) (dynLambda!14306 order!18125 lambda!107103))))

(assert (=> d!829831 (= (exists!1153 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))) lambda!107085) (not (forall!7079 (exprs!3194 (Context!5389 (t!233538 (exprs!3194 lt!1017833)))) lambda!107103)))))

(declare-fun bs!522098 () Bool)

(assert (= bs!522098 d!829831))

(declare-fun m!3289903 () Bool)

(assert (=> bs!522098 m!3289903))

(assert (=> d!829583 d!829831))

(declare-fun b!2871345 () Bool)

(declare-fun e!1817311 () Bool)

(declare-fun e!1817314 () Bool)

(assert (=> b!2871345 (= e!1817311 e!1817314)))

(declare-fun res!1191294 () Bool)

(assert (=> b!2871345 (= res!1191294 (not (nullable!2684 (reg!9063 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))))))

(assert (=> b!2871345 (=> (not res!1191294) (not e!1817314))))

(declare-fun b!2871346 () Bool)

(declare-fun e!1817313 () Bool)

(declare-fun call!185448 () Bool)

(assert (=> b!2871346 (= e!1817313 call!185448)))

(declare-fun bm!185443 () Bool)

(declare-fun call!185450 () Bool)

(declare-fun c!464532 () Bool)

(assert (=> bm!185443 (= call!185450 (validRegex!3512 (ite c!464532 (regTwo!17981 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))) (regOne!17980 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))))))

(declare-fun d!829833 () Bool)

(declare-fun res!1191296 () Bool)

(declare-fun e!1817317 () Bool)

(assert (=> d!829833 (=> res!1191296 e!1817317)))

(assert (=> d!829833 (= res!1191296 (is-ElementMatch!8734 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))))

(assert (=> d!829833 (= (validRegex!3512 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))) e!1817317)))

(declare-fun bm!185444 () Bool)

(declare-fun call!185449 () Bool)

(assert (=> bm!185444 (= call!185448 call!185449)))

(declare-fun c!464531 () Bool)

(declare-fun bm!185445 () Bool)

(assert (=> bm!185445 (= call!185449 (validRegex!3512 (ite c!464531 (reg!9063 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))) (ite c!464532 (regOne!17981 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))) (regTwo!17980 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371)))))))))))

(declare-fun b!2871347 () Bool)

(declare-fun res!1191293 () Bool)

(declare-fun e!1817316 () Bool)

(assert (=> b!2871347 (=> res!1191293 e!1817316)))

(assert (=> b!2871347 (= res!1191293 (not (is-Concat!14055 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371)))))))))

(declare-fun e!1817312 () Bool)

(assert (=> b!2871347 (= e!1817312 e!1817316)))

(declare-fun b!2871348 () Bool)

(assert (=> b!2871348 (= e!1817311 e!1817312)))

(assert (=> b!2871348 (= c!464532 (is-Union!8734 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))))

(declare-fun b!2871349 () Bool)

(assert (=> b!2871349 (= e!1817317 e!1817311)))

(assert (=> b!2871349 (= c!464531 (is-Star!8734 (h!39791 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371))))))))

(declare-fun b!2871350 () Bool)

(declare-fun res!1191297 () Bool)

(declare-fun e!1817315 () Bool)

(assert (=> b!2871350 (=> (not res!1191297) (not e!1817315))))

(assert (=> b!2871350 (= res!1191297 call!185448)))

(assert (=> b!2871350 (= e!1817312 e!1817315)))

(declare-fun b!2871351 () Bool)

(assert (=> b!2871351 (= e!1817316 e!1817313)))

(declare-fun res!1191295 () Bool)

(assert (=> b!2871351 (=> (not res!1191295) (not e!1817313))))

(assert (=> b!2871351 (= res!1191295 call!185450)))

(declare-fun b!2871352 () Bool)

(assert (=> b!2871352 (= e!1817314 call!185449)))

(declare-fun b!2871353 () Bool)

(assert (=> b!2871353 (= e!1817315 call!185450)))

(assert (= (and d!829833 (not res!1191296)) b!2871349))

(assert (= (and b!2871349 c!464531) b!2871345))

(assert (= (and b!2871349 (not c!464531)) b!2871348))

(assert (= (and b!2871345 res!1191294) b!2871352))

(assert (= (and b!2871348 c!464532) b!2871350))

(assert (= (and b!2871348 (not c!464532)) b!2871347))

(assert (= (and b!2871350 res!1191297) b!2871353))

(assert (= (and b!2871347 (not res!1191293)) b!2871351))

(assert (= (and b!2871351 res!1191295) b!2871346))

(assert (= (or b!2871353 b!2871351) bm!185443))

(assert (= (or b!2871350 b!2871346) bm!185444))

(assert (= (or b!2871352 bm!185444) bm!185445))

(declare-fun m!3289905 () Bool)

(assert (=> b!2871345 m!3289905))

(declare-fun m!3289907 () Bool)

(assert (=> bm!185443 m!3289907))

(declare-fun m!3289909 () Bool)

(assert (=> bm!185445 m!3289909))

(assert (=> bs!522035 d!829833))

(assert (=> b!2870646 d!829757))

(declare-fun bs!522099 () Bool)

(declare-fun d!829835 () Bool)

(assert (= bs!522099 (and d!829835 d!829551)))

(declare-fun lambda!107104 () Int)

(assert (=> bs!522099 (= (= lambda!107086 lambda!107057) (= lambda!107104 lambda!107083))))

(declare-fun bs!522100 () Bool)

(assert (= bs!522100 (and d!829835 d!829481)))

(assert (=> bs!522100 (not (= lambda!107104 lambda!107057))))

(declare-fun bs!522101 () Bool)

(assert (= bs!522101 (and d!829835 d!829583)))

(assert (=> bs!522101 (not (= lambda!107104 lambda!107085))))

(declare-fun bs!522102 () Bool)

(assert (= bs!522102 (and d!829835 d!829571)))

(assert (=> bs!522102 (= (= lambda!107086 lambda!107060) (= lambda!107104 lambda!107084))))

(declare-fun bs!522103 () Bool)

(assert (= bs!522103 (and d!829835 d!829485)))

(assert (=> bs!522103 (not (= lambda!107104 lambda!107060))))

(declare-fun bs!522104 () Bool)

(assert (= bs!522104 (and d!829835 d!829591)))

(assert (=> bs!522104 (not (= lambda!107104 lambda!107086))))

(declare-fun bs!522105 () Bool)

(assert (= bs!522105 (and d!829835 d!829509)))

(assert (=> bs!522105 (not (= lambda!107104 lambda!107070))))

(declare-fun bs!522106 () Bool)

(assert (= bs!522106 (and d!829835 d!829487)))

(assert (=> bs!522106 (not (= lambda!107104 lambda!107063))))

(declare-fun bs!522107 () Bool)

(assert (= bs!522107 (and d!829835 d!829831)))

(assert (=> bs!522107 (= (= lambda!107086 lambda!107085) (= lambda!107104 lambda!107103))))

(declare-fun bs!522108 () Bool)

(assert (= bs!522108 (and d!829835 d!829735)))

(assert (=> bs!522108 (not (= lambda!107104 lambda!107100))))

(assert (=> d!829835 true))

(assert (=> d!829835 (< (dynLambda!14306 order!18125 lambda!107086) (dynLambda!14306 order!18125 lambda!107104))))

(assert (=> d!829835 (= (exists!1153 (exprs!3194 lt!1017833) lambda!107086) (not (forall!7079 (exprs!3194 lt!1017833) lambda!107104)))))

(declare-fun bs!522109 () Bool)

(assert (= bs!522109 d!829835))

(declare-fun m!3289911 () Bool)

(assert (=> bs!522109 m!3289911))

(assert (=> d!829591 d!829835))

(declare-fun b!2871354 () Bool)

(declare-fun e!1817323 () Option!6409)

(assert (=> b!2871354 (= e!1817323 (Some!6408 (Cons!34372 (c!464165 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) Nil!34372)))))

(declare-fun b!2871355 () Bool)

(declare-fun e!1817318 () Option!6409)

(declare-fun lt!1017998 () Option!6409)

(declare-fun lt!1017996 () Option!6409)

(assert (=> b!2871355 (= e!1817318 (Some!6408 (++!8171 (v!34530 lt!1017998) (v!34530 lt!1017996))))))

(declare-fun b!2871356 () Bool)

(declare-fun e!1817324 () Option!6409)

(assert (=> b!2871356 (= e!1817324 None!6408)))

(declare-fun b!2871357 () Bool)

(declare-fun c!464538 () Bool)

(assert (=> b!2871357 (= c!464538 (is-Some!6408 lt!1017996))))

(declare-fun call!185452 () Option!6409)

(assert (=> b!2871357 (= lt!1017996 call!185452)))

(assert (=> b!2871357 (= e!1817324 e!1817318)))

(declare-fun b!2871358 () Bool)

(declare-fun e!1817322 () Option!6409)

(declare-fun e!1817321 () Option!6409)

(assert (=> b!2871358 (= e!1817322 e!1817321)))

(declare-fun c!464534 () Bool)

(assert (=> b!2871358 (= c!464534 (is-EmptyLang!8734 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun bm!185446 () Bool)

(declare-fun call!185451 () Option!6409)

(declare-fun c!464539 () Bool)

(assert (=> bm!185446 (= call!185451 (getLanguageWitness!419 (ite c!464539 (regOne!17981 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) (regOne!17980 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun b!2871359 () Bool)

(declare-fun e!1817325 () Option!6409)

(assert (=> b!2871359 (= e!1817323 e!1817325)))

(declare-fun c!464537 () Bool)

(assert (=> b!2871359 (= c!464537 (is-Star!8734 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2871360 () Bool)

(assert (=> b!2871360 (= e!1817321 None!6408)))

(declare-fun b!2871361 () Bool)

(declare-fun e!1817319 () Option!6409)

(declare-fun e!1817320 () Option!6409)

(assert (=> b!2871361 (= e!1817319 e!1817320)))

(declare-fun lt!1017997 () Option!6409)

(assert (=> b!2871361 (= lt!1017997 call!185451)))

(declare-fun c!464540 () Bool)

(assert (=> b!2871361 (= c!464540 (is-Some!6408 lt!1017997))))

(declare-fun b!2871362 () Bool)

(assert (=> b!2871362 (= e!1817322 (Some!6408 Nil!34372))))

(declare-fun bm!185447 () Bool)

(assert (=> bm!185447 (= call!185452 (getLanguageWitness!419 (ite c!464539 (regTwo!17981 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) (regTwo!17980 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun d!829837 () Bool)

(declare-fun c!464535 () Bool)

(assert (=> d!829837 (= c!464535 (is-EmptyExpr!8734 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> d!829837 (= (getLanguageWitness!419 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))) e!1817322)))

(declare-fun b!2871363 () Bool)

(declare-fun c!464536 () Bool)

(assert (=> b!2871363 (= c!464536 (is-ElementMatch!8734 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871363 (= e!1817321 e!1817323)))

(declare-fun b!2871364 () Bool)

(assert (=> b!2871364 (= c!464539 (is-Union!8734 (ite c!464305 (regOne!17981 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))) (regOne!17980 (ite c!464199 (regOne!17981 (h!39791 (exprs!3194 c!7184))) (regOne!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871364 (= e!1817325 e!1817319)))

(declare-fun b!2871365 () Bool)

(assert (=> b!2871365 (= e!1817319 e!1817324)))

(assert (=> b!2871365 (= lt!1017998 call!185451)))

(declare-fun c!464533 () Bool)

(assert (=> b!2871365 (= c!464533 (is-Some!6408 lt!1017998))))

(declare-fun b!2871366 () Bool)

(assert (=> b!2871366 (= e!1817320 lt!1017997)))

(declare-fun b!2871367 () Bool)

(assert (=> b!2871367 (= e!1817325 (Some!6408 Nil!34372))))

(declare-fun b!2871368 () Bool)

(assert (=> b!2871368 (= e!1817320 call!185452)))

(declare-fun b!2871369 () Bool)

(assert (=> b!2871369 (= e!1817318 None!6408)))

(assert (= (and d!829837 c!464535) b!2871362))

(assert (= (and d!829837 (not c!464535)) b!2871358))

(assert (= (and b!2871358 c!464534) b!2871360))

(assert (= (and b!2871358 (not c!464534)) b!2871363))

(assert (= (and b!2871363 c!464536) b!2871354))

(assert (= (and b!2871363 (not c!464536)) b!2871359))

(assert (= (and b!2871359 c!464537) b!2871367))

(assert (= (and b!2871359 (not c!464537)) b!2871364))

(assert (= (and b!2871364 c!464539) b!2871361))

(assert (= (and b!2871364 (not c!464539)) b!2871365))

(assert (= (and b!2871361 c!464540) b!2871366))

(assert (= (and b!2871361 (not c!464540)) b!2871368))

(assert (= (and b!2871365 c!464533) b!2871357))

(assert (= (and b!2871365 (not c!464533)) b!2871356))

(assert (= (and b!2871357 c!464538) b!2871355))

(assert (= (and b!2871357 (not c!464538)) b!2871369))

(assert (= (or b!2871368 b!2871357) bm!185447))

(assert (= (or b!2871361 b!2871365) bm!185446))

(declare-fun m!3289913 () Bool)

(assert (=> b!2871355 m!3289913))

(declare-fun m!3289915 () Bool)

(assert (=> bm!185446 m!3289915))

(declare-fun m!3289917 () Bool)

(assert (=> bm!185447 m!3289917))

(assert (=> bm!185334 d!829837))

(assert (=> b!2870786 d!829705))

(declare-fun b!2871370 () Bool)

(declare-fun e!1817331 () Option!6409)

(assert (=> b!2871370 (= e!1817331 (Some!6408 (Cons!34372 (c!464165 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))) Nil!34372)))))

(declare-fun b!2871371 () Bool)

(declare-fun e!1817326 () Option!6409)

(declare-fun lt!1018001 () Option!6409)

(declare-fun lt!1017999 () Option!6409)

(assert (=> b!2871371 (= e!1817326 (Some!6408 (++!8171 (v!34530 lt!1018001) (v!34530 lt!1017999))))))

(declare-fun b!2871372 () Bool)

(declare-fun e!1817332 () Option!6409)

(assert (=> b!2871372 (= e!1817332 None!6408)))

(declare-fun b!2871373 () Bool)

(declare-fun c!464546 () Bool)

(assert (=> b!2871373 (= c!464546 (is-Some!6408 lt!1017999))))

(declare-fun call!185454 () Option!6409)

(assert (=> b!2871373 (= lt!1017999 call!185454)))

(assert (=> b!2871373 (= e!1817332 e!1817326)))

(declare-fun b!2871374 () Bool)

(declare-fun e!1817330 () Option!6409)

(declare-fun e!1817329 () Option!6409)

(assert (=> b!2871374 (= e!1817330 e!1817329)))

(declare-fun c!464542 () Bool)

(assert (=> b!2871374 (= c!464542 (is-EmptyLang!8734 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(declare-fun c!464547 () Bool)

(declare-fun bm!185448 () Bool)

(declare-fun call!185453 () Option!6409)

(assert (=> bm!185448 (= call!185453 (getLanguageWitness!419 (ite c!464547 (regOne!17981 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))) (regOne!17980 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))))))))

(declare-fun b!2871375 () Bool)

(declare-fun e!1817333 () Option!6409)

(assert (=> b!2871375 (= e!1817331 e!1817333)))

(declare-fun c!464545 () Bool)

(assert (=> b!2871375 (= c!464545 (is-Star!8734 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(declare-fun b!2871376 () Bool)

(assert (=> b!2871376 (= e!1817329 None!6408)))

(declare-fun b!2871377 () Bool)

(declare-fun e!1817327 () Option!6409)

(declare-fun e!1817328 () Option!6409)

(assert (=> b!2871377 (= e!1817327 e!1817328)))

(declare-fun lt!1018000 () Option!6409)

(assert (=> b!2871377 (= lt!1018000 call!185453)))

(declare-fun c!464548 () Bool)

(assert (=> b!2871377 (= c!464548 (is-Some!6408 lt!1018000))))

(declare-fun b!2871378 () Bool)

(assert (=> b!2871378 (= e!1817330 (Some!6408 Nil!34372))))

(declare-fun bm!185449 () Bool)

(assert (=> bm!185449 (= call!185454 (getLanguageWitness!419 (ite c!464547 (regTwo!17981 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))) (regTwo!17980 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))))))))

(declare-fun d!829839 () Bool)

(declare-fun c!464543 () Bool)

(assert (=> d!829839 (= c!464543 (is-EmptyExpr!8734 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(assert (=> d!829839 (= (getLanguageWitness!419 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))) e!1817330)))

(declare-fun b!2871379 () Bool)

(declare-fun c!464544 () Bool)

(assert (=> b!2871379 (= c!464544 (is-ElementMatch!8734 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(assert (=> b!2871379 (= e!1817329 e!1817331)))

(declare-fun b!2871380 () Bool)

(assert (=> b!2871380 (= c!464547 (is-Union!8734 (ite c!464333 (regOne!17981 (h!39791 (exprs!3194 lt!1017833))) (regOne!17980 (h!39791 (exprs!3194 lt!1017833))))))))

(assert (=> b!2871380 (= e!1817333 e!1817327)))

(declare-fun b!2871381 () Bool)

(assert (=> b!2871381 (= e!1817327 e!1817332)))

(assert (=> b!2871381 (= lt!1018001 call!185453)))

(declare-fun c!464541 () Bool)

(assert (=> b!2871381 (= c!464541 (is-Some!6408 lt!1018001))))

(declare-fun b!2871382 () Bool)

(assert (=> b!2871382 (= e!1817328 lt!1018000)))

(declare-fun b!2871383 () Bool)

(assert (=> b!2871383 (= e!1817333 (Some!6408 Nil!34372))))

(declare-fun b!2871384 () Bool)

(assert (=> b!2871384 (= e!1817328 call!185454)))

(declare-fun b!2871385 () Bool)

(assert (=> b!2871385 (= e!1817326 None!6408)))

(assert (= (and d!829839 c!464543) b!2871378))

(assert (= (and d!829839 (not c!464543)) b!2871374))

(assert (= (and b!2871374 c!464542) b!2871376))

(assert (= (and b!2871374 (not c!464542)) b!2871379))

(assert (= (and b!2871379 c!464544) b!2871370))

(assert (= (and b!2871379 (not c!464544)) b!2871375))

(assert (= (and b!2871375 c!464545) b!2871383))

(assert (= (and b!2871375 (not c!464545)) b!2871380))

(assert (= (and b!2871380 c!464547) b!2871377))

(assert (= (and b!2871380 (not c!464547)) b!2871381))

(assert (= (and b!2871377 c!464548) b!2871382))

(assert (= (and b!2871377 (not c!464548)) b!2871384))

(assert (= (and b!2871381 c!464541) b!2871373))

(assert (= (and b!2871381 (not c!464541)) b!2871372))

(assert (= (and b!2871373 c!464546) b!2871371))

(assert (= (and b!2871373 (not c!464546)) b!2871385))

(assert (= (or b!2871384 b!2871373) bm!185449))

(assert (= (or b!2871377 b!2871381) bm!185448))

(declare-fun m!3289919 () Bool)

(assert (=> b!2871371 m!3289919))

(declare-fun m!3289921 () Bool)

(assert (=> bm!185448 m!3289921))

(declare-fun m!3289923 () Bool)

(assert (=> bm!185449 m!3289923))

(assert (=> bm!185343 d!829839))

(assert (=> bm!185338 d!829553))

(declare-fun e!1817339 () Option!6409)

(declare-fun b!2871386 () Bool)

(assert (=> b!2871386 (= e!1817339 (Some!6408 (Cons!34372 (c!464165 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) Nil!34372)))))

(declare-fun b!2871387 () Bool)

(declare-fun e!1817334 () Option!6409)

(declare-fun lt!1018004 () Option!6409)

(declare-fun lt!1018002 () Option!6409)

(assert (=> b!2871387 (= e!1817334 (Some!6408 (++!8171 (v!34530 lt!1018004) (v!34530 lt!1018002))))))

(declare-fun b!2871388 () Bool)

(declare-fun e!1817340 () Option!6409)

(assert (=> b!2871388 (= e!1817340 None!6408)))

(declare-fun b!2871389 () Bool)

(declare-fun c!464554 () Bool)

(assert (=> b!2871389 (= c!464554 (is-Some!6408 lt!1018002))))

(declare-fun call!185456 () Option!6409)

(assert (=> b!2871389 (= lt!1018002 call!185456)))

(assert (=> b!2871389 (= e!1817340 e!1817334)))

(declare-fun b!2871390 () Bool)

(declare-fun e!1817338 () Option!6409)

(declare-fun e!1817337 () Option!6409)

(assert (=> b!2871390 (= e!1817338 e!1817337)))

(declare-fun c!464550 () Bool)

(assert (=> b!2871390 (= c!464550 (is-EmptyLang!8734 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun call!185455 () Option!6409)

(declare-fun bm!185450 () Bool)

(declare-fun c!464555 () Bool)

(assert (=> bm!185450 (= call!185455 (getLanguageWitness!419 (ite c!464555 (regOne!17981 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) (regOne!17980 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun b!2871391 () Bool)

(declare-fun e!1817341 () Option!6409)

(assert (=> b!2871391 (= e!1817339 e!1817341)))

(declare-fun c!464553 () Bool)

(assert (=> b!2871391 (= c!464553 (is-Star!8734 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(declare-fun b!2871392 () Bool)

(assert (=> b!2871392 (= e!1817337 None!6408)))

(declare-fun b!2871393 () Bool)

(declare-fun e!1817335 () Option!6409)

(declare-fun e!1817336 () Option!6409)

(assert (=> b!2871393 (= e!1817335 e!1817336)))

(declare-fun lt!1018003 () Option!6409)

(assert (=> b!2871393 (= lt!1018003 call!185455)))

(declare-fun c!464556 () Bool)

(assert (=> b!2871393 (= c!464556 (is-Some!6408 lt!1018003))))

(declare-fun b!2871394 () Bool)

(assert (=> b!2871394 (= e!1817338 (Some!6408 Nil!34372))))

(declare-fun bm!185451 () Bool)

(assert (=> bm!185451 (= call!185456 (getLanguageWitness!419 (ite c!464555 (regTwo!17981 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) (regTwo!17980 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))))

(declare-fun d!829841 () Bool)

(declare-fun c!464551 () Bool)

(assert (=> d!829841 (= c!464551 (is-EmptyExpr!8734 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> d!829841 (= (getLanguageWitness!419 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))) e!1817338)))

(declare-fun c!464552 () Bool)

(declare-fun b!2871395 () Bool)

(assert (=> b!2871395 (= c!464552 (is-ElementMatch!8734 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871395 (= e!1817337 e!1817339)))

(declare-fun b!2871396 () Bool)

(assert (=> b!2871396 (= c!464555 (is-Union!8734 (ite c!464314 (regTwo!17981 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) (regTwo!17980 (ite c!464199 (regTwo!17981 (h!39791 (exprs!3194 c!7184))) (regTwo!17980 (h!39791 (exprs!3194 c!7184))))))))))

(assert (=> b!2871396 (= e!1817341 e!1817335)))

(declare-fun b!2871397 () Bool)

(assert (=> b!2871397 (= e!1817335 e!1817340)))

(assert (=> b!2871397 (= lt!1018004 call!185455)))

(declare-fun c!464549 () Bool)

(assert (=> b!2871397 (= c!464549 (is-Some!6408 lt!1018004))))

(declare-fun b!2871398 () Bool)

(assert (=> b!2871398 (= e!1817336 lt!1018003)))

(declare-fun b!2871399 () Bool)

(assert (=> b!2871399 (= e!1817341 (Some!6408 Nil!34372))))

(declare-fun b!2871400 () Bool)

(assert (=> b!2871400 (= e!1817336 call!185456)))

(declare-fun b!2871401 () Bool)

(assert (=> b!2871401 (= e!1817334 None!6408)))

(assert (= (and d!829841 c!464551) b!2871394))

(assert (= (and d!829841 (not c!464551)) b!2871390))

(assert (= (and b!2871390 c!464550) b!2871392))

(assert (= (and b!2871390 (not c!464550)) b!2871395))

(assert (= (and b!2871395 c!464552) b!2871386))

(assert (= (and b!2871395 (not c!464552)) b!2871391))

(assert (= (and b!2871391 c!464553) b!2871399))

(assert (= (and b!2871391 (not c!464553)) b!2871396))

(assert (= (and b!2871396 c!464555) b!2871393))

(assert (= (and b!2871396 (not c!464555)) b!2871397))

(assert (= (and b!2871393 c!464556) b!2871398))

(assert (= (and b!2871393 (not c!464556)) b!2871400))

(assert (= (and b!2871397 c!464549) b!2871389))

(assert (= (and b!2871397 (not c!464549)) b!2871388))

(assert (= (and b!2871389 c!464554) b!2871387))

(assert (= (and b!2871389 (not c!464554)) b!2871401))

(assert (= (or b!2871400 b!2871389) bm!185451))

(assert (= (or b!2871393 b!2871397) bm!185450))

(declare-fun m!3289925 () Bool)

(assert (=> b!2871387 m!3289925))

(declare-fun m!3289927 () Bool)

(assert (=> bm!185450 m!3289927))

(declare-fun m!3289929 () Bool)

(assert (=> bm!185451 m!3289929))

(assert (=> bm!185337 d!829841))

(declare-fun e!1817342 () Bool)

(assert (=> b!2870809 (= tp!923382 e!1817342)))

(declare-fun b!2871404 () Bool)

(declare-fun tp!923403 () Bool)

(assert (=> b!2871404 (= e!1817342 tp!923403)))

(declare-fun b!2871402 () Bool)

(assert (=> b!2871402 (= e!1817342 tp_is_empty!15069)))

(declare-fun b!2871405 () Bool)

(declare-fun tp!923401 () Bool)

(declare-fun tp!923404 () Bool)

(assert (=> b!2871405 (= e!1817342 (and tp!923401 tp!923404))))

(declare-fun b!2871403 () Bool)

(declare-fun tp!923402 () Bool)

(declare-fun tp!923405 () Bool)

(assert (=> b!2871403 (= e!1817342 (and tp!923402 tp!923405))))

(assert (= (and b!2870809 (is-ElementMatch!8734 (h!39791 (t!233538 (exprs!3194 c!7184))))) b!2871402))

(assert (= (and b!2870809 (is-Concat!14055 (h!39791 (t!233538 (exprs!3194 c!7184))))) b!2871403))

(assert (= (and b!2870809 (is-Star!8734 (h!39791 (t!233538 (exprs!3194 c!7184))))) b!2871404))

(assert (= (and b!2870809 (is-Union!8734 (h!39791 (t!233538 (exprs!3194 c!7184))))) b!2871405))

(declare-fun b!2871406 () Bool)

(declare-fun e!1817343 () Bool)

(declare-fun tp!923406 () Bool)

(declare-fun tp!923407 () Bool)

(assert (=> b!2871406 (= e!1817343 (and tp!923406 tp!923407))))

(assert (=> b!2870809 (= tp!923383 e!1817343)))

(assert (= (and b!2870809 (is-Cons!34371 (t!233538 (t!233538 (exprs!3194 c!7184))))) b!2871406))

(declare-fun e!1817344 () Bool)

(assert (=> b!2870807 (= tp!923379 e!1817344)))

(declare-fun b!2871409 () Bool)

(declare-fun tp!923410 () Bool)

(assert (=> b!2871409 (= e!1817344 tp!923410)))

(declare-fun b!2871407 () Bool)

(assert (=> b!2871407 (= e!1817344 tp_is_empty!15069)))

(declare-fun b!2871410 () Bool)

(declare-fun tp!923408 () Bool)

(declare-fun tp!923411 () Bool)

(assert (=> b!2871410 (= e!1817344 (and tp!923408 tp!923411))))

(declare-fun b!2871408 () Bool)

(declare-fun tp!923409 () Bool)

(declare-fun tp!923412 () Bool)

(assert (=> b!2871408 (= e!1817344 (and tp!923409 tp!923412))))

(assert (= (and b!2870807 (is-ElementMatch!8734 (reg!9063 (h!39791 (exprs!3194 c!7184))))) b!2871407))

(assert (= (and b!2870807 (is-Concat!14055 (reg!9063 (h!39791 (exprs!3194 c!7184))))) b!2871408))

(assert (= (and b!2870807 (is-Star!8734 (reg!9063 (h!39791 (exprs!3194 c!7184))))) b!2871409))

(assert (= (and b!2870807 (is-Union!8734 (reg!9063 (h!39791 (exprs!3194 c!7184))))) b!2871410))

(declare-fun e!1817345 () Bool)

(assert (=> b!2870806 (= tp!923378 e!1817345)))

(declare-fun b!2871413 () Bool)

(declare-fun tp!923415 () Bool)

(assert (=> b!2871413 (= e!1817345 tp!923415)))

(declare-fun b!2871411 () Bool)

(assert (=> b!2871411 (= e!1817345 tp_is_empty!15069)))

(declare-fun b!2871414 () Bool)

(declare-fun tp!923413 () Bool)

(declare-fun tp!923416 () Bool)

(assert (=> b!2871414 (= e!1817345 (and tp!923413 tp!923416))))

(declare-fun b!2871412 () Bool)

(declare-fun tp!923414 () Bool)

(declare-fun tp!923417 () Bool)

(assert (=> b!2871412 (= e!1817345 (and tp!923414 tp!923417))))

(assert (= (and b!2870806 (is-ElementMatch!8734 (regOne!17980 (h!39791 (exprs!3194 c!7184))))) b!2871411))

(assert (= (and b!2870806 (is-Concat!14055 (regOne!17980 (h!39791 (exprs!3194 c!7184))))) b!2871412))

(assert (= (and b!2870806 (is-Star!8734 (regOne!17980 (h!39791 (exprs!3194 c!7184))))) b!2871413))

(assert (= (and b!2870806 (is-Union!8734 (regOne!17980 (h!39791 (exprs!3194 c!7184))))) b!2871414))

(declare-fun e!1817346 () Bool)

(assert (=> b!2870806 (= tp!923381 e!1817346)))

(declare-fun b!2871417 () Bool)

(declare-fun tp!923420 () Bool)

(assert (=> b!2871417 (= e!1817346 tp!923420)))

(declare-fun b!2871415 () Bool)

(assert (=> b!2871415 (= e!1817346 tp_is_empty!15069)))

(declare-fun b!2871418 () Bool)

(declare-fun tp!923418 () Bool)

(declare-fun tp!923421 () Bool)

(assert (=> b!2871418 (= e!1817346 (and tp!923418 tp!923421))))

(declare-fun b!2871416 () Bool)

(declare-fun tp!923419 () Bool)

(declare-fun tp!923422 () Bool)

(assert (=> b!2871416 (= e!1817346 (and tp!923419 tp!923422))))

(assert (= (and b!2870806 (is-ElementMatch!8734 (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) b!2871415))

(assert (= (and b!2870806 (is-Concat!14055 (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) b!2871416))

(assert (= (and b!2870806 (is-Star!8734 (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) b!2871417))

(assert (= (and b!2870806 (is-Union!8734 (regTwo!17980 (h!39791 (exprs!3194 c!7184))))) b!2871418))

(declare-fun e!1817347 () Bool)

(assert (=> b!2870808 (= tp!923377 e!1817347)))

(declare-fun b!2871421 () Bool)

(declare-fun tp!923425 () Bool)

(assert (=> b!2871421 (= e!1817347 tp!923425)))

(declare-fun b!2871419 () Bool)

(assert (=> b!2871419 (= e!1817347 tp_is_empty!15069)))

(declare-fun b!2871422 () Bool)

(declare-fun tp!923423 () Bool)

(declare-fun tp!923426 () Bool)

(assert (=> b!2871422 (= e!1817347 (and tp!923423 tp!923426))))

(declare-fun b!2871420 () Bool)

(declare-fun tp!923424 () Bool)

(declare-fun tp!923427 () Bool)

(assert (=> b!2871420 (= e!1817347 (and tp!923424 tp!923427))))

(assert (= (and b!2870808 (is-ElementMatch!8734 (regOne!17981 (h!39791 (exprs!3194 c!7184))))) b!2871419))

(assert (= (and b!2870808 (is-Concat!14055 (regOne!17981 (h!39791 (exprs!3194 c!7184))))) b!2871420))

(assert (= (and b!2870808 (is-Star!8734 (regOne!17981 (h!39791 (exprs!3194 c!7184))))) b!2871421))

(assert (= (and b!2870808 (is-Union!8734 (regOne!17981 (h!39791 (exprs!3194 c!7184))))) b!2871422))

(declare-fun e!1817348 () Bool)

(assert (=> b!2870808 (= tp!923380 e!1817348)))

(declare-fun b!2871425 () Bool)

(declare-fun tp!923430 () Bool)

(assert (=> b!2871425 (= e!1817348 tp!923430)))

(declare-fun b!2871423 () Bool)

(assert (=> b!2871423 (= e!1817348 tp_is_empty!15069)))

(declare-fun b!2871426 () Bool)

(declare-fun tp!923428 () Bool)

(declare-fun tp!923431 () Bool)

(assert (=> b!2871426 (= e!1817348 (and tp!923428 tp!923431))))

(declare-fun b!2871424 () Bool)

(declare-fun tp!923429 () Bool)

(declare-fun tp!923432 () Bool)

(assert (=> b!2871424 (= e!1817348 (and tp!923429 tp!923432))))

(assert (= (and b!2870808 (is-ElementMatch!8734 (regTwo!17981 (h!39791 (exprs!3194 c!7184))))) b!2871423))

(assert (= (and b!2870808 (is-Concat!14055 (regTwo!17981 (h!39791 (exprs!3194 c!7184))))) b!2871424))

(assert (= (and b!2870808 (is-Star!8734 (regTwo!17981 (h!39791 (exprs!3194 c!7184))))) b!2871425))

(assert (= (and b!2870808 (is-Union!8734 (regTwo!17981 (h!39791 (exprs!3194 c!7184))))) b!2871426))

(declare-fun b_lambda!86019 () Bool)

(assert (= b_lambda!86013 (or d!829487 b_lambda!86019)))

(declare-fun bs!522110 () Bool)

(declare-fun d!829843 () Bool)

(assert (= bs!522110 (and d!829843 d!829487)))

(assert (=> bs!522110 (= (dynLambda!14307 lambda!107063 (h!39791 (t!233538 (exprs!3194 c!7184)))) (validRegex!3512 (h!39791 (t!233538 (exprs!3194 c!7184)))))))

(declare-fun m!3289931 () Bool)

(assert (=> bs!522110 m!3289931))

(assert (=> b!2871173 d!829843))

(declare-fun b_lambda!86021 () Bool)

(assert (= b_lambda!86015 (or d!829509 b_lambda!86021)))

(declare-fun bs!522111 () Bool)

(declare-fun d!829845 () Bool)

(assert (= bs!522111 (and d!829845 d!829509)))

(assert (=> bs!522111 (= (dynLambda!14307 lambda!107070 (h!39791 (t!233538 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371)))))) (validRegex!3512 (h!39791 (t!233538 (exprs!3194 (Context!5389 (Cons!34371 (h!39791 (exprs!3194 c!7184)) Nil!34371)))))))))

(declare-fun m!3289933 () Bool)

(assert (=> bs!522111 m!3289933))

(assert (=> b!2871175 d!829845))

(declare-fun b_lambda!86023 () Bool)

(assert (= b_lambda!86011 (or d!829551 b_lambda!86023)))

(declare-fun bs!522112 () Bool)

(declare-fun d!829847 () Bool)

(assert (= bs!522112 (and d!829847 d!829551)))

(assert (=> bs!522112 (= (dynLambda!14307 lambda!107083 (h!39791 (exprs!3194 lt!1017833))) (not (dynLambda!14307 lambda!107057 (h!39791 (exprs!3194 lt!1017833)))))))

(declare-fun b_lambda!86027 () Bool)

(assert (=> (not b_lambda!86027) (not bs!522112)))

(declare-fun m!3289935 () Bool)

(assert (=> bs!522112 m!3289935))

(assert (=> b!2871082 d!829847))

(declare-fun b_lambda!86025 () Bool)

(assert (= b_lambda!86017 (or d!829571 b_lambda!86025)))

(declare-fun bs!522113 () Bool)

(declare-fun d!829849 () Bool)

(assert (= bs!522113 (and d!829849 d!829571)))

(assert (=> bs!522113 (= (dynLambda!14307 lambda!107084 (h!39791 (exprs!3194 c!7184))) (not (dynLambda!14307 lambda!107060 (h!39791 (exprs!3194 c!7184)))))))

(declare-fun b_lambda!86029 () Bool)

(assert (=> (not b_lambda!86029) (not bs!522113)))

(declare-fun m!3289937 () Bool)

(assert (=> bs!522113 m!3289937))

(assert (=> b!2871234 d!829849))

(push 1)

(assert (not b!2871253))

(assert (not bm!185406))

(assert (not d!829713))

(assert (not b!2871422))

(assert (not b!2871052))

(assert (not b!2871251))

(assert (not b!2871405))

(assert (not b!2871299))

(assert (not b!2871238))

(assert (not b!2871284))

(assert (not bm!185428))

(assert (not bm!185420))

(assert (not b!2871020))

(assert (not b!2871418))

(assert (not bm!185418))

(assert (not bm!185380))

(assert (not b!2871416))

(assert (not b_lambda!86025))

(assert (not bm!185434))

(assert (not b!2871285))

(assert (not b!2871283))

(assert (not b!2871207))

(assert (not b!2871371))

(assert (not b!2871178))

(assert (not b!2871077))

(assert (not bm!185399))

(assert (not bm!185409))

(assert (not b!2871031))

(assert (not d!829783))

(assert (not d!829717))

(assert (not b!2871426))

(assert (not b!2871080))

(assert (not b!2871133))

(assert (not d!829761))

(assert (not b!2871355))

(assert (not bm!185393))

(assert (not d!829695))

(assert (not b!2871094))

(assert (not b!2871345))

(assert (not d!829735))

(assert (not b!2871095))

(assert (not bm!185423))

(assert (not bm!185436))

(assert (not bm!185448))

(assert (not b!2871049))

(assert (not b!2871099))

(assert (not bs!522110))

(assert (not b!2871245))

(assert (not b!2871241))

(assert (not b!2871028))

(assert (not b_lambda!86001))

(assert (not b!2871083))

(assert (not d!829721))

(assert (not d!829693))

(assert (not d!829703))

(assert (not b!2871237))

(assert (not b_lambda!86019))

(assert (not b!2871055))

(assert (not bm!185385))

(assert (not b!2871268))

(assert (not d!829701))

(assert (not d!829807))

(assert (not d!829737))

(assert (not b!2871248))

(assert (not bm!185389))

(assert (not b!2871025))

(assert (not bm!185398))

(assert (not b!2871118))

(assert (not bs!522111))

(assert (not b!2871317))

(assert (not b!2871320))

(assert (not d!829827))

(assert (not b!2871102))

(assert (not b_lambda!86023))

(assert (not b!2871073))

(assert (not bm!185390))

(assert (not bm!185410))

(assert (not b!2871121))

(assert (not d!829781))

(assert (not b!2871300))

(assert (not b!2871062))

(assert (not bm!185401))

(assert (not b!2871413))

(assert (not bm!185449))

(assert (not b!2871127))

(assert (not b!2871057))

(assert (not b!2871172))

(assert (not b!2871038))

(assert (not bm!185392))

(assert (not bm!185443))

(assert (not b!2871403))

(assert (not b!2871119))

(assert (not bm!185450))

(assert (not d!829729))

(assert (not bm!185416))

(assert (not b!2871410))

(assert (not b_lambda!86027))

(assert (not b!2871203))

(assert (not b!2871425))

(assert (not b!2871301))

(assert (not d!829691))

(assert (not b!2871174))

(assert (not b!2871079))

(assert (not bm!185437))

(assert tp_is_empty!15069)

(assert (not bm!185395))

(assert (not b!2871339))

(assert (not b!2871033))

(assert (not b!2871408))

(assert (not b!2871044))

(assert (not d!829787))

(assert (not b!2871297))

(assert (not d!829809))

(assert (not d!829727))

(assert (not bm!185407))

(assert (not bm!185439))

(assert (not bm!185384))

(assert (not b!2871412))

(assert (not b!2871193))

(assert (not bm!185430))

(assert (not b!2871295))

(assert (not b!2871409))

(assert (not b!2871302))

(assert (not b!2871424))

(assert (not bm!185394))

(assert (not d!829731))

(assert (not b!2871205))

(assert (not b_lambda!85999))

(assert (not b!2871421))

(assert (not bm!185408))

(assert (not bm!185446))

(assert (not bm!185381))

(assert (not bm!185427))

(assert (not d!829835))

(assert (not bm!185442))

(assert (not b!2871274))

(assert (not b!2871176))

(assert (not b!2871316))

(assert (not b!2871219))

(assert (not d!829747))

(assert (not b!2871170))

(assert (not bm!185438))

(assert (not b!2871258))

(assert (not bm!185433))

(assert (not bm!185419))

(assert (not bm!185412))

(assert (not b!2871240))

(assert (not b!2871075))

(assert (not bm!185445))

(assert (not d!829725))

(assert (not bm!185447))

(assert (not d!829775))

(assert (not b!2871417))

(assert (not bm!185424))

(assert (not bm!185386))

(assert (not d!829821))

(assert (not b!2871406))

(assert (not d!829817))

(assert (not b!2871312))

(assert (not d!829793))

(assert (not b!2871404))

(assert (not b!2871021))

(assert (not b!2871414))

(assert (not b!2871387))

(assert (not b!2871084))

(assert (not b!2871168))

(assert (not b!2871313))

(assert (not bm!185431))

(assert (not b!2871045))

(assert (not b_lambda!86029))

(assert (not d!829785))

(assert (not b!2871235))

(assert (not bm!185413))

(assert (not b!2871420))

(assert (not d!829831))

(assert (not b!2871212))

(assert (not b!2871098))

(assert (not bm!185451))

(assert (not d!829791))

(assert (not bm!185417))

(assert (not b_lambda!86021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

