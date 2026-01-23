; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83154 () Bool)

(assert start!83154)

(declare-fun res!421691 () Bool)

(declare-fun e!603239 () Bool)

(assert (=> start!83154 (=> (not res!421691) (not e!603239))))

(declare-datatypes ((C!5588 0))(
  ( (C!5589 (val!3042 Int)) )
))
(declare-datatypes ((Regex!2509 0))(
  ( (ElementMatch!2509 (c!150600 C!5588)) (Concat!4342 (regOne!5530 Regex!2509) (regTwo!5530 Regex!2509)) (EmptyExpr!2509) (Star!2509 (reg!2838 Regex!2509)) (EmptyLang!2509) (Union!2509 (regOne!5531 Regex!2509) (regTwo!5531 Regex!2509)) )
))
(declare-fun r!15766 () Regex!2509)

(declare-fun validRegex!978 (Regex!2509) Bool)

(assert (=> start!83154 (= res!421691 (validRegex!978 r!15766))))

(assert (=> start!83154 e!603239))

(declare-fun e!603238 () Bool)

(assert (=> start!83154 e!603238))

(declare-fun e!603241 () Bool)

(assert (=> start!83154 e!603241))

(declare-fun b!927581 () Bool)

(declare-fun tp!288236 () Bool)

(declare-fun tp!288235 () Bool)

(assert (=> b!927581 (= e!603238 (and tp!288236 tp!288235))))

(declare-fun b!927582 () Bool)

(declare-fun tp_is_empty!4661 () Bool)

(declare-fun tp!288233 () Bool)

(assert (=> b!927582 (= e!603241 (and tp_is_empty!4661 tp!288233))))

(declare-fun b!927583 () Bool)

(declare-fun e!603240 () Bool)

(assert (=> b!927583 (= e!603239 (not e!603240))))

(declare-fun res!421692 () Bool)

(assert (=> b!927583 (=> res!421692 e!603240)))

(declare-fun lt!339850 () Bool)

(get-info :version)

(assert (=> b!927583 (= res!421692 (or lt!339850 (and ((_ is Concat!4342) r!15766) ((_ is EmptyExpr!2509) (regOne!5530 r!15766))) (and ((_ is Concat!4342) r!15766) ((_ is EmptyExpr!2509) (regTwo!5530 r!15766))) ((_ is Concat!4342) r!15766) (not ((_ is Union!2509) r!15766))))))

(declare-datatypes ((List!9739 0))(
  ( (Nil!9723) (Cons!9723 (h!15124 C!5588) (t!100785 List!9739)) )
))
(declare-fun s!10566 () List!9739)

(declare-fun matchRSpec!310 (Regex!2509 List!9739) Bool)

(assert (=> b!927583 (= lt!339850 (matchRSpec!310 r!15766 s!10566))))

(declare-fun matchR!1047 (Regex!2509 List!9739) Bool)

(assert (=> b!927583 (= lt!339850 (matchR!1047 r!15766 s!10566))))

(declare-datatypes ((Unit!14637 0))(
  ( (Unit!14638) )
))
(declare-fun lt!339851 () Unit!14637)

(declare-fun mainMatchTheorem!310 (Regex!2509 List!9739) Unit!14637)

(assert (=> b!927583 (= lt!339851 (mainMatchTheorem!310 r!15766 s!10566))))

(declare-fun b!927584 () Bool)

(declare-fun tp!288231 () Bool)

(assert (=> b!927584 (= e!603238 tp!288231)))

(declare-fun b!927585 () Bool)

(assert (=> b!927585 (= e!603238 tp_is_empty!4661)))

(declare-fun b!927586 () Bool)

(declare-fun tp!288232 () Bool)

(declare-fun tp!288234 () Bool)

(assert (=> b!927586 (= e!603238 (and tp!288232 tp!288234))))

(declare-fun b!927587 () Bool)

(declare-fun removeUselessConcat!184 (Regex!2509) Regex!2509)

(assert (=> b!927587 (= e!603240 (validRegex!978 (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))))))

(assert (= (and start!83154 res!421691) b!927583))

(assert (= (and b!927583 (not res!421692)) b!927587))

(assert (= (and start!83154 ((_ is ElementMatch!2509) r!15766)) b!927585))

(assert (= (and start!83154 ((_ is Concat!4342) r!15766)) b!927581))

(assert (= (and start!83154 ((_ is Star!2509) r!15766)) b!927584))

(assert (= (and start!83154 ((_ is Union!2509) r!15766)) b!927586))

(assert (= (and start!83154 ((_ is Cons!9723) s!10566)) b!927582))

(declare-fun m!1151923 () Bool)

(assert (=> start!83154 m!1151923))

(declare-fun m!1151925 () Bool)

(assert (=> b!927583 m!1151925))

(declare-fun m!1151927 () Bool)

(assert (=> b!927583 m!1151927))

(declare-fun m!1151929 () Bool)

(assert (=> b!927583 m!1151929))

(declare-fun m!1151931 () Bool)

(assert (=> b!927587 m!1151931))

(declare-fun m!1151933 () Bool)

(assert (=> b!927587 m!1151933))

(declare-fun m!1151935 () Bool)

(assert (=> b!927587 m!1151935))

(check-sat tp_is_empty!4661 (not b!927583) (not b!927587) (not b!927586) (not start!83154) (not b!927581) (not b!927582) (not b!927584))
(check-sat)
(get-model)

(declare-fun b!927624 () Bool)

(declare-fun e!603271 () Bool)

(declare-fun e!603275 () Bool)

(assert (=> b!927624 (= e!603271 e!603275)))

(declare-fun res!421716 () Bool)

(assert (=> b!927624 (=> (not res!421716) (not e!603275))))

(declare-fun call!56840 () Bool)

(assert (=> b!927624 (= res!421716 call!56840)))

(declare-fun bm!56833 () Bool)

(declare-fun call!56838 () Bool)

(assert (=> bm!56833 (= call!56840 call!56838)))

(declare-fun c!150609 () Bool)

(declare-fun c!150610 () Bool)

(declare-fun bm!56834 () Bool)

(assert (=> bm!56834 (= call!56838 (validRegex!978 (ite c!150609 (reg!2838 r!15766) (ite c!150610 (regOne!5531 r!15766) (regOne!5530 r!15766)))))))

(declare-fun b!927625 () Bool)

(declare-fun e!603270 () Bool)

(declare-fun call!56839 () Bool)

(assert (=> b!927625 (= e!603270 call!56839)))

(declare-fun d!281182 () Bool)

(declare-fun res!421713 () Bool)

(declare-fun e!603274 () Bool)

(assert (=> d!281182 (=> res!421713 e!603274)))

(assert (=> d!281182 (= res!421713 ((_ is ElementMatch!2509) r!15766))))

(assert (=> d!281182 (= (validRegex!978 r!15766) e!603274)))

(declare-fun b!927626 () Bool)

(declare-fun res!421715 () Bool)

(assert (=> b!927626 (=> (not res!421715) (not e!603270))))

(assert (=> b!927626 (= res!421715 call!56840)))

(declare-fun e!603273 () Bool)

(assert (=> b!927626 (= e!603273 e!603270)))

(declare-fun b!927627 () Bool)

(declare-fun e!603276 () Bool)

(assert (=> b!927627 (= e!603274 e!603276)))

(assert (=> b!927627 (= c!150609 ((_ is Star!2509) r!15766))))

(declare-fun bm!56835 () Bool)

(assert (=> bm!56835 (= call!56839 (validRegex!978 (ite c!150610 (regTwo!5531 r!15766) (regTwo!5530 r!15766))))))

(declare-fun b!927628 () Bool)

(assert (=> b!927628 (= e!603276 e!603273)))

(assert (=> b!927628 (= c!150610 ((_ is Union!2509) r!15766))))

(declare-fun b!927629 () Bool)

(declare-fun e!603272 () Bool)

(assert (=> b!927629 (= e!603276 e!603272)))

(declare-fun res!421717 () Bool)

(declare-fun nullable!709 (Regex!2509) Bool)

(assert (=> b!927629 (= res!421717 (not (nullable!709 (reg!2838 r!15766))))))

(assert (=> b!927629 (=> (not res!421717) (not e!603272))))

(declare-fun b!927630 () Bool)

(declare-fun res!421714 () Bool)

(assert (=> b!927630 (=> res!421714 e!603271)))

(assert (=> b!927630 (= res!421714 (not ((_ is Concat!4342) r!15766)))))

(assert (=> b!927630 (= e!603273 e!603271)))

(declare-fun b!927631 () Bool)

(assert (=> b!927631 (= e!603272 call!56838)))

(declare-fun b!927632 () Bool)

(assert (=> b!927632 (= e!603275 call!56839)))

(assert (= (and d!281182 (not res!421713)) b!927627))

(assert (= (and b!927627 c!150609) b!927629))

(assert (= (and b!927627 (not c!150609)) b!927628))

(assert (= (and b!927629 res!421717) b!927631))

(assert (= (and b!927628 c!150610) b!927626))

(assert (= (and b!927628 (not c!150610)) b!927630))

(assert (= (and b!927626 res!421715) b!927625))

(assert (= (and b!927630 (not res!421714)) b!927624))

(assert (= (and b!927624 res!421716) b!927632))

(assert (= (or b!927625 b!927632) bm!56835))

(assert (= (or b!927626 b!927624) bm!56833))

(assert (= (or b!927631 bm!56833) bm!56834))

(declare-fun m!1151937 () Bool)

(assert (=> bm!56834 m!1151937))

(declare-fun m!1151939 () Bool)

(assert (=> bm!56835 m!1151939))

(declare-fun m!1151941 () Bool)

(assert (=> b!927629 m!1151941))

(assert (=> start!83154 d!281182))

(declare-fun b!927642 () Bool)

(declare-fun e!603285 () Bool)

(declare-fun e!603289 () Bool)

(assert (=> b!927642 (= e!603285 e!603289)))

(declare-fun res!421726 () Bool)

(assert (=> b!927642 (=> (not res!421726) (not e!603289))))

(declare-fun call!56846 () Bool)

(assert (=> b!927642 (= res!421726 call!56846)))

(declare-fun bm!56839 () Bool)

(declare-fun call!56844 () Bool)

(assert (=> bm!56839 (= call!56846 call!56844)))

(declare-fun c!150614 () Bool)

(declare-fun c!150613 () Bool)

(declare-fun bm!56840 () Bool)

(assert (=> bm!56840 (= call!56844 (validRegex!978 (ite c!150613 (reg!2838 (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))) (ite c!150614 (regOne!5531 (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))) (regOne!5530 (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766))))))))))

(declare-fun b!927643 () Bool)

(declare-fun e!603284 () Bool)

(declare-fun call!56845 () Bool)

(assert (=> b!927643 (= e!603284 call!56845)))

(declare-fun d!281186 () Bool)

(declare-fun res!421723 () Bool)

(declare-fun e!603288 () Bool)

(assert (=> d!281186 (=> res!421723 e!603288)))

(assert (=> d!281186 (= res!421723 ((_ is ElementMatch!2509) (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))))))

(assert (=> d!281186 (= (validRegex!978 (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))) e!603288)))

(declare-fun b!927644 () Bool)

(declare-fun res!421725 () Bool)

(assert (=> b!927644 (=> (not res!421725) (not e!603284))))

(assert (=> b!927644 (= res!421725 call!56846)))

(declare-fun e!603287 () Bool)

(assert (=> b!927644 (= e!603287 e!603284)))

(declare-fun b!927645 () Bool)

(declare-fun e!603290 () Bool)

(assert (=> b!927645 (= e!603288 e!603290)))

(assert (=> b!927645 (= c!150613 ((_ is Star!2509) (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))))))

(declare-fun bm!56841 () Bool)

(assert (=> bm!56841 (= call!56845 (validRegex!978 (ite c!150614 (regTwo!5531 (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))) (regTwo!5530 (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))))))))

(declare-fun b!927646 () Bool)

(assert (=> b!927646 (= e!603290 e!603287)))

(assert (=> b!927646 (= c!150614 ((_ is Union!2509) (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))))))

(declare-fun b!927647 () Bool)

(declare-fun e!603286 () Bool)

(assert (=> b!927647 (= e!603290 e!603286)))

(declare-fun res!421727 () Bool)

(assert (=> b!927647 (= res!421727 (not (nullable!709 (reg!2838 (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766)))))))))

(assert (=> b!927647 (=> (not res!421727) (not e!603286))))

(declare-fun b!927648 () Bool)

(declare-fun res!421724 () Bool)

(assert (=> b!927648 (=> res!421724 e!603285)))

(assert (=> b!927648 (= res!421724 (not ((_ is Concat!4342) (Union!2509 (removeUselessConcat!184 (regOne!5531 r!15766)) (removeUselessConcat!184 (regTwo!5531 r!15766))))))))

(assert (=> b!927648 (= e!603287 e!603285)))

(declare-fun b!927649 () Bool)

(assert (=> b!927649 (= e!603286 call!56844)))

(declare-fun b!927650 () Bool)

(assert (=> b!927650 (= e!603289 call!56845)))

(assert (= (and d!281186 (not res!421723)) b!927645))

(assert (= (and b!927645 c!150613) b!927647))

(assert (= (and b!927645 (not c!150613)) b!927646))

(assert (= (and b!927647 res!421727) b!927649))

(assert (= (and b!927646 c!150614) b!927644))

(assert (= (and b!927646 (not c!150614)) b!927648))

(assert (= (and b!927644 res!421725) b!927643))

(assert (= (and b!927648 (not res!421724)) b!927642))

(assert (= (and b!927642 res!421726) b!927650))

(assert (= (or b!927643 b!927650) bm!56841))

(assert (= (or b!927644 b!927642) bm!56839))

(assert (= (or b!927649 bm!56839) bm!56840))

(declare-fun m!1151949 () Bool)

(assert (=> bm!56840 m!1151949))

(declare-fun m!1151951 () Bool)

(assert (=> bm!56841 m!1151951))

(declare-fun m!1151953 () Bool)

(assert (=> b!927647 m!1151953))

(assert (=> b!927587 d!281186))

(declare-fun b!927717 () Bool)

(declare-fun c!150649 () Bool)

(assert (=> b!927717 (= c!150649 ((_ is Star!2509) (regOne!5531 r!15766)))))

(declare-fun e!603330 () Regex!2509)

(declare-fun e!603331 () Regex!2509)

(assert (=> b!927717 (= e!603330 e!603331)))

(declare-fun bm!56872 () Bool)

(declare-fun call!56881 () Regex!2509)

(declare-fun call!56877 () Regex!2509)

(assert (=> bm!56872 (= call!56881 call!56877)))

(declare-fun bm!56873 () Bool)

(declare-fun call!56878 () Regex!2509)

(declare-fun call!56880 () Regex!2509)

(assert (=> bm!56873 (= call!56878 call!56880)))

(declare-fun c!150646 () Bool)

(declare-fun c!150645 () Bool)

(declare-fun bm!56874 () Bool)

(assert (=> bm!56874 (= call!56877 (removeUselessConcat!184 (ite (or c!150645 c!150646) (regTwo!5530 (regOne!5531 r!15766)) (regOne!5531 (regOne!5531 r!15766)))))))

(declare-fun bm!56875 () Bool)

(declare-fun call!56879 () Regex!2509)

(assert (=> bm!56875 (= call!56880 call!56879)))

(declare-fun b!927718 () Bool)

(declare-fun e!603329 () Regex!2509)

(assert (=> b!927718 (= e!603329 e!603330)))

(declare-fun c!150648 () Bool)

(assert (=> b!927718 (= c!150648 ((_ is Union!2509) (regOne!5531 r!15766)))))

(declare-fun b!927719 () Bool)

(declare-fun e!603328 () Bool)

(declare-fun lt!339858 () Regex!2509)

(assert (=> b!927719 (= e!603328 (= (nullable!709 lt!339858) (nullable!709 (regOne!5531 r!15766))))))

(declare-fun b!927720 () Bool)

(assert (=> b!927720 (= e!603330 (Union!2509 call!56881 call!56878))))

(declare-fun b!927721 () Bool)

(assert (=> b!927721 (= e!603329 (Concat!4342 call!56880 call!56881))))

(declare-fun bm!56876 () Bool)

(declare-fun c!150647 () Bool)

(assert (=> bm!56876 (= call!56879 (removeUselessConcat!184 (ite (or c!150647 c!150646) (regOne!5530 (regOne!5531 r!15766)) (ite c!150648 (regTwo!5531 (regOne!5531 r!15766)) (reg!2838 (regOne!5531 r!15766))))))))

(declare-fun d!281190 () Bool)

(assert (=> d!281190 e!603328))

(declare-fun res!421734 () Bool)

(assert (=> d!281190 (=> (not res!421734) (not e!603328))))

(assert (=> d!281190 (= res!421734 (validRegex!978 lt!339858))))

(declare-fun e!603332 () Regex!2509)

(assert (=> d!281190 (= lt!339858 e!603332)))

(assert (=> d!281190 (= c!150645 (and ((_ is Concat!4342) (regOne!5531 r!15766)) ((_ is EmptyExpr!2509) (regOne!5530 (regOne!5531 r!15766)))))))

(assert (=> d!281190 (validRegex!978 (regOne!5531 r!15766))))

(assert (=> d!281190 (= (removeUselessConcat!184 (regOne!5531 r!15766)) lt!339858)))

(declare-fun b!927722 () Bool)

(assert (=> b!927722 (= e!603331 (Star!2509 call!56878))))

(declare-fun b!927723 () Bool)

(declare-fun e!603327 () Regex!2509)

(assert (=> b!927723 (= e!603327 call!56879)))

(declare-fun b!927724 () Bool)

(assert (=> b!927724 (= e!603332 e!603327)))

(assert (=> b!927724 (= c!150647 (and ((_ is Concat!4342) (regOne!5531 r!15766)) ((_ is EmptyExpr!2509) (regTwo!5530 (regOne!5531 r!15766)))))))

(declare-fun b!927725 () Bool)

(assert (=> b!927725 (= e!603331 (regOne!5531 r!15766))))

(declare-fun b!927726 () Bool)

(assert (=> b!927726 (= e!603332 call!56877)))

(declare-fun b!927727 () Bool)

(assert (=> b!927727 (= c!150646 ((_ is Concat!4342) (regOne!5531 r!15766)))))

(assert (=> b!927727 (= e!603327 e!603329)))

(assert (= (and d!281190 c!150645) b!927726))

(assert (= (and d!281190 (not c!150645)) b!927724))

(assert (= (and b!927724 c!150647) b!927723))

(assert (= (and b!927724 (not c!150647)) b!927727))

(assert (= (and b!927727 c!150646) b!927721))

(assert (= (and b!927727 (not c!150646)) b!927718))

(assert (= (and b!927718 c!150648) b!927720))

(assert (= (and b!927718 (not c!150648)) b!927717))

(assert (= (and b!927717 c!150649) b!927722))

(assert (= (and b!927717 (not c!150649)) b!927725))

(assert (= (or b!927720 b!927722) bm!56873))

(assert (= (or b!927721 b!927720) bm!56872))

(assert (= (or b!927721 bm!56873) bm!56875))

(assert (= (or b!927723 bm!56875) bm!56876))

(assert (= (or b!927726 bm!56872) bm!56874))

(assert (= (and d!281190 res!421734) b!927719))

(declare-fun m!1151979 () Bool)

(assert (=> bm!56874 m!1151979))

(declare-fun m!1151981 () Bool)

(assert (=> b!927719 m!1151981))

(declare-fun m!1151983 () Bool)

(assert (=> b!927719 m!1151983))

(declare-fun m!1151985 () Bool)

(assert (=> bm!56876 m!1151985))

(declare-fun m!1151987 () Bool)

(assert (=> d!281190 m!1151987))

(declare-fun m!1151989 () Bool)

(assert (=> d!281190 m!1151989))

(assert (=> b!927587 d!281190))

(declare-fun b!927728 () Bool)

(declare-fun c!150654 () Bool)

(assert (=> b!927728 (= c!150654 ((_ is Star!2509) (regTwo!5531 r!15766)))))

(declare-fun e!603336 () Regex!2509)

(declare-fun e!603337 () Regex!2509)

(assert (=> b!927728 (= e!603336 e!603337)))

(declare-fun bm!56877 () Bool)

(declare-fun call!56886 () Regex!2509)

(declare-fun call!56882 () Regex!2509)

(assert (=> bm!56877 (= call!56886 call!56882)))

(declare-fun bm!56878 () Bool)

(declare-fun call!56883 () Regex!2509)

(declare-fun call!56885 () Regex!2509)

(assert (=> bm!56878 (= call!56883 call!56885)))

(declare-fun c!150650 () Bool)

(declare-fun bm!56879 () Bool)

(declare-fun c!150651 () Bool)

(assert (=> bm!56879 (= call!56882 (removeUselessConcat!184 (ite (or c!150650 c!150651) (regTwo!5530 (regTwo!5531 r!15766)) (regOne!5531 (regTwo!5531 r!15766)))))))

(declare-fun bm!56880 () Bool)

(declare-fun call!56884 () Regex!2509)

(assert (=> bm!56880 (= call!56885 call!56884)))

(declare-fun b!927729 () Bool)

(declare-fun e!603335 () Regex!2509)

(assert (=> b!927729 (= e!603335 e!603336)))

(declare-fun c!150653 () Bool)

(assert (=> b!927729 (= c!150653 ((_ is Union!2509) (regTwo!5531 r!15766)))))

(declare-fun b!927730 () Bool)

(declare-fun e!603334 () Bool)

(declare-fun lt!339859 () Regex!2509)

(assert (=> b!927730 (= e!603334 (= (nullable!709 lt!339859) (nullable!709 (regTwo!5531 r!15766))))))

(declare-fun b!927731 () Bool)

(assert (=> b!927731 (= e!603336 (Union!2509 call!56886 call!56883))))

(declare-fun b!927732 () Bool)

(assert (=> b!927732 (= e!603335 (Concat!4342 call!56885 call!56886))))

(declare-fun bm!56881 () Bool)

(declare-fun c!150652 () Bool)

(assert (=> bm!56881 (= call!56884 (removeUselessConcat!184 (ite (or c!150652 c!150651) (regOne!5530 (regTwo!5531 r!15766)) (ite c!150653 (regTwo!5531 (regTwo!5531 r!15766)) (reg!2838 (regTwo!5531 r!15766))))))))

(declare-fun d!281196 () Bool)

(assert (=> d!281196 e!603334))

(declare-fun res!421735 () Bool)

(assert (=> d!281196 (=> (not res!421735) (not e!603334))))

(assert (=> d!281196 (= res!421735 (validRegex!978 lt!339859))))

(declare-fun e!603338 () Regex!2509)

(assert (=> d!281196 (= lt!339859 e!603338)))

(assert (=> d!281196 (= c!150650 (and ((_ is Concat!4342) (regTwo!5531 r!15766)) ((_ is EmptyExpr!2509) (regOne!5530 (regTwo!5531 r!15766)))))))

(assert (=> d!281196 (validRegex!978 (regTwo!5531 r!15766))))

(assert (=> d!281196 (= (removeUselessConcat!184 (regTwo!5531 r!15766)) lt!339859)))

(declare-fun b!927733 () Bool)

(assert (=> b!927733 (= e!603337 (Star!2509 call!56883))))

(declare-fun b!927734 () Bool)

(declare-fun e!603333 () Regex!2509)

(assert (=> b!927734 (= e!603333 call!56884)))

(declare-fun b!927735 () Bool)

(assert (=> b!927735 (= e!603338 e!603333)))

(assert (=> b!927735 (= c!150652 (and ((_ is Concat!4342) (regTwo!5531 r!15766)) ((_ is EmptyExpr!2509) (regTwo!5530 (regTwo!5531 r!15766)))))))

(declare-fun b!927736 () Bool)

(assert (=> b!927736 (= e!603337 (regTwo!5531 r!15766))))

(declare-fun b!927737 () Bool)

(assert (=> b!927737 (= e!603338 call!56882)))

(declare-fun b!927738 () Bool)

(assert (=> b!927738 (= c!150651 ((_ is Concat!4342) (regTwo!5531 r!15766)))))

(assert (=> b!927738 (= e!603333 e!603335)))

(assert (= (and d!281196 c!150650) b!927737))

(assert (= (and d!281196 (not c!150650)) b!927735))

(assert (= (and b!927735 c!150652) b!927734))

(assert (= (and b!927735 (not c!150652)) b!927738))

(assert (= (and b!927738 c!150651) b!927732))

(assert (= (and b!927738 (not c!150651)) b!927729))

(assert (= (and b!927729 c!150653) b!927731))

(assert (= (and b!927729 (not c!150653)) b!927728))

(assert (= (and b!927728 c!150654) b!927733))

(assert (= (and b!927728 (not c!150654)) b!927736))

(assert (= (or b!927731 b!927733) bm!56878))

(assert (= (or b!927732 b!927731) bm!56877))

(assert (= (or b!927732 bm!56878) bm!56880))

(assert (= (or b!927734 bm!56880) bm!56881))

(assert (= (or b!927737 bm!56877) bm!56879))

(assert (= (and d!281196 res!421735) b!927730))

(declare-fun m!1151991 () Bool)

(assert (=> bm!56879 m!1151991))

(declare-fun m!1151993 () Bool)

(assert (=> b!927730 m!1151993))

(declare-fun m!1151995 () Bool)

(assert (=> b!927730 m!1151995))

(declare-fun m!1151997 () Bool)

(assert (=> bm!56881 m!1151997))

(declare-fun m!1151999 () Bool)

(assert (=> d!281196 m!1151999))

(declare-fun m!1152001 () Bool)

(assert (=> d!281196 m!1152001))

(assert (=> b!927587 d!281196))

(declare-fun b!927913 () Bool)

(assert (=> b!927913 true))

(assert (=> b!927913 true))

(declare-fun bs!237602 () Bool)

(declare-fun b!927906 () Bool)

(assert (= bs!237602 (and b!927906 b!927913)))

(declare-fun lambda!30716 () Int)

(declare-fun lambda!30715 () Int)

(assert (=> bs!237602 (not (= lambda!30716 lambda!30715))))

(assert (=> b!927906 true))

(assert (=> b!927906 true))

(declare-fun b!927904 () Bool)

(declare-fun e!603424 () Bool)

(declare-fun e!603422 () Bool)

(assert (=> b!927904 (= e!603424 e!603422)))

(declare-fun c!150689 () Bool)

(assert (=> b!927904 (= c!150689 ((_ is Star!2509) r!15766))))

(declare-fun b!927905 () Bool)

(declare-fun e!603423 () Bool)

(assert (=> b!927905 (= e!603423 (= s!10566 (Cons!9723 (c!150600 r!15766) Nil!9723)))))

(declare-fun call!56903 () Bool)

(assert (=> b!927906 (= e!603422 call!56903)))

(declare-fun bm!56898 () Bool)

(declare-fun call!56904 () Bool)

(declare-fun isEmpty!5982 (List!9739) Bool)

(assert (=> bm!56898 (= call!56904 (isEmpty!5982 s!10566))))

(declare-fun d!281198 () Bool)

(declare-fun c!150688 () Bool)

(assert (=> d!281198 (= c!150688 ((_ is EmptyExpr!2509) r!15766))))

(declare-fun e!603425 () Bool)

(assert (=> d!281198 (= (matchRSpec!310 r!15766 s!10566) e!603425)))

(declare-fun b!927907 () Bool)

(declare-fun e!603421 () Bool)

(assert (=> b!927907 (= e!603424 e!603421)))

(declare-fun res!421800 () Bool)

(assert (=> b!927907 (= res!421800 (matchRSpec!310 (regOne!5531 r!15766) s!10566))))

(assert (=> b!927907 (=> res!421800 e!603421)))

(declare-fun bm!56899 () Bool)

(declare-fun Exists!280 (Int) Bool)

(assert (=> bm!56899 (= call!56903 (Exists!280 (ite c!150689 lambda!30715 lambda!30716)))))

(declare-fun b!927908 () Bool)

(declare-fun c!150687 () Bool)

(assert (=> b!927908 (= c!150687 ((_ is Union!2509) r!15766))))

(assert (=> b!927908 (= e!603423 e!603424)))

(declare-fun b!927909 () Bool)

(declare-fun c!150686 () Bool)

(assert (=> b!927909 (= c!150686 ((_ is ElementMatch!2509) r!15766))))

(declare-fun e!603426 () Bool)

(assert (=> b!927909 (= e!603426 e!603423)))

(declare-fun b!927910 () Bool)

(assert (=> b!927910 (= e!603425 e!603426)))

(declare-fun res!421802 () Bool)

(assert (=> b!927910 (= res!421802 (not ((_ is EmptyLang!2509) r!15766)))))

(assert (=> b!927910 (=> (not res!421802) (not e!603426))))

(declare-fun b!927911 () Bool)

(assert (=> b!927911 (= e!603425 call!56904)))

(declare-fun b!927912 () Bool)

(declare-fun res!421801 () Bool)

(declare-fun e!603420 () Bool)

(assert (=> b!927912 (=> res!421801 e!603420)))

(assert (=> b!927912 (= res!421801 call!56904)))

(assert (=> b!927912 (= e!603422 e!603420)))

(assert (=> b!927913 (= e!603420 call!56903)))

(declare-fun b!927914 () Bool)

(assert (=> b!927914 (= e!603421 (matchRSpec!310 (regTwo!5531 r!15766) s!10566))))

(assert (= (and d!281198 c!150688) b!927911))

(assert (= (and d!281198 (not c!150688)) b!927910))

(assert (= (and b!927910 res!421802) b!927909))

(assert (= (and b!927909 c!150686) b!927905))

(assert (= (and b!927909 (not c!150686)) b!927908))

(assert (= (and b!927908 c!150687) b!927907))

(assert (= (and b!927908 (not c!150687)) b!927904))

(assert (= (and b!927907 (not res!421800)) b!927914))

(assert (= (and b!927904 c!150689) b!927912))

(assert (= (and b!927904 (not c!150689)) b!927906))

(assert (= (and b!927912 (not res!421801)) b!927913))

(assert (= (or b!927913 b!927906) bm!56899))

(assert (= (or b!927911 b!927912) bm!56898))

(declare-fun m!1152031 () Bool)

(assert (=> bm!56898 m!1152031))

(declare-fun m!1152033 () Bool)

(assert (=> b!927907 m!1152033))

(declare-fun m!1152035 () Bool)

(assert (=> bm!56899 m!1152035))

(declare-fun m!1152037 () Bool)

(assert (=> b!927914 m!1152037))

(assert (=> b!927583 d!281198))

(declare-fun d!281206 () Bool)

(declare-fun e!603443 () Bool)

(assert (=> d!281206 e!603443))

(declare-fun c!150698 () Bool)

(assert (=> d!281206 (= c!150698 ((_ is EmptyExpr!2509) r!15766))))

(declare-fun lt!339868 () Bool)

(declare-fun e!603446 () Bool)

(assert (=> d!281206 (= lt!339868 e!603446)))

(declare-fun c!150697 () Bool)

(assert (=> d!281206 (= c!150697 (isEmpty!5982 s!10566))))

(assert (=> d!281206 (validRegex!978 r!15766)))

(assert (=> d!281206 (= (matchR!1047 r!15766 s!10566) lt!339868)))

(declare-fun b!927947 () Bool)

(declare-fun call!56907 () Bool)

(assert (=> b!927947 (= e!603443 (= lt!339868 call!56907))))

(declare-fun b!927948 () Bool)

(declare-fun derivativeStep!519 (Regex!2509 C!5588) Regex!2509)

(declare-fun head!1672 (List!9739) C!5588)

(declare-fun tail!1234 (List!9739) List!9739)

(assert (=> b!927948 (= e!603446 (matchR!1047 (derivativeStep!519 r!15766 (head!1672 s!10566)) (tail!1234 s!10566)))))

(declare-fun b!927949 () Bool)

(declare-fun e!603447 () Bool)

(declare-fun e!603445 () Bool)

(assert (=> b!927949 (= e!603447 e!603445)))

(declare-fun res!421819 () Bool)

(assert (=> b!927949 (=> res!421819 e!603445)))

(assert (=> b!927949 (= res!421819 call!56907)))

(declare-fun b!927950 () Bool)

(declare-fun res!421821 () Bool)

(declare-fun e!603441 () Bool)

(assert (=> b!927950 (=> res!421821 e!603441)))

(declare-fun e!603444 () Bool)

(assert (=> b!927950 (= res!421821 e!603444)))

(declare-fun res!421822 () Bool)

(assert (=> b!927950 (=> (not res!421822) (not e!603444))))

(assert (=> b!927950 (= res!421822 lt!339868)))

(declare-fun bm!56902 () Bool)

(assert (=> bm!56902 (= call!56907 (isEmpty!5982 s!10566))))

(declare-fun b!927951 () Bool)

(declare-fun res!421826 () Bool)

(assert (=> b!927951 (=> res!421826 e!603445)))

(assert (=> b!927951 (= res!421826 (not (isEmpty!5982 (tail!1234 s!10566))))))

(declare-fun b!927952 () Bool)

(declare-fun e!603442 () Bool)

(assert (=> b!927952 (= e!603443 e!603442)))

(declare-fun c!150696 () Bool)

(assert (=> b!927952 (= c!150696 ((_ is EmptyLang!2509) r!15766))))

(declare-fun b!927953 () Bool)

(declare-fun res!421820 () Bool)

(assert (=> b!927953 (=> (not res!421820) (not e!603444))))

(assert (=> b!927953 (= res!421820 (not call!56907))))

(declare-fun b!927954 () Bool)

(declare-fun res!421824 () Bool)

(assert (=> b!927954 (=> res!421824 e!603441)))

(assert (=> b!927954 (= res!421824 (not ((_ is ElementMatch!2509) r!15766)))))

(assert (=> b!927954 (= e!603442 e!603441)))

(declare-fun b!927955 () Bool)

(assert (=> b!927955 (= e!603442 (not lt!339868))))

(declare-fun b!927956 () Bool)

(assert (=> b!927956 (= e!603445 (not (= (head!1672 s!10566) (c!150600 r!15766))))))

(declare-fun b!927957 () Bool)

(assert (=> b!927957 (= e!603444 (= (head!1672 s!10566) (c!150600 r!15766)))))

(declare-fun b!927958 () Bool)

(assert (=> b!927958 (= e!603441 e!603447)))

(declare-fun res!421823 () Bool)

(assert (=> b!927958 (=> (not res!421823) (not e!603447))))

(assert (=> b!927958 (= res!421823 (not lt!339868))))

(declare-fun b!927959 () Bool)

(assert (=> b!927959 (= e!603446 (nullable!709 r!15766))))

(declare-fun b!927960 () Bool)

(declare-fun res!421825 () Bool)

(assert (=> b!927960 (=> (not res!421825) (not e!603444))))

(assert (=> b!927960 (= res!421825 (isEmpty!5982 (tail!1234 s!10566)))))

(assert (= (and d!281206 c!150697) b!927959))

(assert (= (and d!281206 (not c!150697)) b!927948))

(assert (= (and d!281206 c!150698) b!927947))

(assert (= (and d!281206 (not c!150698)) b!927952))

(assert (= (and b!927952 c!150696) b!927955))

(assert (= (and b!927952 (not c!150696)) b!927954))

(assert (= (and b!927954 (not res!421824)) b!927950))

(assert (= (and b!927950 res!421822) b!927953))

(assert (= (and b!927953 res!421820) b!927960))

(assert (= (and b!927960 res!421825) b!927957))

(assert (= (and b!927950 (not res!421821)) b!927958))

(assert (= (and b!927958 res!421823) b!927949))

(assert (= (and b!927949 (not res!421819)) b!927951))

(assert (= (and b!927951 (not res!421826)) b!927956))

(assert (= (or b!927947 b!927949 b!927953) bm!56902))

(declare-fun m!1152039 () Bool)

(assert (=> b!927959 m!1152039))

(assert (=> bm!56902 m!1152031))

(declare-fun m!1152041 () Bool)

(assert (=> b!927956 m!1152041))

(assert (=> b!927948 m!1152041))

(assert (=> b!927948 m!1152041))

(declare-fun m!1152043 () Bool)

(assert (=> b!927948 m!1152043))

(declare-fun m!1152045 () Bool)

(assert (=> b!927948 m!1152045))

(assert (=> b!927948 m!1152043))

(assert (=> b!927948 m!1152045))

(declare-fun m!1152047 () Bool)

(assert (=> b!927948 m!1152047))

(assert (=> d!281206 m!1152031))

(assert (=> d!281206 m!1151923))

(assert (=> b!927960 m!1152045))

(assert (=> b!927960 m!1152045))

(declare-fun m!1152049 () Bool)

(assert (=> b!927960 m!1152049))

(assert (=> b!927957 m!1152041))

(assert (=> b!927951 m!1152045))

(assert (=> b!927951 m!1152045))

(assert (=> b!927951 m!1152049))

(assert (=> b!927583 d!281206))

(declare-fun d!281208 () Bool)

(assert (=> d!281208 (= (matchR!1047 r!15766 s!10566) (matchRSpec!310 r!15766 s!10566))))

(declare-fun lt!339871 () Unit!14637)

(declare-fun choose!5709 (Regex!2509 List!9739) Unit!14637)

(assert (=> d!281208 (= lt!339871 (choose!5709 r!15766 s!10566))))

(assert (=> d!281208 (validRegex!978 r!15766)))

(assert (=> d!281208 (= (mainMatchTheorem!310 r!15766 s!10566) lt!339871)))

(declare-fun bs!237603 () Bool)

(assert (= bs!237603 d!281208))

(assert (=> bs!237603 m!1151927))

(assert (=> bs!237603 m!1151925))

(declare-fun m!1152051 () Bool)

(assert (=> bs!237603 m!1152051))

(assert (=> bs!237603 m!1151923))

(assert (=> b!927583 d!281208))

(declare-fun b!927971 () Bool)

(declare-fun e!603450 () Bool)

(assert (=> b!927971 (= e!603450 tp_is_empty!4661)))

(declare-fun b!927974 () Bool)

(declare-fun tp!288288 () Bool)

(declare-fun tp!288286 () Bool)

(assert (=> b!927974 (= e!603450 (and tp!288288 tp!288286))))

(declare-fun b!927972 () Bool)

(declare-fun tp!288285 () Bool)

(declare-fun tp!288289 () Bool)

(assert (=> b!927972 (= e!603450 (and tp!288285 tp!288289))))

(assert (=> b!927586 (= tp!288232 e!603450)))

(declare-fun b!927973 () Bool)

(declare-fun tp!288287 () Bool)

(assert (=> b!927973 (= e!603450 tp!288287)))

(assert (= (and b!927586 ((_ is ElementMatch!2509) (regOne!5531 r!15766))) b!927971))

(assert (= (and b!927586 ((_ is Concat!4342) (regOne!5531 r!15766))) b!927972))

(assert (= (and b!927586 ((_ is Star!2509) (regOne!5531 r!15766))) b!927973))

(assert (= (and b!927586 ((_ is Union!2509) (regOne!5531 r!15766))) b!927974))

(declare-fun b!927975 () Bool)

(declare-fun e!603451 () Bool)

(assert (=> b!927975 (= e!603451 tp_is_empty!4661)))

(declare-fun b!927978 () Bool)

(declare-fun tp!288293 () Bool)

(declare-fun tp!288291 () Bool)

(assert (=> b!927978 (= e!603451 (and tp!288293 tp!288291))))

(declare-fun b!927976 () Bool)

(declare-fun tp!288290 () Bool)

(declare-fun tp!288294 () Bool)

(assert (=> b!927976 (= e!603451 (and tp!288290 tp!288294))))

(assert (=> b!927586 (= tp!288234 e!603451)))

(declare-fun b!927977 () Bool)

(declare-fun tp!288292 () Bool)

(assert (=> b!927977 (= e!603451 tp!288292)))

(assert (= (and b!927586 ((_ is ElementMatch!2509) (regTwo!5531 r!15766))) b!927975))

(assert (= (and b!927586 ((_ is Concat!4342) (regTwo!5531 r!15766))) b!927976))

(assert (= (and b!927586 ((_ is Star!2509) (regTwo!5531 r!15766))) b!927977))

(assert (= (and b!927586 ((_ is Union!2509) (regTwo!5531 r!15766))) b!927978))

(declare-fun b!927983 () Bool)

(declare-fun e!603454 () Bool)

(declare-fun tp!288297 () Bool)

(assert (=> b!927983 (= e!603454 (and tp_is_empty!4661 tp!288297))))

(assert (=> b!927582 (= tp!288233 e!603454)))

(assert (= (and b!927582 ((_ is Cons!9723) (t!100785 s!10566))) b!927983))

(declare-fun b!927984 () Bool)

(declare-fun e!603455 () Bool)

(assert (=> b!927984 (= e!603455 tp_is_empty!4661)))

(declare-fun b!927987 () Bool)

(declare-fun tp!288301 () Bool)

(declare-fun tp!288299 () Bool)

(assert (=> b!927987 (= e!603455 (and tp!288301 tp!288299))))

(declare-fun b!927985 () Bool)

(declare-fun tp!288298 () Bool)

(declare-fun tp!288302 () Bool)

(assert (=> b!927985 (= e!603455 (and tp!288298 tp!288302))))

(assert (=> b!927581 (= tp!288236 e!603455)))

(declare-fun b!927986 () Bool)

(declare-fun tp!288300 () Bool)

(assert (=> b!927986 (= e!603455 tp!288300)))

(assert (= (and b!927581 ((_ is ElementMatch!2509) (regOne!5530 r!15766))) b!927984))

(assert (= (and b!927581 ((_ is Concat!4342) (regOne!5530 r!15766))) b!927985))

(assert (= (and b!927581 ((_ is Star!2509) (regOne!5530 r!15766))) b!927986))

(assert (= (and b!927581 ((_ is Union!2509) (regOne!5530 r!15766))) b!927987))

(declare-fun b!927988 () Bool)

(declare-fun e!603456 () Bool)

(assert (=> b!927988 (= e!603456 tp_is_empty!4661)))

(declare-fun b!927991 () Bool)

(declare-fun tp!288306 () Bool)

(declare-fun tp!288304 () Bool)

(assert (=> b!927991 (= e!603456 (and tp!288306 tp!288304))))

(declare-fun b!927989 () Bool)

(declare-fun tp!288303 () Bool)

(declare-fun tp!288307 () Bool)

(assert (=> b!927989 (= e!603456 (and tp!288303 tp!288307))))

(assert (=> b!927581 (= tp!288235 e!603456)))

(declare-fun b!927990 () Bool)

(declare-fun tp!288305 () Bool)

(assert (=> b!927990 (= e!603456 tp!288305)))

(assert (= (and b!927581 ((_ is ElementMatch!2509) (regTwo!5530 r!15766))) b!927988))

(assert (= (and b!927581 ((_ is Concat!4342) (regTwo!5530 r!15766))) b!927989))

(assert (= (and b!927581 ((_ is Star!2509) (regTwo!5530 r!15766))) b!927990))

(assert (= (and b!927581 ((_ is Union!2509) (regTwo!5530 r!15766))) b!927991))

(declare-fun b!927992 () Bool)

(declare-fun e!603457 () Bool)

(assert (=> b!927992 (= e!603457 tp_is_empty!4661)))

(declare-fun b!927995 () Bool)

(declare-fun tp!288311 () Bool)

(declare-fun tp!288309 () Bool)

(assert (=> b!927995 (= e!603457 (and tp!288311 tp!288309))))

(declare-fun b!927993 () Bool)

(declare-fun tp!288308 () Bool)

(declare-fun tp!288312 () Bool)

(assert (=> b!927993 (= e!603457 (and tp!288308 tp!288312))))

(assert (=> b!927584 (= tp!288231 e!603457)))

(declare-fun b!927994 () Bool)

(declare-fun tp!288310 () Bool)

(assert (=> b!927994 (= e!603457 tp!288310)))

(assert (= (and b!927584 ((_ is ElementMatch!2509) (reg!2838 r!15766))) b!927992))

(assert (= (and b!927584 ((_ is Concat!4342) (reg!2838 r!15766))) b!927993))

(assert (= (and b!927584 ((_ is Star!2509) (reg!2838 r!15766))) b!927994))

(assert (= (and b!927584 ((_ is Union!2509) (reg!2838 r!15766))) b!927995))

(check-sat (not d!281196) (not bm!56898) (not bm!56902) (not b!927719) (not bm!56834) (not b!927991) (not bm!56899) (not b!927629) (not b!927995) (not bm!56879) (not b!927907) (not bm!56881) (not b!927987) tp_is_empty!4661 (not bm!56835) (not b!927730) (not b!927986) (not b!927977) (not b!927978) (not b!927990) (not bm!56841) (not b!927914) (not b!927951) (not b!927960) (not b!927956) (not bm!56874) (not d!281206) (not b!927993) (not d!281208) (not b!927973) (not b!927957) (not bm!56876) (not b!927972) (not b!927985) (not b!927647) (not b!927959) (not b!927948) (not bm!56840) (not b!927989) (not b!927974) (not b!927976) (not b!927994) (not b!927983) (not d!281190))
(check-sat)
