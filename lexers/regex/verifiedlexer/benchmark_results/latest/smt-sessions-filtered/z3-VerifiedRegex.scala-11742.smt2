; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663620 () Bool)

(assert start!663620)

(declare-fun b!6876930 () Bool)

(declare-fun e!4144679 () Bool)

(declare-fun e!4144680 () Bool)

(declare-fun tp!1889980 () Bool)

(declare-datatypes ((C!33732 0))(
  ( (C!33733 (val!26568 Int)) )
))
(declare-datatypes ((Regex!16731 0))(
  ( (ElementMatch!16731 (c!1279537 C!33732)) (Concat!25576 (regOne!33974 Regex!16731) (regTwo!33974 Regex!16731)) (EmptyExpr!16731) (Star!16731 (reg!17060 Regex!16731)) (EmptyLang!16731) (Union!16731 (regOne!33975 Regex!16731) (regTwo!33975 Regex!16731)) )
))
(declare-datatypes ((List!66473 0))(
  ( (Nil!66349) (Cons!66349 (h!72797 Regex!16731) (t!380216 List!66473)) )
))
(declare-datatypes ((Context!12230 0))(
  ( (Context!12231 (exprs!6615 List!66473)) )
))
(declare-datatypes ((List!66474 0))(
  ( (Nil!66350) (Cons!66350 (h!72798 Context!12230) (t!380217 List!66474)) )
))
(declare-fun zl!1632 () List!66474)

(declare-fun inv!85074 (Context!12230) Bool)

(assert (=> b!6876930 (= e!4144679 (and (inv!85074 (h!72798 zl!1632)) e!4144680 tp!1889980))))

(declare-fun b!6876931 () Bool)

(declare-fun res!2803934 () Bool)

(declare-fun e!4144677 () Bool)

(assert (=> b!6876931 (=> (not res!2803934) (not e!4144677))))

(declare-fun size!40721 (List!66474) Int)

(assert (=> b!6876931 (= res!2803934 (> (size!40721 zl!1632) 1))))

(declare-fun b!6876933 () Bool)

(declare-fun e!4144678 () Bool)

(declare-fun tp!1889981 () Bool)

(assert (=> b!6876933 (= e!4144678 tp!1889981)))

(declare-fun b!6876934 () Bool)

(declare-fun tp!1889979 () Bool)

(assert (=> b!6876934 (= e!4144680 tp!1889979)))

(declare-fun b!6876935 () Bool)

(assert (=> b!6876935 (= e!4144677 false)))

(declare-fun lt!2459198 () Int)

(assert (=> b!6876935 (= lt!2459198 (size!40721 (t!380217 zl!1632)))))

(declare-fun b!6876932 () Bool)

(declare-fun res!2803932 () Bool)

(assert (=> b!6876932 (=> (not res!2803932) (not e!4144677))))

(declare-fun c!9978 () Context!12230)

(declare-fun contains!20387 (List!66474 Context!12230) Bool)

(assert (=> b!6876932 (= res!2803932 (contains!20387 (t!380217 zl!1632) c!9978))))

(declare-fun res!2803933 () Bool)

(assert (=> start!663620 (=> (not res!2803933) (not e!4144677))))

(assert (=> start!663620 (= res!2803933 (contains!20387 zl!1632 c!9978))))

(assert (=> start!663620 e!4144677))

(assert (=> start!663620 e!4144679))

(assert (=> start!663620 (and (inv!85074 c!9978) e!4144678)))

(declare-fun b!6876936 () Bool)

(declare-fun res!2803931 () Bool)

(assert (=> b!6876936 (=> (not res!2803931) (not e!4144677))))

(assert (=> b!6876936 (= res!2803931 (> (size!40721 (t!380217 zl!1632)) 1))))

(declare-fun b!6876937 () Bool)

(declare-fun res!2803930 () Bool)

(assert (=> b!6876937 (=> (not res!2803930) (not e!4144677))))

(get-info :version)

(assert (=> b!6876937 (= res!2803930 ((_ is Cons!66350) zl!1632))))

(assert (= (and start!663620 res!2803933) b!6876931))

(assert (= (and b!6876931 res!2803934) b!6876937))

(assert (= (and b!6876937 res!2803930) b!6876932))

(assert (= (and b!6876932 res!2803932) b!6876936))

(assert (= (and b!6876936 res!2803931) b!6876935))

(assert (= b!6876930 b!6876934))

(assert (= (and start!663620 ((_ is Cons!66350) zl!1632)) b!6876930))

(assert (= start!663620 b!6876933))

(declare-fun m!7604660 () Bool)

(assert (=> b!6876931 m!7604660))

(declare-fun m!7604662 () Bool)

(assert (=> b!6876932 m!7604662))

(declare-fun m!7604664 () Bool)

(assert (=> b!6876930 m!7604664))

(declare-fun m!7604666 () Bool)

(assert (=> b!6876936 m!7604666))

(declare-fun m!7604668 () Bool)

(assert (=> start!663620 m!7604668))

(declare-fun m!7604670 () Bool)

(assert (=> start!663620 m!7604670))

(assert (=> b!6876935 m!7604666))

(check-sat (not b!6876932) (not b!6876936) (not b!6876930) (not b!6876931) (not b!6876935) (not start!663620) (not b!6876934) (not b!6876933))
(check-sat)
