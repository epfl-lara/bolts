; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350578 () Bool)

(assert start!350578)

(declare-fun res!1512889 () Bool)

(declare-fun e!2304437 () Bool)

(assert (=> start!350578 (=> (not res!1512889) (not e!2304437))))

(declare-datatypes ((C!21964 0))(
  ( (C!21965 (val!13030 Int)) )
))
(declare-datatypes ((Regex!10889 0))(
  ( (ElementMatch!10889 (c!643961 C!21964)) (Concat!17160 (regOne!22290 Regex!10889) (regTwo!22290 Regex!10889)) (EmptyExpr!10889) (Star!10889 (reg!11218 Regex!10889)) (EmptyLang!10889) (Union!10889 (regOne!22291 Regex!10889) (regTwo!22291 Regex!10889)) )
))
(declare-fun r!26968 () Regex!10889)

(declare-fun validRegex!4996 (Regex!10889) Bool)

(assert (=> start!350578 (= res!1512889 (validRegex!4996 r!26968))))

(assert (=> start!350578 e!2304437))

(declare-fun e!2304438 () Bool)

(assert (=> start!350578 e!2304438))

(declare-fun tp_is_empty!18793 () Bool)

(assert (=> start!350578 tp_is_empty!18793))

(declare-fun b!3722887 () Bool)

(assert (=> b!3722887 (= e!2304438 tp_is_empty!18793)))

(declare-fun b!3722888 () Bool)

(declare-fun tp!1132294 () Bool)

(declare-fun tp!1132290 () Bool)

(assert (=> b!3722888 (= e!2304438 (and tp!1132294 tp!1132290))))

(declare-fun b!3722889 () Bool)

(declare-fun tp!1132293 () Bool)

(assert (=> b!3722889 (= e!2304438 tp!1132293)))

(declare-fun b!3722890 () Bool)

(declare-fun tp!1132291 () Bool)

(declare-fun tp!1132292 () Bool)

(assert (=> b!3722890 (= e!2304438 (and tp!1132291 tp!1132292))))

(declare-fun b!3722891 () Bool)

(declare-fun res!1512890 () Bool)

(assert (=> b!3722891 (=> (not res!1512890) (not e!2304437))))

(get-info :version)

(assert (=> b!3722891 (= res!1512890 (and (not ((_ is EmptyExpr!10889) r!26968)) (not ((_ is EmptyLang!10889) r!26968)) (not ((_ is ElementMatch!10889) r!26968)) (not ((_ is Union!10889) r!26968)) (not ((_ is Star!10889) r!26968))))))

(declare-fun b!3722892 () Bool)

(assert (=> b!3722892 (= e!2304437 (not true))))

(declare-datatypes ((List!39770 0))(
  ( (Nil!39646) (Cons!39646 (h!45066 C!21964) (t!302453 List!39770)) )
))
(declare-fun lt!1298224 () List!39770)

(declare-fun lt!1298223 () List!39770)

(declare-fun cNot!42 () C!21964)

(declare-fun contains!7982 (List!39770 C!21964) Bool)

(declare-fun ++!9817 (List!39770 List!39770) List!39770)

(assert (=> b!3722892 (not (contains!7982 (++!9817 lt!1298224 lt!1298223) cNot!42))))

(declare-datatypes ((Unit!57560 0))(
  ( (Unit!57561) )
))
(declare-fun lt!1298225 () Unit!57560)

(declare-fun lemmaConcatTwoListsWhichNotContainThenTotNotContain!4 (List!39770 List!39770 C!21964) Unit!57560)

(assert (=> b!3722892 (= lt!1298225 (lemmaConcatTwoListsWhichNotContainThenTotNotContain!4 lt!1298224 lt!1298223 cNot!42))))

(assert (=> b!3722892 (not (contains!7982 lt!1298223 cNot!42))))

(declare-fun c!13797 () C!21964)

(declare-fun usedCharacters!1152 (Regex!10889) List!39770)

(declare-fun derivativeStep!3346 (Regex!10889 C!21964) Regex!10889)

(assert (=> b!3722892 (= lt!1298223 (usedCharacters!1152 (derivativeStep!3346 (regTwo!22290 r!26968) c!13797)))))

(declare-fun lt!1298226 () Unit!57560)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!36 (Regex!10889 C!21964 C!21964) Unit!57560)

(assert (=> b!3722892 (= lt!1298226 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!36 (regTwo!22290 r!26968) c!13797 cNot!42))))

(assert (=> b!3722892 (not (contains!7982 lt!1298224 cNot!42))))

(assert (=> b!3722892 (= lt!1298224 (usedCharacters!1152 (derivativeStep!3346 (regOne!22290 r!26968) c!13797)))))

(declare-fun lt!1298222 () Unit!57560)

(assert (=> b!3722892 (= lt!1298222 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!36 (regOne!22290 r!26968) c!13797 cNot!42))))

(declare-fun b!3722893 () Bool)

(declare-fun res!1512888 () Bool)

(assert (=> b!3722893 (=> (not res!1512888) (not e!2304437))))

(declare-fun nullable!3797 (Regex!10889) Bool)

(assert (=> b!3722893 (= res!1512888 (nullable!3797 (regOne!22290 r!26968)))))

(declare-fun b!3722894 () Bool)

(declare-fun res!1512887 () Bool)

(assert (=> b!3722894 (=> (not res!1512887) (not e!2304437))))

(assert (=> b!3722894 (= res!1512887 (not (contains!7982 (usedCharacters!1152 r!26968) cNot!42)))))

(assert (= (and start!350578 res!1512889) b!3722894))

(assert (= (and b!3722894 res!1512887) b!3722891))

(assert (= (and b!3722891 res!1512890) b!3722893))

(assert (= (and b!3722893 res!1512888) b!3722892))

(assert (= (and start!350578 ((_ is ElementMatch!10889) r!26968)) b!3722887))

(assert (= (and start!350578 ((_ is Concat!17160) r!26968)) b!3722888))

(assert (= (and start!350578 ((_ is Star!10889) r!26968)) b!3722889))

(assert (= (and start!350578 ((_ is Union!10889) r!26968)) b!3722890))

(declare-fun m!4226523 () Bool)

(assert (=> start!350578 m!4226523))

(declare-fun m!4226525 () Bool)

(assert (=> b!3722892 m!4226525))

(declare-fun m!4226527 () Bool)

(assert (=> b!3722892 m!4226527))

(declare-fun m!4226529 () Bool)

(assert (=> b!3722892 m!4226529))

(declare-fun m!4226531 () Bool)

(assert (=> b!3722892 m!4226531))

(assert (=> b!3722892 m!4226529))

(declare-fun m!4226533 () Bool)

(assert (=> b!3722892 m!4226533))

(declare-fun m!4226535 () Bool)

(assert (=> b!3722892 m!4226535))

(declare-fun m!4226537 () Bool)

(assert (=> b!3722892 m!4226537))

(declare-fun m!4226539 () Bool)

(assert (=> b!3722892 m!4226539))

(assert (=> b!3722892 m!4226539))

(declare-fun m!4226541 () Bool)

(assert (=> b!3722892 m!4226541))

(assert (=> b!3722892 m!4226535))

(declare-fun m!4226543 () Bool)

(assert (=> b!3722892 m!4226543))

(declare-fun m!4226545 () Bool)

(assert (=> b!3722892 m!4226545))

(declare-fun m!4226547 () Bool)

(assert (=> b!3722893 m!4226547))

(declare-fun m!4226549 () Bool)

(assert (=> b!3722894 m!4226549))

(assert (=> b!3722894 m!4226549))

(declare-fun m!4226551 () Bool)

(assert (=> b!3722894 m!4226551))

(check-sat (not start!350578) (not b!3722894) (not b!3722890) (not b!3722888) tp_is_empty!18793 (not b!3722889) (not b!3722893) (not b!3722892))
(check-sat)
