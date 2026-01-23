; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88632 () Bool)

(assert start!88632)

(declare-fun res!457479 () Bool)

(declare-fun e!650441 () Bool)

(assert (=> start!88632 (=> (not res!457479) (not e!650441))))

(declare-datatypes ((C!6182 0))(
  ( (C!6183 (val!3339 Int)) )
))
(declare-datatypes ((Regex!2806 0))(
  ( (ElementMatch!2806 (c!168685 C!6182)) (Concat!4639 (regOne!6124 Regex!2806) (regTwo!6124 Regex!2806)) (EmptyExpr!2806) (Star!2806 (reg!3135 Regex!2806)) (EmptyLang!2806) (Union!2806 (regOne!6125 Regex!2806) (regTwo!6125 Regex!2806)) )
))
(declare-fun r!15766 () Regex!2806)

(declare-fun validRegex!1275 (Regex!2806) Bool)

(assert (=> start!88632 (= res!457479 (validRegex!1275 r!15766))))

(assert (=> start!88632 e!650441))

(declare-fun e!650440 () Bool)

(assert (=> start!88632 e!650440))

(declare-fun e!650442 () Bool)

(assert (=> start!88632 e!650442))

(declare-fun b!1018024 () Bool)

(declare-fun e!650443 () Bool)

(assert (=> b!1018024 (= e!650443 (validRegex!1275 (regTwo!6124 r!15766)))))

(declare-fun b!1018025 () Bool)

(declare-fun tp!309517 () Bool)

(assert (=> b!1018025 (= e!650440 tp!309517)))

(declare-fun b!1018026 () Bool)

(declare-fun tp!309518 () Bool)

(declare-fun tp!309513 () Bool)

(assert (=> b!1018026 (= e!650440 (and tp!309518 tp!309513))))

(declare-fun b!1018027 () Bool)

(declare-fun tp!309515 () Bool)

(declare-fun tp!309516 () Bool)

(assert (=> b!1018027 (= e!650440 (and tp!309515 tp!309516))))

(declare-fun b!1018028 () Bool)

(assert (=> b!1018028 (= e!650441 (not e!650443))))

(declare-fun res!457480 () Bool)

(assert (=> b!1018028 (=> res!457480 e!650443)))

(declare-fun lt!353859 () Bool)

(assert (=> b!1018028 (= res!457480 (or lt!353859 (not (is-Concat!4639 r!15766)) (not (is-EmptyExpr!2806 (regOne!6124 r!15766)))))))

(declare-datatypes ((List!10036 0))(
  ( (Nil!10020) (Cons!10020 (h!15421 C!6182) (t!101082 List!10036)) )
))
(declare-fun s!10566 () List!10036)

(declare-fun matchRSpec!605 (Regex!2806 List!10036) Bool)

(assert (=> b!1018028 (= lt!353859 (matchRSpec!605 r!15766 s!10566))))

(declare-fun matchR!1342 (Regex!2806 List!10036) Bool)

(assert (=> b!1018028 (= lt!353859 (matchR!1342 r!15766 s!10566))))

(declare-datatypes ((Unit!15287 0))(
  ( (Unit!15288) )
))
(declare-fun lt!353858 () Unit!15287)

(declare-fun mainMatchTheorem!605 (Regex!2806 List!10036) Unit!15287)

(assert (=> b!1018028 (= lt!353858 (mainMatchTheorem!605 r!15766 s!10566))))

(declare-fun b!1018029 () Bool)

(declare-fun tp_is_empty!5255 () Bool)

(declare-fun tp!309514 () Bool)

(assert (=> b!1018029 (= e!650442 (and tp_is_empty!5255 tp!309514))))

(declare-fun b!1018030 () Bool)

(assert (=> b!1018030 (= e!650440 tp_is_empty!5255)))

(assert (= (and start!88632 res!457479) b!1018028))

(assert (= (and b!1018028 (not res!457480)) b!1018024))

(assert (= (and start!88632 (is-ElementMatch!2806 r!15766)) b!1018030))

(assert (= (and start!88632 (is-Concat!4639 r!15766)) b!1018026))

(assert (= (and start!88632 (is-Star!2806 r!15766)) b!1018025))

(assert (= (and start!88632 (is-Union!2806 r!15766)) b!1018027))

(assert (= (and start!88632 (is-Cons!10020 s!10566)) b!1018029))

(declare-fun m!1198821 () Bool)

(assert (=> start!88632 m!1198821))

(declare-fun m!1198823 () Bool)

(assert (=> b!1018024 m!1198823))

(declare-fun m!1198825 () Bool)

(assert (=> b!1018028 m!1198825))

(declare-fun m!1198827 () Bool)

(assert (=> b!1018028 m!1198827))

(declare-fun m!1198829 () Bool)

(assert (=> b!1018028 m!1198829))

(push 1)

(assert (not b!1018029))

(assert (not start!88632))

(assert (not b!1018027))

(assert (not b!1018024))

(assert tp_is_empty!5255)

(assert (not b!1018028))

(assert (not b!1018026))

(assert (not b!1018025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1018088 () Bool)

(declare-fun e!650490 () Bool)

(declare-fun e!650487 () Bool)

(assert (=> b!1018088 (= e!650490 e!650487)))

(declare-fun c!168695 () Bool)

(assert (=> b!1018088 (= c!168695 (is-Union!2806 (regTwo!6124 r!15766)))))

(declare-fun b!1018089 () Bool)

(declare-fun res!457510 () Bool)

(declare-fun e!650486 () Bool)

(assert (=> b!1018089 (=> res!457510 e!650486)))

(assert (=> b!1018089 (= res!457510 (not (is-Concat!4639 (regTwo!6124 r!15766))))))

(assert (=> b!1018089 (= e!650487 e!650486)))

(declare-fun bm!69551 () Bool)

(declare-fun call!69557 () Bool)

(declare-fun call!69558 () Bool)

(assert (=> bm!69551 (= call!69557 call!69558)))

(declare-fun d!294121 () Bool)

(declare-fun res!457509 () Bool)

(declare-fun e!650488 () Bool)

(assert (=> d!294121 (=> res!457509 e!650488)))

(assert (=> d!294121 (= res!457509 (is-ElementMatch!2806 (regTwo!6124 r!15766)))))

(assert (=> d!294121 (= (validRegex!1275 (regTwo!6124 r!15766)) e!650488)))

(declare-fun b!1018090 () Bool)

(declare-fun e!650484 () Bool)

(assert (=> b!1018090 (= e!650484 call!69558)))

(declare-fun c!168696 () Bool)

(declare-fun bm!69552 () Bool)

(assert (=> bm!69552 (= call!69558 (validRegex!1275 (ite c!168696 (reg!3135 (regTwo!6124 r!15766)) (ite c!168695 (regOne!6125 (regTwo!6124 r!15766)) (regOne!6124 (regTwo!6124 r!15766))))))))

(declare-fun b!1018091 () Bool)

(declare-fun e!650485 () Bool)

(assert (=> b!1018091 (= e!650486 e!650485)))

(declare-fun res!457511 () Bool)

(assert (=> b!1018091 (=> (not res!457511) (not e!650485))))

(assert (=> b!1018091 (= res!457511 call!69557)))

(declare-fun b!1018092 () Bool)

(declare-fun e!650489 () Bool)

(declare-fun call!69556 () Bool)

(assert (=> b!1018092 (= e!650489 call!69556)))

(declare-fun b!1018093 () Bool)

(assert (=> b!1018093 (= e!650490 e!650484)))

(declare-fun res!457507 () Bool)

(declare-fun nullable!914 (Regex!2806) Bool)

(assert (=> b!1018093 (= res!457507 (not (nullable!914 (reg!3135 (regTwo!6124 r!15766)))))))

(assert (=> b!1018093 (=> (not res!457507) (not e!650484))))

(declare-fun b!1018094 () Bool)

(assert (=> b!1018094 (= e!650485 call!69556)))

(declare-fun bm!69553 () Bool)

(assert (=> bm!69553 (= call!69556 (validRegex!1275 (ite c!168695 (regTwo!6125 (regTwo!6124 r!15766)) (regTwo!6124 (regTwo!6124 r!15766)))))))

(declare-fun b!1018095 () Bool)

(assert (=> b!1018095 (= e!650488 e!650490)))

(assert (=> b!1018095 (= c!168696 (is-Star!2806 (regTwo!6124 r!15766)))))

(declare-fun b!1018096 () Bool)

(declare-fun res!457508 () Bool)

(assert (=> b!1018096 (=> (not res!457508) (not e!650489))))

(assert (=> b!1018096 (= res!457508 call!69557)))

(assert (=> b!1018096 (= e!650487 e!650489)))

(assert (= (and d!294121 (not res!457509)) b!1018095))

(assert (= (and b!1018095 c!168696) b!1018093))

(assert (= (and b!1018095 (not c!168696)) b!1018088))

(assert (= (and b!1018093 res!457507) b!1018090))

(assert (= (and b!1018088 c!168695) b!1018096))

(assert (= (and b!1018088 (not c!168695)) b!1018089))

(assert (= (and b!1018096 res!457508) b!1018092))

(assert (= (and b!1018089 (not res!457510)) b!1018091))

(assert (= (and b!1018091 res!457511) b!1018094))

(assert (= (or b!1018092 b!1018094) bm!69553))

(assert (= (or b!1018096 b!1018091) bm!69551))

(assert (= (or b!1018090 bm!69551) bm!69552))

(declare-fun m!1198841 () Bool)

(assert (=> bm!69552 m!1198841))

(declare-fun m!1198843 () Bool)

(assert (=> b!1018093 m!1198843))

(declare-fun m!1198845 () Bool)

(assert (=> bm!69553 m!1198845))

(assert (=> b!1018024 d!294121))

(declare-fun b!1018097 () Bool)

(declare-fun e!650497 () Bool)

(declare-fun e!650494 () Bool)

(assert (=> b!1018097 (= e!650497 e!650494)))

(declare-fun c!168697 () Bool)

(assert (=> b!1018097 (= c!168697 (is-Union!2806 r!15766))))

(declare-fun b!1018098 () Bool)

(declare-fun res!457515 () Bool)

(declare-fun e!650493 () Bool)

(assert (=> b!1018098 (=> res!457515 e!650493)))

(assert (=> b!1018098 (= res!457515 (not (is-Concat!4639 r!15766)))))

(assert (=> b!1018098 (= e!650494 e!650493)))

(declare-fun bm!69556 () Bool)

(declare-fun call!69562 () Bool)

(declare-fun call!69563 () Bool)

(assert (=> bm!69556 (= call!69562 call!69563)))

(declare-fun d!294123 () Bool)

(declare-fun res!457514 () Bool)

(declare-fun e!650495 () Bool)

(assert (=> d!294123 (=> res!457514 e!650495)))

(assert (=> d!294123 (= res!457514 (is-ElementMatch!2806 r!15766))))

(assert (=> d!294123 (= (validRegex!1275 r!15766) e!650495)))

(declare-fun b!1018099 () Bool)

(declare-fun e!650491 () Bool)

(assert (=> b!1018099 (= e!650491 call!69563)))

(declare-fun c!168698 () Bool)

(declare-fun bm!69557 () Bool)

(assert (=> bm!69557 (= call!69563 (validRegex!1275 (ite c!168698 (reg!3135 r!15766) (ite c!168697 (regOne!6125 r!15766) (regOne!6124 r!15766)))))))

(declare-fun b!1018100 () Bool)

(declare-fun e!650492 () Bool)

(assert (=> b!1018100 (= e!650493 e!650492)))

(declare-fun res!457516 () Bool)

(assert (=> b!1018100 (=> (not res!457516) (not e!650492))))

(assert (=> b!1018100 (= res!457516 call!69562)))

(declare-fun b!1018101 () Bool)

(declare-fun e!650496 () Bool)

(declare-fun call!69561 () Bool)

(assert (=> b!1018101 (= e!650496 call!69561)))

(declare-fun b!1018102 () Bool)

(assert (=> b!1018102 (= e!650497 e!650491)))

(declare-fun res!457512 () Bool)

(assert (=> b!1018102 (= res!457512 (not (nullable!914 (reg!3135 r!15766))))))

(assert (=> b!1018102 (=> (not res!457512) (not e!650491))))

(declare-fun b!1018103 () Bool)

(assert (=> b!1018103 (= e!650492 call!69561)))

(declare-fun bm!69558 () Bool)

(assert (=> bm!69558 (= call!69561 (validRegex!1275 (ite c!168697 (regTwo!6125 r!15766) (regTwo!6124 r!15766))))))

(declare-fun b!1018104 () Bool)

(assert (=> b!1018104 (= e!650495 e!650497)))

(assert (=> b!1018104 (= c!168698 (is-Star!2806 r!15766))))

(declare-fun b!1018105 () Bool)

(declare-fun res!457513 () Bool)

(assert (=> b!1018105 (=> (not res!457513) (not e!650496))))

(assert (=> b!1018105 (= res!457513 call!69562)))

(assert (=> b!1018105 (= e!650494 e!650496)))

(assert (= (and d!294123 (not res!457514)) b!1018104))

(assert (= (and b!1018104 c!168698) b!1018102))

(assert (= (and b!1018104 (not c!168698)) b!1018097))

(assert (= (and b!1018102 res!457512) b!1018099))

(assert (= (and b!1018097 c!168697) b!1018105))

(assert (= (and b!1018097 (not c!168697)) b!1018098))

(assert (= (and b!1018105 res!457513) b!1018101))

(assert (= (and b!1018098 (not res!457515)) b!1018100))

(assert (= (and b!1018100 res!457516) b!1018103))

(assert (= (or b!1018101 b!1018103) bm!69558))

(assert (= (or b!1018105 b!1018100) bm!69556))

(assert (= (or b!1018099 bm!69556) bm!69557))

(declare-fun m!1198847 () Bool)

(assert (=> bm!69557 m!1198847))

(declare-fun m!1198849 () Bool)

(assert (=> b!1018102 m!1198849))

(declare-fun m!1198851 () Bool)

(assert (=> bm!69558 m!1198851))

(assert (=> start!88632 d!294123))

(declare-fun b!1018180 () Bool)

(assert (=> b!1018180 true))

(assert (=> b!1018180 true))

(declare-fun bs!246522 () Bool)

(declare-fun b!1018182 () Bool)

(assert (= bs!246522 (and b!1018182 b!1018180)))

(declare-fun lambda!36066 () Int)

(declare-fun lambda!36065 () Int)

(assert (=> bs!246522 (not (= lambda!36066 lambda!36065))))

(assert (=> b!1018182 true))

(assert (=> b!1018182 true))

(declare-fun b!1018178 () Bool)

(declare-fun e!650547 () Bool)

(declare-fun e!650550 () Bool)

(assert (=> b!1018178 (= e!650547 e!650550)))

(declare-fun res!457549 () Bool)

(assert (=> b!1018178 (= res!457549 (not (is-EmptyLang!2806 r!15766)))))

(assert (=> b!1018178 (=> (not res!457549) (not e!650550))))

(declare-fun b!1018179 () Bool)

(declare-fun e!650545 () Bool)

(assert (=> b!1018179 (= e!650545 (matchRSpec!605 (regTwo!6125 r!15766) s!10566))))

(declare-fun e!650546 () Bool)

(declare-fun call!69579 () Bool)

(assert (=> b!1018180 (= e!650546 call!69579)))

(declare-fun b!1018181 () Bool)

(declare-fun res!457551 () Bool)

(assert (=> b!1018181 (=> res!457551 e!650546)))

(declare-fun call!69578 () Bool)

(assert (=> b!1018181 (= res!457551 call!69578)))

(declare-fun e!650544 () Bool)

(assert (=> b!1018181 (= e!650544 e!650546)))

(assert (=> b!1018182 (= e!650544 call!69579)))

(declare-fun b!1018183 () Bool)

(declare-fun e!650548 () Bool)

(assert (=> b!1018183 (= e!650548 e!650545)))

(declare-fun res!457550 () Bool)

(assert (=> b!1018183 (= res!457550 (matchRSpec!605 (regOne!6125 r!15766) s!10566))))

(assert (=> b!1018183 (=> res!457550 e!650545)))

(declare-fun d!294125 () Bool)

(declare-fun c!168721 () Bool)

(assert (=> d!294125 (= c!168721 (is-EmptyExpr!2806 r!15766))))

(assert (=> d!294125 (= (matchRSpec!605 r!15766 s!10566) e!650547)))

(declare-fun b!1018184 () Bool)

(assert (=> b!1018184 (= e!650548 e!650544)))

(declare-fun c!168720 () Bool)

(assert (=> b!1018184 (= c!168720 (is-Star!2806 r!15766))))

(declare-fun b!1018185 () Bool)

(assert (=> b!1018185 (= e!650547 call!69578)))

(declare-fun b!1018186 () Bool)

(declare-fun e!650549 () Bool)

(assert (=> b!1018186 (= e!650549 (= s!10566 (Cons!10020 (c!168685 r!15766) Nil!10020)))))

(declare-fun b!1018187 () Bool)

(declare-fun c!168722 () Bool)

(assert (=> b!1018187 (= c!168722 (is-ElementMatch!2806 r!15766))))

(assert (=> b!1018187 (= e!650550 e!650549)))

(declare-fun b!1018188 () Bool)

(declare-fun c!168719 () Bool)

(assert (=> b!1018188 (= c!168719 (is-Union!2806 r!15766))))

(assert (=> b!1018188 (= e!650549 e!650548)))

(declare-fun bm!69573 () Bool)

(declare-fun isEmpty!6369 (List!10036) Bool)

(assert (=> bm!69573 (= call!69578 (isEmpty!6369 s!10566))))

(declare-fun bm!69574 () Bool)

(declare-fun Exists!536 (Int) Bool)

(assert (=> bm!69574 (= call!69579 (Exists!536 (ite c!168720 lambda!36065 lambda!36066)))))

(assert (= (and d!294125 c!168721) b!1018185))

(assert (= (and d!294125 (not c!168721)) b!1018178))

(assert (= (and b!1018178 res!457549) b!1018187))

(assert (= (and b!1018187 c!168722) b!1018186))

(assert (= (and b!1018187 (not c!168722)) b!1018188))

(assert (= (and b!1018188 c!168719) b!1018183))

(assert (= (and b!1018188 (not c!168719)) b!1018184))

(assert (= (and b!1018183 (not res!457550)) b!1018179))

(assert (= (and b!1018184 c!168720) b!1018181))

(assert (= (and b!1018184 (not c!168720)) b!1018182))

(assert (= (and b!1018181 (not res!457551)) b!1018180))

(assert (= (or b!1018180 b!1018182) bm!69574))

(assert (= (or b!1018185 b!1018181) bm!69573))

(declare-fun m!1198865 () Bool)

(assert (=> b!1018179 m!1198865))

(declare-fun m!1198867 () Bool)

(assert (=> b!1018183 m!1198867))

(declare-fun m!1198869 () Bool)

(assert (=> bm!69573 m!1198869))

(declare-fun m!1198871 () Bool)

(assert (=> bm!69574 m!1198871))

(assert (=> b!1018028 d!294125))

(declare-fun b!1018221 () Bool)

(declare-fun e!650569 () Bool)

(declare-fun lt!353868 () Bool)

(assert (=> b!1018221 (= e!650569 (not lt!353868))))

(declare-fun b!1018222 () Bool)

(declare-fun res!457574 () Bool)

(declare-fun e!650570 () Bool)

(assert (=> b!1018222 (=> res!457574 e!650570)))

(assert (=> b!1018222 (= res!457574 (not (is-ElementMatch!2806 r!15766)))))

(assert (=> b!1018222 (= e!650569 e!650570)))

(declare-fun b!1018223 () Bool)

(declare-fun e!650571 () Bool)

(assert (=> b!1018223 (= e!650571 e!650569)))

(declare-fun c!168731 () Bool)

(assert (=> b!1018223 (= c!168731 (is-EmptyLang!2806 r!15766))))

(declare-fun b!1018224 () Bool)

(declare-fun res!457573 () Bool)

(declare-fun e!650566 () Bool)

(assert (=> b!1018224 (=> (not res!457573) (not e!650566))))

(declare-fun tail!1434 (List!10036) List!10036)

(assert (=> b!1018224 (= res!457573 (isEmpty!6369 (tail!1434 s!10566)))))

(declare-fun b!1018225 () Bool)

(declare-fun call!69582 () Bool)

(assert (=> b!1018225 (= e!650571 (= lt!353868 call!69582))))

(declare-fun d!294131 () Bool)

(assert (=> d!294131 e!650571))

(declare-fun c!168730 () Bool)

(assert (=> d!294131 (= c!168730 (is-EmptyExpr!2806 r!15766))))

(declare-fun e!650567 () Bool)

(assert (=> d!294131 (= lt!353868 e!650567)))

(declare-fun c!168729 () Bool)

(assert (=> d!294131 (= c!168729 (isEmpty!6369 s!10566))))

(assert (=> d!294131 (validRegex!1275 r!15766)))

(assert (=> d!294131 (= (matchR!1342 r!15766 s!10566) lt!353868)))

(declare-fun b!1018226 () Bool)

(declare-fun res!457570 () Bool)

(assert (=> b!1018226 (=> res!457570 e!650570)))

(assert (=> b!1018226 (= res!457570 e!650566)))

(declare-fun res!457571 () Bool)

(assert (=> b!1018226 (=> (not res!457571) (not e!650566))))

(assert (=> b!1018226 (= res!457571 lt!353868)))

(declare-fun b!1018227 () Bool)

(declare-fun e!650565 () Bool)

(declare-fun e!650568 () Bool)

(assert (=> b!1018227 (= e!650565 e!650568)))

(declare-fun res!457572 () Bool)

(assert (=> b!1018227 (=> res!457572 e!650568)))

(assert (=> b!1018227 (= res!457572 call!69582)))

(declare-fun b!1018228 () Bool)

(declare-fun res!457569 () Bool)

(assert (=> b!1018228 (=> (not res!457569) (not e!650566))))

(assert (=> b!1018228 (= res!457569 (not call!69582))))

(declare-fun b!1018229 () Bool)

(declare-fun head!1872 (List!10036) C!6182)

(assert (=> b!1018229 (= e!650566 (= (head!1872 s!10566) (c!168685 r!15766)))))

(declare-fun b!1018230 () Bool)

(declare-fun res!457575 () Bool)

(assert (=> b!1018230 (=> res!457575 e!650568)))

(assert (=> b!1018230 (= res!457575 (not (isEmpty!6369 (tail!1434 s!10566))))))

(declare-fun b!1018231 () Bool)

(assert (=> b!1018231 (= e!650568 (not (= (head!1872 s!10566) (c!168685 r!15766))))))

(declare-fun b!1018232 () Bool)

(assert (=> b!1018232 (= e!650567 (nullable!914 r!15766))))

(declare-fun bm!69577 () Bool)

(assert (=> bm!69577 (= call!69582 (isEmpty!6369 s!10566))))

(declare-fun b!1018233 () Bool)

(assert (=> b!1018233 (= e!650570 e!650565)))

(declare-fun res!457568 () Bool)

(assert (=> b!1018233 (=> (not res!457568) (not e!650565))))

(assert (=> b!1018233 (= res!457568 (not lt!353868))))

(declare-fun b!1018234 () Bool)

(declare-fun derivativeStep!718 (Regex!2806 C!6182) Regex!2806)

(assert (=> b!1018234 (= e!650567 (matchR!1342 (derivativeStep!718 r!15766 (head!1872 s!10566)) (tail!1434 s!10566)))))

(assert (= (and d!294131 c!168729) b!1018232))

(assert (= (and d!294131 (not c!168729)) b!1018234))

(assert (= (and d!294131 c!168730) b!1018225))

(assert (= (and d!294131 (not c!168730)) b!1018223))

(assert (= (and b!1018223 c!168731) b!1018221))

(assert (= (and b!1018223 (not c!168731)) b!1018222))

(assert (= (and b!1018222 (not res!457574)) b!1018226))

(assert (= (and b!1018226 res!457571) b!1018228))

(assert (= (and b!1018228 res!457569) b!1018224))

(assert (= (and b!1018224 res!457573) b!1018229))

(assert (= (and b!1018226 (not res!457570)) b!1018233))

(assert (= (and b!1018233 res!457568) b!1018227))

(assert (= (and b!1018227 (not res!457572)) b!1018230))

(assert (= (and b!1018230 (not res!457575)) b!1018231))

(assert (= (or b!1018225 b!1018227 b!1018228) bm!69577))

(declare-fun m!1198873 () Bool)

(assert (=> b!1018234 m!1198873))

(assert (=> b!1018234 m!1198873))

(declare-fun m!1198875 () Bool)

(assert (=> b!1018234 m!1198875))

(declare-fun m!1198877 () Bool)

(assert (=> b!1018234 m!1198877))

(assert (=> b!1018234 m!1198875))

(assert (=> b!1018234 m!1198877))

(declare-fun m!1198879 () Bool)

(assert (=> b!1018234 m!1198879))

(assert (=> b!1018230 m!1198877))

(assert (=> b!1018230 m!1198877))

(declare-fun m!1198881 () Bool)

(assert (=> b!1018230 m!1198881))

(assert (=> d!294131 m!1198869))

(assert (=> d!294131 m!1198821))

(assert (=> bm!69577 m!1198869))

(declare-fun m!1198883 () Bool)

(assert (=> b!1018232 m!1198883))

(assert (=> b!1018231 m!1198873))

(assert (=> b!1018229 m!1198873))

(assert (=> b!1018224 m!1198877))

(assert (=> b!1018224 m!1198877))

(assert (=> b!1018224 m!1198881))

(assert (=> b!1018028 d!294131))

(declare-fun d!294133 () Bool)

(assert (=> d!294133 (= (matchR!1342 r!15766 s!10566) (matchRSpec!605 r!15766 s!10566))))

(declare-fun lt!353871 () Unit!15287)

(declare-fun choose!6430 (Regex!2806 List!10036) Unit!15287)

(assert (=> d!294133 (= lt!353871 (choose!6430 r!15766 s!10566))))

(assert (=> d!294133 (validRegex!1275 r!15766)))

(assert (=> d!294133 (= (mainMatchTheorem!605 r!15766 s!10566) lt!353871)))

(declare-fun bs!246523 () Bool)

(assert (= bs!246523 d!294133))

(assert (=> bs!246523 m!1198827))

(assert (=> bs!246523 m!1198825))

(declare-fun m!1198885 () Bool)

(assert (=> bs!246523 m!1198885))

(assert (=> bs!246523 m!1198821))

(assert (=> b!1018028 d!294133))

(declare-fun b!1018239 () Bool)

(declare-fun e!650574 () Bool)

(declare-fun tp!309539 () Bool)

(assert (=> b!1018239 (= e!650574 (and tp_is_empty!5255 tp!309539))))

(assert (=> b!1018029 (= tp!309514 e!650574)))

(assert (= (and b!1018029 (is-Cons!10020 (t!101082 s!10566))) b!1018239))

(declare-fun b!1018252 () Bool)

(declare-fun e!650577 () Bool)

(declare-fun tp!309550 () Bool)

(assert (=> b!1018252 (= e!650577 tp!309550)))

(assert (=> b!1018025 (= tp!309517 e!650577)))

(declare-fun b!1018251 () Bool)

(declare-fun tp!309552 () Bool)

(declare-fun tp!309554 () Bool)

(assert (=> b!1018251 (= e!650577 (and tp!309552 tp!309554))))

(declare-fun b!1018253 () Bool)

(declare-fun tp!309551 () Bool)

(declare-fun tp!309553 () Bool)

(assert (=> b!1018253 (= e!650577 (and tp!309551 tp!309553))))

(declare-fun b!1018250 () Bool)

(assert (=> b!1018250 (= e!650577 tp_is_empty!5255)))

(assert (= (and b!1018025 (is-ElementMatch!2806 (reg!3135 r!15766))) b!1018250))

(assert (= (and b!1018025 (is-Concat!4639 (reg!3135 r!15766))) b!1018251))

(assert (= (and b!1018025 (is-Star!2806 (reg!3135 r!15766))) b!1018252))

(assert (= (and b!1018025 (is-Union!2806 (reg!3135 r!15766))) b!1018253))

(declare-fun b!1018256 () Bool)

(declare-fun e!650578 () Bool)

(declare-fun tp!309555 () Bool)

(assert (=> b!1018256 (= e!650578 tp!309555)))

(assert (=> b!1018026 (= tp!309518 e!650578)))

(declare-fun b!1018255 () Bool)

(declare-fun tp!309557 () Bool)

(declare-fun tp!309559 () Bool)

(assert (=> b!1018255 (= e!650578 (and tp!309557 tp!309559))))

(declare-fun b!1018257 () Bool)

(declare-fun tp!309556 () Bool)

(declare-fun tp!309558 () Bool)

(assert (=> b!1018257 (= e!650578 (and tp!309556 tp!309558))))

(declare-fun b!1018254 () Bool)

(assert (=> b!1018254 (= e!650578 tp_is_empty!5255)))

(assert (= (and b!1018026 (is-ElementMatch!2806 (regOne!6124 r!15766))) b!1018254))

(assert (= (and b!1018026 (is-Concat!4639 (regOne!6124 r!15766))) b!1018255))

(assert (= (and b!1018026 (is-Star!2806 (regOne!6124 r!15766))) b!1018256))

(assert (= (and b!1018026 (is-Union!2806 (regOne!6124 r!15766))) b!1018257))

(declare-fun b!1018260 () Bool)

(declare-fun e!650579 () Bool)

(declare-fun tp!309560 () Bool)

(assert (=> b!1018260 (= e!650579 tp!309560)))

(assert (=> b!1018026 (= tp!309513 e!650579)))

(declare-fun b!1018259 () Bool)

(declare-fun tp!309562 () Bool)

(declare-fun tp!309564 () Bool)

(assert (=> b!1018259 (= e!650579 (and tp!309562 tp!309564))))

(declare-fun b!1018261 () Bool)

(declare-fun tp!309561 () Bool)

(declare-fun tp!309563 () Bool)

(assert (=> b!1018261 (= e!650579 (and tp!309561 tp!309563))))

(declare-fun b!1018258 () Bool)

(assert (=> b!1018258 (= e!650579 tp_is_empty!5255)))

(assert (= (and b!1018026 (is-ElementMatch!2806 (regTwo!6124 r!15766))) b!1018258))

(assert (= (and b!1018026 (is-Concat!4639 (regTwo!6124 r!15766))) b!1018259))

(assert (= (and b!1018026 (is-Star!2806 (regTwo!6124 r!15766))) b!1018260))

(assert (= (and b!1018026 (is-Union!2806 (regTwo!6124 r!15766))) b!1018261))

(declare-fun b!1018264 () Bool)

(declare-fun e!650580 () Bool)

(declare-fun tp!309565 () Bool)

(assert (=> b!1018264 (= e!650580 tp!309565)))

(assert (=> b!1018027 (= tp!309515 e!650580)))

(declare-fun b!1018263 () Bool)

(declare-fun tp!309567 () Bool)

(declare-fun tp!309569 () Bool)

(assert (=> b!1018263 (= e!650580 (and tp!309567 tp!309569))))

(declare-fun b!1018265 () Bool)

(declare-fun tp!309566 () Bool)

(declare-fun tp!309568 () Bool)

(assert (=> b!1018265 (= e!650580 (and tp!309566 tp!309568))))

(declare-fun b!1018262 () Bool)

(assert (=> b!1018262 (= e!650580 tp_is_empty!5255)))

(assert (= (and b!1018027 (is-ElementMatch!2806 (regOne!6125 r!15766))) b!1018262))

(assert (= (and b!1018027 (is-Concat!4639 (regOne!6125 r!15766))) b!1018263))

(assert (= (and b!1018027 (is-Star!2806 (regOne!6125 r!15766))) b!1018264))

(assert (= (and b!1018027 (is-Union!2806 (regOne!6125 r!15766))) b!1018265))

(declare-fun b!1018268 () Bool)

(declare-fun e!650581 () Bool)

(declare-fun tp!309570 () Bool)

(assert (=> b!1018268 (= e!650581 tp!309570)))

(assert (=> b!1018027 (= tp!309516 e!650581)))

(declare-fun b!1018267 () Bool)

(declare-fun tp!309572 () Bool)

(declare-fun tp!309574 () Bool)

(assert (=> b!1018267 (= e!650581 (and tp!309572 tp!309574))))

(declare-fun b!1018269 () Bool)

(declare-fun tp!309571 () Bool)

(declare-fun tp!309573 () Bool)

(assert (=> b!1018269 (= e!650581 (and tp!309571 tp!309573))))

(declare-fun b!1018266 () Bool)

(assert (=> b!1018266 (= e!650581 tp_is_empty!5255)))

(assert (= (and b!1018027 (is-ElementMatch!2806 (regTwo!6125 r!15766))) b!1018266))

(assert (= (and b!1018027 (is-Concat!4639 (regTwo!6125 r!15766))) b!1018267))

(assert (= (and b!1018027 (is-Star!2806 (regTwo!6125 r!15766))) b!1018268))

(assert (= (and b!1018027 (is-Union!2806 (regTwo!6125 r!15766))) b!1018269))

(push 1)

(assert (not b!1018256))

(assert (not b!1018230))

(assert (not b!1018232))

(assert (not d!294131))

(assert (not bm!69573))

(assert (not bm!69574))

(assert (not b!1018179))

(assert (not d!294133))

(assert (not b!1018224))

(assert (not b!1018231))

(assert tp_is_empty!5255)

(assert (not b!1018263))

(assert (not b!1018259))

(assert (not bm!69558))

(assert (not bm!69553))

(assert (not b!1018260))

(assert (not b!1018102))

(assert (not bm!69557))

(assert (not b!1018255))

(assert (not b!1018253))

(assert (not b!1018252))

(assert (not bm!69552))

(assert (not b!1018261))

(assert (not bm!69577))

(assert (not b!1018264))

(assert (not b!1018093))

(assert (not b!1018268))

(assert (not b!1018234))

(assert (not b!1018251))

(assert (not b!1018229))

(assert (not b!1018183))

(assert (not b!1018265))

(assert (not b!1018267))

(assert (not b!1018239))

(assert (not b!1018257))

(assert (not b!1018269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

