; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731854 () Bool)

(assert start!731854)

(declare-fun b!7579616 () Bool)

(declare-fun res!3036544 () Bool)

(declare-fun e!4511495 () Bool)

(assert (=> b!7579616 (=> (not res!3036544) (not e!4511495))))

(declare-datatypes ((C!40478 0))(
  ( (C!40479 (val!30679 Int)) )
))
(declare-datatypes ((List!72959 0))(
  ( (Nil!72835) (Cons!72835 (h!79283 C!40478) (t!387694 List!72959)) )
))
(declare-fun s!13436 () List!72959)

(declare-fun isEmpty!41506 (List!72959) Bool)

(assert (=> b!7579616 (= res!3036544 (not (isEmpty!41506 s!13436)))))

(declare-fun b!7579617 () Bool)

(declare-fun e!4511497 () Bool)

(declare-datatypes ((Regex!20076 0))(
  ( (ElementMatch!20076 (c!1398083 C!40478)) (Concat!28921 (regOne!40664 Regex!20076) (regTwo!40664 Regex!20076)) (EmptyExpr!20076) (Star!20076 (reg!20405 Regex!20076)) (EmptyLang!20076) (Union!20076 (regOne!40665 Regex!20076) (regTwo!40665 Regex!20076)) )
))
(declare-fun r!22341 () Regex!20076)

(declare-fun validRegex!10504 (Regex!20076) Bool)

(assert (=> b!7579617 (= e!4511497 (validRegex!10504 (regOne!40665 r!22341)))))

(declare-fun b!7579618 () Bool)

(declare-fun e!4511494 () Bool)

(declare-fun tp_is_empty!50507 () Bool)

(declare-fun tp!2208799 () Bool)

(assert (=> b!7579618 (= e!4511494 (and tp_is_empty!50507 tp!2208799))))

(declare-fun b!7579619 () Bool)

(declare-fun e!4511496 () Bool)

(assert (=> b!7579619 (= e!4511496 tp_is_empty!50507)))

(declare-fun b!7579620 () Bool)

(declare-fun tp!2208798 () Bool)

(declare-fun tp!2208797 () Bool)

(assert (=> b!7579620 (= e!4511496 (and tp!2208798 tp!2208797))))

(declare-fun res!3036541 () Bool)

(assert (=> start!731854 (=> (not res!3036541) (not e!4511495))))

(assert (=> start!731854 (= res!3036541 (validRegex!10504 r!22341))))

(assert (=> start!731854 e!4511495))

(assert (=> start!731854 e!4511496))

(assert (=> start!731854 e!4511494))

(declare-fun b!7579621 () Bool)

(assert (=> b!7579621 (= e!4511495 (not e!4511497))))

(declare-fun res!3036543 () Bool)

(assert (=> b!7579621 (=> res!3036543 e!4511497)))

(assert (=> b!7579621 (= res!3036543 (or (is-EmptyLang!20076 r!22341) (is-EmptyExpr!20076 r!22341) (is-ElementMatch!20076 r!22341) (not (is-Union!20076 r!22341))))))

(declare-fun matchR!9668 (Regex!20076 List!72959) Bool)

(declare-fun matchRSpec!4389 (Regex!20076 List!72959) Bool)

(assert (=> b!7579621 (= (matchR!9668 r!22341 s!13436) (matchRSpec!4389 r!22341 s!13436))))

(declare-datatypes ((Unit!167108 0))(
  ( (Unit!167109) )
))
(declare-fun lt!2652523 () Unit!167108)

(declare-fun mainMatchTheorem!4383 (Regex!20076 List!72959) Unit!167108)

(assert (=> b!7579621 (= lt!2652523 (mainMatchTheorem!4383 r!22341 s!13436))))

(declare-fun b!7579622 () Bool)

(declare-fun tp!2208795 () Bool)

(declare-fun tp!2208794 () Bool)

(assert (=> b!7579622 (= e!4511496 (and tp!2208795 tp!2208794))))

(declare-fun b!7579623 () Bool)

(declare-fun res!3036542 () Bool)

(assert (=> b!7579623 (=> (not res!3036542) (not e!4511495))))

(declare-fun lostCause!1852 (Regex!20076) Bool)

(assert (=> b!7579623 (= res!3036542 (lostCause!1852 r!22341))))

(declare-fun b!7579624 () Bool)

(declare-fun tp!2208796 () Bool)

(assert (=> b!7579624 (= e!4511496 tp!2208796)))

(assert (= (and start!731854 res!3036541) b!7579623))

(assert (= (and b!7579623 res!3036542) b!7579616))

(assert (= (and b!7579616 res!3036544) b!7579621))

(assert (= (and b!7579621 (not res!3036543)) b!7579617))

(assert (= (and start!731854 (is-ElementMatch!20076 r!22341)) b!7579619))

(assert (= (and start!731854 (is-Concat!28921 r!22341)) b!7579622))

(assert (= (and start!731854 (is-Star!20076 r!22341)) b!7579624))

(assert (= (and start!731854 (is-Union!20076 r!22341)) b!7579620))

(assert (= (and start!731854 (is-Cons!72835 s!13436)) b!7579618))

(declare-fun m!8135394 () Bool)

(assert (=> b!7579621 m!8135394))

(declare-fun m!8135396 () Bool)

(assert (=> b!7579621 m!8135396))

(declare-fun m!8135398 () Bool)

(assert (=> b!7579621 m!8135398))

(declare-fun m!8135400 () Bool)

(assert (=> b!7579616 m!8135400))

(declare-fun m!8135402 () Bool)

(assert (=> b!7579617 m!8135402))

(declare-fun m!8135404 () Bool)

(assert (=> start!731854 m!8135404))

(declare-fun m!8135406 () Bool)

(assert (=> b!7579623 m!8135406))

(push 1)

(assert (not b!7579624))

(assert (not b!7579616))

(assert (not b!7579621))

(assert (not b!7579622))

(assert (not b!7579617))

(assert (not b!7579620))

(assert (not start!731854))

(assert (not b!7579618))

(assert (not b!7579623))

(assert tp_is_empty!50507)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7579698 () Bool)

(declare-fun res!3036587 () Bool)

(declare-fun e!4511538 () Bool)

(assert (=> b!7579698 (=> (not res!3036587) (not e!4511538))))

(declare-fun call!694849 () Bool)

(assert (=> b!7579698 (= res!3036587 (not call!694849))))

(declare-fun b!7579699 () Bool)

(declare-fun res!3036585 () Bool)

(assert (=> b!7579699 (=> (not res!3036585) (not e!4511538))))

(declare-fun tail!15136 (List!72959) List!72959)

(assert (=> b!7579699 (= res!3036585 (isEmpty!41506 (tail!15136 s!13436)))))

(declare-fun b!7579700 () Bool)

(declare-fun e!4511539 () Bool)

(declare-fun derivativeStep!5796 (Regex!20076 C!40478) Regex!20076)

(declare-fun head!15596 (List!72959) C!40478)

(assert (=> b!7579700 (= e!4511539 (matchR!9668 (derivativeStep!5796 r!22341 (head!15596 s!13436)) (tail!15136 s!13436)))))

(declare-fun d!2318288 () Bool)

(declare-fun e!4511540 () Bool)

(assert (=> d!2318288 e!4511540))

(declare-fun c!1398095 () Bool)

(assert (=> d!2318288 (= c!1398095 (is-EmptyExpr!20076 r!22341))))

(declare-fun lt!2652529 () Bool)

(assert (=> d!2318288 (= lt!2652529 e!4511539)))

(declare-fun c!1398096 () Bool)

(assert (=> d!2318288 (= c!1398096 (isEmpty!41506 s!13436))))

(assert (=> d!2318288 (validRegex!10504 r!22341)))

(assert (=> d!2318288 (= (matchR!9668 r!22341 s!13436) lt!2652529)))

(declare-fun b!7579701 () Bool)

(declare-fun e!4511541 () Bool)

(declare-fun e!4511543 () Bool)

(assert (=> b!7579701 (= e!4511541 e!4511543)))

(declare-fun res!3036591 () Bool)

(assert (=> b!7579701 (=> (not res!3036591) (not e!4511543))))

(assert (=> b!7579701 (= res!3036591 (not lt!2652529))))

(declare-fun bm!694844 () Bool)

(assert (=> bm!694844 (= call!694849 (isEmpty!41506 s!13436))))

(declare-fun b!7579702 () Bool)

(declare-fun res!3036590 () Bool)

(declare-fun e!4511545 () Bool)

(assert (=> b!7579702 (=> res!3036590 e!4511545)))

(assert (=> b!7579702 (= res!3036590 (not (isEmpty!41506 (tail!15136 s!13436))))))

(declare-fun b!7579703 () Bool)

(assert (=> b!7579703 (= e!4511545 (not (= (head!15596 s!13436) (c!1398083 r!22341))))))

(declare-fun b!7579704 () Bool)

(assert (=> b!7579704 (= e!4511538 (= (head!15596 s!13436) (c!1398083 r!22341)))))

(declare-fun b!7579705 () Bool)

(assert (=> b!7579705 (= e!4511543 e!4511545)))

(declare-fun res!3036586 () Bool)

(assert (=> b!7579705 (=> res!3036586 e!4511545)))

(assert (=> b!7579705 (= res!3036586 call!694849)))

(declare-fun b!7579706 () Bool)

(declare-fun nullable!8769 (Regex!20076) Bool)

(assert (=> b!7579706 (= e!4511539 (nullable!8769 r!22341))))

(declare-fun b!7579707 () Bool)

(declare-fun e!4511542 () Bool)

(assert (=> b!7579707 (= e!4511540 e!4511542)))

(declare-fun c!1398097 () Bool)

(assert (=> b!7579707 (= c!1398097 (is-EmptyLang!20076 r!22341))))

(declare-fun b!7579708 () Bool)

(assert (=> b!7579708 (= e!4511542 (not lt!2652529))))

(declare-fun b!7579709 () Bool)

(assert (=> b!7579709 (= e!4511540 (= lt!2652529 call!694849))))

(declare-fun b!7579710 () Bool)

(declare-fun res!3036584 () Bool)

(assert (=> b!7579710 (=> res!3036584 e!4511541)))

(assert (=> b!7579710 (= res!3036584 e!4511538)))

(declare-fun res!3036588 () Bool)

(assert (=> b!7579710 (=> (not res!3036588) (not e!4511538))))

(assert (=> b!7579710 (= res!3036588 lt!2652529)))

(declare-fun b!7579711 () Bool)

(declare-fun res!3036583 () Bool)

(assert (=> b!7579711 (=> res!3036583 e!4511541)))

(assert (=> b!7579711 (= res!3036583 (not (is-ElementMatch!20076 r!22341)))))

(assert (=> b!7579711 (= e!4511542 e!4511541)))

(assert (= (and d!2318288 c!1398096) b!7579706))

(assert (= (and d!2318288 (not c!1398096)) b!7579700))

(assert (= (and d!2318288 c!1398095) b!7579709))

(assert (= (and d!2318288 (not c!1398095)) b!7579707))

(assert (= (and b!7579707 c!1398097) b!7579708))

(assert (= (and b!7579707 (not c!1398097)) b!7579711))

(assert (= (and b!7579711 (not res!3036583)) b!7579710))

(assert (= (and b!7579710 res!3036588) b!7579698))

(assert (= (and b!7579698 res!3036587) b!7579699))

(assert (= (and b!7579699 res!3036585) b!7579704))

(assert (= (and b!7579710 (not res!3036584)) b!7579701))

(assert (= (and b!7579701 res!3036591) b!7579705))

(assert (= (and b!7579705 (not res!3036586)) b!7579702))

(assert (= (and b!7579702 (not res!3036590)) b!7579703))

(assert (= (or b!7579709 b!7579698 b!7579705) bm!694844))

(declare-fun m!8135422 () Bool)

(assert (=> b!7579699 m!8135422))

(assert (=> b!7579699 m!8135422))

(declare-fun m!8135424 () Bool)

(assert (=> b!7579699 m!8135424))

(declare-fun m!8135426 () Bool)

(assert (=> b!7579700 m!8135426))

(assert (=> b!7579700 m!8135426))

(declare-fun m!8135428 () Bool)

(assert (=> b!7579700 m!8135428))

(assert (=> b!7579700 m!8135422))

(assert (=> b!7579700 m!8135428))

(assert (=> b!7579700 m!8135422))

(declare-fun m!8135430 () Bool)

(assert (=> b!7579700 m!8135430))

(assert (=> b!7579704 m!8135426))

(assert (=> d!2318288 m!8135400))

(assert (=> d!2318288 m!8135404))

(assert (=> b!7579703 m!8135426))

(assert (=> b!7579702 m!8135422))

(assert (=> b!7579702 m!8135422))

(assert (=> b!7579702 m!8135424))

(assert (=> bm!694844 m!8135400))

(declare-fun m!8135432 () Bool)

(assert (=> b!7579706 m!8135432))

(assert (=> b!7579621 d!2318288))

(declare-fun b!7579836 () Bool)

(assert (=> b!7579836 true))

(assert (=> b!7579836 true))

(declare-fun bs!1940990 () Bool)

(declare-fun b!7579827 () Bool)

(assert (= bs!1940990 (and b!7579827 b!7579836)))

(declare-fun lambda!466915 () Int)

(declare-fun lambda!466914 () Int)

(assert (=> bs!1940990 (not (= lambda!466915 lambda!466914))))

(assert (=> b!7579827 true))

(assert (=> b!7579827 true))

(declare-fun b!7579826 () Bool)

(declare-fun res!3036648 () Bool)

(declare-fun e!4511616 () Bool)

(assert (=> b!7579826 (=> res!3036648 e!4511616)))

(declare-fun call!694864 () Bool)

(assert (=> b!7579826 (= res!3036648 call!694864)))

(declare-fun e!4511612 () Bool)

(assert (=> b!7579826 (= e!4511612 e!4511616)))

(declare-fun d!2318290 () Bool)

(declare-fun c!1398128 () Bool)

(assert (=> d!2318290 (= c!1398128 (is-EmptyExpr!20076 r!22341))))

(declare-fun e!4511615 () Bool)

(assert (=> d!2318290 (= (matchRSpec!4389 r!22341 s!13436) e!4511615)))

(declare-fun c!1398129 () Bool)

(declare-fun call!694863 () Bool)

(declare-fun bm!694858 () Bool)

(declare-fun Exists!4311 (Int) Bool)

(assert (=> bm!694858 (= call!694863 (Exists!4311 (ite c!1398129 lambda!466914 lambda!466915)))))

(assert (=> b!7579827 (= e!4511612 call!694863)))

(declare-fun b!7579828 () Bool)

(declare-fun e!4511613 () Bool)

(assert (=> b!7579828 (= e!4511613 (matchRSpec!4389 (regTwo!40665 r!22341) s!13436))))

(declare-fun b!7579829 () Bool)

(assert (=> b!7579829 (= e!4511615 call!694864)))

(declare-fun b!7579830 () Bool)

(declare-fun e!4511618 () Bool)

(assert (=> b!7579830 (= e!4511618 (= s!13436 (Cons!72835 (c!1398083 r!22341) Nil!72835)))))

(declare-fun b!7579831 () Bool)

(declare-fun c!1398127 () Bool)

(assert (=> b!7579831 (= c!1398127 (is-Union!20076 r!22341))))

(declare-fun e!4511617 () Bool)

(assert (=> b!7579831 (= e!4511618 e!4511617)))

(declare-fun b!7579832 () Bool)

(declare-fun c!1398130 () Bool)

(assert (=> b!7579832 (= c!1398130 (is-ElementMatch!20076 r!22341))))

(declare-fun e!4511614 () Bool)

(assert (=> b!7579832 (= e!4511614 e!4511618)))

(declare-fun b!7579833 () Bool)

(assert (=> b!7579833 (= e!4511617 e!4511612)))

(assert (=> b!7579833 (= c!1398129 (is-Star!20076 r!22341))))

(declare-fun b!7579834 () Bool)

(assert (=> b!7579834 (= e!4511615 e!4511614)))

(declare-fun res!3036647 () Bool)

(assert (=> b!7579834 (= res!3036647 (not (is-EmptyLang!20076 r!22341)))))

(assert (=> b!7579834 (=> (not res!3036647) (not e!4511614))))

(declare-fun b!7579835 () Bool)

(assert (=> b!7579835 (= e!4511617 e!4511613)))

(declare-fun res!3036649 () Bool)

(assert (=> b!7579835 (= res!3036649 (matchRSpec!4389 (regOne!40665 r!22341) s!13436))))

(assert (=> b!7579835 (=> res!3036649 e!4511613)))

(declare-fun bm!694859 () Bool)

(assert (=> bm!694859 (= call!694864 (isEmpty!41506 s!13436))))

(assert (=> b!7579836 (= e!4511616 call!694863)))

(assert (= (and d!2318290 c!1398128) b!7579829))

(assert (= (and d!2318290 (not c!1398128)) b!7579834))

(assert (= (and b!7579834 res!3036647) b!7579832))

(assert (= (and b!7579832 c!1398130) b!7579830))

(assert (= (and b!7579832 (not c!1398130)) b!7579831))

(assert (= (and b!7579831 c!1398127) b!7579835))

(assert (= (and b!7579831 (not c!1398127)) b!7579833))

(assert (= (and b!7579835 (not res!3036649)) b!7579828))

(assert (= (and b!7579833 c!1398129) b!7579826))

(assert (= (and b!7579833 (not c!1398129)) b!7579827))

(assert (= (and b!7579826 (not res!3036648)) b!7579836))

(assert (= (or b!7579836 b!7579827) bm!694858))

(assert (= (or b!7579829 b!7579826) bm!694859))

(declare-fun m!8135460 () Bool)

(assert (=> bm!694858 m!8135460))

(declare-fun m!8135462 () Bool)

(assert (=> b!7579828 m!8135462))

(declare-fun m!8135464 () Bool)

(assert (=> b!7579835 m!8135464))

(assert (=> bm!694859 m!8135400))

(assert (=> b!7579621 d!2318290))

(declare-fun d!2318300 () Bool)

(assert (=> d!2318300 (= (matchR!9668 r!22341 s!13436) (matchRSpec!4389 r!22341 s!13436))))

(declare-fun lt!2652535 () Unit!167108)

(declare-fun choose!58605 (Regex!20076 List!72959) Unit!167108)

(assert (=> d!2318300 (= lt!2652535 (choose!58605 r!22341 s!13436))))

(assert (=> d!2318300 (validRegex!10504 r!22341)))

(assert (=> d!2318300 (= (mainMatchTheorem!4383 r!22341 s!13436) lt!2652535)))

(declare-fun bs!1940991 () Bool)

(assert (= bs!1940991 d!2318300))

(assert (=> bs!1940991 m!8135394))

(assert (=> bs!1940991 m!8135396))

(declare-fun m!8135466 () Bool)

(assert (=> bs!1940991 m!8135466))

(assert (=> bs!1940991 m!8135404))

(assert (=> b!7579621 d!2318300))

(declare-fun d!2318302 () Bool)

(assert (=> d!2318302 (= (isEmpty!41506 s!13436) (is-Nil!72835 s!13436))))

(assert (=> b!7579616 d!2318302))

(declare-fun b!7579859 () Bool)

(declare-fun res!3036661 () Bool)

(declare-fun e!4511638 () Bool)

(assert (=> b!7579859 (=> res!3036661 e!4511638)))

(assert (=> b!7579859 (= res!3036661 (not (is-Concat!28921 (regOne!40665 r!22341))))))

(declare-fun e!4511637 () Bool)

(assert (=> b!7579859 (= e!4511637 e!4511638)))

(declare-fun bm!694866 () Bool)

(declare-fun call!694871 () Bool)

(declare-fun c!1398135 () Bool)

(assert (=> bm!694866 (= call!694871 (validRegex!10504 (ite c!1398135 (regOne!40665 (regOne!40665 r!22341)) (regTwo!40664 (regOne!40665 r!22341)))))))

(declare-fun b!7579861 () Bool)

(declare-fun res!3036664 () Bool)

(declare-fun e!4511635 () Bool)

(assert (=> b!7579861 (=> (not res!3036664) (not e!4511635))))

(assert (=> b!7579861 (= res!3036664 call!694871)))

(assert (=> b!7579861 (= e!4511637 e!4511635)))

(declare-fun b!7579862 () Bool)

(declare-fun e!4511636 () Bool)

(declare-fun e!4511633 () Bool)

(assert (=> b!7579862 (= e!4511636 e!4511633)))

(declare-fun c!1398136 () Bool)

(assert (=> b!7579862 (= c!1398136 (is-Star!20076 (regOne!40665 r!22341)))))

(declare-fun bm!694867 () Bool)

(declare-fun call!694872 () Bool)

(declare-fun call!694873 () Bool)

(assert (=> bm!694867 (= call!694872 call!694873)))

(declare-fun b!7579863 () Bool)

(assert (=> b!7579863 (= e!4511635 call!694872)))

(declare-fun b!7579864 () Bool)

(assert (=> b!7579864 (= e!4511633 e!4511637)))

(assert (=> b!7579864 (= c!1398135 (is-Union!20076 (regOne!40665 r!22341)))))

(declare-fun bm!694868 () Bool)

(assert (=> bm!694868 (= call!694873 (validRegex!10504 (ite c!1398136 (reg!20405 (regOne!40665 r!22341)) (ite c!1398135 (regTwo!40665 (regOne!40665 r!22341)) (regOne!40664 (regOne!40665 r!22341))))))))

(declare-fun b!7579865 () Bool)

(declare-fun e!4511639 () Bool)

(assert (=> b!7579865 (= e!4511639 call!694873)))

(declare-fun d!2318304 () Bool)

(declare-fun res!3036662 () Bool)

(assert (=> d!2318304 (=> res!3036662 e!4511636)))

(assert (=> d!2318304 (= res!3036662 (is-ElementMatch!20076 (regOne!40665 r!22341)))))

(assert (=> d!2318304 (= (validRegex!10504 (regOne!40665 r!22341)) e!4511636)))

(declare-fun b!7579860 () Bool)

(declare-fun e!4511634 () Bool)

(assert (=> b!7579860 (= e!4511634 call!694871)))

(declare-fun b!7579866 () Bool)

(assert (=> b!7579866 (= e!4511633 e!4511639)))

(declare-fun res!3036660 () Bool)

(assert (=> b!7579866 (= res!3036660 (not (nullable!8769 (reg!20405 (regOne!40665 r!22341)))))))

(assert (=> b!7579866 (=> (not res!3036660) (not e!4511639))))

(declare-fun b!7579867 () Bool)

(assert (=> b!7579867 (= e!4511638 e!4511634)))

(declare-fun res!3036663 () Bool)

(assert (=> b!7579867 (=> (not res!3036663) (not e!4511634))))

(assert (=> b!7579867 (= res!3036663 call!694872)))

(assert (= (and d!2318304 (not res!3036662)) b!7579862))

(assert (= (and b!7579862 c!1398136) b!7579866))

(assert (= (and b!7579862 (not c!1398136)) b!7579864))

(assert (= (and b!7579866 res!3036660) b!7579865))

(assert (= (and b!7579864 c!1398135) b!7579861))

(assert (= (and b!7579864 (not c!1398135)) b!7579859))

(assert (= (and b!7579861 res!3036664) b!7579863))

(assert (= (and b!7579859 (not res!3036661)) b!7579867))

(assert (= (and b!7579867 res!3036663) b!7579860))

(assert (= (or b!7579863 b!7579867) bm!694867))

(assert (= (or b!7579861 b!7579860) bm!694866))

(assert (= (or b!7579865 bm!694867) bm!694868))

(declare-fun m!8135468 () Bool)

(assert (=> bm!694866 m!8135468))

(declare-fun m!8135470 () Bool)

(assert (=> bm!694868 m!8135470))

(declare-fun m!8135472 () Bool)

(assert (=> b!7579866 m!8135472))

(assert (=> b!7579617 d!2318304))

(declare-fun d!2318306 () Bool)

(declare-fun lostCauseFct!505 (Regex!20076) Bool)

(assert (=> d!2318306 (= (lostCause!1852 r!22341) (lostCauseFct!505 r!22341))))

(declare-fun bs!1940992 () Bool)

(assert (= bs!1940992 d!2318306))

(declare-fun m!8135474 () Bool)

(assert (=> bs!1940992 m!8135474))

(assert (=> b!7579623 d!2318306))

(declare-fun b!7579868 () Bool)

(declare-fun res!3036666 () Bool)

(declare-fun e!4511645 () Bool)

(assert (=> b!7579868 (=> res!3036666 e!4511645)))

(assert (=> b!7579868 (= res!3036666 (not (is-Concat!28921 r!22341)))))

(declare-fun e!4511644 () Bool)

(assert (=> b!7579868 (= e!4511644 e!4511645)))

(declare-fun bm!694869 () Bool)

(declare-fun call!694874 () Bool)

(declare-fun c!1398137 () Bool)

(assert (=> bm!694869 (= call!694874 (validRegex!10504 (ite c!1398137 (regOne!40665 r!22341) (regTwo!40664 r!22341))))))

(declare-fun b!7579870 () Bool)

(declare-fun res!3036669 () Bool)

(declare-fun e!4511642 () Bool)

(assert (=> b!7579870 (=> (not res!3036669) (not e!4511642))))

(assert (=> b!7579870 (= res!3036669 call!694874)))

(assert (=> b!7579870 (= e!4511644 e!4511642)))

(declare-fun b!7579871 () Bool)

(declare-fun e!4511643 () Bool)

(declare-fun e!4511640 () Bool)

(assert (=> b!7579871 (= e!4511643 e!4511640)))

(declare-fun c!1398138 () Bool)

(assert (=> b!7579871 (= c!1398138 (is-Star!20076 r!22341))))

(declare-fun bm!694870 () Bool)

(declare-fun call!694875 () Bool)

(declare-fun call!694876 () Bool)

(assert (=> bm!694870 (= call!694875 call!694876)))

(declare-fun b!7579872 () Bool)

(assert (=> b!7579872 (= e!4511642 call!694875)))

(declare-fun b!7579873 () Bool)

(assert (=> b!7579873 (= e!4511640 e!4511644)))

(assert (=> b!7579873 (= c!1398137 (is-Union!20076 r!22341))))

(declare-fun bm!694871 () Bool)

(assert (=> bm!694871 (= call!694876 (validRegex!10504 (ite c!1398138 (reg!20405 r!22341) (ite c!1398137 (regTwo!40665 r!22341) (regOne!40664 r!22341)))))))

(declare-fun b!7579874 () Bool)

(declare-fun e!4511646 () Bool)

(assert (=> b!7579874 (= e!4511646 call!694876)))

(declare-fun d!2318308 () Bool)

(declare-fun res!3036667 () Bool)

(assert (=> d!2318308 (=> res!3036667 e!4511643)))

(assert (=> d!2318308 (= res!3036667 (is-ElementMatch!20076 r!22341))))

(assert (=> d!2318308 (= (validRegex!10504 r!22341) e!4511643)))

(declare-fun b!7579869 () Bool)

(declare-fun e!4511641 () Bool)

(assert (=> b!7579869 (= e!4511641 call!694874)))

(declare-fun b!7579875 () Bool)

(assert (=> b!7579875 (= e!4511640 e!4511646)))

(declare-fun res!3036665 () Bool)

(assert (=> b!7579875 (= res!3036665 (not (nullable!8769 (reg!20405 r!22341))))))

(assert (=> b!7579875 (=> (not res!3036665) (not e!4511646))))

(declare-fun b!7579876 () Bool)

(assert (=> b!7579876 (= e!4511645 e!4511641)))

(declare-fun res!3036668 () Bool)

(assert (=> b!7579876 (=> (not res!3036668) (not e!4511641))))

(assert (=> b!7579876 (= res!3036668 call!694875)))

(assert (= (and d!2318308 (not res!3036667)) b!7579871))

(assert (= (and b!7579871 c!1398138) b!7579875))

(assert (= (and b!7579871 (not c!1398138)) b!7579873))

(assert (= (and b!7579875 res!3036665) b!7579874))

(assert (= (and b!7579873 c!1398137) b!7579870))

(assert (= (and b!7579873 (not c!1398137)) b!7579868))

(assert (= (and b!7579870 res!3036669) b!7579872))

(assert (= (and b!7579868 (not res!3036666)) b!7579876))

(assert (= (and b!7579876 res!3036668) b!7579869))

(assert (= (or b!7579872 b!7579876) bm!694870))

(assert (= (or b!7579870 b!7579869) bm!694869))

(assert (= (or b!7579874 bm!694870) bm!694871))

(declare-fun m!8135476 () Bool)

(assert (=> bm!694869 m!8135476))

(declare-fun m!8135478 () Bool)

(assert (=> bm!694871 m!8135478))

(declare-fun m!8135480 () Bool)

(assert (=> b!7579875 m!8135480))

(assert (=> start!731854 d!2318308))

(declare-fun b!7579887 () Bool)

(declare-fun e!4511649 () Bool)

(assert (=> b!7579887 (= e!4511649 tp_is_empty!50507)))

(declare-fun b!7579889 () Bool)

(declare-fun tp!2208829 () Bool)

(assert (=> b!7579889 (= e!4511649 tp!2208829)))

(declare-fun b!7579888 () Bool)

(declare-fun tp!2208828 () Bool)

(declare-fun tp!2208831 () Bool)

(assert (=> b!7579888 (= e!4511649 (and tp!2208828 tp!2208831))))

(declare-fun b!7579890 () Bool)

(declare-fun tp!2208830 () Bool)

(declare-fun tp!2208832 () Bool)

(assert (=> b!7579890 (= e!4511649 (and tp!2208830 tp!2208832))))

(assert (=> b!7579622 (= tp!2208795 e!4511649)))

(assert (= (and b!7579622 (is-ElementMatch!20076 (regOne!40664 r!22341))) b!7579887))

(assert (= (and b!7579622 (is-Concat!28921 (regOne!40664 r!22341))) b!7579888))

(assert (= (and b!7579622 (is-Star!20076 (regOne!40664 r!22341))) b!7579889))

(assert (= (and b!7579622 (is-Union!20076 (regOne!40664 r!22341))) b!7579890))

(declare-fun b!7579891 () Bool)

(declare-fun e!4511650 () Bool)

(assert (=> b!7579891 (= e!4511650 tp_is_empty!50507)))

(declare-fun b!7579893 () Bool)

(declare-fun tp!2208834 () Bool)

(assert (=> b!7579893 (= e!4511650 tp!2208834)))

(declare-fun b!7579892 () Bool)

(declare-fun tp!2208833 () Bool)

(declare-fun tp!2208836 () Bool)

(assert (=> b!7579892 (= e!4511650 (and tp!2208833 tp!2208836))))

(declare-fun b!7579894 () Bool)

(declare-fun tp!2208835 () Bool)

(declare-fun tp!2208837 () Bool)

(assert (=> b!7579894 (= e!4511650 (and tp!2208835 tp!2208837))))

(assert (=> b!7579622 (= tp!2208794 e!4511650)))

(assert (= (and b!7579622 (is-ElementMatch!20076 (regTwo!40664 r!22341))) b!7579891))

(assert (= (and b!7579622 (is-Concat!28921 (regTwo!40664 r!22341))) b!7579892))

(assert (= (and b!7579622 (is-Star!20076 (regTwo!40664 r!22341))) b!7579893))

(assert (= (and b!7579622 (is-Union!20076 (regTwo!40664 r!22341))) b!7579894))

(declare-fun b!7579895 () Bool)

(declare-fun e!4511651 () Bool)

(assert (=> b!7579895 (= e!4511651 tp_is_empty!50507)))

(declare-fun b!7579897 () Bool)

(declare-fun tp!2208839 () Bool)

(assert (=> b!7579897 (= e!4511651 tp!2208839)))

(declare-fun b!7579896 () Bool)

(declare-fun tp!2208838 () Bool)

(declare-fun tp!2208841 () Bool)

(assert (=> b!7579896 (= e!4511651 (and tp!2208838 tp!2208841))))

(declare-fun b!7579898 () Bool)

(declare-fun tp!2208840 () Bool)

(declare-fun tp!2208842 () Bool)

(assert (=> b!7579898 (= e!4511651 (and tp!2208840 tp!2208842))))

(assert (=> b!7579624 (= tp!2208796 e!4511651)))

(assert (= (and b!7579624 (is-ElementMatch!20076 (reg!20405 r!22341))) b!7579895))

(assert (= (and b!7579624 (is-Concat!28921 (reg!20405 r!22341))) b!7579896))

(assert (= (and b!7579624 (is-Star!20076 (reg!20405 r!22341))) b!7579897))

(assert (= (and b!7579624 (is-Union!20076 (reg!20405 r!22341))) b!7579898))

(declare-fun b!7579903 () Bool)

(declare-fun e!4511654 () Bool)

(declare-fun tp!2208845 () Bool)

(assert (=> b!7579903 (= e!4511654 (and tp_is_empty!50507 tp!2208845))))

(assert (=> b!7579618 (= tp!2208799 e!4511654)))

(assert (= (and b!7579618 (is-Cons!72835 (t!387694 s!13436))) b!7579903))

(declare-fun b!7579904 () Bool)

(declare-fun e!4511655 () Bool)

(assert (=> b!7579904 (= e!4511655 tp_is_empty!50507)))

(declare-fun b!7579906 () Bool)

(declare-fun tp!2208847 () Bool)

(assert (=> b!7579906 (= e!4511655 tp!2208847)))

(declare-fun b!7579905 () Bool)

(declare-fun tp!2208846 () Bool)

(declare-fun tp!2208849 () Bool)

(assert (=> b!7579905 (= e!4511655 (and tp!2208846 tp!2208849))))

(declare-fun b!7579907 () Bool)

(declare-fun tp!2208848 () Bool)

(declare-fun tp!2208850 () Bool)

(assert (=> b!7579907 (= e!4511655 (and tp!2208848 tp!2208850))))

(assert (=> b!7579620 (= tp!2208798 e!4511655)))

(assert (= (and b!7579620 (is-ElementMatch!20076 (regOne!40665 r!22341))) b!7579904))

(assert (= (and b!7579620 (is-Concat!28921 (regOne!40665 r!22341))) b!7579905))

(assert (= (and b!7579620 (is-Star!20076 (regOne!40665 r!22341))) b!7579906))

(assert (= (and b!7579620 (is-Union!20076 (regOne!40665 r!22341))) b!7579907))

(declare-fun b!7579908 () Bool)

(declare-fun e!4511656 () Bool)

(assert (=> b!7579908 (= e!4511656 tp_is_empty!50507)))

(declare-fun b!7579910 () Bool)

(declare-fun tp!2208852 () Bool)

(assert (=> b!7579910 (= e!4511656 tp!2208852)))

(declare-fun b!7579909 () Bool)

(declare-fun tp!2208851 () Bool)

(declare-fun tp!2208854 () Bool)

(assert (=> b!7579909 (= e!4511656 (and tp!2208851 tp!2208854))))

(declare-fun b!7579911 () Bool)

(declare-fun tp!2208853 () Bool)

(declare-fun tp!2208855 () Bool)

(assert (=> b!7579911 (= e!4511656 (and tp!2208853 tp!2208855))))

(assert (=> b!7579620 (= tp!2208797 e!4511656)))

(assert (= (and b!7579620 (is-ElementMatch!20076 (regTwo!40665 r!22341))) b!7579908))

(assert (= (and b!7579620 (is-Concat!28921 (regTwo!40665 r!22341))) b!7579909))

(assert (= (and b!7579620 (is-Star!20076 (regTwo!40665 r!22341))) b!7579910))

(assert (= (and b!7579620 (is-Union!20076 (regTwo!40665 r!22341))) b!7579911))

(push 1)

(assert (not d!2318288))

(assert tp_is_empty!50507)

(assert (not b!7579889))

(assert (not d!2318300))

(assert (not b!7579909))

(assert (not b!7579898))

(assert (not b!7579897))

(assert (not b!7579894))

(assert (not b!7579911))

(assert (not b!7579700))

(assert (not bm!694844))

(assert (not b!7579702))

(assert (not b!7579835))

(assert (not b!7579896))

(assert (not b!7579892))

(assert (not b!7579903))

(assert (not b!7579907))

(assert (not b!7579890))

(assert (not b!7579706))

(assert (not b!7579866))

(assert (not d!2318306))

(assert (not b!7579893))

(assert (not b!7579888))

(assert (not b!7579875))

(assert (not b!7579704))

(assert (not b!7579703))

(assert (not b!7579828))

(assert (not bm!694869))

(assert (not bm!694866))

(assert (not bm!694858))

(assert (not b!7579906))

(assert (not b!7579905))

(assert (not b!7579910))

(assert (not bm!694859))

(assert (not b!7579699))

(assert (not bm!694868))

(assert (not bm!694871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

