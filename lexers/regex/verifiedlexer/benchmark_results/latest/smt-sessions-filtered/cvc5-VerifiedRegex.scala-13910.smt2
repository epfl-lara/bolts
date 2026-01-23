; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738922 () Bool)

(assert start!738922)

(declare-fun b!7750916 () Bool)

(declare-fun res!3090649 () Bool)

(declare-fun e!4594901 () Bool)

(assert (=> b!7750916 (=> (not res!3090649) (not e!4594901))))

(declare-datatypes ((C!41554 0))(
  ( (C!41555 (val!31217 Int)) )
))
(declare-datatypes ((List!73459 0))(
  ( (Nil!73335) (Cons!73335 (h!79783 C!41554) (t!388194 List!73459)) )
))
(declare-fun s1!4391 () List!73459)

(assert (=> b!7750916 (= res!3090649 (not (is-Cons!73335 s1!4391)))))

(declare-fun b!7750917 () Bool)

(declare-fun e!4594902 () Bool)

(declare-fun tp_is_empty!51583 () Bool)

(assert (=> b!7750917 (= e!4594902 tp_is_empty!51583)))

(declare-fun b!7750918 () Bool)

(declare-fun e!4594900 () Bool)

(declare-fun tp!2274078 () Bool)

(assert (=> b!7750918 (= e!4594900 (and tp_is_empty!51583 tp!2274078))))

(declare-fun b!7750919 () Bool)

(assert (=> b!7750919 (= e!4594901 false)))

(declare-fun lt!2669420 () List!73459)

(declare-fun s2!3963 () List!73459)

(declare-fun ++!17801 (List!73459 List!73459) List!73459)

(assert (=> b!7750919 (= lt!2669420 (++!17801 s1!4391 s2!3963))))

(declare-fun b!7750920 () Bool)

(declare-fun res!3090652 () Bool)

(assert (=> b!7750920 (=> (not res!3090652) (not e!4594901))))

(declare-datatypes ((Regex!20614 0))(
  ( (ElementMatch!20614 (c!1429515 C!41554)) (Concat!29459 (regOne!41740 Regex!20614) (regTwo!41740 Regex!20614)) (EmptyExpr!20614) (Star!20614 (reg!20943 Regex!20614)) (EmptyLang!20614) (Union!20614 (regOne!41741 Regex!20614) (regTwo!41741 Regex!20614)) )
))
(declare-fun lt!2669419 () Regex!20614)

(declare-fun matchR!10104 (Regex!20614 List!73459) Bool)

(assert (=> b!7750920 (= res!3090652 (matchR!10104 lt!2669419 s2!3963))))

(declare-fun b!7750921 () Bool)

(declare-fun tp!2274081 () Bool)

(declare-fun tp!2274083 () Bool)

(assert (=> b!7750921 (= e!4594902 (and tp!2274081 tp!2274083))))

(declare-fun b!7750922 () Bool)

(declare-fun tp!2274082 () Bool)

(declare-fun tp!2274080 () Bool)

(assert (=> b!7750922 (= e!4594902 (and tp!2274082 tp!2274080))))

(declare-fun b!7750923 () Bool)

(declare-fun e!4594903 () Bool)

(declare-fun tp!2274084 () Bool)

(assert (=> b!7750923 (= e!4594903 (and tp_is_empty!51583 tp!2274084))))

(declare-fun res!3090650 () Bool)

(assert (=> start!738922 (=> (not res!3090650) (not e!4594901))))

(declare-fun validRegex!11032 (Regex!20614) Bool)

(assert (=> start!738922 (= res!3090650 (validRegex!11032 lt!2669419))))

(declare-fun r!25892 () Regex!20614)

(assert (=> start!738922 (= lt!2669419 (Star!20614 r!25892))))

(assert (=> start!738922 e!4594901))

(assert (=> start!738922 e!4594902))

(assert (=> start!738922 e!4594903))

(assert (=> start!738922 e!4594900))

(declare-fun b!7750924 () Bool)

(declare-fun res!3090651 () Bool)

(assert (=> b!7750924 (=> (not res!3090651) (not e!4594901))))

(assert (=> b!7750924 (= res!3090651 (matchR!10104 r!25892 s1!4391))))

(declare-fun b!7750925 () Bool)

(declare-fun tp!2274079 () Bool)

(assert (=> b!7750925 (= e!4594902 tp!2274079)))

(assert (= (and start!738922 res!3090650) b!7750924))

(assert (= (and b!7750924 res!3090651) b!7750920))

(assert (= (and b!7750920 res!3090652) b!7750916))

(assert (= (and b!7750916 res!3090649) b!7750919))

(assert (= (and start!738922 (is-ElementMatch!20614 r!25892)) b!7750917))

(assert (= (and start!738922 (is-Concat!29459 r!25892)) b!7750922))

(assert (= (and start!738922 (is-Star!20614 r!25892)) b!7750925))

(assert (= (and start!738922 (is-Union!20614 r!25892)) b!7750921))

(assert (= (and start!738922 (is-Cons!73335 s1!4391)) b!7750923))

(assert (= (and start!738922 (is-Cons!73335 s2!3963)) b!7750918))

(declare-fun m!8216646 () Bool)

(assert (=> b!7750919 m!8216646))

(declare-fun m!8216648 () Bool)

(assert (=> b!7750920 m!8216648))

(declare-fun m!8216650 () Bool)

(assert (=> start!738922 m!8216650))

(declare-fun m!8216652 () Bool)

(assert (=> b!7750924 m!8216652))

(push 1)

(assert (not start!738922))

(assert (not b!7750922))

(assert tp_is_empty!51583)

(assert (not b!7750920))

(assert (not b!7750918))

(assert (not b!7750924))

(assert (not b!7750923))

(assert (not b!7750919))

(assert (not b!7750921))

(assert (not b!7750925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

