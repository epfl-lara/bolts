; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89288 () Bool)

(assert start!89288)

(declare-fun b!1025729 () Bool)

(assert (=> b!1025729 true))

(assert (=> b!1025729 true))

(declare-fun res!460813 () Bool)

(declare-fun e!654472 () Bool)

(assert (=> start!89288 (=> (not res!460813) (not e!654472))))

(declare-datatypes ((C!6246 0))(
  ( (C!6247 (val!3371 Int)) )
))
(declare-datatypes ((Regex!2838 0))(
  ( (ElementMatch!2838 (c!170085 C!6246)) (Concat!4671 (regOne!6188 Regex!2838) (regTwo!6188 Regex!2838)) (EmptyExpr!2838) (Star!2838 (reg!3167 Regex!2838)) (EmptyLang!2838) (Union!2838 (regOne!6189 Regex!2838) (regTwo!6189 Regex!2838)) )
))
(declare-fun r!15766 () Regex!2838)

(declare-fun validRegex!1307 (Regex!2838) Bool)

(assert (=> start!89288 (= res!460813 (validRegex!1307 r!15766))))

(assert (=> start!89288 e!654472))

(declare-fun e!654473 () Bool)

(assert (=> start!89288 e!654473))

(declare-fun e!654474 () Bool)

(assert (=> start!89288 e!654474))

(declare-fun b!1025728 () Bool)

(declare-fun tp!311253 () Bool)

(declare-fun tp!311255 () Bool)

(assert (=> b!1025728 (= e!654473 (and tp!311253 tp!311255))))

(declare-fun e!654475 () Bool)

(assert (=> b!1025729 (= e!654475 (validRegex!1307 (regOne!6188 r!15766)))))

(declare-datatypes ((List!10068 0))(
  ( (Nil!10052) (Cons!10052 (h!15453 C!6246) (t!101114 List!10068)) )
))
(declare-fun s!10566 () List!10068)

(declare-fun lambda!36589 () Int)

(declare-datatypes ((tuple2!11450 0))(
  ( (tuple2!11451 (_1!6551 List!10068) (_2!6551 List!10068)) )
))
(declare-datatypes ((Option!2367 0))(
  ( (None!2366) (Some!2366 (v!19783 tuple2!11450)) )
))
(declare-fun isDefined!2009 (Option!2367) Bool)

(declare-fun findConcatSeparation!473 (Regex!2838 Regex!2838 List!10068 List!10068 List!10068) Option!2367)

(declare-fun Exists!565 (Int) Bool)

(assert (=> b!1025729 (= (isDefined!2009 (findConcatSeparation!473 (regOne!6188 r!15766) EmptyExpr!2838 Nil!10052 s!10566 s!10566)) (Exists!565 lambda!36589))))

(declare-datatypes ((Unit!15351 0))(
  ( (Unit!15352) )
))
(declare-fun lt!355131 () Unit!15351)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!473 (Regex!2838 Regex!2838 List!10068) Unit!15351)

(assert (=> b!1025729 (= lt!355131 (lemmaFindConcatSeparationEquivalentToExists!473 (regOne!6188 r!15766) EmptyExpr!2838 s!10566))))

(declare-fun b!1025730 () Bool)

(assert (=> b!1025730 (= e!654472 (not e!654475))))

(declare-fun res!460814 () Bool)

(assert (=> b!1025730 (=> res!460814 e!654475)))

(declare-fun lt!355130 () Bool)

(assert (=> b!1025730 (= res!460814 (or lt!355130 (and (is-Concat!4671 r!15766) (is-EmptyExpr!2838 (regOne!6188 r!15766))) (not (is-Concat!4671 r!15766)) (not (is-EmptyExpr!2838 (regTwo!6188 r!15766)))))))

(declare-fun matchRSpec!637 (Regex!2838 List!10068) Bool)

(assert (=> b!1025730 (= lt!355130 (matchRSpec!637 r!15766 s!10566))))

(declare-fun matchR!1374 (Regex!2838 List!10068) Bool)

(assert (=> b!1025730 (= lt!355130 (matchR!1374 r!15766 s!10566))))

(declare-fun lt!355132 () Unit!15351)

(declare-fun mainMatchTheorem!637 (Regex!2838 List!10068) Unit!15351)

(assert (=> b!1025730 (= lt!355132 (mainMatchTheorem!637 r!15766 s!10566))))

(declare-fun b!1025731 () Bool)

(declare-fun tp!311254 () Bool)

(assert (=> b!1025731 (= e!654473 tp!311254)))

(declare-fun b!1025732 () Bool)

(declare-fun tp_is_empty!5319 () Bool)

(assert (=> b!1025732 (= e!654473 tp_is_empty!5319)))

(declare-fun b!1025733 () Bool)

(declare-fun tp!311258 () Bool)

(declare-fun tp!311256 () Bool)

(assert (=> b!1025733 (= e!654473 (and tp!311258 tp!311256))))

(declare-fun b!1025734 () Bool)

(declare-fun tp!311257 () Bool)

(assert (=> b!1025734 (= e!654474 (and tp_is_empty!5319 tp!311257))))

(assert (= (and start!89288 res!460813) b!1025730))

(assert (= (and b!1025730 (not res!460814)) b!1025729))

(assert (= (and start!89288 (is-ElementMatch!2838 r!15766)) b!1025732))

(assert (= (and start!89288 (is-Concat!4671 r!15766)) b!1025728))

(assert (= (and start!89288 (is-Star!2838 r!15766)) b!1025731))

(assert (= (and start!89288 (is-Union!2838 r!15766)) b!1025733))

(assert (= (and start!89288 (is-Cons!10052 s!10566)) b!1025734))

(declare-fun m!1202277 () Bool)

(assert (=> start!89288 m!1202277))

(declare-fun m!1202279 () Bool)

(assert (=> b!1025729 m!1202279))

(declare-fun m!1202281 () Bool)

(assert (=> b!1025729 m!1202281))

(declare-fun m!1202283 () Bool)

(assert (=> b!1025729 m!1202283))

(declare-fun m!1202285 () Bool)

(assert (=> b!1025729 m!1202285))

(assert (=> b!1025729 m!1202283))

(declare-fun m!1202287 () Bool)

(assert (=> b!1025729 m!1202287))

(declare-fun m!1202289 () Bool)

(assert (=> b!1025730 m!1202289))

(declare-fun m!1202291 () Bool)

(assert (=> b!1025730 m!1202291))

(declare-fun m!1202293 () Bool)

(assert (=> b!1025730 m!1202293))

(push 1)

(assert (not b!1025734))

(assert (not b!1025728))

(assert (not b!1025729))

(assert tp_is_empty!5319)

(assert (not b!1025730))

(assert (not b!1025731))

(assert (not b!1025733))

(assert (not start!89288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!295063 () Bool)

(declare-fun isEmpty!6417 (Option!2367) Bool)

(assert (=> d!295063 (= (isDefined!2009 (findConcatSeparation!473 (regOne!6188 r!15766) EmptyExpr!2838 Nil!10052 s!10566 s!10566)) (not (isEmpty!6417 (findConcatSeparation!473 (regOne!6188 r!15766) EmptyExpr!2838 Nil!10052 s!10566 s!10566))))))

(declare-fun bs!247008 () Bool)

(assert (= bs!247008 d!295063))

(assert (=> bs!247008 m!1202283))

(declare-fun m!1202313 () Bool)

(assert (=> bs!247008 m!1202313))

(assert (=> b!1025729 d!295063))

(declare-fun b!1025786 () Bool)

(declare-fun e!654507 () Bool)

(declare-fun call!70464 () Bool)

(assert (=> b!1025786 (= e!654507 call!70464)))

(declare-fun b!1025787 () Bool)

(declare-fun e!654510 () Bool)

(declare-fun e!654506 () Bool)

(assert (=> b!1025787 (= e!654510 e!654506)))

(declare-fun c!170092 () Bool)

(assert (=> b!1025787 (= c!170092 (is-Union!2838 (regOne!6188 r!15766)))))

(declare-fun bm!70459 () Bool)

(declare-fun call!70466 () Bool)

(assert (=> bm!70459 (= call!70464 call!70466)))

(declare-fun bm!70460 () Bool)

(declare-fun call!70465 () Bool)

(assert (=> bm!70460 (= call!70465 (validRegex!1307 (ite c!170092 (regOne!6189 (regOne!6188 r!15766)) (regOne!6188 (regOne!6188 r!15766)))))))

(declare-fun b!1025788 () Bool)

(declare-fun e!654504 () Bool)

(assert (=> b!1025788 (= e!654504 e!654510)))

(declare-fun c!170091 () Bool)

(assert (=> b!1025788 (= c!170091 (is-Star!2838 (regOne!6188 r!15766)))))

(declare-fun b!1025789 () Bool)

(declare-fun e!654505 () Bool)

(assert (=> b!1025789 (= e!654510 e!654505)))

(declare-fun res!460837 () Bool)

(declare-fun nullable!937 (Regex!2838) Bool)

(assert (=> b!1025789 (= res!460837 (not (nullable!937 (reg!3167 (regOne!6188 r!15766)))))))

(assert (=> b!1025789 (=> (not res!460837) (not e!654505))))

(declare-fun b!1025790 () Bool)

(declare-fun e!654509 () Bool)

(assert (=> b!1025790 (= e!654509 call!70464)))

(declare-fun b!1025791 () Bool)

(declare-fun e!654508 () Bool)

(assert (=> b!1025791 (= e!654508 e!654507)))

(declare-fun res!460839 () Bool)

(assert (=> b!1025791 (=> (not res!460839) (not e!654507))))

(assert (=> b!1025791 (= res!460839 call!70465)))

(declare-fun b!1025792 () Bool)

(declare-fun res!460838 () Bool)

(assert (=> b!1025792 (=> (not res!460838) (not e!654509))))

(assert (=> b!1025792 (= res!460838 call!70465)))

(assert (=> b!1025792 (= e!654506 e!654509)))

(declare-fun d!295065 () Bool)

(declare-fun res!460835 () Bool)

(assert (=> d!295065 (=> res!460835 e!654504)))

(assert (=> d!295065 (= res!460835 (is-ElementMatch!2838 (regOne!6188 r!15766)))))

(assert (=> d!295065 (= (validRegex!1307 (regOne!6188 r!15766)) e!654504)))

(declare-fun bm!70461 () Bool)

(assert (=> bm!70461 (= call!70466 (validRegex!1307 (ite c!170091 (reg!3167 (regOne!6188 r!15766)) (ite c!170092 (regTwo!6189 (regOne!6188 r!15766)) (regTwo!6188 (regOne!6188 r!15766))))))))

(declare-fun b!1025793 () Bool)

(declare-fun res!460836 () Bool)

(assert (=> b!1025793 (=> res!460836 e!654508)))

(assert (=> b!1025793 (= res!460836 (not (is-Concat!4671 (regOne!6188 r!15766))))))

(assert (=> b!1025793 (= e!654506 e!654508)))

(declare-fun b!1025794 () Bool)

(assert (=> b!1025794 (= e!654505 call!70466)))

(assert (= (and d!295065 (not res!460835)) b!1025788))

(assert (= (and b!1025788 c!170091) b!1025789))

(assert (= (and b!1025788 (not c!170091)) b!1025787))

(assert (= (and b!1025789 res!460837) b!1025794))

(assert (= (and b!1025787 c!170092) b!1025792))

(assert (= (and b!1025787 (not c!170092)) b!1025793))

(assert (= (and b!1025792 res!460838) b!1025790))

(assert (= (and b!1025793 (not res!460836)) b!1025791))

(assert (= (and b!1025791 res!460839) b!1025786))

(assert (= (or b!1025790 b!1025786) bm!70459))

(assert (= (or b!1025792 b!1025791) bm!70460))

(assert (= (or b!1025794 bm!70459) bm!70461))

(declare-fun m!1202315 () Bool)

(assert (=> bm!70460 m!1202315))

(declare-fun m!1202317 () Bool)

(assert (=> b!1025789 m!1202317))

(declare-fun m!1202319 () Bool)

(assert (=> bm!70461 m!1202319))

(assert (=> b!1025729 d!295065))

(declare-fun b!1025840 () Bool)

(declare-fun e!654543 () Option!2367)

(assert (=> b!1025840 (= e!654543 (Some!2366 (tuple2!11451 Nil!10052 s!10566)))))

(declare-fun b!1025841 () Bool)

(declare-fun res!460867 () Bool)

(declare-fun e!654546 () Bool)

(assert (=> b!1025841 (=> (not res!460867) (not e!654546))))

(declare-fun lt!355149 () Option!2367)

(declare-fun get!3553 (Option!2367) tuple2!11450)

(assert (=> b!1025841 (= res!460867 (matchR!1374 EmptyExpr!2838 (_2!6551 (get!3553 lt!355149))))))

(declare-fun b!1025842 () Bool)

(declare-fun e!654545 () Option!2367)

(assert (=> b!1025842 (= e!654545 None!2366)))

(declare-fun b!1025843 () Bool)

(declare-fun res!460866 () Bool)

(assert (=> b!1025843 (=> (not res!460866) (not e!654546))))

(assert (=> b!1025843 (= res!460866 (matchR!1374 (regOne!6188 r!15766) (_1!6551 (get!3553 lt!355149))))))

(declare-fun b!1025844 () Bool)

(declare-fun ++!2752 (List!10068 List!10068) List!10068)

(assert (=> b!1025844 (= e!654546 (= (++!2752 (_1!6551 (get!3553 lt!355149)) (_2!6551 (get!3553 lt!355149))) s!10566))))

(declare-fun b!1025845 () Bool)

(assert (=> b!1025845 (= e!654543 e!654545)))

(declare-fun c!170104 () Bool)

(assert (=> b!1025845 (= c!170104 (is-Nil!10052 s!10566))))

(declare-fun b!1025846 () Bool)

(declare-fun e!654542 () Bool)

(assert (=> b!1025846 (= e!654542 (matchR!1374 EmptyExpr!2838 s!10566))))

(declare-fun d!295069 () Bool)

(declare-fun e!654544 () Bool)

(assert (=> d!295069 e!654544))

(declare-fun res!460869 () Bool)

(assert (=> d!295069 (=> res!460869 e!654544)))

(assert (=> d!295069 (= res!460869 e!654546)))

(declare-fun res!460865 () Bool)

(assert (=> d!295069 (=> (not res!460865) (not e!654546))))

(assert (=> d!295069 (= res!460865 (isDefined!2009 lt!355149))))

(assert (=> d!295069 (= lt!355149 e!654543)))

(declare-fun c!170103 () Bool)

(assert (=> d!295069 (= c!170103 e!654542)))

(declare-fun res!460868 () Bool)

(assert (=> d!295069 (=> (not res!460868) (not e!654542))))

(assert (=> d!295069 (= res!460868 (matchR!1374 (regOne!6188 r!15766) Nil!10052))))

(assert (=> d!295069 (validRegex!1307 (regOne!6188 r!15766))))

(assert (=> d!295069 (= (findConcatSeparation!473 (regOne!6188 r!15766) EmptyExpr!2838 Nil!10052 s!10566 s!10566) lt!355149)))

(declare-fun b!1025847 () Bool)

(declare-fun lt!355148 () Unit!15351)

(declare-fun lt!355150 () Unit!15351)

(assert (=> b!1025847 (= lt!355148 lt!355150)))

(assert (=> b!1025847 (= (++!2752 (++!2752 Nil!10052 (Cons!10052 (h!15453 s!10566) Nil!10052)) (t!101114 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!349 (List!10068 C!6246 List!10068 List!10068) Unit!15351)

(assert (=> b!1025847 (= lt!355150 (lemmaMoveElementToOtherListKeepsConcatEq!349 Nil!10052 (h!15453 s!10566) (t!101114 s!10566) s!10566))))

(assert (=> b!1025847 (= e!654545 (findConcatSeparation!473 (regOne!6188 r!15766) EmptyExpr!2838 (++!2752 Nil!10052 (Cons!10052 (h!15453 s!10566) Nil!10052)) (t!101114 s!10566) s!10566))))

(declare-fun b!1025848 () Bool)

(assert (=> b!1025848 (= e!654544 (not (isDefined!2009 lt!355149)))))

(assert (= (and d!295069 res!460868) b!1025846))

(assert (= (and d!295069 c!170103) b!1025840))

(assert (= (and d!295069 (not c!170103)) b!1025845))

(assert (= (and b!1025845 c!170104) b!1025842))

(assert (= (and b!1025845 (not c!170104)) b!1025847))

(assert (= (and d!295069 res!460865) b!1025843))

(assert (= (and b!1025843 res!460866) b!1025841))

(assert (= (and b!1025841 res!460867) b!1025844))

(assert (= (and d!295069 (not res!460869)) b!1025848))

(declare-fun m!1202329 () Bool)

(assert (=> b!1025846 m!1202329))

(declare-fun m!1202331 () Bool)

(assert (=> b!1025847 m!1202331))

(assert (=> b!1025847 m!1202331))

(declare-fun m!1202333 () Bool)

(assert (=> b!1025847 m!1202333))

(declare-fun m!1202335 () Bool)

(assert (=> b!1025847 m!1202335))

(assert (=> b!1025847 m!1202331))

(declare-fun m!1202337 () Bool)

(assert (=> b!1025847 m!1202337))

(declare-fun m!1202339 () Bool)

(assert (=> d!295069 m!1202339))

(declare-fun m!1202341 () Bool)

(assert (=> d!295069 m!1202341))

(assert (=> d!295069 m!1202285))

(declare-fun m!1202343 () Bool)

(assert (=> b!1025841 m!1202343))

(declare-fun m!1202345 () Bool)

(assert (=> b!1025841 m!1202345))

(assert (=> b!1025843 m!1202343))

(declare-fun m!1202347 () Bool)

(assert (=> b!1025843 m!1202347))

(assert (=> b!1025844 m!1202343))

(declare-fun m!1202349 () Bool)

(assert (=> b!1025844 m!1202349))

(assert (=> b!1025848 m!1202339))

(assert (=> b!1025729 d!295069))

(declare-fun bs!247010 () Bool)

(declare-fun d!295075 () Bool)

(assert (= bs!247010 (and d!295075 b!1025729)))

(declare-fun lambda!36595 () Int)

(assert (=> bs!247010 (= lambda!36595 lambda!36589)))

(assert (=> d!295075 true))

(assert (=> d!295075 true))

(assert (=> d!295075 true))

(assert (=> d!295075 (= (isDefined!2009 (findConcatSeparation!473 (regOne!6188 r!15766) EmptyExpr!2838 Nil!10052 s!10566 s!10566)) (Exists!565 lambda!36595))))

(declare-fun lt!355153 () Unit!15351)

(declare-fun choose!6509 (Regex!2838 Regex!2838 List!10068) Unit!15351)

(assert (=> d!295075 (= lt!355153 (choose!6509 (regOne!6188 r!15766) EmptyExpr!2838 s!10566))))

(assert (=> d!295075 (validRegex!1307 (regOne!6188 r!15766))))

(assert (=> d!295075 (= (lemmaFindConcatSeparationEquivalentToExists!473 (regOne!6188 r!15766) EmptyExpr!2838 s!10566) lt!355153)))

(declare-fun bs!247011 () Bool)

(assert (= bs!247011 d!295075))

(declare-fun m!1202357 () Bool)

(assert (=> bs!247011 m!1202357))

(assert (=> bs!247011 m!1202283))

(assert (=> bs!247011 m!1202287))

(declare-fun m!1202359 () Bool)

(assert (=> bs!247011 m!1202359))

(assert (=> bs!247011 m!1202283))

(assert (=> bs!247011 m!1202285))

(assert (=> b!1025729 d!295075))

(declare-fun d!295079 () Bool)

(declare-fun choose!6510 (Int) Bool)

(assert (=> d!295079 (= (Exists!565 lambda!36589) (choose!6510 lambda!36589))))

(declare-fun bs!247012 () Bool)

(assert (= bs!247012 d!295079))

(declare-fun m!1202361 () Bool)

(assert (=> bs!247012 m!1202361))

(assert (=> b!1025729 d!295079))

(declare-fun bs!247013 () Bool)

(declare-fun b!1025908 () Bool)

(assert (= bs!247013 (and b!1025908 b!1025729)))

(declare-fun lambda!36600 () Int)

(assert (=> bs!247013 (not (= lambda!36600 lambda!36589))))

(declare-fun bs!247014 () Bool)

(assert (= bs!247014 (and b!1025908 d!295075)))

(assert (=> bs!247014 (not (= lambda!36600 lambda!36595))))

(assert (=> b!1025908 true))

(assert (=> b!1025908 true))

(declare-fun bs!247015 () Bool)

(declare-fun b!1025905 () Bool)

(assert (= bs!247015 (and b!1025905 b!1025729)))

(declare-fun lambda!36601 () Int)

(assert (=> bs!247015 (not (= lambda!36601 lambda!36589))))

(declare-fun bs!247016 () Bool)

(assert (= bs!247016 (and b!1025905 d!295075)))

(assert (=> bs!247016 (not (= lambda!36601 lambda!36595))))

(declare-fun bs!247017 () Bool)

(assert (= bs!247017 (and b!1025905 b!1025908)))

(assert (=> bs!247017 (not (= lambda!36601 lambda!36600))))

(assert (=> b!1025905 true))

(assert (=> b!1025905 true))

(declare-fun b!1025904 () Bool)

(declare-fun res!460897 () Bool)

(declare-fun e!654582 () Bool)

(assert (=> b!1025904 (=> res!460897 e!654582)))

(declare-fun call!70483 () Bool)

(assert (=> b!1025904 (= res!460897 call!70483)))

(declare-fun e!654583 () Bool)

(assert (=> b!1025904 (= e!654583 e!654582)))

(declare-fun call!70484 () Bool)

(assert (=> b!1025905 (= e!654583 call!70484)))

(declare-fun d!295081 () Bool)

(declare-fun c!170118 () Bool)

(assert (=> d!295081 (= c!170118 (is-EmptyExpr!2838 r!15766))))

(declare-fun e!654585 () Bool)

(assert (=> d!295081 (= (matchRSpec!637 r!15766 s!10566) e!654585)))

(declare-fun b!1025906 () Bool)

(declare-fun e!654586 () Bool)

(assert (=> b!1025906 (= e!654585 e!654586)))

(declare-fun res!460899 () Bool)

(assert (=> b!1025906 (= res!460899 (not (is-EmptyLang!2838 r!15766)))))

(assert (=> b!1025906 (=> (not res!460899) (not e!654586))))

(declare-fun b!1025907 () Bool)

(assert (=> b!1025907 (= e!654585 call!70483)))

(assert (=> b!1025908 (= e!654582 call!70484)))

(declare-fun b!1025909 () Bool)

(declare-fun e!654584 () Bool)

(declare-fun e!654580 () Bool)

(assert (=> b!1025909 (= e!654584 e!654580)))

(declare-fun res!460898 () Bool)

(assert (=> b!1025909 (= res!460898 (matchRSpec!637 (regOne!6189 r!15766) s!10566))))

(assert (=> b!1025909 (=> res!460898 e!654580)))

(declare-fun b!1025910 () Bool)

(assert (=> b!1025910 (= e!654584 e!654583)))

(declare-fun c!170120 () Bool)

(assert (=> b!1025910 (= c!170120 (is-Star!2838 r!15766))))

(declare-fun b!1025911 () Bool)

(declare-fun c!170117 () Bool)

(assert (=> b!1025911 (= c!170117 (is-Union!2838 r!15766))))

(declare-fun e!654578 () Bool)

(assert (=> b!1025911 (= e!654578 e!654584)))

(declare-fun b!1025912 () Bool)

(assert (=> b!1025912 (= e!654578 (= s!10566 (Cons!10052 (c!170085 r!15766) Nil!10052)))))

(declare-fun b!1025913 () Bool)

(declare-fun c!170122 () Bool)

(assert (=> b!1025913 (= c!170122 (is-ElementMatch!2838 r!15766))))

(assert (=> b!1025913 (= e!654586 e!654578)))

(declare-fun b!1025914 () Bool)

(assert (=> b!1025914 (= e!654580 (matchRSpec!637 (regTwo!6189 r!15766) s!10566))))

(declare-fun bm!70478 () Bool)

(declare-fun isEmpty!6418 (List!10068) Bool)

(assert (=> bm!70478 (= call!70483 (isEmpty!6418 s!10566))))

(declare-fun bm!70479 () Bool)

(assert (=> bm!70479 (= call!70484 (Exists!565 (ite c!170120 lambda!36600 lambda!36601)))))

(assert (= (and d!295081 c!170118) b!1025907))

(assert (= (and d!295081 (not c!170118)) b!1025906))

(assert (= (and b!1025906 res!460899) b!1025913))

(assert (= (and b!1025913 c!170122) b!1025912))

(assert (= (and b!1025913 (not c!170122)) b!1025911))

(assert (= (and b!1025911 c!170117) b!1025909))

(assert (= (and b!1025911 (not c!170117)) b!1025910))

(assert (= (and b!1025909 (not res!460898)) b!1025914))

(assert (= (and b!1025910 c!170120) b!1025904))

(assert (= (and b!1025910 (not c!170120)) b!1025905))

(assert (= (and b!1025904 (not res!460897)) b!1025908))

(assert (= (or b!1025908 b!1025905) bm!70479))

(assert (= (or b!1025907 b!1025904) bm!70478))

(declare-fun m!1202363 () Bool)

(assert (=> b!1025909 m!1202363))

(declare-fun m!1202365 () Bool)

(assert (=> b!1025914 m!1202365))

(declare-fun m!1202367 () Bool)

(assert (=> bm!70478 m!1202367))

(declare-fun m!1202369 () Bool)

(assert (=> bm!70479 m!1202369))

(assert (=> b!1025730 d!295081))

(declare-fun b!1025960 () Bool)

(declare-fun e!654611 () Bool)

(declare-fun head!1893 (List!10068) C!6246)

(assert (=> b!1025960 (= e!654611 (not (= (head!1893 s!10566) (c!170085 r!15766))))))

(declare-fun b!1025961 () Bool)

(declare-fun e!654610 () Bool)

(assert (=> b!1025961 (= e!654610 (= (head!1893 s!10566) (c!170085 r!15766)))))

(declare-fun b!1025962 () Bool)

(declare-fun e!654614 () Bool)

(declare-fun e!654616 () Bool)

(assert (=> b!1025962 (= e!654614 e!654616)))

(declare-fun res!460930 () Bool)

(assert (=> b!1025962 (=> (not res!460930) (not e!654616))))

(declare-fun lt!355165 () Bool)

(assert (=> b!1025962 (= res!460930 (not lt!355165))))

(declare-fun b!1025963 () Bool)

(declare-fun e!654615 () Bool)

(assert (=> b!1025963 (= e!654615 (not lt!355165))))

(declare-fun b!1025964 () Bool)

(assert (=> b!1025964 (= e!654616 e!654611)))

(declare-fun res!460936 () Bool)

(assert (=> b!1025964 (=> res!460936 e!654611)))

(declare-fun call!70487 () Bool)

(assert (=> b!1025964 (= res!460936 call!70487)))

(declare-fun bm!70482 () Bool)

(assert (=> bm!70482 (= call!70487 (isEmpty!6418 s!10566))))

(declare-fun b!1025965 () Bool)

(declare-fun res!460929 () Bool)

(assert (=> b!1025965 (=> res!460929 e!654611)))

(declare-fun tail!1455 (List!10068) List!10068)

(assert (=> b!1025965 (= res!460929 (not (isEmpty!6418 (tail!1455 s!10566))))))

(declare-fun d!295083 () Bool)

(declare-fun e!654613 () Bool)

(assert (=> d!295083 e!654613))

(declare-fun c!170132 () Bool)

(assert (=> d!295083 (= c!170132 (is-EmptyExpr!2838 r!15766))))

(declare-fun e!654612 () Bool)

(assert (=> d!295083 (= lt!355165 e!654612)))

(declare-fun c!170133 () Bool)

(assert (=> d!295083 (= c!170133 (isEmpty!6418 s!10566))))

(assert (=> d!295083 (validRegex!1307 r!15766)))

(assert (=> d!295083 (= (matchR!1374 r!15766 s!10566) lt!355165)))

(declare-fun b!1025966 () Bool)

(declare-fun res!460933 () Bool)

(assert (=> b!1025966 (=> res!460933 e!654614)))

(assert (=> b!1025966 (= res!460933 e!654610)))

(declare-fun res!460931 () Bool)

(assert (=> b!1025966 (=> (not res!460931) (not e!654610))))

(assert (=> b!1025966 (= res!460931 lt!355165)))

(declare-fun b!1025967 () Bool)

(assert (=> b!1025967 (= e!654612 (nullable!937 r!15766))))

(declare-fun b!1025968 () Bool)

(declare-fun res!460935 () Bool)

(assert (=> b!1025968 (=> res!460935 e!654614)))

(assert (=> b!1025968 (= res!460935 (not (is-ElementMatch!2838 r!15766)))))

(assert (=> b!1025968 (= e!654615 e!654614)))

(declare-fun b!1025969 () Bool)

(declare-fun res!460932 () Bool)

(assert (=> b!1025969 (=> (not res!460932) (not e!654610))))

(assert (=> b!1025969 (= res!460932 (not call!70487))))

(declare-fun b!1025970 () Bool)

(assert (=> b!1025970 (= e!654613 (= lt!355165 call!70487))))

(declare-fun b!1025971 () Bool)

(assert (=> b!1025971 (= e!654613 e!654615)))

(declare-fun c!170131 () Bool)

(assert (=> b!1025971 (= c!170131 (is-EmptyLang!2838 r!15766))))

(declare-fun b!1025972 () Bool)

(declare-fun res!460934 () Bool)

(assert (=> b!1025972 (=> (not res!460934) (not e!654610))))

(assert (=> b!1025972 (= res!460934 (isEmpty!6418 (tail!1455 s!10566)))))

(declare-fun b!1025973 () Bool)

(declare-fun derivativeStep!739 (Regex!2838 C!6246) Regex!2838)

(assert (=> b!1025973 (= e!654612 (matchR!1374 (derivativeStep!739 r!15766 (head!1893 s!10566)) (tail!1455 s!10566)))))

(assert (= (and d!295083 c!170133) b!1025967))

(assert (= (and d!295083 (not c!170133)) b!1025973))

(assert (= (and d!295083 c!170132) b!1025970))

(assert (= (and d!295083 (not c!170132)) b!1025971))

(assert (= (and b!1025971 c!170131) b!1025963))

(assert (= (and b!1025971 (not c!170131)) b!1025968))

(assert (= (and b!1025968 (not res!460935)) b!1025966))

(assert (= (and b!1025966 res!460931) b!1025969))

(assert (= (and b!1025969 res!460932) b!1025972))

(assert (= (and b!1025972 res!460934) b!1025961))

(assert (= (and b!1025966 (not res!460933)) b!1025962))

(assert (= (and b!1025962 res!460930) b!1025964))

(assert (= (and b!1025964 (not res!460936)) b!1025965))

(assert (= (and b!1025965 (not res!460929)) b!1025960))

(assert (= (or b!1025970 b!1025964 b!1025969) bm!70482))

(assert (=> bm!70482 m!1202367))

(declare-fun m!1202383 () Bool)

(assert (=> b!1025965 m!1202383))

(assert (=> b!1025965 m!1202383))

(declare-fun m!1202387 () Bool)

(assert (=> b!1025965 m!1202387))

(declare-fun m!1202389 () Bool)

(assert (=> b!1025973 m!1202389))

(assert (=> b!1025973 m!1202389))

(declare-fun m!1202391 () Bool)

(assert (=> b!1025973 m!1202391))

(assert (=> b!1025973 m!1202383))

(assert (=> b!1025973 m!1202391))

(assert (=> b!1025973 m!1202383))

(declare-fun m!1202395 () Bool)

(assert (=> b!1025973 m!1202395))

(assert (=> b!1025972 m!1202383))

(assert (=> b!1025972 m!1202383))

(assert (=> b!1025972 m!1202387))

(assert (=> b!1025960 m!1202389))

(declare-fun m!1202397 () Bool)

(assert (=> b!1025967 m!1202397))

(assert (=> d!295083 m!1202367))

(assert (=> d!295083 m!1202277))

(assert (=> b!1025961 m!1202389))

(assert (=> b!1025730 d!295083))

(declare-fun d!295085 () Bool)

(assert (=> d!295085 (= (matchR!1374 r!15766 s!10566) (matchRSpec!637 r!15766 s!10566))))

(declare-fun lt!355168 () Unit!15351)

(declare-fun choose!6511 (Regex!2838 List!10068) Unit!15351)

(assert (=> d!295085 (= lt!355168 (choose!6511 r!15766 s!10566))))

(assert (=> d!295085 (validRegex!1307 r!15766)))

(assert (=> d!295085 (= (mainMatchTheorem!637 r!15766 s!10566) lt!355168)))

(declare-fun bs!247019 () Bool)

(assert (= bs!247019 d!295085))

(assert (=> bs!247019 m!1202291))

(assert (=> bs!247019 m!1202289))

(declare-fun m!1202407 () Bool)

(assert (=> bs!247019 m!1202407))

(assert (=> bs!247019 m!1202277))

(assert (=> b!1025730 d!295085))

(declare-fun b!1025974 () Bool)

(declare-fun e!654620 () Bool)

(declare-fun call!70488 () Bool)

(assert (=> b!1025974 (= e!654620 call!70488)))

(declare-fun b!1025975 () Bool)

(declare-fun e!654623 () Bool)

(declare-fun e!654619 () Bool)

(assert (=> b!1025975 (= e!654623 e!654619)))

(declare-fun c!170135 () Bool)

(assert (=> b!1025975 (= c!170135 (is-Union!2838 r!15766))))

(declare-fun bm!70483 () Bool)

(declare-fun call!70490 () Bool)

(assert (=> bm!70483 (= call!70488 call!70490)))

(declare-fun bm!70484 () Bool)

(declare-fun call!70489 () Bool)

(assert (=> bm!70484 (= call!70489 (validRegex!1307 (ite c!170135 (regOne!6189 r!15766) (regOne!6188 r!15766))))))

(declare-fun b!1025976 () Bool)

(declare-fun e!654617 () Bool)

(assert (=> b!1025976 (= e!654617 e!654623)))

(declare-fun c!170134 () Bool)

(assert (=> b!1025976 (= c!170134 (is-Star!2838 r!15766))))

(declare-fun b!1025977 () Bool)

(declare-fun e!654618 () Bool)

(assert (=> b!1025977 (= e!654623 e!654618)))

(declare-fun res!460939 () Bool)

(assert (=> b!1025977 (= res!460939 (not (nullable!937 (reg!3167 r!15766))))))

(assert (=> b!1025977 (=> (not res!460939) (not e!654618))))

(declare-fun b!1025978 () Bool)

(declare-fun e!654622 () Bool)

(assert (=> b!1025978 (= e!654622 call!70488)))

(declare-fun b!1025979 () Bool)

(declare-fun e!654621 () Bool)

(assert (=> b!1025979 (= e!654621 e!654620)))

(declare-fun res!460941 () Bool)

(assert (=> b!1025979 (=> (not res!460941) (not e!654620))))

(assert (=> b!1025979 (= res!460941 call!70489)))

(declare-fun b!1025980 () Bool)

(declare-fun res!460940 () Bool)

(assert (=> b!1025980 (=> (not res!460940) (not e!654622))))

(assert (=> b!1025980 (= res!460940 call!70489)))

(assert (=> b!1025980 (= e!654619 e!654622)))

(declare-fun d!295091 () Bool)

(declare-fun res!460937 () Bool)

(assert (=> d!295091 (=> res!460937 e!654617)))

(assert (=> d!295091 (= res!460937 (is-ElementMatch!2838 r!15766))))

(assert (=> d!295091 (= (validRegex!1307 r!15766) e!654617)))

(declare-fun bm!70485 () Bool)

(assert (=> bm!70485 (= call!70490 (validRegex!1307 (ite c!170134 (reg!3167 r!15766) (ite c!170135 (regTwo!6189 r!15766) (regTwo!6188 r!15766)))))))

(declare-fun b!1025981 () Bool)

(declare-fun res!460938 () Bool)

(assert (=> b!1025981 (=> res!460938 e!654621)))

(assert (=> b!1025981 (= res!460938 (not (is-Concat!4671 r!15766)))))

(assert (=> b!1025981 (= e!654619 e!654621)))

(declare-fun b!1025982 () Bool)

(assert (=> b!1025982 (= e!654618 call!70490)))

(assert (= (and d!295091 (not res!460937)) b!1025976))

(assert (= (and b!1025976 c!170134) b!1025977))

(assert (= (and b!1025976 (not c!170134)) b!1025975))

(assert (= (and b!1025977 res!460939) b!1025982))

(assert (= (and b!1025975 c!170135) b!1025980))

(assert (= (and b!1025975 (not c!170135)) b!1025981))

(assert (= (and b!1025980 res!460940) b!1025978))

(assert (= (and b!1025981 (not res!460938)) b!1025979))

(assert (= (and b!1025979 res!460941) b!1025974))

(assert (= (or b!1025978 b!1025974) bm!70483))

(assert (= (or b!1025980 b!1025979) bm!70484))

(assert (= (or b!1025982 bm!70483) bm!70485))

(declare-fun m!1202409 () Bool)

(assert (=> bm!70484 m!1202409))

(declare-fun m!1202411 () Bool)

(assert (=> b!1025977 m!1202411))

(declare-fun m!1202413 () Bool)

(assert (=> bm!70485 m!1202413))

(assert (=> start!89288 d!295091))

(declare-fun b!1025987 () Bool)

(declare-fun e!654626 () Bool)

(declare-fun tp!311279 () Bool)

(assert (=> b!1025987 (= e!654626 (and tp_is_empty!5319 tp!311279))))

(assert (=> b!1025734 (= tp!311257 e!654626)))

(assert (= (and b!1025734 (is-Cons!10052 (t!101114 s!10566))) b!1025987))

(declare-fun b!1025998 () Bool)

(declare-fun e!654629 () Bool)

(assert (=> b!1025998 (= e!654629 tp_is_empty!5319)))

(declare-fun b!1026000 () Bool)

(declare-fun tp!311292 () Bool)

(assert (=> b!1026000 (= e!654629 tp!311292)))

(declare-fun b!1026001 () Bool)

(declare-fun tp!311290 () Bool)

(declare-fun tp!311293 () Bool)

(assert (=> b!1026001 (= e!654629 (and tp!311290 tp!311293))))

(assert (=> b!1025728 (= tp!311253 e!654629)))

(declare-fun b!1025999 () Bool)

(declare-fun tp!311291 () Bool)

(declare-fun tp!311294 () Bool)

(assert (=> b!1025999 (= e!654629 (and tp!311291 tp!311294))))

(assert (= (and b!1025728 (is-ElementMatch!2838 (regOne!6188 r!15766))) b!1025998))

(assert (= (and b!1025728 (is-Concat!4671 (regOne!6188 r!15766))) b!1025999))

(assert (= (and b!1025728 (is-Star!2838 (regOne!6188 r!15766))) b!1026000))

(assert (= (and b!1025728 (is-Union!2838 (regOne!6188 r!15766))) b!1026001))

(declare-fun b!1026002 () Bool)

(declare-fun e!654630 () Bool)

(assert (=> b!1026002 (= e!654630 tp_is_empty!5319)))

(declare-fun b!1026004 () Bool)

(declare-fun tp!311297 () Bool)

(assert (=> b!1026004 (= e!654630 tp!311297)))

(declare-fun b!1026005 () Bool)

(declare-fun tp!311295 () Bool)

(declare-fun tp!311298 () Bool)

(assert (=> b!1026005 (= e!654630 (and tp!311295 tp!311298))))

(assert (=> b!1025728 (= tp!311255 e!654630)))

(declare-fun b!1026003 () Bool)

(declare-fun tp!311296 () Bool)

(declare-fun tp!311299 () Bool)

(assert (=> b!1026003 (= e!654630 (and tp!311296 tp!311299))))

(assert (= (and b!1025728 (is-ElementMatch!2838 (regTwo!6188 r!15766))) b!1026002))

(assert (= (and b!1025728 (is-Concat!4671 (regTwo!6188 r!15766))) b!1026003))

(assert (= (and b!1025728 (is-Star!2838 (regTwo!6188 r!15766))) b!1026004))

(assert (= (and b!1025728 (is-Union!2838 (regTwo!6188 r!15766))) b!1026005))

(declare-fun b!1026006 () Bool)

(declare-fun e!654631 () Bool)

(assert (=> b!1026006 (= e!654631 tp_is_empty!5319)))

(declare-fun b!1026008 () Bool)

(declare-fun tp!311302 () Bool)

(assert (=> b!1026008 (= e!654631 tp!311302)))

(declare-fun b!1026009 () Bool)

(declare-fun tp!311300 () Bool)

(declare-fun tp!311303 () Bool)

(assert (=> b!1026009 (= e!654631 (and tp!311300 tp!311303))))

(assert (=> b!1025731 (= tp!311254 e!654631)))

(declare-fun b!1026007 () Bool)

(declare-fun tp!311301 () Bool)

(declare-fun tp!311304 () Bool)

(assert (=> b!1026007 (= e!654631 (and tp!311301 tp!311304))))

(assert (= (and b!1025731 (is-ElementMatch!2838 (reg!3167 r!15766))) b!1026006))

(assert (= (and b!1025731 (is-Concat!4671 (reg!3167 r!15766))) b!1026007))

(assert (= (and b!1025731 (is-Star!2838 (reg!3167 r!15766))) b!1026008))

(assert (= (and b!1025731 (is-Union!2838 (reg!3167 r!15766))) b!1026009))

(declare-fun b!1026010 () Bool)

(declare-fun e!654632 () Bool)

(assert (=> b!1026010 (= e!654632 tp_is_empty!5319)))

(declare-fun b!1026012 () Bool)

(declare-fun tp!311307 () Bool)

(assert (=> b!1026012 (= e!654632 tp!311307)))

(declare-fun b!1026013 () Bool)

(declare-fun tp!311305 () Bool)

(declare-fun tp!311308 () Bool)

(assert (=> b!1026013 (= e!654632 (and tp!311305 tp!311308))))

(assert (=> b!1025733 (= tp!311258 e!654632)))

(declare-fun b!1026011 () Bool)

(declare-fun tp!311306 () Bool)

(declare-fun tp!311309 () Bool)

(assert (=> b!1026011 (= e!654632 (and tp!311306 tp!311309))))

(assert (= (and b!1025733 (is-ElementMatch!2838 (regOne!6189 r!15766))) b!1026010))

(assert (= (and b!1025733 (is-Concat!4671 (regOne!6189 r!15766))) b!1026011))

(assert (= (and b!1025733 (is-Star!2838 (regOne!6189 r!15766))) b!1026012))

(assert (= (and b!1025733 (is-Union!2838 (regOne!6189 r!15766))) b!1026013))

(declare-fun b!1026014 () Bool)

(declare-fun e!654633 () Bool)

(assert (=> b!1026014 (= e!654633 tp_is_empty!5319)))

(declare-fun b!1026016 () Bool)

(declare-fun tp!311312 () Bool)

(assert (=> b!1026016 (= e!654633 tp!311312)))

(declare-fun b!1026017 () Bool)

(declare-fun tp!311310 () Bool)

(declare-fun tp!311313 () Bool)

(assert (=> b!1026017 (= e!654633 (and tp!311310 tp!311313))))

(assert (=> b!1025733 (= tp!311256 e!654633)))

(declare-fun b!1026015 () Bool)

(declare-fun tp!311311 () Bool)

(declare-fun tp!311314 () Bool)

(assert (=> b!1026015 (= e!654633 (and tp!311311 tp!311314))))

(assert (= (and b!1025733 (is-ElementMatch!2838 (regTwo!6189 r!15766))) b!1026014))

(assert (= (and b!1025733 (is-Concat!4671 (regTwo!6189 r!15766))) b!1026015))

(assert (= (and b!1025733 (is-Star!2838 (regTwo!6189 r!15766))) b!1026016))

(assert (= (and b!1025733 (is-Union!2838 (regTwo!6189 r!15766))) b!1026017))

(push 1)

(assert (not b!1025960))

(assert (not b!1025977))

(assert (not b!1026007))

(assert (not b!1025843))

(assert (not b!1025973))

(assert (not b!1026017))

(assert (not bm!70484))

(assert (not b!1026000))

(assert (not b!1025987))

(assert (not b!1026015))

(assert (not b!1026012))

(assert (not d!295079))

(assert (not d!295063))

(assert (not d!295085))

(assert (not b!1025847))

(assert (not b!1025844))

(assert (not b!1025846))

(assert tp_is_empty!5319)

(assert (not b!1026001))

(assert (not b!1025909))

(assert (not bm!70482))

(assert (not b!1026016))

(assert (not bm!70485))

(assert (not b!1026013))

(assert (not d!295075))

(assert (not d!295069))

(assert (not b!1026008))

(assert (not b!1026009))

(assert (not bm!70479))

(assert (not bm!70461))

(assert (not bm!70478))

(assert (not b!1025999))

(assert (not b!1025965))

(assert (not b!1026004))

(assert (not b!1026003))

(assert (not b!1025789))

(assert (not b!1025967))

(assert (not b!1025961))

(assert (not d!295083))

(assert (not b!1025914))

(assert (not b!1026011))

(assert (not b!1025841))

(assert (not b!1025848))

(assert (not b!1025972))

(assert (not b!1026005))

(assert (not bm!70460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

