; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749828 () Bool)

(assert start!749828)

(declare-fun b!7945073 () Bool)

(declare-fun e!4687521 () Bool)

(declare-fun tp!2363229 () Bool)

(declare-fun tp!2363228 () Bool)

(assert (=> b!7945073 (= e!4687521 (and tp!2363229 tp!2363228))))

(declare-fun res!3151349 () Bool)

(declare-fun e!4687519 () Bool)

(assert (=> start!749828 (=> (not res!3151349) (not e!4687519))))

(declare-datatypes ((C!43208 0))(
  ( (C!43209 (val!32152 Int)) )
))
(declare-datatypes ((Regex!21435 0))(
  ( (ElementMatch!21435 (c!1459522 C!43208)) (Concat!30434 (regOne!43382 Regex!21435) (regTwo!43382 Regex!21435)) (EmptyExpr!21435) (Star!21435 (reg!21764 Regex!21435)) (EmptyLang!21435) (Union!21435 (regOne!43383 Regex!21435) (regTwo!43383 Regex!21435)) )
))
(declare-fun baseR!116 () Regex!21435)

(declare-fun validRegex!11739 (Regex!21435) Bool)

(assert (=> start!749828 (= res!3151349 (validRegex!11739 baseR!116))))

(assert (=> start!749828 e!4687519))

(assert (=> start!749828 e!4687521))

(declare-fun e!4687520 () Bool)

(assert (=> start!749828 e!4687520))

(declare-fun e!4687518 () Bool)

(assert (=> start!749828 e!4687518))

(declare-fun e!4687515 () Bool)

(assert (=> start!749828 e!4687515))

(declare-fun b!7945074 () Bool)

(declare-fun tp_is_empty!53413 () Bool)

(declare-fun tp!2363219 () Bool)

(assert (=> b!7945074 (= e!4687520 (and tp_is_empty!53413 tp!2363219))))

(declare-fun b!7945075 () Bool)

(declare-fun tp!2363222 () Bool)

(declare-fun tp!2363226 () Bool)

(assert (=> b!7945075 (= e!4687521 (and tp!2363222 tp!2363226))))

(declare-fun b!7945076 () Bool)

(declare-fun tp!2363223 () Bool)

(assert (=> b!7945076 (= e!4687521 tp!2363223)))

(declare-fun b!7945077 () Bool)

(declare-fun res!3151347 () Bool)

(declare-fun e!4687517 () Bool)

(assert (=> b!7945077 (=> (not res!3151347) (not e!4687517))))

(declare-datatypes ((List!74664 0))(
  ( (Nil!74540) (Cons!74540 (h!80988 C!43208) (t!390407 List!74664)) )
))
(declare-fun testedP!447 () List!74664)

(declare-fun input!7927 () List!74664)

(assert (=> b!7945077 (= res!3151347 (= testedP!447 input!7927))))

(declare-fun b!7945078 () Bool)

(declare-fun res!3151348 () Bool)

(assert (=> b!7945078 (=> (not res!3151348) (not e!4687519))))

(declare-fun isPrefix!6535 (List!74664 List!74664) Bool)

(assert (=> b!7945078 (= res!3151348 (isPrefix!6535 testedP!447 input!7927))))

(declare-fun b!7945079 () Bool)

(declare-fun res!3151351 () Bool)

(assert (=> b!7945079 (=> (not res!3151351) (not e!4687517))))

(declare-fun r!24602 () Regex!21435)

(declare-fun nullable!9546 (Regex!21435) Bool)

(assert (=> b!7945079 (= res!3151351 (nullable!9546 r!24602))))

(declare-fun b!7945080 () Bool)

(declare-fun tp!2363221 () Bool)

(assert (=> b!7945080 (= e!4687515 tp!2363221)))

(declare-fun b!7945081 () Bool)

(declare-fun e!4687516 () Bool)

(assert (=> b!7945081 (= e!4687519 e!4687516)))

(declare-fun res!3151352 () Bool)

(assert (=> b!7945081 (=> (not res!3151352) (not e!4687516))))

(declare-fun lt!2697854 () Regex!21435)

(assert (=> b!7945081 (= res!3151352 (= lt!2697854 r!24602))))

(declare-fun derivative!621 (Regex!21435 List!74664) Regex!21435)

(assert (=> b!7945081 (= lt!2697854 (derivative!621 baseR!116 testedP!447))))

(declare-fun b!7945082 () Bool)

(assert (=> b!7945082 (= e!4687515 tp_is_empty!53413)))

(declare-fun b!7945083 () Bool)

(assert (=> b!7945083 (= e!4687516 e!4687517)))

(declare-fun res!3151350 () Bool)

(assert (=> b!7945083 (=> (not res!3151350) (not e!4687517))))

(declare-fun lt!2697855 () Int)

(declare-fun lt!2697856 () Int)

(declare-fun lt!2697857 () List!74664)

(declare-fun isEmpty!42839 (List!74664) Bool)

(declare-datatypes ((tuple2!70532 0))(
  ( (tuple2!70533 (_1!38569 List!74664) (_2!38569 List!74664)) )
))
(declare-fun findLongestMatchInner!2216 (Regex!21435 List!74664 Int List!74664 List!74664 Int) tuple2!70532)

(assert (=> b!7945083 (= res!3151350 (not (isEmpty!42839 (_1!38569 (findLongestMatchInner!2216 r!24602 testedP!447 lt!2697856 lt!2697857 input!7927 lt!2697855)))))))

(declare-fun size!43371 (List!74664) Int)

(assert (=> b!7945083 (= lt!2697855 (size!43371 input!7927))))

(declare-fun getSuffix!3738 (List!74664 List!74664) List!74664)

(assert (=> b!7945083 (= lt!2697857 (getSuffix!3738 input!7927 testedP!447))))

(assert (=> b!7945083 (= lt!2697856 (size!43371 testedP!447))))

(declare-fun b!7945084 () Bool)

(assert (=> b!7945084 (= e!4687517 (not (>= lt!2697855 lt!2697856)))))

(declare-fun matchR!10716 (Regex!21435 List!74664) Bool)

(assert (=> b!7945084 (= (matchR!10716 baseR!116 testedP!447) (matchR!10716 lt!2697854 Nil!74540))))

(declare-datatypes ((Unit!169700 0))(
  ( (Unit!169701) )
))
(declare-fun lt!2697853 () Unit!169700)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!284 (Regex!21435 List!74664) Unit!169700)

(assert (=> b!7945084 (= lt!2697853 (lemmaMatchRIsSameAsWholeDerivativeAndNil!284 baseR!116 testedP!447))))

(declare-fun b!7945085 () Bool)

(declare-fun tp!2363220 () Bool)

(declare-fun tp!2363225 () Bool)

(assert (=> b!7945085 (= e!4687515 (and tp!2363220 tp!2363225))))

(declare-fun b!7945086 () Bool)

(declare-fun tp!2363224 () Bool)

(assert (=> b!7945086 (= e!4687518 (and tp_is_empty!53413 tp!2363224))))

(declare-fun b!7945087 () Bool)

(declare-fun tp!2363227 () Bool)

(declare-fun tp!2363230 () Bool)

(assert (=> b!7945087 (= e!4687515 (and tp!2363227 tp!2363230))))

(declare-fun b!7945088 () Bool)

(assert (=> b!7945088 (= e!4687521 tp_is_empty!53413)))

(assert (= (and start!749828 res!3151349) b!7945078))

(assert (= (and b!7945078 res!3151348) b!7945081))

(assert (= (and b!7945081 res!3151352) b!7945083))

(assert (= (and b!7945083 res!3151350) b!7945077))

(assert (= (and b!7945077 res!3151347) b!7945079))

(assert (= (and b!7945079 res!3151351) b!7945084))

(get-info :version)

(assert (= (and start!749828 ((_ is ElementMatch!21435) baseR!116)) b!7945088))

(assert (= (and start!749828 ((_ is Concat!30434) baseR!116)) b!7945075))

(assert (= (and start!749828 ((_ is Star!21435) baseR!116)) b!7945076))

(assert (= (and start!749828 ((_ is Union!21435) baseR!116)) b!7945073))

(assert (= (and start!749828 ((_ is Cons!74540) testedP!447)) b!7945074))

(assert (= (and start!749828 ((_ is Cons!74540) input!7927)) b!7945086))

(assert (= (and start!749828 ((_ is ElementMatch!21435) r!24602)) b!7945082))

(assert (= (and start!749828 ((_ is Concat!30434) r!24602)) b!7945085))

(assert (= (and start!749828 ((_ is Star!21435) r!24602)) b!7945080))

(assert (= (and start!749828 ((_ is Union!21435) r!24602)) b!7945087))

(declare-fun m!8331878 () Bool)

(assert (=> b!7945083 m!8331878))

(declare-fun m!8331880 () Bool)

(assert (=> b!7945083 m!8331880))

(declare-fun m!8331882 () Bool)

(assert (=> b!7945083 m!8331882))

(declare-fun m!8331884 () Bool)

(assert (=> b!7945083 m!8331884))

(declare-fun m!8331886 () Bool)

(assert (=> b!7945083 m!8331886))

(declare-fun m!8331888 () Bool)

(assert (=> b!7945084 m!8331888))

(declare-fun m!8331890 () Bool)

(assert (=> b!7945084 m!8331890))

(declare-fun m!8331892 () Bool)

(assert (=> b!7945084 m!8331892))

(declare-fun m!8331894 () Bool)

(assert (=> b!7945078 m!8331894))

(declare-fun m!8331896 () Bool)

(assert (=> b!7945079 m!8331896))

(declare-fun m!8331898 () Bool)

(assert (=> b!7945081 m!8331898))

(declare-fun m!8331900 () Bool)

(assert (=> start!749828 m!8331900))

(check-sat (not b!7945085) (not b!7945087) (not b!7945079) (not b!7945083) (not b!7945086) (not b!7945084) (not b!7945080) (not b!7945073) (not b!7945081) (not b!7945078) (not b!7945076) tp_is_empty!53413 (not b!7945075) (not start!749828) (not b!7945074))
(check-sat)
