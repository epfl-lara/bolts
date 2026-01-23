; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752760 () Bool)

(assert start!752760)

(declare-fun b!7999931 () Bool)

(declare-fun res!3163787 () Bool)

(declare-fun e!4712799 () Bool)

(assert (=> b!7999931 (=> (not res!3163787) (not e!4712799))))

(declare-datatypes ((C!43500 0))(
  ( (C!43501 (val!32298 Int)) )
))
(declare-datatypes ((List!74810 0))(
  ( (Nil!74686) (Cons!74686 (h!81134 C!43500) (t!390553 List!74810)) )
))
(declare-fun input!8006 () List!74810)

(get-info :version)

(assert (=> b!7999931 (= res!3163787 ((_ is Cons!74686) input!8006))))

(declare-fun b!7999932 () Bool)

(declare-fun e!4712796 () Bool)

(assert (=> b!7999932 (= e!4712796 (not true))))

(declare-datatypes ((Regex!21581 0))(
  ( (ElementMatch!21581 (c!1468790 C!43500)) (Concat!30580 (regOne!43674 Regex!21581) (regTwo!43674 Regex!21581)) (EmptyExpr!21581) (Star!21581 (reg!21910 Regex!21581)) (EmptyLang!21581) (Union!21581 (regOne!43675 Regex!21581) (regTwo!43675 Regex!21581)) )
))
(declare-fun lt!2713646 () Regex!21581)

(declare-fun matchR!10766 (Regex!21581 List!74810) Bool)

(declare-fun derivative!765 (Regex!21581 List!74810) Regex!21581)

(assert (=> b!7999932 (= (matchR!10766 lt!2713646 (t!390553 input!8006)) (matchR!10766 (derivative!765 lt!2713646 (t!390553 input!8006)) Nil!74686))))

(declare-datatypes ((Unit!170584 0))(
  ( (Unit!170585) )
))
(declare-fun lt!2713647 () Unit!170584)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!308 (Regex!21581 List!74810) Unit!170584)

(assert (=> b!7999932 (= lt!2713647 (lemmaMatchRIsSameAsWholeDerivativeAndNil!308 lt!2713646 (t!390553 input!8006)))))

(declare-fun b!7999933 () Bool)

(declare-fun e!4712797 () Bool)

(declare-fun tp_is_empty!53705 () Bool)

(declare-fun tp!2392861 () Bool)

(assert (=> b!7999933 (= e!4712797 (and tp_is_empty!53705 tp!2392861))))

(declare-fun res!3163788 () Bool)

(assert (=> start!752760 (=> (not res!3163788) (not e!4712799))))

(declare-fun r!24748 () Regex!21581)

(declare-fun validRegex!11885 (Regex!21581) Bool)

(assert (=> start!752760 (= res!3163788 (validRegex!11885 r!24748))))

(assert (=> start!752760 e!4712799))

(declare-fun e!4712798 () Bool)

(assert (=> start!752760 e!4712798))

(assert (=> start!752760 e!4712797))

(declare-fun b!7999934 () Bool)

(declare-fun tp!2392862 () Bool)

(assert (=> b!7999934 (= e!4712798 tp!2392862)))

(declare-fun b!7999935 () Bool)

(declare-fun tp!2392857 () Bool)

(declare-fun tp!2392859 () Bool)

(assert (=> b!7999935 (= e!4712798 (and tp!2392857 tp!2392859))))

(declare-fun b!7999936 () Bool)

(declare-fun tp!2392858 () Bool)

(declare-fun tp!2392860 () Bool)

(assert (=> b!7999936 (= e!4712798 (and tp!2392858 tp!2392860))))

(declare-fun b!7999937 () Bool)

(assert (=> b!7999937 (= e!4712799 e!4712796)))

(declare-fun res!3163786 () Bool)

(assert (=> b!7999937 (=> (not res!3163786) (not e!4712796))))

(assert (=> b!7999937 (= res!3163786 (validRegex!11885 lt!2713646))))

(declare-fun derivativeStep!6596 (Regex!21581 C!43500) Regex!21581)

(assert (=> b!7999937 (= lt!2713646 (derivativeStep!6596 r!24748 (h!81134 input!8006)))))

(declare-fun b!7999938 () Bool)

(assert (=> b!7999938 (= e!4712798 tp_is_empty!53705)))

(assert (= (and start!752760 res!3163788) b!7999931))

(assert (= (and b!7999931 res!3163787) b!7999937))

(assert (= (and b!7999937 res!3163786) b!7999932))

(assert (= (and start!752760 ((_ is ElementMatch!21581) r!24748)) b!7999938))

(assert (= (and start!752760 ((_ is Concat!30580) r!24748)) b!7999936))

(assert (= (and start!752760 ((_ is Star!21581) r!24748)) b!7999934))

(assert (= (and start!752760 ((_ is Union!21581) r!24748)) b!7999935))

(assert (= (and start!752760 ((_ is Cons!74686) input!8006)) b!7999933))

(declare-fun m!8368160 () Bool)

(assert (=> b!7999932 m!8368160))

(declare-fun m!8368162 () Bool)

(assert (=> b!7999932 m!8368162))

(assert (=> b!7999932 m!8368162))

(declare-fun m!8368164 () Bool)

(assert (=> b!7999932 m!8368164))

(declare-fun m!8368166 () Bool)

(assert (=> b!7999932 m!8368166))

(declare-fun m!8368168 () Bool)

(assert (=> start!752760 m!8368168))

(declare-fun m!8368170 () Bool)

(assert (=> b!7999937 m!8368170))

(declare-fun m!8368172 () Bool)

(assert (=> b!7999937 m!8368172))

(check-sat (not b!7999936) (not b!7999933) tp_is_empty!53705 (not b!7999935) (not b!7999937) (not b!7999932) (not start!752760) (not b!7999934))
(check-sat)
