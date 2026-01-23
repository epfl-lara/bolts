; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349530 () Bool)

(assert start!349530)

(declare-fun b!3705941 () Bool)

(declare-fun e!2295782 () Bool)

(declare-fun tp_is_empty!18617 () Bool)

(assert (=> b!3705941 (= e!2295782 tp_is_empty!18617)))

(declare-fun b!3705942 () Bool)

(declare-fun e!2295784 () Bool)

(declare-fun tp!1127384 () Bool)

(assert (=> b!3705942 (= e!2295784 (and tp_is_empty!18617 tp!1127384))))

(declare-fun res!1507635 () Bool)

(declare-fun e!2295783 () Bool)

(assert (=> start!349530 (=> (not res!1507635) (not e!2295783))))

(declare-datatypes ((C!21788 0))(
  ( (C!21789 (val!12942 Int)) )
))
(declare-datatypes ((Regex!10801 0))(
  ( (ElementMatch!10801 (c!640053 C!21788)) (Concat!17072 (regOne!22114 Regex!10801) (regTwo!22114 Regex!10801)) (EmptyExpr!10801) (Star!10801 (reg!11130 Regex!10801)) (EmptyLang!10801) (Union!10801 (regOne!22115 Regex!10801) (regTwo!22115 Regex!10801)) )
))
(declare-fun r!25965 () Regex!10801)

(declare-fun validRegex!4908 (Regex!10801) Bool)

(assert (=> start!349530 (= res!1507635 (validRegex!4908 r!25965))))

(assert (=> start!349530 e!2295783))

(assert (=> start!349530 e!2295782))

(assert (=> start!349530 e!2295784))

(assert (=> start!349530 tp_is_empty!18617))

(declare-fun b!3705943 () Bool)

(declare-fun res!1507634 () Bool)

(assert (=> b!3705943 (=> (not res!1507634) (not e!2295783))))

(declare-datatypes ((List!39682 0))(
  ( (Nil!39558) (Cons!39558 (h!44978 C!21788) (t!302365 List!39682)) )
))
(declare-fun s!14922 () List!39682)

(declare-fun c!13398 () C!21788)

(declare-fun contains!7894 (List!39682 C!21788) Bool)

(assert (=> b!3705943 (= res!1507634 (contains!7894 s!14922 c!13398))))

(declare-fun b!3705944 () Bool)

(declare-fun tp!1127385 () Bool)

(declare-fun tp!1127388 () Bool)

(assert (=> b!3705944 (= e!2295782 (and tp!1127385 tp!1127388))))

(declare-fun b!3705945 () Bool)

(declare-fun res!1507636 () Bool)

(assert (=> b!3705945 (=> (not res!1507636) (not e!2295783))))

(declare-fun head!7999 (List!39682) C!21788)

(assert (=> b!3705945 (= res!1507636 (= (head!7999 s!14922) c!13398))))

(declare-fun b!3705946 () Bool)

(declare-fun tp!1127383 () Bool)

(assert (=> b!3705946 (= e!2295782 tp!1127383)))

(declare-fun b!3705947 () Bool)

(declare-fun res!1507637 () Bool)

(assert (=> b!3705947 (=> (not res!1507637) (not e!2295783))))

(declare-fun usedCharacters!1064 (Regex!10801) List!39682)

(assert (=> b!3705947 (= res!1507637 (not (contains!7894 (usedCharacters!1064 r!25965) c!13398)))))

(declare-fun b!3705948 () Bool)

(declare-fun res!1507638 () Bool)

(assert (=> b!3705948 (=> (not res!1507638) (not e!2295783))))

(get-info :version)

(assert (=> b!3705948 (= res!1507638 (and ((_ is Cons!39558) s!14922) (= (h!44978 s!14922) c!13398)))))

(declare-fun b!3705949 () Bool)

(declare-fun tp!1127387 () Bool)

(declare-fun tp!1127386 () Bool)

(assert (=> b!3705949 (= e!2295782 (and tp!1127387 tp!1127386))))

(declare-fun b!3705950 () Bool)

(assert (=> b!3705950 (= e!2295783 (not true))))

(declare-fun matchR!5278 (Regex!10801 List!39682) Bool)

(assert (=> b!3705950 (not (matchR!5278 r!25965 s!14922))))

(declare-datatypes ((Unit!57440 0))(
  ( (Unit!57441) )
))
(declare-fun lt!1296400 () Unit!57440)

(declare-fun lemmaRegexCannotMatchAStringStartingWithACharItDoesNotContain!2 (Regex!10801 List!39682 C!21788) Unit!57440)

(assert (=> b!3705950 (= lt!1296400 (lemmaRegexCannotMatchAStringStartingWithACharItDoesNotContain!2 r!25965 s!14922 c!13398))))

(assert (= (and start!349530 res!1507635) b!3705943))

(assert (= (and b!3705943 res!1507634) b!3705947))

(assert (= (and b!3705947 res!1507637) b!3705948))

(assert (= (and b!3705948 res!1507638) b!3705945))

(assert (= (and b!3705945 res!1507636) b!3705950))

(assert (= (and start!349530 ((_ is ElementMatch!10801) r!25965)) b!3705941))

(assert (= (and start!349530 ((_ is Concat!17072) r!25965)) b!3705949))

(assert (= (and start!349530 ((_ is Star!10801) r!25965)) b!3705946))

(assert (= (and start!349530 ((_ is Union!10801) r!25965)) b!3705944))

(assert (= (and start!349530 ((_ is Cons!39558) s!14922)) b!3705942))

(declare-fun m!4216063 () Bool)

(assert (=> b!3705943 m!4216063))

(declare-fun m!4216065 () Bool)

(assert (=> start!349530 m!4216065))

(declare-fun m!4216067 () Bool)

(assert (=> b!3705950 m!4216067))

(declare-fun m!4216069 () Bool)

(assert (=> b!3705950 m!4216069))

(declare-fun m!4216071 () Bool)

(assert (=> b!3705945 m!4216071))

(declare-fun m!4216073 () Bool)

(assert (=> b!3705947 m!4216073))

(assert (=> b!3705947 m!4216073))

(declare-fun m!4216075 () Bool)

(assert (=> b!3705947 m!4216075))

(check-sat (not b!3705950) (not b!3705942) (not b!3705947) (not b!3705949) (not b!3705946) (not b!3705945) (not start!349530) (not b!3705943) tp_is_empty!18617 (not b!3705944))
(check-sat)
