; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350500 () Bool)

(assert start!350500)

(declare-fun b!3721885 () Bool)

(declare-fun e!2304002 () Bool)

(declare-fun tp!1131926 () Bool)

(declare-fun tp!1131929 () Bool)

(assert (=> b!3721885 (= e!2304002 (and tp!1131926 tp!1131929))))

(declare-fun b!3721886 () Bool)

(declare-fun res!1512570 () Bool)

(declare-fun e!2304001 () Bool)

(assert (=> b!3721886 (=> (not res!1512570) (not e!2304001))))

(declare-datatypes ((C!21934 0))(
  ( (C!21935 (val!13015 Int)) )
))
(declare-datatypes ((Regex!10874 0))(
  ( (ElementMatch!10874 (c!643750 C!21934)) (Concat!17145 (regOne!22260 Regex!10874) (regTwo!22260 Regex!10874)) (EmptyExpr!10874) (Star!10874 (reg!11203 Regex!10874)) (EmptyLang!10874) (Union!10874 (regOne!22261 Regex!10874) (regTwo!22261 Regex!10874)) )
))
(declare-fun r!26968 () Regex!10874)

(declare-fun validRegex!4981 (Regex!10874) Bool)

(assert (=> b!3721886 (= res!1512570 (validRegex!4981 (reg!11203 r!26968)))))

(declare-fun b!3721887 () Bool)

(declare-fun res!1512571 () Bool)

(assert (=> b!3721887 (=> (not res!1512571) (not e!2304001))))

(declare-fun cNot!42 () C!21934)

(declare-datatypes ((List!39755 0))(
  ( (Nil!39631) (Cons!39631 (h!45051 C!21934) (t!302438 List!39755)) )
))
(declare-fun contains!7967 (List!39755 C!21934) Bool)

(declare-fun usedCharacters!1137 (Regex!10874) List!39755)

(assert (=> b!3721887 (= res!1512571 (not (contains!7967 (usedCharacters!1137 r!26968) cNot!42)))))

(declare-fun res!1512572 () Bool)

(assert (=> start!350500 (=> (not res!1512572) (not e!2304001))))

(assert (=> start!350500 (= res!1512572 (validRegex!4981 r!26968))))

(assert (=> start!350500 e!2304001))

(assert (=> start!350500 e!2304002))

(declare-fun tp_is_empty!18763 () Bool)

(assert (=> start!350500 tp_is_empty!18763))

(declare-fun b!3721888 () Bool)

(assert (=> b!3721888 (= e!2304002 tp_is_empty!18763)))

(declare-fun b!3721889 () Bool)

(declare-fun tp!1131925 () Bool)

(declare-fun tp!1131928 () Bool)

(assert (=> b!3721889 (= e!2304002 (and tp!1131925 tp!1131928))))

(declare-fun b!3721890 () Bool)

(assert (=> b!3721890 (= e!2304001 false)))

(declare-fun lt!1298081 () Bool)

(assert (=> b!3721890 (= lt!1298081 (contains!7967 (usedCharacters!1137 (reg!11203 r!26968)) cNot!42))))

(declare-fun b!3721891 () Bool)

(declare-fun tp!1131927 () Bool)

(assert (=> b!3721891 (= e!2304002 tp!1131927)))

(declare-fun b!3721892 () Bool)

(declare-fun res!1512569 () Bool)

(assert (=> b!3721892 (=> (not res!1512569) (not e!2304001))))

(assert (=> b!3721892 (= res!1512569 (and (not (is-EmptyExpr!10874 r!26968)) (not (is-EmptyLang!10874 r!26968)) (not (is-ElementMatch!10874 r!26968)) (not (is-Union!10874 r!26968)) (is-Star!10874 r!26968)))))

(assert (= (and start!350500 res!1512572) b!3721887))

(assert (= (and b!3721887 res!1512571) b!3721892))

(assert (= (and b!3721892 res!1512569) b!3721886))

(assert (= (and b!3721886 res!1512570) b!3721890))

(assert (= (and start!350500 (is-ElementMatch!10874 r!26968)) b!3721888))

(assert (= (and start!350500 (is-Concat!17145 r!26968)) b!3721889))

(assert (= (and start!350500 (is-Star!10874 r!26968)) b!3721891))

(assert (= (and start!350500 (is-Union!10874 r!26968)) b!3721885))

(declare-fun m!4225917 () Bool)

(assert (=> b!3721886 m!4225917))

(declare-fun m!4225919 () Bool)

(assert (=> b!3721887 m!4225919))

(assert (=> b!3721887 m!4225919))

(declare-fun m!4225921 () Bool)

(assert (=> b!3721887 m!4225921))

(declare-fun m!4225923 () Bool)

(assert (=> start!350500 m!4225923))

(declare-fun m!4225925 () Bool)

(assert (=> b!3721890 m!4225925))

(assert (=> b!3721890 m!4225925))

(declare-fun m!4225927 () Bool)

(assert (=> b!3721890 m!4225927))

(push 1)

(assert (not b!3721890))

(assert (not start!350500))

(assert (not b!3721891))

(assert tp_is_empty!18763)

(assert (not b!3721885))

(assert (not b!3721887))

(assert (not b!3721886))

(assert (not b!3721889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

