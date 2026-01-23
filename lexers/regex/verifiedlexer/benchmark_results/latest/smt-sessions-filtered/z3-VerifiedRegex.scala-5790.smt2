; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285852 () Bool)

(assert start!285852)

(declare-fun b!2945206 () Bool)

(declare-fun e!1855557 () Bool)

(declare-datatypes ((C!18448 0))(
  ( (C!18449 (val!11260 Int)) )
))
(declare-datatypes ((Regex!9131 0))(
  ( (ElementMatch!9131 (c!481701 C!18448)) (Concat!14452 (regOne!18774 Regex!9131) (regTwo!18774 Regex!9131)) (EmptyExpr!9131) (Star!9131 (reg!9460 Regex!9131)) (EmptyLang!9131) (Union!9131 (regOne!18775 Regex!9131) (regTwo!18775 Regex!9131)) )
))
(declare-fun r!17423 () Regex!9131)

(declare-fun validRegex!3864 (Regex!9131) Bool)

(assert (=> b!2945206 (= e!1855557 (validRegex!3864 (regOne!18774 r!17423)))))

(declare-fun b!2945207 () Bool)

(declare-fun e!1855558 () Bool)

(declare-fun tp_is_empty!15825 () Bool)

(declare-fun tp!942185 () Bool)

(assert (=> b!2945207 (= e!1855558 (and tp_is_empty!15825 tp!942185))))

(declare-fun b!2945208 () Bool)

(declare-fun res!1215560 () Bool)

(declare-fun e!1855559 () Bool)

(assert (=> b!2945208 (=> res!1215560 e!1855559)))

(declare-datatypes ((List!34996 0))(
  ( (Nil!34872) (Cons!34872 (h!40292 C!18448) (t!234061 List!34996)) )
))
(declare-fun s!11993 () List!34996)

(declare-fun isEmpty!19133 (List!34996) Bool)

(assert (=> b!2945208 (= res!1215560 (isEmpty!19133 s!11993))))

(declare-fun b!2945209 () Bool)

(declare-fun res!1215554 () Bool)

(assert (=> b!2945209 (=> res!1215554 e!1855557)))

(declare-fun lt!1031109 () Regex!9131)

(declare-fun isEmptyExpr!334 (Regex!9131) Bool)

(assert (=> b!2945209 (= res!1215554 (isEmptyExpr!334 lt!1031109))))

(declare-fun b!2945210 () Bool)

(declare-fun e!1855560 () Bool)

(declare-fun tp!942189 () Bool)

(declare-fun tp!942187 () Bool)

(assert (=> b!2945210 (= e!1855560 (and tp!942189 tp!942187))))

(declare-fun res!1215559 () Bool)

(declare-fun e!1855561 () Bool)

(assert (=> start!285852 (=> (not res!1215559) (not e!1855561))))

(assert (=> start!285852 (= res!1215559 (validRegex!3864 r!17423))))

(assert (=> start!285852 e!1855561))

(assert (=> start!285852 e!1855560))

(assert (=> start!285852 e!1855558))

(declare-fun b!2945211 () Bool)

(assert (=> b!2945211 (= e!1855560 tp_is_empty!15825)))

(declare-fun b!2945212 () Bool)

(declare-fun res!1215557 () Bool)

(assert (=> b!2945212 (=> res!1215557 e!1855557)))

(declare-fun lt!1031111 () Regex!9131)

(assert (=> b!2945212 (= res!1215557 (isEmptyExpr!334 lt!1031111))))

(declare-fun b!2945213 () Bool)

(assert (=> b!2945213 (= e!1855559 e!1855557)))

(declare-fun res!1215558 () Bool)

(assert (=> b!2945213 (=> res!1215558 e!1855557)))

(declare-fun isEmptyLang!253 (Regex!9131) Bool)

(assert (=> b!2945213 (= res!1215558 (isEmptyLang!253 lt!1031109))))

(declare-fun simplify!136 (Regex!9131) Regex!9131)

(assert (=> b!2945213 (= lt!1031111 (simplify!136 (regTwo!18774 r!17423)))))

(assert (=> b!2945213 (= lt!1031109 (simplify!136 (regOne!18774 r!17423)))))

(declare-fun b!2945214 () Bool)

(declare-fun res!1215556 () Bool)

(assert (=> b!2945214 (=> res!1215556 e!1855557)))

(assert (=> b!2945214 (= res!1215556 (isEmptyLang!253 lt!1031111))))

(declare-fun b!2945215 () Bool)

(declare-fun tp!942188 () Bool)

(declare-fun tp!942186 () Bool)

(assert (=> b!2945215 (= e!1855560 (and tp!942188 tp!942186))))

(declare-fun b!2945216 () Bool)

(assert (=> b!2945216 (= e!1855561 (not e!1855559))))

(declare-fun res!1215555 () Bool)

(assert (=> b!2945216 (=> res!1215555 e!1855559)))

(declare-fun lt!1031110 () Bool)

(get-info :version)

(assert (=> b!2945216 (= res!1215555 (or lt!1031110 (not ((_ is Concat!14452) r!17423))))))

(declare-fun matchRSpec!1268 (Regex!9131 List!34996) Bool)

(assert (=> b!2945216 (= lt!1031110 (matchRSpec!1268 r!17423 s!11993))))

(declare-fun matchR!4013 (Regex!9131 List!34996) Bool)

(assert (=> b!2945216 (= lt!1031110 (matchR!4013 r!17423 s!11993))))

(declare-datatypes ((Unit!48641 0))(
  ( (Unit!48642) )
))
(declare-fun lt!1031108 () Unit!48641)

(declare-fun mainMatchTheorem!1268 (Regex!9131 List!34996) Unit!48641)

(assert (=> b!2945216 (= lt!1031108 (mainMatchTheorem!1268 r!17423 s!11993))))

(declare-fun b!2945217 () Bool)

(declare-fun tp!942184 () Bool)

(assert (=> b!2945217 (= e!1855560 tp!942184)))

(assert (= (and start!285852 res!1215559) b!2945216))

(assert (= (and b!2945216 (not res!1215555)) b!2945208))

(assert (= (and b!2945208 (not res!1215560)) b!2945213))

(assert (= (and b!2945213 (not res!1215558)) b!2945214))

(assert (= (and b!2945214 (not res!1215556)) b!2945209))

(assert (= (and b!2945209 (not res!1215554)) b!2945212))

(assert (= (and b!2945212 (not res!1215557)) b!2945206))

(assert (= (and start!285852 ((_ is ElementMatch!9131) r!17423)) b!2945211))

(assert (= (and start!285852 ((_ is Concat!14452) r!17423)) b!2945215))

(assert (= (and start!285852 ((_ is Star!9131) r!17423)) b!2945217))

(assert (= (and start!285852 ((_ is Union!9131) r!17423)) b!2945210))

(assert (= (and start!285852 ((_ is Cons!34872) s!11993)) b!2945207))

(declare-fun m!3327561 () Bool)

(assert (=> b!2945216 m!3327561))

(declare-fun m!3327563 () Bool)

(assert (=> b!2945216 m!3327563))

(declare-fun m!3327565 () Bool)

(assert (=> b!2945216 m!3327565))

(declare-fun m!3327567 () Bool)

(assert (=> b!2945213 m!3327567))

(declare-fun m!3327569 () Bool)

(assert (=> b!2945213 m!3327569))

(declare-fun m!3327571 () Bool)

(assert (=> b!2945213 m!3327571))

(declare-fun m!3327573 () Bool)

(assert (=> b!2945206 m!3327573))

(declare-fun m!3327575 () Bool)

(assert (=> b!2945212 m!3327575))

(declare-fun m!3327577 () Bool)

(assert (=> start!285852 m!3327577))

(declare-fun m!3327579 () Bool)

(assert (=> b!2945209 m!3327579))

(declare-fun m!3327581 () Bool)

(assert (=> b!2945214 m!3327581))

(declare-fun m!3327583 () Bool)

(assert (=> b!2945208 m!3327583))

(check-sat tp_is_empty!15825 (not b!2945215) (not b!2945212) (not b!2945207) (not start!285852) (not b!2945208) (not b!2945209) (not b!2945210) (not b!2945214) (not b!2945217) (not b!2945213) (not b!2945206) (not b!2945216))
(check-sat)
(get-model)

(declare-fun b!2945512 () Bool)

(assert (=> b!2945512 true))

(assert (=> b!2945512 true))

(declare-fun bs!525575 () Bool)

(declare-fun b!2945519 () Bool)

(assert (= bs!525575 (and b!2945519 b!2945512)))

(declare-fun lambda!109616 () Int)

(declare-fun lambda!109615 () Int)

(assert (=> bs!525575 (not (= lambda!109616 lambda!109615))))

(assert (=> b!2945519 true))

(assert (=> b!2945519 true))

(declare-fun b!2945510 () Bool)

(declare-fun c!481784 () Bool)

(assert (=> b!2945510 (= c!481784 ((_ is ElementMatch!9131) r!17423))))

(declare-fun e!1855725 () Bool)

(declare-fun e!1855720 () Bool)

(assert (=> b!2945510 (= e!1855725 e!1855720)))

(declare-fun call!194228 () Bool)

(declare-fun bm!194223 () Bool)

(declare-fun c!481783 () Bool)

(declare-fun Exists!1466 (Int) Bool)

(assert (=> bm!194223 (= call!194228 (Exists!1466 (ite c!481783 lambda!109615 lambda!109616)))))

(declare-fun bm!194224 () Bool)

(declare-fun call!194229 () Bool)

(assert (=> bm!194224 (= call!194229 (isEmpty!19133 s!11993))))

(declare-fun b!2945511 () Bool)

(declare-fun c!481786 () Bool)

(assert (=> b!2945511 (= c!481786 ((_ is Union!9131) r!17423))))

(declare-fun e!1855721 () Bool)

(assert (=> b!2945511 (= e!1855720 e!1855721)))

(declare-fun e!1855724 () Bool)

(assert (=> b!2945512 (= e!1855724 call!194228)))

(declare-fun b!2945513 () Bool)

(declare-fun e!1855726 () Bool)

(assert (=> b!2945513 (= e!1855726 e!1855725)))

(declare-fun res!1215654 () Bool)

(assert (=> b!2945513 (= res!1215654 (not ((_ is EmptyLang!9131) r!17423)))))

(assert (=> b!2945513 (=> (not res!1215654) (not e!1855725))))

(declare-fun b!2945514 () Bool)

(declare-fun res!1215653 () Bool)

(assert (=> b!2945514 (=> res!1215653 e!1855724)))

(assert (=> b!2945514 (= res!1215653 call!194229)))

(declare-fun e!1855722 () Bool)

(assert (=> b!2945514 (= e!1855722 e!1855724)))

(declare-fun b!2945515 () Bool)

(declare-fun e!1855723 () Bool)

(assert (=> b!2945515 (= e!1855721 e!1855723)))

(declare-fun res!1215652 () Bool)

(assert (=> b!2945515 (= res!1215652 (matchRSpec!1268 (regOne!18775 r!17423) s!11993))))

(assert (=> b!2945515 (=> res!1215652 e!1855723)))

(declare-fun b!2945516 () Bool)

(assert (=> b!2945516 (= e!1855720 (= s!11993 (Cons!34872 (c!481701 r!17423) Nil!34872)))))

(declare-fun d!840507 () Bool)

(declare-fun c!481785 () Bool)

(assert (=> d!840507 (= c!481785 ((_ is EmptyExpr!9131) r!17423))))

(assert (=> d!840507 (= (matchRSpec!1268 r!17423 s!11993) e!1855726)))

(declare-fun b!2945517 () Bool)

(assert (=> b!2945517 (= e!1855726 call!194229)))

(declare-fun b!2945518 () Bool)

(assert (=> b!2945518 (= e!1855721 e!1855722)))

(assert (=> b!2945518 (= c!481783 ((_ is Star!9131) r!17423))))

(assert (=> b!2945519 (= e!1855722 call!194228)))

(declare-fun b!2945520 () Bool)

(assert (=> b!2945520 (= e!1855723 (matchRSpec!1268 (regTwo!18775 r!17423) s!11993))))

(assert (= (and d!840507 c!481785) b!2945517))

(assert (= (and d!840507 (not c!481785)) b!2945513))

(assert (= (and b!2945513 res!1215654) b!2945510))

(assert (= (and b!2945510 c!481784) b!2945516))

(assert (= (and b!2945510 (not c!481784)) b!2945511))

(assert (= (and b!2945511 c!481786) b!2945515))

(assert (= (and b!2945511 (not c!481786)) b!2945518))

(assert (= (and b!2945515 (not res!1215652)) b!2945520))

(assert (= (and b!2945518 c!481783) b!2945514))

(assert (= (and b!2945518 (not c!481783)) b!2945519))

(assert (= (and b!2945514 (not res!1215653)) b!2945512))

(assert (= (or b!2945512 b!2945519) bm!194223))

(assert (= (or b!2945517 b!2945514) bm!194224))

(declare-fun m!3327655 () Bool)

(assert (=> bm!194223 m!3327655))

(assert (=> bm!194224 m!3327583))

(declare-fun m!3327657 () Bool)

(assert (=> b!2945515 m!3327657))

(declare-fun m!3327659 () Bool)

(assert (=> b!2945520 m!3327659))

(assert (=> b!2945216 d!840507))

(declare-fun b!2945553 () Bool)

(declare-fun res!1215673 () Bool)

(declare-fun e!1855742 () Bool)

(assert (=> b!2945553 (=> res!1215673 e!1855742)))

(assert (=> b!2945553 (= res!1215673 (not ((_ is ElementMatch!9131) r!17423)))))

(declare-fun e!1855744 () Bool)

(assert (=> b!2945553 (= e!1855744 e!1855742)))

(declare-fun bm!194227 () Bool)

(declare-fun call!194232 () Bool)

(assert (=> bm!194227 (= call!194232 (isEmpty!19133 s!11993))))

(declare-fun b!2945554 () Bool)

(declare-fun res!1215676 () Bool)

(declare-fun e!1855746 () Bool)

(assert (=> b!2945554 (=> res!1215676 e!1855746)))

(declare-fun tail!4780 (List!34996) List!34996)

(assert (=> b!2945554 (= res!1215676 (not (isEmpty!19133 (tail!4780 s!11993))))))

(declare-fun b!2945555 () Bool)

(declare-fun e!1855743 () Bool)

(assert (=> b!2945555 (= e!1855743 e!1855746)))

(declare-fun res!1215678 () Bool)

(assert (=> b!2945555 (=> res!1215678 e!1855746)))

(assert (=> b!2945555 (= res!1215678 call!194232)))

(declare-fun b!2945556 () Bool)

(declare-fun e!1855745 () Bool)

(declare-fun lt!1031144 () Bool)

(assert (=> b!2945556 (= e!1855745 (= lt!1031144 call!194232))))

(declare-fun b!2945557 () Bool)

(declare-fun res!1215674 () Bool)

(declare-fun e!1855747 () Bool)

(assert (=> b!2945557 (=> (not res!1215674) (not e!1855747))))

(assert (=> b!2945557 (= res!1215674 (isEmpty!19133 (tail!4780 s!11993)))))

(declare-fun b!2945558 () Bool)

(declare-fun res!1215672 () Bool)

(assert (=> b!2945558 (=> res!1215672 e!1855742)))

(assert (=> b!2945558 (= res!1215672 e!1855747)))

(declare-fun res!1215671 () Bool)

(assert (=> b!2945558 (=> (not res!1215671) (not e!1855747))))

(assert (=> b!2945558 (= res!1215671 lt!1031144)))

(declare-fun b!2945559 () Bool)

(assert (=> b!2945559 (= e!1855742 e!1855743)))

(declare-fun res!1215677 () Bool)

(assert (=> b!2945559 (=> (not res!1215677) (not e!1855743))))

(assert (=> b!2945559 (= res!1215677 (not lt!1031144))))

(declare-fun b!2945560 () Bool)

(declare-fun res!1215675 () Bool)

(assert (=> b!2945560 (=> (not res!1215675) (not e!1855747))))

(assert (=> b!2945560 (= res!1215675 (not call!194232))))

(declare-fun b!2945561 () Bool)

(declare-fun head!6555 (List!34996) C!18448)

(assert (=> b!2945561 (= e!1855747 (= (head!6555 s!11993) (c!481701 r!17423)))))

(declare-fun b!2945562 () Bool)

(assert (=> b!2945562 (= e!1855745 e!1855744)))

(declare-fun c!481794 () Bool)

(assert (=> b!2945562 (= c!481794 ((_ is EmptyLang!9131) r!17423))))

(declare-fun b!2945563 () Bool)

(assert (=> b!2945563 (= e!1855744 (not lt!1031144))))

(declare-fun b!2945564 () Bool)

(declare-fun e!1855741 () Bool)

(declare-fun nullable!2893 (Regex!9131) Bool)

(assert (=> b!2945564 (= e!1855741 (nullable!2893 r!17423))))

(declare-fun d!840533 () Bool)

(assert (=> d!840533 e!1855745))

(declare-fun c!481793 () Bool)

(assert (=> d!840533 (= c!481793 ((_ is EmptyExpr!9131) r!17423))))

(assert (=> d!840533 (= lt!1031144 e!1855741)))

(declare-fun c!481795 () Bool)

(assert (=> d!840533 (= c!481795 (isEmpty!19133 s!11993))))

(assert (=> d!840533 (validRegex!3864 r!17423)))

(assert (=> d!840533 (= (matchR!4013 r!17423 s!11993) lt!1031144)))

(declare-fun b!2945565 () Bool)

(declare-fun derivativeStep!2495 (Regex!9131 C!18448) Regex!9131)

(assert (=> b!2945565 (= e!1855741 (matchR!4013 (derivativeStep!2495 r!17423 (head!6555 s!11993)) (tail!4780 s!11993)))))

(declare-fun b!2945566 () Bool)

(assert (=> b!2945566 (= e!1855746 (not (= (head!6555 s!11993) (c!481701 r!17423))))))

(assert (= (and d!840533 c!481795) b!2945564))

(assert (= (and d!840533 (not c!481795)) b!2945565))

(assert (= (and d!840533 c!481793) b!2945556))

(assert (= (and d!840533 (not c!481793)) b!2945562))

(assert (= (and b!2945562 c!481794) b!2945563))

(assert (= (and b!2945562 (not c!481794)) b!2945553))

(assert (= (and b!2945553 (not res!1215673)) b!2945558))

(assert (= (and b!2945558 res!1215671) b!2945560))

(assert (= (and b!2945560 res!1215675) b!2945557))

(assert (= (and b!2945557 res!1215674) b!2945561))

(assert (= (and b!2945558 (not res!1215672)) b!2945559))

(assert (= (and b!2945559 res!1215677) b!2945555))

(assert (= (and b!2945555 (not res!1215678)) b!2945554))

(assert (= (and b!2945554 (not res!1215676)) b!2945566))

(assert (= (or b!2945556 b!2945555 b!2945560) bm!194227))

(declare-fun m!3327661 () Bool)

(assert (=> b!2945557 m!3327661))

(assert (=> b!2945557 m!3327661))

(declare-fun m!3327663 () Bool)

(assert (=> b!2945557 m!3327663))

(declare-fun m!3327665 () Bool)

(assert (=> b!2945564 m!3327665))

(declare-fun m!3327667 () Bool)

(assert (=> b!2945566 m!3327667))

(assert (=> b!2945565 m!3327667))

(assert (=> b!2945565 m!3327667))

(declare-fun m!3327669 () Bool)

(assert (=> b!2945565 m!3327669))

(assert (=> b!2945565 m!3327661))

(assert (=> b!2945565 m!3327669))

(assert (=> b!2945565 m!3327661))

(declare-fun m!3327671 () Bool)

(assert (=> b!2945565 m!3327671))

(assert (=> d!840533 m!3327583))

(assert (=> d!840533 m!3327577))

(assert (=> b!2945561 m!3327667))

(assert (=> b!2945554 m!3327661))

(assert (=> b!2945554 m!3327661))

(assert (=> b!2945554 m!3327663))

(assert (=> bm!194227 m!3327583))

(assert (=> b!2945216 d!840533))

(declare-fun d!840535 () Bool)

(assert (=> d!840535 (= (matchR!4013 r!17423 s!11993) (matchRSpec!1268 r!17423 s!11993))))

(declare-fun lt!1031147 () Unit!48641)

(declare-fun choose!17410 (Regex!9131 List!34996) Unit!48641)

(assert (=> d!840535 (= lt!1031147 (choose!17410 r!17423 s!11993))))

(assert (=> d!840535 (validRegex!3864 r!17423)))

(assert (=> d!840535 (= (mainMatchTheorem!1268 r!17423 s!11993) lt!1031147)))

(declare-fun bs!525576 () Bool)

(assert (= bs!525576 d!840535))

(assert (=> bs!525576 m!3327563))

(assert (=> bs!525576 m!3327561))

(declare-fun m!3327673 () Bool)

(assert (=> bs!525576 m!3327673))

(assert (=> bs!525576 m!3327577))

(assert (=> b!2945216 d!840535))

(declare-fun d!840537 () Bool)

(assert (=> d!840537 (= (isEmptyExpr!334 lt!1031111) ((_ is EmptyExpr!9131) lt!1031111))))

(assert (=> b!2945212 d!840537))

(declare-fun b!2945585 () Bool)

(declare-fun e!1855767 () Bool)

(declare-fun call!194239 () Bool)

(assert (=> b!2945585 (= e!1855767 call!194239)))

(declare-fun b!2945586 () Bool)

(declare-fun e!1855768 () Bool)

(declare-fun e!1855765 () Bool)

(assert (=> b!2945586 (= e!1855768 e!1855765)))

(declare-fun c!481800 () Bool)

(assert (=> b!2945586 (= c!481800 ((_ is Union!9131) (regOne!18774 r!17423)))))

(declare-fun b!2945587 () Bool)

(declare-fun e!1855766 () Bool)

(assert (=> b!2945587 (= e!1855766 e!1855768)))

(declare-fun c!481801 () Bool)

(assert (=> b!2945587 (= c!481801 ((_ is Star!9131) (regOne!18774 r!17423)))))

(declare-fun b!2945588 () Bool)

(declare-fun e!1855762 () Bool)

(declare-fun call!194240 () Bool)

(assert (=> b!2945588 (= e!1855762 call!194240)))

(declare-fun b!2945589 () Bool)

(declare-fun res!1215690 () Bool)

(declare-fun e!1855764 () Bool)

(assert (=> b!2945589 (=> res!1215690 e!1855764)))

(assert (=> b!2945589 (= res!1215690 (not ((_ is Concat!14452) (regOne!18774 r!17423))))))

(assert (=> b!2945589 (= e!1855765 e!1855764)))

(declare-fun d!840539 () Bool)

(declare-fun res!1215693 () Bool)

(assert (=> d!840539 (=> res!1215693 e!1855766)))

(assert (=> d!840539 (= res!1215693 ((_ is ElementMatch!9131) (regOne!18774 r!17423)))))

(assert (=> d!840539 (= (validRegex!3864 (regOne!18774 r!17423)) e!1855766)))

(declare-fun b!2945590 () Bool)

(declare-fun e!1855763 () Bool)

(assert (=> b!2945590 (= e!1855768 e!1855763)))

(declare-fun res!1215691 () Bool)

(assert (=> b!2945590 (= res!1215691 (not (nullable!2893 (reg!9460 (regOne!18774 r!17423)))))))

(assert (=> b!2945590 (=> (not res!1215691) (not e!1855763))))

(declare-fun b!2945591 () Bool)

(declare-fun res!1215692 () Bool)

(assert (=> b!2945591 (=> (not res!1215692) (not e!1855767))))

(assert (=> b!2945591 (= res!1215692 call!194240)))

(assert (=> b!2945591 (= e!1855765 e!1855767)))

(declare-fun bm!194234 () Bool)

(assert (=> bm!194234 (= call!194239 (validRegex!3864 (ite c!481800 (regTwo!18775 (regOne!18774 r!17423)) (regOne!18774 (regOne!18774 r!17423)))))))

(declare-fun bm!194235 () Bool)

(declare-fun call!194241 () Bool)

(assert (=> bm!194235 (= call!194240 call!194241)))

(declare-fun bm!194236 () Bool)

(assert (=> bm!194236 (= call!194241 (validRegex!3864 (ite c!481801 (reg!9460 (regOne!18774 r!17423)) (ite c!481800 (regOne!18775 (regOne!18774 r!17423)) (regTwo!18774 (regOne!18774 r!17423))))))))

(declare-fun b!2945592 () Bool)

(assert (=> b!2945592 (= e!1855764 e!1855762)))

(declare-fun res!1215689 () Bool)

(assert (=> b!2945592 (=> (not res!1215689) (not e!1855762))))

(assert (=> b!2945592 (= res!1215689 call!194239)))

(declare-fun b!2945593 () Bool)

(assert (=> b!2945593 (= e!1855763 call!194241)))

(assert (= (and d!840539 (not res!1215693)) b!2945587))

(assert (= (and b!2945587 c!481801) b!2945590))

(assert (= (and b!2945587 (not c!481801)) b!2945586))

(assert (= (and b!2945590 res!1215691) b!2945593))

(assert (= (and b!2945586 c!481800) b!2945591))

(assert (= (and b!2945586 (not c!481800)) b!2945589))

(assert (= (and b!2945591 res!1215692) b!2945585))

(assert (= (and b!2945589 (not res!1215690)) b!2945592))

(assert (= (and b!2945592 res!1215689) b!2945588))

(assert (= (or b!2945591 b!2945588) bm!194235))

(assert (= (or b!2945585 b!2945592) bm!194234))

(assert (= (or b!2945593 bm!194235) bm!194236))

(declare-fun m!3327675 () Bool)

(assert (=> b!2945590 m!3327675))

(declare-fun m!3327677 () Bool)

(assert (=> bm!194234 m!3327677))

(declare-fun m!3327679 () Bool)

(assert (=> bm!194236 m!3327679))

(assert (=> b!2945206 d!840539))

(declare-fun d!840541 () Bool)

(assert (=> d!840541 (= (isEmptyLang!253 lt!1031109) ((_ is EmptyLang!9131) lt!1031109))))

(assert (=> b!2945213 d!840541))

(declare-fun call!194259 () Regex!9131)

(declare-fun c!481831 () Bool)

(declare-fun bm!194251 () Bool)

(declare-fun c!481827 () Bool)

(assert (=> bm!194251 (= call!194259 (simplify!136 (ite c!481831 (reg!9460 (regTwo!18774 r!17423)) (ite c!481827 (regOne!18775 (regTwo!18774 r!17423)) (regTwo!18774 (regTwo!18774 r!17423))))))))

(declare-fun lt!1031162 () Regex!9131)

(declare-fun lt!1031160 () Regex!9131)

(declare-fun call!194258 () Bool)

(declare-fun bm!194252 () Bool)

(declare-fun lt!1031163 () Regex!9131)

(assert (=> bm!194252 (= call!194258 (isEmptyLang!253 (ite c!481831 lt!1031163 (ite c!481827 lt!1031162 lt!1031160))))))

(declare-fun bm!194253 () Bool)

(declare-fun call!194257 () Bool)

(assert (=> bm!194253 (= call!194257 call!194258)))

(declare-fun call!194261 () Bool)

(declare-fun bm!194254 () Bool)

(assert (=> bm!194254 (= call!194261 (isEmptyExpr!334 (ite c!481831 lt!1031163 lt!1031160)))))

(declare-fun b!2945644 () Bool)

(declare-fun e!1855806 () Regex!9131)

(declare-fun e!1855797 () Regex!9131)

(assert (=> b!2945644 (= e!1855806 e!1855797)))

(declare-fun c!481825 () Bool)

(assert (=> b!2945644 (= c!481825 ((_ is ElementMatch!9131) (regTwo!18774 r!17423)))))

(declare-fun b!2945645 () Bool)

(declare-fun e!1855800 () Regex!9131)

(declare-fun e!1855807 () Regex!9131)

(assert (=> b!2945645 (= e!1855800 e!1855807)))

(declare-fun call!194262 () Regex!9131)

(assert (=> b!2945645 (= lt!1031162 call!194262)))

(declare-fun lt!1031161 () Regex!9131)

(declare-fun call!194260 () Regex!9131)

(assert (=> b!2945645 (= lt!1031161 call!194260)))

(declare-fun c!481824 () Bool)

(assert (=> b!2945645 (= c!481824 call!194257)))

(declare-fun b!2945646 () Bool)

(declare-fun e!1855809 () Regex!9131)

(assert (=> b!2945646 (= e!1855809 lt!1031160)))

(declare-fun b!2945647 () Bool)

(declare-fun c!481832 () Bool)

(assert (=> b!2945647 (= c!481832 ((_ is EmptyExpr!9131) (regTwo!18774 r!17423)))))

(declare-fun e!1855805 () Regex!9131)

(assert (=> b!2945647 (= e!1855797 e!1855805)))

(declare-fun b!2945648 () Bool)

(declare-fun c!481834 () Bool)

(declare-fun e!1855808 () Bool)

(assert (=> b!2945648 (= c!481834 e!1855808)))

(declare-fun res!1215702 () Bool)

(assert (=> b!2945648 (=> res!1215702 e!1855808)))

(assert (=> b!2945648 (= res!1215702 call!194258)))

(assert (=> b!2945648 (= lt!1031163 call!194259)))

(declare-fun e!1855804 () Regex!9131)

(declare-fun e!1855799 () Regex!9131)

(assert (=> b!2945648 (= e!1855804 e!1855799)))

(declare-fun bm!194255 () Bool)

(declare-fun call!194256 () Bool)

(declare-fun lt!1031164 () Regex!9131)

(assert (=> bm!194255 (= call!194256 (isEmptyLang!253 (ite c!481827 lt!1031161 lt!1031164)))))

(declare-fun b!2945649 () Bool)

(assert (=> b!2945649 (= c!481827 ((_ is Union!9131) (regTwo!18774 r!17423)))))

(assert (=> b!2945649 (= e!1855804 e!1855800)))

(declare-fun b!2945650 () Bool)

(assert (=> b!2945650 (= e!1855799 EmptyExpr!9131)))

(declare-fun b!2945651 () Bool)

(assert (=> b!2945651 (= e!1855799 (Star!9131 lt!1031163))))

(declare-fun b!2945652 () Bool)

(declare-fun e!1855803 () Bool)

(declare-fun lt!1031165 () Regex!9131)

(assert (=> b!2945652 (= e!1855803 (= (nullable!2893 lt!1031165) (nullable!2893 (regTwo!18774 r!17423))))))

(declare-fun b!2945653 () Bool)

(declare-fun e!1855801 () Regex!9131)

(assert (=> b!2945653 (= e!1855801 lt!1031164)))

(declare-fun b!2945654 () Bool)

(declare-fun e!1855798 () Regex!9131)

(assert (=> b!2945654 (= e!1855798 (Union!9131 lt!1031162 lt!1031161))))

(declare-fun b!2945655 () Bool)

(assert (=> b!2945655 (= e!1855801 e!1855809)))

(declare-fun c!481833 () Bool)

(assert (=> b!2945655 (= c!481833 (isEmptyExpr!334 lt!1031164))))

(declare-fun b!2945656 () Bool)

(assert (=> b!2945656 (= e!1855808 call!194261)))

(declare-fun b!2945657 () Bool)

(declare-fun c!481829 () Bool)

(assert (=> b!2945657 (= c!481829 call!194256)))

(assert (=> b!2945657 (= e!1855807 e!1855798)))

(declare-fun b!2945658 () Bool)

(assert (=> b!2945658 (= e!1855809 (Concat!14452 lt!1031160 lt!1031164))))

(declare-fun b!2945659 () Bool)

(assert (=> b!2945659 (= e!1855797 (regTwo!18774 r!17423))))

(declare-fun b!2945660 () Bool)

(assert (=> b!2945660 (= e!1855798 lt!1031162)))

(declare-fun b!2945661 () Bool)

(declare-fun e!1855802 () Regex!9131)

(assert (=> b!2945661 (= e!1855800 e!1855802)))

(assert (=> b!2945661 (= lt!1031160 call!194260)))

(assert (=> b!2945661 (= lt!1031164 call!194262)))

(declare-fun res!1215700 () Bool)

(assert (=> b!2945661 (= res!1215700 call!194257)))

(declare-fun e!1855810 () Bool)

(assert (=> b!2945661 (=> res!1215700 e!1855810)))

(declare-fun c!481830 () Bool)

(assert (=> b!2945661 (= c!481830 e!1855810)))

(declare-fun b!2945662 () Bool)

(assert (=> b!2945662 (= e!1855807 lt!1031161)))

(declare-fun bm!194256 () Bool)

(assert (=> bm!194256 (= call!194262 call!194259)))

(declare-fun b!2945663 () Bool)

(assert (=> b!2945663 (= e!1855802 EmptyLang!9131)))

(declare-fun d!840543 () Bool)

(assert (=> d!840543 e!1855803))

(declare-fun res!1215701 () Bool)

(assert (=> d!840543 (=> (not res!1215701) (not e!1855803))))

(assert (=> d!840543 (= res!1215701 (validRegex!3864 lt!1031165))))

(assert (=> d!840543 (= lt!1031165 e!1855806)))

(declare-fun c!481826 () Bool)

(assert (=> d!840543 (= c!481826 ((_ is EmptyLang!9131) (regTwo!18774 r!17423)))))

(assert (=> d!840543 (validRegex!3864 (regTwo!18774 r!17423))))

(assert (=> d!840543 (= (simplify!136 (regTwo!18774 r!17423)) lt!1031165)))

(declare-fun b!2945664 () Bool)

(declare-fun c!481828 () Bool)

(assert (=> b!2945664 (= c!481828 call!194261)))

(assert (=> b!2945664 (= e!1855802 e!1855801)))

(declare-fun b!2945665 () Bool)

(assert (=> b!2945665 (= e!1855805 EmptyExpr!9131)))

(declare-fun bm!194257 () Bool)

(assert (=> bm!194257 (= call!194260 (simplify!136 (ite c!481827 (regTwo!18775 (regTwo!18774 r!17423)) (regOne!18774 (regTwo!18774 r!17423)))))))

(declare-fun b!2945666 () Bool)

(assert (=> b!2945666 (= e!1855806 EmptyLang!9131)))

(declare-fun b!2945667 () Bool)

(assert (=> b!2945667 (= e!1855805 e!1855804)))

(assert (=> b!2945667 (= c!481831 ((_ is Star!9131) (regTwo!18774 r!17423)))))

(declare-fun b!2945668 () Bool)

(assert (=> b!2945668 (= e!1855810 call!194256)))

(assert (= (and d!840543 c!481826) b!2945666))

(assert (= (and d!840543 (not c!481826)) b!2945644))

(assert (= (and b!2945644 c!481825) b!2945659))

(assert (= (and b!2945644 (not c!481825)) b!2945647))

(assert (= (and b!2945647 c!481832) b!2945665))

(assert (= (and b!2945647 (not c!481832)) b!2945667))

(assert (= (and b!2945667 c!481831) b!2945648))

(assert (= (and b!2945667 (not c!481831)) b!2945649))

(assert (= (and b!2945648 (not res!1215702)) b!2945656))

(assert (= (and b!2945648 c!481834) b!2945650))

(assert (= (and b!2945648 (not c!481834)) b!2945651))

(assert (= (and b!2945649 c!481827) b!2945645))

(assert (= (and b!2945649 (not c!481827)) b!2945661))

(assert (= (and b!2945645 c!481824) b!2945662))

(assert (= (and b!2945645 (not c!481824)) b!2945657))

(assert (= (and b!2945657 c!481829) b!2945660))

(assert (= (and b!2945657 (not c!481829)) b!2945654))

(assert (= (and b!2945661 (not res!1215700)) b!2945668))

(assert (= (and b!2945661 c!481830) b!2945663))

(assert (= (and b!2945661 (not c!481830)) b!2945664))

(assert (= (and b!2945664 c!481828) b!2945653))

(assert (= (and b!2945664 (not c!481828)) b!2945655))

(assert (= (and b!2945655 c!481833) b!2945646))

(assert (= (and b!2945655 (not c!481833)) b!2945658))

(assert (= (or b!2945645 b!2945661) bm!194256))

(assert (= (or b!2945645 b!2945661) bm!194257))

(assert (= (or b!2945657 b!2945668) bm!194255))

(assert (= (or b!2945645 b!2945661) bm!194253))

(assert (= (or b!2945656 b!2945664) bm!194254))

(assert (= (or b!2945648 bm!194256) bm!194251))

(assert (= (or b!2945648 bm!194253) bm!194252))

(assert (= (and d!840543 res!1215701) b!2945652))

(declare-fun m!3327681 () Bool)

(assert (=> bm!194257 m!3327681))

(declare-fun m!3327683 () Bool)

(assert (=> bm!194252 m!3327683))

(declare-fun m!3327685 () Bool)

(assert (=> b!2945655 m!3327685))

(declare-fun m!3327687 () Bool)

(assert (=> bm!194251 m!3327687))

(declare-fun m!3327689 () Bool)

(assert (=> bm!194254 m!3327689))

(declare-fun m!3327691 () Bool)

(assert (=> bm!194255 m!3327691))

(declare-fun m!3327693 () Bool)

(assert (=> b!2945652 m!3327693))

(declare-fun m!3327695 () Bool)

(assert (=> b!2945652 m!3327695))

(declare-fun m!3327697 () Bool)

(assert (=> d!840543 m!3327697))

(declare-fun m!3327699 () Bool)

(assert (=> d!840543 m!3327699))

(assert (=> b!2945213 d!840543))

(declare-fun bm!194258 () Bool)

(declare-fun c!481842 () Bool)

(declare-fun call!194266 () Regex!9131)

(declare-fun c!481838 () Bool)

(assert (=> bm!194258 (= call!194266 (simplify!136 (ite c!481842 (reg!9460 (regOne!18774 r!17423)) (ite c!481838 (regOne!18775 (regOne!18774 r!17423)) (regTwo!18774 (regOne!18774 r!17423))))))))

(declare-fun call!194265 () Bool)

(declare-fun lt!1031168 () Regex!9131)

(declare-fun lt!1031169 () Regex!9131)

(declare-fun lt!1031166 () Regex!9131)

(declare-fun bm!194259 () Bool)

(assert (=> bm!194259 (= call!194265 (isEmptyLang!253 (ite c!481842 lt!1031169 (ite c!481838 lt!1031168 lt!1031166))))))

(declare-fun bm!194260 () Bool)

(declare-fun call!194264 () Bool)

(assert (=> bm!194260 (= call!194264 call!194265)))

(declare-fun call!194268 () Bool)

(declare-fun bm!194261 () Bool)

(assert (=> bm!194261 (= call!194268 (isEmptyExpr!334 (ite c!481842 lt!1031169 lt!1031166)))))

(declare-fun b!2945669 () Bool)

(declare-fun e!1855820 () Regex!9131)

(declare-fun e!1855811 () Regex!9131)

(assert (=> b!2945669 (= e!1855820 e!1855811)))

(declare-fun c!481836 () Bool)

(assert (=> b!2945669 (= c!481836 ((_ is ElementMatch!9131) (regOne!18774 r!17423)))))

(declare-fun b!2945670 () Bool)

(declare-fun e!1855814 () Regex!9131)

(declare-fun e!1855821 () Regex!9131)

(assert (=> b!2945670 (= e!1855814 e!1855821)))

(declare-fun call!194269 () Regex!9131)

(assert (=> b!2945670 (= lt!1031168 call!194269)))

(declare-fun lt!1031167 () Regex!9131)

(declare-fun call!194267 () Regex!9131)

(assert (=> b!2945670 (= lt!1031167 call!194267)))

(declare-fun c!481835 () Bool)

(assert (=> b!2945670 (= c!481835 call!194264)))

(declare-fun b!2945671 () Bool)

(declare-fun e!1855823 () Regex!9131)

(assert (=> b!2945671 (= e!1855823 lt!1031166)))

(declare-fun b!2945672 () Bool)

(declare-fun c!481843 () Bool)

(assert (=> b!2945672 (= c!481843 ((_ is EmptyExpr!9131) (regOne!18774 r!17423)))))

(declare-fun e!1855819 () Regex!9131)

(assert (=> b!2945672 (= e!1855811 e!1855819)))

(declare-fun b!2945673 () Bool)

(declare-fun c!481845 () Bool)

(declare-fun e!1855822 () Bool)

(assert (=> b!2945673 (= c!481845 e!1855822)))

(declare-fun res!1215705 () Bool)

(assert (=> b!2945673 (=> res!1215705 e!1855822)))

(assert (=> b!2945673 (= res!1215705 call!194265)))

(assert (=> b!2945673 (= lt!1031169 call!194266)))

(declare-fun e!1855818 () Regex!9131)

(declare-fun e!1855813 () Regex!9131)

(assert (=> b!2945673 (= e!1855818 e!1855813)))

(declare-fun bm!194262 () Bool)

(declare-fun lt!1031170 () Regex!9131)

(declare-fun call!194263 () Bool)

(assert (=> bm!194262 (= call!194263 (isEmptyLang!253 (ite c!481838 lt!1031167 lt!1031170)))))

(declare-fun b!2945674 () Bool)

(assert (=> b!2945674 (= c!481838 ((_ is Union!9131) (regOne!18774 r!17423)))))

(assert (=> b!2945674 (= e!1855818 e!1855814)))

(declare-fun b!2945675 () Bool)

(assert (=> b!2945675 (= e!1855813 EmptyExpr!9131)))

(declare-fun b!2945676 () Bool)

(assert (=> b!2945676 (= e!1855813 (Star!9131 lt!1031169))))

(declare-fun b!2945677 () Bool)

(declare-fun e!1855817 () Bool)

(declare-fun lt!1031171 () Regex!9131)

(assert (=> b!2945677 (= e!1855817 (= (nullable!2893 lt!1031171) (nullable!2893 (regOne!18774 r!17423))))))

(declare-fun b!2945678 () Bool)

(declare-fun e!1855815 () Regex!9131)

(assert (=> b!2945678 (= e!1855815 lt!1031170)))

(declare-fun b!2945679 () Bool)

(declare-fun e!1855812 () Regex!9131)

(assert (=> b!2945679 (= e!1855812 (Union!9131 lt!1031168 lt!1031167))))

(declare-fun b!2945680 () Bool)

(assert (=> b!2945680 (= e!1855815 e!1855823)))

(declare-fun c!481844 () Bool)

(assert (=> b!2945680 (= c!481844 (isEmptyExpr!334 lt!1031170))))

(declare-fun b!2945681 () Bool)

(assert (=> b!2945681 (= e!1855822 call!194268)))

(declare-fun b!2945682 () Bool)

(declare-fun c!481840 () Bool)

(assert (=> b!2945682 (= c!481840 call!194263)))

(assert (=> b!2945682 (= e!1855821 e!1855812)))

(declare-fun b!2945683 () Bool)

(assert (=> b!2945683 (= e!1855823 (Concat!14452 lt!1031166 lt!1031170))))

(declare-fun b!2945684 () Bool)

(assert (=> b!2945684 (= e!1855811 (regOne!18774 r!17423))))

(declare-fun b!2945685 () Bool)

(assert (=> b!2945685 (= e!1855812 lt!1031168)))

(declare-fun b!2945686 () Bool)

(declare-fun e!1855816 () Regex!9131)

(assert (=> b!2945686 (= e!1855814 e!1855816)))

(assert (=> b!2945686 (= lt!1031166 call!194267)))

(assert (=> b!2945686 (= lt!1031170 call!194269)))

(declare-fun res!1215703 () Bool)

(assert (=> b!2945686 (= res!1215703 call!194264)))

(declare-fun e!1855824 () Bool)

(assert (=> b!2945686 (=> res!1215703 e!1855824)))

(declare-fun c!481841 () Bool)

(assert (=> b!2945686 (= c!481841 e!1855824)))

(declare-fun b!2945687 () Bool)

(assert (=> b!2945687 (= e!1855821 lt!1031167)))

(declare-fun bm!194263 () Bool)

(assert (=> bm!194263 (= call!194269 call!194266)))

(declare-fun b!2945688 () Bool)

(assert (=> b!2945688 (= e!1855816 EmptyLang!9131)))

(declare-fun d!840545 () Bool)

(assert (=> d!840545 e!1855817))

(declare-fun res!1215704 () Bool)

(assert (=> d!840545 (=> (not res!1215704) (not e!1855817))))

(assert (=> d!840545 (= res!1215704 (validRegex!3864 lt!1031171))))

(assert (=> d!840545 (= lt!1031171 e!1855820)))

(declare-fun c!481837 () Bool)

(assert (=> d!840545 (= c!481837 ((_ is EmptyLang!9131) (regOne!18774 r!17423)))))

(assert (=> d!840545 (validRegex!3864 (regOne!18774 r!17423))))

(assert (=> d!840545 (= (simplify!136 (regOne!18774 r!17423)) lt!1031171)))

(declare-fun b!2945689 () Bool)

(declare-fun c!481839 () Bool)

(assert (=> b!2945689 (= c!481839 call!194268)))

(assert (=> b!2945689 (= e!1855816 e!1855815)))

(declare-fun b!2945690 () Bool)

(assert (=> b!2945690 (= e!1855819 EmptyExpr!9131)))

(declare-fun bm!194264 () Bool)

(assert (=> bm!194264 (= call!194267 (simplify!136 (ite c!481838 (regTwo!18775 (regOne!18774 r!17423)) (regOne!18774 (regOne!18774 r!17423)))))))

(declare-fun b!2945691 () Bool)

(assert (=> b!2945691 (= e!1855820 EmptyLang!9131)))

(declare-fun b!2945692 () Bool)

(assert (=> b!2945692 (= e!1855819 e!1855818)))

(assert (=> b!2945692 (= c!481842 ((_ is Star!9131) (regOne!18774 r!17423)))))

(declare-fun b!2945693 () Bool)

(assert (=> b!2945693 (= e!1855824 call!194263)))

(assert (= (and d!840545 c!481837) b!2945691))

(assert (= (and d!840545 (not c!481837)) b!2945669))

(assert (= (and b!2945669 c!481836) b!2945684))

(assert (= (and b!2945669 (not c!481836)) b!2945672))

(assert (= (and b!2945672 c!481843) b!2945690))

(assert (= (and b!2945672 (not c!481843)) b!2945692))

(assert (= (and b!2945692 c!481842) b!2945673))

(assert (= (and b!2945692 (not c!481842)) b!2945674))

(assert (= (and b!2945673 (not res!1215705)) b!2945681))

(assert (= (and b!2945673 c!481845) b!2945675))

(assert (= (and b!2945673 (not c!481845)) b!2945676))

(assert (= (and b!2945674 c!481838) b!2945670))

(assert (= (and b!2945674 (not c!481838)) b!2945686))

(assert (= (and b!2945670 c!481835) b!2945687))

(assert (= (and b!2945670 (not c!481835)) b!2945682))

(assert (= (and b!2945682 c!481840) b!2945685))

(assert (= (and b!2945682 (not c!481840)) b!2945679))

(assert (= (and b!2945686 (not res!1215703)) b!2945693))

(assert (= (and b!2945686 c!481841) b!2945688))

(assert (= (and b!2945686 (not c!481841)) b!2945689))

(assert (= (and b!2945689 c!481839) b!2945678))

(assert (= (and b!2945689 (not c!481839)) b!2945680))

(assert (= (and b!2945680 c!481844) b!2945671))

(assert (= (and b!2945680 (not c!481844)) b!2945683))

(assert (= (or b!2945670 b!2945686) bm!194263))

(assert (= (or b!2945670 b!2945686) bm!194264))

(assert (= (or b!2945682 b!2945693) bm!194262))

(assert (= (or b!2945670 b!2945686) bm!194260))

(assert (= (or b!2945681 b!2945689) bm!194261))

(assert (= (or b!2945673 bm!194263) bm!194258))

(assert (= (or b!2945673 bm!194260) bm!194259))

(assert (= (and d!840545 res!1215704) b!2945677))

(declare-fun m!3327701 () Bool)

(assert (=> bm!194264 m!3327701))

(declare-fun m!3327703 () Bool)

(assert (=> bm!194259 m!3327703))

(declare-fun m!3327705 () Bool)

(assert (=> b!2945680 m!3327705))

(declare-fun m!3327707 () Bool)

(assert (=> bm!194258 m!3327707))

(declare-fun m!3327709 () Bool)

(assert (=> bm!194261 m!3327709))

(declare-fun m!3327711 () Bool)

(assert (=> bm!194262 m!3327711))

(declare-fun m!3327713 () Bool)

(assert (=> b!2945677 m!3327713))

(declare-fun m!3327715 () Bool)

(assert (=> b!2945677 m!3327715))

(declare-fun m!3327717 () Bool)

(assert (=> d!840545 m!3327717))

(assert (=> d!840545 m!3327573))

(assert (=> b!2945213 d!840545))

(declare-fun d!840547 () Bool)

(assert (=> d!840547 (= (isEmpty!19133 s!11993) ((_ is Nil!34872) s!11993))))

(assert (=> b!2945208 d!840547))

(declare-fun b!2945694 () Bool)

(declare-fun e!1855830 () Bool)

(declare-fun call!194270 () Bool)

(assert (=> b!2945694 (= e!1855830 call!194270)))

(declare-fun b!2945695 () Bool)

(declare-fun e!1855831 () Bool)

(declare-fun e!1855828 () Bool)

(assert (=> b!2945695 (= e!1855831 e!1855828)))

(declare-fun c!481846 () Bool)

(assert (=> b!2945695 (= c!481846 ((_ is Union!9131) r!17423))))

(declare-fun b!2945696 () Bool)

(declare-fun e!1855829 () Bool)

(assert (=> b!2945696 (= e!1855829 e!1855831)))

(declare-fun c!481847 () Bool)

(assert (=> b!2945696 (= c!481847 ((_ is Star!9131) r!17423))))

(declare-fun b!2945697 () Bool)

(declare-fun e!1855825 () Bool)

(declare-fun call!194271 () Bool)

(assert (=> b!2945697 (= e!1855825 call!194271)))

(declare-fun b!2945698 () Bool)

(declare-fun res!1215707 () Bool)

(declare-fun e!1855827 () Bool)

(assert (=> b!2945698 (=> res!1215707 e!1855827)))

(assert (=> b!2945698 (= res!1215707 (not ((_ is Concat!14452) r!17423)))))

(assert (=> b!2945698 (= e!1855828 e!1855827)))

(declare-fun d!840549 () Bool)

(declare-fun res!1215710 () Bool)

(assert (=> d!840549 (=> res!1215710 e!1855829)))

(assert (=> d!840549 (= res!1215710 ((_ is ElementMatch!9131) r!17423))))

(assert (=> d!840549 (= (validRegex!3864 r!17423) e!1855829)))

(declare-fun b!2945699 () Bool)

(declare-fun e!1855826 () Bool)

(assert (=> b!2945699 (= e!1855831 e!1855826)))

(declare-fun res!1215708 () Bool)

(assert (=> b!2945699 (= res!1215708 (not (nullable!2893 (reg!9460 r!17423))))))

(assert (=> b!2945699 (=> (not res!1215708) (not e!1855826))))

(declare-fun b!2945700 () Bool)

(declare-fun res!1215709 () Bool)

(assert (=> b!2945700 (=> (not res!1215709) (not e!1855830))))

(assert (=> b!2945700 (= res!1215709 call!194271)))

(assert (=> b!2945700 (= e!1855828 e!1855830)))

(declare-fun bm!194265 () Bool)

(assert (=> bm!194265 (= call!194270 (validRegex!3864 (ite c!481846 (regTwo!18775 r!17423) (regOne!18774 r!17423))))))

(declare-fun bm!194266 () Bool)

(declare-fun call!194272 () Bool)

(assert (=> bm!194266 (= call!194271 call!194272)))

(declare-fun bm!194267 () Bool)

(assert (=> bm!194267 (= call!194272 (validRegex!3864 (ite c!481847 (reg!9460 r!17423) (ite c!481846 (regOne!18775 r!17423) (regTwo!18774 r!17423)))))))

(declare-fun b!2945701 () Bool)

(assert (=> b!2945701 (= e!1855827 e!1855825)))

(declare-fun res!1215706 () Bool)

(assert (=> b!2945701 (=> (not res!1215706) (not e!1855825))))

(assert (=> b!2945701 (= res!1215706 call!194270)))

(declare-fun b!2945702 () Bool)

(assert (=> b!2945702 (= e!1855826 call!194272)))

(assert (= (and d!840549 (not res!1215710)) b!2945696))

(assert (= (and b!2945696 c!481847) b!2945699))

(assert (= (and b!2945696 (not c!481847)) b!2945695))

(assert (= (and b!2945699 res!1215708) b!2945702))

(assert (= (and b!2945695 c!481846) b!2945700))

(assert (= (and b!2945695 (not c!481846)) b!2945698))

(assert (= (and b!2945700 res!1215709) b!2945694))

(assert (= (and b!2945698 (not res!1215707)) b!2945701))

(assert (= (and b!2945701 res!1215706) b!2945697))

(assert (= (or b!2945700 b!2945697) bm!194266))

(assert (= (or b!2945694 b!2945701) bm!194265))

(assert (= (or b!2945702 bm!194266) bm!194267))

(declare-fun m!3327719 () Bool)

(assert (=> b!2945699 m!3327719))

(declare-fun m!3327721 () Bool)

(assert (=> bm!194265 m!3327721))

(declare-fun m!3327723 () Bool)

(assert (=> bm!194267 m!3327723))

(assert (=> start!285852 d!840549))

(declare-fun d!840551 () Bool)

(assert (=> d!840551 (= (isEmptyExpr!334 lt!1031109) ((_ is EmptyExpr!9131) lt!1031109))))

(assert (=> b!2945209 d!840551))

(declare-fun d!840553 () Bool)

(assert (=> d!840553 (= (isEmptyLang!253 lt!1031111) ((_ is EmptyLang!9131) lt!1031111))))

(assert (=> b!2945214 d!840553))

(declare-fun e!1855834 () Bool)

(assert (=> b!2945215 (= tp!942188 e!1855834)))

(declare-fun b!2945714 () Bool)

(declare-fun tp!942241 () Bool)

(declare-fun tp!942242 () Bool)

(assert (=> b!2945714 (= e!1855834 (and tp!942241 tp!942242))))

(declare-fun b!2945715 () Bool)

(declare-fun tp!942240 () Bool)

(assert (=> b!2945715 (= e!1855834 tp!942240)))

(declare-fun b!2945716 () Bool)

(declare-fun tp!942239 () Bool)

(declare-fun tp!942238 () Bool)

(assert (=> b!2945716 (= e!1855834 (and tp!942239 tp!942238))))

(declare-fun b!2945713 () Bool)

(assert (=> b!2945713 (= e!1855834 tp_is_empty!15825)))

(assert (= (and b!2945215 ((_ is ElementMatch!9131) (regOne!18774 r!17423))) b!2945713))

(assert (= (and b!2945215 ((_ is Concat!14452) (regOne!18774 r!17423))) b!2945714))

(assert (= (and b!2945215 ((_ is Star!9131) (regOne!18774 r!17423))) b!2945715))

(assert (= (and b!2945215 ((_ is Union!9131) (regOne!18774 r!17423))) b!2945716))

(declare-fun e!1855835 () Bool)

(assert (=> b!2945215 (= tp!942186 e!1855835)))

(declare-fun b!2945718 () Bool)

(declare-fun tp!942246 () Bool)

(declare-fun tp!942247 () Bool)

(assert (=> b!2945718 (= e!1855835 (and tp!942246 tp!942247))))

(declare-fun b!2945719 () Bool)

(declare-fun tp!942245 () Bool)

(assert (=> b!2945719 (= e!1855835 tp!942245)))

(declare-fun b!2945720 () Bool)

(declare-fun tp!942244 () Bool)

(declare-fun tp!942243 () Bool)

(assert (=> b!2945720 (= e!1855835 (and tp!942244 tp!942243))))

(declare-fun b!2945717 () Bool)

(assert (=> b!2945717 (= e!1855835 tp_is_empty!15825)))

(assert (= (and b!2945215 ((_ is ElementMatch!9131) (regTwo!18774 r!17423))) b!2945717))

(assert (= (and b!2945215 ((_ is Concat!14452) (regTwo!18774 r!17423))) b!2945718))

(assert (= (and b!2945215 ((_ is Star!9131) (regTwo!18774 r!17423))) b!2945719))

(assert (= (and b!2945215 ((_ is Union!9131) (regTwo!18774 r!17423))) b!2945720))

(declare-fun e!1855836 () Bool)

(assert (=> b!2945210 (= tp!942189 e!1855836)))

(declare-fun b!2945722 () Bool)

(declare-fun tp!942251 () Bool)

(declare-fun tp!942252 () Bool)

(assert (=> b!2945722 (= e!1855836 (and tp!942251 tp!942252))))

(declare-fun b!2945723 () Bool)

(declare-fun tp!942250 () Bool)

(assert (=> b!2945723 (= e!1855836 tp!942250)))

(declare-fun b!2945724 () Bool)

(declare-fun tp!942249 () Bool)

(declare-fun tp!942248 () Bool)

(assert (=> b!2945724 (= e!1855836 (and tp!942249 tp!942248))))

(declare-fun b!2945721 () Bool)

(assert (=> b!2945721 (= e!1855836 tp_is_empty!15825)))

(assert (= (and b!2945210 ((_ is ElementMatch!9131) (regOne!18775 r!17423))) b!2945721))

(assert (= (and b!2945210 ((_ is Concat!14452) (regOne!18775 r!17423))) b!2945722))

(assert (= (and b!2945210 ((_ is Star!9131) (regOne!18775 r!17423))) b!2945723))

(assert (= (and b!2945210 ((_ is Union!9131) (regOne!18775 r!17423))) b!2945724))

(declare-fun e!1855837 () Bool)

(assert (=> b!2945210 (= tp!942187 e!1855837)))

(declare-fun b!2945726 () Bool)

(declare-fun tp!942256 () Bool)

(declare-fun tp!942257 () Bool)

(assert (=> b!2945726 (= e!1855837 (and tp!942256 tp!942257))))

(declare-fun b!2945727 () Bool)

(declare-fun tp!942255 () Bool)

(assert (=> b!2945727 (= e!1855837 tp!942255)))

(declare-fun b!2945728 () Bool)

(declare-fun tp!942254 () Bool)

(declare-fun tp!942253 () Bool)

(assert (=> b!2945728 (= e!1855837 (and tp!942254 tp!942253))))

(declare-fun b!2945725 () Bool)

(assert (=> b!2945725 (= e!1855837 tp_is_empty!15825)))

(assert (= (and b!2945210 ((_ is ElementMatch!9131) (regTwo!18775 r!17423))) b!2945725))

(assert (= (and b!2945210 ((_ is Concat!14452) (regTwo!18775 r!17423))) b!2945726))

(assert (= (and b!2945210 ((_ is Star!9131) (regTwo!18775 r!17423))) b!2945727))

(assert (= (and b!2945210 ((_ is Union!9131) (regTwo!18775 r!17423))) b!2945728))

(declare-fun e!1855838 () Bool)

(assert (=> b!2945217 (= tp!942184 e!1855838)))

(declare-fun b!2945730 () Bool)

(declare-fun tp!942261 () Bool)

(declare-fun tp!942262 () Bool)

(assert (=> b!2945730 (= e!1855838 (and tp!942261 tp!942262))))

(declare-fun b!2945731 () Bool)

(declare-fun tp!942260 () Bool)

(assert (=> b!2945731 (= e!1855838 tp!942260)))

(declare-fun b!2945732 () Bool)

(declare-fun tp!942259 () Bool)

(declare-fun tp!942258 () Bool)

(assert (=> b!2945732 (= e!1855838 (and tp!942259 tp!942258))))

(declare-fun b!2945729 () Bool)

(assert (=> b!2945729 (= e!1855838 tp_is_empty!15825)))

(assert (= (and b!2945217 ((_ is ElementMatch!9131) (reg!9460 r!17423))) b!2945729))

(assert (= (and b!2945217 ((_ is Concat!14452) (reg!9460 r!17423))) b!2945730))

(assert (= (and b!2945217 ((_ is Star!9131) (reg!9460 r!17423))) b!2945731))

(assert (= (and b!2945217 ((_ is Union!9131) (reg!9460 r!17423))) b!2945732))

(declare-fun b!2945737 () Bool)

(declare-fun e!1855841 () Bool)

(declare-fun tp!942265 () Bool)

(assert (=> b!2945737 (= e!1855841 (and tp_is_empty!15825 tp!942265))))

(assert (=> b!2945207 (= tp!942185 e!1855841)))

(assert (= (and b!2945207 ((_ is Cons!34872) (t!234061 s!11993))) b!2945737))

(check-sat (not bm!194236) (not b!2945554) (not b!2945680) (not b!2945564) (not b!2945726) (not d!840535) (not b!2945722) (not bm!194227) (not b!2945565) (not bm!194251) (not b!2945515) tp_is_empty!15825 (not b!2945699) (not b!2945655) (not b!2945715) (not d!840545) (not bm!194259) (not b!2945727) (not bm!194252) (not bm!194261) (not b!2945714) (not b!2945718) (not bm!194223) (not b!2945720) (not bm!194265) (not b!2945652) (not d!840533) (not bm!194267) (not bm!194234) (not b!2945723) (not b!2945728) (not bm!194257) (not bm!194258) (not b!2945590) (not b!2945737) (not bm!194224) (not b!2945677) (not b!2945520) (not bm!194262) (not b!2945719) (not b!2945566) (not b!2945730) (not b!2945732) (not bm!194255) (not b!2945557) (not b!2945561) (not b!2945724) (not d!840543) (not b!2945716) (not bm!194264) (not b!2945731) (not bm!194254))
(check-sat)
