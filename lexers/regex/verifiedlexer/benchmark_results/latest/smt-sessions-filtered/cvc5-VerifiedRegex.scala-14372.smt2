; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749746 () Bool)

(assert start!749746)

(declare-fun b!7943905 () Bool)

(declare-fun e!4686971 () Bool)

(declare-fun tp!2362569 () Bool)

(assert (=> b!7943905 (= e!4686971 tp!2362569)))

(declare-fun res!3151035 () Bool)

(declare-fun e!4686968 () Bool)

(assert (=> start!749746 (=> (not res!3151035) (not e!4686968))))

(declare-datatypes ((C!43186 0))(
  ( (C!43187 (val!32141 Int)) )
))
(declare-datatypes ((Regex!21424 0))(
  ( (ElementMatch!21424 (c!1459361 C!43186)) (Concat!30423 (regOne!43360 Regex!21424) (regTwo!43360 Regex!21424)) (EmptyExpr!21424) (Star!21424 (reg!21753 Regex!21424)) (EmptyLang!21424) (Union!21424 (regOne!43361 Regex!21424) (regTwo!43361 Regex!21424)) )
))
(declare-fun baseR!116 () Regex!21424)

(declare-fun validRegex!11728 (Regex!21424) Bool)

(assert (=> start!749746 (= res!3151035 (validRegex!11728 baseR!116))))

(assert (=> start!749746 e!4686968))

(declare-fun e!4686972 () Bool)

(assert (=> start!749746 e!4686972))

(declare-fun e!4686970 () Bool)

(assert (=> start!749746 e!4686970))

(declare-fun e!4686969 () Bool)

(assert (=> start!749746 e!4686969))

(assert (=> start!749746 e!4686971))

(declare-fun b!7943906 () Bool)

(declare-fun tp!2362574 () Bool)

(assert (=> b!7943906 (= e!4686972 tp!2362574)))

(declare-fun b!7943907 () Bool)

(declare-fun tp_is_empty!53391 () Bool)

(declare-fun tp!2362573 () Bool)

(assert (=> b!7943907 (= e!4686970 (and tp_is_empty!53391 tp!2362573))))

(declare-fun b!7943908 () Bool)

(declare-fun tp!2362568 () Bool)

(declare-fun tp!2362570 () Bool)

(assert (=> b!7943908 (= e!4686971 (and tp!2362568 tp!2362570))))

(declare-fun b!7943909 () Bool)

(declare-fun res!3151033 () Bool)

(assert (=> b!7943909 (=> (not res!3151033) (not e!4686968))))

(declare-fun r!24602 () Regex!21424)

(declare-datatypes ((List!74653 0))(
  ( (Nil!74529) (Cons!74529 (h!80977 C!43186) (t!390396 List!74653)) )
))
(declare-fun testedP!447 () List!74653)

(declare-fun derivative!610 (Regex!21424 List!74653) Regex!21424)

(assert (=> b!7943909 (= res!3151033 (= (derivative!610 baseR!116 testedP!447) r!24602))))

(declare-fun b!7943910 () Bool)

(declare-fun tp!2362576 () Bool)

(declare-fun tp!2362572 () Bool)

(assert (=> b!7943910 (= e!4686972 (and tp!2362576 tp!2362572))))

(declare-fun b!7943911 () Bool)

(declare-fun tp!2362567 () Bool)

(declare-fun tp!2362571 () Bool)

(assert (=> b!7943911 (= e!4686972 (and tp!2362567 tp!2362571))))

(declare-fun b!7943912 () Bool)

(declare-fun tp!2362575 () Bool)

(assert (=> b!7943912 (= e!4686969 (and tp_is_empty!53391 tp!2362575))))

(declare-fun b!7943913 () Bool)

(assert (=> b!7943913 (= e!4686968 false)))

(declare-datatypes ((tuple2!70510 0))(
  ( (tuple2!70511 (_1!38558 List!74653) (_2!38558 List!74653)) )
))
(declare-fun lt!2697400 () tuple2!70510)

(declare-fun input!7927 () List!74653)

(declare-fun findLongestMatchInner!2205 (Regex!21424 List!74653 Int List!74653 List!74653 Int) tuple2!70510)

(declare-fun size!43360 (List!74653) Int)

(declare-fun getSuffix!3727 (List!74653 List!74653) List!74653)

(assert (=> b!7943913 (= lt!2697400 (findLongestMatchInner!2205 r!24602 testedP!447 (size!43360 testedP!447) (getSuffix!3727 input!7927 testedP!447) input!7927 (size!43360 input!7927)))))

(declare-fun b!7943914 () Bool)

(declare-fun tp!2362577 () Bool)

(declare-fun tp!2362578 () Bool)

(assert (=> b!7943914 (= e!4686971 (and tp!2362577 tp!2362578))))

(declare-fun b!7943915 () Bool)

(assert (=> b!7943915 (= e!4686972 tp_is_empty!53391)))

(declare-fun b!7943916 () Bool)

(declare-fun res!3151034 () Bool)

(assert (=> b!7943916 (=> (not res!3151034) (not e!4686968))))

(declare-fun isPrefix!6524 (List!74653 List!74653) Bool)

(assert (=> b!7943916 (= res!3151034 (isPrefix!6524 testedP!447 input!7927))))

(declare-fun b!7943917 () Bool)

(assert (=> b!7943917 (= e!4686971 tp_is_empty!53391)))

(assert (= (and start!749746 res!3151035) b!7943916))

(assert (= (and b!7943916 res!3151034) b!7943909))

(assert (= (and b!7943909 res!3151033) b!7943913))

(assert (= (and start!749746 (is-ElementMatch!21424 baseR!116)) b!7943915))

(assert (= (and start!749746 (is-Concat!30423 baseR!116)) b!7943911))

(assert (= (and start!749746 (is-Star!21424 baseR!116)) b!7943906))

(assert (= (and start!749746 (is-Union!21424 baseR!116)) b!7943910))

(assert (= (and start!749746 (is-Cons!74529 testedP!447)) b!7943907))

(assert (= (and start!749746 (is-Cons!74529 input!7927)) b!7943912))

(assert (= (and start!749746 (is-ElementMatch!21424 r!24602)) b!7943917))

(assert (= (and start!749746 (is-Concat!30423 r!24602)) b!7943908))

(assert (= (and start!749746 (is-Star!21424 r!24602)) b!7943905))

(assert (= (and start!749746 (is-Union!21424 r!24602)) b!7943914))

(declare-fun m!8331314 () Bool)

(assert (=> start!749746 m!8331314))

(declare-fun m!8331316 () Bool)

(assert (=> b!7943909 m!8331316))

(declare-fun m!8331318 () Bool)

(assert (=> b!7943913 m!8331318))

(declare-fun m!8331320 () Bool)

(assert (=> b!7943913 m!8331320))

(declare-fun m!8331322 () Bool)

(assert (=> b!7943913 m!8331322))

(assert (=> b!7943913 m!8331318))

(assert (=> b!7943913 m!8331320))

(assert (=> b!7943913 m!8331322))

(declare-fun m!8331324 () Bool)

(assert (=> b!7943913 m!8331324))

(declare-fun m!8331326 () Bool)

(assert (=> b!7943916 m!8331326))

(push 1)

(assert (not b!7943910))

(assert (not b!7943906))

(assert (not b!7943911))

(assert (not b!7943905))

(assert (not start!749746))

(assert (not b!7943916))

(assert (not b!7943908))

(assert (not b!7943907))

(assert (not b!7943909))

(assert (not b!7943912))

(assert (not b!7943913))

(assert tp_is_empty!53391)

(assert (not b!7943914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

