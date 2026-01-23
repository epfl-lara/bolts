; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45774 () Bool)

(assert start!45774)

(declare-fun b!479553 () Bool)

(declare-fun res!211853 () Bool)

(declare-fun e!292333 () Bool)

(assert (=> b!479553 (=> (not res!211853) (not e!292333))))

(declare-datatypes ((C!3254 0))(
  ( (C!3255 (val!1613 Int)) )
))
(declare-datatypes ((Regex!1166 0))(
  ( (ElementMatch!1166 (c!95915 C!3254)) (Concat!2066 (regOne!2844 Regex!1166) (regTwo!2844 Regex!1166)) (EmptyExpr!1166) (Star!1166 (reg!1495 Regex!1166)) (EmptyLang!1166) (Union!1166 (regOne!2845 Regex!1166) (regTwo!2845 Regex!1166)) )
))
(declare-fun r!20230 () Regex!1166)

(declare-fun nullable!301 (Regex!1166) Bool)

(assert (=> b!479553 (= res!211853 (nullable!301 (regOne!2844 r!20230)))))

(declare-fun b!479554 () Bool)

(declare-fun res!211854 () Bool)

(declare-fun e!292332 () Bool)

(assert (=> b!479554 (=> (not res!211854) (not e!292332))))

(assert (=> b!479554 (= res!211854 (and (not (is-EmptyLang!1166 r!20230)) (not (is-EmptyExpr!1166 r!20230)) (not (is-ElementMatch!1166 r!20230)) (not (is-Union!1166 r!20230)) (not (is-Star!1166 r!20230))))))

(declare-fun b!479555 () Bool)

(assert (=> b!479555 (= e!292332 e!292333)))

(declare-fun res!211850 () Bool)

(assert (=> b!479555 (=> (not res!211850) (not e!292333))))

(declare-fun e!292334 () Bool)

(assert (=> b!479555 (= res!211850 e!292334)))

(declare-fun res!211855 () Bool)

(assert (=> b!479555 (=> res!211855 e!292334)))

(declare-fun lt!210900 () Bool)

(assert (=> b!479555 (= res!211855 lt!210900)))

(declare-fun lostCause!160 (Regex!1166) Bool)

(assert (=> b!479555 (= lt!210900 (lostCause!160 (regOne!2844 r!20230)))))

(declare-fun b!479556 () Bool)

(declare-fun e!292335 () Bool)

(declare-fun tp!134556 () Bool)

(assert (=> b!479556 (= e!292335 tp!134556)))

(declare-fun b!479557 () Bool)

(declare-fun tp!134552 () Bool)

(declare-fun tp!134555 () Bool)

(assert (=> b!479557 (= e!292335 (and tp!134552 tp!134555))))

(declare-fun res!211851 () Bool)

(assert (=> start!45774 (=> (not res!211851) (not e!292332))))

(declare-fun validRegex!394 (Regex!1166) Bool)

(assert (=> start!45774 (= res!211851 (validRegex!394 r!20230))))

(assert (=> start!45774 e!292332))

(assert (=> start!45774 e!292335))

(declare-fun b!479558 () Bool)

(declare-fun res!211852 () Bool)

(assert (=> b!479558 (=> (not res!211852) (not e!292332))))

(assert (=> b!479558 (= res!211852 (lostCause!160 r!20230))))

(declare-fun b!479559 () Bool)

(assert (=> b!479559 (= e!292334 (lostCause!160 (regTwo!2844 r!20230)))))

(declare-fun b!479560 () Bool)

(assert (=> b!479560 (= e!292333 (not (validRegex!394 (regTwo!2844 r!20230))))))

(assert (=> b!479560 (not lt!210900)))

(declare-datatypes ((Unit!8366 0))(
  ( (Unit!8367) )
))
(declare-fun lt!210899 () Unit!8366)

(declare-fun lemmaNullableThenNotLostCause!7 (Regex!1166) Unit!8366)

(assert (=> b!479560 (= lt!210899 (lemmaNullableThenNotLostCause!7 (regOne!2844 r!20230)))))

(declare-fun b!479561 () Bool)

(declare-fun tp_is_empty!2329 () Bool)

(assert (=> b!479561 (= e!292335 tp_is_empty!2329)))

(declare-fun b!479562 () Bool)

(declare-fun tp!134553 () Bool)

(declare-fun tp!134554 () Bool)

(assert (=> b!479562 (= e!292335 (and tp!134553 tp!134554))))

(assert (= (and start!45774 res!211851) b!479558))

(assert (= (and b!479558 res!211852) b!479554))

(assert (= (and b!479554 res!211854) b!479555))

(assert (= (and b!479555 (not res!211855)) b!479559))

(assert (= (and b!479555 res!211850) b!479553))

(assert (= (and b!479553 res!211853) b!479560))

(assert (= (and start!45774 (is-ElementMatch!1166 r!20230)) b!479561))

(assert (= (and start!45774 (is-Concat!2066 r!20230)) b!479562))

(assert (= (and start!45774 (is-Star!1166 r!20230)) b!479556))

(assert (= (and start!45774 (is-Union!1166 r!20230)) b!479557))

(declare-fun m!748707 () Bool)

(assert (=> b!479553 m!748707))

(declare-fun m!748709 () Bool)

(assert (=> b!479558 m!748709))

(declare-fun m!748711 () Bool)

(assert (=> start!45774 m!748711))

(declare-fun m!748713 () Bool)

(assert (=> b!479560 m!748713))

(declare-fun m!748715 () Bool)

(assert (=> b!479560 m!748715))

(declare-fun m!748717 () Bool)

(assert (=> b!479555 m!748717))

(declare-fun m!748719 () Bool)

(assert (=> b!479559 m!748719))

(push 1)

(assert (not b!479553))

(assert (not b!479562))

(assert (not start!45774))

(assert (not b!479560))

(assert (not b!479556))

(assert (not b!479555))

(assert (not b!479559))

(assert tp_is_empty!2329)

(assert (not b!479558))

(assert (not b!479557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!479611 () Bool)

(declare-fun e!292367 () Bool)

(declare-fun e!292365 () Bool)

(assert (=> b!479611 (= e!292367 e!292365)))

(declare-fun res!211888 () Bool)

(assert (=> b!479611 (= res!211888 (not (nullable!301 (reg!1495 (regTwo!2844 r!20230)))))))

(assert (=> b!479611 (=> (not res!211888) (not e!292365))))

(declare-fun b!479612 () Bool)

(declare-fun e!292363 () Bool)

(assert (=> b!479612 (= e!292363 e!292367)))

(declare-fun c!95922 () Bool)

(assert (=> b!479612 (= c!95922 (is-Star!1166 (regTwo!2844 r!20230)))))

(declare-fun bm!33899 () Bool)

(declare-fun call!33905 () Bool)

(declare-fun c!95921 () Bool)

(assert (=> bm!33899 (= call!33905 (validRegex!394 (ite c!95921 (regTwo!2845 (regTwo!2844 r!20230)) (regOne!2844 (regTwo!2844 r!20230)))))))

(declare-fun b!479614 () Bool)

(declare-fun call!33906 () Bool)

(assert (=> b!479614 (= e!292365 call!33906)))

(declare-fun bm!33900 () Bool)

(assert (=> bm!33900 (= call!33906 (validRegex!394 (ite c!95922 (reg!1495 (regTwo!2844 r!20230)) (ite c!95921 (regOne!2845 (regTwo!2844 r!20230)) (regTwo!2844 (regTwo!2844 r!20230))))))))

(declare-fun b!479615 () Bool)

(declare-fun e!292364 () Bool)

(assert (=> b!479615 (= e!292367 e!292364)))

(assert (=> b!479615 (= c!95921 (is-Union!1166 (regTwo!2844 r!20230)))))

(declare-fun b!479616 () Bool)

(declare-fun res!211886 () Bool)

(declare-fun e!292362 () Bool)

(assert (=> b!479616 (=> (not res!211886) (not e!292362))))

(declare-fun call!33904 () Bool)

(assert (=> b!479616 (= res!211886 call!33904)))

(assert (=> b!479616 (= e!292364 e!292362)))

(declare-fun b!479617 () Bool)

(declare-fun res!211885 () Bool)

(declare-fun e!292366 () Bool)

(assert (=> b!479617 (=> res!211885 e!292366)))

(assert (=> b!479617 (= res!211885 (not (is-Concat!2066 (regTwo!2844 r!20230))))))

(assert (=> b!479617 (= e!292364 e!292366)))

(declare-fun b!479618 () Bool)

(declare-fun e!292368 () Bool)

(assert (=> b!479618 (= e!292368 call!33904)))

(declare-fun b!479619 () Bool)

(assert (=> b!479619 (= e!292366 e!292368)))

(declare-fun res!211887 () Bool)

(assert (=> b!479619 (=> (not res!211887) (not e!292368))))

(assert (=> b!479619 (= res!211887 call!33905)))

(declare-fun bm!33901 () Bool)

(assert (=> bm!33901 (= call!33904 call!33906)))

(declare-fun d!180384 () Bool)

(declare-fun res!211884 () Bool)

(assert (=> d!180384 (=> res!211884 e!292363)))

(assert (=> d!180384 (= res!211884 (is-ElementMatch!1166 (regTwo!2844 r!20230)))))

(assert (=> d!180384 (= (validRegex!394 (regTwo!2844 r!20230)) e!292363)))

(declare-fun b!479613 () Bool)

(assert (=> b!479613 (= e!292362 call!33905)))

(assert (= (and d!180384 (not res!211884)) b!479612))

(assert (= (and b!479612 c!95922) b!479611))

(assert (= (and b!479612 (not c!95922)) b!479615))

(assert (= (and b!479611 res!211888) b!479614))

(assert (= (and b!479615 c!95921) b!479616))

(assert (= (and b!479615 (not c!95921)) b!479617))

(assert (= (and b!479616 res!211886) b!479613))

(assert (= (and b!479617 (not res!211885)) b!479619))

(assert (= (and b!479619 res!211887) b!479618))

(assert (= (or b!479613 b!479619) bm!33899))

(assert (= (or b!479616 b!479618) bm!33901))

(assert (= (or b!479614 bm!33901) bm!33900))

(declare-fun m!748735 () Bool)

(assert (=> b!479611 m!748735))

(declare-fun m!748737 () Bool)

(assert (=> bm!33899 m!748737))

(declare-fun m!748739 () Bool)

(assert (=> bm!33900 m!748739))

(assert (=> b!479560 d!180384))

(declare-fun d!180388 () Bool)

(assert (=> d!180388 (not (lostCause!160 (regOne!2844 r!20230)))))

(declare-fun lt!210909 () Unit!8366)

(declare-fun choose!3631 (Regex!1166) Unit!8366)

(assert (=> d!180388 (= lt!210909 (choose!3631 (regOne!2844 r!20230)))))

(assert (=> d!180388 (validRegex!394 (regOne!2844 r!20230))))

(assert (=> d!180388 (= (lemmaNullableThenNotLostCause!7 (regOne!2844 r!20230)) lt!210909)))

(declare-fun bs!58807 () Bool)

(assert (= bs!58807 d!180388))

(assert (=> bs!58807 m!748717))

(declare-fun m!748743 () Bool)

(assert (=> bs!58807 m!748743))

(declare-fun m!748745 () Bool)

(assert (=> bs!58807 m!748745))

(assert (=> b!479560 d!180388))

(declare-fun d!180392 () Bool)

(declare-fun lostCauseFct!70 (Regex!1166) Bool)

(assert (=> d!180392 (= (lostCause!160 (regOne!2844 r!20230)) (lostCauseFct!70 (regOne!2844 r!20230)))))

(declare-fun bs!58809 () Bool)

(assert (= bs!58809 d!180392))

(declare-fun m!748749 () Bool)

(assert (=> bs!58809 m!748749))

(assert (=> b!479555 d!180392))

(declare-fun d!180396 () Bool)

(assert (=> d!180396 (= (lostCause!160 (regTwo!2844 r!20230)) (lostCauseFct!70 (regTwo!2844 r!20230)))))

(declare-fun bs!58810 () Bool)

(assert (= bs!58810 d!180396))

(declare-fun m!748751 () Bool)

(assert (=> bs!58810 m!748751))

(assert (=> b!479559 d!180396))

(declare-fun b!479620 () Bool)

(declare-fun e!292374 () Bool)

(declare-fun e!292372 () Bool)

(assert (=> b!479620 (= e!292374 e!292372)))

(declare-fun res!211893 () Bool)

(assert (=> b!479620 (= res!211893 (not (nullable!301 (reg!1495 r!20230))))))

(assert (=> b!479620 (=> (not res!211893) (not e!292372))))

(declare-fun b!479621 () Bool)

(declare-fun e!292370 () Bool)

(assert (=> b!479621 (= e!292370 e!292374)))

(declare-fun c!95924 () Bool)

(assert (=> b!479621 (= c!95924 (is-Star!1166 r!20230))))

(declare-fun bm!33902 () Bool)

(declare-fun call!33908 () Bool)

(declare-fun c!95923 () Bool)

(assert (=> bm!33902 (= call!33908 (validRegex!394 (ite c!95923 (regTwo!2845 r!20230) (regOne!2844 r!20230))))))

(declare-fun b!479623 () Bool)

(declare-fun call!33909 () Bool)

(assert (=> b!479623 (= e!292372 call!33909)))

(declare-fun bm!33903 () Bool)

(assert (=> bm!33903 (= call!33909 (validRegex!394 (ite c!95924 (reg!1495 r!20230) (ite c!95923 (regOne!2845 r!20230) (regTwo!2844 r!20230)))))))

(declare-fun b!479624 () Bool)

(declare-fun e!292371 () Bool)

(assert (=> b!479624 (= e!292374 e!292371)))

(assert (=> b!479624 (= c!95923 (is-Union!1166 r!20230))))

(declare-fun b!479625 () Bool)

(declare-fun res!211891 () Bool)

(declare-fun e!292369 () Bool)

(assert (=> b!479625 (=> (not res!211891) (not e!292369))))

(declare-fun call!33907 () Bool)

(assert (=> b!479625 (= res!211891 call!33907)))

(assert (=> b!479625 (= e!292371 e!292369)))

(declare-fun b!479626 () Bool)

(declare-fun res!211890 () Bool)

(declare-fun e!292373 () Bool)

(assert (=> b!479626 (=> res!211890 e!292373)))

(assert (=> b!479626 (= res!211890 (not (is-Concat!2066 r!20230)))))

(assert (=> b!479626 (= e!292371 e!292373)))

(declare-fun b!479627 () Bool)

(declare-fun e!292375 () Bool)

(assert (=> b!479627 (= e!292375 call!33907)))

(declare-fun b!479628 () Bool)

(assert (=> b!479628 (= e!292373 e!292375)))

(declare-fun res!211892 () Bool)

(assert (=> b!479628 (=> (not res!211892) (not e!292375))))

(assert (=> b!479628 (= res!211892 call!33908)))

(declare-fun bm!33904 () Bool)

(assert (=> bm!33904 (= call!33907 call!33909)))

(declare-fun d!180398 () Bool)

(declare-fun res!211889 () Bool)

(assert (=> d!180398 (=> res!211889 e!292370)))

(assert (=> d!180398 (= res!211889 (is-ElementMatch!1166 r!20230))))

(assert (=> d!180398 (= (validRegex!394 r!20230) e!292370)))

(declare-fun b!479622 () Bool)

(assert (=> b!479622 (= e!292369 call!33908)))

(assert (= (and d!180398 (not res!211889)) b!479621))

(assert (= (and b!479621 c!95924) b!479620))

(assert (= (and b!479621 (not c!95924)) b!479624))

(assert (= (and b!479620 res!211893) b!479623))

(assert (= (and b!479624 c!95923) b!479625))

(assert (= (and b!479624 (not c!95923)) b!479626))

(assert (= (and b!479625 res!211891) b!479622))

(assert (= (and b!479626 (not res!211890)) b!479628))

(assert (= (and b!479628 res!211892) b!479627))

(assert (= (or b!479622 b!479628) bm!33902))

(assert (= (or b!479625 b!479627) bm!33904))

(assert (= (or b!479623 bm!33904) bm!33903))

(declare-fun m!748753 () Bool)

(assert (=> b!479620 m!748753))

(declare-fun m!748755 () Bool)

(assert (=> bm!33902 m!748755))

(declare-fun m!748757 () Bool)

(assert (=> bm!33903 m!748757))

(assert (=> start!45774 d!180398))

(declare-fun d!180400 () Bool)

(assert (=> d!180400 (= (lostCause!160 r!20230) (lostCauseFct!70 r!20230))))

(declare-fun bs!58811 () Bool)

(assert (= bs!58811 d!180400))

(declare-fun m!748759 () Bool)

(assert (=> bs!58811 m!748759))

(assert (=> b!479558 d!180400))

(declare-fun d!180402 () Bool)

(declare-fun nullableFct!108 (Regex!1166) Bool)

(assert (=> d!180402 (= (nullable!301 (regOne!2844 r!20230)) (nullableFct!108 (regOne!2844 r!20230)))))

(declare-fun bs!58812 () Bool)

(assert (= bs!58812 d!180402))

(declare-fun m!748761 () Bool)

(assert (=> bs!58812 m!748761))

(assert (=> b!479553 d!180402))

(declare-fun b!479641 () Bool)

(declare-fun e!292378 () Bool)

(declare-fun tp!134583 () Bool)

(assert (=> b!479641 (= e!292378 tp!134583)))

(assert (=> b!479556 (= tp!134556 e!292378)))

(declare-fun b!479640 () Bool)

(declare-fun tp!134584 () Bool)

(declare-fun tp!134585 () Bool)

(assert (=> b!479640 (= e!292378 (and tp!134584 tp!134585))))

(declare-fun b!479642 () Bool)

(declare-fun tp!134586 () Bool)

(declare-fun tp!134582 () Bool)

(assert (=> b!479642 (= e!292378 (and tp!134586 tp!134582))))

(declare-fun b!479639 () Bool)

(assert (=> b!479639 (= e!292378 tp_is_empty!2329)))

(assert (= (and b!479556 (is-ElementMatch!1166 (reg!1495 r!20230))) b!479639))

(assert (= (and b!479556 (is-Concat!2066 (reg!1495 r!20230))) b!479640))

(assert (= (and b!479556 (is-Star!1166 (reg!1495 r!20230))) b!479641))

(assert (= (and b!479556 (is-Union!1166 (reg!1495 r!20230))) b!479642))

(declare-fun b!479645 () Bool)

(declare-fun e!292379 () Bool)

(declare-fun tp!134588 () Bool)

(assert (=> b!479645 (= e!292379 tp!134588)))

(assert (=> b!479562 (= tp!134553 e!292379)))

(declare-fun b!479644 () Bool)

(declare-fun tp!134589 () Bool)

(declare-fun tp!134590 () Bool)

(assert (=> b!479644 (= e!292379 (and tp!134589 tp!134590))))

(declare-fun b!479646 () Bool)

(declare-fun tp!134591 () Bool)

(declare-fun tp!134587 () Bool)

(assert (=> b!479646 (= e!292379 (and tp!134591 tp!134587))))

(declare-fun b!479643 () Bool)

(assert (=> b!479643 (= e!292379 tp_is_empty!2329)))

(assert (= (and b!479562 (is-ElementMatch!1166 (regOne!2844 r!20230))) b!479643))

(assert (= (and b!479562 (is-Concat!2066 (regOne!2844 r!20230))) b!479644))

(assert (= (and b!479562 (is-Star!1166 (regOne!2844 r!20230))) b!479645))

(assert (= (and b!479562 (is-Union!1166 (regOne!2844 r!20230))) b!479646))

(declare-fun b!479649 () Bool)

(declare-fun e!292380 () Bool)

(declare-fun tp!134593 () Bool)

(assert (=> b!479649 (= e!292380 tp!134593)))

(assert (=> b!479562 (= tp!134554 e!292380)))

(declare-fun b!479648 () Bool)

(declare-fun tp!134594 () Bool)

(declare-fun tp!134595 () Bool)

(assert (=> b!479648 (= e!292380 (and tp!134594 tp!134595))))

(declare-fun b!479650 () Bool)

(declare-fun tp!134596 () Bool)

(declare-fun tp!134592 () Bool)

(assert (=> b!479650 (= e!292380 (and tp!134596 tp!134592))))

(declare-fun b!479647 () Bool)

(assert (=> b!479647 (= e!292380 tp_is_empty!2329)))

(assert (= (and b!479562 (is-ElementMatch!1166 (regTwo!2844 r!20230))) b!479647))

(assert (= (and b!479562 (is-Concat!2066 (regTwo!2844 r!20230))) b!479648))

(assert (= (and b!479562 (is-Star!1166 (regTwo!2844 r!20230))) b!479649))

(assert (= (and b!479562 (is-Union!1166 (regTwo!2844 r!20230))) b!479650))

(declare-fun b!479653 () Bool)

(declare-fun e!292381 () Bool)

(declare-fun tp!134598 () Bool)

(assert (=> b!479653 (= e!292381 tp!134598)))

(assert (=> b!479557 (= tp!134552 e!292381)))

(declare-fun b!479652 () Bool)

(declare-fun tp!134599 () Bool)

(declare-fun tp!134600 () Bool)

(assert (=> b!479652 (= e!292381 (and tp!134599 tp!134600))))

(declare-fun b!479654 () Bool)

(declare-fun tp!134601 () Bool)

(declare-fun tp!134597 () Bool)

(assert (=> b!479654 (= e!292381 (and tp!134601 tp!134597))))

(declare-fun b!479651 () Bool)

(assert (=> b!479651 (= e!292381 tp_is_empty!2329)))

(assert (= (and b!479557 (is-ElementMatch!1166 (regOne!2845 r!20230))) b!479651))

(assert (= (and b!479557 (is-Concat!2066 (regOne!2845 r!20230))) b!479652))

(assert (= (and b!479557 (is-Star!1166 (regOne!2845 r!20230))) b!479653))

(assert (= (and b!479557 (is-Union!1166 (regOne!2845 r!20230))) b!479654))

(declare-fun b!479657 () Bool)

(declare-fun e!292382 () Bool)

(declare-fun tp!134603 () Bool)

(assert (=> b!479657 (= e!292382 tp!134603)))

(assert (=> b!479557 (= tp!134555 e!292382)))

(declare-fun b!479656 () Bool)

(declare-fun tp!134604 () Bool)

(declare-fun tp!134605 () Bool)

(assert (=> b!479656 (= e!292382 (and tp!134604 tp!134605))))

(declare-fun b!479658 () Bool)

(declare-fun tp!134606 () Bool)

(declare-fun tp!134602 () Bool)

(assert (=> b!479658 (= e!292382 (and tp!134606 tp!134602))))

(declare-fun b!479655 () Bool)

(assert (=> b!479655 (= e!292382 tp_is_empty!2329)))

(assert (= (and b!479557 (is-ElementMatch!1166 (regTwo!2845 r!20230))) b!479655))

(assert (= (and b!479557 (is-Concat!2066 (regTwo!2845 r!20230))) b!479656))

(assert (= (and b!479557 (is-Star!1166 (regTwo!2845 r!20230))) b!479657))

(assert (= (and b!479557 (is-Union!1166 (regTwo!2845 r!20230))) b!479658))

(push 1)

(assert (not b!479656))

(assert (not b!479657))

(assert (not bm!33900))

(assert (not b!479654))

(assert (not b!479649))

(assert (not b!479648))

(assert (not b!479646))

(assert (not b!479653))

(assert (not bm!33903))

(assert (not b!479640))

(assert (not b!479641))

(assert (not d!180402))

(assert (not b!479611))

(assert (not b!479652))

(assert (not b!479644))

(assert (not d!180388))

(assert (not b!479658))

(assert (not d!180396))

(assert (not b!479650))

(assert (not b!479645))

(assert (not b!479642))

(assert (not bm!33899))

(assert (not b!479620))

(assert (not d!180400))

(assert (not bm!33902))

(assert tp_is_empty!2329)

(assert (not d!180392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

