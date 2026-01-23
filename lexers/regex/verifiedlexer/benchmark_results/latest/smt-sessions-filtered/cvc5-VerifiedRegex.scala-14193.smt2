; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744016 () Bool)

(assert start!744016)

(declare-fun b!7870427 () Bool)

(declare-fun res!3127356 () Bool)

(declare-fun e!4649573 () Bool)

(assert (=> b!7870427 (=> (not res!3127356) (not e!4649573))))

(declare-datatypes ((C!42642 0))(
  ( (C!42643 (val!31783 Int)) )
))
(declare-datatypes ((Regex!21158 0))(
  ( (ElementMatch!21158 (c!1445892 C!42642)) (Concat!30003 (regOne!42828 Regex!21158) (regTwo!42828 Regex!21158)) (EmptyExpr!21158) (Star!21158 (reg!21487 Regex!21158)) (EmptyLang!21158) (Union!21158 (regOne!42829 Regex!21158) (regTwo!42829 Regex!21158)) )
))
(declare-fun r1!6200 () Regex!21158)

(declare-datatypes ((List!74017 0))(
  ( (Nil!73893) (Cons!73893 (h!80341 C!42642) (t!388752 List!74017)) )
))
(declare-fun s!14219 () List!74017)

(declare-fun matchR!10594 (Regex!21158 List!74017) Bool)

(assert (=> b!7870427 (= res!3127356 (matchR!10594 r1!6200 s!14219))))

(declare-fun b!7870428 () Bool)

(declare-fun res!3127355 () Bool)

(assert (=> b!7870428 (=> (not res!3127355) (not e!4649573))))

(assert (=> b!7870428 (= res!3127355 (not (is-Cons!73893 s!14219)))))

(declare-fun b!7870429 () Bool)

(declare-fun r2!6138 () Regex!21158)

(declare-fun validRegex!11568 (Regex!21158) Bool)

(assert (=> b!7870429 (= e!4649573 (not (validRegex!11568 (Union!21158 r1!6200 r2!6138))))))

(declare-fun b!7870430 () Bool)

(declare-fun res!3127358 () Bool)

(assert (=> b!7870430 (=> (not res!3127358) (not e!4649573))))

(assert (=> b!7870430 (= res!3127358 (validRegex!11568 r2!6138))))

(declare-fun b!7870431 () Bool)

(declare-fun e!4649575 () Bool)

(declare-fun tp!2335190 () Bool)

(assert (=> b!7870431 (= e!4649575 tp!2335190)))

(declare-fun b!7870432 () Bool)

(declare-fun tp!2335192 () Bool)

(declare-fun tp!2335194 () Bool)

(assert (=> b!7870432 (= e!4649575 (and tp!2335192 tp!2335194))))

(declare-fun b!7870433 () Bool)

(declare-fun e!4649572 () Bool)

(declare-fun tp!2335197 () Bool)

(declare-fun tp!2335193 () Bool)

(assert (=> b!7870433 (= e!4649572 (and tp!2335197 tp!2335193))))

(declare-fun res!3127357 () Bool)

(assert (=> start!744016 (=> (not res!3127357) (not e!4649573))))

(assert (=> start!744016 (= res!3127357 (validRegex!11568 r1!6200))))

(assert (=> start!744016 e!4649573))

(assert (=> start!744016 e!4649575))

(assert (=> start!744016 e!4649572))

(declare-fun e!4649574 () Bool)

(assert (=> start!744016 e!4649574))

(declare-fun b!7870434 () Bool)

(declare-fun tp!2335191 () Bool)

(declare-fun tp!2335199 () Bool)

(assert (=> b!7870434 (= e!4649572 (and tp!2335191 tp!2335199))))

(declare-fun b!7870435 () Bool)

(declare-fun tp_is_empty!52715 () Bool)

(assert (=> b!7870435 (= e!4649572 tp_is_empty!52715)))

(declare-fun b!7870436 () Bool)

(declare-fun tp!2335196 () Bool)

(declare-fun tp!2335195 () Bool)

(assert (=> b!7870436 (= e!4649575 (and tp!2335196 tp!2335195))))

(declare-fun b!7870437 () Bool)

(assert (=> b!7870437 (= e!4649575 tp_is_empty!52715)))

(declare-fun b!7870438 () Bool)

(declare-fun tp!2335198 () Bool)

(assert (=> b!7870438 (= e!4649574 (and tp_is_empty!52715 tp!2335198))))

(declare-fun b!7870439 () Bool)

(declare-fun tp!2335189 () Bool)

(assert (=> b!7870439 (= e!4649572 tp!2335189)))

(assert (= (and start!744016 res!3127357) b!7870430))

(assert (= (and b!7870430 res!3127358) b!7870427))

(assert (= (and b!7870427 res!3127356) b!7870428))

(assert (= (and b!7870428 res!3127355) b!7870429))

(assert (= (and start!744016 (is-ElementMatch!21158 r1!6200)) b!7870437))

(assert (= (and start!744016 (is-Concat!30003 r1!6200)) b!7870432))

(assert (= (and start!744016 (is-Star!21158 r1!6200)) b!7870431))

(assert (= (and start!744016 (is-Union!21158 r1!6200)) b!7870436))

(assert (= (and start!744016 (is-ElementMatch!21158 r2!6138)) b!7870435))

(assert (= (and start!744016 (is-Concat!30003 r2!6138)) b!7870434))

(assert (= (and start!744016 (is-Star!21158 r2!6138)) b!7870439))

(assert (= (and start!744016 (is-Union!21158 r2!6138)) b!7870433))

(assert (= (and start!744016 (is-Cons!73893 s!14219)) b!7870438))

(declare-fun m!8265024 () Bool)

(assert (=> b!7870427 m!8265024))

(declare-fun m!8265026 () Bool)

(assert (=> b!7870429 m!8265026))

(declare-fun m!8265028 () Bool)

(assert (=> b!7870430 m!8265028))

(declare-fun m!8265030 () Bool)

(assert (=> start!744016 m!8265030))

(push 1)

(assert (not b!7870434))

(assert (not start!744016))

(assert (not b!7870429))

(assert tp_is_empty!52715)

(assert (not b!7870438))

(assert (not b!7870433))

(assert (not b!7870439))

(assert (not b!7870436))

(assert (not b!7870430))

(assert (not b!7870427))

(assert (not b!7870431))

(assert (not b!7870432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7870497 () Bool)

(declare-fun e!4649603 () Bool)

(declare-fun call!729865 () Bool)

(assert (=> b!7870497 (= e!4649603 call!729865)))

(declare-fun bm!729858 () Bool)

(declare-fun call!729864 () Bool)

(declare-fun c!1445898 () Bool)

(assert (=> bm!729858 (= call!729864 (validRegex!11568 (ite c!1445898 (regTwo!42829 r2!6138) (regOne!42828 r2!6138))))))

(declare-fun d!2355198 () Bool)

(declare-fun res!3127382 () Bool)

(declare-fun e!4649604 () Bool)

(assert (=> d!2355198 (=> res!3127382 e!4649604)))

(assert (=> d!2355198 (= res!3127382 (is-ElementMatch!21158 r2!6138))))

(assert (=> d!2355198 (= (validRegex!11568 r2!6138) e!4649604)))

(declare-fun b!7870498 () Bool)

(declare-fun res!3127384 () Bool)

(declare-fun e!4649606 () Bool)

(assert (=> b!7870498 (=> res!3127384 e!4649606)))

(assert (=> b!7870498 (= res!3127384 (not (is-Concat!30003 r2!6138)))))

(declare-fun e!4649607 () Bool)

(assert (=> b!7870498 (= e!4649607 e!4649606)))

(declare-fun b!7870499 () Bool)

(declare-fun res!3127383 () Bool)

(declare-fun e!4649605 () Bool)

(assert (=> b!7870499 (=> (not res!3127383) (not e!4649605))))

(declare-fun call!729863 () Bool)

(assert (=> b!7870499 (= res!3127383 call!729863)))

(assert (=> b!7870499 (= e!4649607 e!4649605)))

(declare-fun b!7870500 () Bool)

(declare-fun e!4649602 () Bool)

(assert (=> b!7870500 (= e!4649602 call!729863)))

(declare-fun bm!729859 () Bool)

(assert (=> bm!729859 (= call!729863 call!729865)))

(declare-fun b!7870501 () Bool)

(declare-fun e!4649608 () Bool)

(assert (=> b!7870501 (= e!4649608 e!4649607)))

(assert (=> b!7870501 (= c!1445898 (is-Union!21158 r2!6138))))

(declare-fun b!7870502 () Bool)

(assert (=> b!7870502 (= e!4649604 e!4649608)))

(declare-fun c!1445899 () Bool)

(assert (=> b!7870502 (= c!1445899 (is-Star!21158 r2!6138))))

(declare-fun b!7870503 () Bool)

(assert (=> b!7870503 (= e!4649605 call!729864)))

(declare-fun b!7870504 () Bool)

(assert (=> b!7870504 (= e!4649608 e!4649603)))

(declare-fun res!3127381 () Bool)

(declare-fun nullable!9422 (Regex!21158) Bool)

(assert (=> b!7870504 (= res!3127381 (not (nullable!9422 (reg!21487 r2!6138))))))

(assert (=> b!7870504 (=> (not res!3127381) (not e!4649603))))

(declare-fun bm!729860 () Bool)

(assert (=> bm!729860 (= call!729865 (validRegex!11568 (ite c!1445899 (reg!21487 r2!6138) (ite c!1445898 (regOne!42829 r2!6138) (regTwo!42828 r2!6138)))))))

(declare-fun b!7870505 () Bool)

(assert (=> b!7870505 (= e!4649606 e!4649602)))

(declare-fun res!3127385 () Bool)

(assert (=> b!7870505 (=> (not res!3127385) (not e!4649602))))

(assert (=> b!7870505 (= res!3127385 call!729864)))

(assert (= (and d!2355198 (not res!3127382)) b!7870502))

(assert (= (and b!7870502 c!1445899) b!7870504))

(assert (= (and b!7870502 (not c!1445899)) b!7870501))

(assert (= (and b!7870504 res!3127381) b!7870497))

(assert (= (and b!7870501 c!1445898) b!7870499))

(assert (= (and b!7870501 (not c!1445898)) b!7870498))

(assert (= (and b!7870499 res!3127383) b!7870503))

(assert (= (and b!7870498 (not res!3127384)) b!7870505))

(assert (= (and b!7870505 res!3127385) b!7870500))

(assert (= (or b!7870503 b!7870505) bm!729858))

(assert (= (or b!7870499 b!7870500) bm!729859))

(assert (= (or b!7870497 bm!729859) bm!729860))

(declare-fun m!8265040 () Bool)

(assert (=> bm!729858 m!8265040))

(declare-fun m!8265042 () Bool)

(assert (=> b!7870504 m!8265042))

(declare-fun m!8265044 () Bool)

(assert (=> bm!729860 m!8265044))

(assert (=> b!7870430 d!2355198))

(declare-fun b!7870506 () Bool)

(declare-fun e!4649610 () Bool)

(declare-fun call!729868 () Bool)

(assert (=> b!7870506 (= e!4649610 call!729868)))

(declare-fun c!1445900 () Bool)

(declare-fun bm!729861 () Bool)

(declare-fun call!729867 () Bool)

(assert (=> bm!729861 (= call!729867 (validRegex!11568 (ite c!1445900 (regTwo!42829 (Union!21158 r1!6200 r2!6138)) (regOne!42828 (Union!21158 r1!6200 r2!6138)))))))

(declare-fun d!2355202 () Bool)

(declare-fun res!3127387 () Bool)

(declare-fun e!4649611 () Bool)

(assert (=> d!2355202 (=> res!3127387 e!4649611)))

(assert (=> d!2355202 (= res!3127387 (is-ElementMatch!21158 (Union!21158 r1!6200 r2!6138)))))

(assert (=> d!2355202 (= (validRegex!11568 (Union!21158 r1!6200 r2!6138)) e!4649611)))

(declare-fun b!7870507 () Bool)

(declare-fun res!3127389 () Bool)

(declare-fun e!4649613 () Bool)

(assert (=> b!7870507 (=> res!3127389 e!4649613)))

(assert (=> b!7870507 (= res!3127389 (not (is-Concat!30003 (Union!21158 r1!6200 r2!6138))))))

(declare-fun e!4649614 () Bool)

(assert (=> b!7870507 (= e!4649614 e!4649613)))

(declare-fun b!7870508 () Bool)

(declare-fun res!3127388 () Bool)

(declare-fun e!4649612 () Bool)

(assert (=> b!7870508 (=> (not res!3127388) (not e!4649612))))

(declare-fun call!729866 () Bool)

(assert (=> b!7870508 (= res!3127388 call!729866)))

(assert (=> b!7870508 (= e!4649614 e!4649612)))

(declare-fun b!7870509 () Bool)

(declare-fun e!4649609 () Bool)

(assert (=> b!7870509 (= e!4649609 call!729866)))

(declare-fun bm!729862 () Bool)

(assert (=> bm!729862 (= call!729866 call!729868)))

(declare-fun b!7870510 () Bool)

(declare-fun e!4649615 () Bool)

(assert (=> b!7870510 (= e!4649615 e!4649614)))

(assert (=> b!7870510 (= c!1445900 (is-Union!21158 (Union!21158 r1!6200 r2!6138)))))

(declare-fun b!7870511 () Bool)

(assert (=> b!7870511 (= e!4649611 e!4649615)))

(declare-fun c!1445901 () Bool)

(assert (=> b!7870511 (= c!1445901 (is-Star!21158 (Union!21158 r1!6200 r2!6138)))))

(declare-fun b!7870512 () Bool)

(assert (=> b!7870512 (= e!4649612 call!729867)))

(declare-fun b!7870513 () Bool)

(assert (=> b!7870513 (= e!4649615 e!4649610)))

(declare-fun res!3127386 () Bool)

(assert (=> b!7870513 (= res!3127386 (not (nullable!9422 (reg!21487 (Union!21158 r1!6200 r2!6138)))))))

(assert (=> b!7870513 (=> (not res!3127386) (not e!4649610))))

(declare-fun bm!729863 () Bool)

(assert (=> bm!729863 (= call!729868 (validRegex!11568 (ite c!1445901 (reg!21487 (Union!21158 r1!6200 r2!6138)) (ite c!1445900 (regOne!42829 (Union!21158 r1!6200 r2!6138)) (regTwo!42828 (Union!21158 r1!6200 r2!6138))))))))

(declare-fun b!7870514 () Bool)

(assert (=> b!7870514 (= e!4649613 e!4649609)))

(declare-fun res!3127390 () Bool)

(assert (=> b!7870514 (=> (not res!3127390) (not e!4649609))))

(assert (=> b!7870514 (= res!3127390 call!729867)))

(assert (= (and d!2355202 (not res!3127387)) b!7870511))

(assert (= (and b!7870511 c!1445901) b!7870513))

(assert (= (and b!7870511 (not c!1445901)) b!7870510))

(assert (= (and b!7870513 res!3127386) b!7870506))

(assert (= (and b!7870510 c!1445900) b!7870508))

(assert (= (and b!7870510 (not c!1445900)) b!7870507))

(assert (= (and b!7870508 res!3127388) b!7870512))

(assert (= (and b!7870507 (not res!3127389)) b!7870514))

(assert (= (and b!7870514 res!3127390) b!7870509))

(assert (= (or b!7870512 b!7870514) bm!729861))

(assert (= (or b!7870508 b!7870509) bm!729862))

(assert (= (or b!7870506 bm!729862) bm!729863))

(declare-fun m!8265046 () Bool)

(assert (=> bm!729861 m!8265046))

(declare-fun m!8265048 () Bool)

(assert (=> b!7870513 m!8265048))

(declare-fun m!8265050 () Bool)

(assert (=> bm!729863 m!8265050))

(assert (=> b!7870429 d!2355202))

(declare-fun b!7870571 () Bool)

(declare-fun e!4649649 () Bool)

(declare-fun head!16100 (List!74017) C!42642)

(assert (=> b!7870571 (= e!4649649 (not (= (head!16100 s!14219) (c!1445892 r1!6200))))))

(declare-fun b!7870572 () Bool)

(declare-fun res!3127425 () Bool)

(assert (=> b!7870572 (=> res!3127425 e!4649649)))

(declare-fun isEmpty!42389 (List!74017) Bool)

(declare-fun tail!15643 (List!74017) List!74017)

(assert (=> b!7870572 (= res!3127425 (not (isEmpty!42389 (tail!15643 s!14219))))))

(declare-fun b!7870573 () Bool)

(declare-fun e!4649646 () Bool)

(declare-fun e!4649648 () Bool)

(assert (=> b!7870573 (= e!4649646 e!4649648)))

(declare-fun res!3127426 () Bool)

(assert (=> b!7870573 (=> (not res!3127426) (not e!4649648))))

(declare-fun lt!2680874 () Bool)

(assert (=> b!7870573 (= res!3127426 (not lt!2680874))))

(declare-fun bm!729866 () Bool)

(declare-fun call!729871 () Bool)

(assert (=> bm!729866 (= call!729871 (isEmpty!42389 s!14219))))

(declare-fun b!7870574 () Bool)

(declare-fun e!4649644 () Bool)

(assert (=> b!7870574 (= e!4649644 (= (head!16100 s!14219) (c!1445892 r1!6200)))))

(declare-fun b!7870576 () Bool)

(declare-fun e!4649650 () Bool)

(assert (=> b!7870576 (= e!4649650 (nullable!9422 r1!6200))))

(declare-fun b!7870577 () Bool)

(declare-fun e!4649645 () Bool)

(assert (=> b!7870577 (= e!4649645 (= lt!2680874 call!729871))))

(declare-fun b!7870578 () Bool)

(assert (=> b!7870578 (= e!4649648 e!4649649)))

(declare-fun res!3127424 () Bool)

(assert (=> b!7870578 (=> res!3127424 e!4649649)))

(assert (=> b!7870578 (= res!3127424 call!729871)))

(declare-fun b!7870579 () Bool)

(declare-fun res!3127429 () Bool)

(assert (=> b!7870579 (=> res!3127429 e!4649646)))

(assert (=> b!7870579 (= res!3127429 (not (is-ElementMatch!21158 r1!6200)))))

(declare-fun e!4649647 () Bool)

(assert (=> b!7870579 (= e!4649647 e!4649646)))

(declare-fun b!7870580 () Bool)

(declare-fun res!3127430 () Bool)

(assert (=> b!7870580 (=> res!3127430 e!4649646)))

(assert (=> b!7870580 (= res!3127430 e!4649644)))

(declare-fun res!3127428 () Bool)

(assert (=> b!7870580 (=> (not res!3127428) (not e!4649644))))

(assert (=> b!7870580 (= res!3127428 lt!2680874)))

(declare-fun b!7870581 () Bool)

(assert (=> b!7870581 (= e!4649647 (not lt!2680874))))

(declare-fun b!7870582 () Bool)

(declare-fun res!3127423 () Bool)

(assert (=> b!7870582 (=> (not res!3127423) (not e!4649644))))

(assert (=> b!7870582 (= res!3127423 (isEmpty!42389 (tail!15643 s!14219)))))

(declare-fun d!2355204 () Bool)

(assert (=> d!2355204 e!4649645))

(declare-fun c!1445916 () Bool)

(assert (=> d!2355204 (= c!1445916 (is-EmptyExpr!21158 r1!6200))))

(assert (=> d!2355204 (= lt!2680874 e!4649650)))

(declare-fun c!1445915 () Bool)

(assert (=> d!2355204 (= c!1445915 (isEmpty!42389 s!14219))))

(assert (=> d!2355204 (validRegex!11568 r1!6200)))

(assert (=> d!2355204 (= (matchR!10594 r1!6200 s!14219) lt!2680874)))

(declare-fun b!7870575 () Bool)

(assert (=> b!7870575 (= e!4649645 e!4649647)))

(declare-fun c!1445914 () Bool)

(assert (=> b!7870575 (= c!1445914 (is-EmptyLang!21158 r1!6200))))

(declare-fun b!7870583 () Bool)

(declare-fun derivativeStep!6389 (Regex!21158 C!42642) Regex!21158)

(assert (=> b!7870583 (= e!4649650 (matchR!10594 (derivativeStep!6389 r1!6200 (head!16100 s!14219)) (tail!15643 s!14219)))))

(declare-fun b!7870584 () Bool)

(declare-fun res!3127427 () Bool)

(assert (=> b!7870584 (=> (not res!3127427) (not e!4649644))))

(assert (=> b!7870584 (= res!3127427 (not call!729871))))

(assert (= (and d!2355204 c!1445915) b!7870576))

(assert (= (and d!2355204 (not c!1445915)) b!7870583))

(assert (= (and d!2355204 c!1445916) b!7870577))

(assert (= (and d!2355204 (not c!1445916)) b!7870575))

(assert (= (and b!7870575 c!1445914) b!7870581))

(assert (= (and b!7870575 (not c!1445914)) b!7870579))

(assert (= (and b!7870579 (not res!3127429)) b!7870580))

(assert (= (and b!7870580 res!3127428) b!7870584))

(assert (= (and b!7870584 res!3127427) b!7870582))

(assert (= (and b!7870582 res!3127423) b!7870574))

(assert (= (and b!7870580 (not res!3127430)) b!7870573))

(assert (= (and b!7870573 res!3127426) b!7870578))

(assert (= (and b!7870578 (not res!3127424)) b!7870572))

(assert (= (and b!7870572 (not res!3127425)) b!7870571))

(assert (= (or b!7870577 b!7870584 b!7870578) bm!729866))

(declare-fun m!8265052 () Bool)

(assert (=> b!7870574 m!8265052))

(declare-fun m!8265054 () Bool)

(assert (=> b!7870582 m!8265054))

(assert (=> b!7870582 m!8265054))

(declare-fun m!8265056 () Bool)

(assert (=> b!7870582 m!8265056))

(declare-fun m!8265058 () Bool)

(assert (=> d!2355204 m!8265058))

(assert (=> d!2355204 m!8265030))

(declare-fun m!8265060 () Bool)

(assert (=> b!7870576 m!8265060))

(assert (=> b!7870571 m!8265052))

(assert (=> b!7870583 m!8265052))

(assert (=> b!7870583 m!8265052))

(declare-fun m!8265062 () Bool)

(assert (=> b!7870583 m!8265062))

(assert (=> b!7870583 m!8265054))

(assert (=> b!7870583 m!8265062))

(assert (=> b!7870583 m!8265054))

(declare-fun m!8265064 () Bool)

(assert (=> b!7870583 m!8265064))

(assert (=> bm!729866 m!8265058))

(assert (=> b!7870572 m!8265054))

(assert (=> b!7870572 m!8265054))

(assert (=> b!7870572 m!8265056))

(assert (=> b!7870427 d!2355204))

(declare-fun b!7870585 () Bool)

(declare-fun e!4649652 () Bool)

(declare-fun call!729876 () Bool)

(assert (=> b!7870585 (= e!4649652 call!729876)))

(declare-fun bm!729867 () Bool)

(declare-fun call!729875 () Bool)

(declare-fun c!1445917 () Bool)

(assert (=> bm!729867 (= call!729875 (validRegex!11568 (ite c!1445917 (regTwo!42829 r1!6200) (regOne!42828 r1!6200))))))

(declare-fun d!2355206 () Bool)

(declare-fun res!3127432 () Bool)

(declare-fun e!4649653 () Bool)

(assert (=> d!2355206 (=> res!3127432 e!4649653)))

(assert (=> d!2355206 (= res!3127432 (is-ElementMatch!21158 r1!6200))))

(assert (=> d!2355206 (= (validRegex!11568 r1!6200) e!4649653)))

(declare-fun b!7870586 () Bool)

(declare-fun res!3127434 () Bool)

(declare-fun e!4649655 () Bool)

(assert (=> b!7870586 (=> res!3127434 e!4649655)))

(assert (=> b!7870586 (= res!3127434 (not (is-Concat!30003 r1!6200)))))

(declare-fun e!4649656 () Bool)

(assert (=> b!7870586 (= e!4649656 e!4649655)))

(declare-fun b!7870587 () Bool)

(declare-fun res!3127433 () Bool)

(declare-fun e!4649654 () Bool)

(assert (=> b!7870587 (=> (not res!3127433) (not e!4649654))))

(declare-fun call!729874 () Bool)

(assert (=> b!7870587 (= res!3127433 call!729874)))

(assert (=> b!7870587 (= e!4649656 e!4649654)))

(declare-fun b!7870588 () Bool)

(declare-fun e!4649651 () Bool)

(assert (=> b!7870588 (= e!4649651 call!729874)))

(declare-fun bm!729868 () Bool)

(assert (=> bm!729868 (= call!729874 call!729876)))

(declare-fun b!7870589 () Bool)

(declare-fun e!4649657 () Bool)

(assert (=> b!7870589 (= e!4649657 e!4649656)))

(assert (=> b!7870589 (= c!1445917 (is-Union!21158 r1!6200))))

(declare-fun b!7870590 () Bool)

(assert (=> b!7870590 (= e!4649653 e!4649657)))

(declare-fun c!1445918 () Bool)

(assert (=> b!7870590 (= c!1445918 (is-Star!21158 r1!6200))))

(declare-fun b!7870591 () Bool)

(assert (=> b!7870591 (= e!4649654 call!729875)))

(declare-fun b!7870592 () Bool)

(assert (=> b!7870592 (= e!4649657 e!4649652)))

(declare-fun res!3127431 () Bool)

(assert (=> b!7870592 (= res!3127431 (not (nullable!9422 (reg!21487 r1!6200))))))

(assert (=> b!7870592 (=> (not res!3127431) (not e!4649652))))

(declare-fun bm!729869 () Bool)

(assert (=> bm!729869 (= call!729876 (validRegex!11568 (ite c!1445918 (reg!21487 r1!6200) (ite c!1445917 (regOne!42829 r1!6200) (regTwo!42828 r1!6200)))))))

(declare-fun b!7870593 () Bool)

(assert (=> b!7870593 (= e!4649655 e!4649651)))

(declare-fun res!3127435 () Bool)

(assert (=> b!7870593 (=> (not res!3127435) (not e!4649651))))

(assert (=> b!7870593 (= res!3127435 call!729875)))

(assert (= (and d!2355206 (not res!3127432)) b!7870590))

(assert (= (and b!7870590 c!1445918) b!7870592))

(assert (= (and b!7870590 (not c!1445918)) b!7870589))

(assert (= (and b!7870592 res!3127431) b!7870585))

(assert (= (and b!7870589 c!1445917) b!7870587))

(assert (= (and b!7870589 (not c!1445917)) b!7870586))

(assert (= (and b!7870587 res!3127433) b!7870591))

(assert (= (and b!7870586 (not res!3127434)) b!7870593))

(assert (= (and b!7870593 res!3127435) b!7870588))

(assert (= (or b!7870591 b!7870593) bm!729867))

(assert (= (or b!7870587 b!7870588) bm!729868))

(assert (= (or b!7870585 bm!729868) bm!729869))

(declare-fun m!8265066 () Bool)

(assert (=> bm!729867 m!8265066))

(declare-fun m!8265068 () Bool)

(assert (=> b!7870592 m!8265068))

(declare-fun m!8265070 () Bool)

(assert (=> bm!729869 m!8265070))

(assert (=> start!744016 d!2355206))

(declare-fun b!7870606 () Bool)

(declare-fun e!4649660 () Bool)

(declare-fun tp!2335243 () Bool)

(assert (=> b!7870606 (= e!4649660 tp!2335243)))

(assert (=> b!7870431 (= tp!2335190 e!4649660)))

(declare-fun b!7870607 () Bool)

(declare-fun tp!2335247 () Bool)

(declare-fun tp!2335244 () Bool)

(assert (=> b!7870607 (= e!4649660 (and tp!2335247 tp!2335244))))

(declare-fun b!7870604 () Bool)

(assert (=> b!7870604 (= e!4649660 tp_is_empty!52715)))

(declare-fun b!7870605 () Bool)

(declare-fun tp!2335245 () Bool)

(declare-fun tp!2335246 () Bool)

(assert (=> b!7870605 (= e!4649660 (and tp!2335245 tp!2335246))))

(assert (= (and b!7870431 (is-ElementMatch!21158 (reg!21487 r1!6200))) b!7870604))

(assert (= (and b!7870431 (is-Concat!30003 (reg!21487 r1!6200))) b!7870605))

(assert (= (and b!7870431 (is-Star!21158 (reg!21487 r1!6200))) b!7870606))

(assert (= (and b!7870431 (is-Union!21158 (reg!21487 r1!6200))) b!7870607))

(declare-fun b!7870610 () Bool)

(declare-fun e!4649661 () Bool)

(declare-fun tp!2335248 () Bool)

(assert (=> b!7870610 (= e!4649661 tp!2335248)))

(assert (=> b!7870436 (= tp!2335196 e!4649661)))

(declare-fun b!7870611 () Bool)

(declare-fun tp!2335252 () Bool)

(declare-fun tp!2335249 () Bool)

(assert (=> b!7870611 (= e!4649661 (and tp!2335252 tp!2335249))))

(declare-fun b!7870608 () Bool)

(assert (=> b!7870608 (= e!4649661 tp_is_empty!52715)))

(declare-fun b!7870609 () Bool)

(declare-fun tp!2335250 () Bool)

(declare-fun tp!2335251 () Bool)

(assert (=> b!7870609 (= e!4649661 (and tp!2335250 tp!2335251))))

(assert (= (and b!7870436 (is-ElementMatch!21158 (regOne!42829 r1!6200))) b!7870608))

(assert (= (and b!7870436 (is-Concat!30003 (regOne!42829 r1!6200))) b!7870609))

(assert (= (and b!7870436 (is-Star!21158 (regOne!42829 r1!6200))) b!7870610))

(assert (= (and b!7870436 (is-Union!21158 (regOne!42829 r1!6200))) b!7870611))

(declare-fun b!7870614 () Bool)

(declare-fun e!4649662 () Bool)

(declare-fun tp!2335253 () Bool)

(assert (=> b!7870614 (= e!4649662 tp!2335253)))

(assert (=> b!7870436 (= tp!2335195 e!4649662)))

(declare-fun b!7870615 () Bool)

(declare-fun tp!2335257 () Bool)

(declare-fun tp!2335254 () Bool)

(assert (=> b!7870615 (= e!4649662 (and tp!2335257 tp!2335254))))

(declare-fun b!7870612 () Bool)

(assert (=> b!7870612 (= e!4649662 tp_is_empty!52715)))

(declare-fun b!7870613 () Bool)

(declare-fun tp!2335255 () Bool)

(declare-fun tp!2335256 () Bool)

(assert (=> b!7870613 (= e!4649662 (and tp!2335255 tp!2335256))))

(assert (= (and b!7870436 (is-ElementMatch!21158 (regTwo!42829 r1!6200))) b!7870612))

(assert (= (and b!7870436 (is-Concat!30003 (regTwo!42829 r1!6200))) b!7870613))

(assert (= (and b!7870436 (is-Star!21158 (regTwo!42829 r1!6200))) b!7870614))

(assert (= (and b!7870436 (is-Union!21158 (regTwo!42829 r1!6200))) b!7870615))

(declare-fun b!7870618 () Bool)

(declare-fun e!4649663 () Bool)

(declare-fun tp!2335258 () Bool)

(assert (=> b!7870618 (= e!4649663 tp!2335258)))

(assert (=> b!7870434 (= tp!2335191 e!4649663)))

(declare-fun b!7870619 () Bool)

(declare-fun tp!2335262 () Bool)

(declare-fun tp!2335259 () Bool)

(assert (=> b!7870619 (= e!4649663 (and tp!2335262 tp!2335259))))

(declare-fun b!7870616 () Bool)

(assert (=> b!7870616 (= e!4649663 tp_is_empty!52715)))

(declare-fun b!7870617 () Bool)

(declare-fun tp!2335260 () Bool)

(declare-fun tp!2335261 () Bool)

(assert (=> b!7870617 (= e!4649663 (and tp!2335260 tp!2335261))))

(assert (= (and b!7870434 (is-ElementMatch!21158 (regOne!42828 r2!6138))) b!7870616))

(assert (= (and b!7870434 (is-Concat!30003 (regOne!42828 r2!6138))) b!7870617))

(assert (= (and b!7870434 (is-Star!21158 (regOne!42828 r2!6138))) b!7870618))

(assert (= (and b!7870434 (is-Union!21158 (regOne!42828 r2!6138))) b!7870619))

(declare-fun b!7870622 () Bool)

(declare-fun e!4649664 () Bool)

(declare-fun tp!2335263 () Bool)

(assert (=> b!7870622 (= e!4649664 tp!2335263)))

(assert (=> b!7870434 (= tp!2335199 e!4649664)))

(declare-fun b!7870623 () Bool)

(declare-fun tp!2335267 () Bool)

(declare-fun tp!2335264 () Bool)

(assert (=> b!7870623 (= e!4649664 (and tp!2335267 tp!2335264))))

(declare-fun b!7870620 () Bool)

(assert (=> b!7870620 (= e!4649664 tp_is_empty!52715)))

(declare-fun b!7870621 () Bool)

(declare-fun tp!2335265 () Bool)

(declare-fun tp!2335266 () Bool)

(assert (=> b!7870621 (= e!4649664 (and tp!2335265 tp!2335266))))

(assert (= (and b!7870434 (is-ElementMatch!21158 (regTwo!42828 r2!6138))) b!7870620))

(assert (= (and b!7870434 (is-Concat!30003 (regTwo!42828 r2!6138))) b!7870621))

(assert (= (and b!7870434 (is-Star!21158 (regTwo!42828 r2!6138))) b!7870622))

(assert (= (and b!7870434 (is-Union!21158 (regTwo!42828 r2!6138))) b!7870623))

(declare-fun b!7870626 () Bool)

(declare-fun e!4649665 () Bool)

(declare-fun tp!2335268 () Bool)

(assert (=> b!7870626 (= e!4649665 tp!2335268)))

(assert (=> b!7870439 (= tp!2335189 e!4649665)))

(declare-fun b!7870627 () Bool)

(declare-fun tp!2335272 () Bool)

(declare-fun tp!2335269 () Bool)

(assert (=> b!7870627 (= e!4649665 (and tp!2335272 tp!2335269))))

(declare-fun b!7870624 () Bool)

(assert (=> b!7870624 (= e!4649665 tp_is_empty!52715)))

(declare-fun b!7870625 () Bool)

(declare-fun tp!2335270 () Bool)

(declare-fun tp!2335271 () Bool)

(assert (=> b!7870625 (= e!4649665 (and tp!2335270 tp!2335271))))

(assert (= (and b!7870439 (is-ElementMatch!21158 (reg!21487 r2!6138))) b!7870624))

(assert (= (and b!7870439 (is-Concat!30003 (reg!21487 r2!6138))) b!7870625))

(assert (= (and b!7870439 (is-Star!21158 (reg!21487 r2!6138))) b!7870626))

(assert (= (and b!7870439 (is-Union!21158 (reg!21487 r2!6138))) b!7870627))

(declare-fun b!7870630 () Bool)

(declare-fun e!4649666 () Bool)

(declare-fun tp!2335273 () Bool)

(assert (=> b!7870630 (= e!4649666 tp!2335273)))

(assert (=> b!7870433 (= tp!2335197 e!4649666)))

(declare-fun b!7870631 () Bool)

(declare-fun tp!2335277 () Bool)

(declare-fun tp!2335274 () Bool)

(assert (=> b!7870631 (= e!4649666 (and tp!2335277 tp!2335274))))

(declare-fun b!7870628 () Bool)

(assert (=> b!7870628 (= e!4649666 tp_is_empty!52715)))

(declare-fun b!7870629 () Bool)

(declare-fun tp!2335275 () Bool)

(declare-fun tp!2335276 () Bool)

(assert (=> b!7870629 (= e!4649666 (and tp!2335275 tp!2335276))))

(assert (= (and b!7870433 (is-ElementMatch!21158 (regOne!42829 r2!6138))) b!7870628))

(assert (= (and b!7870433 (is-Concat!30003 (regOne!42829 r2!6138))) b!7870629))

(assert (= (and b!7870433 (is-Star!21158 (regOne!42829 r2!6138))) b!7870630))

(assert (= (and b!7870433 (is-Union!21158 (regOne!42829 r2!6138))) b!7870631))

(declare-fun b!7870634 () Bool)

(declare-fun e!4649667 () Bool)

(declare-fun tp!2335278 () Bool)

(assert (=> b!7870634 (= e!4649667 tp!2335278)))

(assert (=> b!7870433 (= tp!2335193 e!4649667)))

(declare-fun b!7870635 () Bool)

(declare-fun tp!2335282 () Bool)

(declare-fun tp!2335279 () Bool)

(assert (=> b!7870635 (= e!4649667 (and tp!2335282 tp!2335279))))

(declare-fun b!7870632 () Bool)

(assert (=> b!7870632 (= e!4649667 tp_is_empty!52715)))

(declare-fun b!7870633 () Bool)

(declare-fun tp!2335280 () Bool)

(declare-fun tp!2335281 () Bool)

(assert (=> b!7870633 (= e!4649667 (and tp!2335280 tp!2335281))))

(assert (= (and b!7870433 (is-ElementMatch!21158 (regTwo!42829 r2!6138))) b!7870632))

(assert (= (and b!7870433 (is-Concat!30003 (regTwo!42829 r2!6138))) b!7870633))

(assert (= (and b!7870433 (is-Star!21158 (regTwo!42829 r2!6138))) b!7870634))

(assert (= (and b!7870433 (is-Union!21158 (regTwo!42829 r2!6138))) b!7870635))

(declare-fun b!7870640 () Bool)

(declare-fun e!4649670 () Bool)

(declare-fun tp!2335285 () Bool)

(assert (=> b!7870640 (= e!4649670 (and tp_is_empty!52715 tp!2335285))))

(assert (=> b!7870438 (= tp!2335198 e!4649670)))

(assert (= (and b!7870438 (is-Cons!73893 (t!388752 s!14219))) b!7870640))

(declare-fun b!7870643 () Bool)

(declare-fun e!4649671 () Bool)

(declare-fun tp!2335286 () Bool)

(assert (=> b!7870643 (= e!4649671 tp!2335286)))

(assert (=> b!7870432 (= tp!2335192 e!4649671)))

(declare-fun b!7870644 () Bool)

(declare-fun tp!2335290 () Bool)

(declare-fun tp!2335287 () Bool)

(assert (=> b!7870644 (= e!4649671 (and tp!2335290 tp!2335287))))

(declare-fun b!7870641 () Bool)

(assert (=> b!7870641 (= e!4649671 tp_is_empty!52715)))

(declare-fun b!7870642 () Bool)

(declare-fun tp!2335288 () Bool)

(declare-fun tp!2335289 () Bool)

(assert (=> b!7870642 (= e!4649671 (and tp!2335288 tp!2335289))))

(assert (= (and b!7870432 (is-ElementMatch!21158 (regOne!42828 r1!6200))) b!7870641))

(assert (= (and b!7870432 (is-Concat!30003 (regOne!42828 r1!6200))) b!7870642))

(assert (= (and b!7870432 (is-Star!21158 (regOne!42828 r1!6200))) b!7870643))

(assert (= (and b!7870432 (is-Union!21158 (regOne!42828 r1!6200))) b!7870644))

(declare-fun b!7870647 () Bool)

(declare-fun e!4649672 () Bool)

(declare-fun tp!2335291 () Bool)

(assert (=> b!7870647 (= e!4649672 tp!2335291)))

(assert (=> b!7870432 (= tp!2335194 e!4649672)))

(declare-fun b!7870648 () Bool)

(declare-fun tp!2335295 () Bool)

(declare-fun tp!2335292 () Bool)

(assert (=> b!7870648 (= e!4649672 (and tp!2335295 tp!2335292))))

(declare-fun b!7870645 () Bool)

(assert (=> b!7870645 (= e!4649672 tp_is_empty!52715)))

(declare-fun b!7870646 () Bool)

(declare-fun tp!2335293 () Bool)

(declare-fun tp!2335294 () Bool)

(assert (=> b!7870646 (= e!4649672 (and tp!2335293 tp!2335294))))

(assert (= (and b!7870432 (is-ElementMatch!21158 (regTwo!42828 r1!6200))) b!7870645))

(assert (= (and b!7870432 (is-Concat!30003 (regTwo!42828 r1!6200))) b!7870646))

(assert (= (and b!7870432 (is-Star!21158 (regTwo!42828 r1!6200))) b!7870647))

(assert (= (and b!7870432 (is-Union!21158 (regTwo!42828 r1!6200))) b!7870648))

(push 1)

(assert (not bm!729869))

(assert (not bm!729860))

(assert (not b!7870513))

(assert (not b!7870621))

(assert (not b!7870634))

(assert (not bm!729863))

(assert (not b!7870633))

(assert (not b!7870572))

(assert (not b!7870610))

(assert (not b!7870582))

(assert (not b!7870611))

(assert (not b!7870592))

(assert (not b!7870644))

(assert (not b!7870609))

(assert (not b!7870571))

(assert (not b!7870630))

(assert (not b!7870635))

(assert (not b!7870625))

(assert (not b!7870583))

(assert (not b!7870631))

(assert (not b!7870647))

(assert (not b!7870643))

(assert (not bm!729867))

(assert (not b!7870614))

(assert (not b!7870574))

(assert (not d!2355204))

(assert (not b!7870615))

(assert (not bm!729861))

(assert (not b!7870504))

(assert tp_is_empty!52715)

(assert (not b!7870629))

(assert (not b!7870623))

(assert (not b!7870606))

(assert (not b!7870607))

(assert (not b!7870640))

(assert (not b!7870642))

(assert (not b!7870627))

(assert (not b!7870648))

(assert (not bm!729866))

(assert (not bm!729858))

(assert (not b!7870626))

(assert (not b!7870605))

(assert (not b!7870619))

(assert (not b!7870622))

(assert (not b!7870618))

(assert (not b!7870617))

(assert (not b!7870613))

(assert (not b!7870646))

(assert (not b!7870576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

