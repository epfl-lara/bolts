; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739988 () Bool)

(assert start!739988)

(declare-fun b!7770098 () Bool)

(declare-fun e!4603918 () Bool)

(declare-fun tp_is_empty!51867 () Bool)

(assert (=> b!7770098 (= e!4603918 tp_is_empty!51867)))

(declare-fun b!7770099 () Bool)

(declare-datatypes ((C!41838 0))(
  ( (C!41839 (val!31359 Int)) )
))
(declare-datatypes ((List!73597 0))(
  ( (Nil!73473) (Cons!73473 (h!79921 C!41838) (t!388332 List!73597)) )
))
(declare-fun s!14904 () List!73597)

(declare-datatypes ((Regex!20756 0))(
  ( (ElementMatch!20756 (c!1432085 C!41838)) (Concat!29601 (regOne!42024 Regex!20756) (regTwo!42024 Regex!20756)) (EmptyExpr!20756) (Star!20756 (reg!21085 Regex!20756)) (EmptyLang!20756) (Union!20756 (regOne!42025 Regex!20756) (regTwo!42025 Regex!20756)) )
))
(declare-fun r!25924 () Regex!20756)

(declare-datatypes ((tuple2!69854 0))(
  ( (tuple2!69855 (_1!38230 List!73597) (_2!38230 List!73597)) )
))
(declare-datatypes ((Option!17721 0))(
  ( (None!17720) (Some!17720 (v!54855 tuple2!69854)) )
))
(declare-fun lt!2671355 () Option!17721)

(declare-fun e!4603921 () Bool)

(declare-fun matchR!10218 (Regex!20756 List!73597) Bool)

(declare-fun get!26234 (Option!17721) tuple2!69854)

(assert (=> b!7770099 (= e!4603921 (matchR!10218 r!25924 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))

(declare-fun b!7770100 () Bool)

(declare-fun e!4603922 () Bool)

(declare-fun tp!2282738 () Bool)

(assert (=> b!7770100 (= e!4603922 (and tp_is_empty!51867 tp!2282738))))

(declare-fun res!3097407 () Bool)

(declare-fun e!4603919 () Bool)

(assert (=> start!739988 (=> (not res!3097407) (not e!4603919))))

(declare-fun lt!2671356 () Regex!20756)

(declare-fun validRegex!11170 (Regex!20756) Bool)

(assert (=> start!739988 (= res!3097407 (validRegex!11170 lt!2671356))))

(assert (=> start!739988 (= lt!2671356 (Star!20756 r!25924))))

(assert (=> start!739988 e!4603919))

(assert (=> start!739988 e!4603918))

(assert (=> start!739988 e!4603922))

(declare-fun b!7770101 () Bool)

(declare-fun tp!2282743 () Bool)

(declare-fun tp!2282740 () Bool)

(assert (=> b!7770101 (= e!4603918 (and tp!2282743 tp!2282740))))

(declare-fun b!7770102 () Bool)

(declare-fun e!4603920 () Bool)

(assert (=> b!7770102 (= e!4603920 (not e!4603921))))

(declare-fun res!3097411 () Bool)

(assert (=> b!7770102 (=> res!3097411 e!4603921)))

(assert (=> b!7770102 (= res!3097411 (not (validRegex!11170 r!25924)))))

(declare-fun isDefined!14333 (Option!17721) Bool)

(assert (=> b!7770102 (isDefined!14333 lt!2671355)))

(declare-fun lt!2671357 () Regex!20756)

(declare-fun findConcatSeparation!3751 (Regex!20756 Regex!20756 List!73597 List!73597 List!73597) Option!17721)

(assert (=> b!7770102 (= lt!2671355 (findConcatSeparation!3751 lt!2671357 lt!2671356 Nil!73473 (t!388332 s!14904) (t!388332 s!14904)))))

(declare-datatypes ((Unit!168450 0))(
  ( (Unit!168451) )
))
(declare-fun lt!2671358 () Unit!168450)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!341 (Regex!20756 Regex!20756 List!73597) Unit!168450)

(assert (=> b!7770102 (= lt!2671358 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!341 lt!2671357 lt!2671356 (t!388332 s!14904)))))

(declare-fun b!7770103 () Bool)

(declare-fun tp!2282741 () Bool)

(declare-fun tp!2282742 () Bool)

(assert (=> b!7770103 (= e!4603918 (and tp!2282741 tp!2282742))))

(declare-fun b!7770104 () Bool)

(declare-fun tp!2282739 () Bool)

(assert (=> b!7770104 (= e!4603918 tp!2282739)))

(declare-fun b!7770105 () Bool)

(assert (=> b!7770105 (= e!4603919 e!4603920)))

(declare-fun res!3097409 () Bool)

(assert (=> b!7770105 (=> (not res!3097409) (not e!4603920))))

(declare-fun derivativeStep!6101 (Regex!20756 C!41838) Regex!20756)

(assert (=> b!7770105 (= res!3097409 (= (derivativeStep!6101 lt!2671356 (h!79921 s!14904)) (Concat!29601 lt!2671357 lt!2671356)))))

(assert (=> b!7770105 (= lt!2671357 (derivativeStep!6101 r!25924 (h!79921 s!14904)))))

(declare-fun b!7770106 () Bool)

(declare-fun res!3097408 () Bool)

(assert (=> b!7770106 (=> (not res!3097408) (not e!4603919))))

(assert (=> b!7770106 (= res!3097408 (is-Cons!73473 s!14904))))

(declare-fun b!7770107 () Bool)

(declare-fun res!3097410 () Bool)

(assert (=> b!7770107 (=> (not res!3097410) (not e!4603919))))

(assert (=> b!7770107 (= res!3097410 (matchR!10218 lt!2671356 s!14904))))

(assert (= (and start!739988 res!3097407) b!7770107))

(assert (= (and b!7770107 res!3097410) b!7770106))

(assert (= (and b!7770106 res!3097408) b!7770105))

(assert (= (and b!7770105 res!3097409) b!7770102))

(assert (= (and b!7770102 (not res!3097411)) b!7770099))

(assert (= (and start!739988 (is-ElementMatch!20756 r!25924)) b!7770098))

(assert (= (and start!739988 (is-Concat!29601 r!25924)) b!7770101))

(assert (= (and start!739988 (is-Star!20756 r!25924)) b!7770104))

(assert (= (and start!739988 (is-Union!20756 r!25924)) b!7770103))

(assert (= (and start!739988 (is-Cons!73473 s!14904)) b!7770100))

(declare-fun m!8224322 () Bool)

(assert (=> b!7770102 m!8224322))

(declare-fun m!8224324 () Bool)

(assert (=> b!7770102 m!8224324))

(declare-fun m!8224326 () Bool)

(assert (=> b!7770102 m!8224326))

(declare-fun m!8224328 () Bool)

(assert (=> b!7770102 m!8224328))

(declare-fun m!8224330 () Bool)

(assert (=> start!739988 m!8224330))

(declare-fun m!8224332 () Bool)

(assert (=> b!7770105 m!8224332))

(declare-fun m!8224334 () Bool)

(assert (=> b!7770105 m!8224334))

(declare-fun m!8224336 () Bool)

(assert (=> b!7770099 m!8224336))

(declare-fun m!8224338 () Bool)

(assert (=> b!7770099 m!8224338))

(declare-fun m!8224340 () Bool)

(assert (=> b!7770107 m!8224340))

(push 1)

(assert (not b!7770102))

(assert (not b!7770107))

(assert (not start!739988))

(assert tp_is_empty!51867)

(assert (not b!7770104))

(assert (not b!7770103))

(assert (not b!7770100))

(assert (not b!7770105))

(assert (not b!7770099))

(assert (not b!7770101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7770182 () Bool)

(declare-fun res!3097452 () Bool)

(declare-fun e!4603965 () Bool)

(assert (=> b!7770182 (=> (not res!3097452) (not e!4603965))))

(declare-fun call!720057 () Bool)

(assert (=> b!7770182 (= res!3097452 (not call!720057))))

(declare-fun b!7770183 () Bool)

(declare-fun res!3097454 () Bool)

(declare-fun e!4603967 () Bool)

(assert (=> b!7770183 (=> res!3097454 e!4603967)))

(assert (=> b!7770183 (= res!3097454 e!4603965)))

(declare-fun res!3097459 () Bool)

(assert (=> b!7770183 (=> (not res!3097459) (not e!4603965))))

(declare-fun lt!2671373 () Bool)

(assert (=> b!7770183 (= res!3097459 lt!2671373)))

(declare-fun b!7770184 () Bool)

(declare-fun e!4603970 () Bool)

(assert (=> b!7770184 (= e!4603970 (= lt!2671373 call!720057))))

(declare-fun e!4603964 () Bool)

(declare-fun b!7770185 () Bool)

(declare-fun head!15883 (List!73597) C!41838)

(assert (=> b!7770185 (= e!4603964 (not (= (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))) (c!1432085 r!25924))))))

(declare-fun b!7770186 () Bool)

(assert (=> b!7770186 (= e!4603965 (= (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))) (c!1432085 r!25924)))))

(declare-fun b!7770187 () Bool)

(declare-fun res!3097456 () Bool)

(assert (=> b!7770187 (=> (not res!3097456) (not e!4603965))))

(declare-fun isEmpty!42143 (List!73597) Bool)

(declare-fun tail!15424 (List!73597) List!73597)

(assert (=> b!7770187 (= res!3097456 (isEmpty!42143 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))

(declare-fun b!7770189 () Bool)

(declare-fun e!4603971 () Bool)

(assert (=> b!7770189 (= e!4603971 (not lt!2671373))))

(declare-fun e!4603966 () Bool)

(declare-fun b!7770190 () Bool)

(assert (=> b!7770190 (= e!4603966 (matchR!10218 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))) (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))

(declare-fun b!7770191 () Bool)

(assert (=> b!7770191 (= e!4603970 e!4603971)))

(declare-fun c!1432099 () Bool)

(assert (=> b!7770191 (= c!1432099 (is-EmptyLang!20756 r!25924))))

(declare-fun b!7770192 () Bool)

(declare-fun nullable!9146 (Regex!20756) Bool)

(assert (=> b!7770192 (= e!4603966 (nullable!9146 r!25924))))

(declare-fun b!7770193 () Bool)

(declare-fun res!3097453 () Bool)

(assert (=> b!7770193 (=> res!3097453 e!4603967)))

(assert (=> b!7770193 (= res!3097453 (not (is-ElementMatch!20756 r!25924)))))

(assert (=> b!7770193 (= e!4603971 e!4603967)))

(declare-fun b!7770194 () Bool)

(declare-fun e!4603972 () Bool)

(assert (=> b!7770194 (= e!4603967 e!4603972)))

(declare-fun res!3097460 () Bool)

(assert (=> b!7770194 (=> (not res!3097460) (not e!4603972))))

(assert (=> b!7770194 (= res!3097460 (not lt!2671373))))

(declare-fun d!2344290 () Bool)

(assert (=> d!2344290 e!4603970))

(declare-fun c!1432097 () Bool)

(assert (=> d!2344290 (= c!1432097 (is-EmptyExpr!20756 r!25924))))

(assert (=> d!2344290 (= lt!2671373 e!4603966)))

(declare-fun c!1432098 () Bool)

(assert (=> d!2344290 (= c!1432098 (isEmpty!42143 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))

(assert (=> d!2344290 (validRegex!11170 r!25924)))

(assert (=> d!2344290 (= (matchR!10218 r!25924 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))) lt!2671373)))

(declare-fun b!7770188 () Bool)

(declare-fun res!3097451 () Bool)

(assert (=> b!7770188 (=> res!3097451 e!4603964)))

(assert (=> b!7770188 (= res!3097451 (not (isEmpty!42143 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))))

(declare-fun b!7770195 () Bool)

(assert (=> b!7770195 (= e!4603972 e!4603964)))

(declare-fun res!3097455 () Bool)

(assert (=> b!7770195 (=> res!3097455 e!4603964)))

(assert (=> b!7770195 (= res!3097455 call!720057)))

(declare-fun bm!720052 () Bool)

(assert (=> bm!720052 (= call!720057 (isEmpty!42143 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))

(assert (= (and d!2344290 c!1432098) b!7770192))

(assert (= (and d!2344290 (not c!1432098)) b!7770190))

(assert (= (and d!2344290 c!1432097) b!7770184))

(assert (= (and d!2344290 (not c!1432097)) b!7770191))

(assert (= (and b!7770191 c!1432099) b!7770189))

(assert (= (and b!7770191 (not c!1432099)) b!7770193))

(assert (= (and b!7770193 (not res!3097453)) b!7770183))

(assert (= (and b!7770183 res!3097459) b!7770182))

(assert (= (and b!7770182 res!3097452) b!7770187))

(assert (= (and b!7770187 res!3097456) b!7770186))

(assert (= (and b!7770183 (not res!3097454)) b!7770194))

(assert (= (and b!7770194 res!3097460) b!7770195))

(assert (= (and b!7770195 (not res!3097455)) b!7770188))

(assert (= (and b!7770188 (not res!3097451)) b!7770185))

(assert (= (or b!7770184 b!7770182 b!7770195) bm!720052))

(declare-fun m!8224362 () Bool)

(assert (=> b!7770185 m!8224362))

(assert (=> b!7770190 m!8224362))

(assert (=> b!7770190 m!8224362))

(declare-fun m!8224364 () Bool)

(assert (=> b!7770190 m!8224364))

(declare-fun m!8224366 () Bool)

(assert (=> b!7770190 m!8224366))

(assert (=> b!7770190 m!8224364))

(assert (=> b!7770190 m!8224366))

(declare-fun m!8224368 () Bool)

(assert (=> b!7770190 m!8224368))

(assert (=> b!7770187 m!8224366))

(assert (=> b!7770187 m!8224366))

(declare-fun m!8224370 () Bool)

(assert (=> b!7770187 m!8224370))

(declare-fun m!8224372 () Bool)

(assert (=> d!2344290 m!8224372))

(assert (=> d!2344290 m!8224322))

(assert (=> b!7770186 m!8224362))

(assert (=> b!7770188 m!8224366))

(assert (=> b!7770188 m!8224366))

(assert (=> b!7770188 m!8224370))

(declare-fun m!8224374 () Bool)

(assert (=> b!7770192 m!8224374))

(assert (=> bm!720052 m!8224372))

(assert (=> b!7770099 d!2344290))

(declare-fun d!2344294 () Bool)

(assert (=> d!2344294 (= (get!26234 lt!2671355) (v!54855 lt!2671355))))

(assert (=> b!7770099 d!2344294))

(declare-fun b!7770227 () Bool)

(declare-fun c!1432113 () Bool)

(assert (=> b!7770227 (= c!1432113 (is-Union!20756 lt!2671356))))

(declare-fun e!4603994 () Regex!20756)

(declare-fun e!4603993 () Regex!20756)

(assert (=> b!7770227 (= e!4603994 e!4603993)))

(declare-fun b!7770228 () Bool)

(declare-fun e!4603990 () Regex!20756)

(assert (=> b!7770228 (= e!4603990 e!4603994)))

(declare-fun c!1432112 () Bool)

(assert (=> b!7770228 (= c!1432112 (is-ElementMatch!20756 lt!2671356))))

(declare-fun b!7770230 () Bool)

(declare-fun c!1432115 () Bool)

(assert (=> b!7770230 (= c!1432115 (nullable!9146 (regOne!42024 lt!2671356)))))

(declare-fun e!4603991 () Regex!20756)

(declare-fun e!4603992 () Regex!20756)

(assert (=> b!7770230 (= e!4603991 e!4603992)))

(declare-fun b!7770231 () Bool)

(assert (=> b!7770231 (= e!4603990 EmptyLang!20756)))

(declare-fun b!7770232 () Bool)

(assert (=> b!7770232 (= e!4603993 e!4603991)))

(declare-fun c!1432114 () Bool)

(assert (=> b!7770232 (= c!1432114 (is-Star!20756 lt!2671356))))

(declare-fun b!7770233 () Bool)

(assert (=> b!7770233 (= e!4603994 (ite (= (h!79921 s!14904) (c!1432085 lt!2671356)) EmptyExpr!20756 EmptyLang!20756))))

(declare-fun call!720077 () Regex!20756)

(declare-fun bm!720070 () Bool)

(assert (=> bm!720070 (= call!720077 (derivativeStep!6101 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))) (h!79921 s!14904)))))

(declare-fun d!2344296 () Bool)

(declare-fun lt!2671376 () Regex!20756)

(assert (=> d!2344296 (validRegex!11170 lt!2671376)))

(assert (=> d!2344296 (= lt!2671376 e!4603990)))

(declare-fun c!1432116 () Bool)

(assert (=> d!2344296 (= c!1432116 (or (is-EmptyExpr!20756 lt!2671356) (is-EmptyLang!20756 lt!2671356)))))

(assert (=> d!2344296 (validRegex!11170 lt!2671356)))

(assert (=> d!2344296 (= (derivativeStep!6101 lt!2671356 (h!79921 s!14904)) lt!2671376)))

(declare-fun b!7770229 () Bool)

(declare-fun call!720078 () Regex!20756)

(declare-fun call!720075 () Regex!20756)

(assert (=> b!7770229 (= e!4603992 (Union!20756 (Concat!29601 call!720078 (regTwo!42024 lt!2671356)) call!720075))))

(declare-fun bm!720071 () Bool)

(declare-fun call!720076 () Regex!20756)

(assert (=> bm!720071 (= call!720078 call!720076)))

(declare-fun bm!720072 () Bool)

(assert (=> bm!720072 (= call!720076 call!720077)))

(declare-fun b!7770234 () Bool)

(assert (=> b!7770234 (= e!4603993 (Union!20756 call!720077 call!720075))))

(declare-fun b!7770235 () Bool)

(assert (=> b!7770235 (= e!4603991 (Concat!29601 call!720076 lt!2671356))))

(declare-fun bm!720073 () Bool)

(assert (=> bm!720073 (= call!720075 (derivativeStep!6101 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)) (h!79921 s!14904)))))

(declare-fun b!7770236 () Bool)

(assert (=> b!7770236 (= e!4603992 (Union!20756 (Concat!29601 call!720078 (regTwo!42024 lt!2671356)) EmptyLang!20756))))

(assert (= (and d!2344296 c!1432116) b!7770231))

(assert (= (and d!2344296 (not c!1432116)) b!7770228))

(assert (= (and b!7770228 c!1432112) b!7770233))

(assert (= (and b!7770228 (not c!1432112)) b!7770227))

(assert (= (and b!7770227 c!1432113) b!7770234))

(assert (= (and b!7770227 (not c!1432113)) b!7770232))

(assert (= (and b!7770232 c!1432114) b!7770235))

(assert (= (and b!7770232 (not c!1432114)) b!7770230))

(assert (= (and b!7770230 c!1432115) b!7770229))

(assert (= (and b!7770230 (not c!1432115)) b!7770236))

(assert (= (or b!7770229 b!7770236) bm!720071))

(assert (= (or b!7770235 bm!720071) bm!720072))

(assert (= (or b!7770234 b!7770229) bm!720073))

(assert (= (or b!7770234 bm!720072) bm!720070))

(declare-fun m!8224384 () Bool)

(assert (=> b!7770230 m!8224384))

(declare-fun m!8224386 () Bool)

(assert (=> bm!720070 m!8224386))

(declare-fun m!8224388 () Bool)

(assert (=> d!2344296 m!8224388))

(assert (=> d!2344296 m!8224330))

(declare-fun m!8224390 () Bool)

(assert (=> bm!720073 m!8224390))

(assert (=> b!7770105 d!2344296))

(declare-fun b!7770237 () Bool)

(declare-fun c!1432118 () Bool)

(assert (=> b!7770237 (= c!1432118 (is-Union!20756 r!25924))))

(declare-fun e!4603999 () Regex!20756)

(declare-fun e!4603998 () Regex!20756)

(assert (=> b!7770237 (= e!4603999 e!4603998)))

(declare-fun b!7770238 () Bool)

(declare-fun e!4603995 () Regex!20756)

(assert (=> b!7770238 (= e!4603995 e!4603999)))

(declare-fun c!1432117 () Bool)

(assert (=> b!7770238 (= c!1432117 (is-ElementMatch!20756 r!25924))))

(declare-fun b!7770240 () Bool)

(declare-fun c!1432120 () Bool)

(assert (=> b!7770240 (= c!1432120 (nullable!9146 (regOne!42024 r!25924)))))

(declare-fun e!4603996 () Regex!20756)

(declare-fun e!4603997 () Regex!20756)

(assert (=> b!7770240 (= e!4603996 e!4603997)))

(declare-fun b!7770241 () Bool)

(assert (=> b!7770241 (= e!4603995 EmptyLang!20756)))

(declare-fun b!7770242 () Bool)

(assert (=> b!7770242 (= e!4603998 e!4603996)))

(declare-fun c!1432119 () Bool)

(assert (=> b!7770242 (= c!1432119 (is-Star!20756 r!25924))))

(declare-fun b!7770243 () Bool)

(assert (=> b!7770243 (= e!4603999 (ite (= (h!79921 s!14904) (c!1432085 r!25924)) EmptyExpr!20756 EmptyLang!20756))))

(declare-fun call!720081 () Regex!20756)

(declare-fun bm!720074 () Bool)

(assert (=> bm!720074 (= call!720081 (derivativeStep!6101 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))) (h!79921 s!14904)))))

(declare-fun d!2344302 () Bool)

(declare-fun lt!2671377 () Regex!20756)

(assert (=> d!2344302 (validRegex!11170 lt!2671377)))

(assert (=> d!2344302 (= lt!2671377 e!4603995)))

(declare-fun c!1432121 () Bool)

(assert (=> d!2344302 (= c!1432121 (or (is-EmptyExpr!20756 r!25924) (is-EmptyLang!20756 r!25924)))))

(assert (=> d!2344302 (validRegex!11170 r!25924)))

(assert (=> d!2344302 (= (derivativeStep!6101 r!25924 (h!79921 s!14904)) lt!2671377)))

(declare-fun b!7770239 () Bool)

(declare-fun call!720082 () Regex!20756)

(declare-fun call!720079 () Regex!20756)

(assert (=> b!7770239 (= e!4603997 (Union!20756 (Concat!29601 call!720082 (regTwo!42024 r!25924)) call!720079))))

(declare-fun bm!720075 () Bool)

(declare-fun call!720080 () Regex!20756)

(assert (=> bm!720075 (= call!720082 call!720080)))

(declare-fun bm!720076 () Bool)

(assert (=> bm!720076 (= call!720080 call!720081)))

(declare-fun b!7770244 () Bool)

(assert (=> b!7770244 (= e!4603998 (Union!20756 call!720081 call!720079))))

(declare-fun b!7770245 () Bool)

(assert (=> b!7770245 (= e!4603996 (Concat!29601 call!720080 r!25924))))

(declare-fun bm!720077 () Bool)

(assert (=> bm!720077 (= call!720079 (derivativeStep!6101 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)) (h!79921 s!14904)))))

(declare-fun b!7770246 () Bool)

(assert (=> b!7770246 (= e!4603997 (Union!20756 (Concat!29601 call!720082 (regTwo!42024 r!25924)) EmptyLang!20756))))

(assert (= (and d!2344302 c!1432121) b!7770241))

(assert (= (and d!2344302 (not c!1432121)) b!7770238))

(assert (= (and b!7770238 c!1432117) b!7770243))

(assert (= (and b!7770238 (not c!1432117)) b!7770237))

(assert (= (and b!7770237 c!1432118) b!7770244))

(assert (= (and b!7770237 (not c!1432118)) b!7770242))

(assert (= (and b!7770242 c!1432119) b!7770245))

(assert (= (and b!7770242 (not c!1432119)) b!7770240))

(assert (= (and b!7770240 c!1432120) b!7770239))

(assert (= (and b!7770240 (not c!1432120)) b!7770246))

(assert (= (or b!7770239 b!7770246) bm!720075))

(assert (= (or b!7770245 bm!720075) bm!720076))

(assert (= (or b!7770244 b!7770239) bm!720077))

(assert (= (or b!7770244 bm!720076) bm!720074))

(declare-fun m!8224392 () Bool)

(assert (=> b!7770240 m!8224392))

(declare-fun m!8224394 () Bool)

(assert (=> bm!720074 m!8224394))

(declare-fun m!8224396 () Bool)

(assert (=> d!2344302 m!8224396))

(assert (=> d!2344302 m!8224322))

(declare-fun m!8224398 () Bool)

(assert (=> bm!720077 m!8224398))

(assert (=> b!7770105 d!2344302))

(declare-fun b!7770265 () Bool)

(declare-fun e!4604014 () Bool)

(declare-fun call!720089 () Bool)

(assert (=> b!7770265 (= e!4604014 call!720089)))

(declare-fun c!1432127 () Bool)

(declare-fun c!1432126 () Bool)

(declare-fun bm!720084 () Bool)

(assert (=> bm!720084 (= call!720089 (validRegex!11170 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))))))

(declare-fun b!7770266 () Bool)

(declare-fun e!4604020 () Bool)

(declare-fun call!720091 () Bool)

(assert (=> b!7770266 (= e!4604020 call!720091)))

(declare-fun b!7770267 () Bool)

(declare-fun e!4604018 () Bool)

(assert (=> b!7770267 (= e!4604018 e!4604020)))

(declare-fun res!3097480 () Bool)

(assert (=> b!7770267 (=> (not res!3097480) (not e!4604020))))

(declare-fun call!720090 () Bool)

(assert (=> b!7770267 (= res!3097480 call!720090)))

(declare-fun b!7770268 () Bool)

(declare-fun e!4604016 () Bool)

(assert (=> b!7770268 (= e!4604016 e!4604014)))

(declare-fun res!3097478 () Bool)

(assert (=> b!7770268 (= res!3097478 (not (nullable!9146 (reg!21085 lt!2671356))))))

(assert (=> b!7770268 (=> (not res!3097478) (not e!4604014))))

(declare-fun b!7770269 () Bool)

(declare-fun res!3097477 () Bool)

(declare-fun e!4604019 () Bool)

(assert (=> b!7770269 (=> (not res!3097477) (not e!4604019))))

(assert (=> b!7770269 (= res!3097477 call!720091)))

(declare-fun e!4604015 () Bool)

(assert (=> b!7770269 (= e!4604015 e!4604019)))

(declare-fun b!7770270 () Bool)

(assert (=> b!7770270 (= e!4604016 e!4604015)))

(assert (=> b!7770270 (= c!1432127 (is-Union!20756 lt!2671356))))

(declare-fun b!7770271 () Bool)

(declare-fun e!4604017 () Bool)

(assert (=> b!7770271 (= e!4604017 e!4604016)))

(assert (=> b!7770271 (= c!1432126 (is-Star!20756 lt!2671356))))

(declare-fun b!7770272 () Bool)

(assert (=> b!7770272 (= e!4604019 call!720090)))

(declare-fun b!7770273 () Bool)

(declare-fun res!3097479 () Bool)

(assert (=> b!7770273 (=> res!3097479 e!4604018)))

(assert (=> b!7770273 (= res!3097479 (not (is-Concat!29601 lt!2671356)))))

(assert (=> b!7770273 (= e!4604015 e!4604018)))

(declare-fun bm!720086 () Bool)

(assert (=> bm!720086 (= call!720091 call!720089)))

(declare-fun bm!720085 () Bool)

(assert (=> bm!720085 (= call!720090 (validRegex!11170 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))))))

(declare-fun d!2344304 () Bool)

(declare-fun res!3097476 () Bool)

(assert (=> d!2344304 (=> res!3097476 e!4604017)))

(assert (=> d!2344304 (= res!3097476 (is-ElementMatch!20756 lt!2671356))))

(assert (=> d!2344304 (= (validRegex!11170 lt!2671356) e!4604017)))

(assert (= (and d!2344304 (not res!3097476)) b!7770271))

(assert (= (and b!7770271 c!1432126) b!7770268))

(assert (= (and b!7770271 (not c!1432126)) b!7770270))

(assert (= (and b!7770268 res!3097478) b!7770265))

(assert (= (and b!7770270 c!1432127) b!7770269))

(assert (= (and b!7770270 (not c!1432127)) b!7770273))

(assert (= (and b!7770269 res!3097477) b!7770272))

(assert (= (and b!7770273 (not res!3097479)) b!7770267))

(assert (= (and b!7770267 res!3097480) b!7770266))

(assert (= (or b!7770272 b!7770267) bm!720085))

(assert (= (or b!7770269 b!7770266) bm!720086))

(assert (= (or b!7770265 bm!720086) bm!720084))

(declare-fun m!8224400 () Bool)

(assert (=> bm!720084 m!8224400))

(declare-fun m!8224402 () Bool)

(assert (=> b!7770268 m!8224402))

(declare-fun m!8224404 () Bool)

(assert (=> bm!720085 m!8224404))

(assert (=> start!739988 d!2344304))

(declare-fun b!7770274 () Bool)

(declare-fun e!4604021 () Bool)

(declare-fun call!720092 () Bool)

(assert (=> b!7770274 (= e!4604021 call!720092)))

(declare-fun c!1432128 () Bool)

(declare-fun c!1432129 () Bool)

(declare-fun bm!720087 () Bool)

(assert (=> bm!720087 (= call!720092 (validRegex!11170 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))))))

(declare-fun b!7770275 () Bool)

(declare-fun e!4604027 () Bool)

(declare-fun call!720094 () Bool)

(assert (=> b!7770275 (= e!4604027 call!720094)))

(declare-fun b!7770276 () Bool)

(declare-fun e!4604025 () Bool)

(assert (=> b!7770276 (= e!4604025 e!4604027)))

(declare-fun res!3097485 () Bool)

(assert (=> b!7770276 (=> (not res!3097485) (not e!4604027))))

(declare-fun call!720093 () Bool)

(assert (=> b!7770276 (= res!3097485 call!720093)))

(declare-fun b!7770277 () Bool)

(declare-fun e!4604023 () Bool)

(assert (=> b!7770277 (= e!4604023 e!4604021)))

(declare-fun res!3097483 () Bool)

(assert (=> b!7770277 (= res!3097483 (not (nullable!9146 (reg!21085 r!25924))))))

(assert (=> b!7770277 (=> (not res!3097483) (not e!4604021))))

(declare-fun b!7770278 () Bool)

(declare-fun res!3097482 () Bool)

(declare-fun e!4604026 () Bool)

(assert (=> b!7770278 (=> (not res!3097482) (not e!4604026))))

(assert (=> b!7770278 (= res!3097482 call!720094)))

(declare-fun e!4604022 () Bool)

(assert (=> b!7770278 (= e!4604022 e!4604026)))

(declare-fun b!7770279 () Bool)

(assert (=> b!7770279 (= e!4604023 e!4604022)))

(assert (=> b!7770279 (= c!1432129 (is-Union!20756 r!25924))))

(declare-fun b!7770280 () Bool)

(declare-fun e!4604024 () Bool)

(assert (=> b!7770280 (= e!4604024 e!4604023)))

(assert (=> b!7770280 (= c!1432128 (is-Star!20756 r!25924))))

(declare-fun b!7770281 () Bool)

(assert (=> b!7770281 (= e!4604026 call!720093)))

(declare-fun b!7770282 () Bool)

(declare-fun res!3097484 () Bool)

(assert (=> b!7770282 (=> res!3097484 e!4604025)))

(assert (=> b!7770282 (= res!3097484 (not (is-Concat!29601 r!25924)))))

(assert (=> b!7770282 (= e!4604022 e!4604025)))

(declare-fun bm!720089 () Bool)

(assert (=> bm!720089 (= call!720094 call!720092)))

(declare-fun bm!720088 () Bool)

(assert (=> bm!720088 (= call!720093 (validRegex!11170 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))))))

(declare-fun d!2344306 () Bool)

(declare-fun res!3097481 () Bool)

(assert (=> d!2344306 (=> res!3097481 e!4604024)))

(assert (=> d!2344306 (= res!3097481 (is-ElementMatch!20756 r!25924))))

(assert (=> d!2344306 (= (validRegex!11170 r!25924) e!4604024)))

(assert (= (and d!2344306 (not res!3097481)) b!7770280))

(assert (= (and b!7770280 c!1432128) b!7770277))

(assert (= (and b!7770280 (not c!1432128)) b!7770279))

(assert (= (and b!7770277 res!3097483) b!7770274))

(assert (= (and b!7770279 c!1432129) b!7770278))

(assert (= (and b!7770279 (not c!1432129)) b!7770282))

(assert (= (and b!7770278 res!3097482) b!7770281))

(assert (= (and b!7770282 (not res!3097484)) b!7770276))

(assert (= (and b!7770276 res!3097485) b!7770275))

(assert (= (or b!7770281 b!7770276) bm!720088))

(assert (= (or b!7770278 b!7770275) bm!720089))

(assert (= (or b!7770274 bm!720089) bm!720087))

(declare-fun m!8224406 () Bool)

(assert (=> bm!720087 m!8224406))

(declare-fun m!8224408 () Bool)

(assert (=> b!7770277 m!8224408))

(declare-fun m!8224410 () Bool)

(assert (=> bm!720088 m!8224410))

(assert (=> b!7770102 d!2344306))

(declare-fun d!2344308 () Bool)

(declare-fun isEmpty!42144 (Option!17721) Bool)

(assert (=> d!2344308 (= (isDefined!14333 lt!2671355) (not (isEmpty!42144 lt!2671355)))))

(declare-fun bs!1966093 () Bool)

(assert (= bs!1966093 d!2344308))

(declare-fun m!8224412 () Bool)

(assert (=> bs!1966093 m!8224412))

(assert (=> b!7770102 d!2344308))

(declare-fun b!7770311 () Bool)

(declare-fun e!4604045 () Bool)

(declare-fun lt!2671391 () Option!17721)

(declare-fun ++!17900 (List!73597 List!73597) List!73597)

(assert (=> b!7770311 (= e!4604045 (= (++!17900 (_1!38230 (get!26234 lt!2671391)) (_2!38230 (get!26234 lt!2671391))) (t!388332 s!14904)))))

(declare-fun b!7770312 () Bool)

(declare-fun e!4604044 () Bool)

(assert (=> b!7770312 (= e!4604044 (matchR!10218 lt!2671356 (t!388332 s!14904)))))

(declare-fun b!7770313 () Bool)

(declare-fun e!4604046 () Bool)

(assert (=> b!7770313 (= e!4604046 (not (isDefined!14333 lt!2671391)))))

(declare-fun b!7770314 () Bool)

(declare-fun lt!2671392 () Unit!168450)

(declare-fun lt!2671390 () Unit!168450)

(assert (=> b!7770314 (= lt!2671392 lt!2671390)))

(assert (=> b!7770314 (= (++!17900 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (t!388332 (t!388332 s!14904))) (t!388332 s!14904))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3384 (List!73597 C!41838 List!73597 List!73597) Unit!168450)

(assert (=> b!7770314 (= lt!2671390 (lemmaMoveElementToOtherListKeepsConcatEq!3384 Nil!73473 (h!79921 (t!388332 s!14904)) (t!388332 (t!388332 s!14904)) (t!388332 s!14904)))))

(declare-fun e!4604047 () Option!17721)

(assert (=> b!7770314 (= e!4604047 (findConcatSeparation!3751 lt!2671357 lt!2671356 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (t!388332 (t!388332 s!14904)) (t!388332 s!14904)))))

(declare-fun b!7770315 () Bool)

(declare-fun e!4604048 () Option!17721)

(assert (=> b!7770315 (= e!4604048 e!4604047)))

(declare-fun c!1432139 () Bool)

(assert (=> b!7770315 (= c!1432139 (is-Nil!73473 (t!388332 s!14904)))))

(declare-fun b!7770316 () Bool)

(assert (=> b!7770316 (= e!4604048 (Some!17720 (tuple2!69855 Nil!73473 (t!388332 s!14904))))))

(declare-fun b!7770318 () Bool)

(assert (=> b!7770318 (= e!4604047 None!17720)))

(declare-fun b!7770319 () Bool)

(declare-fun res!3097502 () Bool)

(assert (=> b!7770319 (=> (not res!3097502) (not e!4604045))))

(assert (=> b!7770319 (= res!3097502 (matchR!10218 lt!2671357 (_1!38230 (get!26234 lt!2671391))))))

(declare-fun d!2344310 () Bool)

(assert (=> d!2344310 e!4604046))

(declare-fun res!3097500 () Bool)

(assert (=> d!2344310 (=> res!3097500 e!4604046)))

(assert (=> d!2344310 (= res!3097500 e!4604045)))

(declare-fun res!3097498 () Bool)

(assert (=> d!2344310 (=> (not res!3097498) (not e!4604045))))

(assert (=> d!2344310 (= res!3097498 (isDefined!14333 lt!2671391))))

(assert (=> d!2344310 (= lt!2671391 e!4604048)))

(declare-fun c!1432138 () Bool)

(assert (=> d!2344310 (= c!1432138 e!4604044)))

(declare-fun res!3097499 () Bool)

(assert (=> d!2344310 (=> (not res!3097499) (not e!4604044))))

(assert (=> d!2344310 (= res!3097499 (matchR!10218 lt!2671357 Nil!73473))))

(assert (=> d!2344310 (validRegex!11170 lt!2671357)))

(assert (=> d!2344310 (= (findConcatSeparation!3751 lt!2671357 lt!2671356 Nil!73473 (t!388332 s!14904) (t!388332 s!14904)) lt!2671391)))

(declare-fun b!7770317 () Bool)

(declare-fun res!3097501 () Bool)

(assert (=> b!7770317 (=> (not res!3097501) (not e!4604045))))

(assert (=> b!7770317 (= res!3097501 (matchR!10218 lt!2671356 (_2!38230 (get!26234 lt!2671391))))))

(assert (= (and d!2344310 res!3097499) b!7770312))

(assert (= (and d!2344310 c!1432138) b!7770316))

(assert (= (and d!2344310 (not c!1432138)) b!7770315))

(assert (= (and b!7770315 c!1432139) b!7770318))

(assert (= (and b!7770315 (not c!1432139)) b!7770314))

(assert (= (and d!2344310 res!3097498) b!7770319))

(assert (= (and b!7770319 res!3097502) b!7770317))

(assert (= (and b!7770317 res!3097501) b!7770311))

(assert (= (and d!2344310 (not res!3097500)) b!7770313))

(declare-fun m!8224414 () Bool)

(assert (=> d!2344310 m!8224414))

(declare-fun m!8224416 () Bool)

(assert (=> d!2344310 m!8224416))

(declare-fun m!8224418 () Bool)

(assert (=> d!2344310 m!8224418))

(declare-fun m!8224420 () Bool)

(assert (=> b!7770311 m!8224420))

(declare-fun m!8224422 () Bool)

(assert (=> b!7770311 m!8224422))

(assert (=> b!7770319 m!8224420))

(declare-fun m!8224424 () Bool)

(assert (=> b!7770319 m!8224424))

(declare-fun m!8224426 () Bool)

(assert (=> b!7770314 m!8224426))

(assert (=> b!7770314 m!8224426))

(declare-fun m!8224428 () Bool)

(assert (=> b!7770314 m!8224428))

(declare-fun m!8224430 () Bool)

(assert (=> b!7770314 m!8224430))

(assert (=> b!7770314 m!8224426))

(declare-fun m!8224432 () Bool)

(assert (=> b!7770314 m!8224432))

(assert (=> b!7770313 m!8224414))

(assert (=> b!7770317 m!8224420))

(declare-fun m!8224434 () Bool)

(assert (=> b!7770317 m!8224434))

(declare-fun m!8224436 () Bool)

(assert (=> b!7770312 m!8224436))

(assert (=> b!7770102 d!2344310))

(declare-fun d!2344312 () Bool)

(assert (=> d!2344312 (isDefined!14333 (findConcatSeparation!3751 lt!2671357 lt!2671356 Nil!73473 (t!388332 s!14904) (t!388332 s!14904)))))

(declare-fun lt!2671395 () Unit!168450)

(declare-fun choose!59470 (Regex!20756 Regex!20756 List!73597) Unit!168450)

(assert (=> d!2344312 (= lt!2671395 (choose!59470 lt!2671357 lt!2671356 (t!388332 s!14904)))))

(assert (=> d!2344312 (validRegex!11170 lt!2671357)))

(assert (=> d!2344312 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!341 lt!2671357 lt!2671356 (t!388332 s!14904)) lt!2671395)))

(declare-fun bs!1966094 () Bool)

(assert (= bs!1966094 d!2344312))

(assert (=> bs!1966094 m!8224326))

(assert (=> bs!1966094 m!8224326))

(declare-fun m!8224438 () Bool)

(assert (=> bs!1966094 m!8224438))

(declare-fun m!8224440 () Bool)

(assert (=> bs!1966094 m!8224440))

(assert (=> bs!1966094 m!8224418))

(assert (=> b!7770102 d!2344312))

(declare-fun b!7770328 () Bool)

(declare-fun res!3097512 () Bool)

(declare-fun e!4604054 () Bool)

(assert (=> b!7770328 (=> (not res!3097512) (not e!4604054))))

(declare-fun call!720095 () Bool)

(assert (=> b!7770328 (= res!3097512 (not call!720095))))

(declare-fun b!7770329 () Bool)

(declare-fun res!3097514 () Bool)

(declare-fun e!4604056 () Bool)

(assert (=> b!7770329 (=> res!3097514 e!4604056)))

(assert (=> b!7770329 (= res!3097514 e!4604054)))

(declare-fun res!3097517 () Bool)

(assert (=> b!7770329 (=> (not res!3097517) (not e!4604054))))

(declare-fun lt!2671396 () Bool)

(assert (=> b!7770329 (= res!3097517 lt!2671396)))

(declare-fun b!7770330 () Bool)

(declare-fun e!4604057 () Bool)

(assert (=> b!7770330 (= e!4604057 (= lt!2671396 call!720095))))

(declare-fun b!7770331 () Bool)

(declare-fun e!4604053 () Bool)

(assert (=> b!7770331 (= e!4604053 (not (= (head!15883 s!14904) (c!1432085 lt!2671356))))))

(declare-fun b!7770332 () Bool)

(assert (=> b!7770332 (= e!4604054 (= (head!15883 s!14904) (c!1432085 lt!2671356)))))

(declare-fun b!7770333 () Bool)

(declare-fun res!3097516 () Bool)

(assert (=> b!7770333 (=> (not res!3097516) (not e!4604054))))

(assert (=> b!7770333 (= res!3097516 (isEmpty!42143 (tail!15424 s!14904)))))

(declare-fun b!7770335 () Bool)

(declare-fun e!4604058 () Bool)

(assert (=> b!7770335 (= e!4604058 (not lt!2671396))))

(declare-fun b!7770336 () Bool)

(declare-fun e!4604055 () Bool)

(assert (=> b!7770336 (= e!4604055 (matchR!10218 (derivativeStep!6101 lt!2671356 (head!15883 s!14904)) (tail!15424 s!14904)))))

(declare-fun b!7770337 () Bool)

(assert (=> b!7770337 (= e!4604057 e!4604058)))

(declare-fun c!1432142 () Bool)

(assert (=> b!7770337 (= c!1432142 (is-EmptyLang!20756 lt!2671356))))

(declare-fun b!7770338 () Bool)

(assert (=> b!7770338 (= e!4604055 (nullable!9146 lt!2671356))))

(declare-fun b!7770339 () Bool)

(declare-fun res!3097513 () Bool)

(assert (=> b!7770339 (=> res!3097513 e!4604056)))

(assert (=> b!7770339 (= res!3097513 (not (is-ElementMatch!20756 lt!2671356)))))

(assert (=> b!7770339 (= e!4604058 e!4604056)))

(declare-fun b!7770340 () Bool)

(declare-fun e!4604059 () Bool)

(assert (=> b!7770340 (= e!4604056 e!4604059)))

(declare-fun res!3097518 () Bool)

(assert (=> b!7770340 (=> (not res!3097518) (not e!4604059))))

(assert (=> b!7770340 (= res!3097518 (not lt!2671396))))

(declare-fun d!2344314 () Bool)

(assert (=> d!2344314 e!4604057))

(declare-fun c!1432140 () Bool)

(assert (=> d!2344314 (= c!1432140 (is-EmptyExpr!20756 lt!2671356))))

(assert (=> d!2344314 (= lt!2671396 e!4604055)))

(declare-fun c!1432141 () Bool)

(assert (=> d!2344314 (= c!1432141 (isEmpty!42143 s!14904))))

(assert (=> d!2344314 (validRegex!11170 lt!2671356)))

(assert (=> d!2344314 (= (matchR!10218 lt!2671356 s!14904) lt!2671396)))

(declare-fun b!7770334 () Bool)

(declare-fun res!3097511 () Bool)

(assert (=> b!7770334 (=> res!3097511 e!4604053)))

(assert (=> b!7770334 (= res!3097511 (not (isEmpty!42143 (tail!15424 s!14904))))))

(declare-fun b!7770341 () Bool)

(assert (=> b!7770341 (= e!4604059 e!4604053)))

(declare-fun res!3097515 () Bool)

(assert (=> b!7770341 (=> res!3097515 e!4604053)))

(assert (=> b!7770341 (= res!3097515 call!720095)))

(declare-fun bm!720090 () Bool)

(assert (=> bm!720090 (= call!720095 (isEmpty!42143 s!14904))))

(assert (= (and d!2344314 c!1432141) b!7770338))

(assert (= (and d!2344314 (not c!1432141)) b!7770336))

(assert (= (and d!2344314 c!1432140) b!7770330))

(assert (= (and d!2344314 (not c!1432140)) b!7770337))

(assert (= (and b!7770337 c!1432142) b!7770335))

(assert (= (and b!7770337 (not c!1432142)) b!7770339))

(assert (= (and b!7770339 (not res!3097513)) b!7770329))

(assert (= (and b!7770329 res!3097517) b!7770328))

(assert (= (and b!7770328 res!3097512) b!7770333))

(assert (= (and b!7770333 res!3097516) b!7770332))

(assert (= (and b!7770329 (not res!3097514)) b!7770340))

(assert (= (and b!7770340 res!3097518) b!7770341))

(assert (= (and b!7770341 (not res!3097515)) b!7770334))

(assert (= (and b!7770334 (not res!3097511)) b!7770331))

(assert (= (or b!7770330 b!7770328 b!7770341) bm!720090))

(declare-fun m!8224442 () Bool)

(assert (=> b!7770331 m!8224442))

(assert (=> b!7770336 m!8224442))

(assert (=> b!7770336 m!8224442))

(declare-fun m!8224444 () Bool)

(assert (=> b!7770336 m!8224444))

(declare-fun m!8224446 () Bool)

(assert (=> b!7770336 m!8224446))

(assert (=> b!7770336 m!8224444))

(assert (=> b!7770336 m!8224446))

(declare-fun m!8224448 () Bool)

(assert (=> b!7770336 m!8224448))

(assert (=> b!7770333 m!8224446))

(assert (=> b!7770333 m!8224446))

(declare-fun m!8224450 () Bool)

(assert (=> b!7770333 m!8224450))

(declare-fun m!8224452 () Bool)

(assert (=> d!2344314 m!8224452))

(assert (=> d!2344314 m!8224330))

(assert (=> b!7770332 m!8224442))

(assert (=> b!7770334 m!8224446))

(assert (=> b!7770334 m!8224446))

(assert (=> b!7770334 m!8224450))

(declare-fun m!8224454 () Bool)

(assert (=> b!7770338 m!8224454))

(assert (=> bm!720090 m!8224452))

(assert (=> b!7770107 d!2344314))

(declare-fun b!7770353 () Bool)

(declare-fun e!4604062 () Bool)

(declare-fun tp!2282774 () Bool)

(declare-fun tp!2282773 () Bool)

(assert (=> b!7770353 (= e!4604062 (and tp!2282774 tp!2282773))))

(declare-fun b!7770355 () Bool)

(declare-fun tp!2282772 () Bool)

(declare-fun tp!2282775 () Bool)

(assert (=> b!7770355 (= e!4604062 (and tp!2282772 tp!2282775))))

(assert (=> b!7770103 (= tp!2282741 e!4604062)))

(declare-fun b!7770352 () Bool)

(assert (=> b!7770352 (= e!4604062 tp_is_empty!51867)))

(declare-fun b!7770354 () Bool)

(declare-fun tp!2282776 () Bool)

(assert (=> b!7770354 (= e!4604062 tp!2282776)))

(assert (= (and b!7770103 (is-ElementMatch!20756 (regOne!42025 r!25924))) b!7770352))

(assert (= (and b!7770103 (is-Concat!29601 (regOne!42025 r!25924))) b!7770353))

(assert (= (and b!7770103 (is-Star!20756 (regOne!42025 r!25924))) b!7770354))

(assert (= (and b!7770103 (is-Union!20756 (regOne!42025 r!25924))) b!7770355))

(declare-fun b!7770357 () Bool)

(declare-fun e!4604063 () Bool)

(declare-fun tp!2282779 () Bool)

(declare-fun tp!2282778 () Bool)

(assert (=> b!7770357 (= e!4604063 (and tp!2282779 tp!2282778))))

(declare-fun b!7770359 () Bool)

(declare-fun tp!2282777 () Bool)

(declare-fun tp!2282780 () Bool)

(assert (=> b!7770359 (= e!4604063 (and tp!2282777 tp!2282780))))

(assert (=> b!7770103 (= tp!2282742 e!4604063)))

(declare-fun b!7770356 () Bool)

(assert (=> b!7770356 (= e!4604063 tp_is_empty!51867)))

(declare-fun b!7770358 () Bool)

(declare-fun tp!2282781 () Bool)

(assert (=> b!7770358 (= e!4604063 tp!2282781)))

(assert (= (and b!7770103 (is-ElementMatch!20756 (regTwo!42025 r!25924))) b!7770356))

(assert (= (and b!7770103 (is-Concat!29601 (regTwo!42025 r!25924))) b!7770357))

(assert (= (and b!7770103 (is-Star!20756 (regTwo!42025 r!25924))) b!7770358))

(assert (= (and b!7770103 (is-Union!20756 (regTwo!42025 r!25924))) b!7770359))

(declare-fun b!7770361 () Bool)

(declare-fun e!4604064 () Bool)

(declare-fun tp!2282784 () Bool)

(declare-fun tp!2282783 () Bool)

(assert (=> b!7770361 (= e!4604064 (and tp!2282784 tp!2282783))))

(declare-fun b!7770363 () Bool)

(declare-fun tp!2282782 () Bool)

(declare-fun tp!2282785 () Bool)

(assert (=> b!7770363 (= e!4604064 (and tp!2282782 tp!2282785))))

(assert (=> b!7770104 (= tp!2282739 e!4604064)))

(declare-fun b!7770360 () Bool)

(assert (=> b!7770360 (= e!4604064 tp_is_empty!51867)))

(declare-fun b!7770362 () Bool)

(declare-fun tp!2282786 () Bool)

(assert (=> b!7770362 (= e!4604064 tp!2282786)))

(assert (= (and b!7770104 (is-ElementMatch!20756 (reg!21085 r!25924))) b!7770360))

(assert (= (and b!7770104 (is-Concat!29601 (reg!21085 r!25924))) b!7770361))

(assert (= (and b!7770104 (is-Star!20756 (reg!21085 r!25924))) b!7770362))

(assert (= (and b!7770104 (is-Union!20756 (reg!21085 r!25924))) b!7770363))

(declare-fun b!7770368 () Bool)

(declare-fun e!4604067 () Bool)

(declare-fun tp!2282789 () Bool)

(assert (=> b!7770368 (= e!4604067 (and tp_is_empty!51867 tp!2282789))))

(assert (=> b!7770100 (= tp!2282738 e!4604067)))

(assert (= (and b!7770100 (is-Cons!73473 (t!388332 s!14904))) b!7770368))

(declare-fun b!7770370 () Bool)

(declare-fun e!4604068 () Bool)

(declare-fun tp!2282792 () Bool)

(declare-fun tp!2282791 () Bool)

(assert (=> b!7770370 (= e!4604068 (and tp!2282792 tp!2282791))))

(declare-fun b!7770372 () Bool)

(declare-fun tp!2282790 () Bool)

(declare-fun tp!2282793 () Bool)

(assert (=> b!7770372 (= e!4604068 (and tp!2282790 tp!2282793))))

(assert (=> b!7770101 (= tp!2282743 e!4604068)))

(declare-fun b!7770369 () Bool)

(assert (=> b!7770369 (= e!4604068 tp_is_empty!51867)))

(declare-fun b!7770371 () Bool)

(declare-fun tp!2282794 () Bool)

(assert (=> b!7770371 (= e!4604068 tp!2282794)))

(assert (= (and b!7770101 (is-ElementMatch!20756 (regOne!42024 r!25924))) b!7770369))

(assert (= (and b!7770101 (is-Concat!29601 (regOne!42024 r!25924))) b!7770370))

(assert (= (and b!7770101 (is-Star!20756 (regOne!42024 r!25924))) b!7770371))

(assert (= (and b!7770101 (is-Union!20756 (regOne!42024 r!25924))) b!7770372))

(declare-fun b!7770374 () Bool)

(declare-fun e!4604069 () Bool)

(declare-fun tp!2282797 () Bool)

(declare-fun tp!2282796 () Bool)

(assert (=> b!7770374 (= e!4604069 (and tp!2282797 tp!2282796))))

(declare-fun b!7770376 () Bool)

(declare-fun tp!2282795 () Bool)

(declare-fun tp!2282798 () Bool)

(assert (=> b!7770376 (= e!4604069 (and tp!2282795 tp!2282798))))

(assert (=> b!7770101 (= tp!2282740 e!4604069)))

(declare-fun b!7770373 () Bool)

(assert (=> b!7770373 (= e!4604069 tp_is_empty!51867)))

(declare-fun b!7770375 () Bool)

(declare-fun tp!2282799 () Bool)

(assert (=> b!7770375 (= e!4604069 tp!2282799)))

(assert (= (and b!7770101 (is-ElementMatch!20756 (regTwo!42024 r!25924))) b!7770373))

(assert (= (and b!7770101 (is-Concat!29601 (regTwo!42024 r!25924))) b!7770374))

(assert (= (and b!7770101 (is-Star!20756 (regTwo!42024 r!25924))) b!7770375))

(assert (= (and b!7770101 (is-Union!20756 (regTwo!42024 r!25924))) b!7770376))

(push 1)

(assert (not b!7770186))

(assert (not bm!720085))

(assert (not b!7770362))

(assert (not bm!720074))

(assert (not b!7770336))

(assert (not bm!720088))

(assert (not b!7770376))

(assert tp_is_empty!51867)

(assert (not b!7770370))

(assert (not b!7770371))

(assert (not b!7770353))

(assert (not d!2344312))

(assert (not bm!720090))

(assert (not d!2344310))

(assert (not bm!720077))

(assert (not b!7770187))

(assert (not b!7770313))

(assert (not b!7770268))

(assert (not b!7770185))

(assert (not b!7770357))

(assert (not d!2344314))

(assert (not b!7770338))

(assert (not b!7770188))

(assert (not b!7770277))

(assert (not d!2344296))

(assert (not b!7770230))

(assert (not b!7770333))

(assert (not b!7770334))

(assert (not d!2344302))

(assert (not b!7770314))

(assert (not bm!720084))

(assert (not b!7770355))

(assert (not d!2344308))

(assert (not b!7770312))

(assert (not b!7770374))

(assert (not b!7770363))

(assert (not b!7770368))

(assert (not bm!720073))

(assert (not b!7770331))

(assert (not bm!720052))

(assert (not b!7770317))

(assert (not b!7770372))

(assert (not b!7770311))

(assert (not b!7770375))

(assert (not b!7770361))

(assert (not b!7770354))

(assert (not b!7770358))

(assert (not b!7770240))

(assert (not b!7770190))

(assert (not d!2344290))

(assert (not b!7770319))

(assert (not bm!720087))

(assert (not b!7770192))

(assert (not bm!720070))

(assert (not b!7770359))

(assert (not b!7770332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2344330 () Bool)

(declare-fun nullableFct!3585 (Regex!20756) Bool)

(assert (=> d!2344330 (= (nullable!9146 (reg!21085 r!25924)) (nullableFct!3585 (reg!21085 r!25924)))))

(declare-fun bs!1966096 () Bool)

(assert (= bs!1966096 d!2344330))

(declare-fun m!8224534 () Bool)

(assert (=> bs!1966096 m!8224534))

(assert (=> b!7770277 d!2344330))

(declare-fun b!7770537 () Bool)

(declare-fun e!4604145 () Bool)

(declare-fun lt!2671413 () List!73597)

(assert (=> b!7770537 (= e!4604145 (or (not (= (_2!38230 (get!26234 lt!2671391)) Nil!73473)) (= lt!2671413 (_1!38230 (get!26234 lt!2671391)))))))

(declare-fun b!7770535 () Bool)

(declare-fun e!4604144 () List!73597)

(assert (=> b!7770535 (= e!4604144 (Cons!73473 (h!79921 (_1!38230 (get!26234 lt!2671391))) (++!17900 (t!388332 (_1!38230 (get!26234 lt!2671391))) (_2!38230 (get!26234 lt!2671391)))))))

(declare-fun b!7770536 () Bool)

(declare-fun res!3097566 () Bool)

(assert (=> b!7770536 (=> (not res!3097566) (not e!4604145))))

(declare-fun size!42697 (List!73597) Int)

(assert (=> b!7770536 (= res!3097566 (= (size!42697 lt!2671413) (+ (size!42697 (_1!38230 (get!26234 lt!2671391))) (size!42697 (_2!38230 (get!26234 lt!2671391))))))))

(declare-fun d!2344332 () Bool)

(assert (=> d!2344332 e!4604145))

(declare-fun res!3097565 () Bool)

(assert (=> d!2344332 (=> (not res!3097565) (not e!4604145))))

(declare-fun content!15594 (List!73597) (Set C!41838))

(assert (=> d!2344332 (= res!3097565 (= (content!15594 lt!2671413) (set.union (content!15594 (_1!38230 (get!26234 lt!2671391))) (content!15594 (_2!38230 (get!26234 lt!2671391))))))))

(assert (=> d!2344332 (= lt!2671413 e!4604144)))

(declare-fun c!1432181 () Bool)

(assert (=> d!2344332 (= c!1432181 (is-Nil!73473 (_1!38230 (get!26234 lt!2671391))))))

(assert (=> d!2344332 (= (++!17900 (_1!38230 (get!26234 lt!2671391)) (_2!38230 (get!26234 lt!2671391))) lt!2671413)))

(declare-fun b!7770534 () Bool)

(assert (=> b!7770534 (= e!4604144 (_2!38230 (get!26234 lt!2671391)))))

(assert (= (and d!2344332 c!1432181) b!7770534))

(assert (= (and d!2344332 (not c!1432181)) b!7770535))

(assert (= (and d!2344332 res!3097565) b!7770536))

(assert (= (and b!7770536 res!3097566) b!7770537))

(declare-fun m!8224536 () Bool)

(assert (=> b!7770535 m!8224536))

(declare-fun m!8224538 () Bool)

(assert (=> b!7770536 m!8224538))

(declare-fun m!8224540 () Bool)

(assert (=> b!7770536 m!8224540))

(declare-fun m!8224542 () Bool)

(assert (=> b!7770536 m!8224542))

(declare-fun m!8224544 () Bool)

(assert (=> d!2344332 m!8224544))

(declare-fun m!8224546 () Bool)

(assert (=> d!2344332 m!8224546))

(declare-fun m!8224548 () Bool)

(assert (=> d!2344332 m!8224548))

(assert (=> b!7770311 d!2344332))

(declare-fun d!2344334 () Bool)

(assert (=> d!2344334 (= (get!26234 lt!2671391) (v!54855 lt!2671391))))

(assert (=> b!7770311 d!2344334))

(declare-fun d!2344336 () Bool)

(assert (=> d!2344336 (= (isEmpty!42143 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))) (is-Nil!73473 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))

(assert (=> bm!720052 d!2344336))

(declare-fun d!2344338 () Bool)

(assert (=> d!2344338 (= (isDefined!14333 lt!2671391) (not (isEmpty!42144 lt!2671391)))))

(declare-fun bs!1966097 () Bool)

(assert (= bs!1966097 d!2344338))

(declare-fun m!8224550 () Bool)

(assert (=> bs!1966097 m!8224550))

(assert (=> d!2344310 d!2344338))

(declare-fun b!7770538 () Bool)

(declare-fun res!3097568 () Bool)

(declare-fun e!4604147 () Bool)

(assert (=> b!7770538 (=> (not res!3097568) (not e!4604147))))

(declare-fun call!720119 () Bool)

(assert (=> b!7770538 (= res!3097568 (not call!720119))))

(declare-fun b!7770539 () Bool)

(declare-fun res!3097570 () Bool)

(declare-fun e!4604149 () Bool)

(assert (=> b!7770539 (=> res!3097570 e!4604149)))

(assert (=> b!7770539 (= res!3097570 e!4604147)))

(declare-fun res!3097573 () Bool)

(assert (=> b!7770539 (=> (not res!3097573) (not e!4604147))))

(declare-fun lt!2671414 () Bool)

(assert (=> b!7770539 (= res!3097573 lt!2671414)))

(declare-fun b!7770540 () Bool)

(declare-fun e!4604150 () Bool)

(assert (=> b!7770540 (= e!4604150 (= lt!2671414 call!720119))))

(declare-fun b!7770541 () Bool)

(declare-fun e!4604146 () Bool)

(assert (=> b!7770541 (= e!4604146 (not (= (head!15883 Nil!73473) (c!1432085 lt!2671357))))))

(declare-fun b!7770542 () Bool)

(assert (=> b!7770542 (= e!4604147 (= (head!15883 Nil!73473) (c!1432085 lt!2671357)))))

(declare-fun b!7770543 () Bool)

(declare-fun res!3097572 () Bool)

(assert (=> b!7770543 (=> (not res!3097572) (not e!4604147))))

(assert (=> b!7770543 (= res!3097572 (isEmpty!42143 (tail!15424 Nil!73473)))))

(declare-fun b!7770545 () Bool)

(declare-fun e!4604151 () Bool)

(assert (=> b!7770545 (= e!4604151 (not lt!2671414))))

(declare-fun b!7770546 () Bool)

(declare-fun e!4604148 () Bool)

(assert (=> b!7770546 (= e!4604148 (matchR!10218 (derivativeStep!6101 lt!2671357 (head!15883 Nil!73473)) (tail!15424 Nil!73473)))))

(declare-fun b!7770547 () Bool)

(assert (=> b!7770547 (= e!4604150 e!4604151)))

(declare-fun c!1432184 () Bool)

(assert (=> b!7770547 (= c!1432184 (is-EmptyLang!20756 lt!2671357))))

(declare-fun b!7770548 () Bool)

(assert (=> b!7770548 (= e!4604148 (nullable!9146 lt!2671357))))

(declare-fun b!7770549 () Bool)

(declare-fun res!3097569 () Bool)

(assert (=> b!7770549 (=> res!3097569 e!4604149)))

(assert (=> b!7770549 (= res!3097569 (not (is-ElementMatch!20756 lt!2671357)))))

(assert (=> b!7770549 (= e!4604151 e!4604149)))

(declare-fun b!7770550 () Bool)

(declare-fun e!4604152 () Bool)

(assert (=> b!7770550 (= e!4604149 e!4604152)))

(declare-fun res!3097574 () Bool)

(assert (=> b!7770550 (=> (not res!3097574) (not e!4604152))))

(assert (=> b!7770550 (= res!3097574 (not lt!2671414))))

(declare-fun d!2344340 () Bool)

(assert (=> d!2344340 e!4604150))

(declare-fun c!1432182 () Bool)

(assert (=> d!2344340 (= c!1432182 (is-EmptyExpr!20756 lt!2671357))))

(assert (=> d!2344340 (= lt!2671414 e!4604148)))

(declare-fun c!1432183 () Bool)

(assert (=> d!2344340 (= c!1432183 (isEmpty!42143 Nil!73473))))

(assert (=> d!2344340 (validRegex!11170 lt!2671357)))

(assert (=> d!2344340 (= (matchR!10218 lt!2671357 Nil!73473) lt!2671414)))

(declare-fun b!7770544 () Bool)

(declare-fun res!3097567 () Bool)

(assert (=> b!7770544 (=> res!3097567 e!4604146)))

(assert (=> b!7770544 (= res!3097567 (not (isEmpty!42143 (tail!15424 Nil!73473))))))

(declare-fun b!7770551 () Bool)

(assert (=> b!7770551 (= e!4604152 e!4604146)))

(declare-fun res!3097571 () Bool)

(assert (=> b!7770551 (=> res!3097571 e!4604146)))

(assert (=> b!7770551 (= res!3097571 call!720119)))

(declare-fun bm!720114 () Bool)

(assert (=> bm!720114 (= call!720119 (isEmpty!42143 Nil!73473))))

(assert (= (and d!2344340 c!1432183) b!7770548))

(assert (= (and d!2344340 (not c!1432183)) b!7770546))

(assert (= (and d!2344340 c!1432182) b!7770540))

(assert (= (and d!2344340 (not c!1432182)) b!7770547))

(assert (= (and b!7770547 c!1432184) b!7770545))

(assert (= (and b!7770547 (not c!1432184)) b!7770549))

(assert (= (and b!7770549 (not res!3097569)) b!7770539))

(assert (= (and b!7770539 res!3097573) b!7770538))

(assert (= (and b!7770538 res!3097568) b!7770543))

(assert (= (and b!7770543 res!3097572) b!7770542))

(assert (= (and b!7770539 (not res!3097570)) b!7770550))

(assert (= (and b!7770550 res!3097574) b!7770551))

(assert (= (and b!7770551 (not res!3097571)) b!7770544))

(assert (= (and b!7770544 (not res!3097567)) b!7770541))

(assert (= (or b!7770540 b!7770538 b!7770551) bm!720114))

(declare-fun m!8224552 () Bool)

(assert (=> b!7770541 m!8224552))

(assert (=> b!7770546 m!8224552))

(assert (=> b!7770546 m!8224552))

(declare-fun m!8224554 () Bool)

(assert (=> b!7770546 m!8224554))

(declare-fun m!8224556 () Bool)

(assert (=> b!7770546 m!8224556))

(assert (=> b!7770546 m!8224554))

(assert (=> b!7770546 m!8224556))

(declare-fun m!8224558 () Bool)

(assert (=> b!7770546 m!8224558))

(assert (=> b!7770543 m!8224556))

(assert (=> b!7770543 m!8224556))

(declare-fun m!8224560 () Bool)

(assert (=> b!7770543 m!8224560))

(declare-fun m!8224562 () Bool)

(assert (=> d!2344340 m!8224562))

(assert (=> d!2344340 m!8224418))

(assert (=> b!7770542 m!8224552))

(assert (=> b!7770544 m!8224556))

(assert (=> b!7770544 m!8224556))

(assert (=> b!7770544 m!8224560))

(declare-fun m!8224564 () Bool)

(assert (=> b!7770548 m!8224564))

(assert (=> bm!720114 m!8224562))

(assert (=> d!2344310 d!2344340))

(declare-fun b!7770552 () Bool)

(declare-fun e!4604153 () Bool)

(declare-fun call!720120 () Bool)

(assert (=> b!7770552 (= e!4604153 call!720120)))

(declare-fun c!1432185 () Bool)

(declare-fun bm!720115 () Bool)

(declare-fun c!1432186 () Bool)

(assert (=> bm!720115 (= call!720120 (validRegex!11170 (ite c!1432185 (reg!21085 lt!2671357) (ite c!1432186 (regOne!42025 lt!2671357) (regTwo!42024 lt!2671357)))))))

(declare-fun b!7770553 () Bool)

(declare-fun e!4604159 () Bool)

(declare-fun call!720122 () Bool)

(assert (=> b!7770553 (= e!4604159 call!720122)))

(declare-fun b!7770554 () Bool)

(declare-fun e!4604157 () Bool)

(assert (=> b!7770554 (= e!4604157 e!4604159)))

(declare-fun res!3097579 () Bool)

(assert (=> b!7770554 (=> (not res!3097579) (not e!4604159))))

(declare-fun call!720121 () Bool)

(assert (=> b!7770554 (= res!3097579 call!720121)))

(declare-fun b!7770555 () Bool)

(declare-fun e!4604155 () Bool)

(assert (=> b!7770555 (= e!4604155 e!4604153)))

(declare-fun res!3097577 () Bool)

(assert (=> b!7770555 (= res!3097577 (not (nullable!9146 (reg!21085 lt!2671357))))))

(assert (=> b!7770555 (=> (not res!3097577) (not e!4604153))))

(declare-fun b!7770556 () Bool)

(declare-fun res!3097576 () Bool)

(declare-fun e!4604158 () Bool)

(assert (=> b!7770556 (=> (not res!3097576) (not e!4604158))))

(assert (=> b!7770556 (= res!3097576 call!720122)))

(declare-fun e!4604154 () Bool)

(assert (=> b!7770556 (= e!4604154 e!4604158)))

(declare-fun b!7770557 () Bool)

(assert (=> b!7770557 (= e!4604155 e!4604154)))

(assert (=> b!7770557 (= c!1432186 (is-Union!20756 lt!2671357))))

(declare-fun b!7770558 () Bool)

(declare-fun e!4604156 () Bool)

(assert (=> b!7770558 (= e!4604156 e!4604155)))

(assert (=> b!7770558 (= c!1432185 (is-Star!20756 lt!2671357))))

(declare-fun b!7770559 () Bool)

(assert (=> b!7770559 (= e!4604158 call!720121)))

(declare-fun b!7770560 () Bool)

(declare-fun res!3097578 () Bool)

(assert (=> b!7770560 (=> res!3097578 e!4604157)))

(assert (=> b!7770560 (= res!3097578 (not (is-Concat!29601 lt!2671357)))))

(assert (=> b!7770560 (= e!4604154 e!4604157)))

(declare-fun bm!720117 () Bool)

(assert (=> bm!720117 (= call!720122 call!720120)))

(declare-fun bm!720116 () Bool)

(assert (=> bm!720116 (= call!720121 (validRegex!11170 (ite c!1432186 (regTwo!42025 lt!2671357) (regOne!42024 lt!2671357))))))

(declare-fun d!2344342 () Bool)

(declare-fun res!3097575 () Bool)

(assert (=> d!2344342 (=> res!3097575 e!4604156)))

(assert (=> d!2344342 (= res!3097575 (is-ElementMatch!20756 lt!2671357))))

(assert (=> d!2344342 (= (validRegex!11170 lt!2671357) e!4604156)))

(assert (= (and d!2344342 (not res!3097575)) b!7770558))

(assert (= (and b!7770558 c!1432185) b!7770555))

(assert (= (and b!7770558 (not c!1432185)) b!7770557))

(assert (= (and b!7770555 res!3097577) b!7770552))

(assert (= (and b!7770557 c!1432186) b!7770556))

(assert (= (and b!7770557 (not c!1432186)) b!7770560))

(assert (= (and b!7770556 res!3097576) b!7770559))

(assert (= (and b!7770560 (not res!3097578)) b!7770554))

(assert (= (and b!7770554 res!3097579) b!7770553))

(assert (= (or b!7770559 b!7770554) bm!720116))

(assert (= (or b!7770556 b!7770553) bm!720117))

(assert (= (or b!7770552 bm!720117) bm!720115))

(declare-fun m!8224566 () Bool)

(assert (=> bm!720115 m!8224566))

(declare-fun m!8224568 () Bool)

(assert (=> b!7770555 m!8224568))

(declare-fun m!8224570 () Bool)

(assert (=> bm!720116 m!8224570))

(assert (=> d!2344310 d!2344342))

(declare-fun b!7770561 () Bool)

(declare-fun res!3097581 () Bool)

(declare-fun e!4604161 () Bool)

(assert (=> b!7770561 (=> (not res!3097581) (not e!4604161))))

(declare-fun call!720123 () Bool)

(assert (=> b!7770561 (= res!3097581 (not call!720123))))

(declare-fun b!7770562 () Bool)

(declare-fun res!3097583 () Bool)

(declare-fun e!4604163 () Bool)

(assert (=> b!7770562 (=> res!3097583 e!4604163)))

(assert (=> b!7770562 (= res!3097583 e!4604161)))

(declare-fun res!3097586 () Bool)

(assert (=> b!7770562 (=> (not res!3097586) (not e!4604161))))

(declare-fun lt!2671415 () Bool)

(assert (=> b!7770562 (= res!3097586 lt!2671415)))

(declare-fun b!7770563 () Bool)

(declare-fun e!4604164 () Bool)

(assert (=> b!7770563 (= e!4604164 (= lt!2671415 call!720123))))

(declare-fun b!7770564 () Bool)

(declare-fun e!4604160 () Bool)

(assert (=> b!7770564 (= e!4604160 (not (= (head!15883 (t!388332 s!14904)) (c!1432085 lt!2671356))))))

(declare-fun b!7770565 () Bool)

(assert (=> b!7770565 (= e!4604161 (= (head!15883 (t!388332 s!14904)) (c!1432085 lt!2671356)))))

(declare-fun b!7770566 () Bool)

(declare-fun res!3097585 () Bool)

(assert (=> b!7770566 (=> (not res!3097585) (not e!4604161))))

(assert (=> b!7770566 (= res!3097585 (isEmpty!42143 (tail!15424 (t!388332 s!14904))))))

(declare-fun b!7770568 () Bool)

(declare-fun e!4604165 () Bool)

(assert (=> b!7770568 (= e!4604165 (not lt!2671415))))

(declare-fun b!7770569 () Bool)

(declare-fun e!4604162 () Bool)

(assert (=> b!7770569 (= e!4604162 (matchR!10218 (derivativeStep!6101 lt!2671356 (head!15883 (t!388332 s!14904))) (tail!15424 (t!388332 s!14904))))))

(declare-fun b!7770570 () Bool)

(assert (=> b!7770570 (= e!4604164 e!4604165)))

(declare-fun c!1432189 () Bool)

(assert (=> b!7770570 (= c!1432189 (is-EmptyLang!20756 lt!2671356))))

(declare-fun b!7770571 () Bool)

(assert (=> b!7770571 (= e!4604162 (nullable!9146 lt!2671356))))

(declare-fun b!7770572 () Bool)

(declare-fun res!3097582 () Bool)

(assert (=> b!7770572 (=> res!3097582 e!4604163)))

(assert (=> b!7770572 (= res!3097582 (not (is-ElementMatch!20756 lt!2671356)))))

(assert (=> b!7770572 (= e!4604165 e!4604163)))

(declare-fun b!7770573 () Bool)

(declare-fun e!4604166 () Bool)

(assert (=> b!7770573 (= e!4604163 e!4604166)))

(declare-fun res!3097587 () Bool)

(assert (=> b!7770573 (=> (not res!3097587) (not e!4604166))))

(assert (=> b!7770573 (= res!3097587 (not lt!2671415))))

(declare-fun d!2344344 () Bool)

(assert (=> d!2344344 e!4604164))

(declare-fun c!1432187 () Bool)

(assert (=> d!2344344 (= c!1432187 (is-EmptyExpr!20756 lt!2671356))))

(assert (=> d!2344344 (= lt!2671415 e!4604162)))

(declare-fun c!1432188 () Bool)

(assert (=> d!2344344 (= c!1432188 (isEmpty!42143 (t!388332 s!14904)))))

(assert (=> d!2344344 (validRegex!11170 lt!2671356)))

(assert (=> d!2344344 (= (matchR!10218 lt!2671356 (t!388332 s!14904)) lt!2671415)))

(declare-fun b!7770567 () Bool)

(declare-fun res!3097580 () Bool)

(assert (=> b!7770567 (=> res!3097580 e!4604160)))

(assert (=> b!7770567 (= res!3097580 (not (isEmpty!42143 (tail!15424 (t!388332 s!14904)))))))

(declare-fun b!7770574 () Bool)

(assert (=> b!7770574 (= e!4604166 e!4604160)))

(declare-fun res!3097584 () Bool)

(assert (=> b!7770574 (=> res!3097584 e!4604160)))

(assert (=> b!7770574 (= res!3097584 call!720123)))

(declare-fun bm!720118 () Bool)

(assert (=> bm!720118 (= call!720123 (isEmpty!42143 (t!388332 s!14904)))))

(assert (= (and d!2344344 c!1432188) b!7770571))

(assert (= (and d!2344344 (not c!1432188)) b!7770569))

(assert (= (and d!2344344 c!1432187) b!7770563))

(assert (= (and d!2344344 (not c!1432187)) b!7770570))

(assert (= (and b!7770570 c!1432189) b!7770568))

(assert (= (and b!7770570 (not c!1432189)) b!7770572))

(assert (= (and b!7770572 (not res!3097582)) b!7770562))

(assert (= (and b!7770562 res!3097586) b!7770561))

(assert (= (and b!7770561 res!3097581) b!7770566))

(assert (= (and b!7770566 res!3097585) b!7770565))

(assert (= (and b!7770562 (not res!3097583)) b!7770573))

(assert (= (and b!7770573 res!3097587) b!7770574))

(assert (= (and b!7770574 (not res!3097584)) b!7770567))

(assert (= (and b!7770567 (not res!3097580)) b!7770564))

(assert (= (or b!7770563 b!7770561 b!7770574) bm!720118))

(declare-fun m!8224572 () Bool)

(assert (=> b!7770564 m!8224572))

(assert (=> b!7770569 m!8224572))

(assert (=> b!7770569 m!8224572))

(declare-fun m!8224574 () Bool)

(assert (=> b!7770569 m!8224574))

(declare-fun m!8224576 () Bool)

(assert (=> b!7770569 m!8224576))

(assert (=> b!7770569 m!8224574))

(assert (=> b!7770569 m!8224576))

(declare-fun m!8224578 () Bool)

(assert (=> b!7770569 m!8224578))

(assert (=> b!7770566 m!8224576))

(assert (=> b!7770566 m!8224576))

(declare-fun m!8224580 () Bool)

(assert (=> b!7770566 m!8224580))

(declare-fun m!8224582 () Bool)

(assert (=> d!2344344 m!8224582))

(assert (=> d!2344344 m!8224330))

(assert (=> b!7770565 m!8224572))

(assert (=> b!7770567 m!8224576))

(assert (=> b!7770567 m!8224576))

(assert (=> b!7770567 m!8224580))

(assert (=> b!7770571 m!8224454))

(assert (=> bm!720118 m!8224582))

(assert (=> b!7770312 d!2344344))

(declare-fun d!2344346 () Bool)

(assert (=> d!2344346 (= (nullable!9146 r!25924) (nullableFct!3585 r!25924))))

(declare-fun bs!1966098 () Bool)

(assert (= bs!1966098 d!2344346))

(declare-fun m!8224584 () Bool)

(assert (=> bs!1966098 m!8224584))

(assert (=> b!7770192 d!2344346))

(declare-fun d!2344348 () Bool)

(assert (=> d!2344348 (= (isEmpty!42143 s!14904) (is-Nil!73473 s!14904))))

(assert (=> bm!720090 d!2344348))

(declare-fun b!7770575 () Bool)

(declare-fun res!3097589 () Bool)

(declare-fun e!4604168 () Bool)

(assert (=> b!7770575 (=> (not res!3097589) (not e!4604168))))

(declare-fun call!720124 () Bool)

(assert (=> b!7770575 (= res!3097589 (not call!720124))))

(declare-fun b!7770576 () Bool)

(declare-fun res!3097591 () Bool)

(declare-fun e!4604170 () Bool)

(assert (=> b!7770576 (=> res!3097591 e!4604170)))

(assert (=> b!7770576 (= res!3097591 e!4604168)))

(declare-fun res!3097594 () Bool)

(assert (=> b!7770576 (=> (not res!3097594) (not e!4604168))))

(declare-fun lt!2671416 () Bool)

(assert (=> b!7770576 (= res!3097594 lt!2671416)))

(declare-fun b!7770577 () Bool)

(declare-fun e!4604171 () Bool)

(assert (=> b!7770577 (= e!4604171 (= lt!2671416 call!720124))))

(declare-fun b!7770578 () Bool)

(declare-fun e!4604167 () Bool)

(assert (=> b!7770578 (= e!4604167 (not (= (head!15883 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))) (c!1432085 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))))))

(declare-fun b!7770579 () Bool)

(assert (=> b!7770579 (= e!4604168 (= (head!15883 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))) (c!1432085 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))))

(declare-fun b!7770580 () Bool)

(declare-fun res!3097593 () Bool)

(assert (=> b!7770580 (=> (not res!3097593) (not e!4604168))))

(assert (=> b!7770580 (= res!3097593 (isEmpty!42143 (tail!15424 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))))

(declare-fun b!7770582 () Bool)

(declare-fun e!4604172 () Bool)

(assert (=> b!7770582 (= e!4604172 (not lt!2671416))))

(declare-fun b!7770583 () Bool)

(declare-fun e!4604169 () Bool)

(assert (=> b!7770583 (= e!4604169 (matchR!10218 (derivativeStep!6101 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))) (head!15883 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))) (tail!15424 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))))

(declare-fun b!7770584 () Bool)

(assert (=> b!7770584 (= e!4604171 e!4604172)))

(declare-fun c!1432192 () Bool)

(assert (=> b!7770584 (= c!1432192 (is-EmptyLang!20756 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))))

(declare-fun b!7770585 () Bool)

(assert (=> b!7770585 (= e!4604169 (nullable!9146 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))))

(declare-fun b!7770586 () Bool)

(declare-fun res!3097590 () Bool)

(assert (=> b!7770586 (=> res!3097590 e!4604170)))

(assert (=> b!7770586 (= res!3097590 (not (is-ElementMatch!20756 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))))

(assert (=> b!7770586 (= e!4604172 e!4604170)))

(declare-fun b!7770587 () Bool)

(declare-fun e!4604173 () Bool)

(assert (=> b!7770587 (= e!4604170 e!4604173)))

(declare-fun res!3097595 () Bool)

(assert (=> b!7770587 (=> (not res!3097595) (not e!4604173))))

(assert (=> b!7770587 (= res!3097595 (not lt!2671416))))

(declare-fun d!2344350 () Bool)

(assert (=> d!2344350 e!4604171))

(declare-fun c!1432190 () Bool)

(assert (=> d!2344350 (= c!1432190 (is-EmptyExpr!20756 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))))

(assert (=> d!2344350 (= lt!2671416 e!4604169)))

(declare-fun c!1432191 () Bool)

(assert (=> d!2344350 (= c!1432191 (isEmpty!42143 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))

(assert (=> d!2344350 (validRegex!11170 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))

(assert (=> d!2344350 (= (matchR!10218 (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))) (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))) lt!2671416)))

(declare-fun b!7770581 () Bool)

(declare-fun res!3097588 () Bool)

(assert (=> b!7770581 (=> res!3097588 e!4604167)))

(assert (=> b!7770581 (= res!3097588 (not (isEmpty!42143 (tail!15424 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))))

(declare-fun b!7770588 () Bool)

(assert (=> b!7770588 (= e!4604173 e!4604167)))

(declare-fun res!3097592 () Bool)

(assert (=> b!7770588 (=> res!3097592 e!4604167)))

(assert (=> b!7770588 (= res!3097592 call!720124)))

(declare-fun bm!720119 () Bool)

(assert (=> bm!720119 (= call!720124 (isEmpty!42143 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))

(assert (= (and d!2344350 c!1432191) b!7770585))

(assert (= (and d!2344350 (not c!1432191)) b!7770583))

(assert (= (and d!2344350 c!1432190) b!7770577))

(assert (= (and d!2344350 (not c!1432190)) b!7770584))

(assert (= (and b!7770584 c!1432192) b!7770582))

(assert (= (and b!7770584 (not c!1432192)) b!7770586))

(assert (= (and b!7770586 (not res!3097590)) b!7770576))

(assert (= (and b!7770576 res!3097594) b!7770575))

(assert (= (and b!7770575 res!3097589) b!7770580))

(assert (= (and b!7770580 res!3097593) b!7770579))

(assert (= (and b!7770576 (not res!3097591)) b!7770587))

(assert (= (and b!7770587 res!3097595) b!7770588))

(assert (= (and b!7770588 (not res!3097592)) b!7770581))

(assert (= (and b!7770581 (not res!3097588)) b!7770578))

(assert (= (or b!7770577 b!7770575 b!7770588) bm!720119))

(assert (=> b!7770578 m!8224366))

(declare-fun m!8224586 () Bool)

(assert (=> b!7770578 m!8224586))

(assert (=> b!7770583 m!8224366))

(assert (=> b!7770583 m!8224586))

(assert (=> b!7770583 m!8224364))

(assert (=> b!7770583 m!8224586))

(declare-fun m!8224588 () Bool)

(assert (=> b!7770583 m!8224588))

(assert (=> b!7770583 m!8224366))

(declare-fun m!8224590 () Bool)

(assert (=> b!7770583 m!8224590))

(assert (=> b!7770583 m!8224588))

(assert (=> b!7770583 m!8224590))

(declare-fun m!8224592 () Bool)

(assert (=> b!7770583 m!8224592))

(assert (=> b!7770580 m!8224366))

(assert (=> b!7770580 m!8224590))

(assert (=> b!7770580 m!8224590))

(declare-fun m!8224594 () Bool)

(assert (=> b!7770580 m!8224594))

(assert (=> d!2344350 m!8224366))

(assert (=> d!2344350 m!8224370))

(assert (=> d!2344350 m!8224364))

(declare-fun m!8224596 () Bool)

(assert (=> d!2344350 m!8224596))

(assert (=> b!7770579 m!8224366))

(assert (=> b!7770579 m!8224586))

(assert (=> b!7770581 m!8224366))

(assert (=> b!7770581 m!8224590))

(assert (=> b!7770581 m!8224590))

(assert (=> b!7770581 m!8224594))

(assert (=> b!7770585 m!8224364))

(declare-fun m!8224598 () Bool)

(assert (=> b!7770585 m!8224598))

(assert (=> bm!720119 m!8224366))

(assert (=> bm!720119 m!8224370))

(assert (=> b!7770190 d!2344350))

(declare-fun b!7770589 () Bool)

(declare-fun c!1432194 () Bool)

(assert (=> b!7770589 (= c!1432194 (is-Union!20756 r!25924))))

(declare-fun e!4604178 () Regex!20756)

(declare-fun e!4604177 () Regex!20756)

(assert (=> b!7770589 (= e!4604178 e!4604177)))

(declare-fun b!7770590 () Bool)

(declare-fun e!4604174 () Regex!20756)

(assert (=> b!7770590 (= e!4604174 e!4604178)))

(declare-fun c!1432193 () Bool)

(assert (=> b!7770590 (= c!1432193 (is-ElementMatch!20756 r!25924))))

(declare-fun b!7770592 () Bool)

(declare-fun c!1432196 () Bool)

(assert (=> b!7770592 (= c!1432196 (nullable!9146 (regOne!42024 r!25924)))))

(declare-fun e!4604175 () Regex!20756)

(declare-fun e!4604176 () Regex!20756)

(assert (=> b!7770592 (= e!4604175 e!4604176)))

(declare-fun b!7770593 () Bool)

(assert (=> b!7770593 (= e!4604174 EmptyLang!20756)))

(declare-fun b!7770594 () Bool)

(assert (=> b!7770594 (= e!4604177 e!4604175)))

(declare-fun c!1432195 () Bool)

(assert (=> b!7770594 (= c!1432195 (is-Star!20756 r!25924))))

(declare-fun b!7770595 () Bool)

(assert (=> b!7770595 (= e!4604178 (ite (= (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))) (c!1432085 r!25924)) EmptyExpr!20756 EmptyLang!20756))))

(declare-fun bm!720120 () Bool)

(declare-fun call!720127 () Regex!20756)

(assert (=> bm!720120 (= call!720127 (derivativeStep!6101 (ite c!1432194 (regOne!42025 r!25924) (ite c!1432195 (reg!21085 r!25924) (regOne!42024 r!25924))) (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))

(declare-fun d!2344352 () Bool)

(declare-fun lt!2671417 () Regex!20756)

(assert (=> d!2344352 (validRegex!11170 lt!2671417)))

(assert (=> d!2344352 (= lt!2671417 e!4604174)))

(declare-fun c!1432197 () Bool)

(assert (=> d!2344352 (= c!1432197 (or (is-EmptyExpr!20756 r!25924) (is-EmptyLang!20756 r!25924)))))

(assert (=> d!2344352 (validRegex!11170 r!25924)))

(assert (=> d!2344352 (= (derivativeStep!6101 r!25924 (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))) lt!2671417)))

(declare-fun call!720125 () Regex!20756)

(declare-fun b!7770591 () Bool)

(declare-fun call!720128 () Regex!20756)

(assert (=> b!7770591 (= e!4604176 (Union!20756 (Concat!29601 call!720128 (regTwo!42024 r!25924)) call!720125))))

(declare-fun bm!720121 () Bool)

(declare-fun call!720126 () Regex!20756)

(assert (=> bm!720121 (= call!720128 call!720126)))

(declare-fun bm!720122 () Bool)

(assert (=> bm!720122 (= call!720126 call!720127)))

(declare-fun b!7770596 () Bool)

(assert (=> b!7770596 (= e!4604177 (Union!20756 call!720127 call!720125))))

(declare-fun b!7770597 () Bool)

(assert (=> b!7770597 (= e!4604175 (Concat!29601 call!720126 r!25924))))

(declare-fun bm!720123 () Bool)

(assert (=> bm!720123 (= call!720125 (derivativeStep!6101 (ite c!1432194 (regTwo!42025 r!25924) (regTwo!42024 r!25924)) (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))

(declare-fun b!7770598 () Bool)

(assert (=> b!7770598 (= e!4604176 (Union!20756 (Concat!29601 call!720128 (regTwo!42024 r!25924)) EmptyLang!20756))))

(assert (= (and d!2344352 c!1432197) b!7770593))

(assert (= (and d!2344352 (not c!1432197)) b!7770590))

(assert (= (and b!7770590 c!1432193) b!7770595))

(assert (= (and b!7770590 (not c!1432193)) b!7770589))

(assert (= (and b!7770589 c!1432194) b!7770596))

(assert (= (and b!7770589 (not c!1432194)) b!7770594))

(assert (= (and b!7770594 c!1432195) b!7770597))

(assert (= (and b!7770594 (not c!1432195)) b!7770592))

(assert (= (and b!7770592 c!1432196) b!7770591))

(assert (= (and b!7770592 (not c!1432196)) b!7770598))

(assert (= (or b!7770591 b!7770598) bm!720121))

(assert (= (or b!7770597 bm!720121) bm!720122))

(assert (= (or b!7770596 b!7770591) bm!720123))

(assert (= (or b!7770596 bm!720122) bm!720120))

(assert (=> b!7770592 m!8224392))

(assert (=> bm!720120 m!8224362))

(declare-fun m!8224600 () Bool)

(assert (=> bm!720120 m!8224600))

(declare-fun m!8224602 () Bool)

(assert (=> d!2344352 m!8224602))

(assert (=> d!2344352 m!8224322))

(assert (=> bm!720123 m!8224362))

(declare-fun m!8224604 () Bool)

(assert (=> bm!720123 m!8224604))

(assert (=> b!7770190 d!2344352))

(declare-fun d!2344354 () Bool)

(assert (=> d!2344354 (= (head!15883 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))) (h!79921 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))

(assert (=> b!7770190 d!2344354))

(declare-fun d!2344356 () Bool)

(assert (=> d!2344356 (= (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))) (t!388332 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355)))))))

(assert (=> b!7770190 d!2344356))

(declare-fun b!7770599 () Bool)

(declare-fun c!1432199 () Bool)

(assert (=> b!7770599 (= c!1432199 (is-Union!20756 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))))))

(declare-fun e!4604183 () Regex!20756)

(declare-fun e!4604182 () Regex!20756)

(assert (=> b!7770599 (= e!4604183 e!4604182)))

(declare-fun b!7770600 () Bool)

(declare-fun e!4604179 () Regex!20756)

(assert (=> b!7770600 (= e!4604179 e!4604183)))

(declare-fun c!1432198 () Bool)

(assert (=> b!7770600 (= c!1432198 (is-ElementMatch!20756 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))))))

(declare-fun b!7770602 () Bool)

(declare-fun c!1432201 () Bool)

(assert (=> b!7770602 (= c!1432201 (nullable!9146 (regOne!42024 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)))))))

(declare-fun e!4604180 () Regex!20756)

(declare-fun e!4604181 () Regex!20756)

(assert (=> b!7770602 (= e!4604180 e!4604181)))

(declare-fun b!7770603 () Bool)

(assert (=> b!7770603 (= e!4604179 EmptyLang!20756)))

(declare-fun b!7770604 () Bool)

(assert (=> b!7770604 (= e!4604182 e!4604180)))

(declare-fun c!1432200 () Bool)

(assert (=> b!7770604 (= c!1432200 (is-Star!20756 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))))))

(declare-fun b!7770605 () Bool)

(assert (=> b!7770605 (= e!4604183 (ite (= (h!79921 s!14904) (c!1432085 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)))) EmptyExpr!20756 EmptyLang!20756))))

(declare-fun call!720131 () Regex!20756)

(declare-fun bm!720124 () Bool)

(assert (=> bm!720124 (= call!720131 (derivativeStep!6101 (ite c!1432199 (regOne!42025 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))) (ite c!1432200 (reg!21085 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))) (regOne!42024 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))))) (h!79921 s!14904)))))

(declare-fun d!2344358 () Bool)

(declare-fun lt!2671418 () Regex!20756)

(assert (=> d!2344358 (validRegex!11170 lt!2671418)))

(assert (=> d!2344358 (= lt!2671418 e!4604179)))

(declare-fun c!1432202 () Bool)

(assert (=> d!2344358 (= c!1432202 (or (is-EmptyExpr!20756 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))) (is-EmptyLang!20756 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)))))))

(assert (=> d!2344358 (validRegex!11170 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)))))

(assert (=> d!2344358 (= (derivativeStep!6101 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)) (h!79921 s!14904)) lt!2671418)))

(declare-fun call!720129 () Regex!20756)

(declare-fun b!7770601 () Bool)

(declare-fun call!720132 () Regex!20756)

(assert (=> b!7770601 (= e!4604181 (Union!20756 (Concat!29601 call!720132 (regTwo!42024 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)))) call!720129))))

(declare-fun bm!720125 () Bool)

(declare-fun call!720130 () Regex!20756)

(assert (=> bm!720125 (= call!720132 call!720130)))

(declare-fun bm!720126 () Bool)

(assert (=> bm!720126 (= call!720130 call!720131)))

(declare-fun b!7770606 () Bool)

(assert (=> b!7770606 (= e!4604182 (Union!20756 call!720131 call!720129))))

(declare-fun b!7770607 () Bool)

(assert (=> b!7770607 (= e!4604180 (Concat!29601 call!720130 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))))))

(declare-fun bm!720127 () Bool)

(assert (=> bm!720127 (= call!720129 (derivativeStep!6101 (ite c!1432199 (regTwo!42025 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356))) (regTwo!42024 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)))) (h!79921 s!14904)))))

(declare-fun b!7770608 () Bool)

(assert (=> b!7770608 (= e!4604181 (Union!20756 (Concat!29601 call!720132 (regTwo!42024 (ite c!1432113 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)))) EmptyLang!20756))))

(assert (= (and d!2344358 c!1432202) b!7770603))

(assert (= (and d!2344358 (not c!1432202)) b!7770600))

(assert (= (and b!7770600 c!1432198) b!7770605))

(assert (= (and b!7770600 (not c!1432198)) b!7770599))

(assert (= (and b!7770599 c!1432199) b!7770606))

(assert (= (and b!7770599 (not c!1432199)) b!7770604))

(assert (= (and b!7770604 c!1432200) b!7770607))

(assert (= (and b!7770604 (not c!1432200)) b!7770602))

(assert (= (and b!7770602 c!1432201) b!7770601))

(assert (= (and b!7770602 (not c!1432201)) b!7770608))

(assert (= (or b!7770601 b!7770608) bm!720125))

(assert (= (or b!7770607 bm!720125) bm!720126))

(assert (= (or b!7770606 b!7770601) bm!720127))

(assert (= (or b!7770606 bm!720126) bm!720124))

(declare-fun m!8224606 () Bool)

(assert (=> b!7770602 m!8224606))

(declare-fun m!8224608 () Bool)

(assert (=> bm!720124 m!8224608))

(declare-fun m!8224610 () Bool)

(assert (=> d!2344358 m!8224610))

(declare-fun m!8224612 () Bool)

(assert (=> d!2344358 m!8224612))

(declare-fun m!8224614 () Bool)

(assert (=> bm!720127 m!8224614))

(assert (=> bm!720073 d!2344358))

(declare-fun b!7770609 () Bool)

(declare-fun c!1432204 () Bool)

(assert (=> b!7770609 (= c!1432204 (is-Union!20756 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))))))

(declare-fun e!4604188 () Regex!20756)

(declare-fun e!4604187 () Regex!20756)

(assert (=> b!7770609 (= e!4604188 e!4604187)))

(declare-fun b!7770610 () Bool)

(declare-fun e!4604184 () Regex!20756)

(assert (=> b!7770610 (= e!4604184 e!4604188)))

(declare-fun c!1432203 () Bool)

(assert (=> b!7770610 (= c!1432203 (is-ElementMatch!20756 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))))))

(declare-fun b!7770612 () Bool)

(declare-fun c!1432206 () Bool)

(assert (=> b!7770612 (= c!1432206 (nullable!9146 (regOne!42024 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)))))))

(declare-fun e!4604185 () Regex!20756)

(declare-fun e!4604186 () Regex!20756)

(assert (=> b!7770612 (= e!4604185 e!4604186)))

(declare-fun b!7770613 () Bool)

(assert (=> b!7770613 (= e!4604184 EmptyLang!20756)))

(declare-fun b!7770614 () Bool)

(assert (=> b!7770614 (= e!4604187 e!4604185)))

(declare-fun c!1432205 () Bool)

(assert (=> b!7770614 (= c!1432205 (is-Star!20756 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))))))

(declare-fun b!7770615 () Bool)

(assert (=> b!7770615 (= e!4604188 (ite (= (h!79921 s!14904) (c!1432085 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)))) EmptyExpr!20756 EmptyLang!20756))))

(declare-fun call!720135 () Regex!20756)

(declare-fun bm!720128 () Bool)

(assert (=> bm!720128 (= call!720135 (derivativeStep!6101 (ite c!1432204 (regOne!42025 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))) (ite c!1432205 (reg!21085 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))) (regOne!42024 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))))) (h!79921 s!14904)))))

(declare-fun d!2344360 () Bool)

(declare-fun lt!2671419 () Regex!20756)

(assert (=> d!2344360 (validRegex!11170 lt!2671419)))

(assert (=> d!2344360 (= lt!2671419 e!4604184)))

(declare-fun c!1432207 () Bool)

(assert (=> d!2344360 (= c!1432207 (or (is-EmptyExpr!20756 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))) (is-EmptyLang!20756 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)))))))

(assert (=> d!2344360 (validRegex!11170 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)))))

(assert (=> d!2344360 (= (derivativeStep!6101 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)) (h!79921 s!14904)) lt!2671419)))

(declare-fun call!720133 () Regex!20756)

(declare-fun b!7770611 () Bool)

(declare-fun call!720136 () Regex!20756)

(assert (=> b!7770611 (= e!4604186 (Union!20756 (Concat!29601 call!720136 (regTwo!42024 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)))) call!720133))))

(declare-fun bm!720129 () Bool)

(declare-fun call!720134 () Regex!20756)

(assert (=> bm!720129 (= call!720136 call!720134)))

(declare-fun bm!720130 () Bool)

(assert (=> bm!720130 (= call!720134 call!720135)))

(declare-fun b!7770616 () Bool)

(assert (=> b!7770616 (= e!4604187 (Union!20756 call!720135 call!720133))))

(declare-fun b!7770617 () Bool)

(assert (=> b!7770617 (= e!4604185 (Concat!29601 call!720134 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))))))

(declare-fun bm!720131 () Bool)

(assert (=> bm!720131 (= call!720133 (derivativeStep!6101 (ite c!1432204 (regTwo!42025 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924))) (regTwo!42024 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)))) (h!79921 s!14904)))))

(declare-fun b!7770618 () Bool)

(assert (=> b!7770618 (= e!4604186 (Union!20756 (Concat!29601 call!720136 (regTwo!42024 (ite c!1432118 (regTwo!42025 r!25924) (regTwo!42024 r!25924)))) EmptyLang!20756))))

(assert (= (and d!2344360 c!1432207) b!7770613))

(assert (= (and d!2344360 (not c!1432207)) b!7770610))

(assert (= (and b!7770610 c!1432203) b!7770615))

(assert (= (and b!7770610 (not c!1432203)) b!7770609))

(assert (= (and b!7770609 c!1432204) b!7770616))

(assert (= (and b!7770609 (not c!1432204)) b!7770614))

(assert (= (and b!7770614 c!1432205) b!7770617))

(assert (= (and b!7770614 (not c!1432205)) b!7770612))

(assert (= (and b!7770612 c!1432206) b!7770611))

(assert (= (and b!7770612 (not c!1432206)) b!7770618))

(assert (= (or b!7770611 b!7770618) bm!720129))

(assert (= (or b!7770617 bm!720129) bm!720130))

(assert (= (or b!7770616 b!7770611) bm!720131))

(assert (= (or b!7770616 bm!720130) bm!720128))

(declare-fun m!8224616 () Bool)

(assert (=> b!7770612 m!8224616))

(declare-fun m!8224618 () Bool)

(assert (=> bm!720128 m!8224618))

(declare-fun m!8224620 () Bool)

(assert (=> d!2344360 m!8224620))

(declare-fun m!8224622 () Bool)

(assert (=> d!2344360 m!8224622))

(declare-fun m!8224624 () Bool)

(assert (=> bm!720131 m!8224624))

(assert (=> bm!720077 d!2344360))

(declare-fun b!7770619 () Bool)

(declare-fun e!4604189 () Bool)

(declare-fun call!720137 () Bool)

(assert (=> b!7770619 (= e!4604189 call!720137)))

(declare-fun bm!720132 () Bool)

(declare-fun c!1432208 () Bool)

(declare-fun c!1432209 () Bool)

(assert (=> bm!720132 (= call!720137 (validRegex!11170 (ite c!1432208 (reg!21085 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))) (ite c!1432209 (regOne!42025 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))) (regTwo!42024 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924))))))))))

(declare-fun b!7770620 () Bool)

(declare-fun e!4604195 () Bool)

(declare-fun call!720139 () Bool)

(assert (=> b!7770620 (= e!4604195 call!720139)))

(declare-fun b!7770621 () Bool)

(declare-fun e!4604193 () Bool)

(assert (=> b!7770621 (= e!4604193 e!4604195)))

(declare-fun res!3097600 () Bool)

(assert (=> b!7770621 (=> (not res!3097600) (not e!4604195))))

(declare-fun call!720138 () Bool)

(assert (=> b!7770621 (= res!3097600 call!720138)))

(declare-fun b!7770622 () Bool)

(declare-fun e!4604191 () Bool)

(assert (=> b!7770622 (= e!4604191 e!4604189)))

(declare-fun res!3097598 () Bool)

(assert (=> b!7770622 (= res!3097598 (not (nullable!9146 (reg!21085 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))))))))

(assert (=> b!7770622 (=> (not res!3097598) (not e!4604189))))

(declare-fun b!7770623 () Bool)

(declare-fun res!3097597 () Bool)

(declare-fun e!4604194 () Bool)

(assert (=> b!7770623 (=> (not res!3097597) (not e!4604194))))

(assert (=> b!7770623 (= res!3097597 call!720139)))

(declare-fun e!4604190 () Bool)

(assert (=> b!7770623 (= e!4604190 e!4604194)))

(declare-fun b!7770624 () Bool)

(assert (=> b!7770624 (= e!4604191 e!4604190)))

(assert (=> b!7770624 (= c!1432209 (is-Union!20756 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))))))

(declare-fun b!7770625 () Bool)

(declare-fun e!4604192 () Bool)

(assert (=> b!7770625 (= e!4604192 e!4604191)))

(assert (=> b!7770625 (= c!1432208 (is-Star!20756 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))))))

(declare-fun b!7770626 () Bool)

(assert (=> b!7770626 (= e!4604194 call!720138)))

(declare-fun b!7770627 () Bool)

(declare-fun res!3097599 () Bool)

(assert (=> b!7770627 (=> res!3097599 e!4604193)))

(assert (=> b!7770627 (= res!3097599 (not (is-Concat!29601 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924))))))))

(assert (=> b!7770627 (= e!4604190 e!4604193)))

(declare-fun bm!720134 () Bool)

(assert (=> bm!720134 (= call!720139 call!720137)))

(declare-fun bm!720133 () Bool)

(assert (=> bm!720133 (= call!720138 (validRegex!11170 (ite c!1432209 (regTwo!42025 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))) (regOne!42024 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))))))))

(declare-fun d!2344362 () Bool)

(declare-fun res!3097596 () Bool)

(assert (=> d!2344362 (=> res!3097596 e!4604192)))

(assert (=> d!2344362 (= res!3097596 (is-ElementMatch!20756 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))))))

(assert (=> d!2344362 (= (validRegex!11170 (ite c!1432128 (reg!21085 r!25924) (ite c!1432129 (regOne!42025 r!25924) (regTwo!42024 r!25924)))) e!4604192)))

(assert (= (and d!2344362 (not res!3097596)) b!7770625))

(assert (= (and b!7770625 c!1432208) b!7770622))

(assert (= (and b!7770625 (not c!1432208)) b!7770624))

(assert (= (and b!7770622 res!3097598) b!7770619))

(assert (= (and b!7770624 c!1432209) b!7770623))

(assert (= (and b!7770624 (not c!1432209)) b!7770627))

(assert (= (and b!7770623 res!3097597) b!7770626))

(assert (= (and b!7770627 (not res!3097599)) b!7770621))

(assert (= (and b!7770621 res!3097600) b!7770620))

(assert (= (or b!7770626 b!7770621) bm!720133))

(assert (= (or b!7770623 b!7770620) bm!720134))

(assert (= (or b!7770619 bm!720134) bm!720132))

(declare-fun m!8224626 () Bool)

(assert (=> bm!720132 m!8224626))

(declare-fun m!8224628 () Bool)

(assert (=> b!7770622 m!8224628))

(declare-fun m!8224630 () Bool)

(assert (=> bm!720133 m!8224630))

(assert (=> bm!720087 d!2344362))

(declare-fun d!2344364 () Bool)

(assert (=> d!2344364 (= (isEmpty!42143 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))) (is-Nil!73473 (tail!15424 (Cons!73473 (h!79921 s!14904) (_1!38230 (get!26234 lt!2671355))))))))

(assert (=> b!7770187 d!2344364))

(assert (=> b!7770187 d!2344356))

(declare-fun c!1432211 () Bool)

(declare-fun b!7770628 () Bool)

(assert (=> b!7770628 (= c!1432211 (is-Union!20756 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))))))

(declare-fun e!4604200 () Regex!20756)

(declare-fun e!4604199 () Regex!20756)

(assert (=> b!7770628 (= e!4604200 e!4604199)))

(declare-fun b!7770629 () Bool)

(declare-fun e!4604196 () Regex!20756)

(assert (=> b!7770629 (= e!4604196 e!4604200)))

(declare-fun c!1432210 () Bool)

(assert (=> b!7770629 (= c!1432210 (is-ElementMatch!20756 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))))))

(declare-fun c!1432213 () Bool)

(declare-fun b!7770631 () Bool)

(assert (=> b!7770631 (= c!1432213 (nullable!9146 (regOne!42024 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))))))))

(declare-fun e!4604197 () Regex!20756)

(declare-fun e!4604198 () Regex!20756)

(assert (=> b!7770631 (= e!4604197 e!4604198)))

(declare-fun b!7770632 () Bool)

(assert (=> b!7770632 (= e!4604196 EmptyLang!20756)))

(declare-fun b!7770633 () Bool)

(assert (=> b!7770633 (= e!4604199 e!4604197)))

(declare-fun c!1432212 () Bool)

(assert (=> b!7770633 (= c!1432212 (is-Star!20756 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))))))

(declare-fun b!7770634 () Bool)

(assert (=> b!7770634 (= e!4604200 (ite (= (h!79921 s!14904) (c!1432085 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))))) EmptyExpr!20756 EmptyLang!20756))))

(declare-fun bm!720135 () Bool)

(declare-fun call!720142 () Regex!20756)

(assert (=> bm!720135 (= call!720142 (derivativeStep!6101 (ite c!1432211 (regOne!42025 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))) (ite c!1432212 (reg!21085 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))) (regOne!42024 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))))) (h!79921 s!14904)))))

(declare-fun d!2344366 () Bool)

(declare-fun lt!2671420 () Regex!20756)

(assert (=> d!2344366 (validRegex!11170 lt!2671420)))

(assert (=> d!2344366 (= lt!2671420 e!4604196)))

(declare-fun c!1432214 () Bool)

(assert (=> d!2344366 (= c!1432214 (or (is-EmptyExpr!20756 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))) (is-EmptyLang!20756 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))))))))

(assert (=> d!2344366 (validRegex!11170 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))))))

(assert (=> d!2344366 (= (derivativeStep!6101 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))) (h!79921 s!14904)) lt!2671420)))

(declare-fun call!720140 () Regex!20756)

(declare-fun b!7770630 () Bool)

(declare-fun call!720143 () Regex!20756)

(assert (=> b!7770630 (= e!4604198 (Union!20756 (Concat!29601 call!720143 (regTwo!42024 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))))) call!720140))))

(declare-fun bm!720136 () Bool)

(declare-fun call!720141 () Regex!20756)

(assert (=> bm!720136 (= call!720143 call!720141)))

(declare-fun bm!720137 () Bool)

(assert (=> bm!720137 (= call!720141 call!720142)))

(declare-fun b!7770635 () Bool)

(assert (=> b!7770635 (= e!4604199 (Union!20756 call!720142 call!720140))))

(declare-fun b!7770636 () Bool)

(assert (=> b!7770636 (= e!4604197 (Concat!29601 call!720141 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))))))

(declare-fun bm!720138 () Bool)

(assert (=> bm!720138 (= call!720140 (derivativeStep!6101 (ite c!1432211 (regTwo!42025 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924)))) (regTwo!42024 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))))) (h!79921 s!14904)))))

(declare-fun b!7770637 () Bool)

(assert (=> b!7770637 (= e!4604198 (Union!20756 (Concat!29601 call!720143 (regTwo!42024 (ite c!1432118 (regOne!42025 r!25924) (ite c!1432119 (reg!21085 r!25924) (regOne!42024 r!25924))))) EmptyLang!20756))))

(assert (= (and d!2344366 c!1432214) b!7770632))

(assert (= (and d!2344366 (not c!1432214)) b!7770629))

(assert (= (and b!7770629 c!1432210) b!7770634))

(assert (= (and b!7770629 (not c!1432210)) b!7770628))

(assert (= (and b!7770628 c!1432211) b!7770635))

(assert (= (and b!7770628 (not c!1432211)) b!7770633))

(assert (= (and b!7770633 c!1432212) b!7770636))

(assert (= (and b!7770633 (not c!1432212)) b!7770631))

(assert (= (and b!7770631 c!1432213) b!7770630))

(assert (= (and b!7770631 (not c!1432213)) b!7770637))

(assert (= (or b!7770630 b!7770637) bm!720136))

(assert (= (or b!7770636 bm!720136) bm!720137))

(assert (= (or b!7770635 b!7770630) bm!720138))

(assert (= (or b!7770635 bm!720137) bm!720135))

(declare-fun m!8224632 () Bool)

(assert (=> b!7770631 m!8224632))

(declare-fun m!8224634 () Bool)

(assert (=> bm!720135 m!8224634))

(declare-fun m!8224636 () Bool)

(assert (=> d!2344366 m!8224636))

(declare-fun m!8224638 () Bool)

(assert (=> d!2344366 m!8224638))

(declare-fun m!8224640 () Bool)

(assert (=> bm!720138 m!8224640))

(assert (=> bm!720074 d!2344366))

(declare-fun b!7770638 () Bool)

(declare-fun res!3097602 () Bool)

(declare-fun e!4604202 () Bool)

(assert (=> b!7770638 (=> (not res!3097602) (not e!4604202))))

(declare-fun call!720144 () Bool)

(assert (=> b!7770638 (= res!3097602 (not call!720144))))

(declare-fun b!7770639 () Bool)

(declare-fun res!3097604 () Bool)

(declare-fun e!4604204 () Bool)

(assert (=> b!7770639 (=> res!3097604 e!4604204)))

(assert (=> b!7770639 (= res!3097604 e!4604202)))

(declare-fun res!3097607 () Bool)

(assert (=> b!7770639 (=> (not res!3097607) (not e!4604202))))

(declare-fun lt!2671421 () Bool)

(assert (=> b!7770639 (= res!3097607 lt!2671421)))

(declare-fun b!7770640 () Bool)

(declare-fun e!4604205 () Bool)

(assert (=> b!7770640 (= e!4604205 (= lt!2671421 call!720144))))

(declare-fun b!7770641 () Bool)

(declare-fun e!4604201 () Bool)

(assert (=> b!7770641 (= e!4604201 (not (= (head!15883 (tail!15424 s!14904)) (c!1432085 (derivativeStep!6101 lt!2671356 (head!15883 s!14904))))))))

(declare-fun b!7770642 () Bool)

(assert (=> b!7770642 (= e!4604202 (= (head!15883 (tail!15424 s!14904)) (c!1432085 (derivativeStep!6101 lt!2671356 (head!15883 s!14904)))))))

(declare-fun b!7770643 () Bool)

(declare-fun res!3097606 () Bool)

(assert (=> b!7770643 (=> (not res!3097606) (not e!4604202))))

(assert (=> b!7770643 (= res!3097606 (isEmpty!42143 (tail!15424 (tail!15424 s!14904))))))

(declare-fun b!7770645 () Bool)

(declare-fun e!4604206 () Bool)

(assert (=> b!7770645 (= e!4604206 (not lt!2671421))))

(declare-fun b!7770646 () Bool)

(declare-fun e!4604203 () Bool)

(assert (=> b!7770646 (= e!4604203 (matchR!10218 (derivativeStep!6101 (derivativeStep!6101 lt!2671356 (head!15883 s!14904)) (head!15883 (tail!15424 s!14904))) (tail!15424 (tail!15424 s!14904))))))

(declare-fun b!7770647 () Bool)

(assert (=> b!7770647 (= e!4604205 e!4604206)))

(declare-fun c!1432217 () Bool)

(assert (=> b!7770647 (= c!1432217 (is-EmptyLang!20756 (derivativeStep!6101 lt!2671356 (head!15883 s!14904))))))

(declare-fun b!7770648 () Bool)

(assert (=> b!7770648 (= e!4604203 (nullable!9146 (derivativeStep!6101 lt!2671356 (head!15883 s!14904))))))

(declare-fun b!7770649 () Bool)

(declare-fun res!3097603 () Bool)

(assert (=> b!7770649 (=> res!3097603 e!4604204)))

(assert (=> b!7770649 (= res!3097603 (not (is-ElementMatch!20756 (derivativeStep!6101 lt!2671356 (head!15883 s!14904)))))))

(assert (=> b!7770649 (= e!4604206 e!4604204)))

(declare-fun b!7770650 () Bool)

(declare-fun e!4604207 () Bool)

(assert (=> b!7770650 (= e!4604204 e!4604207)))

(declare-fun res!3097608 () Bool)

(assert (=> b!7770650 (=> (not res!3097608) (not e!4604207))))

(assert (=> b!7770650 (= res!3097608 (not lt!2671421))))

(declare-fun d!2344368 () Bool)

(assert (=> d!2344368 e!4604205))

(declare-fun c!1432215 () Bool)

(assert (=> d!2344368 (= c!1432215 (is-EmptyExpr!20756 (derivativeStep!6101 lt!2671356 (head!15883 s!14904))))))

(assert (=> d!2344368 (= lt!2671421 e!4604203)))

(declare-fun c!1432216 () Bool)

(assert (=> d!2344368 (= c!1432216 (isEmpty!42143 (tail!15424 s!14904)))))

(assert (=> d!2344368 (validRegex!11170 (derivativeStep!6101 lt!2671356 (head!15883 s!14904)))))

(assert (=> d!2344368 (= (matchR!10218 (derivativeStep!6101 lt!2671356 (head!15883 s!14904)) (tail!15424 s!14904)) lt!2671421)))

(declare-fun b!7770644 () Bool)

(declare-fun res!3097601 () Bool)

(assert (=> b!7770644 (=> res!3097601 e!4604201)))

(assert (=> b!7770644 (= res!3097601 (not (isEmpty!42143 (tail!15424 (tail!15424 s!14904)))))))

(declare-fun b!7770651 () Bool)

(assert (=> b!7770651 (= e!4604207 e!4604201)))

(declare-fun res!3097605 () Bool)

(assert (=> b!7770651 (=> res!3097605 e!4604201)))

(assert (=> b!7770651 (= res!3097605 call!720144)))

(declare-fun bm!720139 () Bool)

(assert (=> bm!720139 (= call!720144 (isEmpty!42143 (tail!15424 s!14904)))))

(assert (= (and d!2344368 c!1432216) b!7770648))

(assert (= (and d!2344368 (not c!1432216)) b!7770646))

(assert (= (and d!2344368 c!1432215) b!7770640))

(assert (= (and d!2344368 (not c!1432215)) b!7770647))

(assert (= (and b!7770647 c!1432217) b!7770645))

(assert (= (and b!7770647 (not c!1432217)) b!7770649))

(assert (= (and b!7770649 (not res!3097603)) b!7770639))

(assert (= (and b!7770639 res!3097607) b!7770638))

(assert (= (and b!7770638 res!3097602) b!7770643))

(assert (= (and b!7770643 res!3097606) b!7770642))

(assert (= (and b!7770639 (not res!3097604)) b!7770650))

(assert (= (and b!7770650 res!3097608) b!7770651))

(assert (= (and b!7770651 (not res!3097605)) b!7770644))

(assert (= (and b!7770644 (not res!3097601)) b!7770641))

(assert (= (or b!7770640 b!7770638 b!7770651) bm!720139))

(assert (=> b!7770641 m!8224446))

(declare-fun m!8224642 () Bool)

(assert (=> b!7770641 m!8224642))

(assert (=> b!7770646 m!8224446))

(assert (=> b!7770646 m!8224642))

(assert (=> b!7770646 m!8224444))

(assert (=> b!7770646 m!8224642))

(declare-fun m!8224644 () Bool)

(assert (=> b!7770646 m!8224644))

(assert (=> b!7770646 m!8224446))

(declare-fun m!8224646 () Bool)

(assert (=> b!7770646 m!8224646))

(assert (=> b!7770646 m!8224644))

(assert (=> b!7770646 m!8224646))

(declare-fun m!8224648 () Bool)

(assert (=> b!7770646 m!8224648))

(assert (=> b!7770643 m!8224446))

(assert (=> b!7770643 m!8224646))

(assert (=> b!7770643 m!8224646))

(declare-fun m!8224650 () Bool)

(assert (=> b!7770643 m!8224650))

(assert (=> d!2344368 m!8224446))

(assert (=> d!2344368 m!8224450))

(assert (=> d!2344368 m!8224444))

(declare-fun m!8224652 () Bool)

(assert (=> d!2344368 m!8224652))

(assert (=> b!7770642 m!8224446))

(assert (=> b!7770642 m!8224642))

(assert (=> b!7770644 m!8224446))

(assert (=> b!7770644 m!8224646))

(assert (=> b!7770644 m!8224646))

(assert (=> b!7770644 m!8224650))

(assert (=> b!7770648 m!8224444))

(declare-fun m!8224654 () Bool)

(assert (=> b!7770648 m!8224654))

(assert (=> bm!720139 m!8224446))

(assert (=> bm!720139 m!8224450))

(assert (=> b!7770336 d!2344368))

(declare-fun b!7770652 () Bool)

(declare-fun c!1432219 () Bool)

(assert (=> b!7770652 (= c!1432219 (is-Union!20756 lt!2671356))))

(declare-fun e!4604212 () Regex!20756)

(declare-fun e!4604211 () Regex!20756)

(assert (=> b!7770652 (= e!4604212 e!4604211)))

(declare-fun b!7770653 () Bool)

(declare-fun e!4604208 () Regex!20756)

(assert (=> b!7770653 (= e!4604208 e!4604212)))

(declare-fun c!1432218 () Bool)

(assert (=> b!7770653 (= c!1432218 (is-ElementMatch!20756 lt!2671356))))

(declare-fun b!7770655 () Bool)

(declare-fun c!1432221 () Bool)

(assert (=> b!7770655 (= c!1432221 (nullable!9146 (regOne!42024 lt!2671356)))))

(declare-fun e!4604209 () Regex!20756)

(declare-fun e!4604210 () Regex!20756)

(assert (=> b!7770655 (= e!4604209 e!4604210)))

(declare-fun b!7770656 () Bool)

(assert (=> b!7770656 (= e!4604208 EmptyLang!20756)))

(declare-fun b!7770657 () Bool)

(assert (=> b!7770657 (= e!4604211 e!4604209)))

(declare-fun c!1432220 () Bool)

(assert (=> b!7770657 (= c!1432220 (is-Star!20756 lt!2671356))))

(declare-fun b!7770658 () Bool)

(assert (=> b!7770658 (= e!4604212 (ite (= (head!15883 s!14904) (c!1432085 lt!2671356)) EmptyExpr!20756 EmptyLang!20756))))

(declare-fun call!720147 () Regex!20756)

(declare-fun bm!720140 () Bool)

(assert (=> bm!720140 (= call!720147 (derivativeStep!6101 (ite c!1432219 (regOne!42025 lt!2671356) (ite c!1432220 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))) (head!15883 s!14904)))))

(declare-fun d!2344370 () Bool)

(declare-fun lt!2671422 () Regex!20756)

(assert (=> d!2344370 (validRegex!11170 lt!2671422)))

(assert (=> d!2344370 (= lt!2671422 e!4604208)))

(declare-fun c!1432222 () Bool)

(assert (=> d!2344370 (= c!1432222 (or (is-EmptyExpr!20756 lt!2671356) (is-EmptyLang!20756 lt!2671356)))))

(assert (=> d!2344370 (validRegex!11170 lt!2671356)))

(assert (=> d!2344370 (= (derivativeStep!6101 lt!2671356 (head!15883 s!14904)) lt!2671422)))

(declare-fun call!720148 () Regex!20756)

(declare-fun call!720145 () Regex!20756)

(declare-fun b!7770654 () Bool)

(assert (=> b!7770654 (= e!4604210 (Union!20756 (Concat!29601 call!720148 (regTwo!42024 lt!2671356)) call!720145))))

(declare-fun bm!720141 () Bool)

(declare-fun call!720146 () Regex!20756)

(assert (=> bm!720141 (= call!720148 call!720146)))

(declare-fun bm!720142 () Bool)

(assert (=> bm!720142 (= call!720146 call!720147)))

(declare-fun b!7770659 () Bool)

(assert (=> b!7770659 (= e!4604211 (Union!20756 call!720147 call!720145))))

(declare-fun b!7770660 () Bool)

(assert (=> b!7770660 (= e!4604209 (Concat!29601 call!720146 lt!2671356))))

(declare-fun bm!720143 () Bool)

(assert (=> bm!720143 (= call!720145 (derivativeStep!6101 (ite c!1432219 (regTwo!42025 lt!2671356) (regTwo!42024 lt!2671356)) (head!15883 s!14904)))))

(declare-fun b!7770661 () Bool)

(assert (=> b!7770661 (= e!4604210 (Union!20756 (Concat!29601 call!720148 (regTwo!42024 lt!2671356)) EmptyLang!20756))))

(assert (= (and d!2344370 c!1432222) b!7770656))

(assert (= (and d!2344370 (not c!1432222)) b!7770653))

(assert (= (and b!7770653 c!1432218) b!7770658))

(assert (= (and b!7770653 (not c!1432218)) b!7770652))

(assert (= (and b!7770652 c!1432219) b!7770659))

(assert (= (and b!7770652 (not c!1432219)) b!7770657))

(assert (= (and b!7770657 c!1432220) b!7770660))

(assert (= (and b!7770657 (not c!1432220)) b!7770655))

(assert (= (and b!7770655 c!1432221) b!7770654))

(assert (= (and b!7770655 (not c!1432221)) b!7770661))

(assert (= (or b!7770654 b!7770661) bm!720141))

(assert (= (or b!7770660 bm!720141) bm!720142))

(assert (= (or b!7770659 b!7770654) bm!720143))

(assert (= (or b!7770659 bm!720142) bm!720140))

(assert (=> b!7770655 m!8224384))

(assert (=> bm!720140 m!8224442))

(declare-fun m!8224656 () Bool)

(assert (=> bm!720140 m!8224656))

(declare-fun m!8224658 () Bool)

(assert (=> d!2344370 m!8224658))

(assert (=> d!2344370 m!8224330))

(assert (=> bm!720143 m!8224442))

(declare-fun m!8224660 () Bool)

(assert (=> bm!720143 m!8224660))

(assert (=> b!7770336 d!2344370))

(declare-fun d!2344372 () Bool)

(assert (=> d!2344372 (= (head!15883 s!14904) (h!79921 s!14904))))

(assert (=> b!7770336 d!2344372))

(declare-fun d!2344374 () Bool)

(assert (=> d!2344374 (= (tail!15424 s!14904) (t!388332 s!14904))))

(assert (=> b!7770336 d!2344374))

(assert (=> d!2344290 d!2344336))

(assert (=> d!2344290 d!2344306))

(assert (=> b!7770188 d!2344364))

(assert (=> b!7770188 d!2344356))

(declare-fun d!2344376 () Bool)

(assert (=> d!2344376 (= (isEmpty!42144 lt!2671355) (not (is-Some!17720 lt!2671355)))))

(assert (=> d!2344308 d!2344376))

(declare-fun d!2344378 () Bool)

(assert (=> d!2344378 (= (nullable!9146 lt!2671356) (nullableFct!3585 lt!2671356))))

(declare-fun bs!1966099 () Bool)

(assert (= bs!1966099 d!2344378))

(declare-fun m!8224662 () Bool)

(assert (=> bs!1966099 m!8224662))

(assert (=> b!7770338 d!2344378))

(declare-fun d!2344380 () Bool)

(assert (=> d!2344380 (= (isEmpty!42143 (tail!15424 s!14904)) (is-Nil!73473 (tail!15424 s!14904)))))

(assert (=> b!7770333 d!2344380))

(assert (=> b!7770333 d!2344374))

(declare-fun b!7770662 () Bool)

(declare-fun e!4604213 () Bool)

(declare-fun call!720149 () Bool)

(assert (=> b!7770662 (= e!4604213 call!720149)))

(declare-fun c!1432223 () Bool)

(declare-fun bm!720144 () Bool)

(declare-fun c!1432224 () Bool)

(assert (=> bm!720144 (= call!720149 (validRegex!11170 (ite c!1432223 (reg!21085 lt!2671376) (ite c!1432224 (regOne!42025 lt!2671376) (regTwo!42024 lt!2671376)))))))

(declare-fun b!7770663 () Bool)

(declare-fun e!4604219 () Bool)

(declare-fun call!720151 () Bool)

(assert (=> b!7770663 (= e!4604219 call!720151)))

(declare-fun b!7770664 () Bool)

(declare-fun e!4604217 () Bool)

(assert (=> b!7770664 (= e!4604217 e!4604219)))

(declare-fun res!3097613 () Bool)

(assert (=> b!7770664 (=> (not res!3097613) (not e!4604219))))

(declare-fun call!720150 () Bool)

(assert (=> b!7770664 (= res!3097613 call!720150)))

(declare-fun b!7770665 () Bool)

(declare-fun e!4604215 () Bool)

(assert (=> b!7770665 (= e!4604215 e!4604213)))

(declare-fun res!3097611 () Bool)

(assert (=> b!7770665 (= res!3097611 (not (nullable!9146 (reg!21085 lt!2671376))))))

(assert (=> b!7770665 (=> (not res!3097611) (not e!4604213))))

(declare-fun b!7770666 () Bool)

(declare-fun res!3097610 () Bool)

(declare-fun e!4604218 () Bool)

(assert (=> b!7770666 (=> (not res!3097610) (not e!4604218))))

(assert (=> b!7770666 (= res!3097610 call!720151)))

(declare-fun e!4604214 () Bool)

(assert (=> b!7770666 (= e!4604214 e!4604218)))

(declare-fun b!7770667 () Bool)

(assert (=> b!7770667 (= e!4604215 e!4604214)))

(assert (=> b!7770667 (= c!1432224 (is-Union!20756 lt!2671376))))

(declare-fun b!7770668 () Bool)

(declare-fun e!4604216 () Bool)

(assert (=> b!7770668 (= e!4604216 e!4604215)))

(assert (=> b!7770668 (= c!1432223 (is-Star!20756 lt!2671376))))

(declare-fun b!7770669 () Bool)

(assert (=> b!7770669 (= e!4604218 call!720150)))

(declare-fun b!7770670 () Bool)

(declare-fun res!3097612 () Bool)

(assert (=> b!7770670 (=> res!3097612 e!4604217)))

(assert (=> b!7770670 (= res!3097612 (not (is-Concat!29601 lt!2671376)))))

(assert (=> b!7770670 (= e!4604214 e!4604217)))

(declare-fun bm!720146 () Bool)

(assert (=> bm!720146 (= call!720151 call!720149)))

(declare-fun bm!720145 () Bool)

(assert (=> bm!720145 (= call!720150 (validRegex!11170 (ite c!1432224 (regTwo!42025 lt!2671376) (regOne!42024 lt!2671376))))))

(declare-fun d!2344382 () Bool)

(declare-fun res!3097609 () Bool)

(assert (=> d!2344382 (=> res!3097609 e!4604216)))

(assert (=> d!2344382 (= res!3097609 (is-ElementMatch!20756 lt!2671376))))

(assert (=> d!2344382 (= (validRegex!11170 lt!2671376) e!4604216)))

(assert (= (and d!2344382 (not res!3097609)) b!7770668))

(assert (= (and b!7770668 c!1432223) b!7770665))

(assert (= (and b!7770668 (not c!1432223)) b!7770667))

(assert (= (and b!7770665 res!3097611) b!7770662))

(assert (= (and b!7770667 c!1432224) b!7770666))

(assert (= (and b!7770667 (not c!1432224)) b!7770670))

(assert (= (and b!7770666 res!3097610) b!7770669))

(assert (= (and b!7770670 (not res!3097612)) b!7770664))

(assert (= (and b!7770664 res!3097613) b!7770663))

(assert (= (or b!7770669 b!7770664) bm!720145))

(assert (= (or b!7770666 b!7770663) bm!720146))

(assert (= (or b!7770662 bm!720146) bm!720144))

(declare-fun m!8224664 () Bool)

(assert (=> bm!720144 m!8224664))

(declare-fun m!8224666 () Bool)

(assert (=> b!7770665 m!8224666))

(declare-fun m!8224668 () Bool)

(assert (=> bm!720145 m!8224668))

(assert (=> d!2344296 d!2344382))

(assert (=> d!2344296 d!2344304))

(assert (=> b!7770185 d!2344354))

(assert (=> b!7770334 d!2344380))

(assert (=> b!7770334 d!2344374))

(declare-fun b!7770671 () Bool)

(declare-fun e!4604220 () Bool)

(declare-fun call!720152 () Bool)

(assert (=> b!7770671 (= e!4604220 call!720152)))

(declare-fun bm!720147 () Bool)

(declare-fun c!1432226 () Bool)

(declare-fun c!1432225 () Bool)

(assert (=> bm!720147 (= call!720152 (validRegex!11170 (ite c!1432225 (reg!21085 lt!2671377) (ite c!1432226 (regOne!42025 lt!2671377) (regTwo!42024 lt!2671377)))))))

(declare-fun b!7770672 () Bool)

(declare-fun e!4604226 () Bool)

(declare-fun call!720154 () Bool)

(assert (=> b!7770672 (= e!4604226 call!720154)))

(declare-fun b!7770673 () Bool)

(declare-fun e!4604224 () Bool)

(assert (=> b!7770673 (= e!4604224 e!4604226)))

(declare-fun res!3097618 () Bool)

(assert (=> b!7770673 (=> (not res!3097618) (not e!4604226))))

(declare-fun call!720153 () Bool)

(assert (=> b!7770673 (= res!3097618 call!720153)))

(declare-fun b!7770674 () Bool)

(declare-fun e!4604222 () Bool)

(assert (=> b!7770674 (= e!4604222 e!4604220)))

(declare-fun res!3097616 () Bool)

(assert (=> b!7770674 (= res!3097616 (not (nullable!9146 (reg!21085 lt!2671377))))))

(assert (=> b!7770674 (=> (not res!3097616) (not e!4604220))))

(declare-fun b!7770675 () Bool)

(declare-fun res!3097615 () Bool)

(declare-fun e!4604225 () Bool)

(assert (=> b!7770675 (=> (not res!3097615) (not e!4604225))))

(assert (=> b!7770675 (= res!3097615 call!720154)))

(declare-fun e!4604221 () Bool)

(assert (=> b!7770675 (= e!4604221 e!4604225)))

(declare-fun b!7770676 () Bool)

(assert (=> b!7770676 (= e!4604222 e!4604221)))

(assert (=> b!7770676 (= c!1432226 (is-Union!20756 lt!2671377))))

(declare-fun b!7770677 () Bool)

(declare-fun e!4604223 () Bool)

(assert (=> b!7770677 (= e!4604223 e!4604222)))

(assert (=> b!7770677 (= c!1432225 (is-Star!20756 lt!2671377))))

(declare-fun b!7770678 () Bool)

(assert (=> b!7770678 (= e!4604225 call!720153)))

(declare-fun b!7770679 () Bool)

(declare-fun res!3097617 () Bool)

(assert (=> b!7770679 (=> res!3097617 e!4604224)))

(assert (=> b!7770679 (= res!3097617 (not (is-Concat!29601 lt!2671377)))))

(assert (=> b!7770679 (= e!4604221 e!4604224)))

(declare-fun bm!720149 () Bool)

(assert (=> bm!720149 (= call!720154 call!720152)))

(declare-fun bm!720148 () Bool)

(assert (=> bm!720148 (= call!720153 (validRegex!11170 (ite c!1432226 (regTwo!42025 lt!2671377) (regOne!42024 lt!2671377))))))

(declare-fun d!2344384 () Bool)

(declare-fun res!3097614 () Bool)

(assert (=> d!2344384 (=> res!3097614 e!4604223)))

(assert (=> d!2344384 (= res!3097614 (is-ElementMatch!20756 lt!2671377))))

(assert (=> d!2344384 (= (validRegex!11170 lt!2671377) e!4604223)))

(assert (= (and d!2344384 (not res!3097614)) b!7770677))

(assert (= (and b!7770677 c!1432225) b!7770674))

(assert (= (and b!7770677 (not c!1432225)) b!7770676))

(assert (= (and b!7770674 res!3097616) b!7770671))

(assert (= (and b!7770676 c!1432226) b!7770675))

(assert (= (and b!7770676 (not c!1432226)) b!7770679))

(assert (= (and b!7770675 res!3097615) b!7770678))

(assert (= (and b!7770679 (not res!3097617)) b!7770673))

(assert (= (and b!7770673 res!3097618) b!7770672))

(assert (= (or b!7770678 b!7770673) bm!720148))

(assert (= (or b!7770675 b!7770672) bm!720149))

(assert (= (or b!7770671 bm!720149) bm!720147))

(declare-fun m!8224670 () Bool)

(assert (=> bm!720147 m!8224670))

(declare-fun m!8224672 () Bool)

(assert (=> b!7770674 m!8224672))

(declare-fun m!8224674 () Bool)

(assert (=> bm!720148 m!8224674))

(assert (=> d!2344302 d!2344384))

(assert (=> d!2344302 d!2344306))

(declare-fun c!1432228 () Bool)

(declare-fun b!7770680 () Bool)

(assert (=> b!7770680 (= c!1432228 (is-Union!20756 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))))))

(declare-fun e!4604231 () Regex!20756)

(declare-fun e!4604230 () Regex!20756)

(assert (=> b!7770680 (= e!4604231 e!4604230)))

(declare-fun b!7770681 () Bool)

(declare-fun e!4604227 () Regex!20756)

(assert (=> b!7770681 (= e!4604227 e!4604231)))

(declare-fun c!1432227 () Bool)

(assert (=> b!7770681 (= c!1432227 (is-ElementMatch!20756 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))))))

(declare-fun b!7770683 () Bool)

(declare-fun c!1432230 () Bool)

(assert (=> b!7770683 (= c!1432230 (nullable!9146 (regOne!42024 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))))))))

(declare-fun e!4604228 () Regex!20756)

(declare-fun e!4604229 () Regex!20756)

(assert (=> b!7770683 (= e!4604228 e!4604229)))

(declare-fun b!7770684 () Bool)

(assert (=> b!7770684 (= e!4604227 EmptyLang!20756)))

(declare-fun b!7770685 () Bool)

(assert (=> b!7770685 (= e!4604230 e!4604228)))

(declare-fun c!1432229 () Bool)

(assert (=> b!7770685 (= c!1432229 (is-Star!20756 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))))))

(declare-fun b!7770686 () Bool)

(assert (=> b!7770686 (= e!4604231 (ite (= (h!79921 s!14904) (c!1432085 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))))) EmptyExpr!20756 EmptyLang!20756))))

(declare-fun call!720157 () Regex!20756)

(declare-fun bm!720150 () Bool)

(assert (=> bm!720150 (= call!720157 (derivativeStep!6101 (ite c!1432228 (regOne!42025 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))) (ite c!1432229 (reg!21085 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))) (regOne!42024 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))))) (h!79921 s!14904)))))

(declare-fun d!2344386 () Bool)

(declare-fun lt!2671423 () Regex!20756)

(assert (=> d!2344386 (validRegex!11170 lt!2671423)))

(assert (=> d!2344386 (= lt!2671423 e!4604227)))

(declare-fun c!1432231 () Bool)

(assert (=> d!2344386 (= c!1432231 (or (is-EmptyExpr!20756 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))) (is-EmptyLang!20756 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))))))))

(assert (=> d!2344386 (validRegex!11170 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))))))

(assert (=> d!2344386 (= (derivativeStep!6101 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))) (h!79921 s!14904)) lt!2671423)))

(declare-fun b!7770682 () Bool)

(declare-fun call!720158 () Regex!20756)

(declare-fun call!720155 () Regex!20756)

(assert (=> b!7770682 (= e!4604229 (Union!20756 (Concat!29601 call!720158 (regTwo!42024 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))))) call!720155))))

(declare-fun bm!720151 () Bool)

(declare-fun call!720156 () Regex!20756)

(assert (=> bm!720151 (= call!720158 call!720156)))

(declare-fun bm!720152 () Bool)

(assert (=> bm!720152 (= call!720156 call!720157)))

(declare-fun b!7770687 () Bool)

(assert (=> b!7770687 (= e!4604230 (Union!20756 call!720157 call!720155))))

(declare-fun b!7770688 () Bool)

(assert (=> b!7770688 (= e!4604228 (Concat!29601 call!720156 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))))))

(declare-fun bm!720153 () Bool)

(assert (=> bm!720153 (= call!720155 (derivativeStep!6101 (ite c!1432228 (regTwo!42025 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356)))) (regTwo!42024 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))))) (h!79921 s!14904)))))

(declare-fun b!7770689 () Bool)

(assert (=> b!7770689 (= e!4604229 (Union!20756 (Concat!29601 call!720158 (regTwo!42024 (ite c!1432113 (regOne!42025 lt!2671356) (ite c!1432114 (reg!21085 lt!2671356) (regOne!42024 lt!2671356))))) EmptyLang!20756))))

(assert (= (and d!2344386 c!1432231) b!7770684))

(assert (= (and d!2344386 (not c!1432231)) b!7770681))

(assert (= (and b!7770681 c!1432227) b!7770686))

(assert (= (and b!7770681 (not c!1432227)) b!7770680))

(assert (= (and b!7770680 c!1432228) b!7770687))

(assert (= (and b!7770680 (not c!1432228)) b!7770685))

(assert (= (and b!7770685 c!1432229) b!7770688))

(assert (= (and b!7770685 (not c!1432229)) b!7770683))

(assert (= (and b!7770683 c!1432230) b!7770682))

(assert (= (and b!7770683 (not c!1432230)) b!7770689))

(assert (= (or b!7770682 b!7770689) bm!720151))

(assert (= (or b!7770688 bm!720151) bm!720152))

(assert (= (or b!7770687 b!7770682) bm!720153))

(assert (= (or b!7770687 bm!720152) bm!720150))

(declare-fun m!8224676 () Bool)

(assert (=> b!7770683 m!8224676))

(declare-fun m!8224678 () Bool)

(assert (=> bm!720150 m!8224678))

(declare-fun m!8224680 () Bool)

(assert (=> d!2344386 m!8224680))

(declare-fun m!8224682 () Bool)

(assert (=> d!2344386 m!8224682))

(declare-fun m!8224684 () Bool)

(assert (=> bm!720153 m!8224684))

(assert (=> bm!720070 d!2344386))

(declare-fun d!2344388 () Bool)

(assert (=> d!2344388 (= (isDefined!14333 (findConcatSeparation!3751 lt!2671357 lt!2671356 Nil!73473 (t!388332 s!14904) (t!388332 s!14904))) (not (isEmpty!42144 (findConcatSeparation!3751 lt!2671357 lt!2671356 Nil!73473 (t!388332 s!14904) (t!388332 s!14904)))))))

(declare-fun bs!1966100 () Bool)

(assert (= bs!1966100 d!2344388))

(assert (=> bs!1966100 m!8224326))

(declare-fun m!8224686 () Bool)

(assert (=> bs!1966100 m!8224686))

(assert (=> d!2344312 d!2344388))

(assert (=> d!2344312 d!2344310))

(declare-fun d!2344390 () Bool)

(assert (=> d!2344390 (isDefined!14333 (findConcatSeparation!3751 lt!2671357 lt!2671356 Nil!73473 (t!388332 s!14904) (t!388332 s!14904)))))

(assert (=> d!2344390 true))

(declare-fun _$122!394 () Unit!168450)

(assert (=> d!2344390 (= (choose!59470 lt!2671357 lt!2671356 (t!388332 s!14904)) _$122!394)))

(declare-fun bs!1966101 () Bool)

(assert (= bs!1966101 d!2344390))

(assert (=> bs!1966101 m!8224326))

(assert (=> bs!1966101 m!8224326))

(assert (=> bs!1966101 m!8224438))

(assert (=> d!2344312 d!2344390))

(assert (=> d!2344312 d!2344342))

(assert (=> b!7770186 d!2344354))

(declare-fun d!2344392 () Bool)

(assert (=> d!2344392 (= (nullable!9146 (regOne!42024 lt!2671356)) (nullableFct!3585 (regOne!42024 lt!2671356)))))

(declare-fun bs!1966102 () Bool)

(assert (= bs!1966102 d!2344392))

(declare-fun m!8224688 () Bool)

(assert (=> bs!1966102 m!8224688))

(assert (=> b!7770230 d!2344392))

(assert (=> b!7770331 d!2344372))

(declare-fun b!7770690 () Bool)

(declare-fun res!3097620 () Bool)

(declare-fun e!4604233 () Bool)

(assert (=> b!7770690 (=> (not res!3097620) (not e!4604233))))

(declare-fun call!720159 () Bool)

(assert (=> b!7770690 (= res!3097620 (not call!720159))))

(declare-fun b!7770691 () Bool)

(declare-fun res!3097622 () Bool)

(declare-fun e!4604235 () Bool)

(assert (=> b!7770691 (=> res!3097622 e!4604235)))

(assert (=> b!7770691 (= res!3097622 e!4604233)))

(declare-fun res!3097625 () Bool)

(assert (=> b!7770691 (=> (not res!3097625) (not e!4604233))))

(declare-fun lt!2671424 () Bool)

(assert (=> b!7770691 (= res!3097625 lt!2671424)))

(declare-fun b!7770692 () Bool)

(declare-fun e!4604236 () Bool)

(assert (=> b!7770692 (= e!4604236 (= lt!2671424 call!720159))))

(declare-fun b!7770693 () Bool)

(declare-fun e!4604232 () Bool)

(assert (=> b!7770693 (= e!4604232 (not (= (head!15883 (_1!38230 (get!26234 lt!2671391))) (c!1432085 lt!2671357))))))

(declare-fun b!7770694 () Bool)

(assert (=> b!7770694 (= e!4604233 (= (head!15883 (_1!38230 (get!26234 lt!2671391))) (c!1432085 lt!2671357)))))

(declare-fun b!7770695 () Bool)

(declare-fun res!3097624 () Bool)

(assert (=> b!7770695 (=> (not res!3097624) (not e!4604233))))

(assert (=> b!7770695 (= res!3097624 (isEmpty!42143 (tail!15424 (_1!38230 (get!26234 lt!2671391)))))))

(declare-fun b!7770697 () Bool)

(declare-fun e!4604237 () Bool)

(assert (=> b!7770697 (= e!4604237 (not lt!2671424))))

(declare-fun b!7770698 () Bool)

(declare-fun e!4604234 () Bool)

(assert (=> b!7770698 (= e!4604234 (matchR!10218 (derivativeStep!6101 lt!2671357 (head!15883 (_1!38230 (get!26234 lt!2671391)))) (tail!15424 (_1!38230 (get!26234 lt!2671391)))))))

(declare-fun b!7770699 () Bool)

(assert (=> b!7770699 (= e!4604236 e!4604237)))

(declare-fun c!1432234 () Bool)

(assert (=> b!7770699 (= c!1432234 (is-EmptyLang!20756 lt!2671357))))

(declare-fun b!7770700 () Bool)

(assert (=> b!7770700 (= e!4604234 (nullable!9146 lt!2671357))))

(declare-fun b!7770701 () Bool)

(declare-fun res!3097621 () Bool)

(assert (=> b!7770701 (=> res!3097621 e!4604235)))

(assert (=> b!7770701 (= res!3097621 (not (is-ElementMatch!20756 lt!2671357)))))

(assert (=> b!7770701 (= e!4604237 e!4604235)))

(declare-fun b!7770702 () Bool)

(declare-fun e!4604238 () Bool)

(assert (=> b!7770702 (= e!4604235 e!4604238)))

(declare-fun res!3097626 () Bool)

(assert (=> b!7770702 (=> (not res!3097626) (not e!4604238))))

(assert (=> b!7770702 (= res!3097626 (not lt!2671424))))

(declare-fun d!2344394 () Bool)

(assert (=> d!2344394 e!4604236))

(declare-fun c!1432232 () Bool)

(assert (=> d!2344394 (= c!1432232 (is-EmptyExpr!20756 lt!2671357))))

(assert (=> d!2344394 (= lt!2671424 e!4604234)))

(declare-fun c!1432233 () Bool)

(assert (=> d!2344394 (= c!1432233 (isEmpty!42143 (_1!38230 (get!26234 lt!2671391))))))

(assert (=> d!2344394 (validRegex!11170 lt!2671357)))

(assert (=> d!2344394 (= (matchR!10218 lt!2671357 (_1!38230 (get!26234 lt!2671391))) lt!2671424)))

(declare-fun b!7770696 () Bool)

(declare-fun res!3097619 () Bool)

(assert (=> b!7770696 (=> res!3097619 e!4604232)))

(assert (=> b!7770696 (= res!3097619 (not (isEmpty!42143 (tail!15424 (_1!38230 (get!26234 lt!2671391))))))))

(declare-fun b!7770703 () Bool)

(assert (=> b!7770703 (= e!4604238 e!4604232)))

(declare-fun res!3097623 () Bool)

(assert (=> b!7770703 (=> res!3097623 e!4604232)))

(assert (=> b!7770703 (= res!3097623 call!720159)))

(declare-fun bm!720154 () Bool)

(assert (=> bm!720154 (= call!720159 (isEmpty!42143 (_1!38230 (get!26234 lt!2671391))))))

(assert (= (and d!2344394 c!1432233) b!7770700))

(assert (= (and d!2344394 (not c!1432233)) b!7770698))

(assert (= (and d!2344394 c!1432232) b!7770692))

(assert (= (and d!2344394 (not c!1432232)) b!7770699))

(assert (= (and b!7770699 c!1432234) b!7770697))

(assert (= (and b!7770699 (not c!1432234)) b!7770701))

(assert (= (and b!7770701 (not res!3097621)) b!7770691))

(assert (= (and b!7770691 res!3097625) b!7770690))

(assert (= (and b!7770690 res!3097620) b!7770695))

(assert (= (and b!7770695 res!3097624) b!7770694))

(assert (= (and b!7770691 (not res!3097622)) b!7770702))

(assert (= (and b!7770702 res!3097626) b!7770703))

(assert (= (and b!7770703 (not res!3097623)) b!7770696))

(assert (= (and b!7770696 (not res!3097619)) b!7770693))

(assert (= (or b!7770692 b!7770690 b!7770703) bm!720154))

(declare-fun m!8224690 () Bool)

(assert (=> b!7770693 m!8224690))

(assert (=> b!7770698 m!8224690))

(assert (=> b!7770698 m!8224690))

(declare-fun m!8224692 () Bool)

(assert (=> b!7770698 m!8224692))

(declare-fun m!8224694 () Bool)

(assert (=> b!7770698 m!8224694))

(assert (=> b!7770698 m!8224692))

(assert (=> b!7770698 m!8224694))

(declare-fun m!8224696 () Bool)

(assert (=> b!7770698 m!8224696))

(assert (=> b!7770695 m!8224694))

(assert (=> b!7770695 m!8224694))

(declare-fun m!8224698 () Bool)

(assert (=> b!7770695 m!8224698))

(declare-fun m!8224700 () Bool)

(assert (=> d!2344394 m!8224700))

(assert (=> d!2344394 m!8224418))

(assert (=> b!7770694 m!8224690))

(assert (=> b!7770696 m!8224694))

(assert (=> b!7770696 m!8224694))

(assert (=> b!7770696 m!8224698))

(assert (=> b!7770700 m!8224564))

(assert (=> bm!720154 m!8224700))

(assert (=> b!7770319 d!2344394))

(assert (=> b!7770319 d!2344334))

(declare-fun d!2344396 () Bool)

(assert (=> d!2344396 (= (nullable!9146 (regOne!42024 r!25924)) (nullableFct!3585 (regOne!42024 r!25924)))))

(declare-fun bs!1966103 () Bool)

(assert (= bs!1966103 d!2344396))

(declare-fun m!8224702 () Bool)

(assert (=> bs!1966103 m!8224702))

(assert (=> b!7770240 d!2344396))

(assert (=> b!7770332 d!2344372))

(declare-fun b!7770704 () Bool)

(declare-fun e!4604239 () Bool)

(declare-fun call!720160 () Bool)

(assert (=> b!7770704 (= e!4604239 call!720160)))

(declare-fun c!1432236 () Bool)

(declare-fun bm!720155 () Bool)

(declare-fun c!1432235 () Bool)

(assert (=> bm!720155 (= call!720160 (validRegex!11170 (ite c!1432235 (reg!21085 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))) (ite c!1432236 (regOne!42025 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))) (regTwo!42024 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356)))))))))

(declare-fun b!7770705 () Bool)

(declare-fun e!4604245 () Bool)

(declare-fun call!720162 () Bool)

(assert (=> b!7770705 (= e!4604245 call!720162)))

(declare-fun b!7770706 () Bool)

(declare-fun e!4604243 () Bool)

(assert (=> b!7770706 (= e!4604243 e!4604245)))

(declare-fun res!3097631 () Bool)

(assert (=> b!7770706 (=> (not res!3097631) (not e!4604245))))

(declare-fun call!720161 () Bool)

(assert (=> b!7770706 (= res!3097631 call!720161)))

(declare-fun b!7770707 () Bool)

(declare-fun e!4604241 () Bool)

(assert (=> b!7770707 (= e!4604241 e!4604239)))

(declare-fun res!3097629 () Bool)

(assert (=> b!7770707 (= res!3097629 (not (nullable!9146 (reg!21085 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))))))))

(assert (=> b!7770707 (=> (not res!3097629) (not e!4604239))))

(declare-fun b!7770708 () Bool)

(declare-fun res!3097628 () Bool)

(declare-fun e!4604244 () Bool)

(assert (=> b!7770708 (=> (not res!3097628) (not e!4604244))))

(assert (=> b!7770708 (= res!3097628 call!720162)))

(declare-fun e!4604240 () Bool)

(assert (=> b!7770708 (= e!4604240 e!4604244)))

(declare-fun b!7770709 () Bool)

(assert (=> b!7770709 (= e!4604241 e!4604240)))

(assert (=> b!7770709 (= c!1432236 (is-Union!20756 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))))))

(declare-fun b!7770710 () Bool)

(declare-fun e!4604242 () Bool)

(assert (=> b!7770710 (= e!4604242 e!4604241)))

(assert (=> b!7770710 (= c!1432235 (is-Star!20756 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))))))

(declare-fun b!7770711 () Bool)

(assert (=> b!7770711 (= e!4604244 call!720161)))

(declare-fun b!7770712 () Bool)

(declare-fun res!3097630 () Bool)

(assert (=> b!7770712 (=> res!3097630 e!4604243)))

(assert (=> b!7770712 (= res!3097630 (not (is-Concat!29601 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356)))))))

(assert (=> b!7770712 (= e!4604240 e!4604243)))

(declare-fun bm!720157 () Bool)

(assert (=> bm!720157 (= call!720162 call!720160)))

(declare-fun bm!720156 () Bool)

(assert (=> bm!720156 (= call!720161 (validRegex!11170 (ite c!1432236 (regTwo!42025 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))) (regOne!42024 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))))))))

(declare-fun d!2344398 () Bool)

(declare-fun res!3097627 () Bool)

(assert (=> d!2344398 (=> res!3097627 e!4604242)))

(assert (=> d!2344398 (= res!3097627 (is-ElementMatch!20756 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))))))

(assert (=> d!2344398 (= (validRegex!11170 (ite c!1432127 (regTwo!42025 lt!2671356) (regOne!42024 lt!2671356))) e!4604242)))

(assert (= (and d!2344398 (not res!3097627)) b!7770710))

(assert (= (and b!7770710 c!1432235) b!7770707))

(assert (= (and b!7770710 (not c!1432235)) b!7770709))

(assert (= (and b!7770707 res!3097629) b!7770704))

(assert (= (and b!7770709 c!1432236) b!7770708))

(assert (= (and b!7770709 (not c!1432236)) b!7770712))

(assert (= (and b!7770708 res!3097628) b!7770711))

(assert (= (and b!7770712 (not res!3097630)) b!7770706))

(assert (= (and b!7770706 res!3097631) b!7770705))

(assert (= (or b!7770711 b!7770706) bm!720156))

(assert (= (or b!7770708 b!7770705) bm!720157))

(assert (= (or b!7770704 bm!720157) bm!720155))

(declare-fun m!8224704 () Bool)

(assert (=> bm!720155 m!8224704))

(declare-fun m!8224706 () Bool)

(assert (=> b!7770707 m!8224706))

(declare-fun m!8224708 () Bool)

(assert (=> bm!720156 m!8224708))

(assert (=> bm!720085 d!2344398))

(declare-fun d!2344400 () Bool)

(assert (=> d!2344400 (= (nullable!9146 (reg!21085 lt!2671356)) (nullableFct!3585 (reg!21085 lt!2671356)))))

(declare-fun bs!1966104 () Bool)

(assert (= bs!1966104 d!2344400))

(declare-fun m!8224710 () Bool)

(assert (=> bs!1966104 m!8224710))

(assert (=> b!7770268 d!2344400))

(assert (=> d!2344314 d!2344348))

(assert (=> d!2344314 d!2344304))

(declare-fun b!7770713 () Bool)

(declare-fun res!3097633 () Bool)

(declare-fun e!4604247 () Bool)

(assert (=> b!7770713 (=> (not res!3097633) (not e!4604247))))

(declare-fun call!720163 () Bool)

(assert (=> b!7770713 (= res!3097633 (not call!720163))))

(declare-fun b!7770714 () Bool)

(declare-fun res!3097635 () Bool)

(declare-fun e!4604249 () Bool)

(assert (=> b!7770714 (=> res!3097635 e!4604249)))

(assert (=> b!7770714 (= res!3097635 e!4604247)))

(declare-fun res!3097638 () Bool)

(assert (=> b!7770714 (=> (not res!3097638) (not e!4604247))))

(declare-fun lt!2671425 () Bool)

(assert (=> b!7770714 (= res!3097638 lt!2671425)))

(declare-fun b!7770715 () Bool)

(declare-fun e!4604250 () Bool)

(assert (=> b!7770715 (= e!4604250 (= lt!2671425 call!720163))))

(declare-fun b!7770716 () Bool)

(declare-fun e!4604246 () Bool)

(assert (=> b!7770716 (= e!4604246 (not (= (head!15883 (_2!38230 (get!26234 lt!2671391))) (c!1432085 lt!2671356))))))

(declare-fun b!7770717 () Bool)

(assert (=> b!7770717 (= e!4604247 (= (head!15883 (_2!38230 (get!26234 lt!2671391))) (c!1432085 lt!2671356)))))

(declare-fun b!7770718 () Bool)

(declare-fun res!3097637 () Bool)

(assert (=> b!7770718 (=> (not res!3097637) (not e!4604247))))

(assert (=> b!7770718 (= res!3097637 (isEmpty!42143 (tail!15424 (_2!38230 (get!26234 lt!2671391)))))))

(declare-fun b!7770720 () Bool)

(declare-fun e!4604251 () Bool)

(assert (=> b!7770720 (= e!4604251 (not lt!2671425))))

(declare-fun b!7770721 () Bool)

(declare-fun e!4604248 () Bool)

(assert (=> b!7770721 (= e!4604248 (matchR!10218 (derivativeStep!6101 lt!2671356 (head!15883 (_2!38230 (get!26234 lt!2671391)))) (tail!15424 (_2!38230 (get!26234 lt!2671391)))))))

(declare-fun b!7770722 () Bool)

(assert (=> b!7770722 (= e!4604250 e!4604251)))

(declare-fun c!1432239 () Bool)

(assert (=> b!7770722 (= c!1432239 (is-EmptyLang!20756 lt!2671356))))

(declare-fun b!7770723 () Bool)

(assert (=> b!7770723 (= e!4604248 (nullable!9146 lt!2671356))))

(declare-fun b!7770724 () Bool)

(declare-fun res!3097634 () Bool)

(assert (=> b!7770724 (=> res!3097634 e!4604249)))

(assert (=> b!7770724 (= res!3097634 (not (is-ElementMatch!20756 lt!2671356)))))

(assert (=> b!7770724 (= e!4604251 e!4604249)))

(declare-fun b!7770725 () Bool)

(declare-fun e!4604252 () Bool)

(assert (=> b!7770725 (= e!4604249 e!4604252)))

(declare-fun res!3097639 () Bool)

(assert (=> b!7770725 (=> (not res!3097639) (not e!4604252))))

(assert (=> b!7770725 (= res!3097639 (not lt!2671425))))

(declare-fun d!2344402 () Bool)

(assert (=> d!2344402 e!4604250))

(declare-fun c!1432237 () Bool)

(assert (=> d!2344402 (= c!1432237 (is-EmptyExpr!20756 lt!2671356))))

(assert (=> d!2344402 (= lt!2671425 e!4604248)))

(declare-fun c!1432238 () Bool)

(assert (=> d!2344402 (= c!1432238 (isEmpty!42143 (_2!38230 (get!26234 lt!2671391))))))

(assert (=> d!2344402 (validRegex!11170 lt!2671356)))

(assert (=> d!2344402 (= (matchR!10218 lt!2671356 (_2!38230 (get!26234 lt!2671391))) lt!2671425)))

(declare-fun b!7770719 () Bool)

(declare-fun res!3097632 () Bool)

(assert (=> b!7770719 (=> res!3097632 e!4604246)))

(assert (=> b!7770719 (= res!3097632 (not (isEmpty!42143 (tail!15424 (_2!38230 (get!26234 lt!2671391))))))))

(declare-fun b!7770726 () Bool)

(assert (=> b!7770726 (= e!4604252 e!4604246)))

(declare-fun res!3097636 () Bool)

(assert (=> b!7770726 (=> res!3097636 e!4604246)))

(assert (=> b!7770726 (= res!3097636 call!720163)))

(declare-fun bm!720158 () Bool)

(assert (=> bm!720158 (= call!720163 (isEmpty!42143 (_2!38230 (get!26234 lt!2671391))))))

(assert (= (and d!2344402 c!1432238) b!7770723))

(assert (= (and d!2344402 (not c!1432238)) b!7770721))

(assert (= (and d!2344402 c!1432237) b!7770715))

(assert (= (and d!2344402 (not c!1432237)) b!7770722))

(assert (= (and b!7770722 c!1432239) b!7770720))

(assert (= (and b!7770722 (not c!1432239)) b!7770724))

(assert (= (and b!7770724 (not res!3097634)) b!7770714))

(assert (= (and b!7770714 res!3097638) b!7770713))

(assert (= (and b!7770713 res!3097633) b!7770718))

(assert (= (and b!7770718 res!3097637) b!7770717))

(assert (= (and b!7770714 (not res!3097635)) b!7770725))

(assert (= (and b!7770725 res!3097639) b!7770726))

(assert (= (and b!7770726 (not res!3097636)) b!7770719))

(assert (= (and b!7770719 (not res!3097632)) b!7770716))

(assert (= (or b!7770715 b!7770713 b!7770726) bm!720158))

(declare-fun m!8224712 () Bool)

(assert (=> b!7770716 m!8224712))

(assert (=> b!7770721 m!8224712))

(assert (=> b!7770721 m!8224712))

(declare-fun m!8224714 () Bool)

(assert (=> b!7770721 m!8224714))

(declare-fun m!8224716 () Bool)

(assert (=> b!7770721 m!8224716))

(assert (=> b!7770721 m!8224714))

(assert (=> b!7770721 m!8224716))

(declare-fun m!8224718 () Bool)

(assert (=> b!7770721 m!8224718))

(assert (=> b!7770718 m!8224716))

(assert (=> b!7770718 m!8224716))

(declare-fun m!8224720 () Bool)

(assert (=> b!7770718 m!8224720))

(declare-fun m!8224722 () Bool)

(assert (=> d!2344402 m!8224722))

(assert (=> d!2344402 m!8224330))

(assert (=> b!7770717 m!8224712))

(assert (=> b!7770719 m!8224716))

(assert (=> b!7770719 m!8224716))

(assert (=> b!7770719 m!8224720))

(assert (=> b!7770723 m!8224454))

(assert (=> bm!720158 m!8224722))

(assert (=> b!7770317 d!2344402))

(assert (=> b!7770317 d!2344334))

(declare-fun b!7770727 () Bool)

(declare-fun e!4604253 () Bool)

(declare-fun call!720164 () Bool)

(assert (=> b!7770727 (= e!4604253 call!720164)))

(declare-fun c!1432240 () Bool)

(declare-fun c!1432241 () Bool)

(declare-fun bm!720159 () Bool)

(assert (=> bm!720159 (= call!720164 (validRegex!11170 (ite c!1432240 (reg!21085 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))) (ite c!1432241 (regOne!42025 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))) (regTwo!42024 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356))))))))))

(declare-fun b!7770728 () Bool)

(declare-fun e!4604259 () Bool)

(declare-fun call!720166 () Bool)

(assert (=> b!7770728 (= e!4604259 call!720166)))

(declare-fun b!7770729 () Bool)

(declare-fun e!4604257 () Bool)

(assert (=> b!7770729 (= e!4604257 e!4604259)))

(declare-fun res!3097644 () Bool)

(assert (=> b!7770729 (=> (not res!3097644) (not e!4604259))))

(declare-fun call!720165 () Bool)

(assert (=> b!7770729 (= res!3097644 call!720165)))

(declare-fun b!7770730 () Bool)

(declare-fun e!4604255 () Bool)

(assert (=> b!7770730 (= e!4604255 e!4604253)))

(declare-fun res!3097642 () Bool)

(assert (=> b!7770730 (= res!3097642 (not (nullable!9146 (reg!21085 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))))))))

(assert (=> b!7770730 (=> (not res!3097642) (not e!4604253))))

(declare-fun b!7770731 () Bool)

(declare-fun res!3097641 () Bool)

(declare-fun e!4604258 () Bool)

(assert (=> b!7770731 (=> (not res!3097641) (not e!4604258))))

(assert (=> b!7770731 (= res!3097641 call!720166)))

(declare-fun e!4604254 () Bool)

(assert (=> b!7770731 (= e!4604254 e!4604258)))

(declare-fun b!7770732 () Bool)

(assert (=> b!7770732 (= e!4604255 e!4604254)))

(assert (=> b!7770732 (= c!1432241 (is-Union!20756 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))))))

(declare-fun b!7770733 () Bool)

(declare-fun e!4604256 () Bool)

(assert (=> b!7770733 (= e!4604256 e!4604255)))

(assert (=> b!7770733 (= c!1432240 (is-Star!20756 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))))))

(declare-fun b!7770734 () Bool)

(assert (=> b!7770734 (= e!4604258 call!720165)))

(declare-fun b!7770735 () Bool)

(declare-fun res!3097643 () Bool)

(assert (=> b!7770735 (=> res!3097643 e!4604257)))

(assert (=> b!7770735 (= res!3097643 (not (is-Concat!29601 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356))))))))

(assert (=> b!7770735 (= e!4604254 e!4604257)))

(declare-fun bm!720161 () Bool)

(assert (=> bm!720161 (= call!720166 call!720164)))

(declare-fun bm!720160 () Bool)

(assert (=> bm!720160 (= call!720165 (validRegex!11170 (ite c!1432241 (regTwo!42025 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))) (regOne!42024 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))))))))

(declare-fun d!2344404 () Bool)

(declare-fun res!3097640 () Bool)

(assert (=> d!2344404 (=> res!3097640 e!4604256)))

(assert (=> d!2344404 (= res!3097640 (is-ElementMatch!20756 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))))))

(assert (=> d!2344404 (= (validRegex!11170 (ite c!1432126 (reg!21085 lt!2671356) (ite c!1432127 (regOne!42025 lt!2671356) (regTwo!42024 lt!2671356)))) e!4604256)))

(assert (= (and d!2344404 (not res!3097640)) b!7770733))

(assert (= (and b!7770733 c!1432240) b!7770730))

(assert (= (and b!7770733 (not c!1432240)) b!7770732))

(assert (= (and b!7770730 res!3097642) b!7770727))

(assert (= (and b!7770732 c!1432241) b!7770731))

(assert (= (and b!7770732 (not c!1432241)) b!7770735))

(assert (= (and b!7770731 res!3097641) b!7770734))

(assert (= (and b!7770735 (not res!3097643)) b!7770729))

(assert (= (and b!7770729 res!3097644) b!7770728))

(assert (= (or b!7770734 b!7770729) bm!720160))

(assert (= (or b!7770731 b!7770728) bm!720161))

(assert (= (or b!7770727 bm!720161) bm!720159))

(declare-fun m!8224724 () Bool)

(assert (=> bm!720159 m!8224724))

(declare-fun m!8224726 () Bool)

(assert (=> b!7770730 m!8224726))

(declare-fun m!8224728 () Bool)

(assert (=> bm!720160 m!8224728))

(assert (=> bm!720084 d!2344404))

(assert (=> b!7770313 d!2344338))

(declare-fun b!7770736 () Bool)

(declare-fun e!4604260 () Bool)

(declare-fun call!720167 () Bool)

(assert (=> b!7770736 (= e!4604260 call!720167)))

(declare-fun c!1432243 () Bool)

(declare-fun c!1432242 () Bool)

(declare-fun bm!720162 () Bool)

(assert (=> bm!720162 (= call!720167 (validRegex!11170 (ite c!1432242 (reg!21085 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))) (ite c!1432243 (regOne!42025 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))) (regTwo!42024 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924)))))))))

(declare-fun b!7770737 () Bool)

(declare-fun e!4604266 () Bool)

(declare-fun call!720169 () Bool)

(assert (=> b!7770737 (= e!4604266 call!720169)))

(declare-fun b!7770738 () Bool)

(declare-fun e!4604264 () Bool)

(assert (=> b!7770738 (= e!4604264 e!4604266)))

(declare-fun res!3097649 () Bool)

(assert (=> b!7770738 (=> (not res!3097649) (not e!4604266))))

(declare-fun call!720168 () Bool)

(assert (=> b!7770738 (= res!3097649 call!720168)))

(declare-fun b!7770739 () Bool)

(declare-fun e!4604262 () Bool)

(assert (=> b!7770739 (= e!4604262 e!4604260)))

(declare-fun res!3097647 () Bool)

(assert (=> b!7770739 (= res!3097647 (not (nullable!9146 (reg!21085 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))))))))

(assert (=> b!7770739 (=> (not res!3097647) (not e!4604260))))

(declare-fun b!7770740 () Bool)

(declare-fun res!3097646 () Bool)

(declare-fun e!4604265 () Bool)

(assert (=> b!7770740 (=> (not res!3097646) (not e!4604265))))

(assert (=> b!7770740 (= res!3097646 call!720169)))

(declare-fun e!4604261 () Bool)

(assert (=> b!7770740 (= e!4604261 e!4604265)))

(declare-fun b!7770741 () Bool)

(assert (=> b!7770741 (= e!4604262 e!4604261)))

(assert (=> b!7770741 (= c!1432243 (is-Union!20756 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))))))

(declare-fun b!7770742 () Bool)

(declare-fun e!4604263 () Bool)

(assert (=> b!7770742 (= e!4604263 e!4604262)))

(assert (=> b!7770742 (= c!1432242 (is-Star!20756 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))))))

(declare-fun b!7770743 () Bool)

(assert (=> b!7770743 (= e!4604265 call!720168)))

(declare-fun b!7770744 () Bool)

(declare-fun res!3097648 () Bool)

(assert (=> b!7770744 (=> res!3097648 e!4604264)))

(assert (=> b!7770744 (= res!3097648 (not (is-Concat!29601 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924)))))))

(assert (=> b!7770744 (= e!4604261 e!4604264)))

(declare-fun bm!720164 () Bool)

(assert (=> bm!720164 (= call!720169 call!720167)))

(declare-fun bm!720163 () Bool)

(assert (=> bm!720163 (= call!720168 (validRegex!11170 (ite c!1432243 (regTwo!42025 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))) (regOne!42024 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))))))))

(declare-fun d!2344406 () Bool)

(declare-fun res!3097645 () Bool)

(assert (=> d!2344406 (=> res!3097645 e!4604263)))

(assert (=> d!2344406 (= res!3097645 (is-ElementMatch!20756 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))))))

(assert (=> d!2344406 (= (validRegex!11170 (ite c!1432129 (regTwo!42025 r!25924) (regOne!42024 r!25924))) e!4604263)))

(assert (= (and d!2344406 (not res!3097645)) b!7770742))

(assert (= (and b!7770742 c!1432242) b!7770739))

(assert (= (and b!7770742 (not c!1432242)) b!7770741))

(assert (= (and b!7770739 res!3097647) b!7770736))

(assert (= (and b!7770741 c!1432243) b!7770740))

(assert (= (and b!7770741 (not c!1432243)) b!7770744))

(assert (= (and b!7770740 res!3097646) b!7770743))

(assert (= (and b!7770744 (not res!3097648)) b!7770738))

(assert (= (and b!7770738 res!3097649) b!7770737))

(assert (= (or b!7770743 b!7770738) bm!720163))

(assert (= (or b!7770740 b!7770737) bm!720164))

(assert (= (or b!7770736 bm!720164) bm!720162))

(declare-fun m!8224730 () Bool)

(assert (=> bm!720162 m!8224730))

(declare-fun m!8224732 () Bool)

(assert (=> b!7770739 m!8224732))

(declare-fun m!8224734 () Bool)

(assert (=> bm!720163 m!8224734))

(assert (=> bm!720088 d!2344406))

(declare-fun b!7770748 () Bool)

(declare-fun e!4604268 () Bool)

(declare-fun lt!2671426 () List!73597)

(assert (=> b!7770748 (= e!4604268 (or (not (= (t!388332 (t!388332 s!14904)) Nil!73473)) (= lt!2671426 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)))))))

(declare-fun b!7770746 () Bool)

(declare-fun e!4604267 () List!73597)

(assert (=> b!7770746 (= e!4604267 (Cons!73473 (h!79921 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473))) (++!17900 (t!388332 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473))) (t!388332 (t!388332 s!14904)))))))

(declare-fun b!7770747 () Bool)

(declare-fun res!3097651 () Bool)

(assert (=> b!7770747 (=> (not res!3097651) (not e!4604268))))

(assert (=> b!7770747 (= res!3097651 (= (size!42697 lt!2671426) (+ (size!42697 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473))) (size!42697 (t!388332 (t!388332 s!14904))))))))

(declare-fun d!2344408 () Bool)

(assert (=> d!2344408 e!4604268))

(declare-fun res!3097650 () Bool)

(assert (=> d!2344408 (=> (not res!3097650) (not e!4604268))))

(assert (=> d!2344408 (= res!3097650 (= (content!15594 lt!2671426) (set.union (content!15594 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473))) (content!15594 (t!388332 (t!388332 s!14904))))))))

(assert (=> d!2344408 (= lt!2671426 e!4604267)))

(declare-fun c!1432244 () Bool)

(assert (=> d!2344408 (= c!1432244 (is-Nil!73473 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473))))))

(assert (=> d!2344408 (= (++!17900 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (t!388332 (t!388332 s!14904))) lt!2671426)))

(declare-fun b!7770745 () Bool)

(assert (=> b!7770745 (= e!4604267 (t!388332 (t!388332 s!14904)))))

(assert (= (and d!2344408 c!1432244) b!7770745))

(assert (= (and d!2344408 (not c!1432244)) b!7770746))

(assert (= (and d!2344408 res!3097650) b!7770747))

(assert (= (and b!7770747 res!3097651) b!7770748))

(declare-fun m!8224736 () Bool)

(assert (=> b!7770746 m!8224736))

(declare-fun m!8224738 () Bool)

(assert (=> b!7770747 m!8224738))

(assert (=> b!7770747 m!8224426))

(declare-fun m!8224740 () Bool)

(assert (=> b!7770747 m!8224740))

(declare-fun m!8224742 () Bool)

(assert (=> b!7770747 m!8224742))

(declare-fun m!8224744 () Bool)

(assert (=> d!2344408 m!8224744))

(assert (=> d!2344408 m!8224426))

(declare-fun m!8224746 () Bool)

(assert (=> d!2344408 m!8224746))

(declare-fun m!8224748 () Bool)

(assert (=> d!2344408 m!8224748))

(assert (=> b!7770314 d!2344408))

(declare-fun b!7770752 () Bool)

(declare-fun e!4604270 () Bool)

(declare-fun lt!2671427 () List!73597)

(assert (=> b!7770752 (= e!4604270 (or (not (= (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473) Nil!73473)) (= lt!2671427 Nil!73473)))))

(declare-fun b!7770750 () Bool)

(declare-fun e!4604269 () List!73597)

(assert (=> b!7770750 (= e!4604269 (Cons!73473 (h!79921 Nil!73473) (++!17900 (t!388332 Nil!73473) (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473))))))

(declare-fun b!7770751 () Bool)

(declare-fun res!3097653 () Bool)

(assert (=> b!7770751 (=> (not res!3097653) (not e!4604270))))

(assert (=> b!7770751 (= res!3097653 (= (size!42697 lt!2671427) (+ (size!42697 Nil!73473) (size!42697 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)))))))

(declare-fun d!2344410 () Bool)

(assert (=> d!2344410 e!4604270))

(declare-fun res!3097652 () Bool)

(assert (=> d!2344410 (=> (not res!3097652) (not e!4604270))))

(assert (=> d!2344410 (= res!3097652 (= (content!15594 lt!2671427) (set.union (content!15594 Nil!73473) (content!15594 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)))))))

(assert (=> d!2344410 (= lt!2671427 e!4604269)))

(declare-fun c!1432245 () Bool)

(assert (=> d!2344410 (= c!1432245 (is-Nil!73473 Nil!73473))))

(assert (=> d!2344410 (= (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) lt!2671427)))

(declare-fun b!7770749 () Bool)

(assert (=> b!7770749 (= e!4604269 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473))))

(assert (= (and d!2344410 c!1432245) b!7770749))

(assert (= (and d!2344410 (not c!1432245)) b!7770750))

(assert (= (and d!2344410 res!3097652) b!7770751))

(assert (= (and b!7770751 res!3097653) b!7770752))

(declare-fun m!8224750 () Bool)

(assert (=> b!7770750 m!8224750))

(declare-fun m!8224752 () Bool)

(assert (=> b!7770751 m!8224752))

(declare-fun m!8224754 () Bool)

(assert (=> b!7770751 m!8224754))

(declare-fun m!8224756 () Bool)

(assert (=> b!7770751 m!8224756))

(declare-fun m!8224758 () Bool)

(assert (=> d!2344410 m!8224758))

(declare-fun m!8224760 () Bool)

(assert (=> d!2344410 m!8224760))

(declare-fun m!8224762 () Bool)

(assert (=> d!2344410 m!8224762))

(assert (=> b!7770314 d!2344410))

(declare-fun d!2344412 () Bool)

(assert (=> d!2344412 (= (++!17900 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (t!388332 (t!388332 s!14904))) (t!388332 s!14904))))

(declare-fun lt!2671430 () Unit!168450)

(declare-fun choose!59472 (List!73597 C!41838 List!73597 List!73597) Unit!168450)

(assert (=> d!2344412 (= lt!2671430 (choose!59472 Nil!73473 (h!79921 (t!388332 s!14904)) (t!388332 (t!388332 s!14904)) (t!388332 s!14904)))))

(assert (=> d!2344412 (= (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) (t!388332 (t!388332 s!14904)))) (t!388332 s!14904))))

(assert (=> d!2344412 (= (lemmaMoveElementToOtherListKeepsConcatEq!3384 Nil!73473 (h!79921 (t!388332 s!14904)) (t!388332 (t!388332 s!14904)) (t!388332 s!14904)) lt!2671430)))

(declare-fun bs!1966105 () Bool)

(assert (= bs!1966105 d!2344412))

(assert (=> bs!1966105 m!8224426))

(assert (=> bs!1966105 m!8224426))

(assert (=> bs!1966105 m!8224428))

(declare-fun m!8224764 () Bool)

(assert (=> bs!1966105 m!8224764))

(declare-fun m!8224766 () Bool)

(assert (=> bs!1966105 m!8224766))

(assert (=> b!7770314 d!2344412))

(declare-fun b!7770753 () Bool)

(declare-fun e!4604272 () Bool)

(declare-fun lt!2671432 () Option!17721)

(assert (=> b!7770753 (= e!4604272 (= (++!17900 (_1!38230 (get!26234 lt!2671432)) (_2!38230 (get!26234 lt!2671432))) (t!388332 s!14904)))))

(declare-fun b!7770754 () Bool)

(declare-fun e!4604271 () Bool)

(assert (=> b!7770754 (= e!4604271 (matchR!10218 lt!2671356 (t!388332 (t!388332 s!14904))))))

(declare-fun b!7770755 () Bool)

(declare-fun e!4604273 () Bool)

(assert (=> b!7770755 (= e!4604273 (not (isDefined!14333 lt!2671432)))))

(declare-fun b!7770756 () Bool)

(declare-fun lt!2671433 () Unit!168450)

(declare-fun lt!2671431 () Unit!168450)

(assert (=> b!7770756 (= lt!2671433 lt!2671431)))

(assert (=> b!7770756 (= (++!17900 (++!17900 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (Cons!73473 (h!79921 (t!388332 (t!388332 s!14904))) Nil!73473)) (t!388332 (t!388332 (t!388332 s!14904)))) (t!388332 s!14904))))

(assert (=> b!7770756 (= lt!2671431 (lemmaMoveElementToOtherListKeepsConcatEq!3384 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (h!79921 (t!388332 (t!388332 s!14904))) (t!388332 (t!388332 (t!388332 s!14904))) (t!388332 s!14904)))))

(declare-fun e!4604274 () Option!17721)

(assert (=> b!7770756 (= e!4604274 (findConcatSeparation!3751 lt!2671357 lt!2671356 (++!17900 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (Cons!73473 (h!79921 (t!388332 (t!388332 s!14904))) Nil!73473)) (t!388332 (t!388332 (t!388332 s!14904))) (t!388332 s!14904)))))

(declare-fun b!7770757 () Bool)

(declare-fun e!4604275 () Option!17721)

(assert (=> b!7770757 (= e!4604275 e!4604274)))

(declare-fun c!1432247 () Bool)

(assert (=> b!7770757 (= c!1432247 (is-Nil!73473 (t!388332 (t!388332 s!14904))))))

(declare-fun b!7770758 () Bool)

(assert (=> b!7770758 (= e!4604275 (Some!17720 (tuple2!69855 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (t!388332 (t!388332 s!14904)))))))

(declare-fun b!7770760 () Bool)

(assert (=> b!7770760 (= e!4604274 None!17720)))

(declare-fun b!7770761 () Bool)

(declare-fun res!3097658 () Bool)

(assert (=> b!7770761 (=> (not res!3097658) (not e!4604272))))

(assert (=> b!7770761 (= res!3097658 (matchR!10218 lt!2671357 (_1!38230 (get!26234 lt!2671432))))))

(declare-fun d!2344414 () Bool)

(assert (=> d!2344414 e!4604273))

(declare-fun res!3097656 () Bool)

(assert (=> d!2344414 (=> res!3097656 e!4604273)))

(assert (=> d!2344414 (= res!3097656 e!4604272)))

(declare-fun res!3097654 () Bool)

(assert (=> d!2344414 (=> (not res!3097654) (not e!4604272))))

(assert (=> d!2344414 (= res!3097654 (isDefined!14333 lt!2671432))))

(assert (=> d!2344414 (= lt!2671432 e!4604275)))

(declare-fun c!1432246 () Bool)

(assert (=> d!2344414 (= c!1432246 e!4604271)))

(declare-fun res!3097655 () Bool)

(assert (=> d!2344414 (=> (not res!3097655) (not e!4604271))))

(assert (=> d!2344414 (= res!3097655 (matchR!10218 lt!2671357 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473))))))

(assert (=> d!2344414 (validRegex!11170 lt!2671357)))

(assert (=> d!2344414 (= (findConcatSeparation!3751 lt!2671357 lt!2671356 (++!17900 Nil!73473 (Cons!73473 (h!79921 (t!388332 s!14904)) Nil!73473)) (t!388332 (t!388332 s!14904)) (t!388332 s!14904)) lt!2671432)))

(declare-fun b!7770759 () Bool)

(declare-fun res!3097657 () Bool)

(assert (=> b!7770759 (=> (not res!3097657) (not e!4604272))))

(assert (=> b!7770759 (= res!3097657 (matchR!10218 lt!2671356 (_2!38230 (get!26234 lt!2671432))))))

(assert (= (and d!2344414 res!3097655) b!7770754))

(assert (= (and d!2344414 c!1432246) b!7770758))

(assert (= (and d!2344414 (not c!1432246)) b!7770757))

(assert (= (and b!7770757 c!1432247) b!7770760))

(assert (= (and b!7770757 (not c!1432247)) b!7770756))

(assert (= (and d!2344414 res!3097654) b!7770761))

(assert (= (and b!7770761 res!3097658) b!7770759))

(assert (= (and b!7770759 res!3097657) b!7770753))

(assert (= (and d!2344414 (not res!3097656)) b!7770755))

(declare-fun m!8224768 () Bool)

(assert (=> d!2344414 m!8224768))

(assert (=> d!2344414 m!8224426))

(declare-fun m!8224770 () Bool)

(assert (=> d!2344414 m!8224770))

(assert (=> d!2344414 m!8224418))

(declare-fun m!8224772 () Bool)

(assert (=> b!7770753 m!8224772))

(declare-fun m!8224774 () Bool)

(assert (=> b!7770753 m!8224774))

(assert (=> b!7770761 m!8224772))

(declare-fun m!8224776 () Bool)

(assert (=> b!7770761 m!8224776))

(assert (=> b!7770756 m!8224426))

(declare-fun m!8224778 () Bool)

(assert (=> b!7770756 m!8224778))

(assert (=> b!7770756 m!8224778))

(declare-fun m!8224780 () Bool)

(assert (=> b!7770756 m!8224780))

(assert (=> b!7770756 m!8224426))

(declare-fun m!8224782 () Bool)

(assert (=> b!7770756 m!8224782))

(assert (=> b!7770756 m!8224778))

(declare-fun m!8224784 () Bool)

(assert (=> b!7770756 m!8224784))

(assert (=> b!7770755 m!8224768))

(assert (=> b!7770759 m!8224772))

(declare-fun m!8224786 () Bool)

(assert (=> b!7770759 m!8224786))

(declare-fun m!8224788 () Bool)

(assert (=> b!7770754 m!8224788))

(assert (=> b!7770314 d!2344414))

(declare-fun b!7770763 () Bool)

(declare-fun e!4604276 () Bool)

(declare-fun tp!2282840 () Bool)

(declare-fun tp!2282839 () Bool)

(assert (=> b!7770763 (= e!4604276 (and tp!2282840 tp!2282839))))

(declare-fun b!7770765 () Bool)

(declare-fun tp!2282838 () Bool)

(declare-fun tp!2282841 () Bool)

(assert (=> b!7770765 (= e!4604276 (and tp!2282838 tp!2282841))))

(assert (=> b!7770361 (= tp!2282784 e!4604276)))

(declare-fun b!7770762 () Bool)

(assert (=> b!7770762 (= e!4604276 tp_is_empty!51867)))

(declare-fun b!7770764 () Bool)

(declare-fun tp!2282842 () Bool)

(assert (=> b!7770764 (= e!4604276 tp!2282842)))

(assert (= (and b!7770361 (is-ElementMatch!20756 (regOne!42024 (reg!21085 r!25924)))) b!7770762))

(assert (= (and b!7770361 (is-Concat!29601 (regOne!42024 (reg!21085 r!25924)))) b!7770763))

(assert (= (and b!7770361 (is-Star!20756 (regOne!42024 (reg!21085 r!25924)))) b!7770764))

(assert (= (and b!7770361 (is-Union!20756 (regOne!42024 (reg!21085 r!25924)))) b!7770765))

(declare-fun b!7770767 () Bool)

(declare-fun e!4604277 () Bool)

(declare-fun tp!2282845 () Bool)

(declare-fun tp!2282844 () Bool)

(assert (=> b!7770767 (= e!4604277 (and tp!2282845 tp!2282844))))

(declare-fun b!7770769 () Bool)

(declare-fun tp!2282843 () Bool)

(declare-fun tp!2282846 () Bool)

(assert (=> b!7770769 (= e!4604277 (and tp!2282843 tp!2282846))))

(assert (=> b!7770361 (= tp!2282783 e!4604277)))

(declare-fun b!7770766 () Bool)

(assert (=> b!7770766 (= e!4604277 tp_is_empty!51867)))

(declare-fun b!7770768 () Bool)

(declare-fun tp!2282847 () Bool)

(assert (=> b!7770768 (= e!4604277 tp!2282847)))

(assert (= (and b!7770361 (is-ElementMatch!20756 (regTwo!42024 (reg!21085 r!25924)))) b!7770766))

(assert (= (and b!7770361 (is-Concat!29601 (regTwo!42024 (reg!21085 r!25924)))) b!7770767))

(assert (= (and b!7770361 (is-Star!20756 (regTwo!42024 (reg!21085 r!25924)))) b!7770768))

(assert (= (and b!7770361 (is-Union!20756 (regTwo!42024 (reg!21085 r!25924)))) b!7770769))

(declare-fun b!7770771 () Bool)

(declare-fun e!4604278 () Bool)

(declare-fun tp!2282850 () Bool)

(declare-fun tp!2282849 () Bool)

(assert (=> b!7770771 (= e!4604278 (and tp!2282850 tp!2282849))))

(declare-fun b!7770773 () Bool)

(declare-fun tp!2282848 () Bool)

(declare-fun tp!2282851 () Bool)

(assert (=> b!7770773 (= e!4604278 (and tp!2282848 tp!2282851))))

(assert (=> b!7770372 (= tp!2282790 e!4604278)))

(declare-fun b!7770770 () Bool)

(assert (=> b!7770770 (= e!4604278 tp_is_empty!51867)))

(declare-fun b!7770772 () Bool)

(declare-fun tp!2282852 () Bool)

(assert (=> b!7770772 (= e!4604278 tp!2282852)))

(assert (= (and b!7770372 (is-ElementMatch!20756 (regOne!42025 (regOne!42024 r!25924)))) b!7770770))

(assert (= (and b!7770372 (is-Concat!29601 (regOne!42025 (regOne!42024 r!25924)))) b!7770771))

(assert (= (and b!7770372 (is-Star!20756 (regOne!42025 (regOne!42024 r!25924)))) b!7770772))

(assert (= (and b!7770372 (is-Union!20756 (regOne!42025 (regOne!42024 r!25924)))) b!7770773))

(declare-fun b!7770775 () Bool)

(declare-fun e!4604279 () Bool)

(declare-fun tp!2282855 () Bool)

(declare-fun tp!2282854 () Bool)

(assert (=> b!7770775 (= e!4604279 (and tp!2282855 tp!2282854))))

(declare-fun b!7770777 () Bool)

(declare-fun tp!2282853 () Bool)

(declare-fun tp!2282856 () Bool)

(assert (=> b!7770777 (= e!4604279 (and tp!2282853 tp!2282856))))

(assert (=> b!7770372 (= tp!2282793 e!4604279)))

(declare-fun b!7770774 () Bool)

(assert (=> b!7770774 (= e!4604279 tp_is_empty!51867)))

(declare-fun b!7770776 () Bool)

(declare-fun tp!2282857 () Bool)

(assert (=> b!7770776 (= e!4604279 tp!2282857)))

(assert (= (and b!7770372 (is-ElementMatch!20756 (regTwo!42025 (regOne!42024 r!25924)))) b!7770774))

(assert (= (and b!7770372 (is-Concat!29601 (regTwo!42025 (regOne!42024 r!25924)))) b!7770775))

(assert (= (and b!7770372 (is-Star!20756 (regTwo!42025 (regOne!42024 r!25924)))) b!7770776))

(assert (= (and b!7770372 (is-Union!20756 (regTwo!42025 (regOne!42024 r!25924)))) b!7770777))

(declare-fun b!7770778 () Bool)

(declare-fun e!4604280 () Bool)

(declare-fun tp!2282858 () Bool)

(assert (=> b!7770778 (= e!4604280 (and tp_is_empty!51867 tp!2282858))))

(assert (=> b!7770368 (= tp!2282789 e!4604280)))

(assert (= (and b!7770368 (is-Cons!73473 (t!388332 (t!388332 s!14904)))) b!7770778))

(declare-fun b!7770780 () Bool)

(declare-fun e!4604281 () Bool)

(declare-fun tp!2282861 () Bool)

(declare-fun tp!2282860 () Bool)

(assert (=> b!7770780 (= e!4604281 (and tp!2282861 tp!2282860))))

(declare-fun b!7770782 () Bool)

(declare-fun tp!2282859 () Bool)

(declare-fun tp!2282862 () Bool)

(assert (=> b!7770782 (= e!4604281 (and tp!2282859 tp!2282862))))

(assert (=> b!7770374 (= tp!2282797 e!4604281)))

(declare-fun b!7770779 () Bool)

(assert (=> b!7770779 (= e!4604281 tp_is_empty!51867)))

(declare-fun b!7770781 () Bool)

(declare-fun tp!2282863 () Bool)

(assert (=> b!7770781 (= e!4604281 tp!2282863)))

(assert (= (and b!7770374 (is-ElementMatch!20756 (regOne!42024 (regTwo!42024 r!25924)))) b!7770779))

(assert (= (and b!7770374 (is-Concat!29601 (regOne!42024 (regTwo!42024 r!25924)))) b!7770780))

(assert (= (and b!7770374 (is-Star!20756 (regOne!42024 (regTwo!42024 r!25924)))) b!7770781))

(assert (= (and b!7770374 (is-Union!20756 (regOne!42024 (regTwo!42024 r!25924)))) b!7770782))

(declare-fun b!7770784 () Bool)

(declare-fun e!4604282 () Bool)

(declare-fun tp!2282866 () Bool)

(declare-fun tp!2282865 () Bool)

(assert (=> b!7770784 (= e!4604282 (and tp!2282866 tp!2282865))))

(declare-fun b!7770786 () Bool)

(declare-fun tp!2282864 () Bool)

(declare-fun tp!2282867 () Bool)

(assert (=> b!7770786 (= e!4604282 (and tp!2282864 tp!2282867))))

(assert (=> b!7770374 (= tp!2282796 e!4604282)))

(declare-fun b!7770783 () Bool)

(assert (=> b!7770783 (= e!4604282 tp_is_empty!51867)))

(declare-fun b!7770785 () Bool)

(declare-fun tp!2282868 () Bool)

(assert (=> b!7770785 (= e!4604282 tp!2282868)))

(assert (= (and b!7770374 (is-ElementMatch!20756 (regTwo!42024 (regTwo!42024 r!25924)))) b!7770783))

(assert (= (and b!7770374 (is-Concat!29601 (regTwo!42024 (regTwo!42024 r!25924)))) b!7770784))

(assert (= (and b!7770374 (is-Star!20756 (regTwo!42024 (regTwo!42024 r!25924)))) b!7770785))

(assert (= (and b!7770374 (is-Union!20756 (regTwo!42024 (regTwo!42024 r!25924)))) b!7770786))

(declare-fun b!7770788 () Bool)

(declare-fun e!4604283 () Bool)

(declare-fun tp!2282871 () Bool)

(declare-fun tp!2282870 () Bool)

(assert (=> b!7770788 (= e!4604283 (and tp!2282871 tp!2282870))))

(declare-fun b!7770790 () Bool)

(declare-fun tp!2282869 () Bool)

(declare-fun tp!2282872 () Bool)

(assert (=> b!7770790 (= e!4604283 (and tp!2282869 tp!2282872))))

(assert (=> b!7770355 (= tp!2282772 e!4604283)))

(declare-fun b!7770787 () Bool)

(assert (=> b!7770787 (= e!4604283 tp_is_empty!51867)))

(declare-fun b!7770789 () Bool)

(declare-fun tp!2282873 () Bool)

(assert (=> b!7770789 (= e!4604283 tp!2282873)))

(assert (= (and b!7770355 (is-ElementMatch!20756 (regOne!42025 (regOne!42025 r!25924)))) b!7770787))

(assert (= (and b!7770355 (is-Concat!29601 (regOne!42025 (regOne!42025 r!25924)))) b!7770788))

(assert (= (and b!7770355 (is-Star!20756 (regOne!42025 (regOne!42025 r!25924)))) b!7770789))

(assert (= (and b!7770355 (is-Union!20756 (regOne!42025 (regOne!42025 r!25924)))) b!7770790))

(declare-fun b!7770792 () Bool)

(declare-fun e!4604284 () Bool)

(declare-fun tp!2282876 () Bool)

(declare-fun tp!2282875 () Bool)

(assert (=> b!7770792 (= e!4604284 (and tp!2282876 tp!2282875))))

(declare-fun b!7770794 () Bool)

(declare-fun tp!2282874 () Bool)

(declare-fun tp!2282877 () Bool)

(assert (=> b!7770794 (= e!4604284 (and tp!2282874 tp!2282877))))

(assert (=> b!7770355 (= tp!2282775 e!4604284)))

(declare-fun b!7770791 () Bool)

(assert (=> b!7770791 (= e!4604284 tp_is_empty!51867)))

(declare-fun b!7770793 () Bool)

(declare-fun tp!2282878 () Bool)

(assert (=> b!7770793 (= e!4604284 tp!2282878)))

(assert (= (and b!7770355 (is-ElementMatch!20756 (regTwo!42025 (regOne!42025 r!25924)))) b!7770791))

(assert (= (and b!7770355 (is-Concat!29601 (regTwo!42025 (regOne!42025 r!25924)))) b!7770792))

(assert (= (and b!7770355 (is-Star!20756 (regTwo!42025 (regOne!42025 r!25924)))) b!7770793))

(assert (= (and b!7770355 (is-Union!20756 (regTwo!42025 (regOne!42025 r!25924)))) b!7770794))

(declare-fun b!7770796 () Bool)

(declare-fun e!4604285 () Bool)

(declare-fun tp!2282881 () Bool)

(declare-fun tp!2282880 () Bool)

(assert (=> b!7770796 (= e!4604285 (and tp!2282881 tp!2282880))))

(declare-fun b!7770798 () Bool)

(declare-fun tp!2282879 () Bool)

(declare-fun tp!2282882 () Bool)

(assert (=> b!7770798 (= e!4604285 (and tp!2282879 tp!2282882))))

(assert (=> b!7770370 (= tp!2282792 e!4604285)))

(declare-fun b!7770795 () Bool)

(assert (=> b!7770795 (= e!4604285 tp_is_empty!51867)))

(declare-fun b!7770797 () Bool)

(declare-fun tp!2282883 () Bool)

(assert (=> b!7770797 (= e!4604285 tp!2282883)))

(assert (= (and b!7770370 (is-ElementMatch!20756 (regOne!42024 (regOne!42024 r!25924)))) b!7770795))

(assert (= (and b!7770370 (is-Concat!29601 (regOne!42024 (regOne!42024 r!25924)))) b!7770796))

(assert (= (and b!7770370 (is-Star!20756 (regOne!42024 (regOne!42024 r!25924)))) b!7770797))

(assert (= (and b!7770370 (is-Union!20756 (regOne!42024 (regOne!42024 r!25924)))) b!7770798))

(declare-fun b!7770800 () Bool)

(declare-fun e!4604286 () Bool)

(declare-fun tp!2282886 () Bool)

(declare-fun tp!2282885 () Bool)

(assert (=> b!7770800 (= e!4604286 (and tp!2282886 tp!2282885))))

(declare-fun b!7770802 () Bool)

(declare-fun tp!2282884 () Bool)

(declare-fun tp!2282887 () Bool)

(assert (=> b!7770802 (= e!4604286 (and tp!2282884 tp!2282887))))

(assert (=> b!7770370 (= tp!2282791 e!4604286)))

(declare-fun b!7770799 () Bool)

(assert (=> b!7770799 (= e!4604286 tp_is_empty!51867)))

(declare-fun b!7770801 () Bool)

(declare-fun tp!2282888 () Bool)

(assert (=> b!7770801 (= e!4604286 tp!2282888)))

(assert (= (and b!7770370 (is-ElementMatch!20756 (regTwo!42024 (regOne!42024 r!25924)))) b!7770799))

(assert (= (and b!7770370 (is-Concat!29601 (regTwo!42024 (regOne!42024 r!25924)))) b!7770800))

(assert (= (and b!7770370 (is-Star!20756 (regTwo!42024 (regOne!42024 r!25924)))) b!7770801))

(assert (= (and b!7770370 (is-Union!20756 (regTwo!42024 (regOne!42024 r!25924)))) b!7770802))

(declare-fun b!7770804 () Bool)

(declare-fun e!4604287 () Bool)

(declare-fun tp!2282891 () Bool)

(declare-fun tp!2282890 () Bool)

(assert (=> b!7770804 (= e!4604287 (and tp!2282891 tp!2282890))))

(declare-fun b!7770806 () Bool)

(declare-fun tp!2282889 () Bool)

(declare-fun tp!2282892 () Bool)

(assert (=> b!7770806 (= e!4604287 (and tp!2282889 tp!2282892))))

(assert (=> b!7770375 (= tp!2282799 e!4604287)))

(declare-fun b!7770803 () Bool)

(assert (=> b!7770803 (= e!4604287 tp_is_empty!51867)))

(declare-fun b!7770805 () Bool)

(declare-fun tp!2282893 () Bool)

(assert (=> b!7770805 (= e!4604287 tp!2282893)))

(assert (= (and b!7770375 (is-ElementMatch!20756 (reg!21085 (regTwo!42024 r!25924)))) b!7770803))

(assert (= (and b!7770375 (is-Concat!29601 (reg!21085 (regTwo!42024 r!25924)))) b!7770804))

(assert (= (and b!7770375 (is-Star!20756 (reg!21085 (regTwo!42024 r!25924)))) b!7770805))

(assert (= (and b!7770375 (is-Union!20756 (reg!21085 (regTwo!42024 r!25924)))) b!7770806))

(declare-fun b!7770808 () Bool)

(declare-fun e!4604288 () Bool)

(declare-fun tp!2282896 () Bool)

(declare-fun tp!2282895 () Bool)

(assert (=> b!7770808 (= e!4604288 (and tp!2282896 tp!2282895))))

(declare-fun b!7770810 () Bool)

(declare-fun tp!2282894 () Bool)

(declare-fun tp!2282897 () Bool)

(assert (=> b!7770810 (= e!4604288 (and tp!2282894 tp!2282897))))

(assert (=> b!7770371 (= tp!2282794 e!4604288)))

(declare-fun b!7770807 () Bool)

(assert (=> b!7770807 (= e!4604288 tp_is_empty!51867)))

(declare-fun b!7770809 () Bool)

(declare-fun tp!2282898 () Bool)

(assert (=> b!7770809 (= e!4604288 tp!2282898)))

(assert (= (and b!7770371 (is-ElementMatch!20756 (reg!21085 (regOne!42024 r!25924)))) b!7770807))

(assert (= (and b!7770371 (is-Concat!29601 (reg!21085 (regOne!42024 r!25924)))) b!7770808))

(assert (= (and b!7770371 (is-Star!20756 (reg!21085 (regOne!42024 r!25924)))) b!7770809))

(assert (= (and b!7770371 (is-Union!20756 (reg!21085 (regOne!42024 r!25924)))) b!7770810))

(declare-fun b!7770812 () Bool)

(declare-fun e!4604289 () Bool)

(declare-fun tp!2282901 () Bool)

(declare-fun tp!2282900 () Bool)

(assert (=> b!7770812 (= e!4604289 (and tp!2282901 tp!2282900))))

(declare-fun b!7770814 () Bool)

(declare-fun tp!2282899 () Bool)

(declare-fun tp!2282902 () Bool)

(assert (=> b!7770814 (= e!4604289 (and tp!2282899 tp!2282902))))

(assert (=> b!7770376 (= tp!2282795 e!4604289)))

(declare-fun b!7770811 () Bool)

(assert (=> b!7770811 (= e!4604289 tp_is_empty!51867)))

(declare-fun b!7770813 () Bool)

(declare-fun tp!2282903 () Bool)

(assert (=> b!7770813 (= e!4604289 tp!2282903)))

(assert (= (and b!7770376 (is-ElementMatch!20756 (regOne!42025 (regTwo!42024 r!25924)))) b!7770811))

(assert (= (and b!7770376 (is-Concat!29601 (regOne!42025 (regTwo!42024 r!25924)))) b!7770812))

(assert (= (and b!7770376 (is-Star!20756 (regOne!42025 (regTwo!42024 r!25924)))) b!7770813))

(assert (= (and b!7770376 (is-Union!20756 (regOne!42025 (regTwo!42024 r!25924)))) b!7770814))

(declare-fun b!7770816 () Bool)

(declare-fun e!4604290 () Bool)

(declare-fun tp!2282906 () Bool)

(declare-fun tp!2282905 () Bool)

(assert (=> b!7770816 (= e!4604290 (and tp!2282906 tp!2282905))))

(declare-fun b!7770818 () Bool)

(declare-fun tp!2282904 () Bool)

(declare-fun tp!2282907 () Bool)

(assert (=> b!7770818 (= e!4604290 (and tp!2282904 tp!2282907))))

(assert (=> b!7770376 (= tp!2282798 e!4604290)))

(declare-fun b!7770815 () Bool)

(assert (=> b!7770815 (= e!4604290 tp_is_empty!51867)))

(declare-fun b!7770817 () Bool)

(declare-fun tp!2282908 () Bool)

(assert (=> b!7770817 (= e!4604290 tp!2282908)))

(assert (= (and b!7770376 (is-ElementMatch!20756 (regTwo!42025 (regTwo!42024 r!25924)))) b!7770815))

(assert (= (and b!7770376 (is-Concat!29601 (regTwo!42025 (regTwo!42024 r!25924)))) b!7770816))

(assert (= (and b!7770376 (is-Star!20756 (regTwo!42025 (regTwo!42024 r!25924)))) b!7770817))

(assert (= (and b!7770376 (is-Union!20756 (regTwo!42025 (regTwo!42024 r!25924)))) b!7770818))

(declare-fun b!7770820 () Bool)

(declare-fun e!4604291 () Bool)

(declare-fun tp!2282911 () Bool)

(declare-fun tp!2282910 () Bool)

(assert (=> b!7770820 (= e!4604291 (and tp!2282911 tp!2282910))))

(declare-fun b!7770822 () Bool)

(declare-fun tp!2282909 () Bool)

(declare-fun tp!2282912 () Bool)

(assert (=> b!7770822 (= e!4604291 (and tp!2282909 tp!2282912))))

(assert (=> b!7770357 (= tp!2282779 e!4604291)))

(declare-fun b!7770819 () Bool)

(assert (=> b!7770819 (= e!4604291 tp_is_empty!51867)))

(declare-fun b!7770821 () Bool)

(declare-fun tp!2282913 () Bool)

(assert (=> b!7770821 (= e!4604291 tp!2282913)))

(assert (= (and b!7770357 (is-ElementMatch!20756 (regOne!42024 (regTwo!42025 r!25924)))) b!7770819))

(assert (= (and b!7770357 (is-Concat!29601 (regOne!42024 (regTwo!42025 r!25924)))) b!7770820))

(assert (= (and b!7770357 (is-Star!20756 (regOne!42024 (regTwo!42025 r!25924)))) b!7770821))

(assert (= (and b!7770357 (is-Union!20756 (regOne!42024 (regTwo!42025 r!25924)))) b!7770822))

(declare-fun b!7770824 () Bool)

(declare-fun e!4604292 () Bool)

(declare-fun tp!2282916 () Bool)

(declare-fun tp!2282915 () Bool)

(assert (=> b!7770824 (= e!4604292 (and tp!2282916 tp!2282915))))

(declare-fun b!7770826 () Bool)

(declare-fun tp!2282914 () Bool)

(declare-fun tp!2282917 () Bool)

(assert (=> b!7770826 (= e!4604292 (and tp!2282914 tp!2282917))))

(assert (=> b!7770357 (= tp!2282778 e!4604292)))

(declare-fun b!7770823 () Bool)

(assert (=> b!7770823 (= e!4604292 tp_is_empty!51867)))

(declare-fun b!7770825 () Bool)

(declare-fun tp!2282918 () Bool)

(assert (=> b!7770825 (= e!4604292 tp!2282918)))

(assert (= (and b!7770357 (is-ElementMatch!20756 (regTwo!42024 (regTwo!42025 r!25924)))) b!7770823))

(assert (= (and b!7770357 (is-Concat!29601 (regTwo!42024 (regTwo!42025 r!25924)))) b!7770824))

(assert (= (and b!7770357 (is-Star!20756 (regTwo!42024 (regTwo!42025 r!25924)))) b!7770825))

(assert (= (and b!7770357 (is-Union!20756 (regTwo!42024 (regTwo!42025 r!25924)))) b!7770826))

(declare-fun b!7770828 () Bool)

(declare-fun e!4604293 () Bool)

(declare-fun tp!2282921 () Bool)

(declare-fun tp!2282920 () Bool)

(assert (=> b!7770828 (= e!4604293 (and tp!2282921 tp!2282920))))

(declare-fun b!7770830 () Bool)

(declare-fun tp!2282919 () Bool)

(declare-fun tp!2282922 () Bool)

(assert (=> b!7770830 (= e!4604293 (and tp!2282919 tp!2282922))))

(assert (=> b!7770362 (= tp!2282786 e!4604293)))

(declare-fun b!7770827 () Bool)

(assert (=> b!7770827 (= e!4604293 tp_is_empty!51867)))

(declare-fun b!7770829 () Bool)

(declare-fun tp!2282923 () Bool)

(assert (=> b!7770829 (= e!4604293 tp!2282923)))

(assert (= (and b!7770362 (is-ElementMatch!20756 (reg!21085 (reg!21085 r!25924)))) b!7770827))

(assert (= (and b!7770362 (is-Concat!29601 (reg!21085 (reg!21085 r!25924)))) b!7770828))

(assert (= (and b!7770362 (is-Star!20756 (reg!21085 (reg!21085 r!25924)))) b!7770829))

(assert (= (and b!7770362 (is-Union!20756 (reg!21085 (reg!21085 r!25924)))) b!7770830))

(declare-fun b!7770832 () Bool)

(declare-fun e!4604294 () Bool)

(declare-fun tp!2282926 () Bool)

(declare-fun tp!2282925 () Bool)

(assert (=> b!7770832 (= e!4604294 (and tp!2282926 tp!2282925))))

(declare-fun b!7770834 () Bool)

(declare-fun tp!2282924 () Bool)

(declare-fun tp!2282927 () Bool)

(assert (=> b!7770834 (= e!4604294 (and tp!2282924 tp!2282927))))

(assert (=> b!7770353 (= tp!2282774 e!4604294)))

(declare-fun b!7770831 () Bool)

(assert (=> b!7770831 (= e!4604294 tp_is_empty!51867)))

(declare-fun b!7770833 () Bool)

(declare-fun tp!2282928 () Bool)

(assert (=> b!7770833 (= e!4604294 tp!2282928)))

(assert (= (and b!7770353 (is-ElementMatch!20756 (regOne!42024 (regOne!42025 r!25924)))) b!7770831))

(assert (= (and b!7770353 (is-Concat!29601 (regOne!42024 (regOne!42025 r!25924)))) b!7770832))

(assert (= (and b!7770353 (is-Star!20756 (regOne!42024 (regOne!42025 r!25924)))) b!7770833))

(assert (= (and b!7770353 (is-Union!20756 (regOne!42024 (regOne!42025 r!25924)))) b!7770834))

(declare-fun b!7770836 () Bool)

(declare-fun e!4604295 () Bool)

(declare-fun tp!2282931 () Bool)

(declare-fun tp!2282930 () Bool)

(assert (=> b!7770836 (= e!4604295 (and tp!2282931 tp!2282930))))

(declare-fun b!7770838 () Bool)

(declare-fun tp!2282929 () Bool)

(declare-fun tp!2282932 () Bool)

(assert (=> b!7770838 (= e!4604295 (and tp!2282929 tp!2282932))))

(assert (=> b!7770353 (= tp!2282773 e!4604295)))

(declare-fun b!7770835 () Bool)

(assert (=> b!7770835 (= e!4604295 tp_is_empty!51867)))

(declare-fun b!7770837 () Bool)

(declare-fun tp!2282933 () Bool)

(assert (=> b!7770837 (= e!4604295 tp!2282933)))

(assert (= (and b!7770353 (is-ElementMatch!20756 (regTwo!42024 (regOne!42025 r!25924)))) b!7770835))

(assert (= (and b!7770353 (is-Concat!29601 (regTwo!42024 (regOne!42025 r!25924)))) b!7770836))

(assert (= (and b!7770353 (is-Star!20756 (regTwo!42024 (regOne!42025 r!25924)))) b!7770837))

(assert (= (and b!7770353 (is-Union!20756 (regTwo!42024 (regOne!42025 r!25924)))) b!7770838))

(declare-fun b!7770840 () Bool)

(declare-fun e!4604296 () Bool)

(declare-fun tp!2282936 () Bool)

(declare-fun tp!2282935 () Bool)

(assert (=> b!7770840 (= e!4604296 (and tp!2282936 tp!2282935))))

(declare-fun b!7770842 () Bool)

(declare-fun tp!2282934 () Bool)

(declare-fun tp!2282937 () Bool)

(assert (=> b!7770842 (= e!4604296 (and tp!2282934 tp!2282937))))

(assert (=> b!7770358 (= tp!2282781 e!4604296)))

(declare-fun b!7770839 () Bool)

(assert (=> b!7770839 (= e!4604296 tp_is_empty!51867)))

(declare-fun b!7770841 () Bool)

(declare-fun tp!2282938 () Bool)

(assert (=> b!7770841 (= e!4604296 tp!2282938)))

(assert (= (and b!7770358 (is-ElementMatch!20756 (reg!21085 (regTwo!42025 r!25924)))) b!7770839))

(assert (= (and b!7770358 (is-Concat!29601 (reg!21085 (regTwo!42025 r!25924)))) b!7770840))

(assert (= (and b!7770358 (is-Star!20756 (reg!21085 (regTwo!42025 r!25924)))) b!7770841))

(assert (= (and b!7770358 (is-Union!20756 (reg!21085 (regTwo!42025 r!25924)))) b!7770842))

(declare-fun b!7770844 () Bool)

(declare-fun e!4604297 () Bool)

(declare-fun tp!2282941 () Bool)

(declare-fun tp!2282940 () Bool)

(assert (=> b!7770844 (= e!4604297 (and tp!2282941 tp!2282940))))

(declare-fun b!7770846 () Bool)

(declare-fun tp!2282939 () Bool)

(declare-fun tp!2282942 () Bool)

(assert (=> b!7770846 (= e!4604297 (and tp!2282939 tp!2282942))))

(assert (=> b!7770363 (= tp!2282782 e!4604297)))

(declare-fun b!7770843 () Bool)

(assert (=> b!7770843 (= e!4604297 tp_is_empty!51867)))

(declare-fun b!7770845 () Bool)

(declare-fun tp!2282943 () Bool)

(assert (=> b!7770845 (= e!4604297 tp!2282943)))

(assert (= (and b!7770363 (is-ElementMatch!20756 (regOne!42025 (reg!21085 r!25924)))) b!7770843))

(assert (= (and b!7770363 (is-Concat!29601 (regOne!42025 (reg!21085 r!25924)))) b!7770844))

(assert (= (and b!7770363 (is-Star!20756 (regOne!42025 (reg!21085 r!25924)))) b!7770845))

(assert (= (and b!7770363 (is-Union!20756 (regOne!42025 (reg!21085 r!25924)))) b!7770846))

(declare-fun b!7770848 () Bool)

(declare-fun e!4604298 () Bool)

(declare-fun tp!2282946 () Bool)

(declare-fun tp!2282945 () Bool)

(assert (=> b!7770848 (= e!4604298 (and tp!2282946 tp!2282945))))

(declare-fun b!7770850 () Bool)

(declare-fun tp!2282944 () Bool)

(declare-fun tp!2282947 () Bool)

(assert (=> b!7770850 (= e!4604298 (and tp!2282944 tp!2282947))))

(assert (=> b!7770363 (= tp!2282785 e!4604298)))

(declare-fun b!7770847 () Bool)

(assert (=> b!7770847 (= e!4604298 tp_is_empty!51867)))

(declare-fun b!7770849 () Bool)

(declare-fun tp!2282948 () Bool)

(assert (=> b!7770849 (= e!4604298 tp!2282948)))

(assert (= (and b!7770363 (is-ElementMatch!20756 (regTwo!42025 (reg!21085 r!25924)))) b!7770847))

(assert (= (and b!7770363 (is-Concat!29601 (regTwo!42025 (reg!21085 r!25924)))) b!7770848))

(assert (= (and b!7770363 (is-Star!20756 (regTwo!42025 (reg!21085 r!25924)))) b!7770849))

(assert (= (and b!7770363 (is-Union!20756 (regTwo!42025 (reg!21085 r!25924)))) b!7770850))

(declare-fun b!7770852 () Bool)

(declare-fun e!4604299 () Bool)

(declare-fun tp!2282951 () Bool)

(declare-fun tp!2282950 () Bool)

(assert (=> b!7770852 (= e!4604299 (and tp!2282951 tp!2282950))))

(declare-fun b!7770854 () Bool)

(declare-fun tp!2282949 () Bool)

(declare-fun tp!2282952 () Bool)

(assert (=> b!7770854 (= e!4604299 (and tp!2282949 tp!2282952))))

(assert (=> b!7770354 (= tp!2282776 e!4604299)))

(declare-fun b!7770851 () Bool)

(assert (=> b!7770851 (= e!4604299 tp_is_empty!51867)))

(declare-fun b!7770853 () Bool)

(declare-fun tp!2282953 () Bool)

(assert (=> b!7770853 (= e!4604299 tp!2282953)))

(assert (= (and b!7770354 (is-ElementMatch!20756 (reg!21085 (regOne!42025 r!25924)))) b!7770851))

(assert (= (and b!7770354 (is-Concat!29601 (reg!21085 (regOne!42025 r!25924)))) b!7770852))

(assert (= (and b!7770354 (is-Star!20756 (reg!21085 (regOne!42025 r!25924)))) b!7770853))

(assert (= (and b!7770354 (is-Union!20756 (reg!21085 (regOne!42025 r!25924)))) b!7770854))

(declare-fun b!7770856 () Bool)

(declare-fun e!4604300 () Bool)

(declare-fun tp!2282956 () Bool)

(declare-fun tp!2282955 () Bool)

(assert (=> b!7770856 (= e!4604300 (and tp!2282956 tp!2282955))))

(declare-fun b!7770858 () Bool)

(declare-fun tp!2282954 () Bool)

(declare-fun tp!2282957 () Bool)

(assert (=> b!7770858 (= e!4604300 (and tp!2282954 tp!2282957))))

(assert (=> b!7770359 (= tp!2282777 e!4604300)))

(declare-fun b!7770855 () Bool)

(assert (=> b!7770855 (= e!4604300 tp_is_empty!51867)))

(declare-fun b!7770857 () Bool)

(declare-fun tp!2282958 () Bool)

(assert (=> b!7770857 (= e!4604300 tp!2282958)))

(assert (= (and b!7770359 (is-ElementMatch!20756 (regOne!42025 (regTwo!42025 r!25924)))) b!7770855))

(assert (= (and b!7770359 (is-Concat!29601 (regOne!42025 (regTwo!42025 r!25924)))) b!7770856))

(assert (= (and b!7770359 (is-Star!20756 (regOne!42025 (regTwo!42025 r!25924)))) b!7770857))

(assert (= (and b!7770359 (is-Union!20756 (regOne!42025 (regTwo!42025 r!25924)))) b!7770858))

(declare-fun b!7770860 () Bool)

(declare-fun e!4604301 () Bool)

(declare-fun tp!2282961 () Bool)

(declare-fun tp!2282960 () Bool)

(assert (=> b!7770860 (= e!4604301 (and tp!2282961 tp!2282960))))

(declare-fun b!7770862 () Bool)

(declare-fun tp!2282959 () Bool)

(declare-fun tp!2282962 () Bool)

(assert (=> b!7770862 (= e!4604301 (and tp!2282959 tp!2282962))))

(assert (=> b!7770359 (= tp!2282780 e!4604301)))

(declare-fun b!7770859 () Bool)

(assert (=> b!7770859 (= e!4604301 tp_is_empty!51867)))

(declare-fun b!7770861 () Bool)

(declare-fun tp!2282963 () Bool)

(assert (=> b!7770861 (= e!4604301 tp!2282963)))

(assert (= (and b!7770359 (is-ElementMatch!20756 (regTwo!42025 (regTwo!42025 r!25924)))) b!7770859))

(assert (= (and b!7770359 (is-Concat!29601 (regTwo!42025 (regTwo!42025 r!25924)))) b!7770860))

(assert (= (and b!7770359 (is-Star!20756 (regTwo!42025 (regTwo!42025 r!25924)))) b!7770861))

(assert (= (and b!7770359 (is-Union!20756 (regTwo!42025 (regTwo!42025 r!25924)))) b!7770862))

(push 1)

(assert (not b!7770776))

(assert (not b!7770777))

(assert (not b!7770535))

(assert (not b!7770773))

(assert (not bm!720139))

(assert (not b!7770571))

(assert (not bm!720143))

(assert (not bm!720114))

(assert (not b!7770857))

(assert (not b!7770756))

(assert (not b!7770860))

(assert (not b!7770829))

(assert (not b!7770674))

(assert (not b!7770753))

(assert (not b!7770543))

(assert (not b!7770693))

(assert (not b!7770585))

(assert (not b!7770578))

(assert (not b!7770768))

(assert (not bm!720124))

(assert (not d!2344370))

(assert (not b!7770778))

(assert (not bm!720155))

(assert (not b!7770772))

(assert (not b!7770822))

(assert (not bm!720135))

(assert (not b!7770833))

(assert (not b!7770788))

(assert (not b!7770824))

(assert (not b!7770785))

(assert (not b!7770810))

(assert (not bm!720147))

(assert (not b!7770792))

(assert (not b!7770844))

(assert (not b!7770694))

(assert (not b!7770784))

(assert (not d!2344332))

(assert (not bm!720150))

(assert (not b!7770579))

(assert (not b!7770583))

(assert (not b!7770723))

(assert (not b!7770566))

(assert (not b!7770805))

(assert (not d!2344392))

(assert (not b!7770786))

(assert (not b!7770838))

(assert (not b!7770683))

(assert (not b!7770648))

(assert (not d!2344388))

(assert (not d!2344368))

(assert (not b!7770852))

(assert (not b!7770836))

(assert (not bm!720131))

(assert (not d!2344408))

(assert (not b!7770564))

(assert (not d!2344340))

(assert (not d!2344358))

(assert (not d!2344350))

(assert (not b!7770581))

(assert (not b!7770641))

(assert (not bm!720159))

(assert (not b!7770767))

(assert (not b!7770764))

(assert (not d!2344338))

(assert (not b!7770717))

(assert (not b!7770781))

(assert (not bm!720158))

(assert (not b!7770830))

(assert (not bm!720144))

(assert (not b!7770746))

(assert (not b!7770644))

(assert (not b!7770798))

(assert (not d!2344412))

(assert (not b!7770646))

(assert (not b!7770754))

(assert (not b!7770808))

(assert (not bm!720128))

(assert (not d!2344400))

(assert (not b!7770541))

(assert (not bm!720145))

(assert (not b!7770580))

(assert (not b!7770804))

(assert (not b!7770793))

(assert (not b!7770821))

(assert (not b!7770750))

(assert (not d!2344378))

(assert (not b!7770655))

(assert (not b!7770546))

(assert (not d!2344414))

(assert (not b!7770718))

(assert (not d!2344386))

(assert (not b!7770806))

(assert (not b!7770794))

(assert (not b!7770782))

(assert (not b!7770780))

(assert (not b!7770848))

(assert (not b!7770739))

(assert (not d!2344330))

(assert (not b!7770849))

(assert (not b!7770643))

(assert (not bm!720115))

(assert (not b!7770816))

(assert (not bm!720156))

(assert (not b!7770698))

(assert (not b!7770832))

(assert (not bm!720153))

(assert (not b!7770763))

(assert (not b!7770854))

(assert (not b!7770565))

(assert (not b!7770721))

(assert (not bm!720116))

(assert (not b!7770820))

(assert (not b!7770800))

(assert (not b!7770858))

(assert (not b!7770719))

(assert (not b!7770818))

(assert (not b!7770555))

(assert (not d!2344366))

(assert (not b!7770700))

(assert (not b!7770755))

(assert (not b!7770747))

(assert (not b!7770759))

(assert (not b!7770567))

(assert (not b!7770642))

(assert (not b!7770809))

(assert (not b!7770801))

(assert (not b!7770716))

(assert (not b!7770695))

(assert (not b!7770544))

(assert (not b!7770707))

(assert (not bm!720148))

(assert (not b!7770834))

(assert tp_is_empty!51867)

(assert (not b!7770813))

(assert (not b!7770814))

(assert (not d!2344344))

(assert (not d!2344396))

(assert (not bm!720162))

(assert (not bm!720132))

(assert (not b!7770796))

(assert (not bm!720160))

(assert (not b!7770802))

(assert (not b!7770602))

(assert (not b!7770828))

(assert (not bm!720154))

(assert (not bm!720138))

(assert (not b!7770856))

(assert (not b!7770592))

(assert (not bm!720120))

(assert (not b!7770775))

(assert (not b!7770790))

(assert (not b!7770841))

(assert (not d!2344346))

(assert (not b!7770536))

(assert (not b!7770548))

(assert (not b!7770861))

(assert (not b!7770761))

(assert (not b!7770850))

(assert (not b!7770789))

(assert (not d!2344402))

(assert (not b!7770826))

(assert (not bm!720140))

(assert (not b!7770845))

(assert (not b!7770846))

(assert (not d!2344410))

(assert (not b!7770622))

(assert (not b!7770765))

(assert (not b!7770797))

(assert (not bm!720127))

(assert (not d!2344352))

(assert (not d!2344390))

(assert (not b!7770730))

(assert (not bm!720163))

(assert (not bm!720118))

(assert (not bm!720123))

(assert (not b!7770840))

(assert (not b!7770569))

(assert (not b!7770812))

(assert (not b!7770825))

(assert (not b!7770853))

(assert (not bm!720133))

(assert (not b!7770817))

(assert (not d!2344394))

(assert (not b!7770842))

(assert (not b!7770751))

(assert (not b!7770696))

(assert (not d!2344360))

(assert (not b!7770665))

(assert (not bm!720119))

(assert (not b!7770612))

(assert (not b!7770771))

(assert (not b!7770631))

(assert (not b!7770542))

(assert (not b!7770862))

(assert (not b!7770837))

(assert (not b!7770769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

