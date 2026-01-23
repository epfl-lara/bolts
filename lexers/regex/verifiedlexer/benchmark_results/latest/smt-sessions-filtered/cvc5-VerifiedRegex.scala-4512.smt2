; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239492 () Bool)

(assert start!239492)

(declare-fun b!2453749 () Bool)

(declare-fun e!1557131 () Bool)

(declare-fun tp!780524 () Bool)

(declare-fun tp!780527 () Bool)

(assert (=> b!2453749 (= e!1557131 (and tp!780524 tp!780527))))

(declare-fun b!2453750 () Bool)

(declare-fun e!1557127 () Bool)

(declare-fun tp!780525 () Bool)

(declare-fun tp!780523 () Bool)

(assert (=> b!2453750 (= e!1557127 (and tp!780525 tp!780523))))

(declare-fun b!2453751 () Bool)

(declare-fun e!1557125 () Bool)

(declare-fun e!1557130 () Bool)

(assert (=> b!2453751 (= e!1557125 e!1557130)))

(declare-fun res!1040486 () Bool)

(assert (=> b!2453751 (=> res!1040486 e!1557130)))

(declare-datatypes ((C!14590 0))(
  ( (C!14591 (val!8537 Int)) )
))
(declare-datatypes ((Regex!7216 0))(
  ( (ElementMatch!7216 (c!391574 C!14590)) (Concat!11852 (regOne!14944 Regex!7216) (regTwo!14944 Regex!7216)) (EmptyExpr!7216) (Star!7216 (reg!7545 Regex!7216)) (EmptyLang!7216) (Union!7216 (regOne!14945 Regex!7216) (regTwo!14945 Regex!7216)) )
))
(declare-datatypes ((List!28668 0))(
  ( (Nil!28570) (Cons!28570 (h!33971 Regex!7216) (t!208645 List!28668)) )
))
(declare-fun lt!880038 () List!28668)

(declare-fun isEmpty!16599 (List!28668) Bool)

(assert (=> b!2453751 (= res!1040486 (not (isEmpty!16599 lt!880038)))))

(declare-fun l!9164 () List!28668)

(declare-fun tail!3865 (List!28668) List!28668)

(assert (=> b!2453751 (= lt!880038 (tail!3865 l!9164))))

(declare-fun b!2453752 () Bool)

(declare-fun res!1040484 () Bool)

(assert (=> b!2453752 (=> res!1040484 e!1557130)))

(declare-fun generalisedConcat!317 (List!28668) Regex!7216)

(assert (=> b!2453752 (= res!1040484 (not (= (generalisedConcat!317 lt!880038) EmptyExpr!7216)))))

(declare-fun b!2453753 () Bool)

(declare-fun tp!780522 () Bool)

(assert (=> b!2453753 (= e!1557131 tp!780522)))

(declare-fun b!2453754 () Bool)

(declare-fun res!1040483 () Bool)

(declare-fun e!1557129 () Bool)

(assert (=> b!2453754 (=> (not res!1040483) (not e!1557129))))

(declare-fun r!13927 () Regex!7216)

(assert (=> b!2453754 (= res!1040483 (= r!13927 (generalisedConcat!317 l!9164)))))

(declare-fun b!2453755 () Bool)

(declare-fun res!1040485 () Bool)

(assert (=> b!2453755 (=> res!1040485 e!1557125)))

(assert (=> b!2453755 (= res!1040485 (isEmpty!16599 l!9164))))

(declare-fun b!2453756 () Bool)

(assert (=> b!2453756 (= e!1557129 (not e!1557125))))

(declare-fun res!1040481 () Bool)

(assert (=> b!2453756 (=> res!1040481 e!1557125)))

(assert (=> b!2453756 (= res!1040481 (or (is-Concat!11852 r!13927) (is-EmptyExpr!7216 r!13927)))))

(declare-datatypes ((List!28669 0))(
  ( (Nil!28571) (Cons!28571 (h!33972 C!14590) (t!208646 List!28669)) )
))
(declare-fun s!9460 () List!28669)

(declare-fun matchR!3331 (Regex!7216 List!28669) Bool)

(declare-fun matchRSpec!1063 (Regex!7216 List!28669) Bool)

(assert (=> b!2453756 (= (matchR!3331 r!13927 s!9460) (matchRSpec!1063 r!13927 s!9460))))

(declare-datatypes ((Unit!41887 0))(
  ( (Unit!41888) )
))
(declare-fun lt!880039 () Unit!41887)

(declare-fun mainMatchTheorem!1063 (Regex!7216 List!28669) Unit!41887)

(assert (=> b!2453756 (= lt!880039 (mainMatchTheorem!1063 r!13927 s!9460))))

(declare-fun res!1040480 () Bool)

(assert (=> start!239492 (=> (not res!1040480) (not e!1557129))))

(declare-fun lambda!92948 () Int)

(declare-fun forall!5850 (List!28668 Int) Bool)

(assert (=> start!239492 (= res!1040480 (forall!5850 l!9164 lambda!92948))))

(assert (=> start!239492 e!1557129))

(assert (=> start!239492 e!1557127))

(assert (=> start!239492 e!1557131))

(declare-fun e!1557128 () Bool)

(assert (=> start!239492 e!1557128))

(declare-fun b!2453757 () Bool)

(declare-fun tp_is_empty!11845 () Bool)

(assert (=> b!2453757 (= e!1557131 tp_is_empty!11845)))

(declare-fun b!2453758 () Bool)

(declare-fun tp!780529 () Bool)

(assert (=> b!2453758 (= e!1557128 (and tp_is_empty!11845 tp!780529))))

(declare-fun b!2453759 () Bool)

(declare-fun e!1557126 () Bool)

(declare-fun lt!880037 () Regex!7216)

(declare-fun validRegex!2908 (Regex!7216) Bool)

(assert (=> b!2453759 (= e!1557126 (validRegex!2908 lt!880037))))

(declare-fun b!2453760 () Bool)

(assert (=> b!2453760 (= e!1557130 e!1557126)))

(declare-fun res!1040482 () Bool)

(assert (=> b!2453760 (=> res!1040482 e!1557126)))

(assert (=> b!2453760 (= res!1040482 (matchR!3331 lt!880037 s!9460))))

(declare-fun head!5592 (List!28668) Regex!7216)

(assert (=> b!2453760 (= lt!880037 (head!5592 l!9164))))

(declare-fun b!2453761 () Bool)

(declare-fun tp!780526 () Bool)

(declare-fun tp!780528 () Bool)

(assert (=> b!2453761 (= e!1557131 (and tp!780526 tp!780528))))

(declare-fun b!2453762 () Bool)

(declare-fun res!1040479 () Bool)

(assert (=> b!2453762 (=> res!1040479 e!1557126)))

(declare-datatypes ((tuple2!28160 0))(
  ( (tuple2!28161 (_1!16621 List!28669) (_2!16621 List!28669)) )
))
(declare-datatypes ((Option!5691 0))(
  ( (None!5690) (Some!5690 (v!31098 tuple2!28160)) )
))
(declare-fun isDefined!4517 (Option!5691) Bool)

(declare-fun findConcatSeparation!799 (Regex!7216 Regex!7216 List!28669 List!28669 List!28669) Option!5691)

(assert (=> b!2453762 (= res!1040479 (not (isDefined!4517 (findConcatSeparation!799 lt!880037 EmptyExpr!7216 Nil!28571 s!9460 s!9460))))))

(assert (= (and start!239492 res!1040480) b!2453754))

(assert (= (and b!2453754 res!1040483) b!2453756))

(assert (= (and b!2453756 (not res!1040481)) b!2453755))

(assert (= (and b!2453755 (not res!1040485)) b!2453751))

(assert (= (and b!2453751 (not res!1040486)) b!2453752))

(assert (= (and b!2453752 (not res!1040484)) b!2453760))

(assert (= (and b!2453760 (not res!1040482)) b!2453762))

(assert (= (and b!2453762 (not res!1040479)) b!2453759))

(assert (= (and start!239492 (is-Cons!28570 l!9164)) b!2453750))

(assert (= (and start!239492 (is-ElementMatch!7216 r!13927)) b!2453757))

(assert (= (and start!239492 (is-Concat!11852 r!13927)) b!2453749))

(assert (= (and start!239492 (is-Star!7216 r!13927)) b!2453753))

(assert (= (and start!239492 (is-Union!7216 r!13927)) b!2453761))

(assert (= (and start!239492 (is-Cons!28571 s!9460)) b!2453758))

(declare-fun m!2826031 () Bool)

(assert (=> b!2453759 m!2826031))

(declare-fun m!2826033 () Bool)

(assert (=> start!239492 m!2826033))

(declare-fun m!2826035 () Bool)

(assert (=> b!2453756 m!2826035))

(declare-fun m!2826037 () Bool)

(assert (=> b!2453756 m!2826037))

(declare-fun m!2826039 () Bool)

(assert (=> b!2453756 m!2826039))

(declare-fun m!2826041 () Bool)

(assert (=> b!2453751 m!2826041))

(declare-fun m!2826043 () Bool)

(assert (=> b!2453751 m!2826043))

(declare-fun m!2826045 () Bool)

(assert (=> b!2453752 m!2826045))

(declare-fun m!2826047 () Bool)

(assert (=> b!2453755 m!2826047))

(declare-fun m!2826049 () Bool)

(assert (=> b!2453760 m!2826049))

(declare-fun m!2826051 () Bool)

(assert (=> b!2453760 m!2826051))

(declare-fun m!2826053 () Bool)

(assert (=> b!2453762 m!2826053))

(assert (=> b!2453762 m!2826053))

(declare-fun m!2826055 () Bool)

(assert (=> b!2453762 m!2826055))

(declare-fun m!2826057 () Bool)

(assert (=> b!2453754 m!2826057))

(push 1)

(assert (not b!2453758))

(assert (not b!2453761))

(assert (not b!2453752))

(assert tp_is_empty!11845)

(assert (not b!2453754))

(assert (not start!239492))

(assert (not b!2453750))

(assert (not b!2453755))

(assert (not b!2453756))

(assert (not b!2453749))

(assert (not b!2453762))

(assert (not b!2453759))

(assert (not b!2453751))

(assert (not b!2453753))

(assert (not b!2453760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!707083 () Bool)

(declare-fun isEmpty!16601 (Option!5691) Bool)

(assert (=> d!707083 (= (isDefined!4517 (findConcatSeparation!799 lt!880037 EmptyExpr!7216 Nil!28571 s!9460 s!9460)) (not (isEmpty!16601 (findConcatSeparation!799 lt!880037 EmptyExpr!7216 Nil!28571 s!9460 s!9460))))))

(declare-fun bs!465820 () Bool)

(assert (= bs!465820 d!707083))

(assert (=> bs!465820 m!2826053))

(declare-fun m!2826087 () Bool)

(assert (=> bs!465820 m!2826087))

(assert (=> b!2453762 d!707083))

(declare-fun b!2453827 () Bool)

(declare-fun lt!880059 () Unit!41887)

(declare-fun lt!880057 () Unit!41887)

(assert (=> b!2453827 (= lt!880059 lt!880057)))

(declare-fun ++!7107 (List!28669 List!28669) List!28669)

(assert (=> b!2453827 (= (++!7107 (++!7107 Nil!28571 (Cons!28571 (h!33972 s!9460) Nil!28571)) (t!208646 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!708 (List!28669 C!14590 List!28669 List!28669) Unit!41887)

(assert (=> b!2453827 (= lt!880057 (lemmaMoveElementToOtherListKeepsConcatEq!708 Nil!28571 (h!33972 s!9460) (t!208646 s!9460) s!9460))))

(declare-fun e!1557168 () Option!5691)

(assert (=> b!2453827 (= e!1557168 (findConcatSeparation!799 lt!880037 EmptyExpr!7216 (++!7107 Nil!28571 (Cons!28571 (h!33972 s!9460) Nil!28571)) (t!208646 s!9460) s!9460))))

(declare-fun d!707087 () Bool)

(declare-fun e!1557169 () Bool)

(assert (=> d!707087 e!1557169))

(declare-fun res!1040525 () Bool)

(assert (=> d!707087 (=> res!1040525 e!1557169)))

(declare-fun e!1557167 () Bool)

(assert (=> d!707087 (= res!1040525 e!1557167)))

(declare-fun res!1040522 () Bool)

(assert (=> d!707087 (=> (not res!1040522) (not e!1557167))))

(declare-fun lt!880058 () Option!5691)

(assert (=> d!707087 (= res!1040522 (isDefined!4517 lt!880058))))

(declare-fun e!1557165 () Option!5691)

(assert (=> d!707087 (= lt!880058 e!1557165)))

(declare-fun c!391582 () Bool)

(declare-fun e!1557166 () Bool)

(assert (=> d!707087 (= c!391582 e!1557166)))

(declare-fun res!1040521 () Bool)

(assert (=> d!707087 (=> (not res!1040521) (not e!1557166))))

(assert (=> d!707087 (= res!1040521 (matchR!3331 lt!880037 Nil!28571))))

(assert (=> d!707087 (validRegex!2908 lt!880037)))

(assert (=> d!707087 (= (findConcatSeparation!799 lt!880037 EmptyExpr!7216 Nil!28571 s!9460 s!9460) lt!880058)))

(declare-fun b!2453828 () Bool)

(declare-fun get!8834 (Option!5691) tuple2!28160)

(assert (=> b!2453828 (= e!1557167 (= (++!7107 (_1!16621 (get!8834 lt!880058)) (_2!16621 (get!8834 lt!880058))) s!9460))))

(declare-fun b!2453829 () Bool)

(declare-fun res!1040523 () Bool)

(assert (=> b!2453829 (=> (not res!1040523) (not e!1557167))))

(assert (=> b!2453829 (= res!1040523 (matchR!3331 EmptyExpr!7216 (_2!16621 (get!8834 lt!880058))))))

(declare-fun b!2453830 () Bool)

(assert (=> b!2453830 (= e!1557165 (Some!5690 (tuple2!28161 Nil!28571 s!9460)))))

(declare-fun b!2453831 () Bool)

(declare-fun res!1040524 () Bool)

(assert (=> b!2453831 (=> (not res!1040524) (not e!1557167))))

(assert (=> b!2453831 (= res!1040524 (matchR!3331 lt!880037 (_1!16621 (get!8834 lt!880058))))))

(declare-fun b!2453832 () Bool)

(assert (=> b!2453832 (= e!1557168 None!5690)))

(declare-fun b!2453833 () Bool)

(assert (=> b!2453833 (= e!1557165 e!1557168)))

(declare-fun c!391583 () Bool)

(assert (=> b!2453833 (= c!391583 (is-Nil!28571 s!9460))))

(declare-fun b!2453834 () Bool)

(assert (=> b!2453834 (= e!1557166 (matchR!3331 EmptyExpr!7216 s!9460))))

(declare-fun b!2453835 () Bool)

(assert (=> b!2453835 (= e!1557169 (not (isDefined!4517 lt!880058)))))

(assert (= (and d!707087 res!1040521) b!2453834))

(assert (= (and d!707087 c!391582) b!2453830))

(assert (= (and d!707087 (not c!391582)) b!2453833))

(assert (= (and b!2453833 c!391583) b!2453832))

(assert (= (and b!2453833 (not c!391583)) b!2453827))

(assert (= (and d!707087 res!1040522) b!2453831))

(assert (= (and b!2453831 res!1040524) b!2453829))

(assert (= (and b!2453829 res!1040523) b!2453828))

(assert (= (and d!707087 (not res!1040525)) b!2453835))

(declare-fun m!2826089 () Bool)

(assert (=> d!707087 m!2826089))

(declare-fun m!2826091 () Bool)

(assert (=> d!707087 m!2826091))

(assert (=> d!707087 m!2826031))

(assert (=> b!2453835 m!2826089))

(declare-fun m!2826093 () Bool)

(assert (=> b!2453829 m!2826093))

(declare-fun m!2826095 () Bool)

(assert (=> b!2453829 m!2826095))

(declare-fun m!2826097 () Bool)

(assert (=> b!2453827 m!2826097))

(assert (=> b!2453827 m!2826097))

(declare-fun m!2826099 () Bool)

(assert (=> b!2453827 m!2826099))

(declare-fun m!2826101 () Bool)

(assert (=> b!2453827 m!2826101))

(assert (=> b!2453827 m!2826097))

(declare-fun m!2826103 () Bool)

(assert (=> b!2453827 m!2826103))

(declare-fun m!2826105 () Bool)

(assert (=> b!2453834 m!2826105))

(assert (=> b!2453831 m!2826093))

(declare-fun m!2826107 () Bool)

(assert (=> b!2453831 m!2826107))

(assert (=> b!2453828 m!2826093))

(declare-fun m!2826109 () Bool)

(assert (=> b!2453828 m!2826109))

(assert (=> b!2453762 d!707087))

(declare-fun bs!465821 () Bool)

(declare-fun d!707089 () Bool)

(assert (= bs!465821 (and d!707089 start!239492)))

(declare-fun lambda!92954 () Int)

(assert (=> bs!465821 (= lambda!92954 lambda!92948)))

(declare-fun b!2453880 () Bool)

(declare-fun e!1557196 () Regex!7216)

(declare-fun e!1557198 () Regex!7216)

(assert (=> b!2453880 (= e!1557196 e!1557198)))

(declare-fun c!391596 () Bool)

(assert (=> b!2453880 (= c!391596 (is-Cons!28570 lt!880038))))

(declare-fun b!2453881 () Bool)

(declare-fun e!1557194 () Bool)

(declare-fun lt!880062 () Regex!7216)

(assert (=> b!2453881 (= e!1557194 (= lt!880062 (head!5592 lt!880038)))))

(declare-fun b!2453882 () Bool)

(declare-fun e!1557199 () Bool)

(assert (=> b!2453882 (= e!1557199 e!1557194)))

(declare-fun c!391598 () Bool)

(assert (=> b!2453882 (= c!391598 (isEmpty!16599 (tail!3865 lt!880038)))))

(declare-fun b!2453883 () Bool)

(declare-fun e!1557195 () Bool)

(assert (=> b!2453883 (= e!1557195 (isEmpty!16599 (t!208645 lt!880038)))))

(declare-fun b!2453884 () Bool)

(declare-fun e!1557197 () Bool)

(assert (=> b!2453884 (= e!1557197 e!1557199)))

(declare-fun c!391597 () Bool)

(assert (=> b!2453884 (= c!391597 (isEmpty!16599 lt!880038))))

(declare-fun b!2453885 () Bool)

(assert (=> b!2453885 (= e!1557198 (Concat!11852 (h!33971 lt!880038) (generalisedConcat!317 (t!208645 lt!880038))))))

(declare-fun b!2453886 () Bool)

(assert (=> b!2453886 (= e!1557198 EmptyExpr!7216)))

(declare-fun b!2453887 () Bool)

(assert (=> b!2453887 (= e!1557196 (h!33971 lt!880038))))

(declare-fun b!2453888 () Bool)

(declare-fun isEmptyExpr!232 (Regex!7216) Bool)

(assert (=> b!2453888 (= e!1557199 (isEmptyExpr!232 lt!880062))))

(assert (=> d!707089 e!1557197))

(declare-fun res!1040547 () Bool)

(assert (=> d!707089 (=> (not res!1040547) (not e!1557197))))

(assert (=> d!707089 (= res!1040547 (validRegex!2908 lt!880062))))

(assert (=> d!707089 (= lt!880062 e!1557196)))

(declare-fun c!391599 () Bool)

(assert (=> d!707089 (= c!391599 e!1557195)))

(declare-fun res!1040546 () Bool)

(assert (=> d!707089 (=> (not res!1040546) (not e!1557195))))

(assert (=> d!707089 (= res!1040546 (is-Cons!28570 lt!880038))))

(assert (=> d!707089 (forall!5850 lt!880038 lambda!92954)))

(assert (=> d!707089 (= (generalisedConcat!317 lt!880038) lt!880062)))

(declare-fun b!2453889 () Bool)

(declare-fun isConcat!232 (Regex!7216) Bool)

(assert (=> b!2453889 (= e!1557194 (isConcat!232 lt!880062))))

(assert (= (and d!707089 res!1040546) b!2453883))

(assert (= (and d!707089 c!391599) b!2453887))

(assert (= (and d!707089 (not c!391599)) b!2453880))

(assert (= (and b!2453880 c!391596) b!2453885))

(assert (= (and b!2453880 (not c!391596)) b!2453886))

(assert (= (and d!707089 res!1040547) b!2453884))

(assert (= (and b!2453884 c!391597) b!2453888))

(assert (= (and b!2453884 (not c!391597)) b!2453882))

(assert (= (and b!2453882 c!391598) b!2453881))

(assert (= (and b!2453882 (not c!391598)) b!2453889))

(declare-fun m!2826111 () Bool)

(assert (=> b!2453885 m!2826111))

(declare-fun m!2826113 () Bool)

(assert (=> b!2453883 m!2826113))

(declare-fun m!2826115 () Bool)

(assert (=> d!707089 m!2826115))

(declare-fun m!2826117 () Bool)

(assert (=> d!707089 m!2826117))

(declare-fun m!2826119 () Bool)

(assert (=> b!2453882 m!2826119))

(assert (=> b!2453882 m!2826119))

(declare-fun m!2826121 () Bool)

(assert (=> b!2453882 m!2826121))

(declare-fun m!2826123 () Bool)

(assert (=> b!2453889 m!2826123))

(assert (=> b!2453884 m!2826041))

(declare-fun m!2826125 () Bool)

(assert (=> b!2453888 m!2826125))

(declare-fun m!2826127 () Bool)

(assert (=> b!2453881 m!2826127))

(assert (=> b!2453752 d!707089))

(declare-fun d!707091 () Bool)

(assert (=> d!707091 (= (isEmpty!16599 lt!880038) (is-Nil!28570 lt!880038))))

(assert (=> b!2453751 d!707091))

(declare-fun d!707093 () Bool)

(assert (=> d!707093 (= (tail!3865 l!9164) (t!208645 l!9164))))

(assert (=> b!2453751 d!707093))

(declare-fun d!707095 () Bool)

(declare-fun e!1557222 () Bool)

(assert (=> d!707095 e!1557222))

(declare-fun c!391611 () Bool)

(assert (=> d!707095 (= c!391611 (is-EmptyExpr!7216 r!13927))))

(declare-fun lt!880066 () Bool)

(declare-fun e!1557224 () Bool)

(assert (=> d!707095 (= lt!880066 e!1557224)))

(declare-fun c!391610 () Bool)

(declare-fun isEmpty!16602 (List!28669) Bool)

(assert (=> d!707095 (= c!391610 (isEmpty!16602 s!9460))))

(assert (=> d!707095 (validRegex!2908 r!13927)))

(assert (=> d!707095 (= (matchR!3331 r!13927 s!9460) lt!880066)))

(declare-fun b!2453932 () Bool)

(declare-fun derivativeStep!1867 (Regex!7216 C!14590) Regex!7216)

(declare-fun head!5594 (List!28669) C!14590)

(declare-fun tail!3867 (List!28669) List!28669)

(assert (=> b!2453932 (= e!1557224 (matchR!3331 (derivativeStep!1867 r!13927 (head!5594 s!9460)) (tail!3867 s!9460)))))

(declare-fun b!2453933 () Bool)

(declare-fun e!1557227 () Bool)

(declare-fun e!1557223 () Bool)

(assert (=> b!2453933 (= e!1557227 e!1557223)))

(declare-fun res!1040577 () Bool)

(assert (=> b!2453933 (=> res!1040577 e!1557223)))

(declare-fun call!150738 () Bool)

(assert (=> b!2453933 (= res!1040577 call!150738)))

(declare-fun b!2453934 () Bool)

(declare-fun res!1040578 () Bool)

(declare-fun e!1557225 () Bool)

(assert (=> b!2453934 (=> (not res!1040578) (not e!1557225))))

(assert (=> b!2453934 (= res!1040578 (isEmpty!16602 (tail!3867 s!9460)))))

(declare-fun b!2453935 () Bool)

(declare-fun res!1040576 () Bool)

(declare-fun e!1557221 () Bool)

(assert (=> b!2453935 (=> res!1040576 e!1557221)))

(assert (=> b!2453935 (= res!1040576 (not (is-ElementMatch!7216 r!13927)))))

(declare-fun e!1557226 () Bool)

(assert (=> b!2453935 (= e!1557226 e!1557221)))

(declare-fun b!2453936 () Bool)

(assert (=> b!2453936 (= e!1557223 (not (= (head!5594 s!9460) (c!391574 r!13927))))))

(declare-fun b!2453937 () Bool)

(declare-fun res!1040573 () Bool)

(assert (=> b!2453937 (=> res!1040573 e!1557223)))

(assert (=> b!2453937 (= res!1040573 (not (isEmpty!16602 (tail!3867 s!9460))))))

(declare-fun b!2453938 () Bool)

(assert (=> b!2453938 (= e!1557222 (= lt!880066 call!150738))))

(declare-fun b!2453939 () Bool)

(assert (=> b!2453939 (= e!1557221 e!1557227)))

(declare-fun res!1040572 () Bool)

(assert (=> b!2453939 (=> (not res!1040572) (not e!1557227))))

(assert (=> b!2453939 (= res!1040572 (not lt!880066))))

(declare-fun b!2453940 () Bool)

(assert (=> b!2453940 (= e!1557226 (not lt!880066))))

(declare-fun b!2453941 () Bool)

(declare-fun res!1040575 () Bool)

(assert (=> b!2453941 (=> (not res!1040575) (not e!1557225))))

(assert (=> b!2453941 (= res!1040575 (not call!150738))))

(declare-fun b!2453942 () Bool)

(declare-fun nullable!2213 (Regex!7216) Bool)

(assert (=> b!2453942 (= e!1557224 (nullable!2213 r!13927))))

(declare-fun b!2453943 () Bool)

(declare-fun res!1040579 () Bool)

(assert (=> b!2453943 (=> res!1040579 e!1557221)))

(assert (=> b!2453943 (= res!1040579 e!1557225)))

(declare-fun res!1040574 () Bool)

(assert (=> b!2453943 (=> (not res!1040574) (not e!1557225))))

(assert (=> b!2453943 (= res!1040574 lt!880066)))

(declare-fun bm!150733 () Bool)

(assert (=> bm!150733 (= call!150738 (isEmpty!16602 s!9460))))

(declare-fun b!2453944 () Bool)

(assert (=> b!2453944 (= e!1557222 e!1557226)))

(declare-fun c!391609 () Bool)

(assert (=> b!2453944 (= c!391609 (is-EmptyLang!7216 r!13927))))

(declare-fun b!2453945 () Bool)

(assert (=> b!2453945 (= e!1557225 (= (head!5594 s!9460) (c!391574 r!13927)))))

(assert (= (and d!707095 c!391610) b!2453942))

(assert (= (and d!707095 (not c!391610)) b!2453932))

(assert (= (and d!707095 c!391611) b!2453938))

(assert (= (and d!707095 (not c!391611)) b!2453944))

(assert (= (and b!2453944 c!391609) b!2453940))

(assert (= (and b!2453944 (not c!391609)) b!2453935))

(assert (= (and b!2453935 (not res!1040576)) b!2453943))

(assert (= (and b!2453943 res!1040574) b!2453941))

(assert (= (and b!2453941 res!1040575) b!2453934))

(assert (= (and b!2453934 res!1040578) b!2453945))

(assert (= (and b!2453943 (not res!1040579)) b!2453939))

(assert (= (and b!2453939 res!1040572) b!2453933))

(assert (= (and b!2453933 (not res!1040577)) b!2453937))

(assert (= (and b!2453937 (not res!1040573)) b!2453936))

(assert (= (or b!2453938 b!2453933 b!2453941) bm!150733))

(declare-fun m!2826143 () Bool)

(assert (=> b!2453936 m!2826143))

(assert (=> b!2453932 m!2826143))

(assert (=> b!2453932 m!2826143))

(declare-fun m!2826145 () Bool)

(assert (=> b!2453932 m!2826145))

(declare-fun m!2826147 () Bool)

(assert (=> b!2453932 m!2826147))

(assert (=> b!2453932 m!2826145))

(assert (=> b!2453932 m!2826147))

(declare-fun m!2826149 () Bool)

(assert (=> b!2453932 m!2826149))

(declare-fun m!2826151 () Bool)

(assert (=> bm!150733 m!2826151))

(assert (=> b!2453934 m!2826147))

(assert (=> b!2453934 m!2826147))

(declare-fun m!2826153 () Bool)

(assert (=> b!2453934 m!2826153))

(assert (=> d!707095 m!2826151))

(declare-fun m!2826155 () Bool)

(assert (=> d!707095 m!2826155))

(assert (=> b!2453945 m!2826143))

(declare-fun m!2826157 () Bool)

(assert (=> b!2453942 m!2826157))

(assert (=> b!2453937 m!2826147))

(assert (=> b!2453937 m!2826147))

(assert (=> b!2453937 m!2826153))

(assert (=> b!2453756 d!707095))

(declare-fun b!2454005 () Bool)

(assert (=> b!2454005 true))

(assert (=> b!2454005 true))

(declare-fun bs!465823 () Bool)

(declare-fun b!2454000 () Bool)

(assert (= bs!465823 (and b!2454000 b!2454005)))

(declare-fun lambda!92963 () Int)

(declare-fun lambda!92961 () Int)

(assert (=> bs!465823 (not (= lambda!92963 lambda!92961))))

(assert (=> b!2454000 true))

(assert (=> b!2454000 true))

(declare-fun b!2453998 () Bool)

(declare-fun e!1557261 () Bool)

(declare-fun call!150744 () Bool)

(assert (=> b!2453998 (= e!1557261 call!150744)))

(declare-fun b!2453999 () Bool)

(declare-fun c!391628 () Bool)

(assert (=> b!2453999 (= c!391628 (is-ElementMatch!7216 r!13927))))

(declare-fun e!1557258 () Bool)

(declare-fun e!1557259 () Bool)

(assert (=> b!2453999 (= e!1557258 e!1557259)))

(declare-fun e!1557262 () Bool)

(declare-fun call!150743 () Bool)

(assert (=> b!2454000 (= e!1557262 call!150743)))

(declare-fun b!2454001 () Bool)

(declare-fun e!1557263 () Bool)

(assert (=> b!2454001 (= e!1557263 (matchRSpec!1063 (regTwo!14945 r!13927) s!9460))))

(declare-fun b!2454002 () Bool)

(declare-fun e!1557264 () Bool)

(assert (=> b!2454002 (= e!1557264 e!1557262)))

(declare-fun c!391630 () Bool)

(assert (=> b!2454002 (= c!391630 (is-Star!7216 r!13927))))

(declare-fun b!2454003 () Bool)

(assert (=> b!2454003 (= e!1557261 e!1557258)))

(declare-fun res!1040602 () Bool)

(assert (=> b!2454003 (= res!1040602 (not (is-EmptyLang!7216 r!13927)))))

(assert (=> b!2454003 (=> (not res!1040602) (not e!1557258))))

(declare-fun d!707101 () Bool)

(declare-fun c!391629 () Bool)

(assert (=> d!707101 (= c!391629 (is-EmptyExpr!7216 r!13927))))

(assert (=> d!707101 (= (matchRSpec!1063 r!13927 s!9460) e!1557261)))

(declare-fun bm!150738 () Bool)

(assert (=> bm!150738 (= call!150744 (isEmpty!16602 s!9460))))

(declare-fun b!2454004 () Bool)

(declare-fun res!1040601 () Bool)

(declare-fun e!1557260 () Bool)

(assert (=> b!2454004 (=> res!1040601 e!1557260)))

(assert (=> b!2454004 (= res!1040601 call!150744)))

(assert (=> b!2454004 (= e!1557262 e!1557260)))

(declare-fun bm!150739 () Bool)

(declare-fun Exists!1239 (Int) Bool)

(assert (=> bm!150739 (= call!150743 (Exists!1239 (ite c!391630 lambda!92961 lambda!92963)))))

(assert (=> b!2454005 (= e!1557260 call!150743)))

(declare-fun b!2454006 () Bool)

(assert (=> b!2454006 (= e!1557259 (= s!9460 (Cons!28571 (c!391574 r!13927) Nil!28571)))))

(declare-fun b!2454007 () Bool)

(assert (=> b!2454007 (= e!1557264 e!1557263)))

(declare-fun res!1040600 () Bool)

(assert (=> b!2454007 (= res!1040600 (matchRSpec!1063 (regOne!14945 r!13927) s!9460))))

(assert (=> b!2454007 (=> res!1040600 e!1557263)))

(declare-fun b!2454008 () Bool)

(declare-fun c!391631 () Bool)

(assert (=> b!2454008 (= c!391631 (is-Union!7216 r!13927))))

(assert (=> b!2454008 (= e!1557259 e!1557264)))

(assert (= (and d!707101 c!391629) b!2453998))

(assert (= (and d!707101 (not c!391629)) b!2454003))

(assert (= (and b!2454003 res!1040602) b!2453999))

(assert (= (and b!2453999 c!391628) b!2454006))

(assert (= (and b!2453999 (not c!391628)) b!2454008))

(assert (= (and b!2454008 c!391631) b!2454007))

(assert (= (and b!2454008 (not c!391631)) b!2454002))

(assert (= (and b!2454007 (not res!1040600)) b!2454001))

(assert (= (and b!2454002 c!391630) b!2454004))

(assert (= (and b!2454002 (not c!391630)) b!2454000))

(assert (= (and b!2454004 (not res!1040601)) b!2454005))

(assert (= (or b!2454005 b!2454000) bm!150739))

(assert (= (or b!2453998 b!2454004) bm!150738))

(declare-fun m!2826159 () Bool)

(assert (=> b!2454001 m!2826159))

(assert (=> bm!150738 m!2826151))

(declare-fun m!2826161 () Bool)

(assert (=> bm!150739 m!2826161))

(declare-fun m!2826163 () Bool)

(assert (=> b!2454007 m!2826163))

(assert (=> b!2453756 d!707101))

(declare-fun d!707103 () Bool)

(assert (=> d!707103 (= (matchR!3331 r!13927 s!9460) (matchRSpec!1063 r!13927 s!9460))))

(declare-fun lt!880073 () Unit!41887)

(declare-fun choose!14539 (Regex!7216 List!28669) Unit!41887)

(assert (=> d!707103 (= lt!880073 (choose!14539 r!13927 s!9460))))

(assert (=> d!707103 (validRegex!2908 r!13927)))

(assert (=> d!707103 (= (mainMatchTheorem!1063 r!13927 s!9460) lt!880073)))

(declare-fun bs!465824 () Bool)

(assert (= bs!465824 d!707103))

(assert (=> bs!465824 m!2826035))

(assert (=> bs!465824 m!2826037))

(declare-fun m!2826183 () Bool)

(assert (=> bs!465824 m!2826183))

(assert (=> bs!465824 m!2826155))

(assert (=> b!2453756 d!707103))

(declare-fun bs!465825 () Bool)

(declare-fun d!707107 () Bool)

(assert (= bs!465825 (and d!707107 start!239492)))

(declare-fun lambda!92964 () Int)

(assert (=> bs!465825 (= lambda!92964 lambda!92948)))

(declare-fun bs!465826 () Bool)

(assert (= bs!465826 (and d!707107 d!707089)))

(assert (=> bs!465826 (= lambda!92964 lambda!92954)))

(declare-fun b!2454037 () Bool)

(declare-fun e!1557280 () Regex!7216)

(declare-fun e!1557282 () Regex!7216)

(assert (=> b!2454037 (= e!1557280 e!1557282)))

(declare-fun c!391639 () Bool)

(assert (=> b!2454037 (= c!391639 (is-Cons!28570 l!9164))))

(declare-fun b!2454038 () Bool)

(declare-fun e!1557278 () Bool)

(declare-fun lt!880074 () Regex!7216)

(assert (=> b!2454038 (= e!1557278 (= lt!880074 (head!5592 l!9164)))))

(declare-fun b!2454039 () Bool)

(declare-fun e!1557283 () Bool)

(assert (=> b!2454039 (= e!1557283 e!1557278)))

(declare-fun c!391641 () Bool)

(assert (=> b!2454039 (= c!391641 (isEmpty!16599 (tail!3865 l!9164)))))

(declare-fun b!2454040 () Bool)

(declare-fun e!1557279 () Bool)

(assert (=> b!2454040 (= e!1557279 (isEmpty!16599 (t!208645 l!9164)))))

(declare-fun b!2454041 () Bool)

(declare-fun e!1557281 () Bool)

(assert (=> b!2454041 (= e!1557281 e!1557283)))

(declare-fun c!391640 () Bool)

(assert (=> b!2454041 (= c!391640 (isEmpty!16599 l!9164))))

(declare-fun b!2454042 () Bool)

(assert (=> b!2454042 (= e!1557282 (Concat!11852 (h!33971 l!9164) (generalisedConcat!317 (t!208645 l!9164))))))

(declare-fun b!2454043 () Bool)

(assert (=> b!2454043 (= e!1557282 EmptyExpr!7216)))

(declare-fun b!2454044 () Bool)

(assert (=> b!2454044 (= e!1557280 (h!33971 l!9164))))

(declare-fun b!2454045 () Bool)

(assert (=> b!2454045 (= e!1557283 (isEmptyExpr!232 lt!880074))))

(assert (=> d!707107 e!1557281))

(declare-fun res!1040614 () Bool)

(assert (=> d!707107 (=> (not res!1040614) (not e!1557281))))

(assert (=> d!707107 (= res!1040614 (validRegex!2908 lt!880074))))

(assert (=> d!707107 (= lt!880074 e!1557280)))

(declare-fun c!391642 () Bool)

(assert (=> d!707107 (= c!391642 e!1557279)))

(declare-fun res!1040613 () Bool)

(assert (=> d!707107 (=> (not res!1040613) (not e!1557279))))

(assert (=> d!707107 (= res!1040613 (is-Cons!28570 l!9164))))

(assert (=> d!707107 (forall!5850 l!9164 lambda!92964)))

(assert (=> d!707107 (= (generalisedConcat!317 l!9164) lt!880074)))

(declare-fun b!2454046 () Bool)

(assert (=> b!2454046 (= e!1557278 (isConcat!232 lt!880074))))

(assert (= (and d!707107 res!1040613) b!2454040))

(assert (= (and d!707107 c!391642) b!2454044))

(assert (= (and d!707107 (not c!391642)) b!2454037))

(assert (= (and b!2454037 c!391639) b!2454042))

(assert (= (and b!2454037 (not c!391639)) b!2454043))

(assert (= (and d!707107 res!1040614) b!2454041))

(assert (= (and b!2454041 c!391640) b!2454045))

(assert (= (and b!2454041 (not c!391640)) b!2454039))

(assert (= (and b!2454039 c!391641) b!2454038))

(assert (= (and b!2454039 (not c!391641)) b!2454046))

(declare-fun m!2826193 () Bool)

(assert (=> b!2454042 m!2826193))

(declare-fun m!2826195 () Bool)

(assert (=> b!2454040 m!2826195))

(declare-fun m!2826197 () Bool)

(assert (=> d!707107 m!2826197))

(declare-fun m!2826199 () Bool)

(assert (=> d!707107 m!2826199))

(assert (=> b!2454039 m!2826043))

(assert (=> b!2454039 m!2826043))

(declare-fun m!2826201 () Bool)

(assert (=> b!2454039 m!2826201))

(declare-fun m!2826203 () Bool)

(assert (=> b!2454046 m!2826203))

(assert (=> b!2454041 m!2826047))

(declare-fun m!2826205 () Bool)

(assert (=> b!2454045 m!2826205))

(assert (=> b!2454038 m!2826051))

(assert (=> b!2453754 d!707107))

(declare-fun d!707111 () Bool)

(assert (=> d!707111 (= (isEmpty!16599 l!9164) (is-Nil!28570 l!9164))))

(assert (=> b!2453755 d!707111))

(declare-fun d!707113 () Bool)

(declare-fun res!1040619 () Bool)

(declare-fun e!1557288 () Bool)

(assert (=> d!707113 (=> res!1040619 e!1557288)))

(assert (=> d!707113 (= res!1040619 (is-Nil!28570 l!9164))))

(assert (=> d!707113 (= (forall!5850 l!9164 lambda!92948) e!1557288)))

(declare-fun b!2454051 () Bool)

(declare-fun e!1557289 () Bool)

(assert (=> b!2454051 (= e!1557288 e!1557289)))

(declare-fun res!1040620 () Bool)

(assert (=> b!2454051 (=> (not res!1040620) (not e!1557289))))

(declare-fun dynLambda!12271 (Int Regex!7216) Bool)

(assert (=> b!2454051 (= res!1040620 (dynLambda!12271 lambda!92948 (h!33971 l!9164)))))

(declare-fun b!2454052 () Bool)

(assert (=> b!2454052 (= e!1557289 (forall!5850 (t!208645 l!9164) lambda!92948))))

(assert (= (and d!707113 (not res!1040619)) b!2454051))

(assert (= (and b!2454051 res!1040620) b!2454052))

(declare-fun b_lambda!75135 () Bool)

(assert (=> (not b_lambda!75135) (not b!2454051)))

(declare-fun m!2826207 () Bool)

(assert (=> b!2454051 m!2826207))

(declare-fun m!2826209 () Bool)

(assert (=> b!2454052 m!2826209))

(assert (=> start!239492 d!707113))

(declare-fun d!707115 () Bool)

(declare-fun e!1557291 () Bool)

(assert (=> d!707115 e!1557291))

(declare-fun c!391645 () Bool)

(assert (=> d!707115 (= c!391645 (is-EmptyExpr!7216 lt!880037))))

(declare-fun lt!880075 () Bool)

(declare-fun e!1557293 () Bool)

(assert (=> d!707115 (= lt!880075 e!1557293)))

(declare-fun c!391644 () Bool)

(assert (=> d!707115 (= c!391644 (isEmpty!16602 s!9460))))

(assert (=> d!707115 (validRegex!2908 lt!880037)))

(assert (=> d!707115 (= (matchR!3331 lt!880037 s!9460) lt!880075)))

(declare-fun b!2454053 () Bool)

(assert (=> b!2454053 (= e!1557293 (matchR!3331 (derivativeStep!1867 lt!880037 (head!5594 s!9460)) (tail!3867 s!9460)))))

(declare-fun b!2454054 () Bool)

(declare-fun e!1557296 () Bool)

(declare-fun e!1557292 () Bool)

(assert (=> b!2454054 (= e!1557296 e!1557292)))

(declare-fun res!1040626 () Bool)

(assert (=> b!2454054 (=> res!1040626 e!1557292)))

(declare-fun call!150746 () Bool)

(assert (=> b!2454054 (= res!1040626 call!150746)))

(declare-fun b!2454055 () Bool)

(declare-fun res!1040627 () Bool)

(declare-fun e!1557294 () Bool)

(assert (=> b!2454055 (=> (not res!1040627) (not e!1557294))))

(assert (=> b!2454055 (= res!1040627 (isEmpty!16602 (tail!3867 s!9460)))))

(declare-fun b!2454056 () Bool)

(declare-fun res!1040625 () Bool)

(declare-fun e!1557290 () Bool)

(assert (=> b!2454056 (=> res!1040625 e!1557290)))

(assert (=> b!2454056 (= res!1040625 (not (is-ElementMatch!7216 lt!880037)))))

(declare-fun e!1557295 () Bool)

(assert (=> b!2454056 (= e!1557295 e!1557290)))

(declare-fun b!2454057 () Bool)

(assert (=> b!2454057 (= e!1557292 (not (= (head!5594 s!9460) (c!391574 lt!880037))))))

(declare-fun b!2454058 () Bool)

(declare-fun res!1040622 () Bool)

(assert (=> b!2454058 (=> res!1040622 e!1557292)))

(assert (=> b!2454058 (= res!1040622 (not (isEmpty!16602 (tail!3867 s!9460))))))

(declare-fun b!2454059 () Bool)

(assert (=> b!2454059 (= e!1557291 (= lt!880075 call!150746))))

(declare-fun b!2454060 () Bool)

(assert (=> b!2454060 (= e!1557290 e!1557296)))

(declare-fun res!1040621 () Bool)

(assert (=> b!2454060 (=> (not res!1040621) (not e!1557296))))

(assert (=> b!2454060 (= res!1040621 (not lt!880075))))

(declare-fun b!2454061 () Bool)

(assert (=> b!2454061 (= e!1557295 (not lt!880075))))

(declare-fun b!2454062 () Bool)

(declare-fun res!1040624 () Bool)

(assert (=> b!2454062 (=> (not res!1040624) (not e!1557294))))

(assert (=> b!2454062 (= res!1040624 (not call!150746))))

(declare-fun b!2454063 () Bool)

(assert (=> b!2454063 (= e!1557293 (nullable!2213 lt!880037))))

(declare-fun b!2454064 () Bool)

(declare-fun res!1040628 () Bool)

(assert (=> b!2454064 (=> res!1040628 e!1557290)))

(assert (=> b!2454064 (= res!1040628 e!1557294)))

(declare-fun res!1040623 () Bool)

(assert (=> b!2454064 (=> (not res!1040623) (not e!1557294))))

(assert (=> b!2454064 (= res!1040623 lt!880075)))

(declare-fun bm!150741 () Bool)

(assert (=> bm!150741 (= call!150746 (isEmpty!16602 s!9460))))

(declare-fun b!2454065 () Bool)

(assert (=> b!2454065 (= e!1557291 e!1557295)))

(declare-fun c!391643 () Bool)

(assert (=> b!2454065 (= c!391643 (is-EmptyLang!7216 lt!880037))))

(declare-fun b!2454066 () Bool)

(assert (=> b!2454066 (= e!1557294 (= (head!5594 s!9460) (c!391574 lt!880037)))))

(assert (= (and d!707115 c!391644) b!2454063))

(assert (= (and d!707115 (not c!391644)) b!2454053))

(assert (= (and d!707115 c!391645) b!2454059))

(assert (= (and d!707115 (not c!391645)) b!2454065))

(assert (= (and b!2454065 c!391643) b!2454061))

(assert (= (and b!2454065 (not c!391643)) b!2454056))

(assert (= (and b!2454056 (not res!1040625)) b!2454064))

(assert (= (and b!2454064 res!1040623) b!2454062))

(assert (= (and b!2454062 res!1040624) b!2454055))

(assert (= (and b!2454055 res!1040627) b!2454066))

(assert (= (and b!2454064 (not res!1040628)) b!2454060))

(assert (= (and b!2454060 res!1040621) b!2454054))

(assert (= (and b!2454054 (not res!1040626)) b!2454058))

(assert (= (and b!2454058 (not res!1040622)) b!2454057))

(assert (= (or b!2454059 b!2454054 b!2454062) bm!150741))

(assert (=> b!2454057 m!2826143))

(assert (=> b!2454053 m!2826143))

(assert (=> b!2454053 m!2826143))

(declare-fun m!2826211 () Bool)

(assert (=> b!2454053 m!2826211))

(assert (=> b!2454053 m!2826147))

(assert (=> b!2454053 m!2826211))

(assert (=> b!2454053 m!2826147))

(declare-fun m!2826213 () Bool)

(assert (=> b!2454053 m!2826213))

(assert (=> bm!150741 m!2826151))

(assert (=> b!2454055 m!2826147))

(assert (=> b!2454055 m!2826147))

(assert (=> b!2454055 m!2826153))

(assert (=> d!707115 m!2826151))

(assert (=> d!707115 m!2826031))

(assert (=> b!2454066 m!2826143))

(declare-fun m!2826215 () Bool)

(assert (=> b!2454063 m!2826215))

(assert (=> b!2454058 m!2826147))

(assert (=> b!2454058 m!2826147))

(assert (=> b!2454058 m!2826153))

(assert (=> b!2453760 d!707115))

(declare-fun d!707117 () Bool)

(assert (=> d!707117 (= (head!5592 l!9164) (h!33971 l!9164))))

(assert (=> b!2453760 d!707117))

(declare-fun call!150753 () Bool)

(declare-fun bm!150748 () Bool)

(declare-fun c!391650 () Bool)

(declare-fun c!391651 () Bool)

(assert (=> bm!150748 (= call!150753 (validRegex!2908 (ite c!391650 (reg!7545 lt!880037) (ite c!391651 (regTwo!14945 lt!880037) (regOne!14944 lt!880037)))))))

(declare-fun b!2454085 () Bool)

(declare-fun e!1557317 () Bool)

(declare-fun e!1557316 () Bool)

(assert (=> b!2454085 (= e!1557317 e!1557316)))

(declare-fun res!1040639 () Bool)

(assert (=> b!2454085 (=> (not res!1040639) (not e!1557316))))

(declare-fun call!150754 () Bool)

(assert (=> b!2454085 (= res!1040639 call!150754)))

(declare-fun bm!150749 () Bool)

(declare-fun call!150755 () Bool)

(assert (=> bm!150749 (= call!150755 (validRegex!2908 (ite c!391651 (regOne!14945 lt!880037) (regTwo!14944 lt!880037))))))

(declare-fun d!707119 () Bool)

(declare-fun res!1040642 () Bool)

(declare-fun e!1557315 () Bool)

(assert (=> d!707119 (=> res!1040642 e!1557315)))

(assert (=> d!707119 (= res!1040642 (is-ElementMatch!7216 lt!880037))))

(assert (=> d!707119 (= (validRegex!2908 lt!880037) e!1557315)))

(declare-fun b!2454086 () Bool)

(declare-fun e!1557311 () Bool)

(assert (=> b!2454086 (= e!1557315 e!1557311)))

(assert (=> b!2454086 (= c!391650 (is-Star!7216 lt!880037))))

(declare-fun b!2454087 () Bool)

(declare-fun e!1557312 () Bool)

(assert (=> b!2454087 (= e!1557312 call!150753)))

(declare-fun b!2454088 () Bool)

(declare-fun res!1040640 () Bool)

(declare-fun e!1557313 () Bool)

(assert (=> b!2454088 (=> (not res!1040640) (not e!1557313))))

(assert (=> b!2454088 (= res!1040640 call!150755)))

(declare-fun e!1557314 () Bool)

(assert (=> b!2454088 (= e!1557314 e!1557313)))

(declare-fun bm!150750 () Bool)

(assert (=> bm!150750 (= call!150754 call!150753)))

(declare-fun b!2454089 () Bool)

(assert (=> b!2454089 (= e!1557313 call!150754)))

(declare-fun b!2454090 () Bool)

(assert (=> b!2454090 (= e!1557311 e!1557312)))

(declare-fun res!1040643 () Bool)

(assert (=> b!2454090 (= res!1040643 (not (nullable!2213 (reg!7545 lt!880037))))))

(assert (=> b!2454090 (=> (not res!1040643) (not e!1557312))))

(declare-fun b!2454091 () Bool)

(assert (=> b!2454091 (= e!1557311 e!1557314)))

(assert (=> b!2454091 (= c!391651 (is-Union!7216 lt!880037))))

(declare-fun b!2454092 () Bool)

(declare-fun res!1040641 () Bool)

(assert (=> b!2454092 (=> res!1040641 e!1557317)))

(assert (=> b!2454092 (= res!1040641 (not (is-Concat!11852 lt!880037)))))

(assert (=> b!2454092 (= e!1557314 e!1557317)))

(declare-fun b!2454093 () Bool)

(assert (=> b!2454093 (= e!1557316 call!150755)))

(assert (= (and d!707119 (not res!1040642)) b!2454086))

(assert (= (and b!2454086 c!391650) b!2454090))

(assert (= (and b!2454086 (not c!391650)) b!2454091))

(assert (= (and b!2454090 res!1040643) b!2454087))

(assert (= (and b!2454091 c!391651) b!2454088))

(assert (= (and b!2454091 (not c!391651)) b!2454092))

(assert (= (and b!2454088 res!1040640) b!2454089))

(assert (= (and b!2454092 (not res!1040641)) b!2454085))

(assert (= (and b!2454085 res!1040639) b!2454093))

(assert (= (or b!2454088 b!2454093) bm!150749))

(assert (= (or b!2454089 b!2454085) bm!150750))

(assert (= (or b!2454087 bm!150750) bm!150748))

(declare-fun m!2826217 () Bool)

(assert (=> bm!150748 m!2826217))

(declare-fun m!2826219 () Bool)

(assert (=> bm!150749 m!2826219))

(declare-fun m!2826221 () Bool)

(assert (=> b!2454090 m!2826221))

(assert (=> b!2453759 d!707119))

(declare-fun b!2454107 () Bool)

(declare-fun e!1557320 () Bool)

(declare-fun tp!780566 () Bool)

(declare-fun tp!780565 () Bool)

(assert (=> b!2454107 (= e!1557320 (and tp!780566 tp!780565))))

(declare-fun b!2454104 () Bool)

(assert (=> b!2454104 (= e!1557320 tp_is_empty!11845)))

(declare-fun b!2454105 () Bool)

(declare-fun tp!780567 () Bool)

(declare-fun tp!780564 () Bool)

(assert (=> b!2454105 (= e!1557320 (and tp!780567 tp!780564))))

(assert (=> b!2453761 (= tp!780526 e!1557320)))

(declare-fun b!2454106 () Bool)

(declare-fun tp!780568 () Bool)

(assert (=> b!2454106 (= e!1557320 tp!780568)))

(assert (= (and b!2453761 (is-ElementMatch!7216 (regOne!14945 r!13927))) b!2454104))

(assert (= (and b!2453761 (is-Concat!11852 (regOne!14945 r!13927))) b!2454105))

(assert (= (and b!2453761 (is-Star!7216 (regOne!14945 r!13927))) b!2454106))

(assert (= (and b!2453761 (is-Union!7216 (regOne!14945 r!13927))) b!2454107))

(declare-fun b!2454111 () Bool)

(declare-fun e!1557321 () Bool)

(declare-fun tp!780571 () Bool)

(declare-fun tp!780570 () Bool)

(assert (=> b!2454111 (= e!1557321 (and tp!780571 tp!780570))))

(declare-fun b!2454108 () Bool)

(assert (=> b!2454108 (= e!1557321 tp_is_empty!11845)))

(declare-fun b!2454109 () Bool)

(declare-fun tp!780572 () Bool)

(declare-fun tp!780569 () Bool)

(assert (=> b!2454109 (= e!1557321 (and tp!780572 tp!780569))))

(assert (=> b!2453761 (= tp!780528 e!1557321)))

(declare-fun b!2454110 () Bool)

(declare-fun tp!780573 () Bool)

(assert (=> b!2454110 (= e!1557321 tp!780573)))

(assert (= (and b!2453761 (is-ElementMatch!7216 (regTwo!14945 r!13927))) b!2454108))

(assert (= (and b!2453761 (is-Concat!11852 (regTwo!14945 r!13927))) b!2454109))

(assert (= (and b!2453761 (is-Star!7216 (regTwo!14945 r!13927))) b!2454110))

(assert (= (and b!2453761 (is-Union!7216 (regTwo!14945 r!13927))) b!2454111))

(declare-fun b!2454115 () Bool)

(declare-fun e!1557322 () Bool)

(declare-fun tp!780576 () Bool)

(declare-fun tp!780575 () Bool)

(assert (=> b!2454115 (= e!1557322 (and tp!780576 tp!780575))))

(declare-fun b!2454112 () Bool)

(assert (=> b!2454112 (= e!1557322 tp_is_empty!11845)))

(declare-fun b!2454113 () Bool)

(declare-fun tp!780577 () Bool)

(declare-fun tp!780574 () Bool)

(assert (=> b!2454113 (= e!1557322 (and tp!780577 tp!780574))))

(assert (=> b!2453750 (= tp!780525 e!1557322)))

(declare-fun b!2454114 () Bool)

(declare-fun tp!780578 () Bool)

(assert (=> b!2454114 (= e!1557322 tp!780578)))

(assert (= (and b!2453750 (is-ElementMatch!7216 (h!33971 l!9164))) b!2454112))

(assert (= (and b!2453750 (is-Concat!11852 (h!33971 l!9164))) b!2454113))

(assert (= (and b!2453750 (is-Star!7216 (h!33971 l!9164))) b!2454114))

(assert (= (and b!2453750 (is-Union!7216 (h!33971 l!9164))) b!2454115))

(declare-fun b!2454124 () Bool)

(declare-fun e!1557326 () Bool)

(declare-fun tp!780583 () Bool)

(declare-fun tp!780584 () Bool)

(assert (=> b!2454124 (= e!1557326 (and tp!780583 tp!780584))))

(assert (=> b!2453750 (= tp!780523 e!1557326)))

(assert (= (and b!2453750 (is-Cons!28570 (t!208645 l!9164))) b!2454124))

(declare-fun b!2454128 () Bool)

(declare-fun e!1557328 () Bool)

(declare-fun tp!780587 () Bool)

(declare-fun tp!780586 () Bool)

(assert (=> b!2454128 (= e!1557328 (and tp!780587 tp!780586))))

(declare-fun b!2454125 () Bool)

(assert (=> b!2454125 (= e!1557328 tp_is_empty!11845)))

(declare-fun b!2454126 () Bool)

(declare-fun tp!780588 () Bool)

(declare-fun tp!780585 () Bool)

(assert (=> b!2454126 (= e!1557328 (and tp!780588 tp!780585))))

(assert (=> b!2453749 (= tp!780524 e!1557328)))

(declare-fun b!2454127 () Bool)

(declare-fun tp!780589 () Bool)

(assert (=> b!2454127 (= e!1557328 tp!780589)))

(assert (= (and b!2453749 (is-ElementMatch!7216 (regOne!14944 r!13927))) b!2454125))

(assert (= (and b!2453749 (is-Concat!11852 (regOne!14944 r!13927))) b!2454126))

(assert (= (and b!2453749 (is-Star!7216 (regOne!14944 r!13927))) b!2454127))

(assert (= (and b!2453749 (is-Union!7216 (regOne!14944 r!13927))) b!2454128))

(declare-fun b!2454132 () Bool)

(declare-fun e!1557329 () Bool)

(declare-fun tp!780592 () Bool)

(declare-fun tp!780591 () Bool)

(assert (=> b!2454132 (= e!1557329 (and tp!780592 tp!780591))))

(declare-fun b!2454129 () Bool)

(assert (=> b!2454129 (= e!1557329 tp_is_empty!11845)))

(declare-fun b!2454130 () Bool)

(declare-fun tp!780593 () Bool)

(declare-fun tp!780590 () Bool)

(assert (=> b!2454130 (= e!1557329 (and tp!780593 tp!780590))))

(assert (=> b!2453749 (= tp!780527 e!1557329)))

(declare-fun b!2454131 () Bool)

(declare-fun tp!780594 () Bool)

(assert (=> b!2454131 (= e!1557329 tp!780594)))

(assert (= (and b!2453749 (is-ElementMatch!7216 (regTwo!14944 r!13927))) b!2454129))

(assert (= (and b!2453749 (is-Concat!11852 (regTwo!14944 r!13927))) b!2454130))

(assert (= (and b!2453749 (is-Star!7216 (regTwo!14944 r!13927))) b!2454131))

(assert (= (and b!2453749 (is-Union!7216 (regTwo!14944 r!13927))) b!2454132))

(declare-fun b!2454136 () Bool)

(declare-fun e!1557332 () Bool)

(declare-fun tp!780597 () Bool)

(declare-fun tp!780596 () Bool)

(assert (=> b!2454136 (= e!1557332 (and tp!780597 tp!780596))))

(declare-fun b!2454133 () Bool)

(assert (=> b!2454133 (= e!1557332 tp_is_empty!11845)))

(declare-fun b!2454134 () Bool)

(declare-fun tp!780598 () Bool)

(declare-fun tp!780595 () Bool)

(assert (=> b!2454134 (= e!1557332 (and tp!780598 tp!780595))))

(assert (=> b!2453753 (= tp!780522 e!1557332)))

(declare-fun b!2454135 () Bool)

(declare-fun tp!780599 () Bool)

(assert (=> b!2454135 (= e!1557332 tp!780599)))

(assert (= (and b!2453753 (is-ElementMatch!7216 (reg!7545 r!13927))) b!2454133))

(assert (= (and b!2453753 (is-Concat!11852 (reg!7545 r!13927))) b!2454134))

(assert (= (and b!2453753 (is-Star!7216 (reg!7545 r!13927))) b!2454135))

(assert (= (and b!2453753 (is-Union!7216 (reg!7545 r!13927))) b!2454136))

(declare-fun b!2454151 () Bool)

(declare-fun e!1557339 () Bool)

(declare-fun tp!780602 () Bool)

(assert (=> b!2454151 (= e!1557339 (and tp_is_empty!11845 tp!780602))))

(assert (=> b!2453758 (= tp!780529 e!1557339)))

(assert (= (and b!2453758 (is-Cons!28571 (t!208646 s!9460))) b!2454151))

(declare-fun b_lambda!75137 () Bool)

(assert (= b_lambda!75135 (or start!239492 b_lambda!75137)))

(declare-fun bs!465827 () Bool)

(declare-fun d!707121 () Bool)

(assert (= bs!465827 (and d!707121 start!239492)))

(assert (=> bs!465827 (= (dynLambda!12271 lambda!92948 (h!33971 l!9164)) (validRegex!2908 (h!33971 l!9164)))))

(declare-fun m!2826223 () Bool)

(assert (=> bs!465827 m!2826223))

(assert (=> b!2454051 d!707121))

(push 1)

(assert (not b!2453937))

(assert (not b!2453882))

(assert (not bm!150749))

(assert (not b!2453828))

(assert (not bs!465827))

(assert (not b!2454109))

(assert (not b!2454046))

(assert (not d!707103))

(assert (not bm!150741))

(assert (not b!2453889))

(assert (not b!2453934))

(assert (not d!707089))

(assert (not b!2454136))

(assert (not bm!150733))

(assert (not b!2454038))

(assert (not b!2453932))

(assert (not b!2454107))

(assert (not b!2453883))

(assert (not b!2453881))

(assert (not b!2454039))

(assert (not bm!150738))

(assert (not b!2454045))

(assert (not b!2453831))

(assert (not b!2453827))

(assert (not b!2454040))

(assert (not b!2454151))

(assert (not b!2454126))

(assert (not b!2454055))

(assert (not b!2453888))

(assert (not b!2454066))

(assert (not d!707107))

(assert (not b!2454106))

(assert (not b!2454132))

(assert (not d!707083))

(assert (not b!2454042))

(assert tp_is_empty!11845)

(assert (not b!2454041))

(assert (not b!2453936))

(assert (not bm!150748))

(assert (not b!2453942))

(assert (not b!2453884))

(assert (not b!2454115))

(assert (not bm!150739))

(assert (not b!2454110))

(assert (not b!2454105))

(assert (not b!2453829))

(assert (not b_lambda!75137))

(assert (not b!2454111))

(assert (not b!2453835))

(assert (not b!2454124))

(assert (not b!2454114))

(assert (not d!707115))

(assert (not d!707095))

(assert (not b!2454090))

(assert (not d!707087))

(assert (not b!2454007))

(assert (not b!2454135))

(assert (not b!2453945))

(assert (not b!2454131))

(assert (not b!2454053))

(assert (not b!2454063))

(assert (not b!2453834))

(assert (not b!2454113))

(assert (not b!2453885))

(assert (not b!2454052))

(assert (not b!2454058))

(assert (not b!2454127))

(assert (not b!2454057))

(assert (not b!2454130))

(assert (not b!2454001))

(assert (not b!2454134))

(assert (not b!2454128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

