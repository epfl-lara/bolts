; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350508 () Bool)

(assert start!350508)

(declare-fun b!3721989 () Bool)

(declare-fun e!2304025 () Bool)

(declare-fun tp!1131985 () Bool)

(assert (=> b!3721989 (= e!2304025 tp!1131985)))

(declare-fun b!3721990 () Bool)

(declare-fun res!1512625 () Bool)

(declare-fun e!2304026 () Bool)

(assert (=> b!3721990 (=> (not res!1512625) (not e!2304026))))

(declare-datatypes ((C!21942 0))(
  ( (C!21943 (val!13019 Int)) )
))
(declare-datatypes ((Regex!10878 0))(
  ( (ElementMatch!10878 (c!643754 C!21942)) (Concat!17149 (regOne!22268 Regex!10878) (regTwo!22268 Regex!10878)) (EmptyExpr!10878) (Star!10878 (reg!11207 Regex!10878)) (EmptyLang!10878) (Union!10878 (regOne!22269 Regex!10878) (regTwo!22269 Regex!10878)) )
))
(declare-fun r!26968 () Regex!10878)

(declare-fun nullable!3786 (Regex!10878) Bool)

(assert (=> b!3721990 (= res!1512625 (nullable!3786 (regOne!22268 r!26968)))))

(declare-fun b!3721991 () Bool)

(assert (=> b!3721991 (= e!2304026 false)))

(declare-fun lt!1298093 () Bool)

(declare-fun cNot!42 () C!21942)

(declare-datatypes ((List!39759 0))(
  ( (Nil!39635) (Cons!39635 (h!45055 C!21942) (t!302442 List!39759)) )
))
(declare-fun contains!7971 (List!39759 C!21942) Bool)

(declare-fun usedCharacters!1141 (Regex!10878) List!39759)

(assert (=> b!3721991 (= lt!1298093 (contains!7971 (usedCharacters!1141 (regOne!22268 r!26968)) cNot!42))))

(declare-fun b!3721992 () Bool)

(declare-fun res!1512626 () Bool)

(assert (=> b!3721992 (=> (not res!1512626) (not e!2304026))))

(declare-fun validRegex!4985 (Regex!10878) Bool)

(assert (=> b!3721992 (= res!1512626 (validRegex!4985 (regOne!22268 r!26968)))))

(declare-fun res!1512627 () Bool)

(assert (=> start!350508 (=> (not res!1512627) (not e!2304026))))

(assert (=> start!350508 (= res!1512627 (validRegex!4985 r!26968))))

(assert (=> start!350508 e!2304026))

(assert (=> start!350508 e!2304025))

(declare-fun tp_is_empty!18771 () Bool)

(assert (=> start!350508 tp_is_empty!18771))

(declare-fun b!3721993 () Bool)

(declare-fun res!1512628 () Bool)

(assert (=> b!3721993 (=> (not res!1512628) (not e!2304026))))

(assert (=> b!3721993 (= res!1512628 (and (not (is-EmptyExpr!10878 r!26968)) (not (is-EmptyLang!10878 r!26968)) (not (is-ElementMatch!10878 r!26968)) (not (is-Union!10878 r!26968)) (not (is-Star!10878 r!26968))))))

(declare-fun b!3721994 () Bool)

(declare-fun tp!1131989 () Bool)

(declare-fun tp!1131986 () Bool)

(assert (=> b!3721994 (= e!2304025 (and tp!1131989 tp!1131986))))

(declare-fun b!3721995 () Bool)

(declare-fun tp!1131987 () Bool)

(declare-fun tp!1131988 () Bool)

(assert (=> b!3721995 (= e!2304025 (and tp!1131987 tp!1131988))))

(declare-fun b!3721996 () Bool)

(assert (=> b!3721996 (= e!2304025 tp_is_empty!18771)))

(declare-fun b!3721997 () Bool)

(declare-fun res!1512629 () Bool)

(assert (=> b!3721997 (=> (not res!1512629) (not e!2304026))))

(assert (=> b!3721997 (= res!1512629 (not (contains!7971 (usedCharacters!1141 r!26968) cNot!42)))))

(assert (= (and start!350508 res!1512627) b!3721997))

(assert (= (and b!3721997 res!1512629) b!3721993))

(assert (= (and b!3721993 res!1512628) b!3721990))

(assert (= (and b!3721990 res!1512625) b!3721992))

(assert (= (and b!3721992 res!1512626) b!3721991))

(assert (= (and start!350508 (is-ElementMatch!10878 r!26968)) b!3721996))

(assert (= (and start!350508 (is-Concat!17149 r!26968)) b!3721995))

(assert (= (and start!350508 (is-Star!10878 r!26968)) b!3721989))

(assert (= (and start!350508 (is-Union!10878 r!26968)) b!3721994))

(declare-fun m!4225981 () Bool)

(assert (=> b!3721992 m!4225981))

(declare-fun m!4225983 () Bool)

(assert (=> b!3721997 m!4225983))

(assert (=> b!3721997 m!4225983))

(declare-fun m!4225985 () Bool)

(assert (=> b!3721997 m!4225985))

(declare-fun m!4225987 () Bool)

(assert (=> b!3721990 m!4225987))

(declare-fun m!4225989 () Bool)

(assert (=> b!3721991 m!4225989))

(assert (=> b!3721991 m!4225989))

(declare-fun m!4225991 () Bool)

(assert (=> b!3721991 m!4225991))

(declare-fun m!4225993 () Bool)

(assert (=> start!350508 m!4225993))

(push 1)

(assert (not b!3721997))

(assert (not b!3721991))

(assert (not b!3721989))

(assert tp_is_empty!18771)

(assert (not b!3721995))

(assert (not b!3721990))

(assert (not b!3721994))

(assert (not b!3721992))

(assert (not start!350508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

