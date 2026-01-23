; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294552 () Bool)

(assert start!294552)

(declare-fun b!3107333 () Bool)

(declare-fun e!1941337 () Bool)

(declare-fun e!1941334 () Bool)

(assert (=> b!3107333 (= e!1941337 e!1941334)))

(declare-fun res!1272348 () Bool)

(assert (=> b!3107333 (=> (not res!1272348) (not e!1941334))))

(declare-datatypes ((C!19352 0))(
  ( (C!19353 (val!11712 Int)) )
))
(declare-datatypes ((Regex!9583 0))(
  ( (ElementMatch!9583 (c!519771 C!19352)) (Concat!14904 (regOne!19678 Regex!9583) (regTwo!19678 Regex!9583)) (EmptyExpr!9583) (Star!9583 (reg!9912 Regex!9583)) (EmptyLang!9583) (Union!9583 (regOne!19679 Regex!9583) (regTwo!19679 Regex!9583)) )
))
(declare-fun lt!1056857 () Regex!9583)

(declare-fun validRegex!4316 (Regex!9583) Bool)

(assert (=> b!3107333 (= res!1272348 (validRegex!4316 lt!1056857))))

(declare-fun b!3107334 () Bool)

(declare-fun res!1272347 () Bool)

(assert (=> b!3107334 (=> res!1272347 e!1941337)))

(declare-fun lt!1056858 () Regex!9583)

(declare-datatypes ((List!35448 0))(
  ( (Nil!35324) (Cons!35324 (h!40744 C!19352) (t!234513 List!35448)) )
))
(declare-fun s!11993 () List!35448)

(declare-fun matchR!4465 (Regex!9583 List!35448) Bool)

(assert (=> b!3107334 (= res!1272347 (not (matchR!4465 (Union!9583 lt!1056857 lt!1056858) s!11993)))))

(declare-fun res!1272343 () Bool)

(declare-fun e!1941338 () Bool)

(assert (=> start!294552 (=> (not res!1272343) (not e!1941338))))

(declare-fun r!17423 () Regex!9583)

(assert (=> start!294552 (= res!1272343 (validRegex!4316 r!17423))))

(assert (=> start!294552 e!1941338))

(declare-fun e!1941335 () Bool)

(assert (=> start!294552 e!1941335))

(declare-fun e!1941339 () Bool)

(assert (=> start!294552 e!1941339))

(declare-fun b!3107335 () Bool)

(declare-fun tp!975812 () Bool)

(declare-fun tp!975813 () Bool)

(assert (=> b!3107335 (= e!1941335 (and tp!975812 tp!975813))))

(declare-fun b!3107336 () Bool)

(assert (=> b!3107336 (= e!1941334 (validRegex!4316 lt!1056858))))

(declare-fun b!3107337 () Bool)

(declare-fun tp!975811 () Bool)

(declare-fun tp!975809 () Bool)

(assert (=> b!3107337 (= e!1941335 (and tp!975811 tp!975809))))

(declare-fun b!3107338 () Bool)

(declare-fun tp!975808 () Bool)

(assert (=> b!3107338 (= e!1941335 tp!975808)))

(declare-fun b!3107339 () Bool)

(declare-fun e!1941336 () Bool)

(assert (=> b!3107339 (= e!1941338 (not e!1941336))))

(declare-fun res!1272345 () Bool)

(assert (=> b!3107339 (=> res!1272345 e!1941336)))

(declare-fun lt!1056859 () Bool)

(get-info :version)

(assert (=> b!3107339 (= res!1272345 (or lt!1056859 ((_ is Concat!14904) r!17423) (not ((_ is Union!9583) r!17423))))))

(declare-fun matchRSpec!1720 (Regex!9583 List!35448) Bool)

(assert (=> b!3107339 (= lt!1056859 (matchRSpec!1720 r!17423 s!11993))))

(assert (=> b!3107339 (= lt!1056859 (matchR!4465 r!17423 s!11993))))

(declare-datatypes ((Unit!49605 0))(
  ( (Unit!49606) )
))
(declare-fun lt!1056860 () Unit!49605)

(declare-fun mainMatchTheorem!1720 (Regex!9583 List!35448) Unit!49605)

(assert (=> b!3107339 (= lt!1056860 (mainMatchTheorem!1720 r!17423 s!11993))))

(declare-fun b!3107340 () Bool)

(declare-fun res!1272346 () Bool)

(assert (=> b!3107340 (=> res!1272346 e!1941337)))

(declare-fun isEmptyLang!634 (Regex!9583) Bool)

(assert (=> b!3107340 (= res!1272346 (isEmptyLang!634 lt!1056858))))

(declare-fun b!3107341 () Bool)

(assert (=> b!3107341 (= e!1941336 e!1941337)))

(declare-fun res!1272344 () Bool)

(assert (=> b!3107341 (=> res!1272344 e!1941337)))

(assert (=> b!3107341 (= res!1272344 (isEmptyLang!634 lt!1056857))))

(declare-fun simplify!538 (Regex!9583) Regex!9583)

(assert (=> b!3107341 (= lt!1056858 (simplify!538 (regTwo!19679 r!17423)))))

(assert (=> b!3107341 (= lt!1056857 (simplify!538 (regOne!19679 r!17423)))))

(declare-fun b!3107342 () Bool)

(declare-fun tp_is_empty!16729 () Bool)

(assert (=> b!3107342 (= e!1941335 tp_is_empty!16729)))

(declare-fun b!3107343 () Bool)

(declare-fun tp!975810 () Bool)

(assert (=> b!3107343 (= e!1941339 (and tp_is_empty!16729 tp!975810))))

(assert (= (and start!294552 res!1272343) b!3107339))

(assert (= (and b!3107339 (not res!1272345)) b!3107341))

(assert (= (and b!3107341 (not res!1272344)) b!3107340))

(assert (= (and b!3107340 (not res!1272346)) b!3107334))

(assert (= (and b!3107334 (not res!1272347)) b!3107333))

(assert (= (and b!3107333 res!1272348) b!3107336))

(assert (= (and start!294552 ((_ is ElementMatch!9583) r!17423)) b!3107342))

(assert (= (and start!294552 ((_ is Concat!14904) r!17423)) b!3107335))

(assert (= (and start!294552 ((_ is Star!9583) r!17423)) b!3107338))

(assert (= (and start!294552 ((_ is Union!9583) r!17423)) b!3107337))

(assert (= (and start!294552 ((_ is Cons!35324) s!11993)) b!3107343))

(declare-fun m!3403359 () Bool)

(assert (=> b!3107336 m!3403359))

(declare-fun m!3403361 () Bool)

(assert (=> start!294552 m!3403361))

(declare-fun m!3403363 () Bool)

(assert (=> b!3107341 m!3403363))

(declare-fun m!3403365 () Bool)

(assert (=> b!3107341 m!3403365))

(declare-fun m!3403367 () Bool)

(assert (=> b!3107341 m!3403367))

(declare-fun m!3403369 () Bool)

(assert (=> b!3107339 m!3403369))

(declare-fun m!3403371 () Bool)

(assert (=> b!3107339 m!3403371))

(declare-fun m!3403373 () Bool)

(assert (=> b!3107339 m!3403373))

(declare-fun m!3403375 () Bool)

(assert (=> b!3107340 m!3403375))

(declare-fun m!3403377 () Bool)

(assert (=> b!3107333 m!3403377))

(declare-fun m!3403379 () Bool)

(assert (=> b!3107334 m!3403379))

(check-sat (not b!3107341) (not b!3107333) (not b!3107340) (not b!3107335) (not b!3107338) (not start!294552) tp_is_empty!16729 (not b!3107334) (not b!3107339) (not b!3107343) (not b!3107336) (not b!3107337))
(check-sat)
(get-model)

(declare-fun d!861481 () Bool)

(assert (=> d!861481 (= (isEmptyLang!634 lt!1056858) ((_ is EmptyLang!9583) lt!1056858))))

(assert (=> b!3107340 d!861481))

(declare-fun b!3107595 () Bool)

(assert (=> b!3107595 true))

(assert (=> b!3107595 true))

(declare-fun bs!535758 () Bool)

(declare-fun b!3107601 () Bool)

(assert (= bs!535758 (and b!3107601 b!3107595)))

(declare-fun lambda!114998 () Int)

(declare-fun lambda!114997 () Int)

(assert (=> bs!535758 (not (= lambda!114998 lambda!114997))))

(assert (=> b!3107601 true))

(assert (=> b!3107601 true))

(declare-fun e!1941493 () Bool)

(declare-fun call!219705 () Bool)

(assert (=> b!3107595 (= e!1941493 call!219705)))

(declare-fun bm!219700 () Bool)

(declare-fun call!219706 () Bool)

(declare-fun isEmpty!19671 (List!35448) Bool)

(assert (=> bm!219700 (= call!219706 (isEmpty!19671 s!11993))))

(declare-fun b!3107596 () Bool)

(declare-fun e!1941492 () Bool)

(assert (=> b!3107596 (= e!1941492 (matchRSpec!1720 (regTwo!19679 r!17423) s!11993))))

(declare-fun b!3107597 () Bool)

(declare-fun e!1941490 () Bool)

(assert (=> b!3107597 (= e!1941490 e!1941492)))

(declare-fun res!1272444 () Bool)

(assert (=> b!3107597 (= res!1272444 (matchRSpec!1720 (regOne!19679 r!17423) s!11993))))

(assert (=> b!3107597 (=> res!1272444 e!1941492)))

(declare-fun b!3107598 () Bool)

(declare-fun e!1941488 () Bool)

(assert (=> b!3107598 (= e!1941488 (= s!11993 (Cons!35324 (c!519771 r!17423) Nil!35324)))))

(declare-fun b!3107599 () Bool)

(declare-fun e!1941494 () Bool)

(assert (=> b!3107599 (= e!1941494 call!219706)))

(declare-fun c!519852 () Bool)

(declare-fun bm!219701 () Bool)

(declare-fun Exists!1841 (Int) Bool)

(assert (=> bm!219701 (= call!219705 (Exists!1841 (ite c!519852 lambda!114997 lambda!114998)))))

(declare-fun b!3107600 () Bool)

(declare-fun e!1941491 () Bool)

(assert (=> b!3107600 (= e!1941490 e!1941491)))

(assert (=> b!3107600 (= c!519852 ((_ is Star!9583) r!17423))))

(declare-fun d!861483 () Bool)

(declare-fun c!519853 () Bool)

(assert (=> d!861483 (= c!519853 ((_ is EmptyExpr!9583) r!17423))))

(assert (=> d!861483 (= (matchRSpec!1720 r!17423 s!11993) e!1941494)))

(assert (=> b!3107601 (= e!1941491 call!219705)))

(declare-fun b!3107602 () Bool)

(declare-fun c!519854 () Bool)

(assert (=> b!3107602 (= c!519854 ((_ is Union!9583) r!17423))))

(assert (=> b!3107602 (= e!1941488 e!1941490)))

(declare-fun b!3107603 () Bool)

(declare-fun res!1272442 () Bool)

(assert (=> b!3107603 (=> res!1272442 e!1941493)))

(assert (=> b!3107603 (= res!1272442 call!219706)))

(assert (=> b!3107603 (= e!1941491 e!1941493)))

(declare-fun b!3107604 () Bool)

(declare-fun e!1941489 () Bool)

(assert (=> b!3107604 (= e!1941494 e!1941489)))

(declare-fun res!1272443 () Bool)

(assert (=> b!3107604 (= res!1272443 (not ((_ is EmptyLang!9583) r!17423)))))

(assert (=> b!3107604 (=> (not res!1272443) (not e!1941489))))

(declare-fun b!3107605 () Bool)

(declare-fun c!519851 () Bool)

(assert (=> b!3107605 (= c!519851 ((_ is ElementMatch!9583) r!17423))))

(assert (=> b!3107605 (= e!1941489 e!1941488)))

(assert (= (and d!861483 c!519853) b!3107599))

(assert (= (and d!861483 (not c!519853)) b!3107604))

(assert (= (and b!3107604 res!1272443) b!3107605))

(assert (= (and b!3107605 c!519851) b!3107598))

(assert (= (and b!3107605 (not c!519851)) b!3107602))

(assert (= (and b!3107602 c!519854) b!3107597))

(assert (= (and b!3107602 (not c!519854)) b!3107600))

(assert (= (and b!3107597 (not res!1272444)) b!3107596))

(assert (= (and b!3107600 c!519852) b!3107603))

(assert (= (and b!3107600 (not c!519852)) b!3107601))

(assert (= (and b!3107603 (not res!1272442)) b!3107595))

(assert (= (or b!3107595 b!3107601) bm!219701))

(assert (= (or b!3107599 b!3107603) bm!219700))

(declare-fun m!3403455 () Bool)

(assert (=> bm!219700 m!3403455))

(declare-fun m!3403457 () Bool)

(assert (=> b!3107596 m!3403457))

(declare-fun m!3403459 () Bool)

(assert (=> b!3107597 m!3403459))

(declare-fun m!3403461 () Bool)

(assert (=> bm!219701 m!3403461))

(assert (=> b!3107339 d!861483))

(declare-fun b!3107694 () Bool)

(declare-fun res!1272479 () Bool)

(declare-fun e!1941537 () Bool)

(assert (=> b!3107694 (=> (not res!1272479) (not e!1941537))))

(declare-fun call!219714 () Bool)

(assert (=> b!3107694 (= res!1272479 (not call!219714))))

(declare-fun b!3107695 () Bool)

(declare-fun e!1941530 () Bool)

(declare-fun lt!1056894 () Bool)

(assert (=> b!3107695 (= e!1941530 (= lt!1056894 call!219714))))

(declare-fun b!3107696 () Bool)

(declare-fun e!1941534 () Bool)

(declare-fun derivativeStep!2820 (Regex!9583 C!19352) Regex!9583)

(declare-fun head!6879 (List!35448) C!19352)

(declare-fun tail!5105 (List!35448) List!35448)

(assert (=> b!3107696 (= e!1941534 (matchR!4465 (derivativeStep!2820 r!17423 (head!6879 s!11993)) (tail!5105 s!11993)))))

(declare-fun b!3107697 () Bool)

(declare-fun e!1941536 () Bool)

(assert (=> b!3107697 (= e!1941530 e!1941536)))

(declare-fun c!519869 () Bool)

(assert (=> b!3107697 (= c!519869 ((_ is EmptyLang!9583) r!17423))))

(declare-fun b!3107698 () Bool)

(declare-fun res!1272478 () Bool)

(declare-fun e!1941532 () Bool)

(assert (=> b!3107698 (=> res!1272478 e!1941532)))

(assert (=> b!3107698 (= res!1272478 e!1941537)))

(declare-fun res!1272473 () Bool)

(assert (=> b!3107698 (=> (not res!1272473) (not e!1941537))))

(assert (=> b!3107698 (= res!1272473 lt!1056894)))

(declare-fun b!3107699 () Bool)

(declare-fun res!1272477 () Bool)

(assert (=> b!3107699 (=> (not res!1272477) (not e!1941537))))

(assert (=> b!3107699 (= res!1272477 (isEmpty!19671 (tail!5105 s!11993)))))

(declare-fun b!3107700 () Bool)

(declare-fun e!1941533 () Bool)

(assert (=> b!3107700 (= e!1941533 (not (= (head!6879 s!11993) (c!519771 r!17423))))))

(declare-fun bm!219709 () Bool)

(assert (=> bm!219709 (= call!219714 (isEmpty!19671 s!11993))))

(declare-fun d!861499 () Bool)

(assert (=> d!861499 e!1941530))

(declare-fun c!519870 () Bool)

(assert (=> d!861499 (= c!519870 ((_ is EmptyExpr!9583) r!17423))))

(assert (=> d!861499 (= lt!1056894 e!1941534)))

(declare-fun c!519868 () Bool)

(assert (=> d!861499 (= c!519868 (isEmpty!19671 s!11993))))

(assert (=> d!861499 (validRegex!4316 r!17423)))

(assert (=> d!861499 (= (matchR!4465 r!17423 s!11993) lt!1056894)))

(declare-fun b!3107701 () Bool)

(declare-fun e!1941531 () Bool)

(assert (=> b!3107701 (= e!1941531 e!1941533)))

(declare-fun res!1272474 () Bool)

(assert (=> b!3107701 (=> res!1272474 e!1941533)))

(assert (=> b!3107701 (= res!1272474 call!219714)))

(declare-fun b!3107702 () Bool)

(assert (=> b!3107702 (= e!1941532 e!1941531)))

(declare-fun res!1272476 () Bool)

(assert (=> b!3107702 (=> (not res!1272476) (not e!1941531))))

(assert (=> b!3107702 (= res!1272476 (not lt!1056894))))

(declare-fun b!3107703 () Bool)

(declare-fun res!1272475 () Bool)

(assert (=> b!3107703 (=> res!1272475 e!1941532)))

(assert (=> b!3107703 (= res!1272475 (not ((_ is ElementMatch!9583) r!17423)))))

(assert (=> b!3107703 (= e!1941536 e!1941532)))

(declare-fun b!3107704 () Bool)

(assert (=> b!3107704 (= e!1941536 (not lt!1056894))))

(declare-fun b!3107705 () Bool)

(assert (=> b!3107705 (= e!1941537 (= (head!6879 s!11993) (c!519771 r!17423)))))

(declare-fun b!3107706 () Bool)

(declare-fun nullable!3225 (Regex!9583) Bool)

(assert (=> b!3107706 (= e!1941534 (nullable!3225 r!17423))))

(declare-fun b!3107707 () Bool)

(declare-fun res!1272472 () Bool)

(assert (=> b!3107707 (=> res!1272472 e!1941533)))

(assert (=> b!3107707 (= res!1272472 (not (isEmpty!19671 (tail!5105 s!11993))))))

(assert (= (and d!861499 c!519868) b!3107706))

(assert (= (and d!861499 (not c!519868)) b!3107696))

(assert (= (and d!861499 c!519870) b!3107695))

(assert (= (and d!861499 (not c!519870)) b!3107697))

(assert (= (and b!3107697 c!519869) b!3107704))

(assert (= (and b!3107697 (not c!519869)) b!3107703))

(assert (= (and b!3107703 (not res!1272475)) b!3107698))

(assert (= (and b!3107698 res!1272473) b!3107694))

(assert (= (and b!3107694 res!1272479) b!3107699))

(assert (= (and b!3107699 res!1272477) b!3107705))

(assert (= (and b!3107698 (not res!1272478)) b!3107702))

(assert (= (and b!3107702 res!1272476) b!3107701))

(assert (= (and b!3107701 (not res!1272474)) b!3107707))

(assert (= (and b!3107707 (not res!1272472)) b!3107700))

(assert (= (or b!3107695 b!3107694 b!3107701) bm!219709))

(declare-fun m!3403477 () Bool)

(assert (=> b!3107706 m!3403477))

(assert (=> bm!219709 m!3403455))

(declare-fun m!3403479 () Bool)

(assert (=> b!3107700 m!3403479))

(assert (=> b!3107696 m!3403479))

(assert (=> b!3107696 m!3403479))

(declare-fun m!3403481 () Bool)

(assert (=> b!3107696 m!3403481))

(declare-fun m!3403483 () Bool)

(assert (=> b!3107696 m!3403483))

(assert (=> b!3107696 m!3403481))

(assert (=> b!3107696 m!3403483))

(declare-fun m!3403485 () Bool)

(assert (=> b!3107696 m!3403485))

(assert (=> b!3107705 m!3403479))

(assert (=> d!861499 m!3403455))

(assert (=> d!861499 m!3403361))

(assert (=> b!3107707 m!3403483))

(assert (=> b!3107707 m!3403483))

(declare-fun m!3403487 () Bool)

(assert (=> b!3107707 m!3403487))

(assert (=> b!3107699 m!3403483))

(assert (=> b!3107699 m!3403483))

(assert (=> b!3107699 m!3403487))

(assert (=> b!3107339 d!861499))

(declare-fun d!861507 () Bool)

(assert (=> d!861507 (= (matchR!4465 r!17423 s!11993) (matchRSpec!1720 r!17423 s!11993))))

(declare-fun lt!1056897 () Unit!49605)

(declare-fun choose!18380 (Regex!9583 List!35448) Unit!49605)

(assert (=> d!861507 (= lt!1056897 (choose!18380 r!17423 s!11993))))

(assert (=> d!861507 (validRegex!4316 r!17423)))

(assert (=> d!861507 (= (mainMatchTheorem!1720 r!17423 s!11993) lt!1056897)))

(declare-fun bs!535761 () Bool)

(assert (= bs!535761 d!861507))

(assert (=> bs!535761 m!3403371))

(assert (=> bs!535761 m!3403369))

(declare-fun m!3403489 () Bool)

(assert (=> bs!535761 m!3403489))

(assert (=> bs!535761 m!3403361))

(assert (=> b!3107339 d!861507))

(declare-fun b!3107716 () Bool)

(declare-fun res!1272487 () Bool)

(declare-fun e!1941546 () Bool)

(assert (=> b!3107716 (=> (not res!1272487) (not e!1941546))))

(declare-fun call!219715 () Bool)

(assert (=> b!3107716 (= res!1272487 (not call!219715))))

(declare-fun b!3107717 () Bool)

(declare-fun e!1941540 () Bool)

(declare-fun lt!1056898 () Bool)

(assert (=> b!3107717 (= e!1941540 (= lt!1056898 call!219715))))

(declare-fun e!1941544 () Bool)

(declare-fun b!3107718 () Bool)

(assert (=> b!3107718 (= e!1941544 (matchR!4465 (derivativeStep!2820 (Union!9583 lt!1056857 lt!1056858) (head!6879 s!11993)) (tail!5105 s!11993)))))

(declare-fun b!3107719 () Bool)

(declare-fun e!1941545 () Bool)

(assert (=> b!3107719 (= e!1941540 e!1941545)))

(declare-fun c!519872 () Bool)

(assert (=> b!3107719 (= c!519872 ((_ is EmptyLang!9583) (Union!9583 lt!1056857 lt!1056858)))))

(declare-fun b!3107720 () Bool)

(declare-fun res!1272486 () Bool)

(declare-fun e!1941542 () Bool)

(assert (=> b!3107720 (=> res!1272486 e!1941542)))

(assert (=> b!3107720 (= res!1272486 e!1941546)))

(declare-fun res!1272481 () Bool)

(assert (=> b!3107720 (=> (not res!1272481) (not e!1941546))))

(assert (=> b!3107720 (= res!1272481 lt!1056898)))

(declare-fun b!3107721 () Bool)

(declare-fun res!1272485 () Bool)

(assert (=> b!3107721 (=> (not res!1272485) (not e!1941546))))

(assert (=> b!3107721 (= res!1272485 (isEmpty!19671 (tail!5105 s!11993)))))

(declare-fun b!3107722 () Bool)

(declare-fun e!1941543 () Bool)

(assert (=> b!3107722 (= e!1941543 (not (= (head!6879 s!11993) (c!519771 (Union!9583 lt!1056857 lt!1056858)))))))

(declare-fun bm!219710 () Bool)

(assert (=> bm!219710 (= call!219715 (isEmpty!19671 s!11993))))

(declare-fun d!861509 () Bool)

(assert (=> d!861509 e!1941540))

(declare-fun c!519873 () Bool)

(assert (=> d!861509 (= c!519873 ((_ is EmptyExpr!9583) (Union!9583 lt!1056857 lt!1056858)))))

(assert (=> d!861509 (= lt!1056898 e!1941544)))

(declare-fun c!519871 () Bool)

(assert (=> d!861509 (= c!519871 (isEmpty!19671 s!11993))))

(assert (=> d!861509 (validRegex!4316 (Union!9583 lt!1056857 lt!1056858))))

(assert (=> d!861509 (= (matchR!4465 (Union!9583 lt!1056857 lt!1056858) s!11993) lt!1056898)))

(declare-fun b!3107723 () Bool)

(declare-fun e!1941541 () Bool)

(assert (=> b!3107723 (= e!1941541 e!1941543)))

(declare-fun res!1272482 () Bool)

(assert (=> b!3107723 (=> res!1272482 e!1941543)))

(assert (=> b!3107723 (= res!1272482 call!219715)))

(declare-fun b!3107724 () Bool)

(assert (=> b!3107724 (= e!1941542 e!1941541)))

(declare-fun res!1272484 () Bool)

(assert (=> b!3107724 (=> (not res!1272484) (not e!1941541))))

(assert (=> b!3107724 (= res!1272484 (not lt!1056898))))

(declare-fun b!3107725 () Bool)

(declare-fun res!1272483 () Bool)

(assert (=> b!3107725 (=> res!1272483 e!1941542)))

(assert (=> b!3107725 (= res!1272483 (not ((_ is ElementMatch!9583) (Union!9583 lt!1056857 lt!1056858))))))

(assert (=> b!3107725 (= e!1941545 e!1941542)))

(declare-fun b!3107726 () Bool)

(assert (=> b!3107726 (= e!1941545 (not lt!1056898))))

(declare-fun b!3107727 () Bool)

(assert (=> b!3107727 (= e!1941546 (= (head!6879 s!11993) (c!519771 (Union!9583 lt!1056857 lt!1056858))))))

(declare-fun b!3107728 () Bool)

(assert (=> b!3107728 (= e!1941544 (nullable!3225 (Union!9583 lt!1056857 lt!1056858)))))

(declare-fun b!3107729 () Bool)

(declare-fun res!1272480 () Bool)

(assert (=> b!3107729 (=> res!1272480 e!1941543)))

(assert (=> b!3107729 (= res!1272480 (not (isEmpty!19671 (tail!5105 s!11993))))))

(assert (= (and d!861509 c!519871) b!3107728))

(assert (= (and d!861509 (not c!519871)) b!3107718))

(assert (= (and d!861509 c!519873) b!3107717))

(assert (= (and d!861509 (not c!519873)) b!3107719))

(assert (= (and b!3107719 c!519872) b!3107726))

(assert (= (and b!3107719 (not c!519872)) b!3107725))

(assert (= (and b!3107725 (not res!1272483)) b!3107720))

(assert (= (and b!3107720 res!1272481) b!3107716))

(assert (= (and b!3107716 res!1272487) b!3107721))

(assert (= (and b!3107721 res!1272485) b!3107727))

(assert (= (and b!3107720 (not res!1272486)) b!3107724))

(assert (= (and b!3107724 res!1272484) b!3107723))

(assert (= (and b!3107723 (not res!1272482)) b!3107729))

(assert (= (and b!3107729 (not res!1272480)) b!3107722))

(assert (= (or b!3107717 b!3107716 b!3107723) bm!219710))

(declare-fun m!3403491 () Bool)

(assert (=> b!3107728 m!3403491))

(assert (=> bm!219710 m!3403455))

(assert (=> b!3107722 m!3403479))

(assert (=> b!3107718 m!3403479))

(assert (=> b!3107718 m!3403479))

(declare-fun m!3403493 () Bool)

(assert (=> b!3107718 m!3403493))

(assert (=> b!3107718 m!3403483))

(assert (=> b!3107718 m!3403493))

(assert (=> b!3107718 m!3403483))

(declare-fun m!3403495 () Bool)

(assert (=> b!3107718 m!3403495))

(assert (=> b!3107727 m!3403479))

(assert (=> d!861509 m!3403455))

(declare-fun m!3403497 () Bool)

(assert (=> d!861509 m!3403497))

(assert (=> b!3107729 m!3403483))

(assert (=> b!3107729 m!3403483))

(assert (=> b!3107729 m!3403487))

(assert (=> b!3107721 m!3403483))

(assert (=> b!3107721 m!3403483))

(assert (=> b!3107721 m!3403487))

(assert (=> b!3107334 d!861509))

(declare-fun b!3107748 () Bool)

(declare-fun e!1941565 () Bool)

(declare-fun e!1941567 () Bool)

(assert (=> b!3107748 (= e!1941565 e!1941567)))

(declare-fun c!519879 () Bool)

(assert (=> b!3107748 (= c!519879 ((_ is Union!9583) lt!1056857))))

(declare-fun b!3107749 () Bool)

(declare-fun e!1941561 () Bool)

(declare-fun call!219724 () Bool)

(assert (=> b!3107749 (= e!1941561 call!219724)))

(declare-fun bm!219717 () Bool)

(declare-fun call!219723 () Bool)

(assert (=> bm!219717 (= call!219723 (validRegex!4316 (ite c!519879 (regTwo!19679 lt!1056857) (regOne!19678 lt!1056857))))))

(declare-fun b!3107750 () Bool)

(declare-fun res!1272499 () Bool)

(declare-fun e!1941564 () Bool)

(assert (=> b!3107750 (=> (not res!1272499) (not e!1941564))))

(declare-fun call!219722 () Bool)

(assert (=> b!3107750 (= res!1272499 call!219722)))

(assert (=> b!3107750 (= e!1941567 e!1941564)))

(declare-fun b!3107751 () Bool)

(declare-fun res!1272501 () Bool)

(declare-fun e!1941563 () Bool)

(assert (=> b!3107751 (=> res!1272501 e!1941563)))

(assert (=> b!3107751 (= res!1272501 (not ((_ is Concat!14904) lt!1056857)))))

(assert (=> b!3107751 (= e!1941567 e!1941563)))

(declare-fun b!3107752 () Bool)

(declare-fun e!1941566 () Bool)

(assert (=> b!3107752 (= e!1941566 call!219722)))

(declare-fun b!3107753 () Bool)

(declare-fun e!1941562 () Bool)

(assert (=> b!3107753 (= e!1941562 e!1941565)))

(declare-fun c!519878 () Bool)

(assert (=> b!3107753 (= c!519878 ((_ is Star!9583) lt!1056857))))

(declare-fun bm!219718 () Bool)

(assert (=> bm!219718 (= call!219722 call!219724)))

(declare-fun bm!219719 () Bool)

(assert (=> bm!219719 (= call!219724 (validRegex!4316 (ite c!519878 (reg!9912 lt!1056857) (ite c!519879 (regOne!19679 lt!1056857) (regTwo!19678 lt!1056857)))))))

(declare-fun b!3107755 () Bool)

(assert (=> b!3107755 (= e!1941563 e!1941566)))

(declare-fun res!1272498 () Bool)

(assert (=> b!3107755 (=> (not res!1272498) (not e!1941566))))

(assert (=> b!3107755 (= res!1272498 call!219723)))

(declare-fun b!3107756 () Bool)

(assert (=> b!3107756 (= e!1941564 call!219723)))

(declare-fun b!3107754 () Bool)

(assert (=> b!3107754 (= e!1941565 e!1941561)))

(declare-fun res!1272502 () Bool)

(assert (=> b!3107754 (= res!1272502 (not (nullable!3225 (reg!9912 lt!1056857))))))

(assert (=> b!3107754 (=> (not res!1272502) (not e!1941561))))

(declare-fun d!861511 () Bool)

(declare-fun res!1272500 () Bool)

(assert (=> d!861511 (=> res!1272500 e!1941562)))

(assert (=> d!861511 (= res!1272500 ((_ is ElementMatch!9583) lt!1056857))))

(assert (=> d!861511 (= (validRegex!4316 lt!1056857) e!1941562)))

(assert (= (and d!861511 (not res!1272500)) b!3107753))

(assert (= (and b!3107753 c!519878) b!3107754))

(assert (= (and b!3107753 (not c!519878)) b!3107748))

(assert (= (and b!3107754 res!1272502) b!3107749))

(assert (= (and b!3107748 c!519879) b!3107750))

(assert (= (and b!3107748 (not c!519879)) b!3107751))

(assert (= (and b!3107750 res!1272499) b!3107756))

(assert (= (and b!3107751 (not res!1272501)) b!3107755))

(assert (= (and b!3107755 res!1272498) b!3107752))

(assert (= (or b!3107750 b!3107752) bm!219718))

(assert (= (or b!3107756 b!3107755) bm!219717))

(assert (= (or b!3107749 bm!219718) bm!219719))

(declare-fun m!3403499 () Bool)

(assert (=> bm!219717 m!3403499))

(declare-fun m!3403501 () Bool)

(assert (=> bm!219719 m!3403501))

(declare-fun m!3403503 () Bool)

(assert (=> b!3107754 m!3403503))

(assert (=> b!3107333 d!861511))

(declare-fun b!3107757 () Bool)

(declare-fun e!1941572 () Bool)

(declare-fun e!1941574 () Bool)

(assert (=> b!3107757 (= e!1941572 e!1941574)))

(declare-fun c!519881 () Bool)

(assert (=> b!3107757 (= c!519881 ((_ is Union!9583) r!17423))))

(declare-fun b!3107758 () Bool)

(declare-fun e!1941568 () Bool)

(declare-fun call!219727 () Bool)

(assert (=> b!3107758 (= e!1941568 call!219727)))

(declare-fun bm!219720 () Bool)

(declare-fun call!219726 () Bool)

(assert (=> bm!219720 (= call!219726 (validRegex!4316 (ite c!519881 (regTwo!19679 r!17423) (regOne!19678 r!17423))))))

(declare-fun b!3107759 () Bool)

(declare-fun res!1272504 () Bool)

(declare-fun e!1941571 () Bool)

(assert (=> b!3107759 (=> (not res!1272504) (not e!1941571))))

(declare-fun call!219725 () Bool)

(assert (=> b!3107759 (= res!1272504 call!219725)))

(assert (=> b!3107759 (= e!1941574 e!1941571)))

(declare-fun b!3107760 () Bool)

(declare-fun res!1272506 () Bool)

(declare-fun e!1941570 () Bool)

(assert (=> b!3107760 (=> res!1272506 e!1941570)))

(assert (=> b!3107760 (= res!1272506 (not ((_ is Concat!14904) r!17423)))))

(assert (=> b!3107760 (= e!1941574 e!1941570)))

(declare-fun b!3107761 () Bool)

(declare-fun e!1941573 () Bool)

(assert (=> b!3107761 (= e!1941573 call!219725)))

(declare-fun b!3107762 () Bool)

(declare-fun e!1941569 () Bool)

(assert (=> b!3107762 (= e!1941569 e!1941572)))

(declare-fun c!519880 () Bool)

(assert (=> b!3107762 (= c!519880 ((_ is Star!9583) r!17423))))

(declare-fun bm!219721 () Bool)

(assert (=> bm!219721 (= call!219725 call!219727)))

(declare-fun bm!219722 () Bool)

(assert (=> bm!219722 (= call!219727 (validRegex!4316 (ite c!519880 (reg!9912 r!17423) (ite c!519881 (regOne!19679 r!17423) (regTwo!19678 r!17423)))))))

(declare-fun b!3107764 () Bool)

(assert (=> b!3107764 (= e!1941570 e!1941573)))

(declare-fun res!1272503 () Bool)

(assert (=> b!3107764 (=> (not res!1272503) (not e!1941573))))

(assert (=> b!3107764 (= res!1272503 call!219726)))

(declare-fun b!3107765 () Bool)

(assert (=> b!3107765 (= e!1941571 call!219726)))

(declare-fun b!3107763 () Bool)

(assert (=> b!3107763 (= e!1941572 e!1941568)))

(declare-fun res!1272507 () Bool)

(assert (=> b!3107763 (= res!1272507 (not (nullable!3225 (reg!9912 r!17423))))))

(assert (=> b!3107763 (=> (not res!1272507) (not e!1941568))))

(declare-fun d!861513 () Bool)

(declare-fun res!1272505 () Bool)

(assert (=> d!861513 (=> res!1272505 e!1941569)))

(assert (=> d!861513 (= res!1272505 ((_ is ElementMatch!9583) r!17423))))

(assert (=> d!861513 (= (validRegex!4316 r!17423) e!1941569)))

(assert (= (and d!861513 (not res!1272505)) b!3107762))

(assert (= (and b!3107762 c!519880) b!3107763))

(assert (= (and b!3107762 (not c!519880)) b!3107757))

(assert (= (and b!3107763 res!1272507) b!3107758))

(assert (= (and b!3107757 c!519881) b!3107759))

(assert (= (and b!3107757 (not c!519881)) b!3107760))

(assert (= (and b!3107759 res!1272504) b!3107765))

(assert (= (and b!3107760 (not res!1272506)) b!3107764))

(assert (= (and b!3107764 res!1272503) b!3107761))

(assert (= (or b!3107759 b!3107761) bm!219721))

(assert (= (or b!3107765 b!3107764) bm!219720))

(assert (= (or b!3107758 bm!219721) bm!219722))

(declare-fun m!3403505 () Bool)

(assert (=> bm!219720 m!3403505))

(declare-fun m!3403507 () Bool)

(assert (=> bm!219722 m!3403507))

(declare-fun m!3403509 () Bool)

(assert (=> b!3107763 m!3403509))

(assert (=> start!294552 d!861513))

(declare-fun d!861515 () Bool)

(assert (=> d!861515 (= (isEmptyLang!634 lt!1056857) ((_ is EmptyLang!9583) lt!1056857))))

(assert (=> b!3107341 d!861515))

(declare-fun b!3107816 () Bool)

(declare-fun e!1941603 () Regex!9583)

(declare-fun lt!1056912 () Regex!9583)

(assert (=> b!3107816 (= e!1941603 (Star!9583 lt!1056912))))

(declare-fun d!861517 () Bool)

(declare-fun e!1941616 () Bool)

(assert (=> d!861517 e!1941616))

(declare-fun res!1272515 () Bool)

(assert (=> d!861517 (=> (not res!1272515) (not e!1941616))))

(declare-fun lt!1056916 () Regex!9583)

(assert (=> d!861517 (= res!1272515 (validRegex!4316 lt!1056916))))

(declare-fun e!1941607 () Regex!9583)

(assert (=> d!861517 (= lt!1056916 e!1941607)))

(declare-fun c!519913 () Bool)

(assert (=> d!861517 (= c!519913 ((_ is EmptyLang!9583) (regTwo!19679 r!17423)))))

(assert (=> d!861517 (validRegex!4316 (regTwo!19679 r!17423))))

(assert (=> d!861517 (= (simplify!538 (regTwo!19679 r!17423)) lt!1056916)))

(declare-fun b!3107817 () Bool)

(declare-fun e!1941609 () Regex!9583)

(declare-fun lt!1056915 () Regex!9583)

(assert (=> b!3107817 (= e!1941609 lt!1056915)))

(declare-fun b!3107818 () Bool)

(assert (=> b!3107818 (= e!1941607 EmptyLang!9583)))

(declare-fun b!3107819 () Bool)

(assert (=> b!3107819 (= e!1941603 EmptyExpr!9583)))

(declare-fun b!3107820 () Bool)

(declare-fun e!1941615 () Regex!9583)

(declare-fun e!1941611 () Regex!9583)

(assert (=> b!3107820 (= e!1941615 e!1941611)))

(declare-fun c!519906 () Bool)

(assert (=> b!3107820 (= c!519906 ((_ is Star!9583) (regTwo!19679 r!17423)))))

(declare-fun bm!219737 () Bool)

(declare-fun call!219747 () Bool)

(declare-fun call!219746 () Bool)

(assert (=> bm!219737 (= call!219747 call!219746)))

(declare-fun lt!1056914 () Regex!9583)

(declare-fun call!219745 () Bool)

(declare-fun bm!219738 () Bool)

(declare-fun isEmptyExpr!636 (Regex!9583) Bool)

(assert (=> bm!219738 (= call!219745 (isEmptyExpr!636 (ite c!519906 lt!1056912 lt!1056914)))))

(declare-fun b!3107821 () Bool)

(declare-fun e!1941614 () Regex!9583)

(assert (=> b!3107821 (= e!1941614 EmptyLang!9583)))

(declare-fun b!3107822 () Bool)

(declare-fun e!1941613 () Regex!9583)

(declare-fun lt!1056913 () Regex!9583)

(assert (=> b!3107822 (= e!1941613 (Concat!14904 lt!1056913 lt!1056914))))

(declare-fun b!3107823 () Bool)

(declare-fun e!1941605 () Regex!9583)

(assert (=> b!3107823 (= e!1941607 e!1941605)))

(declare-fun c!519904 () Bool)

(assert (=> b!3107823 (= c!519904 ((_ is ElementMatch!9583) (regTwo!19679 r!17423)))))

(declare-fun bm!219739 () Bool)

(declare-fun call!219743 () Bool)

(declare-fun c!519911 () Bool)

(assert (=> bm!219739 (= call!219743 (isEmptyLang!634 (ite c!519911 lt!1056915 lt!1056913)))))

(declare-fun bm!219740 () Bool)

(declare-fun call!219742 () Regex!9583)

(assert (=> bm!219740 (= call!219742 (simplify!538 (ite c!519911 (regOne!19679 (regTwo!19679 r!17423)) (regOne!19678 (regTwo!19679 r!17423)))))))

(declare-fun b!3107824 () Bool)

(assert (=> b!3107824 (= e!1941605 (regTwo!19679 r!17423))))

(declare-fun b!3107825 () Bool)

(declare-fun e!1941610 () Bool)

(assert (=> b!3107825 (= e!1941610 call!219747)))

(declare-fun b!3107826 () Bool)

(declare-fun c!519907 () Bool)

(assert (=> b!3107826 (= c!519907 call!219747)))

(declare-fun e!1941604 () Regex!9583)

(assert (=> b!3107826 (= e!1941604 e!1941609)))

(declare-fun b!3107827 () Bool)

(declare-fun lt!1056911 () Regex!9583)

(assert (=> b!3107827 (= e!1941604 lt!1056911)))

(declare-fun call!219748 () Regex!9583)

(declare-fun bm!219741 () Bool)

(assert (=> bm!219741 (= call!219748 (simplify!538 (ite c!519906 (reg!9912 (regTwo!19679 r!17423)) (ite c!519911 (regTwo!19679 (regTwo!19679 r!17423)) (regTwo!19678 (regTwo!19679 r!17423))))))))

(declare-fun b!3107828 () Bool)

(declare-fun e!1941608 () Bool)

(assert (=> b!3107828 (= e!1941608 call!219745)))

(declare-fun b!3107829 () Bool)

(declare-fun c!519908 () Bool)

(assert (=> b!3107829 (= c!519908 (isEmptyExpr!636 lt!1056913))))

(declare-fun e!1941612 () Regex!9583)

(assert (=> b!3107829 (= e!1941614 e!1941612)))

(declare-fun b!3107830 () Bool)

(assert (=> b!3107830 (= e!1941616 (= (nullable!3225 lt!1056916) (nullable!3225 (regTwo!19679 r!17423))))))

(declare-fun b!3107831 () Bool)

(assert (=> b!3107831 (= e!1941612 e!1941613)))

(declare-fun c!519912 () Bool)

(assert (=> b!3107831 (= c!519912 call!219745)))

(declare-fun bm!219742 () Bool)

(declare-fun call!219744 () Regex!9583)

(assert (=> bm!219742 (= call!219744 call!219748)))

(declare-fun b!3107832 () Bool)

(assert (=> b!3107832 (= c!519911 ((_ is Union!9583) (regTwo!19679 r!17423)))))

(declare-fun e!1941606 () Regex!9583)

(assert (=> b!3107832 (= e!1941611 e!1941606)))

(declare-fun b!3107833 () Bool)

(assert (=> b!3107833 (= e!1941606 e!1941604)))

(assert (=> b!3107833 (= lt!1056915 call!219742)))

(assert (=> b!3107833 (= lt!1056911 call!219744)))

(declare-fun c!519905 () Bool)

(assert (=> b!3107833 (= c!519905 call!219743)))

(declare-fun b!3107834 () Bool)

(assert (=> b!3107834 (= e!1941615 EmptyExpr!9583)))

(declare-fun b!3107835 () Bool)

(assert (=> b!3107835 (= e!1941606 e!1941614)))

(assert (=> b!3107835 (= lt!1056913 call!219742)))

(assert (=> b!3107835 (= lt!1056914 call!219744)))

(declare-fun res!1272516 () Bool)

(assert (=> b!3107835 (= res!1272516 call!219743)))

(assert (=> b!3107835 (=> res!1272516 e!1941610)))

(declare-fun c!519910 () Bool)

(assert (=> b!3107835 (= c!519910 e!1941610)))

(declare-fun b!3107836 () Bool)

(assert (=> b!3107836 (= e!1941613 lt!1056913)))

(declare-fun bm!219743 () Bool)

(assert (=> bm!219743 (= call!219746 (isEmptyLang!634 (ite c!519906 lt!1056912 (ite c!519911 lt!1056911 lt!1056914))))))

(declare-fun b!3107837 () Bool)

(declare-fun c!519909 () Bool)

(assert (=> b!3107837 (= c!519909 e!1941608)))

(declare-fun res!1272514 () Bool)

(assert (=> b!3107837 (=> res!1272514 e!1941608)))

(assert (=> b!3107837 (= res!1272514 call!219746)))

(assert (=> b!3107837 (= lt!1056912 call!219748)))

(assert (=> b!3107837 (= e!1941611 e!1941603)))

(declare-fun b!3107838 () Bool)

(declare-fun c!519914 () Bool)

(assert (=> b!3107838 (= c!519914 ((_ is EmptyExpr!9583) (regTwo!19679 r!17423)))))

(assert (=> b!3107838 (= e!1941605 e!1941615)))

(declare-fun b!3107839 () Bool)

(assert (=> b!3107839 (= e!1941609 (Union!9583 lt!1056915 lt!1056911))))

(declare-fun b!3107840 () Bool)

(assert (=> b!3107840 (= e!1941612 lt!1056914)))

(assert (= (and d!861517 c!519913) b!3107818))

(assert (= (and d!861517 (not c!519913)) b!3107823))

(assert (= (and b!3107823 c!519904) b!3107824))

(assert (= (and b!3107823 (not c!519904)) b!3107838))

(assert (= (and b!3107838 c!519914) b!3107834))

(assert (= (and b!3107838 (not c!519914)) b!3107820))

(assert (= (and b!3107820 c!519906) b!3107837))

(assert (= (and b!3107820 (not c!519906)) b!3107832))

(assert (= (and b!3107837 (not res!1272514)) b!3107828))

(assert (= (and b!3107837 c!519909) b!3107819))

(assert (= (and b!3107837 (not c!519909)) b!3107816))

(assert (= (and b!3107832 c!519911) b!3107833))

(assert (= (and b!3107832 (not c!519911)) b!3107835))

(assert (= (and b!3107833 c!519905) b!3107827))

(assert (= (and b!3107833 (not c!519905)) b!3107826))

(assert (= (and b!3107826 c!519907) b!3107817))

(assert (= (and b!3107826 (not c!519907)) b!3107839))

(assert (= (and b!3107835 (not res!1272516)) b!3107825))

(assert (= (and b!3107835 c!519910) b!3107821))

(assert (= (and b!3107835 (not c!519910)) b!3107829))

(assert (= (and b!3107829 c!519908) b!3107840))

(assert (= (and b!3107829 (not c!519908)) b!3107831))

(assert (= (and b!3107831 c!519912) b!3107836))

(assert (= (and b!3107831 (not c!519912)) b!3107822))

(assert (= (or b!3107833 b!3107835) bm!219742))

(assert (= (or b!3107833 b!3107835) bm!219740))

(assert (= (or b!3107833 b!3107835) bm!219739))

(assert (= (or b!3107826 b!3107825) bm!219737))

(assert (= (or b!3107828 b!3107831) bm!219738))

(assert (= (or b!3107837 bm!219742) bm!219741))

(assert (= (or b!3107837 bm!219737) bm!219743))

(assert (= (and d!861517 res!1272515) b!3107830))

(declare-fun m!3403511 () Bool)

(assert (=> bm!219740 m!3403511))

(declare-fun m!3403513 () Bool)

(assert (=> bm!219738 m!3403513))

(declare-fun m!3403515 () Bool)

(assert (=> d!861517 m!3403515))

(declare-fun m!3403517 () Bool)

(assert (=> d!861517 m!3403517))

(declare-fun m!3403519 () Bool)

(assert (=> b!3107830 m!3403519))

(declare-fun m!3403521 () Bool)

(assert (=> b!3107830 m!3403521))

(declare-fun m!3403523 () Bool)

(assert (=> bm!219741 m!3403523))

(declare-fun m!3403525 () Bool)

(assert (=> bm!219739 m!3403525))

(declare-fun m!3403527 () Bool)

(assert (=> b!3107829 m!3403527))

(declare-fun m!3403529 () Bool)

(assert (=> bm!219743 m!3403529))

(assert (=> b!3107341 d!861517))

(declare-fun b!3107841 () Bool)

(declare-fun e!1941617 () Regex!9583)

(declare-fun lt!1056918 () Regex!9583)

(assert (=> b!3107841 (= e!1941617 (Star!9583 lt!1056918))))

(declare-fun d!861519 () Bool)

(declare-fun e!1941630 () Bool)

(assert (=> d!861519 e!1941630))

(declare-fun res!1272518 () Bool)

(assert (=> d!861519 (=> (not res!1272518) (not e!1941630))))

(declare-fun lt!1056922 () Regex!9583)

(assert (=> d!861519 (= res!1272518 (validRegex!4316 lt!1056922))))

(declare-fun e!1941621 () Regex!9583)

(assert (=> d!861519 (= lt!1056922 e!1941621)))

(declare-fun c!519924 () Bool)

(assert (=> d!861519 (= c!519924 ((_ is EmptyLang!9583) (regOne!19679 r!17423)))))

(assert (=> d!861519 (validRegex!4316 (regOne!19679 r!17423))))

(assert (=> d!861519 (= (simplify!538 (regOne!19679 r!17423)) lt!1056922)))

(declare-fun b!3107842 () Bool)

(declare-fun e!1941623 () Regex!9583)

(declare-fun lt!1056921 () Regex!9583)

(assert (=> b!3107842 (= e!1941623 lt!1056921)))

(declare-fun b!3107843 () Bool)

(assert (=> b!3107843 (= e!1941621 EmptyLang!9583)))

(declare-fun b!3107844 () Bool)

(assert (=> b!3107844 (= e!1941617 EmptyExpr!9583)))

(declare-fun b!3107845 () Bool)

(declare-fun e!1941629 () Regex!9583)

(declare-fun e!1941625 () Regex!9583)

(assert (=> b!3107845 (= e!1941629 e!1941625)))

(declare-fun c!519917 () Bool)

(assert (=> b!3107845 (= c!519917 ((_ is Star!9583) (regOne!19679 r!17423)))))

(declare-fun bm!219744 () Bool)

(declare-fun call!219754 () Bool)

(declare-fun call!219753 () Bool)

(assert (=> bm!219744 (= call!219754 call!219753)))

(declare-fun call!219752 () Bool)

(declare-fun bm!219745 () Bool)

(declare-fun lt!1056920 () Regex!9583)

(assert (=> bm!219745 (= call!219752 (isEmptyExpr!636 (ite c!519917 lt!1056918 lt!1056920)))))

(declare-fun b!3107846 () Bool)

(declare-fun e!1941628 () Regex!9583)

(assert (=> b!3107846 (= e!1941628 EmptyLang!9583)))

(declare-fun b!3107847 () Bool)

(declare-fun e!1941627 () Regex!9583)

(declare-fun lt!1056919 () Regex!9583)

(assert (=> b!3107847 (= e!1941627 (Concat!14904 lt!1056919 lt!1056920))))

(declare-fun b!3107848 () Bool)

(declare-fun e!1941619 () Regex!9583)

(assert (=> b!3107848 (= e!1941621 e!1941619)))

(declare-fun c!519915 () Bool)

(assert (=> b!3107848 (= c!519915 ((_ is ElementMatch!9583) (regOne!19679 r!17423)))))

(declare-fun c!519922 () Bool)

(declare-fun bm!219746 () Bool)

(declare-fun call!219750 () Bool)

(assert (=> bm!219746 (= call!219750 (isEmptyLang!634 (ite c!519922 lt!1056921 lt!1056919)))))

(declare-fun bm!219747 () Bool)

(declare-fun call!219749 () Regex!9583)

(assert (=> bm!219747 (= call!219749 (simplify!538 (ite c!519922 (regOne!19679 (regOne!19679 r!17423)) (regOne!19678 (regOne!19679 r!17423)))))))

(declare-fun b!3107849 () Bool)

(assert (=> b!3107849 (= e!1941619 (regOne!19679 r!17423))))

(declare-fun b!3107850 () Bool)

(declare-fun e!1941624 () Bool)

(assert (=> b!3107850 (= e!1941624 call!219754)))

(declare-fun b!3107851 () Bool)

(declare-fun c!519918 () Bool)

(assert (=> b!3107851 (= c!519918 call!219754)))

(declare-fun e!1941618 () Regex!9583)

(assert (=> b!3107851 (= e!1941618 e!1941623)))

(declare-fun b!3107852 () Bool)

(declare-fun lt!1056917 () Regex!9583)

(assert (=> b!3107852 (= e!1941618 lt!1056917)))

(declare-fun call!219755 () Regex!9583)

(declare-fun bm!219748 () Bool)

(assert (=> bm!219748 (= call!219755 (simplify!538 (ite c!519917 (reg!9912 (regOne!19679 r!17423)) (ite c!519922 (regTwo!19679 (regOne!19679 r!17423)) (regTwo!19678 (regOne!19679 r!17423))))))))

(declare-fun b!3107853 () Bool)

(declare-fun e!1941622 () Bool)

(assert (=> b!3107853 (= e!1941622 call!219752)))

(declare-fun b!3107854 () Bool)

(declare-fun c!519919 () Bool)

(assert (=> b!3107854 (= c!519919 (isEmptyExpr!636 lt!1056919))))

(declare-fun e!1941626 () Regex!9583)

(assert (=> b!3107854 (= e!1941628 e!1941626)))

(declare-fun b!3107855 () Bool)

(assert (=> b!3107855 (= e!1941630 (= (nullable!3225 lt!1056922) (nullable!3225 (regOne!19679 r!17423))))))

(declare-fun b!3107856 () Bool)

(assert (=> b!3107856 (= e!1941626 e!1941627)))

(declare-fun c!519923 () Bool)

(assert (=> b!3107856 (= c!519923 call!219752)))

(declare-fun bm!219749 () Bool)

(declare-fun call!219751 () Regex!9583)

(assert (=> bm!219749 (= call!219751 call!219755)))

(declare-fun b!3107857 () Bool)

(assert (=> b!3107857 (= c!519922 ((_ is Union!9583) (regOne!19679 r!17423)))))

(declare-fun e!1941620 () Regex!9583)

(assert (=> b!3107857 (= e!1941625 e!1941620)))

(declare-fun b!3107858 () Bool)

(assert (=> b!3107858 (= e!1941620 e!1941618)))

(assert (=> b!3107858 (= lt!1056921 call!219749)))

(assert (=> b!3107858 (= lt!1056917 call!219751)))

(declare-fun c!519916 () Bool)

(assert (=> b!3107858 (= c!519916 call!219750)))

(declare-fun b!3107859 () Bool)

(assert (=> b!3107859 (= e!1941629 EmptyExpr!9583)))

(declare-fun b!3107860 () Bool)

(assert (=> b!3107860 (= e!1941620 e!1941628)))

(assert (=> b!3107860 (= lt!1056919 call!219749)))

(assert (=> b!3107860 (= lt!1056920 call!219751)))

(declare-fun res!1272519 () Bool)

(assert (=> b!3107860 (= res!1272519 call!219750)))

(assert (=> b!3107860 (=> res!1272519 e!1941624)))

(declare-fun c!519921 () Bool)

(assert (=> b!3107860 (= c!519921 e!1941624)))

(declare-fun b!3107861 () Bool)

(assert (=> b!3107861 (= e!1941627 lt!1056919)))

(declare-fun bm!219750 () Bool)

(assert (=> bm!219750 (= call!219753 (isEmptyLang!634 (ite c!519917 lt!1056918 (ite c!519922 lt!1056917 lt!1056920))))))

(declare-fun b!3107862 () Bool)

(declare-fun c!519920 () Bool)

(assert (=> b!3107862 (= c!519920 e!1941622)))

(declare-fun res!1272517 () Bool)

(assert (=> b!3107862 (=> res!1272517 e!1941622)))

(assert (=> b!3107862 (= res!1272517 call!219753)))

(assert (=> b!3107862 (= lt!1056918 call!219755)))

(assert (=> b!3107862 (= e!1941625 e!1941617)))

(declare-fun b!3107863 () Bool)

(declare-fun c!519925 () Bool)

(assert (=> b!3107863 (= c!519925 ((_ is EmptyExpr!9583) (regOne!19679 r!17423)))))

(assert (=> b!3107863 (= e!1941619 e!1941629)))

(declare-fun b!3107864 () Bool)

(assert (=> b!3107864 (= e!1941623 (Union!9583 lt!1056921 lt!1056917))))

(declare-fun b!3107865 () Bool)

(assert (=> b!3107865 (= e!1941626 lt!1056920)))

(assert (= (and d!861519 c!519924) b!3107843))

(assert (= (and d!861519 (not c!519924)) b!3107848))

(assert (= (and b!3107848 c!519915) b!3107849))

(assert (= (and b!3107848 (not c!519915)) b!3107863))

(assert (= (and b!3107863 c!519925) b!3107859))

(assert (= (and b!3107863 (not c!519925)) b!3107845))

(assert (= (and b!3107845 c!519917) b!3107862))

(assert (= (and b!3107845 (not c!519917)) b!3107857))

(assert (= (and b!3107862 (not res!1272517)) b!3107853))

(assert (= (and b!3107862 c!519920) b!3107844))

(assert (= (and b!3107862 (not c!519920)) b!3107841))

(assert (= (and b!3107857 c!519922) b!3107858))

(assert (= (and b!3107857 (not c!519922)) b!3107860))

(assert (= (and b!3107858 c!519916) b!3107852))

(assert (= (and b!3107858 (not c!519916)) b!3107851))

(assert (= (and b!3107851 c!519918) b!3107842))

(assert (= (and b!3107851 (not c!519918)) b!3107864))

(assert (= (and b!3107860 (not res!1272519)) b!3107850))

(assert (= (and b!3107860 c!519921) b!3107846))

(assert (= (and b!3107860 (not c!519921)) b!3107854))

(assert (= (and b!3107854 c!519919) b!3107865))

(assert (= (and b!3107854 (not c!519919)) b!3107856))

(assert (= (and b!3107856 c!519923) b!3107861))

(assert (= (and b!3107856 (not c!519923)) b!3107847))

(assert (= (or b!3107858 b!3107860) bm!219749))

(assert (= (or b!3107858 b!3107860) bm!219747))

(assert (= (or b!3107858 b!3107860) bm!219746))

(assert (= (or b!3107851 b!3107850) bm!219744))

(assert (= (or b!3107853 b!3107856) bm!219745))

(assert (= (or b!3107862 bm!219749) bm!219748))

(assert (= (or b!3107862 bm!219744) bm!219750))

(assert (= (and d!861519 res!1272518) b!3107855))

(declare-fun m!3403531 () Bool)

(assert (=> bm!219747 m!3403531))

(declare-fun m!3403533 () Bool)

(assert (=> bm!219745 m!3403533))

(declare-fun m!3403535 () Bool)

(assert (=> d!861519 m!3403535))

(declare-fun m!3403537 () Bool)

(assert (=> d!861519 m!3403537))

(declare-fun m!3403539 () Bool)

(assert (=> b!3107855 m!3403539))

(declare-fun m!3403541 () Bool)

(assert (=> b!3107855 m!3403541))

(declare-fun m!3403543 () Bool)

(assert (=> bm!219748 m!3403543))

(declare-fun m!3403545 () Bool)

(assert (=> bm!219746 m!3403545))

(declare-fun m!3403547 () Bool)

(assert (=> b!3107854 m!3403547))

(declare-fun m!3403549 () Bool)

(assert (=> bm!219750 m!3403549))

(assert (=> b!3107341 d!861519))

(declare-fun b!3107866 () Bool)

(declare-fun e!1941635 () Bool)

(declare-fun e!1941637 () Bool)

(assert (=> b!3107866 (= e!1941635 e!1941637)))

(declare-fun c!519927 () Bool)

(assert (=> b!3107866 (= c!519927 ((_ is Union!9583) lt!1056858))))

(declare-fun b!3107867 () Bool)

(declare-fun e!1941631 () Bool)

(declare-fun call!219758 () Bool)

(assert (=> b!3107867 (= e!1941631 call!219758)))

(declare-fun bm!219751 () Bool)

(declare-fun call!219757 () Bool)

(assert (=> bm!219751 (= call!219757 (validRegex!4316 (ite c!519927 (regTwo!19679 lt!1056858) (regOne!19678 lt!1056858))))))

(declare-fun b!3107868 () Bool)

(declare-fun res!1272521 () Bool)

(declare-fun e!1941634 () Bool)

(assert (=> b!3107868 (=> (not res!1272521) (not e!1941634))))

(declare-fun call!219756 () Bool)

(assert (=> b!3107868 (= res!1272521 call!219756)))

(assert (=> b!3107868 (= e!1941637 e!1941634)))

(declare-fun b!3107869 () Bool)

(declare-fun res!1272523 () Bool)

(declare-fun e!1941633 () Bool)

(assert (=> b!3107869 (=> res!1272523 e!1941633)))

(assert (=> b!3107869 (= res!1272523 (not ((_ is Concat!14904) lt!1056858)))))

(assert (=> b!3107869 (= e!1941637 e!1941633)))

(declare-fun b!3107870 () Bool)

(declare-fun e!1941636 () Bool)

(assert (=> b!3107870 (= e!1941636 call!219756)))

(declare-fun b!3107871 () Bool)

(declare-fun e!1941632 () Bool)

(assert (=> b!3107871 (= e!1941632 e!1941635)))

(declare-fun c!519926 () Bool)

(assert (=> b!3107871 (= c!519926 ((_ is Star!9583) lt!1056858))))

(declare-fun bm!219752 () Bool)

(assert (=> bm!219752 (= call!219756 call!219758)))

(declare-fun bm!219753 () Bool)

(assert (=> bm!219753 (= call!219758 (validRegex!4316 (ite c!519926 (reg!9912 lt!1056858) (ite c!519927 (regOne!19679 lt!1056858) (regTwo!19678 lt!1056858)))))))

(declare-fun b!3107873 () Bool)

(assert (=> b!3107873 (= e!1941633 e!1941636)))

(declare-fun res!1272520 () Bool)

(assert (=> b!3107873 (=> (not res!1272520) (not e!1941636))))

(assert (=> b!3107873 (= res!1272520 call!219757)))

(declare-fun b!3107874 () Bool)

(assert (=> b!3107874 (= e!1941634 call!219757)))

(declare-fun b!3107872 () Bool)

(assert (=> b!3107872 (= e!1941635 e!1941631)))

(declare-fun res!1272524 () Bool)

(assert (=> b!3107872 (= res!1272524 (not (nullable!3225 (reg!9912 lt!1056858))))))

(assert (=> b!3107872 (=> (not res!1272524) (not e!1941631))))

(declare-fun d!861521 () Bool)

(declare-fun res!1272522 () Bool)

(assert (=> d!861521 (=> res!1272522 e!1941632)))

(assert (=> d!861521 (= res!1272522 ((_ is ElementMatch!9583) lt!1056858))))

(assert (=> d!861521 (= (validRegex!4316 lt!1056858) e!1941632)))

(assert (= (and d!861521 (not res!1272522)) b!3107871))

(assert (= (and b!3107871 c!519926) b!3107872))

(assert (= (and b!3107871 (not c!519926)) b!3107866))

(assert (= (and b!3107872 res!1272524) b!3107867))

(assert (= (and b!3107866 c!519927) b!3107868))

(assert (= (and b!3107866 (not c!519927)) b!3107869))

(assert (= (and b!3107868 res!1272521) b!3107874))

(assert (= (and b!3107869 (not res!1272523)) b!3107873))

(assert (= (and b!3107873 res!1272520) b!3107870))

(assert (= (or b!3107868 b!3107870) bm!219752))

(assert (= (or b!3107874 b!3107873) bm!219751))

(assert (= (or b!3107867 bm!219752) bm!219753))

(declare-fun m!3403551 () Bool)

(assert (=> bm!219751 m!3403551))

(declare-fun m!3403553 () Bool)

(assert (=> bm!219753 m!3403553))

(declare-fun m!3403555 () Bool)

(assert (=> b!3107872 m!3403555))

(assert (=> b!3107336 d!861521))

(declare-fun b!3107879 () Bool)

(declare-fun e!1941640 () Bool)

(declare-fun tp!975854 () Bool)

(assert (=> b!3107879 (= e!1941640 (and tp_is_empty!16729 tp!975854))))

(assert (=> b!3107343 (= tp!975810 e!1941640)))

(assert (= (and b!3107343 ((_ is Cons!35324) (t!234513 s!11993))) b!3107879))

(declare-fun b!3107893 () Bool)

(declare-fun e!1941643 () Bool)

(declare-fun tp!975868 () Bool)

(declare-fun tp!975869 () Bool)

(assert (=> b!3107893 (= e!1941643 (and tp!975868 tp!975869))))

(declare-fun b!3107890 () Bool)

(assert (=> b!3107890 (= e!1941643 tp_is_empty!16729)))

(assert (=> b!3107338 (= tp!975808 e!1941643)))

(declare-fun b!3107892 () Bool)

(declare-fun tp!975866 () Bool)

(assert (=> b!3107892 (= e!1941643 tp!975866)))

(declare-fun b!3107891 () Bool)

(declare-fun tp!975865 () Bool)

(declare-fun tp!975867 () Bool)

(assert (=> b!3107891 (= e!1941643 (and tp!975865 tp!975867))))

(assert (= (and b!3107338 ((_ is ElementMatch!9583) (reg!9912 r!17423))) b!3107890))

(assert (= (and b!3107338 ((_ is Concat!14904) (reg!9912 r!17423))) b!3107891))

(assert (= (and b!3107338 ((_ is Star!9583) (reg!9912 r!17423))) b!3107892))

(assert (= (and b!3107338 ((_ is Union!9583) (reg!9912 r!17423))) b!3107893))

(declare-fun b!3107897 () Bool)

(declare-fun e!1941644 () Bool)

(declare-fun tp!975873 () Bool)

(declare-fun tp!975874 () Bool)

(assert (=> b!3107897 (= e!1941644 (and tp!975873 tp!975874))))

(declare-fun b!3107894 () Bool)

(assert (=> b!3107894 (= e!1941644 tp_is_empty!16729)))

(assert (=> b!3107337 (= tp!975811 e!1941644)))

(declare-fun b!3107896 () Bool)

(declare-fun tp!975871 () Bool)

(assert (=> b!3107896 (= e!1941644 tp!975871)))

(declare-fun b!3107895 () Bool)

(declare-fun tp!975870 () Bool)

(declare-fun tp!975872 () Bool)

(assert (=> b!3107895 (= e!1941644 (and tp!975870 tp!975872))))

(assert (= (and b!3107337 ((_ is ElementMatch!9583) (regOne!19679 r!17423))) b!3107894))

(assert (= (and b!3107337 ((_ is Concat!14904) (regOne!19679 r!17423))) b!3107895))

(assert (= (and b!3107337 ((_ is Star!9583) (regOne!19679 r!17423))) b!3107896))

(assert (= (and b!3107337 ((_ is Union!9583) (regOne!19679 r!17423))) b!3107897))

(declare-fun b!3107901 () Bool)

(declare-fun e!1941645 () Bool)

(declare-fun tp!975878 () Bool)

(declare-fun tp!975879 () Bool)

(assert (=> b!3107901 (= e!1941645 (and tp!975878 tp!975879))))

(declare-fun b!3107898 () Bool)

(assert (=> b!3107898 (= e!1941645 tp_is_empty!16729)))

(assert (=> b!3107337 (= tp!975809 e!1941645)))

(declare-fun b!3107900 () Bool)

(declare-fun tp!975876 () Bool)

(assert (=> b!3107900 (= e!1941645 tp!975876)))

(declare-fun b!3107899 () Bool)

(declare-fun tp!975875 () Bool)

(declare-fun tp!975877 () Bool)

(assert (=> b!3107899 (= e!1941645 (and tp!975875 tp!975877))))

(assert (= (and b!3107337 ((_ is ElementMatch!9583) (regTwo!19679 r!17423))) b!3107898))

(assert (= (and b!3107337 ((_ is Concat!14904) (regTwo!19679 r!17423))) b!3107899))

(assert (= (and b!3107337 ((_ is Star!9583) (regTwo!19679 r!17423))) b!3107900))

(assert (= (and b!3107337 ((_ is Union!9583) (regTwo!19679 r!17423))) b!3107901))

(declare-fun b!3107905 () Bool)

(declare-fun e!1941646 () Bool)

(declare-fun tp!975883 () Bool)

(declare-fun tp!975884 () Bool)

(assert (=> b!3107905 (= e!1941646 (and tp!975883 tp!975884))))

(declare-fun b!3107902 () Bool)

(assert (=> b!3107902 (= e!1941646 tp_is_empty!16729)))

(assert (=> b!3107335 (= tp!975812 e!1941646)))

(declare-fun b!3107904 () Bool)

(declare-fun tp!975881 () Bool)

(assert (=> b!3107904 (= e!1941646 tp!975881)))

(declare-fun b!3107903 () Bool)

(declare-fun tp!975880 () Bool)

(declare-fun tp!975882 () Bool)

(assert (=> b!3107903 (= e!1941646 (and tp!975880 tp!975882))))

(assert (= (and b!3107335 ((_ is ElementMatch!9583) (regOne!19678 r!17423))) b!3107902))

(assert (= (and b!3107335 ((_ is Concat!14904) (regOne!19678 r!17423))) b!3107903))

(assert (= (and b!3107335 ((_ is Star!9583) (regOne!19678 r!17423))) b!3107904))

(assert (= (and b!3107335 ((_ is Union!9583) (regOne!19678 r!17423))) b!3107905))

(declare-fun b!3107909 () Bool)

(declare-fun e!1941647 () Bool)

(declare-fun tp!975888 () Bool)

(declare-fun tp!975889 () Bool)

(assert (=> b!3107909 (= e!1941647 (and tp!975888 tp!975889))))

(declare-fun b!3107906 () Bool)

(assert (=> b!3107906 (= e!1941647 tp_is_empty!16729)))

(assert (=> b!3107335 (= tp!975813 e!1941647)))

(declare-fun b!3107908 () Bool)

(declare-fun tp!975886 () Bool)

(assert (=> b!3107908 (= e!1941647 tp!975886)))

(declare-fun b!3107907 () Bool)

(declare-fun tp!975885 () Bool)

(declare-fun tp!975887 () Bool)

(assert (=> b!3107907 (= e!1941647 (and tp!975885 tp!975887))))

(assert (= (and b!3107335 ((_ is ElementMatch!9583) (regTwo!19678 r!17423))) b!3107906))

(assert (= (and b!3107335 ((_ is Concat!14904) (regTwo!19678 r!17423))) b!3107907))

(assert (= (and b!3107335 ((_ is Star!9583) (regTwo!19678 r!17423))) b!3107908))

(assert (= (and b!3107335 ((_ is Union!9583) (regTwo!19678 r!17423))) b!3107909))

(check-sat (not b!3107597) (not bm!219722) (not d!861519) (not b!3107854) (not b!3107699) (not b!3107718) (not d!861507) (not bm!219745) (not bm!219746) (not b!3107706) (not d!861517) (not bm!219751) (not b!3107829) (not b!3107830) (not b!3107908) (not b!3107855) (not b!3107696) (not bm!219717) (not bm!219720) (not b!3107727) (not b!3107596) (not b!3107905) (not b!3107897) (not bm!219741) (not bm!219743) (not b!3107707) (not bm!219719) (not b!3107729) (not bm!219740) (not d!861499) (not bm!219709) (not b!3107705) (not b!3107700) (not b!3107899) (not bm!219750) (not b!3107728) (not b!3107891) (not bm!219738) (not b!3107721) tp_is_empty!16729 (not b!3107901) (not b!3107722) (not b!3107904) (not b!3107763) (not bm!219710) (not b!3107892) (not b!3107879) (not bm!219700) (not b!3107903) (not b!3107754) (not bm!219739) (not b!3107895) (not b!3107893) (not b!3107907) (not bm!219753) (not b!3107900) (not bm!219747) (not b!3107872) (not d!861509) (not b!3107909) (not bm!219748) (not bm!219701) (not b!3107896))
(check-sat)
