; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350580 () Bool)

(assert start!350580)

(declare-fun b!3722913 () Bool)

(declare-fun e!2304443 () Bool)

(declare-fun tp_is_empty!18795 () Bool)

(assert (=> b!3722913 (= e!2304443 tp_is_empty!18795)))

(declare-fun b!3722914 () Bool)

(declare-fun res!1512902 () Bool)

(declare-fun e!2304444 () Bool)

(assert (=> b!3722914 (=> (not res!1512902) (not e!2304444))))

(declare-datatypes ((C!21966 0))(
  ( (C!21967 (val!13031 Int)) )
))
(declare-datatypes ((Regex!10890 0))(
  ( (ElementMatch!10890 (c!643962 C!21966)) (Concat!17161 (regOne!22292 Regex!10890) (regTwo!22292 Regex!10890)) (EmptyExpr!10890) (Star!10890 (reg!11219 Regex!10890)) (EmptyLang!10890) (Union!10890 (regOne!22293 Regex!10890) (regTwo!22293 Regex!10890)) )
))
(declare-fun r!26968 () Regex!10890)

(declare-fun nullable!3798 (Regex!10890) Bool)

(assert (=> b!3722914 (= res!1512902 (not (nullable!3798 (regOne!22292 r!26968))))))

(declare-fun b!3722915 () Bool)

(declare-fun tp!1132307 () Bool)

(declare-fun tp!1132305 () Bool)

(assert (=> b!3722915 (= e!2304443 (and tp!1132307 tp!1132305))))

(declare-fun b!3722916 () Bool)

(declare-fun res!1512901 () Bool)

(assert (=> b!3722916 (=> (not res!1512901) (not e!2304444))))

(declare-fun cNot!42 () C!21966)

(declare-datatypes ((List!39771 0))(
  ( (Nil!39647) (Cons!39647 (h!45067 C!21966) (t!302454 List!39771)) )
))
(declare-fun contains!7983 (List!39771 C!21966) Bool)

(declare-fun usedCharacters!1153 (Regex!10890) List!39771)

(assert (=> b!3722916 (= res!1512901 (not (contains!7983 (usedCharacters!1153 r!26968) cNot!42)))))

(declare-fun res!1512905 () Bool)

(assert (=> start!350580 (=> (not res!1512905) (not e!2304444))))

(declare-fun validRegex!4997 (Regex!10890) Bool)

(assert (=> start!350580 (= res!1512905 (validRegex!4997 r!26968))))

(assert (=> start!350580 e!2304444))

(assert (=> start!350580 e!2304443))

(assert (=> start!350580 tp_is_empty!18795))

(declare-fun b!3722917 () Bool)

(assert (=> b!3722917 (= e!2304444 false)))

(declare-fun lt!1298229 () Bool)

(assert (=> b!3722917 (= lt!1298229 (contains!7983 (usedCharacters!1153 (regOne!22292 r!26968)) cNot!42))))

(declare-fun b!3722918 () Bool)

(declare-fun res!1512903 () Bool)

(assert (=> b!3722918 (=> (not res!1512903) (not e!2304444))))

(assert (=> b!3722918 (= res!1512903 (and (not (is-EmptyExpr!10890 r!26968)) (not (is-EmptyLang!10890 r!26968)) (not (is-ElementMatch!10890 r!26968)) (not (is-Union!10890 r!26968)) (not (is-Star!10890 r!26968))))))

(declare-fun b!3722919 () Bool)

(declare-fun res!1512904 () Bool)

(assert (=> b!3722919 (=> (not res!1512904) (not e!2304444))))

(assert (=> b!3722919 (= res!1512904 (validRegex!4997 (regOne!22292 r!26968)))))

(declare-fun b!3722920 () Bool)

(declare-fun tp!1132306 () Bool)

(declare-fun tp!1132309 () Bool)

(assert (=> b!3722920 (= e!2304443 (and tp!1132306 tp!1132309))))

(declare-fun b!3722921 () Bool)

(declare-fun tp!1132308 () Bool)

(assert (=> b!3722921 (= e!2304443 tp!1132308)))

(assert (= (and start!350580 res!1512905) b!3722916))

(assert (= (and b!3722916 res!1512901) b!3722918))

(assert (= (and b!3722918 res!1512903) b!3722914))

(assert (= (and b!3722914 res!1512902) b!3722919))

(assert (= (and b!3722919 res!1512904) b!3722917))

(assert (= (and start!350580 (is-ElementMatch!10890 r!26968)) b!3722913))

(assert (= (and start!350580 (is-Concat!17161 r!26968)) b!3722915))

(assert (= (and start!350580 (is-Star!10890 r!26968)) b!3722921))

(assert (= (and start!350580 (is-Union!10890 r!26968)) b!3722920))

(declare-fun m!4226553 () Bool)

(assert (=> b!3722917 m!4226553))

(assert (=> b!3722917 m!4226553))

(declare-fun m!4226555 () Bool)

(assert (=> b!3722917 m!4226555))

(declare-fun m!4226557 () Bool)

(assert (=> b!3722916 m!4226557))

(assert (=> b!3722916 m!4226557))

(declare-fun m!4226559 () Bool)

(assert (=> b!3722916 m!4226559))

(declare-fun m!4226561 () Bool)

(assert (=> b!3722914 m!4226561))

(declare-fun m!4226563 () Bool)

(assert (=> start!350580 m!4226563))

(declare-fun m!4226565 () Bool)

(assert (=> b!3722919 m!4226565))

(push 1)

(assert (not start!350580))

(assert (not b!3722920))

(assert (not b!3722916))

(assert (not b!3722915))

(assert (not b!3722919))

(assert tp_is_empty!18795)

(assert (not b!3722917))

(assert (not b!3722921))

(assert (not b!3722914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

