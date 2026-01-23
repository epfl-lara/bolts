; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728442 () Bool)

(assert start!728442)

(declare-fun b!7527948 () Bool)

(declare-fun res!3017111 () Bool)

(declare-fun e!4486925 () Bool)

(assert (=> b!7527948 (=> (not res!3017111) (not e!4486925))))

(declare-datatypes ((C!39990 0))(
  ( (C!39991 (val!30435 Int)) )
))
(declare-datatypes ((List!72715 0))(
  ( (Nil!72591) (Cons!72591 (h!79039 C!39990) (t!387422 List!72715)) )
))
(declare-fun returnP!57 () List!72715)

(declare-fun input!6727 () List!72715)

(declare-fun isPrefix!6038 (List!72715 List!72715) Bool)

(assert (=> b!7527948 (= res!3017111 (isPrefix!6038 returnP!57 input!6727))))

(declare-fun b!7527949 () Bool)

(declare-fun res!3017110 () Bool)

(declare-fun e!4486924 () Bool)

(assert (=> b!7527949 (=> (not res!3017110) (not e!4486924))))

(declare-datatypes ((Regex!19832 0))(
  ( (ElementMatch!19832 (c!1390527 C!39990)) (Concat!28677 (regOne!40176 Regex!19832) (regTwo!40176 Regex!19832)) (EmptyExpr!19832) (Star!19832 (reg!20161 Regex!19832)) (EmptyLang!19832) (Union!19832 (regOne!40177 Regex!19832) (regTwo!40177 Regex!19832)) )
))
(declare-fun baseR!93 () Regex!19832)

(declare-fun bigger!57 () List!72715)

(declare-fun matchR!9436 (Regex!19832 List!72715) Bool)

(assert (=> b!7527949 (= res!3017110 (matchR!9436 baseR!93 bigger!57))))

(declare-fun b!7527950 () Bool)

(declare-fun e!4486919 () Bool)

(declare-fun tp!2187900 () Bool)

(assert (=> b!7527950 (= e!4486919 tp!2187900)))

(declare-fun b!7527951 () Bool)

(declare-fun e!4486922 () Bool)

(declare-fun tp_is_empty!50019 () Bool)

(declare-fun tp!2187902 () Bool)

(assert (=> b!7527951 (= e!4486922 (and tp_is_empty!50019 tp!2187902))))

(declare-fun b!7527952 () Bool)

(declare-fun res!3017113 () Bool)

(assert (=> b!7527952 (=> (not res!3017113) (not e!4486924))))

(declare-fun lt!2639504 () Int)

(declare-fun lt!2639503 () Int)

(assert (=> b!7527952 (= res!3017113 (not (= lt!2639504 lt!2639503)))))

(declare-fun b!7527953 () Bool)

(declare-fun e!4486918 () Bool)

(declare-fun tp!2187905 () Bool)

(assert (=> b!7527953 (= e!4486918 (and tp_is_empty!50019 tp!2187905))))

(declare-fun b!7527954 () Bool)

(declare-fun e!4486920 () Bool)

(assert (=> b!7527954 (= e!4486925 e!4486920)))

(declare-fun res!3017108 () Bool)

(assert (=> b!7527954 (=> (not res!3017108) (not e!4486920))))

(assert (=> b!7527954 (= res!3017108 (>= lt!2639504 lt!2639503))))

(declare-fun size!42328 (List!72715) Int)

(assert (=> b!7527954 (= lt!2639503 (size!42328 returnP!57))))

(assert (=> b!7527954 (= lt!2639504 (size!42328 bigger!57))))

(declare-fun b!7527955 () Bool)

(declare-fun res!3017105 () Bool)

(assert (=> b!7527955 (=> (not res!3017105) (not e!4486924))))

(assert (=> b!7527955 (= res!3017105 (isPrefix!6038 Nil!72591 input!6727))))

(declare-fun res!3017112 () Bool)

(assert (=> start!728442 (=> (not res!3017112) (not e!4486925))))

(declare-fun validRegex!10260 (Regex!19832) Bool)

(assert (=> start!728442 (= res!3017112 (validRegex!10260 baseR!93))))

(assert (=> start!728442 e!4486925))

(assert (=> start!728442 e!4486919))

(assert (=> start!728442 e!4486918))

(declare-fun e!4486921 () Bool)

(assert (=> start!728442 e!4486921))

(assert (=> start!728442 e!4486922))

(declare-fun b!7527956 () Bool)

(declare-fun tp!2187901 () Bool)

(declare-fun tp!2187899 () Bool)

(assert (=> b!7527956 (= e!4486919 (and tp!2187901 tp!2187899))))

(declare-fun b!7527957 () Bool)

(declare-fun res!3017109 () Bool)

(assert (=> b!7527957 (=> (not res!3017109) (not e!4486925))))

(assert (=> b!7527957 (= res!3017109 (isPrefix!6038 bigger!57 input!6727))))

(declare-fun b!7527958 () Bool)

(declare-fun tp!2187904 () Bool)

(assert (=> b!7527958 (= e!4486921 (and tp_is_empty!50019 tp!2187904))))

(declare-fun b!7527959 () Bool)

(declare-fun e!4486923 () Bool)

(declare-fun derivative!376 (Regex!19832 List!72715) Regex!19832)

(assert (=> b!7527959 (= e!4486923 (= (derivative!376 baseR!93 Nil!72591) baseR!93))))

(declare-fun b!7527960 () Bool)

(declare-fun tp!2187898 () Bool)

(declare-fun tp!2187903 () Bool)

(assert (=> b!7527960 (= e!4486919 (and tp!2187898 tp!2187903))))

(declare-fun b!7527961 () Bool)

(assert (=> b!7527961 (= e!4486924 (not e!4486923))))

(declare-fun res!3017107 () Bool)

(assert (=> b!7527961 (=> res!3017107 e!4486923)))

(declare-fun getSuffix!3524 (List!72715 List!72715) List!72715)

(assert (=> b!7527961 (= res!3017107 (not (matchR!9436 baseR!93 (getSuffix!3524 bigger!57 Nil!72591))))))

(assert (=> b!7527961 (isPrefix!6038 Nil!72591 bigger!57)))

(declare-datatypes ((Unit!166568 0))(
  ( (Unit!166569) )
))
(declare-fun lt!2639505 () Unit!166568)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!794 (List!72715 List!72715 List!72715) Unit!166568)

(assert (=> b!7527961 (= lt!2639505 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!794 bigger!57 Nil!72591 input!6727))))

(declare-fun b!7527962 () Bool)

(assert (=> b!7527962 (= e!4486919 tp_is_empty!50019)))

(declare-fun b!7527963 () Bool)

(assert (=> b!7527963 (= e!4486920 e!4486924)))

(declare-fun res!3017106 () Bool)

(assert (=> b!7527963 (=> (not res!3017106) (not e!4486924))))

(declare-fun lt!2639506 () Int)

(declare-datatypes ((tuple2!68806 0))(
  ( (tuple2!68807 (_1!37706 List!72715) (_2!37706 List!72715)) )
))
(declare-fun findLongestMatchInner!2111 (Regex!19832 List!72715 Int List!72715 List!72715 Int) tuple2!68806)

(assert (=> b!7527963 (= res!3017106 (= (_1!37706 (findLongestMatchInner!2111 baseR!93 Nil!72591 lt!2639506 input!6727 input!6727 (size!42328 input!6727))) returnP!57))))

(assert (=> b!7527963 (= lt!2639506 (size!42328 Nil!72591))))

(declare-fun b!7527964 () Bool)

(declare-fun res!3017114 () Bool)

(assert (=> b!7527964 (=> (not res!3017114) (not e!4486924))))

(assert (=> b!7527964 (= res!3017114 (>= lt!2639504 lt!2639506))))

(assert (= (and start!728442 res!3017112) b!7527948))

(assert (= (and b!7527948 res!3017111) b!7527957))

(assert (= (and b!7527957 res!3017109) b!7527954))

(assert (= (and b!7527954 res!3017108) b!7527963))

(assert (= (and b!7527963 res!3017106) b!7527952))

(assert (= (and b!7527952 res!3017113) b!7527949))

(assert (= (and b!7527949 res!3017110) b!7527955))

(assert (= (and b!7527955 res!3017105) b!7527964))

(assert (= (and b!7527964 res!3017114) b!7527961))

(assert (= (and b!7527961 (not res!3017107)) b!7527959))

(assert (= (and start!728442 (is-ElementMatch!19832 baseR!93)) b!7527962))

(assert (= (and start!728442 (is-Concat!28677 baseR!93)) b!7527960))

(assert (= (and start!728442 (is-Star!19832 baseR!93)) b!7527950))

(assert (= (and start!728442 (is-Union!19832 baseR!93)) b!7527956))

(assert (= (and start!728442 (is-Cons!72591 returnP!57)) b!7527953))

(assert (= (and start!728442 (is-Cons!72591 input!6727)) b!7527958))

(assert (= (and start!728442 (is-Cons!72591 bigger!57)) b!7527951))

(declare-fun m!8102534 () Bool)

(assert (=> b!7527955 m!8102534))

(declare-fun m!8102536 () Bool)

(assert (=> b!7527963 m!8102536))

(assert (=> b!7527963 m!8102536))

(declare-fun m!8102538 () Bool)

(assert (=> b!7527963 m!8102538))

(declare-fun m!8102540 () Bool)

(assert (=> b!7527963 m!8102540))

(declare-fun m!8102542 () Bool)

(assert (=> b!7527959 m!8102542))

(declare-fun m!8102544 () Bool)

(assert (=> b!7527961 m!8102544))

(assert (=> b!7527961 m!8102544))

(declare-fun m!8102546 () Bool)

(assert (=> b!7527961 m!8102546))

(declare-fun m!8102548 () Bool)

(assert (=> b!7527961 m!8102548))

(declare-fun m!8102550 () Bool)

(assert (=> b!7527961 m!8102550))

(declare-fun m!8102552 () Bool)

(assert (=> b!7527957 m!8102552))

(declare-fun m!8102554 () Bool)

(assert (=> start!728442 m!8102554))

(declare-fun m!8102556 () Bool)

(assert (=> b!7527948 m!8102556))

(declare-fun m!8102558 () Bool)

(assert (=> b!7527949 m!8102558))

(declare-fun m!8102560 () Bool)

(assert (=> b!7527954 m!8102560))

(declare-fun m!8102562 () Bool)

(assert (=> b!7527954 m!8102562))

(push 1)

(assert (not b!7527958))

(assert (not b!7527948))

(assert (not b!7527955))

(assert tp_is_empty!50019)

(assert (not b!7527949))

(assert (not start!728442))

(assert (not b!7527959))

(assert (not b!7527957))

(assert (not b!7527960))

(assert (not b!7527961))

(assert (not b!7527963))

(assert (not b!7527950))

(assert (not b!7527954))

(assert (not b!7527953))

(assert (not b!7527951))

(assert (not b!7527956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7528050 () Bool)

(declare-fun e!4486969 () Bool)

(declare-fun nullable!8650 (Regex!19832) Bool)

(assert (=> b!7528050 (= e!4486969 (nullable!8650 baseR!93))))

(declare-fun b!7528051 () Bool)

(declare-fun e!4486973 () Bool)

(declare-fun head!15452 (List!72715) C!39990)

(assert (=> b!7528051 (= e!4486973 (not (= (head!15452 bigger!57) (c!1390527 baseR!93))))))

(declare-fun b!7528053 () Bool)

(declare-fun derivativeStep!5656 (Regex!19832 C!39990) Regex!19832)

(declare-fun tail!15012 (List!72715) List!72715)

(assert (=> b!7528053 (= e!4486969 (matchR!9436 (derivativeStep!5656 baseR!93 (head!15452 bigger!57)) (tail!15012 bigger!57)))))

(declare-fun b!7528054 () Bool)

(declare-fun res!3017164 () Bool)

(declare-fun e!4486971 () Bool)

(assert (=> b!7528054 (=> res!3017164 e!4486971)))

(assert (=> b!7528054 (= res!3017164 (not (is-ElementMatch!19832 baseR!93)))))

(declare-fun e!4486970 () Bool)

(assert (=> b!7528054 (= e!4486970 e!4486971)))

(declare-fun b!7528055 () Bool)

(declare-fun e!4486967 () Bool)

(assert (=> b!7528055 (= e!4486967 e!4486970)))

(declare-fun c!1390539 () Bool)

(assert (=> b!7528055 (= c!1390539 (is-EmptyLang!19832 baseR!93))))

(declare-fun b!7528056 () Bool)

(declare-fun e!4486972 () Bool)

(assert (=> b!7528056 (= e!4486971 e!4486972)))

(declare-fun res!3017161 () Bool)

(assert (=> b!7528056 (=> (not res!3017161) (not e!4486972))))

(declare-fun lt!2639524 () Bool)

(assert (=> b!7528056 (= res!3017161 (not lt!2639524))))

(declare-fun b!7528057 () Bool)

(declare-fun res!3017165 () Bool)

(declare-fun e!4486968 () Bool)

(assert (=> b!7528057 (=> (not res!3017165) (not e!4486968))))

(declare-fun isEmpty!41342 (List!72715) Bool)

(assert (=> b!7528057 (= res!3017165 (isEmpty!41342 (tail!15012 bigger!57)))))

(declare-fun b!7528058 () Bool)

(declare-fun call!690661 () Bool)

(assert (=> b!7528058 (= e!4486967 (= lt!2639524 call!690661))))

(declare-fun b!7528059 () Bool)

(assert (=> b!7528059 (= e!4486968 (= (head!15452 bigger!57) (c!1390527 baseR!93)))))

(declare-fun b!7528060 () Bool)

(declare-fun res!3017168 () Bool)

(assert (=> b!7528060 (=> res!3017168 e!4486973)))

(assert (=> b!7528060 (= res!3017168 (not (isEmpty!41342 (tail!15012 bigger!57))))))

(declare-fun b!7528061 () Bool)

(assert (=> b!7528061 (= e!4486972 e!4486973)))

(declare-fun res!3017166 () Bool)

(assert (=> b!7528061 (=> res!3017166 e!4486973)))

(assert (=> b!7528061 (= res!3017166 call!690661)))

(declare-fun bm!690656 () Bool)

(assert (=> bm!690656 (= call!690661 (isEmpty!41342 bigger!57))))

(declare-fun b!7528052 () Bool)

(declare-fun res!3017167 () Bool)

(assert (=> b!7528052 (=> (not res!3017167) (not e!4486968))))

(assert (=> b!7528052 (= res!3017167 (not call!690661))))

(declare-fun d!2309568 () Bool)

(assert (=> d!2309568 e!4486967))

(declare-fun c!1390538 () Bool)

(assert (=> d!2309568 (= c!1390538 (is-EmptyExpr!19832 baseR!93))))

(assert (=> d!2309568 (= lt!2639524 e!4486969)))

(declare-fun c!1390540 () Bool)

(assert (=> d!2309568 (= c!1390540 (isEmpty!41342 bigger!57))))

(assert (=> d!2309568 (validRegex!10260 baseR!93)))

(assert (=> d!2309568 (= (matchR!9436 baseR!93 bigger!57) lt!2639524)))

(declare-fun b!7528062 () Bool)

(assert (=> b!7528062 (= e!4486970 (not lt!2639524))))

(declare-fun b!7528063 () Bool)

(declare-fun res!3017163 () Bool)

(assert (=> b!7528063 (=> res!3017163 e!4486971)))

(assert (=> b!7528063 (= res!3017163 e!4486968)))

(declare-fun res!3017162 () Bool)

(assert (=> b!7528063 (=> (not res!3017162) (not e!4486968))))

(assert (=> b!7528063 (= res!3017162 lt!2639524)))

(assert (= (and d!2309568 c!1390540) b!7528050))

(assert (= (and d!2309568 (not c!1390540)) b!7528053))

(assert (= (and d!2309568 c!1390538) b!7528058))

(assert (= (and d!2309568 (not c!1390538)) b!7528055))

(assert (= (and b!7528055 c!1390539) b!7528062))

(assert (= (and b!7528055 (not c!1390539)) b!7528054))

(assert (= (and b!7528054 (not res!3017164)) b!7528063))

(assert (= (and b!7528063 res!3017162) b!7528052))

(assert (= (and b!7528052 res!3017167) b!7528057))

(assert (= (and b!7528057 res!3017165) b!7528059))

(assert (= (and b!7528063 (not res!3017163)) b!7528056))

(assert (= (and b!7528056 res!3017161) b!7528061))

(assert (= (and b!7528061 (not res!3017166)) b!7528060))

(assert (= (and b!7528060 (not res!3017168)) b!7528051))

(assert (= (or b!7528058 b!7528052 b!7528061) bm!690656))

(declare-fun m!8102600 () Bool)

(assert (=> bm!690656 m!8102600))

(declare-fun m!8102602 () Bool)

(assert (=> b!7528059 m!8102602))

(assert (=> b!7528053 m!8102602))

(assert (=> b!7528053 m!8102602))

(declare-fun m!8102604 () Bool)

(assert (=> b!7528053 m!8102604))

(declare-fun m!8102606 () Bool)

(assert (=> b!7528053 m!8102606))

(assert (=> b!7528053 m!8102604))

(assert (=> b!7528053 m!8102606))

(declare-fun m!8102608 () Bool)

(assert (=> b!7528053 m!8102608))

(assert (=> b!7528051 m!8102602))

(declare-fun m!8102610 () Bool)

(assert (=> b!7528050 m!8102610))

(assert (=> d!2309568 m!8102600))

(assert (=> d!2309568 m!8102554))

(assert (=> b!7528060 m!8102606))

(assert (=> b!7528060 m!8102606))

(declare-fun m!8102612 () Bool)

(assert (=> b!7528060 m!8102612))

(assert (=> b!7528057 m!8102606))

(assert (=> b!7528057 m!8102606))

(assert (=> b!7528057 m!8102612))

(assert (=> b!7527949 d!2309568))

(declare-fun bm!690663 () Bool)

(declare-fun call!690669 () Bool)

(declare-fun c!1390546 () Bool)

(assert (=> bm!690663 (= call!690669 (validRegex!10260 (ite c!1390546 (regTwo!40177 baseR!93) (regOne!40176 baseR!93))))))

(declare-fun b!7528082 () Bool)

(declare-fun e!4486990 () Bool)

(declare-fun e!4486993 () Bool)

(assert (=> b!7528082 (= e!4486990 e!4486993)))

(declare-fun res!3017181 () Bool)

(assert (=> b!7528082 (= res!3017181 (not (nullable!8650 (reg!20161 baseR!93))))))

(assert (=> b!7528082 (=> (not res!3017181) (not e!4486993))))

(declare-fun b!7528084 () Bool)

(declare-fun e!4486991 () Bool)

(declare-fun call!690670 () Bool)

(assert (=> b!7528084 (= e!4486991 call!690670)))

(declare-fun call!690668 () Bool)

(declare-fun bm!690664 () Bool)

(declare-fun c!1390545 () Bool)

(assert (=> bm!690664 (= call!690668 (validRegex!10260 (ite c!1390545 (reg!20161 baseR!93) (ite c!1390546 (regOne!40177 baseR!93) (regTwo!40176 baseR!93)))))))

(declare-fun b!7528085 () Bool)

(declare-fun e!4486988 () Bool)

(assert (=> b!7528085 (= e!4486988 call!690669)))

(declare-fun b!7528086 () Bool)

(assert (=> b!7528086 (= e!4486993 call!690668)))

(declare-fun b!7528087 () Bool)

(declare-fun res!3017182 () Bool)

(assert (=> b!7528087 (=> (not res!3017182) (not e!4486988))))

(assert (=> b!7528087 (= res!3017182 call!690670)))

(declare-fun e!4486989 () Bool)

(assert (=> b!7528087 (= e!4486989 e!4486988)))

(declare-fun b!7528088 () Bool)

(declare-fun e!4486994 () Bool)

(assert (=> b!7528088 (= e!4486994 e!4486991)))

(declare-fun res!3017180 () Bool)

(assert (=> b!7528088 (=> (not res!3017180) (not e!4486991))))

(assert (=> b!7528088 (= res!3017180 call!690669)))

(declare-fun bm!690665 () Bool)

(assert (=> bm!690665 (= call!690670 call!690668)))

(declare-fun b!7528089 () Bool)

(declare-fun e!4486992 () Bool)

(assert (=> b!7528089 (= e!4486992 e!4486990)))

(assert (=> b!7528089 (= c!1390545 (is-Star!19832 baseR!93))))

(declare-fun b!7528090 () Bool)

(assert (=> b!7528090 (= e!4486990 e!4486989)))

(assert (=> b!7528090 (= c!1390546 (is-Union!19832 baseR!93))))

(declare-fun d!2309574 () Bool)

(declare-fun res!3017179 () Bool)

(assert (=> d!2309574 (=> res!3017179 e!4486992)))

(assert (=> d!2309574 (= res!3017179 (is-ElementMatch!19832 baseR!93))))

(assert (=> d!2309574 (= (validRegex!10260 baseR!93) e!4486992)))

(declare-fun b!7528083 () Bool)

(declare-fun res!3017183 () Bool)

(assert (=> b!7528083 (=> res!3017183 e!4486994)))

(assert (=> b!7528083 (= res!3017183 (not (is-Concat!28677 baseR!93)))))

(assert (=> b!7528083 (= e!4486989 e!4486994)))

(assert (= (and d!2309574 (not res!3017179)) b!7528089))

(assert (= (and b!7528089 c!1390545) b!7528082))

(assert (= (and b!7528089 (not c!1390545)) b!7528090))

(assert (= (and b!7528082 res!3017181) b!7528086))

(assert (= (and b!7528090 c!1390546) b!7528087))

(assert (= (and b!7528090 (not c!1390546)) b!7528083))

(assert (= (and b!7528087 res!3017182) b!7528085))

(assert (= (and b!7528083 (not res!3017183)) b!7528088))

(assert (= (and b!7528088 res!3017180) b!7528084))

(assert (= (or b!7528085 b!7528088) bm!690663))

(assert (= (or b!7528087 b!7528084) bm!690665))

(assert (= (or b!7528086 bm!690665) bm!690664))

(declare-fun m!8102614 () Bool)

(assert (=> bm!690663 m!8102614))

(declare-fun m!8102616 () Bool)

(assert (=> b!7528082 m!8102616))

(declare-fun m!8102618 () Bool)

(assert (=> bm!690664 m!8102618))

(assert (=> start!728442 d!2309574))

(declare-fun d!2309576 () Bool)

(declare-fun lt!2639527 () Int)

(assert (=> d!2309576 (>= lt!2639527 0)))

(declare-fun e!4486997 () Int)

(assert (=> d!2309576 (= lt!2639527 e!4486997)))

(declare-fun c!1390549 () Bool)

(assert (=> d!2309576 (= c!1390549 (is-Nil!72591 returnP!57))))

(assert (=> d!2309576 (= (size!42328 returnP!57) lt!2639527)))

(declare-fun b!7528095 () Bool)

(assert (=> b!7528095 (= e!4486997 0)))

(declare-fun b!7528096 () Bool)

(assert (=> b!7528096 (= e!4486997 (+ 1 (size!42328 (t!387422 returnP!57))))))

(assert (= (and d!2309576 c!1390549) b!7528095))

(assert (= (and d!2309576 (not c!1390549)) b!7528096))

(declare-fun m!8102620 () Bool)

(assert (=> b!7528096 m!8102620))

(assert (=> b!7527954 d!2309576))

(declare-fun d!2309578 () Bool)

(declare-fun lt!2639528 () Int)

(assert (=> d!2309578 (>= lt!2639528 0)))

(declare-fun e!4486998 () Int)

(assert (=> d!2309578 (= lt!2639528 e!4486998)))

(declare-fun c!1390550 () Bool)

(assert (=> d!2309578 (= c!1390550 (is-Nil!72591 bigger!57))))

(assert (=> d!2309578 (= (size!42328 bigger!57) lt!2639528)))

(declare-fun b!7528097 () Bool)

(assert (=> b!7528097 (= e!4486998 0)))

(declare-fun b!7528098 () Bool)

(assert (=> b!7528098 (= e!4486998 (+ 1 (size!42328 (t!387422 bigger!57))))))

(assert (= (and d!2309578 c!1390550) b!7528097))

(assert (= (and d!2309578 (not c!1390550)) b!7528098))

(declare-fun m!8102622 () Bool)

(assert (=> b!7528098 m!8102622))

(assert (=> b!7527954 d!2309578))

(declare-fun b!7528109 () Bool)

(declare-fun e!4487005 () Bool)

(assert (=> b!7528109 (= e!4487005 (isPrefix!6038 (tail!15012 Nil!72591) (tail!15012 input!6727)))))

(declare-fun d!2309580 () Bool)

(declare-fun e!4487006 () Bool)

(assert (=> d!2309580 e!4487006))

(declare-fun res!3017193 () Bool)

(assert (=> d!2309580 (=> res!3017193 e!4487006)))

(declare-fun lt!2639531 () Bool)

(assert (=> d!2309580 (= res!3017193 (not lt!2639531))))

(declare-fun e!4487007 () Bool)

(assert (=> d!2309580 (= lt!2639531 e!4487007)))

(declare-fun res!3017194 () Bool)

(assert (=> d!2309580 (=> res!3017194 e!4487007)))

(assert (=> d!2309580 (= res!3017194 (is-Nil!72591 Nil!72591))))

(assert (=> d!2309580 (= (isPrefix!6038 Nil!72591 input!6727) lt!2639531)))

(declare-fun b!7528108 () Bool)

(declare-fun res!3017192 () Bool)

(assert (=> b!7528108 (=> (not res!3017192) (not e!4487005))))

(assert (=> b!7528108 (= res!3017192 (= (head!15452 Nil!72591) (head!15452 input!6727)))))

(declare-fun b!7528107 () Bool)

(assert (=> b!7528107 (= e!4487007 e!4487005)))

(declare-fun res!3017195 () Bool)

(assert (=> b!7528107 (=> (not res!3017195) (not e!4487005))))

(assert (=> b!7528107 (= res!3017195 (not (is-Nil!72591 input!6727)))))

(declare-fun b!7528110 () Bool)

(assert (=> b!7528110 (= e!4487006 (>= (size!42328 input!6727) (size!42328 Nil!72591)))))

(assert (= (and d!2309580 (not res!3017194)) b!7528107))

(assert (= (and b!7528107 res!3017195) b!7528108))

(assert (= (and b!7528108 res!3017192) b!7528109))

(assert (= (and d!2309580 (not res!3017193)) b!7528110))

(declare-fun m!8102624 () Bool)

(assert (=> b!7528109 m!8102624))

(declare-fun m!8102626 () Bool)

(assert (=> b!7528109 m!8102626))

(assert (=> b!7528109 m!8102624))

(assert (=> b!7528109 m!8102626))

(declare-fun m!8102628 () Bool)

(assert (=> b!7528109 m!8102628))

(declare-fun m!8102630 () Bool)

(assert (=> b!7528108 m!8102630))

(declare-fun m!8102632 () Bool)

(assert (=> b!7528108 m!8102632))

(assert (=> b!7528110 m!8102536))

(assert (=> b!7528110 m!8102540))

(assert (=> b!7527955 d!2309580))

(declare-fun d!2309582 () Bool)

(declare-fun lt!2639534 () Regex!19832)

(assert (=> d!2309582 (validRegex!10260 lt!2639534)))

(declare-fun e!4487010 () Regex!19832)

(assert (=> d!2309582 (= lt!2639534 e!4487010)))

(declare-fun c!1390553 () Bool)

(assert (=> d!2309582 (= c!1390553 (is-Cons!72591 Nil!72591))))

(assert (=> d!2309582 (validRegex!10260 baseR!93)))

(assert (=> d!2309582 (= (derivative!376 baseR!93 Nil!72591) lt!2639534)))

(declare-fun b!7528115 () Bool)

(assert (=> b!7528115 (= e!4487010 (derivative!376 (derivativeStep!5656 baseR!93 (h!79039 Nil!72591)) (t!387422 Nil!72591)))))

(declare-fun b!7528116 () Bool)

(assert (=> b!7528116 (= e!4487010 baseR!93)))

(assert (= (and d!2309582 c!1390553) b!7528115))

(assert (= (and d!2309582 (not c!1390553)) b!7528116))

(declare-fun m!8102634 () Bool)

(assert (=> d!2309582 m!8102634))

(assert (=> d!2309582 m!8102554))

(declare-fun m!8102636 () Bool)

(assert (=> b!7528115 m!8102636))

(assert (=> b!7528115 m!8102636))

(declare-fun m!8102638 () Bool)

(assert (=> b!7528115 m!8102638))

(assert (=> b!7527959 d!2309582))

(declare-fun b!7528119 () Bool)

(declare-fun e!4487011 () Bool)

(assert (=> b!7528119 (= e!4487011 (isPrefix!6038 (tail!15012 returnP!57) (tail!15012 input!6727)))))

(declare-fun d!2309584 () Bool)

(declare-fun e!4487012 () Bool)

(assert (=> d!2309584 e!4487012))

(declare-fun res!3017197 () Bool)

(assert (=> d!2309584 (=> res!3017197 e!4487012)))

(declare-fun lt!2639535 () Bool)

(assert (=> d!2309584 (= res!3017197 (not lt!2639535))))

(declare-fun e!4487013 () Bool)

(assert (=> d!2309584 (= lt!2639535 e!4487013)))

(declare-fun res!3017198 () Bool)

(assert (=> d!2309584 (=> res!3017198 e!4487013)))

(assert (=> d!2309584 (= res!3017198 (is-Nil!72591 returnP!57))))

(assert (=> d!2309584 (= (isPrefix!6038 returnP!57 input!6727) lt!2639535)))

(declare-fun b!7528118 () Bool)

(declare-fun res!3017196 () Bool)

(assert (=> b!7528118 (=> (not res!3017196) (not e!4487011))))

(assert (=> b!7528118 (= res!3017196 (= (head!15452 returnP!57) (head!15452 input!6727)))))

(declare-fun b!7528117 () Bool)

(assert (=> b!7528117 (= e!4487013 e!4487011)))

(declare-fun res!3017199 () Bool)

(assert (=> b!7528117 (=> (not res!3017199) (not e!4487011))))

(assert (=> b!7528117 (= res!3017199 (not (is-Nil!72591 input!6727)))))

(declare-fun b!7528120 () Bool)

(assert (=> b!7528120 (= e!4487012 (>= (size!42328 input!6727) (size!42328 returnP!57)))))

(assert (= (and d!2309584 (not res!3017198)) b!7528117))

(assert (= (and b!7528117 res!3017199) b!7528118))

(assert (= (and b!7528118 res!3017196) b!7528119))

(assert (= (and d!2309584 (not res!3017197)) b!7528120))

(declare-fun m!8102640 () Bool)

(assert (=> b!7528119 m!8102640))

(assert (=> b!7528119 m!8102626))

(assert (=> b!7528119 m!8102640))

(assert (=> b!7528119 m!8102626))

(declare-fun m!8102642 () Bool)

(assert (=> b!7528119 m!8102642))

(declare-fun m!8102644 () Bool)

(assert (=> b!7528118 m!8102644))

(assert (=> b!7528118 m!8102632))

(assert (=> b!7528120 m!8102536))

(assert (=> b!7528120 m!8102560))

(assert (=> b!7527948 d!2309584))

(declare-fun b!7528123 () Bool)

(declare-fun e!4487014 () Bool)

(assert (=> b!7528123 (= e!4487014 (isPrefix!6038 (tail!15012 bigger!57) (tail!15012 input!6727)))))

(declare-fun d!2309586 () Bool)

(declare-fun e!4487015 () Bool)

(assert (=> d!2309586 e!4487015))

(declare-fun res!3017201 () Bool)

(assert (=> d!2309586 (=> res!3017201 e!4487015)))

(declare-fun lt!2639536 () Bool)

(assert (=> d!2309586 (= res!3017201 (not lt!2639536))))

(declare-fun e!4487016 () Bool)

(assert (=> d!2309586 (= lt!2639536 e!4487016)))

(declare-fun res!3017202 () Bool)

(assert (=> d!2309586 (=> res!3017202 e!4487016)))

(assert (=> d!2309586 (= res!3017202 (is-Nil!72591 bigger!57))))

(assert (=> d!2309586 (= (isPrefix!6038 bigger!57 input!6727) lt!2639536)))

(declare-fun b!7528122 () Bool)

(declare-fun res!3017200 () Bool)

(assert (=> b!7528122 (=> (not res!3017200) (not e!4487014))))

(assert (=> b!7528122 (= res!3017200 (= (head!15452 bigger!57) (head!15452 input!6727)))))

(declare-fun b!7528121 () Bool)

(assert (=> b!7528121 (= e!4487016 e!4487014)))

(declare-fun res!3017203 () Bool)

(assert (=> b!7528121 (=> (not res!3017203) (not e!4487014))))

(assert (=> b!7528121 (= res!3017203 (not (is-Nil!72591 input!6727)))))

(declare-fun b!7528124 () Bool)

(assert (=> b!7528124 (= e!4487015 (>= (size!42328 input!6727) (size!42328 bigger!57)))))

(assert (= (and d!2309586 (not res!3017202)) b!7528121))

(assert (= (and b!7528121 res!3017203) b!7528122))

(assert (= (and b!7528122 res!3017200) b!7528123))

(assert (= (and d!2309586 (not res!3017201)) b!7528124))

(assert (=> b!7528123 m!8102606))

(assert (=> b!7528123 m!8102626))

(assert (=> b!7528123 m!8102606))

(assert (=> b!7528123 m!8102626))

(declare-fun m!8102646 () Bool)

(assert (=> b!7528123 m!8102646))

(assert (=> b!7528122 m!8102602))

(assert (=> b!7528122 m!8102632))

(assert (=> b!7528124 m!8102536))

(assert (=> b!7528124 m!8102562))

(assert (=> b!7527957 d!2309586))

(declare-fun bm!690682 () Bool)

(declare-fun call!690690 () List!72715)

(assert (=> bm!690682 (= call!690690 (tail!15012 input!6727))))

(declare-fun bm!690683 () Bool)

(declare-fun call!690692 () Regex!19832)

(declare-fun call!690694 () C!39990)

(assert (=> bm!690683 (= call!690692 (derivativeStep!5656 baseR!93 call!690694))))

(declare-fun b!7528153 () Bool)

(declare-fun e!4487036 () Bool)

(declare-fun lt!2639601 () tuple2!68806)

(assert (=> b!7528153 (= e!4487036 (>= (size!42328 (_1!37706 lt!2639601)) (size!42328 Nil!72591)))))

(declare-fun b!7528154 () Bool)

(declare-fun e!4487039 () tuple2!68806)

(declare-fun e!4487037 () tuple2!68806)

(assert (=> b!7528154 (= e!4487039 e!4487037)))

(declare-fun c!1390568 () Bool)

(assert (=> b!7528154 (= c!1390568 (= lt!2639506 (size!42328 input!6727)))))

(declare-fun b!7528155 () Bool)

(declare-fun e!4487033 () tuple2!68806)

(assert (=> b!7528155 (= e!4487033 (tuple2!68807 Nil!72591 Nil!72591))))

(declare-fun d!2309588 () Bool)

(declare-fun e!4487035 () Bool)

(assert (=> d!2309588 e!4487035))

(declare-fun res!3017209 () Bool)

(assert (=> d!2309588 (=> (not res!3017209) (not e!4487035))))

(declare-fun ++!17371 (List!72715 List!72715) List!72715)

(assert (=> d!2309588 (= res!3017209 (= (++!17371 (_1!37706 lt!2639601) (_2!37706 lt!2639601)) input!6727))))

(assert (=> d!2309588 (= lt!2639601 e!4487039)))

(declare-fun c!1390569 () Bool)

(declare-fun lostCause!1634 (Regex!19832) Bool)

(assert (=> d!2309588 (= c!1390569 (lostCause!1634 baseR!93))))

(declare-fun lt!2639611 () Unit!166568)

(declare-fun Unit!166572 () Unit!166568)

(assert (=> d!2309588 (= lt!2639611 Unit!166572)))

(assert (=> d!2309588 (= (getSuffix!3524 input!6727 Nil!72591) input!6727)))

(declare-fun lt!2639617 () Unit!166568)

(declare-fun lt!2639598 () Unit!166568)

(assert (=> d!2309588 (= lt!2639617 lt!2639598)))

(declare-fun lt!2639594 () List!72715)

(assert (=> d!2309588 (= input!6727 lt!2639594)))

(declare-fun lemmaSamePrefixThenSameSuffix!2818 (List!72715 List!72715 List!72715 List!72715 List!72715) Unit!166568)

(assert (=> d!2309588 (= lt!2639598 (lemmaSamePrefixThenSameSuffix!2818 Nil!72591 input!6727 Nil!72591 lt!2639594 input!6727))))

(assert (=> d!2309588 (= lt!2639594 (getSuffix!3524 input!6727 Nil!72591))))

(declare-fun lt!2639597 () Unit!166568)

(declare-fun lt!2639615 () Unit!166568)

(assert (=> d!2309588 (= lt!2639597 lt!2639615)))

(assert (=> d!2309588 (isPrefix!6038 Nil!72591 (++!17371 Nil!72591 input!6727))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3732 (List!72715 List!72715) Unit!166568)

(assert (=> d!2309588 (= lt!2639615 (lemmaConcatTwoListThenFirstIsPrefix!3732 Nil!72591 input!6727))))

(assert (=> d!2309588 (validRegex!10260 baseR!93)))

(assert (=> d!2309588 (= (findLongestMatchInner!2111 baseR!93 Nil!72591 lt!2639506 input!6727 input!6727 (size!42328 input!6727)) lt!2639601)))

(declare-fun b!7528156 () Bool)

(declare-fun c!1390566 () Bool)

(declare-fun call!690691 () Bool)

(assert (=> b!7528156 (= c!1390566 call!690691)))

(declare-fun lt!2639607 () Unit!166568)

(declare-fun lt!2639593 () Unit!166568)

(assert (=> b!7528156 (= lt!2639607 lt!2639593)))

(assert (=> b!7528156 (= input!6727 Nil!72591)))

(declare-fun call!690693 () Unit!166568)

(assert (=> b!7528156 (= lt!2639593 call!690693)))

(declare-fun lt!2639605 () Unit!166568)

(declare-fun lt!2639609 () Unit!166568)

(assert (=> b!7528156 (= lt!2639605 lt!2639609)))

(declare-fun call!690688 () Bool)

(assert (=> b!7528156 call!690688))

(declare-fun call!690687 () Unit!166568)

(assert (=> b!7528156 (= lt!2639609 call!690687)))

(assert (=> b!7528156 (= e!4487037 e!4487033)))

(declare-fun bm!690684 () Bool)

(assert (=> bm!690684 (= call!690694 (head!15452 input!6727))))

(declare-fun bm!690685 () Bool)

(assert (=> bm!690685 (= call!690691 (nullable!8650 baseR!93))))

(declare-fun bm!690686 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1510 (List!72715 List!72715 List!72715) Unit!166568)

(assert (=> bm!690686 (= call!690693 (lemmaIsPrefixSameLengthThenSameList!1510 input!6727 Nil!72591 input!6727))))

(declare-fun b!7528157 () Bool)

(declare-fun e!4487040 () Unit!166568)

(declare-fun Unit!166573 () Unit!166568)

(assert (=> b!7528157 (= e!4487040 Unit!166573)))

(declare-fun bm!690687 () Bool)

(assert (=> bm!690687 (= call!690688 (isPrefix!6038 input!6727 input!6727))))

(declare-fun b!7528158 () Bool)

(declare-fun c!1390571 () Bool)

(assert (=> b!7528158 (= c!1390571 call!690691)))

(declare-fun lt!2639612 () Unit!166568)

(declare-fun lt!2639613 () Unit!166568)

(assert (=> b!7528158 (= lt!2639612 lt!2639613)))

(declare-fun lt!2639620 () C!39990)

(declare-fun lt!2639599 () List!72715)

(assert (=> b!7528158 (= (++!17371 (++!17371 Nil!72591 (Cons!72591 lt!2639620 Nil!72591)) lt!2639599) input!6727)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3168 (List!72715 C!39990 List!72715 List!72715) Unit!166568)

(assert (=> b!7528158 (= lt!2639613 (lemmaMoveElementToOtherListKeepsConcatEq!3168 Nil!72591 lt!2639620 lt!2639599 input!6727))))

(assert (=> b!7528158 (= lt!2639599 (tail!15012 input!6727))))

(assert (=> b!7528158 (= lt!2639620 (head!15452 input!6727))))

(declare-fun lt!2639600 () Unit!166568)

(declare-fun lt!2639603 () Unit!166568)

(assert (=> b!7528158 (= lt!2639600 lt!2639603)))

(assert (=> b!7528158 (isPrefix!6038 (++!17371 Nil!72591 (Cons!72591 (head!15452 (getSuffix!3524 input!6727 Nil!72591)) Nil!72591)) input!6727)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1137 (List!72715 List!72715) Unit!166568)

(assert (=> b!7528158 (= lt!2639603 (lemmaAddHeadSuffixToPrefixStillPrefix!1137 Nil!72591 input!6727))))

(declare-fun lt!2639596 () Unit!166568)

(declare-fun lt!2639602 () Unit!166568)

(assert (=> b!7528158 (= lt!2639596 lt!2639602)))

(assert (=> b!7528158 (= lt!2639602 (lemmaAddHeadSuffixToPrefixStillPrefix!1137 Nil!72591 input!6727))))

(declare-fun lt!2639595 () List!72715)

(assert (=> b!7528158 (= lt!2639595 (++!17371 Nil!72591 (Cons!72591 (head!15452 input!6727) Nil!72591)))))

(declare-fun lt!2639614 () Unit!166568)

(assert (=> b!7528158 (= lt!2639614 e!4487040)))

(declare-fun c!1390570 () Bool)

(assert (=> b!7528158 (= c!1390570 (= (size!42328 Nil!72591) (size!42328 input!6727)))))

(declare-fun lt!2639604 () Unit!166568)

(declare-fun lt!2639619 () Unit!166568)

(assert (=> b!7528158 (= lt!2639604 lt!2639619)))

(assert (=> b!7528158 (<= (size!42328 Nil!72591) (size!42328 input!6727))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1007 (List!72715 List!72715) Unit!166568)

(assert (=> b!7528158 (= lt!2639619 (lemmaIsPrefixThenSmallerEqSize!1007 Nil!72591 input!6727))))

(declare-fun e!4487038 () tuple2!68806)

(assert (=> b!7528158 (= e!4487037 e!4487038)))

(declare-fun bm!690688 () Bool)

(declare-fun lemmaIsPrefixRefl!3859 (List!72715 List!72715) Unit!166568)

(assert (=> bm!690688 (= call!690687 (lemmaIsPrefixRefl!3859 input!6727 input!6727))))

(declare-fun bm!690689 () Bool)

(declare-fun call!690689 () tuple2!68806)

(assert (=> bm!690689 (= call!690689 (findLongestMatchInner!2111 call!690692 lt!2639595 (+ lt!2639506 1) call!690690 input!6727 (size!42328 input!6727)))))

(declare-fun b!7528159 () Bool)

(declare-fun Unit!166574 () Unit!166568)

(assert (=> b!7528159 (= e!4487040 Unit!166574)))

(declare-fun lt!2639608 () Unit!166568)

(assert (=> b!7528159 (= lt!2639608 call!690687)))

(assert (=> b!7528159 call!690688))

(declare-fun lt!2639616 () Unit!166568)

(assert (=> b!7528159 (= lt!2639616 lt!2639608)))

(declare-fun lt!2639618 () Unit!166568)

(assert (=> b!7528159 (= lt!2639618 call!690693)))

(assert (=> b!7528159 (= input!6727 Nil!72591)))

(declare-fun lt!2639610 () Unit!166568)

(assert (=> b!7528159 (= lt!2639610 lt!2639618)))

(assert (=> b!7528159 false))

(declare-fun b!7528160 () Bool)

(assert (=> b!7528160 (= e!4487039 (tuple2!68807 Nil!72591 input!6727))))

(declare-fun b!7528161 () Bool)

(assert (=> b!7528161 (= e!4487035 e!4487036)))

(declare-fun res!3017208 () Bool)

(assert (=> b!7528161 (=> res!3017208 e!4487036)))

(assert (=> b!7528161 (= res!3017208 (isEmpty!41342 (_1!37706 lt!2639601)))))

(declare-fun b!7528162 () Bool)

(assert (=> b!7528162 (= e!4487038 call!690689)))

(declare-fun b!7528163 () Bool)

(declare-fun e!4487034 () tuple2!68806)

(assert (=> b!7528163 (= e!4487038 e!4487034)))

(declare-fun lt!2639606 () tuple2!68806)

(assert (=> b!7528163 (= lt!2639606 call!690689)))

(declare-fun c!1390567 () Bool)

(assert (=> b!7528163 (= c!1390567 (isEmpty!41342 (_1!37706 lt!2639606)))))

(declare-fun b!7528164 () Bool)

(assert (=> b!7528164 (= e!4487033 (tuple2!68807 Nil!72591 input!6727))))

(declare-fun b!7528165 () Bool)

(assert (=> b!7528165 (= e!4487034 (tuple2!68807 Nil!72591 input!6727))))

(declare-fun b!7528166 () Bool)

(assert (=> b!7528166 (= e!4487034 lt!2639606)))

(assert (= (and d!2309588 c!1390569) b!7528160))

(assert (= (and d!2309588 (not c!1390569)) b!7528154))

(assert (= (and b!7528154 c!1390568) b!7528156))

(assert (= (and b!7528154 (not c!1390568)) b!7528158))

(assert (= (and b!7528156 c!1390566) b!7528155))

(assert (= (and b!7528156 (not c!1390566)) b!7528164))

(assert (= (and b!7528158 c!1390570) b!7528159))

(assert (= (and b!7528158 (not c!1390570)) b!7528157))

(assert (= (and b!7528158 c!1390571) b!7528163))

(assert (= (and b!7528158 (not c!1390571)) b!7528162))

(assert (= (and b!7528163 c!1390567) b!7528165))

(assert (= (and b!7528163 (not c!1390567)) b!7528166))

(assert (= (or b!7528163 b!7528162) bm!690684))

(assert (= (or b!7528163 b!7528162) bm!690682))

(assert (= (or b!7528163 b!7528162) bm!690683))

(assert (= (or b!7528163 b!7528162) bm!690689))

(assert (= (or b!7528156 b!7528159) bm!690687))

(assert (= (or b!7528156 b!7528158) bm!690685))

(assert (= (or b!7528156 b!7528159) bm!690686))

(assert (= (or b!7528156 b!7528159) bm!690688))

(assert (= (and d!2309588 res!3017209) b!7528161))

(assert (= (and b!7528161 (not res!3017208)) b!7528153))

(assert (=> b!7528158 m!8102632))

(assert (=> b!7528158 m!8102536))

(declare-fun m!8102648 () Bool)

(assert (=> b!7528158 m!8102648))

(declare-fun m!8102650 () Bool)

(assert (=> b!7528158 m!8102650))

(assert (=> b!7528158 m!8102540))

(declare-fun m!8102652 () Bool)

(assert (=> b!7528158 m!8102652))

(declare-fun m!8102654 () Bool)

(assert (=> b!7528158 m!8102654))

(declare-fun m!8102656 () Bool)

(assert (=> b!7528158 m!8102656))

(declare-fun m!8102658 () Bool)

(assert (=> b!7528158 m!8102658))

(declare-fun m!8102660 () Bool)

(assert (=> b!7528158 m!8102660))

(assert (=> b!7528158 m!8102654))

(declare-fun m!8102662 () Bool)

(assert (=> b!7528158 m!8102662))

(declare-fun m!8102664 () Bool)

(assert (=> b!7528158 m!8102664))

(declare-fun m!8102666 () Bool)

(assert (=> b!7528158 m!8102666))

(assert (=> b!7528158 m!8102664))

(assert (=> b!7528158 m!8102626))

(assert (=> b!7528158 m!8102658))

(declare-fun m!8102668 () Bool)

(assert (=> bm!690688 m!8102668))

(declare-fun m!8102670 () Bool)

(assert (=> bm!690686 m!8102670))

(declare-fun m!8102672 () Bool)

(assert (=> b!7528163 m!8102672))

(declare-fun m!8102674 () Bool)

(assert (=> d!2309588 m!8102674))

(assert (=> d!2309588 m!8102554))

(assert (=> d!2309588 m!8102658))

(declare-fun m!8102676 () Bool)

(assert (=> d!2309588 m!8102676))

(declare-fun m!8102678 () Bool)

(assert (=> d!2309588 m!8102678))

(declare-fun m!8102680 () Bool)

(assert (=> d!2309588 m!8102680))

(declare-fun m!8102682 () Bool)

(assert (=> d!2309588 m!8102682))

(assert (=> d!2309588 m!8102680))

(declare-fun m!8102684 () Bool)

(assert (=> d!2309588 m!8102684))

(declare-fun m!8102686 () Bool)

(assert (=> bm!690687 m!8102686))

(assert (=> bm!690682 m!8102626))

(declare-fun m!8102688 () Bool)

(assert (=> b!7528161 m!8102688))

(declare-fun m!8102690 () Bool)

(assert (=> bm!690683 m!8102690))

(assert (=> bm!690684 m!8102632))

(declare-fun m!8102692 () Bool)

(assert (=> b!7528153 m!8102692))

(assert (=> b!7528153 m!8102540))

(assert (=> bm!690685 m!8102610))

(assert (=> bm!690689 m!8102536))

(declare-fun m!8102694 () Bool)

(assert (=> bm!690689 m!8102694))

(assert (=> b!7527963 d!2309588))

(declare-fun d!2309590 () Bool)

(declare-fun lt!2639621 () Int)

(assert (=> d!2309590 (>= lt!2639621 0)))

(declare-fun e!4487041 () Int)

(assert (=> d!2309590 (= lt!2639621 e!4487041)))

(declare-fun c!1390572 () Bool)

(assert (=> d!2309590 (= c!1390572 (is-Nil!72591 input!6727))))

(assert (=> d!2309590 (= (size!42328 input!6727) lt!2639621)))

(declare-fun b!7528167 () Bool)

(assert (=> b!7528167 (= e!4487041 0)))

(declare-fun b!7528168 () Bool)

(assert (=> b!7528168 (= e!4487041 (+ 1 (size!42328 (t!387422 input!6727))))))

(assert (= (and d!2309590 c!1390572) b!7528167))

(assert (= (and d!2309590 (not c!1390572)) b!7528168))

(declare-fun m!8102696 () Bool)

(assert (=> b!7528168 m!8102696))

(assert (=> b!7527963 d!2309590))

(declare-fun d!2309592 () Bool)

(declare-fun lt!2639628 () Int)

(assert (=> d!2309592 (>= lt!2639628 0)))

(declare-fun e!4487042 () Int)

(assert (=> d!2309592 (= lt!2639628 e!4487042)))

(declare-fun c!1390573 () Bool)

(assert (=> d!2309592 (= c!1390573 (is-Nil!72591 Nil!72591))))

(assert (=> d!2309592 (= (size!42328 Nil!72591) lt!2639628)))

(declare-fun b!7528169 () Bool)

(assert (=> b!7528169 (= e!4487042 0)))

(declare-fun b!7528170 () Bool)

(assert (=> b!7528170 (= e!4487042 (+ 1 (size!42328 (t!387422 Nil!72591))))))

(assert (= (and d!2309592 c!1390573) b!7528169))

(assert (= (and d!2309592 (not c!1390573)) b!7528170))

(declare-fun m!8102698 () Bool)

(assert (=> b!7528170 m!8102698))

(assert (=> b!7527963 d!2309592))

(declare-fun b!7528171 () Bool)

(declare-fun e!4487045 () Bool)

(assert (=> b!7528171 (= e!4487045 (nullable!8650 baseR!93))))

(declare-fun b!7528172 () Bool)

(declare-fun e!4487049 () Bool)

(assert (=> b!7528172 (= e!4487049 (not (= (head!15452 (getSuffix!3524 bigger!57 Nil!72591)) (c!1390527 baseR!93))))))

(declare-fun b!7528174 () Bool)

(assert (=> b!7528174 (= e!4487045 (matchR!9436 (derivativeStep!5656 baseR!93 (head!15452 (getSuffix!3524 bigger!57 Nil!72591))) (tail!15012 (getSuffix!3524 bigger!57 Nil!72591))))))

(declare-fun b!7528175 () Bool)

(declare-fun res!3017213 () Bool)

(declare-fun e!4487047 () Bool)

(assert (=> b!7528175 (=> res!3017213 e!4487047)))

(assert (=> b!7528175 (= res!3017213 (not (is-ElementMatch!19832 baseR!93)))))

(declare-fun e!4487046 () Bool)

(assert (=> b!7528175 (= e!4487046 e!4487047)))

(declare-fun b!7528176 () Bool)

(declare-fun e!4487043 () Bool)

(assert (=> b!7528176 (= e!4487043 e!4487046)))

(declare-fun c!1390575 () Bool)

(assert (=> b!7528176 (= c!1390575 (is-EmptyLang!19832 baseR!93))))

(declare-fun b!7528177 () Bool)

(declare-fun e!4487048 () Bool)

(assert (=> b!7528177 (= e!4487047 e!4487048)))

(declare-fun res!3017210 () Bool)

(assert (=> b!7528177 (=> (not res!3017210) (not e!4487048))))

(declare-fun lt!2639629 () Bool)

(assert (=> b!7528177 (= res!3017210 (not lt!2639629))))

(declare-fun b!7528178 () Bool)

(declare-fun res!3017214 () Bool)

(declare-fun e!4487044 () Bool)

(assert (=> b!7528178 (=> (not res!3017214) (not e!4487044))))

(assert (=> b!7528178 (= res!3017214 (isEmpty!41342 (tail!15012 (getSuffix!3524 bigger!57 Nil!72591))))))

(declare-fun b!7528179 () Bool)

(declare-fun call!690695 () Bool)

(assert (=> b!7528179 (= e!4487043 (= lt!2639629 call!690695))))

(declare-fun b!7528180 () Bool)

(assert (=> b!7528180 (= e!4487044 (= (head!15452 (getSuffix!3524 bigger!57 Nil!72591)) (c!1390527 baseR!93)))))

(declare-fun b!7528181 () Bool)

(declare-fun res!3017217 () Bool)

(assert (=> b!7528181 (=> res!3017217 e!4487049)))

(assert (=> b!7528181 (= res!3017217 (not (isEmpty!41342 (tail!15012 (getSuffix!3524 bigger!57 Nil!72591)))))))

(declare-fun b!7528182 () Bool)

(assert (=> b!7528182 (= e!4487048 e!4487049)))

(declare-fun res!3017215 () Bool)

(assert (=> b!7528182 (=> res!3017215 e!4487049)))

(assert (=> b!7528182 (= res!3017215 call!690695)))

(declare-fun bm!690690 () Bool)

(assert (=> bm!690690 (= call!690695 (isEmpty!41342 (getSuffix!3524 bigger!57 Nil!72591)))))

(declare-fun b!7528173 () Bool)

(declare-fun res!3017216 () Bool)

(assert (=> b!7528173 (=> (not res!3017216) (not e!4487044))))

(assert (=> b!7528173 (= res!3017216 (not call!690695))))

(declare-fun d!2309594 () Bool)

(assert (=> d!2309594 e!4487043))

(declare-fun c!1390574 () Bool)

(assert (=> d!2309594 (= c!1390574 (is-EmptyExpr!19832 baseR!93))))

(assert (=> d!2309594 (= lt!2639629 e!4487045)))

(declare-fun c!1390576 () Bool)

(assert (=> d!2309594 (= c!1390576 (isEmpty!41342 (getSuffix!3524 bigger!57 Nil!72591)))))

(assert (=> d!2309594 (validRegex!10260 baseR!93)))

(assert (=> d!2309594 (= (matchR!9436 baseR!93 (getSuffix!3524 bigger!57 Nil!72591)) lt!2639629)))

(declare-fun b!7528183 () Bool)

(assert (=> b!7528183 (= e!4487046 (not lt!2639629))))

(declare-fun b!7528184 () Bool)

(declare-fun res!3017212 () Bool)

(assert (=> b!7528184 (=> res!3017212 e!4487047)))

(assert (=> b!7528184 (= res!3017212 e!4487044)))

(declare-fun res!3017211 () Bool)

(assert (=> b!7528184 (=> (not res!3017211) (not e!4487044))))

(assert (=> b!7528184 (= res!3017211 lt!2639629)))

(assert (= (and d!2309594 c!1390576) b!7528171))

(assert (= (and d!2309594 (not c!1390576)) b!7528174))

(assert (= (and d!2309594 c!1390574) b!7528179))

(assert (= (and d!2309594 (not c!1390574)) b!7528176))

(assert (= (and b!7528176 c!1390575) b!7528183))

(assert (= (and b!7528176 (not c!1390575)) b!7528175))

(assert (= (and b!7528175 (not res!3017213)) b!7528184))

(assert (= (and b!7528184 res!3017211) b!7528173))

(assert (= (and b!7528173 res!3017216) b!7528178))

(assert (= (and b!7528178 res!3017214) b!7528180))

(assert (= (and b!7528184 (not res!3017212)) b!7528177))

(assert (= (and b!7528177 res!3017210) b!7528182))

(assert (= (and b!7528182 (not res!3017215)) b!7528181))

(assert (= (and b!7528181 (not res!3017217)) b!7528172))

(assert (= (or b!7528179 b!7528173 b!7528182) bm!690690))

(assert (=> bm!690690 m!8102544))

(declare-fun m!8102700 () Bool)

(assert (=> bm!690690 m!8102700))

(assert (=> b!7528180 m!8102544))

(declare-fun m!8102702 () Bool)

(assert (=> b!7528180 m!8102702))

(assert (=> b!7528174 m!8102544))

(assert (=> b!7528174 m!8102702))

(assert (=> b!7528174 m!8102702))

(declare-fun m!8102704 () Bool)

(assert (=> b!7528174 m!8102704))

(assert (=> b!7528174 m!8102544))

(declare-fun m!8102706 () Bool)

(assert (=> b!7528174 m!8102706))

(assert (=> b!7528174 m!8102704))

(assert (=> b!7528174 m!8102706))

(declare-fun m!8102708 () Bool)

(assert (=> b!7528174 m!8102708))

(assert (=> b!7528172 m!8102544))

(assert (=> b!7528172 m!8102702))

(assert (=> b!7528171 m!8102610))

(assert (=> d!2309594 m!8102544))

(assert (=> d!2309594 m!8102700))

(assert (=> d!2309594 m!8102554))

(assert (=> b!7528181 m!8102544))

(assert (=> b!7528181 m!8102706))

(assert (=> b!7528181 m!8102706))

(declare-fun m!8102710 () Bool)

(assert (=> b!7528181 m!8102710))

(assert (=> b!7528178 m!8102544))

(assert (=> b!7528178 m!8102706))

(assert (=> b!7528178 m!8102706))

(assert (=> b!7528178 m!8102710))

(assert (=> b!7527961 d!2309594))

(declare-fun d!2309596 () Bool)

(declare-fun lt!2639672 () List!72715)

(assert (=> d!2309596 (= (++!17371 Nil!72591 lt!2639672) bigger!57)))

(declare-fun e!4487060 () List!72715)

(assert (=> d!2309596 (= lt!2639672 e!4487060)))

(declare-fun c!1390587 () Bool)

(assert (=> d!2309596 (= c!1390587 (is-Cons!72591 Nil!72591))))

(assert (=> d!2309596 (>= (size!42328 bigger!57) (size!42328 Nil!72591))))

(assert (=> d!2309596 (= (getSuffix!3524 bigger!57 Nil!72591) lt!2639672)))

(declare-fun b!7528205 () Bool)

(assert (=> b!7528205 (= e!4487060 (getSuffix!3524 (tail!15012 bigger!57) (t!387422 Nil!72591)))))

(declare-fun b!7528206 () Bool)

(assert (=> b!7528206 (= e!4487060 bigger!57)))

(assert (= (and d!2309596 c!1390587) b!7528205))

(assert (= (and d!2309596 (not c!1390587)) b!7528206))

(declare-fun m!8102712 () Bool)

(assert (=> d!2309596 m!8102712))

(assert (=> d!2309596 m!8102562))

(assert (=> d!2309596 m!8102540))

(assert (=> b!7528205 m!8102606))

(assert (=> b!7528205 m!8102606))

(declare-fun m!8102714 () Bool)

(assert (=> b!7528205 m!8102714))

(assert (=> b!7527961 d!2309596))

(declare-fun b!7528213 () Bool)

(declare-fun e!4487063 () Bool)

(assert (=> b!7528213 (= e!4487063 (isPrefix!6038 (tail!15012 Nil!72591) (tail!15012 bigger!57)))))

(declare-fun d!2309598 () Bool)

(declare-fun e!4487064 () Bool)

(assert (=> d!2309598 e!4487064))

(declare-fun res!3017219 () Bool)

(assert (=> d!2309598 (=> res!3017219 e!4487064)))

(declare-fun lt!2639681 () Bool)

(assert (=> d!2309598 (= res!3017219 (not lt!2639681))))

(declare-fun e!4487065 () Bool)

(assert (=> d!2309598 (= lt!2639681 e!4487065)))

(declare-fun res!3017220 () Bool)

(assert (=> d!2309598 (=> res!3017220 e!4487065)))

(assert (=> d!2309598 (= res!3017220 (is-Nil!72591 Nil!72591))))

(assert (=> d!2309598 (= (isPrefix!6038 Nil!72591 bigger!57) lt!2639681)))

(declare-fun b!7528212 () Bool)

(declare-fun res!3017218 () Bool)

(assert (=> b!7528212 (=> (not res!3017218) (not e!4487063))))

(assert (=> b!7528212 (= res!3017218 (= (head!15452 Nil!72591) (head!15452 bigger!57)))))

(declare-fun b!7528211 () Bool)

(assert (=> b!7528211 (= e!4487065 e!4487063)))

(declare-fun res!3017221 () Bool)

(assert (=> b!7528211 (=> (not res!3017221) (not e!4487063))))

(assert (=> b!7528211 (= res!3017221 (not (is-Nil!72591 bigger!57)))))

(declare-fun b!7528214 () Bool)

(assert (=> b!7528214 (= e!4487064 (>= (size!42328 bigger!57) (size!42328 Nil!72591)))))

(assert (= (and d!2309598 (not res!3017220)) b!7528211))

(assert (= (and b!7528211 res!3017221) b!7528212))

(assert (= (and b!7528212 res!3017218) b!7528213))

(assert (= (and d!2309598 (not res!3017219)) b!7528214))

(assert (=> b!7528213 m!8102624))

(assert (=> b!7528213 m!8102606))

(assert (=> b!7528213 m!8102624))

(assert (=> b!7528213 m!8102606))

(declare-fun m!8102716 () Bool)

(assert (=> b!7528213 m!8102716))

(assert (=> b!7528212 m!8102630))

(assert (=> b!7528212 m!8102602))

(assert (=> b!7528214 m!8102562))

(assert (=> b!7528214 m!8102540))

(assert (=> b!7527961 d!2309598))

(declare-fun d!2309600 () Bool)

(assert (=> d!2309600 (isPrefix!6038 Nil!72591 bigger!57)))

(declare-fun lt!2639686 () Unit!166568)

(declare-fun choose!58261 (List!72715 List!72715 List!72715) Unit!166568)

(assert (=> d!2309600 (= lt!2639686 (choose!58261 bigger!57 Nil!72591 input!6727))))

(assert (=> d!2309600 (isPrefix!6038 bigger!57 input!6727)))

(assert (=> d!2309600 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!794 bigger!57 Nil!72591 input!6727) lt!2639686)))

(declare-fun bs!1939785 () Bool)

(assert (= bs!1939785 d!2309600))

(assert (=> bs!1939785 m!8102548))

(declare-fun m!8102718 () Bool)

(assert (=> bs!1939785 m!8102718))

(assert (=> bs!1939785 m!8102552))

(assert (=> b!7527961 d!2309600))

(declare-fun b!7528232 () Bool)

(declare-fun e!4487070 () Bool)

(declare-fun tp!2187942 () Bool)

(declare-fun tp!2187943 () Bool)

(assert (=> b!7528232 (= e!4487070 (and tp!2187942 tp!2187943))))

(assert (=> b!7527960 (= tp!2187898 e!4487070)))

(declare-fun b!7528230 () Bool)

(declare-fun tp!2187944 () Bool)

(declare-fun tp!2187941 () Bool)

(assert (=> b!7528230 (= e!4487070 (and tp!2187944 tp!2187941))))

(declare-fun b!7528229 () Bool)

(assert (=> b!7528229 (= e!4487070 tp_is_empty!50019)))

(declare-fun b!7528231 () Bool)

(declare-fun tp!2187940 () Bool)

(assert (=> b!7528231 (= e!4487070 tp!2187940)))

(assert (= (and b!7527960 (is-ElementMatch!19832 (regOne!40176 baseR!93))) b!7528229))

(assert (= (and b!7527960 (is-Concat!28677 (regOne!40176 baseR!93))) b!7528230))

(assert (= (and b!7527960 (is-Star!19832 (regOne!40176 baseR!93))) b!7528231))

(assert (= (and b!7527960 (is-Union!19832 (regOne!40176 baseR!93))) b!7528232))

(declare-fun b!7528236 () Bool)

(declare-fun e!4487071 () Bool)

(declare-fun tp!2187947 () Bool)

(declare-fun tp!2187948 () Bool)

(assert (=> b!7528236 (= e!4487071 (and tp!2187947 tp!2187948))))

(assert (=> b!7527960 (= tp!2187903 e!4487071)))

(declare-fun b!7528234 () Bool)

(declare-fun tp!2187949 () Bool)

(declare-fun tp!2187946 () Bool)

(assert (=> b!7528234 (= e!4487071 (and tp!2187949 tp!2187946))))

(declare-fun b!7528233 () Bool)

(assert (=> b!7528233 (= e!4487071 tp_is_empty!50019)))

(declare-fun b!7528235 () Bool)

(declare-fun tp!2187945 () Bool)

(assert (=> b!7528235 (= e!4487071 tp!2187945)))

(assert (= (and b!7527960 (is-ElementMatch!19832 (regTwo!40176 baseR!93))) b!7528233))

(assert (= (and b!7527960 (is-Concat!28677 (regTwo!40176 baseR!93))) b!7528234))

(assert (= (and b!7527960 (is-Star!19832 (regTwo!40176 baseR!93))) b!7528235))

(assert (= (and b!7527960 (is-Union!19832 (regTwo!40176 baseR!93))) b!7528236))

(declare-fun b!7528241 () Bool)

(declare-fun e!4487074 () Bool)

(declare-fun tp!2187952 () Bool)

(assert (=> b!7528241 (= e!4487074 (and tp_is_empty!50019 tp!2187952))))

(assert (=> b!7527953 (= tp!2187905 e!4487074)))

(assert (= (and b!7527953 (is-Cons!72591 (t!387422 returnP!57))) b!7528241))

(declare-fun b!7528242 () Bool)

(declare-fun e!4487075 () Bool)

(declare-fun tp!2187953 () Bool)

(assert (=> b!7528242 (= e!4487075 (and tp_is_empty!50019 tp!2187953))))

(assert (=> b!7527958 (= tp!2187904 e!4487075)))

(assert (= (and b!7527958 (is-Cons!72591 (t!387422 input!6727))) b!7528242))

(declare-fun b!7528246 () Bool)

(declare-fun e!4487076 () Bool)

(declare-fun tp!2187956 () Bool)

(declare-fun tp!2187957 () Bool)

(assert (=> b!7528246 (= e!4487076 (and tp!2187956 tp!2187957))))

(assert (=> b!7527950 (= tp!2187900 e!4487076)))

(declare-fun b!7528244 () Bool)

(declare-fun tp!2187958 () Bool)

(declare-fun tp!2187955 () Bool)

(assert (=> b!7528244 (= e!4487076 (and tp!2187958 tp!2187955))))

(declare-fun b!7528243 () Bool)

(assert (=> b!7528243 (= e!4487076 tp_is_empty!50019)))

(declare-fun b!7528245 () Bool)

(declare-fun tp!2187954 () Bool)

(assert (=> b!7528245 (= e!4487076 tp!2187954)))

(assert (= (and b!7527950 (is-ElementMatch!19832 (reg!20161 baseR!93))) b!7528243))

(assert (= (and b!7527950 (is-Concat!28677 (reg!20161 baseR!93))) b!7528244))

(assert (= (and b!7527950 (is-Star!19832 (reg!20161 baseR!93))) b!7528245))

(assert (= (and b!7527950 (is-Union!19832 (reg!20161 baseR!93))) b!7528246))

(declare-fun b!7528247 () Bool)

(declare-fun e!4487077 () Bool)

(declare-fun tp!2187959 () Bool)

(assert (=> b!7528247 (= e!4487077 (and tp_is_empty!50019 tp!2187959))))

(assert (=> b!7527951 (= tp!2187902 e!4487077)))

(assert (= (and b!7527951 (is-Cons!72591 (t!387422 bigger!57))) b!7528247))

(declare-fun b!7528251 () Bool)

(declare-fun e!4487078 () Bool)

(declare-fun tp!2187962 () Bool)

(declare-fun tp!2187963 () Bool)

(assert (=> b!7528251 (= e!4487078 (and tp!2187962 tp!2187963))))

(assert (=> b!7527956 (= tp!2187901 e!4487078)))

(declare-fun b!7528249 () Bool)

(declare-fun tp!2187964 () Bool)

(declare-fun tp!2187961 () Bool)

(assert (=> b!7528249 (= e!4487078 (and tp!2187964 tp!2187961))))

(declare-fun b!7528248 () Bool)

(assert (=> b!7528248 (= e!4487078 tp_is_empty!50019)))

(declare-fun b!7528250 () Bool)

(declare-fun tp!2187960 () Bool)

(assert (=> b!7528250 (= e!4487078 tp!2187960)))

(assert (= (and b!7527956 (is-ElementMatch!19832 (regOne!40177 baseR!93))) b!7528248))

(assert (= (and b!7527956 (is-Concat!28677 (regOne!40177 baseR!93))) b!7528249))

(assert (= (and b!7527956 (is-Star!19832 (regOne!40177 baseR!93))) b!7528250))

(assert (= (and b!7527956 (is-Union!19832 (regOne!40177 baseR!93))) b!7528251))

(declare-fun b!7528255 () Bool)

(declare-fun e!4487079 () Bool)

(declare-fun tp!2187967 () Bool)

(declare-fun tp!2187968 () Bool)

(assert (=> b!7528255 (= e!4487079 (and tp!2187967 tp!2187968))))

(assert (=> b!7527956 (= tp!2187899 e!4487079)))

(declare-fun b!7528253 () Bool)

(declare-fun tp!2187969 () Bool)

(declare-fun tp!2187966 () Bool)

(assert (=> b!7528253 (= e!4487079 (and tp!2187969 tp!2187966))))

(declare-fun b!7528252 () Bool)

(assert (=> b!7528252 (= e!4487079 tp_is_empty!50019)))

(declare-fun b!7528254 () Bool)

(declare-fun tp!2187965 () Bool)

(assert (=> b!7528254 (= e!4487079 tp!2187965)))

(assert (= (and b!7527956 (is-ElementMatch!19832 (regTwo!40177 baseR!93))) b!7528252))

(assert (= (and b!7527956 (is-Concat!28677 (regTwo!40177 baseR!93))) b!7528253))

(assert (= (and b!7527956 (is-Star!19832 (regTwo!40177 baseR!93))) b!7528254))

(assert (= (and b!7527956 (is-Union!19832 (regTwo!40177 baseR!93))) b!7528255))

(push 1)

(assert (not bm!690687))

(assert (not b!7528180))

(assert (not b!7528168))

(assert (not d!2309600))

(assert (not bm!690684))

(assert (not b!7528059))

(assert (not bm!690688))

(assert (not b!7528246))

(assert (not b!7528245))

(assert (not b!7528153))

(assert (not b!7528242))

(assert (not b!7528212))

(assert (not bm!690664))

(assert (not b!7528251))

(assert (not bm!690690))

(assert (not b!7528170))

(assert (not b!7528110))

(assert (not bm!690683))

(assert (not b!7528060))

(assert (not b!7528171))

(assert (not d!2309582))

(assert (not b!7528244))

(assert (not d!2309568))

(assert (not d!2309594))

(assert (not b!7528250))

(assert (not b!7528096))

(assert (not bm!690663))

(assert (not b!7528241))

(assert (not b!7528122))

(assert (not b!7528115))

(assert (not bm!690682))

(assert (not b!7528051))

(assert (not b!7528247))

(assert tp_is_empty!50019)

(assert (not b!7528108))

(assert (not b!7528231))

(assert (not b!7528098))

(assert (not b!7528255))

(assert (not d!2309588))

(assert (not b!7528118))

(assert (not b!7528172))

(assert (not b!7528174))

(assert (not bm!690689))

(assert (not b!7528249))

(assert (not b!7528236))

(assert (not b!7528230))

(assert (not b!7528205))

(assert (not b!7528181))

(assert (not b!7528178))

(assert (not bm!690656))

(assert (not b!7528050))

(assert (not b!7528123))

(assert (not b!7528158))

(assert (not b!7528120))

(assert (not d!2309596))

(assert (not b!7528082))

(assert (not b!7528232))

(assert (not b!7528214))

(assert (not b!7528253))

(assert (not b!7528234))

(assert (not b!7528235))

(assert (not b!7528163))

(assert (not b!7528057))

(assert (not b!7528124))

(assert (not b!7528119))

(assert (not b!7528213))

(assert (not b!7528053))

(assert (not bm!690686))

(assert (not b!7528161))

(assert (not b!7528254))

(assert (not bm!690685))

(assert (not b!7528109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

