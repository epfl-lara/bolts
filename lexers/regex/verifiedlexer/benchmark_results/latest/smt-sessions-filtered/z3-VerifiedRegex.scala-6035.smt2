; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295132 () Bool)

(assert start!295132)

(declare-fun b!3118984 () Bool)

(declare-fun e!1947699 () Bool)

(declare-fun tp!977789 () Bool)

(assert (=> b!3118984 (= e!1947699 tp!977789)))

(declare-fun b!3118985 () Bool)

(declare-fun e!1947696 () Bool)

(declare-fun e!1947695 () Bool)

(assert (=> b!3118985 (= e!1947696 e!1947695)))

(declare-fun res!1276418 () Bool)

(assert (=> b!3118985 (=> res!1276418 e!1947695)))

(declare-datatypes ((C!19428 0))(
  ( (C!19429 (val!11750 Int)) )
))
(declare-datatypes ((Regex!9621 0))(
  ( (ElementMatch!9621 (c!522651 C!19428)) (Concat!14942 (regOne!19754 Regex!9621) (regTwo!19754 Regex!9621)) (EmptyExpr!9621) (Star!9621 (reg!9950 Regex!9621)) (EmptyLang!9621) (Union!9621 (regOne!19755 Regex!9621) (regTwo!19755 Regex!9621)) )
))
(declare-fun lt!1058741 () Regex!9621)

(declare-datatypes ((List!35486 0))(
  ( (Nil!35362) (Cons!35362 (h!40782 C!19428) (t!234551 List!35486)) )
))
(declare-fun s!11993 () List!35486)

(declare-fun matchR!4503 (Regex!9621 List!35486) Bool)

(assert (=> b!3118985 (= res!1276418 (not (matchR!4503 lt!1058741 s!11993)))))

(declare-fun lt!1058743 () Regex!9621)

(assert (=> b!3118985 (= lt!1058741 (Star!9621 lt!1058743))))

(declare-fun b!3118986 () Bool)

(declare-fun tp!977784 () Bool)

(declare-fun tp!977788 () Bool)

(assert (=> b!3118986 (= e!1947699 (and tp!977784 tp!977788))))

(declare-fun b!3118987 () Bool)

(declare-fun e!1947697 () Bool)

(assert (=> b!3118987 (= e!1947697 e!1947696)))

(declare-fun res!1276415 () Bool)

(assert (=> b!3118987 (=> res!1276415 e!1947696)))

(declare-fun isEmptyLang!672 (Regex!9621) Bool)

(assert (=> b!3118987 (= res!1276415 (isEmptyLang!672 lt!1058743))))

(declare-fun r!17423 () Regex!9621)

(declare-fun simplify!576 (Regex!9621) Regex!9621)

(assert (=> b!3118987 (= lt!1058743 (simplify!576 (reg!9950 r!17423)))))

(declare-fun b!3118988 () Bool)

(declare-fun e!1947693 () Bool)

(assert (=> b!3118988 (= e!1947693 (not e!1947697))))

(declare-fun res!1276416 () Bool)

(assert (=> b!3118988 (=> res!1276416 e!1947697)))

(declare-fun lt!1058744 () Bool)

(get-info :version)

(assert (=> b!3118988 (= res!1276416 (or lt!1058744 ((_ is Concat!14942) r!17423) ((_ is Union!9621) r!17423) (not ((_ is Star!9621) r!17423))))))

(declare-fun matchRSpec!1758 (Regex!9621 List!35486) Bool)

(assert (=> b!3118988 (= lt!1058744 (matchRSpec!1758 r!17423 s!11993))))

(assert (=> b!3118988 (= lt!1058744 (matchR!4503 r!17423 s!11993))))

(declare-datatypes ((Unit!49681 0))(
  ( (Unit!49682) )
))
(declare-fun lt!1058742 () Unit!49681)

(declare-fun mainMatchTheorem!1758 (Regex!9621 List!35486) Unit!49681)

(assert (=> b!3118988 (= lt!1058742 (mainMatchTheorem!1758 r!17423 s!11993))))

(declare-fun res!1276417 () Bool)

(assert (=> start!295132 (=> (not res!1276417) (not e!1947693))))

(declare-fun validRegex!4354 (Regex!9621) Bool)

(assert (=> start!295132 (= res!1276417 (validRegex!4354 r!17423))))

(assert (=> start!295132 e!1947693))

(assert (=> start!295132 e!1947699))

(declare-fun e!1947698 () Bool)

(assert (=> start!295132 e!1947698))

(declare-fun b!3118989 () Bool)

(declare-fun e!1947694 () Bool)

(assert (=> b!3118989 (= e!1947695 e!1947694)))

(declare-fun res!1276414 () Bool)

(assert (=> b!3118989 (=> res!1276414 e!1947694)))

(declare-fun isEmpty!19705 (List!35486) Bool)

(assert (=> b!3118989 (= res!1276414 (isEmpty!19705 s!11993))))

(assert (=> b!3118989 (matchRSpec!1758 lt!1058741 s!11993)))

(declare-fun lt!1058740 () Unit!49681)

(assert (=> b!3118989 (= lt!1058740 (mainMatchTheorem!1758 lt!1058741 s!11993))))

(declare-fun b!3118990 () Bool)

(assert (=> b!3118990 (= e!1947694 (validRegex!4354 lt!1058743))))

(declare-fun b!3118991 () Bool)

(declare-fun tp_is_empty!16805 () Bool)

(assert (=> b!3118991 (= e!1947699 tp_is_empty!16805)))

(declare-fun b!3118992 () Bool)

(declare-fun tp!977787 () Bool)

(declare-fun tp!977785 () Bool)

(assert (=> b!3118992 (= e!1947699 (and tp!977787 tp!977785))))

(declare-fun b!3118993 () Bool)

(declare-fun tp!977786 () Bool)

(assert (=> b!3118993 (= e!1947698 (and tp_is_empty!16805 tp!977786))))

(assert (= (and start!295132 res!1276417) b!3118988))

(assert (= (and b!3118988 (not res!1276416)) b!3118987))

(assert (= (and b!3118987 (not res!1276415)) b!3118985))

(assert (= (and b!3118985 (not res!1276418)) b!3118989))

(assert (= (and b!3118989 (not res!1276414)) b!3118990))

(assert (= (and start!295132 ((_ is ElementMatch!9621) r!17423)) b!3118991))

(assert (= (and start!295132 ((_ is Concat!14942) r!17423)) b!3118986))

(assert (= (and start!295132 ((_ is Star!9621) r!17423)) b!3118984))

(assert (= (and start!295132 ((_ is Union!9621) r!17423)) b!3118992))

(assert (= (and start!295132 ((_ is Cons!35362) s!11993)) b!3118993))

(declare-fun m!3407471 () Bool)

(assert (=> b!3118989 m!3407471))

(declare-fun m!3407473 () Bool)

(assert (=> b!3118989 m!3407473))

(declare-fun m!3407475 () Bool)

(assert (=> b!3118989 m!3407475))

(declare-fun m!3407477 () Bool)

(assert (=> b!3118988 m!3407477))

(declare-fun m!3407479 () Bool)

(assert (=> b!3118988 m!3407479))

(declare-fun m!3407481 () Bool)

(assert (=> b!3118988 m!3407481))

(declare-fun m!3407483 () Bool)

(assert (=> b!3118990 m!3407483))

(declare-fun m!3407485 () Bool)

(assert (=> start!295132 m!3407485))

(declare-fun m!3407487 () Bool)

(assert (=> b!3118985 m!3407487))

(declare-fun m!3407489 () Bool)

(assert (=> b!3118987 m!3407489))

(declare-fun m!3407491 () Bool)

(assert (=> b!3118987 m!3407491))

(check-sat (not b!3118987) (not b!3118992) (not b!3118993) (not b!3118988) (not b!3118990) (not b!3118986) (not b!3118984) (not start!295132) (not b!3118989) tp_is_empty!16805 (not b!3118985))
(check-sat)
(get-model)

(declare-fun d!862350 () Bool)

(declare-fun e!1947728 () Bool)

(assert (=> d!862350 e!1947728))

(declare-fun c!522666 () Bool)

(assert (=> d!862350 (= c!522666 ((_ is EmptyExpr!9621) lt!1058741))))

(declare-fun lt!1058747 () Bool)

(declare-fun e!1947730 () Bool)

(assert (=> d!862350 (= lt!1058747 e!1947730)))

(declare-fun c!522667 () Bool)

(assert (=> d!862350 (= c!522667 (isEmpty!19705 s!11993))))

(assert (=> d!862350 (validRegex!4354 lt!1058741)))

(assert (=> d!862350 (= (matchR!4503 lt!1058741 s!11993) lt!1058747)))

(declare-fun b!3119044 () Bool)

(declare-fun e!1947733 () Bool)

(declare-fun head!6913 (List!35486) C!19428)

(assert (=> b!3119044 (= e!1947733 (= (head!6913 s!11993) (c!522651 lt!1058741)))))

(declare-fun b!3119045 () Bool)

(declare-fun derivativeStep!2854 (Regex!9621 C!19428) Regex!9621)

(declare-fun tail!5139 (List!35486) List!35486)

(assert (=> b!3119045 (= e!1947730 (matchR!4503 (derivativeStep!2854 lt!1058741 (head!6913 s!11993)) (tail!5139 s!11993)))))

(declare-fun b!3119046 () Bool)

(declare-fun res!1276448 () Bool)

(assert (=> b!3119046 (=> (not res!1276448) (not e!1947733))))

(declare-fun call!221535 () Bool)

(assert (=> b!3119046 (= res!1276448 (not call!221535))))

(declare-fun b!3119047 () Bool)

(declare-fun res!1276443 () Bool)

(assert (=> b!3119047 (=> (not res!1276443) (not e!1947733))))

(assert (=> b!3119047 (= res!1276443 (isEmpty!19705 (tail!5139 s!11993)))))

(declare-fun b!3119048 () Bool)

(declare-fun e!1947734 () Bool)

(assert (=> b!3119048 (= e!1947728 e!1947734)))

(declare-fun c!522668 () Bool)

(assert (=> b!3119048 (= c!522668 ((_ is EmptyLang!9621) lt!1058741))))

(declare-fun b!3119049 () Bool)

(declare-fun e!1947729 () Bool)

(assert (=> b!3119049 (= e!1947729 (not (= (head!6913 s!11993) (c!522651 lt!1058741))))))

(declare-fun b!3119050 () Bool)

(declare-fun e!1947731 () Bool)

(declare-fun e!1947732 () Bool)

(assert (=> b!3119050 (= e!1947731 e!1947732)))

(declare-fun res!1276446 () Bool)

(assert (=> b!3119050 (=> (not res!1276446) (not e!1947732))))

(assert (=> b!3119050 (= res!1276446 (not lt!1058747))))

(declare-fun b!3119051 () Bool)

(assert (=> b!3119051 (= e!1947728 (= lt!1058747 call!221535))))

(declare-fun b!3119052 () Bool)

(declare-fun nullable!3259 (Regex!9621) Bool)

(assert (=> b!3119052 (= e!1947730 (nullable!3259 lt!1058741))))

(declare-fun b!3119053 () Bool)

(declare-fun res!1276444 () Bool)

(assert (=> b!3119053 (=> res!1276444 e!1947731)))

(assert (=> b!3119053 (= res!1276444 e!1947733)))

(declare-fun res!1276441 () Bool)

(assert (=> b!3119053 (=> (not res!1276441) (not e!1947733))))

(assert (=> b!3119053 (= res!1276441 lt!1058747)))

(declare-fun b!3119054 () Bool)

(assert (=> b!3119054 (= e!1947734 (not lt!1058747))))

(declare-fun b!3119055 () Bool)

(declare-fun res!1276445 () Bool)

(assert (=> b!3119055 (=> res!1276445 e!1947729)))

(assert (=> b!3119055 (= res!1276445 (not (isEmpty!19705 (tail!5139 s!11993))))))

(declare-fun b!3119056 () Bool)

(assert (=> b!3119056 (= e!1947732 e!1947729)))

(declare-fun res!1276447 () Bool)

(assert (=> b!3119056 (=> res!1276447 e!1947729)))

(assert (=> b!3119056 (= res!1276447 call!221535)))

(declare-fun b!3119057 () Bool)

(declare-fun res!1276442 () Bool)

(assert (=> b!3119057 (=> res!1276442 e!1947731)))

(assert (=> b!3119057 (= res!1276442 (not ((_ is ElementMatch!9621) lt!1058741)))))

(assert (=> b!3119057 (= e!1947734 e!1947731)))

(declare-fun bm!221530 () Bool)

(assert (=> bm!221530 (= call!221535 (isEmpty!19705 s!11993))))

(assert (= (and d!862350 c!522667) b!3119052))

(assert (= (and d!862350 (not c!522667)) b!3119045))

(assert (= (and d!862350 c!522666) b!3119051))

(assert (= (and d!862350 (not c!522666)) b!3119048))

(assert (= (and b!3119048 c!522668) b!3119054))

(assert (= (and b!3119048 (not c!522668)) b!3119057))

(assert (= (and b!3119057 (not res!1276442)) b!3119053))

(assert (= (and b!3119053 res!1276441) b!3119046))

(assert (= (and b!3119046 res!1276448) b!3119047))

(assert (= (and b!3119047 res!1276443) b!3119044))

(assert (= (and b!3119053 (not res!1276444)) b!3119050))

(assert (= (and b!3119050 res!1276446) b!3119056))

(assert (= (and b!3119056 (not res!1276447)) b!3119055))

(assert (= (and b!3119055 (not res!1276445)) b!3119049))

(assert (= (or b!3119051 b!3119046 b!3119056) bm!221530))

(declare-fun m!3407493 () Bool)

(assert (=> b!3119049 m!3407493))

(assert (=> b!3119044 m!3407493))

(assert (=> d!862350 m!3407471))

(declare-fun m!3407495 () Bool)

(assert (=> d!862350 m!3407495))

(declare-fun m!3407497 () Bool)

(assert (=> b!3119052 m!3407497))

(assert (=> bm!221530 m!3407471))

(declare-fun m!3407499 () Bool)

(assert (=> b!3119047 m!3407499))

(assert (=> b!3119047 m!3407499))

(declare-fun m!3407501 () Bool)

(assert (=> b!3119047 m!3407501))

(assert (=> b!3119045 m!3407493))

(assert (=> b!3119045 m!3407493))

(declare-fun m!3407503 () Bool)

(assert (=> b!3119045 m!3407503))

(assert (=> b!3119045 m!3407499))

(assert (=> b!3119045 m!3407503))

(assert (=> b!3119045 m!3407499))

(declare-fun m!3407505 () Bool)

(assert (=> b!3119045 m!3407505))

(assert (=> b!3119055 m!3407499))

(assert (=> b!3119055 m!3407499))

(assert (=> b!3119055 m!3407501))

(assert (=> b!3118985 d!862350))

(declare-fun b!3119076 () Bool)

(declare-fun res!1276463 () Bool)

(declare-fun e!1947755 () Bool)

(assert (=> b!3119076 (=> (not res!1276463) (not e!1947755))))

(declare-fun call!221542 () Bool)

(assert (=> b!3119076 (= res!1276463 call!221542)))

(declare-fun e!1947754 () Bool)

(assert (=> b!3119076 (= e!1947754 e!1947755)))

(declare-fun b!3119077 () Bool)

(declare-fun e!1947749 () Bool)

(declare-fun e!1947751 () Bool)

(assert (=> b!3119077 (= e!1947749 e!1947751)))

(declare-fun res!1276460 () Bool)

(assert (=> b!3119077 (=> (not res!1276460) (not e!1947751))))

(declare-fun call!221543 () Bool)

(assert (=> b!3119077 (= res!1276460 call!221543)))

(declare-fun bm!221537 () Bool)

(declare-fun c!522674 () Bool)

(assert (=> bm!221537 (= call!221543 (validRegex!4354 (ite c!522674 (regTwo!19755 lt!1058743) (regOne!19754 lt!1058743))))))

(declare-fun b!3119078 () Bool)

(assert (=> b!3119078 (= e!1947751 call!221542)))

(declare-fun bm!221538 () Bool)

(declare-fun call!221544 () Bool)

(assert (=> bm!221538 (= call!221542 call!221544)))

(declare-fun b!3119079 () Bool)

(declare-fun res!1276462 () Bool)

(assert (=> b!3119079 (=> res!1276462 e!1947749)))

(assert (=> b!3119079 (= res!1276462 (not ((_ is Concat!14942) lt!1058743)))))

(assert (=> b!3119079 (= e!1947754 e!1947749)))

(declare-fun b!3119081 () Bool)

(assert (=> b!3119081 (= e!1947755 call!221543)))

(declare-fun b!3119082 () Bool)

(declare-fun e!1947753 () Bool)

(declare-fun e!1947750 () Bool)

(assert (=> b!3119082 (= e!1947753 e!1947750)))

(declare-fun res!1276459 () Bool)

(assert (=> b!3119082 (= res!1276459 (not (nullable!3259 (reg!9950 lt!1058743))))))

(assert (=> b!3119082 (=> (not res!1276459) (not e!1947750))))

(declare-fun c!522673 () Bool)

(declare-fun bm!221539 () Bool)

(assert (=> bm!221539 (= call!221544 (validRegex!4354 (ite c!522673 (reg!9950 lt!1058743) (ite c!522674 (regOne!19755 lt!1058743) (regTwo!19754 lt!1058743)))))))

(declare-fun b!3119083 () Bool)

(declare-fun e!1947752 () Bool)

(assert (=> b!3119083 (= e!1947752 e!1947753)))

(assert (=> b!3119083 (= c!522673 ((_ is Star!9621) lt!1058743))))

(declare-fun b!3119084 () Bool)

(assert (=> b!3119084 (= e!1947753 e!1947754)))

(assert (=> b!3119084 (= c!522674 ((_ is Union!9621) lt!1058743))))

(declare-fun d!862354 () Bool)

(declare-fun res!1276461 () Bool)

(assert (=> d!862354 (=> res!1276461 e!1947752)))

(assert (=> d!862354 (= res!1276461 ((_ is ElementMatch!9621) lt!1058743))))

(assert (=> d!862354 (= (validRegex!4354 lt!1058743) e!1947752)))

(declare-fun b!3119080 () Bool)

(assert (=> b!3119080 (= e!1947750 call!221544)))

(assert (= (and d!862354 (not res!1276461)) b!3119083))

(assert (= (and b!3119083 c!522673) b!3119082))

(assert (= (and b!3119083 (not c!522673)) b!3119084))

(assert (= (and b!3119082 res!1276459) b!3119080))

(assert (= (and b!3119084 c!522674) b!3119076))

(assert (= (and b!3119084 (not c!522674)) b!3119079))

(assert (= (and b!3119076 res!1276463) b!3119081))

(assert (= (and b!3119079 (not res!1276462)) b!3119077))

(assert (= (and b!3119077 res!1276460) b!3119078))

(assert (= (or b!3119076 b!3119078) bm!221538))

(assert (= (or b!3119081 b!3119077) bm!221537))

(assert (= (or b!3119080 bm!221538) bm!221539))

(declare-fun m!3407507 () Bool)

(assert (=> bm!221537 m!3407507))

(declare-fun m!3407509 () Bool)

(assert (=> b!3119082 m!3407509))

(declare-fun m!3407511 () Bool)

(assert (=> bm!221539 m!3407511))

(assert (=> b!3118990 d!862354))

(declare-fun d!862356 () Bool)

(assert (=> d!862356 (= (isEmpty!19705 s!11993) ((_ is Nil!35362) s!11993))))

(assert (=> b!3118989 d!862356))

(declare-fun b!3119356 () Bool)

(assert (=> b!3119356 true))

(assert (=> b!3119356 true))

(declare-fun bs!535900 () Bool)

(declare-fun b!3119365 () Bool)

(assert (= bs!535900 (and b!3119365 b!3119356)))

(declare-fun lambda!115210 () Int)

(declare-fun lambda!115209 () Int)

(assert (=> bs!535900 (not (= lambda!115210 lambda!115209))))

(assert (=> b!3119365 true))

(assert (=> b!3119365 true))

(declare-fun d!862358 () Bool)

(declare-fun c!522745 () Bool)

(assert (=> d!862358 (= c!522745 ((_ is EmptyExpr!9621) lt!1058741))))

(declare-fun e!1947905 () Bool)

(assert (=> d!862358 (= (matchRSpec!1758 lt!1058741 s!11993) e!1947905)))

(declare-fun b!3119355 () Bool)

(declare-fun call!221595 () Bool)

(assert (=> b!3119355 (= e!1947905 call!221595)))

(declare-fun e!1947903 () Bool)

(declare-fun call!221594 () Bool)

(assert (=> b!3119356 (= e!1947903 call!221594)))

(declare-fun b!3119357 () Bool)

(declare-fun c!522744 () Bool)

(assert (=> b!3119357 (= c!522744 ((_ is ElementMatch!9621) lt!1058741))))

(declare-fun e!1947901 () Bool)

(declare-fun e!1947904 () Bool)

(assert (=> b!3119357 (= e!1947901 e!1947904)))

(declare-fun b!3119358 () Bool)

(assert (=> b!3119358 (= e!1947904 (= s!11993 (Cons!35362 (c!522651 lt!1058741) Nil!35362)))))

(declare-fun b!3119359 () Bool)

(declare-fun res!1276558 () Bool)

(assert (=> b!3119359 (=> res!1276558 e!1947903)))

(assert (=> b!3119359 (= res!1276558 call!221595)))

(declare-fun e!1947902 () Bool)

(assert (=> b!3119359 (= e!1947902 e!1947903)))

(declare-fun b!3119360 () Bool)

(declare-fun e!1947906 () Bool)

(declare-fun e!1947900 () Bool)

(assert (=> b!3119360 (= e!1947906 e!1947900)))

(declare-fun res!1276557 () Bool)

(assert (=> b!3119360 (= res!1276557 (matchRSpec!1758 (regOne!19755 lt!1058741) s!11993))))

(assert (=> b!3119360 (=> res!1276557 e!1947900)))

(declare-fun bm!221589 () Bool)

(declare-fun c!522747 () Bool)

(declare-fun Exists!1875 (Int) Bool)

(assert (=> bm!221589 (= call!221594 (Exists!1875 (ite c!522747 lambda!115209 lambda!115210)))))

(declare-fun b!3119361 () Bool)

(assert (=> b!3119361 (= e!1947906 e!1947902)))

(assert (=> b!3119361 (= c!522747 ((_ is Star!9621) lt!1058741))))

(declare-fun b!3119362 () Bool)

(declare-fun c!522746 () Bool)

(assert (=> b!3119362 (= c!522746 ((_ is Union!9621) lt!1058741))))

(assert (=> b!3119362 (= e!1947904 e!1947906)))

(declare-fun b!3119363 () Bool)

(assert (=> b!3119363 (= e!1947900 (matchRSpec!1758 (regTwo!19755 lt!1058741) s!11993))))

(declare-fun b!3119364 () Bool)

(assert (=> b!3119364 (= e!1947905 e!1947901)))

(declare-fun res!1276559 () Bool)

(assert (=> b!3119364 (= res!1276559 (not ((_ is EmptyLang!9621) lt!1058741)))))

(assert (=> b!3119364 (=> (not res!1276559) (not e!1947901))))

(declare-fun bm!221590 () Bool)

(assert (=> bm!221590 (= call!221595 (isEmpty!19705 s!11993))))

(assert (=> b!3119365 (= e!1947902 call!221594)))

(assert (= (and d!862358 c!522745) b!3119355))

(assert (= (and d!862358 (not c!522745)) b!3119364))

(assert (= (and b!3119364 res!1276559) b!3119357))

(assert (= (and b!3119357 c!522744) b!3119358))

(assert (= (and b!3119357 (not c!522744)) b!3119362))

(assert (= (and b!3119362 c!522746) b!3119360))

(assert (= (and b!3119362 (not c!522746)) b!3119361))

(assert (= (and b!3119360 (not res!1276557)) b!3119363))

(assert (= (and b!3119361 c!522747) b!3119359))

(assert (= (and b!3119361 (not c!522747)) b!3119365))

(assert (= (and b!3119359 (not res!1276558)) b!3119356))

(assert (= (or b!3119356 b!3119365) bm!221589))

(assert (= (or b!3119355 b!3119359) bm!221590))

(declare-fun m!3407579 () Bool)

(assert (=> b!3119360 m!3407579))

(declare-fun m!3407581 () Bool)

(assert (=> bm!221589 m!3407581))

(declare-fun m!3407583 () Bool)

(assert (=> b!3119363 m!3407583))

(assert (=> bm!221590 m!3407471))

(assert (=> b!3118989 d!862358))

(declare-fun d!862380 () Bool)

(assert (=> d!862380 (= (matchR!4503 lt!1058741 s!11993) (matchRSpec!1758 lt!1058741 s!11993))))

(declare-fun lt!1058776 () Unit!49681)

(declare-fun choose!18446 (Regex!9621 List!35486) Unit!49681)

(assert (=> d!862380 (= lt!1058776 (choose!18446 lt!1058741 s!11993))))

(assert (=> d!862380 (validRegex!4354 lt!1058741)))

(assert (=> d!862380 (= (mainMatchTheorem!1758 lt!1058741 s!11993) lt!1058776)))

(declare-fun bs!535901 () Bool)

(assert (= bs!535901 d!862380))

(assert (=> bs!535901 m!3407487))

(assert (=> bs!535901 m!3407473))

(declare-fun m!3407585 () Bool)

(assert (=> bs!535901 m!3407585))

(assert (=> bs!535901 m!3407495))

(assert (=> b!3118989 d!862380))

(declare-fun bs!535902 () Bool)

(declare-fun b!3119371 () Bool)

(assert (= bs!535902 (and b!3119371 b!3119356)))

(declare-fun lambda!115211 () Int)

(assert (=> bs!535902 (= (and (= (reg!9950 r!17423) (reg!9950 lt!1058741)) (= r!17423 lt!1058741)) (= lambda!115211 lambda!115209))))

(declare-fun bs!535903 () Bool)

(assert (= bs!535903 (and b!3119371 b!3119365)))

(assert (=> bs!535903 (not (= lambda!115211 lambda!115210))))

(assert (=> b!3119371 true))

(assert (=> b!3119371 true))

(declare-fun bs!535904 () Bool)

(declare-fun b!3119380 () Bool)

(assert (= bs!535904 (and b!3119380 b!3119356)))

(declare-fun lambda!115212 () Int)

(assert (=> bs!535904 (not (= lambda!115212 lambda!115209))))

(declare-fun bs!535905 () Bool)

(assert (= bs!535905 (and b!3119380 b!3119365)))

(assert (=> bs!535905 (= (and (= (regOne!19754 r!17423) (regOne!19754 lt!1058741)) (= (regTwo!19754 r!17423) (regTwo!19754 lt!1058741))) (= lambda!115212 lambda!115210))))

(declare-fun bs!535906 () Bool)

(assert (= bs!535906 (and b!3119380 b!3119371)))

(assert (=> bs!535906 (not (= lambda!115212 lambda!115211))))

(assert (=> b!3119380 true))

(assert (=> b!3119380 true))

(declare-fun d!862382 () Bool)

(declare-fun c!522749 () Bool)

(assert (=> d!862382 (= c!522749 ((_ is EmptyExpr!9621) r!17423))))

(declare-fun e!1947912 () Bool)

(assert (=> d!862382 (= (matchRSpec!1758 r!17423 s!11993) e!1947912)))

(declare-fun b!3119370 () Bool)

(declare-fun call!221597 () Bool)

(assert (=> b!3119370 (= e!1947912 call!221597)))

(declare-fun e!1947910 () Bool)

(declare-fun call!221596 () Bool)

(assert (=> b!3119371 (= e!1947910 call!221596)))

(declare-fun b!3119372 () Bool)

(declare-fun c!522748 () Bool)

(assert (=> b!3119372 (= c!522748 ((_ is ElementMatch!9621) r!17423))))

(declare-fun e!1947908 () Bool)

(declare-fun e!1947911 () Bool)

(assert (=> b!3119372 (= e!1947908 e!1947911)))

(declare-fun b!3119373 () Bool)

(assert (=> b!3119373 (= e!1947911 (= s!11993 (Cons!35362 (c!522651 r!17423) Nil!35362)))))

(declare-fun b!3119374 () Bool)

(declare-fun res!1276561 () Bool)

(assert (=> b!3119374 (=> res!1276561 e!1947910)))

(assert (=> b!3119374 (= res!1276561 call!221597)))

(declare-fun e!1947909 () Bool)

(assert (=> b!3119374 (= e!1947909 e!1947910)))

(declare-fun b!3119375 () Bool)

(declare-fun e!1947913 () Bool)

(declare-fun e!1947907 () Bool)

(assert (=> b!3119375 (= e!1947913 e!1947907)))

(declare-fun res!1276560 () Bool)

(assert (=> b!3119375 (= res!1276560 (matchRSpec!1758 (regOne!19755 r!17423) s!11993))))

(assert (=> b!3119375 (=> res!1276560 e!1947907)))

(declare-fun c!522751 () Bool)

(declare-fun bm!221591 () Bool)

(assert (=> bm!221591 (= call!221596 (Exists!1875 (ite c!522751 lambda!115211 lambda!115212)))))

(declare-fun b!3119376 () Bool)

(assert (=> b!3119376 (= e!1947913 e!1947909)))

(assert (=> b!3119376 (= c!522751 ((_ is Star!9621) r!17423))))

(declare-fun b!3119377 () Bool)

(declare-fun c!522750 () Bool)

(assert (=> b!3119377 (= c!522750 ((_ is Union!9621) r!17423))))

(assert (=> b!3119377 (= e!1947911 e!1947913)))

(declare-fun b!3119378 () Bool)

(assert (=> b!3119378 (= e!1947907 (matchRSpec!1758 (regTwo!19755 r!17423) s!11993))))

(declare-fun b!3119379 () Bool)

(assert (=> b!3119379 (= e!1947912 e!1947908)))

(declare-fun res!1276562 () Bool)

(assert (=> b!3119379 (= res!1276562 (not ((_ is EmptyLang!9621) r!17423)))))

(assert (=> b!3119379 (=> (not res!1276562) (not e!1947908))))

(declare-fun bm!221592 () Bool)

(assert (=> bm!221592 (= call!221597 (isEmpty!19705 s!11993))))

(assert (=> b!3119380 (= e!1947909 call!221596)))

(assert (= (and d!862382 c!522749) b!3119370))

(assert (= (and d!862382 (not c!522749)) b!3119379))

(assert (= (and b!3119379 res!1276562) b!3119372))

(assert (= (and b!3119372 c!522748) b!3119373))

(assert (= (and b!3119372 (not c!522748)) b!3119377))

(assert (= (and b!3119377 c!522750) b!3119375))

(assert (= (and b!3119377 (not c!522750)) b!3119376))

(assert (= (and b!3119375 (not res!1276560)) b!3119378))

(assert (= (and b!3119376 c!522751) b!3119374))

(assert (= (and b!3119376 (not c!522751)) b!3119380))

(assert (= (and b!3119374 (not res!1276561)) b!3119371))

(assert (= (or b!3119371 b!3119380) bm!221591))

(assert (= (or b!3119370 b!3119374) bm!221592))

(declare-fun m!3407587 () Bool)

(assert (=> b!3119375 m!3407587))

(declare-fun m!3407589 () Bool)

(assert (=> bm!221591 m!3407589))

(declare-fun m!3407591 () Bool)

(assert (=> b!3119378 m!3407591))

(assert (=> bm!221592 m!3407471))

(assert (=> b!3118988 d!862382))

(declare-fun d!862384 () Bool)

(declare-fun e!1947914 () Bool)

(assert (=> d!862384 e!1947914))

(declare-fun c!522752 () Bool)

(assert (=> d!862384 (= c!522752 ((_ is EmptyExpr!9621) r!17423))))

(declare-fun lt!1058777 () Bool)

(declare-fun e!1947916 () Bool)

(assert (=> d!862384 (= lt!1058777 e!1947916)))

(declare-fun c!522753 () Bool)

(assert (=> d!862384 (= c!522753 (isEmpty!19705 s!11993))))

(assert (=> d!862384 (validRegex!4354 r!17423)))

(assert (=> d!862384 (= (matchR!4503 r!17423 s!11993) lt!1058777)))

(declare-fun b!3119381 () Bool)

(declare-fun e!1947919 () Bool)

(assert (=> b!3119381 (= e!1947919 (= (head!6913 s!11993) (c!522651 r!17423)))))

(declare-fun b!3119382 () Bool)

(assert (=> b!3119382 (= e!1947916 (matchR!4503 (derivativeStep!2854 r!17423 (head!6913 s!11993)) (tail!5139 s!11993)))))

(declare-fun b!3119383 () Bool)

(declare-fun res!1276570 () Bool)

(assert (=> b!3119383 (=> (not res!1276570) (not e!1947919))))

(declare-fun call!221598 () Bool)

(assert (=> b!3119383 (= res!1276570 (not call!221598))))

(declare-fun b!3119384 () Bool)

(declare-fun res!1276565 () Bool)

(assert (=> b!3119384 (=> (not res!1276565) (not e!1947919))))

(assert (=> b!3119384 (= res!1276565 (isEmpty!19705 (tail!5139 s!11993)))))

(declare-fun b!3119385 () Bool)

(declare-fun e!1947920 () Bool)

(assert (=> b!3119385 (= e!1947914 e!1947920)))

(declare-fun c!522754 () Bool)

(assert (=> b!3119385 (= c!522754 ((_ is EmptyLang!9621) r!17423))))

(declare-fun b!3119386 () Bool)

(declare-fun e!1947915 () Bool)

(assert (=> b!3119386 (= e!1947915 (not (= (head!6913 s!11993) (c!522651 r!17423))))))

(declare-fun b!3119387 () Bool)

(declare-fun e!1947917 () Bool)

(declare-fun e!1947918 () Bool)

(assert (=> b!3119387 (= e!1947917 e!1947918)))

(declare-fun res!1276568 () Bool)

(assert (=> b!3119387 (=> (not res!1276568) (not e!1947918))))

(assert (=> b!3119387 (= res!1276568 (not lt!1058777))))

(declare-fun b!3119388 () Bool)

(assert (=> b!3119388 (= e!1947914 (= lt!1058777 call!221598))))

(declare-fun b!3119389 () Bool)

(assert (=> b!3119389 (= e!1947916 (nullable!3259 r!17423))))

(declare-fun b!3119390 () Bool)

(declare-fun res!1276566 () Bool)

(assert (=> b!3119390 (=> res!1276566 e!1947917)))

(assert (=> b!3119390 (= res!1276566 e!1947919)))

(declare-fun res!1276563 () Bool)

(assert (=> b!3119390 (=> (not res!1276563) (not e!1947919))))

(assert (=> b!3119390 (= res!1276563 lt!1058777)))

(declare-fun b!3119391 () Bool)

(assert (=> b!3119391 (= e!1947920 (not lt!1058777))))

(declare-fun b!3119392 () Bool)

(declare-fun res!1276567 () Bool)

(assert (=> b!3119392 (=> res!1276567 e!1947915)))

(assert (=> b!3119392 (= res!1276567 (not (isEmpty!19705 (tail!5139 s!11993))))))

(declare-fun b!3119393 () Bool)

(assert (=> b!3119393 (= e!1947918 e!1947915)))

(declare-fun res!1276569 () Bool)

(assert (=> b!3119393 (=> res!1276569 e!1947915)))

(assert (=> b!3119393 (= res!1276569 call!221598)))

(declare-fun b!3119394 () Bool)

(declare-fun res!1276564 () Bool)

(assert (=> b!3119394 (=> res!1276564 e!1947917)))

(assert (=> b!3119394 (= res!1276564 (not ((_ is ElementMatch!9621) r!17423)))))

(assert (=> b!3119394 (= e!1947920 e!1947917)))

(declare-fun bm!221593 () Bool)

(assert (=> bm!221593 (= call!221598 (isEmpty!19705 s!11993))))

(assert (= (and d!862384 c!522753) b!3119389))

(assert (= (and d!862384 (not c!522753)) b!3119382))

(assert (= (and d!862384 c!522752) b!3119388))

(assert (= (and d!862384 (not c!522752)) b!3119385))

(assert (= (and b!3119385 c!522754) b!3119391))

(assert (= (and b!3119385 (not c!522754)) b!3119394))

(assert (= (and b!3119394 (not res!1276564)) b!3119390))

(assert (= (and b!3119390 res!1276563) b!3119383))

(assert (= (and b!3119383 res!1276570) b!3119384))

(assert (= (and b!3119384 res!1276565) b!3119381))

(assert (= (and b!3119390 (not res!1276566)) b!3119387))

(assert (= (and b!3119387 res!1276568) b!3119393))

(assert (= (and b!3119393 (not res!1276569)) b!3119392))

(assert (= (and b!3119392 (not res!1276567)) b!3119386))

(assert (= (or b!3119388 b!3119383 b!3119393) bm!221593))

(assert (=> b!3119386 m!3407493))

(assert (=> b!3119381 m!3407493))

(assert (=> d!862384 m!3407471))

(assert (=> d!862384 m!3407485))

(declare-fun m!3407593 () Bool)

(assert (=> b!3119389 m!3407593))

(assert (=> bm!221593 m!3407471))

(assert (=> b!3119384 m!3407499))

(assert (=> b!3119384 m!3407499))

(assert (=> b!3119384 m!3407501))

(assert (=> b!3119382 m!3407493))

(assert (=> b!3119382 m!3407493))

(declare-fun m!3407595 () Bool)

(assert (=> b!3119382 m!3407595))

(assert (=> b!3119382 m!3407499))

(assert (=> b!3119382 m!3407595))

(assert (=> b!3119382 m!3407499))

(declare-fun m!3407597 () Bool)

(assert (=> b!3119382 m!3407597))

(assert (=> b!3119392 m!3407499))

(assert (=> b!3119392 m!3407499))

(assert (=> b!3119392 m!3407501))

(assert (=> b!3118988 d!862384))

(declare-fun d!862386 () Bool)

(assert (=> d!862386 (= (matchR!4503 r!17423 s!11993) (matchRSpec!1758 r!17423 s!11993))))

(declare-fun lt!1058778 () Unit!49681)

(assert (=> d!862386 (= lt!1058778 (choose!18446 r!17423 s!11993))))

(assert (=> d!862386 (validRegex!4354 r!17423)))

(assert (=> d!862386 (= (mainMatchTheorem!1758 r!17423 s!11993) lt!1058778)))

(declare-fun bs!535907 () Bool)

(assert (= bs!535907 d!862386))

(assert (=> bs!535907 m!3407479))

(assert (=> bs!535907 m!3407477))

(declare-fun m!3407599 () Bool)

(assert (=> bs!535907 m!3407599))

(assert (=> bs!535907 m!3407485))

(assert (=> b!3118988 d!862386))

(declare-fun b!3119395 () Bool)

(declare-fun res!1276575 () Bool)

(declare-fun e!1947927 () Bool)

(assert (=> b!3119395 (=> (not res!1276575) (not e!1947927))))

(declare-fun call!221599 () Bool)

(assert (=> b!3119395 (= res!1276575 call!221599)))

(declare-fun e!1947926 () Bool)

(assert (=> b!3119395 (= e!1947926 e!1947927)))

(declare-fun b!3119396 () Bool)

(declare-fun e!1947921 () Bool)

(declare-fun e!1947923 () Bool)

(assert (=> b!3119396 (= e!1947921 e!1947923)))

(declare-fun res!1276572 () Bool)

(assert (=> b!3119396 (=> (not res!1276572) (not e!1947923))))

(declare-fun call!221600 () Bool)

(assert (=> b!3119396 (= res!1276572 call!221600)))

(declare-fun bm!221594 () Bool)

(declare-fun c!522756 () Bool)

(assert (=> bm!221594 (= call!221600 (validRegex!4354 (ite c!522756 (regTwo!19755 r!17423) (regOne!19754 r!17423))))))

(declare-fun b!3119397 () Bool)

(assert (=> b!3119397 (= e!1947923 call!221599)))

(declare-fun bm!221595 () Bool)

(declare-fun call!221601 () Bool)

(assert (=> bm!221595 (= call!221599 call!221601)))

(declare-fun b!3119398 () Bool)

(declare-fun res!1276574 () Bool)

(assert (=> b!3119398 (=> res!1276574 e!1947921)))

(assert (=> b!3119398 (= res!1276574 (not ((_ is Concat!14942) r!17423)))))

(assert (=> b!3119398 (= e!1947926 e!1947921)))

(declare-fun b!3119400 () Bool)

(assert (=> b!3119400 (= e!1947927 call!221600)))

(declare-fun b!3119401 () Bool)

(declare-fun e!1947925 () Bool)

(declare-fun e!1947922 () Bool)

(assert (=> b!3119401 (= e!1947925 e!1947922)))

(declare-fun res!1276571 () Bool)

(assert (=> b!3119401 (= res!1276571 (not (nullable!3259 (reg!9950 r!17423))))))

(assert (=> b!3119401 (=> (not res!1276571) (not e!1947922))))

(declare-fun c!522755 () Bool)

(declare-fun bm!221596 () Bool)

(assert (=> bm!221596 (= call!221601 (validRegex!4354 (ite c!522755 (reg!9950 r!17423) (ite c!522756 (regOne!19755 r!17423) (regTwo!19754 r!17423)))))))

(declare-fun b!3119402 () Bool)

(declare-fun e!1947924 () Bool)

(assert (=> b!3119402 (= e!1947924 e!1947925)))

(assert (=> b!3119402 (= c!522755 ((_ is Star!9621) r!17423))))

(declare-fun b!3119403 () Bool)

(assert (=> b!3119403 (= e!1947925 e!1947926)))

(assert (=> b!3119403 (= c!522756 ((_ is Union!9621) r!17423))))

(declare-fun d!862388 () Bool)

(declare-fun res!1276573 () Bool)

(assert (=> d!862388 (=> res!1276573 e!1947924)))

(assert (=> d!862388 (= res!1276573 ((_ is ElementMatch!9621) r!17423))))

(assert (=> d!862388 (= (validRegex!4354 r!17423) e!1947924)))

(declare-fun b!3119399 () Bool)

(assert (=> b!3119399 (= e!1947922 call!221601)))

(assert (= (and d!862388 (not res!1276573)) b!3119402))

(assert (= (and b!3119402 c!522755) b!3119401))

(assert (= (and b!3119402 (not c!522755)) b!3119403))

(assert (= (and b!3119401 res!1276571) b!3119399))

(assert (= (and b!3119403 c!522756) b!3119395))

(assert (= (and b!3119403 (not c!522756)) b!3119398))

(assert (= (and b!3119395 res!1276575) b!3119400))

(assert (= (and b!3119398 (not res!1276574)) b!3119396))

(assert (= (and b!3119396 res!1276572) b!3119397))

(assert (= (or b!3119395 b!3119397) bm!221595))

(assert (= (or b!3119400 b!3119396) bm!221594))

(assert (= (or b!3119399 bm!221595) bm!221596))

(declare-fun m!3407601 () Bool)

(assert (=> bm!221594 m!3407601))

(declare-fun m!3407603 () Bool)

(assert (=> b!3119401 m!3407603))

(declare-fun m!3407605 () Bool)

(assert (=> bm!221596 m!3407605))

(assert (=> start!295132 d!862388))

(declare-fun d!862390 () Bool)

(assert (=> d!862390 (= (isEmptyLang!672 lt!1058743) ((_ is EmptyLang!9621) lt!1058743))))

(assert (=> b!3118987 d!862390))

(declare-fun b!3119454 () Bool)

(declare-fun e!1947964 () Regex!9621)

(declare-fun lt!1058793 () Regex!9621)

(assert (=> b!3119454 (= e!1947964 lt!1058793)))

(declare-fun b!3119455 () Bool)

(declare-fun c!522780 () Bool)

(declare-fun call!221618 () Bool)

(assert (=> b!3119455 (= c!522780 call!221618)))

(declare-fun e!1947960 () Regex!9621)

(assert (=> b!3119455 (= e!1947960 e!1947964)))

(declare-fun b!3119456 () Bool)

(declare-fun e!1947956 () Regex!9621)

(assert (=> b!3119456 (= e!1947956 EmptyExpr!9621)))

(declare-fun b!3119457 () Bool)

(declare-fun lt!1058796 () Regex!9621)

(assert (=> b!3119457 (= e!1947964 (Union!9621 lt!1058793 lt!1058796))))

(declare-fun b!3119458 () Bool)

(declare-fun e!1947962 () Regex!9621)

(declare-fun e!1947963 () Regex!9621)

(assert (=> b!3119458 (= e!1947962 e!1947963)))

(declare-fun c!522784 () Bool)

(assert (=> b!3119458 (= c!522784 ((_ is ElementMatch!9621) (reg!9950 r!17423)))))

(declare-fun b!3119459 () Bool)

(declare-fun e!1947967 () Bool)

(declare-fun call!221622 () Bool)

(assert (=> b!3119459 (= e!1947967 call!221622)))

(declare-fun b!3119460 () Bool)

(declare-fun e!1947958 () Bool)

(declare-fun lt!1058791 () Regex!9621)

(assert (=> b!3119460 (= e!1947958 (= (nullable!3259 lt!1058791) (nullable!3259 (reg!9950 r!17423))))))

(declare-fun b!3119461 () Bool)

(declare-fun e!1947965 () Regex!9621)

(declare-fun e!1947961 () Regex!9621)

(assert (=> b!3119461 (= e!1947965 e!1947961)))

(declare-fun c!522785 () Bool)

(assert (=> b!3119461 (= c!522785 ((_ is Star!9621) (reg!9950 r!17423)))))

(declare-fun b!3119462 () Bool)

(declare-fun c!522786 () Bool)

(assert (=> b!3119462 (= c!522786 ((_ is EmptyExpr!9621) (reg!9950 r!17423)))))

(assert (=> b!3119462 (= e!1947963 e!1947965)))

(declare-fun lt!1058795 () Regex!9621)

(declare-fun bm!221611 () Bool)

(declare-fun c!522789 () Bool)

(declare-fun call!221616 () Bool)

(assert (=> bm!221611 (= call!221616 (isEmptyLang!672 (ite c!522789 lt!1058793 lt!1058795)))))

(declare-fun b!3119463 () Bool)

(assert (=> b!3119463 (= e!1947965 EmptyExpr!9621)))

(declare-fun b!3119464 () Bool)

(declare-fun e!1947968 () Regex!9621)

(declare-fun e!1947966 () Regex!9621)

(assert (=> b!3119464 (= e!1947968 e!1947966)))

(declare-fun call!221620 () Regex!9621)

(assert (=> b!3119464 (= lt!1058795 call!221620)))

(declare-fun lt!1058794 () Regex!9621)

(declare-fun call!221621 () Regex!9621)

(assert (=> b!3119464 (= lt!1058794 call!221621)))

(declare-fun res!1276582 () Bool)

(assert (=> b!3119464 (= res!1276582 call!221616)))

(declare-fun e!1947957 () Bool)

(assert (=> b!3119464 (=> res!1276582 e!1947957)))

(declare-fun c!522788 () Bool)

(assert (=> b!3119464 (= c!522788 e!1947957)))

(declare-fun b!3119465 () Bool)

(assert (=> b!3119465 (= e!1947957 call!221618)))

(declare-fun b!3119466 () Bool)

(declare-fun e!1947969 () Regex!9621)

(assert (=> b!3119466 (= e!1947969 lt!1058794)))

(declare-fun call!221619 () Regex!9621)

(declare-fun bm!221612 () Bool)

(assert (=> bm!221612 (= call!221619 (simplify!576 (ite c!522785 (reg!9950 (reg!9950 r!17423)) (ite c!522789 (regTwo!19755 (reg!9950 r!17423)) (regOne!19754 (reg!9950 r!17423))))))))

(declare-fun lt!1058792 () Regex!9621)

(declare-fun bm!221613 () Bool)

(declare-fun isEmptyExpr!670 (Regex!9621) Bool)

(assert (=> bm!221613 (= call!221622 (isEmptyExpr!670 (ite c!522785 lt!1058792 lt!1058795)))))

(declare-fun bm!221614 () Bool)

(assert (=> bm!221614 (= call!221620 call!221619)))

(declare-fun bm!221615 () Bool)

(declare-fun call!221617 () Bool)

(assert (=> bm!221615 (= call!221617 (isEmptyLang!672 (ite c!522785 lt!1058792 (ite c!522789 lt!1058796 lt!1058794))))))

(declare-fun d!862392 () Bool)

(assert (=> d!862392 e!1947958))

(declare-fun res!1276583 () Bool)

(assert (=> d!862392 (=> (not res!1276583) (not e!1947958))))

(assert (=> d!862392 (= res!1276583 (validRegex!4354 lt!1058791))))

(assert (=> d!862392 (= lt!1058791 e!1947962)))

(declare-fun c!522779 () Bool)

(assert (=> d!862392 (= c!522779 ((_ is EmptyLang!9621) (reg!9950 r!17423)))))

(assert (=> d!862392 (validRegex!4354 (reg!9950 r!17423))))

(assert (=> d!862392 (= (simplify!576 (reg!9950 r!17423)) lt!1058791)))

(declare-fun b!3119467 () Bool)

(declare-fun c!522781 () Bool)

(assert (=> b!3119467 (= c!522781 e!1947967)))

(declare-fun res!1276584 () Bool)

(assert (=> b!3119467 (=> res!1276584 e!1947967)))

(assert (=> b!3119467 (= res!1276584 call!221617)))

(assert (=> b!3119467 (= lt!1058792 call!221619)))

(assert (=> b!3119467 (= e!1947961 e!1947956)))

(declare-fun b!3119468 () Bool)

(declare-fun e!1947959 () Regex!9621)

(assert (=> b!3119468 (= e!1947969 e!1947959)))

(declare-fun c!522782 () Bool)

(assert (=> b!3119468 (= c!522782 (isEmptyExpr!670 lt!1058794))))

(declare-fun b!3119469 () Bool)

(assert (=> b!3119469 (= e!1947959 lt!1058795)))

(declare-fun b!3119470 () Bool)

(declare-fun c!522787 () Bool)

(assert (=> b!3119470 (= c!522787 call!221622)))

(assert (=> b!3119470 (= e!1947966 e!1947969)))

(declare-fun b!3119471 () Bool)

(assert (=> b!3119471 (= e!1947956 (Star!9621 lt!1058792))))

(declare-fun b!3119472 () Bool)

(assert (=> b!3119472 (= e!1947962 EmptyLang!9621)))

(declare-fun b!3119473 () Bool)

(assert (=> b!3119473 (= c!522789 ((_ is Union!9621) (reg!9950 r!17423)))))

(assert (=> b!3119473 (= e!1947961 e!1947968)))

(declare-fun b!3119474 () Bool)

(assert (=> b!3119474 (= e!1947960 lt!1058796)))

(declare-fun b!3119475 () Bool)

(assert (=> b!3119475 (= e!1947966 EmptyLang!9621)))

(declare-fun bm!221616 () Bool)

(assert (=> bm!221616 (= call!221621 (simplify!576 (ite c!522789 (regOne!19755 (reg!9950 r!17423)) (regTwo!19754 (reg!9950 r!17423)))))))

(declare-fun b!3119476 () Bool)

(assert (=> b!3119476 (= e!1947963 (reg!9950 r!17423))))

(declare-fun b!3119477 () Bool)

(assert (=> b!3119477 (= e!1947968 e!1947960)))

(assert (=> b!3119477 (= lt!1058793 call!221621)))

(assert (=> b!3119477 (= lt!1058796 call!221620)))

(declare-fun c!522783 () Bool)

(assert (=> b!3119477 (= c!522783 call!221616)))

(declare-fun bm!221617 () Bool)

(assert (=> bm!221617 (= call!221618 call!221617)))

(declare-fun b!3119478 () Bool)

(assert (=> b!3119478 (= e!1947959 (Concat!14942 lt!1058795 lt!1058794))))

(assert (= (and d!862392 c!522779) b!3119472))

(assert (= (and d!862392 (not c!522779)) b!3119458))

(assert (= (and b!3119458 c!522784) b!3119476))

(assert (= (and b!3119458 (not c!522784)) b!3119462))

(assert (= (and b!3119462 c!522786) b!3119463))

(assert (= (and b!3119462 (not c!522786)) b!3119461))

(assert (= (and b!3119461 c!522785) b!3119467))

(assert (= (and b!3119461 (not c!522785)) b!3119473))

(assert (= (and b!3119467 (not res!1276584)) b!3119459))

(assert (= (and b!3119467 c!522781) b!3119456))

(assert (= (and b!3119467 (not c!522781)) b!3119471))

(assert (= (and b!3119473 c!522789) b!3119477))

(assert (= (and b!3119473 (not c!522789)) b!3119464))

(assert (= (and b!3119477 c!522783) b!3119474))

(assert (= (and b!3119477 (not c!522783)) b!3119455))

(assert (= (and b!3119455 c!522780) b!3119454))

(assert (= (and b!3119455 (not c!522780)) b!3119457))

(assert (= (and b!3119464 (not res!1276582)) b!3119465))

(assert (= (and b!3119464 c!522788) b!3119475))

(assert (= (and b!3119464 (not c!522788)) b!3119470))

(assert (= (and b!3119470 c!522787) b!3119466))

(assert (= (and b!3119470 (not c!522787)) b!3119468))

(assert (= (and b!3119468 c!522782) b!3119469))

(assert (= (and b!3119468 (not c!522782)) b!3119478))

(assert (= (or b!3119477 b!3119464) bm!221616))

(assert (= (or b!3119477 b!3119464) bm!221614))

(assert (= (or b!3119455 b!3119465) bm!221617))

(assert (= (or b!3119477 b!3119464) bm!221611))

(assert (= (or b!3119459 b!3119470) bm!221613))

(assert (= (or b!3119467 bm!221614) bm!221612))

(assert (= (or b!3119467 bm!221617) bm!221615))

(assert (= (and d!862392 res!1276583) b!3119460))

(declare-fun m!3407607 () Bool)

(assert (=> b!3119460 m!3407607))

(assert (=> b!3119460 m!3407603))

(declare-fun m!3407609 () Bool)

(assert (=> bm!221616 m!3407609))

(declare-fun m!3407611 () Bool)

(assert (=> b!3119468 m!3407611))

(declare-fun m!3407613 () Bool)

(assert (=> bm!221612 m!3407613))

(declare-fun m!3407615 () Bool)

(assert (=> bm!221615 m!3407615))

(declare-fun m!3407617 () Bool)

(assert (=> bm!221613 m!3407617))

(declare-fun m!3407619 () Bool)

(assert (=> d!862392 m!3407619))

(declare-fun m!3407621 () Bool)

(assert (=> d!862392 m!3407621))

(declare-fun m!3407623 () Bool)

(assert (=> bm!221611 m!3407623))

(assert (=> b!3118987 d!862392))

(declare-fun b!3119491 () Bool)

(declare-fun e!1947972 () Bool)

(declare-fun tp!977839 () Bool)

(assert (=> b!3119491 (= e!1947972 tp!977839)))

(declare-fun b!3119490 () Bool)

(declare-fun tp!977838 () Bool)

(declare-fun tp!977841 () Bool)

(assert (=> b!3119490 (= e!1947972 (and tp!977838 tp!977841))))

(declare-fun b!3119489 () Bool)

(assert (=> b!3119489 (= e!1947972 tp_is_empty!16805)))

(assert (=> b!3118984 (= tp!977789 e!1947972)))

(declare-fun b!3119492 () Bool)

(declare-fun tp!977840 () Bool)

(declare-fun tp!977842 () Bool)

(assert (=> b!3119492 (= e!1947972 (and tp!977840 tp!977842))))

(assert (= (and b!3118984 ((_ is ElementMatch!9621) (reg!9950 r!17423))) b!3119489))

(assert (= (and b!3118984 ((_ is Concat!14942) (reg!9950 r!17423))) b!3119490))

(assert (= (and b!3118984 ((_ is Star!9621) (reg!9950 r!17423))) b!3119491))

(assert (= (and b!3118984 ((_ is Union!9621) (reg!9950 r!17423))) b!3119492))

(declare-fun b!3119497 () Bool)

(declare-fun e!1947975 () Bool)

(declare-fun tp!977845 () Bool)

(assert (=> b!3119497 (= e!1947975 (and tp_is_empty!16805 tp!977845))))

(assert (=> b!3118993 (= tp!977786 e!1947975)))

(assert (= (and b!3118993 ((_ is Cons!35362) (t!234551 s!11993))) b!3119497))

(declare-fun b!3119500 () Bool)

(declare-fun e!1947976 () Bool)

(declare-fun tp!977847 () Bool)

(assert (=> b!3119500 (= e!1947976 tp!977847)))

(declare-fun b!3119499 () Bool)

(declare-fun tp!977846 () Bool)

(declare-fun tp!977849 () Bool)

(assert (=> b!3119499 (= e!1947976 (and tp!977846 tp!977849))))

(declare-fun b!3119498 () Bool)

(assert (=> b!3119498 (= e!1947976 tp_is_empty!16805)))

(assert (=> b!3118992 (= tp!977787 e!1947976)))

(declare-fun b!3119501 () Bool)

(declare-fun tp!977848 () Bool)

(declare-fun tp!977850 () Bool)

(assert (=> b!3119501 (= e!1947976 (and tp!977848 tp!977850))))

(assert (= (and b!3118992 ((_ is ElementMatch!9621) (regOne!19755 r!17423))) b!3119498))

(assert (= (and b!3118992 ((_ is Concat!14942) (regOne!19755 r!17423))) b!3119499))

(assert (= (and b!3118992 ((_ is Star!9621) (regOne!19755 r!17423))) b!3119500))

(assert (= (and b!3118992 ((_ is Union!9621) (regOne!19755 r!17423))) b!3119501))

(declare-fun b!3119504 () Bool)

(declare-fun e!1947977 () Bool)

(declare-fun tp!977852 () Bool)

(assert (=> b!3119504 (= e!1947977 tp!977852)))

(declare-fun b!3119503 () Bool)

(declare-fun tp!977851 () Bool)

(declare-fun tp!977854 () Bool)

(assert (=> b!3119503 (= e!1947977 (and tp!977851 tp!977854))))

(declare-fun b!3119502 () Bool)

(assert (=> b!3119502 (= e!1947977 tp_is_empty!16805)))

(assert (=> b!3118992 (= tp!977785 e!1947977)))

(declare-fun b!3119505 () Bool)

(declare-fun tp!977853 () Bool)

(declare-fun tp!977855 () Bool)

(assert (=> b!3119505 (= e!1947977 (and tp!977853 tp!977855))))

(assert (= (and b!3118992 ((_ is ElementMatch!9621) (regTwo!19755 r!17423))) b!3119502))

(assert (= (and b!3118992 ((_ is Concat!14942) (regTwo!19755 r!17423))) b!3119503))

(assert (= (and b!3118992 ((_ is Star!9621) (regTwo!19755 r!17423))) b!3119504))

(assert (= (and b!3118992 ((_ is Union!9621) (regTwo!19755 r!17423))) b!3119505))

(declare-fun b!3119508 () Bool)

(declare-fun e!1947978 () Bool)

(declare-fun tp!977857 () Bool)

(assert (=> b!3119508 (= e!1947978 tp!977857)))

(declare-fun b!3119507 () Bool)

(declare-fun tp!977856 () Bool)

(declare-fun tp!977859 () Bool)

(assert (=> b!3119507 (= e!1947978 (and tp!977856 tp!977859))))

(declare-fun b!3119506 () Bool)

(assert (=> b!3119506 (= e!1947978 tp_is_empty!16805)))

(assert (=> b!3118986 (= tp!977784 e!1947978)))

(declare-fun b!3119509 () Bool)

(declare-fun tp!977858 () Bool)

(declare-fun tp!977860 () Bool)

(assert (=> b!3119509 (= e!1947978 (and tp!977858 tp!977860))))

(assert (= (and b!3118986 ((_ is ElementMatch!9621) (regOne!19754 r!17423))) b!3119506))

(assert (= (and b!3118986 ((_ is Concat!14942) (regOne!19754 r!17423))) b!3119507))

(assert (= (and b!3118986 ((_ is Star!9621) (regOne!19754 r!17423))) b!3119508))

(assert (= (and b!3118986 ((_ is Union!9621) (regOne!19754 r!17423))) b!3119509))

(declare-fun b!3119512 () Bool)

(declare-fun e!1947979 () Bool)

(declare-fun tp!977862 () Bool)

(assert (=> b!3119512 (= e!1947979 tp!977862)))

(declare-fun b!3119511 () Bool)

(declare-fun tp!977861 () Bool)

(declare-fun tp!977864 () Bool)

(assert (=> b!3119511 (= e!1947979 (and tp!977861 tp!977864))))

(declare-fun b!3119510 () Bool)

(assert (=> b!3119510 (= e!1947979 tp_is_empty!16805)))

(assert (=> b!3118986 (= tp!977788 e!1947979)))

(declare-fun b!3119513 () Bool)

(declare-fun tp!977863 () Bool)

(declare-fun tp!977865 () Bool)

(assert (=> b!3119513 (= e!1947979 (and tp!977863 tp!977865))))

(assert (= (and b!3118986 ((_ is ElementMatch!9621) (regTwo!19754 r!17423))) b!3119510))

(assert (= (and b!3118986 ((_ is Concat!14942) (regTwo!19754 r!17423))) b!3119511))

(assert (= (and b!3118986 ((_ is Star!9621) (regTwo!19754 r!17423))) b!3119512))

(assert (= (and b!3118986 ((_ is Union!9621) (regTwo!19754 r!17423))) b!3119513))

(check-sat (not bm!221596) (not b!3119381) (not b!3119511) (not b!3119045) (not b!3119507) (not bm!221592) (not b!3119378) (not d!862384) (not bm!221589) (not d!862380) (not b!3119497) (not bm!221590) (not b!3119512) (not b!3119360) (not b!3119460) (not b!3119499) (not b!3119389) (not b!3119513) (not b!3119401) (not bm!221615) (not b!3119047) (not b!3119490) (not b!3119509) (not b!3119386) (not d!862350) (not b!3119382) (not bm!221611) (not bm!221612) (not b!3119082) (not b!3119055) (not b!3119049) tp_is_empty!16805 (not d!862386) (not b!3119392) (not b!3119500) (not bm!221530) (not d!862392) (not bm!221593) (not b!3119052) (not bm!221616) (not b!3119363) (not b!3119468) (not bm!221539) (not b!3119505) (not b!3119491) (not b!3119384) (not bm!221537) (not bm!221613) (not b!3119503) (not bm!221591) (not b!3119375) (not b!3119501) (not b!3119044) (not b!3119504) (not bm!221594) (not b!3119508) (not b!3119492))
(check-sat)
