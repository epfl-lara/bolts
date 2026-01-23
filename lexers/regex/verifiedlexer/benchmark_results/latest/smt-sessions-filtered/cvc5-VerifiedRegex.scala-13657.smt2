; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732582 () Bool)

(assert start!732582)

(declare-fun b!7592507 () Bool)

(assert (=> b!7592507 true))

(assert (=> b!7592507 true))

(declare-fun lambda!467289 () Int)

(declare-fun lambda!467288 () Int)

(assert (=> b!7592507 (not (= lambda!467289 lambda!467288))))

(assert (=> b!7592507 true))

(assert (=> b!7592507 true))

(declare-fun b!7592498 () Bool)

(declare-fun res!3040863 () Bool)

(declare-fun e!4518037 () Bool)

(assert (=> b!7592498 (=> (not res!3040863) (not e!4518037))))

(declare-datatypes ((C!40542 0))(
  ( (C!40543 (val!30711 Int)) )
))
(declare-datatypes ((List!72991 0))(
  ( (Nil!72867) (Cons!72867 (h!79315 C!40542) (t!387726 List!72991)) )
))
(declare-fun s!13436 () List!72991)

(declare-fun isEmpty!41554 (List!72991) Bool)

(assert (=> b!7592498 (= res!3040863 (not (isEmpty!41554 s!13436)))))

(declare-fun res!3040864 () Bool)

(assert (=> start!732582 (=> (not res!3040864) (not e!4518037))))

(declare-datatypes ((Regex!20108 0))(
  ( (ElementMatch!20108 (c!1400675 C!40542)) (Concat!28953 (regOne!40728 Regex!20108) (regTwo!40728 Regex!20108)) (EmptyExpr!20108) (Star!20108 (reg!20437 Regex!20108)) (EmptyLang!20108) (Union!20108 (regOne!40729 Regex!20108) (regTwo!40729 Regex!20108)) )
))
(declare-fun r!22341 () Regex!20108)

(declare-fun validRegex!10536 (Regex!20108) Bool)

(assert (=> start!732582 (= res!3040864 (validRegex!10536 r!22341))))

(assert (=> start!732582 e!4518037))

(declare-fun e!4518036 () Bool)

(assert (=> start!732582 e!4518036))

(declare-fun e!4518038 () Bool)

(assert (=> start!732582 e!4518038))

(declare-fun b!7592499 () Bool)

(declare-fun tp!2212770 () Bool)

(declare-fun tp!2212775 () Bool)

(assert (=> b!7592499 (= e!4518036 (and tp!2212770 tp!2212775))))

(declare-fun b!7592500 () Bool)

(declare-fun res!3040857 () Bool)

(declare-fun e!4518040 () Bool)

(assert (=> b!7592500 (=> res!3040857 e!4518040)))

(assert (=> b!7592500 (= res!3040857 (not (validRegex!10536 (regTwo!40728 r!22341))))))

(declare-fun b!7592501 () Bool)

(declare-fun e!4518039 () Bool)

(assert (=> b!7592501 (= e!4518037 (not e!4518039))))

(declare-fun res!3040861 () Bool)

(assert (=> b!7592501 (=> res!3040861 e!4518039)))

(declare-fun lt!2653541 () Bool)

(assert (=> b!7592501 (= res!3040861 (or (is-EmptyLang!20108 r!22341) (is-EmptyExpr!20108 r!22341) (is-ElementMatch!20108 r!22341) (is-Union!20108 r!22341) (is-Star!20108 r!22341) (not lt!2653541)))))

(declare-fun matchRSpec!4421 (Regex!20108 List!72991) Bool)

(assert (=> b!7592501 (= lt!2653541 (matchRSpec!4421 r!22341 s!13436))))

(declare-fun matchR!9700 (Regex!20108 List!72991) Bool)

(assert (=> b!7592501 (= lt!2653541 (matchR!9700 r!22341 s!13436))))

(declare-datatypes ((Unit!167172 0))(
  ( (Unit!167173) )
))
(declare-fun lt!2653544 () Unit!167172)

(declare-fun mainMatchTheorem!4415 (Regex!20108 List!72991) Unit!167172)

(assert (=> b!7592501 (= lt!2653544 (mainMatchTheorem!4415 r!22341 s!13436))))

(declare-fun b!7592502 () Bool)

(declare-fun res!3040859 () Bool)

(assert (=> b!7592502 (=> res!3040859 e!4518040)))

(declare-datatypes ((tuple2!68938 0))(
  ( (tuple2!68939 (_1!37772 List!72991) (_2!37772 List!72991)) )
))
(declare-fun lt!2653542 () tuple2!68938)

(assert (=> b!7592502 (= res!3040859 (not (matchR!9700 (regTwo!40728 r!22341) (_2!37772 lt!2653542))))))

(declare-fun b!7592503 () Bool)

(declare-fun res!3040860 () Bool)

(assert (=> b!7592503 (=> res!3040860 e!4518040)))

(declare-fun lostCause!1884 (Regex!20108) Bool)

(assert (=> b!7592503 (= res!3040860 (lostCause!1884 (regOne!40728 r!22341)))))

(declare-fun b!7592504 () Bool)

(declare-fun tp!2212774 () Bool)

(assert (=> b!7592504 (= e!4518036 tp!2212774)))

(declare-fun b!7592505 () Bool)

(declare-fun tp_is_empty!50571 () Bool)

(assert (=> b!7592505 (= e!4518036 tp_is_empty!50571)))

(declare-fun b!7592506 () Bool)

(declare-fun res!3040858 () Bool)

(assert (=> b!7592506 (=> (not res!3040858) (not e!4518037))))

(assert (=> b!7592506 (= res!3040858 (lostCause!1884 r!22341))))

(assert (=> b!7592507 (= e!4518039 e!4518040)))

(declare-fun res!3040862 () Bool)

(assert (=> b!7592507 (=> res!3040862 e!4518040)))

(assert (=> b!7592507 (= res!3040862 (not (matchR!9700 (regOne!40728 r!22341) (_1!37772 lt!2653542))))))

(declare-datatypes ((Option!17315 0))(
  ( (None!17314) (Some!17314 (v!54449 tuple2!68938)) )
))
(declare-fun lt!2653546 () Option!17315)

(declare-fun get!25632 (Option!17315) tuple2!68938)

(assert (=> b!7592507 (= lt!2653542 (get!25632 lt!2653546))))

(declare-fun Exists!4340 (Int) Bool)

(assert (=> b!7592507 (= (Exists!4340 lambda!467288) (Exists!4340 lambda!467289))))

(declare-fun lt!2653543 () Unit!167172)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2629 (Regex!20108 Regex!20108 List!72991) Unit!167172)

(assert (=> b!7592507 (= lt!2653543 (lemmaExistCutMatchRandMatchRSpecEquivalent!2629 (regOne!40728 r!22341) (regTwo!40728 r!22341) s!13436))))

(declare-fun isDefined!13951 (Option!17315) Bool)

(assert (=> b!7592507 (= (isDefined!13951 lt!2653546) (Exists!4340 lambda!467288))))

(declare-fun findConcatSeparation!3365 (Regex!20108 Regex!20108 List!72991 List!72991 List!72991) Option!17315)

(assert (=> b!7592507 (= lt!2653546 (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) Nil!72867 s!13436 s!13436))))

(declare-fun lt!2653545 () Unit!167172)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3123 (Regex!20108 Regex!20108 List!72991) Unit!167172)

(assert (=> b!7592507 (= lt!2653545 (lemmaFindConcatSeparationEquivalentToExists!3123 (regOne!40728 r!22341) (regTwo!40728 r!22341) s!13436))))

(declare-fun b!7592508 () Bool)

(declare-fun tp!2212772 () Bool)

(declare-fun tp!2212773 () Bool)

(assert (=> b!7592508 (= e!4518036 (and tp!2212772 tp!2212773))))

(declare-fun b!7592509 () Bool)

(declare-fun tp!2212771 () Bool)

(assert (=> b!7592509 (= e!4518038 (and tp_is_empty!50571 tp!2212771))))

(declare-fun b!7592510 () Bool)

(assert (=> b!7592510 (= e!4518040 (lostCause!1884 (regTwo!40728 r!22341)))))

(assert (= (and start!732582 res!3040864) b!7592506))

(assert (= (and b!7592506 res!3040858) b!7592498))

(assert (= (and b!7592498 res!3040863) b!7592501))

(assert (= (and b!7592501 (not res!3040861)) b!7592507))

(assert (= (and b!7592507 (not res!3040862)) b!7592502))

(assert (= (and b!7592502 (not res!3040859)) b!7592503))

(assert (= (and b!7592503 (not res!3040860)) b!7592500))

(assert (= (and b!7592500 (not res!3040857)) b!7592510))

(assert (= (and start!732582 (is-ElementMatch!20108 r!22341)) b!7592505))

(assert (= (and start!732582 (is-Concat!28953 r!22341)) b!7592499))

(assert (= (and start!732582 (is-Star!20108 r!22341)) b!7592504))

(assert (= (and start!732582 (is-Union!20108 r!22341)) b!7592508))

(assert (= (and start!732582 (is-Cons!72867 s!13436)) b!7592509))

(declare-fun m!8140898 () Bool)

(assert (=> start!732582 m!8140898))

(declare-fun m!8140900 () Bool)

(assert (=> b!7592506 m!8140900))

(declare-fun m!8140902 () Bool)

(assert (=> b!7592507 m!8140902))

(declare-fun m!8140904 () Bool)

(assert (=> b!7592507 m!8140904))

(declare-fun m!8140906 () Bool)

(assert (=> b!7592507 m!8140906))

(declare-fun m!8140908 () Bool)

(assert (=> b!7592507 m!8140908))

(declare-fun m!8140910 () Bool)

(assert (=> b!7592507 m!8140910))

(assert (=> b!7592507 m!8140906))

(declare-fun m!8140912 () Bool)

(assert (=> b!7592507 m!8140912))

(declare-fun m!8140914 () Bool)

(assert (=> b!7592507 m!8140914))

(declare-fun m!8140916 () Bool)

(assert (=> b!7592507 m!8140916))

(declare-fun m!8140918 () Bool)

(assert (=> b!7592501 m!8140918))

(declare-fun m!8140920 () Bool)

(assert (=> b!7592501 m!8140920))

(declare-fun m!8140922 () Bool)

(assert (=> b!7592501 m!8140922))

(declare-fun m!8140924 () Bool)

(assert (=> b!7592502 m!8140924))

(declare-fun m!8140926 () Bool)

(assert (=> b!7592498 m!8140926))

(declare-fun m!8140928 () Bool)

(assert (=> b!7592500 m!8140928))

(declare-fun m!8140930 () Bool)

(assert (=> b!7592510 m!8140930))

(declare-fun m!8140932 () Bool)

(assert (=> b!7592503 m!8140932))

(push 1)

(assert (not b!7592499))

(assert (not b!7592503))

(assert (not b!7592509))

(assert (not b!7592506))

(assert (not b!7592498))

(assert (not b!7592508))

(assert (not b!7592500))

(assert (not b!7592507))

(assert (not b!7592504))

(assert (not start!732582))

(assert (not b!7592501))

(assert (not b!7592510))

(assert tp_is_empty!50571)

(assert (not b!7592502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!696839 () Bool)

(declare-fun call!696844 () Bool)

(declare-fun c!1400681 () Bool)

(assert (=> bm!696839 (= call!696844 (validRegex!10536 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))))))

(declare-fun b!7592588 () Bool)

(declare-fun e!4518080 () Bool)

(declare-fun e!4518076 () Bool)

(assert (=> b!7592588 (= e!4518080 e!4518076)))

(assert (=> b!7592588 (= c!1400681 (is-Union!20108 r!22341))))

(declare-fun b!7592589 () Bool)

(declare-fun e!4518079 () Bool)

(assert (=> b!7592589 (= e!4518079 call!696844)))

(declare-fun b!7592590 () Bool)

(declare-fun e!4518077 () Bool)

(assert (=> b!7592590 (= e!4518080 e!4518077)))

(declare-fun res!3040912 () Bool)

(declare-fun nullable!8799 (Regex!20108) Bool)

(assert (=> b!7592590 (= res!3040912 (not (nullable!8799 (reg!20437 r!22341))))))

(assert (=> b!7592590 (=> (not res!3040912) (not e!4518077))))

(declare-fun bm!696840 () Bool)

(declare-fun c!1400682 () Bool)

(declare-fun call!696845 () Bool)

(assert (=> bm!696840 (= call!696845 (validRegex!10536 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))))))

(declare-fun b!7592591 () Bool)

(declare-fun res!3040914 () Bool)

(assert (=> b!7592591 (=> (not res!3040914) (not e!4518079))))

(declare-fun call!696843 () Bool)

(assert (=> b!7592591 (= res!3040914 call!696843)))

(assert (=> b!7592591 (= e!4518076 e!4518079)))

(declare-fun b!7592592 () Bool)

(declare-fun e!4518082 () Bool)

(assert (=> b!7592592 (= e!4518082 call!696843)))

(declare-fun bm!696838 () Bool)

(assert (=> bm!696838 (= call!696843 call!696845)))

(declare-fun d!2320142 () Bool)

(declare-fun res!3040913 () Bool)

(declare-fun e!4518078 () Bool)

(assert (=> d!2320142 (=> res!3040913 e!4518078)))

(assert (=> d!2320142 (= res!3040913 (is-ElementMatch!20108 r!22341))))

(assert (=> d!2320142 (= (validRegex!10536 r!22341) e!4518078)))

(declare-fun b!7592593 () Bool)

(declare-fun res!3040915 () Bool)

(declare-fun e!4518081 () Bool)

(assert (=> b!7592593 (=> res!3040915 e!4518081)))

(assert (=> b!7592593 (= res!3040915 (not (is-Concat!28953 r!22341)))))

(assert (=> b!7592593 (= e!4518076 e!4518081)))

(declare-fun b!7592594 () Bool)

(assert (=> b!7592594 (= e!4518078 e!4518080)))

(assert (=> b!7592594 (= c!1400682 (is-Star!20108 r!22341))))

(declare-fun b!7592595 () Bool)

(assert (=> b!7592595 (= e!4518077 call!696845)))

(declare-fun b!7592596 () Bool)

(assert (=> b!7592596 (= e!4518081 e!4518082)))

(declare-fun res!3040911 () Bool)

(assert (=> b!7592596 (=> (not res!3040911) (not e!4518082))))

(assert (=> b!7592596 (= res!3040911 call!696844)))

(assert (= (and d!2320142 (not res!3040913)) b!7592594))

(assert (= (and b!7592594 c!1400682) b!7592590))

(assert (= (and b!7592594 (not c!1400682)) b!7592588))

(assert (= (and b!7592590 res!3040912) b!7592595))

(assert (= (and b!7592588 c!1400681) b!7592591))

(assert (= (and b!7592588 (not c!1400681)) b!7592593))

(assert (= (and b!7592591 res!3040914) b!7592589))

(assert (= (and b!7592593 (not res!3040915)) b!7592596))

(assert (= (and b!7592596 res!3040911) b!7592592))

(assert (= (or b!7592589 b!7592596) bm!696839))

(assert (= (or b!7592591 b!7592592) bm!696838))

(assert (= (or b!7592595 bm!696838) bm!696840))

(declare-fun m!8140970 () Bool)

(assert (=> bm!696839 m!8140970))

(declare-fun m!8140972 () Bool)

(assert (=> b!7592590 m!8140972))

(declare-fun m!8140974 () Bool)

(assert (=> bm!696840 m!8140974))

(assert (=> start!732582 d!2320142))

(declare-fun d!2320144 () Bool)

(declare-fun lostCauseFct!533 (Regex!20108) Bool)

(assert (=> d!2320144 (= (lostCause!1884 (regTwo!40728 r!22341)) (lostCauseFct!533 (regTwo!40728 r!22341)))))

(declare-fun bs!1941763 () Bool)

(assert (= bs!1941763 d!2320144))

(declare-fun m!8140976 () Bool)

(assert (=> bs!1941763 m!8140976))

(assert (=> b!7592510 d!2320144))

(declare-fun d!2320146 () Bool)

(assert (=> d!2320146 (= (lostCause!1884 (regOne!40728 r!22341)) (lostCauseFct!533 (regOne!40728 r!22341)))))

(declare-fun bs!1941764 () Bool)

(assert (= bs!1941764 d!2320146))

(declare-fun m!8140978 () Bool)

(assert (=> bs!1941764 m!8140978))

(assert (=> b!7592503 d!2320146))

(declare-fun d!2320148 () Bool)

(assert (=> d!2320148 (= (isEmpty!41554 s!13436) (is-Nil!72867 s!13436))))

(assert (=> b!7592498 d!2320148))

(declare-fun bs!1941765 () Bool)

(declare-fun d!2320150 () Bool)

(assert (= bs!1941765 (and d!2320150 b!7592507)))

(declare-fun lambda!467302 () Int)

(assert (=> bs!1941765 (= lambda!467302 lambda!467288)))

(assert (=> bs!1941765 (not (= lambda!467302 lambda!467289))))

(assert (=> d!2320150 true))

(assert (=> d!2320150 true))

(assert (=> d!2320150 true))

(declare-fun lambda!467303 () Int)

(assert (=> bs!1941765 (not (= lambda!467303 lambda!467288))))

(assert (=> bs!1941765 (= lambda!467303 lambda!467289)))

(declare-fun bs!1941768 () Bool)

(assert (= bs!1941768 d!2320150))

(assert (=> bs!1941768 (not (= lambda!467303 lambda!467302))))

(assert (=> d!2320150 true))

(assert (=> d!2320150 true))

(assert (=> d!2320150 true))

(assert (=> d!2320150 (= (Exists!4340 lambda!467302) (Exists!4340 lambda!467303))))

(declare-fun lt!2653567 () Unit!167172)

(declare-fun choose!58669 (Regex!20108 Regex!20108 List!72991) Unit!167172)

(assert (=> d!2320150 (= lt!2653567 (choose!58669 (regOne!40728 r!22341) (regTwo!40728 r!22341) s!13436))))

(assert (=> d!2320150 (validRegex!10536 (regOne!40728 r!22341))))

(assert (=> d!2320150 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2629 (regOne!40728 r!22341) (regTwo!40728 r!22341) s!13436) lt!2653567)))

(declare-fun m!8140984 () Bool)

(assert (=> bs!1941768 m!8140984))

(declare-fun m!8140986 () Bool)

(assert (=> bs!1941768 m!8140986))

(declare-fun m!8140988 () Bool)

(assert (=> bs!1941768 m!8140988))

(declare-fun m!8140990 () Bool)

(assert (=> bs!1941768 m!8140990))

(assert (=> b!7592507 d!2320150))

(declare-fun bs!1941770 () Bool)

(declare-fun d!2320160 () Bool)

(assert (= bs!1941770 (and d!2320160 b!7592507)))

(declare-fun lambda!467306 () Int)

(assert (=> bs!1941770 (= lambda!467306 lambda!467288)))

(assert (=> bs!1941770 (not (= lambda!467306 lambda!467289))))

(declare-fun bs!1941771 () Bool)

(assert (= bs!1941771 (and d!2320160 d!2320150)))

(assert (=> bs!1941771 (= lambda!467306 lambda!467302)))

(assert (=> bs!1941771 (not (= lambda!467306 lambda!467303))))

(assert (=> d!2320160 true))

(assert (=> d!2320160 true))

(assert (=> d!2320160 true))

(assert (=> d!2320160 (= (isDefined!13951 (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) Nil!72867 s!13436 s!13436)) (Exists!4340 lambda!467306))))

(declare-fun lt!2653570 () Unit!167172)

(declare-fun choose!58670 (Regex!20108 Regex!20108 List!72991) Unit!167172)

(assert (=> d!2320160 (= lt!2653570 (choose!58670 (regOne!40728 r!22341) (regTwo!40728 r!22341) s!13436))))

(assert (=> d!2320160 (validRegex!10536 (regOne!40728 r!22341))))

(assert (=> d!2320160 (= (lemmaFindConcatSeparationEquivalentToExists!3123 (regOne!40728 r!22341) (regTwo!40728 r!22341) s!13436) lt!2653570)))

(declare-fun bs!1941772 () Bool)

(assert (= bs!1941772 d!2320160))

(declare-fun m!8140994 () Bool)

(assert (=> bs!1941772 m!8140994))

(assert (=> bs!1941772 m!8140914))

(assert (=> bs!1941772 m!8140990))

(assert (=> bs!1941772 m!8140914))

(declare-fun m!8140996 () Bool)

(assert (=> bs!1941772 m!8140996))

(declare-fun m!8140998 () Bool)

(assert (=> bs!1941772 m!8140998))

(assert (=> b!7592507 d!2320160))

(declare-fun b!7592641 () Bool)

(declare-fun e!4518110 () Bool)

(declare-fun lt!2653575 () Bool)

(declare-fun call!696848 () Bool)

(assert (=> b!7592641 (= e!4518110 (= lt!2653575 call!696848))))

(declare-fun bm!696843 () Bool)

(assert (=> bm!696843 (= call!696848 (isEmpty!41554 (_1!37772 lt!2653542)))))

(declare-fun d!2320164 () Bool)

(assert (=> d!2320164 e!4518110))

(declare-fun c!1400690 () Bool)

(assert (=> d!2320164 (= c!1400690 (is-EmptyExpr!20108 (regOne!40728 r!22341)))))

(declare-fun e!4518113 () Bool)

(assert (=> d!2320164 (= lt!2653575 e!4518113)))

(declare-fun c!1400689 () Bool)

(assert (=> d!2320164 (= c!1400689 (isEmpty!41554 (_1!37772 lt!2653542)))))

(assert (=> d!2320164 (validRegex!10536 (regOne!40728 r!22341))))

(assert (=> d!2320164 (= (matchR!9700 (regOne!40728 r!22341) (_1!37772 lt!2653542)) lt!2653575)))

(declare-fun b!7592642 () Bool)

(declare-fun res!3040954 () Bool)

(declare-fun e!4518111 () Bool)

(assert (=> b!7592642 (=> res!3040954 e!4518111)))

(declare-fun tail!15165 (List!72991) List!72991)

(assert (=> b!7592642 (= res!3040954 (not (isEmpty!41554 (tail!15165 (_1!37772 lt!2653542)))))))

(declare-fun b!7592643 () Bool)

(declare-fun e!4518112 () Bool)

(declare-fun head!15625 (List!72991) C!40542)

(assert (=> b!7592643 (= e!4518112 (= (head!15625 (_1!37772 lt!2653542)) (c!1400675 (regOne!40728 r!22341))))))

(declare-fun b!7592644 () Bool)

(declare-fun derivativeStep!5825 (Regex!20108 C!40542) Regex!20108)

(assert (=> b!7592644 (= e!4518113 (matchR!9700 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542))) (tail!15165 (_1!37772 lt!2653542))))))

(declare-fun b!7592645 () Bool)

(declare-fun res!3040953 () Bool)

(declare-fun e!4518109 () Bool)

(assert (=> b!7592645 (=> res!3040953 e!4518109)))

(assert (=> b!7592645 (= res!3040953 e!4518112)))

(declare-fun res!3040952 () Bool)

(assert (=> b!7592645 (=> (not res!3040952) (not e!4518112))))

(assert (=> b!7592645 (= res!3040952 lt!2653575)))

(declare-fun b!7592646 () Bool)

(declare-fun res!3040957 () Bool)

(assert (=> b!7592646 (=> (not res!3040957) (not e!4518112))))

(assert (=> b!7592646 (= res!3040957 (isEmpty!41554 (tail!15165 (_1!37772 lt!2653542))))))

(declare-fun b!7592647 () Bool)

(declare-fun e!4518107 () Bool)

(assert (=> b!7592647 (= e!4518107 (not lt!2653575))))

(declare-fun b!7592648 () Bool)

(assert (=> b!7592648 (= e!4518113 (nullable!8799 (regOne!40728 r!22341)))))

(declare-fun b!7592649 () Bool)

(assert (=> b!7592649 (= e!4518110 e!4518107)))

(declare-fun c!1400691 () Bool)

(assert (=> b!7592649 (= c!1400691 (is-EmptyLang!20108 (regOne!40728 r!22341)))))

(declare-fun b!7592650 () Bool)

(assert (=> b!7592650 (= e!4518111 (not (= (head!15625 (_1!37772 lt!2653542)) (c!1400675 (regOne!40728 r!22341)))))))

(declare-fun b!7592653 () Bool)

(declare-fun e!4518108 () Bool)

(assert (=> b!7592653 (= e!4518109 e!4518108)))

(declare-fun res!3040955 () Bool)

(assert (=> b!7592653 (=> (not res!3040955) (not e!4518108))))

(assert (=> b!7592653 (= res!3040955 (not lt!2653575))))

(declare-fun b!7592654 () Bool)

(declare-fun res!3040956 () Bool)

(assert (=> b!7592654 (=> res!3040956 e!4518109)))

(assert (=> b!7592654 (= res!3040956 (not (is-ElementMatch!20108 (regOne!40728 r!22341))))))

(assert (=> b!7592654 (= e!4518107 e!4518109)))

(declare-fun b!7592655 () Bool)

(declare-fun res!3040950 () Bool)

(assert (=> b!7592655 (=> (not res!3040950) (not e!4518112))))

(assert (=> b!7592655 (= res!3040950 (not call!696848))))

(declare-fun b!7592656 () Bool)

(assert (=> b!7592656 (= e!4518108 e!4518111)))

(declare-fun res!3040951 () Bool)

(assert (=> b!7592656 (=> res!3040951 e!4518111)))

(assert (=> b!7592656 (= res!3040951 call!696848)))

(assert (= (and d!2320164 c!1400689) b!7592648))

(assert (= (and d!2320164 (not c!1400689)) b!7592644))

(assert (= (and d!2320164 c!1400690) b!7592641))

(assert (= (and d!2320164 (not c!1400690)) b!7592649))

(assert (= (and b!7592649 c!1400691) b!7592647))

(assert (= (and b!7592649 (not c!1400691)) b!7592654))

(assert (= (and b!7592654 (not res!3040956)) b!7592645))

(assert (= (and b!7592645 res!3040952) b!7592655))

(assert (= (and b!7592655 res!3040950) b!7592646))

(assert (= (and b!7592646 res!3040957) b!7592643))

(assert (= (and b!7592645 (not res!3040953)) b!7592653))

(assert (= (and b!7592653 res!3040955) b!7592656))

(assert (= (and b!7592656 (not res!3040951)) b!7592642))

(assert (= (and b!7592642 (not res!3040954)) b!7592650))

(assert (= (or b!7592641 b!7592655 b!7592656) bm!696843))

(declare-fun m!8141000 () Bool)

(assert (=> b!7592642 m!8141000))

(assert (=> b!7592642 m!8141000))

(declare-fun m!8141002 () Bool)

(assert (=> b!7592642 m!8141002))

(declare-fun m!8141004 () Bool)

(assert (=> b!7592650 m!8141004))

(assert (=> b!7592644 m!8141004))

(assert (=> b!7592644 m!8141004))

(declare-fun m!8141006 () Bool)

(assert (=> b!7592644 m!8141006))

(assert (=> b!7592644 m!8141000))

(assert (=> b!7592644 m!8141006))

(assert (=> b!7592644 m!8141000))

(declare-fun m!8141008 () Bool)

(assert (=> b!7592644 m!8141008))

(declare-fun m!8141010 () Bool)

(assert (=> bm!696843 m!8141010))

(assert (=> b!7592643 m!8141004))

(assert (=> b!7592646 m!8141000))

(assert (=> b!7592646 m!8141000))

(assert (=> b!7592646 m!8141002))

(assert (=> d!2320164 m!8141010))

(assert (=> d!2320164 m!8140990))

(declare-fun m!8141012 () Bool)

(assert (=> b!7592648 m!8141012))

(assert (=> b!7592507 d!2320164))

(declare-fun d!2320166 () Bool)

(declare-fun choose!58671 (Int) Bool)

(assert (=> d!2320166 (= (Exists!4340 lambda!467288) (choose!58671 lambda!467288))))

(declare-fun bs!1941773 () Bool)

(assert (= bs!1941773 d!2320166))

(declare-fun m!8141014 () Bool)

(assert (=> bs!1941773 m!8141014))

(assert (=> b!7592507 d!2320166))

(declare-fun d!2320168 () Bool)

(assert (=> d!2320168 (= (Exists!4340 lambda!467289) (choose!58671 lambda!467289))))

(declare-fun bs!1941774 () Bool)

(assert (= bs!1941774 d!2320168))

(declare-fun m!8141016 () Bool)

(assert (=> bs!1941774 m!8141016))

(assert (=> b!7592507 d!2320168))

(declare-fun b!7592677 () Bool)

(declare-fun e!4518125 () Option!17315)

(declare-fun e!4518126 () Option!17315)

(assert (=> b!7592677 (= e!4518125 e!4518126)))

(declare-fun c!1400697 () Bool)

(assert (=> b!7592677 (= c!1400697 (is-Nil!72867 s!13436))))

(declare-fun b!7592678 () Bool)

(declare-fun e!4518127 () Bool)

(assert (=> b!7592678 (= e!4518127 (matchR!9700 (regTwo!40728 r!22341) s!13436))))

(declare-fun b!7592679 () Bool)

(declare-fun e!4518128 () Bool)

(declare-fun lt!2653585 () Option!17315)

(declare-fun ++!17516 (List!72991 List!72991) List!72991)

(assert (=> b!7592679 (= e!4518128 (= (++!17516 (_1!37772 (get!25632 lt!2653585)) (_2!37772 (get!25632 lt!2653585))) s!13436))))

(declare-fun b!7592680 () Bool)

(assert (=> b!7592680 (= e!4518125 (Some!17314 (tuple2!68939 Nil!72867 s!13436)))))

(declare-fun b!7592681 () Bool)

(declare-fun res!3040970 () Bool)

(assert (=> b!7592681 (=> (not res!3040970) (not e!4518128))))

(assert (=> b!7592681 (= res!3040970 (matchR!9700 (regOne!40728 r!22341) (_1!37772 (get!25632 lt!2653585))))))

(declare-fun d!2320170 () Bool)

(declare-fun e!4518124 () Bool)

(assert (=> d!2320170 e!4518124))

(declare-fun res!3040971 () Bool)

(assert (=> d!2320170 (=> res!3040971 e!4518124)))

(assert (=> d!2320170 (= res!3040971 e!4518128)))

(declare-fun res!3040972 () Bool)

(assert (=> d!2320170 (=> (not res!3040972) (not e!4518128))))

(assert (=> d!2320170 (= res!3040972 (isDefined!13951 lt!2653585))))

(assert (=> d!2320170 (= lt!2653585 e!4518125)))

(declare-fun c!1400696 () Bool)

(assert (=> d!2320170 (= c!1400696 e!4518127)))

(declare-fun res!3040974 () Bool)

(assert (=> d!2320170 (=> (not res!3040974) (not e!4518127))))

(assert (=> d!2320170 (= res!3040974 (matchR!9700 (regOne!40728 r!22341) Nil!72867))))

(assert (=> d!2320170 (validRegex!10536 (regOne!40728 r!22341))))

(assert (=> d!2320170 (= (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) Nil!72867 s!13436 s!13436) lt!2653585)))

(declare-fun b!7592682 () Bool)

(declare-fun lt!2653584 () Unit!167172)

(declare-fun lt!2653583 () Unit!167172)

(assert (=> b!7592682 (= lt!2653584 lt!2653583)))

(assert (=> b!7592682 (= (++!17516 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (t!387726 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3203 (List!72991 C!40542 List!72991 List!72991) Unit!167172)

(assert (=> b!7592682 (= lt!2653583 (lemmaMoveElementToOtherListKeepsConcatEq!3203 Nil!72867 (h!79315 s!13436) (t!387726 s!13436) s!13436))))

(assert (=> b!7592682 (= e!4518126 (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (t!387726 s!13436) s!13436))))

(declare-fun b!7592683 () Bool)

(assert (=> b!7592683 (= e!4518124 (not (isDefined!13951 lt!2653585)))))

(declare-fun b!7592684 () Bool)

(declare-fun res!3040973 () Bool)

(assert (=> b!7592684 (=> (not res!3040973) (not e!4518128))))

(assert (=> b!7592684 (= res!3040973 (matchR!9700 (regTwo!40728 r!22341) (_2!37772 (get!25632 lt!2653585))))))

(declare-fun b!7592685 () Bool)

(assert (=> b!7592685 (= e!4518126 None!17314)))

(assert (= (and d!2320170 res!3040974) b!7592678))

(assert (= (and d!2320170 c!1400696) b!7592680))

(assert (= (and d!2320170 (not c!1400696)) b!7592677))

(assert (= (and b!7592677 c!1400697) b!7592685))

(assert (= (and b!7592677 (not c!1400697)) b!7592682))

(assert (= (and d!2320170 res!3040972) b!7592681))

(assert (= (and b!7592681 res!3040970) b!7592684))

(assert (= (and b!7592684 res!3040973) b!7592679))

(assert (= (and d!2320170 (not res!3040971)) b!7592683))

(declare-fun m!8141026 () Bool)

(assert (=> d!2320170 m!8141026))

(declare-fun m!8141028 () Bool)

(assert (=> d!2320170 m!8141028))

(assert (=> d!2320170 m!8140990))

(declare-fun m!8141030 () Bool)

(assert (=> b!7592682 m!8141030))

(assert (=> b!7592682 m!8141030))

(declare-fun m!8141032 () Bool)

(assert (=> b!7592682 m!8141032))

(declare-fun m!8141034 () Bool)

(assert (=> b!7592682 m!8141034))

(assert (=> b!7592682 m!8141030))

(declare-fun m!8141036 () Bool)

(assert (=> b!7592682 m!8141036))

(declare-fun m!8141038 () Bool)

(assert (=> b!7592681 m!8141038))

(declare-fun m!8141040 () Bool)

(assert (=> b!7592681 m!8141040))

(assert (=> b!7592684 m!8141038))

(declare-fun m!8141042 () Bool)

(assert (=> b!7592684 m!8141042))

(assert (=> b!7592683 m!8141026))

(declare-fun m!8141044 () Bool)

(assert (=> b!7592678 m!8141044))

(assert (=> b!7592679 m!8141038))

(declare-fun m!8141046 () Bool)

(assert (=> b!7592679 m!8141046))

(assert (=> b!7592507 d!2320170))

(declare-fun d!2320174 () Bool)

(declare-fun isEmpty!41556 (Option!17315) Bool)

(assert (=> d!2320174 (= (isDefined!13951 lt!2653546) (not (isEmpty!41556 lt!2653546)))))

(declare-fun bs!1941777 () Bool)

(assert (= bs!1941777 d!2320174))

(declare-fun m!8141048 () Bool)

(assert (=> bs!1941777 m!8141048))

(assert (=> b!7592507 d!2320174))

(declare-fun d!2320176 () Bool)

(assert (=> d!2320176 (= (get!25632 lt!2653546) (v!54449 lt!2653546))))

(assert (=> b!7592507 d!2320176))

(declare-fun b!7592686 () Bool)

(declare-fun e!4518132 () Bool)

(declare-fun lt!2653586 () Bool)

(declare-fun call!696849 () Bool)

(assert (=> b!7592686 (= e!4518132 (= lt!2653586 call!696849))))

(declare-fun bm!696844 () Bool)

(assert (=> bm!696844 (= call!696849 (isEmpty!41554 (_2!37772 lt!2653542)))))

(declare-fun d!2320178 () Bool)

(assert (=> d!2320178 e!4518132))

(declare-fun c!1400699 () Bool)

(assert (=> d!2320178 (= c!1400699 (is-EmptyExpr!20108 (regTwo!40728 r!22341)))))

(declare-fun e!4518135 () Bool)

(assert (=> d!2320178 (= lt!2653586 e!4518135)))

(declare-fun c!1400698 () Bool)

(assert (=> d!2320178 (= c!1400698 (isEmpty!41554 (_2!37772 lt!2653542)))))

(assert (=> d!2320178 (validRegex!10536 (regTwo!40728 r!22341))))

(assert (=> d!2320178 (= (matchR!9700 (regTwo!40728 r!22341) (_2!37772 lt!2653542)) lt!2653586)))

(declare-fun b!7592687 () Bool)

(declare-fun res!3040979 () Bool)

(declare-fun e!4518133 () Bool)

(assert (=> b!7592687 (=> res!3040979 e!4518133)))

(assert (=> b!7592687 (= res!3040979 (not (isEmpty!41554 (tail!15165 (_2!37772 lt!2653542)))))))

(declare-fun b!7592688 () Bool)

(declare-fun e!4518134 () Bool)

(assert (=> b!7592688 (= e!4518134 (= (head!15625 (_2!37772 lt!2653542)) (c!1400675 (regTwo!40728 r!22341))))))

(declare-fun b!7592689 () Bool)

(assert (=> b!7592689 (= e!4518135 (matchR!9700 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542))) (tail!15165 (_2!37772 lt!2653542))))))

(declare-fun b!7592690 () Bool)

(declare-fun res!3040978 () Bool)

(declare-fun e!4518131 () Bool)

(assert (=> b!7592690 (=> res!3040978 e!4518131)))

(assert (=> b!7592690 (= res!3040978 e!4518134)))

(declare-fun res!3040977 () Bool)

(assert (=> b!7592690 (=> (not res!3040977) (not e!4518134))))

(assert (=> b!7592690 (= res!3040977 lt!2653586)))

(declare-fun b!7592691 () Bool)

(declare-fun res!3040982 () Bool)

(assert (=> b!7592691 (=> (not res!3040982) (not e!4518134))))

(assert (=> b!7592691 (= res!3040982 (isEmpty!41554 (tail!15165 (_2!37772 lt!2653542))))))

(declare-fun b!7592692 () Bool)

(declare-fun e!4518129 () Bool)

(assert (=> b!7592692 (= e!4518129 (not lt!2653586))))

(declare-fun b!7592693 () Bool)

(assert (=> b!7592693 (= e!4518135 (nullable!8799 (regTwo!40728 r!22341)))))

(declare-fun b!7592694 () Bool)

(assert (=> b!7592694 (= e!4518132 e!4518129)))

(declare-fun c!1400700 () Bool)

(assert (=> b!7592694 (= c!1400700 (is-EmptyLang!20108 (regTwo!40728 r!22341)))))

(declare-fun b!7592695 () Bool)

(assert (=> b!7592695 (= e!4518133 (not (= (head!15625 (_2!37772 lt!2653542)) (c!1400675 (regTwo!40728 r!22341)))))))

(declare-fun b!7592696 () Bool)

(declare-fun e!4518130 () Bool)

(assert (=> b!7592696 (= e!4518131 e!4518130)))

(declare-fun res!3040980 () Bool)

(assert (=> b!7592696 (=> (not res!3040980) (not e!4518130))))

(assert (=> b!7592696 (= res!3040980 (not lt!2653586))))

(declare-fun b!7592697 () Bool)

(declare-fun res!3040981 () Bool)

(assert (=> b!7592697 (=> res!3040981 e!4518131)))

(assert (=> b!7592697 (= res!3040981 (not (is-ElementMatch!20108 (regTwo!40728 r!22341))))))

(assert (=> b!7592697 (= e!4518129 e!4518131)))

(declare-fun b!7592698 () Bool)

(declare-fun res!3040975 () Bool)

(assert (=> b!7592698 (=> (not res!3040975) (not e!4518134))))

(assert (=> b!7592698 (= res!3040975 (not call!696849))))

(declare-fun b!7592699 () Bool)

(assert (=> b!7592699 (= e!4518130 e!4518133)))

(declare-fun res!3040976 () Bool)

(assert (=> b!7592699 (=> res!3040976 e!4518133)))

(assert (=> b!7592699 (= res!3040976 call!696849)))

(assert (= (and d!2320178 c!1400698) b!7592693))

(assert (= (and d!2320178 (not c!1400698)) b!7592689))

(assert (= (and d!2320178 c!1400699) b!7592686))

(assert (= (and d!2320178 (not c!1400699)) b!7592694))

(assert (= (and b!7592694 c!1400700) b!7592692))

(assert (= (and b!7592694 (not c!1400700)) b!7592697))

(assert (= (and b!7592697 (not res!3040981)) b!7592690))

(assert (= (and b!7592690 res!3040977) b!7592698))

(assert (= (and b!7592698 res!3040975) b!7592691))

(assert (= (and b!7592691 res!3040982) b!7592688))

(assert (= (and b!7592690 (not res!3040978)) b!7592696))

(assert (= (and b!7592696 res!3040980) b!7592699))

(assert (= (and b!7592699 (not res!3040976)) b!7592687))

(assert (= (and b!7592687 (not res!3040979)) b!7592695))

(assert (= (or b!7592686 b!7592698 b!7592699) bm!696844))

(declare-fun m!8141050 () Bool)

(assert (=> b!7592687 m!8141050))

(assert (=> b!7592687 m!8141050))

(declare-fun m!8141052 () Bool)

(assert (=> b!7592687 m!8141052))

(declare-fun m!8141054 () Bool)

(assert (=> b!7592695 m!8141054))

(assert (=> b!7592689 m!8141054))

(assert (=> b!7592689 m!8141054))

(declare-fun m!8141056 () Bool)

(assert (=> b!7592689 m!8141056))

(assert (=> b!7592689 m!8141050))

(assert (=> b!7592689 m!8141056))

(assert (=> b!7592689 m!8141050))

(declare-fun m!8141058 () Bool)

(assert (=> b!7592689 m!8141058))

(declare-fun m!8141060 () Bool)

(assert (=> bm!696844 m!8141060))

(assert (=> b!7592688 m!8141054))

(assert (=> b!7592691 m!8141050))

(assert (=> b!7592691 m!8141050))

(assert (=> b!7592691 m!8141052))

(assert (=> d!2320178 m!8141060))

(assert (=> d!2320178 m!8140928))

(declare-fun m!8141062 () Bool)

(assert (=> b!7592693 m!8141062))

(assert (=> b!7592502 d!2320178))

(declare-fun bm!696846 () Bool)

(declare-fun call!696851 () Bool)

(declare-fun c!1400701 () Bool)

(assert (=> bm!696846 (= call!696851 (validRegex!10536 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))))))

(declare-fun b!7592700 () Bool)

(declare-fun e!4518140 () Bool)

(declare-fun e!4518136 () Bool)

(assert (=> b!7592700 (= e!4518140 e!4518136)))

(assert (=> b!7592700 (= c!1400701 (is-Union!20108 (regTwo!40728 r!22341)))))

(declare-fun b!7592701 () Bool)

(declare-fun e!4518139 () Bool)

(assert (=> b!7592701 (= e!4518139 call!696851)))

(declare-fun b!7592702 () Bool)

(declare-fun e!4518137 () Bool)

(assert (=> b!7592702 (= e!4518140 e!4518137)))

(declare-fun res!3040984 () Bool)

(assert (=> b!7592702 (= res!3040984 (not (nullable!8799 (reg!20437 (regTwo!40728 r!22341)))))))

(assert (=> b!7592702 (=> (not res!3040984) (not e!4518137))))

(declare-fun c!1400702 () Bool)

(declare-fun bm!696847 () Bool)

(declare-fun call!696852 () Bool)

(assert (=> bm!696847 (= call!696852 (validRegex!10536 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))))))

(declare-fun b!7592703 () Bool)

(declare-fun res!3040986 () Bool)

(assert (=> b!7592703 (=> (not res!3040986) (not e!4518139))))

(declare-fun call!696850 () Bool)

(assert (=> b!7592703 (= res!3040986 call!696850)))

(assert (=> b!7592703 (= e!4518136 e!4518139)))

(declare-fun b!7592704 () Bool)

(declare-fun e!4518142 () Bool)

(assert (=> b!7592704 (= e!4518142 call!696850)))

(declare-fun bm!696845 () Bool)

(assert (=> bm!696845 (= call!696850 call!696852)))

(declare-fun d!2320180 () Bool)

(declare-fun res!3040985 () Bool)

(declare-fun e!4518138 () Bool)

(assert (=> d!2320180 (=> res!3040985 e!4518138)))

(assert (=> d!2320180 (= res!3040985 (is-ElementMatch!20108 (regTwo!40728 r!22341)))))

(assert (=> d!2320180 (= (validRegex!10536 (regTwo!40728 r!22341)) e!4518138)))

(declare-fun b!7592705 () Bool)

(declare-fun res!3040987 () Bool)

(declare-fun e!4518141 () Bool)

(assert (=> b!7592705 (=> res!3040987 e!4518141)))

(assert (=> b!7592705 (= res!3040987 (not (is-Concat!28953 (regTwo!40728 r!22341))))))

(assert (=> b!7592705 (= e!4518136 e!4518141)))

(declare-fun b!7592706 () Bool)

(assert (=> b!7592706 (= e!4518138 e!4518140)))

(assert (=> b!7592706 (= c!1400702 (is-Star!20108 (regTwo!40728 r!22341)))))

(declare-fun b!7592707 () Bool)

(assert (=> b!7592707 (= e!4518137 call!696852)))

(declare-fun b!7592708 () Bool)

(assert (=> b!7592708 (= e!4518141 e!4518142)))

(declare-fun res!3040983 () Bool)

(assert (=> b!7592708 (=> (not res!3040983) (not e!4518142))))

(assert (=> b!7592708 (= res!3040983 call!696851)))

(assert (= (and d!2320180 (not res!3040985)) b!7592706))

(assert (= (and b!7592706 c!1400702) b!7592702))

(assert (= (and b!7592706 (not c!1400702)) b!7592700))

(assert (= (and b!7592702 res!3040984) b!7592707))

(assert (= (and b!7592700 c!1400701) b!7592703))

(assert (= (and b!7592700 (not c!1400701)) b!7592705))

(assert (= (and b!7592703 res!3040986) b!7592701))

(assert (= (and b!7592705 (not res!3040987)) b!7592708))

(assert (= (and b!7592708 res!3040983) b!7592704))

(assert (= (or b!7592701 b!7592708) bm!696846))

(assert (= (or b!7592703 b!7592704) bm!696845))

(assert (= (or b!7592707 bm!696845) bm!696847))

(declare-fun m!8141064 () Bool)

(assert (=> bm!696846 m!8141064))

(declare-fun m!8141066 () Bool)

(assert (=> b!7592702 m!8141066))

(declare-fun m!8141068 () Bool)

(assert (=> bm!696847 m!8141068))

(assert (=> b!7592500 d!2320180))

(declare-fun d!2320182 () Bool)

(assert (=> d!2320182 (= (lostCause!1884 r!22341) (lostCauseFct!533 r!22341))))

(declare-fun bs!1941778 () Bool)

(assert (= bs!1941778 d!2320182))

(declare-fun m!8141070 () Bool)

(assert (=> bs!1941778 m!8141070))

(assert (=> b!7592506 d!2320182))

(declare-fun bs!1941783 () Bool)

(declare-fun b!7592751 () Bool)

(assert (= bs!1941783 (and b!7592751 d!2320160)))

(declare-fun lambda!467320 () Int)

(assert (=> bs!1941783 (not (= lambda!467320 lambda!467306))))

(declare-fun bs!1941784 () Bool)

(assert (= bs!1941784 (and b!7592751 d!2320150)))

(assert (=> bs!1941784 (not (= lambda!467320 lambda!467303))))

(declare-fun bs!1941785 () Bool)

(assert (= bs!1941785 (and b!7592751 b!7592507)))

(assert (=> bs!1941785 (not (= lambda!467320 lambda!467288))))

(assert (=> bs!1941785 (not (= lambda!467320 lambda!467289))))

(assert (=> bs!1941784 (not (= lambda!467320 lambda!467302))))

(assert (=> b!7592751 true))

(assert (=> b!7592751 true))

(declare-fun bs!1941786 () Bool)

(declare-fun b!7592747 () Bool)

(assert (= bs!1941786 (and b!7592747 d!2320160)))

(declare-fun lambda!467321 () Int)

(assert (=> bs!1941786 (not (= lambda!467321 lambda!467306))))

(declare-fun bs!1941787 () Bool)

(assert (= bs!1941787 (and b!7592747 d!2320150)))

(assert (=> bs!1941787 (= lambda!467321 lambda!467303)))

(declare-fun bs!1941788 () Bool)

(assert (= bs!1941788 (and b!7592747 b!7592507)))

(assert (=> bs!1941788 (not (= lambda!467321 lambda!467288))))

(declare-fun bs!1941789 () Bool)

(assert (= bs!1941789 (and b!7592747 b!7592751)))

(assert (=> bs!1941789 (not (= lambda!467321 lambda!467320))))

(assert (=> bs!1941788 (= lambda!467321 lambda!467289)))

(assert (=> bs!1941787 (not (= lambda!467321 lambda!467302))))

(assert (=> b!7592747 true))

(assert (=> b!7592747 true))

(declare-fun b!7592745 () Bool)

(declare-fun e!4518166 () Bool)

(declare-fun e!4518167 () Bool)

(assert (=> b!7592745 (= e!4518166 e!4518167)))

(declare-fun res!3041008 () Bool)

(assert (=> b!7592745 (= res!3041008 (not (is-EmptyLang!20108 r!22341)))))

(assert (=> b!7592745 (=> (not res!3041008) (not e!4518167))))

(declare-fun b!7592746 () Bool)

(declare-fun c!1400713 () Bool)

(assert (=> b!7592746 (= c!1400713 (is-ElementMatch!20108 r!22341))))

(declare-fun e!4518164 () Bool)

(assert (=> b!7592746 (= e!4518167 e!4518164)))

(declare-fun b!7592748 () Bool)

(declare-fun res!3041009 () Bool)

(declare-fun e!4518168 () Bool)

(assert (=> b!7592748 (=> res!3041009 e!4518168)))

(declare-fun call!696857 () Bool)

(assert (=> b!7592748 (= res!3041009 call!696857)))

(declare-fun e!4518165 () Bool)

(assert (=> b!7592748 (= e!4518165 e!4518168)))

(declare-fun bm!696852 () Bool)

(declare-fun c!1400714 () Bool)

(declare-fun call!696858 () Bool)

(assert (=> bm!696852 (= call!696858 (Exists!4340 (ite c!1400714 lambda!467320 lambda!467321)))))

(declare-fun b!7592749 () Bool)

(declare-fun e!4518163 () Bool)

(declare-fun e!4518169 () Bool)

(assert (=> b!7592749 (= e!4518163 e!4518169)))

(declare-fun res!3041010 () Bool)

(assert (=> b!7592749 (= res!3041010 (matchRSpec!4421 (regOne!40729 r!22341) s!13436))))

(assert (=> b!7592749 (=> res!3041010 e!4518169)))

(declare-fun b!7592750 () Bool)

(assert (=> b!7592750 (= e!4518166 call!696857)))

(assert (=> b!7592751 (= e!4518168 call!696858)))

(declare-fun d!2320184 () Bool)

(declare-fun c!1400711 () Bool)

(assert (=> d!2320184 (= c!1400711 (is-EmptyExpr!20108 r!22341))))

(assert (=> d!2320184 (= (matchRSpec!4421 r!22341 s!13436) e!4518166)))

(assert (=> b!7592747 (= e!4518165 call!696858)))

(declare-fun b!7592752 () Bool)

(assert (=> b!7592752 (= e!4518169 (matchRSpec!4421 (regTwo!40729 r!22341) s!13436))))

(declare-fun b!7592753 () Bool)

(assert (=> b!7592753 (= e!4518164 (= s!13436 (Cons!72867 (c!1400675 r!22341) Nil!72867)))))

(declare-fun b!7592754 () Bool)

(declare-fun c!1400712 () Bool)

(assert (=> b!7592754 (= c!1400712 (is-Union!20108 r!22341))))

(assert (=> b!7592754 (= e!4518164 e!4518163)))

(declare-fun bm!696853 () Bool)

(assert (=> bm!696853 (= call!696857 (isEmpty!41554 s!13436))))

(declare-fun b!7592755 () Bool)

(assert (=> b!7592755 (= e!4518163 e!4518165)))

(assert (=> b!7592755 (= c!1400714 (is-Star!20108 r!22341))))

(assert (= (and d!2320184 c!1400711) b!7592750))

(assert (= (and d!2320184 (not c!1400711)) b!7592745))

(assert (= (and b!7592745 res!3041008) b!7592746))

(assert (= (and b!7592746 c!1400713) b!7592753))

(assert (= (and b!7592746 (not c!1400713)) b!7592754))

(assert (= (and b!7592754 c!1400712) b!7592749))

(assert (= (and b!7592754 (not c!1400712)) b!7592755))

(assert (= (and b!7592749 (not res!3041010)) b!7592752))

(assert (= (and b!7592755 c!1400714) b!7592748))

(assert (= (and b!7592755 (not c!1400714)) b!7592747))

(assert (= (and b!7592748 (not res!3041009)) b!7592751))

(assert (= (or b!7592751 b!7592747) bm!696852))

(assert (= (or b!7592750 b!7592748) bm!696853))

(declare-fun m!8141080 () Bool)

(assert (=> bm!696852 m!8141080))

(declare-fun m!8141082 () Bool)

(assert (=> b!7592749 m!8141082))

(declare-fun m!8141084 () Bool)

(assert (=> b!7592752 m!8141084))

(assert (=> bm!696853 m!8140926))

(assert (=> b!7592501 d!2320184))

(declare-fun b!7592756 () Bool)

(declare-fun e!4518173 () Bool)

(declare-fun lt!2653590 () Bool)

(declare-fun call!696859 () Bool)

(assert (=> b!7592756 (= e!4518173 (= lt!2653590 call!696859))))

(declare-fun bm!696854 () Bool)

(assert (=> bm!696854 (= call!696859 (isEmpty!41554 s!13436))))

(declare-fun d!2320190 () Bool)

(assert (=> d!2320190 e!4518173))

(declare-fun c!1400716 () Bool)

(assert (=> d!2320190 (= c!1400716 (is-EmptyExpr!20108 r!22341))))

(declare-fun e!4518176 () Bool)

(assert (=> d!2320190 (= lt!2653590 e!4518176)))

(declare-fun c!1400715 () Bool)

(assert (=> d!2320190 (= c!1400715 (isEmpty!41554 s!13436))))

(assert (=> d!2320190 (validRegex!10536 r!22341)))

(assert (=> d!2320190 (= (matchR!9700 r!22341 s!13436) lt!2653590)))

(declare-fun b!7592757 () Bool)

(declare-fun res!3041015 () Bool)

(declare-fun e!4518174 () Bool)

(assert (=> b!7592757 (=> res!3041015 e!4518174)))

(assert (=> b!7592757 (= res!3041015 (not (isEmpty!41554 (tail!15165 s!13436))))))

(declare-fun b!7592758 () Bool)

(declare-fun e!4518175 () Bool)

(assert (=> b!7592758 (= e!4518175 (= (head!15625 s!13436) (c!1400675 r!22341)))))

(declare-fun b!7592759 () Bool)

(assert (=> b!7592759 (= e!4518176 (matchR!9700 (derivativeStep!5825 r!22341 (head!15625 s!13436)) (tail!15165 s!13436)))))

(declare-fun b!7592760 () Bool)

(declare-fun res!3041014 () Bool)

(declare-fun e!4518172 () Bool)

(assert (=> b!7592760 (=> res!3041014 e!4518172)))

(assert (=> b!7592760 (= res!3041014 e!4518175)))

(declare-fun res!3041013 () Bool)

(assert (=> b!7592760 (=> (not res!3041013) (not e!4518175))))

(assert (=> b!7592760 (= res!3041013 lt!2653590)))

(declare-fun b!7592761 () Bool)

(declare-fun res!3041018 () Bool)

(assert (=> b!7592761 (=> (not res!3041018) (not e!4518175))))

(assert (=> b!7592761 (= res!3041018 (isEmpty!41554 (tail!15165 s!13436)))))

(declare-fun b!7592762 () Bool)

(declare-fun e!4518170 () Bool)

(assert (=> b!7592762 (= e!4518170 (not lt!2653590))))

(declare-fun b!7592763 () Bool)

(assert (=> b!7592763 (= e!4518176 (nullable!8799 r!22341))))

(declare-fun b!7592764 () Bool)

(assert (=> b!7592764 (= e!4518173 e!4518170)))

(declare-fun c!1400717 () Bool)

(assert (=> b!7592764 (= c!1400717 (is-EmptyLang!20108 r!22341))))

(declare-fun b!7592765 () Bool)

(assert (=> b!7592765 (= e!4518174 (not (= (head!15625 s!13436) (c!1400675 r!22341))))))

(declare-fun b!7592766 () Bool)

(declare-fun e!4518171 () Bool)

(assert (=> b!7592766 (= e!4518172 e!4518171)))

(declare-fun res!3041016 () Bool)

(assert (=> b!7592766 (=> (not res!3041016) (not e!4518171))))

(assert (=> b!7592766 (= res!3041016 (not lt!2653590))))

(declare-fun b!7592767 () Bool)

(declare-fun res!3041017 () Bool)

(assert (=> b!7592767 (=> res!3041017 e!4518172)))

(assert (=> b!7592767 (= res!3041017 (not (is-ElementMatch!20108 r!22341)))))

(assert (=> b!7592767 (= e!4518170 e!4518172)))

(declare-fun b!7592768 () Bool)

(declare-fun res!3041011 () Bool)

(assert (=> b!7592768 (=> (not res!3041011) (not e!4518175))))

(assert (=> b!7592768 (= res!3041011 (not call!696859))))

(declare-fun b!7592769 () Bool)

(assert (=> b!7592769 (= e!4518171 e!4518174)))

(declare-fun res!3041012 () Bool)

(assert (=> b!7592769 (=> res!3041012 e!4518174)))

(assert (=> b!7592769 (= res!3041012 call!696859)))

(assert (= (and d!2320190 c!1400715) b!7592763))

(assert (= (and d!2320190 (not c!1400715)) b!7592759))

(assert (= (and d!2320190 c!1400716) b!7592756))

(assert (= (and d!2320190 (not c!1400716)) b!7592764))

(assert (= (and b!7592764 c!1400717) b!7592762))

(assert (= (and b!7592764 (not c!1400717)) b!7592767))

(assert (= (and b!7592767 (not res!3041017)) b!7592760))

(assert (= (and b!7592760 res!3041013) b!7592768))

(assert (= (and b!7592768 res!3041011) b!7592761))

(assert (= (and b!7592761 res!3041018) b!7592758))

(assert (= (and b!7592760 (not res!3041014)) b!7592766))

(assert (= (and b!7592766 res!3041016) b!7592769))

(assert (= (and b!7592769 (not res!3041012)) b!7592757))

(assert (= (and b!7592757 (not res!3041015)) b!7592765))

(assert (= (or b!7592756 b!7592768 b!7592769) bm!696854))

(declare-fun m!8141086 () Bool)

(assert (=> b!7592757 m!8141086))

(assert (=> b!7592757 m!8141086))

(declare-fun m!8141088 () Bool)

(assert (=> b!7592757 m!8141088))

(declare-fun m!8141090 () Bool)

(assert (=> b!7592765 m!8141090))

(assert (=> b!7592759 m!8141090))

(assert (=> b!7592759 m!8141090))

(declare-fun m!8141092 () Bool)

(assert (=> b!7592759 m!8141092))

(assert (=> b!7592759 m!8141086))

(assert (=> b!7592759 m!8141092))

(assert (=> b!7592759 m!8141086))

(declare-fun m!8141094 () Bool)

(assert (=> b!7592759 m!8141094))

(assert (=> bm!696854 m!8140926))

(assert (=> b!7592758 m!8141090))

(assert (=> b!7592761 m!8141086))

(assert (=> b!7592761 m!8141086))

(assert (=> b!7592761 m!8141088))

(assert (=> d!2320190 m!8140926))

(assert (=> d!2320190 m!8140898))

(declare-fun m!8141096 () Bool)

(assert (=> b!7592763 m!8141096))

(assert (=> b!7592501 d!2320190))

(declare-fun d!2320192 () Bool)

(assert (=> d!2320192 (= (matchR!9700 r!22341 s!13436) (matchRSpec!4421 r!22341 s!13436))))

(declare-fun lt!2653595 () Unit!167172)

(declare-fun choose!58672 (Regex!20108 List!72991) Unit!167172)

(assert (=> d!2320192 (= lt!2653595 (choose!58672 r!22341 s!13436))))

(assert (=> d!2320192 (validRegex!10536 r!22341)))

(assert (=> d!2320192 (= (mainMatchTheorem!4415 r!22341 s!13436) lt!2653595)))

(declare-fun bs!1941790 () Bool)

(assert (= bs!1941790 d!2320192))

(assert (=> bs!1941790 m!8140920))

(assert (=> bs!1941790 m!8140918))

(declare-fun m!8141098 () Bool)

(assert (=> bs!1941790 m!8141098))

(assert (=> bs!1941790 m!8140898))

(assert (=> b!7592501 d!2320192))

(declare-fun b!7592809 () Bool)

(declare-fun e!4518193 () Bool)

(declare-fun tp!2212808 () Bool)

(declare-fun tp!2212806 () Bool)

(assert (=> b!7592809 (= e!4518193 (and tp!2212808 tp!2212806))))

(declare-fun b!7592811 () Bool)

(declare-fun tp!2212807 () Bool)

(declare-fun tp!2212805 () Bool)

(assert (=> b!7592811 (= e!4518193 (and tp!2212807 tp!2212805))))

(assert (=> b!7592504 (= tp!2212774 e!4518193)))

(declare-fun b!7592810 () Bool)

(declare-fun tp!2212804 () Bool)

(assert (=> b!7592810 (= e!4518193 tp!2212804)))

(declare-fun b!7592808 () Bool)

(assert (=> b!7592808 (= e!4518193 tp_is_empty!50571)))

(assert (= (and b!7592504 (is-ElementMatch!20108 (reg!20437 r!22341))) b!7592808))

(assert (= (and b!7592504 (is-Concat!28953 (reg!20437 r!22341))) b!7592809))

(assert (= (and b!7592504 (is-Star!20108 (reg!20437 r!22341))) b!7592810))

(assert (= (and b!7592504 (is-Union!20108 (reg!20437 r!22341))) b!7592811))

(declare-fun b!7592813 () Bool)

(declare-fun e!4518194 () Bool)

(declare-fun tp!2212813 () Bool)

(declare-fun tp!2212811 () Bool)

(assert (=> b!7592813 (= e!4518194 (and tp!2212813 tp!2212811))))

(declare-fun b!7592815 () Bool)

(declare-fun tp!2212812 () Bool)

(declare-fun tp!2212810 () Bool)

(assert (=> b!7592815 (= e!4518194 (and tp!2212812 tp!2212810))))

(assert (=> b!7592499 (= tp!2212770 e!4518194)))

(declare-fun b!7592814 () Bool)

(declare-fun tp!2212809 () Bool)

(assert (=> b!7592814 (= e!4518194 tp!2212809)))

(declare-fun b!7592812 () Bool)

(assert (=> b!7592812 (= e!4518194 tp_is_empty!50571)))

(assert (= (and b!7592499 (is-ElementMatch!20108 (regOne!40728 r!22341))) b!7592812))

(assert (= (and b!7592499 (is-Concat!28953 (regOne!40728 r!22341))) b!7592813))

(assert (= (and b!7592499 (is-Star!20108 (regOne!40728 r!22341))) b!7592814))

(assert (= (and b!7592499 (is-Union!20108 (regOne!40728 r!22341))) b!7592815))

(declare-fun b!7592817 () Bool)

(declare-fun e!4518195 () Bool)

(declare-fun tp!2212818 () Bool)

(declare-fun tp!2212816 () Bool)

(assert (=> b!7592817 (= e!4518195 (and tp!2212818 tp!2212816))))

(declare-fun b!7592819 () Bool)

(declare-fun tp!2212817 () Bool)

(declare-fun tp!2212815 () Bool)

(assert (=> b!7592819 (= e!4518195 (and tp!2212817 tp!2212815))))

(assert (=> b!7592499 (= tp!2212775 e!4518195)))

(declare-fun b!7592818 () Bool)

(declare-fun tp!2212814 () Bool)

(assert (=> b!7592818 (= e!4518195 tp!2212814)))

(declare-fun b!7592816 () Bool)

(assert (=> b!7592816 (= e!4518195 tp_is_empty!50571)))

(assert (= (and b!7592499 (is-ElementMatch!20108 (regTwo!40728 r!22341))) b!7592816))

(assert (= (and b!7592499 (is-Concat!28953 (regTwo!40728 r!22341))) b!7592817))

(assert (= (and b!7592499 (is-Star!20108 (regTwo!40728 r!22341))) b!7592818))

(assert (= (and b!7592499 (is-Union!20108 (regTwo!40728 r!22341))) b!7592819))

(declare-fun b!7592821 () Bool)

(declare-fun e!4518196 () Bool)

(declare-fun tp!2212823 () Bool)

(declare-fun tp!2212821 () Bool)

(assert (=> b!7592821 (= e!4518196 (and tp!2212823 tp!2212821))))

(declare-fun b!7592823 () Bool)

(declare-fun tp!2212822 () Bool)

(declare-fun tp!2212820 () Bool)

(assert (=> b!7592823 (= e!4518196 (and tp!2212822 tp!2212820))))

(assert (=> b!7592508 (= tp!2212772 e!4518196)))

(declare-fun b!7592822 () Bool)

(declare-fun tp!2212819 () Bool)

(assert (=> b!7592822 (= e!4518196 tp!2212819)))

(declare-fun b!7592820 () Bool)

(assert (=> b!7592820 (= e!4518196 tp_is_empty!50571)))

(assert (= (and b!7592508 (is-ElementMatch!20108 (regOne!40729 r!22341))) b!7592820))

(assert (= (and b!7592508 (is-Concat!28953 (regOne!40729 r!22341))) b!7592821))

(assert (= (and b!7592508 (is-Star!20108 (regOne!40729 r!22341))) b!7592822))

(assert (= (and b!7592508 (is-Union!20108 (regOne!40729 r!22341))) b!7592823))

(declare-fun b!7592825 () Bool)

(declare-fun e!4518197 () Bool)

(declare-fun tp!2212828 () Bool)

(declare-fun tp!2212826 () Bool)

(assert (=> b!7592825 (= e!4518197 (and tp!2212828 tp!2212826))))

(declare-fun b!7592827 () Bool)

(declare-fun tp!2212827 () Bool)

(declare-fun tp!2212825 () Bool)

(assert (=> b!7592827 (= e!4518197 (and tp!2212827 tp!2212825))))

(assert (=> b!7592508 (= tp!2212773 e!4518197)))

(declare-fun b!7592826 () Bool)

(declare-fun tp!2212824 () Bool)

(assert (=> b!7592826 (= e!4518197 tp!2212824)))

(declare-fun b!7592824 () Bool)

(assert (=> b!7592824 (= e!4518197 tp_is_empty!50571)))

(assert (= (and b!7592508 (is-ElementMatch!20108 (regTwo!40729 r!22341))) b!7592824))

(assert (= (and b!7592508 (is-Concat!28953 (regTwo!40729 r!22341))) b!7592825))

(assert (= (and b!7592508 (is-Star!20108 (regTwo!40729 r!22341))) b!7592826))

(assert (= (and b!7592508 (is-Union!20108 (regTwo!40729 r!22341))) b!7592827))

(declare-fun b!7592832 () Bool)

(declare-fun e!4518200 () Bool)

(declare-fun tp!2212831 () Bool)

(assert (=> b!7592832 (= e!4518200 (and tp_is_empty!50571 tp!2212831))))

(assert (=> b!7592509 (= tp!2212771 e!4518200)))

(assert (= (and b!7592509 (is-Cons!72867 (t!387726 s!13436))) b!7592832))

(push 1)

(assert (not b!7592642))

(assert (not b!7592818))

(assert (not d!2320160))

(assert (not bm!696852))

(assert (not d!2320168))

(assert (not b!7592687))

(assert (not d!2320144))

(assert (not b!7592590))

(assert (not d!2320182))

(assert (not bm!696854))

(assert (not b!7592823))

(assert (not d!2320170))

(assert (not d!2320164))

(assert (not b!7592691))

(assert (not b!7592810))

(assert (not d!2320192))

(assert (not b!7592763))

(assert (not bm!696847))

(assert (not bm!696844))

(assert (not d!2320146))

(assert (not b!7592821))

(assert (not b!7592644))

(assert (not b!7592749))

(assert (not b!7592815))

(assert (not b!7592765))

(assert (not d!2320190))

(assert (not d!2320150))

(assert (not b!7592702))

(assert (not bm!696839))

(assert (not d!2320174))

(assert (not bm!696853))

(assert (not b!7592681))

(assert (not b!7592814))

(assert (not b!7592752))

(assert (not d!2320166))

(assert (not b!7592825))

(assert (not b!7592813))

(assert (not b!7592822))

(assert (not b!7592643))

(assert (not b!7592827))

(assert (not b!7592832))

(assert (not b!7592758))

(assert (not b!7592684))

(assert (not b!7592826))

(assert (not b!7592695))

(assert (not b!7592683))

(assert (not b!7592678))

(assert (not b!7592757))

(assert (not b!7592648))

(assert (not b!7592646))

(assert (not b!7592809))

(assert (not b!7592761))

(assert (not b!7592688))

(assert (not b!7592759))

(assert (not b!7592682))

(assert (not bm!696840))

(assert (not b!7592679))

(assert (not b!7592689))

(assert tp_is_empty!50571)

(assert (not d!2320178))

(assert (not b!7592650))

(assert (not b!7592819))

(assert (not bm!696846))

(assert (not b!7592693))

(assert (not b!7592811))

(assert (not bm!696843))

(assert (not b!7592817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2320214 () Bool)

(assert (=> d!2320214 true))

(assert (=> d!2320214 true))

(declare-fun res!3041115 () Bool)

(assert (=> d!2320214 (= (choose!58671 lambda!467288) res!3041115)))

(assert (=> d!2320166 d!2320214))

(assert (=> bm!696853 d!2320148))

(declare-fun d!2320216 () Bool)

(assert (=> d!2320216 (= (head!15625 s!13436) (h!79315 s!13436))))

(assert (=> b!7592758 d!2320216))

(declare-fun d!2320218 () Bool)

(assert (=> d!2320218 true))

(assert (=> d!2320218 true))

(declare-fun res!3041116 () Bool)

(assert (=> d!2320218 (= (choose!58671 lambda!467289) res!3041116)))

(assert (=> d!2320168 d!2320218))

(declare-fun d!2320220 () Bool)

(assert (=> d!2320220 (= (head!15625 (_1!37772 lt!2653542)) (h!79315 (_1!37772 lt!2653542)))))

(assert (=> b!7592643 d!2320220))

(declare-fun bm!696879 () Bool)

(declare-fun call!696884 () Bool)

(declare-fun c!1400759 () Bool)

(assert (=> bm!696879 (= call!696884 (validRegex!10536 (ite c!1400759 (regTwo!40729 (regOne!40728 r!22341)) (regOne!40728 (regOne!40728 r!22341)))))))

(declare-fun b!7593016 () Bool)

(declare-fun e!4518304 () Bool)

(declare-fun e!4518300 () Bool)

(assert (=> b!7593016 (= e!4518304 e!4518300)))

(assert (=> b!7593016 (= c!1400759 (is-Union!20108 (regOne!40728 r!22341)))))

(declare-fun b!7593017 () Bool)

(declare-fun e!4518303 () Bool)

(assert (=> b!7593017 (= e!4518303 call!696884)))

(declare-fun b!7593018 () Bool)

(declare-fun e!4518301 () Bool)

(assert (=> b!7593018 (= e!4518304 e!4518301)))

(declare-fun res!3041118 () Bool)

(assert (=> b!7593018 (= res!3041118 (not (nullable!8799 (reg!20437 (regOne!40728 r!22341)))))))

(assert (=> b!7593018 (=> (not res!3041118) (not e!4518301))))

(declare-fun bm!696880 () Bool)

(declare-fun c!1400760 () Bool)

(declare-fun call!696885 () Bool)

(assert (=> bm!696880 (= call!696885 (validRegex!10536 (ite c!1400760 (reg!20437 (regOne!40728 r!22341)) (ite c!1400759 (regOne!40729 (regOne!40728 r!22341)) (regTwo!40728 (regOne!40728 r!22341))))))))

(declare-fun b!7593019 () Bool)

(declare-fun res!3041120 () Bool)

(assert (=> b!7593019 (=> (not res!3041120) (not e!4518303))))

(declare-fun call!696883 () Bool)

(assert (=> b!7593019 (= res!3041120 call!696883)))

(assert (=> b!7593019 (= e!4518300 e!4518303)))

(declare-fun b!7593020 () Bool)

(declare-fun e!4518306 () Bool)

(assert (=> b!7593020 (= e!4518306 call!696883)))

(declare-fun bm!696878 () Bool)

(assert (=> bm!696878 (= call!696883 call!696885)))

(declare-fun d!2320222 () Bool)

(declare-fun res!3041119 () Bool)

(declare-fun e!4518302 () Bool)

(assert (=> d!2320222 (=> res!3041119 e!4518302)))

(assert (=> d!2320222 (= res!3041119 (is-ElementMatch!20108 (regOne!40728 r!22341)))))

(assert (=> d!2320222 (= (validRegex!10536 (regOne!40728 r!22341)) e!4518302)))

(declare-fun b!7593021 () Bool)

(declare-fun res!3041121 () Bool)

(declare-fun e!4518305 () Bool)

(assert (=> b!7593021 (=> res!3041121 e!4518305)))

(assert (=> b!7593021 (= res!3041121 (not (is-Concat!28953 (regOne!40728 r!22341))))))

(assert (=> b!7593021 (= e!4518300 e!4518305)))

(declare-fun b!7593022 () Bool)

(assert (=> b!7593022 (= e!4518302 e!4518304)))

(assert (=> b!7593022 (= c!1400760 (is-Star!20108 (regOne!40728 r!22341)))))

(declare-fun b!7593023 () Bool)

(assert (=> b!7593023 (= e!4518301 call!696885)))

(declare-fun b!7593024 () Bool)

(assert (=> b!7593024 (= e!4518305 e!4518306)))

(declare-fun res!3041117 () Bool)

(assert (=> b!7593024 (=> (not res!3041117) (not e!4518306))))

(assert (=> b!7593024 (= res!3041117 call!696884)))

(assert (= (and d!2320222 (not res!3041119)) b!7593022))

(assert (= (and b!7593022 c!1400760) b!7593018))

(assert (= (and b!7593022 (not c!1400760)) b!7593016))

(assert (= (and b!7593018 res!3041118) b!7593023))

(assert (= (and b!7593016 c!1400759) b!7593019))

(assert (= (and b!7593016 (not c!1400759)) b!7593021))

(assert (= (and b!7593019 res!3041120) b!7593017))

(assert (= (and b!7593021 (not res!3041121)) b!7593024))

(assert (= (and b!7593024 res!3041117) b!7593020))

(assert (= (or b!7593017 b!7593024) bm!696879))

(assert (= (or b!7593019 b!7593020) bm!696878))

(assert (= (or b!7593023 bm!696878) bm!696880))

(declare-fun m!8141186 () Bool)

(assert (=> bm!696879 m!8141186))

(declare-fun m!8141188 () Bool)

(assert (=> b!7593018 m!8141188))

(declare-fun m!8141190 () Bool)

(assert (=> bm!696880 m!8141190))

(assert (=> d!2320160 d!2320222))

(declare-fun d!2320224 () Bool)

(assert (=> d!2320224 (= (Exists!4340 lambda!467306) (choose!58671 lambda!467306))))

(declare-fun bs!1941801 () Bool)

(assert (= bs!1941801 d!2320224))

(declare-fun m!8141192 () Bool)

(assert (=> bs!1941801 m!8141192))

(assert (=> d!2320160 d!2320224))

(declare-fun bs!1941802 () Bool)

(declare-fun d!2320226 () Bool)

(assert (= bs!1941802 (and d!2320226 d!2320160)))

(declare-fun lambda!467330 () Int)

(assert (=> bs!1941802 (= lambda!467330 lambda!467306)))

(declare-fun bs!1941803 () Bool)

(assert (= bs!1941803 (and d!2320226 d!2320150)))

(assert (=> bs!1941803 (not (= lambda!467330 lambda!467303))))

(declare-fun bs!1941804 () Bool)

(assert (= bs!1941804 (and d!2320226 b!7592747)))

(assert (=> bs!1941804 (not (= lambda!467330 lambda!467321))))

(declare-fun bs!1941805 () Bool)

(assert (= bs!1941805 (and d!2320226 b!7592507)))

(assert (=> bs!1941805 (= lambda!467330 lambda!467288)))

(declare-fun bs!1941806 () Bool)

(assert (= bs!1941806 (and d!2320226 b!7592751)))

(assert (=> bs!1941806 (not (= lambda!467330 lambda!467320))))

(assert (=> bs!1941805 (not (= lambda!467330 lambda!467289))))

(assert (=> bs!1941803 (= lambda!467330 lambda!467302)))

(assert (=> d!2320226 true))

(assert (=> d!2320226 true))

(assert (=> d!2320226 true))

(assert (=> d!2320226 (= (isDefined!13951 (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) Nil!72867 s!13436 s!13436)) (Exists!4340 lambda!467330))))

(assert (=> d!2320226 true))

(declare-fun _$89!3121 () Unit!167172)

(assert (=> d!2320226 (= (choose!58670 (regOne!40728 r!22341) (regTwo!40728 r!22341) s!13436) _$89!3121)))

(declare-fun bs!1941807 () Bool)

(assert (= bs!1941807 d!2320226))

(assert (=> bs!1941807 m!8140914))

(assert (=> bs!1941807 m!8140914))

(assert (=> bs!1941807 m!8140996))

(declare-fun m!8141194 () Bool)

(assert (=> bs!1941807 m!8141194))

(assert (=> d!2320160 d!2320226))

(assert (=> d!2320160 d!2320170))

(declare-fun d!2320228 () Bool)

(assert (=> d!2320228 (= (isDefined!13951 (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) Nil!72867 s!13436 s!13436)) (not (isEmpty!41556 (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) Nil!72867 s!13436 s!13436))))))

(declare-fun bs!1941808 () Bool)

(assert (= bs!1941808 d!2320228))

(assert (=> bs!1941808 m!8140914))

(declare-fun m!8141196 () Bool)

(assert (=> bs!1941808 m!8141196))

(assert (=> d!2320160 d!2320228))

(assert (=> d!2320192 d!2320190))

(assert (=> d!2320192 d!2320184))

(declare-fun d!2320230 () Bool)

(assert (=> d!2320230 (= (matchR!9700 r!22341 s!13436) (matchRSpec!4421 r!22341 s!13436))))

(assert (=> d!2320230 true))

(declare-fun _$88!5819 () Unit!167172)

(assert (=> d!2320230 (= (choose!58672 r!22341 s!13436) _$88!5819)))

(declare-fun bs!1941809 () Bool)

(assert (= bs!1941809 d!2320230))

(assert (=> bs!1941809 m!8140920))

(assert (=> bs!1941809 m!8140918))

(assert (=> d!2320192 d!2320230))

(assert (=> d!2320192 d!2320142))

(declare-fun d!2320232 () Bool)

(assert (=> d!2320232 (= (isEmpty!41554 (_1!37772 lt!2653542)) (is-Nil!72867 (_1!37772 lt!2653542)))))

(assert (=> d!2320164 d!2320232))

(assert (=> d!2320164 d!2320222))

(declare-fun b!7593043 () Bool)

(declare-fun e!4518326 () Bool)

(declare-fun e!4518321 () Bool)

(assert (=> b!7593043 (= e!4518326 e!4518321)))

(declare-fun c!1400763 () Bool)

(assert (=> b!7593043 (= c!1400763 (is-Union!20108 (regTwo!40728 r!22341)))))

(declare-fun bm!696885 () Bool)

(declare-fun call!696891 () Bool)

(assert (=> bm!696885 (= call!696891 (lostCause!1884 (ite c!1400763 (regTwo!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341)))))))

(declare-fun d!2320234 () Bool)

(declare-fun lt!2653613 () Bool)

(declare-datatypes ((Option!17317 0))(
  ( (None!17316) (Some!17316 (v!54451 List!72991)) )
))
(declare-fun isEmpty!41558 (Option!17317) Bool)

(declare-fun getLanguageWitness!1124 (Regex!20108) Option!17317)

(assert (=> d!2320234 (= lt!2653613 (isEmpty!41558 (getLanguageWitness!1124 (regTwo!40728 r!22341))))))

(declare-fun e!4518325 () Bool)

(assert (=> d!2320234 (= lt!2653613 e!4518325)))

(declare-fun res!3041136 () Bool)

(assert (=> d!2320234 (=> (not res!3041136) (not e!4518325))))

(assert (=> d!2320234 (= res!3041136 (not (is-EmptyExpr!20108 (regTwo!40728 r!22341))))))

(assert (=> d!2320234 (= (lostCauseFct!533 (regTwo!40728 r!22341)) lt!2653613)))

(declare-fun b!7593044 () Bool)

(declare-fun e!4518324 () Bool)

(assert (=> b!7593044 (= e!4518325 e!4518324)))

(declare-fun res!3041138 () Bool)

(assert (=> b!7593044 (=> res!3041138 e!4518324)))

(assert (=> b!7593044 (= res!3041138 (is-EmptyLang!20108 (regTwo!40728 r!22341)))))

(declare-fun b!7593045 () Bool)

(declare-fun e!4518322 () Bool)

(assert (=> b!7593045 (= e!4518322 call!696891)))

(declare-fun b!7593046 () Bool)

(declare-fun e!4518323 () Bool)

(assert (=> b!7593046 (= e!4518323 call!696891)))

(declare-fun b!7593047 () Bool)

(assert (=> b!7593047 (= e!4518321 e!4518323)))

(declare-fun res!3041140 () Bool)

(declare-fun call!696890 () Bool)

(assert (=> b!7593047 (= res!3041140 call!696890)))

(assert (=> b!7593047 (=> (not res!3041140) (not e!4518323))))

(declare-fun b!7593048 () Bool)

(assert (=> b!7593048 (= e!4518321 e!4518322)))

(declare-fun res!3041137 () Bool)

(assert (=> b!7593048 (= res!3041137 call!696890)))

(assert (=> b!7593048 (=> res!3041137 e!4518322)))

(declare-fun bm!696886 () Bool)

(assert (=> bm!696886 (= call!696890 (lostCause!1884 (ite c!1400763 (regOne!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))))))

(declare-fun b!7593049 () Bool)

(assert (=> b!7593049 (= e!4518324 e!4518326)))

(declare-fun res!3041139 () Bool)

(assert (=> b!7593049 (=> (not res!3041139) (not e!4518326))))

(assert (=> b!7593049 (= res!3041139 (and (not (is-ElementMatch!20108 (regTwo!40728 r!22341))) (not (is-Star!20108 (regTwo!40728 r!22341)))))))

(assert (= (and d!2320234 res!3041136) b!7593044))

(assert (= (and b!7593044 (not res!3041138)) b!7593049))

(assert (= (and b!7593049 res!3041139) b!7593043))

(assert (= (and b!7593043 c!1400763) b!7593047))

(assert (= (and b!7593043 (not c!1400763)) b!7593048))

(assert (= (and b!7593047 res!3041140) b!7593046))

(assert (= (and b!7593048 (not res!3041137)) b!7593045))

(assert (= (or b!7593046 b!7593045) bm!696885))

(assert (= (or b!7593047 b!7593048) bm!696886))

(declare-fun m!8141198 () Bool)

(assert (=> bm!696885 m!8141198))

(declare-fun m!8141200 () Bool)

(assert (=> d!2320234 m!8141200))

(assert (=> d!2320234 m!8141200))

(declare-fun m!8141202 () Bool)

(assert (=> d!2320234 m!8141202))

(declare-fun m!8141204 () Bool)

(assert (=> bm!696886 m!8141204))

(assert (=> d!2320144 d!2320234))

(assert (=> bm!696843 d!2320232))

(declare-fun b!7593050 () Bool)

(declare-fun e!4518332 () Bool)

(declare-fun e!4518327 () Bool)

(assert (=> b!7593050 (= e!4518332 e!4518327)))

(declare-fun c!1400764 () Bool)

(assert (=> b!7593050 (= c!1400764 (is-Union!20108 r!22341))))

(declare-fun bm!696887 () Bool)

(declare-fun call!696893 () Bool)

(assert (=> bm!696887 (= call!696893 (lostCause!1884 (ite c!1400764 (regTwo!40729 r!22341) (regTwo!40728 r!22341))))))

(declare-fun d!2320236 () Bool)

(declare-fun lt!2653614 () Bool)

(assert (=> d!2320236 (= lt!2653614 (isEmpty!41558 (getLanguageWitness!1124 r!22341)))))

(declare-fun e!4518331 () Bool)

(assert (=> d!2320236 (= lt!2653614 e!4518331)))

(declare-fun res!3041141 () Bool)

(assert (=> d!2320236 (=> (not res!3041141) (not e!4518331))))

(assert (=> d!2320236 (= res!3041141 (not (is-EmptyExpr!20108 r!22341)))))

(assert (=> d!2320236 (= (lostCauseFct!533 r!22341) lt!2653614)))

(declare-fun b!7593051 () Bool)

(declare-fun e!4518330 () Bool)

(assert (=> b!7593051 (= e!4518331 e!4518330)))

(declare-fun res!3041143 () Bool)

(assert (=> b!7593051 (=> res!3041143 e!4518330)))

(assert (=> b!7593051 (= res!3041143 (is-EmptyLang!20108 r!22341))))

(declare-fun b!7593052 () Bool)

(declare-fun e!4518328 () Bool)

(assert (=> b!7593052 (= e!4518328 call!696893)))

(declare-fun b!7593053 () Bool)

(declare-fun e!4518329 () Bool)

(assert (=> b!7593053 (= e!4518329 call!696893)))

(declare-fun b!7593054 () Bool)

(assert (=> b!7593054 (= e!4518327 e!4518329)))

(declare-fun res!3041145 () Bool)

(declare-fun call!696892 () Bool)

(assert (=> b!7593054 (= res!3041145 call!696892)))

(assert (=> b!7593054 (=> (not res!3041145) (not e!4518329))))

(declare-fun b!7593055 () Bool)

(assert (=> b!7593055 (= e!4518327 e!4518328)))

(declare-fun res!3041142 () Bool)

(assert (=> b!7593055 (= res!3041142 call!696892)))

(assert (=> b!7593055 (=> res!3041142 e!4518328)))

(declare-fun bm!696888 () Bool)

(assert (=> bm!696888 (= call!696892 (lostCause!1884 (ite c!1400764 (regOne!40729 r!22341) (regOne!40728 r!22341))))))

(declare-fun b!7593056 () Bool)

(assert (=> b!7593056 (= e!4518330 e!4518332)))

(declare-fun res!3041144 () Bool)

(assert (=> b!7593056 (=> (not res!3041144) (not e!4518332))))

(assert (=> b!7593056 (= res!3041144 (and (not (is-ElementMatch!20108 r!22341)) (not (is-Star!20108 r!22341))))))

(assert (= (and d!2320236 res!3041141) b!7593051))

(assert (= (and b!7593051 (not res!3041143)) b!7593056))

(assert (= (and b!7593056 res!3041144) b!7593050))

(assert (= (and b!7593050 c!1400764) b!7593054))

(assert (= (and b!7593050 (not c!1400764)) b!7593055))

(assert (= (and b!7593054 res!3041145) b!7593053))

(assert (= (and b!7593055 (not res!3041142)) b!7593052))

(assert (= (or b!7593053 b!7593052) bm!696887))

(assert (= (or b!7593054 b!7593055) bm!696888))

(declare-fun m!8141206 () Bool)

(assert (=> bm!696887 m!8141206))

(declare-fun m!8141208 () Bool)

(assert (=> d!2320236 m!8141208))

(assert (=> d!2320236 m!8141208))

(declare-fun m!8141210 () Bool)

(assert (=> d!2320236 m!8141210))

(declare-fun m!8141212 () Bool)

(assert (=> bm!696888 m!8141212))

(assert (=> d!2320182 d!2320236))

(declare-fun d!2320238 () Bool)

(declare-fun nullableFct!3501 (Regex!20108) Bool)

(assert (=> d!2320238 (= (nullable!8799 (reg!20437 r!22341)) (nullableFct!3501 (reg!20437 r!22341)))))

(declare-fun bs!1941810 () Bool)

(assert (= bs!1941810 d!2320238))

(declare-fun m!8141214 () Bool)

(assert (=> bs!1941810 m!8141214))

(assert (=> b!7592590 d!2320238))

(declare-fun d!2320240 () Bool)

(assert (=> d!2320240 (= (nullable!8799 (reg!20437 (regTwo!40728 r!22341))) (nullableFct!3501 (reg!20437 (regTwo!40728 r!22341))))))

(declare-fun bs!1941811 () Bool)

(assert (= bs!1941811 d!2320240))

(declare-fun m!8141216 () Bool)

(assert (=> bs!1941811 m!8141216))

(assert (=> b!7592702 d!2320240))

(declare-fun b!7593057 () Bool)

(declare-fun e!4518338 () Bool)

(declare-fun e!4518333 () Bool)

(assert (=> b!7593057 (= e!4518338 e!4518333)))

(declare-fun c!1400765 () Bool)

(assert (=> b!7593057 (= c!1400765 (is-Union!20108 (regOne!40728 r!22341)))))

(declare-fun bm!696889 () Bool)

(declare-fun call!696895 () Bool)

(assert (=> bm!696889 (= call!696895 (lostCause!1884 (ite c!1400765 (regTwo!40729 (regOne!40728 r!22341)) (regTwo!40728 (regOne!40728 r!22341)))))))

(declare-fun d!2320242 () Bool)

(declare-fun lt!2653615 () Bool)

(assert (=> d!2320242 (= lt!2653615 (isEmpty!41558 (getLanguageWitness!1124 (regOne!40728 r!22341))))))

(declare-fun e!4518337 () Bool)

(assert (=> d!2320242 (= lt!2653615 e!4518337)))

(declare-fun res!3041146 () Bool)

(assert (=> d!2320242 (=> (not res!3041146) (not e!4518337))))

(assert (=> d!2320242 (= res!3041146 (not (is-EmptyExpr!20108 (regOne!40728 r!22341))))))

(assert (=> d!2320242 (= (lostCauseFct!533 (regOne!40728 r!22341)) lt!2653615)))

(declare-fun b!7593058 () Bool)

(declare-fun e!4518336 () Bool)

(assert (=> b!7593058 (= e!4518337 e!4518336)))

(declare-fun res!3041148 () Bool)

(assert (=> b!7593058 (=> res!3041148 e!4518336)))

(assert (=> b!7593058 (= res!3041148 (is-EmptyLang!20108 (regOne!40728 r!22341)))))

(declare-fun b!7593059 () Bool)

(declare-fun e!4518334 () Bool)

(assert (=> b!7593059 (= e!4518334 call!696895)))

(declare-fun b!7593060 () Bool)

(declare-fun e!4518335 () Bool)

(assert (=> b!7593060 (= e!4518335 call!696895)))

(declare-fun b!7593061 () Bool)

(assert (=> b!7593061 (= e!4518333 e!4518335)))

(declare-fun res!3041150 () Bool)

(declare-fun call!696894 () Bool)

(assert (=> b!7593061 (= res!3041150 call!696894)))

(assert (=> b!7593061 (=> (not res!3041150) (not e!4518335))))

(declare-fun b!7593062 () Bool)

(assert (=> b!7593062 (= e!4518333 e!4518334)))

(declare-fun res!3041147 () Bool)

(assert (=> b!7593062 (= res!3041147 call!696894)))

(assert (=> b!7593062 (=> res!3041147 e!4518334)))

(declare-fun bm!696890 () Bool)

(assert (=> bm!696890 (= call!696894 (lostCause!1884 (ite c!1400765 (regOne!40729 (regOne!40728 r!22341)) (regOne!40728 (regOne!40728 r!22341)))))))

(declare-fun b!7593063 () Bool)

(assert (=> b!7593063 (= e!4518336 e!4518338)))

(declare-fun res!3041149 () Bool)

(assert (=> b!7593063 (=> (not res!3041149) (not e!4518338))))

(assert (=> b!7593063 (= res!3041149 (and (not (is-ElementMatch!20108 (regOne!40728 r!22341))) (not (is-Star!20108 (regOne!40728 r!22341)))))))

(assert (= (and d!2320242 res!3041146) b!7593058))

(assert (= (and b!7593058 (not res!3041148)) b!7593063))

(assert (= (and b!7593063 res!3041149) b!7593057))

(assert (= (and b!7593057 c!1400765) b!7593061))

(assert (= (and b!7593057 (not c!1400765)) b!7593062))

(assert (= (and b!7593061 res!3041150) b!7593060))

(assert (= (and b!7593062 (not res!3041147)) b!7593059))

(assert (= (or b!7593060 b!7593059) bm!696889))

(assert (= (or b!7593061 b!7593062) bm!696890))

(declare-fun m!8141218 () Bool)

(assert (=> bm!696889 m!8141218))

(declare-fun m!8141220 () Bool)

(assert (=> d!2320242 m!8141220))

(assert (=> d!2320242 m!8141220))

(declare-fun m!8141222 () Bool)

(assert (=> d!2320242 m!8141222))

(declare-fun m!8141224 () Bool)

(assert (=> bm!696890 m!8141224))

(assert (=> d!2320146 d!2320242))

(declare-fun b!7593064 () Bool)

(declare-fun e!4518342 () Bool)

(declare-fun lt!2653616 () Bool)

(declare-fun call!696896 () Bool)

(assert (=> b!7593064 (= e!4518342 (= lt!2653616 call!696896))))

(declare-fun bm!696891 () Bool)

(assert (=> bm!696891 (= call!696896 (isEmpty!41554 s!13436))))

(declare-fun d!2320244 () Bool)

(assert (=> d!2320244 e!4518342))

(declare-fun c!1400767 () Bool)

(assert (=> d!2320244 (= c!1400767 (is-EmptyExpr!20108 (regTwo!40728 r!22341)))))

(declare-fun e!4518345 () Bool)

(assert (=> d!2320244 (= lt!2653616 e!4518345)))

(declare-fun c!1400766 () Bool)

(assert (=> d!2320244 (= c!1400766 (isEmpty!41554 s!13436))))

(assert (=> d!2320244 (validRegex!10536 (regTwo!40728 r!22341))))

(assert (=> d!2320244 (= (matchR!9700 (regTwo!40728 r!22341) s!13436) lt!2653616)))

(declare-fun b!7593065 () Bool)

(declare-fun res!3041155 () Bool)

(declare-fun e!4518343 () Bool)

(assert (=> b!7593065 (=> res!3041155 e!4518343)))

(assert (=> b!7593065 (= res!3041155 (not (isEmpty!41554 (tail!15165 s!13436))))))

(declare-fun b!7593066 () Bool)

(declare-fun e!4518344 () Bool)

(assert (=> b!7593066 (= e!4518344 (= (head!15625 s!13436) (c!1400675 (regTwo!40728 r!22341))))))

(declare-fun b!7593067 () Bool)

(assert (=> b!7593067 (= e!4518345 (matchR!9700 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 s!13436)) (tail!15165 s!13436)))))

(declare-fun b!7593068 () Bool)

(declare-fun res!3041154 () Bool)

(declare-fun e!4518341 () Bool)

(assert (=> b!7593068 (=> res!3041154 e!4518341)))

(assert (=> b!7593068 (= res!3041154 e!4518344)))

(declare-fun res!3041153 () Bool)

(assert (=> b!7593068 (=> (not res!3041153) (not e!4518344))))

(assert (=> b!7593068 (= res!3041153 lt!2653616)))

(declare-fun b!7593069 () Bool)

(declare-fun res!3041158 () Bool)

(assert (=> b!7593069 (=> (not res!3041158) (not e!4518344))))

(assert (=> b!7593069 (= res!3041158 (isEmpty!41554 (tail!15165 s!13436)))))

(declare-fun b!7593070 () Bool)

(declare-fun e!4518339 () Bool)

(assert (=> b!7593070 (= e!4518339 (not lt!2653616))))

(declare-fun b!7593071 () Bool)

(assert (=> b!7593071 (= e!4518345 (nullable!8799 (regTwo!40728 r!22341)))))

(declare-fun b!7593072 () Bool)

(assert (=> b!7593072 (= e!4518342 e!4518339)))

(declare-fun c!1400768 () Bool)

(assert (=> b!7593072 (= c!1400768 (is-EmptyLang!20108 (regTwo!40728 r!22341)))))

(declare-fun b!7593073 () Bool)

(assert (=> b!7593073 (= e!4518343 (not (= (head!15625 s!13436) (c!1400675 (regTwo!40728 r!22341)))))))

(declare-fun b!7593074 () Bool)

(declare-fun e!4518340 () Bool)

(assert (=> b!7593074 (= e!4518341 e!4518340)))

(declare-fun res!3041156 () Bool)

(assert (=> b!7593074 (=> (not res!3041156) (not e!4518340))))

(assert (=> b!7593074 (= res!3041156 (not lt!2653616))))

(declare-fun b!7593075 () Bool)

(declare-fun res!3041157 () Bool)

(assert (=> b!7593075 (=> res!3041157 e!4518341)))

(assert (=> b!7593075 (= res!3041157 (not (is-ElementMatch!20108 (regTwo!40728 r!22341))))))

(assert (=> b!7593075 (= e!4518339 e!4518341)))

(declare-fun b!7593076 () Bool)

(declare-fun res!3041151 () Bool)

(assert (=> b!7593076 (=> (not res!3041151) (not e!4518344))))

(assert (=> b!7593076 (= res!3041151 (not call!696896))))

(declare-fun b!7593077 () Bool)

(assert (=> b!7593077 (= e!4518340 e!4518343)))

(declare-fun res!3041152 () Bool)

(assert (=> b!7593077 (=> res!3041152 e!4518343)))

(assert (=> b!7593077 (= res!3041152 call!696896)))

(assert (= (and d!2320244 c!1400766) b!7593071))

(assert (= (and d!2320244 (not c!1400766)) b!7593067))

(assert (= (and d!2320244 c!1400767) b!7593064))

(assert (= (and d!2320244 (not c!1400767)) b!7593072))

(assert (= (and b!7593072 c!1400768) b!7593070))

(assert (= (and b!7593072 (not c!1400768)) b!7593075))

(assert (= (and b!7593075 (not res!3041157)) b!7593068))

(assert (= (and b!7593068 res!3041153) b!7593076))

(assert (= (and b!7593076 res!3041151) b!7593069))

(assert (= (and b!7593069 res!3041158) b!7593066))

(assert (= (and b!7593068 (not res!3041154)) b!7593074))

(assert (= (and b!7593074 res!3041156) b!7593077))

(assert (= (and b!7593077 (not res!3041152)) b!7593065))

(assert (= (and b!7593065 (not res!3041155)) b!7593073))

(assert (= (or b!7593064 b!7593076 b!7593077) bm!696891))

(assert (=> b!7593065 m!8141086))

(assert (=> b!7593065 m!8141086))

(assert (=> b!7593065 m!8141088))

(assert (=> b!7593073 m!8141090))

(assert (=> b!7593067 m!8141090))

(assert (=> b!7593067 m!8141090))

(declare-fun m!8141226 () Bool)

(assert (=> b!7593067 m!8141226))

(assert (=> b!7593067 m!8141086))

(assert (=> b!7593067 m!8141226))

(assert (=> b!7593067 m!8141086))

(declare-fun m!8141228 () Bool)

(assert (=> b!7593067 m!8141228))

(assert (=> bm!696891 m!8140926))

(assert (=> b!7593066 m!8141090))

(assert (=> b!7593069 m!8141086))

(assert (=> b!7593069 m!8141086))

(assert (=> b!7593069 m!8141088))

(assert (=> d!2320244 m!8140926))

(assert (=> d!2320244 m!8140928))

(assert (=> b!7593071 m!8141062))

(assert (=> b!7592678 d!2320244))

(declare-fun b!7593089 () Bool)

(declare-fun e!4518350 () Bool)

(declare-fun lt!2653619 () List!72991)

(assert (=> b!7593089 (= e!4518350 (or (not (= (t!387726 s!13436) Nil!72867)) (= lt!2653619 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)))))))

(declare-fun b!7593088 () Bool)

(declare-fun res!3041163 () Bool)

(assert (=> b!7593088 (=> (not res!3041163) (not e!4518350))))

(declare-fun size!42505 (List!72991) Int)

(assert (=> b!7593088 (= res!3041163 (= (size!42505 lt!2653619) (+ (size!42505 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867))) (size!42505 (t!387726 s!13436)))))))

(declare-fun b!7593086 () Bool)

(declare-fun e!4518351 () List!72991)

(assert (=> b!7593086 (= e!4518351 (t!387726 s!13436))))

(declare-fun d!2320246 () Bool)

(assert (=> d!2320246 e!4518350))

(declare-fun res!3041164 () Bool)

(assert (=> d!2320246 (=> (not res!3041164) (not e!4518350))))

(declare-fun content!15412 (List!72991) (Set C!40542))

(assert (=> d!2320246 (= res!3041164 (= (content!15412 lt!2653619) (set.union (content!15412 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867))) (content!15412 (t!387726 s!13436)))))))

(assert (=> d!2320246 (= lt!2653619 e!4518351)))

(declare-fun c!1400771 () Bool)

(assert (=> d!2320246 (= c!1400771 (is-Nil!72867 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867))))))

(assert (=> d!2320246 (= (++!17516 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (t!387726 s!13436)) lt!2653619)))

(declare-fun b!7593087 () Bool)

(assert (=> b!7593087 (= e!4518351 (Cons!72867 (h!79315 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867))) (++!17516 (t!387726 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867))) (t!387726 s!13436))))))

(assert (= (and d!2320246 c!1400771) b!7593086))

(assert (= (and d!2320246 (not c!1400771)) b!7593087))

(assert (= (and d!2320246 res!3041164) b!7593088))

(assert (= (and b!7593088 res!3041163) b!7593089))

(declare-fun m!8141230 () Bool)

(assert (=> b!7593088 m!8141230))

(assert (=> b!7593088 m!8141030))

(declare-fun m!8141232 () Bool)

(assert (=> b!7593088 m!8141232))

(declare-fun m!8141234 () Bool)

(assert (=> b!7593088 m!8141234))

(declare-fun m!8141236 () Bool)

(assert (=> d!2320246 m!8141236))

(assert (=> d!2320246 m!8141030))

(declare-fun m!8141238 () Bool)

(assert (=> d!2320246 m!8141238))

(declare-fun m!8141240 () Bool)

(assert (=> d!2320246 m!8141240))

(declare-fun m!8141242 () Bool)

(assert (=> b!7593087 m!8141242))

(assert (=> b!7592682 d!2320246))

(declare-fun b!7593093 () Bool)

(declare-fun e!4518352 () Bool)

(declare-fun lt!2653620 () List!72991)

(assert (=> b!7593093 (= e!4518352 (or (not (= (Cons!72867 (h!79315 s!13436) Nil!72867) Nil!72867)) (= lt!2653620 Nil!72867)))))

(declare-fun b!7593092 () Bool)

(declare-fun res!3041165 () Bool)

(assert (=> b!7593092 (=> (not res!3041165) (not e!4518352))))

(assert (=> b!7593092 (= res!3041165 (= (size!42505 lt!2653620) (+ (size!42505 Nil!72867) (size!42505 (Cons!72867 (h!79315 s!13436) Nil!72867)))))))

(declare-fun b!7593090 () Bool)

(declare-fun e!4518353 () List!72991)

(assert (=> b!7593090 (= e!4518353 (Cons!72867 (h!79315 s!13436) Nil!72867))))

(declare-fun d!2320248 () Bool)

(assert (=> d!2320248 e!4518352))

(declare-fun res!3041166 () Bool)

(assert (=> d!2320248 (=> (not res!3041166) (not e!4518352))))

(assert (=> d!2320248 (= res!3041166 (= (content!15412 lt!2653620) (set.union (content!15412 Nil!72867) (content!15412 (Cons!72867 (h!79315 s!13436) Nil!72867)))))))

(assert (=> d!2320248 (= lt!2653620 e!4518353)))

(declare-fun c!1400772 () Bool)

(assert (=> d!2320248 (= c!1400772 (is-Nil!72867 Nil!72867))))

(assert (=> d!2320248 (= (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) lt!2653620)))

(declare-fun b!7593091 () Bool)

(assert (=> b!7593091 (= e!4518353 (Cons!72867 (h!79315 Nil!72867) (++!17516 (t!387726 Nil!72867) (Cons!72867 (h!79315 s!13436) Nil!72867))))))

(assert (= (and d!2320248 c!1400772) b!7593090))

(assert (= (and d!2320248 (not c!1400772)) b!7593091))

(assert (= (and d!2320248 res!3041166) b!7593092))

(assert (= (and b!7593092 res!3041165) b!7593093))

(declare-fun m!8141244 () Bool)

(assert (=> b!7593092 m!8141244))

(declare-fun m!8141246 () Bool)

(assert (=> b!7593092 m!8141246))

(declare-fun m!8141248 () Bool)

(assert (=> b!7593092 m!8141248))

(declare-fun m!8141250 () Bool)

(assert (=> d!2320248 m!8141250))

(declare-fun m!8141252 () Bool)

(assert (=> d!2320248 m!8141252))

(declare-fun m!8141254 () Bool)

(assert (=> d!2320248 m!8141254))

(declare-fun m!8141256 () Bool)

(assert (=> b!7593091 m!8141256))

(assert (=> b!7592682 d!2320248))

(declare-fun d!2320250 () Bool)

(assert (=> d!2320250 (= (++!17516 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (t!387726 s!13436)) s!13436)))

(declare-fun lt!2653623 () Unit!167172)

(declare-fun choose!58677 (List!72991 C!40542 List!72991 List!72991) Unit!167172)

(assert (=> d!2320250 (= lt!2653623 (choose!58677 Nil!72867 (h!79315 s!13436) (t!387726 s!13436) s!13436))))

(assert (=> d!2320250 (= (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) (t!387726 s!13436))) s!13436)))

(assert (=> d!2320250 (= (lemmaMoveElementToOtherListKeepsConcatEq!3203 Nil!72867 (h!79315 s!13436) (t!387726 s!13436) s!13436) lt!2653623)))

(declare-fun bs!1941812 () Bool)

(assert (= bs!1941812 d!2320250))

(assert (=> bs!1941812 m!8141030))

(assert (=> bs!1941812 m!8141030))

(assert (=> bs!1941812 m!8141032))

(declare-fun m!8141258 () Bool)

(assert (=> bs!1941812 m!8141258))

(declare-fun m!8141260 () Bool)

(assert (=> bs!1941812 m!8141260))

(assert (=> b!7592682 d!2320250))

(declare-fun b!7593094 () Bool)

(declare-fun e!4518355 () Option!17315)

(declare-fun e!4518356 () Option!17315)

(assert (=> b!7593094 (= e!4518355 e!4518356)))

(declare-fun c!1400774 () Bool)

(assert (=> b!7593094 (= c!1400774 (is-Nil!72867 (t!387726 s!13436)))))

(declare-fun b!7593095 () Bool)

(declare-fun e!4518357 () Bool)

(assert (=> b!7593095 (= e!4518357 (matchR!9700 (regTwo!40728 r!22341) (t!387726 s!13436)))))

(declare-fun b!7593096 () Bool)

(declare-fun e!4518358 () Bool)

(declare-fun lt!2653626 () Option!17315)

(assert (=> b!7593096 (= e!4518358 (= (++!17516 (_1!37772 (get!25632 lt!2653626)) (_2!37772 (get!25632 lt!2653626))) s!13436))))

(declare-fun b!7593097 () Bool)

(assert (=> b!7593097 (= e!4518355 (Some!17314 (tuple2!68939 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (t!387726 s!13436))))))

(declare-fun b!7593098 () Bool)

(declare-fun res!3041167 () Bool)

(assert (=> b!7593098 (=> (not res!3041167) (not e!4518358))))

(assert (=> b!7593098 (= res!3041167 (matchR!9700 (regOne!40728 r!22341) (_1!37772 (get!25632 lt!2653626))))))

(declare-fun d!2320252 () Bool)

(declare-fun e!4518354 () Bool)

(assert (=> d!2320252 e!4518354))

(declare-fun res!3041168 () Bool)

(assert (=> d!2320252 (=> res!3041168 e!4518354)))

(assert (=> d!2320252 (= res!3041168 e!4518358)))

(declare-fun res!3041169 () Bool)

(assert (=> d!2320252 (=> (not res!3041169) (not e!4518358))))

(assert (=> d!2320252 (= res!3041169 (isDefined!13951 lt!2653626))))

(assert (=> d!2320252 (= lt!2653626 e!4518355)))

(declare-fun c!1400773 () Bool)

(assert (=> d!2320252 (= c!1400773 e!4518357)))

(declare-fun res!3041171 () Bool)

(assert (=> d!2320252 (=> (not res!3041171) (not e!4518357))))

(assert (=> d!2320252 (= res!3041171 (matchR!9700 (regOne!40728 r!22341) (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867))))))

(assert (=> d!2320252 (validRegex!10536 (regOne!40728 r!22341))))

(assert (=> d!2320252 (= (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (t!387726 s!13436) s!13436) lt!2653626)))

(declare-fun b!7593099 () Bool)

(declare-fun lt!2653625 () Unit!167172)

(declare-fun lt!2653624 () Unit!167172)

(assert (=> b!7593099 (= lt!2653625 lt!2653624)))

(assert (=> b!7593099 (= (++!17516 (++!17516 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (Cons!72867 (h!79315 (t!387726 s!13436)) Nil!72867)) (t!387726 (t!387726 s!13436))) s!13436)))

(assert (=> b!7593099 (= lt!2653624 (lemmaMoveElementToOtherListKeepsConcatEq!3203 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (h!79315 (t!387726 s!13436)) (t!387726 (t!387726 s!13436)) s!13436))))

(assert (=> b!7593099 (= e!4518356 (findConcatSeparation!3365 (regOne!40728 r!22341) (regTwo!40728 r!22341) (++!17516 (++!17516 Nil!72867 (Cons!72867 (h!79315 s!13436) Nil!72867)) (Cons!72867 (h!79315 (t!387726 s!13436)) Nil!72867)) (t!387726 (t!387726 s!13436)) s!13436))))

(declare-fun b!7593100 () Bool)

(assert (=> b!7593100 (= e!4518354 (not (isDefined!13951 lt!2653626)))))

(declare-fun b!7593101 () Bool)

(declare-fun res!3041170 () Bool)

(assert (=> b!7593101 (=> (not res!3041170) (not e!4518358))))

(assert (=> b!7593101 (= res!3041170 (matchR!9700 (regTwo!40728 r!22341) (_2!37772 (get!25632 lt!2653626))))))

(declare-fun b!7593102 () Bool)

(assert (=> b!7593102 (= e!4518356 None!17314)))

(assert (= (and d!2320252 res!3041171) b!7593095))

(assert (= (and d!2320252 c!1400773) b!7593097))

(assert (= (and d!2320252 (not c!1400773)) b!7593094))

(assert (= (and b!7593094 c!1400774) b!7593102))

(assert (= (and b!7593094 (not c!1400774)) b!7593099))

(assert (= (and d!2320252 res!3041169) b!7593098))

(assert (= (and b!7593098 res!3041167) b!7593101))

(assert (= (and b!7593101 res!3041170) b!7593096))

(assert (= (and d!2320252 (not res!3041168)) b!7593100))

(declare-fun m!8141262 () Bool)

(assert (=> d!2320252 m!8141262))

(assert (=> d!2320252 m!8141030))

(declare-fun m!8141264 () Bool)

(assert (=> d!2320252 m!8141264))

(assert (=> d!2320252 m!8140990))

(assert (=> b!7593099 m!8141030))

(declare-fun m!8141266 () Bool)

(assert (=> b!7593099 m!8141266))

(assert (=> b!7593099 m!8141266))

(declare-fun m!8141268 () Bool)

(assert (=> b!7593099 m!8141268))

(assert (=> b!7593099 m!8141030))

(declare-fun m!8141270 () Bool)

(assert (=> b!7593099 m!8141270))

(assert (=> b!7593099 m!8141266))

(declare-fun m!8141272 () Bool)

(assert (=> b!7593099 m!8141272))

(declare-fun m!8141274 () Bool)

(assert (=> b!7593098 m!8141274))

(declare-fun m!8141276 () Bool)

(assert (=> b!7593098 m!8141276))

(assert (=> b!7593101 m!8141274))

(declare-fun m!8141278 () Bool)

(assert (=> b!7593101 m!8141278))

(assert (=> b!7593100 m!8141262))

(declare-fun m!8141280 () Bool)

(assert (=> b!7593095 m!8141280))

(assert (=> b!7593096 m!8141274))

(declare-fun m!8141282 () Bool)

(assert (=> b!7593096 m!8141282))

(assert (=> b!7592682 d!2320252))

(declare-fun bs!1941813 () Bool)

(declare-fun b!7593109 () Bool)

(assert (= bs!1941813 (and b!7593109 d!2320226)))

(declare-fun lambda!467331 () Int)

(assert (=> bs!1941813 (not (= lambda!467331 lambda!467330))))

(declare-fun bs!1941814 () Bool)

(assert (= bs!1941814 (and b!7593109 d!2320160)))

(assert (=> bs!1941814 (not (= lambda!467331 lambda!467306))))

(declare-fun bs!1941815 () Bool)

(assert (= bs!1941815 (and b!7593109 d!2320150)))

(assert (=> bs!1941815 (not (= lambda!467331 lambda!467303))))

(declare-fun bs!1941816 () Bool)

(assert (= bs!1941816 (and b!7593109 b!7592747)))

(assert (=> bs!1941816 (not (= lambda!467331 lambda!467321))))

(declare-fun bs!1941817 () Bool)

(assert (= bs!1941817 (and b!7593109 b!7592507)))

(assert (=> bs!1941817 (not (= lambda!467331 lambda!467288))))

(declare-fun bs!1941818 () Bool)

(assert (= bs!1941818 (and b!7593109 b!7592751)))

(assert (=> bs!1941818 (= (and (= (reg!20437 (regTwo!40729 r!22341)) (reg!20437 r!22341)) (= (regTwo!40729 r!22341) r!22341)) (= lambda!467331 lambda!467320))))

(assert (=> bs!1941817 (not (= lambda!467331 lambda!467289))))

(assert (=> bs!1941815 (not (= lambda!467331 lambda!467302))))

(assert (=> b!7593109 true))

(assert (=> b!7593109 true))

(declare-fun bs!1941819 () Bool)

(declare-fun b!7593105 () Bool)

(assert (= bs!1941819 (and b!7593105 d!2320226)))

(declare-fun lambda!467332 () Int)

(assert (=> bs!1941819 (not (= lambda!467332 lambda!467330))))

(declare-fun bs!1941820 () Bool)

(assert (= bs!1941820 (and b!7593105 b!7593109)))

(assert (=> bs!1941820 (not (= lambda!467332 lambda!467331))))

(declare-fun bs!1941821 () Bool)

(assert (= bs!1941821 (and b!7593105 d!2320160)))

(assert (=> bs!1941821 (not (= lambda!467332 lambda!467306))))

(declare-fun bs!1941822 () Bool)

(assert (= bs!1941822 (and b!7593105 d!2320150)))

(assert (=> bs!1941822 (= (and (= (regOne!40728 (regTwo!40729 r!22341)) (regOne!40728 r!22341)) (= (regTwo!40728 (regTwo!40729 r!22341)) (regTwo!40728 r!22341))) (= lambda!467332 lambda!467303))))

(declare-fun bs!1941823 () Bool)

(assert (= bs!1941823 (and b!7593105 b!7592747)))

(assert (=> bs!1941823 (= (and (= (regOne!40728 (regTwo!40729 r!22341)) (regOne!40728 r!22341)) (= (regTwo!40728 (regTwo!40729 r!22341)) (regTwo!40728 r!22341))) (= lambda!467332 lambda!467321))))

(declare-fun bs!1941824 () Bool)

(assert (= bs!1941824 (and b!7593105 b!7592507)))

(assert (=> bs!1941824 (not (= lambda!467332 lambda!467288))))

(declare-fun bs!1941825 () Bool)

(assert (= bs!1941825 (and b!7593105 b!7592751)))

(assert (=> bs!1941825 (not (= lambda!467332 lambda!467320))))

(assert (=> bs!1941824 (= (and (= (regOne!40728 (regTwo!40729 r!22341)) (regOne!40728 r!22341)) (= (regTwo!40728 (regTwo!40729 r!22341)) (regTwo!40728 r!22341))) (= lambda!467332 lambda!467289))))

(assert (=> bs!1941822 (not (= lambda!467332 lambda!467302))))

(assert (=> b!7593105 true))

(assert (=> b!7593105 true))

(declare-fun b!7593103 () Bool)

(declare-fun e!4518362 () Bool)

(declare-fun e!4518363 () Bool)

(assert (=> b!7593103 (= e!4518362 e!4518363)))

(declare-fun res!3041172 () Bool)

(assert (=> b!7593103 (= res!3041172 (not (is-EmptyLang!20108 (regTwo!40729 r!22341))))))

(assert (=> b!7593103 (=> (not res!3041172) (not e!4518363))))

(declare-fun b!7593104 () Bool)

(declare-fun c!1400777 () Bool)

(assert (=> b!7593104 (= c!1400777 (is-ElementMatch!20108 (regTwo!40729 r!22341)))))

(declare-fun e!4518360 () Bool)

(assert (=> b!7593104 (= e!4518363 e!4518360)))

(declare-fun b!7593106 () Bool)

(declare-fun res!3041173 () Bool)

(declare-fun e!4518364 () Bool)

(assert (=> b!7593106 (=> res!3041173 e!4518364)))

(declare-fun call!696897 () Bool)

(assert (=> b!7593106 (= res!3041173 call!696897)))

(declare-fun e!4518361 () Bool)

(assert (=> b!7593106 (= e!4518361 e!4518364)))

(declare-fun call!696898 () Bool)

(declare-fun c!1400778 () Bool)

(declare-fun bm!696892 () Bool)

(assert (=> bm!696892 (= call!696898 (Exists!4340 (ite c!1400778 lambda!467331 lambda!467332)))))

(declare-fun b!7593107 () Bool)

(declare-fun e!4518359 () Bool)

(declare-fun e!4518365 () Bool)

(assert (=> b!7593107 (= e!4518359 e!4518365)))

(declare-fun res!3041174 () Bool)

(assert (=> b!7593107 (= res!3041174 (matchRSpec!4421 (regOne!40729 (regTwo!40729 r!22341)) s!13436))))

(assert (=> b!7593107 (=> res!3041174 e!4518365)))

(declare-fun b!7593108 () Bool)

(assert (=> b!7593108 (= e!4518362 call!696897)))

(assert (=> b!7593109 (= e!4518364 call!696898)))

(declare-fun d!2320254 () Bool)

(declare-fun c!1400775 () Bool)

(assert (=> d!2320254 (= c!1400775 (is-EmptyExpr!20108 (regTwo!40729 r!22341)))))

(assert (=> d!2320254 (= (matchRSpec!4421 (regTwo!40729 r!22341) s!13436) e!4518362)))

(assert (=> b!7593105 (= e!4518361 call!696898)))

(declare-fun b!7593110 () Bool)

(assert (=> b!7593110 (= e!4518365 (matchRSpec!4421 (regTwo!40729 (regTwo!40729 r!22341)) s!13436))))

(declare-fun b!7593111 () Bool)

(assert (=> b!7593111 (= e!4518360 (= s!13436 (Cons!72867 (c!1400675 (regTwo!40729 r!22341)) Nil!72867)))))

(declare-fun b!7593112 () Bool)

(declare-fun c!1400776 () Bool)

(assert (=> b!7593112 (= c!1400776 (is-Union!20108 (regTwo!40729 r!22341)))))

(assert (=> b!7593112 (= e!4518360 e!4518359)))

(declare-fun bm!696893 () Bool)

(assert (=> bm!696893 (= call!696897 (isEmpty!41554 s!13436))))

(declare-fun b!7593113 () Bool)

(assert (=> b!7593113 (= e!4518359 e!4518361)))

(assert (=> b!7593113 (= c!1400778 (is-Star!20108 (regTwo!40729 r!22341)))))

(assert (= (and d!2320254 c!1400775) b!7593108))

(assert (= (and d!2320254 (not c!1400775)) b!7593103))

(assert (= (and b!7593103 res!3041172) b!7593104))

(assert (= (and b!7593104 c!1400777) b!7593111))

(assert (= (and b!7593104 (not c!1400777)) b!7593112))

(assert (= (and b!7593112 c!1400776) b!7593107))

(assert (= (and b!7593112 (not c!1400776)) b!7593113))

(assert (= (and b!7593107 (not res!3041174)) b!7593110))

(assert (= (and b!7593113 c!1400778) b!7593106))

(assert (= (and b!7593113 (not c!1400778)) b!7593105))

(assert (= (and b!7593106 (not res!3041173)) b!7593109))

(assert (= (or b!7593109 b!7593105) bm!696892))

(assert (= (or b!7593108 b!7593106) bm!696893))

(declare-fun m!8141284 () Bool)

(assert (=> bm!696892 m!8141284))

(declare-fun m!8141286 () Bool)

(assert (=> b!7593107 m!8141286))

(declare-fun m!8141288 () Bool)

(assert (=> b!7593110 m!8141288))

(assert (=> bm!696893 m!8140926))

(assert (=> b!7592752 d!2320254))

(declare-fun b!7593114 () Bool)

(declare-fun e!4518369 () Bool)

(declare-fun lt!2653627 () Bool)

(declare-fun call!696899 () Bool)

(assert (=> b!7593114 (= e!4518369 (= lt!2653627 call!696899))))

(declare-fun bm!696894 () Bool)

(assert (=> bm!696894 (= call!696899 (isEmpty!41554 (tail!15165 (_2!37772 lt!2653542))))))

(declare-fun d!2320256 () Bool)

(assert (=> d!2320256 e!4518369))

(declare-fun c!1400780 () Bool)

(assert (=> d!2320256 (= c!1400780 (is-EmptyExpr!20108 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542)))))))

(declare-fun e!4518372 () Bool)

(assert (=> d!2320256 (= lt!2653627 e!4518372)))

(declare-fun c!1400779 () Bool)

(assert (=> d!2320256 (= c!1400779 (isEmpty!41554 (tail!15165 (_2!37772 lt!2653542))))))

(assert (=> d!2320256 (validRegex!10536 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542))))))

(assert (=> d!2320256 (= (matchR!9700 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542))) (tail!15165 (_2!37772 lt!2653542))) lt!2653627)))

(declare-fun b!7593115 () Bool)

(declare-fun res!3041179 () Bool)

(declare-fun e!4518370 () Bool)

(assert (=> b!7593115 (=> res!3041179 e!4518370)))

(assert (=> b!7593115 (= res!3041179 (not (isEmpty!41554 (tail!15165 (tail!15165 (_2!37772 lt!2653542))))))))

(declare-fun b!7593116 () Bool)

(declare-fun e!4518371 () Bool)

(assert (=> b!7593116 (= e!4518371 (= (head!15625 (tail!15165 (_2!37772 lt!2653542))) (c!1400675 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542))))))))

(declare-fun b!7593117 () Bool)

(assert (=> b!7593117 (= e!4518372 (matchR!9700 (derivativeStep!5825 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542))) (head!15625 (tail!15165 (_2!37772 lt!2653542)))) (tail!15165 (tail!15165 (_2!37772 lt!2653542)))))))

(declare-fun b!7593118 () Bool)

(declare-fun res!3041178 () Bool)

(declare-fun e!4518368 () Bool)

(assert (=> b!7593118 (=> res!3041178 e!4518368)))

(assert (=> b!7593118 (= res!3041178 e!4518371)))

(declare-fun res!3041177 () Bool)

(assert (=> b!7593118 (=> (not res!3041177) (not e!4518371))))

(assert (=> b!7593118 (= res!3041177 lt!2653627)))

(declare-fun b!7593119 () Bool)

(declare-fun res!3041182 () Bool)

(assert (=> b!7593119 (=> (not res!3041182) (not e!4518371))))

(assert (=> b!7593119 (= res!3041182 (isEmpty!41554 (tail!15165 (tail!15165 (_2!37772 lt!2653542)))))))

(declare-fun b!7593120 () Bool)

(declare-fun e!4518366 () Bool)

(assert (=> b!7593120 (= e!4518366 (not lt!2653627))))

(declare-fun b!7593121 () Bool)

(assert (=> b!7593121 (= e!4518372 (nullable!8799 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542)))))))

(declare-fun b!7593122 () Bool)

(assert (=> b!7593122 (= e!4518369 e!4518366)))

(declare-fun c!1400781 () Bool)

(assert (=> b!7593122 (= c!1400781 (is-EmptyLang!20108 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542)))))))

(declare-fun b!7593123 () Bool)

(assert (=> b!7593123 (= e!4518370 (not (= (head!15625 (tail!15165 (_2!37772 lt!2653542))) (c!1400675 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542)))))))))

(declare-fun b!7593124 () Bool)

(declare-fun e!4518367 () Bool)

(assert (=> b!7593124 (= e!4518368 e!4518367)))

(declare-fun res!3041180 () Bool)

(assert (=> b!7593124 (=> (not res!3041180) (not e!4518367))))

(assert (=> b!7593124 (= res!3041180 (not lt!2653627))))

(declare-fun b!7593125 () Bool)

(declare-fun res!3041181 () Bool)

(assert (=> b!7593125 (=> res!3041181 e!4518368)))

(assert (=> b!7593125 (= res!3041181 (not (is-ElementMatch!20108 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542))))))))

(assert (=> b!7593125 (= e!4518366 e!4518368)))

(declare-fun b!7593126 () Bool)

(declare-fun res!3041175 () Bool)

(assert (=> b!7593126 (=> (not res!3041175) (not e!4518371))))

(assert (=> b!7593126 (= res!3041175 (not call!696899))))

(declare-fun b!7593127 () Bool)

(assert (=> b!7593127 (= e!4518367 e!4518370)))

(declare-fun res!3041176 () Bool)

(assert (=> b!7593127 (=> res!3041176 e!4518370)))

(assert (=> b!7593127 (= res!3041176 call!696899)))

(assert (= (and d!2320256 c!1400779) b!7593121))

(assert (= (and d!2320256 (not c!1400779)) b!7593117))

(assert (= (and d!2320256 c!1400780) b!7593114))

(assert (= (and d!2320256 (not c!1400780)) b!7593122))

(assert (= (and b!7593122 c!1400781) b!7593120))

(assert (= (and b!7593122 (not c!1400781)) b!7593125))

(assert (= (and b!7593125 (not res!3041181)) b!7593118))

(assert (= (and b!7593118 res!3041177) b!7593126))

(assert (= (and b!7593126 res!3041175) b!7593119))

(assert (= (and b!7593119 res!3041182) b!7593116))

(assert (= (and b!7593118 (not res!3041178)) b!7593124))

(assert (= (and b!7593124 res!3041180) b!7593127))

(assert (= (and b!7593127 (not res!3041176)) b!7593115))

(assert (= (and b!7593115 (not res!3041179)) b!7593123))

(assert (= (or b!7593114 b!7593126 b!7593127) bm!696894))

(assert (=> b!7593115 m!8141050))

(declare-fun m!8141290 () Bool)

(assert (=> b!7593115 m!8141290))

(assert (=> b!7593115 m!8141290))

(declare-fun m!8141292 () Bool)

(assert (=> b!7593115 m!8141292))

(assert (=> b!7593123 m!8141050))

(declare-fun m!8141294 () Bool)

(assert (=> b!7593123 m!8141294))

(assert (=> b!7593117 m!8141050))

(assert (=> b!7593117 m!8141294))

(assert (=> b!7593117 m!8141056))

(assert (=> b!7593117 m!8141294))

(declare-fun m!8141296 () Bool)

(assert (=> b!7593117 m!8141296))

(assert (=> b!7593117 m!8141050))

(assert (=> b!7593117 m!8141290))

(assert (=> b!7593117 m!8141296))

(assert (=> b!7593117 m!8141290))

(declare-fun m!8141298 () Bool)

(assert (=> b!7593117 m!8141298))

(assert (=> bm!696894 m!8141050))

(assert (=> bm!696894 m!8141052))

(assert (=> b!7593116 m!8141050))

(assert (=> b!7593116 m!8141294))

(assert (=> b!7593119 m!8141050))

(assert (=> b!7593119 m!8141290))

(assert (=> b!7593119 m!8141290))

(assert (=> b!7593119 m!8141292))

(assert (=> d!2320256 m!8141050))

(assert (=> d!2320256 m!8141052))

(assert (=> d!2320256 m!8141056))

(declare-fun m!8141300 () Bool)

(assert (=> d!2320256 m!8141300))

(assert (=> b!7593121 m!8141056))

(declare-fun m!8141302 () Bool)

(assert (=> b!7593121 m!8141302))

(assert (=> b!7592689 d!2320256))

(declare-fun b!7593148 () Bool)

(declare-fun e!4518383 () Regex!20108)

(declare-fun call!696911 () Regex!20108)

(assert (=> b!7593148 (= e!4518383 (Union!20108 (Concat!28953 call!696911 (regTwo!40728 (regTwo!40728 r!22341))) EmptyLang!20108))))

(declare-fun b!7593149 () Bool)

(declare-fun e!4518386 () Regex!20108)

(declare-fun call!696908 () Regex!20108)

(declare-fun call!696909 () Regex!20108)

(assert (=> b!7593149 (= e!4518386 (Union!20108 call!696908 call!696909))))

(declare-fun b!7593150 () Bool)

(declare-fun e!4518387 () Regex!20108)

(assert (=> b!7593150 (= e!4518387 EmptyLang!20108)))

(declare-fun b!7593151 () Bool)

(assert (=> b!7593151 (= e!4518383 (Union!20108 (Concat!28953 call!696908 (regTwo!40728 (regTwo!40728 r!22341))) call!696911))))

(declare-fun c!1400796 () Bool)

(declare-fun bm!696903 () Bool)

(assert (=> bm!696903 (= call!696908 (derivativeStep!5825 (ite c!1400796 (regOne!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341))) (head!15625 (_2!37772 lt!2653542))))))

(declare-fun b!7593152 () Bool)

(declare-fun e!4518384 () Regex!20108)

(assert (=> b!7593152 (= e!4518387 e!4518384)))

(declare-fun c!1400794 () Bool)

(assert (=> b!7593152 (= c!1400794 (is-ElementMatch!20108 (regTwo!40728 r!22341)))))

(declare-fun d!2320258 () Bool)

(declare-fun lt!2653630 () Regex!20108)

(assert (=> d!2320258 (validRegex!10536 lt!2653630)))

(assert (=> d!2320258 (= lt!2653630 e!4518387)))

(declare-fun c!1400795 () Bool)

(assert (=> d!2320258 (= c!1400795 (or (is-EmptyExpr!20108 (regTwo!40728 r!22341)) (is-EmptyLang!20108 (regTwo!40728 r!22341))))))

(assert (=> d!2320258 (validRegex!10536 (regTwo!40728 r!22341))))

(assert (=> d!2320258 (= (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 lt!2653542))) lt!2653630)))

(declare-fun b!7593153 () Bool)

(assert (=> b!7593153 (= e!4518384 (ite (= (head!15625 (_2!37772 lt!2653542)) (c!1400675 (regTwo!40728 r!22341))) EmptyExpr!20108 EmptyLang!20108))))

(declare-fun c!1400792 () Bool)

(declare-fun bm!696904 () Bool)

(declare-fun c!1400793 () Bool)

(assert (=> bm!696904 (= call!696909 (derivativeStep!5825 (ite c!1400796 (regTwo!40729 (regTwo!40728 r!22341)) (ite c!1400792 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400793 (regTwo!40728 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341))))) (head!15625 (_2!37772 lt!2653542))))))

(declare-fun b!7593154 () Bool)

(assert (=> b!7593154 (= c!1400796 (is-Union!20108 (regTwo!40728 r!22341)))))

(assert (=> b!7593154 (= e!4518384 e!4518386)))

(declare-fun b!7593155 () Bool)

(declare-fun e!4518385 () Regex!20108)

(declare-fun call!696910 () Regex!20108)

(assert (=> b!7593155 (= e!4518385 (Concat!28953 call!696910 (regTwo!40728 r!22341)))))

(declare-fun bm!696905 () Bool)

(assert (=> bm!696905 (= call!696910 call!696909)))

(declare-fun b!7593156 () Bool)

(assert (=> b!7593156 (= e!4518386 e!4518385)))

(assert (=> b!7593156 (= c!1400792 (is-Star!20108 (regTwo!40728 r!22341)))))

(declare-fun b!7593157 () Bool)

(assert (=> b!7593157 (= c!1400793 (nullable!8799 (regOne!40728 (regTwo!40728 r!22341))))))

(assert (=> b!7593157 (= e!4518385 e!4518383)))

(declare-fun bm!696906 () Bool)

(assert (=> bm!696906 (= call!696911 call!696910)))

(assert (= (and d!2320258 c!1400795) b!7593150))

(assert (= (and d!2320258 (not c!1400795)) b!7593152))

(assert (= (and b!7593152 c!1400794) b!7593153))

(assert (= (and b!7593152 (not c!1400794)) b!7593154))

(assert (= (and b!7593154 c!1400796) b!7593149))

(assert (= (and b!7593154 (not c!1400796)) b!7593156))

(assert (= (and b!7593156 c!1400792) b!7593155))

(assert (= (and b!7593156 (not c!1400792)) b!7593157))

(assert (= (and b!7593157 c!1400793) b!7593151))

(assert (= (and b!7593157 (not c!1400793)) b!7593148))

(assert (= (or b!7593151 b!7593148) bm!696906))

(assert (= (or b!7593155 bm!696906) bm!696905))

(assert (= (or b!7593149 bm!696905) bm!696904))

(assert (= (or b!7593149 b!7593151) bm!696903))

(assert (=> bm!696903 m!8141054))

(declare-fun m!8141304 () Bool)

(assert (=> bm!696903 m!8141304))

(declare-fun m!8141306 () Bool)

(assert (=> d!2320258 m!8141306))

(assert (=> d!2320258 m!8140928))

(assert (=> bm!696904 m!8141054))

(declare-fun m!8141308 () Bool)

(assert (=> bm!696904 m!8141308))

(declare-fun m!8141310 () Bool)

(assert (=> b!7593157 m!8141310))

(assert (=> b!7592689 d!2320258))

(declare-fun d!2320260 () Bool)

(assert (=> d!2320260 (= (head!15625 (_2!37772 lt!2653542)) (h!79315 (_2!37772 lt!2653542)))))

(assert (=> b!7592689 d!2320260))

(declare-fun d!2320262 () Bool)

(assert (=> d!2320262 (= (tail!15165 (_2!37772 lt!2653542)) (t!387726 (_2!37772 lt!2653542)))))

(assert (=> b!7592689 d!2320262))

(assert (=> d!2320190 d!2320148))

(assert (=> d!2320190 d!2320142))

(declare-fun d!2320264 () Bool)

(assert (=> d!2320264 (= (isEmpty!41554 (_2!37772 lt!2653542)) (is-Nil!72867 (_2!37772 lt!2653542)))))

(assert (=> d!2320178 d!2320264))

(assert (=> d!2320178 d!2320180))

(declare-fun d!2320266 () Bool)

(assert (=> d!2320266 (= (Exists!4340 (ite c!1400714 lambda!467320 lambda!467321)) (choose!58671 (ite c!1400714 lambda!467320 lambda!467321)))))

(declare-fun bs!1941826 () Bool)

(assert (= bs!1941826 d!2320266))

(declare-fun m!8141312 () Bool)

(assert (=> bs!1941826 m!8141312))

(assert (=> bm!696852 d!2320266))

(declare-fun d!2320268 () Bool)

(assert (=> d!2320268 (= (isEmpty!41554 (tail!15165 (_2!37772 lt!2653542))) (is-Nil!72867 (tail!15165 (_2!37772 lt!2653542))))))

(assert (=> b!7592687 d!2320268))

(assert (=> b!7592687 d!2320262))

(declare-fun d!2320270 () Bool)

(assert (=> d!2320270 (= (isEmpty!41556 lt!2653546) (not (is-Some!17314 lt!2653546)))))

(assert (=> d!2320174 d!2320270))

(declare-fun d!2320272 () Bool)

(assert (=> d!2320272 (= (nullable!8799 (regTwo!40728 r!22341)) (nullableFct!3501 (regTwo!40728 r!22341)))))

(declare-fun bs!1941827 () Bool)

(assert (= bs!1941827 d!2320272))

(declare-fun m!8141314 () Bool)

(assert (=> bs!1941827 m!8141314))

(assert (=> b!7592693 d!2320272))

(declare-fun b!7593158 () Bool)

(declare-fun e!4518391 () Bool)

(declare-fun lt!2653631 () Bool)

(declare-fun call!696912 () Bool)

(assert (=> b!7593158 (= e!4518391 (= lt!2653631 call!696912))))

(declare-fun bm!696907 () Bool)

(assert (=> bm!696907 (= call!696912 (isEmpty!41554 (tail!15165 s!13436)))))

(declare-fun d!2320274 () Bool)

(assert (=> d!2320274 e!4518391))

(declare-fun c!1400798 () Bool)

(assert (=> d!2320274 (= c!1400798 (is-EmptyExpr!20108 (derivativeStep!5825 r!22341 (head!15625 s!13436))))))

(declare-fun e!4518394 () Bool)

(assert (=> d!2320274 (= lt!2653631 e!4518394)))

(declare-fun c!1400797 () Bool)

(assert (=> d!2320274 (= c!1400797 (isEmpty!41554 (tail!15165 s!13436)))))

(assert (=> d!2320274 (validRegex!10536 (derivativeStep!5825 r!22341 (head!15625 s!13436)))))

(assert (=> d!2320274 (= (matchR!9700 (derivativeStep!5825 r!22341 (head!15625 s!13436)) (tail!15165 s!13436)) lt!2653631)))

(declare-fun b!7593159 () Bool)

(declare-fun res!3041187 () Bool)

(declare-fun e!4518392 () Bool)

(assert (=> b!7593159 (=> res!3041187 e!4518392)))

(assert (=> b!7593159 (= res!3041187 (not (isEmpty!41554 (tail!15165 (tail!15165 s!13436)))))))

(declare-fun b!7593160 () Bool)

(declare-fun e!4518393 () Bool)

(assert (=> b!7593160 (= e!4518393 (= (head!15625 (tail!15165 s!13436)) (c!1400675 (derivativeStep!5825 r!22341 (head!15625 s!13436)))))))

(declare-fun b!7593161 () Bool)

(assert (=> b!7593161 (= e!4518394 (matchR!9700 (derivativeStep!5825 (derivativeStep!5825 r!22341 (head!15625 s!13436)) (head!15625 (tail!15165 s!13436))) (tail!15165 (tail!15165 s!13436))))))

(declare-fun b!7593162 () Bool)

(declare-fun res!3041186 () Bool)

(declare-fun e!4518390 () Bool)

(assert (=> b!7593162 (=> res!3041186 e!4518390)))

(assert (=> b!7593162 (= res!3041186 e!4518393)))

(declare-fun res!3041185 () Bool)

(assert (=> b!7593162 (=> (not res!3041185) (not e!4518393))))

(assert (=> b!7593162 (= res!3041185 lt!2653631)))

(declare-fun b!7593163 () Bool)

(declare-fun res!3041190 () Bool)

(assert (=> b!7593163 (=> (not res!3041190) (not e!4518393))))

(assert (=> b!7593163 (= res!3041190 (isEmpty!41554 (tail!15165 (tail!15165 s!13436))))))

(declare-fun b!7593164 () Bool)

(declare-fun e!4518388 () Bool)

(assert (=> b!7593164 (= e!4518388 (not lt!2653631))))

(declare-fun b!7593165 () Bool)

(assert (=> b!7593165 (= e!4518394 (nullable!8799 (derivativeStep!5825 r!22341 (head!15625 s!13436))))))

(declare-fun b!7593166 () Bool)

(assert (=> b!7593166 (= e!4518391 e!4518388)))

(declare-fun c!1400799 () Bool)

(assert (=> b!7593166 (= c!1400799 (is-EmptyLang!20108 (derivativeStep!5825 r!22341 (head!15625 s!13436))))))

(declare-fun b!7593167 () Bool)

(assert (=> b!7593167 (= e!4518392 (not (= (head!15625 (tail!15165 s!13436)) (c!1400675 (derivativeStep!5825 r!22341 (head!15625 s!13436))))))))

(declare-fun b!7593168 () Bool)

(declare-fun e!4518389 () Bool)

(assert (=> b!7593168 (= e!4518390 e!4518389)))

(declare-fun res!3041188 () Bool)

(assert (=> b!7593168 (=> (not res!3041188) (not e!4518389))))

(assert (=> b!7593168 (= res!3041188 (not lt!2653631))))

(declare-fun b!7593169 () Bool)

(declare-fun res!3041189 () Bool)

(assert (=> b!7593169 (=> res!3041189 e!4518390)))

(assert (=> b!7593169 (= res!3041189 (not (is-ElementMatch!20108 (derivativeStep!5825 r!22341 (head!15625 s!13436)))))))

(assert (=> b!7593169 (= e!4518388 e!4518390)))

(declare-fun b!7593170 () Bool)

(declare-fun res!3041183 () Bool)

(assert (=> b!7593170 (=> (not res!3041183) (not e!4518393))))

(assert (=> b!7593170 (= res!3041183 (not call!696912))))

(declare-fun b!7593171 () Bool)

(assert (=> b!7593171 (= e!4518389 e!4518392)))

(declare-fun res!3041184 () Bool)

(assert (=> b!7593171 (=> res!3041184 e!4518392)))

(assert (=> b!7593171 (= res!3041184 call!696912)))

(assert (= (and d!2320274 c!1400797) b!7593165))

(assert (= (and d!2320274 (not c!1400797)) b!7593161))

(assert (= (and d!2320274 c!1400798) b!7593158))

(assert (= (and d!2320274 (not c!1400798)) b!7593166))

(assert (= (and b!7593166 c!1400799) b!7593164))

(assert (= (and b!7593166 (not c!1400799)) b!7593169))

(assert (= (and b!7593169 (not res!3041189)) b!7593162))

(assert (= (and b!7593162 res!3041185) b!7593170))

(assert (= (and b!7593170 res!3041183) b!7593163))

(assert (= (and b!7593163 res!3041190) b!7593160))

(assert (= (and b!7593162 (not res!3041186)) b!7593168))

(assert (= (and b!7593168 res!3041188) b!7593171))

(assert (= (and b!7593171 (not res!3041184)) b!7593159))

(assert (= (and b!7593159 (not res!3041187)) b!7593167))

(assert (= (or b!7593158 b!7593170 b!7593171) bm!696907))

(assert (=> b!7593159 m!8141086))

(declare-fun m!8141316 () Bool)

(assert (=> b!7593159 m!8141316))

(assert (=> b!7593159 m!8141316))

(declare-fun m!8141318 () Bool)

(assert (=> b!7593159 m!8141318))

(assert (=> b!7593167 m!8141086))

(declare-fun m!8141320 () Bool)

(assert (=> b!7593167 m!8141320))

(assert (=> b!7593161 m!8141086))

(assert (=> b!7593161 m!8141320))

(assert (=> b!7593161 m!8141092))

(assert (=> b!7593161 m!8141320))

(declare-fun m!8141322 () Bool)

(assert (=> b!7593161 m!8141322))

(assert (=> b!7593161 m!8141086))

(assert (=> b!7593161 m!8141316))

(assert (=> b!7593161 m!8141322))

(assert (=> b!7593161 m!8141316))

(declare-fun m!8141324 () Bool)

(assert (=> b!7593161 m!8141324))

(assert (=> bm!696907 m!8141086))

(assert (=> bm!696907 m!8141088))

(assert (=> b!7593160 m!8141086))

(assert (=> b!7593160 m!8141320))

(assert (=> b!7593163 m!8141086))

(assert (=> b!7593163 m!8141316))

(assert (=> b!7593163 m!8141316))

(assert (=> b!7593163 m!8141318))

(assert (=> d!2320274 m!8141086))

(assert (=> d!2320274 m!8141088))

(assert (=> d!2320274 m!8141092))

(declare-fun m!8141326 () Bool)

(assert (=> d!2320274 m!8141326))

(assert (=> b!7593165 m!8141092))

(declare-fun m!8141328 () Bool)

(assert (=> b!7593165 m!8141328))

(assert (=> b!7592759 d!2320274))

(declare-fun b!7593172 () Bool)

(declare-fun e!4518395 () Regex!20108)

(declare-fun call!696916 () Regex!20108)

(assert (=> b!7593172 (= e!4518395 (Union!20108 (Concat!28953 call!696916 (regTwo!40728 r!22341)) EmptyLang!20108))))

(declare-fun b!7593173 () Bool)

(declare-fun e!4518398 () Regex!20108)

(declare-fun call!696913 () Regex!20108)

(declare-fun call!696914 () Regex!20108)

(assert (=> b!7593173 (= e!4518398 (Union!20108 call!696913 call!696914))))

(declare-fun b!7593174 () Bool)

(declare-fun e!4518399 () Regex!20108)

(assert (=> b!7593174 (= e!4518399 EmptyLang!20108)))

(declare-fun b!7593175 () Bool)

(assert (=> b!7593175 (= e!4518395 (Union!20108 (Concat!28953 call!696913 (regTwo!40728 r!22341)) call!696916))))

(declare-fun bm!696908 () Bool)

(declare-fun c!1400804 () Bool)

(assert (=> bm!696908 (= call!696913 (derivativeStep!5825 (ite c!1400804 (regOne!40729 r!22341) (regOne!40728 r!22341)) (head!15625 s!13436)))))

(declare-fun b!7593176 () Bool)

(declare-fun e!4518396 () Regex!20108)

(assert (=> b!7593176 (= e!4518399 e!4518396)))

(declare-fun c!1400802 () Bool)

(assert (=> b!7593176 (= c!1400802 (is-ElementMatch!20108 r!22341))))

(declare-fun d!2320276 () Bool)

(declare-fun lt!2653632 () Regex!20108)

(assert (=> d!2320276 (validRegex!10536 lt!2653632)))

(assert (=> d!2320276 (= lt!2653632 e!4518399)))

(declare-fun c!1400803 () Bool)

(assert (=> d!2320276 (= c!1400803 (or (is-EmptyExpr!20108 r!22341) (is-EmptyLang!20108 r!22341)))))

(assert (=> d!2320276 (validRegex!10536 r!22341)))

(assert (=> d!2320276 (= (derivativeStep!5825 r!22341 (head!15625 s!13436)) lt!2653632)))

(declare-fun b!7593177 () Bool)

(assert (=> b!7593177 (= e!4518396 (ite (= (head!15625 s!13436) (c!1400675 r!22341)) EmptyExpr!20108 EmptyLang!20108))))

(declare-fun bm!696909 () Bool)

(declare-fun c!1400801 () Bool)

(declare-fun c!1400800 () Bool)

(assert (=> bm!696909 (= call!696914 (derivativeStep!5825 (ite c!1400804 (regTwo!40729 r!22341) (ite c!1400800 (reg!20437 r!22341) (ite c!1400801 (regTwo!40728 r!22341) (regOne!40728 r!22341)))) (head!15625 s!13436)))))

(declare-fun b!7593178 () Bool)

(assert (=> b!7593178 (= c!1400804 (is-Union!20108 r!22341))))

(assert (=> b!7593178 (= e!4518396 e!4518398)))

(declare-fun b!7593179 () Bool)

(declare-fun e!4518397 () Regex!20108)

(declare-fun call!696915 () Regex!20108)

(assert (=> b!7593179 (= e!4518397 (Concat!28953 call!696915 r!22341))))

(declare-fun bm!696910 () Bool)

(assert (=> bm!696910 (= call!696915 call!696914)))

(declare-fun b!7593180 () Bool)

(assert (=> b!7593180 (= e!4518398 e!4518397)))

(assert (=> b!7593180 (= c!1400800 (is-Star!20108 r!22341))))

(declare-fun b!7593181 () Bool)

(assert (=> b!7593181 (= c!1400801 (nullable!8799 (regOne!40728 r!22341)))))

(assert (=> b!7593181 (= e!4518397 e!4518395)))

(declare-fun bm!696911 () Bool)

(assert (=> bm!696911 (= call!696916 call!696915)))

(assert (= (and d!2320276 c!1400803) b!7593174))

(assert (= (and d!2320276 (not c!1400803)) b!7593176))

(assert (= (and b!7593176 c!1400802) b!7593177))

(assert (= (and b!7593176 (not c!1400802)) b!7593178))

(assert (= (and b!7593178 c!1400804) b!7593173))

(assert (= (and b!7593178 (not c!1400804)) b!7593180))

(assert (= (and b!7593180 c!1400800) b!7593179))

(assert (= (and b!7593180 (not c!1400800)) b!7593181))

(assert (= (and b!7593181 c!1400801) b!7593175))

(assert (= (and b!7593181 (not c!1400801)) b!7593172))

(assert (= (or b!7593175 b!7593172) bm!696911))

(assert (= (or b!7593179 bm!696911) bm!696910))

(assert (= (or b!7593173 bm!696910) bm!696909))

(assert (= (or b!7593173 b!7593175) bm!696908))

(assert (=> bm!696908 m!8141090))

(declare-fun m!8141330 () Bool)

(assert (=> bm!696908 m!8141330))

(declare-fun m!8141332 () Bool)

(assert (=> d!2320276 m!8141332))

(assert (=> d!2320276 m!8140898))

(assert (=> bm!696909 m!8141090))

(declare-fun m!8141334 () Bool)

(assert (=> bm!696909 m!8141334))

(assert (=> b!7593181 m!8141012))

(assert (=> b!7592759 d!2320276))

(assert (=> b!7592759 d!2320216))

(declare-fun d!2320278 () Bool)

(assert (=> d!2320278 (= (tail!15165 s!13436) (t!387726 s!13436))))

(assert (=> b!7592759 d!2320278))

(assert (=> b!7592695 d!2320260))

(declare-fun d!2320280 () Bool)

(assert (=> d!2320280 (= (isEmpty!41554 (tail!15165 s!13436)) (is-Nil!72867 (tail!15165 s!13436)))))

(assert (=> b!7592761 d!2320280))

(assert (=> b!7592761 d!2320278))

(assert (=> b!7592691 d!2320268))

(assert (=> b!7592691 d!2320262))

(assert (=> b!7592757 d!2320280))

(assert (=> b!7592757 d!2320278))

(declare-fun b!7593182 () Bool)

(declare-fun e!4518403 () Bool)

(declare-fun lt!2653633 () Bool)

(declare-fun call!696917 () Bool)

(assert (=> b!7593182 (= e!4518403 (= lt!2653633 call!696917))))

(declare-fun bm!696912 () Bool)

(assert (=> bm!696912 (= call!696917 (isEmpty!41554 (_2!37772 (get!25632 lt!2653585))))))

(declare-fun d!2320282 () Bool)

(assert (=> d!2320282 e!4518403))

(declare-fun c!1400806 () Bool)

(assert (=> d!2320282 (= c!1400806 (is-EmptyExpr!20108 (regTwo!40728 r!22341)))))

(declare-fun e!4518406 () Bool)

(assert (=> d!2320282 (= lt!2653633 e!4518406)))

(declare-fun c!1400805 () Bool)

(assert (=> d!2320282 (= c!1400805 (isEmpty!41554 (_2!37772 (get!25632 lt!2653585))))))

(assert (=> d!2320282 (validRegex!10536 (regTwo!40728 r!22341))))

(assert (=> d!2320282 (= (matchR!9700 (regTwo!40728 r!22341) (_2!37772 (get!25632 lt!2653585))) lt!2653633)))

(declare-fun b!7593183 () Bool)

(declare-fun res!3041195 () Bool)

(declare-fun e!4518404 () Bool)

(assert (=> b!7593183 (=> res!3041195 e!4518404)))

(assert (=> b!7593183 (= res!3041195 (not (isEmpty!41554 (tail!15165 (_2!37772 (get!25632 lt!2653585))))))))

(declare-fun b!7593184 () Bool)

(declare-fun e!4518405 () Bool)

(assert (=> b!7593184 (= e!4518405 (= (head!15625 (_2!37772 (get!25632 lt!2653585))) (c!1400675 (regTwo!40728 r!22341))))))

(declare-fun b!7593185 () Bool)

(assert (=> b!7593185 (= e!4518406 (matchR!9700 (derivativeStep!5825 (regTwo!40728 r!22341) (head!15625 (_2!37772 (get!25632 lt!2653585)))) (tail!15165 (_2!37772 (get!25632 lt!2653585)))))))

(declare-fun b!7593186 () Bool)

(declare-fun res!3041194 () Bool)

(declare-fun e!4518402 () Bool)

(assert (=> b!7593186 (=> res!3041194 e!4518402)))

(assert (=> b!7593186 (= res!3041194 e!4518405)))

(declare-fun res!3041193 () Bool)

(assert (=> b!7593186 (=> (not res!3041193) (not e!4518405))))

(assert (=> b!7593186 (= res!3041193 lt!2653633)))

(declare-fun b!7593187 () Bool)

(declare-fun res!3041198 () Bool)

(assert (=> b!7593187 (=> (not res!3041198) (not e!4518405))))

(assert (=> b!7593187 (= res!3041198 (isEmpty!41554 (tail!15165 (_2!37772 (get!25632 lt!2653585)))))))

(declare-fun b!7593188 () Bool)

(declare-fun e!4518400 () Bool)

(assert (=> b!7593188 (= e!4518400 (not lt!2653633))))

(declare-fun b!7593189 () Bool)

(assert (=> b!7593189 (= e!4518406 (nullable!8799 (regTwo!40728 r!22341)))))

(declare-fun b!7593190 () Bool)

(assert (=> b!7593190 (= e!4518403 e!4518400)))

(declare-fun c!1400807 () Bool)

(assert (=> b!7593190 (= c!1400807 (is-EmptyLang!20108 (regTwo!40728 r!22341)))))

(declare-fun b!7593191 () Bool)

(assert (=> b!7593191 (= e!4518404 (not (= (head!15625 (_2!37772 (get!25632 lt!2653585))) (c!1400675 (regTwo!40728 r!22341)))))))

(declare-fun b!7593192 () Bool)

(declare-fun e!4518401 () Bool)

(assert (=> b!7593192 (= e!4518402 e!4518401)))

(declare-fun res!3041196 () Bool)

(assert (=> b!7593192 (=> (not res!3041196) (not e!4518401))))

(assert (=> b!7593192 (= res!3041196 (not lt!2653633))))

(declare-fun b!7593193 () Bool)

(declare-fun res!3041197 () Bool)

(assert (=> b!7593193 (=> res!3041197 e!4518402)))

(assert (=> b!7593193 (= res!3041197 (not (is-ElementMatch!20108 (regTwo!40728 r!22341))))))

(assert (=> b!7593193 (= e!4518400 e!4518402)))

(declare-fun b!7593194 () Bool)

(declare-fun res!3041191 () Bool)

(assert (=> b!7593194 (=> (not res!3041191) (not e!4518405))))

(assert (=> b!7593194 (= res!3041191 (not call!696917))))

(declare-fun b!7593195 () Bool)

(assert (=> b!7593195 (= e!4518401 e!4518404)))

(declare-fun res!3041192 () Bool)

(assert (=> b!7593195 (=> res!3041192 e!4518404)))

(assert (=> b!7593195 (= res!3041192 call!696917)))

(assert (= (and d!2320282 c!1400805) b!7593189))

(assert (= (and d!2320282 (not c!1400805)) b!7593185))

(assert (= (and d!2320282 c!1400806) b!7593182))

(assert (= (and d!2320282 (not c!1400806)) b!7593190))

(assert (= (and b!7593190 c!1400807) b!7593188))

(assert (= (and b!7593190 (not c!1400807)) b!7593193))

(assert (= (and b!7593193 (not res!3041197)) b!7593186))

(assert (= (and b!7593186 res!3041193) b!7593194))

(assert (= (and b!7593194 res!3041191) b!7593187))

(assert (= (and b!7593187 res!3041198) b!7593184))

(assert (= (and b!7593186 (not res!3041194)) b!7593192))

(assert (= (and b!7593192 res!3041196) b!7593195))

(assert (= (and b!7593195 (not res!3041192)) b!7593183))

(assert (= (and b!7593183 (not res!3041195)) b!7593191))

(assert (= (or b!7593182 b!7593194 b!7593195) bm!696912))

(declare-fun m!8141336 () Bool)

(assert (=> b!7593183 m!8141336))

(assert (=> b!7593183 m!8141336))

(declare-fun m!8141338 () Bool)

(assert (=> b!7593183 m!8141338))

(declare-fun m!8141340 () Bool)

(assert (=> b!7593191 m!8141340))

(assert (=> b!7593185 m!8141340))

(assert (=> b!7593185 m!8141340))

(declare-fun m!8141342 () Bool)

(assert (=> b!7593185 m!8141342))

(assert (=> b!7593185 m!8141336))

(assert (=> b!7593185 m!8141342))

(assert (=> b!7593185 m!8141336))

(declare-fun m!8141344 () Bool)

(assert (=> b!7593185 m!8141344))

(declare-fun m!8141346 () Bool)

(assert (=> bm!696912 m!8141346))

(assert (=> b!7593184 m!8141340))

(assert (=> b!7593187 m!8141336))

(assert (=> b!7593187 m!8141336))

(assert (=> b!7593187 m!8141338))

(assert (=> d!2320282 m!8141346))

(assert (=> d!2320282 m!8140928))

(assert (=> b!7593189 m!8141062))

(assert (=> b!7592684 d!2320282))

(declare-fun d!2320284 () Bool)

(assert (=> d!2320284 (= (get!25632 lt!2653585) (v!54449 lt!2653585))))

(assert (=> b!7592684 d!2320284))

(assert (=> b!7592765 d!2320216))

(declare-fun d!2320286 () Bool)

(assert (=> d!2320286 (= (isEmpty!41554 (tail!15165 (_1!37772 lt!2653542))) (is-Nil!72867 (tail!15165 (_1!37772 lt!2653542))))))

(assert (=> b!7592642 d!2320286))

(declare-fun d!2320288 () Bool)

(assert (=> d!2320288 (= (tail!15165 (_1!37772 lt!2653542)) (t!387726 (_1!37772 lt!2653542)))))

(assert (=> b!7592642 d!2320288))

(declare-fun c!1400808 () Bool)

(declare-fun call!696919 () Bool)

(declare-fun bm!696914 () Bool)

(assert (=> bm!696914 (= call!696919 (validRegex!10536 (ite c!1400808 (regTwo!40729 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))) (regOne!40728 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))))))))

(declare-fun b!7593196 () Bool)

(declare-fun e!4518411 () Bool)

(declare-fun e!4518407 () Bool)

(assert (=> b!7593196 (= e!4518411 e!4518407)))

(assert (=> b!7593196 (= c!1400808 (is-Union!20108 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))))))

(declare-fun b!7593197 () Bool)

(declare-fun e!4518410 () Bool)

(assert (=> b!7593197 (= e!4518410 call!696919)))

(declare-fun b!7593198 () Bool)

(declare-fun e!4518408 () Bool)

(assert (=> b!7593198 (= e!4518411 e!4518408)))

(declare-fun res!3041200 () Bool)

(assert (=> b!7593198 (= res!3041200 (not (nullable!8799 (reg!20437 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))))))))

(assert (=> b!7593198 (=> (not res!3041200) (not e!4518408))))

(declare-fun call!696920 () Bool)

(declare-fun c!1400809 () Bool)

(declare-fun bm!696915 () Bool)

(assert (=> bm!696915 (= call!696920 (validRegex!10536 (ite c!1400809 (reg!20437 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))) (ite c!1400808 (regOne!40729 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))) (regTwo!40728 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341))))))))))

(declare-fun b!7593199 () Bool)

(declare-fun res!3041202 () Bool)

(assert (=> b!7593199 (=> (not res!3041202) (not e!4518410))))

(declare-fun call!696918 () Bool)

(assert (=> b!7593199 (= res!3041202 call!696918)))

(assert (=> b!7593199 (= e!4518407 e!4518410)))

(declare-fun b!7593200 () Bool)

(declare-fun e!4518413 () Bool)

(assert (=> b!7593200 (= e!4518413 call!696918)))

(declare-fun bm!696913 () Bool)

(assert (=> bm!696913 (= call!696918 call!696920)))

(declare-fun d!2320290 () Bool)

(declare-fun res!3041201 () Bool)

(declare-fun e!4518409 () Bool)

(assert (=> d!2320290 (=> res!3041201 e!4518409)))

(assert (=> d!2320290 (= res!3041201 (is-ElementMatch!20108 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))))))

(assert (=> d!2320290 (= (validRegex!10536 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))) e!4518409)))

(declare-fun b!7593201 () Bool)

(declare-fun res!3041203 () Bool)

(declare-fun e!4518412 () Bool)

(assert (=> b!7593201 (=> res!3041203 e!4518412)))

(assert (=> b!7593201 (= res!3041203 (not (is-Concat!28953 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341))))))))

(assert (=> b!7593201 (= e!4518407 e!4518412)))

(declare-fun b!7593202 () Bool)

(assert (=> b!7593202 (= e!4518409 e!4518411)))

(assert (=> b!7593202 (= c!1400809 (is-Star!20108 (ite c!1400701 (regTwo!40729 (regTwo!40728 r!22341)) (regOne!40728 (regTwo!40728 r!22341)))))))

(declare-fun b!7593203 () Bool)

(assert (=> b!7593203 (= e!4518408 call!696920)))

(declare-fun b!7593204 () Bool)

(assert (=> b!7593204 (= e!4518412 e!4518413)))

(declare-fun res!3041199 () Bool)

(assert (=> b!7593204 (=> (not res!3041199) (not e!4518413))))

(assert (=> b!7593204 (= res!3041199 call!696919)))

(assert (= (and d!2320290 (not res!3041201)) b!7593202))

(assert (= (and b!7593202 c!1400809) b!7593198))

(assert (= (and b!7593202 (not c!1400809)) b!7593196))

(assert (= (and b!7593198 res!3041200) b!7593203))

(assert (= (and b!7593196 c!1400808) b!7593199))

(assert (= (and b!7593196 (not c!1400808)) b!7593201))

(assert (= (and b!7593199 res!3041202) b!7593197))

(assert (= (and b!7593201 (not res!3041203)) b!7593204))

(assert (= (and b!7593204 res!3041199) b!7593200))

(assert (= (or b!7593197 b!7593204) bm!696914))

(assert (= (or b!7593199 b!7593200) bm!696913))

(assert (= (or b!7593203 bm!696913) bm!696915))

(declare-fun m!8141348 () Bool)

(assert (=> bm!696914 m!8141348))

(declare-fun m!8141350 () Bool)

(assert (=> b!7593198 m!8141350))

(declare-fun m!8141352 () Bool)

(assert (=> bm!696915 m!8141352))

(assert (=> bm!696846 d!2320290))

(declare-fun b!7593205 () Bool)

(declare-fun e!4518417 () Bool)

(declare-fun lt!2653634 () Bool)

(declare-fun call!696921 () Bool)

(assert (=> b!7593205 (= e!4518417 (= lt!2653634 call!696921))))

(declare-fun bm!696916 () Bool)

(assert (=> bm!696916 (= call!696921 (isEmpty!41554 (tail!15165 (_1!37772 lt!2653542))))))

(declare-fun d!2320292 () Bool)

(assert (=> d!2320292 e!4518417))

(declare-fun c!1400811 () Bool)

(assert (=> d!2320292 (= c!1400811 (is-EmptyExpr!20108 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542)))))))

(declare-fun e!4518420 () Bool)

(assert (=> d!2320292 (= lt!2653634 e!4518420)))

(declare-fun c!1400810 () Bool)

(assert (=> d!2320292 (= c!1400810 (isEmpty!41554 (tail!15165 (_1!37772 lt!2653542))))))

(assert (=> d!2320292 (validRegex!10536 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542))))))

(assert (=> d!2320292 (= (matchR!9700 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542))) (tail!15165 (_1!37772 lt!2653542))) lt!2653634)))

(declare-fun b!7593206 () Bool)

(declare-fun res!3041208 () Bool)

(declare-fun e!4518418 () Bool)

(assert (=> b!7593206 (=> res!3041208 e!4518418)))

(assert (=> b!7593206 (= res!3041208 (not (isEmpty!41554 (tail!15165 (tail!15165 (_1!37772 lt!2653542))))))))

(declare-fun b!7593207 () Bool)

(declare-fun e!4518419 () Bool)

(assert (=> b!7593207 (= e!4518419 (= (head!15625 (tail!15165 (_1!37772 lt!2653542))) (c!1400675 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542))))))))

(declare-fun b!7593208 () Bool)

(assert (=> b!7593208 (= e!4518420 (matchR!9700 (derivativeStep!5825 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542))) (head!15625 (tail!15165 (_1!37772 lt!2653542)))) (tail!15165 (tail!15165 (_1!37772 lt!2653542)))))))

(declare-fun b!7593209 () Bool)

(declare-fun res!3041207 () Bool)

(declare-fun e!4518416 () Bool)

(assert (=> b!7593209 (=> res!3041207 e!4518416)))

(assert (=> b!7593209 (= res!3041207 e!4518419)))

(declare-fun res!3041206 () Bool)

(assert (=> b!7593209 (=> (not res!3041206) (not e!4518419))))

(assert (=> b!7593209 (= res!3041206 lt!2653634)))

(declare-fun b!7593210 () Bool)

(declare-fun res!3041211 () Bool)

(assert (=> b!7593210 (=> (not res!3041211) (not e!4518419))))

(assert (=> b!7593210 (= res!3041211 (isEmpty!41554 (tail!15165 (tail!15165 (_1!37772 lt!2653542)))))))

(declare-fun b!7593211 () Bool)

(declare-fun e!4518414 () Bool)

(assert (=> b!7593211 (= e!4518414 (not lt!2653634))))

(declare-fun b!7593212 () Bool)

(assert (=> b!7593212 (= e!4518420 (nullable!8799 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542)))))))

(declare-fun b!7593213 () Bool)

(assert (=> b!7593213 (= e!4518417 e!4518414)))

(declare-fun c!1400812 () Bool)

(assert (=> b!7593213 (= c!1400812 (is-EmptyLang!20108 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542)))))))

(declare-fun b!7593214 () Bool)

(assert (=> b!7593214 (= e!4518418 (not (= (head!15625 (tail!15165 (_1!37772 lt!2653542))) (c!1400675 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542)))))))))

(declare-fun b!7593215 () Bool)

(declare-fun e!4518415 () Bool)

(assert (=> b!7593215 (= e!4518416 e!4518415)))

(declare-fun res!3041209 () Bool)

(assert (=> b!7593215 (=> (not res!3041209) (not e!4518415))))

(assert (=> b!7593215 (= res!3041209 (not lt!2653634))))

(declare-fun b!7593216 () Bool)

(declare-fun res!3041210 () Bool)

(assert (=> b!7593216 (=> res!3041210 e!4518416)))

(assert (=> b!7593216 (= res!3041210 (not (is-ElementMatch!20108 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542))))))))

(assert (=> b!7593216 (= e!4518414 e!4518416)))

(declare-fun b!7593217 () Bool)

(declare-fun res!3041204 () Bool)

(assert (=> b!7593217 (=> (not res!3041204) (not e!4518419))))

(assert (=> b!7593217 (= res!3041204 (not call!696921))))

(declare-fun b!7593218 () Bool)

(assert (=> b!7593218 (= e!4518415 e!4518418)))

(declare-fun res!3041205 () Bool)

(assert (=> b!7593218 (=> res!3041205 e!4518418)))

(assert (=> b!7593218 (= res!3041205 call!696921)))

(assert (= (and d!2320292 c!1400810) b!7593212))

(assert (= (and d!2320292 (not c!1400810)) b!7593208))

(assert (= (and d!2320292 c!1400811) b!7593205))

(assert (= (and d!2320292 (not c!1400811)) b!7593213))

(assert (= (and b!7593213 c!1400812) b!7593211))

(assert (= (and b!7593213 (not c!1400812)) b!7593216))

(assert (= (and b!7593216 (not res!3041210)) b!7593209))

(assert (= (and b!7593209 res!3041206) b!7593217))

(assert (= (and b!7593217 res!3041204) b!7593210))

(assert (= (and b!7593210 res!3041211) b!7593207))

(assert (= (and b!7593209 (not res!3041207)) b!7593215))

(assert (= (and b!7593215 res!3041209) b!7593218))

(assert (= (and b!7593218 (not res!3041205)) b!7593206))

(assert (= (and b!7593206 (not res!3041208)) b!7593214))

(assert (= (or b!7593205 b!7593217 b!7593218) bm!696916))

(assert (=> b!7593206 m!8141000))

(declare-fun m!8141354 () Bool)

(assert (=> b!7593206 m!8141354))

(assert (=> b!7593206 m!8141354))

(declare-fun m!8141356 () Bool)

(assert (=> b!7593206 m!8141356))

(assert (=> b!7593214 m!8141000))

(declare-fun m!8141358 () Bool)

(assert (=> b!7593214 m!8141358))

(assert (=> b!7593208 m!8141000))

(assert (=> b!7593208 m!8141358))

(assert (=> b!7593208 m!8141006))

(assert (=> b!7593208 m!8141358))

(declare-fun m!8141360 () Bool)

(assert (=> b!7593208 m!8141360))

(assert (=> b!7593208 m!8141000))

(assert (=> b!7593208 m!8141354))

(assert (=> b!7593208 m!8141360))

(assert (=> b!7593208 m!8141354))

(declare-fun m!8141362 () Bool)

(assert (=> b!7593208 m!8141362))

(assert (=> bm!696916 m!8141000))

(assert (=> bm!696916 m!8141002))

(assert (=> b!7593207 m!8141000))

(assert (=> b!7593207 m!8141358))

(assert (=> b!7593210 m!8141000))

(assert (=> b!7593210 m!8141354))

(assert (=> b!7593210 m!8141354))

(assert (=> b!7593210 m!8141356))

(assert (=> d!2320292 m!8141000))

(assert (=> d!2320292 m!8141002))

(assert (=> d!2320292 m!8141006))

(declare-fun m!8141364 () Bool)

(assert (=> d!2320292 m!8141364))

(assert (=> b!7593212 m!8141006))

(declare-fun m!8141366 () Bool)

(assert (=> b!7593212 m!8141366))

(assert (=> b!7592644 d!2320292))

(declare-fun b!7593219 () Bool)

(declare-fun e!4518421 () Regex!20108)

(declare-fun call!696925 () Regex!20108)

(assert (=> b!7593219 (= e!4518421 (Union!20108 (Concat!28953 call!696925 (regTwo!40728 (regOne!40728 r!22341))) EmptyLang!20108))))

(declare-fun b!7593220 () Bool)

(declare-fun e!4518424 () Regex!20108)

(declare-fun call!696922 () Regex!20108)

(declare-fun call!696923 () Regex!20108)

(assert (=> b!7593220 (= e!4518424 (Union!20108 call!696922 call!696923))))

(declare-fun b!7593221 () Bool)

(declare-fun e!4518425 () Regex!20108)

(assert (=> b!7593221 (= e!4518425 EmptyLang!20108)))

(declare-fun b!7593222 () Bool)

(assert (=> b!7593222 (= e!4518421 (Union!20108 (Concat!28953 call!696922 (regTwo!40728 (regOne!40728 r!22341))) call!696925))))

(declare-fun bm!696917 () Bool)

(declare-fun c!1400817 () Bool)

(assert (=> bm!696917 (= call!696922 (derivativeStep!5825 (ite c!1400817 (regOne!40729 (regOne!40728 r!22341)) (regOne!40728 (regOne!40728 r!22341))) (head!15625 (_1!37772 lt!2653542))))))

(declare-fun b!7593223 () Bool)

(declare-fun e!4518422 () Regex!20108)

(assert (=> b!7593223 (= e!4518425 e!4518422)))

(declare-fun c!1400815 () Bool)

(assert (=> b!7593223 (= c!1400815 (is-ElementMatch!20108 (regOne!40728 r!22341)))))

(declare-fun d!2320294 () Bool)

(declare-fun lt!2653635 () Regex!20108)

(assert (=> d!2320294 (validRegex!10536 lt!2653635)))

(assert (=> d!2320294 (= lt!2653635 e!4518425)))

(declare-fun c!1400816 () Bool)

(assert (=> d!2320294 (= c!1400816 (or (is-EmptyExpr!20108 (regOne!40728 r!22341)) (is-EmptyLang!20108 (regOne!40728 r!22341))))))

(assert (=> d!2320294 (validRegex!10536 (regOne!40728 r!22341))))

(assert (=> d!2320294 (= (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 lt!2653542))) lt!2653635)))

(declare-fun b!7593224 () Bool)

(assert (=> b!7593224 (= e!4518422 (ite (= (head!15625 (_1!37772 lt!2653542)) (c!1400675 (regOne!40728 r!22341))) EmptyExpr!20108 EmptyLang!20108))))

(declare-fun bm!696918 () Bool)

(declare-fun c!1400814 () Bool)

(declare-fun c!1400813 () Bool)

(assert (=> bm!696918 (= call!696923 (derivativeStep!5825 (ite c!1400817 (regTwo!40729 (regOne!40728 r!22341)) (ite c!1400813 (reg!20437 (regOne!40728 r!22341)) (ite c!1400814 (regTwo!40728 (regOne!40728 r!22341)) (regOne!40728 (regOne!40728 r!22341))))) (head!15625 (_1!37772 lt!2653542))))))

(declare-fun b!7593225 () Bool)

(assert (=> b!7593225 (= c!1400817 (is-Union!20108 (regOne!40728 r!22341)))))

(assert (=> b!7593225 (= e!4518422 e!4518424)))

(declare-fun b!7593226 () Bool)

(declare-fun e!4518423 () Regex!20108)

(declare-fun call!696924 () Regex!20108)

(assert (=> b!7593226 (= e!4518423 (Concat!28953 call!696924 (regOne!40728 r!22341)))))

(declare-fun bm!696919 () Bool)

(assert (=> bm!696919 (= call!696924 call!696923)))

(declare-fun b!7593227 () Bool)

(assert (=> b!7593227 (= e!4518424 e!4518423)))

(assert (=> b!7593227 (= c!1400813 (is-Star!20108 (regOne!40728 r!22341)))))

(declare-fun b!7593228 () Bool)

(assert (=> b!7593228 (= c!1400814 (nullable!8799 (regOne!40728 (regOne!40728 r!22341))))))

(assert (=> b!7593228 (= e!4518423 e!4518421)))

(declare-fun bm!696920 () Bool)

(assert (=> bm!696920 (= call!696925 call!696924)))

(assert (= (and d!2320294 c!1400816) b!7593221))

(assert (= (and d!2320294 (not c!1400816)) b!7593223))

(assert (= (and b!7593223 c!1400815) b!7593224))

(assert (= (and b!7593223 (not c!1400815)) b!7593225))

(assert (= (and b!7593225 c!1400817) b!7593220))

(assert (= (and b!7593225 (not c!1400817)) b!7593227))

(assert (= (and b!7593227 c!1400813) b!7593226))

(assert (= (and b!7593227 (not c!1400813)) b!7593228))

(assert (= (and b!7593228 c!1400814) b!7593222))

(assert (= (and b!7593228 (not c!1400814)) b!7593219))

(assert (= (or b!7593222 b!7593219) bm!696920))

(assert (= (or b!7593226 bm!696920) bm!696919))

(assert (= (or b!7593220 bm!696919) bm!696918))

(assert (= (or b!7593220 b!7593222) bm!696917))

(assert (=> bm!696917 m!8141004))

(declare-fun m!8141368 () Bool)

(assert (=> bm!696917 m!8141368))

(declare-fun m!8141370 () Bool)

(assert (=> d!2320294 m!8141370))

(assert (=> d!2320294 m!8140990))

(assert (=> bm!696918 m!8141004))

(declare-fun m!8141372 () Bool)

(assert (=> bm!696918 m!8141372))

(declare-fun m!8141374 () Bool)

(assert (=> b!7593228 m!8141374))

(assert (=> b!7592644 d!2320294))

(assert (=> b!7592644 d!2320220))

(assert (=> b!7592644 d!2320288))

(declare-fun d!2320296 () Bool)

(assert (=> d!2320296 (= (Exists!4340 lambda!467302) (choose!58671 lambda!467302))))

(declare-fun bs!1941828 () Bool)

(assert (= bs!1941828 d!2320296))

(declare-fun m!8141376 () Bool)

(assert (=> bs!1941828 m!8141376))

(assert (=> d!2320150 d!2320296))

(declare-fun d!2320298 () Bool)

(assert (=> d!2320298 (= (Exists!4340 lambda!467303) (choose!58671 lambda!467303))))

(declare-fun bs!1941829 () Bool)

(assert (= bs!1941829 d!2320298))

(declare-fun m!8141378 () Bool)

(assert (=> bs!1941829 m!8141378))

(assert (=> d!2320150 d!2320298))

(declare-fun bs!1941830 () Bool)

(declare-fun d!2320300 () Bool)

(assert (= bs!1941830 (and d!2320300 d!2320226)))

(declare-fun lambda!467337 () Int)

(assert (=> bs!1941830 (= lambda!467337 lambda!467330)))

(declare-fun bs!1941831 () Bool)

(assert (= bs!1941831 (and d!2320300 d!2320160)))

(assert (=> bs!1941831 (= lambda!467337 lambda!467306)))

(declare-fun bs!1941832 () Bool)

(assert (= bs!1941832 (and d!2320300 d!2320150)))

(assert (=> bs!1941832 (not (= lambda!467337 lambda!467303))))

(declare-fun bs!1941833 () Bool)

(assert (= bs!1941833 (and d!2320300 b!7592747)))

(assert (=> bs!1941833 (not (= lambda!467337 lambda!467321))))

(declare-fun bs!1941834 () Bool)

(assert (= bs!1941834 (and d!2320300 b!7592507)))

(assert (=> bs!1941834 (= lambda!467337 lambda!467288)))

(declare-fun bs!1941835 () Bool)

(assert (= bs!1941835 (and d!2320300 b!7592751)))

(assert (=> bs!1941835 (not (= lambda!467337 lambda!467320))))

(declare-fun bs!1941836 () Bool)

(assert (= bs!1941836 (and d!2320300 b!7593105)))

(assert (=> bs!1941836 (not (= lambda!467337 lambda!467332))))

(declare-fun bs!1941837 () Bool)

(assert (= bs!1941837 (and d!2320300 b!7593109)))

(assert (=> bs!1941837 (not (= lambda!467337 lambda!467331))))

(assert (=> bs!1941834 (not (= lambda!467337 lambda!467289))))

(assert (=> bs!1941832 (= lambda!467337 lambda!467302)))

(assert (=> d!2320300 true))

(assert (=> d!2320300 true))

(assert (=> d!2320300 true))

(declare-fun lambda!467338 () Int)

(assert (=> bs!1941830 (not (= lambda!467338 lambda!467330))))

(assert (=> bs!1941831 (not (= lambda!467338 lambda!467306))))

(declare-fun bs!1941838 () Bool)

(assert (= bs!1941838 d!2320300))

(assert (=> bs!1941838 (not (= lambda!467338 lambda!467337))))

(assert (=> bs!1941832 (= lambda!467338 lambda!467303)))

(assert (=> bs!1941833 (= lambda!467338 lambda!467321)))

(assert (=> bs!1941834 (not (= lambda!467338 lambda!467288))))

(assert (=> bs!1941835 (not (= lambda!467338 lambda!467320))))

(assert (=> bs!1941836 (= (and (= (regOne!40728 r!22341) (regOne!40728 (regTwo!40729 r!22341))) (= (regTwo!40728 r!22341) (regTwo!40728 (regTwo!40729 r!22341)))) (= lambda!467338 lambda!467332))))

(assert (=> bs!1941837 (not (= lambda!467338 lambda!467331))))

(assert (=> bs!1941834 (= lambda!467338 lambda!467289)))

(assert (=> bs!1941832 (not (= lambda!467338 lambda!467302))))

(assert (=> d!2320300 true))

(assert (=> d!2320300 true))

(assert (=> d!2320300 true))

(assert (=> d!2320300 (= (Exists!4340 lambda!467337) (Exists!4340 lambda!467338))))

(assert (=> d!2320300 true))

(declare-fun _$90!2743 () Unit!167172)

(assert (=> d!2320300 (= (choose!58669 (regOne!40728 r!22341) (regTwo!40728 r!22341) s!13436) _$90!2743)))

(declare-fun m!8141380 () Bool)

(assert (=> bs!1941838 m!8141380))

(declare-fun m!8141382 () Bool)

(assert (=> bs!1941838 m!8141382))

(assert (=> d!2320150 d!2320300))

(assert (=> d!2320150 d!2320222))

(declare-fun d!2320302 () Bool)

(assert (=> d!2320302 (= (nullable!8799 r!22341) (nullableFct!3501 r!22341))))

(declare-fun bs!1941839 () Bool)

(assert (= bs!1941839 d!2320302))

(declare-fun m!8141384 () Bool)

(assert (=> bs!1941839 m!8141384))

(assert (=> b!7592763 d!2320302))

(declare-fun c!1400818 () Bool)

(declare-fun bm!696922 () Bool)

(declare-fun call!696927 () Bool)

(assert (=> bm!696922 (= call!696927 (validRegex!10536 (ite c!1400818 (regTwo!40729 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))) (regOne!40728 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))))))))

(declare-fun b!7593237 () Bool)

(declare-fun e!4518434 () Bool)

(declare-fun e!4518430 () Bool)

(assert (=> b!7593237 (= e!4518434 e!4518430)))

(assert (=> b!7593237 (= c!1400818 (is-Union!20108 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))))))

(declare-fun b!7593238 () Bool)

(declare-fun e!4518433 () Bool)

(assert (=> b!7593238 (= e!4518433 call!696927)))

(declare-fun b!7593239 () Bool)

(declare-fun e!4518431 () Bool)

(assert (=> b!7593239 (= e!4518434 e!4518431)))

(declare-fun res!3041221 () Bool)

(assert (=> b!7593239 (= res!3041221 (not (nullable!8799 (reg!20437 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))))))))

(assert (=> b!7593239 (=> (not res!3041221) (not e!4518431))))

(declare-fun bm!696923 () Bool)

(declare-fun c!1400819 () Bool)

(declare-fun call!696928 () Bool)

(assert (=> bm!696923 (= call!696928 (validRegex!10536 (ite c!1400819 (reg!20437 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))) (ite c!1400818 (regOne!40729 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))) (regTwo!40728 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341)))))))))))

(declare-fun b!7593240 () Bool)

(declare-fun res!3041223 () Bool)

(assert (=> b!7593240 (=> (not res!3041223) (not e!4518433))))

(declare-fun call!696926 () Bool)

(assert (=> b!7593240 (= res!3041223 call!696926)))

(assert (=> b!7593240 (= e!4518430 e!4518433)))

(declare-fun b!7593241 () Bool)

(declare-fun e!4518436 () Bool)

(assert (=> b!7593241 (= e!4518436 call!696926)))

(declare-fun bm!696921 () Bool)

(assert (=> bm!696921 (= call!696926 call!696928)))

(declare-fun d!2320304 () Bool)

(declare-fun res!3041222 () Bool)

(declare-fun e!4518432 () Bool)

(assert (=> d!2320304 (=> res!3041222 e!4518432)))

(assert (=> d!2320304 (= res!3041222 (is-ElementMatch!20108 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))))))

(assert (=> d!2320304 (= (validRegex!10536 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))) e!4518432)))

(declare-fun b!7593242 () Bool)

(declare-fun res!3041224 () Bool)

(declare-fun e!4518435 () Bool)

(assert (=> b!7593242 (=> res!3041224 e!4518435)))

(assert (=> b!7593242 (= res!3041224 (not (is-Concat!28953 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341)))))))))

(assert (=> b!7593242 (= e!4518430 e!4518435)))

(declare-fun b!7593243 () Bool)

(assert (=> b!7593243 (= e!4518432 e!4518434)))

(assert (=> b!7593243 (= c!1400819 (is-Star!20108 (ite c!1400702 (reg!20437 (regTwo!40728 r!22341)) (ite c!1400701 (regOne!40729 (regTwo!40728 r!22341)) (regTwo!40728 (regTwo!40728 r!22341))))))))

(declare-fun b!7593244 () Bool)

(assert (=> b!7593244 (= e!4518431 call!696928)))

(declare-fun b!7593245 () Bool)

(assert (=> b!7593245 (= e!4518435 e!4518436)))

(declare-fun res!3041220 () Bool)

(assert (=> b!7593245 (=> (not res!3041220) (not e!4518436))))

(assert (=> b!7593245 (= res!3041220 call!696927)))

(assert (= (and d!2320304 (not res!3041222)) b!7593243))

(assert (= (and b!7593243 c!1400819) b!7593239))

(assert (= (and b!7593243 (not c!1400819)) b!7593237))

(assert (= (and b!7593239 res!3041221) b!7593244))

(assert (= (and b!7593237 c!1400818) b!7593240))

(assert (= (and b!7593237 (not c!1400818)) b!7593242))

(assert (= (and b!7593240 res!3041223) b!7593238))

(assert (= (and b!7593242 (not res!3041224)) b!7593245))

(assert (= (and b!7593245 res!3041220) b!7593241))

(assert (= (or b!7593238 b!7593245) bm!696922))

(assert (= (or b!7593240 b!7593241) bm!696921))

(assert (= (or b!7593244 bm!696921) bm!696923))

(declare-fun m!8141386 () Bool)

(assert (=> bm!696922 m!8141386))

(declare-fun m!8141388 () Bool)

(assert (=> b!7593239 m!8141388))

(declare-fun m!8141390 () Bool)

(assert (=> bm!696923 m!8141390))

(assert (=> bm!696847 d!2320304))

(declare-fun d!2320306 () Bool)

(assert (=> d!2320306 (= (nullable!8799 (regOne!40728 r!22341)) (nullableFct!3501 (regOne!40728 r!22341)))))

(declare-fun bs!1941840 () Bool)

(assert (= bs!1941840 d!2320306))

(declare-fun m!8141392 () Bool)

(assert (=> bs!1941840 m!8141392))

(assert (=> b!7592648 d!2320306))

(declare-fun d!2320308 () Bool)

(assert (=> d!2320308 (= (isDefined!13951 lt!2653585) (not (isEmpty!41556 lt!2653585)))))

(declare-fun bs!1941841 () Bool)

(assert (= bs!1941841 d!2320308))

(declare-fun m!8141394 () Bool)

(assert (=> bs!1941841 m!8141394))

(assert (=> d!2320170 d!2320308))

(declare-fun b!7593246 () Bool)

(declare-fun e!4518440 () Bool)

(declare-fun lt!2653636 () Bool)

(declare-fun call!696929 () Bool)

(assert (=> b!7593246 (= e!4518440 (= lt!2653636 call!696929))))

(declare-fun bm!696924 () Bool)

(assert (=> bm!696924 (= call!696929 (isEmpty!41554 Nil!72867))))

(declare-fun d!2320310 () Bool)

(assert (=> d!2320310 e!4518440))

(declare-fun c!1400821 () Bool)

(assert (=> d!2320310 (= c!1400821 (is-EmptyExpr!20108 (regOne!40728 r!22341)))))

(declare-fun e!4518443 () Bool)

(assert (=> d!2320310 (= lt!2653636 e!4518443)))

(declare-fun c!1400820 () Bool)

(assert (=> d!2320310 (= c!1400820 (isEmpty!41554 Nil!72867))))

(assert (=> d!2320310 (validRegex!10536 (regOne!40728 r!22341))))

(assert (=> d!2320310 (= (matchR!9700 (regOne!40728 r!22341) Nil!72867) lt!2653636)))

(declare-fun b!7593247 () Bool)

(declare-fun res!3041229 () Bool)

(declare-fun e!4518441 () Bool)

(assert (=> b!7593247 (=> res!3041229 e!4518441)))

(assert (=> b!7593247 (= res!3041229 (not (isEmpty!41554 (tail!15165 Nil!72867))))))

(declare-fun b!7593248 () Bool)

(declare-fun e!4518442 () Bool)

(assert (=> b!7593248 (= e!4518442 (= (head!15625 Nil!72867) (c!1400675 (regOne!40728 r!22341))))))

(declare-fun b!7593249 () Bool)

(assert (=> b!7593249 (= e!4518443 (matchR!9700 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 Nil!72867)) (tail!15165 Nil!72867)))))

(declare-fun b!7593250 () Bool)

(declare-fun res!3041228 () Bool)

(declare-fun e!4518439 () Bool)

(assert (=> b!7593250 (=> res!3041228 e!4518439)))

(assert (=> b!7593250 (= res!3041228 e!4518442)))

(declare-fun res!3041227 () Bool)

(assert (=> b!7593250 (=> (not res!3041227) (not e!4518442))))

(assert (=> b!7593250 (= res!3041227 lt!2653636)))

(declare-fun b!7593251 () Bool)

(declare-fun res!3041232 () Bool)

(assert (=> b!7593251 (=> (not res!3041232) (not e!4518442))))

(assert (=> b!7593251 (= res!3041232 (isEmpty!41554 (tail!15165 Nil!72867)))))

(declare-fun b!7593252 () Bool)

(declare-fun e!4518437 () Bool)

(assert (=> b!7593252 (= e!4518437 (not lt!2653636))))

(declare-fun b!7593253 () Bool)

(assert (=> b!7593253 (= e!4518443 (nullable!8799 (regOne!40728 r!22341)))))

(declare-fun b!7593254 () Bool)

(assert (=> b!7593254 (= e!4518440 e!4518437)))

(declare-fun c!1400822 () Bool)

(assert (=> b!7593254 (= c!1400822 (is-EmptyLang!20108 (regOne!40728 r!22341)))))

(declare-fun b!7593255 () Bool)

(assert (=> b!7593255 (= e!4518441 (not (= (head!15625 Nil!72867) (c!1400675 (regOne!40728 r!22341)))))))

(declare-fun b!7593256 () Bool)

(declare-fun e!4518438 () Bool)

(assert (=> b!7593256 (= e!4518439 e!4518438)))

(declare-fun res!3041230 () Bool)

(assert (=> b!7593256 (=> (not res!3041230) (not e!4518438))))

(assert (=> b!7593256 (= res!3041230 (not lt!2653636))))

(declare-fun b!7593257 () Bool)

(declare-fun res!3041231 () Bool)

(assert (=> b!7593257 (=> res!3041231 e!4518439)))

(assert (=> b!7593257 (= res!3041231 (not (is-ElementMatch!20108 (regOne!40728 r!22341))))))

(assert (=> b!7593257 (= e!4518437 e!4518439)))

(declare-fun b!7593258 () Bool)

(declare-fun res!3041225 () Bool)

(assert (=> b!7593258 (=> (not res!3041225) (not e!4518442))))

(assert (=> b!7593258 (= res!3041225 (not call!696929))))

(declare-fun b!7593259 () Bool)

(assert (=> b!7593259 (= e!4518438 e!4518441)))

(declare-fun res!3041226 () Bool)

(assert (=> b!7593259 (=> res!3041226 e!4518441)))

(assert (=> b!7593259 (= res!3041226 call!696929)))

(assert (= (and d!2320310 c!1400820) b!7593253))

(assert (= (and d!2320310 (not c!1400820)) b!7593249))

(assert (= (and d!2320310 c!1400821) b!7593246))

(assert (= (and d!2320310 (not c!1400821)) b!7593254))

(assert (= (and b!7593254 c!1400822) b!7593252))

(assert (= (and b!7593254 (not c!1400822)) b!7593257))

(assert (= (and b!7593257 (not res!3041231)) b!7593250))

(assert (= (and b!7593250 res!3041227) b!7593258))

(assert (= (and b!7593258 res!3041225) b!7593251))

(assert (= (and b!7593251 res!3041232) b!7593248))

(assert (= (and b!7593250 (not res!3041228)) b!7593256))

(assert (= (and b!7593256 res!3041230) b!7593259))

(assert (= (and b!7593259 (not res!3041226)) b!7593247))

(assert (= (and b!7593247 (not res!3041229)) b!7593255))

(assert (= (or b!7593246 b!7593258 b!7593259) bm!696924))

(declare-fun m!8141396 () Bool)

(assert (=> b!7593247 m!8141396))

(assert (=> b!7593247 m!8141396))

(declare-fun m!8141398 () Bool)

(assert (=> b!7593247 m!8141398))

(declare-fun m!8141400 () Bool)

(assert (=> b!7593255 m!8141400))

(assert (=> b!7593249 m!8141400))

(assert (=> b!7593249 m!8141400))

(declare-fun m!8141402 () Bool)

(assert (=> b!7593249 m!8141402))

(assert (=> b!7593249 m!8141396))

(assert (=> b!7593249 m!8141402))

(assert (=> b!7593249 m!8141396))

(declare-fun m!8141404 () Bool)

(assert (=> b!7593249 m!8141404))

(declare-fun m!8141406 () Bool)

(assert (=> bm!696924 m!8141406))

(assert (=> b!7593248 m!8141400))

(assert (=> b!7593251 m!8141396))

(assert (=> b!7593251 m!8141396))

(assert (=> b!7593251 m!8141398))

(assert (=> d!2320310 m!8141406))

(assert (=> d!2320310 m!8140990))

(assert (=> b!7593253 m!8141012))

(assert (=> d!2320170 d!2320310))

(assert (=> d!2320170 d!2320222))

(declare-fun call!696931 () Bool)

(declare-fun c!1400823 () Bool)

(declare-fun bm!696926 () Bool)

(assert (=> bm!696926 (= call!696931 (validRegex!10536 (ite c!1400823 (regTwo!40729 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))) (regOne!40728 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))))))))

(declare-fun b!7593260 () Bool)

(declare-fun e!4518448 () Bool)

(declare-fun e!4518444 () Bool)

(assert (=> b!7593260 (= e!4518448 e!4518444)))

(assert (=> b!7593260 (= c!1400823 (is-Union!20108 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))))))

(declare-fun b!7593261 () Bool)

(declare-fun e!4518447 () Bool)

(assert (=> b!7593261 (= e!4518447 call!696931)))

(declare-fun b!7593262 () Bool)

(declare-fun e!4518445 () Bool)

(assert (=> b!7593262 (= e!4518448 e!4518445)))

(declare-fun res!3041234 () Bool)

(assert (=> b!7593262 (= res!3041234 (not (nullable!8799 (reg!20437 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))))))))

(assert (=> b!7593262 (=> (not res!3041234) (not e!4518445))))

(declare-fun bm!696927 () Bool)

(declare-fun c!1400824 () Bool)

(declare-fun call!696932 () Bool)

(assert (=> bm!696927 (= call!696932 (validRegex!10536 (ite c!1400824 (reg!20437 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))) (ite c!1400823 (regOne!40729 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))) (regTwo!40728 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341))))))))))

(declare-fun b!7593263 () Bool)

(declare-fun res!3041236 () Bool)

(assert (=> b!7593263 (=> (not res!3041236) (not e!4518447))))

(declare-fun call!696930 () Bool)

(assert (=> b!7593263 (= res!3041236 call!696930)))

(assert (=> b!7593263 (= e!4518444 e!4518447)))

(declare-fun b!7593264 () Bool)

(declare-fun e!4518450 () Bool)

(assert (=> b!7593264 (= e!4518450 call!696930)))

(declare-fun bm!696925 () Bool)

(assert (=> bm!696925 (= call!696930 call!696932)))

(declare-fun d!2320312 () Bool)

(declare-fun res!3041235 () Bool)

(declare-fun e!4518446 () Bool)

(assert (=> d!2320312 (=> res!3041235 e!4518446)))

(assert (=> d!2320312 (= res!3041235 (is-ElementMatch!20108 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))))))

(assert (=> d!2320312 (= (validRegex!10536 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))) e!4518446)))

(declare-fun b!7593265 () Bool)

(declare-fun res!3041237 () Bool)

(declare-fun e!4518449 () Bool)

(assert (=> b!7593265 (=> res!3041237 e!4518449)))

(assert (=> b!7593265 (= res!3041237 (not (is-Concat!28953 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341))))))))

(assert (=> b!7593265 (= e!4518444 e!4518449)))

(declare-fun b!7593266 () Bool)

(assert (=> b!7593266 (= e!4518446 e!4518448)))

(assert (=> b!7593266 (= c!1400824 (is-Star!20108 (ite c!1400682 (reg!20437 r!22341) (ite c!1400681 (regOne!40729 r!22341) (regTwo!40728 r!22341)))))))

(declare-fun b!7593267 () Bool)

(assert (=> b!7593267 (= e!4518445 call!696932)))

(declare-fun b!7593268 () Bool)

(assert (=> b!7593268 (= e!4518449 e!4518450)))

(declare-fun res!3041233 () Bool)

(assert (=> b!7593268 (=> (not res!3041233) (not e!4518450))))

(assert (=> b!7593268 (= res!3041233 call!696931)))

(assert (= (and d!2320312 (not res!3041235)) b!7593266))

(assert (= (and b!7593266 c!1400824) b!7593262))

(assert (= (and b!7593266 (not c!1400824)) b!7593260))

(assert (= (and b!7593262 res!3041234) b!7593267))

(assert (= (and b!7593260 c!1400823) b!7593263))

(assert (= (and b!7593260 (not c!1400823)) b!7593265))

(assert (= (and b!7593263 res!3041236) b!7593261))

(assert (= (and b!7593265 (not res!3041237)) b!7593268))

(assert (= (and b!7593268 res!3041233) b!7593264))

(assert (= (or b!7593261 b!7593268) bm!696926))

(assert (= (or b!7593263 b!7593264) bm!696925))

(assert (= (or b!7593267 bm!696925) bm!696927))

(declare-fun m!8141408 () Bool)

(assert (=> bm!696926 m!8141408))

(declare-fun m!8141410 () Bool)

(assert (=> b!7593262 m!8141410))

(declare-fun m!8141412 () Bool)

(assert (=> bm!696927 m!8141412))

(assert (=> bm!696840 d!2320312))

(declare-fun bm!696929 () Bool)

(declare-fun c!1400825 () Bool)

(declare-fun call!696934 () Bool)

(assert (=> bm!696929 (= call!696934 (validRegex!10536 (ite c!1400825 (regTwo!40729 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))) (regOne!40728 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))))))))

(declare-fun b!7593269 () Bool)

(declare-fun e!4518455 () Bool)

(declare-fun e!4518451 () Bool)

(assert (=> b!7593269 (= e!4518455 e!4518451)))

(assert (=> b!7593269 (= c!1400825 (is-Union!20108 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))))))

(declare-fun b!7593270 () Bool)

(declare-fun e!4518454 () Bool)

(assert (=> b!7593270 (= e!4518454 call!696934)))

(declare-fun b!7593271 () Bool)

(declare-fun e!4518452 () Bool)

(assert (=> b!7593271 (= e!4518455 e!4518452)))

(declare-fun res!3041239 () Bool)

(assert (=> b!7593271 (= res!3041239 (not (nullable!8799 (reg!20437 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))))))))

(assert (=> b!7593271 (=> (not res!3041239) (not e!4518452))))

(declare-fun call!696935 () Bool)

(declare-fun bm!696930 () Bool)

(declare-fun c!1400826 () Bool)

(assert (=> bm!696930 (= call!696935 (validRegex!10536 (ite c!1400826 (reg!20437 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))) (ite c!1400825 (regOne!40729 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))) (regTwo!40728 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341)))))))))

(declare-fun b!7593272 () Bool)

(declare-fun res!3041241 () Bool)

(assert (=> b!7593272 (=> (not res!3041241) (not e!4518454))))

(declare-fun call!696933 () Bool)

(assert (=> b!7593272 (= res!3041241 call!696933)))

(assert (=> b!7593272 (= e!4518451 e!4518454)))

(declare-fun b!7593273 () Bool)

(declare-fun e!4518457 () Bool)

(assert (=> b!7593273 (= e!4518457 call!696933)))

(declare-fun bm!696928 () Bool)

(assert (=> bm!696928 (= call!696933 call!696935)))

(declare-fun d!2320314 () Bool)

(declare-fun res!3041240 () Bool)

(declare-fun e!4518453 () Bool)

(assert (=> d!2320314 (=> res!3041240 e!4518453)))

(assert (=> d!2320314 (= res!3041240 (is-ElementMatch!20108 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))))))

(assert (=> d!2320314 (= (validRegex!10536 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))) e!4518453)))

(declare-fun b!7593274 () Bool)

(declare-fun res!3041242 () Bool)

(declare-fun e!4518456 () Bool)

(assert (=> b!7593274 (=> res!3041242 e!4518456)))

(assert (=> b!7593274 (= res!3041242 (not (is-Concat!28953 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341)))))))

(assert (=> b!7593274 (= e!4518451 e!4518456)))

(declare-fun b!7593275 () Bool)

(assert (=> b!7593275 (= e!4518453 e!4518455)))

(assert (=> b!7593275 (= c!1400826 (is-Star!20108 (ite c!1400681 (regTwo!40729 r!22341) (regOne!40728 r!22341))))))

(declare-fun b!7593276 () Bool)

(assert (=> b!7593276 (= e!4518452 call!696935)))

(declare-fun b!7593277 () Bool)

(assert (=> b!7593277 (= e!4518456 e!4518457)))

(declare-fun res!3041238 () Bool)

(assert (=> b!7593277 (=> (not res!3041238) (not e!4518457))))

(assert (=> b!7593277 (= res!3041238 call!696934)))

(assert (= (and d!2320314 (not res!3041240)) b!7593275))

(assert (= (and b!7593275 c!1400826) b!7593271))

(assert (= (and b!7593275 (not c!1400826)) b!7593269))

(assert (= (and b!7593271 res!3041239) b!7593276))

(assert (= (and b!7593269 c!1400825) b!7593272))

(assert (= (and b!7593269 (not c!1400825)) b!7593274))

(assert (= (and b!7593272 res!3041241) b!7593270))

(assert (= (and b!7593274 (not res!3041242)) b!7593277))

(assert (= (and b!7593277 res!3041238) b!7593273))

(assert (= (or b!7593270 b!7593277) bm!696929))

(assert (= (or b!7593272 b!7593273) bm!696928))

(assert (= (or b!7593276 bm!696928) bm!696930))

(declare-fun m!8141414 () Bool)

(assert (=> bm!696929 m!8141414))

(declare-fun m!8141416 () Bool)

(assert (=> b!7593271 m!8141416))

(declare-fun m!8141418 () Bool)

(assert (=> bm!696930 m!8141418))

(assert (=> bm!696839 d!2320314))

(assert (=> b!7592646 d!2320286))

(assert (=> b!7592646 d!2320288))

(assert (=> b!7592688 d!2320260))

(assert (=> bm!696854 d!2320148))

(assert (=> b!7592683 d!2320308))

(declare-fun b!7593281 () Bool)

(declare-fun e!4518458 () Bool)

(declare-fun lt!2653637 () List!72991)

(assert (=> b!7593281 (= e!4518458 (or (not (= (_2!37772 (get!25632 lt!2653585)) Nil!72867)) (= lt!2653637 (_1!37772 (get!25632 lt!2653585)))))))

(declare-fun b!7593280 () Bool)

(declare-fun res!3041243 () Bool)

(assert (=> b!7593280 (=> (not res!3041243) (not e!4518458))))

(assert (=> b!7593280 (= res!3041243 (= (size!42505 lt!2653637) (+ (size!42505 (_1!37772 (get!25632 lt!2653585))) (size!42505 (_2!37772 (get!25632 lt!2653585))))))))

(declare-fun b!7593278 () Bool)

(declare-fun e!4518459 () List!72991)

(assert (=> b!7593278 (= e!4518459 (_2!37772 (get!25632 lt!2653585)))))

(declare-fun d!2320316 () Bool)

(assert (=> d!2320316 e!4518458))

(declare-fun res!3041244 () Bool)

(assert (=> d!2320316 (=> (not res!3041244) (not e!4518458))))

(assert (=> d!2320316 (= res!3041244 (= (content!15412 lt!2653637) (set.union (content!15412 (_1!37772 (get!25632 lt!2653585))) (content!15412 (_2!37772 (get!25632 lt!2653585))))))))

(assert (=> d!2320316 (= lt!2653637 e!4518459)))

(declare-fun c!1400827 () Bool)

(assert (=> d!2320316 (= c!1400827 (is-Nil!72867 (_1!37772 (get!25632 lt!2653585))))))

(assert (=> d!2320316 (= (++!17516 (_1!37772 (get!25632 lt!2653585)) (_2!37772 (get!25632 lt!2653585))) lt!2653637)))

(declare-fun b!7593279 () Bool)

(assert (=> b!7593279 (= e!4518459 (Cons!72867 (h!79315 (_1!37772 (get!25632 lt!2653585))) (++!17516 (t!387726 (_1!37772 (get!25632 lt!2653585))) (_2!37772 (get!25632 lt!2653585)))))))

(assert (= (and d!2320316 c!1400827) b!7593278))

(assert (= (and d!2320316 (not c!1400827)) b!7593279))

(assert (= (and d!2320316 res!3041244) b!7593280))

(assert (= (and b!7593280 res!3041243) b!7593281))

(declare-fun m!8141420 () Bool)

(assert (=> b!7593280 m!8141420))

(declare-fun m!8141422 () Bool)

(assert (=> b!7593280 m!8141422))

(declare-fun m!8141424 () Bool)

(assert (=> b!7593280 m!8141424))

(declare-fun m!8141426 () Bool)

(assert (=> d!2320316 m!8141426))

(declare-fun m!8141428 () Bool)

(assert (=> d!2320316 m!8141428))

(declare-fun m!8141430 () Bool)

(assert (=> d!2320316 m!8141430))

(declare-fun m!8141432 () Bool)

(assert (=> b!7593279 m!8141432))

(assert (=> b!7592679 d!2320316))

(assert (=> b!7592679 d!2320284))

(assert (=> b!7592650 d!2320220))

(declare-fun b!7593282 () Bool)

(declare-fun e!4518463 () Bool)

(declare-fun lt!2653638 () Bool)

(declare-fun call!696936 () Bool)

(assert (=> b!7593282 (= e!4518463 (= lt!2653638 call!696936))))

(declare-fun bm!696931 () Bool)

(assert (=> bm!696931 (= call!696936 (isEmpty!41554 (_1!37772 (get!25632 lt!2653585))))))

(declare-fun d!2320318 () Bool)

(assert (=> d!2320318 e!4518463))

(declare-fun c!1400829 () Bool)

(assert (=> d!2320318 (= c!1400829 (is-EmptyExpr!20108 (regOne!40728 r!22341)))))

(declare-fun e!4518466 () Bool)

(assert (=> d!2320318 (= lt!2653638 e!4518466)))

(declare-fun c!1400828 () Bool)

(assert (=> d!2320318 (= c!1400828 (isEmpty!41554 (_1!37772 (get!25632 lt!2653585))))))

(assert (=> d!2320318 (validRegex!10536 (regOne!40728 r!22341))))

(assert (=> d!2320318 (= (matchR!9700 (regOne!40728 r!22341) (_1!37772 (get!25632 lt!2653585))) lt!2653638)))

(declare-fun b!7593283 () Bool)

(declare-fun res!3041249 () Bool)

(declare-fun e!4518464 () Bool)

(assert (=> b!7593283 (=> res!3041249 e!4518464)))

(assert (=> b!7593283 (= res!3041249 (not (isEmpty!41554 (tail!15165 (_1!37772 (get!25632 lt!2653585))))))))

(declare-fun b!7593284 () Bool)

(declare-fun e!4518465 () Bool)

(assert (=> b!7593284 (= e!4518465 (= (head!15625 (_1!37772 (get!25632 lt!2653585))) (c!1400675 (regOne!40728 r!22341))))))

(declare-fun b!7593285 () Bool)

(assert (=> b!7593285 (= e!4518466 (matchR!9700 (derivativeStep!5825 (regOne!40728 r!22341) (head!15625 (_1!37772 (get!25632 lt!2653585)))) (tail!15165 (_1!37772 (get!25632 lt!2653585)))))))

(declare-fun b!7593286 () Bool)

(declare-fun res!3041248 () Bool)

(declare-fun e!4518462 () Bool)

(assert (=> b!7593286 (=> res!3041248 e!4518462)))

(assert (=> b!7593286 (= res!3041248 e!4518465)))

(declare-fun res!3041247 () Bool)

(assert (=> b!7593286 (=> (not res!3041247) (not e!4518465))))

(assert (=> b!7593286 (= res!3041247 lt!2653638)))

(declare-fun b!7593287 () Bool)

(declare-fun res!3041252 () Bool)

(assert (=> b!7593287 (=> (not res!3041252) (not e!4518465))))

(assert (=> b!7593287 (= res!3041252 (isEmpty!41554 (tail!15165 (_1!37772 (get!25632 lt!2653585)))))))

(declare-fun b!7593288 () Bool)

(declare-fun e!4518460 () Bool)

(assert (=> b!7593288 (= e!4518460 (not lt!2653638))))

(declare-fun b!7593289 () Bool)

(assert (=> b!7593289 (= e!4518466 (nullable!8799 (regOne!40728 r!22341)))))

(declare-fun b!7593290 () Bool)

(assert (=> b!7593290 (= e!4518463 e!4518460)))

(declare-fun c!1400830 () Bool)

(assert (=> b!7593290 (= c!1400830 (is-EmptyLang!20108 (regOne!40728 r!22341)))))

(declare-fun b!7593291 () Bool)

(assert (=> b!7593291 (= e!4518464 (not (= (head!15625 (_1!37772 (get!25632 lt!2653585))) (c!1400675 (regOne!40728 r!22341)))))))

(declare-fun b!7593292 () Bool)

(declare-fun e!4518461 () Bool)

(assert (=> b!7593292 (= e!4518462 e!4518461)))

(declare-fun res!3041250 () Bool)

(assert (=> b!7593292 (=> (not res!3041250) (not e!4518461))))

(assert (=> b!7593292 (= res!3041250 (not lt!2653638))))

(declare-fun b!7593293 () Bool)

(declare-fun res!3041251 () Bool)

(assert (=> b!7593293 (=> res!3041251 e!4518462)))

(assert (=> b!7593293 (= res!3041251 (not (is-ElementMatch!20108 (regOne!40728 r!22341))))))

(assert (=> b!7593293 (= e!4518460 e!4518462)))

(declare-fun b!7593294 () Bool)

(declare-fun res!3041245 () Bool)

(assert (=> b!7593294 (=> (not res!3041245) (not e!4518465))))

(assert (=> b!7593294 (= res!3041245 (not call!696936))))

(declare-fun b!7593295 () Bool)

(assert (=> b!7593295 (= e!4518461 e!4518464)))

(declare-fun res!3041246 () Bool)

(assert (=> b!7593295 (=> res!3041246 e!4518464)))

(assert (=> b!7593295 (= res!3041246 call!696936)))

(assert (= (and d!2320318 c!1400828) b!7593289))

(assert (= (and d!2320318 (not c!1400828)) b!7593285))

(assert (= (and d!2320318 c!1400829) b!7593282))

(assert (= (and d!2320318 (not c!1400829)) b!7593290))

(assert (= (and b!7593290 c!1400830) b!7593288))

(assert (= (and b!7593290 (not c!1400830)) b!7593293))

(assert (= (and b!7593293 (not res!3041251)) b!7593286))

(assert (= (and b!7593286 res!3041247) b!7593294))

(assert (= (and b!7593294 res!3041245) b!7593287))

(assert (= (and b!7593287 res!3041252) b!7593284))

(assert (= (and b!7593286 (not res!3041248)) b!7593292))

(assert (= (and b!7593292 res!3041250) b!7593295))

(assert (= (and b!7593295 (not res!3041246)) b!7593283))

(assert (= (and b!7593283 (not res!3041249)) b!7593291))

(assert (= (or b!7593282 b!7593294 b!7593295) bm!696931))

(declare-fun m!8141434 () Bool)

(assert (=> b!7593283 m!8141434))

(assert (=> b!7593283 m!8141434))

(declare-fun m!8141436 () Bool)

(assert (=> b!7593283 m!8141436))

(declare-fun m!8141438 () Bool)

(assert (=> b!7593291 m!8141438))

(assert (=> b!7593285 m!8141438))

(assert (=> b!7593285 m!8141438))

(declare-fun m!8141440 () Bool)

(assert (=> b!7593285 m!8141440))

(assert (=> b!7593285 m!8141434))

(assert (=> b!7593285 m!8141440))

(assert (=> b!7593285 m!8141434))

(declare-fun m!8141442 () Bool)

(assert (=> b!7593285 m!8141442))

(declare-fun m!8141444 () Bool)

(assert (=> bm!696931 m!8141444))

(assert (=> b!7593284 m!8141438))

(assert (=> b!7593287 m!8141434))

(assert (=> b!7593287 m!8141434))

(assert (=> b!7593287 m!8141436))

(assert (=> d!2320318 m!8141444))

(assert (=> d!2320318 m!8140990))

(assert (=> b!7593289 m!8141012))

(assert (=> b!7592681 d!2320318))

(assert (=> b!7592681 d!2320284))

(declare-fun bs!1941842 () Bool)

(declare-fun b!7593302 () Bool)

(assert (= bs!1941842 (and b!7593302 d!2320226)))

(declare-fun lambda!467339 () Int)

(assert (=> bs!1941842 (not (= lambda!467339 lambda!467330))))

(declare-fun bs!1941843 () Bool)

(assert (= bs!1941843 (and b!7593302 d!2320160)))

(assert (=> bs!1941843 (not (= lambda!467339 lambda!467306))))

(declare-fun bs!1941844 () Bool)

(assert (= bs!1941844 (and b!7593302 d!2320300)))

(assert (=> bs!1941844 (not (= lambda!467339 lambda!467337))))

(declare-fun bs!1941845 () Bool)

(assert (= bs!1941845 (and b!7593302 d!2320150)))

(assert (=> bs!1941845 (not (= lambda!467339 lambda!467303))))

(declare-fun bs!1941846 () Bool)

(assert (= bs!1941846 (and b!7593302 b!7592747)))

(assert (=> bs!1941846 (not (= lambda!467339 lambda!467321))))

(declare-fun bs!1941847 () Bool)

(assert (= bs!1941847 (and b!7593302 b!7592507)))

(assert (=> bs!1941847 (not (= lambda!467339 lambda!467288))))

(declare-fun bs!1941848 () Bool)

(assert (= bs!1941848 (and b!7593302 b!7592751)))

(assert (=> bs!1941848 (= (and (= (reg!20437 (regOne!40729 r!22341)) (reg!20437 r!22341)) (= (regOne!40729 r!22341) r!22341)) (= lambda!467339 lambda!467320))))

(assert (=> bs!1941844 (not (= lambda!467339 lambda!467338))))

(declare-fun bs!1941849 () Bool)

(assert (= bs!1941849 (and b!7593302 b!7593105)))

(assert (=> bs!1941849 (not (= lambda!467339 lambda!467332))))

(declare-fun bs!1941850 () Bool)

(assert (= bs!1941850 (and b!7593302 b!7593109)))

(assert (=> bs!1941850 (= (and (= (reg!20437 (regOne!40729 r!22341)) (reg!20437 (regTwo!40729 r!22341))) (= (regOne!40729 r!22341) (regTwo!40729 r!22341))) (= lambda!467339 lambda!467331))))

(assert (=> bs!1941847 (not (= lambda!467339 lambda!467289))))

(assert (=> bs!1941845 (not (= lambda!467339 lambda!467302))))

(assert (=> b!7593302 true))

(assert (=> b!7593302 true))

(declare-fun bs!1941851 () Bool)

(declare-fun b!7593298 () Bool)

(assert (= bs!1941851 (and b!7593298 d!2320226)))

(declare-fun lambda!467340 () Int)

(assert (=> bs!1941851 (not (= lambda!467340 lambda!467330))))

(declare-fun bs!1941852 () Bool)

(assert (= bs!1941852 (and b!7593298 d!2320160)))

(assert (=> bs!1941852 (not (= lambda!467340 lambda!467306))))

(declare-fun bs!1941853 () Bool)

(assert (= bs!1941853 (and b!7593298 d!2320300)))

(assert (=> bs!1941853 (not (= lambda!467340 lambda!467337))))

(declare-fun bs!1941854 () Bool)

(assert (= bs!1941854 (and b!7593298 d!2320150)))

(assert (=> bs!1941854 (= (and (= (regOne!40728 (regOne!40729 r!22341)) (regOne!40728 r!22341)) (= (regTwo!40728 (regOne!40729 r!22341)) (regTwo!40728 r!22341))) (= lambda!467340 lambda!467303))))

(declare-fun bs!1941855 () Bool)

(assert (= bs!1941855 (and b!7593298 b!7592747)))

(assert (=> bs!1941855 (= (and (= (regOne!40728 (regOne!40729 r!22341)) (regOne!40728 r!22341)) (= (regTwo!40728 (regOne!40729 r!22341)) (regTwo!40728 r!22341))) (= lambda!467340 lambda!467321))))

(declare-fun bs!1941856 () Bool)

(assert (= bs!1941856 (and b!7593298 b!7592507)))

(assert (=> bs!1941856 (not (= lambda!467340 lambda!467288))))

(declare-fun bs!1941857 () Bool)

(assert (= bs!1941857 (and b!7593298 b!7592751)))

(assert (=> bs!1941857 (not (= lambda!467340 lambda!467320))))

(assert (=> bs!1941853 (= (and (= (regOne!40728 (regOne!40729 r!22341)) (regOne!40728 r!22341)) (= (regTwo!40728 (regOne!40729 r!22341)) (regTwo!40728 r!22341))) (= lambda!467340 lambda!467338))))

(declare-fun bs!1941858 () Bool)

(assert (= bs!1941858 (and b!7593298 b!7593105)))

(assert (=> bs!1941858 (= (and (= (regOne!40728 (regOne!40729 r!22341)) (regOne!40728 (regTwo!40729 r!22341))) (= (regTwo!40728 (regOne!40729 r!22341)) (regTwo!40728 (regTwo!40729 r!22341)))) (= lambda!467340 lambda!467332))))

(declare-fun bs!1941859 () Bool)

(assert (= bs!1941859 (and b!7593298 b!7593109)))

(assert (=> bs!1941859 (not (= lambda!467340 lambda!467331))))

(assert (=> bs!1941856 (= (and (= (regOne!40728 (regOne!40729 r!22341)) (regOne!40728 r!22341)) (= (regTwo!40728 (regOne!40729 r!22341)) (regTwo!40728 r!22341))) (= lambda!467340 lambda!467289))))

(assert (=> bs!1941854 (not (= lambda!467340 lambda!467302))))

(declare-fun bs!1941860 () Bool)

(assert (= bs!1941860 (and b!7593298 b!7593302)))

(assert (=> bs!1941860 (not (= lambda!467340 lambda!467339))))

(assert (=> b!7593298 true))

(assert (=> b!7593298 true))

(declare-fun b!7593296 () Bool)

(declare-fun e!4518470 () Bool)

(declare-fun e!4518471 () Bool)

(assert (=> b!7593296 (= e!4518470 e!4518471)))

(declare-fun res!3041253 () Bool)

(assert (=> b!7593296 (= res!3041253 (not (is-EmptyLang!20108 (regOne!40729 r!22341))))))

(assert (=> b!7593296 (=> (not res!3041253) (not e!4518471))))

(declare-fun b!7593297 () Bool)

(declare-fun c!1400833 () Bool)

(assert (=> b!7593297 (= c!1400833 (is-ElementMatch!20108 (regOne!40729 r!22341)))))

(declare-fun e!4518468 () Bool)

(assert (=> b!7593297 (= e!4518471 e!4518468)))

(declare-fun b!7593299 () Bool)

(declare-fun res!3041254 () Bool)

(declare-fun e!4518472 () Bool)

(assert (=> b!7593299 (=> res!3041254 e!4518472)))

(declare-fun call!696937 () Bool)

(assert (=> b!7593299 (= res!3041254 call!696937)))

(declare-fun e!4518469 () Bool)

(assert (=> b!7593299 (= e!4518469 e!4518472)))

(declare-fun bm!696932 () Bool)

(declare-fun call!696938 () Bool)

(declare-fun c!1400834 () Bool)

(assert (=> bm!696932 (= call!696938 (Exists!4340 (ite c!1400834 lambda!467339 lambda!467340)))))

(declare-fun b!7593300 () Bool)

(declare-fun e!4518467 () Bool)

(declare-fun e!4518473 () Bool)

(assert (=> b!7593300 (= e!4518467 e!4518473)))

(declare-fun res!3041255 () Bool)

(assert (=> b!7593300 (= res!3041255 (matchRSpec!4421 (regOne!40729 (regOne!40729 r!22341)) s!13436))))

(assert (=> b!7593300 (=> res!3041255 e!4518473)))

(declare-fun b!7593301 () Bool)

(assert (=> b!7593301 (= e!4518470 call!696937)))

(assert (=> b!7593302 (= e!4518472 call!696938)))

(declare-fun d!2320320 () Bool)

(declare-fun c!1400831 () Bool)

(assert (=> d!2320320 (= c!1400831 (is-EmptyExpr!20108 (regOne!40729 r!22341)))))

(assert (=> d!2320320 (= (matchRSpec!4421 (regOne!40729 r!22341) s!13436) e!4518470)))

(assert (=> b!7593298 (= e!4518469 call!696938)))

(declare-fun b!7593303 () Bool)

(assert (=> b!7593303 (= e!4518473 (matchRSpec!4421 (regTwo!40729 (regOne!40729 r!22341)) s!13436))))

(declare-fun b!7593304 () Bool)

(assert (=> b!7593304 (= e!4518468 (= s!13436 (Cons!72867 (c!1400675 (regOne!40729 r!22341)) Nil!72867)))))

(declare-fun b!7593305 () Bool)

(declare-fun c!1400832 () Bool)

(assert (=> b!7593305 (= c!1400832 (is-Union!20108 (regOne!40729 r!22341)))))

(assert (=> b!7593305 (= e!4518468 e!4518467)))

(declare-fun bm!696933 () Bool)

(assert (=> bm!696933 (= call!696937 (isEmpty!41554 s!13436))))

(declare-fun b!7593306 () Bool)

(assert (=> b!7593306 (= e!4518467 e!4518469)))

(assert (=> b!7593306 (= c!1400834 (is-Star!20108 (regOne!40729 r!22341)))))

(assert (= (and d!2320320 c!1400831) b!7593301))

(assert (= (and d!2320320 (not c!1400831)) b!7593296))

(assert (= (and b!7593296 res!3041253) b!7593297))

(assert (= (and b!7593297 c!1400833) b!7593304))

(assert (= (and b!7593297 (not c!1400833)) b!7593305))

(assert (= (and b!7593305 c!1400832) b!7593300))

(assert (= (and b!7593305 (not c!1400832)) b!7593306))

(assert (= (and b!7593300 (not res!3041255)) b!7593303))

(assert (= (and b!7593306 c!1400834) b!7593299))

(assert (= (and b!7593306 (not c!1400834)) b!7593298))

(assert (= (and b!7593299 (not res!3041254)) b!7593302))

(assert (= (or b!7593302 b!7593298) bm!696932))

(assert (= (or b!7593301 b!7593299) bm!696933))

(declare-fun m!8141446 () Bool)

(assert (=> bm!696932 m!8141446))

(declare-fun m!8141448 () Bool)

(assert (=> b!7593300 m!8141448))

(declare-fun m!8141450 () Bool)

(assert (=> b!7593303 m!8141450))

(assert (=> bm!696933 m!8140926))

(assert (=> b!7592749 d!2320320))

(assert (=> bm!696844 d!2320264))

(declare-fun b!7593308 () Bool)

(declare-fun e!4518474 () Bool)

(declare-fun tp!2212874 () Bool)

(declare-fun tp!2212872 () Bool)

(assert (=> b!7593308 (= e!4518474 (and tp!2212874 tp!2212872))))

(declare-fun b!7593310 () Bool)

(declare-fun tp!2212873 () Bool)

(declare-fun tp!2212871 () Bool)

(assert (=> b!7593310 (= e!4518474 (and tp!2212873 tp!2212871))))

(assert (=> b!7592815 (= tp!2212812 e!4518474)))

(declare-fun b!7593309 () Bool)

(declare-fun tp!2212870 () Bool)

(assert (=> b!7593309 (= e!4518474 tp!2212870)))

(declare-fun b!7593307 () Bool)

(assert (=> b!7593307 (= e!4518474 tp_is_empty!50571)))

(assert (= (and b!7592815 (is-ElementMatch!20108 (regOne!40729 (regOne!40728 r!22341)))) b!7593307))

(assert (= (and b!7592815 (is-Concat!28953 (regOne!40729 (regOne!40728 r!22341)))) b!7593308))

(assert (= (and b!7592815 (is-Star!20108 (regOne!40729 (regOne!40728 r!22341)))) b!7593309))

(assert (= (and b!7592815 (is-Union!20108 (regOne!40729 (regOne!40728 r!22341)))) b!7593310))

(declare-fun b!7593312 () Bool)

(declare-fun e!4518475 () Bool)

(declare-fun tp!2212879 () Bool)

(declare-fun tp!2212877 () Bool)

(assert (=> b!7593312 (= e!4518475 (and tp!2212879 tp!2212877))))

(declare-fun b!7593314 () Bool)

(declare-fun tp!2212878 () Bool)

(declare-fun tp!2212876 () Bool)

(assert (=> b!7593314 (= e!4518475 (and tp!2212878 tp!2212876))))

(assert (=> b!7592815 (= tp!2212810 e!4518475)))

(declare-fun b!7593313 () Bool)

(declare-fun tp!2212875 () Bool)

(assert (=> b!7593313 (= e!4518475 tp!2212875)))

(declare-fun b!7593311 () Bool)

(assert (=> b!7593311 (= e!4518475 tp_is_empty!50571)))

(assert (= (and b!7592815 (is-ElementMatch!20108 (regTwo!40729 (regOne!40728 r!22341)))) b!7593311))

(assert (= (and b!7592815 (is-Concat!28953 (regTwo!40729 (regOne!40728 r!22341)))) b!7593312))

(assert (= (and b!7592815 (is-Star!20108 (regTwo!40729 (regOne!40728 r!22341)))) b!7593313))

(assert (= (and b!7592815 (is-Union!20108 (regTwo!40729 (regOne!40728 r!22341)))) b!7593314))

(declare-fun b!7593316 () Bool)

(declare-fun e!4518476 () Bool)

(declare-fun tp!2212884 () Bool)

(declare-fun tp!2212882 () Bool)

(assert (=> b!7593316 (= e!4518476 (and tp!2212884 tp!2212882))))

(declare-fun b!7593318 () Bool)

(declare-fun tp!2212883 () Bool)

(declare-fun tp!2212881 () Bool)

(assert (=> b!7593318 (= e!4518476 (and tp!2212883 tp!2212881))))

(assert (=> b!7592819 (= tp!2212817 e!4518476)))

(declare-fun b!7593317 () Bool)

(declare-fun tp!2212880 () Bool)

(assert (=> b!7593317 (= e!4518476 tp!2212880)))

(declare-fun b!7593315 () Bool)

(assert (=> b!7593315 (= e!4518476 tp_is_empty!50571)))

(assert (= (and b!7592819 (is-ElementMatch!20108 (regOne!40729 (regTwo!40728 r!22341)))) b!7593315))

(assert (= (and b!7592819 (is-Concat!28953 (regOne!40729 (regTwo!40728 r!22341)))) b!7593316))

(assert (= (and b!7592819 (is-Star!20108 (regOne!40729 (regTwo!40728 r!22341)))) b!7593317))

(assert (= (and b!7592819 (is-Union!20108 (regOne!40729 (regTwo!40728 r!22341)))) b!7593318))

(declare-fun b!7593320 () Bool)

(declare-fun e!4518477 () Bool)

(declare-fun tp!2212889 () Bool)

(declare-fun tp!2212887 () Bool)

(assert (=> b!7593320 (= e!4518477 (and tp!2212889 tp!2212887))))

(declare-fun b!7593322 () Bool)

(declare-fun tp!2212888 () Bool)

(declare-fun tp!2212886 () Bool)

(assert (=> b!7593322 (= e!4518477 (and tp!2212888 tp!2212886))))

(assert (=> b!7592819 (= tp!2212815 e!4518477)))

(declare-fun b!7593321 () Bool)

(declare-fun tp!2212885 () Bool)

(assert (=> b!7593321 (= e!4518477 tp!2212885)))

(declare-fun b!7593319 () Bool)

(assert (=> b!7593319 (= e!4518477 tp_is_empty!50571)))

(assert (= (and b!7592819 (is-ElementMatch!20108 (regTwo!40729 (regTwo!40728 r!22341)))) b!7593319))

(assert (= (and b!7592819 (is-Concat!28953 (regTwo!40729 (regTwo!40728 r!22341)))) b!7593320))

(assert (= (and b!7592819 (is-Star!20108 (regTwo!40729 (regTwo!40728 r!22341)))) b!7593321))

(assert (= (and b!7592819 (is-Union!20108 (regTwo!40729 (regTwo!40728 r!22341)))) b!7593322))

(declare-fun b!7593324 () Bool)

(declare-fun e!4518478 () Bool)

(declare-fun tp!2212894 () Bool)

(declare-fun tp!2212892 () Bool)

(assert (=> b!7593324 (= e!4518478 (and tp!2212894 tp!2212892))))

(declare-fun b!7593326 () Bool)

(declare-fun tp!2212893 () Bool)

(declare-fun tp!2212891 () Bool)

(assert (=> b!7593326 (= e!4518478 (and tp!2212893 tp!2212891))))

(assert (=> b!7592810 (= tp!2212804 e!4518478)))

(declare-fun b!7593325 () Bool)

(declare-fun tp!2212890 () Bool)

(assert (=> b!7593325 (= e!4518478 tp!2212890)))

(declare-fun b!7593323 () Bool)

(assert (=> b!7593323 (= e!4518478 tp_is_empty!50571)))

(assert (= (and b!7592810 (is-ElementMatch!20108 (reg!20437 (reg!20437 r!22341)))) b!7593323))

(assert (= (and b!7592810 (is-Concat!28953 (reg!20437 (reg!20437 r!22341)))) b!7593324))

(assert (= (and b!7592810 (is-Star!20108 (reg!20437 (reg!20437 r!22341)))) b!7593325))

(assert (= (and b!7592810 (is-Union!20108 (reg!20437 (reg!20437 r!22341)))) b!7593326))

(declare-fun b!7593328 () Bool)

(declare-fun e!4518479 () Bool)

(declare-fun tp!2212899 () Bool)

(declare-fun tp!2212897 () Bool)

(assert (=> b!7593328 (= e!4518479 (and tp!2212899 tp!2212897))))

(declare-fun b!7593330 () Bool)

(declare-fun tp!2212898 () Bool)

(declare-fun tp!2212896 () Bool)

(assert (=> b!7593330 (= e!4518479 (and tp!2212898 tp!2212896))))

(assert (=> b!7592811 (= tp!2212807 e!4518479)))

(declare-fun b!7593329 () Bool)

(declare-fun tp!2212895 () Bool)

(assert (=> b!7593329 (= e!4518479 tp!2212895)))

(declare-fun b!7593327 () Bool)

(assert (=> b!7593327 (= e!4518479 tp_is_empty!50571)))

(assert (= (and b!7592811 (is-ElementMatch!20108 (regOne!40729 (reg!20437 r!22341)))) b!7593327))

(assert (= (and b!7592811 (is-Concat!28953 (regOne!40729 (reg!20437 r!22341)))) b!7593328))

(assert (= (and b!7592811 (is-Star!20108 (regOne!40729 (reg!20437 r!22341)))) b!7593329))

(assert (= (and b!7592811 (is-Union!20108 (regOne!40729 (reg!20437 r!22341)))) b!7593330))

(declare-fun b!7593332 () Bool)

(declare-fun e!4518480 () Bool)

(declare-fun tp!2212904 () Bool)

(declare-fun tp!2212902 () Bool)

(assert (=> b!7593332 (= e!4518480 (and tp!2212904 tp!2212902))))

(declare-fun b!7593334 () Bool)

(declare-fun tp!2212903 () Bool)

(declare-fun tp!2212901 () Bool)

(assert (=> b!7593334 (= e!4518480 (and tp!2212903 tp!2212901))))

(assert (=> b!7592811 (= tp!2212805 e!4518480)))

(declare-fun b!7593333 () Bool)

(declare-fun tp!2212900 () Bool)

(assert (=> b!7593333 (= e!4518480 tp!2212900)))

(declare-fun b!7593331 () Bool)

(assert (=> b!7593331 (= e!4518480 tp_is_empty!50571)))

(assert (= (and b!7592811 (is-ElementMatch!20108 (regTwo!40729 (reg!20437 r!22341)))) b!7593331))

(assert (= (and b!7592811 (is-Concat!28953 (regTwo!40729 (reg!20437 r!22341)))) b!7593332))

(assert (= (and b!7592811 (is-Star!20108 (regTwo!40729 (reg!20437 r!22341)))) b!7593333))

(assert (= (and b!7592811 (is-Union!20108 (regTwo!40729 (reg!20437 r!22341)))) b!7593334))

(declare-fun b!7593336 () Bool)

(declare-fun e!4518481 () Bool)

(declare-fun tp!2212909 () Bool)

(declare-fun tp!2212907 () Bool)

(assert (=> b!7593336 (= e!4518481 (and tp!2212909 tp!2212907))))

(declare-fun b!7593338 () Bool)

(declare-fun tp!2212908 () Bool)

(declare-fun tp!2212906 () Bool)

(assert (=> b!7593338 (= e!4518481 (and tp!2212908 tp!2212906))))

(assert (=> b!7592817 (= tp!2212818 e!4518481)))

(declare-fun b!7593337 () Bool)

(declare-fun tp!2212905 () Bool)

(assert (=> b!7593337 (= e!4518481 tp!2212905)))

(declare-fun b!7593335 () Bool)

(assert (=> b!7593335 (= e!4518481 tp_is_empty!50571)))

(assert (= (and b!7592817 (is-ElementMatch!20108 (regOne!40728 (regTwo!40728 r!22341)))) b!7593335))

(assert (= (and b!7592817 (is-Concat!28953 (regOne!40728 (regTwo!40728 r!22341)))) b!7593336))

(assert (= (and b!7592817 (is-Star!20108 (regOne!40728 (regTwo!40728 r!22341)))) b!7593337))

(assert (= (and b!7592817 (is-Union!20108 (regOne!40728 (regTwo!40728 r!22341)))) b!7593338))

(declare-fun b!7593340 () Bool)

(declare-fun e!4518482 () Bool)

(declare-fun tp!2212914 () Bool)

(declare-fun tp!2212912 () Bool)

(assert (=> b!7593340 (= e!4518482 (and tp!2212914 tp!2212912))))

(declare-fun b!7593342 () Bool)

(declare-fun tp!2212913 () Bool)

(declare-fun tp!2212911 () Bool)

(assert (=> b!7593342 (= e!4518482 (and tp!2212913 tp!2212911))))

(assert (=> b!7592817 (= tp!2212816 e!4518482)))

(declare-fun b!7593341 () Bool)

(declare-fun tp!2212910 () Bool)

(assert (=> b!7593341 (= e!4518482 tp!2212910)))

(declare-fun b!7593339 () Bool)

(assert (=> b!7593339 (= e!4518482 tp_is_empty!50571)))

(assert (= (and b!7592817 (is-ElementMatch!20108 (regTwo!40728 (regTwo!40728 r!22341)))) b!7593339))

(assert (= (and b!7592817 (is-Concat!28953 (regTwo!40728 (regTwo!40728 r!22341)))) b!7593340))

(assert (= (and b!7592817 (is-Star!20108 (regTwo!40728 (regTwo!40728 r!22341)))) b!7593341))

(assert (= (and b!7592817 (is-Union!20108 (regTwo!40728 (regTwo!40728 r!22341)))) b!7593342))

(declare-fun b!7593344 () Bool)

(declare-fun e!4518483 () Bool)

(declare-fun tp!2212919 () Bool)

(declare-fun tp!2212917 () Bool)

(assert (=> b!7593344 (= e!4518483 (and tp!2212919 tp!2212917))))

(declare-fun b!7593346 () Bool)

(declare-fun tp!2212918 () Bool)

(declare-fun tp!2212916 () Bool)

(assert (=> b!7593346 (= e!4518483 (and tp!2212918 tp!2212916))))

(assert (=> b!7592822 (= tp!2212819 e!4518483)))

(declare-fun b!7593345 () Bool)

(declare-fun tp!2212915 () Bool)

(assert (=> b!7593345 (= e!4518483 tp!2212915)))

(declare-fun b!7593343 () Bool)

(assert (=> b!7593343 (= e!4518483 tp_is_empty!50571)))

(assert (= (and b!7592822 (is-ElementMatch!20108 (reg!20437 (regOne!40729 r!22341)))) b!7593343))

(assert (= (and b!7592822 (is-Concat!28953 (reg!20437 (regOne!40729 r!22341)))) b!7593344))

(assert (= (and b!7592822 (is-Star!20108 (reg!20437 (regOne!40729 r!22341)))) b!7593345))

(assert (= (and b!7592822 (is-Union!20108 (reg!20437 (regOne!40729 r!22341)))) b!7593346))

(declare-fun b!7593348 () Bool)

(declare-fun e!4518484 () Bool)

(declare-fun tp!2212924 () Bool)

(declare-fun tp!2212922 () Bool)

(assert (=> b!7593348 (= e!4518484 (and tp!2212924 tp!2212922))))

(declare-fun b!7593350 () Bool)

(declare-fun tp!2212923 () Bool)

(declare-fun tp!2212921 () Bool)

(assert (=> b!7593350 (= e!4518484 (and tp!2212923 tp!2212921))))

(assert (=> b!7592821 (= tp!2212823 e!4518484)))

(declare-fun b!7593349 () Bool)

(declare-fun tp!2212920 () Bool)

(assert (=> b!7593349 (= e!4518484 tp!2212920)))

(declare-fun b!7593347 () Bool)

(assert (=> b!7593347 (= e!4518484 tp_is_empty!50571)))

(assert (= (and b!7592821 (is-ElementMatch!20108 (regOne!40728 (regOne!40729 r!22341)))) b!7593347))

(assert (= (and b!7592821 (is-Concat!28953 (regOne!40728 (regOne!40729 r!22341)))) b!7593348))

(assert (= (and b!7592821 (is-Star!20108 (regOne!40728 (regOne!40729 r!22341)))) b!7593349))

(assert (= (and b!7592821 (is-Union!20108 (regOne!40728 (regOne!40729 r!22341)))) b!7593350))

(declare-fun b!7593352 () Bool)

(declare-fun e!4518485 () Bool)

(declare-fun tp!2212929 () Bool)

(declare-fun tp!2212927 () Bool)

(assert (=> b!7593352 (= e!4518485 (and tp!2212929 tp!2212927))))

(declare-fun b!7593354 () Bool)

(declare-fun tp!2212928 () Bool)

(declare-fun tp!2212926 () Bool)

(assert (=> b!7593354 (= e!4518485 (and tp!2212928 tp!2212926))))

(assert (=> b!7592821 (= tp!2212821 e!4518485)))

(declare-fun b!7593353 () Bool)

(declare-fun tp!2212925 () Bool)

(assert (=> b!7593353 (= e!4518485 tp!2212925)))

(declare-fun b!7593351 () Bool)

(assert (=> b!7593351 (= e!4518485 tp_is_empty!50571)))

(assert (= (and b!7592821 (is-ElementMatch!20108 (regTwo!40728 (regOne!40729 r!22341)))) b!7593351))

(assert (= (and b!7592821 (is-Concat!28953 (regTwo!40728 (regOne!40729 r!22341)))) b!7593352))

(assert (= (and b!7592821 (is-Star!20108 (regTwo!40728 (regOne!40729 r!22341)))) b!7593353))

(assert (= (and b!7592821 (is-Union!20108 (regTwo!40728 (regOne!40729 r!22341)))) b!7593354))

(declare-fun b!7593356 () Bool)

(declare-fun e!4518486 () Bool)

(declare-fun tp!2212934 () Bool)

(declare-fun tp!2212932 () Bool)

(assert (=> b!7593356 (= e!4518486 (and tp!2212934 tp!2212932))))

(declare-fun b!7593358 () Bool)

(declare-fun tp!2212933 () Bool)

(declare-fun tp!2212931 () Bool)

(assert (=> b!7593358 (= e!4518486 (and tp!2212933 tp!2212931))))

(assert (=> b!7592826 (= tp!2212824 e!4518486)))

(declare-fun b!7593357 () Bool)

(declare-fun tp!2212930 () Bool)

(assert (=> b!7593357 (= e!4518486 tp!2212930)))

(declare-fun b!7593355 () Bool)

(assert (=> b!7593355 (= e!4518486 tp_is_empty!50571)))

(assert (= (and b!7592826 (is-ElementMatch!20108 (reg!20437 (regTwo!40729 r!22341)))) b!7593355))

(assert (= (and b!7592826 (is-Concat!28953 (reg!20437 (regTwo!40729 r!22341)))) b!7593356))

(assert (= (and b!7592826 (is-Star!20108 (reg!20437 (regTwo!40729 r!22341)))) b!7593357))

(assert (= (and b!7592826 (is-Union!20108 (reg!20437 (regTwo!40729 r!22341)))) b!7593358))

(declare-fun b!7593360 () Bool)

(declare-fun e!4518487 () Bool)

(declare-fun tp!2212939 () Bool)

(declare-fun tp!2212937 () Bool)

(assert (=> b!7593360 (= e!4518487 (and tp!2212939 tp!2212937))))

(declare-fun b!7593362 () Bool)

(declare-fun tp!2212938 () Bool)

(declare-fun tp!2212936 () Bool)

(assert (=> b!7593362 (= e!4518487 (and tp!2212938 tp!2212936))))

(assert (=> b!7592823 (= tp!2212822 e!4518487)))

(declare-fun b!7593361 () Bool)

(declare-fun tp!2212935 () Bool)

(assert (=> b!7593361 (= e!4518487 tp!2212935)))

(declare-fun b!7593359 () Bool)

(assert (=> b!7593359 (= e!4518487 tp_is_empty!50571)))

(assert (= (and b!7592823 (is-ElementMatch!20108 (regOne!40729 (regOne!40729 r!22341)))) b!7593359))

(assert (= (and b!7592823 (is-Concat!28953 (regOne!40729 (regOne!40729 r!22341)))) b!7593360))

(assert (= (and b!7592823 (is-Star!20108 (regOne!40729 (regOne!40729 r!22341)))) b!7593361))

(assert (= (and b!7592823 (is-Union!20108 (regOne!40729 (regOne!40729 r!22341)))) b!7593362))

(declare-fun b!7593364 () Bool)

(declare-fun e!4518488 () Bool)

(declare-fun tp!2212944 () Bool)

(declare-fun tp!2212942 () Bool)

(assert (=> b!7593364 (= e!4518488 (and tp!2212944 tp!2212942))))

(declare-fun b!7593366 () Bool)

(declare-fun tp!2212943 () Bool)

(declare-fun tp!2212941 () Bool)

(assert (=> b!7593366 (= e!4518488 (and tp!2212943 tp!2212941))))

(assert (=> b!7592823 (= tp!2212820 e!4518488)))

(declare-fun b!7593365 () Bool)

(declare-fun tp!2212940 () Bool)

(assert (=> b!7593365 (= e!4518488 tp!2212940)))

(declare-fun b!7593363 () Bool)

(assert (=> b!7593363 (= e!4518488 tp_is_empty!50571)))

(assert (= (and b!7592823 (is-ElementMatch!20108 (regTwo!40729 (regOne!40729 r!22341)))) b!7593363))

(assert (= (and b!7592823 (is-Concat!28953 (regTwo!40729 (regOne!40729 r!22341)))) b!7593364))

(assert (= (and b!7592823 (is-Star!20108 (regTwo!40729 (regOne!40729 r!22341)))) b!7593365))

(assert (= (and b!7592823 (is-Union!20108 (regTwo!40729 (regOne!40729 r!22341)))) b!7593366))

(declare-fun b!7593368 () Bool)

(declare-fun e!4518489 () Bool)

(declare-fun tp!2212949 () Bool)

(declare-fun tp!2212947 () Bool)

(assert (=> b!7593368 (= e!4518489 (and tp!2212949 tp!2212947))))

(declare-fun b!7593370 () Bool)

(declare-fun tp!2212948 () Bool)

(declare-fun tp!2212946 () Bool)

(assert (=> b!7593370 (= e!4518489 (and tp!2212948 tp!2212946))))

(assert (=> b!7592809 (= tp!2212808 e!4518489)))

(declare-fun b!7593369 () Bool)

(declare-fun tp!2212945 () Bool)

(assert (=> b!7593369 (= e!4518489 tp!2212945)))

(declare-fun b!7593367 () Bool)

(assert (=> b!7593367 (= e!4518489 tp_is_empty!50571)))

(assert (= (and b!7592809 (is-ElementMatch!20108 (regOne!40728 (reg!20437 r!22341)))) b!7593367))

(assert (= (and b!7592809 (is-Concat!28953 (regOne!40728 (reg!20437 r!22341)))) b!7593368))

(assert (= (and b!7592809 (is-Star!20108 (regOne!40728 (reg!20437 r!22341)))) b!7593369))

(assert (= (and b!7592809 (is-Union!20108 (regOne!40728 (reg!20437 r!22341)))) b!7593370))

(declare-fun b!7593372 () Bool)

(declare-fun e!4518490 () Bool)

(declare-fun tp!2212954 () Bool)

(declare-fun tp!2212952 () Bool)

(assert (=> b!7593372 (= e!4518490 (and tp!2212954 tp!2212952))))

(declare-fun b!7593374 () Bool)

(declare-fun tp!2212953 () Bool)

(declare-fun tp!2212951 () Bool)

(assert (=> b!7593374 (= e!4518490 (and tp!2212953 tp!2212951))))

(assert (=> b!7592809 (= tp!2212806 e!4518490)))

(declare-fun b!7593373 () Bool)

(declare-fun tp!2212950 () Bool)

(assert (=> b!7593373 (= e!4518490 tp!2212950)))

(declare-fun b!7593371 () Bool)

(assert (=> b!7593371 (= e!4518490 tp_is_empty!50571)))

(assert (= (and b!7592809 (is-ElementMatch!20108 (regTwo!40728 (reg!20437 r!22341)))) b!7593371))

(assert (= (and b!7592809 (is-Concat!28953 (regTwo!40728 (reg!20437 r!22341)))) b!7593372))

(assert (= (and b!7592809 (is-Star!20108 (regTwo!40728 (reg!20437 r!22341)))) b!7593373))

(assert (= (and b!7592809 (is-Union!20108 (regTwo!40728 (reg!20437 r!22341)))) b!7593374))

(declare-fun b!7593376 () Bool)

(declare-fun e!4518491 () Bool)

(declare-fun tp!2212959 () Bool)

(declare-fun tp!2212957 () Bool)

(assert (=> b!7593376 (= e!4518491 (and tp!2212959 tp!2212957))))

(declare-fun b!7593378 () Bool)

(declare-fun tp!2212958 () Bool)

(declare-fun tp!2212956 () Bool)

(assert (=> b!7593378 (= e!4518491 (and tp!2212958 tp!2212956))))

(assert (=> b!7592814 (= tp!2212809 e!4518491)))

(declare-fun b!7593377 () Bool)

(declare-fun tp!2212955 () Bool)

(assert (=> b!7593377 (= e!4518491 tp!2212955)))

(declare-fun b!7593375 () Bool)

(assert (=> b!7593375 (= e!4518491 tp_is_empty!50571)))

(assert (= (and b!7592814 (is-ElementMatch!20108 (reg!20437 (regOne!40728 r!22341)))) b!7593375))

(assert (= (and b!7592814 (is-Concat!28953 (reg!20437 (regOne!40728 r!22341)))) b!7593376))

(assert (= (and b!7592814 (is-Star!20108 (reg!20437 (regOne!40728 r!22341)))) b!7593377))

(assert (= (and b!7592814 (is-Union!20108 (reg!20437 (regOne!40728 r!22341)))) b!7593378))

(declare-fun b!7593380 () Bool)

(declare-fun e!4518492 () Bool)

(declare-fun tp!2212964 () Bool)

(declare-fun tp!2212962 () Bool)

(assert (=> b!7593380 (= e!4518492 (and tp!2212964 tp!2212962))))

(declare-fun b!7593382 () Bool)

(declare-fun tp!2212963 () Bool)

(declare-fun tp!2212961 () Bool)

(assert (=> b!7593382 (= e!4518492 (and tp!2212963 tp!2212961))))

(assert (=> b!7592827 (= tp!2212827 e!4518492)))

(declare-fun b!7593381 () Bool)

(declare-fun tp!2212960 () Bool)

(assert (=> b!7593381 (= e!4518492 tp!2212960)))

(declare-fun b!7593379 () Bool)

(assert (=> b!7593379 (= e!4518492 tp_is_empty!50571)))

(assert (= (and b!7592827 (is-ElementMatch!20108 (regOne!40729 (regTwo!40729 r!22341)))) b!7593379))

(assert (= (and b!7592827 (is-Concat!28953 (regOne!40729 (regTwo!40729 r!22341)))) b!7593380))

(assert (= (and b!7592827 (is-Star!20108 (regOne!40729 (regTwo!40729 r!22341)))) b!7593381))

(assert (= (and b!7592827 (is-Union!20108 (regOne!40729 (regTwo!40729 r!22341)))) b!7593382))

(declare-fun b!7593384 () Bool)

(declare-fun e!4518493 () Bool)

(declare-fun tp!2212969 () Bool)

(declare-fun tp!2212967 () Bool)

(assert (=> b!7593384 (= e!4518493 (and tp!2212969 tp!2212967))))

(declare-fun b!7593386 () Bool)

(declare-fun tp!2212968 () Bool)

(declare-fun tp!2212966 () Bool)

(assert (=> b!7593386 (= e!4518493 (and tp!2212968 tp!2212966))))

(assert (=> b!7592827 (= tp!2212825 e!4518493)))

(declare-fun b!7593385 () Bool)

(declare-fun tp!2212965 () Bool)

(assert (=> b!7593385 (= e!4518493 tp!2212965)))

(declare-fun b!7593383 () Bool)

(assert (=> b!7593383 (= e!4518493 tp_is_empty!50571)))

(assert (= (and b!7592827 (is-ElementMatch!20108 (regTwo!40729 (regTwo!40729 r!22341)))) b!7593383))

(assert (= (and b!7592827 (is-Concat!28953 (regTwo!40729 (regTwo!40729 r!22341)))) b!7593384))

(assert (= (and b!7592827 (is-Star!20108 (regTwo!40729 (regTwo!40729 r!22341)))) b!7593385))

(assert (= (and b!7592827 (is-Union!20108 (regTwo!40729 (regTwo!40729 r!22341)))) b!7593386))

(declare-fun b!7593388 () Bool)

(declare-fun e!4518494 () Bool)

(declare-fun tp!2212974 () Bool)

(declare-fun tp!2212972 () Bool)

(assert (=> b!7593388 (= e!4518494 (and tp!2212974 tp!2212972))))

(declare-fun b!7593390 () Bool)

(declare-fun tp!2212973 () Bool)

(declare-fun tp!2212971 () Bool)

(assert (=> b!7593390 (= e!4518494 (and tp!2212973 tp!2212971))))

(assert (=> b!7592813 (= tp!2212813 e!4518494)))

(declare-fun b!7593389 () Bool)

(declare-fun tp!2212970 () Bool)

(assert (=> b!7593389 (= e!4518494 tp!2212970)))

(declare-fun b!7593387 () Bool)

(assert (=> b!7593387 (= e!4518494 tp_is_empty!50571)))

(assert (= (and b!7592813 (is-ElementMatch!20108 (regOne!40728 (regOne!40728 r!22341)))) b!7593387))

(assert (= (and b!7592813 (is-Concat!28953 (regOne!40728 (regOne!40728 r!22341)))) b!7593388))

(assert (= (and b!7592813 (is-Star!20108 (regOne!40728 (regOne!40728 r!22341)))) b!7593389))

(assert (= (and b!7592813 (is-Union!20108 (regOne!40728 (regOne!40728 r!22341)))) b!7593390))

(declare-fun b!7593392 () Bool)

(declare-fun e!4518495 () Bool)

(declare-fun tp!2212979 () Bool)

(declare-fun tp!2212977 () Bool)

(assert (=> b!7593392 (= e!4518495 (and tp!2212979 tp!2212977))))

(declare-fun b!7593394 () Bool)

(declare-fun tp!2212978 () Bool)

(declare-fun tp!2212976 () Bool)

(assert (=> b!7593394 (= e!4518495 (and tp!2212978 tp!2212976))))

(assert (=> b!7592813 (= tp!2212811 e!4518495)))

(declare-fun b!7593393 () Bool)

(declare-fun tp!2212975 () Bool)

(assert (=> b!7593393 (= e!4518495 tp!2212975)))

(declare-fun b!7593391 () Bool)

(assert (=> b!7593391 (= e!4518495 tp_is_empty!50571)))

(assert (= (and b!7592813 (is-ElementMatch!20108 (regTwo!40728 (regOne!40728 r!22341)))) b!7593391))

(assert (= (and b!7592813 (is-Concat!28953 (regTwo!40728 (regOne!40728 r!22341)))) b!7593392))

(assert (= (and b!7592813 (is-Star!20108 (regTwo!40728 (regOne!40728 r!22341)))) b!7593393))

(assert (= (and b!7592813 (is-Union!20108 (regTwo!40728 (regOne!40728 r!22341)))) b!7593394))

(declare-fun b!7593396 () Bool)

(declare-fun e!4518496 () Bool)

(declare-fun tp!2212984 () Bool)

(declare-fun tp!2212982 () Bool)

(assert (=> b!7593396 (= e!4518496 (and tp!2212984 tp!2212982))))

(declare-fun b!7593398 () Bool)

(declare-fun tp!2212983 () Bool)

(declare-fun tp!2212981 () Bool)

(assert (=> b!7593398 (= e!4518496 (and tp!2212983 tp!2212981))))

(assert (=> b!7592818 (= tp!2212814 e!4518496)))

(declare-fun b!7593397 () Bool)

(declare-fun tp!2212980 () Bool)

(assert (=> b!7593397 (= e!4518496 tp!2212980)))

(declare-fun b!7593395 () Bool)

(assert (=> b!7593395 (= e!4518496 tp_is_empty!50571)))

(assert (= (and b!7592818 (is-ElementMatch!20108 (reg!20437 (regTwo!40728 r!22341)))) b!7593395))

(assert (= (and b!7592818 (is-Concat!28953 (reg!20437 (regTwo!40728 r!22341)))) b!7593396))

(assert (= (and b!7592818 (is-Star!20108 (reg!20437 (regTwo!40728 r!22341)))) b!7593397))

(assert (= (and b!7592818 (is-Union!20108 (reg!20437 (regTwo!40728 r!22341)))) b!7593398))

(declare-fun b!7593400 () Bool)

(declare-fun e!4518497 () Bool)

(declare-fun tp!2212989 () Bool)

(declare-fun tp!2212987 () Bool)

(assert (=> b!7593400 (= e!4518497 (and tp!2212989 tp!2212987))))

(declare-fun b!7593402 () Bool)

(declare-fun tp!2212988 () Bool)

(declare-fun tp!2212986 () Bool)

(assert (=> b!7593402 (= e!4518497 (and tp!2212988 tp!2212986))))

(assert (=> b!7592825 (= tp!2212828 e!4518497)))

(declare-fun b!7593401 () Bool)

(declare-fun tp!2212985 () Bool)

(assert (=> b!7593401 (= e!4518497 tp!2212985)))

(declare-fun b!7593399 () Bool)

(assert (=> b!7593399 (= e!4518497 tp_is_empty!50571)))

(assert (= (and b!7592825 (is-ElementMatch!20108 (regOne!40728 (regTwo!40729 r!22341)))) b!7593399))

(assert (= (and b!7592825 (is-Concat!28953 (regOne!40728 (regTwo!40729 r!22341)))) b!7593400))

(assert (= (and b!7592825 (is-Star!20108 (regOne!40728 (regTwo!40729 r!22341)))) b!7593401))

(assert (= (and b!7592825 (is-Union!20108 (regOne!40728 (regTwo!40729 r!22341)))) b!7593402))

(declare-fun b!7593404 () Bool)

(declare-fun e!4518498 () Bool)

(declare-fun tp!2212994 () Bool)

(declare-fun tp!2212992 () Bool)

(assert (=> b!7593404 (= e!4518498 (and tp!2212994 tp!2212992))))

(declare-fun b!7593406 () Bool)

(declare-fun tp!2212993 () Bool)

(declare-fun tp!2212991 () Bool)

(assert (=> b!7593406 (= e!4518498 (and tp!2212993 tp!2212991))))

(assert (=> b!7592825 (= tp!2212826 e!4518498)))

(declare-fun b!7593405 () Bool)

(declare-fun tp!2212990 () Bool)

(assert (=> b!7593405 (= e!4518498 tp!2212990)))

(declare-fun b!7593403 () Bool)

(assert (=> b!7593403 (= e!4518498 tp_is_empty!50571)))

(assert (= (and b!7592825 (is-ElementMatch!20108 (regTwo!40728 (regTwo!40729 r!22341)))) b!7593403))

(assert (= (and b!7592825 (is-Concat!28953 (regTwo!40728 (regTwo!40729 r!22341)))) b!7593404))

(assert (= (and b!7592825 (is-Star!20108 (regTwo!40728 (regTwo!40729 r!22341)))) b!7593405))

(assert (= (and b!7592825 (is-Union!20108 (regTwo!40728 (regTwo!40729 r!22341)))) b!7593406))

(declare-fun b!7593407 () Bool)

(declare-fun e!4518499 () Bool)

(declare-fun tp!2212995 () Bool)

(assert (=> b!7593407 (= e!4518499 (and tp_is_empty!50571 tp!2212995))))

(assert (=> b!7592832 (= tp!2212831 e!4518499)))

(assert (= (and b!7592832 (is-Cons!72867 (t!387726 (t!387726 s!13436)))) b!7593407))

(push 1)

(assert (not b!7593310))

(assert (not bm!696930))

(assert (not d!2320300))

(assert (not b!7593360))

(assert (not b!7593350))

(assert (not b!7593369))

(assert (not b!7593251))

(assert (not b!7593365))

(assert (not d!2320308))

(assert (not b!7593317))

(assert (not b!7593198))

(assert (not d!2320250))

(assert (not b!7593356))

(assert (not d!2320266))

(assert (not b!7593098))

(assert (not b!7593119))

(assert (not b!7593066))

(assert (not d!2320226))

(assert (not bm!696916))

(assert (not b!7593308))

(assert (not b!7593406))

(assert (not bm!696924))

(assert (not d!2320256))

(assert (not b!7593318))

(assert (not b!7593353))

(assert (not b!7593340))

(assert (not d!2320294))

(assert (not b!7593123))

(assert (not b!7593338))

(assert (not b!7593348))

(assert (not b!7593404))

(assert (not b!7593341))

(assert (not bm!696909))

(assert (not b!7593345))

(assert (not d!2320236))

(assert (not b!7593165))

(assert (not b!7593324))

(assert (not bm!696879))

(assert (not b!7593283))

(assert (not b!7593092))

(assert (not b!7593073))

(assert (not d!2320298))

(assert (not b!7593160))

(assert (not b!7593271))

(assert (not b!7593161))

(assert (not b!7593262))

(assert (not bm!696890))

(assert (not b!7593401))

(assert (not d!2320272))

(assert (not b!7593065))

(assert (not b!7593357))

(assert (not b!7593191))

(assert (not d!2320228))

(assert (not b!7593206))

(assert (not bm!696886))

(assert (not b!7593382))

(assert (not d!2320296))

(assert (not bm!696903))

(assert (not b!7593313))

(assert (not b!7593018))

(assert (not b!7593121))

(assert (not bm!696885))

(assert (not b!7593167))

(assert (not b!7593159))

(assert (not b!7593378))

(assert (not b!7593210))

(assert (not b!7593346))

(assert (not d!2320306))

(assert (not b!7593279))

(assert (not b!7593303))

(assert (not bm!696889))

(assert (not b!7593096))

(assert (not b!7593207))

(assert (not b!7593115))

(assert (not d!2320318))

(assert (not b!7593069))

(assert (not bm!696932))

(assert (not b!7593361))

(assert (not b!7593280))

(assert (not b!7593287))

(assert (not b!7593228))

(assert (not bm!696894))

(assert (not b!7593390))

(assert (not b!7593389))

(assert (not d!2320252))

(assert (not b!7593101))

(assert (not b!7593366))

(assert (not b!7593372))

(assert (not b!7593247))

(assert (not b!7593354))

(assert (not b!7593088))

(assert (not b!7593110))

(assert (not b!7593397))

(assert (not b!7593214))

(assert (not d!2320230))

(assert (not bm!696888))

(assert (not b!7593386))

(assert (not b!7593116))

(assert (not b!7593336))

(assert (not bm!696917))

(assert (not bm!696880))

(assert (not b!7593368))

(assert (not b!7593284))

(assert (not b!7593322))

(assert (not bm!696923))

(assert (not d!2320234))

(assert (not b!7593099))

(assert (not b!7593212))

(assert (not b!7593352))

(assert (not d!2320246))

(assert (not b!7593342))

(assert (not b!7593314))

(assert (not b!7593095))

(assert (not d!2320240))

(assert (not b!7593181))

(assert (not bm!696912))

(assert (not b!7593321))

(assert (not d!2320248))

(assert (not b!7593248))

(assert (not b!7593285))

(assert (not b!7593330))

(assert (not b!7593249))

(assert (not b!7593364))

(assert (not b!7593320))

(assert (not b!7593398))

(assert (not bm!696931))

(assert (not b!7593326))

(assert (not b!7593332))

(assert (not b!7593400))

(assert (not b!7593328))

(assert (not b!7593349))

(assert (not b!7593334))

(assert (not bm!696918))

(assert (not bm!696904))

(assert (not bm!696907))

(assert (not b!7593312))

(assert (not b!7593255))

(assert (not d!2320316))

(assert (not bm!696915))

(assert (not d!2320244))

(assert (not b!7593316))

(assert (not b!7593067))

(assert (not b!7593392))

(assert (not b!7593289))

(assert (not bm!696887))

(assert (not bm!696914))

(assert (not b!7593394))

(assert (not b!7593189))

(assert (not b!7593377))

(assert (not d!2320276))

(assert (not d!2320302))

(assert (not b!7593384))

(assert (not bm!696891))

(assert (not b!7593396))

(assert (not b!7593333))

(assert (not bm!696926))

(assert (not bm!696922))

(assert (not b!7593117))

(assert (not d!2320238))

(assert (not b!7593185))

(assert (not b!7593402))

(assert (not b!7593309))

(assert (not b!7593381))

(assert (not bm!696908))

(assert (not d!2320310))

(assert (not b!7593291))

(assert (not b!7593187))

(assert (not b!7593184))

(assert (not b!7593376))

(assert (not b!7593100))

(assert (not b!7593107))

(assert (not b!7593385))

(assert (not b!7593208))

(assert (not bm!696892))

(assert (not d!2320258))

(assert (not b!7593087))

(assert (not b!7593374))

(assert (not b!7593329))

(assert (not b!7593405))

(assert (not b!7593300))

(assert (not d!2320242))

(assert (not d!2320292))

(assert (not b!7593373))

(assert (not b!7593253))

(assert (not b!7593163))

(assert (not bm!696929))

(assert (not b!7593380))

(assert (not d!2320282))

(assert (not d!2320274))

(assert (not bm!696933))

(assert (not b!7593239))

(assert (not b!7593325))

(assert tp_is_empty!50571)

(assert (not b!7593358))

(assert (not b!7593157))

(assert (not bm!696927))

(assert (not bm!696893))

(assert (not b!7593091))

(assert (not b!7593362))

(assert (not b!7593370))

(assert (not b!7593071))

(assert (not b!7593337))

(assert (not b!7593344))

(assert (not b!7593183))

(assert (not b!7593407))

(assert (not b!7593388))

(assert (not d!2320224))

(assert (not b!7593393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

