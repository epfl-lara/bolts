; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289468 () Bool)

(assert start!289468)

(declare-fun b!3003507 () Bool)

(assert (=> b!3003507 true))

(assert (=> b!3003507 true))

(assert (=> b!3003507 true))

(declare-fun lambda!112252 () Int)

(declare-fun lambda!112251 () Int)

(assert (=> b!3003507 (not (= lambda!112252 lambda!112251))))

(assert (=> b!3003507 true))

(assert (=> b!3003507 true))

(assert (=> b!3003507 true))

(declare-fun b!3003504 () Bool)

(declare-fun e!1886557 () Bool)

(declare-fun tp!954345 () Bool)

(declare-fun tp!954348 () Bool)

(assert (=> b!3003504 (= e!1886557 (and tp!954345 tp!954348))))

(declare-fun b!3003505 () Bool)

(declare-fun e!1886551 () Bool)

(declare-fun e!1886556 () Bool)

(assert (=> b!3003505 (= e!1886551 e!1886556)))

(declare-fun res!1237783 () Bool)

(assert (=> b!3003505 (=> res!1237783 e!1886556)))

(declare-datatypes ((C!18940 0))(
  ( (C!18941 (val!11506 Int)) )
))
(declare-datatypes ((Regex!9377 0))(
  ( (ElementMatch!9377 (c!494359 C!18940)) (Concat!14698 (regOne!19266 Regex!9377) (regTwo!19266 Regex!9377)) (EmptyExpr!9377) (Star!9377 (reg!9706 Regex!9377)) (EmptyLang!9377) (Union!9377 (regOne!19267 Regex!9377) (regTwo!19267 Regex!9377)) )
))
(declare-fun lt!1042420 () Regex!9377)

(declare-datatypes ((List!35242 0))(
  ( (Nil!35118) (Cons!35118 (h!40538 C!18940) (t!234307 List!35242)) )
))
(declare-fun s!11993 () List!35242)

(declare-fun matchR!4259 (Regex!9377 List!35242) Bool)

(assert (=> b!3003505 (= res!1237783 (not (matchR!4259 lt!1042420 s!11993)))))

(declare-fun lt!1042413 () Regex!9377)

(assert (=> b!3003505 (= lt!1042420 (Star!9377 lt!1042413))))

(declare-fun b!3003506 () Bool)

(declare-fun e!1886554 () Bool)

(assert (=> b!3003506 (= e!1886556 e!1886554)))

(declare-fun res!1237778 () Bool)

(assert (=> b!3003506 (=> res!1237778 e!1886554)))

(declare-fun isEmpty!19393 (List!35242) Bool)

(assert (=> b!3003506 (= res!1237778 (isEmpty!19393 s!11993))))

(declare-fun matchRSpec!1514 (Regex!9377 List!35242) Bool)

(assert (=> b!3003506 (matchRSpec!1514 lt!1042420 s!11993)))

(declare-datatypes ((Unit!49169 0))(
  ( (Unit!49170) )
))
(declare-fun lt!1042416 () Unit!49169)

(declare-fun mainMatchTheorem!1514 (Regex!9377 List!35242) Unit!49169)

(assert (=> b!3003506 (= lt!1042416 (mainMatchTheorem!1514 lt!1042420 s!11993))))

(declare-fun e!1886550 () Bool)

(assert (=> b!3003507 (= e!1886554 e!1886550)))

(declare-fun res!1237784 () Bool)

(assert (=> b!3003507 (=> res!1237784 e!1886550)))

(declare-fun lt!1042419 () Bool)

(assert (=> b!3003507 (= res!1237784 (not lt!1042419))))

(declare-fun Exists!1646 (Int) Bool)

(assert (=> b!3003507 (= (Exists!1646 lambda!112251) (Exists!1646 lambda!112252))))

(declare-fun lt!1042417 () Unit!49169)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!312 (Regex!9377 List!35242) Unit!49169)

(assert (=> b!3003507 (= lt!1042417 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!312 lt!1042413 s!11993))))

(assert (=> b!3003507 (= lt!1042419 (Exists!1646 lambda!112251))))

(declare-datatypes ((tuple2!34048 0))(
  ( (tuple2!34049 (_1!20156 List!35242) (_2!20156 List!35242)) )
))
(declare-datatypes ((Option!6756 0))(
  ( (None!6755) (Some!6755 (v!34889 tuple2!34048)) )
))
(declare-fun lt!1042412 () Option!6756)

(declare-fun isDefined!5307 (Option!6756) Bool)

(assert (=> b!3003507 (= lt!1042419 (isDefined!5307 lt!1042412))))

(declare-fun findConcatSeparation!1150 (Regex!9377 Regex!9377 List!35242 List!35242 List!35242) Option!6756)

(assert (=> b!3003507 (= lt!1042412 (findConcatSeparation!1150 lt!1042413 lt!1042420 Nil!35118 s!11993 s!11993))))

(declare-fun lt!1042411 () Unit!49169)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!928 (Regex!9377 Regex!9377 List!35242) Unit!49169)

(assert (=> b!3003507 (= lt!1042411 (lemmaFindConcatSeparationEquivalentToExists!928 lt!1042413 lt!1042420 s!11993))))

(declare-fun b!3003508 () Bool)

(declare-fun tp!954346 () Bool)

(assert (=> b!3003508 (= e!1886557 tp!954346)))

(declare-fun res!1237781 () Bool)

(declare-fun e!1886552 () Bool)

(assert (=> start!289468 (=> (not res!1237781) (not e!1886552))))

(declare-fun r!17423 () Regex!9377)

(declare-fun validRegex!4110 (Regex!9377) Bool)

(assert (=> start!289468 (= res!1237781 (validRegex!4110 r!17423))))

(assert (=> start!289468 e!1886552))

(assert (=> start!289468 e!1886557))

(declare-fun e!1886555 () Bool)

(assert (=> start!289468 e!1886555))

(declare-fun b!3003509 () Bool)

(declare-fun e!1886553 () Bool)

(assert (=> b!3003509 (= e!1886552 (not e!1886553))))

(declare-fun res!1237779 () Bool)

(assert (=> b!3003509 (=> res!1237779 e!1886553)))

(declare-fun lt!1042414 () Bool)

(get-info :version)

(assert (=> b!3003509 (= res!1237779 (or lt!1042414 ((_ is Concat!14698) r!17423) ((_ is Union!9377) r!17423) (not ((_ is Star!9377) r!17423))))))

(assert (=> b!3003509 (= lt!1042414 (matchRSpec!1514 r!17423 s!11993))))

(assert (=> b!3003509 (= lt!1042414 (matchR!4259 r!17423 s!11993))))

(declare-fun lt!1042418 () Unit!49169)

(assert (=> b!3003509 (= lt!1042418 (mainMatchTheorem!1514 r!17423 s!11993))))

(declare-fun b!3003510 () Bool)

(declare-fun e!1886549 () Bool)

(declare-fun lt!1042415 () tuple2!34048)

(assert (=> b!3003510 (= e!1886549 (matchR!4259 lt!1042420 (_2!20156 lt!1042415)))))

(declare-fun b!3003511 () Bool)

(assert (=> b!3003511 (= e!1886553 e!1886551)))

(declare-fun res!1237780 () Bool)

(assert (=> b!3003511 (=> res!1237780 e!1886551)))

(declare-fun isEmptyLang!467 (Regex!9377) Bool)

(assert (=> b!3003511 (= res!1237780 (isEmptyLang!467 lt!1042413))))

(declare-fun simplify!368 (Regex!9377) Regex!9377)

(assert (=> b!3003511 (= lt!1042413 (simplify!368 (reg!9706 r!17423)))))

(declare-fun b!3003512 () Bool)

(declare-fun tp_is_empty!16317 () Bool)

(assert (=> b!3003512 (= e!1886557 tp_is_empty!16317)))

(declare-fun b!3003513 () Bool)

(declare-fun tp!954347 () Bool)

(assert (=> b!3003513 (= e!1886555 (and tp_is_empty!16317 tp!954347))))

(declare-fun b!3003514 () Bool)

(declare-fun tp!954349 () Bool)

(declare-fun tp!954344 () Bool)

(assert (=> b!3003514 (= e!1886557 (and tp!954349 tp!954344))))

(declare-fun b!3003515 () Bool)

(assert (=> b!3003515 (= e!1886550 e!1886549)))

(declare-fun res!1237782 () Bool)

(assert (=> b!3003515 (=> res!1237782 e!1886549)))

(assert (=> b!3003515 (= res!1237782 (not (matchR!4259 lt!1042413 (_1!20156 lt!1042415))))))

(declare-fun get!10912 (Option!6756) tuple2!34048)

(assert (=> b!3003515 (= lt!1042415 (get!10912 lt!1042412))))

(assert (= (and start!289468 res!1237781) b!3003509))

(assert (= (and b!3003509 (not res!1237779)) b!3003511))

(assert (= (and b!3003511 (not res!1237780)) b!3003505))

(assert (= (and b!3003505 (not res!1237783)) b!3003506))

(assert (= (and b!3003506 (not res!1237778)) b!3003507))

(assert (= (and b!3003507 (not res!1237784)) b!3003515))

(assert (= (and b!3003515 (not res!1237782)) b!3003510))

(assert (= (and start!289468 ((_ is ElementMatch!9377) r!17423)) b!3003512))

(assert (= (and start!289468 ((_ is Concat!14698) r!17423)) b!3003504))

(assert (= (and start!289468 ((_ is Star!9377) r!17423)) b!3003508))

(assert (= (and start!289468 ((_ is Union!9377) r!17423)) b!3003514))

(assert (= (and start!289468 ((_ is Cons!35118) s!11993)) b!3003513))

(declare-fun m!3353347 () Bool)

(assert (=> b!3003515 m!3353347))

(declare-fun m!3353349 () Bool)

(assert (=> b!3003515 m!3353349))

(declare-fun m!3353351 () Bool)

(assert (=> b!3003507 m!3353351))

(declare-fun m!3353353 () Bool)

(assert (=> b!3003507 m!3353353))

(declare-fun m!3353355 () Bool)

(assert (=> b!3003507 m!3353355))

(declare-fun m!3353357 () Bool)

(assert (=> b!3003507 m!3353357))

(declare-fun m!3353359 () Bool)

(assert (=> b!3003507 m!3353359))

(declare-fun m!3353361 () Bool)

(assert (=> b!3003507 m!3353361))

(assert (=> b!3003507 m!3353357))

(declare-fun m!3353363 () Bool)

(assert (=> b!3003505 m!3353363))

(declare-fun m!3353365 () Bool)

(assert (=> start!289468 m!3353365))

(declare-fun m!3353367 () Bool)

(assert (=> b!3003511 m!3353367))

(declare-fun m!3353369 () Bool)

(assert (=> b!3003511 m!3353369))

(declare-fun m!3353371 () Bool)

(assert (=> b!3003509 m!3353371))

(declare-fun m!3353373 () Bool)

(assert (=> b!3003509 m!3353373))

(declare-fun m!3353375 () Bool)

(assert (=> b!3003509 m!3353375))

(declare-fun m!3353377 () Bool)

(assert (=> b!3003506 m!3353377))

(declare-fun m!3353379 () Bool)

(assert (=> b!3003506 m!3353379))

(declare-fun m!3353381 () Bool)

(assert (=> b!3003506 m!3353381))

(declare-fun m!3353383 () Bool)

(assert (=> b!3003510 m!3353383))

(check-sat (not b!3003504) (not b!3003508) (not b!3003507) tp_is_empty!16317 (not b!3003513) (not b!3003510) (not b!3003506) (not b!3003511) (not start!289468) (not b!3003514) (not b!3003505) (not b!3003509) (not b!3003515))
(check-sat)
(get-model)

(declare-fun b!3003679 () Bool)

(declare-fun res!1237845 () Bool)

(declare-fun e!1886643 () Bool)

(assert (=> b!3003679 (=> res!1237845 e!1886643)))

(assert (=> b!3003679 (= res!1237845 (not ((_ is ElementMatch!9377) lt!1042420)))))

(declare-fun e!1886644 () Bool)

(assert (=> b!3003679 (= e!1886644 e!1886643)))

(declare-fun b!3003680 () Bool)

(declare-fun res!1237847 () Bool)

(declare-fun e!1886642 () Bool)

(assert (=> b!3003680 (=> (not res!1237847) (not e!1886642))))

(declare-fun call!201982 () Bool)

(assert (=> b!3003680 (= res!1237847 (not call!201982))))

(declare-fun b!3003681 () Bool)

(declare-fun e!1886647 () Bool)

(assert (=> b!3003681 (= e!1886643 e!1886647)))

(declare-fun res!1237846 () Bool)

(assert (=> b!3003681 (=> (not res!1237846) (not e!1886647))))

(declare-fun lt!1042445 () Bool)

(assert (=> b!3003681 (= res!1237846 (not lt!1042445))))

(declare-fun d!846534 () Bool)

(declare-fun e!1886648 () Bool)

(assert (=> d!846534 e!1886648))

(declare-fun c!494412 () Bool)

(assert (=> d!846534 (= c!494412 ((_ is EmptyExpr!9377) lt!1042420))))

(declare-fun e!1886645 () Bool)

(assert (=> d!846534 (= lt!1042445 e!1886645)))

(declare-fun c!494413 () Bool)

(assert (=> d!846534 (= c!494413 (isEmpty!19393 s!11993))))

(assert (=> d!846534 (validRegex!4110 lt!1042420)))

(assert (=> d!846534 (= (matchR!4259 lt!1042420 s!11993) lt!1042445)))

(declare-fun b!3003682 () Bool)

(assert (=> b!3003682 (= e!1886648 (= lt!1042445 call!201982))))

(declare-fun bm!201977 () Bool)

(assert (=> bm!201977 (= call!201982 (isEmpty!19393 s!11993))))

(declare-fun b!3003683 () Bool)

(declare-fun derivativeStep!2634 (Regex!9377 C!18940) Regex!9377)

(declare-fun head!6693 (List!35242) C!18940)

(declare-fun tail!4919 (List!35242) List!35242)

(assert (=> b!3003683 (= e!1886645 (matchR!4259 (derivativeStep!2634 lt!1042420 (head!6693 s!11993)) (tail!4919 s!11993)))))

(declare-fun b!3003684 () Bool)

(declare-fun res!1237849 () Bool)

(assert (=> b!3003684 (=> (not res!1237849) (not e!1886642))))

(assert (=> b!3003684 (= res!1237849 (isEmpty!19393 (tail!4919 s!11993)))))

(declare-fun b!3003685 () Bool)

(assert (=> b!3003685 (= e!1886648 e!1886644)))

(declare-fun c!494411 () Bool)

(assert (=> b!3003685 (= c!494411 ((_ is EmptyLang!9377) lt!1042420))))

(declare-fun b!3003686 () Bool)

(assert (=> b!3003686 (= e!1886642 (= (head!6693 s!11993) (c!494359 lt!1042420)))))

(declare-fun b!3003687 () Bool)

(assert (=> b!3003687 (= e!1886644 (not lt!1042445))))

(declare-fun b!3003688 () Bool)

(declare-fun nullable!3036 (Regex!9377) Bool)

(assert (=> b!3003688 (= e!1886645 (nullable!3036 lt!1042420))))

(declare-fun b!3003689 () Bool)

(declare-fun e!1886646 () Bool)

(assert (=> b!3003689 (= e!1886646 (not (= (head!6693 s!11993) (c!494359 lt!1042420))))))

(declare-fun b!3003690 () Bool)

(assert (=> b!3003690 (= e!1886647 e!1886646)))

(declare-fun res!1237848 () Bool)

(assert (=> b!3003690 (=> res!1237848 e!1886646)))

(assert (=> b!3003690 (= res!1237848 call!201982)))

(declare-fun b!3003691 () Bool)

(declare-fun res!1237844 () Bool)

(assert (=> b!3003691 (=> res!1237844 e!1886643)))

(assert (=> b!3003691 (= res!1237844 e!1886642)))

(declare-fun res!1237843 () Bool)

(assert (=> b!3003691 (=> (not res!1237843) (not e!1886642))))

(assert (=> b!3003691 (= res!1237843 lt!1042445)))

(declare-fun b!3003692 () Bool)

(declare-fun res!1237842 () Bool)

(assert (=> b!3003692 (=> res!1237842 e!1886646)))

(assert (=> b!3003692 (= res!1237842 (not (isEmpty!19393 (tail!4919 s!11993))))))

(assert (= (and d!846534 c!494413) b!3003688))

(assert (= (and d!846534 (not c!494413)) b!3003683))

(assert (= (and d!846534 c!494412) b!3003682))

(assert (= (and d!846534 (not c!494412)) b!3003685))

(assert (= (and b!3003685 c!494411) b!3003687))

(assert (= (and b!3003685 (not c!494411)) b!3003679))

(assert (= (and b!3003679 (not res!1237845)) b!3003691))

(assert (= (and b!3003691 res!1237843) b!3003680))

(assert (= (and b!3003680 res!1237847) b!3003684))

(assert (= (and b!3003684 res!1237849) b!3003686))

(assert (= (and b!3003691 (not res!1237844)) b!3003681))

(assert (= (and b!3003681 res!1237846) b!3003690))

(assert (= (and b!3003690 (not res!1237848)) b!3003692))

(assert (= (and b!3003692 (not res!1237842)) b!3003689))

(assert (= (or b!3003682 b!3003680 b!3003690) bm!201977))

(assert (=> d!846534 m!3353377))

(declare-fun m!3353435 () Bool)

(assert (=> d!846534 m!3353435))

(declare-fun m!3353437 () Bool)

(assert (=> b!3003686 m!3353437))

(assert (=> b!3003689 m!3353437))

(assert (=> bm!201977 m!3353377))

(declare-fun m!3353439 () Bool)

(assert (=> b!3003688 m!3353439))

(declare-fun m!3353441 () Bool)

(assert (=> b!3003692 m!3353441))

(assert (=> b!3003692 m!3353441))

(declare-fun m!3353443 () Bool)

(assert (=> b!3003692 m!3353443))

(assert (=> b!3003684 m!3353441))

(assert (=> b!3003684 m!3353441))

(assert (=> b!3003684 m!3353443))

(assert (=> b!3003683 m!3353437))

(assert (=> b!3003683 m!3353437))

(declare-fun m!3353445 () Bool)

(assert (=> b!3003683 m!3353445))

(assert (=> b!3003683 m!3353441))

(assert (=> b!3003683 m!3353445))

(assert (=> b!3003683 m!3353441))

(declare-fun m!3353447 () Bool)

(assert (=> b!3003683 m!3353447))

(assert (=> b!3003505 d!846534))

(declare-fun d!846546 () Bool)

(assert (=> d!846546 (= (isEmpty!19393 s!11993) ((_ is Nil!35118) s!11993))))

(assert (=> b!3003506 d!846546))

(declare-fun bs!528575 () Bool)

(declare-fun b!3003818 () Bool)

(assert (= bs!528575 (and b!3003818 b!3003507)))

(declare-fun lambda!112263 () Int)

(assert (=> bs!528575 (not (= lambda!112263 lambda!112251))))

(assert (=> bs!528575 (= (= (reg!9706 lt!1042420) lt!1042413) (= lambda!112263 lambda!112252))))

(assert (=> b!3003818 true))

(assert (=> b!3003818 true))

(declare-fun bs!528576 () Bool)

(declare-fun b!3003812 () Bool)

(assert (= bs!528576 (and b!3003812 b!3003507)))

(declare-fun lambda!112264 () Int)

(assert (=> bs!528576 (not (= lambda!112264 lambda!112251))))

(assert (=> bs!528576 (not (= lambda!112264 lambda!112252))))

(declare-fun bs!528577 () Bool)

(assert (= bs!528577 (and b!3003812 b!3003818)))

(assert (=> bs!528577 (not (= lambda!112264 lambda!112263))))

(assert (=> b!3003812 true))

(assert (=> b!3003812 true))

(declare-fun b!3003809 () Bool)

(declare-fun e!1886715 () Bool)

(declare-fun e!1886720 () Bool)

(assert (=> b!3003809 (= e!1886715 e!1886720)))

(declare-fun c!494446 () Bool)

(assert (=> b!3003809 (= c!494446 ((_ is Star!9377) lt!1042420))))

(declare-fun b!3003811 () Bool)

(declare-fun res!1237908 () Bool)

(declare-fun e!1886719 () Bool)

(assert (=> b!3003811 (=> res!1237908 e!1886719)))

(declare-fun call!201995 () Bool)

(assert (=> b!3003811 (= res!1237908 call!201995)))

(assert (=> b!3003811 (= e!1886720 e!1886719)))

(declare-fun call!201994 () Bool)

(assert (=> b!3003812 (= e!1886720 call!201994)))

(declare-fun b!3003813 () Bool)

(declare-fun e!1886716 () Bool)

(declare-fun e!1886714 () Bool)

(assert (=> b!3003813 (= e!1886716 e!1886714)))

(declare-fun res!1237910 () Bool)

(assert (=> b!3003813 (= res!1237910 (not ((_ is EmptyLang!9377) lt!1042420)))))

(assert (=> b!3003813 (=> (not res!1237910) (not e!1886714))))

(declare-fun bm!201989 () Bool)

(assert (=> bm!201989 (= call!201994 (Exists!1646 (ite c!494446 lambda!112263 lambda!112264)))))

(declare-fun b!3003814 () Bool)

(declare-fun e!1886718 () Bool)

(assert (=> b!3003814 (= e!1886718 (matchRSpec!1514 (regTwo!19267 lt!1042420) s!11993))))

(declare-fun b!3003815 () Bool)

(declare-fun c!494444 () Bool)

(assert (=> b!3003815 (= c!494444 ((_ is Union!9377) lt!1042420))))

(declare-fun e!1886717 () Bool)

(assert (=> b!3003815 (= e!1886717 e!1886715)))

(declare-fun b!3003816 () Bool)

(assert (=> b!3003816 (= e!1886717 (= s!11993 (Cons!35118 (c!494359 lt!1042420) Nil!35118)))))

(declare-fun b!3003817 () Bool)

(assert (=> b!3003817 (= e!1886716 call!201995)))

(assert (=> b!3003818 (= e!1886719 call!201994)))

(declare-fun d!846548 () Bool)

(declare-fun c!494445 () Bool)

(assert (=> d!846548 (= c!494445 ((_ is EmptyExpr!9377) lt!1042420))))

(assert (=> d!846548 (= (matchRSpec!1514 lt!1042420 s!11993) e!1886716)))

(declare-fun b!3003810 () Bool)

(assert (=> b!3003810 (= e!1886715 e!1886718)))

(declare-fun res!1237909 () Bool)

(assert (=> b!3003810 (= res!1237909 (matchRSpec!1514 (regOne!19267 lt!1042420) s!11993))))

(assert (=> b!3003810 (=> res!1237909 e!1886718)))

(declare-fun b!3003819 () Bool)

(declare-fun c!494443 () Bool)

(assert (=> b!3003819 (= c!494443 ((_ is ElementMatch!9377) lt!1042420))))

(assert (=> b!3003819 (= e!1886714 e!1886717)))

(declare-fun bm!201990 () Bool)

(assert (=> bm!201990 (= call!201995 (isEmpty!19393 s!11993))))

(assert (= (and d!846548 c!494445) b!3003817))

(assert (= (and d!846548 (not c!494445)) b!3003813))

(assert (= (and b!3003813 res!1237910) b!3003819))

(assert (= (and b!3003819 c!494443) b!3003816))

(assert (= (and b!3003819 (not c!494443)) b!3003815))

(assert (= (and b!3003815 c!494444) b!3003810))

(assert (= (and b!3003815 (not c!494444)) b!3003809))

(assert (= (and b!3003810 (not res!1237909)) b!3003814))

(assert (= (and b!3003809 c!494446) b!3003811))

(assert (= (and b!3003809 (not c!494446)) b!3003812))

(assert (= (and b!3003811 (not res!1237908)) b!3003818))

(assert (= (or b!3003818 b!3003812) bm!201989))

(assert (= (or b!3003817 b!3003811) bm!201990))

(declare-fun m!3353485 () Bool)

(assert (=> bm!201989 m!3353485))

(declare-fun m!3353487 () Bool)

(assert (=> b!3003814 m!3353487))

(declare-fun m!3353489 () Bool)

(assert (=> b!3003810 m!3353489))

(assert (=> bm!201990 m!3353377))

(assert (=> b!3003506 d!846548))

(declare-fun d!846560 () Bool)

(assert (=> d!846560 (= (matchR!4259 lt!1042420 s!11993) (matchRSpec!1514 lt!1042420 s!11993))))

(declare-fun lt!1042464 () Unit!49169)

(declare-fun choose!17820 (Regex!9377 List!35242) Unit!49169)

(assert (=> d!846560 (= lt!1042464 (choose!17820 lt!1042420 s!11993))))

(assert (=> d!846560 (validRegex!4110 lt!1042420)))

(assert (=> d!846560 (= (mainMatchTheorem!1514 lt!1042420 s!11993) lt!1042464)))

(declare-fun bs!528584 () Bool)

(assert (= bs!528584 d!846560))

(assert (=> bs!528584 m!3353363))

(assert (=> bs!528584 m!3353379))

(declare-fun m!3353501 () Bool)

(assert (=> bs!528584 m!3353501))

(assert (=> bs!528584 m!3353435))

(assert (=> b!3003506 d!846560))

(declare-fun d!846568 () Bool)

(assert (=> d!846568 (= (isEmptyLang!467 lt!1042413) ((_ is EmptyLang!9377) lt!1042413))))

(assert (=> b!3003511 d!846568))

(declare-fun b!3003971 () Bool)

(declare-fun c!494488 () Bool)

(declare-fun lt!1042486 () Regex!9377)

(declare-fun isEmptyExpr!479 (Regex!9377) Bool)

(assert (=> b!3003971 (= c!494488 (isEmptyExpr!479 lt!1042486))))

(declare-fun e!1886807 () Regex!9377)

(declare-fun e!1886813 () Regex!9377)

(assert (=> b!3003971 (= e!1886807 e!1886813)))

(declare-fun bm!202017 () Bool)

(declare-fun call!202027 () Regex!9377)

(declare-fun call!202024 () Regex!9377)

(assert (=> bm!202017 (= call!202027 call!202024)))

(declare-fun b!3003972 () Bool)

(declare-fun e!1886806 () Regex!9377)

(declare-fun lt!1042485 () Regex!9377)

(assert (=> b!3003972 (= e!1886806 lt!1042485)))

(declare-fun b!3003973 () Bool)

(declare-fun e!1886804 () Regex!9377)

(assert (=> b!3003973 (= e!1886804 e!1886807)))

(assert (=> b!3003973 (= lt!1042486 call!202027)))

(declare-fun lt!1042484 () Regex!9377)

(declare-fun call!202026 () Regex!9377)

(assert (=> b!3003973 (= lt!1042484 call!202026)))

(declare-fun res!1237958 () Bool)

(declare-fun call!202028 () Bool)

(assert (=> b!3003973 (= res!1237958 call!202028)))

(declare-fun e!1886808 () Bool)

(assert (=> b!3003973 (=> res!1237958 e!1886808)))

(declare-fun c!494491 () Bool)

(assert (=> b!3003973 (= c!494491 e!1886808)))

(declare-fun bm!202018 () Bool)

(declare-fun c!494492 () Bool)

(assert (=> bm!202018 (= call!202026 (simplify!368 (ite c!494492 (regOne!19267 (reg!9706 r!17423)) (regTwo!19266 (reg!9706 r!17423)))))))

(declare-fun bm!202019 () Bool)

(declare-fun call!202025 () Bool)

(declare-fun lt!1042487 () Regex!9377)

(declare-fun c!494485 () Bool)

(assert (=> bm!202019 (= call!202025 (isEmptyExpr!479 (ite c!494485 lt!1042487 lt!1042484)))))

(declare-fun b!3003974 () Bool)

(declare-fun e!1886811 () Regex!9377)

(assert (=> b!3003974 (= e!1886811 EmptyExpr!9377)))

(declare-fun b!3003975 () Bool)

(declare-fun call!202023 () Bool)

(assert (=> b!3003975 (= e!1886808 call!202023)))

(declare-fun b!3003976 () Bool)

(declare-fun e!1886801 () Regex!9377)

(assert (=> b!3003976 (= e!1886801 (Concat!14698 lt!1042486 lt!1042484))))

(declare-fun b!3003977 () Bool)

(declare-fun c!494489 () Bool)

(declare-fun e!1886803 () Bool)

(assert (=> b!3003977 (= c!494489 e!1886803)))

(declare-fun res!1237959 () Bool)

(assert (=> b!3003977 (=> res!1237959 e!1886803)))

(declare-fun call!202022 () Bool)

(assert (=> b!3003977 (= res!1237959 call!202022)))

(assert (=> b!3003977 (= lt!1042487 call!202024)))

(declare-fun e!1886802 () Regex!9377)

(declare-fun e!1886800 () Regex!9377)

(assert (=> b!3003977 (= e!1886802 e!1886800)))

(declare-fun b!3003978 () Bool)

(declare-fun lt!1042483 () Regex!9377)

(assert (=> b!3003978 (= e!1886806 (Union!9377 lt!1042485 lt!1042483))))

(declare-fun b!3003979 () Bool)

(declare-fun c!494487 () Bool)

(assert (=> b!3003979 (= c!494487 ((_ is EmptyExpr!9377) (reg!9706 r!17423)))))

(declare-fun e!1886810 () Regex!9377)

(assert (=> b!3003979 (= e!1886810 e!1886811)))

(declare-fun b!3003980 () Bool)

(assert (=> b!3003980 (= e!1886803 call!202025)))

(declare-fun bm!202021 () Bool)

(assert (=> bm!202021 (= call!202028 call!202022)))

(declare-fun b!3003981 () Bool)

(declare-fun e!1886809 () Bool)

(declare-fun lt!1042482 () Regex!9377)

(assert (=> b!3003981 (= e!1886809 (= (nullable!3036 lt!1042482) (nullable!3036 (reg!9706 r!17423))))))

(declare-fun b!3003982 () Bool)

(declare-fun e!1886812 () Regex!9377)

(assert (=> b!3003982 (= e!1886812 e!1886810)))

(declare-fun c!494482 () Bool)

(assert (=> b!3003982 (= c!494482 ((_ is ElementMatch!9377) (reg!9706 r!17423)))))

(declare-fun b!3003983 () Bool)

(assert (=> b!3003983 (= e!1886800 (Star!9377 lt!1042487))))

(declare-fun b!3003984 () Bool)

(assert (=> b!3003984 (= e!1886810 (reg!9706 r!17423))))

(declare-fun bm!202022 () Bool)

(assert (=> bm!202022 (= call!202022 (isEmptyLang!467 (ite c!494485 lt!1042487 (ite c!494492 lt!1042483 lt!1042486))))))

(declare-fun b!3003985 () Bool)

(declare-fun e!1886805 () Regex!9377)

(assert (=> b!3003985 (= e!1886805 lt!1042483)))

(declare-fun b!3003986 () Bool)

(assert (=> b!3003986 (= c!494492 ((_ is Union!9377) (reg!9706 r!17423)))))

(assert (=> b!3003986 (= e!1886802 e!1886804)))

(declare-fun b!3003987 () Bool)

(assert (=> b!3003987 (= e!1886813 lt!1042484)))

(declare-fun d!846570 () Bool)

(assert (=> d!846570 e!1886809))

(declare-fun res!1237957 () Bool)

(assert (=> d!846570 (=> (not res!1237957) (not e!1886809))))

(assert (=> d!846570 (= res!1237957 (validRegex!4110 lt!1042482))))

(assert (=> d!846570 (= lt!1042482 e!1886812)))

(declare-fun c!494490 () Bool)

(assert (=> d!846570 (= c!494490 ((_ is EmptyLang!9377) (reg!9706 r!17423)))))

(assert (=> d!846570 (validRegex!4110 (reg!9706 r!17423))))

(assert (=> d!846570 (= (simplify!368 (reg!9706 r!17423)) lt!1042482)))

(declare-fun bm!202020 () Bool)

(assert (=> bm!202020 (= call!202024 (simplify!368 (ite c!494485 (reg!9706 (reg!9706 r!17423)) (ite c!494492 (regTwo!19267 (reg!9706 r!17423)) (regOne!19266 (reg!9706 r!17423))))))))

(declare-fun b!3003988 () Bool)

(assert (=> b!3003988 (= e!1886800 EmptyExpr!9377)))

(declare-fun b!3003989 () Bool)

(declare-fun c!494483 () Bool)

(assert (=> b!3003989 (= c!494483 call!202028)))

(assert (=> b!3003989 (= e!1886805 e!1886806)))

(declare-fun b!3003990 () Bool)

(assert (=> b!3003990 (= e!1886801 lt!1042486)))

(declare-fun b!3003991 () Bool)

(assert (=> b!3003991 (= e!1886807 EmptyLang!9377)))

(declare-fun b!3003992 () Bool)

(assert (=> b!3003992 (= e!1886812 EmptyLang!9377)))

(declare-fun b!3003993 () Bool)

(assert (=> b!3003993 (= e!1886813 e!1886801)))

(declare-fun c!494484 () Bool)

(assert (=> b!3003993 (= c!494484 call!202025)))

(declare-fun b!3003994 () Bool)

(assert (=> b!3003994 (= e!1886811 e!1886802)))

(assert (=> b!3003994 (= c!494485 ((_ is Star!9377) (reg!9706 r!17423)))))

(declare-fun b!3003995 () Bool)

(assert (=> b!3003995 (= e!1886804 e!1886805)))

(assert (=> b!3003995 (= lt!1042485 call!202026)))

(assert (=> b!3003995 (= lt!1042483 call!202027)))

(declare-fun c!494486 () Bool)

(assert (=> b!3003995 (= c!494486 call!202023)))

(declare-fun bm!202023 () Bool)

(assert (=> bm!202023 (= call!202023 (isEmptyLang!467 (ite c!494492 lt!1042485 lt!1042484)))))

(assert (= (and d!846570 c!494490) b!3003992))

(assert (= (and d!846570 (not c!494490)) b!3003982))

(assert (= (and b!3003982 c!494482) b!3003984))

(assert (= (and b!3003982 (not c!494482)) b!3003979))

(assert (= (and b!3003979 c!494487) b!3003974))

(assert (= (and b!3003979 (not c!494487)) b!3003994))

(assert (= (and b!3003994 c!494485) b!3003977))

(assert (= (and b!3003994 (not c!494485)) b!3003986))

(assert (= (and b!3003977 (not res!1237959)) b!3003980))

(assert (= (and b!3003977 c!494489) b!3003988))

(assert (= (and b!3003977 (not c!494489)) b!3003983))

(assert (= (and b!3003986 c!494492) b!3003995))

(assert (= (and b!3003986 (not c!494492)) b!3003973))

(assert (= (and b!3003995 c!494486) b!3003985))

(assert (= (and b!3003995 (not c!494486)) b!3003989))

(assert (= (and b!3003989 c!494483) b!3003972))

(assert (= (and b!3003989 (not c!494483)) b!3003978))

(assert (= (and b!3003973 (not res!1237958)) b!3003975))

(assert (= (and b!3003973 c!494491) b!3003991))

(assert (= (and b!3003973 (not c!494491)) b!3003971))

(assert (= (and b!3003971 c!494488) b!3003987))

(assert (= (and b!3003971 (not c!494488)) b!3003993))

(assert (= (and b!3003993 c!494484) b!3003990))

(assert (= (and b!3003993 (not c!494484)) b!3003976))

(assert (= (or b!3003995 b!3003973) bm!202018))

(assert (= (or b!3003995 b!3003973) bm!202017))

(assert (= (or b!3003995 b!3003975) bm!202023))

(assert (= (or b!3003989 b!3003973) bm!202021))

(assert (= (or b!3003980 b!3003993) bm!202019))

(assert (= (or b!3003977 bm!202017) bm!202020))

(assert (= (or b!3003977 bm!202021) bm!202022))

(assert (= (and d!846570 res!1237957) b!3003981))

(declare-fun m!3353533 () Bool)

(assert (=> bm!202018 m!3353533))

(declare-fun m!3353535 () Bool)

(assert (=> d!846570 m!3353535))

(declare-fun m!3353537 () Bool)

(assert (=> d!846570 m!3353537))

(declare-fun m!3353539 () Bool)

(assert (=> bm!202022 m!3353539))

(declare-fun m!3353541 () Bool)

(assert (=> bm!202023 m!3353541))

(declare-fun m!3353543 () Bool)

(assert (=> b!3003971 m!3353543))

(declare-fun m!3353545 () Bool)

(assert (=> b!3003981 m!3353545))

(declare-fun m!3353547 () Bool)

(assert (=> b!3003981 m!3353547))

(declare-fun m!3353549 () Bool)

(assert (=> bm!202020 m!3353549))

(declare-fun m!3353551 () Bool)

(assert (=> bm!202019 m!3353551))

(assert (=> b!3003511 d!846570))

(declare-fun bs!528602 () Bool)

(declare-fun b!3004005 () Bool)

(assert (= bs!528602 (and b!3004005 b!3003507)))

(declare-fun lambda!112276 () Int)

(assert (=> bs!528602 (not (= lambda!112276 lambda!112251))))

(assert (=> bs!528602 (= (and (= (reg!9706 r!17423) lt!1042413) (= r!17423 lt!1042420)) (= lambda!112276 lambda!112252))))

(declare-fun bs!528603 () Bool)

(assert (= bs!528603 (and b!3004005 b!3003818)))

(assert (=> bs!528603 (= (and (= (reg!9706 r!17423) (reg!9706 lt!1042420)) (= r!17423 lt!1042420)) (= lambda!112276 lambda!112263))))

(declare-fun bs!528604 () Bool)

(assert (= bs!528604 (and b!3004005 b!3003812)))

(assert (=> bs!528604 (not (= lambda!112276 lambda!112264))))

(assert (=> b!3004005 true))

(assert (=> b!3004005 true))

(declare-fun bs!528605 () Bool)

(declare-fun b!3003999 () Bool)

(assert (= bs!528605 (and b!3003999 b!3003818)))

(declare-fun lambda!112277 () Int)

(assert (=> bs!528605 (not (= lambda!112277 lambda!112263))))

(declare-fun bs!528606 () Bool)

(assert (= bs!528606 (and b!3003999 b!3003507)))

(assert (=> bs!528606 (not (= lambda!112277 lambda!112251))))

(declare-fun bs!528607 () Bool)

(assert (= bs!528607 (and b!3003999 b!3004005)))

(assert (=> bs!528607 (not (= lambda!112277 lambda!112276))))

(assert (=> bs!528606 (not (= lambda!112277 lambda!112252))))

(declare-fun bs!528608 () Bool)

(assert (= bs!528608 (and b!3003999 b!3003812)))

(assert (=> bs!528608 (= (and (= (regOne!19266 r!17423) (regOne!19266 lt!1042420)) (= (regTwo!19266 r!17423) (regTwo!19266 lt!1042420))) (= lambda!112277 lambda!112264))))

(assert (=> b!3003999 true))

(assert (=> b!3003999 true))

(declare-fun b!3003996 () Bool)

(declare-fun e!1886815 () Bool)

(declare-fun e!1886820 () Bool)

(assert (=> b!3003996 (= e!1886815 e!1886820)))

(declare-fun c!494496 () Bool)

(assert (=> b!3003996 (= c!494496 ((_ is Star!9377) r!17423))))

(declare-fun b!3003998 () Bool)

(declare-fun res!1237960 () Bool)

(declare-fun e!1886819 () Bool)

(assert (=> b!3003998 (=> res!1237960 e!1886819)))

(declare-fun call!202030 () Bool)

(assert (=> b!3003998 (= res!1237960 call!202030)))

(assert (=> b!3003998 (= e!1886820 e!1886819)))

(declare-fun call!202029 () Bool)

(assert (=> b!3003999 (= e!1886820 call!202029)))

(declare-fun b!3004000 () Bool)

(declare-fun e!1886816 () Bool)

(declare-fun e!1886814 () Bool)

(assert (=> b!3004000 (= e!1886816 e!1886814)))

(declare-fun res!1237962 () Bool)

(assert (=> b!3004000 (= res!1237962 (not ((_ is EmptyLang!9377) r!17423)))))

(assert (=> b!3004000 (=> (not res!1237962) (not e!1886814))))

(declare-fun bm!202024 () Bool)

(assert (=> bm!202024 (= call!202029 (Exists!1646 (ite c!494496 lambda!112276 lambda!112277)))))

(declare-fun b!3004001 () Bool)

(declare-fun e!1886818 () Bool)

(assert (=> b!3004001 (= e!1886818 (matchRSpec!1514 (regTwo!19267 r!17423) s!11993))))

(declare-fun b!3004002 () Bool)

(declare-fun c!494494 () Bool)

(assert (=> b!3004002 (= c!494494 ((_ is Union!9377) r!17423))))

(declare-fun e!1886817 () Bool)

(assert (=> b!3004002 (= e!1886817 e!1886815)))

(declare-fun b!3004003 () Bool)

(assert (=> b!3004003 (= e!1886817 (= s!11993 (Cons!35118 (c!494359 r!17423) Nil!35118)))))

(declare-fun b!3004004 () Bool)

(assert (=> b!3004004 (= e!1886816 call!202030)))

(assert (=> b!3004005 (= e!1886819 call!202029)))

(declare-fun d!846582 () Bool)

(declare-fun c!494495 () Bool)

(assert (=> d!846582 (= c!494495 ((_ is EmptyExpr!9377) r!17423))))

(assert (=> d!846582 (= (matchRSpec!1514 r!17423 s!11993) e!1886816)))

(declare-fun b!3003997 () Bool)

(assert (=> b!3003997 (= e!1886815 e!1886818)))

(declare-fun res!1237961 () Bool)

(assert (=> b!3003997 (= res!1237961 (matchRSpec!1514 (regOne!19267 r!17423) s!11993))))

(assert (=> b!3003997 (=> res!1237961 e!1886818)))

(declare-fun b!3004006 () Bool)

(declare-fun c!494493 () Bool)

(assert (=> b!3004006 (= c!494493 ((_ is ElementMatch!9377) r!17423))))

(assert (=> b!3004006 (= e!1886814 e!1886817)))

(declare-fun bm!202025 () Bool)

(assert (=> bm!202025 (= call!202030 (isEmpty!19393 s!11993))))

(assert (= (and d!846582 c!494495) b!3004004))

(assert (= (and d!846582 (not c!494495)) b!3004000))

(assert (= (and b!3004000 res!1237962) b!3004006))

(assert (= (and b!3004006 c!494493) b!3004003))

(assert (= (and b!3004006 (not c!494493)) b!3004002))

(assert (= (and b!3004002 c!494494) b!3003997))

(assert (= (and b!3004002 (not c!494494)) b!3003996))

(assert (= (and b!3003997 (not res!1237961)) b!3004001))

(assert (= (and b!3003996 c!494496) b!3003998))

(assert (= (and b!3003996 (not c!494496)) b!3003999))

(assert (= (and b!3003998 (not res!1237960)) b!3004005))

(assert (= (or b!3004005 b!3003999) bm!202024))

(assert (= (or b!3004004 b!3003998) bm!202025))

(declare-fun m!3353553 () Bool)

(assert (=> bm!202024 m!3353553))

(declare-fun m!3353555 () Bool)

(assert (=> b!3004001 m!3353555))

(declare-fun m!3353557 () Bool)

(assert (=> b!3003997 m!3353557))

(assert (=> bm!202025 m!3353377))

(assert (=> b!3003509 d!846582))

(declare-fun b!3004007 () Bool)

(declare-fun res!1237966 () Bool)

(declare-fun e!1886822 () Bool)

(assert (=> b!3004007 (=> res!1237966 e!1886822)))

(assert (=> b!3004007 (= res!1237966 (not ((_ is ElementMatch!9377) r!17423)))))

(declare-fun e!1886823 () Bool)

(assert (=> b!3004007 (= e!1886823 e!1886822)))

(declare-fun b!3004008 () Bool)

(declare-fun res!1237968 () Bool)

(declare-fun e!1886821 () Bool)

(assert (=> b!3004008 (=> (not res!1237968) (not e!1886821))))

(declare-fun call!202031 () Bool)

(assert (=> b!3004008 (= res!1237968 (not call!202031))))

(declare-fun b!3004009 () Bool)

(declare-fun e!1886826 () Bool)

(assert (=> b!3004009 (= e!1886822 e!1886826)))

(declare-fun res!1237967 () Bool)

(assert (=> b!3004009 (=> (not res!1237967) (not e!1886826))))

(declare-fun lt!1042488 () Bool)

(assert (=> b!3004009 (= res!1237967 (not lt!1042488))))

(declare-fun d!846584 () Bool)

(declare-fun e!1886827 () Bool)

(assert (=> d!846584 e!1886827))

(declare-fun c!494498 () Bool)

(assert (=> d!846584 (= c!494498 ((_ is EmptyExpr!9377) r!17423))))

(declare-fun e!1886824 () Bool)

(assert (=> d!846584 (= lt!1042488 e!1886824)))

(declare-fun c!494499 () Bool)

(assert (=> d!846584 (= c!494499 (isEmpty!19393 s!11993))))

(assert (=> d!846584 (validRegex!4110 r!17423)))

(assert (=> d!846584 (= (matchR!4259 r!17423 s!11993) lt!1042488)))

(declare-fun b!3004010 () Bool)

(assert (=> b!3004010 (= e!1886827 (= lt!1042488 call!202031))))

(declare-fun bm!202026 () Bool)

(assert (=> bm!202026 (= call!202031 (isEmpty!19393 s!11993))))

(declare-fun b!3004011 () Bool)

(assert (=> b!3004011 (= e!1886824 (matchR!4259 (derivativeStep!2634 r!17423 (head!6693 s!11993)) (tail!4919 s!11993)))))

(declare-fun b!3004012 () Bool)

(declare-fun res!1237970 () Bool)

(assert (=> b!3004012 (=> (not res!1237970) (not e!1886821))))

(assert (=> b!3004012 (= res!1237970 (isEmpty!19393 (tail!4919 s!11993)))))

(declare-fun b!3004013 () Bool)

(assert (=> b!3004013 (= e!1886827 e!1886823)))

(declare-fun c!494497 () Bool)

(assert (=> b!3004013 (= c!494497 ((_ is EmptyLang!9377) r!17423))))

(declare-fun b!3004014 () Bool)

(assert (=> b!3004014 (= e!1886821 (= (head!6693 s!11993) (c!494359 r!17423)))))

(declare-fun b!3004015 () Bool)

(assert (=> b!3004015 (= e!1886823 (not lt!1042488))))

(declare-fun b!3004016 () Bool)

(assert (=> b!3004016 (= e!1886824 (nullable!3036 r!17423))))

(declare-fun b!3004017 () Bool)

(declare-fun e!1886825 () Bool)

(assert (=> b!3004017 (= e!1886825 (not (= (head!6693 s!11993) (c!494359 r!17423))))))

(declare-fun b!3004018 () Bool)

(assert (=> b!3004018 (= e!1886826 e!1886825)))

(declare-fun res!1237969 () Bool)

(assert (=> b!3004018 (=> res!1237969 e!1886825)))

(assert (=> b!3004018 (= res!1237969 call!202031)))

(declare-fun b!3004019 () Bool)

(declare-fun res!1237965 () Bool)

(assert (=> b!3004019 (=> res!1237965 e!1886822)))

(assert (=> b!3004019 (= res!1237965 e!1886821)))

(declare-fun res!1237964 () Bool)

(assert (=> b!3004019 (=> (not res!1237964) (not e!1886821))))

(assert (=> b!3004019 (= res!1237964 lt!1042488)))

(declare-fun b!3004020 () Bool)

(declare-fun res!1237963 () Bool)

(assert (=> b!3004020 (=> res!1237963 e!1886825)))

(assert (=> b!3004020 (= res!1237963 (not (isEmpty!19393 (tail!4919 s!11993))))))

(assert (= (and d!846584 c!494499) b!3004016))

(assert (= (and d!846584 (not c!494499)) b!3004011))

(assert (= (and d!846584 c!494498) b!3004010))

(assert (= (and d!846584 (not c!494498)) b!3004013))

(assert (= (and b!3004013 c!494497) b!3004015))

(assert (= (and b!3004013 (not c!494497)) b!3004007))

(assert (= (and b!3004007 (not res!1237966)) b!3004019))

(assert (= (and b!3004019 res!1237964) b!3004008))

(assert (= (and b!3004008 res!1237968) b!3004012))

(assert (= (and b!3004012 res!1237970) b!3004014))

(assert (= (and b!3004019 (not res!1237965)) b!3004009))

(assert (= (and b!3004009 res!1237967) b!3004018))

(assert (= (and b!3004018 (not res!1237969)) b!3004020))

(assert (= (and b!3004020 (not res!1237963)) b!3004017))

(assert (= (or b!3004010 b!3004008 b!3004018) bm!202026))

(assert (=> d!846584 m!3353377))

(assert (=> d!846584 m!3353365))

(assert (=> b!3004014 m!3353437))

(assert (=> b!3004017 m!3353437))

(assert (=> bm!202026 m!3353377))

(declare-fun m!3353559 () Bool)

(assert (=> b!3004016 m!3353559))

(assert (=> b!3004020 m!3353441))

(assert (=> b!3004020 m!3353441))

(assert (=> b!3004020 m!3353443))

(assert (=> b!3004012 m!3353441))

(assert (=> b!3004012 m!3353441))

(assert (=> b!3004012 m!3353443))

(assert (=> b!3004011 m!3353437))

(assert (=> b!3004011 m!3353437))

(declare-fun m!3353561 () Bool)

(assert (=> b!3004011 m!3353561))

(assert (=> b!3004011 m!3353441))

(assert (=> b!3004011 m!3353561))

(assert (=> b!3004011 m!3353441))

(declare-fun m!3353563 () Bool)

(assert (=> b!3004011 m!3353563))

(assert (=> b!3003509 d!846584))

(declare-fun d!846586 () Bool)

(assert (=> d!846586 (= (matchR!4259 r!17423 s!11993) (matchRSpec!1514 r!17423 s!11993))))

(declare-fun lt!1042489 () Unit!49169)

(assert (=> d!846586 (= lt!1042489 (choose!17820 r!17423 s!11993))))

(assert (=> d!846586 (validRegex!4110 r!17423)))

(assert (=> d!846586 (= (mainMatchTheorem!1514 r!17423 s!11993) lt!1042489)))

(declare-fun bs!528609 () Bool)

(assert (= bs!528609 d!846586))

(assert (=> bs!528609 m!3353373))

(assert (=> bs!528609 m!3353371))

(declare-fun m!3353565 () Bool)

(assert (=> bs!528609 m!3353565))

(assert (=> bs!528609 m!3353365))

(assert (=> b!3003509 d!846586))

(declare-fun b!3004021 () Bool)

(declare-fun res!1237974 () Bool)

(declare-fun e!1886829 () Bool)

(assert (=> b!3004021 (=> res!1237974 e!1886829)))

(assert (=> b!3004021 (= res!1237974 (not ((_ is ElementMatch!9377) lt!1042420)))))

(declare-fun e!1886830 () Bool)

(assert (=> b!3004021 (= e!1886830 e!1886829)))

(declare-fun b!3004022 () Bool)

(declare-fun res!1237976 () Bool)

(declare-fun e!1886828 () Bool)

(assert (=> b!3004022 (=> (not res!1237976) (not e!1886828))))

(declare-fun call!202032 () Bool)

(assert (=> b!3004022 (= res!1237976 (not call!202032))))

(declare-fun b!3004023 () Bool)

(declare-fun e!1886833 () Bool)

(assert (=> b!3004023 (= e!1886829 e!1886833)))

(declare-fun res!1237975 () Bool)

(assert (=> b!3004023 (=> (not res!1237975) (not e!1886833))))

(declare-fun lt!1042490 () Bool)

(assert (=> b!3004023 (= res!1237975 (not lt!1042490))))

(declare-fun d!846588 () Bool)

(declare-fun e!1886834 () Bool)

(assert (=> d!846588 e!1886834))

(declare-fun c!494501 () Bool)

(assert (=> d!846588 (= c!494501 ((_ is EmptyExpr!9377) lt!1042420))))

(declare-fun e!1886831 () Bool)

(assert (=> d!846588 (= lt!1042490 e!1886831)))

(declare-fun c!494502 () Bool)

(assert (=> d!846588 (= c!494502 (isEmpty!19393 (_2!20156 lt!1042415)))))

(assert (=> d!846588 (validRegex!4110 lt!1042420)))

(assert (=> d!846588 (= (matchR!4259 lt!1042420 (_2!20156 lt!1042415)) lt!1042490)))

(declare-fun b!3004024 () Bool)

(assert (=> b!3004024 (= e!1886834 (= lt!1042490 call!202032))))

(declare-fun bm!202027 () Bool)

(assert (=> bm!202027 (= call!202032 (isEmpty!19393 (_2!20156 lt!1042415)))))

(declare-fun b!3004025 () Bool)

(assert (=> b!3004025 (= e!1886831 (matchR!4259 (derivativeStep!2634 lt!1042420 (head!6693 (_2!20156 lt!1042415))) (tail!4919 (_2!20156 lt!1042415))))))

(declare-fun b!3004026 () Bool)

(declare-fun res!1237978 () Bool)

(assert (=> b!3004026 (=> (not res!1237978) (not e!1886828))))

(assert (=> b!3004026 (= res!1237978 (isEmpty!19393 (tail!4919 (_2!20156 lt!1042415))))))

(declare-fun b!3004027 () Bool)

(assert (=> b!3004027 (= e!1886834 e!1886830)))

(declare-fun c!494500 () Bool)

(assert (=> b!3004027 (= c!494500 ((_ is EmptyLang!9377) lt!1042420))))

(declare-fun b!3004028 () Bool)

(assert (=> b!3004028 (= e!1886828 (= (head!6693 (_2!20156 lt!1042415)) (c!494359 lt!1042420)))))

(declare-fun b!3004029 () Bool)

(assert (=> b!3004029 (= e!1886830 (not lt!1042490))))

(declare-fun b!3004030 () Bool)

(assert (=> b!3004030 (= e!1886831 (nullable!3036 lt!1042420))))

(declare-fun b!3004031 () Bool)

(declare-fun e!1886832 () Bool)

(assert (=> b!3004031 (= e!1886832 (not (= (head!6693 (_2!20156 lt!1042415)) (c!494359 lt!1042420))))))

(declare-fun b!3004032 () Bool)

(assert (=> b!3004032 (= e!1886833 e!1886832)))

(declare-fun res!1237977 () Bool)

(assert (=> b!3004032 (=> res!1237977 e!1886832)))

(assert (=> b!3004032 (= res!1237977 call!202032)))

(declare-fun b!3004033 () Bool)

(declare-fun res!1237973 () Bool)

(assert (=> b!3004033 (=> res!1237973 e!1886829)))

(assert (=> b!3004033 (= res!1237973 e!1886828)))

(declare-fun res!1237972 () Bool)

(assert (=> b!3004033 (=> (not res!1237972) (not e!1886828))))

(assert (=> b!3004033 (= res!1237972 lt!1042490)))

(declare-fun b!3004034 () Bool)

(declare-fun res!1237971 () Bool)

(assert (=> b!3004034 (=> res!1237971 e!1886832)))

(assert (=> b!3004034 (= res!1237971 (not (isEmpty!19393 (tail!4919 (_2!20156 lt!1042415)))))))

(assert (= (and d!846588 c!494502) b!3004030))

(assert (= (and d!846588 (not c!494502)) b!3004025))

(assert (= (and d!846588 c!494501) b!3004024))

(assert (= (and d!846588 (not c!494501)) b!3004027))

(assert (= (and b!3004027 c!494500) b!3004029))

(assert (= (and b!3004027 (not c!494500)) b!3004021))

(assert (= (and b!3004021 (not res!1237974)) b!3004033))

(assert (= (and b!3004033 res!1237972) b!3004022))

(assert (= (and b!3004022 res!1237976) b!3004026))

(assert (= (and b!3004026 res!1237978) b!3004028))

(assert (= (and b!3004033 (not res!1237973)) b!3004023))

(assert (= (and b!3004023 res!1237975) b!3004032))

(assert (= (and b!3004032 (not res!1237977)) b!3004034))

(assert (= (and b!3004034 (not res!1237971)) b!3004031))

(assert (= (or b!3004024 b!3004022 b!3004032) bm!202027))

(declare-fun m!3353567 () Bool)

(assert (=> d!846588 m!3353567))

(assert (=> d!846588 m!3353435))

(declare-fun m!3353569 () Bool)

(assert (=> b!3004028 m!3353569))

(assert (=> b!3004031 m!3353569))

(assert (=> bm!202027 m!3353567))

(assert (=> b!3004030 m!3353439))

(declare-fun m!3353571 () Bool)

(assert (=> b!3004034 m!3353571))

(assert (=> b!3004034 m!3353571))

(declare-fun m!3353573 () Bool)

(assert (=> b!3004034 m!3353573))

(assert (=> b!3004026 m!3353571))

(assert (=> b!3004026 m!3353571))

(assert (=> b!3004026 m!3353573))

(assert (=> b!3004025 m!3353569))

(assert (=> b!3004025 m!3353569))

(declare-fun m!3353575 () Bool)

(assert (=> b!3004025 m!3353575))

(assert (=> b!3004025 m!3353571))

(assert (=> b!3004025 m!3353575))

(assert (=> b!3004025 m!3353571))

(declare-fun m!3353577 () Bool)

(assert (=> b!3004025 m!3353577))

(assert (=> b!3003510 d!846588))

(declare-fun b!3004035 () Bool)

(declare-fun res!1237982 () Bool)

(declare-fun e!1886836 () Bool)

(assert (=> b!3004035 (=> res!1237982 e!1886836)))

(assert (=> b!3004035 (= res!1237982 (not ((_ is ElementMatch!9377) lt!1042413)))))

(declare-fun e!1886837 () Bool)

(assert (=> b!3004035 (= e!1886837 e!1886836)))

(declare-fun b!3004036 () Bool)

(declare-fun res!1237984 () Bool)

(declare-fun e!1886835 () Bool)

(assert (=> b!3004036 (=> (not res!1237984) (not e!1886835))))

(declare-fun call!202033 () Bool)

(assert (=> b!3004036 (= res!1237984 (not call!202033))))

(declare-fun b!3004037 () Bool)

(declare-fun e!1886840 () Bool)

(assert (=> b!3004037 (= e!1886836 e!1886840)))

(declare-fun res!1237983 () Bool)

(assert (=> b!3004037 (=> (not res!1237983) (not e!1886840))))

(declare-fun lt!1042491 () Bool)

(assert (=> b!3004037 (= res!1237983 (not lt!1042491))))

(declare-fun d!846590 () Bool)

(declare-fun e!1886841 () Bool)

(assert (=> d!846590 e!1886841))

(declare-fun c!494504 () Bool)

(assert (=> d!846590 (= c!494504 ((_ is EmptyExpr!9377) lt!1042413))))

(declare-fun e!1886838 () Bool)

(assert (=> d!846590 (= lt!1042491 e!1886838)))

(declare-fun c!494505 () Bool)

(assert (=> d!846590 (= c!494505 (isEmpty!19393 (_1!20156 lt!1042415)))))

(assert (=> d!846590 (validRegex!4110 lt!1042413)))

(assert (=> d!846590 (= (matchR!4259 lt!1042413 (_1!20156 lt!1042415)) lt!1042491)))

(declare-fun b!3004038 () Bool)

(assert (=> b!3004038 (= e!1886841 (= lt!1042491 call!202033))))

(declare-fun bm!202028 () Bool)

(assert (=> bm!202028 (= call!202033 (isEmpty!19393 (_1!20156 lt!1042415)))))

(declare-fun b!3004039 () Bool)

(assert (=> b!3004039 (= e!1886838 (matchR!4259 (derivativeStep!2634 lt!1042413 (head!6693 (_1!20156 lt!1042415))) (tail!4919 (_1!20156 lt!1042415))))))

(declare-fun b!3004040 () Bool)

(declare-fun res!1237986 () Bool)

(assert (=> b!3004040 (=> (not res!1237986) (not e!1886835))))

(assert (=> b!3004040 (= res!1237986 (isEmpty!19393 (tail!4919 (_1!20156 lt!1042415))))))

(declare-fun b!3004041 () Bool)

(assert (=> b!3004041 (= e!1886841 e!1886837)))

(declare-fun c!494503 () Bool)

(assert (=> b!3004041 (= c!494503 ((_ is EmptyLang!9377) lt!1042413))))

(declare-fun b!3004042 () Bool)

(assert (=> b!3004042 (= e!1886835 (= (head!6693 (_1!20156 lt!1042415)) (c!494359 lt!1042413)))))

(declare-fun b!3004043 () Bool)

(assert (=> b!3004043 (= e!1886837 (not lt!1042491))))

(declare-fun b!3004044 () Bool)

(assert (=> b!3004044 (= e!1886838 (nullable!3036 lt!1042413))))

(declare-fun b!3004045 () Bool)

(declare-fun e!1886839 () Bool)

(assert (=> b!3004045 (= e!1886839 (not (= (head!6693 (_1!20156 lt!1042415)) (c!494359 lt!1042413))))))

(declare-fun b!3004046 () Bool)

(assert (=> b!3004046 (= e!1886840 e!1886839)))

(declare-fun res!1237985 () Bool)

(assert (=> b!3004046 (=> res!1237985 e!1886839)))

(assert (=> b!3004046 (= res!1237985 call!202033)))

(declare-fun b!3004047 () Bool)

(declare-fun res!1237981 () Bool)

(assert (=> b!3004047 (=> res!1237981 e!1886836)))

(assert (=> b!3004047 (= res!1237981 e!1886835)))

(declare-fun res!1237980 () Bool)

(assert (=> b!3004047 (=> (not res!1237980) (not e!1886835))))

(assert (=> b!3004047 (= res!1237980 lt!1042491)))

(declare-fun b!3004048 () Bool)

(declare-fun res!1237979 () Bool)

(assert (=> b!3004048 (=> res!1237979 e!1886839)))

(assert (=> b!3004048 (= res!1237979 (not (isEmpty!19393 (tail!4919 (_1!20156 lt!1042415)))))))

(assert (= (and d!846590 c!494505) b!3004044))

(assert (= (and d!846590 (not c!494505)) b!3004039))

(assert (= (and d!846590 c!494504) b!3004038))

(assert (= (and d!846590 (not c!494504)) b!3004041))

(assert (= (and b!3004041 c!494503) b!3004043))

(assert (= (and b!3004041 (not c!494503)) b!3004035))

(assert (= (and b!3004035 (not res!1237982)) b!3004047))

(assert (= (and b!3004047 res!1237980) b!3004036))

(assert (= (and b!3004036 res!1237984) b!3004040))

(assert (= (and b!3004040 res!1237986) b!3004042))

(assert (= (and b!3004047 (not res!1237981)) b!3004037))

(assert (= (and b!3004037 res!1237983) b!3004046))

(assert (= (and b!3004046 (not res!1237985)) b!3004048))

(assert (= (and b!3004048 (not res!1237979)) b!3004045))

(assert (= (or b!3004038 b!3004036 b!3004046) bm!202028))

(declare-fun m!3353579 () Bool)

(assert (=> d!846590 m!3353579))

(declare-fun m!3353581 () Bool)

(assert (=> d!846590 m!3353581))

(declare-fun m!3353583 () Bool)

(assert (=> b!3004042 m!3353583))

(assert (=> b!3004045 m!3353583))

(assert (=> bm!202028 m!3353579))

(declare-fun m!3353585 () Bool)

(assert (=> b!3004044 m!3353585))

(declare-fun m!3353587 () Bool)

(assert (=> b!3004048 m!3353587))

(assert (=> b!3004048 m!3353587))

(declare-fun m!3353589 () Bool)

(assert (=> b!3004048 m!3353589))

(assert (=> b!3004040 m!3353587))

(assert (=> b!3004040 m!3353587))

(assert (=> b!3004040 m!3353589))

(assert (=> b!3004039 m!3353583))

(assert (=> b!3004039 m!3353583))

(declare-fun m!3353591 () Bool)

(assert (=> b!3004039 m!3353591))

(assert (=> b!3004039 m!3353587))

(assert (=> b!3004039 m!3353591))

(assert (=> b!3004039 m!3353587))

(declare-fun m!3353593 () Bool)

(assert (=> b!3004039 m!3353593))

(assert (=> b!3003515 d!846590))

(declare-fun d!846592 () Bool)

(assert (=> d!846592 (= (get!10912 lt!1042412) (v!34889 lt!1042412))))

(assert (=> b!3003515 d!846592))

(declare-fun b!3004067 () Bool)

(declare-fun e!1886856 () Bool)

(declare-fun call!202040 () Bool)

(assert (=> b!3004067 (= e!1886856 call!202040)))

(declare-fun d!846594 () Bool)

(declare-fun res!1237999 () Bool)

(declare-fun e!1886859 () Bool)

(assert (=> d!846594 (=> res!1237999 e!1886859)))

(assert (=> d!846594 (= res!1237999 ((_ is ElementMatch!9377) r!17423))))

(assert (=> d!846594 (= (validRegex!4110 r!17423) e!1886859)))

(declare-fun b!3004068 () Bool)

(declare-fun res!1237997 () Bool)

(declare-fun e!1886861 () Bool)

(assert (=> b!3004068 (=> (not res!1237997) (not e!1886861))))

(declare-fun call!202042 () Bool)

(assert (=> b!3004068 (= res!1237997 call!202042)))

(declare-fun e!1886857 () Bool)

(assert (=> b!3004068 (= e!1886857 e!1886861)))

(declare-fun b!3004069 () Bool)

(declare-fun e!1886862 () Bool)

(assert (=> b!3004069 (= e!1886862 e!1886857)))

(declare-fun c!494510 () Bool)

(assert (=> b!3004069 (= c!494510 ((_ is Union!9377) r!17423))))

(declare-fun b!3004070 () Bool)

(declare-fun call!202041 () Bool)

(assert (=> b!3004070 (= e!1886861 call!202041)))

(declare-fun b!3004071 () Bool)

(declare-fun e!1886860 () Bool)

(assert (=> b!3004071 (= e!1886860 call!202042)))

(declare-fun bm!202035 () Bool)

(declare-fun c!494511 () Bool)

(assert (=> bm!202035 (= call!202040 (validRegex!4110 (ite c!494511 (reg!9706 r!17423) (ite c!494510 (regTwo!19267 r!17423) (regOne!19266 r!17423)))))))

(declare-fun bm!202036 () Bool)

(assert (=> bm!202036 (= call!202041 call!202040)))

(declare-fun b!3004072 () Bool)

(declare-fun e!1886858 () Bool)

(assert (=> b!3004072 (= e!1886858 e!1886860)))

(declare-fun res!1238000 () Bool)

(assert (=> b!3004072 (=> (not res!1238000) (not e!1886860))))

(assert (=> b!3004072 (= res!1238000 call!202041)))

(declare-fun bm!202037 () Bool)

(assert (=> bm!202037 (= call!202042 (validRegex!4110 (ite c!494510 (regOne!19267 r!17423) (regTwo!19266 r!17423))))))

(declare-fun b!3004073 () Bool)

(assert (=> b!3004073 (= e!1886859 e!1886862)))

(assert (=> b!3004073 (= c!494511 ((_ is Star!9377) r!17423))))

(declare-fun b!3004074 () Bool)

(assert (=> b!3004074 (= e!1886862 e!1886856)))

(declare-fun res!1238001 () Bool)

(assert (=> b!3004074 (= res!1238001 (not (nullable!3036 (reg!9706 r!17423))))))

(assert (=> b!3004074 (=> (not res!1238001) (not e!1886856))))

(declare-fun b!3004075 () Bool)

(declare-fun res!1237998 () Bool)

(assert (=> b!3004075 (=> res!1237998 e!1886858)))

(assert (=> b!3004075 (= res!1237998 (not ((_ is Concat!14698) r!17423)))))

(assert (=> b!3004075 (= e!1886857 e!1886858)))

(assert (= (and d!846594 (not res!1237999)) b!3004073))

(assert (= (and b!3004073 c!494511) b!3004074))

(assert (= (and b!3004073 (not c!494511)) b!3004069))

(assert (= (and b!3004074 res!1238001) b!3004067))

(assert (= (and b!3004069 c!494510) b!3004068))

(assert (= (and b!3004069 (not c!494510)) b!3004075))

(assert (= (and b!3004068 res!1237997) b!3004070))

(assert (= (and b!3004075 (not res!1237998)) b!3004072))

(assert (= (and b!3004072 res!1238000) b!3004071))

(assert (= (or b!3004068 b!3004071) bm!202037))

(assert (= (or b!3004070 b!3004072) bm!202036))

(assert (= (or b!3004067 bm!202036) bm!202035))

(declare-fun m!3353595 () Bool)

(assert (=> bm!202035 m!3353595))

(declare-fun m!3353597 () Bool)

(assert (=> bm!202037 m!3353597))

(assert (=> b!3004074 m!3353547))

(assert (=> start!289468 d!846594))

(declare-fun d!846596 () Bool)

(declare-fun choose!17821 (Int) Bool)

(assert (=> d!846596 (= (Exists!1646 lambda!112252) (choose!17821 lambda!112252))))

(declare-fun bs!528610 () Bool)

(assert (= bs!528610 d!846596))

(declare-fun m!3353599 () Bool)

(assert (=> bs!528610 m!3353599))

(assert (=> b!3003507 d!846596))

(declare-fun b!3004094 () Bool)

(declare-fun e!1886876 () Bool)

(assert (=> b!3004094 (= e!1886876 (matchR!4259 lt!1042420 s!11993))))

(declare-fun b!3004095 () Bool)

(declare-fun res!1238013 () Bool)

(declare-fun e!1886874 () Bool)

(assert (=> b!3004095 (=> (not res!1238013) (not e!1886874))))

(declare-fun lt!1042498 () Option!6756)

(assert (=> b!3004095 (= res!1238013 (matchR!4259 lt!1042420 (_2!20156 (get!10912 lt!1042498))))))

(declare-fun d!846598 () Bool)

(declare-fun e!1886873 () Bool)

(assert (=> d!846598 e!1886873))

(declare-fun res!1238016 () Bool)

(assert (=> d!846598 (=> res!1238016 e!1886873)))

(assert (=> d!846598 (= res!1238016 e!1886874)))

(declare-fun res!1238014 () Bool)

(assert (=> d!846598 (=> (not res!1238014) (not e!1886874))))

(assert (=> d!846598 (= res!1238014 (isDefined!5307 lt!1042498))))

(declare-fun e!1886877 () Option!6756)

(assert (=> d!846598 (= lt!1042498 e!1886877)))

(declare-fun c!494516 () Bool)

(assert (=> d!846598 (= c!494516 e!1886876)))

(declare-fun res!1238015 () Bool)

(assert (=> d!846598 (=> (not res!1238015) (not e!1886876))))

(assert (=> d!846598 (= res!1238015 (matchR!4259 lt!1042413 Nil!35118))))

(assert (=> d!846598 (validRegex!4110 lt!1042413)))

(assert (=> d!846598 (= (findConcatSeparation!1150 lt!1042413 lt!1042420 Nil!35118 s!11993 s!11993) lt!1042498)))

(declare-fun b!3004096 () Bool)

(declare-fun e!1886875 () Option!6756)

(assert (=> b!3004096 (= e!1886875 None!6755)))

(declare-fun b!3004097 () Bool)

(declare-fun ++!8405 (List!35242 List!35242) List!35242)

(assert (=> b!3004097 (= e!1886874 (= (++!8405 (_1!20156 (get!10912 lt!1042498)) (_2!20156 (get!10912 lt!1042498))) s!11993))))

(declare-fun b!3004098 () Bool)

(assert (=> b!3004098 (= e!1886877 e!1886875)))

(declare-fun c!494517 () Bool)

(assert (=> b!3004098 (= c!494517 ((_ is Nil!35118) s!11993))))

(declare-fun b!3004099 () Bool)

(assert (=> b!3004099 (= e!1886877 (Some!6755 (tuple2!34049 Nil!35118 s!11993)))))

(declare-fun b!3004100 () Bool)

(declare-fun lt!1042500 () Unit!49169)

(declare-fun lt!1042499 () Unit!49169)

(assert (=> b!3004100 (= lt!1042500 lt!1042499)))

(assert (=> b!3004100 (= (++!8405 (++!8405 Nil!35118 (Cons!35118 (h!40538 s!11993) Nil!35118)) (t!234307 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1016 (List!35242 C!18940 List!35242 List!35242) Unit!49169)

(assert (=> b!3004100 (= lt!1042499 (lemmaMoveElementToOtherListKeepsConcatEq!1016 Nil!35118 (h!40538 s!11993) (t!234307 s!11993) s!11993))))

(assert (=> b!3004100 (= e!1886875 (findConcatSeparation!1150 lt!1042413 lt!1042420 (++!8405 Nil!35118 (Cons!35118 (h!40538 s!11993) Nil!35118)) (t!234307 s!11993) s!11993))))

(declare-fun b!3004101 () Bool)

(declare-fun res!1238012 () Bool)

(assert (=> b!3004101 (=> (not res!1238012) (not e!1886874))))

(assert (=> b!3004101 (= res!1238012 (matchR!4259 lt!1042413 (_1!20156 (get!10912 lt!1042498))))))

(declare-fun b!3004102 () Bool)

(assert (=> b!3004102 (= e!1886873 (not (isDefined!5307 lt!1042498)))))

(assert (= (and d!846598 res!1238015) b!3004094))

(assert (= (and d!846598 c!494516) b!3004099))

(assert (= (and d!846598 (not c!494516)) b!3004098))

(assert (= (and b!3004098 c!494517) b!3004096))

(assert (= (and b!3004098 (not c!494517)) b!3004100))

(assert (= (and d!846598 res!1238014) b!3004101))

(assert (= (and b!3004101 res!1238012) b!3004095))

(assert (= (and b!3004095 res!1238013) b!3004097))

(assert (= (and d!846598 (not res!1238016)) b!3004102))

(declare-fun m!3353601 () Bool)

(assert (=> d!846598 m!3353601))

(declare-fun m!3353603 () Bool)

(assert (=> d!846598 m!3353603))

(assert (=> d!846598 m!3353581))

(declare-fun m!3353605 () Bool)

(assert (=> b!3004097 m!3353605))

(declare-fun m!3353607 () Bool)

(assert (=> b!3004097 m!3353607))

(assert (=> b!3004101 m!3353605))

(declare-fun m!3353609 () Bool)

(assert (=> b!3004101 m!3353609))

(assert (=> b!3004094 m!3353363))

(declare-fun m!3353611 () Bool)

(assert (=> b!3004100 m!3353611))

(assert (=> b!3004100 m!3353611))

(declare-fun m!3353613 () Bool)

(assert (=> b!3004100 m!3353613))

(declare-fun m!3353615 () Bool)

(assert (=> b!3004100 m!3353615))

(assert (=> b!3004100 m!3353611))

(declare-fun m!3353617 () Bool)

(assert (=> b!3004100 m!3353617))

(assert (=> b!3004095 m!3353605))

(declare-fun m!3353619 () Bool)

(assert (=> b!3004095 m!3353619))

(assert (=> b!3004102 m!3353601))

(assert (=> b!3003507 d!846598))

(declare-fun d!846600 () Bool)

(declare-fun isEmpty!19395 (Option!6756) Bool)

(assert (=> d!846600 (= (isDefined!5307 lt!1042412) (not (isEmpty!19395 lt!1042412)))))

(declare-fun bs!528611 () Bool)

(assert (= bs!528611 d!846600))

(declare-fun m!3353621 () Bool)

(assert (=> bs!528611 m!3353621))

(assert (=> b!3003507 d!846600))

(declare-fun bs!528612 () Bool)

(declare-fun d!846602 () Bool)

(assert (= bs!528612 (and d!846602 b!3003818)))

(declare-fun lambda!112282 () Int)

(assert (=> bs!528612 (not (= lambda!112282 lambda!112263))))

(declare-fun bs!528613 () Bool)

(assert (= bs!528613 (and d!846602 b!3003999)))

(assert (=> bs!528613 (not (= lambda!112282 lambda!112277))))

(declare-fun bs!528614 () Bool)

(assert (= bs!528614 (and d!846602 b!3003507)))

(assert (=> bs!528614 (= (= (Star!9377 lt!1042413) lt!1042420) (= lambda!112282 lambda!112251))))

(declare-fun bs!528615 () Bool)

(assert (= bs!528615 (and d!846602 b!3004005)))

(assert (=> bs!528615 (not (= lambda!112282 lambda!112276))))

(assert (=> bs!528614 (not (= lambda!112282 lambda!112252))))

(declare-fun bs!528616 () Bool)

(assert (= bs!528616 (and d!846602 b!3003812)))

(assert (=> bs!528616 (not (= lambda!112282 lambda!112264))))

(assert (=> d!846602 true))

(assert (=> d!846602 true))

(declare-fun lambda!112283 () Int)

(assert (=> bs!528612 (= (and (= lt!1042413 (reg!9706 lt!1042420)) (= (Star!9377 lt!1042413) lt!1042420)) (= lambda!112283 lambda!112263))))

(assert (=> bs!528614 (not (= lambda!112283 lambda!112251))))

(assert (=> bs!528615 (= (and (= lt!1042413 (reg!9706 r!17423)) (= (Star!9377 lt!1042413) r!17423)) (= lambda!112283 lambda!112276))))

(assert (=> bs!528613 (not (= lambda!112283 lambda!112277))))

(declare-fun bs!528617 () Bool)

(assert (= bs!528617 d!846602))

(assert (=> bs!528617 (not (= lambda!112283 lambda!112282))))

(assert (=> bs!528614 (= (= (Star!9377 lt!1042413) lt!1042420) (= lambda!112283 lambda!112252))))

(assert (=> bs!528616 (not (= lambda!112283 lambda!112264))))

(assert (=> d!846602 true))

(assert (=> d!846602 true))

(assert (=> d!846602 (= (Exists!1646 lambda!112282) (Exists!1646 lambda!112283))))

(declare-fun lt!1042503 () Unit!49169)

(declare-fun choose!17822 (Regex!9377 List!35242) Unit!49169)

(assert (=> d!846602 (= lt!1042503 (choose!17822 lt!1042413 s!11993))))

(assert (=> d!846602 (validRegex!4110 lt!1042413)))

(assert (=> d!846602 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!312 lt!1042413 s!11993) lt!1042503)))

(declare-fun m!3353623 () Bool)

(assert (=> bs!528617 m!3353623))

(declare-fun m!3353625 () Bool)

(assert (=> bs!528617 m!3353625))

(declare-fun m!3353627 () Bool)

(assert (=> bs!528617 m!3353627))

(assert (=> bs!528617 m!3353581))

(assert (=> b!3003507 d!846602))

(declare-fun d!846604 () Bool)

(assert (=> d!846604 (= (Exists!1646 lambda!112251) (choose!17821 lambda!112251))))

(declare-fun bs!528618 () Bool)

(assert (= bs!528618 d!846604))

(declare-fun m!3353629 () Bool)

(assert (=> bs!528618 m!3353629))

(assert (=> b!3003507 d!846604))

(declare-fun bs!528619 () Bool)

(declare-fun d!846606 () Bool)

(assert (= bs!528619 (and d!846606 b!3003818)))

(declare-fun lambda!112286 () Int)

(assert (=> bs!528619 (not (= lambda!112286 lambda!112263))))

(declare-fun bs!528620 () Bool)

(assert (= bs!528620 (and d!846606 b!3003507)))

(assert (=> bs!528620 (= lambda!112286 lambda!112251)))

(declare-fun bs!528621 () Bool)

(assert (= bs!528621 (and d!846606 b!3004005)))

(assert (=> bs!528621 (not (= lambda!112286 lambda!112276))))

(declare-fun bs!528622 () Bool)

(assert (= bs!528622 (and d!846606 d!846602)))

(assert (=> bs!528622 (not (= lambda!112286 lambda!112283))))

(declare-fun bs!528623 () Bool)

(assert (= bs!528623 (and d!846606 b!3003999)))

(assert (=> bs!528623 (not (= lambda!112286 lambda!112277))))

(assert (=> bs!528622 (= (= lt!1042420 (Star!9377 lt!1042413)) (= lambda!112286 lambda!112282))))

(assert (=> bs!528620 (not (= lambda!112286 lambda!112252))))

(declare-fun bs!528624 () Bool)

(assert (= bs!528624 (and d!846606 b!3003812)))

(assert (=> bs!528624 (not (= lambda!112286 lambda!112264))))

(assert (=> d!846606 true))

(assert (=> d!846606 true))

(assert (=> d!846606 true))

(assert (=> d!846606 (= (isDefined!5307 (findConcatSeparation!1150 lt!1042413 lt!1042420 Nil!35118 s!11993 s!11993)) (Exists!1646 lambda!112286))))

(declare-fun lt!1042506 () Unit!49169)

(declare-fun choose!17823 (Regex!9377 Regex!9377 List!35242) Unit!49169)

(assert (=> d!846606 (= lt!1042506 (choose!17823 lt!1042413 lt!1042420 s!11993))))

(assert (=> d!846606 (validRegex!4110 lt!1042413)))

(assert (=> d!846606 (= (lemmaFindConcatSeparationEquivalentToExists!928 lt!1042413 lt!1042420 s!11993) lt!1042506)))

(declare-fun bs!528625 () Bool)

(assert (= bs!528625 d!846606))

(assert (=> bs!528625 m!3353353))

(assert (=> bs!528625 m!3353581))

(assert (=> bs!528625 m!3353353))

(declare-fun m!3353631 () Bool)

(assert (=> bs!528625 m!3353631))

(declare-fun m!3353633 () Bool)

(assert (=> bs!528625 m!3353633))

(declare-fun m!3353635 () Bool)

(assert (=> bs!528625 m!3353635))

(assert (=> b!3003507 d!846606))

(declare-fun b!3004127 () Bool)

(declare-fun e!1886886 () Bool)

(assert (=> b!3004127 (= e!1886886 tp_is_empty!16317)))

(declare-fun b!3004129 () Bool)

(declare-fun tp!954399 () Bool)

(assert (=> b!3004129 (= e!1886886 tp!954399)))

(assert (=> b!3003504 (= tp!954345 e!1886886)))

(declare-fun b!3004130 () Bool)

(declare-fun tp!954400 () Bool)

(declare-fun tp!954401 () Bool)

(assert (=> b!3004130 (= e!1886886 (and tp!954400 tp!954401))))

(declare-fun b!3004128 () Bool)

(declare-fun tp!954398 () Bool)

(declare-fun tp!954402 () Bool)

(assert (=> b!3004128 (= e!1886886 (and tp!954398 tp!954402))))

(assert (= (and b!3003504 ((_ is ElementMatch!9377) (regOne!19266 r!17423))) b!3004127))

(assert (= (and b!3003504 ((_ is Concat!14698) (regOne!19266 r!17423))) b!3004128))

(assert (= (and b!3003504 ((_ is Star!9377) (regOne!19266 r!17423))) b!3004129))

(assert (= (and b!3003504 ((_ is Union!9377) (regOne!19266 r!17423))) b!3004130))

(declare-fun b!3004131 () Bool)

(declare-fun e!1886887 () Bool)

(assert (=> b!3004131 (= e!1886887 tp_is_empty!16317)))

(declare-fun b!3004133 () Bool)

(declare-fun tp!954404 () Bool)

(assert (=> b!3004133 (= e!1886887 tp!954404)))

(assert (=> b!3003504 (= tp!954348 e!1886887)))

(declare-fun b!3004134 () Bool)

(declare-fun tp!954405 () Bool)

(declare-fun tp!954406 () Bool)

(assert (=> b!3004134 (= e!1886887 (and tp!954405 tp!954406))))

(declare-fun b!3004132 () Bool)

(declare-fun tp!954403 () Bool)

(declare-fun tp!954407 () Bool)

(assert (=> b!3004132 (= e!1886887 (and tp!954403 tp!954407))))

(assert (= (and b!3003504 ((_ is ElementMatch!9377) (regTwo!19266 r!17423))) b!3004131))

(assert (= (and b!3003504 ((_ is Concat!14698) (regTwo!19266 r!17423))) b!3004132))

(assert (= (and b!3003504 ((_ is Star!9377) (regTwo!19266 r!17423))) b!3004133))

(assert (= (and b!3003504 ((_ is Union!9377) (regTwo!19266 r!17423))) b!3004134))

(declare-fun b!3004135 () Bool)

(declare-fun e!1886888 () Bool)

(assert (=> b!3004135 (= e!1886888 tp_is_empty!16317)))

(declare-fun b!3004137 () Bool)

(declare-fun tp!954409 () Bool)

(assert (=> b!3004137 (= e!1886888 tp!954409)))

(assert (=> b!3003508 (= tp!954346 e!1886888)))

(declare-fun b!3004138 () Bool)

(declare-fun tp!954410 () Bool)

(declare-fun tp!954411 () Bool)

(assert (=> b!3004138 (= e!1886888 (and tp!954410 tp!954411))))

(declare-fun b!3004136 () Bool)

(declare-fun tp!954408 () Bool)

(declare-fun tp!954412 () Bool)

(assert (=> b!3004136 (= e!1886888 (and tp!954408 tp!954412))))

(assert (= (and b!3003508 ((_ is ElementMatch!9377) (reg!9706 r!17423))) b!3004135))

(assert (= (and b!3003508 ((_ is Concat!14698) (reg!9706 r!17423))) b!3004136))

(assert (= (and b!3003508 ((_ is Star!9377) (reg!9706 r!17423))) b!3004137))

(assert (= (and b!3003508 ((_ is Union!9377) (reg!9706 r!17423))) b!3004138))

(declare-fun b!3004143 () Bool)

(declare-fun e!1886891 () Bool)

(declare-fun tp!954415 () Bool)

(assert (=> b!3004143 (= e!1886891 (and tp_is_empty!16317 tp!954415))))

(assert (=> b!3003513 (= tp!954347 e!1886891)))

(assert (= (and b!3003513 ((_ is Cons!35118) (t!234307 s!11993))) b!3004143))

(declare-fun b!3004144 () Bool)

(declare-fun e!1886892 () Bool)

(assert (=> b!3004144 (= e!1886892 tp_is_empty!16317)))

(declare-fun b!3004146 () Bool)

(declare-fun tp!954417 () Bool)

(assert (=> b!3004146 (= e!1886892 tp!954417)))

(assert (=> b!3003514 (= tp!954349 e!1886892)))

(declare-fun b!3004147 () Bool)

(declare-fun tp!954418 () Bool)

(declare-fun tp!954419 () Bool)

(assert (=> b!3004147 (= e!1886892 (and tp!954418 tp!954419))))

(declare-fun b!3004145 () Bool)

(declare-fun tp!954416 () Bool)

(declare-fun tp!954420 () Bool)

(assert (=> b!3004145 (= e!1886892 (and tp!954416 tp!954420))))

(assert (= (and b!3003514 ((_ is ElementMatch!9377) (regOne!19267 r!17423))) b!3004144))

(assert (= (and b!3003514 ((_ is Concat!14698) (regOne!19267 r!17423))) b!3004145))

(assert (= (and b!3003514 ((_ is Star!9377) (regOne!19267 r!17423))) b!3004146))

(assert (= (and b!3003514 ((_ is Union!9377) (regOne!19267 r!17423))) b!3004147))

(declare-fun b!3004148 () Bool)

(declare-fun e!1886893 () Bool)

(assert (=> b!3004148 (= e!1886893 tp_is_empty!16317)))

(declare-fun b!3004150 () Bool)

(declare-fun tp!954422 () Bool)

(assert (=> b!3004150 (= e!1886893 tp!954422)))

(assert (=> b!3003514 (= tp!954344 e!1886893)))

(declare-fun b!3004151 () Bool)

(declare-fun tp!954423 () Bool)

(declare-fun tp!954424 () Bool)

(assert (=> b!3004151 (= e!1886893 (and tp!954423 tp!954424))))

(declare-fun b!3004149 () Bool)

(declare-fun tp!954421 () Bool)

(declare-fun tp!954425 () Bool)

(assert (=> b!3004149 (= e!1886893 (and tp!954421 tp!954425))))

(assert (= (and b!3003514 ((_ is ElementMatch!9377) (regTwo!19267 r!17423))) b!3004148))

(assert (= (and b!3003514 ((_ is Concat!14698) (regTwo!19267 r!17423))) b!3004149))

(assert (= (and b!3003514 ((_ is Star!9377) (regTwo!19267 r!17423))) b!3004150))

(assert (= (and b!3003514 ((_ is Union!9377) (regTwo!19267 r!17423))) b!3004151))

(check-sat (not bm!201990) (not b!3003688) (not bm!202037) (not bm!202028) (not b!3004150) (not b!3004151) (not b!3004137) (not b!3004012) (not b!3004102) (not bm!202026) (not b!3004149) (not d!846570) (not b!3004016) (not b!3004134) (not b!3004143) (not d!846560) (not b!3003810) (not b!3004147) (not d!846600) (not b!3003692) (not d!846596) (not b!3004026) (not b!3003981) (not b!3004101) (not bm!202027) (not b!3004020) (not b!3003684) (not bm!201977) (not b!3004129) (not b!3004074) (not bm!202023) (not bm!202025) (not d!846602) (not b!3004130) (not d!846590) (not bm!202019) (not b!3004045) (not bm!202024) (not b!3004094) (not b!3004100) (not b!3003997) (not b!3004145) (not b!3004025) (not b!3003686) tp_is_empty!16317 (not bm!202035) (not b!3003683) (not bm!201989) (not d!846588) (not b!3004028) (not b!3004048) (not b!3004040) (not d!846598) (not b!3004133) (not b!3004030) (not b!3004014) (not b!3004001) (not b!3004128) (not d!846606) (not b!3004017) (not b!3004034) (not b!3004136) (not bm!202018) (not b!3004039) (not b!3004146) (not b!3004097) (not b!3003971) (not b!3003689) (not d!846604) (not bm!202020) (not b!3004011) (not b!3004044) (not b!3004132) (not d!846586) (not b!3004138) (not b!3004042) (not b!3004031) (not b!3004095) (not d!846534) (not b!3003814) (not d!846584) (not bm!202022))
(check-sat)
