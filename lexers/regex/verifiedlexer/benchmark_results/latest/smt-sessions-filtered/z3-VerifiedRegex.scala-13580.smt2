; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730352 () Bool)

(assert start!730352)

(declare-fun b!7554179 () Bool)

(declare-fun res!3027694 () Bool)

(declare-fun e!4499485 () Bool)

(assert (=> b!7554179 (=> (not res!3027694) (not e!4499485))))

(declare-datatypes ((C!40236 0))(
  ( (C!40237 (val!30558 Int)) )
))
(declare-datatypes ((Regex!19955 0))(
  ( (ElementMatch!19955 (c!1394282 C!40236)) (Concat!28800 (regOne!40422 Regex!19955) (regTwo!40422 Regex!19955)) (EmptyExpr!19955) (Star!19955 (reg!20284 Regex!19955)) (EmptyLang!19955) (Union!19955 (regOne!40423 Regex!19955) (regTwo!40423 Regex!19955)) )
))
(declare-fun r!24333 () Regex!19955)

(declare-fun validRegex!10383 (Regex!19955) Bool)

(assert (=> b!7554179 (= res!3027694 (validRegex!10383 r!24333))))

(declare-fun b!7554180 () Bool)

(declare-fun e!4499481 () Bool)

(declare-fun tp!2197841 () Bool)

(assert (=> b!7554180 (= e!4499481 tp!2197841)))

(declare-fun b!7554181 () Bool)

(declare-fun e!4499480 () Bool)

(declare-fun tp!2197838 () Bool)

(assert (=> b!7554181 (= e!4499480 tp!2197838)))

(declare-fun b!7554182 () Bool)

(declare-fun e!4499484 () Bool)

(declare-fun lt!2647651 () Int)

(declare-fun lt!2647652 () Int)

(assert (=> b!7554182 (= e!4499484 (> lt!2647651 lt!2647652))))

(declare-fun b!7554183 () Bool)

(declare-fun tp_is_empty!50265 () Bool)

(assert (=> b!7554183 (= e!4499480 tp_is_empty!50265)))

(declare-fun b!7554184 () Bool)

(declare-fun e!4499479 () Bool)

(declare-fun tp!2197840 () Bool)

(assert (=> b!7554184 (= e!4499479 (and tp_is_empty!50265 tp!2197840))))

(declare-fun b!7554185 () Bool)

(assert (=> b!7554185 (= e!4499485 e!4499484)))

(declare-fun res!3027691 () Bool)

(assert (=> b!7554185 (=> (not res!3027691) (not e!4499484))))

(assert (=> b!7554185 (= res!3027691 (>= lt!2647652 lt!2647651))))

(declare-datatypes ((List!72838 0))(
  ( (Nil!72714) (Cons!72714 (h!79162 C!40236) (t!387563 List!72838)) )
))
(declare-fun testedP!423 () List!72838)

(declare-fun size!42451 (List!72838) Int)

(assert (=> b!7554185 (= lt!2647651 (size!42451 testedP!423))))

(declare-fun knownP!30 () List!72838)

(assert (=> b!7554185 (= lt!2647652 (size!42451 knownP!30))))

(declare-fun b!7554186 () Bool)

(declare-fun res!3027690 () Bool)

(assert (=> b!7554186 (=> (not res!3027690) (not e!4499485))))

(declare-fun input!7874 () List!72838)

(declare-fun isPrefix!6161 (List!72838 List!72838) Bool)

(assert (=> b!7554186 (= res!3027690 (isPrefix!6161 testedP!423 input!7874))))

(declare-fun b!7554187 () Bool)

(declare-fun e!4499482 () Bool)

(declare-fun tp!2197845 () Bool)

(assert (=> b!7554187 (= e!4499482 (and tp_is_empty!50265 tp!2197845))))

(declare-fun b!7554188 () Bool)

(declare-fun e!4499483 () Bool)

(declare-fun tp!2197837 () Bool)

(assert (=> b!7554188 (= e!4499483 (and tp_is_empty!50265 tp!2197837))))

(declare-fun b!7554189 () Bool)

(declare-fun tp!2197836 () Bool)

(declare-fun tp!2197833 () Bool)

(assert (=> b!7554189 (= e!4499481 (and tp!2197836 tp!2197833))))

(declare-fun b!7554190 () Bool)

(declare-fun tp!2197842 () Bool)

(declare-fun tp!2197834 () Bool)

(assert (=> b!7554190 (= e!4499480 (and tp!2197842 tp!2197834))))

(declare-fun b!7554191 () Bool)

(declare-fun tp!2197835 () Bool)

(declare-fun tp!2197843 () Bool)

(assert (=> b!7554191 (= e!4499480 (and tp!2197835 tp!2197843))))

(declare-fun b!7554192 () Bool)

(declare-fun res!3027693 () Bool)

(assert (=> b!7554192 (=> (not res!3027693) (not e!4499485))))

(assert (=> b!7554192 (= res!3027693 (isPrefix!6161 knownP!30 input!7874))))

(declare-fun b!7554193 () Bool)

(assert (=> b!7554193 (= e!4499481 tp_is_empty!50265)))

(declare-fun b!7554194 () Bool)

(declare-fun tp!2197839 () Bool)

(declare-fun tp!2197844 () Bool)

(assert (=> b!7554194 (= e!4499481 (and tp!2197839 tp!2197844))))

(declare-fun res!3027692 () Bool)

(assert (=> start!730352 (=> (not res!3027692) (not e!4499485))))

(declare-fun baseR!101 () Regex!19955)

(assert (=> start!730352 (= res!3027692 (validRegex!10383 baseR!101))))

(assert (=> start!730352 e!4499485))

(assert (=> start!730352 e!4499480))

(assert (=> start!730352 e!4499482))

(assert (=> start!730352 e!4499483))

(assert (=> start!730352 e!4499479))

(assert (=> start!730352 e!4499481))

(declare-fun b!7554195 () Bool)

(declare-fun res!3027689 () Bool)

(assert (=> b!7554195 (=> (not res!3027689) (not e!4499484))))

(declare-fun matchR!9557 (Regex!19955 List!72838) Bool)

(assert (=> b!7554195 (= res!3027689 (matchR!9557 baseR!101 knownP!30))))

(assert (= (and start!730352 res!3027692) b!7554179))

(assert (= (and b!7554179 res!3027694) b!7554186))

(assert (= (and b!7554186 res!3027690) b!7554192))

(assert (= (and b!7554192 res!3027693) b!7554185))

(assert (= (and b!7554185 res!3027691) b!7554195))

(assert (= (and b!7554195 res!3027689) b!7554182))

(get-info :version)

(assert (= (and start!730352 ((_ is ElementMatch!19955) baseR!101)) b!7554183))

(assert (= (and start!730352 ((_ is Concat!28800) baseR!101)) b!7554190))

(assert (= (and start!730352 ((_ is Star!19955) baseR!101)) b!7554181))

(assert (= (and start!730352 ((_ is Union!19955) baseR!101)) b!7554191))

(assert (= (and start!730352 ((_ is Cons!72714) input!7874)) b!7554187))

(assert (= (and start!730352 ((_ is Cons!72714) knownP!30)) b!7554188))

(assert (= (and start!730352 ((_ is Cons!72714) testedP!423)) b!7554184))

(assert (= (and start!730352 ((_ is ElementMatch!19955) r!24333)) b!7554193))

(assert (= (and start!730352 ((_ is Concat!28800) r!24333)) b!7554189))

(assert (= (and start!730352 ((_ is Star!19955) r!24333)) b!7554180))

(assert (= (and start!730352 ((_ is Union!19955) r!24333)) b!7554194))

(declare-fun m!8120556 () Bool)

(assert (=> b!7554186 m!8120556))

(declare-fun m!8120558 () Bool)

(assert (=> b!7554179 m!8120558))

(declare-fun m!8120560 () Bool)

(assert (=> start!730352 m!8120560))

(declare-fun m!8120562 () Bool)

(assert (=> b!7554192 m!8120562))

(declare-fun m!8120564 () Bool)

(assert (=> b!7554195 m!8120564))

(declare-fun m!8120566 () Bool)

(assert (=> b!7554185 m!8120566))

(declare-fun m!8120568 () Bool)

(assert (=> b!7554185 m!8120568))

(check-sat (not b!7554180) (not b!7554179) (not b!7554187) tp_is_empty!50265 (not b!7554190) (not b!7554188) (not b!7554184) (not b!7554195) (not start!730352) (not b!7554186) (not b!7554181) (not b!7554191) (not b!7554189) (not b!7554192) (not b!7554194) (not b!7554185))
(check-sat)
