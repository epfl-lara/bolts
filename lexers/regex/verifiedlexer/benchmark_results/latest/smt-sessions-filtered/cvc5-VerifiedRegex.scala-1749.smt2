; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87652 () Bool)

(assert start!87652)

(declare-fun b!996470 () Bool)

(declare-fun e!639163 () Bool)

(declare-fun tp!304011 () Bool)

(assert (=> b!996470 (= e!639163 tp!304011)))

(declare-fun res!450093 () Bool)

(declare-fun e!639160 () Bool)

(assert (=> start!87652 (=> (not res!450093) (not e!639160))))

(declare-datatypes ((C!6082 0))(
  ( (C!6083 (val!3289 Int)) )
))
(declare-datatypes ((Regex!2756 0))(
  ( (ElementMatch!2756 (c!163939 C!6082)) (Concat!4589 (regOne!6024 Regex!2756) (regTwo!6024 Regex!2756)) (EmptyExpr!2756) (Star!2756 (reg!3085 Regex!2756)) (EmptyLang!2756) (Union!2756 (regOne!6025 Regex!2756) (regTwo!6025 Regex!2756)) )
))
(declare-fun r!15766 () Regex!2756)

(declare-fun validRegex!1225 (Regex!2756) Bool)

(assert (=> start!87652 (= res!450093 (validRegex!1225 r!15766))))

(assert (=> start!87652 e!639160))

(assert (=> start!87652 e!639163))

(declare-fun e!639161 () Bool)

(assert (=> start!87652 e!639161))

(declare-fun b!996471 () Bool)

(declare-fun tp_is_empty!5155 () Bool)

(assert (=> b!996471 (= e!639163 tp_is_empty!5155)))

(declare-fun b!996472 () Bool)

(declare-fun tp!304012 () Bool)

(assert (=> b!996472 (= e!639161 (and tp_is_empty!5155 tp!304012))))

(declare-fun b!996473 () Bool)

(declare-fun e!639162 () Bool)

(assert (=> b!996473 (= e!639162 (validRegex!1225 (regTwo!6025 r!15766)))))

(declare-fun b!996474 () Bool)

(declare-fun e!639164 () Bool)

(assert (=> b!996474 (= e!639160 (not e!639164))))

(declare-fun res!450094 () Bool)

(assert (=> b!996474 (=> res!450094 e!639164)))

(declare-fun lt!351413 () Bool)

(assert (=> b!996474 (= res!450094 (or (not lt!351413) (and (is-Concat!4589 r!15766) (is-EmptyExpr!2756 (regOne!6024 r!15766))) (and (is-Concat!4589 r!15766) (is-EmptyExpr!2756 (regTwo!6024 r!15766))) (is-Concat!4589 r!15766) (not (is-Union!2756 r!15766))))))

(declare-datatypes ((List!9986 0))(
  ( (Nil!9970) (Cons!9970 (h!15371 C!6082) (t!101032 List!9986)) )
))
(declare-fun s!10566 () List!9986)

(declare-fun matchRSpec!555 (Regex!2756 List!9986) Bool)

(assert (=> b!996474 (= lt!351413 (matchRSpec!555 r!15766 s!10566))))

(declare-fun matchR!1292 (Regex!2756 List!9986) Bool)

(assert (=> b!996474 (= lt!351413 (matchR!1292 r!15766 s!10566))))

(declare-datatypes ((Unit!15171 0))(
  ( (Unit!15172) )
))
(declare-fun lt!351412 () Unit!15171)

(declare-fun mainMatchTheorem!555 (Regex!2756 List!9986) Unit!15171)

(assert (=> b!996474 (= lt!351412 (mainMatchTheorem!555 r!15766 s!10566))))

(declare-fun b!996475 () Bool)

(declare-fun tp!304010 () Bool)

(declare-fun tp!304014 () Bool)

(assert (=> b!996475 (= e!639163 (and tp!304010 tp!304014))))

(declare-fun b!996476 () Bool)

(assert (=> b!996476 (= e!639164 e!639162)))

(declare-fun res!450095 () Bool)

(assert (=> b!996476 (=> (not res!450095) (not e!639162))))

(assert (=> b!996476 (= res!450095 (validRegex!1225 (regOne!6025 r!15766)))))

(declare-fun b!996477 () Bool)

(declare-fun tp!304009 () Bool)

(declare-fun tp!304013 () Bool)

(assert (=> b!996477 (= e!639163 (and tp!304009 tp!304013))))

(assert (= (and start!87652 res!450093) b!996474))

(assert (= (and b!996474 (not res!450094)) b!996476))

(assert (= (and b!996476 res!450095) b!996473))

(assert (= (and start!87652 (is-ElementMatch!2756 r!15766)) b!996471))

(assert (= (and start!87652 (is-Concat!4589 r!15766)) b!996477))

(assert (= (and start!87652 (is-Star!2756 r!15766)) b!996470))

(assert (= (and start!87652 (is-Union!2756 r!15766)) b!996475))

(assert (= (and start!87652 (is-Cons!9970 s!10566)) b!996472))

(declare-fun m!1188417 () Bool)

(assert (=> start!87652 m!1188417))

(declare-fun m!1188419 () Bool)

(assert (=> b!996473 m!1188419))

(declare-fun m!1188421 () Bool)

(assert (=> b!996474 m!1188421))

(declare-fun m!1188423 () Bool)

(assert (=> b!996474 m!1188423))

(declare-fun m!1188425 () Bool)

(assert (=> b!996474 m!1188425))

(declare-fun m!1188427 () Bool)

(assert (=> b!996476 m!1188427))

(push 1)

(assert (not start!87652))

(assert (not b!996473))

(assert (not b!996472))

(assert (not b!996477))

(assert (not b!996474))

(assert (not b!996470))

(assert (not b!996475))

(assert tp_is_empty!5155)

(assert (not b!996476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!996556 () Bool)

(declare-fun e!639227 () Bool)

(declare-fun call!65909 () Bool)

(assert (=> b!996556 (= e!639227 call!65909)))

(declare-fun b!996557 () Bool)

(declare-fun e!639222 () Bool)

(declare-fun e!639228 () Bool)

(assert (=> b!996557 (= e!639222 e!639228)))

(declare-fun c!163954 () Bool)

(assert (=> b!996557 (= c!163954 (is-Union!2756 (regOne!6025 r!15766)))))

(declare-fun b!996558 () Bool)

(declare-fun res!450139 () Bool)

(declare-fun e!639225 () Bool)

(assert (=> b!996558 (=> (not res!450139) (not e!639225))))

(declare-fun call!65910 () Bool)

(assert (=> b!996558 (= res!450139 call!65910)))

(assert (=> b!996558 (= e!639228 e!639225)))

(declare-fun b!996559 () Bool)

(declare-fun res!450135 () Bool)

(declare-fun e!639224 () Bool)

(assert (=> b!996559 (=> res!450135 e!639224)))

(assert (=> b!996559 (= res!450135 (not (is-Concat!4589 (regOne!6025 r!15766))))))

(assert (=> b!996559 (= e!639228 e!639224)))

(declare-fun bm!65903 () Bool)

(assert (=> bm!65903 (= call!65910 (validRegex!1225 (ite c!163954 (regOne!6025 (regOne!6025 r!15766)) (regOne!6024 (regOne!6025 r!15766)))))))

(declare-fun b!996560 () Bool)

(declare-fun e!639223 () Bool)

(assert (=> b!996560 (= e!639223 e!639222)))

(declare-fun c!163953 () Bool)

(assert (=> b!996560 (= c!163953 (is-Star!2756 (regOne!6025 r!15766)))))

(declare-fun b!996561 () Bool)

(declare-fun e!639226 () Bool)

(assert (=> b!996561 (= e!639224 e!639226)))

(declare-fun res!450137 () Bool)

(assert (=> b!996561 (=> (not res!450137) (not e!639226))))

(assert (=> b!996561 (= res!450137 call!65910)))

(declare-fun b!996562 () Bool)

(declare-fun call!65908 () Bool)

(assert (=> b!996562 (= e!639225 call!65908)))

(declare-fun bm!65904 () Bool)

(assert (=> bm!65904 (= call!65908 call!65909)))

(declare-fun bm!65905 () Bool)

(assert (=> bm!65905 (= call!65909 (validRegex!1225 (ite c!163953 (reg!3085 (regOne!6025 r!15766)) (ite c!163954 (regTwo!6025 (regOne!6025 r!15766)) (regTwo!6024 (regOne!6025 r!15766))))))))

(declare-fun d!290932 () Bool)

(declare-fun res!450138 () Bool)

(assert (=> d!290932 (=> res!450138 e!639223)))

(assert (=> d!290932 (= res!450138 (is-ElementMatch!2756 (regOne!6025 r!15766)))))

(assert (=> d!290932 (= (validRegex!1225 (regOne!6025 r!15766)) e!639223)))

(declare-fun b!996563 () Bool)

(assert (=> b!996563 (= e!639226 call!65908)))

(declare-fun b!996564 () Bool)

(assert (=> b!996564 (= e!639222 e!639227)))

(declare-fun res!450136 () Bool)

(declare-fun nullable!872 (Regex!2756) Bool)

(assert (=> b!996564 (= res!450136 (not (nullable!872 (reg!3085 (regOne!6025 r!15766)))))))

(assert (=> b!996564 (=> (not res!450136) (not e!639227))))

(assert (= (and d!290932 (not res!450138)) b!996560))

(assert (= (and b!996560 c!163953) b!996564))

(assert (= (and b!996560 (not c!163953)) b!996557))

(assert (= (and b!996564 res!450136) b!996556))

(assert (= (and b!996557 c!163954) b!996558))

(assert (= (and b!996557 (not c!163954)) b!996559))

(assert (= (and b!996558 res!450139) b!996562))

(assert (= (and b!996559 (not res!450135)) b!996561))

(assert (= (and b!996561 res!450137) b!996563))

(assert (= (or b!996562 b!996563) bm!65904))

(assert (= (or b!996558 b!996561) bm!65903))

(assert (= (or b!996556 bm!65904) bm!65905))

(declare-fun m!1188453 () Bool)

(assert (=> bm!65903 m!1188453))

(declare-fun m!1188455 () Bool)

(assert (=> bm!65905 m!1188455))

(declare-fun m!1188457 () Bool)

(assert (=> b!996564 m!1188457))

(assert (=> b!996476 d!290932))

(declare-fun b!996630 () Bool)

(assert (=> b!996630 true))

(assert (=> b!996630 true))

(declare-fun bs!245042 () Bool)

(declare-fun b!996637 () Bool)

(assert (= bs!245042 (and b!996637 b!996630)))

(declare-fun lambda!35436 () Int)

(declare-fun lambda!35435 () Int)

(assert (=> bs!245042 (not (= lambda!35436 lambda!35435))))

(assert (=> b!996637 true))

(assert (=> b!996637 true))

(declare-fun b!996628 () Bool)

(declare-fun res!450169 () Bool)

(declare-fun e!639268 () Bool)

(assert (=> b!996628 (=> res!450169 e!639268)))

(declare-fun call!65918 () Bool)

(assert (=> b!996628 (= res!450169 call!65918)))

(declare-fun e!639269 () Bool)

(assert (=> b!996628 (= e!639269 e!639268)))

(declare-fun b!996629 () Bool)

(declare-fun c!163976 () Bool)

(assert (=> b!996629 (= c!163976 (is-ElementMatch!2756 r!15766))))

(declare-fun e!639270 () Bool)

(declare-fun e!639274 () Bool)

(assert (=> b!996629 (= e!639270 e!639274)))

(declare-fun call!65919 () Bool)

(assert (=> b!996630 (= e!639268 call!65919)))

(declare-fun d!290938 () Bool)

(declare-fun c!163973 () Bool)

(assert (=> d!290938 (= c!163973 (is-EmptyExpr!2756 r!15766))))

(declare-fun e!639272 () Bool)

(assert (=> d!290938 (= (matchRSpec!555 r!15766 s!10566) e!639272)))

(declare-fun b!996631 () Bool)

(declare-fun e!639273 () Bool)

(declare-fun e!639271 () Bool)

(assert (=> b!996631 (= e!639273 e!639271)))

(declare-fun res!450167 () Bool)

(assert (=> b!996631 (= res!450167 (matchRSpec!555 (regOne!6025 r!15766) s!10566))))

(assert (=> b!996631 (=> res!450167 e!639271)))

(declare-fun b!996632 () Bool)

(assert (=> b!996632 (= e!639274 (= s!10566 (Cons!9970 (c!163939 r!15766) Nil!9970)))))

(declare-fun bm!65913 () Bool)

(declare-fun isEmpty!6310 (List!9986) Bool)

(assert (=> bm!65913 (= call!65918 (isEmpty!6310 s!10566))))

(declare-fun b!996633 () Bool)

(assert (=> b!996633 (= e!639271 (matchRSpec!555 (regTwo!6025 r!15766) s!10566))))

(declare-fun b!996634 () Bool)

(declare-fun c!163975 () Bool)

(assert (=> b!996634 (= c!163975 (is-Union!2756 r!15766))))

(assert (=> b!996634 (= e!639274 e!639273)))

(declare-fun c!163974 () Bool)

(declare-fun bm!65914 () Bool)

(declare-fun Exists!493 (Int) Bool)

(assert (=> bm!65914 (= call!65919 (Exists!493 (ite c!163974 lambda!35435 lambda!35436)))))

(declare-fun b!996635 () Bool)

(assert (=> b!996635 (= e!639272 call!65918)))

(declare-fun b!996636 () Bool)

(assert (=> b!996636 (= e!639272 e!639270)))

(declare-fun res!450168 () Bool)

(assert (=> b!996636 (= res!450168 (not (is-EmptyLang!2756 r!15766)))))

(assert (=> b!996636 (=> (not res!450168) (not e!639270))))

(assert (=> b!996637 (= e!639269 call!65919)))

(declare-fun b!996638 () Bool)

(assert (=> b!996638 (= e!639273 e!639269)))

(assert (=> b!996638 (= c!163974 (is-Star!2756 r!15766))))

(assert (= (and d!290938 c!163973) b!996635))

(assert (= (and d!290938 (not c!163973)) b!996636))

(assert (= (and b!996636 res!450168) b!996629))

(assert (= (and b!996629 c!163976) b!996632))

(assert (= (and b!996629 (not c!163976)) b!996634))

(assert (= (and b!996634 c!163975) b!996631))

(assert (= (and b!996634 (not c!163975)) b!996638))

(assert (= (and b!996631 (not res!450167)) b!996633))

(assert (= (and b!996638 c!163974) b!996628))

(assert (= (and b!996638 (not c!163974)) b!996637))

(assert (= (and b!996628 (not res!450169)) b!996630))

(assert (= (or b!996630 b!996637) bm!65914))

(assert (= (or b!996635 b!996628) bm!65913))

(declare-fun m!1188465 () Bool)

(assert (=> b!996631 m!1188465))

(declare-fun m!1188467 () Bool)

(assert (=> bm!65913 m!1188467))

(declare-fun m!1188469 () Bool)

(assert (=> b!996633 m!1188469))

(declare-fun m!1188471 () Bool)

(assert (=> bm!65914 m!1188471))

(assert (=> b!996474 d!290938))

(declare-fun b!996671 () Bool)

(declare-fun e!639293 () Bool)

(declare-fun e!639291 () Bool)

(assert (=> b!996671 (= e!639293 e!639291)))

(declare-fun res!450187 () Bool)

(assert (=> b!996671 (=> res!450187 e!639291)))

(declare-fun call!65922 () Bool)

(assert (=> b!996671 (= res!450187 call!65922)))

(declare-fun b!996672 () Bool)

(declare-fun e!639295 () Bool)

(declare-fun lt!351422 () Bool)

(assert (=> b!996672 (= e!639295 (not lt!351422))))

(declare-fun bm!65917 () Bool)

(assert (=> bm!65917 (= call!65922 (isEmpty!6310 s!10566))))

(declare-fun b!996673 () Bool)

(declare-fun res!450190 () Bool)

(declare-fun e!639290 () Bool)

(assert (=> b!996673 (=> res!450190 e!639290)))

(declare-fun e!639292 () Bool)

(assert (=> b!996673 (= res!450190 e!639292)))

(declare-fun res!450192 () Bool)

(assert (=> b!996673 (=> (not res!450192) (not e!639292))))

(assert (=> b!996673 (= res!450192 lt!351422)))

(declare-fun d!290942 () Bool)

(declare-fun e!639294 () Bool)

(assert (=> d!290942 e!639294))

(declare-fun c!163983 () Bool)

(assert (=> d!290942 (= c!163983 (is-EmptyExpr!2756 r!15766))))

(declare-fun e!639289 () Bool)

(assert (=> d!290942 (= lt!351422 e!639289)))

(declare-fun c!163985 () Bool)

(assert (=> d!290942 (= c!163985 (isEmpty!6310 s!10566))))

(assert (=> d!290942 (validRegex!1225 r!15766)))

(assert (=> d!290942 (= (matchR!1292 r!15766 s!10566) lt!351422)))

(declare-fun b!996674 () Bool)

(assert (=> b!996674 (= e!639289 (nullable!872 r!15766))))

(declare-fun b!996675 () Bool)

(declare-fun head!1831 (List!9986) C!6082)

(assert (=> b!996675 (= e!639292 (= (head!1831 s!10566) (c!163939 r!15766)))))

(declare-fun b!996676 () Bool)

(assert (=> b!996676 (= e!639290 e!639293)))

(declare-fun res!450191 () Bool)

(assert (=> b!996676 (=> (not res!450191) (not e!639293))))

(assert (=> b!996676 (= res!450191 (not lt!351422))))

(declare-fun b!996677 () Bool)

(declare-fun res!450188 () Bool)

(assert (=> b!996677 (=> (not res!450188) (not e!639292))))

(assert (=> b!996677 (= res!450188 (not call!65922))))

(declare-fun b!996678 () Bool)

(declare-fun res!450193 () Bool)

(assert (=> b!996678 (=> res!450193 e!639291)))

(declare-fun tail!1393 (List!9986) List!9986)

(assert (=> b!996678 (= res!450193 (not (isEmpty!6310 (tail!1393 s!10566))))))

(declare-fun b!996679 () Bool)

(assert (=> b!996679 (= e!639291 (not (= (head!1831 s!10566) (c!163939 r!15766))))))

(declare-fun b!996680 () Bool)

(declare-fun res!450189 () Bool)

(assert (=> b!996680 (=> res!450189 e!639290)))

(assert (=> b!996680 (= res!450189 (not (is-ElementMatch!2756 r!15766)))))

(assert (=> b!996680 (= e!639295 e!639290)))

(declare-fun b!996681 () Bool)

(assert (=> b!996681 (= e!639294 e!639295)))

(declare-fun c!163984 () Bool)

(assert (=> b!996681 (= c!163984 (is-EmptyLang!2756 r!15766))))

(declare-fun b!996682 () Bool)

(declare-fun res!450186 () Bool)

(assert (=> b!996682 (=> (not res!450186) (not e!639292))))

(assert (=> b!996682 (= res!450186 (isEmpty!6310 (tail!1393 s!10566)))))

(declare-fun b!996683 () Bool)

(declare-fun derivativeStep!678 (Regex!2756 C!6082) Regex!2756)

(assert (=> b!996683 (= e!639289 (matchR!1292 (derivativeStep!678 r!15766 (head!1831 s!10566)) (tail!1393 s!10566)))))

(declare-fun b!996684 () Bool)

(assert (=> b!996684 (= e!639294 (= lt!351422 call!65922))))

(assert (= (and d!290942 c!163985) b!996674))

(assert (= (and d!290942 (not c!163985)) b!996683))

(assert (= (and d!290942 c!163983) b!996684))

(assert (= (and d!290942 (not c!163983)) b!996681))

(assert (= (and b!996681 c!163984) b!996672))

(assert (= (and b!996681 (not c!163984)) b!996680))

(assert (= (and b!996680 (not res!450189)) b!996673))

(assert (= (and b!996673 res!450192) b!996677))

(assert (= (and b!996677 res!450188) b!996682))

(assert (= (and b!996682 res!450186) b!996675))

(assert (= (and b!996673 (not res!450190)) b!996676))

(assert (= (and b!996676 res!450191) b!996671))

(assert (= (and b!996671 (not res!450187)) b!996678))

(assert (= (and b!996678 (not res!450193)) b!996679))

(assert (= (or b!996684 b!996671 b!996677) bm!65917))

(assert (=> bm!65917 m!1188467))

(assert (=> d!290942 m!1188467))

(assert (=> d!290942 m!1188417))

(declare-fun m!1188473 () Bool)

(assert (=> b!996675 m!1188473))

(declare-fun m!1188475 () Bool)

(assert (=> b!996678 m!1188475))

(assert (=> b!996678 m!1188475))

(declare-fun m!1188477 () Bool)

(assert (=> b!996678 m!1188477))

(assert (=> b!996679 m!1188473))

(declare-fun m!1188479 () Bool)

(assert (=> b!996674 m!1188479))

(assert (=> b!996682 m!1188475))

(assert (=> b!996682 m!1188475))

(assert (=> b!996682 m!1188477))

(assert (=> b!996683 m!1188473))

(assert (=> b!996683 m!1188473))

(declare-fun m!1188481 () Bool)

(assert (=> b!996683 m!1188481))

(assert (=> b!996683 m!1188475))

(assert (=> b!996683 m!1188481))

(assert (=> b!996683 m!1188475))

(declare-fun m!1188483 () Bool)

(assert (=> b!996683 m!1188483))

(assert (=> b!996474 d!290942))

(declare-fun d!290944 () Bool)

(assert (=> d!290944 (= (matchR!1292 r!15766 s!10566) (matchRSpec!555 r!15766 s!10566))))

(declare-fun lt!351425 () Unit!15171)

(declare-fun choose!6299 (Regex!2756 List!9986) Unit!15171)

(assert (=> d!290944 (= lt!351425 (choose!6299 r!15766 s!10566))))

(assert (=> d!290944 (validRegex!1225 r!15766)))

(assert (=> d!290944 (= (mainMatchTheorem!555 r!15766 s!10566) lt!351425)))

(declare-fun bs!245043 () Bool)

(assert (= bs!245043 d!290944))

(assert (=> bs!245043 m!1188423))

(assert (=> bs!245043 m!1188421))

(declare-fun m!1188485 () Bool)

(assert (=> bs!245043 m!1188485))

(assert (=> bs!245043 m!1188417))

(assert (=> b!996474 d!290944))

(declare-fun b!996685 () Bool)

(declare-fun e!639301 () Bool)

(declare-fun call!65924 () Bool)

(assert (=> b!996685 (= e!639301 call!65924)))

(declare-fun b!996686 () Bool)

(declare-fun e!639296 () Bool)

(declare-fun e!639302 () Bool)

(assert (=> b!996686 (= e!639296 e!639302)))

(declare-fun c!163987 () Bool)

(assert (=> b!996686 (= c!163987 (is-Union!2756 (regTwo!6025 r!15766)))))

(declare-fun b!996687 () Bool)

(declare-fun res!450198 () Bool)

(declare-fun e!639299 () Bool)

(assert (=> b!996687 (=> (not res!450198) (not e!639299))))

(declare-fun call!65925 () Bool)

(assert (=> b!996687 (= res!450198 call!65925)))

(assert (=> b!996687 (= e!639302 e!639299)))

(declare-fun b!996688 () Bool)

(declare-fun res!450194 () Bool)

(declare-fun e!639298 () Bool)

(assert (=> b!996688 (=> res!450194 e!639298)))

(assert (=> b!996688 (= res!450194 (not (is-Concat!4589 (regTwo!6025 r!15766))))))

(assert (=> b!996688 (= e!639302 e!639298)))

(declare-fun bm!65918 () Bool)

(assert (=> bm!65918 (= call!65925 (validRegex!1225 (ite c!163987 (regOne!6025 (regTwo!6025 r!15766)) (regOne!6024 (regTwo!6025 r!15766)))))))

(declare-fun b!996689 () Bool)

(declare-fun e!639297 () Bool)

(assert (=> b!996689 (= e!639297 e!639296)))

(declare-fun c!163986 () Bool)

(assert (=> b!996689 (= c!163986 (is-Star!2756 (regTwo!6025 r!15766)))))

(declare-fun b!996690 () Bool)

(declare-fun e!639300 () Bool)

(assert (=> b!996690 (= e!639298 e!639300)))

(declare-fun res!450196 () Bool)

(assert (=> b!996690 (=> (not res!450196) (not e!639300))))

(assert (=> b!996690 (= res!450196 call!65925)))

(declare-fun b!996691 () Bool)

(declare-fun call!65923 () Bool)

(assert (=> b!996691 (= e!639299 call!65923)))

(declare-fun bm!65919 () Bool)

(assert (=> bm!65919 (= call!65923 call!65924)))

(declare-fun bm!65920 () Bool)

(assert (=> bm!65920 (= call!65924 (validRegex!1225 (ite c!163986 (reg!3085 (regTwo!6025 r!15766)) (ite c!163987 (regTwo!6025 (regTwo!6025 r!15766)) (regTwo!6024 (regTwo!6025 r!15766))))))))

(declare-fun d!290946 () Bool)

(declare-fun res!450197 () Bool)

(assert (=> d!290946 (=> res!450197 e!639297)))

(assert (=> d!290946 (= res!450197 (is-ElementMatch!2756 (regTwo!6025 r!15766)))))

(assert (=> d!290946 (= (validRegex!1225 (regTwo!6025 r!15766)) e!639297)))

(declare-fun b!996692 () Bool)

(assert (=> b!996692 (= e!639300 call!65923)))

(declare-fun b!996693 () Bool)

(assert (=> b!996693 (= e!639296 e!639301)))

(declare-fun res!450195 () Bool)

(assert (=> b!996693 (= res!450195 (not (nullable!872 (reg!3085 (regTwo!6025 r!15766)))))))

(assert (=> b!996693 (=> (not res!450195) (not e!639301))))

(assert (= (and d!290946 (not res!450197)) b!996689))

(assert (= (and b!996689 c!163986) b!996693))

(assert (= (and b!996689 (not c!163986)) b!996686))

(assert (= (and b!996693 res!450195) b!996685))

(assert (= (and b!996686 c!163987) b!996687))

(assert (= (and b!996686 (not c!163987)) b!996688))

(assert (= (and b!996687 res!450198) b!996691))

(assert (= (and b!996688 (not res!450194)) b!996690))

(assert (= (and b!996690 res!450196) b!996692))

(assert (= (or b!996691 b!996692) bm!65919))

(assert (= (or b!996687 b!996690) bm!65918))

(assert (= (or b!996685 bm!65919) bm!65920))

(declare-fun m!1188487 () Bool)

(assert (=> bm!65918 m!1188487))

(declare-fun m!1188489 () Bool)

(assert (=> bm!65920 m!1188489))

(declare-fun m!1188491 () Bool)

(assert (=> b!996693 m!1188491))

(assert (=> b!996473 d!290946))

(declare-fun b!996694 () Bool)

(declare-fun e!639308 () Bool)

(declare-fun call!65927 () Bool)

(assert (=> b!996694 (= e!639308 call!65927)))

(declare-fun b!996695 () Bool)

(declare-fun e!639303 () Bool)

(declare-fun e!639309 () Bool)

(assert (=> b!996695 (= e!639303 e!639309)))

(declare-fun c!163989 () Bool)

(assert (=> b!996695 (= c!163989 (is-Union!2756 r!15766))))

(declare-fun b!996696 () Bool)

(declare-fun res!450203 () Bool)

(declare-fun e!639306 () Bool)

(assert (=> b!996696 (=> (not res!450203) (not e!639306))))

(declare-fun call!65928 () Bool)

(assert (=> b!996696 (= res!450203 call!65928)))

(assert (=> b!996696 (= e!639309 e!639306)))

(declare-fun b!996697 () Bool)

(declare-fun res!450199 () Bool)

(declare-fun e!639305 () Bool)

(assert (=> b!996697 (=> res!450199 e!639305)))

(assert (=> b!996697 (= res!450199 (not (is-Concat!4589 r!15766)))))

(assert (=> b!996697 (= e!639309 e!639305)))

(declare-fun bm!65921 () Bool)

(assert (=> bm!65921 (= call!65928 (validRegex!1225 (ite c!163989 (regOne!6025 r!15766) (regOne!6024 r!15766))))))

(declare-fun b!996698 () Bool)

(declare-fun e!639304 () Bool)

(assert (=> b!996698 (= e!639304 e!639303)))

(declare-fun c!163988 () Bool)

(assert (=> b!996698 (= c!163988 (is-Star!2756 r!15766))))

(declare-fun b!996699 () Bool)

(declare-fun e!639307 () Bool)

(assert (=> b!996699 (= e!639305 e!639307)))

(declare-fun res!450201 () Bool)

(assert (=> b!996699 (=> (not res!450201) (not e!639307))))

(assert (=> b!996699 (= res!450201 call!65928)))

(declare-fun b!996700 () Bool)

(declare-fun call!65926 () Bool)

(assert (=> b!996700 (= e!639306 call!65926)))

(declare-fun bm!65922 () Bool)

(assert (=> bm!65922 (= call!65926 call!65927)))

(declare-fun bm!65923 () Bool)

(assert (=> bm!65923 (= call!65927 (validRegex!1225 (ite c!163988 (reg!3085 r!15766) (ite c!163989 (regTwo!6025 r!15766) (regTwo!6024 r!15766)))))))

(declare-fun d!290948 () Bool)

(declare-fun res!450202 () Bool)

(assert (=> d!290948 (=> res!450202 e!639304)))

(assert (=> d!290948 (= res!450202 (is-ElementMatch!2756 r!15766))))

(assert (=> d!290948 (= (validRegex!1225 r!15766) e!639304)))

(declare-fun b!996701 () Bool)

(assert (=> b!996701 (= e!639307 call!65926)))

(declare-fun b!996702 () Bool)

(assert (=> b!996702 (= e!639303 e!639308)))

(declare-fun res!450200 () Bool)

(assert (=> b!996702 (= res!450200 (not (nullable!872 (reg!3085 r!15766))))))

(assert (=> b!996702 (=> (not res!450200) (not e!639308))))

(assert (= (and d!290948 (not res!450202)) b!996698))

(assert (= (and b!996698 c!163988) b!996702))

(assert (= (and b!996698 (not c!163988)) b!996695))

(assert (= (and b!996702 res!450200) b!996694))

(assert (= (and b!996695 c!163989) b!996696))

(assert (= (and b!996695 (not c!163989)) b!996697))

(assert (= (and b!996696 res!450203) b!996700))

(assert (= (and b!996697 (not res!450199)) b!996699))

(assert (= (and b!996699 res!450201) b!996701))

(assert (= (or b!996700 b!996701) bm!65922))

(assert (= (or b!996696 b!996699) bm!65921))

(assert (= (or b!996694 bm!65922) bm!65923))

(declare-fun m!1188493 () Bool)

(assert (=> bm!65921 m!1188493))

(declare-fun m!1188495 () Bool)

(assert (=> bm!65923 m!1188495))

(declare-fun m!1188497 () Bool)

(assert (=> b!996702 m!1188497))

(assert (=> start!87652 d!290948))

(declare-fun b!996714 () Bool)

(declare-fun e!639312 () Bool)

(declare-fun tp!304047 () Bool)

(declare-fun tp!304045 () Bool)

(assert (=> b!996714 (= e!639312 (and tp!304047 tp!304045))))

(declare-fun b!996713 () Bool)

(assert (=> b!996713 (= e!639312 tp_is_empty!5155)))

(assert (=> b!996470 (= tp!304011 e!639312)))

(declare-fun b!996716 () Bool)

(declare-fun tp!304043 () Bool)

(declare-fun tp!304046 () Bool)

(assert (=> b!996716 (= e!639312 (and tp!304043 tp!304046))))

(declare-fun b!996715 () Bool)

(declare-fun tp!304044 () Bool)

(assert (=> b!996715 (= e!639312 tp!304044)))

(assert (= (and b!996470 (is-ElementMatch!2756 (reg!3085 r!15766))) b!996713))

(assert (= (and b!996470 (is-Concat!4589 (reg!3085 r!15766))) b!996714))

(assert (= (and b!996470 (is-Star!2756 (reg!3085 r!15766))) b!996715))

(assert (= (and b!996470 (is-Union!2756 (reg!3085 r!15766))) b!996716))

(declare-fun b!996718 () Bool)

(declare-fun e!639313 () Bool)

(declare-fun tp!304052 () Bool)

(declare-fun tp!304050 () Bool)

(assert (=> b!996718 (= e!639313 (and tp!304052 tp!304050))))

(declare-fun b!996717 () Bool)

(assert (=> b!996717 (= e!639313 tp_is_empty!5155)))

(assert (=> b!996475 (= tp!304010 e!639313)))

(declare-fun b!996720 () Bool)

(declare-fun tp!304048 () Bool)

(declare-fun tp!304051 () Bool)

(assert (=> b!996720 (= e!639313 (and tp!304048 tp!304051))))

(declare-fun b!996719 () Bool)

(declare-fun tp!304049 () Bool)

(assert (=> b!996719 (= e!639313 tp!304049)))

(assert (= (and b!996475 (is-ElementMatch!2756 (regOne!6025 r!15766))) b!996717))

(assert (= (and b!996475 (is-Concat!4589 (regOne!6025 r!15766))) b!996718))

(assert (= (and b!996475 (is-Star!2756 (regOne!6025 r!15766))) b!996719))

(assert (= (and b!996475 (is-Union!2756 (regOne!6025 r!15766))) b!996720))

(declare-fun b!996722 () Bool)

(declare-fun e!639314 () Bool)

(declare-fun tp!304057 () Bool)

(declare-fun tp!304055 () Bool)

(assert (=> b!996722 (= e!639314 (and tp!304057 tp!304055))))

(declare-fun b!996721 () Bool)

(assert (=> b!996721 (= e!639314 tp_is_empty!5155)))

(assert (=> b!996475 (= tp!304014 e!639314)))

(declare-fun b!996724 () Bool)

(declare-fun tp!304053 () Bool)

(declare-fun tp!304056 () Bool)

(assert (=> b!996724 (= e!639314 (and tp!304053 tp!304056))))

(declare-fun b!996723 () Bool)

(declare-fun tp!304054 () Bool)

(assert (=> b!996723 (= e!639314 tp!304054)))

(assert (= (and b!996475 (is-ElementMatch!2756 (regTwo!6025 r!15766))) b!996721))

(assert (= (and b!996475 (is-Concat!4589 (regTwo!6025 r!15766))) b!996722))

(assert (= (and b!996475 (is-Star!2756 (regTwo!6025 r!15766))) b!996723))

(assert (= (and b!996475 (is-Union!2756 (regTwo!6025 r!15766))) b!996724))

(declare-fun b!996729 () Bool)

(declare-fun e!639317 () Bool)

(declare-fun tp!304060 () Bool)

(assert (=> b!996729 (= e!639317 (and tp_is_empty!5155 tp!304060))))

(assert (=> b!996472 (= tp!304012 e!639317)))

(assert (= (and b!996472 (is-Cons!9970 (t!101032 s!10566))) b!996729))

(declare-fun b!996731 () Bool)

(declare-fun e!639318 () Bool)

(declare-fun tp!304065 () Bool)

(declare-fun tp!304063 () Bool)

(assert (=> b!996731 (= e!639318 (and tp!304065 tp!304063))))

(declare-fun b!996730 () Bool)

(assert (=> b!996730 (= e!639318 tp_is_empty!5155)))

(assert (=> b!996477 (= tp!304009 e!639318)))

(declare-fun b!996733 () Bool)

(declare-fun tp!304061 () Bool)

(declare-fun tp!304064 () Bool)

(assert (=> b!996733 (= e!639318 (and tp!304061 tp!304064))))

(declare-fun b!996732 () Bool)

(declare-fun tp!304062 () Bool)

(assert (=> b!996732 (= e!639318 tp!304062)))

(assert (= (and b!996477 (is-ElementMatch!2756 (regOne!6024 r!15766))) b!996730))

(assert (= (and b!996477 (is-Concat!4589 (regOne!6024 r!15766))) b!996731))

(assert (= (and b!996477 (is-Star!2756 (regOne!6024 r!15766))) b!996732))

(assert (= (and b!996477 (is-Union!2756 (regOne!6024 r!15766))) b!996733))

(declare-fun b!996735 () Bool)

(declare-fun e!639319 () Bool)

(declare-fun tp!304070 () Bool)

(declare-fun tp!304068 () Bool)

(assert (=> b!996735 (= e!639319 (and tp!304070 tp!304068))))

(declare-fun b!996734 () Bool)

(assert (=> b!996734 (= e!639319 tp_is_empty!5155)))

(assert (=> b!996477 (= tp!304013 e!639319)))

(declare-fun b!996737 () Bool)

(declare-fun tp!304066 () Bool)

(declare-fun tp!304069 () Bool)

(assert (=> b!996737 (= e!639319 (and tp!304066 tp!304069))))

(declare-fun b!996736 () Bool)

(declare-fun tp!304067 () Bool)

(assert (=> b!996736 (= e!639319 tp!304067)))

(assert (= (and b!996477 (is-ElementMatch!2756 (regTwo!6024 r!15766))) b!996734))

(assert (= (and b!996477 (is-Concat!4589 (regTwo!6024 r!15766))) b!996735))

(assert (= (and b!996477 (is-Star!2756 (regTwo!6024 r!15766))) b!996736))

(assert (= (and b!996477 (is-Union!2756 (regTwo!6024 r!15766))) b!996737))

(push 1)

(assert (not b!996675))

(assert (not b!996716))

(assert (not b!996722))

(assert (not b!996732))

(assert (not b!996631))

(assert tp_is_empty!5155)

(assert (not b!996633))

(assert (not b!996737))

(assert (not bm!65913))

(assert (not d!290944))

(assert (not b!996719))

(assert (not b!996733))

(assert (not b!996714))

(assert (not bm!65923))

(assert (not b!996720))

(assert (not bm!65921))

(assert (not b!996723))

(assert (not b!996674))

(assert (not b!996702))

(assert (not b!996693))

(assert (not b!996724))

(assert (not d!290942))

(assert (not b!996679))

(assert (not b!996731))

(assert (not bm!65903))

(assert (not b!996683))

(assert (not b!996736))

(assert (not b!996729))

(assert (not b!996682))

(assert (not b!996735))

(assert (not bm!65918))

(assert (not b!996715))

(assert (not b!996678))

(assert (not bm!65920))

(assert (not b!996718))

(assert (not bm!65914))

(assert (not b!996564))

(assert (not bm!65917))

(assert (not bm!65905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

