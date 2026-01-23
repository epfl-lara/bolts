; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88964 () Bool)

(assert start!88964)

(declare-fun b!1021886 () Bool)

(assert (=> b!1021886 true))

(assert (=> b!1021886 true))

(declare-fun lambda!36356 () Int)

(declare-fun lambda!36355 () Int)

(assert (=> b!1021886 (not (= lambda!36356 lambda!36355))))

(assert (=> b!1021886 true))

(assert (=> b!1021886 true))

(declare-fun b!1021880 () Bool)

(declare-fun res!459181 () Bool)

(declare-fun e!652485 () Bool)

(assert (=> b!1021880 (=> res!459181 e!652485)))

(declare-datatypes ((C!6218 0))(
  ( (C!6219 (val!3357 Int)) )
))
(declare-datatypes ((List!10054 0))(
  ( (Nil!10038) (Cons!10038 (h!15439 C!6218) (t!101100 List!10054)) )
))
(declare-fun s!10566 () List!10054)

(declare-fun ++!2742 (List!10054 List!10054) List!10054)

(assert (=> b!1021880 (= res!459181 (not (= (++!2742 Nil!10038 s!10566) s!10566)))))

(declare-fun b!1021881 () Bool)

(declare-fun e!652487 () Bool)

(declare-fun e!652482 () Bool)

(assert (=> b!1021881 (= e!652487 (not e!652482))))

(declare-fun res!459183 () Bool)

(assert (=> b!1021881 (=> res!459183 e!652482)))

(declare-fun lt!354504 () Bool)

(declare-datatypes ((Regex!2824 0))(
  ( (ElementMatch!2824 (c!169365 C!6218)) (Concat!4657 (regOne!6160 Regex!2824) (regTwo!6160 Regex!2824)) (EmptyExpr!2824) (Star!2824 (reg!3153 Regex!2824)) (EmptyLang!2824) (Union!2824 (regOne!6161 Regex!2824) (regTwo!6161 Regex!2824)) )
))
(declare-fun r!15766 () Regex!2824)

(assert (=> b!1021881 (= res!459183 (or lt!354504 (not (is-Concat!4657 r!15766)) (not (is-EmptyExpr!2824 (regOne!6160 r!15766)))))))

(declare-fun matchRSpec!623 (Regex!2824 List!10054) Bool)

(assert (=> b!1021881 (= lt!354504 (matchRSpec!623 r!15766 s!10566))))

(declare-fun matchR!1360 (Regex!2824 List!10054) Bool)

(assert (=> b!1021881 (= lt!354504 (matchR!1360 r!15766 s!10566))))

(declare-datatypes ((Unit!15323 0))(
  ( (Unit!15324) )
))
(declare-fun lt!354496 () Unit!15323)

(declare-fun mainMatchTheorem!623 (Regex!2824 List!10054) Unit!15323)

(assert (=> b!1021881 (= lt!354496 (mainMatchTheorem!623 r!15766 s!10566))))

(declare-fun b!1021882 () Bool)

(declare-fun e!652484 () Bool)

(assert (=> b!1021882 (= e!652484 e!652485)))

(declare-fun res!459179 () Bool)

(assert (=> b!1021882 (=> res!459179 e!652485)))

(declare-fun lt!354497 () Bool)

(declare-fun lt!354502 () Bool)

(assert (=> b!1021882 (= res!459179 (or (not lt!354497) (not lt!354502)))))

(assert (=> b!1021882 (= lt!354502 lt!354497)))

(declare-fun lt!354499 () Regex!2824)

(assert (=> b!1021882 (= lt!354497 (matchR!1360 lt!354499 s!10566))))

(assert (=> b!1021882 (= lt!354502 (matchR!1360 (regTwo!6160 r!15766) s!10566))))

(declare-fun removeUselessConcat!393 (Regex!2824) Regex!2824)

(assert (=> b!1021882 (= lt!354499 (removeUselessConcat!393 (regTwo!6160 r!15766)))))

(declare-fun lt!354498 () Unit!15323)

(declare-fun lemmaRemoveUselessConcatSound!233 (Regex!2824 List!10054) Unit!15323)

(assert (=> b!1021882 (= lt!354498 (lemmaRemoveUselessConcatSound!233 (regTwo!6160 r!15766) s!10566))))

(declare-fun b!1021883 () Bool)

(declare-fun e!652483 () Bool)

(declare-fun tp_is_empty!5291 () Bool)

(declare-fun tp!310372 () Bool)

(assert (=> b!1021883 (= e!652483 (and tp_is_empty!5291 tp!310372))))

(declare-fun b!1021884 () Bool)

(declare-fun res!459180 () Bool)

(assert (=> b!1021884 (=> res!459180 e!652484)))

(declare-datatypes ((tuple2!11430 0))(
  ( (tuple2!11431 (_1!6541 List!10054) (_2!6541 List!10054)) )
))
(declare-datatypes ((Option!2357 0))(
  ( (None!2356) (Some!2356 (v!19773 tuple2!11430)) )
))
(declare-fun lt!354501 () Option!2357)

(declare-fun isEmpty!6395 (Option!2357) Bool)

(assert (=> b!1021884 (= res!459180 (not (isEmpty!6395 lt!354501)))))

(declare-fun res!459184 () Bool)

(assert (=> start!88964 (=> (not res!459184) (not e!652487))))

(declare-fun validRegex!1293 (Regex!2824) Bool)

(assert (=> start!88964 (= res!459184 (validRegex!1293 r!15766))))

(assert (=> start!88964 e!652487))

(declare-fun e!652486 () Bool)

(assert (=> start!88964 e!652486))

(assert (=> start!88964 e!652483))

(declare-fun b!1021885 () Bool)

(declare-fun tp!310370 () Bool)

(declare-fun tp!310369 () Bool)

(assert (=> b!1021885 (= e!652486 (and tp!310370 tp!310369))))

(assert (=> b!1021886 (= e!652482 e!652484)))

(declare-fun res!459182 () Bool)

(assert (=> b!1021886 (=> res!459182 e!652484)))

(declare-fun isEmpty!6396 (List!10054) Bool)

(assert (=> b!1021886 (= res!459182 (isEmpty!6396 s!10566))))

(declare-fun Exists!553 (Int) Bool)

(assert (=> b!1021886 (= (Exists!553 lambda!36355) (Exists!553 lambda!36356))))

(declare-fun lt!354500 () Unit!15323)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!255 (Regex!2824 Regex!2824 List!10054) Unit!15323)

(assert (=> b!1021886 (= lt!354500 (lemmaExistCutMatchRandMatchRSpecEquivalent!255 EmptyExpr!2824 (regTwo!6160 r!15766) s!10566))))

(declare-fun isDefined!1999 (Option!2357) Bool)

(assert (=> b!1021886 (= (isDefined!1999 lt!354501) (Exists!553 lambda!36355))))

(declare-fun findConcatSeparation!463 (Regex!2824 Regex!2824 List!10054 List!10054 List!10054) Option!2357)

(assert (=> b!1021886 (= lt!354501 (findConcatSeparation!463 EmptyExpr!2824 (regTwo!6160 r!15766) Nil!10038 s!10566 s!10566))))

(declare-fun lt!354503 () Unit!15323)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!463 (Regex!2824 Regex!2824 List!10054) Unit!15323)

(assert (=> b!1021886 (= lt!354503 (lemmaFindConcatSeparationEquivalentToExists!463 EmptyExpr!2824 (regTwo!6160 r!15766) s!10566))))

(declare-fun b!1021887 () Bool)

(declare-fun tp!310374 () Bool)

(assert (=> b!1021887 (= e!652486 tp!310374)))

(declare-fun b!1021888 () Bool)

(declare-fun res!459185 () Bool)

(assert (=> b!1021888 (=> res!459185 e!652485)))

(assert (=> b!1021888 (= res!459185 (not (validRegex!1293 (regTwo!6160 r!15766))))))

(declare-fun b!1021889 () Bool)

(assert (=> b!1021889 (= e!652486 tp_is_empty!5291)))

(declare-fun b!1021890 () Bool)

(declare-fun tp!310371 () Bool)

(declare-fun tp!310373 () Bool)

(assert (=> b!1021890 (= e!652486 (and tp!310371 tp!310373))))

(declare-fun b!1021891 () Bool)

(declare-fun isPrefix!1006 (List!10054 List!10054) Bool)

(assert (=> b!1021891 (= e!652485 (isPrefix!1006 Nil!10038 Nil!10038))))

(assert (= (and start!88964 res!459184) b!1021881))

(assert (= (and b!1021881 (not res!459183)) b!1021886))

(assert (= (and b!1021886 (not res!459182)) b!1021884))

(assert (= (and b!1021884 (not res!459180)) b!1021882))

(assert (= (and b!1021882 (not res!459179)) b!1021888))

(assert (= (and b!1021888 (not res!459185)) b!1021880))

(assert (= (and b!1021880 (not res!459181)) b!1021891))

(assert (= (and start!88964 (is-ElementMatch!2824 r!15766)) b!1021889))

(assert (= (and start!88964 (is-Concat!4657 r!15766)) b!1021890))

(assert (= (and start!88964 (is-Star!2824 r!15766)) b!1021887))

(assert (= (and start!88964 (is-Union!2824 r!15766)) b!1021885))

(assert (= (and start!88964 (is-Cons!10038 s!10566)) b!1021883))

(declare-fun m!1200389 () Bool)

(assert (=> b!1021891 m!1200389))

(declare-fun m!1200391 () Bool)

(assert (=> b!1021886 m!1200391))

(declare-fun m!1200393 () Bool)

(assert (=> b!1021886 m!1200393))

(declare-fun m!1200395 () Bool)

(assert (=> b!1021886 m!1200395))

(declare-fun m!1200397 () Bool)

(assert (=> b!1021886 m!1200397))

(declare-fun m!1200399 () Bool)

(assert (=> b!1021886 m!1200399))

(declare-fun m!1200401 () Bool)

(assert (=> b!1021886 m!1200401))

(declare-fun m!1200403 () Bool)

(assert (=> b!1021886 m!1200403))

(assert (=> b!1021886 m!1200393))

(declare-fun m!1200405 () Bool)

(assert (=> start!88964 m!1200405))

(declare-fun m!1200407 () Bool)

(assert (=> b!1021882 m!1200407))

(declare-fun m!1200409 () Bool)

(assert (=> b!1021882 m!1200409))

(declare-fun m!1200411 () Bool)

(assert (=> b!1021882 m!1200411))

(declare-fun m!1200413 () Bool)

(assert (=> b!1021882 m!1200413))

(declare-fun m!1200415 () Bool)

(assert (=> b!1021884 m!1200415))

(declare-fun m!1200417 () Bool)

(assert (=> b!1021888 m!1200417))

(declare-fun m!1200419 () Bool)

(assert (=> b!1021881 m!1200419))

(declare-fun m!1200421 () Bool)

(assert (=> b!1021881 m!1200421))

(declare-fun m!1200423 () Bool)

(assert (=> b!1021881 m!1200423))

(declare-fun m!1200425 () Bool)

(assert (=> b!1021880 m!1200425))

(push 1)

(assert (not b!1021882))

(assert (not b!1021886))

(assert tp_is_empty!5291)

(assert (not b!1021890))

(assert (not b!1021887))

(assert (not b!1021885))

(assert (not b!1021880))

(assert (not b!1021883))

(assert (not b!1021881))

(assert (not b!1021891))

(assert (not b!1021888))

(assert (not b!1021884))

(assert (not start!88964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!69995 () Bool)

(declare-fun call!70001 () Bool)

(declare-fun call!70002 () Bool)

(assert (=> bm!69995 (= call!70001 call!70002)))

(declare-fun b!1021966 () Bool)

(declare-fun e!652528 () Bool)

(declare-fun e!652531 () Bool)

(assert (=> b!1021966 (= e!652528 e!652531)))

(declare-fun c!169371 () Bool)

(assert (=> b!1021966 (= c!169371 (is-Star!2824 r!15766))))

(declare-fun b!1021968 () Bool)

(declare-fun e!652532 () Bool)

(declare-fun call!70000 () Bool)

(assert (=> b!1021968 (= e!652532 call!70000)))

(declare-fun b!1021969 () Bool)

(declare-fun res!459231 () Bool)

(declare-fun e!652527 () Bool)

(assert (=> b!1021969 (=> res!459231 e!652527)))

(assert (=> b!1021969 (= res!459231 (not (is-Concat!4657 r!15766)))))

(declare-fun e!652530 () Bool)

(assert (=> b!1021969 (= e!652530 e!652527)))

(declare-fun bm!69996 () Bool)

(declare-fun c!169372 () Bool)

(assert (=> bm!69996 (= call!70002 (validRegex!1293 (ite c!169371 (reg!3153 r!15766) (ite c!169372 (regOne!6161 r!15766) (regOne!6160 r!15766)))))))

(declare-fun b!1021967 () Bool)

(declare-fun e!652526 () Bool)

(assert (=> b!1021967 (= e!652526 call!70002)))

(declare-fun d!294492 () Bool)

(declare-fun res!459233 () Bool)

(assert (=> d!294492 (=> res!459233 e!652528)))

(assert (=> d!294492 (= res!459233 (is-ElementMatch!2824 r!15766))))

(assert (=> d!294492 (= (validRegex!1293 r!15766) e!652528)))

(declare-fun bm!69997 () Bool)

(assert (=> bm!69997 (= call!70000 (validRegex!1293 (ite c!169372 (regTwo!6161 r!15766) (regTwo!6160 r!15766))))))

(declare-fun b!1021970 () Bool)

(assert (=> b!1021970 (= e!652531 e!652530)))

(assert (=> b!1021970 (= c!169372 (is-Union!2824 r!15766))))

(declare-fun b!1021971 () Bool)

(assert (=> b!1021971 (= e!652531 e!652526)))

(declare-fun res!459230 () Bool)

(declare-fun nullable!927 (Regex!2824) Bool)

(assert (=> b!1021971 (= res!459230 (not (nullable!927 (reg!3153 r!15766))))))

(assert (=> b!1021971 (=> (not res!459230) (not e!652526))))

(declare-fun b!1021972 () Bool)

(assert (=> b!1021972 (= e!652527 e!652532)))

(declare-fun res!459229 () Bool)

(assert (=> b!1021972 (=> (not res!459229) (not e!652532))))

(assert (=> b!1021972 (= res!459229 call!70001)))

(declare-fun b!1021973 () Bool)

(declare-fun e!652529 () Bool)

(assert (=> b!1021973 (= e!652529 call!70000)))

(declare-fun b!1021974 () Bool)

(declare-fun res!459232 () Bool)

(assert (=> b!1021974 (=> (not res!459232) (not e!652529))))

(assert (=> b!1021974 (= res!459232 call!70001)))

(assert (=> b!1021974 (= e!652530 e!652529)))

(assert (= (and d!294492 (not res!459233)) b!1021966))

(assert (= (and b!1021966 c!169371) b!1021971))

(assert (= (and b!1021966 (not c!169371)) b!1021970))

(assert (= (and b!1021971 res!459230) b!1021967))

(assert (= (and b!1021970 c!169372) b!1021974))

(assert (= (and b!1021970 (not c!169372)) b!1021969))

(assert (= (and b!1021974 res!459232) b!1021973))

(assert (= (and b!1021969 (not res!459231)) b!1021972))

(assert (= (and b!1021972 res!459229) b!1021968))

(assert (= (or b!1021973 b!1021968) bm!69997))

(assert (= (or b!1021974 b!1021972) bm!69995))

(assert (= (or b!1021967 bm!69995) bm!69996))

(declare-fun m!1200465 () Bool)

(assert (=> bm!69996 m!1200465))

(declare-fun m!1200467 () Bool)

(assert (=> bm!69997 m!1200467))

(declare-fun m!1200469 () Bool)

(assert (=> b!1021971 m!1200469))

(assert (=> start!88964 d!294492))

(declare-fun d!294498 () Bool)

(assert (=> d!294498 (= (isEmpty!6395 lt!354501) (not (is-Some!2356 lt!354501)))))

(assert (=> b!1021884 d!294498))

(declare-fun b!1021993 () Bool)

(declare-fun e!652545 () Bool)

(declare-fun tail!1445 (List!10054) List!10054)

(assert (=> b!1021993 (= e!652545 (isPrefix!1006 (tail!1445 Nil!10038) (tail!1445 Nil!10038)))))

(declare-fun d!294500 () Bool)

(declare-fun e!652546 () Bool)

(assert (=> d!294500 e!652546))

(declare-fun res!459250 () Bool)

(assert (=> d!294500 (=> res!459250 e!652546)))

(declare-fun lt!354536 () Bool)

(assert (=> d!294500 (= res!459250 (not lt!354536))))

(declare-fun e!652547 () Bool)

(assert (=> d!294500 (= lt!354536 e!652547)))

(declare-fun res!459253 () Bool)

(assert (=> d!294500 (=> res!459253 e!652547)))

(assert (=> d!294500 (= res!459253 (is-Nil!10038 Nil!10038))))

(assert (=> d!294500 (= (isPrefix!1006 Nil!10038 Nil!10038) lt!354536)))

(declare-fun b!1021991 () Bool)

(assert (=> b!1021991 (= e!652547 e!652545)))

(declare-fun res!459252 () Bool)

(assert (=> b!1021991 (=> (not res!459252) (not e!652545))))

(assert (=> b!1021991 (= res!459252 (not (is-Nil!10038 Nil!10038)))))

(declare-fun b!1021994 () Bool)

(declare-fun size!7982 (List!10054) Int)

(assert (=> b!1021994 (= e!652546 (>= (size!7982 Nil!10038) (size!7982 Nil!10038)))))

(declare-fun b!1021992 () Bool)

(declare-fun res!459251 () Bool)

(assert (=> b!1021992 (=> (not res!459251) (not e!652545))))

(declare-fun head!1883 (List!10054) C!6218)

(assert (=> b!1021992 (= res!459251 (= (head!1883 Nil!10038) (head!1883 Nil!10038)))))

(assert (= (and d!294500 (not res!459253)) b!1021991))

(assert (= (and b!1021991 res!459252) b!1021992))

(assert (= (and b!1021992 res!459251) b!1021993))

(assert (= (and d!294500 (not res!459250)) b!1021994))

(declare-fun m!1200471 () Bool)

(assert (=> b!1021993 m!1200471))

(assert (=> b!1021993 m!1200471))

(assert (=> b!1021993 m!1200471))

(assert (=> b!1021993 m!1200471))

(declare-fun m!1200473 () Bool)

(assert (=> b!1021993 m!1200473))

(declare-fun m!1200475 () Bool)

(assert (=> b!1021994 m!1200475))

(assert (=> b!1021994 m!1200475))

(declare-fun m!1200477 () Bool)

(assert (=> b!1021992 m!1200477))

(assert (=> b!1021992 m!1200477))

(assert (=> b!1021891 d!294500))

(declare-fun b!1022009 () Bool)

(declare-fun res!459262 () Bool)

(declare-fun e!652556 () Bool)

(assert (=> b!1022009 (=> (not res!459262) (not e!652556))))

(declare-fun lt!354540 () List!10054)

(assert (=> b!1022009 (= res!459262 (= (size!7982 lt!354540) (+ (size!7982 Nil!10038) (size!7982 s!10566))))))

(declare-fun b!1022008 () Bool)

(declare-fun e!652555 () List!10054)

(assert (=> b!1022008 (= e!652555 (Cons!10038 (h!15439 Nil!10038) (++!2742 (t!101100 Nil!10038) s!10566)))))

(declare-fun b!1022007 () Bool)

(assert (=> b!1022007 (= e!652555 s!10566)))

(declare-fun d!294502 () Bool)

(assert (=> d!294502 e!652556))

(declare-fun res!459263 () Bool)

(assert (=> d!294502 (=> (not res!459263) (not e!652556))))

(declare-fun content!1439 (List!10054) (Set C!6218))

(assert (=> d!294502 (= res!459263 (= (content!1439 lt!354540) (set.union (content!1439 Nil!10038) (content!1439 s!10566))))))

(assert (=> d!294502 (= lt!354540 e!652555)))

(declare-fun c!169375 () Bool)

(assert (=> d!294502 (= c!169375 (is-Nil!10038 Nil!10038))))

(assert (=> d!294502 (= (++!2742 Nil!10038 s!10566) lt!354540)))

(declare-fun b!1022010 () Bool)

(assert (=> b!1022010 (= e!652556 (or (not (= s!10566 Nil!10038)) (= lt!354540 Nil!10038)))))

(assert (= (and d!294502 c!169375) b!1022007))

(assert (= (and d!294502 (not c!169375)) b!1022008))

(assert (= (and d!294502 res!459263) b!1022009))

(assert (= (and b!1022009 res!459262) b!1022010))

(declare-fun m!1200489 () Bool)

(assert (=> b!1022009 m!1200489))

(assert (=> b!1022009 m!1200475))

(declare-fun m!1200491 () Bool)

(assert (=> b!1022009 m!1200491))

(declare-fun m!1200493 () Bool)

(assert (=> b!1022008 m!1200493))

(declare-fun m!1200495 () Bool)

(assert (=> d!294502 m!1200495))

(declare-fun m!1200497 () Bool)

(assert (=> d!294502 m!1200497))

(declare-fun m!1200499 () Bool)

(assert (=> d!294502 m!1200499))

(assert (=> b!1021880 d!294502))

(declare-fun bs!246730 () Bool)

(declare-fun b!1022051 () Bool)

(assert (= bs!246730 (and b!1022051 b!1021886)))

(declare-fun lambda!36369 () Int)

(assert (=> bs!246730 (not (= lambda!36369 lambda!36355))))

(assert (=> bs!246730 (not (= lambda!36369 lambda!36356))))

(assert (=> b!1022051 true))

(assert (=> b!1022051 true))

(declare-fun bs!246731 () Bool)

(declare-fun b!1022047 () Bool)

(assert (= bs!246731 (and b!1022047 b!1021886)))

(declare-fun lambda!36370 () Int)

(assert (=> bs!246731 (not (= lambda!36370 lambda!36355))))

(assert (=> bs!246731 (= (= (regOne!6160 r!15766) EmptyExpr!2824) (= lambda!36370 lambda!36356))))

(declare-fun bs!246732 () Bool)

(assert (= bs!246732 (and b!1022047 b!1022051)))

(assert (=> bs!246732 (not (= lambda!36370 lambda!36369))))

(assert (=> b!1022047 true))

(assert (=> b!1022047 true))

(declare-fun d!294510 () Bool)

(declare-fun c!169387 () Bool)

(assert (=> d!294510 (= c!169387 (is-EmptyExpr!2824 r!15766))))

(declare-fun e!652578 () Bool)

(assert (=> d!294510 (= (matchRSpec!623 r!15766 s!10566) e!652578)))

(declare-fun b!1022043 () Bool)

(declare-fun res!459281 () Bool)

(declare-fun e!652581 () Bool)

(assert (=> b!1022043 (=> res!459281 e!652581)))

(declare-fun call!70007 () Bool)

(assert (=> b!1022043 (= res!459281 call!70007)))

(declare-fun e!652579 () Bool)

(assert (=> b!1022043 (= e!652579 e!652581)))

(declare-fun b!1022044 () Bool)

(declare-fun e!652576 () Bool)

(assert (=> b!1022044 (= e!652576 (= s!10566 (Cons!10038 (c!169365 r!15766) Nil!10038)))))

(declare-fun b!1022045 () Bool)

(declare-fun c!169384 () Bool)

(assert (=> b!1022045 (= c!169384 (is-Union!2824 r!15766))))

(declare-fun e!652577 () Bool)

(assert (=> b!1022045 (= e!652576 e!652577)))

(declare-fun b!1022046 () Bool)

(declare-fun e!652580 () Bool)

(assert (=> b!1022046 (= e!652578 e!652580)))

(declare-fun res!459280 () Bool)

(assert (=> b!1022046 (= res!459280 (not (is-EmptyLang!2824 r!15766)))))

(assert (=> b!1022046 (=> (not res!459280) (not e!652580))))

(declare-fun call!70008 () Bool)

(assert (=> b!1022047 (= e!652579 call!70008)))

(declare-fun bm!70002 () Bool)

(declare-fun c!169385 () Bool)

(assert (=> bm!70002 (= call!70008 (Exists!553 (ite c!169385 lambda!36369 lambda!36370)))))

(declare-fun b!1022048 () Bool)

(declare-fun c!169386 () Bool)

(assert (=> b!1022048 (= c!169386 (is-ElementMatch!2824 r!15766))))

(assert (=> b!1022048 (= e!652580 e!652576)))

(declare-fun b!1022049 () Bool)

(declare-fun e!652575 () Bool)

(assert (=> b!1022049 (= e!652575 (matchRSpec!623 (regTwo!6161 r!15766) s!10566))))

(declare-fun bm!70003 () Bool)

(assert (=> bm!70003 (= call!70007 (isEmpty!6396 s!10566))))

(declare-fun b!1022050 () Bool)

(assert (=> b!1022050 (= e!652577 e!652575)))

(declare-fun res!459282 () Bool)

(assert (=> b!1022050 (= res!459282 (matchRSpec!623 (regOne!6161 r!15766) s!10566))))

(assert (=> b!1022050 (=> res!459282 e!652575)))

(assert (=> b!1022051 (= e!652581 call!70008)))

(declare-fun b!1022052 () Bool)

(assert (=> b!1022052 (= e!652577 e!652579)))

(assert (=> b!1022052 (= c!169385 (is-Star!2824 r!15766))))

(declare-fun b!1022053 () Bool)

(assert (=> b!1022053 (= e!652578 call!70007)))

(assert (= (and d!294510 c!169387) b!1022053))

(assert (= (and d!294510 (not c!169387)) b!1022046))

(assert (= (and b!1022046 res!459280) b!1022048))

(assert (= (and b!1022048 c!169386) b!1022044))

(assert (= (and b!1022048 (not c!169386)) b!1022045))

(assert (= (and b!1022045 c!169384) b!1022050))

(assert (= (and b!1022045 (not c!169384)) b!1022052))

(assert (= (and b!1022050 (not res!459282)) b!1022049))

(assert (= (and b!1022052 c!169385) b!1022043))

(assert (= (and b!1022052 (not c!169385)) b!1022047))

(assert (= (and b!1022043 (not res!459281)) b!1022051))

(assert (= (or b!1022051 b!1022047) bm!70002))

(assert (= (or b!1022053 b!1022043) bm!70003))

(declare-fun m!1200501 () Bool)

(assert (=> bm!70002 m!1200501))

(declare-fun m!1200503 () Bool)

(assert (=> b!1022049 m!1200503))

(assert (=> bm!70003 m!1200399))

(declare-fun m!1200505 () Bool)

(assert (=> b!1022050 m!1200505))

(assert (=> b!1021881 d!294510))

(declare-fun b!1022101 () Bool)

(declare-fun e!652611 () Bool)

(assert (=> b!1022101 (= e!652611 (nullable!927 r!15766))))

(declare-fun b!1022102 () Bool)

(declare-fun res!459312 () Bool)

(declare-fun e!652609 () Bool)

(assert (=> b!1022102 (=> (not res!459312) (not e!652609))))

(declare-fun call!70011 () Bool)

(assert (=> b!1022102 (= res!459312 (not call!70011))))

(declare-fun b!1022103 () Bool)

(declare-fun res!459315 () Bool)

(declare-fun e!652606 () Bool)

(assert (=> b!1022103 (=> res!459315 e!652606)))

(assert (=> b!1022103 (= res!459315 (not (is-ElementMatch!2824 r!15766)))))

(declare-fun e!652608 () Bool)

(assert (=> b!1022103 (= e!652608 e!652606)))

(declare-fun b!1022104 () Bool)

(declare-fun res!459309 () Bool)

(assert (=> b!1022104 (=> res!459309 e!652606)))

(assert (=> b!1022104 (= res!459309 e!652609)))

(declare-fun res!459313 () Bool)

(assert (=> b!1022104 (=> (not res!459313) (not e!652609))))

(declare-fun lt!354549 () Bool)

(assert (=> b!1022104 (= res!459313 lt!354549)))

(declare-fun b!1022105 () Bool)

(declare-fun e!652607 () Bool)

(assert (=> b!1022105 (= e!652607 (= lt!354549 call!70011))))

(declare-fun b!1022106 () Bool)

(declare-fun e!652612 () Bool)

(assert (=> b!1022106 (= e!652606 e!652612)))

(declare-fun res!459314 () Bool)

(assert (=> b!1022106 (=> (not res!459314) (not e!652612))))

(assert (=> b!1022106 (= res!459314 (not lt!354549))))

(declare-fun bm!70006 () Bool)

(assert (=> bm!70006 (= call!70011 (isEmpty!6396 s!10566))))

(declare-fun b!1022107 () Bool)

(declare-fun e!652610 () Bool)

(assert (=> b!1022107 (= e!652612 e!652610)))

(declare-fun res!459316 () Bool)

(assert (=> b!1022107 (=> res!459316 e!652610)))

(assert (=> b!1022107 (= res!459316 call!70011)))

(declare-fun b!1022108 () Bool)

(assert (=> b!1022108 (= e!652608 (not lt!354549))))

(declare-fun b!1022109 () Bool)

(assert (=> b!1022109 (= e!652610 (not (= (head!1883 s!10566) (c!169365 r!15766))))))

(declare-fun b!1022100 () Bool)

(declare-fun res!459310 () Bool)

(assert (=> b!1022100 (=> (not res!459310) (not e!652609))))

(assert (=> b!1022100 (= res!459310 (isEmpty!6396 (tail!1445 s!10566)))))

(declare-fun d!294514 () Bool)

(assert (=> d!294514 e!652607))

(declare-fun c!169398 () Bool)

(assert (=> d!294514 (= c!169398 (is-EmptyExpr!2824 r!15766))))

(assert (=> d!294514 (= lt!354549 e!652611)))

(declare-fun c!169399 () Bool)

(assert (=> d!294514 (= c!169399 (isEmpty!6396 s!10566))))

(assert (=> d!294514 (validRegex!1293 r!15766)))

(assert (=> d!294514 (= (matchR!1360 r!15766 s!10566) lt!354549)))

(declare-fun b!1022110 () Bool)

(declare-fun res!459311 () Bool)

(assert (=> b!1022110 (=> res!459311 e!652610)))

(assert (=> b!1022110 (= res!459311 (not (isEmpty!6396 (tail!1445 s!10566))))))

(declare-fun b!1022111 () Bool)

(declare-fun derivativeStep!729 (Regex!2824 C!6218) Regex!2824)

(assert (=> b!1022111 (= e!652611 (matchR!1360 (derivativeStep!729 r!15766 (head!1883 s!10566)) (tail!1445 s!10566)))))

(declare-fun b!1022112 () Bool)

(assert (=> b!1022112 (= e!652609 (= (head!1883 s!10566) (c!169365 r!15766)))))

(declare-fun b!1022113 () Bool)

(assert (=> b!1022113 (= e!652607 e!652608)))

(declare-fun c!169400 () Bool)

(assert (=> b!1022113 (= c!169400 (is-EmptyLang!2824 r!15766))))

(assert (= (and d!294514 c!169399) b!1022101))

(assert (= (and d!294514 (not c!169399)) b!1022111))

(assert (= (and d!294514 c!169398) b!1022105))

(assert (= (and d!294514 (not c!169398)) b!1022113))

(assert (= (and b!1022113 c!169400) b!1022108))

(assert (= (and b!1022113 (not c!169400)) b!1022103))

(assert (= (and b!1022103 (not res!459315)) b!1022104))

(assert (= (and b!1022104 res!459313) b!1022102))

(assert (= (and b!1022102 res!459312) b!1022100))

(assert (= (and b!1022100 res!459310) b!1022112))

(assert (= (and b!1022104 (not res!459309)) b!1022106))

(assert (= (and b!1022106 res!459314) b!1022107))

(assert (= (and b!1022107 (not res!459316)) b!1022110))

(assert (= (and b!1022110 (not res!459311)) b!1022109))

(assert (= (or b!1022105 b!1022102 b!1022107) bm!70006))

(assert (=> d!294514 m!1200399))

(assert (=> d!294514 m!1200405))

(declare-fun m!1200507 () Bool)

(assert (=> b!1022110 m!1200507))

(assert (=> b!1022110 m!1200507))

(declare-fun m!1200509 () Bool)

(assert (=> b!1022110 m!1200509))

(assert (=> b!1022100 m!1200507))

(assert (=> b!1022100 m!1200507))

(assert (=> b!1022100 m!1200509))

(declare-fun m!1200511 () Bool)

(assert (=> b!1022109 m!1200511))

(declare-fun m!1200513 () Bool)

(assert (=> b!1022101 m!1200513))

(assert (=> bm!70006 m!1200399))

(assert (=> b!1022112 m!1200511))

(assert (=> b!1022111 m!1200511))

(assert (=> b!1022111 m!1200511))

(declare-fun m!1200515 () Bool)

(assert (=> b!1022111 m!1200515))

(assert (=> b!1022111 m!1200507))

(assert (=> b!1022111 m!1200515))

(assert (=> b!1022111 m!1200507))

(declare-fun m!1200517 () Bool)

(assert (=> b!1022111 m!1200517))

(assert (=> b!1021881 d!294514))

(declare-fun d!294516 () Bool)

(assert (=> d!294516 (= (matchR!1360 r!15766 s!10566) (matchRSpec!623 r!15766 s!10566))))

(declare-fun lt!354552 () Unit!15323)

(declare-fun choose!6467 (Regex!2824 List!10054) Unit!15323)

(assert (=> d!294516 (= lt!354552 (choose!6467 r!15766 s!10566))))

(assert (=> d!294516 (validRegex!1293 r!15766)))

(assert (=> d!294516 (= (mainMatchTheorem!623 r!15766 s!10566) lt!354552)))

(declare-fun bs!246733 () Bool)

(assert (= bs!246733 d!294516))

(assert (=> bs!246733 m!1200421))

(assert (=> bs!246733 m!1200419))

(declare-fun m!1200519 () Bool)

(assert (=> bs!246733 m!1200519))

(assert (=> bs!246733 m!1200405))

(assert (=> b!1021881 d!294516))

(declare-fun b!1022141 () Bool)

(declare-fun e!652632 () Bool)

(assert (=> b!1022141 (= e!652632 (matchR!1360 (regTwo!6160 r!15766) s!10566))))

(declare-fun b!1022142 () Bool)

(declare-fun e!652629 () Option!2357)

(assert (=> b!1022142 (= e!652629 None!2356)))

(declare-fun b!1022143 () Bool)

(declare-fun res!459332 () Bool)

(declare-fun e!652628 () Bool)

(assert (=> b!1022143 (=> (not res!459332) (not e!652628))))

(declare-fun lt!354563 () Option!2357)

(declare-fun get!3538 (Option!2357) tuple2!11430)

(assert (=> b!1022143 (= res!459332 (matchR!1360 (regTwo!6160 r!15766) (_2!6541 (get!3538 lt!354563))))))

(declare-fun b!1022144 () Bool)

(declare-fun e!652630 () Option!2357)

(assert (=> b!1022144 (= e!652630 (Some!2356 (tuple2!11431 Nil!10038 s!10566)))))

(declare-fun d!294518 () Bool)

(declare-fun e!652631 () Bool)

(assert (=> d!294518 e!652631))

(declare-fun res!459334 () Bool)

(assert (=> d!294518 (=> res!459334 e!652631)))

(assert (=> d!294518 (= res!459334 e!652628)))

(declare-fun res!459335 () Bool)

(assert (=> d!294518 (=> (not res!459335) (not e!652628))))

(assert (=> d!294518 (= res!459335 (isDefined!1999 lt!354563))))

(assert (=> d!294518 (= lt!354563 e!652630)))

(declare-fun c!169408 () Bool)

(assert (=> d!294518 (= c!169408 e!652632)))

(declare-fun res!459336 () Bool)

(assert (=> d!294518 (=> (not res!459336) (not e!652632))))

(assert (=> d!294518 (= res!459336 (matchR!1360 EmptyExpr!2824 Nil!10038))))

(assert (=> d!294518 (validRegex!1293 EmptyExpr!2824)))

(assert (=> d!294518 (= (findConcatSeparation!463 EmptyExpr!2824 (regTwo!6160 r!15766) Nil!10038 s!10566 s!10566) lt!354563)))

(declare-fun b!1022145 () Bool)

(declare-fun res!459333 () Bool)

(assert (=> b!1022145 (=> (not res!459333) (not e!652628))))

(assert (=> b!1022145 (= res!459333 (matchR!1360 EmptyExpr!2824 (_1!6541 (get!3538 lt!354563))))))

(declare-fun b!1022146 () Bool)

(assert (=> b!1022146 (= e!652631 (not (isDefined!1999 lt!354563)))))

(declare-fun b!1022147 () Bool)

(declare-fun lt!354562 () Unit!15323)

(declare-fun lt!354564 () Unit!15323)

(assert (=> b!1022147 (= lt!354562 lt!354564)))

(assert (=> b!1022147 (= (++!2742 (++!2742 Nil!10038 (Cons!10038 (h!15439 s!10566) Nil!10038)) (t!101100 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!341 (List!10054 C!6218 List!10054 List!10054) Unit!15323)

(assert (=> b!1022147 (= lt!354564 (lemmaMoveElementToOtherListKeepsConcatEq!341 Nil!10038 (h!15439 s!10566) (t!101100 s!10566) s!10566))))

(assert (=> b!1022147 (= e!652629 (findConcatSeparation!463 EmptyExpr!2824 (regTwo!6160 r!15766) (++!2742 Nil!10038 (Cons!10038 (h!15439 s!10566) Nil!10038)) (t!101100 s!10566) s!10566))))

(declare-fun b!1022148 () Bool)

(assert (=> b!1022148 (= e!652630 e!652629)))

(declare-fun c!169407 () Bool)

(assert (=> b!1022148 (= c!169407 (is-Nil!10038 s!10566))))

(declare-fun b!1022149 () Bool)

(assert (=> b!1022149 (= e!652628 (= (++!2742 (_1!6541 (get!3538 lt!354563)) (_2!6541 (get!3538 lt!354563))) s!10566))))

(assert (= (and d!294518 res!459336) b!1022141))

(assert (= (and d!294518 c!169408) b!1022144))

(assert (= (and d!294518 (not c!169408)) b!1022148))

(assert (= (and b!1022148 c!169407) b!1022142))

(assert (= (and b!1022148 (not c!169407)) b!1022147))

(assert (= (and d!294518 res!459335) b!1022145))

(assert (= (and b!1022145 res!459333) b!1022143))

(assert (= (and b!1022143 res!459332) b!1022149))

(assert (= (and d!294518 (not res!459334)) b!1022146))

(declare-fun m!1200543 () Bool)

(assert (=> b!1022147 m!1200543))

(assert (=> b!1022147 m!1200543))

(declare-fun m!1200545 () Bool)

(assert (=> b!1022147 m!1200545))

(declare-fun m!1200547 () Bool)

(assert (=> b!1022147 m!1200547))

(assert (=> b!1022147 m!1200543))

(declare-fun m!1200549 () Bool)

(assert (=> b!1022147 m!1200549))

(assert (=> b!1022141 m!1200409))

(declare-fun m!1200551 () Bool)

(assert (=> b!1022146 m!1200551))

(declare-fun m!1200553 () Bool)

(assert (=> b!1022145 m!1200553))

(declare-fun m!1200555 () Bool)

(assert (=> b!1022145 m!1200555))

(assert (=> b!1022143 m!1200553))

(declare-fun m!1200557 () Bool)

(assert (=> b!1022143 m!1200557))

(assert (=> b!1022149 m!1200553))

(declare-fun m!1200559 () Bool)

(assert (=> b!1022149 m!1200559))

(assert (=> d!294518 m!1200551))

(declare-fun m!1200561 () Bool)

(assert (=> d!294518 m!1200561))

(declare-fun m!1200563 () Bool)

(assert (=> d!294518 m!1200563))

(assert (=> b!1021886 d!294518))

(declare-fun bs!246734 () Bool)

(declare-fun d!294522 () Bool)

(assert (= bs!246734 (and d!294522 b!1021886)))

(declare-fun lambda!36375 () Int)

(assert (=> bs!246734 (= lambda!36375 lambda!36355)))

(assert (=> bs!246734 (not (= lambda!36375 lambda!36356))))

(declare-fun bs!246735 () Bool)

(assert (= bs!246735 (and d!294522 b!1022051)))

(assert (=> bs!246735 (not (= lambda!36375 lambda!36369))))

(declare-fun bs!246736 () Bool)

(assert (= bs!246736 (and d!294522 b!1022047)))

(assert (=> bs!246736 (not (= lambda!36375 lambda!36370))))

(assert (=> d!294522 true))

(assert (=> d!294522 true))

(assert (=> d!294522 true))

(assert (=> d!294522 (= (isDefined!1999 (findConcatSeparation!463 EmptyExpr!2824 (regTwo!6160 r!15766) Nil!10038 s!10566 s!10566)) (Exists!553 lambda!36375))))

(declare-fun lt!354569 () Unit!15323)

(declare-fun choose!6468 (Regex!2824 Regex!2824 List!10054) Unit!15323)

(assert (=> d!294522 (= lt!354569 (choose!6468 EmptyExpr!2824 (regTwo!6160 r!15766) s!10566))))

(assert (=> d!294522 (validRegex!1293 EmptyExpr!2824)))

(assert (=> d!294522 (= (lemmaFindConcatSeparationEquivalentToExists!463 EmptyExpr!2824 (regTwo!6160 r!15766) s!10566) lt!354569)))

(declare-fun bs!246737 () Bool)

(assert (= bs!246737 d!294522))

(declare-fun m!1200565 () Bool)

(assert (=> bs!246737 m!1200565))

(declare-fun m!1200567 () Bool)

(assert (=> bs!246737 m!1200567))

(assert (=> bs!246737 m!1200563))

(assert (=> bs!246737 m!1200403))

(assert (=> bs!246737 m!1200403))

(declare-fun m!1200569 () Bool)

(assert (=> bs!246737 m!1200569))

(assert (=> b!1021886 d!294522))

(declare-fun bs!246740 () Bool)

(declare-fun d!294524 () Bool)

(assert (= bs!246740 (and d!294524 b!1022051)))

(declare-fun lambda!36381 () Int)

(assert (=> bs!246740 (not (= lambda!36381 lambda!36369))))

(declare-fun bs!246741 () Bool)

(assert (= bs!246741 (and d!294524 b!1022047)))

(assert (=> bs!246741 (not (= lambda!36381 lambda!36370))))

(declare-fun bs!246742 () Bool)

(assert (= bs!246742 (and d!294524 b!1021886)))

(assert (=> bs!246742 (= lambda!36381 lambda!36355)))

(assert (=> bs!246742 (not (= lambda!36381 lambda!36356))))

(declare-fun bs!246743 () Bool)

(assert (= bs!246743 (and d!294524 d!294522)))

(assert (=> bs!246743 (= lambda!36381 lambda!36375)))

(assert (=> d!294524 true))

(assert (=> d!294524 true))

(assert (=> d!294524 true))

(declare-fun lambda!36382 () Int)

(assert (=> bs!246740 (not (= lambda!36382 lambda!36369))))

(assert (=> bs!246741 (= (= EmptyExpr!2824 (regOne!6160 r!15766)) (= lambda!36382 lambda!36370))))

(declare-fun bs!246744 () Bool)

(assert (= bs!246744 d!294524))

(assert (=> bs!246744 (not (= lambda!36382 lambda!36381))))

(assert (=> bs!246742 (not (= lambda!36382 lambda!36355))))

(assert (=> bs!246742 (= lambda!36382 lambda!36356)))

(assert (=> bs!246743 (not (= lambda!36382 lambda!36375))))

(assert (=> d!294524 true))

(assert (=> d!294524 true))

(assert (=> d!294524 true))

(assert (=> d!294524 (= (Exists!553 lambda!36381) (Exists!553 lambda!36382))))

(declare-fun lt!354573 () Unit!15323)

(declare-fun choose!6469 (Regex!2824 Regex!2824 List!10054) Unit!15323)

(assert (=> d!294524 (= lt!354573 (choose!6469 EmptyExpr!2824 (regTwo!6160 r!15766) s!10566))))

(assert (=> d!294524 (validRegex!1293 EmptyExpr!2824)))

(assert (=> d!294524 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!255 EmptyExpr!2824 (regTwo!6160 r!15766) s!10566) lt!354573)))

(declare-fun m!1200577 () Bool)

(assert (=> bs!246744 m!1200577))

(declare-fun m!1200579 () Bool)

(assert (=> bs!246744 m!1200579))

(declare-fun m!1200581 () Bool)

(assert (=> bs!246744 m!1200581))

(assert (=> bs!246744 m!1200563))

(assert (=> b!1021886 d!294524))

(declare-fun d!294528 () Bool)

(declare-fun choose!6470 (Int) Bool)

(assert (=> d!294528 (= (Exists!553 lambda!36355) (choose!6470 lambda!36355))))

(declare-fun bs!246745 () Bool)

(assert (= bs!246745 d!294528))

(declare-fun m!1200583 () Bool)

(assert (=> bs!246745 m!1200583))

(assert (=> b!1021886 d!294528))

(declare-fun d!294530 () Bool)

(assert (=> d!294530 (= (Exists!553 lambda!36356) (choose!6470 lambda!36356))))

(declare-fun bs!246746 () Bool)

(assert (= bs!246746 d!294530))

(declare-fun m!1200585 () Bool)

(assert (=> bs!246746 m!1200585))

(assert (=> b!1021886 d!294530))

(declare-fun d!294532 () Bool)

(assert (=> d!294532 (= (isEmpty!6396 s!10566) (is-Nil!10038 s!10566))))

(assert (=> b!1021886 d!294532))

(declare-fun d!294534 () Bool)

(assert (=> d!294534 (= (isDefined!1999 lt!354501) (not (isEmpty!6395 lt!354501)))))

(declare-fun bs!246747 () Bool)

(assert (= bs!246747 d!294534))

(assert (=> bs!246747 m!1200415))

(assert (=> b!1021886 d!294534))

(declare-fun b!1022167 () Bool)

(declare-fun e!652646 () Bool)

(assert (=> b!1022167 (= e!652646 (nullable!927 lt!354499))))

(declare-fun b!1022168 () Bool)

(declare-fun res!459356 () Bool)

(declare-fun e!652644 () Bool)

(assert (=> b!1022168 (=> (not res!459356) (not e!652644))))

(declare-fun call!70012 () Bool)

(assert (=> b!1022168 (= res!459356 (not call!70012))))

(declare-fun b!1022169 () Bool)

(declare-fun res!459359 () Bool)

(declare-fun e!652641 () Bool)

(assert (=> b!1022169 (=> res!459359 e!652641)))

(assert (=> b!1022169 (= res!459359 (not (is-ElementMatch!2824 lt!354499)))))

(declare-fun e!652643 () Bool)

(assert (=> b!1022169 (= e!652643 e!652641)))

(declare-fun b!1022170 () Bool)

(declare-fun res!459353 () Bool)

(assert (=> b!1022170 (=> res!459353 e!652641)))

(assert (=> b!1022170 (= res!459353 e!652644)))

(declare-fun res!459357 () Bool)

(assert (=> b!1022170 (=> (not res!459357) (not e!652644))))

(declare-fun lt!354576 () Bool)

(assert (=> b!1022170 (= res!459357 lt!354576)))

(declare-fun b!1022171 () Bool)

(declare-fun e!652642 () Bool)

(assert (=> b!1022171 (= e!652642 (= lt!354576 call!70012))))

(declare-fun b!1022172 () Bool)

(declare-fun e!652647 () Bool)

(assert (=> b!1022172 (= e!652641 e!652647)))

(declare-fun res!459358 () Bool)

(assert (=> b!1022172 (=> (not res!459358) (not e!652647))))

(assert (=> b!1022172 (= res!459358 (not lt!354576))))

(declare-fun bm!70007 () Bool)

(assert (=> bm!70007 (= call!70012 (isEmpty!6396 s!10566))))

(declare-fun b!1022173 () Bool)

(declare-fun e!652645 () Bool)

(assert (=> b!1022173 (= e!652647 e!652645)))

(declare-fun res!459360 () Bool)

(assert (=> b!1022173 (=> res!459360 e!652645)))

(assert (=> b!1022173 (= res!459360 call!70012)))

(declare-fun b!1022174 () Bool)

(assert (=> b!1022174 (= e!652643 (not lt!354576))))

(declare-fun b!1022175 () Bool)

(assert (=> b!1022175 (= e!652645 (not (= (head!1883 s!10566) (c!169365 lt!354499))))))

(declare-fun b!1022166 () Bool)

(declare-fun res!459354 () Bool)

(assert (=> b!1022166 (=> (not res!459354) (not e!652644))))

(assert (=> b!1022166 (= res!459354 (isEmpty!6396 (tail!1445 s!10566)))))

(declare-fun d!294536 () Bool)

(assert (=> d!294536 e!652642))

(declare-fun c!169409 () Bool)

(assert (=> d!294536 (= c!169409 (is-EmptyExpr!2824 lt!354499))))

(assert (=> d!294536 (= lt!354576 e!652646)))

(declare-fun c!169410 () Bool)

(assert (=> d!294536 (= c!169410 (isEmpty!6396 s!10566))))

(assert (=> d!294536 (validRegex!1293 lt!354499)))

(assert (=> d!294536 (= (matchR!1360 lt!354499 s!10566) lt!354576)))

(declare-fun b!1022176 () Bool)

(declare-fun res!459355 () Bool)

(assert (=> b!1022176 (=> res!459355 e!652645)))

(assert (=> b!1022176 (= res!459355 (not (isEmpty!6396 (tail!1445 s!10566))))))

(declare-fun b!1022177 () Bool)

(assert (=> b!1022177 (= e!652646 (matchR!1360 (derivativeStep!729 lt!354499 (head!1883 s!10566)) (tail!1445 s!10566)))))

(declare-fun b!1022178 () Bool)

(assert (=> b!1022178 (= e!652644 (= (head!1883 s!10566) (c!169365 lt!354499)))))

(declare-fun b!1022179 () Bool)

(assert (=> b!1022179 (= e!652642 e!652643)))

(declare-fun c!169411 () Bool)

(assert (=> b!1022179 (= c!169411 (is-EmptyLang!2824 lt!354499))))

(assert (= (and d!294536 c!169410) b!1022167))

(assert (= (and d!294536 (not c!169410)) b!1022177))

(assert (= (and d!294536 c!169409) b!1022171))

(assert (= (and d!294536 (not c!169409)) b!1022179))

(assert (= (and b!1022179 c!169411) b!1022174))

(assert (= (and b!1022179 (not c!169411)) b!1022169))

(assert (= (and b!1022169 (not res!459359)) b!1022170))

(assert (= (and b!1022170 res!459357) b!1022168))

(assert (= (and b!1022168 res!459356) b!1022166))

(assert (= (and b!1022166 res!459354) b!1022178))

(assert (= (and b!1022170 (not res!459353)) b!1022172))

(assert (= (and b!1022172 res!459358) b!1022173))

(assert (= (and b!1022173 (not res!459360)) b!1022176))

(assert (= (and b!1022176 (not res!459355)) b!1022175))

(assert (= (or b!1022171 b!1022168 b!1022173) bm!70007))

(assert (=> d!294536 m!1200399))

(declare-fun m!1200587 () Bool)

(assert (=> d!294536 m!1200587))

(assert (=> b!1022176 m!1200507))

(assert (=> b!1022176 m!1200507))

(assert (=> b!1022176 m!1200509))

(assert (=> b!1022166 m!1200507))

(assert (=> b!1022166 m!1200507))

(assert (=> b!1022166 m!1200509))

(assert (=> b!1022175 m!1200511))

(declare-fun m!1200589 () Bool)

(assert (=> b!1022167 m!1200589))

(assert (=> bm!70007 m!1200399))

(assert (=> b!1022178 m!1200511))

(assert (=> b!1022177 m!1200511))

(assert (=> b!1022177 m!1200511))

(declare-fun m!1200591 () Bool)

(assert (=> b!1022177 m!1200591))

(assert (=> b!1022177 m!1200507))

(assert (=> b!1022177 m!1200591))

(assert (=> b!1022177 m!1200507))

(declare-fun m!1200593 () Bool)

(assert (=> b!1022177 m!1200593))

(assert (=> b!1021882 d!294536))

(declare-fun b!1022181 () Bool)

(declare-fun e!652653 () Bool)

(assert (=> b!1022181 (= e!652653 (nullable!927 (regTwo!6160 r!15766)))))

(declare-fun b!1022182 () Bool)

(declare-fun res!459364 () Bool)

(declare-fun e!652651 () Bool)

(assert (=> b!1022182 (=> (not res!459364) (not e!652651))))

(declare-fun call!70013 () Bool)

(assert (=> b!1022182 (= res!459364 (not call!70013))))

(declare-fun b!1022183 () Bool)

(declare-fun res!459367 () Bool)

(declare-fun e!652648 () Bool)

(assert (=> b!1022183 (=> res!459367 e!652648)))

(assert (=> b!1022183 (= res!459367 (not (is-ElementMatch!2824 (regTwo!6160 r!15766))))))

(declare-fun e!652650 () Bool)

(assert (=> b!1022183 (= e!652650 e!652648)))

(declare-fun b!1022184 () Bool)

(declare-fun res!459361 () Bool)

(assert (=> b!1022184 (=> res!459361 e!652648)))

(assert (=> b!1022184 (= res!459361 e!652651)))

(declare-fun res!459365 () Bool)

(assert (=> b!1022184 (=> (not res!459365) (not e!652651))))

(declare-fun lt!354577 () Bool)

(assert (=> b!1022184 (= res!459365 lt!354577)))

(declare-fun b!1022185 () Bool)

(declare-fun e!652649 () Bool)

(assert (=> b!1022185 (= e!652649 (= lt!354577 call!70013))))

(declare-fun b!1022186 () Bool)

(declare-fun e!652654 () Bool)

(assert (=> b!1022186 (= e!652648 e!652654)))

(declare-fun res!459366 () Bool)

(assert (=> b!1022186 (=> (not res!459366) (not e!652654))))

(assert (=> b!1022186 (= res!459366 (not lt!354577))))

(declare-fun bm!70008 () Bool)

(assert (=> bm!70008 (= call!70013 (isEmpty!6396 s!10566))))

(declare-fun b!1022187 () Bool)

(declare-fun e!652652 () Bool)

(assert (=> b!1022187 (= e!652654 e!652652)))

(declare-fun res!459368 () Bool)

(assert (=> b!1022187 (=> res!459368 e!652652)))

(assert (=> b!1022187 (= res!459368 call!70013)))

(declare-fun b!1022188 () Bool)

(assert (=> b!1022188 (= e!652650 (not lt!354577))))

(declare-fun b!1022189 () Bool)

(assert (=> b!1022189 (= e!652652 (not (= (head!1883 s!10566) (c!169365 (regTwo!6160 r!15766)))))))

(declare-fun b!1022180 () Bool)

(declare-fun res!459362 () Bool)

(assert (=> b!1022180 (=> (not res!459362) (not e!652651))))

(assert (=> b!1022180 (= res!459362 (isEmpty!6396 (tail!1445 s!10566)))))

(declare-fun d!294538 () Bool)

(assert (=> d!294538 e!652649))

(declare-fun c!169412 () Bool)

(assert (=> d!294538 (= c!169412 (is-EmptyExpr!2824 (regTwo!6160 r!15766)))))

(assert (=> d!294538 (= lt!354577 e!652653)))

(declare-fun c!169413 () Bool)

(assert (=> d!294538 (= c!169413 (isEmpty!6396 s!10566))))

(assert (=> d!294538 (validRegex!1293 (regTwo!6160 r!15766))))

(assert (=> d!294538 (= (matchR!1360 (regTwo!6160 r!15766) s!10566) lt!354577)))

(declare-fun b!1022190 () Bool)

(declare-fun res!459363 () Bool)

(assert (=> b!1022190 (=> res!459363 e!652652)))

(assert (=> b!1022190 (= res!459363 (not (isEmpty!6396 (tail!1445 s!10566))))))

(declare-fun b!1022191 () Bool)

(assert (=> b!1022191 (= e!652653 (matchR!1360 (derivativeStep!729 (regTwo!6160 r!15766) (head!1883 s!10566)) (tail!1445 s!10566)))))

(declare-fun b!1022192 () Bool)

(assert (=> b!1022192 (= e!652651 (= (head!1883 s!10566) (c!169365 (regTwo!6160 r!15766))))))

(declare-fun b!1022193 () Bool)

(assert (=> b!1022193 (= e!652649 e!652650)))

(declare-fun c!169414 () Bool)

(assert (=> b!1022193 (= c!169414 (is-EmptyLang!2824 (regTwo!6160 r!15766)))))

(assert (= (and d!294538 c!169413) b!1022181))

(assert (= (and d!294538 (not c!169413)) b!1022191))

(assert (= (and d!294538 c!169412) b!1022185))

(assert (= (and d!294538 (not c!169412)) b!1022193))

(assert (= (and b!1022193 c!169414) b!1022188))

(assert (= (and b!1022193 (not c!169414)) b!1022183))

(assert (= (and b!1022183 (not res!459367)) b!1022184))

(assert (= (and b!1022184 res!459365) b!1022182))

(assert (= (and b!1022182 res!459364) b!1022180))

(assert (= (and b!1022180 res!459362) b!1022192))

(assert (= (and b!1022184 (not res!459361)) b!1022186))

(assert (= (and b!1022186 res!459366) b!1022187))

(assert (= (and b!1022187 (not res!459368)) b!1022190))

(assert (= (and b!1022190 (not res!459363)) b!1022189))

(assert (= (or b!1022185 b!1022182 b!1022187) bm!70008))

(assert (=> d!294538 m!1200399))

(assert (=> d!294538 m!1200417))

(assert (=> b!1022190 m!1200507))

(assert (=> b!1022190 m!1200507))

(assert (=> b!1022190 m!1200509))

(assert (=> b!1022180 m!1200507))

(assert (=> b!1022180 m!1200507))

(assert (=> b!1022180 m!1200509))

(assert (=> b!1022189 m!1200511))

(declare-fun m!1200595 () Bool)

(assert (=> b!1022181 m!1200595))

(assert (=> bm!70008 m!1200399))

(assert (=> b!1022192 m!1200511))

(assert (=> b!1022191 m!1200511))

(assert (=> b!1022191 m!1200511))

(declare-fun m!1200597 () Bool)

(assert (=> b!1022191 m!1200597))

(assert (=> b!1022191 m!1200507))

(assert (=> b!1022191 m!1200597))

(assert (=> b!1022191 m!1200507))

(declare-fun m!1200599 () Bool)

(assert (=> b!1022191 m!1200599))

(assert (=> b!1021882 d!294538))

(declare-fun b!1022224 () Bool)

(declare-fun c!169427 () Bool)

(assert (=> b!1022224 (= c!169427 (is-Concat!4657 (regTwo!6160 r!15766)))))

(declare-fun e!652675 () Regex!2824)

(declare-fun e!652674 () Regex!2824)

(assert (=> b!1022224 (= e!652675 e!652674)))

(declare-fun d!294540 () Bool)

(declare-fun e!652671 () Bool)

(assert (=> d!294540 e!652671))

(declare-fun res!459379 () Bool)

(assert (=> d!294540 (=> (not res!459379) (not e!652671))))

(declare-fun lt!354581 () Regex!2824)

(assert (=> d!294540 (= res!459379 (validRegex!1293 lt!354581))))

(declare-fun e!652673 () Regex!2824)

(assert (=> d!294540 (= lt!354581 e!652673)))

(declare-fun c!169428 () Bool)

(assert (=> d!294540 (= c!169428 (and (is-Concat!4657 (regTwo!6160 r!15766)) (is-EmptyExpr!2824 (regOne!6160 (regTwo!6160 r!15766)))))))

(assert (=> d!294540 (validRegex!1293 (regTwo!6160 r!15766))))

(assert (=> d!294540 (= (removeUselessConcat!393 (regTwo!6160 r!15766)) lt!354581)))

(declare-fun b!1022225 () Bool)

(declare-fun e!652672 () Regex!2824)

(assert (=> b!1022225 (= e!652672 (regTwo!6160 r!15766))))

(declare-fun b!1022226 () Bool)

(declare-fun call!70027 () Regex!2824)

(assert (=> b!1022226 (= e!652675 call!70027)))

(declare-fun b!1022227 () Bool)

(declare-fun c!169425 () Bool)

(assert (=> b!1022227 (= c!169425 (is-Star!2824 (regTwo!6160 r!15766)))))

(declare-fun e!652676 () Regex!2824)

(assert (=> b!1022227 (= e!652676 e!652672)))

(declare-fun b!1022228 () Bool)

(assert (=> b!1022228 (= e!652674 e!652676)))

(declare-fun c!169426 () Bool)

(assert (=> b!1022228 (= c!169426 (is-Union!2824 (regTwo!6160 r!15766)))))

(declare-fun b!1022229 () Bool)

(assert (=> b!1022229 (= e!652671 (= (nullable!927 lt!354581) (nullable!927 (regTwo!6160 r!15766))))))

(declare-fun b!1022230 () Bool)

(declare-fun call!70024 () Regex!2824)

(declare-fun call!70025 () Regex!2824)

(assert (=> b!1022230 (= e!652674 (Concat!4657 call!70024 call!70025))))

(declare-fun b!1022231 () Bool)

(declare-fun call!70028 () Regex!2824)

(assert (=> b!1022231 (= e!652672 (Star!2824 call!70028))))

(declare-fun bm!70019 () Bool)

(declare-fun call!70026 () Regex!2824)

(declare-fun c!169429 () Bool)

(assert (=> bm!70019 (= call!70026 (removeUselessConcat!393 (ite c!169428 (regTwo!6160 (regTwo!6160 r!15766)) (ite c!169429 (regOne!6160 (regTwo!6160 r!15766)) (ite c!169427 (regTwo!6160 (regTwo!6160 r!15766)) (ite c!169426 (regTwo!6161 (regTwo!6160 r!15766)) (reg!3153 (regTwo!6160 r!15766))))))))))

(declare-fun bm!70020 () Bool)

(assert (=> bm!70020 (= call!70028 call!70025)))

(declare-fun bm!70021 () Bool)

(assert (=> bm!70021 (= call!70025 call!70027)))

(declare-fun b!1022232 () Bool)

(assert (=> b!1022232 (= e!652673 call!70026)))

(declare-fun bm!70022 () Bool)

(assert (=> bm!70022 (= call!70024 (removeUselessConcat!393 (ite c!169427 (regOne!6160 (regTwo!6160 r!15766)) (regOne!6161 (regTwo!6160 r!15766)))))))

(declare-fun bm!70023 () Bool)

(assert (=> bm!70023 (= call!70027 call!70026)))

(declare-fun b!1022233 () Bool)

(assert (=> b!1022233 (= e!652673 e!652675)))

(assert (=> b!1022233 (= c!169429 (and (is-Concat!4657 (regTwo!6160 r!15766)) (is-EmptyExpr!2824 (regTwo!6160 (regTwo!6160 r!15766)))))))

(declare-fun b!1022234 () Bool)

(assert (=> b!1022234 (= e!652676 (Union!2824 call!70024 call!70028))))

(assert (= (and d!294540 c!169428) b!1022232))

(assert (= (and d!294540 (not c!169428)) b!1022233))

(assert (= (and b!1022233 c!169429) b!1022226))

(assert (= (and b!1022233 (not c!169429)) b!1022224))

(assert (= (and b!1022224 c!169427) b!1022230))

(assert (= (and b!1022224 (not c!169427)) b!1022228))

(assert (= (and b!1022228 c!169426) b!1022234))

(assert (= (and b!1022228 (not c!169426)) b!1022227))

(assert (= (and b!1022227 c!169425) b!1022231))

(assert (= (and b!1022227 (not c!169425)) b!1022225))

(assert (= (or b!1022234 b!1022231) bm!70020))

(assert (= (or b!1022230 bm!70020) bm!70021))

(assert (= (or b!1022230 b!1022234) bm!70022))

(assert (= (or b!1022226 bm!70021) bm!70023))

(assert (= (or b!1022232 bm!70023) bm!70019))

(assert (= (and d!294540 res!459379) b!1022229))

(declare-fun m!1200601 () Bool)

(assert (=> d!294540 m!1200601))

(assert (=> d!294540 m!1200417))

(declare-fun m!1200603 () Bool)

(assert (=> b!1022229 m!1200603))

(assert (=> b!1022229 m!1200595))

(declare-fun m!1200605 () Bool)

(assert (=> bm!70019 m!1200605))

(declare-fun m!1200607 () Bool)

(assert (=> bm!70022 m!1200607))

(assert (=> b!1021882 d!294540))

(declare-fun d!294542 () Bool)

(assert (=> d!294542 (= (matchR!1360 (regTwo!6160 r!15766) s!10566) (matchR!1360 (removeUselessConcat!393 (regTwo!6160 r!15766)) s!10566))))

(declare-fun lt!354584 () Unit!15323)

(declare-fun choose!6471 (Regex!2824 List!10054) Unit!15323)

(assert (=> d!294542 (= lt!354584 (choose!6471 (regTwo!6160 r!15766) s!10566))))

(assert (=> d!294542 (validRegex!1293 (regTwo!6160 r!15766))))

(assert (=> d!294542 (= (lemmaRemoveUselessConcatSound!233 (regTwo!6160 r!15766) s!10566) lt!354584)))

(declare-fun bs!246751 () Bool)

(assert (= bs!246751 d!294542))

(assert (=> bs!246751 m!1200417))

(assert (=> bs!246751 m!1200411))

(declare-fun m!1200615 () Bool)

(assert (=> bs!246751 m!1200615))

(declare-fun m!1200617 () Bool)

(assert (=> bs!246751 m!1200617))

(assert (=> bs!246751 m!1200409))

(assert (=> bs!246751 m!1200411))

(assert (=> b!1021882 d!294542))

(declare-fun bm!70024 () Bool)

(declare-fun call!70030 () Bool)

(declare-fun call!70031 () Bool)

(assert (=> bm!70024 (= call!70030 call!70031)))

(declare-fun b!1022235 () Bool)

(declare-fun e!652679 () Bool)

(declare-fun e!652682 () Bool)

(assert (=> b!1022235 (= e!652679 e!652682)))

(declare-fun c!169430 () Bool)

(assert (=> b!1022235 (= c!169430 (is-Star!2824 (regTwo!6160 r!15766)))))

(declare-fun b!1022237 () Bool)

(declare-fun e!652683 () Bool)

(declare-fun call!70029 () Bool)

(assert (=> b!1022237 (= e!652683 call!70029)))

(declare-fun b!1022238 () Bool)

(declare-fun res!459382 () Bool)

(declare-fun e!652678 () Bool)

(assert (=> b!1022238 (=> res!459382 e!652678)))

(assert (=> b!1022238 (= res!459382 (not (is-Concat!4657 (regTwo!6160 r!15766))))))

(declare-fun e!652681 () Bool)

(assert (=> b!1022238 (= e!652681 e!652678)))

(declare-fun bm!70025 () Bool)

(declare-fun c!169431 () Bool)

(assert (=> bm!70025 (= call!70031 (validRegex!1293 (ite c!169430 (reg!3153 (regTwo!6160 r!15766)) (ite c!169431 (regOne!6161 (regTwo!6160 r!15766)) (regOne!6160 (regTwo!6160 r!15766))))))))

(declare-fun b!1022236 () Bool)

(declare-fun e!652677 () Bool)

(assert (=> b!1022236 (= e!652677 call!70031)))

(declare-fun d!294546 () Bool)

(declare-fun res!459384 () Bool)

(assert (=> d!294546 (=> res!459384 e!652679)))

(assert (=> d!294546 (= res!459384 (is-ElementMatch!2824 (regTwo!6160 r!15766)))))

(assert (=> d!294546 (= (validRegex!1293 (regTwo!6160 r!15766)) e!652679)))

(declare-fun bm!70026 () Bool)

(assert (=> bm!70026 (= call!70029 (validRegex!1293 (ite c!169431 (regTwo!6161 (regTwo!6160 r!15766)) (regTwo!6160 (regTwo!6160 r!15766)))))))

(declare-fun b!1022239 () Bool)

(assert (=> b!1022239 (= e!652682 e!652681)))

(assert (=> b!1022239 (= c!169431 (is-Union!2824 (regTwo!6160 r!15766)))))

(declare-fun b!1022240 () Bool)

(assert (=> b!1022240 (= e!652682 e!652677)))

(declare-fun res!459381 () Bool)

(assert (=> b!1022240 (= res!459381 (not (nullable!927 (reg!3153 (regTwo!6160 r!15766)))))))

(assert (=> b!1022240 (=> (not res!459381) (not e!652677))))

(declare-fun b!1022241 () Bool)

(assert (=> b!1022241 (= e!652678 e!652683)))

(declare-fun res!459380 () Bool)

(assert (=> b!1022241 (=> (not res!459380) (not e!652683))))

(assert (=> b!1022241 (= res!459380 call!70030)))

(declare-fun b!1022242 () Bool)

(declare-fun e!652680 () Bool)

(assert (=> b!1022242 (= e!652680 call!70029)))

(declare-fun b!1022243 () Bool)

(declare-fun res!459383 () Bool)

(assert (=> b!1022243 (=> (not res!459383) (not e!652680))))

(assert (=> b!1022243 (= res!459383 call!70030)))

(assert (=> b!1022243 (= e!652681 e!652680)))

(assert (= (and d!294546 (not res!459384)) b!1022235))

(assert (= (and b!1022235 c!169430) b!1022240))

(assert (= (and b!1022235 (not c!169430)) b!1022239))

(assert (= (and b!1022240 res!459381) b!1022236))

(assert (= (and b!1022239 c!169431) b!1022243))

(assert (= (and b!1022239 (not c!169431)) b!1022238))

(assert (= (and b!1022243 res!459383) b!1022242))

(assert (= (and b!1022238 (not res!459382)) b!1022241))

(assert (= (and b!1022241 res!459380) b!1022237))

(assert (= (or b!1022242 b!1022237) bm!70026))

(assert (= (or b!1022243 b!1022241) bm!70024))

(assert (= (or b!1022236 bm!70024) bm!70025))

(declare-fun m!1200621 () Bool)

(assert (=> bm!70025 m!1200621))

(declare-fun m!1200623 () Bool)

(assert (=> bm!70026 m!1200623))

(declare-fun m!1200625 () Bool)

(assert (=> b!1022240 m!1200625))

(assert (=> b!1021888 d!294546))

(declare-fun b!1022254 () Bool)

(declare-fun e!652686 () Bool)

(assert (=> b!1022254 (= e!652686 tp_is_empty!5291)))

(declare-fun b!1022256 () Bool)

(declare-fun tp!310405 () Bool)

(assert (=> b!1022256 (= e!652686 tp!310405)))

(declare-fun b!1022257 () Bool)

(declare-fun tp!310403 () Bool)

(declare-fun tp!310407 () Bool)

(assert (=> b!1022257 (= e!652686 (and tp!310403 tp!310407))))

(assert (=> b!1021885 (= tp!310370 e!652686)))

(declare-fun b!1022255 () Bool)

(declare-fun tp!310406 () Bool)

(declare-fun tp!310404 () Bool)

(assert (=> b!1022255 (= e!652686 (and tp!310406 tp!310404))))

(assert (= (and b!1021885 (is-ElementMatch!2824 (regOne!6161 r!15766))) b!1022254))

(assert (= (and b!1021885 (is-Concat!4657 (regOne!6161 r!15766))) b!1022255))

(assert (= (and b!1021885 (is-Star!2824 (regOne!6161 r!15766))) b!1022256))

(assert (= (and b!1021885 (is-Union!2824 (regOne!6161 r!15766))) b!1022257))

(declare-fun b!1022258 () Bool)

(declare-fun e!652687 () Bool)

(assert (=> b!1022258 (= e!652687 tp_is_empty!5291)))

(declare-fun b!1022260 () Bool)

(declare-fun tp!310410 () Bool)

(assert (=> b!1022260 (= e!652687 tp!310410)))

(declare-fun b!1022261 () Bool)

(declare-fun tp!310408 () Bool)

(declare-fun tp!310412 () Bool)

(assert (=> b!1022261 (= e!652687 (and tp!310408 tp!310412))))

(assert (=> b!1021885 (= tp!310369 e!652687)))

(declare-fun b!1022259 () Bool)

(declare-fun tp!310411 () Bool)

(declare-fun tp!310409 () Bool)

(assert (=> b!1022259 (= e!652687 (and tp!310411 tp!310409))))

(assert (= (and b!1021885 (is-ElementMatch!2824 (regTwo!6161 r!15766))) b!1022258))

(assert (= (and b!1021885 (is-Concat!4657 (regTwo!6161 r!15766))) b!1022259))

(assert (= (and b!1021885 (is-Star!2824 (regTwo!6161 r!15766))) b!1022260))

(assert (= (and b!1021885 (is-Union!2824 (regTwo!6161 r!15766))) b!1022261))

(declare-fun b!1022262 () Bool)

(declare-fun e!652688 () Bool)

(assert (=> b!1022262 (= e!652688 tp_is_empty!5291)))

(declare-fun b!1022264 () Bool)

(declare-fun tp!310415 () Bool)

(assert (=> b!1022264 (= e!652688 tp!310415)))

(declare-fun b!1022265 () Bool)

(declare-fun tp!310413 () Bool)

(declare-fun tp!310417 () Bool)

(assert (=> b!1022265 (= e!652688 (and tp!310413 tp!310417))))

(assert (=> b!1021890 (= tp!310371 e!652688)))

(declare-fun b!1022263 () Bool)

(declare-fun tp!310416 () Bool)

(declare-fun tp!310414 () Bool)

(assert (=> b!1022263 (= e!652688 (and tp!310416 tp!310414))))

(assert (= (and b!1021890 (is-ElementMatch!2824 (regOne!6160 r!15766))) b!1022262))

(assert (= (and b!1021890 (is-Concat!4657 (regOne!6160 r!15766))) b!1022263))

(assert (= (and b!1021890 (is-Star!2824 (regOne!6160 r!15766))) b!1022264))

(assert (= (and b!1021890 (is-Union!2824 (regOne!6160 r!15766))) b!1022265))

(declare-fun b!1022266 () Bool)

(declare-fun e!652689 () Bool)

(assert (=> b!1022266 (= e!652689 tp_is_empty!5291)))

(declare-fun b!1022268 () Bool)

(declare-fun tp!310420 () Bool)

(assert (=> b!1022268 (= e!652689 tp!310420)))

(declare-fun b!1022269 () Bool)

(declare-fun tp!310418 () Bool)

(declare-fun tp!310422 () Bool)

(assert (=> b!1022269 (= e!652689 (and tp!310418 tp!310422))))

(assert (=> b!1021890 (= tp!310373 e!652689)))

(declare-fun b!1022267 () Bool)

(declare-fun tp!310421 () Bool)

(declare-fun tp!310419 () Bool)

(assert (=> b!1022267 (= e!652689 (and tp!310421 tp!310419))))

(assert (= (and b!1021890 (is-ElementMatch!2824 (regTwo!6160 r!15766))) b!1022266))

(assert (= (and b!1021890 (is-Concat!4657 (regTwo!6160 r!15766))) b!1022267))

(assert (= (and b!1021890 (is-Star!2824 (regTwo!6160 r!15766))) b!1022268))

(assert (= (and b!1021890 (is-Union!2824 (regTwo!6160 r!15766))) b!1022269))

(declare-fun b!1022270 () Bool)

(declare-fun e!652690 () Bool)

(assert (=> b!1022270 (= e!652690 tp_is_empty!5291)))

(declare-fun b!1022272 () Bool)

(declare-fun tp!310425 () Bool)

(assert (=> b!1022272 (= e!652690 tp!310425)))

(declare-fun b!1022273 () Bool)

(declare-fun tp!310423 () Bool)

(declare-fun tp!310427 () Bool)

(assert (=> b!1022273 (= e!652690 (and tp!310423 tp!310427))))

(assert (=> b!1021887 (= tp!310374 e!652690)))

(declare-fun b!1022271 () Bool)

(declare-fun tp!310426 () Bool)

(declare-fun tp!310424 () Bool)

(assert (=> b!1022271 (= e!652690 (and tp!310426 tp!310424))))

(assert (= (and b!1021887 (is-ElementMatch!2824 (reg!3153 r!15766))) b!1022270))

(assert (= (and b!1021887 (is-Concat!4657 (reg!3153 r!15766))) b!1022271))

(assert (= (and b!1021887 (is-Star!2824 (reg!3153 r!15766))) b!1022272))

(assert (= (and b!1021887 (is-Union!2824 (reg!3153 r!15766))) b!1022273))

(declare-fun b!1022278 () Bool)

(declare-fun e!652693 () Bool)

(declare-fun tp!310430 () Bool)

(assert (=> b!1022278 (= e!652693 (and tp_is_empty!5291 tp!310430))))

(assert (=> b!1021883 (= tp!310372 e!652693)))

(assert (= (and b!1021883 (is-Cons!10038 (t!101100 s!10566))) b!1022278))

(push 1)

(assert (not b!1022143))

(assert (not bm!69996))

(assert (not b!1022272))

(assert (not bm!70022))

(assert (not d!294514))

(assert (not b!1022268))

(assert (not d!294536))

(assert (not b!1022259))

(assert (not bm!70026))

(assert (not b!1022265))

(assert (not b!1022101))

(assert (not b!1021994))

(assert (not b!1022145))

(assert (not d!294530))

(assert (not b!1022167))

(assert (not b!1022269))

(assert (not b!1021993))

(assert (not b!1022240))

(assert (not b!1022181))

(assert (not b!1022267))

(assert (not b!1022261))

(assert (not b!1022271))

(assert (not bm!70002))

(assert (not b!1022147))

(assert (not b!1022278))

(assert (not bm!70025))

(assert (not b!1022189))

(assert (not b!1022146))

(assert (not b!1022112))

(assert (not d!294524))

(assert (not b!1022264))

(assert (not b!1022192))

(assert (not b!1022263))

(assert (not bm!70008))

(assert (not b!1022229))

(assert (not b!1022177))

(assert (not b!1022178))

(assert (not bm!70019))

(assert (not b!1021971))

(assert (not b!1022260))

(assert (not d!294538))

(assert (not b!1022149))

(assert (not b!1022256))

(assert (not b!1022180))

(assert (not b!1021992))

(assert tp_is_empty!5291)

(assert (not b!1022176))

(assert (not d!294528))

(assert (not b!1022190))

(assert (not b!1022166))

(assert (not b!1022008))

(assert (not b!1022049))

(assert (not b!1022257))

(assert (not b!1022141))

(assert (not b!1022050))

(assert (not b!1022255))

(assert (not b!1022109))

(assert (not bm!69997))

(assert (not d!294518))

(assert (not b!1022273))

(assert (not b!1022175))

(assert (not b!1022111))

(assert (not bm!70003))

(assert (not d!294522))

(assert (not bm!70007))

(assert (not d!294516))

(assert (not d!294542))

(assert (not b!1022191))

(assert (not d!294502))

(assert (not bm!70006))

(assert (not b!1022110))

(assert (not d!294540))

(assert (not d!294534))

(assert (not b!1022009))

(assert (not b!1022100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

