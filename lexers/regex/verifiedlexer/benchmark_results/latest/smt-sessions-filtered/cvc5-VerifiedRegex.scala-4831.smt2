; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248390 () Bool)

(assert start!248390)

(declare-fun b!2569719 () Bool)

(declare-fun e!1621957 () Bool)

(declare-fun tp_is_empty!13127 () Bool)

(assert (=> b!2569719 (= e!1621957 tp_is_empty!13127)))

(declare-fun b!2569720 () Bool)

(declare-fun res!1081096 () Bool)

(declare-fun e!1621955 () Bool)

(assert (=> b!2569720 (=> (not res!1081096) (not e!1621955))))

(declare-datatypes ((C!15430 0))(
  ( (C!15431 (val!9367 Int)) )
))
(declare-datatypes ((List!29701 0))(
  ( (Nil!29601) (Cons!29601 (h!35021 C!15430) (t!211400 List!29701)) )
))
(declare-fun tl!4068 () List!29701)

(declare-datatypes ((Regex!7636 0))(
  ( (ElementMatch!7636 (c!413462 C!15430)) (Concat!12332 (regOne!15784 Regex!7636) (regTwo!15784 Regex!7636)) (EmptyExpr!7636) (Star!7636 (reg!7965 Regex!7636)) (EmptyLang!7636) (Union!7636 (regOne!15785 Regex!7636) (regTwo!15785 Regex!7636)) )
))
(declare-fun r!27340 () Regex!7636)

(declare-fun c!14016 () C!15430)

(declare-fun nullable!2553 (Regex!7636) Bool)

(declare-fun derivative!331 (Regex!7636 List!29701) Regex!7636)

(declare-fun derivativeStep!2205 (Regex!7636 C!15430) Regex!7636)

(assert (=> b!2569720 (= res!1081096 (nullable!2553 (derivative!331 (derivativeStep!2205 r!27340 c!14016) tl!4068)))))

(declare-fun b!2569721 () Bool)

(declare-fun tp!817752 () Bool)

(assert (=> b!2569721 (= e!1621957 tp!817752)))

(declare-fun b!2569722 () Bool)

(declare-fun res!1081094 () Bool)

(declare-fun e!1621960 () Bool)

(assert (=> b!2569722 (=> res!1081094 e!1621960)))

(declare-fun lt!905730 () Regex!7636)

(declare-datatypes ((tuple2!29594 0))(
  ( (tuple2!29595 (_1!17339 List!29701) (_2!17339 List!29701)) )
))
(declare-fun lt!905735 () tuple2!29594)

(declare-fun matchR!3579 (Regex!7636 List!29701) Bool)

(assert (=> b!2569722 (= res!1081094 (not (matchR!3579 lt!905730 (_1!17339 lt!905735))))))

(declare-fun b!2569724 () Bool)

(declare-fun e!1621956 () Bool)

(assert (=> b!2569724 (= e!1621956 e!1621960)))

(declare-fun res!1081095 () Bool)

(assert (=> b!2569724 (=> res!1081095 e!1621960)))

(declare-fun ++!7275 (List!29701 List!29701) List!29701)

(assert (=> b!2569724 (= res!1081095 (not (= (++!7275 (_1!17339 lt!905735) (_2!17339 lt!905735)) tl!4068)))))

(declare-datatypes ((Option!5917 0))(
  ( (None!5916) (Some!5916 (v!31861 tuple2!29594)) )
))
(declare-fun lt!905728 () Option!5917)

(declare-fun get!9314 (Option!5917) tuple2!29594)

(assert (=> b!2569724 (= lt!905735 (get!9314 lt!905728))))

(declare-fun isDefined!4739 (Option!5917) Bool)

(assert (=> b!2569724 (isDefined!4739 lt!905728)))

(declare-fun findConcatSeparation!939 (Regex!7636 Regex!7636 List!29701 List!29701 List!29701) Option!5917)

(assert (=> b!2569724 (= lt!905728 (findConcatSeparation!939 lt!905730 (regTwo!15784 r!27340) Nil!29601 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43453 0))(
  ( (Unit!43454) )
))
(declare-fun lt!905727 () Unit!43453)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!221 (Regex!7636 Regex!7636 List!29701) Unit!43453)

(assert (=> b!2569724 (= lt!905727 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!221 lt!905730 (regTwo!15784 r!27340) tl!4068))))

(declare-fun b!2569725 () Bool)

(declare-fun tp!817749 () Bool)

(declare-fun tp!817751 () Bool)

(assert (=> b!2569725 (= e!1621957 (and tp!817749 tp!817751))))

(declare-fun b!2569726 () Bool)

(declare-fun res!1081102 () Bool)

(assert (=> b!2569726 (=> (not res!1081102) (not e!1621955))))

(assert (=> b!2569726 (= res!1081102 (not (nullable!2553 (regOne!15784 r!27340))))))

(declare-fun b!2569727 () Bool)

(declare-fun tp!817748 () Bool)

(declare-fun tp!817747 () Bool)

(assert (=> b!2569727 (= e!1621957 (and tp!817748 tp!817747))))

(declare-fun b!2569728 () Bool)

(declare-fun e!1621959 () Bool)

(assert (=> b!2569728 (= e!1621959 (matchR!3579 EmptyLang!7636 tl!4068))))

(declare-fun b!2569729 () Bool)

(declare-fun validRegex!3262 (Regex!7636) Bool)

(assert (=> b!2569729 (= e!1621960 (validRegex!3262 (regOne!15784 r!27340)))))

(assert (=> b!2569729 (matchR!3579 (derivative!331 lt!905730 (_1!17339 lt!905735)) Nil!29601)))

(declare-fun lt!905734 () Unit!43453)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!225 (Regex!7636 List!29701) Unit!43453)

(assert (=> b!2569729 (= lt!905734 (lemmaMatchRIsSameAsWholeDerivativeAndNil!225 lt!905730 (_1!17339 lt!905735)))))

(declare-fun b!2569723 () Bool)

(declare-fun res!1081100 () Bool)

(assert (=> b!2569723 (=> res!1081100 e!1621960)))

(assert (=> b!2569723 (= res!1081100 (not (matchR!3579 (regTwo!15784 r!27340) (_2!17339 lt!905735))))))

(declare-fun res!1081098 () Bool)

(assert (=> start!248390 (=> (not res!1081098) (not e!1621955))))

(assert (=> start!248390 (= res!1081098 (validRegex!3262 r!27340))))

(assert (=> start!248390 e!1621955))

(assert (=> start!248390 e!1621957))

(assert (=> start!248390 tp_is_empty!13127))

(declare-fun e!1621958 () Bool)

(assert (=> start!248390 e!1621958))

(declare-fun b!2569730 () Bool)

(assert (=> b!2569730 (= e!1621955 (not e!1621956))))

(declare-fun res!1081093 () Bool)

(assert (=> b!2569730 (=> res!1081093 e!1621956)))

(declare-fun lt!905733 () Bool)

(assert (=> b!2569730 (= res!1081093 (not lt!905733))))

(assert (=> b!2569730 (= (derivative!331 EmptyLang!7636 tl!4068) EmptyLang!7636)))

(declare-fun lt!905729 () Unit!43453)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!65 (Regex!7636 List!29701) Unit!43453)

(assert (=> b!2569730 (= lt!905729 (lemmaEmptyLangDerivativeIsAFixPoint!65 EmptyLang!7636 tl!4068))))

(assert (=> b!2569730 e!1621959))

(declare-fun res!1081101 () Bool)

(assert (=> b!2569730 (=> res!1081101 e!1621959)))

(assert (=> b!2569730 (= res!1081101 lt!905733)))

(declare-fun lt!905732 () Regex!7636)

(assert (=> b!2569730 (= lt!905733 (matchR!3579 lt!905732 tl!4068))))

(declare-fun lt!905726 () Unit!43453)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!225 (Regex!7636 Regex!7636 List!29701) Unit!43453)

(assert (=> b!2569730 (= lt!905726 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!225 lt!905732 EmptyLang!7636 tl!4068))))

(declare-fun lt!905725 () Regex!7636)

(assert (=> b!2569730 (= (matchR!3579 lt!905725 tl!4068) (matchR!3579 (derivative!331 lt!905725 tl!4068) Nil!29601))))

(declare-fun lt!905731 () Unit!43453)

(assert (=> b!2569730 (= lt!905731 (lemmaMatchRIsSameAsWholeDerivativeAndNil!225 lt!905725 tl!4068))))

(assert (=> b!2569730 (= lt!905725 (Union!7636 lt!905732 EmptyLang!7636))))

(assert (=> b!2569730 (= lt!905732 (Concat!12332 lt!905730 (regTwo!15784 r!27340)))))

(assert (=> b!2569730 (= lt!905730 (derivativeStep!2205 (regOne!15784 r!27340) c!14016))))

(declare-fun b!2569731 () Bool)

(declare-fun res!1081097 () Bool)

(assert (=> b!2569731 (=> (not res!1081097) (not e!1621955))))

(assert (=> b!2569731 (= res!1081097 (and (not (is-EmptyExpr!7636 r!27340)) (not (is-EmptyLang!7636 r!27340)) (not (is-ElementMatch!7636 r!27340)) (not (is-Union!7636 r!27340)) (not (is-Star!7636 r!27340))))))

(declare-fun b!2569732 () Bool)

(declare-fun res!1081099 () Bool)

(assert (=> b!2569732 (=> res!1081099 e!1621960)))

(assert (=> b!2569732 (= res!1081099 (not (matchR!3579 (regOne!15784 r!27340) (Cons!29601 c!14016 (_1!17339 lt!905735)))))))

(declare-fun b!2569733 () Bool)

(declare-fun tp!817750 () Bool)

(assert (=> b!2569733 (= e!1621958 (and tp_is_empty!13127 tp!817750))))

(assert (= (and start!248390 res!1081098) b!2569720))

(assert (= (and b!2569720 res!1081096) b!2569731))

(assert (= (and b!2569731 res!1081097) b!2569726))

(assert (= (and b!2569726 res!1081102) b!2569730))

(assert (= (and b!2569730 (not res!1081101)) b!2569728))

(assert (= (and b!2569730 (not res!1081093)) b!2569724))

(assert (= (and b!2569724 (not res!1081095)) b!2569722))

(assert (= (and b!2569722 (not res!1081094)) b!2569723))

(assert (= (and b!2569723 (not res!1081100)) b!2569732))

(assert (= (and b!2569732 (not res!1081099)) b!2569729))

(assert (= (and start!248390 (is-ElementMatch!7636 r!27340)) b!2569719))

(assert (= (and start!248390 (is-Concat!12332 r!27340)) b!2569727))

(assert (= (and start!248390 (is-Star!7636 r!27340)) b!2569721))

(assert (= (and start!248390 (is-Union!7636 r!27340)) b!2569725))

(assert (= (and start!248390 (is-Cons!29601 tl!4068)) b!2569733))

(declare-fun m!2906333 () Bool)

(assert (=> b!2569728 m!2906333))

(declare-fun m!2906335 () Bool)

(assert (=> b!2569730 m!2906335))

(declare-fun m!2906337 () Bool)

(assert (=> b!2569730 m!2906337))

(declare-fun m!2906339 () Bool)

(assert (=> b!2569730 m!2906339))

(declare-fun m!2906341 () Bool)

(assert (=> b!2569730 m!2906341))

(declare-fun m!2906343 () Bool)

(assert (=> b!2569730 m!2906343))

(assert (=> b!2569730 m!2906335))

(declare-fun m!2906345 () Bool)

(assert (=> b!2569730 m!2906345))

(declare-fun m!2906347 () Bool)

(assert (=> b!2569730 m!2906347))

(declare-fun m!2906349 () Bool)

(assert (=> b!2569730 m!2906349))

(declare-fun m!2906351 () Bool)

(assert (=> b!2569730 m!2906351))

(declare-fun m!2906353 () Bool)

(assert (=> b!2569720 m!2906353))

(assert (=> b!2569720 m!2906353))

(declare-fun m!2906355 () Bool)

(assert (=> b!2569720 m!2906355))

(assert (=> b!2569720 m!2906355))

(declare-fun m!2906357 () Bool)

(assert (=> b!2569720 m!2906357))

(declare-fun m!2906359 () Bool)

(assert (=> b!2569722 m!2906359))

(declare-fun m!2906361 () Bool)

(assert (=> start!248390 m!2906361))

(declare-fun m!2906363 () Bool)

(assert (=> b!2569723 m!2906363))

(declare-fun m!2906365 () Bool)

(assert (=> b!2569732 m!2906365))

(declare-fun m!2906367 () Bool)

(assert (=> b!2569724 m!2906367))

(declare-fun m!2906369 () Bool)

(assert (=> b!2569724 m!2906369))

(declare-fun m!2906371 () Bool)

(assert (=> b!2569724 m!2906371))

(declare-fun m!2906373 () Bool)

(assert (=> b!2569724 m!2906373))

(declare-fun m!2906375 () Bool)

(assert (=> b!2569724 m!2906375))

(declare-fun m!2906377 () Bool)

(assert (=> b!2569729 m!2906377))

(declare-fun m!2906379 () Bool)

(assert (=> b!2569729 m!2906379))

(assert (=> b!2569729 m!2906379))

(declare-fun m!2906381 () Bool)

(assert (=> b!2569729 m!2906381))

(declare-fun m!2906383 () Bool)

(assert (=> b!2569729 m!2906383))

(declare-fun m!2906385 () Bool)

(assert (=> b!2569726 m!2906385))

(push 1)

(assert (not b!2569722))

(assert (not b!2569724))

(assert tp_is_empty!13127)

(assert (not b!2569726))

(assert (not b!2569732))

(assert (not b!2569723))

(assert (not b!2569729))

(assert (not b!2569725))

(assert (not b!2569728))

(assert (not b!2569733))

(assert (not start!248390))

(assert (not b!2569727))

(assert (not b!2569730))

(assert (not b!2569721))

(assert (not b!2569720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2569877 () Bool)

(declare-fun e!1622028 () Bool)

(declare-fun e!1622032 () Bool)

(assert (=> b!2569877 (= e!1622028 e!1622032)))

(declare-fun res!1081189 () Bool)

(assert (=> b!2569877 (=> res!1081189 e!1622032)))

(declare-fun call!165709 () Bool)

(assert (=> b!2569877 (= res!1081189 call!165709)))

(declare-fun b!2569878 () Bool)

(declare-fun res!1081191 () Bool)

(declare-fun e!1622030 () Bool)

(assert (=> b!2569878 (=> (not res!1081191) (not e!1622030))))

(declare-fun isEmpty!17059 (List!29701) Bool)

(declare-fun tail!4116 (List!29701) List!29701)

(assert (=> b!2569878 (= res!1081191 (isEmpty!17059 (tail!4116 tl!4068)))))

(declare-fun b!2569879 () Bool)

(declare-fun e!1622029 () Bool)

(declare-fun lt!905776 () Bool)

(assert (=> b!2569879 (= e!1622029 (not lt!905776))))

(declare-fun b!2569880 () Bool)

(declare-fun e!1622031 () Bool)

(assert (=> b!2569880 (= e!1622031 e!1622028)))

(declare-fun res!1081194 () Bool)

(assert (=> b!2569880 (=> (not res!1081194) (not e!1622028))))

(assert (=> b!2569880 (= res!1081194 (not lt!905776))))

(declare-fun b!2569881 () Bool)

(declare-fun res!1081196 () Bool)

(assert (=> b!2569881 (=> res!1081196 e!1622031)))

(assert (=> b!2569881 (= res!1081196 e!1622030)))

(declare-fun res!1081192 () Bool)

(assert (=> b!2569881 (=> (not res!1081192) (not e!1622030))))

(assert (=> b!2569881 (= res!1081192 lt!905776)))

(declare-fun d!727118 () Bool)

(declare-fun e!1622033 () Bool)

(assert (=> d!727118 e!1622033))

(declare-fun c!413487 () Bool)

(assert (=> d!727118 (= c!413487 (is-EmptyExpr!7636 EmptyLang!7636))))

(declare-fun e!1622034 () Bool)

(assert (=> d!727118 (= lt!905776 e!1622034)))

(declare-fun c!413485 () Bool)

(assert (=> d!727118 (= c!413485 (isEmpty!17059 tl!4068))))

(assert (=> d!727118 (validRegex!3262 EmptyLang!7636)))

(assert (=> d!727118 (= (matchR!3579 EmptyLang!7636 tl!4068) lt!905776)))

(declare-fun b!2569882 () Bool)

(declare-fun head!5841 (List!29701) C!15430)

(assert (=> b!2569882 (= e!1622032 (not (= (head!5841 tl!4068) (c!413462 EmptyLang!7636))))))

(declare-fun b!2569883 () Bool)

(declare-fun res!1081190 () Bool)

(assert (=> b!2569883 (=> res!1081190 e!1622031)))

(assert (=> b!2569883 (= res!1081190 (not (is-ElementMatch!7636 EmptyLang!7636)))))

(assert (=> b!2569883 (= e!1622029 e!1622031)))

(declare-fun b!2569884 () Bool)

(assert (=> b!2569884 (= e!1622030 (= (head!5841 tl!4068) (c!413462 EmptyLang!7636)))))

(declare-fun b!2569885 () Bool)

(declare-fun res!1081195 () Bool)

(assert (=> b!2569885 (=> res!1081195 e!1622032)))

(assert (=> b!2569885 (= res!1081195 (not (isEmpty!17059 (tail!4116 tl!4068))))))

(declare-fun b!2569886 () Bool)

(assert (=> b!2569886 (= e!1622033 e!1622029)))

(declare-fun c!413486 () Bool)

(assert (=> b!2569886 (= c!413486 (is-EmptyLang!7636 EmptyLang!7636))))

(declare-fun b!2569887 () Bool)

(assert (=> b!2569887 (= e!1622033 (= lt!905776 call!165709))))

(declare-fun b!2569888 () Bool)

(assert (=> b!2569888 (= e!1622034 (nullable!2553 EmptyLang!7636))))

(declare-fun b!2569889 () Bool)

(assert (=> b!2569889 (= e!1622034 (matchR!3579 (derivativeStep!2205 EmptyLang!7636 (head!5841 tl!4068)) (tail!4116 tl!4068)))))

(declare-fun bm!165704 () Bool)

(assert (=> bm!165704 (= call!165709 (isEmpty!17059 tl!4068))))

(declare-fun b!2569890 () Bool)

(declare-fun res!1081193 () Bool)

(assert (=> b!2569890 (=> (not res!1081193) (not e!1622030))))

(assert (=> b!2569890 (= res!1081193 (not call!165709))))

(assert (= (and d!727118 c!413485) b!2569888))

(assert (= (and d!727118 (not c!413485)) b!2569889))

(assert (= (and d!727118 c!413487) b!2569887))

(assert (= (and d!727118 (not c!413487)) b!2569886))

(assert (= (and b!2569886 c!413486) b!2569879))

(assert (= (and b!2569886 (not c!413486)) b!2569883))

(assert (= (and b!2569883 (not res!1081190)) b!2569881))

(assert (= (and b!2569881 res!1081192) b!2569890))

(assert (= (and b!2569890 res!1081193) b!2569878))

(assert (= (and b!2569878 res!1081191) b!2569884))

(assert (= (and b!2569881 (not res!1081196)) b!2569880))

(assert (= (and b!2569880 res!1081194) b!2569877))

(assert (= (and b!2569877 (not res!1081189)) b!2569885))

(assert (= (and b!2569885 (not res!1081195)) b!2569882))

(assert (= (or b!2569887 b!2569877 b!2569890) bm!165704))

(declare-fun m!2906471 () Bool)

(assert (=> b!2569882 m!2906471))

(declare-fun m!2906473 () Bool)

(assert (=> b!2569878 m!2906473))

(assert (=> b!2569878 m!2906473))

(declare-fun m!2906477 () Bool)

(assert (=> b!2569878 m!2906477))

(assert (=> b!2569884 m!2906471))

(assert (=> b!2569889 m!2906471))

(assert (=> b!2569889 m!2906471))

(declare-fun m!2906481 () Bool)

(assert (=> b!2569889 m!2906481))

(assert (=> b!2569889 m!2906473))

(assert (=> b!2569889 m!2906481))

(assert (=> b!2569889 m!2906473))

(declare-fun m!2906487 () Bool)

(assert (=> b!2569889 m!2906487))

(declare-fun m!2906489 () Bool)

(assert (=> b!2569888 m!2906489))

(assert (=> b!2569885 m!2906473))

(assert (=> b!2569885 m!2906473))

(assert (=> b!2569885 m!2906477))

(declare-fun m!2906493 () Bool)

(assert (=> bm!165704 m!2906493))

(assert (=> d!727118 m!2906493))

(declare-fun m!2906495 () Bool)

(assert (=> d!727118 m!2906495))

(assert (=> b!2569728 d!727118))

(declare-fun b!2569891 () Bool)

(declare-fun e!1622035 () Bool)

(declare-fun e!1622039 () Bool)

(assert (=> b!2569891 (= e!1622035 e!1622039)))

(declare-fun res!1081197 () Bool)

(assert (=> b!2569891 (=> res!1081197 e!1622039)))

(declare-fun call!165710 () Bool)

(assert (=> b!2569891 (= res!1081197 call!165710)))

(declare-fun b!2569892 () Bool)

(declare-fun res!1081199 () Bool)

(declare-fun e!1622037 () Bool)

(assert (=> b!2569892 (=> (not res!1081199) (not e!1622037))))

(assert (=> b!2569892 (= res!1081199 (isEmpty!17059 (tail!4116 (_1!17339 lt!905735))))))

(declare-fun b!2569893 () Bool)

(declare-fun e!1622036 () Bool)

(declare-fun lt!905777 () Bool)

(assert (=> b!2569893 (= e!1622036 (not lt!905777))))

(declare-fun b!2569894 () Bool)

(declare-fun e!1622038 () Bool)

(assert (=> b!2569894 (= e!1622038 e!1622035)))

(declare-fun res!1081202 () Bool)

(assert (=> b!2569894 (=> (not res!1081202) (not e!1622035))))

(assert (=> b!2569894 (= res!1081202 (not lt!905777))))

(declare-fun b!2569895 () Bool)

(declare-fun res!1081204 () Bool)

(assert (=> b!2569895 (=> res!1081204 e!1622038)))

(assert (=> b!2569895 (= res!1081204 e!1622037)))

(declare-fun res!1081200 () Bool)

(assert (=> b!2569895 (=> (not res!1081200) (not e!1622037))))

(assert (=> b!2569895 (= res!1081200 lt!905777)))

(declare-fun d!727124 () Bool)

(declare-fun e!1622040 () Bool)

(assert (=> d!727124 e!1622040))

(declare-fun c!413490 () Bool)

(assert (=> d!727124 (= c!413490 (is-EmptyExpr!7636 lt!905730))))

(declare-fun e!1622041 () Bool)

(assert (=> d!727124 (= lt!905777 e!1622041)))

(declare-fun c!413488 () Bool)

(assert (=> d!727124 (= c!413488 (isEmpty!17059 (_1!17339 lt!905735)))))

(assert (=> d!727124 (validRegex!3262 lt!905730)))

(assert (=> d!727124 (= (matchR!3579 lt!905730 (_1!17339 lt!905735)) lt!905777)))

(declare-fun b!2569896 () Bool)

(assert (=> b!2569896 (= e!1622039 (not (= (head!5841 (_1!17339 lt!905735)) (c!413462 lt!905730))))))

(declare-fun b!2569897 () Bool)

(declare-fun res!1081198 () Bool)

(assert (=> b!2569897 (=> res!1081198 e!1622038)))

(assert (=> b!2569897 (= res!1081198 (not (is-ElementMatch!7636 lt!905730)))))

(assert (=> b!2569897 (= e!1622036 e!1622038)))

(declare-fun b!2569898 () Bool)

(assert (=> b!2569898 (= e!1622037 (= (head!5841 (_1!17339 lt!905735)) (c!413462 lt!905730)))))

(declare-fun b!2569899 () Bool)

(declare-fun res!1081203 () Bool)

(assert (=> b!2569899 (=> res!1081203 e!1622039)))

(assert (=> b!2569899 (= res!1081203 (not (isEmpty!17059 (tail!4116 (_1!17339 lt!905735)))))))

(declare-fun b!2569900 () Bool)

(assert (=> b!2569900 (= e!1622040 e!1622036)))

(declare-fun c!413489 () Bool)

(assert (=> b!2569900 (= c!413489 (is-EmptyLang!7636 lt!905730))))

(declare-fun b!2569901 () Bool)

(assert (=> b!2569901 (= e!1622040 (= lt!905777 call!165710))))

(declare-fun b!2569902 () Bool)

(assert (=> b!2569902 (= e!1622041 (nullable!2553 lt!905730))))

(declare-fun b!2569903 () Bool)

(assert (=> b!2569903 (= e!1622041 (matchR!3579 (derivativeStep!2205 lt!905730 (head!5841 (_1!17339 lt!905735))) (tail!4116 (_1!17339 lt!905735))))))

(declare-fun bm!165705 () Bool)

(assert (=> bm!165705 (= call!165710 (isEmpty!17059 (_1!17339 lt!905735)))))

(declare-fun b!2569904 () Bool)

(declare-fun res!1081201 () Bool)

(assert (=> b!2569904 (=> (not res!1081201) (not e!1622037))))

(assert (=> b!2569904 (= res!1081201 (not call!165710))))

(assert (= (and d!727124 c!413488) b!2569902))

(assert (= (and d!727124 (not c!413488)) b!2569903))

(assert (= (and d!727124 c!413490) b!2569901))

(assert (= (and d!727124 (not c!413490)) b!2569900))

(assert (= (and b!2569900 c!413489) b!2569893))

(assert (= (and b!2569900 (not c!413489)) b!2569897))

(assert (= (and b!2569897 (not res!1081198)) b!2569895))

(assert (= (and b!2569895 res!1081200) b!2569904))

(assert (= (and b!2569904 res!1081201) b!2569892))

(assert (= (and b!2569892 res!1081199) b!2569898))

(assert (= (and b!2569895 (not res!1081204)) b!2569894))

(assert (= (and b!2569894 res!1081202) b!2569891))

(assert (= (and b!2569891 (not res!1081197)) b!2569899))

(assert (= (and b!2569899 (not res!1081203)) b!2569896))

(assert (= (or b!2569901 b!2569891 b!2569904) bm!165705))

(declare-fun m!2906501 () Bool)

(assert (=> b!2569896 m!2906501))

(declare-fun m!2906503 () Bool)

(assert (=> b!2569892 m!2906503))

(assert (=> b!2569892 m!2906503))

(declare-fun m!2906505 () Bool)

(assert (=> b!2569892 m!2906505))

(assert (=> b!2569898 m!2906501))

(assert (=> b!2569903 m!2906501))

(assert (=> b!2569903 m!2906501))

(declare-fun m!2906507 () Bool)

(assert (=> b!2569903 m!2906507))

(assert (=> b!2569903 m!2906503))

(assert (=> b!2569903 m!2906507))

(assert (=> b!2569903 m!2906503))

(declare-fun m!2906509 () Bool)

(assert (=> b!2569903 m!2906509))

(declare-fun m!2906511 () Bool)

(assert (=> b!2569902 m!2906511))

(assert (=> b!2569899 m!2906503))

(assert (=> b!2569899 m!2906503))

(assert (=> b!2569899 m!2906505))

(declare-fun m!2906513 () Bool)

(assert (=> bm!165705 m!2906513))

(assert (=> d!727124 m!2906513))

(declare-fun m!2906515 () Bool)

(assert (=> d!727124 m!2906515))

(assert (=> b!2569722 d!727124))

(declare-fun d!727128 () Bool)

(assert (=> d!727128 (isDefined!4739 (findConcatSeparation!939 lt!905730 (regTwo!15784 r!27340) Nil!29601 tl!4068 tl!4068))))

(declare-fun lt!905780 () Unit!43453)

(declare-fun choose!15152 (Regex!7636 Regex!7636 List!29701) Unit!43453)

(assert (=> d!727128 (= lt!905780 (choose!15152 lt!905730 (regTwo!15784 r!27340) tl!4068))))

(assert (=> d!727128 (validRegex!3262 lt!905730)))

(assert (=> d!727128 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!221 lt!905730 (regTwo!15784 r!27340) tl!4068) lt!905780)))

(declare-fun bs!470002 () Bool)

(assert (= bs!470002 d!727128))

(assert (=> bs!470002 m!2906373))

(assert (=> bs!470002 m!2906373))

(declare-fun m!2906517 () Bool)

(assert (=> bs!470002 m!2906517))

(declare-fun m!2906519 () Bool)

(assert (=> bs!470002 m!2906519))

(assert (=> bs!470002 m!2906515))

(assert (=> b!2569724 d!727128))

(declare-fun d!727130 () Bool)

(declare-fun isEmpty!17060 (Option!5917) Bool)

(assert (=> d!727130 (= (isDefined!4739 lt!905728) (not (isEmpty!17060 lt!905728)))))

(declare-fun bs!470003 () Bool)

(assert (= bs!470003 d!727130))

(declare-fun m!2906521 () Bool)

(assert (=> bs!470003 m!2906521))

(assert (=> b!2569724 d!727130))

(declare-fun b!2569956 () Bool)

(declare-fun res!1081232 () Bool)

(declare-fun e!1622075 () Bool)

(assert (=> b!2569956 (=> (not res!1081232) (not e!1622075))))

(declare-fun lt!905784 () List!29701)

(declare-fun size!22961 (List!29701) Int)

(assert (=> b!2569956 (= res!1081232 (= (size!22961 lt!905784) (+ (size!22961 (_1!17339 lt!905735)) (size!22961 (_2!17339 lt!905735)))))))

(declare-fun b!2569955 () Bool)

(declare-fun e!1622074 () List!29701)

(assert (=> b!2569955 (= e!1622074 (Cons!29601 (h!35021 (_1!17339 lt!905735)) (++!7275 (t!211400 (_1!17339 lt!905735)) (_2!17339 lt!905735))))))

(declare-fun b!2569957 () Bool)

(assert (=> b!2569957 (= e!1622075 (or (not (= (_2!17339 lt!905735) Nil!29601)) (= lt!905784 (_1!17339 lt!905735))))))

(declare-fun b!2569954 () Bool)

(assert (=> b!2569954 (= e!1622074 (_2!17339 lt!905735))))

(declare-fun d!727132 () Bool)

(assert (=> d!727132 e!1622075))

(declare-fun res!1081233 () Bool)

(assert (=> d!727132 (=> (not res!1081233) (not e!1622075))))

(declare-fun content!4081 (List!29701) (Set C!15430))

(assert (=> d!727132 (= res!1081233 (= (content!4081 lt!905784) (set.union (content!4081 (_1!17339 lt!905735)) (content!4081 (_2!17339 lt!905735)))))))

(assert (=> d!727132 (= lt!905784 e!1622074)))

(declare-fun c!413502 () Bool)

(assert (=> d!727132 (= c!413502 (is-Nil!29601 (_1!17339 lt!905735)))))

(assert (=> d!727132 (= (++!7275 (_1!17339 lt!905735) (_2!17339 lt!905735)) lt!905784)))

(assert (= (and d!727132 c!413502) b!2569954))

(assert (= (and d!727132 (not c!413502)) b!2569955))

(assert (= (and d!727132 res!1081233) b!2569956))

(assert (= (and b!2569956 res!1081232) b!2569957))

(declare-fun m!2906529 () Bool)

(assert (=> b!2569956 m!2906529))

(declare-fun m!2906531 () Bool)

(assert (=> b!2569956 m!2906531))

(declare-fun m!2906533 () Bool)

(assert (=> b!2569956 m!2906533))

(declare-fun m!2906537 () Bool)

(assert (=> b!2569955 m!2906537))

(declare-fun m!2906539 () Bool)

(assert (=> d!727132 m!2906539))

(declare-fun m!2906541 () Bool)

(assert (=> d!727132 m!2906541))

(declare-fun m!2906545 () Bool)

(assert (=> d!727132 m!2906545))

(assert (=> b!2569724 d!727132))

(declare-fun d!727136 () Bool)

(assert (=> d!727136 (= (get!9314 lt!905728) (v!31861 lt!905728))))

(assert (=> b!2569724 d!727136))

(declare-fun b!2569982 () Bool)

(declare-fun e!1622089 () Bool)

(declare-fun lt!905797 () Option!5917)

(assert (=> b!2569982 (= e!1622089 (not (isDefined!4739 lt!905797)))))

(declare-fun b!2569983 () Bool)

(declare-fun lt!905798 () Unit!43453)

(declare-fun lt!905799 () Unit!43453)

(assert (=> b!2569983 (= lt!905798 lt!905799)))

(assert (=> b!2569983 (= (++!7275 (++!7275 Nil!29601 (Cons!29601 (h!35021 tl!4068) Nil!29601)) (t!211400 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!806 (List!29701 C!15430 List!29701 List!29701) Unit!43453)

(assert (=> b!2569983 (= lt!905799 (lemmaMoveElementToOtherListKeepsConcatEq!806 Nil!29601 (h!35021 tl!4068) (t!211400 tl!4068) tl!4068))))

(declare-fun e!1622090 () Option!5917)

(assert (=> b!2569983 (= e!1622090 (findConcatSeparation!939 lt!905730 (regTwo!15784 r!27340) (++!7275 Nil!29601 (Cons!29601 (h!35021 tl!4068) Nil!29601)) (t!211400 tl!4068) tl!4068))))

(declare-fun b!2569984 () Bool)

(declare-fun e!1622093 () Bool)

(assert (=> b!2569984 (= e!1622093 (matchR!3579 (regTwo!15784 r!27340) tl!4068))))

(declare-fun b!2569985 () Bool)

(declare-fun e!1622091 () Option!5917)

(assert (=> b!2569985 (= e!1622091 (Some!5916 (tuple2!29595 Nil!29601 tl!4068)))))

(declare-fun b!2569986 () Bool)

(assert (=> b!2569986 (= e!1622091 e!1622090)))

(declare-fun c!413510 () Bool)

(assert (=> b!2569986 (= c!413510 (is-Nil!29601 tl!4068))))

(declare-fun b!2569987 () Bool)

(assert (=> b!2569987 (= e!1622090 None!5916)))

(declare-fun d!727140 () Bool)

(assert (=> d!727140 e!1622089))

(declare-fun res!1081246 () Bool)

(assert (=> d!727140 (=> res!1081246 e!1622089)))

(declare-fun e!1622092 () Bool)

(assert (=> d!727140 (= res!1081246 e!1622092)))

(declare-fun res!1081247 () Bool)

(assert (=> d!727140 (=> (not res!1081247) (not e!1622092))))

(assert (=> d!727140 (= res!1081247 (isDefined!4739 lt!905797))))

(assert (=> d!727140 (= lt!905797 e!1622091)))

(declare-fun c!413511 () Bool)

(assert (=> d!727140 (= c!413511 e!1622093)))

(declare-fun res!1081245 () Bool)

(assert (=> d!727140 (=> (not res!1081245) (not e!1622093))))

(assert (=> d!727140 (= res!1081245 (matchR!3579 lt!905730 Nil!29601))))

(assert (=> d!727140 (validRegex!3262 lt!905730)))

(assert (=> d!727140 (= (findConcatSeparation!939 lt!905730 (regTwo!15784 r!27340) Nil!29601 tl!4068 tl!4068) lt!905797)))

(declare-fun b!2569988 () Bool)

(declare-fun res!1081244 () Bool)

(assert (=> b!2569988 (=> (not res!1081244) (not e!1622092))))

(assert (=> b!2569988 (= res!1081244 (matchR!3579 lt!905730 (_1!17339 (get!9314 lt!905797))))))

(declare-fun b!2569989 () Bool)

(declare-fun res!1081248 () Bool)

(assert (=> b!2569989 (=> (not res!1081248) (not e!1622092))))

(assert (=> b!2569989 (= res!1081248 (matchR!3579 (regTwo!15784 r!27340) (_2!17339 (get!9314 lt!905797))))))

(declare-fun b!2569990 () Bool)

(assert (=> b!2569990 (= e!1622092 (= (++!7275 (_1!17339 (get!9314 lt!905797)) (_2!17339 (get!9314 lt!905797))) tl!4068))))

(assert (= (and d!727140 res!1081245) b!2569984))

(assert (= (and d!727140 c!413511) b!2569985))

(assert (= (and d!727140 (not c!413511)) b!2569986))

(assert (= (and b!2569986 c!413510) b!2569987))

(assert (= (and b!2569986 (not c!413510)) b!2569983))

(assert (= (and d!727140 res!1081247) b!2569988))

(assert (= (and b!2569988 res!1081244) b!2569989))

(assert (= (and b!2569989 res!1081248) b!2569990))

(assert (= (and d!727140 (not res!1081246)) b!2569982))

(declare-fun m!2906569 () Bool)

(assert (=> b!2569982 m!2906569))

(assert (=> d!727140 m!2906569))

(declare-fun m!2906571 () Bool)

(assert (=> d!727140 m!2906571))

(assert (=> d!727140 m!2906515))

(declare-fun m!2906573 () Bool)

(assert (=> b!2569984 m!2906573))

(declare-fun m!2906575 () Bool)

(assert (=> b!2569989 m!2906575))

(declare-fun m!2906577 () Bool)

(assert (=> b!2569989 m!2906577))

(assert (=> b!2569988 m!2906575))

(declare-fun m!2906579 () Bool)

(assert (=> b!2569988 m!2906579))

(declare-fun m!2906581 () Bool)

(assert (=> b!2569983 m!2906581))

(assert (=> b!2569983 m!2906581))

(declare-fun m!2906583 () Bool)

(assert (=> b!2569983 m!2906583))

(declare-fun m!2906585 () Bool)

(assert (=> b!2569983 m!2906585))

(assert (=> b!2569983 m!2906581))

(declare-fun m!2906589 () Bool)

(assert (=> b!2569983 m!2906589))

(assert (=> b!2569990 m!2906575))

(declare-fun m!2906593 () Bool)

(assert (=> b!2569990 m!2906593))

(assert (=> b!2569724 d!727140))

(declare-fun b!2570017 () Bool)

(declare-fun res!1081267 () Bool)

(declare-fun e!1622114 () Bool)

(assert (=> b!2570017 (=> (not res!1081267) (not e!1622114))))

(declare-fun call!165727 () Bool)

(assert (=> b!2570017 (= res!1081267 call!165727)))

(declare-fun e!1622115 () Bool)

(assert (=> b!2570017 (= e!1622115 e!1622114)))

(declare-fun b!2570018 () Bool)

(declare-fun e!1622117 () Bool)

(assert (=> b!2570018 (= e!1622117 call!165727)))

(declare-fun d!727150 () Bool)

(declare-fun res!1081263 () Bool)

(declare-fun e!1622113 () Bool)

(assert (=> d!727150 (=> res!1081263 e!1622113)))

(assert (=> d!727150 (= res!1081263 (is-ElementMatch!7636 (regOne!15784 r!27340)))))

(assert (=> d!727150 (= (validRegex!3262 (regOne!15784 r!27340)) e!1622113)))

(declare-fun b!2570019 () Bool)

(declare-fun e!1622112 () Bool)

(declare-fun call!165729 () Bool)

(assert (=> b!2570019 (= e!1622112 call!165729)))

(declare-fun b!2570020 () Bool)

(declare-fun res!1081266 () Bool)

(declare-fun e!1622116 () Bool)

(assert (=> b!2570020 (=> res!1081266 e!1622116)))

(assert (=> b!2570020 (= res!1081266 (not (is-Concat!12332 (regOne!15784 r!27340))))))

(assert (=> b!2570020 (= e!1622115 e!1622116)))

(declare-fun b!2570021 () Bool)

(declare-fun e!1622118 () Bool)

(assert (=> b!2570021 (= e!1622118 e!1622112)))

(declare-fun res!1081265 () Bool)

(assert (=> b!2570021 (= res!1081265 (not (nullable!2553 (reg!7965 (regOne!15784 r!27340)))))))

(assert (=> b!2570021 (=> (not res!1081265) (not e!1622112))))

(declare-fun b!2570022 () Bool)

(assert (=> b!2570022 (= e!1622113 e!1622118)))

(declare-fun c!413519 () Bool)

(assert (=> b!2570022 (= c!413519 (is-Star!7636 (regOne!15784 r!27340)))))

(declare-fun c!413518 () Bool)

(declare-fun bm!165722 () Bool)

(assert (=> bm!165722 (= call!165729 (validRegex!3262 (ite c!413519 (reg!7965 (regOne!15784 r!27340)) (ite c!413518 (regOne!15785 (regOne!15784 r!27340)) (regTwo!15784 (regOne!15784 r!27340))))))))

(declare-fun b!2570023 () Bool)

(assert (=> b!2570023 (= e!1622118 e!1622115)))

(assert (=> b!2570023 (= c!413518 (is-Union!7636 (regOne!15784 r!27340)))))

(declare-fun bm!165723 () Bool)

(assert (=> bm!165723 (= call!165727 call!165729)))

(declare-fun bm!165724 () Bool)

(declare-fun call!165728 () Bool)

(assert (=> bm!165724 (= call!165728 (validRegex!3262 (ite c!413518 (regTwo!15785 (regOne!15784 r!27340)) (regOne!15784 (regOne!15784 r!27340)))))))

(declare-fun b!2570024 () Bool)

(assert (=> b!2570024 (= e!1622114 call!165728)))

(declare-fun b!2570025 () Bool)

(assert (=> b!2570025 (= e!1622116 e!1622117)))

(declare-fun res!1081264 () Bool)

(assert (=> b!2570025 (=> (not res!1081264) (not e!1622117))))

(assert (=> b!2570025 (= res!1081264 call!165728)))

(assert (= (and d!727150 (not res!1081263)) b!2570022))

(assert (= (and b!2570022 c!413519) b!2570021))

(assert (= (and b!2570022 (not c!413519)) b!2570023))

(assert (= (and b!2570021 res!1081265) b!2570019))

(assert (= (and b!2570023 c!413518) b!2570017))

(assert (= (and b!2570023 (not c!413518)) b!2570020))

(assert (= (and b!2570017 res!1081267) b!2570024))

(assert (= (and b!2570020 (not res!1081266)) b!2570025))

(assert (= (and b!2570025 res!1081264) b!2570018))

(assert (= (or b!2570017 b!2570018) bm!165723))

(assert (= (or b!2570024 b!2570025) bm!165724))

(assert (= (or b!2570019 bm!165723) bm!165722))

(declare-fun m!2906597 () Bool)

(assert (=> b!2570021 m!2906597))

(declare-fun m!2906599 () Bool)

(assert (=> bm!165722 m!2906599))

(declare-fun m!2906601 () Bool)

(assert (=> bm!165724 m!2906601))

(assert (=> b!2569729 d!727150))

(declare-fun b!2570026 () Bool)

(declare-fun e!1622119 () Bool)

(declare-fun e!1622123 () Bool)

(assert (=> b!2570026 (= e!1622119 e!1622123)))

(declare-fun res!1081268 () Bool)

(assert (=> b!2570026 (=> res!1081268 e!1622123)))

(declare-fun call!165730 () Bool)

(assert (=> b!2570026 (= res!1081268 call!165730)))

(declare-fun b!2570027 () Bool)

(declare-fun res!1081270 () Bool)

(declare-fun e!1622121 () Bool)

(assert (=> b!2570027 (=> (not res!1081270) (not e!1622121))))

(assert (=> b!2570027 (= res!1081270 (isEmpty!17059 (tail!4116 Nil!29601)))))

(declare-fun b!2570028 () Bool)

(declare-fun e!1622120 () Bool)

(declare-fun lt!905805 () Bool)

(assert (=> b!2570028 (= e!1622120 (not lt!905805))))

(declare-fun b!2570029 () Bool)

(declare-fun e!1622122 () Bool)

(assert (=> b!2570029 (= e!1622122 e!1622119)))

(declare-fun res!1081273 () Bool)

(assert (=> b!2570029 (=> (not res!1081273) (not e!1622119))))

(assert (=> b!2570029 (= res!1081273 (not lt!905805))))

(declare-fun b!2570030 () Bool)

(declare-fun res!1081275 () Bool)

(assert (=> b!2570030 (=> res!1081275 e!1622122)))

(assert (=> b!2570030 (= res!1081275 e!1622121)))

(declare-fun res!1081271 () Bool)

(assert (=> b!2570030 (=> (not res!1081271) (not e!1622121))))

(assert (=> b!2570030 (= res!1081271 lt!905805)))

(declare-fun d!727154 () Bool)

(declare-fun e!1622124 () Bool)

(assert (=> d!727154 e!1622124))

(declare-fun c!413522 () Bool)

(assert (=> d!727154 (= c!413522 (is-EmptyExpr!7636 (derivative!331 lt!905730 (_1!17339 lt!905735))))))

(declare-fun e!1622125 () Bool)

(assert (=> d!727154 (= lt!905805 e!1622125)))

(declare-fun c!413520 () Bool)

(assert (=> d!727154 (= c!413520 (isEmpty!17059 Nil!29601))))

(assert (=> d!727154 (validRegex!3262 (derivative!331 lt!905730 (_1!17339 lt!905735)))))

(assert (=> d!727154 (= (matchR!3579 (derivative!331 lt!905730 (_1!17339 lt!905735)) Nil!29601) lt!905805)))

(declare-fun b!2570031 () Bool)

(assert (=> b!2570031 (= e!1622123 (not (= (head!5841 Nil!29601) (c!413462 (derivative!331 lt!905730 (_1!17339 lt!905735))))))))

(declare-fun b!2570032 () Bool)

(declare-fun res!1081269 () Bool)

(assert (=> b!2570032 (=> res!1081269 e!1622122)))

(assert (=> b!2570032 (= res!1081269 (not (is-ElementMatch!7636 (derivative!331 lt!905730 (_1!17339 lt!905735)))))))

(assert (=> b!2570032 (= e!1622120 e!1622122)))

(declare-fun b!2570034 () Bool)

(assert (=> b!2570034 (= e!1622121 (= (head!5841 Nil!29601) (c!413462 (derivative!331 lt!905730 (_1!17339 lt!905735)))))))

(declare-fun b!2570036 () Bool)

(declare-fun res!1081274 () Bool)

(assert (=> b!2570036 (=> res!1081274 e!1622123)))

(assert (=> b!2570036 (= res!1081274 (not (isEmpty!17059 (tail!4116 Nil!29601))))))

(declare-fun b!2570038 () Bool)

(assert (=> b!2570038 (= e!1622124 e!1622120)))

(declare-fun c!413521 () Bool)

(assert (=> b!2570038 (= c!413521 (is-EmptyLang!7636 (derivative!331 lt!905730 (_1!17339 lt!905735))))))

(declare-fun b!2570040 () Bool)

(assert (=> b!2570040 (= e!1622124 (= lt!905805 call!165730))))

(declare-fun b!2570041 () Bool)

(assert (=> b!2570041 (= e!1622125 (nullable!2553 (derivative!331 lt!905730 (_1!17339 lt!905735))))))

(declare-fun b!2570042 () Bool)

(assert (=> b!2570042 (= e!1622125 (matchR!3579 (derivativeStep!2205 (derivative!331 lt!905730 (_1!17339 lt!905735)) (head!5841 Nil!29601)) (tail!4116 Nil!29601)))))

(declare-fun bm!165725 () Bool)

(assert (=> bm!165725 (= call!165730 (isEmpty!17059 Nil!29601))))

(declare-fun b!2570043 () Bool)

(declare-fun res!1081272 () Bool)

(assert (=> b!2570043 (=> (not res!1081272) (not e!1622121))))

(assert (=> b!2570043 (= res!1081272 (not call!165730))))

(assert (= (and d!727154 c!413520) b!2570041))

(assert (= (and d!727154 (not c!413520)) b!2570042))

(assert (= (and d!727154 c!413522) b!2570040))

(assert (= (and d!727154 (not c!413522)) b!2570038))

(assert (= (and b!2570038 c!413521) b!2570028))

(assert (= (and b!2570038 (not c!413521)) b!2570032))

(assert (= (and b!2570032 (not res!1081269)) b!2570030))

(assert (= (and b!2570030 res!1081271) b!2570043))

(assert (= (and b!2570043 res!1081272) b!2570027))

(assert (= (and b!2570027 res!1081270) b!2570034))

(assert (= (and b!2570030 (not res!1081275)) b!2570029))

(assert (= (and b!2570029 res!1081273) b!2570026))

(assert (= (and b!2570026 (not res!1081268)) b!2570036))

(assert (= (and b!2570036 (not res!1081274)) b!2570031))

(assert (= (or b!2570040 b!2570026 b!2570043) bm!165725))

(declare-fun m!2906617 () Bool)

(assert (=> b!2570031 m!2906617))

(declare-fun m!2906619 () Bool)

(assert (=> b!2570027 m!2906619))

(assert (=> b!2570027 m!2906619))

(declare-fun m!2906621 () Bool)

(assert (=> b!2570027 m!2906621))

(assert (=> b!2570034 m!2906617))

(assert (=> b!2570042 m!2906617))

(assert (=> b!2570042 m!2906379))

(assert (=> b!2570042 m!2906617))

(declare-fun m!2906623 () Bool)

(assert (=> b!2570042 m!2906623))

(assert (=> b!2570042 m!2906619))

(assert (=> b!2570042 m!2906623))

(assert (=> b!2570042 m!2906619))

(declare-fun m!2906625 () Bool)

(assert (=> b!2570042 m!2906625))

(assert (=> b!2570041 m!2906379))

(declare-fun m!2906627 () Bool)

(assert (=> b!2570041 m!2906627))

(assert (=> b!2570036 m!2906619))

(assert (=> b!2570036 m!2906619))

(assert (=> b!2570036 m!2906621))

(declare-fun m!2906629 () Bool)

(assert (=> bm!165725 m!2906629))

(assert (=> d!727154 m!2906629))

(assert (=> d!727154 m!2906379))

(declare-fun m!2906631 () Bool)

(assert (=> d!727154 m!2906631))

(assert (=> b!2569729 d!727154))

(declare-fun d!727158 () Bool)

(declare-fun lt!905809 () Regex!7636)

(assert (=> d!727158 (validRegex!3262 lt!905809)))

(declare-fun e!1622130 () Regex!7636)

(assert (=> d!727158 (= lt!905809 e!1622130)))

(declare-fun c!413526 () Bool)

(assert (=> d!727158 (= c!413526 (is-Cons!29601 (_1!17339 lt!905735)))))

(assert (=> d!727158 (validRegex!3262 lt!905730)))

(assert (=> d!727158 (= (derivative!331 lt!905730 (_1!17339 lt!905735)) lt!905809)))

(declare-fun b!2570048 () Bool)

(assert (=> b!2570048 (= e!1622130 (derivative!331 (derivativeStep!2205 lt!905730 (h!35021 (_1!17339 lt!905735))) (t!211400 (_1!17339 lt!905735))))))

(declare-fun b!2570049 () Bool)

(assert (=> b!2570049 (= e!1622130 lt!905730)))

(assert (= (and d!727158 c!413526) b!2570048))

(assert (= (and d!727158 (not c!413526)) b!2570049))

(declare-fun m!2906633 () Bool)

(assert (=> d!727158 m!2906633))

(assert (=> d!727158 m!2906515))

(declare-fun m!2906635 () Bool)

(assert (=> b!2570048 m!2906635))

(assert (=> b!2570048 m!2906635))

(declare-fun m!2906637 () Bool)

(assert (=> b!2570048 m!2906637))

(assert (=> b!2569729 d!727158))

(declare-fun d!727162 () Bool)

(assert (=> d!727162 (= (matchR!3579 lt!905730 (_1!17339 lt!905735)) (matchR!3579 (derivative!331 lt!905730 (_1!17339 lt!905735)) Nil!29601))))

(declare-fun lt!905812 () Unit!43453)

(declare-fun choose!15153 (Regex!7636 List!29701) Unit!43453)

(assert (=> d!727162 (= lt!905812 (choose!15153 lt!905730 (_1!17339 lt!905735)))))

(assert (=> d!727162 (validRegex!3262 lt!905730)))

(assert (=> d!727162 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!225 lt!905730 (_1!17339 lt!905735)) lt!905812)))

(declare-fun bs!470008 () Bool)

(assert (= bs!470008 d!727162))

(assert (=> bs!470008 m!2906379))

(assert (=> bs!470008 m!2906359))

(declare-fun m!2906639 () Bool)

(assert (=> bs!470008 m!2906639))

(assert (=> bs!470008 m!2906379))

(assert (=> bs!470008 m!2906381))

(assert (=> bs!470008 m!2906515))

(assert (=> b!2569729 d!727162))

(declare-fun b!2570050 () Bool)

(declare-fun e!1622131 () Bool)

(declare-fun e!1622135 () Bool)

(assert (=> b!2570050 (= e!1622131 e!1622135)))

(declare-fun res!1081278 () Bool)

(assert (=> b!2570050 (=> res!1081278 e!1622135)))

(declare-fun call!165731 () Bool)

(assert (=> b!2570050 (= res!1081278 call!165731)))

(declare-fun b!2570051 () Bool)

(declare-fun res!1081280 () Bool)

(declare-fun e!1622133 () Bool)

(assert (=> b!2570051 (=> (not res!1081280) (not e!1622133))))

(assert (=> b!2570051 (= res!1081280 (isEmpty!17059 (tail!4116 (_2!17339 lt!905735))))))

(declare-fun b!2570052 () Bool)

(declare-fun e!1622132 () Bool)

(declare-fun lt!905813 () Bool)

(assert (=> b!2570052 (= e!1622132 (not lt!905813))))

(declare-fun b!2570053 () Bool)

(declare-fun e!1622134 () Bool)

(assert (=> b!2570053 (= e!1622134 e!1622131)))

(declare-fun res!1081283 () Bool)

(assert (=> b!2570053 (=> (not res!1081283) (not e!1622131))))

(assert (=> b!2570053 (= res!1081283 (not lt!905813))))

(declare-fun b!2570054 () Bool)

(declare-fun res!1081285 () Bool)

(assert (=> b!2570054 (=> res!1081285 e!1622134)))

(assert (=> b!2570054 (= res!1081285 e!1622133)))

(declare-fun res!1081281 () Bool)

(assert (=> b!2570054 (=> (not res!1081281) (not e!1622133))))

(assert (=> b!2570054 (= res!1081281 lt!905813)))

(declare-fun d!727164 () Bool)

(declare-fun e!1622136 () Bool)

(assert (=> d!727164 e!1622136))

(declare-fun c!413529 () Bool)

(assert (=> d!727164 (= c!413529 (is-EmptyExpr!7636 (regTwo!15784 r!27340)))))

(declare-fun e!1622137 () Bool)

(assert (=> d!727164 (= lt!905813 e!1622137)))

(declare-fun c!413527 () Bool)

(assert (=> d!727164 (= c!413527 (isEmpty!17059 (_2!17339 lt!905735)))))

(assert (=> d!727164 (validRegex!3262 (regTwo!15784 r!27340))))

(assert (=> d!727164 (= (matchR!3579 (regTwo!15784 r!27340) (_2!17339 lt!905735)) lt!905813)))

(declare-fun b!2570055 () Bool)

(assert (=> b!2570055 (= e!1622135 (not (= (head!5841 (_2!17339 lt!905735)) (c!413462 (regTwo!15784 r!27340)))))))

(declare-fun b!2570056 () Bool)

(declare-fun res!1081279 () Bool)

(assert (=> b!2570056 (=> res!1081279 e!1622134)))

(assert (=> b!2570056 (= res!1081279 (not (is-ElementMatch!7636 (regTwo!15784 r!27340))))))

(assert (=> b!2570056 (= e!1622132 e!1622134)))

(declare-fun b!2570057 () Bool)

(assert (=> b!2570057 (= e!1622133 (= (head!5841 (_2!17339 lt!905735)) (c!413462 (regTwo!15784 r!27340))))))

(declare-fun b!2570058 () Bool)

(declare-fun res!1081284 () Bool)

(assert (=> b!2570058 (=> res!1081284 e!1622135)))

(assert (=> b!2570058 (= res!1081284 (not (isEmpty!17059 (tail!4116 (_2!17339 lt!905735)))))))

(declare-fun b!2570059 () Bool)

(assert (=> b!2570059 (= e!1622136 e!1622132)))

(declare-fun c!413528 () Bool)

(assert (=> b!2570059 (= c!413528 (is-EmptyLang!7636 (regTwo!15784 r!27340)))))

(declare-fun b!2570060 () Bool)

(assert (=> b!2570060 (= e!1622136 (= lt!905813 call!165731))))

(declare-fun b!2570061 () Bool)

(assert (=> b!2570061 (= e!1622137 (nullable!2553 (regTwo!15784 r!27340)))))

(declare-fun b!2570062 () Bool)

(assert (=> b!2570062 (= e!1622137 (matchR!3579 (derivativeStep!2205 (regTwo!15784 r!27340) (head!5841 (_2!17339 lt!905735))) (tail!4116 (_2!17339 lt!905735))))))

(declare-fun bm!165726 () Bool)

(assert (=> bm!165726 (= call!165731 (isEmpty!17059 (_2!17339 lt!905735)))))

(declare-fun b!2570063 () Bool)

(declare-fun res!1081282 () Bool)

(assert (=> b!2570063 (=> (not res!1081282) (not e!1622133))))

(assert (=> b!2570063 (= res!1081282 (not call!165731))))

(assert (= (and d!727164 c!413527) b!2570061))

(assert (= (and d!727164 (not c!413527)) b!2570062))

(assert (= (and d!727164 c!413529) b!2570060))

(assert (= (and d!727164 (not c!413529)) b!2570059))

(assert (= (and b!2570059 c!413528) b!2570052))

(assert (= (and b!2570059 (not c!413528)) b!2570056))

(assert (= (and b!2570056 (not res!1081279)) b!2570054))

(assert (= (and b!2570054 res!1081281) b!2570063))

(assert (= (and b!2570063 res!1081282) b!2570051))

(assert (= (and b!2570051 res!1081280) b!2570057))

(assert (= (and b!2570054 (not res!1081285)) b!2570053))

(assert (= (and b!2570053 res!1081283) b!2570050))

(assert (= (and b!2570050 (not res!1081278)) b!2570058))

(assert (= (and b!2570058 (not res!1081284)) b!2570055))

(assert (= (or b!2570060 b!2570050 b!2570063) bm!165726))

(declare-fun m!2906641 () Bool)

(assert (=> b!2570055 m!2906641))

(declare-fun m!2906643 () Bool)

(assert (=> b!2570051 m!2906643))

(assert (=> b!2570051 m!2906643))

(declare-fun m!2906645 () Bool)

(assert (=> b!2570051 m!2906645))

(assert (=> b!2570057 m!2906641))

(assert (=> b!2570062 m!2906641))

(assert (=> b!2570062 m!2906641))

(declare-fun m!2906647 () Bool)

(assert (=> b!2570062 m!2906647))

(assert (=> b!2570062 m!2906643))

(assert (=> b!2570062 m!2906647))

(assert (=> b!2570062 m!2906643))

(declare-fun m!2906649 () Bool)

(assert (=> b!2570062 m!2906649))

(declare-fun m!2906651 () Bool)

(assert (=> b!2570061 m!2906651))

(assert (=> b!2570058 m!2906643))

(assert (=> b!2570058 m!2906643))

(assert (=> b!2570058 m!2906645))

(declare-fun m!2906653 () Bool)

(assert (=> bm!165726 m!2906653))

(assert (=> d!727164 m!2906653))

(declare-fun m!2906655 () Bool)

(assert (=> d!727164 m!2906655))

(assert (=> b!2569723 d!727164))

(declare-fun d!727166 () Bool)

(declare-fun nullableFct!778 (Regex!7636) Bool)

(assert (=> d!727166 (= (nullable!2553 (derivative!331 (derivativeStep!2205 r!27340 c!14016) tl!4068)) (nullableFct!778 (derivative!331 (derivativeStep!2205 r!27340 c!14016) tl!4068)))))

(declare-fun bs!470009 () Bool)

(assert (= bs!470009 d!727166))

(assert (=> bs!470009 m!2906355))

(declare-fun m!2906657 () Bool)

(assert (=> bs!470009 m!2906657))

(assert (=> b!2569720 d!727166))

(declare-fun d!727168 () Bool)

(declare-fun lt!905814 () Regex!7636)

(assert (=> d!727168 (validRegex!3262 lt!905814)))

(declare-fun e!1622138 () Regex!7636)

(assert (=> d!727168 (= lt!905814 e!1622138)))

(declare-fun c!413530 () Bool)

(assert (=> d!727168 (= c!413530 (is-Cons!29601 tl!4068))))

(assert (=> d!727168 (validRegex!3262 (derivativeStep!2205 r!27340 c!14016))))

(assert (=> d!727168 (= (derivative!331 (derivativeStep!2205 r!27340 c!14016) tl!4068) lt!905814)))

(declare-fun b!2570064 () Bool)

(assert (=> b!2570064 (= e!1622138 (derivative!331 (derivativeStep!2205 (derivativeStep!2205 r!27340 c!14016) (h!35021 tl!4068)) (t!211400 tl!4068)))))

(declare-fun b!2570065 () Bool)

(assert (=> b!2570065 (= e!1622138 (derivativeStep!2205 r!27340 c!14016))))

(assert (= (and d!727168 c!413530) b!2570064))

(assert (= (and d!727168 (not c!413530)) b!2570065))

(declare-fun m!2906659 () Bool)

(assert (=> d!727168 m!2906659))

(assert (=> d!727168 m!2906353))

(declare-fun m!2906661 () Bool)

(assert (=> d!727168 m!2906661))

(assert (=> b!2570064 m!2906353))

(declare-fun m!2906663 () Bool)

(assert (=> b!2570064 m!2906663))

(assert (=> b!2570064 m!2906663))

(declare-fun m!2906665 () Bool)

(assert (=> b!2570064 m!2906665))

(assert (=> b!2569720 d!727168))

(declare-fun b!2570086 () Bool)

(declare-fun e!1622152 () Regex!7636)

(assert (=> b!2570086 (= e!1622152 (ite (= c!14016 (c!413462 r!27340)) EmptyExpr!7636 EmptyLang!7636))))

(declare-fun bm!165735 () Bool)

(declare-fun call!165741 () Regex!7636)

(declare-fun call!165743 () Regex!7636)

(assert (=> bm!165735 (= call!165741 call!165743)))

(declare-fun b!2570087 () Bool)

(declare-fun e!1622149 () Regex!7636)

(declare-fun e!1622153 () Regex!7636)

(assert (=> b!2570087 (= e!1622149 e!1622153)))

(declare-fun c!413543 () Bool)

(assert (=> b!2570087 (= c!413543 (is-Star!7636 r!27340))))

(declare-fun d!727170 () Bool)

(declare-fun lt!905817 () Regex!7636)

(assert (=> d!727170 (validRegex!3262 lt!905817)))

(declare-fun e!1622151 () Regex!7636)

(assert (=> d!727170 (= lt!905817 e!1622151)))

(declare-fun c!413545 () Bool)

(assert (=> d!727170 (= c!413545 (or (is-EmptyExpr!7636 r!27340) (is-EmptyLang!7636 r!27340)))))

(assert (=> d!727170 (validRegex!3262 r!27340)))

(assert (=> d!727170 (= (derivativeStep!2205 r!27340 c!14016) lt!905817)))

(declare-fun c!413542 () Bool)

(declare-fun call!165740 () Regex!7636)

(declare-fun bm!165736 () Bool)

(assert (=> bm!165736 (= call!165740 (derivativeStep!2205 (ite c!413542 (regOne!15785 r!27340) (regTwo!15784 r!27340)) c!14016))))

(declare-fun b!2570088 () Bool)

(declare-fun call!165742 () Regex!7636)

(assert (=> b!2570088 (= e!1622149 (Union!7636 call!165740 call!165742))))

(declare-fun b!2570089 () Bool)

(assert (=> b!2570089 (= e!1622151 e!1622152)))

(declare-fun c!413544 () Bool)

(assert (=> b!2570089 (= c!413544 (is-ElementMatch!7636 r!27340))))

(declare-fun bm!165737 () Bool)

(assert (=> bm!165737 (= call!165743 call!165742)))

(declare-fun e!1622150 () Regex!7636)

(declare-fun b!2570090 () Bool)

(assert (=> b!2570090 (= e!1622150 (Union!7636 (Concat!12332 call!165741 (regTwo!15784 r!27340)) call!165740))))

(declare-fun b!2570091 () Bool)

(assert (=> b!2570091 (= e!1622151 EmptyLang!7636)))

(declare-fun b!2570092 () Bool)

(declare-fun c!413541 () Bool)

(assert (=> b!2570092 (= c!413541 (nullable!2553 (regOne!15784 r!27340)))))

(assert (=> b!2570092 (= e!1622153 e!1622150)))

(declare-fun b!2570093 () Bool)

(assert (=> b!2570093 (= e!1622150 (Union!7636 (Concat!12332 call!165741 (regTwo!15784 r!27340)) EmptyLang!7636))))

(declare-fun b!2570094 () Bool)

(assert (=> b!2570094 (= c!413542 (is-Union!7636 r!27340))))

(assert (=> b!2570094 (= e!1622152 e!1622149)))

(declare-fun b!2570095 () Bool)

(assert (=> b!2570095 (= e!1622153 (Concat!12332 call!165743 r!27340))))

(declare-fun bm!165738 () Bool)

(assert (=> bm!165738 (= call!165742 (derivativeStep!2205 (ite c!413542 (regTwo!15785 r!27340) (ite c!413543 (reg!7965 r!27340) (regOne!15784 r!27340))) c!14016))))

(assert (= (and d!727170 c!413545) b!2570091))

(assert (= (and d!727170 (not c!413545)) b!2570089))

(assert (= (and b!2570089 c!413544) b!2570086))

(assert (= (and b!2570089 (not c!413544)) b!2570094))

(assert (= (and b!2570094 c!413542) b!2570088))

(assert (= (and b!2570094 (not c!413542)) b!2570087))

(assert (= (and b!2570087 c!413543) b!2570095))

(assert (= (and b!2570087 (not c!413543)) b!2570092))

(assert (= (and b!2570092 c!413541) b!2570090))

(assert (= (and b!2570092 (not c!413541)) b!2570093))

(assert (= (or b!2570090 b!2570093) bm!165735))

(assert (= (or b!2570095 bm!165735) bm!165737))

(assert (= (or b!2570088 bm!165737) bm!165738))

(assert (= (or b!2570088 b!2570090) bm!165736))

(declare-fun m!2906667 () Bool)

(assert (=> d!727170 m!2906667))

(assert (=> d!727170 m!2906361))

(declare-fun m!2906669 () Bool)

(assert (=> bm!165736 m!2906669))

(assert (=> b!2570092 m!2906385))

(declare-fun m!2906671 () Bool)

(assert (=> bm!165738 m!2906671))

(assert (=> b!2569720 d!727170))

(declare-fun b!2570096 () Bool)

(declare-fun e!1622157 () Regex!7636)

(assert (=> b!2570096 (= e!1622157 (ite (= c!14016 (c!413462 (regOne!15784 r!27340))) EmptyExpr!7636 EmptyLang!7636))))

(declare-fun bm!165739 () Bool)

(declare-fun call!165745 () Regex!7636)

(declare-fun call!165747 () Regex!7636)

(assert (=> bm!165739 (= call!165745 call!165747)))

(declare-fun b!2570097 () Bool)

(declare-fun e!1622154 () Regex!7636)

(declare-fun e!1622158 () Regex!7636)

(assert (=> b!2570097 (= e!1622154 e!1622158)))

(declare-fun c!413548 () Bool)

(assert (=> b!2570097 (= c!413548 (is-Star!7636 (regOne!15784 r!27340)))))

(declare-fun d!727172 () Bool)

(declare-fun lt!905818 () Regex!7636)

(assert (=> d!727172 (validRegex!3262 lt!905818)))

(declare-fun e!1622156 () Regex!7636)

(assert (=> d!727172 (= lt!905818 e!1622156)))

(declare-fun c!413550 () Bool)

(assert (=> d!727172 (= c!413550 (or (is-EmptyExpr!7636 (regOne!15784 r!27340)) (is-EmptyLang!7636 (regOne!15784 r!27340))))))

(assert (=> d!727172 (validRegex!3262 (regOne!15784 r!27340))))

(assert (=> d!727172 (= (derivativeStep!2205 (regOne!15784 r!27340) c!14016) lt!905818)))

(declare-fun c!413547 () Bool)

(declare-fun call!165744 () Regex!7636)

(declare-fun bm!165740 () Bool)

(assert (=> bm!165740 (= call!165744 (derivativeStep!2205 (ite c!413547 (regOne!15785 (regOne!15784 r!27340)) (regTwo!15784 (regOne!15784 r!27340))) c!14016))))

(declare-fun b!2570098 () Bool)

(declare-fun call!165746 () Regex!7636)

(assert (=> b!2570098 (= e!1622154 (Union!7636 call!165744 call!165746))))

(declare-fun b!2570099 () Bool)

(assert (=> b!2570099 (= e!1622156 e!1622157)))

(declare-fun c!413549 () Bool)

(assert (=> b!2570099 (= c!413549 (is-ElementMatch!7636 (regOne!15784 r!27340)))))

(declare-fun bm!165741 () Bool)

(assert (=> bm!165741 (= call!165747 call!165746)))

(declare-fun b!2570100 () Bool)

(declare-fun e!1622155 () Regex!7636)

(assert (=> b!2570100 (= e!1622155 (Union!7636 (Concat!12332 call!165745 (regTwo!15784 (regOne!15784 r!27340))) call!165744))))

(declare-fun b!2570101 () Bool)

(assert (=> b!2570101 (= e!1622156 EmptyLang!7636)))

(declare-fun b!2570102 () Bool)

(declare-fun c!413546 () Bool)

(assert (=> b!2570102 (= c!413546 (nullable!2553 (regOne!15784 (regOne!15784 r!27340))))))

(assert (=> b!2570102 (= e!1622158 e!1622155)))

(declare-fun b!2570103 () Bool)

(assert (=> b!2570103 (= e!1622155 (Union!7636 (Concat!12332 call!165745 (regTwo!15784 (regOne!15784 r!27340))) EmptyLang!7636))))

(declare-fun b!2570104 () Bool)

(assert (=> b!2570104 (= c!413547 (is-Union!7636 (regOne!15784 r!27340)))))

(assert (=> b!2570104 (= e!1622157 e!1622154)))

(declare-fun b!2570105 () Bool)

(assert (=> b!2570105 (= e!1622158 (Concat!12332 call!165747 (regOne!15784 r!27340)))))

(declare-fun bm!165742 () Bool)

(assert (=> bm!165742 (= call!165746 (derivativeStep!2205 (ite c!413547 (regTwo!15785 (regOne!15784 r!27340)) (ite c!413548 (reg!7965 (regOne!15784 r!27340)) (regOne!15784 (regOne!15784 r!27340)))) c!14016))))

(assert (= (and d!727172 c!413550) b!2570101))

(assert (= (and d!727172 (not c!413550)) b!2570099))

(assert (= (and b!2570099 c!413549) b!2570096))

(assert (= (and b!2570099 (not c!413549)) b!2570104))

(assert (= (and b!2570104 c!413547) b!2570098))

(assert (= (and b!2570104 (not c!413547)) b!2570097))

(assert (= (and b!2570097 c!413548) b!2570105))

(assert (= (and b!2570097 (not c!413548)) b!2570102))

(assert (= (and b!2570102 c!413546) b!2570100))

(assert (= (and b!2570102 (not c!413546)) b!2570103))

(assert (= (or b!2570100 b!2570103) bm!165739))

(assert (= (or b!2570105 bm!165739) bm!165741))

(assert (= (or b!2570098 bm!165741) bm!165742))

(assert (= (or b!2570098 b!2570100) bm!165740))

(declare-fun m!2906673 () Bool)

(assert (=> d!727172 m!2906673))

(assert (=> d!727172 m!2906377))

(declare-fun m!2906675 () Bool)

(assert (=> bm!165740 m!2906675))

(declare-fun m!2906677 () Bool)

(assert (=> b!2570102 m!2906677))

(declare-fun m!2906679 () Bool)

(assert (=> bm!165742 m!2906679))

(assert (=> b!2569730 d!727172))

(declare-fun d!727174 () Bool)

(declare-fun lt!905819 () Regex!7636)

(assert (=> d!727174 (validRegex!3262 lt!905819)))

(declare-fun e!1622159 () Regex!7636)

(assert (=> d!727174 (= lt!905819 e!1622159)))

(declare-fun c!413551 () Bool)

(assert (=> d!727174 (= c!413551 (is-Cons!29601 tl!4068))))

(assert (=> d!727174 (validRegex!3262 EmptyLang!7636)))

(assert (=> d!727174 (= (derivative!331 EmptyLang!7636 tl!4068) lt!905819)))

(declare-fun b!2570106 () Bool)

(assert (=> b!2570106 (= e!1622159 (derivative!331 (derivativeStep!2205 EmptyLang!7636 (h!35021 tl!4068)) (t!211400 tl!4068)))))

(declare-fun b!2570107 () Bool)

(assert (=> b!2570107 (= e!1622159 EmptyLang!7636)))

(assert (= (and d!727174 c!413551) b!2570106))

(assert (= (and d!727174 (not c!413551)) b!2570107))

(declare-fun m!2906681 () Bool)

(assert (=> d!727174 m!2906681))

(assert (=> d!727174 m!2906495))

(declare-fun m!2906683 () Bool)

(assert (=> b!2570106 m!2906683))

(assert (=> b!2570106 m!2906683))

(declare-fun m!2906685 () Bool)

(assert (=> b!2570106 m!2906685))

(assert (=> b!2569730 d!727174))

(declare-fun d!727176 () Bool)

(declare-fun lt!905820 () Regex!7636)

(assert (=> d!727176 (validRegex!3262 lt!905820)))

(declare-fun e!1622160 () Regex!7636)

(assert (=> d!727176 (= lt!905820 e!1622160)))

(declare-fun c!413552 () Bool)

(assert (=> d!727176 (= c!413552 (is-Cons!29601 tl!4068))))

(assert (=> d!727176 (validRegex!3262 lt!905725)))

(assert (=> d!727176 (= (derivative!331 lt!905725 tl!4068) lt!905820)))

(declare-fun b!2570108 () Bool)

(assert (=> b!2570108 (= e!1622160 (derivative!331 (derivativeStep!2205 lt!905725 (h!35021 tl!4068)) (t!211400 tl!4068)))))

(declare-fun b!2570109 () Bool)

(assert (=> b!2570109 (= e!1622160 lt!905725)))

(assert (= (and d!727176 c!413552) b!2570108))

(assert (= (and d!727176 (not c!413552)) b!2570109))

(declare-fun m!2906687 () Bool)

(assert (=> d!727176 m!2906687))

(declare-fun m!2906689 () Bool)

(assert (=> d!727176 m!2906689))

(declare-fun m!2906691 () Bool)

(assert (=> b!2570108 m!2906691))

(assert (=> b!2570108 m!2906691))

(declare-fun m!2906693 () Bool)

(assert (=> b!2570108 m!2906693))

(assert (=> b!2569730 d!727176))

(declare-fun d!727178 () Bool)

(assert (=> d!727178 (= (matchR!3579 lt!905725 tl!4068) (matchR!3579 (derivative!331 lt!905725 tl!4068) Nil!29601))))

(declare-fun lt!905821 () Unit!43453)

(assert (=> d!727178 (= lt!905821 (choose!15153 lt!905725 tl!4068))))

(assert (=> d!727178 (validRegex!3262 lt!905725)))

(assert (=> d!727178 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!225 lt!905725 tl!4068) lt!905821)))

(declare-fun bs!470010 () Bool)

(assert (= bs!470010 d!727178))

(assert (=> bs!470010 m!2906335))

(assert (=> bs!470010 m!2906351))

(declare-fun m!2906695 () Bool)

(assert (=> bs!470010 m!2906695))

(assert (=> bs!470010 m!2906335))

(assert (=> bs!470010 m!2906337))

(assert (=> bs!470010 m!2906689))

(assert (=> b!2569730 d!727178))

(declare-fun b!2570110 () Bool)

(declare-fun e!1622161 () Bool)

(declare-fun e!1622165 () Bool)

(assert (=> b!2570110 (= e!1622161 e!1622165)))

(declare-fun res!1081286 () Bool)

(assert (=> b!2570110 (=> res!1081286 e!1622165)))

(declare-fun call!165748 () Bool)

(assert (=> b!2570110 (= res!1081286 call!165748)))

(declare-fun b!2570111 () Bool)

(declare-fun res!1081288 () Bool)

(declare-fun e!1622163 () Bool)

(assert (=> b!2570111 (=> (not res!1081288) (not e!1622163))))

(assert (=> b!2570111 (= res!1081288 (isEmpty!17059 (tail!4116 Nil!29601)))))

(declare-fun b!2570112 () Bool)

(declare-fun e!1622162 () Bool)

(declare-fun lt!905822 () Bool)

(assert (=> b!2570112 (= e!1622162 (not lt!905822))))

(declare-fun b!2570113 () Bool)

(declare-fun e!1622164 () Bool)

(assert (=> b!2570113 (= e!1622164 e!1622161)))

(declare-fun res!1081291 () Bool)

(assert (=> b!2570113 (=> (not res!1081291) (not e!1622161))))

(assert (=> b!2570113 (= res!1081291 (not lt!905822))))

(declare-fun b!2570114 () Bool)

(declare-fun res!1081293 () Bool)

(assert (=> b!2570114 (=> res!1081293 e!1622164)))

(assert (=> b!2570114 (= res!1081293 e!1622163)))

(declare-fun res!1081289 () Bool)

(assert (=> b!2570114 (=> (not res!1081289) (not e!1622163))))

(assert (=> b!2570114 (= res!1081289 lt!905822)))

(declare-fun d!727180 () Bool)

(declare-fun e!1622166 () Bool)

(assert (=> d!727180 e!1622166))

(declare-fun c!413555 () Bool)

(assert (=> d!727180 (= c!413555 (is-EmptyExpr!7636 (derivative!331 lt!905725 tl!4068)))))

(declare-fun e!1622167 () Bool)

(assert (=> d!727180 (= lt!905822 e!1622167)))

(declare-fun c!413553 () Bool)

(assert (=> d!727180 (= c!413553 (isEmpty!17059 Nil!29601))))

(assert (=> d!727180 (validRegex!3262 (derivative!331 lt!905725 tl!4068))))

(assert (=> d!727180 (= (matchR!3579 (derivative!331 lt!905725 tl!4068) Nil!29601) lt!905822)))

(declare-fun b!2570115 () Bool)

(assert (=> b!2570115 (= e!1622165 (not (= (head!5841 Nil!29601) (c!413462 (derivative!331 lt!905725 tl!4068)))))))

(declare-fun b!2570116 () Bool)

(declare-fun res!1081287 () Bool)

(assert (=> b!2570116 (=> res!1081287 e!1622164)))

(assert (=> b!2570116 (= res!1081287 (not (is-ElementMatch!7636 (derivative!331 lt!905725 tl!4068))))))

(assert (=> b!2570116 (= e!1622162 e!1622164)))

(declare-fun b!2570117 () Bool)

(assert (=> b!2570117 (= e!1622163 (= (head!5841 Nil!29601) (c!413462 (derivative!331 lt!905725 tl!4068))))))

(declare-fun b!2570118 () Bool)

(declare-fun res!1081292 () Bool)

(assert (=> b!2570118 (=> res!1081292 e!1622165)))

(assert (=> b!2570118 (= res!1081292 (not (isEmpty!17059 (tail!4116 Nil!29601))))))

(declare-fun b!2570119 () Bool)

(assert (=> b!2570119 (= e!1622166 e!1622162)))

(declare-fun c!413554 () Bool)

(assert (=> b!2570119 (= c!413554 (is-EmptyLang!7636 (derivative!331 lt!905725 tl!4068)))))

(declare-fun b!2570120 () Bool)

(assert (=> b!2570120 (= e!1622166 (= lt!905822 call!165748))))

(declare-fun b!2570121 () Bool)

(assert (=> b!2570121 (= e!1622167 (nullable!2553 (derivative!331 lt!905725 tl!4068)))))

(declare-fun b!2570122 () Bool)

(assert (=> b!2570122 (= e!1622167 (matchR!3579 (derivativeStep!2205 (derivative!331 lt!905725 tl!4068) (head!5841 Nil!29601)) (tail!4116 Nil!29601)))))

(declare-fun bm!165743 () Bool)

(assert (=> bm!165743 (= call!165748 (isEmpty!17059 Nil!29601))))

(declare-fun b!2570123 () Bool)

(declare-fun res!1081290 () Bool)

(assert (=> b!2570123 (=> (not res!1081290) (not e!1622163))))

(assert (=> b!2570123 (= res!1081290 (not call!165748))))

(assert (= (and d!727180 c!413553) b!2570121))

(assert (= (and d!727180 (not c!413553)) b!2570122))

(assert (= (and d!727180 c!413555) b!2570120))

(assert (= (and d!727180 (not c!413555)) b!2570119))

(assert (= (and b!2570119 c!413554) b!2570112))

(assert (= (and b!2570119 (not c!413554)) b!2570116))

(assert (= (and b!2570116 (not res!1081287)) b!2570114))

(assert (= (and b!2570114 res!1081289) b!2570123))

(assert (= (and b!2570123 res!1081290) b!2570111))

(assert (= (and b!2570111 res!1081288) b!2570117))

(assert (= (and b!2570114 (not res!1081293)) b!2570113))

(assert (= (and b!2570113 res!1081291) b!2570110))

(assert (= (and b!2570110 (not res!1081286)) b!2570118))

(assert (= (and b!2570118 (not res!1081292)) b!2570115))

(assert (= (or b!2570120 b!2570110 b!2570123) bm!165743))

(assert (=> b!2570115 m!2906617))

(assert (=> b!2570111 m!2906619))

(assert (=> b!2570111 m!2906619))

(assert (=> b!2570111 m!2906621))

(assert (=> b!2570117 m!2906617))

(assert (=> b!2570122 m!2906617))

(assert (=> b!2570122 m!2906335))

(assert (=> b!2570122 m!2906617))

(declare-fun m!2906697 () Bool)

(assert (=> b!2570122 m!2906697))

(assert (=> b!2570122 m!2906619))

(assert (=> b!2570122 m!2906697))

(assert (=> b!2570122 m!2906619))

(declare-fun m!2906699 () Bool)

(assert (=> b!2570122 m!2906699))

(assert (=> b!2570121 m!2906335))

(declare-fun m!2906701 () Bool)

(assert (=> b!2570121 m!2906701))

(assert (=> b!2570118 m!2906619))

(assert (=> b!2570118 m!2906619))

(assert (=> b!2570118 m!2906621))

(assert (=> bm!165743 m!2906629))

(assert (=> d!727180 m!2906629))

(assert (=> d!727180 m!2906335))

(declare-fun m!2906703 () Bool)

(assert (=> d!727180 m!2906703))

(assert (=> b!2569730 d!727180))

(declare-fun d!727182 () Bool)

(assert (=> d!727182 (= (derivative!331 EmptyLang!7636 tl!4068) EmptyLang!7636)))

(declare-fun lt!905831 () Unit!43453)

(declare-fun choose!15154 (Regex!7636 List!29701) Unit!43453)

(assert (=> d!727182 (= lt!905831 (choose!15154 EmptyLang!7636 tl!4068))))

(assert (=> d!727182 (= EmptyLang!7636 EmptyLang!7636)))

(assert (=> d!727182 (= (lemmaEmptyLangDerivativeIsAFixPoint!65 EmptyLang!7636 tl!4068) lt!905831)))

(declare-fun bs!470011 () Bool)

(assert (= bs!470011 d!727182))

(assert (=> bs!470011 m!2906343))

(declare-fun m!2906705 () Bool)

(assert (=> bs!470011 m!2906705))

(assert (=> b!2569730 d!727182))

(declare-fun b!2570134 () Bool)

(declare-fun e!1622174 () Bool)

(declare-fun e!1622178 () Bool)

(assert (=> b!2570134 (= e!1622174 e!1622178)))

(declare-fun res!1081296 () Bool)

(assert (=> b!2570134 (=> res!1081296 e!1622178)))

(declare-fun call!165749 () Bool)

(assert (=> b!2570134 (= res!1081296 call!165749)))

(declare-fun b!2570135 () Bool)

(declare-fun res!1081298 () Bool)

(declare-fun e!1622176 () Bool)

(assert (=> b!2570135 (=> (not res!1081298) (not e!1622176))))

(assert (=> b!2570135 (= res!1081298 (isEmpty!17059 (tail!4116 tl!4068)))))

(declare-fun b!2570136 () Bool)

(declare-fun e!1622175 () Bool)

(declare-fun lt!905832 () Bool)

(assert (=> b!2570136 (= e!1622175 (not lt!905832))))

(declare-fun b!2570137 () Bool)

(declare-fun e!1622177 () Bool)

(assert (=> b!2570137 (= e!1622177 e!1622174)))

(declare-fun res!1081301 () Bool)

(assert (=> b!2570137 (=> (not res!1081301) (not e!1622174))))

(assert (=> b!2570137 (= res!1081301 (not lt!905832))))

(declare-fun b!2570138 () Bool)

(declare-fun res!1081303 () Bool)

(assert (=> b!2570138 (=> res!1081303 e!1622177)))

(assert (=> b!2570138 (= res!1081303 e!1622176)))

(declare-fun res!1081299 () Bool)

(assert (=> b!2570138 (=> (not res!1081299) (not e!1622176))))

(assert (=> b!2570138 (= res!1081299 lt!905832)))

(declare-fun d!727184 () Bool)

(declare-fun e!1622179 () Bool)

(assert (=> d!727184 e!1622179))

(declare-fun c!413562 () Bool)

(assert (=> d!727184 (= c!413562 (is-EmptyExpr!7636 lt!905725))))

(declare-fun e!1622180 () Bool)

(assert (=> d!727184 (= lt!905832 e!1622180)))

(declare-fun c!413560 () Bool)

(assert (=> d!727184 (= c!413560 (isEmpty!17059 tl!4068))))

(assert (=> d!727184 (validRegex!3262 lt!905725)))

(assert (=> d!727184 (= (matchR!3579 lt!905725 tl!4068) lt!905832)))

(declare-fun b!2570139 () Bool)

(assert (=> b!2570139 (= e!1622178 (not (= (head!5841 tl!4068) (c!413462 lt!905725))))))

(declare-fun b!2570140 () Bool)

(declare-fun res!1081297 () Bool)

(assert (=> b!2570140 (=> res!1081297 e!1622177)))

(assert (=> b!2570140 (= res!1081297 (not (is-ElementMatch!7636 lt!905725)))))

(assert (=> b!2570140 (= e!1622175 e!1622177)))

(declare-fun b!2570141 () Bool)

(assert (=> b!2570141 (= e!1622176 (= (head!5841 tl!4068) (c!413462 lt!905725)))))

(declare-fun b!2570142 () Bool)

(declare-fun res!1081302 () Bool)

(assert (=> b!2570142 (=> res!1081302 e!1622178)))

(assert (=> b!2570142 (= res!1081302 (not (isEmpty!17059 (tail!4116 tl!4068))))))

(declare-fun b!2570143 () Bool)

(assert (=> b!2570143 (= e!1622179 e!1622175)))

(declare-fun c!413561 () Bool)

(assert (=> b!2570143 (= c!413561 (is-EmptyLang!7636 lt!905725))))

(declare-fun b!2570144 () Bool)

(assert (=> b!2570144 (= e!1622179 (= lt!905832 call!165749))))

(declare-fun b!2570145 () Bool)

(assert (=> b!2570145 (= e!1622180 (nullable!2553 lt!905725))))

(declare-fun b!2570146 () Bool)

(assert (=> b!2570146 (= e!1622180 (matchR!3579 (derivativeStep!2205 lt!905725 (head!5841 tl!4068)) (tail!4116 tl!4068)))))

(declare-fun bm!165744 () Bool)

(assert (=> bm!165744 (= call!165749 (isEmpty!17059 tl!4068))))

(declare-fun b!2570147 () Bool)

(declare-fun res!1081300 () Bool)

(assert (=> b!2570147 (=> (not res!1081300) (not e!1622176))))

(assert (=> b!2570147 (= res!1081300 (not call!165749))))

(assert (= (and d!727184 c!413560) b!2570145))

(assert (= (and d!727184 (not c!413560)) b!2570146))

(assert (= (and d!727184 c!413562) b!2570144))

(assert (= (and d!727184 (not c!413562)) b!2570143))

(assert (= (and b!2570143 c!413561) b!2570136))

(assert (= (and b!2570143 (not c!413561)) b!2570140))

(assert (= (and b!2570140 (not res!1081297)) b!2570138))

(assert (= (and b!2570138 res!1081299) b!2570147))

(assert (= (and b!2570147 res!1081300) b!2570135))

(assert (= (and b!2570135 res!1081298) b!2570141))

(assert (= (and b!2570138 (not res!1081303)) b!2570137))

(assert (= (and b!2570137 res!1081301) b!2570134))

(assert (= (and b!2570134 (not res!1081296)) b!2570142))

(assert (= (and b!2570142 (not res!1081302)) b!2570139))

(assert (= (or b!2570144 b!2570134 b!2570147) bm!165744))

(assert (=> b!2570139 m!2906471))

(assert (=> b!2570135 m!2906473))

(assert (=> b!2570135 m!2906473))

(assert (=> b!2570135 m!2906477))

(assert (=> b!2570141 m!2906471))

(assert (=> b!2570146 m!2906471))

(assert (=> b!2570146 m!2906471))

(declare-fun m!2906707 () Bool)

(assert (=> b!2570146 m!2906707))

(assert (=> b!2570146 m!2906473))

(assert (=> b!2570146 m!2906707))

(assert (=> b!2570146 m!2906473))

(declare-fun m!2906709 () Bool)

(assert (=> b!2570146 m!2906709))

(declare-fun m!2906711 () Bool)

(assert (=> b!2570145 m!2906711))

(assert (=> b!2570142 m!2906473))

(assert (=> b!2570142 m!2906473))

(assert (=> b!2570142 m!2906477))

(assert (=> bm!165744 m!2906493))

(assert (=> d!727184 m!2906493))

(assert (=> d!727184 m!2906689))

(assert (=> b!2569730 d!727184))

(declare-fun d!727186 () Bool)

(declare-fun e!1622189 () Bool)

(assert (=> d!727186 e!1622189))

(declare-fun res!1081316 () Bool)

(assert (=> d!727186 (=> res!1081316 e!1622189)))

(assert (=> d!727186 (= res!1081316 (matchR!3579 lt!905732 tl!4068))))

(declare-fun lt!905835 () Unit!43453)

(declare-fun choose!15157 (Regex!7636 Regex!7636 List!29701) Unit!43453)

(assert (=> d!727186 (= lt!905835 (choose!15157 lt!905732 EmptyLang!7636 tl!4068))))

(declare-fun e!1622190 () Bool)

(assert (=> d!727186 e!1622190))

(declare-fun res!1081317 () Bool)

(assert (=> d!727186 (=> (not res!1081317) (not e!1622190))))

(assert (=> d!727186 (= res!1081317 (validRegex!3262 lt!905732))))

(assert (=> d!727186 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!225 lt!905732 EmptyLang!7636 tl!4068) lt!905835)))

(declare-fun b!2570160 () Bool)

(assert (=> b!2570160 (= e!1622190 (validRegex!3262 EmptyLang!7636))))

(declare-fun b!2570161 () Bool)

(assert (=> b!2570161 (= e!1622189 (matchR!3579 EmptyLang!7636 tl!4068))))

(assert (= (and d!727186 res!1081317) b!2570160))

(assert (= (and d!727186 (not res!1081316)) b!2570161))

(assert (=> d!727186 m!2906347))

(declare-fun m!2906713 () Bool)

(assert (=> d!727186 m!2906713))

(declare-fun m!2906715 () Bool)

(assert (=> d!727186 m!2906715))

(assert (=> b!2570160 m!2906495))

(assert (=> b!2570161 m!2906333))

(assert (=> b!2569730 d!727186))

(declare-fun b!2570162 () Bool)

(declare-fun e!1622191 () Bool)

(declare-fun e!1622195 () Bool)

(assert (=> b!2570162 (= e!1622191 e!1622195)))

(declare-fun res!1081318 () Bool)

(assert (=> b!2570162 (=> res!1081318 e!1622195)))

(declare-fun call!165750 () Bool)

(assert (=> b!2570162 (= res!1081318 call!165750)))

(declare-fun b!2570163 () Bool)

(declare-fun res!1081320 () Bool)

(declare-fun e!1622193 () Bool)

(assert (=> b!2570163 (=> (not res!1081320) (not e!1622193))))

(assert (=> b!2570163 (= res!1081320 (isEmpty!17059 (tail!4116 tl!4068)))))

(declare-fun b!2570164 () Bool)

(declare-fun e!1622192 () Bool)

(declare-fun lt!905836 () Bool)

(assert (=> b!2570164 (= e!1622192 (not lt!905836))))

(declare-fun b!2570165 () Bool)

(declare-fun e!1622194 () Bool)

(assert (=> b!2570165 (= e!1622194 e!1622191)))

(declare-fun res!1081323 () Bool)

(assert (=> b!2570165 (=> (not res!1081323) (not e!1622191))))

(assert (=> b!2570165 (= res!1081323 (not lt!905836))))

(declare-fun b!2570166 () Bool)

(declare-fun res!1081325 () Bool)

(assert (=> b!2570166 (=> res!1081325 e!1622194)))

(assert (=> b!2570166 (= res!1081325 e!1622193)))

(declare-fun res!1081321 () Bool)

(assert (=> b!2570166 (=> (not res!1081321) (not e!1622193))))

(assert (=> b!2570166 (= res!1081321 lt!905836)))

(declare-fun d!727188 () Bool)

(declare-fun e!1622196 () Bool)

(assert (=> d!727188 e!1622196))

(declare-fun c!413565 () Bool)

(assert (=> d!727188 (= c!413565 (is-EmptyExpr!7636 lt!905732))))

(declare-fun e!1622197 () Bool)

(assert (=> d!727188 (= lt!905836 e!1622197)))

(declare-fun c!413563 () Bool)

(assert (=> d!727188 (= c!413563 (isEmpty!17059 tl!4068))))

(assert (=> d!727188 (validRegex!3262 lt!905732)))

(assert (=> d!727188 (= (matchR!3579 lt!905732 tl!4068) lt!905836)))

(declare-fun b!2570167 () Bool)

(assert (=> b!2570167 (= e!1622195 (not (= (head!5841 tl!4068) (c!413462 lt!905732))))))

(declare-fun b!2570168 () Bool)

(declare-fun res!1081319 () Bool)

(assert (=> b!2570168 (=> res!1081319 e!1622194)))

(assert (=> b!2570168 (= res!1081319 (not (is-ElementMatch!7636 lt!905732)))))

(assert (=> b!2570168 (= e!1622192 e!1622194)))

(declare-fun b!2570169 () Bool)

(assert (=> b!2570169 (= e!1622193 (= (head!5841 tl!4068) (c!413462 lt!905732)))))

(declare-fun b!2570170 () Bool)

(declare-fun res!1081324 () Bool)

(assert (=> b!2570170 (=> res!1081324 e!1622195)))

(assert (=> b!2570170 (= res!1081324 (not (isEmpty!17059 (tail!4116 tl!4068))))))

(declare-fun b!2570171 () Bool)

(assert (=> b!2570171 (= e!1622196 e!1622192)))

(declare-fun c!413564 () Bool)

(assert (=> b!2570171 (= c!413564 (is-EmptyLang!7636 lt!905732))))

(declare-fun b!2570172 () Bool)

(assert (=> b!2570172 (= e!1622196 (= lt!905836 call!165750))))

(declare-fun b!2570173 () Bool)

(assert (=> b!2570173 (= e!1622197 (nullable!2553 lt!905732))))

(declare-fun b!2570174 () Bool)

(assert (=> b!2570174 (= e!1622197 (matchR!3579 (derivativeStep!2205 lt!905732 (head!5841 tl!4068)) (tail!4116 tl!4068)))))

(declare-fun bm!165745 () Bool)

(assert (=> bm!165745 (= call!165750 (isEmpty!17059 tl!4068))))

(declare-fun b!2570175 () Bool)

(declare-fun res!1081322 () Bool)

(assert (=> b!2570175 (=> (not res!1081322) (not e!1622193))))

(assert (=> b!2570175 (= res!1081322 (not call!165750))))

(assert (= (and d!727188 c!413563) b!2570173))

(assert (= (and d!727188 (not c!413563)) b!2570174))

(assert (= (and d!727188 c!413565) b!2570172))

(assert (= (and d!727188 (not c!413565)) b!2570171))

(assert (= (and b!2570171 c!413564) b!2570164))

(assert (= (and b!2570171 (not c!413564)) b!2570168))

(assert (= (and b!2570168 (not res!1081319)) b!2570166))

(assert (= (and b!2570166 res!1081321) b!2570175))

(assert (= (and b!2570175 res!1081322) b!2570163))

(assert (= (and b!2570163 res!1081320) b!2570169))

(assert (= (and b!2570166 (not res!1081325)) b!2570165))

(assert (= (and b!2570165 res!1081323) b!2570162))

(assert (= (and b!2570162 (not res!1081318)) b!2570170))

(assert (= (and b!2570170 (not res!1081324)) b!2570167))

(assert (= (or b!2570172 b!2570162 b!2570175) bm!165745))

(assert (=> b!2570167 m!2906471))

(assert (=> b!2570163 m!2906473))

(assert (=> b!2570163 m!2906473))

(assert (=> b!2570163 m!2906477))

(assert (=> b!2570169 m!2906471))

(assert (=> b!2570174 m!2906471))

(assert (=> b!2570174 m!2906471))

(declare-fun m!2906717 () Bool)

(assert (=> b!2570174 m!2906717))

(assert (=> b!2570174 m!2906473))

(assert (=> b!2570174 m!2906717))

(assert (=> b!2570174 m!2906473))

(declare-fun m!2906719 () Bool)

(assert (=> b!2570174 m!2906719))

(declare-fun m!2906721 () Bool)

(assert (=> b!2570173 m!2906721))

(assert (=> b!2570170 m!2906473))

(assert (=> b!2570170 m!2906473))

(assert (=> b!2570170 m!2906477))

(assert (=> bm!165745 m!2906493))

(assert (=> d!727188 m!2906493))

(assert (=> d!727188 m!2906715))

(assert (=> b!2569730 d!727188))

(declare-fun b!2570176 () Bool)

(declare-fun e!1622198 () Bool)

(declare-fun e!1622202 () Bool)

(assert (=> b!2570176 (= e!1622198 e!1622202)))

(declare-fun res!1081326 () Bool)

(assert (=> b!2570176 (=> res!1081326 e!1622202)))

(declare-fun call!165751 () Bool)

(assert (=> b!2570176 (= res!1081326 call!165751)))

(declare-fun b!2570177 () Bool)

(declare-fun res!1081328 () Bool)

(declare-fun e!1622200 () Bool)

(assert (=> b!2570177 (=> (not res!1081328) (not e!1622200))))

(assert (=> b!2570177 (= res!1081328 (isEmpty!17059 (tail!4116 (Cons!29601 c!14016 (_1!17339 lt!905735)))))))

(declare-fun b!2570178 () Bool)

(declare-fun e!1622199 () Bool)

(declare-fun lt!905837 () Bool)

(assert (=> b!2570178 (= e!1622199 (not lt!905837))))

(declare-fun b!2570179 () Bool)

(declare-fun e!1622201 () Bool)

(assert (=> b!2570179 (= e!1622201 e!1622198)))

(declare-fun res!1081331 () Bool)

(assert (=> b!2570179 (=> (not res!1081331) (not e!1622198))))

(assert (=> b!2570179 (= res!1081331 (not lt!905837))))

(declare-fun b!2570180 () Bool)

(declare-fun res!1081333 () Bool)

(assert (=> b!2570180 (=> res!1081333 e!1622201)))

(assert (=> b!2570180 (= res!1081333 e!1622200)))

(declare-fun res!1081329 () Bool)

(assert (=> b!2570180 (=> (not res!1081329) (not e!1622200))))

(assert (=> b!2570180 (= res!1081329 lt!905837)))

(declare-fun d!727190 () Bool)

(declare-fun e!1622203 () Bool)

(assert (=> d!727190 e!1622203))

(declare-fun c!413568 () Bool)

(assert (=> d!727190 (= c!413568 (is-EmptyExpr!7636 (regOne!15784 r!27340)))))

(declare-fun e!1622204 () Bool)

(assert (=> d!727190 (= lt!905837 e!1622204)))

(declare-fun c!413566 () Bool)

(assert (=> d!727190 (= c!413566 (isEmpty!17059 (Cons!29601 c!14016 (_1!17339 lt!905735))))))

(assert (=> d!727190 (validRegex!3262 (regOne!15784 r!27340))))

(assert (=> d!727190 (= (matchR!3579 (regOne!15784 r!27340) (Cons!29601 c!14016 (_1!17339 lt!905735))) lt!905837)))

(declare-fun b!2570181 () Bool)

(assert (=> b!2570181 (= e!1622202 (not (= (head!5841 (Cons!29601 c!14016 (_1!17339 lt!905735))) (c!413462 (regOne!15784 r!27340)))))))

(declare-fun b!2570182 () Bool)

(declare-fun res!1081327 () Bool)

(assert (=> b!2570182 (=> res!1081327 e!1622201)))

(assert (=> b!2570182 (= res!1081327 (not (is-ElementMatch!7636 (regOne!15784 r!27340))))))

(assert (=> b!2570182 (= e!1622199 e!1622201)))

(declare-fun b!2570183 () Bool)

(assert (=> b!2570183 (= e!1622200 (= (head!5841 (Cons!29601 c!14016 (_1!17339 lt!905735))) (c!413462 (regOne!15784 r!27340))))))

(declare-fun b!2570184 () Bool)

(declare-fun res!1081332 () Bool)

(assert (=> b!2570184 (=> res!1081332 e!1622202)))

(assert (=> b!2570184 (= res!1081332 (not (isEmpty!17059 (tail!4116 (Cons!29601 c!14016 (_1!17339 lt!905735))))))))

(declare-fun b!2570185 () Bool)

(assert (=> b!2570185 (= e!1622203 e!1622199)))

(declare-fun c!413567 () Bool)

(assert (=> b!2570185 (= c!413567 (is-EmptyLang!7636 (regOne!15784 r!27340)))))

(declare-fun b!2570186 () Bool)

(assert (=> b!2570186 (= e!1622203 (= lt!905837 call!165751))))

(declare-fun b!2570187 () Bool)

(assert (=> b!2570187 (= e!1622204 (nullable!2553 (regOne!15784 r!27340)))))

(declare-fun b!2570188 () Bool)

(assert (=> b!2570188 (= e!1622204 (matchR!3579 (derivativeStep!2205 (regOne!15784 r!27340) (head!5841 (Cons!29601 c!14016 (_1!17339 lt!905735)))) (tail!4116 (Cons!29601 c!14016 (_1!17339 lt!905735)))))))

(declare-fun bm!165746 () Bool)

(assert (=> bm!165746 (= call!165751 (isEmpty!17059 (Cons!29601 c!14016 (_1!17339 lt!905735))))))

(declare-fun b!2570189 () Bool)

(declare-fun res!1081330 () Bool)

(assert (=> b!2570189 (=> (not res!1081330) (not e!1622200))))

(assert (=> b!2570189 (= res!1081330 (not call!165751))))

(assert (= (and d!727190 c!413566) b!2570187))

(assert (= (and d!727190 (not c!413566)) b!2570188))

(assert (= (and d!727190 c!413568) b!2570186))

(assert (= (and d!727190 (not c!413568)) b!2570185))

(assert (= (and b!2570185 c!413567) b!2570178))

(assert (= (and b!2570185 (not c!413567)) b!2570182))

(assert (= (and b!2570182 (not res!1081327)) b!2570180))

(assert (= (and b!2570180 res!1081329) b!2570189))

(assert (= (and b!2570189 res!1081330) b!2570177))

(assert (= (and b!2570177 res!1081328) b!2570183))

(assert (= (and b!2570180 (not res!1081333)) b!2570179))

(assert (= (and b!2570179 res!1081331) b!2570176))

(assert (= (and b!2570176 (not res!1081326)) b!2570184))

(assert (= (and b!2570184 (not res!1081332)) b!2570181))

(assert (= (or b!2570186 b!2570176 b!2570189) bm!165746))

(declare-fun m!2906723 () Bool)

(assert (=> b!2570181 m!2906723))

(declare-fun m!2906725 () Bool)

(assert (=> b!2570177 m!2906725))

(assert (=> b!2570177 m!2906725))

(declare-fun m!2906727 () Bool)

(assert (=> b!2570177 m!2906727))

(assert (=> b!2570183 m!2906723))

(assert (=> b!2570188 m!2906723))

(assert (=> b!2570188 m!2906723))

(declare-fun m!2906729 () Bool)

(assert (=> b!2570188 m!2906729))

(assert (=> b!2570188 m!2906725))

(assert (=> b!2570188 m!2906729))

(assert (=> b!2570188 m!2906725))

(declare-fun m!2906731 () Bool)

(assert (=> b!2570188 m!2906731))

(assert (=> b!2570187 m!2906385))

(assert (=> b!2570184 m!2906725))

(assert (=> b!2570184 m!2906725))

(assert (=> b!2570184 m!2906727))

(declare-fun m!2906733 () Bool)

(assert (=> bm!165746 m!2906733))

(assert (=> d!727190 m!2906733))

(assert (=> d!727190 m!2906377))

(assert (=> b!2569732 d!727190))

(declare-fun d!727192 () Bool)

(assert (=> d!727192 (= (nullable!2553 (regOne!15784 r!27340)) (nullableFct!778 (regOne!15784 r!27340)))))

(declare-fun bs!470012 () Bool)

(assert (= bs!470012 d!727192))

(declare-fun m!2906735 () Bool)

(assert (=> bs!470012 m!2906735))

(assert (=> b!2569726 d!727192))

(declare-fun b!2570190 () Bool)

(declare-fun res!1081338 () Bool)

(declare-fun e!1622207 () Bool)

(assert (=> b!2570190 (=> (not res!1081338) (not e!1622207))))

(declare-fun call!165752 () Bool)

(assert (=> b!2570190 (= res!1081338 call!165752)))

(declare-fun e!1622208 () Bool)

(assert (=> b!2570190 (= e!1622208 e!1622207)))

(declare-fun b!2570191 () Bool)

(declare-fun e!1622210 () Bool)

(assert (=> b!2570191 (= e!1622210 call!165752)))

(declare-fun d!727194 () Bool)

(declare-fun res!1081334 () Bool)

(declare-fun e!1622206 () Bool)

(assert (=> d!727194 (=> res!1081334 e!1622206)))

(assert (=> d!727194 (= res!1081334 (is-ElementMatch!7636 r!27340))))

(assert (=> d!727194 (= (validRegex!3262 r!27340) e!1622206)))

(declare-fun b!2570192 () Bool)

(declare-fun e!1622205 () Bool)

(declare-fun call!165754 () Bool)

(assert (=> b!2570192 (= e!1622205 call!165754)))

(declare-fun b!2570193 () Bool)

(declare-fun res!1081337 () Bool)

(declare-fun e!1622209 () Bool)

(assert (=> b!2570193 (=> res!1081337 e!1622209)))

(assert (=> b!2570193 (= res!1081337 (not (is-Concat!12332 r!27340)))))

(assert (=> b!2570193 (= e!1622208 e!1622209)))

(declare-fun b!2570194 () Bool)

(declare-fun e!1622211 () Bool)

(assert (=> b!2570194 (= e!1622211 e!1622205)))

(declare-fun res!1081336 () Bool)

(assert (=> b!2570194 (= res!1081336 (not (nullable!2553 (reg!7965 r!27340))))))

(assert (=> b!2570194 (=> (not res!1081336) (not e!1622205))))

(declare-fun b!2570195 () Bool)

(assert (=> b!2570195 (= e!1622206 e!1622211)))

(declare-fun c!413570 () Bool)

(assert (=> b!2570195 (= c!413570 (is-Star!7636 r!27340))))

(declare-fun bm!165747 () Bool)

(declare-fun c!413569 () Bool)

(assert (=> bm!165747 (= call!165754 (validRegex!3262 (ite c!413570 (reg!7965 r!27340) (ite c!413569 (regOne!15785 r!27340) (regTwo!15784 r!27340)))))))

(declare-fun b!2570196 () Bool)

(assert (=> b!2570196 (= e!1622211 e!1622208)))

(assert (=> b!2570196 (= c!413569 (is-Union!7636 r!27340))))

(declare-fun bm!165748 () Bool)

(assert (=> bm!165748 (= call!165752 call!165754)))

(declare-fun bm!165749 () Bool)

(declare-fun call!165753 () Bool)

(assert (=> bm!165749 (= call!165753 (validRegex!3262 (ite c!413569 (regTwo!15785 r!27340) (regOne!15784 r!27340))))))

(declare-fun b!2570197 () Bool)

(assert (=> b!2570197 (= e!1622207 call!165753)))

(declare-fun b!2570198 () Bool)

(assert (=> b!2570198 (= e!1622209 e!1622210)))

(declare-fun res!1081335 () Bool)

(assert (=> b!2570198 (=> (not res!1081335) (not e!1622210))))

(assert (=> b!2570198 (= res!1081335 call!165753)))

(assert (= (and d!727194 (not res!1081334)) b!2570195))

(assert (= (and b!2570195 c!413570) b!2570194))

(assert (= (and b!2570195 (not c!413570)) b!2570196))

(assert (= (and b!2570194 res!1081336) b!2570192))

(assert (= (and b!2570196 c!413569) b!2570190))

(assert (= (and b!2570196 (not c!413569)) b!2570193))

(assert (= (and b!2570190 res!1081338) b!2570197))

(assert (= (and b!2570193 (not res!1081337)) b!2570198))

(assert (= (and b!2570198 res!1081335) b!2570191))

(assert (= (or b!2570190 b!2570191) bm!165748))

(assert (= (or b!2570197 b!2570198) bm!165749))

(assert (= (or b!2570192 bm!165748) bm!165747))

(declare-fun m!2906737 () Bool)

(assert (=> b!2570194 m!2906737))

(declare-fun m!2906739 () Bool)

(assert (=> bm!165747 m!2906739))

(declare-fun m!2906741 () Bool)

(assert (=> bm!165749 m!2906741))

(assert (=> start!248390 d!727194))

(declare-fun b!2570203 () Bool)

(declare-fun e!1622214 () Bool)

(declare-fun tp!817773 () Bool)

(assert (=> b!2570203 (= e!1622214 (and tp_is_empty!13127 tp!817773))))

(assert (=> b!2569733 (= tp!817750 e!1622214)))

(assert (= (and b!2569733 (is-Cons!29601 (t!211400 tl!4068))) b!2570203))

(declare-fun b!2570214 () Bool)

(declare-fun e!1622217 () Bool)

(assert (=> b!2570214 (= e!1622217 tp_is_empty!13127)))

(declare-fun b!2570216 () Bool)

(declare-fun tp!817786 () Bool)

(assert (=> b!2570216 (= e!1622217 tp!817786)))

(assert (=> b!2569727 (= tp!817748 e!1622217)))

(declare-fun b!2570217 () Bool)

(declare-fun tp!817787 () Bool)

(declare-fun tp!817785 () Bool)

(assert (=> b!2570217 (= e!1622217 (and tp!817787 tp!817785))))

(declare-fun b!2570215 () Bool)

(declare-fun tp!817784 () Bool)

(declare-fun tp!817788 () Bool)

(assert (=> b!2570215 (= e!1622217 (and tp!817784 tp!817788))))

(assert (= (and b!2569727 (is-ElementMatch!7636 (regOne!15784 r!27340))) b!2570214))

(assert (= (and b!2569727 (is-Concat!12332 (regOne!15784 r!27340))) b!2570215))

(assert (= (and b!2569727 (is-Star!7636 (regOne!15784 r!27340))) b!2570216))

(assert (= (and b!2569727 (is-Union!7636 (regOne!15784 r!27340))) b!2570217))

(declare-fun b!2570218 () Bool)

(declare-fun e!1622218 () Bool)

(assert (=> b!2570218 (= e!1622218 tp_is_empty!13127)))

(declare-fun b!2570220 () Bool)

(declare-fun tp!817791 () Bool)

(assert (=> b!2570220 (= e!1622218 tp!817791)))

(assert (=> b!2569727 (= tp!817747 e!1622218)))

(declare-fun b!2570221 () Bool)

(declare-fun tp!817792 () Bool)

(declare-fun tp!817790 () Bool)

(assert (=> b!2570221 (= e!1622218 (and tp!817792 tp!817790))))

(declare-fun b!2570219 () Bool)

(declare-fun tp!817789 () Bool)

(declare-fun tp!817793 () Bool)

(assert (=> b!2570219 (= e!1622218 (and tp!817789 tp!817793))))

(assert (= (and b!2569727 (is-ElementMatch!7636 (regTwo!15784 r!27340))) b!2570218))

(assert (= (and b!2569727 (is-Concat!12332 (regTwo!15784 r!27340))) b!2570219))

(assert (= (and b!2569727 (is-Star!7636 (regTwo!15784 r!27340))) b!2570220))

(assert (= (and b!2569727 (is-Union!7636 (regTwo!15784 r!27340))) b!2570221))

(declare-fun b!2570222 () Bool)

(declare-fun e!1622219 () Bool)

(assert (=> b!2570222 (= e!1622219 tp_is_empty!13127)))

(declare-fun b!2570224 () Bool)

(declare-fun tp!817796 () Bool)

(assert (=> b!2570224 (= e!1622219 tp!817796)))

(assert (=> b!2569725 (= tp!817749 e!1622219)))

(declare-fun b!2570225 () Bool)

(declare-fun tp!817797 () Bool)

(declare-fun tp!817795 () Bool)

(assert (=> b!2570225 (= e!1622219 (and tp!817797 tp!817795))))

(declare-fun b!2570223 () Bool)

(declare-fun tp!817794 () Bool)

(declare-fun tp!817798 () Bool)

(assert (=> b!2570223 (= e!1622219 (and tp!817794 tp!817798))))

(assert (= (and b!2569725 (is-ElementMatch!7636 (regOne!15785 r!27340))) b!2570222))

(assert (= (and b!2569725 (is-Concat!12332 (regOne!15785 r!27340))) b!2570223))

(assert (= (and b!2569725 (is-Star!7636 (regOne!15785 r!27340))) b!2570224))

(assert (= (and b!2569725 (is-Union!7636 (regOne!15785 r!27340))) b!2570225))

(declare-fun b!2570226 () Bool)

(declare-fun e!1622220 () Bool)

(assert (=> b!2570226 (= e!1622220 tp_is_empty!13127)))

(declare-fun b!2570228 () Bool)

(declare-fun tp!817801 () Bool)

(assert (=> b!2570228 (= e!1622220 tp!817801)))

(assert (=> b!2569725 (= tp!817751 e!1622220)))

(declare-fun b!2570229 () Bool)

(declare-fun tp!817802 () Bool)

(declare-fun tp!817800 () Bool)

(assert (=> b!2570229 (= e!1622220 (and tp!817802 tp!817800))))

(declare-fun b!2570227 () Bool)

(declare-fun tp!817799 () Bool)

(declare-fun tp!817803 () Bool)

(assert (=> b!2570227 (= e!1622220 (and tp!817799 tp!817803))))

(assert (= (and b!2569725 (is-ElementMatch!7636 (regTwo!15785 r!27340))) b!2570226))

(assert (= (and b!2569725 (is-Concat!12332 (regTwo!15785 r!27340))) b!2570227))

(assert (= (and b!2569725 (is-Star!7636 (regTwo!15785 r!27340))) b!2570228))

(assert (= (and b!2569725 (is-Union!7636 (regTwo!15785 r!27340))) b!2570229))

(declare-fun b!2570230 () Bool)

(declare-fun e!1622221 () Bool)

(assert (=> b!2570230 (= e!1622221 tp_is_empty!13127)))

(declare-fun b!2570232 () Bool)

(declare-fun tp!817806 () Bool)

(assert (=> b!2570232 (= e!1622221 tp!817806)))

(assert (=> b!2569721 (= tp!817752 e!1622221)))

(declare-fun b!2570233 () Bool)

(declare-fun tp!817807 () Bool)

(declare-fun tp!817805 () Bool)

(assert (=> b!2570233 (= e!1622221 (and tp!817807 tp!817805))))

(declare-fun b!2570231 () Bool)

(declare-fun tp!817804 () Bool)

(declare-fun tp!817808 () Bool)

(assert (=> b!2570231 (= e!1622221 (and tp!817804 tp!817808))))

(assert (= (and b!2569721 (is-ElementMatch!7636 (reg!7965 r!27340))) b!2570230))

(assert (= (and b!2569721 (is-Concat!12332 (reg!7965 r!27340))) b!2570231))

(assert (= (and b!2569721 (is-Star!7636 (reg!7965 r!27340))) b!2570232))

(assert (= (and b!2569721 (is-Union!7636 (reg!7965 r!27340))) b!2570233))

(push 1)

(assert (not b!2570139))

(assert (not d!727164))

(assert (not b!2569884))

(assert (not d!727182))

(assert (not b!2570141))

(assert (not b!2570215))

(assert (not d!727176))

(assert (not b!2570231))

(assert (not d!727180))

(assert (not b!2570160))

(assert (not b!2570146))

(assert (not b!2570163))

(assert (not d!727140))

(assert (not b!2569882))

(assert (not b!2569889))

(assert (not bm!165740))

(assert (not d!727186))

(assert (not bm!165738))

(assert (not bm!165745))

(assert (not b!2570061))

(assert (not b!2570183))

(assert (not bm!165736))

(assert tp_is_empty!13127)

(assert (not b!2570051))

(assert (not d!727184))

(assert (not d!727166))

(assert (not b!2570106))

(assert (not b!2570194))

(assert (not b!2570188))

(assert (not b!2569899))

(assert (not d!727170))

(assert (not b!2569989))

(assert (not bm!165705))

(assert (not b!2570224))

(assert (not bm!165724))

(assert (not b!2570169))

(assert (not b!2570173))

(assert (not b!2570220))

(assert (not b!2570057))

(assert (not b!2570170))

(assert (not b!2570145))

(assert (not bm!165749))

(assert (not d!727192))

(assert (not bm!165726))

(assert (not b!2570229))

(assert (not b!2569990))

(assert (not b!2570058))

(assert (not d!727172))

(assert (not b!2570167))

(assert (not b!2570221))

(assert (not bm!165725))

(assert (not bm!165722))

(assert (not b!2569988))

(assert (not d!727132))

(assert (not b!2570181))

(assert (not b!2570122))

(assert (not bm!165704))

(assert (not b!2570118))

(assert (not b!2570042))

(assert (not b!2569984))

(assert (not b!2569878))

(assert (not b!2570228))

(assert (not b!2570048))

(assert (not bm!165742))

(assert (not b!2570216))

(assert (not b!2570055))

(assert (not d!727124))

(assert (not b!2570062))

(assert (not d!727130))

(assert (not b!2570034))

(assert (not d!727128))

(assert (not b!2569956))

(assert (not b!2569896))

(assert (not b!2569982))

(assert (not b!2570187))

(assert (not b!2569885))

(assert (not b!2570223))

(assert (not b!2570174))

(assert (not d!727190))

(assert (not d!727154))

(assert (not b!2569898))

(assert (not bm!165747))

(assert (not b!2569888))

(assert (not b!2570225))

(assert (not b!2570092))

(assert (not d!727178))

(assert (not b!2570161))

(assert (not bm!165743))

(assert (not b!2570135))

(assert (not b!2570115))

(assert (not b!2570102))

(assert (not b!2570217))

(assert (not b!2570219))

(assert (not b!2570177))

(assert (not b!2570064))

(assert (not b!2569902))

(assert (not b!2570031))

(assert (not b!2569983))

(assert (not b!2570233))

(assert (not b!2570117))

(assert (not b!2570021))

(assert (not b!2569903))

(assert (not b!2570036))

(assert (not b!2569892))

(assert (not d!727168))

(assert (not b!2570142))

(assert (not b!2570041))

(assert (not b!2570232))

(assert (not bm!165744))

(assert (not d!727174))

(assert (not d!727188))

(assert (not b!2570111))

(assert (not b!2570121))

(assert (not b!2570227))

(assert (not d!727162))

(assert (not bm!165746))

(assert (not b!2569955))

(assert (not b!2570108))

(assert (not b!2570027))

(assert (not b!2570203))

(assert (not d!727118))

(assert (not b!2570184))

(assert (not d!727158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

