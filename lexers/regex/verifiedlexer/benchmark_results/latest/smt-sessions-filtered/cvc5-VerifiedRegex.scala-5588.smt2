; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!280086 () Bool)

(assert start!280086)

(declare-fun b!2869418 () Bool)

(declare-fun e!1816266 () Bool)

(declare-fun e!1816265 () Bool)

(assert (=> b!2869418 (= e!1816266 e!1816265)))

(declare-fun res!1190769 () Bool)

(assert (=> b!2869418 (=> (not res!1190769) (not e!1816265))))

(declare-datatypes ((C!17642 0))(
  ( (C!17643 (val!10855 Int)) )
))
(declare-datatypes ((Regex!8730 0))(
  ( (ElementMatch!8730 (c!463865 C!17642)) (Concat!14051 (regOne!17972 Regex!8730) (regTwo!17972 Regex!8730)) (EmptyExpr!8730) (Star!8730 (reg!9059 Regex!8730)) (EmptyLang!8730) (Union!8730 (regOne!17973 Regex!8730) (regTwo!17973 Regex!8730)) )
))
(declare-datatypes ((List!34487 0))(
  ( (Nil!34363) (Cons!34363 (h!39783 Regex!8730) (t!233530 List!34487)) )
))
(declare-datatypes ((Context!5380 0))(
  ( (Context!5381 (exprs!3190 List!34487)) )
))
(declare-fun lt!1017646 () Context!5380)

(declare-datatypes ((List!34488 0))(
  ( (Nil!34364) (Cons!34364 (h!39784 C!17642) (t!233531 List!34488)) )
))
(declare-datatypes ((Option!6405 0))(
  ( (None!6404) (Some!6404 (v!34526 List!34488)) )
))
(declare-fun getLanguageWitness!411 (Context!5380) Option!6405)

(assert (=> b!2869418 (= res!1190769 (is-Some!6404 (getLanguageWitness!411 lt!1017646)))))

(declare-fun c!7184 () Context!5380)

(assert (=> b!2869418 (= lt!1017646 (Context!5381 (t!233530 (exprs!3190 c!7184))))))

(declare-fun b!2869419 () Bool)

(declare-fun lostCause!822 (Context!5380) Bool)

(assert (=> b!2869419 (= e!1816265 (not (not (lostCause!822 lt!1017646))))))

(declare-fun lt!1017648 () Option!6405)

(declare-fun matchR!3730 (Regex!8730 List!34488) Bool)

(declare-fun get!10322 (Option!6405) List!34488)

(assert (=> b!2869419 (matchR!3730 (h!39783 (exprs!3190 c!7184)) (get!10322 lt!1017648))))

(declare-datatypes ((Unit!47961 0))(
  ( (Unit!47962) )
))
(declare-fun lt!1017647 () Unit!47961)

(declare-fun lemmaGetWitnessMatches!37 (Regex!8730) Unit!47961)

(assert (=> b!2869419 (= lt!1017647 (lemmaGetWitnessMatches!37 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869420 () Bool)

(declare-fun res!1190770 () Bool)

(declare-fun e!1816267 () Bool)

(assert (=> b!2869420 (=> (not res!1190770) (not e!1816267))))

(assert (=> b!2869420 (= res!1190770 (is-Cons!34363 (exprs!3190 c!7184)))))

(declare-fun b!2869421 () Bool)

(assert (=> b!2869421 (= e!1816267 e!1816266)))

(declare-fun res!1190768 () Bool)

(assert (=> b!2869421 (=> (not res!1190768) (not e!1816266))))

(assert (=> b!2869421 (= res!1190768 (is-Some!6404 lt!1017648))))

(declare-fun getLanguageWitness!412 (Regex!8730) Option!6405)

(assert (=> b!2869421 (= lt!1017648 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869422 () Bool)

(declare-fun e!1816264 () Bool)

(declare-fun tp!923281 () Bool)

(assert (=> b!2869422 (= e!1816264 tp!923281)))

(declare-fun res!1190771 () Bool)

(assert (=> start!280086 (=> (not res!1190771) (not e!1816267))))

(assert (=> start!280086 (= res!1190771 (not (lostCause!822 c!7184)))))

(assert (=> start!280086 e!1816267))

(declare-fun inv!46413 (Context!5380) Bool)

(assert (=> start!280086 (and (inv!46413 c!7184) e!1816264)))

(assert (= (and start!280086 res!1190771) b!2869420))

(assert (= (and b!2869420 res!1190770) b!2869421))

(assert (= (and b!2869421 res!1190768) b!2869418))

(assert (= (and b!2869418 res!1190769) b!2869419))

(assert (= start!280086 b!2869422))

(declare-fun m!3288567 () Bool)

(assert (=> b!2869418 m!3288567))

(declare-fun m!3288569 () Bool)

(assert (=> b!2869419 m!3288569))

(declare-fun m!3288571 () Bool)

(assert (=> b!2869419 m!3288571))

(assert (=> b!2869419 m!3288571))

(declare-fun m!3288573 () Bool)

(assert (=> b!2869419 m!3288573))

(declare-fun m!3288575 () Bool)

(assert (=> b!2869419 m!3288575))

(declare-fun m!3288577 () Bool)

(assert (=> b!2869421 m!3288577))

(declare-fun m!3288579 () Bool)

(assert (=> start!280086 m!3288579))

(declare-fun m!3288581 () Bool)

(assert (=> start!280086 m!3288581))

(push 1)

(assert (not b!2869421))

(assert (not start!280086))

(assert (not b!2869422))

(assert (not b!2869419))

(assert (not b!2869418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2869470 () Bool)

(declare-fun e!1816301 () Option!6405)

(declare-fun call!185208 () Option!6405)

(assert (=> b!2869470 (= e!1816301 call!185208)))

(declare-fun d!829313 () Bool)

(declare-fun c!463883 () Bool)

(assert (=> d!829313 (= c!463883 (is-EmptyExpr!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun e!1816302 () Option!6405)

(assert (=> d!829313 (= (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184))) e!1816302)))

(declare-fun b!2869471 () Bool)

(assert (=> b!2869471 (= e!1816302 (Some!6404 Nil!34364))))

(declare-fun b!2869472 () Bool)

(declare-fun e!1816298 () Option!6405)

(assert (=> b!2869472 (= e!1816298 None!6404)))

(declare-fun bm!185202 () Bool)

(declare-fun c!463887 () Bool)

(assert (=> bm!185202 (= call!185208 (getLanguageWitness!412 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869473 () Bool)

(declare-fun e!1816300 () Option!6405)

(declare-fun lt!1017666 () Option!6405)

(declare-fun lt!1017665 () Option!6405)

(declare-fun ++!8167 (List!34488 List!34488) List!34488)

(assert (=> b!2869473 (= e!1816300 (Some!6404 (++!8167 (v!34526 lt!1017666) (v!34526 lt!1017665))))))

(declare-fun b!2869474 () Bool)

(declare-fun lt!1017664 () Option!6405)

(assert (=> b!2869474 (= e!1816301 lt!1017664)))

(declare-fun b!2869475 () Bool)

(declare-fun c!463888 () Bool)

(assert (=> b!2869475 (= c!463888 (is-ElementMatch!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun e!1816299 () Option!6405)

(assert (=> b!2869475 (= e!1816298 e!1816299)))

(declare-fun b!2869476 () Bool)

(assert (=> b!2869476 (= e!1816302 e!1816298)))

(declare-fun c!463885 () Bool)

(assert (=> b!2869476 (= c!463885 (is-EmptyLang!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869477 () Bool)

(declare-fun e!1816297 () Option!6405)

(declare-fun e!1816303 () Option!6405)

(assert (=> b!2869477 (= e!1816297 e!1816303)))

(declare-fun call!185207 () Option!6405)

(assert (=> b!2869477 (= lt!1017666 call!185207)))

(declare-fun c!463889 () Bool)

(assert (=> b!2869477 (= c!463889 (is-Some!6404 lt!1017666))))

(declare-fun b!2869478 () Bool)

(assert (=> b!2869478 (= e!1816299 (Some!6404 (Cons!34364 (c!463865 (h!39783 (exprs!3190 c!7184))) Nil!34364)))))

(declare-fun b!2869479 () Bool)

(declare-fun e!1816296 () Option!6405)

(assert (=> b!2869479 (= e!1816299 e!1816296)))

(declare-fun c!463884 () Bool)

(assert (=> b!2869479 (= c!463884 (is-Star!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869480 () Bool)

(assert (=> b!2869480 (= e!1816296 (Some!6404 Nil!34364))))

(declare-fun b!2869481 () Bool)

(assert (=> b!2869481 (= c!463887 (is-Union!8730 (h!39783 (exprs!3190 c!7184))))))

(assert (=> b!2869481 (= e!1816296 e!1816297)))

(declare-fun b!2869482 () Bool)

(assert (=> b!2869482 (= e!1816303 None!6404)))

(declare-fun b!2869483 () Bool)

(declare-fun c!463886 () Bool)

(assert (=> b!2869483 (= c!463886 (is-Some!6404 lt!1017665))))

(assert (=> b!2869483 (= lt!1017665 call!185208)))

(assert (=> b!2869483 (= e!1816303 e!1816300)))

(declare-fun b!2869484 () Bool)

(assert (=> b!2869484 (= e!1816297 e!1816301)))

(assert (=> b!2869484 (= lt!1017664 call!185207)))

(declare-fun c!463890 () Bool)

(assert (=> b!2869484 (= c!463890 (is-Some!6404 lt!1017664))))

(declare-fun bm!185203 () Bool)

(assert (=> bm!185203 (= call!185207 (getLanguageWitness!412 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869485 () Bool)

(assert (=> b!2869485 (= e!1816300 None!6404)))

(assert (= (and d!829313 c!463883) b!2869471))

(assert (= (and d!829313 (not c!463883)) b!2869476))

(assert (= (and b!2869476 c!463885) b!2869472))

(assert (= (and b!2869476 (not c!463885)) b!2869475))

(assert (= (and b!2869475 c!463888) b!2869478))

(assert (= (and b!2869475 (not c!463888)) b!2869479))

(assert (= (and b!2869479 c!463884) b!2869480))

(assert (= (and b!2869479 (not c!463884)) b!2869481))

(assert (= (and b!2869481 c!463887) b!2869484))

(assert (= (and b!2869481 (not c!463887)) b!2869477))

(assert (= (and b!2869484 c!463890) b!2869474))

(assert (= (and b!2869484 (not c!463890)) b!2869470))

(assert (= (and b!2869477 c!463889) b!2869483))

(assert (= (and b!2869477 (not c!463889)) b!2869482))

(assert (= (and b!2869483 c!463886) b!2869473))

(assert (= (and b!2869483 (not c!463886)) b!2869485))

(assert (= (or b!2869470 b!2869483) bm!185202))

(assert (= (or b!2869484 b!2869477) bm!185203))

(declare-fun m!3288599 () Bool)

(assert (=> bm!185202 m!3288599))

(declare-fun m!3288601 () Bool)

(assert (=> b!2869473 m!3288601))

(declare-fun m!3288603 () Bool)

(assert (=> bm!185203 m!3288603))

(assert (=> b!2869421 d!829313))

(declare-fun d!829317 () Bool)

(declare-fun lambda!107005 () Int)

(declare-fun exists!1149 (List!34487 Int) Bool)

(assert (=> d!829317 (= (lostCause!822 lt!1017646) (exists!1149 (exprs!3190 lt!1017646) lambda!107005))))

(declare-fun bs!521882 () Bool)

(assert (= bs!521882 d!829317))

(declare-fun m!3288605 () Bool)

(assert (=> bs!521882 m!3288605))

(assert (=> b!2869419 d!829317))

(declare-fun b!2869526 () Bool)

(declare-fun res!1190800 () Bool)

(declare-fun e!1816329 () Bool)

(assert (=> b!2869526 (=> (not res!1190800) (not e!1816329))))

(declare-fun isEmpty!18702 (List!34488) Bool)

(declare-fun tail!4560 (List!34488) List!34488)

(assert (=> b!2869526 (= res!1190800 (isEmpty!18702 (tail!4560 (get!10322 lt!1017648))))))

(declare-fun bm!185206 () Bool)

(declare-fun call!185211 () Bool)

(assert (=> bm!185206 (= call!185211 (isEmpty!18702 (get!10322 lt!1017648)))))

(declare-fun b!2869527 () Bool)

(declare-fun res!1190805 () Bool)

(declare-fun e!1816326 () Bool)

(assert (=> b!2869527 (=> res!1190805 e!1816326)))

(assert (=> b!2869527 (= res!1190805 e!1816329)))

(declare-fun res!1190804 () Bool)

(assert (=> b!2869527 (=> (not res!1190804) (not e!1816329))))

(declare-fun lt!1017675 () Bool)

(assert (=> b!2869527 (= res!1190804 lt!1017675)))

(declare-fun b!2869528 () Bool)

(declare-fun e!1816325 () Bool)

(assert (=> b!2869528 (= e!1816325 (= lt!1017675 call!185211))))

(declare-fun b!2869529 () Bool)

(declare-fun e!1816328 () Bool)

(assert (=> b!2869529 (= e!1816328 (not lt!1017675))))

(declare-fun b!2869530 () Bool)

(declare-fun res!1190802 () Bool)

(assert (=> b!2869530 (=> res!1190802 e!1816326)))

(assert (=> b!2869530 (= res!1190802 (not (is-ElementMatch!8730 (h!39783 (exprs!3190 c!7184)))))))

(assert (=> b!2869530 (= e!1816328 e!1816326)))

(declare-fun b!2869531 () Bool)

(declare-fun e!1816324 () Bool)

(declare-fun e!1816327 () Bool)

(assert (=> b!2869531 (= e!1816324 e!1816327)))

(declare-fun res!1190806 () Bool)

(assert (=> b!2869531 (=> res!1190806 e!1816327)))

(assert (=> b!2869531 (= res!1190806 call!185211)))

(declare-fun b!2869532 () Bool)

(declare-fun head!6335 (List!34488) C!17642)

(assert (=> b!2869532 (= e!1816329 (= (head!6335 (get!10322 lt!1017648)) (c!463865 (h!39783 (exprs!3190 c!7184)))))))

(declare-fun d!829319 () Bool)

(assert (=> d!829319 e!1816325))

(declare-fun c!463905 () Bool)

(assert (=> d!829319 (= c!463905 (is-EmptyExpr!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun e!1816330 () Bool)

(assert (=> d!829319 (= lt!1017675 e!1816330)))

(declare-fun c!463904 () Bool)

(assert (=> d!829319 (= c!463904 (isEmpty!18702 (get!10322 lt!1017648)))))

(declare-fun validRegex!3508 (Regex!8730) Bool)

(assert (=> d!829319 (validRegex!3508 (h!39783 (exprs!3190 c!7184)))))

(assert (=> d!829319 (= (matchR!3730 (h!39783 (exprs!3190 c!7184)) (get!10322 lt!1017648)) lt!1017675)))

(declare-fun b!2869533 () Bool)

(declare-fun nullable!2680 (Regex!8730) Bool)

(assert (=> b!2869533 (= e!1816330 (nullable!2680 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869534 () Bool)

(assert (=> b!2869534 (= e!1816327 (not (= (head!6335 (get!10322 lt!1017648)) (c!463865 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869535 () Bool)

(declare-fun res!1190807 () Bool)

(assert (=> b!2869535 (=> (not res!1190807) (not e!1816329))))

(assert (=> b!2869535 (= res!1190807 (not call!185211))))

(declare-fun b!2869536 () Bool)

(declare-fun derivativeStep!2313 (Regex!8730 C!17642) Regex!8730)

(assert (=> b!2869536 (= e!1816330 (matchR!3730 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648))) (tail!4560 (get!10322 lt!1017648))))))

(declare-fun b!2869537 () Bool)

(declare-fun res!1190801 () Bool)

(assert (=> b!2869537 (=> res!1190801 e!1816327)))

(assert (=> b!2869537 (= res!1190801 (not (isEmpty!18702 (tail!4560 (get!10322 lt!1017648)))))))

(declare-fun b!2869538 () Bool)

(assert (=> b!2869538 (= e!1816325 e!1816328)))

(declare-fun c!463906 () Bool)

(assert (=> b!2869538 (= c!463906 (is-EmptyLang!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869539 () Bool)

(assert (=> b!2869539 (= e!1816326 e!1816324)))

(declare-fun res!1190803 () Bool)

(assert (=> b!2869539 (=> (not res!1190803) (not e!1816324))))

(assert (=> b!2869539 (= res!1190803 (not lt!1017675))))

(assert (= (and d!829319 c!463904) b!2869533))

(assert (= (and d!829319 (not c!463904)) b!2869536))

(assert (= (and d!829319 c!463905) b!2869528))

(assert (= (and d!829319 (not c!463905)) b!2869538))

(assert (= (and b!2869538 c!463906) b!2869529))

(assert (= (and b!2869538 (not c!463906)) b!2869530))

(assert (= (and b!2869530 (not res!1190802)) b!2869527))

(assert (= (and b!2869527 res!1190804) b!2869535))

(assert (= (and b!2869535 res!1190807) b!2869526))

(assert (= (and b!2869526 res!1190800) b!2869532))

(assert (= (and b!2869527 (not res!1190805)) b!2869539))

(assert (= (and b!2869539 res!1190803) b!2869531))

(assert (= (and b!2869531 (not res!1190806)) b!2869537))

(assert (= (and b!2869537 (not res!1190801)) b!2869534))

(assert (= (or b!2869528 b!2869531 b!2869535) bm!185206))

(assert (=> b!2869526 m!3288571))

(declare-fun m!3288607 () Bool)

(assert (=> b!2869526 m!3288607))

(assert (=> b!2869526 m!3288607))

(declare-fun m!3288609 () Bool)

(assert (=> b!2869526 m!3288609))

(assert (=> b!2869534 m!3288571))

(declare-fun m!3288611 () Bool)

(assert (=> b!2869534 m!3288611))

(declare-fun m!3288613 () Bool)

(assert (=> b!2869533 m!3288613))

(assert (=> bm!185206 m!3288571))

(declare-fun m!3288615 () Bool)

(assert (=> bm!185206 m!3288615))

(assert (=> b!2869537 m!3288571))

(assert (=> b!2869537 m!3288607))

(assert (=> b!2869537 m!3288607))

(assert (=> b!2869537 m!3288609))

(assert (=> b!2869532 m!3288571))

(assert (=> b!2869532 m!3288611))

(assert (=> b!2869536 m!3288571))

(assert (=> b!2869536 m!3288611))

(assert (=> b!2869536 m!3288611))

(declare-fun m!3288617 () Bool)

(assert (=> b!2869536 m!3288617))

(assert (=> b!2869536 m!3288571))

(assert (=> b!2869536 m!3288607))

(assert (=> b!2869536 m!3288617))

(assert (=> b!2869536 m!3288607))

(declare-fun m!3288619 () Bool)

(assert (=> b!2869536 m!3288619))

(assert (=> d!829319 m!3288571))

(assert (=> d!829319 m!3288615))

(declare-fun m!3288621 () Bool)

(assert (=> d!829319 m!3288621))

(assert (=> b!2869419 d!829319))

(declare-fun d!829321 () Bool)

(assert (=> d!829321 (= (get!10322 lt!1017648) (v!34526 lt!1017648))))

(assert (=> b!2869419 d!829321))

(declare-fun d!829323 () Bool)

(assert (=> d!829323 (matchR!3730 (h!39783 (exprs!3190 c!7184)) (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184)))))))

(declare-fun lt!1017678 () Unit!47961)

(declare-fun choose!16968 (Regex!8730) Unit!47961)

(assert (=> d!829323 (= lt!1017678 (choose!16968 (h!39783 (exprs!3190 c!7184))))))

(assert (=> d!829323 (validRegex!3508 (h!39783 (exprs!3190 c!7184)))))

(assert (=> d!829323 (= (lemmaGetWitnessMatches!37 (h!39783 (exprs!3190 c!7184))) lt!1017678)))

(declare-fun bs!521883 () Bool)

(assert (= bs!521883 d!829323))

(assert (=> bs!521883 m!3288621))

(declare-fun m!3288623 () Bool)

(assert (=> bs!521883 m!3288623))

(declare-fun m!3288625 () Bool)

(assert (=> bs!521883 m!3288625))

(declare-fun m!3288627 () Bool)

(assert (=> bs!521883 m!3288627))

(assert (=> bs!521883 m!3288577))

(assert (=> bs!521883 m!3288623))

(assert (=> bs!521883 m!3288577))

(assert (=> b!2869419 d!829323))

(declare-fun bs!521884 () Bool)

(declare-fun d!829325 () Bool)

(assert (= bs!521884 (and d!829325 d!829317)))

(declare-fun lambda!107006 () Int)

(assert (=> bs!521884 (= lambda!107006 lambda!107005)))

(assert (=> d!829325 (= (lostCause!822 c!7184) (exists!1149 (exprs!3190 c!7184) lambda!107006))))

(declare-fun bs!521885 () Bool)

(assert (= bs!521885 d!829325))

(declare-fun m!3288629 () Bool)

(assert (=> bs!521885 m!3288629))

(assert (=> start!280086 d!829325))

(declare-fun bs!521886 () Bool)

(declare-fun d!829327 () Bool)

(assert (= bs!521886 (and d!829327 d!829317)))

(declare-fun lambda!107009 () Int)

(assert (=> bs!521886 (not (= lambda!107009 lambda!107005))))

(declare-fun bs!521887 () Bool)

(assert (= bs!521887 (and d!829327 d!829325)))

(assert (=> bs!521887 (not (= lambda!107009 lambda!107006))))

(declare-fun forall!7075 (List!34487 Int) Bool)

(assert (=> d!829327 (= (inv!46413 c!7184) (forall!7075 (exprs!3190 c!7184) lambda!107009))))

(declare-fun bs!521888 () Bool)

(assert (= bs!521888 d!829327))

(declare-fun m!3288631 () Bool)

(assert (=> bs!521888 m!3288631))

(assert (=> start!280086 d!829327))

(declare-fun bs!521889 () Bool)

(declare-fun d!829329 () Bool)

(assert (= bs!521889 (and d!829329 d!829317)))

(declare-fun lambda!107012 () Int)

(assert (=> bs!521889 (= lambda!107012 lambda!107005)))

(declare-fun bs!521890 () Bool)

(assert (= bs!521890 (and d!829329 d!829325)))

(assert (=> bs!521890 (= lambda!107012 lambda!107006)))

(declare-fun bs!521891 () Bool)

(assert (= bs!521891 (and d!829329 d!829327)))

(assert (=> bs!521891 (not (= lambda!107012 lambda!107009))))

(declare-fun b!2869552 () Bool)

(declare-fun e!1816338 () Option!6405)

(declare-fun lt!1017686 () Option!6405)

(declare-fun lt!1017685 () Option!6405)

(assert (=> b!2869552 (= e!1816338 (Some!6404 (++!8167 (v!34526 lt!1017686) (v!34526 lt!1017685))))))

(declare-fun lt!1017687 () Option!6405)

(declare-fun isEmpty!18703 (Option!6405) Bool)

(assert (=> d!829329 (= (isEmpty!18703 lt!1017687) (exists!1149 (exprs!3190 lt!1017646) lambda!107012))))

(declare-fun e!1816339 () Option!6405)

(assert (=> d!829329 (= lt!1017687 e!1816339)))

(declare-fun c!463914 () Bool)

(assert (=> d!829329 (= c!463914 (is-Cons!34363 (exprs!3190 lt!1017646)))))

(assert (=> d!829329 (= (getLanguageWitness!411 lt!1017646) lt!1017687)))

(declare-fun b!2869553 () Bool)

(assert (=> b!2869553 (= e!1816339 (Some!6404 Nil!34364))))

(declare-fun b!2869554 () Bool)

(assert (=> b!2869554 (= e!1816338 None!6404)))

(declare-fun b!2869555 () Bool)

(declare-fun e!1816337 () Option!6405)

(assert (=> b!2869555 (= e!1816339 e!1816337)))

(assert (=> b!2869555 (= lt!1017686 (getLanguageWitness!412 (h!39783 (exprs!3190 lt!1017646))))))

(declare-fun c!463916 () Bool)

(assert (=> b!2869555 (= c!463916 (is-Some!6404 lt!1017686))))

(declare-fun b!2869556 () Bool)

(assert (=> b!2869556 (= e!1816337 None!6404)))

(declare-fun b!2869557 () Bool)

(declare-fun c!463915 () Bool)

(assert (=> b!2869557 (= c!463915 (is-Some!6404 lt!1017685))))

(assert (=> b!2869557 (= lt!1017685 (getLanguageWitness!411 (Context!5381 (t!233530 (exprs!3190 lt!1017646)))))))

(assert (=> b!2869557 (= e!1816337 e!1816338)))

(assert (= (and d!829329 c!463914) b!2869555))

(assert (= (and d!829329 (not c!463914)) b!2869553))

(assert (= (and b!2869555 c!463916) b!2869557))

(assert (= (and b!2869555 (not c!463916)) b!2869556))

(assert (= (and b!2869557 c!463915) b!2869552))

(assert (= (and b!2869557 (not c!463915)) b!2869554))

(declare-fun m!3288633 () Bool)

(assert (=> b!2869552 m!3288633))

(declare-fun m!3288635 () Bool)

(assert (=> d!829329 m!3288635))

(declare-fun m!3288637 () Bool)

(assert (=> d!829329 m!3288637))

(declare-fun m!3288639 () Bool)

(assert (=> b!2869555 m!3288639))

(declare-fun m!3288641 () Bool)

(assert (=> b!2869557 m!3288641))

(assert (=> b!2869418 d!829329))

(declare-fun b!2869562 () Bool)

(declare-fun e!1816342 () Bool)

(declare-fun tp!923289 () Bool)

(declare-fun tp!923290 () Bool)

(assert (=> b!2869562 (= e!1816342 (and tp!923289 tp!923290))))

(assert (=> b!2869422 (= tp!923281 e!1816342)))

(assert (= (and b!2869422 (is-Cons!34363 (exprs!3190 c!7184))) b!2869562))

(push 1)

(assert (not b!2869557))

(assert (not bm!185202))

(assert (not b!2869555))

(assert (not b!2869537))

(assert (not b!2869534))

(assert (not b!2869473))

(assert (not b!2869562))

(assert (not d!829329))

(assert (not b!2869536))

(assert (not b!2869533))

(assert (not b!2869532))

(assert (not d!829317))

(assert (not d!829323))

(assert (not bm!185203))

(assert (not bm!185206))

(assert (not b!2869552))

(assert (not d!829327))

(assert (not d!829325))

(assert (not b!2869526))

(assert (not d!829319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!521894 () Bool)

(declare-fun d!829337 () Bool)

(assert (= bs!521894 (and d!829337 d!829317)))

(declare-fun lambda!107019 () Int)

(assert (=> bs!521894 (= lambda!107019 lambda!107005)))

(declare-fun bs!521895 () Bool)

(assert (= bs!521895 (and d!829337 d!829325)))

(assert (=> bs!521895 (= lambda!107019 lambda!107006)))

(declare-fun bs!521896 () Bool)

(assert (= bs!521896 (and d!829337 d!829327)))

(assert (=> bs!521896 (not (= lambda!107019 lambda!107009))))

(declare-fun bs!521897 () Bool)

(assert (= bs!521897 (and d!829337 d!829329)))

(assert (=> bs!521897 (= lambda!107019 lambda!107012)))

(declare-fun b!2869611 () Bool)

(declare-fun e!1816368 () Option!6405)

(declare-fun lt!1017695 () Option!6405)

(declare-fun lt!1017694 () Option!6405)

(assert (=> b!2869611 (= e!1816368 (Some!6404 (++!8167 (v!34526 lt!1017695) (v!34526 lt!1017694))))))

(declare-fun lt!1017696 () Option!6405)

(assert (=> d!829337 (= (isEmpty!18703 lt!1017696) (exists!1149 (exprs!3190 (Context!5381 (t!233530 (exprs!3190 lt!1017646)))) lambda!107019))))

(declare-fun e!1816369 () Option!6405)

(assert (=> d!829337 (= lt!1017696 e!1816369)))

(declare-fun c!463929 () Bool)

(assert (=> d!829337 (= c!463929 (is-Cons!34363 (exprs!3190 (Context!5381 (t!233530 (exprs!3190 lt!1017646))))))))

(assert (=> d!829337 (= (getLanguageWitness!411 (Context!5381 (t!233530 (exprs!3190 lt!1017646)))) lt!1017696)))

(declare-fun b!2869612 () Bool)

(assert (=> b!2869612 (= e!1816369 (Some!6404 Nil!34364))))

(declare-fun b!2869613 () Bool)

(assert (=> b!2869613 (= e!1816368 None!6404)))

(declare-fun b!2869614 () Bool)

(declare-fun e!1816367 () Option!6405)

(assert (=> b!2869614 (= e!1816369 e!1816367)))

(assert (=> b!2869614 (= lt!1017695 (getLanguageWitness!412 (h!39783 (exprs!3190 (Context!5381 (t!233530 (exprs!3190 lt!1017646)))))))))

(declare-fun c!463931 () Bool)

(assert (=> b!2869614 (= c!463931 (is-Some!6404 lt!1017695))))

(declare-fun b!2869615 () Bool)

(assert (=> b!2869615 (= e!1816367 None!6404)))

(declare-fun b!2869616 () Bool)

(declare-fun c!463930 () Bool)

(assert (=> b!2869616 (= c!463930 (is-Some!6404 lt!1017694))))

(assert (=> b!2869616 (= lt!1017694 (getLanguageWitness!411 (Context!5381 (t!233530 (exprs!3190 (Context!5381 (t!233530 (exprs!3190 lt!1017646))))))))))

(assert (=> b!2869616 (= e!1816367 e!1816368)))

(assert (= (and d!829337 c!463929) b!2869614))

(assert (= (and d!829337 (not c!463929)) b!2869612))

(assert (= (and b!2869614 c!463931) b!2869616))

(assert (= (and b!2869614 (not c!463931)) b!2869615))

(assert (= (and b!2869616 c!463930) b!2869611))

(assert (= (and b!2869616 (not c!463930)) b!2869613))

(declare-fun m!3288671 () Bool)

(assert (=> b!2869611 m!3288671))

(declare-fun m!3288673 () Bool)

(assert (=> d!829337 m!3288673))

(declare-fun m!3288675 () Bool)

(assert (=> d!829337 m!3288675))

(declare-fun m!3288677 () Bool)

(assert (=> b!2869614 m!3288677))

(declare-fun m!3288679 () Bool)

(assert (=> b!2869616 m!3288679))

(assert (=> b!2869557 d!829337))

(declare-fun d!829341 () Bool)

(assert (=> d!829341 (= (head!6335 (get!10322 lt!1017648)) (h!39784 (get!10322 lt!1017648)))))

(assert (=> b!2869534 d!829341))

(declare-fun d!829343 () Bool)

(declare-fun nullableFct!813 (Regex!8730) Bool)

(assert (=> d!829343 (= (nullable!2680 (h!39783 (exprs!3190 c!7184))) (nullableFct!813 (h!39783 (exprs!3190 c!7184))))))

(declare-fun bs!521898 () Bool)

(assert (= bs!521898 d!829343))

(declare-fun m!3288681 () Bool)

(assert (=> bs!521898 m!3288681))

(assert (=> b!2869533 d!829343))

(declare-fun d!829345 () Bool)

(assert (=> d!829345 (= (isEmpty!18703 lt!1017687) (not (is-Some!6404 lt!1017687)))))

(assert (=> d!829329 d!829345))

(declare-fun bs!521900 () Bool)

(declare-fun d!829347 () Bool)

(assert (= bs!521900 (and d!829347 d!829325)))

(declare-fun lambda!107022 () Int)

(assert (=> bs!521900 (not (= lambda!107022 lambda!107006))))

(declare-fun bs!521901 () Bool)

(assert (= bs!521901 (and d!829347 d!829327)))

(assert (=> bs!521901 (not (= lambda!107022 lambda!107009))))

(declare-fun bs!521902 () Bool)

(assert (= bs!521902 (and d!829347 d!829317)))

(assert (=> bs!521902 (not (= lambda!107022 lambda!107005))))

(declare-fun bs!521903 () Bool)

(assert (= bs!521903 (and d!829347 d!829337)))

(assert (=> bs!521903 (not (= lambda!107022 lambda!107019))))

(declare-fun bs!521904 () Bool)

(assert (= bs!521904 (and d!829347 d!829329)))

(assert (=> bs!521904 (not (= lambda!107022 lambda!107012))))

(assert (=> d!829347 true))

(declare-fun order!18121 () Int)

(declare-fun dynLambda!14303 (Int Int) Int)

(assert (=> d!829347 (< (dynLambda!14303 order!18121 lambda!107012) (dynLambda!14303 order!18121 lambda!107022))))

(assert (=> d!829347 (= (exists!1149 (exprs!3190 lt!1017646) lambda!107012) (not (forall!7075 (exprs!3190 lt!1017646) lambda!107022)))))

(declare-fun bs!521905 () Bool)

(assert (= bs!521905 d!829347))

(declare-fun m!3288689 () Bool)

(assert (=> bs!521905 m!3288689))

(assert (=> d!829329 d!829347))

(declare-fun bs!521906 () Bool)

(declare-fun d!829351 () Bool)

(assert (= bs!521906 (and d!829351 d!829327)))

(declare-fun lambda!107023 () Int)

(assert (=> bs!521906 (not (= lambda!107023 lambda!107009))))

(declare-fun bs!521907 () Bool)

(assert (= bs!521907 (and d!829351 d!829317)))

(assert (=> bs!521907 (not (= lambda!107023 lambda!107005))))

(declare-fun bs!521908 () Bool)

(assert (= bs!521908 (and d!829351 d!829337)))

(assert (=> bs!521908 (not (= lambda!107023 lambda!107019))))

(declare-fun bs!521909 () Bool)

(assert (= bs!521909 (and d!829351 d!829329)))

(assert (=> bs!521909 (not (= lambda!107023 lambda!107012))))

(declare-fun bs!521910 () Bool)

(assert (= bs!521910 (and d!829351 d!829325)))

(assert (=> bs!521910 (not (= lambda!107023 lambda!107006))))

(declare-fun bs!521911 () Bool)

(assert (= bs!521911 (and d!829351 d!829347)))

(assert (=> bs!521911 (= (= lambda!107006 lambda!107012) (= lambda!107023 lambda!107022))))

(assert (=> d!829351 true))

(assert (=> d!829351 (< (dynLambda!14303 order!18121 lambda!107006) (dynLambda!14303 order!18121 lambda!107023))))

(assert (=> d!829351 (= (exists!1149 (exprs!3190 c!7184) lambda!107006) (not (forall!7075 (exprs!3190 c!7184) lambda!107023)))))

(declare-fun bs!521912 () Bool)

(assert (= bs!521912 d!829351))

(declare-fun m!3288691 () Bool)

(assert (=> bs!521912 m!3288691))

(assert (=> d!829325 d!829351))

(declare-fun d!829353 () Bool)

(assert (=> d!829353 (= (isEmpty!18702 (get!10322 lt!1017648)) (is-Nil!34364 (get!10322 lt!1017648)))))

(assert (=> d!829319 d!829353))

(declare-fun b!2869669 () Bool)

(declare-fun e!1816404 () Bool)

(declare-fun call!185227 () Bool)

(assert (=> b!2869669 (= e!1816404 call!185227)))

(declare-fun b!2869670 () Bool)

(declare-fun e!1816403 () Bool)

(declare-fun call!185226 () Bool)

(assert (=> b!2869670 (= e!1816403 call!185226)))

(declare-fun b!2869671 () Bool)

(declare-fun e!1816400 () Bool)

(declare-fun e!1816402 () Bool)

(assert (=> b!2869671 (= e!1816400 e!1816402)))

(declare-fun c!463953 () Bool)

(assert (=> b!2869671 (= c!463953 (is-Union!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869672 () Bool)

(declare-fun e!1816405 () Bool)

(assert (=> b!2869672 (= e!1816405 e!1816403)))

(declare-fun res!1190845 () Bool)

(assert (=> b!2869672 (=> (not res!1190845) (not e!1816403))))

(assert (=> b!2869672 (= res!1190845 call!185227)))

(declare-fun bm!185220 () Bool)

(declare-fun call!185225 () Bool)

(assert (=> bm!185220 (= call!185226 call!185225)))

(declare-fun bm!185221 () Bool)

(declare-fun c!463952 () Bool)

(assert (=> bm!185221 (= call!185225 (validRegex!3508 (ite c!463952 (reg!9059 (h!39783 (exprs!3190 c!7184))) (ite c!463953 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184)))))))))

(declare-fun b!2869673 () Bool)

(declare-fun res!1190846 () Bool)

(assert (=> b!2869673 (=> res!1190846 e!1816405)))

(assert (=> b!2869673 (= res!1190846 (not (is-Concat!14051 (h!39783 (exprs!3190 c!7184)))))))

(assert (=> b!2869673 (= e!1816402 e!1816405)))

(declare-fun b!2869674 () Bool)

(declare-fun e!1816401 () Bool)

(assert (=> b!2869674 (= e!1816401 call!185225)))

(declare-fun d!829355 () Bool)

(declare-fun res!1190843 () Bool)

(declare-fun e!1816406 () Bool)

(assert (=> d!829355 (=> res!1190843 e!1816406)))

(assert (=> d!829355 (= res!1190843 (is-ElementMatch!8730 (h!39783 (exprs!3190 c!7184))))))

(assert (=> d!829355 (= (validRegex!3508 (h!39783 (exprs!3190 c!7184))) e!1816406)))

(declare-fun b!2869675 () Bool)

(assert (=> b!2869675 (= e!1816400 e!1816401)))

(declare-fun res!1190842 () Bool)

(assert (=> b!2869675 (= res!1190842 (not (nullable!2680 (reg!9059 (h!39783 (exprs!3190 c!7184))))))))

(assert (=> b!2869675 (=> (not res!1190842) (not e!1816401))))

(declare-fun b!2869676 () Bool)

(declare-fun res!1190844 () Bool)

(assert (=> b!2869676 (=> (not res!1190844) (not e!1816404))))

(assert (=> b!2869676 (= res!1190844 call!185226)))

(assert (=> b!2869676 (= e!1816402 e!1816404)))

(declare-fun b!2869677 () Bool)

(assert (=> b!2869677 (= e!1816406 e!1816400)))

(assert (=> b!2869677 (= c!463952 (is-Star!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun bm!185222 () Bool)

(assert (=> bm!185222 (= call!185227 (validRegex!3508 (ite c!463953 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))

(assert (= (and d!829355 (not res!1190843)) b!2869677))

(assert (= (and b!2869677 c!463952) b!2869675))

(assert (= (and b!2869677 (not c!463952)) b!2869671))

(assert (= (and b!2869675 res!1190842) b!2869674))

(assert (= (and b!2869671 c!463953) b!2869676))

(assert (= (and b!2869671 (not c!463953)) b!2869673))

(assert (= (and b!2869676 res!1190844) b!2869669))

(assert (= (and b!2869673 (not res!1190846)) b!2869672))

(assert (= (and b!2869672 res!1190845) b!2869670))

(assert (= (or b!2869669 b!2869672) bm!185222))

(assert (= (or b!2869676 b!2869670) bm!185220))

(assert (= (or b!2869674 bm!185220) bm!185221))

(declare-fun m!3288693 () Bool)

(assert (=> bm!185221 m!3288693))

(declare-fun m!3288695 () Bool)

(assert (=> b!2869675 m!3288695))

(declare-fun m!3288697 () Bool)

(assert (=> bm!185222 m!3288697))

(assert (=> d!829319 d!829355))

(assert (=> bm!185206 d!829353))

(declare-fun d!829357 () Bool)

(assert (=> d!829357 (= (isEmpty!18702 (tail!4560 (get!10322 lt!1017648))) (is-Nil!34364 (tail!4560 (get!10322 lt!1017648))))))

(assert (=> b!2869526 d!829357))

(declare-fun d!829359 () Bool)

(assert (=> d!829359 (= (tail!4560 (get!10322 lt!1017648)) (t!233531 (get!10322 lt!1017648)))))

(assert (=> b!2869526 d!829359))

(declare-fun b!2869694 () Bool)

(declare-fun res!1190847 () Bool)

(declare-fun e!1816420 () Bool)

(assert (=> b!2869694 (=> (not res!1190847) (not e!1816420))))

(assert (=> b!2869694 (= res!1190847 (isEmpty!18702 (tail!4560 (tail!4560 (get!10322 lt!1017648)))))))

(declare-fun bm!185225 () Bool)

(declare-fun call!185230 () Bool)

(assert (=> bm!185225 (= call!185230 (isEmpty!18702 (tail!4560 (get!10322 lt!1017648))))))

(declare-fun b!2869695 () Bool)

(declare-fun res!1190852 () Bool)

(declare-fun e!1816417 () Bool)

(assert (=> b!2869695 (=> res!1190852 e!1816417)))

(assert (=> b!2869695 (= res!1190852 e!1816420)))

(declare-fun res!1190851 () Bool)

(assert (=> b!2869695 (=> (not res!1190851) (not e!1816420))))

(declare-fun lt!1017709 () Bool)

(assert (=> b!2869695 (= res!1190851 lt!1017709)))

(declare-fun b!2869696 () Bool)

(declare-fun e!1816416 () Bool)

(assert (=> b!2869696 (= e!1816416 (= lt!1017709 call!185230))))

(declare-fun b!2869697 () Bool)

(declare-fun e!1816419 () Bool)

(assert (=> b!2869697 (= e!1816419 (not lt!1017709))))

(declare-fun b!2869698 () Bool)

(declare-fun res!1190849 () Bool)

(assert (=> b!2869698 (=> res!1190849 e!1816417)))

(assert (=> b!2869698 (= res!1190849 (not (is-ElementMatch!8730 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648))))))))

(assert (=> b!2869698 (= e!1816419 e!1816417)))

(declare-fun b!2869699 () Bool)

(declare-fun e!1816415 () Bool)

(declare-fun e!1816418 () Bool)

(assert (=> b!2869699 (= e!1816415 e!1816418)))

(declare-fun res!1190853 () Bool)

(assert (=> b!2869699 (=> res!1190853 e!1816418)))

(assert (=> b!2869699 (= res!1190853 call!185230)))

(declare-fun b!2869700 () Bool)

(assert (=> b!2869700 (= e!1816420 (= (head!6335 (tail!4560 (get!10322 lt!1017648))) (c!463865 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648))))))))

(declare-fun d!829361 () Bool)

(assert (=> d!829361 e!1816416))

(declare-fun c!463963 () Bool)

(assert (=> d!829361 (= c!463963 (is-EmptyExpr!8730 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648)))))))

(declare-fun e!1816421 () Bool)

(assert (=> d!829361 (= lt!1017709 e!1816421)))

(declare-fun c!463962 () Bool)

(assert (=> d!829361 (= c!463962 (isEmpty!18702 (tail!4560 (get!10322 lt!1017648))))))

(assert (=> d!829361 (validRegex!3508 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648))))))

(assert (=> d!829361 (= (matchR!3730 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648))) (tail!4560 (get!10322 lt!1017648))) lt!1017709)))

(declare-fun b!2869701 () Bool)

(assert (=> b!2869701 (= e!1816421 (nullable!2680 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648)))))))

(declare-fun b!2869702 () Bool)

(assert (=> b!2869702 (= e!1816418 (not (= (head!6335 (tail!4560 (get!10322 lt!1017648))) (c!463865 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648)))))))))

(declare-fun b!2869703 () Bool)

(declare-fun res!1190854 () Bool)

(assert (=> b!2869703 (=> (not res!1190854) (not e!1816420))))

(assert (=> b!2869703 (= res!1190854 (not call!185230))))

(declare-fun b!2869704 () Bool)

(assert (=> b!2869704 (= e!1816421 (matchR!3730 (derivativeStep!2313 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648))) (head!6335 (tail!4560 (get!10322 lt!1017648)))) (tail!4560 (tail!4560 (get!10322 lt!1017648)))))))

(declare-fun b!2869705 () Bool)

(declare-fun res!1190848 () Bool)

(assert (=> b!2869705 (=> res!1190848 e!1816418)))

(assert (=> b!2869705 (= res!1190848 (not (isEmpty!18702 (tail!4560 (tail!4560 (get!10322 lt!1017648))))))))

(declare-fun b!2869706 () Bool)

(assert (=> b!2869706 (= e!1816416 e!1816419)))

(declare-fun c!463964 () Bool)

(assert (=> b!2869706 (= c!463964 (is-EmptyLang!8730 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648)))))))

(declare-fun b!2869707 () Bool)

(assert (=> b!2869707 (= e!1816417 e!1816415)))

(declare-fun res!1190850 () Bool)

(assert (=> b!2869707 (=> (not res!1190850) (not e!1816415))))

(assert (=> b!2869707 (= res!1190850 (not lt!1017709))))

(assert (= (and d!829361 c!463962) b!2869701))

(assert (= (and d!829361 (not c!463962)) b!2869704))

(assert (= (and d!829361 c!463963) b!2869696))

(assert (= (and d!829361 (not c!463963)) b!2869706))

(assert (= (and b!2869706 c!463964) b!2869697))

(assert (= (and b!2869706 (not c!463964)) b!2869698))

(assert (= (and b!2869698 (not res!1190849)) b!2869695))

(assert (= (and b!2869695 res!1190851) b!2869703))

(assert (= (and b!2869703 res!1190854) b!2869694))

(assert (= (and b!2869694 res!1190847) b!2869700))

(assert (= (and b!2869695 (not res!1190852)) b!2869707))

(assert (= (and b!2869707 res!1190850) b!2869699))

(assert (= (and b!2869699 (not res!1190853)) b!2869705))

(assert (= (and b!2869705 (not res!1190848)) b!2869702))

(assert (= (or b!2869696 b!2869699 b!2869703) bm!185225))

(assert (=> b!2869694 m!3288607))

(declare-fun m!3288705 () Bool)

(assert (=> b!2869694 m!3288705))

(assert (=> b!2869694 m!3288705))

(declare-fun m!3288707 () Bool)

(assert (=> b!2869694 m!3288707))

(assert (=> b!2869702 m!3288607))

(declare-fun m!3288709 () Bool)

(assert (=> b!2869702 m!3288709))

(assert (=> b!2869701 m!3288617))

(declare-fun m!3288711 () Bool)

(assert (=> b!2869701 m!3288711))

(assert (=> bm!185225 m!3288607))

(assert (=> bm!185225 m!3288609))

(assert (=> b!2869705 m!3288607))

(assert (=> b!2869705 m!3288705))

(assert (=> b!2869705 m!3288705))

(assert (=> b!2869705 m!3288707))

(assert (=> b!2869700 m!3288607))

(assert (=> b!2869700 m!3288709))

(assert (=> b!2869704 m!3288607))

(assert (=> b!2869704 m!3288709))

(assert (=> b!2869704 m!3288617))

(assert (=> b!2869704 m!3288709))

(declare-fun m!3288713 () Bool)

(assert (=> b!2869704 m!3288713))

(assert (=> b!2869704 m!3288607))

(assert (=> b!2869704 m!3288705))

(assert (=> b!2869704 m!3288713))

(assert (=> b!2869704 m!3288705))

(declare-fun m!3288717 () Bool)

(assert (=> b!2869704 m!3288717))

(assert (=> d!829361 m!3288607))

(assert (=> d!829361 m!3288609))

(assert (=> d!829361 m!3288617))

(declare-fun m!3288719 () Bool)

(assert (=> d!829361 m!3288719))

(assert (=> b!2869536 d!829361))

(declare-fun call!185242 () Regex!8730)

(declare-fun c!463976 () Bool)

(declare-fun c!463975 () Bool)

(declare-fun bm!185234 () Bool)

(assert (=> bm!185234 (= call!185242 (derivativeStep!2313 (ite c!463976 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (ite c!463975 (reg!9059 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))) (head!6335 (get!10322 lt!1017648))))))

(declare-fun d!829367 () Bool)

(declare-fun lt!1017712 () Regex!8730)

(assert (=> d!829367 (validRegex!3508 lt!1017712)))

(declare-fun e!1816436 () Regex!8730)

(assert (=> d!829367 (= lt!1017712 e!1816436)))

(declare-fun c!463977 () Bool)

(assert (=> d!829367 (= c!463977 (or (is-EmptyExpr!8730 (h!39783 (exprs!3190 c!7184))) (is-EmptyLang!8730 (h!39783 (exprs!3190 c!7184)))))))

(assert (=> d!829367 (validRegex!3508 (h!39783 (exprs!3190 c!7184)))))

(assert (=> d!829367 (= (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 lt!1017648))) lt!1017712)))

(declare-fun b!2869733 () Bool)

(declare-fun e!1816435 () Regex!8730)

(declare-fun e!1816439 () Regex!8730)

(assert (=> b!2869733 (= e!1816435 e!1816439)))

(assert (=> b!2869733 (= c!463975 (is-Star!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869734 () Bool)

(declare-fun e!1816437 () Regex!8730)

(assert (=> b!2869734 (= e!1816437 (ite (= (head!6335 (get!10322 lt!1017648)) (c!463865 (h!39783 (exprs!3190 c!7184)))) EmptyExpr!8730 EmptyLang!8730))))

(declare-fun b!2869735 () Bool)

(declare-fun call!185241 () Regex!8730)

(assert (=> b!2869735 (= e!1816439 (Concat!14051 call!185241 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869736 () Bool)

(assert (=> b!2869736 (= c!463976 (is-Union!8730 (h!39783 (exprs!3190 c!7184))))))

(assert (=> b!2869736 (= e!1816437 e!1816435)))

(declare-fun bm!185235 () Bool)

(declare-fun call!185240 () Regex!8730)

(assert (=> bm!185235 (= call!185240 call!185241)))

(declare-fun b!2869737 () Bool)

(assert (=> b!2869737 (= e!1816436 EmptyLang!8730)))

(declare-fun b!2869738 () Bool)

(declare-fun e!1816438 () Regex!8730)

(assert (=> b!2869738 (= e!1816438 (Union!8730 (Concat!14051 call!185240 (regTwo!17972 (h!39783 (exprs!3190 c!7184)))) EmptyLang!8730))))

(declare-fun bm!185236 () Bool)

(declare-fun call!185239 () Regex!8730)

(assert (=> bm!185236 (= call!185239 (derivativeStep!2313 (ite c!463976 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184)))) (head!6335 (get!10322 lt!1017648))))))

(declare-fun b!2869739 () Bool)

(declare-fun c!463978 () Bool)

(assert (=> b!2869739 (= c!463978 (nullable!2680 (regOne!17972 (h!39783 (exprs!3190 c!7184)))))))

(assert (=> b!2869739 (= e!1816439 e!1816438)))

(declare-fun b!2869740 () Bool)

(assert (=> b!2869740 (= e!1816438 (Union!8730 (Concat!14051 call!185240 (regTwo!17972 (h!39783 (exprs!3190 c!7184)))) call!185239))))

(declare-fun b!2869741 () Bool)

(assert (=> b!2869741 (= e!1816435 (Union!8730 call!185242 call!185239))))

(declare-fun bm!185237 () Bool)

(assert (=> bm!185237 (= call!185241 call!185242)))

(declare-fun b!2869742 () Bool)

(assert (=> b!2869742 (= e!1816436 e!1816437)))

(declare-fun c!463979 () Bool)

(assert (=> b!2869742 (= c!463979 (is-ElementMatch!8730 (h!39783 (exprs!3190 c!7184))))))

(assert (= (and d!829367 c!463977) b!2869737))

(assert (= (and d!829367 (not c!463977)) b!2869742))

(assert (= (and b!2869742 c!463979) b!2869734))

(assert (= (and b!2869742 (not c!463979)) b!2869736))

(assert (= (and b!2869736 c!463976) b!2869741))

(assert (= (and b!2869736 (not c!463976)) b!2869733))

(assert (= (and b!2869733 c!463975) b!2869735))

(assert (= (and b!2869733 (not c!463975)) b!2869739))

(assert (= (and b!2869739 c!463978) b!2869740))

(assert (= (and b!2869739 (not c!463978)) b!2869738))

(assert (= (or b!2869740 b!2869738) bm!185235))

(assert (= (or b!2869735 bm!185235) bm!185237))

(assert (= (or b!2869741 bm!185237) bm!185234))

(assert (= (or b!2869741 b!2869740) bm!185236))

(assert (=> bm!185234 m!3288611))

(declare-fun m!3288723 () Bool)

(assert (=> bm!185234 m!3288723))

(declare-fun m!3288725 () Bool)

(assert (=> d!829367 m!3288725))

(assert (=> d!829367 m!3288621))

(assert (=> bm!185236 m!3288611))

(declare-fun m!3288727 () Bool)

(assert (=> bm!185236 m!3288727))

(declare-fun m!3288729 () Bool)

(assert (=> b!2869739 m!3288729))

(assert (=> b!2869536 d!829367))

(assert (=> b!2869536 d!829341))

(assert (=> b!2869536 d!829359))

(declare-fun bs!521920 () Bool)

(declare-fun d!829369 () Bool)

(assert (= bs!521920 (and d!829369 d!829327)))

(declare-fun lambda!107028 () Int)

(assert (=> bs!521920 (not (= lambda!107028 lambda!107009))))

(declare-fun bs!521921 () Bool)

(assert (= bs!521921 (and d!829369 d!829317)))

(assert (=> bs!521921 (not (= lambda!107028 lambda!107005))))

(declare-fun bs!521922 () Bool)

(assert (= bs!521922 (and d!829369 d!829329)))

(assert (=> bs!521922 (not (= lambda!107028 lambda!107012))))

(declare-fun bs!521923 () Bool)

(assert (= bs!521923 (and d!829369 d!829325)))

(assert (=> bs!521923 (not (= lambda!107028 lambda!107006))))

(declare-fun bs!521924 () Bool)

(assert (= bs!521924 (and d!829369 d!829347)))

(assert (=> bs!521924 (= (= lambda!107005 lambda!107012) (= lambda!107028 lambda!107022))))

(declare-fun bs!521925 () Bool)

(assert (= bs!521925 (and d!829369 d!829337)))

(assert (=> bs!521925 (not (= lambda!107028 lambda!107019))))

(declare-fun bs!521926 () Bool)

(assert (= bs!521926 (and d!829369 d!829351)))

(assert (=> bs!521926 (= (= lambda!107005 lambda!107006) (= lambda!107028 lambda!107023))))

(assert (=> d!829369 true))

(assert (=> d!829369 (< (dynLambda!14303 order!18121 lambda!107005) (dynLambda!14303 order!18121 lambda!107028))))

(assert (=> d!829369 (= (exists!1149 (exprs!3190 lt!1017646) lambda!107005) (not (forall!7075 (exprs!3190 lt!1017646) lambda!107028)))))

(declare-fun bs!521927 () Bool)

(assert (= bs!521927 d!829369))

(declare-fun m!3288731 () Bool)

(assert (=> bs!521927 m!3288731))

(assert (=> d!829317 d!829369))

(assert (=> b!2869537 d!829357))

(assert (=> b!2869537 d!829359))

(declare-fun b!2869743 () Bool)

(declare-fun e!1816445 () Option!6405)

(declare-fun call!185244 () Option!6405)

(assert (=> b!2869743 (= e!1816445 call!185244)))

(declare-fun d!829371 () Bool)

(declare-fun c!463980 () Bool)

(assert (=> d!829371 (= c!463980 (is-EmptyExpr!8730 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun e!1816446 () Option!6405)

(assert (=> d!829371 (= (getLanguageWitness!412 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))) e!1816446)))

(declare-fun b!2869744 () Bool)

(assert (=> b!2869744 (= e!1816446 (Some!6404 Nil!34364))))

(declare-fun b!2869745 () Bool)

(declare-fun e!1816442 () Option!6405)

(assert (=> b!2869745 (= e!1816442 None!6404)))

(declare-fun c!463984 () Bool)

(declare-fun bm!185238 () Bool)

(assert (=> bm!185238 (= call!185244 (getLanguageWitness!412 (ite c!463984 (regTwo!17973 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))) (regTwo!17972 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))))))))

(declare-fun b!2869746 () Bool)

(declare-fun e!1816444 () Option!6405)

(declare-fun lt!1017715 () Option!6405)

(declare-fun lt!1017714 () Option!6405)

(assert (=> b!2869746 (= e!1816444 (Some!6404 (++!8167 (v!34526 lt!1017715) (v!34526 lt!1017714))))))

(declare-fun b!2869747 () Bool)

(declare-fun lt!1017713 () Option!6405)

(assert (=> b!2869747 (= e!1816445 lt!1017713)))

(declare-fun b!2869748 () Bool)

(declare-fun c!463985 () Bool)

(assert (=> b!2869748 (= c!463985 (is-ElementMatch!8730 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun e!1816443 () Option!6405)

(assert (=> b!2869748 (= e!1816442 e!1816443)))

(declare-fun b!2869749 () Bool)

(assert (=> b!2869749 (= e!1816446 e!1816442)))

(declare-fun c!463982 () Bool)

(assert (=> b!2869749 (= c!463982 (is-EmptyLang!8730 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869750 () Bool)

(declare-fun e!1816441 () Option!6405)

(declare-fun e!1816447 () Option!6405)

(assert (=> b!2869750 (= e!1816441 e!1816447)))

(declare-fun call!185243 () Option!6405)

(assert (=> b!2869750 (= lt!1017715 call!185243)))

(declare-fun c!463986 () Bool)

(assert (=> b!2869750 (= c!463986 (is-Some!6404 lt!1017715))))

(declare-fun b!2869751 () Bool)

(assert (=> b!2869751 (= e!1816443 (Some!6404 (Cons!34364 (c!463865 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))) Nil!34364)))))

(declare-fun b!2869752 () Bool)

(declare-fun e!1816440 () Option!6405)

(assert (=> b!2869752 (= e!1816443 e!1816440)))

(declare-fun c!463981 () Bool)

(assert (=> b!2869752 (= c!463981 (is-Star!8730 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869753 () Bool)

(assert (=> b!2869753 (= e!1816440 (Some!6404 Nil!34364))))

(declare-fun b!2869754 () Bool)

(assert (=> b!2869754 (= c!463984 (is-Union!8730 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))))))

(assert (=> b!2869754 (= e!1816440 e!1816441)))

(declare-fun b!2869755 () Bool)

(assert (=> b!2869755 (= e!1816447 None!6404)))

(declare-fun b!2869756 () Bool)

(declare-fun c!463983 () Bool)

(assert (=> b!2869756 (= c!463983 (is-Some!6404 lt!1017714))))

(assert (=> b!2869756 (= lt!1017714 call!185244)))

(assert (=> b!2869756 (= e!1816447 e!1816444)))

(declare-fun b!2869757 () Bool)

(assert (=> b!2869757 (= e!1816441 e!1816445)))

(assert (=> b!2869757 (= lt!1017713 call!185243)))

(declare-fun c!463987 () Bool)

(assert (=> b!2869757 (= c!463987 (is-Some!6404 lt!1017713))))

(declare-fun bm!185239 () Bool)

(assert (=> bm!185239 (= call!185243 (getLanguageWitness!412 (ite c!463984 (regOne!17973 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))) (regOne!17972 (ite c!463887 (regTwo!17973 (h!39783 (exprs!3190 c!7184))) (regTwo!17972 (h!39783 (exprs!3190 c!7184))))))))))

(declare-fun b!2869758 () Bool)

(assert (=> b!2869758 (= e!1816444 None!6404)))

(assert (= (and d!829371 c!463980) b!2869744))

(assert (= (and d!829371 (not c!463980)) b!2869749))

(assert (= (and b!2869749 c!463982) b!2869745))

(assert (= (and b!2869749 (not c!463982)) b!2869748))

(assert (= (and b!2869748 c!463985) b!2869751))

(assert (= (and b!2869748 (not c!463985)) b!2869752))

(assert (= (and b!2869752 c!463981) b!2869753))

(assert (= (and b!2869752 (not c!463981)) b!2869754))

(assert (= (and b!2869754 c!463984) b!2869757))

(assert (= (and b!2869754 (not c!463984)) b!2869750))

(assert (= (and b!2869757 c!463987) b!2869747))

(assert (= (and b!2869757 (not c!463987)) b!2869743))

(assert (= (and b!2869750 c!463986) b!2869756))

(assert (= (and b!2869750 (not c!463986)) b!2869755))

(assert (= (and b!2869756 c!463983) b!2869746))

(assert (= (and b!2869756 (not c!463983)) b!2869758))

(assert (= (or b!2869743 b!2869756) bm!185238))

(assert (= (or b!2869757 b!2869750) bm!185239))

(declare-fun m!3288733 () Bool)

(assert (=> bm!185238 m!3288733))

(declare-fun m!3288735 () Bool)

(assert (=> b!2869746 m!3288735))

(declare-fun m!3288737 () Bool)

(assert (=> bm!185239 m!3288737))

(assert (=> bm!185202 d!829371))

(declare-fun e!1816453 () Bool)

(declare-fun b!2869770 () Bool)

(declare-fun lt!1017718 () List!34488)

(assert (=> b!2869770 (= e!1816453 (or (not (= (v!34526 lt!1017685) Nil!34364)) (= lt!1017718 (v!34526 lt!1017686))))))

(declare-fun d!829373 () Bool)

(assert (=> d!829373 e!1816453))

(declare-fun res!1190859 () Bool)

(assert (=> d!829373 (=> (not res!1190859) (not e!1816453))))

(declare-fun content!4694 (List!34488) (Set C!17642))

(assert (=> d!829373 (= res!1190859 (= (content!4694 lt!1017718) (set.union (content!4694 (v!34526 lt!1017686)) (content!4694 (v!34526 lt!1017685)))))))

(declare-fun e!1816452 () List!34488)

(assert (=> d!829373 (= lt!1017718 e!1816452)))

(declare-fun c!463990 () Bool)

(assert (=> d!829373 (= c!463990 (is-Nil!34364 (v!34526 lt!1017686)))))

(assert (=> d!829373 (= (++!8167 (v!34526 lt!1017686) (v!34526 lt!1017685)) lt!1017718)))

(declare-fun b!2869768 () Bool)

(assert (=> b!2869768 (= e!1816452 (Cons!34364 (h!39784 (v!34526 lt!1017686)) (++!8167 (t!233531 (v!34526 lt!1017686)) (v!34526 lt!1017685))))))

(declare-fun b!2869769 () Bool)

(declare-fun res!1190860 () Bool)

(assert (=> b!2869769 (=> (not res!1190860) (not e!1816453))))

(declare-fun size!26315 (List!34488) Int)

(assert (=> b!2869769 (= res!1190860 (= (size!26315 lt!1017718) (+ (size!26315 (v!34526 lt!1017686)) (size!26315 (v!34526 lt!1017685)))))))

(declare-fun b!2869767 () Bool)

(assert (=> b!2869767 (= e!1816452 (v!34526 lt!1017685))))

(assert (= (and d!829373 c!463990) b!2869767))

(assert (= (and d!829373 (not c!463990)) b!2869768))

(assert (= (and d!829373 res!1190859) b!2869769))

(assert (= (and b!2869769 res!1190860) b!2869770))

(declare-fun m!3288739 () Bool)

(assert (=> d!829373 m!3288739))

(declare-fun m!3288741 () Bool)

(assert (=> d!829373 m!3288741))

(declare-fun m!3288743 () Bool)

(assert (=> d!829373 m!3288743))

(declare-fun m!3288745 () Bool)

(assert (=> b!2869768 m!3288745))

(declare-fun m!3288747 () Bool)

(assert (=> b!2869769 m!3288747))

(declare-fun m!3288749 () Bool)

(assert (=> b!2869769 m!3288749))

(declare-fun m!3288751 () Bool)

(assert (=> b!2869769 m!3288751))

(assert (=> b!2869552 d!829373))

(declare-fun lt!1017719 () List!34488)

(declare-fun e!1816455 () Bool)

(declare-fun b!2869774 () Bool)

(assert (=> b!2869774 (= e!1816455 (or (not (= (v!34526 lt!1017665) Nil!34364)) (= lt!1017719 (v!34526 lt!1017666))))))

(declare-fun d!829375 () Bool)

(assert (=> d!829375 e!1816455))

(declare-fun res!1190861 () Bool)

(assert (=> d!829375 (=> (not res!1190861) (not e!1816455))))

(assert (=> d!829375 (= res!1190861 (= (content!4694 lt!1017719) (set.union (content!4694 (v!34526 lt!1017666)) (content!4694 (v!34526 lt!1017665)))))))

(declare-fun e!1816454 () List!34488)

(assert (=> d!829375 (= lt!1017719 e!1816454)))

(declare-fun c!463991 () Bool)

(assert (=> d!829375 (= c!463991 (is-Nil!34364 (v!34526 lt!1017666)))))

(assert (=> d!829375 (= (++!8167 (v!34526 lt!1017666) (v!34526 lt!1017665)) lt!1017719)))

(declare-fun b!2869772 () Bool)

(assert (=> b!2869772 (= e!1816454 (Cons!34364 (h!39784 (v!34526 lt!1017666)) (++!8167 (t!233531 (v!34526 lt!1017666)) (v!34526 lt!1017665))))))

(declare-fun b!2869773 () Bool)

(declare-fun res!1190862 () Bool)

(assert (=> b!2869773 (=> (not res!1190862) (not e!1816455))))

(assert (=> b!2869773 (= res!1190862 (= (size!26315 lt!1017719) (+ (size!26315 (v!34526 lt!1017666)) (size!26315 (v!34526 lt!1017665)))))))

(declare-fun b!2869771 () Bool)

(assert (=> b!2869771 (= e!1816454 (v!34526 lt!1017665))))

(assert (= (and d!829375 c!463991) b!2869771))

(assert (= (and d!829375 (not c!463991)) b!2869772))

(assert (= (and d!829375 res!1190861) b!2869773))

(assert (= (and b!2869773 res!1190862) b!2869774))

(declare-fun m!3288753 () Bool)

(assert (=> d!829375 m!3288753))

(declare-fun m!3288755 () Bool)

(assert (=> d!829375 m!3288755))

(declare-fun m!3288757 () Bool)

(assert (=> d!829375 m!3288757))

(declare-fun m!3288759 () Bool)

(assert (=> b!2869772 m!3288759))

(declare-fun m!3288761 () Bool)

(assert (=> b!2869773 m!3288761))

(declare-fun m!3288763 () Bool)

(assert (=> b!2869773 m!3288763))

(declare-fun m!3288765 () Bool)

(assert (=> b!2869773 m!3288765))

(assert (=> b!2869473 d!829375))

(assert (=> d!829323 d!829355))

(declare-fun d!829377 () Bool)

(assert (=> d!829377 (= (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184)))) (v!34526 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184)))))))

(assert (=> d!829323 d!829377))

(assert (=> d!829323 d!829313))

(declare-fun b!2869775 () Bool)

(declare-fun res!1190863 () Bool)

(declare-fun e!1816461 () Bool)

(assert (=> b!2869775 (=> (not res!1190863) (not e!1816461))))

(assert (=> b!2869775 (= res!1190863 (isEmpty!18702 (tail!4560 (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184)))))))))

(declare-fun bm!185240 () Bool)

(declare-fun call!185245 () Bool)

(assert (=> bm!185240 (= call!185245 (isEmpty!18702 (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869776 () Bool)

(declare-fun res!1190868 () Bool)

(declare-fun e!1816458 () Bool)

(assert (=> b!2869776 (=> res!1190868 e!1816458)))

(assert (=> b!2869776 (= res!1190868 e!1816461)))

(declare-fun res!1190867 () Bool)

(assert (=> b!2869776 (=> (not res!1190867) (not e!1816461))))

(declare-fun lt!1017720 () Bool)

(assert (=> b!2869776 (= res!1190867 lt!1017720)))

(declare-fun b!2869777 () Bool)

(declare-fun e!1816457 () Bool)

(assert (=> b!2869777 (= e!1816457 (= lt!1017720 call!185245))))

(declare-fun b!2869778 () Bool)

(declare-fun e!1816460 () Bool)

(assert (=> b!2869778 (= e!1816460 (not lt!1017720))))

(declare-fun b!2869779 () Bool)

(declare-fun res!1190865 () Bool)

(assert (=> b!2869779 (=> res!1190865 e!1816458)))

(assert (=> b!2869779 (= res!1190865 (not (is-ElementMatch!8730 (h!39783 (exprs!3190 c!7184)))))))

(assert (=> b!2869779 (= e!1816460 e!1816458)))

(declare-fun b!2869780 () Bool)

(declare-fun e!1816456 () Bool)

(declare-fun e!1816459 () Bool)

(assert (=> b!2869780 (= e!1816456 e!1816459)))

(declare-fun res!1190869 () Bool)

(assert (=> b!2869780 (=> res!1190869 e!1816459)))

(assert (=> b!2869780 (= res!1190869 call!185245)))

(declare-fun b!2869781 () Bool)

(assert (=> b!2869781 (= e!1816461 (= (head!6335 (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184))))) (c!463865 (h!39783 (exprs!3190 c!7184)))))))

(declare-fun d!829379 () Bool)

(assert (=> d!829379 e!1816457))

(declare-fun c!463993 () Bool)

(assert (=> d!829379 (= c!463993 (is-EmptyExpr!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun e!1816462 () Bool)

(assert (=> d!829379 (= lt!1017720 e!1816462)))

(declare-fun c!463992 () Bool)

(assert (=> d!829379 (= c!463992 (isEmpty!18702 (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184))))))))

(assert (=> d!829379 (validRegex!3508 (h!39783 (exprs!3190 c!7184)))))

(assert (=> d!829379 (= (matchR!3730 (h!39783 (exprs!3190 c!7184)) (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184))))) lt!1017720)))

(declare-fun b!2869782 () Bool)

(assert (=> b!2869782 (= e!1816462 (nullable!2680 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869783 () Bool)

(assert (=> b!2869783 (= e!1816459 (not (= (head!6335 (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184))))) (c!463865 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869784 () Bool)

(declare-fun res!1190870 () Bool)

(assert (=> b!2869784 (=> (not res!1190870) (not e!1816461))))

(assert (=> b!2869784 (= res!1190870 (not call!185245))))

(declare-fun b!2869785 () Bool)

(assert (=> b!2869785 (= e!1816462 (matchR!3730 (derivativeStep!2313 (h!39783 (exprs!3190 c!7184)) (head!6335 (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184)))))) (tail!4560 (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184)))))))))

(declare-fun b!2869786 () Bool)

(declare-fun res!1190864 () Bool)

(assert (=> b!2869786 (=> res!1190864 e!1816459)))

(assert (=> b!2869786 (= res!1190864 (not (isEmpty!18702 (tail!4560 (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184))))))))))

(declare-fun b!2869787 () Bool)

(assert (=> b!2869787 (= e!1816457 e!1816460)))

(declare-fun c!463994 () Bool)

(assert (=> b!2869787 (= c!463994 (is-EmptyLang!8730 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869788 () Bool)

(assert (=> b!2869788 (= e!1816458 e!1816456)))

(declare-fun res!1190866 () Bool)

(assert (=> b!2869788 (=> (not res!1190866) (not e!1816456))))

(assert (=> b!2869788 (= res!1190866 (not lt!1017720))))

(assert (= (and d!829379 c!463992) b!2869782))

(assert (= (and d!829379 (not c!463992)) b!2869785))

(assert (= (and d!829379 c!463993) b!2869777))

(assert (= (and d!829379 (not c!463993)) b!2869787))

(assert (= (and b!2869787 c!463994) b!2869778))

(assert (= (and b!2869787 (not c!463994)) b!2869779))

(assert (= (and b!2869779 (not res!1190865)) b!2869776))

(assert (= (and b!2869776 res!1190867) b!2869784))

(assert (= (and b!2869784 res!1190870) b!2869775))

(assert (= (and b!2869775 res!1190863) b!2869781))

(assert (= (and b!2869776 (not res!1190868)) b!2869788))

(assert (= (and b!2869788 res!1190866) b!2869780))

(assert (= (and b!2869780 (not res!1190869)) b!2869786))

(assert (= (and b!2869786 (not res!1190864)) b!2869783))

(assert (= (or b!2869777 b!2869780 b!2869784) bm!185240))

(assert (=> b!2869775 m!3288623))

(declare-fun m!3288767 () Bool)

(assert (=> b!2869775 m!3288767))

(assert (=> b!2869775 m!3288767))

(declare-fun m!3288769 () Bool)

(assert (=> b!2869775 m!3288769))

(assert (=> b!2869783 m!3288623))

(declare-fun m!3288771 () Bool)

(assert (=> b!2869783 m!3288771))

(assert (=> b!2869782 m!3288613))

(assert (=> bm!185240 m!3288623))

(declare-fun m!3288773 () Bool)

(assert (=> bm!185240 m!3288773))

(assert (=> b!2869786 m!3288623))

(assert (=> b!2869786 m!3288767))

(assert (=> b!2869786 m!3288767))

(assert (=> b!2869786 m!3288769))

(assert (=> b!2869781 m!3288623))

(assert (=> b!2869781 m!3288771))

(assert (=> b!2869785 m!3288623))

(assert (=> b!2869785 m!3288771))

(assert (=> b!2869785 m!3288771))

(declare-fun m!3288775 () Bool)

(assert (=> b!2869785 m!3288775))

(assert (=> b!2869785 m!3288623))

(assert (=> b!2869785 m!3288767))

(assert (=> b!2869785 m!3288775))

(assert (=> b!2869785 m!3288767))

(declare-fun m!3288777 () Bool)

(assert (=> b!2869785 m!3288777))

(assert (=> d!829379 m!3288623))

(assert (=> d!829379 m!3288773))

(assert (=> d!829379 m!3288621))

(assert (=> d!829323 d!829379))

(declare-fun d!829381 () Bool)

(assert (=> d!829381 (matchR!3730 (h!39783 (exprs!3190 c!7184)) (get!10322 (getLanguageWitness!412 (h!39783 (exprs!3190 c!7184)))))))

(assert (=> d!829381 true))

(declare-fun _$101!84 () Unit!47961)

(assert (=> d!829381 (= (choose!16968 (h!39783 (exprs!3190 c!7184))) _$101!84)))

(declare-fun bs!521928 () Bool)

(assert (= bs!521928 d!829381))

(assert (=> bs!521928 m!3288577))

(assert (=> bs!521928 m!3288577))

(assert (=> bs!521928 m!3288623))

(assert (=> bs!521928 m!3288623))

(assert (=> bs!521928 m!3288625))

(assert (=> d!829323 d!829381))

(declare-fun b!2869789 () Bool)

(declare-fun e!1816468 () Option!6405)

(declare-fun call!185247 () Option!6405)

(assert (=> b!2869789 (= e!1816468 call!185247)))

(declare-fun d!829383 () Bool)

(declare-fun c!463995 () Bool)

(assert (=> d!829383 (= c!463995 (is-EmptyExpr!8730 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun e!1816469 () Option!6405)

(assert (=> d!829383 (= (getLanguageWitness!412 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))) e!1816469)))

(declare-fun b!2869790 () Bool)

(assert (=> b!2869790 (= e!1816469 (Some!6404 Nil!34364))))

(declare-fun b!2869791 () Bool)

(declare-fun e!1816465 () Option!6405)

(assert (=> b!2869791 (= e!1816465 None!6404)))

(declare-fun bm!185241 () Bool)

(declare-fun c!463999 () Bool)

(assert (=> bm!185241 (= call!185247 (getLanguageWitness!412 (ite c!463999 (regTwo!17973 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))) (regTwo!17972 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))))

(declare-fun b!2869792 () Bool)

(declare-fun e!1816467 () Option!6405)

(declare-fun lt!1017723 () Option!6405)

(declare-fun lt!1017722 () Option!6405)

(assert (=> b!2869792 (= e!1816467 (Some!6404 (++!8167 (v!34526 lt!1017723) (v!34526 lt!1017722))))))

(declare-fun b!2869793 () Bool)

(declare-fun lt!1017721 () Option!6405)

(assert (=> b!2869793 (= e!1816468 lt!1017721)))

(declare-fun b!2869794 () Bool)

(declare-fun c!464000 () Bool)

(assert (=> b!2869794 (= c!464000 (is-ElementMatch!8730 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun e!1816466 () Option!6405)

(assert (=> b!2869794 (= e!1816465 e!1816466)))

(declare-fun b!2869795 () Bool)

(assert (=> b!2869795 (= e!1816469 e!1816465)))

(declare-fun c!463997 () Bool)

(assert (=> b!2869795 (= c!463997 (is-EmptyLang!8730 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869796 () Bool)

(declare-fun e!1816464 () Option!6405)

(declare-fun e!1816470 () Option!6405)

(assert (=> b!2869796 (= e!1816464 e!1816470)))

(declare-fun call!185246 () Option!6405)

(assert (=> b!2869796 (= lt!1017723 call!185246)))

(declare-fun c!464001 () Bool)

(assert (=> b!2869796 (= c!464001 (is-Some!6404 lt!1017723))))

(declare-fun b!2869797 () Bool)

(assert (=> b!2869797 (= e!1816466 (Some!6404 (Cons!34364 (c!463865 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))) Nil!34364)))))

(declare-fun b!2869798 () Bool)

(declare-fun e!1816463 () Option!6405)

(assert (=> b!2869798 (= e!1816466 e!1816463)))

(declare-fun c!463996 () Bool)

(assert (=> b!2869798 (= c!463996 (is-Star!8730 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))

(declare-fun b!2869799 () Bool)

(assert (=> b!2869799 (= e!1816463 (Some!6404 Nil!34364))))

(declare-fun b!2869800 () Bool)

(assert (=> b!2869800 (= c!463999 (is-Union!8730 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))

(assert (=> b!2869800 (= e!1816463 e!1816464)))

(declare-fun b!2869801 () Bool)

(assert (=> b!2869801 (= e!1816470 None!6404)))

(declare-fun b!2869802 () Bool)

(declare-fun c!463998 () Bool)

(assert (=> b!2869802 (= c!463998 (is-Some!6404 lt!1017722))))

(assert (=> b!2869802 (= lt!1017722 call!185247)))

(assert (=> b!2869802 (= e!1816470 e!1816467)))

(declare-fun b!2869803 () Bool)

(assert (=> b!2869803 (= e!1816464 e!1816468)))

(assert (=> b!2869803 (= lt!1017721 call!185246)))

(declare-fun c!464002 () Bool)

(assert (=> b!2869803 (= c!464002 (is-Some!6404 lt!1017721))))

(declare-fun bm!185242 () Bool)

(assert (=> bm!185242 (= call!185246 (getLanguageWitness!412 (ite c!463999 (regOne!17973 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))) (regOne!17972 (ite c!463887 (regOne!17973 (h!39783 (exprs!3190 c!7184))) (regOne!17972 (h!39783 (exprs!3190 c!7184))))))))))

(declare-fun b!2869804 () Bool)

(assert (=> b!2869804 (= e!1816467 None!6404)))

(assert (= (and d!829383 c!463995) b!2869790))

(assert (= (and d!829383 (not c!463995)) b!2869795))

(assert (= (and b!2869795 c!463997) b!2869791))

(assert (= (and b!2869795 (not c!463997)) b!2869794))

(assert (= (and b!2869794 c!464000) b!2869797))

(assert (= (and b!2869794 (not c!464000)) b!2869798))

(assert (= (and b!2869798 c!463996) b!2869799))

(assert (= (and b!2869798 (not c!463996)) b!2869800))

(assert (= (and b!2869800 c!463999) b!2869803))

(assert (= (and b!2869800 (not c!463999)) b!2869796))

(assert (= (and b!2869803 c!464002) b!2869793))

(assert (= (and b!2869803 (not c!464002)) b!2869789))

(assert (= (and b!2869796 c!464001) b!2869802))

(assert (= (and b!2869796 (not c!464001)) b!2869801))

(assert (= (and b!2869802 c!463998) b!2869792))

(assert (= (and b!2869802 (not c!463998)) b!2869804))

(assert (= (or b!2869789 b!2869802) bm!185241))

(assert (= (or b!2869803 b!2869796) bm!185242))

(declare-fun m!3288779 () Bool)

(assert (=> bm!185241 m!3288779))

(declare-fun m!3288781 () Bool)

(assert (=> b!2869792 m!3288781))

(declare-fun m!3288783 () Bool)

(assert (=> bm!185242 m!3288783))

(assert (=> bm!185203 d!829383))

(declare-fun d!829385 () Bool)

(declare-fun res!1190875 () Bool)

(declare-fun e!1816475 () Bool)

(assert (=> d!829385 (=> res!1190875 e!1816475)))

(assert (=> d!829385 (= res!1190875 (is-Nil!34363 (exprs!3190 c!7184)))))

(assert (=> d!829385 (= (forall!7075 (exprs!3190 c!7184) lambda!107009) e!1816475)))

(declare-fun b!2869809 () Bool)

(declare-fun e!1816476 () Bool)

(assert (=> b!2869809 (= e!1816475 e!1816476)))

(declare-fun res!1190876 () Bool)

(assert (=> b!2869809 (=> (not res!1190876) (not e!1816476))))

(declare-fun dynLambda!14304 (Int Regex!8730) Bool)

(assert (=> b!2869809 (= res!1190876 (dynLambda!14304 lambda!107009 (h!39783 (exprs!3190 c!7184))))))

(declare-fun b!2869810 () Bool)

(assert (=> b!2869810 (= e!1816476 (forall!7075 (t!233530 (exprs!3190 c!7184)) lambda!107009))))

(assert (= (and d!829385 (not res!1190875)) b!2869809))

(assert (= (and b!2869809 res!1190876) b!2869810))

(declare-fun b_lambda!85987 () Bool)

(assert (=> (not b_lambda!85987) (not b!2869809)))

(declare-fun m!3288785 () Bool)

(assert (=> b!2869809 m!3288785))

(declare-fun m!3288787 () Bool)

(assert (=> b!2869810 m!3288787))

(assert (=> d!829327 d!829385))

(declare-fun b!2869811 () Bool)

(declare-fun e!1816482 () Option!6405)

(declare-fun call!185249 () Option!6405)

(assert (=> b!2869811 (= e!1816482 call!185249)))

(declare-fun d!829387 () Bool)

(declare-fun c!464003 () Bool)

(assert (=> d!829387 (= c!464003 (is-EmptyExpr!8730 (h!39783 (exprs!3190 lt!1017646))))))

(declare-fun e!1816483 () Option!6405)

(assert (=> d!829387 (= (getLanguageWitness!412 (h!39783 (exprs!3190 lt!1017646))) e!1816483)))

(declare-fun b!2869812 () Bool)

(assert (=> b!2869812 (= e!1816483 (Some!6404 Nil!34364))))

(declare-fun b!2869813 () Bool)

(declare-fun e!1816479 () Option!6405)

(assert (=> b!2869813 (= e!1816479 None!6404)))

(declare-fun bm!185243 () Bool)

(declare-fun c!464007 () Bool)

(assert (=> bm!185243 (= call!185249 (getLanguageWitness!412 (ite c!464007 (regTwo!17973 (h!39783 (exprs!3190 lt!1017646))) (regTwo!17972 (h!39783 (exprs!3190 lt!1017646))))))))

(declare-fun b!2869814 () Bool)

(declare-fun e!1816481 () Option!6405)

(declare-fun lt!1017726 () Option!6405)

(declare-fun lt!1017725 () Option!6405)

(assert (=> b!2869814 (= e!1816481 (Some!6404 (++!8167 (v!34526 lt!1017726) (v!34526 lt!1017725))))))

(declare-fun b!2869815 () Bool)

(declare-fun lt!1017724 () Option!6405)

(assert (=> b!2869815 (= e!1816482 lt!1017724)))

(declare-fun b!2869816 () Bool)

(declare-fun c!464008 () Bool)

(assert (=> b!2869816 (= c!464008 (is-ElementMatch!8730 (h!39783 (exprs!3190 lt!1017646))))))

(declare-fun e!1816480 () Option!6405)

(assert (=> b!2869816 (= e!1816479 e!1816480)))

(declare-fun b!2869817 () Bool)

(assert (=> b!2869817 (= e!1816483 e!1816479)))

(declare-fun c!464005 () Bool)

(assert (=> b!2869817 (= c!464005 (is-EmptyLang!8730 (h!39783 (exprs!3190 lt!1017646))))))

(declare-fun b!2869818 () Bool)

(declare-fun e!1816478 () Option!6405)

(declare-fun e!1816484 () Option!6405)

(assert (=> b!2869818 (= e!1816478 e!1816484)))

(declare-fun call!185248 () Option!6405)

(assert (=> b!2869818 (= lt!1017726 call!185248)))

(declare-fun c!464009 () Bool)

(assert (=> b!2869818 (= c!464009 (is-Some!6404 lt!1017726))))

(declare-fun b!2869819 () Bool)

(assert (=> b!2869819 (= e!1816480 (Some!6404 (Cons!34364 (c!463865 (h!39783 (exprs!3190 lt!1017646))) Nil!34364)))))

(declare-fun b!2869820 () Bool)

(declare-fun e!1816477 () Option!6405)

(assert (=> b!2869820 (= e!1816480 e!1816477)))

(declare-fun c!464004 () Bool)

(assert (=> b!2869820 (= c!464004 (is-Star!8730 (h!39783 (exprs!3190 lt!1017646))))))

(declare-fun b!2869821 () Bool)

(assert (=> b!2869821 (= e!1816477 (Some!6404 Nil!34364))))

(declare-fun b!2869822 () Bool)

(assert (=> b!2869822 (= c!464007 (is-Union!8730 (h!39783 (exprs!3190 lt!1017646))))))

(assert (=> b!2869822 (= e!1816477 e!1816478)))

(declare-fun b!2869823 () Bool)

(assert (=> b!2869823 (= e!1816484 None!6404)))

(declare-fun b!2869824 () Bool)

(declare-fun c!464006 () Bool)

(assert (=> b!2869824 (= c!464006 (is-Some!6404 lt!1017725))))

(assert (=> b!2869824 (= lt!1017725 call!185249)))

(assert (=> b!2869824 (= e!1816484 e!1816481)))

(declare-fun b!2869825 () Bool)

(assert (=> b!2869825 (= e!1816478 e!1816482)))

(assert (=> b!2869825 (= lt!1017724 call!185248)))

(declare-fun c!464010 () Bool)

(assert (=> b!2869825 (= c!464010 (is-Some!6404 lt!1017724))))

(declare-fun bm!185244 () Bool)

(assert (=> bm!185244 (= call!185248 (getLanguageWitness!412 (ite c!464007 (regOne!17973 (h!39783 (exprs!3190 lt!1017646))) (regOne!17972 (h!39783 (exprs!3190 lt!1017646))))))))

(declare-fun b!2869826 () Bool)

(assert (=> b!2869826 (= e!1816481 None!6404)))

(assert (= (and d!829387 c!464003) b!2869812))

(assert (= (and d!829387 (not c!464003)) b!2869817))

(assert (= (and b!2869817 c!464005) b!2869813))

(assert (= (and b!2869817 (not c!464005)) b!2869816))

(assert (= (and b!2869816 c!464008) b!2869819))

(assert (= (and b!2869816 (not c!464008)) b!2869820))

(assert (= (and b!2869820 c!464004) b!2869821))

(assert (= (and b!2869820 (not c!464004)) b!2869822))

(assert (= (and b!2869822 c!464007) b!2869825))

(assert (= (and b!2869822 (not c!464007)) b!2869818))

(assert (= (and b!2869825 c!464010) b!2869815))

(assert (= (and b!2869825 (not c!464010)) b!2869811))

(assert (= (and b!2869818 c!464009) b!2869824))

(assert (= (and b!2869818 (not c!464009)) b!2869823))

(assert (= (and b!2869824 c!464006) b!2869814))

(assert (= (and b!2869824 (not c!464006)) b!2869826))

(assert (= (or b!2869811 b!2869824) bm!185243))

(assert (= (or b!2869825 b!2869818) bm!185244))

(declare-fun m!3288789 () Bool)

(assert (=> bm!185243 m!3288789))

(declare-fun m!3288791 () Bool)

(assert (=> b!2869814 m!3288791))

(declare-fun m!3288793 () Bool)

(assert (=> bm!185244 m!3288793))

(assert (=> b!2869555 d!829387))

(assert (=> b!2869532 d!829341))

(declare-fun b!2869840 () Bool)

(declare-fun e!1816487 () Bool)

(declare-fun tp!923308 () Bool)

(declare-fun tp!923310 () Bool)

(assert (=> b!2869840 (= e!1816487 (and tp!923308 tp!923310))))

(declare-fun b!2869837 () Bool)

(declare-fun tp_is_empty!15065 () Bool)

(assert (=> b!2869837 (= e!1816487 tp_is_empty!15065)))

(assert (=> b!2869562 (= tp!923289 e!1816487)))

(declare-fun b!2869839 () Bool)

(declare-fun tp!923307 () Bool)

(assert (=> b!2869839 (= e!1816487 tp!923307)))

(declare-fun b!2869838 () Bool)

(declare-fun tp!923309 () Bool)

(declare-fun tp!923311 () Bool)

(assert (=> b!2869838 (= e!1816487 (and tp!923309 tp!923311))))

(assert (= (and b!2869562 (is-ElementMatch!8730 (h!39783 (exprs!3190 c!7184)))) b!2869837))

(assert (= (and b!2869562 (is-Concat!14051 (h!39783 (exprs!3190 c!7184)))) b!2869838))

(assert (= (and b!2869562 (is-Star!8730 (h!39783 (exprs!3190 c!7184)))) b!2869839))

(assert (= (and b!2869562 (is-Union!8730 (h!39783 (exprs!3190 c!7184)))) b!2869840))

(declare-fun b!2869841 () Bool)

(declare-fun e!1816488 () Bool)

(declare-fun tp!923312 () Bool)

(declare-fun tp!923313 () Bool)

(assert (=> b!2869841 (= e!1816488 (and tp!923312 tp!923313))))

(assert (=> b!2869562 (= tp!923290 e!1816488)))

(assert (= (and b!2869562 (is-Cons!34363 (t!233530 (exprs!3190 c!7184)))) b!2869841))

(declare-fun b_lambda!85989 () Bool)

(assert (= b_lambda!85987 (or d!829327 b_lambda!85989)))

(declare-fun bs!521929 () Bool)

(declare-fun d!829389 () Bool)

(assert (= bs!521929 (and d!829389 d!829327)))

(assert (=> bs!521929 (= (dynLambda!14304 lambda!107009 (h!39783 (exprs!3190 c!7184))) (validRegex!3508 (h!39783 (exprs!3190 c!7184))))))

(assert (=> bs!521929 m!3288621))

(assert (=> b!2869809 d!829389))

(push 1)

(assert (not d!829375))

(assert (not d!829347))

(assert (not b!2869792))

(assert (not b!2869675))

(assert (not b!2869839))

(assert (not bm!185236))

(assert (not b!2869814))

(assert (not bm!185241))

(assert (not b!2869773))

(assert (not b!2869705))

(assert (not b!2869704))

(assert (not d!829367))

(assert (not d!829343))

(assert (not b!2869694))

(assert (not bm!185242))

(assert (not b!2869700))

(assert (not bm!185239))

(assert (not b!2869611))

(assert (not b!2869810))

(assert (not b!2869768))

(assert (not b!2869702))

(assert (not d!829337))

(assert (not b!2869746))

(assert (not b!2869772))

(assert (not d!829369))

(assert (not b_lambda!85989))

(assert (not d!829379))

(assert (not b!2869701))

(assert (not bm!185243))

(assert (not bm!185240))

(assert (not b!2869739))

(assert (not b!2869783))

(assert (not b!2869840))

(assert tp_is_empty!15065)

(assert (not d!829351))

(assert (not b!2869838))

(assert (not bm!185221))

(assert (not b!2869616))

(assert (not b!2869775))

(assert (not bm!185234))

(assert (not d!829381))

(assert (not bm!185225))

(assert (not b!2869785))

(assert (not b!2869841))

(assert (not d!829373))

(assert (not bm!185244))

(assert (not d!829361))

(assert (not bm!185238))

(assert (not b!2869781))

(assert (not b!2869769))

(assert (not b!2869786))

(assert (not b!2869782))

(assert (not b!2869614))

(assert (not bs!521929))

(assert (not bm!185222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

