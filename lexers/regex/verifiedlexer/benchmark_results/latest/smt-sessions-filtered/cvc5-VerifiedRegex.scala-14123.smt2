; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742736 () Bool)

(assert start!742736)

(declare-fun b!7842316 () Bool)

(declare-fun e!4636763 () Bool)

(declare-fun tp_is_empty!52435 () Bool)

(declare-fun tp!2321120 () Bool)

(assert (=> b!7842316 (= e!4636763 (and tp_is_empty!52435 tp!2321120))))

(declare-fun b!7842317 () Bool)

(declare-fun e!4636762 () Bool)

(declare-fun e!4636760 () Bool)

(assert (=> b!7842317 (= e!4636762 e!4636760)))

(declare-fun res!3119180 () Bool)

(assert (=> b!7842317 (=> (not res!3119180) (not e!4636760))))

(declare-datatypes ((B!4003 0))(
  ( (B!4004 (val!31643 Int)) )
))
(declare-datatypes ((List!73877 0))(
  ( (Nil!73753) (Cons!73753 (h!80201 B!4003) (t!388612 List!73877)) )
))
(declare-fun lt!2678699 () List!73877)

(declare-fun lt!2678700 () List!73877)

(declare-fun isPrefix!6354 (List!73877 List!73877) Bool)

(assert (=> b!7842317 (= res!3119180 (isPrefix!6354 lt!2678699 lt!2678700))))

(declare-fun l!3495 () List!73877)

(declare-fun tail!15558 (List!73877) List!73877)

(assert (=> b!7842317 (= lt!2678700 (tail!15558 l!3495))))

(declare-fun s1!502 () List!73877)

(assert (=> b!7842317 (= lt!2678699 (tail!15558 s1!502))))

(declare-fun b!7842318 () Bool)

(declare-fun res!3119183 () Bool)

(assert (=> b!7842318 (=> (not res!3119183) (not e!4636762))))

(declare-fun s2!461 () List!73877)

(declare-fun size!42802 (List!73877) Int)

(assert (=> b!7842318 (= res!3119183 (<= (size!42802 s2!461) (size!42802 s1!502)))))

(declare-fun res!3119184 () Bool)

(assert (=> start!742736 (=> (not res!3119184) (not e!4636762))))

(assert (=> start!742736 (= res!3119184 (isPrefix!6354 s1!502 l!3495))))

(assert (=> start!742736 e!4636762))

(declare-fun e!4636761 () Bool)

(assert (=> start!742736 e!4636761))

(declare-fun e!4636764 () Bool)

(assert (=> start!742736 e!4636764))

(assert (=> start!742736 e!4636763))

(declare-fun b!7842319 () Bool)

(assert (=> b!7842319 (= e!4636760 (> (size!42802 (t!388612 s2!461)) (size!42802 lt!2678699)))))

(declare-fun b!7842320 () Bool)

(declare-fun res!3119179 () Bool)

(assert (=> b!7842320 (=> (not res!3119179) (not e!4636760))))

(assert (=> b!7842320 (= res!3119179 (isPrefix!6354 (t!388612 s2!461) lt!2678700))))

(declare-fun b!7842321 () Bool)

(declare-fun res!3119182 () Bool)

(assert (=> b!7842321 (=> (not res!3119182) (not e!4636762))))

(assert (=> b!7842321 (= res!3119182 (isPrefix!6354 s2!461 l!3495))))

(declare-fun b!7842322 () Bool)

(declare-fun tp!2321122 () Bool)

(assert (=> b!7842322 (= e!4636761 (and tp_is_empty!52435 tp!2321122))))

(declare-fun b!7842323 () Bool)

(declare-fun res!3119181 () Bool)

(assert (=> b!7842323 (=> (not res!3119181) (not e!4636762))))

(assert (=> b!7842323 (= res!3119181 (is-Cons!73753 s2!461))))

(declare-fun b!7842324 () Bool)

(declare-fun tp!2321121 () Bool)

(assert (=> b!7842324 (= e!4636764 (and tp_is_empty!52435 tp!2321121))))

(assert (= (and start!742736 res!3119184) b!7842321))

(assert (= (and b!7842321 res!3119182) b!7842318))

(assert (= (and b!7842318 res!3119183) b!7842323))

(assert (= (and b!7842323 res!3119181) b!7842317))

(assert (= (and b!7842317 res!3119180) b!7842320))

(assert (= (and b!7842320 res!3119179) b!7842319))

(assert (= (and start!742736 (is-Cons!73753 s1!502)) b!7842322))

(assert (= (and start!742736 (is-Cons!73753 l!3495)) b!7842324))

(assert (= (and start!742736 (is-Cons!73753 s2!461)) b!7842316))

(declare-fun m!8254514 () Bool)

(assert (=> b!7842320 m!8254514))

(declare-fun m!8254516 () Bool)

(assert (=> b!7842319 m!8254516))

(declare-fun m!8254518 () Bool)

(assert (=> b!7842319 m!8254518))

(declare-fun m!8254520 () Bool)

(assert (=> start!742736 m!8254520))

(declare-fun m!8254522 () Bool)

(assert (=> b!7842318 m!8254522))

(declare-fun m!8254524 () Bool)

(assert (=> b!7842318 m!8254524))

(declare-fun m!8254526 () Bool)

(assert (=> b!7842321 m!8254526))

(declare-fun m!8254528 () Bool)

(assert (=> b!7842317 m!8254528))

(declare-fun m!8254530 () Bool)

(assert (=> b!7842317 m!8254530))

(declare-fun m!8254532 () Bool)

(assert (=> b!7842317 m!8254532))

(push 1)

(assert (not b!7842324))

(assert (not b!7842318))

(assert tp_is_empty!52435)

(assert (not b!7842316))

(assert (not start!742736))

(assert (not b!7842317))

(assert (not b!7842322))

(assert (not b!7842319))

(assert (not b!7842320))

(assert (not b!7842321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7842361 () Bool)

(declare-fun res!3119211 () Bool)

(declare-fun e!4636786 () Bool)

(assert (=> b!7842361 (=> (not res!3119211) (not e!4636786))))

(declare-fun head!16015 (List!73877) B!4003)

(assert (=> b!7842361 (= res!3119211 (= (head!16015 lt!2678699) (head!16015 lt!2678700)))))

(declare-fun d!2352420 () Bool)

(declare-fun e!4636788 () Bool)

(assert (=> d!2352420 e!4636788))

(declare-fun res!3119213 () Bool)

(assert (=> d!2352420 (=> res!3119213 e!4636788)))

(declare-fun lt!2678709 () Bool)

(assert (=> d!2352420 (= res!3119213 (not lt!2678709))))

(declare-fun e!4636787 () Bool)

(assert (=> d!2352420 (= lt!2678709 e!4636787)))

(declare-fun res!3119212 () Bool)

(assert (=> d!2352420 (=> res!3119212 e!4636787)))

(assert (=> d!2352420 (= res!3119212 (is-Nil!73753 lt!2678699))))

(assert (=> d!2352420 (= (isPrefix!6354 lt!2678699 lt!2678700) lt!2678709)))

(declare-fun b!7842360 () Bool)

(assert (=> b!7842360 (= e!4636787 e!4636786)))

(declare-fun res!3119214 () Bool)

(assert (=> b!7842360 (=> (not res!3119214) (not e!4636786))))

(assert (=> b!7842360 (= res!3119214 (not (is-Nil!73753 lt!2678700)))))

(declare-fun b!7842363 () Bool)

(assert (=> b!7842363 (= e!4636788 (>= (size!42802 lt!2678700) (size!42802 lt!2678699)))))

(declare-fun b!7842362 () Bool)

(assert (=> b!7842362 (= e!4636786 (isPrefix!6354 (tail!15558 lt!2678699) (tail!15558 lt!2678700)))))

(assert (= (and d!2352420 (not res!3119212)) b!7842360))

(assert (= (and b!7842360 res!3119214) b!7842361))

(assert (= (and b!7842361 res!3119211) b!7842362))

(assert (= (and d!2352420 (not res!3119213)) b!7842363))

(declare-fun m!8254554 () Bool)

(assert (=> b!7842361 m!8254554))

(declare-fun m!8254556 () Bool)

(assert (=> b!7842361 m!8254556))

(declare-fun m!8254558 () Bool)

(assert (=> b!7842363 m!8254558))

(assert (=> b!7842363 m!8254518))

(declare-fun m!8254560 () Bool)

(assert (=> b!7842362 m!8254560))

(declare-fun m!8254562 () Bool)

(assert (=> b!7842362 m!8254562))

(assert (=> b!7842362 m!8254560))

(assert (=> b!7842362 m!8254562))

(declare-fun m!8254564 () Bool)

(assert (=> b!7842362 m!8254564))

(assert (=> b!7842317 d!2352420))

(declare-fun d!2352424 () Bool)

(assert (=> d!2352424 (= (tail!15558 l!3495) (t!388612 l!3495))))

(assert (=> b!7842317 d!2352424))

(declare-fun d!2352426 () Bool)

(assert (=> d!2352426 (= (tail!15558 s1!502) (t!388612 s1!502))))

(assert (=> b!7842317 d!2352426))

(declare-fun b!7842365 () Bool)

(declare-fun res!3119215 () Bool)

(declare-fun e!4636789 () Bool)

(assert (=> b!7842365 (=> (not res!3119215) (not e!4636789))))

(assert (=> b!7842365 (= res!3119215 (= (head!16015 s2!461) (head!16015 l!3495)))))

(declare-fun d!2352428 () Bool)

(declare-fun e!4636791 () Bool)

(assert (=> d!2352428 e!4636791))

(declare-fun res!3119217 () Bool)

(assert (=> d!2352428 (=> res!3119217 e!4636791)))

(declare-fun lt!2678710 () Bool)

(assert (=> d!2352428 (= res!3119217 (not lt!2678710))))

(declare-fun e!4636790 () Bool)

(assert (=> d!2352428 (= lt!2678710 e!4636790)))

(declare-fun res!3119216 () Bool)

(assert (=> d!2352428 (=> res!3119216 e!4636790)))

(assert (=> d!2352428 (= res!3119216 (is-Nil!73753 s2!461))))

(assert (=> d!2352428 (= (isPrefix!6354 s2!461 l!3495) lt!2678710)))

(declare-fun b!7842364 () Bool)

(assert (=> b!7842364 (= e!4636790 e!4636789)))

(declare-fun res!3119218 () Bool)

(assert (=> b!7842364 (=> (not res!3119218) (not e!4636789))))

(assert (=> b!7842364 (= res!3119218 (not (is-Nil!73753 l!3495)))))

(declare-fun b!7842367 () Bool)

(assert (=> b!7842367 (= e!4636791 (>= (size!42802 l!3495) (size!42802 s2!461)))))

(declare-fun b!7842366 () Bool)

(assert (=> b!7842366 (= e!4636789 (isPrefix!6354 (tail!15558 s2!461) (tail!15558 l!3495)))))

(assert (= (and d!2352428 (not res!3119216)) b!7842364))

(assert (= (and b!7842364 res!3119218) b!7842365))

(assert (= (and b!7842365 res!3119215) b!7842366))

(assert (= (and d!2352428 (not res!3119217)) b!7842367))

(declare-fun m!8254566 () Bool)

(assert (=> b!7842365 m!8254566))

(declare-fun m!8254568 () Bool)

(assert (=> b!7842365 m!8254568))

(declare-fun m!8254570 () Bool)

(assert (=> b!7842367 m!8254570))

(assert (=> b!7842367 m!8254522))

(declare-fun m!8254572 () Bool)

(assert (=> b!7842366 m!8254572))

(assert (=> b!7842366 m!8254530))

(assert (=> b!7842366 m!8254572))

(assert (=> b!7842366 m!8254530))

(declare-fun m!8254574 () Bool)

(assert (=> b!7842366 m!8254574))

(assert (=> b!7842321 d!2352428))

(declare-fun b!7842369 () Bool)

(declare-fun res!3119219 () Bool)

(declare-fun e!4636792 () Bool)

(assert (=> b!7842369 (=> (not res!3119219) (not e!4636792))))

(assert (=> b!7842369 (= res!3119219 (= (head!16015 s1!502) (head!16015 l!3495)))))

(declare-fun d!2352430 () Bool)

(declare-fun e!4636794 () Bool)

(assert (=> d!2352430 e!4636794))

(declare-fun res!3119221 () Bool)

(assert (=> d!2352430 (=> res!3119221 e!4636794)))

(declare-fun lt!2678711 () Bool)

(assert (=> d!2352430 (= res!3119221 (not lt!2678711))))

(declare-fun e!4636793 () Bool)

(assert (=> d!2352430 (= lt!2678711 e!4636793)))

(declare-fun res!3119220 () Bool)

(assert (=> d!2352430 (=> res!3119220 e!4636793)))

(assert (=> d!2352430 (= res!3119220 (is-Nil!73753 s1!502))))

(assert (=> d!2352430 (= (isPrefix!6354 s1!502 l!3495) lt!2678711)))

(declare-fun b!7842368 () Bool)

(assert (=> b!7842368 (= e!4636793 e!4636792)))

(declare-fun res!3119222 () Bool)

(assert (=> b!7842368 (=> (not res!3119222) (not e!4636792))))

(assert (=> b!7842368 (= res!3119222 (not (is-Nil!73753 l!3495)))))

(declare-fun b!7842371 () Bool)

(assert (=> b!7842371 (= e!4636794 (>= (size!42802 l!3495) (size!42802 s1!502)))))

(declare-fun b!7842370 () Bool)

(assert (=> b!7842370 (= e!4636792 (isPrefix!6354 (tail!15558 s1!502) (tail!15558 l!3495)))))

(assert (= (and d!2352430 (not res!3119220)) b!7842368))

(assert (= (and b!7842368 res!3119222) b!7842369))

(assert (= (and b!7842369 res!3119219) b!7842370))

(assert (= (and d!2352430 (not res!3119221)) b!7842371))

(declare-fun m!8254576 () Bool)

(assert (=> b!7842369 m!8254576))

(assert (=> b!7842369 m!8254568))

(assert (=> b!7842371 m!8254570))

(assert (=> b!7842371 m!8254524))

(assert (=> b!7842370 m!8254532))

(assert (=> b!7842370 m!8254530))

(assert (=> b!7842370 m!8254532))

(assert (=> b!7842370 m!8254530))

(declare-fun m!8254578 () Bool)

(assert (=> b!7842370 m!8254578))

(assert (=> start!742736 d!2352430))

(declare-fun b!7842373 () Bool)

(declare-fun res!3119223 () Bool)

(declare-fun e!4636795 () Bool)

(assert (=> b!7842373 (=> (not res!3119223) (not e!4636795))))

(assert (=> b!7842373 (= res!3119223 (= (head!16015 (t!388612 s2!461)) (head!16015 lt!2678700)))))

(declare-fun d!2352432 () Bool)

(declare-fun e!4636797 () Bool)

(assert (=> d!2352432 e!4636797))

(declare-fun res!3119225 () Bool)

(assert (=> d!2352432 (=> res!3119225 e!4636797)))

(declare-fun lt!2678712 () Bool)

(assert (=> d!2352432 (= res!3119225 (not lt!2678712))))

(declare-fun e!4636796 () Bool)

(assert (=> d!2352432 (= lt!2678712 e!4636796)))

(declare-fun res!3119224 () Bool)

(assert (=> d!2352432 (=> res!3119224 e!4636796)))

(assert (=> d!2352432 (= res!3119224 (is-Nil!73753 (t!388612 s2!461)))))

(assert (=> d!2352432 (= (isPrefix!6354 (t!388612 s2!461) lt!2678700) lt!2678712)))

(declare-fun b!7842372 () Bool)

(assert (=> b!7842372 (= e!4636796 e!4636795)))

(declare-fun res!3119226 () Bool)

(assert (=> b!7842372 (=> (not res!3119226) (not e!4636795))))

(assert (=> b!7842372 (= res!3119226 (not (is-Nil!73753 lt!2678700)))))

(declare-fun b!7842375 () Bool)

(assert (=> b!7842375 (= e!4636797 (>= (size!42802 lt!2678700) (size!42802 (t!388612 s2!461))))))

(declare-fun b!7842374 () Bool)

(assert (=> b!7842374 (= e!4636795 (isPrefix!6354 (tail!15558 (t!388612 s2!461)) (tail!15558 lt!2678700)))))

(assert (= (and d!2352432 (not res!3119224)) b!7842372))

(assert (= (and b!7842372 res!3119226) b!7842373))

(assert (= (and b!7842373 res!3119223) b!7842374))

(assert (= (and d!2352432 (not res!3119225)) b!7842375))

(declare-fun m!8254580 () Bool)

(assert (=> b!7842373 m!8254580))

(assert (=> b!7842373 m!8254556))

(assert (=> b!7842375 m!8254558))

(assert (=> b!7842375 m!8254516))

(declare-fun m!8254582 () Bool)

(assert (=> b!7842374 m!8254582))

(assert (=> b!7842374 m!8254562))

(assert (=> b!7842374 m!8254582))

(assert (=> b!7842374 m!8254562))

(declare-fun m!8254584 () Bool)

(assert (=> b!7842374 m!8254584))

(assert (=> b!7842320 d!2352432))

(declare-fun d!2352434 () Bool)

(declare-fun lt!2678715 () Int)

(assert (=> d!2352434 (>= lt!2678715 0)))

(declare-fun e!4636800 () Int)

(assert (=> d!2352434 (= lt!2678715 e!4636800)))

(declare-fun c!1441705 () Bool)

(assert (=> d!2352434 (= c!1441705 (is-Nil!73753 s2!461))))

(assert (=> d!2352434 (= (size!42802 s2!461) lt!2678715)))

(declare-fun b!7842380 () Bool)

(assert (=> b!7842380 (= e!4636800 0)))

(declare-fun b!7842381 () Bool)

(assert (=> b!7842381 (= e!4636800 (+ 1 (size!42802 (t!388612 s2!461))))))

(assert (= (and d!2352434 c!1441705) b!7842380))

(assert (= (and d!2352434 (not c!1441705)) b!7842381))

(assert (=> b!7842381 m!8254516))

(assert (=> b!7842318 d!2352434))

(declare-fun d!2352436 () Bool)

(declare-fun lt!2678716 () Int)

(assert (=> d!2352436 (>= lt!2678716 0)))

(declare-fun e!4636801 () Int)

(assert (=> d!2352436 (= lt!2678716 e!4636801)))

(declare-fun c!1441706 () Bool)

(assert (=> d!2352436 (= c!1441706 (is-Nil!73753 s1!502))))

(assert (=> d!2352436 (= (size!42802 s1!502) lt!2678716)))

(declare-fun b!7842382 () Bool)

(assert (=> b!7842382 (= e!4636801 0)))

(declare-fun b!7842383 () Bool)

(assert (=> b!7842383 (= e!4636801 (+ 1 (size!42802 (t!388612 s1!502))))))

(assert (= (and d!2352436 c!1441706) b!7842382))

(assert (= (and d!2352436 (not c!1441706)) b!7842383))

(declare-fun m!8254586 () Bool)

(assert (=> b!7842383 m!8254586))

(assert (=> b!7842318 d!2352436))

(declare-fun d!2352438 () Bool)

(declare-fun lt!2678717 () Int)

(assert (=> d!2352438 (>= lt!2678717 0)))

(declare-fun e!4636802 () Int)

(assert (=> d!2352438 (= lt!2678717 e!4636802)))

(declare-fun c!1441707 () Bool)

(assert (=> d!2352438 (= c!1441707 (is-Nil!73753 (t!388612 s2!461)))))

(assert (=> d!2352438 (= (size!42802 (t!388612 s2!461)) lt!2678717)))

(declare-fun b!7842384 () Bool)

(assert (=> b!7842384 (= e!4636802 0)))

(declare-fun b!7842385 () Bool)

(assert (=> b!7842385 (= e!4636802 (+ 1 (size!42802 (t!388612 (t!388612 s2!461)))))))

(assert (= (and d!2352438 c!1441707) b!7842384))

(assert (= (and d!2352438 (not c!1441707)) b!7842385))

(declare-fun m!8254588 () Bool)

(assert (=> b!7842385 m!8254588))

(assert (=> b!7842319 d!2352438))

(declare-fun d!2352440 () Bool)

(declare-fun lt!2678718 () Int)

(assert (=> d!2352440 (>= lt!2678718 0)))

(declare-fun e!4636803 () Int)

(assert (=> d!2352440 (= lt!2678718 e!4636803)))

(declare-fun c!1441708 () Bool)

(assert (=> d!2352440 (= c!1441708 (is-Nil!73753 lt!2678699))))

(assert (=> d!2352440 (= (size!42802 lt!2678699) lt!2678718)))

(declare-fun b!7842386 () Bool)

(assert (=> b!7842386 (= e!4636803 0)))

(declare-fun b!7842387 () Bool)

(assert (=> b!7842387 (= e!4636803 (+ 1 (size!42802 (t!388612 lt!2678699))))))

(assert (= (and d!2352440 c!1441708) b!7842386))

(assert (= (and d!2352440 (not c!1441708)) b!7842387))

(declare-fun m!8254590 () Bool)

(assert (=> b!7842387 m!8254590))

(assert (=> b!7842319 d!2352440))

(declare-fun b!7842392 () Bool)

(declare-fun e!4636806 () Bool)

(declare-fun tp!2321134 () Bool)

(assert (=> b!7842392 (= e!4636806 (and tp_is_empty!52435 tp!2321134))))

(assert (=> b!7842322 (= tp!2321122 e!4636806)))

(assert (= (and b!7842322 (is-Cons!73753 (t!388612 s1!502))) b!7842392))

(declare-fun b!7842393 () Bool)

(declare-fun e!4636807 () Bool)

(declare-fun tp!2321135 () Bool)

(assert (=> b!7842393 (= e!4636807 (and tp_is_empty!52435 tp!2321135))))

(assert (=> b!7842316 (= tp!2321120 e!4636807)))

(assert (= (and b!7842316 (is-Cons!73753 (t!388612 s2!461))) b!7842393))

(declare-fun b!7842394 () Bool)

(declare-fun e!4636808 () Bool)

(declare-fun tp!2321136 () Bool)

(assert (=> b!7842394 (= e!4636808 (and tp_is_empty!52435 tp!2321136))))

(assert (=> b!7842324 (= tp!2321121 e!4636808)))

(assert (= (and b!7842324 (is-Cons!73753 (t!388612 l!3495))) b!7842394))

(push 1)

(assert (not b!7842374))

(assert tp_is_empty!52435)

(assert (not b!7842369))

(assert (not b!7842371))

(assert (not b!7842365))

(assert (not b!7842381))

(assert (not b!7842373))

(assert (not b!7842393))

(assert (not b!7842363))

(assert (not b!7842362))

(assert (not b!7842385))

(assert (not b!7842375))

(assert (not b!7842361))

(assert (not b!7842392))

(assert (not b!7842383))

(assert (not b!7842367))

(assert (not b!7842394))

(assert (not b!7842366))

(assert (not b!7842370))

(assert (not b!7842387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

