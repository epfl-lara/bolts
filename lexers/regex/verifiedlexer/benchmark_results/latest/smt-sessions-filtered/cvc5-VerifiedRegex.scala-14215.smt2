; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744404 () Bool)

(assert start!744404)

(declare-fun b!7886407 () Bool)

(declare-fun e!4656256 () Bool)

(declare-fun tp_is_empty!52803 () Bool)

(declare-fun tp!2346104 () Bool)

(assert (=> b!7886407 (= e!4656256 (and tp_is_empty!52803 tp!2346104))))

(declare-fun b!7886408 () Bool)

(declare-fun e!4656254 () Bool)

(declare-fun tp!2346099 () Bool)

(declare-fun tp!2346105 () Bool)

(assert (=> b!7886408 (= e!4656254 (and tp!2346099 tp!2346105))))

(declare-fun b!7886409 () Bool)

(declare-fun e!4656255 () Bool)

(declare-datatypes ((C!42730 0))(
  ( (C!42731 (val!31827 Int)) )
))
(declare-datatypes ((Regex!21202 0))(
  ( (ElementMatch!21202 (c!1447734 C!42730)) (Concat!30047 (regOne!42916 Regex!21202) (regTwo!42916 Regex!21202)) (EmptyExpr!21202) (Star!21202 (reg!21531 Regex!21202)) (EmptyLang!21202) (Union!21202 (regOne!42917 Regex!21202) (regTwo!42917 Regex!21202)) )
))
(declare-fun r!14100 () Regex!21202)

(declare-fun validRegex!11612 (Regex!21202) Bool)

(assert (=> b!7886409 (= e!4656255 (not (validRegex!11612 (regTwo!42916 r!14100))))))

(declare-fun b!7886410 () Bool)

(declare-fun tp!2346106 () Bool)

(declare-fun tp!2346103 () Bool)

(assert (=> b!7886410 (= e!4656254 (and tp!2346106 tp!2346103))))

(declare-fun b!7886411 () Bool)

(declare-fun e!4656257 () Bool)

(declare-fun tp!2346101 () Bool)

(assert (=> b!7886411 (= e!4656257 (and tp_is_empty!52803 tp!2346101))))

(declare-fun b!7886412 () Bool)

(declare-fun res!3130805 () Bool)

(assert (=> b!7886412 (=> (not res!3130805) (not e!4656255))))

(declare-datatypes ((List!74059 0))(
  ( (Nil!73935) (Cons!73935 (h!80383 C!42730) (t!388794 List!74059)) )
))
(declare-datatypes ((tuple2!70050 0))(
  ( (tuple2!70051 (_1!38328 List!74059) (_2!38328 List!74059)) )
))
(declare-fun cut!3 () tuple2!70050)

(declare-fun matchRSpec!4669 (Regex!21202 List!74059) Bool)

(assert (=> b!7886412 (= res!3130805 (matchRSpec!4669 (regOne!42916 r!14100) (_1!38328 cut!3)))))

(declare-fun b!7886413 () Bool)

(declare-fun res!3130808 () Bool)

(assert (=> b!7886413 (=> (not res!3130808) (not e!4656255))))

(assert (=> b!7886413 (= res!3130808 (and (not (is-EmptyExpr!21202 r!14100)) (not (is-EmptyLang!21202 r!14100)) (not (is-ElementMatch!21202 r!14100)) (not (is-Union!21202 r!14100)) (not (is-Star!21202 r!14100))))))

(declare-fun b!7886414 () Bool)

(declare-fun tp!2346102 () Bool)

(assert (=> b!7886414 (= e!4656254 tp!2346102)))

(declare-fun b!7886416 () Bool)

(declare-fun e!4656258 () Bool)

(declare-fun tp!2346100 () Bool)

(assert (=> b!7886416 (= e!4656258 (and tp_is_empty!52803 tp!2346100))))

(declare-fun b!7886417 () Bool)

(assert (=> b!7886417 (= e!4656254 tp_is_empty!52803)))

(declare-fun b!7886415 () Bool)

(declare-fun res!3130806 () Bool)

(assert (=> b!7886415 (=> (not res!3130806) (not e!4656255))))

(declare-fun s!9586 () List!74059)

(declare-fun ++!18110 (List!74059 List!74059) List!74059)

(assert (=> b!7886415 (= res!3130806 (= (++!18110 (_1!38328 cut!3) (_2!38328 cut!3)) s!9586))))

(declare-fun res!3130807 () Bool)

(assert (=> start!744404 (=> (not res!3130807) (not e!4656255))))

(assert (=> start!744404 (= res!3130807 (validRegex!11612 r!14100))))

(assert (=> start!744404 e!4656255))

(assert (=> start!744404 e!4656254))

(assert (=> start!744404 (and e!4656256 e!4656257)))

(assert (=> start!744404 e!4656258))

(assert (= (and start!744404 res!3130807) b!7886413))

(assert (= (and b!7886413 res!3130808) b!7886415))

(assert (= (and b!7886415 res!3130806) b!7886412))

(assert (= (and b!7886412 res!3130805) b!7886409))

(assert (= (and start!744404 (is-ElementMatch!21202 r!14100)) b!7886417))

(assert (= (and start!744404 (is-Concat!30047 r!14100)) b!7886408))

(assert (= (and start!744404 (is-Star!21202 r!14100)) b!7886414))

(assert (= (and start!744404 (is-Union!21202 r!14100)) b!7886410))

(assert (= (and start!744404 (is-Cons!73935 (_1!38328 cut!3))) b!7886407))

(assert (= (and start!744404 (is-Cons!73935 (_2!38328 cut!3))) b!7886411))

(assert (= (and start!744404 (is-Cons!73935 s!9586)) b!7886416))

(declare-fun m!8269276 () Bool)

(assert (=> b!7886409 m!8269276))

(declare-fun m!8269278 () Bool)

(assert (=> b!7886412 m!8269278))

(declare-fun m!8269280 () Bool)

(assert (=> b!7886415 m!8269280))

(declare-fun m!8269282 () Bool)

(assert (=> start!744404 m!8269282))

(push 1)

(assert (not b!7886410))

(assert (not b!7886411))

(assert (not b!7886409))

(assert tp_is_empty!52803)

(assert (not b!7886415))

(assert (not b!7886416))

(assert (not b!7886408))

(assert (not start!744404))

(assert (not b!7886407))

(assert (not b!7886414))

(assert (not b!7886412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7886554 () Bool)

(assert (=> b!7886554 true))

(assert (=> b!7886554 true))

(declare-fun bs!1967435 () Bool)

(declare-fun b!7886551 () Bool)

(assert (= bs!1967435 (and b!7886551 b!7886554)))

(declare-fun lambda!472135 () Int)

(declare-fun lambda!472134 () Int)

(assert (=> bs!1967435 (not (= lambda!472135 lambda!472134))))

(assert (=> b!7886551 true))

(assert (=> b!7886551 true))

(declare-fun d!2356506 () Bool)

(declare-fun c!1447762 () Bool)

(assert (=> d!2356506 (= c!1447762 (is-EmptyExpr!21202 (regOne!42916 r!14100)))))

(declare-fun e!4656339 () Bool)

(assert (=> d!2356506 (= (matchRSpec!4669 (regOne!42916 r!14100) (_1!38328 cut!3)) e!4656339)))

(declare-fun b!7886544 () Bool)

(declare-fun e!4656337 () Bool)

(declare-fun e!4656333 () Bool)

(assert (=> b!7886544 (= e!4656337 e!4656333)))

(declare-fun c!1447761 () Bool)

(assert (=> b!7886544 (= c!1447761 (is-Star!21202 (regOne!42916 r!14100)))))

(declare-fun bm!731545 () Bool)

(declare-fun call!731551 () Bool)

(declare-fun isEmpty!42422 (List!74059) Bool)

(assert (=> bm!731545 (= call!731551 (isEmpty!42422 (_1!38328 cut!3)))))

(declare-fun b!7886545 () Bool)

(declare-fun res!3130864 () Bool)

(declare-fun e!4656336 () Bool)

(assert (=> b!7886545 (=> res!3130864 e!4656336)))

(assert (=> b!7886545 (= res!3130864 call!731551)))

(assert (=> b!7886545 (= e!4656333 e!4656336)))

(declare-fun b!7886546 () Bool)

(declare-fun c!1447764 () Bool)

(assert (=> b!7886546 (= c!1447764 (is-ElementMatch!21202 (regOne!42916 r!14100)))))

(declare-fun e!4656334 () Bool)

(declare-fun e!4656338 () Bool)

(assert (=> b!7886546 (= e!4656334 e!4656338)))

(declare-fun bm!731546 () Bool)

(declare-fun call!731550 () Bool)

(declare-fun Exists!4759 (Int) Bool)

(assert (=> bm!731546 (= call!731550 (Exists!4759 (ite c!1447761 lambda!472134 lambda!472135)))))

(declare-fun b!7886547 () Bool)

(declare-fun e!4656335 () Bool)

(assert (=> b!7886547 (= e!4656335 (matchRSpec!4669 (regTwo!42917 (regOne!42916 r!14100)) (_1!38328 cut!3)))))

(declare-fun b!7886548 () Bool)

(declare-fun c!1447763 () Bool)

(assert (=> b!7886548 (= c!1447763 (is-Union!21202 (regOne!42916 r!14100)))))

(assert (=> b!7886548 (= e!4656338 e!4656337)))

(declare-fun b!7886549 () Bool)

(assert (=> b!7886549 (= e!4656339 e!4656334)))

(declare-fun res!3130865 () Bool)

(assert (=> b!7886549 (= res!3130865 (not (is-EmptyLang!21202 (regOne!42916 r!14100))))))

(assert (=> b!7886549 (=> (not res!3130865) (not e!4656334))))

(declare-fun b!7886550 () Bool)

(assert (=> b!7886550 (= e!4656339 call!731551)))

(assert (=> b!7886551 (= e!4656333 call!731550)))

(declare-fun b!7886552 () Bool)

(assert (=> b!7886552 (= e!4656338 (= (_1!38328 cut!3) (Cons!73935 (c!1447734 (regOne!42916 r!14100)) Nil!73935)))))

(declare-fun b!7886553 () Bool)

(assert (=> b!7886553 (= e!4656337 e!4656335)))

(declare-fun res!3130866 () Bool)

(assert (=> b!7886553 (= res!3130866 (matchRSpec!4669 (regOne!42917 (regOne!42916 r!14100)) (_1!38328 cut!3)))))

(assert (=> b!7886553 (=> res!3130866 e!4656335)))

(assert (=> b!7886554 (= e!4656336 call!731550)))

(assert (= (and d!2356506 c!1447762) b!7886550))

(assert (= (and d!2356506 (not c!1447762)) b!7886549))

(assert (= (and b!7886549 res!3130865) b!7886546))

(assert (= (and b!7886546 c!1447764) b!7886552))

(assert (= (and b!7886546 (not c!1447764)) b!7886548))

(assert (= (and b!7886548 c!1447763) b!7886553))

(assert (= (and b!7886548 (not c!1447763)) b!7886544))

(assert (= (and b!7886553 (not res!3130866)) b!7886547))

(assert (= (and b!7886544 c!1447761) b!7886545))

(assert (= (and b!7886544 (not c!1447761)) b!7886551))

(assert (= (and b!7886545 (not res!3130864)) b!7886554))

(assert (= (or b!7886554 b!7886551) bm!731546))

(assert (= (or b!7886550 b!7886545) bm!731545))

(declare-fun m!8269312 () Bool)

(assert (=> bm!731545 m!8269312))

(declare-fun m!8269314 () Bool)

(assert (=> bm!731546 m!8269314))

(declare-fun m!8269316 () Bool)

(assert (=> b!7886547 m!8269316))

(declare-fun m!8269318 () Bool)

(assert (=> b!7886553 m!8269318))

(assert (=> b!7886412 d!2356506))

(declare-fun b!7886577 () Bool)

(declare-fun e!4656357 () Bool)

(declare-fun e!4656356 () Bool)

(assert (=> b!7886577 (= e!4656357 e!4656356)))

(declare-fun c!1447770 () Bool)

(assert (=> b!7886577 (= c!1447770 (is-Star!21202 r!14100))))

(declare-fun b!7886578 () Bool)

(declare-fun res!3130878 () Bool)

(declare-fun e!4656354 () Bool)

(assert (=> b!7886578 (=> (not res!3130878) (not e!4656354))))

(declare-fun call!731559 () Bool)

(assert (=> b!7886578 (= res!3130878 call!731559)))

(declare-fun e!4656358 () Bool)

(assert (=> b!7886578 (= e!4656358 e!4656354)))

(declare-fun bm!731553 () Bool)

(declare-fun call!731560 () Bool)

(assert (=> bm!731553 (= call!731559 call!731560)))

(declare-fun b!7886580 () Bool)

(assert (=> b!7886580 (= e!4656356 e!4656358)))

(declare-fun c!1447769 () Bool)

(assert (=> b!7886580 (= c!1447769 (is-Union!21202 r!14100))))

(declare-fun b!7886581 () Bool)

(declare-fun e!4656359 () Bool)

(declare-fun e!4656360 () Bool)

(assert (=> b!7886581 (= e!4656359 e!4656360)))

(declare-fun res!3130881 () Bool)

(assert (=> b!7886581 (=> (not res!3130881) (not e!4656360))))

(declare-fun call!731558 () Bool)

(assert (=> b!7886581 (= res!3130881 call!731558)))

(declare-fun b!7886582 () Bool)

(declare-fun e!4656355 () Bool)

(assert (=> b!7886582 (= e!4656356 e!4656355)))

(declare-fun res!3130877 () Bool)

(declare-fun nullable!9457 (Regex!21202) Bool)

(assert (=> b!7886582 (= res!3130877 (not (nullable!9457 (reg!21531 r!14100))))))

(assert (=> b!7886582 (=> (not res!3130877) (not e!4656355))))

(declare-fun bm!731554 () Bool)

(assert (=> bm!731554 (= call!731558 (validRegex!11612 (ite c!1447769 (regTwo!42917 r!14100) (regOne!42916 r!14100))))))

(declare-fun d!2356512 () Bool)

(declare-fun res!3130879 () Bool)

(assert (=> d!2356512 (=> res!3130879 e!4656357)))

(assert (=> d!2356512 (= res!3130879 (is-ElementMatch!21202 r!14100))))

(assert (=> d!2356512 (= (validRegex!11612 r!14100) e!4656357)))

(declare-fun b!7886579 () Bool)

(assert (=> b!7886579 (= e!4656360 call!731559)))

(declare-fun b!7886583 () Bool)

(assert (=> b!7886583 (= e!4656354 call!731558)))

(declare-fun b!7886584 () Bool)

(assert (=> b!7886584 (= e!4656355 call!731560)))

(declare-fun bm!731555 () Bool)

(assert (=> bm!731555 (= call!731560 (validRegex!11612 (ite c!1447770 (reg!21531 r!14100) (ite c!1447769 (regOne!42917 r!14100) (regTwo!42916 r!14100)))))))

(declare-fun b!7886585 () Bool)

(declare-fun res!3130880 () Bool)

(assert (=> b!7886585 (=> res!3130880 e!4656359)))

(assert (=> b!7886585 (= res!3130880 (not (is-Concat!30047 r!14100)))))

(assert (=> b!7886585 (= e!4656358 e!4656359)))

(assert (= (and d!2356512 (not res!3130879)) b!7886577))

(assert (= (and b!7886577 c!1447770) b!7886582))

(assert (= (and b!7886577 (not c!1447770)) b!7886580))

(assert (= (and b!7886582 res!3130877) b!7886584))

(assert (= (and b!7886580 c!1447769) b!7886578))

(assert (= (and b!7886580 (not c!1447769)) b!7886585))

(assert (= (and b!7886578 res!3130878) b!7886583))

(assert (= (and b!7886585 (not res!3130880)) b!7886581))

(assert (= (and b!7886581 res!3130881) b!7886579))

(assert (= (or b!7886583 b!7886581) bm!731554))

(assert (= (or b!7886578 b!7886579) bm!731553))

(assert (= (or b!7886584 bm!731553) bm!731555))

(declare-fun m!8269320 () Bool)

(assert (=> b!7886582 m!8269320))

(declare-fun m!8269322 () Bool)

(assert (=> bm!731554 m!8269322))

(declare-fun m!8269324 () Bool)

(assert (=> bm!731555 m!8269324))

(assert (=> start!744404 d!2356512))

(declare-fun d!2356514 () Bool)

(declare-fun e!4656365 () Bool)

(assert (=> d!2356514 e!4656365))

(declare-fun res!3130886 () Bool)

(assert (=> d!2356514 (=> (not res!3130886) (not e!4656365))))

(declare-fun lt!2681381 () List!74059)

(declare-fun content!15690 (List!74059) (Set C!42730))

(assert (=> d!2356514 (= res!3130886 (= (content!15690 lt!2681381) (set.union (content!15690 (_1!38328 cut!3)) (content!15690 (_2!38328 cut!3)))))))

(declare-fun e!4656366 () List!74059)

(assert (=> d!2356514 (= lt!2681381 e!4656366)))

(declare-fun c!1447773 () Bool)

(assert (=> d!2356514 (= c!1447773 (is-Nil!73935 (_1!38328 cut!3)))))

(assert (=> d!2356514 (= (++!18110 (_1!38328 cut!3) (_2!38328 cut!3)) lt!2681381)))

(declare-fun b!7886597 () Bool)

(assert (=> b!7886597 (= e!4656365 (or (not (= (_2!38328 cut!3) Nil!73935)) (= lt!2681381 (_1!38328 cut!3))))))

(declare-fun b!7886594 () Bool)

(assert (=> b!7886594 (= e!4656366 (_2!38328 cut!3))))

(declare-fun b!7886596 () Bool)

(declare-fun res!3130887 () Bool)

(assert (=> b!7886596 (=> (not res!3130887) (not e!4656365))))

(declare-fun size!42843 (List!74059) Int)

(assert (=> b!7886596 (= res!3130887 (= (size!42843 lt!2681381) (+ (size!42843 (_1!38328 cut!3)) (size!42843 (_2!38328 cut!3)))))))

(declare-fun b!7886595 () Bool)

(assert (=> b!7886595 (= e!4656366 (Cons!73935 (h!80383 (_1!38328 cut!3)) (++!18110 (t!388794 (_1!38328 cut!3)) (_2!38328 cut!3))))))

(assert (= (and d!2356514 c!1447773) b!7886594))

(assert (= (and d!2356514 (not c!1447773)) b!7886595))

(assert (= (and d!2356514 res!3130886) b!7886596))

(assert (= (and b!7886596 res!3130887) b!7886597))

(declare-fun m!8269326 () Bool)

(assert (=> d!2356514 m!8269326))

(declare-fun m!8269328 () Bool)

(assert (=> d!2356514 m!8269328))

(declare-fun m!8269330 () Bool)

(assert (=> d!2356514 m!8269330))

(declare-fun m!8269332 () Bool)

(assert (=> b!7886596 m!8269332))

(declare-fun m!8269334 () Bool)

(assert (=> b!7886596 m!8269334))

(declare-fun m!8269336 () Bool)

(assert (=> b!7886596 m!8269336))

(declare-fun m!8269338 () Bool)

(assert (=> b!7886595 m!8269338))

(assert (=> b!7886415 d!2356514))

(declare-fun b!7886598 () Bool)

(declare-fun e!4656370 () Bool)

(declare-fun e!4656369 () Bool)

(assert (=> b!7886598 (= e!4656370 e!4656369)))

(declare-fun c!1447775 () Bool)

(assert (=> b!7886598 (= c!1447775 (is-Star!21202 (regTwo!42916 r!14100)))))

(declare-fun b!7886599 () Bool)

(declare-fun res!3130889 () Bool)

(declare-fun e!4656367 () Bool)

(assert (=> b!7886599 (=> (not res!3130889) (not e!4656367))))

(declare-fun call!731562 () Bool)

(assert (=> b!7886599 (= res!3130889 call!731562)))

(declare-fun e!4656371 () Bool)

(assert (=> b!7886599 (= e!4656371 e!4656367)))

(declare-fun bm!731556 () Bool)

(declare-fun call!731563 () Bool)

(assert (=> bm!731556 (= call!731562 call!731563)))

(declare-fun b!7886601 () Bool)

(assert (=> b!7886601 (= e!4656369 e!4656371)))

(declare-fun c!1447774 () Bool)

(assert (=> b!7886601 (= c!1447774 (is-Union!21202 (regTwo!42916 r!14100)))))

(declare-fun b!7886602 () Bool)

(declare-fun e!4656372 () Bool)

(declare-fun e!4656373 () Bool)

(assert (=> b!7886602 (= e!4656372 e!4656373)))

(declare-fun res!3130892 () Bool)

(assert (=> b!7886602 (=> (not res!3130892) (not e!4656373))))

(declare-fun call!731561 () Bool)

(assert (=> b!7886602 (= res!3130892 call!731561)))

(declare-fun b!7886603 () Bool)

(declare-fun e!4656368 () Bool)

(assert (=> b!7886603 (= e!4656369 e!4656368)))

(declare-fun res!3130888 () Bool)

(assert (=> b!7886603 (= res!3130888 (not (nullable!9457 (reg!21531 (regTwo!42916 r!14100)))))))

(assert (=> b!7886603 (=> (not res!3130888) (not e!4656368))))

(declare-fun bm!731557 () Bool)

(assert (=> bm!731557 (= call!731561 (validRegex!11612 (ite c!1447774 (regTwo!42917 (regTwo!42916 r!14100)) (regOne!42916 (regTwo!42916 r!14100)))))))

(declare-fun d!2356516 () Bool)

(declare-fun res!3130890 () Bool)

(assert (=> d!2356516 (=> res!3130890 e!4656370)))

(assert (=> d!2356516 (= res!3130890 (is-ElementMatch!21202 (regTwo!42916 r!14100)))))

(assert (=> d!2356516 (= (validRegex!11612 (regTwo!42916 r!14100)) e!4656370)))

(declare-fun b!7886600 () Bool)

(assert (=> b!7886600 (= e!4656373 call!731562)))

(declare-fun b!7886604 () Bool)

(assert (=> b!7886604 (= e!4656367 call!731561)))

(declare-fun b!7886605 () Bool)

(assert (=> b!7886605 (= e!4656368 call!731563)))

(declare-fun bm!731558 () Bool)

(assert (=> bm!731558 (= call!731563 (validRegex!11612 (ite c!1447775 (reg!21531 (regTwo!42916 r!14100)) (ite c!1447774 (regOne!42917 (regTwo!42916 r!14100)) (regTwo!42916 (regTwo!42916 r!14100))))))))

(declare-fun b!7886606 () Bool)

(declare-fun res!3130891 () Bool)

(assert (=> b!7886606 (=> res!3130891 e!4656372)))

(assert (=> b!7886606 (= res!3130891 (not (is-Concat!30047 (regTwo!42916 r!14100))))))

(assert (=> b!7886606 (= e!4656371 e!4656372)))

(assert (= (and d!2356516 (not res!3130890)) b!7886598))

(assert (= (and b!7886598 c!1447775) b!7886603))

(assert (= (and b!7886598 (not c!1447775)) b!7886601))

(assert (= (and b!7886603 res!3130888) b!7886605))

(assert (= (and b!7886601 c!1447774) b!7886599))

(assert (= (and b!7886601 (not c!1447774)) b!7886606))

(assert (= (and b!7886599 res!3130889) b!7886604))

(assert (= (and b!7886606 (not res!3130891)) b!7886602))

(assert (= (and b!7886602 res!3130892) b!7886600))

(assert (= (or b!7886604 b!7886602) bm!731557))

(assert (= (or b!7886599 b!7886600) bm!731556))

(assert (= (or b!7886605 bm!731556) bm!731558))

(declare-fun m!8269340 () Bool)

(assert (=> b!7886603 m!8269340))

(declare-fun m!8269342 () Bool)

(assert (=> bm!731557 m!8269342))

(declare-fun m!8269344 () Bool)

(assert (=> bm!731558 m!8269344))

(assert (=> b!7886409 d!2356516))

(declare-fun b!7886611 () Bool)

(declare-fun e!4656376 () Bool)

(declare-fun tp!2346133 () Bool)

(assert (=> b!7886611 (= e!4656376 (and tp_is_empty!52803 tp!2346133))))

(assert (=> b!7886411 (= tp!2346101 e!4656376)))

(assert (= (and b!7886411 (is-Cons!73935 (t!388794 (_2!38328 cut!3)))) b!7886611))

(declare-fun b!7886612 () Bool)

(declare-fun e!4656377 () Bool)

(declare-fun tp!2346134 () Bool)

(assert (=> b!7886612 (= e!4656377 (and tp_is_empty!52803 tp!2346134))))

(assert (=> b!7886416 (= tp!2346100 e!4656377)))

(assert (= (and b!7886416 (is-Cons!73935 (t!388794 s!9586))) b!7886612))

(declare-fun b!7886623 () Bool)

(declare-fun e!4656380 () Bool)

(assert (=> b!7886623 (= e!4656380 tp_is_empty!52803)))

(declare-fun b!7886626 () Bool)

(declare-fun tp!2346148 () Bool)

(declare-fun tp!2346146 () Bool)

(assert (=> b!7886626 (= e!4656380 (and tp!2346148 tp!2346146))))

(assert (=> b!7886410 (= tp!2346106 e!4656380)))

(declare-fun b!7886624 () Bool)

(declare-fun tp!2346149 () Bool)

(declare-fun tp!2346147 () Bool)

(assert (=> b!7886624 (= e!4656380 (and tp!2346149 tp!2346147))))

(declare-fun b!7886625 () Bool)

(declare-fun tp!2346145 () Bool)

(assert (=> b!7886625 (= e!4656380 tp!2346145)))

(assert (= (and b!7886410 (is-ElementMatch!21202 (regOne!42917 r!14100))) b!7886623))

(assert (= (and b!7886410 (is-Concat!30047 (regOne!42917 r!14100))) b!7886624))

(assert (= (and b!7886410 (is-Star!21202 (regOne!42917 r!14100))) b!7886625))

(assert (= (and b!7886410 (is-Union!21202 (regOne!42917 r!14100))) b!7886626))

(declare-fun b!7886627 () Bool)

(declare-fun e!4656381 () Bool)

(assert (=> b!7886627 (= e!4656381 tp_is_empty!52803)))

(declare-fun b!7886630 () Bool)

(declare-fun tp!2346153 () Bool)

(declare-fun tp!2346151 () Bool)

(assert (=> b!7886630 (= e!4656381 (and tp!2346153 tp!2346151))))

(assert (=> b!7886410 (= tp!2346103 e!4656381)))

(declare-fun b!7886628 () Bool)

(declare-fun tp!2346154 () Bool)

(declare-fun tp!2346152 () Bool)

(assert (=> b!7886628 (= e!4656381 (and tp!2346154 tp!2346152))))

(declare-fun b!7886629 () Bool)

(declare-fun tp!2346150 () Bool)

(assert (=> b!7886629 (= e!4656381 tp!2346150)))

(assert (= (and b!7886410 (is-ElementMatch!21202 (regTwo!42917 r!14100))) b!7886627))

(assert (= (and b!7886410 (is-Concat!30047 (regTwo!42917 r!14100))) b!7886628))

(assert (= (and b!7886410 (is-Star!21202 (regTwo!42917 r!14100))) b!7886629))

(assert (= (and b!7886410 (is-Union!21202 (regTwo!42917 r!14100))) b!7886630))

(declare-fun b!7886631 () Bool)

(declare-fun e!4656382 () Bool)

(assert (=> b!7886631 (= e!4656382 tp_is_empty!52803)))

(declare-fun b!7886634 () Bool)

(declare-fun tp!2346158 () Bool)

(declare-fun tp!2346156 () Bool)

(assert (=> b!7886634 (= e!4656382 (and tp!2346158 tp!2346156))))

(assert (=> b!7886414 (= tp!2346102 e!4656382)))

(declare-fun b!7886632 () Bool)

(declare-fun tp!2346159 () Bool)

(declare-fun tp!2346157 () Bool)

(assert (=> b!7886632 (= e!4656382 (and tp!2346159 tp!2346157))))

(declare-fun b!7886633 () Bool)

(declare-fun tp!2346155 () Bool)

(assert (=> b!7886633 (= e!4656382 tp!2346155)))

(assert (= (and b!7886414 (is-ElementMatch!21202 (reg!21531 r!14100))) b!7886631))

(assert (= (and b!7886414 (is-Concat!30047 (reg!21531 r!14100))) b!7886632))

(assert (= (and b!7886414 (is-Star!21202 (reg!21531 r!14100))) b!7886633))

(assert (= (and b!7886414 (is-Union!21202 (reg!21531 r!14100))) b!7886634))

(declare-fun b!7886635 () Bool)

(declare-fun e!4656383 () Bool)

(assert (=> b!7886635 (= e!4656383 tp_is_empty!52803)))

(declare-fun b!7886638 () Bool)

(declare-fun tp!2346163 () Bool)

(declare-fun tp!2346161 () Bool)

(assert (=> b!7886638 (= e!4656383 (and tp!2346163 tp!2346161))))

(assert (=> b!7886408 (= tp!2346099 e!4656383)))

(declare-fun b!7886636 () Bool)

(declare-fun tp!2346164 () Bool)

(declare-fun tp!2346162 () Bool)

(assert (=> b!7886636 (= e!4656383 (and tp!2346164 tp!2346162))))

(declare-fun b!7886637 () Bool)

(declare-fun tp!2346160 () Bool)

(assert (=> b!7886637 (= e!4656383 tp!2346160)))

(assert (= (and b!7886408 (is-ElementMatch!21202 (regOne!42916 r!14100))) b!7886635))

(assert (= (and b!7886408 (is-Concat!30047 (regOne!42916 r!14100))) b!7886636))

(assert (= (and b!7886408 (is-Star!21202 (regOne!42916 r!14100))) b!7886637))

(assert (= (and b!7886408 (is-Union!21202 (regOne!42916 r!14100))) b!7886638))

(declare-fun b!7886639 () Bool)

(declare-fun e!4656384 () Bool)

(assert (=> b!7886639 (= e!4656384 tp_is_empty!52803)))

(declare-fun b!7886642 () Bool)

(declare-fun tp!2346168 () Bool)

(declare-fun tp!2346166 () Bool)

(assert (=> b!7886642 (= e!4656384 (and tp!2346168 tp!2346166))))

(assert (=> b!7886408 (= tp!2346105 e!4656384)))

(declare-fun b!7886640 () Bool)

(declare-fun tp!2346169 () Bool)

(declare-fun tp!2346167 () Bool)

(assert (=> b!7886640 (= e!4656384 (and tp!2346169 tp!2346167))))

(declare-fun b!7886641 () Bool)

(declare-fun tp!2346165 () Bool)

(assert (=> b!7886641 (= e!4656384 tp!2346165)))

(assert (= (and b!7886408 (is-ElementMatch!21202 (regTwo!42916 r!14100))) b!7886639))

(assert (= (and b!7886408 (is-Concat!30047 (regTwo!42916 r!14100))) b!7886640))

(assert (= (and b!7886408 (is-Star!21202 (regTwo!42916 r!14100))) b!7886641))

(assert (= (and b!7886408 (is-Union!21202 (regTwo!42916 r!14100))) b!7886642))

(declare-fun b!7886643 () Bool)

(declare-fun e!4656385 () Bool)

(declare-fun tp!2346170 () Bool)

(assert (=> b!7886643 (= e!4656385 (and tp_is_empty!52803 tp!2346170))))

(assert (=> b!7886407 (= tp!2346104 e!4656385)))

(assert (= (and b!7886407 (is-Cons!73935 (t!388794 (_1!38328 cut!3)))) b!7886643))

(push 1)

(assert (not b!7886642))

(assert (not b!7886603))

(assert (not b!7886632))

(assert (not b!7886626))

(assert (not b!7886628))

(assert (not b!7886625))

(assert (not b!7886596))

(assert (not b!7886634))

(assert (not b!7886611))

(assert (not b!7886547))

(assert (not bm!731545))

(assert (not b!7886629))

(assert (not d!2356514))

(assert tp_is_empty!52803)

(assert (not bm!731557))

(assert (not bm!731546))

(assert (not b!7886595))

(assert (not bm!731554))

(assert (not bm!731555))

(assert (not b!7886633))

(assert (not b!7886641))

(assert (not b!7886640))

(assert (not b!7886643))

(assert (not b!7886636))

(assert (not b!7886630))

(assert (not b!7886638))

(assert (not b!7886582))

(assert (not b!7886624))

(assert (not b!7886637))

(assert (not bm!731558))

(assert (not b!7886612))

(assert (not b!7886553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

