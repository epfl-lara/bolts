; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728338 () Bool)

(assert start!728338)

(declare-fun b!7526046 () Bool)

(declare-fun res!3016298 () Bool)

(declare-fun e!4485944 () Bool)

(assert (=> b!7526046 (=> (not res!3016298) (not e!4485944))))

(declare-datatypes ((C!39954 0))(
  ( (C!39955 (val!30417 Int)) )
))
(declare-datatypes ((List!72697 0))(
  ( (Nil!72573) (Cons!72573 (h!79021 C!39954) (t!387404 List!72697)) )
))
(declare-fun bigger!57 () List!72697)

(declare-fun input!6727 () List!72697)

(declare-fun isPrefix!6020 (List!72697 List!72697) Bool)

(assert (=> b!7526046 (= res!3016298 (isPrefix!6020 bigger!57 input!6727))))

(declare-fun b!7526047 () Bool)

(declare-fun e!4485946 () Bool)

(declare-fun tp!2187226 () Bool)

(declare-fun tp!2187227 () Bool)

(assert (=> b!7526047 (= e!4485946 (and tp!2187226 tp!2187227))))

(declare-fun b!7526049 () Bool)

(declare-fun tp!2187229 () Bool)

(assert (=> b!7526049 (= e!4485946 tp!2187229)))

(declare-fun b!7526050 () Bool)

(declare-fun e!4485948 () Bool)

(declare-fun tp_is_empty!49983 () Bool)

(declare-fun tp!2187228 () Bool)

(assert (=> b!7526050 (= e!4485948 (and tp_is_empty!49983 tp!2187228))))

(declare-fun b!7526051 () Bool)

(declare-fun res!3016296 () Bool)

(assert (=> b!7526051 (=> (not res!3016296) (not e!4485944))))

(declare-fun returnP!57 () List!72697)

(declare-fun size!42310 (List!72697) Int)

(assert (=> b!7526051 (= res!3016296 (>= (size!42310 bigger!57) (size!42310 returnP!57)))))

(declare-fun b!7526052 () Bool)

(assert (=> b!7526052 (= e!4485944 false)))

(declare-datatypes ((tuple2!68770 0))(
  ( (tuple2!68771 (_1!37688 List!72697) (_2!37688 List!72697)) )
))
(declare-fun lt!2638719 () tuple2!68770)

(declare-datatypes ((Regex!19814 0))(
  ( (ElementMatch!19814 (c!1390263 C!39954)) (Concat!28659 (regOne!40140 Regex!19814) (regTwo!40140 Regex!19814)) (EmptyExpr!19814) (Star!19814 (reg!20143 Regex!19814)) (EmptyLang!19814) (Union!19814 (regOne!40141 Regex!19814) (regTwo!40141 Regex!19814)) )
))
(declare-fun baseR!93 () Regex!19814)

(declare-fun findLongestMatchInner!2093 (Regex!19814 List!72697 Int List!72697 List!72697 Int) tuple2!68770)

(assert (=> b!7526052 (= lt!2638719 (findLongestMatchInner!2093 baseR!93 Nil!72573 (size!42310 Nil!72573) input!6727 input!6727 (size!42310 input!6727)))))

(declare-fun b!7526048 () Bool)

(declare-fun e!4485947 () Bool)

(declare-fun tp!2187233 () Bool)

(assert (=> b!7526048 (= e!4485947 (and tp_is_empty!49983 tp!2187233))))

(declare-fun res!3016297 () Bool)

(assert (=> start!728338 (=> (not res!3016297) (not e!4485944))))

(declare-fun validRegex!10242 (Regex!19814) Bool)

(assert (=> start!728338 (= res!3016297 (validRegex!10242 baseR!93))))

(assert (=> start!728338 e!4485944))

(assert (=> start!728338 e!4485946))

(declare-fun e!4485945 () Bool)

(assert (=> start!728338 e!4485945))

(assert (=> start!728338 e!4485948))

(assert (=> start!728338 e!4485947))

(declare-fun b!7526053 () Bool)

(declare-fun tp!2187231 () Bool)

(declare-fun tp!2187230 () Bool)

(assert (=> b!7526053 (= e!4485946 (and tp!2187231 tp!2187230))))

(declare-fun b!7526054 () Bool)

(declare-fun res!3016295 () Bool)

(assert (=> b!7526054 (=> (not res!3016295) (not e!4485944))))

(assert (=> b!7526054 (= res!3016295 (isPrefix!6020 returnP!57 input!6727))))

(declare-fun b!7526055 () Bool)

(assert (=> b!7526055 (= e!4485946 tp_is_empty!49983)))

(declare-fun b!7526056 () Bool)

(declare-fun tp!2187232 () Bool)

(assert (=> b!7526056 (= e!4485945 (and tp_is_empty!49983 tp!2187232))))

(assert (= (and start!728338 res!3016297) b!7526054))

(assert (= (and b!7526054 res!3016295) b!7526046))

(assert (= (and b!7526046 res!3016298) b!7526051))

(assert (= (and b!7526051 res!3016296) b!7526052))

(assert (= (and start!728338 (is-ElementMatch!19814 baseR!93)) b!7526055))

(assert (= (and start!728338 (is-Concat!28659 baseR!93)) b!7526047))

(assert (= (and start!728338 (is-Star!19814 baseR!93)) b!7526049))

(assert (= (and start!728338 (is-Union!19814 baseR!93)) b!7526053))

(assert (= (and start!728338 (is-Cons!72573 returnP!57)) b!7526056))

(assert (= (and start!728338 (is-Cons!72573 input!6727)) b!7526050))

(assert (= (and start!728338 (is-Cons!72573 bigger!57)) b!7526048))

(declare-fun m!8101538 () Bool)

(assert (=> start!728338 m!8101538))

(declare-fun m!8101540 () Bool)

(assert (=> b!7526052 m!8101540))

(declare-fun m!8101542 () Bool)

(assert (=> b!7526052 m!8101542))

(assert (=> b!7526052 m!8101540))

(assert (=> b!7526052 m!8101542))

(declare-fun m!8101544 () Bool)

(assert (=> b!7526052 m!8101544))

(declare-fun m!8101546 () Bool)

(assert (=> b!7526054 m!8101546))

(declare-fun m!8101548 () Bool)

(assert (=> b!7526051 m!8101548))

(declare-fun m!8101550 () Bool)

(assert (=> b!7526051 m!8101550))

(declare-fun m!8101552 () Bool)

(assert (=> b!7526046 m!8101552))

(push 1)

(assert tp_is_empty!49983)

(assert (not b!7526048))

(assert (not start!728338))

(assert (not b!7526052))

(assert (not b!7526054))

(assert (not b!7526056))

(assert (not b!7526050))

(assert (not b!7526051))

(assert (not b!7526046))

(assert (not b!7526047))

(assert (not b!7526049))

(assert (not b!7526053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

